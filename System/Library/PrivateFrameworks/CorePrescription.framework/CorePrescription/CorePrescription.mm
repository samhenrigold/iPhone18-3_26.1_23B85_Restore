unint64_t sub_24732D708@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24732D748(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_24732D748(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_24732D7D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24732D804(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_24732D804(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

__CFString *CRXFCalibrationDataServerAsString(uint64_t a1)
{
  v1 = @"unspecified (auto)";
  if (a1 == 2)
  {
    v1 = @"development";
  }

  if (a1 == 1)
  {
    return @"production";
  }

  else
  {
    return v1;
  }
}

void sub_247338F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

__CFString *CRXFLensTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"demo";
  }

  else
  {
    return off_278EA0640[a1 - 1];
  }
}

id CRXFLocalizedStringInTable(void *a1, void *a2)
{
  v3 = CRXFLocalizedStringInTable___once__LINE__[0];
  v4 = a2;
  v5 = a1;
  if (v3 != -1)
  {
    CRXFLocalizedStringInTable_cold_1();
  }

  v6 = [CRXFLocalizedStringInTable_bundle localizedStringForKey:v4 value:&stru_28592CA48 table:v5];

  return v6;
}

uint64_t __CRXFLocalizedStringInTable_block_invoke(uint64_t a1, uint64_t a2)
{
  CRXFLocalizedStringInTable_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id CRXFLocalizedStringInTableWithVarArguments(void *a1, void *a2, uint64_t a3)
{
  v4 = CRXFLocalizedStringInTable(a1, a2);
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v5 initWithFormat:v4 locale:v6 arguments:a3];

  return v7;
}

id CRXFLocalizedStringWithArguments(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = CRXFLocalizedStringInTableWithVarArguments(@"Localizable", a1, &a9);

  return v9;
}

id CRXFLocalizedPrismStringWithArguments(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = CRXFLocalizedStringInTableWithVarArguments(@"LocalizablePrism", a1, &a9);

  return v9;
}

void sub_24733C8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&STACK[0x248], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x26u);
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

__CFString *CRXFPrismBaseDirectionAsString(uint64_t a1)
{
  v1 = @"h-out/v-up";
  if (a1 == 1)
  {
    v1 = @"h-in/v-down";
  }

  if (a1 == 2)
  {
    return @"none";
  }

  else
  {
    return v1;
  }
}

void OUTLINED_FUNCTION_2_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

void OUTLINED_FUNCTION_5_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x1Cu);
}

__CFString *CRXFGetCurrentKeyStatusAsString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Fail";
  }

  else
  {
    return off_278EA07E0[a1 - 1];
  }
}

__CFString *CRXFEnrollRXTypeAsString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"None";
  }

  else
  {
    return off_278EA07F8[a1 - 1];
  }
}

__CFString *CRXFEnrollmentGroupAsString(uint64_t a1)
{
  v1 = @"System";
  if (a1 == 1)
  {
    v1 = @"User";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"None";
  }
}

__CFString *CRXFLensPoseErrorAsString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"lensPoseInitError";
  }

  else
  {
    return off_278EA0818[a1 - 1];
  }
}

__CFString *CRXFLensPoseStatusAsString(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"invalid";
  }

  else
  {
    return off_278EA0838[a1 - 1];
  }
}

__CFString *CRXFUpdateClipOnInfoStatusAsString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"invalid";
  }

  else
  {
    return off_278EA0860[a1 - 1];
  }
}

__CFString *CRXFLensDetectionStatusAsString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"invalid";
  }

  else
  {
    return off_278EA0880[a1 - 1];
  }
}

__CFString *CRXFEnrollmentCreationAsString(uint64_t a1)
{
  v1 = @"invalid";
  if (a1 == 1)
  {
    v1 = @"local";
  }

  if (a1 == 2)
  {
    return @"remote";
  }

  else
  {
    return v1;
  }
}

__CFString *CRXFCalibrationStatusAsString(uint64_t a1)
{
  v1 = @"invalid";
  if (a1 == 1)
  {
    v1 = @"Nominal";
  }

  if (a1 == 2)
  {
    return @"factoryCalibrated";
  }

  else
  {
    return v1;
  }
}

__CFString *CRXFEnrollmentSourceAsString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"ACCScan";
  }

  else
  {
    return off_278EA08A0[a1 - 1];
  }
}

__CFString *CRXFACCStatusAsString(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"undefinedACCError";
  }

  else
  {
    return off_278EA08D0[a1];
  }
}

__CFString *CRXFPrescriptionPresenceStateAsString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"undefinedPresenceStateError";
  }

  else
  {
    return off_278EA0910[a1];
  }
}

__CFString *CRXFGazeStateAsString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"undefinedGazeStateError";
  }

  else
  {
    return off_278EA0948[a1];
  }
}

uint64_t CRXFLensDetectionStatusForPrescriptionPresenceState(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return qword_247369548[a1];
  }
}

uint64_t CRXCLensType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x65706F6C65766564;
    }

    if (a1 == 3)
    {
      return 0x6C616E6F73726570;
    }
  }

  else
  {
    if (!a1)
    {
      return 1869440356;
    }

    if (a1 == 1)
    {
      return 0x726564616572;
    }
  }

  result = sub_247365E64();
  __break(1u);
  return result;
}

uint64_t sub_24733FE48(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 1869440356;
    }

    if (v2 == 1)
    {
      return 0x726564616572;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    return 0x65706F6C65766564;
  }

  if (v2 != 3)
  {
LABEL_11:
    result = sub_247365E64();
    __break(1u);
    return result;
  }

  return 0x6C616E6F73726570;
}

uint64_t sub_24733FF00()
{
  v1 = *v0;
  sub_247365EA4();
  MEMORY[0x24C1A0750](v1);
  return sub_247365EC4();
}

uint64_t sub_24733FF48(uint64_t a1)
{
  v2 = *v1;
  sub_247365EA4();
  MEMORY[0x24C1A0750](v2);
  return sub_247365EC4();
}

id sub_24733FFD8()
{
  v1 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_24734008C(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2473400E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_247340204()
{
  v1 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2473402B8(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_247340310@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id CRXCPrescriptionValues.__allocating_init(displayValues:calibrationValues:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_247346D3C(a1, a2);

  return v6;
}

id CRXCPrescriptionValues.init(displayValues:calibrationValues:)(void *a1, void *a2)
{
  v4 = sub_247346D3C(a1, a2);

  return v4;
}

uint64_t sub_247340478(uint64_t a1)
{
  sub_247346F80(a1, v17);
  if (!v18)
  {
    sub_247347038(v17);
    goto LABEL_7;
  }

  type metadata accessor for CRXCPrescriptionValues();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v14 = 0;
    return v14 & 1;
  }

  sub_247347C90(0, &qword_27EE4D608, 0x277D82BB8);
  v2 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v5 = *&v16[v4];
  v6 = v3;
  v7 = v5;
  LOBYTE(v2) = sub_247365D94();

  if ((v2 & 1) == 0)
  {

    goto LABEL_7;
  }

  v8 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v11 = *&v16[v10];
  v12 = v9;
  v13 = v11;
  v14 = sub_247365D94();

  return v14 & 1;
}

uint64_t sub_247340628()
{
  v1 = v0;
  sub_247365DD4();
  MEMORY[0x24C1A0580](0xD000000000000022, 0x8000000247372C40);
  v2 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = [v3 description];
  v5 = sub_247365C64();
  v7 = v6;

  MEMORY[0x24C1A0580](v5, v7);

  MEMORY[0x24C1A0580](0xD000000000000015, 0x8000000247372C70);
  v8 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v9 = *(v1 + v8);
  v10 = [v9 description];
  v11 = sub_247365C64();
  v13 = v12;

  MEMORY[0x24C1A0580](v11, v13);

  MEMORY[0x24C1A0580](41, 0xE100000000000000);
  return 0;
}

void sub_2473407B8(void *a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = sub_247365C44();
  [a1 encodeObject:v4 forKey:v5];

  v6 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  swift_beginAccess();
  v7 = *(v1 + v6);
  v8 = sub_247365C44();
  [a1 encodeObject:v7 forKey:v8];
}

id CRXCPrescriptionValues.init(coder:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  v4 = type metadata accessor for CRXCEyePrescription();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v5[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v7 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v5[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v8 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v5[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v9 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v5[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v5[v6] = 0;
  swift_beginAccess();
  *&v5[v7] = 0;
  swift_beginAccess();
  *&v5[v8] = 0;
  swift_beginAccess();
  *&v5[v9] = 0;
  v27.receiver = v5;
  v27.super_class = v4;
  *&v2[v3] = objc_msgSendSuper2(&v27, sel_init);
  v10 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  v11 = objc_allocWithZone(v4);
  v12 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v11[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v13 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v11[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v14 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v11[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v15 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v11[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v11[v12] = 0;
  swift_beginAccess();
  *&v11[v13] = 0;
  swift_beginAccess();
  *&v11[v14] = 0;
  swift_beginAccess();
  *&v11[v15] = 0;
  v26.receiver = v11;
  v26.super_class = v4;
  *&v2[v10] = objc_msgSendSuper2(&v26, sel_init);
  v16 = sub_247365D84();
  if (v16)
  {
    v17 = v16;
    v18 = sub_247365D84();
    if (v18)
    {
      v19 = v18;
      swift_beginAccess();
      v20 = *&v2[v3];
      *&v2[v3] = v17;

      swift_beginAccess();
      v21 = *&v2[v10];
      *&v2[v10] = v19;

      v25.receiver = v2;
      v25.super_class = type metadata accessor for CRXCPrescriptionValues();
      v22 = objc_msgSendSuper2(&v25, sel_init);

      return v22;
    }
  }

  type metadata accessor for CRXCPrescriptionValues();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_247340D48()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_247340DE0(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_247340E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_247340E88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_247340F84()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24734101C(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24734106C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2473410C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2473411C0()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_247341258(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2473412A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_247341300(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2473413FC()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_247341494(char a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2473414E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24734153C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_247341638()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2473416D0(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_247341720@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_247341778(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_247341874()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24734190C(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24734195C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2473419B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_247341AB0()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_247341B48(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_247341B98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_247341BF0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_247341CEC()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_247341D84(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_247341DD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_247341E2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_247341F28()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_247341FC0(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_247342010@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_247342068(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_247342164()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2473421FC(char a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24734224C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2473422A4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_2473423A8()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_24734245C(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2473424B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_2473425D4()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_247342688(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_2473426E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_247342754(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t sub_247342858()
{
  v1 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2473428F0(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_247342940@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_247342998(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id CRXCPrescriptionInfo.__allocating_init(rxID:axisID:rxOffsetID:cylinderSignFlipped:calibratedRXID:horizPrismID:horizPrismBaseDir:vertPrismID:vertPrismBaseDir:outOfRange:displayValues:calibrationValues:clampingStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, void *a12, uint64_t a13)
{
  v14 = objc_allocWithZone(v13);
  v15 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  v37 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  v40 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  v42 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  v43 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v45 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v14[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v16 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v17 = type metadata accessor for CRXCEyePrescription();
  v18 = objc_allocWithZone(v17);
  v19 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v18[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v20 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v18[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v21 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v18[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v22 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v18[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v18[v19] = 0;
  swift_beginAccess();
  *&v18[v20] = 0;
  swift_beginAccess();
  *&v18[v21] = 0;
  swift_beginAccess();
  *&v18[v22] = 0;
  v52.receiver = v18;
  v52.super_class = v17;
  *&v14[v16] = objc_msgSendSuper2(&v52, sel_init);
  v23 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v24 = objc_allocWithZone(v17);
  v25 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v24[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v26 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v24[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v27 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v24[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v28 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v24[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v24[v25] = 0;
  swift_beginAccess();
  *&v24[v26] = 0;
  swift_beginAccess();
  *&v24[v27] = 0;
  swift_beginAccess();
  *&v24[v28] = 0;
  v51.receiver = v24;
  v51.super_class = v17;
  *&v14[v23] = objc_msgSendSuper2(&v51, sel_init);
  v29 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = a1;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = a2;
  *&v14[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = a3;
  v14[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = a4;
  swift_beginAccess();
  *&v14[v15] = a5;
  swift_beginAccess();
  *&v14[v37] = a6;
  swift_beginAccess();
  *&v14[v40] = a7;
  swift_beginAccess();
  *&v14[v42] = a8;
  swift_beginAccess();
  *&v14[v43] = a9;
  swift_beginAccess();
  v14[v45] = a10;
  swift_beginAccess();
  v30 = *&v14[v16];
  *&v14[v16] = a11;
  v31 = a11;

  swift_beginAccess();
  v32 = *&v14[v23];
  *&v14[v23] = a12;
  v33 = a12;

  swift_beginAccess();
  *&v14[v29] = a13;
  v50.receiver = v14;
  v50.super_class = v49;
  v34 = objc_msgSendSuper2(&v50, sel_init);

  return v34;
}

id CRXCPrescriptionInfo.init(rxID:axisID:rxOffsetID:cylinderSignFlipped:calibratedRXID:horizPrismID:horizPrismBaseDir:vertPrismID:vertPrismBaseDir:outOfRange:displayValues:calibrationValues:clampingStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13)
{
  v13 = sub_2473470C4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);

  return v13;
}

id CRXCPrescriptionInfo.__allocating_init(rxID:axisID:rxOffsetID:cylinderSignFlipped:calibratedRXID:outOfRange:displayValues:calibrationValues:clampingStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, void *a8, uint64_t a9)
{
  v10 = objc_allocWithZone(v9);
  v33 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v11 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v10[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v12 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v13 = type metadata accessor for CRXCEyePrescription();
  v14 = objc_allocWithZone(v13);
  v15 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v14[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v16 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v14[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v17 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v14[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v18 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v14[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v14[v15] = 0;
  swift_beginAccess();
  *&v14[v16] = 0;
  swift_beginAccess();
  *&v14[v17] = 0;
  swift_beginAccess();
  *&v14[v18] = 0;
  v44.receiver = v14;
  v44.super_class = v13;
  *&v10[v12] = objc_msgSendSuper2(&v44, sel_init);
  v19 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v20 = objc_allocWithZone(v13);
  v21 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v20[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v22 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v20[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v23 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v20[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v24 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v20[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v20[v21] = 0;
  swift_beginAccess();
  *&v20[v22] = 0;
  swift_beginAccess();
  *&v20[v23] = 0;
  swift_beginAccess();
  *&v20[v24] = 0;
  v43.receiver = v20;
  v43.super_class = v13;
  *&v10[v19] = objc_msgSendSuper2(&v43, sel_init);
  v25 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = a1;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = a2;
  *&v10[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = a3;
  v10[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = a4;
  swift_beginAccess();
  *&v10[v33] = a5;
  swift_beginAccess();
  v10[v11] = a6;
  swift_beginAccess();
  v26 = *&v10[v12];
  *&v10[v12] = a7;
  v27 = a7;

  swift_beginAccess();
  v28 = *&v10[v19];
  *&v10[v19] = a8;
  v29 = a8;

  swift_beginAccess();
  *&v10[v25] = a9;
  v42.receiver = v10;
  v42.super_class = v41;
  v30 = objc_msgSendSuper2(&v42, sel_init);

  return v30;
}

id CRXCPrescriptionInfo.init(rxID:axisID:rxOffsetID:cylinderSignFlipped:calibratedRXID:outOfRange:displayValues:calibrationValues:clampingStatus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9)
{
  v11 = sub_2473474C0(a1, a2, a3, a4, a5, a6, a7, a8, a9);

  return v11;
}

BOOL sub_247343400(uint64_t a1)
{
  sub_247346F80(a1, v38);
  if (v39)
  {
    type metadata accessor for CRXCPrescriptionInfo();
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
      swift_beginAccess();
      v3 = *(v1 + v2);
      v4 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
      swift_beginAccess();
      if (v3 == *&v37[v4])
      {
        v5 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
        swift_beginAccess();
        v6 = *(v1 + v5);
        v7 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
        swift_beginAccess();
        if (v6 == *&v37[v7])
        {
          v8 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
          swift_beginAccess();
          v9 = *(v1 + v8);
          v10 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
          swift_beginAccess();
          if (v9 == *&v37[v10])
          {
            v11 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
            swift_beginAccess();
            LODWORD(v11) = *(v1 + v11);
            v12 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
            swift_beginAccess();
            if (v11 == v37[v12])
            {
              v13 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
              swift_beginAccess();
              v14 = *(v1 + v13);
              v15 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
              swift_beginAccess();
              if (v14 == *&v37[v15])
              {
                v16 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
                swift_beginAccess();
                LODWORD(v16) = *(v1 + v16);
                v17 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
                swift_beginAccess();
                if (v16 == v37[v17])
                {
                  sub_247347C90(0, &qword_27EE4D608, 0x277D82BB8);
                  v18 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
                  swift_beginAccess();
                  v19 = v1;
                  v20 = *(v1 + v18);
                  v21 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
                  swift_beginAccess();
                  v22 = *&v37[v21];
                  v23 = v20;
                  v24 = v22;
                  LOBYTE(v20) = sub_247365D94();

                  if (v20)
                  {
                    v25 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
                    swift_beginAccess();
                    v26 = *(v19 + v25);
                    v27 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
                    swift_beginAccess();
                    v28 = *&v37[v27];
                    v29 = v26;
                    v30 = v28;
                    v31 = sub_247365D94();

                    if (v31)
                    {
                      v32 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
                      swift_beginAccess();
                      v33 = *(v19 + v32);
                      v34 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
                      swift_beginAccess();
                      v35 = *&v37[v34];

                      return v33 == v35;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    sub_247347038(v38);
  }

  return 0;
}

uint64_t sub_247343798()
{
  v1 = v0;
  sub_247365DD4();
  MEMORY[0x24C1A0580](0xD000000000000017, 0x8000000247372CC0);
  swift_beginAccess();
  v2 = sub_247365E44();
  MEMORY[0x24C1A0580](v2);

  MEMORY[0x24C1A0580](0x444973697861202CLL, 0xEA0000000000203ALL);
  swift_beginAccess();
  v3 = sub_247365E44();
  MEMORY[0x24C1A0580](v3);

  MEMORY[0x24C1A0580](0x7366664F7872202CLL, 0xEE00203A44497465);
  swift_beginAccess();
  v4 = sub_247365E44();
  MEMORY[0x24C1A0580](v4);

  MEMORY[0x24C1A0580](0xD000000000000017, 0x8000000247372CE0);
  v5 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  if (*(v1 + v5))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v1 + v5))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C1A0580](v6, v7);

  MEMORY[0x24C1A0580](0xD000000000000012, 0x8000000247372D00);
  swift_beginAccess();
  v8 = sub_247365E44();
  MEMORY[0x24C1A0580](v8);

  MEMORY[0x24C1A0580](0x52664F74756F202CLL, 0xEE00203A65676E61);
  v9 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  swift_beginAccess();
  if (*(v1 + v9))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v1 + v9))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x24C1A0580](v10, v11);

  MEMORY[0x24C1A0580](0xD000000000000011, 0x8000000247372D20);
  v12 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = [v13 description];
  v15 = sub_247365C64();
  v17 = v16;

  MEMORY[0x24C1A0580](v15, v17);

  MEMORY[0x24C1A0580](0xD000000000000015, 0x8000000247372C70);
  v18 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = [v19 description];
  v21 = sub_247365C64();
  v23 = v22;

  MEMORY[0x24C1A0580](v21, v23);

  MEMORY[0x24C1A0580](0xD000000000000012, 0x8000000247372D40);
  swift_beginAccess();
  sub_247365DF4();
  MEMORY[0x24C1A0580](41, 0xE100000000000000);
  return 0;
}

void sub_247343C14(void *a1)
{
  v3 = OBJC_IVAR___CRXCPrescriptionInfo_rxID;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_247365C44();
  [a1 encodeInteger:v4 forKey:v5];

  v6 = OBJC_IVAR___CRXCPrescriptionInfo_axisID;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = sub_247365C44();
  [a1 encodeInteger:v7 forKey:v8];

  v9 = OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID;
  swift_beginAccess();
  v10 = *(v1 + v9);
  if (v10 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = sub_247365C44();
  [a1 encodeInteger:v10 forKey:v11];

  v12 = OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v14 = sub_247365C44();
  [a1 encodeBool:v13 forKey:v14];

  v15 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = sub_247365C44();
    [a1 encodeInteger:v16 forKey:v17];

    v18 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
    swift_beginAccess();
    v19 = *(v1 + v18);
    v20 = sub_247365C44();
    [a1 encodeBool:v19 forKey:v20];

    v21 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
    swift_beginAccess();
    v22 = *(v1 + v21);
    v23 = sub_247365C44();
    [a1 encodeObject:v22 forKey:v23];

    v24 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
    swift_beginAccess();
    v25 = *(v1 + v24);
    v26 = sub_247365C44();
    [a1 encodeObject:v25 forKey:v26];

    v27 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
    swift_beginAccess();
    v28 = *(v1 + v27);
    v29 = sub_247365C44();
    [a1 encodeInteger:v28 forKey:v29];

    return;
  }

LABEL_9:
  __break(1u);
}

void CRXCPrescriptionInfo.init(coder:)(void *a1)
{
  v2 = v1;
  v40 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v39 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v2[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v4 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v5 = type metadata accessor for CRXCEyePrescription();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v6[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v8 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v6[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v9 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v6[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v10 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v6[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v6[v7] = 0;
  swift_beginAccess();
  *&v6[v8] = 0;
  swift_beginAccess();
  *&v6[v9] = 0;
  swift_beginAccess();
  *&v6[v10] = 0;
  v45.receiver = v6;
  v45.super_class = v5;
  v42 = v4;
  *&v2[v4] = objc_msgSendSuper2(&v45, sel_init);
  v11 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v12 = objc_allocWithZone(v5);
  v13 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v12[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v14 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v12[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v15 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v12[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v16 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v12[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v12[v13] = 0;
  swift_beginAccess();
  *&v12[v14] = 0;
  swift_beginAccess();
  *&v12[v15] = 0;
  swift_beginAccess();
  *&v12[v16] = 0;
  v44.receiver = v12;
  v44.super_class = v5;
  *&v2[v11] = objc_msgSendSuper2(&v44, sel_init);
  v17 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v2[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  v18 = sub_247365C44();
  v19 = [a1 decodeIntegerForKey_];

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = sub_247365C44();
  v21 = [a1 decodeIntegerForKey_];

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = sub_247365C44();
  v23 = [a1 decodeIntegerForKey_];

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v17;
  v41 = v11;
  v24 = sub_247365C44();
  v37 = [a1 decodeBoolForKey_];

  v25 = sub_247365C44();
  v26 = [a1 decodeIntegerForKey_];

  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v27 = sub_247365C44();
  v36 = [a1 decodeBoolForKey_];

  v28 = sub_247365C44();
  v29 = [a1 decodeIntegerForKey_];

  v30 = sub_247365D84();
  if (v30)
  {
    v31 = v30;
    v32 = sub_247365D84();
    if (v32)
    {
      v33 = v32;
      if (v29 < 4)
      {
        *&v2[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = v19;
        *&v2[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = v21;
        *&v2[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = v23;
        v2[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = v37;
        swift_beginAccess();
        *&v2[v40] = v26;
        swift_beginAccess();
        v2[v39] = v36;
        swift_beginAccess();
        *&v2[v38] = v29;
        swift_beginAccess();
        v34 = *&v2[v42];
        *&v2[v42] = v31;

        swift_beginAccess();
        v35 = *&v2[v41];
        *&v2[v41] = v33;

        v43.receiver = v2;
        v43.super_class = type metadata accessor for CRXCPrescriptionInfo();
        objc_msgSendSuper2(&v43, sel_init);

        return;
      }

      v31 = v33;
    }
  }

  type metadata accessor for CRXCPrescriptionInfo();
  swift_deallocPartialClassInstance();
}

id CRXCPrescriptionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_24734471C()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2473447B4(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_247344804@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24734485C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_247344958()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2473449F0(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_247344A40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_247344A98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void *sub_247344B98()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_247344BF0(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_247344D0C()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_247344D64(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_247344DC0(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t sub_247344F3C()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_247344FD4(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_247345024@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_24734507C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2473451BC()
{
  v1 = v0 + OBJC_IVAR___CRXCAppClipCodePayload_secret;
  swift_beginAccess();
  v2 = *v1;
  sub_24734782C(*v1, *(v1 + 8));
  return v2;
}

void sub_2473452A0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_247347880(v6, v7);
}

void sub_247345300(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  sub_24734782C(v4, v5);
}

void sub_247345358(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_24734782C(v2, v3);
  sub_247347880(v5, v6);
}

uint64_t sub_24734547C()
{
  v1 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_247345514(int a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_247345564@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2473455BC(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id CRXCAppClipCodePayload.__allocating_init(version:lensType:left:right:lensColorCode:secret:randomBits:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v13 = objc_allocWithZone(v8);
  v14 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_left] = 0;
  v15 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_right] = 0;
  v16 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode] = 0;
  v17 = &v13[OBJC_IVAR___CRXCAppClipCodePayload_secret];
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_secret] = xmmword_247369580;
  v18 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_randomBits] = 0;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_version] = a1;
  *&v13[OBJC_IVAR___CRXCAppClipCodePayload_lensType] = a2;
  swift_beginAccess();
  *&v13[v14] = a3;
  swift_beginAccess();
  *&v13[v15] = a4;
  swift_beginAccess();
  *&v13[v16] = a5;
  swift_beginAccess();
  v19 = *v17;
  v20 = v17[1];
  *v17 = a6;
  v17[1] = a7;
  v21 = a4;
  v22 = a3;
  sub_24734782C(a6, a7);
  sub_247347880(v19, v20);
  swift_beginAccess();
  *&v13[v18] = a8;
  v30.receiver = v13;
  v30.super_class = v28;
  v23 = objc_msgSendSuper2(&v30, sel_init);
  sub_247347880(a6, a7);

  return v23;
}

id CRXCAppClipCodePayload.init(version:lensType:left:right:lensColorCode:secret:randomBits:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v12 = sub_2473478D4(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_247347880(a6, a7);

  return v12;
}

BOOL sub_247345958(uint64_t a1)
{
  sub_247346F80(a1, v37);
  if (v38)
  {
    type metadata accessor for CRXCAppClipCodePayload();
    if (swift_dynamicCast())
    {
      v2 = OBJC_IVAR___CRXCAppClipCodePayload_version;
      swift_beginAccess();
      v3 = *(v1 + v2);
      v4 = OBJC_IVAR___CRXCAppClipCodePayload_version;
      swift_beginAccess();
      if (v3 != *&v36[v4])
      {
        goto LABEL_19;
      }

      v5 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
      swift_beginAccess();
      v6 = *(v1 + v5);
      v7 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
      swift_beginAccess();
      if (v6 != *&v36[v7])
      {
        goto LABEL_19;
      }

      v8 = OBJC_IVAR___CRXCAppClipCodePayload_left;
      swift_beginAccess();
      v9 = *(v1 + v8);
      v10 = OBJC_IVAR___CRXCAppClipCodePayload_left;
      swift_beginAccess();
      v11 = *&v36[v10];
      if (v9)
      {
        if (!v11)
        {
          goto LABEL_19;
        }

        type metadata accessor for CRXCPrescriptionInfo();
        v12 = v11;
        v13 = v9;
        v14 = sub_247365D94();

        if ((v14 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v11)
      {
        goto LABEL_19;
      }

      v15 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      swift_beginAccess();
      v16 = *(v1 + v15);
      v17 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      swift_beginAccess();
      v18 = *&v36[v17];
      if (v16)
      {
        if (!v18)
        {
          goto LABEL_19;
        }

        type metadata accessor for CRXCPrescriptionInfo();
        v19 = v18;
        v20 = v16;
        v21 = sub_247365D94();

        if ((v21 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_16:
        v22 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
        swift_beginAccess();
        v23 = *(v1 + v22);
        v24 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
        swift_beginAccess();
        if (v23 == *&v36[v24])
        {
          v25 = (v1 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
          swift_beginAccess();
          v27 = *v25;
          v26 = v25[1];
          v28 = &v36[OBJC_IVAR___CRXCAppClipCodePayload_secret];
          swift_beginAccess();
          v30 = *v28;
          v29 = v28[1];
          sub_24734782C(v27, v26);
          sub_24734782C(v30, v29);
          v31 = sub_247347B28(v27, v26, v30, v29);
          sub_247347880(v30, v29);
          sub_247347880(v27, v26);
          if (v31)
          {
            v32 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
            swift_beginAccess();
            v33 = *(v1 + v32);
            v34 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
            swift_beginAccess();
            LODWORD(v34) = *&v36[v34];

            return v33 == v34;
          }
        }

        goto LABEL_19;
      }

      if (!v18)
      {
        goto LABEL_16;
      }

LABEL_19:
    }
  }

  else
  {
    sub_247347038(v37);
  }

  return 0;
}

uint64_t sub_247345CB4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_247365DC4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_247347038(v10);
  return v8 & 1;
}

id sub_247345D54(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_247365C44();

  return v5;
}

uint64_t sub_247345DC4()
{
  v1 = v0;
  sub_247365DD4();
  MEMORY[0x24C1A0580](0xD00000000000001CLL, 0x8000000247372D90);
  swift_beginAccess();
  v2 = sub_247365E44();
  MEMORY[0x24C1A0580](v2);

  MEMORY[0x24C1A0580](0x7954736E656C202CLL, 0xEC000000203A6570);
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = 0xE900000000000072;
      v6 = 0x65706F6C65766564;
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = 0xE800000000000000;
      v6 = 0x6C616E6F73726570;
      goto LABEL_10;
    }
  }

  else
  {
    if (!v4)
    {
      v5 = 0xE400000000000000;
      v6 = 1869440356;
LABEL_10:
      MEMORY[0x24C1A0580](v6, v5);

      MEMORY[0x24C1A0580](0x203A7466656C202CLL, 0xE800000000000000);
      v7 = OBJC_IVAR___CRXCAppClipCodePayload_left;
      swift_beginAccess();
      v8 = *(v1 + v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE4D6B0, &qword_2473695A8);
      v9 = sub_247365C94();
      MEMORY[0x24C1A0580](v9);

      MEMORY[0x24C1A0580](0x3A7468676972202CLL, 0xE900000000000020);
      v10 = OBJC_IVAR___CRXCAppClipCodePayload_right;
      swift_beginAccess();
      v11 = *(v1 + v10);
      v12 = sub_247365C94();
      MEMORY[0x24C1A0580](v12);

      MEMORY[0x24C1A0580](0x43726F6C6F63202CLL, 0xED0000203A65646FLL);
      swift_beginAccess();
      v13 = sub_247365E44();
      MEMORY[0x24C1A0580](v13);

      MEMORY[0x24C1A0580](41, 0xE100000000000000);
      return 0;
    }

    if (v4 == 1)
    {
      v5 = 0xE600000000000000;
      v6 = 0x726564616572;
      goto LABEL_10;
    }
  }

  result = sub_247365E64();
  __break(1u);
  return result;
}

void sub_2473460E4(void *a1)
{
  v3 = OBJC_IVAR___CRXCAppClipCodePayload_version;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_247365C44();
    [a1 encodeInteger:v4 forKey:v5];

    v6 = OBJC_IVAR___CRXCAppClipCodePayload_lensType;
    swift_beginAccess();
    v7 = *(v1 + v6);
    v8 = sub_247365C44();
    [a1 encodeInteger:v7 forKey:v8];

    v9 = OBJC_IVAR___CRXCAppClipCodePayload_left;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (v10)
    {
      v11 = v10;
      v12 = sub_247365C44();
      [a1 encodeObject:v11 forKey:v12];
    }

    v13 = OBJC_IVAR___CRXCAppClipCodePayload_right;
    swift_beginAccess();
    v14 = *(v1 + v13);
    if (v14)
    {
      v15 = v14;
      v16 = sub_247365C44();
      [a1 encodeObject:v15 forKey:v16];
    }

    v17 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
    swift_beginAccess();
    v18 = *(v1 + v17);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v19 = sub_247365C44();
      [a1 encodeInteger:v18 forKey:v19];

      v20 = (v1 + OBJC_IVAR___CRXCAppClipCodePayload_secret);
      swift_beginAccess();
      v22 = *v20;
      v21 = v20[1];
      sub_24734782C(v22, v21);
      v23 = sub_247365B24();
      sub_247347880(v22, v21);
      v24 = sub_247365C44();
      [a1 encodeObject:v23 forKey:v24];

      v25 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
      swift_beginAccess();
      v26 = *(v1 + v25);
      v27 = sub_247365C44();
      [a1 encodeInt64:v26 forKey:v27];

      return;
    }
  }

  __break(1u);
}

void CRXCAppClipCodePayload.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  *(v2 + OBJC_IVAR___CRXCAppClipCodePayload_left) = 0;
  v5 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  *(v2 + OBJC_IVAR___CRXCAppClipCodePayload_right) = 0;
  *(v2 + OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode) = 0;
  v6 = v2 + OBJC_IVAR___CRXCAppClipCodePayload_secret;
  *(v2 + OBJC_IVAR___CRXCAppClipCodePayload_secret) = xmmword_247369580;
  *(v2 + OBJC_IVAR___CRXCAppClipCodePayload_randomBits) = 0;
  v7 = sub_247365C44();
  v8 = [a1 decodeInt64ForKey_];

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = sub_247365C44();
  v23 = [a1 decodeIntegerForKey_];

  v10 = sub_247365C44();
  v11 = [a1 containsValueForKey_];

  if (v11)
  {
    type metadata accessor for CRXCPrescriptionInfo();
    v12 = sub_247365D84();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_247365C44();
  v14 = [a1 containsValueForKey_];

  if (v14)
  {
    type metadata accessor for CRXCPrescriptionInfo();
    v15 = sub_247365D84();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_247365C44();
  v17 = [a1 decodeIntegerForKey_];

  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  v22 = v5;
  v18 = sub_247365C44();
  v19 = [a1 decodeIntegerForKey_];

  if ((v19 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(v19))
  {
LABEL_18:
    __break(1u);
    return;
  }

  if (v23 < 4)
  {
    sub_247347C90(0, &qword_27EE4D8D0, 0x277CBEA90);
    v20 = sub_247365D84();
    if (v20)
    {
      v21 = v20;
      sub_247365B34();
    }
  }

  sub_247347880(*v6, *(v6 + 8));
  type metadata accessor for CRXCAppClipCodePayload();
  swift_deallocPartialClassInstance();
}

id sub_2473468E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24734697C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_247365A64();
    if (v10)
    {
      v11 = sub_247365A84();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_247365A74();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_247365A64();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_247365A84();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_247365A74();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_247346BAC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_247347A70(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_247347880(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_24734697C(v13, a3, a4, &v12);
  v10 = v4;
  sub_247347880(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

id sub_247346D3C(void *a1, void *a2)
{
  v4 = OBJC_IVAR___CRXCPrescriptionValues_displayValues;
  v5 = type metadata accessor for CRXCEyePrescription();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v6[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v8 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v6[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v9 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v6[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v10 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v6[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v6[v7] = 0;
  swift_beginAccess();
  *&v6[v8] = 0;
  swift_beginAccess();
  *&v6[v9] = 0;
  swift_beginAccess();
  *&v6[v10] = 0;
  v25.receiver = v6;
  v25.super_class = v5;
  *&v2[v4] = objc_msgSendSuper2(&v25, sel_init);
  v11 = OBJC_IVAR___CRXCPrescriptionValues_calibrationValues;
  v12 = objc_allocWithZone(v5);
  v13 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v12[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v14 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v12[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v15 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v12[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v16 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v12[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v12[v13] = 0;
  swift_beginAccess();
  *&v12[v14] = 0;
  swift_beginAccess();
  *&v12[v15] = 0;
  swift_beginAccess();
  *&v12[v16] = 0;
  v24.receiver = v12;
  v24.super_class = v5;
  *&v2[v11] = objc_msgSendSuper2(&v24, sel_init);
  swift_beginAccess();
  v17 = *&v2[v4];
  *&v2[v4] = a1;
  v18 = a1;

  swift_beginAccess();
  v19 = *&v2[v11];
  *&v2[v11] = a2;
  v20 = a2;

  v23.receiver = v2;
  v23.super_class = type metadata accessor for CRXCPrescriptionValues();
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t sub_247346F80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D600, &qword_2473695A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_247347038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D600, &qword_2473695A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2473470C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11, void *a12, uint64_t a13)
{
  v14 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  v36 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  v39 = OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  v40 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  v42 = OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v43 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v13[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v15 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v16 = type metadata accessor for CRXCEyePrescription();
  v17 = objc_allocWithZone(v16);
  v18 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v17[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v19 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v17[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v20 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v17[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v21 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v17[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v17[v18] = 0;
  swift_beginAccess();
  *&v17[v19] = 0;
  swift_beginAccess();
  *&v17[v20] = 0;
  swift_beginAccess();
  *&v17[v21] = 0;
  v49.receiver = v17;
  v49.super_class = v16;
  *&v13[v15] = objc_msgSendSuper2(&v49, sel_init);
  v22 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v23 = objc_allocWithZone(v16);
  v24 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v23[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v25 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v23[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v26 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v23[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v27 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v23[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v23[v24] = 0;
  swift_beginAccess();
  *&v23[v25] = 0;
  swift_beginAccess();
  *&v23[v26] = 0;
  swift_beginAccess();
  *&v23[v27] = 0;
  v48.receiver = v23;
  v48.super_class = v16;
  *&v13[v22] = objc_msgSendSuper2(&v48, sel_init);
  v28 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = a1;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = a2;
  *&v13[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = a3;
  v13[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = a4;
  swift_beginAccess();
  *&v13[v14] = a5;
  swift_beginAccess();
  *&v13[v36] = a6;
  swift_beginAccess();
  *&v13[v39] = a7;
  swift_beginAccess();
  *&v13[v40] = a8;
  swift_beginAccess();
  *&v13[v42] = a9;
  swift_beginAccess();
  v13[v43] = a10;
  swift_beginAccess();
  v29 = *&v13[v15];
  *&v13[v15] = a11;
  v30 = a11;

  swift_beginAccess();
  v31 = *&v13[v22];
  *&v13[v22] = a12;
  v32 = a12;

  swift_beginAccess();
  *&v13[v28] = a13;
  v47.receiver = v13;
  v47.super_class = type metadata accessor for CRXCPrescriptionInfo();
  return objc_msgSendSuper2(&v47, sel_init);
}

id sub_2473474C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7, void *a8, uint64_t a9)
{
  v32 = OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_calibratedRXID] = 0;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismID] = 0;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_horizPrismBaseDir] = 0;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismID] = 0;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_vertPrismBaseDir] = 0;
  v10 = OBJC_IVAR___CRXCPrescriptionInfo_outOfRange;
  v9[OBJC_IVAR___CRXCPrescriptionInfo_outOfRange] = 0;
  v11 = OBJC_IVAR___CRXCPrescriptionInfo_displayValues;
  v12 = type metadata accessor for CRXCEyePrescription();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v13[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v15 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v13[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v16 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v13[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v17 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v13[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v13[v14] = 0;
  swift_beginAccess();
  *&v13[v15] = 0;
  swift_beginAccess();
  *&v13[v16] = 0;
  swift_beginAccess();
  *&v13[v17] = 0;
  v41.receiver = v13;
  v41.super_class = v12;
  *&v9[v11] = objc_msgSendSuper2(&v41, sel_init);
  v18 = OBJC_IVAR___CRXCPrescriptionInfo_calibrationValues;
  v19 = objc_allocWithZone(v12);
  v20 = OBJC_IVAR___CRXCEyePrescription_sphere;
  *&v19[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v21 = OBJC_IVAR___CRXCEyePrescription_cylinder;
  *&v19[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v22 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v19[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v23 = OBJC_IVAR___CRXCEyePrescription_vrAdd;
  *&v19[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *&v19[v20] = 0;
  swift_beginAccess();
  *&v19[v21] = 0;
  swift_beginAccess();
  *&v19[v22] = 0;
  swift_beginAccess();
  *&v19[v23] = 0;
  v40.receiver = v19;
  v40.super_class = v12;
  *&v9[v18] = objc_msgSendSuper2(&v40, sel_init);
  v24 = OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_clampingStatus] = 0;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_rxID] = a1;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_axisID] = a2;
  *&v9[OBJC_IVAR___CRXCPrescriptionInfo_rxOffsetID] = a3;
  v9[OBJC_IVAR___CRXCPrescriptionInfo_cylinderSignFlipped] = a4;
  swift_beginAccess();
  *&v9[v32] = a5;
  swift_beginAccess();
  v9[v10] = a6;
  swift_beginAccess();
  v25 = *&v9[v11];
  *&v9[v11] = a7;
  v26 = a7;

  swift_beginAccess();
  v27 = *&v9[v18];
  *&v9[v18] = a8;
  v28 = a8;

  swift_beginAccess();
  *&v9[v24] = a9;
  v39.receiver = v9;
  v39.super_class = type metadata accessor for CRXCPrescriptionInfo();
  return objc_msgSendSuper2(&v39, sel_init);
}

void sub_24734782C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void sub_247347880(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

id sub_2473478D4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8)
{
  v13 = OBJC_IVAR___CRXCAppClipCodePayload_left;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_left] = 0;
  v14 = OBJC_IVAR___CRXCAppClipCodePayload_right;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_right] = 0;
  v15 = OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_lensColorCode] = 0;
  v16 = &v8[OBJC_IVAR___CRXCAppClipCodePayload_secret];
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_secret] = xmmword_247369580;
  v17 = OBJC_IVAR___CRXCAppClipCodePayload_randomBits;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_randomBits] = 0;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_version] = a1;
  *&v8[OBJC_IVAR___CRXCAppClipCodePayload_lensType] = a2;
  swift_beginAccess();
  *&v8[v13] = a3;
  swift_beginAccess();
  *&v8[v14] = a4;
  swift_beginAccess();
  *&v8[v15] = a5;
  swift_beginAccess();
  v18 = *v16;
  v19 = v16[1];
  *v16 = a6;
  v16[1] = a7;
  v20 = a4;
  v21 = a3;
  sub_24734782C(a6, a7);
  sub_247347880(v18, v19);
  swift_beginAccess();
  *&v8[v17] = a8;
  v25.receiver = v8;
  v25.super_class = type metadata accessor for CRXCAppClipCodePayload();
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_247347A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_247365A64();
  v11 = result;
  if (result)
  {
    result = sub_247365A84();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_247365A74();
  sub_24734697C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_247347B28(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24734782C(a3, a4);
          return sub_247346BAC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_247347C90(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_247347CDC()
{
  result = qword_27EE4D6C0;
  if (!qword_27EE4D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D6C0);
  }

  return result;
}

unint64_t sub_247347D34()
{
  result = qword_27EE4D6C8;
  if (!qword_27EE4D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D6C8);
  }

  return result;
}

uint64_t AccessoryDataFetchEnvironment.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_247348E1C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 3;
  v4 = __CFADD__(v3, 2);
  v5 = v3 < 0xFFFFFFFFFFFFFFFELL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

unint64_t CorePrescriptionServiceError.errorUserInfo.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D730, &qword_247369800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2473697F0;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_247365C94();
  v4 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  v6 = sub_247349B10(inited);
  swift_setDeallocating();
  sub_247349C20(inited + 32);
  v7 = CorePrescriptionServiceError.errorDescription.getter(a1);
  v9 = v8;
  v10 = sub_247365C64();
  v12 = v11;
  v17 = v4;
  *&v16 = v7;
  *(&v16 + 1) = v9;
  sub_247349C88(&v16, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2473496F8(v15, v10, v12, isUniquelyReferenced_nonNull_native);

  return v6;
}

uint64_t CorePrescriptionServiceError.errorDescription.getter(uint64_t a1)
{
  if (a1 > 5)
  {
    if (a1 <= 8)
    {
      if (a1 == 6)
      {
        return 0xD000000000000012;
      }

      if (a1 == 7)
      {
        return 0xD000000000000014;
      }

      return 0xD000000000000013;
    }

    switch(a1)
    {
      case 9:
        return 0xD000000000000028;
      case 10:
        return 0xD000000000000011;
      case 11:
        return 0xD000000000000013;
    }

    goto LABEL_24;
  }

  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 0x2064696C61766E49;
    }

    if (a1 == 2)
    {
      return 0xD000000000000015;
    }

LABEL_24:
    result = sub_247365E64();
    __break(1u);
    return result;
  }

  if (a1 == 3)
  {
    return 0xD000000000000010;
  }

  if (a1 == 4)
  {
    return 0xD000000000000011;
  }

  return 0x6C616E7265746E49;
}

uint64_t sub_24734918C(uint64_t a1, uint64_t a2)
{
  sub_247365EA4();
  sub_247365BF4();
  return sub_247365EC4();
}

uint64_t sub_2473491F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_247349F30();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_24734923C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_247365EA4();
  sub_247365BF4();
  return sub_247365EC4();
}

uint64_t sub_24734929C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_247349C98(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2473492D0(uint64_t a1)
{
  v2 = sub_247349F30();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_24734930C(uint64_t a1)
{
  v2 = sub_247349F30();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_247349374(uint64_t a1, uint64_t a2)
{
  v4 = sub_247349F30();

  return MEMORY[0x28211C008](a1, a2, v4);
}

unint64_t sub_2473493C8(uint64_t a1, uint64_t a2)
{
  sub_247365EA4();
  sub_247365CB4();
  v4 = sub_247365EC4();

  return sub_2473498B4(a1, a2, v4);
}

uint64_t sub_247349440(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D780, &qword_247369B00);
  v33 = v4;
  result = sub_247365E14();
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
        sub_247349C88(v24, v34);
      }

      else
      {
        sub_247349FD0(v24, v34);
      }

      sub_247365EA4();
      sub_247365CB4();
      result = sub_247365EC4();
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
      result = sub_247349C88(v34, (*(v7 + 56) + 32 * v15));
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

_OWORD *sub_2473496F8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2473493C8(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24734996C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_247349440(v16, a4 & 1);
    v11 = sub_2473493C8(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_247365E74();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_247349C88(a1, v22);
  }

  else
  {
    sub_247349848(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_247349848(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_247349C88(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_2473498B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_247365E54())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_24734996C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D780, &qword_247369B00);
  v2 = *v0;
  v3 = sub_247365E04();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_247349FD0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_247349C88(v25, (*(v4 + 56) + v22));
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

  return result;
}

unint64_t sub_247349B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D780, &qword_247369B00);
    v3 = sub_247365E24();
    v4 = a1 + 32;

    while (1)
    {
      sub_24734A02C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2473493C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_247349C88(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_247349C20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D738, &qword_247369808);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_247349C88(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_247349C98(uint64_t result)
{
  if ((result - 12) < 0xFFFFFFFFFFFFFFF5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_247349CB0()
{
  result = qword_27EE4D740;
  if (!qword_27EE4D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D740);
  }

  return result;
}

unint64_t sub_247349D08()
{
  result = qword_27EE4D748;
  if (!qword_27EE4D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D748);
  }

  return result;
}

unint64_t sub_247349D5C()
{
  result = qword_27EE4D750;
  if (!qword_27EE4D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D750);
  }

  return result;
}

unint64_t sub_247349DB4()
{
  result = qword_27EE4D758;
  if (!qword_27EE4D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D758);
  }

  return result;
}

unint64_t sub_247349E0C()
{
  result = qword_27EE4D760;
  if (!qword_27EE4D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D760);
  }

  return result;
}

unint64_t sub_247349E64()
{
  result = qword_27EE4D768;
  if (!qword_27EE4D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D768);
  }

  return result;
}

unint64_t sub_247349EBC()
{
  result = qword_27EE4D770;
  if (!qword_27EE4D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D770);
  }

  return result;
}

unint64_t sub_247349F30()
{
  result = qword_27EE4D778;
  if (!qword_27EE4D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D778);
  }

  return result;
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

uint64_t sub_247349FD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24734A02C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D738, &qword_247369808);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Data.init(hexString:)(uint64_t a1, uint64_t a2)
{
  if (sub_247365CC4())
  {
    goto LABEL_148;
  }

  result = sub_247365CC4();
  v3 = MEMORY[0x277D84F90];
  if (!result)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v4 = result;
  v81 = MEMORY[0x277D84F90];
  result = sub_24734AEAC(0, result & ~(result >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v81;
    do
    {
      v6 = sub_247365D34();
      v81 = v5;
      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_24734AEAC((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v5 = v81;
      }

      *(v5 + 16) = v9 + 1;
      v10 = v5 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      result = sub_247365CD4();
      --v4;
    }

    while (v4);
LABEL_11:
    v80 = *(v5 + 16);
    if (v80)
    {
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = __OFADD__(v14, 2);
        v14 += 2;
        if (v16)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v13;
        if (v14 >= v80)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v15 = 0;
LABEL_19:
    v83 = v3;
    result = sub_24734AE8C(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      goto LABEL_164;
    }

    v17 = v83;
    if (v15)
    {
      v18 = 0;
      v19 = v5 + 32;
      do
      {
        if (v18 >= v80)
        {
          goto LABEL_152;
        }

        v20 = v18 + 2;
        if (__OFADD__(v18, 2))
        {
          v21 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v18 + 2;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_153;
        }

        v22 = *(v5 + 16);
        if (v18 >= v22)
        {
          goto LABEL_154;
        }

        if (v18 + 1 >= v22)
        {
          goto LABEL_155;
        }

        v23 = *(v19 + 16 * v18 + 8);
        v24 = (v19 + 16 * (v18 + 1));
        v25 = *v24;
        v26 = v24[1];
        v81 = *(v19 + 16 * v18);
        v82 = v23;
        v27 = v17;
        swift_bridgeObjectRetain_n();

        MEMORY[0x24C1A0580](v25, v26);

        v17 = v27;
        v28 = v81;
        v83 = v27;
        v29 = *(v27 + 16);
        v30 = *(v17 + 24);
        if (v29 >= v30 >> 1)
        {
          result = sub_24734AE8C((v30 > 1), v29 + 1, 1);
          v17 = v83;
        }

        *(v17 + 16) = v29 + 1;
        v31 = v17 + 16 * v29;
        *(v31 + 32) = v28;
        *(v31 + 40) = v23;
        v18 = v21;
        --v15;
      }

      while (v15);
      if (v21 >= v80)
      {
LABEL_48:
        v46 = v17;

        v47 = v46;
        v48 = *(v46 + 16);
        if (v48)
        {
          v49 = 0;
          v50 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v49 >= *(v47 + 16))
            {
              goto LABEL_156;
            }

            v51 = (v46 + 32 + 16 * v49);
            v52 = *v51;
            v53 = v51[1];
            ++v49;
            v54 = HIBYTE(v53) & 0xF;
            v55 = v52 & 0xFFFFFFFFFFFFLL;
            if ((v53 & 0x2000000000000000) != 0)
            {
              v56 = HIBYTE(v53) & 0xF;
            }

            else
            {
              v56 = v52 & 0xFFFFFFFFFFFFLL;
            }

            if (!v56)
            {
              goto LABEL_135;
            }

            if ((v53 & 0x1000000000000000) == 0)
            {
              break;
            }

            LOWORD(v52) = sub_24734B0E4(v52, v53, 16);

            v47 = v46;
            if ((v52 & 0x100) == 0)
            {
LABEL_138:
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_24734AD98(0, *(v50 + 16) + 1, 1, v50);
                v50 = result;
              }

              v76 = *(v50 + 16);
              v75 = *(v50 + 24);
              if (v76 >= v75 >> 1)
              {
                result = sub_24734AD98((v75 > 1), v76 + 1, 1, v50);
                v47 = v46;
                v50 = result;
              }

              else
              {
                v47 = v46;
              }

              *(v50 + 16) = v76 + 1;
              *(v50 + v76 + 32) = v52;
            }

LABEL_135:
            if (v49 == v48)
            {
              goto LABEL_146;
            }
          }

          if ((v53 & 0x2000000000000000) != 0)
          {
            v81 = v52;
            v82 = v53 & 0xFFFFFFFFFFFFFFLL;
            if (v52 == 43)
            {
              if (!v54)
              {
                goto LABEL_160;
              }

              if (--v54)
              {
                LOBYTE(v52) = 0;
                v67 = &v81 + 1;
                while (1)
                {
                  v68 = *v67;
                  v69 = v68 - 48;
                  if ((v68 - 48) >= 0xA)
                  {
                    if ((v68 - 65) < 6)
                    {
                      v69 = v68 - 55;
                    }

                    else
                    {
                      if ((v68 - 97) > 5)
                      {
                        goto LABEL_133;
                      }

                      v69 = v68 - 87;
                    }
                  }

                  if (v52 > 0xFu)
                  {
                    break;
                  }

                  LOBYTE(v52) = v69 + 16 * v52;
                  ++v67;
                  if (!--v54)
                  {
                    goto LABEL_134;
                  }
                }
              }
            }

            else if (v52 == 45)
            {
              if (!v54)
              {
                goto LABEL_162;
              }

              if (--v54)
              {
                LOBYTE(v52) = 0;
                v61 = &v81 + 1;
                while (1)
                {
                  v62 = *v61;
                  v63 = v62 - 48;
                  if ((v62 - 48) >= 0xA)
                  {
                    if ((v62 - 65) < 6)
                    {
                      v63 = v62 - 55;
                    }

                    else
                    {
                      if ((v62 - 97) > 5)
                      {
                        goto LABEL_133;
                      }

                      v63 = v62 - 87;
                    }
                  }

                  if (v52 > 0xFu)
                  {
                    break;
                  }

                  LODWORD(v52) = 16 * (v52 & 0xF) - v63;
                  if ((v52 & 0xFFFFFF00) != 0)
                  {
                    break;
                  }

                  ++v61;
                  if (!--v54)
                  {
                    goto LABEL_134;
                  }
                }
              }
            }

            else if (v54)
            {
              LOBYTE(v52) = 0;
              v72 = &v81;
              while (1)
              {
                v73 = *v72;
                v74 = v73 - 48;
                if ((v73 - 48) >= 0xA)
                {
                  if ((v73 - 65) < 6)
                  {
                    v74 = v73 - 55;
                  }

                  else
                  {
                    if ((v73 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v74 = v73 - 87;
                  }
                }

                if (v52 > 0xFu)
                {
                  break;
                }

                LOBYTE(v52) = v74 + 16 * v52;
                v72 = (v72 + 1);
                if (!--v54)
                {
                  goto LABEL_134;
                }
              }
            }

            goto LABEL_133;
          }

          if ((v52 & 0x1000000000000000) != 0)
          {
            result = (v53 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            result = sub_247365DE4();
            v47 = v46;
          }

          v57 = *result;
          if (v57 == 43)
          {
            if (v55 < 1)
            {
              goto LABEL_163;
            }

            v54 = v55 - 1;
            if (v55 == 1)
            {
              goto LABEL_133;
            }

            if (result)
            {
              LOBYTE(v52) = 0;
              v64 = (result + 1);
              while (1)
              {
                v65 = *v64;
                v66 = v65 - 48;
                if ((v65 - 48) >= 0xA)
                {
                  if ((v65 - 65) < 6)
                  {
                    v66 = v65 - 55;
                  }

                  else
                  {
                    if ((v65 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v66 = v65 - 87;
                  }
                }

                if (v52 > 0xFu)
                {
                  goto LABEL_133;
                }

                LOBYTE(v52) = v66 + 16 * v52;
                ++v64;
                if (!--v54)
                {
                  goto LABEL_134;
                }
              }
            }
          }

          else if (v57 == 45)
          {
            if (v55 < 1)
            {
              goto LABEL_161;
            }

            v54 = v55 - 1;
            if (v55 == 1)
            {
              goto LABEL_133;
            }

            if (result)
            {
              LOBYTE(v52) = 0;
              v58 = (result + 1);
              while (1)
              {
                v59 = *v58;
                v60 = v59 - 48;
                if ((v59 - 48) >= 0xA)
                {
                  if ((v59 - 65) < 6)
                  {
                    v60 = v59 - 55;
                  }

                  else
                  {
                    if ((v59 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v60 = v59 - 87;
                  }
                }

                if (v52 > 0xFu)
                {
                  goto LABEL_133;
                }

                LODWORD(v52) = 16 * (v52 & 0xF) - v60;
                if ((v52 & 0xFFFFFF00) != 0)
                {
                  goto LABEL_133;
                }

                ++v58;
                if (!--v54)
                {
                  goto LABEL_134;
                }
              }
            }
          }

          else
          {
            if (!v55)
            {
LABEL_133:
              LOBYTE(v52) = 0;
              LOBYTE(v54) = 1;
LABEL_134:
              LOBYTE(v83) = v54;
              if ((v54 & 1) == 0)
              {
                goto LABEL_138;
              }

              goto LABEL_135;
            }

            if (result)
            {
              LOBYTE(v52) = 0;
              while (1)
              {
                v70 = *result;
                v71 = v70 - 48;
                if ((v70 - 48) >= 0xA)
                {
                  if ((v70 - 65) < 6)
                  {
                    v71 = v70 - 55;
                  }

                  else
                  {
                    if ((v70 - 97) > 5)
                    {
                      goto LABEL_133;
                    }

                    v71 = v70 - 87;
                  }
                }

                if (v52 > 0xFu)
                {
                  goto LABEL_133;
                }

                LOBYTE(v52) = v71 + 16 * v52;
                ++result;
                if (!--v55)
                {
                  LOBYTE(v54) = 0;
                  goto LABEL_134;
                }
              }
            }
          }

          LOBYTE(v52) = 0;
          LOBYTE(v54) = 0;
          goto LABEL_134;
        }

        v50 = MEMORY[0x277D84F90];
LABEL_146:

        v77 = *(v50 + 16);
        if (v77)
        {
          v78 = sub_247365CC4();

          if (v78 / v77 != 2)
          {
LABEL_148:

            return 0;
          }
        }

        else
        {
        }

        v79 = sub_24734BD58(v50);

        return v79;
      }
    }

    else
    {
      if (!v80)
      {
        goto LABEL_48;
      }

      v20 = 0;
    }

    v32 = (v5 + 16 * v20 + 56);
    while (1)
    {
      v33 = v20 + 2;
      v34 = __OFADD__(v20, 2);
      if ((v20 & 0x8000000000000000) != 0)
      {
        break;
      }

      v35 = *(v5 + 16);
      if (v20 >= v35)
      {
        goto LABEL_158;
      }

      v36 = v20 + 1;
      if (v36 >= v35)
      {
        goto LABEL_159;
      }

      v37 = *(v32 - 2);
      v38 = *(v32 - 1);
      v39 = *v32;
      v81 = *(v32 - 3);
      v82 = v37;
      v40 = v17;
      swift_bridgeObjectRetain_n();

      MEMORY[0x24C1A0580](v38, v39);

      v17 = v40;
      v41 = v81;
      v83 = v40;
      v42 = *(v40 + 16);
      v43 = *(v17 + 24);
      if (v42 >= v43 >> 1)
      {
        result = sub_24734AE8C((v43 > 1), v42 + 1, 1);
        v17 = v83;
      }

      v32 += 4;
      *(v17 + 16) = v42 + 1;
      v44 = v17 + 16 * v42;
      *(v44 + 32) = v41;
      *(v44 + 40) = v37;
      v45 = !v34;
      v20 = v36 + 1;
      if (v33 >= v80)
      {
        v45 = 0;
      }

      if (!v45)
      {
        goto LABEL_48;
      }
    }

LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24734A8D4(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    v32 = a2 >> 62;
    sub_24734AE8C(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_247365A64();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_247365A84();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_247365A64();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_247365A84();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D790, &unk_247369B40);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_2473697F0;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_247365C74();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_24734AE8C((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

Swift::String __swiftcall Data.toHexString()()
{
  sub_24734A8D4(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D788, &qword_247369B08);
  sub_24734BE7C(&qword_27EE4D8A0, &qword_27EE4D788, &qword_247369B08, MEMORY[0x277D83958]);
  v2 = sub_247365C04();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

_BYTE *sub_24734AD04@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_24734BBA0(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24734BC58(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24734BCD4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

char *sub_24734AD98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D7A8, &qword_247369B18);
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

char *sub_24734AE8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24734AECC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24734AEAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24734AFD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24734AECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D7B0, &qword_247369B20);
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

char *sub_24734AFD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D7B8, &qword_247369B28);
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

unsigned __int8 *sub_24734B0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = sub_247365D44();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24734B6B8(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_247365DE4();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_24734B6B8(uint64_t a1, unint64_t a2)
{
  v2 = sub_247365D54();
  v6 = sub_24734B738(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24734B738(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_247365DB4();
    if (!v9 || (v10 = v9, v11 = sub_24734B890(v9, 0), v12 = sub_24734B904(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_247365CA4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_247365CA4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_247365DE4();
LABEL_4:

  return sub_247365CA4();
}

void *sub_24734B890(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D7A8, &qword_247369B18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_24734B904(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_24734BB24(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_247365D14();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_247365DE4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_24734BB24(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_247365CF4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_24734BB24(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_247365D24();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1A05A0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_24734BBA0(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_24734BC58(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_247365A94();
  swift_allocObject();
  result = sub_247365A54();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_247365B14();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24734BCD4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_247365A94();
  swift_allocObject();
  result = sub_247365A54();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24734BD58(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D798, &qword_247369B10);
  v10 = sub_24734BE7C(&qword_27EE4D7A0, &qword_27EE4D798, &qword_247369B10, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_24734AD04(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
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

uint64_t sub_24734BE7C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24734BFD4()
{
  v1 = sub_247365BE4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_247365C34();
  MEMORY[0x28223BE20](v2 - 8);
  sub_247365C24();
  sub_247365BD4();
  sub_247365C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D790, &unk_247369B40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_247369B30;
  v4 = *(v0 + OBJC_IVAR___CRXCDiopterRange_minimumDiopter);
  v5 = MEMORY[0x277D83A90];
  v6 = MEMORY[0x277D83B08];
  *(v3 + 56) = MEMORY[0x277D83A90];
  *(v3 + 64) = v6;
  *(v3 + 32) = v4;
  v7 = *(v0 + OBJC_IVAR___CRXCDiopterRange_maximumDiopter);
  *(v3 + 96) = v5;
  *(v3 + 104) = v6;
  *(v3 + 72) = v7;
  v8 = sub_247365C74();

  return v8;
}

BOOL sub_24734C168(uint64_t a1)
{
  sub_247346F80(a1, v6);
  if (v7)
  {
    type metadata accessor for CRXCDiopterRange();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___CRXCDiopterRange_minimumDiopter) == *&v5[OBJC_IVAR___CRXCDiopterRange_minimumDiopter] && *(v1 + OBJC_IVAR___CRXCDiopterRange_maximumDiopter) == *&v5[OBJC_IVAR___CRXCDiopterRange_maximumDiopter])
      {
        v2 = *(v1 + OBJC_IVAR___CRXCDiopterRange_mappedDiopter);
        v3 = *&v5[OBJC_IVAR___CRXCDiopterRange_mappedDiopter];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_247347038(v6);
  }

  return 0;
}

uint64_t sub_24734C330()
{
  sub_247365DD4();
  MEMORY[0x24C1A0580](0xD00000000000001DLL, 0x8000000247373C00);
  sub_247365D74();
  MEMORY[0x24C1A0580](0xD000000000000013, 0x8000000247373C20);
  sub_247365D74();
  MEMORY[0x24C1A0580](0xD000000000000011, 0x8000000247373C40);
  sub_247365D74();
  MEMORY[0x24C1A0580](41, 0xE100000000000000);
  return 0;
}

void sub_24734C46C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CRXCDiopterRange_minimumDiopter);
  v4 = sub_247365C44();
  LODWORD(v5) = v3;
  [a1 encodeFloat:v4 forKey:v5];

  v6 = *(v1 + OBJC_IVAR___CRXCDiopterRange_maximumDiopter);
  v7 = sub_247365C44();
  LODWORD(v8) = v6;
  [a1 encodeFloat:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CRXCDiopterRange_mappedDiopter);
  v11 = sub_247365C44();
  LODWORD(v10) = v9;
  [a1 encodeFloat:v11 forKey:v10];
}

id CRXCDiopterRange.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_24734C73C(a1);

  return v4;
}

id CRXCDiopterRange.init(coder:)(void *a1)
{
  v2 = sub_24734C73C(a1);

  return v2;
}

id CRXCDiopterRange.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRXCDiopterRange.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCDiopterRange();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24734C73C(void *a1)
{
  v3 = sub_247365C44();
  [a1 decodeFloatForKey_];
  v5 = v4;

  *&v1[OBJC_IVAR___CRXCDiopterRange_minimumDiopter] = v5;
  v6 = sub_247365C44();
  [a1 decodeFloatForKey_];
  v8 = v7;

  *&v1[OBJC_IVAR___CRXCDiopterRange_maximumDiopter] = v8;
  v9 = sub_247365C44();
  [a1 decodeFloatForKey_];
  v11 = v10;

  *&v1[OBJC_IVAR___CRXCDiopterRange_mappedDiopter] = v11;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CRXCDiopterRange();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t CRXCEnrollmentBriefRecord.uuid.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid);

  return v1;
}

id sub_24734C96C(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_247365C44();

  return v3;
}

uint64_t CRXCEnrollmentBriefRecord.enrollmentName.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName);

  return v1;
}

uint64_t sub_24734CA64(uint64_t a1)
{
  sub_247346F80(a1, v9);
  if (!v10)
  {
    sub_247347038(v9);
    goto LABEL_18;
  }

  type metadata accessor for CRXCEnrollmentBriefRecord();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v6 = 0;
    return v6 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid) == *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid] && *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid + 8) == *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid + 8];
  if (!v2 && (sub_247365E54() & 1) == 0 || (*(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName) == *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName] ? (v3 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName + 8) == *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName + 8]) : (v3 = 0), !v3 && (sub_247365E54() & 1) == 0 || *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup) != *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup] || *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_identifyingColor) != *&v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_identifyingColor]))
  {

    goto LABEL_18;
  }

  v4 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected);
  v5 = v8[OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected];

  v6 = v4 ^ v5 ^ 1;
  return v6 & 1;
}

uint64_t sub_24734CC98()
{
  v1 = v0;
  sub_247365DD4();
  MEMORY[0x24C1A0580](0xD00000000000001CLL, 0x8000000247373D40);
  MEMORY[0x24C1A0580](*(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid), *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid + 8));
  MEMORY[0x24C1A0580](0x203A656D616E202CLL, 0xE900000000000022);
  MEMORY[0x24C1A0580](*(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName), *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName + 8));
  MEMORY[0x24C1A0580](0x70756F7267202C22, 0xEA0000000000203ALL);
  v2 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x6D6574737973;
      goto LABEL_10;
    }

    if (v2 == 3)
    {
      v3 = 0xE300000000000000;
      v4 = 7958113;
      goto LABEL_10;
    }

LABEL_17:
    result = sub_247365E64();
    __break(1u);
    return result;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0xE400000000000000;
      v4 = 1919251317;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v3 = 0xE400000000000000;
  v4 = 1701736302;
LABEL_10:
  MEMORY[0x24C1A0580](v4, v3);

  MEMORY[0x24C1A0580](0x3A726F6C6F63202CLL, 0xE900000000000020);
  v5 = sub_247365E44();
  MEMORY[0x24C1A0580](v5);

  MEMORY[0x24C1A0580](0x656C65537369202CLL, 0xEE00203A64657463);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C1A0580](v6, v7);

  MEMORY[0x24C1A0580](41, 0xE100000000000000);
  return 0;
}

void sub_24734CF08(void *a1)
{
  v3 = sub_247365C44();
  v4 = sub_247365C44();
  [a1 encodeObject:v3 forKey:v4];

  v5 = sub_247365C44();
  v6 = sub_247365C44();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup);
  v8 = sub_247365C44();
  [a1 encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_identifyingColor);
  v10 = sub_247365C44();
  [a1 encodeInteger:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected);
  v12 = sub_247365C44();
  [a1 encodeBool:v11 forKey:v12];
}

id CRXCEnrollmentBriefRecord.init(coder:)(void *a1)
{
  v2 = sub_247365C44();
  [a1 decodeIntegerForKey_];

  v3 = sub_247365C44();
  [a1 decodeBoolForKey_];

  sub_24734D494();
  v4 = sub_247365D84();
  if (v4)
  {
    v7 = 0;
    v5 = v4;
    sub_247365C54();
  }

  type metadata accessor for CRXCEnrollmentBriefRecord();
  swift_deallocPartialClassInstance();
  return 0;
}

id CRXCEnrollmentBriefRecord.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRXCEnrollmentBriefRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCEnrollmentBriefRecord();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24734D494()
{
  result = qword_27EE4D870;
  if (!qword_27EE4D870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE4D870);
  }

  return result;
}

id CRXCEnrollmentData.__allocating_init(accPayload:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v24 = objc_allocWithZone(v10);
  v16 = sub_247365B24();
  if (a4)
  {
    v17 = sub_247365C44();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_247365B54();
  if (!a7)
  {
    v19 = 0;
    if (a9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v19 = sub_247365C44();

  if (!a9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v20 = sub_247365C44();

LABEL_9:
  v21 = [v24 initWithAccPayload:v16 accPayloadLeft:0 accPayloadRight:0 enrollmentName:v17 issueDate:v18 calibrationDataLeft:v19 calibrationDataRight:v20];

  sub_247347880(a1, a2);
  v22 = sub_247365B94();
  (*(*(v22 - 8) + 8))(a5, v22);
  return v21;
}

id CRXCEnrollmentData.init(accPayload:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_24734F7FC(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  sub_247347880(a1, a2);
  return v11;
}

id CRXCEnrollmentData.__allocating_init(accPayloadLeft:accPayloadRight:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v28 = objc_allocWithZone(v12);
  v29 = a1;
  v30 = a2;
  v19 = sub_247365B24();
  v20 = sub_247365B24();
  if (a6)
  {
    v21 = sub_247365C44();
  }

  else
  {
    v21 = 0;
  }

  v31 = a7;
  v22 = sub_247365B54();
  if (!a9)
  {
    v23 = 0;
    if (a11)
    {
      goto LABEL_6;
    }

LABEL_8:
    v24 = 0;
    goto LABEL_9;
  }

  v23 = sub_247365C44();

  if (!a11)
  {
    goto LABEL_8;
  }

LABEL_6:
  v24 = sub_247365C44();

LABEL_9:
  v25 = [v28 initWithAccPayload:0 accPayloadLeft:v19 accPayloadRight:v20 enrollmentName:v21 issueDate:v22 calibrationDataLeft:v23 calibrationDataRight:v24];

  sub_247347880(a3, a4);
  sub_247347880(v29, v30);
  v26 = sub_247365B94();
  (*(*(v26 - 8) + 8))(v31, v26);
  return v25;
}

id CRXCEnrollmentData.init(accPayloadLeft:accPayloadRight:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = sub_24734F95C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  sub_247347880(a3, a4);
  sub_247347880(a1, a2);
  return v15;
}

id CRXCEnrollmentData.__allocating_init(accPayload:accPayloadLeft:accPayloadRight:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v22 = objc_allocWithZone(v13);
  v23 = &v22[OBJC_IVAR___CRXCEnrollmentData_accPayload];
  *v23 = a1;
  *(v23 + 1) = a2;
  v24 = &v22[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft];
  *v24 = a3;
  *(v24 + 1) = a4;
  v25 = &v22[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight];
  *v25 = a5;
  *(v25 + 1) = a6;
  v26 = &v22[OBJC_IVAR___CRXCEnrollmentData_enrollmentName];
  *v26 = a7;
  *(v26 + 1) = a8;
  v27 = OBJC_IVAR___CRXCEnrollmentData_issueDate;
  v28 = sub_247365B94();
  v29 = *(v28 - 8);
  (*(v29 + 16))(&v22[v27], a9, v28);
  v30 = &v22[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft];
  *v30 = a10;
  *(v30 + 1) = a11;
  v31 = &v22[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight];
  *v31 = a12;
  *(v31 + 1) = a13;
  v34.receiver = v22;
  v34.super_class = v13;
  v32 = objc_msgSendSuper2(&v34, sel_init);
  (*(v29 + 8))(a9, v28);
  return v32;
}

id CRXCEnrollmentData.init(accPayload:accPayloadLeft:accPayloadRight:enrollmentName:issueDate:calibrationDataLeft:calibrationDataRight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = &v13[OBJC_IVAR___CRXCEnrollmentData_accPayload];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight];
  *v16 = a5;
  *(v16 + 1) = a6;
  v17 = &v13[OBJC_IVAR___CRXCEnrollmentData_enrollmentName];
  *v17 = a7;
  *(v17 + 1) = a8;
  v18 = OBJC_IVAR___CRXCEnrollmentData_issueDate;
  v19 = sub_247365B94();
  v20 = *(v19 - 8);
  (*(v20 + 16))(&v13[v18], a9, v19);
  v21 = &v13[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft];
  *v21 = a10;
  *(v21 + 1) = a11;
  v22 = &v13[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight];
  *v22 = a12;
  *(v22 + 1) = a13;
  v25.receiver = v13;
  v25.super_class = type metadata accessor for CRXCEnrollmentData(0);
  v23 = objc_msgSendSuper2(&v25, sel_init);
  (*(v20 + 8))(a9, v19);
  return v23;
}

uint64_t sub_24734E274(uint64_t a1)
{
  sub_247346F80(a1, v17);
  if (!v18)
  {
    sub_247347038(v17);
    goto LABEL_40;
  }

  type metadata accessor for CRXCEnrollmentData(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    LOBYTE(v14) = 0;
    return v14 & 1;
  }

  v3 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayload);
  v2 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayload + 8);
  v5 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload];
  v4 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload + 8];
  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 != 15)
    {
      goto LABEL_18;
    }

    sub_24734FB20(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload + 8]);
    sub_24734FB20(v3, v2);
    sub_24734FB34(v3, v2);
  }

  else
  {
    if (v4 >> 60 == 15)
    {
      goto LABEL_18;
    }

    sub_24734FB20(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayload + 8]);
    sub_24734FB20(v5, v4);
    sub_24734FB20(v3, v2);
    v6 = sub_247347B28(v3, v2, v5, v4);
    sub_24734FB34(v5, v4);
    sub_24734FB34(v5, v4);
    sub_24734FB34(v3, v2);
    if (!v6)
    {
      goto LABEL_39;
    }
  }

  v3 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
  v2 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8);
  v5 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft];
  v4 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8];
  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 != 15)
    {
      goto LABEL_18;
    }

    sub_24734FB20(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8]);
    sub_24734FB20(v3, v2);
    sub_24734FB34(v3, v2);
  }

  else
  {
    if (v4 >> 60 == 15)
    {
      goto LABEL_18;
    }

    sub_24734FB20(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8]);
    sub_24734FB20(v5, v4);
    sub_24734FB20(v3, v2);
    v7 = sub_247347B28(v3, v2, v5, v4);
    sub_24734FB34(v5, v4);
    sub_24734FB34(v5, v4);
    sub_24734FB34(v3, v2);
    if (!v7)
    {
      goto LABEL_39;
    }
  }

  v3 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
  v2 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8);
  v5 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight];
  v4 = *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8];
  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      sub_24734FB20(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8]);
      sub_24734FB20(v3, v2);
      sub_24734FB34(v3, v2);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v4 >> 60 == 15)
  {
LABEL_18:
    sub_24734FB20(v5, v4);
    sub_24734FB20(v3, v2);

    sub_24734FB34(v3, v2);
    sub_24734FB34(v5, v4);
    goto LABEL_40;
  }

  sub_24734FB20(*&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight], *&v16[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8]);
  sub_24734FB20(v5, v4);
  sub_24734FB20(v3, v2);
  v8 = sub_247347B28(v3, v2, v5, v4);
  sub_24734FB34(v5, v4);
  sub_24734FB34(v5, v4);
  sub_24734FB34(v3, v2);
  if (!v8)
  {
    goto LABEL_39;
  }

LABEL_20:
  v9 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName + 8);
  v10 = *&v16[OBJC_IVAR___CRXCEnrollmentData_enrollmentName + 8];
  if (v9)
  {
    if (!v10 || (*(v1 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName) != *&v16[OBJC_IVAR___CRXCEnrollmentData_enrollmentName] || v9 != v10) && (sub_247365E54() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v10)
  {
    goto LABEL_39;
  }

  if ((sub_247365B64() & 1) == 0)
  {
    goto LABEL_39;
  }

  v11 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft + 8);
  v12 = *&v16[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft + 8];
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_33;
    }

LABEL_39:

    goto LABEL_40;
  }

  if (!v12 || (*(v1 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft) != *&v16[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft] || v11 != v12) && (sub_247365E54() & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v13 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight + 8);
  v14 = *&v16[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight + 8];
  if (!v13)
  {

    if (!v14)
    {
      LOBYTE(v14) = 1;
      return v14 & 1;
    }

    goto LABEL_40;
  }

  if (!v14)
  {
LABEL_45:

    return v14 & 1;
  }

  if (*(v1 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight) != *&v16[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight] || v13 != v14)
  {
    LOBYTE(v14) = sub_247365E54();
    goto LABEL_45;
  }

  LOBYTE(v14) = 1;
  return v14 & 1;
}

unint64_t sub_24734E79C()
{
  v1 = 0xD000000000000010;
  v2 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayload + 8);
  if (v2 >> 60 != 15)
  {
    v5 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayload);
    sub_24734782C(v5, v2);
    sub_247365DD4();

    v23 = 0xD000000000000014;
    sub_24734A8D4(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D788, &qword_247369B08);
    sub_24734FB48();
    v6 = sub_247365C04();
    v8 = v7;

    MEMORY[0x24C1A0580](v6, v8);

    MEMORY[0x24C1A0580](0x203A656D616E202CLL, 0xE900000000000022);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D8A8, &unk_247369C00);
    v9 = sub_247365C94();
    MEMORY[0x24C1A0580](v9);

    MEMORY[0x24C1A0580](10530, 0xE200000000000000);
    v10 = v5;
LABEL_6:
    sub_24734FB34(v10, v2);
    return v23;
  }

  v2 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8);
  if (v2 >> 60 != 15)
  {
    v3 = (v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
    v4 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8);
    if (v4 >> 60 != 15)
    {
      v12 = *(v0 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
      v13 = *v3;
      v21 = *v3;
      v22 = v12;
      sub_24734FB20(v12, v2);
      sub_24734FB20(v13, v4);
      sub_247365DD4();

      v23 = 0xD000000000000015;
      sub_24734A8D4(v12, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D788, &qword_247369B08);
      sub_24734FB48();
      v14 = sub_247365C04();
      v16 = v15;

      MEMORY[0x24C1A0580](v14, v16);

      MEMORY[0x24C1A0580](0x203A52636361202CLL, 0xE800000000000000);
      sub_24734A8D4(v21, v4);
      v17 = sub_247365C04();
      v19 = v18;

      MEMORY[0x24C1A0580](v17, v19);

      MEMORY[0x24C1A0580](0x203A656D616E202CLL, 0xE900000000000022);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D8A8, &unk_247369C00);
      v20 = sub_247365C94();
      MEMORY[0x24C1A0580](v20);

      MEMORY[0x24C1A0580](10530, 0xE200000000000000);
      sub_24734FB34(v21, v4);
      v10 = v22;
      goto LABEL_6;
    }
  }

  return v1;
}

void sub_24734EB78(void *a1)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR___CRXCEnrollmentData_accPayload);
  v5 = *(v1 + OBJC_IVAR___CRXCEnrollmentData_accPayload + 8);
  if (v5 >> 60 != 15)
  {
    v6 = *v4;
    sub_24734782C(*v4, v5);
    v7 = sub_247365B24();
    v8 = sub_247365C44();
    [a1 encodeObject:v7 forKey:v8];

    sub_24734FB34(v6, v5);
  }

  v9 = (v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft);
  v10 = *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8);
  if (v10 >> 60 != 15)
  {
    v11 = *v9;
    sub_24734782C(*v9, *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft + 8));
    v12 = sub_247365B24();
    v13 = sub_247365C44();
    [a1 encodeObject:v12 forKey:v13];

    sub_24734FB34(v11, v10);
  }

  v14 = (v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight);
  v15 = *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8);
  if (v15 >> 60 != 15)
  {
    v16 = *v14;
    sub_24734782C(*v14, *(v2 + OBJC_IVAR___CRXCEnrollmentData_accPayloadRight + 8));
    v17 = sub_247365B24();
    v18 = sub_247365C44();
    [a1 encodeObject:v17 forKey:v18];

    sub_24734FB34(v16, v15);
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentData_enrollmentName + 8))
  {
    v19 = sub_247365C44();
    v20 = sub_247365C44();
    [a1 encodeObject:v19 forKey:v20];
  }

  v21 = sub_247365B54();
  v22 = sub_247365C44();
  [a1 encodeObject:v21 forKey:v22];

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft + 8))
  {
    v23 = sub_247365C44();
    v24 = sub_247365C44();
    [a1 encodeObject:v23 forKey:v24];
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight + 8))
  {
    v25 = sub_247365C44();
    v26 = sub_247365C44();
    [a1 encodeObject:v25 forKey:v26];
  }
}

id CRXCEnrollmentData.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE4D8B0, &qword_247369DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v61 - v5;
  v7 = sub_247365B94();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v61 - v12;
  sub_247347C90(0, &unk_27EE4DA00, 0x277CBEAA8);
  v14 = sub_247365D84();
  if (!v14 || (v15 = v14, (*(v8 + 56))(v6, 1, 1, v7), sub_24734FBAC(), sub_247365E34(), v15, (*(v8 + 48))(v6, 1, v7) == 1))
  {

    type metadata accessor for CRXCEnrollmentData(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = *(v8 + 32);
  v17(v11, v6, v7);
  v17(v13, v11, v7);
  (*(v8 + 16))(&v1[OBJC_IVAR___CRXCEnrollmentData_issueDate], v13, v7);
  v18 = sub_247365C44();
  v19 = [a1 containsValueForKey_];

  if (v19 && (sub_247347C90(0, &qword_27EE4D8D0, 0x277CBEA90), (v20 = sub_247365D84()) != 0) && (v61 = xmmword_247369590, v21 = v20, sub_247365B34(), v21, v22 = *(&v61 + 1), *(&v61 + 1) >> 60 != 15))
  {
    v23 = v61;
  }

  else
  {
    v23 = 0;
    v22 = 0xF000000000000000;
  }

  v24 = &v2[OBJC_IVAR___CRXCEnrollmentData_accPayload];
  *v24 = v23;
  *(v24 + 1) = v22;
  v25 = sub_247365C44();
  v26 = [a1 containsValueForKey_];

  if (v26 && (sub_247347C90(0, &qword_27EE4D8D0, 0x277CBEA90), (v27 = sub_247365D84()) != 0) && (v61 = xmmword_247369590, v28 = v27, sub_247365B34(), v28, v29 = *(&v61 + 1), *(&v61 + 1) >> 60 != 15))
  {
    v30 = v61;
  }

  else
  {
    v30 = 0;
    v29 = 0xF000000000000000;
  }

  v31 = &v2[OBJC_IVAR___CRXCEnrollmentData_accPayloadLeft];
  *v31 = v30;
  *(v31 + 1) = v29;
  v32 = sub_247365C44();
  v33 = [a1 containsValueForKey_];

  if (v33 && (sub_247347C90(0, &qword_27EE4D8D0, 0x277CBEA90), (v34 = sub_247365D84()) != 0) && (v61 = xmmword_247369590, v35 = v34, sub_247365B34(), v35, v36 = *(&v61 + 1), *(&v61 + 1) >> 60 != 15))
  {
    v37 = v61;
  }

  else
  {
    v37 = 0;
    v36 = 0xF000000000000000;
  }

  v38 = &v2[OBJC_IVAR___CRXCEnrollmentData_accPayloadRight];
  *v38 = v37;
  *(v38 + 1) = v36;
  v39 = sub_247365C44();
  v40 = [a1 containsValueForKey_];

  if (v40 && (sub_247347C90(0, &qword_27EE4D870, 0x277CCACA8), (v41 = sub_247365D84()) != 0) && (v61 = 0uLL, v42 = v41, sub_247365C54(), v42, (v43 = *(&v61 + 1)) != 0))
  {
    v44 = &v2[OBJC_IVAR___CRXCEnrollmentData_enrollmentName];
    *v44 = v61;
    *(v44 + 1) = v43;
  }

  else
  {
    v45 = &v2[OBJC_IVAR___CRXCEnrollmentData_enrollmentName];
    *v45 = 0;
    *(v45 + 1) = 0;
  }

  v46 = sub_247365C44();
  v47 = [a1 containsValueForKey_];

  if (v47 && (sub_247347C90(0, &qword_27EE4D870, 0x277CCACA8), (v48 = sub_247365D84()) != 0) && (v61 = 0uLL, v49 = v48, sub_247365C54(), v49, (v50 = *(&v61 + 1)) != 0))
  {
    v51 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft];
    *v51 = v61;
    *(v51 + 1) = v50;
  }

  else
  {
    v52 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataLeft];
    *v52 = 0;
    *(v52 + 1) = 0;
  }

  v53 = sub_247365C44();
  v54 = [a1 containsValueForKey_];

  if (!v54)
  {
    (*(v8 + 8))(v13, v7);
LABEL_31:
    v58 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight];
    *v58 = 0;
    *(v58 + 1) = 0;
    goto LABEL_32;
  }

  sub_247347C90(0, &qword_27EE4D870, 0x277CCACA8);
  v55 = sub_247365D84();
  (*(v8 + 8))(v13, v7);
  if (!v55)
  {
    goto LABEL_31;
  }

  v61 = 0uLL;
  sub_247365C54();

  v56 = *(&v61 + 1);
  if (!*(&v61 + 1))
  {
    goto LABEL_31;
  }

  v57 = &v2[OBJC_IVAR___CRXCEnrollmentData_calibrationDataRight];
  *v57 = v61;
  *(v57 + 1) = v56;
LABEL_32:
  v59 = type metadata accessor for CRXCEnrollmentData(0);
  v62.receiver = v2;
  v62.super_class = v59;
  v60 = objc_msgSendSuper2(&v62, sel_init);

  return v60;
}

id CRXCEnrollmentData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRXCEnrollmentData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCEnrollmentData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24734F7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = sub_247365B24();
  if (a4)
  {
    v15 = sub_247365C44();
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_247365B54();
  if (!a7)
  {
    v17 = 0;
    if (a9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v17 = sub_247365C44();

  if (!a9)
  {
    goto LABEL_8;
  }

LABEL_6:
  v18 = sub_247365C44();

LABEL_9:
  v19 = [v10 initWithAccPayload:v14 accPayloadLeft:0 accPayloadRight:0 enrollmentName:v15 issueDate:v16 calibrationDataLeft:v17 calibrationDataRight:v18];

  v20 = sub_247365B94();
  (*(*(v20 - 8) + 8))(a5, v20);
  return v19;
}

id sub_24734F95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v15 = sub_247365B24();
  v16 = sub_247365B24();
  if (a6)
  {
    v17 = sub_247365C44();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_247365B54();
  if (!a9)
  {
    v19 = 0;
    if (a11)
    {
      goto LABEL_6;
    }

LABEL_8:
    v20 = 0;
    goto LABEL_9;
  }

  v19 = sub_247365C44();

  if (!a11)
  {
    goto LABEL_8;
  }

LABEL_6:
  v20 = sub_247365C44();

LABEL_9:
  v21 = [v12 initWithAccPayload:0 accPayloadLeft:v15 accPayloadRight:v16 enrollmentName:v17 issueDate:v18 calibrationDataLeft:v19 calibrationDataRight:v20];

  v22 = sub_247365B94();
  (*(*(v22 - 8) + 8))(a7, v22);
  return v21;
}

uint64_t type metadata accessor for CRXCEnrollmentData(uint64_t a1)
{
  result = qword_28150D070;
  if (!qword_28150D070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24734FB20(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_24734782C(a1, a2);
  }
}

void sub_24734FB34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_247347880(a1, a2);
  }
}

unint64_t sub_24734FB48()
{
  result = qword_27EE4D8A0;
  if (!qword_27EE4D8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE4D788, &qword_247369B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D8A0);
  }

  return result;
}

unint64_t sub_24734FBAC()
{
  result = qword_27EE4D8C0;
  if (!qword_27EE4D8C0)
  {
    sub_247365B94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D8C0);
  }

  return result;
}

uint64_t sub_24734FC0C(uint64_t a1)
{
  result = sub_247365B94();
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

uint64_t CRXCEnrollmentGroup.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6D6574737973;
    }

    if (a1 == 3)
    {
      return 7958113;
    }
  }

  else
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1)
    {
      return 1919251317;
    }
  }

  result = sub_247365E64();
  __break(1u);
  return result;
}

uint64_t sub_24734FE14(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 1701736302;
    }

    if (v2 == 1)
    {
      return 1919251317;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    return 0x6D6574737973;
  }

  if (v2 != 3)
  {
LABEL_11:
    result = sub_247365E64();
    __break(1u);
    return result;
  }

  return 7958113;
}

unint64_t sub_24734FEB8()
{
  result = qword_27EE4D8D8;
  if (!qword_27EE4D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D8D8);
  }

  return result;
}

uint64_t sub_24734FF1C(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 > 4)
    {
      if (a1 == 5)
      {
        return 0x7365742D74696E75;
      }

      if (a1 == 6)
      {
        return 0x79732D64756F6C63;
      }

      goto LABEL_18;
    }

    if (a1 == 3)
    {
      return 0x6E6961686379654BLL;
    }

    else
    {
      return 1819242356;
    }
  }

  else
  {
    if (a1 <= 0)
    {
      if (a1 == -1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (!a1)
      {
        return 0x6E6163732D636361;
      }

LABEL_18:
      result = sub_247365E64();
      __break(1u);
      return result;
    }

    if (a1 == 1)
    {
      return 0x6174536B63697551;
    }

    else
    {
      return 0x694B68746C616548;
    }
  }
}

uint64_t CRXCEnrollmentRecord.accPayload.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload);
  sub_24734FB20(v1, *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8));
  return v1;
}

uint64_t CRXCEnrollmentRecord.accPayloadLeft.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft);
  sub_24734FB20(v1, *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
  return v1;
}

id sub_247350180(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v6 = *v3;
    sub_24734782C(*v3, *(v3 + 8));
    v7 = sub_247365B24();
    sub_24734FB34(v6, v4);
    v5 = v7;
  }

  return v5;
}

uint64_t CRXCEnrollmentRecord.accPayloadRight.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight);
  sub_24734FB20(v1, *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
  return v1;
}

id sub_247350268(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_247365B94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1 + *a3, v5);
  v9 = sub_247365B54();
  (*(v6 + 8))(v8, v5);

  return v9;
}

uint64_t sub_247350380@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_247365B94();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t CRXCEnrollmentRecord.factoryCalibrationDataLeft.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft);

  return v1;
}

uint64_t CRXCEnrollmentRecord.factoryCalibrationDataRight.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight);

  return v1;
}

uint64_t CRXCEnrollmentRecord.serialNumber.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);

  return v1;
}

id sub_247350684(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_247365C44();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t CRXCEnrollmentRecord.userID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID);

  return v1;
}

void *CRXCEnrollmentRecord.prescriptionOD.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD);
  v2 = v1;
  return v1;
}

void *CRXCEnrollmentRecord.prescriptionOS.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS);
  v2 = v1;
  return v1;
}

void *CRXCEnrollmentRecord.sphericalDiopterRange.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange);
  v2 = v1;
  return v1;
}

uint64_t sub_24735080C(uint64_t a1)
{
  v3 = sub_247365B94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v54[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE4D8B0, &qword_247369DB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE4D8F8, &unk_247369DB8);
  MEMORY[0x28223BE20](v10);
  v12 = &v54[-v11];
  sub_24735116C(a1, v60, &qword_27EE4D600, &qword_2473695A0);
  if (!v61)
  {
    v19 = &qword_27EE4D600;
    v20 = &qword_2473695A0;
    v21 = v60;
LABEL_8:
    sub_247351220(v21, v19, v20);
    goto LABEL_48;
  }

  v13 = type metadata accessor for CRXCEnrollmentRecord(0);
  if (swift_dynamicCast())
  {
    v14 = v59;
    v58.receiver = v1;
    v58.super_class = v13;
    if (!objc_msgSendSuper2(&v58, sel_isEqual_, v59))
    {
      goto LABEL_47;
    }

    v56 = v4;
    v57 = v14;
    v16 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayload];
    v15 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8];
    v17 = *&v14[OBJC_IVAR___CRXCEnrollmentRecord_accPayload];
    v18 = *&v14[OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8];
    if (v15 >> 60 == 15)
    {
      if (v18 >> 60 != 15)
      {
        goto LABEL_20;
      }

      sub_24734FB20(v17, v18);
      sub_24734FB20(v16, v15);
      sub_24734FB34(v16, v15);
    }

    else
    {
      if (v18 >> 60 == 15)
      {
        goto LABEL_20;
      }

      sub_24734FB20(v17, v18);
      sub_24734FB20(v17, v18);
      sub_24734FB20(v16, v15);
      v55 = sub_247347B28(v16, v15, v17, v18);
      sub_24734FB34(v17, v18);
      sub_24734FB34(v17, v18);
      sub_24734FB34(v16, v15);
      if (!v55)
      {
        goto LABEL_79;
      }
    }

    v16 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft];
    v15 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8];
    v17 = *&v57[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft];
    v18 = *&v57[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8];
    if (v15 >> 60 == 15)
    {
      if (v18 >> 60 != 15)
      {
        goto LABEL_20;
      }

      sub_24734FB20(v17, v18);
      sub_24734FB20(v16, v15);
      sub_24734FB34(v16, v15);
    }

    else
    {
      if (v18 >> 60 == 15)
      {
        goto LABEL_20;
      }

      sub_24734FB20(v17, v18);
      sub_24734FB20(v17, v18);
      sub_24734FB20(v16, v15);
      v55 = sub_247347B28(v16, v15, v17, v18);
      sub_24734FB34(v17, v18);
      sub_24734FB34(v17, v18);
      sub_24734FB34(v16, v15);
      if (!v55)
      {
        goto LABEL_79;
      }
    }

    v16 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight];
    v15 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8];
    v17 = *&v57[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight];
    v18 = *&v57[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8];
    if (v15 >> 60 == 15)
    {
      if (v18 >> 60 == 15)
      {
        sub_24734FB20(v17, v18);
        sub_24734FB20(v16, v15);
        sub_24734FB34(v16, v15);
LABEL_22:
        v14 = v57;
        if ((sub_247365B64() & 1) == 0 || (sub_247365B64() & 1) == 0)
        {
          goto LABEL_47;
        }

        v22 = OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate;
        v23 = *(v10 + 48);
        sub_24735116C(&v1[OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate], v12, &unk_27EE4D8B0, &qword_247369DB0);
        sub_24735116C(&v14[v22], &v12[v23], &unk_27EE4D8B0, &qword_247369DB0);
        v24 = v56;
        v25 = *(v56 + 48);
        if (v25(v12, 1, v3) == 1)
        {
          if (v25(&v12[v23], 1, v3) == 1)
          {
            sub_247351220(v12, &unk_27EE4D8B0, &qword_247369DB0);
LABEL_32:
            v28 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8];
            v29 = *&v14[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8];
            if (v28)
            {
              if (!v29 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft] != *&v14[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft] || v28 != v29) && (sub_247365E54() & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            else if (v29)
            {
              goto LABEL_47;
            }

            v30 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8];
            v31 = *&v14[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8];
            if (v30)
            {
              if (!v31 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight] != *&v14[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight] || v30 != v31) && (sub_247365E54() & 1) == 0)
              {
                goto LABEL_47;
              }

              goto LABEL_46;
            }

            if (!v31)
            {
LABEL_46:
              if (v1[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated] != v14[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated])
              {
                goto LABEL_47;
              }

              v34 = v1;
              v35 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8];
              v36 = *&v14[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8];
              if (v35)
              {
                if (!v36 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber] != *&v14[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber] || v35 != v36) && (sub_247365E54() & 1) == 0)
                {
                  goto LABEL_79;
                }
              }

              else if (v36)
              {
                goto LABEL_79;
              }

              if (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_lensType] == *&v57[OBJC_IVAR___CRXCEnrollmentRecord_lensType])
              {
                v37 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_userID + 8];
                v38 = *&v57[OBJC_IVAR___CRXCEnrollmentRecord_userID + 8];
                if (v37)
                {
                  if (!v38 || (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_userID] != *&v57[OBJC_IVAR___CRXCEnrollmentRecord_userID] || v37 != v38) && (sub_247365E54() & 1) == 0)
                  {
                    goto LABEL_79;
                  }
                }

                else if (v38)
                {
                  goto LABEL_79;
                }

                if (*&v1[OBJC_IVAR___CRXCEnrollmentRecord_source] == *&v57[OBJC_IVAR___CRXCEnrollmentRecord_source])
                {
                  v39 = *&v1[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD];
                  v40 = *&v57[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD];
                  if (v39)
                  {
                    if (!v40)
                    {
                      goto LABEL_79;
                    }

                    type metadata accessor for CRXCPrescriptionValues();
                    v41 = v40;
                    v42 = v39;
                    v43 = sub_247365D94();

                    if ((v43 & 1) == 0)
                    {
                      goto LABEL_79;
                    }
                  }

                  else if (v40)
                  {
                    goto LABEL_79;
                  }

                  v44 = *&v34[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS];
                  v45 = *&v57[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS];
                  if (v44)
                  {
                    if (!v45)
                    {
                      goto LABEL_79;
                    }

                    type metadata accessor for CRXCPrescriptionValues();
                    v46 = v45;
                    v47 = v44;
                    v48 = sub_247365D94();

                    if ((v48 & 1) == 0)
                    {
                      goto LABEL_79;
                    }

LABEL_76:
                    v49 = *&v34[OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange];
                    v50 = *&v57[OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange];
                    if (!v49)
                    {
                      v53 = v50;

                      if (!v50)
                      {
                        v32 = 1;
                        return v32 & 1;
                      }

                      goto LABEL_48;
                    }

                    if (v50)
                    {
                      type metadata accessor for CRXCDiopterRange();
                      v51 = v50;
                      v52 = v49;
                      v32 = sub_247365D94();

                      return v32 & 1;
                    }

                    goto LABEL_79;
                  }

                  if (!v45)
                  {
                    goto LABEL_76;
                  }
                }
              }

LABEL_79:

              goto LABEL_48;
            }

LABEL_47:

            goto LABEL_48;
          }
        }

        else
        {
          sub_24735116C(v12, v9, &unk_27EE4D8B0, &qword_247369DB0);
          if (v25(&v12[v23], 1, v3) != 1)
          {
            (*(v24 + 32))(v6, &v12[v23], v3);
            sub_24735374C(&qword_27EE4D900, MEMORY[0x277CC9598]);
            v26 = sub_247365C14();
            v27 = *(v24 + 8);
            v27(v6, v3);
            v27(v9, v3);
            sub_247351220(v12, &unk_27EE4D8B0, &qword_247369DB0);
            if ((v26 & 1) == 0)
            {
              goto LABEL_47;
            }

            goto LABEL_32;
          }

          (*(v24 + 8))(v9, v3);
        }

        v19 = &qword_27EE4D8F8;
        v20 = &unk_247369DB8;
        v21 = v12;
        goto LABEL_8;
      }
    }

    else if (v18 >> 60 != 15)
    {
      sub_24734FB20(v17, v18);
      sub_24734FB20(v17, v18);
      sub_24734FB20(v16, v15);
      v55 = sub_247347B28(v16, v15, v17, v18);
      sub_24734FB34(v17, v18);
      sub_24734FB34(v17, v18);
      sub_24734FB34(v16, v15);
      if (!v55)
      {
        goto LABEL_79;
      }

      goto LABEL_22;
    }

LABEL_20:
    sub_24734FB20(v17, v18);
    sub_24734FB20(v16, v15);

    sub_24734FB34(v16, v15);
    sub_24734FB34(v17, v18);
  }

LABEL_48:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_24735116C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for CRXCEnrollmentRecord(uint64_t a1)
{
  result = qword_28150D060;
  if (!qword_28150D060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_247351220(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_247351370()
{
  v1 = v0;
  sub_247365DD4();
  MEMORY[0x24C1A0580](0xD000000000000017, 0x8000000247374020);
  MEMORY[0x24C1A0580](*(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid), *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid + 8));
  MEMORY[0x24C1A0580](0x203A656D616E202CLL, 0xE900000000000022);
  MEMORY[0x24C1A0580](*(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName), *(v1 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName + 8));
  MEMORY[0x24C1A0580](0x70756F7267202C22, 0xEA0000000000203ALL);
  v2 = *(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0xE600000000000000;
      v4 = 0x6D6574737973;
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_38;
      }

      v3 = 0xE300000000000000;
      v4 = 7958113;
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      goto LABEL_38;
    }

    v3 = 0xE400000000000000;
    v4 = 1919251317;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1701736302;
  }

  MEMORY[0x24C1A0580](v4, v3);

  MEMORY[0x24C1A0580](0x3A726F6C6F63202CLL, 0xE900000000000020);
  v5 = sub_247365E44();
  MEMORY[0x24C1A0580](v5);

  MEMORY[0x24C1A0580](0x656C65537369202CLL, 0xEE00203A64657463);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected))
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x24C1A0580](v6, v7);

  MEMORY[0x24C1A0580](0x446575737369202CLL, 0xED0000203A657461);
  sub_247365B94();
  sub_24735374C(&qword_27EE4D908, MEMORY[0x277CC95B8]);
  v8 = sub_247365E44();
  MEMORY[0x24C1A0580](v8);

  MEMORY[0x24C1A0580](0xD000000000000015, 0x8000000247374040);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x24C1A0580](v9, v10);

  MEMORY[0x24C1A0580](0xD000000000000011, 0x8000000247374060);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8))
  {
    v11 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);
    v12 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8);
  }

  else
  {
    v11 = 7104878;
    v12 = 0xE300000000000000;
  }

  MEMORY[0x24C1A0580](v11, v12);

  MEMORY[0x24C1A0580](0x54736E656C202C22, 0xED0000203A657079);
  v13 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_lensType);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = 0xE900000000000072;
      v15 = 0x65706F6C65766564;
      goto LABEL_34;
    }

    if (v13 == 3)
    {
      v14 = 0xE800000000000000;
      v15 = 0x6C616E6F73726570;
      goto LABEL_34;
    }

LABEL_38:
    result = sub_247365E64();
    __break(1u);
    return result;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      v14 = 0xE600000000000000;
      v15 = 0x726564616572;
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  v14 = 0xE400000000000000;
  v15 = 1869440356;
LABEL_34:
  MEMORY[0x24C1A0580](v15, v14);

  MEMORY[0x24C1A0580](0x444972657375202CLL, 0xEA0000000000203ALL);
  if (*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8))
  {
    v16 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID);
    v17 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8);
  }

  else
  {
    v16 = 7104878;
    v17 = 0xE300000000000000;
  }

  MEMORY[0x24C1A0580](v16, v17);

  MEMORY[0x24C1A0580](0x656372756F73202CLL, 0xEA0000000000203ALL);
  v18 = sub_24734FF1C(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_source));
  MEMORY[0x24C1A0580](v18);

  MEMORY[0x24C1A0580](0x203A444F202CLL, 0xE600000000000000);
  v19 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE4D910, &qword_247369DC8);
  v20 = sub_247365C94();
  MEMORY[0x24C1A0580](v20);

  MEMORY[0x24C1A0580](0x203A534F202CLL, 0xE600000000000000);
  v21 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS);
  v22 = sub_247365C94();
  MEMORY[0x24C1A0580](v22);

  MEMORY[0x24C1A0580](41, 0xE100000000000000);
  return 0;
}

id sub_247351958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE4D8B0, &qword_247369DB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v29 - v1;
  v3 = sub_247365B94();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = sub_247365BC4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247365BB4();
  v14 = sub_247365BA4();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  sub_247365B84();
  sub_247365B84();
  (*(v4 + 56))(v2, 1, 1, v3);
  v17 = objc_allocWithZone(type metadata accessor for CRXCEnrollmentRecord(0));
  *&v17[OBJC_IVAR___CRXCEnrollmentRecord_accPayload] = xmmword_247369590;
  *&v17[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft] = xmmword_247369590;
  *&v17[OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight] = xmmword_247369590;
  v18 = *(v4 + 16);
  v18(&v17[OBJC_IVAR___CRXCEnrollmentRecord_issueDate], v9, v3);
  v18(&v17[OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate], v7, v3);
  sub_24735116C(v2, &v17[OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate], &unk_27EE4D8B0, &qword_247369DB0);
  v19 = &v17[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v17[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight];
  *v20 = 0;
  v20[1] = 0;
  v17[OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated] = 0;
  v21 = &v17[OBJC_IVAR___CRXCEnrollmentRecord_serialNumber];
  *v21 = 0;
  v21[1] = 0;
  *&v17[OBJC_IVAR___CRXCEnrollmentRecord_lensType] = 0;
  v22 = &v17[OBJC_IVAR___CRXCEnrollmentRecord_userID];
  *v22 = 0;
  v22[1] = 0;
  *&v17[OBJC_IVAR___CRXCEnrollmentRecord_source] = -1;
  *&v17[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD] = 0;
  *&v17[OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS] = 0;
  *&v17[OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange] = 0;
  v23 = &v17[OBJC_IVAR___CRXCEnrollmentBriefRecord_uuid];
  *v23 = v14;
  v23[1] = v16;
  v24 = &v17[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentName];
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *&v17[OBJC_IVAR___CRXCEnrollmentBriefRecord_enrollmentGroup] = 0;
  *&v17[OBJC_IVAR___CRXCEnrollmentBriefRecord_identifyingColor] = 0;
  v17[OBJC_IVAR___CRXCEnrollmentBriefRecord_isSelected] = 0;
  v25 = type metadata accessor for CRXCEnrollmentBriefRecord();
  v29.receiver = v17;
  v29.super_class = v25;
  v26 = objc_msgSendSuper2(&v29, sel_init);
  sub_247351220(v2, &unk_27EE4D8B0, &qword_247369DB0);
  v27 = *(v4 + 8);
  v27(v7, v3);
  v27(v9, v3);
  return v26;
}

void sub_247351D5C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE4D8B0, &qword_247369DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v55 - v5;
  v7 = sub_247365B94();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v1 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload);
  v12 = *(v1 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8);
  if (v12 >> 60 != 15)
  {
    v13 = *v11;
    sub_24734782C(*v11, v12);
    v14 = sub_247365B24();
    v15 = sub_247365C44();
    [a1 encodeObject:v14 forKey:v15];

    sub_24734FB34(v13, v12);
  }

  v16 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft);
  v17 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8);
  if (v17 >> 60 != 15)
  {
    v18 = *v16;
    sub_24734782C(*v16, *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
    v19 = sub_247365B24();
    v20 = sub_247365C44();
    [a1 encodeObject:v19 forKey:v20];

    sub_24734FB34(v18, v17);
  }

  v21 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight);
  v22 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8);
  if (v22 >> 60 != 15)
  {
    v23 = *v21;
    sub_24734782C(*v21, *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
    v24 = sub_247365B24();
    v25 = sub_247365C44();
    [a1 encodeObject:v24 forKey:v25];

    sub_24734FB34(v23, v22);
  }

  v26 = sub_247365B54();
  v27 = sub_247365C44();
  [a1 encodeObject:v26 forKey:v27];

  v28 = sub_247365B54();
  v29 = sub_247365C44();
  [a1 encodeObject:v28 forKey:v29];

  sub_24735116C(v2 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, v6, &unk_27EE4D8B0, &qword_247369DB0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_247351220(v6, &unk_27EE4D8B0, &qword_247369DB0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v30 = sub_247365B54();
    v31 = sub_247365C44();
    [a1 encodeObject:v30 forKey:v31];

    (*(v8 + 8))(v10, v7);
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft + 8))
  {
    v32 = sub_247365C44();
    v33 = sub_247365C44();
    [a1 encodeObject:v32 forKey:v33];
  }

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight + 8))
  {
    v34 = sub_247365C44();
    v35 = sub_247365C44();
    [a1 encodeObject:v34 forKey:v35];
  }

  v36 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated);
  v37 = sub_247365C44();
  [a1 encodeBool:v36 forKey:v37];

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber + 8))
  {
    v38 = sub_247365C44();
    v39 = sub_247365C44();
    [a1 encodeObject:v38 forKey:v39];
  }

  v40 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_lensType);
  v41 = sub_247365C44();
  [a1 encodeInteger:v40 forKey:v41];

  if (*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_userID + 8))
  {
    v42 = sub_247365C44();
    v43 = sub_247365C44();
    [a1 encodeObject:v42 forKey:v43];
  }

  v44 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_source);
  v45 = sub_247365C44();
  [a1 encodeInteger:v44 forKey:v45];

  v46 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD);
  if (v46)
  {
    v47 = v46;
    v48 = sub_247365C44();
    [a1 encodeObject:v47 forKey:v48];
  }

  v49 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS);
  if (v49)
  {
    v50 = v49;
    v51 = sub_247365C44();
    [a1 encodeObject:v50 forKey:v51];
  }

  v52 = *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange);
  if (v52)
  {
    v53 = v52;
    v54 = sub_247365C44();
    [a1 encodeObject:v53 forKey:v54];
  }

  sub_24734CF08(a1);
}

id CRXCEnrollmentRecord.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE4D8B0, &qword_247369DB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v135 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v138 = (&v129 - v8);
  MEMORY[0x28223BE20](v7);
  v10 = &v129 - v9;
  v11 = sub_247365B94();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v133 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v134 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v136 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v137 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v129 - v22;
  MEMORY[0x28223BE20](v21);
  v139 = &v129 - v24;
  v25 = sub_247365C44();
  v26 = [a1 containsValueForKey_];

  if (v26 && (sub_247347C90(0, &qword_27EE4D8D0, 0x277CBEA90), (v27 = sub_247365D84()) != 0) && (v141 = xmmword_247369590, v28 = v27, sub_247365B34(), v28, v29 = *(&v141 + 1), *(&v141 + 1) >> 60 != 15))
  {
    v30 = v141;
  }

  else
  {
    v30 = 0;
    v29 = 0xF000000000000000;
  }

  v31 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload);
  *v31 = v30;
  v31[1] = v29;
  v32 = sub_247365C44();
  v33 = [a1 containsValueForKey_];

  if (v33 && (sub_247347C90(0, &qword_27EE4D8D0, 0x277CBEA90), (v34 = sub_247365D84()) != 0) && (v141 = xmmword_247369590, v35 = v34, sub_247365B34(), v35, v36 = *(&v141 + 1), *(&v141 + 1) >> 60 != 15))
  {
    v37 = v141;
  }

  else
  {
    v37 = 0;
    v36 = 0xF000000000000000;
  }

  v38 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft);
  *v38 = v37;
  v38[1] = v36;
  v39 = sub_247365C44();
  v40 = [a1 containsValueForKey_];

  v140 = v12;
  if (v40 && (sub_247347C90(0, &qword_27EE4D8D0, 0x277CBEA90), (v41 = sub_247365D84()) != 0) && (v141 = xmmword_247369590, v42 = v41, sub_247365B34(), v42, v43 = *(&v141 + 1), *(&v141 + 1) >> 60 != 15))
  {
    v44 = v141;
  }

  else
  {
    v44 = 0;
    v43 = 0xF000000000000000;
  }

  v45 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight);
  *v45 = v44;
  v45[1] = v43;
  v46 = sub_247365C44();
  v47 = [a1 containsValueForKey_];

  if (v47 && (sub_247347C90(0, &unk_27EE4DA00, 0x277CBEAA8), (v48 = sub_247365D84()) != 0) && (v49 = v48, v50 = v140, v51 = *(v140 + 56), (v51)(v10, 1, 1, v11), sub_24735374C(&qword_27EE4D8C0, MEMORY[0x277CC95B0]), sub_247365E34(), v49, (*(v50 + 48))(v10, 1, v11) != 1))
  {
    v105 = v11;
    v106 = *(v140 + 32);
    v106(v23, v10, v105);
    v107 = v139;
    v106(v139, v23, v105);
    v108 = OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate;
    v106((v2 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate), v107, v105);
    v11 = v105;
    (v51)(v2 + v108, 0, 1, v105);
    v52 = v140;
    v53 = v51;
  }

  else
  {
    v52 = v140;
    v53 = *(v140 + 56);
    v53(v2 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, 1, 1, v11);
  }

  v54 = sub_247365C44();
  v55 = [a1 containsValueForKey_];

  if (v55 && (sub_247347C90(0, &qword_27EE4D870, 0x277CCACA8), (v56 = sub_247365D84()) != 0) && (v141 = 0uLL, v57 = v56, sub_247365C54(), v57, (v58 = *(&v141 + 1)) != 0))
  {
    v59 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft);
    *v59 = v141;
    v59[1] = v58;
  }

  else
  {
    v60 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataLeft);
    *v60 = 0;
    v60[1] = 0;
  }

  v61 = sub_247365C44();
  v62 = [a1 containsValueForKey_];

  if (v62 && (sub_247347C90(0, &qword_27EE4D870, 0x277CCACA8), (v63 = sub_247365D84()) != 0) && (v141 = 0uLL, v64 = v63, sub_247365C54(), v64, (v65 = *(&v141 + 1)) != 0))
  {
    v66 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight);
    *v66 = v141;
    v66[1] = v65;
  }

  else
  {
    v67 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrationDataRight);
    *v67 = 0;
    v67[1] = 0;
  }

  v68 = sub_247365C44();
  v69 = [a1 containsValueForKey_];

  if (v69 && (sub_247347C90(0, &qword_27EE4D870, 0x277CCACA8), (v70 = sub_247365D84()) != 0) && (v141 = 0uLL, v71 = v70, sub_247365C54(), v71, (v72 = *(&v141 + 1)) != 0))
  {
    v73 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);
    *v73 = v141;
    v73[1] = v72;
  }

  else
  {
    v74 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_serialNumber);
    *v74 = 0;
    v74[1] = 0;
  }

  v75 = sub_247365C44();
  v76 = [a1 containsValueForKey_];

  if (v76 && (sub_247347C90(0, &qword_27EE4D870, 0x277CCACA8), (v77 = sub_247365D84()) != 0) && (v141 = 0uLL, v78 = v77, sub_247365C54(), v78, (v79 = *(&v141 + 1)) != 0))
  {
    v80 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_userID);
    *v80 = v141;
    v80[1] = v79;
  }

  else
  {
    v81 = (v2 + OBJC_IVAR___CRXCEnrollmentRecord_userID);
    *v81 = 0;
    v81[1] = 0;
  }

  v82 = sub_247365C44();
  v83 = [a1 containsValueForKey_];

  if (!v83 || (type metadata accessor for CRXCPrescriptionValues(), (v84 = sub_247365D84()) == 0))
  {
    v84 = 0;
  }

  *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOD) = v84;
  v85 = sub_247365C44();
  v86 = [a1 containsValueForKey_];

  if (!v86 || (type metadata accessor for CRXCPrescriptionValues(), (v87 = sub_247365D84()) == 0))
  {
    v87 = 0;
  }

  v139 = v53;
  *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_prescriptionOS) = v87;
  v88 = sub_247365C44();
  v89 = [a1 containsValueForKey_];

  if (!v89 || (type metadata accessor for CRXCDiopterRange(), (v90 = sub_247365D84()) == 0))
  {
    v90 = 0;
  }

  *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange) = v90;
  v91 = sub_247365C44();
  v92 = [a1 decodeBoolForKey_];

  *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_factoryCalibrated) = v92;
  sub_247347C90(0, &unk_27EE4DA00, 0x277CBEAA8);
  v93 = sub_247365D84();
  if (v93 && (v94 = v93, v95 = v138, v132 = v52 + 7, (v139)(v138, 1, 1, v11), v96 = sub_24735374C(&qword_27EE4D8C0, MEMORY[0x277CC95B0]), sub_247365E34(), v94, v97 = v52[6], v97(v95, 1, v11) != 1))
  {
    v130 = v97;
    v131 = v96;
    v99 = v52[4];
    v100 = v136;
    v99(v136, v95, v11);
    v101 = v137;
    v138 = v99;
    v99(v137, v100, v11);
    v102 = sub_247365D84();
    if (v102)
    {
      v103 = v102;
      v104 = v135;
      (v139)(v135, 1, 1, v11);
      sub_247365E34();

      if (v130(v104, 1, v11) == 1)
      {
        v52 = v140;
        (*(v140 + 8))(v137, v11);

        v98 = 0;
      }

      else
      {
        v109 = v133;
        v110 = v138;
        v138(v133, v104, v11);
        v111 = v134;
        v110(v134, v109, v11);
        v52 = v140;
        v112 = *(v140 + 16);
        v113 = v137;
        v112(v2 + OBJC_IVAR___CRXCEnrollmentRecord_issueDate, v137, v11);
        v114 = v11;
        v112(v2 + OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate, v111, v11);
        v115 = sub_247365C44();
        v116 = [a1 decodeIntegerForKey_];

        v117 = sub_247365C44();
        v118 = [a1 decodeIntegerForKey_];

        v119 = sub_247348DE0(v116);
        if ((v120 & 1) == 0)
        {
          v121 = v119;
          v122 = sub_247354E50(v118);
          if ((v123 & 1) == 0)
          {
            *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_lensType) = v121;
            *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_source) = v122;
            v127 = CRXCEnrollmentBriefRecord.init(coder:)(a1);
            v128 = v52[1];
            v128(v111, v11);
            v128(v113, v11);
            return v127;
          }
        }

        v124 = v52[1];
        v124(v111, v114);
        v124(v113, v114);
        v11 = v114;
        v98 = 1;
      }
    }

    else
    {
      (v52[1])(v101, v11);

      v98 = 0;
    }
  }

  else
  {

    v98 = 0;
  }

  sub_24734FB34(*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload), *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8));
  sub_24734FB34(*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft), *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
  sub_24734FB34(*(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight), *(v2 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
  if (v98)
  {
    v125 = v52[1];
    v125(v2 + OBJC_IVAR___CRXCEnrollmentRecord_issueDate, v11);
    v125(v2 + OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate, v11);
  }

  sub_247351220(v2 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, &unk_27EE4D8B0, &qword_247369DB0);

  type metadata accessor for CRXCEnrollmentRecord(0);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_247353428()
{
  sub_24734FB34(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload), *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayload + 8));
  sub_24734FB34(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft), *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadLeft + 8));
  sub_24734FB34(*(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight), *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_accPayloadRight + 8));
  v1 = OBJC_IVAR___CRXCEnrollmentRecord_issueDate;
  v2 = sub_247365B94();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR___CRXCEnrollmentRecord_enrollmentDate, v2);
  sub_247351220(v0 + OBJC_IVAR___CRXCEnrollmentRecord_modifiedDate, &unk_27EE4D8B0, &qword_247369DB0);

  v4 = *(v0 + OBJC_IVAR___CRXCEnrollmentRecord_sphericalDiopterRange);
}

id CRXCEnrollmentRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCEnrollmentRecord(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24735374C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_247365B94();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_247353798(uint64_t a1)
{
  sub_247365B94();
  if (v1 <= 0x3F)
  {
    sub_2473538D4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2473538D4(uint64_t a1)
{
  if (!qword_28150D080)
  {
    sub_247365B94();
    v1 = sub_247365DA4();
    if (!v2)
    {
      atomic_store(v1, &qword_28150D080);
    }
  }
}

uint64_t CRXCSystemStatus.hardwareModel.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCSystemStatus_hardwareModel);

  return v1;
}

uint64_t CRXCSystemStatus.currentLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCSystemStatus_currentLocation);

  return v1;
}

uint64_t CRXCSystemStatus.selectedEnrollmentUUID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID);

  return v1;
}

uint64_t CRXCSystemStatus.prismActivationLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation);

  return v1;
}

BOOL sub_247353B60(uint64_t a1)
{
  sub_247346F80(a1, v13);
  if (v14)
  {
    type metadata accessor for CRXCSystemStatus();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation + 8);
      v3 = *&v12[OBJC_IVAR___CRXCSystemStatus_prismActivationLocation + 8];
      if (v2)
      {
        if (!v3)
        {
          goto LABEL_35;
        }

        v4 = *(v1 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation) == *&v12[OBJC_IVAR___CRXCSystemStatus_prismActivationLocation] && v2 == v3;
        if (!v4 && (sub_247365E54() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v3)
      {
        goto LABEL_35;
      }

      if (*(v1 + OBJC_IVAR___CRXCSystemStatus_healthLastPullTime) != *&v12[OBJC_IVAR___CRXCSystemStatus_healthLastPullTime] || *(v1 + OBJC_IVAR___CRXCSystemStatus_healthLastPushTime) != *&v12[OBJC_IVAR___CRXCSystemStatus_healthLastPushTime] || *(v1 + OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled) != v12[OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled] || (*(v1 + OBJC_IVAR___CRXCSystemStatus_hardwareModel) != *&v12[OBJC_IVAR___CRXCSystemStatus_hardwareModel] || *(v1 + OBJC_IVAR___CRXCSystemStatus_hardwareModel + 8) != *&v12[OBJC_IVAR___CRXCSystemStatus_hardwareModel + 8]) && (sub_247365E54() & 1) == 0 || *(v1 + OBJC_IVAR___CRXCSystemStatus_guestMode) != v12[OBJC_IVAR___CRXCSystemStatus_guestMode] || *(v1 + OBJC_IVAR___CRXCSystemStatus_dataStoreSchemaVersion) != *&v12[OBJC_IVAR___CRXCSystemStatus_dataStoreSchemaVersion])
      {
        goto LABEL_35;
      }

      v5 = *(v1 + OBJC_IVAR___CRXCSystemStatus_currentLocation + 8);
      v6 = *&v12[OBJC_IVAR___CRXCSystemStatus_currentLocation + 8];
      if (v5)
      {
        if (!v6 || (*(v1 + OBJC_IVAR___CRXCSystemStatus_currentLocation) != *&v12[OBJC_IVAR___CRXCSystemStatus_currentLocation] || v5 != v6) && (sub_247365E54() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else if (v6)
      {
        goto LABEL_35;
      }

      v7 = *(v1 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID + 8);
      v8 = *&v12[OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID + 8];
      if (v7)
      {
        if (v8 && (*(v1 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID) == *&v12[OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID] && v7 == v8 || (sub_247365E54() & 1) != 0))
        {
          goto LABEL_33;
        }
      }

      else if (!v8)
      {
LABEL_33:
        v9 = *(v1 + OBJC_IVAR___CRXCSystemStatus_lastSharingDataValidationTime);
        v10 = *&v12[OBJC_IVAR___CRXCSystemStatus_lastSharingDataValidationTime];

        return v9 == v10;
      }

LABEL_35:
    }
  }

  else
  {
    sub_247347038(v13);
  }

  return 0;
}

uint64_t sub_247353E88()
{
  v1 = 7104878;
  sub_247365DD4();
  MEMORY[0x24C1A0580](0xD000000000000014, 0x80000002473742B0);
  sub_247365D64();
  MEMORY[0x24C1A0580](0xD000000000000016, 0x80000002473742D0);
  sub_247365D64();
  MEMORY[0x24C1A0580](0xD000000000000015, 0x80000002473742F0);
  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x24C1A0580](v2, v3);

  MEMORY[0x24C1A0580](0xD000000000000011, 0x8000000247374310);
  MEMORY[0x24C1A0580](*(v0 + OBJC_IVAR___CRXCSystemStatus_hardwareModel), *(v0 + OBJC_IVAR___CRXCSystemStatus_hardwareModel + 8));
  MEMORY[0x24C1A0580](0x4D7473657567202CLL, 0xED0000203A65646FLL);
  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_guestMode))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_guestMode))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x24C1A0580](v4, v5);

  MEMORY[0x24C1A0580](0xD00000000000001ALL, 0x8000000247374330);
  v6 = sub_247365E44();
  MEMORY[0x24C1A0580](v6);

  MEMORY[0x24C1A0580](0xD000000000000013, 0x8000000247374350);
  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_currentLocation + 8))
  {
    v7 = *(v0 + OBJC_IVAR___CRXCSystemStatus_currentLocation);
    v8 = *(v0 + OBJC_IVAR___CRXCSystemStatus_currentLocation + 8);
  }

  else
  {
    v8 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x24C1A0580](v7, v8);

  MEMORY[0x24C1A0580](0xD00000000000001ALL, 0x8000000247374370);
  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID + 8))
  {
    v9 = *(v0 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID);
    v10 = *(v0 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID + 8);
  }

  else
  {
    v10 = 0xE300000000000000;
    v9 = 7104878;
  }

  MEMORY[0x24C1A0580](v9, v10);

  MEMORY[0x24C1A0580](0xD000000000000021, 0x8000000247374390);
  sub_247365D64();
  sub_247365DD4();

  if (*(v0 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation + 8))
  {
    v1 = *(v0 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation);
    v11 = *(v0 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation + 8);
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  MEMORY[0x24C1A0580](v1, v11);

  MEMORY[0x24C1A0580](0xD00000000000001BLL, 0x80000002473743C0);

  return 0;
}

void sub_247354270(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CRXCSystemStatus_healthLastPullTime);
  v4 = sub_247365C44();
  [a1 encodeDouble:v4 forKey:v3];

  v5 = *(v1 + OBJC_IVAR___CRXCSystemStatus_healthLastPushTime);
  v6 = sub_247365C44();
  [a1 encodeDouble:v6 forKey:v5];

  v7 = *(v1 + OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled);
  v8 = sub_247365C44();
  [a1 encodeBool:v7 forKey:v8];

  v9 = sub_247365C44();
  v10 = sub_247365C44();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___CRXCSystemStatus_guestMode);
  v12 = sub_247365C44();
  [a1 encodeBool:v11 forKey:v12];

  v13 = *(v1 + OBJC_IVAR___CRXCSystemStatus_dataStoreSchemaVersion);
  v14 = sub_247365C44();
  [a1 encodeInteger:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR___CRXCSystemStatus_lastSharingDataValidationTime);
  v16 = sub_247365C44();
  [a1 encodeDouble:v16 forKey:v15];

  if (*(v1 + OBJC_IVAR___CRXCSystemStatus_currentLocation + 8))
  {
    v17 = sub_247365C44();
    v18 = sub_247365C44();
    [a1 encodeObject:v17 forKey:v18];
  }

  if (*(v1 + OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID + 8))
  {
    v19 = sub_247365C44();
    v20 = sub_247365C44();
    [a1 encodeObject:v19 forKey:v20];
  }

  if (*(v1 + OBJC_IVAR___CRXCSystemStatus_prismActivationLocation + 8))
  {
    v21 = sub_247365C44();
    v22 = sub_247365C44();
    [a1 encodeObject:v21 forKey:v22];
  }
}

id CRXCSystemStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_247354824(a1);

  return v4;
}

id CRXCSystemStatus.init(coder:)(void *a1)
{
  v2 = sub_247354824(a1);

  return v2;
}

id CRXCSystemStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRXCSystemStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCSystemStatus();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_247354824(void *a1)
{
  v2 = v1;
  v4 = sub_247365C44();
  [a1 decodeDoubleForKey_];
  v6 = v5;

  *&v2[OBJC_IVAR___CRXCSystemStatus_healthLastPullTime] = v6;
  v7 = sub_247365C44();
  [a1 decodeDoubleForKey_];
  v9 = v8;

  *&v2[OBJC_IVAR___CRXCSystemStatus_healthLastPushTime] = v9;
  v10 = sub_247365C44();
  v11 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR___CRXCSystemStatus_healthSyncEnabled] = v11;
  sub_24734D494();
  result = sub_247365D84();
  if (result)
  {
    v13 = result;
    v14 = sub_247365C64();
    v16 = v15;

    v17 = &v2[OBJC_IVAR___CRXCSystemStatus_hardwareModel];
    *v17 = v14;
    v17[1] = v16;
    v18 = sub_247365C44();
    LOBYTE(v14) = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR___CRXCSystemStatus_guestMode] = v14;
    v19 = sub_247365C44();
    v20 = [a1 decodeIntegerForKey_];

    *&v2[OBJC_IVAR___CRXCSystemStatus_dataStoreSchemaVersion] = v20;
    v21 = sub_247365C44();
    [a1 decodeDoubleForKey_];
    v23 = v22;

    *&v2[OBJC_IVAR___CRXCSystemStatus_lastSharingDataValidationTime] = v23;
    v24 = sub_247365C44();
    LODWORD(v20) = [a1 containsValueForKey_];

    if (v20)
    {
      v25 = sub_247365D84();
      if (v25)
      {
        v26 = v25;
        sub_247365C54();
      }
    }

    v27 = &v2[OBJC_IVAR___CRXCSystemStatus_currentLocation];
    *v27 = 0;
    v27[1] = 0;
    v28 = sub_247365C44();
    v29 = [a1 containsValueForKey_];

    if (v29)
    {
      v30 = sub_247365D84();
      if (v30)
      {
        v31 = v30;
        sub_247365C54();
      }
    }

    v32 = &v2[OBJC_IVAR___CRXCSystemStatus_selectedEnrollmentUUID];
    *v32 = 0;
    v32[1] = 0;
    v33 = sub_247365C44();
    v34 = [a1 containsValueForKey_];

    if (v34)
    {
      v35 = sub_247365D84();
      if (v35)
      {
        v36 = v35;
        sub_247365C54();
      }
    }

    v37 = &v2[OBJC_IVAR___CRXCSystemStatus_prismActivationLocation];
    *v37 = 0;
    v37[1] = 0;
    v38.receiver = v2;
    v38.super_class = type metadata accessor for CRXCSystemStatus();
    return objc_msgSendSuper2(&v38, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CRXCEnrollmentSource.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 > 4)
    {
      if (a1 == 5)
      {
        return 0x7365742D74696E75;
      }

      if (a1 == 6)
      {
        return 0x79732D64756F6C63;
      }

      goto LABEL_18;
    }

    if (a1 == 3)
    {
      return 0x6E6961686379654BLL;
    }

    else
    {
      return 1819242356;
    }
  }

  else
  {
    if (a1 <= 0)
    {
      if (a1 == -1)
      {
        return 0x6E776F6E6B6E75;
      }

      if (!a1)
      {
        return 0x6E6163732D636361;
      }

LABEL_18:
      result = sub_247365E64();
      __break(1u);
      return result;
    }

    if (a1 == 1)
    {
      return 0x6174536B63697551;
    }

    else
    {
      return 0x694B68746C616548;
    }
  }
}

uint64_t sub_247354E14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_247354E50(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_247354E50(uint64_t result)
{
  if ((result + 1) >= 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_247354E6C()
{
  result = qword_27EE4D970;
  if (!qword_27EE4D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE4D970);
  }

  return result;
}

id CRXCEyePrescription.__allocating_init(sphere:cylinder:axis:vrAdd:)(uint64_t a1, float a2, float a3, float a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___CRXCEyePrescription_sphere];
  *&v9[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v11 = &v9[OBJC_IVAR___CRXCEyePrescription_cylinder];
  *&v9[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v12 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v9[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v13 = &v9[OBJC_IVAR___CRXCEyePrescription_vrAdd];
  *&v9[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *v10 = a2;
  swift_beginAccess();
  *v11 = a3;
  swift_beginAccess();
  *&v9[v12] = a1;
  swift_beginAccess();
  *v13 = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  return objc_msgSendSuper2(&v15, sel_init);
}

float CRXCEyePrescription.sphere.getter()
{
  v1 = v0 + OBJC_IVAR___CRXCEyePrescription_sphere;
  swift_beginAccess();
  return *v1;
}

uint64_t CRXCEyePrescription.sphere.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_sphere);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

float CRXCEyePrescription.cylinder.getter()
{
  v1 = v0 + OBJC_IVAR___CRXCEyePrescription_cylinder;
  swift_beginAccess();
  return *v1;
}

uint64_t CRXCEyePrescription.cylinder.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_cylinder);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

uint64_t CRXCEyePrescription.axis.getter()
{
  v1 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CRXCEyePrescription.axis.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCEyePrescription_axis;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float CRXCEyePrescription.vrAdd.getter()
{
  v1 = v0 + OBJC_IVAR___CRXCEyePrescription_vrAdd;
  swift_beginAccess();
  return *v1;
}

uint64_t CRXCEyePrescription.vrAdd.setter(float a1)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_vrAdd);
  result = swift_beginAccess();
  *v3 = a1;
  return result;
}

id CRXCEyePrescription.init(sphere:cylinder:axis:vrAdd:)(uint64_t a1, float a2, float a3, float a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___CRXCEyePrescription_sphere];
  *&v4[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v11 = &v4[OBJC_IVAR___CRXCEyePrescription_cylinder];
  *&v4[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v12 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v4[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v13 = &v4[OBJC_IVAR___CRXCEyePrescription_vrAdd];
  *&v4[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  swift_beginAccess();
  *v10 = a2;
  swift_beginAccess();
  *v11 = a3;
  swift_beginAccess();
  *&v4[v12] = a1;
  swift_beginAccess();
  *v13 = a4;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

BOOL CRXCEyePrescription.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_247346F80(a1, v18);
  if (v19)
  {
    if (swift_dynamicCast())
    {
      v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_sphere);
      swift_beginAccess();
      v4 = *v3;
      v5 = &v17[OBJC_IVAR___CRXCEyePrescription_sphere];
      swift_beginAccess();
      if (v4 == *v5)
      {
        v6 = (v1 + OBJC_IVAR___CRXCEyePrescription_cylinder);
        swift_beginAccess();
        v7 = *v6;
        v8 = &v17[OBJC_IVAR___CRXCEyePrescription_cylinder];
        swift_beginAccess();
        if (v7 == *v8)
        {
          v9 = OBJC_IVAR___CRXCEyePrescription_axis;
          swift_beginAccess();
          v10 = *(v1 + v9);
          v11 = OBJC_IVAR___CRXCEyePrescription_axis;
          swift_beginAccess();
          if (v10 == *&v17[v11])
          {
            v12 = (v1 + OBJC_IVAR___CRXCEyePrescription_vrAdd);
            swift_beginAccess();
            v13 = *v12;
            v14 = &v17[OBJC_IVAR___CRXCEyePrescription_vrAdd];
            swift_beginAccess();
            v15 = *v14;

            return v13 == v15;
          }
        }
      }
    }
  }

  else
  {
    sub_247347038(v18);
  }

  return 0;
}

uint64_t CRXCEyePrescription.description.getter()
{
  sub_247365DD4();
  MEMORY[0x24C1A0580](0xD000000000000018, 0x8000000247374610);
  swift_beginAccess();
  sub_247365D74();
  MEMORY[0x24C1A0580](0x646E696C7963202CLL, 0xEC000000203A7265);
  swift_beginAccess();
  sub_247365D74();
  MEMORY[0x24C1A0580](0x203A73697861202CLL, 0xE800000000000000);
  swift_beginAccess();
  v0 = sub_247365E44();
  MEMORY[0x24C1A0580](v0);

  MEMORY[0x24C1A0580](0x3A6464417276202CLL, 0xE900000000000020);
  swift_beginAccess();
  sub_247365D74();
  MEMORY[0x24C1A0580](41, 0xE100000000000000);
  return 0;
}

Swift::Void __swiftcall CRXCEyePrescription.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR___CRXCEyePrescription_sphere);
  swift_beginAccess();
  v4 = *v3;
  v5 = sub_247365C44();
  LODWORD(v6) = v4;
  [(objc_class *)with.super.isa encodeFloat:v5 forKey:v6];

  v7 = (v1 + OBJC_IVAR___CRXCEyePrescription_cylinder);
  swift_beginAccess();
  v8 = *v7;
  v9 = sub_247365C44();
  LODWORD(v10) = v8;
  [(objc_class *)with.super.isa encodeFloat:v9 forKey:v10];

  v11 = OBJC_IVAR___CRXCEyePrescription_axis;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = sub_247365C44();
    [(objc_class *)with.super.isa encodeInteger:v12 forKey:v13];

    v14 = (v1 + OBJC_IVAR___CRXCEyePrescription_vrAdd);
    swift_beginAccess();
    v15 = *v14;
    v16 = sub_247365C44();
    LODWORD(v17) = v15;
    [(objc_class *)with.super.isa encodeFloat:v16 forKey:v17];
  }
}

uint64_t CRXCEyePrescription.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_247356358(a1);
  v5 = v4;

  return v5;
}

uint64_t CRXCEyePrescription.init(coder:)(void *a1)
{
  sub_247356358(a1);
  v3 = v2;

  return v3;
}

id CRXCEyePrescription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_247355F94()
{
  v1 = OBJC_IVAR___CRXCVisionPrescription_leftEye;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_247355FEC(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCVisionPrescription_leftEye;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_2473560F0()
{
  v1 = OBJC_IVAR___CRXCVisionPrescription_rightEye;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_247356148(uint64_t a1)
{
  v3 = OBJC_IVAR___CRXCVisionPrescription_rightEye;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CRXCVisionPrescription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRXCVisionPrescription.init()()
{
  *&v0[OBJC_IVAR___CRXCVisionPrescription_leftEye] = 0;
  *&v0[OBJC_IVAR___CRXCVisionPrescription_rightEye] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCVisionPrescription();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CRXCVisionPrescription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCVisionPrescription();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_247356358(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___CRXCEyePrescription_sphere];
  *&v1[OBJC_IVAR___CRXCEyePrescription_sphere] = 0;
  v5 = &v1[OBJC_IVAR___CRXCEyePrescription_cylinder];
  *&v1[OBJC_IVAR___CRXCEyePrescription_cylinder] = 0;
  v6 = OBJC_IVAR___CRXCEyePrescription_axis;
  *&v1[OBJC_IVAR___CRXCEyePrescription_axis] = 0;
  v7 = &v1[OBJC_IVAR___CRXCEyePrescription_vrAdd];
  *&v1[OBJC_IVAR___CRXCEyePrescription_vrAdd] = 0;
  v8 = sub_247365C44();
  [a1 decodeFloatForKey_];
  v10 = v9;

  swift_beginAccess();
  *v4 = v10;
  v11 = sub_247365C44();
  [a1 decodeFloatForKey_];
  v13 = v12;

  swift_beginAccess();
  *v5 = v13;
  v14 = sub_247365C44();
  v15 = [a1 decodeIntegerForKey_];

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *&v1[v6] = v15;
    v16 = sub_247365C44();
    [a1 decodeFloatForKey_];
    v18 = v17;

    swift_beginAccess();
    *v7 = v18;
    v19.receiver = v1;
    v19.super_class = ObjectType;
    objc_msgSendSuper2(&v19, sel_init);
  }
}

uint64_t CRXCNewEnrollmentInfo.uuid.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid);

  return v1;
}

id CRXCNewEnrollmentInfo.__allocating_init(uuid:lensCalibrationStatus:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___CRXCNewEnrollmentInfo_uuid];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id CRXCNewEnrollmentInfo.init(uuid:lensCalibrationStatus:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___CRXCNewEnrollmentInfo_uuid];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for CRXCNewEnrollmentInfo();
  return objc_msgSendSuper2(&v6, sel_init);
}

BOOL sub_24735690C(uint64_t a1)
{
  sub_247346F80(a1, v7);
  if (v8)
  {
    type metadata accessor for CRXCNewEnrollmentInfo();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid) == *&v6[OBJC_IVAR___CRXCNewEnrollmentInfo_uuid] && *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8) == *&v6[OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8];
      if (v2 || (sub_247365E54() & 1) != 0)
      {
        v3 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
        v4 = *&v6[OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_247347038(v7);
  }

  return 0;
}

uint64_t sub_247356AB8()
{
  sub_247365DD4();
  MEMORY[0x24C1A0580](0xD000000000000018, 0x8000000247374760);
  MEMORY[0x24C1A0580](*(v0 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid), *(v0 + OBJC_IVAR___CRXCNewEnrollmentInfo_uuid + 8));
  MEMORY[0x24C1A0580](0xD00000000000001ALL, 0x8000000247374780);
  v1 = sub_247365C94();
  MEMORY[0x24C1A0580](v1);

  MEMORY[0x24C1A0580](10530, 0xE200000000000000);
  return 0;
}

void sub_247356BB0(void *a1)
{
  v3 = sub_247365C44();
  v4 = sub_247365C44();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___CRXCNewEnrollmentInfo_lensCalibrationStatus);
  v6 = sub_247365C44();
  [a1 encodeInteger:v5 forKey:v6];
}

id CRXCNewEnrollmentInfo.init(coder:)(void *a1)
{
  v2 = sub_247365C44();
  [a1 decodeIntegerForKey_];

  sub_24734D494();
  v3 = sub_247365D84();
  if (v3)
  {
    v6 = 0;
    v4 = v3;
    sub_247365C54();
  }

  type metadata accessor for CRXCNewEnrollmentInfo();
  swift_deallocPartialClassInstance();
  return 0;
}

id CRXCNewEnrollmentInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CRXCNewEnrollmentInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRXCNewEnrollmentInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CRXCFactoryCalibrationData.acc.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_acc);
  sub_24734782C(v1, *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_acc + 8));
  return v1;
}

uint64_t CRXCFactoryCalibrationData.left.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_left);
  sub_24734FB20(v1, *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_left + 8));
  return v1;
}

uint64_t CRXCFactoryCalibrationData.right.getter()
{
  v1 = *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_right);
  sub_24734FB20(v1, *(v0 + OBJC_IVAR___CRXCFactoryCalibrationData_right + 8));
  return v1;
}

BOOL CRXCFactoryCalibrationData.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_247346F80(a1, v20);
  if (!v21)
  {
    sub_247347038(v20);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_acc);
  v4 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_acc + 8);
  v5 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_acc];
  v6 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_acc + 8];
  sub_24734782C(v5, v6);
  LOBYTE(v3) = sub_247347B28(v3, v4, v5, v6);
  sub_247347880(v5, v6);
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_left);
  v7 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_left + 8);
  v10 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left];
  v9 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8];
  if (v7 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_24734FB20(*&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left], *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8]);
      sub_24734FB20(v8, v7);
      sub_24734FB34(v8, v7);
      goto LABEL_11;
    }

LABEL_9:
    sub_24734FB20(*&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left], *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8]);
    sub_24734FB20(v8, v7);

    sub_24734FB34(v8, v7);
    v11 = v10;
LABEL_18:
    sub_24734FB34(v11, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_9;
  }

  sub_24734FB20(*&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left], *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_left + 8]);
  sub_24734FB20(v10, v9);
  sub_24734FB20(v8, v7);
  v12 = sub_247347B28(v8, v7, v10, v9);
  sub_24734FB34(v10, v9);
  sub_24734FB34(v10, v9);
  sub_24734FB34(v8, v7);
  if (!v12)
  {
LABEL_14:

    return 0;
  }

LABEL_11:
  v13 = v1 + OBJC_IVAR___CRXCFactoryCalibrationData_right;
  v15 = *(v1 + OBJC_IVAR___CRXCFactoryCalibrationData_right);
  v14 = *(v13 + 8);
  v16 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_right];
  v9 = *&v19[OBJC_IVAR___CRXCFactoryCalibrationData_right + 8];
  if (v14 >> 60 != 15)
  {
    sub_24734FB20(v16, v9);
    if (v9 >> 60 != 15)
    {
      sub_24734FB20(v16, v9);
      sub_24734FB20(v15, v14);
      v17 = sub_247347B28(v15, v14, v16, v9);
      sub_24734FB34(v16, v9);
      sub_24734FB34(v16, v9);

      sub_24734FB34(v15, v14);
      return v17;
    }

    sub_24734FB20(v15, v14);

    goto LABEL_17;
  }

  sub_24734FB20(v16, v9);
  sub_24734FB20(v15, v14);

  if (v9 >> 60 != 15)
  {
LABEL_17:
    sub_24734FB34(v15, v14);
    v11 = v16;
    goto LABEL_18;
  }

  sub_24734FB34(v15, v14);
  return 1;
}
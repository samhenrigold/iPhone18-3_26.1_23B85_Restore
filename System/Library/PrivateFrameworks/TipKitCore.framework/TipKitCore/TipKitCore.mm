uint64_t sub_197553864@<X0>(uint64_t a1@<X8>)
{
  v2 = os_variant_allows_internal_security_policies();
  result = Platform.Device.init()();
  *a1 = v4;
  *(a1 + 1) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = v2;
  *(a1 + 5) = 0;
  return result;
}

TipKitCore::Platform::Device __swiftcall Platform.Device.init()()
{
  v1 = v0;
  if (qword_1ED816FC0 != -1)
  {
    result = swift_once();
  }

  if ((dword_1ED81D1F0 - 1) > 0xA)
  {
    v2 = 7;
  }

  else
  {
    v2 = byte_197622C42[dword_1ED81D1F0 - 1];
  }

  *v1 = v2;
  return result;
}

void sub_197553934()
{
  v0 = sub_1976161B0();
  v1 = MGGetSInt32Answer();

  dword_1ED81D1F0 = v1;
}

uint64_t sub_1975539AC(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return *a2;
}

BOOL sub_1975539E8()
{
  result = sub_197553A24(0xD000000000000018, 0x8000000197623C40);
  byte_1ED816549 = result;
  return result;
}

BOOL sub_197553A24(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1ED817298 != -1)
  {
    a1 = swift_once();
  }

  if (byte_1ED8172A1 == 1)
  {
    if (qword_1ED816E78 != -1)
    {
      a1 = OUTLINED_FUNCTION_1_45(&qword_1ED816E78);
    }

    v15 = v3;
    v16 = a2;
    MEMORY[0x1EEE9AC00](a1);
    OUTLINED_FUNCTION_2_0();
    *(v4 - 16) = &v15;
    v7 = sub_1975544B4(sub_1975F8D28, v5, v6);
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    if (qword_1EAF34278 != -1)
    {
      v7 = swift_once();
    }

    v15 = v3;
    v16 = a2;
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_0();
    *(v10 - 16) = &v15;
    v11 = sub_1975F8D28;
  }

  else
  {
    if (qword_1ED816E78 != -1)
    {
      a1 = OUTLINED_FUNCTION_1_45(&qword_1ED816E78);
    }

    v15 = v3;
    v16 = a2;
    MEMORY[0x1EEE9AC00](a1);
    OUTLINED_FUNCTION_2_0();
    *(v12 - 16) = &v15;
    v11 = sub_197556D58;
  }

  return sub_1975544B4(v11, v8, v9);
}

uint64_t sub_197553BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  sub_197553D0C(0, v8, 0, a4, a5, a6, a7);
  v9 = v22;
  v10 = a1 + 32;
  if (v8)
  {
    while (1)
    {
      sub_1975586C0(v10, v21);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v22 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_197553D0C(v15 > 1, v16 + 1, 1, v11, v12, v13, v14);
        v9 = v22;
      }

      *(v9 + 16) = v16 + 1;
      v17 = v9 + 16 * v16;
      *(v17 + 32) = v19;
      *(v17 + 40) = v20;
      v10 += 32;
      if (!--v8)
      {
        return v9;
      }
    }

    return 0;
  }

  return v9;
}

void sub_197553D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_0_25();
  sub_197553D48();
  *v7 = v8;
}

void sub_197553D48()
{
  OUTLINED_FUNCTION_4_21();
  if ((v6 & 1) == 0)
  {
    v8 = v3;
    goto LABEL_8;
  }

  v7 = *(v0 + 24);
  v8 = v7 >> 1;
  if ((v7 >> 1) >= v3)
  {
    goto LABEL_8;
  }

  if (v8 + 0x4000000000000000 >= 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= v3)
    {
      v8 = v3;
    }

LABEL_8:
    v9 = *(v0 + 16);
    if (v8 <= v9)
    {
      v10 = *(v0 + 16);
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v11[2] = v9;
      v11[3] = 2 * ((v12 - 32) / 16);
      if (v2)
      {
LABEL_13:
        v1(v0 + 32, v9, v11 + 4);
        *(v0 + 16) = 0;
LABEL_16:

        return;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_13;
      }
    }

    OUTLINED_FUNCTION_5_13();
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_197553E34()
{
  v0 = sub_197553EE0(0xD000000000000025, 0x8000000197625E50, &qword_1ED816F08, 0x1E695DEC8);
  if (v0 && (v7 = sub_197553BF8(v0, v1, v2, v3, v4, v5, v6), result = , v7))
  {
    qword_1ED81D1E8 = v7;
  }

  else
  {
    qword_1ED81D1E8 = MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_197553EE0(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (!v6 || (v7 = v6, v8 = [v6 entitlements], v7, !v8))
  {
    v16 = 0u;
    v17 = 0u;
LABEL_6:
    sub_19755643C(&v16);
    return 0;
  }

  v9 = sub_1976161B0();
  sub_19755404C(0, a3, a4);
  v10 = [v8 objectForKey:v9 ofClass:swift_getObjCClassFromMetadata()];

  if (v10)
  {
    sub_197616910();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    goto LABEL_6;
  }

  v12 = OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19755404C(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_19755408C(uint64_t a1@<X8>)
{
  v2 = sub_1976172D0();
  v32 = v3;
  v33 = v2;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_1975543E0(0xD000000000000025, 0x8000000197623B20);
  v30 = v6;
  v31 = v5;
  v29 = v7;

  v8 = OUTLINED_FUNCTION_3_5();
  v28 = sub_197557848(0xD00000000000001DLL, 0x8000000197623B50);

  v9 = OUTLINED_FUNCTION_3_5();
  v10 = sub_197557848(0xD00000000000001CLL, 0x8000000197623B70);

  v11 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_2("com.apple.TipKit.HideTips");
  v13 = v12;

  v14 = OUTLINED_FUNCTION_3_5();
  v15 = sub_197557848(0xD00000000000001CLL, 0x8000000197623BB0);

  v16 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_2("com.apple.TipKit.ShowTips");
  v18 = v17;

  v19 = OUTLINED_FUNCTION_3_5();
  v20 = sub_197557848(0xD000000000000028, 0x8000000197623BF0);

  v21 = OUTLINED_FUNCTION_3_5();
  v22 = sub_197557848(0xD00000000000001FLL, 0x8000000197623C20);

  if (qword_1ED8174E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1ED8174E0);
  }

  *a1 = 0x74696B7069742ELL;
  *(a1 + 8) = 0xE700000000000000;
  v23 = MEMORY[0x1E69E7CD0];
  if (v18)
  {
    v24 = v18;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CD0];
  }

  if (v13)
  {
    v23 = v13;
  }

  v25 = byte_1ED8174EA;
  *(a1 + 16) = v33;
  *(a1 + 24) = v32;
  v26 = 93675;
  if ((v29 & 1) == 0)
  {
    v26 = v30;
  }

  v27 = 0x1154F79EB8000000;
  if ((v29 & 1) == 0)
  {
    v27 = v31;
  }

  *(a1 + 32) = v27;
  *(a1 + 40) = v26;
  *(a1 + 48) = v28 & 1;
  *(a1 + 49) = v10 & 1;
  *(a1 + 56) = v23;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v24;
  *(a1 + 80) = v20 & 1;
  *(a1 + 81) = v22 & 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 105) = v25;
}

BOOL sub_197554338(uint64_t a1, uint64_t a2)
{
  v3 = sub_1976161B0();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_197616910();
    swift_unknownObjectRelease();
    sub_19756A94C(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_19755643C(v7);
  return v4 != 0;
}

uint64_t sub_1975543E0(uint64_t a1, uint64_t a2)
{
  if (!sub_197554338(a1, a2))
  {
    return 0;
  }

  v3 = sub_1976161B0();
  [v2 doubleForKey_];
  v7 = v4;

  v5 = Double.seconds.getter(v7);
  sub_1975877EC(v5);
  sub_197617290();
  return sub_1976172B0();
}

BOOL sub_1975544B4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_3()
{

  return sub_197616E80();
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_6_9(unint64_t *a1)
{
  v2 = MEMORY[0x1E6969548];

  return sub_197567E98(a1, v2);
}

void *OUTLINED_FUNCTION_6_12(void *a1)
{

  return memcpy(a1, (v1 - 200), 0x70uLL);
}

uint64_t OUTLINED_FUNCTION_6_14(uint64_t result, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  *(v7 - 72) = v6;
  *(v7 - 248) = a5;
  *(v7 - 240) = a6;
  *(v7 - 256) = a3;
  *(v7 - 252) = a4;
  *(v7 - 264) = a2;
  *(v7 - 216) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, uint64_t a20, int a21, __int16 a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, __int128 a28, __int128 argA0)
{
  a28 = a17;
  argA0 = a18;
  *(&argA0 + 15) = *(&a18 + 15);

  return sub_19756D1E8(&a28);
}

double OUTLINED_FUNCTION_6_19()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

void OUTLINED_FUNCTION_4_2(uint64_t a1@<X8>)
{

  sub_1975578B4(0xD000000000000019, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1)
{

  return swift_once();
}

unint64_t OUTLINED_FUNCTION_4_10(uint64_t a1, uint64_t a2)
{

  return sub_19757B688(a1);
}

uint64_t OUTLINED_FUNCTION_4_12()
{

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_4_15()
{

  return sub_197616180();
}

uint64_t OUTLINED_FUNCTION_4_16(uint64_t a1)
{

  return sub_197616D80();
}

uint64_t OUTLINED_FUNCTION_4_18(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197616EF0();
}

uint64_t OUTLINED_FUNCTION_4_23()
{

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_4_28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{

  sub_19755A4E0(a10, v11, v10, (v10 + 8), v12);
}

void OUTLINED_FUNCTION_4_32()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_4_35()
{

  return sub_197617190();
}

uint64_t OUTLINED_FUNCTION_4_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_43(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197616090();
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_33(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_0_38(int8x16_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int8x16_t a10, int8x16_t a11)
{
  *a1.i64 = *a11.i64 - trunc(*a11.i64);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  a1.i64[0] = vbslq_s8(vnegq_f64(v11), a1, a11).u64[0];
  return *a1.i64;
}

uint64_t OUTLINED_FUNCTION_0_39(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_197616260();
}

uint64_t OUTLINED_FUNCTION_0_41()
{
}

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1)
{

  return sub_197615CB0();
}

uint64_t OUTLINED_FUNCTION_0_46(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_47(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_0_48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_52()
{
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_1_3()
{
}

uint64_t OUTLINED_FUNCTION_1_4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 40) = result;
  *(v3 + 80) = 8;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_21()
{
  sub_1975558C4((v0 - 160), v0 - 120);
  v1 = *(v0 - 96);
  __swift_project_boxed_opaque_existential_1Tm((v0 - 120), v1);
  return v1;
}

void OUTLINED_FUNCTION_1_23()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_1_34()
{

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_1_36(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  CoreTipRecord.id.getter(a1, a2, a3, a4, a5, a6, a7, a8, 0x203A646928706954, 0xE800000000000000, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t OUTLINED_FUNCTION_1_37()
{

  return MEMORY[0x1EEDC5700]();
}

uint64_t OUTLINED_FUNCTION_1_39(uint64_t a1)
{

  return sub_197617190();
}

uint64_t OUTLINED_FUNCTION_1_43(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_1_45(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_47(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_1_50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1975F893C(a1, a2, a3, v5, v4, v3);
}

uint64_t OUTLINED_FUNCTION_1_51()
{

  return sub_197567790(v1, v0);
}

uint64_t sub_1975558C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_3_5()
{

  return [v1 (v0 + 2734)];
}

uint64_t OUTLINED_FUNCTION_15(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_11()
{

  return sub_19755FA5C(v1, v0, v2, v3);
}

uint64_t OUTLINED_FUNCTION_3_12(uint64_t a1)
{
  *(v2 - 104) = v1;

  return swift_setAtWritableKeyPath();
}

double OUTLINED_FUNCTION_3_19()
{
  *(v0 - 128) = 0;
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_25(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_197616D80();
}

uint64_t OUTLINED_FUNCTION_3_26(uint64_t a1)
{

  return sub_1976160F0();
}

uint64_t OUTLINED_FUNCTION_3_29()
{
  v4 = (*(v0 + 48) + ((v3 << 10) | (16 * __clz(__rbit64(v2)))));
  result = v4[1];
  *v1 = *v4;
  v1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_15_3(uint64_t a1)
{
  *(v2 - 112) = v1;
  *(v2 - 104) = v1;
  *(v2 - 96) = a1;
  *(v2 - 88) = a1;
  v4 = MEMORY[0x1E697BC78];

  return MEMORY[0x1EEE6BF68](v2 - 112, v4, 1);
}

uint64_t OUTLINED_FUNCTION_15_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_197615750();
}

uint64_t OUTLINED_FUNCTION_15_5(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void a8, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  return sub_197615B10();
}

void OUTLINED_FUNCTION_15_7(uint64_t a1@<X8>)
{

  os_unfair_lock_lock((v1 + a1));
}

uint64_t OUTLINED_FUNCTION_15_8(uint64_t a1)
{

  return sub_1976170C0();
}

uint64_t OUTLINED_FUNCTION_15_10(uint64_t a1, uint64_t a2)
{

  return sub_197615D90();
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197617240();
}

uint64_t OUTLINED_FUNCTION_14_1()
{

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_14_3(uint64_t a1@<X8>, uint64_t a2)
{
  *(v4 - 248) = &a2 - a1;
  *(v4 - 296) = *v3;
  *(v4 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1)
{

  return sub_19755C7C8(a1, v1, v2);
}

void OUTLINED_FUNCTION_14_6()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_14_7()
{
  *(v1 - 184) = v0;

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1)
{

  return sub_197616EF0();
}

uint64_t OUTLINED_FUNCTION_5_9(uint64_t a1)
{
  *(v2 - 65) = v1;

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, __int128);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);

  return sub_19756EED8(va, va1);
}

uint64_t OUTLINED_FUNCTION_5_13()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_5_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_197616EF0();
}

uint64_t OUTLINED_FUNCTION_5_25(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_22_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1975CF4F0(va, &a9, v16, v17);
}

uint64_t OUTLINED_FUNCTION_22_9(uint64_t a1, uint64_t a2)
{

  return sub_197616EF0();
}

uint64_t OUTLINED_FUNCTION_22_10(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_22_11(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_22_12(__n128 *a1)
{
  *(v2 + 56) = a1;
  result = *(v2 + 24);
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v1;
  a1[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_13()
{

  return swift_setAtWritableKeyPath();
}

uint64_t sub_19755643C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_17()
{
  v2 = *(v0 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 128, v2);
}

void OUTLINED_FUNCTION_17_0()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1, uint64_t a2)
{

  return sub_197615D90();
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1)
{

  return sub_19755C7C8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_17_11(uint64_t a1)
{

  return sub_197615BE0();
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2)
{

  return sub_197615D90();
}

uint64_t OUTLINED_FUNCTION_8_8(uint64_t a1)
{
  *(v2 - 120) = v1;

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_8_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197616EF0();
}

uint64_t OUTLINED_FUNCTION_8_16()
{

  return sub_197616ED0();
}

uint64_t OUTLINED_FUNCTION_8_17()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_8_20()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_2_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_23(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_26()
{

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_2_27()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_2_28@<X0>(uint64_t a1@<X8>)
{
  *v1 = v2;
  v1[1] = v4;
  v1[2] = ~v5;
  v1[3] = a1;
  v1[4] = v6;
  return v3;
}

uint64_t OUTLINED_FUNCTION_2_33(uint64_t a1, uint64_t a2)
{

  return sub_197616260();
}

uint64_t *OUTLINED_FUNCTION_2_34()
{
  sub_19756EED8((v1 - 160), v1 - 120);
  __swift_project_boxed_opaque_existential_1Tm((v1 - 120), *(v1 - 96));
  *(v1 - 136) = v0;

  return __swift_allocate_boxed_opaque_existential_0((v1 - 160));
}

uint64_t OUTLINED_FUNCTION_2_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  result = sub_197559BFC(0, a1, v2);
  if (v4)
  {
    return v2;
  }

  return result;
}

uint64_t sub_197556DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_197616EF0() & 1;
  }
}

uint64_t Array.asDictionary<A, B>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  swift_getTupleTypeMetadata2();
  sub_197616530();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  return sub_1976160C0();
}

void Dictionary.subscript.getter()
{
  OUTLINED_FUNCTION_15_12();
  v40 = v2;
  v41 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v38 = v9;
  v42 = v10;
  sub_197616860();
  OUTLINED_FUNCTION_0();
  v36 = v12;
  v37 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  v39 = v6;
  sub_197616860();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_31_6();
  OUTLINED_FUNCTION_14();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_0();
  v26 = v25 - v24;
  (*(v19 + 16))(v0, v41, v17);
  if (__swift_getEnumTagSinglePayload(v0, 1, v8) == 1)
  {
    (*(v19 + 8))(v0, v17);
    v27 = 1;
LABEL_6:
    v34 = v42;
    goto LABEL_7;
  }

  (*(v22 + 32))(v26, v0, v8);
  sub_197616120();
  v28 = OUTLINED_FUNCTION_1_18();
  v29(v28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v27 = 1;
    OUTLINED_FUNCTION_22_10(v15, 1);
    (*(v36 + 8))(v15, v37);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v4);
  OUTLINED_FUNCTION_18();
  v34 = v42;
  (*(v33 + 32))(v42, v15, v4);
  v27 = 0;
LABEL_7:
  OUTLINED_FUNCTION_22_10(v34, v27);
  OUTLINED_FUNCTION_14_9();
}

{
  OUTLINED_FUNCTION_15_12();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_197616860();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  sub_197616860();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  if (v3)
  {
    v20[0] = AnyKeyPath.stringValue.getter();
    v20[1] = v10;
    sub_197616120();

    if (swift_dynamicCast())
    {
      OUTLINED_FUNCTION_3_10();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v1);
      OUTLINED_FUNCTION_18();
      (*(v14 + 32))(v5, v8, v1);
      v15 = 0;
    }

    else
    {
      v15 = 1;
      v16 = OUTLINED_FUNCTION_24_9();
      OUTLINED_FUNCTION_22_10(v16, v17);
      v18 = OUTLINED_FUNCTION_1_18();
      v19(v18);
    }
  }

  else
  {
    v15 = 1;
  }

  OUTLINED_FUNCTION_22_10(v5, v15);
  OUTLINED_FUNCTION_14_9();
}

{
  OUTLINED_FUNCTION_15_12();
  v27 = v2;
  v28 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_197616860();
  OUTLINED_FUNCTION_0();
  v25 = v13;
  v26 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_14();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_31_6();
  (*(v19 + 16))(v0, v9, v17);
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    (*(v19 + 8))(v0, v17);
  }

  else
  {
    (*(v22 + 32))(v1, v0, v7);
    sub_197616120();
    if (__swift_getEnumTagSinglePayload(v16, 1, v5) != 1)
    {
      *(v11 + 24) = v5;
      __swift_allocate_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_18();
      (*(v24 + 32))();
      (*(v22 + 8))(v1, v7);
      goto LABEL_7;
    }

    (*(v22 + 8))(v1, v7);
    (*(v25 + 8))(v16, v26);
  }

  *v11 = 0u;
  *(v11 + 16) = 0u;
LABEL_7:
  OUTLINED_FUNCTION_14_9();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return sub_197615C60();
}

uint64_t OUTLINED_FUNCTION_13_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_13_10(uint64_t a1)
{

  return sub_197615780();
}

void OUTLINED_FUNCTION_13_11(uint64_t a1@<X8>)
{

  os_unfair_lock_lock((v1 + a1));
}

uint64_t OUTLINED_FUNCTION_13_14()
{

  return sub_197615C80();
}

uint64_t OUTLINED_FUNCTION_13_17@<X0>(uint64_t a1@<X8>)
{

  return sub_197614384(0, (a1 + 63) >> 6, v1);
}

unint64_t OUTLINED_FUNCTION_13_19(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_19755C610(a2, a3);
}

uint64_t OUTLINED_FUNCTION_13_21()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_29_0()
{
}

void OUTLINED_FUNCTION_29_4()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_29_7(uint64_t a1, uint64_t a2)
{

  return sub_1975F3024(a1, a2, v2, v3);
}

void OUTLINED_FUNCTION_29_9()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x19A8E4300);
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

void sub_19755750C()
{
  if (qword_1ED8174D8 != -1)
  {
    OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
  }

  v0 = qword_1ED81D218;
  if (qword_1ED81D218)
  {
    v1 = qword_1ED81D210;

    v2 = sub_197557704(0x6C7070612E6D6F63, 0xEA00000000002E65, v1, v0);
  }

  else
  {
    v2 = 0;
  }

  byte_1ED8174EA = v2 & 1;
}

uint64_t sub_1975575A8(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1976161E0();

  return v3;
}

uint64_t sub_197557618()
{
  v0 = objc_opt_self();
  sub_1975575A8([v0 mainBundle]);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = sub_1975575A8([v0 mainBundle]);
  if (v3)
  {
    if (v2)
    {
      v4 = 0;
    }

    else
    {
      v4 = v3 == 0xE000000000000000;
    }

    if (v4)
    {
    }

    else
    {
      v5 = sub_197616EF0();

      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

LABEL_10:
    type metadata accessor for CFBundle(0);
    result = sub_1975A5740();
    goto LABEL_11;
  }

LABEL_8:
  result = sub_1975575A8([v0 mainBundle]);
LABEL_11:
  qword_1ED81D210 = result;
  qword_1ED81D218 = v7;
  return result;
}

uint64_t sub_197557704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  do
  {
    while (1)
    {
      v4 = sub_1976162C0();
      if (!v5)
      {

        sub_1976162C0();
        v13 = v12;

        if (v13)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v6 = v4;
      v7 = v5;
      v8 = sub_1976162C0();
      if (!v9)
      {

        return 1;
      }

      if (v6 != v8 || v7 != v9)
      {
        break;
      }
    }

    v11 = sub_197616EF0();
  }

  while ((v11 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_197557848(uint64_t a1, uint64_t a2)
{
  if (!sub_197554338(a1, a2))
  {
    return 2;
  }

  v3 = sub_1976161B0();
  v4 = [v2 BOOLForKey_];

  return v4;
}

void sub_1975578B4(uint64_t a1, uint64_t a2)
{
  sub_1975578D4(a1, a2);
  if (v2)
  {
    sub_197589344(v2);
  }
}

void sub_1975578D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1976161B0();
  v5 = [v2 arrayForKey_];

  if (!v5 || (v6 = sub_197616460(), v5, v13 = sub_197553BF8(v6, v7, v8, v9, v10, v11, v12), , !v13))
  {
    v14 = sub_1976161B0();
    v15 = [v3 stringForKey_];

    if (v15)
    {
      v16 = sub_1976161E0();
      v18 = v17;

      sub_197611F94(44, 0xE100000000000000, v16, v18);
      v20 = v19;

      v21 = 0;
      v22 = *(v20 + 16);
      v23 = MEMORY[0x1E69E7CC0];
LABEL_5:
      for (i = (v20 + 40 + 16 * v21); ; i += 2)
      {
        if (v22 == v21)
        {

          return;
        }

        if (v21 >= *(v20 + 16))
        {
          break;
        }

        v25 = *(i - 1);
        v26 = *i;
        v27 = v25 == 44 && v26 == 0xE100000000000000;
        if (!v27 && (sub_197616EF0() & 1) == 0)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_197553D0C(0, *(v23 + 16) + 1, 1, v28, v29, v30, v31);
          }

          v33 = *(v23 + 16);
          v32 = *(v23 + 24);
          v34 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            sub_197553D0C(v32 > 1, v33 + 1, 1, v28, v29, v30, v31);
            v34 = v33 + 1;
          }

          ++v21;
          *(v23 + 16) = v34;
          v35 = v23 + 16 * v33;
          *(v35 + 32) = v25;
          *(v35 + 40) = v26;
          goto LABEL_5;
        }

        ++v21;
      }

      __break(1u);
    }
  }
}

uint64_t static URL.defaultDatastore.getter@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  sub_197615880();
  OUTLINED_FUNCTION_0();
  v72 = v2;
  v73 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_6_0();
  v71 = v4 - v3;
  v5 = sub_197615970();
  OUTLINED_FUNCTION_0();
  v74 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v70 = (v8 - v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v68 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v67 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34690, &qword_197618F70);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  MEMORY[0x1EEE9AC00](v21 - 8);
  OUTLINED_FUNCTION_5();
  v24 = v22 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v67 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v67 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v67 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v67 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v39 = (&v67 - v38);
  if (qword_1ED817510 != -1)
  {
    swift_once();
  }

  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  if (byte_1ED8172A1 == 2)
  {
    if (qword_1ED8174E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_1ED8174E0);
    }

    if ((byte_1ED8174EA & 1) == 0)
    {
      sub_1976158B0();
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v5);
      static URL.cachesDirectoryForCurrentUser.getter(v37);
      v43 = *(v14 + 48);
      sub_19755EDE0(v39, v20);
      sub_19755EDE0(v37, &v20[v43]);
      OUTLINED_FUNCTION_1_5(v20);
      if (v41)
      {
        OUTLINED_FUNCTION_7_2(v37);
        OUTLINED_FUNCTION_7_2(v39);
        OUTLINED_FUNCTION_1_5(&v20[v43]);
        if (v41)
        {
          sub_19755C404(v20, &qword_1EAF34610, &qword_197621E30);
LABEL_37:
          v49 = v68;
          sub_1976158B0();
          OUTLINED_FUNCTION_8_2();
          if (qword_1ED817578)
          {
            v57 = qword_1ED817570;
            v58 = qword_1ED817578;
          }

          else
          {
            if (qword_1ED8174D8 != -1)
            {
              OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
            }

            if (qword_1ED81D218)
            {
              v57 = qword_1ED81D210;
              v58 = qword_1ED81D218;
            }

            else
            {
              type metadata accessor for CFBundle(0);
              v63 = sub_1975A5740();
              if (v64)
              {
                v57 = v63;
                v58 = v64;
              }

              else
              {
                v57 = 0;
                v58 = 0xE000000000000000;
              }
            }
          }

          v76 = v57;
          v77 = v58;
          v65 = OUTLINED_FUNCTION_4_4();
          v66(v65);
          sub_1975607A8();

          goto LABEL_56;
        }
      }

      else
      {
        sub_19755EDE0(v20, v34);
        OUTLINED_FUNCTION_1_5(&v20[v43]);
        if (!v51)
        {
          v52 = v74;
          v53 = &v20[v43];
          v54 = v69;
          (*(v74 + 32))(v69, v53, v5);
          sub_19755EE50();
          v55 = sub_1976161A0();
          v56 = *(v52 + 8);
          v28 = (v52 + 8);
          v56(v54, v5);
          sub_19755C404(v37, &qword_1EAF34610, &qword_197621E30);
          sub_19755C404(v39, &qword_1EAF34610, &qword_197621E30);
          v56(v34, v5);
          sub_19755C404(v20, &qword_1EAF34610, &qword_197621E30);
          if (v55)
          {
            goto LABEL_37;
          }

          return sub_1976158B0();
        }

        OUTLINED_FUNCTION_7_2(v37);
        OUTLINED_FUNCTION_7_2(v39);
        (*(v74 + 8))(v34, v5);
      }

      sub_19755C404(v20, &qword_1EAF34690, &qword_197618F70);
      return sub_1976158B0();
    }
  }

  sub_1976158F0();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v5);
  static URL.applicationSupportDirectoryForCurrentUser.getter(v28);
  v40 = *(v14 + 48);
  sub_19755EDE0(v31, v17);
  sub_19755EDE0(v28, v17 + v40);
  OUTLINED_FUNCTION_1_5(v17);
  if (!v41)
  {
    sub_19755EDE0(v17, v24);
    OUTLINED_FUNCTION_1_5(v17 + v40);
    if (!v41)
    {
      v44 = v74;
      v45 = v17 + v40;
      v46 = v69;
      (*(v74 + 32))(v69, v45, v5);
      sub_19755EE50();
      v47 = sub_1976161A0();
      v48 = *(v44 + 8);
      v48(v46, v5);
      v39 = &qword_197621E30;
      sub_19755C404(v28, &qword_1EAF34610, &qword_197621E30);
      sub_19755C404(v31, &qword_1EAF34610, &qword_197621E30);
      v48(v24, v5);
      sub_19755C404(v17, &qword_1EAF34610, &qword_197621E30);
      if (v47)
      {
        goto LABEL_25;
      }

      return sub_1976158F0();
    }

    sub_19755C404(v28, &qword_1EAF34610, &qword_197621E30);
    sub_19755C404(v31, &qword_1EAF34610, &qword_197621E30);
    (*(v74 + 8))(v24, v5);
LABEL_17:
    sub_19755C404(v17, &qword_1EAF34690, &qword_197618F70);
    return sub_1976158F0();
  }

  OUTLINED_FUNCTION_7_2(v28);
  OUTLINED_FUNCTION_7_2(v31);
  OUTLINED_FUNCTION_1_5(v17 + v40);
  if (!v41)
  {
    goto LABEL_17;
  }

  sub_19755C404(v17, &qword_1EAF34610, &qword_197621E30);
LABEL_25:
  v49 = v70;
  sub_1976158F0();
  OUTLINED_FUNCTION_8_2();
  if (qword_1ED817578)
  {
    v34 = qword_1ED817570;
    v50 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v34 = qword_1ED81D210;
      v50 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v59 = sub_1975A5740();
      if (v60)
      {
        v34 = v59;
      }

      else
      {
        v34 = 0;
      }

      if (v60)
      {
        v50 = v60;
      }

      else
      {
        v50 = 0xE000000000000000;
      }
    }
  }

  v76 = v34;
  v77 = v50;
  v61 = OUTLINED_FUNCTION_4_4();
  v62(v61);
  sub_1975607A8();

LABEL_56:
  sub_197615960();
  (v39[1])(v28, v34);

  return (*(v74 + 8))(v49, v5);
}

size_t OUTLINED_FUNCTION_9_3(void *a1)
{
  result = _swift_stdlib_malloc_size(a1);
  a1[2] = v1;
  a1[3] = 2 * ((result - 32) / v2);
  return result;
}

void OUTLINED_FUNCTION_9_4()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return MEMORY[0x1EEDD9088](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_9_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_9_11()
{

  return sub_197615740();
}

uint64_t OUTLINED_FUNCTION_9_17()
{
}

uint64_t OUTLINED_FUNCTION_9_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{

  return sub_197616BC0();
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t a1)
{

  return sub_197616890();
}

id default argument 0 of URL.removeFile(fileManager:)()
{
  v0 = [objc_opt_self() defaultManager];

  return v0;
}

uint64_t sub_1975586C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_31(uint64_t result)
{
  *(v3 - 144) = v1;
  *(v3 - 136) = v2;
  *(v3 - 168) = result;
  return result;
}

uint64_t type metadata accessor for logger(uint64_t a1)
{
  result = qword_1ED8174F0;
  if (!qword_1ED8174F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_197558864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED817510 != -1)
  {
    a1 = OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  OUTLINED_FUNCTION_22_11(a1, a2, a3);
  if (byte_1ED817548 == 1)
  {
    if (qword_1ED817298 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_1ED817298);
    }

    OUTLINED_FUNCTION_15_13();
    if (v5)
    {
      OUTLINED_FUNCTION_17_14();
      if (v6 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E30, &unk_19761E650);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_197618C10;
        OUTLINED_FUNCTION_30_9();
        v7 = sub_1975F901C(*v3);
        MEMORY[0x19A8E2A50](v7);

        MEMORY[0x19A8E2A50](8285, 0xE200000000000000);
        OUTLINED_FUNCTION_32_6();
        *(v4 + 56) = MEMORY[0x1E69E6158];
        *(v4 + 32) = v13;
        *(v4 + 40) = v15;
        OUTLINED_FUNCTION_25_8(v4);
      }
    }
  }

  type metadata accessor for logger(0);

  v8 = sub_197615B90();
  v9 = _s10TipKitCore3logyyAA6loggerV_So03os_D7_type_tanSSyXKs7CVarArg_pdtFfA0__0();

  if (os_log_type_enabled(v8, v9))
  {
    swift_slowAlloc();
    v14 = OUTLINED_FUNCTION_34_5();
    *(v4 + 4) = OUTLINED_FUNCTION_24_10(4.8149e-34, v14, v10);
    OUTLINED_FUNCTION_23_9(&dword_197552000, v11, v12, "%s");
    OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_31_7();
  }
}

uint64_t sub_197558A20()
{
  v0 = type metadata accessor for logger(0);
  __swift_allocate_value_buffer(v0, qword_1ED816F18);
  *__swift_project_value_buffer(v0, qword_1ED816F18) = 5;
  if (qword_1ED817298 != -1)
  {
    swift_once();
  }

  return sub_197615BA0();
}

uint64_t sub_197558B1C(uint64_t a1)
{
  result = sub_197615BB0();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void (*static logger.tipKit.read())()
{
  if (qword_1ED816F10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for logger(0);
  OUTLINED_FUNCTION_37_2(v0, qword_1ED816F18);
  return nullsub_1;
}

uint64_t sub_197558C30()
{
  OUTLINED_FUNCTION_8_24();
  v2 = v1();
  v0(v2);
}

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1)
{

  return sub_197616DC0();
}

uint64_t OUTLINED_FUNCTION_43_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_23_3(uint64_t a1)
{
  *(v3 - 144) = v2;
  *(v3 - 136) = v1;
  *(v3 - 168) = a1;
  return 1970037110;
}

void OUTLINED_FUNCTION_23_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 776);
  v6 = *(v3 + 784);

  sub_197558864(v5, v6, a3);
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_34_3()
{

  return sub_19758C664(v0 + v2, v1);
}

uint64_t OUTLINED_FUNCTION_34_4()
{
  *(v1 - 136) = v0;
  v3 = *(v1 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 128, v3);
}

uint64_t OUTLINED_FUNCTION_34_5()
{

  return swift_slowAlloc();
}

unint64_t sub_197558E6C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_197558F30(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_1975586C0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_197558F30(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1975FB00C(a5, a6);
    *a1 = v9;
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
    result = sub_197616AA0();
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

uint64_t (*static Configuration.shared.modify(uint64_t a1))()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void Configuration.usesCoreAnalytics.setter(char a1)
{
  if (qword_1ED8174E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1ED8174E0);
  }

  OUTLINED_FUNCTION_2_4();
  if (v3)
  {
    *(v1 + 105) = a1 & 1;
  }
}

void Configuration.usesAppleDisplayFrequency.setter(char a1)
{
  if (qword_1ED8174E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_1ED8174E0);
  }

  OUTLINED_FUNCTION_2_4();
  if (v3)
  {
    *(v1 + 104) = a1 & 1;
  }
}

void sub_197559150(uint64_t a1)
{
  if (!qword_1ED816E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34988, &qword_197620CA0);
    v1 = sub_197615B50();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED816E40);
    }
  }
}

void sub_1975591B4(uint64_t a1)
{
  sub_197559150(319);
  if (v1 <= 0x3F)
  {
    sub_197615B40();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for CoreTip(uint64_t a1)
{
  result = qword_1ED816E58;
  if (!qword_1ED816E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_setAtWritableKeyPath();
}

void OUTLINED_FUNCTION_28_4()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_28_6(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t String.init<A>(type:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34688, &qword_197619420);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-v3];
  v5 = sub_197617320();
  v21 = 46;
  v22 = 0xE100000000000000;
  v16 = &v21;
  v7 = sub_19755967C(0x7FFFFFFFFFFFFFFFLL, 1, sub_197556D58, v15, v5, v6);
  v21 = sub_197559AF4(1, v7);
  v22 = v8;
  v23 = v9;
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349A0, &qword_19761B1F0);
  sub_197559AAC(&qword_1ED816D98, &qword_1EAF349A0, &qword_19761B1F0, MEMORY[0x1E69E6968]);
  sub_197559C9C();
  v11 = sub_1976163D0();
  v13 = v12;
  swift_unknownObjectRelease();
  v19 = v11;
  v20 = v13;
  sub_197615B60();
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_197559BA8();
  sub_197559C48();
  sub_197559AAC(&qword_1ED816DB8, &qword_1EAF34688, &qword_197619420, MEMORY[0x1E69E9290]);
  sub_1976167A0();
  (*(v2 + 8))(v4, v1);

  return v21;
}

uint64_t sub_19755967C(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v44 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_197616340();
    OUTLINED_FUNCTION_1_3();
    sub_1975599D8();
    v16 = v30;
    v9 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v31 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v32 = (v16 + 32 * v9);
      v32[4] = v7;
      v32[5] = v11;
      v32[6] = v12;
      v32[7] = v13;
      return v16;
    }

LABEL_41:
    sub_1975599D8();
    v16 = v33;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v42 = MEMORY[0x1E69E7CC0];
  v17 = 15;
  while (1)
  {
    v40 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v40;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_0_1();
      v18 = sub_197616310();
      v12 = v19;
      v43[0] = v18;
      v43[1] = v19;
      v20 = v44(v43);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_0_1();
      v17 = sub_197616280();
    }

    v23 = (v40 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v40 >> 14)
    {
      break;
    }

    v41 = sub_197616340();
    v36 = v25;
    v37 = v24;
    v35 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1975599D8();
      v42 = v28;
    }

    v13 = *(v42 + 16);
    v12 = v13 + 1;
    if (v13 >= *(v42 + 24) >> 1)
    {
      sub_1975599D8();
      v42 = v29;
    }

    *(v42 + 16) = v12;
    v27 = (v42 + 32 * v13);
    v27[4] = v41;
    v27[5] = v37;
    v27[6] = v36;
    v27[7] = v35;
LABEL_20:
    OUTLINED_FUNCTION_0_1();
    v17 = sub_197616280();
    if ((v23 & 1) == 0 && *(v42 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v42;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_197616340();
        OUTLINED_FUNCTION_1_3();
        v16 = v42;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v31 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      sub_1975599D8();
      v16 = v34;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void sub_1975599D8()
{
  OUTLINED_FUNCTION_17_2();
  if (v4)
  {
    OUTLINED_FUNCTION_4_6();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_16_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_8();
    }
  }

  OUTLINED_FUNCTION_8_5();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AB0, &qword_19761B6E8);
    v7 = OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_23_2(v7);
    OUTLINED_FUNCTION_25_1();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = OUTLINED_FUNCTION_38_0();
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_197559AAC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_197559AF4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = OUTLINED_FUNCTION_2_41(result, a2);
    if (v3 >= result)
    {
      sub_197612444(result, v3, v2);
      OUTLINED_FUNCTION_0_52();
      return OUTLINED_FUNCTION_1_52();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197559B4C(void *a1, os_unfair_lock_t lock, uint64_t *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(lock);
  v6 = *a3;

  os_unfair_lock_unlock(lock);
  return v6;
}

unint64_t sub_197559BA8()
{
  result = qword_1ED816DA8;
  if (!qword_1ED816DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816DA8);
  }

  return result;
}

uint64_t sub_197559BFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_197559C48()
{
  result = qword_1ED816DB0;
  if (!qword_1ED816DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816DB0);
  }

  return result;
}

unint64_t sub_197559C9C()
{
  result = qword_1ED816DA0;
  if (!qword_1ED816DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816DA0);
  }

  return result;
}

uint64_t (*static CoreParameter.parameters.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = static CoreParameter.parameters.getter();
  return sub_19755A370;
}

uint64_t sub_197559D58()
{
  type metadata accessor for CoreParameter();
  result = sub_1976160B0();
  dword_1ED816538 = 0;
  qword_1ED816540 = result;
  return result;
}

uint64_t Dictionary.getOrCreate(key:default:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v42 = a3;
  v43 = a2;
  v45 = a5;
  v46 = a1;
  v7 = *(a4 + 16);
  OUTLINED_FUNCTION_14();
  v39 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6_0();
  v40 = v11 - v10;
  v13 = *(v12 + 24);
  OUTLINED_FUNCTION_14();
  v44 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6_0();
  v18 = (v17 - v16);
  v19 = sub_197616860();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v39 - v27;
  v41 = v6;
  v29 = v46;
  sub_197616120();
  v30 = OUTLINED_FUNCTION_24_9();
  if (__swift_getEnumTagSinglePayload(v30, v31, v13) == 1)
  {
    v32 = (*(v21 + 8))(v28, v19);
    v33 = v47;
    result = v43(v32);
    if (v33)
    {
      return result;
    }

    (*(v39 + 16))(v40, v29, v7);
    v35 = v44;
    (*(v44 + 16))(v25, v18, v13);
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v13);
    sub_197616130();
  }

  else
  {
    v18 = v28;
    v35 = v44;
  }

  return (*(v35 + 32))(v45, v18, v13);
}

uint64_t Array.find<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v33 = a1;
  v34 = a4;
  v28 = a5;
  v30 = sub_197616860();
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  OUTLINED_FUNCTION_14();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v27 = v16;
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4_1();
  v18 = sub_197616470();
  v36 = v18;
  v31 = (v14 + 8);
  v32 = (v14 + 16);
  v29 = (v9 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_4_1();
    if (v18 == sub_1976164E0())
    {
      v21 = v28;
      v22 = 1;
      v23 = v34;
      return __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
    }

    OUTLINED_FUNCTION_4_1();
    v19 = sub_1976164C0();
    sub_197616490();
    if (v19)
    {
      (*(v14 + 16))(v17, a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v18, a3);
      goto LABEL_5;
    }

    result = sub_197616A30();
    if (v27 != 8)
    {
      break;
    }

    v35 = result;
    (*v32)(v17, &v35, a3);
    swift_unknownObjectRelease();
LABEL_5:
    sub_197616520();
    v33(v17);
    result = (*v31)(v17, a3);
    if (v5)
    {
      return result;
    }

    if (__swift_getEnumTagSinglePayload(v12, 1, v34) != 1)
    {
      v24 = v34;
      v25 = v28;
      (*(*(v34 - 8) + 32))(v28, v12, v34);
      v21 = v25;
      v22 = 0;
      v23 = v24;
      return __swift_storeEnumTagSinglePayload(v21, v22, 1, v23);
    }

    (*v29)(v12, v30);
    v18 = v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_19755A3A8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_19755A45C()
{
  result = qword_1ED816FF0;
  if (!qword_1ED816FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34A00, &qword_19761B418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816FF0);
  }

  return result;
}

void sub_19755A4E0(uint64_t a1, void *a2, os_unfair_lock_t lock, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(lock);

  *a4 = a1;

  os_unfair_lock_unlock(lock);
}

uint64_t sub_19755A560(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CoreParameter.init(_:datastore:)(void *a1, uint64_t a2)
{
  sub_19755A560(a1, v2 + 16);
  *(v2 + 56) = a2;
  sub_19755A560(a1, v7);
  v5 = swift_allocObject();
  sub_1975558C4(v7, v5 + 16);
  swift_unownedRetain();
  sub_19755A5C4(&unk_19761C838, v5);

  __swift_destroy_boxed_opaque_existential_0Tm(a1);

  return v2;
}

uint64_t sub_19755A6A8()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_19755A6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C70, &qword_19761BEF8);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v15[0] = a4;
  v15[1] = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C78, &qword_19761BF10);
  sub_197616600();
  return (*(v9 + 8))(v12, v7);
}

uint64_t CoreParameter.__allocating_init(_:datastore:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CoreParameter.init(_:datastore:)(a1, a2);
  return v4;
}

uint64_t static MiniTipsDatastore.shared.getter()
{
  if (qword_1ED817358 != -1)
  {
    OUTLINED_FUNCTION_2_39(&qword_1ED817358);
  }
}

uint64_t sub_19755A8A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346B0, &qword_1976190C8);
  result = sub_1976160B0();
  dword_1ED817330 = 0;
  qword_1ED817338 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_2(unint64_t *a1)
{

  return sub_1975B3454(a1, v1, v2, sub_1975B2E08);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_1975CFB0C(v2 - 80, v0, v1);
}

uint64_t OUTLINED_FUNCTION_12_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_197616DC0();
}

uint64_t OUTLINED_FUNCTION_12_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return sub_197615710();
}

uint64_t OUTLINED_FUNCTION_12_12()
{

  return sub_197616180();
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return _ss8DurationV10TipKitCoreE7secondsSivg_0();
}

uint64_t OUTLINED_FUNCTION_12_16()
{
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return swift_task_alloc();
}

uint64_t type metadata accessor for MiniTipsDatastore.DatastoreQueue(uint64_t a1)
{
  result = qword_1ED817398;
  if (!qword_1ED817398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197617240();
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_31_7()
{

  JUMPOUT(0x19A8E4300);
}

uint64_t sub_19755ABF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_19755C610(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35560, &unk_197621E40);
  if ((sub_197616BF0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_19755C610(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1976170F0();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    return sub_197564C90(a1, v16[7] + 8 * v12, &qword_1EAF346B0, &qword_1976190C8);
  }

  sub_19755C4D4(v12, a2, a3, a1, v16);
}

void *sub_19755AD34()
{
  if (qword_1ED817510 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_1ED817510);
  }

  swift_beginAccess();
  if (qword_1ED817578)
  {
    v0 = qword_1ED817570;
    v1 = qword_1ED817578;
  }

  else
  {
    if (qword_1ED8174D8 != -1)
    {
      OUTLINED_FUNCTION_4_3(&qword_1ED8174D8);
    }

    if (qword_1ED81D218)
    {
      v0 = qword_1ED81D210;
      v1 = qword_1ED81D218;
    }

    else
    {
      type metadata accessor for CFBundle(0);
      v2 = sub_1975A5740();
      if (v3)
      {
        v0 = v2;
      }

      else
      {
        v0 = 0;
      }

      if (v3)
      {
        v1 = v3;
      }

      else
      {
        v1 = 0xE000000000000000;
      }
    }
  }

  type metadata accessor for MiniTipsDatastore(0);
  swift_allocObject();

  result = MiniTipsDatastore.init(id:bundleID:)(0xD000000000000017, 0x8000000197626770, v0, v1);
  qword_1ED817360 = result;
  return result;
}

void sub_19755AE74(uint64_t a1)
{
  sub_19755AF30(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19755AF30(uint64_t a1)
{
  if (!qword_1ED817350)
  {
    sub_197615EF0();
    v1 = sub_197616860();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED817350);
    }
  }
}

uint64_t static MiniTipsDatastore.activeStores.getter()
{
  if (qword_1ED817368 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1ED817368);
  }

  os_unfair_lock_lock(&dword_1ED817330);
  v0 = qword_1ED817338;

  os_unfair_lock_unlock(&dword_1ED817330);
  return v0;
}

void *MiniTipsDatastore.init(id:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v4[9] = 0;
  v10 = OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelConfiguration;
  v11 = sub_197615EF0();
  __swift_storeEnumTagSinglePayload(v5 + v10, 1, 1, v11);
  *(v5 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer) = 0;
  *(v5 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_datastoreTask) = 0;
  v5[2] = a1;
  v5[3] = a2;
  v12 = a1 == a3 && a2 == a4;
  if (v12 || (OUTLINED_FUNCTION_12_8(), (sub_197616EF0() & 1) != 0))
  {

    v13 = a3;
    v14 = a4;
  }

  else
  {
    v20 = a3;
    v21 = a4;

    MEMORY[0x19A8E2A50](95, 0xE100000000000000);
    v15 = OUTLINED_FUNCTION_12_8();
    MEMORY[0x19A8E2A50](v15);
    v13 = a3;
    v14 = a4;
  }

  v5[6] = v13;
  v5[7] = v14;
  v5[4] = a3;
  v5[5] = a4;
  type metadata accessor for MiniTipsDatastore.DatastoreQueue(0);
  swift_allocObject();
  v5[8] = sub_19755B2B8();
  swift_weakInit();
  swift_weakAssign();
  LOBYTE(v21) = 0;
  v16 = static MiniTipsDatastore.activeStores.getter();
  sub_19755C540(&v20, &v19);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19755ABF4(&v19, a1, a2, isUniquelyReferenced_nonNull_native);

  static MiniTipsDatastore.activeStores.setter(v16);
  return v5;
}

uint64_t sub_19755B2B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35628, &qword_1976226A8);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34C78, &qword_19761BF10);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35610, &qword_197622548);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v19 - v16;
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35618, &qword_197622668);
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8650], v1);
  sub_1976165C0();
  (*(v3 + 8))(v6, v1);
  (*(v8 + 32))(v0 + OBJC_IVAR____TtCC10TipKitCore17MiniTipsDatastore14DatastoreQueue_continuations, v11, v20);
  (*(v14 + 32))(v0 + OBJC_IVAR____TtCC10TipKitCore17MiniTipsDatastore14DatastoreQueue_stream, v17, v12);
  return v0;
}

void sub_19755B510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF35618, &qword_197622668);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_19755B57C(uint64_t a1)
{
  sub_19755B510(319, &qword_1ED817348, MEMORY[0x1E69E8660]);
  if (v1 <= 0x3F)
  {
    sub_19755B510(319, &qword_1ED817340, MEMORY[0x1E69E8698]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata accessor for MiniTipsDatastore(uint64_t a1)
{
  result = qword_1ED817500;
  if (!qword_1ED817500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19755B6D4()
{
  if (MiniTipsDatastore.hasConfigured.getter())
  {
    if (qword_1ED816C98 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for logger(0);
    __swift_project_value_buffer(v1, qword_1ED816CA0);
    sub_197616A20();

    sub_1975FCA28();
    v2 = sub_197616E80();
    MEMORY[0x19A8E2A50](v2);

    sub_197558864(0xD00000000000002BLL, 0x8000000197626190, v3);
  }

  else
  {
    if (qword_1ED817510 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_1976158D0();

    v4 = [objc_opt_self() defaultManager];
    v5 = URL.createDirectory(using:)(v4);

    if (v5)
    {
      v6 = sub_19755F4A0();
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = v6 + 32;
        do
        {
          v8 += 8;
          sub_19755F63C();
          --v7;
        }

        while (v7);
      }

      v9 = *(v0 + 168);
      v10 = *(v0 + 176);
      v11 = *(v0 + 160);
      v52 = *(v0 + 152);
      v53 = *(v0 + 104);
      v49 = *(v0 + 88);
      v51 = *(v0 + 96);

      sub_197616080();
      sub_19756087C();
      sub_197615FB0();
      strcpy((v0 + 64), "tips-store.db");
      *(v0 + 78) = -4864;
      (*(v9 + 104))(v10, *MEMORY[0x1E6968F70], v11);
      sub_1975607A8();
      sub_197615950();
      (*(v9 + 8))(v10, v11);
      sub_1975649B8(v49, v51, v53, v52);
      v15 = sub_197615890();
      v17 = v16;

      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = *(v0 + 224);
        v21 = *(v0 + 200);
        v20 = *(v0 + 208);
        v22 = *(v0 + 192);
        v24 = *(v0 + 144);
        v23 = *(v0 + 152);
        v26 = *(v0 + 128);
        v25 = *(v0 + 136);
        v48 = *(v0 + 112);
        v50 = *(v0 + 184);
        (*(v20 + 16))(*(v0 + 216), v19, v21);
        (*(v25 + 16))(v24, v23, v26);
        sub_197615F00();
        (*(v25 + 8))(v23, v26);
        v27 = *(v20 + 8);
        v27(v19, v21);
        v28 = sub_197615EF0();
        __swift_storeEnumTagSinglePayload(v22, 0, 1, v28);
        v29 = OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelConfiguration;
        swift_beginAccess();
        sub_197564C90(v22, v48 + v29, &qword_1EAF35568, &qword_197621E58);
        swift_endAccess();
        sub_197615D40();
        v30 = sub_197615FB0();
        sub_1975FCC78(v48 + v29, v50, &qword_1EAF35568, &qword_197621E58);
        v31 = sub_197564BD8();
        v32 = sub_19755D970(v30, v50, &_s13MigrationPlanON, v31);
        v42 = *(v0 + 240);
        *(*(v0 + 112) + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer) = v32;

        if (v42 == 1)
        {
          v43 = *(v0 + 112);
          v45 = v43[6];
          v44 = v43[7];
          _s16ContainerMonitorCMa();
          v46 = swift_allocObject();

          swift_defaultActor_initialize();
          *(v46 + 112) = v45;
          *(v46 + 120) = v44;
          v43[9] = v46;
        }

        sub_19755DC6C();
        v47 = OUTLINED_FUNCTION_18_0();
        (v27)(v47);
      }

      else
      {
        v33 = *(v0 + 224);
        v34 = *(v0 + 232);
        v35 = *(v0 + 200);
        v36 = *(v0 + 208);
        v37 = *(v0 + 152);
        v39 = *(v0 + 128);
        v38 = *(v0 + 136);
        sub_19759228C();
        swift_allocError();
        *v40 = 0xD00000000000001ELL;
        v40[1] = 0x8000000197626170;
        swift_willThrow();

        (*(v38 + 8))(v37, v39);
        v41 = *(v36 + 8);
        v41(v33, v35);
        v41(v34, v35);
      }
    }

    else
    {
      (*(*(v0 + 208) + 8))(*(v0 + 232), *(v0 + 200));
      sub_19759228C();
      swift_allocError();
      *v12 = 0xD000000000000015;
      v12[1] = 0x8000000197626150;
      swift_willThrow();
    }
  }

  OUTLINED_FUNCTION_3();

  return v13();
}

uint64_t sub_19755BE50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_197615970();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_197615EF0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelConfiguration;
  swift_beginAccess();
  v12 = 1;
  if (!__swift_getEnumTagSinglePayload(v1 + v11, 1, v5))
  {
    v13 = (*(v7 + 16))(v10, v1 + v11, v5);
    MEMORY[0x19A8E2680](v13);
    (*(v7 + 8))(v10, v5);
    sub_1976158E0();
    v14 = OUTLINED_FUNCTION_22();
    v15(v14);
    v12 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v12, 1, v3);
}

uint64_t MiniTipsDatastore.configure(url:monitorChanges:cloudKitContainer:)()
{
  OUTLINED_FUNCTION_1();
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 240) = v5;
  *(v1 + 80) = v6;
  *(v1 + 120) = *v0;
  v7 = sub_197615ED0();
  *(v1 + 128) = v7;
  OUTLINED_FUNCTION_20_0(v7);
  *(v1 + 136) = v8;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  v9 = sub_197615880();
  *(v1 + 160) = v9;
  OUTLINED_FUNCTION_20_0(v9);
  *(v1 + 168) = v10;
  *(v1 + 176) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35568, &qword_197621E58);
  OUTLINED_FUNCTION_5_2(v11);
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  v12 = sub_197615970();
  *(v1 + 200) = v12;
  OUTLINED_FUNCTION_20_0(v12);
  *(v1 + 208) = v13;
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  *(v1 + 232) = swift_task_alloc();
  if (qword_1ED817448 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED817450;

  return MEMORY[0x1EEE6DFA0](sub_19755B6D4, v14, 0);
}

BOOL MiniTipsDatastore.hasConfigured.getter()
{
  v0 = OUTLINED_FUNCTION_18_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  v3 = OUTLINED_FUNCTION_5_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  sub_19755BE50(&v9 - v4);
  v6 = sub_197615970();
  v7 = __swift_getEnumTagSinglePayload(v5, 1, v6) != 1;
  sub_19755C7C8(v5, &qword_1EAF34610, &qword_197621E30);
  return v7;
}

Swift::Bool __swiftcall URL.createDirectory(using:)(NSFileManager using)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (sub_19755F3FC(v1))
  {
    return 1;
  }

  v3 = sub_1976158C0();
  v9[0] = 0;
  v4 = [(objc_class *)using.super.isa createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:v9];

  if (v4)
  {
    v5 = v9[0];
    return 1;
  }

  v7 = v9[0];
  v8 = sub_197615830();

  swift_willThrow();
  return 0;
}

uint64_t sub_19755C404(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void static MiniTipsDatastore.activeStores.setter(uint64_t a1)
{
  if (qword_1ED817368 != -1)
  {
    OUTLINED_FUNCTION_0_46(&qword_1ED817368);
  }

  os_unfair_lock_lock(&dword_1ED817330);

  qword_1ED817338 = a1;

  os_unfair_lock_unlock(&dword_1ED817330);
}

uint64_t sub_19755C4D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_19755C540(a4, a5[7] + 8 * a1);
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

uint64_t sub_19755C540(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346B0, &qword_1976190C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19755C5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_19755C610(uint64_t a1, uint64_t a2)
{
  sub_197617190();
  sub_197616260();
  sub_1976171F0();
  v2 = OUTLINED_FUNCTION_22();

  return sub_19755C684(v2, v3, v4);
}

unint64_t sub_19755C684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_197616EF0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_19755C768()
{
  type metadata accessor for DatastoreActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1ED817450 = v0;
  return result;
}

uint64_t sub_19755C7C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_13();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_19755C820(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_5();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1)
{

  return sub_197616F60();
}

void OUTLINED_FUNCTION_18_2()
{
  v2 = v0[100];
  v0[97] = v0[99];
  v0[98] = v2;

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_18_5(uint64_t a1, uint64_t a2, ...)
{

  return sub_197615BD0();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_18_8()
{
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197617240();
}

uint64_t OUTLINED_FUNCTION_24_1()
{

  return swift_arrayInitWithCopy();
}

unint64_t OUTLINED_FUNCTION_24_10(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_197558E6C(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_24_12()
{

  return sub_197616350();
}

void sub_19755CB18(uint64_t a1)
{
  v2 = v1;
  v12[3] = *MEMORY[0x1E69E9840];
  if (sub_19755F3FC(a1))
  {
    v3 = sub_1976158C0();
    v12[0] = 0;
    v4 = [v2 removeItemAtURL:v3 error:v12];

    v5 = v12[0];
    if (v4)
    {

      v6 = v5;
    }

    else
    {
      v7 = v12[0];
      v8 = sub_197615830();

      swift_willThrow();
      if (qword_1ED815ED8 != -1)
      {
        OUTLINED_FUNCTION_0_33(&qword_1ED815ED8);
      }

      v9 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v9, qword_1ED815EE0);
      OUTLINED_FUNCTION_1_42();
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000027, 0x8000000197625D30);
      v10 = sub_197615920();
      MEMORY[0x19A8E2A50](v10);

      MEMORY[0x19A8E2A50](8250, 0xE200000000000000);
      swift_getErrorValue();
      sub_197616EB0();
      sub_197558864(v12[0], v12[1], v11);
    }
  }
}

uint64_t sub_19755CCE8()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_19755CDCC()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_16();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t sub_19755CEB0()
{
  OUTLINED_FUNCTION_1();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35620, &qword_197622670);
  v1[11] = v7;
  v1[12] = *(v7 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19755CF80, v0, 0);
}

uint64_t sub_19755CF80()
{
  OUTLINED_FUNCTION_8_0();
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_197615CF0();

  v5 = sub_19755D67C(v4, 0, v3, v1);
  v0[14] = v5;
  if (v2)
  {
    v6 = v5;
    v7 = v0[8];

    v15 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    OUTLINED_FUNCTION_23_10(v8);

    return v15(v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35610, &qword_197622548);
    sub_197616630();
    OUTLINED_FUNCTION_0_45();
    v0[16] = sub_19756F538(v10, 255, v11, &protocol conformance descriptor for MiniTipsDatastore.DatastoreQueue);
    swift_task_alloc();
    OUTLINED_FUNCTION_13_16();
    v0[17] = v12;
    *v12 = v13;
    v14 = OUTLINED_FUNCTION_1_48(v12);

    return MEMORY[0x1EEE6D9C8](v14);
  }
}

uint64_t sub_19755D180(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_19755CDCC;

  return v5();
}

uint64_t sub_19755D268()
{
  OUTLINED_FUNCTION_25();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19755CDC8;
  OUTLINED_FUNCTION_18_0();

  return sub_19755D30C();
}

uint64_t sub_19755D30C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19755CCE8;

  return sub_19755CEB0();
}

void *OUTLINED_FUNCTION_21_1(void *result)
{
  *result = v1;
  result[1] = v2;
  return result;
}

double OUTLINED_FUNCTION_21_10(uint64_t a1, uint64_t a2)
{

  return sub_197579604();
}

void OUTLINED_FUNCTION_21_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_1975FA290();
}

uint64_t OUTLINED_FUNCTION_16_8()
{
  v3 = *(v1 + 8);
  *(v2 - 312) = v1 + 8;
  *(v2 - 304) = v3;
  return v0;
}

void *OUTLINED_FUNCTION_16_9()
{
  v2 = *(v0 + 56);

  return __swift_project_boxed_opaque_existential_1Tm((v0 + 32), v2);
}

uint64_t OUTLINED_FUNCTION_16_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{

  return sub_197616BC0();
}

uint64_t OUTLINED_FUNCTION_16_11()
{
  sub_19756A94C((v0 - 80), (v0 - 112));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_19755D67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_197615D00();

  sub_197615C50();
  sub_197615CA0();

  return v4;
}

uint64_t sub_19755D6F0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_19_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t sub_19755D780()
{
  OUTLINED_FUNCTION_1();
  v1 = sub_197615970();
  OUTLINED_FUNCTION_5_2(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_5_1(v4);
  *v5 = v6;
  v5[1] = sub_19755CDC8;

  return sub_19755D83C(v0 + v3);
}

uint64_t sub_19755D83C(uint64_t a1)
{
  type metadata accessor for MiniTipsDatastore(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_19755CDC8;

  return sub_19755EEA8(a1);
}

uint64_t sub_19755D8E0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_19_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

char *sub_19755D970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35568, &qword_197621E58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_197615EF0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197564CDC(a2, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    v13 = &qword_197621E58;
    sub_19755C404(v8, &qword_1EAF35568, &qword_197621E58);
    sub_19759228C();
    swift_allocError();
    *v14 = 0xD00000000000001FLL;
    v14[1] = 0x80000001976267E0;
    swift_willThrow();

    sub_19755C404(a2, &qword_1EAF35568, &qword_197621E58);
  }

  else
  {
    v19 = a2;
    (*(v10 + 32))(v12, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35680, &qword_197622790);
    v13 = ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_197618C10;
    (*(v10 + 16))(v13 + v15, v12, v9);
    v16 = sub_197615D30();
    if (!v4)
    {
      v13 = v16;
    }

    sub_19755C404(v19, &qword_1EAF35568, &qword_197621E58);
    (*(v10 + 8))(v12, v9);
  }

  return v13;
}

uint64_t sub_19755DC6C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35140, &qword_197621F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_197615970();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_modelContainer);
  if (v14)
  {

    sub_19755BE50(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      v18 = *(v8 + 32);
      v42 = v8 + 32;
      v43 = v18;
      v18(v13, v6, v7);
      v19 = sub_1976165B0();
      __swift_storeEnumTagSinglePayload(v46, 1, 1, v19);
      v20 = v0[2];
      v40 = v0[3];
      v41 = v20;
      v21 = v0[6];
      v38 = v0[7];
      v39 = v21;
      v22 = v0[9];
      v36 = v0[8];
      v37 = v22;
      (*(v8 + 16))(v11, v13, v7);
      v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v35 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v24 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
      v44 = v8;
      v45 = v13;
      v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
      v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      v43(v27 + v23, v11, v7);
      *(v27 + v35) = v36;
      *(v27 + v24) = v14;
      v28 = (v27 + v25);
      v29 = v38;
      *v28 = v39;
      v28[1] = v29;
      *(v27 + v26) = v37;
      v30 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
      v31 = v40;
      *v30 = v41;
      v30[1] = v31;

      v32 = v46;
      sub_1975FB620(0, 0, v46, &unk_197621F90, v27);
      v34 = v33;

      sub_19755C7C8(v32, &qword_1EAF35140, &qword_197621F80);
      (*(v44 + 8))(v45, v7);
      *(v1 + OBJC_IVAR____TtC10TipKitCore17MiniTipsDatastore_datastoreTask) = v34;
    }

    sub_19755C7C8(v6, &qword_1EAF34610, &qword_197621E30);
  }

  if (qword_1ED815ED8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v15, qword_1ED815EE0);
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_197616A20();

  v47 = 0xD000000000000016;
  v48 = 0x8000000197626110;
  MEMORY[0x19A8E2A50](v0[2], v0[3]);
  MEMORY[0x19A8E2A50](0xD000000000000017, 0x8000000197626250);
  sub_197558864(v47, v48, v16);
}

uint64_t sub_19755E0BC()
{
  v1 = sub_197615970();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (((((((((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v4 | 7);
}

uint64_t sub_19755E1E0()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_1(v3);
  *v4 = v5;
  v4[1] = sub_1975FCD54;

  return v7(v1);
}

uint64_t sub_19755E2CC(uint64_t a1)
{
  v3 = sub_197615970();
  OUTLINED_FUNCTION_20_0(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v1 + 24);
  v17 = *(v1 + 16);
  v10 = *(v1 + v7);
  v11 = *(v1 + v8);
  v12 = *(v1 + v9);
  v13 = *(v1 + v9 + 8);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_19755CCE8;

  return sub_19755E448(a1, v17, v16, v1 + v5, v10, v11, v12, v13);
}

uint64_t sub_19755E448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2232) = v14;
  *(v8 + 2216) = v13;
  *(v8 + 2168) = a8;
  *(v8 + 2120) = a7;
  *(v8 + 2072) = a6;
  *(v8 + 2024) = a5;
  *(v8 + 1976) = a4;
  v9 = sub_197615970();
  *(v8 + 2240) = v9;
  v10 = *(v9 - 8);
  *(v8 + 2248) = v10;
  *(v8 + 2256) = *(v10 + 64);
  *(v8 + 2264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19755E538, 0, 0);
}

uint64_t sub_19755E538()
{
  v1 = v0[283];
  v2 = v0[281];
  v3 = v0[280];
  v21 = v0[277];
  v4 = v0[271];
  v5 = v0[265];
  v6 = v0[259];
  v7 = v0[253];
  (*(v2 + 16))(v1, v0[247], v3);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v0[284] = v9;
  (*(v2 + 32))(v9 + v8, v1, v3);
  v10 = swift_task_alloc();
  v0[285] = v10;
  *(v10 + 16) = &unk_197621FB8;
  *(v10 + 24) = v9;
  swift_asyncLet_begin();
  v11 = swift_allocObject();
  v0[286] = v11;
  v11[2] = v7;
  v11[3] = v6;
  v11[4] = v5;
  v11[5] = v4;
  v12 = swift_task_alloc();
  v0[287] = v12;
  *(v12 + 16) = &unk_197621FD8;
  *(v12 + 24) = v11;

  swift_asyncLet_begin();
  v13 = swift_allocObject();
  v0[288] = v13;
  v13[2] = v21;
  v13[3] = v6;
  v13[4] = v7;
  v14 = swift_task_alloc();
  v0[289] = v14;
  *(v14 + 16) = &unk_197621FF0;
  *(v14 + 24) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35588, &qword_197622008);
  swift_asyncLet_begin();
  if (qword_1ED8172A8 != -1)
  {
    swift_once();
  }

  v15 = v0[279];
  v16 = v0[278];
  v17 = type metadata accessor for logger(0);
  __swift_project_value_buffer(v17, qword_1ED8172B0);
  sub_197616A20();

  MEMORY[0x19A8E2A50](v16, v15);
  MEMORY[0x19A8E2A50](0x6F6C206469642029, 0xEF203A7461206461);
  v18 = sub_197615920();
  MEMORY[0x19A8E2A50](v18);

  sub_197558864(0xD000000000000016, 0x8000000197626110, v19);

  return MEMORY[0x1EEE6DEB8](v0 + 2);
}

uint64_t sub_19755E8B8()
{
  sub_197615970();
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_19755E938()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_19755E980()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void *sub_19755E9C8()
{
  v0 = type metadata accessor for logger(0);
  __swift_allocate_value_buffer(v0, qword_1ED8172B0);
  *OUTLINED_FUNCTION_13_18() = 1;
  if (qword_1ED817298 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_1ED817298);
  }

  OUTLINED_FUNCTION_16_14();
  if (v1)
  {
    OUTLINED_FUNCTION_17_14();
  }

  return OUTLINED_FUNCTION_7_20();
}

uint64_t sub_19755EA78@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_197615880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  static URL.homeDirectoryForCurrentUser.getter(&v13 - v8);
  v10 = sub_197615970();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_19755ED78(v9);
    v11 = 1;
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x1E6968F58], v3);
    sub_1975607A8();
    sub_197615940();
    (*(v4 + 8))(v6, v3);
    (*(*(v10 - 8) + 8))(v9, v10);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v11, 1, v10);
}

uint64_t static URL.homeDirectoryForCurrentUser.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = getuid();
  v6 = getpwuid(v5);
  if (v6 && v6->pw_dir)
  {
    v7 = sub_197615970();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    sub_197615900();
    sub_19755ED78(v4);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
  }

  else
  {
    v9 = sub_197615970();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v9);
  }
}

uint64_t sub_19755ED78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19755EDE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34610, &qword_197621E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_19755EE50()
{
  result = qword_1ED8167E0;
  if (!qword_1ED8167E0)
  {
    sub_197615970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8167E0);
  }

  return result;
}

uint64_t sub_19755EEA8(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_197615970();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19755EF74, 0, 0);
}

uint64_t sub_19755EF74()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_1976158D0();
  v5 = objc_opt_self();
  v6 = [v5 defaultManager];
  v7 = OUTLINED_FUNCTION_4_40();
  sub_19755F1B8(v7);

  v8 = *(v3 + 8);
  v9 = OUTLINED_FUNCTION_3_37();
  v8(v9);
  sub_1976158D0();
  v10 = [v5 defaultManager];
  v11 = OUTLINED_FUNCTION_4_40();
  sub_19755F1B8(v11);

  v12 = OUTLINED_FUNCTION_3_37();
  v8(v12);
  sub_1976158E0();
  sub_1976158D0();
  (v8)(v1, v2);
  v13 = [v5 defaultManager];
  v14 = OUTLINED_FUNCTION_4_40();
  sub_19755CB18(v14);

  v15 = OUTLINED_FUNCTION_3_37();
  v8(v15);
  sub_1976158E0();
  sub_1976158D0();
  (v8)(v1, v2);
  v16 = [v5 defaultManager];
  v17 = OUTLINED_FUNCTION_4_40();
  sub_19755CB18(v17);

  v18 = OUTLINED_FUNCTION_3_37();
  v8(v18);

  OUTLINED_FUNCTION_3();

  return v19();
}

void sub_19755F1B8(uint64_t a1)
{
  v2 = v1;
  v12[3] = *MEMORY[0x1E69E9840];
  if (sub_19755F398(a1))
  {
    v3 = sub_1976158C0();
    v12[0] = 0;
    v4 = [v2 removeItemAtURL:v3 error:v12];

    v5 = v12[0];
    if (v4)
    {

      v6 = v5;
    }

    else
    {
      v7 = v12[0];
      v8 = sub_197615830();

      swift_willThrow();
      if (qword_1ED815ED8 != -1)
      {
        OUTLINED_FUNCTION_0_33(&qword_1ED815ED8);
      }

      v9 = type metadata accessor for logger(0);
      __swift_project_value_buffer(v9, qword_1ED815EE0);
      OUTLINED_FUNCTION_1_42();
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000025, 0x8000000197625D60);
      v10 = sub_197615920();
      MEMORY[0x19A8E2A50](v10);

      MEMORY[0x19A8E2A50](8250, 0xE200000000000000);
      swift_getErrorValue();
      sub_197616EB0();
      MEMORY[0x19A8E2A50](46, 0xE100000000000000);
      sub_197558864(v12[0], v12[1], v11);
    }
  }
}

id sub_19755F398(uint64_t a1)
{
  sub_197615920();
  v2 = sub_1976161B0();

  v3 = [v1 fileExistsAtPath_];

  return v3;
}

uint64_t sub_19755F3FC(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  sub_197615920();
  v2 = sub_1976161B0();

  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v5];

  return (v3 & v5);
}

uint64_t sub_19755F4A0()
{
  sub_19755F52C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_197618BF0;
  *(v0 + 32) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35328, &qword_197620D30);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35040, &qword_19761E9B8);
  *(v0 + 48) = type metadata accessor for RawDictionaryTransformer();
  return v0;
}

uint64_t sub_19755F52C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35638, &qword_1976226F8);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &qword_1EAF345D0;
    v2 = &qword_19761B410;
  }

  else
  {
    v1 = &unk_1EAF35640;
    v2 = &unk_197622700;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_19755F63C()
{
  v0 = objc_opt_self();
  v1 = [v0 valueTransformerNames];
  type metadata accessor for NSValueTransformerName(0);
  v2 = sub_197616460();

  v3 = sub_19755F7C8();
  v7 = v3;
  v6[2] = &v7;
  LOBYTE(v1) = sub_19755F828(sub_19755F8F4, v6, v2);

  if ((v1 & 1) == 0)
  {
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = sub_19755F7C8();
    [v0 setValueTransformer:v4 forName:v5];
  }
}

void sub_19755F77C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_19755F7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35638, &qword_1976226F8);
  sub_197616200();
  v0 = sub_1976161B0();

  return v0;
}

BOOL sub_19755F828(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v13 = *v6;
    v9 = v13;
    v10 = a1(&v13);
    if (v3)
    {

      return v7 != 0;
    }

    v11 = v10;

    ++v6;
  }

  while ((v11 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_19755F914(uint64_t a1, uint64_t a2)
{
  v2 = sub_1976161E0();
  v4 = v3;
  if (v2 == sub_1976161E0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_197616EF0();
  }

  return v7 & 1;
}

uint64_t sub_19755F9A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13();
  v5 = OUTLINED_FUNCTION_21();
  v6(v5);
  return a2;
}

uint64_t sub_19755F9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_13();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_19755FA5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v2 = *(v0 + 24);

  return __swift_mutable_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1)
{

  return sub_19755C404(a1, v1, v2);
}

void OUTLINED_FUNCTION_7_3()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_7_4(uint64_t a1, uint64_t a2)
{

  return sub_197615AE0();
}

uint64_t OUTLINED_FUNCTION_7_6()
{

  return sub_197616070();
}

void OUTLINED_FUNCTION_7_7()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_7_10@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 128) = &a2 - ((a1 + 15) & 0xFFFFFFFFFFFFFFF0);

  return sub_197615A60();
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_197616D80();
}

uint64_t OUTLINED_FUNCTION_7_15(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1976168B0();
}

uint64_t OUTLINED_FUNCTION_7_20()
{

  return sub_197615BA0();
}

uint64_t OUTLINED_FUNCTION_7_22()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_36_2()
{

  return swift_allocObject();
}

uint64_t sub_19755FD88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_25_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_197615B20();
}

uint64_t OUTLINED_FUNCTION_25_4(uint64_t a1)
{

  return sub_197615820();
}

void OUTLINED_FUNCTION_25_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  sub_197558864(a11, a12, a3);
}

uint64_t OUTLINED_FUNCTION_25_6(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_25_8(uint64_t a1)
{

  return sub_197617180();
}

unint64_t sub_19755FEB4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_19755FEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19755FF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19755FF88(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_19755FFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CoreRuleRecord(uint64_t a1)
{
  result = qword_1ED817258;
  if (!qword_1ED817258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CoreParameterRecord(uint64_t a1)
{
  result = qword_1ED817120;
  if (!qword_1ED817120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for CoreTipRecord(uint64_t a1)
{
  result = qword_1ED8170B8;
  if (!qword_1ED8170B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1975600FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CoreEventRecord(uint64_t a1)
{
  result = qword_1ED8171F0;
  if (!qword_1ED8171F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_19_1(uint64_t a1)
{
  v1[117] = a1;
  v1[99] = 0;
  v1[100] = 0xE000000000000000;

  return sub_197616A20();
}

uint64_t OUTLINED_FUNCTION_19_3(uint64_t a1, uint64_t a2)
{

  return sub_197616D30();
}

uint64_t OUTLINED_FUNCTION_19_4(uint64_t a1)
{
  *(v1 - 96) = a1;
  *(v1 - 88) = a1;
  v3 = MEMORY[0x1E697BC78];

  return MEMORY[0x1EEE6BF68](v1 - 112, v3, 1);
}

uint64_t OUTLINED_FUNCTION_19_5(uint64_t a1)
{

  return sub_197615700();
}

uint64_t sub_197560338(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return swift_allocObject();
}

double OUTLINED_FUNCTION_32_2()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

void OUTLINED_FUNCTION_32_6()
{

  JUMPOUT(0x19A8E2A50);
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 128, v0);
}

void *OUTLINED_FUNCTION_20_3()
{
  v3 = (*(v1 + 1584) + 320 * v0 + 32);

  return memcpy((v1 + 16), v3, 0x139uLL);
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1975586C0(a1, va);
}

uint64_t OUTLINED_FUNCTION_20_6(uint64_t a1)
{

  return sub_197615700();
}

void OUTLINED_FUNCTION_20_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_19757EEC4();
}

unint64_t OUTLINED_FUNCTION_20_10()
{

  return sub_19755C610(v1, v0);
}

uint64_t OUTLINED_FUNCTION_20_13(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = result;
  v6[4] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  v2 = *(v0 - 104);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 - 128, v2);
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  return sub_1975CFB0C(va, v16, v17);
}

uint64_t OUTLINED_FUNCTION_11_11(uint64_t a1)
{

  return sub_1976156F0();
}

uint64_t OUTLINED_FUNCTION_11_14()
{
}

uint64_t OUTLINED_FUNCTION_11_16()
{
  result = v1;
  *(v2 - 144) = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_22()
{

  return sub_197615AD0();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1975607A8()
{
  result = qword_1ED816FD0;
  if (!qword_1ED816FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816FD0);
  }

  return result;
}

id sub_197560820()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t sub_19756087C()
{
  result = qword_1ED816E50;
  if (!qword_1ED816E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816E50);
  }

  return result;
}

uint64_t sub_197560918(uint64_t a1)
{
  result = sub_197615B40();
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

uint64_t sub_197560A1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35648, &qword_197622750);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19761C160;
  v1 = type metadata accessor for CoreTipRecord(0);
  v2 = sub_19755FFD0(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = type metadata accessor for CoreRuleRecord(0);
  v4 = sub_19755FFD0(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  v5 = type metadata accessor for CoreParameterRecord(0);
  v6 = sub_19755FFD0(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  v7 = type metadata accessor for CoreEventRecord(0);
  v8 = sub_19755FFD0(&qword_1ED817218, type metadata accessor for CoreEventRecord, &protocol conformance descriptor for CoreEventRecord);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  v9 = type metadata accessor for CoreDonationRecord(0);
  v10 = sub_19755FFD0(&qword_1ED8171B0, type metadata accessor for CoreDonationRecord, &protocol conformance descriptor for CoreDonationRecord);
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  return v0;
}

uint64_t sub_197560BC4(uint64_t a1)
{
  result = sub_197615B40();
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

uint64_t sub_197560C88(uint64_t a1)
{
  result = sub_197615B40();
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

uint64_t sub_197561020(uint64_t a1)
{
  result = sub_197615B40();
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

uint64_t sub_1975611B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CoreDonationRecord(uint64_t a1)
{
  result = qword_1ED817188;
  if (!qword_1ED817188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_197561290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1975612D8(uint64_t a1)
{
  result = sub_197615B40();
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

uint64_t static CoreTipRecord.schemaMetadata.getter()
{
  v45 = sub_197616010();
  v0 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_6_0();
  v41 = v2 - v1;
  v40 = sub_197615FC0();
  OUTLINED_FUNCTION_14();
  v39 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_6_0();
  v38 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E0, &unk_19761B3C0);
  v7 = *(v0 + 72);
  v44 = v0;
  v8 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_197620BF0;
  v42 = v9;
  v43 = v8;
  swift_getKeyPath();
  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  sub_197616060();
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  sub_197616070();
  sub_197560338(&qword_1ED816FD8, MEMORY[0x1E697BD30]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v47 = sub_197615A60();
  __swift_allocate_boxed_opaque_existential_0(v46);
  sub_197615A50();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v10 = sub_197616070();
  OUTLINED_FUNCTION_31(v10);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v11 = sub_197616070();
  OUTLINED_FUNCTION_31(v11);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v12 = MEMORY[0x1E69E7290];
  v47 = MEMORY[0x1E69E7290];
  LOWORD(v46[0]) = 0;
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v13 = sub_197616070();
  OUTLINED_FUNCTION_31(v13);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v47 = v12;
  LOWORD(v46[0]) = 1;
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v14 = sub_197616070();
  OUTLINED_FUNCTION_31(v14);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E8, &qword_19761E9B0);
  sub_197616050();
  *(swift_allocObject() + 16) = xmmword_197618C10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35328, &qword_197620D30);
  sub_197616040();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v15 = sub_197616070();
  OUTLINED_FUNCTION_31(v15);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v16 = sub_1976160B0();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343A8, &qword_19761C270);
  v46[0] = v16;
  *(swift_allocObject() + 16) = xmmword_197618C10;
  type metadata accessor for RawDictionaryTransformer();
  sub_197616040();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v17 = sub_197616070();
  OUTLINED_FUNCTION_31(v17);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  v46[0] = MEMORY[0x1E69E7CC0];
  (*(v39 + 104))(v38, *MEMORY[0x1E697BCD8], v40);
  swift_getKeyPath();
  sub_197615FD0();
  swift_allocObject();
  sub_197615FE0();
  sub_197560338(qword_1ED817008, MEMORY[0x1E697BCF0]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35330, &qword_197620DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35338, &unk_197620DC0);
  OUTLINED_FUNCTION_14();
  v19 = v18;
  v21 = *(v20 + 72);
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_19761C160;
  v24 = (v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_197619030;
  *(v25 + 32) = swift_getKeyPath();
  *v24 = v25;
  v26 = *(v19 + 104);
  OUTLINED_FUNCTION_46();
  v26();
  v27 = OUTLINED_FUNCTION_51();
  *(v27 + 16) = xmmword_197619030;
  *(v27 + 32) = swift_getKeyPath();
  *(v24 + v21) = v27;
  OUTLINED_FUNCTION_46();
  v26();
  v28 = OUTLINED_FUNCTION_51();
  *(v28 + 16) = xmmword_197619030;
  *(v28 + 32) = swift_getKeyPath();
  *(v24 + 2 * v21) = v28;
  OUTLINED_FUNCTION_46();
  v26();
  v29 = OUTLINED_FUNCTION_51();
  *(v29 + 16) = xmmword_197619030;
  *(v29 + 32) = swift_getKeyPath();
  *(v24 + 3 * v21) = v29;
  OUTLINED_FUNCTION_46();
  v26();
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_19761C170;
  *(v30 + 32) = swift_getKeyPath();
  *(v30 + 40) = swift_getKeyPath();
  *(v24 + 4 * v21) = v30;
  OUTLINED_FUNCTION_46();
  v26();
  v31 = OUTLINED_FUNCTION_18_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  swift_allocObject();
  OUTLINED_FUNCTION_60();
  sub_197616020();
  sub_1975E5660(&qword_1ED816FE0, &unk_1EAF35340);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  sub_197561FE0();
  v34 = v33;
  v35 = *(v33 + 16);
  if (v35 >= *(v33 + 24) >> 1)
  {
    sub_197561FE0();
    v34 = v37;
  }

  *(v34 + 16) = v35 + 1;
  (*(v44 + 32))(v34 + v43 + v35 * v7, v41, v45);
  sub_197562DA0(v34);
  return v42;
}

void OUTLINED_FUNCTION_50(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 152) = a6;
  *(v7 - 144) = a7;
  *(v7 - 160) = a4;
  *(v7 - 156) = a5;
  *(v7 - 168) = a3;
  *(v7 - 120) = a2;
}

void sub_197561FE0()
{
  OUTLINED_FUNCTION_28_1();
  if (v3)
  {
    OUTLINED_FUNCTION_26_2();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_30_3();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1975620C4(*(v0 + 16), v4, &qword_1EAF349E0, &unk_19761B3C0, MEMORY[0x1E697BD08]);
  OUTLINED_FUNCTION_40_0();
  sub_197616010();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_41_0();
  if (v1)
  {
    OUTLINED_FUNCTION_33_1(MEMORY[0x1E697BD08], v7);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_24_1();
  }
}

void *sub_1975620C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = OUTLINED_FUNCTION_40_0();
  v9 = a5(v8);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void static CoreEventRecord.schemaMetadata.getter()
{
  OUTLINED_FUNCTION_26_3();
  v43 = v0;
  v44 = v1;
  v40 = sub_197616010();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_6_0();
  v37 = v4 - v3;
  v35 = sub_197615FC0();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v36 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E0, &unk_19761B3C0);
  v10 = *(v2 + 72);
  v39 = v2;
  v11 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  *(swift_allocObject() + 16) = xmmword_19761C160;
  v38 = v11;
  swift_getKeyPath();
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_197616060();
  swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11_0();
  sub_197616070();
  sub_1975611B4(&qword_1ED816FD8, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  *(&v42 + 1) = sub_197615A60();
  __swift_allocate_boxed_opaque_existential_0(&v41);
  sub_197615A50();
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  sub_197616070();
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v13 = sub_1976160B0();
  *(&v42 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343A8, &qword_19761C270);
  *&v41 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E8, &qword_19761E9B0);
  sub_197616050();
  *(swift_allocObject() + 16) = xmmword_197618C10;
  type metadata accessor for RawDictionaryTransformer();
  sub_197616040();
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  sub_197616070();
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  *(&v42 + 1) = v14;
  *&v41 = v12;
  v15 = *MEMORY[0x1E697BCD8];
  v16 = *(v6 + 104);
  v16(v36, v15, v35);
  sub_197615FD0();
  swift_allocObject();
  OUTLINED_FUNCTION_15_0();
  sub_197615FE0();
  sub_1975611B4(qword_1ED817008, MEMORY[0x1E697BCF0], MEMORY[0x1E697BCE8]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  *(&v42 + 1) = v14;
  *&v41 = MEMORY[0x1E69E7CC0];
  v16(v36, v15, v35);
  swift_getKeyPath();
  swift_allocObject();
  OUTLINED_FUNCTION_15_0();
  sub_197615FE0();
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v41 = 0u;
  v42 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CE8, &qword_19761C2D0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CF0, &unk_19761C2D8);
  OUTLINED_FUNCTION_0();
  v19 = v18;
  v21 = *(v20 + 72);
  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_197618BF0;
  v24 = (v23 + v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_197619030;
  *(v25 + 32) = swift_getKeyPath();
  *v24 = v25;
  v26 = *MEMORY[0x1E697BD10];
  v27 = *(v19 + 104);
  v27(v24, v26, v17);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_197619030;
  *(v28 + 32) = swift_getKeyPath();
  *(v24 + v21) = v28;
  v27((v24 + v21), v26, v17);
  v29 = (v24 + 2 * v21);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_19761C170;
  *(v30 + 32) = swift_getKeyPath();
  *(v30 + 40) = swift_getKeyPath();
  *v29 = v30;
  v27(v29, v26, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CF8, &qword_19761C2E8);
  swift_allocObject();
  sub_197616020();
  sub_197559AAC(&qword_1ED816FF8, &qword_1EAF34CF8, &qword_19761C2E8, MEMORY[0x1E697BD18]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  sub_197561FE0();
  v32 = v31;
  v33 = *(v31 + 16);
  if (v33 >= *(v31 + 24) >> 1)
  {
    sub_197561FE0();
    v32 = v34;
  }

  *(v32 + 16) = v33 + 1;
  (*(v39 + 32))(v32 + v38 + v33 * v10, v37, v40);
  sub_197562DA0(v32);
  OUTLINED_FUNCTION_25_2();
}

void sub_197562ABC()
{
  OUTLINED_FUNCTION_16_0();
  CoreEventRecord.rules.getter();
  *v0 = v1;
}

void sub_197562AE8()
{
  OUTLINED_FUNCTION_16_0();
  CoreEventRecord.donations.getter();
  *v0 = v1;
}

void OUTLINED_FUNCTION_27()
{

  JUMPOUT(0x19A8E2A50);
}

void OUTLINED_FUNCTION_27_3(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(v3 - 160) = a1;
  *(v3 - 152) = a2;
  *(v3 - 112) = a3;
}

uint64_t OUTLINED_FUNCTION_27_4()
{

  return swift_getErrorValue();
}

uint64_t OUTLINED_FUNCTION_27_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_26_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1975586C0(v4, va);
}

uint64_t OUTLINED_FUNCTION_26_4(uint64_t a1, uint64_t a2)
{

  return sub_197573E58(a1, a2, sub_197574924);
}

uint64_t OUTLINED_FUNCTION_26_5()
{

  return sub_197615820();
}

uint64_t OUTLINED_FUNCTION_26_6()
{

  return sub_197616A20();
}

uint64_t OUTLINED_FUNCTION_26_7()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_38_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_197562DA0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_13_2(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1975BC460(result, 1, sub_197561FE0);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_197616010();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_197562EA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_36_1();
  if (v8 && (a4(0), OUTLINED_FUNCTION_13(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      v10 = OUTLINED_FUNCTION_11_3();

      MEMORY[0x1EEE6BCF8](v10);
    }
  }

  else
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_11_3();

    MEMORY[0x1EEE6BD00](v11);
  }
}

uint64_t static CoreRuleRecord.schemaMetadata.getter()
{
  v49 = sub_197616010();
  v0 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_6_0();
  v45 = v2 - v1;
  sub_197615FC0();
  OUTLINED_FUNCTION_0();
  v52 = v4;
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_0();
  v44 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E0, &unk_19761B3C0);
  v7 = *(v0 + 72);
  v48 = v0;
  v8 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_19761E820;
  v47 = v8;
  v46 = v9;
  swift_getKeyPath();
  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  sub_197616060();
  swift_allocObject();
  OUTLINED_FUNCTION_11_0();
  sub_197616070();
  sub_1975600FC(&qword_1ED816FD8, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v55 = sub_197615A60();
  __swift_allocate_boxed_opaque_existential_0(v54);
  sub_197615A50();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v10 = sub_197616070();
  OUTLINED_FUNCTION_31(v10);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v11 = MEMORY[0x1E69E7290];
  v55 = MEMORY[0x1E69E7290];
  LOWORD(v54[0]) = 0;
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v12 = sub_197616070();
  OUTLINED_FUNCTION_31(v12);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v55 = v11;
  LOWORD(v54[0]) = 0;
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v13 = sub_197616070();
  OUTLINED_FUNCTION_31(v13);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E8, &qword_19761E9B0);
  sub_197616050();
  *(swift_allocObject() + 16) = xmmword_197618C10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35040, &qword_19761E9B8);
  sub_197616040();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_11_0();
  v14 = sub_197616070();
  OUTLINED_FUNCTION_31(v14);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v15 = sub_1976160B0();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF343A8, &qword_19761C270);
  v54[0] = v15;
  *(swift_allocObject() + 16) = xmmword_197618C10;
  type metadata accessor for RawDictionaryTransformer();
  sub_197616040();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_11_0();
  v16 = sub_197616070();
  OUTLINED_FUNCTION_31(v16);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v17 = OUTLINED_FUNCTION_32_2();
  v18 = *MEMORY[0x1E697BCE0];
  v50 = *(v52 + 104);
  v50(v44, v18, v53, v17);
  sub_197615FD0();
  swift_allocObject();
  OUTLINED_FUNCTION_15_0();
  sub_197615FE0();
  sub_1975600FC(qword_1ED817008, MEMORY[0x1E697BCF0], MEMORY[0x1E697BCE8]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  v51 = v7;
  swift_getKeyPath();
  v19 = OUTLINED_FUNCTION_32_2();
  v50(v44, v18, v53, v19);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_15_0();
  v20 = sub_197615FE0();
  OUTLINED_FUNCTION_39_1(v20);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v21 = OUTLINED_FUNCTION_32_2();
  v50(v44, v18, v53, v21);
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_15_0();
  v22 = sub_197615FE0();
  OUTLINED_FUNCTION_39_1(v22);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v23 = OUTLINED_FUNCTION_32_2();
  v50(v44, v18, v53, v23);
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_37_1();
  v24 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_15_0();
  sub_197615FE0();
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  v54[0] = v24;
  (v50)(v44, *MEMORY[0x1E697BCD8], v53);
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_15_0();
  v25 = sub_197615FE0();
  OUTLINED_FUNCTION_31(v25);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35048, &qword_19761EAA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35050, &unk_19761EAA8);
  OUTLINED_FUNCTION_0();
  v27 = v26;
  v29 = *(v28 + 72);
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_19761C160;
  v32 = (v31 + v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_197619030;
  *(v33 + 32) = swift_getKeyPath();
  *v32 = v33;
  v34 = *(v27 + 104);
  OUTLINED_FUNCTION_34_2();
  v34();
  v35 = OUTLINED_FUNCTION_36_2();
  *(v35 + 16) = xmmword_197619030;
  *(v35 + 32) = swift_getKeyPath();
  *(v32 + v29) = v35;
  OUTLINED_FUNCTION_34_2();
  v34();
  v36 = OUTLINED_FUNCTION_36_2();
  *(v36 + 16) = xmmword_197619030;
  *(v36 + 32) = swift_getKeyPath();
  *(v32 + 2 * v29) = v36;
  OUTLINED_FUNCTION_34_2();
  v34();
  v37 = OUTLINED_FUNCTION_36_2();
  *(v37 + 16) = xmmword_197619030;
  *(v37 + 32) = swift_getKeyPath();
  *(v32 + 3 * v29) = v37;
  OUTLINED_FUNCTION_34_2();
  v34();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_19761C170;
  *(v38 + 32) = swift_getKeyPath();
  *(v38 + 40) = swift_getKeyPath();
  *(v32 + 4 * v29) = v38;
  OUTLINED_FUNCTION_34_2();
  v34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35058, &qword_19761EAB8);
  swift_allocObject();
  OUTLINED_FUNCTION_42();
  sub_197616020();
  sub_197559AAC(&qword_1ED817000, &qword_1EAF35058, &qword_19761EAB8, MEMORY[0x1E697BD18]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  sub_197561FE0();
  v40 = v39;
  v41 = *(v39 + 16);
  if (v41 >= *(v39 + 24) >> 1)
  {
    sub_197561FE0();
    v40 = v43;
  }

  *(v40 + 16) = v41 + 1;
  (*(v48 + 32))(v40 + v47 + v41 * v51, v45, v49);
  sub_197562DA0(v40);
  return v46;
}

uint64_t static CoreParameterRecord.schemaMetadata.getter()
{
  v39 = sub_197616010();
  v0 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_6_0();
  v35 = v2 - v1;
  v34 = sub_197615FC0();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6_0();
  v33 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E0, &unk_19761B3C0);
  v8 = *(v0 + 72);
  v38 = v0;
  v9 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_19761C160;
  v36 = v9;
  v37 = v10;
  swift_getKeyPath();
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  sub_197616060();
  swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_7_6();
  sub_19755FD88(&qword_1ED816FD8, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  *(&v41 + 1) = sub_197615A60();
  __swift_allocate_boxed_opaque_existential_0(&v40);
  sub_197615A50();
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v40 = 0u;
  v41 = 0u;
  OUTLINED_FUNCTION_20_1();
  v12 = OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_23_3(v12);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  *(&v41 + 1) = MEMORY[0x1E69E6158];
  *&v40 = 0;
  *(&v40 + 1) = 0xE000000000000000;
  OUTLINED_FUNCTION_20_1();
  v13 = OUTLINED_FUNCTION_7_6();
  OUTLINED_FUNCTION_23_3(v13);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  *(&v41 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34380, &qword_197618380);
  *&v40 = v11;
  (*(v4 + 104))(v33, *MEMORY[0x1E697BCD8], v34);
  sub_197615FD0();
  swift_allocObject();
  sub_197615FE0();
  sub_19755FD88(qword_1ED817008, MEMORY[0x1E697BCF0], MEMORY[0x1E697BCE8]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  swift_getKeyPath();
  v40 = 0u;
  v41 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D58, &qword_19761CA38);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D60, &unk_19761CA40);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 72);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_197618BF0;
  v21 = (v20 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_197619030;
  *(v22 + 32) = swift_getKeyPath();
  *v21 = v22;
  v23 = *MEMORY[0x1E697BD10];
  v24 = *(v16 + 104);
  v24(v21, v23, v14);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_197619030;
  *(v25 + 32) = swift_getKeyPath();
  *(v21 + v18) = v25;
  v24((v21 + v18), v23, v14);
  v26 = (v21 + 2 * v18);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_19761C170;
  *(v27 + 32) = swift_getKeyPath();
  *(v27 + 40) = swift_getKeyPath();
  *v26 = v27;
  v24(v26, v23, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D68, &qword_19761CA50);
  swift_allocObject();
  sub_197616020();
  sub_197559AAC(&qword_1ED816FE8, &qword_1EAF34D68, &qword_19761CA50, MEMORY[0x1E697BD18]);
  OUTLINED_FUNCTION_17_4();
  sub_197616000();
  sub_197561FE0();
  v29 = v28;
  v30 = *(v28 + 16);
  if (v30 >= *(v28 + 24) >> 1)
  {
    sub_197561FE0();
    v29 = v32;
  }

  *(v29 + 16) = v30 + 1;
  (*(v38 + 32))(v29 + v36 + v30 * v8, v35, v39);
  sub_197562DA0(v29);
  return v37;
}

uint64_t static CoreDonationRecord.schemaMetadata.getter()
{
  v28 = sub_197616010();
  v0 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_6_0();
  v25 = v2 - v1;
  v3 = sub_197615FC0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E0, &unk_19761B3C0);
  v10 = *(v0 + 72);
  v27 = v0;
  v11 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_197618BF0;
  v26 = v12;
  swift_getKeyPath();
  *(&v30 + 1) = sub_197615A60();
  __swift_allocate_boxed_opaque_existential_1Tm(&v29);
  sub_197615A50();
  sub_197616060();
  swift_allocObject();
  OUTLINED_FUNCTION_35();
  sub_197616070();
  sub_197561290(&qword_1ED816FD8, MEMORY[0x1E697BD30], MEMORY[0x1E697BD28]);
  OUTLINED_FUNCTION_37_0();
  sub_197616000();
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349E8, &qword_19761E9B0);
  v13 = sub_197616050();
  OUTLINED_FUNCTION_20_0(v13);
  *(OUTLINED_FUNCTION_32_1() + 16) = xmmword_197618C10;
  type metadata accessor for RawDictionaryTransformer();
  sub_197616040();
  swift_allocObject();
  OUTLINED_FUNCTION_35();
  sub_197616070();
  OUTLINED_FUNCTION_37_0();
  sub_197616000();
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  (*(v5 + 104))(v9, *MEMORY[0x1E697BCE0], v3);
  sub_197615FD0();
  swift_allocObject();
  sub_197615FE0();
  sub_197561290(qword_1ED817008, MEMORY[0x1E697BCF0], MEMORY[0x1E697BCE8]);
  OUTLINED_FUNCTION_37_0();
  sub_197616000();
  swift_getKeyPath();
  v29 = 0u;
  v30 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349F0, &qword_19761B400);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF349F8, &qword_19761B408);
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v17 = OUTLINED_FUNCTION_32_1();
  *(v17 + 16) = xmmword_197618C10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_197619030;
  KeyPath = swift_getKeyPath();
  *(v17 + v11) = v18;
  *(v18 + 32) = KeyPath;
  (*(v16 + 104))(v17 + v11, *MEMORY[0x1E697BD10], v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34A00, &qword_19761B418);
  swift_allocObject();
  sub_197616020();
  sub_19755A45C();
  OUTLINED_FUNCTION_37_0();
  sub_197616000();
  sub_197561FE0();
  v21 = v20;
  v22 = *(v20 + 16);
  if (v22 >= *(v20 + 24) >> 1)
  {
    sub_197561FE0();
    v21 = v24;
  }

  *(v21 + 16) = v22 + 1;
  (*(v27 + 32))(v21 + v11 + v22 * v10, v25, v28);
  sub_197562DA0(v21);
  return v26;
}

uint64_t sub_1975649B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  if (a3 == 1)
  {
    return sub_197615EB0();
  }

  v8 = a3;
  LOBYTE(v9) = a1;
  v10 = &unk_1EAF34000;
  v11 = &unk_1EAF3E000;
  if (!a3)
  {
    if (a1)
    {
      v18 = a6;
      goto LABEL_10;
    }

    return sub_197615EB0();
  }

  v6 = a2;
  v18 = a6;
  if (qword_1EAF34280 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v17[0] = v6;
    v17[1] = v8;
    MEMORY[0x1EEE9AC00](a1);
    v16[2] = v17;
    if (sub_1975544B4(sub_197556D58, v16, v12))
    {
      return sub_197615EC0();
    }

    if ((v9 & 1) == 0)
    {
      break;
    }

LABEL_10:
    if (v10[80] != -1)
    {
      OUTLINED_FUNCTION_0_47(&qword_1EAF34280);
    }

    v10 = 0;
    v9 = v11[101];
    v11 = *(v9 + 16);
    for (i = (v9 + 40); ; i += 2)
    {
      v14 = *(v9 + 16);
      if (v11 == v10)
      {
        if (!v14)
        {
          goto LABEL_19;
        }

        sub_197615EC0();
      }

      if (v10 >= v14)
      {
        break;
      }

      v6 = *(i - 1);
      v8 = *i;

      if (sub_1976162F0())
      {
        sub_197615EC0();
      }

      v10 = (v10 + 1);
    }

    __break(1u);
LABEL_23:
    a1 = OUTLINED_FUNCTION_0_47(&qword_1EAF34280);
  }

LABEL_19:
  sub_19759228C();
  swift_allocError();
  *v15 = 0xD000000000000027;
  v15[1] = 0x8000000197626790;
  return swift_willThrow();
}

unint64_t sub_197564BD8()
{
  result = qword_1ED816E48;
  if (!qword_1ED816E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816E48);
  }

  return result;
}

uint64_t sub_197564C90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_28_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13();
  v5 = OUTLINED_FUNCTION_21();
  v6(v5);
  return v4;
}

uint64_t sub_197564CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35568, &qword_197621E58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197564D4C(uint64_t a1)
{
  swift_getObjCClassMetadata();
  sub_197564D84();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_197564D90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35630, &qword_1976226F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_197618C10;
  v1 = sub_19756087C();
  *(v0 + 32) = &_s15TipsSchemaV0001ON;
  *(v0 + 40) = v1;
  return v0;
}

uint64_t sub_197564DFC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_19_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t sub_197564E8C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1975FBD94;

  return v5();
}

uint64_t sub_197564F78()
{
  OUTLINED_FUNCTION_25();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1975EDA70;
  v4 = OUTLINED_FUNCTION_18_0();

  return sub_197565018(v4, v5, v2);
}

uint64_t sub_197565018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  if (a1)
  {
    v6 = swift_task_alloc();
    v3[3] = v6;
    *v6 = v3;
    v6[1] = sub_1975FBC8C;

    return sub_197565104(a2, a3);
  }

  else
  {
    v8 = v3[1];

    return v8(1);
  }
}

uint64_t sub_197565104(uint64_t a1, uint64_t a2)
{
  *(v3 + 48) = v2;
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  *v6 = v3;
  v6[1] = sub_1975FF700;

  return sub_1975651AC(a1, a2);
}

uint64_t sub_1975651AC(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1975651D0, v2, 0);
}

uint64_t sub_1975651D0()
{
  v1 = v0[15];
  sub_197615CF0();
  v2 = *(v1 + 112);
  v0[16] = v2;
  v3 = *(v1 + 120);
  v0[17] = v3;

  v4 = OUTLINED_FUNCTION_31_0();
  v0[18] = sub_19755D67C(v4, v5, v2, v3);
  sub_19756FC90(v0 + 7);
  v6 = v0[10];
  v7 = __swift_project_boxed_opaque_existential_1Tm(v0 + 7, v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_197616690();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v0[19] = sub_19755FF88(&qword_1ED816F58, v10, _s16ContainerMonitorCMa, &unk_197622058);
  OUTLINED_FUNCTION_140();
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_104(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_13_20(v12);
  v14 = OUTLINED_FUNCTION_82();

  return MEMORY[0x1EEE6D8D0](v14);
}

uint64_t sub_1975653E0()
{

  sub_1975D54D0((v0 + 120));
  *(v0 + 112) = 0;
  swift_weakDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1975673F8, 0, 0);
}

uint64_t sub_197565498(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_197565558(*(v1 + 96), v2 | (v3 << 8));
  if (result)
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    v7[2] = v1;
    v8 = v2;
    v9 = v3;
    sub_19756559C(v6, sub_197565654, v7);
  }

  else
  {
    *(v1 + 96) = v2;
    *(v1 + 97) = v3;
  }

  return result;
}

uint64_t sub_197565558(__int16 a1, __int16 a2)
{
  if (a2 != a1)
  {
    return 1;
  }

  if (HIBYTE(a1) == 10)
  {
    if (HIBYTE(a2) != 10)
    {
      return 1;
    }
  }

  else if (HIBYTE(a1) != HIBYTE(a2) || HIBYTE(a2) == 10)
  {
    return 1;
  }

  return 0;
}

void sub_19756567C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1())
  {
    v14 = [objc_opt_self() currentRunLoop];
    v15 = swift_allocObject();
    v15[2] = a7;
    v15[3] = a3;
    v15[4] = a4;
    v15[5] = a1;
    v15[6] = a2;
    v15[7] = a5;
    v15[8] = a6;
    v17[4] = sub_197565A2C;
    v17[5] = v15;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1975659E8;
    v17[3] = &block_descriptor_1;
    v16 = _Block_copy(v17);

    [v14 performBlock_];
    _Block_release(v16);
  }
}

uint64_t sub_1975657DC(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 16));
  v2 = *(a1 + 20);
  os_unfair_lock_unlock((a1 + 16));
  return v2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_197565874()
{
  result = qword_1ED816D08;
  if (!qword_1ED816D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34AE8, &qword_19761B848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816D08);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroyTm_0()
{

  OUTLINED_FUNCTION_11_6();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1975659E8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_197565A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;

  withContinuousObservation<A>(_:continueObserving:didChange:)(a1, a2, sub_1976084E0, v14, a5, a6, a7);
}

uint64_t sub_197565AFC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_197565B4C()
{
  result = qword_1ED816700;
  if (!qword_1ED816700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34D78, &qword_19761CE28);
    sub_197559AAC(&qword_1ED8166F0, &qword_1EAF34D70, &unk_1976223F0, MEMORY[0x1E6968DA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816700);
  }

  return result;
}

unint64_t sub_197565BFC()
{
  result = qword_1ED816708;
  if (!qword_1ED816708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34D80, &qword_19761CE58);
    sub_197565B4C();
    sub_197565874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816708);
  }

  return result;
}

uint64_t sub_197565C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v75 = a4;
  v77 = a3;
  v66 = sub_197615F50();
  v65 = *(v66 - 8);
  v10 = MEMORY[0x1EEE9AC00](v66);
  v62 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v60 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v69 = &v60 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
  v14 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v16 = &v60 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D38, &unk_1976223A0);
  v17 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v19 = &v60 - v18;
  swift_getKeyPath();
  sub_197567FA8(&qword_1ED816CD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_197615640();
  v84 = a1;
  v85 = a2;
  v88 = v74;
  sub_197615AE0();
  v72 = a6;
  v73 = a5;
  v79 = a5;
  v80 = a6;
  v81 = a1;
  v82 = a2;
  v63 = a2;
  v20 = v76;
  v83 = v77;
  v76 = sub_197566864(v75, 0, MEMORY[0x1E69E7CC0], v19, v16, sub_1975C91C0, v78);
  if (v20)
  {

    (*(v14 + 8))(v16, v71);
    (*(v17 + 8))(v19, v70);
    v86 = 0;
    v87 = 0xE000000000000000;
    sub_197616A20();

    v86 = 0xD00000000000002ALL;
    v87 = 0x80000001976246C0;
    v22 = (*(*(v72 + 16) + 16))(v73);
    MEMORY[0x19A8E2A50](v22);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v23 = v86;
    v24 = v87;
    sub_19759228C();
    swift_allocError();
    *v25 = v23;
    v25[1] = v24;
    swift_willThrow();
    return v76;
  }

  v27 = v21;
  v61 = a1;
  (*(v14 + 8))(v16, v71);
  (*(v17 + 8))(v19, v70);
  v28 = v72;
  v29 = v73;
  v30 = v69;
  if (v27 & 1) != 0 || ((*(v72 + 48))(v73, v72))
  {
    goto LABEL_5;
  }

  v42 = CoreParameterProtocol.valueType.getter(v29, v28);
  v44 = v43;
  if (v42 == CoreParameterRecord.valueType.getter() && v44 == v45)
  {

LABEL_13:
    v48 = CoreParameterRecord.valueData.getter();
    v50 = v49;
    (*(v28 + 64))();
    sub_197576558(v48, v50);
    goto LABEL_14;
  }

  v47 = sub_197616EF0();

  if (v47)
  {
    goto LABEL_13;
  }

LABEL_5:
  KeyPath = swift_getKeyPath();
  (*(v28 + 56))(v29, v28);
  v32 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = sub_19756EF78(v30, v32, AssociatedConformanceWitness);
  v35 = v30;
  v36 = v28;
  v38 = v37;
  (*(v67 + 8))(v35, v32);
  sub_19757C310(KeyPath, v34, v38);

  sub_197567790(v34, v38);
  v39 = swift_getKeyPath();
  v40 = CoreParameterProtocol.valueType.getter(v29, v36);
  sub_19757FD24(v39, v40, v41);

LABEL_14:
  v51 = sub_197615C20();
  v52 = v66;
  v53 = v63;
  v54 = v64;
  if (v51)
  {
    sub_197615C70();
  }

  v55 = v65;
  type metadata accessor for CoreParameter();
  sub_197567FA8(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
  v26 = v76;
  sub_197615DB0();
  v56 = static CoreParameter.modelIdentifiers.getter();
  v57 = v62;
  (*(v55 + 16))(v62, v54, v52);

  swift_isUniquelyReferenced_nonNull_native();
  v86 = v56;
  sub_19757B964(v57, v61, v53);

  v58 = v86;
  (*(v55 + 8))(v54, v52);
  static CoreParameter.modelIdentifiers.setter(v58);
  return v26;
}

uint64_t sub_197566500@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34AE8, &qword_19761B848);
  OUTLINED_FUNCTION_0();
  v26 = v5;
  v27 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D70, &unk_1976223F0);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D78, &qword_19761CE28);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v24 - v20;
  sub_197559AAC(&qword_1ED8166E8, &qword_1EAF34D70, &unk_1976223F0, MEMORY[0x1E6968DA8]);
  sub_197615820();
  swift_getKeyPath();
  sub_197615700();

  (*(v12 + 8))(v15, v10);
  v28 = v24;
  v29 = v25;
  sub_197615810();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D80, &qword_19761CE58);
  a4[4] = sub_197565BFC();
  __swift_allocate_boxed_opaque_existential_0(a4);
  sub_197559AAC(&qword_1ED8166F8, &qword_1EAF34D78, &qword_19761CE28, MEMORY[0x1E6968D58]);
  sub_197559AAC(&qword_1ED816D00, &qword_1EAF34AE8, &qword_19761B848, MEMORY[0x1E6968D20]);
  v22 = v26;
  sub_1976156F0();
  (*(v27 + 8))(v9, v22);
  return (*(v18 + 8))(v21, v16);
}

uint64_t sub_197566864(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v36 = a1;
  v8 = v7;
  v32 = a6;
  v33 = a7;
  v35 = a3;
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA0, &qword_19761BAC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34BA8, &qword_19761BAC8);
  OUTLINED_FUNCTION_0();
  v38 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D30, &unk_1976223E0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D38, &unk_1976223A0);
  OUTLINED_FUNCTION_0();
  v20 = v19;
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_197618C10;
  (*(v20 + 16))(v22 + v21, a4, v18);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D28, &qword_19761C7E0);
  (*(*(v23 - 8) + 16))(v13, a5, v23);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v23);
  v24 = sub_197567FF0(&qword_1ED817148, type metadata accessor for CoreParameterRecord, &protocol conformance descriptor for CoreParameterRecord);
  sub_197615D90();
  v45 = v8;
  v46 = v24;
  swift_getKeyPath();
  v47 = 1;
  v48 = 0;
  OUTLINED_FUNCTION_4_23();

  v43 = v8;
  v44 = v24;
  swift_getKeyPath();
  LOBYTE(v47) = v34;
  OUTLINED_FUNCTION_4_23();

  v41 = v8;
  v42 = v24;
  swift_getKeyPath();
  v47 = v35;

  OUTLINED_FUNCTION_4_23();

  v39 = v8;
  v40 = v24;
  swift_getKeyPath();
  v47 = v22;

  OUTLINED_FUNCTION_4_23();

  v25 = v37;
  v26 = sub_197615C80();
  if (!v25)
  {
    v27 = v26;
    v28 = v32;
    v37 = sub_197567E4C(v26);
    if (v37)
    {
      sub_1975692BC(0, (v27 & 0xC000000000000001) == 0, v27);
      if ((v27 & 0xC000000000000001) != 0)
      {
        a4 = MEMORY[0x19A8E31E0](0, v27);
      }

      else
      {
        a4 = *(v27 + 32);
      }
    }

    else
    {

      a4 = v28(v29);
      sub_197615CD0();
    }
  }

  (*(v38 + 8))(v17, v49);

  return a4;
}

__n128 sub_197566CB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197566D78(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  a1(v10);
  return (*(v7 + 8))(v10, a5);
}

uint64_t _s6StatusVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65283 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65283 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 16) + 1;
    *result = a2 - 253;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x197566F24);
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_197566F4C(uint64_t a1)
{
  v3 = v1[2];
  v4 = *(sub_197616620() - 8);
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1 + ((*(v4 + 80) + 56) & ~*(v4 + 80));

  sub_197566FDC(a1, v5, v6, v7, v8, v3);
}

void sub_197566FDC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v26 = a1;
  v27 = a4;
  v28 = a3;
  v8 = sub_1976165D0();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = sub_197616860();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = *(a6 - 8);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v23 - v20;
  os_unfair_lock_lock((a2 + 16));
  v22 = *(a2 + 20);
  os_unfair_lock_unlock((a2 + 16));
  if (v22 == 1)
  {
    v28(v26);
    if (__swift_getEnumTagSinglePayload(v15, 1, a6) == 1)
    {
      (*(v12 + 8))(v15, v11);
    }

    else
    {
      (*(v16 + 32))(v21, v15, a6);
      (*(v16 + 16))(v19, v21, a6);
      sub_197616620();
      sub_197616600();
      (*(v23 + 8))(v10, v24);
      (*(v16 + 8))(v21, a6);
    }
  }
}

uint64_t _s6StatusVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 65283 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65283 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65284;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t (*sub_197567348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v14 = swift_allocObject();
  v14[2] = a7;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a5;
  v14[8] = a6;

  return sub_197565664;
}

uint64_t sub_1975673F8()
{
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 80), *(*(v0 + 80) + 24));
  type metadata accessor for CoreTipRecord(0);
  sub_19757063C();
  if (!v1)
  {

    OUTLINED_FUNCTION_10(*(v0 + 88) + 16, v0 + 40);
    if (swift_weakLoadStrong())
    {
      sub_197580628(*(v0 + 72));
    }
  }

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_1975674F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_197567560@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1975674F0(a1, &v7);
  if (!v8)
  {
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_19755404C(0, &qword_1ED816C58, 0x1E696ACD0);
  v3 = [objc_opt_self() allowedTopLevelClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35460, &qword_197621C28);
  sub_197616460();

  sub_197616800();

  if (!v8)
  {
    OUTLINED_FUNCTION_1_51();
LABEL_7:
    sub_19755643C(&v7);
    goto LABEL_8;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  if (swift_dynamicCast())
  {
    *(a2 + 24) = v4;
    OUTLINED_FUNCTION_1_51();
    *a2 = v6;
    return result;
  }

  OUTLINED_FUNCTION_1_51();
LABEL_8:
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_197567790(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

id sub_1975677E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_197616910();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v7 = a1;
  }

  a4(v16, v15);

  sub_19755643C(v15);
  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v10 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_197616EE0();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_197567980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_197615530();
  OUTLINED_FUNCTION_1_43(v5);
  sub_197615520();
  sub_197615510();
}

uint64_t OUTLINED_FUNCTION_42_0()
{
  v4 = *(v2 - 82);
  *v0 = v1;
  *(v0 + 8) = v4;
}

uint64_t OUTLINED_FUNCTION_39_1(uint64_t a1)
{
  *(v3 - 144) = v2;
  *(v3 - 136) = v1;
  *(v3 - 168) = a1;
  return 24944;
}

uint64_t OUTLINED_FUNCTION_39_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197615DA0();
}

uint64_t OUTLINED_FUNCTION_10_3()
{

  return swift_setAtWritableKeyPath();
}

uint64_t OUTLINED_FUNCTION_10_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(v4 - 72) = v3;
  *(v4 - 160) = a2;
  *(v4 - 152) = result;
  *(v4 - 176) = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_6()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1, uint64_t a2)
{

  return sub_197616DE0();
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_10_12(uint64_t a1)
{

  return sub_19757B6F0(a1);
}

uint64_t OUTLINED_FUNCTION_10_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_197616E20();
}

uint64_t OUTLINED_FUNCTION_10_14()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_10_16()
{
  *(v1 - 120) = v0;
  v3 = *(v1 - 88);

  return __swift_mutable_project_boxed_opaque_existential_1(v1 - 112, v3);
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return swift_dynamicCast();
}

unint64_t sub_197567D64()
{
  result = qword_1ED816D28;
  if (!qword_1ED816D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34CC8, &unk_19761C9F0);
    sub_197559AAC(&qword_1ED816D30, &qword_1EAF34CD0, &qword_19761C200, MEMORY[0x1E69E6328]);
    sub_1975611B4(&qword_1ED817280, type metadata accessor for CoreRuleRecord, &protocol conformance descriptor for CoreRuleRecord);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816D28);
  }

  return result;
}

uint64_t sub_197567E50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_197567E98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_197615A60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_197567EDC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    sub_197615A60();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_197567F1C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_197567F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_197567FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_197567FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_197568038(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_197568080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1975680C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v102 = a6;
  v101 = a5;
  v106 = a4;
  v100 = a3;
  v103 = a2;
  v89 = sub_197615F50();
  v88 = *(v89 - 8);
  v7 = MEMORY[0x1EEE9AC00](v89);
  v86 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v85 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D8, &unk_197619120);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v92 = &v85 - v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346D0, &unk_197622090);
  v96 = *(v98 - 1);
  MEMORY[0x1EEE9AC00](v98);
  v91 = &v85 - v12;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF346E0, &qword_1976220A0);
  v105 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v14 = &v85 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34748, &qword_197622440);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v85 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345D0, &qword_19761B410);
  v19 = swift_allocObject();
  *(v19 + 1) = xmmword_197619030;
  v19[4] = swift_getKeyPath();
  swift_getKeyPath();
  sub_197568080(&qword_1ED816CD8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  sub_197615640();
  v90 = a1;
  v115 = a1;
  v20 = v103;
  v116 = v103;
  v21 = v99;
  v124 = v99;
  sub_197615AE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34740, &unk_197619390);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_197618C10;
  v95 = v16;
  v24 = *(v16 + 16);
  v94 = v18;
  v25 = v18;
  v26 = v91;
  v97 = v15;
  v24(v23 + v22, v25, v15);
  v27 = v92;
  v28 = v104;
  (v105[2])(v92, v14, v104);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
  v29 = sub_197568080(&qword_1ED8170E0, type metadata accessor for CoreTipRecord, &protocol conformance descriptor for CoreTipRecord);
  swift_bridgeObjectRetain_n();
  sub_197615D90();
  v113 = v21;
  v114 = v29;
  swift_getKeyPath();
  v118 = 1;
  LOBYTE(v119) = 0;
  swift_setAtWritableKeyPath();

  v111 = v21;
  v112 = v29;
  swift_getKeyPath();
  LOBYTE(v118) = 0;
  swift_setAtWritableKeyPath();

  v109 = v21;
  v110 = v29;
  swift_getKeyPath();
  v118 = v19;

  swift_setAtWritableKeyPath();

  v107 = v21;
  v108 = v29;
  swift_getKeyPath();
  v118 = v23;

  swift_setAtWritableKeyPath();

  v30 = v93;
  v31 = sub_197615C80();
  v32 = v30;
  if (v30)
  {
    (*(v96 + 8))(v26, v98);

    swift_bridgeObjectRelease_n();

    (v105[1])(v14, v104);
    (*(v95 + 8))(v94, v97);
    v118 = 0;
    v119 = 0xE000000000000000;
    sub_197616A20();

    v118 = 0xD000000000000024;
    v119 = 0x8000000197625430;
    v33 = (*(v102 + 32))(v101);
    MEMORY[0x19A8E2A50](v33);

    MEMORY[0x19A8E2A50](41, 0xE100000000000000);
    v34 = v118;
    v35 = v119;
    sub_19759228C();
    swift_allocError();
    *v36 = v34;
    v36[1] = v35;
    swift_willThrow();
  }

  else
  {
    v37 = v31;
    v93 = v14;
    v38 = v104;
    v92 = v29;
    if (sub_197567E4C(v31))
    {
      sub_1975692BC(0, (v37 & 0xC000000000000001) == 0, v37);
      v39 = v106;
      if ((v37 & 0xC000000000000001) != 0)
      {
LABEL_25:
        v40 = MEMORY[0x19A8E31E0](0, v37);
      }

      else
      {
        v40 = *(v37 + 32);
      }
    }

    else
    {

      swift_allocObject();

      v40 = CoreTipRecord.init(id:)(v90, v20);
      v39 = v106;
      sub_197615CD0();
    }

    (*(v96 + 8))(v26, v98);

    swift_bridgeObjectRelease_n();
    (v105[1])(v93, v38);
    (*(v95 + 8))(v94, v97);
    v19 = v100;
    v41 = v39;
    v42 = v101;
    v43 = v102;
    sub_197579A20(v100, v41, v101, v102);
    v38 = v32;
    if (v32)
    {
    }

    else
    {
      v105 = v40;
      v44 = *(v43 + 64);
      v37 = v19;
      v104 = v43 + 64;
      v98 = v44;
      v39 = v44(v42, v43);
      v45 = 0;
      v26 = *(v39 + 16);
      for (i = v39 + 32; ; i += 40)
      {
        v32 = MEMORY[0x1E69E7CC0];
        if (v26 == v45)
        {
          break;
        }

        if (v45 >= *(v39 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        sub_19755A560(i, &v118);
        v47 = v120;
        v48 = v121;
        v49 = __swift_project_boxed_opaque_existential_1Tm(&v118, v120);
        v50 = type metadata accessor for CoreRuleRecord(0);
        v51 = v47;
        v37 = v50;
        sub_19757B0DC(v49, v105, 0, v106, v51, v48);

        ++v45;
        __swift_destroy_boxed_opaque_existential_0Tm(&v118);
      }

      v52 = v98(v101, v102);
      v53 = *(v52 + 16);
      v123 = v32;
      sub_197553D0C(0, v53, 0, v54, v55, v56, v57);
      v58 = v123;
      v104 = v52;
      if (v53)
      {
        v59 = (v52 + 32);
        do
        {
          v60 = v59[3];
          v61 = v59[4];
          __swift_project_boxed_opaque_existential_1Tm(v59, v60);
          v66 = (*(v61 + 24))(v60, v61);
          v68 = v67;
          v123 = v58;
          v70 = *(v58 + 16);
          v69 = *(v58 + 24);
          if (v70 >= v69 >> 1)
          {
            sub_197553D0C(v69 > 1, v70 + 1, 1, v62, v63, v64, v65);
            v58 = v123;
          }

          *(v58 + 16) = v70 + 1;
          v71 = v58 + 16 * v70;
          *(v71 + 32) = v66;
          *(v71 + 40) = v68;
          v59 += 5;
          --v53;
        }

        while (v53);
      }

      v72 = sub_197589344(v58);

      (*(v102 + 72))(&v118, v101, v102);
      sub_19756D1E8(&v118);
      sub_197589404(v72, v122, v106);

      sub_19758ABB4();
      sub_19758B928();
      sub_197592314();
      OUTLINED_FUNCTION_8_1();
      sub_1975782A0();
      sub_19757E36C();
      if (sub_197615C20())
      {
        sub_197615C70();
      }

      v74 = v103;
      v75 = v89;
      v76 = v88;
      v77 = v87;
      v78 = v86;
      type metadata accessor for CoreTip(0);
      v19 = v105;
      sub_197615DB0();
      v79 = static CoreTip.modelIdentifiers.getter();
      (*(v76 + 16))(v78, v77, v75);

      swift_isUniquelyReferenced_nonNull_native();
      v117 = v79;
      v80 = v78;
      v81 = v90;
      sub_19757B964(v80, v90, v74);

      v82 = v117;
      (*(v76 + 8))(v77, v75);
      static CoreTip.modelIdentifiers.setter(v82);
      v83 = CoreTipRecord.status.getter();
      v84 = CoreTipRecord.invalidationReason.getter();
      sub_19757EBE4(v81, v74, v83, v84);
    }
  }

  return v19;
}

__n128 sub_197568EB0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_197568EEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_197616C60();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t CoreTipRecord.status.getter()
{
  v0 = sub_197575E6C();
  v3 = MEMORY[0x1E69E7290];
  v4 = sub_197575F54();
  v2[0] = v0;
  sub_197575A60(v2);
  if (result == 4)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t a1)
{

  return sub_197616D90();
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_41()
{

  return sub_197616D90();
}

void *OUTLINED_FUNCTION_35_0()
{

  return memcpy((v1 + 656), v0, 0xE8uLL);
}

uint64_t OUTLINED_FUNCTION_35_3(uint64_t a1)
{

  return sub_197616BF0();
}

void OUTLINED_FUNCTION_35_5(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 160) = a6;
  *(v7 - 152) = a7;
  *(v7 - 168) = a4;
  *(v7 - 164) = a5;
  *(v7 - 176) = a3;
  *(v7 - 120) = a2;
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

unint64_t sub_19756930C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t CoreTipRecord.__allocating_init(backingData:)(__int128 *a1)
{
  v2 = swift_allocObject();
  CoreTipRecord.init(backingData:)(a1);
  return v2;
}

void *CoreTipRecord.init(backingData:)(__int128 *a1)
{
  v43 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34988, &qword_197620CA0);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v40 - v3;
  v4 = sub_197615A60();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35320, &qword_197620CD0);
  OUTLINED_FUNCTION_0_35();
  v13 = sub_197560338(v11, v12);
  *(v1 + 56) = OUTLINED_FUNCTION_15_3(v13);
  __swift_allocate_boxed_opaque_existential_0((v1 + 24));
  sub_197615DC0();
  sub_19756985C(0, 0xE000000000000000, v1 + 24, v14, v15, v16, v17, v18, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  sub_197615A50();
  OUTLINED_FUNCTION_11_13();
  swift_getKeyPath();
  OUTLINED_FUNCTION_4_29();
  sub_197560338(&qword_1ED816D90, v19);
  sub_197615BE0();

  (*(v6 + 8))(v10, v4);
  v20 = v41;
  OUTLINED_FUNCTION_36();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v4);
  OUTLINED_FUNCTION_11_13();
  swift_getKeyPath();
  OUTLINED_FUNCTION_21_9();
  sub_197569718();
  sub_197615BE0();

  sub_1975E62E4(v20, &qword_1EAF34988);
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_11_13();
  KeyPath = swift_getKeyPath();
  LOWORD(v44) = 0;
  OUTLINED_FUNCTION_17_11(KeyPath);

  OUTLINED_FUNCTION_11_13();
  v25 = swift_getKeyPath();
  LOWORD(v44) = 1;
  OUTLINED_FUNCTION_17_11(v25);

  sub_197569928(0, v1 + 24, v26, v27, v28, v29, v30, v31, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  v32 = sub_1976160B0();
  sub_1975699E4(v32, v1 + 24, v33, v34, v35, v36, v37, v38, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  sub_19756979C((v1 + 24), (v1 + 18));
  sub_197615B30();
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  OUTLINED_FUNCTION_43_0(v1 + 24, &v44);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(v43, v1 + 24);
  swift_endAccess();
  return v1;
}

void sub_197569718()
{
  OUTLINED_FUNCTION_41_1();
  v2 = v1;
  if (!*v1)
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34988, &qword_197620CA0);
    OUTLINED_FUNCTION_4_29();
    sub_197560338(v3, v4);
    atomic_store(swift_getWitnessTable(), v2);
  }

  OUTLINED_FUNCTION_38_1();
}

uint64_t sub_19756979C@<X0>(void *a2@<X1>, _BYTE *a3@<X8>)
{
  OUTLINED_FUNCTION_71(a2);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CC8, &unk_19761C9F0);
  type metadata accessor for CoreRuleRecord(0);
  sub_197567D64();
  sub_197615BD0();

  *a3 = 0;
  return result;
}

void sub_19756985C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_41_1();
  __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
  swift_getKeyPath();
  sub_197615BE0();

  OUTLINED_FUNCTION_38_1();
}

double OUTLINED_FUNCTION_73(uint64_t a1, uint64_t a2)
{

  return sub_197579604();
}

uint64_t OUTLINED_FUNCTION_73_0()
{

  return sub_197615C80();
}

void sub_197569928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_41_1();
  v19 = v18;
  v21 = v20;
  OUTLINED_FUNCTION_71(v22);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34728, &qword_197619348);
  sub_197615BC0();

  *v21 = 0;
  OUTLINED_FUNCTION_38_1();
}

uint64_t sub_1975699B8()
{
  OUTLINED_FUNCTION_16_0();
  result = CoreTipRecord.content.getter();
  *v0 = result;
  return result;
}

void sub_1975699E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_41_1();
  __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  sub_197615BC0();

  OUTLINED_FUNCTION_38_1();
}

uint64_t sub_197569A78()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_197568F10(v1);
  *v0 = result;
  return result;
}

unint64_t sub_197569AA4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_26(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t static DictionaryDecoder.decode<A>(from:class:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  v7 = sub_1976160A0();
  v15[0] = 0;
  v8 = [v6 dataWithJSONObject:v7 options:0 error:v15];

  v9 = v15[0];
  if (v8)
  {
    v10 = sub_1976159A0();
    v12 = v11;

    sub_197567980(a3, v10, v12, a3, a4);
    return sub_197567790(v10, v12);
  }

  else
  {
    v14 = v9;
    sub_197615830();

    return swift_willThrow();
  }
}

uint64_t CoreRule.Predicate.Argument.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E58, &qword_19761D430);
  OUTLINED_FUNCTION_0();
  v60 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v62 = v56 - v5;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E60, &qword_19761D438);
  OUTLINED_FUNCTION_0();
  v61 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v56 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E68, &qword_19761D440);
  OUTLINED_FUNCTION_0();
  v58 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E70, &qword_19761D448);
  OUTLINED_FUNCTION_0();
  v64 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v56 - v17;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19756B5B4();
  v19 = v66;
  sub_197617240();
  if (v19)
  {
    goto LABEL_9;
  }

  v56[0] = v13;
  v56[1] = v9;
  v20 = v65;
  v66 = a1;
  v21 = sub_197616DD0();
  result = sub_19756B708(v21, 0);
  v26 = v14;
  v57 = v18;
  if (v24 == v25 >> 1)
  {
LABEL_8:
    v34 = sub_197616A70();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E78, &qword_19761D450);
    *v36 = &type metadata for CoreRule.Predicate.Argument;
    sub_197616D40();
    sub_197616A60();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v37 = OUTLINED_FUNCTION_4_17();
    v38(v37);
    a1 = v66;
LABEL_9:
    v39 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v39);
  }

  if (v24 < (v25 >> 1))
  {
    v27 = *(v23 + v24);
    sub_19756B4E4(v24 + 1, v25 >> 1, result, v23, v24, v25);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    if (v29 == v31 >> 1)
    {
      if (v27)
      {
        v32 = v27;
        if (v27 == 1)
        {
          v68 = 1;
          sub_1975CB5C0();
          sub_197616D30();
          v33 = v63;
          v46 = sub_197616D90();
          v48 = v47;
          swift_unknownObjectRelease();
          v49 = OUTLINED_FUNCTION_7_8();
          v50(v49);
          v51 = OUTLINED_FUNCTION_9_8();
          v52(v51);
        }

        else
        {
          v69 = 2;
          sub_19756B560();
          v43 = v62;
          sub_197616D30();
          v33 = v63;
          swift_unknownObjectRelease();
          (*(v60 + 8))(v43, v20);
          v44 = OUTLINED_FUNCTION_4_17();
          v45(v44);
          v46 = 0;
          v48 = 0;
        }
      }

      else
      {
        v67 = 0;
        sub_197571C50();
        sub_197616D30();
        v32 = 0;
        v40 = v26;
        v41 = sub_197616D90();
        v42 = v64;
        v46 = v41;
        v48 = v53;
        swift_unknownObjectRelease();
        v54 = OUTLINED_FUNCTION_8_11();
        v55(v54);
        (*(v42 + 8))(v57, v40);
        v33 = v63;
      }

      *v33 = v46;
      *(v33 + 8) = v48;
      *(v33 + 16) = v32;
      v39 = v66;
      return __swift_destroy_boxed_opaque_existential_0Tm(v39);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_19756A294(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_197616910();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v7 = a1;
  }

  a4(v16, v15);

  sub_19755643C(v15);
  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v10 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_197616EE0();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t sub_19756A414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x1E69E7D40] & *v2;
  sub_1975674F0(a1, v12);
  if (!v12[3])
  {
    result = sub_19755643C(v12);
    goto LABEL_7;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_7:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v6 = [objc_opt_self() allowedTopLevelClasses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35460, &qword_197621C28);
  v7 = sub_197616460();

  v8 = sub_19756AED8(v10, v11, v7);

  if (!v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    v8 = sub_1976160B0();
  }

  v9 = *(v4 + 80);
  *(a2 + 24) = v9;
  static DictionaryCoder.decode<A>(from:class:)(v8, v9, v9, *(v4 + 88));
  sub_197567790(v10, v11);
}

unint64_t sub_19756A6CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34388, &qword_197618388);
    v2 = sub_197616C90();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1975586C0(*(a1 + 56) + 32 * v11, v29);
    *&v28 = v13;
    *(&v28 + 1) = v14;
    v26[2] = v28;
    v27[0] = v29[0];
    v27[1] = v29[1];
    v15 = v28;
    sub_19756A94C(v27, &v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
    swift_dynamicCast();
    sub_19756A94C(&v23, v25);
    sub_19756A94C(v25, v26);
    sub_19756A94C(v26, &v24);
    result = sub_19755C610(v15, *(&v15 + 1));
    v16 = result;
    if (v17)
    {
      *(v2[6] + 16 * result) = v15;

      v18 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      result = sub_19756A94C(&v24, v18);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_19756A94C(&v24, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

_OWORD *sub_19756A94C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void *CoreRule.Predicate.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E20, &qword_19761D248);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19756B348();
  sub_197617240();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v20) = 0;
    v6 = sub_197616D90();
    v8 = (v1 + OBJC_IVAR___Predicate_id);
    *v8 = v6;
    v8[1] = v9;
    v22 = 1;
    sub_19756B958();
    OUTLINED_FUNCTION_0_22();
    sub_197616DC0();
    v10 = v21;
    v11 = v1 + OBJC_IVAR___Predicate_argument;
    *v11 = v20;
    v11[16] = v10;
    v22 = 2;
    sub_19756B490();
    OUTLINED_FUNCTION_0_22();
    sub_197616DC0();
    *(v1 + OBJC_IVAR___Predicate_operation) = v20;
    v22 = 3;
    sub_19756B608();
    OUTLINED_FUNCTION_0_22();
    sub_197616D80();
    *(v1 + OBJC_IVAR___Predicate_rawdata) = v20;
    v22 = 4;
    sub_19756BBB0();
    OUTLINED_FUNCTION_0_22();
    sub_197616D80();
    v12 = (v1 + OBJC_IVAR___Predicate_value);
    v13 = v21;
    *v12 = v20;
    v12[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E10, &qword_19761D238);
    v22 = 5;
    v14 = sub_19756B3E8(&qword_1ED8167E8, sub_19756C69C);
    OUTLINED_FUNCTION_4_16(v14);
    *(v1 + OBJC_IVAR___Predicate_queries) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34E18, &qword_19761D240);
    v22 = 6;
    v15 = sub_1975CA9EC(&qword_1ED8167F8, sub_19756C410);
    OUTLINED_FUNCTION_4_16(v15);
    *(v1 + OBJC_IVAR___Predicate_subpredicates) = v20;
    v19.receiver = v1;
    v19.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v19, sel_init);
    v16 = OUTLINED_FUNCTION_1_19();
    v17(v16);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t static DictionaryCoder.decode<A>(from:class:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_19756A6CC(a1);
  static DictionaryDecoder.decode<A>(from:class:)(v6, a3, a3, a4);
}

uint64_t sub_19756AED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_19755404C(0, &qword_1ED816C58, 0x1E696ACD0);
  sub_197616800();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34340, &unk_19761C8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19756B06C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19756B750(a2, a3);
  *a1 = result;
  return result;
}

void *sub_19756B0B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = CoreRule.Predicate.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t CoreRule.Predicate.Operator.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  OUTLINED_FUNCTION_13_7();
  sub_197617230();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1Tm(v11, v11[3]);
    OUTLINED_FUNCTION_13_7();
    v5 = sub_197616F10();
    v7 = v6;
    sub_197616210();
    CoreRule.Predicate.Operator.init(rawValue:)(&v10);
    v8 = v10;
    if (v10 == 13)
    {
      sub_197616A20();
      MEMORY[0x19A8E2A50](0xD000000000000036, 0x8000000197624940);
      MEMORY[0x19A8E2A50](v5, v7);

      sub_197616A70();
      swift_allocError();
      sub_197616A50();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      *a2 = v8;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19756B260(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x746E656D75677261;
      break;
    case 2:
      result = 0x6F6974617265706FLL;
      break;
    case 3:
      result = 0x61746164776172;
      break;
    case 4:
      result = 0x65756C6176;
      break;
    case 5:
      result = 0x73656972657571;
      break;
    case 6:
      result = 0x6964657270627573;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_19756B348()
{
  result = qword_1ED816AB8;
  if (!qword_1ED816AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816AB8);
  }

  return result;
}

uint64_t sub_19756B3E8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF34E10, &qword_19761D238);
    a2();
    result = OUTLINED_FUNCTION_10_6();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19756B450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_19756B490()
{
  result = qword_1ED816A18;
  if (!qword_1ED816A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A18);
  }

  return result;
}

uint64_t sub_19756B4E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_19756B560()
{
  result = qword_1ED8166A0;
  if (!qword_1ED8166A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8166A0);
  }

  return result;
}

unint64_t sub_19756B5B4()
{
  result = qword_1ED816A80;
  if (!qword_1ED816A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A80);
  }

  return result;
}

unint64_t sub_19756B608()
{
  result = qword_1ED816B48;
  if (!qword_1ED816B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B48);
  }

  return result;
}

uint64_t CoreRule.Predicate.Operator.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_197616D20();

  v6 = 13;
  if (v4 < 0xD)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_19756B6B8(char a1)
{
  if (!a1)
  {
    return 0x746E756F63;
  }

  if (a1 == 1)
  {
    return 0x697461756C617665;
  }

  return 1701736302;
}

uint64_t sub_19756B708(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_19756B750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_197616EF0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697461756C617665 && a2 == 0xEA00000000006E6FLL;
    if (v6 || (sub_197616EF0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701736302 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_197616EF0();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

_BYTE *_s9PredicateC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x19756B930);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_19756B958()
{
  result = qword_1ED816A30;
  if (!qword_1ED816A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConstellationDeliveryInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s8ArgumentO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x19756BB00);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConstellationDocument.Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_19756BBB0()
{
  result = qword_1ED816B98;
  if (!qword_1ED816B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816B98);
  }

  return result;
}

uint64_t *CoreRuleRecord.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_197615A60();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_0();
  v10 = v9 - v8;
  *(v1 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35038, &qword_19761E8A8);
  OUTLINED_FUNCTION_0_27();
  v13 = sub_1975600FC(v11, v12, &protocol conformance descriptor for CoreRuleRecord);
  v49 = v3;
  v50 = v3;
  *(v1 + 56) = OUTLINED_FUNCTION_19_4(v13);
  __swift_allocate_boxed_opaque_existential_0((v1 + 24));
  sub_197615DC0();
  sub_19756C0A4(0, 0xE000000000000000, v1 + 24, v14, v15, v16, v17, v18, *v1, a1, v49, v50, v51, v52, v53, v54, v55, v56);
  sub_197615A50();
  __swift_project_boxed_opaque_existential_1Tm((v2 + 24), *(v2 + 48));
  swift_getKeyPath();
  OUTLINED_FUNCTION_6_10();
  sub_1975600FC(v19, v20, MEMORY[0x1E6969538]);
  sub_197615BE0();

  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_13_9();
  swift_getKeyPath();
  OUTLINED_FUNCTION_24_4();
  sub_197615BE0();

  OUTLINED_FUNCTION_13_9();
  swift_getKeyPath();
  LOWORD(v49) = 0;
  OUTLINED_FUNCTION_24_4();
  sub_197615BE0();

  sub_19756C2E0(0, v1 + 24, v21, v22, v23, v24, v25, v26, v43, v46, v49, v50, v51, v52, v53, v54, v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF345E8, &qword_197619050);
  v27 = sub_1976160B0();
  sub_19756C220(v27, v1 + 24, v28, v29, v30, v31, v32, v33, v44, v47, v49, v50, v51, v52, v53, v54, v55, v56);
  OUTLINED_FUNCTION_13_9();
  swift_getKeyPath();
  type metadata accessor for CoreTipRecord(0);
  OUTLINED_FUNCTION_23_4();
  sub_1975600FC(v34, v35, &protocol conformance descriptor for CoreTipRecord);
  sub_197615BF0();

  *(v1 + 17) = 0;
  OUTLINED_FUNCTION_13_9();
  swift_getKeyPath();
  sub_197615BF0();

  *(v1 + 18) = 0;
  OUTLINED_FUNCTION_13_9();
  swift_getKeyPath();
  v36 = OUTLINED_FUNCTION_35_2();
  type metadata accessor for CoreParameterRecord(v36);
  OUTLINED_FUNCTION_21_5();
  sub_1975600FC(v37, v38, &protocol conformance descriptor for CoreParameterRecord);
  OUTLINED_FUNCTION_16_7();
  sub_197615BF0();

  *(v1 + 19) = 0;
  OUTLINED_FUNCTION_13_9();
  swift_getKeyPath();
  v39 = OUTLINED_FUNCTION_35_2();
  type metadata accessor for CoreEventRecord(v39);
  OUTLINED_FUNCTION_20_5();
  sub_1975600FC(v40, v41, &protocol conformance descriptor for CoreEventRecord);
  OUTLINED_FUNCTION_16_7();
  sub_197615BF0();

  *(v1 + 20) = 0;
  sub_19756C134((v2 + 24), (v2 + 21));
  sub_197615B30();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_43_0(v1 + 24, &v49);
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  sub_1975558C4(v48, v1 + 24);
  swift_endAccess();
  return v1;
}

void sub_19756C0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_41_1();
  __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
  swift_getKeyPath();
  sub_197615BE0();

  OUTLINED_FUNCTION_38_1();
}

uint64_t sub_19756C134@<X0>(void *a2@<X1>, _BYTE *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34CC8, &unk_19761C9F0);
  sub_197567D64();
  sub_197615BD0();

  *a4 = 0;
  return result;
}

uint64_t sub_19756C1F4()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_1975D3C58(v1);
  *v0 = result;
  return result;
}

void sub_19756C220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_41_1();
  __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF34D08, &qword_19761ECE0);
  sub_197615BC0();

  OUTLINED_FUNCTION_38_1();
}

uint64_t sub_19756C2B4()
{
  OUTLINED_FUNCTION_16_0();
  result = sub_197573258();
  *v0 = result;
  return result;
}

void sub_19756C2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_41_1();
  v19 = v18;
  v21 = v20;
  __swift_project_boxed_opaque_existential_1Tm(v22, v22[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF35060, &qword_19761ECE8);
  sub_197615BC0();

  *v21 = 0;
  OUTLINED_FUNCTION_38_1();
}

uint64_t CoreRuleRecord.__allocating_init(backingData:)()
{
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_42();
  CoreRuleRecord.init(backingData:)(v1);
  return v0;
}

unint64_t sub_19756C3B8()
{
  result = qword_1ED816A68;
  if (!qword_1ED816A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A68);
  }

  return result;
}

unint64_t sub_19756C410()
{
  result = qword_1ED816A98;
  if (!qword_1ED816A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A98);
  }

  return result;
}

uint64_t CoreRuleRecord.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 3);
  v1 = OBJC_IVAR____TtC10TipKitCore14CoreRuleRecord___observationRegistrar;
  sub_197615B40();
  OUTLINED_FUNCTION_7_5();
  (*(v2 + 8))(&v0[v1]);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

unint64_t sub_19756C514()
{
  result = qword_1ED816AA8;
  if (!qword_1ED816AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816AA8);
  }

  return result;
}

unint64_t sub_19756C56C()
{
  result = qword_1ED816AB0;
  if (!qword_1ED816AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816AB0);
  }

  return result;
}

unint64_t sub_19756C5E0()
{
  result = qword_1ED816A48;
  if (!qword_1ED816A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A48);
  }

  return result;
}

unint64_t sub_19756C648()
{
  result = qword_1ED816A58;
  if (!qword_1ED816A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A58);
  }

  return result;
}

unint64_t sub_19756C69C()
{
  result = qword_1ED816A88;
  if (!qword_1ED816A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A88);
  }

  return result;
}

unint64_t sub_19756C6F0()
{
  result = qword_1ED816A60;
  if (!qword_1ED816A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A60);
  }

  return result;
}

unint64_t sub_19756C74C()
{
  result = qword_1ED816A40;
  if (!qword_1ED816A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A40);
  }

  return result;
}

unint64_t sub_19756C7A4()
{
  result = qword_1ED816A50;
  if (!qword_1ED816A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A50);
  }

  return result;
}

unint64_t sub_19756C80C()
{
  result = qword_1ED816A70;
  if (!qword_1ED816A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A70);
  }

  return result;
}

unint64_t sub_19756C864()
{
  result = qword_1ED816A78;
  if (!qword_1ED816A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED816A78);
  }

  return result;
}

uint64_t CoreEvent.Options.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED8174E0 != -1)
  {
    result = OUTLINED_FUNCTION_0_5(&qword_1ED8174E0);
  }

  v2 = byte_1ED8174EA;
  v3 = 1000;
  if (byte_1ED8174EA)
  {
    v3 = 200;
  }

  v4 = 0x418E133800000000;
  if (!byte_1ED8174EA)
  {
    v4 = 0;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v2 ^ 1;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void *sub_19756C97C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_19756C99C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_19756CA04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t CoreRule.Predicate.Operator.init(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1976157A0();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  result = (*(v7 + 88))(a1, v4);
  if (result == *MEMORY[0x1E6968C40])
  {
    v9 = 2;
  }

  else if (result == *MEMORY[0x1E6968C30])
  {
    v9 = 3;
  }

  else if (result == *MEMORY[0x1E6968C28])
  {
    v9 = 4;
  }

  else if (result == *MEMORY[0x1E6968C38])
  {
    v9 = 5;
  }

  else
  {
    result = (*(v6 + 8))(a1, v4);
    v9 = 12;
  }

  *a2 = v9;
  return result;
}
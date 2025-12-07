uint64_t sub_1C48D99B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6A8, type metadata accessor for HUTenPointContext.POICategory, &unk_1C4F3990C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48D9A50(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF438, type metadata accessor for HUTenPointContext.POICategory, &unk_1C4F39944);

  return sub_1C4F00428();
}

uint64_t sub_1C48D9B18(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF438, type metadata accessor for HUTenPointContext.POICategory, &unk_1C4F39944);

  return sub_1C4F00438();
}

uint64_t sub_1C48D9BD8()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4FA91E0);
  qword_1EC152330 = v1[0];
  *algn_1EC152338 = v1[1];
  return result;
}

uint64_t sub_1C48D9C4C()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152340);
  sub_1C442B738(v0, qword_1EC152340);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "semantic_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "update_reason";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "update_source";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48D9E50()
{
  type metadata accessor for HUTenPointContext.UserFocusComputedMode._StorageClass(0);
  swift_allocObject();
  result = sub_1C4920FCC();
  qword_1EC0BE6C0 = result;
  return result;
}

void sub_1C48D9EF0()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for HUTenPointContext.UserFocusComputedMode(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for HUTenPointContext.UserFocusComputedMode._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C4416740(v2);
  }

  sub_1C440F77C();
  sub_1C4921BF8();
  sub_1C44512DC();
}

uint64_t sub_1C48D9FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DA088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DA164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DA240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext21UserFocusComputedModeP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__semanticType;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DA428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext21UserFocusComputedModeP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__updateReason;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext21UserFocusComputedModeP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__updateSource;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DA7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1C43FBE94();
  v10 = v9(v8);
  if (*(v6 + *(v10 + 20)) != *(a2 + *(v10 + 20)))
  {

    sub_1C4922578();
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C44070A8();
  sub_1C49231A4(v13, v14, MEMORY[0x1E69AAC10]);
  v15 = sub_1C4402120();
  return sub_1C4475AE4(v15, v16, v17, v18) & 1;
}

uint64_t sub_1C48DA9D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6B0, type metadata accessor for HUTenPointContext.UserFocusComputedMode, &unk_1C4F397A4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48DAA78(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF418, type metadata accessor for HUTenPointContext.UserFocusComputedMode, &unk_1C4F397DC);

  return sub_1C4F00428();
}

uint64_t sub_1C48DAB40(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF418, type metadata accessor for HUTenPointContext.UserFocusComputedMode, &unk_1C4F397DC);

  return sub_1C4F00438();
}

uint64_t sub_1C48DAC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HUTenPointContext.InferredMode(0);
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  return sub_1C4F003F8();
}

uint64_t sub_1C48DAD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HUTenPointContext.InferredMode(0);
  sub_1C4460108(a1 + *(v11 + 20), v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DAF80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6B8, type metadata accessor for HUTenPointContext.InferredMode, &unk_1C4F3963C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48DB020(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF3F8, type metadata accessor for HUTenPointContext.InferredMode, &unk_1C4F39674);

  return sub_1C4F00428();
}

uint64_t sub_1C48DB0E8(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF3F8, type metadata accessor for HUTenPointContext.InferredMode, &unk_1C4F39674);

  return sub_1C4F00438();
}

uint64_t sub_1C48DB1C4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152390);
  sub_1C442B738(v0, qword_1EC152390);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "wifi_connected";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "airplane_mode";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "wearing_headphones";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48DB3CC()
{
  type metadata accessor for HUTenPointContext.DeviceWireless._StorageClass(0);
  swift_allocObject();
  result = sub_1C4920FCC();
  qword_1EC0BE6C8 = result;
  return result;
}

void sub_1C48DB428()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v13, v14, v15, v12);
  sub_1C43FCF64();
  sub_1C440BAA8(v16, v17, v18, v12);
  sub_1C43FCF64();
  sub_1C440BAA8(v19, v20, v21, v12);
  v22 = *v5;
  sub_1C440D164(v7 + v22, &v46);
  sub_1C4460108(v7 + v22, v11, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C442A428();
  sub_1C44408D4(v23, v24, v25, v26);
  swift_endAccess();
  sub_1C440D164(v7 + *v3, &v45);
  sub_1C442A428();
  sub_1C4460108(v27, v28, v29, v30);
  swift_beginAccess();
  sub_1C442A428();
  sub_1C44408D4(v31, v32, v33, v34);
  swift_endAccess();
  sub_1C440D164(v7 + *v1, &v44);
  sub_1C442A428();
  sub_1C4460108(v35, v36, v37, v38);

  swift_beginAccess();
  sub_1C442A428();
  sub_1C44408D4(v39, v40, v41, v42);
  swift_endAccess();
  sub_1C43FE9F0();
}

uint64_t sub_1C48DB5FC(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1C44553C4(*a1);
  sub_1C4420C3C(v6, v7, &unk_1C4F2E1B0);
  v8 = sub_1C44553C4(*a2);
  sub_1C4420C3C(v8, v9, &unk_1C4F2E1B0);
  v10 = sub_1C44553C4(*a3);
  sub_1C4420C3C(v10, v11, &unk_1C4F2E1B0);
  return v3;
}

void sub_1C48DB6B8()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for HUTenPointContext.DeviceWireless(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for HUTenPointContext.DeviceWireless._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C4416740(v2);
  }

  sub_1C440F77C();
  sub_1C4921BF8();
  sub_1C44512DC();
}

uint64_t sub_1C48DB774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DB850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DB92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DBA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(void))
{
  result = a5();
  if (!v7)
  {
    sub_1C4417184();
    a6();
    sub_1C4417184();
    return a7();
  }

  return result;
}

uint64_t sub_1C48DBA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14DeviceWirelessP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__wifiConnected;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DBC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14DeviceWirelessP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__airplaneMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DBE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14DeviceWirelessP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__wearingHeadphones;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DC130(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6C0, type metadata accessor for HUTenPointContext.DeviceWireless, &unk_1C4F394D4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48DC1D0(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF3D8, type metadata accessor for HUTenPointContext.DeviceWireless, &unk_1C4F3950C);

  return sub_1C4F00428();
}

uint64_t sub_1C48DC298(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF3D8, type metadata accessor for HUTenPointContext.DeviceWireless, &unk_1C4F3950C);

  return sub_1C4F00438();
}

uint64_t sub_1C48DC388()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1523B8);
  sub_1C442B738(v0, qword_1EC1523B8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F13950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "device_plugged_in";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "low_power_mode";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "battery_percentage";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "battery_fully_charged";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "mins_since_last_device_charge_start";
  *(v16 + 1) = 35;
  v16[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48DC640()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart, 1, 1, v2);
  return v0;
}

uint64_t sub_1C48DC700(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  v7 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode, 1, 1, v7);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage, 1, 1, v7);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged, 1, 1, v7);
  v18 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart, 1, 1, v7);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged;
  swift_beginAccess();
  sub_1C4460108(a1 + v14, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart;
  swift_beginAccess();
  sub_1C4460108(a1 + v15, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v16 = v18;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v16, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48DCA28()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

void sub_1C48DCB18(uint64_t a1)
{
  sub_1C48B3958(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48DCBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C48DCCC8(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C48DCDA4(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C48DCE80(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C48DCF5C(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C48DD038(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C48DCCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DCDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DCE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DCF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DD038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DD114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C48DD1AC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C48DD394(a1, a2, a3, a4);
    sub_1C48DD57C(a1, a2, a3, a4);
    sub_1C48DD764(a1, a2, a3, a4);
    return sub_1C48DD94C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C48DD1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DD394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DD57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DD764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DD94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

BOOL sub_1C48DDB34(uint64_t a1, uint64_t a2)
{
  v110 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v110);
  v107 = (&v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  MEMORY[0x1EEE9AC00](v5);
  v97 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v99 = &v96 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v96 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v106 = &v96 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v96 - v14;
  v16 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v96 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v104 = &v96 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v98 = &v96 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v96 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v96 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v101 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v105 = &v96 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v108 = &v96 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v96 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v96 - v36;
  v38 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  swift_beginAccess();
  sub_1C4460108(a1 + v38, v37, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v39 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__devicePluggedIn;
  swift_beginAccess();
  v109 = v5;
  v40 = *(v5 + 48);
  sub_1C4460108(v37, v15, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v41 = v110;
  sub_1C4460108(a2 + v39, &v15[v40], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v15, 1, v41) == 1)
  {

    sub_1C4420C3C(v37, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v42 = a2;
    if (sub_1C44157D4(&v15[v40], 1, v41) == 1)
    {
      sub_1C4420C3C(v15, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_9;
    }

LABEL_6:
    sub_1C4420C3C(v15, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_30;
  }

  sub_1C4460108(v15, v34, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(&v15[v40], 1, v41) == 1)
  {

    sub_1C4420C3C(v37, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_6;
  }

  v43 = &v15[v40];
  v44 = v107;
  sub_1C4924B90(v43, v107);

  v45 = sub_1C47E3504(v34, v44);
  sub_1C4924B3C();
  sub_1C4420C3C(v37, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v42 = a2;
  sub_1C4924B3C();
  sub_1C4420C3C(v15, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v46 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode;
  swift_beginAccess();
  v47 = v108;
  sub_1C4460108(a1 + v46, v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v48 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lowPowerMode;
  swift_beginAccess();
  v49 = *(v109 + 48);
  v50 = v106;
  sub_1C4460108(v47, v106, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v42 + v48, v50 + v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v51 = v41;
  v52 = sub_1C44157D4(v50, 1, v41);
  v53 = a1;
  if (v52 == 1)
  {
    sub_1C4420C3C(v47, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v50 + v49, 1, v51) == 1)
    {
      sub_1C4420C3C(v50, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_17;
    }

LABEL_14:
    sub_1C4420C3C(v50, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_30;
  }

  v54 = v105;
  sub_1C4460108(v50, v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v50 + v49, 1, v51) == 1)
  {
    sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_14;
  }

  v55 = v50 + v49;
  v56 = a1;
  v57 = v50;
  v58 = v107;
  sub_1C4924B90(v55, v107);
  v59 = sub_1C47E3504(v54, v58);
  sub_1C4924B3C();
  sub_1C4420C3C(v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  v60 = v57;
  v53 = v56;
  sub_1C4420C3C(v60, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_17:
  v61 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage;
  swift_beginAccess();
  v108 = v53;
  v62 = v101;
  sub_1C4460108(v53 + v61, v101, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v63 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryPercentage;
  swift_beginAccess();
  v64 = *(v109 + 48);
  v65 = v102;
  sub_1C4460108(v62, v102, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v66 = v65;
  sub_1C4460108(v42 + v63, v65 + v64, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v65, 1, v51) == 1)
  {
    sub_1C4420C3C(v62, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v67 = sub_1C44157D4(v65 + v64, 1, v51);
    v68 = v104;
    v69 = v103;
    if (v67 == 1)
    {
      sub_1C4420C3C(v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v70 = v108;
      goto LABEL_24;
    }

LABEL_22:
    sub_1C4420C3C(v66, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_30;
  }

  v71 = v100;
  sub_1C4460108(v65, v100, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v72 = sub_1C44157D4(v65 + v64, 1, v51);
  v73 = v104;
  v69 = v103;
  if (v72 == 1)
  {
    sub_1C4420C3C(v62, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_22;
  }

  v74 = v66 + v64;
  v75 = v107;
  sub_1C4924B90(v74, v107);
  v76 = sub_1C47E3504(v71, v75);
  sub_1C4924B3C();
  sub_1C4420C3C(v62, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v66, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v68 = v73;
  v70 = v108;
  if ((v76 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_24:
  v77 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged;
  swift_beginAccess();
  sub_1C4460108(v70 + v77, v69, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v78 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__batteryFullyCharged;
  swift_beginAccess();
  v79 = *(v109 + 48);
  v80 = v99;
  sub_1C4460108(v69, v99, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v42 + v78, v80 + v79, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v80, 1, v51) != 1)
  {
    v83 = v98;
    sub_1C4460108(v80, v98, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v80 + v79, 1, v51) == 1)
    {
      sub_1C4420C3C(v69, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      goto LABEL_29;
    }

    v85 = v80 + v79;
    v86 = v107;
    sub_1C4924B90(v85, v107);
    v87 = sub_1C47E3504(v83, v86);
    sub_1C4924B3C();
    sub_1C4420C3C(v69, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v80, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v82 = v108;
    if (v87)
    {
      goto LABEL_34;
    }

LABEL_30:

    return 0;
  }

  sub_1C4420C3C(v69, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v81 = sub_1C44157D4(v80 + v79, 1, v51);
  v82 = v108;
  if (v81 != 1)
  {
LABEL_29:
    sub_1C4420C3C(v80, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_30;
  }

  sub_1C4420C3C(v80, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_34:
  v88 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart;
  swift_beginAccess();
  sub_1C4460108(v82 + v88, v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v89 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext11DevicePowerP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__minsSinceLastDeviceChargeStart;
  swift_beginAccess();
  v90 = *(v109 + 48);
  v91 = v97;
  sub_1C4460108(v68, v97, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v42 + v89, v91 + v90, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v91, 1, v51) == 1)
  {

    sub_1C4420C3C(v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v91 + v90, 1, v51) == 1)
    {
      sub_1C4420C3C(v91, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      return 1;
    }

    goto LABEL_39;
  }

  v92 = v96;
  sub_1C4460108(v91, v96, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v91 + v90, 1, v51) == 1)
  {

    sub_1C4420C3C(v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_39:
    sub_1C4420C3C(v91, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  v93 = v91 + v90;
  v94 = v107;
  sub_1C4924B90(v93, v107);
  v95 = sub_1C47E3504(v92, v94);

  sub_1C4924B3C();
  sub_1C4420C3C(v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v91, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return (v95 & 1) != 0;
}

uint64_t sub_1C48DEAF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6C8, type metadata accessor for HUTenPointContext.DevicePower, &unk_1C4F3936C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48DEB98(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF3B8, type metadata accessor for HUTenPointContext.DevicePower, &unk_1C4F393A4);

  return sub_1C4F00428();
}

uint64_t sub_1C48DEC60(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF3B8, type metadata accessor for HUTenPointContext.DevicePower, &unk_1C4F393A4);

  return sub_1C4F00438();
}

uint64_t sub_1C48DED50()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1523E0);
  sub_1C442B738(v0, qword_1EC1523E0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "popularity_of_most_recent_micro_location";
  *(v6 + 8) = 40;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "five_minute_intervals_since_most_recent_micro_location";
  *(v10 + 1) = 54;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48DEF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HUTenPointContext.MicroLocation(0);
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  return sub_1C4F003F8();
}

void sub_1C48DEFCC()
{
  sub_1C441800C();
  v0(0);
  type metadata accessor for FeatureValue(0);
  sub_1C4423BC4();
  sub_1C49231A4(v1, v2, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  sub_1C44512DC();
}

uint64_t sub_1C48DF06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HUTenPointContext.MicroLocation(0);
  sub_1C4460108(a1 + *(v11 + 20), v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DF240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v20[3] = a4;
  v20[1] = a3;
  v7 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = a5(0);
  sub_1C4460108(a1 + *(v16 + 24), v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    return sub_1C4420C3C(v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v10, v15);
  sub_1C4423BC4();
  sub_1C49231A4(v18, v19, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DF4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6D0, type metadata accessor for HUTenPointContext.MicroLocation, &unk_1C4F39204);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48DF56C(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF398, type metadata accessor for HUTenPointContext.MicroLocation, &unk_1C4F3923C);

  return sub_1C4F00428();
}

uint64_t sub_1C48DF634(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF398, type metadata accessor for HUTenPointContext.MicroLocation, &unk_1C4F3923C);

  return sub_1C4F00438();
}

uint64_t sub_1C48DF708()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152408);
  sub_1C442B738(v0, qword_1EC152408);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "last_active_appbundle";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "last_active_appcategory";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "last_active_app_manual_category";
  *(v12 + 1) = 31;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48DF910()
{
  type metadata accessor for HUTenPointContext.AppLaunch._StorageClass(0);
  swift_allocObject();
  result = sub_1C4920FCC();
  qword_1EC0BE6D8 = result;
  return result;
}

void sub_1C48DF9B0()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for HUTenPointContext.AppLaunch(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for HUTenPointContext.AppLaunch._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C4416740(v2);
  }

  sub_1C440F77C();
  sub_1C4921BF8();
  sub_1C44512DC();
}

uint64_t sub_1C48DFA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DFB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DFC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48DFD00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext9AppLaunchP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lastActiveAppbundle;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48DFEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext9AppLaunchP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lastActiveAppcategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E00D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext9AppLaunchP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__lastActiveAppManualCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E03AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6D8, type metadata accessor for HUTenPointContext.AppLaunch, &unk_1C4F3909C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48E044C(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF378, type metadata accessor for HUTenPointContext.AppLaunch, &unk_1C4F390D4);

  return sub_1C4F00428();
}

uint64_t sub_1C48E0514(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF378, type metadata accessor for HUTenPointContext.AppLaunch, &unk_1C4F390D4);

  return sub_1C4F00438();
}

uint64_t sub_1C48E0620(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1C4F004E8();
  sub_1C44F9918(v7, a2);
  v8 = sub_1C43FD024();
  sub_1C442B738(v8, v9);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v10 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0D130;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADE8];
  sub_1C4F004C8();
  sub_1C43FBCE0();
  (*(v15 + 104))(v13, v14);
  return sub_1C4F004D8();
}

uint64_t sub_1C48E0780(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1C4F00378();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C48E07F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HUTenPointContext.AmbientLight(0);
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  return sub_1C4F003F8();
}

uint64_t sub_1C48E08AC()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = v2(v1);
  if (!v0)
  {
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C48E08F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HUTenPointContext.AmbientLight(0);
  sub_1C4460108(a1 + *(v11 + 20), v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

void sub_1C48E0AC8()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v31 = (v10 - v9);
  v11 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0) - 8;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v17 = sub_1C4402FE0();
  v18 = *(v2(v17) + 20);
  v19 = *(v15 + 56);
  sub_1C4460108(v6 + v18, v0, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v20 = v4 + v18;
  v21 = v4;
  sub_1C4460108(v20, v0 + v19, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v0, 1, v7);
  if (v22)
  {
    sub_1C440175C(v0 + v19, 1, v7);
    if (v22)
    {
      sub_1C4420C3C(v0, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_12:
      sub_1C4F00328();
      sub_1C44070A8();
      v28 = sub_1C49231A4(v26, v27, MEMORY[0x1E69AAC10]);
      v23 = sub_1C4475AE4(v6, v21, v29, v28);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1C4460108(v0, v14, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v0 + v19, 1, v7);
  if (v22)
  {
    sub_1C4924B3C();
LABEL_9:
    sub_1C4420C3C(v0, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_10;
  }

  v24 = v31;
  sub_1C4924B90(v0 + v19, v31);
  v25 = sub_1C47E3504(v14, v24);
  sub_1C440A9B8();
  sub_1C4924B3C();
  sub_1C4924B3C();
  sub_1C4420C3C(v0, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = 0;
LABEL_13:
  sub_1C444ACF8(v23);
  sub_1C43FE9F0();
}

uint64_t sub_1C48E0E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6E0, type metadata accessor for HUTenPointContext.AmbientLight, &unk_1C4F38F34);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48E0EBC(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF358, type metadata accessor for HUTenPointContext.AmbientLight, &unk_1C4F38F6C);

  return sub_1C4F00428();
}

uint64_t sub_1C48E0F84(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF358, type metadata accessor for HUTenPointContext.AmbientLight, &unk_1C4F38F6C);

  return sub_1C4F00438();
}

uint64_t sub_1C48E1060()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152458);
  sub_1C442B738(v0, qword_1EC152458);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1C4F37E00;
  v4 = v71 + v3;
  v5 = v71 + v3 + v1[14];
  *(v71 + v3) = 1;
  *v5 = "num_calendar_events_today";
  *(v5 + 8) = 25;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C4F004C8();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "num_calendar_events_remaining_today";
  *(v9 + 8) = 35;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "is_currently_in_calendar_event";
  *(v11 + 1) = 30;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "current_calendar_event_contains_title_work";
  *(v13 + 1) = 42;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "current_calendar_event_supports_location_directory_searches";
  *(v15 + 1) = 59;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "current_calendar_event_is_affecting_availability";
  *(v17 + 1) = 48;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "num_attendees_in_current_calendar_event";
  *(v19 + 1) = 39;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "in_between_first_and_last_calendar_events";
  *(v21 + 1) = 41;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "in_between_first_and_last_calendar_events_that_contain_title_work";
  *(v23 + 1) = 65;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "in_between_first_and_last_calendar_events_that_support_location_directory_searches";
  *(v25 + 1) = 82;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "in_between_first_and_last_calendar_events_that_affect_availability";
  *(v27 + 1) = 66;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "in_between_first_and_last_calendar_events_with_attendees";
  *(v29 + 1) = 56;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "time_until_first_calendar_event_in_mins";
  *(v31 + 1) = 39;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "time_until_first_calendar_event_that_contains_title_work_in_mins";
  *(v33 + 1) = 64;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "time_until_first_calendar_event_that_supports_location_directory_searches_in_mins";
  *(v35 + 1) = 81;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "time_until_first_calendar_event_that_affects_availability_in_mins";
  *(v37 + 1) = 65;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "time_until_first_calendar_event_with_attendees_in_mins";
  *(v39 + 1) = 54;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "time_since_last_calendar_event_in_mins";
  *(v41 + 1) = 38;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "time_since_last_calendar_event_that_contains_title_work_in_mins";
  *(v43 + 1) = 63;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "time_since_last_calendar_event_that_supports_location_directory_searches_in_mins";
  *(v45 + 1) = 80;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "time_since_last_calendar_event_that_affects_availability_in_mins";
  *(v47 + 1) = 64;
  v47[16] = 2;
  v8();
  v48 = (v4 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "time_since_last_calendar_event_with_attendees_in_mins";
  *(v49 + 1) = 53;
  v49[16] = 2;
  v8();
  v50 = (v4 + 22 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "time_since_previous_calendar_event_in_mins";
  *(v51 + 1) = 42;
  v51[16] = 2;
  v8();
  v52 = (v4 + 23 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "time_until_next_calendar_event_in_mins";
  *(v53 + 1) = 38;
  v53[16] = 2;
  v8();
  v54 = (v4 + 24 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "time_until_next_calendar_event_that_contains_title_work_in_mins";
  *(v55 + 1) = 63;
  v55[16] = 2;
  v8();
  v56 = (v4 + 25 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "time_until_next_calendar_event_that_supports_location_directory_searches_in_mins";
  *(v57 + 1) = 80;
  v57[16] = 2;
  v8();
  v58 = (v4 + 26 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "time_until_next_calendar_event_that_affects_availability_in_mins";
  *(v59 + 1) = 64;
  v59[16] = 2;
  v8();
  v60 = (v4 + 27 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "time_until_next_calendar_event_with_attendees_in_mins";
  *(v61 + 1) = 53;
  v61[16] = 2;
  v8();
  v62 = (v4 + 28 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "time_since_previous_calendar_event_that_contains_title_work_in_mins";
  *(v63 + 1) = 67;
  v63[16] = 2;
  v8();
  v64 = (v4 + 29 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "time_since_previous_calendar_event_that_supports_location_directory_searches_in_mins";
  *(v65 + 1) = 84;
  v65[16] = 2;
  v8();
  v66 = (v4 + 30 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "time_since_previous_calendar_event_that_affects_availability_in_mins";
  *(v67 + 1) = 68;
  v67[16] = 2;
  v8();
  v68 = (v4 + 31 * v2);
  v69 = v68 + v1[14];
  *v68 = 32;
  *v69 = "time_since_previous_calendar_event_with_attendees_in_mins";
  *(v69 + 1) = 57;
  v69[16] = 2;
  v8();
  return sub_1C4F004D8();
}

uint64_t sub_1C48E1988()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins, 1, 1, v2);
  return v0;
}

uint64_t sub_1C48E1D3C(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v72 - v4;
  v6 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  v7 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday, 1, 1, v7);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent, 1, 1, v7);
  v73 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork, 1, 1, v7);
  v74 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches, 1, 1, v7);
  v75 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability, 1, 1, v7);
  v76 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent, 1, 1, v7);
  v77 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents, 1, 1, v7);
  v78 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork, 1, 1, v7);
  v79 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches, 1, 1, v7);
  v80 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability, 1, 1, v7);
  v81 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees, 1, 1, v7);
  v82 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins, 1, 1, v7);
  v83 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins, 1, 1, v7);
  v84 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v7);
  v85 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins, 1, 1, v7);
  v86 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins, 1, 1, v7);
  v87 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins, 1, 1, v7);
  v88 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins, 1, 1, v7);
  v89 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v7);
  v90 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins, 1, 1, v7);
  v91 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins, 1, 1, v7);
  v92 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins, 1, 1, v7);
  v93 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins, 1, 1, v7);
  v94 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins, 1, 1, v7);
  v95 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v7);
  v96 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins, 1, 1, v7);
  v97 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins, 1, 1, v7);
  v98 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins, 1, 1, v7);
  v99 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins, 1, 1, v7);
  v100 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins, 1, 1, v7);
  v101 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins, 1, 1, v7);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  swift_beginAccess();
  sub_1C4460108(a1 + v10, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v14 = v73;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v14, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v15, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v16 = v74;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v16, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v17, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v18 = v75;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v18, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent;
  swift_beginAccess();
  sub_1C4460108(a1 + v19, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v20 = v76;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v20, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents;
  swift_beginAccess();
  sub_1C4460108(a1 + v21, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v22 = v77;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v22, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v23, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v24 = v78;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v25, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v26 = v79;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v26, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v27, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v28 = v80;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v28, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees;
  swift_beginAccess();
  sub_1C4460108(a1 + v29, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v30 = v81;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v30, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v31, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v32 = v82;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v32, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v33, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v34 = v83;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v34, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v35, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v36 = v84;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v36, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v37, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v38 = v85;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v38, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v39, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v40 = v86;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v40, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v41, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v42 = v87;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v42, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v43, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v44 = v88;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v44, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v45, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v46 = v89;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v46, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v47, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v48 = v90;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v48, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v49, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v50 = v91;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v50, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v51, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v52 = v92;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v52, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v53, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v54 = v93;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v54, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v55, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v56 = v94;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v56, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v57, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v58 = v95;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v58, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v59, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v60 = v96;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v60, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v61, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v62 = v97;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v62, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v63, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v64 = v98;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v64, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v65, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v66 = v99;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v66, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v67 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v67, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v68 = v100;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v69, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v70 = v101;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v70, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48E2E5C()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

void sub_1C48E31D4(uint64_t a1)
{
  sub_1C48B3958(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48E32B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C48E36A8(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C48E3784(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C48E3860(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C48E393C(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C48E3A18(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C48E3AF4(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C48E3BD0(a2, a1, a3, a4);
        break;
      case 8:
        sub_1C48E3CAC(a2, a1, a3, a4);
        break;
      case 9:
        sub_1C48E3D88(a2, a1, a3, a4);
        break;
      case 10:
        sub_1C48E3E64(a2, a1, a3, a4);
        break;
      case 11:
        sub_1C48E3F40(a2, a1, a3, a4);
        break;
      case 12:
        sub_1C48E401C(a2, a1, a3, a4);
        break;
      case 13:
        sub_1C48E40F8(a2, a1, a3, a4);
        break;
      case 14:
        sub_1C48E41D4(a2, a1, a3, a4);
        break;
      case 15:
        sub_1C48E42B0(a2, a1, a3, a4);
        break;
      case 16:
        sub_1C48E438C(a2, a1, a3, a4);
        break;
      case 17:
        sub_1C48E4468(a2, a1, a3, a4);
        break;
      case 18:
        sub_1C48E4544(a2, a1, a3, a4);
        break;
      case 19:
        sub_1C48E4620(a2, a1, a3, a4);
        break;
      case 20:
        sub_1C48E46FC(a2, a1, a3, a4);
        break;
      case 21:
        sub_1C48E47D8(a2, a1, a3, a4);
        break;
      case 22:
        sub_1C48E48B4(a2, a1, a3, a4);
        break;
      case 23:
        sub_1C48E4990(a2, a1, a3, a4);
        break;
      case 24:
        sub_1C48E4A6C(a2, a1, a3, a4);
        break;
      case 25:
        sub_1C48E4B48(a2, a1, a3, a4);
        break;
      case 26:
        sub_1C48E4C24(a2, a1, a3, a4);
        break;
      case 27:
        sub_1C48E4D00(a2, a1, a3, a4);
        break;
      case 28:
        sub_1C48E4DDC(a2, a1, a3, a4);
        break;
      case 29:
        sub_1C48E4EB8(a2, a1, a3, a4);
        break;
      case 30:
        sub_1C48E4F94(a2, a1, a3, a4);
        break;
      case 31:
        sub_1C48E5070(a2, a1, a3, a4);
        break;
      case 32:
        sub_1C48E514C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C48E36A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E393C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E3F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E401C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E40F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E41D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E42B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E438C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E46FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E47D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E48B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E4F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E5070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48E5228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C48E5548(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C48E5730(a1, a2, a3, a4);
    sub_1C48E5918(a1, a2, a3, a4);
    sub_1C48E5B00(a1, a2, a3, a4);
    sub_1C48E5CE8(a1, a2, a3, a4);
    sub_1C48E5ED0(a1, a2, a3, a4);
    sub_1C48E60B8(a1, a2, a3, a4);
    sub_1C48E62A0(a1, a2, a3, a4);
    sub_1C48E6488(a1, a2, a3, a4);
    sub_1C48E6670(a1, a2, a3, a4);
    sub_1C48E6858(a1, a2, a3, a4);
    sub_1C48E6A40(a1, a2, a3, a4);
    sub_1C48E6C28(a1, a2, a3, a4);
    sub_1C48E6E10(a1, a2, a3, a4);
    sub_1C48E6FF8(a1, a2, a3, a4);
    sub_1C48E71E0(a1, a2, a3, a4);
    sub_1C48E73C8(a1, a2, a3, a4);
    sub_1C48E75B0(a1, a2, a3, a4);
    sub_1C48E7798(a1, a2, a3, a4);
    sub_1C48E7980(a1, a2, a3, a4);
    sub_1C48E7B68(a1, a2, a3, a4);
    sub_1C48E7D50(a1, a2, a3, a4);
    sub_1C48E7F38(a1, a2, a3, a4);
    sub_1C48E8120(a1, a2, a3, a4);
    sub_1C48E8308(a1, a2, a3, a4);
    sub_1C48E84F0(a1, a2, a3, a4);
    sub_1C48E86D8(a1, a2, a3, a4);
    sub_1C48E88C0(a1, a2, a3, a4);
    sub_1C48E8AA8(a1, a2, a3, a4);
    sub_1C48E8C90(a1, a2, a3, a4);
    sub_1C48E8E78(a1, a2, a3, a4);
    return sub_1C48E9060(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C48E5548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E5730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E5B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E5CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E5ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E60B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E62A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E6FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E71E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E73C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E75B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E7798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E7980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E7B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E7D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E7F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E8120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E8308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E84F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E86D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E88C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E8AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E8C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E8E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48E9060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

BOOL sub_1C48E9248(uint64_t a1, uint64_t a2)
{
  v649 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v649);
  v646 = (&v553 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v648 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  MEMORY[0x1EEE9AC00](v648);
  v598 = &v553 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v597 = &v553 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v594 = &v553 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v591 = &v553 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v588 = &v553 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v586 = &v553 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v583 = &v553 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v580 = &v553 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v578 = &v553 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v575 = &v553 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v572 = &v553 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v569 = &v553 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v566 = &v553 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v563 = &v553 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v560 = &v553 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v602 = &v553 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v605 = &v553 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v608 = &v553 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v611 = &v553 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v614 = &v553 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v617 = &v553 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v620 = &v553 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v622 = &v553 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v624 = &v553 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v627 = &v553 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v630 = &v553 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v633 = &v553 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v636 = &v553 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v639 = &v553 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v643 = &v553 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v645 = &v553 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v553 - v67;
  v69 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v596 = &v553 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v595 = &v553 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v593 = &v553 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v592 = &v553 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v590 = &v553 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v589 = &v553 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v587 = &v553 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v585 = &v553 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v584 = &v553 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v582 = &v553 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v581 = &v553 - v90;
  MEMORY[0x1EEE9AC00](v91);
  v579 = &v553 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v577 = &v553 - v94;
  MEMORY[0x1EEE9AC00](v95);
  v576 = &v553 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v574 = &v553 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v573 = &v553 - v100;
  MEMORY[0x1EEE9AC00](v101);
  v571 = &v553 - v102;
  MEMORY[0x1EEE9AC00](v103);
  v570 = &v553 - v104;
  MEMORY[0x1EEE9AC00](v105);
  v568 = &v553 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v567 = &v553 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v565 = &v553 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v564 = &v553 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v562 = &v553 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v561 = &v553 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v559 = &v553 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v558 = &v553 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v557 = &v553 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v556 = &v553 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v555 = &v553 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v554 = &v553 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v599 = &v553 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v600 = &v553 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v601 = &v553 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v603 = &v553 - v136;
  MEMORY[0x1EEE9AC00](v137);
  v604 = &v553 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v606 = &v553 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v607 = &v553 - v142;
  MEMORY[0x1EEE9AC00](v143);
  v609 = &v553 - v144;
  MEMORY[0x1EEE9AC00](v145);
  v610 = &v553 - v146;
  MEMORY[0x1EEE9AC00](v147);
  v612 = &v553 - v148;
  MEMORY[0x1EEE9AC00](v149);
  v613 = &v553 - v150;
  MEMORY[0x1EEE9AC00](v151);
  v615 = &v553 - v152;
  MEMORY[0x1EEE9AC00](v153);
  v616 = &v553 - v154;
  MEMORY[0x1EEE9AC00](v155);
  v619 = &v553 - v156;
  MEMORY[0x1EEE9AC00](v157);
  v618 = &v553 - v158;
  MEMORY[0x1EEE9AC00](v159);
  v623 = &v553 - v160;
  MEMORY[0x1EEE9AC00](v161);
  v621 = &v553 - v162;
  MEMORY[0x1EEE9AC00](v163);
  v626 = &v553 - v164;
  MEMORY[0x1EEE9AC00](v165);
  v625 = &v553 - v166;
  MEMORY[0x1EEE9AC00](v167);
  v629 = &v553 - v168;
  MEMORY[0x1EEE9AC00](v169);
  v628 = &v553 - v170;
  MEMORY[0x1EEE9AC00](v171);
  v632 = &v553 - v172;
  MEMORY[0x1EEE9AC00](v173);
  v631 = &v553 - v174;
  MEMORY[0x1EEE9AC00](v175);
  v635 = &v553 - v176;
  MEMORY[0x1EEE9AC00](v177);
  v634 = &v553 - v178;
  MEMORY[0x1EEE9AC00](v179);
  v638 = &v553 - v180;
  MEMORY[0x1EEE9AC00](v181);
  v637 = &v553 - v182;
  MEMORY[0x1EEE9AC00](v183);
  v641 = &v553 - v184;
  MEMORY[0x1EEE9AC00](v185);
  v640 = &v553 - v186;
  MEMORY[0x1EEE9AC00](v187);
  v642 = &v553 - v188;
  MEMORY[0x1EEE9AC00](v189);
  v644 = &v553 - v190;
  MEMORY[0x1EEE9AC00](v191);
  v647 = &v553 - v192;
  MEMORY[0x1EEE9AC00](v193);
  v195 = &v553 - v194;
  MEMORY[0x1EEE9AC00](v196);
  v198 = &v553 - v197;
  v199 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  swift_beginAccess();
  v200 = a1;
  sub_1C4460108(a1 + v199, v198, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v201 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsToday;
  swift_beginAccess();
  v202 = *(v648 + 48);
  sub_1C4460108(v198, v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v203 = a2 + v201;
  v204 = a2;
  v205 = v649;
  sub_1C4460108(v203, &v68[v202], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v68, 1, v205) == 1)
  {

    sub_1C4420C3C(v198, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v206 = sub_1C44157D4(&v68[v202], 1, v205);
    v207 = v200;
    if (v206 == 1)
    {
      sub_1C4420C3C(v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_8;
    }

LABEL_6:
    v208 = v68;
LABEL_14:
    sub_1C4420C3C(v208, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_15;
  }

  sub_1C4460108(v68, v195, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(&v68[v202], 1, v205) == 1)
  {

    sub_1C4420C3C(v198, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_6;
  }

  v209 = v646;
  sub_1C4924B90(&v68[v202], v646);

  v210 = sub_1C47E3504(v195, v209);
  sub_1C4924B3C();
  sub_1C4420C3C(v198, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  v207 = v200;
  sub_1C4420C3C(v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v210 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v211 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday;
  swift_beginAccess();
  v212 = v647;
  sub_1C4460108(v207 + v211, v647, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v213 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numCalendarEventsRemainingToday;
  swift_beginAccess();
  v214 = v648;
  v215 = *(v648 + 48);
  v216 = v645;
  sub_1C4460108(v212, v645, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v217 = v216;
  sub_1C4460108(v204 + v213, v216 + v215, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v218 = v649;
  if (sub_1C44157D4(v216, 1, v649) == 1)
  {
    sub_1C4420C3C(v212, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v216 + v215, 1, v218) == 1)
    {
      v219 = v214;
      sub_1C4420C3C(v217, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v220 = v644;
  sub_1C4460108(v216, v644, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v216 + v215, 1, v218) == 1)
  {
    sub_1C4420C3C(v647, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_13:
    v208 = v216;
    goto LABEL_14;
  }

  v219 = v214;
  v222 = v217 + v215;
  v223 = v646;
  sub_1C4924B90(v222, v646);
  v224 = sub_1C47E3504(v220, v223);
  sub_1C4924B3C();
  sub_1C4420C3C(v647, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v217, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v224 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v225 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent;
  swift_beginAccess();
  v226 = v642;
  sub_1C4460108(v207 + v225, v642, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v227 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__isCurrentlyInCalendarEvent;
  swift_beginAccess();
  v228 = v219;
  v229 = v226;
  v230 = *(v228 + 48);
  v231 = v226;
  v232 = v643;
  sub_1C4460108(v231, v643, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v204 + v227, v232 + v230, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v233 = v649;
  v234 = sub_1C44157D4(v232, 1, v649);
  v553 = v207;
  if (v234 == 1)
  {
    sub_1C4420C3C(v229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v230, 1, v233) != 1)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v235 = v640;
    sub_1C4460108(v232, v640, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v230, 1, v233) == 1)
    {
      sub_1C4420C3C(v229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_60:
      sub_1C4924B3C();
      goto LABEL_61;
    }

    v236 = v232 + v230;
    v237 = v646;
    sub_1C4924B90(v236, v646);
    v238 = sub_1C47E3504(v235, v237);
    sub_1C4924B3C();
    sub_1C4420C3C(v229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v238 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v239 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork;
  v240 = v553;
  swift_beginAccess();
  v241 = v641;
  sub_1C4460108(v240 + v239, v641, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v242 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventContainsTitleWork;
  swift_beginAccess();
  v243 = v648;
  v244 = *(v648 + 48);
  v232 = v639;
  sub_1C4460108(v241, v639, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v204 + v242, v232 + v244, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v245 = v649;
  if (sub_1C44157D4(v232, 1, v649) == 1)
  {
    sub_1C4420C3C(v241, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v244, 1, v245) != 1)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v246 = v637;
    sub_1C4460108(v232, v637, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v244, 1, v245) == 1)
    {
      v247 = v641;
      goto LABEL_59;
    }

    v248 = v232 + v244;
    v249 = v646;
    sub_1C4924B90(v248, v646);
    v250 = sub_1C47E3504(v246, v249);
    sub_1C4924B3C();
    sub_1C4420C3C(v641, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v250 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v251 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches;
  v252 = v553;
  swift_beginAccess();
  v253 = v252 + v251;
  v254 = v243;
  v255 = v638;
  sub_1C4460108(v253, v638, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v256 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventSupportsLocationDirectorySearches;
  swift_beginAccess();
  v257 = *(v254 + 48);
  v232 = v636;
  sub_1C4460108(v255, v636, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v204 + v256, v232 + v257, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v232, 1, v245) == 1)
  {
    sub_1C4420C3C(v255, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v257, 1, v245) != 1)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v258 = v634;
    sub_1C4460108(v232, v634, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v257, 1, v245) == 1)
    {
      v247 = v638;
      goto LABEL_59;
    }

    v259 = v232 + v257;
    v260 = v646;
    sub_1C4924B90(v259, v646);
    v261 = sub_1C47E3504(v258, v260);
    sub_1C4924B3C();
    sub_1C4420C3C(v638, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v261 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v262 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability;
  v263 = v553;
  swift_beginAccess();
  v264 = v263 + v262;
  v265 = v635;
  sub_1C4460108(v264, v635, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v266 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__currentCalendarEventIsAffectingAvailability;
  swift_beginAccess();
  v267 = v648;
  v268 = *(v648 + 48);
  v232 = v633;
  sub_1C4460108(v265, v633, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v204 + v266, v232 + v268, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v232, 1, v245) == 1)
  {
    sub_1C4420C3C(v265, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v268, 1, v245) != 1)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v269 = v631;
    sub_1C4460108(v232, v631, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v268, 1, v245) == 1)
    {
      v247 = v635;
      goto LABEL_59;
    }

    v270 = v646;
    sub_1C4924B90(v232 + v268, v646);
    v271 = sub_1C47E3504(v269, v270);
    sub_1C4924B3C();
    sub_1C4420C3C(v635, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v271 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v272 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent;
  v273 = v553;
  swift_beginAccess();
  v274 = v273 + v272;
  v275 = v632;
  sub_1C4460108(v274, v632, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v276 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__numAttendeesInCurrentCalendarEvent;
  swift_beginAccess();
  v277 = *(v267 + 48);
  v232 = v630;
  sub_1C4460108(v275, v630, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v204 + v276, v232 + v277, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v232, 1, v245) == 1)
  {
    sub_1C4420C3C(v275, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v277, 1, v245) != 1)
    {
      goto LABEL_61;
    }

    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v278 = v628;
    sub_1C4460108(v232, v628, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v277, 1, v245) == 1)
    {
      v247 = v632;
      goto LABEL_59;
    }

    v279 = v646;
    sub_1C4924B90(v232 + v277, v646);
    v280 = sub_1C47E3504(v278, v279);
    sub_1C4924B3C();
    sub_1C4420C3C(v632, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v280 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v281 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents;
  v282 = v553;
  swift_beginAccess();
  v283 = v282 + v281;
  v284 = v629;
  sub_1C4460108(v283, v629, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v285 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEvents;
  swift_beginAccess();
  v286 = *(v267 + 48);
  v232 = v627;
  sub_1C4460108(v284, v627, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v204 + v285, v232 + v286, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v232, 1, v245) != 1)
  {
    v287 = v625;
    sub_1C4460108(v232, v625, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v286, 1, v245) != 1)
    {
      v288 = v646;
      sub_1C4924B90(v232 + v286, v646);
      v289 = sub_1C47E3504(v287, v288);
      sub_1C4924B3C();
      sub_1C4420C3C(v629, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if ((v289 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_54;
    }

    v247 = v629;
LABEL_59:
    sub_1C4420C3C(v247, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_60;
  }

  sub_1C4420C3C(v284, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v232 + v286, 1, v245) != 1)
  {
    goto LABEL_61;
  }

  sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_54:
  v290 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork;
  v291 = v553;
  swift_beginAccess();
  v292 = v291 + v290;
  v293 = v626;
  sub_1C4460108(v292, v626, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v294 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatContainTitleWork;
  swift_beginAccess();
  v295 = *(v267 + 48);
  v232 = v624;
  sub_1C4460108(v293, v624, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v204 + v294, v232 + v295, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v232, 1, v245) == 1)
  {
    sub_1C4420C3C(v293, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v232 + v295, 1, v245) == 1)
    {
      sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v296 = v622;
      goto LABEL_64;
    }

LABEL_61:
    sub_1C4420C3C(v232, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_15;
  }

  v297 = v621;
  sub_1C4460108(v232, v621, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v232 + v295, 1, v245) == 1)
  {
    v247 = v626;
    goto LABEL_59;
  }

  v298 = v646;
  sub_1C4924B90(v232 + v295, v646);
  v299 = sub_1C47E3504(v297, v298);
  sub_1C4924B3C();
  sub_1C4420C3C(v626, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v296 = v622;
  if ((v299 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_64:
  v300 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches;
  v301 = v553;
  swift_beginAccess();
  v302 = v301 + v300;
  v303 = v623;
  sub_1C4460108(v302, v623, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v304 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatSupportLocationDirectorySearches;
  swift_beginAccess();
  v305 = *(v267 + 48);
  sub_1C4460108(v303, v296, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v204 + v304, v296 + v305, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v296, 1, v245) == 1)
  {
    v306 = v553;
    sub_1C4420C3C(v623, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v296 + v305, 1, v245) == 1)
    {
      sub_1C4420C3C(v296, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v306 = v553;
  v307 = v618;
  sub_1C4460108(v296, v618, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v296 + v305, 1, v245) == 1)
  {
    sub_1C4420C3C(v623, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_69:
    v208 = v296;
    goto LABEL_14;
  }

  v308 = v646;
  sub_1C4924B90(v296 + v305, v646);
  v309 = sub_1C47E3504(v307, v308);
  sub_1C4924B3C();
  sub_1C4420C3C(v623, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v296, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v309 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_71:
  v310 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability;
  swift_beginAccess();
  v311 = v619;
  sub_1C4460108(v306 + v310, v619, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v312 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsThatAffectAvailability;
  swift_beginAccess();
  v313 = *(v648 + 48);
  v314 = v620;
  sub_1C4460108(v311, v620, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v315 = v204;
  sub_1C4460108(v204 + v312, v314 + v313, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v314, 1, v649) == 1)
  {
    sub_1C4420C3C(v619, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v620 + v313, 1, v649) == 1)
    {
      sub_1C4420C3C(v620, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_78;
    }

LABEL_76:
    v317 = v620;
LABEL_217:
    sub_1C4420C3C(v317, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_15;
  }

  v316 = v620;
  sub_1C4460108(v620, v616, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v316 + v313, 1, v649) == 1)
  {
    sub_1C4420C3C(v619, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_76;
  }

  v318 = v620;
  v319 = v620 + v313;
  v320 = v646;
  sub_1C4924B90(v319, v646);
  v321 = sub_1C47E3504(v616, v320);
  sub_1C4924B3C();
  sub_1C4420C3C(v619, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v318, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v321 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_78:
  v322 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees;
  swift_beginAccess();
  v323 = v615;
  sub_1C4460108(v306 + v322, v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v324 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__inBetweenFirstAndLastCalendarEventsWithAttendees;
  swift_beginAccess();
  v325 = *(v648 + 48);
  v326 = v323;
  v327 = v617;
  sub_1C4460108(v326, v617, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v324, v327 + v325, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v327, 1, v649) == 1)
  {
    sub_1C4420C3C(v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v617 + v325, 1, v649) == 1)
    {
      sub_1C4420C3C(v617, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v328 = v617;
  sub_1C4460108(v617, v613, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v328 + v325, 1, v649) == 1)
  {
    sub_1C4420C3C(v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_83:
    v317 = v617;
    goto LABEL_217;
  }

  v329 = v617;
  v330 = v617 + v325;
  v331 = v646;
  sub_1C4924B90(v330, v646);
  v332 = sub_1C47E3504(v613, v331);
  sub_1C4924B3C();
  sub_1C4420C3C(v615, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v329, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v332 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_85:
  v333 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins;
  swift_beginAccess();
  v334 = v612;
  sub_1C4460108(v306 + v333, v612, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v335 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventInMins;
  swift_beginAccess();
  v336 = *(v648 + 48);
  v337 = v334;
  v338 = v614;
  sub_1C4460108(v337, v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v335, v338 + v336, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v338, 1, v649) == 1)
  {
    sub_1C4420C3C(v612, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v614 + v336, 1, v649) == 1)
    {
      sub_1C4420C3C(v614, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_92;
    }

    goto LABEL_90;
  }

  v339 = v614;
  sub_1C4460108(v614, v610, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v339 + v336, 1, v649) == 1)
  {
    sub_1C4420C3C(v612, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_90:
    v317 = v614;
    goto LABEL_217;
  }

  v340 = v614;
  v341 = v614 + v336;
  v342 = v646;
  sub_1C4924B90(v341, v646);
  v343 = sub_1C47E3504(v610, v342);
  sub_1C4924B3C();
  sub_1C4420C3C(v612, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v340, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v343 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_92:
  v344 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v345 = v609;
  sub_1C4460108(v306 + v344, v609, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v346 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v347 = *(v648 + 48);
  v348 = v345;
  v349 = v611;
  sub_1C4460108(v348, v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v346, v349 + v347, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v349, 1, v649) == 1)
  {
    sub_1C4420C3C(v609, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v611 + v347, 1, v649) == 1)
    {
      sub_1C4420C3C(v611, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_99;
    }

    goto LABEL_97;
  }

  v350 = v611;
  sub_1C4460108(v611, v607, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v350 + v347, 1, v649) == 1)
  {
    sub_1C4420C3C(v609, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_97:
    v317 = v611;
    goto LABEL_217;
  }

  v351 = v611;
  v352 = v611 + v347;
  v353 = v646;
  sub_1C4924B90(v352, v646);
  v354 = sub_1C47E3504(v607, v353);
  sub_1C4924B3C();
  sub_1C4420C3C(v609, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v351, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v354 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_99:
  v355 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v356 = v606;
  sub_1C4460108(v306 + v355, v606, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v357 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v358 = *(v648 + 48);
  v359 = v356;
  v360 = v608;
  sub_1C4460108(v359, v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v357, v360 + v358, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v360, 1, v649) == 1)
  {
    sub_1C4420C3C(v606, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v608 + v358, 1, v649) == 1)
    {
      sub_1C4420C3C(v608, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_106;
    }

    goto LABEL_104;
  }

  v361 = v608;
  sub_1C4460108(v608, v604, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v361 + v358, 1, v649) == 1)
  {
    sub_1C4420C3C(v606, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_104:
    v317 = v608;
    goto LABEL_217;
  }

  v362 = v608;
  v363 = v608 + v358;
  v364 = v646;
  sub_1C4924B90(v363, v646);
  v365 = sub_1C47E3504(v604, v364);
  sub_1C4924B3C();
  sub_1C4420C3C(v606, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v362, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v365 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_106:
  v366 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v367 = v603;
  sub_1C4460108(v306 + v366, v603, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v368 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v369 = *(v648 + 48);
  v370 = v367;
  v371 = v605;
  sub_1C4460108(v370, v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v368, v371 + v369, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v371, 1, v649) == 1)
  {
    sub_1C4420C3C(v603, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v605 + v369, 1, v649) == 1)
    {
      sub_1C4420C3C(v605, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  v372 = v605;
  sub_1C4460108(v605, v601, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v372 + v369, 1, v649) == 1)
  {
    sub_1C4420C3C(v603, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_111:
    v317 = v605;
    goto LABEL_217;
  }

  v373 = v605;
  v374 = v605 + v369;
  v375 = v646;
  sub_1C4924B90(v374, v646);
  v376 = sub_1C47E3504(v601, v375);
  sub_1C4924B3C();
  sub_1C4420C3C(v603, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v373, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v376 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_113:
  v377 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v378 = v600;
  sub_1C4460108(v306 + v377, v600, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v379 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilFirstCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v380 = *(v648 + 48);
  v381 = v378;
  v382 = v602;
  sub_1C4460108(v381, v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v379, v382 + v380, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v382, 1, v649) == 1)
  {
    sub_1C4420C3C(v600, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v602 + v380, 1, v649) == 1)
    {
      sub_1C4420C3C(v602, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_120;
    }

    goto LABEL_118;
  }

  v383 = v602;
  sub_1C4460108(v602, v599, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v383 + v380, 1, v649) == 1)
  {
    sub_1C4420C3C(v600, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_118:
    v317 = v602;
    goto LABEL_217;
  }

  v384 = v602;
  v385 = v602 + v380;
  v386 = v646;
  sub_1C4924B90(v385, v646);
  v387 = sub_1C47E3504(v599, v386);
  sub_1C4924B3C();
  sub_1C4420C3C(v600, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v384, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v387 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_120:
  v388 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins;
  swift_beginAccess();
  v389 = v554;
  sub_1C4460108(v306 + v388, v554, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v390 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventInMins;
  swift_beginAccess();
  v391 = *(v648 + 48);
  v392 = v389;
  v393 = v560;
  sub_1C4460108(v392, v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v390, v393 + v391, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v393, 1, v649) == 1)
  {
    sub_1C4420C3C(v554, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v560 + v391, 1, v649) == 1)
    {
      sub_1C4420C3C(v560, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  v394 = v560;
  sub_1C4460108(v560, v555, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v394 + v391, 1, v649) == 1)
  {
    sub_1C4420C3C(v554, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_125:
    v317 = v560;
    goto LABEL_217;
  }

  v395 = v560;
  v396 = v560 + v391;
  v397 = v646;
  sub_1C4924B90(v396, v646);
  v398 = sub_1C47E3504(v555, v397);
  sub_1C4924B3C();
  sub_1C4420C3C(v554, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v395, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v398 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_127:
  v399 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v400 = v556;
  sub_1C4460108(v306 + v399, v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v401 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v402 = *(v648 + 48);
  v403 = v400;
  v404 = v563;
  sub_1C4460108(v403, v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v401, v404 + v402, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v404, 1, v649) == 1)
  {
    sub_1C4420C3C(v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v563 + v402, 1, v649) == 1)
    {
      sub_1C4420C3C(v563, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_134;
    }

    goto LABEL_132;
  }

  v405 = v563;
  sub_1C4460108(v563, v557, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v405 + v402, 1, v649) == 1)
  {
    sub_1C4420C3C(v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_132:
    v317 = v563;
    goto LABEL_217;
  }

  v406 = v563;
  v407 = v563 + v402;
  v408 = v646;
  sub_1C4924B90(v407, v646);
  v409 = sub_1C47E3504(v557, v408);
  sub_1C4924B3C();
  sub_1C4420C3C(v556, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v406, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v409 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_134:
  v410 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v411 = v558;
  sub_1C4460108(v306 + v410, v558, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v412 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v413 = *(v648 + 48);
  v414 = v411;
  v415 = v566;
  sub_1C4460108(v414, v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v412, v415 + v413, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v415, 1, v649) == 1)
  {
    sub_1C4420C3C(v558, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v566 + v413, 1, v649) == 1)
    {
      sub_1C4420C3C(v566, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_141;
    }

    goto LABEL_139;
  }

  v416 = v566;
  sub_1C4460108(v566, v559, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v416 + v413, 1, v649) == 1)
  {
    sub_1C4420C3C(v558, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_139:
    v317 = v566;
    goto LABEL_217;
  }

  v417 = v566;
  v418 = v566 + v413;
  v419 = v646;
  sub_1C4924B90(v418, v646);
  v420 = sub_1C47E3504(v559, v419);
  sub_1C4924B3C();
  sub_1C4420C3C(v558, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v417, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v420 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_141:
  v421 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v422 = v561;
  sub_1C4460108(v306 + v421, v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v423 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v424 = *(v648 + 48);
  v425 = v422;
  v426 = v569;
  sub_1C4460108(v425, v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v423, v426 + v424, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v426, 1, v649) == 1)
  {
    sub_1C4420C3C(v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v569 + v424, 1, v649) == 1)
    {
      sub_1C4420C3C(v569, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_148;
    }

    goto LABEL_146;
  }

  v427 = v569;
  sub_1C4460108(v569, v562, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v427 + v424, 1, v649) == 1)
  {
    sub_1C4420C3C(v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_146:
    v317 = v569;
    goto LABEL_217;
  }

  v428 = v569;
  v429 = v569 + v424;
  v430 = v646;
  sub_1C4924B90(v429, v646);
  v431 = sub_1C47E3504(v562, v430);
  sub_1C4924B3C();
  sub_1C4420C3C(v561, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v428, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v431 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_148:
  v432 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v433 = v564;
  sub_1C4460108(v306 + v432, v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v434 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSinceLastCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v435 = *(v648 + 48);
  v436 = v433;
  v437 = v572;
  sub_1C4460108(v436, v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v434, v437 + v435, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v437, 1, v649) == 1)
  {
    sub_1C4420C3C(v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v572 + v435, 1, v649) == 1)
    {
      sub_1C4420C3C(v572, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_155;
    }

    goto LABEL_153;
  }

  v438 = v572;
  sub_1C4460108(v572, v565, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v438 + v435, 1, v649) == 1)
  {
    sub_1C4420C3C(v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_153:
    v317 = v572;
    goto LABEL_217;
  }

  v439 = v572;
  v440 = v572 + v435;
  v441 = v646;
  sub_1C4924B90(v440, v646);
  v442 = sub_1C47E3504(v565, v441);
  sub_1C4924B3C();
  sub_1C4420C3C(v564, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v439, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v442 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_155:
  v443 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins;
  swift_beginAccess();
  v444 = v567;
  sub_1C4460108(v306 + v443, v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v445 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventInMins;
  swift_beginAccess();
  v446 = *(v648 + 48);
  v447 = v444;
  v448 = v575;
  sub_1C4460108(v447, v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v445, v448 + v446, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v448, 1, v649) == 1)
  {
    sub_1C4420C3C(v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v575 + v446, 1, v649) == 1)
    {
      sub_1C4420C3C(v575, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_162;
    }

    goto LABEL_160;
  }

  v449 = v575;
  sub_1C4460108(v575, v568, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v449 + v446, 1, v649) == 1)
  {
    sub_1C4420C3C(v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_160:
    v317 = v575;
    goto LABEL_217;
  }

  v450 = v575;
  v451 = v575 + v446;
  v452 = v646;
  sub_1C4924B90(v451, v646);
  v453 = sub_1C47E3504(v568, v452);
  sub_1C4924B3C();
  sub_1C4420C3C(v567, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v450, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v453 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_162:
  v454 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins;
  swift_beginAccess();
  v455 = v570;
  sub_1C4460108(v306 + v454, v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v456 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventInMins;
  swift_beginAccess();
  v457 = *(v648 + 48);
  v458 = v455;
  v459 = v578;
  sub_1C4460108(v458, v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v456, v459 + v457, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v459, 1, v649) == 1)
  {
    sub_1C4420C3C(v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v578 + v457, 1, v649) == 1)
    {
      sub_1C4420C3C(v578, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_169;
    }

    goto LABEL_167;
  }

  v460 = v578;
  sub_1C4460108(v578, v571, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v460 + v457, 1, v649) == 1)
  {
    sub_1C4420C3C(v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_167:
    v317 = v578;
    goto LABEL_217;
  }

  v461 = v578;
  v462 = v578 + v457;
  v463 = v646;
  sub_1C4924B90(v462, v646);
  v464 = sub_1C47E3504(v571, v463);
  sub_1C4924B3C();
  sub_1C4420C3C(v570, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v461, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v464 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_169:
  v465 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v466 = v573;
  sub_1C4460108(v306 + v465, v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v467 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v468 = *(v648 + 48);
  v469 = v466;
  v470 = v580;
  sub_1C4460108(v469, v580, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v467, v470 + v468, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v470, 1, v649) == 1)
  {
    sub_1C4420C3C(v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v580 + v468, 1, v649) == 1)
    {
      sub_1C4420C3C(v580, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_176;
    }

    goto LABEL_174;
  }

  v471 = v580;
  sub_1C4460108(v580, v574, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v471 + v468, 1, v649) == 1)
  {
    sub_1C4420C3C(v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_174:
    v317 = v580;
    goto LABEL_217;
  }

  v472 = v580;
  v473 = v580 + v468;
  v474 = v646;
  sub_1C4924B90(v473, v646);
  v475 = sub_1C47E3504(v574, v474);
  sub_1C4924B3C();
  sub_1C4420C3C(v573, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v472, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v475 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_176:
  v476 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v477 = v576;
  sub_1C4460108(v306 + v476, v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v478 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v479 = *(v648 + 48);
  v480 = v477;
  v481 = v583;
  sub_1C4460108(v480, v583, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v478, v481 + v479, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v481, 1, v649) == 1)
  {
    sub_1C4420C3C(v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v583 + v479, 1, v649) == 1)
    {
      sub_1C4420C3C(v583, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_183;
    }

    goto LABEL_181;
  }

  v482 = v583;
  sub_1C4460108(v583, v577, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v482 + v479, 1, v649) == 1)
  {
    sub_1C4420C3C(v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_181:
    v317 = v583;
    goto LABEL_217;
  }

  v483 = v583;
  v484 = v583 + v479;
  v485 = v646;
  sub_1C4924B90(v484, v646);
  v486 = sub_1C47E3504(v577, v485);
  sub_1C4924B3C();
  sub_1C4420C3C(v576, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v483, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v486 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_183:
  v487 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v488 = v579;
  sub_1C4460108(v306 + v487, v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v489 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v490 = *(v648 + 48);
  v491 = v488;
  v492 = v586;
  sub_1C4460108(v491, v586, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v489, v492 + v490, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v492, 1, v649) == 1)
  {
    sub_1C4420C3C(v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v586 + v490, 1, v649) == 1)
    {
      sub_1C4420C3C(v586, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_190;
    }

    goto LABEL_188;
  }

  v493 = v586;
  sub_1C4460108(v586, v581, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v493 + v490, 1, v649) == 1)
  {
    sub_1C4420C3C(v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_188:
    v317 = v586;
    goto LABEL_217;
  }

  v494 = v586;
  v495 = v586 + v490;
  v496 = v646;
  sub_1C4924B90(v495, v646);
  v497 = sub_1C47E3504(v581, v496);
  sub_1C4924B3C();
  sub_1C4420C3C(v579, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v494, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v497 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_190:
  v498 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v499 = v582;
  sub_1C4460108(v306 + v498, v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v500 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeUntilNextCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v501 = *(v648 + 48);
  v502 = v499;
  v503 = v588;
  sub_1C4460108(v502, v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v500, v503 + v501, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v503, 1, v649) == 1)
  {
    sub_1C4420C3C(v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v588 + v501, 1, v649) == 1)
    {
      sub_1C4420C3C(v588, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_197;
    }

    goto LABEL_195;
  }

  v504 = v588;
  sub_1C4460108(v588, v584, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v504 + v501, 1, v649) == 1)
  {
    sub_1C4420C3C(v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_195:
    v317 = v588;
    goto LABEL_217;
  }

  v505 = v588;
  v506 = v588 + v501;
  v507 = v646;
  sub_1C4924B90(v506, v646);
  v508 = sub_1C47E3504(v584, v507);
  sub_1C4924B3C();
  sub_1C4420C3C(v582, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v505, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v508 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_197:
  v509 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v510 = v585;
  sub_1C4460108(v306 + v509, v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v511 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatContainsTitleWorkInMins;
  swift_beginAccess();
  v512 = *(v648 + 48);
  v513 = v510;
  v514 = v591;
  sub_1C4460108(v513, v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v511, v514 + v512, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v514, 1, v649) == 1)
  {
    sub_1C4420C3C(v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v591 + v512, 1, v649) == 1)
    {
      sub_1C4420C3C(v591, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_204;
    }

    goto LABEL_202;
  }

  v515 = v591;
  sub_1C4460108(v591, v587, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v515 + v512, 1, v649) == 1)
  {
    sub_1C4420C3C(v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_202:
    v317 = v591;
    goto LABEL_217;
  }

  v516 = v591;
  v517 = v591 + v512;
  v518 = v646;
  sub_1C4924B90(v517, v646);
  v519 = sub_1C47E3504(v587, v518);
  sub_1C4924B3C();
  sub_1C4420C3C(v585, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v516, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v519 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_204:
  v520 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v521 = v589;
  sub_1C4460108(v306 + v520, v589, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v522 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatSupportsLocationDirectorySearchesInMins;
  swift_beginAccess();
  v523 = *(v648 + 48);
  v524 = v521;
  v525 = v594;
  sub_1C4460108(v524, v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v522, v525 + v523, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v525, 1, v649) == 1)
  {
    sub_1C4420C3C(v589, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v594 + v523, 1, v649) == 1)
    {
      sub_1C4420C3C(v594, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_211;
    }

    goto LABEL_209;
  }

  v526 = v594;
  sub_1C4460108(v594, v590, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v526 + v523, 1, v649) == 1)
  {
    sub_1C4420C3C(v589, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_209:
    v317 = v594;
    goto LABEL_217;
  }

  v527 = v594;
  v528 = v594 + v523;
  v529 = v646;
  sub_1C4924B90(v528, v646);
  v530 = sub_1C47E3504(v590, v529);
  sub_1C4924B3C();
  sub_1C4420C3C(v589, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v527, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v530 & 1) == 0)
  {
LABEL_15:

    return 0;
  }

LABEL_211:
  v531 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v532 = v592;
  sub_1C4460108(v306 + v531, v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v533 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventThatAffectsAvailabilityInMins;
  swift_beginAccess();
  v534 = *(v648 + 48);
  v535 = v532;
  v536 = v597;
  sub_1C4460108(v535, v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v533, v536 + v534, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v536, 1, v649) == 1)
  {
    sub_1C4420C3C(v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v597 + v534, 1, v649) == 1)
    {
      sub_1C4420C3C(v597, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_220;
    }

    goto LABEL_216;
  }

  v537 = v597;
  sub_1C4460108(v597, v593, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v537 + v534, 1, v649) == 1)
  {
    sub_1C4420C3C(v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_216:
    v317 = v597;
    goto LABEL_217;
  }

  v538 = v597;
  v539 = v597 + v534;
  v540 = v646;
  sub_1C4924B90(v539, v646);
  v541 = sub_1C47E3504(v593, v540);
  sub_1C4924B3C();
  sub_1C4420C3C(v592, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v538, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v541 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_220:
  v542 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v543 = v595;
  sub_1C4460108(v306 + v542, v595, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v544 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext14CalendarEventsP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__timeSincePreviousCalendarEventWithAttendeesInMins;
  swift_beginAccess();
  v545 = *(v648 + 48);
  v546 = v543;
  v547 = v598;
  sub_1C4460108(v546, v598, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v315 + v544, v547 + v545, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v547, 1, v649) != 1)
  {
    v548 = v598;
    sub_1C4460108(v598, v596, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v548 + v545, 1, v649) == 1)
    {

      sub_1C4420C3C(v595, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      goto LABEL_225;
    }

    v549 = v598;
    v550 = v598 + v545;
    v551 = v646;
    sub_1C4924B90(v550, v646);
    v552 = sub_1C47E3504(v596, v551);

    sub_1C4924B3C();
    sub_1C4420C3C(v595, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v549, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    return (v552 & 1) != 0;
  }

  sub_1C4420C3C(v595, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v598 + v545, 1, v649) != 1)
  {
LABEL_225:
    sub_1C4420C3C(v598, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  sub_1C4420C3C(v598, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return 1;
}

uint64_t sub_1C48EE238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6E8, type metadata accessor for HUTenPointContext.CalendarEvents, &unk_1C4F38DCC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48EE2D8(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF338, type metadata accessor for HUTenPointContext.CalendarEvents, &unk_1C4F38E04);

  return sub_1C4F00428();
}

uint64_t sub_1C48EE3A0(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF338, type metadata accessor for HUTenPointContext.CalendarEvents, &unk_1C4F38E04);

  return sub_1C4F00438();
}

uint64_t sub_1C48EE460()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4FA9AD0);
  qword_1EC152470 = v1[0];
  *algn_1EC152478 = v1[1];
  return result;
}

uint64_t sub_1C48EE4D4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152480);
  sub_1C442B738(v0, qword_1EC152480);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activity_interval_duration_in_mins";
  *(v6 + 8) = 34;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "activity_interval_type";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48EE69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HUTenPointContext.ActivityInterval(0);
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  return sub_1C4F003F8();
}

uint64_t sub_1C48EE750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HUTenPointContext.ActivityInterval(0);
  sub_1C4460108(a1 + *(v11 + 20), v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

void sub_1C48EE924()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v40 = (v9 - v8);
  v10 = sub_1C43FBC98();
  v12 = sub_1C456902C(v10, v11);
  v13 = sub_1C43FBD18(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v39 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v42 = v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v39 - v23;
  v41 = v1(0, v22);
  v25 = *(v41 + 20);
  v26 = *(v18 + 48);
  v43 = v5;
  sub_1C442573C(v5 + v25, v24);
  v44 = v3;
  sub_1C442573C(v3 + v25, &v24[v26]);
  sub_1C440175C(v24, 1, v6);
  if (v27)
  {
    sub_1C440175C(&v24[v26], 1, v6);
    if (!v27)
    {
      goto LABEL_16;
    }

    sub_1C4420C3C(v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    sub_1C4460108(v24, v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(&v24[v26], 1, v6);
    if (v27)
    {
LABEL_15:
      sub_1C4924B3C();
LABEL_16:
      sub_1C4420C3C(v24, &qword_1EC0BB6C0, &unk_1C4F20AE0);
      goto LABEL_17;
    }

    v28 = v40;
    sub_1C4924B90(&v24[v26], v40);
    v29 = sub_1C47E3504(v17, v28);
    sub_1C4404C28();
    sub_1C4924B3C();
    sub_1C440D314();
    sub_1C4924B3C();
    sub_1C4420C3C(v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v29 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v24 = v42;
  v30 = *(v41 + 24);
  v31 = *(v18 + 48);
  sub_1C442573C(v43 + v30, v42);
  sub_1C442573C(v44 + v30, &v24[v31]);
  sub_1C440175C(v24, 1, v6);
  if (v27)
  {
    sub_1C440175C(&v24[v31], 1, v6);
    if (v27)
    {
      sub_1C4420C3C(v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_20:
      sub_1C4F00328();
      sub_1C44070A8();
      sub_1C49231A4(v37, v38, MEMORY[0x1E69AAC10]);
      sub_1C43FD2BC();
      v34 = sub_1C4F010B8();
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v32 = v39;
  sub_1C4460108(v24, v39, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(&v24[v31], 1, v6);
  if (v33)
  {
    goto LABEL_15;
  }

  v35 = v40;
  sub_1C4924B90(&v24[v31], v40);
  v36 = sub_1C47E3504(v32, v35);
  sub_1C4404C28();
  sub_1C4924B3C();
  sub_1C440D314();
  sub_1C4924B3C();
  sub_1C4420C3C(v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (v36)
  {
    goto LABEL_20;
  }

LABEL_17:
  v34 = 0;
LABEL_18:
  sub_1C444ACF8(v34);
  sub_1C43FE9F0();
}

uint64_t sub_1C48EEDEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6F0, type metadata accessor for HUTenPointContext.ActivityInterval, &unk_1C4F38C64);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48EEE8C(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF318, type metadata accessor for HUTenPointContext.ActivityInterval, &unk_1C4F38C9C);

  return sub_1C4F00428();
}

uint64_t sub_1C48EEF54(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF318, type metadata accessor for HUTenPointContext.ActivityInterval, &unk_1C4F38C9C);

  return sub_1C4F00438();
}

uint64_t sub_1C48EF000()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4FA9AF0);
  qword_1EC152498 = v1[0];
  unk_1EC1524A0 = v1[1];
  return result;
}

uint64_t sub_1C48EF074()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1524A8);
  sub_1C442B738(v0, qword_1EC1524A8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F17D00;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "local_device_app_category_distribution_in_activity_interval";
  *(v6 + 8) = 59;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "local_device_app_category_distribution_in_prev_30_minutes";
  *(v10 + 8) = 57;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "local_device_app_category_distribution_in_prev_5_minutes";
  *(v12 + 1) = 56;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "local_device_app_manual_category_distribution_in_activity_interval";
  *(v14 + 1) = 66;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "local_device_app_manual_category_distribution_in_prev_30_minutes";
  *(v16 + 1) = 64;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "local_device_app_manual_category_distribution_in_prev_5_minutes";
  *(v18 + 1) = 63;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "remote_device_app_category_distribution_in_activity_interval";
  *(v20 + 1) = 60;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "remote_device_app_category_distribution_in_prev_30_minutes";
  *(v22 + 1) = 58;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "remote_device_app_category_distribution_in_prev_5_minutes";
  *(v24 + 1) = 57;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "remote_device_app_manual_category_distribution_in_activity_interval";
  *(v26 + 1) = 67;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "remote_device_app_manual_category_distribution_in_prev_30_minutes";
  *(v28 + 1) = 65;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "remote_device_app_manual_category_distribution_in_prev_5_minutes";
  *(v30 + 1) = 64;
  v30[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48EF4E0()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes, 1, 1, v2);
  return v0;
}

uint64_t sub_1C48EF664(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v6 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  v7 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes, 1, 1, v7);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes, 1, 1, v7);
  v33 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval, 1, 1, v7);
  v34 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes, 1, 1, v7);
  v35 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes, 1, 1, v7);
  v36 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval, 1, 1, v7);
  v37 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes, 1, 1, v7);
  v38 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes, 1, 1, v7);
  v39 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval, 1, 1, v7);
  v40 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes, 1, 1, v7);
  v41 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes, 1, 1, v7);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v10, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v14 = v33;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v14, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v15, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v16 = v34;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v16, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v17, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v18 = v35;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v18, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v19, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v20 = v36;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v20, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v21, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v22 = v37;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v22, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v23, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v24 = v38;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v25, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v26 = v39;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v26, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v27, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v28 = v40;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v28, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v29, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v30 = v41;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v30, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48EFD34()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

void sub_1C48EFECC(uint64_t a1)
{
  sub_1C48B3958(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48EFF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C48F014C(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C48F0228(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C48F0304(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C48F03E0(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C48F04BC(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C48F0598(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C48F0674(a2, a1, a3, a4);
        break;
      case 8:
        sub_1C48F0750(a2, a1, a3, a4);
        break;
      case 9:
        sub_1C48F082C(a2, a1, a3, a4);
        break;
      case 10:
        sub_1C48F0908(a2, a1, a3, a4);
        break;
      case 11:
        sub_1C48F09E4(a2, a1, a3, a4);
        break;
      case 12:
        sub_1C48F0AC0(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C48F014C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F03E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F04BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F082C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F09E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F0B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C48F0CDC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C48F0EC4(a1, a2, a3, a4);
    sub_1C48F10AC(a1, a2, a3, a4);
    sub_1C48F1294(a1, a2, a3, a4);
    sub_1C48F147C(a1, a2, a3, a4);
    sub_1C48F1664(a1, a2, a3, a4);
    sub_1C48F184C(a1, a2, a3, a4);
    sub_1C48F1A34(a1, a2, a3, a4);
    sub_1C48F1C1C(a1, a2, a3, a4);
    sub_1C48F1E04(a1, a2, a3, a4);
    sub_1C48F1FEC(a1, a2, a3, a4);
    return sub_1C48F21D4(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C48F0CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F0EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F1FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F21D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

BOOL sub_1C48F23BC(uint64_t a1, uint64_t a2)
{
  v236 = a2;
  v237 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v237);
  v235 = (&v202 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v238 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  MEMORY[0x1EEE9AC00](v238);
  v205 = &v202 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v208 = &v202 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v210 = &v202 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v212 = &v202 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v215 = &v202 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v218 = &v202 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v221 = &v202 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v224 = &v202 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v227 = &v202 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v230 = &v202 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v234 = &v202 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v202 - v26;
  v28 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v202 = &v202 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v203 = &v202 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v204 = &v202 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v207 = &v202 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v206 = &v202 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v211 = &v202 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v209 = &v202 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v214 = &v202 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v213 = &v202 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v217 = &v202 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v216 = &v202 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v220 = &v202 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v219 = &v202 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v223 = &v202 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v222 = &v202 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v226 = &v202 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v225 = &v202 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v229 = &v202 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v228 = &v202 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v232 = &v202 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v231 = &v202 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v233 = &v202 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v202 - v73;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v202 - v76;
  v78 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v79 = a1;
  sub_1C4460108(a1 + v78, v77, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v80 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInActivityInterval;
  v81 = v236;
  swift_beginAccess();
  v82 = *(v238 + 48);
  sub_1C4460108(v77, v27, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v83 = v237;
  sub_1C4460108(v81 + v80, &v27[v82], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v27, 1, v83) == 1)
  {

    sub_1C4420C3C(v77, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v84 = v79;
    if (sub_1C44157D4(&v27[v82], 1, v83) == 1)
    {
      sub_1C4420C3C(v27, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_9;
    }

LABEL_6:
    sub_1C4420C3C(v27, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_57;
  }

  sub_1C4460108(v27, v74, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(&v27[v82], 1, v83) == 1)
  {

    sub_1C4420C3C(v77, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_6;
  }

  v85 = &v27[v82];
  v86 = v235;
  sub_1C4924B90(v85, v235);

  v87 = sub_1C47E3504(v74, v86);
  sub_1C4924B3C();
  sub_1C4420C3C(v77, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v84 = v79;
  sub_1C4924B3C();
  sub_1C4420C3C(v27, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v87 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_9:
  v88 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v89 = v233;
  sub_1C4460108(v84 + v88, v233, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v90 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v91 = *(v238 + 48);
  v92 = v234;
  sub_1C4460108(v89, v234, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v81 + v90, v92 + v91, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v93 = v237;
  v94 = v81;
  if (sub_1C44157D4(v92, 1, v237) == 1)
  {
    sub_1C4420C3C(v89, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v92 + v91, 1, v93) == 1)
    {
      sub_1C4420C3C(v92, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_16;
    }

LABEL_14:
    v96 = v92;
LABEL_56:
    sub_1C4420C3C(v96, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_57;
  }

  v95 = v231;
  sub_1C4460108(v92, v231, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v92 + v91, 1, v93) == 1)
  {
    sub_1C4420C3C(v89, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_14;
  }

  v97 = v235;
  sub_1C4924B90(v92 + v91, v235);
  v98 = sub_1C47E3504(v95, v97);
  sub_1C4924B3C();
  sub_1C4420C3C(v89, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v92, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v98 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_16:
  v99 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v234 = v84;
  v100 = v84 + v99;
  v101 = v232;
  sub_1C4460108(v100, v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v102 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v103 = v238;
  v104 = *(v238 + 48);
  v105 = v230;
  sub_1C4460108(v101, v230, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v94 + v102, v105 + v104, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v105, 1, v93) == 1)
  {
    sub_1C4420C3C(v101, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v106 = sub_1C44157D4(v105 + v104, 1, v93);
    v107 = v234;
    if (v106 != 1)
    {
      goto LABEL_55;
    }

    v108 = v94;
    sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v109 = v228;
    sub_1C4460108(v105, v228, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v105 + v104, 1, v93) == 1)
    {
      sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      goto LABEL_55;
    }

    v108 = v94;
    v110 = v105 + v104;
    v111 = v235;
    sub_1C4924B90(v110, v235);
    v112 = sub_1C47E3504(v109, v111);
    sub_1C4924B3C();
    sub_1C4420C3C(v232, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v107 = v234;
    if ((v112 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v113 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v114 = v103;
  v115 = v229;
  sub_1C4460108(v107 + v113, v229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v116 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInActivityInterval;
  v117 = v108;
  swift_beginAccess();
  v118 = *(v114 + 48);
  v105 = v227;
  sub_1C4460108(v115, v227, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v108 + v116, v105 + v118, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v119 = v237;
  if (sub_1C44157D4(v105, 1, v237) == 1)
  {
    sub_1C4420C3C(v115, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v105 + v118, 1, v119) == 1)
    {
      sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_31;
    }

LABEL_55:
    v96 = v105;
    goto LABEL_56;
  }

  v120 = v225;
  sub_1C4460108(v105, v225, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v105 + v118, 1, v119) == 1)
  {
    v121 = v229;
    goto LABEL_27;
  }

  v122 = v105 + v118;
  v123 = v235;
  sub_1C4924B90(v122, v235);
  v124 = sub_1C47E3504(v120, v123);
  sub_1C4924B3C();
  sub_1C4420C3C(v229, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v124 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_31:
  v125 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v126 = v226;
  sub_1C4460108(v107 + v125, v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v127 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v128 = *(v238 + 48);
  v105 = v224;
  sub_1C4460108(v126, v224, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v117 + v127, v105 + v128, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v105, 1, v119) == 1)
  {
    sub_1C4420C3C(v126, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v129 = sub_1C44157D4(v105 + v128, 1, v119);
    v130 = v236;
    if (v129 != 1)
    {
      goto LABEL_55;
    }

    sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v131 = v222;
    sub_1C4460108(v105, v222, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v105 + v128, 1, v119) == 1)
    {
      v132 = v226;
      goto LABEL_54;
    }

    v133 = v235;
    sub_1C4924B90(v105 + v128, v235);
    v134 = sub_1C47E3504(v131, v133);
    sub_1C4924B3C();
    sub_1C4420C3C(v226, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v130 = v236;
    if ((v134 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v135 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v136 = v223;
  sub_1C4460108(v107 + v135, v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v137 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__localDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v138 = *(v238 + 48);
  v105 = v221;
  sub_1C4460108(v136, v221, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v130 + v137, v105 + v138, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v105, 1, v119) == 1)
  {
    sub_1C4420C3C(v136, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v139 = sub_1C44157D4(v105 + v138, 1, v119);
    v140 = v236;
    if (v139 != 1)
    {
      goto LABEL_55;
    }

    sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    v141 = v219;
    sub_1C4460108(v105, v219, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v105 + v138, 1, v119) == 1)
    {
      v132 = v223;
      goto LABEL_54;
    }

    v142 = v235;
    sub_1C4924B90(v105 + v138, v235);
    v143 = sub_1C47E3504(v141, v142);
    sub_1C4924B3C();
    sub_1C4420C3C(v223, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v140 = v236;
    if ((v143 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  v144 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v145 = v220;
  sub_1C4460108(v107 + v144, v220, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v146 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v147 = *(v238 + 48);
  v105 = v218;
  sub_1C4460108(v145, v218, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v140 + v146, v105 + v147, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v105, 1, v119) == 1)
  {
    sub_1C4420C3C(v145, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v148 = sub_1C44157D4(v105 + v147, 1, v119);
    v149 = v236;
    if (v148 != 1)
    {
      goto LABEL_55;
    }

    sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_49;
  }

  v150 = v216;
  sub_1C4460108(v105, v216, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v105 + v147, 1, v119) == 1)
  {
    v132 = v220;
    goto LABEL_54;
  }

  v151 = v235;
  sub_1C4924B90(v105 + v147, v235);
  v152 = sub_1C47E3504(v150, v151);
  sub_1C4924B3C();
  sub_1C4420C3C(v220, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v149 = v236;
  if ((v152 & 1) == 0)
  {
LABEL_57:

    return 0;
  }

LABEL_49:
  v153 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v154 = v217;
  sub_1C4460108(v107 + v153, v217, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v155 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v156 = *(v238 + 48);
  v105 = v215;
  sub_1C4460108(v154, v215, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v149 + v155, v105 + v156, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v105, 1, v119) != 1)
  {
    v159 = v213;
    sub_1C4460108(v105, v213, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v105 + v156, 1, v119) != 1)
    {
      v161 = v235;
      sub_1C4924B90(v105 + v156, v235);
      v162 = sub_1C47E3504(v159, v161);
      sub_1C4924B3C();
      sub_1C4420C3C(v217, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v158 = v236;
      if ((v162 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_60;
    }

    v132 = v217;
LABEL_54:
    sub_1C4420C3C(v132, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    goto LABEL_55;
  }

  sub_1C4420C3C(v154, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v157 = sub_1C44157D4(v105 + v156, 1, v119);
  v158 = v236;
  if (v157 != 1)
  {
    goto LABEL_55;
  }

  sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_60:
  v163 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v164 = v214;
  sub_1C4460108(v107 + v163, v214, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v165 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v166 = *(v238 + 48);
  v105 = v212;
  sub_1C4460108(v164, v212, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v158 + v165, v105 + v166, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v167 = v237;
  if (sub_1C44157D4(v105, 1, v237) != 1)
  {
    v169 = v209;
    sub_1C4460108(v105, v209, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v168 = v167;
    if (sub_1C44157D4(v105 + v166, 1, v167) != 1)
    {
      v170 = v235;
      sub_1C4924B90(v105 + v166, v235);
      v171 = sub_1C47E3504(v169, v170);
      sub_1C4924B3C();
      sub_1C4420C3C(v214, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      v105 = v210;
      if ((v171 & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_66;
    }

    v121 = v214;
LABEL_27:
    sub_1C4420C3C(v121, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_28:
    sub_1C4924B3C();
    goto LABEL_55;
  }

  sub_1C4420C3C(v164, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v168 = v167;
  if (sub_1C44157D4(v105 + v166, 1, v167) != 1)
  {
    goto LABEL_55;
  }

  sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v105 = v210;
LABEL_66:
  v172 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v173 = v211;
  sub_1C4460108(v107 + v172, v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v174 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInActivityInterval;
  swift_beginAccess();
  v175 = *(v238 + 48);
  sub_1C4460108(v173, v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v158 + v174, v105 + v175, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v176 = v168;
  if (sub_1C44157D4(v105, 1, v168) == 1)
  {
    sub_1C4420C3C(v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v105 + v175, 1, v168) == 1)
    {
      sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_72;
    }

    goto LABEL_55;
  }

  v177 = v206;
  sub_1C4460108(v105, v206, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v105 + v175, 1, v176) == 1)
  {
    sub_1C4420C3C(v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    goto LABEL_28;
  }

  v178 = v235;
  sub_1C4924B90(v105 + v175, v235);
  v179 = sub_1C47E3504(v177, v178);
  sub_1C4924B3C();
  sub_1C4420C3C(v211, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v179 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_72:
  v180 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v181 = v207;
  sub_1C4460108(v107 + v180, v207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v182 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev30Minutes;
  swift_beginAccess();
  v183 = *(v238 + 48);
  v184 = v208;
  sub_1C4460108(v181, v208, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v185 = v158;
  sub_1C4460108(v158 + v182, v184 + v183, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v184, 1, v237) == 1)
  {
    sub_1C4420C3C(v207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v208 + v183, 1, v237) == 1)
    {
      sub_1C4420C3C(v208, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_80;
    }

    goto LABEL_77;
  }

  v186 = v208;
  sub_1C4460108(v208, v204, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v186 + v183, 1, v237) == 1)
  {
    sub_1C4420C3C(v207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
LABEL_77:
    sub_1C4420C3C(v208, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_57;
  }

  v187 = v208;
  v188 = v208 + v183;
  v189 = v235;
  sub_1C4924B90(v188, v235);
  v190 = sub_1C47E3504(v204, v189);
  sub_1C4924B3C();
  sub_1C4420C3C(v207, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4924B3C();
  sub_1C4420C3C(v187, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v190 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_80:
  v191 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v192 = v203;
  sub_1C4460108(v107 + v191, v203, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v193 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23AppCategoryDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__remoteDeviceAppManualCategoryDistributionInPrev5Minutes;
  swift_beginAccess();
  v194 = *(v238 + 48);
  v195 = v192;
  v196 = v205;
  sub_1C4460108(v195, v205, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v185 + v193, v196 + v194, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v196, 1, v237) != 1)
  {
    v197 = v205;
    sub_1C4460108(v205, v202, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v197 + v194, 1, v237) == 1)
    {

      sub_1C4420C3C(v203, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4924B3C();
      goto LABEL_85;
    }

    v198 = v205;
    v199 = v205 + v194;
    v200 = v235;
    sub_1C4924B90(v199, v235);
    v201 = sub_1C47E3504(v202, v200);

    sub_1C4924B3C();
    sub_1C4420C3C(v203, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4924B3C();
    sub_1C4420C3C(v198, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    return (v201 & 1) != 0;
  }

  sub_1C4420C3C(v203, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v205 + v194, 1, v237) != 1)
  {
LABEL_85:
    sub_1C4420C3C(v205, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  sub_1C4420C3C(v205, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return 1;
}

uint64_t sub_1C48F42F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF6F8, type metadata accessor for HUTenPointContext.AppCategoryDistribution, &unk_1C4F38AFC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48F4398(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF2F8, type metadata accessor for HUTenPointContext.AppCategoryDistribution, &unk_1C4F38B34);

  return sub_1C4F00428();
}

uint64_t sub_1C48F4460(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF2F8, type metadata accessor for HUTenPointContext.AppCategoryDistribution, &unk_1C4F38B34);

  return sub_1C4F00438();
}

uint64_t sub_1C48F4520()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4FA9B10);
  qword_1EC1524C0 = v1[0];
  *algn_1EC1524C8 = v1[1];
  return result;
}

uint64_t sub_1C48F4594()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1524D0);
  sub_1C442B738(v0, qword_1EC1524D0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "motion_state_distribution_in_activity_interval";
  *(v6 + 8) = 46;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "motion_state_distribution_in_prev_30_minutes";
  *(v10 + 1) = 44;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "motion_state_distribution_in_prev_5_minutes";
  *(v12 + 1) = 43;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C48F479C()
{
  type metadata accessor for HUTenPointContext.MotionStateDistribution._StorageClass(0);
  swift_allocObject();
  result = sub_1C4920FCC();
  qword_1EC0BE6F0 = result;
  return result;
}

void sub_1C48F483C()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for HUTenPointContext.MotionStateDistribution(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for HUTenPointContext.MotionStateDistribution._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C48DB428();
    sub_1C4416740(v2);
  }

  sub_1C440F77C();
  sub_1C4921BF8();
  sub_1C44512DC();
}

uint64_t sub_1C48F48F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F49D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F4AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48F4B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23MotionStateDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistributionInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F4D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23MotionStateDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistributionInPrev30Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F4F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = a4;
  v13[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext23MotionStateDistributionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__motionStateDistributionInPrev5Minutes;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4924B90(v7, v10);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4924B3C();
}

uint64_t sub_1C48F5238(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C49231A4(&qword_1EC0BF700, type metadata accessor for HUTenPointContext.MotionStateDistribution, &unk_1C4F38994);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C48F52D8(uint64_t a1)
{
  sub_1C49231A4(&qword_1EC0BF2D8, type metadata accessor for HUTenPointContext.MotionStateDistribution, &unk_1C4F389CC);

  return sub_1C4F00428();
}

uint64_t sub_1C48F53A0(uint64_t a1, uint64_t a2)
{
  sub_1C49231A4(&qword_1EC0BF2D8, type metadata accessor for HUTenPointContext.MotionStateDistribution, &unk_1C4F389CC);

  return sub_1C4F00438();
}

uint64_t sub_1C48F5464()
{
  strcpy(v1, "hutp.Context");
  BYTE5(v1[1]) = 0;
  HIWORD(v1[1]) = -5120;
  result = MEMORY[0x1C6940010](0xD000000000000013, 0x80000001C4FA9B30);
  qword_1EC1524E8 = v1[0];
  unk_1EC1524F0 = v1[1];
  return result;
}

uint64_t sub_1C48F54D8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1524F8);
  sub_1C442B738(v0, qword_1EC1524F8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_1C4F17D10;
  v4 = v210 + v3 + v1[14];
  *(v210 + v3) = 1;
  *v4 = "incoming_email_count_in_prev_5_mins";
  *(v4 + 8) = 35;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C4F004C8();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v210 + v3 + v2 + v1[14];
  *(v210 + v3 + v2) = 2;
  *v8 = "incoming_phone_count_in_prev_5_mins";
  *(v8 + 8) = 35;
  *(v8 + 16) = 2;
  v7();
  v9 = (v210 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "incoming_instant_message_count_in_prev_5_mins";
  *(v10 + 1) = 45;
  v10[16] = 2;
  v7();
  v11 = (v210 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "incoming_audio_call_count_in_prev_5_mins";
  *(v12 + 1) = 40;
  v12[16] = 2;
  v7();
  v13 = (v210 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "incoming_meeting_count_in_prev_5_mins";
  *(v14 + 1) = 37;
  v14[16] = 2;
  v7();
  v15 = (v210 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "incoming_sms_count_in_prev_5_mins";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v7();
  v17 = (v210 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "incoming_mms_count_in_prev_5_mins";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v7();
  v19 = (v210 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "incoming_voip_count_in_prev_5_mins";
  *(v20 + 1) = 34;
  v20[16] = 2;
  v7();
  v21 = (v210 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "incoming_facetime_count_in_prev_5_mins";
  *(v22 + 1) = 38;
  v22[16] = 2;
  v7();
  v23 = (v210 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "incoming_facetime_audio_count_in_prev_5_mins";
  *(v24 + 1) = 44;
  v24[16] = 2;
  v7();
  v25 = (v210 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "incoming_facetime_video_count_in_prev_5_mins";
  *(v26 + 1) = 44;
  v26[16] = 2;
  v7();
  v27 = (v210 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "incoming_video_call_count_in_prev_5_mins";
  *(v28 + 1) = 40;
  v28[16] = 2;
  v7();
  v29 = (v210 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "incoming_shareplay_count_in_prev_5_mins";
  *(v30 + 1) = 39;
  v30[16] = 2;
  v7();
  v31 = (v210 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "outgoing_email_count_in_prev_5_mins";
  *(v32 + 1) = 35;
  v32[16] = 2;
  v7();
  v33 = (v210 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "outgoing_phone_count_in_prev_5_mins";
  *(v34 + 1) = 35;
  v34[16] = 2;
  v7();
  v35 = (v210 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "outgoing_instant_message_count_in_prev_5_mins";
  *(v36 + 1) = 45;
  v36[16] = 2;
  v7();
  v37 = (v210 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "outgoing_audio_call_count_in_prev_5_mins";
  *(v38 + 1) = 40;
  v38[16] = 2;
  v7();
  v39 = (v210 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "outgoing_meeting_count_in_prev_5_mins";
  *(v40 + 1) = 37;
  v40[16] = 2;
  v7();
  v41 = (v210 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "outgoing_sms_count_in_prev_5_mins";
  *(v42 + 1) = 33;
  v42[16] = 2;
  v7();
  v43 = (v210 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "outgoing_mms_count_in_prev_5_mins";
  *(v44 + 1) = 33;
  v44[16] = 2;
  v7();
  v45 = (v210 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "outgoing_voip_count_in_prev_5_mins";
  *(v46 + 1) = 34;
  v46[16] = 2;
  v7();
  v47 = (v210 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "outgoing_facetime_count_in_prev_5_mins";
  *(v48 + 1) = 38;
  v48[16] = 2;
  v7();
  v49 = (v210 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "outgoing_facetime_audio_count_in_prev_5_mins";
  *(v50 + 1) = 44;
  v50[16] = 2;
  v7();
  v51 = (v210 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "outgoing_facetime_video_count_in_prev_5_mins";
  *(v52 + 1) = 44;
  v52[16] = 2;
  v7();
  v53 = (v210 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "outgoing_video_call_count_in_prev_5_mins";
  *(v54 + 1) = 40;
  v54[16] = 2;
  v7();
  v55 = (v210 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "outgoing_shareplay_count_in_prev_5_mins";
  *(v56 + 1) = 39;
  v56[16] = 2;
  v7();
  v57 = (v210 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "phone_duration_in_prev_5_mins";
  *(v58 + 1) = 29;
  v58[16] = 2;
  v7();
  v59 = (v210 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "audio_call_duration_in_prev_5_mins";
  *(v60 + 1) = 34;
  v60[16] = 2;
  v7();
  v61 = (v210 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "meeting_duration_in_prev_5_mins";
  *(v62 + 1) = 31;
  v62[16] = 2;
  v7();
  v63 = (v210 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "voip_duration_in_prev_5_mins";
  *(v64 + 1) = 28;
  v64[16] = 2;
  v7();
  v65 = (v210 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "facetime_duration_in_prev_5_mins";
  *(v66 + 1) = 32;
  v66[16] = 2;
  v7();
  v67 = (v210 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "facetime_audio_duration_in_prev_5_mins";
  *(v68 + 1) = 38;
  v68[16] = 2;
  v7();
  v69 = (v210 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "facetime_video_duration_in_prev_5_mins";
  *(v70 + 1) = 38;
  v70[16] = 2;
  v7();
  v71 = (v210 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "video_call_duration_in_prev_5_mins";
  *(v72 + 1) = 34;
  v72[16] = 2;
  v7();
  v73 = (v210 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "incoming_email_count_in_prev_30_mins";
  *(v74 + 1) = 36;
  v74[16] = 2;
  v7();
  v75 = (v210 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "incoming_phone_count_in_prev_30_mins";
  *(v76 + 1) = 36;
  v76[16] = 2;
  v7();
  v77 = (v210 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "incoming_instant_message_count_in_prev_30_mins";
  *(v78 + 1) = 46;
  v78[16] = 2;
  v7();
  v79 = (v210 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "incoming_audio_call_count_in_prev_30_mins";
  *(v80 + 1) = 41;
  v80[16] = 2;
  v7();
  v81 = (v210 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "incoming_meeting_count_in_prev_30_mins";
  *(v82 + 1) = 38;
  v82[16] = 2;
  v7();
  v83 = (v210 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "incoming_sms_count_in_prev_30_mins";
  *(v84 + 1) = 34;
  v84[16] = 2;
  v7();
  v85 = (v210 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "incoming_mms_count_in_prev_30_mins";
  *(v86 + 1) = 34;
  v86[16] = 2;
  v7();
  v87 = (v210 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "incoming_voip_count_in_prev_30_mins";
  *(v88 + 1) = 35;
  v88[16] = 2;
  v7();
  v89 = (v210 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "incoming_facetime_count_in_prev_30_mins";
  *(v90 + 1) = 39;
  v90[16] = 2;
  v7();
  v91 = (v210 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "incoming_facetime_audio_count_in_prev_30_mins";
  *(v92 + 1) = 45;
  v92[16] = 2;
  v7();
  v93 = (v210 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "incoming_facetime_video_count_in_prev_30_mins";
  *(v94 + 1) = 45;
  v94[16] = 2;
  v7();
  v95 = (v210 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "incoming_video_call_count_in_prev_30_mins";
  *(v96 + 1) = 41;
  v96[16] = 2;
  v7();
  v97 = (v210 + v3 + 46 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "incoming_shareplay_count_in_prev_30_mins";
  *(v98 + 1) = 40;
  v98[16] = 2;
  v7();
  v99 = (v210 + v3 + 47 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "outgoing_email_count_in_prev_30_mins";
  *(v100 + 1) = 36;
  v100[16] = 2;
  v7();
  v101 = (v210 + v3 + 48 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "outgoing_phone_count_in_prev_30_mins";
  *(v102 + 1) = 36;
  v102[16] = 2;
  v7();
  v103 = (v210 + v3 + 49 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "outgoing_instant_message_count_in_prev_30_mins";
  *(v104 + 1) = 46;
  v104[16] = 2;
  v7();
  v105 = (v210 + v3 + 50 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "outgoing_audio_call_count_in_prev_30_mins";
  *(v106 + 1) = 41;
  v106[16] = 2;
  v7();
  v107 = (v210 + v3 + 51 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "outgoing_meeting_count_in_prev_30_mins";
  *(v108 + 1) = 38;
  v108[16] = 2;
  v7();
  v109 = (v210 + v3 + 52 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "outgoing_sms_count_in_prev_30_mins";
  *(v110 + 1) = 34;
  v110[16] = 2;
  v7();
  v111 = (v210 + v3 + 53 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "outgoing_mms_count_in_prev_30_mins";
  *(v112 + 1) = 34;
  v112[16] = 2;
  v7();
  v113 = (v210 + v3 + 54 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "outgoing_voip_count_in_prev_30_mins";
  *(v114 + 1) = 35;
  v114[16] = 2;
  v7();
  v115 = (v210 + v3 + 55 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "outgoing_facetime_count_in_prev_30_mins";
  *(v116 + 1) = 39;
  v116[16] = 2;
  v7();
  v117 = (v210 + v3 + 56 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "outgoing_facetime_audio_count_in_prev_30_mins";
  *(v118 + 1) = 45;
  v118[16] = 2;
  v7();
  v119 = (v210 + v3 + 57 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "outgoing_facetime_video_count_in_prev_30_mins";
  *(v120 + 1) = 45;
  v120[16] = 2;
  v7();
  v121 = (v210 + v3 + 58 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "outgoing_video_call_count_in_prev_30_mins";
  *(v122 + 1) = 41;
  v122[16] = 2;
  v7();
  v123 = (v210 + v3 + 59 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "outgoing_shareplay_count_in_prev_30_mins";
  *(v124 + 1) = 40;
  v124[16] = 2;
  v7();
  v125 = (v210 + v3 + 60 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "phone_duration_in_prev_30_mins";
  *(v126 + 1) = 30;
  v126[16] = 2;
  v7();
  v127 = (v210 + v3 + 61 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "audio_call_duration_in_prev_30_mins";
  *(v128 + 1) = 35;
  v128[16] = 2;
  v7();
  v129 = (v210 + v3 + 62 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "meeting_duration_in_prev_30_mins";
  *(v130 + 1) = 32;
  v130[16] = 2;
  v7();
  v131 = (v210 + v3 + 63 * v2);
  v132 = v131 + v1[14];
  *v131 = 64;
  *v132 = "voip_duration_in_prev_30_mins";
  *(v132 + 1) = 29;
  v132[16] = 2;
  v7();
  v133 = (v210 + v3 + (v2 << 6));
  v134 = v133 + v1[14];
  *v133 = 65;
  *v134 = "facetime_duration_in_prev_30_mins";
  *(v134 + 1) = 33;
  v134[16] = 2;
  v7();
  v135 = (v210 + v3 + 65 * v2);
  v136 = v135 + v1[14];
  *v135 = 66;
  *v136 = "facetime_audio_duration_in_prev_30_mins";
  *(v136 + 1) = 39;
  v136[16] = 2;
  v7();
  v137 = (v210 + v3 + 66 * v2);
  v138 = v137 + v1[14];
  *v137 = 67;
  *v138 = "facetime_video_duration_in_prev_30_mins";
  *(v138 + 1) = 39;
  v138[16] = 2;
  v7();
  v139 = (v210 + v3 + 67 * v2);
  v140 = v139 + v1[14];
  *v139 = 68;
  *v140 = "video_call_duration_in_prev_30_mins";
  *(v140 + 1) = 35;
  v140[16] = 2;
  v7();
  v141 = (v210 + v3 + 68 * v2);
  v142 = v141 + v1[14];
  *v141 = 69;
  *v142 = "incoming_email_count_in_activity_interval";
  *(v142 + 1) = 41;
  v142[16] = 2;
  v7();
  v143 = (v210 + v3 + 69 * v2);
  v144 = v143 + v1[14];
  *v143 = 70;
  *v144 = "incoming_phone_count_in_activity_interval";
  *(v144 + 1) = 41;
  v144[16] = 2;
  v7();
  v145 = (v210 + v3 + 70 * v2);
  v146 = v145 + v1[14];
  *v145 = 71;
  *v146 = "incoming_instant_message_count_in_activity_interval";
  *(v146 + 1) = 51;
  v146[16] = 2;
  v7();
  v147 = (v210 + v3 + 71 * v2);
  v148 = v147 + v1[14];
  *v147 = 73;
  *v148 = "incoming_audio_call_count_in_activity_interval";
  *(v148 + 1) = 46;
  v148[16] = 2;
  v7();
  v149 = (v210 + v3 + 72 * v2);
  v150 = v149 + v1[14];
  *v149 = 74;
  *v150 = "incoming_meeting_count_in_activity_interval";
  *(v150 + 1) = 43;
  v150[16] = 2;
  v7();
  v151 = (v210 + v3 + 73 * v2);
  v152 = v151 + v1[14];
  *v151 = 75;
  *v152 = "incoming_sms_count_in_activity_interval";
  *(v152 + 1) = 39;
  v152[16] = 2;
  v7();
  v153 = (v210 + v3 + 74 * v2);
  v154 = v153 + v1[14];
  *v153 = 76;
  *v154 = "incoming_mms_count_in_activity_interval";
  *(v154 + 1) = 39;
  v154[16] = 2;
  v7();
  v155 = (v210 + v3 + 75 * v2);
  v156 = v155 + v1[14];
  *v155 = 77;
  *v156 = "incoming_voip_count_in_activity_interval";
  *(v156 + 1) = 40;
  v156[16] = 2;
  v7();
  v157 = (v210 + v3 + 76 * v2);
  v158 = v157 + v1[14];
  *v157 = 78;
  *v158 = "incoming_facetime_count_in_activity_interval";
  *(v158 + 1) = 44;
  v158[16] = 2;
  v7();
  v159 = (v210 + v3 + 77 * v2);
  v160 = v159 + v1[14];
  *v159 = 79;
  *v160 = "incoming_facetime_audio_count_in_activity_interval";
  *(v160 + 1) = 50;
  v160[16] = 2;
  v7();
  v161 = (v210 + v3 + 78 * v2);
  v162 = v161 + v1[14];
  *v161 = 80;
  *v162 = "incoming_facetime_video_count_in_activity_interval";
  *(v162 + 1) = 50;
  v162[16] = 2;
  v7();
  v163 = (v210 + v3 + 79 * v2);
  v164 = v163 + v1[14];
  *v163 = 81;
  *v164 = "incoming_video_call_count_in_activity_interval";
  *(v164 + 1) = 46;
  v164[16] = 2;
  v7();
  v165 = (v210 + v3 + 80 * v2);
  v166 = v165 + v1[14];
  *v165 = 82;
  *v166 = "incoming_shareplay_count_in_activity_interval";
  *(v166 + 1) = 45;
  v166[16] = 2;
  v7();
  v167 = (v210 + v3 + 81 * v2);
  v168 = v167 + v1[14];
  *v167 = 83;
  *v168 = "outgoing_email_count_in_activity_interval";
  *(v168 + 1) = 41;
  v168[16] = 2;
  v7();
  v169 = (v210 + v3 + 82 * v2);
  v170 = v169 + v1[14];
  *v169 = 84;
  *v170 = "outgoing_phone_count_in_activity_interval";
  *(v170 + 1) = 41;
  v170[16] = 2;
  v7();
  v171 = (v210 + v3 + 83 * v2);
  v172 = v171 + v1[14];
  *v171 = 85;
  *v172 = "outgoing_instant_message_count_in_activity_interval";
  *(v172 + 1) = 51;
  v172[16] = 2;
  v7();
  v173 = (v210 + v3 + 84 * v2);
  v174 = v173 + v1[14];
  *v173 = 86;
  *v174 = "outgoing_audio_call_count_in_activity_interval";
  *(v174 + 1) = 46;
  v174[16] = 2;
  v7();
  v175 = (v210 + v3 + 85 * v2);
  v176 = v175 + v1[14];
  *v175 = 87;
  *v176 = "outgoing_meeting_count_in_activity_interval";
  *(v176 + 1) = 43;
  v176[16] = 2;
  v7();
  v177 = (v210 + v3 + 86 * v2);
  v178 = v177 + v1[14];
  *v177 = 88;
  *v178 = "outgoing_sms_count_in_activity_interval";
  *(v178 + 1) = 39;
  v178[16] = 2;
  v7();
  v179 = (v210 + v3 + 87 * v2);
  v180 = v179 + v1[14];
  *v179 = 89;
  *v180 = "outgoing_mms_count_in_activity_interval";
  *(v180 + 1) = 39;
  v180[16] = 2;
  v7();
  v181 = (v210 + v3 + 88 * v2);
  v182 = v181 + v1[14];
  *v181 = 90;
  *v182 = "outgoing_voip_count_in_activity_interval";
  *(v182 + 1) = 40;
  v182[16] = 2;
  v7();
  v183 = (v210 + v3 + 89 * v2);
  v184 = v183 + v1[14];
  *v183 = 91;
  *v184 = "outgoing_facetime_count_in_activity_interval";
  *(v184 + 1) = 44;
  v184[16] = 2;
  v7();
  v185 = (v210 + v3 + 90 * v2);
  v186 = v185 + v1[14];
  *v185 = 92;
  *v186 = "outgoing_facetime_audio_count_in_activity_interval";
  *(v186 + 1) = 50;
  v186[16] = 2;
  v7();
  v187 = (v210 + v3 + 91 * v2);
  v188 = v187 + v1[14];
  *v187 = 93;
  *v188 = "outgoing_facetime_video_count_in_activity_interval";
  *(v188 + 1) = 50;
  v188[16] = 2;
  v7();
  v189 = (v210 + v3 + 92 * v2);
  v190 = v189 + v1[14];
  *v189 = 94;
  *v190 = "outgoing_video_call_count_in_activity_interval";
  *(v190 + 1) = 46;
  v190[16] = 2;
  v7();
  v191 = (v210 + v3 + 93 * v2);
  v192 = v191 + v1[14];
  *v191 = 95;
  *v192 = "outgoing_shareplay_count_in_activity_interval";
  *(v192 + 1) = 45;
  v192[16] = 2;
  v7();
  v193 = (v210 + v3 + 94 * v2);
  v194 = v193 + v1[14];
  *v193 = 96;
  *v194 = "phone_duration_in_activity_interval";
  *(v194 + 1) = 35;
  v194[16] = 2;
  v7();
  v195 = (v210 + v3 + 95 * v2);
  v196 = v195 + v1[14];
  *v195 = 97;
  *v196 = "audio_call_duration_in_activity_interval";
  *(v196 + 1) = 40;
  v196[16] = 2;
  v7();
  v197 = (v210 + v3 + 96 * v2);
  v198 = v197 + v1[14];
  *v197 = 98;
  *v198 = "meeting_duration_in_activity_interval";
  *(v198 + 1) = 37;
  v198[16] = 2;
  v7();
  v199 = (v210 + v3 + 97 * v2);
  v200 = v199 + v1[14];
  *v199 = 99;
  *v200 = "voip_duration_in_activity_interval";
  *(v200 + 1) = 34;
  v200[16] = 2;
  v7();
  v201 = (v210 + v3 + 98 * v2);
  v202 = v201 + v1[14];
  *v201 = 100;
  *v202 = "facetime_duration_in_activity_interval";
  *(v202 + 1) = 38;
  v202[16] = 2;
  v7();
  v203 = (v210 + v3 + 99 * v2);
  v204 = v203 + v1[14];
  *v203 = 101;
  *v204 = "facetime_audio_duration_in_activity_interval";
  *(v204 + 1) = 44;
  v204[16] = 2;
  v7();
  v205 = (v210 + v3 + 100 * v2);
  v206 = v205 + v1[14];
  *v205 = 102;
  *v206 = "facetime_video_duration_in_activity_interval";
  *(v206 + 1) = 44;
  v206[16] = 2;
  v7();
  v207 = (v210 + v3 + 101 * v2);
  v208 = v207 + v1[14];
  *v207 = 103;
  *v208 = "video_call_duration_in_activity_interval";
  *(v208 + 1) = 40;
  v208[16] = 2;
  v7();
  return sub_1C4F004D8();
}

uint64_t sub_1C48F6E70()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev5Mins;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev5Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev30Mins, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInActivityInterval, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInActivityInterval, 1, 1, v2);
  return v0;
}

uint64_t sub_1C48F79CC(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v212 - v4;
  v6 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev5Mins;
  v7 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev5Mins, 1, 1, v7);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev5Mins, 1, 1, v7);
  v213 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev5Mins, 1, 1, v7);
  v214 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev5Mins, 1, 1, v7);
  v215 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev5Mins, 1, 1, v7);
  v216 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev5Mins, 1, 1, v7);
  v217 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev5Mins, 1, 1, v7);
  v218 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev5Mins, 1, 1, v7);
  v219 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev5Mins, 1, 1, v7);
  v220 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev5Mins, 1, 1, v7);
  v221 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev5Mins, 1, 1, v7);
  v222 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev5Mins, 1, 1, v7);
  v223 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev5Mins, 1, 1, v7);
  v224 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev5Mins, 1, 1, v7);
  v225 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev5Mins, 1, 1, v7);
  v226 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev5Mins, 1, 1, v7);
  v227 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev5Mins, 1, 1, v7);
  v228 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev5Mins, 1, 1, v7);
  v229 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev5Mins, 1, 1, v7);
  v230 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev5Mins, 1, 1, v7);
  v231 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev5Mins, 1, 1, v7);
  v232 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev5Mins, 1, 1, v7);
  v233 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev5Mins, 1, 1, v7);
  v234 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev5Mins, 1, 1, v7);
  v235 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev5Mins, 1, 1, v7);
  v236 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev5Mins, 1, 1, v7);
  v237 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev5Mins, 1, 1, v7);
  v238 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev5Mins, 1, 1, v7);
  v239 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev5Mins, 1, 1, v7);
  v240 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev5Mins, 1, 1, v7);
  v241 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev5Mins, 1, 1, v7);
  v242 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev5Mins, 1, 1, v7);
  v243 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev5Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev5Mins, 1, 1, v7);
  v244 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev30Mins, 1, 1, v7);
  v245 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev30Mins, 1, 1, v7);
  v246 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev30Mins, 1, 1, v7);
  v247 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev30Mins, 1, 1, v7);
  v248 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev30Mins, 1, 1, v7);
  v249 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev30Mins, 1, 1, v7);
  v250 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev30Mins, 1, 1, v7);
  v251 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev30Mins, 1, 1, v7);
  v252 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev30Mins, 1, 1, v7);
  v253 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev30Mins, 1, 1, v7);
  v254 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev30Mins, 1, 1, v7);
  v255 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev30Mins, 1, 1, v7);
  v256 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev30Mins, 1, 1, v7);
  v257 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev30Mins, 1, 1, v7);
  v258 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev30Mins, 1, 1, v7);
  v259 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev30Mins, 1, 1, v7);
  v260 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev30Mins, 1, 1, v7);
  v261 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev30Mins, 1, 1, v7);
  v262 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev30Mins, 1, 1, v7);
  v263 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev30Mins, 1, 1, v7);
  v264 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev30Mins, 1, 1, v7);
  v265 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev30Mins, 1, 1, v7);
  v266 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev30Mins, 1, 1, v7);
  v267 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev30Mins, 1, 1, v7);
  v268 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev30Mins, 1, 1, v7);
  v269 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev30Mins, 1, 1, v7);
  v270 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev30Mins, 1, 1, v7);
  v271 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev30Mins, 1, 1, v7);
  v272 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev30Mins, 1, 1, v7);
  v273 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev30Mins, 1, 1, v7);
  v274 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev30Mins, 1, 1, v7);
  v275 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev30Mins, 1, 1, v7);
  v276 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev30Mins, 1, 1, v7);
  v277 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev30Mins;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev30Mins, 1, 1, v7);
  v278 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInActivityInterval, 1, 1, v7);
  v279 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInActivityInterval, 1, 1, v7);
  v280 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInActivityInterval, 1, 1, v7);
  v281 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInActivityInterval, 1, 1, v7);
  v282 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInActivityInterval, 1, 1, v7);
  v283 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInActivityInterval, 1, 1, v7);
  v284 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInActivityInterval, 1, 1, v7);
  v285 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInActivityInterval, 1, 1, v7);
  v286 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInActivityInterval, 1, 1, v7);
  v287 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInActivityInterval, 1, 1, v7);
  v288 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInActivityInterval, 1, 1, v7);
  v289 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInActivityInterval, 1, 1, v7);
  v290 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInActivityInterval, 1, 1, v7);
  v291 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInActivityInterval, 1, 1, v7);
  v292 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInActivityInterval, 1, 1, v7);
  v293 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInActivityInterval, 1, 1, v7);
  v294 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInActivityInterval, 1, 1, v7);
  v295 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInActivityInterval, 1, 1, v7);
  v296 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInActivityInterval, 1, 1, v7);
  v297 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInActivityInterval, 1, 1, v7);
  v298 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInActivityInterval, 1, 1, v7);
  v299 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInActivityInterval, 1, 1, v7);
  v300 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInActivityInterval, 1, 1, v7);
  v301 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInActivityInterval, 1, 1, v7);
  v302 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInActivityInterval, 1, 1, v7);
  v303 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInActivityInterval, 1, 1, v7);
  v304 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInActivityInterval, 1, 1, v7);
  v305 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInActivityInterval, 1, 1, v7);
  v306 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInActivityInterval, 1, 1, v7);
  v307 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInActivityInterval, 1, 1, v7);
  v308 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInActivityInterval, 1, 1, v7);
  v309 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInActivityInterval, 1, 1, v7);
  v310 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInActivityInterval, 1, 1, v7);
  v311 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInActivityInterval;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInActivityInterval, 1, 1, v7);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v10, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v13 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v13, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v14 = v213;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v14, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v15 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v15, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v16 = v214;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v16, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v17, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v18 = v215;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v18, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v19, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v20 = v216;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v20, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v21, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v22 = v217;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v22, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v23 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v23, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v24 = v218;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v25, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v26 = v219;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v26, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v27, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v28 = v220;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v28, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v29, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v30 = v221;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v30, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v31, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v32 = v222;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v32, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v33, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v34 = v223;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v34, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v35, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v36 = v224;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v36, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v37 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v37, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v38 = v225;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v38, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v39, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v40 = v226;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v40, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v41, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v42 = v227;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v42, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v43, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v44 = v228;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v44, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v45, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v46 = v229;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v46, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v47 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v47, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v48 = v230;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v48, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v49 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v49, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v50 = v231;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v50, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v51, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v52 = v232;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v52, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v53 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v53, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v54 = v233;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v54, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v55, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v56 = v234;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v56, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v57, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v58 = v235;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v58, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v59 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v59, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v60 = v236;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v60, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v61 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v61, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v62 = v237;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v62, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v63, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v64 = v238;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v64, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v65 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v65, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v66 = v239;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v66, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v67 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v67, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v68 = v240;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v68, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v69 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v69, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v70 = v241;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v70, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v71 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v71, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v72 = v242;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v73 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev5Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v73, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v74 = v243;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v74, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v75 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v75, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v76 = v244;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v76, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v77 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v77, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v78 = v245;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v78, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v79 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v79, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v80 = v246;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v80, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v81 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v81, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v82 = v247;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v82, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v83 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v83, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v84 = v248;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v84, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v85 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v85, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v86 = v249;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v86, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v87 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v87, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v88 = v250;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v88, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v89 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v89, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v90 = v251;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v90, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v91 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v91, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v92 = v252;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v92, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v93 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v93, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v94 = v253;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v94, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v95 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v95, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v96 = v254;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v96, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v97 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v97, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v98 = v255;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v98, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v99 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v99, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v100 = v256;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v100, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v101 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v101, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v102 = v257;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v102, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v103 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v103, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v104 = v258;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v104, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v105 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v105, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v106 = v259;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v106, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v107 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v107, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v108 = v260;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v108, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v109 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v109, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v110 = v261;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v110, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v111 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v111, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v112 = v262;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v112, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v113 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v113, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v114 = v263;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v114, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v115 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v115, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v116 = v264;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v116, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v117 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v117, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v118 = v265;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v118, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v119 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v119, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v120 = v266;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v120, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v121 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v121, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v122 = v267;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v122, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v123 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v123, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v124 = v268;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v124, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v125 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v125, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v126 = v269;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v126, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v127 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v127, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v128 = v270;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v128, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v129 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v129, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v130 = v271;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v130, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v131 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v131, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v132 = v272;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v132, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v133 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v133, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v134 = v273;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v134, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v135 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v135, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v136 = v274;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v136, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v137 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v137, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v138 = v275;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v138, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v139 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v139, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v140 = v276;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v140, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v141 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev30Mins;
  swift_beginAccess();
  sub_1C4460108(a1 + v141, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v142 = v277;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v142, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v143 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v143, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v144 = v278;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v144, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v145 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v145, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v146 = v279;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v146, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v147 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v147, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v148 = v280;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v148, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v149 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v149, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v150 = v281;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v150, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v151 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v151, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v152 = v282;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v152, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v153 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v153, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v154 = v283;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v154, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v155 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v155, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v156 = v284;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v156, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v157 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v157, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v158 = v285;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v158, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v159 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v159, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v160 = v286;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v160, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v161 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v161, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v162 = v287;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v162, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v163 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v163, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v164 = v288;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v164, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v165 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v165, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v166 = v289;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v166, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v167 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v167, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v168 = v290;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v168, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v169 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v169, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v170 = v291;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v170, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v171 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v171, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v172 = v292;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v172, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v173 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v173, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v174 = v293;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v174, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v175 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v175, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v176 = v294;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v176, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v177 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v177, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v178 = v295;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v178, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v179 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v179, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v180 = v296;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v180, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v181 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v181, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v182 = v297;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v182, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v183 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v183, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v184 = v298;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v184, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v185 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v185, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v186 = v299;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v186, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v187 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v187, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v188 = v300;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v188, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v189 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v189, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v190 = v301;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v190, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v191 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v191, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v192 = v302;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v192, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v193 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v193, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v194 = v303;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v194, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v195 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v195, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v196 = v304;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v196, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v197 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v197, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v198 = v305;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v198, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v199 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v199, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v200 = v306;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v200, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v201 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v201, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v202 = v307;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v202, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v203 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v203, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v204 = v308;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v204, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v205 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v205, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v206 = v309;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v206, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v207 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v207, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v208 = v310;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v208, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v209 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInActivityInterval;
  swift_beginAccess();
  sub_1C4460108(a1 + v209, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  v210 = v311;
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v210, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C48FAF04()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev5Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInPrev30Mins, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingEmailCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingPhoneCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingInstantMessageCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingAudioCallCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMeetingCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingSmsCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingMmsCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVoipCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeAudioCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingFacetimeVideoCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingVideoCallCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__incomingShareplayCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingEmailCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingPhoneCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingInstantMessageCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingAudioCallCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMeetingCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingSmsCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingMmsCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVoipCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeAudioCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingFacetimeVideoCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingVideoCallCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__outgoingShareplayCountInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__phoneDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__audioCallDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__meetingDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__voipDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeAudioDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__facetimeVideoDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17HUTenPointContext18VirtualInteractionP33_8F23906CC80185DFEA5325F37BF9D5C713_StorageClass__videoCallDurationInActivityInterval, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

uint64_t sub_1C48FB8E4(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1C48FB964(uint64_t a1)
{
  sub_1C48B3958(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C48FBB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0);
    sub_1C43FD23C();
    swift_allocObject();
    v17 = sub_1C43FD6F4();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_1C48FBBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C48FC7A8(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C48FC884(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C48FC960(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C48FCA3C(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C48FCB18(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C48FCBF4(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C48FCCD0(a2, a1, a3, a4);
        break;
      case 8:
        sub_1C48FCDAC(a2, a1, a3, a4);
        break;
      case 9:
        sub_1C48FCE88(a2, a1, a3, a4);
        break;
      case 10:
        sub_1C48FCF64(a2, a1, a3, a4);
        break;
      case 11:
        sub_1C48FD040(a2, a1, a3, a4);
        break;
      case 12:
        sub_1C48FD11C(a2, a1, a3, a4);
        break;
      case 13:
        sub_1C48FD1F8(a2, a1, a3, a4);
        break;
      case 14:
        sub_1C48FD2D4(a2, a1, a3, a4);
        break;
      case 15:
        sub_1C48FD3B0(a2, a1, a3, a4);
        break;
      case 16:
        sub_1C48FD48C(a2, a1, a3, a4);
        break;
      case 17:
        sub_1C48FD568(a2, a1, a3, a4);
        break;
      case 18:
        sub_1C48FD644(a2, a1, a3, a4);
        break;
      case 19:
        sub_1C48FD720(a2, a1, a3, a4);
        break;
      case 20:
        sub_1C48FD7FC(a2, a1, a3, a4);
        break;
      case 21:
        sub_1C48FD8D8(a2, a1, a3, a4);
        break;
      case 22:
        sub_1C48FD9B4(a2, a1, a3, a4);
        break;
      case 23:
        sub_1C48FDA90(a2, a1, a3, a4);
        break;
      case 24:
        sub_1C48FDB6C(a2, a1, a3, a4);
        break;
      case 25:
        sub_1C48FDC48(a2, a1, a3, a4);
        break;
      case 26:
        sub_1C48FDD24(a2, a1, a3, a4);
        break;
      case 27:
        sub_1C48FDE00(a2, a1, a3, a4);
        break;
      case 28:
        sub_1C48FDEDC(a2, a1, a3, a4);
        break;
      case 29:
        sub_1C48FDFB8(a2, a1, a3, a4);
        break;
      case 30:
        sub_1C48FE094(a2, a1, a3, a4);
        break;
      case 31:
        sub_1C48FE170(a2, a1, a3, a4);
        break;
      case 32:
        sub_1C48FE24C(a2, a1, a3, a4);
        break;
      case 33:
        sub_1C48FE328(a2, a1, a3, a4);
        break;
      case 34:
        sub_1C48FE404(a2, a1, a3, a4);
        break;
      case 35:
        sub_1C48FE4E0(a2, a1, a3, a4);
        break;
      case 36:
        sub_1C48FE5BC(a2, a1, a3, a4);
        break;
      case 37:
        sub_1C48FE698(a2, a1, a3, a4);
        break;
      case 38:
        sub_1C48FE774(a2, a1, a3, a4);
        break;
      case 39:
        sub_1C48FE850(a2, a1, a3, a4);
        break;
      case 40:
        sub_1C48FE92C(a2, a1, a3, a4);
        break;
      case 41:
        sub_1C48FEA08(a2, a1, a3, a4);
        break;
      case 42:
        sub_1C48FEAE4(a2, a1, a3, a4);
        break;
      case 43:
        sub_1C48FEBC0(a2, a1, a3, a4);
        break;
      case 44:
        sub_1C48FEC9C(a2, a1, a3, a4);
        break;
      case 45:
        sub_1C48FED78(a2, a1, a3, a4);
        break;
      case 46:
        sub_1C48FEE54(a2, a1, a3, a4);
        break;
      case 47:
        sub_1C48FEF30(a2, a1, a3, a4);
        break;
      case 48:
        sub_1C48FF00C(a2, a1, a3, a4);
        break;
      case 49:
        sub_1C48FF0E8(a2, a1, a3, a4);
        break;
      case 50:
        sub_1C48FF1C4(a2, a1, a3, a4);
        break;
      case 51:
        sub_1C48FF2A0(a2, a1, a3, a4);
        break;
      case 52:
        sub_1C48FF37C(a2, a1, a3, a4);
        break;
      case 53:
        sub_1C48FF458(a2, a1, a3, a4);
        break;
      case 54:
        sub_1C48FF534(a2, a1, a3, a4);
        break;
      case 55:
        sub_1C48FF610(a2, a1, a3, a4);
        break;
      case 56:
        sub_1C48FF6EC(a2, a1, a3, a4);
        break;
      case 57:
        sub_1C48FF7C8(a2, a1, a3, a4);
        break;
      case 58:
        sub_1C48FF8A4(a2, a1, a3, a4);
        break;
      case 59:
        sub_1C48FF980(a2, a1, a3, a4);
        break;
      case 60:
        sub_1C48FFA5C(a2, a1, a3, a4);
        break;
      case 61:
        sub_1C48FFB38(a2, a1, a3, a4);
        break;
      case 62:
        sub_1C48FFC14(a2, a1, a3, a4);
        break;
      case 63:
        sub_1C48FFCF0(a2, a1, a3, a4);
        break;
      case 64:
        sub_1C48FFDCC(a2, a1, a3, a4);
        break;
      default:
        switch(result)
        {
          case 'A':
            sub_1C48FFEA8(a2, a1, a3, a4);
            break;
          case 'B':
            sub_1C48FFF84(a2, a1, a3, a4);
            break;
          case 'C':
            sub_1C4900060(a2, a1, a3, a4);
            break;
          case 'D':
            sub_1C490013C(a2, a1, a3, a4);
            break;
          case 'E':
            sub_1C4900218(a2, a1, a3, a4);
            break;
          case 'F':
            sub_1C49002F4(a2, a1, a3, a4);
            break;
          case 'G':
            sub_1C49003D0(a2, a1, a3, a4);
            break;
          case 'I':
            sub_1C49004AC(a2, a1, a3, a4);
            break;
          case 'J':
            sub_1C4900588(a2, a1, a3, a4);
            break;
          case 'K':
            sub_1C4900664(a2, a1, a3, a4);
            break;
          case 'L':
            sub_1C4900740(a2, a1, a3, a4);
            break;
          case 'M':
            sub_1C490081C(a2, a1, a3, a4);
            break;
          case 'N':
            sub_1C49008F8(a2, a1, a3, a4);
            break;
          case 'O':
            sub_1C49009D4(a2, a1, a3, a4);
            break;
          case 'P':
            sub_1C4900AB0(a2, a1, a3, a4);
            break;
          case 'Q':
            sub_1C4900B8C(a2, a1, a3, a4);
            break;
          case 'R':
            sub_1C4900C68(a2, a1, a3, a4);
            break;
          case 'S':
            sub_1C4900D44(a2, a1, a3, a4);
            break;
          case 'T':
            sub_1C4900E20(a2, a1, a3, a4);
            break;
          case 'U':
            sub_1C4900EFC(a2, a1, a3, a4);
            break;
          case 'V':
            sub_1C4900FD8(a2, a1, a3, a4);
            break;
          case 'W':
            sub_1C49010B4(a2, a1, a3, a4);
            break;
          case 'X':
            sub_1C4901190(a2, a1, a3, a4);
            break;
          case 'Y':
            sub_1C490126C(a2, a1, a3, a4);
            break;
          case 'Z':
            sub_1C4901348(a2, a1, a3, a4);
            break;
          case '[':
            sub_1C4901424(a2, a1, a3, a4);
            break;
          case '\\':
            sub_1C4901500(a2, a1, a3, a4);
            break;
          case ']':
            sub_1C49015DC(a2, a1, a3, a4);
            break;
          case '^':
            sub_1C49016B8(a2, a1, a3, a4);
            break;
          case '_':
            sub_1C4901794(a2, a1, a3, a4);
            break;
            sub_1C4901870(a2, a1, a3, a4);
            break;
          case 'a':
            sub_1C490194C(a2, a1, a3, a4);
            break;
          case 'b':
            sub_1C4901A28(a2, a1, a3, a4);
            break;
          case 'c':
            sub_1C4901B04(a2, a1, a3, a4);
            break;
          case 'd':
            sub_1C4901BE0(a2, a1, a3, a4);
            break;
          case 'e':
            sub_1C4901CBC(a2, a1, a3, a4);
            break;
          case 'f':
            sub_1C4901D98(a2, a1, a3, a4);
            break;
          case 'g':
            sub_1C4901E74(a2, a1, a3, a4);
            break;
          default:
            continue;
        }

        break;
    }
  }
}

uint64_t sub_1C48FC7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FC884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FC960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FCF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FD9B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FDFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FE92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FEA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FEAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FEC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FED78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FEE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FEF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FF980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FFA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FFB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FFC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C48FFCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C49231A4(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}
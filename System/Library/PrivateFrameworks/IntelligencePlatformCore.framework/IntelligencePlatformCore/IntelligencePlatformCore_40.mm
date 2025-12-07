uint64_t sub_1C47B4704(uint64_t a1)
{
  sub_1C47BF154(qword_1EDDEEBC8, type metadata accessor for EventStreamsEvent, &unk_1C4F2BFBC);

  return sub_1C4F00428();
}

uint64_t sub_1C47B47CC(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(qword_1EDDEEBC8, type metadata accessor for EventStreamsEvent, &unk_1C4F2BFBC);

  return sub_1C4F00438();
}

uint64_t sub_1C47B48B8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151DC8);
  sub_1C442B738(v0, qword_1EC151DC8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "motionType";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47B4B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD040, type metadata accessor for EventStreamsEvent.MotionState, &unk_1C4F2BE1C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47B4BCC(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCF28, type metadata accessor for EventStreamsEvent.MotionState, &unk_1C4F2BE54);

  return sub_1C4F00428();
}

uint64_t sub_1C47B4C94(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCF28, type metadata accessor for EventStreamsEvent.MotionState, &unk_1C4F2BE54);

  return sub_1C4F00438();
}

uint64_t sub_1C47B4D70()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151DF0);
  sub_1C442B738(v0, qword_1EC151DF0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "inferredModeType";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "confidence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C47B4F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    v4 = sub_1C4F00378();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 2)
    {
      sub_1C4428E60();
      sub_1C47BE58C();
    }

    else if (v4 == 1)
    {
      sub_1C4428E60();
      sub_1C47BE51C();
    }
  }
}

uint64_t sub_1C47B4FB8()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = sub_1C47BE5FC(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_1C43FEE60();
    sub_1C47BE76C(v6, v7, v8, v9);
    return sub_1C4435894();
  }

  return result;
}

uint64_t sub_1C47B50B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD048, type metadata accessor for EventStreamsEvent.InferredMode, &unk_1C4F2BCB4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47B5154(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCF08, type metadata accessor for EventStreamsEvent.InferredMode, &unk_1C4F2BCEC);

  return sub_1C4F00428();
}

uint64_t sub_1C47B521C(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCF08, type metadata accessor for EventStreamsEvent.InferredMode, &unk_1C4F2BCEC);

  return sub_1C4F00438();
}

uint64_t sub_1C47B52EC()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151E18);
  sub_1C442B738(v0, qword_1EC151E18);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "paymentOccurred";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "merchantPOICategory";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "passStyle";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47B5528(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  sub_1C43FD23C();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1C47B5578()
{
  v1 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__paymentOccurred;
  v2 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v0 + v1, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__merchantPoicategory, 1, 1, v2);
  sub_1C440BAA8(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__passStyle, 1, 1, v2);
  return v0;
}

uint64_t sub_1C47B5600(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__paymentOccurred;
  v7 = type metadata accessor for FeatureValue(0);
  sub_1C440BAA8(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__merchantPoicategory;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__merchantPoicategory, 1, 1, v7);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__passStyle;
  sub_1C440BAA8(v1 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__passStyle, 1, 1, v7);
  v10 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__paymentOccurred;
  swift_beginAccess();
  sub_1C4460108(a1 + v10, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v6, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__merchantPoicategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v11, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v8, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  v12 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__passStyle;
  swift_beginAccess();
  sub_1C4460108(a1 + v12, v5, &qword_1EC0BB6C8, &unk_1C4F2E1B0);

  swift_beginAccess();
  sub_1C44408D4(v5, v1 + v9, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C47B5824()
{
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__paymentOccurred, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__merchantPoicategory, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4420C3C(v0 + OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__passStyle, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return v0;
}

uint64_t sub_1C47B58BC(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1C47B593C(uint64_t a1)
{
  sub_1C47AA700(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C47B59EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1C47B5AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C47B5D18(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C47B5C3C(a2, a1, a3, a4);
        break;
      case 1:
        sub_1C47B5B60(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1C47B5B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47B5C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47B5D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47B5DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  sub_1C4405A6C();
  v8 = v7(0);
  sub_1C442F668(v8);
  sub_1C43FEE74();
  result = a5();
  if (!v5)
  {
    return sub_1C4435894();
  }

  return result;
}

uint64_t sub_1C47B5E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C47B5EBC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_1C47B60A4(a1, a2, a3, a4);
    return sub_1C47B628C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C47B5EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__paymentOccurred;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B60A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__merchantPoicategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__passStyle;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B6474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = sub_1C43FECE0();
  v9 = *(v8(v7) + 20);
  v10 = *(v5 + v9);
  v11 = *(v4 + v9);
  if (v10 != v11)
  {

    v12 = a4(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C4406D78();
  v15 = sub_1C47BF154(v13, v14, MEMORY[0x1E69AAC10]);
  return sub_1C4404EC0(v15) & 1;
}

BOOL sub_1C47B653C(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v54 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  v12 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v54 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v54 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v54 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  v26 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__paymentOccurred;
  swift_beginAccess();
  sub_1C4460108(a1 + v26, v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v27 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__paymentOccurred;
  swift_beginAccess();
  v60 = v5;
  v28 = *(v5 + 48);
  sub_1C4460108(v25, v11, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v29 = v62;
  sub_1C4460108(a2 + v27, &v11[v28], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v11, 1, v29) == 1)
  {

    sub_1C4420C3C(v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v30 = a2;
    if (sub_1C44157D4(&v11[v28], 1, v29) == 1)
    {
      sub_1C4420C3C(v11, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_8;
    }

LABEL_6:
    v31 = v11;
LABEL_14:
    sub_1C4420C3C(v31, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_15;
  }

  sub_1C4460108(v11, v22, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(&v11[v28], 1, v29) == 1)
  {

    sub_1C4420C3C(v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    goto LABEL_6;
  }

  v32 = v59;
  sub_1C47C0140();

  v33 = sub_1C47E3504(v22, v32);
  sub_1C47C00EC();
  sub_1C4420C3C(v25, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v30 = a2;
  sub_1C47C00EC();
  sub_1C4420C3C(v11, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v34 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__merchantPoicategory;
  swift_beginAccess();
  v35 = v61;
  sub_1C4460108(a1 + v34, v61, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v36 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__merchantPoicategory;
  swift_beginAccess();
  v37 = *(v60 + 48);
  v38 = v57;
  sub_1C4460108(v35, v57, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v30 + v36, v38 + v37, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v39 = v29;
  if (sub_1C44157D4(v38, 1, v29) != 1)
  {
    v42 = v56;
    sub_1C4460108(v38, v56, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v43 = sub_1C44157D4(v38 + v37, 1, v29);
    v41 = v58;
    if (v43 == 1)
    {
      sub_1C4420C3C(v61, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C47C00EC();
      goto LABEL_13;
    }

    v45 = v59;
    sub_1C47C0140();
    v46 = sub_1C47E3504(v42, v45);
    sub_1C47C00EC();
    sub_1C4420C3C(v61, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
    sub_1C4420C3C(v38, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (v46)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_1C4420C3C(v35, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v40 = sub_1C44157D4(v38 + v37, 1, v29);
  v41 = v58;
  if (v40 != 1)
  {
LABEL_13:
    v31 = v38;
    goto LABEL_14;
  }

  sub_1C4420C3C(v38, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_19:
  v47 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__passStyle;
  swift_beginAccess();
  sub_1C4460108(a1 + v47, v41, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v48 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent6WalletP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__passStyle;
  swift_beginAccess();
  v49 = *(v60 + 48);
  v50 = v55;
  sub_1C4460108(v41, v55, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4460108(v30 + v48, v50 + v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v50, 1, v39) == 1)
  {

    sub_1C4420C3C(v41, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if (sub_1C44157D4(v50 + v49, 1, v39) == 1)
    {
      sub_1C4420C3C(v50, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      return 1;
    }

    goto LABEL_24;
  }

  v51 = v54;
  sub_1C4460108(v50, v54, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v50 + v49, 1, v39) == 1)
  {

    sub_1C4420C3C(v41, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C47C00EC();
LABEL_24:
    sub_1C4420C3C(v50, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    return 0;
  }

  v52 = v59;
  sub_1C47C0140();
  v53 = sub_1C47E3504(v51, v52);

  sub_1C47C00EC();
  sub_1C4420C3C(v41, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C47C00EC();
  sub_1C4420C3C(v50, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  return (v53 & 1) != 0;
}

uint64_t sub_1C47B6F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD050, type metadata accessor for EventStreamsEvent.Wallet, &unk_1C4F2BB4C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47B6FE8(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCEE8, type metadata accessor for EventStreamsEvent.Wallet, &unk_1C4F2BB84);

  return sub_1C4F00428();
}

uint64_t sub_1C47B70B0(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCEE8, type metadata accessor for EventStreamsEvent.Wallet, &unk_1C4F2BB84);

  return sub_1C4F00438();
}

uint64_t sub_1C47B71AC()
{
  type metadata accessor for EventStreamsEvent.LocationVisit._StorageClass(0);
  swift_allocObject();
  result = sub_1C47BC0B4();
  qword_1EC0BCDB8 = result;
  return result;
}

void sub_1C47B725C()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for EventStreamsEvent.LocationVisit(v0);
  v2 = sub_1C442A918(v1);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.LocationVisit._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    v2 = sub_1C4416740(v6);
  }

  sub_1C445E7D0(v2, v3, v4, v5, sub_1C47B7330, sub_1C47B740C, sub_1C47B74E8, sub_1C47B75C4);
  sub_1C44512DC();
}

uint64_t sub_1C47B7330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47B740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47B74E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47B75C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

void sub_1C47B76A0()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for EventStreamsEvent.LocationVisit(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  sub_1C47BCD48();
  if (!v0)
  {
    sub_1C4435894();
  }
}

uint64_t sub_1C47B7734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent13LocationVisitP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__poiCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent13LocationVisitP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__userSpecificPlaceType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B7B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent13LocationVisitP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__placeType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B7CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent13LocationVisitP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__confidence;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B7ED4()
{
  v1 = sub_1C43FECE0();
  type metadata accessor for EventStreamsEvent.LocationVisit(v1);
  sub_1C44183FC();
  if (!v2)
  {

    sub_1C4404084();
    sub_1C47BD62C();
    sub_1C4460650();

    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C4406D78();
  v5 = sub_1C47BF154(v3, v4, MEMORY[0x1E69AAC10]);
  return sub_1C4404EC0(v5) & 1;
}

uint64_t sub_1C47B803C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD058, type metadata accessor for EventStreamsEvent.LocationVisit, &unk_1C4F2B9E4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47B80DC(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCEC8, type metadata accessor for EventStreamsEvent.LocationVisit, &unk_1C4F2BA1C);

  return sub_1C4F00428();
}

uint64_t sub_1C47B81A4(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCEC8, type metadata accessor for EventStreamsEvent.LocationVisit, &unk_1C4F2BA1C);

  return sub_1C4F00438();
}

uint64_t sub_1C47B8260(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C4F004E8();
  sub_1C44F9918(v3, a2);
  v4 = sub_1C4402120();
  sub_1C442B738(v4, v5);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v6 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C4F0D480;
  v10 = v9 + v8;
  v11 = v9 + v8 + v6[14];
  *(v9 + v8) = 1;
  *v11 = "poiCategory";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x1E69AADC8];
  v13 = sub_1C4F004C8();
  sub_1C43FBCE0();
  v15 = *(v14 + 104);
  v15(v11, v12, v13);
  v16 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  v17 = sub_1C448F114(v16, "userSpecificPlaceType");
  (v15)(v17);
  v18 = (v10 + 2 * v7);
  v19 = v18 + v6[14];
  *v18 = 3;
  v20 = sub_1C448F114(v19, "PlaceType");
  (v15)(v20);
  v21 = (v10 + 3 * v7);
  v22 = v21 + v6[14];
  *v21 = 4;
  *v22 = "confidence";
  *(v22 + 1) = 10;
  v22[16] = 2;
  (v15)();
  return sub_1C4F004D8();
}

uint64_t sub_1C47B847C()
{
  type metadata accessor for EventStreamsEvent.PlaceInference._StorageClass(0);
  swift_allocObject();
  result = sub_1C47BC0B4();
  qword_1EC0BCDC0 = result;
  return result;
}

void sub_1C47B84E0()
{
  sub_1C43FBD3C();
  v2 = v1;
  v62 = v3;
  v63 = v1;
  v5 = v4;
  v6 = v3;
  v8 = v7;
  v10 = v9;
  v11 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v61 - v13;
  v15 = *v8;
  v16 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v17, v18, v19, v16);
  v20 = *v6;
  sub_1C43FCF64();
  sub_1C440BAA8(v21, v22, v23, v16);
  v24 = *v5;
  sub_1C43FCF64();
  sub_1C440BAA8(v25, v26, v27, v16);
  v28 = *v2;
  sub_1C43FCF64();
  sub_1C440BAA8(v29, v30, v31, v16);
  v32 = *v8;
  sub_1C440D164(v10 + v32, &v68);
  sub_1C4460108(v10 + v32, v14, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4403138(v0 + v15, v67);
  sub_1C440EF9C();
  sub_1C44408D4(v33, v34, v35, v36);
  swift_endAccess();
  sub_1C440D164(v10 + *v62, v67);
  sub_1C440EF9C();
  sub_1C4460108(v37, v38, v39, v40);
  sub_1C4403138(v0 + v20, v66);
  sub_1C440EF9C();
  sub_1C44408D4(v41, v42, v43, v44);
  swift_endAccess();
  sub_1C440D164(v10 + *v5, v66);
  sub_1C440EF9C();
  sub_1C4460108(v45, v46, v47, v48);
  sub_1C4403138(v0 + v24, v65);
  sub_1C440EF9C();
  sub_1C44408D4(v49, v50, v51, v52);
  swift_endAccess();
  sub_1C440D164(v10 + *v63, v65);
  sub_1C440EF9C();
  sub_1C4460108(v53, v54, v55, v56);

  sub_1C4403138(v0 + v28, &v64);
  sub_1C440EF9C();
  sub_1C44408D4(v57, v58, v59, v60);
  swift_endAccess();
  sub_1C43FE9F0();
}

uint64_t sub_1C47B8704()
{
  sub_1C4459B58();
  sub_1C442ABB0(*v4);
  sub_1C442ABB0(*v3);
  sub_1C442ABB0(*v2);
  sub_1C442ABB0(*v0);
  return v1;
}

void sub_1C47B87B4()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for EventStreamsEvent.PlaceInference(v0);
  v2 = sub_1C442A918(v1);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.PlaceInference._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    v2 = sub_1C4416740(v6);
  }

  sub_1C445E7D0(v2, v3, v4, v5, sub_1C47B8888, sub_1C47B8964, sub_1C47B8A40, sub_1C47B8B1C);
  sub_1C44512DC();
}

uint64_t sub_1C47B8888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47B8964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47B8A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47B8B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

void sub_1C47B8BF8()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for EventStreamsEvent.PlaceInference(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  sub_1C47BCD48();
  if (!v0)
  {
    sub_1C4435894();
  }
}

uint64_t sub_1C47B8C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent14PlaceInferenceP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__poiCategory;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B8E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent14PlaceInferenceP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__userSpecificPlaceType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent14PlaceInferenceP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__placeType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B9244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent14PlaceInferenceP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__confidence;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47B942C()
{
  v1 = sub_1C43FECE0();
  type metadata accessor for EventStreamsEvent.PlaceInference(v1);
  sub_1C44183FC();
  if (!v2)
  {

    sub_1C4404084();
    sub_1C47BD62C();
    sub_1C4460650();

    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C4406D78();
  v5 = sub_1C47BF154(v3, v4, MEMORY[0x1E69AAC10]);
  return sub_1C4404EC0(v5) & 1;
}

uint64_t sub_1C47B9594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD060, type metadata accessor for EventStreamsEvent.PlaceInference, &unk_1C4F2B87C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47B9634(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCEA8, type metadata accessor for EventStreamsEvent.PlaceInference, &unk_1C4F2B8B4);

  return sub_1C4F00428();
}

uint64_t sub_1C47B96FC(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCEA8, type metadata accessor for EventStreamsEvent.PlaceInference, &unk_1C4F2B8B4);

  return sub_1C4F00438();
}

uint64_t sub_1C47B977C()
{
  result = MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F9B020);
  qword_1EC151E80 = 0x746E6576452E7365;
  *algn_1EC151E88 = 0xE800000000000000;
  return result;
}

uint64_t sub_1C47B97E8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151E90);
  sub_1C442B738(v0, qword_1EC151E90);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "placeType";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userSpecificPlaceType";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47B9A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD068, type metadata accessor for EventStreamsEvent.SemanticLocation, &unk_1C4F2B714);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47B9AFC(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCE88, type metadata accessor for EventStreamsEvent.SemanticLocation, &unk_1C4F2B74C);

  return sub_1C4F00428();
}

uint64_t sub_1C47B9BC4(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCE88, type metadata accessor for EventStreamsEvent.SemanticLocation, &unk_1C4F2B74C);

  return sub_1C4F00438();
}

uint64_t sub_1C47B9C8C()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151EB8);
  sub_1C442B738(v0, qword_1EC151EB8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "poiCategory";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rank";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47B9F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD070, type metadata accessor for EventStreamsEvent.POI, &unk_1C4F2B5AC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47B9FA0(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCE68, type metadata accessor for EventStreamsEvent.POI, &unk_1C4F2B5E4);

  return sub_1C4F00428();
}

uint64_t sub_1C47BA068(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCE68, type metadata accessor for EventStreamsEvent.POI, &unk_1C4F2B5E4);

  return sub_1C4F00438();
}

uint64_t sub_1C47BA114()
{
  result = MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4F9B050);
  qword_1EC151ED0 = 0x746E6576452E7365;
  *algn_1EC151ED8 = 0xE800000000000000;
  return result;
}

uint64_t sub_1C47BA180()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151EE0);
  sub_1C442B738(v0, qword_1EC151EE0);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "virtualInteractionType";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "numParticipants";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47BA3F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD078, type metadata accessor for EventStreamsEvent.VirtualInteractions, &unk_1C4F2B444);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47BA494(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCE48, type metadata accessor for EventStreamsEvent.VirtualInteractions, &unk_1C4F2B47C);

  return sub_1C4F00428();
}

uint64_t sub_1C47BA55C(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCE48, type metadata accessor for EventStreamsEvent.VirtualInteractions, &unk_1C4F2B47C);

  return sub_1C4F00438();
}

uint64_t sub_1C47BA608()
{
  result = MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4F9B0A0);
  qword_1EC151EF8 = 0x746E6576452E7365;
  unk_1EC151F00 = 0xE800000000000000;
  return result;
}

uint64_t sub_1C47BA674()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151F08);
  sub_1C442B738(v0, qword_1EC151F08);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "mediaTypes";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "playbackStates";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47BA8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD080, type metadata accessor for EventStreamsEvent.NowPlayingState, &unk_1C4F2B2DC);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47BA988(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCE28, type metadata accessor for EventStreamsEvent.NowPlayingState, &unk_1C4F2B314);

  return sub_1C4F00428();
}

uint64_t sub_1C47BAA50(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCE28, type metadata accessor for EventStreamsEvent.NowPlayingState, &unk_1C4F2B314);

  return sub_1C4F00438();
}

uint64_t sub_1C47BAB2C()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151F30);
  sub_1C442B738(v0, qword_1EC151F30);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "colorComponentX";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "colorComponentY";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "colorComponentZ";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ambientLightType";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47BAD6C()
{
  type metadata accessor for EventStreamsEvent.AmbientLight._StorageClass(0);
  swift_allocObject();
  result = sub_1C47BC0B4();
  qword_1EC0BCDC8 = result;
  return result;
}

void sub_1C47BAE1C()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for EventStreamsEvent.AmbientLight(v0);
  v2 = sub_1C442A918(v1);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.AmbientLight._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    v2 = sub_1C4416740(v6);
  }

  sub_1C445E7D0(v2, v3, v4, v5, sub_1C47BAEF0, sub_1C47BAFCC, sub_1C47BB0A8, sub_1C47BB184);
  sub_1C44512DC();
}

uint64_t sub_1C47BAEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47BAFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47BB0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47BB184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

void sub_1C47BB260()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for EventStreamsEvent.AmbientLight(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  sub_1C47BCD48();
  if (!v0)
  {
    sub_1C4435894();
  }
}

uint64_t sub_1C47BB2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent12AmbientLightP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__colorComponentX;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47BB4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent12AmbientLightP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__colorComponentY;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47BB6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent12AmbientLightP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__colorComponentZ;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47BB8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent12AmbientLightP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__ambientLightType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47BBA94()
{
  v1 = sub_1C43FECE0();
  type metadata accessor for EventStreamsEvent.AmbientLight(v1);
  sub_1C44183FC();
  if (!v2)
  {

    sub_1C4404084();
    sub_1C47BD62C();
    sub_1C4460650();

    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C4406D78();
  v5 = sub_1C47BF154(v3, v4, MEMORY[0x1E69AAC10]);
  return sub_1C4404EC0(v5) & 1;
}

uint64_t sub_1C47BBBFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD088, type metadata accessor for EventStreamsEvent.AmbientLight, &unk_1C4F2B174);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47BBC9C(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCE08, type metadata accessor for EventStreamsEvent.AmbientLight, &unk_1C4F2B1AC);

  return sub_1C4F00428();
}

uint64_t sub_1C47BBD64(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCE08, type metadata accessor for EventStreamsEvent.AmbientLight, &unk_1C4F2B1AC);

  return sub_1C4F00438();
}

uint64_t sub_1C47BBE0C()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151F58);
  sub_1C442B738(v0, qword_1EC151F58);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "calendarContainsTitleWork";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isAffectingAvailability";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "supportsLocationDirectorySearches";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "numAttendees";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47BC050()
{
  type metadata accessor for EventStreamsEvent.Calendar._StorageClass(0);
  swift_allocObject();
  result = sub_1C47BC0B4();
  qword_1EDDEEE68 = result;
  return result;
}

uint64_t sub_1C47BC0B4()
{
  sub_1C4459B58();
  v1 = type metadata accessor for FeatureValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v2, v3, v4, v1);
  sub_1C43FCF64();
  sub_1C440BAA8(v5, v6, v7, v1);
  sub_1C43FCF64();
  sub_1C440BAA8(v8, v9, v10, v1);
  sub_1C43FCF64();
  sub_1C440BAA8(v11, v12, v13, v1);
  return v0;
}

uint64_t sub_1C47BC168()
{
  sub_1C47B8704();

  return swift_deallocClassInstance();
}

void sub_1C47BC1E4(uint64_t a1)
{
  sub_1C44340FC(a1, &qword_1EDDF8B70);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C47BC344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C4F00328();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C47BC5AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = v3;
  }

  else
  {
    v8 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v9 = v3 + *(a3 + 20);
  }

  return sub_1C44157D4(v9, a2, v8);
}

uint64_t sub_1C47BC660(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    v10 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v11 = v4 + *(a4 + 20);
  }

  return sub_1C440BAA8(v11, a2, a2, v10);
}

void sub_1C47BC708(uint64_t a1)
{
  v1 = sub_1C4F00328();
  if (v2 <= 0x3F)
  {
    sub_1C44340FC(v1, &qword_1EDDF8B70);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C47BC790()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for EventStreamsEvent.Calendar(v0);
  v2 = sub_1C442A918(v1);
  if ((v2 & 1) == 0)
  {
    type metadata accessor for EventStreamsEvent.Calendar._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C47B84E0();
    v2 = sub_1C4416740(v6);
  }

  sub_1C445E7D0(v2, v3, v4, v5, sub_1C47BC944, sub_1C47BCA20, sub_1C47BCAFC, sub_1C47BCBD8);
  sub_1C44512DC();
}

uint64_t sub_1C47BC864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t), void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v8 || (v14 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v15 = sub_1C440BCE4();
        a5(v15);
        break;
      case 2:
        v18 = sub_1C440BCE4();
        a6(v18);
        break;
      case 3:
        v16 = sub_1C440BCE4();
        a7(v16);
        break;
      case 4:
        v17 = sub_1C440BCE4();
        a8(v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C47BC944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47BCA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47BCAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C47BCBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

void sub_1C47BCCB4()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for EventStreamsEvent.Calendar(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  sub_1C47BCD48();
  if (!v0)
  {
    sub_1C4435894();
  }
}

void sub_1C47BCD48()
{
  sub_1C441800C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7();
  if (!v0)
  {
    v8 = sub_1C44159B4();
    v6(v8);
    v9 = sub_1C44159B4();
    v4(v9);
    v10 = sub_1C44159B4();
    v2(v10);
  }

  sub_1C44512DC();
}

uint64_t sub_1C47BCDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent8CalendarP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__calendarContainsTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47BCFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent8CalendarP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__isAffectingAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47BD198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent8CalendarP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__supportsLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47BD380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore17EventStreamsEvent8CalendarP33_7174862ACAB430BBEAFA26978F3B6B9A13_StorageClass__numAttendees;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C47BF154(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C47C00EC();
}

uint64_t sub_1C47BD568()
{
  v1 = sub_1C43FECE0();
  type metadata accessor for EventStreamsEvent.Calendar(v1);
  sub_1C44183FC();
  if (!v2)
  {

    sub_1C4404084();
    sub_1C47BD62C();
    sub_1C4460650();

    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C4F00328();
  sub_1C4406D78();
  v5 = sub_1C47BF154(v3, v4, MEMORY[0x1E69AAC10]);
  return sub_1C4404EC0(v5) & 1;
}

void sub_1C47BD62C()
{
  sub_1C43FBD3C();
  v84 = v0;
  v87 = v1;
  v91 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v97 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v95 = (v11 - v10);
  v12 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83 - v17;
  v19 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v20 = sub_1C43FBD18(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v83 - v30;
  v32 = *v4;
  sub_1C440D164(v8 + *v4, &v105);
  sub_1C4460108(v8 + v32, v31, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v33 = *v4;
  sub_1C440D164(v6 + *v4, &v104);
  v94 = v12;
  v34 = *(v12 + 48);
  sub_1C4460108(v31, v18, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v35 = v6 + v33;
  v36 = v6;
  v37 = v97;
  sub_1C4460108(v35, &v18[v34], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v18, 1, v37);
  if (v39)
  {

    sub_1C4420C3C(v31, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(&v18[v34], 1, v37);
    v38 = v8;
    if (v39)
    {
      sub_1C4420C3C(v18, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_11;
    }

LABEL_9:
    v40 = v18;
LABEL_30:
    sub_1C4420C3C(v40, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_31;
  }

  sub_1C4460108(v18, v28, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(&v18[v34], 1, v37);
  if (v39)
  {

    sub_1C4420C3C(v31, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4413138();
    sub_1C47C00EC();
    goto LABEL_9;
  }

  v41 = v95;
  sub_1C47C0140();

  v42 = sub_1C47E3504(v28, v41);
  sub_1C4402120();
  sub_1C47C00EC();
  sub_1C4420C3C(v31, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4404C28();
  sub_1C47C00EC();
  v38 = v8;
  sub_1C4420C3C(v18, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v42 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v43 = v91;
  v44 = *v91;
  sub_1C440D164(v38 + *v91, &v103);
  v45 = v96;
  sub_1C4401DB4(v38 + v44, v96);
  v46 = *v43;
  sub_1C440D164(v36 + *v43, &v102);
  v47 = v94;
  v48 = *(v94 + 48);
  v49 = v92;
  sub_1C4401DB4(v45, v92);
  sub_1C4401DB4(v36 + v46, v49 + v48);
  sub_1C440175C(v49, 1, v37);
  if (v39)
  {
    sub_1C4420C3C(v45, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(v49 + v48, 1, v37);
    v50 = v93;
    if (v39)
    {
      sub_1C4420C3C(v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1C4460108(v49, v90, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v49 + v48, 1, v37);
  v50 = v93;
  if (v51)
  {
    sub_1C4420C3C(v96, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4413138();
    sub_1C47C00EC();
LABEL_19:
    v40 = v49;
    goto LABEL_30;
  }

  v52 = v49;
  sub_1C446021C();
  sub_1C47C0140();
  v53 = sub_1C4404084();
  v55 = sub_1C47E3504(v53, v54);
  sub_1C43FD024();
  sub_1C47C00EC();
  sub_1C4420C3C(v96, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4404C28();
  sub_1C47C00EC();
  sub_1C4420C3C(v52, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v55 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v56 = v87;
  v57 = *v87;
  sub_1C440D164(v38 + *v87, &v101);
  sub_1C4401DB4(v38 + v57, v50);
  v58 = *v56;
  sub_1C440D164(v36 + v58, &v100);
  v59 = *(v47 + 48);
  v60 = v88;
  sub_1C4401DB4(v50, v88);
  sub_1C4401DB4(v36 + v58, v60 + v59);
  v61 = v97;
  sub_1C440175C(v60, 1, v97);
  if (!v39)
  {
    sub_1C4460108(v60, v86, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(v60 + v59, 1, v61);
    v62 = v89;
    if (!v63)
    {
      v64 = v50;
      v65 = v60;
      sub_1C446021C();
      sub_1C47C0140();
      v66 = sub_1C4404084();
      v68 = sub_1C47E3504(v66, v67);
      sub_1C43FD024();
      sub_1C47C00EC();
      sub_1C4420C3C(v64, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4404C28();
      sub_1C47C00EC();
      sub_1C4420C3C(v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if (v68)
      {
        goto LABEL_34;
      }

LABEL_31:

      goto LABEL_32;
    }

    sub_1C4420C3C(v50, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4413138();
    sub_1C47C00EC();
    goto LABEL_29;
  }

  sub_1C4420C3C(v50, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v60 + v59, 1, v61);
  v62 = v89;
  if (!v39)
  {
LABEL_29:
    v40 = v60;
    goto LABEL_30;
  }

  sub_1C4420C3C(v60, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_34:
  v69 = v84;
  v70 = *v84;
  sub_1C440D164(v38 + *v84, &v99);
  sub_1C4401DB4(v38 + v70, v62);
  v71 = *v69;
  sub_1C440D164(v36 + v71, &v98);
  v72 = *(v47 + 48);
  v73 = v62;
  v74 = v62;
  v75 = v85;
  sub_1C4401DB4(v73, v85);
  v76 = v36 + v71;
  v77 = v75;
  sub_1C4401DB4(v76, v75 + v72);
  v78 = v97;
  sub_1C440175C(v75, 1, v97);
  if (!v39)
  {
    v79 = v75;
    v80 = v83;
    sub_1C4460108(v79, v83, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(v77 + v72, 1, v78);
    if (!v81)
    {
      v82 = v95;
      sub_1C47C0140();
      sub_1C47E3504(v80, v82);

      sub_1C43FD024();
      sub_1C47C00EC();
      sub_1C4420C3C(v89, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C47C00EC();
      sub_1C4420C3C(v77, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_32;
    }

    sub_1C4420C3C(v89, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C4413138();
    sub_1C47C00EC();
LABEL_42:
    sub_1C4420C3C(v77, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_32;
  }

  sub_1C4420C3C(v74, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v75 + v72, 1, v78);
  if (!v39)
  {
    goto LABEL_42;
  }

  sub_1C4420C3C(v75, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_32:
  sub_1C43FE9F0();
}

uint64_t sub_1C47BE0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD090, type metadata accessor for EventStreamsEvent.Calendar, &unk_1C4F2B00C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47BE17C(uint64_t a1)
{
  sub_1C47BF154(qword_1EDDEED10, type metadata accessor for EventStreamsEvent.Calendar, &unk_1C4F2B044);

  return sub_1C4F00428();
}

uint64_t sub_1C47BE244(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(qword_1EDDEED10, type metadata accessor for EventStreamsEvent.Calendar, &unk_1C4F2B044);

  return sub_1C4F00438();
}

uint64_t sub_1C47BE2EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1C6940010](a2, a3);
  *a4 = 0x746E6576452E7365;
  *a5 = 0xE800000000000000;
  return result;
}

uint64_t sub_1C47BE354()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151F80);
  sub_1C442B738(v0, qword_1EC151F80);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bluetoothConnected";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userWearing";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C47BE51C()
{
  sub_1C441800C();
  v0 = sub_1C4414568();
  v1(v0);
  type metadata accessor for FeatureValue(0);
  sub_1C4411C94();
  v4 = sub_1C47BF154(v2, v3, &unk_1C4F2ECAC);
  sub_1C448DFF4(v4);
  sub_1C44512DC();
}

void sub_1C47BE58C()
{
  sub_1C441800C();
  v0 = sub_1C4414568();
  v1(v0);
  type metadata accessor for FeatureValue(0);
  sub_1C4411C94();
  v4 = sub_1C47BF154(v2, v3, &unk_1C4F2ECAC);
  sub_1C448DFF4(v4);
  sub_1C44512DC();
}

uint64_t sub_1C47BE5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4422AC0(a1, a2, a3, a4);
  v6 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C4440D20();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = v5(0);
  sub_1C444C250(*(v13 + 20));
  v14 = sub_1C441B908();
  if (sub_1C44157D4(v14, v15, v8) == 1)
  {
    return sub_1C4420C3C(v4, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C4411C94();
  v19 = sub_1C47BF154(v17, v18, &unk_1C4F2ECAC);
  sub_1C44623D8(v12, 1, v20, v19);
  return sub_1C47C00EC();
}

uint64_t sub_1C47BE76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4422AC0(a1, a2, a3, a4);
  v6 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C4440D20();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = v5(0);
  sub_1C444C250(*(v13 + 24));
  v14 = sub_1C441B908();
  if (sub_1C44157D4(v14, v15, v8) == 1)
  {
    return sub_1C4420C3C(v4, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47C0140();
  sub_1C4411C94();
  v19 = sub_1C47BF154(v17, v18, &unk_1C4F2ECAC);
  sub_1C44623D8(v12, 2, v20, v19);
  return sub_1C47C00EC();
}

void sub_1C47BE8DC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v43 = (v9 - v8);
  v10 = sub_1C43FBC98();
  v12 = sub_1C456902C(v10, v11);
  v13 = sub_1C43FBD18(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  v42 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v42 - v16;
  v18 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v45 = v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v42 - v23;
  v44 = v1(0, v22);
  v25 = *(v44 + 20);
  v26 = *(v18 + 48);
  v46 = v5;
  sub_1C442573C(v5 + v25, v24);
  v47 = v3;
  sub_1C442573C(v3 + v25, &v24[v26]);
  v27 = sub_1C441B908();
  sub_1C440175C(v27, v28, v6);
  if (v29)
  {
    sub_1C440175C(&v24[v26], 1, v6);
    if (!v29)
    {
      goto LABEL_16;
    }

    sub_1C4420C3C(v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    sub_1C4460108(v24, v17, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(&v24[v26], 1, v6);
    if (v29)
    {
LABEL_15:
      sub_1C47C00EC();
LABEL_16:
      sub_1C4420C3C(v24, &qword_1EC0BB6C0, &unk_1C4F20AE0);
      goto LABEL_17;
    }

    v30 = v43;
    sub_1C47C0140();
    v31 = sub_1C47E3504(v17, v30);
    sub_1C4404C28();
    sub_1C47C00EC();
    sub_1C47C00EC();
    sub_1C4420C3C(v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v31 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v24 = v45;
  v32 = *(v44 + 24);
  v33 = *(v18 + 48);
  sub_1C442573C(v46 + v32, v45);
  sub_1C442573C(v47 + v32, &v24[v33]);
  v34 = sub_1C441B908();
  sub_1C440175C(v34, v35, v6);
  if (v29)
  {
    sub_1C440175C(&v24[v33], 1, v6);
    if (v29)
    {
      sub_1C4420C3C(v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_19:
      sub_1C4F00328();
      sub_1C4406D78();
      sub_1C47BF154(v40, v41, MEMORY[0x1E69AAC10]);
      sub_1C4F010B8();
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v36 = v42;
  sub_1C4460108(v24, v42, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(&v24[v33], 1, v6);
  if (v37)
  {
    goto LABEL_15;
  }

  v38 = v43;
  sub_1C47C0140();
  v39 = sub_1C47E3504(v36, v38);
  sub_1C4404C28();
  sub_1C47C00EC();
  sub_1C47C00EC();
  sub_1C4420C3C(v24, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (v39)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_1C43FE9F0();
}

uint64_t sub_1C47BECD8()
{
  sub_1C4459B58();
  v4 = v3;
  sub_1C4F02AF8();
  v4(0);
  sub_1C47BF154(v2, v1, v0);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C47BEDAC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return sub_1C4402120();
}

uint64_t sub_1C47BEE00()
{
  sub_1C4403FC0();
  sub_1C4F00328();
  sub_1C43FBCE0();
  v0 = sub_1C4402120();

  return v1(v0);
}

uint64_t sub_1C47BEEB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47BF154(&qword_1EC0BD098, type metadata accessor for EventStreamsEvent.Bluetooth, &unk_1C4F2AEA4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47BEF50(uint64_t a1)
{
  sub_1C47BF154(&qword_1EC0BCDD8, type metadata accessor for EventStreamsEvent.Bluetooth, &unk_1C4F2AEDC);

  return sub_1C4F00428();
}

uint64_t sub_1C47BF018(uint64_t a1, uint64_t a2)
{
  sub_1C47BF154(&qword_1EC0BCDD8, type metadata accessor for EventStreamsEvent.Bluetooth, &unk_1C4F2AEDC);

  return sub_1C4F00438();
}

uint64_t sub_1C47BF154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C47C00EC()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C47C0140()
{
  v1 = sub_1C43FECE0();
  v2(v1);
  sub_1C43FBCE0();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

uint64_t sub_1C47C01BC(uint64_t a1)
{
  v1 = sub_1C4F00328();
  if (v2 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1C47AA700(319, qword_1EDDEEB80, type metadata accessor for EventStreamsEvent);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C47C02D4(uint64_t a1)
{
  v3 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F2C2A0;
  *(v6 + 56) = &type metadata for DeviceAirplaneModeDataProvider;
  *(v6 + 64) = sub_1C47C093C();
  *(v6 + 32) = 0;
  *(v6 + 96) = &type metadata for DeviceBluetoothDataProvider;
  *(v6 + 104) = sub_1C47C0990();
  *(v6 + 72) = 0;
  v7 = type metadata accessor for CarPlaySignal();
  sub_1C44195E8(v7);
  v8 = sub_1C4406D90();
  v9 = sub_1C4677E18(v8);
  *(v6 + 136) = v1;
  *(v6 + 144) = sub_1C47C0C84(&qword_1EDDEACE0, type metadata accessor for CarPlaySignal, &unk_1C4F16B30);
  *(v6 + 112) = v9;
  *(v6 + 176) = &type metadata for DevicePluggedInDataProvider;
  *(v6 + 184) = sub_1C47C09E4();
  *(v6 + 152) = 0;
  *(v6 + 216) = &type metadata for DeviceScreenLockDataProvider;
  *(v6 + 224) = sub_1C47C0A38();
  *(v6 + 192) = 0;
  v10 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v11 = type metadata accessor for EventsFoundInAppsSignal();
  v12 = sub_1C44195E8(v11);
  *(v12 + 16) = 0;
  *(v12 + 24) = v10;
  *(v6 + 256) = v1;
  *(v6 + 264) = sub_1C47C0C84(qword_1EDDE22C0, type metadata accessor for EventsFoundInAppsSignal, &unk_1C4F2A6CC);
  *(v6 + 232) = v12;
  *(v6 + 296) = &unk_1F43E10F8;
  *(v6 + 304) = sub_1C47C0A8C();
  v13 = type metadata accessor for SemanticLocationSignal();
  swift_allocObject();
  v14 = sub_1C4406D90();
  v15 = sub_1C4AFAB8C(v14);
  *(v6 + 336) = v13;
  *(v6 + 344) = sub_1C47C0C84(qword_1EDDE2878, type metadata accessor for SemanticLocationSignal, &unk_1C4F509F0);
  *(v6 + 312) = v15;
  v16 = type metadata accessor for UserFocusComputedModeSignal();
  sub_1C44195E8(v16);
  v17 = sub_1C4406D90();
  v18 = sub_1C4B9269C(v17);
  *(v6 + 376) = v13;
  *(v6 + 384) = sub_1C47C0C84(qword_1EDDE0220, type metadata accessor for UserFocusComputedModeSignal, &unk_1C4F57670);
  *(v6 + 352) = v18;
  *(v6 + 416) = &type metadata for DeviceWiFiConnectedDataProvider;
  *(v6 + 424) = sub_1C47C0AE0();
  *(v6 + 392) = 0;
  v19 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
  v20 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
  v21 = v19;
  v22 = [v20 init];
  v23 = type metadata accessor for PassKitSignal();
  v24 = swift_allocObject();
  v25 = sub_1C497AAA4(v21, v22, 0, v24);

  *(v6 + 456) = v23;
  *(v6 + 464) = sub_1C47C0C84(qword_1EDDEAAC0, type metadata accessor for PassKitSignal, &unk_1C4F4A9BC);
  *(v6 + 432) = v25;
  *(v6 + 496) = &type metadata for LOISessionDataProvider;
  *(v6 + 504) = sub_1C47C0B34();
  v26 = type metadata accessor for PoiCategorySignal();
  v27 = swift_allocObject();
  *(v27 + 16) = [objc_allocWithZone(MEMORY[0x1E698F2C0]) init];
  *(v6 + 536) = v26;
  *(v6 + 544) = sub_1C47C0C84(qword_1EDDE6258, type metadata accessor for PoiCategorySignal, &unk_1C4F4EA50);
  *(v6 + 512) = v27;
  sub_1C44098F0(a1, v5);
  v28 = type metadata accessor for VirtualInteractionsSignal(0);
  swift_allocObject();
  v29 = sub_1C4D31AA8(v5, 0);
  *(v6 + 576) = v28;
  *(v6 + 584) = sub_1C47C0C84(&qword_1EDDE1210, type metadata accessor for VirtualInteractionsSignal, &unk_1C4F6E070);
  *(v6 + 552) = v29;
  *(v6 + 616) = &type metadata for EnergyModeDataProvider;
  *(v6 + 624) = sub_1C47C0B88();
  *(v6 + 656) = &type metadata for AlarmDataProvider;
  *(v6 + 664) = sub_1C47C0BDC();
  *(v6 + 696) = &type metadata for DeviceBacklightDataProvider;
  *(v6 + 704) = sub_1C47C0C30();
  v30 = type metadata accessor for AmbientLightSignal();
  swift_allocObject();
  v31 = sub_1C4585984();
  *(v6 + 736) = v30;
  *(v6 + 744) = sub_1C47C0C84(qword_1EDDE5E68, type metadata accessor for AmbientLightSignal, &unk_1C4F0D4A0);
  *(v6 + 712) = v31;
  v32 = type metadata accessor for NowPlayingSignal();
  v33 = swift_allocObject();
  v34 = sub_1C4A4B19C(v33);
  *(v6 + 776) = v32;
  *(v6 + 784) = sub_1C47C0C84(qword_1EDDE6C00, type metadata accessor for NowPlayingSignal, &unk_1C4F46830);
  *(v6 + 752) = v34;
  v35 = type metadata accessor for InferredModeSignal();
  swift_allocObject();
  v36 = sub_1C4406D90();
  v37 = sub_1C493B648(v36, 0);
  *(v6 + 816) = v35;
  *(v6 + 824) = sub_1C47C0C84(&qword_1EDDE5BC0, type metadata accessor for InferredModeSignal, &unk_1C4F3B6A0);
  *(v6 + 792) = v37;
  v38 = type metadata accessor for MotionStateSignal();
  swift_allocObject();
  v39 = sub_1C4A450C4(0, 600.0);
  *(v6 + 856) = v38;
  *(v6 + 864) = sub_1C47C0C84(qword_1EDDE63A0, type metadata accessor for MotionStateSignal, &protocol conformance descriptor for MotionStateSignal);
  *(v6 + 832) = v39;
  *(v6 + 896) = &unk_1F43FA130;
  *(v6 + 904) = sub_1C47C0CCC();
  return v6;
}

unint64_t sub_1C47C093C()
{
  result = qword_1EDDDF340;
  if (!qword_1EDDDF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDF340);
  }

  return result;
}

unint64_t sub_1C47C0990()
{
  result = qword_1EDDE0818;
  if (!qword_1EDDE0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE0818);
  }

  return result;
}

unint64_t sub_1C47C09E4()
{
  result = qword_1EDDE0810;
  if (!qword_1EDDE0810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE0810);
  }

  return result;
}

unint64_t sub_1C47C0A38()
{
  result = qword_1EDDDFF70;
  if (!qword_1EDDDFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDFF70);
  }

  return result;
}

unint64_t sub_1C47C0A8C()
{
  result = qword_1EDDE6460[0];
  if (!qword_1EDDE6460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE6460);
  }

  return result;
}

unint64_t sub_1C47C0AE0()
{
  result = qword_1EDDDEA60[0];
  if (!qword_1EDDDEA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDDEA60);
  }

  return result;
}

unint64_t sub_1C47C0B34()
{
  result = qword_1EDDE29B0;
  if (!qword_1EDDE29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE29B0);
  }

  return result;
}

unint64_t sub_1C47C0B88()
{
  result = qword_1EDDE2F50;
  if (!qword_1EDDE2F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2F50);
  }

  return result;
}

unint64_t sub_1C47C0BDC()
{
  result = qword_1EDDE6508;
  if (!qword_1EDDE6508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE6508);
  }

  return result;
}

unint64_t sub_1C47C0C30()
{
  result = qword_1EDDE0820;
  if (!qword_1EDDE0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE0820);
  }

  return result;
}

uint64_t sub_1C47C0C84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C47C0CCC()
{
  result = qword_1EDDDF580;
  if (!qword_1EDDDF580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDF580);
  }

  return result;
}

uint64_t sub_1C47C0D20(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1C4EF9CD8();
  v2[4] = v3;
  sub_1C43FCF7C(v3);
  v2[5] = v4;
  v2[6] = sub_1C43FBE7C();
  v5 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v5);
  v2[7] = sub_1C43FBE7C();
  v6 = sub_1C4EF9D38();
  v2[8] = v6;
  sub_1C43FCF7C(v6);
  v2[9] = v7;
  v2[10] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C47C0E44()
{
  if ([objc_opt_self() isInternalDevice])
  {
    sub_1C44F920C();
    v1 = static NSUserDefaults.isESDataCollectionDaily.getter();
    if (v1 == 2)
    {
      sub_1C47C144C();
LABEL_7:
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v2 = sub_1C4F00978();
      v0[11] = sub_1C442B738(v2, qword_1EDDFECB8);
      v3 = sub_1C4F00968();
      v4 = sub_1C4F01CF8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_1C43F8000, v3, v4, "EventStreamsDataCollection: Beginning EventStreamsDataCollection", v5, 2u);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v7 = v0[9];
      v6 = v0[10];
      v9 = v0[7];
      v8 = v0[8];
      v10 = v0[6];

      sub_1C4EF9058();
      v20 = sub_1C4EF9CF8();
      v12 = v11;
      v0[12] = v11;
      (*(v7 + 8))(v6, v8);
      v13 = static NSUserDefaults.isESDataCollectionDaily.getter();
      sub_1C4EF9CC8();
      sub_1C47C14A8(v13, v10, v9);
      v14 = v0[2];
      (*(v0[5] + 8))(v0[6], v0[4]);
      v15 = sub_1C47C02D4(v14);
      v0[13] = v15;
      v16 = swift_task_alloc();
      v0[14] = v16;
      *v16 = v0;
      v16[1] = sub_1C47C115C;
      v17 = v0[7];

      return sub_1C47C1C4C(v15, v17, v20, v12);
    }

    if (v1)
    {
      goto LABEL_7;
    }

    if (static NSUserDefaults.isDeviceToBeSampledForESDataCollection.getter())
    {
      static NSUserDefaults.isDeviceToBeSampledForESDataCollection.setter(0);
      goto LABEL_7;
    }

    static NSUserDefaults.isDeviceToBeSampledForESDataCollection.setter(1);
  }

  sub_1C43FBDA0();

  return v19();
}

uint64_t sub_1C47C115C()
{
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  *(v7 + 120) = v6;
  *(v7 + 128) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C47C12A8(uint64_t a1)
{
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 120);
    sub_1C43FECF0();
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1C43F8000, v2, v3, "EventStreamsDataCollection: Collected %ld events", v5, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v6 = *(v1 + 56);

  sub_1C4420C3C(v6, &qword_1EC0B84B8, &unk_1C4F0D4F0);

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C47C13B8()
{
  sub_1C4420C3C(*(v0 + 56), &qword_1EC0B84B8, &unk_1C4F0D4F0);

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C47C144C()
{
  v2 = 0;
  MEMORY[0x1C6942850](&v2, 8);
  v0 = (v2 & 0x20000) == 0;
  sub_1C44F920C();
  static NSUserDefaults.isESDataCollectionDaily.setter(v0);
  return static NSUserDefaults.isDeviceToBeSampledForESDataCollection.setter(v0);
}

uint64_t sub_1C47C14A8@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v79 = a2;
  v82 = a3;
  LODWORD(v83) = a1;
  v75 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v76 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v63 - v7;
  sub_1C43FBE44();
  v72 = sub_1C4EF9EB8();
  sub_1C43FCDF8();
  v69 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  v71 = v10;
  sub_1C43FBE44();
  v78 = sub_1C4EF9ED8();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD2D8();
  v15 = v14;
  sub_1C43FBE44();
  v16 = sub_1C4EF9E88();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  v21 = v20;
  sub_1C43FBE44();
  v70 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v68 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD2D8();
  v25 = v24;
  v26 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v27 = sub_1C43FBD18(v26);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v63 - v28;
  sub_1C43FBE44();
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v80 = v30;
  v81 = v31;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  v77 = v32;
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v63 - v36;
  if (v83 == 2)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v38 = sub_1C4F00978();
    sub_1C442B738(v38, qword_1EDDFECB8);
    v39 = sub_1C4F00968();
    v40 = sub_1C4F01CD8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1C43F8000, v39, v40, "EventStreamsDataCollection: Value not set for isCollectionDaily", v41, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    sub_1C47C436C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    if (a1)
    {
      v83 = v35;
      sub_1C4EF9BE8();
      v67 = v25;
      sub_1C4EF9F58();
      v43 = v73[6];
      v79 = v73[5];
      v65 = v43;
      v73 = v73[7];
      v44 = *MEMORY[0x1E69698D0];
      v45 = *(v18 + 104);
      v64 = v21;
      v66 = v16;
      v45(v21, v44, v16);
      (*(v12 + 104))(v15, *MEMORY[0x1E69699C8], v78);
      v46 = v69;
      v48 = v71;
      v47 = v72;
      (*(v69 + 104))(v71, *MEMORY[0x1E6969998], v72);
      sub_1C4EF9EF8();
      (*(v46 + 8))(v48, v47);
      (*(v12 + 8))(v15, v78);
      (*(v18 + 8))(v64, v66);
      (*(v68 + 8))(v67, v70);
      v49 = v80;
      if (sub_1C44157D4(v29, 1, v80) == 1)
      {
        sub_1C4420C3C(v29, &unk_1EC0B84E0, qword_1C4F0D2D0);
        sub_1C47C436C();
        swift_allocError();
        swift_willThrow();
        return (*(v81 + 8))(v83, v49);
      }

      v50 = v81;
      (*(v81 + 8))(v83, v49);
      (*(v50 + 32))(v37, v29, v49);
    }

    else
    {
      sub_1C4703364();
      sub_1C4EF9BE8();
      v49 = v80;
    }

    v51 = v77;
    sub_1C4EF9BE8();
    sub_1C4406D9C();
    sub_1C47C43C0(v52, v53, MEMORY[0x1E6969548]);
    result = sub_1C4F01088();
    if (result)
    {
      v54 = v81;
      v55 = *(v81 + 32);
      v56 = v74;
      v55(v74, v51, v49);
      v57 = v75;
      v55((v56 + *(v75 + 48)), v37, v49);
      v58 = v76;
      sub_1C445FFF0(v56, v76, &qword_1EC0B84B0, qword_1C4F0CDE0);
      v59 = *(v57 + 48);
      v55(v82, v58, v49);
      v60 = *(v54 + 8);
      v60(v58 + v59, v49);
      sub_1C4575F28(v56, v58);
      v61 = *(v57 + 48);
      v62 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
      v55(&v82[*(v62 + 36)], v58 + v61, v49);
      return (v60)(v58, v49);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C47C1C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[68] = v4;
  v5[67] = a4;
  v5[66] = a3;
  v5[65] = a2;
  v5[64] = a1;
  v6 = sub_1C456902C(&qword_1EC0BD0A0, &qword_1C4F2C2F8);
  sub_1C43FBD18(v6);
  v5[69] = sub_1C43FBE7C();
  v7 = type metadata accessor for EventStreamsDataCollection(0);
  v5[70] = v7;
  sub_1C43FBD18(v7);
  v5[71] = sub_1C43FBE7C();
  v8 = sub_1C4EF9CD8();
  v5[72] = v8;
  sub_1C43FCF7C(v8);
  v5[73] = v9;
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v10 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5[77] = v10;
  sub_1C43FBD18(v10);
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C47C1DBC()
{
  v43 = v2;
  v4 = *(v2 + 512);
  v5 = *(v4 + 16);
  *(v2 + 640) = v5;
  if (!v5)
  {

    sub_1C440405C();

    __asm { BRAA            X2, X16 }
  }

  *(v2 + 648) = 0;
  sub_1C442E860(v4 + 32, v2 + 16);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  sub_1C4404304();
  v6 = *(v2 + 520);
  v7 = sub_1C4F00978();
  *(v2 + 656) = sub_1C442B738(v7, qword_1EDDFECB8);
  sub_1C442E860(v2 + 16, v2 + 56);
  sub_1C445FFF0(v6, v1, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C445FFF0(v6, v0, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v2 + 632);
  v12 = *(v2 + 624);
  if (v10)
  {
    sub_1C43FEC60();
    v13 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42[0] = v41;
    *v13 = 136315650;
    sub_1C4409678((v2 + 56), *(v2 + 80));
    swift_getDynamicType();
    v14 = sub_1C4F02C58();
    v16 = v15;
    sub_1C440962C((v2 + 56));
    v17 = sub_1C441D828(v14, v16, v42);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_1C4406D9C();
    sub_1C47C43C0(v18, v19, MEMORY[0x1E6969570]);
    v20 = sub_1C4F02858();
    v22 = v21;
    sub_1C4420C3C(v11, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v23 = sub_1C441D828(v20, v22, v42);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2080;
    v24 = sub_1C4F02858();
    v3 = v25;
    sub_1C4420C3C(v12, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v26 = sub_1C441D828(v24, v3, v42);

    *(v13 + 24) = v26;
    _os_log_impl(&dword_1C43F8000, v8, v9, "EventStreamsDataCollection: Fetching data from Data Provider - %s in between %s and %s)", v13, 0x20u);
    v11 = v41;
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v8 = &qword_1EC0B84B8;
    sub_1C4420C3C(v12, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v29 = sub_1C4402120();
    sub_1C4420C3C(v29, v30, &unk_1C4F0D4F0);
    sub_1C440962C((v2 + 56));
  }

  sub_1C4405B64();
  sub_1C43FD720();
  *(v2 + 160) = swift_getAssociatedTypeWitness();
  sub_1C43FFE3C();
  *(v2 + 168) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90((v2 + 136));
  v3(v11, v8, v9);
  sub_1C4409678((v2 + 136), *(v2 + 160));
  sub_1C4425B24();
  sub_1C43FBE7C();
  sub_1C4418A44();
  v31();
  sub_1C43FD720();
  *(v2 + 120) = swift_getAssociatedTypeWitness();
  sub_1C43FFE3C();
  *(v2 + 128) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90((v2 + 96));
  sub_1C4404BCC();
  sub_1C4F019A8();

  sub_1C440962C((v2 + 136));
  *(v2 + 664) = 0u;
  sub_1C442FD50();
  *(v2 + 696) = sub_1C43FD730(255);
  v32 = sub_1C4F01F48();
  *(v2 + 704) = v32;
  sub_1C43FCF7C(v32);
  *(v2 + 712) = v33;
  *(v2 + 720) = sub_1C43FBE7C();
  v34 = sub_1C43FD730(0);
  *(v2 + 728) = v34;
  sub_1C43FCF7C(v34);
  *(v2 + 736) = v35;
  *(v2 + 744) = *(v36 + 64);
  *(v2 + 752) = sub_1C43FBE7C();
  v37 = swift_task_alloc();
  *(v2 + 760) = v37;
  *v37 = v2;
  sub_1C440AA94(v37);
  sub_1C440405C();

  return MEMORY[0x1EEE6D8D0](v38);
}

uint64_t sub_1C47C243C()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  *(v2 + 768) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C47C254C()
{
  v119 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 696);
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    (*(*(v0 + 712) + 8))(v1, *(v0 + 704));

LABEL_3:
    v3 = *(v0 + 640);
    v4 = *(v0 + 648) + 1;
    sub_1C440962C((v0 + 96));
    sub_1C440962C((v0 + 16));
    if (v4 == v3)
    {

      sub_1C4409BA4();

      __asm { BRAA            X2, X16 }
    }

    v113 = *(v0 + 672);
    v115 = *(v0 + 768);
    v14 = *(v0 + 664);
    v15 = *(v0 + 648);
    *(v0 + 648) = v15 + 1;
    sub_1C442E860(*(v0 + 512) + 40 * v15 + 72, v0 + 16);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    sub_1C4404304();
    v16 = *(v0 + 520);
    v17 = sub_1C4F00978();
    *(v0 + 656) = sub_1C442B738(v17, qword_1EDDFECB8);
    sub_1C442E860(v0 + 16, v0 + 56);
    sub_1C445FFF0(v16, v3, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v18 = sub_1C43FFE3C();
    sub_1C445FFF0(v18, v19, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CF8();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 632);
    v24 = *(v0 + 624);
    if (v22)
    {
      sub_1C43FEC60();
      v16 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v118[0] = v110;
      *v16 = 136315650;
      v111 = v14;
      sub_1C4409678((v0 + 56), *(v0 + 80));
      swift_getDynamicType();
      v25 = sub_1C4F02C58();
      v27 = v26;
      sub_1C440962C((v0 + 56));
      v28 = sub_1C441D828(v25, v27, v118);

      *(v16 + 4) = v28;
      *(v16 + 12) = 2080;
      sub_1C4406D9C();
      sub_1C47C43C0(v29, v30, MEMORY[0x1E6969570]);
      v31 = sub_1C4F02858();
      v33 = v32;
      sub_1C4420C3C(v23, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      v34 = v31;
      v14 = v111;
      v35 = sub_1C441D828(v34, v33, v118);

      *(v16 + 14) = v35;
      *(v16 + 22) = 2080;
      v36 = sub_1C4F02858();
      v38 = v37;
      sub_1C4420C3C(v24, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      v39 = sub_1C441D828(v36, v38, v118);

      *(v16 + 24) = v39;
      _os_log_impl(&dword_1C43F8000, v20, v21, "EventStreamsDataCollection: Fetching data from Data Provider - %s in between %s and %s)", v16, 0x20u);
      v23 = v110;
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v40);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830](v41);
    }

    else
    {

      v20 = &qword_1EC0B84B8;
      sub_1C4420C3C(v24, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      v50 = sub_1C4402120();
      sub_1C4420C3C(v50, v51, &unk_1C4F0D4F0);
      sub_1C440962C((v0 + 56));
    }

    sub_1C4405B64();
    sub_1C43FD720();
    *(v0 + 160) = swift_getAssociatedTypeWitness();
    sub_1C43FFE3C();
    *(v0 + 168) = swift_getAssociatedConformanceWitness();
    sub_1C4422F90((v0 + 136));
    v24(v23, v20, v16);
    if (v115)
    {
      sub_1C47C41F8(v0 + 136);
      goto LABEL_28;
    }

    sub_1C4409678((v0 + 136), *(v0 + 160));
    sub_1C4425B24();
    sub_1C43FBE7C();
    sub_1C4418A44();
    v53(v52);
    sub_1C43FD720();
    *(v0 + 120) = swift_getAssociatedTypeWitness();
    sub_1C43FFE3C();
    *(v0 + 128) = swift_getAssociatedConformanceWitness();
    sub_1C4422F90((v0 + 96));
    sub_1C4404BCC();
    sub_1C4F019A8();

    sub_1C440962C((v0 + 136));
    v54 = v113;
    goto LABEL_38;
  }

  *(v0 + 440) = v2;
  v7 = sub_1C4422F90((v0 + 416));
  (*(*(v2 - 8) + 32))(v7, v1, v2);

  sub_1C44482AC((v0 + 416), (v0 + 448));
  sub_1C456902C(&qword_1EC0BD0A8, &qword_1C4F2C300);
  if (!swift_dynamicCast())
  {
    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    sub_1C4420C3C(v0 + 216, &qword_1EC0BD0B0, &qword_1C4F2C308);
    sub_1C442E860(v0 + 16, v0 + 256);
    v42 = sub_1C4F00968();
    v43 = sub_1C4F01CD8();
    if (os_log_type_enabled(v42, v43))
    {
      sub_1C43FECF0();
      v44 = swift_slowAlloc();
      sub_1C43FEC60();
      v45 = swift_slowAlloc();
      v118[0] = v45;
      *v44 = 136315138;
      sub_1C4409678((v0 + 256), *(v0 + 280));
      swift_getDynamicType();
      v46 = sub_1C4F02C58();
      v48 = v47;
      sub_1C440962C((v0 + 256));
      v49 = sub_1C441D828(v46, v48, v118);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1C43F8000, v42, v43, "EventStreamsDataCollection: Could not convert %s data to SessionData", v44, 0xCu);
      sub_1C440962C(v45);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C440962C((v0 + 256));
    }

    goto LABEL_3;
  }

  v8 = *(v0 + 584);
  sub_1C441D670((v0 + 216), v0 + 176);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);
  sub_1C4409678((v0 + 176), v9);
  (*(v10 + 16))(v9, v10);
  sub_1C4404BCC();
  v11 = sub_1C4EF9C18();
  v12 = *(v8 + 8);
  v13 = sub_1C4402B58();
  v12(v13);
  if (v11)
  {
    (*(*(v0 + 584) + 16))(*(v0 + 608), *(v0 + 520), *(v0 + 576));
  }

  else
  {
    sub_1C4409678((v0 + 176), *(v0 + 200));
    v55 = sub_1C4402B58();
    v56(v55);
  }

  v57 = *(v0 + 616);
  v58 = *(v0 + 520);
  v59 = *(v0 + 200);
  v60 = *(v0 + 208);
  sub_1C4409678((v0 + 176), v59);
  (*(v60 + 24))(v59, v60);
  v61 = *(v57 + 36);
  LOBYTE(v59) = sub_1C4EF9C08();
  v62 = sub_1C4402B58();
  v12(v62);
  if (v59)
  {
    (*(*(v0 + 584) + 16))(*(v0 + 600), v58 + v61, *(v0 + 576));
  }

  else
  {
    sub_1C4409678((v0 + 176), *(v0 + 200));
    v63 = sub_1C4402B58();
    v64(v63);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  sub_1C4409678((v0 + 176), v65);
  swift_getAssociatedTypeWitness();
  sub_1C43FBCE0();
  sub_1C43FBE7C();
  (*(v66 + 32))(v65, v66);
  sub_1C456902C(&qword_1EC0BD0B8, &qword_1C4F2C310);
  if (swift_dynamicCast())
  {
    v116 = v12;
    v67 = *(v0 + 768);
    v68 = *(v0 + 568);
    v69 = *(v0 + 536);
    v70 = *(v0 + 528);
    sub_1C441D670((v0 + 336), v0 + 296);

    sub_1C47C359C((v0 + 296), v70, v69, v68);
    if (v67)
    {
      (v116)(*(v0 + 600), *(v0 + 576));
      v71 = sub_1C4402120();
      v116(v71);
      sub_1C440962C((v0 + 296));
      sub_1C440962C((v0 + 176));
      sub_1C440962C((v0 + 96));
LABEL_28:
      sub_1C4404304();
      sub_1C4413150();

      sub_1C43FBDA0();
      sub_1C4409BA4();

      __asm { BRAA            X1, X16 }
    }

    v89 = *(v0 + 608);
    v90 = *(v0 + 600);
    v91 = *(v0 + 576);
    v92 = *(v0 + 568);
    v93 = *(v0 + 560);
    v94 = *(v0 + 552);
    v114 = *(v0 + 672);
    sub_1C47C4248(v92, v94);
    sub_1C440BAA8(v94, 0, 1, v93);
    v95 = *(v0 + 320);
    v96 = *(v0 + 328);
    sub_1C4409678((v0 + 296), v95);
    v97 = (*(v96 + 8))(v95, v96);
    v98 = sub_1C482FCC4(v97);
    sub_1C47C3A00(v94, v98, v89, v90);

    sub_1C4420C3C(v94, &qword_1EC0BD0A0, &qword_1C4F2C2F8);
    sub_1C47C42AC(v92);
    (v116)(v90, v91);
    v99 = sub_1C4402B58();
    v100 = (v116)(v99);
    v14 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6D8D0](v100);
    }

    sub_1C440962C((v0 + 296));
    v54 = v114 + 1;
  }

  else
  {
    *(v0 + 336) = 0u;
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0;
    sub_1C4420C3C(v0 + 336, &qword_1EC0BD0C0, &qword_1C4F2C318);

    sub_1C442E860(v0 + 176, v0 + 376);
    v74 = sub_1C4F00968();
    v75 = sub_1C4F01CD8();
    v76 = os_log_type_enabled(v74, v75);
    v77 = *(v0 + 608);
    v78 = *(v0 + 600);
    v79 = *(v0 + 576);
    if (v76)
    {
      sub_1C43FECF0();
      v80 = swift_slowAlloc();
      sub_1C43FEC60();
      v109 = swift_slowAlloc();
      v118[0] = v109;
      *v80 = 136315138;
      v82 = *(v0 + 400);
      v81 = *(v0 + 408);
      sub_1C4409678((v0 + 376), v82);
      v112 = v77;
      v117 = v12;
      v83 = *(v81 + 32);
      *(v0 + 504) = swift_getAssociatedTypeWitness();
      sub_1C4422F90((v0 + 480));
      v83(v82, v81);
      sub_1C4409678((v0 + 480), *(v0 + 504));
      swift_getDynamicType();
      sub_1C440962C((v0 + 480));
      sub_1C4F02C58();
      sub_1C440962C((v0 + 376));
      v84 = sub_1C4402120();
      v87 = sub_1C441D828(v84, v85, v86);

      *(v80 + 4) = v87;
      _os_log_impl(&dword_1C43F8000, v74, v75, "EventStreamsDataCollection: Could not convert %s to SupportsEventStreamsDataCollection", v80, 0xCu);
      sub_1C440962C(v109);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();

      v117(v78, v79);
      v117(v112, v79);
    }

    else
    {

      v88 = sub_1C4402B58();
      v12(v88);
      (v12)(v77, v79);
      sub_1C440962C((v0 + 376));
    }

    v54 = *(v0 + 672);
    v14 = *(v0 + 664);
  }

  sub_1C440962C((v0 + 176));
LABEL_38:
  *(v0 + 672) = v54;
  *(v0 + 664) = v14;
  sub_1C442FD50();
  *(v0 + 696) = sub_1C43FD730(255);
  v101 = sub_1C4F01F48();
  *(v0 + 704) = v101;
  sub_1C43FCF7C(v101);
  *(v0 + 712) = v102;
  *(v0 + 720) = sub_1C43FBE7C();
  v103 = sub_1C43FD730(0);
  *(v0 + 728) = v103;
  sub_1C43FCF7C(v103);
  *(v0 + 736) = v104;
  *(v0 + 744) = *(v105 + 64);
  *(v0 + 752) = sub_1C43FBE7C();
  v106 = swift_task_alloc();
  *(v0 + 760) = v106;
  *v106 = v0;
  sub_1C440AA94(v106);
  sub_1C4409BA4();

  return MEMORY[0x1EEE6D8D0](v100);
}

uint64_t sub_1C47C3400()
{
  v1 = v0[94];
  v2 = v0[92];
  v3 = v0[91];
  v4 = sub_1C43FBE7C();
  v5 = *(v2 + 32);
  v5(v4, v1, v3);
  swift_getAssociatedConformanceWitness();
  sub_1C4404BCC();
  if (sub_1C4F028C8())
  {
    (*(v0[92] + 8))(v4, v0[91]);
  }

  else
  {
    v6 = v0[91];
    swift_allocError();
    v5(v7, v4, v6);
  }

  sub_1C440962C(v0 + 12);
  sub_1C4413150();

  sub_1C43FBDA0();

  return v8();
}

void sub_1C47C359C(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for FeatureValue(0);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  v48 = v12;
  v14 = a1[3];
  v13 = a1[4];
  sub_1C4409678(a1, v14);
  v53 = (*(v13 + 8))(v14, v13);
  sub_1C4F00318();
  v15 = type metadata accessor for EventStreamsDataCollection(0);
  v16 = (a4 + v15[5]);
  *v16 = 0;
  v16[1] = 0;
  v17 = a4 + v15[6];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a4 + v15[7];
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v15[8];
  v20 = type metadata accessor for EventStreamsEvent(0);
  sub_1C440BAA8(a4 + v19, 1, 1, v20);
  v49 = v5;
  v50 = a4;
  v21 = a4 + v15[9];
  *v21 = *(v5 + 32);
  *(v21 + 8) = 0;
  *v16 = a2;
  v16[1] = a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AD8();
  sub_1C4406DB4();
  if (!(v24 ^ v25 | v23))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *v17 = v22;
  *(v17 + 8) = 0;
  sub_1C4EF9AD8();
  sub_1C4406DB4();
  if (!(v24 ^ v25 | v23))
  {
    goto LABEL_34;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v26 < 9.22337204e18)
  {
    v27 = 0;
    *v18 = v26;
    *(v18 + 8) = 0;
    v28 = 1 << *(v53 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v53 + 64);
    v31 = (v28 + 63) >> 6;
    while (v30)
    {
      v32 = v27;
LABEL_17:
      v33 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v34 = v33 | (v32 << 6);
      v35 = (*(v53 + 48) + 16 * v34);
      v36 = *v35;
      v37 = v35[1];
      v38 = *(*(v53 + 56) + 8 * v34);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v39 = v38;
      sub_1C47C45B8();
      v40 = sub_1C466324C();

      if (v40)
      {

        if (([v39 isUndefined] & 1) == 0)
        {
          sub_1C46D43EC(*v49, *(v49 + 8), v48);
          if (v52)
          {

            sub_1C47C42AC(v50);
            return;
          }

          swift_setAtWritableKeyPath();
        }

        v27 = v32;
      }

      else
      {
        v51 = v39;
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C44064A8();
          swift_once();
        }

        v41 = sub_1C4F00978();
        sub_1C442B738(v41, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v42 = sub_1C4F00968();
        v43 = sub_1C4F01CD8();

        if (os_log_type_enabled(v42, v43))
        {
          sub_1C43FECF0();
          v44 = swift_slowAlloc();
          sub_1C43FEC60();
          v47 = v42;
          v45 = swift_slowAlloc();
          v54 = v45;
          *v44 = 136315138;
          v46 = sub_1C441D828(v36, v37, &v54);

          *(v44 + 4) = v46;
          _os_log_impl(&dword_1C43F8000, v47, v43, "EventStreamsDataCollection: Event Stream Data Collection Feature does not have keypath defined %s", v44, 0xCu);
          sub_1C440962C(v45);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {
        }

        v27 = v32;
      }
    }

    while (1)
    {
      v32 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v32 >= v31)
      {

        return;
      }

      v30 = *(v53 + 64 + 8 * v32);
      ++v27;
      if (v30)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_36:
  __break(1u);
}

void sub_1C47C3A00(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v70 = a3;
  v71 = a4;
  v72 = a2;
  v5 = sub_1C4EF9CD8();
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v67 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v67 - v14;
  v15 = sub_1C456902C(&qword_1EC0BD0A0, &qword_1C4F2C2F8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v67 - v16;
  v18 = type metadata accessor for EventStreamsDataCollection(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C445FFF0(a1, v17, &qword_1EC0BD0A0, &qword_1C4F2C2F8);
  if (sub_1C44157D4(v17, 1, v18) == 1)
  {
    sub_1C4420C3C(v17, &qword_1EC0BD0A0, &qword_1C4F2C2F8);
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v21 = sub_1C4F00978();
    sub_1C442B738(v21, qword_1EDDFECB8);
    v22 = v73;
    v23 = *(v73 + 16);
    v23(v10, v70, v5);
    v23(v7, v71, v5);
    v24 = v72;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v74[0] = v71;
      *v27 = 136315650;
      v28 = MEMORY[0x1C6940380](v24, MEMORY[0x1E69E6158]);
      LODWORD(v72) = v26;
      v30 = sub_1C441D828(v28, v29, v74);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      sub_1C47C43C0(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v31 = sub_1C4F02858();
      v33 = v32;
      v34 = *(v22 + 8);
      v34(v10, v5);
      v35 = sub_1C441D828(v31, v33, v74);

      *(v27 + 14) = v35;
      *(v27 + 22) = 2080;
      v36 = sub_1C4F02858();
      v38 = v37;
      v34(v7, v5);
      v39 = sub_1C441D828(v36, v38, v74);

      *(v27 + 24) = v39;
      _os_log_impl(&dword_1C43F8000, v25, v72, "EventStreamsDataCollection: Properties %s between %s and %s were not logged to PET2", v27, 0x20u);
      v40 = v71;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v40, -1, -1);
      MEMORY[0x1C6942830](v27, -1, -1);
    }

    else
    {

      v65 = *(v22 + 8);
      v65(v7, v5);
      v65(v10, v5);
    }
  }

  else
  {
    sub_1C47C4308(v17, v20);
    sub_1C4F00518();
    sub_1C4F00508();
    v74[3] = v18;
    v74[4] = sub_1C47C43C0(&qword_1EDDE1098, type metadata accessor for EventStreamsDataCollection, &unk_1C4F2C124);
    v41 = sub_1C4422F90(v74);
    sub_1C47C4248(v20, v41);
    sub_1C4F004F8();

    sub_1C440962C(v74);
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v42 = sub_1C4F00978();
    sub_1C442B738(v42, qword_1EDDFECB8);
    v43 = v73;
    v44 = *(v73 + 16);
    v45 = v68;
    v44(v68, v70, v5);
    v46 = v69;
    v44(v69, v71, v5);
    v47 = v72;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v48 = sub_1C4F00968();
    v49 = sub_1C4F01CC8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v74[0] = v71;
      *v50 = 136315650;
      v51 = MEMORY[0x1C6940380](v47, MEMORY[0x1E69E6158]);
      LODWORD(v72) = v49;
      v53 = sub_1C441D828(v51, v52, v74);

      *(v50 + 4) = v53;
      *(v50 + 12) = 2080;
      sub_1C47C43C0(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v54 = sub_1C4F02858();
      v56 = v55;
      v70 = v20;
      v57 = *(v43 + 8);
      v57(v45, v5);
      v58 = sub_1C441D828(v54, v56, v74);

      *(v50 + 14) = v58;
      *(v50 + 22) = 2080;
      v59 = sub_1C4F02858();
      v61 = v60;
      v57(v46, v5);
      v62 = sub_1C441D828(v59, v61, v74);

      *(v50 + 24) = v62;
      _os_log_impl(&dword_1C43F8000, v48, v72, "EventStreamsDataCollection: Properties %s between %s and %s logged to PET2", v50, 0x20u);
      v63 = v71;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v63, -1, -1);
      MEMORY[0x1C6942830](v50, -1, -1);

      v64 = v70;
    }

    else
    {

      v66 = *(v43 + 8);
      v66(v46, v5);
      v66(v45, v5);
      v64 = v20;
    }

    sub_1C47C42AC(v64);
  }
}

uint64_t sub_1C47C41F8(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1C6942830);
  }

  return result;
}

uint64_t sub_1C47C4248(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventStreamsDataCollection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47C42AC(uint64_t a1)
{
  v2 = type metadata accessor for EventStreamsDataCollection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C47C4308(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventStreamsDataCollection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C47C436C()
{
  result = qword_1EC0BD0C8;
  if (!qword_1EC0BD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD0C8);
  }

  return result;
}

uint64_t sub_1C47C43C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for EventStreamsDataCollectionTask.EventStreamsDataCollectionError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C47C44C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C47C4500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C47C4564()
{
  result = qword_1EC0BD0D0;
  if (!qword_1EC0BD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD0D0);
  }

  return result;
}

uint64_t sub_1C47C45B8()
{
  sub_1C456902C(&qword_1EC0BD0D8, &qword_1C4F2C490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F2C480;
  sub_1C43FBDF0();
  *(v1 + 32) = 0xD000000000000013;
  *(v1 + 40) = v2;
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = 0x7079546D72616C61;
  *(inited + 64) = 0xE900000000000065;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 72) = v3;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = v4;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 96) = v5;
  *(inited + 104) = 0xD00000000000001BLL;
  *(inited + 112) = v6;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 120) = v7;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = v8;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 144) = v9;
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = v10;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 168) = v11;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = v12;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 192) = v13;
  *(inited + 200) = 0xD000000000000014;
  *(inited + 208) = v14;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 216) = v15;
  *(inited + 224) = 0xD000000000000019;
  *(inited + 232) = v16;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 240) = v17;
  *(inited + 248) = 0xD00000000000001FLL;
  *(inited + 256) = v18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 264) = v19;
  *(inited + 272) = 0xD000000000000014;
  *(inited + 280) = v20;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 288) = v21;
  *(inited + 296) = 0xD000000000000027;
  *(inited + 304) = v22;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 312) = v23;
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = v24;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 336) = v25;
  *(inited + 344) = 0xD000000000000011;
  *(inited + 352) = v26;
  *(inited + 360) = swift_getKeyPath();
  *(inited + 368) = 0x6C50656369766564;
  *(inited + 376) = 0xEF6E496465676775;
  *(inited + 384) = swift_getKeyPath();
  strcpy((inited + 392), "deviceUnlocked");
  *(inited + 407) = -18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 408) = v27;
  *(inited + 416) = 0xD000000000000018;
  *(inited + 424) = v28;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 432) = v29;
  *(inited + 440) = 0xD000000000000010;
  *(inited + 448) = v30;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 456) = v31;
  *(inited + 464) = 0xD000000000000016;
  *(inited + 472) = v32;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 480) = v33;
  *(inited + 488) = 0xD000000000000010;
  *(inited + 496) = v34;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 504) = v35;
  *(inited + 512) = 0xD000000000000017;
  *(inited + 520) = v36;
  *(inited + 528) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 536) = 0xD000000000000010;
  *(inited + 544) = v37;
  *(inited + 552) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 560) = 0xD000000000000022;
  *(inited + 568) = v38;
  *(inited + 576) = swift_getKeyPath();
  strcpy((inited + 584), "lowPowerMode");
  *(inited + 597) = 0;
  *(inited + 598) = -5120;
  *(inited + 600) = swift_getKeyPath();
  *(inited + 608) = 0x74536E6F69746F6DLL;
  *(inited + 616) = 0xEF65707954657461;
  *(inited + 624) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 632) = 0xD000000000000015;
  *(inited + 640) = v39;
  *(inited + 648) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 656) = 0xD000000000000014;
  *(inited + 664) = v40;
  *(inited + 672) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 680) = 0xD00000000000001ELL;
  *(inited + 688) = v41;
  *(inited + 696) = swift_getKeyPath();
  *(inited + 704) = 0x6765746143696F70;
  *(inited + 712) = 0xEB0000000079726FLL;
  *(inited + 720) = swift_getKeyPath();
  *(inited + 728) = 0x6B6E6152696F70;
  *(inited + 736) = 0xE700000000000000;
  *(inited + 744) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 752) = 0xD000000000000011;
  *(inited + 760) = v42;
  *(inited + 768) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 776) = 0xD000000000000019;
  *(inited + 784) = v43;
  *(inited + 792) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 800) = 0xD000000000000025;
  *(inited + 808) = v44;
  *(inited + 816) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 824) = 0xD000000000000019;
  *(inited + 832) = v45;
  *(inited + 840) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 848) = 0xD000000000000016;
  *(inited + 856) = v46;
  *(inited + 864) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 872) = 0xD000000000000022;
  *(inited + 880) = v47;
  *(inited + 888) = swift_getKeyPath();
  *(inited + 896) = 0x615074656C6C6177;
  *(inited + 904) = 0xEF656C7974537373;
  *(inited + 912) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(inited + 920) = 0xD000000000000015;
  *(inited + 928) = v48;
  *(inited + 936) = swift_getKeyPath();
  strcpy((inited + 944), "wifiConnected");
  *(inited + 958) = -4864;
  *(inited + 960) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0BD0E0, &qword_1C4F2D008);
  return sub_1C4F00F28();
}

uint64_t sub_1C47C4CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1C47C51BC(a1, &v14 - v11, a6);
  return a7(v12);
}

uint64_t sub_1C47C51BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ExtractedEntity.value.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t ExtractedEntity.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExtractedEntity.metadata.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static ExtractedEntity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v2 != v5)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v7 = sub_1C4F02938();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v5)
  {
LABEL_9:
    if (v3)
    {
      if (v4)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v9 = sub_1C47C7544(v3, v4);

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C47C53E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x73656372756F73 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

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

uint64_t sub_1C47C54F4(char a1)
{
  if (!a1)
  {
    return 0x65756C6176;
  }

  if (a1 == 1)
  {
    return 0x73656372756F73;
  }

  return 0x617461646174656DLL;
}

uint64_t sub_1C47C5568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47C53E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47C5590(uint64_t a1)
{
  v2 = sub_1C47C76F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47C55CC(uint64_t a1)
{
  v2 = sub_1C47C76F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedEntity.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BD0E8, &qword_1C4F2D010);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C47C76F4();
  sub_1C4F02BF8();
  LOBYTE(v17) = 0;
  v10 = v15;
  sub_1C4F02798();
  if (!v10)
  {
    v11 = v13;
    v17 = v14;
    v16 = 1;
    sub_1C47C7748();
    sub_1C43FBF44();
    sub_1C4F027E8();
    v17 = v11;
    v16 = 2;
    sub_1C456902C(&qword_1EC0BD0F8, &qword_1C4F2D018);
    sub_1C47C8D5C(&qword_1EC0BD100, sub_1C47C779C, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1C43FBF44();
    sub_1C4F02778();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t ExtractedEntity.hash(into:)(const void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C4F01298();
  MEMORY[0x1C6941830](v4);
  if (!v3)
  {
    return sub_1C4F02B18();
  }

  sub_1C4F02B18();

  return sub_1C47C8B98(a1, v3);
}

uint64_t ExtractedEntity.hashValue.getter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1C4F02AF8();
  sub_1C4F01298();
  MEMORY[0x1C6941830](v2);
  sub_1C4F02B18();
  if (v1)
  {
    sub_1C47C8B98(v4, v1);
  }

  return sub_1C4F02B68();
}

uint64_t ExtractedEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0BD110, &qword_1C4F2D020);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C47C76F4();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v12) = 0;
  v6 = sub_1C4F02678();
  v8 = v7;
  sub_1C44F02DC();
  sub_1C4F026C8();
  sub_1C456902C(&qword_1EC0BD0F8, &qword_1C4F2D018);
  sub_1C47C8D5C(&qword_1EC0BD118, sub_1C45A3198, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1C4F02658();
  v10 = sub_1C43FD6E4();
  v11(v10);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v12;
  a2[3] = v12;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

uint64_t sub_1C47C5BD4()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  v6 = *(v0 + 1);
  sub_1C4F02AF8();
  ExtractedEntity.hash(into:)(v3);
  return sub_1C4F02B68();
}

uint64_t ExtractedEntity.emails.getter()
{
  v1 = *(v0 + 24);
  if (!v1 || !*(v1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1C445FAA8(0x736C69616D65, 0xE600000000000000);
  v3 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v5 = sub_1C442FD74(v2, *(v1 + 56));
    if (!v6)
    {
      v3 = v5;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v3;
}

uint64_t ExtractedMatch.identifier.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t ExtractedMatch.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ExtractedMatch.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ExtractedMatch(0) + 20);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ExtractedMatch.entityClass.setter()
{
  v2 = *(sub_1C442BAD0() + 20);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v4 = *(v3 + 40);

  return v4(v1 + v2, v0);
}

uint64_t ExtractedMatch.sourceEntity.getter()
{
  v0 = type metadata accessor for ExtractedMatch(0);
  sub_1C4405B94(*(v0 + 24));

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

__n128 ExtractedMatch.sourceEntity.setter()
{
  v3 = (v0 + *(sub_1C4410344() + 24));

  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v1;
  v3[1].n128_u64[1] = v2;
  return result;
}

uint64_t ExtractedMatch.targetEntity.getter()
{
  v0 = type metadata accessor for ExtractedMatch(0);
  sub_1C4405B94(*(v0 + 28));

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

__n128 ExtractedMatch.targetEntity.setter()
{
  v3 = (v0 + *(sub_1C4410344() + 28));

  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v1;
  v3[1].n128_u64[1] = v2;
  return result;
}

uint64_t ExtractedMatch.matchReason.getter()
{
  v1 = *(v0 + *(type metadata accessor for ExtractedMatch(0) + 32));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t ExtractedMatch.matchReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ExtractedMatch(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ExtractedMatch.confidence.setter(float a1)
{
  result = type metadata accessor for ExtractedMatch(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ExtractedMatch.init(identifier:entityClass:sourceEntity:targetEntity:matchReason:confidence:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>, float a9@<S0>)
{
  sub_1C4F00DD8();
  sub_1C43FCDF8();
  v91 = v13;
  v92 = v14;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v88 = v16 - v15;
  v89 = sub_1C4F00DC8();
  sub_1C43FCDF8();
  v97 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v90 = v19 - v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v93 = v22;
  sub_1C4F01188();
  sub_1C43FCDF8();
  v94 = v24;
  v95 = v23;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v96 = v26 - v25;
  v108 = *a4;
  v109 = a4[1];
  v27 = a4[3];
  v28 = *a5;
  v29 = a5[1];
  v30 = a5[3];
  v99 = a4[2];
  v101 = a5[2];
  v31 = type metadata accessor for ExtractedMatch(0);
  v32 = &a8[v31[8]];
  v33 = v31[5];
  v34 = sub_1C4EFD548();
  v35 = *(v34 - 8);
  (*(v35 + 16))(&a8[v33], a3, v34);
  v36 = v28;
  v37 = &a8[v31[6]];
  *v37 = v108;
  *(v37 + 1) = v109;
  *(v37 + 2) = v99;
  *(v37 + 3) = v27;
  v38 = &a8[v31[7]];
  *v38 = v28;
  *(v38 + 1) = v29;
  v39 = a2;
  *(v38 + 2) = v101;
  *(v38 + 3) = v30;
  *v32 = a6;
  *(v32 + 1) = a7;
  v107 = a8;
  *&a8[v31[9]] = a9;
  if (a2)
  {
    result = (*(v35 + 8))(a3, v34);
    v41 = a1;
LABEL_42:
    *v107 = v41;
    v107[1] = v39;
    return result;
  }

  v104 = v34;
  v102 = v35;
  v87 = v29;
  v86 = v36;
  if (v27)
  {
    v42 = v30;
    if (*(v27 + 16))
    {
      v43 = sub_1C4404310();
      v45 = sub_1C445FAA8(v43, v44);
      v46 = MEMORY[0x1E69E7CC0];
      v47 = v97;
      if (v48)
      {
        v49 = sub_1C442FD74(v45, *(v27 + 56));
        if (!v50)
        {
          v46 = v49;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }
    }

    else
    {
      v46 = MEMORY[0x1E69E7CC0];
      v47 = v97;
    }
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
    v47 = v97;
    v42 = v30;
  }

  v51 = *(v46 + 16);

  if (v51)
  {
    if (v27 && *(v27 + 16))
    {
      v52 = sub_1C4404310();
      result = sub_1C445FAA8(v52, v53);
      v54 = MEMORY[0x1E69E7CC0];
      if (v55)
      {
        v56 = sub_1C442FD74(result, *(v27 + 56));
        if (!v50)
        {
          v54 = v56;
        }

        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }
    }

    else
    {
      v54 = MEMORY[0x1E69E7CC0];
    }

    if (!v54[2])
    {
      __break(1u);
      goto LABEL_44;
    }

    v100 = v54[4];
    v57 = v54[5];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    if (!v42)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v100 = 0;
    v57 = 0xE000000000000000;
    if (!v42)
    {
LABEL_28:
      v61 = MEMORY[0x1E69E7CC0];
      goto LABEL_29;
    }
  }

  if (!*(v42 + 16))
  {
    goto LABEL_28;
  }

  v58 = sub_1C4404310();
  v60 = sub_1C445FAA8(v58, v59);
  v61 = MEMORY[0x1E69E7CC0];
  if (v62)
  {
    v63 = sub_1C442FD74(v60, *(v42 + 56));
    if (!v50)
    {
      v61 = v63;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

LABEL_29:
  v64 = *(v61 + 16);

  if (v64)
  {
    if (v42 && *(v42 + 16))
    {
      v65 = sub_1C4404310();
      result = sub_1C445FAA8(v65, v66);
      v67 = MEMORY[0x1E69E7CC0];
      if (v68)
      {
        v69 = sub_1C442FD74(result, *(v42 + 56));
        if (!v50)
        {
          v67 = v69;
        }

        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }
    }

    else
    {
      v67 = MEMORY[0x1E69E7CC0];
    }

    if (v67[2])
    {
      v64 = v67[4];
      v70 = v67[5];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      goto LABEL_40;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v70 = 0xE000000000000000;
LABEL_40:
  sub_1C4F02248();
  v71 = sub_1C4EFD3D8();
  MEMORY[0x1C6940010](v71);

  sub_1C4410C38();
  MEMORY[0x1C6940010](v108, v109);
  sub_1C4410C38();
  MEMORY[0x1C6940010](v100, v57);
  sub_1C4410C38();
  MEMORY[0x1C6940010](v86, v87);
  sub_1C4410C38();
  MEMORY[0x1C6940010](v64, v70);
  sub_1C4410C38();
  sub_1C4F01A98();
  sub_1C4F01178();
  sub_1C4F01148();
  v73 = v72;
  result = (*(v94 + 8))(v96, v95);
  if (v73 >> 60 != 15)
  {

    sub_1C44CD1A8(&qword_1EDDFEAD0, MEMORY[0x1E6966620], MEMORY[0x1E6966618]);
    sub_1C4F00DB8();
    v74 = sub_1C4404B44();
    sub_1C44344B8(v74, v75);
    v76 = sub_1C4404B44();
    sub_1C4498FD8(v76, v77, v88);
    v78 = sub_1C4404B44();
    sub_1C441DFEC(v78, v79);
    sub_1C4F00DA8();
    (*(v92 + 8))(v88, v91);
    (*(v47 + 16))(v90, v93, v89);
    v80 = sub_1C44D5F88(v90);
    v82 = v81;
    v41 = sub_1C4EF9A48();
    v39 = v83;
    sub_1C4434000(v80, v82);
    v84 = sub_1C4404B44();
    sub_1C441DFEC(v84, v85);
    (*(v102 + 8))(a3, v104);
    result = (*(v47 + 8))(v93, v89);
    goto LABEL_42;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1C47C6810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E45656372756F73 && a2 == 0xEC00000079746974;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E45746567726174 && a2 == 0xEC00000079746974;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x616552686374616DLL && a2 == 0xEB000000006E6F73;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C47C6A10(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      v3 = 0x656372756F73;
      goto LABEL_6;
    case 3:
      v3 = 0x746567726174;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E45000000000000;
      break;
    case 4:
      result = 0x616552686374616DLL;
      break;
    case 5:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C47C6AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C47C6B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47C6810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47C6B5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C46170BC();
  *a1 = result;
  return result;
}

uint64_t sub_1C47C6B84(uint64_t a1)
{
  v2 = sub_1C47C8E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47C6BC0(uint64_t a1)
{
  v2 = sub_1C47C8E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExtractedMatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BD120, &qword_1C4F2D028);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C47C8E2C();
  sub_1C4F02BF8();
  LOBYTE(v23) = 0;
  sub_1C43FBF44();
  sub_1C4F02798();
  if (!v2)
  {
    v11 = type metadata accessor for ExtractedMatch(0);
    LOBYTE(v23) = 1;
    sub_1C4EFD548();
    sub_1C44322B4();
    sub_1C44CD1A8(v12, v13, MEMORY[0x1E69A92D0]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v14 = (v3 + *(v11 + 24));
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v23 = *v14;
    v24 = v15;
    v25 = v16;
    v26 = v17;
    v27 = 2;
    sub_1C47C8E80();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBF44();
    sub_1C4F027E8();

    v18 = (v3 + *(v11 + 28));
    v19 = v18[1];
    v21 = v18[2];
    v20 = v18[3];
    v23 = *v18;
    v24 = v19;
    v25 = v21;
    v26 = v20;
    v27 = 3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C43FBF44();
    sub_1C4F027E8();

    if (!v19)
    {
      LOBYTE(v23) = 4;
      sub_1C43FBF44();
      sub_1C4F02738();
      sub_1C443334C(5);
      sub_1C43FBF44();
      sub_1C4F027C8();
    }
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t ExtractedMatch.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v25 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C456902C(&qword_1EC0BD138, &qword_1C4F2D030);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v28 = type metadata accessor for ExtractedMatch(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = (v12 - v11);
  sub_1C4409678(a1, a1[3]);
  sub_1C47C8E2C();
  sub_1C4F02BC8();
  if (v2)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C440BCA8();
    *v13 = sub_1C4F02678();
    v13[1] = v14;
    LOBYTE(v29) = 1;
    sub_1C44322B4();
    sub_1C44CD1A8(v15, v16, MEMORY[0x1E69A92F0]);
    sub_1C440BCA8();
    sub_1C4F026C8();
    (*(v25 + 32))(v13 + v28[5], v8, v27);
    sub_1C47C8ED4();
    sub_1C440BCA8();
    sub_1C4F026C8();
    sub_1C4425B3C(v29);
    sub_1C440BCA8();
    sub_1C4F026C8();
    sub_1C4425B3C(v29);
    sub_1C443334C(4);
    sub_1C440BCA8();
    v17 = sub_1C4F02618();
    v18 = (v13 + v28[8]);
    *v18 = v17;
    v18[1] = v19;
    sub_1C443334C(5);
    sub_1C440BCA8();
    sub_1C4F026A8();
    v21 = v20;
    v22 = sub_1C4400358();
    v23(v22);
    *(v13 + v28[9]) = v21;
    sub_1C47C8F28(v13, a2);
    sub_1C440962C(a1);
    return sub_1C47C8F8C(v13);
  }
}

void sub_1C47C7400()
{
  sub_1C44158A0();
  if (v2 != v3 && (v4 = v2, sub_1C441F954(), v6))
  {
    v25 = v5;
    v7 = 0;
    sub_1C43FD030();
    sub_1C440D3F4();
    while (v1)
    {
      sub_1C43FFB74();
LABEL_12:
      v12 = v8 | (v7 << 6);
      v13 = (*(v4 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v4 + 56) + 8 * v12);
      v17 = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v18 = sub_1C445FAA8(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
LABEL_18:

        goto LABEL_19;
      }

      v21 = *(*(v25 + 56) + 8 * v18);
      if (v21)
      {
        if (!v16)
        {
          goto LABEL_19;
        }

        sub_1C4577DBC();
        v22 = v21;
        v23 = v17;
        v24 = sub_1C4F01EE8();

        if ((v24 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v16)
      {
        goto LABEL_18;
      }
    }

    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v7 >= v0)
      {
        goto LABEL_19;
      }

      ++v9;
      if (*(v4 + 64 + 8 * v7))
      {
        sub_1C43FCF1C();
        v1 = v11 & v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1C4410198();
  }
}

uint64_t sub_1C47C7544(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C445FAA8(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      goto LABEL_31;
    }

    v20 = *(*(a2 + 56) + 8 * v17);
    if (v20)
    {
      if (!v16)
      {
        return 0;
      }

      v21 = *(v20 + 16);
      if (v21 != *(v16 + 16))
      {
LABEL_31:

        return 0;
      }

      if (v21)
      {
        v22 = v20 == v16;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = (v20 + 40);
        v24 = (v16 + 40);
        while (v21)
        {
          result = *(v23 - 1);
          if (result != *(v24 - 1) || *v23 != *v24)
          {
            result = sub_1C4F02938();
            if ((result & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v23 += 2;
          v24 += 2;
          if (!--v21)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_35;
      }

LABEL_29:
    }

    else if (v16)
    {
      goto LABEL_31;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

unint64_t sub_1C47C76F4()
{
  result = qword_1EC0BD0F0;
  if (!qword_1EC0BD0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD0F0);
  }

  return result;
}

unint64_t sub_1C47C7748()
{
  result = qword_1EDDF0768[0];
  if (!qword_1EDDF0768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF0768);
  }

  return result;
}

unint64_t sub_1C47C779C()
{
  result = qword_1EC0BD108;
  if (!qword_1EC0BD108)
  {
    sub_1C4572308(&qword_1EC0B9498, &qword_1C4F0F020);
    sub_1C443CFE8(&qword_1EDDFA578, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD108);
  }

  return result;
}

void sub_1C47C7844()
{
  sub_1C43FBD3C();
  if (v0 != v1 && (v2 = v0, sub_1C441F954(), v3))
  {
    v4 = 0;
    sub_1C43FD030();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v14 = *(*(v2 + 56) + 8 * (v10 | (v4 << 6)));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C457A9B4();
      if ((v15 & 1) == 0)
      {

        goto LABEL_17;
      }

      v16 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = sub_1C47C7958(v16, v14);

      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        goto LABEL_17;
      }

      ++v11;
      if (*(v2 + 64 + 8 * v4))
      {
        sub_1C43FCF1C();
        v7 = v13 & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C47C7958(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(v3 + 56) + 8 * (v9 | (v4 << 6)));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      result = sub_1C457A9F0();
      if ((v13 & 1) == 0 || (v14 = *(*(a2 + 56) + 8 * result), v15 = *(v14 + 16), v15 != *(v12 + 16)))
      {
LABEL_29:

        return 0;
      }

      if (v15 && v14 != v12)
      {
        break;
      }

LABEL_26:

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v17 = (v14 + 40);
    v18 = (v12 + 40);
    while (v15)
    {
      result = *(v17 - 1);
      if (result != *(v18 - 1) || *v17 != *v18)
      {
        result = sub_1C4F02938();
        if ((result & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v17 += 2;
      v18 += 2;
      if (!--v15)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return 1;
      }

      v11 = *(v3 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1C47C7AE0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = a2;
    sub_1C441F954();
    if (v27)
    {
      v9 = 0;
      sub_1C43FD030();
      sub_1C440D3F4();
      while (v6)
      {
        sub_1C43FFB74();
LABEL_12:
        sub_1C440E268();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v13 = sub_1C4404BB0();
        sub_1C445FAA8(v13, v14);
        sub_1C441C9EC();
        if ((v4 & 1) == 0 || (v15 = *(*(v7 + 56) + 8 * *&v3), v4 = *(v15 + 16), v4 != *(v2 + 16)))
        {
LABEL_140:

          return;
        }

        if (!v4 || v15 == v2)
        {
        }

        else
        {
          v50 = v6;
          v51 = v7;
          v16 = 0;
          v52 = v2 + 32;
          v53 = v15 + 32;
          while (2)
          {
            if (v16 == v4)
            {
              goto LABEL_142;
            }

            v17 = v16++;
            v18 = 32 * v17;
            v19 = v53 + 32 * v17;
            v20 = *v19;
            v21 = *(v19 + 8);
            v22 = *(v19 + 16);
            v23 = *(v19 + 24);
            v24 = *(v52 + v18);
            v25 = *(v52 + v18 + 8);
            v3 = *(v52 + v18 + 16);
            v26 = *(v52 + v18 + 24);
            switch(v23)
            {
              case 1:
                if (v26 != 1)
                {
                  goto LABEL_140;
                }

                goto LABEL_66;
              case 2:
                if (v26 != 2)
                {
                  goto LABEL_140;
                }

                goto LABEL_66;
              case 3:
                if (v26 != 3)
                {
                  goto LABEL_140;
                }

                goto LABEL_66;
              case 4:
                if (v26 != 4)
                {
                  goto LABEL_140;
                }

                v27 = v20 == v24 && v21 == v25;
                if (!v27 && (sub_1C4F02938() & 1) == 0 || *&v22 != *&v3)
                {
                  goto LABEL_140;
                }

                goto LABEL_122;
              case 5:
                if (v26 != 5)
                {
                  goto LABEL_140;
                }

                v37 = v20 == v24 && v21 == v25;
                if (!v37 && (sub_1C4F02938() & 1) == 0 || v22 != v3)
                {
                  goto LABEL_140;
                }

                goto LABEL_122;
              case 6:
                if (v26 != 6)
                {
                  goto LABEL_140;
                }

                v38 = v20 == v24 && v21 == v25;
                if (!v38 && (sub_1C4F02938() & 1) == 0 || *&v22 != *&v3)
                {
                  goto LABEL_140;
                }

                goto LABEL_122;
              case 7:
                if (v26 != 7)
                {
                  goto LABEL_140;
                }

                v33 = *(v20 + 16);
                if (v33 != *(v24 + 16))
                {
                  goto LABEL_140;
                }

                if (v33)
                {
                  v34 = v20 == v24;
                }

                else
                {
                  v34 = 1;
                }

                if (v34)
                {
                  goto LABEL_60;
                }

                v45 = (v20 + 32);
                v46 = (v24 + 32);
                do
                {
                  if (!v33)
                  {
                    goto LABEL_144;
                  }

                  if (*v45 != *v46)
                  {
                    goto LABEL_140;
                  }

                  ++v45;
                  ++v46;
                  --v33;
                }

                while (v33);
LABEL_60:
                if (v21 == v25 && *&v22 == *&v3)
                {
                  goto LABEL_122;
                }

LABEL_70:
                if ((sub_1C4F02938() & 1) == 0)
                {
                  goto LABEL_140;
                }

                goto LABEL_122;
              case 8:
                if (v26 != 8)
                {
                  goto LABEL_140;
                }

                v3 = *(v20 + 16);
                if (*&v3 != *(v24 + 16))
                {
                  goto LABEL_140;
                }

                if (v3 == 0.0 || v20 == v24)
                {
                  goto LABEL_122;
                }

                v40 = (v20 + 40);
                v41 = (v24 + 40);
                while (2)
                {
                  if (v3 == 0.0)
                  {
                    goto LABEL_143;
                  }

                  v42 = *(v40 - 1) == *(v41 - 1) && *v40 == *v41;
                  if (v42 || (sub_1C4F02938() & 1) != 0)
                  {
                    v40 += 2;
                    v41 += 2;
                    --*&v3;
                    if (v3 == 0.0)
                    {
                      goto LABEL_122;
                    }

                    continue;
                  }

                  goto LABEL_140;
                }

              case 9:
                v28 = *&v22 | v21;
                if (*&v22 | v21 | v20)
                {
                  if (v20 == 1 && v28 == 0)
                  {
                    v27 = v26 == 9;
                    v44 = *&v3 | v25;
                    v43 = v27 && v24 == 1;
                  }

                  else if (v20 == 2 && v28 == 0)
                  {
                    v27 = v26 == 9;
                    v44 = *&v3 | v25;
                    v43 = v27 && v24 == 2;
                  }

                  else
                  {
                    if (v20 != 3 || v28 != 0)
                    {
                      if (v20 != 4 || v28)
                      {
                        if (v20 != 5 || v28)
                        {
                          if (v26 != 9 || v24 != 6)
                          {
                            goto LABEL_140;
                          }
                        }

                        else if (v26 != 9 || v24 != 5)
                        {
                          goto LABEL_140;
                        }
                      }

                      else if (v26 != 9 || v24 != 4)
                      {
                        goto LABEL_140;
                      }

                      if (*&v3 | v25)
                      {
                        goto LABEL_140;
                      }

                      goto LABEL_122;
                    }

                    v27 = v26 == 9;
                    v44 = *&v3 | v25;
                    v43 = v27 && v24 == 3;
                  }
                }

                else
                {
                  v43 = v26 == 9;
                  v44 = *&v3 | v25 | v24;
                }

                if (!v43 || v44 != 0)
                {
                  goto LABEL_140;
                }

LABEL_122:
                if (v16 != v4)
                {
                  continue;
                }

                v6 = v50;
                v7 = v51;
                break;
              default:
                if (*(v52 + v18 + 24))
                {
                  goto LABEL_140;
                }

LABEL_66:
                if (v20 != v24 || v21 != v25)
                {
                  goto LABEL_70;
                }

                goto LABEL_122;
            }

            break;
          }
        }
      }

      v10 = v9;
      while (1)
      {
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
          return;
        }

        ++v10;
        if (*(a1 + 64 + 8 * v9))
        {
          sub_1C43FCF1C();
          v6 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
    }
  }
}

void sub_1C47C7F00(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6 = a2;
    sub_1C441F954();
    if (v19)
    {
      v8 = 0;
      v9 = a1 + 64;
      sub_1C43FD030();
      sub_1C4410C28();
      v29 = v6;
      v28 = v5;
      if (v10)
      {
        while (1)
        {
          sub_1C440AAD0();
          v30 = v11;
LABEL_11:
          sub_1C440E268();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v15 = sub_1C4404BB0();
          sub_1C445FAA8(v15, v16);
          sub_1C441C9EC();
          if ((v4 & 1) == 0 || (v17 = *(*(v6 + 56) + 8 * v3), v18 = *(v17 + 16), v18 != *(v2 + 16)))
          {
LABEL_38:

            return;
          }

          v19 = !v18 || v17 == v2;
          if (!v19)
          {
            break;
          }

LABEL_18:

          v6 = v29;
          v5 = v28;
          if (!v30)
          {
            goto LABEL_6;
          }
        }

        v20 = (v17 + 56);
        v21 = (v2 + 56);
        while (v18)
        {
          v22 = *(v20 - 2);
          v3 = *(v20 - 1);
          v23 = *v20;
          v24 = *(v21 - 2);
          v4 = *(v21 - 1);
          v25 = *v21;
          if (v22)
          {
            if (!v24)
            {
              goto LABEL_38;
            }

            v26 = *(v20 - 3) == *(v21 - 3) && v22 == v24;
            if (!v26 && (sub_1C4F02938() & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else if (v24)
          {
            goto LABEL_38;
          }

          if (v3 != v4 || v23 != v25)
          {
            sub_1C4404BB0();
            if ((sub_1C4F02938() & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          v20 += 4;
          v21 += 4;
          if (!--v18)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_6:
        v12 = v8;
        while (1)
        {
          v8 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v8 >= v5)
          {
            return;
          }

          ++v12;
          if (*(v9 + 8 * v8))
          {
            sub_1C43FCF1C();
            v30 = v14 & v13;
            goto LABEL_11;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

void sub_1C47C80C0()
{
  sub_1C43FBD3C();
  if (v4 != v5 && (v6 = v5, v7 = v4, sub_1C441F954(), v8))
  {
    v9 = 0;
    sub_1C43FD030();
    sub_1C440D3F4();
    while (v3)
    {
      sub_1C43FFB74();
LABEL_12:
      sub_1C440E268();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = sub_1C4404BB0();
      sub_1C445FAA8(v13, v14);
      sub_1C441C9EC();
      if ((v1 & 1) == 0)
      {

        goto LABEL_17;
      }

      v0 = *(*(v6 + 56) + 8 * v0);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C47E72B4();
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v10 = v9;
    while (1)
    {
      v9 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v9 >= v2)
      {
        goto LABEL_17;
      }

      ++v10;
      if (*(v7 + 64 + 8 * v9))
      {
        sub_1C43FCF1C();
        v3 = v12 & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    sub_1C43FE9F0();
  }
}

void sub_1C47C81C0()
{
  sub_1C44158A0();
  if (v1 != v2 && (sub_1C441F954(), v18))
  {
    v4 = 0;
    v5 = v3 + 64;
    sub_1C43FD030();
    sub_1C4410C28();
    while (v6)
    {
      sub_1C440AAD0();
LABEL_12:
      v10 = v8 | (v4 << 6);
      v11 = (*(v7 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = *(*(v7 + 56) + 16 * v10 + 8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445FAA8(v12, v13);
      v16 = v15;

      if ((v16 & 1) == 0)
      {

        goto LABEL_22;
      }

      sub_1C441EBB8();
      v18 = v18 && v17 == v14;
      if (v18)
      {

        sub_1C441B914();
      }

      else
      {
        v19 = sub_1C4F02938();

        sub_1C441B914();
        if ((v19 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v0)
      {
        goto LABEL_22;
      }

      ++v9;
      if (*(v5 + 8 * v4))
      {
        sub_1C43FCF1C();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1C4410198();
  }
}

void sub_1C47C82FC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C4EF9DD8();
  sub_1C43FCDF8();
  v51 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v50 = v11;
  v12 = sub_1C456902C(&qword_1EC0BD190, &qword_1C4F2D3F8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v47 = v1;
  v48 = v15;
  if (v3 == v1 || *(v3 + 16) != *(v1 + 16))
  {
LABEL_21:
    sub_1C43FE9F0();
  }

  else
  {
    v45 = v9;
    v46 = v14;
    v16 = 0;
    v44 = v3;
    v19 = *(v3 + 64);
    v18 = v3 + 64;
    v17 = v19;
    v20 = 1 << *(v18 - 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v17;
    v23 = (v20 + 63) >> 6;
    while (v22)
    {
      sub_1C440AAD0();
      v49 = v24;
      v26 = v25 | (v16 << 6);
      v27 = v46;
LABEL_13:
      v31 = *(*(v44 + 48) + 8 * v26);
      (*(v51 + 16))(v50, *(v44 + 56) + *(v51 + 72) * v26, v4);
      v32 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
      v33 = *(v32 + 48);
      *v27 = v31;
      (*(v51 + 32))(&v27[v33], v50, v4);
      sub_1C440BAA8(v27, 0, 1, v32);
      v34 = v31;
      v28 = v48;
LABEL_14:
      sub_1C47C9574(v27, v28);
      v35 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
      if (sub_1C44157D4(v28, 1, v35) == 1)
      {
        goto LABEL_21;
      }

      v36 = *v28;
      (*(v51 + 32))(v45, v28 + *(v35 + 48), v4);
      v37 = sub_1C457EB50();
      v39 = v38;

      if ((v39 & 1) == 0)
      {
        (*(v51 + 8))(v45, v4);
        goto LABEL_21;
      }

      (*(v51 + 16))(v50, *(v47 + 56) + *(v51 + 72) * v37, v4);
      sub_1C4413178();
      sub_1C44CD1A8(&qword_1EC0B8598, v40, MEMORY[0x1E6969698]);
      v41 = sub_1C4F010B8();
      v42 = *(v51 + 8);
      v42(v50, v4);
      v42(v45, v4);
      v22 = v49;
      if ((v41 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v27 = v46;
    v28 = v48;
    while (1)
    {
      v29 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v29 >= v23)
      {
        v43 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
        sub_1C440BAA8(v46, 1, 1, v43);
        v49 = 0;
        goto LABEL_14;
      }

      v30 = *(v18 + 8 * v29);
      ++v16;
      if (v30)
      {
        v49 = (v30 - 1) & v30;
        v26 = __clz(__rbit64(v30)) | (v29 << 6);
        v16 = v29;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_1C47C8728()
{
  sub_1C44158A0();
  if (v1 != v2 && (sub_1C441F954(), v16))
  {
    v4 = 0;
    v5 = v3 + 64;
    sub_1C43FD030();
    sub_1C4410C28();
    while (v6)
    {
      sub_1C440AAD0();
LABEL_12:
      v10 = v8 | (v4 << 6);
      v11 = *(*(v7 + 56) + 16 * v10 + 8);
      v12 = *(*(v7 + 48) + 8 * v10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C457EB50();
      v14 = v13;

      if ((v14 & 1) == 0)
      {

        goto LABEL_22;
      }

      sub_1C441EBB8();
      v16 = v16 && v15 == v11;
      if (v16)
      {

        sub_1C441B914();
      }

      else
      {
        v17 = sub_1C4F02938();

        sub_1C441B914();
        if ((v17 & 1) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v0)
      {
        goto LABEL_22;
      }

      ++v9;
      if (*(v5 + 8 * v4))
      {
        sub_1C43FCF1C();
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    sub_1C4410198();
  }
}

uint64_t sub_1C47C8858(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  sub_1C43FD030();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  for (i = 0; v7; v11 ^= result)
  {
    v13 = i;
LABEL_7:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = *(*(a2 + 56) + 8 * (v14 | (v13 << 6)));
    memcpy(__dst, a1, sizeof(__dst));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();

    sub_1C47C89CC(__dst, v15);

    result = sub_1C4F02B68();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1C69417F0](v11);
    }

    v7 = *(v4 + 8 * v13);
    ++i;
    if (v7)
    {
      i = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47C89CC(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  for (i = 0; v6; v9 = result ^ v16)
  {
    v16 = v9;
LABEL_9:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (i << 6)));
    memcpy(__dst, a1, sizeof(__dst));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();

    MEMORY[0x1C69417F0](*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v12 + 40;
      do
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();

        v14 += 16;
        --v13;
      }

      while (v13);
    }

    v6 &= v6 - 1;

    result = sub_1C4F02B68();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1C69417F0](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      v16 = v9;
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47C8B98(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  v11 = 0;
  v16 = a1;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1C69417F0](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v7)) | (v11 << 6)));
        memcpy(__dst, a1, sizeof(__dst));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();

        if (v13)
        {
          v17 = v10;
          sub_1C4F02B18();
          MEMORY[0x1C69417F0](*(v13 + 16));
          v14 = *(v13 + 16);
          if (v14)
          {
            v15 = v13 + 40;
            do
            {
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4F01298();

              v15 += 16;
              --v14;
            }

            while (v14);

            a1 = v16;
          }

          else
          {
          }

          v10 = v17;
        }

        else
        {
          sub_1C4F02B18();
        }

        v7 &= v7 - 1;
        result = sub_1C4F02B68();
        v10 ^= result;
      }

      while (v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47C8D5C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BD0F8, &qword_1C4F2D018);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ExtractedMatch(uint64_t a1)
{
  result = qword_1EC0BD150;
  if (!qword_1EC0BD150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C47C8E2C()
{
  result = qword_1EC0BD128;
  if (!qword_1EC0BD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD128);
  }

  return result;
}

unint64_t sub_1C47C8E80()
{
  result = qword_1EC0BD130;
  if (!qword_1EC0BD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD130);
  }

  return result;
}

unint64_t sub_1C47C8ED4()
{
  result = qword_1EC0BD140;
  if (!qword_1EC0BD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD140);
  }

  return result;
}

uint64_t sub_1C47C8F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedMatch(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47C8F8C(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedMatch(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C47C8FEC()
{
  result = qword_1EC0BD148;
  if (!qword_1EC0BD148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD148);
  }

  return result;
}

void sub_1C47C9078(uint64_t a1)
{
  sub_1C4EFD548();
  if (v1 <= 0x3F)
  {
    sub_1C4700EB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for InferredActivityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ExtractedMatch.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        break;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExtractedEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1C47C9368()
{
  result = qword_1EC0BD160;
  if (!qword_1EC0BD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD160);
  }

  return result;
}

unint64_t sub_1C47C93C0()
{
  result = qword_1EC0BD168;
  if (!qword_1EC0BD168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD168);
  }

  return result;
}

unint64_t sub_1C47C9418()
{
  result = qword_1EC0BD170;
  if (!qword_1EC0BD170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD170);
  }

  return result;
}

unint64_t sub_1C47C9470()
{
  result = qword_1EC0BD178;
  if (!qword_1EC0BD178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD178);
  }

  return result;
}

unint64_t sub_1C47C94C8()
{
  result = qword_1EC0BD180;
  if (!qword_1EC0BD180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD180);
  }

  return result;
}

unint64_t sub_1C47C9520()
{
  result = qword_1EC0BD188;
  if (!qword_1EC0BD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD188);
  }

  return result;
}

uint64_t sub_1C47C9574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD190, &qword_1C4F2D3F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47C95E4(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  sub_1C43FD030();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v10 = 0;
  v11 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      sub_1C43FC2DC();
      memcpy(__dst, a1, sizeof(__dst));
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();

      sub_1C49F063C();

      v10 ^= sub_1C4F02B68();
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1C69417F0](0);
    }

    ++v11;
    if (*(v3 + 8 * v12))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47C9714(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  sub_1C43FD030();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  __src = v9;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  v12 = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  do
  {
    v18 = v11;
LABEL_7:
    v14 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v12 << 6)));
    memcpy(__dst, __src, sizeof(__dst));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();

    v15 = *(v14 + 16);
    MEMORY[0x1C69417F0](v15);
    if (v15)
    {
      v16 = v14 + 32;
      do
      {
        ++v16;
        sub_1C4F01298();

        --v15;
      }

      while (v15);
    }

    v6 &= v6 - 1;

    result = sub_1C4F02B68();
    v11 = result ^ v18;
  }

  while (v6);
LABEL_3:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return MEMORY[0x1C69417F0](v11);
    }

    v6 = *(v3 + 8 * v13);
    ++v12;
    if (v6)
    {
      v18 = v11;
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C47C99E8(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  sub_1C43FD030();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  v10 = 0;
  v15 = v7;
  v16 = v2;
  if (!v5)
  {
    goto LABEL_3;
  }

  do
  {
    v19 = v9;
LABEL_7:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v10 << 6)));
    memcpy(__dst, a1, sizeof(__dst));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();

    MEMORY[0x1C69417F0](*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v12 + 56;
      do
      {
        if (*(v14 - 16))
        {
          sub_1C4F02B18();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F01298();
        }

        else
        {
          sub_1C4F02B18();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        swift_bridgeObjectRelease_n();

        v14 += 32;
        --v13;
      }

      while (v13);
    }

    v5 &= v5 - 1;

    result = sub_1C4F02B68();
    v9 = result ^ v19;
    v7 = v15;
    v2 = v16;
  }

  while (v5);
LABEL_3:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1C69417F0](v9);
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v19 = v9;
      v10 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1C47C9BCC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v39 = v2;
  v41 = sub_1C4EF9DD8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C456902C(&qword_1EC0BD190, &qword_1C4F2D3F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C43FBD08();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v40 = v14;
  v15 = v1 + 64;
  sub_1C43FD030();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v42 = (v4 + 32);
  v36 = v4;
  v37 = v1;
  v38 = (v4 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = 0;
  v22 = 0;
  v35 = v12;
  while (1)
  {
    v43 = v21;
    if (!v18)
    {
      break;
    }

LABEL_8:
    sub_1C43FC2DC();
    v26 = *(*(v37 + 48) + 8 * v25);
    (*(v36 + 16))(v8, *(v37 + 56) + *(v36 + 72) * v25, v41);
    v27 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
    v28 = *(v27 + 48);
    *v35 = v26;
    v12 = v35;
    (*(v36 + 32))(&v35[v28], v8, v41);
    sub_1C440BAA8(v35, 0, 1, v27);
    v29 = v26;
    v23 = v40;
LABEL_9:
    sub_1C47C9574(v12, v23);
    v30 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
    if (sub_1C44157D4(v23, 1, v30) == 1)
    {

      MEMORY[0x1C69417F0](v43);
      sub_1C43FE9F0();
      return;
    }

    v31 = *(v30 + 48);
    v32 = *v23;
    (*v42)(v8, v23 + v31, v41);
    memcpy(v44, v39, sizeof(v44));
    sub_1C4F01138();
    sub_1C4F01298();

    sub_1C4413178();
    sub_1C44CD1A8(&qword_1EC0B8590, v33, MEMORY[0x1E6969690]);
    sub_1C4F00FE8();
    (*v38)(v8, v41);
    v21 = sub_1C4F02B68() ^ v43;
  }

  v23 = v40;
  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v34 = sub_1C456902C(&qword_1EC0BD198, &qword_1C4F2D400);
      sub_1C440BAA8(v12, 1, 1, v34);
      v18 = 0;
      goto LABEL_9;
    }

    v18 = *(v15 + 8 * v24);
    ++v22;
    if (v18)
    {
      v22 = v24;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1C47C9F5C(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  sub_1C43FD030();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = 0;
  for (i = 0; v5; v9 ^= result)
  {
    v11 = i;
LABEL_7:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = *(*(a2 + 48) + 8 * (v12 | (v11 << 6)));
    memcpy(__dst, a1, sizeof(__dst));
    sub_1C4F01138();
    v14 = v13;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F01298();

    sub_1C4F01298();

    result = sub_1C4F02B68();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1C69417F0](v9);
    }

    v5 = *(v2 + 8 * v11);
    ++i;
    if (v5)
    {
      i = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1C47CA0B4()
{
  sub_1C43FBD3C();
  v1 = v0;
  v69 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v6);
  v67 = v59 - v7;
  v71 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  v72 = *(v1 + 16);
  if (!v72)
  {
LABEL_24:
    sub_1C43FE9F0();
    return;
  }

  v14 = v1 + 32;
  v68 = (v3 + 8);
  v70 = (v13 + 8);
  v60 = v13;
  v59[2] = v13 + 16;
  v15 = MEMORY[0x1E69E7CC8];
  v65 = v59 - v12;
  while (1)
  {
    sub_1C442E860(v14, v77);
    sub_1C4409678(v77, v78);
    sub_1C43FBD30();
    sub_1C4EFF7F8();
    sub_1C4409678(v77, v78);
    sub_1C43FBD30();
    v16 = sub_1C4EFF7D8();
    v18 = v17;
    sub_1C440E288();
    v19 = v67;
    sub_1C44322CC();
    sub_1C4EFF7B8();
    sub_1C4EFF888();
    sub_1C47CBF08(&unk_1EDDFCC80, MEMORY[0x1E69A99E8], MEMORY[0x1E69A9A08]);
    v20 = v69;
    v21 = sub_1C4F010B8();
    v22 = *v68;
    v23 = sub_1C43FD024();
    v22(v23);
    v66 = v22;
    (v22)(v19, v20);
    if ((v21 & 1) == 0)
    {
      sub_1C440E288();
      v24 = v62;
      sub_1C44322CC();
      sub_1C4EFF7C8();
      v25 = v61;
      sub_1C4EFEC38();
      sub_1C441961C();
      sub_1C47CBF08(&qword_1EDDFCCB0, v26, MEMORY[0x1E69A9768]);
      v27 = v71;
      LODWORD(v64) = sub_1C4F010B8();
      v28 = v18;
      v29 = *v70;
      (*v70)(v25, v27);
      v63 = v29;
      v29(v24, v27);
      v18 = v28;
      if ((v64 & 1) == 0)
      {
        if (v15[2] && (sub_1C457AB64(), (v42 & 1) != 0) && (sub_1C442B870(v15[7] + 32 * v41, v75), v43 = sub_1C456902C(&qword_1EC0BD1A0, &qword_1C4F2D408), (swift_dynamicCast() & 1) != 0))
        {
          v44 = *&v74[0];
          sub_1C440E288();
          v45 = v59[0];
          sub_1C43FBD30();
          sub_1C4EFF7C8();
          v64 = v79;
          sub_1C4409678(v77, v78);
          v46 = v59[1];
          sub_1C43FBD30();
          sub_1C4EFF7B8();
          v64 = sub_1C4EFF848();
          v66(v46, v69);
          v47 = sub_1C4663244();
          if (v47)
          {
            v48 = v47;
          }

          else
          {
            v48 = MEMORY[0x1E69E7CC8];
          }

          swift_isUniquelyReferenced_nonNull_native();
          v75[0] = v48;
          sub_1C46612A8();
          swift_isUniquelyReferenced_nonNull_native();
          v75[0] = v44;
          sub_1C4661EEC();

          v49 = v71;
          v50 = v63;
          v63(v45, v71);
          v76 = v43;
          v51 = sub_1C4435018();
          sub_1C441713C(v51);
          v50(v44, v49);
        }

        else
        {
          sub_1C440E288();
          v52 = v62;
          sub_1C44322CC();
          sub_1C4EFF7C8();
          v53 = MEMORY[0x1E69E7CC8];
          swift_isUniquelyReferenced_nonNull_native();
          v75[0] = v53;
          sub_1C46612A8();
          v54 = v71;
          v63(v52, v71);
          sub_1C4409678(v77, v78);
          v55 = v67;
          sub_1C4EFF7B8();
          v56 = sub_1C4EFF848();
          v66(v55, v69);
          swift_isUniquelyReferenced_nonNull_native();
          v75[0] = v53;
          sub_1C4661EEC();

          v57 = v75[0];
          v76 = sub_1C456902C(&qword_1EC0BD1A0, &qword_1C4F2D408);
          v75[0] = v57;
          v58 = sub_1C4435018();
          sub_1C441713C(v58);
          v63(v56, v54);
        }

        v15 = v73;
        goto LABEL_23;
      }
    }

    v76 = MEMORY[0x1E69E6158];
    v75[0] = v16;
    v75[1] = v18;
    sub_1C4435018();
    v73 = v15;
    v30 = v65;
    sub_1C457AB64();
    if (__OFADD__(v15[2], (v32 & 1) == 0))
    {
      break;
    }

    v33 = v31;
    v34 = v32;
    sub_1C456902C(&qword_1EC0BA8A8, &qword_1C4F14790);
    if (sub_1C4F02458())
    {
      sub_1C457AB64();
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_27;
      }

      v33 = v35;
    }

    v15 = v73;
    if (v34)
    {
      v37 = (v73[7] + 32 * v33);
      sub_1C440962C(v37);
      sub_1C44482AC(v74, v37);
    }

    else
    {
      v73[(v33 >> 6) + 8] |= 1 << v33;
      (*(v60 + 16))(v15[6] + *(v60 + 72) * v33, v30, v71);
      sub_1C44482AC(v74, (v15[7] + 32 * v33));
      v38 = v15[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v15[2] = v40;
    }

    (*v70)(v30, v71);
LABEL_23:
    sub_1C440962C(v77);
    v14 += 40;
    if (!--v72)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C47CAB88()
{
  sub_1C43FBD3C();
  v1 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v105 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBF38();
  v106 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v102 - v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v102 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v102 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v102 - v20;
  sub_1C47CA0B4();
  sub_1C4EFE338();
  v22 = sub_1C443335C();
  v107 = *(v3 + 8);
  v23 = v107(v21, v1, v22);
  if (!v111)
  {
    sub_1C4423A0C(v110, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_10;
  }

  if ((sub_1C441F964(v23, v24, v25, MEMORY[0x1E69E6158]) & 1) == 0)
  {
LABEL_10:
    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v104 = v1;
  v26 = v108;
  v27 = v109;
  v28 = HIBYTE(v109) & 0xF;
  if ((v109 & 0x2000000000000000) == 0)
  {
    v28 = v108 & 0xFFFFFFFFFFFFLL;
  }

  if (v28)
  {
    sub_1C443D664();
    v30 = v29;
    v32 = *(v29 + 16);
    v31 = *(v29 + 24);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      sub_1C43FCFE8(v31);
      v103 = v90;
      sub_1C443D664();
      v33 = v103;
      v30 = v91;
    }

    *(v30 + 16) = v33;
    v34 = v30 + 16 * v32;
    *(v34 + 32) = v26;
    *(v34 + 40) = v27;
  }

  else
  {

    v30 = MEMORY[0x1E69E7CC0];
  }

  v1 = v104;
LABEL_13:
  sub_1C4EFEE68();
  v35 = sub_1C465C7A0();
  v36 = v18;
  v37 = v107;
  v38 = v107(v36, v1, v35);
  if (v111)
  {
    if (sub_1C441F964(v38, v39, v40, MEMORY[0x1E69E6158]))
    {
      v104 = v1;
      v42 = v108;
      v41 = v109;
      v43 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v43 = v108 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C443D664();
          v30 = v92;
        }

        sub_1C43FD74C();
        if (v45)
        {
          sub_1C43FFD98(v44);
          sub_1C443D664();
          v30 = v93;
        }

        sub_1C442DF2C();
        *(v46 + 32) = v42;
        *(v46 + 40) = v41;
        v1 = v104;
      }

      else
      {

        v1 = v104;
      }

      v37 = v107;
    }
  }

  else
  {
    sub_1C4423A0C(v110, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  sub_1C4EFE328();
  v47 = sub_1C465C7A0();
  v48 = v37(v15, v1, v47);
  if (v111)
  {
    if (sub_1C441F964(v48, v49, v50, MEMORY[0x1E69E6158]))
    {
      v52 = v108;
      v51 = v109;
      v53 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v53 = v108 & 0xFFFFFFFFFFFFLL;
      }

      if (v53)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C443D664();
          v30 = v94;
        }

        sub_1C43FD74C();
        if (v45)
        {
          sub_1C43FFD98(v54);
          sub_1C443D664();
          v30 = v95;
        }

        sub_1C442DF2C();
        *(v55 + 32) = v52;
        *(v55 + 40) = v51;
      }

      else
      {
      }

      v37 = v107;
    }
  }

  else
  {
    sub_1C4423A0C(v110, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  sub_1C4EFE948();
  v56 = sub_1C465C7A0();
  v57 = v37(v0, v1, v56);
  if (v111)
  {
    if (sub_1C441F964(v57, v58, v59, MEMORY[0x1E69E6158]))
    {
      v61 = v108;
      v60 = v109;
      v62 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v62 = v108 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C443D664();
          v30 = v96;
        }

        sub_1C43FD74C();
        if (v45)
        {
          sub_1C43FFD98(v63);
          sub_1C443D664();
          v30 = v97;
        }

        sub_1C442DF2C();
        *(v64 + 32) = v61;
        *(v64 + 40) = v60;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C4423A0C(v110, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  sub_1C4EFE2C8();
  v65 = sub_1C465C7A0();
  v66 = v37(v11, v1, v65);
  if (v111)
  {
    if (sub_1C441F964(v66, v67, v68, MEMORY[0x1E69E6158]))
    {
      v70 = v108;
      v69 = v109;
      v71 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v71 = v108 & 0xFFFFFFFFFFFFLL;
      }

      if (v71)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C443D664();
          v30 = v98;
        }

        sub_1C43FD74C();
        if (v45)
        {
          sub_1C43FFD98(v72);
          sub_1C443D664();
          v30 = v99;
        }

        sub_1C442DF2C();
        *(v73 + 32) = v70;
        *(v73 + 40) = v69;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C4423A0C(v110, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v74 = v106;
  sub_1C4EFE348();
  v75 = sub_1C443335C();
  v76 = v37(v74, v1, v75);
  if (v111)
  {
    if (sub_1C441F964(v76, v77, v78, MEMORY[0x1E69E6158]))
    {
      v80 = v108;
      v79 = v109;
      v81 = HIBYTE(v109) & 0xF;
      if ((v109 & 0x2000000000000000) == 0)
      {
        v81 = v108 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C443D664();
          v30 = v100;
        }

        v83 = *(v30 + 16);
        v82 = *(v30 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_1C43FFD98(v82);
          sub_1C443D664();
          v30 = v101;
        }

        *(v30 + 16) = v83 + 1;
        v84 = v30 + 16 * v83;
        *(v84 + 32) = v80;
        *(v84 + 40) = v79;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C4423A0C(v110, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  if (*(v30 + 16))
  {

    v110[0] = v30;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4F01048();
  }

  else
  {

    v85 = v105;
    sub_1C4EFEBF8();
    sub_1C443335C();

    v86 = (v37)(v85, v1);
    if (v111)
    {
      if (sub_1C441F964(v86, v87, v88, MEMORY[0x1E69E6158]))
      {
        v89 = HIBYTE(v109) & 0xF;
        if ((v109 & 0x2000000000000000) == 0)
        {
          v89 = v108 & 0xFFFFFFFFFFFFLL;
        }

        if (!v89)
        {
        }
      }
    }

    else
    {
      sub_1C4423A0C(v110, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    }
  }

  sub_1C4408A08();
  sub_1C43FE9F0();
}

void sub_1C47CB318()
{
  sub_1C43FBD3C();
  v1 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v85 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v85 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4405BB8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v85 - v16;
  sub_1C47CA0B4();
  v19 = v18;
  sub_1C4EFE2D8();
  v20 = sub_1C465C7A0();
  v92 = *(v3 + 8);
  v94 = v3 + 8;
  v92(v17, v1, v20);
  if (v98)
  {
    v21 = sub_1C456902C(&qword_1EC0BD1A0, &qword_1C4F2D408);
    if (sub_1C441EBCC(v21, v22, v23, v21))
    {
      v89 = v0;
      v90 = v13;
      v85[1] = v19;
      v85[2] = v7;
      v24 = 0;
      v26 = v95 + 64;
      v25 = *(v95 + 64);
      v91 = v95;
      v27 = 1 << *(v95 + 32);
      v28 = -1;
      if (v27 < 64)
      {
        v28 = ~(-1 << v27);
      }

      v29 = v28 & v25;
      v30 = (v27 + 63) >> 6;
      v31 = MEMORY[0x1E69E7CC0];
      v32 = v92;
      v88 = v10;
      v93 = v1;
      v86 = v30;
      while (1)
      {
        if (!v29)
        {
          while (1)
          {
            v34 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v34 >= v30)
            {

              goto LABEL_52;
            }

            v29 = *(v26 + 8 * v34);
            ++v24;
            if (v29)
            {
              v33 = v31;
              v24 = v34;
              goto LABEL_12;
            }
          }

          __break(1u);
LABEL_67:
          sub_1C43FCEC0();
          sub_1C443D664();
          v31 = v83;
LABEL_58:
          v81 = *(v31 + 16);
          v80 = *(v31 + 24);
          if (v81 >= v80 >> 1)
          {
            sub_1C43FFD98(v80);
            sub_1C443D664();
            v31 = v84;
          }

          *(v31 + 16) = v81 + 1;
          v82 = v31 + 16 * v81;
          *(v82 + 32) = v32;
          *(v82 + 40) = v1;
          goto LABEL_63;
        }

        v33 = v31;
LABEL_12:
        v35 = *(*(v91 + 56) + ((v24 << 9) | (8 * __clz(__rbit64(v29)))));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v36 = v89;
        sub_1C4EFE5A8();
        if (!*(v35 + 16))
        {
          break;
        }

        sub_1C457AB64();
        if ((v38 & 1) == 0)
        {
          break;
        }

        v39 = (*(v35 + 56) + 16 * v37);
        v40 = v39[1];
        v87 = *v39;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v32(v36, v93);
        v41 = v87;
        v42 = HIBYTE(v40) & 0xF;
        if ((v40 & 0x2000000000000000) == 0)
        {
          v42 = v87 & 0xFFFFFFFFFFFFLL;
        }

        if (!v42)
        {

          v10 = v88;
          goto LABEL_23;
        }

        v31 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C443D664();
          v31 = v68;
        }

        v44 = *(v31 + 16);
        v43 = *(v31 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1C43FCFE8(v43);
          sub_1C443D664();
          v31 = v69;
        }

        *(v31 + 16) = v44 + 1;
        v45 = v31 + 16 * v44;
        *(v45 + 32) = v41;
        *(v45 + 40) = v40;
        v32 = v92;
        v10 = v88;
LABEL_24:
        v46 = v90;
        sub_1C4EFEDE8();
        if (*(v35 + 16) && (sub_1C457AB64(), (v48 & 1) != 0))
        {
          v49 = (*(v35 + 56) + 16 * v47);
          v50 = *v49;
          v51 = v49[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v1 = v93;
          v32(v46, v93);
          v52 = HIBYTE(v51) & 0xF;
          v87 = v50;
          if ((v51 & 0x2000000000000000) == 0)
          {
            v52 = v50 & 0xFFFFFFFFFFFFLL;
          }

          if (v52)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v30 = v86;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C43FCEC0();
              sub_1C443D664();
              v31 = v70;
            }

            v55 = *(v31 + 16);
            v54 = *(v31 + 24);
            v56 = v55 + 1;
            if (v55 >= v54 >> 1)
            {
              sub_1C43FCFE8(v54);
              v85[0] = v71;
              sub_1C443D664();
              v56 = v85[0];
              v31 = v72;
            }

            *(v31 + 16) = v56;
            v57 = v31 + 16 * v55;
            *(v57 + 32) = v87;
            *(v57 + 40) = v51;
            v32 = v92;
            v10 = v88;
          }

          else
          {

            v10 = v88;
            v30 = v86;
          }
        }

        else
        {
          v1 = v93;
          v32(v46, v93);
        }

        v29 &= v29 - 1;
        sub_1C4EFE8D8();
        if (*(v35 + 16) && (sub_1C457AB64(), (v59 & 1) != 0))
        {
          v87 = v31;
          v60 = (*(v35 + 56) + 16 * v58);
          v62 = *v60;
          v61 = v60[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v32(v10, v1);

          v63 = HIBYTE(v61) & 0xF;
          if ((v61 & 0x2000000000000000) == 0)
          {
            v63 = v62 & 0xFFFFFFFFFFFFLL;
          }

          if (v63)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C43FCEC0();
              sub_1C443D664();
              v87 = v73;
            }

            v65 = *(v87 + 16);
            v64 = *(v87 + 24);
            if (v65 >= v64 >> 1)
            {
              sub_1C43FFD98(v64);
              sub_1C443D664();
              v87 = v74;
            }

            v66 = v87;
            v10 = v88;
            *(v87 + 16) = v65 + 1;
            v67 = v66 + 16 * v65;
            *(v67 + 32) = v62;
            *(v67 + 40) = v61;
            v31 = v66;
            v32 = v92;
            v1 = v93;
          }

          else
          {

            v31 = v87;
            v10 = v88;
            v1 = v93;
          }
        }

        else
        {

          v32(v10, v1);
        }
      }

      v32(v36, v93);
LABEL_23:
      v31 = v33;
      goto LABEL_24;
    }
  }

  else
  {
    sub_1C4423A0C(v97, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

  v31 = MEMORY[0x1E69E7CC0];
LABEL_52:
  sub_1C4EFE378();
  sub_1C465C7A0();

  v75 = sub_1C43FD024();
  v76 = (v92)(v75);
  if (v98)
  {
    if (sub_1C441EBCC(v76, v77, v78, MEMORY[0x1E69E6158]))
    {
      v32 = v95;
      v1 = v96;
      v79 = HIBYTE(v96) & 0xF;
      if ((v96 & 0x2000000000000000) == 0)
      {
        v79 = v95 & 0xFFFFFFFFFFFFLL;
      }

      if (v79)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_58;
      }
    }
  }

  else
  {
    sub_1C4423A0C(v97, &qword_1EC0BCD10, &qword_1C4F0C8C0);
  }

LABEL_63:
  if (*(v31 + 16))
  {
    v97[0] = v31;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4F01048();
  }

  sub_1C4408A08();
  sub_1C43FE9F0();
}

void sub_1C47CB9E0()
{
  sub_1C43FBD3C();
  v48 = v0;
  v55 = v2;
  v56 = v1;
  v4 = v3;
  v52 = sub_1C456902C(&qword_1EC0BD1A8, &unk_1C4F4F460);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v47 - v5;
  v6 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C43FBD08();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v47 - v11;
  v13 = sub_1C4EFEEF8();
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - v18;
  v20 = *(v4 + 16);
  if (v20)
  {
    v53 = v12;
    v50 = v9;
    v21 = v4 + 32;
    v22 = (v17 + 8);
    v47 = (v17 + 32);
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C442E860(v21, v61);
      sub_1C440D404();
      sub_1C43FEF8C();
      sub_1C4EFF7F8();
      sub_1C441961C();
      sub_1C47CBF08(&off_1EDDFCCA8, v24, MEMORY[0x1E69A9770]);
      sub_1C4F01578();
      sub_1C4F01578();
      v25 = v59 == v57 && v60 == v58;
      if (v25)
      {
        v26 = 1;
      }

      else
      {
        v26 = sub_1C4F02938();
      }

      v27 = *v22;
      (*v22)(v19, v13);

      if ((v26 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_1C440F650(v55);
      if (v25)
      {
        goto LABEL_12;
      }

      v54 = v23;
      sub_1C440D404();
      v34 = v53;
      sub_1C43FEF8C();
      sub_1C4EFF7C8();
      sub_1C440BAA8(v34, 0, 1, v13);
      v35 = v51;
      v36 = *(v52 + 48);
      sub_1C47CBF50(v34, v51);
      sub_1C47CBF50(v55, v35 + v36);
      sub_1C440F650(v35);
      if (v37)
      {
        break;
      }

      v38 = v50;
      sub_1C47CBF50(v35, v50);
      sub_1C440F650(v35 + v36);
      if (v39)
      {
        sub_1C4423A0C(v53, &qword_1EC0B9A08, &unk_1C4F107B0);
        v27(v38, v13);
        v23 = v54;
LABEL_25:
        sub_1C4423A0C(v35, &qword_1EC0BD1A8, &unk_1C4F4F460);
        goto LABEL_26;
      }

      v40 = v49;
      (*v47)(v49, v35 + v36, v13);
      sub_1C441961C();
      sub_1C47CBF08(&qword_1EDDFCCB0, v41, MEMORY[0x1E69A9768]);
      v42 = sub_1C4F010B8();
      v27(v40, v13);
      sub_1C4423A0C(v53, &qword_1EC0B9A08, &unk_1C4F107B0);
      v27(v38, v13);
      sub_1C4423A0C(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
      v23 = v54;
      if (v42)
      {
        goto LABEL_12;
      }

LABEL_26:
      sub_1C440962C(v61);
      v21 += 40;
      if (!--v20)
      {
        goto LABEL_31;
      }
    }

    sub_1C4423A0C(v34, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C440F650(v35 + v36);
    v23 = v54;
    if (v25)
    {
      sub_1C4423A0C(v35, &qword_1EC0B9A08, &unk_1C4F107B0);
LABEL_12:
      sub_1C440D404();
      sub_1C43FEF8C();
      v28 = sub_1C4EFF7D8();
      v30 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C443D664();
        v23 = v43;
      }

      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1C43FCFE8(v31);
        sub_1C443D664();
        v23 = v44;
      }

      *(v23 + 16) = v32 + 1;
      v33 = v23 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v23 = MEMORY[0x1E69E7CC0];
LABEL_31:
  v45 = *(v23 + 16);
  if (v45 <= v48 || v45 == 0)
  {
    goto LABEL_39;
  }

  if ((v48 & 0x8000000000000000) == 0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_39:

    sub_1C4408A08();
    sub_1C43FE9F0();
    return;
  }

  __break(1u);
}

uint64_t sub_1C47CBF08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C47CBF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47CBFE4()
{
  v1 = [v0 members];
  sub_1C47CC03C();
  v2 = sub_1C4F01678();

  return v2;
}

unint64_t sub_1C47CC03C()
{
  result = qword_1EDDDBAC0;
  if (!qword_1EDDDBAC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDDBAC0);
  }

  return result;
}

void sub_1C47CC080(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FAFamilyStructs.Person(0);
  v90 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1C43FBCC4();
  v91 = v10 - v9;
  v11 = sub_1C456902C(&qword_1EC0BD1B0, &unk_1C4F72950);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  v15 = type metadata accessor for FAFamilyStructs.GroupRelationshipType(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = sub_1C456902C(&qword_1EC0BD1B8, &unk_1C4F2D460);
  v21 = sub_1C43FBD18(v20);
  MEMORY[0x1EEE9AC00](v21);
  v85 = &v75 - v22;
  v84 = type metadata accessor for FAFamilyStructs.IdentifierRelationshipType(0);
  v23 = sub_1C43FBD18(v84);
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v87 = v25 - v24;
  v26 = type metadata accessor for FAFamilyStructs.GroupOfHumans(0);
  v27 = sub_1C43FBD18(v26);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v89 = v29 - v28;
  v78 = *a1;
  v30 = v4;
  v82 = *(a3 + 8);
  v83 = a3 + 8;
  v31 = v82(a2, a3);
  v32 = sub_1C4428DA0(v31);
  v80 = v14;
  v81 = v19;
  v79 = v15;
  v86 = v4;
  if (v32)
  {
    v33 = v32;
    v34 = sub_1C4411CAC(MEMORY[0x1E69E7CC0]);
    sub_1C44CD9C0(v34, v35, v36);
    if (v33 < 0)
    {
      __break(1u);
      goto LABEL_42;
    }

    v92 = v33;
    v76 = a2;
    v77 = a3;
    v37 = 0;
    v38 = v95;
    v39 = v31 & 0xC000000000000001;
    v40 = v31;
    do
    {
      if (v39)
      {
        v41 = MEMORY[0x1C6940F90](v37, v31);
      }

      else
      {
        v41 = *(v31 + 8 * v37 + 32);
      }

      v42 = v41;
      v43 = sub_1C45B4BF8(v41, &selRef_hashedDSID);
      v45 = v44;

      if (v45)
      {
        v46 = v43;
      }

      else
      {
        v46 = 0;
      }

      if (!v45)
      {
        v45 = 0xE000000000000000;
      }

      v95 = v38;
      v48 = *(v38 + 16);
      v47 = *(v38 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1C44CD9C0(v47 > 1, v48 + 1, 1);
        v38 = v95;
      }

      ++v37;
      *(v38 + 16) = v48 + 1;
      v49 = v38 + 16 * v48;
      *(v49 + 32) = v46;
      *(v49 + 40) = v45;
      v31 = v40;
    }

    while (v92 != v37);

    a2 = v76;
    a3 = v77;
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  v95 = v38;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  v31 = v89;
  if (qword_1EDDF7970 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v50 = type metadata accessor for SourceIdPrefix(0);
    sub_1C442B738(v50, qword_1EDE2D710);
    String.base64EncodedSHA(withPrefix:)();
    v14 = v51;
    v33 = v52;

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v53 = v88;
    sub_1C4D9A148();
    v15 = v53;
    if (v53)
    {

      return;
    }

    v54 = sub_1C4EFEEF8();
    v30 = v87;
    v88 = v54;
    sub_1C440BAA8(v87, 1, 1, v54);
    v4 = v84;
    sub_1C4EFD258();
    v19 = v4[6];
    if (qword_1EDDFED38 != -1)
    {
LABEL_42:
      swift_once();
    }

    v55 = type metadata accessor for Source(0);
    sub_1C442B738(v55, qword_1EDDFD0F0);
    sub_1C4406DC8();
    v77 = v56;
    sub_1C448CC08(v56, v30 + v19, v57);
    sub_1C4EFE558();
    v58 = (v30 + v4[8]);
    sub_1C4EFE658();
    *(v30 + v4[10]) = xmmword_1C4F2D410;
    v92 = v14;
    *v58 = v14;
    v58[1] = v33;
    v59 = v85;
    sub_1C448CC08(v30, v85, type metadata accessor for FAFamilyStructs.IdentifierRelationshipType);
    sub_1C440BAA8(v59, 0, 1, v4);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4D9AA14(v59);
    v60 = v82(a2, a3);
    v61 = sub_1C4428DA0(v60);
    if (!v61)
    {
      break;
    }

    v62 = v61;
    v86 = v33;
    sub_1C4411CAC(MEMORY[0x1E69E7CC0]);
    sub_1C459E028();
    if (v62 < 0)
    {
      __break(1u);
      return;
    }

    v63 = 0;
    v64 = v95;
    v31 = v60 & 0xC000000000000001;
    while (1)
    {
      a3 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      sub_1C4431590(v63, v31 == 0, v60);
      if (v31)
      {
        v65 = MEMORY[0x1C6940F90](v63, v60);
      }

      else
      {
        v65 = *(v60 + 8 * v63 + 32);
      }

      v66 = v65;
      v94 = v65;
      sub_1C47CC83C(&v94, &v93, v91);
      if (v15)
      {

        sub_1C4419634();
        sub_1C47CD188(v89, v67);

        goto LABEL_37;
      }

      v15 = 0;

      v95 = v64;
      a2 = *(v64 + 16);
      if (a2 >= *(v64 + 24) >> 1)
      {
        sub_1C459E028();
        v64 = v95;
      }

      *(v64 + 16) = a2 + 1;
      sub_1C47CD128(v91, v64 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * a2, type metadata accessor for FAFamilyStructs.Person);
      ++v63;
      if (a3 == v62)
      {

        v31 = v89;
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v64 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v68 = v81;
  sub_1C440BAA8(v81, 1, 1, v88);
  v69 = v79;
  sub_1C4EFD188();
  sub_1C4406DC8();
  sub_1C448CC08(v77, v68 + v70, v71);
  *(v68 + *(v69 + 28)) = v64;
  sub_1C4D9FBE8();
  v72 = v80;
  sub_1C448CC08(v68, v80, type metadata accessor for FAFamilyStructs.GroupRelationshipType);
  sub_1C440BAA8(v72, 0, 1, v69);
  sub_1C4D9B4D8(v72);
  LOBYTE(v95) = v78;
  sub_1C4D9B5E4();
  if (v15)
  {

    sub_1C4419634();
    sub_1C47CD188(v31, v73);
    sub_1C441F984();
LABEL_37:
    sub_1C442C9F4();
  }

  else
  {

    sub_1C4419634();
    sub_1C47CD188(v31, v74);
    sub_1C441F984();
    sub_1C442C9F4();
  }
}

void sub_1C47CC83C(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v116 = a3;
  v117 = a2;
  v5 = type metadata accessor for FAFamilyStructs.AddressRelationshipType(0);
  v118 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v109 - v12;
  v14 = type metadata accessor for FAFamilyStructs.Person(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_1C4F01968();
  if (v3)
  {
    *v117 = v3;
    return;
  }

  v113 = v14;
  v114 = v5;
  v111 = v10;
  v112 = v13;
  v115 = v16;
  v121 = 0;
  v122 = 0xE000000000000000;
  v18 = sub_1C45B4BF8(v17, &selRef_fullName);
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v18, v20);

  MEMORY[0x1C6940010](124, 0xE100000000000000);
  v21 = sub_1C45B4BF8(v17, &selRef_appleID);
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v21, v23);

  MEMORY[0x1C6940010](124, 0xE100000000000000);
  v24 = sub_1C45B4BF8(v17, &selRef_memberTypeString);
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v24, v26);

  if (qword_1EDDE9348 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v27, qword_1EDE2D080);
  String.base64EncodedSHA(withPrefix:)();
  v29 = v28;
  v31 = v30;

  v32 = v115;
  sub_1C4D9AB20(v29, v31, v33, v34, v35, v36, v37, v38, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
  v39 = v114;
  v117 = 0;
  v40 = sub_1C45B4BF8(v17, &selRef_firstName);
  v42 = v41;
  v43 = v113;
  v44 = (v32 + v113[9]);

  *v44 = v40;
  v44[1] = v42;
  v45 = sub_1C45B4BF8(v17, &selRef_lastName);
  v47 = v46;
  v48 = (v32 + v43[11]);

  *v48 = v45;
  v48[1] = v47;
  v49 = sub_1C45B4BF8(v17, &selRef_fullName);
  v51 = v50;
  v52 = (v32 + v43[13]);

  *v52 = v49;
  v52[1] = v51;
  v53 = v32;
  v54 = v43;
  if ([v17 isMe])
  {
    v55 = [v17 isMe];
    if (v55)
    {
      v56 = 1702195828;
    }

    else
    {
      v56 = 0x65736C6166;
    }

    if (v55)
    {
      v57 = 0xE400000000000000;
    }

    else
    {
      v57 = 0xE500000000000000;
    }

    v58 = (v53 + v43[19]);

    *v58 = v56;
    v58[1] = v57;
  }

  v121 = [v17 age];
  v59 = sub_1C4F02858();
  v61 = v60;
  v62 = (v53 + v43[15]);

  *v62 = v59;
  v62[1] = v61;
  v63 = sub_1C45B4BF8(v17, &selRef_appleID);
  v65 = v64;
  v66 = (v53 + v43[21]);

  *v66 = v63;
  v66[1] = v65;
  v67 = sub_1C45B4BF8(v17, &selRef_memberTypeString);
  v69 = v68;
  v70 = (v53 + v43[17]);

  *v70 = v67;
  v70[1] = v69;
  v71 = MEMORY[0x1E69E7CC0];
  v123 = MEMORY[0x1E69E7CC0];
  v72 = sub_1C45B4BF8(v17, &selRef_inviteEmail);
  if (v73)
  {
    v74 = v72;
    v75 = v73;
    v76 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
    v110 = v74;
    v77 = sub_1C4F01108();
    v78 = [v76 typeOfHandleString_];

    if (v78 == 1)
    {
      v79 = sub_1C4EFEEF8();
      v80 = v112;
      sub_1C440BAA8(v112, 1, 1, v79);
      sub_1C4EFD1D8();
      v81 = v39[6];
      v82 = v116;
      if (qword_1EDDFED38 != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for Source(0);
      v84 = sub_1C442B738(v83, qword_1EDDFD0F0);
      sub_1C448CC08(v84, v80 + v81, type metadata accessor for Source);
      sub_1C4EFE518();
      v85 = (v80 + v39[8]);
      sub_1C4EFE478();
      v86 = (v80 + v39[10]);
      *v86 = 0;
      v86[1] = 0;
      v87 = v111;
      *v85 = v110;
      v85[1] = v75;
      sub_1C448CC08(v80, v87, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
      sub_1C458D4BC(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v89 = v88;
      v91 = *(v88 + 16);
      v90 = *(v88 + 24);
      if (v91 >= v90 >> 1)
      {
        sub_1C458D4BC(v90 > 1, v91 + 1, 1, v88);
        v89 = v108;
      }

      *(v89 + 16) = v91 + 1;
      sub_1C47CD128(v111, v89 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v91, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
      v123 = v89;
      sub_1C47CD188(v112, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
      v53 = v115;
      goto LABEL_33;
    }

    v89 = MEMORY[0x1E69E7CC0];
    v53 = v115;
  }

  else
  {
    v89 = v71;
  }

  v82 = v116;
LABEL_33:
  v92 = sub_1C45B4BF8(v17, &selRef_memberPhoneNumbers);
  if (v93)
  {
    v121 = v92;
    v122 = v93;
    v119 = 44;
    v120 = 0xE100000000000000;
    sub_1C4415EA8();
    v94 = sub_1C4F01FC8();

    v95 = *(v94 + 16);
    if (v95)
    {
      v121 = MEMORY[0x1E69E7CC0];
      sub_1C459E080();
      v96 = v121;
      v97 = sub_1C4EFEEF8();
      v112 = v94;
      v98 = (v94 + 40);
      do
      {
        v100 = *(v98 - 1);
        v99 = *v98;
        sub_1C440BAA8(v7, 1, 1, v97);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFD1D8();
        v101 = v39[6];
        if (qword_1EDDFED38 != -1)
        {
          swift_once();
        }

        v102 = type metadata accessor for Source(0);
        v103 = sub_1C442B738(v102, qword_1EDDFD0F0);
        sub_1C448CC08(v103, &v7[v101], type metadata accessor for Source);
        sub_1C4EFE518();
        v104 = &v7[v39[8]];
        *v104 = 0;
        *(v104 + 1) = 0;
        sub_1C4EFE478();
        v105 = &v7[v39[10]];
        *v105 = v100;
        *(v105 + 1) = v99;
        v121 = v96;
        v106 = *(v96 + 16);
        if (v106 >= *(v96 + 24) >> 1)
        {
          sub_1C459E080();
          v96 = v121;
        }

        *(v96 + 16) = v106 + 1;
        sub_1C47CD128(v7, v96 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v106, type metadata accessor for FAFamilyStructs.AddressRelationshipType);
        v98 += 2;
        --v95;
      }

      while (v95);

      v82 = v116;
      v53 = v115;
      v54 = v113;
    }

    else
    {

      v96 = MEMORY[0x1E69E7CC0];
      v82 = v116;
    }

    sub_1C49D44F0(v96);
    v89 = v123;
  }

  v107 = *(v54 + 88);

  *(v53 + v107) = v89;
  sub_1C4D9D3E8();
  sub_1C448CC08(v53, v82, type metadata accessor for FAFamilyStructs.Person);
  sub_1C47CD188(v53, type metadata accessor for FAFamilyStructs.Person);
}

uint64_t sub_1C47CD128(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C47CD188(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for FAFamilySourceIngestor(uint64_t a1)
{
  result = qword_1EDDE2F20;
  if (!qword_1EDDE2F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C47CD254(uint64_t a1)
{
  result = type metadata accessor for PhaseStores(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Source(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C47CD300()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E699C070]) init];
  *(v0 + 256) = v1;
  [v1 setCachePolicy_];
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_1C47CD458;
  v2 = swift_continuation_init();
  *(v0 + 136) = sub_1C456902C(&qword_1EC0BD1C0, &qword_1C4F2D518);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C47CDA90;
  *(v0 + 104) = &unk_1F43EC0A8;
  *(v0 + 112) = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C47CD458()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1C47CD6C4;
  }

  else
  {
    v2 = sub_1C47CD568;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C47CD568()
{
  v1 = *(v0 + 240);
  *(v0 + 208) = sub_1C4461BB8(0, &unk_1EDDDBAC8, 0x1E699C050);
  *(v0 + 216) = &off_1F43EC038;
  *(v0 + 184) = v1;
  sub_1C47CE008(v0 + 184, v0 + 144);
  *(v0 + 80) = 0;
  v2 = *(v0 + 248);
  type metadata accessor for PhaseStores(0);
  v3 = swift_task_alloc();
  v3[2] = v0 + 224;
  v3[3] = v0 + 144;
  v3[4] = v2;
  v3[5] = v0 + 232;
  v3[6] = v0 + 80;
  sub_1C441964C();
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);

  if (!v2)
  {
    sub_1C4EF9AE8();
    sub_1C4644E1C();
  }

  sub_1C47CDFA0(v0 + 144);
  sub_1C47CD828(v4, (v0 + 232), (v0 + 224));

  sub_1C43FBDA0();

  return v6();
}

uint64_t sub_1C47CD6C4(uint64_t a1)
{
  v11 = v1;
  v2 = *(v1 + 264);
  v3 = *(v1 + 248);
  swift_willThrow();
  v10[0] = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v2, 0x796C696D61464146, 0xE800000000000000, v3, v10);

  *(v1 + 80) = 0;
  v4 = *(v1 + 248);
  type metadata accessor for PhaseStores(0);
  v5 = swift_task_alloc();
  v5[2] = v1 + 224;
  v5[3] = v1 + 144;
  v5[4] = v4;
  v5[5] = v1 + 232;
  v5[6] = v1 + 80;
  sub_1C441964C();
  v6 = *(v1 + 256);
  v7 = *(v1 + 248);

  if (!v4)
  {
    sub_1C4EF9AE8();
    sub_1C4644E1C();
  }

  sub_1C47CDFA0(v1 + 144);
  sub_1C47CD828(v7, (v1 + 232), (v1 + 224));

  sub_1C43FBDA0();

  return v8();
}

uint64_t sub_1C47CD828(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4430B24(a1, v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v9);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v11 = sub_1C4F01108();

  *(inited + 48) = v11;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}
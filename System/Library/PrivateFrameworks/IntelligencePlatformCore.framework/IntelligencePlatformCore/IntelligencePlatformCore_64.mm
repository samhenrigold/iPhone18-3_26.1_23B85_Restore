uint64_t sub_1C4A1AC9C(void *a1, void *a2, void *a3)
{
  sub_1C44BBE8C(v3 + *a1);
  sub_1C44BBE8C(v3 + *a2);
  sub_1C44BBE8C(v3 + *a3);
  return v3;
}

void sub_1C4A1AD4C()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for LongitudinalEventData.SemanticLocation(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.SemanticLocation._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C4416740(v2);
  }

  sub_1C440F77C();
  sub_1C4A231B8();
  sub_1C44512DC();
}

uint64_t sub_1C4A1AE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1AEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1AFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1B09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  sub_1C448E07C();
  result = v10();
  if (!v7)
  {
    v12 = sub_1C44159B4();
    a6(v12);
    v13 = sub_1C44159B4();
    return a7(v13);
  }

  return result;
}

uint64_t sub_1C4A1B104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData16SemanticLocationP33_CF26A39E376EFD107920388298DF68A613_StorageClass__placeType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1B2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData16SemanticLocationP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userSpecificPlaceType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1B4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData16SemanticLocationP33_CF26A39E376EFD107920388298DF68A613_StorageClass__loiIdentifier;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1B7B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18E8, type metadata accessor for LongitudinalEventData.SemanticLocation, &unk_1C4F43458);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1B850(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1598, type metadata accessor for LongitudinalEventData.SemanticLocation, &unk_1C4F43490);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1B918(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1598, type metadata accessor for LongitudinalEventData.SemanticLocation, &unk_1C4F43490);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1B9DC()
{
  result = MEMORY[0x1C6940010](0xD000000000000014, 0x80000001C4F9B050);
  qword_1EC152850 = 0xD000000000000016;
  *algn_1EC152858 = 0x80000001C4FACCB0;
  return result;
}

uint64_t sub_1C4A1BA50()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152860);
  sub_1C442B738(v0, qword_1EC152860);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
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
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "entityIdentifiers";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "entityRelationshipTypes";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A1BC94()
{
  type metadata accessor for LongitudinalEventData.VirtualInteractions._StorageClass(0);
  swift_allocObject();
  result = sub_1C47BC0B4();
  qword_1EC0C1050 = result;
  return result;
}

void sub_1C4A1BD44()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.VirtualInteractions._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C4416740(v2);
  }

  v3 = sub_1C440F77C();
  sub_1C4A1EBD4(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_1C44512DC();
}

uint64_t sub_1C4A1BE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1BEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1BFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1C0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

void sub_1C4A1C18C()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for LongitudinalEventData.VirtualInteractions(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  sub_1C4A1F0BC();
  if (!v0)
  {
    sub_1C43FE99C();
    sub_1C4F00308();
  }
}

uint64_t sub_1C4A1C228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData19VirtualInteractionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__virtualInteractionType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData19VirtualInteractionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__numParticipants;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1C5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData19VirtualInteractionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__entityIdentifiers;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1C7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData19VirtualInteractionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__entityRelationshipTypes;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1CB34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18F0, type metadata accessor for LongitudinalEventData.VirtualInteractions, &unk_1C4F432F0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1CBD4(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1578, type metadata accessor for LongitudinalEventData.VirtualInteractions, &unk_1C4F43328);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1CC9C(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1578, type metadata accessor for LongitudinalEventData.VirtualInteractions, &unk_1C4F43328);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1CD1C()
{
  result = MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4F9B0A0);
  qword_1EC152878 = 0xD000000000000016;
  unk_1EC152880 = 0x80000001C4FACCB0;
  return result;
}

uint64_t sub_1C4A1CD90()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152888);
  sub_1C442B738(v0, qword_1EC152888);
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

uint64_t sub_1C4A1D008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C18F8, type metadata accessor for LongitudinalEventData.NowPlayingState, &unk_1C4F43188);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1D0A8(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1558, type metadata accessor for LongitudinalEventData.NowPlayingState, &unk_1C4F431C0);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1D170(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1558, type metadata accessor for LongitudinalEventData.NowPlayingState, &unk_1C4F431C0);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1D24C()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1528B0);
  sub_1C442B738(v0, qword_1EC1528B0);
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

uint64_t sub_1C4A1D48C()
{
  type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
  swift_allocObject();
  result = sub_1C47BC0B4();
  qword_1EC0C1058 = result;
  return result;
}

void sub_1C4A1D4F0()
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
  sub_1C44885C4();
  sub_1C440EF9C();
  sub_1C4460108(v45, v46, v47, v48);
  sub_1C4403138(v0 + v24, v65);
  sub_1C440EF9C();
  sub_1C44408D4(v49, v50, v51, v52);
  swift_endAccess();
  sub_1C440D164(v10 + *v63, v65);
  sub_1C44885C4();
  sub_1C440EF9C();
  sub_1C4460108(v53, v54, v55, v56);

  sub_1C4403138(v0 + v28, &v64);
  sub_1C440EF9C();
  sub_1C44408D4(v57, v58, v59, v60);
  swift_endAccess();
  sub_1C43FE9F0();
}

void sub_1C4A1D758()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for LongitudinalEventData.AmbientLight(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.AmbientLight._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C4416740(v2);
  }

  v3 = sub_1C440F77C();
  sub_1C4A1EBD4(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_1C44512DC();
}

uint64_t sub_1C4A1D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1D90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1DAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

void sub_1C4A1DBA0()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for LongitudinalEventData.AmbientLight(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  sub_1C4A1F0BC();
  if (!v0)
  {
    sub_1C43FE99C();
    sub_1C4F00308();
  }
}

uint64_t sub_1C4A1DC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData12AmbientLightP33_CF26A39E376EFD107920388298DF68A613_StorageClass__colorComponentX;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1DE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData12AmbientLightP33_CF26A39E376EFD107920388298DF68A613_StorageClass__colorComponentY;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1E00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData12AmbientLightP33_CF26A39E376EFD107920388298DF68A613_StorageClass__colorComponentZ;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1E1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData12AmbientLightP33_CF26A39E376EFD107920388298DF68A613_StorageClass__ambientLightType;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1E548(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1900, type metadata accessor for LongitudinalEventData.AmbientLight, &unk_1C4F43020);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A1E5E8(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1538, type metadata accessor for LongitudinalEventData.AmbientLight, &unk_1C4F43058);

  return sub_1C4F00428();
}

uint64_t sub_1C4A1E6B0(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1538, type metadata accessor for LongitudinalEventData.AmbientLight, &unk_1C4F43058);

  return sub_1C4F00438();
}

uint64_t sub_1C4A1E758()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1528D8);
  sub_1C442B738(v0, qword_1EC1528D8);
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

uint64_t sub_1C4A1E99C()
{
  type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
  swift_allocObject();
  result = sub_1C47BC0B4();
  qword_1EC0C1060 = result;
  return result;
}

void sub_1C4A1EA4C()
{
  sub_1C44051C4();
  sub_1C4A0B594(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_1C4462824();
    swift_updateClassMetadata2();
  }
}

void sub_1C4A1EAFC()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for LongitudinalEventData.Calendar(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.Calendar._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C441455C();
    sub_1C4A1D4F0();
    sub_1C4416740(v2);
  }

  v3 = sub_1C440F77C();
  sub_1C4A1EBD4(v3, v4, v5, v6, v7, v8, v9, v10);
  sub_1C44512DC();
}

uint64_t sub_1C4A1EBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t), void (*a7)(uint64_t), void (*a8)(uint64_t))
{
  while (1)
  {
    sub_1C43FD018();
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

uint64_t sub_1C4A1ECB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1ED8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1EE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A1EF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

void sub_1C4A1F020()
{
  v1 = sub_1C4416088();
  v2 = type metadata accessor for LongitudinalEventData.Calendar(v1);
  sub_1C442F668(v2);
  sub_1C43FEE74();
  sub_1C4A1F0BC();
  if (!v0)
  {
    sub_1C43FE99C();
    sub_1C4F00308();
  }
}

void sub_1C4A1F0BC()
{
  sub_1C441800C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1C448E07C();
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

uint64_t sub_1C4A1F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData8CalendarP33_CF26A39E376EFD107920388298DF68A613_StorageClass__calendarContainsTitleWork;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData8CalendarP33_CF26A39E376EFD107920388298DF68A613_StorageClass__isAffectingAvailability;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData8CalendarP33_CF26A39E376EFD107920388298DF68A613_StorageClass__supportsLocationDirectorySearches;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A1F6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData8CalendarP33_CF26A39E376EFD107920388298DF68A613_StorageClass__numAttendees;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

void sub_1C4A1F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v20;
  a20 = v21;
  v102[1] = v22;
  v102[4] = v23;
  v106 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v111 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v109 = v32;
  v33 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  v39 = v102 - v38;
  v40 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v41 = sub_1C43FBD18(v40);
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v102 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = v102 - v51;
  v53 = *v26;
  sub_1C440D164(v30 + *v26, v120);
  sub_1C4449408(v30 + v53, v52);
  v54 = *v26;
  sub_1C440D164(v28 + *v26, &v118);
  v108 = v33;
  v55 = *(v33 + 48);
  sub_1C4449408(v52, v39);
  v56 = v28 + v54;
  v57 = v28;
  v58 = v111;
  sub_1C4460108(v56, &v39[v55], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v39, 1, v58);
  if (v60)
  {

    sub_1C4420C3C(v52, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(&v39[v55], 1, v58);
    v59 = v30;
    if (v60)
    {
      sub_1C4420C3C(v39, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_11;
    }

LABEL_9:
    v61 = v39;
LABEL_30:
    sub_1C4420C3C(v61, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_31;
  }

  sub_1C4460108(v39, v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(&v39[v55], 1, v58);
  if (v60)
  {

    sub_1C4420C3C(v52, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_9;
  }

  v62 = v109;
  sub_1C4A26040();

  v63 = sub_1C47E3504(v49, v62);
  sub_1C4A25FEC();
  sub_1C4420C3C(v52, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4404C28();
  sub_1C4A25FEC();
  v59 = v30;
  sub_1C4420C3C(v39, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v64 = v106;
  v65 = *v106;
  sub_1C440D164(*v106 + v59, &v117);
  v66 = v110;
  sub_1C4401DB4(v65 + v59, v110);
  v67 = *v64;
  sub_1C440D164(*v64 + v57, &v116);
  v68 = v108;
  v69 = *(v108 + 48);
  sub_1C44A1EE8(v66, &a10);
  sub_1C4401DB4(v67 + v57, v69 + v64);
  v70 = sub_1C4401860();
  sub_1C440175C(v70, v71, v58);
  if (v60)
  {
    sub_1C4420C3C(v66, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440582C(v69 + v64);
    v72 = v107;
    if (v60)
    {
      sub_1C4420C3C(v64, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1C4460108(v64, v105, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440582C(v69 + v64);
  v72 = v107;
  if (v73)
  {
    sub_1C4420C3C(v110, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
LABEL_19:
    v61 = v64;
    goto LABEL_30;
  }

  v58 = v64;
  sub_1C4455410();
  sub_1C4A26040();
  v74 = sub_1C4404084();
  v76 = sub_1C47E3504(v74, v75);
  sub_1C43FD024();
  sub_1C4A25FEC();
  v69 = &qword_1EC0BB6C8;
  sub_1C4420C3C(v110, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4404C28();
  sub_1C4A25FEC();
  v77 = sub_1C43FE99C();
  sub_1C4420C3C(v77, v78, &unk_1C4F2E1B0);
  if ((v76 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v79 = sub_1C4458784(v120);
  sub_1C440D164(v79, &v115);
  sub_1C4401DB4(v69 + v59, v72);
  v80 = *v58;
  sub_1C440D164(v80 + v57, &v114);
  v81 = *(v68 + 48);
  v82 = v103;
  sub_1C4401DB4(v72, v103);
  sub_1C4401DB4(v80 + v57, v81 + v82);
  sub_1C440175C(v82, 1, v111);
  if (!v60)
  {
    sub_1C4460108(v82, v102[3], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440582C(v81 + v82);
    v83 = v104;
    if (!v84)
    {
      v85 = v82;
      sub_1C4455410();
      sub_1C4A26040();
      v86 = sub_1C4404084();
      v88 = sub_1C47E3504(v86, v87);
      sub_1C43FD024();
      sub_1C4A25FEC();
      v81 = &qword_1EC0BB6C8;
      v89 = sub_1C43FE99C();
      v80 = v90;
      sub_1C4420C3C(v89, v91, v90);
      sub_1C4404C28();
      sub_1C4A25FEC();
      sub_1C44BBE8C(v85);
      if (v88)
      {
        goto LABEL_34;
      }

LABEL_31:

      goto LABEL_32;
    }

    sub_1C4420C3C(v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_29;
  }

  sub_1C4420C3C(v72, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440582C(v81 + v82);
  v83 = v104;
  if (!v60)
  {
LABEL_29:
    v61 = v82;
    goto LABEL_30;
  }

  sub_1C4420C3C(v82, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_34:
  v92 = sub_1C4458784(&v118);
  sub_1C440D164(v92, &v113);
  sub_1C4401DB4(v81 + v59, v83);
  v93 = *v80;
  sub_1C440D164(v57 + v93, &v112);
  v94 = *(v68 + 48);
  sub_1C44A1EE8(v83, &v119);
  sub_1C4401DB4(v57 + v93, v83 + v94);
  v95 = sub_1C4401860();
  sub_1C440175C(v95, v96, v111);
  if (!v60)
  {
    sub_1C4460108(v83, v102[0], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440582C(v83 + v94);
    if (!v97)
    {
      sub_1C4A26040();
      v98 = sub_1C440BB4C();
      sub_1C47E3504(v98, v99);

      sub_1C43FD024();
      sub_1C4A25FEC();
      sub_1C4420C3C(v104, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4A25FEC();
      v100 = sub_1C44333A0();
      sub_1C4420C3C(v100, v101, &unk_1C4F2E1B0);
      goto LABEL_32;
    }

    sub_1C4420C3C(v104, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
LABEL_42:
    sub_1C4420C3C(v83, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_32;
  }

  sub_1C4420C3C(v83, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440582C(v83 + v94);
  if (!v60)
  {
    goto LABEL_42;
  }

  sub_1C4420C3C(v83, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_32:
  sub_1C43FE9F0();
}

uint64_t sub_1C4A203D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1908, type metadata accessor for LongitudinalEventData.Calendar, &unk_1C4F42EB8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A20470(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1518, type metadata accessor for LongitudinalEventData.Calendar, &unk_1C4F42EF0);

  return sub_1C4F00428();
}

uint64_t sub_1C4A20538(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1518, type metadata accessor for LongitudinalEventData.Calendar, &unk_1C4F42EF0);

  return sub_1C4F00438();
}

uint64_t sub_1C4A205E8()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152900);
  sub_1C442B738(v0, qword_1EC152900);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "microlocationIdentifier";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "microlocationConfidence";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A20860(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1910, type metadata accessor for LongitudinalEventData.Microlocation, &unk_1C4F42D50);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A20900(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C14F8, type metadata accessor for LongitudinalEventData.Microlocation, &unk_1C4F42D88);

  return sub_1C4F00428();
}

uint64_t sub_1C4A209C8(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C14F8, type metadata accessor for LongitudinalEventData.Microlocation, &unk_1C4F42D88);

  return sub_1C4F00438();
}

uint64_t sub_1C4A20A9C()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152928);
  sub_1C442B738(v0, qword_1EC152928);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
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
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bluetoothAddress";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A20CA4()
{
  type metadata accessor for LongitudinalEventData.Bluetooth._StorageClass(0);
  swift_allocObject();
  result = sub_1C4920FCC();
  qword_1EC0C1068 = result;
  return result;
}

void sub_1C4A20D44()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for LongitudinalEventData.Bluetooth(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.Bluetooth._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C4416740(v2);
  }

  sub_1C440F77C();
  sub_1C4A231B8();
  sub_1C44512DC();
}

uint64_t sub_1C4A20E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A20EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A20FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A21094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData9BluetoothP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetoothConnected;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A2127C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData9BluetoothP33_CF26A39E376EFD107920388298DF68A613_StorageClass__userWearing;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A21464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData9BluetoothP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bluetoothAddress;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A21740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1918, type metadata accessor for LongitudinalEventData.Bluetooth, &unk_1C4F42BE8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A217E0(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C14D8, type metadata accessor for LongitudinalEventData.Bluetooth, &unk_1C4F42C20);

  return sub_1C4F00428();
}

uint64_t sub_1C4A218A8(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C14D8, type metadata accessor for LongitudinalEventData.Bluetooth, &unk_1C4F42C20);

  return sub_1C4F00438();
}

uint64_t sub_1C4A21990()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152950);
  sub_1C442B738(v0, qword_1EC152950);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "widgetAction";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "widgetIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

void sub_1C4A21B58()
{
  sub_1C441800C();
  v0 = sub_1C4414568();
  v1(v0);
  type metadata accessor for FeatureValue(0);
  sub_1C4408DD4();
  v4 = sub_1C4A24734(v2, v3, &unk_1C4F2ECAC);
  sub_1C448DFF4(v4);
  sub_1C44512DC();
}

void sub_1C4A21BC8()
{
  sub_1C441800C();
  v0 = sub_1C4414568();
  v1(v0);
  type metadata accessor for FeatureValue(0);
  sub_1C4408DD4();
  v4 = sub_1C4A24734(v2, v3, &unk_1C4F2ECAC);
  sub_1C448DFF4(v4);
  sub_1C44512DC();
}

uint64_t sub_1C4A21C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v17[3] = a4;
  v17[1] = a3;
  v7 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v13 = a5(0);
  sub_1C4460108(a1 + *(v13 + 20), v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    return sub_1C4420C3C(v10, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4408DD4();
  sub_1C4A24734(v15, v16, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  sub_1C44158DC();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A21DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  v22[0] = a6;
  v22[1] = a3;
  v22[3] = a4;
  v8 = sub_1C44333A0();
  v10 = sub_1C456902C(v8, v9);
  sub_1C43FBD18(v10);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v22 - v12;
  v14 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v16 = a5(0);
  sub_1C4460108(a1 + *(v16 + 24), v13, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v17 = sub_1C442FFA8();
  if (sub_1C44157D4(v17, v18, v14) == 1)
  {
    return sub_1C4420C3C(v13, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4408DD4();
  sub_1C4A24734(v20, v21, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

void sub_1C4A21F9C()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  v38 = v8;
  v9 = sub_1C43FBC98();
  v11 = sub_1C456902C(v9, v10);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v37 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v40 = v19;
  sub_1C43FD1D0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  v39 = v1(0, v21);
  v24 = *(v39 + 20);
  v25 = *(v17 + 48);
  v41 = v5;
  sub_1C442573C(v5 + v24, v23);
  v42 = v3;
  sub_1C442573C(v3 + v24, &v23[v25]);
  sub_1C440175C(v23, 1, v6);
  if (v26)
  {
    sub_1C440175C(&v23[v25], 1, v6);
    if (!v26)
    {
      goto LABEL_16;
    }

    sub_1C4420C3C(v23, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  else
  {
    sub_1C4460108(v23, v16, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(&v23[v25], 1, v6);
    if (v26)
    {
LABEL_15:
      sub_1C4A25FEC();
LABEL_16:
      sub_1C4420C3C(v23, &qword_1EC0BB6C0, &unk_1C4F20AE0);
      goto LABEL_17;
    }

    v27 = v38;
    sub_1C4A26040();
    v28 = sub_1C47E3504(v16, v27);
    sub_1C4404C28();
    sub_1C4A25FEC();
    sub_1C4A25FEC();
    sub_1C4420C3C(v23, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    if ((v28 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v23 = v40;
  v29 = *(v39 + 24);
  v30 = *(v17 + 48);
  sub_1C442573C(v41 + v29, v40);
  sub_1C442573C(v42 + v29, &v23[v30]);
  sub_1C440175C(v23, 1, v6);
  if (v26)
  {
    sub_1C440175C(&v23[v30], 1, v6);
    if (v26)
    {
      sub_1C4420C3C(v23, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_19:
      sub_1C4F00328();
      sub_1C442CF50();
      sub_1C4A24734(v35, v36, MEMORY[0x1E69AAC10]);
      sub_1C4F010B8();
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v31 = v37;
  sub_1C4460108(v23, v37, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(&v23[v30], 1, v6);
  if (v32)
  {
    goto LABEL_15;
  }

  v33 = v38;
  sub_1C4A26040();
  v34 = sub_1C47E3504(v31, v33);
  sub_1C4404C28();
  sub_1C4A25FEC();
  sub_1C4A25FEC();
  sub_1C4420C3C(v23, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (v34)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_1C43FE9F0();
}

uint64_t sub_1C4A22444(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1920, type metadata accessor for LongitudinalEventData.Widget, &unk_1C4F42A80);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A224E4(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C14B8, type metadata accessor for LongitudinalEventData.Widget, &unk_1C4F42AB8);

  return sub_1C4F00428();
}

uint64_t sub_1C4A225AC(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C14B8, type metadata accessor for LongitudinalEventData.Widget, &unk_1C4F42AB8);

  return sub_1C4F00438();
}

uint64_t sub_1C4A22684(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x1C6940010](a2, a3);
  *a4 = 0xD000000000000016;
  *a5 = 0x80000001C4FACCB0;
  return result;
}

uint64_t sub_1C4A226F0()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152978);
  sub_1C442B738(v0, qword_1EC152978);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleId";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "actionId";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "systemProtocols";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C4A228F8()
{
  type metadata accessor for LongitudinalEventData.LinkActions._StorageClass(0);
  swift_allocObject();
  result = sub_1C4920FCC();
  qword_1EC0C1070 = result;
  return result;
}

uint64_t sub_1C4A22970(void *a1, void *a2, void *a3)
{
  sub_1C4A1AC9C(a1, a2, a3);

  return swift_deallocClassInstance();
}

void sub_1C4A229EC()
{
  sub_1C44051C4();
  sub_1C4A0B594(319, v0, v1, MEMORY[0x1E69E6720]);
  if (v2 <= 0x3F)
  {
    sub_1C4462824();
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C4A22B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_1C4F00328();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      sub_1C4462824();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C4A22F10(uint64_t a1, uint64_t a2)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v5 + 84) == a2)
  {
    v6 = v4;
    v7 = v2;
  }

  else
  {
    sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
    v7 = sub_1C442F908();
  }

  return sub_1C44157D4(v7, a2, v6);
}

uint64_t sub_1C4A22FC0(uint64_t a1, uint64_t a2, int a3)
{
  sub_1C43FBE94();
  sub_1C4F00328();
  sub_1C43FCF8C();
  if (*(v4 + 84) == a3)
  {
    sub_1C43FD5B4();
  }

  else
  {
    sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C442F908();
  }

  sub_1C43FE688();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

void sub_1C4A2305C()
{
  sub_1C4F00328();
  if (v0 <= 0x3F)
  {
    sub_1C44051C4();
    sub_1C4A0B594(319, v1, v2, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      sub_1C4462824();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C4A230FC()
{
  sub_1C441800C();
  v0 = sub_1C43FD704();
  v1 = type metadata accessor for LongitudinalEventData.LinkActions(v0);
  if ((sub_1C442A918(v1) & 1) == 0)
  {
    type metadata accessor for LongitudinalEventData.LinkActions._StorageClass(0);
    sub_1C43FD23C();
    swift_allocObject();
    sub_1C4414248();
    sub_1C4A1AAE8();
    sub_1C4416740(v2);
  }

  sub_1C440F77C();
  sub_1C4A231B8();
  sub_1C44512DC();
}

void sub_1C4A231B8()
{
  sub_1C441800C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  while (1)
  {
    v7 = sub_1C4F00378();
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    switch(v7)
    {
      case 3:
        v11 = sub_1C4418038();
        v2(v11);
        break;
      case 2:
        v10 = sub_1C4418038();
        v4(v10);
        break;
      case 1:
        v9 = sub_1C4418038();
        v6(v9);
        break;
    }
  }

  sub_1C44512DC();
}

uint64_t sub_1C4A23264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A23340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A2341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for FeatureValue(0);
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F003F8();
  return swift_endAccess();
}

uint64_t sub_1C4A234F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  sub_1C4405A6C();
  v12 = v11(0);
  sub_1C442F668(v12);
  sub_1C43FEE74();
  result = sub_1C4A1B09C(v13, v14, v15, v16, a5, a6, a7);
  if (!v7)
  {
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C4A23578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData11LinkActionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__bundleID;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A23760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData11LinkActionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__actionID;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

uint64_t sub_1C4A23948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v9 = OBJC_IVAR____TtCVV24IntelligencePlatformCore21LongitudinalEventData11LinkActionsP33_CF26A39E376EFD107920388298DF68A613_StorageClass__systemProtocols;
  swift_beginAccess();
  sub_1C4460108(a1 + v9, v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C4A26040();
  sub_1C4A24734(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C4A25FEC();
}

void sub_1C4A23B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FBD3C();
  a19 = v20;
  a20 = v21;
  v83[1] = v22;
  v86 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v91 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD2D8();
  v88 = v31;
  v32 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v89 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v83 - v37;
  v39 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v40 = sub_1C43FBD18(v39);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v83 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = v83 - v48;
  v50 = *v25;
  sub_1C440D164(v29 + *v25, &v97);
  sub_1C4460108(v29 + v50, v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v51 = *v25;
  sub_1C440D164(v27 + v51, &v96);
  v90 = v32;
  v52 = *(v32 + 48);
  v53 = sub_1C43FD018();
  sub_1C4460108(v53, v54, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  v55 = v91;
  sub_1C4460108(v27 + v51, &v38[v52], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(v38, 1, v55);
  if (v57)
  {

    sub_1C4420C3C(v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440175C(&v38[v52], 1, v55);
    v56 = v27;
    if (v57)
    {
      sub_1C4420C3C(v38, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_12;
    }

LABEL_9:
    sub_1C4420C3C(v38, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_21;
  }

  sub_1C4460108(v38, v46, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440175C(&v38[v52], 1, v55);
  if (v57)
  {

    sub_1C4420C3C(v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
    goto LABEL_9;
  }

  sub_1C4A26040();

  v58 = sub_1C440BB4C();
  v60 = sub_1C47E3504(v58, v59);
  sub_1C43FD024();
  sub_1C4A25FEC();
  sub_1C4420C3C(v49, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C4A25FEC();
  v56 = v27;
  sub_1C4420C3C(v38, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if ((v60 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v61 = v86;
  v62 = *v86;
  sub_1C440D164(*v86 + v29, &v95);
  v63 = &unk_1C4F2E1B0;
  v64 = v29;
  v65 = v85;
  sub_1C4449408(v62 + v29, v85);
  v66 = *v61;
  sub_1C440D164(v66 + v56, &v94);
  v67 = v89;
  v68 = *(v90 + 48);
  v69 = sub_1C441D6D8();
  sub_1C4449408(v69, v70);
  sub_1C4449408(v66 + v56, v68 + v67);
  sub_1C440175C(v67, 1, v55);
  if (!v57)
  {
    v63 = v84;
    sub_1C4460108(v67, v84, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440582C(v68 + v67);
    v71 = v87;
    if (!v72)
    {
      v73 = v88;
      sub_1C4A26040();
      v74 = sub_1C47E3504(v63, v73);
      sub_1C4404C28();
      sub_1C4A25FEC();
      v68 = &qword_1EC0BB6C8;
      v66 = &unk_1C4F2E1B0;
      sub_1C4420C3C(v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C43FD024();
      sub_1C4A25FEC();
      sub_1C4420C3C(v89, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if (v74)
      {
        goto LABEL_24;
      }

LABEL_21:

      goto LABEL_22;
    }

    sub_1C4420C3C(v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
LABEL_20:
    sub_1C4420C3C(v67, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_21;
  }

  sub_1C4420C3C(v65, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440582C(v68 + v67);
  v71 = v87;
  if (!v57)
  {
    goto LABEL_20;
  }

  sub_1C4420C3C(v67, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_24:
  v75 = sub_1C4458784(&a12);
  sub_1C440D164(v75, &v93);
  sub_1C4401DB4(v63 + v64, v71);
  v76 = *v68;
  sub_1C440D164(v56 + v76, &v92);
  v77 = sub_1C4441784();
  sub_1C44A1EE8(v77, &a13);
  sub_1C4401DB4(v56 + v76, v63 + v66);
  v78 = sub_1C4401860();
  sub_1C440175C(v78, v79, v91);
  if (!v57)
  {
    sub_1C4460108(v66, v83[0], &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C440582C(v63 + v66);
    if (!v80)
    {
      sub_1C4A26040();
      v81 = sub_1C43FE99C();
      sub_1C47E3504(v81, v82);

      sub_1C43FD024();
      sub_1C4A25FEC();
      sub_1C4420C3C(v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C4A25FEC();
      sub_1C4420C3C(v66, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      goto LABEL_22;
    }

    sub_1C4420C3C(v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
    sub_1C44074E0();
    sub_1C4A25FEC();
LABEL_32:
    sub_1C4420C3C(v66, &qword_1EC0BB6C0, &unk_1C4F20AE0);
    goto LABEL_22;
  }

  sub_1C4420C3C(v71, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C440582C(v63 + v66);
  if (!v57)
  {
    goto LABEL_32;
  }

  sub_1C4420C3C(v66, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
LABEL_22:
  sub_1C43FE9F0();
}

uint64_t sub_1C4A242AC()
{
  sub_1C4459B58();
  v4 = v3;
  sub_1C4F02AF8();
  v4(0);
  sub_1C4A24734(v2, v1, v0);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C4A243A0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v7 = *a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v7;
}

uint64_t sub_1C4A24478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4A24734(&qword_1EC0C1928, type metadata accessor for LongitudinalEventData.LinkActions, &unk_1C4F42918);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C4A24518(uint64_t a1)
{
  sub_1C4A24734(&qword_1EC0C1498, type metadata accessor for LongitudinalEventData.LinkActions, &unk_1C4F42950);

  return sub_1C4F00428();
}

uint64_t sub_1C4A245E0(uint64_t a1, uint64_t a2)
{
  sub_1C4A24734(&qword_1EC0C1498, type metadata accessor for LongitudinalEventData.LinkActions, &unk_1C4F42950);

  return sub_1C4F00438();
}

uint64_t sub_1C4A24734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4A25FEC()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C4A26040()
{
  v1 = sub_1C43FECE0();
  v2(v1);
  sub_1C43FBCE0();
  v3 = sub_1C43FBC98();
  v4(v3);
  return v0;
}

void sub_1C4A260BC(uint64_t a1)
{
  sub_1C4A0B594(319, &qword_1EC0C1940, type metadata accessor for LongitudinalEvent, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C4F00328();
    if (v2 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1C44FCC6C(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C4A261E8(uint64_t a1)
{
  sub_1C4F00328();
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360]);
    if (v2 <= 0x3F)
    {
      sub_1C4A0B594(319, &qword_1EC0C1958, type metadata accessor for LongitudinalEventData, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C4A262D0()
{
  sub_1C456902C(&qword_1EC0C1960, &qword_1C4F448E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C4F448D0;
  sub_1C43FBDF0();
  *(v1 + 32) = 0xD000000000000013;
  *(v1 + 40) = v2;
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = 0x7079546D72616C61;
  *(v0 + 64) = 0xE900000000000065;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 72) = v3;
  *(v0 + 80) = 0xD00000000000001BLL;
  *(v0 + 88) = v4;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 96) = v5;
  *(v0 + 104) = 0xD00000000000001BLL;
  *(v0 + 112) = v6;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 120) = v7;
  *(v0 + 128) = 0xD00000000000001BLL;
  *(v0 + 136) = v8;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 144) = v9;
  *(v0 + 152) = 0xD000000000000010;
  *(v0 + 160) = v10;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 168) = v11;
  *(v0 + 176) = 0xD000000000000012;
  *(v0 + 184) = v12;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 192) = v13;
  *(v0 + 200) = 0xD000000000000014;
  *(v0 + 208) = v14;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 216) = v15;
  *(v0 + 224) = 0xD000000000000010;
  *(v0 + 232) = v16;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 240) = v17;
  *(v0 + 248) = 0xD000000000000019;
  *(v0 + 256) = v18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 264) = v19;
  *(v0 + 272) = 0xD00000000000001FLL;
  *(v0 + 280) = v20;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 288) = v21;
  *(v0 + 296) = 0xD000000000000014;
  *(v0 + 304) = v22;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 312) = v23;
  *(v0 + 320) = 0xD000000000000027;
  *(v0 + 328) = v24;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 336) = v25;
  *(v0 + 344) = 0xD000000000000010;
  *(v0 + 352) = v26;
  *(v0 + 360) = swift_getKeyPath();
  strcpy((v0 + 368), "carPlayReason");
  *(v0 + 382) = -4864;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 384) = v27;
  *(v0 + 392) = 0xD000000000000011;
  *(v0 + 400) = v28;
  *(v0 + 408) = swift_getKeyPath();
  *(v0 + 416) = 0x6C50656369766564;
  *(v0 + 424) = 0xEF6E496465676775;
  *(v0 + 432) = swift_getKeyPath();
  strcpy((v0 + 440), "deviceUnlocked");
  *(v0 + 455) = -18;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 456) = v29;
  *(v0 + 464) = 0xD000000000000018;
  *(v0 + 472) = v30;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 480) = v31;
  *(v0 + 488) = 0xD000000000000012;
  *(v0 + 496) = v32;
  swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 504) = v33;
  *(v0 + 512) = 0xD000000000000010;
  *(v0 + 520) = v34;
  *(v0 + 528) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 536) = 0xD000000000000016;
  *(v0 + 544) = v35;
  *(v0 + 552) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 560) = 0xD000000000000010;
  *(v0 + 568) = v36;
  *(v0 + 576) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 584) = 0xD000000000000010;
  *(v0 + 592) = v37;
  *(v0 + 600) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 608) = 0xD000000000000013;
  *(v0 + 616) = v38;
  *(v0 + 624) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 632) = 0xD000000000000016;
  *(v0 + 640) = v39;
  *(v0 + 648) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 656) = 0xD000000000000017;
  *(v0 + 664) = v40;
  *(v0 + 672) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 680) = 0xD000000000000022;
  *(v0 + 688) = v41;
  *(v0 + 696) = swift_getKeyPath();
  strcpy((v0 + 704), "lowPowerMode");
  *(v0 + 717) = 0;
  *(v0 + 718) = -5120;
  *(v0 + 720) = swift_getKeyPath();
  *(v0 + 728) = 0x636F6C6F7263696DLL;
  *(v0 + 736) = 0xEF64496E6F697461;
  *(v0 + 744) = swift_getKeyPath();
  *(v0 + 752) = 0x74536E6F69746F6DLL;
  *(v0 + 760) = 0xEF65707954657461;
  *(v0 + 768) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 776) = 0xD000000000000015;
  *(v0 + 784) = v42;
  *(v0 + 792) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 800) = 0xD000000000000014;
  *(v0 + 808) = v43;
  *(v0 + 816) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 824) = 0xD00000000000001ELL;
  *(v0 + 832) = v44;
  *(v0 + 840) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 848) = 0xD000000000000011;
  *(v0 + 856) = v45;
  *(v0 + 864) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 872) = 0xD000000000000019;
  *(v0 + 880) = v46;
  *(v0 + 888) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 896) = 0xD000000000000025;
  *(v0 + 904) = v47;
  *(v0 + 912) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 920) = 0xD00000000000001DLL;
  *(v0 + 928) = v48;
  *(v0 + 936) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 944) = 0xD000000000000019;
  *(v0 + 952) = v49;
  *(v0 + 960) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 968) = 0xD000000000000017;
  *(v0 + 976) = v50;
  *(v0 + 984) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 992) = 0xD000000000000016;
  *(v0 + 1000) = v51;
  *(v0 + 1008) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 1016) = 0xD000000000000022;
  *(v0 + 1024) = v52;
  *(v0 + 1032) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 1040) = 0xD00000000000001BLL;
  *(v0 + 1048) = v53;
  *(v0 + 1056) = swift_getKeyPath();
  *(v0 + 1064) = 0x615074656C6C6177;
  *(v0 + 1072) = 0xEF656C7974537373;
  *(v0 + 1080) = swift_getKeyPath();
  sub_1C43FBDF0();
  *(v0 + 1088) = 0xD000000000000015;
  *(v0 + 1096) = v54;
  *(v0 + 1104) = swift_getKeyPath();
  strcpy((v0 + 1112), "wifiConnected");
  *(v0 + 1126) = -4864;
  *(v0 + 1128) = swift_getKeyPath();
  *(v0 + 1136) = 0x6469735369666977;
  *(v0 + 1144) = 0xE800000000000000;
  *(v0 + 1152) = swift_getKeyPath();
  sub_1C456902C(&qword_1EC0C1968, &unk_1C4F453D0);
  result = sub_1C4F00F28();
  qword_1EC152990 = result;
  return result;
}

uint64_t sub_1C4A26AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1C4A27144(a1, &v14 - v11, a6);
  return a7(v12);
}

uint64_t sub_1C4A27144(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1C4A271AC(uint64_t a1)
{
  v3 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F453E0;
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
  *(v6 + 144) = sub_1C4A277E4(&qword_1EDDEACE0, type metadata accessor for CarPlaySignal, &unk_1C4F16B30);
  *(v6 + 112) = v9;
  *(v6 + 176) = &type metadata for DevicePluggedInDataProvider;
  *(v6 + 184) = sub_1C47C09E4();
  *(v6 + 152) = 0;
  *(v6 + 216) = &type metadata for DeviceScreenLockDataProvider;
  *(v6 + 224) = sub_1C47C0A38();
  *(v6 + 192) = 0;
  result = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for EventsFoundInAppsSignal();
    v13 = sub_1C44195E8(v12);
    *(v13 + 16) = 0;
    *(v13 + 24) = v11;
    *(v6 + 256) = v1;
    *(v6 + 264) = sub_1C4A277E4(qword_1EDDE22C0, type metadata accessor for EventsFoundInAppsSignal, &unk_1C4F2A6CC);
    *(v6 + 232) = v13;
    *(v6 + 296) = &unk_1F43E10F8;
    *(v6 + 304) = sub_1C47C0A8C();
    v14 = type metadata accessor for SemanticLocationSignal();
    swift_allocObject();
    v15 = sub_1C4406D90();
    v16 = sub_1C4AFAB8C(v15);
    *(v6 + 336) = v14;
    *(v6 + 344) = sub_1C4A277E4(qword_1EDDE2878, type metadata accessor for SemanticLocationSignal, &unk_1C4F509F0);
    *(v6 + 312) = v16;
    v17 = type metadata accessor for UserFocusComputedModeSignal();
    sub_1C44195E8(v17);
    v18 = sub_1C4406D90();
    v19 = sub_1C4B9269C(v18);
    *(v6 + 376) = v14;
    *(v6 + 384) = sub_1C4A277E4(qword_1EDDE0220, type metadata accessor for UserFocusComputedModeSignal, &unk_1C4F57670);
    *(v6 + 352) = v19;
    *(v6 + 416) = &type metadata for DeviceWiFiConnectedDataProvider;
    *(v6 + 424) = sub_1C47C0AE0();
    *(v6 + 392) = 0;
    v20 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
    v21 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
    v22 = v20;
    v23 = [v21 init];
    v24 = type metadata accessor for PassKitSignal();
    v25 = swift_allocObject();
    v26 = sub_1C497AAA4(v22, v23, 0, v25);

    *(v6 + 456) = v24;
    *(v6 + 464) = sub_1C4A277E4(qword_1EDDEAAC0, type metadata accessor for PassKitSignal, &unk_1C4F4A9BC);
    *(v6 + 432) = v26;
    *(v6 + 496) = &type metadata for LOISessionDataProvider;
    *(v6 + 504) = sub_1C47C0B34();
    sub_1C44098F0(a1, v5);
    v27 = type metadata accessor for VirtualInteractionsSignal(0);
    swift_allocObject();
    v28 = sub_1C4D31AA8(v5, 0);
    *(v6 + 536) = v27;
    *(v6 + 544) = sub_1C4A277E4(&qword_1EDDE1210, type metadata accessor for VirtualInteractionsSignal, &unk_1C4F6E070);
    *(v6 + 512) = v28;
    *(v6 + 576) = &type metadata for EnergyModeDataProvider;
    *(v6 + 584) = sub_1C47C0B88();
    *(v6 + 616) = &type metadata for AlarmDataProvider;
    *(v6 + 624) = sub_1C47C0BDC();
    *(v6 + 656) = &type metadata for DeviceBacklightDataProvider;
    *(v6 + 664) = sub_1C47C0C30();
    v29 = type metadata accessor for AmbientLightSignal();
    swift_allocObject();
    v30 = sub_1C4585984();
    *(v6 + 696) = v29;
    *(v6 + 704) = sub_1C4A277E4(qword_1EDDE5E68, type metadata accessor for AmbientLightSignal, &unk_1C4F0D4A0);
    *(v6 + 672) = v30;
    v31 = type metadata accessor for NowPlayingSignal();
    v32 = swift_allocObject();
    v33 = sub_1C4A4B19C(v32);
    *(v6 + 736) = v31;
    *(v6 + 744) = sub_1C4A277E4(qword_1EDDE6C00, type metadata accessor for NowPlayingSignal, &unk_1C4F46830);
    *(v6 + 712) = v33;
    v34 = type metadata accessor for InferredModeSignal();
    swift_allocObject();
    v35 = sub_1C4406D90();
    v36 = sub_1C493B648(v35, 0);
    *(v6 + 776) = v34;
    *(v6 + 784) = sub_1C4A277E4(&qword_1EDDE5BC0, type metadata accessor for InferredModeSignal, &unk_1C4F3B6A0);
    *(v6 + 752) = v36;
    v37 = type metadata accessor for MotionStateSignal();
    swift_allocObject();
    v38 = sub_1C4A450C4(0, 600.0);
    *(v6 + 816) = v37;
    *(v6 + 824) = sub_1C4A277E4(qword_1EDDE63A0, type metadata accessor for MotionStateSignal, &protocol conformance descriptor for MotionStateSignal);
    *(v6 + 792) = v38;
    *(v6 + 856) = &unk_1F43FA130;
    *(v6 + 864) = sub_1C47C0CCC();
    *(v6 + 896) = &type metadata for AppIntentDataProvider;
    *(v6 + 904) = sub_1C4A2782C();
    *(v6 + 936) = &type metadata for MicrolocationDataProvider;
    *(v6 + 944) = sub_1C4A27880();
    *(v6 + 976) = &type metadata for HomeKitDataProvider;
    *(v6 + 984) = sub_1C4A278D4();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4A277E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C4A2782C()
{
  result = qword_1EC0C1970;
  if (!qword_1EC0C1970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1970);
  }

  return result;
}

unint64_t sub_1C4A27880()
{
  result = qword_1EC0C1978;
  if (!qword_1EC0C1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1978);
  }

  return result;
}

unint64_t sub_1C4A278D4()
{
  result = qword_1EC0C1980;
  if (!qword_1EC0C1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1980);
  }

  return result;
}

uint64_t sub_1C4A27928(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  if (a4)
  {
    v12 = sub_1C4402120();
    if (sub_1C45FBA6C(v12, v13, v14, a4, a5, a6))
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v15 = sub_1C4EF9CD8();
      sub_1C440BAA8(v11, 1, 1, v15);
      v16 = sub_1C4402120();
      sub_1C4886564(v16, v17, v11);
      sub_1C44686E4(v11);
    }
  }

  return sub_1C4402120();
}

uint64_t sub_1C4A27A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v26 - v16;
  if (a6)
  {
    v18 = sub_1C45FBA6C(a3, a4, a5 & 1, a6, a7, a8);
    v19 = sub_1C4402120();
    v21 = sub_1C4499AD0(v19, v20, a9);
    if (v18 || v21)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v22 = sub_1C4EF9CD8();
      sub_1C440BAA8(v17, 1, 1, v22);
      v23 = sub_1C4402120();
      sub_1C4886564(v23, v24, v17);
      sub_1C44686E4(v17);
    }
  }

  return sub_1C4402120();
}

uint64_t sub_1C4A27B88(uint64_t a1, uint64_t a2)
{
  if ((sub_1C46D791C(a2) & 1) == 0)
  {
    EnrollmentPreferences.enroll()();
    type metadata accessor for HashGenerator();
    swift_initStackObject();
    sub_1C4886F04();
    sub_1C4886B98();
  }

  return sub_1C46B7098();
}

uint64_t sub_1C4A27BF8()
{
  v1[2] = v0;
  v2 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v2);
  v1[3] = sub_1C43FBE7C();
  v3 = sub_1C4EF9CD8();
  v1[4] = v3;
  sub_1C43FCF7C(v3);
  v1[5] = v4;
  v1[6] = sub_1C43FE604();
  v1[7] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C4A27CDC()
{
  v1 = v0[2];
  v2 = *(v1 + *(type metadata accessor for Configuration(0) + 20));
  if (qword_1EDDDBEF8 != -1)
  {
    v25 = v2;
    swift_once();
    v2 = v25;
  }

  v3 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDDBF00, v2), xmmword_1EDDDBF00));
  if ((v3.i32[0] & v3.i32[1] & 1) != 0 && [objc_opt_self() isInternalDevice])
  {
    if (qword_1EC0B6908 != -1)
    {
      swift_once();
    }

    v4 = v0[7];
    v5 = v0[4];
    v6 = v0[5];
    sub_1C4EF9CC8();
    v7 = sub_1C43FBC98();
    v9 = sub_1C4A27B88(v7, v8);
    v11 = v10;
    v0[8] = v10;
    v12 = *(v6 + 8);
    v12(v4, v5);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C44064A8();
      swift_once();
    }

    v13 = sub_1C4F00978();
    v0[9] = sub_1C442B738(v13, qword_1EDDFECB8);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CF8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Beginning LongitudinalDataCollection", v16, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v17 = v0[6];
    v18 = v0[3];
    v19 = v0[4];

    sub_1C4EF9CC8();
    sub_1C4A2832C(v18);
    v12(v17, v19);
    v22 = sub_1C4A271AC(v0[2]);
    v0[10] = v22;
    v23 = swift_task_alloc();
    v0[11] = v23;
    *v23 = v0;
    v23[1] = sub_1C4A28020;
    v24 = v0[3];

    return sub_1C4A289E0(v22, v24, v9, v11, 10);
  }

  else
  {

    sub_1C43FBDA0();

    return v20();
  }
}

uint64_t sub_1C4A28020()
{
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  v8[12] = v6;
  v8[13] = v7;
  v8[14] = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C4A28170(uint64_t a1)
{
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = v1[12];
    v4 = v1[13];
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 2048;
    *(v6 + 14) = v4;
    _os_log_impl(&dword_1C43F8000, v2, v3, "LongitudinalDataCollection: Collected %ld events in %ld PET messages", v6, 0x16u);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v7 = v1[3];

  sub_1C4420C3C(v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);

  sub_1C43FBDA0();

  return v8();
}

uint64_t sub_1C4A28298()
{
  sub_1C4420C3C(*(v0 + 24), &qword_1EC0B84B8, &unk_1C4F0D4F0);

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C4A2832C@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v67 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBFDC();
  v68 = v3;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v66 - v5;
  v84 = sub_1C4EF9EB8();
  sub_1C43FCE64();
  v81 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C4405ED8(v8);
  v79 = sub_1C4EF9ED8();
  sub_1C43FCE64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4EF9E88();
  v74 = v15;
  sub_1C43FCE64();
  v17 = v16;
  v76 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  v82 = sub_1C4EF9F88();
  sub_1C43FCE64();
  v80 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v75 = v25 - v24;
  v26 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v27 = sub_1C43FBD18(v26);
  MEMORY[0x1EEE9AC00](v27);
  v77 = &v66 - v28;
  v78 = sub_1C4EF9CD8();
  sub_1C43FCE64();
  v86 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  v71 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  v70 = &v66 - v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  v85 = &v66 - v35;
  sub_1C4EF9BE8();
  sub_1C4EF9F58();
  v36 = type metadata accessor for LongitudinalDataCollectionTask(0);
  v37 = *(v1 + *(v36 + 32));
  v72 = *(v1 + *(v36 + 36));
  v73 = v37;
  (*(v17 + 104))(v21, *MEMORY[0x1E69698D0], v15);
  v38 = v79;
  (*(v10 + 104))(v14, *MEMORY[0x1E69699C8], v79);
  v39 = v81;
  v40 = v83;
  v41 = v84;
  (*(v81 + 104))(v83, *MEMORY[0x1E6969998], v84);
  v42 = v77;
  v43 = v75;
  sub_1C4EF9EF8();
  v44 = v40;
  v45 = v78;
  (*(v39 + 8))(v44, v41);
  (*(v10 + 8))(v14, v38);
  (*(v76 + 8))(v21, v74);
  (*(v80 + 8))(v43, v82);
  if (sub_1C44157D4(v42, 1, v45) == 1)
  {
    sub_1C4420C3C(v42, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4A2AFE0();
    swift_allocError();
    swift_willThrow();
    return (*(v86 + 8))(v85, v45);
  }

  else
  {
    v47 = v86;
    v48 = *(v86 + 32);
    v49 = v70;
    v50 = sub_1C43FFE3C();
    v48(v50);
    v51 = v71;
    sub_1C4EF9BE8();
    sub_1C44074F8();
    sub_1C4A2B034(v52, v53, MEMORY[0x1E6969548]);
    v54 = sub_1C4F01088();
    v57 = *(v47 + 8);
    v56 = v47 + 8;
    v55 = v57;
    result = (v57)(v85, v45);
    if (v54)
    {
      v58 = v66;
      (v48)(v66, v51, v45);
      v59 = v48;
      v86 = v56;
      v60 = v67;
      (v48)(v58 + *(v67 + 48), v49, v45);
      v84 = v48;
      v61 = v68;
      sub_1C446C964(v58, v68, &qword_1EC0B84B0, qword_1C4F0CDE0);
      v62 = *(v60 + 48);
      v63 = v69;
      v59(v69, v61, v45);
      v55(v61 + v62, v45);
      sub_1C4575F28(v58, v61);
      v64 = *(v60 + 48);
      v65 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
      v84(v63 + *(v65 + 36), v61 + v64, v45);
      return (v55)(v61, v45);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C4A289E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[69] = v5;
  v6[68] = a5;
  v6[67] = a4;
  v6[66] = a3;
  v6[65] = a2;
  v6[64] = a1;
  v7 = sub_1C456902C(&qword_1EC0C1988, &qword_1C4F45438);
  sub_1C43FBD18(v7);
  v6[70] = sub_1C43FBE7C();
  v8 = type metadata accessor for LongitudinalEvent(0);
  sub_1C43FCF7C(v8);
  v6[71] = v9;
  v6[72] = sub_1C43FE604();
  v6[73] = swift_task_alloc();
  v10 = sub_1C4EF9CD8();
  v6[74] = v10;
  sub_1C43FCF7C(v10);
  v6[75] = v11;
  v6[76] = sub_1C43FE604();
  v6[77] = swift_task_alloc();
  v12 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v6[78] = v12;
  sub_1C43FBD18(v12);
  v6[79] = sub_1C43FE604();
  v6[80] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C4A28B68()
{
  v50 = v0;
  v2 = *(v0 + 512);
  v3 = *(v2 + 16);
  *(v0 + 648) = v3;
  if (!v3)
  {
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      v25 = *(v0 + 560);
      sub_1C4A2AA4C(MEMORY[0x1E69E7CC0], *(v0 + 528), *(v0 + 536), v25);

      type metadata accessor for LongitudinalDataCollection(0);
      sub_1C43FBD94();
      sub_1C440BAA8(v26, v27, v28, v29);
      sub_1C4A2AB10(v25);
      sub_1C4420C3C(v25, &qword_1EC0C1988, &qword_1C4F45438);
    }

    else
    {
    }

    sub_1C440405C();

    __asm { BRAA            X3, X16 }
  }

  *(v0 + 656) = 0;
  sub_1C442E860(v2 + 32, v0 + 16);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v4 = *(v0 + 640);
  v5 = *(v0 + 632);
  v6 = *(v0 + 520);
  v7 = sub_1C4F00978();
  *(v0 + 664) = sub_1C442B738(v7, qword_1EDDFECB8);
  sub_1C442E860(v0 + 16, v0 + 56);
  sub_1C446C964(v6, v4, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C446C964(v6, v5, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 640);
  v12 = *(v0 + 632);
  if (v10)
  {
    sub_1C43FEC60();
    v13 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49[0] = v48;
    *v13 = 136315650;
    sub_1C4409678((v0 + 56), *(v0 + 80));
    swift_getDynamicType();
    v14 = sub_1C4F02C58();
    v16 = v15;
    sub_1C440962C((v0 + 56));
    v17 = sub_1C441D828(v14, v16, v49);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    sub_1C44074F8();
    sub_1C4A2B034(v18, v19, MEMORY[0x1E6969570]);
    v20 = sub_1C4F02858();
    v22 = v21;
    sub_1C4420C3C(v11, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C441D828(v20, v22, v49);
    sub_1C4404C88();

    *(v13 + 14) = v11;
    *(v13 + 22) = 2080;
    v23 = sub_1C4F02858();
    v1 = v24;
    sub_1C4420C3C(v12, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C441D828(v23, v1, v49);
    sub_1C4404C88();

    *(v13 + 24) = v23;
    _os_log_impl(&dword_1C43F8000, v8, v9, "LongitudinalDataCollection: Fetching data from Data Provider - %s in between %s and %s)", v13, 0x20u);
    v11 = v48;
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
    v30 = sub_1C4402120();
    sub_1C4420C3C(v30, v31, &unk_1C4F0D4F0);
    sub_1C440962C((v0 + 56));
  }

  sub_1C4405B64();
  sub_1C43FD720();
  *(v0 + 160) = swift_getAssociatedTypeWitness();
  sub_1C43FFE3C();
  *(v0 + 168) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90((v0 + 136));
  v1(v11, v8, v9);
  v32 = *(v0 + 160);
  v33 = sub_1C4409678((v0 + 136), v32);
  sub_1C43FCE64();
  v35 = v34;
  v36 = sub_1C43FBE7C();
  (*(v35 + 16))(v36, v33, v32);
  sub_1C43FD720();
  *(v0 + 120) = swift_getAssociatedTypeWitness();
  sub_1C43FFE3C();
  *(v0 + 128) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90((v0 + 96));
  sub_1C4F019A8();

  sub_1C440962C((v0 + 136));
  *(v0 + 712) = MEMORY[0x1E69E7CC0];
  *(v0 + 672) = 0u;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0;
  sub_1C44335C4();
  *(v0 + 736) = sub_1C43FD730(255);
  v37 = sub_1C4F01F48();
  *(v0 + 744) = v37;
  sub_1C43FCF7C(v37);
  *(v0 + 752) = v38;
  *(v0 + 760) = sub_1C43FBE7C();
  v39 = sub_1C43FD730(0);
  *(v0 + 768) = v39;
  sub_1C43FCF7C(v39);
  *(v0 + 776) = v40;
  *(v0 + 784) = *(v41 + 64);
  *(v0 + 792) = sub_1C43FBE7C();
  v42 = swift_task_alloc();
  *(v0 + 800) = v42;
  *v42 = v0;
  sub_1C4412124(v42);
  sub_1C440405C();

  return MEMORY[0x1EEE6D8D0](v43);
}

uint64_t sub_1C4A292B0()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;
  *(v2 + 808) = v0;

  if (v0)
  {
  }

  else
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C4A293C8()
{
  v136 = v0;
  v2 = *(v0 + 760);
  v3 = *(v0 + 736);
  if (sub_1C44157D4(v2, 1, v3) != 1)
  {
    goto LABEL_9;
  }

  (*(*(v0 + 752) + 8))(v2, *(v0 + 744));

  while (1)
  {
    v4 = *(v0 + 648);
    v5 = *(v0 + 656) + 1;
    sub_1C440962C((v0 + 96));
    sub_1C440962C((v0 + 16));
    if (v5 != v4)
    {
      break;
    }

    if (!*(*(v0 + 712) + 16))
    {

LABEL_26:
      sub_1C442CF68();

      sub_1C4402120();
      sub_1C4409A94();

      __asm { BRAA            X3, X16 }
    }

    v6 = *(v0 + 688);
    v7 = *(v0 + 696);
    v8 = *(v0 + 704);
    v9 = *(v0 + 560);
    sub_1C4A2AA4C(*(v0 + 712), *(v0 + 528), *(v0 + 536), v9);

    type metadata accessor for LongitudinalDataCollection(0);
    sub_1C43FBD94();
    sub_1C440BAA8(v10, v11, v12, v13);
    sub_1C4A2AB10(v9);
    sub_1C4420C3C(v9, &qword_1EC0C1988, &qword_1C4F45438);
    v2 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
      __break(1u);
      goto LABEL_49;
    }

    v3 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_9:
    *(v0 + 440) = v3;
    v14 = sub_1C4422F90((v0 + 416));
    (*(*(v3 - 8) + 32))(v14, v2, v3);

    sub_1C44482AC((v0 + 416), (v0 + 448));
    sub_1C456902C(&qword_1EC0BD0A8, &qword_1C4F2C300);
    if (swift_dynamicCast())
    {
      sub_1C441D670((v0 + 216), v0 + 176);
      sub_1C4425E08();
      v15 = sub_1C43FBEF8();
      v16(v15);
      sub_1C4425E08();
      v17 = sub_1C43FBEF8();
      v18(v17);
      sub_1C4425E08();
      swift_getAssociatedTypeWitness();
      sub_1C43FBCE0();
      sub_1C43FBE7C();
      v19 = sub_1C43FBEF8();
      v20(v19);
      sub_1C456902C(&qword_1EC0C1990, &qword_1C4F45440);
      if (!swift_dynamicCast())
      {
        *(v0 + 336) = 0u;
        *(v0 + 352) = 0u;
        *(v0 + 368) = 0;
        sub_1C4420C3C(v0 + 336, &qword_1EC0C1998, &qword_1C4F45448);

        sub_1C442E860(v0 + 176, v0 + 376);
        v83 = sub_1C4F00968();
        v84 = sub_1C4F01CD8();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          sub_1C43FEC60();
          v86 = swift_slowAlloc();
          v135[0] = v86;
          *v85 = 136315138;
          v87 = *(v0 + 400);
          v88 = *(v0 + 408);
          sub_1C4409678((v0 + 376), v87);
          v89 = *(v88 + 32);
          *(v0 + 504) = swift_getAssociatedTypeWitness();
          sub_1C4422F90((v0 + 480));
          v89(v87, v88);
          sub_1C4409678((v0 + 480), *(v0 + 504));
          swift_getDynamicType();
          sub_1C440962C((v0 + 480));
          v90 = sub_1C4F02C58();
          v92 = v91;
          sub_1C440962C((v0 + 376));
          v93 = sub_1C441D828(v90, v92, v135);

          *(v85 + 4) = v93;
          _os_log_impl(&dword_1C43F8000, v83, v84, "LongitudinalDataCollection: Could not convert %s to SupportsLongitudinalDataCollection", v85, 0xCu);
          sub_1C440962C(v86);
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
        }

        else
        {

          sub_1C440962C((v0 + 376));
        }

        v1 = *(v0 + 712);
        v80 = *(v0 + 704);
        goto LABEL_39;
      }

      v21 = *(v0 + 808);
      v22 = *(v0 + 608);
      v23 = *(v0 + 584);
      sub_1C441D670((v0 + 336), v0 + 296);

      sub_1C4A2A49C((v0 + 296), v22, v23);
      if (v21)
      {
        v24 = *(v0 + 616);
        v25 = *(v0 + 608);
        v26 = *(v0 + 600);
        v27 = *(v0 + 592);
        sub_1C440962C((v0 + 296));
        v28 = *(v26 + 8);
        v28(v25, v27);
        v28(v24, v27);

        sub_1C440962C((v0 + 176));
        sub_1C440962C((v0 + 96));
        goto LABEL_22;
      }

      sub_1C4A2AF30(*(v0 + 584), *(v0 + 576));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v1 = *(v0 + 712);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_51;
      }

      while (1)
      {
        v96 = *(v1 + 16);
        v95 = *(v1 + 24);
        if (v96 >= v95 >> 1)
        {
          sub_1C458E91C(v95 > 1, v96 + 1, 1, v1);
          v1 = v124;
        }

        v97 = *(v0 + 704);
        v98 = *(v0 + 576);
        v99 = *(v0 + 568);
        sub_1C4A2AF88(*(v0 + 584), type metadata accessor for LongitudinalEvent);
        sub_1C440962C((v0 + 296));
        *(v1 + 16) = v96 + 1;
        v100 = sub_1C4A2AED8(v98, v1 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v96);
        v101 = __OFADD__(v97, 1);
        v80 = v97 + 1;
        if (v101)
        {
          break;
        }

LABEL_39:
        v81 = *(v0 + 696);
        if (v80 != *(v0 + 544))
        {
          v134 = *(v0 + 688);
          v82 = *(v0 + 680);
          v70 = *(v0 + 672);
          goto LABEL_44;
        }

        v102 = *(v0 + 560);
        v103 = *(v0 + 552);
        v104 = *(v0 + 536);
        v131 = v80;
        v105 = *(v0 + 528);
        *v102 = MEMORY[0x1E69E7CC0];
        v106 = type metadata accessor for LongitudinalDataCollection(0);
        sub_1C4F00318();
        v107 = v81;
        v108 = (v102 + *(v106 + 24));
        *v108 = 0;
        v108[1] = 0;
        v109 = v102 + *(v106 + 28);
        *v109 = 0;
        v109[8] = 1;
        *v109 = *(v103 + *(type metadata accessor for LongitudinalDataCollectionTask(0) + 28));
        v109[8] = 0;
        *v108 = v105;
        v108[1] = v104;
        *v102 = v1;
        sub_1C43FBD94();
        sub_1C440BAA8(v110, v111, v112, v106);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4A2AB10(v102);
        sub_1C4420C3C(v102, &qword_1EC0C1988, &qword_1C4F45438);
        v82 = v107 + v131;
        if (__OFADD__(v107, v131))
        {
LABEL_49:
          __break(1u);
        }

        else
        {
          v113 = *(v0 + 688);
          v70 = v113 + 1;
          if (!__OFADD__(v113, 1))
          {
            v80 = 0;
            v1 = MEMORY[0x1E69E7CC0];
            v134 = v113 + 1;
            v81 = v82;
LABEL_44:
            v114 = *(*(v0 + 600) + 8);
            (v114)(*(v0 + 608), *(v0 + 592));
            v115 = sub_1C4402120();
            v114(v115);
            sub_1C440962C((v0 + 176));
            goto LABEL_45;
          }
        }

        __break(1u);
LABEL_51:
        sub_1C458E91C(0, *(v1 + 16) + 1, 1, v1);
        v1 = v123;
      }

      __break(1u);
      return MEMORY[0x1EEE6D8D0](v100);
    }

    *(v0 + 216) = 0u;
    *(v0 + 232) = 0u;
    *(v0 + 248) = 0;
    sub_1C4420C3C(v0 + 216, &qword_1EC0BD0B0, &qword_1C4F2C308);
    sub_1C442E860(v0 + 16, v0 + 256);
    v60 = sub_1C4F00968();
    v61 = sub_1C4F01CD8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      sub_1C43FEC60();
      v63 = swift_slowAlloc();
      v135[0] = v63;
      *v62 = 136315138;
      sub_1C4409678((v0 + 256), *(v0 + 280));
      swift_getDynamicType();
      v64 = sub_1C4F02C58();
      v66 = v65;
      sub_1C440962C((v0 + 256));
      v67 = sub_1C441D828(v64, v66, v135);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1C43F8000, v60, v61, "LongitudinalDataCollection: Could not convert %s data to SessionData", v62, 0xCu);
      sub_1C440962C(v63);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      sub_1C440962C((v0 + 256));
    }
  }

  v1 = *(v0 + 712);
  v130 = *(v0 + 704);
  v132 = *(v0 + 808);
  v128 = *(v0 + 680);
  v129 = *(v0 + 696);
  v133 = *(v0 + 672);
  v134 = *(v0 + 688);
  v29 = *(v0 + 656);
  *(v0 + 656) = v29 + 1;
  sub_1C442E860(*(v0 + 512) + 40 * v29 + 72, v0 + 16);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C44064A8();
    swift_once();
  }

  v30 = *(v0 + 640);
  v31 = *(v0 + 632);
  v32 = *(v0 + 520);
  v33 = sub_1C4F00978();
  *(v0 + 664) = sub_1C442B738(v33, qword_1EDDFECB8);
  sub_1C442E860(v0 + 16, v0 + 56);
  v34 = &qword_1EC0B84B8;
  sub_1C446C964(v32, v30, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C446C964(v32, v31, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v35 = sub_1C4F00968();
  v36 = sub_1C4F01CF8();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 640);
  v39 = *(v0 + 632);
  if (v37)
  {
    v34 = *(v0 + 592);
    sub_1C43FEC60();
    v40 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v135[0] = v126;
    *v40 = 136315650;
    sub_1C4409678((v0 + 56), *(v0 + 80));
    swift_getDynamicType();
    v41 = sub_1C4F02C58();
    v127 = v1;
    v43 = v42;
    sub_1C440962C((v0 + 56));
    v44 = sub_1C441D828(v41, v43, v135);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    sub_1C44074F8();
    sub_1C4A2B034(v45, v46, MEMORY[0x1E6969570]);
    v47 = sub_1C4F02858();
    v49 = v48;
    sub_1C4420C3C(v38, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v50 = v47;
    v1 = v127;
    v51 = sub_1C441D828(v50, v49, v135);

    *(v40 + 14) = v51;
    *(v40 + 22) = 2080;
    sub_1C4F02858();
    v53 = v52;
    sub_1C4420C3C(v39, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v54 = sub_1C4402120();
    v57 = sub_1C441D828(v54, v55, v56);

    *(v40 + 24) = v57;
    _os_log_impl(&dword_1C43F8000, v35, v36, "LongitudinalDataCollection: Fetching data from Data Provider - %s in between %s and %s)", v40, 0x20u);
    v38 = v126;
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v58);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830](v59);
  }

  else
  {

    v53 = &qword_1EC0B84B8;
    sub_1C4420C3C(v39, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v68 = sub_1C4402120();
    sub_1C4420C3C(v68, v69, &unk_1C4F0D4F0);
    sub_1C440962C((v0 + 56));
  }

  sub_1C4405B64();
  sub_1C43FD720();
  *(v0 + 160) = swift_getAssociatedTypeWitness();
  sub_1C43FFE3C();
  *(v0 + 168) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90((v0 + 136));
  (v34)(v38, v53, v35);
  v70 = v133;
  if (v132)
  {

    sub_1C47C41F8(v0 + 136);
LABEL_22:
    sub_1C442CF68();
    sub_1C440962C((v0 + 16));

    sub_1C43FBDA0();
    sub_1C4409A94();

    __asm { BRAA            X1, X16 }
  }

  v75 = *(v0 + 160);
  v76 = sub_1C4409678((v0 + 136), v75);
  sub_1C43FCE64();
  v78 = v77;
  v79 = sub_1C43FBE7C();
  (*(v78 + 16))(v79, v76, v75);
  *(v0 + 120) = swift_getAssociatedTypeWitness();
  *(v0 + 128) = swift_getAssociatedConformanceWitness();
  sub_1C4422F90((v0 + 96));
  sub_1C43FBEF8();
  sub_1C4F019A8();

  sub_1C440962C((v0 + 136));
  v81 = v129;
  v80 = v130;
  v82 = v128;
LABEL_45:
  *(v0 + 712) = v1;
  *(v0 + 704) = v80;
  *(v0 + 696) = v81;
  *(v0 + 688) = v134;
  *(v0 + 680) = v82;
  *(v0 + 672) = v70;
  sub_1C44335C4();
  *(v0 + 736) = sub_1C43FD730(255);
  v116 = sub_1C4F01F48();
  *(v0 + 744) = v116;
  sub_1C43FCF7C(v116);
  *(v0 + 752) = v117;
  *(v0 + 760) = sub_1C43FBE7C();
  v118 = sub_1C43FD730(0);
  *(v0 + 768) = v118;
  sub_1C43FCF7C(v118);
  *(v0 + 776) = v119;
  *(v0 + 784) = *(v120 + 64);
  *(v0 + 792) = sub_1C43FBE7C();
  v121 = swift_task_alloc();
  *(v0 + 800) = v121;
  *v121 = v0;
  sub_1C4412124(v121);
  sub_1C4409A94();

  return MEMORY[0x1EEE6D8D0](v100);
}

uint64_t sub_1C4A2A2F4()
{
  v1 = v0[99];
  v2 = v0[97];
  v3 = v0[96];
  v4 = sub_1C43FBE7C();
  v5 = *(v2 + 32);
  v5(v4, v1, v3);
  swift_getAssociatedConformanceWitness();
  if (sub_1C4F028C8())
  {
    (*(v0[97] + 8))(v4, v0[96]);
  }

  else
  {
    v6 = v0[96];
    swift_allocError();
    v5(v7, v4, v6);
  }

  sub_1C440962C(v0 + 12);
  sub_1C442CF68();
  sub_1C440962C(v0 + 2);

  sub_1C43FBDA0();

  return v8();
}

void sub_1C4A2A49C(void *a1@<X0>, NSObject *a2@<X2>, uint64_t a3@<X8>)
{
  v67 = a2;
  v5 = type metadata accessor for FeatureValue(0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v8 = sub_1C4405ED8(v7);
  v9 = type metadata accessor for LongitudinalEventData(v8);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v58 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = a1[4];
  sub_1C4409678(a1, a1[3]);
  v16 = sub_1C4404C88();
  v64 = v17(v16, v15);
  sub_1C4F00318();
  v18 = type metadata accessor for LongitudinalEvent(0);
  v19 = a3 + v18[5];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = a3 + v18[6];
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v18[7];
  v60 = a3;
  sub_1C440BAA8(a3 + v21, 1, 1, v9);
  sub_1C4F00318();
  v59 = v9;
  v22 = *(v9 + 20);
  if (qword_1EC0B6E08 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    *&v14[v22] = qword_1EC0C1038;

    sub_1C4EF9AD8();
    sub_1C4406DB4();
    if (!(v25 ^ v26 | v24))
    {
      break;
    }

    if (v23 <= -9.22337204e18)
    {
      goto LABEL_37;
    }

    if (v23 >= 9.22337204e18)
    {
      goto LABEL_38;
    }

    *v19 = v23;
    *(v19 + 8) = 0;
    v22 = v67;
    sub_1C4EF9AD8();
    sub_1C4406DB4();
    if (!(v25 ^ v26 | v24))
    {
      goto LABEL_39;
    }

    if (*&v27 <= -9.22337204e18)
    {
      goto LABEL_40;
    }

    if (*&v27 >= 9.22337204e18)
    {
      goto LABEL_41;
    }

    v57 = v21;
    v62 = v14;
    v28 = 0;
    *v20 = *&v27;
    *(v20 + 8) = 0;
    v14 = v64;
    v29 = v65;
    v21 = v64 + 64;
    v30 = *(v64 + 64);
    v31 = 1 << *(v64 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v30;
    v34 = (v31 + 63) >> 6;
    *&v27 = 136315138;
    v61 = v27;
    v66 = v34;
    if ((v32 & v30) != 0)
    {
      do
      {
        v19 = v28;
LABEL_17:
        v35 = __clz(__rbit64(v33)) | (v19 << 6);
        v36 = (*(v14 + 6) + 16 * v35);
        v37 = *v36;
        v38 = v36[1];
        v39 = *(*(v14 + 7) + 8 * v35);
        v40 = qword_1EC0B6F78;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v67 = v39;
        if (v40 != -1)
        {
          swift_once();
        }

        v33 &= v33 - 1;
        if (*(qword_1EC152990 + 16) && (v41 = sub_1C445FAA8(v37, v38), (v42 & 1) != 0))
        {
          v20 = v41;

          v22 = v67;
          if (([v67 isUndefined]& 1) == 0)
          {
            v43 = type metadata accessor for LongitudinalDataCollectionTask(0);
            v44 = v63;
            sub_1C46D43EC(*(v56 + *(v43 + 20)), *(v56 + *(v43 + 20) + 8), v29);
            v63 = v44;
            if (v44)
            {
              sub_1C4A2AF88(v62, type metadata accessor for LongitudinalEventData);

              sub_1C4A2AF88(v60, type metadata accessor for LongitudinalEvent);
              return;
            }

            swift_setAtWritableKeyPath();
          }
        }

        else
        {
          if (qword_1EDDFECB0 != -1)
          {
            sub_1C44064A8();
            swift_once();
          }

          v45 = sub_1C4F00978();
          sub_1C442B738(v45, qword_1EDDFECB8);
          sub_1C4404C88();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v22 = sub_1C4F00968();
          v20 = sub_1C4F01CD8();

          if (os_log_type_enabled(v22, v20))
          {
            v46 = swift_slowAlloc();
            sub_1C43FEC60();
            v47 = swift_slowAlloc();
            v68 = v47;
            *v46 = v61;
            v48 = sub_1C441D828(v37, v38, &v68);

            *(v46 + 4) = v48;
            _os_log_impl(&dword_1C43F8000, v22, v20, "LongitudinalDataCollection: Longitudinal Data Collection Feature does not have keypath defined %s", v46, 0xCu);
            sub_1C440962C(v47);
            v29 = v65;
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
            v14 = v64;
            sub_1C43FBCFC();
            MEMORY[0x1C6942830]();
          }

          else
          {
          }
        }

        v28 = v19;
        v34 = v66;
      }

      while (v33);
    }

    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v34)
      {

        v49 = v58;
        sub_1C4A2AED8(v62, v58);
        v50 = v60;
        v51 = v57;
        sub_1C4420C3C(v60 + v57, &qword_1EC0BD660, &unk_1C4F45450);
        sub_1C4A2AED8(v49, v50 + v51);
        sub_1C43FBD94();
        sub_1C440BAA8(v52, v53, v54, v59);
        return;
      }

      v33 = *(v21 + 8 * v19);
      ++v28;
      if (v33)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_36:
    swift_once();
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_1C4A2AA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = MEMORY[0x1E69E7CC0];
  v9 = type metadata accessor for LongitudinalDataCollection(0);
  sub_1C4F00318();
  v10 = (a4 + *(v9 + 24));
  *v10 = 0;
  v10[1] = 0;
  v11 = a4 + *(v9 + 28);
  *v11 = 0;
  v11[8] = 1;
  *v11 = *(v4 + *(type metadata accessor for LongitudinalDataCollectionTask(0) + 28));
  v11[8] = 0;
  *v10 = a2;
  v10[1] = a3;
  *a4 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C4A2AB10(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C1988, &qword_1C4F45438);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18[-1] - v3;
  v5 = type metadata accessor for LongitudinalDataCollection(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C446C964(a1, v4, &qword_1EC0C1988, &qword_1C4F45438);
  if (sub_1C44157D4(v4, 1, v5) == 1)
  {
    sub_1C4420C3C(v4, &qword_1EC0C1988, &qword_1C4F45438);
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C43F8000, v9, v10, "LongitudinalDataCollection: Events were not logged to PET2", v11, 2u);
      MEMORY[0x1C6942830](v11, -1, -1);
    }
  }

  else
  {
    sub_1C4A2AED8(v4, v7);
    sub_1C4F00518();
    sub_1C4F00508();
    v18[3] = v5;
    v18[4] = sub_1C4A2B034(&qword_1EC0C1738, type metadata accessor for LongitudinalDataCollection, &unk_1C4F446D8);
    v12 = sub_1C4422F90(v18);
    sub_1C4A2AF30(v7, v12);
    type metadata accessor for LongitudinalDataCollectionTask(0);
    sub_1C4F004F8();

    sub_1C440962C(v18);
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C43F8000, v14, v15, "LongitudinalDataCollection: Events were logged to PET2", v16, 2u);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    sub_1C4A2AF88(v7, type metadata accessor for LongitudinalDataCollection);
  }
}

uint64_t type metadata accessor for LongitudinalDataCollectionTask(uint64_t a1)
{
  result = qword_1EDDDF0E8;
  if (!qword_1EDDDF0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A2AED8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4A2AF30(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C4A2AF88(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C4A2AFE0()
{
  result = qword_1EC0C19A0;
  if (!qword_1EC0C19A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C19A0);
  }

  return result;
}

uint64_t sub_1C4A2B034(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for LongitudinalDataCollectionTask.LongitudinalDataCollectionError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C4A2B150(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4A2B1F4()
{
  result = qword_1EC0C19A8;
  if (!qword_1EC0C19A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C19A8);
  }

  return result;
}

char *sub_1C4A2B248()
{
  v2 = v0;
  v3 = sub_1C456902C(&qword_1EC0C19B0, &qword_1C4F45548);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v74 - v4;
  v6 = type metadata accessor for LSBundleRecordStructs.Organization(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LSBundleRecordStructs.Software(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C45B4BF8(v2, &selRef_bundleIdentifier);
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = v14;
  v17 = v15;
  v18 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v18 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {

LABEL_10:
    sub_1C465B58C();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();
    return v5;
  }

  v76 = v2;
  v77 = v9;
  v78 = v6;
  v79 = v13;
  if (qword_1EDDF7960 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v19, qword_1EDE2D6F8);
  String.base64EncodedSHA(withPrefix:)();
  v21 = v20;
  v23 = v22;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = v79;
  sub_1C4E2EC7C(v21, v23, v25, v26, v27, v28, v29, v30, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
  if (!v1)
  {
    v74 = v5;
    v75 = v23;
    v33 = (v24 + v10[11]);

    *v33 = v16;
    v33[1] = v17;
    v34 = v76;
    v35 = [v76 localizedName];
    v36 = sub_1C4F01138();
    v38 = v37;

    v39 = (v24 + v10[9]);

    *v39 = v36;
    v39[1] = v38;
    v40 = sub_1C45B4BF8(v34, &selRef_applicationIdentifier);
    v42 = v41;
    v43 = (v24 + v10[13]);
    v44 = v34;

    *v43 = v40;
    v43[1] = v42;
    v45 = [v34 persistentIdentifier];
    v46 = [objc_allocWithZone(MEMORY[0x1E69635F8]) initWithPersistentIdentifier_];

    if (v46)
    {
      v47 = sub_1C4A2B838([v46 iTunesMetadata]);
      v49 = v48;
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    v50 = v78;
    v51 = v21;
    v52 = sub_1C45B4BF8(v44, &selRef_teamIdentifier);
    v54 = v77;
    if (!v53)
    {

LABEL_30:
      HIBYTE(v81) = 1;
      v72 = v79;
      v5 = sub_1C4E30054(v51, v75, &v81 + 7);

      sub_1C4419FF4();
      sub_1C4A2B7E0(v72, v73);
      return v5;
    }

    v55 = v53;
    v78 = v51;
    if (v52 == 0x3030303030303030 && v53 == 0xEA00000000003030)
    {
      v57 = v52;
    }

    else
    {
      v57 = v52;
      if ((sub_1C4F02938() & 1) == 0)
      {
        if (!v49)
        {

LABEL_29:
          v51 = v78;
          goto LABEL_30;
        }

LABEL_26:
        v58 = v19;
        if (qword_1EDDF7938 != -1)
        {
          swift_once();
          v58 = v19;
        }

        sub_1C442B738(v58, qword_1EDE2D698);
        String.base64EncodedSHA(withPrefix:)();
        sub_1C4E2F5C4(v59, v60, v61, v62, v63, v64, v65, v66, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85);
        v67 = v47;
        v68 = (v54 + *(v50 + 36));

        *v68 = v67;
        v68[1] = v49;
        v69 = (v54 + *(v50 + 44));

        *v69 = v57;
        v69[1] = v55;
        v70 = v74;
        sub_1C4A2B77C(v54, v74, v71);
        sub_1C440BAA8(v70, 0, 1, v50);
        sub_1C4E2FE78(v70);
        sub_1C4A2B7E0(v54, type metadata accessor for LSBundleRecordStructs.Organization);
        goto LABEL_29;
      }
    }

    v47 = 0x656C707041;

    v49 = 0xE500000000000000;
    goto LABEL_26;
  }

  return v5;
}

uint64_t sub_1C4A2B77C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for LSBundleRecordStructs.Organization(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4A2B7E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4A2B838(void *a1)
{
  v2 = [a1 artistName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4A2B8A8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for LSBundleRecordSourceIngestor(0);
  *(v3 + 48) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 56) = swift_task_alloc();
  v8 = type metadata accessor for Source(0);
  *(v3 + 64) = v8;
  sub_1C43FBD18(v8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v9 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v9);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4A2BA00, 0, 0);
}

uint64_t sub_1C4A2BA00()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFD2F0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 121);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 64), qword_1EDDFD2F8);
  *(v0 + 104) = v11;
  sub_1C44717B8(v11, v5, type metadata accessor for Source);
  sub_1C44717B8(v10, v8, type metadata accessor for PhaseStores);
  sub_1C44717B8(v11, v8 + *(v9 + 20), type metadata accessor for Source);
  *(v8 + *(v9 + 24)) = v4;
  sub_1C44717B8(v11, v7, type metadata accessor for Source);
  sub_1C44717B8(v10, v6, type metadata accessor for PhaseStores);
  *(v0 + 120) = v4;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1C4A2BBB4;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4A2BBB4()
{

  return MEMORY[0x1EEE6DFA0](sub_1C4A2BCB0, 0, 0);
}

uint64_t sub_1C4A2BCB0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v22 = v0[12];
  v23 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  sub_1C44717B8(v0[13], v0[9], type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v6, v1, v8);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v6);
  v9 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v3;
  v9[4] = sub_1C4A2BF5C();
  v10 = sub_1C4422F90(v9);
  sub_1C4A2BFB4(v4, v10, type metadata accessor for LSBundleRecordSourceIngestor);
  sub_1C44002E8();
  sub_1C4A2BFB4(v2, v11, v12);
  sub_1C44002E8();
  sub_1C4A2BFB4(v22, v13, v14);
  sub_1C44002E8();
  sub_1C4A2BFB4(v23, v15, v16);
  sub_1C44002E8();
  sub_1C4A2BFB4(v5, v17, v18);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v19 = v0[1];
  v20 = v0[3];

  return v19(v20);
}

uint64_t type metadata accessor for LSBundleRecordSoftwarePhase(uint64_t a1)
{
  result = qword_1EDDE05D8;
  if (!qword_1EDDE05D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C4A2BF5C()
{
  result = qword_1EDDDFDD8;
  if (!qword_1EDDDFDD8)
  {
    type metadata accessor for LSBundleRecordSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDFDD8);
  }

  return result;
}

uint64_t sub_1C4A2BFB4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for LSBundleRecordSourceIngestor(uint64_t a1)
{
  result = qword_1EDDDFDB8;
  if (!qword_1EDDDFDB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A2C0A4()
{
  v1 = *(v0 + 32);
  v2 = [objc_opt_self() enumeratorWithOptions_];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  type metadata accessor for PhaseStores(0);
  v3 = swift_task_alloc();
  v3[2] = v2;
  v3[3] = v1;
  v3[4] = v0 + 16;
  v3[5] = v0 + 24;
  v3[6] = v0 + 40;
  GraphStore.tripleInsertingTransaction(transactionBody:)(sub_1C4A2CAF4, v3);
  v4 = *(v0 + 32);

  sub_1C4EF9AE8();
  sub_1C4647050();
  sub_1C4A2C200(v4, (v0 + 24), (v0 + 16));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1C4A2C200(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1C43FBE94();
  v7 = type metadata accessor for Pipeline.StatusStore(v6);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4430FB0(v3, v10);
  v10[*(v8 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44BCB8C(v10, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v12 = sub_1C4F01108();

  *(inited + 48) = v12;
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

void sub_1C4A2C478(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, char *a7@<X6>, char *a8@<X8>)
{
  v9 = v8;
  v48 = a7;
  v49 = a8;
  v50 = a6;
  v51 = a1;
  v52 = a2;
  v53 = a4;
  v12 = type metadata accessor for LSBundleRecordSourceIngestor(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v47 = &v45 - v16;
  while (1)
  {
    v17 = [a3 nextObject];
    if (!v17)
    {
      v29 = *v48;
LABEL_18:
      *v49 = v29;
      return;
    }

    v18 = v17;
    if (sub_1C4F01948())
    {
      break;
    }

    if (__OFADD__(*a5, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    ++*a5;
    v18 = v18;
    sub_1C4630D78(v18);
    if (v19)
    {

      sub_1C4A2B248();
      v20 = v9;
      if (v9)
      {
        v9 = 0;
        v55 = v20;
        v23 = v20;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        if (!swift_dynamicCast())
        {

          v29 = 1;
          LOBYTE(v55) = 1;
          sub_1C4407510(v20, v42, v43, v44, &v55);

          *v48 = 1;
          goto LABEL_18;
        }

        v24 = v54[1];
        sub_1C465B58C();
        v25 = swift_allocError();
        *v26 = v24;
        v54[0] = 1;
        sub_1C4407510(v25, v26, v27, v28, v54);
      }

      else
      {
        sub_1C4812140();
        v22 = v21;

        v51(v22);
        v9 = 0;

        if (__OFADD__(*v50, 1))
        {
          goto LABEL_22;
        }

        ++*v50;
      }
    }

    else
    {
    }
  }

  if (qword_1EDDFD028 == -1)
  {
    goto LABEL_15;
  }

LABEL_23:
  swift_once();
LABEL_15:
  v30 = sub_1C4F00978();
  sub_1C442B738(v30, qword_1EDE2DE10);
  sub_1C441A00C();
  v31 = v47;
  sub_1C4430FB0(v53, v47);
  v32 = sub_1C4F00968();
  v33 = sub_1C4F01CF8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v55 = v35;
    *v34 = 136315138;
    sub_1C441A00C();
    v36 = v46;
    sub_1C4430FB0(v31, v46);
    sub_1C44BCB8C(v31, type metadata accessor for LSBundleRecordSourceIngestor);
    sub_1C4640810();
    v38 = v37;
    v40 = v39;
    sub_1C44BCB8C(v36, type metadata accessor for LSBundleRecordSourceIngestor);
    v41 = sub_1C441D828(v38, v40, &v55);

    *(v34 + 4) = v41;
    _os_log_impl(&dword_1C43F8000, v32, v33, "%s going to defer", v34, 0xCu);
    sub_1C440962C(v35);
    MEMORY[0x1C6942830](v35, -1, -1);
    MEMORY[0x1C6942830](v34, -1, -1);
  }

  else
  {
    sub_1C44BCB8C(v31, type metadata accessor for LSBundleRecordSourceIngestor);
  }

  sub_1C4F01828();
  sub_1C4A2CB18(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  swift_allocError();
  sub_1C4F00EA8();
  swift_willThrow();
}

uint64_t sub_1C4A2C8F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C4A2C084();
}

uint64_t sub_1C4A2C9EC(uint64_t a1)
{
  result = sub_1C4A2CB18(qword_1EDDDFDE0, type metadata accessor for LSBundleRecordSourceIngestor, &unk_1C4F455A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A2CA44(uint64_t a1)
{
  result = sub_1C4A2CB18(&qword_1EDDDFDC8, type metadata accessor for LSBundleRecordSourceIngestor, &unk_1C4F455C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A2CA9C(uint64_t a1)
{
  result = sub_1C4A2CB18(&qword_1EDDDFDD0, type metadata accessor for LSBundleRecordSourceIngestor, &unk_1C4F455E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A2CB18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4A2CB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4F00F28();
  if (*(v4 + 16) && (v5 = sub_1C445FAA8(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1C4A2CBE8(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x6F65646976;
      break;
    case 2:
      result = 0x636973756DLL;
      break;
    case 3:
      result = 0x74736163646F70;
      break;
    case 4:
      result = 0x676E6973776F7262;
      break;
    case 5:
      result = 0x676E6974786574;
      break;
    case 6:
      result = 1818845549;
      break;
    case 7:
      result = 0x676E696D6167;
      break;
    case 8:
      result = 0x6C6169636F73;
      break;
    case 9:
      result = 1936744813;
      break;
    case 10:
      result = 0x6168735F65646972;
      break;
    case 11:
      result = 0x6C65645F646F6F66;
      break;
    case 12:
      result = 0x676E6970706F6873;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4A2CD2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C4A2CD9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4A2CD2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C4A2CDCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4A2CBE8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ManualBundleCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4A2CEE8()
{
  result = qword_1EC0C19B8;
  if (!qword_1EC0C19B8)
  {
    sub_1C4572308(&qword_1EC0C19C0, qword_1C4F45648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C19B8);
  }

  return result;
}

unint64_t sub_1C4A2CF50()
{
  result = qword_1EC0C19C8;
  if (!qword_1EC0C19C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C19C8);
  }

  return result;
}

unint64_t MappingError.description.getter()
{
  result = 0x206E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000034;
      break;
    case 4:
      result = 0xD000000000000045;
      break;
    case 5:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MappingError.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

unint64_t sub_1C4A2D11C()
{
  result = qword_1EC0C19D0;
  if (!qword_1EC0C19D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C19D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MappingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

double Source.mapper(stores:pipelineType:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = type metadata accessor for StandardEntityMapper(0);
  a3[3] = v7;
  a3[4] = sub_1C4A2D390();
  v8 = sub_1C4422F90(a3);
  sub_1C44717B8(a1, v8 + v7[9], type metadata accessor for PhaseStores);
  sub_1C44717B8(v3, v8, type metadata accessor for Source);
  v9 = *(type metadata accessor for Source(0) + 24);
  v10 = v7[5];
  sub_1C4EFD548();
  sub_1C43FCE50();
  (*(v11 + 16))(v8 + v10, v3 + v9);
  *(v8 + v7[6]) = 8;
  *&result = 1;
  *(v8 + v7[8]) = xmmword_1C4F14630;
  *(v8 + v7[7]) = v6;
  return result;
}

unint64_t sub_1C4A2D390()
{
  result = qword_1EDDE4218;
  if (!qword_1EDDE4218)
  {
    type metadata accessor for StandardEntityMapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE4218);
  }

  return result;
}

void *sub_1C4A2D3E8()
{
  v32 = *MEMORY[0x1E69E9840];
  v0 = sub_1C4EF98F8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C4A2D7C4();
  if (!v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = objc_autoreleasePoolPush();
  sub_1C4EF9838();
  v20 = sub_1C4EF9938();
  v22 = v21;
  v23 = objc_opt_self();
  (*(v1 + 8))(v3, v0);
  v24 = sub_1C4EF9A38();
  sub_1C4434000(v20, v22);
  v30[0] = 0;
  v25 = [v23 JSONObjectWithData:v24 options:0 error:v30];

  if (!v25)
  {
    v27 = v30[0];
    v28 = sub_1C4EF97A8();

    swift_willThrow();
    objc_autoreleasePoolPop(v8);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v9 = sub_1C4F00978();
    sub_1C4400920(v9, qword_1EDE2DE10);
    v10 = v28;
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CE8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_1C441D828(v6, v7, v30);

      *(v13 + 4) = v14;
      *(v13 + 12) = 2080;
      v31 = v28;
      v15 = v28;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v16 = sub_1C4F01198();
      v18 = sub_1C441D828(v16, v17, v30);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1C43F8000, v11, v12, "StandardEntityMapper: failed to deserialize JSON of %s: %s", v13, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    return 0;
  }

  v26 = v30[0];
  sub_1C4F02078();
  swift_unknownObjectRelease();
  sub_1C456902C(&qword_1EC0C34B0, &qword_1C4F40190);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v31;
}

uint64_t sub_1C4A2D7C4()
{
  v55 = *v0;
  v56 = v0[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](7364941, 0xE300000000000000);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](46, 0xE100000000000000);
  MEMORY[0x1C6940010](1852797802, 0xE400000000000000);
  sub_1C44867F4();
  v1 = sub_1C4F01E88();
  v2 = sub_1C4407544();
  v6 = sub_1C495B9CC(v2, v3, v4, v5, v1);
  v8 = v7;

  if (v8)
  {
    v9 = [objc_opt_self() defaultManager];
    v10 = sub_1C4F01108();
    v11 = [v9 fileExistsAtPath_];

    if (v11)
    {

      if (qword_1EDDFD028 != -1)
      {
        sub_1C43FE9B4(&qword_1EDDFD028);
      }

      v12 = sub_1C4F00978();
      sub_1C4400920(v12, qword_1EDE2DE10);
      v13 = sub_1C4F00968();
      v14 = sub_1C4F01CC8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 136315138;
        v24 = sub_1C442CF80(v16, v17, v18, v19, v20, v21, v22, v23, v16);

        *(v15 + 4) = v24;
        v25 = "Loading %s from Core framework.";
LABEL_13:
        _os_log_impl(&dword_1C43F8000, v13, v14, v25, v15, 0xCu);
        sub_1C440962C(v16);
        sub_1C43FBE2C();
        sub_1C43FBE2C();
LABEL_15:

        return v6;
      }

      goto LABEL_14;
    }
  }

  v26 = sub_1C4407544();
  v6 = static InternalPlugin.pathForResource(named:type:)(v26, v27, v28, v29);
  v31 = v30;

  if (v31)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v32 = sub_1C4F00978();
    sub_1C4400920(v32, qword_1EDE2DE10);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CC8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136315138;
      v40 = sub_1C442CF80(v16, v33, v34, v35, v36, v37, v38, v39, v16);

      *(v15 + 4) = v40;
      v25 = "Loading %s from Internal bundle.";
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v41 = sub_1C4F00978();
  sub_1C4400920(v41, qword_1EDE2DE10);
  v42 = sub_1C4F00968();
  v43 = sub_1C4F01CE8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v44 = 136315138;
    v53 = sub_1C442CF80(v45, v46, v47, v48, v49, v50, v51, v52, v45);

    *(v44 + 4) = v53;
    _os_log_impl(&dword_1C43F8000, v42, v43, "Resource %s not found.", v44, 0xCu);
    sub_1C440962C(v45);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
  }

  return 0;
}

uint64_t MatchExtractor.init(config:graphStore:phaseSource:sourceIngestor:linker:entityClasses:pipelineType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v16 = a4[3];
  v15 = a4[4];
  sub_1C4418280(a4, v16);
  sub_1C441FEEC();
  MEMORY[0x1EEE9AC00](v17);
  v19 = sub_1C440755C(v18, v23);
  v20(v19);
  v21 = sub_1C4A2EAC0(a1, a2, a3, v7, a5, a6, a7, v24, v16, v15);
  sub_1C440962C(a4);
  return v21;
}

uint64_t MatchExtractor.deinit()
{
  sub_1C44540B0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_config, type metadata accessor for Configuration);
  sub_1C44540B0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source, type metadata accessor for Source);

  sub_1C440962C((v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor));
  sub_1C44540B0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_linker, type metadata accessor for Linker);

  return v0;
}

uint64_t sub_1C4A2DD78()
{
  MEMORY[0x1C6940010](*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source + 8));
  MEMORY[0x1C6940010](43, 0xE100000000000000);
  sub_1C448D934(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType));
  return 0;
}

uint64_t sub_1C4A2DDE8()
{
  sub_1C43FBCD4();
  v1[2] = v0;
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v1[3] = swift_task_alloc();
  v2 = sub_1C4EFD548();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4A2DEE8, 0, 0);
}

uint64_t sub_1C4A2DEE8()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor);
  v3 = v1[3];
  v2 = v1[4];
  sub_1C4409678(v1, v3);
  (*(*(*(v2 + 8) + 8) + 56))(v3);
  v4 = *(v0 + 16);
  v5 = v1[3];
  v6 = v1[4];
  sub_1C4409678(v1, v5);
  *(v0 + 88) = *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  v8 = *(v6 + 8);
  *v7 = v0;
  v7[1] = sub_1C4A2E064;

  return ResumableStage.executeIfRequired(_:)((v0 + 88), v5, v8);
}

uint64_t sub_1C4A2E064()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 72) = v0;

  if (v0)
  {
    v5 = sub_1C4A2E790;
  }

  else
  {
    v5 = sub_1C4A2E168;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4A2E168()
{
  v1 = *(v0 + 72);
  sub_1C4ACF534();
  if (v1)
  {

    sub_1C43FBDA0();

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 80) = v4;
    *v4 = v0;
    v4[1] = sub_1C4A2E278;

    return sub_1C49E09FC();
  }
}

uint64_t sub_1C4A2E278()
{
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;

  if (v0)
  {

    sub_1C43FBDA0();

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4A2E3C0, 0, 0);
  }
}

void sub_1C4A2E3C0()
{
  v36 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses);
  sub_1C456902C(&qword_1EC0BD3E0, &qword_1C4F45860);
  sub_1C4A2ED18(&qword_1EDDFA230, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92D8]);
  v2 = sub_1C4F00F28();
  v3 = *(v1 + 16);
  if (!v3)
  {
LABEL_13:
    *(v0[2] + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict) = v2;

    sub_1C43FBDA0();

    v29();
    return;
  }

  v4 = v0[5];
  v6 = *(v4 + 16);
  v4 += 16;
  v5 = v6;
  v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
  v31 = *(v4 + 56);
  v30 = (v4 - 8);
  v34 = v0;
  while (1)
  {
    v32 = v7;
    v33 = v3;
    v9 = v0[6];
    v8 = v0[7];
    v11 = v0[3];
    v10 = v0[4];
    v5(v8);
    (v5)(v9, v8, v10);
    (v5)(v11, v8, v10);
    sub_1C440BAA8(v11, 0, 1, v10);
    v12 = sub_1C44B0950();
    sub_1C49E1870(v11);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C457B3EC();
    if (__OFADD__(v2[2], (v14 & 1) == 0))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v15 = v13;
    v16 = v14;
    sub_1C456902C(&qword_1EC0C19D8, &qword_1C4F45868);
    if (sub_1C4F02458())
    {
      break;
    }

    v17 = v34;
LABEL_8:
    if (v16)
    {
      *(v2[7] + 8 * v15) = v12;
    }

    else
    {
      v20 = v17[6];
      v21 = v17[4];
      v2[(v15 >> 6) + 8] |= 1 << v15;
      (v5)(v2[6] + v15 * v31, v20, v21);
      *(v2[7] + 8 * v15) = v12;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_20;
      }

      v2[2] = v24;
    }

    v25 = v17[7];
    v27 = v17[3];
    v26 = v17[4];
    v28 = *v30;
    (*v30)(v17[6], v26);
    v35 = 3;
    (v5)(v27, v25, v26);
    sub_1C440BAA8(v27, 0, 1, v26);
    sub_1C44ABA54(&v35, v27);
    sub_1C49E1870(v27);
    v28(v25, v26);
    v0 = v34;
    v7 = v32 + v31;
    v3 = v33 - 1;
    if (v33 == 1)
    {
      goto LABEL_13;
    }
  }

  v17 = v34;
  sub_1C457B3EC();
  if ((v16 & 1) == (v19 & 1))
  {
    v15 = v18;
    goto LABEL_8;
  }

  sub_1C4F029F8();
}

uint64_t sub_1C4A2E790()
{

  sub_1C43FBDA0();

  return v0();
}

uint64_t MatchExtractor.__allocating_init(config:graphStore:phaseSource:sourceIngestor:linker:entityClasses:pipelineType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v14 = swift_allocObject();
  v16 = a4[3];
  v15 = a4[4];
  sub_1C4418280(a4, v16);
  sub_1C441FEEC();
  MEMORY[0x1EEE9AC00](v17);
  v19 = sub_1C440755C(v18, v23);
  v20(v19);
  v21 = sub_1C4A2EAC0(a1, a2, a3, v7, a5, a6, a7, v14, v16, v15);
  sub_1C440962C(a4);
  return v21;
}

uint64_t MatchExtractor.__deallocating_deinit()
{
  MatchExtractor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4A2E9DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4A2DDE8();
}

uint64_t sub_1C4A2EA6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ConstructionPhase.description.getter(a1, WitnessTable);
}

uint64_t sub_1C4A2EAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = (a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_sourceIngestor);
  v18[3] = a9;
  v18[4] = a10;
  v19 = sub_1C4422F90(v18);
  (*(*(a9 - 8) + 32))(v19, a4, a9);
  LOBYTE(a7) = *a7;
  sub_1C4A2F020(a1, a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_config, type metadata accessor for Configuration);
  *(a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_graphStore) = a2;
  sub_1C4A2F020(a3, a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_source, type metadata accessor for Source);
  sub_1C4A2F020(a5, a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_linker, type metadata accessor for Linker);
  *(a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_entityClasses) = a6;
  *(a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_matchesDict) = MEMORY[0x1E69E7CC8];
  *(a8 + OBJC_IVAR____TtC24IntelligencePlatformCore14MatchExtractor_pipelineType) = a7;
  return a8;
}

uint64_t sub_1C4A2EC1C(uint64_t a1)
{
  result = sub_1C4A2ED18(&qword_1EC0C19E0, type metadata accessor for MatchExtractor, &protocol conformance descriptor for MatchExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MatchExtractor(uint64_t a1)
{
  result = qword_1EC0C19F0;
  if (!qword_1EC0C19F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A2ECC0(uint64_t a1)
{
  result = sub_1C4A2ED18(&qword_1EC0C19E8, type metadata accessor for MatchExtractor, &protocol conformance descriptor for MatchExtractor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4A2ED18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4A2ED68(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Source(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Linker(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MatchExtractor.run()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1C442E8C4;

  return v4();
}

uint64_t sub_1C4A2F020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4A2F088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Configuration(0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = *(a1 + *(type metadata accessor for PhaseStores(0) + 24));
  matched = type metadata accessor for MatchExtractorService(0);
  *(a2 + *(matched + 28)) = v9;
  sub_1C4A31C54(a1, v8, type metadata accessor for Configuration);

  sub_1C4EF9888();
  v11 = sub_1C4EF98F8();
  sub_1C43FBCE0();
  v13 = *(v12 + 8);
  v13(v8, v11);
  sub_1C4A31C54(a1, v8, type metadata accessor for Configuration);
  sub_1C4EF9888();
  v13(v8, v11);
  v14 = [objc_opt_self() defaultManager];
  sub_1C4EF98E8();
  v15 = sub_1C4F01108();

  LODWORD(v8) = [v14 fileExistsAtPath_];

  if (v8)
  {
    sub_1C4EF9348();
    swift_allocObject();
    sub_1C4EF9338();
    sub_1C4837F7C();
    v17 = v16;

    result = sub_1C440D65C();
    v19 = MEMORY[0x1E69E7CD0];
    if (v17)
    {
      v19 = v17;
    }
  }

  else
  {
    result = sub_1C440D65C();
    v19 = MEMORY[0x1E69E7CD0];
  }

  *(a2 + *(matched + 24)) = v19;
  return result;
}

uint64_t sub_1C4A2F2BC(uint64_t result)
{
  v1 = 0;
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    if (*(*(*(result + 56) + ((v6 << 9) | (8 * v7))) + 16))
    {
      return 0;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      return 1;
    }

    v4 = *(result + 64 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A2F358(void *a1)
{
  matched = type metadata accessor for MatchExtractorService(0);
  v5 = sub_1C43FBD18(matched);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4EF9378();
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  sub_1C4EF93D8();
  swift_allocObject();
  sub_1C4EF93C8();
  sub_1C4EF9368();
  sub_1C4EF9388();
  v36 = a1;
  sub_1C456902C(&qword_1EC0BDF80, &unk_1C4F45940);
  sub_1C4A319F8();
  v11 = sub_1C4EF93B8();
  if (v2)
  {

    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DE10);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CF8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Linked pairs unsuccessfully saved.", v16, 2u);
      sub_1C43FBE2C();
    }
  }

  else
  {
    v18 = v11;
    v19 = v12;
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2DE10);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      sub_1C440BE40(v23);
      _os_log_impl(&dword_1C43F8000, v21, v22, "Saving linked pairs to json...", v19, 2u);
      v19 = v18;
      v18 = v1;
      sub_1C43FBE2C();
    }

    sub_1C4EF9AA8();
    sub_1C4407580();
    sub_1C4A31C54(v1, v8, v24);
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v36 = v34;
      *v27 = 136315138;
      sub_1C4EF98F8();
      v35 = v19;
      sub_1C4A31C0C(&qword_1EDDFF9E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v28 = sub_1C4F02858();
      v30 = v29;
      sub_1C441A024();
      sub_1C4A31CB4(v8, v31);
      v32 = sub_1C441D828(v28, v30, &v36);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1C43F8000, v25, v26, "Linked pairs successfully saved to %s", v27, 0xCu);
      sub_1C440962C(v34);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
      sub_1C4434000(v18, v35);
    }

    else
    {
      sub_1C4434000(v18, v19);

      sub_1C441A024();
      return sub_1C4A31CB4(v8, v33);
    }
  }
}

void sub_1C4A2F810(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v366 = a3;
  v318 = a1;
  v5 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2C8(&v309 - v7);
  v8 = sub_1C4EFEEF8();
  v9 = sub_1C43FFAE0(v8, &v345);
  v353 = v10;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v12 - v11);
  v13 = sub_1C4F00DD8();
  v14 = sub_1C43FFAE0(v13, &v360);
  v367 = v15;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v17 - v16);
  v18 = sub_1C4F00DC8();
  v19 = sub_1C43FFAE0(v18, v359);
  v347 = v20;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  sub_1C43FD2C8(v22);
  v23 = sub_1C4F01188();
  v24 = sub_1C43FFAE0(v23, &v362);
  v346 = v25;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v28 = sub_1C43FD2C8(v27 - v26);
  v361 = type metadata accessor for ExtractedMatch(v28);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  v33 = sub_1C43FD2C8(v32);
  v34 = type metadata accessor for Source(v33);
  v35 = sub_1C43FBD18(v34);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v38 = sub_1C43FD2C8(v37);
  matched = type metadata accessor for MatchExtractorService(v38);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBCC4();
  v356 = v41 - v40;
  v42 = sub_1C456902C(&qword_1EC0C1A18, &unk_1C4F45960);
  v43 = sub_1C43FBD18(v42);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FD230();
  v48 = sub_1C43FD2C8(v47);
  v49 = type metadata accessor for EntityTriple(v48);
  v50 = sub_1C43FFAE0(v49, v370);
  v350 = v51;
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v309 - v54;
  v56 = type metadata accessor for ConstructionGraphTriple(0);
  v57 = sub_1C43FFAE0(v56, v369);
  v342 = v58;
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBCC4();
  v61 = v60 - v59;
  v62 = type metadata accessor for EntityMatch(0);
  v63 = sub_1C43FFAE0(v62, &v377);
  v362 = v64;
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBCC4();
  sub_1C43FD2C8(v66 - v65);
  v67 = sub_1C4EFD548();
  v368 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v309 - v72;
  v74 = sub_1C43FC034();
  v76 = sub_1C456902C(v74, v75);
  v77 = v76 - 8;
  MEMORY[0x1EEE9AC00](v76);
  v79 = &v309 - v78;
  sub_1C445FFF0(a2, &v309 - v78, &qword_1EC0C1A20, &unk_1C4F4E130);
  v80 = *&v79[*(v77 + 56)];
  v81 = v368;
  v82 = *(v368 + 8);
  v355 = v368 + 8;
  v354 = v82;
  v82(v79, v67);
  sub_1C445FFF0(a2, v79, &qword_1EC0C1A20, &unk_1C4F4E130);

  v352 = v73;
  v83 = sub_1C4409F48();
  v84(v83);
  v360 = *(v80 + 16);
  if (!v360)
  {
LABEL_107:

    sub_1C440094C();
    v308();
    return;
  }

  v357 = v67;
  sub_1C43FC354();
  v359[1] = *(matched + 28);
  v359[0] = v85 + v86;
  v312 = v353 + 8;
  v327 = v81 + 16;
  v326 = v346 + 8;
  v325 = v367 + 8;
  v324 = v347 + 16;
  v323 = v347 + 8;
  sub_1C44051DC();
  v87 = v364;
  sub_1C4415B7C();
  v358 = v88;
  v338 = v91;
  while (v90 < *(v88 + 16))
  {
    v92 = *(v89 + 72);
    v367 = v90;
    sub_1C4A31C54(v359[0] + v92 * v90, v87, type metadata accessor for EntityMatch);
    v93 = v363;
    v94 = *(v363 + 20);

    v95 = sub_1C44FEDEC(v87 + v94);

    v96 = *(v93 + 24);
    v97 = sub_1C4EFEFF8();

    v368 = v95;
    v98 = v87 + v96;
    if (v97)
    {
      v99 = GraphStore.loadConstructionGraphTriples(subject:)(v98);

      v100 = *(v99 + 16);
      if (!v100)
      {
        goto LABEL_17;
      }

      sub_1C443FE70(MEMORY[0x1E69E7CC0]);
      v87 = v371;
      sub_1C4425E24();
      v101 = v343;
      do
      {
        sub_1C43FF44C();
        sub_1C4A31C54(a2, v61, v102);
        sub_1C444FEAC();
        if (v103)
        {
          sub_1C44252F0();
          v101 = v343;
          v87 = v371;
        }

        v375 = v101;
        v376 = sub_1C4A31C0C(&qword_1EC0BE158, type metadata accessor for ConstructionGraphTriple, &protocol conformance descriptor for ConstructionGraphTriple);
        sub_1C4422F90(&v373);
        sub_1C43FF44C();
        sub_1C4A31C54(v61, v104, v105);
        sub_1C4416298();
        sub_1C4A31CB4(v61, type metadata accessor for ConstructionGraphTriple);
        a2 = (a2 + v99);
        --v100;
      }

      while (v100);
    }

    else
    {
      v106 = sub_1C44FEDEC(v98);

      v107 = *(v106 + 16);
      if (!v107)
      {
LABEL_17:

        v87 = MEMORY[0x1E69E7CC0];
        v113 = v365;
        goto LABEL_18;
      }

      sub_1C443FE70(MEMORY[0x1E69E7CC0]);
      v87 = v371;
      sub_1C4425E24();
      v108 = v351;
      do
      {
        sub_1C442CF9C();
        sub_1C4A31C54(a2, v55, v109);
        sub_1C444FEAC();
        if (v103)
        {
          sub_1C44252F0();
          v108 = v351;
          v87 = v371;
        }

        v375 = v108;
        v376 = sub_1C4A31C0C(&qword_1EC0BE208, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
        sub_1C4422F90(&v373);
        sub_1C442CF9C();
        sub_1C4A31C54(v55, v110, v111);
        sub_1C4416298();
        sub_1C4412160();
        sub_1C4A31CB4(v55, v112);
        a2 = (a2 + v106);
        --v107;
      }

      while (v107);
    }

    sub_1C44051DC();
    sub_1C4415B7C();
    v95 = v368;
LABEL_18:
    if (*(v95 + 16) && *(v87 + 16))
    {
      sub_1C440BAA8(v113, 1, 1, v361);
      sub_1C4EFD4C8();
      sub_1C4A31C0C(&unk_1EDDFE830, MEMORY[0x1E69A92C8], MEMORY[0x1E69A92E8]);
      sub_1C442BD48();
      sub_1C4F01578();
      sub_1C442BD48();
      sub_1C4F01578();
      v114 = v80;
      v115 = v372;
      v116 = v373 == v371 && v374 == v372;
      if (v116)
      {
        sub_1C440094C();
        v123();
      }

      else
      {
        v117 = sub_1C4F02938();
        sub_1C440094C();
        v118();

        if ((v117 & 1) == 0)
        {
          _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
          sub_1C442BD48();
          sub_1C4F01578();
          sub_1C442BD48();
          sub_1C4F01578();
          v119 = v372;
          if (v373 == v371 && v374 == v372)
          {
            sub_1C43FC034();
            sub_1C440094C();
            v164();
          }

          else
          {
            v121 = sub_1C4F02938();
            sub_1C440094C();
            v122();

            if ((v121 & 1) == 0)
            {
LABEL_44:

              v162 = v361;
              a2 = v349;
              goto LABEL_45;
            }
          }

          sub_1C4407580();
          sub_1C44149D4();
          sub_1C4A31C54(v165, v166, v167);
          sub_1C44F40EC();
          v168 = v314;
          sub_1C4EFEBF8();
          v169 = v316;
          v170 = v315;
          sub_1C440BAA8(v316, 1, 1, v315);
          sub_1C4409F48();
          sub_1C47CB9E0();
          v347 = v171;
          v173 = v172;

          sub_1C4420C3C(v169, &qword_1EC0B9A08, &unk_1C4F107B0);
          sub_1C4402C08();
          v174(v168, v170);
          sub_1C441A024();
          sub_1C4A31CB4(v119, v175);
          v353 = v173;
          if (!v173)
          {
            sub_1C4409A34();
            goto LABEL_44;
          }

          sub_1C4407580();
          sub_1C4A31C54(v366, v119, v176);
          sub_1C4812C40();
          sub_1C47CB318();
          v346 = v177;
          v179 = v178;

          sub_1C441A024();
          sub_1C4A31CB4(v119, v180);
          a2 = v349;
          v341 = v179;
          if (v179)
          {
            _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
            v181 = v368;
            if (!*(v368 + 16))
            {
              goto LABEL_114;
            }

            sub_1C43FC354();
            sub_1C442CF9C();
            v183 = v310;
            sub_1C4A31C54(v181 + v182, v310, v184);

            sub_1C440E5B8();
            sub_1C44149D4();
            sub_1C4A31C54(v185, v186, v187);
            sub_1C4412160();
            sub_1C4A31CB4(v183, v188);
            sub_1C441101C();
            if (__OFSUB__(v183, 1))
            {
              goto LABEL_115;
            }

            if (!*(v87 + 16))
            {
              goto LABEL_116;
            }

            sub_1C4405EEC();
            if (!v116 & v103)
            {
              v190 = 0;
            }

            else
            {
              v190 = v189;
            }

            sub_1C442E860(v87 + 32, &v373);
            sub_1C4409678(&v373, v375);
            sub_1C441C3C0();
            v191 = sub_1C442BD48();
            v192(v191);
            v193 = v371;
            sub_1C440962C(&v373);
            sub_1C4435204();
            v195 = *(v194 - 256);
            v196 = v313;
            v197 = (v313 + v195[8]);
            v198 = v195[5];
            sub_1C4402C08();
            v199(v196 + v198, v317, v357);
            v200 = (v196 + v195[6]);
            v201 = v353;
            *v200 = v347;
            v200[1] = v201;
            v200[2] = v190;
            v200[3] = 0;
            v202 = (v196 + v195[7]);
            v203 = v341;
            *v202 = v346;
            v202[1] = v203;
            v202[2] = v193;
            v202[3] = 0;
            *v197 = 0;
            v197[1] = 0;
            *(v196 + v195[9]) = v3;
            v204 = MEMORY[0x1E69E7CC0];
            v205 = *(MEMORY[0x1E69E7CC0] + 16);

            if (v205)
            {
              if (!v204[2])
              {
                goto LABEL_117;
              }

              v206 = v204[4];
              v337 = v204[5];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            else
            {
              v206 = 0;
              v337 = 0xE000000000000000;
            }

            v275 = v204[2];

            if (v275)
            {
              if (!v204[2])
              {
                goto LABEL_118;
              }

              v276 = v204[5];
              v336 = v204[4];
              sub_1C441B7D8(v276);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            }

            else
            {
              v336 = 0;
              v368 = 0xE000000000000000;
            }

            sub_1C447F204();
            v277 = sub_1C4EFD3D8();
            MEMORY[0x1C6940010](v277);

            sub_1C4410C38();
            MEMORY[0x1C6940010](v347, v353);
            sub_1C4410C38();
            MEMORY[0x1C6940010](v206, v337);
            sub_1C4410C38();
            MEMORY[0x1C6940010](v346, v341);
            sub_1C4410C38();
            MEMORY[0x1C6940010](v336, v368);
            sub_1C4410C38();
            sub_1C4F01A98();
            v278 = v331;
            sub_1C4F01178();
            v279 = sub_1C4F01148();
            v281 = v280;
            sub_1C4402C08();
            v282(v278, v332);
            if (v281 >> 60 == 15)
            {
              goto LABEL_120;
            }

            sub_1C4409A34();

            sub_1C440F944();
            v284 = sub_1C4A31C0C(&qword_1EDDFEAD0, v283, MEMORY[0x1E6966618]);
            sub_1C441B7D8(v284);
            sub_1C44104E0();
            v286 = *(v285 - 256);
            sub_1C4F00DB8();
            v287 = v279;
            v288 = sub_1C43FC034();
            sub_1C44344B8(v288, v289);
            v290 = sub_1C43FC034();
            v291 = v344;
            sub_1C4498FD8(v290, v292, v196);
            v344 = v291;
            v293 = sub_1C43FC034();
            sub_1C441DFEC(v293, v294);
            v295 = v333;
            sub_1C4F00DA8();
            sub_1C4402C08();
            v296(v196, v286);
            sub_1C4402C08();
            v297 = v328;
            v298 = v329;
            v299(v328, v295, v329);
            v254 = sub_1C44D5F88(v297);
            v301 = v300;
            v302 = sub_1C4EF9A48();
            sub_1C441B7D8(v302);
            v304 = v303;
            sub_1C4434000(v254, v301);
            sub_1C441DFEC(v287, v281);
            sub_1C4402C08();
            v305(v333, v298);
            sub_1C440094C();
            v306();
            v80 = v365;
            sub_1C4420C3C(v365, &qword_1EC0C1A18, &unk_1C4F45960);
            v307 = v313;
            *v313 = v368;
            v307[1] = v304;
            goto LABEL_90;
          }

          sub_1C4409A34();

          v162 = v361;
LABEL_45:
          v163 = v348;
          v80 = v365;
LABEL_91:
          sub_1C445FFF0(v80, v163, &qword_1EC0C1A18, &unk_1C4F45960);
          if (sub_1C44157D4(v163, 1, v162) == 1)
          {
            sub_1C4420C3C(v80, &qword_1EC0C1A18, &unk_1C4F45960);

            sub_1C44326A8();
            sub_1C4420C3C(v163, &qword_1EC0C1A18, &unk_1C4F45960);
            sub_1C44051DC();
            sub_1C4415B7C();
          }

          else
          {
            sub_1C4A31B38(v163, a2);
            v263 = *(v366 + *(matched + 24));
            v264 = *a2;
            v265 = a2[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v266 = sub_1C442BD48();
            v80 = sub_1C4499AD0(v266, v267, v263);

            if ((v80 & 1) == 0)
            {
              sub_1C4407580();
              v80 = v356;
              sub_1C4A31C54(v366, v356, v268);
              sub_1C4EFD3D8();
              sub_1C4A31594(v318, a2);

              sub_1C441A024();
              sub_1C4A31CB4(v80, v269);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C44869B4(&v373, v264, v265, v270, v271, v272, v273, v274, v309, v310, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330);
            }

            sub_1C4A31CB4(a2, type metadata accessor for ExtractedMatch);
            sub_1C4420C3C(v365, &qword_1EC0C1A18, &unk_1C4F45960);
            sub_1C44326A8();
            sub_1C4415B7C();
            sub_1C44051DC();
          }

          goto LABEL_96;
        }
      }

      sub_1C4407580();
      sub_1C44051DC();
      sub_1C44149D4();
      sub_1C4A31C54(v124, v125, v126);
      sub_1C44F40EC();
      sub_1C47CAB88();
      v128 = v127;
      v130 = v129;

      sub_1C441A024();
      sub_1C4A31CB4(v115, v131);
      if (!v130)
      {
        goto LABEL_44;
      }

      v353 = v128;
      sub_1C4407580();
      sub_1C4A31C54(v114, v115, v132);
      sub_1C4812C40();
      sub_1C47CAB88();
      v347 = v133;
      v135 = v134;

      sub_1C441A024();
      sub_1C4A31CB4(v115, v136);
      v346 = v135;
      if (!v135)
      {

        goto LABEL_44;
      }

      v341 = v130;
      sub_1C4A31C54(v114, v115, type metadata accessor for MatchExtractorService);
      sub_1C44F40EC();
      v137 = sub_1C47CA8A4();

      sub_1C4A31CB4(v115, type metadata accessor for MatchExtractorService);
      sub_1C4A31C54(v114, v115, type metadata accessor for MatchExtractorService);
      sub_1C4812C40();
      v138 = sub_1C47CA8A4();
      v139 = v368;

      sub_1C4A31CB4(v356, type metadata accessor for MatchExtractorService);
      sub_1C4EFD4C8();
      if (!*(v139 + 16))
      {
        goto LABEL_109;
      }

      sub_1C43FC354();
      sub_1C442CF9C();
      v141 = v321;
      sub_1C4A31C54(v139 + v140, v321, v142);

      sub_1C440E5B8();
      sub_1C44149D4();
      sub_1C4A31C54(v143, v144, v145);
      sub_1C4412160();
      sub_1C4A31CB4(v141, v146);
      sub_1C441101C();
      if (__OFSUB__(v141, 1))
      {
        goto LABEL_110;
      }

      v368 = v138;
      sub_1C4405EEC();
      if (!v116 & v103)
      {
        v148 = 0;
      }

      else
      {
        v148 = v147;
      }

      sub_1C456902C(&qword_1EC0C1A28, &unk_1C4F45970);
      inited = swift_initStackObject();
      sub_1C442FFB4(inited);
      *(v150 + 40) = 0xE600000000000000;
      *(v150 + 48) = v137;
      sub_1C456902C(&qword_1EC0B9498, &qword_1C4F0F020);
      v337 = sub_1C4F00F28();
      if (!*(v87 + 16))
      {
        goto LABEL_111;
      }

      v336 = v148;
      sub_1C442E860(v87 + 32, &v373);
      v152 = v375;
      v151 = v376;
      sub_1C4409678(&v373, v375);
      sub_1C441C3C0();
      v153(v152, v151);
      v335 = v371;
      v154 = swift_initStackObject();
      sub_1C442FFB4(v154);
      v155 = v368;
      *(v156 + 40) = 0xE600000000000000;
      *(v156 + 48) = v155;
      v157 = sub_1C4F00F28();
      sub_1C441B7D8(v157);
      sub_1C440962C(&v373);
      v158 = *(v364 + *(v363 + 40));
      if (v158)
      {
        v159 = sub_1C44735D4(0x6E6F73616572, 0xE600000000000000, v158);
        v161 = v160;
      }

      else
      {
        v159 = 0;
        v161 = 0;
      }

      v207 = v341;
      sub_1C4435204();
      v209 = *(v208 - 256);
      v210 = v340;
      v211 = (v340 + v209[8]);
      sub_1C4402C08();
      v334 = v212;
      v213(v210 + v212, v345, v357);
      v214 = (v210 + v209[6]);
      *v214 = v353;
      v214[1] = v207;
      v215 = v337;
      v214[2] = v336;
      v214[3] = v215;
      v216 = (v210 + v209[7]);
      v217 = v346;
      *v216 = v347;
      v216[1] = v217;
      v218 = v368;
      v216[2] = v335;
      v216[3] = v218;
      *v211 = v159;
      v211[1] = v161;
      v219 = v215;
      *(v210 + v209[9]) = v3;
      if (v215)
      {
        v220 = MEMORY[0x1E69E7CC0];
        if (*(v215 + 16) && (sub_1C445FAA8(0x736C69616D65, 0xE600000000000000), (v221 & 1) != 0))
        {
          sub_1C44045A0();
        }

        else
        {
          v97 = v220;
        }
      }

      else
      {
        v220 = MEMORY[0x1E69E7CC0];
        v97 = MEMORY[0x1E69E7CC0];
      }

      v222 = *(v97 + 16);

      if (v222)
      {
        if (v219 && *(v219 + 16) && (sub_1C445FAA8(0x736C69616D65, 0xE600000000000000), (v223 & 1) != 0))
        {
          sub_1C44045A0();
        }

        else
        {
          v97 = v220;
        }

        if (!*(v97 + 16))
        {
          goto LABEL_112;
        }

        v224 = *(v97 + 40);
        v337 = *(v97 + 32);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v337 = 0;
        v224 = 0xE000000000000000;
      }

      if (v368 && *(v368 + 16) && (sub_1C445FAA8(0x736C69616D65, 0xE600000000000000), (v225 & 1) != 0))
      {
        sub_1C44045A0();
      }

      else
      {
        v97 = v220;
      }

      v226 = *(v97 + 16);

      if (v226)
      {
        if (v368 && *(v368 + 16) && (sub_1C445FAA8(0x736C69616D65, 0xE600000000000000), (v227 & 1) != 0))
        {
          sub_1C44045A0();
        }

        else
        {
          v97 = v220;
        }

        if (!*(v97 + 16))
        {
          goto LABEL_113;
        }

        v228 = v224;
        v229 = *(v97 + 32);
        sub_1C441B7D8(*(v97 + 40));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v228 = v224;
        v229 = 0;
        v368 = 0xE000000000000000;
      }

      sub_1C447F204();
      v230 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v230);

      sub_1C4410C38();
      MEMORY[0x1C6940010](v353, v341);
      sub_1C4410C38();
      MEMORY[0x1C6940010](v337, v228);
      sub_1C4410C38();
      MEMORY[0x1C6940010](v347, v346);
      sub_1C4410C38();
      MEMORY[0x1C6940010](v229, v368);
      sub_1C4410C38();
      sub_1C4F01A98();
      v231 = v331;
      sub_1C4F01178();
      v232 = sub_1C4F01148();
      v234 = v233;
      sub_1C4402C08();
      v235(v231, v332);
      if (v234 >> 60 == 15)
      {
        goto LABEL_119;
      }

      sub_1C4409A34();

      sub_1C440F944();
      sub_1C4A31C0C(&qword_1EDDFEAD0, v236, MEMORY[0x1E6966618]);
      sub_1C44104E0();
      v238 = *(v237 - 256);
      sub_1C43FC034();
      sub_1C4F00DB8();
      v239 = sub_1C4409F48();
      sub_1C44344B8(v239, v240);
      v241 = sub_1C4409F48();
      v242 = v344;
      sub_1C4498FD8(v241, v243, v228);
      v344 = v242;
      v244 = sub_1C4409F48();
      sub_1C441DFEC(v244, v245);
      v368 = v232;
      v246 = v333;
      sub_1C43FC034();
      sub_1C4F00DA8();
      sub_1C4402C08();
      v247(v228, v238);
      sub_1C4402C08();
      v248 = v328;
      v249 = sub_1C442BD48();
      v250 = v329;
      v251(v249);
      v252 = sub_1C44D5F88(v248);
      v254 = v253;
      v353 = sub_1C4EF9A48();
      v256 = v255;
      sub_1C4434000(v252, v254);
      v257 = sub_1C4409A34();
      sub_1C441DFEC(v257, v234);
      sub_1C4402C08();
      v258(v246, v250);
      sub_1C440094C();
      v259();
      v80 = v365;
      sub_1C4420C3C(v365, &qword_1EC0C1A18, &unk_1C4F45960);
      v260 = v340;
      *v340 = v353;
      v260[1] = v256;
LABEL_90:
      sub_1C44149D4();
      sub_1C4A31B38(v261, v262);
      v162 = v361;
      sub_1C440BAA8(v254, 0, 1, v361);
      sub_1C4A31B9C(v254, v80);
      a2 = v349;
      v163 = v348;
      goto LABEL_91;
    }

    sub_1C44326A8();
    v89 = v362;
LABEL_96:
    v90 = v367 + 1;
    v88 = v358;
    if (v367 + 1 == v360)
    {
      goto LABEL_107;
    }
  }

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
}

uint64_t sub_1C4A31594(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedMatch(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = sub_1C4663244();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  sub_1C4A31C54(a2, v8, type metadata accessor for ExtractedMatch);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C458E95C(0, *(v10 + 16) + 1, 1, v10);
    v10 = v15;
  }

  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1C458E95C(v11 > 1, v12 + 1, 1, v10);
    v10 = v16;
  }

  *(v10 + 16) = v12 + 1;
  sub_1C43FC354();
  sub_1C4A31B38(v8, v10 + v13 + *(v5 + 72) * v12);
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *a1;
  result = sub_1C4662724();
  *a1 = v17;
  return result;
}

uint64_t sub_1C4A31734(void *a1, uint64_t a2)
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
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v32 = v7;
  v33 = v3;
  v34 = a1;
  if (v6)
  {
    while (1)
    {
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v8 << 6);
      v11 = (*(a2 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(a2 + 56) + 8 * v10);
      v15 = *a1;
      v16 = *(*a1 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v16 && (v17 = sub_1C445FAA8(v13, v12), (v18 & 1) != 0))
      {
        v37 = *(*(v15 + 56) + 8 * v17);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v37 = MEMORY[0x1E69E7CC0];
      }

      sub_1C49D4B18(v14);
      swift_isUniquelyReferenced_nonNull_native();
      v19 = *a1;
      v36 = *a1;
      v20 = v13;
      v21 = sub_1C445FAA8(v13, v12);
      if (__OFADD__(*(v19 + 16), (v22 & 1) == 0))
      {
        break;
      }

      v23 = v21;
      v24 = v22;
      sub_1C456902C(&qword_1EC0BA898, &unk_1C4F45950);
      if (sub_1C4F02458())
      {
        v25 = sub_1C445FAA8(v20, v12);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_28;
        }

        v23 = v25;
      }

      if (v24)
      {
        *(v36[7] + 8 * v23) = v37;
      }

      else
      {
        v36[(v23 >> 6) + 8] |= 1 << v23;
        v27 = (v36[6] + 16 * v23);
        *v27 = v20;
        v27[1] = v12;
        *(v36[7] + 8 * v23) = v37;
        v28 = v36[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_27;
        }

        v36[2] = v30;
      }

      v6 &= v6 - 1;
      v3 = v33;
      *v34 = v36;
      a1 = v34;
      v7 = v32;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_1C4F029F8();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_4:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for MatchExtractorService(uint64_t a1)
{
  result = qword_1EC0C1A30;
  if (!qword_1EC0C1A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C4A319F8()
{
  result = qword_1EC0C1A00;
  if (!qword_1EC0C1A00)
  {
    sub_1C4572308(&qword_1EC0BDF80, &unk_1C4F45940);
    sub_1C4A31A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1A00);
  }

  return result;
}

unint64_t sub_1C4A31A84()
{
  result = qword_1EC0C1A08;
  if (!qword_1EC0C1A08)
  {
    sub_1C4572308(&unk_1EC0C2EB0, &qword_1C4F32390);
    sub_1C4A31C0C(&qword_1EC0C1A10, type metadata accessor for ExtractedMatch, &protocol conformance descriptor for ExtractedMatch);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C1A08);
  }

  return result;
}

uint64_t sub_1C4A31B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedMatch(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A31B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C1A18, &unk_1C4F45960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4A31C0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4A31C54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4A31CB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1C4A31D34(uint64_t a1)
{
  sub_1C4EF98F8();
  if (v1 <= 0x3F)
  {
    sub_1C4A31DD0();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GraphStore(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4A31DD0()
{
  if (!qword_1EC0C1A40)
  {
    v0 = sub_1C4F01B38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C1A40);
    }
  }
}

void *sub_1C4A31E28(uint64_t a1, uint64_t a2)
{
  v57 = sub_1C4EFF0C8();
  v5 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v46[1] = v2;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1C459D768(0, v7, 0);
    v8 = v63;
    v9 = sub_1C486C288();
    v11 = v10;
    v13 = v12;
    v14 = a1 + 56;
    result = objc_opt_self();
    v16 = v11;
    v17 = v9;
    v18 = 0;
    v46[0] = a2;
    v53 = (a2 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config);
    v54 = result;
    v55 = v5;
    v51 = v5 + 8;
    v52 = v5 + 16;
    v47 = a1 + 64;
    v48 = v7;
    v49 = a1 + 56;
    v50 = a1;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v17 < 1 << *(a1 + 32))
      {
        v62 = v13;
        v19 = v17 >> 6;
        v20 = 1 << v17;
        if ((*(v14 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v16)
        {
          goto LABEL_27;
        }

        v59 = v17;
        v60 = v16;
        v58 = v18;
        v21 = v55;
        v22 = *(a1 + 48) + *(v55 + 72) * v17;
        v23 = *(v55 + 16);
        v61 = v8;
        v25 = v56;
        v24 = v57;
        v23(v56, v22, v57);
        v26 = *v53;
        v27 = v53[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v28 = sub_1C4EFF068();
        v30 = v29;
        v31 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
        v32 = sub_1C4673B1C(v26, v27, 0x69616D45656D6173, 0xEF6E69616D6F446CLL, v28, v30);
        v33 = [v54 featureValueWithInt64_];
        v34 = v25;
        v8 = v61;
        result = (*(v21 + 8))(v34, v24);
        v63 = v8;
        v36 = *(v8 + 16);
        v35 = *(v8 + 24);
        if (v36 >= v35 >> 1)
        {
          result = sub_1C459D768((v35 > 1), v36 + 1, 1);
          v8 = v63;
        }

        *(v8 + 16) = v36 + 1;
        v37 = v8 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v33;
        if (v62)
        {
          goto LABEL_31;
        }

        v14 = v49;
        a1 = v50;
        v17 = 1 << *(v50 + 32);
        result = v59;
        if (v59 >= v17)
        {
          goto LABEL_28;
        }

        v38 = *(v49 + 8 * v19);
        if ((v38 & v20) == 0)
        {
          goto LABEL_29;
        }

        if (*(v50 + 36) != v60)
        {
          goto LABEL_30;
        }

        v39 = v38 & (-2 << (v59 & 0x3F));
        if (v39)
        {
          v17 = __clz(__rbit64(v39)) | v59 & 0x7FFFFFFFFFFFFFC0;
          v40 = v48;
        }

        else
        {
          v41 = v19 << 6;
          v42 = v19 + 1;
          v40 = v48;
          v43 = (v47 + 8 * v19);
          while (v42 < (v17 + 63) >> 6)
          {
            v45 = *v43++;
            v44 = v45;
            v41 += 64;
            ++v42;
            if (v45)
            {
              result = sub_1C440951C(v59, v60, 0);
              v17 = __clz(__rbit64(v44)) + v41;
              goto LABEL_19;
            }
          }

          result = sub_1C440951C(v59, v60, 0);
        }

LABEL_19:
        v18 = v58 + 1;
        if (v58 + 1 == v40)
        {

          return v8;
        }

        v13 = 0;
        v16 = *(a1 + 36);
        if ((v17 & 0x8000000000000000) != 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C4A32204(void *a1, void *a2)
{
  v4 = sub_1C4EFF0C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v33 - v11;
  v12 = a2[2];
  if (!v12)
  {
    return 1;
  }

  v13 = a1[2];
  if (!v13)
  {
    return 1;
  }

  if (v12 >= v13)
  {
    v14 = a1;
  }

  else
  {
    v14 = a2;
  }

  if (v12 < v13)
  {
    a2 = a1;
  }

  v15 = v14 + 7;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14[7];
  v19 = (v16 + 63) >> 6;
  v42 = v5 + 16;
  v37 = v5 + 32;
  v40 = a2 + 7;
  v20 = (v5 + 8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v43 = a2;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = 0;
  v34 = v19;
  v35 = v14 + 7;
  v36 = v5;
  v38 = v14;
  if (v18)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v19)
    {

      return 1;
    }

    v18 = v15[v23];
    ++v22;
    if (v18)
    {
      v22 = v23;
      do
      {
LABEL_16:
        v24 = v14[6];
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v26 = v39;
        v25(v39, v24 + v41 * (__clz(__rbit64(v18)) | (v22 << 6)), v4);
        (*(v5 + 32))(v44, v26, v4);
        if (v43[2])
        {
          v27 = v43;
          sub_1C450232C(&qword_1EDDFE820, MEMORY[0x1E69A9820]);
          v28 = sub_1C4F00FD8();
          v29 = ~(-1 << *(v27 + 32));
          while (1)
          {
            v30 = v28 & v29;
            if (((*(v40 + (((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v28 & v29)) & 1) == 0)
            {
              break;
            }

            v25(v7, v43[6] + v30 * v41, v4);
            sub_1C450232C(&qword_1EDDFCC98, MEMORY[0x1E69A9830]);
            v31 = sub_1C4F010B8();
            v32 = *v20;
            (*v20)(v7, v4);
            v28 = v30 + 1;
            if (v31)
            {

              v32(v44, v4);
              return 0;
            }
          }
        }

        v18 &= v18 - 1;
        result = (*v20)(v44, v4);
        v15 = v35;
        v5 = v36;
        v14 = v38;
        v19 = v34;
      }

      while (v18);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A32590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
LABEL_13:
  while (v9)
  {
    v13 = v9;
LABEL_19:
    v9 = (v13 - 1) & v13;
    if (*(v6 + 16))
    {
      v24 = v4;
      v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
      v17 = *v15;
      v16 = v15[1];
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v18 = sub_1C4F02B68();
      v19 = ~(-1 << *(v6 + 32));
      do
      {
        v20 = v18 & v19;
        if (((*(v6 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
        {

          v4 = v24;
          goto LABEL_13;
        }

        v21 = (*(v6 + 48) + 16 * v20);
        if (*v21 == v17 && v21[1] == v16)
        {
          break;
        }

        v23 = sub_1C4F02938();
        v18 = v20 + 1;
      }

      while ((v23 & 1) == 0);

      return 0;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 1;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4A32790(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C4A34400(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config, _s10ViewConfigVMa);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_store) = a3;
  return v3;
}

uint64_t sub_1C4A32810()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v6[2] = v0[4];
  v6[3] = v3;
  v6[4] = v4;
  v6[5] = v1;
  v6[6] = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C446C37C(sub_1C4A343A8, v6);
}

uint64_t sub_1C4A328A4()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal____lazy_storage___featureNames);
  }

  else
  {
    v3 = v0;
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, 1, 0);
    v4 = v10;
    v6 = *(v10 + 16);
    v5 = *(v10 + 24);
    if (v6 >= v5 >> 1)
    {
      v9 = sub_1C43FCFE8(v5);
      sub_1C44CD9C0(v9, v6 + 1, 1);
      v4 = v10;
    }

    *(v4 + 16) = v6 + 1;
    v7 = v4 + 16 * v6;
    *(v7 + 32) = 0x69616D45656D6173;
    *(v7 + 40) = 0xEF6E69616D6F446CLL;
    v2 = sub_1C4499940();
    *(v3 + v1) = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C4A32994(uint64_t a1)
{
  v247 = a1;
  v245 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v267 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD230();
  sub_1C43FD2C8(v6);
  v239 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v238 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1C43FD2C8(&v226 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v269 = type metadata accessor for GraphTriple(v10);
  sub_1C43FCDF8();
  v262 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBF38();
  v266 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v265 = v17;
  v18 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v18 - 8);
  sub_1C43FD2C8(&v226 - v19);
  v20 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v22 = v21;
  v260 = v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  v257 = &v226 - v27;
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD230();
  sub_1C43FD2C8(v29);
  v255 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v251 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  v263 = v33;
  v246 = v1;
  v256 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_store);
  sub_1C486DFC0();
  v259 = v34;
  v35 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v36 = *(sub_1C4EFEEF8() - 8);
  v37 = *(v36 + 80);
  v38 = (v37 + 32) & ~v37;
  v230 = *(v36 + 72);
  v229 = v37;
  v237 = v35;
  v39 = swift_allocObject();
  v242 = xmmword_1C4F0D130;
  *(v39 + 16) = xmmword_1C4F0D130;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v231 = v38;
  sub_1C4EFE518();
  sub_1C4D504A4();
  v40 = *MEMORY[0x1E69A95C0];
  v41 = *(v22 + 104);
  sub_1C440F974();
  v41();
  sub_1C440F974();
  v41();
  v42 = v252;
  sub_1C440F974();
  v41();
  v43 = v253;
  sub_1C440F974();
  v41();
  v44 = v254;
  v235 = v40;
  sub_1C440F974();
  v236 = v22 + 104;
  v234 = v41;
  v41();
  v224 = v44;
  v225 = 0;
  v45 = v257;
  v46 = v43;
  sub_1C4EFDCD8();

  v48 = v260 + 8;
  v47 = *(v260 + 8);
  v47(v44, v20);
  v47(v46, v20);
  v47(v42, v20);
  v47(v45, v20);
  v240 = v20;
  v260 = v48;
  v232 = v47;
  v47(v261, v20);
  v49 = sub_1C4EFF8F8();
  v50 = v258;
  v243 = v49;
  sub_1C440BAA8(v258, 1, 1, v49);
  v51 = sub_1C498DB80();
  sub_1C482ADC8(v50);
  v52 = *(v51 + 16);
  v53 = MEMORY[0x1E69E7CC0];
  v248 = v51;
  if (v52)
  {
    v54 = v265;
    v269 = v265 + *(v269 + 32);
    sub_1C43FBF6C();
    v56 = v51 + v55;
    v268 = *(v57 + 72);
    do
    {
      sub_1C4407598();
      sub_1C443BEE4(v56, v54, v58);
      v59 = *(v269 + 8);
      v270[0] = *v269;
      v270[1] = v59;
      sub_1C4415EA8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v60 = sub_1C4F02058();

      v61 = *(v60 + 16);
      if (v61)
      {
        v62 = (v60 + 32 * v61);
        v64 = *v62;
        v63 = v62[1];
        v66 = v62[2];
        v65 = v62[3];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        sub_1C440F95C();
        sub_1C449F17C(v54, v67);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C458B7F4(0, *(v53 + 16) + 1, 1, v53);
          v53 = v72;
        }

        v69 = *(v53 + 16);
        v68 = *(v53 + 24);
        if (v69 >= v68 >> 1)
        {
          v73 = sub_1C43FCFE8(v68);
          sub_1C458B7F4(v73, v69 + 1, 1, v53);
          v53 = v74;
        }

        *(v53 + 16) = v69 + 1;
        v70 = (v53 + 32 * v69);
        v70[4] = v64;
        v70[5] = v63;
        v70[6] = v66;
        v70[7] = v65;
        v54 = v265;
      }

      else
      {
        sub_1C440F95C();
        sub_1C449F17C(v54, v71);
      }

      v56 += v268;
      --v52;
    }

    while (v52);
  }

  v75 = *(v53 + 16);
  if (v75)
  {
    v270[0] = MEMORY[0x1E69E7CC0];
    v76 = sub_1C4411048();
    sub_1C44CD9C0(v76, v75, 0);
    v77 = v270[0];
    v52 = v53 + 56;
    do
    {
      v79 = *(v52 - 24);
      v78 = *(v52 - 16);
      v80 = *(v52 - 8);
      v81 = *v52;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v82 = MEMORY[0x1C693FEF0](v79, v78, v80, v81);
      v84 = v83;

      v270[0] = v77;
      v86 = *(v77 + 16);
      v85 = *(v77 + 24);
      if (v86 >= v85 >> 1)
      {
        v88 = sub_1C43FCFE8(v85);
        sub_1C44CD9C0(v88, v86 + 1, 1);
        v77 = v270[0];
      }

      *(v77 + 16) = v86 + 1;
      v87 = v77 + 16 * v86;
      *(v87 + 32) = v82;
      *(v87 + 40) = v84;
      v52 += 32;
      --v75;
    }

    while (v75);
  }

  else
  {

    v77 = MEMORY[0x1E69E7CC0];
  }

  v89 = 0;
  v90 = *(v77 + 16);
  v268 = v77 + 32;
  v269 = v90;
  v91 = MEMORY[0x1E69E7CC0];
LABEL_19:
  while (v89 != v269)
  {
    if (v89 >= *(v77 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      swift_once();
      goto LABEL_77;
    }

    v92 = (v268 + 16 * v89);
    v94 = *v92;
    v93 = v92[1];
    v95 = qword_1EC0B6F80;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (v95 != -1)
    {
      swift_once();
    }

    ++v89;
    v96 = qword_1EC1529D8;
    if (*(qword_1EC1529D8 + 16))
    {
      sub_1C4F02AF8();
      sub_1C4F01298();
      v97 = sub_1C4F02B68();
      v98 = ~(-1 << *(v96 + 32));
      while (1)
      {
        v52 = v97 & v98;
        if (((*(v96 + 56 + (((v97 & v98) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v97 & v98)) & 1) == 0)
        {
          break;
        }

        v99 = (*(v96 + 48) + 16 * v52);
        if (*v99 != v94 || v99[1] != v93)
        {
          v101 = sub_1C4F02938();
          v97 = v52 + 1;
          if ((v101 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v271 = v91;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C44CD9C0(0, *(v91 + 16) + 1, 1);
      v91 = v271;
    }

    v52 = *(v91 + 16);
    v103 = *(v91 + 24);
    if (v52 >= v103 >> 1)
    {
      v105 = sub_1C43FCFE8(v103);
      sub_1C44CD9C0(v105, v52 + 1, 1);
      v91 = v271;
    }

    *(v91 + 16) = v52 + 1;
    v104 = v91 + 16 * v52;
    *(v104 + 32) = v94;
    *(v104 + 40) = v93;
  }

  v106 = sub_1C4499940();
  v107 = v262;
  if (!*(v106 + 16))
  {
    v113 = sub_1C4400960();
    v114(v113);
  }

  v269 = v106;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45972E0();
  v109 = sub_1C4A32204(v259, v108);

  v110 = v264;
  LODWORD(v265) = v109;
  if (v109)
  {
    v111 = v250;
    v112 = v248;
  }

  else
  {

    v116 = v233;
    sub_1C4EFD4C8();
    v117 = v244;
    sub_1C4EFDCC8();
    (*(v238 + 8))(v116, v239);
    sub_1C441753C();
    v118 = sub_1C498DB80();
    sub_1C482ADC8(v116);
    v119 = *(v251 + 8);
    v259 = (v251 + 8);
    v248 = v119;
    v119(v117, v255);
    v120 = *(v118 + 16);
    if (v120)
    {
      v270[0] = MEMORY[0x1E69E7CC0];
      sub_1C4411048();
      sub_1C459D178();
      v121 = v270[0];
      sub_1C43FBF6C();
      v239 = v118;
      v123 = v118 + v122;
      v268 = *(v124 + 72);
      v125 = (v267 + 16);
      v126 = v245;
      v127 = v228;
      do
      {
        sub_1C4407598();
        v128 = v266;
        sub_1C443BEE4(v123, v266, v129);
        (*v125)(v127, v128, v126);
        sub_1C440F95C();
        sub_1C449F17C(v128, v130);
        v270[0] = v121;
        v132 = *(v121 + 16);
        v131 = *(v121 + 24);
        if (v132 >= v131 >> 1)
        {
          sub_1C4412178(v131);
          sub_1C459D178();
          v121 = v270[0];
        }

        *(v121 + 16) = v132 + 1;
        sub_1C43FBF6C();
        (*(v134 + 32))(v121 + v133 + *(v134 + 72) * v132, v127, v126);
        v123 += v268;
        --v120;
      }

      while (v120);

      v110 = v264;
    }

    else
    {
    }

    sub_1C45972E0();
    v268 = v135;
    *(swift_allocObject() + 16) = v242;
    sub_1C4EFE518();
    sub_1C4D504A4();
    v264 = v136;
    v137 = v240;
    v138 = v234;
    (v234)(v261, v235, v240);
    sub_1C43FDA64();
    v138();
    v139 = v252;
    sub_1C43FDA64();
    v138();
    v140 = v253;
    sub_1C43FDA64();
    v138();
    v141 = v254;
    sub_1C43FDA64();
    v138();
    v224 = v141;
    v225 = 0;
    v142 = v244;
    v143 = v257;
    sub_1C4EFDCD8();

    v144 = v260;
    v145 = v232;
    v232(v141, v137);
    v145(v140, v137);
    v145(v139, v137);
    v145(v143, v137);
    v145(v261, v137);
    sub_1C441753C();
    v112 = sub_1C498DB80();
    sub_1C482ADC8(v144);
    v248(v142, v255);
    v107 = v262;
    v111 = v250;
  }

  v146 = 0;
  v147 = v112;
  v52 = *(v112 + 16);
  v268 = MEMORY[0x1E69E7CC0];
  while (v52 != v146)
  {
    if (v146 >= *(v147 + 16))
    {
      goto LABEL_81;
    }

    sub_1C4407598();
    v150 = sub_1C443BEE4(v148, v111, v149);
    MEMORY[0x1EEE9AC00](v150);
    v224 = v111;
    sub_1C479B3C8(sub_1C4A34330);
    if (v151)
    {
      sub_1C4413508();
      sub_1C4A34400(v111, v249, v153);
      v154 = v268;
      v155 = swift_isUniquelyReferenced_nonNull_native();
      v156 = v154;
      v270[0] = v154;
      v264 = v110;
      if ((v155 & 1) == 0)
      {
        sub_1C4411048();
        sub_1C459D7C8();
        v107 = v262;
        v156 = v270[0];
      }

      v158 = *(v156 + 16);
      v157 = *(v156 + 24);
      if (v158 >= v157 >> 1)
      {
        sub_1C4412178(v157);
        sub_1C459D7C8();
        v107 = v262;
        v156 = v270[0];
      }

      ++v146;
      *(v156 + 16) = v158 + 1;
      v268 = v156;
      sub_1C4413508();
      sub_1C4A34400(v249, v159, v160);
      v110 = v264;
      v111 = v250;
    }

    else
    {
      sub_1C440F95C();
      sub_1C449F17C(v111, v152);
      ++v146;
    }
  }

  v161 = *(v268 + 16);
  if (v161)
  {
    v264 = v110;
    v270[0] = MEMORY[0x1E69E7CC0];
    v162 = v107;
    sub_1C4411048();
    v164 = v163;
    sub_1C459D178();
    v165 = v270[0];
    v166 = v164 + ((*(v162 + 80) + 32) & ~*(v162 + 80));
    v269 = v162[9];
    v167 = (v267 + 16);
    v168 = v245;
    v169 = v241;
    do
    {
      sub_1C4407598();
      v170 = v266;
      sub_1C443BEE4(v166, v266, v171);
      (*v167)(v169, v170, v168);
      sub_1C440F95C();
      sub_1C449F17C(v170, v172);
      v270[0] = v165;
      v174 = *(v165 + 16);
      v173 = *(v165 + 24);
      if (v174 >= v173 >> 1)
      {
        sub_1C4412178(v173);
        sub_1C459D178();
        v165 = v270[0];
      }

      *(v165 + 16) = v174 + 1;
      sub_1C43FBF6C();
      (*(v176 + 32))(v165 + v175 + *(v176 + 72) * v174, v169, v168);
      v166 += v269;
      --v161;
    }

    while (v161);

    v110 = v264;
  }

  else
  {
  }

  sub_1C45972E0();
  v178 = v177;
  v52 = v246;

  v179 = sub_1C4A31E28(v178, v52);

  if (v265)
  {
    v180 = *(v52 + 24);
    v265 = *(v52 + 32);
    v181 = *(v52 + 40);
    v182 = *(v52 + 48);
    v183 = v247;
    v184 = *(v247 + 16);
    if (v184)
    {
      v262 = v179;
      v264 = v110;
      v270[0] = MEMORY[0x1E69E7CC0];
      v261 = v180;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v260 = v181;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v259 = v182;

      sub_1C4F02348();
      v185 = *(v52 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config);
      v268 = *(v52 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config + 8);
      v269 = v185;
      v187 = v267 + 16;
      v186 = *(v267 + 16);
      v188 = v183 + ((*(v267 + 80) + 32) & ~*(v267 + 80));
      v266 = *(v267 + 72);
      v267 = v186;
      v189 = v245;
      v190 = v227;
      do
      {
        (v267)(v190, v188, v189);
        v191 = v268;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v192 = sub_1C4EFF068();
        v194 = v193;
        v195 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
        sub_1C4673B1C(v269, v191, 0x69616D45656D6173, 0xEF6E69616D6F446CLL, v192, v194);
        (*(v187 - 8))(v190, v189);
        sub_1C4F02318();
        sub_1C4F02358();
        sub_1C4F02368();
        v196 = sub_1C4F02328();
        v188 += v266;
        --v184;
      }

      while (v184);
      v197 = v270[0];
      v52 = v246;
      v179 = v262;
      v198 = v260;
      v182 = v259;
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v197 = MEMORY[0x1E69E7CC0];
      v198 = v181;
    }

    MEMORY[0x1EEE9AC00](v196);
    *(&v226 - 6) = v197;
    *(&v226 - 5) = v216;
    *(&v226 - 4) = v198;
    *(&v226 - 3) = v182;
    v224 = v179;
    sub_1C446C37C(sub_1C4A34350, (&v226 - 8));
  }

  else
  {
    v199 = *(v52 + 16);
    v200 = *(v52 + 24);
    v264 = v110;
    v201 = v52;
    v203 = *(v52 + 32);
    v202 = *(v52 + 40);
    v204 = *(v201 + 48);
    sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
    inited = swift_initStackObject();
    v269 = &v226;
    *(inited + 16) = v242;
    *(inited + 32) = v199;
    *(inited + 40) = v200;
    MEMORY[0x1EEE9AC00](inited);
    *(&v226 - 6) = v206;
    *(&v226 - 5) = v203;
    *(&v226 - 4) = v202;
    *(&v226 - 3) = v204;
    v224 = v179;
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v207 = v264;
    sub_1C4418704(sub_1C4A3437C, (&v226 - 8), v208, v209, v210, v211, v212, v213, v226, v227);
    if (v207)
    {
      v214 = sub_1C4400960();
      v215(v214);

      swift_setDeallocating();
      sub_1C44DEE40();
    }

    swift_setDeallocating();
    sub_1C44DEE40();

    v52 = v201;
  }

  if (qword_1EDDFECD0 != -1)
  {
    goto LABEL_82;
  }

LABEL_77:
  v217 = sub_1C4F00978();
  sub_1C442B738(v217, qword_1EDE2DF70);

  v218 = sub_1C4F00968();
  v219 = sub_1C4F01CB8();

  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    v270[0] = v221;
    *v220 = 136315138;
    *(v220 + 4) = sub_1C441D828(*(v52 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config), *(v52 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config + 8), v270);
    _os_log_impl(&dword_1C43F8000, v218, v219, "SignalView %s: Wrote features", v220, 0xCu);
    sub_1C440962C(v221);
    MEMORY[0x1C6942830](v221, -1, -1);
    MEMORY[0x1C6942830](v220, -1, -1);
  }

  v222 = sub_1C4400960();
  return v223(v222);
}

uint64_t sub_1C4A340E4()
{

  sub_1C449F17C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MatchingWorkEmailAddressSignal_config, _s10ViewConfigVMa);

  return v0;
}

uint64_t sub_1C4A3416C()
{
  sub_1C4A340E4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MatchingWorkEmailAddressSignal(uint64_t a1)
{
  result = qword_1EC0C1A50;
  if (!qword_1EC0C1A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4A34218(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4A34400(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_1C4A34460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v10 = sub_1C4428DA0(a1);
  for (i = 0; ; ++i)
  {
    if (v10 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1C6940F90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v12 = *(a1 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v17 = v12;
    sub_1C4A365A4(&v17, a2, a3, a4, a5, a6);
    if (v6)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

void sub_1C4A34584(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = sub_1C4428DA0(a1);
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1C6940F90](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v10 = *(a1 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = v10;
    sub_1C4A38538(&v13, a2, a3, a4);
    if (v4)
    {

      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

unint64_t sub_1C4A34688(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ALL;
      break;
    case 2:
    case 3:
    case 6:
    case 7:
    case 10:
    case 11:
      result = 0xD000000000000015;
      break;
    case 4:
    case 8:
      result = 0xD000000000000016;
      break;
    case 5:
    case 9:
      result = 0xD000000000000018;
      break;
    case 12:
    case 13:
      result = 0xD000000000000026;
      break;
    case 14:
    case 15:
      result = 0xD000000000000028;
      break;
    case 16:
    case 17:
    case 18:
    case 19:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4A34814()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView____lazy_storage___featureNames;
  v3 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView____lazy_storage___featureNames);
  if (v3)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, 20, 0);
    v4 = 0;
    v5 = *(v13 + 16);
    v6 = 16 * v5;
    do
    {
      v7 = sub_1C4A34688(byte_1F43DAAA8[v4 + 32]);
      v9 = v8;
      v10 = *(v13 + 24);
      if (v5 >= v10 >> 1)
      {
        sub_1C44CD9C0(v10 > 1, v5 + 1, 1);
      }

      ++v4;
      *(v13 + 16) = v5 + 1;
      v11 = v13 + v6;
      *(v11 + 32) = v7;
      *(v11 + 40) = v9;
      v6 += 16;
      ++v5;
    }

    while (v4 != 20);
    v3 = sub_1C4499940();
    *(v1 + v2) = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return v3;
}

void sub_1C4A34940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a1;
  v72 = a2;
  v75 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C4428DA0(a3);
  v5 = 0;
  v6 = a3 & 0xC000000000000001;
  v7 = a3 & 0xFFFFFFFFFFFFFF8;
  while (v4 != v5)
  {
    if (v6)
    {
      v8 = MEMORY[0x1C6940F90](v5, a3);
    }

    else
    {
      if (v5 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v8 = *(a3 + 8 * v5 + 32);
    }

    v9 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return;
    }

    v10 = [v8 bundleId];
    sub_1C4F01138();

    sub_1C441A03C();
    LOBYTE(v10) = sub_1C4F013E8();

    if (v10)
    {
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v5;
  }

  v11 = 0;
  v12 = v75;
  v73 = a3 & 0xFFFFFFFFFFFFFF8;
  v76 = MEMORY[0x1E69E7CC0];
  while (v4 != v11)
  {
    if (v6)
    {
      v13 = MEMORY[0x1C6940F90](v11, a3);
    }

    else
    {
      if (v11 >= *(v7 + 16))
      {
        goto LABEL_55;
      }

      v13 = *(a3 + 8 * v11 + 32);
    }

    v14 = v13;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_54;
    }

    v15 = [v13 bundleId];
    sub_1C4F01138();

    sub_1C441A03C();
    LOBYTE(v15) = sub_1C4F013E8();

    if (v15)
    {
    }

    else
    {
      v16 = sub_1C4F02318();
      sub_1C44335E8(v16, v17, v18, v19, v20, v21, v22, v23, v68, v70, v71, v72, v73, v76);
      sub_1C4F02368();
      sub_1C4F02328();
    }

    ++v11;
    v7 = v73;
  }

  v24 = v76;
  v77 = MEMORY[0x1E69E7CC0];
  v25 = sub_1C4428DA0(v12);
  for (i = 0; v25 != i; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x1C6940F90](i, v12);
    }

    else
    {
      if (i >= *(v12 + 16))
      {
        goto LABEL_57;
      }

      v27 = *(v12 + 8 * i + 32);
    }

    v28 = v27;
    if (__OFADD__(i, 1))
    {
      goto LABEL_56;
    }

    if ([v27 direction] == 1)
    {
      v29 = sub_1C4F02318();
      sub_1C44335E8(v29, v30, v31, v32, v33, v34, v35, v36, v68, v70, v71, v72, v73, v77);
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }
  }

  v74 = sub_1C4428DA0(v77);

  v78 = MEMORY[0x1E69E7CC0];
  v37 = sub_1C4428DA0(v24);
  for (j = 0; v37 != j; ++j)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x1C6940F90](j, v24);
    }

    else
    {
      if (j >= *(v24 + 16))
      {
        goto LABEL_59;
      }

      v39 = *(v24 + 8 * j + 32);
    }

    v40 = v39;
    if (__OFADD__(j, 1))
    {
      goto LABEL_58;
    }

    if ([v39 direction] == 1)
    {
      v41 = sub_1C4F02318();
      sub_1C44335E8(v41, v42, v43, v44, v45, v46, v47, v48, v68, v70, v71, v72, v74, v78);
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }
  }

  v69 = sub_1C4428DA0(v78);

  sub_1C466F588();
  v50 = v49;
  sub_1C466F588();
  v52 = v51;
  sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1C4F0D480;
  v54 = *(v70 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config);
  v55 = *(v70 + OBJC_IVAR____TtC24IntelligencePlatformCore30MessagingInteractionSignalView_config + 8);
  v56 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  swift_bridgeObjectRetain_n();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C444FEC0();
  *(v53 + 32) = sub_1C4673B1C(v54, v55, v57 + 5, 0x80000001C4FAD4C0, v71, v72);
  v58 = sub_1C4428DA0(v12);

  if (v58 <= 1)
  {
    v59 = 1;
  }

  else
  {
    v59 = v58;
  }

  v60 = v74 / v59;
  v61 = objc_opt_self();
  *(v53 + 40) = [v61 featureValueWithDouble_];
  v62 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C444FEC0();
  *(v53 + 48) = sub_1C4673B1C(v54, v55, v63 + 5, 0x80000001C4FAD4A0, v71, v72);
  v64 = sub_1C4428DA0(v24);

  if (v64 <= 1)
  {
    v65 = 1;
  }

  else
  {
    v65 = v64;
  }

  *(v53 + 56) = [v61 featureValueWithDouble_];
  v66 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v53 + 64) = sub_1C4425E48();
  *(v53 + 72) = [v61 featureValueWithDouble_];
  v67 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  *(v53 + 80) = sub_1C4425E48();
  *(v53 + 88) = [v61 featureValueWithDouble_];
}

void sub_1C4A34F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v9);
  v120 = MEMORY[0x1E69E7CC0];
  v10 = sub_1C4428DA0(a3);
  v11 = 0;
  v118 = a3 & 0xC000000000000001;
  v12 = (v7 + 8);
  v117 = a3;
  while (v10 != v11)
  {
    if (v118)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v13)
      {
        goto LABEL_115;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v14)
    {
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
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      return;
    }

    v15 = [v4 startDate];
    sub_1C4EF9C78();

    sub_1C4EF9C38();
    v7 = sub_1C441CC2C();
    v3 = *v12;
    v16 = sub_1C43FD388();
    (v3)(v16);
    v17 = sub_1C43FCE84();
    (v3)(v17);
    if (v7)
    {
      v7 = [v4 bundleId];
      v3 = sub_1C4F01138();

      sub_1C441A03C();
      sub_1C4F013E8();
      sub_1C4435224();
      if (v3)
      {
      }

      else
      {
        v7 = &v120;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      a3 = v117;
    }

    else
    {
    }

    ++v11;
  }

  v116 = sub_1C4405F00();

  v18 = 0;
  v120 = MEMORY[0x1E69E7CC0];
  while (v10 != v18)
  {
    if (v118)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v13)
      {
        goto LABEL_117;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v14)
    {
      goto LABEL_116;
    }

    v19 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v20 = sub_1C44075B0();
    (v7)(v20);
    v21 = sub_1C43FCE84();
    (v7)(v21);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      v22 = sub_1C441A03C();
      sub_1C4409F54(v22, v23);
      sub_1C4435224();
      if (v3)
      {
      }

      else
      {
        v7 = &v120;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      a3 = v117;
    }

    else
    {
    }

    ++v18;
  }

  v115 = sub_1C4405F00();

  v24 = 0;
  v120 = MEMORY[0x1E69E7CC0];
  while (v10 != v24)
  {
    if (v118)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v13)
      {
        goto LABEL_119;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v14)
    {
      goto LABEL_118;
    }

    v25 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v26 = sub_1C44075B0();
    (v7)(v26);
    v27 = sub_1C43FCE84();
    (v7)(v27);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      v28 = sub_1C441A03C();
      sub_1C4409F54(v28, v29);
      sub_1C4435224();
      if (v3)
      {
      }

      else
      {
        v7 = &v120;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      a3 = v117;
    }

    else
    {
    }

    ++v24;
  }

  v114 = sub_1C4405F00();

  v30 = 0;
  v120 = MEMORY[0x1E69E7CC0];
  while (v10 != v30)
  {
    if (v118)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v13)
      {
        goto LABEL_121;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v14)
    {
      goto LABEL_120;
    }

    v31 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v32 = sub_1C44075B0();
    (v7)(v32);
    v33 = sub_1C43FCE84();
    (v7)(v33);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      v34 = sub_1C441A03C();
      sub_1C4409F54(v34, v35);
      sub_1C4435224();
      if (v3)
      {
      }

      else
      {
        v7 = &v120;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      a3 = v117;
    }

    else
    {
    }

    ++v30;
  }

  v113 = sub_1C4405F00();

  v36 = 0;
  v120 = MEMORY[0x1E69E7CC0];
  while (v10 != v36)
  {
    if (v118)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v13)
      {
        goto LABEL_123;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v14)
    {
      goto LABEL_122;
    }

    v37 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v38 = sub_1C44075B0();
    (v7)(v38);
    v39 = sub_1C43FCE84();
    (v7)(v39);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      v40 = sub_1C441A03C();
      sub_1C4409F54(v40, v41);
      sub_1C4435224();
      if (v3)
      {
        v7 = &v120;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      else
      {
      }

      a3 = v117;
    }

    else
    {
    }

    ++v36;
  }

  v112 = sub_1C4405F00();

  v42 = 0;
  v120 = MEMORY[0x1E69E7CC0];
  while (v10 != v42)
  {
    if (v118)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v13)
      {
        goto LABEL_125;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v14)
    {
      goto LABEL_124;
    }

    v43 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v44 = sub_1C44075B0();
    (v7)(v44);
    v45 = sub_1C43FCE84();
    (v7)(v45);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      v46 = sub_1C441A03C();
      sub_1C4409F54(v46, v47);
      sub_1C4435224();
      if (v3)
      {
        v7 = &v120;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      else
      {
      }

      a3 = v117;
    }

    else
    {
    }

    ++v42;
  }

  v111 = sub_1C4405F00();

  v48 = 0;
  v120 = MEMORY[0x1E69E7CC0];
  while (v10 != v48)
  {
    if (v118)
    {
      sub_1C44051E8();
    }

    else
    {
      sub_1C441FF04();
      if (v13)
      {
        goto LABEL_127;
      }

      sub_1C441EE18();
    }

    sub_1C4411054();
    if (v14)
    {
      goto LABEL_126;
    }

    v49 = [v4 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v50 = sub_1C44075B0();
    (v7)(v50);
    v51 = sub_1C43FCE84();
    (v7)(v51);
    if (v3)
    {
      v3 = [v4 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      v52 = sub_1C441A03C();
      sub_1C4409F54(v52, v53);
      sub_1C4435224();
      if (v3)
      {
        v7 = &v120;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4414DDC();
        sub_1C4F02328();
      }

      else
      {
      }

      a3 = v117;
    }

    else
    {
    }

    ++v48;
  }

  v110 = sub_1C4405F00();

  v54 = 0;
  v120 = MEMORY[0x1E69E7CC0];
  while (v10 != v54)
  {
    if (v118)
    {
      v56 = MEMORY[0x1C6940F90](v54, a3);
    }

    else
    {
      sub_1C44326D8();
      if (v54 >= v55)
      {
        goto LABEL_129;
      }

      v56 = *(a3 + 8 * v54 + 32);
    }

    v57 = v56;
    if (__OFADD__(v54, 1))
    {
      goto LABEL_128;
    }

    v58 = [v56 startDate];
    sub_1C44045BC();

    sub_1C4EF9C38();
    sub_1C441CC2C();
    v59 = sub_1C44075B0();
    (v7)(v59);
    v60 = sub_1C43FCE84();
    (v7)(v60);
    if (v3)
    {
      v3 = [v57 bundleId];
      sub_1C4F01138();
      sub_1C4408DEC();

      v61 = sub_1C441A03C();
      sub_1C4409F54(v61, v62);
      sub_1C4435224();
      if (v3)
      {
        v7 = &v120;
        sub_1C4F02318();
        sub_1C4413520();
        sub_1C4F02368();
        sub_1C4F02328();
      }

      else
      {
      }

      a3 = v117;
    }

    else
    {
    }

    ++v54;
  }

  v119 = sub_1C4405F00();

  sub_1C456902C(&qword_1EC0B87D8, &qword_1C4F0DBC8);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_1C4F3B920;
  swift_bridgeObjectRetain_n();
  v64 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v65 = sub_1C4400980();
  *(v63 + 32) = sub_1C442BD54(v65, v66, v67, v68);
  *(v63 + 40) = [objc_opt_self() featureValueWithInt64_];
  v69 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4425314();
  v70 = sub_1C4400980();
  *(v63 + 48) = sub_1C442BD54(v70, v71, v72, v73);
  v74 = sub_1C440D684();
  *(v63 + 56) = [v74 v75];
  v76 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4425314();
  sub_1C444FEC0();
  *(v63 + 64) = sub_1C44034DC(v78, v79, v77 + 3, 0x80000001C4FAD420);
  v80 = sub_1C440D684();
  *(v63 + 72) = [v80 v81];
  v82 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4425314();
  sub_1C444FEC0();
  *(v63 + 80) = sub_1C44034DC(v84, v85, v83 + 1, 0x80000001C4FAD440);
  v86 = sub_1C440D684();
  *(v63 + 88) = [v86 v87];
  v88 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4425314();
  v89 = sub_1C4400980();
  *(v63 + 96) = sub_1C442BD54(v89, v90, v91, v92);
  v93 = sub_1C440D684();
  *(v63 + 104) = [v93 v94];
  v95 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  sub_1C4425314();
  v96 = sub_1C4400980();
  *(v63 + 112) = sub_1C442BD54(v96, v97, v98, v99);
  v100 = sub_1C440D684();
  *(v63 + 120) = [v100 v101];
  v102 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  *(v63 + 128) = sub_1C44034DC(v102, v103, 0xD000000000000018, 0x80000001C4FAD3A0);
  v104 = sub_1C440D684();
  *(v63 + 136) = [v104 v105];
  v106 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  *(v63 + 144) = sub_1C44034DC(v106, v107, 0xD000000000000016, 0x80000001C4FAD3C0);
  v108 = sub_1C440D684();
  *(v63 + 152) = [v108 v109];
}

uint64_t sub_1C4A35BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  v70 = a6;
  LODWORD(v72) = a5;
  v74 = sub_1C456902C(&qword_1EC0BA9F8, &unk_1C4F168D0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v69 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v67 - v15;
  v16 = sub_1C4EFF0C8();
  sub_1C456902C(&qword_1EC0C1A78, &unk_1C4F45B00);
  sub_1C4887098();
  v76 = v16;
  v79 = sub_1C4F00F28();
  v17 = sub_1C4428DA0(a3);
  for (i = 0; v17 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1C6940F90](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v19 = *(a3 + 8 * i + 32);
    }

    v6 = v19;
    if (__OFADD__(i, 1))
    {
      goto LABEL_38;
    }

    v78 = v19;
    sub_1C4A360EC(&v79, &v78, a4, a1, a2);
  }

  v20 = v79 + 64;
  sub_1C43FD030();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v73 = v76 - 8;
  v77 = v26;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = 0;
  v68 = MEMORY[0x1E69E7CC0];
  while (v23)
  {
LABEL_15:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v27 << 6);
    v31 = v77;
    v6 = v71;
    (*(*(v76 - 8) + 16))(v71, v77[6] + *(*(v76 - 8) + 72) * v30);
    v32 = *(v31[7] + 8 * v30);
    *(v6 + *(v74 + 48)) = v32;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A3692C(v6, v32, v75, v72, a1, a2);
    v34 = v33;
    v36 = v35;
    sub_1C4420C3C(v6, &qword_1EC0BA9F8, &unk_1C4F168D0);
    if (v34)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v6 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C441C3D4(isUniquelyReferenced_nonNull_native, v38, v39, v68);
        v68 = v44;
      }

      v40 = *(v68 + 16);
      v41 = v40 + 1;
      if (v40 >= *(v68 + 24) >> 1)
      {
        v67 = v40 + 1;
        sub_1C458B740();
        v41 = v67;
        v68 = v45;
      }

      v42 = v68;
      *(v68 + 16) = v41;
      v43 = v42 + 16 * v40;
      *(v43 + 32) = v34;
      *(v43 + 40) = v6;
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v28 >= v25)
    {
      break;
    }

    v23 = *(v20 + 8 * v28);
    ++v27;
    if (v23)
    {
      v27 = v28;
      goto LABEL_15;
    }
  }

  v46 = v77;

  v47 = 1 << *(v46 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v46[8];
  v50 = (v47 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v51 = 0;
  v72 = MEMORY[0x1E69E7CC0];
  while (v49)
  {
LABEL_29:
    v53 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v54 = v53 | (v51 << 6);
    v6 = v77;
    v55 = v69;
    (*(*(v76 - 8) + 16))(v69, v77[6] + *(*(v76 - 8) + 72) * v54);
    v56 = *(v6[7] + 8 * v54);
    *(v55 + *(v74 + 48)) = v56;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4A36B7C(v55, v56, v75, v70, a1, a2);
    sub_1C4408DEC();
    sub_1C4420C3C(v55, &qword_1EC0BA9F8, &unk_1C4F168D0);
    if (v56)
    {
      v57 = swift_isUniquelyReferenced_nonNull_native();
      if ((v57 & 1) == 0)
      {
        sub_1C441C3D4(v57, v58, v59, v72);
        v72 = v64;
      }

      v60 = *(v72 + 16);
      v61 = (v60 + 1);
      if (v60 >= *(v72 + 24) >> 1)
      {
        v71 = (v60 + 1);
        sub_1C458B740();
        v61 = v71;
        v72 = v65;
      }

      v62 = v72;
      *(v72 + 16) = v61;
      v63 = v62 + 16 * v60;
      *(v63 + 32) = v56;
      *(v63 + 40) = v6;
    }
  }

  while (1)
  {
    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v52 >= v50)
    {

      v79 = v68;
      sub_1C49D39CC(v72);
      return v79;
    }

    v49 = *(v20 + 8 * v52);
    ++v51;
    if (v49)
    {
      v51 = v52;
      goto LABEL_29;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);

  __break(1u);
  return result;
}
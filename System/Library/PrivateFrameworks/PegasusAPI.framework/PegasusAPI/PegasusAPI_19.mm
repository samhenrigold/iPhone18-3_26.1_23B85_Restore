void *sub_1B8E9A7CC()
{
  sub_1B8D538A0(*(v0 + 16), *(v0 + 24));
  sub_1B8D538A0(*(v0 + 32), *(v0 + 40));

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__location, &qword_1EBABCE18, &qword_1B96607A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__appLink, &qword_1EBABCE20, &qword_1B96607A8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__eta, &qword_1EBABCE28, &qword_1B96607B0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__detour, &qword_1EBABCE30, &qword_1B96607B8);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__startLocation, &qword_1EBABAFF0, &qword_1B96607C0);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__miniMapsData), *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__miniMapsData + 8));

  return v0;
}

uint64_t sub_1B8E9A95C()
{
  v0 = sub_1B8E9A7CC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Mapspb_LocalSearchBusiness.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Mapspb_LocalSearchBusiness(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Mapspb_LocalSearchBusiness._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E99A34(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B8E9AA50(v10, a1, a2, a3);
}

uint64_t sub_1B8E9AA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8E9AE04(a2, a1, a3, a4);
        continue;
      case 2:
        sub_1B8E9AE88(a2, a1, a3, a4);
        continue;
      case 3:
        sub_1B8E4317C(a2, a1, a3, a4);
        continue;
      case 4:
        sub_1B8DE24EC(a2, a1);
        continue;
      case 5:
        sub_1B8E9AF0C(a2, a1, a3, a4);
        continue;
      case 6:
        sub_1B8E16B50(a2, a1);
        continue;
      case 7:
        sub_1B8E16BD4(a2, a1);
        continue;
      case 8:
        sub_1B8E2F858(a2, a1);
        continue;
      case 9:
        sub_1B8E71858(a2, a1);
        continue;
      case 10:
        sub_1B8E9AF90(a2, a1, a3, a4);
        continue;
      case 11:
        sub_1B8E9B014(a2, a1, a3, a4);
        continue;
      case 12:
        sub_1B8E171C8(a2, a1);
        continue;
      case 13:
        sub_1B8E71A68(a2, a1);
        continue;
      case 14:
        sub_1B8E2FD8C(a2, a1);
        continue;
      case 15:
        sub_1B8E9B098(a2, a1, a3, a4);
        continue;
      case 16:
        sub_1B8E89008(a2, a1);
        continue;
      case 17:
        sub_1B8E8908C(a2, a1);
        continue;
      case 18:
        sub_1B8E89110(a2, a1);
        continue;
      case 19:
        sub_1B8E71E58(a2, a1, a3, a4);
        continue;
      case 20:
        sub_1B8E9B164(a2, a1, a3, a4);
        continue;
      case 21:
        sub_1B8E89218(a2, a1);
        continue;
      case 22:
        sub_1B8E9B1E8(a2, a1, a3, a4);
        continue;
      case 24:
        sub_1B8E9B2C4(a2, a1, a3, a4);
        continue;
      case 25:
        sub_1B8E9B3A0(a2, a1, a3, a4);
        continue;
      case 26:
        sub_1B8E9B47C(a2, a1, a3, a4);
        continue;
      case 27:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__boundaryAnnotation;
        goto LABEL_33;
      case 28:
        sub_1B8E9B558(a2, a1, a3, a4);
        continue;
      case 30:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__miniMapsData;
        v12 = MEMORY[0x1E69AAC78];
        goto LABEL_34;
      case 32:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageURL;
        goto LABEL_33;
      case 33:
        v11 = &OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageID;
LABEL_33:
        v12 = MEMORY[0x1E69AACE0];
LABEL_34:
        sub_1B8E9B634(a2, a1, a3, a4, v11, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E9AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C470();
  return swift_endAccess();
}

uint64_t sub_1B8E9AE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C470();
  return swift_endAccess();
}

uint64_t sub_1B8E9AF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8E9AF90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C510();
  return swift_endAccess();
}

uint64_t sub_1B8E9B014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C540();
  return swift_endAccess();
}

uint64_t sub_1B8E9B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Mapspb_Hours(0);
  sub_1B8CD1F40(&qword_1EBABCE90, type metadata accessor for Mapspb_Hours, protocol conformance descriptor for Mapspb_Hours);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E9B164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E9B1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Locationpb_Location(0);
  sub_1B8CD1F40(&qword_1EBABCD60, type metadata accessor for Locationpb_Location, protocol conformance descriptor for Locationpb_Location);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E9B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Mapspb_AppLink(0);
  sub_1B8CD1F40(&qword_1EBABCEC0, type metadata accessor for Mapspb_AppLink, protocol conformance descriptor for Mapspb_AppLink);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E9B3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Mapspb_ETA(0);
  sub_1B8CD1F40(&qword_1EBABCED8, type metadata accessor for Mapspb_ETA, protocol conformance descriptor for Mapspb_ETA);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E9B47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Mapspb_DetourInfo(0);
  sub_1B8CD1F40(&qword_1EBABCEF0, type metadata accessor for Mapspb_DetourInfo, protocol conformance descriptor for Mapspb_DetourInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E9B558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Mapspb_LocalSearchBusiness(0);
  sub_1B8CD1F40(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness, protocol conformance descriptor for Mapspb_LocalSearchBusiness);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E9B634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t Mapspb_LocalSearchBusiness.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Mapspb_LocalSearchBusiness(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8E9B730(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E9B730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAFF0, &qword_1B96607C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = v76 - v10;
  v77 = type metadata accessor for Mapspb_LocalSearchBusiness(0);
  MEMORY[0x1EEE9AC00](v77);
  v76[2] = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCE30, &qword_1B96607B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v81 = v76 - v13;
  v80 = type metadata accessor for Mapspb_DetourInfo(0);
  MEMORY[0x1EEE9AC00](v80);
  v76[3] = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCE28, &qword_1B96607B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v84 = v76 - v16;
  v83 = type metadata accessor for Mapspb_ETA(0);
  MEMORY[0x1EEE9AC00](v83);
  v78 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCE20, &qword_1B96607A8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v87 = v76 - v19;
  v86 = type metadata accessor for Mapspb_AppLink(0);
  MEMORY[0x1EEE9AC00](v86);
  v82 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCE18, &qword_1B96607A0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v76 - v22;
  v88 = type metadata accessor for Locationpb_Location(0);
  MEMORY[0x1EEE9AC00](v88);
  v85 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!sub_1B8D99EA8(*(a1 + 16), *(a1 + 24)))
  {
    v25 = a3;
    v26 = a4;
    v27 = *(a1 + 16);
    v28 = *(a1 + 24);
    sub_1B8D91FCC(v27, v28);
    sub_1B964C6A0();
    if (v4)
    {
      return sub_1B8D538A0(v27, v28);
    }

    sub_1B8D538A0(v27, v28);
    a4 = v26;
    a3 = v25;
  }

  swift_beginAccess();
  if (!sub_1B8D99EA8(*(a1 + 32), *(a1 + 40)))
  {
    v29 = a3;
    v30 = a4;
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    sub_1B8D91FCC(v27, v28);
    sub_1B964C6A0();
    if (v4)
    {
      return sub_1B8D538A0(v27, v28);
    }

    sub_1B8D538A0(v27, v28);
    a4 = v30;
    a3 = v29;
  }

  swift_beginAccess();
  if (*(a1 + 48) == 1)
  {
    result = sub_1B964C670();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 64);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 72))
  {
    result = sub_1B964C720();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v34 = *(a1 + 88);
  v35 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v35 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v36 = *(a1 + 104);
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 120);
  v39 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v39 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v39)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 136);
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 144) != 0.0)
  {
    result = sub_1B964C6F0();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (*(a1 + 152))
  {
    result = sub_1B964C710();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v42 = *(a1 + 168);
  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = *(a1 + 160) & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v44 = *(a1 + 184);
  v45 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v45 = *(a1 + 176) & 0xFFFFFFFFFFFFLL;
  }

  if (v45)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v46 = *(a1 + 200);
  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = *(a1 + 192) & 0xFFFFFFFFFFFFLL;
  }

  if (v47)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 208) + 16))
  {
    type metadata accessor for Mapspb_Hours(0);
    sub_1B8CD1F40(&qword_1EBABCE90, type metadata accessor for Mapspb_Hours, protocol conformance descriptor for Mapspb_Hours);

    sub_1B964C730();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v48 = *(a1 + 224);
  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = *(a1 + 216) & 0xFFFFFFFFFFFFLL;
  }

  if (v49)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v50 = *(a1 + 240);
  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = *(a1 + 232) & 0xFFFFFFFFFFFFLL;
  }

  if (v51)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v52 = *(a1 + 256);
  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = *(a1 + 248) & 0xFFFFFFFFFFFFLL;
  }

  if (v53)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(*(a1 + 264) + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v54 = *(*(a1 + 272) + 16);
  v76[0] = a3;
  v76[1] = a4;
  if (!v54)
  {
    goto LABEL_79;
  }

  sub_1B964C6E0();
  if (v4)
  {
  }

LABEL_79:
  swift_beginAccess();
  v55 = *(a1 + 288);
  v56 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v56 = *(a1 + 280) & 0xFFFFFFFFFFFFLL;
  }

  if (v56)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v23, 1, v88) == 1)
  {
    sub_1B8D9207C(v23, &qword_1EBABCE18, &qword_1B96607A0);
  }

  else
  {
    sub_1B8E9DF4C();
    sub_1B8CD1F40(&qword_1EBABCD60, type metadata accessor for Locationpb_Location, protocol conformance descriptor for Locationpb_Location);
    sub_1B964C740();
    if (v4)
    {
      return sub_1B8E9DFFC();
    }

    sub_1B8E9DFFC();
  }

  swift_beginAccess();
  v57 = v87;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v57, 1, v86) == 1)
  {
    sub_1B8D9207C(v87, &qword_1EBABCE20, &qword_1B96607A8);
    goto LABEL_97;
  }

  sub_1B8E9DF4C();
  sub_1B8CD1F40(&qword_1EBABCEC0, type metadata accessor for Mapspb_AppLink, protocol conformance descriptor for Mapspb_AppLink);
  sub_1B964C740();
  if (v4)
  {
    return sub_1B8E9DFFC();
  }

  sub_1B8E9DFFC();
LABEL_97:
  swift_beginAccess();
  v58 = v84;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v58, 1, v83) == 1)
  {
    sub_1B8D9207C(v84, &qword_1EBABCE28, &qword_1B96607B0);
  }

  else
  {
    sub_1B8E9DF4C();
    sub_1B8CD1F40(&qword_1EBABCED8, type metadata accessor for Mapspb_ETA, protocol conformance descriptor for Mapspb_ETA);
    sub_1B964C740();
    result = sub_1B8E9DFFC();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  v59 = v81;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v59, 1, v80) == 1)
  {
    sub_1B8D9207C(v81, &qword_1EBABCE30, &qword_1B96607B8);
  }

  else
  {
    sub_1B8E9DF4C();
    sub_1B8CD1F40(&qword_1EBABCEF0, type metadata accessor for Mapspb_DetourInfo, protocol conformance descriptor for Mapspb_DetourInfo);
    sub_1B964C740();
    result = sub_1B8E9DFFC();
    if (v4)
    {
      return result;
    }
  }

  v60 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__boundaryAnnotation);
  swift_beginAccess();
  v61 = *v60;
  v62 = v60[1];
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = v61 & 0xFFFFFFFFFFFFLL;
  }

  if (!v63 || (, sub_1B964C700(), result = , !v5))
  {
    swift_beginAccess();
    v64 = v79;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v64, 1, v77) == 1)
    {
      sub_1B8D9207C(v79, &qword_1EBABAFF0, &qword_1B96607C0);
    }

    else
    {
      sub_1B8E9DF4C();
      sub_1B8CD1F40(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness, protocol conformance descriptor for Mapspb_LocalSearchBusiness);
      sub_1B964C740();
      result = sub_1B8E9DFFC();
      if (v5)
      {
        return result;
      }
    }

    v65 = a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__miniMapsData;
    swift_beginAccess();
    if (sub_1B8D99EA8(*v65, *(v65 + 8)) || (v67 = *v65, v66 = *(v65 + 8), sub_1B8D91FCC(v67, v66), sub_1B964C6A0(), result = sub_1B8D538A0(v67, v66), !v5))
    {
      v68 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageURL);
      swift_beginAccess();
      v69 = *v68;
      v70 = v68[1];
      v71 = HIBYTE(v70) & 0xF;
      if ((v70 & 0x2000000000000000) == 0)
      {
        v71 = v69 & 0xFFFFFFFFFFFFLL;
      }

      if (!v71 || (, sub_1B964C700(), result = , !v5))
      {
        v72 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageID);
        result = swift_beginAccess();
        v73 = *v72;
        v74 = v72[1];
        v75 = HIBYTE(v74) & 0xF;
        if ((v74 & 0x2000000000000000) == 0)
        {
          v75 = v73 & 0xFFFFFFFFFFFFLL;
        }

        if (v75)
        {

          sub_1B964C700();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8E9C91C(uint64_t a1, uint64_t a2)
{
  v216 = type metadata accessor for Mapspb_LocalSearchBusiness(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v211 = v5;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCF50, &qword_1B9661258);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_185();
  v217 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABAFF0, &qword_1B96607C0);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  v214 = v10;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_266_0();
  v215 = v12;
  v13 = OUTLINED_FUNCTION_201();
  v221 = type metadata accessor for Mapspb_DetourInfo(v13);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v212 = v15;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCF58, &qword_1B9661260);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_185();
  v224 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCE30, &qword_1B96607B8);
  v19 = OUTLINED_FUNCTION_183(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44_0();
  v218 = v20;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_266_0();
  v220 = v22;
  v23 = OUTLINED_FUNCTION_201();
  v228 = type metadata accessor for Mapspb_ETA(v23);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_21();
  v223 = v25;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCF60, &qword_1B9661268);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_185();
  v231 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCE28, &qword_1B96607B0);
  v29 = OUTLINED_FUNCTION_183(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44_0();
  v226 = v30;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_266_0();
  v227 = v32;
  v33 = OUTLINED_FUNCTION_201();
  v233 = type metadata accessor for Mapspb_AppLink(v33);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_21();
  v222 = v35;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCF68, &qword_1B9661270);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_185();
  v235 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCE20, &qword_1B96607A8);
  v39 = OUTLINED_FUNCTION_183(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44_0();
  v229 = v40;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_266_0();
  v232 = v42;
  v43 = OUTLINED_FUNCTION_201();
  v236 = type metadata accessor for Locationpb_Location(v43);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_21();
  v234 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCF70, &qword_1B9661278);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_185();
  v238 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABCE18, &qword_1B96607A0);
  v50 = OUTLINED_FUNCTION_183(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_44_0();
  v237 = v51;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v210 - v53;
  OUTLINED_FUNCTION_521(a1 + 16, v298);
  v55 = *(a1 + 16);
  v56 = *(a1 + 24);
  OUTLINED_FUNCTION_521(a2 + 16, v297);
  v57 = *(a2 + 16);
  v58 = *(a2 + 24);

  sub_1B8D91FCC(v55, v56);
  v59 = OUTLINED_FUNCTION_491();
  sub_1B8D91FCC(v59, v60);
  v61 = MEMORY[0x1BFADC060](v55, v56, v57, v58);
  v62 = OUTLINED_FUNCTION_491();
  sub_1B8D538A0(v62, v63);
  sub_1B8D538A0(v55, v56);
  if ((v61 & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 32, v296);
  OUTLINED_FUNCTION_521(a2 + 32, v295);
  v64 = OUTLINED_FUNCTION_696();
  sub_1B8D91FCC(v64, v65);
  v66 = OUTLINED_FUNCTION_491();
  sub_1B8D91FCC(v66, v67);
  OUTLINED_FUNCTION_55_2();
  v68 = MEMORY[0x1BFADC060]();
  v69 = OUTLINED_FUNCTION_491();
  sub_1B8D538A0(v69, v70);
  v71 = OUTLINED_FUNCTION_696();
  sub_1B8D538A0(v71, v72);
  if ((v68 & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 48, v294);
  v73 = *(a1 + 48);
  OUTLINED_FUNCTION_521(a2 + 48, v293);
  if (v73 != *(a2 + 48))
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 56, &v292);
  v75 = *(a1 + 56);
  v74 = *(a1 + 64);
  OUTLINED_FUNCTION_521(a2 + 56, &v291);
  v76 = v75 == *(a2 + 56) && v74 == *(a2 + 64);
  if (!v76 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 72, &v290);
  v77 = *(a1 + 72);
  OUTLINED_FUNCTION_521(a2 + 72, &v289);
  if (v77 != *(a2 + 72))
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 80, &v288);
  v78 = *(a1 + 80);
  v79 = *(a1 + 88);
  OUTLINED_FUNCTION_521(a2 + 80, &v287);
  v80 = v78 == *(a2 + 80) && v79 == *(a2 + 88);
  if (!v80 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 96, &v286);
  v81 = *(a1 + 96);
  v82 = *(a1 + 104);
  OUTLINED_FUNCTION_521(a2 + 96, &v285);
  v83 = v81 == *(a2 + 96) && v82 == *(a2 + 104);
  if (!v83 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 112, &v284);
  v84 = *(a1 + 112);
  v85 = *(a1 + 120);
  OUTLINED_FUNCTION_521(a2 + 112, &v283);
  v86 = v84 == *(a2 + 112) && v85 == *(a2 + 120);
  if (!v86 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 128, &v282);
  v87 = *(a1 + 128);
  v88 = *(a1 + 136);
  OUTLINED_FUNCTION_521(a2 + 128, &v281);
  v89 = v87 == *(a2 + 128) && v88 == *(a2 + 136);
  if (!v89 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 144, &v280);
  v90 = *(a1 + 144);
  OUTLINED_FUNCTION_521(a2 + 144, &v279);
  if (v90 != *(a2 + 144))
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 152, &v278);
  v91 = *(a1 + 152);
  OUTLINED_FUNCTION_521(a2 + 152, &v277);
  if (v91 != *(a2 + 152))
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 160, &v276);
  v92 = *(a1 + 160);
  v93 = *(a1 + 168);
  OUTLINED_FUNCTION_521(a2 + 160, &v275);
  v94 = v92 == *(a2 + 160) && v93 == *(a2 + 168);
  if (!v94 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 176, &v274);
  v95 = *(a1 + 176);
  v96 = *(a1 + 184);
  OUTLINED_FUNCTION_521(a2 + 176, &v273);
  v97 = v95 == *(a2 + 176) && v96 == *(a2 + 184);
  if (!v97 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 192, &v272);
  v98 = *(a1 + 192);
  v99 = *(a1 + 200);
  OUTLINED_FUNCTION_521(a2 + 192, &v271);
  v100 = v98 == *(a2 + 192) && v99 == *(a2 + 200);
  if (!v100 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 208, &v270);
  OUTLINED_FUNCTION_521(a2 + 208, &v269);

  v101 = OUTLINED_FUNCTION_696();
  sub_1B8D89D40(v101, v102);
  v104 = v103;

  if ((v104 & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 216, &v268);
  v105 = *(a1 + 216);
  v106 = *(a1 + 224);
  OUTLINED_FUNCTION_521(a2 + 216, &v267);
  v107 = v105 == *(a2 + 216) && v106 == *(a2 + 224);
  if (!v107 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 232, &v266);
  v108 = *(a1 + 232);
  v109 = *(a1 + 240);
  OUTLINED_FUNCTION_521(a2 + 232, &v265);
  v110 = v108 == *(a2 + 232) && v109 == *(a2 + 240);
  if (!v110 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 248, &v264);
  v111 = *(a1 + 248);
  v112 = *(a1 + 256);
  OUTLINED_FUNCTION_521(a2 + 248, &v263);
  v113 = v111 == *(a2 + 248) && v112 == *(a2 + 256);
  if (!v113 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 264, &v262);
  v114 = *(a1 + 264);
  OUTLINED_FUNCTION_521(a2 + 264, &v261);
  if ((sub_1B8D6123C(v114, *(a2 + 264)) & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 272, &v260);
  v115 = *(a1 + 272);
  OUTLINED_FUNCTION_521(a2 + 272, &v259);
  if ((sub_1B8D6123C(v115, *(a2 + 272)) & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + 280, &v258);
  v116 = *(a1 + 280);
  v117 = *(a1 + 288);
  OUTLINED_FUNCTION_521(a2 + 280, &v257);
  v118 = v116 == *(a2 + 280) && v117 == *(a2 + 288);
  if (!v118 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_142;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__location, &v256);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__location, &v255);
  v119 = *(v46 + 48);
  v120 = v238;
  sub_1B8D92024();
  sub_1B8D92024();
  v121 = v236;
  OUTLINED_FUNCTION_178(v120, 1, v236);
  if (v76)
  {
    sub_1B8D9207C(v54, &qword_1EBABCE18, &qword_1B96607A0);
    OUTLINED_FUNCTION_178(v120 + v119, 1, v121);
    if (v76)
    {
      sub_1B8D9207C(v238, &qword_1EBABCE18, &qword_1B96607A0);
      goto LABEL_75;
    }

LABEL_83:
    v127 = &qword_1EBABCF70;
    v128 = &qword_1B9661278;
    v129 = v238;
LABEL_141:
    sub_1B8D9207C(v129, v127, v128);
    goto LABEL_142;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v120 + v119, 1, v121);
  if (v126)
  {
    sub_1B8D9207C(v54, &qword_1EBABCE18, &qword_1B96607A0);
    sub_1B8E9DFFC();
    goto LABEL_83;
  }

  OUTLINED_FUNCTION_7_13();
  v130 = v234;
  sub_1B8E9DF4C();
  if (*v237 != *v130 || v237[1] != v234[1])
  {
LABEL_88:
    sub_1B8E9DFFC();
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v134, v135, v136);
    sub_1B8E9DFFC();
    OUTLINED_FUNCTION_112_1();
    goto LABEL_141;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  sub_1B8CD1F40(v131, v132, MEMORY[0x1E69AAC10]);
  v133 = sub_1B964C850();
  sub_1B8E9DFFC();
  OUTLINED_FUNCTION_189(v54);
  sub_1B8E9DFFC();
  OUTLINED_FUNCTION_189(v238);
  if ((v133 & 1) == 0)
  {
    goto LABEL_142;
  }

LABEL_75:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__appLink, &v254);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__appLink, &v253);
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v122 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v122, v123, v233);
  if (v76)
  {
    sub_1B8D9207C(v232, &qword_1EBABCE20, &qword_1B96607A8);
    v124 = OUTLINED_FUNCTION_105_2(v235);
    OUTLINED_FUNCTION_178(v124, v125, v233);
    if (v76)
    {
      sub_1B8D9207C(v235, &qword_1EBABCE20, &qword_1B96607A8);
      goto LABEL_94;
    }

LABEL_92:
    v127 = &qword_1EBABCF68;
    v128 = &qword_1B9661270;
    v129 = v235;
    goto LABEL_141;
  }

  sub_1B8D92024();
  v137 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v137, v138, v233);
  if (v139)
  {
    sub_1B8D9207C(v232, &qword_1EBABCE20, &qword_1B96607A8);
    sub_1B8E9DFFC();
    goto LABEL_92;
  }

  v140 = v235;
  sub_1B8E9DF4C();
  v141 = static Mapspb_AppLink.== infix(_:_:)(v229);
  sub_1B8E9DFFC();
  OUTLINED_FUNCTION_189(v232);
  sub_1B8E9DFFC();
  OUTLINED_FUNCTION_189(v140);
  if ((v141 & 1) == 0)
  {
    goto LABEL_142;
  }

LABEL_94:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__eta, &v252);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__eta, &v251);
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v142 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v142, v143, v228);
  if (v76)
  {
    sub_1B8D9207C(v227, &qword_1EBABCE28, &qword_1B96607B0);
    v144 = OUTLINED_FUNCTION_105_2(v231);
    OUTLINED_FUNCTION_178(v144, v145, v228);
    if (v76)
    {
      sub_1B8D9207C(v231, &qword_1EBABCE28, &qword_1B96607B0);
      goto LABEL_99;
    }

LABEL_107:
    v127 = &qword_1EBABCF60;
    v128 = &qword_1B9661268;
    v129 = v231;
    goto LABEL_141;
  }

  sub_1B8D92024();
  v150 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v150, v151, v228);
  if (v152)
  {
    sub_1B8D9207C(v227, &qword_1EBABCE28, &qword_1B96607B0);
    sub_1B8E9DFFC();
    goto LABEL_107;
  }

  OUTLINED_FUNCTION_9_10();
  v153 = v223;
  sub_1B8E9DF4C();
  v154 = *v226 == *v153 && *(v226 + 8) == v153[1];
  if (!v154 && (sub_1B964C9F0() & 1) == 0 || *(v226 + 16) != *(v223 + 16) || (*(v226 + 24) == *(v223 + 24) ? (v155 = *(v226 + 32) == *(v223 + 32)) : (v155 = 0), !v155 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B8D9207C(v227, &qword_1EBABCE28, &qword_1B96607B0);
    sub_1B8E9DFFC();
    sub_1B8E9DFFC();
    v129 = v231;
    v127 = &qword_1EBABCE28;
    v128 = &qword_1B96607B0;
    goto LABEL_141;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  sub_1B8CD1F40(v156, v157, MEMORY[0x1E69AAC10]);
  v158 = sub_1B964C850();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v159, v160, v161);
  sub_1B8E9DFFC();
  sub_1B8E9DFFC();
  OUTLINED_FUNCTION_112_1();
  sub_1B8D9207C(v162, v163, v164);
  if ((v158 & 1) == 0)
  {
    goto LABEL_142;
  }

LABEL_99:
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__detour, &v250);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__detour, &v249);
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v146 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v146, v147, v221);
  if (v76)
  {
    sub_1B8D9207C(v220, &qword_1EBABCE30, &qword_1B96607B8);
    v148 = OUTLINED_FUNCTION_105_2(v224);
    OUTLINED_FUNCTION_178(v148, v149, v221);
    if (v76)
    {
      sub_1B8D9207C(v224, &qword_1EBABCE30, &qword_1B96607B8);
      goto LABEL_127;
    }

LABEL_125:
    v127 = &qword_1EBABCF58;
    v128 = &qword_1B9661260;
    v129 = v224;
    goto LABEL_141;
  }

  sub_1B8D92024();
  v165 = OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_178(v165, v166, v221);
  if (v167)
  {
    sub_1B8D9207C(v220, &qword_1EBABCE30, &qword_1B96607B8);
    sub_1B8E9DFFC();
    goto LABEL_125;
  }

  v168 = v224;
  v169 = v212;
  sub_1B8E9DF4C();
  v170 = static Mapspb_DetourInfo.== infix(_:_:)(v218, v169);
  sub_1B8E9DFFC();
  OUTLINED_FUNCTION_189(v220);
  sub_1B8E9DFFC();
  OUTLINED_FUNCTION_189(v168);
  if ((v170 & 1) == 0)
  {
    goto LABEL_142;
  }

LABEL_127:
  v171 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__boundaryAnnotation);
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__boundaryAnnotation, &v248);
  v172 = *v171;
  v173 = v171[1];
  v174 = (a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__boundaryAnnotation);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__boundaryAnnotation, &v247);
  if (v172 != *v174 || v173 != v174[1])
  {
    OUTLINED_FUNCTION_696();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_142;
    }
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__startLocation, &v246);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__startLocation, &v245);
  OUTLINED_FUNCTION_106_3();
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_94_2();
  v176 = OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_178(v176, v177, v216);
  if (!v76)
  {
    sub_1B8D92024();
    v181 = OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_178(v181, v182, v216);
    if (!v183)
    {
      OUTLINED_FUNCTION_8_13();
      v185 = v211;
      sub_1B8E9DF4C();
      if (*(v214 + *(v216 + 20)) == *(v185 + *(v216 + 20)) || (, , v186 = OUTLINED_FUNCTION_696(), v188 = sub_1B8E9C91C(v186, v187), , , (v188 & 1) != 0))
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_24();
        sub_1B8CD1F40(v189, v190, MEMORY[0x1E69AAC10]);
        v191 = sub_1B964C850();
        sub_1B8E9DFFC();
        OUTLINED_FUNCTION_189(v215);
        sub_1B8E9DFFC();
        OUTLINED_FUNCTION_189(v217);
        if (v191)
        {
          goto LABEL_147;
        }

LABEL_142:

        return 0;
      }

      goto LABEL_88;
    }

    sub_1B8D9207C(v215, &qword_1EBABAFF0, &qword_1B96607C0);
    sub_1B8E9DFFC();
LABEL_140:
    v127 = &qword_1EBABCF50;
    v128 = &qword_1B9661258;
    v129 = v217;
    goto LABEL_141;
  }

  sub_1B8D9207C(v215, &qword_1EBABAFF0, &qword_1B96607C0);
  v178 = OUTLINED_FUNCTION_105_2(v217);
  OUTLINED_FUNCTION_178(v178, v179, v180);
  if (!v76)
  {
    goto LABEL_140;
  }

  sub_1B8D9207C(v217, &qword_1EBABAFF0, &qword_1B96607C0);
LABEL_147:
  v192 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__miniMapsData);
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__miniMapsData, &v244);
  v194 = *v192;
  v193 = v192[1];
  v195 = (a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__miniMapsData);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__miniMapsData, &v243);
  v197 = *v195;
  v196 = v195[1];
  sub_1B8D91FCC(v194, v193);
  sub_1B8D91FCC(v197, v196);
  v198 = MEMORY[0x1BFADC060](v194, v193, v197, v196);
  sub_1B8D538A0(v197, v196);
  sub_1B8D538A0(v194, v193);
  if ((v198 & 1) == 0)
  {
    goto LABEL_142;
  }

  v199 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageURL);
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageURL, &v242);
  v200 = *v199;
  v201 = v199[1];
  v202 = (a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageURL);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageURL, &v241);
  if (v200 != *v202 || v201 != v202[1])
  {
    OUTLINED_FUNCTION_696();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_142;
    }
  }

  v204 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageID);
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageID, &v240);
  v205 = *v204;
  v206 = v204[1];
  v207 = (a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageID);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI26Mapspb_LocalSearchBusinessP33_9D446F71C2307641DA50611AFFF8738413_StorageClass__imessageID, &v239);
  if (v205 == *v207 && v206 == v207[1])
  {

    return 1;
  }

  OUTLINED_FUNCTION_696();
  v209 = sub_1B964C9F0();

  result = 0;
  if (v209)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1B8E9DF4C()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8E9DFA4()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8E9DFFC()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B8E9E174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF48, type metadata accessor for Mapspb_LocalSearchBusiness, protocol conformance descriptor for Mapspb_LocalSearchBusiness);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E9E1F4(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness, protocol conformance descriptor for Mapspb_LocalSearchBusiness);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E9E264(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F40(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness, protocol conformance descriptor for Mapspb_LocalSearchBusiness);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E9E304()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCDA0);
  __swift_project_value_buffer(v0, qword_1EBABCDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "day_of_week";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "open_time";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "close_time";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Mapspb_Hours.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C540();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Mapspb_Hours.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v0))
    {
      if (!*(v1 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v0))
      {
        type metadata accessor for Mapspb_Hours(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Mapspb_Hours.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 20) != *(v1 + 20))
  {
    return 0;
  }

  type metadata accessor for Mapspb_Hours(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  v8 = sub_1B8CD1F40(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8E9E794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF40, type metadata accessor for Mapspb_Hours, protocol conformance descriptor for Mapspb_Hours);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E9E814(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABCE90, type metadata accessor for Mapspb_Hours, protocol conformance descriptor for Mapspb_Hours);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E9E884(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F40(&qword_1EBABCE90, type metadata accessor for Mapspb_Hours, protocol conformance descriptor for Mapspb_Hours);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E9E91C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCDB8);
  __swift_project_value_buffer(v0, qword_1EBABCDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "country";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "country_code";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "administrative_area";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "administrative_area_code";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "sub_administrative_area";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "locality";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "dependent_locality";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "thoroughfare";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "sub_throughfare";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "post_code";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Mapspb_StructuredAddress.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Mapspb_StructuredAddress.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(v12, v13, 4), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v17 || (result = OUTLINED_FUNCTION_3(v15, v16, 5), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v20 || (result = OUTLINED_FUNCTION_3(v18, v19, 6), !v0))
            {
              if (!*(*(v1 + 96) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
              {
                OUTLINED_FUNCTION_1();
                if (!v23 || (result = OUTLINED_FUNCTION_3(v21, v22, 8), !v0))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v26 || (result = OUTLINED_FUNCTION_3(v24, v25, 9), !v0))
                  {
                    OUTLINED_FUNCTION_1();
                    if (!v29 || (result = OUTLINED_FUNCTION_3(v27, v28, 10), !v0))
                    {
                      type metadata accessor for Mapspb_StructuredAddress(0);
                      return OUTLINED_FUNCTION_8_1();
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

  return result;
}

uint64_t static Mapspb_StructuredAddress.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v2[10] == v1[10] && v2[11] == v1[11];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(v2[12], v1[12]) & 1) == 0)
  {
    return 0;
  }

  v11 = v2[13] == v1[13] && v2[14] == v1[14];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v2[15] == v1[15] && v2[16] == v1[16];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = v2[17] == v1[17] && v2[18] == v1[18];
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Mapspb_StructuredAddress(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  v16 = sub_1B8CD1F40(v14, v15, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v16) & 1;
}

uint64_t sub_1B8E9F16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF38, type metadata accessor for Mapspb_StructuredAddress, protocol conformance descriptor for Mapspb_StructuredAddress);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E9F1EC(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABCEA8, type metadata accessor for Mapspb_StructuredAddress, protocol conformance descriptor for Mapspb_StructuredAddress);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E9F25C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F40(&qword_1EBABCEA8, type metadata accessor for Mapspb_StructuredAddress, protocol conformance descriptor for Mapspb_StructuredAddress);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E9F300()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCDD0);
  __swift_project_value_buffer(v0, qword_1EBABCDD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bundle_id";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "symbol_image";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Mapspb_AppLink.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Mapspb_AppLink.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (result = OUTLINED_FUNCTION_3(v5, v6, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v10 || (result = OUTLINED_FUNCTION_3(v8, v9, 3), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v13 || (result = OUTLINED_FUNCTION_3(v11, v12, 4), !v0))
        {
          type metadata accessor for Mapspb_AppLink(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Mapspb_AppLink.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Mapspb_AppLink(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  v11 = sub_1B8CD1F40(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8E9F844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF30, type metadata accessor for Mapspb_AppLink, protocol conformance descriptor for Mapspb_AppLink);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E9F8C4(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABCEC0, type metadata accessor for Mapspb_AppLink, protocol conformance descriptor for Mapspb_AppLink);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E9F934(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F40(&qword_1EBABCEC0, type metadata accessor for Mapspb_AppLink, protocol conformance descriptor for Mapspb_AppLink);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E9F9D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCDE8);
  __swift_project_value_buffer(v0, qword_1EBABCDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "distance";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "transport_type";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Mapspb_ETA.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }
}

uint64_t Mapspb_ETA.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 3), !v0))
      {
        type metadata accessor for Mapspb_ETA(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Mapspb_ETA.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  v6 = *(v2 + 24) == *(v1 + 24) && *(v2 + 32) == *(v1 + 32);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Mapspb_ETA(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  v9 = sub_1B8CD1F40(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8E9FE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF28, type metadata accessor for Mapspb_ETA, protocol conformance descriptor for Mapspb_ETA);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E9FEF4(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABCED8, type metadata accessor for Mapspb_ETA, protocol conformance descriptor for Mapspb_ETA);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E9FF64(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F40(&qword_1EBABCED8, type metadata accessor for Mapspb_ETA, protocol conformance descriptor for Mapspb_ETA);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E9FFFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCE00);
  __swift_project_value_buffer(v0, qword_1EBABCE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "detour_time";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_to_place";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "detour_distance";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "distance_to_place";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Mapspb_DetourInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        continue;
    }
  }
}

uint64_t Mapspb_DetourInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    if (!v2[1] || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
    {
      if (!v2[2] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        if (!v2[3] || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
        {
          type metadata accessor for Mapspb_DetourInfo(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Mapspb_DetourInfo.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  type metadata accessor for Mapspb_DetourInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  v8 = sub_1B8CD1F40(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8EA04B0(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD1F40(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EA0590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF20, type metadata accessor for Mapspb_DetourInfo, protocol conformance descriptor for Mapspb_DetourInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EA0610(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABCEF0, type metadata accessor for Mapspb_DetourInfo, protocol conformance descriptor for Mapspb_DetourInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EA0680(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F40(&qword_1EBABCEF0, type metadata accessor for Mapspb_DetourInfo, protocol conformance descriptor for Mapspb_DetourInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EA0DE8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Mapspb_LocalSearchBusiness._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8EA0EC8(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swift_store_extra_inhabitant_index_99Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8EA1048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B964C2B0();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8EA1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_1B964C2B0();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8EA1190(uint64_t a1)
{
  sub_1B8EA140C(319, &qword_1ED9EE060, type metadata accessor for Locationpb_Location);
  if (v1 <= 0x3F)
  {
    sub_1B8EA140C(319, &qword_1ED9EE090, type metadata accessor for Mapspb_AppLink);
    if (v2 <= 0x3F)
    {
      sub_1B8EA140C(319, &qword_1ED9EE0A8, type metadata accessor for Mapspb_ETA);
      if (v3 <= 0x3F)
      {
        sub_1B8EA140C(319, &qword_1ED9EE078, type metadata accessor for Mapspb_DetourInfo);
        if (v4 <= 0x3F)
        {
          sub_1B8EA140C(319, &qword_1ED9CCBB8, type metadata accessor for Mapspb_LocalSearchBusiness);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1B8EA140C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Mapspb_LocalSearchBusiness(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_14()
{
  type metadata accessor for Mapspb_LocalSearchBusiness(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_10_9()
{
  type metadata accessor for Mapspb_LocalSearchBusiness._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_11()
{
  type metadata accessor for Mapspb_LocalSearchBusiness._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_22_9()
{
  type metadata accessor for Mapspb_LocalSearchBusiness(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_40_4()
{

  return type metadata accessor for Mapspb_LocalSearchBusiness(0);
}

uint64_t OUTLINED_FUNCTION_41_5()
{

  return type metadata accessor for Mapspb_LocalSearchBusiness(0);
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t a1)
{
  type metadata accessor for Mapspb_LocalSearchBusiness(a1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_99_3()
{

  return sub_1B8E9DF4C();
}

void OUTLINED_FUNCTION_109_0()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
}

uint64_t sub_1B8EA173C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EADBF4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EA1834@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Moviespb_ShowtimeType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Moviespb_Availability.id.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 16, v1);

  return OUTLINED_FUNCTION_432();
}

void Moviespb_Availability.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA19EC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.id.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EA66BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Moviespb_Availability.startDate.getter()
{
  OUTLINED_FUNCTION_8_14();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 32, v3);
  return *(v2 + 32);
}

uint64_t Moviespb_Availability.startDate.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Moviespb_Availability(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v0;
  return result;
}

uint64_t Moviespb_Availability.startDate.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_8_14();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  *(v1 + 72) = *(v5 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA1B98()
{
  OUTLINED_FUNCTION_7_14();
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 32) = v1;

  free(v0);
}

uint64_t Moviespb_Availability.endDate.getter()
{
  OUTLINED_FUNCTION_8_14();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 40, v3);
  return *(v2 + 40);
}

uint64_t Moviespb_Availability.endDate.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Moviespb_Availability(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 40, v5);
  *(v6 + 40) = v0;
  return result;
}

uint64_t Moviespb_Availability.endDate.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_8_14();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 40);
  *(v1 + 72) = *(v5 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA1D4C()
{
  OUTLINED_FUNCTION_7_14();
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 40) = v1;

  free(v0);
}

void Moviespb_Availability.offerType.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 48, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 48));
}

void Moviespb_Availability.offerType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_13_7();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v1;
  *(v6 + 56) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.offerType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  OUTLINED_FUNCTION_71_2(*(v0 + 48));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA1EEC()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v1;
  *(v6 + 56) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Moviespb_Availability.webPunchoutOpen.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);

  return OUTLINED_FUNCTION_432();
}

void Moviespb_Availability.webPunchoutOpen.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.webPunchoutOpen.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  v4 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA20BC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.webPunchoutOpen.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EA66BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Moviespb_Availability.webPunchoutPlay.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 80, v1);

  return OUTLINED_FUNCTION_432();
}

void Moviespb_Availability.webPunchoutPlay.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 80, v5);
  *(v6 + 80) = v2;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.webPunchoutPlay.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA229C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.webPunchoutPlay.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EA66BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 80);
    *(v7 + 80) = v3;
    *(v7 + 88) = v2;
  }

  free(v0);
}

uint64_t Moviespb_Availability.appPunchoutOpen.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 96, v1);

  return OUTLINED_FUNCTION_432();
}

void Moviespb_Availability.appPunchoutOpen.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 96, v5);
  *(v6 + 96) = v2;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.appPunchoutOpen.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA247C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.appPunchoutOpen.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EA66BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 96);
    *(v7 + 96) = v3;
    *(v7 + 104) = v2;
  }

  free(v0);
}

uint64_t Moviespb_Availability.appPunchoutPlay.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 112, v1);

  return OUTLINED_FUNCTION_432();
}

void Moviespb_Availability.appPunchoutPlay.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 112, v5);
  *(v6 + 112) = v2;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.appPunchoutPlay.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  v4 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA265C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.appPunchoutPlay.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EA66BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 112);
    *(v7 + 112) = v3;
    *(v7 + 120) = v2;
  }

  free(v0);
}

uint64_t Moviespb_Availability.canonicalAdamID.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 128, v1);

  return OUTLINED_FUNCTION_432();
}

void Moviespb_Availability.canonicalAdamID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 128, v5);
  *(v6 + 128) = v2;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.canonicalAdamID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA283C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.canonicalAdamID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EA66BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 128);
    *(v7 + 128) = v3;
    *(v7 + 136) = v2;
  }

  free(v0);
}

uint64_t Moviespb_Availability.externalID.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 144, v1);

  return OUTLINED_FUNCTION_432();
}

void Moviespb_Availability.externalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 144, v5);
  *(v6 + 144) = v2;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.externalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  v4 = *(v0 + 152);
  *(v1 + 48) = *(v0 + 144);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA2A1C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.externalID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EA66BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 144);
    *(v7 + 144) = v3;
    *(v7 + 152) = v2;
  }

  free(v0);
}

void Moviespb_Availability.mediaType.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 160, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 160));
}

void Moviespb_Availability.mediaType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_13_7();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 160, v5);
  *(v6 + 160) = v1;
  *(v6 + 168) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.mediaType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  OUTLINED_FUNCTION_71_2(*(v0 + 160));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA2BB4()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 160) = v1;
  *(v6 + 168) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Moviespb_Availability.searchBrandID.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 176, v1);

  return OUTLINED_FUNCTION_432();
}

void Moviespb_Availability.searchBrandID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 176, v5);
  *(v6 + 176) = v2;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.searchBrandID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0(v0 + 176);
  v4 = *(v0 + 184);
  *(v1 + 48) = *(v0 + 176);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA2D84()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.searchBrandID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EA66BC(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 176);
    *(v7 + 176) = v3;
    *(v7 + 184) = v2;
  }

  free(v0);
}

void Moviespb_Availability.searchBrandState.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 192, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 192));
}

void Moviespb_Availability.searchBrandState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_13_7();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 192, v5);
  *(v6 + 192) = v1;
  *(v6 + 200) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.searchBrandState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0(v0 + 192);
  OUTLINED_FUNCTION_71_2(*(v0 + 192));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA2F1C()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 192) = v1;
  *(v6 + 200) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Moviespb_Availability.platformIosState.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 208, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 208));
}

void Moviespb_Availability.platformIosState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_13_7();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 208, v5);
  *(v6 + 208) = v1;
  *(v6 + 216) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.platformIosState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0(v0 + 208);
  OUTLINED_FUNCTION_71_2(*(v0 + 208));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA30A4()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 208) = v1;
  *(v6 + 216) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Moviespb_Availability.platformTvosState.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 224, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 224));
}

void Moviespb_Availability.platformTvosState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_13_7();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 224, v5);
  *(v6 + 224) = v1;
  *(v6 + 232) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.platformTvosState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0(v0 + 224);
  OUTLINED_FUNCTION_71_2(*(v0 + 224));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA322C()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 224) = v1;
  *(v6 + 232) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Moviespb_Availability.platformWebState.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 240, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 240));
}

void Moviespb_Availability.platformWebState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_13_7();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 240, v5);
  *(v6 + 240) = v1;
  *(v6 + 248) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.platformWebState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0(v0 + 240);
  OUTLINED_FUNCTION_71_2(*(v0 + 240));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA33B4()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 240) = v1;
  *(v6 + 248) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Moviespb_Availability.isMccormickProvider.getter()
{
  OUTLINED_FUNCTION_8_14();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 249, v3);
  return *(v2 + 249);
}

uint64_t Moviespb_Availability.isMccormickProvider.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_65_4();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 249, v5);
  *(v6 + 249) = a1 & 1;
  return result;
}

uint64_t Moviespb_Availability.isMccormickProvider.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_8_14();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 249);
  *(v1 + 84) = *(v4 + 249);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA354C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_82_1();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 249) = v3;

  free(v1);
}

void Moviespb_Availability.videoQuality.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4(v0 + 256, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 256));
}

uint64_t sub_1B8EA3650(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void Moviespb_Availability.videoQuality.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_13_7();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 256, v5);
  *(v6 + 256) = v1;
  *(v6 + 264) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.videoQuality.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0(v0 + 256);
  OUTLINED_FUNCTION_71_2(*(v0 + 256));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA3758()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 256) = v1;
  *(v6 + 264) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Moviespb_Availability.isStereoContent.getter()
{
  OUTLINED_FUNCTION_8_14();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 265, v3);
  return *(v2 + 265);
}

uint64_t Moviespb_Availability.isStereoContent.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_65_4();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 265, v5);
  *(v6 + 265) = a1 & 1;
  return result;
}

uint64_t Moviespb_Availability.isStereoContent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_8_14();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 265);
  *(v1 + 84) = *(v4 + 265);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA38F0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_82_1();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 265) = v3;

  free(v1);
}

uint64_t Moviespb_Availability.isImmersiveContent.getter()
{
  OUTLINED_FUNCTION_8_14();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 266, v3);
  return *(v2 + 266);
}

uint64_t Moviespb_Availability.isImmersiveContent.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_65_4();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 266, v5);
  *(v6 + 266) = a1 & 1;
  return result;
}

uint64_t Moviespb_Availability.isImmersiveContent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_8_14();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 266);
  *(v1 + 84) = *(v4 + 266);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA3A84(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_82_1();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 266) = v3;

  free(v1);
}

uint64_t Moviespb_Availability.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Moviespb_Availability.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1B8EA3C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAF9A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EA3C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAF950();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EA3CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAF8FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EA3D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAF8A8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EA3DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAF854();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Moviespb_Availability.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Moviespb_Availability(0) + 20);
  if (qword_1EBAB64A0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBABCFE8;
}

uint64_t sub_1B8EA3F18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Moviespb_Availability.OfferType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8EA3FC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Moviespb_Availability.MediaType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8EA4078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Moviespb_Availability.VideoQuality.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8EA4128@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Moviespb_Availability.PlatformState.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8EA41D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Moviespb_Availability.SearchBrandState.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Moviespb_CommonSense.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_CommonSense(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EA4310()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8EA4398()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Moviespb_ContentRating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_ContentRating(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EA4460@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Moviespb_Trailer.format.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Moviespb_Trailer.url.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Moviespb_Trailer.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Moviespb_Trailer(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Moviespb_Trailer.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_Trailer(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Moviespb_Trailer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_Trailer(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EA46B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAA130();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Moviespb_Trailer.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_74_4(a1);
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  type metadata accessor for Moviespb_Trailer(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8EA47D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Moviespb_Trailer.FormatType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Moviespb_RottenTomatoReview.text.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Moviespb_RottenTomatoReview.author.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Moviespb_RottenTomatoReview.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_RottenTomatoReview(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Moviespb_RottenTomatoReview.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  type metadata accessor for Moviespb_RottenTomatoReview(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Moviespb_MovieTheater.state.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Moviespb_MovieTheater.url.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Moviespb_MovieTheater.showtimes.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Moviespb_MovieTheater.fandangoID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Moviespb_MovieTheater.theaterID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Moviespb_MovieTheater.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Moviespb_MovieTheater(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Moviespb_MovieTheater.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_MovieTheater(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Moviespb_MovieTheater.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_MovieTheater(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Moviespb_MovieTheater.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = v2;
  *(v1 + 80) = MEMORY[0x1E69E7CC0];
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 136) = v2;
  type metadata accessor for Moviespb_MovieTheater(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Moviespb_Showtime.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Moviespb_Showtime(0);
  sub_1B8EA6D9C(v1 + *(v7 + 28), v6);
  v8 = sub_1B964C110();
  OUTLINED_FUNCTION_178(v6, 1, v8);
  if (!v9)
  {
    return (*(*(v8 - 8) + 32))(a1, v6, v8);
  }

  sub_1B964C100();
  result = OUTLINED_FUNCTION_178(v6, 1, v8);
  if (!v9)
  {
    return sub_1B8D9207C(v6, &off_1EBAB90F0, &unk_1B964D8E0);
  }

  return result;
}

uint64_t sub_1B8EA4FC0(uint64_t a1)
{
  v2 = sub_1B964C110();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Moviespb_Showtime.time.setter();
}

uint64_t Moviespb_Showtime.time.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Moviespb_Showtime(v2) + 28);
  sub_1B8D9207C(v1 + v3, &off_1EBAB90F0, &unk_1B964D8E0);
  v4 = sub_1B964C110();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, v0, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void Moviespb_Showtime.time.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C110();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1();
  v3[3] = v8;
  v10 = *(v9 + 64);
  v3[4] = __swift_coroFrameAllocStub(v10);
  v3[5] = __swift_coroFrameAllocStub(v10);
  v11 = *(type metadata accessor for Moviespb_Showtime(0) + 28);
  *(v3 + 12) = v11;
  sub_1B8EA6D9C(v0 + v11, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v12)
  {
    sub_1B964C100();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v12)
    {
      sub_1B8D9207C(v6, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    v13 = OUTLINED_FUNCTION_461();
    v14(v13);
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B8EA52B0()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    (*(v5 + 16))((*v0)[4], v3, v4);
    sub_1B8D9207C(v7 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_43_1();
    (*(v5 + 8))(v3, v4);
  }

  else
  {
    sub_1B8D9207C(v7 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_43_1();
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Moviespb_Showtime.hasTime.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Moviespb_Showtime(0);
  sub_1B8EA6D9C(v0 + *(v7 + 28), v6);
  v8 = sub_1B964C110();
  OUTLINED_FUNCTION_178(v6, 1, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_1B8D9207C(v6, &off_1EBAB90F0, &unk_1B964D8E0);
  return v10;
}

Swift::Void __swiftcall Moviespb_Showtime.clearTime()()
{
  v1 = *(type metadata accessor for Moviespb_Showtime(0) + 28);
  sub_1B8D9207C(v0 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
  v2 = sub_1B964C110();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Moviespb_Showtime.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_Showtime(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Moviespb_Showtime.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_74_4(a1);
  v2 = type metadata accessor for Moviespb_Showtime(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(v2 + 28);
  v4 = sub_1B964C110();

  return __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
}

uint64_t Moviespb_Screening.times.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Moviespb_Screening.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Moviespb_Screening(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Moviespb_Screening.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_Screening(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Moviespb_Screening.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_Screening(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Moviespb_Screening.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  type metadata accessor for Moviespb_Screening(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Moviespb_CoverArt.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1B8EA58FC()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8EA5984()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Moviespb_CoverArt.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_CoverArt(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EA5A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EADC48();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Moviespb_CoverArt.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  type metadata accessor for Moviespb_CoverArt(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8EA5B1C()
{
  OUTLINED_FUNCTION_468();
  swift_beginAccess();
  *v0 = v1;
}

uint64_t sub_1B8EA5BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Moviespb_CoverArt.AspectRatio.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Moviespb_Genre.localizedGenre.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Moviespb_Genre.genreCategory.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Moviespb_Genre.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Moviespb_Genre(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EA5D50()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCFB8);
  __swift_project_value_buffer(v0, qword_1EBABCFB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNSPECIFIED_SHOWTIME_TYPE";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "THREED";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "IMAX";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IMAX_THREED";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA5FD0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCFD0);
  __swift_project_value_buffer(v0, qword_1EBABCFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1B9661280;
  v4 = v47 + v3;
  v5 = v47 + v3 + v1[14];
  *(v47 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "start_date";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "end_date";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "offer_type";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "web_punchout_open";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "web_punchout_play";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "app_punchout_open";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "app_punchout_play";
  *(v21 + 1) = 17;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "canonical_adam_id";
  *(v23 + 1) = 17;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "external_id";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "media_type";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "search_brand_id";
  *(v29 + 1) = 15;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "search_brand_state";
  *(v31 + 1) = 18;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "platform_ios_state";
  *(v33 + 1) = 18;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "platform_tvos_state";
  *(v35 + 1) = 19;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "platform_web_state";
  *(v37 + 1) = 18;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "is_mccormick_provider";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "video_quality";
  *(v41 + 1) = 13;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "is_stereo_content";
  *(v43 + 1) = 17;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "is_immersive_content";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8EA6608()
{
  type metadata accessor for Moviespb_Availability._StorageClass();
  swift_allocObject();
  result = sub_1B8EA6648();
  qword_1EBABCFE8 = result;
  return result;
}

uint64_t sub_1B8EA6648()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 224) = 0;
  *(v0 + 232) = 1;
  *(v0 + 240) = 0;
  *(v0 + 248) = 1;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 265) = 0;
  return result;
}

uint64_t sub_1B8EA66BC(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  v29 = a1 + 264;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 96) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  *(v1 + 144) = 0;
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 176) = 0;
  *(v1 + 192) = 0;
  *(v1 + 184) = 0xE000000000000000;
  *(v1 + 200) = 1;
  *(v1 + 208) = 0;
  *(v1 + 216) = 1;
  *(v1 + 224) = 0;
  *(v1 + 240) = 0;
  *(v1 + 232) = 1;
  *(v1 + 248) = 1;
  *(v1 + 256) = 0;
  *(v1 + 264) = 1;
  *(v1 + 265) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;
  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  LOBYTE(v5) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v7;
  *(v1 + 56) = v5;
  swift_beginAccess();
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v9;
  *(v1 + 72) = v8;

  swift_beginAccess();
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v11;
  *(v1 + 88) = v10;

  swift_beginAccess();
  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v13;
  *(v1 + 104) = v12;

  swift_beginAccess();
  v15 = *(a1 + 112);
  v14 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 112) = v15;
  *(v1 + 120) = v14;

  swift_beginAccess();
  v17 = *(a1 + 128);
  v16 = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 128) = v17;
  *(v1 + 136) = v16;

  swift_beginAccess();
  v19 = *(a1 + 144);
  v18 = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 144) = v19;
  *(v1 + 152) = v18;

  swift_beginAccess();
  v20 = *(a1 + 160);
  LOBYTE(v9) = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 160) = v20;
  *(v1 + 168) = v9;
  swift_beginAccess();
  v22 = *(a1 + 176);
  v21 = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 176) = v22;
  *(v1 + 184) = v21;

  swift_beginAccess();
  v23 = *(a1 + 192);
  LOBYTE(v9) = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 192) = v23;
  *(v1 + 200) = v9;
  swift_beginAccess();
  v24 = *(a1 + 208);
  LOBYTE(v9) = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 208) = v24;
  *(v1 + 216) = v9;
  swift_beginAccess();
  v25 = *(a1 + 224);
  LOBYTE(v9) = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 224) = v25;
  *(v1 + 232) = v9;
  swift_beginAccess();
  v26 = *(a1 + 240);
  LOBYTE(v9) = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 240) = v26;
  *(v1 + 248) = v9;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + 249);
  swift_beginAccess();
  *(v1 + 249) = v26;
  swift_beginAccess();
  v27 = *(a1 + 256);
  LOBYTE(v9) = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 256) = v27;
  *(v1 + 264) = v9;
  swift_beginAccess();
  LOBYTE(v27) = *(v29 + 1);
  swift_beginAccess();
  *(v1 + 265) = v27;
  swift_beginAccess();
  LOBYTE(v27) = *(v29 + 2);

  swift_beginAccess();
  *(v1 + 266) = v27;
  return v1;
}

uint64_t sub_1B8EA6D9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1B8EA6E6C()
{

  return v0;
}

uint64_t sub_1B8EA6EC4()
{
  v0 = sub_1B8EA6E6C();

  return MEMORY[0x1EEE6BDC0](v0, 267, 7);
}

uint64_t Moviespb_Availability.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Moviespb_Availability(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EA66BC(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B8EA6F90(v10, a1, a2, a3);
}

uint64_t sub_1B8EA6F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C(a2, a1);
        break;
      case 2:
        sub_1B8EA7230(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B8EA72B4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B8EA7338(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B8E16ACC(a2, a1);
        break;
      case 6:
        sub_1B8E16B50(a2, a1);
        break;
      case 7:
        sub_1B8E16BD4(a2, a1);
        break;
      case 8:
        sub_1B8E2F858(a2, a1);
        break;
      case 9:
        sub_1B8E71858(a2, a1);
        break;
      case 10:
        sub_1B8E88CF0(a2, a1);
        break;
      case 11:
        sub_1B8EA73CC(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8E71A68(a2, a1);
        break;
      case 13:
        sub_1B8EA7460(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8EA74F4(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B8EA7588(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B8EA761C(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B8EA76B0(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B8EA7734(a2, a1, a3, a4);
        break;
      case 19:
        sub_1B8EA77C8(a2, a1, a3, a4);
        break;
      case 20:
        sub_1B8EA784C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EA7230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8EA72B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8EA7338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EAF9A4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA73CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EAF950();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA7460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EAF854();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA74F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EAF8A8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA7588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EAF8A8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA761C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EAF8A8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA76B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8EA7734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EAF8FC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA77C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8EA784C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t Moviespb_Availability.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Moviespb_Availability(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8EA7934(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8EA7934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 32) || (result = sub_1B964C6D0(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 40) || (result = sub_1B964C6D0(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 48) || (sub_1B8EAF9A4(), result = sub_1B964C680(), !v4))
      {
        swift_beginAccess();
        v9 = *(a1 + 72);
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v11 = *(a1 + 88);
        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v13 = *(a1 + 104);
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v15 = *(a1 + 120);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v17 = *(a1 + 136);
        v18 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v18 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v19 = *(a1 + 152);
        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 160) || (sub_1B8EAF950(), result = sub_1B964C680(), !v4))
        {
          swift_beginAccess();
          v21 = *(a1 + 184);
          v22 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v22 = *(a1 + 176) & 0xFFFFFFFFFFFFLL;
          }

          if (!v22 || (, sub_1B964C700(), result = , !v4))
          {
            swift_beginAccess();
            if (!*(a1 + 192) || (sub_1B8EAF854(), result = sub_1B964C680(), !v4))
            {
              swift_beginAccess();
              if (!*(a1 + 208) || (sub_1B8EAF8A8(), result = sub_1B964C680(), !v4))
              {
                swift_beginAccess();
                if (!*(a1 + 224) || (sub_1B8EAF8A8(), result = sub_1B964C680(), !v4))
                {
                  swift_beginAccess();
                  if (!*(a1 + 240) || (sub_1B8EAF8A8(), result = sub_1B964C680(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 249) != 1 || (result = sub_1B964C670(), !v4))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 256) || (sub_1B8EAF8FC(), result = sub_1B964C680(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 265) != 1 || (result = sub_1B964C670(), !v4))
                        {
                          result = swift_beginAccess();
                          if (*(a1 + 266) == 1)
                          {
                            return sub_1B964C670();
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
      }
    }
  }

  return result;
}

uint64_t static Moviespb_Availability.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_14();
  if (*(v1 + v2) != *(v0 + v2) && (sub_1B8EA80C4() & 1) == 0)
  {
    return 0;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  sub_1B8CD1F88(v3, v4, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_231();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8EA80C4()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_521(v2 + 16, v96);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_521(v0 + 16, v95);
  v5 = v3 == *(v0 + 16) && v4 == *(v0 + 24);
  if (v5 || (OUTLINED_FUNCTION_22_8()) && (OUTLINED_FUNCTION_521(v1 + 32, v94), v6 = *(v1 + 32), OUTLINED_FUNCTION_521(v0 + 32, v93), v6 == *(v0 + 32)) && (OUTLINED_FUNCTION_521(v1 + 40, v92), v7 = *(v1 + 40), OUTLINED_FUNCTION_521(v0 + 40, v91), v7 == *(v0 + 40)) && (OUTLINED_FUNCTION_521(v1 + 48, v90), OUTLINED_FUNCTION_521(v0 + 48, v89), v8 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v8, v9, v10)) && ((OUTLINED_FUNCTION_521(v1 + 64, v88), v11 = *(v1 + 64), v12 = *(v1 + 72), OUTLINED_FUNCTION_521(v0 + 64, v87), v11 == *(v0 + 64)) ? (v13 = v12 == *(v0 + 72)) : (v13 = 0), (v13 || (OUTLINED_FUNCTION_22_8()) && ((OUTLINED_FUNCTION_521(v1 + 80, v86), v14 = *(v1 + 80), v15 = *(v1 + 88), OUTLINED_FUNCTION_521(v0 + 80, v85), v14 == *(v0 + 80)) ? (v16 = v15 == *(v0 + 88)) : (v16 = 0), (v16 || (OUTLINED_FUNCTION_22_8()) && ((OUTLINED_FUNCTION_521(v1 + 96, v84), v17 = *(v1 + 96), v18 = *(v1 + 104), OUTLINED_FUNCTION_521(v0 + 96, v83), v17 == *(v0 + 96)) ? (v19 = v18 == *(v0 + 104)) : (v19 = 0), (v19 || (OUTLINED_FUNCTION_22_8()) && ((OUTLINED_FUNCTION_521(v1 + 112, v82), v20 = *(v1 + 112), v21 = *(v1 + 120), OUTLINED_FUNCTION_521(v0 + 112, v81), v20 == *(v0 + 112)) ? (v22 = v21 == *(v0 + 120)) : (v22 = 0), (v22 || (OUTLINED_FUNCTION_22_8()) && ((OUTLINED_FUNCTION_521(v1 + 128, v80), v23 = *(v1 + 128), v24 = *(v1 + 136), OUTLINED_FUNCTION_521(v0 + 128, v79), v23 == *(v0 + 128)) ? (v25 = v24 == *(v0 + 136)) : (v25 = 0), (v25 || (OUTLINED_FUNCTION_22_8()) && ((OUTLINED_FUNCTION_521(v1 + 144, v78), v26 = *(v1 + 144), v27 = *(v1 + 152), OUTLINED_FUNCTION_521(v0 + 144, v77), v26 == *(v0 + 144)) ? (v28 = v27 == *(v0 + 152)) : (v28 = 0), (v28 || (OUTLINED_FUNCTION_22_8()) && (OUTLINED_FUNCTION_521(v1 + 160, v76), OUTLINED_FUNCTION_521(v0 + 160, v75), v29 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v29, v30, v31)) && ((OUTLINED_FUNCTION_521(v1 + 176, v74), v32 = *(v1 + 176), v33 = *(v1 + 184), OUTLINED_FUNCTION_521(v0 + 176, v73), v32 == *(v0 + 176)) ? (v34 = v33 == *(v0 + 184)) : (v34 = 0), (v34 || (OUTLINED_FUNCTION_22_8()) && (OUTLINED_FUNCTION_521(v1 + 192, v72), OUTLINED_FUNCTION_521(v0 + 192, v71), v35 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v35, v36, v37)) && (OUTLINED_FUNCTION_521(v1 + 208, v70), OUTLINED_FUNCTION_521(v0 + 208, v69), v38 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v38, v39, v40)) && (OUTLINED_FUNCTION_521(v1 + 224, v68), OUTLINED_FUNCTION_521(v0 + 224, v67), v41 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v41, v42, v43)) && (OUTLINED_FUNCTION_521(v1 + 240, v66), OUTLINED_FUNCTION_521(v0 + 240, v65), v44 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v44, v45, v46)) && (OUTLINED_FUNCTION_521(v1 + 249, v64), v47 = *(v1 + 249), OUTLINED_FUNCTION_521(v0 + 249, v63), v47 == *(v0 + 249)) && (v48 = v0 + 264, v49 = (v1 + 264), OUTLINED_FUNCTION_521(v1 + 256, v62), v50 = *(v1 + 256), v56 = v49, v51 = *v49, OUTLINED_FUNCTION_521(v0 + 256, v61), sub_1B8D92198(v50, v51, *(v0 + 256))) && (OUTLINED_FUNCTION_521((v56 + 1), v60), v52 = v56[1], OUTLINED_FUNCTION_521(v0 + 265, v59), v52 == *(v0 + 265))))))))))
  {
    OUTLINED_FUNCTION_521((v56 + 2), v58);
    v55 = v56[2];
    OUTLINED_FUNCTION_521(v48 + 2, v57);
    v53 = v55 ^ *(v48 + 2) ^ 1;
  }

  else
  {
    v53 = 0;
  }

  return v53 & 1;
}

uint64_t sub_1B8EA8594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4E8, type metadata accessor for Moviespb_Availability, protocol conformance descriptor for Moviespb_Availability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EA8614(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD330, type metadata accessor for Moviespb_Availability, protocol conformance descriptor for Moviespb_Availability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EA8684(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F88(&qword_1EBABD330, type metadata accessor for Moviespb_Availability, protocol conformance descriptor for Moviespb_Availability);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EA8704()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCFF0);
  __swift_project_value_buffer(v0, qword_1EBABCFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OFFER_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FREE";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RENT";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BUY";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SUBSCRIPTION";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PRE_ORDER";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "FREE_WITH_ACCOUNT";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "SERVICE";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "COMING_SOON";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA8A98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD008);
  __swift_project_value_buffer(v0, qword_1EBABD008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MEDIA_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SHOWS";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EPISODES";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SEASONS";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "MOVIES";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA8D40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD020);
  __swift_project_value_buffer(v0, qword_1EBABD020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "QUALITY_UNKNOWN";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SD";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HD";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UHD";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA8F9C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD038);
  __swift_project_value_buffer(v0, qword_1EBABD038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VOD_STATE_UNKNOWN";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VOD_SERVICE_ON";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VOD_SERVICE_OFF";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VOD_SERVICE_TEST_MODE";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA9204()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD050);
  __swift_project_value_buffer(v0, qword_1EBABD050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "STATE_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SEARCH_BRAND_LIVE";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SEARCH_BRAND_PENDING_APPLE_REVIEW";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA9448()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD068);
  __swift_project_value_buffer(v0, qword_1EBABD068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "age";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA9704(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4E0, type metadata accessor for Moviespb_CommonSense, protocol conformance descriptor for Moviespb_CommonSense);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EA9784(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD348, type metadata accessor for Moviespb_CommonSense, protocol conformance descriptor for Moviespb_CommonSense);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EA97F4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F88(&qword_1EBABD348, type metadata accessor for Moviespb_CommonSense, protocol conformance descriptor for Moviespb_CommonSense);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EA988C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD080);
  __swift_project_value_buffer(v0, qword_1EBABD080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content_rating_system";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content_rating_value";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA9AA4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 1), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 2), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8EA9BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4D8, type metadata accessor for Moviespb_ContentRating, protocol conformance descriptor for Moviespb_ContentRating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EA9C58(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD360, type metadata accessor for Moviespb_ContentRating, protocol conformance descriptor for Moviespb_ContentRating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EA9CC8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F88(&qword_1EBABD360, type metadata accessor for Moviespb_ContentRating, protocol conformance descriptor for Moviespb_ContentRating);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EA9D60()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD098);
  __swift_project_value_buffer(v0, qword_1EBABD098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "format";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "thumbnail";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "url";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Moviespb_Trailer.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8EAA000(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t Moviespb_Trailer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (sub_1B8EAA130(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 2), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 3), !v1))
      {
        type metadata accessor for Moviespb_Trailer(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

unint64_t sub_1B8EAA130()
{
  result = qword_1EBABD188;
  if (!qword_1EBABD188)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Trailer.FormatType, &type metadata for Moviespb_Trailer.FormatType, v0, v1);
    atomic_store(result, &qword_1EBABD188);
  }

  return result;
}

uint64_t static Moviespb_Trailer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v8 && v6 == v7;
  if (v8 || (sub_1B964C9F0() & 1) != 0)
  {
    v9 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
    if (v9 || (sub_1B964C9F0() & 1) != 0)
    {
      type metadata accessor for Moviespb_Trailer(0);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_25();
      v12 = sub_1B8CD1F88(v10, v11, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_634(v12) & 1;
    }
  }

  return 0;
}

uint64_t sub_1B8EAA31C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4D0, type metadata accessor for Moviespb_Trailer, protocol conformance descriptor for Moviespb_Trailer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EAA39C(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD378, type metadata accessor for Moviespb_Trailer, protocol conformance descriptor for Moviespb_Trailer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EAA40C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F88(&qword_1EBABD378, type metadata accessor for Moviespb_Trailer, protocol conformance descriptor for Moviespb_Trailer);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EAA48C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD0B0);
  __swift_project_value_buffer(v0, qword_1EBABD0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MOVIE_480";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MOVIE_720";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UNKNOWN";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EAA6D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD0C8);
  __swift_project_value_buffer(v0, qword_1EBABD0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "fresh";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "author";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "date";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Moviespb_RottenTomatoReview.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Moviespb_RottenTomatoReview.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(v4, v5, 2), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 3), !v1))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
        {
          type metadata accessor for Moviespb_RottenTomatoReview(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Moviespb_RottenTomatoReview.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v5 = *(v4 + 8) == v2[1] && v3[2] == v2[2];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v3[3] == v2[3] && v3[4] == v2[4];
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || v3[5] != v2[5])
  {
    return 0;
  }

  type metadata accessor for Moviespb_RottenTomatoReview(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  v9 = sub_1B8CD1F88(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8EAAC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4C8, type metadata accessor for Moviespb_RottenTomatoReview, protocol conformance descriptor for Moviespb_RottenTomatoReview);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EAAC90(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD390, type metadata accessor for Moviespb_RottenTomatoReview, protocol conformance descriptor for Moviespb_RottenTomatoReview);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EAAD00(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F88(&qword_1EBABD390, type metadata accessor for Moviespb_RottenTomatoReview, protocol conformance descriptor for Moviespb_RottenTomatoReview);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EAAD98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD0E0);
  __swift_project_value_buffer(v0, qword_1EBABD0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1B96511C0;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "address";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "city";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "state";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "url";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "showtimes";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "latitude";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "longitude";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "distance_from_user";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "fandango_id";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "theater_id";
  *(v27 + 1) = 10;
  v27[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Moviespb_MovieTheater.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 10:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8EAB274(v3, v4, v5, v6);
        break;
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EAB274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Moviespb_Showtime(0);
  sub_1B8CD1F88(&qword_1EBABD1A0, type metadata accessor for Moviespb_Showtime, protocol conformance descriptor for Moviespb_Showtime);
  return sub_1B964C570();
}

uint64_t Moviespb_MovieTheater.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(v12, v13, 4), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v17 || (result = OUTLINED_FUNCTION_3(v15, v16, 5), !v0))
          {
            if (!*(*(v1 + 80) + 16) || (type metadata accessor for Moviespb_Showtime(0), sub_1B8CD1F88(&qword_1EBABD1A0, type metadata accessor for Moviespb_Showtime, protocol conformance descriptor for Moviespb_Showtime), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C730(), !v0))
            {
              if (*(v1 + 88) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
              {
                if (*(v1 + 96) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
                {
                  if (*(v1 + 104) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
                  {
                    OUTLINED_FUNCTION_1();
                    if (!v20 || (result = OUTLINED_FUNCTION_3(v18, v19, 10), !v0))
                    {
                      OUTLINED_FUNCTION_1();
                      if (!v23 || (result = OUTLINED_FUNCTION_3(v21, v22, 11), !v0))
                      {
                        type metadata accessor for Moviespb_MovieTheater(0);
                        return OUTLINED_FUNCTION_8_1();
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
  }

  return result;
}

uint64_t static Moviespb_MovieTheater.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v2 + 48) == *(v1 + 48) && *(v2 + 56) == *(v1 + 56);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v2 + 64) == *(v1 + 64) && *(v2 + 72) == *(v1 + 72);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7CEFC(*(v2 + 80), *(v1 + 80));
  if ((v12 & 1) == 0 || *(v2 + 88) != *(v1 + 88) || *(v2 + 96) != *(v1 + 96) || *(v2 + 104) != *(v1 + 104))
  {
    return 0;
  }

  v13 = *(v2 + 112) == *(v1 + 112) && *(v2 + 120) == *(v1 + 120);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v2 + 128) == *(v1 + 128) && *(v2 + 136) == *(v1 + 136);
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Moviespb_MovieTheater(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  v17 = sub_1B8CD1F88(v15, v16, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v17) & 1;
}

uint64_t sub_1B8EAB754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4C0, type metadata accessor for Moviespb_MovieTheater, protocol conformance descriptor for Moviespb_MovieTheater);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EAB7D4(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD3A8, type metadata accessor for Moviespb_MovieTheater, protocol conformance descriptor for Moviespb_MovieTheater);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EAB844(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F88(&qword_1EBABD3A8, type metadata accessor for Moviespb_MovieTheater, protocol conformance descriptor for Moviespb_MovieTheater);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EAB8DC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD0F8);
  __swift_project_value_buffer(v0, qword_1EBABD0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "time";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timezone";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Moviespb_Showtime.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8EABC3C(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8EABB88(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B8EABB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Moviespb_Showtime(0);
  sub_1B964C110();
  sub_1B8CD1F88(&qword_1EBABD1B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1B964C580();
}

uint64_t Moviespb_Showtime.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Moviespb_Showtime(0);
  sub_1B8EA6D9C(v5 + *(v23 + 28), v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1B8D9207C(v9, &off_1EBAB90F0, &unk_1B964D8E0);
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
    OUTLINED_FUNCTION_17_8();
    sub_1B8CD1F88(v16, v17, MEMORY[0x1E69AA8F8]);
    sub_1B964C740();
    if (v4)
    {
      return (*(v12 + 8))(v15, v10);
    }

    (*(v12 + 8))(v15, v10);
  }

  if (!*v5 || (v19 = *(v5 + 8), v21 = *v5, v22 = v19, sub_1B8EADBF4(), result = sub_1B964C680(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v20)
    {
      return sub_1B964C290();
    }

    result = sub_1B964C700();
    if (!v4)
    {
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Moviespb_Showtime.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = *(type metadata accessor for Moviespb_Showtime(0) + 28);
  v17 = *(v12 + 56);
  sub_1B8EA6D9C(v1 + v16, v15);
  sub_1B8EA6D9C(v0 + v16, &v15[v17]);
  OUTLINED_FUNCTION_178(v15, 1, v2);
  if (!v18)
  {
    sub_1B8EA6D9C(v15, v11);
    OUTLINED_FUNCTION_178(&v15[v17], 1, v2);
    if (!v18)
    {
      (*(v4 + 32))(v7, &v15[v17], v2);
      OUTLINED_FUNCTION_17_8();
      sub_1B8CD1F88(v21, v22, MEMORY[0x1E69AA908]);
      v23 = sub_1B964C850();
      v24 = *(v4 + 8);
      v24(v7, v2);
      v24(v11, v2);
      sub_1B8D9207C(v15, &off_1EBAB90F0, &unk_1B964D8E0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v4 + 8))(v11, v2);
LABEL_9:
    sub_1B8D9207C(v15, &qword_1EBAB90F8, &qword_1B9687990);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_178(&v15[v17], 1, v2);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v15, &off_1EBAB90F0, &unk_1B964D8E0);
LABEL_13:
  v25 = *v1;
  v26 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v26)
    {
      case 1:
        if (v25 == 1)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      case 2:
        if (v25 == 2)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      case 3:
        if (v25 == 3)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      default:
        if (!v25)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
    }
  }

  if (v25 == v26)
  {
LABEL_18:
    v27 = v1[2] == v0[2] && v1[3] == v0[3];
    if (v27 || (sub_1B964C9F0() & 1) != 0)
    {
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_25();
      sub_1B8CD1F88(v28, v29, MEMORY[0x1E69AAC10]);
      v19 = sub_1B964C850();
      return v19 & 1;
    }
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1B8EAC364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4B8, type metadata accessor for Moviespb_Showtime, protocol conformance descriptor for Moviespb_Showtime);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EAC3E4(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD1A0, type metadata accessor for Moviespb_Showtime, protocol conformance descriptor for Moviespb_Showtime);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EAC454(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F88(&qword_1EBABD1A0, type metadata accessor for Moviespb_Showtime, protocol conformance descriptor for Moviespb_Showtime);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EAC4EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD110);
  __swift_project_value_buffer(v0, qword_1EBABD110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "movie_id";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "times";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "has3_d";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "has_i_max";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Moviespb_Screening.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8EAC844(v3, v4, v5, v6);
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EAC844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C110();
  sub_1B8CD1F88(&qword_1EBABD1B8, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1B964C570();
}

uint64_t Moviespb_Screening.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (sub_1B964C110(), OUTLINED_FUNCTION_17_8(), sub_1B8CD1F88(v9, v10, MEMORY[0x1E69AA8F8]), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C730(), !v0))
      {
        if (*(v1 + 40) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
        {
          if (*(v1 + 41) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
          {
            type metadata accessor for Moviespb_Screening(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Moviespb_Screening.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7D988(*(v2 + 32), *(v1 + 32));
  if ((v9 & 1) == 0 || *(v2 + 40) != *(v1 + 40) || *(v2 + 41) != *(v1 + 41))
  {
    return 0;
  }

  type metadata accessor for Moviespb_Screening(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  v13 = sub_1B8CD1F88(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v13) & 1;
}

uint64_t sub_1B8EACB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4B0, type metadata accessor for Moviespb_Screening, protocol conformance descriptor for Moviespb_Screening);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EACC04(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD3D0, type metadata accessor for Moviespb_Screening, protocol conformance descriptor for Moviespb_Screening);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EACC74(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F88(&qword_1EBABD3D0, type metadata accessor for Moviespb_Screening, protocol conformance descriptor for Moviespb_Screening);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EACD0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD128);
  __swift_project_value_buffer(v0, qword_1EBABD128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "width";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Moviespb_CoverArt.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8EAD010(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t Moviespb_CoverArt.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
    {
      if (!*(v1 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
      {
        if (!*(v1 + 24) || (sub_1B8EADC48(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v0))
        {
          type metadata accessor for Moviespb_CoverArt(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Moviespb_CoverArt.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 20) != *(v1 + 20) || !sub_1B8D92198(*(v2 + 24), *(v2 + 32), *(v1 + 24)))
  {
    return 0;
  }

  type metadata accessor for Moviespb_CoverArt(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  v8 = sub_1B8CD1F88(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8EAD2C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4A8, type metadata accessor for Moviespb_CoverArt, protocol conformance descriptor for Moviespb_CoverArt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EAD340(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt, protocol conformance descriptor for Moviespb_CoverArt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EAD3B0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F88(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt, protocol conformance descriptor for Moviespb_CoverArt);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EAD430()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD140);
  __swift_project_value_buffer(v0, qword_1EBABD140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIXTEEN_BY_NINE";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SQUARE";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EAD680()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD158);
  __swift_project_value_buffer(v0, qword_1EBABD158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localizedGenre";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "genreCategory";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EAD8C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  v12 = sub_1B8CD1F88(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B8EAD9B8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD1F88(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EADA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4A0, type metadata accessor for Moviespb_Genre, protocol conformance descriptor for Moviespb_Genre);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EADB04(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD400, type metadata accessor for Moviespb_Genre, protocol conformance descriptor for Moviespb_Genre);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EADB74(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1F88(&qword_1EBABD400, type metadata accessor for Moviespb_Genre, protocol conformance descriptor for Moviespb_Genre);

  return sub_1B964C5D0();
}

unint64_t sub_1B8EADBF4()
{
  result = qword_1EBABD1B0;
  if (!qword_1EBABD1B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_ShowtimeType, &type metadata for Moviespb_ShowtimeType, v0, v1);
    atomic_store(result, &qword_1EBABD1B0);
  }

  return result;
}

unint64_t sub_1B8EADC48()
{
  result = qword_1EBABD1D0;
  if (!qword_1EBABD1D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_CoverArt.AspectRatio, &type metadata for Moviespb_CoverArt.AspectRatio, v0, v1);
    atomic_store(result, &qword_1EBABD1D0);
  }

  return result;
}

unint64_t sub_1B8EADCA0()
{
  result = qword_1EBABD1E8;
  if (!qword_1EBABD1E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_ShowtimeType, &type metadata for Moviespb_ShowtimeType, v0, v1);
    atomic_store(result, &qword_1EBABD1E8);
  }

  return result;
}

unint64_t sub_1B8EADCF8()
{
  result = qword_1EBABD1F0;
  if (!qword_1EBABD1F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_ShowtimeType, &type metadata for Moviespb_ShowtimeType, v0, v1);
    atomic_store(result, &qword_1EBABD1F0);
  }

  return result;
}

unint64_t sub_1B8EADD50()
{
  result = qword_1EBABD1F8;
  if (!qword_1EBABD1F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_ShowtimeType, &type metadata for Moviespb_ShowtimeType, v0, v1);
    atomic_store(result, &qword_1EBABD1F8);
  }

  return result;
}

unint64_t sub_1B8EADDD8()
{
  result = qword_1EBABD210;
  if (!qword_1EBABD210)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.OfferType, &type metadata for Moviespb_Availability.OfferType, v0, v1);
    atomic_store(result, &qword_1EBABD210);
  }

  return result;
}

unint64_t sub_1B8EADE30()
{
  result = qword_1EBABD218;
  if (!qword_1EBABD218)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.OfferType, &type metadata for Moviespb_Availability.OfferType, v0, v1);
    atomic_store(result, &qword_1EBABD218);
  }

  return result;
}

unint64_t sub_1B8EADE88()
{
  result = qword_1EBABD220;
  if (!qword_1EBABD220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.OfferType, &type metadata for Moviespb_Availability.OfferType, v0, v1);
    atomic_store(result, &qword_1EBABD220);
  }

  return result;
}

unint64_t sub_1B8EADEE0()
{
  result = qword_1EBABD228;
  if (!qword_1EBABD228)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.MediaType, &type metadata for Moviespb_Availability.MediaType, v0, v1);
    atomic_store(result, &qword_1EBABD228);
  }

  return result;
}

unint64_t sub_1B8EADF38()
{
  result = qword_1EBABD230;
  if (!qword_1EBABD230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.MediaType, &type metadata for Moviespb_Availability.MediaType, v0, v1);
    atomic_store(result, &qword_1EBABD230);
  }

  return result;
}

unint64_t sub_1B8EADF90()
{
  result = qword_1EBABD238;
  if (!qword_1EBABD238)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.MediaType, &type metadata for Moviespb_Availability.MediaType, v0, v1);
    atomic_store(result, &qword_1EBABD238);
  }

  return result;
}

unint64_t sub_1B8EADFE8()
{
  result = qword_1EBABD240;
  if (!qword_1EBABD240)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.VideoQuality, &type metadata for Moviespb_Availability.VideoQuality, v0, v1);
    atomic_store(result, &qword_1EBABD240);
  }

  return result;
}

unint64_t sub_1B8EAE040()
{
  result = qword_1EBABD248;
  if (!qword_1EBABD248)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.VideoQuality, &type metadata for Moviespb_Availability.VideoQuality, v0, v1);
    atomic_store(result, &qword_1EBABD248);
  }

  return result;
}

unint64_t sub_1B8EAE098()
{
  result = qword_1EBABD250;
  if (!qword_1EBABD250)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.VideoQuality, &type metadata for Moviespb_Availability.VideoQuality, v0, v1);
    atomic_store(result, &qword_1EBABD250);
  }

  return result;
}

unint64_t sub_1B8EAE0F0()
{
  result = qword_1EBABD258;
  if (!qword_1EBABD258)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.PlatformState, &type metadata for Moviespb_Availability.PlatformState, v0, v1);
    atomic_store(result, &qword_1EBABD258);
  }

  return result;
}

unint64_t sub_1B8EAE148()
{
  result = qword_1EBABD260;
  if (!qword_1EBABD260)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.PlatformState, &type metadata for Moviespb_Availability.PlatformState, v0, v1);
    atomic_store(result, &qword_1EBABD260);
  }

  return result;
}

unint64_t sub_1B8EAE1A0()
{
  result = qword_1EBABD268;
  if (!qword_1EBABD268)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.PlatformState, &type metadata for Moviespb_Availability.PlatformState, v0, v1);
    atomic_store(result, &qword_1EBABD268);
  }

  return result;
}

unint64_t sub_1B8EAE1F8()
{
  result = qword_1EBABD270;
  if (!qword_1EBABD270)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.SearchBrandState, &type metadata for Moviespb_Availability.SearchBrandState, v0, v1);
    atomic_store(result, &qword_1EBABD270);
  }

  return result;
}

unint64_t sub_1B8EAE250()
{
  result = qword_1EBABD278;
  if (!qword_1EBABD278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.SearchBrandState, &type metadata for Moviespb_Availability.SearchBrandState, v0, v1);
    atomic_store(result, &qword_1EBABD278);
  }

  return result;
}

unint64_t sub_1B8EAE2A8()
{
  result = qword_1EBABD280;
  if (!qword_1EBABD280)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.SearchBrandState, &type metadata for Moviespb_Availability.SearchBrandState, v0, v1);
    atomic_store(result, &qword_1EBABD280);
  }

  return result;
}

unint64_t sub_1B8EAE3F0()
{
  result = qword_1EBABD2D8;
  if (!qword_1EBABD2D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Trailer.FormatType, &type metadata for Moviespb_Trailer.FormatType, v0, v1);
    atomic_store(result, &qword_1EBABD2D8);
  }

  return result;
}

unint64_t sub_1B8EAE448()
{
  result = qword_1EBABD2E0;
  if (!qword_1EBABD2E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Trailer.FormatType, &type metadata for Moviespb_Trailer.FormatType, v0, v1);
    atomic_store(result, &qword_1EBABD2E0);
  }

  return result;
}

unint64_t sub_1B8EAE4A0()
{
  result = qword_1EBABD2E8;
  if (!qword_1EBABD2E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Trailer.FormatType, &type metadata for Moviespb_Trailer.FormatType, v0, v1);
    atomic_store(result, &qword_1EBABD2E8);
  }

  return result;
}

unint64_t sub_1B8EAE528()
{
  result = qword_1EBABD300;
  if (!qword_1EBABD300)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_CoverArt.AspectRatio, &type metadata for Moviespb_CoverArt.AspectRatio, v0, v1);
    atomic_store(result, &qword_1EBABD300);
  }

  return result;
}

unint64_t sub_1B8EAE580()
{
  result = qword_1EBABD308;
  if (!qword_1EBABD308)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_CoverArt.AspectRatio, &type metadata for Moviespb_CoverArt.AspectRatio, v0, v1);
    atomic_store(result, &qword_1EBABD308);
  }

  return result;
}

unint64_t sub_1B8EAE5D8()
{
  result = qword_1EBABD310;
  if (!qword_1EBABD310)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_CoverArt.AspectRatio, &type metadata for Moviespb_CoverArt.AspectRatio, v0, v1);
    atomic_store(result, &qword_1EBABD310);
  }

  return result;
}

uint64_t sub_1B8EAF1D4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Moviespb_Availability._StorageClass();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8EAF320(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8EAF428(uint64_t a1)
{
  sub_1B8EAF600(319, &qword_1EBABD460, type metadata accessor for Moviespb_Showtime, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EAF534(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B8EAF600(319, &qword_1ED9EB350, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EAF600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B8EAF68C(uint64_t a1)
{
  sub_1B8EAF600(319, &qword_1EBABD488, MEMORY[0x1E69AA900], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8EAF7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1B964C2B0();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B8EAF854()
{
  result = qword_1EBABD4F0;
  if (!qword_1EBABD4F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.SearchBrandState, &type metadata for Moviespb_Availability.SearchBrandState, v0, v1);
    atomic_store(result, &qword_1EBABD4F0);
  }

  return result;
}

unint64_t sub_1B8EAF8A8()
{
  result = qword_1EBABD4F8;
  if (!qword_1EBABD4F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.PlatformState, &type metadata for Moviespb_Availability.PlatformState, v0, v1);
    atomic_store(result, &qword_1EBABD4F8);
  }

  return result;
}

unint64_t sub_1B8EAF8FC()
{
  result = qword_1EBABD500;
  if (!qword_1EBABD500)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.VideoQuality, &type metadata for Moviespb_Availability.VideoQuality, v0, v1);
    atomic_store(result, &qword_1EBABD500);
  }

  return result;
}

unint64_t sub_1B8EAF950()
{
  result = qword_1EBABD508;
  if (!qword_1EBABD508)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.MediaType, &type metadata for Moviespb_Availability.MediaType, v0, v1);
    atomic_store(result, &qword_1EBABD508);
  }

  return result;
}

unint64_t sub_1B8EAF9A4()
{
  result = qword_1EBABD510;
  if (!qword_1EBABD510)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Moviespb_Availability.OfferType, &type metadata for Moviespb_Availability.OfferType, v0, v1);
    atomic_store(result, &qword_1EBABD510);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Moviespb_Availability(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;
  result = type metadata accessor for Moviespb_Availability(0);
  *(a1 + 84) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_12_10()
{
  type metadata accessor for Moviespb_Availability(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_13_7()
{
  type metadata accessor for Moviespb_Availability(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_49_4()
{

  return type metadata accessor for Moviespb_Availability._StorageClass();
}

uint64_t OUTLINED_FUNCTION_54_3()
{

  return type metadata accessor for Moviespb_Availability._StorageClass();
}

uint64_t OUTLINED_FUNCTION_65_4()
{
  type metadata accessor for Moviespb_Availability(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_74_4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return type metadata accessor for Moviespb_Availability._StorageClass();
}

uint64_t Nlgpb_NlgDialog.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  type metadata accessor for Nlgpb_NlgDialog(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Nlgpb_NlgDialog(uint64_t a1)
{
  result = qword_1ED9CD918;
  if (!qword_1ED9CD918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Nlgpb_NlgDialog.written.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Nlgpb_NlgDialog.spoken.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Nlgpb_NlgDialog.modelID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Nlgpb_NlgDialog.nlgKey.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Nlgpb_NlgDialog.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Nlgpb_NlgDialog(0) + 32);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Nlgpb_NlgDialog.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Nlgpb_NlgDialog(0) + 32);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B8EB0190()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD518);
  __swift_project_value_buffer(v0, qword_1EBABD518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "written";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spoken";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "model_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "nlg_key";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Nlgpb_NlgDialog._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6528 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Nlgpb_NlgDialog.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Nlgpb_NlgDialog.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v1))
      {
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(v12, v13, 4), !v1))
        {
          type metadata accessor for Nlgpb_NlgDialog(0);
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Nlgpb_NlgDialog.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Nlgpb_NlgDialog(0);
  sub_1B964C2B0();
  sub_1B8CD1FD0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Nlgpb_NlgDialog.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Nlgpb_NlgDialog(0);
  sub_1B8CD1FD0(&qword_1EBABD530, type metadata accessor for Nlgpb_NlgDialog, protocol conformance descriptor for Nlgpb_NlgDialog);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EB080C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1FD0(&qword_1EBABD548, type metadata accessor for Nlgpb_NlgDialog, protocol conformance descriptor for Nlgpb_NlgDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EB088C(uint64_t a1)
{
  v2 = sub_1B8CD1FD0(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog, protocol conformance descriptor for Nlgpb_NlgDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EB08FC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1FD0(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog, protocol conformance descriptor for Nlgpb_NlgDialog);

  return sub_1B964C5D0();
}

uint64_t Snippetpb_ExperimentalVisualSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Snippetpb_ExperimentalVisualSnippet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!sub_1B8D57FD0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  if ((MEMORY[0x1BFADC060](*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7B19C(*(a1 + 32), *(a2 + 32));
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_22();
  v7 = sub_1B8CD2018(v5, v6, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v7) & 1;
}

uint64_t Snippetpb_ExperimentalVisualEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippetpb_ExperimentalVisualEntity.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snippetpb_ExperimentalVisualEntity.locationPoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  sub_1B8DF97C0(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Locationpb_Point(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    return sub_1B8DFAC04(v6, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  sub_1B964C130();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  result = __swift_getEnumTagSinglePayload(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B8D9207C(v6, &qword_1EBAB9280, &qword_1B96535F0);
  }

  return result;
}

uint64_t sub_1B8EB0E18(uint64_t a1)
{
  v2 = type metadata accessor for Locationpb_Point(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8DFAC68(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Snippetpb_ExperimentalVisualEntity.locationPoint.setter();
}

uint64_t Snippetpb_ExperimentalVisualEntity.locationPoint.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(v2) + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB9280, &qword_1B96535F0);
  sub_1B8DFAC04(v0, v1 + v3);
  v4 = type metadata accessor for Locationpb_Point(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Snippetpb_ExperimentalVisualEntity.locationPoint.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_59_1();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[4] = v9;
  v10 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(0) + 28);
  *(v3 + 10) = v10;
  sub_1B8DF97C0(v1 + v10, v6);
  OUTLINED_FUNCTION_117(v6);
  if (v11)
  {
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    *(v9 + 24) = 1;
    v9[4] = 0;
    v9[5] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    OUTLINED_FUNCTION_117(v6);
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    sub_1B8DFAC04(v6, v9);
  }

  return sub_1B8DF9CEC;
}

BOOL Snippetpb_ExperimentalVisualEntity.hasLocationPoint.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  sub_1B8DF97C0(v0 + *(v5 + 28), v4);
  v6 = type metadata accessor for Locationpb_Point(0);
  v7 = __swift_getEnumTagSinglePayload(v4, 1, v6) != 1;
  sub_1B8D9207C(v4, &qword_1EBAB9280, &qword_1B96535F0);
  return v7;
}

Swift::Void __swiftcall Snippetpb_ExperimentalVisualEntity.clearLocationPoint()()
{
  v1 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB9280, &qword_1B96535F0);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Snippetpb_ExperimentalVisualEntity.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Snippetpb_ExperimentalVisualEntity.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Snippetpb_ExperimentalVisualEntity.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Snippetpb_ExperimentalVisualEntity(v0);
  return nullsub_1;
}

uint64_t Snippetpb_ExperimentalVisualEntity.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Snippetpb_ExperimentalVisualSnippet.domain.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Snippetpb_ExperimentalVisualSnippet.domain.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Snippetpb_ExperimentalVisualSnippet.field2.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_ExperimentalVisualSnippet.field2.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B8D538A0(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snippetpb_ExperimentalVisualSnippet.visualEntities.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Snippetpb_ExperimentalVisualSnippet.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Snippetpb_ExperimentalVisualSnippet.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Snippetpb_ExperimentalVisualSnippet(v2) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Snippetpb_ExperimentalVisualSnippet.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Snippetpb_ExperimentalVisualSnippet(v0);
  return nullsub_1;
}

uint64_t sub_1B8EB15A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD550);
  __swift_project_value_buffer(v0, qword_1EBABD550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "location_point";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Snippetpb_ExperimentalVisualEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8EB1858(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8EB1858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  type metadata accessor for Locationpb_Point(0);
  sub_1B8CD2018(&qword_1EBABA448, type metadata accessor for Locationpb_Point, protocol conformance descriptor for Locationpb_Point);
  return sub_1B964C580();
}

uint64_t Snippetpb_ExperimentalVisualEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v14 - v4;
  v6 = type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  if (!v10 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
    {
      v13 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
      sub_1B8DF97C0(v1 + *(v13 + 28), v5);
      if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
      {
        sub_1B8D9207C(v5, &qword_1EBAB9280, &qword_1B96535F0);
      }

      else
      {
        v14[1] = v13;
        sub_1B8DFAC04(v5, v9);
        sub_1B8CD2018(&qword_1EBABA448, type metadata accessor for Locationpb_Point, protocol conformance descriptor for Locationpb_Point);
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        result = sub_1B8DFABA8(v9);
        if (v0)
        {
          return result;
        }
      }

      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Snippetpb_ExperimentalVisualEntity.== infix(_:_:)(void *a1, void *a2)
{
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9288, &unk_1B964DA70);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = *a1 == *a2 && a1[1] == a2[1];
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v16 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(0) + 28);
  v18 = *(v11 + 48);
  sub_1B8DF97C0(a1 + v17, v14);
  sub_1B8DF97C0(a2 + v17, &v14[v18]);
  OUTLINED_FUNCTION_117(v14);
  if (v15)
  {
    OUTLINED_FUNCTION_117(&v14[v18]);
    if (v15)
    {
      sub_1B8D9207C(v14, &qword_1EBAB9280, &qword_1B96535F0);
LABEL_22:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_22();
      v24 = sub_1B8CD2018(v22, v23, MEMORY[0x1E69AAC10]);
      v20 = OUTLINED_FUNCTION_634(v24);
      return v20 & 1;
    }

    goto LABEL_19;
  }

  sub_1B8DF97C0(v14, v10);
  OUTLINED_FUNCTION_117(&v14[v18]);
  if (v19)
  {
    sub_1B8DFABA8(v10);
LABEL_19:
    sub_1B8D9207C(v14, &qword_1EBAB9288, &unk_1B964DA70);
    goto LABEL_20;
  }

  sub_1B8DFAC04(&v14[v18], v6);
  v21 = static Locationpb_Point.== infix(_:_:)(v10, v6);
  sub_1B8DFABA8(v6);
  sub_1B8DFABA8(v10);
  sub_1B8D9207C(v14, &qword_1EBAB9280, &qword_1B96535F0);
  if (v21)
  {
    goto LABEL_22;
  }

LABEL_20:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1B8EB1E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2018(&qword_1EBABD5E8, type metadata accessor for Snippetpb_ExperimentalVisualEntity, protocol conformance descriptor for Snippetpb_ExperimentalVisualEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EB1E88(uint64_t a1)
{
  v2 = sub_1B8CD2018(&qword_1EBABD588, type metadata accessor for Snippetpb_ExperimentalVisualEntity, protocol conformance descriptor for Snippetpb_ExperimentalVisualEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EB1EF8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2018(&qword_1EBABD588, type metadata accessor for Snippetpb_ExperimentalVisualEntity, protocol conformance descriptor for Snippetpb_ExperimentalVisualEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EB1F94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD568);
  __swift_project_value_buffer(v0, qword_1EBABD568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "field_2";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "visual_entities";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Snippetpb_ExperimentalVisualSnippet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8EB2254(v7, v8, v9, v10);
        break;
      case 2:
        sub_1B964C470();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E8FC9C(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1B8EB2254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  sub_1B8CD2018(&qword_1EBABD588, type metadata accessor for Snippetpb_ExperimentalVisualEntity, protocol conformance descriptor for Snippetpb_ExperimentalVisualEntity);
  return sub_1B964C570();
}

uint64_t Snippetpb_ExperimentalVisualSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (sub_1B8DEE788(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (sub_1B8D99EA8(v2[2], v2[3]) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
    {
      if (!*(v2[4] + 16) || (type metadata accessor for Snippetpb_ExperimentalVisualEntity(0), sub_1B8CD2018(&qword_1EBABD588, type metadata accessor for Snippetpb_ExperimentalVisualEntity, protocol conformance descriptor for Snippetpb_ExperimentalVisualEntity), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B8EB246C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2018(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EB2550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2018(&qword_1EBABD5E0, type metadata accessor for Snippetpb_ExperimentalVisualSnippet, protocol conformance descriptor for Snippetpb_ExperimentalVisualSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EB25D0(uint64_t a1)
{
  v2 = sub_1B8CD2018(&qword_1EBABAFA0, type metadata accessor for Snippetpb_ExperimentalVisualSnippet, protocol conformance descriptor for Snippetpb_ExperimentalVisualSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EB2640(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2018(&qword_1EBABAFA0, type metadata accessor for Snippetpb_ExperimentalVisualSnippet, protocol conformance descriptor for Snippetpb_ExperimentalVisualSnippet);

  return sub_1B964C5D0();
}

void sub_1B8EB2948(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B8EB2B00(319, &qword_1ED9F3558, type metadata accessor for Locationpb_Point, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EB2A34(uint64_t a1)
{
  sub_1B8EB2B00(319, &qword_1EBABD5D8, type metadata accessor for Snippetpb_ExperimentalVisualEntity, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EB2B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t Snippetpb_FoodSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  type metadata accessor for Snippetpb_FoodSnippet(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Snippetpb_FoodSnippet(uint64_t a1)
{
  result = qword_1EBABD620;
  if (!qword_1EBABD620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Snippetpb_FoodSnippet.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56);
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || *(a1 + 16) != *(a2 + 64) || *(a1 + 17) != *(a2 + 68) || *(a1 + 18) != *(a2 + 72))
  {
    return 0;
  }

  type metadata accessor for Snippetpb_FoodSnippet(0);
  sub_1B964C2B0();
  sub_1B8CD2060(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Snippetpb_FoodSnippet.url.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippetpb_FoodSnippet.imageURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippetpb_FoodSnippet.title.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Snippetpb_FoodSnippet.description_p.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Snippetpb_FoodSnippet.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_FoodSnippet(0) + 44);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Snippetpb_FoodSnippet.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Snippetpb_FoodSnippet(0) + 44);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B8EB3154()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD5F0);
  __swift_project_value_buffer(v0, qword_1EBABD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "url";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "image_url";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "description";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "recipe_total_time_seconds";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "servings";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "calories_per_serving";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Snippetpb_FoodSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6540 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD5F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Snippetpb_FoodSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_1B964C530();
        break;
      case 5:
      case 6:
      case 7:
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Snippetpb_FoodSnippet.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), !v2))
  {
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 2), !v2))
    {
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 3), !v2))
      {
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(v13, v14, 4), !v2))
        {
          v16 = v1[16];
          if (!v16 || (result = OUTLINED_FUNCTION_16_9(v16, 5), !v2))
          {
            v17 = v1[17];
            if (!v17 || (result = OUTLINED_FUNCTION_16_9(v17, 6), !v2))
            {
              v18 = v1[18];
              if (!v18 || (result = OUTLINED_FUNCTION_16_9(v18, 7), !v2))
              {
                type metadata accessor for Snippetpb_FoodSnippet(0);
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Snippetpb_FoodSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_FoodSnippet(0);
  sub_1B8CD2060(&qword_1EBABD608, type metadata accessor for Snippetpb_FoodSnippet, protocol conformance descriptor for Snippetpb_FoodSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EB37CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2060(&qword_1EBABD630, type metadata accessor for Snippetpb_FoodSnippet, protocol conformance descriptor for Snippetpb_FoodSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EB384C(uint64_t a1)
{
  v2 = sub_1B8CD2060(&qword_1EBABAF98, type metadata accessor for Snippetpb_FoodSnippet, protocol conformance descriptor for Snippetpb_FoodSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EB38BC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2060(&qword_1EBABAF98, type metadata accessor for Snippetpb_FoodSnippet, protocol conformance descriptor for Snippetpb_FoodSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EB3A84(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Snippetpb_MediaSnippet.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20);
  if (qword_1EBAB6550 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBABD650;
}

uint64_t static Snippetpb_MediaSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_4_16();
  if (*(v1 + v2) != *(v0 + v2))
  {

    sub_1B8EB9A38();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_28_7();
  sub_1B8CD20A8(v5, v6, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Snippetpb_MediaSnippet.id.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4(v0 + 16, v1);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MediaSnippet.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB3DC8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.id.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EB7410(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MediaSnippet.storefrontID.getter()
{
  OUTLINED_FUNCTION_4_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 32, v3);
  return *(v2 + 32);
}

uint64_t Snippetpb_MediaSnippet.storefrontID.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_57_3(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v0;
  return result;
}

uint64_t Snippetpb_MediaSnippet.storefrontID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_4_16();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 32);
  *(v1 + 72) = *(v4 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EB3F60(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v7 = OUTLINED_FUNCTION_177_3();
  v8 = *(v5 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EB7410(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 32, v2 + v11);
  *(v8 + 32) = v4;

  free(v2);
}

uint64_t Snippetpb_MediaSnippet.languageID.getter()
{
  OUTLINED_FUNCTION_4_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 40, v3);
  return *(v2 + 40);
}

uint64_t Snippetpb_MediaSnippet.languageID.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_57_3(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 40, v5);
  *(v6 + 40) = v0;
  return result;
}

uint64_t Snippetpb_MediaSnippet.languageID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_4_16();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 40);
  *(v1 + 72) = *(v4 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EB40F0(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v7 = OUTLINED_FUNCTION_177_3();
  v8 = *(v5 + v3);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EB7410(v9);
    OUTLINED_FUNCTION_168(v10);
  }

  v11 = 48;
  if (a2)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_18(v8 + 40, v2 + v11);
  *(v8 + 40) = v4;

  free(v2);
}

uint64_t Snippetpb_MediaSnippet.adamID.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4(v0 + 48, v1);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MediaSnippet.adamID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.adamID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 48);
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB42C0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.adamID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EB7410(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 48);
    *(v7 + 48) = v3;
    *(v7 + 56) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MediaSnippet.name.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4(v0 + 64, v1);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MediaSnippet.name.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.name.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 64);
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB4498()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.name.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EB7410(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MediaSnippet.kind.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_15();
  result = OUTLINED_FUNCTION_10_4(v1 + 80, v3);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1B8EB4570@<X0>(uint64_t a1@<X8>)
{
  result = Snippetpb_MediaSnippet.kind.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void Snippetpb_MediaSnippet.kind.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_13_8();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v9 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v9);
    *(v2 + v1) = v8;
  }

  OUTLINED_FUNCTION_9_3(v8 + 80, v7);
  *(v8 + 80) = v4;
  *(v8 + 88) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.kind.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_4_16();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 80);
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EB46D4(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_238();
  v5 = *(v4 + 72);
  v6 = *(v2 + 84);
  v7 = *(v2 + 88);
  v8 = *(v2 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v2 + 84);
    v12 = *(v2 + 88);
    OUTLINED_FUNCTION_8_15();
    v13 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EB7410(v13);
    *(v12 + v11) = v10;
  }

  v14 = 48;
  if (a2)
  {
    v14 = 24;
  }

  OUTLINED_FUNCTION_18(v10 + 80, v2 + v14);
  *(v10 + 80) = v5;
  *(v10 + 88) = v8;

  free(v2);
}

uint64_t Snippetpb_MediaSnippet.artistName.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4(v0 + 96, v1);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MediaSnippet.artistName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 96, v5);
  *(v6 + 96) = v2;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.artistName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 96);
  v6 = *(v5 + 104);
  *(v1 + 48) = *(v5 + 96);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB48C8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.artistName.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EB7410(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 96);
    *(v7 + 96) = v3;
    *(v7 + 104) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MediaSnippet.description_p.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4(v0 + 112, v1);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MediaSnippet.description_p.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 112, v5);
  *(v6 + 112) = v2;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 112);
  v6 = *(v5 + 120);
  *(v1 + 48) = *(v5 + 112);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB4AA0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.description_p.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EB7410(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 112);
    *(v7 + 112) = v3;
    *(v7 + 120) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MediaSnippet.url.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4(v0 + 128, v1);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MediaSnippet.url.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 128, v5);
  *(v6 + 128) = v2;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.url.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 128);
  v6 = *(v5 + 136);
  *(v1 + 48) = *(v5 + 128);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB4C78()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.url.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EB7410(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 128);
    *(v7 + 128) = v3;
    *(v7 + 136) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MediaSnippet.releaseDate.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4(v0 + 144, v1);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_MediaSnippet.releaseDate.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 144, v5);
  *(v6 + 144) = v2;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.releaseDate.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 144);
  v6 = *(v5 + 152);
  *(v1 + 48) = *(v5 + 144);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB4E50()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.releaseDate.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_15();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EB7410(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 144);
    *(v7 + 144) = v3;
    *(v7 + 152) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MediaSnippet.genreNames.getter()
{
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 160, v2);
}

uint64_t Snippetpb_MediaSnippet.genreNames.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_57_3(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EB7410(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 160, v5);
  *(v6 + 160) = v0;
}

uint64_t Snippetpb_MediaSnippet.genreNames.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_123_2(v4);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  *(v1 + 48) = *(v0 + 160);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB5020()
{
  OUTLINED_FUNCTION_238();
  v2 = *(v1 + 48);
  if (v3)
  {

    Snippetpb_MediaSnippet.genreNames.setter();
  }

  else
  {
    v4 = *(v0 + 64);
    v5 = *(v0 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v0 + 64);
      v9 = *(v0 + 56);
      OUTLINED_FUNCTION_8_15();
      v10 = OUTLINED_FUNCTION_40_0();
      v7 = sub_1B8EB7410(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_59_3(v7 + 160);
    *(v7 + 160) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_MediaSnippet.artwork.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_23();
    return sub_1B8EBA878();
  }

  return result;
}

uint64_t Snippetpb_MediaSnippet.artwork.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_13_8() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8EB7410(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_1_23();
  sub_1B8EBA878();
  v5 = type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Snippetpb_MediaSnippet.artwork.modify()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Amppb_Artwork(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  *(v2 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v2 + 48) = v10;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__artwork, v2);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_23();
    sub_1B8EBA878();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Snippetpb_MediaSnippet.offers.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_123_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers;
  OUTLINED_FUNCTION_62_0(v0 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers);
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MediaSnippet.userRating.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5 - 8];
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__userRating, v10);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Amppb_UserRating(0);
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    *a1 = 0u;
    a1[1] = 0u;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v6, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_10();
    return sub_1B8EBA878();
  }

  return result;
}

uint64_t sub_1B8EB5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B8EBA8D0();
  return a7(v11);
}

uint64_t Snippetpb_MediaSnippet.userRating.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_13_8() & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8EB7410(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_10_10();
  sub_1B8EBA878();
  v5 = type metadata accessor for Amppb_UserRating(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_73_0();
  sub_1B8DAA170();
  return swift_endAccess();
}
void sub_10028937C(uint64_t result)
{
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = *(result + 16);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5 == i)
      {
        break;
      }

      v7 = *(result + 32 + i);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1000C28C4(v3);
      }

      if (i >= *(v3 + 2))
      {
        __break(1u);
        return;
      }

      v3[i + 32] |= v7;
      *v1 = v3;
    }

    v8 = *(v3 + 2);
    if (v8 >= v5)
    {
      return;
    }
  }

  else
  {
    v8 = 0;
    if (!v5)
    {
      return;
    }
  }

  sub_100234FC0(v9, result + 32, v8, (2 * v5) | 1);
}

uint64_t sub_100289488(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = _swiftEmptyArrayStorage;
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1000C0464(0, v8[2] + 1, 1);
          v8 = v19;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_1000C0464((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        v8[2] = v13 + 1;
        v14 = &v8[2 * v13];
        v14[4] = v10;
        v14[5] = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t AppleBroadcomDriver.capabilities.getter()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    sub_100289668();
    v1 = v2;
    *(v0 + 72) = v2;
  }

  return v1;
}

void sub_100289668()
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v56 = 0x40000000000;
  v57 = __DataStorage.init(length:)() | 0x4000000000000000;
  v54 = &v58;
  sub_10029DD18(sub_10029F330, v53);
  v55[0] = 32;
  v55[1] = 0xE100000000000000;
  __chkstk_darwin();
  v48 = v55;
  v2 = sub_10029C9D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_10029F428, v47, v0, v1, &v49);
  v52 = 0;
  v3 = 0;
  v4 = v2[2];
  v5 = v2 + 3;
  v6 = _swiftEmptyArrayStorage;
LABEL_2:
  v7 = &v5[4 * v3];
  while (v4 != v3)
  {
    if (v3 >= v2[2])
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    ++v3;
    v8 = v7 + 4;
    v10 = v7[1];
    v9 = v7[2];
    v7 += 4;
    if ((v9 ^ v10) < 0x4000)
    {
      v11 = *v8;
      v50 = *(v8 - 1);
      v51 = v5;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55[0] = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000C0894(0, v6[2] + 1, 1);
        v6 = v55[0];
      }

      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000C0894((v13 > 1), v14 + 1, 1);
        v6 = v55[0];
      }

      v6[2] = v14 + 1;
      v15 = &v6[4 * v14];
      v15[4] = v10;
      v15[5] = v9;
      v5 = v51;
      v15[6] = v50;
      v15[7] = v11;
      goto LABEL_2;
    }
  }

  v16 = v6[2];
  if (v16)
  {
    v55[0] = _swiftEmptyArrayStorage;
    sub_1000C0464(0, v16, 0);
    v17 = v55[0];
    v18 = v6 + 7;
    do
    {

      v19 = static String._fromSubstring(_:)();
      v21 = v20;

      v55[0] = v17;
      v23 = v17[2];
      v22 = v17[3];
      if (v23 >= v22 >> 1)
      {
        sub_1000C0464((v22 > 1), v23 + 1, 1);
        v17 = v55[0];
      }

      v17[2] = v23 + 1;
      v24 = &v17[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
      v18 += 4;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin();
  v48 = &v58;
  v25 = sub_100289488(sub_10029F3BC, v47, v17);
  v26 = 0;
  v27 = *(v25 + 16);
  v51 = v25 + 40;
  v28 = -v27;
  v52 = _swiftEmptyArrayStorage;
LABEL_19:
  v29 = v26 + 1;
  v30 = (v51 + 16 * v26);
  while (v28 + v29 != 1)
  {
    v26 = v29;
    if ((v29 - 1) >= *(v25 + 16))
    {
      goto LABEL_63;
    }

    v31 = *(v30 - 1);
    v32 = *v30;
    v33 = v31 == 0x646E61626C617564 && v32 == 0xE800000000000000;
    if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v34 = &static WiFiDriverCapabilities.supportsSimultaneousDualBand;
      if (qword_10058A780 != -1)
      {
        swift_once();
        v34 = &static WiFiDriverCapabilities.supportsSimultaneousDualBand;
      }

      goto LABEL_39;
    }

    if (v31 == 7233902 && v32 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v34 = &static WiFiDriverCapabilities.supportsNAN;
      if (qword_10058A768 != -1)
      {
        swift_once();
        v34 = &static WiFiDriverCapabilities.supportsNAN;
      }

      goto LABEL_39;
    }

    if (v31 != 1818523489 || v32 != 0xE400000000000000)
    {
      ++v29;
      v30 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v34 = &static WiFiDriverCapabilities.supportsAWDL;
    if (qword_10058A770 != -1)
    {
      swift_once();
      v34 = &static WiFiDriverCapabilities.supportsAWDL;
    }

LABEL_39:
    v35 = *v34;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_100117E14(0, *(v52 + 2) + 1, 1, v52);
    }

    v37 = *(v52 + 2);
    v36 = *(v52 + 3);
    if (v37 >= v36 >> 1)
    {
      v52 = sub_100117E14((v36 > 1), v37 + 1, 1, v52);
    }

    v38 = v52;
    *(v52 + 2) = v37 + 1;
    *&v38[8 * v37 + 32] = v35;
    goto LABEL_19;
  }

  v55[0] = _swiftEmptyArrayStorage;
  v51 = *(v52 + 2);
  if (!v51)
  {
LABEL_60:

    sub_1000124C8(v56, v57);
    return;
  }

  v39 = 0;
  v50 = v52 + 32;
  while (v39 < *(v52 + 2))
  {
    v40 = *&v50[8 * v39];
    v41 = v55[0];
    v42 = *(v55[0] + 16);
    v43 = *(v40 + 16);

    if (v42 && v43)
    {
      v44 = 0;
      v45 = v42 - 1;
      while (1)
      {
        v46 = *(v40 + 32 + v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1000C28C4(v41);
        }

        v42 = *(v41 + 2);
        if (v44 >= v42)
        {
          break;
        }

        v41[v44 + 32] |= v46;
        v55[0] = v41;
        if (v45 != v44)
        {
          v33 = v43 - 1 == v44++;
          if (!v33)
          {
            continue;
          }
        }

        goto LABEL_58;
      }

      __break(1u);
      goto LABEL_62;
    }

LABEL_58:
    if (v42 >= v43)
    {
    }

    else
    {
      sub_100234FC0(v40, v40 + 32, v42, (2 * v43) | 1);
    }

    if (++v39 == v51)
    {
      goto LABEL_60;
    }
  }

LABEL_64:
  __break(1u);
}

void BroadcomDriver<>.loadCapabilities()(uint64_t a1, char *a2, void *a3)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v73 = 0x40000000000;
  v74 = __DataStorage.init(length:)() | 0x4000000000000000;
  v68 = a1;
  v69 = a2;
  v70 = a3;
  v71 = v3;
  sub_10029DD18(sub_1002957B0, v67);
  v63 = a1;
  v64 = a2;
  v65 = a3;
  v66 = v3;
  v72[0] = 32;
  v72[1] = 0xE100000000000000;
  __chkstk_darwin();
  v57 = v72;
  v9 = sub_10029C9D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_10029E3C0, v56, v7, v8, &v59);
  v62 = 0;
  v10 = 0;
  v11 = v9[2];
  v12 = v9 + 3;
  v13 = _swiftEmptyArrayStorage;
LABEL_2:
  v14 = &v12[4 * v10];
  while (v11 != v10)
  {
    if (v10 >= v9[2])
    {
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    ++v10;
    v15 = v14 + 4;
    v16 = v14[1];
    v17 = v14[2];
    v14 += 4;
    if ((v17 ^ v16) < 0x4000)
    {
      v18 = *v15;
      v60 = *(v15 - 1);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72[0] = v13;
      v61 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000C0894(0, v13[2] + 1, 1);
        v13 = v72[0];
      }

      v21 = v13[2];
      v20 = v13[3];
      if (v21 >= v20 >> 1)
      {
        sub_1000C0894((v20 > 1), v21 + 1, 1);
        v13 = v72[0];
      }

      v13[2] = v21 + 1;
      v22 = &v13[4 * v21];
      v22[4] = v16;
      v22[5] = v17;
      v12 = v61;
      v22[6] = v60;
      v22[7] = v18;
      goto LABEL_2;
    }
  }

  v23 = v13[2];
  if (v23)
  {
    v72[0] = _swiftEmptyArrayStorage;
    sub_1000C0464(0, v23, 0);
    v24 = v72[0];
    v25 = v13 + 7;
    v26 = v63;
    do
    {

      v27 = static String._fromSubstring(_:)();
      v29 = v28;

      v72[0] = v24;
      v31 = v24[2];
      v30 = v24[3];
      if (v31 >= v30 >> 1)
      {
        sub_1000C0464((v30 > 1), v31 + 1, 1);
        v24 = v72[0];
      }

      v24[2] = v31 + 1;
      v32 = &v24[2 * v31];
      v32[4] = v27;
      v32[5] = v29;
      v25 += 4;
      --v23;
    }

    while (v23);
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
    v26 = v63;
  }

  __chkstk_darwin();
  v56[0] = v26;
  v56[1] = v64;
  v57 = v65;
  v58 = v66;
  v33 = sub_100289488(sub_10029E3DC, &v55, v24);
  v34 = 0;
  v35 = *(v33 + 16);
  v65 = (v33 + 40);
  v36 = -v35;
  v66 = _swiftEmptyArrayStorage;
LABEL_19:
  v37 = v34 + 1;
  v38 = &v65[2 * v34];
  while (v36 + v37 != 1)
  {
    v34 = v37;
    if ((v37 - 1) >= *(v33 + 16))
    {
      goto LABEL_63;
    }

    v39 = *(v38 - 1);
    v40 = *v38;
    v41 = v39 == 0x646E61626C617564 && v40 == 0xE800000000000000;
    if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v42 = &static WiFiDriverCapabilities.supportsSimultaneousDualBand;
      if (qword_10058A780 != -1)
      {
        swift_once();
        v42 = &static WiFiDriverCapabilities.supportsSimultaneousDualBand;
      }

      goto LABEL_39;
    }

    if (v39 == 7233902 && v40 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v42 = &static WiFiDriverCapabilities.supportsNAN;
      if (qword_10058A768 != -1)
      {
        swift_once();
        v42 = &static WiFiDriverCapabilities.supportsNAN;
      }

      goto LABEL_39;
    }

    if (v39 != 1818523489 || v40 != 0xE400000000000000)
    {
      ++v37;
      v38 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    v42 = &static WiFiDriverCapabilities.supportsAWDL;
    if (qword_10058A770 != -1)
    {
      swift_once();
      v42 = &static WiFiDriverCapabilities.supportsAWDL;
    }

LABEL_39:
    v43 = *v42;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_100117E14(0, *(v66 + 2) + 1, 1, v66);
    }

    v45 = *(v66 + 2);
    v44 = *(v66 + 3);
    if (v45 >= v44 >> 1)
    {
      v66 = sub_100117E14((v44 > 1), v45 + 1, 1, v66);
    }

    v46 = v66;
    *(v66 + 2) = v45 + 1;
    *&v46[8 * v45 + 32] = v43;
    goto LABEL_19;
  }

  v72[0] = _swiftEmptyArrayStorage;
  v65 = *(v66 + 2);
  if (!v65)
  {
LABEL_60:

    sub_1000124C8(v73, v74);
    return;
  }

  v47 = 0;
  v64 = v66 + 32;
  while (v47 < *(v66 + 2))
  {
    v48 = *&v64[8 * v47];
    v49 = v72[0];
    v50 = *(v72[0] + 16);
    v51 = *(v48 + 16);

    if (v50 && v51)
    {
      v52 = 0;
      v53 = v50 - 1;
      while (1)
      {
        v54 = *(v48 + 32 + v52);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1000C28C4(v49);
        }

        v50 = *(v49 + 2);
        if (v52 >= v50)
        {
          break;
        }

        v49[v52 + 32] |= v54;
        v72[0] = v49;
        if (v53 != v52)
        {
          v41 = v51 - 1 == v52++;
          if (!v41)
          {
            continue;
          }
        }

        goto LABEL_58;
      }

      __break(1u);
      goto LABEL_62;
    }

LABEL_58:
    if (v50 >= v51)
    {
    }

    else
    {
      sub_100234FC0(v48, v48 + 32, v50, (2 * v51) | 1);
    }

    if (++v47 == v65)
    {
      goto LABEL_60;
    }
  }

LABEL_64:
  __break(1u);
}

uint64_t AppleBroadcomDriver.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7CoreP2P19AppleBroadcomDriver_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppleBroadcomDriver.__allocating_init(device:role:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  swift_allocObject();
  return AppleBroadcomDriver.init(device:role:name:)(a1, v6, a3, a4);
}

uint64_t AppleBroadcomDriver.init(device:role:name:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 80) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 40) = a1;
  *(v4 + 32) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  Logger.init(subsystem:category:)();
  (*(v10 + 32))(v4 + OBJC_IVAR____TtC7CoreP2P19AppleBroadcomDriver_logger, v12, v9);
  return v4;
}

uint64_t AppleBroadcomDriver.deinit()
{
  v1 = v0;
  swift_beginAccess();
  if (*(v0 + 64))
  {
    swift_unownedRetainStrong();
    AppleDevice.stopMonitoringEvents(on:)(*(v0 + 56));
  }

  swift_endAccess();

  sub_100119F14(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  v2 = OBJC_IVAR____TtC7CoreP2P19AppleBroadcomDriver_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t AppleBroadcomDriver.__deallocating_deinit()
{
  v1 = v0;
  swift_beginAccess();
  if (*(v0 + 64))
  {
    swift_unownedRetainStrong();
    AppleDevice.stopMonitoringEvents(on:)(*(v0 + 56));
  }

  swift_endAccess();

  sub_100119F14(*(v0 + 48), *(v0 + 56), *(v0 + 64));

  v2 = OBJC_IVAR____TtC7CoreP2P19AppleBroadcomDriver_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return swift_deallocClassInstance();
}

uint64_t sub_10028A908()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 80);
}

void sub_10028A948(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 80) = a1;
}

void *BroadcomDriver<>.awdlChannelSequence.getter()
{
  v0 = 16;
  sub_100032034(0, 16, 0);
  result = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  v3 = 8 * v2 + 32;
  do
  {
    v7 = result;
    v4 = result[3];
    v5 = v2 + 1;
    if (v2 >= v4 >> 1)
    {
      sub_100032034((v4 > 1), v2 + 1, 1);
      result = v7;
    }

    result[2] = v5;
    v6 = result + v3;
    *v6 = 0;
    *(v6 + 2) = 3;
    v3 += 8;
    v2 = v5;
    --v0;
  }

  while (v0);
  return result;
}

void sub_10028AACC()
{
  v1 = type metadata accessor for Data.Deallocator();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIBYTE(v50) = 1;
  v5 = sub_10004F3B0(&v50 + 3, &v51);
  v7 = v6;
  sub_1002940E0(7233902, 0xE300000000000000, 257, v5, v6, 1);
  if (v0)
  {
    sub_1000124C8(v5, v7);
  }

  else
  {
    sub_1000124C8(v8, v9);
    sub_1000124C8(v5, v7);
    sub_1002940E0(7233902, 0xE300000000000000, 277, 0, 0x4000000000000, 0);
    v11 = v10;
    v13 = v12;
    v14 = sub_10003462C(v10, v12);
    sub_1000124C8(v11, v13);
    v49 = v14 | 0xE5007F;
    v15 = sub_10004F3B0(&v49, &v50);
    v17 = v16;
    sub_1002940E0(7233902, 0xE300000000000000, 277, v15, v16, 1);
    sub_1000124C8(v18, v19);
    sub_1000124C8(v15, v17);
    sub_1002940E0(7233902, 0xE300000000000000, 280, 0, 0x8000000000000, 0);
    v21 = v20;
    v23 = v22;
    v24 = sub_1002A9BCC(v20, v22);
    v25 = HIDWORD(v24);
    v26 = v24;
    sub_1000124C8(v21, v23);
    v47 = v26 | 0x441;
    v48 = v25;
    v27 = sub_10004F3B0(&v47, &v49);
    v29 = v28;
    sub_1002940E0(7233902, 0xE300000000000000, 280, v27, v28, 1);
    sub_1000124C8(v30, v31);
    sub_1000124C8(v27, v29);
    v32 = swift_slowAlloc();
    *v32 = 1;
    *(v32 + 2) = 16;
    *(v32 + 4) |= 0xE8u;
    *(v32 + 5) |= 7u;
    *(v32 + 6) |= 0xB0u;
    v33 = *(v32 + 8);
    *(v32 + 7) = -1;
    v34 = *(v32 + 9);
    *(v32 + 8) = v33 | 0x3F;
    *(v32 + 9) = v34 | 0x90;
    *(v32 + 10) |= 1u;
    (*(v2 + 104))(v4, enum case for Data.Deallocator.none(_:), v1);
    v35 = sub_100002DE8(v32, 20, v4);
    v37 = v36;
    sub_1002940E0(7233902, 0xE300000000000000, 276, v35, v36, 1);
    sub_1000124C8(v38, v39);
    sub_1000124C8(v35, v37);
    v47 = 20;
    v40 = sub_10004F3B0(&v47, &v48);
    v42 = v41;
    sub_1002940E0(7233902, 0xE300000000000000, 261, v40, v41, 1);
    sub_1000124C8(v43, v44);
    sub_1000124C8(v40, v42);
    sub_10000B02C();
    swift_allocError();
    *v45 = xmmword_1004817E0;
    *(v45 + 16) = 0;
    swift_willThrow();
  }
}

uint64_t BroadcomDriver<>.initializeNAN()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Data.Deallocator();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v24[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v25[0]) = 1;
  result = sub_10029A8F4(257, v25, a1, &type metadata for UInt8, a2, a3);
  if (!v3)
  {
    sub_10029AA78(0x115u, a1, &type metadata for UInt32, a2, a3, &v26);
    v25[0] = v26 | 0xE5007F;
    sub_10029A8F4(277, v25, a1, &type metadata for UInt32, a2, a3);
    type metadata accessor for wl_nan_cfg_ctrl2(0);
    v13 = v12;
    sub_10029AA78(0x118u, a1, v12, a2, a3, v25);
    v24[0] = v25[0] | 0x441;
    v24[1] = v25[1];
    sub_10029A8F4(280, v24, a1, v13, a2, a3);
    v14 = swift_slowAlloc();
    *v14 = 1;
    *(v14 + 2) = 16;
    *(v14 + 4) |= 0xE8u;
    *(v14 + 5) |= 7u;
    *(v14 + 6) |= 0xB0u;
    v15 = *(v14 + 8);
    *(v14 + 7) = -1;
    v16 = *(v14 + 9);
    *(v14 + 8) = v15 | 0x3F;
    *(v14 + 9) = v16 | 0x90;
    *(v14 + 10) |= 1u;
    (*(v8 + 104))(v10, enum case for Data.Deallocator.none(_:), v7);
    v17 = sub_100002DE8(v14, 20, v10);
    v19 = v18;
    sub_1002949B4(7233902, 0xE300000000000000, 276, v17, v18, 1, a1, a2, *(a3 + 16));
    sub_1000124C8(v20, v21);
    sub_1000124C8(v17, v19);
    v24[0] = 20;
    sub_10029A8F4(261, v24, a1, &type metadata for UInt32, a2, a3);
    sub_10000B02C();
    swift_allocError();
    *v22 = xmmword_1004817E0;
    *(v22 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

BOOL sub_10028B2DC()
{
  sub_1002940E0(7233902, 0xE300000000000000, 278, 0, 0x1000000000000, 0);
  v1 = v0;
  v3 = v2;
  v4 = sub_100033CDC(v0, v2);
  sub_1000124C8(v1, v3);
  return v4 == 1;
}

uint64_t sub_10028B400(char a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19[7] = a1 & 1;
  (*(v4 + 104))(v7, enum case for Data.Deallocator.none(_:), v3, v5);
  Data.Deallocator._deallocator.getter();
  type metadata accessor for __DataStorage();
  swift_allocObject();

  v8 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
  v9 = __DataStorage._capacity.modify();
  *v10 |= 0x8000000000000000;
  v9(v20, 0);
  v11 = sub_100003020(v8, 1);
  v13 = v12;

  (*(v4 + 8))(v7, v3);
  sub_1002940E0(7233902, 0xE300000000000000, 278, v11, v13, 1);
  v15 = v14;
  v17 = v16;
  result = sub_1000124C8(v11, v13);
  if (!v1)
  {
    sub_100033CDC(v15, v17);
    return sub_1000124C8(v15, v17);
  }

  return result;
}

unint64_t sub_10028B688()
{
  sub_1002940E0(7233902, 0xE300000000000000, 268, 0, 0x6000000000000, 0);
  v1 = v0;
  v3 = v2;
  v4 = sub_100012368(v0, v2);
  sub_1000124C8(v1, v3);
  return v4 & 0xFFFFFFFFFFFFLL;
}

unint64_t BroadcomDriver<>.clusterID.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ether_addr(0);
  sub_10029AA78(0x10Cu, a1, v6, a2, a3, &v8);
  return v8 | (v9 << 32) | (v10 << 40);
}

uint64_t sub_10028B7C8(uint64_t a1)
{
  v8 = a1;
  v9 = BYTE2(a1);
  v10 = BYTE3(a1);
  v11 = BYTE4(a1);
  v12 = BYTE5(a1);
  v2 = sub_10004F3B0(&v8, &v13);
  v4 = v3;
  sub_1002940E0(7233902, 0xE300000000000000, 268, v2, v3, 1);
  if (!v1)
  {
    sub_1000124C8(v5, v6);
  }

  return sub_1000124C8(v2, v4);
}

uint64_t BroadcomDriver<>.update(clusterID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v10 = BYTE2(a1);
  v11 = BYTE3(a1);
  v12 = BYTE4(a1);
  v13 = BYTE5(a1);
  type metadata accessor for ether_addr(0);
  return sub_10029A8F4(268, &v9, a2, v7, a3, a4);
}

uint64_t sub_10028B93C()
{
  sub_1002940E0(7233902, 0xE300000000000000, 514, 0, 0x4000000000000, 0);
  v1 = v0;
  v3 = v2;
  v4 = sub_1002A9CDC(v0, v2);
  sub_1000124C8(v1, v3);
  return bswap32(v4) >> 16;
}

uint64_t BroadcomDriver<>.electionMetric.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for wl_nan_election_metric_config(0);
  sub_10029AA78(0x202u, a1, v6, a2, a3, &v8);
  return __rev16(v8);
}

uint64_t sub_10028BA88(unsigned int a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  v4 = type metadata accessor for Data.Deallocator();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20[4] = v3;
  v20[5] = v2;
  v21 = 0;
  (*(v5 + 104))(v8, enum case for Data.Deallocator.none(_:), v4, v6);
  Data.Deallocator._deallocator.getter();
  type metadata accessor for __DataStorage();
  swift_allocObject();

  v9 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
  v10 = __DataStorage._capacity.modify();
  *v11 |= 0x8000000000000000;
  v10(v22, 0);
  v12 = sub_100003020(v9, 4);
  v14 = v13;

  (*(v5 + 8))(v8, v4);
  sub_1002940E0(7233902, 0xE300000000000000, 514, v12, v14, 1);
  v16 = v15;
  v18 = v17;
  result = sub_1000124C8(v12, v14);
  if (!v1)
  {
    sub_1002A9CDC(v16, v18);
    return sub_1000124C8(v16, v18);
  }

  return result;
}

uint64_t BroadcomDriver<>.update(electionMetric:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v9 = HIBYTE(a1);
  v10 = a1;
  type metadata accessor for wl_nan_election_metric_config(0);
  return sub_10029A50C(514, &v9, a2, v7, a3, a4);
}

uint64_t sub_10028BD6C()
{
  sub_1002940E0(7233902, 0xE300000000000000, 1026, 0, 0x4000000000000, 0);
  v1 = v0;
  v3 = v2;
  v5 = sub_1002A9CDC(v0, v2);
  sub_1000124C8(v1, v3);
  v6 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v5);
  if (v6 == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(HIBYTE(v5));
  if (v8 == 5)
  {
    v8 = 0;
  }

  return v7 | (v8 << 8);
}

uint64_t BroadcomDriver<>.dwAwakePeriods.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for wl_nan_awake_dws(0);
  sub_10029AA78(0x402u, a1, v6, a2, a3, v13);
  v7 = v13[1];
  v8 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v13[0]);
  if (v8 == 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v7);
  if (v10 == 5)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  return v9 | (v11 << 8);
}

uint64_t sub_10028BF08(unsigned int a1)
{
  v8[0] = 0x1008040100uLL >> (8 * a1);
  v8[1] = 0x1008040100uLL >> ((a1 >> 5) & 0xF8);
  v9 = 0;
  v2 = sub_10004F3B0(v8, &v10);
  v4 = v3;
  sub_1002940E0(7233902, 0xE300000000000000, 1026, v2, v3, 1);
  if (!v1)
  {
    sub_1000124C8(v5, v6);
  }

  return sub_1000124C8(v2, v4);
}

uint64_t BroadcomDriver<>.update(dwAwakePeriods:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = 0x1008040100uLL >> (8 * a1);
  v9[1] = 0x1008040100uLL >> ((a1 >> 5) & 0xF8);
  v10 = 0;
  type metadata accessor for wl_nan_awake_dws(0);
  return sub_10029A8F4(1026, v9, a2, v7, a3, a4);
}

BOOL sub_10028C0A0()
{
  sub_1002940E0(7233902, 0xE300000000000000, 513, 0, 0x1000000000000, 0);
  v1 = v0;
  v3 = v2;
  v4 = sub_100033CDC(v0, v2);
  sub_1000124C8(v1, v3);
  return v4 != 0;
}

uint64_t sub_10028C198(char a1)
{
  v8 = a1 & 1;
  v2 = sub_10004F3B0(&v8, &v9);
  v4 = v3;
  sub_1002940E0(7233902, 0xE300000000000000, 513, v2, v3, 1);
  if (!v1)
  {
    sub_1000124C8(v5, v6);
  }

  return sub_1000124C8(v2, v4);
}

uint64_t sub_10028C29C(_BYTE *a1)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchTimeInterval();
  v103 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for SHA256Digest();
  v104 = *(v100 - 8);
  __chkstk_darwin();
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = xmmword_100480A90;
  v117 = xmmword_100480A90;
  v105 = type metadata accessor for NANSubscribe.Configuration(0);
  v106 = a1;
  v14 = &a1[v105[12]];
  v15 = *(v14 + 1);
  if (*(v15 + 16))
  {
    v101 = v5;
    v16 = v13;
    v17 = v11;
    v18 = v9;
    v19 = v10;
    v20 = sub_10029B424(*v14, v15);
    if (v2)
    {
      return sub_1000124C8(v117, *(&v117 + 1));
    }

    v22 = v20;
    v23 = v21;
    v99 = v7;
    sub_10029A0C4(258, v20, v21);
    v3 = 0;
    sub_1000124C8(v22, v23);
    v7 = v99;
    v10 = v19;
    v9 = v18;
    v11 = v17;
    v13 = v16;
    v5 = v101;
  }

  v24 = &v106[v105[11]];
  v25 = *(v24 + 1);
  if (!*(v25 + 16))
  {
    v98 = v10;
    goto LABEL_9;
  }

  v26 = sub_10029B424(*v24, v25);
  if (v3)
  {
    return sub_1000124C8(v117, *(&v117 + 1));
  }

  v101 = v5;
  v96 = v13;
  v98 = v10;
  v28 = v26;
  v29 = v27;
  sub_10029A0C4(257, v26, v27);
  v3 = 0;
  sub_1000124C8(v28, v29);
  v13 = v96;
  v5 = v101;
LABEL_9:
  v30 = &v106[v105[14]];
  v31 = *(v30 + 8);
  v97 = v1;
  v99 = v7;
  if ((v31 & 0xFF00) == 0x200)
  {
    v95 = v9;
    v101 = v5;
    goto LABEL_22;
  }

  v33 = *v30;
  v32 = *(v30 + 1);
  v96 = v33;
  v101 = v32;
  v34 = sub_100286B98(1u, 0, 1uLL);
  if (!v3)
  {
    v35 = v34;
    v36 = sub_100286B80((v31 >> 8) & 1, 1, 1uLL);
    v37 = v36;
    v92 = v11;
    v38 = sub_100286B98(v31, 2, 2uLL);
    v95 = 0;
    v39 = v31;
    if ((v37 & ~v35) != 0)
    {
      v40 = v37;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40 | v35;
    if ((v38 & ~v41) != 0)
    {
      v42 = v38;
    }

    else
    {
      v42 = 0;
    }

    v43 = v42 | v41;
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100480F40;
    *(v44 + 32) = v43;
    v45 = v96;
    v46 = v101;
    sub_10011A008(v96, v101, v39);
    v47 = sub_10002D874(v44);
    v94 = v39;
    v49 = v48;

    v107 = v47;
    v108 = v49;
    v115 = &type metadata for Data;
    v116 = &protocol witness table for Data;
    *&v113 = v45;
    *(&v113 + 1) = v46;
    v50 = sub_100029B34(&v113, &type metadata for Data);
    v51 = *v50;
    v93 = v50[1];
    sub_10011A008(v45, v46, v39);
    sub_10000AB0C(v47, v49);
    v52 = v95;
    sub_100178A18(v51, v93, &v107);
    v3 = v52;
    sub_1000124C8(v47, v49);
    sub_100002A00(&v113);
    v53 = v107;
    v54 = v108;
    sub_10029A0C4(259, v107, v108);
    sub_10011A01C(v45, v101, v94);
    sub_1000124C8(v53, v54);
    if (v52)
    {
      return sub_1000124C8(v117, *(&v117 + 1));
    }

    v95 = v9;
    v101 = v5;
    v11 = v92;
LABEL_22:
    LODWORD(v96) = NANSubscribe.Configuration.serviceInfo.getter();
    v56 = v55;
    v58 = v57;
    v59 = sub_100033AA8(_swiftEmptyArrayStorage);
    v60 = type metadata accessor for BinaryEncoder();
    v61 = swift_allocObject();
    *(v61 + 16) = v102;
    *(v61 + 32) = v59;
    v115 = v60;
    v116 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    *&v113 = v61;

    NANServiceInfo.encode(to:)(&v113, v96, v56, v58);
    if (v3)
    {

      sub_1000124C8(v56, v58);

      sub_100002A00(&v113);
      v63 = v103;
      v62 = v104;
      goto LABEL_34;
    }

    sub_1000124C8(v56, v58);
    sub_100002A00(&v113);
    swift_beginAccess();
    v65 = *(v61 + 16);
    v64 = *(v61 + 24);
    sub_10000AB0C(v65, v64);

    v66 = v64 >> 62;
    v63 = v103;
    if ((v64 >> 62) > 1)
    {
      v62 = v104;
      if (v66 != 2)
      {
        goto LABEL_32;
      }

      v67 = *(v65 + 16);
      v68 = *(v65 + 24);
    }

    else
    {
      if (!v66)
      {
        v62 = v104;
        if ((v64 & 0xFF000000000000) == 0)
        {
          goto LABEL_32;
        }

LABEL_33:
        sub_10029A0C4(780, v65, v64);
        sub_1000124C8(v65, v64);
LABEL_34:
        v69 = *(&v117 + 1) >> 62;
        if ((*(&v117 + 1) >> 62) > 1)
        {
          if (v69 == 2)
          {
            v72 = *(v117 + 16);
            v73 = *(v117 + 24);
            v74 = __OFSUB__(v73, v72);
            v71 = v73 - v72;
            if (v74)
            {
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v70 = v13;
          }

          else
          {
            v70 = v13;
            v71 = 0;
          }
        }

        else if (v69)
        {
          LODWORD(v71) = DWORD1(v117) - v117;
          if (__OFSUB__(DWORD1(v117), v117))
          {
            goto LABEL_67;
          }

          v70 = v13;
          v71 = v71;
        }

        else
        {
          v70 = v13;
          v71 = BYTE14(v117);
        }

        v75 = v71 + 20;
        if (__OFADD__(v71, 20))
        {
          __break(1u);
        }

        else
        {
          v76 = v11;
          v111 = sub_10014345C(v71 + 20);
          v112 = v77;
          v113 = 0uLL;
          v114 = 0;
          SHA256.init()();
          v78 = String.lowercased()();

          sub_1001F93A4(v78._countAndFlagsBits, v78._object, v70);

          v79 = v95;
          SHA256.finalize()();
          SHA256Digest.withUnsafeBytes<A>(_:)();
          (*(v62 + 8))(v79, v100);
          v80 = v109;
          v81 = v110;
          (*(v76 + 8))(v70, v98);
          v109 = v80;
          v110 = v81;
          sub_1000BA0A4();
          DataProtocol.copyBytes(to:)();
          sub_1000124C8(v109, v110);
          if (v75 >= 2)
          {
            v82 = v101;
            if (!((v75 - 2) >> 16))
            {
              LOWORD(v113) = v75 - 2;
              v83 = sub_100028EF8();
              v84 = v99;
              *v99 = 0x80000;
              (*(v63 + 104))(v84, enum case for DispatchTimeInterval.microseconds(_:), v82);
              v85 = sub_100028EF8();
              (*(v63 + 8))(v84, v82);
              if (v85)
              {
                if (v83 == 0x8000000000000000 && v85 == -1)
                {
                  goto LABEL_65;
                }

                if (((v83 / v85) & 0x8000000000000000) == 0)
                {
                  if ((v83 / v85) <= 0xFF)
                  {
                    BYTE2(v113) = v83 / v85;
                    BYTE10(v113) = *v106;
                    if (v106[32] == 1)
                    {
                    }

                    else
                    {
                      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v86 & 1) == 0)
                      {
                        goto LABEL_55;
                      }
                    }

                    HIDWORD(v113) = 4096;
LABEL_55:
                    LODWORD(v114) = -1;
                    sub_10029D13C(&v111, &v113, &v117, 0x14uLL);
                    v87 = v111;
                    v88 = v112;
                    sub_10000AB0C(v111, v112);
                    sub_1002940E0(7233902, 0xE300000000000000, 773, v87, v88, 1);
                    sub_1000124C8(v89, v90);
                    sub_1000124C8(v87, v88);
                    sub_1000124C8(v87, v88);
                    return sub_1000124C8(v117, *(&v117 + 1));
                  }

                  goto LABEL_64;
                }

LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
                goto LABEL_66;
              }

LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        __break(1u);
        goto LABEL_61;
      }

      v67 = v65;
      v68 = v65 >> 32;
      v62 = v104;
    }

    if (v67 != v68)
    {
      goto LABEL_33;
    }

LABEL_32:
    sub_1000124C8(v65, v64);
    goto LABEL_34;
  }

  sub_10000AB0C(v96, v101);
  swift_unexpectedError();
  __break(1u);
  sub_10000AB0C(v96, v101);
  swift_unexpectedError();
  __break(1u);
  sub_10000AB0C(v96, v101);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t BroadcomDriver<>.start(configuration:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v12 = type metadata accessor for DispatchTimeInterval();
  v98 = *(v12 - 8);
  __chkstk_darwin();
  v14 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SHA256Digest();
  v103 = *(v15 - 8);
  v104 = v15;
  __chkstk_darwin();
  v101 = v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for SHA256();
  v100 = *(v102 - 8);
  __chkstk_darwin();
  v99 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = xmmword_100480A90;
  v117 = xmmword_100480A90;
  v18 = type metadata accessor for NANSubscribe.Configuration(0);
  v19 = v18[12];
  v106 = a1;
  v20 = &a1[v19];
  v21 = *(v20 + 1);
  if (*(v21 + 16))
  {
    v97 = a2;
    v22 = a3;
    v23 = sub_10029B424(*v20, v21);
    if (v5)
    {
      return sub_1000124C8(v117, *(&v117 + 1));
    }

    v25 = v23;
    v26 = v24;
    v96 = v14;
    v95 = v12;
    sub_10029A0C4(258, v23, v24);
    v6 = 0;
    sub_1000124C8(v25, v26);
    v12 = v95;
    v14 = v96;
    a3 = v22;
    a2 = v97;
  }

  v27 = &v106[v18[11]];
  v28 = *(v27 + 1);
  if (!*(v28 + 16))
  {
    v96 = v14;
    v97 = a2;
    goto LABEL_9;
  }

  v29 = sub_10029B424(*v27, v28);
  if (v6)
  {
    return sub_1000124C8(v117, *(&v117 + 1));
  }

  v94 = a3;
  v96 = v14;
  v31 = v29;
  v32 = v30;
  sub_10029A0C4(257, v29, v30);
  v6 = 0;
  sub_1000124C8(v31, v32);
  v97 = a2;
  a3 = v94;
LABEL_9:
  v33 = &v106[v18[14]];
  v34 = *(v33 + 8);
  v93[1] = v7;
  v94 = a3;
  v93[0] = a4;
  v93[2] = v18;
  if ((v34 & 0xFF00) == 0x200)
  {
    goto LABEL_20;
  }

  v35 = *(v33 + 1);
  v95 = *v33;
  v36 = sub_100286B98(1u, 0, 1uLL);
  if (!v6)
  {
    v37 = v36;
    v38 = sub_100286B80((v34 >> 8) & 1, 1, 1uLL);
    v39 = v38;
    v40 = sub_100286B98(v34, 2, 2uLL);
    if ((v39 & ~v37) != 0)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41 | v37;
    if ((v40 & ~v42) != 0)
    {
      v43 = v40;
    }

    else
    {
      v43 = 0;
    }

    v44 = v43 | v42;
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_100480F40;
    *(v45 + 32) = v44;
    v46 = v95;
    sub_10011A008(v95, v35, v34);
    v47 = sub_10002D874(v45);
    v49 = v48;

    v107 = v47;
    v108 = v49;
    v115 = &type metadata for Data;
    v116 = &protocol witness table for Data;
    *&v113 = v46;
    *(&v113 + 1) = v35;
    v50 = sub_100029B34(&v113, &type metadata for Data);
    v51 = *v50;
    v52 = v50[1];
    sub_10011A008(v46, v35, v34);
    sub_10000AB0C(v47, v49);
    sub_100178A18(v51, v52, &v107);
    sub_1000124C8(v47, v49);
    sub_100002A00(&v113);
    v54 = v107;
    v53 = v108;
    sub_10029A0C4(259, v107, v108);
    v6 = 0;
    sub_10011A01C(v46, v35, v34);
    sub_1000124C8(v54, v53);
LABEL_20:
    v95 = v12;
    v55 = NANSubscribe.Configuration.serviceInfo.getter();
    v57 = v56;
    v59 = v58;
    v60 = sub_100033AA8(_swiftEmptyArrayStorage);
    v61 = type metadata accessor for BinaryEncoder();
    v62 = swift_allocObject();
    *(v62 + 16) = v105;
    *(v62 + 32) = v60;
    v115 = v61;
    v116 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    *&v113 = v62;

    NANServiceInfo.encode(to:)(&v113, v55, v57, v59);
    if (v6)
    {

      sub_1000124C8(v57, v59);

      sub_100002A00(&v113);
      goto LABEL_32;
    }

    sub_1000124C8(v57, v59);
    sub_100002A00(&v113);
    swift_beginAccess();
    v64 = *(v62 + 16);
    v63 = *(v62 + 24);
    sub_10000AB0C(v64, v63);

    v65 = v63 >> 62;
    if ((v63 >> 62) > 1)
    {
      if (v65 != 2)
      {
        goto LABEL_30;
      }

      v66 = *(v64 + 16);
      v67 = *(v64 + 24);
    }

    else
    {
      if (!v65)
      {
        if ((v63 & 0xFF000000000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_31:
        sub_10029A0C4(780, v64, v63);
        sub_1000124C8(v64, v63);
LABEL_32:
        v68 = v117;
        v69 = *(&v117 + 1) >> 62;
        if ((*(&v117 + 1) >> 62) > 1)
        {
          if (v69 != 2)
          {
            v68 = 0;
            goto LABEL_42;
          }

          v70 = *(v117 + 16);
          v71 = *(v117 + 24);
          v72 = __OFSUB__(v71, v70);
          v68 = v71 - v70;
          if (!v72)
          {
LABEL_42:
            v73 = v68 + 20;
            if (__OFADD__(v68, 20))
            {
              __break(1u);
            }

            else
            {
              v111 = sub_10014345C(v68 + 20);
              v112 = v74;
              v113 = 0uLL;
              v114 = 0;
              v75 = v99;
              SHA256.init()();
              v76 = String.lowercased()();

              sub_1001F93A4(v76._countAndFlagsBits, v76._object, v75);

              v77 = v101;
              SHA256.finalize()();
              SHA256Digest.withUnsafeBytes<A>(_:)();
              (*(v103 + 8))(v77, v104);
              v78 = v109;
              v79 = v110;
              (*(v100 + 8))(v75, v102);
              v109 = v78;
              v110 = v79;
              sub_1000BA0A4();
              DataProtocol.copyBytes(to:)();
              sub_1000124C8(v109, v110);
              v80 = v73 - 2;
              if (v73 >= 2)
              {
                v81 = v97;
                v82 = v95;
                v83 = v96;
                if (!(v80 >> 16))
                {
                  LOWORD(v113) = v80;
                  v84 = sub_100028EF8();
                  *v83 = 0x80000;
                  v85 = v98;
                  (*(v98 + 104))(v83, enum case for DispatchTimeInterval.microseconds(_:), v82);
                  v86 = sub_100028EF8();
                  (*(v85 + 8))(v83, v82);
                  if (v86)
                  {
                    if (v84 == 0x8000000000000000 && v86 == -1)
                    {
                      goto LABEL_64;
                    }

                    if (((v84 / v86) & 0x8000000000000000) == 0)
                    {
                      if ((v84 / v86) <= 0xFF)
                      {
                        BYTE2(v113) = v84 / v86;
                        BYTE10(v113) = *v106;
                        if (v106[32] == 1)
                        {
                        }

                        else
                        {
                          v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v87 & 1) == 0)
                          {
                            goto LABEL_54;
                          }
                        }

                        HIDWORD(v113) = 4096;
LABEL_54:
                        LODWORD(v114) = -1;
                        sub_10029D13C(&v111, &v113, &v117, 0x14uLL);
                        v88 = v111;
                        v89 = v112;
                        sub_10000AB0C(v111, v112);
                        sub_1002949B4(7233902, 0xE300000000000000, 773, v88, v89, 1, v81, v94, *(v93[0] + 16));
                        sub_1000124C8(v90, v91);
                        sub_1000124C8(v88, v89);
                        sub_1000124C8(v88, v89);
                        return sub_1000124C8(v117, *(&v117 + 1));
                      }

                      goto LABEL_63;
                    }

LABEL_62:
                    __break(1u);
LABEL_63:
                    __break(1u);
LABEL_64:
                    __break(1u);
LABEL_65:
                    __break(1u);
                  }

LABEL_61:
                  __break(1u);
                  goto LABEL_62;
                }

LABEL_60:
                __break(1u);
                goto LABEL_61;
              }
            }

            __break(1u);
            goto LABEL_60;
          }

          __break(1u);
        }

        else if (!v69)
        {
          v68 = BYTE14(v117);
          goto LABEL_42;
        }

        v72 = __OFSUB__(HIDWORD(v68), v68);
        LODWORD(v68) = HIDWORD(v68) - v68;
        if (v72)
        {
          goto LABEL_65;
        }

        v68 = v68;
        goto LABEL_42;
      }

      v66 = v64;
      v67 = v64 >> 32;
    }

    if (v66 != v67)
    {
      goto LABEL_31;
    }

LABEL_30:
    sub_1000124C8(v64, v63);
    goto LABEL_32;
  }

  sub_10000AB0C(v95, v35);
  swift_unexpectedError();
  __break(1u);
  sub_10000AB0C(v95, v35);
  swift_unexpectedError();
  __break(1u);
  sub_10000AB0C(v95, v35);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_10028D8AC(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for SHA256Digest();
  v140 = *(v135 - 8);
  __chkstk_darwin();
  v138 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for SHA256();
  v137 = *(v139 - 8);
  __chkstk_darwin();
  v136 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = xmmword_100480A90;
  v11 = *(a1 + 48);
  v12 = *(v11 + 16);
  v141 = xmmword_100480A90;
  if (v12)
  {
    v13 = sub_10029B424(*(a1 + 40), v11);
    if (v2)
    {
      goto LABEL_33;
    }

    v15 = v13;
    v16 = v14;
    v134 = a1;
    sub_10029A0C4(258, v13, v14);
    v3 = 0;
    sub_1000124C8(v15, v16);
    a1 = v134;
  }

  v17 = *(a1 + 64);
  if (*(v17 + 16))
  {
    v18 = sub_10029B424(*(a1 + 56), v17);
    if (!v3)
    {
      v20 = v18;
      v21 = v19;
      v134 = v1;
      sub_10029A0C4(257, v18, v19);
      v3 = 0;
      v130 = v8;
      v133 = v6;
      v131 = v5;
      sub_1000124C8(v20, v21);
      goto LABEL_8;
    }

LABEL_33:
    sub_1000124C8(v150, *(&v150 + 1));
    return;
  }

  v130 = v8;
  v133 = v6;
  v131 = v5;
  v134 = v1;
LABEL_8:
  v22 = NANPublish.Configuration.serviceInfo.getter();
  v24 = v23;
  v26 = v25;
  v27 = sub_100033AA8(_swiftEmptyArrayStorage);
  v28 = type metadata accessor for BinaryEncoder();
  v29 = swift_allocObject();
  *(v29 + 16) = v141;
  *(v29 + 32) = v27;
  v132 = v28;
  v148 = v28;
  v30 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v149 = v30;
  *&v146 = v29;

  NANServiceInfo.encode(to:)(&v146, v22, v24, v26);
  if (v3)
  {

    sub_1000124C8(v24, v26);

    sub_100002A00(&v146);
    goto LABEL_19;
  }

  sub_1000124C8(v24, v26);
  sub_100002A00(&v146);
  swift_beginAccess();
  v32 = *(v29 + 16);
  v31 = *(v29 + 24);
  sub_10000AB0C(v32, v31);

  v33 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v33 != 2 || *(v32 + 16) == *(v32 + 24))
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (!v33)
  {
    if ((v31 & 0xFF000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    sub_10029A0C4(780, v32, v31);
    sub_1000124C8(v32, v31);
    goto LABEL_19;
  }

  if (v32 != v32 >> 32)
  {
    goto LABEL_16;
  }

LABEL_18:
  sub_1000124C8(v32, v31);
LABEL_19:
  v34 = type metadata accessor for NANPublish.Configuration(0);
  v35 = v34;
  v36 = a1 + *(v34 + 84);
  v37 = *(v36 + 16);
  if (*(v37 + 16))
  {
    v38 = 68;
  }

  else
  {
    v38 = 4;
  }

  v39 = v38 | 0x200;
  v40 = *(a1 + *(v34 + 136));
  v41 = *(a1 + 77);
  v42 = v38 | 0x600;
  if ((v40 & 1) == 0)
  {
    v42 = v39;
  }

  if (v40 == 2)
  {
    v42 = v39;
  }

  if (v41)
  {
    v43 = 3;
  }

  else
  {
    v43 = 1;
  }

  if (v41 == 2)
  {
    v43 = 0;
  }

  LOWORD(v146) = v42 | v43;
  v44 = sub_1002AAFAC(&v146, 2uLL);
  v46 = v45;
  sub_10029A0C4(772, v44, v45);
  v126 = v35;
  sub_1000124C8(v44, v46);
  v48 = "traffic_statistics";
  if (*(v37 + 16))
  {
    v124 = v36;
    v125 = v30;
    v49 = *(v37 + 32);
    v50 = *(v37 + 40);
    v51 = *(v37 + 48);
    v52 = *(v37 + 56);
    v128 = *(v37 + 64);
    v53 = *(v37 + 80);
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_100480F40;
    *(v54 + 32) = v49 + 1;
    v129 = v50;
    v55 = v50;
    v56 = v51;
    sub_10000AB0C(v55, v51);
    v127 = v52;
    v57 = v52;
    v58 = v53;
    v59 = v128;
    sub_10005D67C(v57, v128);

    v60 = sub_10002D874(v54);
    v62 = v61;

    sub_10029A0C4(264, v60, v62);
    v123 = v58;
    sub_1000124C8(v60, v62);
    v80 = v129;
    sub_10000AB0C(v129, v56);
    sub_10029A0C4(265, v80, v56);
    sub_1000124C8(v80, v56);
    v81 = v59;
    if (v59 >> 60 == 15)
    {
      sub_1000124C8(v80, v56);
      sub_100017554(v127, v59);

      v63 = v133;
    }

    else
    {
      v82 = v80;
      v83 = v127;
      sub_10000AB0C(v127, v59);
      sub_10029A0C4(266, v83, v59);
      v63 = v133;
      sub_1000124C8(v82, v56);
      sub_100017554(v83, v81);

      sub_100017554(v83, v81);
    }

    v48 = "apple80211_nan_low_latency_peer_traffic_statistics" + 32;
    v30 = v125;
    v36 = v124;
  }

  else
  {
    v63 = v133;
  }

  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v64 = swift_allocObject();
  *(v64 + 16) = *(v48 + 244);
  *(v64 + 32) = *(a1 + 32);
  v65 = sub_10002D874(v64);
  v67 = v66;

  sub_10029A0C4(781, v65, v67);
  sub_1000124C8(v65, v67);
  LOWORD(v67) = *(a1 + 88);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_1004817D0;
  *(v68 + 32) = *(a1 + 84);
  *(v68 + 36) = v67;
  v69 = sub_10002D874(v68);
  v71 = v70;

  sub_10029A0C4(782, v69, v71);
  sub_1000124C8(v69, v71);
  v133 = v63;
  v72 = NANGenericServiceProtocol.packetData(for:)(3, *(v36 + 8));
  if (v73 >> 60 == 15)
  {
    v74 = 0;
  }

  else
  {
    v74 = v72;
  }

  if (v73 >> 60 == 15)
  {
    v75 = 0xC000000000000000;
  }

  else
  {
    v75 = v73;
  }

  v76 = sub_100033AA8(_swiftEmptyArrayStorage);
  v77 = v30;
  v78 = v132;
  v79 = swift_allocObject();
  *(v79 + 16) = v141;
  *(v79 + 32) = v76;
  v148 = v78;
  v149 = v77;
  *&v146 = v79;

  NANServiceInfo.encode(to:)(&v146, 2, v74, v75);
  sub_1000124C8(v74, v75);
  sub_100002A00(&v146);
  swift_beginAccess();
  v84 = *(v79 + 16);
  v85 = *(v79 + 24);
  sub_10000AB0C(v84, v85);

  v86 = v85 >> 62;
  if ((v85 >> 62) > 1)
  {
    if (v86 != 2)
    {
LABEL_56:
      sub_1000124C8(v84, v85);
      goto LABEL_57;
    }

    v87 = *(v84 + 16);
    v88 = *(v84 + 24);
LABEL_55:
    if (v87 == v88)
    {
      goto LABEL_56;
    }

    if (v86 == 2)
    {
      v113 = *(v84 + 16);
      v112 = *(v84 + 24);
      v114 = v112 - v113;
      if (!__OFSUB__(v112, v113))
      {
LABEL_84:
        sub_10000AB0C(v84, v85);
        if (v114 >= 0xFFFF)
        {
          sub_1000124C8(v84, v85);
          sub_10000B02C();
          swift_allocError();
          *v119 = xmmword_100481860;
          *(v119 + 16) = 0;
          swift_willThrow();
          v111 = v84;
          v47 = v85;
LABEL_32:
          sub_1000124C8(v111, v47);
          goto LABEL_33;
        }

        goto LABEL_85;
      }

      __break(1u);
    }

    if (__OFSUB__(HIDWORD(v84), v84))
    {
      goto LABEL_95;
    }

    v114 = HIDWORD(v84) - v84;
    goto LABEL_84;
  }

  if (v86)
  {
    v87 = v84;
    v88 = v84 >> 32;
    goto LABEL_55;
  }

  if ((v85 & 0xFF000000000000) == 0)
  {
    goto LABEL_56;
  }

LABEL_85:
  v115 = sub_100033AA8(_swiftEmptyArrayStorage);
  v129 = v84;
  v116 = v115;
  v117 = swift_allocObject();
  *(v117 + 16) = v141;
  *(v117 + 32) = v116;
  v118 = v129;
  v148 = v78;
  v149 = v77;
  *&v146 = v117;

  sub_10029C7B0(&v146, 1, v118, v85);
  sub_1000124C8(v118, v85);
  sub_100002A00(&v146);
  swift_beginAccess();
  v120 = v85;
  v121 = *(v117 + 16);
  v122 = *(v117 + 24);
  sub_10000AB0C(v121, v122);

  sub_10029A0C4(784, v121, v122);
  sub_1000124C8(v121, v122);
  sub_1000124C8(v118, v120);
LABEL_57:
  v89 = v131;
  v90 = v150;
  v91 = *(&v150 + 1) >> 62;
  if ((*(&v150 + 1) >> 62) <= 1)
  {
    if (!v91)
    {
      v90 = BYTE14(v150);
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  if (v91 != 2)
  {
    v90 = 0;
    goto LABEL_67;
  }

  v92 = *(v150 + 16);
  v93 = *(v150 + 24);
  v94 = __OFSUB__(v93, v92);
  v90 = v93 - v92;
  if (!v94)
  {
LABEL_67:
    v95 = v90 + 20;
    if (__OFADD__(v90, 20))
    {
      __break(1u);
    }

    else
    {
      v144 = sub_10014345C(v90 + 20);
      v145 = v96;
      v146 = 0uLL;
      v147 = 0;
      v97 = v136;
      SHA256.init()();
      v98 = String.lowercased()();

      sub_1001F93A4(v98._countAndFlagsBits, v98._object, v97);

      v99 = v138;
      SHA256.finalize()();
      SHA256Digest.withUnsafeBytes<A>(_:)();
      (*(v140 + 8))(v99, v135);
      v100 = v142;
      v101 = v143;
      (*(v137 + 8))(v97, v139);
      v142 = v100;
      v143 = v101;
      sub_1000BA0A4();
      DataProtocol.copyBytes(to:)();
      sub_1000124C8(v142, v143);
      if (v95 >= 2)
      {
        v102 = v130;
        v103 = v133;
        if (!((v95 - 2) >> 16))
        {
          LOWORD(v146) = v95 - 2;
          v104 = sub_100028EF8();
          *v102 = 0x80000;
          (*(v103 + 104))(v102, enum case for DispatchTimeInterval.microseconds(_:), v89);
          v105 = sub_100028EF8();
          (*(v103 + 8))(v102, v89);
          if (v105)
          {
            if (v104 == 0x8000000000000000 && v105 == -1)
            {
LABEL_93:
              __break(1u);
            }

            if (((v104 / v105) & 0x8000000000000000) == 0)
            {
              if ((v104 / v105) <= 0xFF)
              {
                BYTE2(v146) = v104 / v105;
                BYTE10(v146) = *a1;
                v106 = *(a1 + 72) << 12;
                HIDWORD(v146) = v106 + 4096;
                if (*(a1 + 74) == 1)
                {
                  HIDWORD(v146) = v106 + 36864;
                }

                LODWORD(v147) = -1;
                sub_10029D13C(&v144, &v146, &v150, 0x14uLL);
                v107 = v144;
                v108 = v145;
                sub_10000AB0C(v144, v145);
                sub_1002940E0(7233902, 0xE300000000000000, 770, v107, v108, 1);
                sub_1000124C8(v109, v110);
                sub_1000124C8(v107, v108);
                v111 = v107;
                v47 = v108;
                goto LABEL_32;
              }

              goto LABEL_92;
            }

LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

LABEL_89:
        __break(1u);
        goto LABEL_90;
      }
    }

    __break(1u);
    goto LABEL_89;
  }

  __break(1u);
LABEL_64:
  v94 = __OFSUB__(HIDWORD(v90), v90);
  LODWORD(v90) = HIDWORD(v90) - v90;
  if (!v94)
  {
    v90 = v90;
    goto LABEL_67;
  }

  __break(1u);
LABEL_95:
  __break(1u);
}

void BroadcomDriver<>.start(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v130 = type metadata accessor for DispatchTimeInterval();
  v132 = *(v130 - 8);
  __chkstk_darwin();
  v131 = (&v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for SHA256Digest();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v135 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for SHA256();
  v134 = *(v136 - 8);
  __chkstk_darwin();
  v133 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = xmmword_100480A90;
  v138 = a1;
  v16 = *(a1 + 48);
  v17 = *(v16 + 16);
  v137 = xmmword_100480A90;
  if (v17)
  {
    v18 = sub_10029B424(*(v138 + 40), v16);
    if (v5)
    {
      goto LABEL_33;
    }

    v20 = v18;
    v21 = v19;
    v129 = v13;
    v128 = v12;
    sub_10029A0C4(258, v18, v19);
    sub_1000124C8(v20, v21);
    v6 = 0;
    v12 = v128;
    v13 = v129;
  }

  v22 = *(v138 + 64);
  if (*(v22 + 16))
  {
    v23 = sub_10029B424(*(v138 + 56), v22);
    if (v6)
    {
      goto LABEL_33;
    }

    v35 = v23;
    v36 = v24;
    v129 = v13;
    v127 = v4;
    sub_10029A0C4(257, v23, v24);
    v25 = 0;
    v128 = v12;
    v123 = a4;
    v126 = a2;
    v124 = a3;
    sub_1000124C8(v35, v36);
  }

  else
  {
    v129 = v13;
    v128 = v12;
    v25 = v6;
    v123 = a4;
    v126 = a2;
    v124 = a3;
    v127 = v4;
  }

  v26 = NANPublish.Configuration.serviceInfo.getter();
  v28 = v27;
  v30 = v29;
  v31 = sub_100033AA8(_swiftEmptyArrayStorage);
  v32 = type metadata accessor for BinaryEncoder();
  v33 = swift_allocObject();
  *(v33 + 16) = v137;
  *(v33 + 32) = v31;
  v125 = v32;
  v145 = v32;
  v34 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v146 = v34;
  *&v143 = v33;

  NANServiceInfo.encode(to:)(&v143, v26, v28, v30);
  if (v25)
  {

    sub_1000124C8(v28, v30);

    sub_100002A00(&v143);
    goto LABEL_20;
  }

  sub_1000124C8(v28, v30);
  sub_100002A00(&v143);
  swift_beginAccess();
  v38 = *(v33 + 16);
  v37 = *(v33 + 24);
  sub_10000AB0C(v38, v37);

  v39 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v39 != 2 || *(v38 + 16) == *(v38 + 24))
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (!v39)
  {
    if ((v37 & 0xFF000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    sub_10029A0C4(780, v38, v37);
    sub_1000124C8(v38, v37);
    goto LABEL_20;
  }

  if (v38 != v38 >> 32)
  {
    goto LABEL_17;
  }

LABEL_19:
  sub_1000124C8(v38, v37);
LABEL_20:
  v40 = type metadata accessor for NANPublish.Configuration(0);
  v41 = v40;
  v42 = v138 + *(v40 + 84);
  v43 = *(v42 + 16);
  if (*(v43 + 16))
  {
    v44 = 68;
  }

  else
  {
    v44 = 4;
  }

  v45 = v44 | 0x200;
  v46 = *(v138 + *(v40 + 136));
  v47 = *(v138 + 77);
  v48 = v44 | 0x600;
  if ((v46 & 1) == 0)
  {
    v48 = v45;
  }

  if (v46 == 2)
  {
    v48 = v45;
  }

  if (v47)
  {
    v49 = 3;
  }

  else
  {
    v49 = 1;
  }

  if (v47 == 2)
  {
    v49 = 0;
  }

  LOWORD(v143) = v48 | v49;
  v50 = sub_1002AAFAC(&v143, 2uLL);
  v52 = v51;
  sub_10029A0C4(772, v50, v51);
  v121 = v41;
  sub_1000124C8(v50, v52);
  v53 = "traffic_statistics";
  if (*(v43 + 16))
  {
    v120 = v42;
    v119 = v34;
    v54 = *(v43 + 32);
    v55 = *(v43 + 40);
    v56 = *(v43 + 48);
    v58 = *(v43 + 56);
    v57 = *(v43 + 64);
    v59 = *(v43 + 80);
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_100480F40;
    *(v60 + 32) = v54 + 1;
    sub_10000AB0C(v55, v56);
    sub_10005D67C(v58, v57);
    v122 = v59;

    v61 = sub_10002D874(v60);
    v63 = v62;

    sub_10029A0C4(264, v61, v63);
    sub_1000124C8(v61, v63);
    sub_10000AB0C(v55, v56);
    sub_10029A0C4(265, v55, v56);
    sub_1000124C8(v55, v56);
    v64 = v58;
    if (v57 >> 60 == 15)
    {
      sub_1000124C8(v55, v56);
      sub_100017554(v58, v57);

      v53 = "apple80211_nan_low_latency_peer_traffic_statistics" + 32;
      v34 = v119;
      v42 = v120;
    }

    else
    {
      sub_10000AB0C(v58, v57);
      sub_10029A0C4(266, v58, v57);
      v42 = v120;
      sub_1000124C8(v55, v56);
      sub_100017554(v64, v57);

      sub_100017554(v64, v57);
      v53 = "traffic_statistics";
      v34 = v119;
    }
  }

  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v65 = swift_allocObject();
  *(v65 + 16) = *(v53 + 244);
  *(v65 + 32) = *(v138 + 32);
  v66 = sub_10002D874(v65);
  v68 = v67;

  sub_10029A0C4(781, v66, v68);
  sub_1000124C8(v66, v68);
  v69 = v138;
  v70 = *(v138 + 88);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1004817D0;
  *(v71 + 32) = *(v69 + 84);
  *(v71 + 36) = v70;
  v72 = sub_10002D874(v71);
  v74 = v73;

  sub_10029A0C4(782, v72, v74);
  sub_1000124C8(v72, v74);
  v75 = NANGenericServiceProtocol.packetData(for:)(3, *(v42 + 8));
  if (v76 >> 60 == 15)
  {
    v77 = 0;
  }

  else
  {
    v77 = v75;
  }

  if (v76 >> 60 == 15)
  {
    v78 = 0xC000000000000000;
  }

  else
  {
    v78 = v76;
  }

  v79 = sub_100033AA8(_swiftEmptyArrayStorage);
  v80 = v125;
  v81 = swift_allocObject();
  *(v81 + 16) = v137;
  *(v81 + 32) = v79;
  v145 = v80;
  v146 = v34;
  *&v143 = v81;

  NANServiceInfo.encode(to:)(&v143, 2, v77, v78);
  sub_1000124C8(v77, v78);
  sub_100002A00(&v143);
  swift_beginAccess();
  v82 = *(v81 + 16);
  v83 = *(v81 + 24);
  sub_10000AB0C(v82, v83);

  v84 = v83 >> 62;
  if ((v83 >> 62) > 1)
  {
    v85 = v126;
    if (v84 != 2)
    {
LABEL_52:
      sub_1000124C8(v82, v83);
      goto LABEL_53;
    }

    v86 = *(v82 + 16);
    v87 = *(v82 + 24);
LABEL_51:
    if (v86 == v87)
    {
      goto LABEL_52;
    }

    if (v84 == 2)
    {
      v112 = *(v82 + 16);
      v111 = *(v82 + 24);
      v113 = v111 - v112;
      if (!__OFSUB__(v111, v112))
      {
LABEL_80:
        sub_10000AB0C(v82, v83);
        if (v113 < 0xFFFF)
        {
          goto LABEL_81;
        }

        sub_1000124C8(v82, v83);
        sub_10000B02C();
        swift_allocError();
        *v116 = xmmword_100481860;
        *(v116 + 16) = 0;
        swift_willThrow();
        sub_1000124C8(v82, v83);
LABEL_33:
        sub_1000124C8(v147, *(&v147 + 1));
        return;
      }

      __break(1u);
    }

    if (__OFSUB__(HIDWORD(v82), v82))
    {
      goto LABEL_91;
    }

    v113 = HIDWORD(v82) - v82;
    goto LABEL_80;
  }

  if (v84)
  {
    v86 = v82;
    v87 = v82 >> 32;
    v85 = v126;
    goto LABEL_51;
  }

  v85 = v126;
  if ((v83 & 0xFF000000000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_81:
  v114 = sub_100033AA8(_swiftEmptyArrayStorage);
  v115 = swift_allocObject();
  *(v115 + 16) = v137;
  *(v115 + 32) = v114;
  v145 = v80;
  v146 = v34;
  *&v143 = v115;

  sub_10029C7B0(&v143, 1, v82, v83);
  sub_1000124C8(v82, v83);
  sub_100002A00(&v143);
  swift_beginAccess();
  v117 = *(v115 + 16);
  v118 = *(v115 + 24);
  sub_10000AB0C(v117, v118);

  sub_10029A0C4(784, v117, v118);
  sub_1000124C8(v117, v118);
  sub_1000124C8(v82, v83);
LABEL_53:
  v88 = v147;
  v89 = *(&v147 + 1) >> 62;
  if ((*(&v147 + 1) >> 62) <= 1)
  {
    if (!v89)
    {
      v88 = BYTE14(v147);
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  if (v89 != 2)
  {
    v88 = 0;
    goto LABEL_63;
  }

  v90 = *(v147 + 16);
  v91 = *(v147 + 24);
  v92 = __OFSUB__(v91, v90);
  v88 = v91 - v90;
  if (!v92)
  {
LABEL_63:
    v126 = v85;
    v93 = v88 + 20;
    if (__OFADD__(v88, 20))
    {
      __break(1u);
    }

    else
    {
      v141 = sub_10014345C(v88 + 20);
      v142 = v94;
      v143 = 0uLL;
      v144 = 0;
      v95 = v133;
      SHA256.init()();
      v96 = String.lowercased()();

      sub_1001F93A4(v96._countAndFlagsBits, v96._object, v95);

      v97 = v135;
      SHA256.finalize()();
      SHA256Digest.withUnsafeBytes<A>(_:)();
      (*(v129 + 8))(v97, v128);
      v98 = v139;
      v99 = v140;
      (*(v134 + 8))(v95, v136);
      v139 = v98;
      v140 = v99;
      sub_1000BA0A4();
      DataProtocol.copyBytes(to:)();
      sub_1000124C8(v139, v140);
      if (v93 >= 2)
      {
        if (!((v93 - 2) >> 16))
        {
          LOWORD(v143) = v93 - 2;
          v100 = sub_100028EF8();
          v101 = v131;
          *v131 = 0x80000;
          v102 = v132;
          v103 = v130;
          (*(v132 + 104))(v101, enum case for DispatchTimeInterval.microseconds(_:), v130);
          v104 = sub_100028EF8();
          (*(v102 + 8))(v101, v103);
          v105 = v126;
          if (v104)
          {
            if (v100 == 0x8000000000000000 && v104 == -1)
            {
LABEL_89:
              __break(1u);
            }

            if (((v100 / v104) & 0x8000000000000000) == 0)
            {
              if ((v100 / v104) <= 0xFF)
              {
                BYTE2(v143) = v100 / v104;
                BYTE10(v143) = *v138;
                v106 = *(v138 + 72) << 12;
                HIDWORD(v143) = v106 + 4096;
                if (*(v138 + 74) == 1)
                {
                  HIDWORD(v143) = v106 + 36864;
                }

                LODWORD(v144) = -1;
                sub_10029D13C(&v141, &v143, &v147, 0x14uLL);
                v107 = v141;
                v108 = v142;
                sub_10000AB0C(v141, v142);
                sub_1002949B4(7233902, 0xE300000000000000, 770, v107, v108, 1, v105, v124, *(v123 + 16));
                sub_1000124C8(v109, v110);
                sub_1000124C8(v107, v108);
                sub_1000124C8(v107, v108);
                goto LABEL_33;
              }

              goto LABEL_88;
            }

LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __break(1u);
LABEL_60:
  v92 = __OFSUB__(HIDWORD(v88), v88);
  LODWORD(v88) = HIDWORD(v88) - v88;
  if (!v92)
  {
    v88 = v88;
    goto LABEL_63;
  }

  __break(1u);
LABEL_91:
  __break(1u);
}

void sub_10028F7E0(uint64_t a1)
{
  v77 = type metadata accessor for SHA256Digest();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v4 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256();
  v75 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = 0;
  v86 = 0;
  v79 = xmmword_100480A90;
  v85 = xmmword_100480A90;
  v8 = sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v9 = swift_allocObject();
  v78 = xmmword_100480F40;
  *(v9 + 16) = xmmword_100480F40;
  *(v9 + 32) = *a1;
  v10 = sub_10002D874(v9);
  v12 = v11;

  sub_10029A0C4(269, v10, v12);
  if (v1)
  {
    sub_1000124C8(v85, *(&v85 + 1));
    v13 = v10;
    v14 = v12;
LABEL_3:
    sub_1000124C8(v13, v14);
    return;
  }

  v73 = v8;
  v71 = v7;
  v72 = v4;
  sub_1000124C8(v10, v12);
  v74 = a1;
  v15 = NANGenericServiceProtocol.packetData(for:)(3, *(a1 + 40));
  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  if (v16 >> 60 == 15)
  {
    v18 = 0xC000000000000000;
  }

  else
  {
    v18 = v16;
  }

  v19 = sub_100033AA8(_swiftEmptyArrayStorage);
  v20 = type metadata accessor for BinaryEncoder();
  v21 = swift_allocObject();
  *(v21 + 16) = v79;
  v22 = v21 + 16;
  *(v21 + 32) = v19;
  v83 = v20;
  v23 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v84 = v23;
  v82[0] = v21;

  NANServiceInfo.encode(to:)(v82, 2, v17, v18);
  v70 = v5;
  sub_1000124C8(v17, v18);
  sub_100002A00(v82);
  swift_beginAccess();
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);
  sub_10000AB0C(v24, v25);

  v26 = v25 >> 62;
  if ((v25 >> 62) > 1)
  {
    v27 = v74;
    if (v26 != 2 || *(v24 + 16) == *(v24 + 24))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v27 = v74;
    if (v26)
    {
      if (v24 == v24 >> 32)
      {
LABEL_18:
        sub_1000124C8(v24, v25);
        v28 = 0;
LABEL_19:
        v29 = *(v27 + 96);
        if (v29 == 1)
        {
LABEL_20:
          v30 = *(v27 + 24);
          v31 = *(v27 + 5);
          v32 = *(v27 + 29);
          v88[0] = 0;
          v88[1] = v30;
          v89 = v28;
          v90 = *(v27 + 25);
          v91 = v32;
          v92 = v86;
          v93 = v87;
          v94 = *(v27 + 1);
          v95 = v31;
          v96 = 0;
          v97 = -65536;
          v33 = v85;
          sub_10000AB0C(v85, *(&v85 + 1));
          v34 = sub_10029AB84(v88, 0, 34, v33, *(&v33 + 1));
          v36 = v35;
          sub_1000124C8(v33, *(&v33 + 1));
          sub_1002940E0(7233902, 0xE300000000000000, 1284, v34, v36, 0);
          sub_1000124C8(v52, v53);
          sub_1000124C8(v34, v36);
          v14 = v33 >> 64;
          v13 = v33;
          goto LABEL_3;
        }

        v69 = v28;
        v37 = *(v27 + 48);
        v38 = *(v27 + 56);
        v39 = *(v27 + 64);
        v40 = *(v27 + 72);
        v41 = *(v27 + 80);
        v74 = *(v27 + 88);
        v42 = swift_allocObject();
        *(v42 + 16) = v78;
        *&v79 = v37;
        *(v42 + 32) = v37 + 1;
        *&v78 = v38;
        sub_10000AB0C(v38, v39);
        sub_10005D67C(v40, v41);

        v43 = sub_10002D874(v42);
        v44 = v29;
        v46 = v45;

        sub_10029A0C4(264, v43, v46);
        v66 = v44;
        v67 = v39;
        v68 = v40;
        v73 = v41;
        sub_1000124C8(v43, v46);
        v47 = v71;
        SHA256.init()();
        v48 = String.lowercased()();

        sub_1001F93A4(v48._countAndFlagsBits, v48._object, v47);

        v49 = v72;
        SHA256.finalize()();
        SHA256Digest.withUnsafeBytes<A>(_:)();
        (*(v76 + 8))(v49, v77);
        v50 = v80;
        v51 = v81;
        (*(v75 + 8))(v47, v70);
        sub_10029A0C4(263, v50, v51);
        sub_1000124C8(v50, v51);
        v20 = v78;
        v22 = v67;
        sub_10000AB0C(v78, v67);
        sub_10029A0C4(265, v20, v22);
        v24 = v74;
LABEL_27:
        LOWORD(v28) = v69 | 8;
        sub_1000124C8(v20, v22);
        v57 = v73;
        v58 = v68;
        if (v73 >> 60 == 15)
        {
          sub_10011A270(v79, v20, v22, v68, v73, v24, v66);
        }

        else
        {
          sub_10000AB0C(v68, v73);
          sub_10000AB0C(v58, v57);
          sub_10029A0C4(266, v58, v57);
          sub_10011A270(v79, v20, v22, v58, v57, v24, v66);
          sub_100017554(v58, v57);
          sub_100017554(v58, v57);
        }

        goto LABEL_20;
      }
    }

    else if ((v25 & 0xFF000000000000) == 0)
    {
      goto LABEL_18;
    }
  }

  sub_10029A0C4(769, v24, v25);
  if (!v26)
  {
LABEL_32:
    v59 = sub_100033AA8(_swiftEmptyArrayStorage);
    v74 = v24;
    v60 = v59;
    v61 = swift_allocObject();
    *(v61 + 16) = v79;
    *(v61 + 32) = v60;
    v62 = v74;
    v83 = v20;
    v84 = v23;
    v82[0] = v61;

    sub_10029C7B0(v82, 1, v62, v25);
    sub_1000124C8(v62, v25);
    sub_100002A00(v82);
    swift_beginAccess();
    v64 = *(v61 + 16);
    v65 = *(v61 + 24);
    sub_10000AB0C(v64, v65);

    sub_10029A0C4(784, v64, v65);
    sub_1000124C8(v64, v65);
    sub_1000124C8(v62, v25);
    v28 = 1;
    goto LABEL_19;
  }

  if (v26 == 2)
  {
    v55 = *(v24 + 16);
    v54 = *(v24 + 24);
    v56 = v54 - v55;
    if (__OFSUB__(v54, v55))
    {
      __break(1u);
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if (!__OFSUB__(HIDWORD(v24), v24))
  {
    v56 = HIDWORD(v24) - v24;
LABEL_31:
    sub_10000AB0C(v24, v25);
    if (v56 >= 0xFFFF)
    {
      sub_1000124C8(v24, v25);
      sub_10000B02C();
      swift_allocError();
      *v63 = xmmword_100481860;
      *(v63 + 16) = 0;
      swift_willThrow();
      sub_1000124C8(v24, v25);
      v14 = *(&v85 + 1);
      v13 = v85;
      goto LABEL_3;
    }

    goto LABEL_32;
  }

  __break(1u);
}

void BroadcomDriver<>.start(configuration:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a4;
  v90 = a3;
  v91 = a2;
  v87 = type metadata accessor for SHA256Digest();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256();
  v85 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = 0;
  v99 = 0;
  v92 = xmmword_100480A90;
  v98 = xmmword_100480A90;
  v11 = sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v12 = swift_allocObject();
  v88 = xmmword_100480F40;
  *(v12 + 16) = xmmword_100480F40;
  v13 = a1;
  *(v12 + 32) = *a1;
  v14 = sub_10002D874(v12);
  v16 = v15;

  sub_10029A0C4(269, v14, v16);
  if (v4)
  {
    sub_1000124C8(v98, *(&v98 + 1));
    v17 = v14;
    v18 = v16;
LABEL_3:
    sub_1000124C8(v17, v18);
    return;
  }

  v84 = v11;
  v81 = v10;
  v82 = v7;
  v83 = v8;
  sub_1000124C8(v14, v16);
  v19 = NANGenericServiceProtocol.packetData(for:)(3, *(v13 + 5));
  if (v20 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  if (v20 >> 60 == 15)
  {
    v22 = 0xC000000000000000;
  }

  else
  {
    v22 = v20;
  }

  v23 = sub_100033AA8(_swiftEmptyArrayStorage);
  v24 = type metadata accessor for BinaryEncoder();
  v25 = swift_allocObject();
  *(v25 + 16) = v92;
  *(v25 + 32) = v23;
  *&v97[2] = v24;
  v26 = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  *&v97[10] = v26;
  v93 = v25;

  NANServiceInfo.encode(to:)(&v93, 2, v21, v22);
  sub_1000124C8(v21, v22);
  sub_100002A00(&v93);
  swift_beginAccess();
  v27 = *(v25 + 16);
  v28 = *(v25 + 24);
  sub_10000AB0C(v27, v28);

  v29 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v29 != 2 || *(v27 + 16) == *(v27 + 24))
    {
      goto LABEL_18;
    }
  }

  else if (v29)
  {
    if (v27 == v27 >> 32)
    {
LABEL_18:
      sub_1000124C8(v27, v28);
      v30 = 0;
LABEL_19:
      v31 = *(v13 + 12);
      if (v31 == 1)
      {
LABEL_20:
        v32 = v13[24];
        v33 = *(v13 + 5);
        v34 = *(v13 + 29);
        *(&v94 + 2) = v99;
        HIWORD(v94) = v100;
        LOBYTE(v93) = 0;
        BYTE1(v93) = v32;
        WORD1(v93) = v30;
        HIDWORD(v93) = *(v13 + 25);
        LOWORD(v94) = v34;
        v95 = *(v13 + 1);
        v96 = v33;
        *v97 = 0;
        *&v97[8] = -65536;
        v35 = v98;
        sub_10000AB0C(v98, *(&v98 + 1));
        type metadata accessor for wl_nan_dp_req(0);
        v37 = v36;
        v38 = sub_100037FF8();
        v39 = v89;
        v40 = v90;
        sub_10029E5DC(&v93, 0, 34, v35, *(&v35 + 1), v91, v37, &type metadata for UInt16, v90, v89, v38);
        v52 = v51;
        v54 = v53;
        sub_1000124C8(v35, *(&v35 + 1));
        sub_1002949B4(7233902, 0xE300000000000000, 1284, v52, v54, 0, v91, v40, *(v39 + 16));
        sub_1000124C8(v60, v61);
        v62 = v52;
        v63 = v54;
LABEL_34:
        sub_1000124C8(v62, v63);
        v18 = *(&v98 + 1);
        v17 = v98;
        goto LABEL_3;
      }

      v79 = v30;
      v41 = *(v13 + 6);
      v42 = *(v13 + 7);
      v43 = *(v13 + 8);
      v44 = *(v13 + 9);
      v45 = *(v13 + 10);
      v80 = *(v13 + 11);
      v46 = swift_allocObject();
      *(v46 + 16) = v88;
      *&v92 = v41;
      *(v46 + 32) = v41 + 1;
      *&v88 = v42;
      sub_10000AB0C(v42, v43);
      sub_10005D67C(v44, v45);

      v47 = sub_10002D874(v46);
      v48 = v31;
      v50 = v49;

      sub_10029A0C4(264, v47, v50);
      v77 = v43;
      v76 = v48;
      v78 = v44;
      v84 = v45;
      sub_1000124C8(v47, v50);
      v55 = v81;
      SHA256.init()();
      v56 = String.lowercased()();

      sub_1001F93A4(v56._countAndFlagsBits, v56._object, v55);

      v57 = v82;
      SHA256.finalize()();
      SHA256Digest.withUnsafeBytes<A>(_:)();
      (*(v86 + 8))(v57, v87);
      v58 = v93;
      v59 = v94;
      (*(v85 + 8))(v55, v83);
      sub_10029A0C4(263, v58, v59);
      sub_1000124C8(v58, v59);
      v28 = v88;
      v27 = v77;
      sub_10000AB0C(v88, v77);
      sub_10029A0C4(265, v28, v27);
      v24 = v80;
LABEL_27:
      LOWORD(v30) = v79 | 8;
      sub_1000124C8(v28, v27);
      v67 = v84;
      v68 = v78;
      if (v84 >> 60 == 15)
      {
        sub_10011A270(v92, v28, v27, v78, v84, v24, v76);
      }

      else
      {
        sub_10005D67C(v78, v84);
        sub_10000AB0C(v68, v67);
        sub_10029A0C4(266, v68, v67);
        sub_10011A270(v92, v28, v27, v68, v67, v24, v76);
        sub_100017554(v68, v67);
        sub_100017554(v68, v67);
      }

      goto LABEL_20;
    }
  }

  else if ((v28 & 0xFF000000000000) == 0)
  {
    goto LABEL_18;
  }

  sub_10029A0C4(769, v27, v28);
  if (!v29)
  {
LABEL_32:
    v69 = sub_100033AA8(_swiftEmptyArrayStorage);
    v70 = swift_allocObject();
    *(v70 + 16) = v92;
    *(v70 + 32) = v69;
    *&v97[2] = v24;
    *&v97[10] = v26;
    v93 = v70;

    sub_10029C7B0(&v93, 1, v27, v28);
    sub_1000124C8(v27, v28);
    sub_100002A00(&v93);
    swift_beginAccess();
    v72 = v27;
    v73 = *(v70 + 16);
    v74 = *(v70 + 24);
    sub_10000AB0C(v73, v74);

    sub_10029A0C4(784, v73, v74);
    sub_1000124C8(v73, v74);
    sub_1000124C8(v72, v28);
    v30 = 1;
    goto LABEL_19;
  }

  if (v29 == 2)
  {
    v65 = *(v27 + 16);
    v64 = *(v27 + 24);
    v66 = v64 - v65;
    if (__OFSUB__(v64, v65))
    {
      __break(1u);
      goto LABEL_27;
    }

    goto LABEL_31;
  }

  if (!__OFSUB__(HIDWORD(v27), v27))
  {
    v66 = HIDWORD(v27) - v27;
LABEL_31:
    sub_10000AB0C(v27, v28);
    if (v66 >= 0xFFFF)
    {
      sub_1000124C8(v27, v28);
      sub_10000B02C();
      swift_allocError();
      *v71 = xmmword_100481860;
      *(v71 + 16) = 0;
      swift_willThrow();
      v62 = v27;
      v63 = v28;
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_100290DC8(char a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = 0;
  v10 = a2;
  v11 = BYTE2(a2);
  v12 = BYTE3(a2);
  v13 = BYTE4(a2);
  v14 = BYTE5(a2);
  v3 = sub_10004F3B0(v9, &v15);
  v5 = v4;
  sub_1002940E0(7233902, 0xE300000000000000, 1286, v3, v4, 1);
  if (!v2)
  {
    sub_1000124C8(v6, v7);
  }

  return sub_1000124C8(v3, v5);
}

uint64_t BroadcomDriver<>.terminate(datapathID:initiatorAddress:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = 0;
  v11 = a2;
  v12 = BYTE2(a2);
  v13 = BYTE3(a2);
  v14 = BYTE4(a2);
  v15 = BYTE5(a2);
  type metadata accessor for wl_nan_dp_end(0);
  return sub_10029A8F4(1286, v10, a3, v8, a4, a5);
}

uint64_t sub_10029102C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v12 = a1;
  v6 = sub_10004F3B0(&v12, &v13);
  v8 = v7;
  sub_1002940E0(7233902, 0xE300000000000000, v5, v6, v7, 1);
  if (!v4)
  {
    sub_1000124C8(v9, v10);
  }

  return sub_1000124C8(v6, v8);
}

void sub_100291164(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v10 = v9;
  v77 = a2;
  v78 = a3;
  v17 = type metadata accessor for Data.Deallocator();
  __chkstk_darwin();
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a7 - a6;
  if (a7 < a6)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v74 = v8;
  v75 = a4;
  v76 = a5;
  v72 = v20;
  v73 = v18;
  v22 = _swiftEmptyArrayStorage;
  if (v21 >= 0x80)
  {
    v69 = v9;
    v70 = a1;
    v71 = v17;
    v23 = v21 >> 7;
    v79[0] = _swiftEmptyArrayStorage;
    sub_10002D838(0, v21 >> 7, 0);
    v22 = v79[0];
    v24 = *(v79[0] + 16);
    v25 = a6 >> 7;
    while (1)
    {
      v80 = a8;
      v26 = *(&v80 + v25);
      v79[0] = v22;
      v27 = v22[3];
      if (v24 >= v27 >> 1)
      {
        sub_10002D838((v27 > 1), v24 + 1, 1);
        v22 = v79[0];
      }

      v22[2] = v24 + 1;
      *(v22 + v24 + 32) = v26;
      if (a6 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      a6 += 128;
      ++v25;
      ++v24;
      if (!--v23)
      {
        a1 = v70;
        v17 = v71;
        v10 = v69;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_9:
  v28 = sub_10002D874(v22);
  v30 = v29;

  v31 = sub_1002AB53C(v28, v30);
  sub_1000124C8(v28, v30);
  if (!v10)
  {
    if (a1[32] != 2)
    {
      sub_10000B02C();
      swift_allocError();
      *v40 = xmmword_1004817E0;
      *(v40 + 16) = 0;
      swift_willThrow();
      return;
    }

    v32 = *a1;
    v34 = *(a1 + 2);
    v33 = *(a1 + 3);
    v70 = v31;
    v71 = v33;
    v35 = *(a1 + 1);
    v36 = sub_100033AA8(_swiftEmptyArrayStorage);
    v37 = type metadata accessor for BinaryEncoder();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100480A90;
    *(v38 + 32) = v36;
    v79[3] = v37;
    v39 = v32;
    v79[4] = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    v79[0] = v38;

    IEEE80211Frame.Management.ActionFrame.encode(to:)(v79, v32, v35, v34, v71);
    sub_100002A00(v79);
    swift_beginAccess();
    v42 = *(v38 + 16);
    v41 = *(v38 + 24);
    sub_10000AB0C(v42, v41);

    v43 = v39 == 4;
    v44 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      v45 = 0;
      if (v44 != 2)
      {
        goto LABEL_30;
      }

      v47 = *(v42 + 16);
      v46 = *(v42 + 24);
      v48 = __OFSUB__(v46, v47);
      v49 = v46 - v47;
      if (!v48)
      {
LABEL_22:
        if (v49 >= 0x10000)
        {
          sub_10000B02C();
          swift_allocError();
          *v50 = xmmword_100481860;
          *(v50 + 16) = 0;
          swift_willThrow();
LABEL_53:
          sub_1000124C8(v42, v41);
          return;
        }

        if (v44 == 2)
        {
          v52 = *(v42 + 16);
          v51 = *(v42 + 24);
          v48 = __OFSUB__(v51, v52);
          v45 = v51 - v52;
          if (!v48)
          {
            goto LABEL_30;
          }

          __break(1u);
        }

        LODWORD(v45) = HIDWORD(v42) - v42;
        if (__OFSUB__(HIDWORD(v42), v42))
        {
LABEL_62:
          __break(1u);
          return;
        }

        v45 = v45;
LABEL_30:
        v53 = v45 + 40;
        if (__OFADD__(v45, 40))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v54 = swift_slowAlloc();
        v55 = v54;
        if (v44 > 1)
        {
          if (v44 != 2)
          {
            goto LABEL_43;
          }

          v58 = *(v42 + 16);
          v57 = *(v42 + 24);
          v48 = __OFSUB__(v57, v58);
          v56 = v57 - v58;
          if (!v48)
          {
LABEL_40:
            if ((v56 & 0x8000000000000000) != 0)
            {
LABEL_58:
              __break(1u);
              goto LABEL_59;
            }

            if (!(v56 >> 16))
            {
LABEL_44:
              *v54 = v70;
              v59 = v75;
              v60 = v77;
              v61 = v78;
              *(v54 + 8) = v77;
              *(v54 + 10) = BYTE2(v60);
              *(v54 + 11) = BYTE3(v60);
              *(v54 + 12) = BYTE4(v60);
              *(v54 + 13) = BYTE5(v60);
              *(v54 + 14) = v61;
              *(v54 + 16) = BYTE2(v61);
              *(v54 + 17) = BYTE3(v61);
              *(v54 + 18) = BYTE4(v61);
              *(v54 + 19) = BYTE5(v61);
              *(v54 + 20) = v59;
              *(v54 + 22) = BYTE2(v59);
              *(v54 + 23) = BYTE3(v59);
              *(v54 + 24) = BYTE4(v59);
              *(v54 + 25) = BYTE5(v59);
              *(v54 + 26) = v43;
              *(v54 + 27) = v76;
              *(v54 + 28) = 3000;
              *(v54 + 30) = 0;
              *(v54 + 38) = v56;
              if (v44 > 1)
              {
                if (v44 != 2 || !__OFSUB__(*(v42 + 24), *(v42 + 16)))
                {
                  goto LABEL_52;
                }

                __break(1u);
              }

              else if (!v44)
              {
LABEL_52:
                Data.copyBytes(to:count:)();
                v62 = v72;
                (*(v73 + 104))(v72, enum case for Data.Deallocator.none(_:), v17);
                v63 = sub_100002DE8(v55, v53, v62);
                v65 = v64;
                sub_1002940E0(7233902, 0xE300000000000000, 2051, v63, v64, 1);
                sub_1000124C8(v66, v67);
                sub_1000124C8(v63, v65);

                goto LABEL_53;
              }

              if (__OFSUB__(HIDWORD(v42), v42))
              {
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }

              goto LABEL_52;
            }

            __break(1u);
LABEL_43:
            LOWORD(v56) = 0;
            goto LABEL_44;
          }

          __break(1u);
        }

        else if (!v44)
        {
          LOWORD(v56) = BYTE6(v41);
          goto LABEL_44;
        }

        LODWORD(v56) = HIDWORD(v42) - v42;
        if (__OFSUB__(HIDWORD(v42), v42))
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v56 = v56;
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (!v44)
    {
      v45 = BYTE6(v41);
      goto LABEL_30;
    }

    LODWORD(v49) = HIDWORD(v42) - v42;
    if (__OFSUB__(HIDWORD(v42), v42))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v49 = v49;
    goto LABEL_22;
  }
}

void BroadcomDriver<>.transmit(outOfBoundFrame:from:to:on:mapID:using:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v12;
  v85 = a2;
  v86 = a3;
  v20 = type metadata accessor for Data.Deallocator();
  __chkstk_darwin();
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a7 - a6;
  if (a7 < a6)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v82 = v11;
  v83 = a4;
  v84 = a5;
  v80 = v23;
  v81 = v21;
  v25 = _swiftEmptyArrayStorage;
  if (v24 >= 0x80)
  {
    v77 = v12;
    v78 = a1;
    v79 = v20;
    v26 = v24 >> 7;
    v87[0] = _swiftEmptyArrayStorage;
    sub_10002D838(0, v24 >> 7, 0);
    v25 = v87[0];
    v27 = *(v87[0] + 16);
    v28 = a6 >> 7;
    while (1)
    {
      v88 = a8;
      v29 = *(&v88 + v28);
      v87[0] = v25;
      v30 = v25[3];
      if (v27 >= v30 >> 1)
      {
        sub_10002D838((v30 > 1), v27 + 1, 1);
        v25 = v87[0];
      }

      v25[2] = v27 + 1;
      *(v25 + v27 + 32) = v29;
      if (a6 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      a6 += 128;
      ++v28;
      ++v27;
      if (!--v26)
      {
        a1 = v78;
        v20 = v79;
        v13 = v77;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_9:
  v31 = sub_10002D874(v25);
  v33 = v32;

  v34 = sub_1002AB53C(v31, v33);
  sub_1000124C8(v31, v33);
  if (!v13)
  {
    if (a1[32] != 2)
    {
      sub_10000B02C();
      swift_allocError();
      *v43 = xmmword_1004817E0;
      *(v43 + 16) = 0;
      swift_willThrow();
      return;
    }

    v35 = *a1;
    v37 = *(a1 + 2);
    v36 = *(a1 + 3);
    v78 = v34;
    v79 = v36;
    v38 = *(a1 + 1);
    v39 = sub_100033AA8(_swiftEmptyArrayStorage);
    v40 = type metadata accessor for BinaryEncoder();
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100480A90;
    *(v41 + 32) = v39;
    v87[3] = v40;
    v42 = v35;
    v87[4] = sub_10029EFDC(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    v87[0] = v41;

    IEEE80211Frame.Management.ActionFrame.encode(to:)(v87, v35, v38, v37, v79);
    sub_100002A00(v87);
    swift_beginAccess();
    v45 = *(v41 + 16);
    v44 = *(v41 + 24);
    sub_10000AB0C(v45, v44);

    v46 = v42 == 4;
    v47 = v44 >> 62;
    if ((v44 >> 62) > 1)
    {
      v48 = 0;
      if (v47 != 2)
      {
        goto LABEL_30;
      }

      v50 = *(v45 + 16);
      v49 = *(v45 + 24);
      v51 = __OFSUB__(v49, v50);
      v52 = v49 - v50;
      if (!v51)
      {
LABEL_22:
        if (v52 >= 0x10000)
        {
          sub_10000B02C();
          swift_allocError();
          *v53 = xmmword_100481860;
          *(v53 + 16) = 0;
          swift_willThrow();
          v54 = v45;
          v55 = v44;
LABEL_54:
          sub_1000124C8(v54, v55);
          return;
        }

        if (v47 == 2)
        {
          v57 = *(v45 + 16);
          v56 = *(v45 + 24);
          v51 = __OFSUB__(v56, v57);
          v48 = v56 - v57;
          if (!v51)
          {
            goto LABEL_30;
          }

          __break(1u);
        }

        LODWORD(v48) = HIDWORD(v45) - v45;
        if (__OFSUB__(HIDWORD(v45), v45))
        {
LABEL_63:
          __break(1u);
          return;
        }

        v48 = v48;
LABEL_30:
        v58 = v48 + 40;
        if (__OFADD__(v48, 40))
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        v59 = swift_slowAlloc();
        v60 = v59;
        if (v47 > 1)
        {
          if (v47 != 2)
          {
            goto LABEL_43;
          }

          v63 = *(v45 + 16);
          v62 = *(v45 + 24);
          v51 = __OFSUB__(v62, v63);
          v61 = v62 - v63;
          if (!v51)
          {
LABEL_40:
            if ((v61 & 0x8000000000000000) != 0)
            {
LABEL_59:
              __break(1u);
              goto LABEL_60;
            }

            if (!(v61 >> 16))
            {
LABEL_44:
              *v59 = v78;
              v64 = v83;
              v65 = v85;
              v66 = v86;
              *(v59 + 8) = v85;
              *(v59 + 10) = BYTE2(v65);
              *(v59 + 11) = BYTE3(v65);
              *(v59 + 12) = BYTE4(v65);
              *(v59 + 13) = BYTE5(v65);
              *(v59 + 14) = v66;
              *(v59 + 16) = BYTE2(v66);
              *(v59 + 17) = BYTE3(v66);
              *(v59 + 18) = BYTE4(v66);
              *(v59 + 19) = BYTE5(v66);
              *(v59 + 20) = v64;
              *(v59 + 22) = BYTE2(v64);
              *(v59 + 23) = BYTE3(v64);
              *(v59 + 24) = BYTE4(v64);
              *(v59 + 25) = BYTE5(v64);
              *(v59 + 26) = v46;
              *(v59 + 27) = v84;
              *(v59 + 28) = 3000;
              *(v59 + 30) = 0;
              *(v59 + 38) = v61;
              v79 = v58;
              if (v47 > 1)
              {
                v67 = v45;
                v68 = v44;
                if (v47 != 2 || !__OFSUB__(*(v45 + 24), *(v45 + 16)))
                {
                  goto LABEL_53;
                }

                __break(1u);
              }

              else if (!v47)
              {
                v67 = v45;
                v68 = v44;
LABEL_53:
                v69 = v67;
                Data.copyBytes(to:count:)();
                v70 = v80;
                (*(v81 + 104))(v80, enum case for Data.Deallocator.none(_:), v20);
                v71 = sub_100002DE8(v60, v79, v70);
                v73 = v72;
                sub_1002949B4(7233902, 0xE300000000000000, 2051, v71, v72, 1, a9, a10, *(a11 + 16));
                sub_1000124C8(v74, v75);
                sub_1000124C8(v71, v73);

                v54 = v69;
                v55 = v68;
                goto LABEL_54;
              }

              if (__OFSUB__(HIDWORD(v45), v45))
              {
LABEL_62:
                __break(1u);
                goto LABEL_63;
              }

              v67 = v45;
              v68 = v44;
              goto LABEL_53;
            }

            __break(1u);
LABEL_43:
            LOWORD(v61) = 0;
            goto LABEL_44;
          }

          __break(1u);
        }

        else if (!v47)
        {
          LOWORD(v61) = BYTE6(v44);
          goto LABEL_44;
        }

        LODWORD(v61) = HIDWORD(v45) - v45;
        if (__OFSUB__(HIDWORD(v45), v45))
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v61 = v61;
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (!v47)
    {
      v48 = BYTE6(v44);
      goto LABEL_30;
    }

    LODWORD(v52) = HIDWORD(v45) - v45;
    if (__OFSUB__(HIDWORD(v45), v45))
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v52 = v52;
    goto LABEL_22;
  }
}

void sub_100291DF4(unsigned __int8 *a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v74 = *(v2 - 8);
  v75 = v2;
  __chkstk_darwin();
  v72 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for SHA256();
  v71 = *(v73 - 8);
  __chkstk_darwin();
  v70 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = xmmword_100480A90;
  v5 = a1[8];
  v6 = a1[9];
  v7 = a1[10];
  v8 = a1[11];
  v9 = a1[12];
  v10 = a1[13];
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1004817D0;
  v76 = v6;
  v77 = v5;
  *(v11 + 32) = v5;
  *(v11 + 33) = v6;
  *(v11 + 34) = v7;
  *(v11 + 35) = v8;
  *(v11 + 36) = v9;
  *(v11 + 37) = v10;
  v12 = sub_10002D874(v11);
  v14 = v13;

  v15 = v81;
  sub_10029A0C4(270, v12, v14);
  if (v15)
  {
    sub_1000124C8(v80, *(&v80 + 1));
    v16 = v12;
    v17 = v14;
LABEL_3:
    sub_1000124C8(v16, v17);
    return;
  }

  v66 = v10;
  v67 = v8;
  v68 = v7;
  v69 = v9;
  v81 = 0;
  sub_1000124C8(v12, v14);
  v18 = *(a1 + 16);
  v19 = a1;
  if (v18 == 1)
  {
    LODWORD(v20) = 0;
    v21 = v69;
LABEL_6:
    v22 = v19[74] != 2;
    if (v19[74])
    {
      v20 = v20;
    }

    else
    {
      v20 = v20 | 0x10;
    }

    v74 = v19[50];
    v75 = v20;
    v73 = v19[49];
    v23 = v19[48];
    v24 = v19[47];
    v25 = v19[46];
    v26 = *v19;
    v27 = v80;
    v28 = v19[51];
    sub_10000AB0C(v80, *(&v80 + 1));
    v29 = v81;
    v30 = sub_10029AD24((v22 << 8) | (v26 << 24), (v77 << 32) | (v76 << 40) | (v68 << 48) | (v67 << 56), v21 | (v66 << 8) | (v28 << 56) | (v74 << 48) | (v73 << 40) | (v23 << 32) | (v24 << 24) | (v25 << 16), v75 | 0xFFFF00000000, 0, 30, v27, *(&v27 + 1));
    v32 = v31;
    sub_1000124C8(v27, *(&v27 + 1));
    if (!v29)
    {
      sub_1002940E0(7233902, 0xE300000000000000, 1285, v30, v32, 0);
      sub_1000124C8(v50, v51);
      sub_1000124C8(v30, v32);
    }

    v17 = *(&v27 + 1);
    v16 = v27;
    goto LABEL_3;
  }

  v34 = *(a1 + 10);
  v33 = *(v19 + 11);
  v35 = *(v19 + 12);
  v36 = *(v19 + 13);
  v37 = *(v19 + 14);
  v65 = *(v19 + 15);
  v38 = v33;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100480F40;
  v64 = v34;
  *(v39 + 32) = v34 + 1;
  sub_10000AB0C(v38, v35);
  sub_10005D67C(v36, v37);

  v40 = v18;
  v41 = sub_10002D874(v39);
  v43 = v42;

  v44 = v81;
  sub_10029A0C4(264, v41, v43);
  if (v44)
  {
    sub_1000124C8(v41, v43);
    sub_10011A270(v64, v38, v35, v36, v37, v65, v40);
    v17 = *(&v80 + 1);
    v16 = v80;
    goto LABEL_3;
  }

  v59 = v40;
  v60 = v37;
  v61 = v36;
  v62 = v38;
  v63 = v35;
  sub_1000124C8(v41, v43);
  v45 = v70;
  SHA256.init()();
  v46 = String.lowercased()();

  sub_1001F93A4(v46._countAndFlagsBits, v46._object, v45);

  v47 = v72;
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v74 + 8))(v47, v75);
  v48 = v78;
  v49 = v79;
  (*(v71 + 8))(v45, v73);
  sub_10029A0C4(263, v48, v49);
  sub_1000124C8(v48, v49);
  v52 = v62;
  v53 = v63;
  sub_10000AB0C(v62, v63);
  sub_10029A0C4(265, v52, v53);
  sub_1000124C8(v52, v53);
  v21 = v69;
  v81 = 0;
  v54 = v65;
  if (v60 >> 60 == 15)
  {
    sub_10011A270(v64, v52, v63, v61, v60, v65, v59);
LABEL_19:
    LODWORD(v20) = 8;
    goto LABEL_6;
  }

  v55 = v64;
  v56 = v61;
  v57 = v60;
  sub_10000AB0C(v61, v60);
  sub_10000AB0C(v56, v57);
  v58 = v81;
  sub_10029A0C4(266, v56, v57);
  if (!v58)
  {
    v81 = 0;
    sub_10011A270(v55, v52, v63, v56, v57, v54, v59);
    sub_100017554(v56, v57);
    sub_100017554(v56, v57);
    goto LABEL_19;
  }

  sub_1000124C8(v80, *(&v80 + 1));
  sub_100017554(v56, v57);
  sub_100017554(v56, v57);
  sub_10011A270(v55, v52, v63, v56, v57, v54, v59);
}

void BroadcomDriver<>.send(datapathResponse:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = a4;
  v87 = a2;
  v88 = a3;
  v5 = type metadata accessor for SHA256Digest();
  v85 = *(v5 - 8);
  v86 = v5;
  __chkstk_darwin();
  v83 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for SHA256();
  v82 = *(v84 - 8);
  __chkstk_darwin();
  v81 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = xmmword_100480A90;
  v8 = a1[8];
  v9 = a1[9];
  v10 = a1[10];
  v11 = a1[11];
  v12 = a1[12];
  v13 = a1[13];
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004817D0;
  v90 = v9;
  v91 = v8;
  *(v14 + 32) = v8;
  *(v14 + 33) = v9;
  *(v14 + 34) = v10;
  *(v14 + 35) = v11;
  *(v14 + 36) = v12;
  *(v14 + 37) = v13;
  v15 = sub_10002D874(v14);
  v17 = v16;

  v18 = v100;
  sub_10029A0C4(270, v15, v17);
  if (v18)
  {
    sub_1000124C8(v99, *(&v99 + 1));
    sub_1000124C8(v15, v17);
    return;
  }

  v77 = v13;
  v78 = v12;
  v100 = 0;
  v79 = v11;
  v80 = v10;
  sub_1000124C8(v15, v17);
  v19 = *(a1 + 16);
  v20 = a1;
  if (v19 == 1)
  {
    v21 = 0;
LABEL_5:
    v22 = v89;
    v24 = v90;
    v23 = v91;
    v26 = v79;
    v25 = v80;
    v28 = v77;
    v27 = v78;
LABEL_6:
    v29 = v20[74];
    v30 = v29 != 2;
    v31 = v29 == 0;
    v32 = *v20;
    if (v31)
    {
      v21 |= 0x10u;
    }

    v33 = *(v20 + 25);
    LOBYTE(v92) = 0;
    *(&v92 + 1) = v30;
    BYTE3(v92) = v32;
    *(&v92 + 4) = 0;
    BYTE12(v92) = v23;
    BYTE13(v92) = v24;
    BYTE14(v92) = v25;
    HIBYTE(v92) = v26;
    v93 = v27;
    v94 = v28;
    v95 = *(v20 + 46);
    v96 = v33;
    v97 = v21;
    v98 = -65536;
    v34 = v99;
    sub_10000AB0C(v99, *(&v99 + 1));
    type metadata accessor for wl_nan_dp_resp(0);
    v36 = v35;
    v37 = sub_100037FF8();
    v38 = v88;
    v39 = v87;
    v40 = v100;
    sub_10029E5DC(&v92, 0, 30, v34, *(&v34 + 1), v87, v36, &type metadata for UInt16, v88, v22, v37);
    if (v40)
    {
      sub_1000124C8(v99, *(&v99 + 1));
      sub_1000124C8(v34, *(&v34 + 1));
      return;
    }

    v55 = v41;
    v56 = v42;
    sub_1000124C8(v34, *(&v34 + 1));
    sub_1002949B4(7233902, 0xE300000000000000, 1285, v55, v56, 0, v39, v38, *(v22 + 16));
    sub_1000124C8(v61, v62);
    sub_1000124C8(v55, v56);
    goto LABEL_12;
  }

  v44 = *(a1 + 10);
  v43 = *(a1 + 11);
  v45 = *(a1 + 12);
  v46 = *(a1 + 13);
  v47 = *(a1 + 14);
  v76 = *(a1 + 15);
  v48 = v43;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100480F40;
  v75 = v44;
  *(v49 + 32) = v44 + 1;
  sub_10000AB0C(v48, v45);
  sub_10005D67C(v46, v47);

  v50 = v19;
  v51 = sub_10002D874(v49);
  v53 = v52;

  v54 = v100;
  sub_10029A0C4(264, v51, v53);
  if (v54)
  {
    sub_1000124C8(v51, v53);
    sub_10011A270(v75, v48, v45, v46, v47, v76, v50);
LABEL_12:
    sub_1000124C8(v99, *(&v99 + 1));
    return;
  }

  v70 = v47;
  v72 = v50;
  v73 = v48;
  v74 = v45;
  v71 = v46;
  sub_1000124C8(v51, v53);
  v57 = v81;
  SHA256.init()();
  v58 = String.lowercased()();

  sub_1001F93A4(v58._countAndFlagsBits, v58._object, v57);

  v59 = v83;
  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v85 + 8))(v59, v86);
  v60 = v92;
  (*(v82 + 8))(v57, v84);
  sub_10029A0C4(263, v60, *(&v60 + 1));
  sub_1000124C8(v60, *(&v60 + 1));
  v63 = v73;
  v64 = v74;
  sub_10000AB0C(v73, v74);
  sub_10029A0C4(265, v63, v64);
  sub_1000124C8(v63, v64);
  v100 = 0;
  v65 = v71;
  if (v70 >> 60 == 15)
  {
    sub_10011A270(v75, v63, v64, v71, v70, v76, v72);
    v21 = 8;
    goto LABEL_5;
  }

  v66 = v70;
  sub_10005D67C(v71, v70);
  sub_10000AB0C(v65, v66);
  v67 = v100;
  sub_10029A0C4(266, v65, v66);
  v22 = v89;
  v24 = v90;
  v23 = v91;
  v68 = v65;
  v26 = v79;
  v25 = v80;
  v100 = v67;
  v28 = v77;
  v27 = v78;
  if (!v67)
  {
    sub_10011A270(v75, v73, v74, v68, v66, v76, v72);
    sub_100017554(v71, v66);
    sub_100017554(v71, v66);
    v21 = 8;
    goto LABEL_6;
  }

  v69 = v68;
  sub_1000124C8(v99, *(&v99 + 1));
  sub_100017554(v69, v66);
  sub_100017554(v69, v66);
  sub_10011A270(v75, v73, v74, v69, v66, v76, v72);
}

uint64_t sub_100292CD0(unint64_t a1)
{
  v8[0] = a1;
  v8[1] = HIBYTE(a1) != 2;
  v9 = 0;
  v2 = sub_10004F3B0(v8, &v10);
  v4 = v3;
  sub_1002940E0(7233902, 0xE300000000000000, 1294, v2, v3, 1);
  if (!v1)
  {
    sub_1000124C8(v5, v6);
  }

  return sub_1000124C8(v2, v4);
}

uint64_t BroadcomDriver<>.send(datapathConfirmation:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a1;
  v9[1] = HIBYTE(a1) != 2;
  v10 = 0;
  type metadata accessor for wl_nan_dp_conf(0);
  return sub_10029A8F4(1294, v9, a2, v7, a3, a4);
}

uint64_t BroadcomDriver<>.getMatchingSlotCount(peer:)()
{
  sub_10000B02C();
  swift_allocError();
  *v0 = xmmword_1004817E0;
  *(v0 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_100292EA4(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v29 = result + 32;
    while (1)
    {
      v4 = v29 + 16 * v3;
      v5 = *(v4 + 2);
      v6 = *(v4 + 8);
      v38 = xmmword_100480A90;
      v7 = *(v6 + 16);
      swift_bridgeObjectRetain_n();
      if (v7)
      {
        v8 = 0;
        v9 = (v6 + 80);
        while (v8 < *(v6 + 16))
        {
          v10 = *v9;
          v11 = *(v9 - 1);
          v12 = *(v9 - 16);
          v13 = *(v9 - 4);
          v14 = *(v9 - 3);
          v15 = *(v9 - 5);
          LOWORD(v31) = *(v9 - 24);
          v32 = v15;
          v33 = v13;
          v34 = v14;
          v35 = v12;
          v36 = v11;
          v37 = v10;
          sub_10005D4F4(v15, v13, v14);

          sub_10029BE3C(&v38, &v31);
          if (v1)
          {

            sub_10002F75C(v32, v33, v34);

            sub_1000124C8(v38, *(&v38 + 1));
            __break(1u);
            goto LABEL_48;
          }

          ++v8;
          sub_10002F75C(v32, v33, v34);

          v9 += 56;
          if (v7 == v8)
          {
            v17 = *(&v38 + 1);
            v16 = v38;
            goto LABEL_10;
          }
        }

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
      }

      v16 = 0;
      v17 = 0xC000000000000000;
LABEL_10:

      v31 = 0;
      v32 = 0;
      v18 = sub_1000E5540(0, 4uLL, v5);
      if (v1)
      {
        break;
      }

      BYTE4(v31) = v18 & 0xF;
      v19 = *(v6 + 16);
      if (v19 > 0xFF)
      {
        goto LABEL_41;
      }

      BYTE6(v32) = *(v6 + 16);
      if ((v5 & 0x20) != 0)
      {
        v20 = 8200;
      }

      else
      {
        v20 = 0x2000;
      }

      if ((v5 & 0x10) != 0)
      {
        v21 = 8201;
      }

      else
      {
        v21 = v20;
      }

      if ((v5 & 0x30) != 0)
      {
        if ((v5 & 0x10) != 0)
        {
          v22 = 9;
        }

        else
        {
          v22 = 8;
        }

        WORD1(v31) = v22;
      }

      if (!v19)
      {
        WORD1(v31) = v21;
      }

      v23 = v17 >> 62;
      if ((v17 >> 62) > 1)
      {
        if (v23 == 2)
        {
          v26 = *(v16 + 16);
          v25 = *(v16 + 24);
          v27 = __OFSUB__(v25, v26);
          v24 = v25 - v26;
          if (v27)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v24 = 0;
        }
      }

      else if (v23)
      {
        LODWORD(v24) = HIDWORD(v16) - v16;
        if (__OFSUB__(HIDWORD(v16), v16))
        {
          goto LABEL_46;
        }

        v24 = v24;
      }

      else
      {
        v24 = BYTE6(v17);
      }

      v27 = __OFADD__(v24, 16);
      v28 = v24 + 16;
      if (v27)
      {
        goto LABEL_42;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (v28 >> 16)
      {
        goto LABEL_44;
      }

      LOWORD(v31) = v28;
      sub_10029C55C(&v31, &v33, v30, v16, v17);
      result = sub_1000124C8(v16, v17);
      if (++v3 == v2)
      {
        return result;
      }
    }

LABEL_48:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t BroadcomDriver<>.update(availability:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v32 = result + 32;
    while (1)
    {
      v7 = v32 + 16 * v6;
      v8 = *(v7 + 2);
      v9 = *(v7 + 8);
      v45 = xmmword_100480A90;
      v10 = *(v9 + 16);
      swift_bridgeObjectRetain_n();
      if (v10)
      {
        v11 = 0;
        v12 = (v9 + 80);
        while (v11 < *(v9 + 16))
        {
          v13 = *v12;
          v14 = *(v12 - 1);
          v15 = *(v12 - 16);
          v16 = *(v12 - 4);
          v17 = *(v12 - 3);
          v18 = *(v12 - 5);
          LOWORD(v38) = *(v12 - 24);
          v39 = v18;
          v40 = v16;
          v41 = v17;
          v42 = v15;
          v43 = v14;
          v44 = v13;
          sub_10005D4F4(v18, v16, v17);

          sub_10029BE3C(&v45, &v38);
          if (v4)
          {

            sub_10002F75C(v39, v40, v41);

            sub_1000124C8(v45, *(&v45 + 1));
            __break(1u);
            goto LABEL_49;
          }

          ++v11;
          sub_10002F75C(v39, v40, v41);

          v12 += 56;
          if (v10 == v11)
          {
            v20 = *(&v45 + 1);
            v19 = v45;
            goto LABEL_10;
          }
        }

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
      }

      v19 = 0;
      v20 = 0xC000000000000000;
LABEL_10:

      v38 = 0;
      v39 = 0;
      v21 = sub_1000E5540(0, 4uLL, v8);
      if (v4)
      {
        break;
      }

      BYTE4(v38) = v21 & 0xF;
      v22 = *(v9 + 16);
      if (v22 > 0xFF)
      {
        goto LABEL_42;
      }

      BYTE6(v39) = *(v9 + 16);
      if ((v8 & 0x20) != 0)
      {
        v23 = 8200;
      }

      else
      {
        v23 = 0x2000;
      }

      if ((v8 & 0x10) != 0)
      {
        v24 = 8201;
      }

      else
      {
        v24 = v23;
      }

      if ((v8 & 0x30) != 0)
      {
        if ((v8 & 0x10) != 0)
        {
          v25 = 9;
        }

        else
        {
          v25 = 8;
        }

        WORD1(v38) = v25;
      }

      if (!v22)
      {
        WORD1(v38) = v24;
      }

      v26 = v20 >> 62;
      if ((v20 >> 62) > 1)
      {
        if (v26 == 2)
        {
          v29 = *(v19 + 16);
          v28 = *(v19 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else if (v26)
      {
        LODWORD(v27) = HIDWORD(v19) - v19;
        if (__OFSUB__(HIDWORD(v19), v19))
        {
          goto LABEL_47;
        }

        v27 = v27;
      }

      else
      {
        v27 = BYTE6(v20);
      }

      v30 = __OFADD__(v27, 16);
      v31 = v27 + 16;
      if (v30)
      {
        goto LABEL_43;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v31 >> 16)
      {
        goto LABEL_45;
      }

      LOWORD(v38) = v31;
      sub_10029C664(&v38, &v40, v36, v19, v20, a2, a3, a4, &v37);
      result = sub_1000124C8(v19, v20);
      if (++v6 == v5)
      {
        return result;
      }
    }

LABEL_49:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_1002934C8(unint64_t a1, uint64_t a2)
{
  sub_1002940E0(7233902, 0xE300000000000000, 277, 0, 0x4000000000000, 0);
  if (!v2)
  {
    v7 = v5;
    v8 = v6;
    v9 = sub_10003462C(v5, v6);
    sub_1000124C8(v7, v8);
    LODWORD(v56) = v9 & 0xFFEFFFFF | ((a2 != 0) << 20);
    v10 = sub_10004F3B0(&v56, &v56 + 4);
    v12 = v11;
    sub_1002940E0(7233902, 0xE300000000000000, 277, v10, v11, 1);
    sub_1000124C8(v13, v14);
    sub_1000124C8(v10, v12);
    v15 = 100;
    if (a2)
    {
      v15 = a1;
    }

    if (v15 >> 16)
    {
      goto LABEL_47;
    }

    LOWORD(v56) = v15;
    v16 = sub_10004F3B0(&v56, &v56 + 2);
    v18 = v17;
    sub_1002940E0(7233902, 0xE300000000000000, 270, v16, v17, 1);
    sub_1000124C8(v19, v20);
    sub_1000124C8(v16, v18);
    if (a2)
    {
      v21 = *(a2 + 16);
      if (v21)
      {
        v55 = _swiftEmptyArrayStorage;
        sub_1000C08B4(0, v21, 0);
        v22 = _swiftEmptyArrayStorage;
        v23 = (a2 + 56);
        while (1)
        {
          v24 = *(v23 - 24);
          v25 = *(v23 - 1);
          v26 = *v23;
          v54 = 0;
          v53 = 0;
          v52 = v24;
          v27 = v26 >> 62;
          if ((v26 >> 62) > 1)
          {
            if (v27 != 2)
            {
              LOBYTE(v28) = 0;
              goto LABEL_23;
            }

            v30 = *(v25 + 16);
            v29 = *(v25 + 24);
            v28 = v29 - v30;
            if (__OFSUB__(v29, v30))
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (!v27)
            {
              v28 = HIWORD(v26);
              goto LABEL_23;
            }

            if (__OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_43;
            }

            v28 = HIDWORD(v25) - v25;
          }

          sub_10000AB0C(v25, v26);
          if ((v28 & 0x8000000000000000) != 0)
          {
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
          }

          if (v28 > 0xFF)
          {
            goto LABEL_42;
          }

LABEL_23:
          LOBYTE(v53) = v28;
          v31 = sub_100170260(&v52, &v55);
          v33 = v32;
          *&v59 = v31;
          *(&v59 + 1) = v32;
          v57 = &type metadata for Data;
          v58 = &protocol witness table for Data;
          *&v56 = v25;
          *(&v56 + 1) = v26;
          v34 = sub_100029B34(&v56, &type metadata for Data);
          v35 = *v34;
          v36 = v34[1] >> 62;
          v50 = v22;
          if (v36 > 1)
          {
            if (v36 != 2)
            {
LABEL_36:
              Data._Representation.append(contentsOf:)();
              goto LABEL_37;
            }

            v37 = v33;
            v38 = *(v35 + 16);
            v47 = *(v35 + 24);
            v48 = v21;
            sub_10000AB0C(v25, v26);
            v49 = v37;
            sub_10000AB0C(v31, v37);
            if (__DataStorage._bytes.getter() && __OFSUB__(v38, __DataStorage._offset.getter()))
            {
              goto LABEL_48;
            }

            if (__OFSUB__(v47, v38))
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (!v36)
            {
              goto LABEL_36;
            }

            v48 = v21;
            v49 = v33;
            v39 = v35;
            if (v35 >> 32 < v35)
            {
              goto LABEL_45;
            }

            sub_10000AB0C(v25, v26);
            sub_10000AB0C(v31, v33);
            if (__DataStorage._bytes.getter() && __OFSUB__(v39, __DataStorage._offset.getter()))
            {
              goto LABEL_49;
            }
          }

          __DataStorage._length.getter();
          Data._Representation.append(contentsOf:)();
          sub_1000124C8(v31, v49);
          sub_1000124C8(v25, v26);
          v21 = v48;
LABEL_37:
          sub_100002A00(&v56);
          v40 = v59;
          v22 = v50;
          v55 = v50;
          v42 = v50[2];
          v41 = v50[3];
          if (v42 >= v41 >> 1)
          {
            v51 = v59;
            sub_1000C08B4((v41 > 1), v42 + 1, 1);
            v40 = v51;
            v22 = v55;
          }

          v23 += 4;
          v22[2] = v42 + 1;
          v43 = &v22[3 * v42];
          *(v43 + 8) = 271;
          *(v43 + 5) = v40;
          if (!--v21)
          {
            v56 = xmmword_100480A90;
            sub_100288EA0(v22);

            v44 = v56;
            sub_10000AB0C(v56, *(&v56 + 1));
            sub_1000124C8(v44, *(&v44 + 1));
            sub_1002940E0(7233902, 0xE300000000000000, 284, v44, *(&v44 + 1), 1);
            sub_1000124C8(v45, v46);
            sub_1000124C8(v44, *(&v44 + 1));
            return;
          }
        }
      }
    }
  }
}

void *BroadcomDriver<>.update(discoveryBeaconTransmissionSchedule:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  result = sub_10029AA78(0x115u, a3, &type metadata for UInt32, a4, a5, &v53);
  if (!v5)
  {
    LODWORD(v54) = v53 & 0xFFEFFFFF | ((a2 != 0) << 20);
    sub_10029A8F4(277, &v54, a3, &type metadata for UInt32, a4, v6);
    v12 = 100;
    if (a2)
    {
      v12 = a1;
    }

    if (v12 >> 16)
    {
      goto LABEL_47;
    }

    LOWORD(v54) = v12;
    result = sub_10029A8F4(270, &v54, a3, &type metadata for UInt16, a4, v6);
    if (a2)
    {
      v13 = *(a2 + 16);
      if (v13)
      {
        v42 = a3;
        v43 = a4;
        v52 = _swiftEmptyArrayStorage;
        sub_1000C08B4(0, v13, 0);
        v14 = _swiftEmptyArrayStorage;
        v15 = (a2 + 56);
        v44 = v6;
        v16 = v13;
        while (1)
        {
          v17 = *(v15 - 24);
          v18 = *(v15 - 1);
          v19 = *v15;
          v51 = 0;
          v50 = 0;
          v49 = v17;
          v20 = v19 >> 62;
          if ((v19 >> 62) > 1)
          {
            if (v20 != 2)
            {
              LOBYTE(v21) = 0;
              goto LABEL_23;
            }

            v23 = *(v18 + 16);
            v22 = *(v18 + 24);
            v21 = v22 - v23;
            if (__OFSUB__(v22, v23))
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (!v20)
            {
              v21 = HIWORD(v19);
              goto LABEL_23;
            }

            if (__OFSUB__(HIDWORD(v18), v18))
            {
              goto LABEL_43;
            }

            v21 = HIDWORD(v18) - v18;
          }

          sub_10000AB0C(v18, v19);
          if ((v21 & 0x8000000000000000) != 0)
          {
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
          }

          if (v21 > 0xFF)
          {
            goto LABEL_42;
          }

LABEL_23:
          LOBYTE(v50) = v21;
          v24 = sub_100170260(&v49, &v52);
          v26 = v25;
          *&v57 = v24;
          *(&v57 + 1) = v25;
          v55 = &type metadata for Data;
          v56 = &protocol witness table for Data;
          *&v54 = v18;
          *(&v54 + 1) = v19;
          v27 = sub_100029B34(&v54, &type metadata for Data);
          v28 = *v27;
          v29 = v27[1] >> 62;
          if (v29 > 1)
          {
            if (v29 != 2)
            {
LABEL_36:
              Data._Representation.append(contentsOf:)();
              goto LABEL_37;
            }

            v30 = *(v28 + 16);
            v45 = *(v28 + 24);
            v47 = v16;
            sub_10000AB0C(v18, v19);
            sub_10000AB0C(v24, v26);
            if (__DataStorage._bytes.getter() && __OFSUB__(v30, __DataStorage._offset.getter()))
            {
              goto LABEL_48;
            }

            if (__OFSUB__(v45, v30))
            {
              goto LABEL_46;
            }

            __DataStorage._length.getter();
            Data._Representation.append(contentsOf:)();
            v31 = v24;
            v32 = v26;
          }

          else
          {
            if (!v29)
            {
              goto LABEL_36;
            }

            v46 = v24;
            v47 = v16;
            v33 = v26;
            v34 = v28;
            if (v28 >> 32 < v28)
            {
              goto LABEL_45;
            }

            sub_10000AB0C(v18, v19);
            sub_10000AB0C(v46, v33);
            if (__DataStorage._bytes.getter() && __OFSUB__(v34, __DataStorage._offset.getter()))
            {
              goto LABEL_49;
            }

            __DataStorage._length.getter();
            Data._Representation.append(contentsOf:)();
            v31 = v46;
            v32 = v33;
          }

          sub_1000124C8(v31, v32);
          sub_1000124C8(v18, v19);
          v6 = v44;
          v16 = v47;
LABEL_37:
          sub_100002A00(&v54);
          v35 = v57;
          v52 = v14;
          v37 = v14[2];
          v36 = v14[3];
          if (v37 >= v36 >> 1)
          {
            v48 = v57;
            sub_1000C08B4((v36 > 1), v37 + 1, 1);
            v35 = v48;
            v14 = v52;
          }

          v15 += 4;
          v14[2] = v37 + 1;
          v38 = &v14[3 * v37];
          *(v38 + 8) = 271;
          *(v38 + 5) = v35;
          if (!--v16)
          {
            v54 = xmmword_100480A90;
            sub_100288EA0(v14);

            v39 = v54;
            sub_10000AB0C(v54, *(&v54 + 1));
            sub_1000124C8(v39, *(&v39 + 1));
            sub_1002949B4(7233902, 0xE300000000000000, 284, v39, *(&v39 + 1), 1, v42, v43, *(v6 + 16));
            sub_1000124C8(v40, v41);
            return sub_1000124C8(v39, *(&v39 + 1));
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100293FD4@<X0>(uint64_t *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  swift_allocObject();
  result = AppleBroadcomDriver.init(device:role:name:)(v9, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_100294064@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7CoreP2P19AppleBroadcomDriver_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void sub_1002940E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, int a6)
{
  v8 = v6;
  v93 = a6;
  v94 = a3;
  v99 = a5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v7;
  Logger.init(subsystem:category:)();
  v16 = String.count.getter();
  v98 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v17 = v16;
  v95 = a1;
  v96 = a2;
  v97 = v15;
  swift_getKeyPath();
  v18 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v20 = v19;

  if (v20)
  {
LABEL_86:
    __break(1u);
    return;
  }

  v21 = v18;
  v22 = __OFADD__(v98, v18);
  v23 = v98 + v18;
  if (v22)
  {
    goto LABEL_69;
  }

  v24 = v99 >> 62;
  if ((v99 >> 62) <= 1)
  {
    if (!v24)
    {
      v25 = BYTE6(v99);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v24 != 2)
  {
    v25 = 0;
    goto LABEL_14;
  }

  v27 = *(a4 + 16);
  v26 = *(a4 + 24);
  v22 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v22)
  {
    __break(1u);
LABEL_11:
    LODWORD(v25) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v25 = v25;
  }

LABEL_14:
  v22 = __OFADD__(v25, 8);
  v28 = v25 + 8;
  if (v22)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v22 = __OFADD__(v28, 3);
  v29 = v28 + 3;
  if (v22)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v90 = v13;
  v91 = v12;
  v30 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  v31 = v23 + (v29 & 0xFFFFFFFFFFFFFFFCLL);
  if (__OFADD__(v23, v29 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v32 = swift_slowAlloc();
  if (v31 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v33 = v32;
  if (v31)
  {
    bzero(v32, v21 + v17 + v30 + 1);
  }

  v34 = v96;

  v35 = v34;
  v36 = v92;
  sub_1002890F8(v95, v35, v33);
  v37 = v36;
  v38 = v93;
  v39 = &v33[v98];
  *v39 = 0x8000;
  v39[2] = 1;
  v39[3] = v38 & 1;
  if (v24 <= 1)
  {
    if (!v24)
    {
      v40 = BYTE6(v99);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v24 != 2)
  {
    v40 = 0;
    goto LABEL_30;
  }

  v42 = *(a4 + 16);
  v41 = *(a4 + 24);
  v22 = __OFSUB__(v41, v42);
  v40 = v41 - v42;
  if (v22)
  {
    __break(1u);
LABEL_27:
    LODWORD(v40) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v40 = v40;
  }

LABEL_30:
  v22 = __OFADD__(v40, 4);
  v43 = v40 + 4;
  if (v22)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if ((v43 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v43 >> 16)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v44 = &v33[v23];
  *v44 = v94;
  *(v44 + 1) = v43;
  *(v44 + 1) = 1;
  v44[8] = 0;
  if (__OFADD__(v23, 8))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v24 > 1)
  {
    if (v24 != 2 || !__OFSUB__(*(a4 + 24), *(a4 + 16)))
    {
      goto LABEL_42;
    }

    __break(1u);
  }

  else if (!v24)
  {
    goto LABEL_42;
  }

  if (__OFSUB__(HIDWORD(a4), a4))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_42:
  Data.copyBytes(to:count:)();
  v45 = *(v8 + 16);
  v46 = *(v8 + 24);

  v47 = &v33[v31];
  if (v38)
  {
    AppleDevice.setRequest(requestType:data:on:)(0xFFFFFFFFuLL, v33, v47, 0, v45, v46);
    if (!v37)
    {
      v48 = v98;
      goto LABEL_53;
    }

LABEL_46:

    v49 = v96;

    swift_errorRetain();
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v98 = v53;
      v99 = swift_slowAlloc();
      v100 = v99;
      *v52 = 138413314;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v52 + 4) = v54;
      *v53 = v54;
      *(v52 + 12) = 2080;
      if (v38)
      {
        v55 = 7628147;
      }

      else
      {
        v55 = 7628135;
      }

      v56 = sub_100002320(v55, 0xE300000000000000, &v100);

      *(v52 + 14) = v56;
      *(v52 + 22) = 2080;
      *(v52 + 24) = sub_100002320(v95, v49, &v100);
      *(v52 + 32) = 512;
      *(v52 + 34) = v94;
      *(v52 + 36) = 2080;
      v57 = sub_100170260(v33, &v33[v31]);
      v59 = v58;
      v60 = Data.hexString.getter(v57, v58);
      v62 = v61;
      sub_1000124C8(v57, v59);
      v63 = sub_100002320(v60, v62, &v100);

      *(v52 + 38) = v63;
      _os_log_impl(&_mh_execute_header, v50, v51, "Error %@ while sending %s %s: %hu %s", v52, 0x2Eu);
      sub_100016290(v98, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    v65 = v90;
    v64 = v91;
    goto LABEL_66;
  }

  AppleDevice.getRequest(requestType:data:on:)(0xFFFFFFFFuLL, v33, v47, 0, v45, v46);
  if (v37)
  {
    goto LABEL_46;
  }

  v48 = 0;
LABEL_53:

  v66 = v48 + v21;
  if (__OFADD__(v48, v21))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v67 = v66 + 8;
  if (__OFADD__(v66, 8))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v68 = &v33[v66];
  v69 = *(v68 + 1);
  if (v69)
  {
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v100 = v99;
      *v72 = 67109378;
      *(v72 + 4) = v69;
      *(v72 + 8) = 2080;
      v73 = sub_100170260(v33, &v33[v31]);
      v75 = v74;
      v76 = Data.hexString.getter(v73, v74);
      v78 = v77;
      sub_1000124C8(v73, v75);
      v79 = sub_100002320(v76, v78, &v100);

      *(v72 + 10) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "Error returned in command status: %u %s", v72, 0x12u);
      sub_100002A00(v99);
    }

    v65 = v90;
    v64 = v91;
    if ((v69 & 0x80000000) == 0)
    {
      sub_10000B02C();
      swift_allocError();
      *v80 = v69;
      *(v80 + 8) = 0;
      *(v80 + 16) = 0;
LABEL_66:
      swift_willThrow();

      (*(v65 + 8))(v97, v64);
      return;
    }

    goto LABEL_83;
  }

  v81 = *(v68 + 1);
  v82 = v67 + v81;
  if (__OFADD__(v67, v81))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v22 = __OFSUB__(v82, 4);
  v83 = v82 - 4;
  if (v22)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v31 < v83)
  {
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();
    v86 = os_log_type_enabled(v84, v85);
    v65 = v90;
    v64 = v91;
    if (v86)
    {
      v87 = swift_slowAlloc();
      *v87 = 67109120;
      _os_log_impl(&_mh_execute_header, v84, v85, "Error while parsing returned command: %u", v87, 8u);
    }

    sub_10000B02C();
    swift_allocError();
    *v88 = 0;
    *(v88 + 8) = 0;
    *(v88 + 16) = 2;
    goto LABEL_66;
  }

  sub_1002AAFAC(&v33[v67], v81);

  (*(v90 + 8))(v97, v91);
}

void sub_1002949B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v115 = a6;
  v116 = a5;
  v112 = a3;
  v105 = a8;
  v102 = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v106 = AssociatedTypeWitness;
  v107 = v15;
  __chkstk_darwin();
  v108 = &v99 - v16;
  v17 = type metadata accessor for Logger();
  v101 = *(v17 - 8);
  v18 = __chkstk_darwin();
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a9 + 32);
  v103 = a9;
  v104 = v9;
  v21(a7, a9, v18);
  Logger.init(subsystem:category:)();
  v22 = String.count.getter();
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v24 = v22;
  v111 = a1;
  v25 = a2;
  v114 = v20;
  swift_getKeyPath();
  v26 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  v28 = v27;

  if (v28)
  {
LABEL_87:
    __break(1u);
    return;
  }

  v109 = v26;
  v29 = __OFADD__(v23, v26);
  v30 = v23 + v26;
  if (v29)
  {
    goto LABEL_69;
  }

  v31 = v116 >> 62;
  if ((v116 >> 62) <= 1)
  {
    if (!v31)
    {
      v32 = BYTE6(v116);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (v31 != 2)
  {
    v32 = 0;
    goto LABEL_14;
  }

  v34 = *(a4 + 16);
  v33 = *(a4 + 24);
  v29 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v29)
  {
    __break(1u);
LABEL_11:
    LODWORD(v32) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v32 = v32;
  }

LABEL_14:
  v29 = __OFADD__(v32, 8);
  v35 = v32 + 8;
  if (v29)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v29 = __OFADD__(v35, 3);
  v36 = v35 + 3;
  if (v29)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v113 = v23;
  v100 = v17;
  v37 = v36 & 0xFFFFFFFFFFFFFFFCLL;
  v38 = v30 + (v36 & 0xFFFFFFFFFFFFFFFCLL);
  if (__OFADD__(v30, v36 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v39 = swift_slowAlloc();
  if (v38 < 0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v40 = v39;
  if (v38)
  {
    bzero(v39, v109 + v24 + v37 + 1);
  }

  v41 = v110;
  sub_1002890F8(v111, v25, v40);
  v42 = v115;
  v43 = &v40[v113];
  *v43 = 0x8000;
  v43[2] = 1;
  v43[3] = v42 & 1;
  if (v31 <= 1)
  {
    v44 = v112;
    if (!v31)
    {
      v45 = BYTE6(v116);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v44 = v112;
  if (v31 != 2)
  {
    v45 = 0;
    goto LABEL_30;
  }

  v47 = *(a4 + 16);
  v46 = *(a4 + 24);
  v29 = __OFSUB__(v46, v47);
  v45 = v46 - v47;
  if (v29)
  {
    __break(1u);
LABEL_27:
    LODWORD(v45) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v45 = v45;
  }

LABEL_30:
  v29 = __OFADD__(v45, 4);
  v48 = v45 + 4;
  if (v29)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if ((v48 & 0x8000000000000000) != 0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v48 >> 16)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v49 = &v40[v30];
  *v49 = v44;
  *(v49 + 1) = v48;
  *(v49 + 1) = 1;
  v49[8] = 0;
  if (__OFADD__(v30, 8))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v99 = v25;
  if (v31 > 1)
  {
    if (v31 != 2)
    {
      v50 = v41;
      goto LABEL_43;
    }

    v51 = v108;
    if (__OFSUB__(*(a4 + 24), *(a4 + 16)))
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v50 = v41;
  }

  else
  {
    if (!v31)
    {
      v50 = v41;
LABEL_43:
      v51 = v108;
      goto LABEL_44;
    }

    v51 = v108;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v50 = v41;
  }

LABEL_44:
  Data.copyBytes(to:count:)();
  (*(v102 + 56))(a7);
  v52 = (*(v103 + 40))(a7);
  v54 = v53;
  v55 = v106;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = v115;
  (*(AssociatedConformanceWitness + 16))(v40, &v40[v38], v115 & 1, v52, v54, v55, AssociatedConformanceWitness);
  if (v50)
  {
    (*(v107 + 8))(v51, v55);

    v58 = v99;

    swift_errorRetain();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v113 = v62;
      v116 = swift_slowAlloc();
      v117 = v116;
      *v61 = 138413314;
      swift_errorRetain();
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 4) = v63;
      *v62 = v63;
      *(v61 + 12) = 2080;
      if (v115)
      {
        v64 = 7628147;
      }

      else
      {
        v64 = 7628135;
      }

      v65 = sub_100002320(v64, 0xE300000000000000, &v117);

      *(v61 + 14) = v65;
      *(v61 + 22) = 2080;
      *(v61 + 24) = sub_100002320(v111, v58, &v117);
      *(v61 + 32) = 512;
      *(v61 + 34) = v112;
      *(v61 + 36) = 2080;
      v66 = sub_100170260(v40, &v40[v38]);
      v68 = v67;
      v69 = Data.hexString.getter(v66, v67);
      v71 = v70;
      sub_1000124C8(v66, v68);
      v72 = sub_100002320(v69, v71, &v117);

      *(v61 + 38) = v72;
      _os_log_impl(&_mh_execute_header, v59, v60, "Error %@ while sending %s %s: %hu %s", v61, 0x2Eu);
      sub_100016290(v113, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    v73 = v100;
    v74 = v101;
    goto LABEL_66;
  }

  (*(v107 + 8))(v51, v55);

  v75 = v113;
  if ((v57 & 1) == 0)
  {
    v75 = 0;
  }

  v76 = v75 + v109;
  if (__OFADD__(v75, v109))
  {
    goto LABEL_78;
  }

  v77 = v76 + 8;
  if (__OFADD__(v76, 8))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v78 = &v40[v76];
  v79 = *(v78 + 1);
  if (v79)
  {
    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v117 = v116;
      *v82 = 67109378;
      *(v82 + 4) = v79;
      *(v82 + 8) = 2080;
      v83 = sub_100170260(v40, &v40[v38]);
      v85 = v84;
      v86 = Data.hexString.getter(v83, v84);
      v88 = v87;
      sub_1000124C8(v83, v85);
      v89 = sub_100002320(v86, v88, &v117);

      *(v82 + 10) = v89;
      _os_log_impl(&_mh_execute_header, v80, v81, "Error returned in command status: %u %s", v82, 0x12u);
      sub_100002A00(v116);
    }

    v73 = v100;
    v74 = v101;
    if ((v79 & 0x80000000) == 0)
    {
      sub_10000B02C();
      swift_allocError();
      *v90 = v79;
      *(v90 + 8) = 0;
      *(v90 + 16) = 0;
LABEL_66:
      swift_willThrow();

      (*(v74 + 8))(v114, v73);
      return;
    }

    goto LABEL_84;
  }

  v91 = *(v78 + 1);
  v92 = v77 + v91;
  if (__OFADD__(v77, v91))
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v29 = __OFSUB__(v92, 4);
  v93 = v92 - 4;
  if (v29)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v38 < v93)
  {
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    v96 = os_log_type_enabled(v94, v95);
    v73 = v100;
    v74 = v101;
    if (v96)
    {
      v97 = swift_slowAlloc();
      *v97 = 67109120;
      _os_log_impl(&_mh_execute_header, v94, v95, "Error while parsing returned command: %u", v97, 8u);
    }

    sub_10000B02C();
    swift_allocError();
    *v98 = 0;
    *(v98 + 8) = 0;
    *(v98 + 16) = 2;
    goto LABEL_66;
  }

  sub_1002AAFAC(&v40[v77], v91);

  (*(v101 + 8))(v114, v100);
}

void sub_1002953E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  if (a1)
  {
    *(a1 + 2) = 112;
    *a1 = 24931;
  }

  AppleDevice.getRequest(requestType:data:on:)(0xFFFFFFFFuLL, a1, a2, 0, *(a3 + 16), *(a3 + 24));
  if (v3)
  {

    return;
  }

  if (a1)
  {
    v7 = a2 - a1 - 1;
    if (__OFSUB__(a2 - a1, 1))
    {
      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0 && v7 < a2 - a1)
    {
      *(a2 - 1) = 0;

      static String.Encoding.utf8.getter();
      String.init(cString:encoding:)();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10029550C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v30 = a6;
  v32 = a2;
  type metadata accessor for String.Encoding();
  __chkstk_darwin();
  v29[1] = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin();
  v16 = v29 - v15;
  if (a1)
  {
    *(a1 + 2) = 112;
    *a1 = 24931;
  }

  (*(v11 + 56))(a3, v11, v14);
  v17 = (*(a5 + 40))(a3, a5);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = v32;
  v22 = v31;
  (*(AssociatedConformanceWitness + 16))(a1, v32, 0, v17, v19, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v22)
  {
    (*(v13 + 8))(v16, AssociatedTypeWitness);
  }

  (*(v13 + 8))(v16, AssociatedTypeWitness);

  if (!a1)
  {
    goto LABEL_17;
  }

  v24 = v21 - a1 - 1;
  if (__OFSUB__(v21 - a1, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v24 < 0 || v24 >= v21 - a1)
  {
    goto LABEL_17;
  }

  *(v21 - 1) = 0;

  static String.Encoding.utf8.getter();
  result = String.init(cString:encoding:)();
  if (v25)
  {
    v26 = result;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0xE000000000000000;
  if (v25)
  {
    v27 = v25;
  }

  v28 = v30;
  *v30 = v26;
  v28[1] = v27;
  return result;
}

uint64_t sub_1002957D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1 == 0x7478655F747665 && a1[1] == 0xE700000000000000;
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 1;
  }

  v7 = (*(a4 + 40))(v10, a3, a4);
  *v8 |= 1uLL;
  v7(v10, 0);
  return 0;
}

uint64_t sub_1002958A4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10029E4E0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void static BroadcomDriver.parse(event:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v248.i64[0] = a4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v251 = v8;
  v252 = v9;
  __chkstk_darwin();
  v253 = &v242 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v11 = sub_100033AA8(_swiftEmptyArrayStorage);
  v12 = type metadata accessor for BinaryDecoder();
  swift_allocObject();
  v13 = BinaryDecoder.init(data:userInfo:)(a1, a2, v11);
  v14 = swift_allocObject();
  v14[5] = &type metadata for BinaryDecoder.UnkeyedContainer;
  v15 = sub_1000325F0();
  v14[6] = v15;
  v14[2] = v13;
  sub_100031694((v14 + 2), &type metadata for BinaryDecoder.UnkeyedContainer);
  v250.i64[0] = a1;
  v249.i64[0] = a2;
  sub_10000AB0C(a1, a2);
  sub_10029EBEC();

  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v245.i64[0] = a3;
  v246 = v14;
  v247 = v13;
  if ((LODWORD(v260[0]) - 100) <= 0x3B && ((1 << (LOBYTE(v260[0]) - 100)) & 0xC00000000000001) != 0)
  {
    switch(DWORD1(v260[0]))
    {
      case 5:
        LOBYTE(v260[0]) = 0;
        v25 = v246;
        v26 = sub_100299B4C(778, v247, v246);
        if ((v26 & 0xFF00000000) == 0x300000000)
        {
          v113 = 0;
        }

        else
        {
          v113 = v27;
        }

        KeyPath = swift_getKeyPath();
        v115 = swift_getKeyPath();
        v116 = sub_100037FF8();
        v117 = sub_100298EB8(v260, 778, KeyPath, v115, v25, v245.i64[0], v248.i64[0], v116);

        v118 = type metadata accessor for DriverEvent(0);
        v119.i64[0] = *&v260[0];
        v250 = v119;
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v120 = (*(*(v118 - 8) + 80) + 32) & ~*(*(v118 - 8) + 80);
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_100480F40;
        v122.i64[0] = v250.i64[0];
        v122.i64[1] = v250.i64[0];
        *&v260[0] = vqtbl1_s8(v122, 0x706050403020001);
        *(&v260[0] + 1) = v113;
        *&v260[1] = v117;
        sub_1000B2574(v260);
        goto LABEL_47;
      case 6:
        LOBYTE(v260[0]) = 0;
        v71 = v246;
        v72 = sub_100299B4C(776, v247, v246);
        if ((v72 & 0xFF00000000) == 0x300000000)
        {
          v123 = 0;
        }

        else
        {
          v123 = v73;
        }

        v124 = swift_getKeyPath();
        v125 = swift_getKeyPath();
        v126 = sub_100037FF8();
        v128 = sub_100298EB8(v260, 776, v124, v125, v71, v245.i64[0], v248.i64[0], v126);

        v129 = type metadata accessor for DriverEvent(0);
        v130 = *&v260[0];
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v120 = (*(*(v129 - 8) + 80) + 32) & ~*(*(v129 - 8) + 80);
        v121 = swift_allocObject();
        *(v121 + 16) = xmmword_100480F40;
        *&v260[0] = vext_s8(v130, v130, 6uLL);
        *(&v260[0] + 1) = v123;
        *&v260[1] = v128;
        sub_1000B2568(v260);
LABEL_47:
        memcpy((v121 + v120), v260, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v252 + 8))(v253, v251);
        goto LABEL_74;
      case 7:
        type metadata accessor for wl_nan_ev_terminated(0);
        sub_100297D88(775, v246, v55, v260);
        v95 = BYTE2(v260[0]);
        v96 = v250.i64[0];
        if ((BYTE1(v260[0]) - 1) > 3u)
        {
          v97 = 3;
        }

        else
        {
          v97 = qword_1004AC818[(BYTE1(v260[0]) - 1)];
        }

        v176 = v260[0];
        if (BYTE2(v260[0]) == 1)
        {
          sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
          v187 = *(type metadata accessor for DriverEvent(0) - 8);
          v188 = (*(v187 + 80) + 32) & ~*(v187 + 80);
          v189 = swift_allocObject();
          *(v189 + 16) = xmmword_100480F40;
          LOBYTE(v260[0]) = v176;
          *(&v260[0] + 1) = v97;
          LOBYTE(v260[1]) = 0;
          sub_1000B24F8(v260);
          memcpy((v189 + v188), v260, 0x16AuLL);
          swift_storeEnumTagMultiPayload();

          (*(v252 + 8))(v253, v251);
          goto LABEL_74;
        }

        if (BYTE2(v260[0]))
        {
          v190 = Logger.logObject.getter();
          v191 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v190, v191))
          {
            v192 = swift_slowAlloc();
            *v192 = 16777472;
            v192[4] = v95;
            _os_log_impl(&_mh_execute_header, v190, v191, "Failed to convert %hhu into service type", v192, 5u);
          }

          sub_10000B02C();
          swift_allocError();
          *v193 = xmmword_10047CE70;
          *(v193 + 16) = 2;
          swift_willThrow();

          v127 = v249.i64[0];
          goto LABEL_2;
        }

        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v177 = *(type metadata accessor for DriverEvent(0) - 8);
        v107 = (*(v177 + 80) + 32) & ~*(v177 + 80);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_100480F40;
        LOBYTE(v260[0]) = v176;
        *(&v260[0] + 1) = v97;
        LOBYTE(v260[1]) = 0;
        sub_1000B24EC(v260);
LABEL_72:
        memcpy((v108 + v107), v260, 0x16AuLL);
        goto LABEL_73;
      case 8:
        LOBYTE(v260[0]) = 0;
        v78 = v246;
        sub_100299B4C(777, v247, v246);
        v79 = v248.i64[0];
        v80 = swift_getKeyPath();
        v81 = swift_getKeyPath();
        v82 = sub_100037FF8();
        v83 = sub_100298EB8(v254, 777, v80, v81, v78, v245.i64[0], v79, v82);

        v84 = SBYTE8(v254[0]);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v85 = *(type metadata accessor for DriverEvent(0) - 8);
        v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_100480F40;
        *&v260[0] = vext_s8(*&v254[0], *&v254[0], 6uLL);
        *(&v260[0] + 1) = v84;
        *&v260[1] = v83;
        sub_1000B24E0(v260);
        memcpy((v87 + v86), v260, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v252 + 8))(v253, v251);
        goto LABEL_74;
      case 0xA:
        type metadata accessor for wl_nan_conf_status(0);
        sub_100297D88(261, v246, v88, v254);
        v89 = WORD6(v254[0]);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v90 = *(type metadata accessor for DriverEvent(0) - 8);
        v91 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_100480F40;
        LODWORD(v260[0]) = DWORD2(v254[0]);
        WORD2(v260[0]) = v89;
        sub_1000B258C(v260);
        goto LABEL_55;
      case 0x14:
        v56 = v250.i64[0];
        v57 = v249.i64[0];
        sub_10000AB0C(v250.i64[0], v249.u64[0]);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        sub_1000124C8(v56, v57);
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v260[0] = v61;
          *v60 = 136315138;
          v62 = Data.hexString.getter(v56, v57);
          v64 = sub_100002320(v62, v63, v260);

          *(v60 + 4) = v64;
          _os_log_impl(&_mh_execute_header, v58, v59, "Got DP Indication: %s", v60, 0xCu);
          sub_100002A00(v61);
        }

        sub_10029988C(v246, v245.i64[0], v248.i64[0], v260);
        v98 = BYTE1(v260[0]);
        v99 = BYTE2(v260[0]);
        v100 = *(v260 + 4);
        v250.i32[0] = BYTE8(v260[0]);
        v101 = BYTE9(v260[0]);
        v102 = v260[1];
        v103 = BYTE1(v260[1]);
        v104 = *(&v260[1] + 2);
        v105 = *(&v260[2] + 1);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v106 = *(type metadata accessor for DriverEvent(0) - 8);
        v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_100480F40;
        LOBYTE(v260[0]) = v98;
        BYTE1(v260[0]) = v99;
        BYTE2(v260[0]) = v102;
        BYTE3(v260[0]) = v103;
        *(v260 + 4) = vzip1_s32(v104, v100);
        BYTE12(v260[0]) = v250.i8[0];
        BYTE13(v260[0]) = v101;
        *&v260[1] = v105;
        sub_1000B255C(v260);
        goto LABEL_72;
      case 0x15:
        type metadata accessor for wl_nan_ev_datapath_cmn(0);
        sub_100297D88(1282, v246, v74, v260);
        v131 = LOBYTE(v260[0]);
        v132 = BYTE1(v260[0]);
        v133 = WORD4(v260[0]);
        v134 = HIWORD(v260[0]);
        v135 = type metadata accessor for DriverEvent(0);
        v136 = v131 == 1;
        v137 = DWORD1(v260[0]);
        v138 = *(v260 + 10);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v139 = (*(*(v135 - 8) + 80) + 32) & ~*(*(v135 - 8) + 80);
        v140 = swift_allocObject();
        *(v140 + 16) = xmmword_100480F40;
        LOBYTE(v260[0]) = v132;
        *(v260 + 1) = v137;
        *(v260 + 5) = v133;
        BYTE7(v260[0]) = v136;
        DWORD2(v260[0]) = v138;
        WORD6(v260[0]) = v134;
        sub_1000B2538(v260);
        memcpy((v140 + v139), v260, 0x16AuLL);
        goto LABEL_73;
      case 0x17:
        type metadata accessor for wl_nan_ev_datapath_cmn(0);
        sub_100297D88(1282, v246, v75, v260);
        v141 = LOBYTE(v260[0]);
        v142 = BYTE1(v260[0]);
        v143 = WORD4(v260[0]);
        v144 = type metadata accessor for DriverEvent(0);
        v145 = v141 == 1;
        v146 = DWORD1(v260[0]);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v147 = (*(*(v144 - 8) + 80) + 32) & ~*(*(v144 - 8) + 80);
        v148 = swift_allocObject();
        *(v148 + 16) = xmmword_100480F40;
        LOBYTE(v260[0]) = v142;
        *(v260 + 1) = v146;
        *(v260 + 5) = v143;
        BYTE7(v260[0]) = v145;
        *(&v260[0] + 1) = 2;
        LOBYTE(v260[1]) = 0;
        sub_1000B2510(v260);
        memcpy((v148 + v147), v260, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v252 + 8))(v253, v251);
        goto LABEL_74;
      case 0x18:
        LOBYTE(v260[0]) = 1;
        v93 = v246;
        v94 = sub_100299B4C(0x100000000, v247, v246);
        v243 = v165;
        v244.i64[0] = v164;
        v166 = v94;
        v167 = swift_getKeyPath();
        v168 = swift_getKeyPath();
        v169 = sub_100037FF8();
        sub_100298D48(&v256, v254, 1025, v167, v168, sub_100299E4C, 0, v93, v245.i64[0], &type metadata for IEEE80211Frame, v248.i64[0], v169);

        v183 = v256;
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v184 = *(type metadata accessor for DriverEvent(0) - 8);
        v185 = (*(v184 + 80) + 32) & ~*(v184 + 80);
        v186 = swift_allocObject();
        *(v186 + 16) = xmmword_100480F40;
        v260[0] = v254[0];
        v260[1] = v254[1];
        v260[2] = v255[0];
        *(&v260[2] + 9) = *(v255 + 9);
        *&v260[4] = v243;
        DWORD2(v260[4]) = v166;
        BYTE12(v260[4]) = BYTE4(v166);
        BYTE13(v260[4]) = BYTE5(v166);
        *&v260[5] = v244.i64[0];
        *(&v260[5] + 1) = v183;
        sub_1000B24C8(v260);
        memcpy((v186 + v185), v260, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v252 + 8))(v253, v251);
        goto LABEL_74;
      case 0x19:
        sub_10029988C(v246, v245.i64[0], v248.i64[0], v260);
        v248 = *(v260 + 1);
        v244 = *(v260 + 6);
        v245 = *(v260 + 4);
        v250 = *(v260 + 10);
        v249 = vmovl_u8(__PAIR64__(*(v260 + 14), *(&v260[1] + 2)));
        v161 = *(&v260[2] + 1);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v162 = *(type metadata accessor for DriverEvent(0) - 8);
        v91 = (*(v162 + 80) + 32) & ~*(v162 + 80);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_100480F40;
        *&v163 = vzip1q_s32(vzip1q_s16(v248, v245), v244).u64[0];
        *(&v163 + 1) = v250.i64[0];
        v260[0] = v163;
        LODWORD(v260[1]) = vuzp1_s8(*v249.i8, *v249.i8).u32[0];
        *(&v260[1] + 1) = v161;
        sub_1000B2550(v260);
LABEL_55:
        memcpy((v92 + v91), v260, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v252 + 8))(v253, v251);
        goto LABEL_74;
      case 0x1A:
        sub_10029988C(v246, v245.i64[0], v248.i64[0], v260);
        v34 = BYTE1(v260[0]);
        v250.i32[0] = BYTE4(v260[0]);
        v35 = BYTE5(v260[0]);
        v36 = *(v260 + 6);
        v37 = *&v260[1];
        v38 = BYTE4(v260[1]);
        v39 = BYTE5(v260[1]);
        v40 = BYTE6(v260[1]);
        v41 = *(&v260[2] + 1);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v42 = *(type metadata accessor for DriverEvent(0) - 8);
        v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_100480F40;
        v45 = v40 == 1;
        LOBYTE(v260[0]) = v34;
        if (v40 == 2)
        {
          v45 = 2;
        }

        BYTE1(v260[0]) = v45;
        BYTE2(v260[0]) = v250.i8[0];
        BYTE3(v260[0]) = v35;
        *(v260 + 4) = vzip1_s32(v36, v37);
        BYTE12(v260[0]) = v38;
        BYTE13(v260[0]) = v39;
        *&v260[1] = v41;
        sub_1000B2544(v260);
        memcpy((v44 + v43), v260, 0x16AuLL);
        goto LABEL_73;
      case 0x1F:
        LODWORD(v254[0]) = 308;
        v65 = swift_getKeyPath();
        type metadata accessor for wl_nan_cmd_xtlv_id(0);
        v67 = v66;
        v68 = sub_10029EFDC(&qword_100593930, type metadata accessor for wl_nan_cmd_xtlv_id, byte_10047F3F4);
        v69 = sub_100037FF8();
        v70 = sub_10003A734();
        v109 = sub_1002992D4(v260, v254, v65, v246, v245.i64[0], v67, v248.i64[0], v68, v69, v70);

        v110 = v260[0];
        v111 = BYTE4(v260[0]);
        v96 = v250.i64[0];
        if (LOBYTE(v260[0]) == 1)
        {
          goto LABEL_80;
        }

        if (LOBYTE(v260[0]))
        {
          if (BYTE1(v260[0]) != 1)
          {
            goto LABEL_90;
          }

LABEL_80:
          v112 = 0;
        }

        else
        {
          v112 = BYTE1(v260[0]) - 1;
          if ((BYTE1(v260[0]) - 1) >= 4u)
          {
LABEL_90:
            v208 = BYTE1(v260[0]);

            v209 = Logger.logObject.getter();
            v210 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v209, v210))
            {
              v211 = swift_slowAlloc();
              v212 = swift_slowAlloc();
              *&v260[0] = v212;
              *v211 = 16777986;
              *(v211 + 4) = v110;
              *(v211 + 5) = 256;
              *(v211 + 7) = v208;
              *(v211 + 8) = 2080;
              *(v211 + 10) = sub_100002320(0xD000000000000019, 0x80000001004BDAC0, v260);
              _os_log_impl(&_mh_execute_header, v209, v210, "Failed to convert status: %hhu, reason: %hhu into %s", v211, 0x12u);
              sub_100002A00(v212);
            }

            v127 = v249.i64[0];
            sub_10000B02C();
            swift_allocError();
            *v213 = xmmword_10047CE70;
            *(v213 + 16) = 2;
            swift_willThrow();

LABEL_2:
            sub_10000AB0C(v96, v127);
            swift_errorRetain();
            v16 = Logger.logObject.getter();
            v17 = static os_log_type_t.error.getter();
            sub_1000124C8(v96, v127);

            if (os_log_type_enabled(v16, v17))
            {
              v18 = swift_slowAlloc();
              v19 = swift_slowAlloc();
              v20 = swift_slowAlloc();
              *&v260[0] = v20;
              *v18 = 136315394;
              v21 = Data.hexString.getter(v96, v127);
              v23 = sub_100002320(v21, v22, v260);

              *(v18 + 4) = v23;
              *(v18 + 12) = 2112;
              swift_errorRetain();
              v24 = _swift_stdlib_bridgeErrorToNSError();
              *(v18 + 14) = v24;
              *v19 = v24;
              _os_log_impl(&_mh_execute_header, v16, v17, "Failed to parse event %s: %@", v18, 0x16u);
              sub_100016290(v19, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v20);
            }

            (*(v252 + 8))(v253, v251);
            return;
          }
        }

        v244.i64[0] = v12;
        v250.i32[0] = v112;
        v194 = *(v109 + 16);
        v195 = (v109 + 32);
        v196 = v194 + 1;
        v197 = (v109 + 32);
        while (--v196)
        {
          v198 = v197 + 12;
          v199 = *v197;
          v197 += 12;
          if (v199 == 1284)
          {
            v200 = *(v198 - 2);
            v201 = *(v198 - 1);
            sub_10000AB0C(v200, v201);
            sub_1002A9A10(v200, v201, v260);

            sub_1000124C8(v200, v201);
            v214 = v260[0];
            v4.i32[0] = *(v260 + 2);
            v215 = BYTE6(v260[0]);
            v216 = BYTE7(v260[0]);
            v217 = sub_10029EC40(v111);
            if (v217 != 15)
            {
              v232 = v217;
              v249 = vmovl_u8(v4);
              sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
              v233 = *(type metadata accessor for DriverEvent(0) - 8);
              v234 = (*(v233 + 80) + 32) & ~*(v233 + 80);
              v235 = swift_allocObject();
              *(v235 + 16) = xmmword_100480F40;
              LOBYTE(v260[0]) = v214;
              *(v260 + 1) = vuzp1_s8(*v249.i8, *v249.i8).u32[0];
              BYTE5(v260[0]) = v215;
              BYTE6(v260[0]) = v216;
              BYTE7(v260[0]) = v232;
              BYTE8(v260[0]) = v250.i8[0];
              sub_10029EC64(v260);
              memcpy((v235 + v234), v260, 0x16AuLL);
              goto LABEL_73;
            }

            v218 = Logger.logObject.getter();
            v219 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v218, v219))
            {
              v220 = swift_slowAlloc();
              *v220 = 16777472;
              v220[4] = v111;
              _os_log_impl(&_mh_execute_header, v218, v219, "Failed to convert %hhu into a management frame type", v220, 5u);
            }

            goto LABEL_10;
          }
        }

        v202 = -1;
        v203 = (v109 + 32);
        while (1)
        {
          if (v202 - v194 == -1)
          {
LABEL_101:

            (*(v252 + 8))(v253, v251);
            goto LABEL_74;
          }

          if (++v202 >= *(v109 + 16))
          {
            break;
          }

          v204 = v203 + 12;
          v205 = *v203;
          v203 += 12;
          if (v205 == 779)
          {
            v206 = *(v204 - 2);
            v207 = *(v204 - 1);
            sub_10000AB0C(v206, v207);
            v221 = sub_1000285B8(v206, v207);
            sub_1000124C8(v206, v207);
            v222 = -1;
            do
            {
              if (v222 - v194 == -1)
              {
                goto LABEL_101;
              }

              if (++v222 >= *(v109 + 16))
              {
                goto LABEL_104;
              }

              v223 = v195 + 12;
              v224 = *v195;
              v195 += 12;
            }

            while (v224 != 787);
            v225 = *(v223 - 2);
            v226 = *(v223 - 1);
            sub_10000AB0C(v225, v226);

            sub_10000AB0C(v225, v226);
            v227 = sub_100033AA8(_swiftEmptyArrayStorage);
            v228 = v244.i64[0];
            swift_allocObject();
            v229 = BinaryDecoder.init(data:userInfo:)(v225, v226, v227);
            *(&v254[1] + 1) = &type metadata for BinaryDecoder.UnkeyedContainer;
            *&v255[0] = v15;
            *&v254[0] = v229;
            v230 = *sub_100031694(v254, &type metadata for BinaryDecoder.UnkeyedContainer);
            v258 = v228;
            v259 = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
            v256 = v230;

            v231 = sub_1000380FC(&v256);
            v249.i64[0] = v231 >> 40;
            v248.i64[0] = HIDWORD(v231);
            v245.i64[0] = v231 >> 24;
            v236 = v231 >> 16;
            v237 = v231 >> 8;
            v238 = v231;
            sub_100002A00(v254);
            sub_1000124C8(v225, v226);
            sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
            v239 = *(type metadata accessor for DriverEvent(0) - 8);
            v240 = (*(v239 + 80) + 32) & ~*(v239 + 80);
            v241 = swift_allocObject();
            *(v241 + 16) = xmmword_100480F40;
            LOWORD(v260[0]) = v221;
            BYTE2(v260[0]) = v238;
            BYTE3(v260[0]) = v237;
            BYTE4(v260[0]) = v236;
            BYTE5(v260[0]) = v245.i8[0];
            BYTE6(v260[0]) = v248.i8[0];
            BYTE7(v260[0]) = v249.i8[0];
            BYTE8(v260[0]) = v250.i8[0];
            sub_1000B24D4(v260);
            memcpy((v241 + v240), v260, 0x16AuLL);
LABEL_73:
            swift_storeEnumTagMultiPayload();

            (*(v252 + 8))(v253, v251);
            goto LABEL_74;
          }
        }

        __break(1u);
LABEL_104:
        __break(1u);
        break;
      case 0x29:
        type metadata accessor for wl_nan_ev_datapath_cmn(0);
        sub_100297D88(1282, v246, v46, v260);
        if (BYTE6(v260[1]) == 6)
        {
          v48 = LOBYTE(v260[0]);
          v49 = BYTE1(v260[0]);
          v47.i32[0] = DWORD1(v260[0]);
          v250 = vmovl_u8(v47);
          v50 = BYTE8(v260[0]);
          v51 = BYTE9(v260[0]);
          sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
          v52 = *(type metadata accessor for DriverEvent(0) - 8);
          v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v54 = swift_allocObject();
          *(v54 + 16) = xmmword_100480F40;
          LOBYTE(v260[0]) = v49;
          *(v260 + 1) = vuzp1_s8(*v250.i8, *v250.i8).u32[0];
          BYTE5(v260[0]) = v50;
          BYTE6(v260[0]) = v51;
          BYTE7(v260[0]) = v48 == 1;
          *(&v260[0] + 1) = 1;
          LOBYTE(v260[1]) = 0;
          sub_1000B2510(v260);
          memcpy((v54 + v53), v260, 0x16AuLL);
          swift_storeEnumTagMultiPayload();
        }

        (*(v252 + 8))(v253, v251);
        goto LABEL_74;
      case 0x2C:
        type metadata accessor for wl_nan_host_assist_req(0);
        sub_100297D88(1538, v246, v28, v260);
        v29 = *&v260[0];
        v30.i32[0] = DWORD2(v260[0]);
        v250 = vmovl_u8(v30);
        v31 = BYTE12(v260[0]);
        v32 = HIBYTE(v260[0]);
        if ((BYTE13(v260[0]) - 1) > 0xFu)
        {
          v33 = 15;
        }

        else
        {
          v33 = byte_1004AC260[(BYTE13(v260[0]) - 1)];
        }

        if (BYTE14(v260[0]) == 9)
        {
          v170 = 8;
        }

        else
        {
          v170 = 9;
        }

        if (BYTE14(v260[0]) == 8)
        {
          v171 = 7;
        }

        else
        {
          v171 = v170;
        }

        if (BYTE14(v260[0]) - 1 >= 7)
        {
          v172 = v171;
        }

        else
        {
          v172 = BYTE14(v260[0]) - 1;
        }

        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v173 = *(type metadata accessor for DriverEvent(0) - 8);
        v174 = (*(v173 + 80) + 32) & ~*(v173 + 80);
        v175 = swift_allocObject();
        *(v175 + 16) = xmmword_100480F40;
        LOBYTE(v260[0]) = v31;
        BYTE1(v260[0]) = v32;
        *(v260 + 2) = v29;
        *(v260 + 10) = vuzp1_s8(*v250.i8, *v250.i8).u32[0];
        BYTE14(v260[0]) = v33;
        HIBYTE(v260[0]) = v172;
        sub_1000B2504(v260);
        memcpy((v175 + v174), v260, 0x16AuLL);
        goto LABEL_73;
      case 0x2F:
        type metadata accessor for wl_nan_event_oob_af_txs(0);
        sub_100297D88(2051, v246, v76, v260);
        v149 = WORD1(v260[0]);
        if (LOBYTE(v260[0]) <= 5uLL)
        {
          v150 = 0x40302010005uLL >> (8 * LOBYTE(v260[0]));
        }

        else
        {
          v150 = 5;
        }

        if (BYTE1(v260[0]) <= 3u)
        {
          v151 = 0x2010003u >> (8 * BYTE1(v260[0]));
        }

        else
        {
          v151 = 3;
        }

        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v152 = *(type metadata accessor for DriverEvent(0) - 8);
        v153 = (*(v152 + 80) + 32) & ~*(v152 + 80);
        v154 = swift_allocObject();
        *(v154 + 16) = xmmword_100480F40;
        LOWORD(v260[0]) = v149;
        BYTE2(v260[0]) = v150;
        BYTE3(v260[0]) = v151;
        sub_1000B24BC(v260);
        memcpy((v154 + v153), v260, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v252 + 8))(v253, v251);
        goto LABEL_74;
      case 0x30:
        LOBYTE(v260[0]) = 0;
        v77 = v246;
        sub_100299B4C(2051, v247, v246);
        v261[0] = 2051;
        v155 = swift_getKeyPath();
        type metadata accessor for wl_nan_tlv(0);
        v157 = v156;
        v158 = sub_10029EFDC(&qword_100593928, type metadata accessor for wl_nan_tlv, byte_10047F42C);
        v159 = sub_100037FF8();
        v160 = sub_10003A734();
        sub_100297F40(&v256, v254, v261, v155, 20, sub_100299F90, 0, v77, v245.i64[0], v157, &type metadata for IEEE80211Frame.Management.ActionFrame, v248.i64[0], v158, v159, v160);

        v178 = LOBYTE(v254[0]);
        v250 = *(v254 + 8);
        v179 = *(&v254[1] + 1);
        sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
        v180 = *(type metadata accessor for DriverEvent(0) - 8);
        v181 = (*(v180 + 80) + 32) & ~*(v180 + 80);
        v182 = swift_allocObject();
        *(v182 + 16) = xmmword_100480F40;
        *&v260[0] = v256;
        DWORD2(v260[0]) = v257;
        *(&v260[1] + 8) = v250;
        *&v260[1] = v178;
        *(&v260[2] + 1) = v179;
        LOBYTE(v260[3]) = 2;
        sub_1000B24B0(v260);
        memcpy((v182 + v181), v260, 0x16AuLL);
        swift_storeEnumTagMultiPayload();

        (*(v252 + 8))(v253, v251);
        goto LABEL_74;
      default:
        goto LABEL_9;
    }
  }

  else
  {
LABEL_9:

LABEL_10:
    (*(v252 + 8))(v253, v251);
LABEL_74:
  }
}

uint64_t sub_100297D88@<X0>(int a1@<W0>, uint64_t a3@<X2>, uint64_t a5@<X4>, unint64_t x8_0@<X8>)
{
  v10 = sub_10005DC58(&qword_10058D5F0, &qword_100487160);
  swift_beginAccess();
  sub_100031694(a3 + 16, *(a3 + 40));
  sub_10000CADC(&qword_100593AF0, &qword_10058D5F0, &qword_100487160, protocol conformance descriptor for TypeLengthValue<A, B>);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (!v6)
  {
    if (v14 == a1)
    {
      v12 = sub_10000CADC(&qword_100593AF8, &qword_10058D5F0, &qword_100487160, protocol conformance descriptor for TypeLengthValue<A, B>);
      LengthValueHelper.load<A>(_:)(v10, a5, v12, x8_0);
    }

    else
    {
      sub_10000B02C();
      swift_allocError();
      *v13 = xmmword_10047CE70;
      *(v13 + 16) = 2;
      swift_willThrow();
    }

    return sub_1000124C8(v15, v16);
  }

  return result;
}

uint64_t sub_100297F40(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(unint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v98 = a7;
  v97 = a6;
  v104 = a5;
  v117 = a3;
  v95 = a2;
  v102 = a1;
  v99 = a4;
  v16 = *a4;
  v110 = *(a14 + 8);
  v17 = (v16 + class metadata base offset for KeyPath);
  v18 = *(v16 + class metadata base offset for KeyPath + 8);
  v94 = *(*(v110 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v92 = &v89[-v19];
  v100 = v18;
  v103 = *(v18 - 8);
  __chkstk_darwin();
  v101 = &v89[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v105 = &v89[-v21];
  v108 = *v17;
  v96 = *(v108 - 8);
  v109 = *(v96 + 64);
  __chkstk_darwin();
  v111 = &v89[-v22];
  v113 = *(a15 + 8);
  v23 = *(*(v113 + 24) + 16);
  v114 = a13;
  v116 = a10;
  swift_getAssociatedTypeWitness();
  v112 = v23;
  v107 = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v106 = &v89[-v24];
  v25 = swift_checkMetadataState();
  v115 = *(v25 - 8);
  __chkstk_darwin();
  v27 = &v89[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v29 = &v89[-v28];
  sub_10005DC58(&qword_10058D5F0, &qword_100487160);
  swift_beginAccess();
  sub_100031694(a8 + 16, *(a8 + 40));
  sub_10000CADC(&qword_100593AF0, &qword_10058D5F0, &qword_100487160, protocol conformance descriptor for TypeLengthValue<A, B>);
  v30 = v121;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v31 = v30;
  if (v30)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  v90 = v118;
  v121 = v119;
  v91 = v120;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v117 = v29;
  v34 = dispatch thunk of BinaryInteger.bitWidth.getter();
  v35 = v25;
  if (v33)
  {
    if (v34 > 16)
    {
      LOWORD(v118) = v90;
      sub_100119DCC();
      v36 = v27;
      goto LABEL_8;
    }

    v116 = 0;
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v41 = v25;
    v42 = v117;
    v43 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v31 = *(v115 + 8);
    v31(v27, v25);
    if ((v43 & 1) == 0)
    {
      goto LABEL_22;
    }

    v44 = dispatch thunk of BinaryInteger._lowWord.getter();
    result = v31(v42, v25);
    v45 = v90 == v44;
    v31 = v116;
LABEL_13:
    v40 = v91;
    if (!v45)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  if (v34 < 17)
  {
    v46 = v117;
    v47 = dispatch thunk of BinaryInteger._lowWord.getter();
    result = (*(v115 + 8))(v46, v25);
    v45 = v90 == v47;
    goto LABEL_13;
  }

  v36 = v27;
  LOWORD(v118) = v90;
  sub_100119DCC();
LABEL_8:
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v37 = v117;
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v115 + 8);
  v39(v36, v35);
  result = (v39)(v37, v35);
  v40 = v91;
  if ((v38 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v42 = v40;
  v48 = v40 >> 62;
  if ((v40 >> 62) <= 1)
  {
    v50 = v108;
    v49 = v109;
    if (!v48)
    {
      v51 = BYTE6(v40);
      goto LABEL_32;
    }

    v52 = v121;
    LODWORD(v56) = HIDWORD(v121) - v121;
    v57 = v111;
    if (__OFSUB__(HIDWORD(v121), v121))
    {
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v56 = v56;
LABEL_26:
    if ((v56 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v56 >> 16))
    {
      if (v56 >= v49)
      {
        goto LABEL_33;
      }

LABEL_29:
      sub_10000B02C();
      swift_allocError();
      *v59 = 0;
      *(v59 + 8) = 0;
      *(v59 + 16) = 2;
      swift_willThrow();
      v60 = v52;
      return sub_1000124C8(v60, v42);
    }

    __break(1u);
    goto LABEL_91;
  }

  v50 = v108;
  v49 = v109;
  if (v48 == 2)
  {
    v52 = v121;
    v54 = *(v121 + 16);
    v53 = *(v121 + 24);
    v55 = __OFSUB__(v53, v54);
    v56 = v53 - v54;
    v41 = v110;
    v57 = v111;
    if (!v55)
    {
      goto LABEL_26;
    }

    __break(1u);
LABEL_22:
    v31(v42, v41);
    v40 = v91;
LABEL_23:
    sub_10000B02C();
    swift_allocError();
    *v58 = xmmword_10047CE70;
    *(v58 + 16) = 2;
    swift_willThrow();
    return sub_1000124C8(v121, v40);
  }

  v51 = 0;
LABEL_32:
  v57 = v111;
  v52 = v121;
  if (v51 < v49)
  {
    goto LABEL_29;
  }

LABEL_33:
  sub_10000AB0C(v52, v40);
  Data.load<A>(as:)(v52, v40, v50, v57);
  v116 = v31;
  if (v31)
  {
    sub_1000124C8(v52, v40);
    return sub_1000124C8(v52, v40);
  }

  v61 = v105;
  swift_getAtKeyPath();
  v62 = v100;
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_49;
  }

  v118 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v61 = v105;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      sub_100086E78();
      v63 = v101;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      goto LABEL_43;
    }

LABEL_48:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_49;
  }

  v64 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v65 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v64 & 1) == 0)
  {
    v61 = v105;
    if (v65 >= 64)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if (v65 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v67 = v101;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v61 = v105;
    v68 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v103 + 8))(v67, v62);
    if (v68)
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      return result;
    }

    goto LABEL_48;
  }

  sub_100086E78();
  v63 = v101;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v61 = v105;
LABEL_43:
  v66 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v103 + 8))(v63, v62);
  if (v66)
  {
    goto LABEL_97;
  }

LABEL_49:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v118 = 0x7FFFFFFFFFFFFFFFLL;
    v69 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v70 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v69)
    {
      v71 = v70 < 65;
    }

    else
    {
      v71 = v70 < 64;
    }

    if (!v71)
    {
      sub_100086E78();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v61 = v105;
      v72 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v103 + 8))(v101, v62);
      if ((v72 & 1) == 0)
      {
        goto LABEL_60;
      }

      __break(1u);
    }

    v61 = v105;
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_60:
  v73 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (*(v103 + 8))(v61, v62);
  v55 = __OFADD__(v104, v73);
  v74 = v104 + v73;
  if (v55)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = v102;
  v75 = v97;
  if (v48 <= 1)
  {
    v76 = v96;
    if (!v48)
    {
      v77 = BYTE6(v42);
      goto LABEL_74;
    }

    goto LABEL_68;
  }

  v76 = v96;
  if (v48 != 2)
  {
    goto LABEL_73;
  }

  v79 = *(v121 + 16);
  v78 = *(v121 + 24);
  v55 = __OFSUB__(v78, v79);
  v77 = v78 - v79;
  if (v55)
  {
    __break(1u);
LABEL_68:
    LODWORD(v77) = HIDWORD(v121) - v121;
    if (__OFSUB__(HIDWORD(v121), v121))
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v77 = v77;
  }

  if (v77 < 0)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (!(v77 >> 16))
  {
    goto LABEL_74;
  }

  __break(1u);
LABEL_73:
  v77 = 0;
LABEL_74:
  if (v77 < v74)
  {
    sub_10000B02C();
    swift_allocError();
    *v80 = 0;
    *(v80 + 8) = 0;
    *(v80 + 16) = 2;
    swift_willThrow();
    v81 = v121;
    sub_1000124C8(v121, v42);
    sub_1000124C8(v81, v42);
    return (*(v76 + 8))(v57, v50);
  }

  (*(v76 + 16))(result, v57, v50);
  v82 = 0;
  if (v48 <= 1)
  {
    result = v104;
    if (!v48)
    {
      goto LABEL_83;
    }

    v82 = v121;
    result = v121 + v104;
    if (!__OFADD__(v121, v104))
    {
      goto LABEL_83;
    }

    __break(1u);
  }

  result = v104;
  if (v48 == 2)
  {
    v82 = *(v121 + 16);
    result = v82 + v104;
    if (__OFADD__(v82, v104))
    {
      goto LABEL_98;
    }
  }

LABEL_83:
  if (__OFADD__(v82, v74))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v82 + v74 < result)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v83 = v121;
  v84 = Data._Representation.subscript.getter();
  v86 = v85;
  v87 = v116;
  v75();
  if (!v87)
  {
    (*(v76 + 8))(v57, v50);
    sub_1000124C8(v84, v86);
    sub_1000124C8(v83, v42);
    v60 = v83;
    return sub_1000124C8(v60, v42);
  }

  sub_1000124C8(v84, v86);
  sub_1000124C8(v83, v42);
  sub_1000124C8(v83, v42);
  v88 = *(v76 + 8);
  v88(v102, v50);
  return (v88)(v57, v50);
}

uint64_t sub_100298D48(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v20)
  {
    sub_10000B02C();
    swift_allocError();
    *v21 = xmmword_10047CE70;
    *(v21 + 16) = 2;
    return swift_willThrow();
  }

  else
  {
    v23 = v19;
    LODWORD(v28) = a3;
    type metadata accessor for wl_nan_tlv(0);
    v27 = v24;
    v25 = sub_10029EFDC(&qword_100593928, type metadata accessor for wl_nan_tlv, byte_10047F42C);
    v26 = sub_10003A734();
    return sub_100297F40(a1, a2, &v28, a4, v23, a6, a7, a8, a9, v27, a10, a11, v25, a12, v26);
  }
}

uint64_t sub_100298EB8(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
  result = sub_100298D48(a1, &v19, a2, a3, a4, sub_100298F80, 0, a5, a6, v17, a7, a8);
  if (!v8)
  {
    return v19;
  }

  return result;
}

void sub_100298F80(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v28 = *(type metadata accessor for NANAttribute(0) - 8);
  __chkstk_darwin();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100033AA8(_swiftEmptyArrayStorage);
  v11 = type metadata accessor for BinaryDecoder();
  v12 = swift_allocObject();
  v13 = 0;
  v12[5] = &_swiftEmptyDictionarySingleton;
  v12[2] = a1;
  v12[3] = a2;
  v14 = a2 >> 62;
  v29 = a3;
  if ((a2 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v13 = *(a1 + 16);
    }
  }

  else if (v14)
  {
    v13 = a1;
  }

  v12[4] = v13;
  swift_beginAccess();
  v12[5] = v10;
  v16 = v12[2];
  v15 = v12[3];
  sub_10000AB0C(a1, a2);
  v17 = v15 >> 62;
  v31 = v16 >> 32;
  v32 = v16;
  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    while (1)
    {
      v18 = v12[4];
      if (v17 <= 1)
      {
        v19 = BYTE6(v15);
        if (v17)
        {
          v19 = v31;
        }

LABEL_12:
        if (v18 >= v19)
        {
          goto LABEL_25;
        }

        goto LABEL_15;
      }

      if (v17 == 2)
      {
        v19 = *(v32 + 24);
        goto LABEL_12;
      }

      if ((v18 & 0x8000000000000000) == 0)
      {
LABEL_25:

        *v29 = v30;
        return;
      }

LABEL_15:
      v35 = v11;
      v36 = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      v33[0] = v12;

      NANAttribute.init(from:)(v33, v9);
      if (v4)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10011640C(0, v30[2] + 1, 1, v30);
      }

      v21 = v30[2];
      v20 = v30[3];
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v26 = v30[2];
        v27 = v21 + 1;
        v24 = sub_10011640C((v20 > 1), v21 + 1, 1, v30);
        v21 = v26;
        v22 = v27;
        v30 = v24;
      }

      v23 = v30;
      v30[2] = v22;
      sub_10029F21C(v9, v23 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21);
    }

    v37 = v4;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_27;
    }

    if (v34 != 2)
    {
      break;
    }

    if ((v33[0] & 1) == 0)
    {
      goto LABEL_27;
    }

    v4 = 0;
  }

  sub_1000B2594(v33[0], v33[1], v34);
LABEL_27:
}

uint64_t sub_1002992D4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(unint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = sub_1002993B0(a3);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v18 = result;
    v19 = sub_10005DC58(&qword_100593AE0, &qword_1004AC7E0);
    result = sub_100297F40(a1, &v23, a2, a3, v18, sub_100299438, 0, a4, a5, a6, v19, a7, a8, a9, a10);
    if (!v22)
    {
      return v23;
    }
  }

  return result;
}

uint64_t sub_1002993B0(uint64_t *a1)
{
  v1 = *a1;
  result = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if ((v3 & 1) == 0)
  {
    v4 = *(*(*(v1 + class metadata base offset for KeyPath + 8) - 8) + 64);
    v5 = __OFADD__(result, v4);
    result += v4;
    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100299438(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  sub_10005DC58(&qword_100593AE8, &qword_1004AC7E8);
  v8 = (sub_10005DC58(&qword_10058BA70, &qword_1004AC7F0) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100480F40;
  v11 = v10 + v9;
  v12 = v11 + v8[14];
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for CodingUserInfoKey();
  v14 = sub_100037644(v13, static CodingUserInfoKey.fourByteAlignedValue);
  (*(*(v13 - 8) + 16))(v11, v14, v13);
  *(v12 + 24) = &type metadata for Bool;
  *v12 = 1;
  v15 = sub_100033AA8(v10);
  swift_setDeallocating();
  sub_100016290(v11, &qword_10058BA70, &qword_1004AC7F0);
  swift_deallocClassInstance();
  v16 = type metadata accessor for BinaryDecoder();
  v17 = swift_allocObject();
  v18 = 0;
  v17[5] = &_swiftEmptyDictionarySingleton;
  v17[2] = a1;
  v17[3] = a2;
  v19 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v18 = *(a1 + 16);
    }
  }

  else if (v19)
  {
    v18 = a1;
  }

  v17[4] = v18;
  swift_beginAccess();
  v17[5] = v15;
  v21 = v17[2];
  v20 = v17[3];
  sub_10000AB0C(a1, a2);
  v22 = v20 >> 62;
  v42 = v21;
  v36 = _swiftEmptyArrayStorage;
  v23 = BYTE6(v20);
  while (1)
  {
    while (1)
    {
      v24 = v17[4];
      if (v22 <= 1)
      {
        v25 = v23;
        if (v22)
        {
          v25 = v21 >> 32;
        }

LABEL_14:
        if (v24 >= v25)
        {
          goto LABEL_27;
        }

        goto LABEL_17;
      }

      if (v22 == 2)
      {
        v25 = *(v42 + 24);
        goto LABEL_14;
      }

      if ((v24 & 0x8000000000000000) == 0)
      {
LABEL_27:

        *a3 = v36;
        return;
      }

LABEL_17:
      v39 = v16;
      v40 = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
      v37[0] = v17;

      sub_100264EC4(v37, v41);
      if (v4)
      {
        break;
      }

      v35 = v41[0];
      v33 = v41[2];
      v34 = v41[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_10011802C(0, v36[2] + 1, 1, v36);
      }

      v27 = v36[2];
      v26 = v36[3];
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        v31 = v36[2];
        v32 = v27 + 1;
        v30 = sub_10011802C((v26 > 1), v27 + 1, 1, v36);
        v27 = v31;
        v28 = v32;
        v36 = v30;
      }

      v36[2] = v28;
      v29 = &v36[3 * v27];
      *(v29 + 16) = v35;
      v29[5] = v34;
      v29[6] = v33;
    }

    v41[0] = v4;
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v38 != 2)
    {
      break;
    }

    if ((v37[0] & 1) == 0)
    {
      goto LABEL_29;
    }

    v4 = 0;
  }

  sub_1000B2594(v37[0], v37[1], v38);
LABEL_29:
}

void sub_10029988C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LODWORD(v44) = 1282;
  KeyPath = swift_getKeyPath();
  type metadata accessor for wl_nan_tlv(0);
  v11 = v10;
  v12 = sub_10029EFDC(&qword_100593928, type metadata accessor for wl_nan_tlv, byte_10047F42C);
  v13 = sub_100037FF8();
  v14 = sub_10003A734();
  v15 = sub_1002992D4(v39, &v44, KeyPath, a1, a2, v11, a3, v12, v13, v14);

  if (!v4)
  {
    v36 = v39[1];
    v37 = v39[0];
    v16 = v40;
    v17 = v41;
    v18 = v42;
    v19 = (v15 + 32);
    v20 = *(v15 + 16) + 1;
    do
    {
      if (!--v20)
      {

        v30 = _swiftEmptyArrayStorage;
        goto LABEL_16;
      }

      v21 = v19 + 12;
      v22 = *v19;
      v19 += 12;
    }

    while (v22 != 774);
    v43 = v40;
    v24 = *(v21 - 2);
    v23 = *(v21 - 1);
    sub_10000AB0C(v24, v23);

    v25 = sub_100033AA8(_swiftEmptyArrayStorage);
    v26 = type metadata accessor for BinaryDecoder();
    v27 = swift_allocObject();
    v27[5] = &_swiftEmptyDictionarySingleton;
    v27[2] = v24;
    v27[3] = v23;
    v28 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      v29 = 0;
      if (v28 == 2)
      {
        v29 = *(v24 + 16);
      }
    }

    else
    {
      v29 = v24;
      if (!v28)
      {
        v29 = 0;
      }
    }

    v27[4] = v29;
    swift_beginAccess();
    v27[5] = v25;
    v38[3] = v26;
    v38[4] = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
    v38[0] = v27;
    sub_10000AB0C(v24, v23);
    sub_10003132C(v38);
    if ((v31 & 0xC0000000) != 0)
    {
      sub_100048C4C(v31, v32, v33);
      sub_1000124C8(v24, v23);
      v30 = _swiftEmptyArrayStorage;
    }

    else
    {
      v34 = v23;
      v35 = v32;
      sub_1000124C8(v24, v34);
      v30 = v35;
    }

    v16 = v43;
LABEL_16:
    *a4 = v37;
    *(a4 + 16) = v36;
    *(a4 + 32) = v16;
    *(a4 + 33) = v17;
    *(a4 + 34) = v18;
    *(a4 + 40) = v30;
  }
}

uint64_t sub_100299B4C(uint64_t a1, void *a2, uint64_t a3)
{
  result = a2[4];
  v7 = result + 2;
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_27;
  }

  v9 = a2[2];
  v8 = a2[3];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      if (*(v9 + 24) >= v7)
      {
        goto LABEL_7;
      }
    }

    else if (v7 < 1)
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v18 = 0;
    *(v18 + 8) = 0;
LABEL_15:
    *(v18 + 16) = 2;
    return swift_willThrow();
  }

  if (v10)
  {
    v11 = v9 >> 32;
  }

  else
  {
    v11 = BYTE6(v8);
  }

  if (v11 < v7)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v7 < result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v12 = a1;
  v14 = Data._Representation.subscript.getter();
  v16 = v15;
  v17 = sub_100037568(v14, v15);
  if (v3)
  {
    return sub_1000124C8(v14, v16);
  }

  v19 = v17;
  result = sub_1000124C8(v14, v16);
  if ((v12 & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  if ((v12 & 0xFFFF0000) == 0)
  {
    if (v19 == v12)
    {
LABEL_24:
      sub_10000B02C();
      swift_allocError();
      *v18 = xmmword_10047CE70;
      goto LABEL_15;
    }

LABEL_19:
    v20 = bswap32(v19) >> 16;
    if (v20 == 1)
    {
      swift_beginAccess();
      v27 = *(a3 + 40);
      v28 = *(a3 + 48);
      sub_100031694(a3 + 16, v27);
      v29 = UnkeyedDecodingContainer.decodeData(with:)(16, v27, v28);
      v31 = v30;
      swift_endAccess();
      v32 = sub_1002A97D0(v29, v31);
      sub_1000124C8(v29, v31);
      v26 = sub_10003B238(bswap32(v32));
      if ((v26 & 0xFF00000000) != 0x300000000)
      {
        return v26 & 0xFFFFFFFFFFFFLL;
      }
    }

    else if (v20 == 2)
    {
      swift_beginAccess();
      v21 = *(a3 + 40);
      v22 = *(a3 + 48);
      sub_100031694(a3 + 16, v21);
      v23 = UnkeyedDecodingContainer.decodeData(with:)(24, v21, v22);
      v25 = v24;
      swift_endAccess();
      sub_1002A6510(v23, v25, v33);
      sub_1000124C8(v23, v25);
      v26 = sub_10003B238(bswap32(v34) >> 16);
      if ((v26 & 0xFF00000000) != 0x300000000)
      {
        return v26 & 0xFFFFFFFFFFFFLL;
      }
    }

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

double sub_100299E4C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_100033AA8(_swiftEmptyArrayStorage);
  v8 = type metadata accessor for BinaryDecoder();
  v9 = swift_allocObject();
  v9[5] = &_swiftEmptyDictionarySingleton;
  v9[2] = a1;
  v9[3] = a2;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(a1 + 16);
    }
  }

  else
  {
    v11 = a1;
    if (!v10)
    {
      v11 = 0;
    }
  }

  v9[4] = v11;
  swift_beginAccess();
  v9[5] = v7;
  v14[3] = v8;
  v14[4] = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v14[0] = v9;
  sub_10000AB0C(a1, a2);
  sub_1001F507C(v14, v15);
  if (!v3)
  {
    v13 = v15[1];
    *a3 = v15[0];
    a3[1] = v13;
    a3[2] = v16[0];
    result = *(v16 + 9);
    *(a3 + 41) = *(v16 + 9);
  }

  return result;
}

uint64_t sub_100299F90@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100033AA8(_swiftEmptyArrayStorage);
  v8 = type metadata accessor for BinaryDecoder();
  v9 = swift_allocObject();
  v9[5] = &_swiftEmptyDictionarySingleton;
  v9[2] = a1;
  v9[3] = a2;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v11 = 0;
    if (v10 == 2)
    {
      v11 = *(a1 + 16);
    }
  }

  else
  {
    v11 = a1;
    if (!v10)
    {
      v11 = 0;
    }
  }

  v9[4] = v11;
  swift_beginAccess();
  v9[5] = v7;
  v16[3] = v8;
  v16[4] = sub_10029EFDC(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v16[0] = v9;
  sub_10000AB0C(a1, a2);
  result = sub_10003132C(v16);
  if (!v3)
  {
    *a3 = result;
    *(a3 + 8) = v13;
    *(a3 + 16) = v14;
    *(a3 + 24) = v15;
  }

  return result;
}

uint64_t sub_10029A0C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (WORD1(result))
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = result;
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_8;
      }

LABEL_13:
      __break(1u);
      return result;
    }

LABEL_9:
    sub_10000AB0C(a2, a3);
    v11 = sub_10029A1DC(v3, a2, a3);
    v13 = v12;
    sub_1000124C8(a2, a3);
    Data.append(_:)();
    return sub_1000124C8(v11, v13);
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v5;
LABEL_8:
  if (v5 < 0xFFFF)
  {
    goto LABEL_9;
  }

  sub_10000B02C();
  swift_allocError();
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_10029A1DC(__int16 a1, uint64_t a2, unint64_t a3)
{
  v43 = a1;
  v5 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v5)
    {
      LOWORD(v6) = BYTE6(a3);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  LOWORD(v6) = 0;
  if (v5 != 2)
  {
    goto LABEL_12;
  }

  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (v9)
  {
    __break(1u);
LABEL_8:
    LODWORD(v6) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v6 = v6;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v6 >> 16)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_12:
  v42 = v6;
  v41 = a3 >> 62;
  v10 = sub_1002AAFAC(&v43, 2uLL);
  v12 = v11;
  v13 = sub_1002AAFAC(&v42, 2uLL);
  v15 = v14;
  v50 = v10;
  v51 = v12;
  v46 = &type metadata for Data;
  v47 = &protocol witness table for Data;
  v44 = v13;
  v45 = v14;
  v16 = sub_100029B34(&v44, &type metadata for Data);
  v17 = *v16;
  v18 = v16[1];
  sub_10000AB0C(v10, v12);
  sub_10000AB0C(v13, v15);
  sub_100178A18(v17, v18, &v50);
  sub_1000124C8(v13, v15);
  sub_1000124C8(v10, v12);
  sub_100002A00(&v44);
  v19 = v50;
  v20 = v51;
  v48 = v50;
  v49 = v51;
  v46 = &type metadata for Data;
  v47 = &protocol witness table for Data;
  v44 = a2;
  v45 = a3;
  v21 = sub_100029B34(&v44, &type metadata for Data);
  v22 = *v21;
  v23 = v21[1];
  sub_10000AB0C(v19, v20);
  sub_10000AB0C(a2, a3);
  sub_100178A18(v22, v23, &v48);
  sub_1000124C8(v19, v20);
  sub_100002A00(&v44);
  v24 = v48;
  v25 = v49;
  if (v41 <= 1)
  {
    if (!v41)
    {
      LOWORD(v26) = BYTE6(a3);
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  if (v41 != 2)
  {
    goto LABEL_24;
  }

  v28 = *(a2 + 16);
  v27 = *(a2 + 24);
  v9 = __OFSUB__(v27, v28);
  v26 = v27 - v28;
  if (v9)
  {
    __break(1u);
LABEL_19:
    LODWORD(v26) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v26 = v26;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!(v26 >> 16))
  {
    goto LABEL_25;
  }

  __break(1u);
LABEL_24:
  LOWORD(v26) = 0;
LABEL_25:
  v29 = v26 + 3;
  if ((v29 & 0x10000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v41 <= 1)
  {
    if (!v41)
    {
      LOWORD(v30) = BYTE6(a3);
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  if (v41 != 2)
  {
    goto LABEL_38;
  }

  v32 = *(a2 + 16);
  v31 = *(a2 + 24);
  v9 = __OFSUB__(v31, v32);
  v30 = v31 - v32;
  if (v9)
  {
    __break(1u);
LABEL_33:
    LODWORD(v30) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_49;
    }

    v30 = v30;
  }

  if ((v30 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!(v30 >> 16))
  {
    goto LABEL_39;
  }

  __break(1u);
LABEL_38:
  LOWORD(v30) = 0;
LABEL_39:
  v33 = (v29 & 0xFFFC) - v30;
  if ((v33 & 0xFFFF0000) != 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v34 = sub_10014345C(v33);
  v36 = v35;
  v50 = v24;
  v51 = v25;
  v46 = &type metadata for Data;
  v47 = &protocol witness table for Data;
  v44 = v34;
  v45 = v35;
  v37 = sub_100029B34(&v44, &type metadata for Data);
  v38 = *v37;
  v39 = v37[1];
  sub_10000AB0C(v24, v25);
  sub_10000AB0C(v34, v36);
  sub_100178A18(v38, v39, &v50);
  sub_1000124C8(v34, v36);
  sub_1000124C8(v24, v25);
  sub_100002A00(&v44);
  return v50;
}

uint64_t sub_10029A50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1;
  v13 = *(a4 - 8);
  v14 = __chkstk_darwin();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v14);
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v26 = a2;
  v27 = v6;
  v28 = v12;
  v17 = sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  sub_1002892A0(v16, sub_10029F2C0, v21, a4, v17, &type metadata for () + 8, &protocol self-conformance witness table for Error, &v20);
  return (*(v13 + 8))(v16, a4);
}

uint64_t sub_10029A6B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  v31 = a2;
  v32 = a7;
  type metadata accessor for Data.Deallocator();
  __chkstk_darwin();
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(a6 - 8);
  v16 = *(v30 + 64);
  v17 = __chkstk_darwin();
  v18 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v15, enum case for Data.Deallocator.none(_:), v17);
  result = sub_100002DE8(a1, v16, v15);
  if (a4 >= 0x10000)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    v23 = v21;
    v24 = v33;
    sub_1002949B4(7233902, 0xE300000000000000, a4, result, v21, 1, a5, v32, *(a8 + 16));
    v26 = v25;
    v28 = v27;
    result = sub_1000124C8(v22, v23);
    if (v24)
    {
      *a9 = v24;
    }

    else
    {
      Data.load<A>(as:)(v26, v28, a6, v18);
      sub_1000124C8(v26, v28);
      return (*(v30 + 40))(v31, v18, a6);
    }
  }

  return result;
}

uint64_t sub_10029A8F4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v11 = a1;
  v8 = sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  return sub_100289004(a2, sub_10029F2F8, v10, a4, v8, &type metadata for () + 8, &protocol self-conformance witness table for Error, &v12);
}

uint64_t sub_10029A99C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  result = sub_10004F3B0(a1, a2);
  if (a4 >= 0x10000)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v17 = v15;
    sub_1002949B4(7233902, 0xE300000000000000, a4, result, v15, 1, a5, a7, *(a8 + 16));
    if (v9)
    {
      result = sub_1000124C8(v16, v17);
      *a9 = v9;
    }

    else
    {
      sub_1000124C8(v18, v19);
      return sub_1000124C8(v16, v17);
    }
  }

  return result;
}

uint64_t sub_10029AA78@<X0>(unsigned int a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X8>)
{
  result = sub_10014345C(*(*(a3 - 8) + 64));
  if (a1 >= 0x10000)
  {
    __break(1u);
  }

  else
  {
    v14 = result;
    v15 = v13;
    sub_1002949B4(7233902, 0xE300000000000000, a1, result, v13, 0, a2, a4, *(a5 + 16));
    v17 = v16;
    v19 = v18;
    result = sub_1000124C8(v14, v15);
    if (!v6)
    {
      Data.load<A>(as:)(v17, v19, a3, a6);
      return sub_1000124C8(v17, v19);
    }
  }

  return result;
}

uint64_t sub_10029AB84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = *(result + 16);
  v23[0] = *result;
  v23[1] = v9;
  v24 = *(result + 32);
  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_8;
    }

    v13 = *(a4 + 16);
    v12 = *(a4 + 24);
    v14 = __OFSUB__(v12, v13);
    v11 = v12 - v13;
    if (v14)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_8;
    }

    LODWORD(v11) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v11 = v11;
  }

  if (v11 >= 0x10000)
  {
LABEL_12:
    sub_10000B02C();
    swift_allocError();
    *v16 = xmmword_100481860;
    *(v16 + 16) = 0;
    return swift_willThrow();
  }

LABEL_8:
  if (a3 > 34)
  {
    goto LABEL_12;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      v15 = BYTE6(a5);
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v10 != 2)
  {
    v15 = 0;
    goto LABEL_20;
  }

  v18 = *(a4 + 16);
  v17 = *(a4 + 24);
  v14 = __OFSUB__(v17, v18);
  v15 = v17 - v18;
  if (v14)
  {
    __break(1u);
LABEL_17:
    LODWORD(v15) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_26:
      __break(1u);
      return result;
    }

    v15 = v15;
  }

LABEL_20:
  result = a3 + v15;
  if (__OFADD__(a3, v15))
  {
    __break(1u);
    goto LABEL_24;
  }

  v21 = sub_10014345C(result);
  v22 = v19;
  __chkstk_darwin();
  v20[2] = v23;
  v20[3] = a2;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a3;
  sub_10029D6F4(sub_10029F1DC, v20);
  return v21;
}

uint64_t sub_10029AD24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v26[0] = result;
  v26[1] = a2;
  v26[2] = a3;
  v27 = a4;
  v28 = WORD2(a4);
  v12 = a8 >> 62;
  if ((a8 >> 62) > 1)
  {
    if (v12 == 2)
    {
      v15 = *(a7 + 16);
      v14 = *(a7 + 24);
      v16 = __OFSUB__(v14, v15);
      v13 = v14 - v15;
      if (v16)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_7:
      if (v13 >= 0x10000 || a6 > 30)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }
  }

  else if (v12)
  {
    LODWORD(v13) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v13 = v13;
    goto LABEL_7;
  }

  if (a6 > 30)
  {
LABEL_16:
    sub_10000B02C();
    swift_allocError();
    *v19 = xmmword_100481860;
    *(v19 + 16) = 0;
    return swift_willThrow();
  }

LABEL_12:
  if (v12 <= 1)
  {
    if (!v12)
    {
      v18 = BYTE6(a8);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v12 != 2)
  {
    v18 = 0;
    goto LABEL_24;
  }

  v21 = *(a7 + 16);
  v20 = *(a7 + 24);
  v16 = __OFSUB__(v20, v21);
  v18 = v20 - v21;
  if (v16)
  {
    __break(1u);
LABEL_21:
    LODWORD(v18) = HIDWORD(a7) - a7;
    if (__OFSUB__(HIDWORD(a7), a7))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    v18 = v18;
  }

LABEL_24:
  result = a6 + v18;
  if (__OFADD__(a6, v18))
  {
    __break(1u);
    goto LABEL_28;
  }

  v24 = sub_10014345C(result);
  v25 = v22;
  __chkstk_darwin();
  v23[2] = v26;
  v23[3] = a5;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = a6;
  sub_10029D6F4(sub_10029F1B8, v23);
  return v24;
}

void sub_10029AECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    goto LABEL_42;
  }

  v7 = BYTE6(a6);
  v9 = *(a3 + 16);
  *a1 = *a3;
  *(a1 + 16) = v9;
  *(a1 + 32) = *(a3 + 32);
  v10 = a6 >> 62;
  if (a4)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
LABEL_15:

        swift_setAtWritableKeyPath();

        goto LABEL_16;
      }

      v12 = *(a5 + 16);
      v11 = *(a5 + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (!v13)
      {
LABEL_12:
        if ((v14 & 0x8000000000000000) != 0)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v14 >> 16)
        {
          __break(1u);
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v10)
    {
      goto LABEL_15;
    }

    LODWORD(v14) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v14 = v14;
    goto LABEL_12;
  }

LABEL_16:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      return;
    }

    v17 = *(a5 + 16);
    v16 = *(a5 + 24);
    v13 = __OFSUB__(v16, v17);
    v15 = v16 - v17;
    if (!v13)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v15 = v7;
    goto LABEL_26;
  }

  LODWORD(v15) = HIDWORD(a5) - a5;
  if (__OFSUB__(HIDWORD(a5), a5))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = v15;
LABEL_25:
  if (v15 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_26:
  if (!v15)
  {
    return;
  }

  if (v10)
  {
    if (v10 == 2)
    {
      v18 = *(a5 + 16);
    }

    else
    {
      v18 = a5;
    }
  }

  else
  {
    v18 = 0;
  }

  if (__OFADD__(v18, v15))
  {
    goto LABEL_38;
  }

  if (v18 + v15 < v18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  Data._copyBytesHelper(to:from:)();
}

void sub_10029B04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    goto LABEL_42;
  }

  *a1 = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
  *(a1 + 24) = a6;
  *(a1 + 28) = WORD2(a6);
  v11 = a9 >> 62;
  if (a7)
  {
    if (v11 > 1)
    {
      if (v11 != 2)
      {
LABEL_15:

        swift_setAtWritableKeyPath();

        goto LABEL_16;
      }

      v13 = *(a8 + 16);
      v12 = *(a8 + 24);
      v14 = __OFSUB__(v12, v13);
      v15 = v12 - v13;
      if (!v14)
      {
LABEL_12:
        if ((v15 & 0x8000000000000000) != 0)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v15 >> 16)
        {
          __break(1u);
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v11)
    {
      goto LABEL_15;
    }

    LODWORD(v15) = HIDWORD(a8) - a8;
    if (__OFSUB__(HIDWORD(a8), a8))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return;
    }

    v15 = v15;
    goto LABEL_12;
  }

LABEL_16:
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      return;
    }

    v18 = *(a8 + 16);
    v17 = *(a8 + 24);
    v14 = __OFSUB__(v17, v18);
    v16 = v17 - v18;
    if (!v14)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v16 = BYTE6(a9);
    goto LABEL_26;
  }

  LODWORD(v16) = HIDWORD(a8) - a8;
  if (__OFSUB__(HIDWORD(a8), a8))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v16 = v16;
LABEL_25:
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_37;
  }

LABEL_26:
  if (!v16)
  {
    return;
  }

  if (v11)
  {
    if (v11 == 2)
    {
      v19 = *(a8 + 16);
    }

    else
    {
      v19 = a8;
    }
  }

  else
  {
    v19 = 0;
  }

  if (__OFADD__(v19, v16))
  {
    goto LABEL_38;
  }

  if (v19 + v16 < v19)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  Data._copyBytesHelper(to:from:)();
}

void sub_10029B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = __chkstk_darwin();
  if (!v20)
  {
    goto LABEL_39;
  }

  (*(*(a9 - 8) + 24))(a1, v18, a9, v19);
  if (a4)
  {
    v28 = BYTE6(a6);
    v21 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      goto LABEL_11;
    }

    if (!v21)
    {
      v22 = a7;
      goto LABEL_17;
    }

    if (__OFSUB__(HIDWORD(a5), a5))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      return;
    }

    v22 = a7;
LABEL_17:
    while (1)
    {
      sub_100086E78();

      dispatch thunk of BinaryInteger.init<A>(_:)();
      swift_setAtWritableKeyPath();

      a7 = v22;
      BYTE6(a6) = v28;
      if (v21 <= 1)
      {
        break;
      }

LABEL_7:
      if (v21 != 2)
      {
        return;
      }

      v24 = *(a5 + 16);
      v23 = *(a5 + 24);
      v25 = __OFSUB__(v23, v24);
      v26 = v23 - v24;
      if (!v25)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_11:
      if (v21 == 2)
      {
        if (__OFSUB__(*(a5 + 24), *(a5 + 16)))
        {
          goto LABEL_37;
        }

        v22 = a7;
      }

      else
      {
        v22 = a7;
      }
    }
  }

  else
  {
    v21 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      goto LABEL_7;
    }
  }

  if (v21)
  {
    LODWORD(v26) = HIDWORD(a5) - a5;
    if (__OFSUB__(HIDWORD(a5), a5))
    {
      goto LABEL_36;
    }

    v26 = v26;
LABEL_22:
    if (v26 < 0)
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
    v26 = BYTE6(a6);
  }

  if (!v26)
  {
    return;
  }

  if (v21)
  {
    if (v21 == 2)
    {
      v27 = *(a5 + 16);
    }

    else
    {
      v27 = a5;
    }
  }

  else
  {
    v27 = 0;
  }

  if (__OFADD__(v27, v26))
  {
    goto LABEL_34;
  }

  if (v27 + v26 < v27)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  Data._copyBytesHelper(to:from:)();
}

uint64_t sub_10029B424(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = xmmword_100480A90;
  v4 = *(a2 + 16);
  if (!v4)
  {
    return 0;
  }

  for (i = (a2 + 32); ; ++i)
  {
    v6 = *i;
    v7 = *(i + 1);
    v8 = v7 >> 62;
    v32 = *i;
    if ((v7 >> 62) > 1)
    {
      break;
    }

    if (v8)
    {
      v9 = *i;
      if (__OFSUB__(DWORD1(v6), v6))
      {
        goto LABEL_52;
      }

      v12 = DWORD1(v6) - v6;
      goto LABEL_15;
    }

    if (BYTE6(v7) == 255)
    {
      goto LABEL_47;
    }

LABEL_16:
    type metadata accessor for BinaryEncoder();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100480A90;
    *(v13 + 32) = &_swiftEmptyDictionarySingleton;
    v34 = &type metadata for BinaryEncoder.UnkeyedContainer;
    v35 = sub_1000D12E4();
    v33[0] = v13;
    if (v8 > 1)
    {
      if (v8 != 2)
      {
LABEL_28:
        v18 = &type metadata for BinaryEncoder.UnkeyedContainer;
        goto LABEL_29;
      }

      v14 = v32;
      v15 = *(v32 + 16);
      v16 = *(v32 + 24);
      v17 = v16 - v15;
      if (__OFSUB__(v16, v15))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v14 = v32;
      if (__OFSUB__(DWORD1(v32), v32))
      {
        goto LABEL_54;
      }

      v17 = DWORD1(v32) - v32;
    }

    sub_10000AB0C(v14, v7);
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
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
    }

    if (v17 > 0xFF)
    {
      goto LABEL_50;
    }

    v18 = v34;
LABEL_29:
    sub_100031694(v33, v18);
    swift_retain_n();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if (v3)
    {
      sub_1000124C8(v32, v7);
      sub_100002A00(v33);
      sub_1000124C8(v32, v7);
      sub_1000124C8(v32, v7);

      return sub_1000124C8(v36, *(&v36 + 1));
    }

    v31 = v4;
    v19 = v7;
    sub_100031694(v33, v34);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v32, *(&v32 + 1));
    sub_100002A00(v33);
    sub_1000124C8(v32, v7);

    swift_beginAccess();
    v21 = *(v13 + 16);
    v20 = *(v13 + 24);
    sub_10000AB0C(v21, v20);

    v34 = &type metadata for Data;
    v35 = &protocol witness table for Data;
    v33[0] = v21;
    v33[1] = v20;
    v22 = sub_100029B34(v33, &type metadata for Data);
    v23 = *v22;
    v24 = v22[1] >> 62;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = *(v23 + 16);
        v29 = *(v23 + 24);
        sub_10000AB0C(v21, v20);
        v30 = v19;
        if (__DataStorage._bytes.getter() && __OFSUB__(v25, __DataStorage._offset.getter()))
        {
          goto LABEL_57;
        }

        v3 = 0;
        if (__OFSUB__(v29, v25))
        {
          goto LABEL_56;
        }

        goto LABEL_43;
      }
    }

    else if (v24)
    {
      v30 = v7;
      v26 = v23;
      if (v23 >> 32 < v23)
      {
        goto LABEL_55;
      }

      sub_10000AB0C(v21, v20);
      if (__DataStorage._bytes.getter())
      {
        v3 = 0;
        if (__OFSUB__(v26, __DataStorage._offset.getter()))
        {
          goto LABEL_58;
        }
      }

      else
      {
        v3 = 0;
      }

LABEL_43:
      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_1000124C8(v21, v20);
      sub_1000124C8(v32, v30);
      goto LABEL_4;
    }

    Data._Representation.append(contentsOf:)();
    sub_1000124C8(v32, v7);
    v3 = 0;
LABEL_4:
    sub_100002A00(v33);
    v4 = v31 - 1;
    if (v31 == 1)
    {
      return v36;
    }
  }

  if (v8 != 2)
  {
    goto LABEL_16;
  }

  v9 = *i;
  v11 = *(v6 + 16);
  v10 = *(v6 + 24);
  v12 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    goto LABEL_51;
  }

LABEL_15:
  sub_10000AB0C(v9, v7);
  sub_10000AB0C(v9, v7);
  if (v12 < 255)
  {
    goto LABEL_16;
  }

LABEL_47:
  sub_10000B02C();
  swift_allocError();
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 2;
  swift_willThrow();
  sub_1000124C8(v32, v7);
  sub_1000124C8(v32, v7);
  return sub_1000124C8(v36, *(&v36 + 1));
}
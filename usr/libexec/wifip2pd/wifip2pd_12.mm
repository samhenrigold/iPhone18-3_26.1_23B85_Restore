uint64_t AppleIO80211Driver.__allocating_init(device:role:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = swift_allocObject();
  AppleIO80211Driver.init(device:role:name:)(a1, v6, a3, a4);
  return v8;
}

void *sub_1000ED548(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
LABEL_10:
    result = _StringGuts._slowWithCString<A>(_:)();
    if (!v4)
    {
      return v7[3];
    }

    return result;
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      result = a1(v7, (a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (!v4)
      {
        return v7[0];
      }

      return result;
    }

    goto LABEL_10;
  }

  v7[0] = a3;
  v7[1] = a4 & 0xFFFFFFFFFFFFFFLL;
  result = a1(&v6, v7);
  if (!v4)
  {
    return v6;
  }

  return result;
}

void *sub_1000ED5E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v8[0] = a3;
    v8[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v6 = v8;
    return a1(v6);
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  v6 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a1(v6);
}

uint64_t IO80211Device.loadCapabilities(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  result = (*(a4 + 32))(12, v6 + 4, &v7 + 1, 0, a1, a2, a3, a4);
  if (!v4)
  {
    return v6[0];
  }

  return result;
}

uint64_t AppleBroadcomDriver.eventSource.getter()
{
  swift_beginAccess();
  v1 = v0[6];
  sub_100119ED4(v1, v0[7], v0[8]);
  return v1;
}

uint64_t AppleBroadcomDriver.eventSource.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = v3[6];
  v8 = v3[7];
  v9 = v3[8];
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;
  return sub_100119F14(v7, v8, v9);
}

uint64_t AppleIO80211Driver.capabilities.getter()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_1000ED8A4();
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_1000ED8A4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = _swiftEmptyArrayStorage;
  v2 = AppleDevice.loadCapabilities(on:)(*(v0 + 16), *(v0 + 24));
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_10058A768 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsNAN, 0x48u, v2, v4, v6, v8, v1);
  if (qword_10058A770 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsAWDL, 0x20u, v2, v4, v6, v8, v1);
  if (qword_10058A778 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDualBand, 0x1Du, v2, v4, v6, v8, v1);
  if (qword_10058A780 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsSimultaneousDualBand, 0x39u, v2, v4, v6, v8, v1);
  if (qword_10058A788 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsAWDLSoloMode, 0x33u, v2, v4, v6, v8, v1);
  if (qword_10058A790 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.isClmRestricted, 0x3Fu, v2, v4, v6, v8, v1);
  if (qword_10058A7A0 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDFSProxy, 0x43u, v2, v4, v6, v8, v1);
  if (qword_10058A7A8 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity, 0x95u, v2, v4, v6, v8, v1);
  if (qword_10058A7B0 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDynamicSDB, 0x97u, v2, v4, v6, v8, v1);
  swift_beginAccess();
  v9 = *(v1 + 16);

  return v9;
}

uint64_t IO80211Driver<>.loadCapabilities()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = v24 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = _swiftEmptyArrayStorage;
  v24[1] = v10 + 16;
  (*(v5 + 56))(a1, v5);
  v11 = (*(a3 + 40))(a1, a3);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = (*(AssociatedConformanceWitness + 16))(v11, v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v7 + 8))(v9, AssociatedTypeWitness);

  if (qword_10058A768 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsNAN, 0x48u, v15, v17, v19, v21, v10);
  if (qword_10058A770 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsAWDL, 0x20u, v15, v17, v19, v21, v10);
  if (qword_10058A778 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDualBand, 0x1Du, v15, v17, v19, v21, v10);
  if (qword_10058A780 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsSimultaneousDualBand, 0x39u, v15, v17, v19, v21, v10);
  if (qword_10058A788 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsAWDLSoloMode, 0x33u, v15, v17, v19, v21, v10);
  if (qword_10058A790 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.isClmRestricted, 0x3Fu, v15, v17, v19, v21, v10);
  if (qword_10058A7A0 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDFSProxy, 0x43u, v15, v17, v19, v21, v10);
  if (qword_10058A7A8 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity, 0x95u, v15, v17, v19, v21, v10);
  if (qword_10058A7B0 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDynamicSDB, 0x97u, v15, v17, v19, v21, v10);
  swift_beginAccess();
  v22 = *(v10 + 16);

  return v22;
}

uint64_t AppleIO80211Driver.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppleIO80211Driver.init(device:role:name:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 40) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger, v13, v10);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136315138;

    v18 = AppleIO80211Driver.description.getter();
    v20 = v19;

    v21 = sub_100002320(v18, v20, &v24);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Created %s", v16, 0xCu);
    sub_100002A00(v17);
  }

  return v5;
}

uint64_t *AppleIO80211Driver.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 64))
  {
    swift_unownedRetainStrong();
    AppleDevice.stopMonitoringEvents(on:)(*(v0 + 56));
  }

  swift_endAccess();
  v6 = OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger;
  (*(v3 + 16))(v5, v0 + OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger, v2);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v17 = v6;
    v10 = v9;
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136315138;
    v12 = AppleIO80211Driver.description.getter();
    v14 = sub_100002320(v12, v13, v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "Destroyed %s", v10, 0xCu);
    sub_100002A00(v11);

    v6 = v17;
  }

  v15 = *(v3 + 8);
  v15(v5, v2);

  sub_100119F14(v1[6], v1[7], v1[8]);

  v15(v1 + v6, v2);
  return v1;
}

uint64_t AppleIO80211Driver.__deallocating_deinit()
{
  AppleIO80211Driver.deinit();

  return swift_deallocClassInstance();
}

uint64_t DeviceDriver<>.countryCode.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 32))(a1, a3) == 4)
  {
    if (qword_10058A898 != -1)
    {
      swift_once();
    }

    return static CountryCode.unknown;
  }

  else
  {
    v9 = sub_10005DC58(&qword_10058D448, &qword_100486D28);
    sub_100110570(51, v9, 0, 0, a1, v9, a2, a3, a4);
    return v11;
  }
}

uint64_t DeviceDriver<>.update(countryCode:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  v13 = 0;
  type metadata accessor for apple80211_country_code_data(0);
  return sub_100110D80(51, &v11, a2, v9, a3, a4, a5);
}

uint64_t IO80211Driver<>.userspaceP2POptions.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_userspace_p2p_options_t(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(389, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12;
}

uint64_t IO80211Driver<>.update(userspaceP2POptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 1;
  v14 = a1;
  type metadata accessor for apple80211_userspace_p2p_options_t(0);
  v8 = v7;
  v9 = *(a3 + 8);
  v10 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(389, &v13, a2, v8, v9, v10, AssociatedConformanceWitness);
}

uint64_t DeviceDriver<>.updateInterfaceState(for:active:)(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result <= 2u && result != 0)
  {
    if (result == 1)
    {
      v7 = 6;
    }

    else
    {
      v7 = 9;
    }

    v13[0] = a2 & 1;
    v13[1] = v7;
    v14 = 1;
    v15 = 0;
    type metadata accessor for apple80211_virtual_if_state(0);
    return sub_100110D80(503, v13, a3, v12, a4, *(a5 + 16), a6);
  }

  return result;
}

uint64_t DeviceDriver<>.setSDBEnable(_:flag:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[0] = 1;
  v14[1] = a1 & 1;
  if ((a2 & &_mh_execute_header) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v14[2] = v11;
  v14[3] = 0;
  type metadata accessor for apple80211_sdb_enable(0);
  result = sub_100110D80(558, v14, a3, v12, a4, *(a5 + 16), a6);
  if (v6)
  {
  }

  return result;
}

uint64_t DeviceDriver<>.updateBatteryInfo()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10058A830 != -1)
  {
    swift_once();
  }

  v10[0] = 1;
  v10[1] = static PreferenceDefaults.hasBattery;
  type metadata accessor for apple80211_has_battery_t(0);
  return sub_100110D80(566, v10, a1, v8, a2, *(a3 + 16), a4);
}

BOOL IO80211Driver<>.awdlEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_awdl_sync_enabled(0);
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(117, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12 != 0;
}

uint64_t IO80211Driver<>.awdlSubstate.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_awdl_strategy(0);
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(148, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12;
}

unint64_t sub_1000EEFC0()
{
  v0 = sub_10010FB04(0xF4uLL, 0, 0);
  v2 = v1;
  v3 = WORD2(v0);
  v4 = sub_10003B238(HIWORD(v0));
  sub_10003B238(v3);
  sub_10003B238(v2);
  return v4 & 0xFFFFFFFFFFFFLL;
}

unint64_t IO80211Driver<>.peerPreferredChannels.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_awdl_preferred_channels(0);
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(244, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  v11 = sub_10003B238(v14);
  sub_10003B238(v13);
  sub_10003B238(v15);
  return v11 & 0xFFFFFFFFFFFFLL;
}

void *IO80211Driver<>.awdlChannelSequence.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_awdl_sync_channel_sequence(0);
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(129, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  memcpy(__dst, __src, 0x190uLL);
  return sub_100030938(__dst);
}

uint64_t IO80211Driver<>.activePorts.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_slowAlloc();
  v7 = *(a3 + 8);
  v8 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_10010F5C4(466, v6, v6 + 0x2000, 0, 0, a1, v7, v8, AssociatedConformanceWitness);
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = *(v6 + v11);
    if (v13)
    {
      break;
    }

LABEL_2:
    if (++v11 == 0x2000)
    {

      return v12;
    }
  }

  v14 = 0;
  while (((1 << v14) & ~v13) != 0)
  {
LABEL_6:
    if (++v14 == 8)
    {
      goto LABEL_2;
    }
  }

  v15 = (8 * v11) + v14;
  if ((v15 & 0x10000) == 0)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100117180(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
    }

    v17 = *(v12 + 2);
    v16 = *(v12 + 3);
    if (v17 >= v16 >> 1)
    {
      result = sub_100117180((v16 > 1), v17 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 2) = v17 + 1;
    *&v12[2 * v17 + 32] = v15;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t IO80211Driver<>.trafficRegistration(for:to:desiredLatency:desiredChannel:desiredSecondaryChannel:options:ssidHash:active:)(uint64_t a1, uint64_t a2, int a3, __int16 a4, __int16 a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  memset(&v32[4], 0, 164);
  *v32 = 1;
  HIDWORD(v33) = 0;
  *&v32[168] = a8 & 1;
  *&v32[172] = sub_10000F23C(a6);
  LOWORD(v33) = a4;
  WORD1(v33) = a5;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  KeyPath = swift_getKeyPath();

  v20 = sub_10000F344(v16, v18, v32, KeyPath, 0x80uLL);

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v21 = 127;
  if (v20 < 0x7F)
  {
    v21 = v20;
  }

  *&v32[12] = v21;
  *&v32[144] = a3;
  *&v32[4] = a2;
  v32[6] = BYTE2(a2);
  v32[7] = BYTE3(a2);
  v32[8] = BYTE4(a2);
  v32[9] = BYTE5(a2);
  if ((a7 & 0x1000000000000) == 0)
  {
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1004817D0;
    *(v22 + 32) = a7;
    *(v22 + 34) = BYTE2(a7);
    *(v22 + 35) = BYTE3(a7);
    *(v22 + 36) = BYTE4(a7);
    *(v22 + 37) = BYTE5(a7);
    v23 = sub_10002D874(v22);
    v25 = v24;

    *&v34[0] = v23;
    *(&v34[0] + 1) = v25;
    sub_1000BA0A4();
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(*&v34[0], *(&v34[0] + 1));
  }

  v34[8] = *&v32[128];
  v34[9] = *&v32[144];
  v34[10] = *&v32[160];
  v35 = v33;
  v34[4] = *&v32[64];
  v34[5] = *&v32[80];
  v34[6] = *&v32[96];
  v34[7] = *&v32[112];
  v34[0] = *v32;
  v34[1] = *&v32[16];
  v34[2] = *&v32[32];
  v34[3] = *&v32[48];
  type metadata accessor for apple80211_awdl_peer_traffic_registration(0);
  v27 = v26;
  v28 = *(a11 + 8);
  v29 = *(a10 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(164, v34, a9, v27, v28, v29, AssociatedConformanceWitness);
}

uint64_t IO80211Driver<>.transmit(unicastMasterIndicationOptions:to:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = dword_1004874A8[a1];
  v15[0] = 1;
  v15[1] = v8;
  v16 = a2;
  v17 = BYTE2(a2);
  v18 = BYTE3(a2);
  v19 = BYTE4(a2);
  v20 = BYTE5(a2);
  type metadata accessor for apple80211_awdl_UMI_data(0);
  v10 = v9;
  v11 = *(a5 + 8);
  v12 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(417, v15, a3, v10, v11, v12, AssociatedConformanceWitness);
}

unint64_t sub_1000EF8C4()
{
  result = sub_10010FC00(0xD9uLL, 0, 0);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result >>= 32;
  }

  return result;
}

uint64_t IO80211Driver<>.operatingMode.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_awdl_oper_mode(0);
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(217, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  result = v12;
  if ((v12 & 0x80000000) != 0)
  {
    __break(1u);
  }

  return result;
}

void sub_1000EFA08(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_100110B44(0xD9uLL, result << 32);
  }
}

uint64_t IO80211Driver<>.updateOperatingMode(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12[0] = 0;
    v12[1] = result;
    type metadata accessor for apple80211_awdl_oper_mode(0);
    v8 = v7;
    v9 = *(a4 + 8);
    v10 = *(a3 + 8);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(217, v12, a2, v8, v9, v10, AssociatedConformanceWitness);
  }

  return result;
}

void *sub_1000EFB00(char a1)
{
  v4 = *v1;
  v3[2] = a1 & 1;
  v3[3] = &v4;
  return sub_1000ED5E8(sub_10011AE68, v3, 0x5379616C70726961, 0xEB000000006B6E69);
}

double sub_1000EFBC4(char a1)
{
  if (a1)
  {
    v1 = 0x100000001;
  }

  else
  {
    v1 = 1;
  }

  return sub_100110768(0xA3uLL, v1);
}

uint64_t IO80211Driver<>.setAirPlaySoloMode(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 1;
  v14 = a1;
  type metadata accessor for apple80211_awdl_social_time_slots(0);
  v8 = v7;
  v9 = *(a4 + 8);
  v10 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(163, &v13, a2, v8, v9, v10, AssociatedConformanceWitness);
}

uint64_t sub_1000EFCE0(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 16);
  v3 = 64;
  if (v2 < 0x40)
  {
    v3 = *(a1 + 16);
  }

  LODWORD(v22) = 0;
  HIDWORD(v22) = v3;
  if (v2)
  {
    v4 = &v14 + 2;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5;
      v5 += 2;
      v6 = v7;
      if (HIWORD(v7))
      {
        __break(1u);
      }

      *v4++ = v6;
      --v3;
    }

    while (v3);
  }

  v11[6] = v20;
  v11[7] = v21;
  v12 = v22;
  v11[2] = v16;
  v11[3] = v17;
  v11[4] = v18;
  v11[5] = v19;
  v11[0] = v14;
  v11[1] = v15;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x1A3uLL, v11, &v13, 0, v8, v9);
}

uint64_t IO80211Driver<>.updateLTERestrictedChannels(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = *(result + 16);
  v8 = 64;
  if (v7 < 0x40)
  {
    v8 = *(result + 16);
  }

  LODWORD(v28) = 0;
  HIDWORD(v28) = v8;
  if (v7)
  {
    v9 = &v20 + 2;
    v10 = (result + 32);
    while (1)
    {
      v12 = *v10;
      v10 += 2;
      v11 = v12;
      if (HIWORD(v12))
      {
        break;
      }

      *v9++ = v11;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v18[6] = v26;
    v18[7] = v27;
    v19 = v28;
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v18[5] = v25;
    v18[0] = v20;
    v18[1] = v21;
    type metadata accessor for apple80211_lte_restricted_channels(0);
    v14 = v13;
    v15 = *(a4 + 8);
    v16 = *(a3 + 8);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(419, v18, a2, v14, v15, v16, AssociatedConformanceWitness);
  }

  return result;
}

_DWORD *sub_1000EFF78(unsigned __int8 a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  *&v126[4] = 0;
  *&v126[18] = 0;
  *v126 = 1;
  *&v126[10] = a1 ^ 1u;
  swift_getKeyPath();
  v11 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  LOWORD(v13) = v12;

  if (v13)
  {
LABEL_319:
    __break(1u);
  }

  v14 = a3 >> 62;
  v15 = BYTE6(a5);
  if ((a3 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
LABEL_9:
    if (v16 != v17)
    {
      goto LABEL_11;
    }

LABEL_10:
    *&v126[16] = 0;
    v18 = *(v119 + 16);
    v19 = *(v119 + 24);

    AppleDevice.setRequest(requestType:data:on:)(0x78uLL, v126, &v127, 0, v18, v19);
  }

  if (v14)
  {
    v16 = a2;
    v17 = a2 >> 32;
    goto LABEL_9;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a5 >> 60 == 15)
  {
    if (v14 != 2)
    {
      if (v14 == 1)
      {
        LODWORD(v21) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_281:
          __break(1u);
          goto LABEL_282;
        }

        v21 = v21;
LABEL_27:
        v13 = v21 + 4;
        if (__OFADD__(v21, 4))
        {
LABEL_257:
          __break(1u);
          goto LABEL_258;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_259:
          __break(1u);
          goto LABEL_260;
        }

        if (v13 >> 16)
        {
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        v28 = v11 + 7;
        if (__OFADD__(v11, 7))
        {
LABEL_263:
          __break(1u);
          goto LABEL_264;
        }

        if (v14 != 2)
        {
          if (v14 == 1)
          {
            LODWORD(v29) = HIDWORD(a2) - a2;
            if (__OFSUB__(HIDWORD(a2), a2))
            {
LABEL_283:
              __break(1u);
              goto LABEL_284;
            }

            v29 = v29;
            goto LABEL_49;
          }

          goto LABEL_48;
        }

LABEL_45:
        v36 = *(a2 + 16);
        v35 = *(a2 + 24);
        v25 = __OFSUB__(v35, v36);
        v29 = v35 - v36;
        if (!v25)
        {
          goto LABEL_49;
        }

        __break(1u);
LABEL_48:
        v29 = BYTE6(a3);
LABEL_49:
        a4 = v28 + v29;
        if (__OFADD__(v28, v29))
        {
LABEL_266:
          __break(1u);
          goto LABEL_267;
        }

        v6 = swift_slowAlloc();
        if (v14 <= 1)
        {
          if (!v14)
          {
            v31 = BYTE6(a3);
            goto LABEL_81;
          }

          goto LABEL_78;
        }

        if (v14 != 2)
        {
          v31 = 0;
          goto LABEL_81;
        }

        v38 = *(a2 + 16);
        v37 = *(a2 + 24);
        v25 = __OFSUB__(v37, v38);
        v31 = v37 - v38;
        if (!v25)
        {
LABEL_81:
          v25 = __OFADD__(v31, 7);
          v45 = v31 + 7;
          if (!v25)
          {
            if ((v45 & 0x8000000000000000) == 0)
            {
              if (!(v45 >> 16))
              {
                *&v126[16] = v45;
                *v6 = *v126;
                *(v6 + 16) = *&v126[16];
                v46 = v6 + v11;
                *v46 = 1;
                *(v46 + 1) = v13;
                *(v46 + 3) = 0;
                *(v46 + 7) = 0;
                if (v14 <= 1)
                {
                  if (!v14)
                  {
                    __src = a2;
                    v121 = a3;
                    v122 = BYTE2(a3);
                    v123 = BYTE3(a3);
                    v124 = BYTE4(a3);
                    v125 = BYTE5(a3);
                    memcpy((v6 + v28), &__src, BYTE6(a3));
LABEL_116:
                    v58 = *(v119 + 16);
                    v59 = *(v119 + 24);

                    AppleDevice.setRequest(requestType:data:on:)(0x78uLL, v6, v6 + a4, 0, v58, v59);
                  }

LABEL_108:
                  v53 = a2;
                  v14 = (a2 >> 32) - a2;
                  if (a2 >> 32 >= a2)
                  {
                    v54 = __DataStorage._bytes.getter();
                    if (!v54)
                    {
                      __DataStorage._length.getter();
LABEL_321:
                      __break(1u);
                      goto LABEL_322;
                    }

                    v55 = v54;
                    v56 = __DataStorage._offset.getter();
                    if (!__OFSUB__(v53, v56))
                    {
                      a2 = v53 - v56 + v55;
                      v49 = __DataStorage._length.getter();
                      if (a2)
                      {
                        goto LABEL_112;
                      }

                      goto LABEL_321;
                    }

                    goto LABEL_291;
                  }

                  goto LABEL_289;
                }

                if (v14 != 2)
                {
                  goto LABEL_116;
                }

                v47 = *(a2 + 16);
                v13 = *(a2 + 24);
                a2 = __DataStorage._bytes.getter();
                if (a2)
                {
                  v48 = __DataStorage._offset.getter();
                  if (__OFSUB__(v47, v48))
                  {
LABEL_311:
                    __break(1u);
                    goto LABEL_312;
                  }

                  a2 += v47 - v48;
                }

                v25 = __OFSUB__(v13, v47);
                v14 = v13 - v47;
                if (v25)
                {
                  goto LABEL_290;
                }

                v11 = a3 & 0x3FFFFFFFFFFFFFFFLL;
                v49 = __DataStorage._length.getter();
                if (a2)
                {
LABEL_112:
                  if (v49 >= v14)
                  {
                    v57 = v14;
                  }

                  else
                  {
                    v57 = v49;
                  }

                  memmove((v6 + v28), a2, v57);
                  goto LABEL_116;
                }

                __break(1u);
LABEL_94:
                if (__OFSUB__(HIDWORD(a4), a4))
                {
LABEL_288:
                  __break(1u);
LABEL_289:
                  __break(1u);
LABEL_290:
                  __break(1u);
LABEL_291:
                  __break(1u);
                  goto LABEL_292;
                }

                v42 = HIDWORD(a4) - a4;
                goto LABEL_96;
              }

LABEL_269:
              __break(1u);
              goto LABEL_270;
            }

LABEL_268:
            __break(1u);
            goto LABEL_269;
          }

LABEL_267:
          __break(1u);
          goto LABEL_268;
        }

        __break(1u);
LABEL_57:
        LODWORD(v32) = HIDWORD(a4) - a4;
        if (__OFSUB__(HIDWORD(a4), a4))
        {
LABEL_286:
          __break(1u);
          goto LABEL_287;
        }

        v32 = v32;
        goto LABEL_60;
      }

LABEL_26:
      v21 = BYTE6(a3);
      goto LABEL_27;
    }

    v24 = *(a2 + 16);
    v23 = *(a2 + 24);
    v25 = __OFSUB__(v23, v24);
    v21 = v23 - v24;
    if (!v25)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (v14 != 2)
  {
    if (v14 == 1)
    {
      LODWORD(v22) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_282:
        __break(1u);
        goto LABEL_283;
      }

      v22 = v22;
    }

    else
    {
      v22 = BYTE6(a3);
    }

    goto LABEL_36;
  }

  v27 = *(a2 + 16);
  v26 = *(a2 + 24);
  v25 = __OFSUB__(v26, v27);
  v22 = v26 - v27;
  if (v25)
  {
    __break(1u);
    goto LABEL_26;
  }

LABEL_36:
  v25 = __OFADD__(v22, 2);
  v30 = v22 + 2;
  if (v25)
  {
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  v25 = __OFADD__(v30, 4);
  v31 = v30 + 4;
  if (v25)
  {
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  v28 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v28)
    {
      v32 = BYTE6(a5);
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  if (v28 != 2)
  {
    v32 = 0;
    goto LABEL_60;
  }

  v34 = *(a4 + 16);
  v33 = *(a4 + 24);
  v25 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v25)
  {
    __break(1u);
    goto LABEL_45;
  }

LABEL_60:
  v13 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  if (v13 >> 16)
  {
LABEL_265:
    __break(1u);
    goto LABEL_266;
  }

  if (v14 == 2)
  {
    v41 = *(a2 + 16);
    v40 = *(a2 + 24);
    v39 = v40 - v41;
    if (__OFSUB__(v40, v41))
    {
LABEL_285:
      __break(1u);
      goto LABEL_286;
    }

LABEL_68:
    if ((v39 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v39 >> 16))
    {
      if (v28 <= 1)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    __break(1u);
    goto LABEL_257;
  }

  if (v14 == 1)
  {
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_284:
      __break(1u);
      goto LABEL_285;
    }

    v39 = HIDWORD(a2) - a2;
    goto LABEL_68;
  }

  LOWORD(v39) = BYTE6(a3);
  if (v28 <= 1)
  {
LABEL_71:
    if (!v28)
    {
      v42 = v15;
      goto LABEL_100;
    }

    goto LABEL_94;
  }

LABEL_74:
  if (v28 != 2)
  {
    goto LABEL_99;
  }

  v44 = *(a4 + 16);
  v43 = *(a4 + 24);
  v42 = v43 - v44;
  if (__OFSUB__(v43, v44))
  {
    __break(1u);
LABEL_78:
    LODWORD(v31) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_287:
      __break(1u);
      goto LABEL_288;
    }

    v31 = v31;
    goto LABEL_81;
  }

LABEL_96:
  if ((v42 & 0x8000000000000000) != 0)
  {
LABEL_270:
    __break(1u);
    goto LABEL_271;
  }

  if (!(v42 >> 16))
  {
    goto LABEL_100;
  }

  __break(1u);
LABEL_99:
  v42 = 0;
LABEL_100:
  v118 = v11 + 5;
  if (__OFADD__(v11, 5))
  {
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v52 = *(a2 + 16);
      v51 = *(a2 + 24);
      v25 = __OFSUB__(v51, v52);
      v50 = v51 - v52;
      if (v25)
      {
        __break(1u);
        goto LABEL_108;
      }
    }

    else
    {
      v50 = 0;
    }
  }

  else if (v14)
  {
    LODWORD(v50) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v50 = v50;
  }

  else
  {
    v50 = BYTE6(a3);
  }

  v25 = __OFADD__(v118, v50);
  v60 = v118 + v50;
  if (v25)
  {
    goto LABEL_272;
  }

  v25 = __OFADD__(v60, 4);
  v61 = v60 + 4;
  if (v25)
  {
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  v116 = v42;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v65 = *(a4 + 16);
      v64 = *(a4 + 24);
      v25 = __OFSUB__(v64, v65);
      v63 = v64 - v65;
      if (v25)
      {
LABEL_293:
        __break(1u);
        goto LABEL_294;
      }

      v62 = v39;
    }

    else
    {
      v62 = v39;
      v63 = 0;
    }
  }

  else if (v28)
  {
    LODWORD(v63) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_294:
      __break(1u);
      goto LABEL_295;
    }

    v62 = v39;
    v63 = v63;
  }

  else
  {
    v62 = v39;
    v63 = v15;
  }

  if (__OFADD__(v61, v63))
  {
    goto LABEL_274;
  }

  v115 = v61 + v63;
  result = swift_slowAlloc();
  if (v14 <= 1)
  {
    v66 = a5;
    if (!v14)
    {
      v67 = BYTE6(a3);
      goto LABEL_142;
    }

    goto LABEL_139;
  }

  v66 = a5;
  if (v14 != 2)
  {
    v67 = 0;
    goto LABEL_142;
  }

  v69 = *(a2 + 16);
  v68 = *(a2 + 24);
  v25 = __OFSUB__(v68, v69);
  v67 = v68 - v69;
  if (v25)
  {
    __break(1u);
LABEL_139:
    LODWORD(v67) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_295:
      __break(1u);
      goto LABEL_296;
    }

    v67 = v67;
  }

LABEL_142:
  v25 = __OFADD__(v67, 5);
  v70 = v67 + 5;
  if (v25)
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  v25 = __OFADD__(v70, 4);
  v71 = v70 + 4;
  if (v25)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  if (v28 <= 1)
  {
    if (!v28)
    {
      v72 = BYTE6(v66);
      goto LABEL_154;
    }

    goto LABEL_151;
  }

  if (v28 != 2)
  {
    v72 = 0;
    goto LABEL_154;
  }

  v74 = *(a4 + 16);
  v73 = *(a4 + 24);
  v25 = __OFSUB__(v73, v74);
  v72 = v73 - v74;
  if (v25)
  {
    __break(1u);
LABEL_151:
    LODWORD(v72) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_296:
      __break(1u);
      goto LABEL_297;
    }

    v72 = v72;
  }

LABEL_154:
  v25 = __OFADD__(v71, v72);
  v75 = v71 + v72;
  if (v25)
  {
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  if ((v75 & 0x8000000000000000) != 0)
  {
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  if (v75 >> 16)
  {
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  *&v126[16] = v75;
  *result = *v126;
  result[4] = *&v126[16];
  v76 = result + v11;
  *v76 = 2;
  *(v76 + 1) = v13;
  *(v76 + 3) = v62;
  v76[5] = 0;
  v117 = result;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v78 = *(a2 + 16);
      v114 = *(a2 + 24);
      v79 = __DataStorage._bytes.getter();
      if (v79)
      {
        v80 = __DataStorage._offset.getter();
        if (__OFSUB__(v78, v80))
        {
LABEL_312:
          __break(1u);
          goto LABEL_313;
        }

        v79 += v78 - v80;
      }

      v25 = __OFSUB__(v114, v78);
      v81 = v114 - v78;
      if (v25)
      {
        goto LABEL_298;
      }

      result = __DataStorage._length.getter();
      if (!v79)
      {
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      if (result >= v81)
      {
        v82 = v81;
      }

      else
      {
        v82 = result;
      }

      result = memmove(v117 + v118, v79, v82);
      v84 = *(a2 + 16);
      v83 = *(a2 + 24);
      v77 = v83 - v84;
      if (__OFSUB__(v83, v84))
      {
        goto LABEL_300;
      }

      v66 = a5;
    }

    else
    {
      v77 = 0;
    }
  }

  else if (v14)
  {
    if (a2 >> 32 < a2)
    {
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
      goto LABEL_302;
    }

    v85 = __DataStorage._bytes.getter();
    if (!v85)
    {
LABEL_322:
      result = __DataStorage._length.getter();
      goto LABEL_323;
    }

    v86 = v85;
    v87 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v87))
    {
      goto LABEL_299;
    }

    v88 = (a2 - v87 + v86);
    result = __DataStorage._length.getter();
    if (!v88)
    {
LABEL_323:
      __break(1u);
      goto LABEL_324;
    }

    if (result >= (a2 >> 32) - a2)
    {
      v89 = ((a2 >> 32) - a2);
    }

    else
    {
      v89 = result;
    }

    result = memmove(v117 + v118, v88, v89);
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_301;
    }

    v77 = HIDWORD(a2) - a2;
    v66 = a5;
  }

  else
  {
    __src = a2;
    v121 = a3;
    v122 = BYTE2(a3);
    v123 = BYTE3(a3);
    v124 = BYTE4(a3);
    v77 = BYTE6(a3);
    v125 = BYTE5(a3);
    result = memcpy(result + v118, &__src, BYTE6(a3));
    v66 = a5;
  }

  if (__OFADD__(v118, v77))
  {
    goto LABEL_280;
  }

  v90 = v117;
  v91 = v117 + v118 + v77;
  *v91 = v116;
  v91[4] = 0;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v28 = *(a4 + 16);
      v116 = *(a4 + 24);
      a4 = __DataStorage._bytes.getter();
      if (a4)
      {
        v93 = __DataStorage._offset.getter();
        if (__OFSUB__(v28, v93))
        {
LABEL_313:
          __break(1u);
          goto LABEL_314;
        }

        a4 += v28 - v93;
      }

      goto LABEL_216;
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        LODWORD(v96) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_316:
          __break(1u);
          goto LABEL_317;
        }

        v96 = v96;
      }

      else
      {
        v96 = BYTE6(a3);
      }

      goto LABEL_236;
    }

    goto LABEL_208;
  }

  if (!v28)
  {
    __src = a4;
    v121 = v66;
    v122 = BYTE2(v66);
    v123 = BYTE3(v66);
    v124 = BYTE4(v66);
    v125 = BYTE5(v66);
    if (v14 <= 1)
    {
      if (!v14)
      {
        v92 = BYTE6(a3);
LABEL_232:
        v25 = __OFADD__(v118, v92);
        v106 = v118 + v92;
        if (v25)
        {
LABEL_303:
          __break(1u);
          goto LABEL_304;
        }

        v25 = __OFADD__(v106, 4);
        v107 = v106 + 4;
        if (v25)
        {
LABEL_306:
          __break(1u);
          goto LABEL_307;
        }

        v108 = v90;
        memcpy(v90 + v107, &__src, BYTE6(v66));
LABEL_253:
        v112 = *(v119 + 16);
        v113 = *(v119 + 24);

        AppleDevice.setRequest(requestType:data:on:)(0x78uLL, v108, v108 + v115, 0, v112, v113);
      }

LABEL_227:
      LODWORD(v92) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_315:
        __break(1u);
        goto LABEL_316;
      }

      v92 = v92;
      goto LABEL_232;
    }

    if (v14 != 2)
    {
      v92 = 0;
      goto LABEL_232;
    }

    v99 = *(a2 + 16);
    v98 = *(a2 + 24);
    v25 = __OFSUB__(v98, v99);
    v92 = v98 - v99;
    if (!v25)
    {
      goto LABEL_232;
    }

    __break(1u);
LABEL_208:
    if (v14 != 2)
    {
      v96 = 0;
LABEL_236:
      v25 = __OFADD__(v118, v96);
      v96 += v118;
      if (v25)
      {
LABEL_304:
        __break(1u);
        goto LABEL_305;
      }

      v108 = v117;
      if (v96 <= 0x7FFFFFFFFFFFFFFBLL)
      {
        goto LABEL_253;
      }

      __break(1u);
      goto LABEL_239;
    }

    v101 = *(a2 + 16);
    v100 = *(a2 + 24);
    v25 = __OFSUB__(v100, v101);
    v96 = v100 - v101;
    if (!v25)
    {
      goto LABEL_236;
    }

    __break(1u);
    goto LABEL_212;
  }

  v94 = a4;
  v28 = (a4 >> 32) - a4;
  if (a4 >> 32 < a4)
  {
LABEL_302:
    __break(1u);
    goto LABEL_303;
  }

  a4 = __DataStorage._bytes.getter();
  if (a4)
  {
    v95 = __DataStorage._offset.getter();
    if (__OFSUB__(v94, v95))
    {
LABEL_314:
      __break(1u);
      goto LABEL_315;
    }

    a4 += v94 - v95;
  }

  result = __DataStorage._length.getter();
  if (result >= v28)
  {
    v96 = v28;
  }

  else
  {
    v96 = result;
  }

  if (v14 <= 1)
  {
    v66 = v117;
    if (v14)
    {
LABEL_239:
      LODWORD(v97) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_317:
        __break(1u);
        goto LABEL_318;
      }

      v97 = v97;
      goto LABEL_242;
    }

    v97 = BYTE6(a3);
LABEL_242:
    v25 = __OFADD__(v118, v97);
    v109 = v118 + v97;
    if (v25)
    {
LABEL_307:
      __break(1u);
      goto LABEL_308;
    }

    v25 = __OFADD__(v109, 4);
    v110 = v109 + 4;
    if (v25)
    {
LABEL_309:
      __break(1u);
      goto LABEL_310;
    }

    if (a4)
    {
      goto LABEL_252;
    }

    __break(1u);
LABEL_246:
    LODWORD(v104) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_318:
      __break(1u);
      goto LABEL_319;
    }

    v104 = v104;
    goto LABEL_249;
  }

LABEL_212:
  v66 = v117;
  if (v14 != 2)
  {
    v97 = 0;
    goto LABEL_242;
  }

  v103 = *(a2 + 16);
  v102 = *(a2 + 24);
  v25 = __OFSUB__(v102, v103);
  v97 = v102 - v103;
  if (!v25)
  {
    goto LABEL_242;
  }

  __break(1u);
LABEL_216:
  if (__OFSUB__(v116, v28))
  {
LABEL_305:
    __break(1u);
    goto LABEL_306;
  }

  result = __DataStorage._length.getter();
  if (result >= v116 - v28)
  {
    v96 = v116 - v28;
  }

  else
  {
    v96 = result;
  }

  if (v14 <= 1)
  {
    v66 = v117;
    if (!v14)
    {
      v104 = BYTE6(a3);
      goto LABEL_249;
    }

    goto LABEL_246;
  }

  v66 = v117;
  if (v14 == 2)
  {
    v90 = *(a2 + 16);
    v105 = *(a2 + 24);
    v25 = __OFSUB__(v105, v90);
    v104 = v105 - v90;
    if (v25)
    {
      __break(1u);
      goto LABEL_227;
    }
  }

  else
  {
    v104 = 0;
  }

LABEL_249:
  v25 = __OFADD__(v118, v104);
  v111 = v118 + v104;
  if (v25)
  {
LABEL_308:
    __break(1u);
    goto LABEL_309;
  }

  v25 = __OFADD__(v111, 4);
  v110 = v111 + 4;
  if (v25)
  {
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  if (a4)
  {
LABEL_252:
    v108 = v66;
    memmove((v66 + v110), a4, v96);
    goto LABEL_253;
  }

LABEL_325:
  __break(1u);
  return result;
}

_DWORD *IO80211Driver<>.registerService(active:keyData:valueData:)(unsigned __int8 a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v137[4] = 0;
  *&v137[18] = 0;
  *v137 = 1;
  *&v137[10] = a1 ^ 1u;
  KeyPath = swift_getKeyPath();
  v14 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  LOWORD(v16) = v15;

  if (v16)
  {
LABEL_323:
    __break(1u);
  }

  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2 || *(a2 + 16) == *(a2 + 24))
    {
      goto LABEL_14;
    }
  }

  else if (v17)
  {
    if (a2 == a2 >> 32)
    {
LABEL_14:
      *&v137[16] = 0;
      return sub_100113628(v137, &v138, v130, a6, a7, a8, &__src);
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_14;
  }

  if (a5 >> 60 == 15)
  {
    if (v17 != 2)
    {
      if (v17 == 1)
      {
        LODWORD(v18) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_287:
          __break(1u);
          goto LABEL_288;
        }

        v18 = v18;
LABEL_26:
        v16 = v18 + 4;
        if (__OFADD__(v18, 4))
        {
LABEL_263:
          __break(1u);
          goto LABEL_264;
        }

        if ((v16 & 0x8000000000000000) != 0)
        {
LABEL_265:
          __break(1u);
          goto LABEL_266;
        }

        if (v16 >> 16)
        {
LABEL_267:
          __break(1u);
          goto LABEL_268;
        }

        v26 = v14 + 7;
        if (__OFADD__(v14, 7))
        {
LABEL_269:
          __break(1u);
          goto LABEL_270;
        }

        if (v17 != 2)
        {
          if (v17 == 1)
          {
            LODWORD(v27) = HIDWORD(a2) - a2;
            if (__OFSUB__(HIDWORD(a2), a2))
            {
LABEL_289:
              __break(1u);
              goto LABEL_290;
            }

            v27 = v27;
            goto LABEL_48;
          }

          goto LABEL_47;
        }

LABEL_44:
        v34 = *(a2 + 16);
        v33 = *(a2 + 24);
        v23 = __OFSUB__(v33, v34);
        v27 = v33 - v34;
        if (!v23)
        {
          goto LABEL_48;
        }

        __break(1u);
LABEL_47:
        v27 = BYTE6(a3);
LABEL_48:
        a4 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
LABEL_272:
          __break(1u);
          goto LABEL_273;
        }

        KeyPath = swift_slowAlloc();
        if (v17 <= 1)
        {
          if (!v17)
          {
            v29 = BYTE6(a3);
            goto LABEL_80;
          }

          goto LABEL_77;
        }

        if (v17 != 2)
        {
          v29 = 0;
          goto LABEL_80;
        }

        v36 = *(a2 + 16);
        v35 = *(a2 + 24);
        v23 = __OFSUB__(v35, v36);
        v29 = v35 - v36;
        if (!v23)
        {
LABEL_80:
          v23 = __OFADD__(v29, 7);
          v43 = v29 + 7;
          if (!v23)
          {
            if ((v43 & 0x8000000000000000) == 0)
            {
              if (!(v43 >> 16))
              {
                *&v137[16] = v43;
                *KeyPath = *v137;
                *(KeyPath + 16) = *&v137[16];
                v44 = KeyPath + v14;
                *v44 = 1;
                *(v44 + 1) = v16;
                *(v44 + 3) = 0;
                *(v44 + 7) = 0;
                if (v17 <= 1)
                {
                  if (!v17)
                  {
                    __src = a2;
                    v132 = a3;
                    v133 = BYTE2(a3);
                    v134 = BYTE3(a3);
                    v135 = BYTE4(a3);
                    v136 = BYTE5(a3);
                    memcpy((KeyPath + v26), &__src, BYTE6(a3));
LABEL_232:
                    v109 = *(a8 + 8);
                    v110 = *(a7 + 8);
                    swift_getAssociatedTypeWitness();
                    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
                    sub_10010F778(120, KeyPath, KeyPath + a4, a6, v109, v110, AssociatedConformanceWitness);
                  }

LABEL_104:
                  if (a2 >> 32 >= a2)
                  {
                    v52 = __DataStorage._bytes.getter();
                    if (!v52)
                    {
                      __DataStorage._length.getter();
LABEL_325:
                      __break(1u);
LABEL_326:
                      __break(1u);
                      goto LABEL_327;
                    }

                    v53 = v52;
                    v54 = __DataStorage._offset.getter();
                    if (!__OFSUB__(a2, v54))
                    {
                      v55 = (a2 - v54 + v53);
                      v56 = __DataStorage._length.getter();
                      if (v55)
                      {
                        if (v56 >= (a2 >> 32) - a2)
                        {
                          v57 = (a2 >> 32) - a2;
                        }

                        else
                        {
                          v57 = v56;
                        }

                        v58 = (KeyPath + v26);
                        v59 = v55;
LABEL_231:
                        memmove(v58, v59, v57);
                        goto LABEL_232;
                      }

                      goto LABEL_325;
                    }

                    goto LABEL_297;
                  }

                  goto LABEL_295;
                }

                if (v17 != 2)
                {
                  goto LABEL_232;
                }

                v17 = *(a2 + 16);
                a5 = *(a2 + 24);
                v45 = __DataStorage._bytes.getter();
                if (v45)
                {
                  v46 = v45;
                  v47 = __DataStorage._offset.getter();
                  if (__OFSUB__(v17, v47))
                  {
LABEL_315:
                    __break(1u);
                    goto LABEL_316;
                  }

                  v48 = (v17 - v47 + v46);
                  goto LABEL_225;
                }

LABEL_224:
                v48 = 0;
LABEL_225:
                v23 = __OFSUB__(a5, v17);
                v107 = a5 - v17;
                if (!v23)
                {
                  v108 = __DataStorage._length.getter();
                  if (v48)
                  {
                    if (v108 >= v107)
                    {
                      v57 = v107;
                    }

                    else
                    {
                      v57 = v108;
                    }

                    v58 = (KeyPath + v26);
                    v59 = v48;
                    goto LABEL_231;
                  }

                  goto LABEL_326;
                }

                goto LABEL_296;
              }

              goto LABEL_275;
            }

LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
            goto LABEL_276;
          }

LABEL_273:
          __break(1u);
          goto LABEL_274;
        }

        __break(1u);
LABEL_56:
        LODWORD(v30) = HIDWORD(a4) - a4;
        if (__OFSUB__(HIDWORD(a4), a4))
        {
LABEL_292:
          __break(1u);
          goto LABEL_293;
        }

        v30 = v30;
        goto LABEL_59;
      }

LABEL_25:
      v18 = BYTE6(a3);
      goto LABEL_26;
    }

    v22 = *(a2 + 16);
    v21 = *(a2 + 24);
    v23 = __OFSUB__(v21, v22);
    v18 = v21 - v22;
    if (!v23)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (v17 != 2)
  {
    if (v17 == 1)
    {
      LODWORD(v20) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_288:
        __break(1u);
        goto LABEL_289;
      }

      v20 = v20;
    }

    else
    {
      v20 = BYTE6(a3);
    }

    goto LABEL_35;
  }

  v25 = *(a2 + 16);
  v24 = *(a2 + 24);
  v23 = __OFSUB__(v24, v25);
  v20 = v24 - v25;
  if (v23)
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_35:
  v23 = __OFADD__(v20, 2);
  v28 = v20 + 2;
  if (v23)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v23 = __OFADD__(v28, 4);
  v29 = v28 + 4;
  if (v23)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  v26 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v26)
    {
      v30 = BYTE6(a5);
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  if (v26 != 2)
  {
    v30 = 0;
    goto LABEL_59;
  }

  v32 = *(a4 + 16);
  v31 = *(a4 + 24);
  v23 = __OFSUB__(v31, v32);
  v30 = v31 - v32;
  if (v23)
  {
    __break(1u);
    goto LABEL_44;
  }

LABEL_59:
  v37 = v29 + v30;
  if (__OFADD__(v29, v30))
  {
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_270:
    __break(1u);
    goto LABEL_271;
  }

  if (v37 >> 16)
  {
LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  if (v17 == 2)
  {
    v39 = *(a2 + 16);
    v38 = *(a2 + 24);
    v16 = v38 - v39;
    if (__OFSUB__(v38, v39))
    {
LABEL_291:
      __break(1u);
      goto LABEL_292;
    }
  }

  else
  {
    if (v17 != 1)
    {
      LOWORD(v16) = BYTE6(a3);
      if (v26 <= 1)
      {
        goto LABEL_70;
      }

      goto LABEL_73;
    }

    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_290:
      __break(1u);
      goto LABEL_291;
    }

    v16 = HIDWORD(a2) - a2;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_262;
  }

  if (v16 >> 16)
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  if (v26 <= 1)
  {
LABEL_70:
    if (!v26)
    {
      LOWORD(v40) = BYTE6(a5);
      goto LABEL_96;
    }

    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_294:
      __break(1u);
LABEL_295:
      __break(1u);
LABEL_296:
      __break(1u);
LABEL_297:
      __break(1u);
      goto LABEL_298;
    }

    v40 = HIDWORD(a4) - a4;
    goto LABEL_92;
  }

LABEL_73:
  if (v26 != 2)
  {
LABEL_95:
    LOWORD(v40) = 0;
    goto LABEL_96;
  }

  v42 = *(a4 + 16);
  v41 = *(a4 + 24);
  v40 = v41 - v42;
  if (__OFSUB__(v41, v42))
  {
    __break(1u);
LABEL_77:
    LODWORD(v29) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_293:
      __break(1u);
      goto LABEL_294;
    }

    v29 = v29;
    goto LABEL_80;
  }

LABEL_92:
  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  if (v40 >> 16)
  {
    __break(1u);
    goto LABEL_95;
  }

LABEL_96:
  v126 = v14 + 5;
  if (__OFADD__(v14, 5))
  {
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v51 = *(a2 + 16);
      v50 = *(a2 + 24);
      v23 = __OFSUB__(v50, v51);
      v49 = v50 - v51;
      if (v23)
      {
        __break(1u);
        goto LABEL_104;
      }
    }

    else
    {
      v49 = 0;
    }
  }

  else if (v17)
  {
    LODWORD(v49) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_298:
      __break(1u);
      goto LABEL_299;
    }

    v49 = v49;
  }

  else
  {
    v49 = BYTE6(a3);
  }

  v23 = __OFADD__(v126, v49);
  v60 = v126 + v49;
  if (v23)
  {
    goto LABEL_278;
  }

  v23 = __OFADD__(v60, 4);
  v61 = v60 + 4;
  if (v23)
  {
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  v124 = v37;
  if (v26 <= 1)
  {
    if (!v26)
    {
      v62 = BYTE6(a5);
      goto LABEL_127;
    }

    goto LABEL_124;
  }

  if (v26 != 2)
  {
    v62 = 0;
    goto LABEL_127;
  }

  v64 = *(a4 + 16);
  v63 = *(a4 + 24);
  v23 = __OFSUB__(v63, v64);
  v62 = v63 - v64;
  if (v23)
  {
    __break(1u);
LABEL_124:
    LODWORD(v62) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_299:
      __break(1u);
      goto LABEL_300;
    }

    v62 = v62;
  }

LABEL_127:
  v123 = v40;
  if (__OFADD__(v61, v62))
  {
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v122 = v61 + v62;
  result = swift_slowAlloc();
  v65 = result;
  if (v17 <= 1)
  {
    if (!v17)
    {
      v66 = BYTE6(a3);
      goto LABEL_138;
    }

    goto LABEL_135;
  }

  if (v17 != 2)
  {
    v66 = 0;
    goto LABEL_138;
  }

  v68 = *(a2 + 16);
  v67 = *(a2 + 24);
  v23 = __OFSUB__(v67, v68);
  v66 = v67 - v68;
  if (v23)
  {
    __break(1u);
LABEL_135:
    LODWORD(v66) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_300:
      __break(1u);
      goto LABEL_301;
    }

    v66 = v66;
  }

LABEL_138:
  v23 = __OFADD__(v66, 5);
  v69 = v66 + 5;
  if (v23)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  v23 = __OFADD__(v69, 4);
  v70 = v69 + 4;
  if (v23)
  {
LABEL_282:
    __break(1u);
    goto LABEL_283;
  }

  if (v26 <= 1)
  {
    if (!v26)
    {
      v71 = BYTE6(a5);
      goto LABEL_150;
    }

    goto LABEL_147;
  }

  if (v26 != 2)
  {
    v71 = 0;
    goto LABEL_150;
  }

  v73 = *(a4 + 16);
  v72 = *(a4 + 24);
  v23 = __OFSUB__(v72, v73);
  v71 = v72 - v73;
  if (v23)
  {
    __break(1u);
LABEL_147:
    LODWORD(v71) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_301:
      __break(1u);
      goto LABEL_302;
    }

    v71 = v71;
  }

LABEL_150:
  v23 = __OFADD__(v70, v71);
  v74 = v70 + v71;
  if (v23)
  {
LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  if ((v74 & 0x8000000000000000) != 0)
  {
LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  if (v74 >> 16)
  {
LABEL_285:
    __break(1u);
    goto LABEL_286;
  }

  *&v137[16] = v74;
  *result = *v137;
  result[4] = *&v137[16];
  v75 = result + v14;
  *v75 = 2;
  *(v75 + 1) = v124;
  *(v75 + 3) = v16;
  v75[5] = 0;
  v125 = result;
  if (v17 <= 1)
  {
    if (!v17)
    {
      __src = a2;
      v132 = a3;
      v133 = BYTE2(a3);
      v134 = BYTE3(a3);
      v135 = BYTE4(a3);
      v76 = BYTE6(a3);
      v136 = BYTE5(a3);
      result = memcpy(result + v126, &__src, BYTE6(a3));
      goto LABEL_178;
    }

    goto LABEL_168;
  }

  if (v17 != 2)
  {
    v76 = 0;
    goto LABEL_178;
  }

  v77 = *(a2 + 16);
  v121 = *(a2 + 24);
  v78 = __DataStorage._bytes.getter();
  if (v78)
  {
    v79 = __DataStorage._offset.getter();
    if (__OFSUB__(v77, v79))
    {
LABEL_316:
      __break(1u);
      goto LABEL_317;
    }

    v78 += v77 - v79;
  }

  v23 = __OFSUB__(v121, v77);
  v80 = v121 - v77;
  if (v23)
  {
    goto LABEL_303;
  }

  result = __DataStorage._length.getter();
  if (!v78)
  {
LABEL_329:
    __break(1u);
    goto LABEL_330;
  }

  if (result >= v80)
  {
    v81 = v80;
  }

  else
  {
    v81 = result;
  }

  v65 = v125;
  result = memmove(v125 + v126, v78, v81);
  v83 = *(a2 + 16);
  v82 = *(a2 + 24);
  v76 = v82 - v83;
  if (__OFSUB__(v82, v83))
  {
    __break(1u);
LABEL_168:
    if (a2 >> 32 < a2)
    {
LABEL_302:
      __break(1u);
LABEL_303:
      __break(1u);
LABEL_304:
      __break(1u);
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v84 = __DataStorage._bytes.getter();
    if (!v84)
    {
LABEL_327:
      result = __DataStorage._length.getter();
      goto LABEL_328;
    }

    v85 = v84;
    v86 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v86))
    {
      goto LABEL_304;
    }

    v87 = (a2 - v86 + v85);
    result = __DataStorage._length.getter();
    if (!v87)
    {
LABEL_328:
      __break(1u);
      goto LABEL_329;
    }

    if (result >= (a2 >> 32) - a2)
    {
      v88 = ((a2 >> 32) - a2);
    }

    else
    {
      v88 = result;
    }

    result = memmove(v125 + v126, v87, v88);
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_305;
    }

    v76 = HIDWORD(a2) - a2;
    v65 = v125;
  }

LABEL_178:
  if (__OFADD__(v126, v76))
  {
LABEL_286:
    __break(1u);
    goto LABEL_287;
  }

  v89 = v65 + v126 + v76;
  *v89 = v123;
  *(v89 + 1) = 0;
  v89[4] = 0;
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v91 = *(a4 + 16);
      v26 = *(a4 + 24);
      a4 = __DataStorage._bytes.getter();
      if (a4)
      {
        v92 = __DataStorage._offset.getter();
        if (__OFSUB__(v91, v92))
        {
LABEL_317:
          __break(1u);
          goto LABEL_318;
        }

        a4 += v91 - v92;
      }

      v23 = __OFSUB__(v26, v91);
      v93 = v26 - v91;
      if (v23)
      {
        goto LABEL_309;
      }

      result = __DataStorage._length.getter();
      if (result >= v93)
      {
        v94 = v93;
      }

      else
      {
        v94 = result;
      }

      if (v17 <= 1)
      {
        if (v17)
        {
LABEL_245:
          LODWORD(v95) = HIDWORD(a2) - a2;
          if (__OFSUB__(HIDWORD(a2), a2))
          {
LABEL_321:
            __break(1u);
            goto LABEL_322;
          }

          v95 = v95;
          goto LABEL_250;
        }

        v95 = BYTE6(a3);
        goto LABEL_250;
      }

LABEL_216:
      if (v17 == 2)
      {
        v104 = *(a2 + 16);
        v103 = *(a2 + 24);
        v23 = __OFSUB__(v103, v104);
        v95 = v103 - v104;
        if (!v23)
        {
          goto LABEL_250;
        }

        __break(1u);
        goto LABEL_220;
      }

      v95 = 0;
LABEL_250:
      v23 = __OFADD__(v126, v95);
      v115 = v126 + v95;
      if (v23)
      {
LABEL_311:
        __break(1u);
        goto LABEL_312;
      }

      v23 = __OFADD__(v115, 4);
      v116 = v115 + 4;
      if (v23)
      {
LABEL_313:
        __break(1u);
        goto LABEL_314;
      }

      if (a4)
      {
        goto LABEL_258;
      }

      __break(1u);
      goto LABEL_254;
    }

    if (v17 <= 1)
    {
      if (v17)
      {
        LODWORD(v94) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_320:
          __break(1u);
          goto LABEL_321;
        }

        v94 = v94;
      }

      else
      {
        v94 = BYTE6(a3);
      }

      goto LABEL_242;
    }

LABEL_212:
    if (v17 != 2)
    {
      v94 = 0;
LABEL_242:
      v23 = __OFADD__(v126, v94);
      v94 += v126;
      if (v23)
      {
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
        goto LABEL_310;
      }

      v114 = v125;
      if (v94 <= 0x7FFFFFFFFFFFFFFBLL)
      {
        goto LABEL_259;
      }

      __break(1u);
      goto LABEL_245;
    }

    v102 = *(a2 + 16);
    v101 = *(a2 + 24);
    v23 = __OFSUB__(v101, v102);
    v94 = v101 - v102;
    if (!v23)
    {
      goto LABEL_242;
    }

    __break(1u);
    goto LABEL_216;
  }

  if (!v26)
  {
    __src = a4;
    v132 = a5;
    v133 = BYTE2(a5);
    v134 = BYTE3(a5);
    v135 = BYTE4(a5);
    v136 = BYTE5(a5);
    if (v17 <= 1)
    {
      if (v17)
      {
        LODWORD(v90) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_319:
          __break(1u);
          goto LABEL_320;
        }

        v90 = v90;
      }

      else
      {
        v90 = BYTE6(a3);
      }

      goto LABEL_238;
    }

    if (v17 != 2)
    {
      v90 = 0;
LABEL_238:
      v23 = __OFADD__(v126, v90);
      v112 = v126 + v90;
      if (v23)
      {
LABEL_307:
        __break(1u);
        goto LABEL_308;
      }

      v23 = __OFADD__(v112, 4);
      v113 = v112 + 4;
      if (v23)
      {
LABEL_310:
        __break(1u);
        goto LABEL_311;
      }

      v114 = v125;
      memcpy(v125 + v113, &__src, BYTE6(a5));
LABEL_259:
      v118 = *(a8 + 8);
      v119 = *(a7 + 8);
      swift_getAssociatedTypeWitness();
      v120 = swift_getAssociatedConformanceWitness();
      sub_10010F778(120, v114, v114 + v122, a6, v118, v119, v120);
    }

    v100 = *(a2 + 16);
    v99 = *(a2 + 24);
    v23 = __OFSUB__(v99, v100);
    v90 = v99 - v100;
    if (!v23)
    {
      goto LABEL_238;
    }

    __break(1u);
    goto LABEL_212;
  }

  v96 = a4;
  v26 = (a4 >> 32) - a4;
  if (a4 >> 32 < a4)
  {
LABEL_306:
    __break(1u);
    goto LABEL_307;
  }

  a4 = __DataStorage._bytes.getter();
  if (a4)
  {
    v97 = __DataStorage._offset.getter();
    if (__OFSUB__(v96, v97))
    {
LABEL_318:
      __break(1u);
      goto LABEL_319;
    }

    a4 += v96 - v97;
  }

  result = __DataStorage._length.getter();
  if (result >= v26)
  {
    v94 = v26;
  }

  else
  {
    v94 = result;
  }

  if (v17 <= 1)
  {
    if (v17)
    {
      LODWORD(v98) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_322:
        __break(1u);
        goto LABEL_323;
      }

      v98 = v98;
    }

    else
    {
      v98 = BYTE6(a3);
    }

    goto LABEL_255;
  }

LABEL_220:
  KeyPath = v8;
  if (v17 != 2)
  {
LABEL_254:
    v98 = 0;
    goto LABEL_255;
  }

  v106 = *(a2 + 16);
  v105 = *(a2 + 24);
  v23 = __OFSUB__(v105, v106);
  v98 = v105 - v106;
  if (v23)
  {
    __break(1u);
    goto LABEL_224;
  }

LABEL_255:
  v23 = __OFADD__(v126, v98);
  v117 = v126 + v98;
  if (v23)
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v23 = __OFADD__(v117, 4);
  v116 = v117 + 4;
  if (v23)
  {
LABEL_314:
    __break(1u);
    goto LABEL_315;
  }

  if (a4)
  {
LABEL_258:
    v114 = v125;
    memmove(v125 + v116, a4, v94);
    goto LABEL_259;
  }

LABEL_330:
  __break(1u);
  return result;
}

uint64_t sub_1000F1A00(uint64_t a1)
{
  sub_10005DC58(&qword_10058D450, &unk_100486D78);
  __chkstk_darwin();
  v4 = &v43[-2] - v3;
  v5 = type metadata accessor for AWDLPeer(0);
  sub_100012400(a1 + v5[14], v4, &qword_10058D450, &unk_100486D78);
  v6 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_100016290(v4, &qword_10058D450, &unk_100486D78);
    LOWORD(v7) = 0;
  }

  else
  {
    v8 = &v4[*(v6 + 140)];
    v7 = *v8;
    v9 = v8[4];
    sub_10003B8D4(v4, type metadata accessor for AWDLActionFrame.DataPathState);
    if (v9)
    {
      LOWORD(v7) = 0;
    }

    else if (HIWORD(v7))
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  v10 = a1 + v5[12];
  v11 = *(v10 + 40);
  v12 = (a1 + v5[21]);
  if (*(v12 + 4))
  {
    v13 = 0;
  }

  else
  {
    v13 = *v12;
  }

  LODWORD(v14) = HIWORD(v13);
  if (!v11)
  {
    if (!v14)
    {
      LOWORD(v17) = 0;
      LOWORD(v15) = 0;
      LOWORD(v16) = 0;
      LOWORD(v18) = 0;
      goto LABEL_14;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v14)
  {
    goto LABEL_37;
  }

  v14 = *(v10 + 8);
  v15 = *v10 >> 16;
  v16 = HIWORD(v14);
  v17 = HIDWORD(v14);
  v18 = HIWORD(*v10);
LABEL_14:
  v19 = a1 + v5[24];
  if (*(v19 + 8) == 1)
  {
    v19 = a1 + v5[23];
    if (*(v19 + 8))
    {
      LOBYTE(v20) = 0;
      goto LABEL_19;
    }
  }

  v20 = *v19;
  if (v20 < -128)
  {
    goto LABEL_38;
  }

  if (v20 > 127)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_19:
  if (v11)
  {
    v21 = *(v10 + 28);
  }

  else
  {
    v21 = 0;
  }

  v22 = (a1 + v5[9]);
  if ((v22[6] & 1) == 0)
  {
    v24 = v22[2];
    if ((v24 & 0xFFFFFF00) == 0)
    {
      v35 = (a1 + v5[22]);
      v34 = *v35;
      if (*(v35 + 4))
      {
        v34 = 0;
      }

      v36 = v22[3];
      if (v22[4])
      {
        LODWORD(v25) = dword_100487564[v36 >> 32];
        if ((v36 & 1) == 0)
        {
LABEL_31:
          v23 = HIDWORD(v24);
LABEL_34:
          v26 = *v22;
          v27 = v26 >> 8;
          v28 = v26 >> 16;
          v29 = v26 >> 24;
          v30 = HIDWORD(v26);
          v31 = v26 >> 40;
          goto LABEL_35;
        }
      }

      else
      {
        v25 = HIDWORD(v36);
        if ((v36 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v23) = dword_100487564[v24 >> 32];
      goto LABEL_34;
    }

LABEL_40:
    __break(1u);
  }

  LODWORD(v23) = 0;
  LOBYTE(v24) = 0;
  LODWORD(v25) = 0;
  LOBYTE(v26) = 0;
  LOBYTE(v27) = 0;
  LOBYTE(v28) = 0;
  LOBYTE(v29) = 0;
  LOBYTE(v30) = 0;
  LOBYTE(v31) = 0;
  v32 = (a1 + v5[22]);
  v33 = *(v32 + 4);
  v34 = *v32;
  if (v33)
  {
    v34 = 0;
  }

LABEL_35:
  v37 = (a1 + v5[5]);
  v38 = *(v37 + 2);
  v43[0] = v7;
  v43[1] = v15;
  v43[2] = v13;
  v43[3] = v14;
  v43[4] = v16;
  v43[5] = v17;
  v43[6] = v18;
  v44 = v20;
  v45 = 0;
  v46 = v21;
  v47 = 0;
  v48 = v24;
  v49 = v34;
  v50 = v25;
  v51 = v23;
  v52 = v26;
  v53 = v27;
  v54 = v28;
  v55 = v29;
  v56 = v30;
  v57 = v31;
  v58 = *v37;
  v59 = v38;
  v39 = *(v1 + 16);
  v40 = *(v1 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0xE5uLL, v43, &v60, 0, v39, v40);
}

uint64_t IO80211Driver<>.elect(peer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10005DC58(&qword_10058D450, &unk_100486D78);
  __chkstk_darwin();
  v9 = v51 - v8 + 4;
  v10 = type metadata accessor for AWDLPeer(0);
  sub_100012400(a1 + v10[14], v9, &qword_10058D450, &unk_100486D78);
  v11 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  if ((*(*(v11 - 8) + 48))(v9, 1, v11) == 1)
  {
    result = sub_100016290(v9, &qword_10058D450, &unk_100486D78);
    LOWORD(v13) = 0;
  }

  else
  {
    v14 = &v9[*(v11 + 140)];
    v13 = *v14;
    v15 = v14[4];
    result = sub_10003B8D4(v9, type metadata accessor for AWDLActionFrame.DataPathState);
    if (v15)
    {
      LOWORD(v13) = 0;
    }

    else if (HIWORD(v13))
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  v16 = a1 + v10[12];
  v17 = *(v16 + 40);
  v18 = (a1 + v10[21]);
  if (*(v18 + 4))
  {
    v19 = 0;
  }

  else
  {
    v19 = *v18;
  }

  LODWORD(v20) = HIWORD(v19);
  if (!v17)
  {
    if (!v20)
    {
      LOWORD(v23) = 0;
      LOWORD(v21) = 0;
      LOWORD(v22) = 0;
      LOWORD(v24) = 0;
      goto LABEL_14;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v20)
  {
    goto LABEL_37;
  }

  v20 = *(v16 + 8);
  v21 = *v16 >> 16;
  v22 = HIWORD(v20);
  v23 = HIDWORD(v20);
  v24 = HIWORD(*v16);
LABEL_14:
  v25 = a1 + v10[24];
  if (*(v25 + 8) == 1)
  {
    v25 = a1 + v10[23];
    if (*(v25 + 8))
    {
      LOBYTE(v26) = 0;
      goto LABEL_19;
    }
  }

  v26 = *v25;
  if (v26 < -128)
  {
    goto LABEL_38;
  }

  if (v26 > 127)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_19:
  if (v17)
  {
    v27 = *(v16 + 28);
  }

  else
  {
    v27 = 0;
  }

  v28 = (a1 + v10[9]);
  if (v28[6])
  {
    LODWORD(v29) = 0;
    LOBYTE(v30) = 0;
    LODWORD(v31) = 0;
    LOBYTE(v32) = 0;
    LOBYTE(v33) = 0;
    LOBYTE(v34) = 0;
    LOBYTE(v35) = 0;
    LOBYTE(v36) = 0;
    LOBYTE(v37) = 0;
    v38 = (a1 + v10[22]);
    v39 = *(v38 + 4);
    v40 = *v38;
    if (v39)
    {
      v40 = 0;
    }

    goto LABEL_35;
  }

  v30 = v28[2];
  if ((v30 & 0xFFFFFF00) == 0)
  {
    v41 = (a1 + v10[22]);
    v40 = *v41;
    if (*(v41 + 4))
    {
      v40 = 0;
    }

    v42 = v28[3];
    if (v28[4])
    {
      LODWORD(v31) = dword_100487564[v42 >> 32];
      if ((v42 & 1) == 0)
      {
LABEL_31:
        v29 = HIDWORD(v30);
LABEL_34:
        v32 = *v28;
        v33 = v32 >> 8;
        v34 = v32 >> 16;
        v35 = v32 >> 24;
        v36 = HIDWORD(v32);
        v37 = v32 >> 40;
LABEL_35:
        v43 = (a1 + v10[5]);
        v44 = *(v43 + 2);
        v51[0] = v13;
        v51[1] = v21;
        v51[2] = v19;
        v51[3] = v20;
        v51[4] = v22;
        v51[5] = v23;
        v51[6] = v24;
        v52 = v26;
        v53 = 0;
        v54 = v27;
        v55 = 0;
        v56 = v30;
        v57 = v40;
        v58 = v31;
        v59 = v29;
        v60 = v32;
        v61 = v33;
        v62 = v34;
        v63 = v35;
        v64 = v36;
        v65 = v37;
        v66 = *v43;
        v67 = v44;
        type metadata accessor for awdl_peer_advert_add(0);
        v46 = v45;
        v47 = *(a4 + 8);
        v48 = *(a3 + 8);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        return sub_100110D80(229, v51, a2, v46, v47, v48, AssociatedConformanceWitness);
      }
    }

    else
    {
      v31 = HIDWORD(v42);
      if ((v42 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    LODWORD(v29) = dword_100487564[v30 >> 32];
    goto LABEL_34;
  }

LABEL_40:
  __break(1u);
  return result;
}

void *sub_1000F21B4(uint64_t a1)
{
  __chkstk_darwin();
  v2 = v1;
  sub_10010FCE0(0xDFuLL, 0, 0, __src);
  memcpy(v4, __src, 0xE88uLL);
  sub_100119F84(v4);
  memcpy(v6, v4, sizeof(v6));
  return memcpy(v2, v6, 0xE89uLL);
}

void *IO80211Driver<>.statistics.getter(uint64_t a1)
{
  __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for apple80211_awdl_statistics(0);
  v10 = v9;
  v11 = *(v2 + 8);
  v12 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(223, v10, 0, 0, v6, v10, v11, v12, AssociatedConformanceWitness);
  memcpy(__dst, __src, 0xE88uLL);
  sub_100119F84(__dst);
  memcpy(v17, __dst, sizeof(v17));
  return memcpy(v8, v17, 0xE89uLL);
}

void *sub_1000F23BC(uint64_t a1)
{
  __chkstk_darwin();
  v2 = v1;
  sub_10010FDD4(0x157uLL, 0, 0, __src);
  memcpy(v4, __src, sizeof(v4));
  NANBitmap.Channel.operatingClass.getter();
  memcpy(v6, v4, sizeof(v6));
  return memcpy(v2, v6, 0xFB8uLL);
}

void *IO80211Driver<>.lowLatencyStatistics.getter(uint64_t a1)
{
  __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  type metadata accessor for apple80211_awdl_low_latency_statistics(0);
  v10 = v9;
  v11 = *(v2 + 8);
  v12 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(343, v10, 0, 0, v6, v10, v11, v12, AssociatedConformanceWitness);
  memcpy(__dst, __src, sizeof(__dst));
  NANBitmap.Channel.operatingClass.getter();
  memcpy(v17, __dst, sizeof(v17));
  return memcpy(v8, v17, 0xFB8uLL);
}

uint64_t sub_1000F25E8@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for NANDriverCapabilities(0);
  __chkstk_darwin();
  v8 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v121 - v9;
  v11 = swift_slowAlloc();
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 28) = 0u;
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[5];

  AppleDevice.getRequest(requestType:data:on:)(0x143uLL, v11, (v11 + 44), 0, v12, v13);
  if (v3)
  {
  }

  else
  {
    v137 = v8;
    v145 = v4;
    *&v147 = v6;
    v144 = a1;
    v146 = v10;

    v16 = *v11;
    *&v148 = v11[1];
    LODWORD(v140) = v11[2];
    v138 = *(v11 + 2);
    LODWORD(v139) = v11[6];
    *&v141 = v11[7];
    *&v142 = v11[8];
    v143 = v11[9];
    v17 = v11[10];
    v18 = v11[11];
    v19 = v11[12];
    v20 = v11[13];
    v21 = v11[3];

    v22 = NANBitmap.Band.bands.getter(v21);
    sub_10005DC58(&qword_10058B3C8, &qword_10047F4E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100483520;
    v24 = sub_100286B80(v16, 0, 4uLL);
    LODWORD(v133) = v20;
    v134 = v17;
    v135 = v18;
    v136 = v19;
    *(inited + 32) = v24;
    v25 = sub_100286B80(v148, 4, 4uLL);
    *&v148 = v14;
    *(inited + 33) = v25;
    v26 = v25;

    if ((v26 & ~v24) != 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27 | v24;
    v29 = v147;
    v30 = *(v147 + 32);
    v31 = v146;
    *&v146[v30] = v138;
    v32 = enum case for DispatchTimeInterval.milliseconds(_:);
    v33 = type metadata accessor for DispatchTimeInterval();
    (*(*(v33 - 8) + 104))(v31 + v30, v32, v33);
    v34 = v139 != 0;
    v35 = v133 == 0;
    v36 = v31 + v29[17];
    *v36 = 0u;
    *(v36 + 16) = 0u;
    *(v36 + 32) = 1;
    v37 = v31 + v29[18];
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 0;
    *(v37 + 20) = 1;
    v38 = v31 + v29[19];
    *(v38 + 32) = 0;
    *v38 = 0u;
    *(v38 + 16) = 0u;
    *(v38 + 40) = 1;
    *v31 = v22;
    *(v31 + 8) = &off_100556270;
    *(v31 + 16) = v140;
    *(v31 + 17) = v28;
    *(v31 + v29[9]) = v141;
    *(v31 + v29[10]) = v142;
    *(v31 + v29[11]) = v143;
    *(v31 + v29[12]) = v134;
    *(v31 + v29[13]) = v135;
    *(v31 + v29[14]) = v136;
    *(v31 + v29[15]) = v34;
    v39 = !v35;
    *(v31 + v29[16]) = v39;
    v143 = OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *&v149 = swift_slowAlloc();
      v43 = v149;
      *v42 = 136315138;
      swift_beginAccess();
      sub_100119FA0(v31, v137, type metadata accessor for NANDriverCapabilities);
      v44 = String.init<A>(describing:)();
      v46 = sub_100002320(v44, v45, &v149);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "NAN Capabilities: [%s]", v42, 0xCu);
      sub_100002A00(v43);
    }

    v47 = v144;
    v48 = swift_slowAlloc();
    *v48 = 0u;
    v48[1] = 0u;

    AppleDevice.getRequest(requestType:data:on:)(0x9AuLL, v48, (v48 + 2), 0, 0x306C647761, 0xE500000000000000);

    v49 = v48[1];
    v142 = *v48;
    v141 = v49;

    swift_beginAccess();
    v50 = v147;
    v51 = v31 + *(v147 + 68);
    v52 = v141;
    *v51 = v142;
    *(v51 + 16) = v52;
    *(v51 + 32) = 0;
    v53 = v31 + v50[17];
    if ((*(v53 + 32) & 1) == 0)
    {
      v54 = *(v53 + 16);
      v55 = *v53;
      v56 = *(v53 + 8);
      v57 = *(v53 + 24);
      *&v142 = apple80211_ht_capability.maxMCS_maxNSS.getter(*v53, v56, v54, v57);
      v59 = v58;
      v60 = Logger.logObject.getter();
      LODWORD(v141) = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v60, v141))
      {
        v61 = HIWORD(v55);
        v137 = HIBYTE(v57);
        v136 = v57 >> 24;
        v135 = v57 >> 8;
        v134 = HIBYTE(v54);
        v133 = HIWORD(v54);
        v132 = v54 >> 40;
        v131 = HIDWORD(v54);
        v130 = v54 >> 24;
        v129 = v54 >> 16;
        v128 = v54 >> 8;
        v127 = HIBYTE(v56);
        v126 = HIWORD(v56);
        v125 = v56 >> 40;
        v124 = HIDWORD(v56);
        v123 = v56 >> 24;
        v122 = v56 >> 16;
        v121 = v56 >> 8;
        v139 = v59;
        v62 = swift_slowAlloc();
        v138 = v60;
        v63 = v62;
        v140 = swift_slowAlloc();
        v155 = v140;
        *v63 = 136316418;
        *&v149 = v55;
        BYTE8(v149) = v56;
        BYTE9(v149) = v121;
        BYTE10(v149) = v122;
        BYTE11(v149) = v123;
        BYTE12(v149) = v124;
        BYTE13(v149) = v125;
        BYTE14(v149) = v126;
        HIBYTE(v149) = v127;
        LOBYTE(v150) = v54;
        BYTE1(v150) = v128;
        BYTE2(v150) = v129;
        BYTE3(v150) = v130;
        BYTE4(v150) = v131;
        BYTE5(v150) = v132;
        BYTE6(v150) = v133;
        BYTE7(v150) = v134;
        BYTE8(v150) = v57;
        *(&v150 + 9) = v135;
        *(&v150 + 11) = v136;
        HIBYTE(v150) = v137;
        type metadata accessor for apple80211_ht_capability(0);
        v64 = String.init<A>(describing:)();
        v66 = sub_100002320(v64, v65, &v155);

        *(v63 + 4) = v66;
        *(v63 + 12) = 2080;
        if ((v61 & 2) != 0)
        {
          v67 = 0x7A484D202D3034;
        }

        else
        {
          v67 = 0x7A484D203032;
        }

        if ((v61 & 2) != 0)
        {
          v68 = 0xE700000000000000;
        }

        else
        {
          v68 = 0xE600000000000000;
        }

        v69 = sub_100002320(v67, v68, &v155);

        *(v63 + 14) = v69;
        *(v63 + 22) = 1024;
        *(v63 + 24) = (v61 >> 5) & 1;
        *(v63 + 28) = 1024;
        *(v63 + 30) = (v61 >> 6) & 1;
        *(v63 + 34) = 2048;
        *(v63 + 36) = v142;
        *(v63 + 44) = 2048;
        *(v63 + 46) = v139;
        v70 = v138;
        _os_log_impl(&_mh_execute_header, v138, v141, "[HT] Cap: %s, Bandwidth: %s, SGI(20):%{BOOL}d, SGI(40):%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v63, 0x36u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v47 = v144;
      v50 = v147;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    *(v71 + 8) = 0;
    *(v71 + 16) = 0;

    AppleDevice.getRequest(requestType:data:on:)(0xD6uLL, v71, v71 + 20, 0, 0x306C647761, 0xE500000000000000);

    v72 = *v71;
    v73 = *(v71 + 8);
    v74 = *(v71 + 16);

    v75 = &v146[v50[18]];
    *v75 = v72;
    *(v75 + 1) = v73;
    *(v75 + 4) = v74;
    v76 = v146;
    v75[20] = 0;
    v77 = v76 + v50[18];
    if ((*(v77 + 20) & 1) == 0)
    {
      v78 = *(v77 + 16);
      v80 = *v77;
      v79 = *(v77 + 8);
      v81 = HIDWORD(*v77);
      v82 = *v77 >> 40;
      *&v142 = HIWORD(*v77);
      v83 = v142 | (v79 << 16);
      v84 = v79 >> 16;
      LODWORD(v149) = v80;
      BYTE4(v149) = v81;
      v139 = v82;
      BYTE5(v149) = v82;
      *(&v149 + 6) = v83;
      WORD5(v149) = WORD1(v79);
      v137 = HIDWORD(v79);
      WORD6(v149) = WORD2(v79);
      v138 = HIWORD(v79);
      HIWORD(v149) = HIWORD(v79);
      v85 = v78;
      v140 = apple80211_vht_capability.maxMCS_maxNSS.getter(v149, *(&v149 + 1));
      *&v141 = v86;
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v136 = swift_slowAlloc();
        v155 = v136;
        *v89 = 136316418;
        LODWORD(v149) = v80;
        BYTE4(v149) = v81;
        BYTE5(v149) = v139;
        *(&v149 + 6) = v83;
        WORD5(v149) = v84;
        WORD6(v149) = v137;
        HIWORD(v149) = v138;
        LOWORD(v150) = v85;
        type metadata accessor for apple80211_vht_capability(0);
        v90 = String.init<A>(describing:)();
        v92 = sub_100002320(v90, v91, &v155);

        *(v89 + 4) = v92;
        *(v89 + 12) = 2080;
        v93 = v142;
        if ((v142 & 0xC) != 0)
        {
          v94 = 0x7A484D20303631;
        }

        else
        {
          v94 = 0x7A484D203038;
        }

        if ((v142 & 0xC) != 0)
        {
          v95 = 0xE700000000000000;
        }

        else
        {
          v95 = 0xE600000000000000;
        }

        v96 = sub_100002320(v94, v95, &v155);

        *(v89 + 14) = v96;
        *(v89 + 22) = 1024;
        *(v89 + 24) = (v93 >> 5) & 1;
        *(v89 + 28) = 1024;
        *(v89 + 30) = (v93 >> 6) & 1;
        *(v89 + 34) = 2048;
        *(v89 + 36) = v140;
        *(v89 + 44) = 2048;
        *(v89 + 46) = v141;
        _os_log_impl(&_mh_execute_header, v87, v88, "[VHT] Cap: %s, Bandwidth: %s, SGI(80):%{BOOL}d, SGI(160):%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v89, 0x36u);
        swift_arrayDestroy();

        v47 = v144;
      }

      v76 = v146;
      v50 = v147;
    }

    v97 = swift_slowAlloc();
    *v97 = 0u;
    *(v97 + 16) = 0u;
    *(v97 + 32) = 0;

    AppleDevice.getRequest(requestType:data:on:)(0x23AuLL, v97, v97 + 40, 0, 0x306C647761, 0xE500000000000000);

    v98 = *(v97 + 32);
    v99 = *(v97 + 16);
    v148 = *v97;
    v147 = v99;

    v100 = v76 + v50[19];
    v101 = v147;
    *v100 = v148;
    *(v100 + 16) = v101;
    *(v100 + 32) = v98;
    *(v100 + 40) = 0;
    v102 = v76 + v50[19];
    if ((*(v102 + 40) & 1) == 0)
    {
      v104 = *(v102 + 24);
      v103 = *(v102 + 32);
      v106 = *(v102 + 8);
      v105 = *(v102 + 16);
      *&v152 = *v102;
      *(&v152 + 1) = v106;
      *&v153 = v105;
      BYTE8(v153) = v104;
      WORD5(v153) = WORD1(v104);
      WORD6(v153) = WORD2(v104);
      HIWORD(v153) = HIWORD(v104);
      LODWORD(v154) = v103;
      WORD2(v154) = WORD2(v103);
      v107 = apple80211_he_capability.maxMCS_maxNSS.getter();
      v109 = v108;
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        *v112 = 136316162;
        v149 = v152;
        v150 = v153;
        v151 = v154;
        type metadata accessor for apple80211_he_capability(0);
        v113 = String.init<A>(describing:)();
        v115 = sub_100002320(v113, v114, &v155);
        *&v148 = v109;
        v116 = v115;

        *(v112 + 4) = v116;
        *(v112 + 12) = 2080;
        v117 = 0x7A484D203032;
        if ((v106 & 0x2000000000000) != 0)
        {
          v117 = 0x7A484D203038;
        }

        v76 = v146;
        if ((v106 & 0x4000000000000) != 0)
        {
          v118 = 0x7A484D20303631;
        }

        else
        {
          v118 = v117;
        }

        if ((v106 & 0x4000000000000) != 0)
        {
          v119 = 0xE700000000000000;
        }

        else
        {
          v119 = 0xE600000000000000;
        }

        v120 = sub_100002320(v118, v119, &v155);

        *(v112 + 14) = v120;
        *(v112 + 22) = 1024;
        *(v112 + 24) = 0;
        *(v112 + 28) = 2048;
        *(v112 + 30) = v107;
        *(v112 + 38) = 2048;
        *(v112 + 40) = v148;
        _os_log_impl(&_mh_execute_header, v110, v111, "[HE] Cap: %s, Bandwidth: %s, SGI:%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v112, 0x30u);
        swift_arrayDestroy();
        v47 = v144;
      }
    }

    sub_100119FA0(v76, v47, type metadata accessor for NANDriverCapabilities);
    return sub_10003B8D4(v76, type metadata accessor for NANDriverCapabilities);
  }
}

void *IO80211Driver<>.initializeNAN()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v178 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v182 = v7;
  v183 = v8;
  __chkstk_darwin();
  v177 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v179 = &v144 - v10;
  __chkstk_darwin();
  v180 = &v144 - v11;
  __chkstk_darwin();
  *&v181 = &v144 - v12;
  v184 = type metadata accessor for NANDriverCapabilities(0);
  __chkstk_darwin();
  v14 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v144 - v15;
  type metadata accessor for apple80211_nan_device_capability(0);
  v18 = v17;
  v19 = *(a2 + 8);
  v20 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = v185;
  result = sub_100110570(323, v18, 0, 0, a1, v18, v19, v20, AssociatedConformanceWitness);
  if (!v22)
  {
    v165 = v14;
    v170 = AssociatedConformanceWitness;
    v171 = v20;
    v172 = v19;
    v173 = a1;
    v169 = v16;
    v24 = v193;
    v176 = BYTE1(v193);
    v166 = BYTE2(v193);
    v174 = WORD2(v193);
    LODWORD(v175) = BYTE6(v193);
    v25 = BYTE7(v193);
    v26 = BYTE8(v193);
    v27 = BYTE9(v193);
    v28 = BYTE10(v193);
    v167 = BYTE11(v193);
    *&v168 = BYTE12(v193);
    v29 = BYTE13(v193);
    v185 = NANBitmap.Band.bands.getter(BYTE3(v193));
    sub_10005DC58(&qword_10058B3C8, &qword_10047F4E0);
    inited = swift_initStackObject();
    *(inited + 24) = 4;
    v31 = sub_100286B80(v24, 0, 4uLL);
    v32 = v174;
    LODWORD(v162) = v29;
    v33 = v175;
    v163 = v26;
    v164 = v27;
    *(inited + 32) = v31;
    v34 = sub_100286B80(v176, 4, 4uLL);
    v176 = 0;
    if ((v34 & ~v31) != 0)
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    LODWORD(v161) = v35 | v31;
    swift_setDeallocating();
    v36 = v184;
    v37 = v184[8];
    v38 = v169;
    *&v169[v37] = v32;
    v39 = enum case for DispatchTimeInterval.milliseconds(_:);
    v40 = type metadata accessor for DispatchTimeInterval();
    (*(*(v40 - 8) + 104))(v38 + v37, v39, v40);
    v41 = v162 != 0;
    v42 = v38 + v36[17];
    *v42 = 0u;
    *(v42 + 16) = 0u;
    *(v42 + 32) = 1;
    v43 = v38 + v36[18];
    *v43 = 0;
    *(v43 + 8) = 0;
    *(v43 + 16) = 0;
    *(v43 + 20) = 1;
    v44 = v38 + v36[19];
    *(v44 + 32) = 0;
    *v44 = 0u;
    *(v44 + 16) = 0u;
    *(v44 + 40) = 1;
    *v38 = v185;
    *(v38 + 8) = &off_100556298;
    *(v38 + 16) = v166;
    *(v38 + 17) = v161;
    *(v38 + v36[9]) = v25;
    *(v38 + v36[10]) = v163;
    *(v38 + v36[11]) = v164;
    *(v38 + v36[12]) = v28;
    *(v38 + v36[13]) = v167;
    *(v38 + v36[14]) = v168;
    *(v38 + v36[15]) = v33 != 0;
    *(v38 + v36[16]) = v41;
    v45 = v172;
    v46 = *(v172 + 8);
    v47 = *(v46 + 8);
    v48 = v181;
    v185 = v46;
    v174 = v47;
    v175 = v46 + 8;
    v47(v173);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *&v168 = swift_slowAlloc();
      *&v193 = v168;
      *v51 = 136315138;
      swift_beginAccess();
      sub_100119FA0(v38, v165, type metadata accessor for NANDriverCapabilities);
      v52 = String.init<A>(describing:)();
      v54 = sub_100002320(v52, v53, &v193);

      *(v51 + 4) = v54;
      v45 = v172;
      _os_log_impl(&_mh_execute_header, v49, v50, "NAN Capabilities: [%s]", v51, 0xCu);
      sub_100002A00(v168);
    }

    v55 = *(v183 + 8);
    v56 = v48;
    v57 = v182;
    v55(v56, v182);
    type metadata accessor for apple80211_ht_capability(0);
    v58 = v173;
    v59 = v176;
    sub_100110570(154, v60, 0x306C647761, 0xE500000000000000, v173, v60, v45, v171, v170);
    v176 = v59;
    if (v59)
    {
      v61 = v38;
    }

    else
    {
      v181 = v191;
      v168 = v192;
      swift_beginAccess();
      v62 = v184;
      v63 = v38 + v184[17];
      v64 = v168;
      *v63 = v181;
      *(v63 + 16) = v64;
      *(v63 + 32) = 0;
      v65 = v38 + v62[17];
      if ((*(v65 + 32) & 1) == 0)
      {
        v67 = *(v65 + 16);
        v66 = *(v65 + 24);
        v68 = *(v65 + 8);
        v164 = *v65;
        v165 = v66;
        v167 = apple80211_ht_capability.maxMCS_maxNSS.getter(v164, v68, v67, v66);
        *&v168 = v69;
        v70 = v58;
        v71 = v180;
        v174(v70, v185);
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();
        *&v181 = v72;
        v166 = v73;
        if (os_log_type_enabled(v72, v73))
        {
          v75 = v164;
          v74 = v165;
          v76 = HIWORD(v164);
          v161 = v165 >> 24;
          v162 = HIBYTE(v165);
          v159 = HIBYTE(v67);
          v160 = v165 >> 8;
          v157 = v67 >> 40;
          v158 = HIWORD(v67);
          v155 = v67 >> 24;
          v156 = HIDWORD(v67);
          v153 = v67 >> 8;
          v154 = v67 >> 16;
          v151 = HIWORD(v68);
          v152 = HIBYTE(v68);
          v149 = HIDWORD(v68);
          v150 = v68 >> 40;
          v147 = v68 >> 16;
          v148 = v68 >> 24;
          v145 = v164 >> 40;
          v146 = v68 >> 8;
          v77 = HIDWORD(v164);
          v78 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          *&v186[0] = v163;
          *v78 = 136316418;
          LODWORD(v193) = v75;
          BYTE4(v193) = v77;
          v57 = v182;
          BYTE5(v193) = v145;
          WORD3(v193) = v76;
          BYTE8(v193) = v68;
          BYTE9(v193) = v146;
          BYTE10(v193) = v147;
          BYTE11(v193) = v148;
          BYTE12(v193) = v149;
          BYTE13(v193) = v150;
          BYTE14(v193) = v151;
          HIBYTE(v193) = v152;
          LOBYTE(v194) = v67;
          BYTE1(v194) = v153;
          BYTE2(v194) = v154;
          BYTE3(v194) = v155;
          BYTE4(v194) = v156;
          BYTE5(v194) = v157;
          BYTE6(v194) = v158;
          BYTE7(v194) = v159;
          BYTE8(v194) = v74;
          *(&v194 + 9) = v160;
          *(&v194 + 11) = v161;
          HIBYTE(v194) = v162;
          v79 = String.init<A>(describing:)();
          v81 = sub_100002320(v79, v80, v186);

          *(v78 + 4) = v81;
          *(v78 + 12) = 2080;
          if ((v76 & 2) != 0)
          {
            v82 = 0x7A484D202D3034;
          }

          else
          {
            v82 = 0x7A484D203032;
          }

          if ((v76 & 2) != 0)
          {
            v83 = 0xE700000000000000;
          }

          else
          {
            v83 = 0xE600000000000000;
          }

          v84 = sub_100002320(v82, v83, v186);

          *(v78 + 14) = v84;
          *(v78 + 22) = 1024;
          *(v78 + 24) = (v76 >> 5) & 1;
          *(v78 + 28) = 1024;
          *(v78 + 30) = (v76 >> 6) & 1;
          *(v78 + 34) = 2048;
          *(v78 + 36) = v167;
          *(v78 + 44) = 2048;
          *(v78 + 46) = v168;
          v85 = v181;
          _os_log_impl(&_mh_execute_header, v181, v166, "[HT] Cap: %s, Bandwidth: %s, SGI(20):%{BOOL}d, SGI(40):%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v78, 0x36u);
          swift_arrayDestroy();

          v55 = *(v183 + 8);
          v55(v180, v57);
        }

        else
        {

          v55(v71, v57);
        }

        v38 = v169;
        v45 = v172;
        v58 = v173;
      }

      type metadata accessor for apple80211_vht_capability(0);
      v86 = v170;
      v87 = v176;
      sub_100110570(214, v88, 0x306C647761, 0xE500000000000000, v58, v88, v45, v171, v170);
      if (v87)
      {
        v61 = v38;
      }

      else
      {
        v176 = 0;
        v89 = v190;
        v90 = v184;
        v91 = v38 + v184[18];
        *v91 = v189;
        *(v91 + 16) = v89;
        *(v91 + 20) = 0;
        v92 = v38 + v90[18];
        if ((*(v92 + 20) & 1) == 0)
        {
          v93 = *(v92 + 16);
          v95 = *v92;
          v94 = *(v92 + 8);
          v96 = v58;
          v97 = HIDWORD(*v92);
          v98 = *v92 >> 40;
          *&v181 = HIWORD(*v92);
          v99 = v181 | (v94 << 16);
          v100 = v94 >> 16;
          LODWORD(v193) = v95;
          BYTE4(v193) = v97;
          v164 = HIWORD(v94);
          v165 = v98;
          BYTE5(v193) = v98;
          *(&v193 + 6) = v99;
          WORD5(v193) = WORD1(v94);
          v163 = HIDWORD(v94);
          WORD6(v193) = WORD2(v94);
          HIWORD(v193) = HIWORD(v94);
          v166 = v93;
          *&v168 = apple80211_vht_capability.maxMCS_maxNSS.getter(v193, *(&v193 + 1));
          v180 = v101;
          v102 = v96;
          v103 = v179;
          v174(v102, v185);
          v104 = Logger.logObject.getter();
          LODWORD(v167) = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v104, v167))
          {
            v105 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            *&v186[0] = v162;
            *v105 = 136316418;
            LODWORD(v193) = v95;
            BYTE4(v193) = v97;
            BYTE5(v193) = v165;
            *(&v193 + 6) = v99;
            WORD5(v193) = v100;
            WORD6(v193) = v163;
            HIWORD(v193) = v164;
            LOWORD(v194) = v166;
            v106 = String.init<A>(describing:)();
            v108 = sub_100002320(v106, v107, v186);

            *(v105 + 4) = v108;
            *(v105 + 12) = 2080;
            v109 = v181;
            if ((v181 & 0xC) != 0)
            {
              v110 = 0x7A484D20303631;
            }

            else
            {
              v110 = 0x7A484D203038;
            }

            if ((v181 & 0xC) != 0)
            {
              v111 = 0xE700000000000000;
            }

            else
            {
              v111 = 0xE600000000000000;
            }

            v112 = sub_100002320(v110, v111, v186);

            *(v105 + 14) = v112;
            *(v105 + 22) = 1024;
            *(v105 + 24) = (v109 >> 5) & 1;
            *(v105 + 28) = 1024;
            *(v105 + 30) = (v109 >> 6) & 1;
            *(v105 + 34) = 2048;
            *(v105 + 36) = v168;
            *(v105 + 44) = 2048;
            *(v105 + 46) = v180;
            _os_log_impl(&_mh_execute_header, v104, v167, "[VHT] Cap: %s, Bandwidth: %s, SGI(80):%{BOOL}d, SGI(160):%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v105, 0x36u);
            swift_arrayDestroy();

            v113 = v179;
          }

          else
          {

            v113 = v103;
          }

          v57 = v182;
          v55(v113, v182);
          v45 = v172;
          v58 = v173;
          v86 = v170;
        }

        type metadata accessor for apple80211_he_capability(0);
        v114 = v176;
        sub_100110570(570, v115, 0x306C647761, 0xE500000000000000, v58, v115, v45, v171, v86);
        if (v114)
        {
          v61 = v169;
        }

        else
        {
          v176 = 0;
          v116 = v195;
          v117 = v184;
          v118 = v169;
          v119 = &v169[v184[19]];
          v120 = v194;
          *v119 = v193;
          *(v119 + 1) = v120;
          *(v119 + 4) = v116;
          v119[40] = 0;
          v121 = v118 + v117[19];
          v122 = v178;
          if ((*(v121 + 40) & 1) == 0)
          {
            v124 = *(v121 + 24);
            v123 = *(v121 + 32);
            v125 = v58;
            v127 = *(v121 + 8);
            v126 = *(v121 + 16);
            *&v196 = *v121;
            *(&v196 + 1) = v127;
            *&v197 = v126;
            BYTE8(v197) = v124;
            WORD5(v197) = WORD1(v124);
            WORD6(v197) = WORD2(v124);
            HIWORD(v197) = HIWORD(v124);
            LODWORD(v198) = v123;
            WORD2(v198) = WORD2(v123);
            v184 = apple80211_he_capability.maxMCS_maxNSS.getter();
            v199 = v128;
            v129 = v177;
            v174(v125, v185);
            v130 = Logger.logObject.getter();
            v131 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v130, v131))
            {
              v132 = BYTE6(v127);
              v133 = swift_slowAlloc();
              v134 = swift_slowAlloc();
              *v133 = 136316162;
              v186[0] = v196;
              v186[1] = v197;
              v187 = v198;
              v188 = v134;
              v135 = String.init<A>(describing:)();
              v137 = sub_100002320(v135, v136, &v188);

              *(v133 + 4) = v137;
              *(v133 + 12) = 2080;
              v138 = 0x7A484D203032;
              if ((v132 & 2) != 0)
              {
                v138 = 0x7A484D203038;
              }

              v139 = (v132 & 4) == 0;
              v122 = v178;
              if (v139)
              {
                v140 = v138;
              }

              else
              {
                v140 = 0x7A484D20303631;
              }

              if (v139)
              {
                v141 = 0xE600000000000000;
              }

              else
              {
                v141 = 0xE700000000000000;
              }

              v142 = sub_100002320(v140, v141, &v188);

              *(v133 + 14) = v142;
              *(v133 + 22) = 1024;
              *(v133 + 24) = 0;
              *(v133 + 28) = 2048;
              *(v133 + 30) = v184;
              *(v133 + 38) = 2048;
              *(v133 + 40) = v199;
              _os_log_impl(&_mh_execute_header, v130, v131, "[HE] Cap: %s, Bandwidth: %s, SGI:%{BOOL}d, maxMCS: %lu, maxNSS: %lu", v133, 0x30u);
              swift_arrayDestroy();

              (*(v183 + 8))(v177, v57);
            }

            else
            {

              (*(v183 + 8))(v129, v57);
            }
          }

          v143 = v169;
          sub_100119FA0(v169, v122, type metadata accessor for NANDriverCapabilities);
          v61 = v143;
        }
      }
    }

    return sub_10003B8D4(v61, type metadata accessor for NANDriverCapabilities);
  }

  return result;
}

BOOL IO80211Driver<>.nanState.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_nan_enable(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(268, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12 != 0;
}

uint64_t sub_1000F4868(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100002320(0xD000000000000011, 0x80000001004B9170, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "nan_send: %s  APPLE80211_IOC_NAN_ENABLED", v11, 0xCu);
    sub_100002A00(v12);

    LOBYTE(a1) = v17;
  }

  (*(v5 + 8))(v7, v4);
  LOBYTE(v18) = a1 & 1;
  HIDWORD(v18) = 64;
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x10CuLL, &v18, &v19, 0, v13, v14);
}

uint64_t IO80211Driver<>.update(nanState:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v25 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24[0] = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24[1] = v5;
    v17 = v16;
    v27 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000011, 0x80000001004B9170, &v27);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_ENABLED", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v24[0];
  }

  (*(v9 + 8))(v11, v8);
  LOBYTE(v27) = v25 & 1;
  HIDWORD(v27) = 64;
  type metadata accessor for apple80211_nan_enable(0);
  v19 = v18;
  v20 = *(v26 + 8);
  v21 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(268, &v27, a2, v19, v20, v21, AssociatedConformanceWitness);
}

unint64_t IO80211Driver<>.clusterID.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_nan_cluster_id(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(270, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12 | (v13 << 32) | (v14 << 40);
}

uint64_t sub_1000F4F14(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17 = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD000000000000012, 0x80000001004B9190, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_CLUSTER_ID", v12, 0xCu);
    sub_100002A00(v13);
  }

  (*(v6 + 8))(v8, v5);
  LOWORD(v18) = a1;
  BYTE2(v18) = BYTE2(a1);
  BYTE3(v18) = BYTE3(a1);
  BYTE4(v18) = BYTE4(a1);
  BYTE5(v18) = BYTE5(a1);
  HIWORD(v18) = a1;
  v19 = BYTE2(a1);
  v20 = BYTE3(a1);
  v21 = BYTE4(a1);
  v22 = BYTE5(a1);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x10EuLL, &v18, &v23, 0, v14, v15);
}

uint64_t IO80211Driver<>.update(clusterID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v4;
    v17 = v16;
    v28 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000012, 0x80000001004B9190, &v28);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_CLUSTER_ID", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v25;
  }

  (*(v9 + 8))(v11, v8);
  LOWORD(v28) = a1;
  BYTE2(v28) = BYTE2(a1);
  BYTE3(v28) = BYTE3(a1);
  BYTE4(v28) = BYTE4(a1);
  BYTE5(v28) = BYTE5(a1);
  HIWORD(v28) = a1;
  v29 = BYTE2(a1);
  v30 = BYTE3(a1);
  v31 = BYTE4(a1);
  v32 = BYTE5(a1);
  type metadata accessor for apple80211_nan_cluster_id(0);
  v19 = v18;
  v20 = *(v27 + 8);
  v21 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(270, &v28, a2, v19, v20, v21, AssociatedConformanceWitness);
}

uint64_t IO80211Driver<>.electionMetric.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_nan_master_pref(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(281, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  type metadata accessor for apple80211_nan_random_factor(0);
  sub_100110570(282, v11, 0, 0, a1, v11, v8, v9, AssociatedConformanceWitness);
  return v14 | (v13 << 8);
}

uint64_t sub_1000F5640(int a1)
{
  v3 = v2;
  v4 = v1;
  v29 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v27 - v9;
  v27[0] = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v27[1] = v6;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v28 = v5;
    v15 = v14;
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91B0, &v30);
    _os_log_impl(&_mh_execute_header, v11, v12, "nan_send: %s  APPLE80211_IOC_NAN_MASTER_PREFERENCE", v15, 0xCu);
    sub_100002A00(v16);
    v3 = v2;

    v5 = v28;
  }

  v17 = *(v6 + 8);
  v17(v10, v5);
  LOBYTE(v30) = v29;
  BYTE1(v30) = v29;
  v18 = *(v4 + 16);
  v19 = *(v4 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x119uLL, &v30, &v30 + 2, 0, v18, v19);

  if (!v3)
  {
    v28 = v5;
    Logger.init(subsystem:category:)();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v27[0] = v8;
      v24 = v23;
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91B0, &v30);
      _os_log_impl(&_mh_execute_header, v21, v22, "nan_send: %s  APPLE80211_IOC_NAN_RANDOM_FACTOR", v24, 0xCu);
      sub_100002A00(v25);

      v26 = v27[0];
    }

    else
    {

      v26 = v8;
    }

    v17(v26, v28);
    LOBYTE(v30) = BYTE1(v29);
    BYTE1(v30) = BYTE1(v29);

    AppleDevice.setRequest(requestType:data:on:)(0x11AuLL, &v30, &v30 + 2, 0, v18, v19);
  }

  return result;
}

uint64_t IO80211Driver<>.update(electionMetric:)(__int16 a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v47 = a3;
  v5 = v4;
  v46 = a4;
  LOWORD(v7) = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v41 - v12;
  v42 = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  v16 = os_log_type_enabled(v14, v15);
  v43 = v11;
  v44 = v9;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v45 = v5;
    v18 = v17;
    v19 = a2;
    v20 = v8;
    v21 = v7;
    v7 = swift_slowAlloc();
    v49 = v7;
    *v18 = 136315138;
    *(v18 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91B0, &v49);
    _os_log_impl(&_mh_execute_header, v14, v15, "nan_send: %s  APPLE80211_IOC_NAN_MASTER_PREFERENCE", v18, 0xCu);
    sub_100002A00(v7);
    LOWORD(v7) = v21;
    v8 = v20;
    a2 = v19;

    v5 = v45;
  }

  v22 = *(v9 + 8);
  v22(v13, v8);
  LOBYTE(v49) = v7;
  BYTE1(v49) = v7;
  type metadata accessor for apple80211_nan_master_pref(0);
  v24 = v23;
  v25 = *(v47 + 1);
  v26 = *(v46 + 16);
  swift_getAssociatedTypeWitness();
  v27 = v26;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = v48;
  result = sub_100110D80(281, &v49, a2, v24, v25, v27, AssociatedConformanceWitness);
  if (!v29)
  {
    v46 = v27;
    v47 = v22;
    v48 = 0;
    v31 = v43;
    Logger.init(subsystem:category:)();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v45 = v5;
      v35 = v34;
      v36 = swift_slowAlloc();
      v42 = v8;
      v37 = BYTE1(v7);
      v7 = v36;
      v49 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91B0, &v49);
      _os_log_impl(&_mh_execute_header, v32, v33, "nan_send: %s  APPLE80211_IOC_NAN_RANDOM_FACTOR", v35, 0xCu);
      sub_100002A00(v7);
      BYTE1(v7) = v37;

      v38 = v31;
      v39 = v42;
    }

    else
    {

      v38 = v31;
      v39 = v8;
    }

    v47(v38, v39);
    LOBYTE(v49) = BYTE1(v7);
    BYTE1(v49) = BYTE1(v7);
    type metadata accessor for apple80211_nan_random_factor(0);
    return sub_100110D80(282, &v49, a2, v40, v25, v46, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t sub_1000F5EE0()
{
  v1 = swift_slowAlloc();
  *v1 = 0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  AppleDevice.getRequest(requestType:data:on:)(0x111uLL, v1, (v1 + 2), 0, v2, v3);

  v4 = *v1;
  v5 = v1[1];

  v6 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v4);
  if (v6 == 5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v5);
  if (v8 == 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v7 | (v9 << 8);
}

uint64_t IO80211Driver<>.dwAwakePeriods.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_nan_dw_awake_period(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(273, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  v11 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v16);
  if (v11 == 5)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13 = _s7CoreP2P18NANAwakeDWIntervalO8intervalACSgAA11NANTimeUnitV_tcfC_0(v17);
  if (v13 == 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return v12 | (v14 << 8);
}

uint64_t sub_1000F6114(unsigned int a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v17[1] = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91D0, &v18);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_DW_AWAKE_PERIOD", v12, 0xCu);
    sub_100002A00(v13);
  }

  (*(v6 + 8))(v8, v5);
  LOBYTE(v18) = 0x1008040100uLL >> (8 * a1);
  BYTE1(v18) = 0x1008040100uLL >> ((a1 >> 5) & 0xF8);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x111uLL, &v18, &v18 + 2, 0, v14, v15);
}

uint64_t IO80211Driver<>.update(dwAwakePeriods:)(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v26 = v4;
    v17 = v16;
    v28 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91D0, &v28);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_DW_AWAKE_PERIOD", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v25;
  }

  (*(v9 + 8))(v11, v8);
  v29[0] = 0x1008040100uLL >> (8 * a1);
  v29[1] = 0x1008040100uLL >> ((a1 >> 5) & 0xF8);
  type metadata accessor for apple80211_nan_dw_awake_period(0);
  v19 = v18;
  v20 = *(v27 + 8);
  v21 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(273, v29, a2, v19, v20, v21, AssociatedConformanceWitness);
}

uint64_t sub_1000F667C(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18[1] = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91F0, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_MASTER_CHANNEL", v12, 0xCu);
    sub_100002A00(v13);
  }

  (*(v6 + 8))(v8, v5);
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    v14 = 0;
  }

  else
  {
    v14 = a1;
  }

  if (v14 > 0xFF)
  {
    __break(1u);
  }

  LOBYTE(v19) = v14;
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x11FuLL, &v19, &v19 + 1, 0, v15, v16);
}

uint64_t IO80211Driver<>.update(primaryChannel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v4;
    v17 = v16;
    v29 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000017, 0x80000001004B91F0, &v29);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_MASTER_CHANNEL", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v26;
  }

  result = (*(v9 + 8))(v11, v8);
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    v19 = 0;
  }

  else
  {
    v19 = a1;
  }

  if (v19 > 0xFF)
  {
    __break(1u);
  }

  else
  {
    v30 = v19;
    type metadata accessor for apple80211_nan_primary_master_channel(0);
    v21 = v20;
    v22 = *(v28 + 8);
    v23 = *(a4 + 16);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(287, &v30, a2, v21, v22, v23, AssociatedConformanceWitness);
  }

  return result;
}

unint64_t sub_1000F6C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v9 = a4(0);
  v10 = *(a2 + 8);
  v11 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(a5, v9, 0, 0, a1, v9, v10, v11, AssociatedConformanceWitness);
  return sub_10003B238(v14) & 0xFFFFFFFFFFFFLL;
}

uint64_t sub_1000F6D28(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18[1] = v2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100002320(0xD000000000000019, 0x80000001004B9210, &v19);
    _os_log_impl(&_mh_execute_header, v9, v10, "nan_send: %s  APPLE80211_IOC_NAN_SECONDARY_MASTER_CHANNEL", v12, 0xCu);
    sub_100002A00(v13);
  }

  (*(v6 + 8))(v8, v5);
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    v14 = 0;
  }

  else
  {
    v14 = a1;
  }

  if (v14 > 0xFF)
  {
    __break(1u);
  }

  LOBYTE(v19) = v14;
  v15 = *(v3 + 16);
  v16 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x120uLL, &v19, &v19 + 1, 0, v15, v16);
}

uint64_t IO80211Driver<>.update(secondaryChannel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v4;
    v17 = v16;
    v29 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000019, 0x80000001004B9210, &v29);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_SECONDARY_MASTER_CHANNEL", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v26;
  }

  result = (*(v9 + 8))(v11, v8);
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    v19 = 0;
  }

  else
  {
    v19 = a1;
  }

  if (v19 > 0xFF)
  {
    __break(1u);
  }

  else
  {
    v30 = v19;
    type metadata accessor for apple80211_nan_secondary_master_channel(0);
    v21 = v20;
    v22 = *(v28 + 8);
    v23 = *(a4 + 16);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(288, &v30, a2, v21, v22, v23, AssociatedConformanceWitness);
  }

  return result;
}

BOOL IO80211Driver<>.hostElection.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_nan_host_election(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(275, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12 != 0;
}

uint64_t sub_1000F7398(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B9230, &v18);
    _os_log_impl(&_mh_execute_header, v8, v9, "nan_send: %s  APPLE80211_IOC_NAN_HOST_ELECTION", v11, 0xCu);
    sub_100002A00(v12);

    LOBYTE(a1) = v17;
  }

  (*(v5 + 8))(v7, v4);
  LOBYTE(v18) = a1 & 1;
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x113uLL, &v18, &v18 + 1, 0, v13, v14);
}

uint64_t IO80211Driver<>.update(hostElection:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v25 = a3;
  v27 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24[0] = a4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24[1] = v5;
    v17 = v16;
    v26 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B9230, &v26);
    _os_log_impl(&_mh_execute_header, v12, v13, "nan_send: %s  APPLE80211_IOC_NAN_HOST_ELECTION", v15, 0xCu);
    sub_100002A00(v17);

    a4 = v24[0];
  }

  (*(v9 + 8))(v11, v8);
  v28 = v27 & 1;
  type metadata accessor for apple80211_nan_host_election(0);
  v19 = v18;
  v20 = *(v25 + 8);
  v21 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(275, &v28, a2, v19, v20, v21, AssociatedConformanceWitness);
}

uint64_t sub_1000F78B0(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v43 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v46[1], 0, 260);
  v46[0] = 23;
  v4 = sub_100033AA8(_swiftEmptyArrayStorage);
  v5 = type metadata accessor for BinaryEncoder();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100480A90;
  *(v6 + 32) = v4;
  v47[3] = v5;
  v47[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v47[0] = v6;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute, protocol conformance descriptor for NANAttribute);

  v7 = v45;
  Array<A>.encode(to:)();
  if (v7)
  {

    return sub_100002A00(v47);
  }

  v9 = v44;
  v42 = v3;
  v45 = v1;
  sub_100002A00(v47);
  swift_beginAccess();
  v10 = *(v6 + 16);
  v11 = *(v6 + 24);
  sub_10000AB0C(v10, v11);

  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    LOWORD(v14) = 0;
    v13 = v45;
    if (v12 != 2)
    {
      goto LABEL_28;
    }

    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (v17)
    {
      goto LABEL_46;
    }

    if (v18 >= 256)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v13 = v45;
    if (!v12)
    {
      LOWORD(v14) = BYTE6(v11);
LABEL_28:
      LOWORD(v46[65]) = v14;
      sub_1000A1CDC(v10, v11, &v46[1], &v46[65]);
      v25 = v42;
      Logger.init(subsystem:category:)();
      sub_10000AB0C(v10, v11);
      v26 = Logger.logObject.getter();
      LODWORD(v44) = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v26, v44))
      {
        sub_1000124C8(v10, v11);

        (*(v43 + 8))(v25, v13);
        v28 = v9;
LABEL_41:
        memcpy(v47, v46, sizeof(v47));
        v37 = *(v28 + 16);
        v38 = *(v28 + 24);

        AppleDevice.setRequest(requestType:data:on:)(0x14AuLL, v47, v48, 0, v37, v38);

        return sub_1000124C8(v10, v11);
      }

      v41 = v26;
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47[0] = v40;
      *v27 = 136315650;
      *(v27 + 4) = sub_100002320(0xD000000000000018, 0x80000001004B9250, v47);
      *(v27 + 12) = 2048;
      v28 = v9;
      v29 = v43;
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          v30 = 0;
          goto LABEL_40;
        }

        v32 = *(v10 + 16);
        v31 = *(v10 + 24);
        v17 = __OFSUB__(v31, v32);
        v30 = v31 - v32;
        if (!v17)
        {
          goto LABEL_40;
        }

        __break(1u);
      }

      else if (!v12)
      {
        v30 = BYTE6(v11);
LABEL_40:
        *(v27 + 14) = v30;
        sub_1000124C8(v10, v11);
        *(v27 + 22) = 2080;
        v33 = Data.hexString.getter(v10, v11);
        v35 = sub_100002320(v33, v34, v47);

        *(v27 + 24) = v35;
        v36 = v41;
        _os_log_impl(&_mh_execute_header, v41, v44, "nan_send: %s  APPLE80211_IOC_NAN_VENDOR_PAYLOAD pairing custom attribute count %ld attributes %s", v27, 0x20u);
        swift_arrayDestroy();

        (*(v29 + 8))(v42, v45);
        goto LABEL_41;
      }

      LODWORD(v30) = HIDWORD(v10) - v10;
      if (!__OFSUB__(HIDWORD(v10), v10))
      {
        v30 = v30;
        goto LABEL_40;
      }

      goto LABEL_49;
    }

    if (__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_47;
    }

    if (HIDWORD(v10) - v10 >= 256)
    {
      goto LABEL_23;
    }
  }

  if (v12 == 2)
  {
    v20 = *(v10 + 16);
    v19 = *(v10 + 24);
    v17 = __OFSUB__(v19, v20);
    v21 = v19 - v20;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
  }

  LODWORD(v21) = HIDWORD(v10) - v10;
  if (__OFSUB__(HIDWORD(v10), v10))
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v21 = v21;
LABEL_18:
  if (v21 < 0xFFFF)
  {
    if (v12 != 2)
    {
      LODWORD(v14) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_50;
      }

      v14 = v14;
      goto LABEL_26;
    }

    v23 = *(v10 + 16);
    v22 = *(v10 + 24);
    v17 = __OFSUB__(v22, v23);
    v14 = v22 - v23;
    if (!v17)
    {
LABEL_26:
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!(v14 >> 16))
      {
        goto LABEL_28;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    __break(1u);
  }

LABEL_23:
  sub_10000B02C();
  swift_allocError();
  *v24 = xmmword_100481830;
  *(v24 + 16) = 0;
  swift_willThrow();
  return sub_1000124C8(v10, v11);
}

uint64_t IO80211Driver<>.transmitAllFrames(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a2;
  v52 = a3;
  v51 = a4;
  v4 = type metadata accessor for Logger();
  v50 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(&v55[1], 0, 260);
  v55[0] = 23;
  v7 = sub_100033AA8(_swiftEmptyArrayStorage);
  v8 = type metadata accessor for BinaryEncoder();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100480A90;
  *(v9 + 32) = v7;
  v56[3] = v8;
  v56[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v56[0] = v9;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute, protocol conformance descriptor for NANAttribute);

  v10 = v54;
  Array<A>.encode(to:)();
  if (v10)
  {

    return sub_100002A00(v56);
  }

  v49 = v6;
  v54 = v4;
  v12 = v53;
  sub_100002A00(v56);
  swift_beginAccess();
  v14 = *(v9 + 16);
  v13 = *(v9 + 24);
  sub_10000AB0C(v14, v13);

  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    LOWORD(v17) = 0;
    v16 = v54;
    if (v15 != 2)
    {
      goto LABEL_21;
    }

    v19 = *(v14 + 16);
    v18 = *(v14 + 24);
    v20 = __OFSUB__(v18, v19);
    v21 = v18 - v19;
    if (v20)
    {
      goto LABEL_40;
    }

    if (v21 > 255)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = v54;
    if (!v15)
    {
      LOWORD(v17) = BYTE6(v13);
LABEL_21:
      LOWORD(v55[65]) = v17;
      sub_1000A1CDC(v14, v13, &v55[1], &v55[65]);
      v24 = v49;
      Logger.init(subsystem:category:)();
      sub_10000AB0C(v14, v13);
      v25 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      v26 = os_log_type_enabled(v25, v47);
      v48 = v13;
      if (!v26)
      {
        sub_1000124C8(v14, v13);

        (*(v50 + 8))(v24, v16);
        v29 = v52;
LABEL_35:
        memcpy(v56, v55, sizeof(v56));
        type metadata accessor for apple80211_nan_vendor_payload(0);
        v41 = v40;
        v42 = *(v29 + 8);
        v43 = *(v51 + 16);
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_100110D80(330, v56, v12, v41, v42, v43, AssociatedConformanceWitness);
        v32 = v14;
        v33 = v48;
        return sub_1000124C8(v32, v33);
      }

      v46 = v25;
      v27 = v13;
      v28 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56[0] = v45;
      *v28 = 136315650;
      *(v28 + 4) = sub_100002320(0xD000000000000018, 0x80000001004B9250, v56);
      *(v28 + 12) = 2048;
      if (v15 > 1)
      {
        v29 = v52;
        if (v15 != 2)
        {
          v30 = 0;
          goto LABEL_34;
        }

        v35 = *(v14 + 16);
        v34 = *(v14 + 24);
        v20 = __OFSUB__(v34, v35);
        v30 = v34 - v35;
        if (!v20)
        {
          goto LABEL_34;
        }

        __break(1u);
      }

      else
      {
        v29 = v52;
        if (!v15)
        {
          v30 = BYTE6(v27);
LABEL_34:
          *(v28 + 14) = v30;
          sub_1000124C8(v14, v27);
          *(v28 + 22) = 2080;
          v36 = Data.hexString.getter(v14, v27);
          v38 = sub_100002320(v36, v37, v56);

          *(v28 + 24) = v38;
          v39 = v46;
          _os_log_impl(&_mh_execute_header, v46, v47, "nan_send: %s  APPLE80211_IOC_NAN_VENDOR_PAYLOAD pairing custom attribute count %ld attributes %s", v28, 0x20u);
          swift_arrayDestroy();

          (*(v50 + 8))(v49, v54);
          goto LABEL_35;
        }
      }

      LODWORD(v30) = HIDWORD(v14) - v14;
      if (!__OFSUB__(HIDWORD(v14), v14))
      {
        v30 = v30;
        goto LABEL_34;
      }

LABEL_44:
      __break(1u);
    }

    if (__OFSUB__(HIDWORD(v14), v14))
    {
      goto LABEL_41;
    }

    if (HIDWORD(v14) - v14 > 255)
    {
      goto LABEL_25;
    }
  }

  if (v15 == 2)
  {
    v23 = *(v14 + 16);
    v22 = *(v14 + 24);
    v20 = __OFSUB__(v22, v23);
    v17 = v22 - v23;
    if (v20)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    if (v17 >= 0xFFFF)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  LODWORD(v17) = HIDWORD(v14) - v14;
  if (__OFSUB__(HIDWORD(v14), v14))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v17 < 0xFFFF)
  {
    v17 = v17;
LABEL_19:
    if (v17 < 0)
    {
      __break(1u);
    }

    else if (!(v17 >> 16))
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_25:
  sub_10000B02C();
  swift_allocError();
  *v31 = xmmword_100481830;
  *(v31 + 16) = 0;
  swift_willThrow();
  v32 = v14;
  v33 = v13;
  return sub_1000124C8(v32, v33);
}

uint64_t sub_1000F8578(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  v62 = *(v1 - 8);
  __chkstk_darwin();
  v3 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v56 - v4;
  memset(&v64[1], 0, 260);
  v64[0] = 23;
  v6 = sub_100033AA8(_swiftEmptyArrayStorage);
  v7 = type metadata accessor for BinaryEncoder();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100480A90;
  *(v8 + 32) = v6;
  v65[3] = v7;
  v65[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v65[0] = v8;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute, protocol conformance descriptor for NANAttribute);

  v9 = v63;
  Array<A>.encode(to:)();
  if (v9)
  {

    return sub_100002A00(v65);
  }

  v56[1] = 0;
  v58 = v3;
  v59 = v1;
  sub_100002A00(v65);
  swift_beginAccess();
  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  sub_10000AB0C(v12, v11);

  v57 = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v12, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v11 >> 62;
  v63 = v11;
  v60 = v11 >> 62;
  if (!v15)
  {
    sub_1000124C8(v12, v11);
    goto LABEL_17;
  }

  v56[0] = v12;
  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v65[0] = v18;
  *v17 = 136315394;
  *(v17 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9270, v65);
  *(v17 + 12) = 2048;
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      v19 = 0;
      goto LABEL_15;
    }

    v12 = v56[0];
    v21 = *(v56[0] + 16);
    v20 = *(v56[0] + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_12:
    v12 = v56[0];
    LODWORD(v19) = HIDWORD(v56[0]) - LODWORD(v56[0]);
    if (__OFSUB__(HIDWORD(v56[0]), v56[0]))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v19 = v19;
    goto LABEL_16;
  }

  if (v16)
  {
    goto LABEL_12;
  }

  v19 = BYTE6(v11);
LABEL_15:
  v12 = v56[0];
LABEL_16:
  *(v17 + 14) = v19;
  sub_1000124C8(v12, v11);
  _os_log_impl(&_mh_execute_header, v13, v14, "nan_send: %s  attributeBuffer.count %ld", v17, 0x16u);
  sub_100002A00(v18);

LABEL_17:

  v23 = *(v62 + 8);
  v24 = v59;
  v23(v5, v59);
  v25 = v60;
  if (v60 > 1)
  {
    if (v60 != 2)
    {
      goto LABEL_46;
    }

    v27 = *(v12 + 16);
    v26 = *(v12 + 24);
    v22 = __OFSUB__(v26, v27);
    v28 = v26 - v27;
    if (v22)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (!v28)
    {
      goto LABEL_46;
    }
  }

  else if (v60)
  {
    if (__OFSUB__(HIDWORD(v12), v12))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (HIDWORD(v12) == v12)
    {
      goto LABEL_46;
    }
  }

  else if (!BYTE6(v63))
  {
    goto LABEL_46;
  }

  if (!v60)
  {
    v56[0] = v23;
    v32 = v63;
    LOWORD(v33) = BYTE6(v63);
    goto LABEL_51;
  }

  if (v60 == 2)
  {
    v30 = *(v12 + 16);
    v29 = *(v12 + 24);
    v22 = __OFSUB__(v29, v30);
    v31 = v29 - v30;
    if (v22)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v31 >= 256)
    {
      goto LABEL_46;
    }
  }

  else
  {
    if (__OFSUB__(HIDWORD(v12), v12))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (HIDWORD(v12) - v12 >= 256)
    {
      goto LABEL_46;
    }
  }

  if (v60 == 2)
  {
    v35 = *(v12 + 16);
    v34 = *(v12 + 24);
    v22 = __OFSUB__(v34, v35);
    v36 = v34 - v35;
    if (!v22)
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  LODWORD(v36) = HIDWORD(v12) - v12;
  if (__OFSUB__(HIDWORD(v12), v12))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v36 = v36;
LABEL_41:
  if (v36 < 0xFFFF)
  {
    if (v25 != 2)
    {
      LODWORD(v33) = HIDWORD(v12) - v12;
      if (__OFSUB__(HIDWORD(v12), v12))
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v33 = v33;
      goto LABEL_49;
    }

    v38 = *(v12 + 16);
    v37 = *(v12 + 24);
    v22 = __OFSUB__(v37, v38);
    v33 = v37 - v38;
    if (!v22)
    {
LABEL_49:
      if ((v33 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v56[0] = v23;
        v32 = v63;
        if (!(v33 >> 16))
        {
LABEL_51:
          LOWORD(v64[65]) = v33;
          sub_1000A1CDC(v12, v32, &v64[1], &v64[65]);
          v42 = v58;
          Logger.init(subsystem:category:)();
          sub_10000AB0C(v12, v32);
          v43 = Logger.logObject.getter();
          v44 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v43, v44))
          {
            sub_1000124C8(v12, v32);

            (v56[0])(v42, v24);
            v47 = v61;
LABEL_62:
            memcpy(v65, v64, sizeof(v65));
            v54 = *(v47 + 16);
            v55 = *(v47 + 24);

            AppleDevice.setRequest(requestType:data:on:)(0x243uLL, v65, v66, 0, v54, v55);

            v40 = v12;
            v41 = v32;
            return sub_1000124C8(v40, v41);
          }

          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v65[0] = v46;
          *v45 = 136315650;
          *(v45 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9270, v65);
          *(v45 + 12) = 2048;
          v47 = v61;
          v57 = v46;
          if (v60 == 2)
          {
            v50 = *(v12 + 16);
            v49 = *(v12 + 24);
            v22 = __OFSUB__(v49, v50);
            v48 = v49 - v50;
            if (!v22)
            {
              goto LABEL_61;
            }

            __break(1u);
          }

          else if (v60 == 1)
          {
            LODWORD(v48) = HIDWORD(v12) - v12;
            if (!__OFSUB__(HIDWORD(v12), v12))
            {
              v48 = v48;
LABEL_61:
              *(v45 + 14) = v48;
              sub_1000124C8(v12, v32);
              *(v45 + 22) = 2080;
              v51 = Data.hexString.getter(v12, v32);
              v53 = sub_100002320(v51, v52, v65);

              *(v45 + 24) = v53;
              _os_log_impl(&_mh_execute_header, v43, v44, "nan_send: %s APPLE80211_IOC_NAN_VENDOR_PAYLOAD_COMPACT compact custom attribute count %ld attributes %s", v45, 0x20u);
              swift_arrayDestroy();

              (v56[0])(v58, v59);
              goto LABEL_62;
            }

LABEL_73:
            __break(1u);
          }

          v48 = BYTE6(v32);
          goto LABEL_61;
        }
      }

      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
  }

LABEL_46:
  sub_10000B02C();
  swift_allocError();
  *v39 = xmmword_100481830;
  *(v39 + 16) = 0;
  swift_willThrow();
  v40 = v12;
  v41 = v63;
  return sub_1000124C8(v40, v41);
}

uint64_t IO80211Driver<>.transmitCompactFrames(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v69 = a4;
  v70 = a2;
  v71 = a3;
  v4 = type metadata accessor for Logger();
  v72 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v62 - v7;
  memset(&v74[1], 0, 260);
  v74[0] = 23;
  v9 = sub_100033AA8(_swiftEmptyArrayStorage);
  v10 = type metadata accessor for BinaryEncoder();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100480A90;
  *(v11 + 32) = v9;
  v75[3] = v10;
  v75[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v75[0] = v11;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute, protocol conformance descriptor for NANAttribute);

  v12 = v73;
  Array<A>.encode(to:)();
  if (v12)
  {

    return sub_100002A00(v75);
  }

  v65 = v6;
  v66 = v4;
  sub_100002A00(v75);
  swift_beginAccess();
  v15 = *(v11 + 16);
  v14 = *(v11 + 24);
  sub_10000AB0C(v15, v14);

  v64 = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v15, v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v14 >> 62;
  v73 = v15;
  v67 = v14 >> 62;
  v68 = v14;
  if (!v18)
  {
    sub_1000124C8(v15, v14);
    goto LABEL_16;
  }

  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v75[0] = v21;
  *v20 = 136315394;
  *(v20 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9270, v75);
  *(v20 + 12) = 2048;
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      v22 = 0;
      goto LABEL_15;
    }

    v24 = *(v73 + 16);
    v23 = *(v73 + 24);
    v25 = __OFSUB__(v23, v24);
    v22 = v23 - v24;
    if (!v25)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v22) = HIDWORD(v73) - v73;
    if (__OFSUB__(HIDWORD(v73), v73))
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v22 = v22;
    goto LABEL_15;
  }

  if (v19)
  {
    goto LABEL_12;
  }

  v22 = BYTE6(v14);
LABEL_15:
  *(v20 + 14) = v22;
  sub_1000124C8(v73, v14);
  _os_log_impl(&_mh_execute_header, v16, v17, "nan_send: %s  attributeBuffer.count %ld", v20, 0x16u);
  sub_100002A00(v21);

LABEL_16:

  v26 = *(v72 + 8);
  v27 = v66;
  v26(v8, v66);
  v28 = v71;
  v29 = v65;
  if (v67 > 1)
  {
    v30 = v73;
    if (v67 != 2)
    {
      goto LABEL_48;
    }

    v32 = *(v73 + 16);
    v31 = *(v73 + 24);
    v25 = __OFSUB__(v31, v32);
    v33 = v31 - v32;
    if (v25)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (!v33)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v30 = v73;
    if (v67)
    {
      if (__OFSUB__(HIDWORD(v73), v73))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (HIDWORD(v73) == v73)
      {
        goto LABEL_48;
      }
    }

    else if (!BYTE6(v68))
    {
      goto LABEL_48;
    }
  }

  if (!v67)
  {
    v37 = v68;
    LOWORD(v38) = BYTE6(v68);
LABEL_43:
    LOWORD(v74[65]) = v38;
    sub_1000A1CDC(v30, v37, &v74[1], &v74[65]);
    Logger.init(subsystem:category:)();
    sub_10000AB0C(v30, v37);
    v41 = Logger.logObject.getter();
    LODWORD(v73) = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v41, v73))
    {
      sub_1000124C8(v30, v37);

      v26(v29, v27);
      v49 = v69;
      v50 = v70;
LABEL_54:
      memcpy(v75, v74, sizeof(v75));
      type metadata accessor for apple80211_nan_vendor_payload(0);
      v58 = v57;
      v59 = *(v28 + 8);
      v60 = *(v49 + 16);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      sub_100110D80(579, v75, v50, v58, v59, v60, AssociatedConformanceWitness);
      v47 = v30;
      v48 = v37;
      return sub_1000124C8(v47, v48);
    }

    v63 = v41;
    v64 = v26;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v75[0] = v43;
    *v42 = 136315650;
    *(v42 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9270, v75);
    *(v42 + 12) = 2048;
    v62 = v43;
    if (v67 == 2)
    {
      v52 = *(v30 + 16);
      v51 = *(v30 + 24);
      v25 = __OFSUB__(v51, v52);
      v44 = v51 - v52;
      if (!v25)
      {
        v45 = v70;
        goto LABEL_53;
      }

LABEL_66:
      __break(1u);
    }

    if (v67 != 1)
    {
      v45 = v70;
      v44 = BYTE6(v37);
      goto LABEL_53;
    }

    LODWORD(v44) = HIDWORD(v30) - v30;
    v45 = v70;
    if (!__OFSUB__(HIDWORD(v30), v30))
    {
      v44 = v44;
LABEL_53:
      *(v42 + 14) = v44;
      sub_1000124C8(v30, v37);
      *(v42 + 22) = 2080;
      v53 = Data.hexString.getter(v30, v37);
      v55 = sub_100002320(v53, v54, v75);

      *(v42 + 24) = v55;
      v56 = v63;
      _os_log_impl(&_mh_execute_header, v63, v73, "nan_send: %s APPLE80211_IOC_NAN_VENDOR_PAYLOAD_COMPACT compact custom attribute count %ld attributes %s", v42, 0x20u);
      swift_arrayDestroy();

      v64(v65, v66);
      v28 = v71;
      v49 = v69;
      v50 = v45;
      goto LABEL_54;
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v67 == 2)
  {
    v35 = *(v30 + 16);
    v34 = *(v30 + 24);
    v25 = __OFSUB__(v34, v35);
    v36 = v34 - v35;
    if (v25)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v36 > 255)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (__OFSUB__(HIDWORD(v30), v30))
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (HIDWORD(v30) - v30 > 255)
    {
      goto LABEL_48;
    }
  }

  if (v67 == 2)
  {
    v40 = *(v30 + 16);
    v39 = *(v30 + 24);
    v25 = __OFSUB__(v39, v40);
    v38 = v39 - v40;
    if (v25)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v38 >= 0xFFFF)
    {
      goto LABEL_48;
    }

    goto LABEL_41;
  }

  LODWORD(v38) = HIDWORD(v30) - v30;
  if (__OFSUB__(HIDWORD(v30), v30))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v38 < 0xFFFF)
  {
    v38 = v38;
LABEL_41:
    if (v38 < 0)
    {
      __break(1u);
    }

    else
    {
      v37 = v68;
      if (!(v38 >> 16))
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_48:
  sub_10000B02C();
  swift_allocError();
  *v46 = xmmword_100481830;
  *(v46 + 16) = 0;
  swift_willThrow();
  v47 = v30;
  v48 = v68;
  return sub_1000124C8(v47, v48);
}

uint64_t sub_1000F967C(uint64_t a1)
{
  v2 = v1;
  v66 = a1;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v58 - v7;
  __chkstk_darwin();
  v9 = &v58 - v8;
  v64 = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  v12 = os_log_type_enabled(v10, v11);
  v62 = v6;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v60 = v1;
    v15 = v4;
    v16 = v3;
    v17 = v14;
    v69[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v69);
    _os_log_impl(&_mh_execute_header, v10, v11, "nan_send: %s calling NAN_ADDITIONAL_ATTR", v13, 0xCu);
    sub_100002A00(v17);
    v3 = v16;
    v4 = v15;
    v2 = v60;
  }

  v63 = v4[1];
  v63(v9, v3);
  *(&v69[30] + 4) = 0u;
  *(&v69[28] + 4) = 0u;
  *(&v69[26] + 4) = 0u;
  *(&v69[24] + 4) = 0u;
  *(&v69[22] + 4) = 0u;
  *(&v69[20] + 4) = 0u;
  *(&v69[18] + 4) = 0u;
  *(&v69[16] + 4) = 0u;
  *(&v69[14] + 4) = 0u;
  *(&v69[12] + 4) = 0u;
  *(&v69[10] + 4) = 0u;
  *(&v69[8] + 4) = 0u;
  *(&v69[6] + 4) = 0u;
  *(&v69[4] + 4) = 0u;
  *(&v69[2] + 4) = 0u;
  *(v69 + 4) = 0u;
  HIDWORD(v69[32]) = 0;
  LODWORD(v69[0]) = 23;
  v18 = sub_100033AA8(_swiftEmptyArrayStorage);
  v19 = type metadata accessor for BinaryEncoder();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100480A90;
  *(v20 + 32) = v18;
  v67[3] = v19;
  v67[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v67[0] = v20;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute, protocol conformance descriptor for NANAttribute);

  Array<A>.encode(to:)();
  if (v2)
  {

    return sub_100002A00(v67);
  }

  v66 = v3;
  sub_100002A00(v67);
  swift_beginAccess();
  v23 = *(v20 + 16);
  v22 = *(v20 + 24);
  sub_10000AB0C(v23, v22);

  v24 = v65;
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v23, v22);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  v27 = v22 >> 62;
  if (os_log_type_enabled(v25, v26))
  {
    v60 = v23;
    v28 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v67[0] = v23;
    *v28 = 136315394;
    *(v28 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v67);
    *(v28 + 12) = 2048;
    v59 = v22 >> 62;
    if (v27 > 1)
    {
      if (v27 == 2)
      {
        v32 = v60[2];
        v31 = v60[3];
        v33 = __OFSUB__(v31, v32);
        v29 = v31 - v32;
        if (v33)
        {
          __break(1u);
LABEL_16:
          LODWORD(v30) = HIDWORD(v23) - v23;
          if (__OFSUB__(HIDWORD(v23), v23))
          {
LABEL_64:
            __break(1u);
            goto LABEL_65;
          }

          v30 = v30;
          goto LABEL_24;
        }
      }

      else
      {
        v29 = 0;
      }
    }

    else if (v27)
    {
      LODWORD(v29) = HIDWORD(v60) - v60;
      if (__OFSUB__(HIDWORD(v60), v60))
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v29 = v29;
    }

    else
    {
      v29 = BYTE6(v22);
    }

    *(v28 + 14) = v29;
    v27 = v60;
    sub_1000124C8(v60, v22);
    _os_log_impl(&_mh_execute_header, v25, v26, "nan_send: %s  attributeBuffer.count %ld", v28, 0x16u);
    sub_100002A00(v23);
    v23 = v27;

    v26 = v63;
    v63(v65, v66);
    LODWORD(v27) = v59;
    if (v59 > 1)
    {
      goto LABEL_22;
    }

LABEL_10:
    if (!v27)
    {
      v30 = BYTE6(v22);
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  sub_1000124C8(v23, v22);

  v26 = v63;
  v63(v24, v66);
  if (v27 <= 1)
  {
    goto LABEL_10;
  }

LABEL_22:
  if (v27 != 2)
  {
    goto LABEL_44;
  }

  v35 = v23[2];
  v34 = v23[3];
  v33 = __OFSUB__(v34, v35);
  v30 = v34 - v35;
  if (v33)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_24:
  if (!v30)
  {
    goto LABEL_44;
  }

  if (!v27)
  {
    v39 = 0;
    LOWORD(v40) = BYTE6(v22);
    goto LABEL_49;
  }

  if (v27 == 2)
  {
    v37 = v23[2];
    v36 = v23[3];
    v33 = __OFSUB__(v36, v37);
    v38 = v36 - v37;
    if (v33)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v38 >= 256)
    {
      goto LABEL_44;
    }
  }

  else
  {
    if (__OFSUB__(HIDWORD(v23), v23))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (HIDWORD(v23) - v23 >= 256)
    {
      goto LABEL_44;
    }
  }

  if (v27 == 2)
  {
    v42 = v23[2];
    v41 = v23[3];
    v33 = __OFSUB__(v41, v42);
    v43 = v41 - v42;
    if (!v33)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v43) = HIDWORD(v23) - v23;
  if (__OFSUB__(HIDWORD(v23), v23))
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v43 = v43;
LABEL_39:
  if (v43 < 0xFFFF)
  {
    if (v27 != 2)
    {
      LODWORD(v40) = HIDWORD(v23) - v23;
      if (__OFSUB__(HIDWORD(v23), v23))
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v40 = v40;
      goto LABEL_47;
    }

    v45 = v23[2];
    v44 = v23[3];
    v33 = __OFSUB__(v44, v45);
    v40 = v44 - v45;
    if (!v33)
    {
LABEL_47:
      if ((v40 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v39 = v27;
        if (!(v40 >> 16))
        {
LABEL_49:
          WORD2(v69[32]) = v40;
          sub_1000A1CDC(v23, v22, v69 + 4, &v69[32] + 4);
          v47 = v62;
          Logger.init(subsystem:category:)();
          sub_10000AB0C(v23, v22);
          v48 = Logger.logObject.getter();
          LODWORD(v65) = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v48, v65))
          {
            sub_1000124C8(v23, v22);

            v26(v47, v66);
LABEL_60:
            memcpy(v67, v69, sizeof(v67));
            v56 = *(v61 + 16);
            v57 = *(v61 + 24);

            AppleDevice.setRequest(requestType:data:on:)(0x244uLL, v67, &v68, 0, v56, v57);

            return sub_1000124C8(v23, v22);
          }

          v64 = v4;
          v49 = swift_slowAlloc();
          v67[0] = swift_slowAlloc();
          *v49 = 136315650;
          *(v49 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v67);
          *(v49 + 12) = 2048;
          if (v39 == 2)
          {
            v52 = v23[2];
            v51 = v23[3];
            v33 = __OFSUB__(v51, v52);
            v50 = v51 - v52;
            if (!v33)
            {
              goto LABEL_59;
            }

            __break(1u);
          }

          else if (v39 == 1)
          {
            LODWORD(v50) = HIDWORD(v23) - v23;
            if (!__OFSUB__(HIDWORD(v23), v23))
            {
              v50 = v50;
LABEL_59:
              *(v49 + 14) = v50;
              sub_1000124C8(v23, v22);
              *(v49 + 22) = 2080;
              v53 = Data.hexString.getter(v23, v22);
              v55 = sub_100002320(v53, v54, v67);

              *(v49 + 24) = v55;
              _os_log_impl(&_mh_execute_header, v48, v65, "nan_send: %s APPLE80211_IOC_NAN_ADDITIONAL_ATTR custom attribute count %ld attributes %s", v49, 0x20u);
              swift_arrayDestroy();

              v63(v62, v66);
              goto LABEL_60;
            }

LABEL_71:
            __break(1u);
          }

          v50 = BYTE6(v22);
          goto LABEL_59;
        }
      }

      __break(1u);
      goto LABEL_64;
    }

    __break(1u);
  }

LABEL_44:
  sub_10000B02C();
  swift_allocError();
  *v46 = xmmword_100481830;
  *(v46 + 16) = 0;
  swift_willThrow();
  return sub_1000124C8(v23, v22);
}

uint64_t IO80211Driver<>.transmitPairingFrames(with:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a1;
  v75 = a2;
  v73 = a4;
  v74 = a3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v69 - v8;
  __chkstk_darwin();
  v10 = &v69 - v9;
  v77 = &unk_1004B4EC0;
  Logger.init(subsystem:category:)();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  v13 = os_log_type_enabled(v11, v12);
  v76 = v7;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = v5;
    v16 = v4;
    v17 = swift_slowAlloc();
    v82[0] = v17;
    *v14 = 136315138;
    *(v14 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v82);
    _os_log_impl(&_mh_execute_header, v11, v12, "nan_send: %s calling NAN_ADDITIONAL_ATTR", v14, 0xCu);
    sub_100002A00(v17);
    v4 = v16;
    v5 = v15;

    v18 = v15;
  }

  else
  {

    v18 = v5;
  }

  v19 = *(v18 + 8);
  v19(v10, v4);
  *(&v82[30] + 4) = 0u;
  *(&v82[28] + 4) = 0u;
  *(&v82[26] + 4) = 0u;
  *(&v82[24] + 4) = 0u;
  *(&v82[22] + 4) = 0u;
  *(&v82[20] + 4) = 0u;
  *(&v82[18] + 4) = 0u;
  *(&v82[16] + 4) = 0u;
  *(&v82[14] + 4) = 0u;
  *(&v82[12] + 4) = 0u;
  *(&v82[10] + 4) = 0u;
  *(&v82[8] + 4) = 0u;
  *(&v82[6] + 4) = 0u;
  *(&v82[4] + 4) = 0u;
  *(&v82[2] + 4) = 0u;
  *(v82 + 4) = 0u;
  HIDWORD(v82[32]) = 0;
  LODWORD(v82[0]) = 23;
  v20 = sub_100033AA8(_swiftEmptyArrayStorage);
  v21 = type metadata accessor for BinaryEncoder();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100480A90;
  *(v22 + 32) = v20;
  v81[3] = v21;
  v81[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v81[0] = v22;
  type metadata accessor for NANAttribute(0);
  sub_10011AB40(&qword_10058D458, type metadata accessor for NANAttribute, protocol conformance descriptor for NANAttribute);

  v23 = v80;
  Array<A>.encode(to:)();
  if (v23)
  {

    return sub_100002A00(v81);
  }

  v72 = v5;
  v80 = v19;
  sub_100002A00(v81);
  swift_beginAccess();
  v25 = *(v22 + 16);
  v26 = *(v22 + 24);
  sub_10000AB0C(v25, v26);

  v27 = v78;
  Logger.init(subsystem:category:)();
  sub_10000AB0C(v25, v26);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v26 >> 62;
  v79 = v26 >> 62;
  if (!v30)
  {
    sub_1000124C8(v25, v26);

    v35 = v27;
    goto LABEL_19;
  }

  v71 = v4;
  v32 = swift_slowAlloc();
  v33 = swift_slowAlloc();
  v81[0] = v33;
  *v32 = 136315394;
  *(v32 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v81);
  *(v32 + 12) = 2048;
  if (v31 > 1)
  {
    if (v31 != 2)
    {
      v34 = 0;
      goto LABEL_18;
    }

    v37 = *(v25 + 16);
    v36 = *(v25 + 24);
    v38 = __OFSUB__(v36, v37);
    v34 = v36 - v37;
    if (!v38)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_15:
    LODWORD(v34) = HIDWORD(v25) - v25;
    if (__OFSUB__(HIDWORD(v25), v25))
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v34 = v34;
    goto LABEL_18;
  }

  if (v31)
  {
    goto LABEL_15;
  }

  v34 = BYTE6(v26);
LABEL_18:
  *(v32 + 14) = v34;
  sub_1000124C8(v25, v26);
  _os_log_impl(&_mh_execute_header, v28, v29, "nan_send: %s  attributeBuffer.count %ld", v32, 0x16u);
  sub_100002A00(v33);

  v35 = v78;
  v4 = v71;
LABEL_19:
  v80(v35, v4);
  if (v79 > 1)
  {
    if (v79 != 2)
    {
      goto LABEL_51;
    }

    v40 = *(v25 + 16);
    v39 = *(v25 + 24);
    v38 = __OFSUB__(v39, v40);
    v41 = v39 - v40;
    if (v38)
    {
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    if (!v41)
    {
      goto LABEL_51;
    }
  }

  else if (v79)
  {
    if (__OFSUB__(HIDWORD(v25), v25))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (HIDWORD(v25) == v25)
    {
      goto LABEL_51;
    }
  }

  else if (!BYTE6(v26))
  {
    goto LABEL_51;
  }

  if (!v79)
  {
    LOWORD(v45) = BYTE6(v26);
    goto LABEL_46;
  }

  if (v79 == 2)
  {
    v43 = *(v25 + 16);
    v42 = *(v25 + 24);
    v38 = __OFSUB__(v42, v43);
    v44 = v42 - v43;
    if (v38)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v44 > 255)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (__OFSUB__(HIDWORD(v25), v25))
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    if (HIDWORD(v25) - v25 > 255)
    {
      goto LABEL_51;
    }
  }

  if (v79 == 2)
  {
    v47 = *(v25 + 16);
    v46 = *(v25 + 24);
    v38 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (v38)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (v45 >= 0xFFFF)
    {
      goto LABEL_51;
    }

    goto LABEL_44;
  }

  LODWORD(v45) = HIDWORD(v25) - v25;
  if (__OFSUB__(HIDWORD(v25), v25))
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v45 < 0xFFFF)
  {
    v45 = v45;
LABEL_44:
    if (v45 < 0)
    {
      __break(1u);
    }

    else if (!(v45 >> 16))
    {
LABEL_46:
      WORD2(v82[32]) = v45;
      sub_1000A1CDC(v25, v26, v82 + 4, &v82[32] + 4);
      v48 = v26;
      v49 = v76;
      Logger.init(subsystem:category:)();
      sub_10000AB0C(v25, v48);
      v50 = Logger.logObject.getter();
      LODWORD(v78) = static os_log_type_t.error.getter();
      v51 = os_log_type_enabled(v50, v78);
      v70 = v48;
      if (!v51)
      {
        sub_1000124C8(v25, v48);

        v57 = v49;
LABEL_58:
        v80(v57, v4);
        memcpy(v81, v82, 0x108uLL);
        type metadata accessor for apple80211_nan_vendor_payload(0);
        v64 = v63;
        v65 = *(v74 + 8);
        v66 = *(v73 + 16);
        v67 = v75;
        swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_100110D80(580, v81, v67, v64, v65, v66, AssociatedConformanceWitness);
        v55 = v25;
        v56 = v70;
        return sub_1000124C8(v55, v56);
      }

      v52 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v81[0] = v77;
      *v52 = 136315650;
      *(v52 + 4) = sub_100002320(0xD00000000000001CLL, 0x80000001004B9290, v81);
      *(v52 + 12) = 2048;
      if (v79 == 2)
      {
        v59 = *(v25 + 16);
        v58 = *(v25 + 24);
        v38 = __OFSUB__(v58, v59);
        v53 = v58 - v59;
        if (!v38)
        {
          goto LABEL_57;
        }

        __break(1u);
      }

      else if (v79 == 1)
      {
        LODWORD(v53) = HIDWORD(v25) - v25;
        if (!__OFSUB__(HIDWORD(v25), v25))
        {
          v53 = v53;
LABEL_57:
          *(v52 + 14) = v53;
          sub_1000124C8(v25, v48);
          *(v52 + 22) = 2080;
          v60 = Data.hexString.getter(v25, v48);
          v62 = sub_100002320(v60, v61, v81);

          *(v52 + 24) = v62;
          _os_log_impl(&_mh_execute_header, v50, v78, "nan_send: %s APPLE80211_IOC_NAN_ADDITIONAL_ATTR custom attribute count %ld attributes %s", v52, 0x20u);
          swift_arrayDestroy();

          v57 = v76;
          goto LABEL_58;
        }

LABEL_69:
        __break(1u);
      }

      v53 = BYTE6(v48);
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_51:
  sub_10000B02C();
  swift_allocError();
  *v54 = xmmword_100481830;
  *(v54 + 16) = 0;
  swift_willThrow();
  v55 = v25;
  v56 = v26;
  return sub_1000124C8(v55, v56);
}

uint64_t sub_1000FA9F0(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = *(a1 + 1);
  v29 = a1[16];
  v30 = v11;
  v13 = *(a1 + 5);
  v7.n128_u32[0] = *(a1 + 2);
  v28 = vmovl_u8(v7.n128_u64[0]);
  v14 = a1[6];
  v31 = a1[7];
  v32 = v14;
  v15 = *(a1 + 4);
  v33 = *(a1 + 3);
  v34 = v15;
  Logger.init(subsystem:category:)();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v27 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v26) = v13;
    v21 = v20;
    *v37 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B92B0, v37);
    _os_log_impl(&_mh_execute_header, v16, v17, "nan_send: %s  APPLE80211_IOC_NAN_ELECTION_ROLE", v19, 0xCu);
    sub_100002A00(v21);
    v13 = HIDWORD(v26);
  }

  (*(v6 + 8))(v9, v5);
  v22 = 0x201000303uLL >> (8 * v10);
  if (v10 >= 5)
  {
    LOBYTE(v22) = 3;
  }

  v37[0] = v22;
  *&v37[1] = v35;
  v37[3] = v36;
  v37[4] = v30;
  v37[5] = v29;
  *&v37[6] = 0;
  v38 = 0;
  v39 = vuzp1_s8(*v28.i8, *v28.i8).u32[0];
  v40 = v32;
  v41 = v31;
  v42 = 0;
  v43 = HIDWORD(v33);
  v44 = v33;
  v45 = HIDWORD(v34);
  v46 = v34;
  v47 = v12;
  v48 = v13;
  v23 = *(v3 + 16);
  v24 = *(v3 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x14BuLL, v37, &v49, 0, v23, v24);
}

uint64_t IO80211Driver<>.update(electionParameters:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = *(a1 + 1);
  v34 = a1[16];
  v35 = v12;
  v14 = *(a1 + 5);
  v8.n128_u32[0] = *(a1 + 2);
  v33 = vmovl_u8(v8.n128_u64[0]);
  v15 = a1[6];
  v36 = a1[7];
  v37 = v15;
  v16 = *(a1 + 3);
  v38 = *(a1 + 4);
  Logger.init(subsystem:category:)();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    HIDWORD(v31) = v14;
    v20 = v19;
    v21 = swift_slowAlloc();
    v32 = a4;
    v22 = v21;
    *v41 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_100002320(0xD00000000000001BLL, 0x80000001004B92B0, v41);
    _os_log_impl(&_mh_execute_header, v17, v18, "nan_send: %s  APPLE80211_IOC_NAN_ELECTION_ROLE", v20, 0xCu);
    sub_100002A00(v22);
    a4 = v32;

    v14 = HIDWORD(v31);
  }

  (*(v7 + 8))(v10, v6);
  v23 = 0x201000303uLL >> (8 * v11);
  if (v11 >= 5)
  {
    LOBYTE(v23) = 3;
  }

  v41[0] = v23;
  *&v41[1] = v53;
  v41[3] = v54;
  v41[4] = v35;
  v41[5] = v34;
  *&v41[6] = 0;
  v42 = 0;
  v43 = vuzp1_s8(*v33.i8, *v33.i8).u32[0];
  v44 = v37;
  v45 = v36;
  v46 = 0;
  v47 = HIDWORD(v16);
  v48 = v16;
  v49 = HIDWORD(v38);
  v50 = v38;
  v51 = v13;
  v52 = v14;
  type metadata accessor for apple80211_nan_role_cfg(0);
  v25 = v24;
  v26 = v40;
  v27 = *(v39 + 8);
  v28 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(331, v41, v26, v25, v27, v28, AssociatedConformanceWitness);
}

void sub_1000FB04C(uint64_t a1)
{
  __chkstk_darwin();
  v118 = v2;
  v114 = v1;
  v4 = v3;
  v115 = type metadata accessor for Logger();
  v108 = *(v115 - 8);
  __chkstk_darwin();
  v113 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v102 - v6;
  v7 = type metadata accessor for DispatchTimeInterval();
  v110 = *(v7 - 8);
  v111 = v7;
  __chkstk_darwin();
  v109 = (v102.n128_u64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = type metadata accessor for SHA256Digest();
  v9 = *(v117 - 1);
  __chkstk_darwin();
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v120, 0xE14uLL);
  HIBYTE(v120[875]) = *v4;
  v16 = *(v4 + 16);
  v116 = *(v4 + 8);
  v112 = v16;
  SHA256.init()();
  v17 = String.lowercased()();

  v18 = v118;
  sub_1001F93A4(v17._countAndFlagsBits, v17._object, v15);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v9 + 8))(v11, v117);
  v19 = *v121;
  v20 = *&v121[8];
  (*(v13 + 8))(v15, v12);
  *v121 = v19;
  *&v121[8] = v20;
  v21 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(*v121, *&v121[8]);
  KeyPath = swift_getKeyPath();

  v23 = sub_1000AEE10(v116, v112, &v120[1] + 2, KeyPath, 0xFFuLL);

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v112 = v21;
  v24 = 254;
  if (v23 < 0xFE)
  {
    v24 = v23;
  }

  HIWORD(v120[65]) = v24;
  v25 = type metadata accessor for NANSubscribe.Configuration(0);
  v26 = (v4 + *(v25 + 48));
  v27 = *(v26 + 1);
  v28 = *v26;
  v29 = swift_getKeyPath();
  v118 = v18;
  v30 = v29;
  v31 = swift_getKeyPath();
  sub_1001136FC(v120, v30, v31, v28, v27);

  v117 = v25;
  v32 = (v4 + *(v25 + 44));
  v33 = *(v32 + 1);
  v34 = *v32;
  v35 = swift_getKeyPath();
  v36 = swift_getKeyPath();
  sub_1001136FC(v120, v35, v36, v34, v33);

  v116 = v4;
  LOBYTE(v35) = NANSubscribe.Configuration.serviceInfo.getter();
  v38 = v37;
  v40 = v39;
  v41 = sub_100033AA8(_swiftEmptyArrayStorage);
  v42 = type metadata accessor for BinaryEncoder();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100480A90;
  *(v43 + 32) = v41;
  *&v121[24] = v42;
  *&v121[32] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  *v121 = v43;

  v44 = v118;
  NANServiceInfo.encode(to:)(v121, v35, v38, v40);
  if (v44)
  {

    sub_1000124C8(v38, v40);

    sub_100002A00(v121);
    v118 = 0;
  }

  else
  {
    v118 = 0;
    sub_1000124C8(v38, v40);
    sub_100002A00(v121);
    swift_beginAccess();
    v45 = *(v43 + 16);
    v46 = *(v43 + 24);
    sub_10000AB0C(v45, v46);

    sub_10011A030(v45, v46, v119);
    memcpy(&v120[338], v119, 0x802uLL);
  }

  v48 = v110;
  v47 = v111;
  v50 = v116;
  v49 = v117;
  if (*(v116 + 32))
  {
    v51 = 2;
  }

  else
  {
    v51 = 1;
  }

  BYTE2(v120[875]) = v51;
  BYTE1(v120[875]) = *(v116 + v117[13]);
  LOBYTE(v120[876]) = 0x1008040100uLL >> (8 * *(v116 + v117[10]));
  v52 = sub_100028EF8();
  v53 = v109;
  *v109 = 0x80000;
  (*(v48 + 13))(v53, enum case for DispatchTimeInterval.microseconds(_:), v47);
  v54 = sub_100028EF8();
  (*(v48 + 1))(v53, v47);
  if (!v54)
  {
    goto LABEL_58;
  }

  if (v52 == 0x8000000000000000 && v54 == -1)
  {
    goto LABEL_61;
  }

  if (v52 / v54 < 0)
  {
    goto LABEL_59;
  }

  if ((v52 / v54) >> 32)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v120[896] = v52 / v54;
  v120[897] = -1;
  v55 = v49[14];
  if (*(v50 + 33))
  {
    v56 = 194;
  }

  else
  {
    v56 = 192;
  }

  if (*(v50 + 33))
  {
    v57 = 2;
  }

  else
  {
    v57 = 0;
  }

  if (*(v50 + v49[15]))
  {
    v58 = v56;
  }

  else
  {
    v58 = v57;
  }

  v59 = (v50 + v55);
  v60 = *(v50 + v55 + 16);
  if ((v60 & 0xFF00) != 0x200)
  {
    v62 = v59[1];
    *v121 = *v59;
    v61 = *v121;
    *&v121[8] = v62;
    sub_10000AB0C(*v121, v62);
    sub_10000AB0C(v61, v62);
    v63 = DataProtocol.copyBytes(to:)();
    sub_1000124C8(*v121, *&v121[8]);
    if ((v63 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v63))
      {
        v120[877] = v63;
        sub_10011A01C(v61, v62, v60);
        LOBYTE(v120[878]) = v60;
        if ((v60 & 0x100) != 0)
        {
          v64 = 8;
        }

        else
        {
          v64 = 12;
        }

        v58 |= v64;
        v49 = v117;
        goto LABEL_31;
      }

LABEL_63:
      __break(1u);
    }

LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_31:
  v65 = v118;
  v120[898] = v58;
  v111 = &unk_1004B4EC0;
  v66 = v107;
  Logger.init(subsystem:category:)();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v121 = v70;
    *v69 = 136315138;
    *(v69 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v121);
    _os_log_impl(&_mh_execute_header, v67, v68, "nan_send: %s  APPLE80211_IOC_NAN_SUBSCRIBE", v69, 0xCu);
    sub_100002A00(v70);

    v49 = v117;
  }

  v71 = v108;
  v110 = *(v108 + 8);
  v110(v66, v115);
  v72 = v114;
  v73 = v65;
  v74 = (v50 + v49[24]);
  if (v74[1] & 1) != 0 || (*(v50 + v49[20]))
  {
    goto LABEL_35;
  }

  v78 = *v74;
  *v121 = &_mh_execute_header;
  v79 = v114[5];
  v81 = v114[2];
  v80 = v114[3];

  AppleDevice.setRequest(requestType:data:on:)(0x241uLL, v121, &v121[8], 0, v81, v80);
  if (v73)
  {
    goto LABEL_39;
  }

  v103 = v78;
  v105 = v78 >> 8;
  v106 = v78;

  v112 = 0;
  v104 = v71 + 8;
  v82 = 1;
  v83.n128_u64[0] = 136315394;
  v102 = v83;
  v108 = v80;
  v109 = v79;
  v107 = v81;
  while (1)
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    v94[2] = 0;

    AppleDevice.getRequest(requestType:data:on:)(0x33uLL, v94, (v94 + 3), 0, v81, v80);

    if (v73)
    {

      return;
    }

    v118 = 0;
    v95 = *v94;
    v96 = v94[1];

    if (v95 == v106 && v96 == v105)
    {
      break;
    }

    v98 = v113;
    Logger.init(subsystem:category:)();
    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v99, v100))
    {
      v84 = swift_slowAlloc();
      *v121 = swift_slowAlloc();
      *v84 = v102.n128_u32[0];
      v85 = CountryCode.description.getter(v103);
      v87 = sub_100002320(v85, v86, v121);

      *(v84 + 4) = v87;
      *(v84 + 12) = 2080;
      v88 = CountryCode.description.getter(v95 | (v96 << 8));
      v90 = sub_100002320(v88, v89, v121);

      *(v84 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v99, v100, "counntry code mismatch: configured %s current %s", v84, 0x16u);
      swift_arrayDestroy();
      v72 = v114;

      v91 = v113;
    }

    else
    {

      v91 = v98;
    }

    v110(v91, v115);
    v50 = v116;
    v73 = v118;
    v81 = v107;
    v80 = v108;
    v92 = v112;
    v93 = v112 + 1;
    sleep(2u);
    v82 = v92 < 2;
    v112 = v92 + 1;
    if (v93 == 3)
    {
      goto LABEL_54;
    }
  }

  v73 = v118;
  v80 = v108;
  v81 = v107;
LABEL_54:
  *v121 = 0;

  AppleDevice.setRequest(requestType:data:on:)(0x241uLL, v121, &v121[8], 0, v81, v80);

  if (!v73)
  {
    if (!v82)
    {
      sub_10000B02C();
      swift_allocError();
      *v101 = xmmword_100481800;
      *(v101 + 16) = 1;
      swift_willThrow();
      return;
    }

LABEL_35:
    if ((*(v50 + v117[20]) & 1) != 0 || (v75 = *(v50 + v117[23]) | (*(v50 + v117[23] + 4) << 32), (v75 & 0xFF00000000) == 0x300000000) || (sub_1000F6D28(v75), !v73))
    {
      memcpy(v121, v120, sizeof(v121));
      v76 = v72[2];
      v77 = v72[3];

      AppleDevice.setRequest(requestType:data:on:)(0x12FuLL, v121, &v122, 0, v76, v77);
LABEL_39:
    }
  }
}

void *IO80211Driver<>.start(configuration:)(uint64_t a1)
{
  __chkstk_darwin();
  v135 = v3;
  v136 = v2;
  v130 = v1;
  v131 = v4;
  v129 = v5;
  v7 = v6;
  v132 = type metadata accessor for Logger();
  v123 = *(v132 - 8);
  __chkstk_darwin();
  v128 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v115 - v9;
  v10 = type metadata accessor for DispatchTimeInterval();
  v125 = *(v10 - 8);
  v126 = v10;
  __chkstk_darwin();
  v124 = (&v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = type metadata accessor for SHA256Digest();
  v12 = *(v134 - 8);
  __chkstk_darwin();
  v14 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SHA256();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v138, 0xE14uLL);
  HIBYTE(v138[875]) = *v7;
  v19 = *(v7 + 16);
  v133 = *(v7 + 8);
  v127 = v19;
  SHA256.init()();
  v20 = String.lowercased()();

  v21 = v136;
  sub_1001F93A4(v20._countAndFlagsBits, v20._object, v18);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v12 + 8))(v14, v134);
  v22 = v139[0];
  v23 = v139[1];
  (*(v16 + 8))(v18, v15);
  v139[0] = v22;
  v139[1] = v23;
  v24 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v139[0], v139[1]);
  KeyPath = swift_getKeyPath();

  v26 = sub_1000AEE10(v133, v127, &v138[1] + 2, KeyPath, 0xFFuLL);

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v127 = v24;
  v27 = 254;
  if (v26 < 0xFE)
  {
    v27 = v26;
  }

  HIWORD(v138[65]) = v27;
  v28 = type metadata accessor for NANSubscribe.Configuration(0);
  v29 = (v7 + *(v28 + 48));
  v30 = *(v29 + 1);
  v31 = *v29;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  sub_1001136FC(v138, v32, v33, v31, v30);

  v134 = v28;
  v34 = (v7 + *(v28 + 44));
  v35 = *(v34 + 1);
  v36 = *v34;
  v37 = swift_getKeyPath();
  v38 = swift_getKeyPath();
  sub_1001136FC(v138, v37, v38, v36, v35);

  v133 = v7;
  LOBYTE(v37) = NANSubscribe.Configuration.serviceInfo.getter();
  v40 = v39;
  v42 = v41;
  v43 = sub_100033AA8(_swiftEmptyArrayStorage);
  v44 = type metadata accessor for BinaryEncoder();
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100480A90;
  *(v45 + 32) = v43;
  v139[3] = v44;
  v139[4] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v139[0] = v45;

  NANServiceInfo.encode(to:)(v139, v37, v40, v42);
  if (v21)
  {

    sub_1000124C8(v40, v42);

    sub_100002A00(v139);
    v136 = 0;
  }

  else
  {
    v136 = 0;
    sub_1000124C8(v40, v42);
    sub_100002A00(v139);
    swift_beginAccess();
    v46 = *(v45 + 16);
    v47 = *(v45 + 24);
    sub_10000AB0C(v46, v47);

    sub_10011A030(v46, v47, v137);
    memcpy(&v138[338], v137, 0x802uLL);
  }

  v48 = v126;
  v50 = v133;
  v49 = v134;
  if (*(v133 + 32))
  {
    v51 = 2;
  }

  else
  {
    v51 = 1;
  }

  BYTE2(v138[875]) = v51;
  BYTE1(v138[875]) = *(v133 + *(v134 + 52));
  LOBYTE(v138[876]) = 0x1008040100uLL >> (8 * *(v133 + *(v134 + 40)));
  v52 = sub_100028EF8();
  v54 = v124;
  v53 = v125;
  *v124 = 0x80000;
  (*(v53 + 104))(v54, enum case for DispatchTimeInterval.microseconds(_:), v48);
  v55 = sub_100028EF8();
  (*(v53 + 8))(v54, v48);
  if (!v55)
  {
    goto LABEL_59;
  }

  if (v52 == 0x8000000000000000 && v55 == -1)
  {
    goto LABEL_62;
  }

  if (v52 / v55 < 0)
  {
    goto LABEL_60;
  }

  if ((v52 / v55) >> 32)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v138[896] = v52 / v55;
  v138[897] = -1;
  v56 = v49[14];
  if (*(v50 + 33))
  {
    v57 = 194;
  }

  else
  {
    v57 = 192;
  }

  if (*(v50 + 33))
  {
    v58 = 2;
  }

  else
  {
    v58 = 0;
  }

  if (*(v50 + v49[15]))
  {
    v59 = v57;
  }

  else
  {
    v59 = v58;
  }

  v60 = (v50 + v56);
  v61 = *(v50 + v56 + 16);
  if ((v61 & 0xFF00) != 0x200)
  {
    v63 = v60[1];
    v139[0] = *v60;
    v62 = v139[0];
    v139[1] = v63;
    sub_10011A008(v139[0], v63, v61);
    sub_10000AB0C(v62, v63);
    v64 = DataProtocol.copyBytes(to:)();
    sub_1000124C8(v139[0], v139[1]);
    if ((v64 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v64))
      {
        v138[877] = v64;
        sub_10011A01C(v62, v63, v61);
        LOBYTE(v138[878]) = v61;
        if ((v61 & 0x100) != 0)
        {
          v65 = 8;
        }

        else
        {
          v65 = 12;
        }

        v59 |= v65;
        goto LABEL_31;
      }

LABEL_64:
      __break(1u);
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

LABEL_31:
  v138[898] = v59;
  v126 = &unk_1004B4EC0;
  v66 = v122;
  Logger.init(subsystem:category:)();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v139[0] = v70;
    *v69 = 136315138;
    *(v69 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v139);
    _os_log_impl(&_mh_execute_header, v67, v68, "nan_send: %s  APPLE80211_IOC_NAN_SUBSCRIBE", v69, 0xCu);
    sub_100002A00(v70);
  }

  v71 = v123;
  v72 = *(v123 + 8);
  v72(v66, v132);
  v73 = v129;
  v74 = v131;
  v75 = (v50 + v49[24]);
  if (v75[1] & 1) != 0 || (*(v50 + v49[20]))
  {
LABEL_35:
    if ((*(v50 + v49[20]) & 1) != 0 || ((*(v50 + v49[23]) | (*(v50 + v49[23] + 4) << 32)) & 0xFF00000000) == 0x300000000)
    {
      v76 = v135;
LABEL_38:
      memcpy(v139, v138, 0xE14uLL);
      type metadata accessor for apple80211_nan_subscribe_data(0);
      v78 = v77;
      v79 = *(v73 + 8);
      v80 = *(v131 + 16);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      return sub_100110D80(303, v139, v76, v78, v79, v80, AssociatedConformanceWitness);
    }

    v76 = v135;
    v92 = v136;
    result = (*(v131 + 144))();
    if (!v92)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v118 = *v75;
    v139[0] = &_mh_execute_header;
    type metadata accessor for apple80211_nan_country_code_sync(0);
    v83 = v73;
    v85 = v84;
    v86 = *(v83 + 8);
    v87 = *(v74 + 16);
    v88 = v135;
    swift_getAssociatedTypeWitness();
    v89 = swift_getAssociatedConformanceWitness();
    v116 = v85;
    v125 = v87;
    v90 = v136;
    result = sub_100110D80(577, v139, v88, v85, v86, v87, v89);
    v136 = v90;
    if (!v90)
    {
      v123 = v89;
      v124 = v86;
      v127 = 0;
      v121 = v118 >> 8;
      LODWORD(v122) = v118;
      v119 = v71 + 8;
      v93 = 1;
      *&v91 = 136315394;
      v117 = v91;
      v94 = v125;
      v73 = v129;
      v120 = v72;
      while (1)
      {
        v98 = sub_10005DC58(&qword_10058D448, &qword_100486D28);
        v99 = v136;
        result = sub_100110570(51, v98, 0, 0, v135, v98, v124, v94, v123);
        v136 = v99;
        if (v99)
        {
          break;
        }

        v100 = LOBYTE(v139[0]);
        v101 = BYTE1(v139[0]);
        if (LOBYTE(v139[0]) == v122 && BYTE1(v139[0]) == v121)
        {
          v49 = v134;
          v94 = v125;
LABEL_55:
          v139[0] = 0;
          v113 = v136;
          result = sub_100110D80(577, v139, v135, v116, v124, v94, v123);
          v136 = v113;
          if (v113)
          {
            return result;
          }

          if (!v93)
          {
            sub_10000B02C();
            swift_allocError();
            *v114 = xmmword_100481800;
            *(v114 + 16) = 1;
            return swift_willThrow();
          }

          goto LABEL_35;
        }

        v103 = v128;
        Logger.init(subsystem:category:)();
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          v139[0] = swift_slowAlloc();
          *v106 = v117;
          v107 = CountryCode.description.getter(v118);
          v109 = sub_100002320(v107, v108, v139);

          *(v106 + 4) = v109;
          *(v106 + 12) = 2080;
          v110 = CountryCode.description.getter(v100 | (v101 << 8));
          v112 = sub_100002320(v110, v111, v139);

          *(v106 + 14) = v112;
          _os_log_impl(&_mh_execute_header, v104, v105, "counntry code mismatch: configured %s current %s", v106, 0x16u);
          swift_arrayDestroy();

          v73 = v129;

          v95 = v128;
        }

        else
        {

          v95 = v103;
        }

        v120(v95, v132);
        v50 = v133;
        v49 = v134;
        v94 = v125;
        v96 = v127;
        v97 = v127 + 1;
        sleep(2u);
        v93 = v96 < 2;
        v127 = v97;
        if (v97 == 3)
        {
          goto LABEL_55;
        }
      }
    }
  }

  return result;
}

{
  __chkstk_darwin();
  v152 = v2;
  v150 = v1;
  v144 = v3;
  v145 = v4;
  v147 = v5;
  v7 = v6;
  v146 = type metadata accessor for Logger();
  v139 = *(v146 - 8);
  __chkstk_darwin();
  v149 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v138 = &v131 - v9;
  v10 = type metadata accessor for DispatchTimeInterval();
  v141 = *(v10 - 8);
  v142 = v10;
  __chkstk_darwin();
  v140 = (&v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for SHA256Digest();
  v12 = *(v151 - 1);
  __chkstk_darwin();
  v14 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SHA256();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v155, 0x15C8uLL);
  HIBYTE(v155[851]) = *v7;
  v19 = *(v7 + 16);
  v148 = *(v7 + 8);
  *&v143 = v19;
  SHA256.init()();
  v20 = String.lowercased()();

  v21 = v152;
  sub_1001F93A4(v20._countAndFlagsBits, v20._object, v18);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v12 + 8))(v14, v151);
  v22 = v156[0];
  v23 = v156[1];
  (*(v16 + 8))(v18, v15);
  v156[0] = v22;
  v156[1] = v23;
  v24 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v156[0], v156[1]);
  KeyPath = swift_getKeyPath();

  v26 = sub_1000AEE10(v148, v143, &v155[1] + 2, KeyPath, 0xFFuLL);

  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v136 = v24;
  v27 = 254;
  if (v26 < 0xFE)
  {
    v27 = v26;
  }

  HIWORD(v155[65]) = v27;
  v28 = *(v7 + 48);
  v29 = *(v7 + 40);
  v30 = swift_getKeyPath();
  v152 = v21;
  v31 = v30;
  v32 = swift_getKeyPath();
  sub_1001136FC(v155, v31, v32, v29, v28);

  v33 = *(v7 + 64);
  v34 = *(v7 + 56);
  v35 = swift_getKeyPath();
  v36 = swift_getKeyPath();
  sub_1001136FC(v155, v35, v36, v34, v33);

  v151 = v7;
  LOBYTE(v35) = NANPublish.Configuration.serviceInfo.getter();
  v38 = v37;
  v40 = v39;
  v41 = sub_100033AA8(_swiftEmptyArrayStorage);
  v42 = type metadata accessor for BinaryEncoder();
  v43 = swift_allocObject();
  v143 = xmmword_100480A90;
  *(v43 + 16) = xmmword_100480A90;
  *(v43 + 32) = v41;
  v156[3] = v42;
  v137 = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v156[4] = v137;
  v156[0] = v43;

  v44 = v152;
  NANServiceInfo.encode(to:)(v156, v35, v38, v40);
  if (v44)
  {

    sub_1000124C8(v38, v40);

    sub_100002A00(v156);
    v152 = 0;
  }

  else
  {
    v152 = 0;
    sub_1000124C8(v38, v40);
    sub_100002A00(v156);
    swift_beginAccess();
    v45 = *(v43 + 16);
    v46 = *(v43 + 24);
    sub_10000AB0C(v45, v46);

    sub_10011A030(v45, v46, v153);
    memcpy(&v155[338], v153, 0x802uLL);
  }

  v47 = v151;
  LOBYTE(v155[873]) = v151[32];
  BYTE1(v155[851]) = v151[72] + 1;
  if (v151[73])
  {
    v48 = 1;
  }

  else
  {
    v48 = 2;
  }

  BYTE2(v155[851]) = v48;
  LOBYTE(v155[851]) = v151[75];
  v49 = type metadata accessor for NANPublish.Configuration(0);
  LOBYTE(v155[852]) = 0x1008040100uLL >> (8 * v47[v49[19]]);
  v148 = v49;
  v50 = sub_100028EF8();
  v52 = v140;
  v51 = v141;
  *v140 = 0x80000;
  v53 = v142;
  (*(v51 + 104))(v52, enum case for DispatchTimeInterval.microseconds(_:), v142);
  v54 = sub_100028EF8();
  (*(v51 + 8))(v52, v53);
  if (!v54)
  {
    goto LABEL_79;
  }

  if (v50 == 0x8000000000000000 && v54 == -1)
  {
LABEL_82:
    __break(1u);
  }

  if (v50 / v54 < 0)
  {
    goto LABEL_80;
  }

  if ((v50 / v54) >> 32)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v155[854] = v50 / v54;
  v155[855] = -1;
  v155[856] = v47[74];
  if (v47[76])
  {
    v155[857] = 2;
    v55 = v148;
    if (v47[v148[20]] != 1)
    {
      goto LABEL_21;
    }

    v56 = 50;
  }

  else
  {
    v155[857] = 0;
    v55 = v148;
    if ((v47[v148[20]] & 1) == 0)
    {
      goto LABEL_21;
    }

    v56 = 48;
  }

  v155[857] = v56;
LABEL_21:
  v57 = &v47[v55[21]];
  v58 = *(v57 + 2);
  if (*(v58 + 16))
  {
    v59 = 68;
  }

  else
  {
    v59 = 4;
  }

  v60 = v59 | 0x200;
  v61 = v47[v55[34]];
  v62 = v59 | 0x600;
  if ((v61 & 1) == 0)
  {
    v62 = v60;
  }

  if (v61 == 2)
  {
    v62 = v60;
  }

  v63 = v47[77];
  if (v63)
  {
    v64 = 3;
  }

  else
  {
    v64 = 1;
  }

  if (v63 == 2)
  {
    v65 = 0;
  }

  else
  {
    v65 = v64;
  }

  LOWORD(v155[858]) = v62 | v65;
  v66 = *(v47 + 44);
  v155[1388] = *(v47 + 21);
  LOWORD(v155[1389]) = v66;
  v67 = v57[2];
  if (!v57[2])
  {
    goto LABEL_37;
  }

  if (v67 == 1)
  {
    v67 = 5;
LABEL_37:
    v155[872] = v67;
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v69 = v68 & 1;
    goto LABEL_39;
  }

  v155[872] = 5;

  v69 = 1;
LABEL_39:
  LOBYTE(v155[871]) = v69;
  v70 = NANGenericServiceProtocol.packetData(for:)(3, *(v57 + 1));
  if (v71 >> 60 == 15)
  {
    v72 = 0;
  }

  else
  {
    v72 = v70;
  }

  if (v71 >> 60 == 15)
  {
    v73 = 0xC000000000000000;
  }

  else
  {
    v73 = v71;
  }

  v74 = sub_100033AA8(_swiftEmptyArrayStorage);
  v75 = swift_allocObject();
  *(v75 + 16) = v143;
  *(v75 + 32) = v74;
  v156[3] = v42;
  v156[4] = v137;
  v156[0] = v75;

  v76 = v152;
  NANServiceInfo.encode(to:)(v156, 2, v72, v73);
  if (v76)
  {

    sub_1000124C8(v72, v73);

    sub_100002A00(v156);
    v152 = 0;
  }

  else
  {
    v152 = 0;
    sub_1000124C8(v72, v73);
    sub_100002A00(v156);
    swift_beginAccess();
    v77 = *(v75 + 16);
    v78 = *(v75 + 24);
    sub_10000AB0C(v77, v78);

    sub_10011A030(v77, v78, v154);
    memcpy(&v155[875] + 2, v154, 0x802uLL);
  }

  v79 = v149;
  if (*(v58 + 16))
  {
    v81 = *(v58 + 40);
    v80 = *(v58 + 48);
    v82 = *(v58 + 56);
    v83 = *(v58 + 64);
    BYTE2(v155[859]) = *(v58 + 32) + 1;
    v156[0] = v81;
    v156[1] = v80;
    sub_10000AB0C(v81, v80);
    sub_10005D67C(v82, v83);

    sub_10000AB0C(v81, v80);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(v156[0], v156[1]);
    if (v83 >> 60 == 15)
    {
      sub_1000124C8(v81, v80);
      sub_100017554(v82, v83);
    }

    else
    {
      v156[0] = v82;
      v156[1] = v83;
      sub_10000AB0C(v82, v83);
      DataProtocol.copyBytes(to:)();
      sub_1000124C8(v81, v80);
      sub_100017554(v82, v83);

      sub_1000124C8(v156[0], v156[1]);
    }

    v79 = v149;
  }

  else
  {
    BYTE2(v155[859]) = 0;
  }

  *&v143 = &unk_1004B4EC0;
  v84 = v138;
  Logger.init(subsystem:category:)();
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.error.getter();
  v87 = os_log_type_enabled(v85, v86);
  v88 = v151;
  if (v87)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v156[0] = v90;
    *v89 = 136315138;
    *(v89 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v156);
    _os_log_impl(&_mh_execute_header, v85, v86, "nan_send: %s  APPLE80211_IOC_NAN_PUBLISH", v89, 0xCu);
    sub_100002A00(v90);
  }

  v91 = v139;
  v142 = *(v139 + 8);
  v142(v84, v146);
  v93 = v147;
  v92 = v148;
  v95 = v144;
  v94 = v145;
  v96 = &v88[v148[33]];
  if (v96[1] & 1) != 0 || (v88[v148[29]])
  {
    v97 = v152;
LABEL_59:
    if ((v88[v92[29]] & 1) != 0 || ((*&v88[v92[32]] | (*&v88[v92[32] + 4] << 32)) & 0xFF00000000) == 0x300000000 || (result = (*(v145 + 144))(), !v97))
    {
      memcpy(v156, v155, sizeof(v156));
      type metadata accessor for apple80211_nan_publish_data(0);
      v100 = v99;
      v101 = *(v95 + 8);
      v102 = *(v145 + 16);
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      return sub_100110D80(300, v156, v93, v100, v101, v102, AssociatedConformanceWitness);
    }
  }

  else
  {
    v132 = *v96;
    v156[0] = &_mh_execute_header;
    type metadata accessor for apple80211_nan_country_code_sync(0);
    v105 = v104;
    v106 = *(v95 + 8);
    v107 = *(v94 + 16);
    swift_getAssociatedTypeWitness();
    v108 = swift_getAssociatedConformanceWitness();
    v140 = v107;
    v109 = v152;
    result = sub_100110D80(577, v156, v93, v105, v106, v107, v108);
    v152 = v109;
    if (!v109)
    {
      v138 = v108;
      v139 = v106;
      v111 = 0;
      LODWORD(v137) = v132;
      LODWORD(v136) = v132 >> 8;
      v134 = v91 + 8;
      v112 = 1;
      *&v110 = 136315394;
      v131 = v110;
      v95 = v144;
      v135 = v105;
      while (1)
      {
        v116 = sub_10005DC58(&qword_10058D448, &qword_100486D28);
        v117 = v152;
        result = sub_100110570(51, v116, 0, 0, v93, v116, v139, v140, v138);
        v152 = v117;
        if (v117)
        {
          break;
        }

        v141 = v111;
        v118 = LOBYTE(v156[0]);
        v119 = BYTE1(v156[0]);
        if (LOBYTE(v156[0]) == v137 && BYTE1(v156[0]) == v136)
        {
          v93 = v147;
          v113 = v135;
LABEL_75:
          v156[0] = 0;
          v97 = v152;
          result = sub_100110D80(577, v156, v93, v113, v139, v140, v138);
          if (v97)
          {
            return result;
          }

          v92 = v148;
          if (!v112)
          {
            sub_10000B02C();
            swift_allocError();
            *v130 = xmmword_100481800;
            *(v130 + 16) = 1;
            return swift_willThrow();
          }

          goto LABEL_59;
        }

        Logger.init(subsystem:category:)();
        v121 = Logger.logObject.getter();
        v122 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v156[0] = v133;
          *v123 = v131;
          v124 = CountryCode.description.getter(v132);
          v126 = sub_100002320(v124, v125, v156);

          *(v123 + 4) = v126;
          *(v123 + 12) = 2080;
          v127 = CountryCode.description.getter(v118 | (v119 << 8));
          v129 = sub_100002320(v127, v128, v156);

          *(v123 + 14) = v129;
          v88 = v151;
          _os_log_impl(&_mh_execute_header, v121, v122, "counntry code mismatch: configured %s current %s", v123, 0x16u);
          swift_arrayDestroy();
          v79 = v149;

          v95 = v144;
        }

        v142(v79, v146);
        v93 = v147;
        v113 = v135;
        v114 = v141;
        v115 = v141 + 1;
        sleep(2u);
        v112 = v114 < 2;
        v111 = v115;
        if (v115 == 3)
        {
          goto LABEL_75;
        }
      }
    }
  }

  return result;
}

void sub_1000FCC70(uint64_t a1)
{
  __chkstk_darwin();
  v134 = v2;
  v130 = v1;
  v4 = v3;
  v132 = type metadata accessor for Logger();
  v124 = *(v132 - 8);
  __chkstk_darwin();
  v131 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v118 - v6;
  v7 = type metadata accessor for DispatchTimeInterval();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin();
  v125 = (v118.n128_u64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v133 = type metadata accessor for SHA256Digest();
  v9 = *(v133 - 1);
  __chkstk_darwin();
  v11 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v137, 0x15C8uLL);
  HIBYTE(v137[851]) = *v4;
  v16 = *(v4 + 16);
  v129 = *(v4 + 8);
  *&v128 = v16;
  SHA256.init()();
  v17 = String.lowercased()();

  v18 = v134;
  sub_1001F93A4(v17._countAndFlagsBits, v17._object, v15);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v9 + 8))(v11, v133);
  v19 = v138[0];
  v20 = v138[1];
  (*(v13 + 8))(v15, v12);
  v138[0] = v19;
  v138[1] = v20;
  v21 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(v138[0], v138[1]);
  KeyPath = swift_getKeyPath();

  v23 = sub_1000AEE10(v129, v128, &v137[1] + 2, KeyPath, 0xFFuLL);

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v120 = v21;
  v24 = 254;
  if (v23 < 0xFE)
  {
    v24 = v23;
  }

  HIWORD(v137[65]) = v24;
  v25 = *(v4 + 48);
  v26 = *(v4 + 40);
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  sub_1001136FC(v137, v27, v28, v26, v25);

  v29 = *(v4 + 64);
  v30 = *(v4 + 56);
  v31 = swift_getKeyPath();
  v32 = swift_getKeyPath();
  sub_1001136FC(v137, v31, v32, v30, v29);

  v133 = v4;
  LOBYTE(v31) = NANPublish.Configuration.serviceInfo.getter();
  v34 = v33;
  v36 = v35;
  v37 = sub_100033AA8(_swiftEmptyArrayStorage);
  v38 = type metadata accessor for BinaryEncoder();
  v39 = swift_allocObject();
  v128 = xmmword_100480A90;
  *(v39 + 16) = xmmword_100480A90;
  *(v39 + 32) = v37;
  v138[3] = v38;
  v122 = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  v138[4] = v122;
  v138[0] = v39;

  NANServiceInfo.encode(to:)(v138, v31, v34, v36);
  v134 = v38;
  if (v18)
  {

    sub_1000124C8(v34, v36);

    sub_100002A00(v138);
    v121 = 0;
  }

  else
  {
    v121 = 0;
    sub_1000124C8(v34, v36);
    sub_100002A00(v138);
    swift_beginAccess();
    v40 = *(v39 + 16);
    v41 = *(v39 + 24);
    sub_10000AB0C(v40, v41);

    sub_10011A030(v40, v41, v135);
    memcpy(&v137[338], v135, 0x802uLL);
  }

  v42 = v133;
  LOBYTE(v137[873]) = v133[32];
  BYTE1(v137[851]) = v133[72] + 1;
  if (v133[73])
  {
    v43 = 1;
  }

  else
  {
    v43 = 2;
  }

  BYTE2(v137[851]) = v43;
  LOBYTE(v137[851]) = v133[75];
  v44 = type metadata accessor for NANPublish.Configuration(0);
  LOBYTE(v137[852]) = 0x1008040100uLL >> (8 * v42[v44[19]]);
  v45 = sub_100028EF8();
  v46 = v125;
  v47 = v126;
  *v125 = 0x80000;
  v48 = v127;
  (*(v47 + 13))(v46, enum case for DispatchTimeInterval.microseconds(_:), v127);
  v49 = sub_100028EF8();
  (*(v47 + 1))(v46, v48);
  if (!v49)
  {
    goto LABEL_80;
  }

  if (v45 == 0x8000000000000000 && v49 == -1)
  {
LABEL_83:
    __break(1u);
  }

  if (v45 / v49 < 0)
  {
    goto LABEL_81;
  }

  if ((v45 / v49) >> 32)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v137[854] = v45 / v49;
  v137[855] = -1;
  v137[856] = v42[74];
  if (v42[76] == 1)
  {
    v137[857] = 2;
    v50 = v134;
    v52 = v121;
    v51 = v122;
    if ((v42[v44[20]] & 1) == 0)
    {
      goto LABEL_21;
    }

    v53 = 50;
  }

  else
  {
    v137[857] = 0;
    v50 = v134;
    v52 = v121;
    v51 = v122;
    if (v42[v44[20]] != 1)
    {
      goto LABEL_21;
    }

    v53 = 48;
  }

  v137[857] = v53;
LABEL_21:
  v54 = &v42[v44[21]];
  v55 = *(v54 + 2);
  if (v55[2])
  {
    v56 = 68;
  }

  else
  {
    v56 = 4;
  }

  v57 = v56 | 0x200;
  v58 = v42[v44[34]];
  v59 = v56 | 0x600;
  if ((v58 & 1) == 0)
  {
    v59 = v57;
  }

  if (v58 == 2)
  {
    v59 = v57;
  }

  v60 = v42[77];
  if (v60)
  {
    v61 = 3;
  }

  else
  {
    v61 = 1;
  }

  if (v60 == 2)
  {
    v62 = 0;
  }

  else
  {
    v62 = v61;
  }

  LOWORD(v137[858]) = v59 | v62;
  v63 = *(v42 + 44);
  v137[1388] = *(v42 + 21);
  LOWORD(v137[1389]) = v63;
  v64 = v54[2];
  v129 = v44;
  v127 = v55;
  if (!v64)
  {
    goto LABEL_37;
  }

  if (v64 == 1)
  {
    v64 = 5;
LABEL_37:
    v137[872] = v64;
    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v66 = v65 & 1;
    goto LABEL_39;
  }

  v137[872] = 5;

  v66 = 1;
LABEL_39:
  LOBYTE(v137[871]) = v66;
  v67 = NANGenericServiceProtocol.packetData(for:)(3, *(v54 + 1));
  if (v68 >> 60 == 15)
  {
    v69 = 0;
  }

  else
  {
    v69 = v67;
  }

  if (v68 >> 60 == 15)
  {
    v70 = 0xC000000000000000;
  }

  else
  {
    v70 = v68;
  }

  v71 = sub_100033AA8(_swiftEmptyArrayStorage);
  v72 = swift_allocObject();
  *(v72 + 16) = v128;
  *(v72 + 32) = v71;
  v138[3] = v50;
  v138[4] = v51;
  v138[0] = v72;

  NANServiceInfo.encode(to:)(v138, 2, v69, v70);
  if (v52)
  {

    sub_1000124C8(v69, v70);

    sub_100002A00(v138);
  }

  else
  {
    sub_1000124C8(v69, v70);
    sub_100002A00(v138);
    swift_beginAccess();
    v73 = *(v72 + 16);
    v74 = *(v72 + 24);
    sub_10000AB0C(v73, v74);

    sub_10011A030(v73, v74, v136);
    memcpy(&v137[875] + 2, v136, 0x802uLL);
  }

  v134 = 0;
  if (v127[2])
  {
    v75 = v127[5];
    v76 = v127[6];
    v77 = v127[7];
    v78 = v127[8];
    BYTE2(v137[859]) = *(v127 + 32) + 1;
    v138[0] = v75;
    v138[1] = v76;
    sub_10000AB0C(v75, v76);
    sub_10005D67C(v77, v78);

    sub_10000AB0C(v75, v76);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(v138[0], v138[1]);
    if (v78 >> 60 == 15)
    {
      sub_1000124C8(v75, v76);
      sub_100017554(v77, v78);
    }

    else
    {
      v138[0] = v77;
      v138[1] = v78;
      sub_10000AB0C(v77, v78);
      DataProtocol.copyBytes(to:)();
      sub_1000124C8(v75, v76);
      sub_100017554(v77, v78);

      sub_1000124C8(v138[0], v138[1]);
    }
  }

  else
  {
    BYTE2(v137[859]) = 0;
  }

  v127 = &unk_1004B4EC0;
  v79 = v123;
  Logger.init(subsystem:category:)();
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  v82 = os_log_type_enabled(v80, v81);
  v83 = v133;
  if (v82)
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v138[0] = v85;
    *v84 = 136315138;
    *(v84 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v138);
    _os_log_impl(&_mh_execute_header, v80, v81, "nan_send: %s  APPLE80211_IOC_NAN_PUBLISH", v84, 0xCu);
    sub_100002A00(v85);
  }

  v86 = v124;
  v126 = *(v124 + 8);
  v126(v79, v132);
  v87 = v130;
  v88 = v131;
  v89 = v134;
  v90 = v129;
  v91 = &v83[v129[33]];
  if (v91[1] & 1) != 0 || (v83[v129[29]])
  {
    goto LABEL_57;
  }

  v119 = *v91;
  v138[0] = &_mh_execute_header;
  v95 = v130[5];
  v97 = v130[2];
  v96 = v130[3];

  AppleDevice.setRequest(requestType:data:on:)(0x241uLL, v138, &v138[1], 0, v97, v96);
  if (v89)
  {

    goto LABEL_61;
  }

  v124 = v97;
  v125 = v96;
  LODWORD(v123) = v119;
  LODWORD(v122) = v119 >> 8;

  v98 = 0;
  v120 = v86 + 8;
  v99 = 1;
  v100.n128_u64[0] = 136315394;
  v118 = v100;
  v121 = v95;
  while (1)
  {
    *&v128 = v98;
    v102 = swift_slowAlloc();
    *v102 = 0;
    v102[2] = 0;

    v103 = v125;

    AppleDevice.getRequest(requestType:data:on:)(0x33uLL, v102, (v102 + 3), 0, v124, v103);

    if (v89)
    {

      return;
    }

    v134 = 0;
    v104 = *v102;
    v105 = v102[1];

    if (v104 == v123 && v105 == v122)
    {
      break;
    }

    Logger.init(subsystem:category:)();
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v138[0] = swift_slowAlloc();
      *v109 = v118.n128_u32[0];
      v110 = CountryCode.description.getter(v119);
      v112 = sub_100002320(v110, v111, v138);

      *(v109 + 4) = v112;
      *(v109 + 12) = 2080;
      v113 = CountryCode.description.getter(v104 | (v105 << 8));
      v115 = sub_100002320(v113, v114, v138);

      *(v109 + 14) = v115;
      v88 = v131;
      _os_log_impl(&_mh_execute_header, v107, v108, "counntry code mismatch: configured %s current %s", v109, 0x16u);
      swift_arrayDestroy();

      v83 = v133;
    }

    v126(v88, v132);
    v89 = v134;
    v101 = v128;
    sleep(2u);
    v99 = v101 < 2;
    v98 = v101 + 1;
    if (v101 == 2)
    {
      goto LABEL_76;
    }
  }

  v89 = v134;
LABEL_76:
  v138[0] = 0;

  v116 = v125;

  AppleDevice.setRequest(requestType:data:on:)(0x241uLL, v138, &v138[1], 0, v124, v116);

  if (!v89)
  {
    v90 = v129;
    v87 = v130;
    if (!v99)
    {
      sub_10000B02C();
      swift_allocError();
      *v117 = xmmword_100481800;
      *(v117 + 16) = 1;
      swift_willThrow();
      return;
    }

LABEL_57:
    if ((v83[*(v90 + 116)] & 1) != 0 || (v92 = *&v83[*(v90 + 128)] | (*&v83[*(v90 + 128) + 4] << 32), (v92 & 0xFF00000000) == 0x300000000) || (sub_1000F6D28(v92), !v89))
    {
      memcpy(v138, v137, sizeof(v138));
      v93 = v87[2];
      v94 = v87[3];

      AppleDevice.setRequest(requestType:data:on:)(0x12CuLL, v138, &v139, 0, v93, v94);

LABEL_61:
    }
  }
}

double sub_1000FEEE4(uint64_t a1)
{
  __chkstk_darwin();
  v56 = v2;
  v59 = v1;
  v4 = v3;
  v5 = type metadata accessor for Logger();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin();
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SHA256Digest();
  v7 = *(v55 - 8);
  __chkstk_darwin();
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SHA256();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v62, 0x86CuLL);
  LOBYTE(v62[0]) = *v4;
  BYTE2(v62[0]) = *(v4 + 24);
  v14 = *(v4 + 25);
  *(&v62[5] + 1) = *(v4 + 29);
  v15 = *(v4 + 3);
  *(&v62[2] + 3) = *(v4 + 1);
  *(&v62[3] + 1) = vzip1_s32(v15, v14);
  HIBYTE(v62[0]) = *(v4 + 7);
  SHA256.init()();
  v16 = String.lowercased()();

  v17 = v56;
  sub_1001F93A4(v16._countAndFlagsBits, v16._object, v13);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  v56 = v17;
  (*(v7 + 8))(v9, v55);
  v18 = *v63;
  v19 = *&v63[8];
  (*(v11 + 8))(v13, v10);
  *v63 = v18;
  *&v63[8] = v19;
  v20 = sub_1000BA0A4();
  DataProtocol.copyBytes(to:)();
  sub_1000124C8(*v63, *&v63[8]);
  v21 = *(v4 + 32);
  v55 = v20;
  if (!v21)
  {
    goto LABEL_4;
  }

  if (v21 == 1)
  {
    v21 = 5;
LABEL_4:
    v22 = v60;
    v62[531] = v21;
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = v23 & 1;
    goto LABEL_6;
  }

  v62[531] = 5;

  v24 = 1;
  v22 = v60;
LABEL_6:
  LOBYTE(v62[530]) = v24;
  v25 = NANGenericServiceProtocol.packetData(for:)(3, *(v4 + 40));
  if (v26 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  if (v26 >> 60 == 15)
  {
    v28 = 0xC000000000000000;
  }

  else
  {
    v28 = v26;
  }

  v29 = sub_100033AA8(_swiftEmptyArrayStorage);
  v30 = type metadata accessor for BinaryEncoder();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100480A90;
  *(v31 + 32) = v29;
  *&v63[24] = v30;
  *&v63[32] = sub_10011AB40(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  *v63 = v31;

  v32 = v56;
  NANServiceInfo.encode(to:)(v63, 2, v27, v28);
  if (v32)
  {

    sub_1000124C8(v27, v28);

    sub_100002A00(v63);
  }

  else
  {
    sub_1000124C8(v27, v28);
    sub_100002A00(v63);
    swift_beginAccess();
    v33 = *(v31 + 16);
    v34 = *(v31 + 24);
    sub_10000AB0C(v33, v34);

    sub_10011A030(v33, v34, v61);
    memcpy(&v62[6], v61, 0x802uLL);
  }

  v35 = *(v4 + 96);
  if (v35 == 1)
  {
    BYTE2(v62[518]) = 0;
  }

  else
  {
    v56 = 0;
    v36 = *(v4 + 48);
    v37 = *(v4 + 56);
    v39 = *(v4 + 64);
    v38 = *(v4 + 72);
    v41 = *(v4 + 80);
    v40 = *(v4 + 88);
    BYTE2(v62[518]) = v36 + 1;
    *v63 = v37;
    *&v63[8] = v39;
    v53 = v38;
    v54 = v40;
    sub_10011A208(v36, v37, v39, v38, v41, v40, v35);
    sub_10000AB0C(v37, v39);
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(*v63, *&v63[8]);
    if (v41 >> 60 == 15)
    {
      sub_10011A270(v36, v37, v39, v53, v41, v54, v35);
    }

    else
    {
      v52 = v36;
      v42 = v53;
      *v63 = v53;
      *&v63[8] = v41;
      sub_10000AB0C(v53, v41);
      DataProtocol.copyBytes(to:)();
      sub_10011A270(v52, v37, v39, v42, v41, v54, v35);
      sub_1000124C8(*v63, *&v63[8]);
    }

    v43 = *(v4 + 165);
    v22 = v60;
    v44 = v43 != 2 && (v43 & 1) != 0;
    LOBYTE(v62[538]) = v44;
  }

  Logger.init(subsystem:category:)();
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v63 = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_100002320(0xD000000000000015, 0x80000001004B92D0, v63);
    _os_log_impl(&_mh_execute_header, v45, v46, "nan_send: %s  APPLE80211_IOC_NAN_DP_REQ", v47, 0xCu);
    sub_100002A00(v48);
  }

  (*(v57 + 8))(v22, v58);
  memcpy(v63, v62, sizeof(v63));
  v49 = *(v59 + 16);
  v50 = *(v59 + 24);

  AppleDevice.setRequest(requestType:data:on:)(0x13BuLL, v63, &v64, 0, v49, v50);

  return result;
}
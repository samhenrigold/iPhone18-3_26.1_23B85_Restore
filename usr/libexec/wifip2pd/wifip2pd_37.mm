unint64_t sub_1002DEE78(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_100595378, &qword_1004AF248);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10005DC58(&unk_100595380, &unk_1004AF250);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100012400(v9, v5, &qword_100595378, &qword_1004AF248);
      result = sub_10002A440(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for NWEndpoint();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_1002DF098(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10005DC58(&qword_100595310, &unk_1004B07A0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_1003E08F4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_1003E08F4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1002DF1A8(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  sub_1002CFBB0();
}

char *sub_1002DF1E0(void *a1, uint64_t a2)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v2 + qword_100594ED8) = &_swiftEmptyDictionarySingleton;
  v11 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    *(v2 + qword_100594ED0) = a2;

    Logger.init(subsystem:category:)();
    v15 = &OBJC_PROTOCOL___WiFiP2PSPITransactionResponderXPC;
    v16 = sub_100303CDC(a1, v6, v15);

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1002DF3D4(char *a1, uint64_t a2)
{
  type metadata accessor for Logger();
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OS_dispatch_queue.p2p.unsafeMutableAddressor();
  v12 = *v11;
  *v10 = *v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v12)
  {
    *(v2 + qword_100594FC0) = a2;
    v15 = objc_opt_self();

    v16 = [v15 interfaceWithProtocol:&OBJC_PROTOCOL___AWDLServiceDiscoveryManagerXPCDelegate];
    [*&a1[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] setRemoteObjectInterface:v16];

    Logger.init(subsystem:category:)();
    v17 = &OBJC_PROTOCOL___AWDLServiceDiscoveryManagerXPC;
    v18 = sub_100303CDC(a1, v6, v17);

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DF75C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1002DF7B4()
{

  sub_10000EBB8(*(v0 + 80), *(v0 + 88));

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_1002DF868(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100597400, &unk_1004B4D20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002DF8D8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  if (a4 >> 8 != 0xFFFFFFFF)
  {
    sub_1002DF8EC(result, a2, a3, a4, a5, a6);
  }
}

void sub_1002DF8EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v8 = a4;
  v10 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return;
    }
  }

  else if (v10)
  {

    return;
  }

  sub_10000FF4C(a3, v8);

  sub_10000FF4C(a5, a6);
}

void sub_1002DF9AC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >> 8 != 0xFFFFFFFF)
  {
    sub_10000BCEC(result, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_1002DF9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002DFAE0()
{
  result = qword_100595348;
  if (!qword_100595348)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10005DD04(&qword_100595340, &qword_1004AF238);
    v4[0] = &protocol witness table for Int;
    v4[1] = sub_1002DFB6C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> Range<A>, v3, v4);
    atomic_store(result, &qword_100595348);
  }

  return result;
}

unint64_t sub_1002DFB6C()
{
  result = qword_100595350;
  if (!qword_100595350)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int, &type metadata for Int, v0, v1);
    atomic_store(result, &qword_100595350);
  }

  return result;
}

uint64_t sub_1002DFBF4(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 72));

  return _swift_deallocObject(v1, 80, 7);
}

void sub_1002DFC78()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1002D099C(v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_1002DFD50(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1[3] >> 62 == 1)
  {
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
}

uint64_t sub_1002DFDA4(uint64_t a1)
{
  v3 = *(v1 + 56) | (*(v1 + 58) << 16);
  v4 = [*(v1 + 64) options];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 24);
  result = sub_1003E1CC8(v4, v3, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_1002DFEDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_unownedRetain();
  v3 = v2;
  return v1;
}

uint64_t sub_1002DFF28@<X0>(uint64_t a1@<X8>)
{
  result = (*(v1 + 56))();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

void sub_1002DFF64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    swift_unownedRelease();
  }
}

uint64_t sub_1002E0034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E009C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002E00D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1002E0120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1002E022C(uint64_t a1)
{
  type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      sub_1002E0778(319, &qword_100595540, type metadata accessor for NANPeer.LastBeaconInformation);
      if (v3 <= 0x3F)
      {
        sub_1002E0ABC(319, &qword_100595548, &type metadata for NANAttribute.MasterIndication, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1002E0ABC(319, &qword_100595550, &type metadata for NANAttribute.Cluster, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1002E0ABC(319, &qword_10058E800, &type metadata for CountryCode, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_1002E0ABC(319, &qword_100595558, &type metadata for NANAttribute.ConnectionCapability, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1002E0ABC(319, &qword_100595560, &type metadata for NANAttribute.DeviceCapability, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_1002E0ABC(319, &qword_100595568, &type metadata for NANAttribute.DeviceCapabilityExtension, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_1002E0ABC(319, &qword_100595570, &type metadata for NANAttribute.DeviceLinkQoS, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      sub_1002E0ABC(319, &qword_100595578, &type metadata for NANAttribute.DataCluster, &type metadata accessor for Optional);
                      if (v11 <= 0x3F)
                      {
                        sub_1002E0ABC(319, &qword_100595580, &type metadata for NANPeer.Availability, &type metadata accessor for Optional);
                        if (v12 <= 0x3F)
                        {
                          sub_1002E0ABC(319, &qword_100595588, &type metadata for NANAttribute.ExtendedWLANInfrastructure, &type metadata accessor for Optional);
                          if (v13 <= 0x3F)
                          {
                            sub_1002E0778(319, &qword_100595590, type metadata accessor for NANAttribute.CustomDeviceInformation);
                            if (v14 <= 0x3F)
                            {
                              sub_1002E0ABC(319, &qword_100595598, &type metadata for NANAttribute.PairingBootstrapping, &type metadata accessor for Optional);
                              if (v15 <= 0x3F)
                              {
                                sub_1002E0ABC(319, &qword_1005955A0, &type metadata for NANAttribute.PairingIdentityResolution, &type metadata accessor for Optional);
                                if (v16 <= 0x3F)
                                {
                                  sub_1002E0778(319, &qword_100593008, &type metadata accessor for UUID);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_1002E0ABC(319, &qword_1005955A8, &type metadata for Bool, &type metadata accessor for Array);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_1002E0ABC(319, &qword_1005955B0, &type metadata for NANAttribute.CipherSuiteInformation.Capabilities, &type metadata accessor for Optional);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_1002E07CC(319);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_1002E0ABC(319, &unk_1005955C0, &type metadata for PHYCapabilities, &type metadata accessor for Optional);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_1002E0ABC(319, &qword_10058E828, &type metadata for UInt32, &type metadata accessor for Optional);
                                            if (v22 <= 0x3F)
                                            {
                                              swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1002E0778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1002E07CC(uint64_t a1)
{
  if (!qword_1005955B8)
  {
    type metadata accessor for NANPeer.Service(255);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1005955B8);
    }
  }
}

uint64_t sub_1002E0854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1002E089C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002E091C(uint64_t a1)
{
  result = type metadata accessor for DispatchTime();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1002E09D4(uint64_t a1)
{
  sub_1002E0ABC(319, &qword_100595760, &type metadata for NANAttribute.ServiceDescriptorExtension, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1002E0B0C(319);
    if (v2 <= 0x3F)
    {
      sub_1002E0B70(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for DispatchTime();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002E0ABC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1002E0B0C(uint64_t a1)
{
  if (!qword_100595768)
  {
    sub_10005DD04(&qword_100595770, &unk_1004AF500);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100595768);
    }
  }
}

void sub_1002E0B70(uint64_t a1)
{
  if (!qword_100595778)
  {
    sub_1002E0BCC();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_100595778);
    }
  }
}

unint64_t sub_1002E0BCC()
{
  result = qword_100595780;
  if (!qword_100595780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANCipherSuite, &type metadata for NANCipherSuite, v0, v1);
    atomic_store(result, &qword_100595780);
  }

  return result;
}

uint64_t sub_1002E0C88(uint64_t a1)
{
  result = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DispatchTime();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1002E0D0C(uint64_t a1)
{
  sub_1002E0D94();
  if (v1 <= 0x3F)
  {
    sub_1002E0DDC();
    if (v2 <= 0x3F)
    {
      sub_1002E0E0C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1002E0D94()
{
  if (!qword_1005958D0)
  {
    v0 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1005958D0);
    }
  }
}

ValueMetadata *sub_1002E0DDC()
{
  result = qword_1005958D8;
  if (!qword_1005958D8)
  {
    result = &type metadata for NANGenericServiceProtocol;
    atomic_store(&type metadata for NANGenericServiceProtocol, &qword_1005958D8);
  }

  return result;
}

ValueMetadata *sub_1002E0E0C()
{
  result = qword_1005958E0;
  if (!qword_1005958E0)
  {
    result = &type metadata for NANPMK;
    atomic_store(&type metadata for NANPMK, &qword_1005958E0);
  }

  return result;
}

BOOL sub_1002E0E3C()
{
  sub_10005DC58(&unk_100596880, &unk_1004B0F70);
  __chkstk_darwin();
  v2 = &v8 - v1;
  v3 = type metadata accessor for NANPeer(0);
  sub_100012400(v0 + *(v3 + 76), v2, &unk_100596880, &unk_1004B0F70);
  v4 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    sub_100016290(v2, &unk_100596880, &unk_1004B0F70);
  }

  else
  {
    v5 = *(v2 + 1);
    sub_1002E9098(v2, type metadata accessor for NANAttribute.CustomDeviceInformation);
    if ((*NANAttribute.CustomDeviceInformation.Flags.doesNotSupportSimultaneousDualBand.unsafeMutableAddressor() & ~v5) == 0)
    {
      return 0;
    }
  }

  v6 = *(v0 + *(v3 + 68) + 8);
  if (v6)
  {
    return *(v6 + 16) > 1uLL;
  }

  return 0;
}

Swift::Int sub_1002E0F98()
{
  Hasher.init(_seed:)();
  Channel.hash(into:)(v3, *v0 | (*(v0 + 4) << 32) | (*(v0 + 5) << 40));
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 3));
  v1 = DispatchTime.rawValue.getter();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1002E1034(int a1)
{
  Channel.hash(into:)(a1, *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40));
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(*(v1 + 2));
  Hasher._combine(_:)(*(v1 + 3));
  v2 = DispatchTime.rawValue.getter();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_1002E10AC(uint64_t a1)
{
  Hasher.init(_seed:)();
  Channel.hash(into:)(v4, *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40));
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(*(v1 + 2));
  Hasher._combine(_:)(*(v1 + 3));
  v2 = DispatchTime.rawValue.getter();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_1002E1190()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTimeInterval();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v20 - v10;
  type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002E90F8(v1, v13, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v15 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State;
    }

    sub_1002E9098(v13, v15);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1002E9098(v13, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
      return 0;
    }

    if (EnumCaseMultiPayload == 3)
    {
      return 0;
    }
  }

  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
  DispatchTime.distance(to:)();
  (*(v3 + 8))(v5, v2);
  v16 = NANConstants.authenticationRequestTimeout.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v16, v6);
  v17 = static DispatchTimeInterval.< infix(_:_:)(v9, v11);
  v18 = *(v7 + 8);
  v18(v9, v6);
  v18(v11, v6);
  return v17;
}

uint64_t sub_1002E1478()
{
  v1 = *(v0 + 144);
  if (v1 != 255)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    v5 = *(v0 + 96);
    v6 = v5;
    if (v5 == 5)
    {
      v8 = *(v0 + 56);
      v7 = *(v0 + 64);
      v9 = *(v0 + 72);
      if (v8 == 4)
      {
        v10 = v2;
        v11 = v3;
        v12 = v4;
        sub_1002E99FC(v2, v3, v4, v1);
        sub_100184290(v8, v7, v9);
        sub_1002E9A28(0, 0, 0, 255);
        v13 = v1 & 1;
        v14 = v10;
        v15 = v11;
        v16 = v12;
LABEL_11:
        sub_1002E9A28(v14, v15, v16, v13);
        v17 = 1;
        return v17 & 1;
      }

      v40 = v8;
      v41 = v7;
      v42 = v9;
      v43 = 1;
      v36 = v2;
      v37 = v3;
      v38 = v4;
      v39 = v1 & 1;
      sub_1002E99FC(v2, v3, v4, v1);
      sub_100184290(v8, v7, v9);
      sub_1002E99FC(v8, v7, v9, 1);
      v22 = sub_100206498();
      v23 = static Either<>.== infix(_:_:)(&v40, &v36, &type metadata for UInt8, &type metadata for NANServiceInfo, &protocol witness table for UInt8, v22);
      sub_1002E9A40(v36, v37, v38, v39);
      sub_1002E9A40(v40, v41, v42, v43);
      v24 = v8;
      v25 = v7;
      v26 = v9;
      v27 = 1;
    }

    else
    {
      v18 = *(v0 + 88);
      if ((v18 & 0x10000) != 0)
      {
        if (v5 == 4)
        {
          v28 = *(v0 + 120);
          v29 = v3;
          v30 = v4;
          sub_1002E99FC(v2, v3, v4, v1);
          sub_1002E9A28(0, 0, 0, 255);
          v13 = v1 & 1;
          v14 = v28;
          v15 = v29;
          v16 = v30;
          goto LABEL_11;
        }

        v19 = *(v0 + 104);
        v20 = *(v0 + 112);
        v31 = *(v0 + 120);
        v32 = v3;
        v33 = v4;
        sub_100184290(v5, v19, v20);
        v2 = v31;
        v3 = v32;
        v4 = v33;
        v21 = 1;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        v6 = BYTE1(v18);
      }

      v40 = v6;
      v41 = v19;
      v42 = v20;
      v43 = v21;
      v36 = v2;
      v37 = v3;
      v38 = v4;
      v39 = v1 & 1;
      sub_1002E99FC(v2, v3, v4, v1);
      sub_1002E99FC(v6, v19, v20, v21);
      v34 = sub_100206498();
      v23 = static Either<>.== infix(_:_:)(&v40, &v36, &type metadata for UInt8, &type metadata for NANServiceInfo, &protocol witness table for UInt8, v34);
      sub_1002E9A40(v36, v37, v38, v39);
      sub_1002E9A40(v40, v41, v42, v43);
      v24 = v6;
      v25 = v19;
      v26 = v20;
      v27 = v21;
    }

    sub_1002E9A28(v24, v25, v26, v27);
    v17 = v23 ^ 1;
    return v17 & 1;
  }

  v17 = 0;
  return v17 & 1;
}

BOOL sub_1002E172C()
{
  v1 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100596880, &unk_1004B0F70);
  __chkstk_darwin();
  v6 = &v10 - v5;
  v7 = type metadata accessor for NANPeer(0);
  sub_100012400(v0 + *(v7 + 76), v6, &unk_100596880, &unk_1004B0F70);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    return 0;
  }

  sub_1002E9160(v6, v4, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v8 = *v4;
  sub_1002E9098(v4, type metadata accessor for NANAttribute.CustomDeviceInformation);
  if (v8 < 4)
  {
    return 0;
  }

  if ((v8 & 0xFC) == 4)
  {
    return (v8 & 3) != 0;
  }

  return 1;
}

uint64_t sub_1002E18E0(uint8_t a1)
{
  v3 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  if (!v3)
  {
    return 0;
  }

  v10 = type metadata accessor for NANPeer(0);
  v11 = *(v1 + *(v10 + 92));
  if (*(v11 + 16) < a1)
  {
    return 0;
  }

  v19 = *(v10 + 92);
  v20 = v5;
  v12 = &qword_100491AB0;
  sub_100012400(v1 + *(v10 + 88), v9, &qword_10058F4D0, &qword_100491AB0);
  v13 = type metadata accessor for UUID();
  v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
  sub_100016290(v9, &qword_10058F4D0, &qword_100491AB0);
  if (v14 == 1)
  {
    return 0;
  }

  if (*(v11 + 16) < a1)
  {
    __break(1u);
LABEL_14:
    result = sub_10046EC48(v11);
    v11 = result;
    goto LABEL_11;
  }

  v12 = (a1 - 1);
  if (*(v12 + v11 + 32))
  {
    return 0;
  }

  v14 = v1;
  (*(v20 + 16))(v7, v1, v4);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 16777472;
    v18[4] = a1;
    _os_log_impl(&_mh_execute_header, v16, v17, "isPairedNow setting isPeerPairedOnDiscoveryResult[%hhu]", v18, 5u);
  }

  (*(v20 + 8))(v7, v4);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (*(v11 + 16) < a1)
  {
    __break(1u);
  }

  else
  {
    result = 1;
    *(v12 + v11 + 32) = 1;
    *(v14 + v19) = v11;
  }

  return result;
}

void sub_1002E1BB8()
{
  v1 = *(v0 + *(type metadata accessor for NANPeer(0) + 68) + 8);
  if (v1)
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;

    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    while (v4)
    {
LABEL_11:
      v9 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
      v10 = *(v9 + 16);
      v11 = *(v7 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v12 > *(v7 + 3) >> 1)
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v7 = sub_1003A74FC(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      }

      v4 &= v4 - 1;
      if (*(v9 + 16))
      {
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v10)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v15 = *(v7 + 2);
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_32;
          }

          *(v7 + 2) = v17;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_30;
        }
      }
    }

    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v6;
      if (v4)
      {
        v6 = v8;
        goto LABEL_11;
      }
    }

    v18 = *(v7 + 2) + 1;
    v19 = 36;
    do
    {
      if (!--v18)
      {
        break;
      }

      v20 = v7[v19];
      v19 += 56;
    }

    while (v20);
  }
}

void sub_1002E1D94()
{
  v1 = *(v0 + *(type metadata accessor for NANPeer(0) + 68) + 8);
  if (v1)
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;

    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    while (v4)
    {
LABEL_11:
      v9 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
      v10 = *(v9 + 16);
      v11 = *(v7 + 2);
      v12 = v11 + v10;
      if (__OFADD__(v11, v10))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v12 > *(v7 + 3) >> 1)
      {
        if (v11 <= v12)
        {
          v14 = v11 + v10;
        }

        else
        {
          v14 = v11;
        }

        v7 = sub_1003A74FC(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      }

      v4 &= v4 - 1;
      if (*(v9 + 16))
      {
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v10)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v15 = *(v7 + 2);
          v16 = __OFADD__(v15, v10);
          v17 = v15 + v10;
          if (v16)
          {
            goto LABEL_32;
          }

          *(v7 + 2) = v17;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_30;
        }
      }
    }

    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v5)
      {
        break;
      }

      v4 = *(v1 + 64 + 8 * v8);
      ++v6;
      if (v4)
      {
        v6 = v8;
        goto LABEL_11;
      }
    }

    v18 = *(v7 + 2) + 1;
    v19 = 36;
    do
    {
      if (!--v18)
      {
        break;
      }

      v20 = v7[v19];
      v19 += 56;
    }

    while (v20 != 1);
  }
}

uint64_t sub_1002E1F74@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = a1 >> 8;
  v5 = a1 >> 16;
  v32 = a1 >> 24;
  v33 = HIDWORD(a1);
  v34 = a1 >> 40;
  Logger.init(subsystem:category:)();
  v6 = type metadata accessor for NANPeer(0);
  v7 = a2 + v6[7];
  v8 = WiFiAddress.defaultClusterID.unsafeMutableAddressor();
  v9 = v8[2];
  *v7 = *v8;
  *(v7 + 4) = v9;
  v10 = v6[8];
  BeaconInformation = type metadata accessor for NANPeer.LastBeaconInformation(0);
  (*(*(BeaconInformation - 8) + 56))(a2 + v10, 1, 1, BeaconInformation);
  v12 = a2 + v6[9];
  *v12 = 0;
  *(v12 + 2) = 1;
  v13 = a2 + v6[10];
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v14 = a2 + v6[11];
  *v14 = 0;
  *(v14 + 2) = 1;
  v15 = a2 + v6[12];
  *v15 = 0;
  *(v15 + 2) = 1;
  v16 = a2 + v6[13];
  *v16 = 0;
  *(v16 + 8) = 0x1000000;
  *(a2 + v6[14]) = 0;
  v17 = a2 + v6[15];
  *v17 = 0;
  *(v17 + 4) = 1;
  v18 = (a2 + v6[16]);
  *v18 = 0;
  v18[1] = 0;
  v19 = a2 + v6[17];
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  v20 = a2 + v6[18];
  *v20 = xmmword_1004AF460;
  *(v20 + 16) = 0;
  v21 = v6[19];
  v22 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  (*(*(v22 - 8) + 56))(a2 + v21, 1, 1, v22);
  v23 = a2 + v6[20];
  *v23 = 917504;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0;
  v24 = a2 + v6[21];
  *v24 = xmmword_100483C50;
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  v25 = v6[22];
  v26 = type metadata accessor for UUID();
  v27 = *(*(v26 - 8) + 56);
  v27(a2 + v25, 1, 1, v26);
  *(a2 + v6[25]) = 256;
  *(a2 + v6[26]) = &_swiftEmptyDictionarySingleton;
  v28 = a2 + v6[28];
  *v28 = 3;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  v29 = a2 + v6[29];
  *v29 = 0;
  *(v29 + 4) = 1;
  v27(a2 + v6[30], 1, 1, v26);
  v27(a2 + v6[31], 1, 1, v26);
  v30 = (a2 + v6[5]);
  *v30 = v2;
  v30[1] = v4;
  v30[2] = v5;
  v30[3] = v32;
  v30[4] = v33;
  v30[5] = v34;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  *(a2 + v6[27]) = 0;
  *(a2 + v6[24]) = 0;
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = 8;
  *(result + 32) = 0;
  *(a2 + v6[23]) = result;
  return result;
}

Swift::Int sub_1002E22E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANClusterChangeEvent.hash(into:)(v4, *(v1 + *(a1 + 20)) | (*(v1 + *(a1 + 20) + 2) << 16));
  return Hasher._finalize()();
}

Swift::Int sub_1002E2350(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NANClusterChangeEvent.hash(into:)(v5, *(v2 + *(a2 + 20)) | (*(v2 + *(a2 + 20) + 2) << 16));
  return Hasher._finalize()();
}

uint64_t sub_1002E23CC(uint64_t a1, uint64_t a2)
{
  v424 = a2;
  v418 = type metadata accessor for Logger();
  v3 = *(v418 - 8);
  __chkstk_darwin();
  v410 = &v408 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v411 = &v408 - v5;
  __chkstk_darwin();
  v414 = &v408 - v6;
  sub_10005DC58(&unk_100596880, &unk_1004B0F70);
  __chkstk_darwin();
  v417 = &v408 - v7;
  v435 = type metadata accessor for DispatchTime();
  v8 = *(v435 - 8);
  __chkstk_darwin();
  v434 = &v408 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v443 = type metadata accessor for NANPeer.Service(0);
  v10 = *(v443 - 8);
  __chkstk_darwin();
  v451 = (&v408 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v413 = &v408 - v12;
  v437 = type metadata accessor for NANAttribute(0);
  v431 = *(v437 - 8);
  __chkstk_darwin();
  v439 = &v408 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10005DC58(&qword_100595928, &qword_1004AF668);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v430 = (&v408 - v16);
  sub_10005DC58(&qword_100595930, &qword_1004AF670);
  __chkstk_darwin();
  v438 = &v408 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin();
  v442 = (&v408 - v19);
  v425 = 0;
  v422 = 0;
  v423 = 0;
  v420 = 0;
  v421 = 0;
  v419 = 0;
  v20 = 0;
  v427 = 0;
  v21 = 0;
  v22 = *(a1 + 16);
  v440 = (v15 + 48);
  v441 = (v15 + 56);
  v415 = (v3 + 16);
  v416 = (v3 + 8);
  v450 = v10;
  v23 = (v10 + 48);
  v24 = v14;
  v432 = v23;
  v433 = (v8 + 40);
  v428 = _swiftEmptyArrayStorage;
  v426 = &_swiftEmptyDictionarySingleton;
  v18.n128_u64[0] = 136315394;
  v412 = v18;
  v429 = a1;
  v446 = v14;
  v436 = v22;
  v25 = v22 == 0;
  if (v22)
  {
    goto LABEL_7;
  }

LABEL_6:
  v29 = 1;
  v445 = v22;
  v31 = v438;
  v30 = v439;
  while (1)
  {
    (*v441)(v31, v29, 1, v24);
    v37 = v31;
    v38 = v442;
    sub_10001CEA8(v37, v442, &qword_100595930, &qword_1004AF670);
    if ((*v440)(v38, 1, v24) == 1)
    {
      v45 = type metadata accessor for NANPeer(0);
      v386 = v458 + *(v45 + 72);
      if ((*(v386 + 12) << 32 == 0x300000000) | v419 & 1)
      {
        goto LABEL_227;
      }

      *v386 = xmmword_1004AF460;
      *(v386 + 16) = 0;
      if (!*(v424 + 16))
      {
        goto LABEL_227;
      }

      v387 = sub_1003E08F4(30);
      if ((v388 & 1) == 0)
      {
        goto LABEL_227;
      }

      v389 = *(*(v424 + 56) + 8 * v387);
      v390 = 1 << *(v389 + 32);
      v391 = -1;
      if (v390 < 64)
      {
        v391 = ~(-1 << v390);
      }

      v392 = v391 & *(v389 + 64);
      v393 = (v390 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      for (i = 0; v392; v21 = v395)
      {
        v395 = v21;
        v396 = i;
LABEL_221:
        v397 = __clz(__rbit64(v392));
        v392 &= v392 - 1;
        v398 = *(*(v389 + 56) + ((v396 << 10) | (16 * v397)));

        v398(v399);
      }

      while (1)
      {
        v396 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_249;
        }

        if (v396 >= v393)
        {
          goto LABEL_226;
        }

        v392 = *(v389 + 64 + 8 * v396);
        ++i;
        if (v392)
        {
          v395 = v21;
          i = v396;
          goto LABEL_221;
        }
      }
    }

    v39 = v38;
    v40 = *v38;
    sub_1002E9160(v39 + *(v24 + 48), v30, type metadata accessor for NANAttribute);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v26 = *v30;
        v27 = *(type metadata accessor for NANPeer(0) + 36);
        goto LABEL_4;
      case 1u:
        v151 = v30;
        v152 = *v30;
        v153 = v21;
        v154 = *(v151 + 1);
        v155 = v458 + *(type metadata accessor for NANPeer(0) + 40);
        *v155 = v152;
        *(v155 + 8) = v154;
        v21 = v153;
        *(v155 + 16) = 0;
        goto LABEL_5;
      case 2u:
      case 0x23u:
        v448 = *v30;
        v41 = *(type metadata accessor for NANPeer(0) + 104);
        v42 = v458;
        v43 = *(v458 + v41);

        v44 = _HashTable.startBucket.getter();
        v45 = *(v43 + 36);
        v46 = v450;

        *&v457 = v41;
        v47 = *(v42 + v41);
        v48 = v45;
        if (v45 != *(v47 + 36))
        {
          goto LABEL_236;
        }

        v444 = (v448 + 40);
        while (2)
        {
          if (v44 == 1 << *(v47 + 32))
          {

            a1 = v429;
            goto LABEL_5;
          }

          v49 = *(v448 + 16);

          if (!v49)
          {
LABEL_72:

            v71 = *(v458 + v457);

            v72 = sub_1002E9018(v44, v48, 0, v71);
            v45 = v73;
            v74 = v48;
            v76 = v75;

            sub_10002BEB8(v44, v74, 0);
            if (v76)
            {
              goto LABEL_256;
            }

            v44 = v72;
            v48 = v45;
            goto LABEL_14;
          }

          v455 = 1 << v44;
          *&v456 = v44 >> 6;
          v50 = v444;
          v453 = v48;
          v454 = v44;
LABEL_21:
          if ((v44 & 0x8000000000000000) == 0)
          {
            v51 = *(v458 + v457);
            if (v44 < 1 << *(v51 + 32))
            {
              if ((*(v51 + 8 * v456 + 64) & v455) == 0)
              {
                goto LABEL_224;
              }

              if (*(v51 + 36) != v48)
              {
                goto LABEL_225;
              }

              v52 = *(v50 - 1);
              v53 = *v50;
              v54 = *(v51 + 56);
              v452 = *(v46 + 72) * v44;
              v55 = v451;
              sub_1002E90F8(v54 + v452, v451, type metadata accessor for NANPeer.Service);
              v56 = *v55;
              v45 = v55[1];
              sub_10000AB0C(v52, v53);
              sub_10000AB0C(v56, v45);
              sub_1002E9098(v55, type metadata accessor for NANPeer.Service);
              v57 = v53 >> 62;
              v58 = v45 >> 62;
              if (v53 >> 62 == 3)
              {
                v59 = 0;
                if (!v52 && v53 == 0xC000000000000000 && v45 >> 62 == 3)
                {
                  v59 = 0;
                  if (!v56 && v45 == 0xC000000000000000)
                  {
                    sub_1000124C8(0, 0xC000000000000000);
                    v77 = 0;
                    v78 = 0xC000000000000000;
LABEL_75:
                    sub_1000124C8(v77, v78);
LABEL_76:

                    v45 = *(v458 + v457);
                    *(v458 + v457) = 0x8000000000000000;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v80 = v454;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      *&v464 = v45;
                      sub_10046BD28();
                      v45 = v464;
                    }

                    if (v80 >= 1 << *(v45 + 32))
                    {
                      goto LABEL_243;
                    }

                    if ((*(v45 + 8 * v456 + 64) & v455) == 0)
                    {
                      goto LABEL_244;
                    }

                    v81 = v453;
                    if (*(v45 + 36) == v453)
                    {
                      v82 = v21;
                      v83 = *(v45 + 56) + v452;
                      type metadata accessor for P2PTimer(0);
                      v84 = v434;
                      variable initialization expression of AWDLPeer.lastUpdated();
                      v85 = v83 + *(v443 + 32);
                      v21 = v82;
                      (*v433)(v85, v84, v435);
                      *(v458 + v457) = v45;

                      v44 = sub_1002E9018(v80, v81, 0, v45);
                      v48 = v86;
                      v88 = v87;

                      if (v88)
                      {
LABEL_256:
                        __break(1u);
                      }

LABEL_14:
                      v46 = v450;
                      v24 = v446;
                      v47 = *(v458 + v457);
                      if (*(v47 + 36) != v48)
                      {
                        goto LABEL_236;
                      }

                      continue;
                    }

LABEL_245:
                    __break(1u);
LABEL_246:
                    __break(1u);
                    goto LABEL_247;
                  }
                }

LABEL_42:
                if (v58 <= 1)
                {
                  goto LABEL_43;
                }

LABEL_48:
                if (v58 == 2)
                {
                  v65 = *(v56 + 16);
                  v64 = *(v56 + 24);
                  v62 = __OFSUB__(v64, v65);
                  v63 = v64 - v65;
                  if (v62)
                  {
                    __break(1u);
LABEL_235:
                    __break(1u);
LABEL_236:
                    __break(1u);
LABEL_237:
                    __break(1u);
LABEL_238:
                    __break(1u);
LABEL_239:
                    __break(1u);
LABEL_240:
                    __break(1u);
LABEL_241:
                    __break(1u);
LABEL_242:
                    __break(1u);
LABEL_243:
                    __break(1u);
LABEL_244:
                    __break(1u);
                    goto LABEL_245;
                  }

                  goto LABEL_50;
                }

                if (!v59)
                {
                  goto LABEL_74;
                }

LABEL_19:
                sub_1000124C8(v56, v45);
                sub_1000124C8(v52, v53);
LABEL_20:
                v50 += 2;
                --v49;
                v48 = v453;
                v44 = v454;
                if (!v49)
                {
                  goto LABEL_72;
                }

                goto LABEL_21;
              }

              if (v57 > 1)
              {
                if (v57 == 2)
                {
                  v61 = *(v52 + 16);
                  v60 = *(v52 + 24);
                  v62 = __OFSUB__(v60, v61);
                  v59 = v60 - v61;
                  if (v62)
                  {
                    goto LABEL_237;
                  }

                  goto LABEL_42;
                }

                v59 = 0;
                if (v58 <= 1)
                {
                  goto LABEL_43;
                }

                goto LABEL_48;
              }

              if (v57)
              {
                LODWORD(v59) = HIDWORD(v52) - v52;
                if (__OFSUB__(HIDWORD(v52), v52))
                {
                  goto LABEL_238;
                }

                v59 = v59;
                goto LABEL_42;
              }

              v59 = BYTE6(v53);
              if (v58 > 1)
              {
                goto LABEL_48;
              }

LABEL_43:
              if (v58)
              {
                LODWORD(v63) = HIDWORD(v56) - v56;
                if (__OFSUB__(HIDWORD(v56), v56))
                {
                  goto LABEL_235;
                }

                v63 = v63;
              }

              else
              {
                v63 = BYTE6(v45);
              }

LABEL_50:
              if (v59 != v63)
              {
                goto LABEL_19;
              }

              if (v59 < 1)
              {
LABEL_74:
                sub_1000124C8(v56, v45);
                v77 = v52;
                v78 = v53;
                goto LABEL_75;
              }

              if (v57 > 1)
              {
                if (v57 != 2)
                {
                  *(&v464 + 6) = 0;
                  *&v464 = 0;
                  sub_10000AB0C(v56, v45);
LABEL_67:
                  sub_100031E04(&v464, v56, v45, v463);
                  sub_1000124C8(v56, v45);
                  sub_1000124C8(v56, v45);
                  sub_1000124C8(v52, v53);
                  if (v463[0])
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_20;
                }

                v449 = v21;
                v66 = *(v52 + 16);
                v447 = *(v52 + 24);
                sub_10000AB0C(v56, v45);
                v67 = __DataStorage._bytes.getter();
                if (v67)
                {
                  v68 = __DataStorage._offset.getter();
                  if (__OFSUB__(v66, v68))
                  {
                    goto LABEL_241;
                  }

                  v67 += v66 - v68;
                }

                if (__OFSUB__(v447, v66))
                {
                  goto LABEL_240;
                }
              }

              else
              {
                if (!v57)
                {
                  *&v464 = v52;
                  WORD4(v464) = v53;
                  BYTE10(v464) = BYTE2(v53);
                  BYTE11(v464) = BYTE3(v53);
                  BYTE12(v464) = BYTE4(v53);
                  BYTE13(v464) = BYTE5(v53);
                  sub_10000AB0C(v56, v45);
                  v46 = v450;
                  goto LABEL_67;
                }

                v449 = v21;
                if (v52 >> 32 < v52)
                {
                  goto LABEL_239;
                }

                sub_10000AB0C(v56, v45);
                v69 = __DataStorage._bytes.getter();
                if (v69)
                {
                  v447 = v69;
                  v70 = __DataStorage._offset.getter();
                  if (__OFSUB__(v52, v70))
                  {
                    goto LABEL_242;
                  }

                  v67 = v52 - v70 + v447;
                }

                else
                {
                  v67 = 0;
                }
              }

              __DataStorage._length.getter();
              v21 = v449;
              sub_100031E04(v67, v56, v45, &v464);
              sub_1000124C8(v56, v45);
              sub_1000124C8(v56, v45);
              sub_1000124C8(v52, v53);
              v46 = v450;
              if (v464)
              {
                goto LABEL_76;
              }

              goto LABEL_20;
            }
          }

          break;
        }

        __break(1u);
LABEL_224:
        __break(1u);
LABEL_225:
        __break(1u);
LABEL_226:

LABEL_227:
        if (v427)
        {
          v400 = *(v425 + 16);
          if (v400)
          {
            v401 = (v425 + 33);
            do
            {
              v402 = *(v401 - 1);
              v403 = sub_10040D118(&v464, *v401);
              if (!(*v432)(v404, 1, v443))
              {
                sub_10046F340(v463, v402);
              }

              (v403)(&v464, 0);
              v401 += 2;
              --v400;
            }

            while (v400);
          }
        }

        v405 = v458;
        sub_1002E4D04(v428, v429, v424);

        type metadata accessor for P2PTimer(0);
        v406 = v434;
        variable initialization expression of AWDLPeer.lastUpdated();
        (*v433)(v405 + *(v45 + 24), v406, v435);
        sub_100010520(v423, v422);
        return sub_100010520(v421, v420);
      case 3u:
        v104 = *(v30 + 3);
        v485 = *(v30 + 2);
        v486 = v104;
        v487 = *(v30 + 4);
        v105 = *(v30 + 1);
        v483 = *v30;
        v484 = v105;
        v106 = NANAttribute.ServiceDescriptor.Control.type.getter(BYTE2(v105));
        v107 = v484;
        v449 = v21;
        if (v106 == 2)
        {
          v108 = v426;
          v109 = swift_isUniquelyReferenced_nonNull_native();
          *&v464 = v108;
          v110 = sub_10007CCC8(v107);
          v112 = v108[2];
          v113 = (v111 & 1) == 0;
          v62 = __OFADD__(v112, v113);
          v114 = v112 + v113;
          if (v62)
          {
            goto LABEL_250;
          }

          v115 = v111;
          if (v108[3] >= v114)
          {
            if ((v109 & 1) == 0)
            {
              v385 = v110;
              sub_10046BF5C();
              v110 = v385;
            }
          }

          else
          {
            sub_1003118D0(v114, v109);
            v110 = sub_10007CCC8(v107);
            if ((v115 & 1) != (v116 & 1))
            {
              goto LABEL_258;
            }
          }

          v282 = v464;
          v426 = v464;
          if (v115)
          {
            *(*(v464 + 56) + v110) = 1;
          }

          else
          {
            *(v464 + 8 * (v110 >> 6) + 64) |= 1 << v110;
            *(v282[6] + v110) = v107;
            *(v282[7] + v110) = 1;
            v286 = v282[2];
            v62 = __OFADD__(v286, 1);
            v287 = v286 + 1;
            if (v62)
            {
              goto LABEL_253;
            }

            v282[2] = v287;
          }

          v288 = swift_allocObject();
          v289 = v486;
          v288[3] = v485;
          v288[4] = v289;
          v288[5] = v487;
          v290 = v484;
          v288[1] = v483;
          v288[2] = v290;
          sub_10028676C(&v483, &v464);
          sub_10028676C(&v483, &v464);
          sub_100010520(v421, v420);
          v291 = *(type metadata accessor for NANPeer(0) + 104);
          v292 = v458;
          v293 = swift_isUniquelyReferenced_nonNull_native();
          *&v464 = *(v292 + v291);
          v294 = v464;
          *(v292 + v291) = 0x8000000000000000;
          v296 = sub_10007CCC8(v107);
          v297 = *(v294 + 16);
          v298 = (v295 & 1) == 0;
          v299 = v297 + v298;
          if (__OFADD__(v297, v298))
          {
            goto LABEL_252;
          }

          v300 = v295;
          if (*(v294 + 24) >= v299)
          {
            if ((v293 & 1) == 0)
            {
              sub_10046BD28();
              v294 = v464;
            }
          }

          else
          {
            sub_100311584(v299, v293);
            v294 = v464;
            v301 = sub_10007CCC8(v107);
            if ((v300 & 1) != (v302 & 1))
            {
LABEL_257:
              sub_100197EB4(&v483);
LABEL_258:
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v296 = v301;
          }

          v317 = v458;
          *(v458 + v291) = v294;

          v318 = *(v317 + v291);
          if (v300)
          {
            sub_100197EB4(&v483);
            v319 = *(v450 + 72) * v296;
          }

          else
          {
            v320 = v413;
            *(v413 + 10) = 0;
            *(v320 + 88) = 0;
            *(v320 + 96) = 5;
            *(v320 + 104) = 0u;
            *(v320 + 120) = 0u;
            *(v320 + 136) = 0;
            *(v320 + 144) = -1;
            *(v320 + 152) = &_swiftEmptySetSingleton;
            v321 = v486;
            *(v320 + 32) = v485;
            *(v320 + 48) = v321;
            *(v320 + 64) = v487;
            v322 = v484;
            *v320 = v483;
            *(v320 + 16) = v322;
            sub_10028676C(&v483, &v464);
            sub_1002EA068(0, 0, 5, 0, 0);
            *(v320 + 80) = 0;
            *(v320 + 88) = 0;
            *(v320 + 96) = 5;
            type metadata accessor for P2PTimer(0);
            *(v320 + 104) = 0;
            *(v320 + 112) = 0;
            variable initialization expression of AWDLPeer.lastUpdated();
            sub_100197EB4(&v483);
            v318[(v296 >> 6) + 8] |= 1 << v296;
            *(v318[6] + v296) = v107;
            v319 = *(v450 + 72) * v296;
            sub_1002E9160(v320, v318[7] + v319, type metadata accessor for NANPeer.Service);
            v323 = v318[2];
            v62 = __OFADD__(v323, 1);
            v324 = v323 + 1;
            if (v62)
            {
              goto LABEL_255;
            }

            v318[2] = v324;
          }

          v325 = v318[7];
          type metadata accessor for P2PTimer(0);
          v326 = v434;
          variable initialization expression of AWDLPeer.lastUpdated();
          v316 = v443;
          (*v433)(v325 + *(v443 + 32) + v319, v326, v435);
          v420 = v288;
          v421 = sub_1002EA100;
        }

        else
        {
          v209 = swift_allocObject();
          v210 = v486;
          v209[3] = v485;
          v209[4] = v210;
          v209[5] = v487;
          v211 = v484;
          v209[1] = v483;
          v209[2] = v211;
          sub_10028676C(&v483, &v464);
          sub_10028676C(&v483, &v464);
          sub_100010520(v423, v422);
          v212 = type metadata accessor for NANPeer(0);
          v213 = v458;
          v214 = *(v212 + 104);
          v215 = swift_isUniquelyReferenced_nonNull_native();
          *&v464 = *(v213 + v214);
          v216 = v464;
          *(v213 + v214) = 0x8000000000000000;
          v218 = sub_10007CCC8(v107);
          v219 = *(v216 + 16);
          v220 = (v217 & 1) == 0;
          v221 = v219 + v220;
          if (__OFADD__(v219, v220))
          {
            goto LABEL_251;
          }

          v222 = v217;
          if (*(v216 + 24) >= v221)
          {
            if ((v215 & 1) == 0)
            {
              sub_10046BD28();
              v216 = v464;
            }
          }

          else
          {
            sub_100311584(v221, v215);
            v216 = v464;
            v223 = sub_10007CCC8(v107);
            if ((v222 & 1) != (v224 & 1))
            {
              goto LABEL_257;
            }

            v218 = v223;
          }

          v283 = v458;
          *(v458 + v214) = v216;

          v284 = *(v283 + v214);
          if (v222)
          {
            sub_100197EB4(&v483);
            v285 = *(v450 + 72) * v218;
          }

          else
          {
            v303 = v413;
            *(v413 + 10) = 0;
            *(v303 + 88) = 0;
            *(v303 + 96) = 5;
            *(v303 + 104) = 0u;
            *(v303 + 120) = 0u;
            *(v303 + 136) = 0;
            *(v303 + 144) = -1;
            *(v303 + 152) = &_swiftEmptySetSingleton;
            v304 = v486;
            *(v303 + 32) = v485;
            *(v303 + 48) = v304;
            *(v303 + 64) = v487;
            v305 = v484;
            *v303 = v483;
            *(v303 + 16) = v305;
            sub_10028676C(&v483, &v464);
            sub_1002EA068(0, 0, 5, 0, 0);
            *(v303 + 80) = 0;
            *(v303 + 88) = 0;
            *(v303 + 96) = 5;
            type metadata accessor for P2PTimer(0);
            *(v303 + 104) = 0;
            *(v303 + 112) = 0;
            variable initialization expression of AWDLPeer.lastUpdated();
            sub_100197EB4(&v483);
            v284[(v218 >> 6) + 8] |= 1 << v218;
            *(v284[6] + v218) = v107;
            v285 = *(v450 + 72) * v218;
            sub_1002E9160(v303, v284[7] + v285, type metadata accessor for NANPeer.Service);
            v306 = v284[2];
            v62 = __OFADD__(v306, 1);
            v307 = v306 + 1;
            if (v62)
            {
              goto LABEL_254;
            }

            v284[2] = v307;
          }

          v308 = (v284[7] + v285);
          v464 = *v308;
          v309 = v308[1];
          v310 = v308[2];
          v311 = v308[4];
          v467 = v308[3];
          v468 = v311;
          v465 = v309;
          v466 = v310;
          v312 = v484;
          v313 = v485;
          v314 = v487;
          v308[3] = v486;
          v308[4] = v314;
          v308[2] = v313;
          *v308 = v483;
          v308[1] = v312;
          sub_10028676C(&v483, v463);
          sub_100197EB4(&v464);
          type metadata accessor for P2PTimer(0);
          v315 = v434;
          variable initialization expression of AWDLPeer.lastUpdated();
          v316 = v443;
          (*v433)(v308 + *(v443 + 32), v315, v435);
          v422 = v209;
          v423 = sub_1002EA554;
        }

        v327 = v484;
        type metadata accessor for NANPeer(0);
        v328 = sub_10040D118(&v464, v327);
        v330 = v329;
        v331 = (*v432)(v329, 1, v316);
        a1 = v429;
        v21 = v449;
        if (!v331)
        {

          *(v330 + 152) = &_swiftEmptySetSingleton;
        }

        (v328)(&v464, 0);
        sub_100197EB4(&v483);
        v24 = v446;
        goto LABEL_5;
      case 4u:
        v26 = *v30;
        v27 = *(type metadata accessor for NANPeer(0) + 48);
        goto LABEL_4;
      case 0xBu:
        v26 = *v30;
        v27 = *(type metadata accessor for NANPeer(0) + 44);
LABEL_4:
        v28 = v458 + v27;
        *v28 = v26;
        *(v28 + 2) = 0;
        goto LABEL_5;
      case 0xEu:
        *&v466 = *(v30 + 4);
        v156 = *(v30 + 1);
        v464 = *v30;
        v465 = v156;
        v157 = v464;
        v158 = v426;
        v159 = v432 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
        if (!v426[2] || (v160 = sub_10007CCC8(v464), (v161 & 1) == 0) || (*(v158[7] + v160) & 1) == 0)
        {
          v206 = type metadata accessor for NANPeer(0);
          v162 = sub_10040D118(v470, v157);
          v208 = v207;
          v165 = *v432;
          v166 = v443;
          if ((*v432)(v207, 1, v443))
          {
            v167 = v470;
            goto LABEL_128;
          }

          v447 = v159;
          LODWORD(v448) = v157;
          v452 = v165;
          v267 = v466;
          v269 = *(v208 + 80);
          v268 = *(v208 + 88);
          v270 = *(v208 + 96);
          v271 = *(v208 + 104);
          v272 = *(v208 + 112);
          v273 = v465;
          *(v208 + 80) = v464;
          *(v208 + 96) = v273;
          *(v208 + 112) = v267;
          sub_100197F08(&v464, v463);
          sub_100197F08(&v464, v463);
          sub_1002EA048(v269, v268, v270, v271, v272);
          *&v457 = v268;
          v454 = v272;
          v455 = v271;
          sub_1002EA068(v269, v268, v270, v271, v272);
          *&v456 = v270;
          v274 = v270;
          v449 = v21;
          v453 = v162;
          if (v270 == 5)
          {
LABEL_154:
            v275 = *(v208 + 56);
            v276 = *(v208 + 64);
            v277 = *(v208 + 72);
            v278 = v275;
            v444 = v206;
            v409 = v269;
            if (v275 == 4)
            {
              v278 = 0;
              v279 = 0;
              v280 = 0;
              v281 = -1;
            }

            else
            {
              v281 = 1;
              v279 = v276;
              v280 = v277;
            }

            v165 = v452;
            v157 = v448;
            v368 = *(v208 + 120);
            v369 = *(v208 + 128);
            v370 = *(v208 + 136);
            *(v208 + 120) = v278;
            *(v208 + 128) = v279;
            *(v208 + 136) = v280;
            v371 = *(v208 + 144);
            *(v208 + 144) = v281;
            sub_100184290(v275, v276, v277);
            sub_1002E9A28(v368, v369, v370, v371);
            a1 = v429;
            v269 = v409;
          }

          else
          {
            v334 = BYTE1(v457);
            if ((v457 & 0x10000) != 0)
            {
              if (v270 == 4)
              {
                goto LABEL_154;
              }

              v372 = *(v208 + 120);
              v373 = *(v208 + 128);
              v374 = *(v208 + 136);
              v376 = v454;
              v375 = v455;
              *(v208 + 120) = v274;
              *(v208 + 128) = v375;
              *(v208 + 136) = v376;
              v377 = *(v208 + 144);
              *(v208 + 144) = 1;
              v463[0] = v269;
              v463[1] = v457;
              v463[2] = v456;
              v463[3] = v375;
              v463[4] = v376;
              sub_100197F08(v463, &v469);
              v335 = v372;
              v336 = v373;
              v337 = v374;
              v338 = v377;
            }

            else
            {
              v335 = *(v208 + 120);
              v336 = *(v208 + 128);
              v337 = *(v208 + 136);
              *(v208 + 128) = 0;
              *(v208 + 136) = 0;
              *(v208 + 120) = v334;
              v338 = *(v208 + 144);
              *(v208 + 144) = 0;
            }

            sub_1002E9A28(v335, v336, v337, v338);
            v165 = v452;
            v157 = v448;
            a1 = v429;
          }

          type metadata accessor for P2PTimer(0);
          v378 = v434;
          variable initialization expression of AWDLPeer.lastUpdated();
          sub_1002EA068(v269, v457, v456, v455, v454);
          sub_100277A14(&v464);
          v166 = v443;
          (*v433)(v208 + *(v443 + 32), v378, v435);
          (v453)(v470, 0);
          v21 = v449;
          goto LABEL_204;
        }

        type metadata accessor for NANPeer(0);
        v162 = sub_10040D118(v463, v157);
        v164 = v163;
        v165 = *v432;
        v166 = v443;
        if ((*v432)(v163, 1, v443))
        {
          v167 = v463;
LABEL_128:
          (v162)(v167, 0);
          goto LABEL_204;
        }

        type metadata accessor for P2PTimer(0);
        v449 = v21;
        v382 = v434;
        *&v457 = v162;
        variable initialization expression of AWDLPeer.lastUpdated();
        v383 = v382;
        v21 = v449;
        (*v433)(v164 + *(v166 + 32), v383, v435);
        (v457)(v463, 0);
LABEL_204:
        type metadata accessor for NANPeer(0);
        v379 = sub_10040D118(v463, v157);
        v381 = v380;
        if (!v165(v380, 1, v166))
        {

          *(v381 + 152) = &_swiftEmptySetSingleton;
        }

        (v379)(v463, 0);
        v24 = v446;
        sub_100277A14(&v464);
LABEL_5:
        v22 = v436;
        v20 = v445;
        v25 = v445 >= v436;
        if (v445 == v436)
        {
          goto LABEL_6;
        }

LABEL_7:
        if (v25)
        {
          goto LABEL_246;
        }

        v32 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
          goto LABEL_256;
        }

        v33 = v430;
        v34 = a1 + ((*(v431 + 80) + 32) & ~*(v431 + 80)) + *(v431 + 72) * v20;
        v35 = *(v24 + 48);
        *v430 = v20;
        sub_1002E90F8(v34, v33 + v35, type metadata accessor for NANAttribute);
        v36 = v33;
        v31 = v438;
        sub_10001CEA8(v36, v438, &qword_100595928, &qword_1004AF668);
        v29 = 0;
        v445 = v32;
        v30 = v439;
        break;
      case 0xFu:
        v184 = v30;
        v185 = *v30;
        v186 = v21;
        v187 = *(v184 + 4);
        v188 = v184[10];
        v189 = v458 + *(type metadata accessor for NANPeer(0) + 52);
        *v189 = v185;
        *(v189 + 10) = v188;
        *(v189 + 8) = v187;
        v21 = v186;
        *(v189 + 11) = 0;
        goto LABEL_5;
      case 0x11u:
        sub_1002E9098(v30, type metadata accessor for NANAttribute);
        v180 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v428 = sub_100116640(0, *(v428 + 2) + 1, 1, v428);
        }

        v182 = *(v428 + 2);
        v181 = *(v428 + 3);
        v22 = v436;
        v20 = v445;
        if (v182 >= v181 >> 1)
        {
          v384 = sub_100116640((v181 > 1), v182 + 1, 1, v428);
          v20 = v445;
          v428 = v384;
          v22 = v436;
        }

        v183 = v428;
        *(v428 + 2) = v182 + 1;
        *&v183[8 * v182 + 32] = v40;
        v21 = v180;
        v25 = v20 >= v22;
        if (v20 == v22)
        {
          goto LABEL_6;
        }

        goto LABEL_7;
      case 0x14u:
        v102 = *v30 | (*(v30 + 1) << 16);
        v103 = v458 + *(type metadata accessor for NANPeer(0) + 60);
        *v103 = v102;
        *(v103 + 4) = 0;
        goto LABEL_5;
      case 0x19u:
        v122 = *(v30 + 1);
        LODWORD(v409) = *(v30 + 8);
        *&v457 = *(v30 + 5);
        LODWORD(v444) = *(v30 + 24);
        v123 = *(v30 + 11);
        v124 = type metadata accessor for NANPeer(0);
        v125 = (v458 + *(v124 + 20));
        v126 = *v125;
        v127 = v125[1];
        v128 = v125[2];
        v129 = v125[3];
        v130 = v125[4];
        v131 = v125[5];
        v448 = v128;
        v449 = v21;
        v454 = v130;
        v455 = v131;
        v452 = v129;
        v453 = v126;
        v447 = v127;
        *&v456 = v124;
        if (v123)
        {
          v132 = *(v30 + 48);
          v133 = v458;

          LODWORD(v457) = v132;
          NANAttribute.ElementContainer.ElementIDExtension.apple80211_he_cap.getter(v123, v132, &v459);
          v134 = v460;
          if ((v460 & 2) != 0)
          {
            v135 = 1026;
          }

          else
          {
            v135 = 770;
          }

          v136 = apple80211_he_capability.maxMCS_maxNSS.getter();
          v138 = 1282;
          if ((v134 & 4) == 0)
          {
            v138 = v135;
          }

          v139 = v133 + *(v456 + 112);
          *v139 = v138;
          *(v139 + 8) = v137;
          *(v139 + 16) = 0;
          *(v139 + 24) = v136;
          *(v139 + 32) = 0;
          v140 = v414;
          v141 = v418;
          (*v415)(v414, v133, v418);

          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v142, v143))
          {
            v144 = swift_slowAlloc();
            v463[0] = swift_slowAlloc();
            *v144 = v412.n128_u32[0];
            v145 = WiFiAddress.description.getter(v453 | (v447 << 8) | (v448 << 16) | (v452 << 24) | (v454 << 32) | (v455 << 40));
            v147 = sub_100002320(v145, v146, v463);

            *(v144 + 4) = v147;
            *(v144 + 12) = 2080;
            NANAttribute.ElementContainer.ElementIDExtension.apple80211_he_cap.getter(v123, v457, v461);

            v464 = v461[0];
            v465 = v461[1];
            *&v466 = v462;
            type metadata accessor for apple80211_he_capability(0);
            v148 = String.init<A>(describing:)();
            v150 = sub_100002320(v148, v149, v463);

            *(v144 + 14) = v150;
            _os_log_impl(&_mh_execute_header, v142, v143, "HE Cap (%s): %s", v144, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          (*v416)(v140, v141);
          goto LABEL_158;
        }

        v240 = v409;
        v241 = v444;
        v242 = v457;
        if (v457)
        {

          v243 = NANAttribute.ElementContainer.VHTCapabilities.info.getter(v242);
          v244 = NANAttribute.ElementContainer.VHTCapabilities.rxMCSMap.getter(v242);
          v245 = NANAttribute.ElementContainer.VHTCapabilities.rxHighLgiRate.getter(v242);
          v246 = NANAttribute.ElementContainer.VHTCapabilities.txMCSMap.getter(v242);
          NANAttribute.ElementContainer.VHTCapabilities.txHighLgiRate.getter(v242);
          LODWORD(v464) = 0;
          WORD2(v464) = v241;
          LODWORD(v409) = v241 >> 8;
          *(&v464 + 6) = v243;
          WORD5(v464) = v244;
          WORD6(v464) = v245;
          HIWORD(v464) = v246;
          apple80211_vht_capability.phyCapabilities.getter(v464, *(&v464 + 1), &v471);
          v247 = v472;
          v248 = v473;
          v249 = v474;
          v250 = v475 | (v476 << 8);
          v251 = v458 + *(v456 + 112);
          *v251 = v471;
          *(v251 + 8) = v247;
          *(v251 + 16) = v248;
          *(v251 + 24) = v249;
          *(v251 + 32) = v250;
          v252 = v411;
          v253 = v418;
          (*v415)(v411);

          v254 = Logger.logObject.getter();
          v255 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v254, v255))
          {
            v256 = swift_slowAlloc();
            *&v456 = swift_slowAlloc();
            v463[0] = v456;
            *v256 = v412.n128_u32[0];
            v257 = WiFiAddress.description.getter(v453 | (v447 << 8) | (v448 << 16) | (v452 << 24) | (v454 << 32) | (v455 << 40));
            LODWORD(v455) = v255;
            v259 = sub_100002320(v257, v258, v463);

            *(v256 + 4) = v259;
            *(v256 + 12) = 2080;
            v260 = NANAttribute.ElementContainer.VHTCapabilities.info.getter(v242);
            LOWORD(v259) = NANAttribute.ElementContainer.VHTCapabilities.rxMCSMap.getter(v242);
            v261 = NANAttribute.ElementContainer.VHTCapabilities.rxHighLgiRate.getter(v242);
            v262 = NANAttribute.ElementContainer.VHTCapabilities.txMCSMap.getter(v242);
            v263 = NANAttribute.ElementContainer.VHTCapabilities.txHighLgiRate.getter(v242);

            LODWORD(v464) = 0;
            BYTE4(v464) = v241;
            BYTE5(v464) = v409;
            *(&v464 + 6) = v260;
            WORD5(v464) = v259;
            WORD6(v464) = v261;
            HIWORD(v464) = v262;
            LOWORD(v465) = v263;
            type metadata accessor for apple80211_vht_capability(0);
            v264 = String.init<A>(describing:)();
            v266 = sub_100002320(v264, v265, v463);

            *(v256 + 14) = v266;
            _os_log_impl(&_mh_execute_header, v254, v455, "VHT Cap (%s): %s", v256, 0x16u);
            swift_arrayDestroy();

            (*v416)(v411, v418);
          }

          else
          {

            (*v416)(v252, v253);
          }

LABEL_158:
          a1 = v429;
          goto LABEL_159;
        }

        swift_bridgeObjectRelease_n();
        a1 = v429;
        v339 = v418;
        if (v122)
        {

          v340 = v240;
          v341 = NANAttribute.ElementContainer.HTCapabilities.apple80211_ht_cap.getter(v122, v240);
          apple80211_ht_capability.phyCapabilities.getter(v341, v342, v343, v344, &v477);
          v345 = v478;
          v346 = v479;
          v347 = v480;
          v348 = v481 | (v482 << 8);
          v349 = v458 + *(v456 + 112);
          *v349 = v477;
          *(v349 + 8) = v345;
          *(v349 + 16) = v346;
          *(v349 + 24) = v347;
          *(v349 + 32) = v348;
          v350 = v410;
          (*v415)(v410);

          v351 = Logger.logObject.getter();
          v352 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v351, v352))
          {
            v353 = swift_slowAlloc();
            v354 = v122;
            *&v457 = swift_slowAlloc();
            v463[0] = v457;
            *v353 = v412.n128_u32[0];
            v355 = WiFiAddress.description.getter(v453 | (v447 << 8) | (v448 << 16) | (v452 << 24) | (v454 << 32) | (v455 << 40));
            v357 = sub_100002320(v355, v356, v463);

            *(v353 + 4) = v357;
            *(v353 + 12) = 2080;
            v358 = NANAttribute.ElementContainer.HTCapabilities.apple80211_ht_cap.getter(v354, v340);
            v360 = v359;
            v362 = v361;
            v364 = v363;

            *&v464 = v358;
            *(&v464 + 1) = v360;
            *&v465 = v362;
            a1 = v429;
            *(&v465 + 1) = v364;
            type metadata accessor for apple80211_ht_capability(0);
            v365 = String.init<A>(describing:)();
            v367 = sub_100002320(v365, v366, v463);

            *(v353 + 14) = v367;
            _os_log_impl(&_mh_execute_header, v351, v352, "HT Cap (%s): %s", v353, 0x16u);
            swift_arrayDestroy();

            (*v416)(v410, v339);
          }

          else
          {

            (*v416)(v350, v339);
          }
        }

        else
        {
        }

LABEL_159:
        v21 = v449;
        v24 = v446;
        goto LABEL_5;
      case 0x1Au:
        v118 = *v30;
        v117 = *(v30 + 1);
        v119 = *(v30 + 4);
        v120 = v458 + *(type metadata accessor for NANPeer(0) + 72);
        v121 = v117 & 0xFF00000000;
        if ((*(v120 + 8) & 0xFF00000000) == 0x300000000)
        {
          if (v121 == 0x300000000)
          {
            goto LABEL_189;
          }
        }

        else if (v121 != 0x300000000 && (static NANAttribute.ExtendedWLANInfrastructure.__derived_struct_equals(_:_:)() & 1) != 0)
        {
          goto LABEL_189;
        }

        v225 = v424;
        if (*(v424 + 16))
        {
          v226 = v21;
          v227 = sub_1003E08F4(30);
          if (v228)
          {
            v455 = v118;
            LODWORD(v456) = v119;
            v229 = *(*(v225 + 56) + 8 * v227);
            v230 = v229 + 64;
            v231 = 1 << *(v229 + 32);
            if (v231 < 64)
            {
              v232 = ~(-1 << v231);
            }

            else
            {
              v232 = -1;
            }

            v233 = v232 & *(v229 + 64);
            v234 = (v231 + 63) >> 6;
            *&v457 = v229;
            swift_bridgeObjectRetain_n();
            v235 = 0;
            if (!v233)
            {
              goto LABEL_143;
            }

            while (1)
            {
              for (j = v235; ; v235 = j)
              {
                v237 = __clz(__rbit64(v233));
                v233 &= v233 - 1;
                v238 = *(*(v457 + 56) + ((j << 10) | (16 * v237)));

                v238(v239);

                if (v233)
                {
                  break;
                }

LABEL_143:
                v21 = v226;
                do
                {
                  j = v235 + 1;
                  if (__OFADD__(v235, 1))
                  {
                    goto LABEL_248;
                  }

                  if (j >= v234)
                  {

                    a1 = v429;
                    v24 = v446;
                    v119 = v456;
                    v118 = v455;
                    goto LABEL_189;
                  }

                  v233 = *(v230 + 8 * j);
                  ++v235;
                }

                while (!v233);
              }
            }
          }
        }

LABEL_189:
        *v120 = v118;
        *(v120 + 8) = v117;
        v419 = 1;
        *(v120 + 16) = v119;
        goto LABEL_5;
      case 0x1Eu:
        v97 = v30;
        v98 = *v30;
        v99 = v21;
        v100 = *(v97 + 1);

        v101 = (v458 + *(type metadata accessor for NANPeer(0) + 100));
        *v101 = v98;
        v101[1] = 0;
        v425 = v100;
        v427 = v100;
        goto LABEL_114;
      case 0x25u:
        v168 = *v30;
        v99 = v21;
        v169 = *(type metadata accessor for NANPeer(0) + 56);
        v170 = v458;

        *(v170 + v169) = v168;
LABEL_114:
        v21 = v99;
        goto LABEL_5;
      case 0x26u:
        v171 = type metadata accessor for NANPeer(0);
        v172 = v30;
        v173 = (v458 + *(v171 + 84));
        v174 = *v173;
        v175 = v173[1];
        v176 = v173[2];
        v177 = v173[3];
        v178 = *v172;
        v456 = v172[1];
        v457 = v178;
        sub_1002E9FD4(v174, v175, v176, v177);
        v179 = v456;
        *v173 = v457;
        *(v173 + 1) = v179;
        goto LABEL_5;
      case 0x27u:
        v194 = v30;
        v195 = *(v30 + 4);
        v196 = v21;
        v197 = *(v194 + 20);
        v198 = v458 + *(type metadata accessor for NANPeer(0) + 80);
        v199 = *v198;
        v200 = *(v198 + 8);
        v201 = *(v198 + 16);
        v202 = *(v198 + 24);
        v203 = *(v198 + 32);
        v204 = *v194;
        v456 = *(v194 + 1);
        v457 = v204;
        v24 = v446;
        sub_1002EA024(v199, v200, v201, v202, v203);
        v205 = v456;
        *v198 = v457;
        *(v198 + 16) = v205;
        *(v198 + 32) = v195;
        *(v198 + 40) = v197;
        v21 = v196;
        goto LABEL_5;
      case 0x28u:
        v190 = v30;
        v191 = *(type metadata accessor for NANPeer(0) + 76);
        v192 = v458;
        sub_100016290(v458 + v191, &unk_100596880, &unk_1004B0F70);
        sub_1002E9160(v190, v192 + v191, type metadata accessor for NANAttribute.CustomDeviceInformation);
        v193 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
        (*(*(v193 - 8) + 56))(v192 + v191, 0, 1, v193);
        goto LABEL_5;
      case 0x29u:
        v89 = v30;
        v90 = v30[2];
        v91 = *(v89 + 1);
        v92 = *(v89 + 2);
        v93 = *v89;
        v94 = OUI.apple.unsafeMutableAddressor();
        if (static OUI.== infix(_:_:)(v93 | (v90 << 16), *v94 | (*(v94 + 2) << 16)))
        {
          type metadata accessor for BinaryDecoder();
          v95 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
          sub_10000AB0C(v91, v92);
          sub_1002E7D40(&qword_100597550, type metadata accessor for NANAttribute.CustomDeviceInformation, protocol conformance descriptor for NANAttribute.CustomDeviceInformation);
          static BinaryDecoder.decode<A>(_:data:)(v95, v91, v92, v95);
          if (v21)
          {

            v96 = 1;
          }

          else
          {
            v96 = 0;
          }

          sub_1000124C8(v91, v92);
          sub_1000124C8(v91, v92);
          v332 = v417;
          (*(*(v95 - 1) + 56))(v417, v96, 1, v95);
          v333 = type metadata accessor for NANPeer(0);
          sub_1002E9F64(v332, v458 + *(v333 + 76));
          v21 = 0;
          v24 = v446;
        }

        else
        {
          sub_1000124C8(v91, v92);
          v24 = v446;
        }

        goto LABEL_5;
      default:
        sub_1002E9098(v30, type metadata accessor for NANAttribute);
        goto LABEL_5;
    }
  }
}

uint64_t sub_1002E4D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v401[1] = type metadata accessor for NANAttribute(0);
  __chkstk_darwin();
  v8 = &v357 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v357 - v9;
  __chkstk_darwin();
  v13 = &v357 - v12;
  v14 = *(a1 + 16);
  if (!v14)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    goto LABEL_21;
  }

  v17 = *(a1 + 32);
  v15 = a1 + 32;
  v16 = v17;
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v401[0] = *(a2 + 16);
  if (v16 >= v401[0])
  {
    goto LABEL_268;
  }

  v18 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v399 = *(v11 + 72);
  v400 = v18;
  sub_1002E90F8(v18 + v399 * v16, &v357 - v12, type metadata accessor for NANAttribute);
  if (swift_getEnumCaseMultiPayload() != 17)
  {
    v32 = v13;
    goto LABEL_17;
  }

  v391 = v8;
  v390 = a3;
  v19 = 0;
  v396 = *v13;
  v397 = v15;
  v20 = *(v13 + 1);
  v398 = v14;
  while (v14 != v19)
  {
    v21 = *(v15 + 8 * v19);
    if (v21 >= v401[0])
    {
      __break(1u);
LABEL_265:

      goto LABEL_266;
    }

    sub_1002E90F8(v400 + v21 * v399, v10, type metadata accessor for NANAttribute);
    if (swift_getEnumCaseMultiPayload() != 17)
    {

      v32 = v10;
LABEL_17:
      sub_1002E9098(v32, type metadata accessor for NANAttribute);
LABEL_20:
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v14 = 0;
      goto LABEL_21;
    }

    if (!*(*(v10 + 1) + 16) || (v22 = *v10, v23 = *(v10 + 1), v21 != v16) && (v24 = NANAttribute.Availability.Control.mapID.getter(*(v10 + 1)), v24 == NANAttribute.Availability.Control.mapID.getter(v20)))
    {

LABEL_19:

      goto LABEL_20;
    }

    v25 = NANAttribute.Availability.Control.scheduleChangeFlags.getter(v23);
    v26 = NANAttribute.Availability.Control.scheduleChangeFlags.getter(v20);

    if (v25 == v26)
    {
      v19 = (v19 + 1);
      v27 = v22 == v396;
      v15 = v397;
      v14 = v398;
      if (v27)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  v34 = (v3 + *(type metadata accessor for NANPeer(0) + 68));
  v35 = v34[1];
  if (v35)
  {
    v36 = v391;
    if (v396 == *v34)
    {
      goto LABEL_19;
    }

    v37 = *v34;
    v38 = v34[2];
    v363 = v34[3];
    v362 = v34[4];
    v39 = NANAttribute.Availability.Control.scheduleChangeFlags.getter(v20);
    v40 = *NANAttribute.Availability.Control.committedChange.unsafeMutableAddressor();
    v41 = *NANAttribute.Availability.Control.potentialChange.unsafeMutableAddressor();

    if (v40)
    {
      if ((v41 & ~v40) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (!v41)
    {
      goto LABEL_20;
    }

    v40 |= v41;
LABEL_31:
    if ((v40 & v39) == 0)
    {
      goto LABEL_20;
    }

    v357 = v38;
    v358 = v37;
    v359 = v35;
    v360 = v34;
    goto LABEL_33;
  }

  v359 = 0;
  v358 = *v34;
  v42 = v34[3];
  v357 = v34[2];
  v363 = v42;
  v360 = v34;
  v362 = v34[4];

  v36 = v391;
LABEL_33:
  v377 = 0;
  v376 = 0;
  v375 = 0;
  v368 = 0;
  v369 = 0;
  v374 = 0;
  v370 = 0;
  v14 = 0;
  v43 = 0;
  v44 = &_swiftEmptyDictionarySingleton;
  v367 = &_swiftEmptyDictionarySingleton;
  v380 = &_swiftEmptyDictionarySingleton;
  v379 = &_swiftEmptyDictionarySingleton;
  v45 = v390;
  v46 = v398;
  while (1)
  {
    if (v43 == v46)
    {
      goto LABEL_274;
    }

    v384 = v44;
    v378 = v43;
    v47 = *(v397 + 8 * v43);
    if (v47 >= v401[0])
    {
      goto LABEL_275;
    }

    sub_1002E90F8(v400 + v47 * v399, v36, type metadata accessor for NANAttribute);
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      break;
    }

    sub_1002E9098(v36, type metadata accessor for NANAttribute);
LABEL_233:
    v43 = v378 + 1;
    v46 = v398;
    v44 = v384;
    if ((v378 + 1) == v398)
    {
      if (*(v45 + 16))
      {
        v325 = sub_1003E08F4(18);
        if (v326)
        {
          v327 = *(*(v45 + 56) + 8 * v325);
          v328 = 1 << *(v327 + 32);
          v329 = -1;
          if (v328 < 64)
          {
            v329 = ~(-1 << v328);
          }

          v330 = v329 & *(v327 + 64);
          v331 = (v328 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v332 = 0;
          while (v330)
          {
            v333 = v332;
LABEL_244:
            v334 = __clz(__rbit64(v330));
            v330 &= v330 - 1;
            v335 = *(*(v327 + 56) + ((v333 << 10) | (16 * v334)));

            v335(v336);
          }

          while (1)
          {
            v333 = v332 + 1;
            if (__OFADD__(v332, 1))
            {
              goto LABEL_287;
            }

            if (v333 >= v331)
            {
              goto LABEL_265;
            }

            v330 = *(v327 + 64 + 8 * v333);
            ++v332;
            if (v330)
            {
              v332 = v333;
              goto LABEL_244;
            }
          }
        }
      }

LABEL_266:
      sub_1002EA11C(v358, v359, v357, v363, v362);
      sub_100010520(v377, 0);
      sub_100010520(v376, 0);
      sub_100010520(v375, 0);
      v354 = v360;
      v355 = v384;
      *v360 = v396;
      v354[1] = v355;
      v356 = v367;
      v354[2] = v380;
      v354[3] = v356;
      v354[4] = v379;
      goto LABEL_258;
    }
  }

  v48 = *(v36 + 8);
  v392 = NANAttribute.Availability.Control.mapID.getter(*(v36 + 2));
  v381 = *(v48 + 16);
  if (!v381)
  {
LABEL_232:

    goto LABEL_233;
  }

  v49 = 0;
  v383 = v48 + 32;
  v382 = v48;
  while (1)
  {
    if (v49 >= *(v48 + 16))
    {
      goto LABEL_271;
    }

    v389 = v14;
    v385 = v49;
    v56 = (v383 + 56 * v49);
    v57 = *(v56 + 1);
    v58 = *(v56 + 2);
    v59 = *(v56 + 3);
    v60 = *(v56 + 48);
    v61 = *(v56 + 5);
    v62 = *v56;
    sub_10005D4F4(v57, v58, v59);
    v395 = v61;

    v63 = (*NANAvailabilityEntry.Control.committed.unsafeMutableAddressor() & ~v62);
    v64 = *NANAvailabilityEntry.Control.potential.unsafeMutableAddressor();
    v65 = v64 & v62;
    v66 = *NANAvailabilityEntry.Control.conditional.unsafeMutableAddressor();
    v67 = v66 & v62;
    v386 = v57;
    v393 = v58;
    v394 = v59;
    sub_10005D4F4(v57, v58, v59);
    v388 = NANAvailabilityEntry.Control.usagePreference.getter(v62, v68);
    v387 = NANAvailabilityEntry.Control.rxNSS.getter(v62, &v407 + 4);
    v69 = NANAvailabilityEntry.Control.utilization.getter(v62, &v406);
    v70 = v69;
    if (!v63)
    {
      break;
    }

    v14 = v389;
    if (v65 != v64)
    {
      if (v67 != v66)
      {
LABEL_246:
        v337 = v386;
        v339 = v393;
        v338 = v394;
        sub_10002F75C(v386, v393, v394);

        sub_10002F75C(v337, v339, v338);

        goto LABEL_257;
      }

      if (!v60)
      {
        goto LABEL_247;
      }

      v124 = v386;
      if (*(v395 + 16) != 1)
      {
        goto LABEL_248;
      }

      v125 = v372 & 0xFF000000FF00 | *(v395 + 32) | (*(v395 + 34) << 16) | (*(v395 + 36) << 32) | (*(v395 + 38) << 48);
      v126 = NANBitmap.Channel.channel.getter(v125, *&v69);
      if ((v126 & 0xFF00000000) == 0x300000000)
      {

        goto LABEL_255;
      }

      v127 = v126;
      v372 = v125;
      sub_100010520(v14, 0);
      v128 = v379;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v405 = v128;
      v131 = sub_10002D078(v392);
      v132 = *(v128 + 2);
      v133 = (v130 & 1) == 0;
      v134 = v132 + v133;
      if (__OFADD__(v132, v133))
      {
        goto LABEL_276;
      }

      v135 = v130;
      if (*(v128 + 3) < v134)
      {
        sub_1003112AC(v134, isUniquelyReferenced_nonNull_native);
        v136 = sub_10002D078(v392);
        if ((v135 & 1) != (v137 & 1))
        {
          goto LABEL_294;
        }

        v131 = v136;
        v138 = v405;
        if (v135)
        {
          goto LABEL_133;
        }

LABEL_131:
        *&v138[8 * (v131 >> 6) + 64] |= 1 << v131;
        *(*(v138 + 6) + v131) = v392;
        *(*(v138 + 7) + 8 * v131) = _swiftEmptyArrayStorage;
        v200 = *(v138 + 2);
        v151 = __OFADD__(v200, 1);
        v201 = v200 + 1;
        if (v151)
        {
          goto LABEL_286;
        }

        *(v138 + 2) = v201;
        goto LABEL_133;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v138 = v405;
        if ((v130 & 1) == 0)
        {
          goto LABEL_131;
        }
      }

      else
      {
        sub_10046BB8C();
        v138 = v405;
        if ((v135 & 1) == 0)
        {
          goto LABEL_131;
        }
      }

LABEL_133:
      v202 = *(v138 + 7);
      v203 = *(v202 + 8 * v131);
      v204 = swift_isUniquelyReferenced_nonNull_native();
      *(v202 + 8 * v131) = v203;
      if ((v204 & 1) == 0)
      {
        v203 = sub_1003A7518(0, *(v203 + 2) + 1, 1, v203);
        *(v202 + 8 * v131) = v203;
      }

      v379 = v138;
      v206 = *(v203 + 2);
      v205 = *(v203 + 3);
      if (v206 >= v205 >> 1)
      {
        *(v202 + 8 * v131) = sub_1003A7518((v205 > 1), v206 + 1, 1, v203);
      }

      v208 = v393;
      v207 = v394;
      sub_10002F75C(v124, v393, v394);

      v209 = *(v202 + 8 * v131);
      *(v209 + 16) = v206 + 1;
      v210 = v209 + 56 * v206;
      *(v210 + 32) = v127;
      *(v210 + 36) = BYTE4(v127);
      *(v210 + 37) = BYTE5(v127);
      *(v210 + 40) = v124;
      *(v210 + 48) = v208;
      *(v210 + 56) = v207;
      *(v210 + 64) = v388;
      *(v210 + 72) = v387;
      *(v210 + 80) = v70;
      v14 = sub_1002EA55C;
      goto LABEL_42;
    }

    v90 = v366;
    if (v67 == v66)
    {
      v91 = v386;
      if (v60)
      {
        if (*(v395 + 16))
        {
          v92 = *(v395 + 32);
          v93 = *(v395 + 34);
          v94 = *(v395 + 36);
          v95 = *(v395 + 38);

          v96 = v364 & 0xFF000000FF00 | v92 | (v93 << 16) | (v94 << 32) | (v95 << 48);
          v98 = NANBitmap.Channel.channel.getter(v96, v97);
          if ((v98 & 0xFF00000000) == 0x300000000)
          {
            goto LABEL_262;
          }

          v99 = v98;
          sub_10005D4F4(v91, v393, v394);
          sub_100010520(v374, 0);
          v100 = v379;
          v101 = swift_isUniquelyReferenced_nonNull_native();
          v403 = v100;
          v103 = sub_10002D078(v392);
          v104 = *(v100 + 2);
          v105 = (v102 & 1) == 0;
          v106 = v104 + v105;
          if (__OFADD__(v104, v105))
          {
            goto LABEL_282;
          }

          v107 = v102;
          if (*(v100 + 3) >= v106)
          {
            if ((v101 & 1) == 0)
            {
              sub_10046BB8C();
            }
          }

          else
          {
            sub_1003112AC(v106, v101);
            v108 = sub_10002D078(v392);
            if ((v107 & 1) != (v109 & 1))
            {
              goto LABEL_294;
            }

            v103 = v108;
          }

          v232 = v395;
          v233 = v403;
          if ((v107 & 1) == 0)
          {
            *&v403[8 * (v103 >> 6) + 64] |= 1 << v103;
            *(*(v233 + 6) + v103) = v392;
            *(*(v233 + 7) + 8 * v103) = _swiftEmptyArrayStorage;
            v234 = *(v233 + 2);
            v151 = __OFADD__(v234, 1);
            v235 = v234 + 1;
            if (v151)
            {
              goto LABEL_291;
            }

            *(v233 + 2) = v235;
          }

          v379 = v233;
          v236 = *(v233 + 7);
          v237 = *(v236 + 8 * v103);
          v238 = swift_isUniquelyReferenced_nonNull_native();
          *(v236 + 8 * v103) = v237;
          v364 = v96;
          if ((v238 & 1) == 0)
          {
            v237 = sub_1003A7518(0, *(v237 + 2) + 1, 1, v237);
            *(v236 + 8 * v103) = v237;
          }

          v240 = *(v237 + 2);
          v239 = *(v237 + 3);
          if (v240 >= v239 >> 1)
          {
            v237 = sub_1003A7518((v239 > 1), v240 + 1, 1, v237);
            *(v236 + 8 * v103) = v237;
          }

          v36 = v391;
          *(v237 + 2) = v240 + 1;
          v241 = &v237[56 * v240];
          *(v241 + 8) = v99;
          v241[36] = BYTE4(v99);
          v241[37] = BYTE5(v99);
          v243 = v393;
          v242 = v394;
          *(v241 + 5) = v91;
          *(v241 + 6) = v243;
          *(v241 + 7) = v242;
          v241[64] = v388;
          LODWORD(v242) = *&v402[3];
          *(v241 + 65) = *v402;
          *(v241 + 17) = v242;
          *(v241 + 9) = v387;
          *(v241 + 10) = v70;
          v244 = *(v232 + 16);
          if (!v244)
          {
            goto LABEL_283;
          }

          v245 = v14;
          v246 = swift_isUniquelyReferenced_nonNull_native();
          v405 = v232;
          if (!v246 || (v247 = v232, (v244 - 1) > *(v232 + 24) >> 1))
          {
            v247 = sub_100116D3C(v246, v244, 1, v232);
            v405 = v247;
          }

          sub_1003330FC(0, 1, 0);
          v249 = *(v247 + 2);
          if (v249)
          {
            v250 = v247 + 40;
            v251 = _swiftEmptyArrayStorage;
            v252 = v361;
            do
            {
              v252 = v252 & 0xFF000000FF00 | *(v250 - 8) | (*(v250 - 3) << 16) | (*(v250 - 4) << 32) | (*(v250 - 1) << 48);
              v254 = NANBitmap.Channel.channel.getter(v252, v248);
              if ((v254 & 0xFF00000000) != 0x300000000)
              {
                v255 = v254;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v251 = sub_100011C2C(0, *(v251 + 2) + 1, 1, v251);
                }

                v257 = *(v251 + 2);
                v256 = *(v251 + 3);
                if (v257 >= v256 >> 1)
                {
                  v251 = sub_100011C2C((v256 > 1), v257 + 1, 1, v251);
                }

                *(v251 + 2) = v257 + 1;
                v253 = &v251[8 * v257];
                *(v253 + 8) = v255;
                v253[36] = BYTE4(v255);
                v253[37] = BYTE5(v255);
              }

              v250 += 10;
              --v249;
            }

            while (v249);

            sub_100010520(v370, 0);
            v258 = v380;
            v259 = swift_isUniquelyReferenced_nonNull_native();
            v403 = v258;
            v260 = sub_10002D078(v392);
            v262 = v261;
            v263 = *(v258 + 2);
            v264 = (v261 & 1) == 0;
            if (__OFADD__(v263, v264))
            {
              goto LABEL_288;
            }

            v265 = v260;
            v266 = sub_1002E91C8(v259, v263 + v264);
            v267 = v403;
            v14 = v245;
            v380 = v403;
            if (v266)
            {
              v268 = sub_10002D078(v392);
              if ((v262 & 1) != (v269 & 1))
              {
                goto LABEL_294;
              }

              v265 = v268;
              v267 = v380;
            }

            v361 = v252;
            if ((v262 & 1) == 0)
            {
              sub_10002D508(v265, v392, _swiftEmptyArrayStorage, v267);
              v267 = v380;
            }

            v272 = *(v267 + 7);
            v273 = *(v272 + 8 * v265);
            v274 = swift_isUniquelyReferenced_nonNull_native();
            *(v272 + 8 * v265) = v273;
            if ((v274 & 1) == 0)
            {
              v273 = sub_1003A7678(0, *(v273 + 2) + 1, 1, v273);
              *(v272 + 8 * v265) = v273;
            }

            v276 = *(v273 + 2);
            v275 = *(v273 + 3);
            if (v276 >= v275 >> 1)
            {
              *(v272 + 8 * v265) = sub_1003A7678((v275 > 1), v276 + 1, 1, v273);
            }

            v278 = v393;
            v277 = v394;
            sub_10002F75C(v91, v393, v394);

            v279 = *(v272 + 8 * v265);
            *(v279 + 16) = v276 + 1;
            v280 = v279 + 56 * v276;
            *(v280 + 32) = v251;
            *(v280 + 40) = v91;
            *(v280 + 48) = v278;
            *(v280 + 56) = v277;
            *(v280 + 64) = v388;
            *(v280 + 72) = v387;
            *(v280 + 80) = v70;
            v370 = sub_1002EA55C;
            v36 = v391;
          }

          else
          {
            v271 = v393;
            v270 = v394;
            sub_10002F75C(v91, v393, v394);
            sub_10002F75C(v91, v271, v270);
          }

          v48 = v382;
          v374 = sub_1002EA55C;
          v45 = v390;
          goto LABEL_197;
        }

LABEL_262:

        v353 = v393;
        v352 = v394;
        sub_10002F75C(v91, v393, v394);

        sub_10002F75C(v91, v353, v352);
      }

      else
      {
        v351 = v393;
        v350 = v394;
        sub_10002F75C(v386, v393, v394);

        sub_10002F75C(v91, v351, v350);
      }

      v30 = v374;
      sub_100010520(v377, 0);
      sub_100010520(v376, 0);
      sub_100010520(v375, 0);
      v31 = v370;
      v28 = v368;
      v29 = v369;
      goto LABEL_21;
    }

    v139 = *(v395 + 16);
    v140 = v386;
    if ((v60 & 1) == 0)
    {
      v218 = v389;
      if (!v139)
      {
        v220 = _swiftEmptyArrayStorage;
LABEL_214:
        sub_100010520(v368, 0);
        v303 = v367;
        v304 = swift_isUniquelyReferenced_nonNull_native();
        v405 = v303;
        v306 = sub_10002D078(v392);
        v307 = *(v303 + 2);
        v308 = (v305 & 1) == 0;
        v309 = v307 + v308;
        if (__OFADD__(v307, v308))
        {
          goto LABEL_290;
        }

        v310 = v305;
        v14 = v218;
        if (*(v303 + 3) >= v309)
        {
          if ((v304 & 1) == 0)
          {
            sub_10046BBA0();
          }
        }

        else
        {
          sub_1003112C0(v309, v304);
          v311 = sub_10002D078(v392);
          if ((v310 & 1) != (v312 & 1))
          {
            goto LABEL_294;
          }

          v306 = v311;
        }

        v313 = v405;
        if ((v310 & 1) == 0)
        {
          *&v405[8 * (v306 >> 6) + 64] |= 1 << v306;
          *(*(v313 + 6) + v306) = v392;
          *(*(v313 + 7) + 8 * v306) = _swiftEmptyArrayStorage;
          v314 = *(v313 + 2);
          v151 = __OFADD__(v314, 1);
          v315 = v314 + 1;
          if (v151)
          {
            goto LABEL_293;
          }

          *(v313 + 2) = v315;
        }

        v367 = v313;
        v316 = *(v313 + 7);
        v317 = *(v316 + 8 * v306);
        v318 = swift_isUniquelyReferenced_nonNull_native();
        *(v316 + 8 * v306) = v317;
        if ((v318 & 1) == 0)
        {
          v317 = sub_1003A765C(0, *(v317 + 2) + 1, 1, v317);
          *(v316 + 8 * v306) = v317;
        }

        v320 = *(v317 + 2);
        v319 = *(v317 + 3);
        if (v320 >= v319 >> 1)
        {
          *(v316 + 8 * v306) = sub_1003A765C((v319 > 1), v320 + 1, 1, v317);
        }

        v322 = v393;
        v321 = v394;
        sub_10002F75C(v140, v393, v394);

        v323 = *(v316 + 8 * v306);
        *(v323 + 16) = v320 + 1;
        v324 = v323 + 56 * v320;
        *(v324 + 32) = v220;
        *(v324 + 40) = v140;
        *(v324 + 48) = v322;
        *(v324 + 56) = v321;
        *(v324 + 64) = v388;
        *(v324 + 72) = v387;
        *(v324 + 80) = v70;
        v54 = &v400;
        goto LABEL_41;
      }

      v219 = (v395 + 32);
      v220 = _swiftEmptyArrayStorage;
      while (2)
      {
        v221 = *v219++;
        v222 = NANBitmap.Band.bands.getter(v221);
        v223 = *(v222 + 16);
        v224 = *(v220 + 2);
        v225 = v224 + v223;
        if (__OFADD__(v224, v223))
        {
          goto LABEL_269;
        }

        v226 = v222;
        v227 = swift_isUniquelyReferenced_nonNull_native();
        if (v227 && v225 <= *(v220 + 3) >> 1)
        {
          if (!*(v226 + 16))
          {
LABEL_147:

            if (v223)
            {
              goto LABEL_270;
            }

LABEL_148:
            if (!--v139)
            {
              goto LABEL_214;
            }

            continue;
          }
        }

        else
        {
          if (v224 <= v225)
          {
            v228 = v224 + v223;
          }

          else
          {
            v228 = v224;
          }

          v220 = sub_100116C3C(v227, v228, 1, v220);
          if (!*(v226 + 16))
          {
            goto LABEL_147;
          }
        }

        break;
      }

      v229 = *(v220 + 2);
      if ((*(v220 + 3) >> 1) - v229 < v223)
      {
        goto LABEL_272;
      }

      memcpy(&v220[v229 + 32], (v226 + 32), v223);

      if (v223)
      {
        v230 = *(v220 + 2);
        v151 = __OFADD__(v230, v223);
        v231 = v230 + v223;
        if (v151)
        {
          goto LABEL_273;
        }

        *(v220 + 2) = v231;
      }

      goto LABEL_148;
    }

    if (v139)
    {
      v141 = v395 + 40;
      v142 = _swiftEmptyArrayStorage;
      do
      {
        v90 = v90 & 0xFF000000FF00 | *(v141 - 8) | (*(v141 - 6) << 16) | (*(v141 - 4) << 32) | (*(v141 - 2) << 48);
        v144 = NANBitmap.Channel.channel.getter(v90, *&v69);
        if ((v144 & 0xFF00000000) != 0x300000000)
        {
          v145 = v144;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_100011C2C(0, *(v142 + 2) + 1, 1, v142);
          }

          v147 = *(v142 + 2);
          v146 = *(v142 + 3);
          if (v147 >= v146 >> 1)
          {
            v142 = sub_100011C2C((v146 > 1), v147 + 1, 1, v142);
          }

          *(v142 + 2) = v147 + 1;
          v143 = &v142[8 * v147];
          *(v143 + 8) = v145;
          v143[36] = BYTE4(v145);
          v143[37] = BYTE5(v145);
        }

        v141 += 10;
        --v139;
      }

      while (v139);
    }

    else
    {
      v142 = _swiftEmptyArrayStorage;
    }

    sub_100010520(v369, 0);
    v281 = v380;
    v282 = swift_isUniquelyReferenced_nonNull_native();
    v405 = v281;
    v284 = sub_10002D078(v392);
    v285 = *(v281 + 2);
    v286 = (v283 & 1) == 0;
    v287 = v285 + v286;
    if (__OFADD__(v285, v286))
    {
      goto LABEL_289;
    }

    v288 = v283;
    if (*(v281 + 3) >= v287)
    {
      if ((v282 & 1) == 0)
      {
        sub_10046BBB4();
      }
    }

    else
    {
      sub_1003112D4(v287, v282);
      v289 = sub_10002D078(v392);
      if ((v288 & 1) != (v290 & 1))
      {
        goto LABEL_294;
      }

      v284 = v289;
    }

    v291 = v405;
    if ((v288 & 1) == 0)
    {
      *&v405[8 * (v284 >> 6) + 64] |= 1 << v284;
      *(*(v291 + 6) + v284) = v392;
      *(*(v291 + 7) + 8 * v284) = _swiftEmptyArrayStorage;
      v292 = *(v291 + 2);
      v151 = __OFADD__(v292, 1);
      v293 = v292 + 1;
      if (v151)
      {
        goto LABEL_292;
      }

      *(v291 + 2) = v293;
    }

    v366 = v90;
    v380 = v291;
    v294 = *(v291 + 7);
    v295 = *(v294 + 8 * v284);
    v296 = swift_isUniquelyReferenced_nonNull_native();
    *(v294 + 8 * v284) = v295;
    if ((v296 & 1) == 0)
    {
      v295 = sub_1003A7678(0, *(v295 + 2) + 1, 1, v295);
      *(v294 + 8 * v284) = v295;
    }

    v298 = *(v295 + 2);
    v297 = *(v295 + 3);
    if (v298 >= v297 >> 1)
    {
      *(v294 + 8 * v284) = sub_1003A7678((v297 > 1), v298 + 1, 1, v295);
    }

    v300 = v393;
    v299 = v394;
    sub_10002F75C(v140, v393, v394);

    v301 = *(v294 + 8 * v284);
    *(v301 + 16) = v298 + 1;
    v302 = v301 + 56 * v298;
    *(v302 + 32) = v142;
    *(v302 + 40) = v140;
    *(v302 + 48) = v300;
    *(v302 + 56) = v299;
    *(v302 + 64) = v388;
    *(v302 + 72) = v387;
    *(v302 + 80) = v70;
    v54 = v401;
LABEL_41:
    *(v54 - 32) = sub_1002EA55C;
LABEL_42:
    v45 = v390;
    v36 = v391;
    v55 = v385;
LABEL_43:
    v48 = v382;
LABEL_44:
    v49 = v55 + 1;
    if (v49 == v381)
    {
      goto LABEL_232;
    }
  }

  v14 = v389;
  if (v65 == v64)
  {
    if (v67 == v66)
    {
      goto LABEL_246;
    }

    if (!v60)
    {
      v342 = v386;
      v344 = v393;
      v343 = v394;
      sub_10002F75C(v386, v393, v394);

      sub_10002F75C(v342, v344, v343);

LABEL_252:

      v31 = v370;
      v347 = v368;
      v29 = v369;
      sub_100010520(v377, 0);
      sub_100010520(v376, 0);
      sub_100010520(v375, 0);
      v28 = v347;
      goto LABEL_259;
    }

    v71 = v386;
    if (!*(v395 + 16))
    {

LABEL_251:

      v346 = v393;
      v345 = v394;
      sub_10002F75C(v71, v393, v394);

      sub_10002F75C(v71, v346, v345);

      goto LABEL_252;
    }

    v72 = *(v395 + 32);
    v73 = *(v395 + 34);
    v74 = *(v395 + 36);
    v75 = *(v395 + 38);

    v76 = v371 & 0xFF000000FF00 | v72 | (v73 << 16) | (v74 << 32) | (v75 << 48);
    v78 = NANBitmap.Channel.channel.getter(v76, v77);
    if ((v78 & 0xFF00000000) == 0x300000000)
    {
      goto LABEL_251;
    }

    v79 = v78;
    sub_10005D4F4(v71, v393, v394);
    sub_100010520(v376, 0);
    v80 = v384;
    v81 = swift_isUniquelyReferenced_nonNull_native();
    v405 = v80;
    v83 = sub_10002D078(v392);
    v84 = *(v80 + 2);
    v85 = (v82 & 1) == 0;
    v86 = v84 + v85;
    if (__OFADD__(v84, v85))
    {
      goto LABEL_278;
    }

    v87 = v82;
    if (*(v80 + 3) >= v86)
    {
      if ((v81 & 1) == 0)
      {
        sub_10046BBC8();
      }
    }

    else
    {
      sub_1003112E8(v86, v81);
      v88 = sub_10002D078(v392);
      if ((v87 & 1) != (v89 & 1))
      {
        goto LABEL_294;
      }

      v83 = v88;
    }

    v148 = v395;
    v149 = v405;
    if ((v87 & 1) == 0)
    {
      *&v405[8 * (v83 >> 6) + 64] |= 1 << v83;
      *(*(v149 + 6) + v83) = v392;
      *(*(v149 + 7) + 8 * v83) = _swiftEmptyArrayStorage;
      v150 = *(v149 + 2);
      v151 = __OFADD__(v150, 1);
      v152 = v150 + 1;
      if (v151)
      {
        goto LABEL_285;
      }

      *(v149 + 2) = v152;
    }

    v384 = v149;
    v153 = *(v149 + 7);
    v154 = *(v153 + 8 * v83);
    v155 = swift_isUniquelyReferenced_nonNull_native();
    *(v153 + 8 * v83) = v154;
    v371 = v76;
    if ((v155 & 1) == 0)
    {
      v154 = sub_1003A74FC(0, *(v154 + 2) + 1, 1, v154);
      *(v153 + 8 * v83) = v154;
    }

    v157 = *(v154 + 2);
    v156 = *(v154 + 3);
    if (v157 >= v156 >> 1)
    {
      v154 = sub_1003A74FC((v156 > 1), v157 + 1, 1, v154);
      *(v153 + 8 * v83) = v154;
    }

    v45 = v390;
    *(v154 + 2) = v157 + 1;
    v158 = &v154[56 * v157];
    *(v158 + 8) = v79;
    v158[36] = BYTE4(v79);
    v158[37] = BYTE5(v79);
    v160 = v393;
    v159 = v394;
    *(v158 + 5) = v71;
    *(v158 + 6) = v160;
    *(v158 + 7) = v159;
    v158[64] = v388;
    LODWORD(v159) = *(&v403 + 3);
    *(v158 + 65) = v403;
    *(v158 + 17) = v159;
    *(v158 + 9) = v387;
    *(v158 + 10) = v70;
    v161 = *(v148 + 16);
    if (!v161)
    {
      goto LABEL_279;
    }

    v162 = swift_isUniquelyReferenced_nonNull_native();
    if (!v162 || (v163 = v148, (v161 - 1) > *(v148 + 24) >> 1))
    {
      v163 = sub_100116D3C(v162, v161, 1, v148);
    }

    v164 = *(v163 + 2);
    memmove(v163 + 32, v163 + 42, 10 * v164 - 10);
    v166 = v164 - 1;
    *(v163 + 2) = v164 - 1;
    if (v164 == 1)
    {
      v212 = v393;
      v211 = v394;
      sub_10002F75C(v71, v393, v394);
      sub_10002F75C(v71, v212, v211);

      v376 = sub_1002EA55C;
      v36 = v391;
      v48 = v382;
LABEL_197:
      v55 = v385;
      goto LABEL_44;
    }

    if (v164 < 2)
    {
      goto LABEL_280;
    }

    v167 = v14;
    v168 = v163 + 40;
    v169 = _swiftEmptyArrayStorage;
    v170 = v365;
    do
    {
      v170 = v170 & 0xFF000000FF00 | *(v168 - 8) | (*(v168 - 3) << 16) | (*(v168 - 4) << 32) | (*(v168 - 1) << 48);
      v172 = NANBitmap.Channel.channel.getter(v170, v165);
      if ((v172 & 0xFF00000000) != 0x300000000)
      {
        v173 = v172;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = sub_100011C2C(0, *(v169 + 2) + 1, 1, v169);
        }

        v175 = *(v169 + 2);
        v174 = *(v169 + 3);
        if (v175 >= v174 >> 1)
        {
          v169 = sub_100011C2C((v174 > 1), v175 + 1, 1, v169);
        }

        *(v169 + 2) = v175 + 1;
        v171 = &v169[8 * v175];
        *(v171 + 8) = v173;
        v171[36] = BYTE4(v173);
        v171[37] = BYTE5(v173);
      }

      v168 += 10;
      --v166;
    }

    while (v166);
    v365 = v170;

    sub_100010520(v375, 0);
    v176 = v380;
    v177 = swift_isUniquelyReferenced_nonNull_native();
    v405 = v176;
    v178 = sub_10002D078(v392);
    v180 = v179;
    v181 = *(v176 + 2);
    v182 = (v179 & 1) == 0;
    if (__OFADD__(v181, v182))
    {
      goto LABEL_281;
    }

    v183 = v178;
    v184 = sub_1002E91C8(v177, v181 + v182);
    v185 = v405;
    v14 = v167;
    v380 = v405;
    if (v184)
    {
      v186 = sub_10002D078(v392);
      if ((v180 & 1) != (v187 & 1))
      {
        goto LABEL_294;
      }

      v183 = v186;
      v185 = v380;
    }

    if ((v180 & 1) == 0)
    {
      sub_10002D508(v183, v392, _swiftEmptyArrayStorage, v185);
      v185 = v380;
    }

    v213 = *(v185 + 7);
    v214 = *(v213 + 8 * v183);
    v215 = swift_isUniquelyReferenced_nonNull_native();
    *(v213 + 8 * v183) = v214;
    if ((v215 & 1) == 0)
    {
      v214 = sub_1003A7678(0, *(v214 + 2) + 1, 1, v214);
      *(v213 + 8 * v183) = v214;
    }

    v217 = *(v214 + 2);
    v216 = *(v214 + 3);
    if (v217 >= v216 >> 1)
    {
      *(v213 + 8 * v183) = sub_1003A7678((v216 > 1), v217 + 1, 1, v214);
    }

    v51 = v393;
    v50 = v394;
    sub_10002F75C(v71, v393, v394);

    v52 = *(v213 + 8 * v183);
    *(v52 + 16) = v217 + 1;
    v53 = v52 + 56 * v217;
    *(v53 + 32) = v169;
    *(v53 + 40) = v71;
    *(v53 + 48) = v51;
    *(v53 + 56) = v50;
    *(v53 + 64) = v388;
    *(v53 + 72) = v387;
    *(v53 + 80) = v70;
    v375 = sub_1002EA55C;
    v54 = &v404;
    goto LABEL_41;
  }

  if (v67 == v66)
  {
    goto LABEL_246;
  }

  if (!v60 || *(v395 + 16) != 1)
  {
LABEL_247:
    v124 = v386;
LABEL_248:
    v341 = v393;
    v340 = v394;
    sub_10002F75C(v124, v393, v394);

    sub_10002F75C(v124, v341, v340);

    goto LABEL_256;
  }

  v110 = v373 & 0xFF000000FF00 | *(v395 + 32) | (*(v395 + 34) << 16) | (*(v395 + 36) << 32) | (*(v395 + 38) << 48);
  v111 = NANBitmap.Channel.channel.getter(v110, *&v69);
  if ((v111 & 0xFF00000000) != 0x300000000)
  {
    v112 = v111;
    v373 = v110;
    sub_100010520(v377, 0);
    v113 = v384;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v405 = v113;
    v116 = sub_10002D078(v392);
    v117 = *(v113 + 2);
    v118 = (v115 & 1) == 0;
    v119 = v117 + v118;
    if (__OFADD__(v117, v118))
    {
      goto LABEL_277;
    }

    v120 = v115;
    if (*(v113 + 3) < v119)
    {
      sub_1003112E8(v119, v114);
      v121 = sub_10002D078(v392);
      if ((v120 & 1) != (v122 & 1))
      {
        goto LABEL_294;
      }

      v116 = v121;
      v123 = v405;
      if (v120)
      {
        goto LABEL_124;
      }

LABEL_122:
      *&v123[8 * (v116 >> 6) + 64] |= 1 << v116;
      *(*(v123 + 6) + v116) = v392;
      *(*(v123 + 7) + 8 * v116) = _swiftEmptyArrayStorage;
      v188 = *(v123 + 2);
      v151 = __OFADD__(v188, 1);
      v189 = v188 + 1;
      if (v151)
      {
        goto LABEL_284;
      }

      *(v123 + 2) = v189;
      goto LABEL_124;
    }

    if (v114)
    {
      v123 = v405;
      if ((v115 & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
      sub_10046BBC8();
      v123 = v405;
      if ((v120 & 1) == 0)
      {
        goto LABEL_122;
      }
    }

LABEL_124:
    v384 = v123;
    v190 = *(v123 + 7);
    v191 = *(v190 + 8 * v116);
    v192 = swift_isUniquelyReferenced_nonNull_native();
    *(v190 + 8 * v116) = v191;
    if ((v192 & 1) == 0)
    {
      v191 = sub_1003A74FC(0, *(v191 + 2) + 1, 1, v191);
      *(v190 + 8 * v116) = v191;
    }

    v194 = *(v191 + 2);
    v193 = *(v191 + 3);
    if (v194 >= v193 >> 1)
    {
      *(v190 + 8 * v116) = sub_1003A74FC((v193 > 1), v194 + 1, 1, v191);
    }

    v195 = v386;
    v196 = v393;
    v197 = v394;
    sub_10002F75C(v386, v393, v394);

    v198 = *(v190 + 8 * v116);
    *(v198 + 16) = v194 + 1;
    v199 = v198 + 56 * v194;
    *(v199 + 32) = v112;
    *(v199 + 36) = BYTE4(v112);
    *(v199 + 37) = BYTE5(v112);
    *(v199 + 40) = v195;
    *(v199 + 48) = v196;
    *(v199 + 56) = v197;
    *(v199 + 64) = v388;
    *(v199 + 72) = v387;
    *(v199 + 80) = v70;
    v377 = sub_1002EA55C;
    v45 = v390;
    v36 = v391;
    v55 = v385;
    v14 = v389;
    goto LABEL_43;
  }

  v124 = v386;
LABEL_255:
  v349 = v393;
  v348 = v394;
  sub_10002F75C(v124, v393, v394);

  sub_10002F75C(v124, v349, v348);

LABEL_256:

LABEL_257:

  sub_100010520(v377, 0);
  sub_100010520(v376, 0);
  sub_100010520(v375, 0);
LABEL_258:
  v31 = v370;
  v28 = v368;
  v29 = v369;
LABEL_259:
  v30 = v374;
LABEL_21:
  sub_100010520(v28, 0);
  sub_100010520(v29, 0);
  sub_100010520(v30, 0);
  sub_100010520(v31, 0);
  return sub_100010520(v14, 0);
}

uint64_t sub_1002E6FA4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 144) = -1;
  *(a2 + 136) = 0;
  *(a2 + 152) = &_swiftEmptySetSingleton;
  v3 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = a1[4];
  v4 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v4;
  sub_10028676C(a1, &v6);
  sub_1002EA068(0, 0, 5, 0, 0);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 5;
  type metadata accessor for P2PTimer(0);
  type metadata accessor for NANPeer.Service(0);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return variable initialization expression of AWDLPeer.lastUpdated();
}

uint64_t sub_1002E7050@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NANPeer.Service(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v21 - v9);
  v11 = *(v2 + *(type metadata accessor for NANPeer(0) + 104));
  if (!*(v11 + 16))
  {
    goto LABEL_6;
  }

  v12 = sub_10007CCC8(a1);
  if ((v13 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1002E90F8(*(v11 + 56) + *(v6 + 72) * v12, v8, type metadata accessor for NANPeer.Service);
  sub_1002E9160(v8, v10, type metadata accessor for NANPeer.Service);
  v14 = *v10;
  v15 = v10[1];
  v16 = NANServiceName.hash.getter();
  v18 = v17;
  LOBYTE(v14) = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v14, v15, v16, v17);
  sub_1000124C8(v16, v18);
  if ((v14 & 1) == 0)
  {
    sub_1002E9098(v10, type metadata accessor for NANPeer.Service);
LABEL_6:
    v19 = 1;
    return (*(v6 + 56))(a2, v19, 1, v5);
  }

  sub_1002E9160(v10, a2, type metadata accessor for NANPeer.Service);
  v19 = 0;
  return (*(v6 + 56))(a2, v19, 1, v5);
}

uint64_t sub_1002E7248(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  type metadata accessor for NANPeer.Service(0);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = (&v20 - v7);
  result = type metadata accessor for NANPeer(0);
  v10 = *(v3 + *(result + 104));
  if (*(v10 + 16))
  {
    result = sub_10007CCC8(a3);
    if (v11)
    {
      v12 = result;
      v13 = *(v10 + 36);
      sub_1002CEDEC(v8, result, v13, 0, v10);
      v14 = *v8;
      v15 = v8[1];
      sub_10000AB0C(*v8, v15);
      sub_1002E9098(v8, type metadata accessor for NANPeer.Service);
      v16 = NANServiceName.hash.getter();
      v18 = v17;
      v19 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v14, v15, v16, v17);
      sub_1000124C8(v14, v15);
      result = sub_1000124C8(v16, v18);
      if (v19)
      {
        sub_10046E8E4(v6, v12, v13);
        return sub_1002E9098(v6, type metadata accessor for NANPeer.Service);
      }
    }
  }

  return result;
}

void sub_1002E73E8(uint64_t a1)
{
  if (*(v1 + 16) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *v1;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + 24));
  Hasher._combine(_:)(*(v1 + 32));
  v3 = *(v1 + 40);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
}

void sub_1002E7488(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  Hasher._combine(_:)(v5);
  if (v5)
  {
    v6 = (v4 + 37);
    do
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 1);
      v9 = *v6;
      v6 += 8;
      Channel.hash(into:)(v3, v7 | (v8 << 32) | (v9 << 40));
      --v5;
    }

    while (v5);
  }

  v10 = *(v2 + 32);
  v11 = *(v2 + 5);
  v12 = v2[6];
  if (*(v2 + 3) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *(v2 + 4);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v13);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  v14 = 0.0;
  if (v12 != 0.0)
  {
    v14 = v12;
  }

  Hasher._combine(_:)(*&v14);
}

void sub_1002E7574(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(0x801004u >> (8 * v5));
      --v3;
    }

    while (v3);
  }

  v6 = *(v1 + 32);
  v7 = *(v1 + 5);
  v8 = v1[6];
  if (*(v1 + 3) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v9 = *(v1 + 4);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v9);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  v10 = 0.0;
  if (v8 != 0.0)
  {
    v10 = v8;
  }

  Hasher._combine(_:)(*&v10);
}

void sub_1002E765C(uint64_t a1)
{
  Channel.hash(into:)(a1, *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40));
  v2 = *(v1 + 32);
  v3 = *(v1 + 5);
  v4 = *(v1 + 6);
  if (*(v1 + 3) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v1 + 4);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  v6 = 0.0;
  if (v4 != 0.0)
  {
    v6 = v4;
  }

  Hasher._combine(_:)(*&v6);
}

Swift::Int sub_1002E7724()
{
  Hasher.init(_seed:)();
  sub_1002E73E8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002E7768(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1002E73E8(v2);
  return Hasher._finalize()();
}

BOOL sub_1002E77A4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1002E9ABC(v7, v8);
}

Swift::Int sub_1002E7804(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1002E7868(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

BOOL sub_1002E7910(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = *(a1 + 3);
  v13[0] = *(a1 + 1);
  v13[1] = v6;
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 3);
  v13[2] = *(a1 + 5);
  v14[0] = v8;
  v10 = *(a2 + 5);
  v14[1] = v9;
  v14[2] = v10;
  return (a5(v5, v7, a3, a4) & 1) != 0 && sub_1002E9ABC(v13, v14);
}

Swift::Int sub_1002E7984()
{
  Hasher.init(_seed:)();
  sub_1002E765C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002E79C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1002E765C(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1002E7A00()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  sub_1002E97C0(v7, v1);
  sub_1002E9508(v7, v2);
  sub_1002E9228(v7, v3);
  sub_1002E97C0(v7, v4);
  return Hasher._finalize()();
}

void sub_1002E7A90(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  Hasher._combine(_:)(*v1);
  sub_1002E97C0(a1, v3);
  sub_1002E9508(a1, v4);
  sub_1002E9228(a1, v5);
  sub_1002E97C0(a1, v6);
}

Swift::Int sub_1002E7B04(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  sub_1002E97C0(v8, v2);
  sub_1002E9508(v8, v3);
  sub_1002E9228(v8, v4);
  sub_1002E97C0(v8, v5);
  return Hasher._finalize()();
}

uint64_t sub_1002E7B90(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[3];
  v2 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[2];
  v7 = a1[2];
  if (sub_1002E7EC8(a1[1], a2[1], sub_1002E9DB4, sub_1002E9DEC) & 1) != 0 && (sub_1002E7D88(v7, v6, sub_100467AF8) & 1) != 0 && (sub_1002E7D88(v3, v5, sub_10046743C))
  {
    v8 = sub_1002E7EC8(v2, v4, sub_1002E9A54, sub_1002E9A8C);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_1002E7CA4()
{
  result = qword_100595918;
  if (!qword_100595918)
  {
    result = swift_getWitnessTable(aU_8, &type metadata for NANPeer.Availability, v0, v1);
    atomic_store(result, &qword_100595918);
  }

  return result;
}

uint64_t sub_1002E7D40(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1002E7D88(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
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

  v5 = 0;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v5 << 6);
    v14 = *(*(v3 + 56) + 8 * v13);
    sub_10002D078(*(*(v3 + 48) + v13));
    if (v15)
    {

      v17 = a3(v16, v14);

      if (v17)
      {
        continue;
      }
    }

    return 0;
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(v3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002E7EC8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *, uint64_t *), void (*a4)(__int128 *))
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v146 = (v7 + 63) >> 6;
  do
  {
LABEL_6:
    if (!v9)
    {
      v11 = v5;
      while (1)
      {
        v5 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v5 >= v146)
        {
          return 1;
        }

        v12 = *(v6 + 8 * v5);
        ++v11;
        if (v12)
        {
          v10 = __clz(__rbit64(v12));
          v150 = (v12 - 1) & v12;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
    }

    v10 = __clz(__rbit64(v9));
    v150 = (v9 - 1) & v9;
LABEL_13:
    v13 = v10 | (v5 << 6);
    v14 = a1;
    v15 = *(*(a1 + 56) + 8 * v13);
    v16 = a2;
    v17 = sub_10002D078(*(*(a1 + 48) + v13));
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = *(*(v16 + 56) + 8 * v17);
    v20 = *(v19 + 16);
    if (v20 != *(v15 + 16))
    {
      return 0;
    }

    a2 = v16;
    if (v20)
    {
      v21 = v19 == v15;
    }

    else
    {
      v21 = 1;
    }

    a1 = v14;
    v9 = v150;
  }

  while (v21);
  v142 = v14;
  v143 = v16;
  v148 = a4;

  if (!*(v19 + 16))
  {
    goto LABEL_199;
  }

  v22 = 0;
  v147 = v20 - 1;
  v23 = 32;
  v145 = v15;
  while (1)
  {
    v24 = *(v19 + v23);
    v25 = *(v19 + v23 + 16);
    v26 = *(v19 + v23 + 32);
    v167 = *(v19 + v23 + 48);
    v165 = v25;
    v166 = v26;
    v164 = v24;
    if (v22 >= *(v15 + 16))
    {
      goto LABEL_200;
    }

    v28 = *(v15 + v23 + 16);
    v27 = *(v15 + v23 + 32);
    v29 = *(v15 + v23);
    v171 = *(v15 + v23 + 48);
    v169 = v28;
    v170 = v27;
    v168 = v29;
    if (v164 != v29 || (0x801004u >> (8 * BYTE4(v164))) != (0x801004u >> (8 * BYTE4(v168))))
    {
      goto LABEL_196;
    }

    if (BYTE5(v164) <= 3u)
    {
      if (BYTE5(v164) == 2)
      {
        if (BYTE5(v168) != 2)
        {
          goto LABEL_196;
        }

        goto LABEL_42;
      }

      if (BYTE5(v164) == 3)
      {
        if (BYTE5(v168) != 3)
        {
          goto LABEL_196;
        }

        goto LABEL_42;
      }
    }

    else
    {
      switch(BYTE5(v164))
      {
        case 4u:
          if (BYTE5(v168) != 4)
          {
            goto LABEL_196;
          }

          goto LABEL_42;
        case 5u:
          if (BYTE5(v168) != 5)
          {
            goto LABEL_196;
          }

          goto LABEL_42;
        case 6u:
          if (BYTE5(v168) != 6)
          {
            goto LABEL_196;
          }

          goto LABEL_42;
      }
    }

    if (BYTE5(v168) - 2 < 5 || ((BYTE5(v168) ^ BYTE5(v164)) & 1) != 0)
    {
      goto LABEL_196;
    }

LABEL_42:
    v30 = *(&v164 + 1);
    v31 = v167;
    v32 = *(&v169 + 1);
    v33 = v171;
    v155 = *(&v164 + 1);
    v156 = v165;
    v151 = *(&v170 + 1);
    v152 = *(&v166 + 1);
    v153 = v170;
    v154 = v166;
    if (*(&v165 + 1) >> 60 == 15)
    {
      if (*(&v169 + 1) >> 60 != 15)
      {
        goto LABEL_193;
      }

      a3(&v164, &v161);
      a3(&v168, &v161);
      a3(&v164, &v161);
      a3(&v168, &v161);
      goto LABEL_185;
    }

    if (*(&v169 + 1) >> 60 == 15)
    {
LABEL_193:
      v121 = *(&v169 + 1);
      v122 = *(&v165 + 1);
      v123 = *(&v168 + 1);
      v124 = v165;
      v125 = v169;
      a3(&v164, &v161);
      a3(&v168, &v161);
      sub_10002F75C(v30, v124, v122);
      sub_10002F75C(v123, v125, v121);
LABEL_196:

      return 0;
    }

    if (WORD4(v164) != WORD4(v168))
    {
      goto LABEL_194;
    }

    v34 = *(&v165 + 1) >> 62;
    v35 = *(&v169 + 1) >> 62;
    if (*(&v165 + 1) >> 62 == 3)
    {
      v36 = 0;
      if (v165 == __PAIR128__(0xC000000000000000, 0) && *(&v169 + 1) >> 62 == 3)
      {
        v36 = 0;
        if (v169 == __PAIR128__(0xC000000000000000, 0))
        {
          v37 = *(&v168 + 1);
          a3(&v164, &v161);
          a3(&v168, &v161);
          a3(&v164, &v161);
          a3(&v168, &v161);
          v38 = v37;
          v39 = 0;
          v40 = 0xC000000000000000;
          goto LABEL_84;
        }
      }

LABEL_67:
      if (v35 <= 1)
      {
        goto LABEL_68;
      }

      goto LABEL_55;
    }

    if (v34 <= 1)
    {
      if (!v34)
      {
        v36 = BYTE14(v165);
        if (v35 <= 1)
        {
          goto LABEL_68;
        }

        goto LABEL_55;
      }

      LODWORD(v36) = DWORD1(v165) - v165;
      if (__OFSUB__(DWORD1(v165), v165))
      {
        goto LABEL_203;
      }

      v36 = v36;
      goto LABEL_67;
    }

    if (v34 == 2)
    {
      v46 = *(v165 + 16);
      v45 = *(v165 + 24);
      v43 = __OFSUB__(v45, v46);
      v36 = v45 - v46;
      if (v43)
      {
        goto LABEL_204;
      }

      goto LABEL_67;
    }

    v36 = 0;
    if (v35 <= 1)
    {
LABEL_68:
      if (v35)
      {
        LODWORD(v44) = DWORD1(v169) - v169;
        if (__OFSUB__(DWORD1(v169), v169))
        {
          goto LABEL_201;
        }

        v44 = v44;
      }

      else
      {
        v44 = BYTE14(v169);
      }

      goto LABEL_72;
    }

LABEL_55:
    if (v35 != 2)
    {
      if (v36)
      {
        goto LABEL_194;
      }

LABEL_83:
      v54 = *(&v168 + 1);
      v55 = v169;
      a3(&v164, &v161);
      a3(&v168, &v161);
      a3(&v164, &v161);
      a3(&v168, &v161);
      v38 = v54;
      v40 = *(&v55 + 1);
      v39 = v55;
LABEL_84:
      sub_10002F75C(v38, v39, v40);
      v15 = v145;
      goto LABEL_185;
    }

    v42 = *(v169 + 16);
    v41 = *(v169 + 24);
    v43 = __OFSUB__(v41, v42);
    v44 = v41 - v42;
    if (v43)
    {
      goto LABEL_202;
    }

LABEL_72:
    if (v36 != v44)
    {
LABEL_194:
      v126 = v169;
      v127 = *(&v168 + 1);
      a3(&v164, &v161);
      a3(&v168, &v161);
      a3(&v164, &v161);
      a3(&v168, &v161);
      sub_10002F75C(v127, v126, v32);
LABEL_195:
      sub_10002F75C(v155, v156, *(&v156 + 1));
      v148(&v168);
      v148(&v164);
      goto LABEL_196;
    }

    if (v36 < 1)
    {
      goto LABEL_83;
    }

    v144 = v169;
    if (v34 <= 1)
    {
      if (!v34)
      {
        LODWORD(__s1[0]) = v165;
        WORD2(__s1[0]) = WORD2(v165);
        *(__s1 + 6) = *(&v165 + 6);
        if (v35)
        {
          v140 = *(&v168 + 1);
          if (v35 == 1)
          {
            v133 = ((v169 >> 32) - v169);
            if (v169 >> 32 < v169)
            {
              goto LABEL_208;
            }

            v47 = v169;
            a3(&v164, &v161);
            a3(&v168, &v161);
            a3(&v164, &v161);
            a3(&v168, &v161);
            v48 = *(&v144 + 1);
            v49 = __DataStorage._bytes.getter();
            if (!v49)
            {
              goto LABEL_239;
            }

            v50 = v49;
            v51 = __DataStorage._offset.getter();
            if (__OFSUB__(v47, v51))
            {
              goto LABEL_213;
            }

            v52 = (v47 - v51 + v50);
            v53 = __DataStorage._length.getter();
            if (!v52)
            {
              goto LABEL_238;
            }

LABEL_122:
            if (v53 >= v133)
            {
              v91 = v133;
            }

            else
            {
              v91 = v53;
            }

            v92 = v52;
          }

          else
          {
            v82 = *(v169 + 16);
            v138 = *(v169 + 24);
            v48 = *(&v169 + 1);
            a3(&v164, &v161);
            a3(&v168, &v161);
            a3(&v164, &v161);
            a3(&v168, &v161);
            v83 = __DataStorage._bytes.getter();
            if (v83)
            {
              v84 = v83;
              v85 = __DataStorage._offset.getter();
              if (__OFSUB__(v82, v85))
              {
                goto LABEL_218;
              }

              v86 = v82;
              v69 = (v82 - v85 + v84);
              v48 = *(&v144 + 1);
            }

            else
            {
              v86 = v82;
              v69 = 0;
            }

            v107 = &v138[-v86];
            if (__OFSUB__(v138, v86))
            {
              goto LABEL_210;
            }

            v108 = __DataStorage._length.getter();
            if (!v69)
            {
              goto LABEL_237;
            }

LABEL_143:
            if (v108 >= v107)
            {
              v91 = v107;
            }

            else
            {
              v91 = v108;
            }

            v92 = v69;
          }

          v72 = memcmp(__s1, v92, v91);
          v73 = v140;
LABEL_148:
          sub_10002F75C(v73, v144, v48);
          v15 = v145;
          if (v72)
          {
            goto LABEL_195;
          }

          goto LABEL_185;
        }

LABEL_100:
        __s2 = v169;
        v158 = DWORD2(v169);
        v159 = WORD6(v169);
        v48 = *(&v169 + 1);
        v70 = BYTE14(v169);
        v71 = *(&v168 + 1);
        a3(&v164, &v161);
        a3(&v168, &v161);
        a3(&v164, &v161);
        a3(&v168, &v161);
        v72 = memcmp(__s1, &__s2, v70);
        v73 = v71;
        goto LABEL_148;
      }

      v141 = *(&v168 + 1);
      v61 = v165;
      if (v165 > v165 >> 32)
      {
        goto LABEL_205;
      }

      a3(&v164, &v161);
      a3(&v168, &v161);
      a3(&v164, &v161);
      a3(&v168, &v161);
      v62 = __DataStorage._bytes.getter();
      if (v62)
      {
        v135 = v62;
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v61, v63))
        {
          goto LABEL_207;
        }

        v60 = &v135[v61 - v63];
      }

      else
      {
        v60 = 0;
      }

      __DataStorage._length.getter();
      if (v35 != 2)
      {
        v74 = *(&v144 + 1);
        v75 = v144;
        if (v35 != 1)
        {
          v161 = v144;
          v162 = DWORD2(v144);
          v163 = WORD6(v144);
          v15 = v145;
          if (!v60)
          {
            goto LABEL_232;
          }

          goto LABEL_135;
        }

        if (v144 >> 32 < v144)
        {
          goto LABEL_216;
        }

        v80 = __DataStorage._bytes.getter();
        if (v80)
        {
          v130 = v80;
          v81 = __DataStorage._offset.getter();
          if (__OFSUB__(v144, v81))
          {
            goto LABEL_223;
          }

          v79 = (v144 - v81 + v130);
        }

        else
        {
          v79 = 0;
        }

        v15 = v145;
        v119 = __DataStorage._length.getter();
        if (v119 >= (v144 >> 32) - v144)
        {
          v113 = (v144 >> 32) - v144;
        }

        else
        {
          v113 = v119;
        }

        v114 = v60;
        if (!v60)
        {
          goto LABEL_234;
        }

        if (!v79)
        {
          goto LABEL_233;
        }

LABEL_180:
        if (v114 == v79)
        {
LABEL_181:
          sub_10002F75C(v141, v144, *(&v144 + 1));
          goto LABEL_185;
        }

        v117 = v113;
        v118 = v79;
        goto LABEL_183;
      }

      v129 = *(v144 + 24);
      v132 = *(v144 + 16);
      v98 = __DataStorage._bytes.getter();
      v139 = v60;
      if (v98)
      {
        v99 = v98;
        v100 = __DataStorage._offset.getter();
        v101 = v132;
        if (__OFSUB__(v132, v100))
        {
          goto LABEL_221;
        }

        v97 = (v132 - v100 + v99);
      }

      else
      {
        v97 = 0;
        v101 = v132;
      }

      v115 = v129 - v101;
      if (__OFSUB__(v129, v101))
      {
        goto LABEL_217;
      }

      v116 = __DataStorage._length.getter();
      if (v116 >= v115)
      {
        v111 = v115;
      }

      else
      {
        v111 = v116;
      }

      if (!v139)
      {
        goto LABEL_236;
      }

      v15 = v145;
      if (!v97)
      {
        goto LABEL_235;
      }

      goto LABEL_172;
    }

    if (v34 != 2)
    {
      break;
    }

    v141 = *(&v168 + 1);
    v56 = *(v165 + 16);
    a3(&v164, &v161);
    a3(&v168, &v161);
    a3(&v164, &v161);
    a3(&v168, &v161);
    v57 = __DataStorage._bytes.getter();
    if (v57)
    {
      v134 = v56;
      v58 = v57;
      v59 = __DataStorage._offset.getter();
      if (__OFSUB__(v134, v59))
      {
        goto LABEL_206;
      }

      v60 = &v134[v58 - v59];
    }

    else
    {
      v60 = 0;
    }

    __DataStorage._length.getter();
    if (v35 != 2)
    {
      v74 = *(&v144 + 1);
      v75 = v144;
      if (v35 != 1)
      {
        v161 = v144;
        v162 = DWORD2(v144);
        v163 = WORD6(v144);
        v15 = v145;
        if (!v60)
        {
          goto LABEL_227;
        }

LABEL_135:
        v102 = memcmp(v60, &v161, BYTE6(v74));
        v103 = v74;
        v104 = v102;
        v105 = v141;
        v106 = v75;
        goto LABEL_184;
      }

      v137 = v60;
      if (v144 >> 32 < v144)
      {
        goto LABEL_211;
      }

      v76 = __DataStorage._bytes.getter();
      if (v76)
      {
        v77 = v76;
        v78 = __DataStorage._offset.getter();
        if (__OFSUB__(v144, v78))
        {
          goto LABEL_222;
        }

        v79 = (v144 - v78 + v77);
      }

      else
      {
        v79 = 0;
      }

      v15 = v145;
      v112 = __DataStorage._length.getter();
      if (v112 >= (v144 >> 32) - v144)
      {
        v113 = (v144 >> 32) - v144;
      }

      else
      {
        v113 = v112;
      }

      v114 = v137;
      if (!v137)
      {
        goto LABEL_229;
      }

      if (!v79)
      {
        goto LABEL_228;
      }

      goto LABEL_180;
    }

    v128 = *(v144 + 24);
    v131 = *(v144 + 16);
    v93 = __DataStorage._bytes.getter();
    v139 = v60;
    if (v93)
    {
      v94 = v93;
      v95 = __DataStorage._offset.getter();
      v96 = v131;
      if (__OFSUB__(v131, v95))
      {
        goto LABEL_220;
      }

      v97 = (v131 - v95 + v94);
    }

    else
    {
      v97 = 0;
      v96 = v131;
    }

    v109 = v128 - v96;
    if (__OFSUB__(v128, v96))
    {
      goto LABEL_215;
    }

    v110 = __DataStorage._length.getter();
    if (v110 >= v109)
    {
      v111 = v109;
    }

    else
    {
      v111 = v110;
    }

    if (!v139)
    {
      goto LABEL_231;
    }

    v15 = v145;
    if (!v97)
    {
      goto LABEL_230;
    }

LABEL_172:
    v114 = v139;
    if (v139 == v97)
    {
      goto LABEL_181;
    }

    v117 = v111;
    v118 = v97;
LABEL_183:
    v104 = memcmp(v114, v118, v117);
    v105 = v141;
    v103 = *(&v144 + 1);
    v106 = v144;
LABEL_184:
    sub_10002F75C(v105, v106, v103);
    if (v104)
    {
      goto LABEL_195;
    }

LABEL_185:
    sub_10002F75C(v155, v156, *(&v156 + 1));
    v148(&v168);
    v148(&v164);
    if (v154 != v153 || v152 != v151 || v31 != v33)
    {
      goto LABEL_196;
    }

    if (v147 == v22)
    {

      a4 = v148;
      a1 = v142;
      a2 = v143;
      v9 = v150;
      goto LABEL_6;
    }

    v23 += 56;
    if (++v22 >= *(v19 + 16))
    {
      goto LABEL_199;
    }
  }

  memset(__s1, 0, 14);
  if (!v35)
  {
    goto LABEL_100;
  }

  v140 = *(&v168 + 1);
  if (v35 == 2)
  {
    v64 = *(v169 + 16);
    v136 = *(v169 + 24);
    v48 = *(&v169 + 1);
    a3(&v164, &v161);
    a3(&v168, &v161);
    a3(&v164, &v161);
    a3(&v168, &v161);
    v65 = __DataStorage._bytes.getter();
    if (v65)
    {
      v66 = v65;
      v67 = __DataStorage._offset.getter();
      if (__OFSUB__(v64, v67))
      {
        goto LABEL_219;
      }

      v68 = v64;
      v69 = (v64 - v67 + v66);
      v48 = *(&v144 + 1);
    }

    else
    {
      v68 = v64;
      v69 = 0;
    }

    v107 = &v136[-v68];
    if (__OFSUB__(v136, v68))
    {
      goto LABEL_212;
    }

    v108 = __DataStorage._length.getter();
    if (!v69)
    {
      goto LABEL_226;
    }

    goto LABEL_143;
  }

  v133 = ((v169 >> 32) - v169);
  if (v169 >> 32 < v169)
  {
    goto LABEL_209;
  }

  v87 = v169;
  a3(&v164, &v161);
  a3(&v168, &v161);
  a3(&v164, &v161);
  a3(&v168, &v161);
  v48 = *(&v144 + 1);
  v88 = __DataStorage._bytes.getter();
  if (v88)
  {
    v89 = v88;
    v90 = __DataStorage._offset.getter();
    if (__OFSUB__(v87, v90))
    {
      goto LABEL_214;
    }

    v52 = (v87 - v90 + v89);
    v53 = __DataStorage._length.getter();
    if (!v52)
    {
      goto LABEL_225;
    }

    goto LABEL_122;
  }

  __DataStorage._length.getter();
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  __break(1u);
LABEL_229:
  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

uint64_t sub_1002E8EFC(uint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 56) + v12);
    result = sub_1003E09BC(*(*(v3 + 48) + 8 * v12) | (*(*(v3 + 48) + 8 * v12 + 4) << 32) | (*(*(v3 + 48) + 8 * v12 + 5) << 40));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + result) != v13)
    {
      return 0;
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
  return result;
}

uint64_t sub_1002E9018(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return _HashTable.occupiedBucket(after:)();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1002E9098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002E90F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E9160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002E91C8(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_10046BBB4();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_1003112D4(v4, v5);
  return 1;
}

void sub_1002E9228(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v27 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  v29 = v2;
  v28 = v6;
  while (v5)
  {
    v32 = v7;
LABEL_12:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = *(*(v2 + 56) + 8 * v12);
    Hasher._combine(_:)(*(*(v2 + 48) + v12));
    v14 = *(v13 + 16);
    Hasher._combine(_:)(v14);
    v34 = v14;
    v9 = v2;
    v10 = v32;
    if (v14)
    {
      v30 = v5;
      v31 = v8;
      v33 = v13 + 32;

      v15 = 0;
      do
      {
        v17 = (v33 + 56 * v15);
        v19 = *v17;
        v18 = *(v17 + 1);
        v20 = *(v17 + 2);
        v21 = *(v17 + 3);
        v35 = *(v17 + 32);
        v22 = *(v17 + 5);
        v23 = v17[6];
        Hasher._combine(_:)(*(*v17 + 16));
        v24 = *(*&v19 + 16);
        if (v24)
        {
          v25 = (*&v19 + 32);
          do
          {
            v26 = *v25++;
            Hasher._combine(_:)(0x801004u >> (8 * v26));
            --v24;
          }

          while (v24);
        }

        if (v21 >> 60 == 15)
        {
          Hasher._combine(_:)(0);

          sub_10005D4F4(v18, v20, v21);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v18);

          sub_10005D4F4(v18, v20, v21);
          sub_10005D4F4(v18, v20, v21);
          Data.hash(into:)();
        }

        Hasher._combine(_:)(v35);
        Hasher._combine(_:)(v22);
        if (v23 == 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = v23;
        }

        ++v15;
        Hasher._combine(_:)(*&v16);
        sub_10002F75C(v18, v20, v21);

        sub_10002F75C(v18, v20, v21);
      }

      while (v15 != v34);

      v9 = v29;
      v8 = v31;
      v10 = v32;
      v6 = v28;
      v5 = v30;
    }

    v5 &= v5 - 1;
    v7 = Hasher._finalize()() ^ v10;
    v2 = v9;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(v27 + 8 * v11);
    ++v8;
    if (v5)
    {
      v32 = v7;
      v8 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1002E9508(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v35 = v2;
  v36 = a1;
  v33 = v8;
  v34 = v4;
  while (v7)
  {
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(*(v2 + 56) + 8 * v12);
    v14 = *(*(v2 + 48) + v12);
    v15 = *(a1 + 48);
    v41[2] = *(a1 + 32);
    v41[3] = v15;
    v42 = *(a1 + 64);
    v16 = *(a1 + 16);
    v41[0] = *a1;
    v41[1] = v16;
    Hasher._combine(_:)(v14);
    v17 = *(v13 + 16);
    Hasher._combine(_:)(v17);
    v40 = v17;
    if (v17)
    {
      v37 = v7;
      v38 = v9;
      v39 = v13 + 32;

      v18 = 0;
      do
      {
        v20 = (v39 + 56 * v18);
        v22 = *v20;
        v21 = *(v20 + 1);
        v23 = *(v20 + 2);
        v24 = *(v20 + 3);
        v25 = *(v20 + 32);
        v26 = *(v20 + 5);
        v27 = v20[6];
        Hasher._combine(_:)(*(*v20 + 16));
        v28 = *(*&v22 + 16);
        if (v28)
        {
          v29 = (*&v22 + 37);
          do
          {
            v30 = *(v29 - 5);
            v31 = *(v29 - 1);
            v32 = *v29;
            v29 += 8;
            Channel.hash(into:)(v41, v30 | (v31 << 32) | (v32 << 40));
            --v28;
          }

          while (v28);
        }

        if (v24 >> 60 == 15)
        {
          Hasher._combine(_:)(0);

          sub_10005D4F4(v21, v23, v24);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v21);

          sub_10005D4F4(v21, v23, v24);
          sub_10005D4F4(v21, v23, v24);
          Data.hash(into:)();
        }

        Hasher._combine(_:)(v25);
        Hasher._combine(_:)(v26);
        if (v27 == 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = v27;
        }

        ++v18;
        Hasher._combine(_:)(*&v19);
        sub_10002F75C(v21, v23, v24);

        sub_10002F75C(v21, v23, v24);
      }

      while (v18 != v40);

      v2 = v35;
      a1 = v36;
      v8 = v33;
      v4 = v34;
      v7 = v37;
      v9 = v38;
    }

    v7 &= v7 - 1;
    v9 ^= Hasher._finalize()();
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1002E97C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  v33 = v2;
  v34 = a1;
  v31 = v8;
  v32 = v4;
  while (v7)
  {
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(*(v2 + 56) + 8 * v12);
    v14 = *(*(v2 + 48) + v12);
    v15 = *(a1 + 48);
    v37[2] = *(a1 + 32);
    v37[3] = v15;
    v38 = *(a1 + 64);
    v16 = *(a1 + 16);
    v37[0] = *a1;
    v37[1] = v16;
    Hasher._combine(_:)(v14);
    Hasher._combine(_:)(*(v13 + 16));
    v17 = *(v13 + 16);
    if (v17)
    {
      v35 = v7;
      v36 = v9;

      v18 = 0;
      do
      {
        v20 = v13;
        v21 = v13 + v18;
        v22 = *(v13 + v18 + 32);
        v23 = *(v13 + v18 + 36);
        v24 = *(v13 + v18 + 37);
        v25 = *(v13 + v18 + 40);
        v26 = *(v13 + v18 + 48);
        v27 = *(v13 + v18 + 56);
        v28 = *(v13 + v18 + 64);
        v29 = *(v21 + 72);
        v30 = *(v21 + 80);
        Channel.hash(into:)(v37, v22 | (v23 << 32) | (v24 << 40));
        if (v27 >> 60 == 15)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v25);
          sub_10005D4F4(v25, v26, v27);
          Data.hash(into:)();
        }

        Hasher._combine(_:)(v28);
        Hasher._combine(_:)(v29);
        if (v30 == 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = v30;
        }

        Hasher._combine(_:)(*&v19);
        sub_10002F75C(v25, v26, v27);
        v18 += 56;
        --v17;
        v13 = v20;
      }

      while (v17);

      v2 = v33;
      a1 = v34;
      v8 = v31;
      v4 = v32;
      v7 = v35;
      v9 = v36;
    }

    v7 &= v7 - 1;
    v9 ^= Hasher._finalize()();
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1002E99FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1002E9A14(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1002E9A14(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    return sub_10000AB0C(a2, a3);
  }

  return result;
}

uint64_t sub_1002E9A28(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1002E9A40(result, a2, a3, a4 & 1);
  }

  return result;
}

uint64_t sub_1002E9A40(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1000124C8(a2, a3);
  }

  return result;
}

BOOL sub_1002E9ABC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (v5 >> 60 != 15)
  {
    if (v8 >> 60 != 15)
    {
      if (*a1 == v7)
      {
        v9 = a1;
        sub_1002E9D7C(a1, v15);
        sub_1002E9D7C(a2, v15);
        v14 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v5, v6, v8);
        sub_10002F75C(v7, v6, v8);
        if (v14)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1002E9D7C(a1, v15);
        sub_1002E9D7C(a2, v15);
        sub_10002F75C(v7, v6, v8);
      }

      v11 = v4;
      v12 = v3;
      v13 = v5;
LABEL_14:
      sub_10002F75C(v11, v12, v13);
      return 0;
    }

LABEL_8:
    sub_1002E9D7C(a1, v15);
    sub_1002E9D7C(a2, v15);
    sub_10002F75C(v4, v3, v5);
    v11 = v7;
    v12 = v6;
    v13 = v8;
    goto LABEL_14;
  }

  if (v8 >> 60 != 15)
  {
    goto LABEL_8;
  }

  v9 = a1;
  sub_1002E9D7C(a1, v15);
  sub_1002E9D7C(a2, v15);
LABEL_4:
  sub_10002F75C(v4, v3, v5);
  if (*(v9 + 24) == *(a2 + 24) && v9[4] == *(a2 + 32))
  {
    return *(v9 + 5) == *(a2 + 40);
  }

  return 0;
}

BOOL sub_1002E9C50(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((0x801004u >> (8 * *(a1 + 4))) & 0xFFC) != ((0x801004u >> (8 * *(a2 + 4))) & 0xFFC))
  {
    return 0;
  }

  v4 = *(a1 + 5);
  v5 = *(a2 + 5);
  if (v4 > 3)
  {
    switch(v4)
    {
      case 4u:
        if (v5 == 4)
        {
          goto LABEL_21;
        }

        return 0;
      case 5u:
        if (v5 == 5)
        {
          goto LABEL_21;
        }

        return 0;
      case 6u:
        if (v5 == 6)
        {
          goto LABEL_21;
        }

        return 0;
    }

    goto LABEL_19;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      if (v5 == 3)
      {
        goto LABEL_21;
      }

      return 0;
    }

LABEL_19:
    if ((v5 - 2) >= 5 && ((v4 ^ v5) & 1) == 0)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v5 != 2)
  {
    return 0;
  }

LABEL_21:
  v11 = v2;
  v12 = v3;
  v7 = *(a1 + 24);
  v10[0] = *(a1 + 8);
  v10[1] = v7;
  v10[2] = *(a1 + 40);
  v8 = *(a2 + 24);
  v9[0] = *(a2 + 8);
  v9[1] = v8;
  v9[2] = *(a2 + 40);
  return sub_1002E9ABC(v10, v9);
}

uint64_t sub_1002E9E1C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((0x801004u >> (8 * *(a1 + 4))) & 0xFFC) != ((0x801004u >> (8 * *(a2 + 4))) & 0xFFC))
  {
    return 0;
  }

  v3 = *(a1 + 5);
  v4 = *(a2 + 5);
  if (v3 <= 3)
  {
    if (v3 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }

      goto LABEL_21;
    }

    if (v3 == 3)
    {
      if (v4 != 3)
      {
        return 0;
      }

      goto LABEL_21;
    }

LABEL_19:
    if (v4 - 2) < 5 || ((v4 ^ v3))
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v3 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v3 == 5)
  {
    if (v4 != 5)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (v3 != 6)
  {
    goto LABEL_19;
  }

  if (v4 != 6)
  {
    return 0;
  }

LABEL_21:
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v7 = *(type metadata accessor for NANPeer.LastBeaconInformation(0) + 32);

  return static DispatchTime.== infix(_:_:)(a1 + v7, a2 + v7);
}

uint64_t sub_1002E9F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_100596880, &unk_1004B0F70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E9FD4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1000124C8(result, a2);

    return sub_1000124C8(a3, a4);
  }

  return result;
}

uint64_t sub_1002EA024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((result & 0xFF0000) != 0xE0000)
  {
    return sub_1000449CC(a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1002EA048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 != 5)
  {
    return sub_100184290(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1002EA068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 != 5)
  {
    return sub_1001842D0(a3, a4, a5);
  }

  return result;
}

uint64_t sub_1002EA088()
{
  sub_1000124C8(*(v0 + 16), *(v0 + 24));

  if (*(v0 + 66) != 255)
  {
    v1 = *(v0 + 64) | (*(v0 + 66) << 16);
    sub_1001842C4(*(v0 + 48), *(v0 + 56), v1, BYTE2(v1) & 1);
  }

  if (*(v0 + 72) != 4)
  {
    sub_1000124C8(*(v0 + 80), *(v0 + 88));
  }

  return _swift_deallocObject(v0, 96, 7);
}

void sub_1002EA11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_1002EA180(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 48))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002EA1C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1002EA244(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1002EA28C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002EA2E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1002EA32C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1002EA390()
{
  result = qword_100595938;
  if (!qword_100595938)
  {
    result = swift_getWitnessTable(byte_1004AF8F8, &type metadata for NANPeer.Availability.CommittedEntry, v0, v1);
    atomic_store(result, &qword_100595938);
  }

  return result;
}

unint64_t sub_1002EA3E8()
{
  result = qword_100595940;
  if (!qword_100595940)
  {
    result = swift_getWitnessTable(byte_1004AF960, &type metadata for NANPeer.Availability.PotentialChannelEntry, v0, v1);
    atomic_store(result, &qword_100595940);
  }

  return result;
}

unint64_t sub_1002EA440()
{
  result = qword_100595948;
  if (!qword_100595948)
  {
    result = swift_getWitnessTable(aA_8, &type metadata for NANPeer.Availability.PotentialBandEntry, v0, v1);
    atomic_store(result, &qword_100595948);
  }

  return result;
}

unint64_t sub_1002EA498()
{
  result = qword_100595950;
  if (!qword_100595950)
  {
    result = swift_getWitnessTable(byte_1004AFA30, &type metadata for NANPeer.Availability.ConditionalEntry, v0, v1);
    atomic_store(result, &qword_100595950);
  }

  return result;
}

unint64_t sub_1002EA4F0()
{
  result = qword_100595958;
  if (!qword_100595958)
  {
    result = swift_getWitnessTable(aQ_11, &type metadata for NANPeer.Availability.EntryAttributes, v0, v1);
    atomic_store(result, &qword_100595958);
  }

  return result;
}

uint64_t sub_1002EA56C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1002EA5B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002EA604(uint64_t a1, size_t a2, __int16 a3)
{
  v3 = a3;
  v4 = a2;
  if (a3)
  {
    v5 = *(a1 + 16);
    v6 = (v5 * 5) >> 64;
    v7 = 5 * v5;
    if (v6 != v7 >> 63)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v8 = __OFADD__(v7, 7);
    v9 = v7 + 7;
    if (v8)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v9 < 0x208)
    {
      v10 = v9 >> 3;
      if (v10 <= 6)
      {
        v4 = 6;
      }

      else
      {
        v4 = v10;
      }
    }

    else
    {
      v4 = 64;
    }
  }

  v34 = HIBYTE(a3);
  if (HIBYTE(a3) != 4)
  {
LABEL_14:
    v14 = swift_slowAlloc();
    if ((v4 & 0x8000000000000000) == 0)
    {
      v15 = v14;
      if (v4)
      {
        bzero(v14, v4);
      }

      v31 = v4;
      v16 = 1 << *(a1 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(a1 + 56);
      v19 = (v16 + 63) >> 6;
      v32 = v3;

      v20 = 0;
      while (v18)
      {
        v21 = v20;
LABEL_25:
        v22 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = (*(a1 + 48) + 6 * (v22 | (v21 << 6)));
        v24 = sub_1002EA8A8(*v23 | (*(v23 + 1) << 16), v34, a1, a2, v32 & 1);
        v26 = v25;
        v27 = HIDWORD(v24);
        v28 = HIDWORD(v25);
        v36[0] = v24;
        v29 = sub_1002EADC0();
        UnsafeMutablePointer<A>.set<A>(bit:)(v36, v15, &type metadata for UInt32, v29);
        v36[0] = v27;
        UnsafeMutablePointer<A>.set<A>(bit:)(v36, v15, &type metadata for UInt32, v29);
        v36[0] = v26;
        UnsafeMutablePointer<A>.set<A>(bit:)(v36, v15, &type metadata for UInt32, v29);
        v36[0] = v28;
        UnsafeMutablePointer<A>.set<A>(bit:)(v36, v15, &type metadata for UInt32, v29);
      }

      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v21 >= v19)
        {

          sub_1002AAFAC(v15, v31);

          return v34;
        }

        v18 = *(a1 + 56 + 8 * v21);
        ++v20;
        if (v18)
        {
          v20 = v21;
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_30;
  }

  v11 = static NANBloomFilter.Index.allCases.getter();
  v12 = v11[2];
  if (v12)
  {
    v13 = sub_1002EAD34(v12);
    if ((v13 & 0x8000000000000000) != 0)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v13 >= v11[2])
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v34 = *(v11 + v13 + 32);

    goto LABEL_14;
  }

LABEL_34:

  __break(1u);
  return result;
}

uint64_t sub_1002EA8A8(uint64_t result, char a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = result;
  if ((a5 & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *(a3 + 16);
  v8 = (v7 * 5) >> 64;
  v9 = 5 * v7;
  if (v8 != v9 >> 63)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = __OFADD__(v9, 7);
  v11 = v9 + 7;
  if (!v10)
  {
    if (v11 > 0x207)
    {
      v12 = 512;
      goto LABEL_11;
    }

    v13 = v11 >> 3;
    if (v13 <= 6)
    {
      a4 = 6;
    }

    else
    {
      a4 = v13;
    }

LABEL_9:
    if ((a4 - 0x1000000000000000) >> 61 != 7)
    {
      __break(1u);
      goto LABEL_16;
    }

    v12 = 8 * a4;
LABEL_11:
    v14 = WiFiAddress.data.getter(result & 0xFFFFFFFFFFFFLL);
    v16 = v15;
    v17 = sub_1002EAE14(4 * a2, v14, v15);
    result = sub_1000124C8(v14, v16);
    if ((v12 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v12))
      {
        if (v12)
        {
          v18 = v17 % v12;
          v19 = WiFiAddress.data.getter(v6 & 0xFFFFFFFFFFFFLL);
          v21 = v20;
          v22 = sub_1002EAE14((4 * a2) | 1u, v19, v20);
          sub_1000124C8(v19, v21);
          v23 = v22 % v12;
          v24 = WiFiAddress.data.getter(v6 & 0xFFFFFFFFFFFFLL);
          v26 = v25;
          sub_1002EAE14((4 * a2) | 2, v24, v25);
          sub_1000124C8(v24, v26);
          v27 = WiFiAddress.data.getter(v6 & 0xFFFFFFFFFFFFLL);
          v29 = v28;
          sub_1002EAE14((4 * a2) | 3, v27, v28);
          sub_1000124C8(v27, v29);
          return v18 | (v23 << 32);
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_1002EAA6C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = (*(a1 + 48) + 6 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v10 = *(v9 + 1);
    v11 = *v9;
    v5 &= v5 - 1;

    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13._countAndFlagsBits = WiFiAddress.description.getter(v11 | (v10 << 16));
    String.append(_:)(v13);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      v14._countAndFlagsBits = 62;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);

      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Int sub_1002EABE0@<X0>(Swift::Int result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = result;
  *a4 = xmmword_100480A90;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    v12 = __OFSUB__(v10, v11);
    v9 = v10 - v11;
    if (!v12)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(a3);
    goto LABEL_10;
  }

  LODWORD(v9) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
    goto LABEL_13;
  }

  v9 = v9;
LABEL_10:
  v13 = *(result + 16);
  result = v9 + v13;
  if (!__OFADD__(v9, v13))
  {
    Data._Representation.reserveCapacity(_:)(result);
    v18 = sub_10005DC58(&qword_10058D358, &unk_100486960);
    v19 = sub_1002EB000();
    v17[0] = v6;
    sub_100029B34(v17, v18);

    Data._Representation.append(contentsOf:)();
    sub_100002A00(v17);
    v18 = &type metadata for Data;
    v19 = &protocol witness table for Data;
    v17[0] = a2;
    v17[1] = a3;
    v14 = sub_100029B34(v17, &type metadata for Data);
    v15 = *v14;
    v16 = v14[1];
    sub_10000AB0C(a2, a3);
    sub_100178A18(v15, v16, a4);
    return sub_100002A00(v17);
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1002EAD34(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002EADC0()
{
  result = qword_100595960;
  if (!qword_100595960)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt32, &type metadata for UInt32, v0, v1);
    atomic_store(result, &qword_100595960);
  }

  return result;
}

uint64_t sub_1002EAE14(char a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for Data.Iterator();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100480F40;
  *(v10 + 32) = a1;
  sub_1002EABE0(v10, a2, a3, &v15);

  v11 = v15;
  sub_10000AB0C(v15, *(&v15 + 1));
  Data.Iterator.init(_:at:)();
  sub_100085C04();
  dispatch thunk of IteratorProtocol.next()();
  if (BYTE1(v15))
  {
    v12 = 0xFFFFLL;
  }

  else
  {
    v13 = -1;
    do
    {
      v13 = *(&off_100572AE8 + (v15 ^ v13) + 8) ^ (v13 >> 8);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (BYTE1(v15) != 1);
    v12 = v13;
  }

  sub_1000124C8(v11, *(&v11 + 1));
  (*(v7 + 8))(v9, v6);
  return v12;
}

unint64_t sub_1002EB000()
{
  result = qword_10059B0E0;
  if (!qword_10059B0E0)
  {
    v3 = sub_10005DD04(&qword_10058D358, &unk_100486960);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v0, v1);
    atomic_store(result, &qword_10059B0E0);
  }

  return result;
}

void sub_1002EB064(uint64_t a1)
{
  type metadata accessor for NANPublish.Configuration(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DispatchTime();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        sub_1002FD83C(319);
        if (v4 <= 0x3F)
        {
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1002EB234()
{
  v1 = *v0;
  v2 = swift_isaMask;
  swift_beginAccess();
  _s8InstanceC21NANPublishClientProxyVMa(255, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);
  v4 = type metadata accessor for Array();

  sub_10005DC58(&unk_100595B60, qword_1004AFC70);
  swift_getWitnessTable(&protocol conformance descriptor for [A], v4);
  v5 = Sequence.compactMap<A>(_:)();

  return v5;
}

uint64_t sub_1002EB358(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v7 = swift_isaMask & *v5;
  v8 = *(v7 + 0x50);
  v9 = *(v7 + 88);
  v10 = _s8InstanceC21NANPublishClientProxyVMa(255, v8, v9, a5);
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  __chkstk_darwin();
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v30 - v14;
  v16 = *(v10 - 8);
  __chkstk_darwin();
  v18 = &v30 - v17;
  v19 = qword_100595988;
  swift_beginAccess();
  v36 = *(v6 + v19);
  v34 = v8;
  v35 = v9;
  v20 = type metadata accessor for Array();

  swift_getWitnessTable(&protocol conformance descriptor for [A], v20);
  Sequence.first(where:)();

  v21 = *(v16 + 48);
  if (v21(v15, 1, v10) == 1)
  {
    v22 = *(v33 + 8);
    v23 = v15;
    v24 = v32;
    v33 += 8;
    v22(v23, v32);
    v36 = *(v6 + v19);
    swift_getWitnessTable(&protocol conformance descriptor for [A], v20);
    v25 = v31;
    Collection.first.getter();
    if (v21(v25, 1, v10) == 1)
    {
      v22(v25, v24);
      return 0;
    }

    else
    {
      v26 = *(v25 + 1);
      v28 = *(v16 + 8);
      swift_unknownObjectRetain();
      v28(v25, v10);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v15, v10);
    v26 = *(v18 + 1);
    v27 = *(v16 + 8);
    swift_unknownObjectRetain();
    v27(v18, v10);
  }

  return v26;
}

uint64_t sub_1002EB6A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000796CLL;
  v3 = 0x6E4F646572696170;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6972696150796E61;
    }

    else
    {
      v5 = 7105633;
    }

    if (v4 == 1)
    {
      v6 = 0xEA0000000000676ELL;
    }

    else
    {
      v6 = 0xE300000000000000;
    }

    v7 = a2;
    if (!a2)
    {
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  v5 = 0x6E4F646572696170;
  v6 = 0xEA0000000000796CLL;
  v7 = a2;
  if (a2)
  {
LABEL_9:
    if (v7 == 1)
    {
      v3 = 0x6972696150796E61;
    }

    else
    {
      v3 = 7105633;
    }

    if (v7 == 1)
    {
      v2 = 0xEA0000000000676ELL;
    }

    else
    {
      v2 = 0xE300000000000000;
    }
  }

LABEL_15:
  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1002EB7AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x656D69746C616572;
    }

    else
    {
      v3 = 0x6E6574614C776F6CLL;
    }

    if (v2 == 1)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xEA00000000007963;
    }

    v5 = a2;
    if (a2)
    {
LABEL_9:
      if (v5 == 1)
      {
        v6 = 0x656D69746C616572;
      }

      else
      {
        v6 = 0x6E6574614C776F6CLL;
      }

      if (v5 == 1)
      {
        v7 = 0xE800000000000000;
      }

      else
      {
        v7 = 0xEA00000000007963;
      }

      if (v3 != v6)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x6576697470616461;
    v5 = a2;
    if (a2)
    {
      goto LABEL_9;
    }
  }

  v7 = 0xE800000000000000;
  if (v3 != 0x6576697470616461)
  {
LABEL_21:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_22;
  }

LABEL_19:
  if (v4 != v7)
  {
    goto LABEL_21;
  }

  v8 = 1;
LABEL_22:

  return v8 & 1;
}

uint64_t sub_1002EB8C0()
{
  v1 = v0 + qword_10059B890;
  swift_beginAccess();
  result = type metadata accessor for NANPublish.Configuration(0);
  *(v1 + *(result + 80)) = 0;
  return result;
}

BOOL sub_1002EB914()
{
  v1 = *v0;
  v2 = swift_isaMask;
  swift_beginAccess();
  _s8InstanceC21NANPublishClientProxyVMa(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);

  v4 = Array.count.getter();

  return v4 > 1;
}

uint64_t sub_1002EB9C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = qword_10059B8C0;
  swift_beginAccess();
  v8 = *(v2 + v5);
  _s17ResponderInstanceCMa(255, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v6);
  sub_10020CB70();
  type metadata accessor for Dictionary();

  Dictionary.removeValue(forKey:)();

  return sub_1002EE678(v8);
}

uint64_t sub_1002EBAD4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059B890;
  swift_beginAccess();
  return sub_1003013DC(v1 + v3, a1, type metadata accessor for NANPublish.Configuration);
}

uint64_t sub_1002EBB40@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, __n128 a6@<Q0>)
{
  result = sub_1002EBB84(a6, a2, a3, a4, a5);
  v8 = result;
  if (result)
  {
    result = swift_getObjectType();
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v8;
  a1[3] = result;
  return result;
}

uint64_t sub_1002EBB84(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = _s8InstanceC21NANPublishClientProxyVMa(255, *((swift_isaMask & *v5) + 0x50), *((swift_isaMask & *v5) + 0x58), a5);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = qword_100595988;
  swift_beginAccess();
  v17 = *(v5 + v11);
  v12 = type metadata accessor for Array();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v12);
  Collection.first.getter();
  v13 = *(v6 - 8);
  if ((*(v13 + 48))(v10, 1, v6) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  else
  {
    v14 = *(v10 + 1);
    v15 = *(v13 + 8);
    swift_unknownObjectRetain();
    v15(v10, v6);
  }

  return v14;
}

uint64_t sub_1002EBD70(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = type metadata accessor for NANPublish.Configuration(0);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s8InstanceC21NANPublishClientProxyVMa(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v8);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v25 - v13;
  sub_100012400(a1, v29, &qword_10058BA80, &qword_1004818C0);
  if (v30)
  {
    sub_10005DC58(&unk_100595B60, qword_1004AFC70);
    if (swift_dynamicCast())
    {
      v15 = v28;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    sub_100016290(v29, &qword_10058BA80, &qword_1004818C0);
    v15 = 0;
  }

  v16 = v1 + qword_10059B890;
  swift_beginAccess();
  v17 = *(v16 + *(v5 + 84) + 24);
  v26 = v12;
  v27 = a1;
  v25 = v7;
  if (v17 == 1)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = 0;
    if ((v18 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v20 = *NANConstants.WiFiAwareExclusivePublishPrivileges.unsafeMutableAddressor();
  if (*(v1 + qword_10059B8C8 + 8))
  {
    v21 = *(v1 + qword_10059B8C8);
    v22 = *(v1 + qword_10059B8C8 + 8);
  }

  else
  {
    v22 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E75;
  }

  v19 = sub_1004478AC(v21, v22, v20);

LABEL_13:
  v23 = v25;
  sub_1003013DC(v16, v25, type metadata accessor for NANPublish.Configuration);
  *v14 = v19 & 1;
  *(v14 + 1) = v15;
  sub_10030129C(v23, &v14[*(v9 + 40)], type metadata accessor for NANPublish.Configuration);
  (*(v10 + 16))(v26, v14, v9);
  swift_beginAccess();
  type metadata accessor for Array();
  swift_unknownObjectRetain();
  Array.append(_:)();
  swift_endAccess();
  sub_1002EC180();
  swift_unknownObjectRelease();
  sub_100016290(v27, &qword_10058BA80, &qword_1004818C0);
  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1002EC180()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  sub_10005DC58(&unk_100595BF0, &unk_1004AFCF8);
  __chkstk_darwin();
  v158 = &v130 - v4;
  v147 = type metadata accessor for DispatchTimeInterval();
  v146 = *(v147 - 8);
  __chkstk_darwin();
  v151 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NANPublish.Configuration(0);
  v157 = *(v6 - 8);
  __chkstk_darwin();
  v148 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v152 = &v130 - v8;
  __chkstk_darwin();
  v145 = &v130 - v9;
  __chkstk_darwin();
  v144 = &v130 - v10;
  __chkstk_darwin();
  v153 = &v130 - v11;
  __chkstk_darwin();
  v149 = (&v130 - v12);
  __chkstk_darwin();
  v154 = &v130 - v13;
  v14 = *((v3 & v2) + 0x58);
  v156 = *((v3 & v2) + 0x50);
  v155 = v14;
  v16 = _s8InstanceC21NANPublishClientProxyVMa(255, v156, v14, v15);
  v17 = type metadata accessor for Optional();
  v159 = *(v17 - 8);
  v160 = v17;
  __chkstk_darwin();
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v150 = &v130 - v20;
  __chkstk_darwin();
  v22 = &v130 - v21;
  __chkstk_darwin();
  v24 = &v130 - v23;
  v25 = qword_100595988;
  swift_beginAccess();
  *&v162 = *&v1[v25];
  v26 = type metadata accessor for Array();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v26);
  result = Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    v141 = v22;
    v161 = *&v1[v25];
    Collection.first.getter();
    v28 = *(v16 - 8);
    v142 = *(v28 + 48);
    if ((v142)(v24, 1, v16) == 1)
    {
      return (v159[1])(v24, v160);
    }

    v140 = v28 + 48;
    v143 = v6;
    v29 = *(v24 + 1);
    v30 = *(v28 + 8);
    swift_unknownObjectRetain();
    v138 = v28 + 8;
    result = v30(v24, v16);
    if (v29)
    {
      v137 = v30;
      swift_unknownObjectRelease();
      v31 = qword_10059B8A0;
      v32 = v1;
      v136 = v31;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v143;
      v139 = v32;
      if (v35)
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;

        v135 = Array.count.getter();

        *(v37 + 4) = v135;
        v38 = v139;

        _os_log_impl(&_mh_execute_header, v33, v34, "Publisher configuration changed(%ld)", v37, 0xCu);

        v39 = v38;
        v36 = v143;
      }

      else
      {

        v33 = v32;
        v39 = v32;
      }

      v40 = Array.count.getter();

      if (v40 < 2)
      {
        *&v162 = *&v1[v25];
        Collection.first.getter();
        if ((v142)(v19, 1, v16) == 1)
        {
          (v159[1])(v19, v160);
          v46 = &unk_10059B000;
          v47 = qword_10059B890;
          swift_beginAccess();
          v48 = v152;
          sub_1003013DC(v39 + v47, v152, type metadata accessor for NANPublish.Configuration);
        }

        else
        {
          v53 = v148;
          sub_1003013DC(&v19[*(v16 + 40)], v148, type metadata accessor for NANPublish.Configuration);
          (v137)(v19, v16);
          v48 = v152;
          sub_10030129C(v53, v152, type metadata accessor for NANPublish.Configuration);
          v46 = &unk_10059B000;
        }

        v54 = v39 + qword_10059B890;
        swift_beginAccess();
        sub_10030018C(v48, v54);
        swift_endAccess();
        if (*(v54 + v36[21] + 24))
        {
          v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v55 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
        }

        v56 = v39 + qword_10059B8B8;
        v57 = *(&v39->isa + qword_10059B8B8);
        v58 = *(&v39[1].isa + qword_10059B8B8);
        v59 = *(&v39[2].isa + qword_10059B8B8);
        v60 = *(&v39[3].isa + qword_10059B8B8);
        *v56 = 0u;
        *(v56 + 1) = 0u;
        *(v56 + 2) = 0u;
        *(v56 + 6) = 0;
        sub_100083690(v57, v58, v59, v60);
LABEL_42:
        v112 = v39 + v46[274];
        swift_beginAccess();
        v113 = *(v112 + 80);
        v114 = *(v112 + 78);
        swift_unownedRetainStrong();
        v115 = WiFiInterface.macAddress.getter();

        if (static WiFiAddress.!= infix(_:_:)(v114 | (v113 << 16), v115 & 0xFFFFFFFFFFFFLL) || (v116 = *(v112 + 86), v117 = *(v112 + 84), v118 = *sub_1002EEA34(), v119 = (*(v118 + 256))(), , static WiFiAddress.!= infix(_:_:)(v117 | (v116 << 16), v119 & 0xFFFFFFFFFFFFLL)))
        {
          swift_unownedRetainStrong();
          v120 = WiFiInterface.macAddress.getter();

          *(v112 + 78) = v120;
          *(v112 + 80) = BYTE2(v120);
          *(v112 + 81) = BYTE3(v120);
          *(v112 + 82) = BYTE4(v120);
          *(v112 + 83) = BYTE5(v120);
          v121 = *sub_1002EEA34();
          v122 = (*(v121 + 256))();

          *(v112 + 84) = v122;
          *(v112 + 86) = BYTE2(v122);
          *(v112 + 87) = BYTE3(v122);
          *(v112 + 88) = BYTE4(v122);
          *(v112 + 89) = BYTE5(v122);
        }

        v123 = static Duration.zero.getter();
        v125 = v124;
        v126 = (v39 + qword_1005959C0);
        swift_beginAccess();
        *v126 = v123;
        v126[1] = v125;
        v127 = v143;
        sub_1002EEB78(*(v112 + v143[30]));
        v128 = v158;
        sub_1003013DC(v112, v158, type metadata accessor for NANPublish.Configuration);
        (*(v157 + 56))(v128, 0, 1, v127);
        *(swift_allocObject() + 16) = v39;
        v129 = v39;
        sub_1002EF130(v128, sub_1003001F0);

        return sub_100016290(v128, &unk_100595BF0, &unk_1004AFCF8);
      }

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Multple xpcClientProxy found", v43, 2u);
      }

      *&v162 = *&v1[v25];
      __chkstk_darwin();

      WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for [A], v26);
      v45 = v141;
      v152 = WitnessTable;
      Sequence.first(where:)();

      if ((v142)(v45, 1, v16) == 1)
      {
        (v159[1])(v45, v160);
        v46 = &unk_10059B000;
        v39 = v139;
        goto LABEL_42;
      }

      v49 = v149;
      sub_1003013DC(&v45[*(v16 + 40)], v149, type metadata accessor for NANPublish.Configuration);
      (v137)(v45, v16);
      v50 = v154;
      sub_10030129C(v49, v154, type metadata accessor for NANPublish.Configuration);
      v149 = &v130;
      *&v162 = *&v1[v25];
      __chkstk_darwin();

      v51 = v150;
      Sequence.first(where:)();

      if ((v142)(v51, 1, v16) == 1)
      {
        (v159[1])(v51, v160);
        v52 = v153;
        sub_1003013DC(v50, v153, type metadata accessor for NANPublish.Configuration);
      }

      else
      {
        v61 = v144;
        sub_1003013DC(&v51[*(v16 + 40)], v144, type metadata accessor for NANPublish.Configuration);
        (v137)(v51, v16);
        v52 = v153;
        sub_10030129C(v61, v153, type metadata accessor for NANPublish.Configuration);
      }

      v62 = v143;
      v39 = v139;
      v63 = v143[28];
      if (*&v50[v63])
      {
        v64 = *&v50[v63];
      }

      else
      {
        v64 = _swiftEmptyArrayStorage;
      }

      if (*(v52 + v63))
      {
        v65 = *(v52 + v63);
      }

      else
      {
        v65 = _swiftEmptyArrayStorage;
      }

      v66 = sub_1004749DC(v64);

      v67 = sub_1004749DC(v65);

      sub_1002EE6DC(v67, v66);
      v160 = v68;
      v69 = v62[21];
      v70 = &v50[v69];
      v71 = *&v50[v69 + 16];
      v72 = *(v52 + v69 + 16);

      v73 = sub_100474B78(v71);

      v74 = sub_100474B78(v72);

      v75 = sub_1002EE8F8(v74, v73);
      LODWORD(v155) = v70[2];
      v76 = *(v75 + 16);
      v156 = *(v52 + 24);
      if (v76)
      {
        v159 = sub_1003675EC(v76, 0);
        v77 = sub_1003158A0(&v162, (v159 + 4), v76, v75);
        v78 = v162;

        result = sub_1000E290C(v78);
        if (v77 != v76)
        {
          __break(1u);
          goto LABEL_48;
        }

        v79 = v143;
        v52 = v153;
        v50 = v154;
      }

      else
      {

        v159 = _swiftEmptyArrayStorage;
        v79 = v143;
      }

      v80 = v160;
      v81 = v70[24];
      v82 = *v50;
      v83 = *(v50 + 2);
      v160 = *(v50 + 1);
      v84 = *(v50 + 3);
      v148 = v50[78];
      v144 = v50[79];
      v137 = *(v50 + 20);
      v142 = v50[84];
      v141 = v50[85];
      v138 = *(v50 + 86);
      (*(v146 + 16))(v151, &v50[v79[18]], v147);
      LODWORD(v152) = v50[77];
      LODWORD(v150) = v50[v79[20]];
      LODWORD(v149) = v50[v79[24]];
      sub_100012400(&v50[v79[22]], &v162, &unk_1005974B0, &qword_1004AFCF0);
      v85 = v79[26];
      LODWORD(v147) = *&v50[v79[25]];
      LODWORD(v146) = v50[v85];
      LODWORD(v140) = v50[72];
      v86 = (v52 + v79[27]);
      v136 = *(v86 + 2);
      v135 = *v86;
      v87 = *(v86 + 6);
      v88 = *(v80 + 16);
      if (!v88)
      {

        v97 = _swiftEmptyArrayStorage;
        v95 = v154;
        v96 = v83;
        goto LABEL_38;
      }

      v132 = *(v86 + 6);
      v133 = v81;
      v134 = v82;
      v89 = sub_1003674F0(v88, 0);
      v90 = *(type metadata accessor for UUID() - 8);
      v91 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v131 = v89;
      sub_1003155FC(&v161, &v89[v91], v88, v80);
      v93 = v92;
      v94 = v161;

      result = sub_1000E290C(v94);
      if (v93 == v88)
      {
        v79 = v143;
        v39 = v139;
        v95 = v154;
        v82 = v134;
        v96 = v83;
        LOBYTE(v81) = v133;
        v87 = v132;
        v97 = v131;
LABEL_38:
        v98 = *(v95 + v79[29]);
        v99 = *(v95 + v79[30]);
        v100 = *(v95 + v79[31]);
        v101 = *(v95 + v79[32]) | (*(v95 + v79[32] + 4) << 32);
        v102 = *(v95 + v79[34]);
        v103 = v153;
        v104 = (v153 + v79[35]);
        v105 = *v104 | (*(v104 + 2) << 32);
        v106 = *(v104 + 6);
        LODWORD(v104) = *(v104 + 7);
        v107 = *(v95 + v79[33]) | (*(v95 + v79[33] + 2) << 16);
        LOBYTE(v161) = v106;
        v108 = v104 == 0;
        v109 = 0x100000000000000;
        if (v108)
        {
          v109 = 0;
        }

        v110 = v145;
        NANPublish.Configuration.init(instanceID:serviceName:serviceSpecificInfo:managementAddress:responderAddress:datapathConfiguration:announcementPeriod:furtherServiceDiscoveryFunction:enableFastDiscovery:authenticationType:internetSharingConfiguration:pairingBootstrappingMethod:pairingCachingSupported:publisherType:multicastAddress:allowedPairedDevicesUUIDs:multicastServiceType:timeoutAfterSeconds:pairingSetupMode:channelInfo:countryCode:gtkRequired:multicastConfiguration:)(v82, v160, v96, v84, v148 | (v144 << 8) | (v137 << 16), v142 | (v141 << 8) | (v138 << 16), (v155 << 16) | 0x200, v156, v145, v159, v81, v151, v152, v150, v149, &v162, v147, v146, v140, (v135 | (v136 << 32)) & 0xFFFFFFFFFFFFLL | (v87 << 48), v97, v98, v99, v100, v101, v107, v102, v109 | (v106 << 48) | v105);
        sub_100301450(v103, type metadata accessor for NANPublish.Configuration);
        sub_100301450(v95, type metadata accessor for NANPublish.Configuration);
        v46 = &unk_10059B000;
        v111 = qword_10059B890;
        swift_beginAccess();
        sub_10030018C(v110, v39 + v111);
        swift_endAccess();
        goto LABEL_42;
      }

LABEL_48:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002ED5D0@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10059B8A0;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_1002ED648(uint64_t a1)
{
  v2 = *((swift_isaMask & *v1) + 0x58);
  v3 = *((swift_isaMask & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v7 = v24 - v6 + 64;
  v8 = v1 + qword_10059B890;
  swift_beginAccess();
  v9 = type metadata accessor for NANPublish.Configuration(0);
  sub_100012400(&v8[*(v9 + 88)], v24, &unk_1005974B0, &qword_1004AFCF0);
  v10 = v25;
  if (v25 == 255)
  {
    sub_100016290(v24, &unk_1005974B0, &qword_1004AFCF0);
  }

  else
  {
    sub_10020C758(v24);
    if (v10)
    {
      return;
    }

    v23 = v5;
    _s17ResponderInstanceCMa(0, v3, v2, v11);
    sub_10020CB70();
    if ((Dictionary.isEmpty.getter() & 1) != 0 && (swift_beginAccess(), , v12 = Dictionary.isEmpty.getter(), , (v12 & 1) == 0))
    {
      sub_1002EDAD0();
    }

    else if ((Dictionary.isEmpty.getter() & 1) == 0)
    {
      swift_beginAccess();

      v13 = Dictionary.isEmpty.getter();

      if (v13)
      {
        v14 = *(v1 + qword_100595970);
        swift_unownedRetainStrong();
        v15 = *(*v14 + 96);
        swift_beginAccess();
        (*(v23 + 16))(v7, v14 + v15, AssociatedTypeWitness);

        v16 = Dictionary.count.getter();

        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        (*(*(AssociatedConformanceWitness + 8) + 16))(v16, AssociatedTypeWitness);
        (*(v23 + 8))(v7, AssociatedTypeWitness);
        sub_1002EE150();
        return;
      }
    }

    v18 = *(v1 + qword_100595970);
    swift_unownedRetainStrong();
    v19 = *(*v18 + 96);
    swift_beginAccess();
    v20 = v23;
    (*(v23 + 16))(v7, v18 + v19, AssociatedTypeWitness);

    swift_beginAccess();

    v21 = Dictionary.count.getter();

    v22 = swift_getAssociatedConformanceWitness();
    (*(*(v22 + 8) + 16))(v21, AssociatedTypeWitness);
    (*(v20 + 8))(v7, AssociatedTypeWitness);
  }
}

uint64_t sub_1002EDAD0()
{
  v1 = v0;
  v2 = *((swift_isaMask & *v0) + 0x58);
  v3 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v44 - v7;
  v9 = v0 + qword_10059B890;
  swift_beginAccess();
  v10 = type metadata accessor for NANPublish.Configuration(0);
  sub_100012400(&v9[*(v10 + 88)], v56, &unk_1005974B0, &qword_1004AFCF0);
  if (v58 == 255)
  {
    return sub_100016290(v56, &unk_1005974B0, &qword_1004AFCF0);
  }

  if (v58)
  {
    return sub_10020C758(v56);
  }

  v49 = v6;
  v12 = v56[1];
  v54 = v56[0];
  v48 = v57;
  v13 = sub_1002EEA34();
  (*(*v13 + 216))(1);

  v14 = sub_1002EEA34();
  v15 = (v14 + *(*v14 + 104));
  v16 = v15[1];
  v53 = *v15;

  v17 = v1;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v50 = v16;

  v20 = os_log_type_enabled(v18, v19);
  v51 = v8;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = v12;
    v23 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v56[0] = v52;
    *v21 = 138412802;
    *(v21 + 4) = v17;
    *v23 = v1;
    *(v21 + 12) = 2080;
    v24 = v17;
    *(v21 + 14) = sub_100002320(v54, v22, v56);
    *(v21 + 22) = 2080;
    *(v21 + 24) = sub_100002320(v53, v50, v56);
    _os_log_impl(&_mh_execute_header, v18, v19, "%@ is attempting to starting sharing internet from %s to %s", v21, 0x20u);
    sub_100016290(v23, &qword_10058B780, &qword_100480AC0);
    v12 = v22;

    swift_arrayDestroy();

    v8 = v51;
  }

  v25 = *&v17[qword_100595970];
  swift_unownedRetainStrong();
  v26 = *(*v25 + 96);
  swift_beginAccess();
  v27 = *(v55 + 16);
  v46 = v55 + 16;
  v47 = v27;
  v27(v8, v25 + v26, AssociatedTypeWitness);

  v28 = swift_allocObject();
  v52 = v28;
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  v29[2] = v3;
  v29[3] = v2;
  v30 = v53;
  v31 = v54;
  v29[4] = v28;
  v29[5] = v31;
  v29[6] = v12;
  v29[7] = v30;
  v32 = v50;
  v29[8] = v50;
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  v34[2] = v3;
  v34[3] = v2;
  v34[4] = v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = *(AssociatedConformanceWitness + 8);
  v36 = *(v35 + 8);

  v43 = v35;
  v37 = v51;
  v36(v54, v12, v53, v32, v48, sub_1002FF618, v29, sub_1002FF8F4, v34, AssociatedTypeWitness, v43);
  v38 = v55;

  v39 = *(v38 + 8);
  v39(v37, AssociatedTypeWitness);

  swift_unownedRetainStrong();
  v40 = *(*v25 + 96);
  swift_beginAccess();
  v41 = v25 + v40;
  v42 = v49;
  v47(v49, v41, AssociatedTypeWitness);

  (*(AssociatedConformanceWitness + 408))(1, AssociatedTypeWitness);
  return (v39)(v42, AssociatedTypeWitness);
}

void sub_1002EE150()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v35 = *(v2 + 0x58);
  v3 = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v32 - v7;
  __chkstk_darwin();
  v9 = &v32 - v8;
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v1;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "%@ is attempting to stop sharing internet", v13, 0xCu);
    sub_100016290(v14, &qword_10058B780, &qword_100480AC0);
  }

  v16 = *(v10 + qword_100595970);
  swift_unownedRetainStrong();
  v17 = *(*v16 + 96);
  swift_beginAccess();
  v18 = v10;
  v19 = *(v5 + 16);
  v19(v9, v16 + v17, AssociatedTypeWitness);

  swift_beginAccess();
  v34 = v18;
  _s17ResponderInstanceCMa(0, v3, v35, v20);
  sub_10020CB70();

  v21 = Dictionary.count.getter();

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v21 <= 0xFF)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 416))(v21, AssociatedTypeWitness, AssociatedConformanceWitness);
    v23 = *(v5 + 8);
    v23(v9, AssociatedTypeWitness);
    swift_unownedRetainStrong();
    v24 = *(*v16 + 96);
    swift_beginAccess();
    v25 = v16 + v24;
    v26 = v32;
    v19(v32, v25, AssociatedTypeWitness);

    (*(*(AssociatedConformanceWitness + 8) + 24))(AssociatedTypeWitness);
    v23(v26, AssociatedTypeWitness);
    swift_unownedRetainStrong();
    v27 = *(*v16 + 96);
    swift_beginAccess();
    v28 = v16 + v27;
    v29 = v33;
    v19(v33, v28, AssociatedTypeWitness);

    (*(AssociatedConformanceWitness + 408))(0, AssociatedTypeWitness, AssociatedConformanceWitness);
    v23(v29, AssociatedTypeWitness);
    swift_unownedRetainStrong();
    v30 = v16 + *(*v16 + 760);
    swift_beginAccess();
    *(v30 + 16) = 0;
    *v30 = 0;
    *(v30 + 8) = 0;

    v31 = sub_1002EEA34();
    (*(*v31 + 216))(0);

    return;
  }

  __break(1u);
}

uint64_t sub_1002EE678(uint64_t a1)
{
  v3 = qword_10059B8C0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1002ED648(v4);
}

void sub_1002EE6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v23 - v8;
  v10 = __chkstk_darwin();
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v25 = a2;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v5 + 32;
  v23[3] = v5 + 16;
  v23[1] = v5 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v5 + 16))(v12, *(v24 + 48) + *(v5 + 72) * (v22 | (v21 << 6)), v4, v10);
      (*(v5 + 32))(v7, v12, v4);
      sub_10046EF10(v9, v7);
      (*(v5 + 8))(v9, v4);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1002EE8F8(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v19 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = *(v2 + 48) + 56 * (v11 | (v10 << 6));
      v14 = *(v12 + 16);
      v13 = *(v12 + 32);
      v15 = *v12;
      v21 = *(v12 + 48);
      v20[1] = v14;
      v20[2] = v13;
      v20[0] = v15;
      sub_100300208(v20, v18);
      sub_10046ECC0(v18, v20);
      v16 = v18[3];
      v17 = v18[4];
      sub_1000124C8(v18[1], v18[2]);
      sub_100017554(v16, v17);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v19;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_1002EEA34()
{
  v1 = v0 + qword_10059B890;
  swift_beginAccess();
  v2 = type metadata accessor for NANPublish.Configuration(0);
  sub_100012400(v1 + *(v2 + 88), v9, &unk_1005974B0, &qword_1004AFCF0);
  v3 = v10;
  if (v10 == 255)
  {
    sub_100016290(v9, &unk_1005974B0, &qword_1004AFCF0);
  }

  else
  {
    sub_10020C758(v9);
    if ((v3 & 1) == 0)
    {
      v4 = *(v0 + qword_100595970);
      swift_unownedRetainStrong();
      v5 = 480;
      goto LABEL_7;
    }
  }

  v6 = *(v1 + *(v2 + 84) + 2);
  v4 = *(v0 + qword_100595970);
  swift_unownedRetainStrong();
  if (v6 != 2)
  {
    return v4;
  }

  v5 = 472;
LABEL_7:
  v7 = *(v4 + *(*v4 + v5));

  result = v7;
  if (!v7)
  {
    return swift_unownedRetainStrong();
  }

  return result;
}

void sub_1002EEB78(unint64_t a1)
{
  v2 = v1;
  v29 = swift_isaMask & *v1;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v24 - v8;
  __chkstk_darwin();
  v11 = &v24 - v10;
  if (a1)
  {
    swift_beginAccess();
    static Duration.+ infix(_:_:)();
    if ((static Duration.< infix(_:_:)() & 1) == 0)
    {
      v2[qword_1005959B8] = 0;
      if ((a1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v25 = a1;
        *v11 = a1;
        v12 = *(v5 + 104);
        v12(v11, enum case for DispatchTimeInterval.seconds(_:), v4);
        v26 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
        v13 = swift_allocObject();
        v28 = 1000000000000000000 * a1;
        v14 = v13;
        swift_unknownObjectWeakInit();
        v15 = swift_allocObject();
        v27 = (a1 * 0xDE0B6B3A7640000uLL) >> 64;
        v16 = v15;
        v17 = v29;
        v15[2] = *(v29 + 80);
        v15[3] = *(v17 + 88);
        v15[4] = v14;
        v12(v9, enum case for DispatchTimeInterval.never(_:), v4);
        *v7 = 100;
        v12(v7, enum case for DispatchTimeInterval.milliseconds(_:), v4);
        type metadata accessor for P2PTimer(0);
        swift_allocObject();
        *&v2[qword_1005959B0] = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v11, v26, v9, v7, sub_1003002EC, v16);

        swift_beginAccess();
        static Duration.+= infix(_:_:)();
        swift_endAccess();
        v18 = v2;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412546;
          *(v21 + 4) = v18;
          *v22 = v2;
          *(v21 + 12) = 2048;
          *(v21 + 14) = v25;
          v23 = v18;
          _os_log_impl(&_mh_execute_header, v19, v20, "%@ timeout set to %lu seconds", v21, 0x16u);
          sub_100016290(v22, &qword_10058B780, &qword_100480AC0);
        }
      }
    }
  }
}

void sub_1002EEF78(uint64_t a1, void *a2)
{
  v2 = a2;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = 0xD00000000000001FLL;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = &v2[qword_10059B890];
    swift_beginAccess();
    v8 = type metadata accessor for NANPublish.Configuration(0);
    if (v7[*(v8 + 84) + 24])
    {
      if (v7[*(v8 + 84) + 24] == 1)
      {
        v9 = "Allow connection to all devices";
        v4 = 0xD000000000000032;
LABEL_11:
        v11 = sub_100002320(v4, v9 | 0x8000000000000000, &v13);

        *(v5 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v3, "Update callback configuration for: %s", v5, 0xCu);
        sub_100002A00(v6);

        return;
      }

      v10 = "Allow connection to all devices";
    }

    else
    {
      v4 = 0xD000000000000027;
      v10 = "Allow connection to paired devices only";
    }

    v9 = v10 - 32;
    goto LABEL_11;
  }
}

uint64_t sub_1002EF130(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v11)
  {
    if (*(v2 + qword_10059B898) == 1)
    {
      *&v14 = __chkstk_darwin().n128_u64[0];
      *(&v17 - 2) = v2;
      *(&v17 - 1) = a1;
      WitnessTable = swift_getWitnessTable(byte_1004AFCD0, ObjectType, v14);
      sub_10036E438(sub_100300264, &v17 - 32, ObjectType, WitnessTable);
      v16 = 0;
    }

    else
    {
      v16 = 3;
    }

    return a2(v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1002EF33C()
{
  v1 = v0;
  v2 = v0 + qword_10059B890;
  swift_beginAccess();
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);

  v5 = NANServiceName.description.getter(v4, v3);
  v7 = v6;

  v8 = v1 + qword_10059B8D0;
  swift_beginAccess();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  *(v8 + 64) = 1;

  v9 = *(v1 + qword_100595970);
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v10 = sub_1003F06BC();

  *(v1 + qword_1005959D8) = v10;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v11 = sub_1003F06D8();

  *(v1 + qword_1005959E0) = v11;
  swift_unownedRetainStrong();
  v12 = *(v9 + *(*v9 + 800));
  swift_unownedRetainStrong();

  (*(*v12 + 200))(v13);

  WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
  sub_1000C2A14();

  LOBYTE(v12) = dispatch thunk of SetAlgebra.isSuperset(of:)();

  *(v8 + 105) = v12 & 1;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  sub_1003EB084();
  v15 = v14;
  v17 = v16;

  if (v15)
  {
  }

  else
  {
    v17 = 0;
  }

  *(v8 + 100) = v17;
}

void sub_1002EF5A4(void *a1, int a2)
{
  v3 = v2;
  v89 = a2;
  v91 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = *(AssociatedTypeWitness - 8);
  v98 = AssociatedTypeWitness;
  __chkstk_darwin();
  v96 = &v87 - v5;
  v6 = swift_checkMetadataState();
  v93 = *(v6 - 8);
  v94 = v6;
  __chkstk_darwin();
  v92 = &v87 - v7;
  v90 = type metadata accessor for DispatchTime();
  v8 = *(v90 - 8);
  __chkstk_darwin();
  v10 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v87 - v11;
  v13 = (v2 + qword_10059B8C8);
  v14 = *(v2 + qword_10059B8C8 + 8);
  v88 = v13;
  if (v14)
  {
    v15 = *v13;
    v16 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = (v3 + qword_10059B8D0);
  swift_beginAccess();
  *v17 = v15;
  v17[1] = v16;

  *(v17 + 68) = *(v3 + qword_1005959D0);
  swift_endAccess();
  v18 = *(v3 + qword_100595970);
  v19 = swift_unownedRetainStrong();
  sub_10040CAE8(v19, v20, v21, v22);

  v23 = sub_100337438();

  v17[6] = v23;
  v24 = swift_unownedRetainStrong();
  sub_10040CAE8(v24, v25, v26, v27);

  v28 = sub_10033746C();

  v17[5] = v28;
  v29 = swift_unownedRetainStrong();
  sub_10040CAE8(v29, v30, v31, v32);

  v34 = sub_100337590(v33);

  v17[7] = v34;
  if (v91 + 1 >= 6)
  {
    v35 = 5;
  }

  else
  {
    v35 = 0x50403020501uLL >> (8 * (v91 + 1));
  }

  *(v17 + 33) = v35;
  *(v17 + 34) = v89;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v36 = DispatchTime.uptimeNanoseconds.getter();
  v37 = v8;
  v38 = *(v8 + 8);
  v39 = v12;
  v40 = v90;
  v38(v39, v90);
  (*(v37 + 16))(v10, v3 + qword_1005959E8, v40);
  v41 = DispatchTime.uptimeNanoseconds.getter();
  v38(v10, v40);
  if (v36 < v41)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17[11] = (v36 - v41) / 0xF4240;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v42 = sub_1003F06BC();

  v43 = *(v3 + qword_1005959D8);
  v44 = v42 >= v43;
  v45 = v42 - v43;
  if (!v44)
  {
    goto LABEL_33;
  }

  *(v17 + 33) = v45;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();

  v46 = sub_1003F06D8();

  v47 = *(v3 + qword_1005959E0);
  v44 = v46 >= v47;
  v48 = v46 - v47;
  if (!v44)
  {
    goto LABEL_34;
  }

  *(v17 + 34) = v48;
  v49 = v3 + qword_10059B890;
  swift_beginAccess();
  v50 = type metadata accessor for NANPublish.Configuration(0);
  if (*(v49 + *(v50 + 84) + 2))
  {
    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v51 = 1;
  }

  *(v17 + 65) = v51 & 1;
  if (*(v49 + *(v50 + 84) + 2) && *(v49 + *(v50 + 84) + 2) == 1)
  {
    v52 = 1;
  }

  else
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v17 + 66) = v52 & 1;
  if (*(v49 + *(v50 + 84) + 2) && *(v49 + *(v50 + 84) + 2) != 1)
  {
    v53 = 1;
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  *(v17 + 67) = v53 & 1;
  v54 = v88[1];
  if (!v54)
  {
LABEL_31:
    swift_unownedRetainStrong();
    v80 = v92;
    v81 = v93;
    v82 = v94;
    (*(v93 + 16))(v92, v18 + *(*v18 + 112), v94);

    v83 = v96;
    (*(AssociatedConformanceWitness + 152))(v82, AssociatedConformanceWitness);
    (*(v81 + 8))(v80, v82);
    memcpy(v100, v17, sizeof(v100));
    v84 = v98;
    v85 = swift_getAssociatedConformanceWitness();
    v86 = *(v85 + 32);
    sub_1002CB02C(v100, &v99);
    v86(v100, v84, v85);
    sub_1002CB088(v100);
    (*(v97 + 8))(v83, v84);
    return;
  }

  v55 = *v88;
  swift_unownedRetainStrong();

  sub_10040CAE8(v56, v57, v58, v59);

  v60 = sub_100337438();

  if ((v60 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v60 >> 16)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v61 = swift_unownedRetainStrong();
  sub_10040CAE8(v61, v62, v63, v64);

  v65 = sub_10033746C();

  if ((v65 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v65 >> 16)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v66 = swift_unownedRetainStrong();
  sub_10040CAE8(v66, v67, v68, v69);

  v70 = sub_100337594();

  if ((v70 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!(v70 >> 16))
  {
    v90 = v17[11];
    v89 = *(v17 + 64);
    swift_unownedRetainStrong();
    v71 = *(*v18 + 112);
    v88 = v54;
    v72 = v92;
    v73 = v93;
    v74 = v94;
    (*(v93 + 16))(v92, v18 + v71, v94);

    v87 = v60;
    v75 = *(AssociatedConformanceWitness + 152);
    v91 = v17;
    v76 = v65;
    v77 = v96;
    v75(v74, AssociatedConformanceWitness);
    (*(v73 + 8))(v72, v74);
    v101[0] = v55;
    v101[1] = v88;
    v102 = v87;
    v103 = v76;
    v104 = v70;
    v105 = 0u;
    memset(v106, 0, 26);
    v106[26] = v89;
    *v107 = v100[0];
    *&v107[3] = *(v100 + 3);
    v17 = v91;
    v108 = v90;
    v78 = v98;
    v79 = swift_getAssociatedConformanceWitness();
    (*(v79 + 40))(v101, v78, v79);
    sub_1002CB0DC(v101);
    (*(v97 + 8))(v77, v78);
    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
}
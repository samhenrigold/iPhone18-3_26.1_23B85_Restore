uint64_t NANPublish.Configuration.datapathConfiguration.getter()
{
  v1 = (v0 + *(type metadata accessor for NANPublish.Configuration(0) + 84));
  v2 = *v1 | (v1[1] << 8) | (v1[2] << 16);

  return v2;
}

uint64_t NANPublish.Configuration.datapathConfiguration.setter(unsigned int a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1;
  v9 = a1 >> 8;
  v10 = HIWORD(a1);
  v11 = v4 + *(type metadata accessor for NANPublish.Configuration(0) + 84);

  *v11 = v8 & 1;
  *(v11 + 1) = v9;
  *(v11 + 2) = v10;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  return result;
}

uint64_t NANPublish.Configuration.internetSharingConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NANPublish.Configuration(0) + 88);

  return sub_1002141BC(a1, v3);
}

uint64_t sub_1002110CC()
{
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8;
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v9 = &v14 - v8;
  type metadata accessor for NANPublish.Configuration(0);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v10 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = v0 + 24;
  sub_1000CB960(*(v0 + 24), v7);
  sub_1000D1274(v9, &v7[*(v5 + 32)]);
  sub_100214290(v7, v4, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v12 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  sub_100012400(v4, v2, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v2, 7);
  sub_100016290(v4, &qword_10058BB48, &unk_100483040);
  sub_100016290(v9, &unk_100595C40, &qword_100499070);
  result = sub_1002142F8(v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  ++*(v11 + 8);
  return result;
}

uint64_t NANPublish.Configuration.oweKeys.setter(uint64_t a1)
{
  v3 = type metadata accessor for NANPublish.Configuration(0);
  sub_10021422C(a1, v1 + *(v3 + 92));
  sub_1002110CC();
  return sub_1002142F8(a1, type metadata accessor for OWEKeys);
}

uint64_t (*NANPublish.Configuration.oweKeys.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  type metadata accessor for NANPublish.Configuration(0);
  return sub_10021145C;
}

uint64_t sub_10021145C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1002110CC();
  }

  return result;
}

uint64_t NANPublish.Configuration.pairingBootstrappingMethod.setter(__int16 a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.pairingCachingSupported.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.multicastAddress.setter(uint64_t a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  v4 = v1 + *(result + 108);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  *(v4 + 6) = BYTE6(a1) & 1;
  return result;
}

double NANPublish.Configuration.allowedPairedDevicesUUIDs.getter()
{
  type metadata accessor for NANPublish.Configuration(0);

  return result;
}

uint64_t NANPublish.Configuration.allowedPairedDevicesUUIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANPublish.Configuration(0) + 112);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NANPublish.Configuration.multicastServiceType.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  *(v1 + *(result + 116)) = a1 & 1;
  return result;
}

uint64_t NANPublish.Configuration.timeoutAfterSeconds.setter(uint64_t a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.pairingSetupMode.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.channelInfo.setter(uint64_t a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  v4 = v1 + *(result + 128);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  return result;
}

uint64_t NANPublish.Configuration.countryCode.setter(int a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  v4 = v1 + *(result + 132);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t NANPublish.Configuration.gtkRequired.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  *(v1 + *(result + 136)) = a1;
  return result;
}

unint64_t NANPublish.Configuration.multicastConfiguration.getter()
{
  v1 = (v0 + *(type metadata accessor for NANPublish.Configuration(0) + 140));
  v2 = *v1 | (*(v1 + 2) << 32);
  v3 = *(v1 + 6);
  v4 = *(v1 + 7) == 0;
  v5 = 0x100000000000000;
  if (v4)
  {
    v5 = 0;
  }

  return v5 | (v3 << 48) | v2;
}

uint64_t NANPublish.Configuration.multicastConfiguration.setter(uint64_t a1)
{
  result = type metadata accessor for NANPublish.Configuration(0);
  v4 = v1 + *(result + 140);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  *(v4 + 6) = BYTE6(a1) & 1;
  *(v4 + 7) = HIBYTE(a1) & 1;
  return result;
}

void NANPublish.Configuration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v75 = *(v4 - 8);
  __chkstk_darwin();
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for DispatchTimeInterval();
  v76 = *(v77 - 8);
  __chkstk_darwin();
  v7 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher._combine(_:)(*v1);
  String.lowercased()();
  String.hash(into:)();

  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(a1, *(v1 + 24));
  Hasher._combine(_:)(*(v1 + 32));
  NANMatchingFilter.hash(into:)(a1, *(v2 + 40), *(v2 + 48));
  NANMatchingFilter.hash(into:)(a1, *(v2 + 56), *(v2 + 64));
  String.hash(into:)();

  String.hash(into:)();

  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + 76));
  if (*(v1 + 77) == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v8 = *(v1 + 78);
  v9 = *(v1 + 79);
  v10 = *(v1 + 80);
  v78 = v1;
  v11 = *(v1 + 81);
  v12 = *(v1 + 82);
  v13 = *(v1 + 83);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  v14 = v78[85];
  v15 = v78[86];
  v16 = v78[87];
  v17 = v78[88];
  v18 = v78[89];
  Hasher._combine(_:)(v78[84]);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  v19 = v78;
  Hasher._combine(_:)(v18);
  v20 = type metadata accessor for NANPublish.Configuration(0);
  v21 = v76;
  v22 = v77;
  (*(v76 + 16))(v7, &v19[v20[18]], v77);
  v23 = (*(v21 + 88))(v7, v22);
  if (v23 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v21 + 96))(v7, v22);
    v24 = *v7;
    v25 = 1000000000;
LABEL_10:
    v26 = v24 * v25;
    v27 = (v24 * v25) >> 64 != (v24 * v25) >> 63;
    v28 = v24 <= 0;
    v29 = 0x7FFFFFFFFFFFFFFFLL;
    if (v28)
    {
      v29 = 0x8000000000000000;
    }

    if (v27)
    {
      v30 = v29;
    }

    else
    {
      v30 = v26;
    }

    goto LABEL_15;
  }

  if (v23 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v21 + 96))(v7, v22);
    v24 = *v7;
    v25 = 1000000;
    goto LABEL_10;
  }

  if (v23 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v21 + 96))(v7, v22);
    v24 = *v7;
    v25 = 1000;
    goto LABEL_10;
  }

  if (v23 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v21 + 96))(v7, v22);
    v30 = *v7;
  }

  else
  {
    if (v23 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v21 + 8))(v7, v22);
    }

    v30 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_15:
  Hasher._combine(_:)(v30);
  String.hash(into:)();

  Hasher._combine(_:)(v19[v20[20]]);
  v31 = &v19[v20[21]];
  NANPublish.DatapathConfiguration.hash(into:)(a1, *v31 | (v31[1] << 8), *(v31 + 1), *(v31 + 2), v31[24]);
  sub_100012400(&v19[v20[22]], &v84, &unk_1005974B0, &qword_1004AFCF0);
  if (v85[24] == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v82 = v84;
    v83[0] = *v85;
    *(v83 + 9) = *&v85[9];
    Hasher._combine(_:)(1u);
    sub_10020C6FC(&v82, &v79);
    if (v81)
    {
      sub_10020C758(&v79);
      v32 = 0;
    }

    else
    {
      v32 = v80;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    Hasher._combine(_:)(v32);
    sub_10020C758(&v82);
  }

  v33 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v35 = v34;
  Data.hash(into:)();
  sub_1000124C8(v33, v35);
  if (v19[v20[24]] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(*&v19[v20[25]]);
  Hasher._combine(_:)(v19[v20[26]]);
  v36 = &v19[v20[27]];
  if (v36[6])
  {
    LOBYTE(v37) = 0;
  }

  else
  {
    v38 = *(v36 + 2);
    v39 = *v36;
    v40 = *v36 | (*(v36 + 2) << 32);
    v41 = v40 >> 8;
    v77 = v40 >> 16;
    v42 = v40 >> 24;
    v37 = v38 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v39);
    v19 = v78;
    Hasher._combine(_:)(v41);
    Hasher._combine(_:)(v77);
    Hasher._combine(_:)(v42);
    Hasher._combine(_:)(v38);
  }

  Hasher._combine(_:)(v37);
  v77 = v20;
  v43 = *&v19[v20[28]];
  if (v43)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v43 + 16));
    v44 = *(v43 + 16);
    v45 = v74;
    if (v44)
    {
      v46 = v4;
      v47 = v75 + 16;
      v48 = *(v75 + 16);
      v49 = v43 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
      v50 = *(v75 + 72);
      v51 = (v75 + 8);
      do
      {
        v52 = v47;
        v48(v45, v49, v46);
        sub_10001ACCC(&unk_10058BB00, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v51)(v45, v46);
        v47 = v52;
        v49 += v50;
        --v44;
      }

      while (v44);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v54 = v77;
  v53 = v78;
  if (v78[*(v77 + 116)])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(*&v53[v54[30]]);
  if (v53[v54[31]] == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v55 = *&v53[v54[32]] | (*&v53[v54[32] + 4] << 32);
  if ((v55 & 0xFF00000000) == 0x300000000)
  {
    v56 = 0;
LABEL_41:
    Hasher._combine(_:)(v56);
    goto LABEL_56;
  }

  v57 = v55 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v55);
  Hasher._combine(_:)(0x801004u >> ((v55 >> 29) & 0xF8));
  if ((v55 >> 40) <= 3)
  {
    if (v57 == 2)
    {
      v58 = 0;
      goto LABEL_55;
    }

    if (v57 == 3)
    {
      v58 = 1;
      goto LABEL_55;
    }

LABEL_66:
    Hasher._combine(_:)(2uLL);
    v56 = BYTE5(v55) & 1;
    goto LABEL_41;
  }

  if (v57 == 4)
  {
    v58 = 3;
    goto LABEL_55;
  }

  if (v57 == 5)
  {
    v58 = 4;
    goto LABEL_55;
  }

  if (v57 != 6)
  {
    goto LABEL_66;
  }

  v58 = 5;
LABEL_55:
  Hasher._combine(_:)(v58);
LABEL_56:
  v59 = &v53[v54[33]];
  if (v59[2])
  {
    LOBYTE(v60) = 0;
  }

  else
  {
    v61 = *v59;
    v60 = v61 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v61);
  }

  Hasher._combine(_:)(v60);
  v62 = v53[v54[34]];
  if (v62 == 2)
  {
    v63 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v63 = v62 & 1;
  }

  Hasher._combine(_:)(v63);
  v64 = &v53[v54[35]];
  v65 = v64[7];
  if (v64[6])
  {
    LOBYTE(v66) = 0;
  }

  else
  {
    v67 = *(v64 + 2);
    v68 = *v64;
    v69 = *v64 | (*(v64 + 2) << 32);
    v70 = v69 >> 8;
    v71 = v69 >> 16;
    v72 = v69 >> 24;
    v66 = v67 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v68);
    Hasher._combine(_:)(v70);
    Hasher._combine(_:)(v71);
    Hasher._combine(_:)(v72);
    Hasher._combine(_:)(v67);
  }

  Hasher._combine(_:)(v66);
  Hasher._combine(_:)(v65);
}

Swift::Int NANPublish.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANPublish.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002128E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANPublish.Configuration.hash(into:)(v2);
  return Hasher._finalize()();
}

__n128 NANPublish.Configuration.init(instanceID:serviceName:serviceSpecificInfo:managementAddress:responderAddress:datapathConfiguration:announcementPeriod:furtherServiceDiscoveryFunction:enableFastDiscovery:authenticationType:internetSharingConfiguration:pairingBootstrappingMethod:pairingCachingSupported:publisherType:multicastAddress:allowedPairedDevicesUUIDs:multicastServiceType:timeoutAfterSeconds:pairingSetupMode:channelInfo:countryCode:gtkRequired:multicastConfiguration:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, _OWORD *a16, unsigned __int16 a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, int a26, unsigned __int8 a27, uint64_t a28)
{
  v99 = a8;
  v91 = a6;
  v88 = a3;
  v89 = a5;
  v87 = a2;
  v86 = a1;
  v108 = a28;
  v106 = a26;
  v107 = a27;
  v105 = a25;
  v104 = a24;
  v103 = a23;
  v102 = a22;
  v100 = a20;
  v101 = a21;
  v85 = a19;
  v98 = a18;
  v95 = a16;
  v96 = a15;
  v92 = a14;
  v84 = a13;
  v90 = a12;
  v94 = a11;
  v93 = a10;
  sub_10005DC58(&qword_10058BB48, &unk_100483040);
  __chkstk_darwin();
  v81 = &v66 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v66 - v32;
  v34 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v36 = &v66 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v38 = &v66 - v37;
  v80 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v79 = *(v80 - 8);
  __chkstk_darwin();
  v40 = &v66 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.init()();
  v110 = a4;
  v41 = 1;
  v97 = a17;
  if (!a17)
  {
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v41 = 0;
  }

  v42 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v42 - 8) + 56))(v38, v41, 1, v42);
  v83 = HIWORD(a7);
  v82 = a7 >> 8;
  v43 = v38;
  v66 = v38;
  v44 = v91;
  v78 = v91 >> 40;
  v77 = HIDWORD(v91);
  v76 = v91 >> 24;
  v75 = v91 >> 16;
  v74 = v91 >> 8;
  v67 = v40;
  v45 = v89;
  v73 = v89 >> 40;
  v72 = HIDWORD(v89);
  v71 = v89 >> 24;
  v70 = v89 >> 16;
  v69 = v89 >> 8;
  sub_1000CB960(a4, v36);
  sub_1000D1274(v43, &v36[*(v34 + 24)]);
  sub_100214290(v36, v33, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v46 = type metadata accessor for NANGenericServiceProtocol.Attribute(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v46 - 8) + 56))(v33, 0, 1, v46);
  v68 = a7;
  v47 = v81;
  sub_100012400(v33, v81, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v47, 7);
  sub_100016290(v33, &qword_10058BB48, &unk_100483040);
  sub_100016290(v66, &unk_100595C40, &qword_100499070);
  sub_1002142F8(v36, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v48 = v110;
  v109 = 0;
  swift_stdlib_random();
  v49 = v109;
  v50 = type metadata accessor for NANPublish.Configuration(0);
  (*(v79 + 32))(a9 + v50[23], v67, v80);
  *a9 = v86;
  v51 = v88;
  *(a9 + 8) = v87;
  *(a9 + 16) = v51;
  *(a9 + 24) = v48;
  *(a9 + 32) = v49;
  *(a9 + 40) = 2;
  *(a9 + 48) = _swiftEmptyArrayStorage;
  *(a9 + 56) = 3;
  *(a9 + 64) = _swiftEmptyArrayStorage;
  *(a9 + 72) = v85;
  *(a9 + 73) = 1;
  *(a9 + 77) = v84;
  *(a9 + 78) = v45;
  *(a9 + 79) = v69;
  *(a9 + 80) = v70;
  *(a9 + 81) = v71;
  *(a9 + 82) = v72;
  *(a9 + 83) = v73;
  *(a9 + 84) = v44;
  *(a9 + 85) = v74;
  *(a9 + 86) = v75;
  *(a9 + 87) = v76;
  *(a9 + 88) = v77;
  *(a9 + 89) = v78;
  v52 = v50[18];
  v53 = type metadata accessor for DispatchTimeInterval();
  (*(*(v53 - 8) + 32))(a9 + v52, v90, v53);
  *(a9 + v50[19]) = 1;
  *(a9 + v50[20]) = v92 & 1;
  v54 = a9 + v50[21];
  *v54 = v68 & 1;
  *(v54 + 1) = v82;
  *(v54 + 2) = v83;
  v55 = v93;
  *(v54 + 8) = v99;
  *(v54 + 16) = v55;
  *(v54 + 24) = v94;
  v56 = a9 + v50[22];
  v57 = v95;
  v58 = v95[1];
  *v56 = *v95;
  *(v56 + 16) = v58;
  result = *(v57 + 25);
  *(v56 + 25) = result;
  *(a9 + v50[24]) = v96 & 1;
  LOBYTE(v57) = v98;
  *(a9 + v50[25]) = v97;
  *(a9 + v50[26]) = v57 & 1;
  v60 = a9 + v50[27];
  v61 = v100;
  *(v60 + 4) = WORD2(v100);
  *v60 = v61;
  *(v60 + 6) = BYTE6(v61) & 1;
  *(a9 + v50[28]) = v101;
  *(a9 + v50[29]) = v102 & 1;
  *(a9 + v50[30]) = v103;
  *(a9 + v50[31]) = v104;
  v62 = a9 + v50[32];
  LODWORD(v61) = v105;
  *(v62 + 4) = WORD2(v105);
  *v62 = v61;
  v63 = a9 + v50[33];
  BYTE2(v57) = BYTE2(v106);
  *v63 = v106;
  *(v63 + 2) = BYTE2(v57) & 1;
  *(a9 + v50[34]) = v107;
  v64 = a9 + v50[35];
  v65 = v108;
  *(v64 + 4) = WORD2(v108);
  *v64 = v65;
  *(v64 + 6) = BYTE6(v65) & 1;
  *(v64 + 7) = HIBYTE(v65) & 1;
  return result;
}

uint64_t type metadata accessor for NANPublish.Configuration(uint64_t a1)
{
  result = qword_100591740;
  if (!qword_100591740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s7CoreP2P10NANPublishO28InternetSharingConfigurationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_10020C6FC(a1, v11);
  sub_10020C6FC(a2, v12);
  if (v11[40])
  {
    if (v14 == 1)
    {
      sub_10020C758(v12);
      sub_10020C758(v11);
      return 1;
    }

    goto LABEL_6;
  }

  sub_10020C6FC(v11, v9);
  if (v14)
  {

LABEL_6:
    sub_100016290(v11, &qword_100591850, &qword_10049AAB8);
    return 0;
  }

  v4 = v10;
  v5 = v13;
  if (v9[0] == v12[0] && v9[1] == v12[1])
  {

LABEL_11:
    v7 = v4 ^ v5 ^ 1u;
    goto LABEL_12;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v7 = 0;
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:
  v8 = v7;
  sub_10020C758(v11);
  return v8;
}

uint64_t sub_100213270(int a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = (a1 & 1) == 0;
  if (a1)
  {
    v16 = 1735617902;
  }

  else
  {
    v16 = 7365742;
  }

  if (v15)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  if (a5)
  {
    v18 = 1735617902;
  }

  else
  {
    v18 = 7365742;
  }

  if (a5)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  if (v16 == v18 && v17 == v19)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v21 = a5 & 0xFF00;
  if ((a1 & 0xFF00) == 0x200)
  {
    if (v21 != 512)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (v21 == 512)
    {
      goto LABEL_62;
    }

    if ((a1 & 0x100) != 0)
    {
      v22 = 0x614D6F54796E616DLL;
    }

    else
    {
      v22 = 0x6E614D6F54656E6FLL;
    }

    if ((a1 & 0x100) != 0)
    {
      v23 = 0xEA0000000000796ELL;
    }

    else
    {
      v23 = 0xE900000000000079;
    }

    if ((a5 & 0x100) != 0)
    {
      v24 = 0x614D6F54796E616DLL;
    }

    else
    {
      v24 = 0x6E614D6F54656E6FLL;
    }

    if ((a5 & 0x100) != 0)
    {
      v25 = 0xEA0000000000796ELL;
    }

    else
    {
      v25 = 0xE900000000000079;
    }

    if (v22 == v24 && v23 == v25)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_62;
      }
    }
  }

  if (BYTE2(a1))
  {
    if (BYTE2(a1) == 1)
    {
      v27 = 0x656D69746C616572;
    }

    else
    {
      v27 = 0x6E6574614C776F6CLL;
    }

    if (BYTE2(a1) == 1)
    {
      v28 = 0xE800000000000000;
    }

    else
    {
      v28 = 0xEA00000000007963;
    }
  }

  else
  {
    v28 = 0xE800000000000000;
    v27 = 0x6576697470616461;
  }

  v29 = 0xE800000000000000;
  v30 = 0x656D69746C616572;
  if (BYTE2(a5) != 1)
  {
    v30 = 0x6E6574614C776F6CLL;
    v29 = 0xEA00000000007963;
  }

  if (BYTE2(a5))
  {
    v31 = v30;
  }

  else
  {
    v31 = 0x6576697470616461;
  }

  if (BYTE2(a5))
  {
    v32 = v29;
  }

  else
  {
    v32 = 0xE800000000000000;
  }

  if (v27 != v31 || v28 != v32)
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_57;
    }

LABEL_62:
    v39 = 0;
    return v39 & 1;
  }

LABEL_57:
  _s7CoreP2P25NANGenericServiceProtocolV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a6);
  if ((v34 & 1) == 0 || (sub_1000BEFD0(a3, a7) & 1) == 0)
  {
    goto LABEL_62;
  }

  v35 = 0x6E4F646572696170;
  v36 = 0xEA0000000000796CLL;
  if (a4)
  {
    if (a4 == 1)
    {
      v37 = 0x6972696150796E61;
      v38 = 0xEA0000000000676ELL;
    }

    else
    {
      v38 = 0xE300000000000000;
      v37 = 7105633;
    }
  }

  else
  {
    v37 = 0x6E4F646572696170;
    v38 = 0xEA0000000000796CLL;
  }

  if (a8)
  {
    if (a8 == 1)
    {
      v35 = 0x6972696150796E61;
      v36 = 0xEA0000000000676ELL;
    }

    else
    {
      v36 = 0xE300000000000000;
      v35 = 7105633;
    }
  }

  if (v37 == v35 && v38 == v36)
  {
    v39 = 1;
  }

  else
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v39 & 1;
}

uint64_t _s7CoreP2P10NANPublishO13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_123;
  }

  v4 = String.lowercased()();
  v5 = String.lowercased()();
  if (v4._countAndFlagsBits == v5._countAndFlagsBits && v4._object == v5._object)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  _s7CoreP2P25NANGenericServiceProtocolV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 3), *(a2 + 3));
  if ((v8 & 1) == 0)
  {
    goto LABEL_123;
  }

  if (a1[32] != a2[32])
  {
    goto LABEL_123;
  }

  v9 = *(a1 + 6);
  v10 = *(a2 + 6);
  if ((sub_1000B2BD8() & 1) == 0)
  {
    goto LABEL_123;
  }

  if ((sub_1000BCCE0(v9, v10) & 1) == 0)
  {
    goto LABEL_123;
  }

  v11 = *(a1 + 8);
  v12 = *(a2 + 8);
  if ((sub_1000B2BD8() & 1) == 0 || (sub_1000BCCE0(v11, v12) & 1) == 0)
  {
    goto LABEL_123;
  }

  v13 = 0xEB00000000646574;
  v14 = 0x6963696C6F736E75;
  if (a1[72])
  {
    if (a1[72] == 1)
    {
      v15 = 0x65746963696C6F73;
      v16 = 0xE900000000000064;
    }

    else
    {
      v15 = 0xD000000000000017;
      v16 = 0x80000001004B4F10;
    }
  }

  else
  {
    v15 = 0x6963696C6F736E75;
    v16 = 0xEB00000000646574;
  }

  if (a2[72])
  {
    if (a2[72] == 1)
    {
      v14 = 0x65746963696C6F73;
      v13 = 0xE900000000000064;
    }

    else
    {
      v14 = 0xD000000000000017;
      v13 = 0x80000001004B4F10;
    }
  }

  if (v15 == v14 && v16 == v13)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  if (a1[73])
  {
    v18 = 0x73616369746C756DLL;
  }

  else
  {
    v18 = 0x74736163696E75;
  }

  if (a1[73])
  {
    v19 = 0xE900000000000074;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  if (a2[73])
  {
    v20 = 0x73616369746C756DLL;
  }

  else
  {
    v20 = 0x74736163696E75;
  }

  if (a2[73])
  {
    v21 = 0xE900000000000074;
  }

  else
  {
    v21 = 0xE700000000000000;
  }

  if (v18 == v20 && v19 == v21)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  if (a1[74])
  {
    v23 = 0x65746963696C6F73;
  }

  else
  {
    v23 = 1701736302;
  }

  if (a1[74])
  {
    v24 = 0xEB00000000785464;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  if (a2[74])
  {
    v25 = 0x65746963696C6F73;
  }

  else
  {
    v25 = 1701736302;
  }

  if (a2[74])
  {
    v26 = 0xEB00000000785464;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  if (v23 == v25 && v24 == v26)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  if (a1[75])
  {
    v28 = 0x757145746F4E7874;
  }

  else
  {
    v28 = 0x526C617571457874;
  }

  if (a1[75])
  {
    v29 = 0xEC00000078526C61;
  }

  else
  {
    v29 = 0xE900000000000078;
  }

  if (a2[75])
  {
    v30 = 0x757145746F4E7874;
  }

  else
  {
    v30 = 0x526C617571457874;
  }

  if (a2[75])
  {
    v31 = 0xEC00000078526C61;
  }

  else
  {
    v31 = 0xE900000000000078;
  }

  if (v28 == v30 && v29 == v31)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  if (a1[76] != a2[76])
  {
    goto LABEL_123;
  }

  v33 = a1[77];
  v34 = a2[77];
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      goto LABEL_123;
    }
  }

  else
  {
    if (v34 == 2)
    {
      goto LABEL_123;
    }

    if (v33)
    {
      v35 = 7561575;
    }

    else
    {
      v35 = 0x7055776F6C6C6F66;
    }

    if (v33)
    {
      v36 = 0xE300000000000000;
    }

    else
    {
      v36 = 0xE800000000000000;
    }

    if (v34)
    {
      v37 = 7561575;
    }

    else
    {
      v37 = 0x7055776F6C6C6F66;
    }

    if (v34)
    {
      v38 = 0xE300000000000000;
    }

    else
    {
      v38 = 0xE800000000000000;
    }

    if (v35 == v37 && v36 == v38)
    {
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        goto LABEL_123;
      }
    }
  }

  v40 = *(a1 + 41);
  v41 = *(a2 + 41);
  *v125 = *(a1 + 78);
  *&v125[4] = v40;
  if (*v125 != *(a2 + 78) || v40 != v41)
  {
    goto LABEL_123;
  }

  v43 = *(a1 + 44);
  v44 = *(a2 + 44);
  *v125 = *(a1 + 21);
  *&v125[4] = v43;
  if (*v125 != *(a2 + 21) || v43 != v44)
  {
    goto LABEL_123;
  }

  v46 = type metadata accessor for NANPublish.Configuration(0);
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_123;
  }

  if ((sub_10003051C() & 1) == 0)
  {
    goto LABEL_123;
  }

  if (a1[v46[20]] != a2[v46[20]])
  {
    goto LABEL_123;
  }

  v47 = v46[21];
  v48 = &a1[v47];
  v49 = a1[v47];
  v50 = a1[v47 + 1];
  v51 = a1[v47 + 2];
  v52 = *&a1[v47 + 8];
  v53 = *&a1[v47 + 16];
  v54 = &a2[v47];
  if ((sub_100213270(v49 | (v50 << 8) | (v51 << 16), v52, v53, v48[24], *v54 | (v54[1] << 8) | (v54[2] << 16), *(v54 + 1), *(v54 + 2), v54[24]) & 1) == 0)
  {
    goto LABEL_123;
  }

  v55 = v46[22];
  sub_100012400(&a1[v55], v125, &unk_1005974B0, &qword_1004AFCF0);
  sub_100012400(&a2[v55], &v127, &unk_1005974B0, &qword_1004AFCF0);
  if (v126 == 255)
  {
    if (v128[24] == 255)
    {
      sub_100016290(v125, &unk_1005974B0, &qword_1004AFCF0);
      goto LABEL_117;
    }

LABEL_122:
    sub_100016290(v125, &qword_1005915C8, &qword_100499EC0);
    goto LABEL_123;
  }

  sub_100012400(v125, v124, &unk_1005974B0, &qword_1004AFCF0);
  if (v128[24] == 255)
  {
    sub_10020C758(v124);
    goto LABEL_122;
  }

  v122 = v127;
  v123[0] = *v128;
  *(v123 + 9) = *&v128[9];
  v56 = _s7CoreP2P10NANPublishO28InternetSharingConfigurationO2eeoiySbAE_AEtFZ_0(v124, &v122);
  sub_10020C758(&v122);
  sub_10020C758(v124);
  sub_100016290(v125, &unk_1005974B0, &qword_1004AFCF0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_123;
  }

LABEL_117:
  v57 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v59 = v58;
  v60 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v62 = v61;
  v63 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v57, v59, v60, v61);
  sub_1000124C8(v60, v62);
  sub_1000124C8(v57, v59);
  if (!v63)
  {
    goto LABEL_123;
  }

  v64 = v46[24];
  v65 = a1[v64];
  v66 = a2[v64];
  if (v65)
  {
    if (!v66)
    {
      goto LABEL_123;
    }
  }

  else if (v66)
  {
    goto LABEL_123;
  }

  if (*&a1[v46[25]] != *&a2[v46[25]] || a1[v46[26]] != a2[v46[26]])
  {
    goto LABEL_123;
  }

  v69 = v46[27];
  v70 = &a1[v69];
  v71 = a1[v69 + 6];
  v72 = &a2[v69];
  if (v71)
  {
    if ((v72[6] & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  else
  {
    if (v72[6])
    {
      goto LABEL_123;
    }

    v73 = *v70 | (*(v70 + 2) << 32);
    v74 = *v72 | (*(v72 + 2) << 32);
    v75.i64[0] = 0xFFFFFFFFFFFFLL;
    v75.i64[1] = 0xFFFFFFFFFFFFLL;
    v76 = vandq_s8(vdupq_n_s64(v73), v75);
    v77 = vshlq_u64(v76, xmmword_1004817A0);
    v78 = vandq_s8(vdupq_n_s64(v74), v75);
    v79 = vshlq_u64(v78, xmmword_1004817A0);
    v80 = vshlq_u64(v78, xmmword_100481790);
    v125[0] = v73;
    *v76.i8 = vmovn_s64(vshlq_u64(v76, xmmword_100481790));
    *v77.i8 = vmovn_s64(v77);
    v77.i16[1] = v77.i16[2];
    v77.i16[2] = v76.i16[0];
    v77.i16[3] = v76.i16[2];
    *&v125[1] = vmovn_s16(v77).u32[0];
    v125[5] = BYTE5(v73);
    v124[0] = v74;
    *v76.i8 = vmovn_s64(v80);
    *v80.i8 = vmovn_s64(v79);
    v80.i16[1] = v80.i16[2];
    v80.i16[2] = v76.i16[0];
    v80.i16[3] = v76.i16[2];
    *&v124[1] = vmovn_s16(v80).u32[0];
    v124[5] = BYTE5(v74);
    if (*v125 != *v124 || *&v125[4] != *&v124[4])
    {
      goto LABEL_123;
    }
  }

  v82 = v46[28];
  v83 = *&a1[v82];
  v84 = *&a2[v82];
  if (v83)
  {
    if (!v84)
    {
      goto LABEL_123;
    }

    v85 = sub_1000BD0EC(v83, v84);

    if ((v85 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  else if (v84)
  {
    goto LABEL_123;
  }

  v86 = v46[29];
  v87 = a1[v86];
  v88 = a2[v86];
  if (v87)
  {
    if (!v88)
    {
      goto LABEL_123;
    }
  }

  else if (v88)
  {
    goto LABEL_123;
  }

  if (*&a1[v46[30]] != *&a2[v46[30]])
  {
    goto LABEL_123;
  }

  v89 = v46[31];
  v90 = a1[v89];
  v91 = a2[v89];
  if (v90 == 2)
  {
    if (v91 != 2)
    {
      goto LABEL_123;
    }
  }

  else
  {
    if (v91 == 2)
    {
      goto LABEL_123;
    }

    if (v90)
    {
      v92 = 0x6F43726F466B7361;
    }

    else
    {
      v92 = 0x6C7065526F747561;
    }

    if (v90)
    {
      v93 = 0xED0000746E65736ELL;
    }

    else
    {
      v93 = 0xE900000000000079;
    }

    if (v91)
    {
      v94 = 0x6F43726F466B7361;
    }

    else
    {
      v94 = 0x6C7065526F747561;
    }

    if (v91)
    {
      v95 = 0xED0000746E65736ELL;
    }

    else
    {
      v95 = 0xE900000000000079;
    }

    if (v92 == v94 && v93 == v95)
    {
    }

    else
    {
      v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v96 & 1) == 0)
      {
        goto LABEL_123;
      }
    }
  }

  v97 = v46[32];
  v98 = *&a1[v97] | (*&a1[v97 + 4] << 32);
  v99 = *&a2[v97] | (*&a2[v97 + 4] << 32);
  v100 = v99 & 0xFF00000000;
  if ((v98 & 0xFF00000000) != 0x300000000)
  {
    if (v100 == 0x300000000 || v98 != v99 || ((0x801004u >> ((v98 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v99 >> 29) & 0xF8)) & 0xFFC))
    {
      goto LABEL_123;
    }

    v106 = v98 >> 40;
    v107 = v99 >> 40;
    if (v106 <= 3)
    {
      if (v106 == 2)
      {
        if (v107 != 2)
        {
          goto LABEL_123;
        }

        goto LABEL_169;
      }

      if (v106 == 3)
      {
        if (v107 != 3)
        {
          goto LABEL_123;
        }

        goto LABEL_169;
      }
    }

    else
    {
      switch(v106)
      {
        case 4:
          if (v107 != 4)
          {
            goto LABEL_123;
          }

          goto LABEL_169;
        case 5:
          if (v107 != 5)
          {
            goto LABEL_123;
          }

          goto LABEL_169;
        case 6:
          if (v107 != 6)
          {
            goto LABEL_123;
          }

          goto LABEL_169;
      }
    }

    if (v107 - 2) < 5 || ((v107 ^ v106))
    {
      goto LABEL_123;
    }

    goto LABEL_169;
  }

  if (v100 != 0x300000000)
  {
    goto LABEL_123;
  }

LABEL_169:
  v101 = v46[33];
  v102 = &a1[v101];
  v103 = a1[v101 + 2];
  v104 = &a2[v101];
  v105 = a2[v101 + 2];
  if (v103)
  {
    if (!v105)
    {
      goto LABEL_123;
    }
  }

  else
  {
    if (*v102 != *v104)
    {
      LOBYTE(v105) = 1;
    }

    if (v105)
    {
      goto LABEL_123;
    }
  }

  v108 = v46[34];
  v109 = a1[v108];
  v110 = a2[v108];
  if (v109 != 2)
  {
    v67 = 0;
    if (v110 == 2 || ((v110 ^ v109) & 1) != 0)
    {
      return v67 & 1;
    }

    goto LABEL_189;
  }

  if (v110 != 2)
  {
LABEL_123:
    v67 = 0;
    return v67 & 1;
  }

LABEL_189:
  v111 = v46[35];
  v112 = *&a1[v111] | (*&a1[v111 + 4] << 32);
  v113 = a1[v111 + 6];
  v114 = a1[v111 + 7];
  v115 = &a2[v111];
  v116 = *v115 | (*(v115 + 2) << 32);
  v117 = v115[6];
  v118 = v115[7];
  v125[0] = v113;
  if (v114)
  {
    v119 = 0x100000000000000;
  }

  else
  {
    v119 = 0;
  }

  v120 = v119 | (v113 << 48);
  v125[0] = v117;
  if (v118)
  {
    v121 = 0x100000000000000;
  }

  else
  {
    v121 = 0;
  }

  v67 = sub_10008A4E4(v120 | v112, v121 | (v117 << 48) | v116);
  return v67 & 1;
}

unint64_t _s7CoreP2P10NANPublishO11PublishTypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100553208, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002141BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_1005974B0, &qword_1004AFCF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021422C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OWEKeys(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100214290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002142F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10021435C()
{
  result = qword_100591630;
  if (!qword_100591630)
  {
    result = swift_getWitnessTable("9P\v", &type metadata for NANPublish.PublishType, v0, v1);
    atomic_store(result, &qword_100591630);
  }

  return result;
}

unint64_t sub_1002143B4()
{
  result = qword_100591638;
  if (!qword_100591638)
  {
    result = swift_getWitnessTable("!O\v", &type metadata for NANPublish.SolicitedTransmissionType, v0, v1);
    atomic_store(result, &qword_100591638);
  }

  return result;
}

unint64_t sub_10021440C()
{
  result = qword_100591640;
  if (!qword_100591640)
  {
    result = swift_getWitnessTable("\tN\v", &type metadata for NANPublish.EventCondition, v0, v1);
    atomic_store(result, &qword_100591640);
  }

  return result;
}

unint64_t sub_100214494()
{
  result = qword_100591658;
  if (!qword_100591658)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPublish.FurtherServiceDiscoveryFunction, &type metadata for NANPublish.FurtherServiceDiscoveryFunction, v0, v1);
    atomic_store(result, &qword_100591658);
  }

  return result;
}

unint64_t sub_1002144EC()
{
  result = qword_100591660;
  if (!qword_100591660)
  {
    result = swift_getWitnessTable("YK\v", &type metadata for NANPublish.InternetSharingConfiguration, v0, v1);
    atomic_store(result, &qword_100591660);
  }

  return result;
}

unint64_t sub_100214574()
{
  result = qword_100591678;
  if (!qword_100591678)
  {
    result = swift_getWitnessTable("1K\v", &type metadata for NANPublish.PairSetupMode, v0, v1);
    atomic_store(result, &qword_100591678);
  }

  return result;
}

unint64_t sub_1002145CC()
{
  result = qword_100591680;
  if (!qword_100591680)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPublish.DatapathConfiguration, &type metadata for NANPublish.DatapathConfiguration, v0, v1);
    atomic_store(result, &qword_100591680);
  }

  return result;
}

uint64_t sub_100214620(uint64_t a1)
{
  result = sub_10001ACCC(&qword_100591688, type metadata accessor for NANPublish.Configuration, protocol conformance descriptor for NANPublish.Configuration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100214678(uint64_t a1)
{
  *(a1 + 8) = sub_10001ACCC(&qword_1005916D0, type metadata accessor for NANPublish.Configuration, protocol conformance descriptor for NANPublish.Configuration);
  result = sub_10001ACCC(&qword_1005916D8, type metadata accessor for NANPublish.Configuration, protocol conformance descriptor for NANPublish.Configuration);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100214794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002147D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10021481C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100214864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1002148AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100214928(uint64_t a1)
{
  sub_1001AF1C0(319, &qword_100591750, &type metadata for NANPublish.FurtherServiceDiscoveryFunction);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DispatchTimeInterval();
    if (v2 <= 0x3F)
    {
      sub_1001AF1C0(319, &qword_100591758, &type metadata for NANPublish.InternetSharingConfiguration);
      if (v3 <= 0x3F)
      {
        type metadata accessor for OWEKeys(319);
        if (v4 <= 0x3F)
        {
          sub_1001AF1C0(319, &qword_10058FB30, &type metadata for LongTermPairingKeys.AuthenticationType);
          if (v5 <= 0x3F)
          {
            sub_1001AF1C0(319, &qword_10058E810, &type metadata for WiFiAddress);
            if (v6 <= 0x3F)
            {
              sub_1001B2880(319);
              if (v7 <= 0x3F)
              {
                sub_1001AF1C0(319, &unk_10058FB48, &type metadata for MulticastServiceType);
                if (v8 <= 0x3F)
                {
                  sub_1001AF1C0(319, &qword_100591760, &type metadata for NANPublish.PairSetupMode);
                  if (v9 <= 0x3F)
                  {
                    sub_1001AF1C0(319, &qword_10058E808, &type metadata for Channel);
                    if (v10 <= 0x3F)
                    {
                      sub_1001AF1C0(319, &qword_10058E800, &type metadata for CountryCode);
                      if (v11 <= 0x3F)
                      {
                        sub_1001AF1C0(319, &unk_100591768, &type metadata for Bool);
                        if (v12 <= 0x3F)
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

unint64_t sub_100214BE8()
{
  result = qword_100591818;
  if (!qword_100591818)
  {
    result = swift_getWitnessTable("yM\v", &type metadata for NANPublish.FurtherServiceDiscoveryFunction, v0, v1);
    atomic_store(result, &qword_100591818);
  }

  return result;
}

unint64_t sub_100214C3C()
{
  result = qword_100591820;
  if (!qword_100591820)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPublish.EventCondition, &type metadata for NANPublish.EventCondition, v0, v1);
    atomic_store(result, &qword_100591820);
  }

  return result;
}

unint64_t sub_100214C90()
{
  result = qword_100591828;
  if (!qword_100591828)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPublish.SolicitedTransmissionType, &type metadata for NANPublish.SolicitedTransmissionType, v0, v1);
    atomic_store(result, &qword_100591828);
  }

  return result;
}

unint64_t sub_100214CE4()
{
  result = qword_100591830;
  if (!qword_100591830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPublish.PublishType, &type metadata for NANPublish.PublishType, v0, v1);
    atomic_store(result, &qword_100591830);
  }

  return result;
}

CoreP2P::Channel::Band_optional __swiftcall Channel.Band.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 128)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (rawValue == 16)
  {
    v2.value = CoreP2P_Channel_Band_fiveGHz;
  }

  else
  {
    v2.value = v1;
  }

  if (rawValue == 4)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t NANBitmap.Channel.channel.getter(unint64_t a1, int8x8_t a2)
{
  v2 = a1 >> 16;
  v3 = HIDWORD(a1);
  if (qword_10058AAC0 != -1)
  {
    v44 = a1;
    swift_once();
    LODWORD(a1) = v44;
  }

  v4 = a1;
  v5 = off_100591878 + 17;
  v6 = *(off_100591878 + 2) + 1;
  do
  {
    if (!--v6)
    {
      return 0x300000000;
    }

    v7 = v5 + 16;
    v8 = v5[15];
    v5 += 16;
  }

  while (v8 != a1);
  v9 = *v7;
  v10 = v7[1];
  v11 = *(v7 + 7);
  if (a1 < 0x83u)
  {
    result = 0x300000000;
    if ((v2 ^ (v2 - 1)) <= (v2 - 1))
    {
      return result;
    }

    a2.i32[0] = v3;
    if (vaddlv_u8(vcnt_s8(a2)) > 1u)
    {
      return result;
    }

    v13 = __clz(__rbit32(v2 | 0x10000));
    if (*(v11 + 16) <= v13)
    {
      return result;
    }

    v14 = *(v11 + 4 * v13 + 32);
    v15 = qword_10058AAC8;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = *(off_100591880 + 2);
    if (v16)
    {
      v17 = off_100591880 + 32;
      do
      {
        if (((0x801004u >> (8 * v9)) & 0xFFC) != (0x801004u >> (8 * *v17)))
        {
          goto LABEL_52;
        }

        v36 = v17[1];
        if (v36 <= 3)
        {
          if (v36 == 2)
          {
            if (v10 == 2)
            {
              goto LABEL_70;
            }

            goto LABEL_52;
          }

          if (v36 == 3)
          {
            if (v10 == 3)
            {
              goto LABEL_70;
            }

            goto LABEL_52;
          }
        }

        else
        {
          switch(v36)
          {
            case 4u:
              if (v10 == 4)
              {
                goto LABEL_70;
              }

              goto LABEL_52;
            case 5u:
              if (v10 == 5)
              {
                goto LABEL_70;
              }

              goto LABEL_52;
            case 6u:
              if (v10 == 6)
              {
                goto LABEL_70;
              }

              goto LABEL_52;
          }
        }

        if ((v10 - 2) >= 5u && ((v36 ^ v10) & 1) == 0)
        {
LABEL_70:
          v37 = *(v17 + 1);
          v38 = (v37 + 32);
          v39 = *(v37 + 16) + 1;
          while (--v39)
          {
            v40 = v38 + 4;
            v41 = *v38;
            v38 += 4;
            if (v41 == v14)
            {
              v42 = *(v40 - 1);
              v43 = __clz(__rbit32(v3 | 0x100));
              if (*(v42 + 16) <= v43)
              {
                goto LABEL_76;
              }

              v32 = v42 + 4 * v43;
              goto LABEL_75;
            }
          }

          goto LABEL_76;
        }

LABEL_52:
        v17 += 16;
        --v16;
      }

      while (v16);
    }

    v45 = v14;
LABEL_80:
    sub_1000276D8();

    return v45 | (v9 << 32) | (v10 << 40);
  }

  v18 = a1;
  result = 0x300000000;
  if ((v3 & (v3 - 1)) != 0 || (v18 & 0xFF000000) != 0x1000000)
  {
    return result;
  }

  v19 = __clz(__rbit32(v3 | 0x100));
  if (v4 == 132)
  {
    v20 = v19 == 1;
  }

  else
  {
    v20 = v7[1];
  }

  v21 = qword_10058AAC8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = BYTE2(v18);
  v23 = *(off_100591880 + 2);
  if (!v23)
  {
LABEL_47:
    v33 = *(v11 + 16);
    v34 = 32;
    do
    {
      if (!v33)
      {
        goto LABEL_76;
      }

      v35 = *(v11 + v34);
      v34 += 4;
      --v33;
    }

    while (v35 != BYTE2(v18));
LABEL_50:
    v45 = v22;
    goto LABEL_80;
  }

  v24 = off_100591880 + 32;
  while (1)
  {
    if (((0x801004u >> (8 * v9)) & 0xFFC) != (0x801004u >> (8 * *v24)))
    {
      goto LABEL_24;
    }

    v25 = v24[1];
    if (v25 <= 3)
    {
      break;
    }

    switch(v25)
    {
      case 4u:
        if (v20 == 4)
        {
          goto LABEL_42;
        }

        break;
      case 5u:
        if (v20 == 5)
        {
          goto LABEL_42;
        }

        break;
      case 6u:
        if (v20 == 6)
        {
          goto LABEL_42;
        }

        break;
      default:
        goto LABEL_40;
    }

LABEL_24:
    v24 += 16;
    if (!--v23)
    {
      goto LABEL_47;
    }
  }

  if (v25 == 2)
  {
    if (v20 == 2)
    {
      goto LABEL_42;
    }

    goto LABEL_24;
  }

  if (v25 == 3)
  {
    if (v20 == 3)
    {
      goto LABEL_42;
    }

    goto LABEL_24;
  }

LABEL_40:
  if (v20 - 2) < 5u || ((v25 ^ v20))
  {
    goto LABEL_24;
  }

LABEL_42:
  v26 = *(v24 + 1);
  v27 = (v26 + 32);
  v28 = *(v26 + 16) + 1;
  do
  {
    if (!--v28)
    {
      goto LABEL_76;
    }

    v29 = v27 + 4;
    v30 = *v27;
    v27 += 4;
  }

  while (v30 != BYTE2(v18));
  v31 = *(v29 - 1);
  if (*(v31 + 16) > v19)
  {
    v32 = v31 + 4 * v19;
LABEL_75:
    v22 = *(v32 + 32);
    goto LABEL_50;
  }

LABEL_76:

  return 0x300000000;
}

unint64_t Channel.init<A>(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v5 = *(a2 - 8);
  __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v21 - v9;
  (*(v5 + 16))(&v21 - v9, a1, a2, v8);
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v11 = dispatch thunk of static Comparable.>= infix(_:_:)(), result = (*(v5 + 8))(v7, a2), (v11))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 31)
    {
      goto LABEL_13;
    }

    v21 = a1;
    v22 = -1;
    v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v13)
    {
      if (v14 <= 32)
      {
        goto LABEL_11;
      }

      sub_100218A1C();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v15 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v5 + 8))(v7, a2);
      a1 = v21;
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a1 = v21;
      if (v14 < 33)
      {
LABEL_12:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_13;
      }

      sub_100218A1C();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v16 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v5 + 8))(v7, a2);
      if ((v16 & 1) == 0)
      {
LABEL_13:
        v18 = dispatch thunk of BinaryInteger._lowWord.getter();
        v19 = *(v5 + 8);
        v19(v10, a2);
        v20 = sub_10003B238(v18);
        v19(a1, a2);
        return v20 & 0xFFFFFFFFFFFFLL;
      }
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v17 = dispatch thunk of static Comparable.> infix(_:_:)();
    (*(v5 + 8))(v7, a2);
    a1 = v21;
    if (v17)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

int *Channel.nanPrimary.unsafeMutableAddressor()
{
  if (qword_10058AAA8 != -1)
  {
    swift_once();
  }

  return &static Channel.nanPrimary;
}

unint64_t Channel.init(_:band:bandwidth:)(unsigned int a1, char a2, char a3)
{
  LOBYTE(v5) = a2;
  HIBYTE(v5) = a3;
  sub_1000276D8();
  return a1 | (v5 << 32);
}

int *Channel.awdlSocial2GHz.unsafeMutableAddressor()
{
  if (qword_10058AA90 != -1)
  {
    swift_once();
  }

  return &static Channel.awdlSocial2GHz;
}

unint64_t Channel.init<A, B>(channel:operatingClass:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a2;
  v81 = *(a6 + 8);
  v70[3] = *(*(v81 + 24) + 16);
  v70[2] = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v70[1] = v70 - v9;
  v82 = *(a4 - 8);
  __chkstk_darwin();
  v79 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  __chkstk_darwin();
  v12 = v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = v70 - v14;
  v17 = *(v16 + 16);
  v73 = a1;
  v18 = a1;
  v19 = v16;
  v17(v70 - v14, v18, a3, v13);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v20 = dispatch thunk of static Comparable.>= infix(_:_:)();
    result = (*(v19 + 8))(v12, a3);
    if ((v20 & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 31)
  {
    goto LABEL_13;
  }

  v71 = v19;
  v90 = -1;
  v22 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v23 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v22)
  {
    if (v23 <= 32)
    {
      goto LABEL_11;
    }

    sub_100218A1C();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v24 = dispatch thunk of static Comparable.< infix(_:_:)();
    v19 = v71;
LABEL_9:
    (*(v19 + 8))(v12, a3);
    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v25 = dispatch thunk of static Comparable.> infix(_:_:)();
    v19 = v71;
    (*(v71 + 8))(v12, a3);
    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v19 = v71;
  if (v23 >= 33)
  {
    sub_100218A1C();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v24 = dispatch thunk of static Comparable.< infix(_:_:)();
    goto LABEL_9;
  }

LABEL_12:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_13:
  v26 = dispatch thunk of BinaryInteger._lowWord.getter();
  v29 = *(v19 + 8);
  v28 = v19 + 8;
  v27 = v29;
  v29(v15, a3);
  if (qword_10058AAC0 != -1)
  {
    goto LABEL_69;
  }

  while (1)
  {
    v30 = off_100591878;
    v75 = *(off_100591878 + 2);
    if (!v75)
    {
      break;
    }

    v70[0] = v27;
    v31 = 0;
    v72 = (v82 + 16);
    v76 = (v82 + 8);
    v77 = off_100591878 + 32;
    v74 = off_100591878;
    while (v31 < v30[2])
    {
      v33 = &v77[16 * v31];
      v34 = *v33;
      v78 = v33[1];
      v80 = v33[2];
      v82 = *(v33 + 1);

      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        v35 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v36 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v35)
        {
          if (v36 > 8)
          {
            v84 = v34;
            sub_100218A70();
            v37 = v28;
            v38 = v79;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v27 = dispatch thunk of static Equatable.== infix(_:_:)();
            v32 = *v76;
            v39 = v38;
            v28 = v37;
            (*v76)(v39, a4);
            v40 = v82;
            if ((v27 & 1) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_39;
          }

          v71 = v28;
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v49 = v79;
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v50 = v83;
          v27 = dispatch thunk of static Comparable.>= infix(_:_:)();
          v32 = *v76;
          (*v76)(v49, a4);
          if ((v27 & 1) == 0)
          {
            v28 = v71;
            v30 = v74;
            goto LABEL_19;
          }

          (*v72)(v49, v50, a4);
          v27 = dispatch thunk of BinaryInteger._lowWord.getter();
          v32(v49, a4);
          v45 = v34 == v27;
          v28 = v71;
          goto LABEL_31;
        }

        v41 = a3;
        v46 = v28;
        if (v36 >= 8)
        {
          v85 = v34;
          sub_100218A70();
          v51 = v79;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v76;
          (*v76)(v51, a4);
          v28 = v46;
LABEL_38:
          a3 = v41;
          v30 = v74;
          v40 = v82;
          if ((v27 & 1) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_39;
        }

        v47 = v79;
        (*v72)(v79, v83, a4);
        v27 = dispatch thunk of BinaryInteger._lowWord.getter();
        v32 = *v76;
        (*v76)(v47, a4);
        v45 = v34 == v27;
        v28 = v46;
      }

      else
      {
        v41 = a3;
        v42 = v28;
        v43 = v83;
        if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 8)
        {
          v89 = v34;
          sub_100218A70();
          v48 = v79;
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v76;
          (*v76)(v48, a4);
          v28 = v42;
          goto LABEL_38;
        }

        v27 = v79;
        (*v72)(v79, v43, a4);
        v44 = dispatch thunk of BinaryInteger._lowWord.getter();
        v32 = *v76;
        (*v76)(v27, a4);
        v45 = v34 == v44;
        v28 = v42;
      }

      a3 = v41;
LABEL_31:
      v30 = v74;
      v40 = v82;
      if (!v45)
      {
        goto LABEL_19;
      }

LABEL_39:
      v52 = v80;
      if ((v80 - 4) > 2)
      {
        v67 = *(v40 + 16);
        v68 = (v40 + 32);
        do
        {
          if (!v67)
          {
            goto LABEL_19;
          }

          v69 = *v68++;
          --v67;
        }

        while (v69 != v26);
LABEL_66:
        v86 = v26;
        v87 = v78;
        v88 = v52;
        sub_1000276D8();

        v32(v83, a4);
        (v70[0])(v73, a3);
        return v86 | (v87 << 32) | (v88 << 40);
      }

      if (qword_10058AAC8 != -1)
      {
        v27 = v40;
        swift_once();
      }

      v53 = *(off_100591880 + 2);
      if (v53)
      {
        for (i = 0; i != v53; ++i)
        {
          v56 = off_100591880 + 16 * i + 32;
          if ((0x801004u >> (8 * *v56)) == (0x801004u >> (8 * v78)))
          {
            v57 = *(v56 + 1);
            v58 = v56[1];
            if (v58 == 4)
            {
              if (v52 == 4)
              {
                goto LABEL_55;
              }
            }

            else if (v58 == 5)
            {
              if (v52 == 5)
              {
                goto LABEL_55;
              }
            }

            else if (v58 == 6 && v52 == 6)
            {
LABEL_55:
              v59 = *(v57 + 16);
              if (v59)
              {
                v60 = 0;
                v61 = v57 + 32;
                do
                {
                  v62 = v61 + 16 * v60++;
                  v63 = *(v62 + 8);
                  v64 = *(v63 + 16);
                  v65 = (v63 + 32);
                  while (v64)
                  {
                    v66 = *v65++;
                    --v64;
                    if (v66 == v26)
                    {
                      goto LABEL_66;
                    }
                  }
                }

                while (v60 != v59);
              }
            }
          }
        }
      }

LABEL_19:
      ++v31;

      if (v31 == v75)
      {
        v27 = v70[0];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_69:
    swift_once();
  }

  v32 = *(v82 + 8);
LABEL_17:
  v32(v83, a4);
  (v27)(v73, a3);
  return 0x300000000;
}

uint64_t Channel.operatingClass.getter(unint64_t a1)
{
  v2 = BYTE5(a1);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  if (qword_10058AAC8 != -1)
  {
    swift_once();
  }

  v7 = *(off_100591880 + 2);
  v8 = a1 >> 40;
  v9 = a1;
  if (!v7)
  {
    goto LABEL_32;
  }

  v10 = off_100591880 + 32;
  while (1)
  {
    if ((0x801004u >> (8 * BYTE4(a1))) != (0x801004u >> (8 * *v10)))
    {
      goto LABEL_6;
    }

    v11 = v10[1];
    if (v11 <= 3)
    {
      break;
    }

    switch(v11)
    {
      case 4u:
        if (v2 == 4)
        {
          goto LABEL_24;
        }

        break;
      case 5u:
        if (v2 == 5)
        {
          goto LABEL_24;
        }

        break;
      case 6u:
        if (v2 == 6)
        {
          goto LABEL_24;
        }

        break;
      default:
        goto LABEL_22;
    }

LABEL_6:
    v10 += 16;
    if (!--v7)
    {
      goto LABEL_31;
    }
  }

  if (v11 == 2)
  {
    if (v2 == 2)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

  if (v11 == 3)
  {
    if (v2 == 3)
    {
      goto LABEL_24;
    }

    goto LABEL_6;
  }

LABEL_22:
  if (v2 - 2) < 5 || ((v8 ^ v11))
  {
    goto LABEL_6;
  }

LABEL_24:
  v12 = *(v10 + 1);
  v13 = *(v12 + 16);
  v9 = a1;
  if (!v13)
  {
    goto LABEL_32;
  }

  v14 = 0;
  v15 = v12 + 32;
  do
  {
    v16 = (v15 + 16 * v14++);
    v17 = *(v16 + 1);
    v18 = *(v17 + 16);
    v19 = (v17 + 32);
    while (v18)
    {
      v20 = *v19++;
      --v18;
      if (v20 == a1)
      {
        v9 = *v16;
        goto LABEL_32;
      }
    }
  }

  while (v14 != v13);
LABEL_31:
  v9 = a1;
LABEL_32:
  if (qword_10058AAC0 != -1)
  {
    swift_once();
  }

  v21 = *(off_100591878 + 2);
  if (v21)
  {
    for (i = 0; i != v21; ++i)
    {
      v23 = off_100591878 + 16 * i + 32;
      if ((0x801004u >> (8 * BYTE4(a1))) != (0x801004u >> (8 * v23[1])))
      {
        continue;
      }

      v24 = v23[2];
      v25 = *(v23 + 1);
      if (v24 <= 3)
      {
        if (v24 == 2)
        {
          if (v2 == 2)
          {
            goto LABEL_56;
          }

          continue;
        }

        if (v24 == 3)
        {
          if (v2 == 3)
          {
            goto LABEL_56;
          }

          continue;
        }
      }

      else
      {
        switch(v24)
        {
          case 4u:
            if (v2 == 4)
            {
              goto LABEL_56;
            }

            continue;
          case 5u:
            if (v2 == 5)
            {
              goto LABEL_56;
            }

            continue;
          case 6u:
            if (v2 == 6)
            {
              goto LABEL_56;
            }

            continue;
        }
      }

      if ((v2 - 2) >= 5 && ((v8 ^ v24) & 1) == 0)
      {
LABEL_56:
        v26 = *(v25 + 16);
        v27 = (v25 + 32);
        while (v26)
        {
          v28 = *v27++;
          --v26;
          if (v28 == v9)
          {
            v29 = *v23;
            (*(v4 + 8))(v6, v3);
            return v29;
          }
        }
      }
    }
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v41 = a1 >> 40;
    v42 = v3;
    v32 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v32 = 67109634;
    *(v32 + 4) = a1;
    *(v32 + 8) = 2080;
    if (BYTE4(a1))
    {
      if (BYTE4(a1) == 1)
      {
        v33 = 0x7A48472035;
      }

      else
      {
        v33 = 0x7A48472036;
      }

      v34 = 0xE500000000000000;
    }

    else
    {
      v34 = 0xE700000000000000;
      v33 = 0x7A484720342E32;
    }

    v35 = sub_100002320(v33, v34, &v43);

    *(v32 + 10) = v35;
    *(v32 + 18) = 2080;
    if (v2 <= 3)
    {
      v3 = v42;
      if (v2 == 2)
      {
        v37 = 0xE600000000000000;
        v36 = 0x7A484D203031;
        goto LABEL_83;
      }

      if (v2 != 3)
      {
        goto LABEL_79;
      }

      v36 = 0x7A484D203032;
    }

    else
    {
      v3 = v42;
      if (v2 != 4)
      {
        v36 = 0x7A484D20303233;
        if (v2 == 5)
        {
          v36 = 0x7A484D20303631;
        }

        else if (v2 != 6)
        {
LABEL_79:
          if (v41)
          {
            v36 = 0x7A484D202B3034;
          }

          else
          {
            v36 = 0x7A484D202D3034;
          }
        }

        v37 = 0xE700000000000000;
        goto LABEL_83;
      }

      v36 = 0x7A484D203038;
    }

    v37 = 0xE600000000000000;
LABEL_83:
    v38 = sub_100002320(v36, v37, &v43);

    *(v32 + 20) = v38;
    _os_log_impl(&_mh_execute_header, v30, v31, "Warning: Using default operating class for channel: %u, band: %s, bandwidth: %s", v32, 0x1Cu);
    swift_arrayDestroy();
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

int *Channel.awdlSocial5GHz.unsafeMutableAddressor()
{
  if (qword_10058AA98 != -1)
  {
    swift_once();
  }

  return &static Channel.awdlSocial5GHz;
}

uint64_t Channel.Band.description.getter(char a1)
{
  if (!a1)
  {
    return 0x7A484720342E32;
  }

  if (a1 == 1)
  {
    return 0x7A48472035;
  }

  return 0x7A48472036;
}

unsigned __int8 *sub_100216990@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 16)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 128)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

Swift::Int sub_1002169DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x801004u >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_100216A6C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x801004u >> (8 * v2));
  return Hasher._finalize()();
}

uint64_t sub_100216ACC()
{
  v1 = *v0;
  v2 = 0x7A48472035;
  if (v1 != 1)
  {
    v2 = 0x7A48472036;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x7A484720342E32;
  }
}

void *sub_100216CA8()
{
  result = sub_1000616E8(&off_1005562C0);
  off_100591858 = result;
  return result;
}

uint64_t static Channel.isEnabled(channel:)(unint64_t a1)
{
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    return 0;
  }

  else
  {
    return _s7CoreP2P7ChannelV7isValid7channel2on4withSbs6UInt32V_AC4BandOAA9BandwidthOtFZ_0(a1, SBYTE4(a1), a1 >> 40);
  }
}

unint64_t Channel.init(_:maximumBandwidthOnBand:)(unsigned int a1, char a2)
{
  LOBYTE(v4) = a2;
  HIBYTE(v4) = a2 + 3;
  sub_1000276D8();
  return a1 | (v4 << 32);
}

void *sub_100216D3C()
{
  result = sub_1000616E8(&off_100551108);
  off_100591860 = result;
  return result;
}

void *sub_100216D64()
{
  result = sub_1000616E8(&off_100551160);
  off_100591868 = result;
  return result;
}

void *sub_100216D8C()
{
  result = sub_1000616E8(&off_1005511F0);
  off_100591870 = result;
  return result;
}

unint64_t static Channel.awdlSocial2GHz.getter()
{
  if (qword_10058AA90 != -1)
  {
    swift_once();
  }

  return static Channel.awdlSocial2GHz | (byte_10059B61C << 32) | (byte_10059B61D << 40);
}

unint64_t static Channel.awdlSocial5GHz.getter()
{
  if (qword_10058AA98 != -1)
  {
    swift_once();
  }

  return static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
}

int *Channel.awdlAlternateSocial5GHz.unsafeMutableAddressor()
{
  if (qword_10058AAA0 != -1)
  {
    swift_once();
  }

  return &static Channel.awdlAlternateSocial5GHz;
}

unint64_t static Channel.awdlAlternateSocial5GHz.getter()
{
  if (qword_10058AAA0 != -1)
  {
    swift_once();
  }

  return static Channel.awdlAlternateSocial5GHz | (byte_10059B62C << 32) | (byte_10059B62D << 40);
}

unint64_t static Channel.nanPrimary.getter()
{
  if (qword_10058AAA8 != -1)
  {
    swift_once();
  }

  return static Channel.nanPrimary | (byte_10059B634 << 32) | (byte_10059B635 << 40);
}

int *Channel.nanSecondary.unsafeMutableAddressor()
{
  if (qword_10058AAB0 != -1)
  {
    swift_once();
  }

  return &static Channel.nanSecondary;
}

unint64_t static Channel.nanSecondary.getter()
{
  if (qword_10058AAB0 != -1)
  {
    swift_once();
  }

  return static Channel.nanSecondary | (byte_10059B63C << 32) | (byte_10059B63D << 40);
}

unint64_t sub_1002170D8(uint64_t a1, unsigned int a2, _DWORD *a3, _BYTE *a4, _BYTE *a5)
{
  result = sub_10003B238(a2);
  if ((result & 0xFF00000000) == 0x300000000)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    *a4 = BYTE4(result);
    *a5 = BYTE5(result);
  }

  return result;
}

int *Channel.nanAlternateSecondary.unsafeMutableAddressor()
{
  if (qword_10058AAB8 != -1)
  {
    swift_once();
  }

  return &static Channel.nanAlternateSecondary;
}

unint64_t static Channel.nanAlternateSecondary.getter()
{
  if (qword_10058AAB8 != -1)
  {
    swift_once();
  }

  return static Channel.nanAlternateSecondary | (byte_10059B644 << 32) | (byte_10059B645 << 40);
}

uint64_t Channel.description.getter(unint64_t a1)
{
  v2 = HIDWORD(a1);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  if (BYTE5(a1) <= 4u)
  {
    if (BYTE5(a1) - 2 < 2)
    {
      v3 = 0;
      v4 = 0xE000000000000000;
      goto LABEL_14;
    }

    if (BYTE5(a1) == 4)
    {
      v4 = 0xE200000000000000;
      v3 = 11051;
      goto LABEL_14;
    }

LABEL_10:
    if ((a1 >> 40))
    {
      v3 = 43;
    }

    else
    {
      v3 = 45;
    }

    v4 = 0xE100000000000000;
    goto LABEL_14;
  }

  if (BYTE5(a1) != 5)
  {
    if (BYTE5(a1) == 6)
    {
      v4 = 0xE200000000000000;
      v3 = 31097;
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v4 = 0xE200000000000000;
  v3 = 30840;
LABEL_14:
  v5 = v4;
  String.append(_:)(*&v3);

  v6._countAndFlagsBits = 23328;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  if (v2)
  {
    if (v2 == 1)
    {
      v7 = 0x7A48472035;
    }

    else
    {
      v7 = 0x7A48472036;
    }

    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
    v7 = 0x7A484720342E32;
  }

  v9 = v8;
  String.append(_:)(*&v7);

  v10._countAndFlagsBits = 93;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return v12;
}

uint64_t sub_100217344()
{
  v1 = 1684955490;
  if (*v0 != 1)
  {
    v1 = 0x74646977646E6162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C656E6E616863;
  }
}

uint64_t sub_10021739C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100218E14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002173C4(uint64_t a1)
{
  v2 = sub_100218AC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100217400(uint64_t a1)
{
  v2 = sub_100218AC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Channel.encode(to:)(void *a1, uint64_t a2)
{
  v3 = WORD2(a2);
  v5 = sub_10005DC58(&qword_100591898, &qword_10049AAC8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100029B34(a1, a1[3]);
  sub_100218AC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = v3;
    v10[13] = 1;
    sub_100218B18();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = HIBYTE(v3);
    v10[11] = 2;
    sub_100218B6C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10021762C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10021881C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result);
    *(a1 + 5) = BYTE5(result);
  }

  return result;
}

uint64_t Optional<A>.description.getter(uint64_t a1)
{
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    return 48;
  }

  else
  {
    return Channel.description.getter(a1 & 0xFFFFFFFFFFFFLL);
  }
}

uint64_t Optional<A>.is2_4GHz.getter(uint64_t a1)
{
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    return 0;
  }

  else
  {
    return 1u >> (BYTE4(a1) & 7);
  }
}

unint64_t sub_100217844@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003B238(*a1);
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

uint64_t sub_100217878()
{
  v1 = *v0 | (*(v0 + 2) << 32);
  if ((v1 & 0xFF00000000) == 0x300000000)
  {
    return 48;
  }

  else
  {
    return Channel.description.getter(v1);
  }
}

unint64_t Channel.init(apiChannel:)(void *a1)
{
  v2 = [a1 channelNumber];
  v3 = [a1 bandwidth];
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = 4;
        break;
      case 4:
        v4 = 5;
        break;
      case 5:
        v4 = 6;
        break;
      default:
        goto LABEL_28;
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v4 = 3;
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_28;
      }

      v4 = [a1 extensionChannelAbove];
    }
  }

  else
  {
    v4 = 2;
  }

  if (![a1 is2_4GHz] || (objc_msgSend(a1, "is5GHz") & 1) != 0 || objc_msgSend(a1, "is6GHz"))
  {
    if (([a1 is2_4GHz] & 1) != 0 || !objc_msgSend(a1, "is5GHz") || objc_msgSend(a1, "is6GHz"))
    {
      if (([a1 is2_4GHz] & 1) != 0 || objc_msgSend(a1, "is5GHz") || (objc_msgSend(a1, "is6GHz") & 1) == 0)
      {
        goto LABEL_28;
      }

      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  if (_s7CoreP2P7ChannelV7isValid7channel2on4withSbs6UInt32V_AC4BandOAA9BandwidthOtFZ_0(v2, v5, v4))
  {
    sub_1000276D8();

    return v2 | (v5 << 32) | (v4 << 40);
  }

LABEL_28:

  return 0x300000000;
}

void *sub_100217A88()
{
  result = sub_100217AA8();
  off_100591878 = result;
  return result;
}

void *sub_100217AA8()
{
  v0 = sub_100115E34(0, 1, 1, _swiftEmptyArrayStorage);
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_100115E34((v1 > 1), v2 + 1, 1, v0);
    v1 = v0[3];
    v3 = v1 >> 1;
  }

  v0[2] = v4;
  v5 = &v0[2 * v2];
  *(v5 + 16) = 81;
  *(v5 + 34) = 3;
  v5[5] = &off_1005528D0;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    v0 = sub_100115E34((v1 > 1), v6, 1, v0);
  }

  v0[2] = v6;
  v7 = &v0[2 * v4];
  *(v7 + 16) = 82;
  *(v7 + 34) = 3;
  v7[5] = &off_100552928;
  v9 = v0[2];
  v8 = v0[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v0 = sub_100115E34((v8 > 1), v9 + 1, 1, v0);
    v8 = v0[3];
    v10 = v8 >> 1;
  }

  v0[2] = v11;
  v12 = &v0[2 * v9];
  *(v12 + 16) = 83;
  *(v12 + 34) = 0;
  v12[5] = &off_100552950;
  v13 = v9 + 2;
  if (v10 <= v11)
  {
    v0 = sub_100115E34((v8 > 1), v13, 1, v0);
  }

  v0[2] = v13;
  v14 = &v0[2 * v11];
  *(v14 + 16) = 84;
  *(v14 + 34) = 1;
  v14[5] = &off_100552998;
  v16 = v0[2];
  v15 = v0[3];
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    v0 = sub_100115E34((v15 > 1), v16 + 1, 1, v0);
    v15 = v0[3];
    v17 = v15 >> 1;
  }

  v0[2] = v18;
  v19 = &v0[2 * v16];
  *(v19 + 16) = 371;
  *(v19 + 34) = 3;
  v19[5] = &off_1005529E0;
  v20 = v16 + 2;
  if (v17 <= v18)
  {
    v0 = sub_100115E34((v15 > 1), v20, 1, v0);
  }

  v0[2] = v20;
  v21 = &v0[2 * v18];
  *(v21 + 16) = 372;
  *(v21 + 34) = 0;
  v21[5] = &off_100552A10;
  v23 = v0[2];
  v22 = v0[3];
  v24 = v22 >> 1;
  v25 = v23 + 1;
  if (v22 >> 1 <= v23)
  {
    v0 = sub_100115E34((v22 > 1), v23 + 1, 1, v0);
    v22 = v0[3];
    v24 = v22 >> 1;
  }

  v0[2] = v25;
  v26 = &v0[2 * v23];
  *(v26 + 16) = 373;
  *(v26 + 34) = 1;
  v26[5] = &off_100552A38;
  v27 = v23 + 2;
  if (v24 <= v25)
  {
    v0 = sub_100115E34((v22 > 1), v27, 1, v0);
  }

  v0[2] = v27;
  v28 = &v0[2 * v25];
  *(v28 + 16) = 374;
  *(v28 + 34) = 3;
  v28[5] = &off_100552A60;
  v30 = v0[2];
  v29 = v0[3];
  v31 = v29 >> 1;
  v32 = v30 + 1;
  if (v29 >> 1 <= v30)
  {
    v0 = sub_100115E34((v29 > 1), v30 + 1, 1, v0);
    v29 = v0[3];
    v31 = v29 >> 1;
  }

  v0[2] = v32;
  v33 = &v0[2 * v30];
  *(v33 + 16) = 375;
  *(v33 + 34) = 0;
  v33[5] = &off_100552A90;
  v34 = v30 + 2;
  if (v31 <= v32)
  {
    v0 = sub_100115E34((v29 > 1), v34, 1, v0);
  }

  v0[2] = v34;
  v35 = &v0[2 * v32];
  *(v35 + 16) = 376;
  *(v35 + 34) = 1;
  v35[5] = &off_100552AB8;
  v37 = v0[2];
  v36 = v0[3];
  v38 = v36 >> 1;
  v39 = v37 + 1;
  if (v36 >> 1 <= v37)
  {
    v0 = sub_100115E34((v36 > 1), v37 + 1, 1, v0);
    v36 = v0[3];
    v38 = v36 >> 1;
  }

  v0[2] = v39;
  v40 = &v0[2 * v37];
  *(v40 + 16) = 377;
  *(v40 + 34) = 3;
  v40[5] = &off_100552AE0;
  v41 = v37 + 2;
  if (v38 <= v39)
  {
    v0 = sub_100115E34((v36 > 1), v41, 1, v0);
  }

  v0[2] = v41;
  v42 = &v0[2 * v39];
  *(v42 + 16) = 378;
  *(v42 + 34) = 0;
  v42[5] = &off_100552B30;
  v44 = v0[2];
  v43 = v0[3];
  v45 = v43 >> 1;
  v46 = v44 + 1;
  if (v43 >> 1 <= v44)
  {
    v0 = sub_100115E34((v43 > 1), v44 + 1, 1, v0);
    v43 = v0[3];
    v45 = v43 >> 1;
  }

  v0[2] = v46;
  v47 = &v0[2 * v44];
  *(v47 + 16) = 379;
  *(v47 + 34) = 1;
  v47[5] = &off_100552B68;
  v48 = v44 + 2;
  if (v45 <= v46)
  {
    v0 = sub_100115E34((v43 > 1), v48, 1, v0);
  }

  v0[2] = v48;
  v49 = &v0[2 * v46];
  *(v49 + 16) = 380;
  *(v49 + 34) = 3;
  v49[5] = &off_100552BA0;
  v51 = v0[2];
  v50 = v0[3];
  v52 = v50 >> 1;
  v53 = v51 + 1;
  if (v50 >> 1 <= v51)
  {
    v0 = sub_100115E34((v50 > 1), v51 + 1, 1, v0);
    v50 = v0[3];
    v52 = v50 >> 1;
  }

  v0[2] = v53;
  v54 = &v0[2 * v51];
  *(v54 + 16) = 381;
  *(v54 + 34) = 3;
  v54[5] = &off_100552BD0;
  if (v52 <= v53)
  {
    v0 = sub_100115E34((v50 > 1), v51 + 2, 1, v0);
  }

  v0[2] = v51 + 2;
  v55 = &v0[2 * v53];
  *(v55 + 16) = 382;
  *(v55 + 34) = 0;
  v55[5] = &off_100552C10;
  v57 = v0[2];
  v56 = v0[3];
  v58 = v56 >> 1;
  v59 = v57 + 1;
  if (v56 >> 1 <= v57)
  {
    v0 = sub_100115E34((v56 > 1), v57 + 1, 1, v0);
    v56 = v0[3];
    v58 = v56 >> 1;
  }

  v0[2] = v59;
  v60 = &v0[2 * v57];
  *(v60 + 16) = 383;
  *(v60 + 34) = 1;
  v60[5] = &off_100552C40;
  v61 = v57 + 2;
  if (v58 <= v59)
  {
    v0 = sub_100115E34((v56 > 1), v61, 1, v0);
  }

  v0[2] = v61;
  v62 = &v0[2 * v59];
  *(v62 + 16) = 384;
  *(v62 + 34) = 4;
  v62[5] = &off_100552C70;
  v64 = v0[2];
  v63 = v0[3];
  v65 = v63 >> 1;
  v66 = v64 + 1;
  if (v63 >> 1 <= v64)
  {
    v0 = sub_100115E34((v63 > 1), v64 + 1, 1, v0);
    v63 = v0[3];
    v65 = v63 >> 1;
  }

  v0[2] = v66;
  v67 = &v0[2 * v64];
  *(v67 + 16) = 385;
  *(v67 + 34) = 5;
  v67[5] = &off_100552CB0;
  v68 = v64 + 2;
  if (v65 <= v66)
  {
    v0 = sub_100115E34((v63 > 1), v68, 1, v0);
  }

  v0[2] = v68;
  v69 = &v0[2 * v66];
  *(v69 + 16) = 386;
  *(v69 + 34) = 4;
  v69[5] = &off_100552CE0;
  v71 = v0[2];
  v70 = v0[3];
  v72 = v70 >> 1;
  v73 = v71 + 1;
  if (v70 >> 1 <= v71)
  {
    v0 = sub_100115E34((v70 > 1), v71 + 1, 1, v0);
    v70 = v0[3];
    v72 = v70 >> 1;
  }

  v0[2] = v73;
  v74 = &v0[2 * v71];
  *(v74 + 16) = 643;
  *(v74 + 34) = 3;
  v74[5] = &off_100552D18;
  v75 = v71 + 2;
  if (v72 <= v73)
  {
    v0 = sub_100115E34((v70 > 1), v75, 1, v0);
  }

  v0[2] = v75;
  v76 = &v0[2 * v73];
  *(v76 + 16) = 644;
  *(v76 + 34) = 1;
  v76[5] = &off_100552E28;
  v78 = v0[2];
  v77 = v0[3];
  v79 = v77 >> 1;
  v80 = v78 + 1;
  if (v77 >> 1 <= v78)
  {
    v0 = sub_100115E34((v77 > 1), v78 + 1, 1, v0);
    v77 = v0[3];
    v79 = v77 >> 1;
  }

  v0[2] = v80;
  v81 = &v0[2 * v78];
  *(v81 + 16) = 645;
  *(v81 + 34) = 4;
  v81[5] = &off_100552EC0;
  v82 = v78 + 2;
  if (v79 <= v80)
  {
    v0 = sub_100115E34((v77 > 1), v82, 1, v0);
  }

  v0[2] = v82;
  v83 = &v0[2 * v80];
  *(v83 + 16) = 646;
  *(v83 + 34) = 5;
  v83[5] = &off_100552F18;
  v84 = sub_1001F803C(v0);

  return v84;
}

void *sub_100218320()
{
  result = sub_100218340();
  off_100591880 = result;
  return result;
}

void *sub_100218340()
{
  v0 = sub_100115D00(0, 1, 1, _swiftEmptyArrayStorage);
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_100115D00((v1 > 1), v2 + 1, 1, v0);
    v1 = v0[3];
    v3 = v1 >> 1;
  }

  v0[2] = v4;
  v5 = &v0[2 * v2];
  *(v5 + 16) = 1025;
  v5[5] = &off_100552280;
  v6 = v2 + 2;
  if (v3 <= v4)
  {
    v0 = sub_100115D00((v1 > 1), v6, 1, v0);
  }

  v0[2] = v6;
  v7 = &v0[2 * v4];
  *(v7 + 16) = 1281;
  v7[5] = &off_100552310;
  v9 = v0[2];
  v8 = v0[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v0 = sub_100115D00((v8 > 1), v9 + 1, 1, v0);
    v8 = v0[3];
    v10 = v8 >> 1;
  }

  v0[2] = v11;
  v12 = &v0[2 * v9];
  *(v12 + 16) = 2;
  v12[5] = &off_100552360;
  v13 = v9 + 2;
  if (v10 <= v11)
  {
    v0 = sub_100115D00((v8 > 1), v13, 1, v0);
  }

  v0[2] = v13;
  v14 = &v0[2 * v11];
  *(v14 + 16) = 258;
  v14[5] = &off_100552550;
  v16 = v0[2];
  v15 = v0[3];
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    v0 = sub_100115D00((v15 > 1), v16 + 1, 1, v0);
    v15 = v0[3];
    v17 = v15 >> 1;
  }

  v0[2] = v18;
  v19 = &v0[2 * v16];
  *(v19 + 16) = 1026;
  v19[5] = &off_100552740;
  v20 = v16 + 2;
  if (v17 <= v18)
  {
    v0 = sub_100115D00((v15 > 1), v20, 1, v0);
  }

  v0[2] = v20;
  v21 = &v0[2 * v18];
  *(v21 + 16) = 1282;
  v21[5] = &off_100552840;
  return v0;
}

Swift::Int sub_100218544(Swift::UInt32 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

void sub_1002185D0()
{
  v1 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

Swift::Int sub_10021862C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      Hasher._combine(_:)(v6);
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

uint64_t sub_1002186A8(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1000BC518(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t NonNANOperatingChannelInformation.init(channel:)(uint64_t a1)
{
  v1 = a1;
  result = Channel.operatingClass.getter(a1 & 0xFFFFFFFFFFFFLL);
  if ((v1 & 0xFFFFFF00) == 0)
  {
    return result | (v1 << 8);
  }

  __break(1u);
  return result;
}

uint64_t sub_100218708(unint64_t a1, unint64_t a2)
{
  if (((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) < ((0x801004u >> ((a2 >> 29) & 0xF8)) & 0xFFC) || a1 < a2)
  {
    return 1;
  }

  v6 = BYTE5(a2);
  sub_10005DC58(&qword_10058DFA0, &qword_100488570);
  v7 = v6 - 2;
  if (v6 == 2)
  {
    return 0;
  }

  v8 = BYTE5(a1) - 2;
  if (BYTE5(a1) == 2)
  {
    return 1;
  }

  if (v6 == 3)
  {
    return 0;
  }

  if (BYTE5(a1) == 3)
  {
    return 1;
  }

  if (v7 >= 5 && (a2 & 0x10000000000) == 0)
  {
    return 0;
  }

  if (v8 >= 5 && (a1 & 0x10000000000) == 0)
  {
    return 1;
  }

  if (v7 >= 5 && (a2 & 0x10000000000) != 0)
  {
    return 0;
  }

  if (v8 >= 5 && (a1 & 0x10000000000) != 0)
  {
    return 1;
  }

  if (v6 == 4)
  {
    return 0;
  }

  if (BYTE5(a1) == 4)
  {
    return 1;
  }

  if (v6 == 5)
  {
    return 0;
  }

  if (BYTE5(a1) == 5)
  {
    return 1;
  }

  if (v6 == 6)
  {
    return 0;
  }

  if (BYTE5(a1) == 6)
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

unint64_t sub_10021881C(void *a1)
{
  v3 = sub_10005DC58(&qword_1005918F0, &qword_10049AF58);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11[-v5];
  sub_100029B34(a1, a1[3]);
  sub_100218AC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v11[15] = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[13] = 1;
  sub_100218F88();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v11[14];
  v11[11] = 2;
  sub_100218FDC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  v9 = v11[12];
  sub_100002A00(a1);
  return v7 | (v8 << 32) | (v9 << 40);
}

unint64_t sub_100218A1C()
{
  result = qword_100591888;
  if (!qword_100591888)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt32, &type metadata for UInt32, v0, v1);
    atomic_store(result, &qword_100591888);
  }

  return result;
}

unint64_t sub_100218A70()
{
  result = qword_100591890;
  if (!qword_100591890)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for UInt8, &type metadata for UInt8, v0, v1);
    atomic_store(result, &qword_100591890);
  }

  return result;
}

unint64_t sub_100218AC4()
{
  result = qword_1005918A0;
  if (!qword_1005918A0)
  {
    result = swift_getWitnessTable(byte_10049AF08, &type metadata for Channel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005918A0);
  }

  return result;
}

unint64_t sub_100218B18()
{
  result = qword_1005918A8;
  if (!qword_1005918A8)
  {
    result = swift_getWitnessTable("YH\v", &type metadata for Channel.Band, v0, v1);
    atomic_store(result, &qword_1005918A8);
  }

  return result;
}

unint64_t sub_100218B6C()
{
  result = qword_1005918B0;
  if (!qword_1005918B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Bandwidth, &type metadata for Bandwidth, v0, v1);
    atomic_store(result, &qword_1005918B0);
  }

  return result;
}

unint64_t sub_100218BC0()
{
  result = qword_1005918B8;
  if (!qword_1005918B8)
  {
    result = swift_getWitnessTable("9G\v", &type metadata for Channel.Band, v0, v1);
    atomic_store(result, &qword_1005918B8);
  }

  return result;
}

unint64_t sub_100218C18()
{
  result = qword_1005918C0;
  if (!qword_1005918C0)
  {
    v3 = sub_10005DD04(&qword_1005918C8, &qword_10049AB70);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005918C0);
  }

  return result;
}

unint64_t sub_100218C7C()
{
  result = qword_10059A5A0;
  if (!qword_10059A5A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Channel, &type metadata for Channel, v0, v1);
    atomic_store(result, &qword_10059A5A0);
  }

  return result;
}

unint64_t sub_100218D10()
{
  result = qword_1005918D0;
  if (!qword_1005918D0)
  {
    result = swift_getWitnessTable(")C\v", &type metadata for Channel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005918D0);
  }

  return result;
}

unint64_t sub_100218D68()
{
  result = qword_1005918D8;
  if (!qword_1005918D8)
  {
    result = swift_getWitnessTable("9F\v", &type metadata for Channel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005918D8);
  }

  return result;
}

unint64_t sub_100218DC0()
{
  result = qword_1005918E0;
  if (!qword_1005918E0)
  {
    result = swift_getWitnessTable(byte_10049AE78, &type metadata for Channel.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005918E0);
  }

  return result;
}

uint64_t sub_100218E14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684955490 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74646977646E6162 && a2 == 0xE900000000000068)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_100218F34()
{
  result = qword_1005918E8;
  if (!qword_1005918E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Channel.Band, &type metadata for Channel.Band, v0, v1);
    atomic_store(result, &qword_1005918E8);
  }

  return result;
}

unint64_t sub_100218F88()
{
  result = qword_1005918F8;
  if (!qword_1005918F8)
  {
    result = swift_getWitnessTable("qH\v", &type metadata for Channel.Band, v0, v1);
    atomic_store(result, &qword_1005918F8);
  }

  return result;
}

unint64_t sub_100218FDC()
{
  result = qword_100591900;
  if (!qword_100591900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Bandwidth, &type metadata for Bandwidth, v0, v1);
    atomic_store(result, &qword_100591900);
  }

  return result;
}

unint64_t sub_100219044()
{
  result = qword_100591908;
  if (!qword_100591908)
  {
    result = swift_getWitnessTable("yB\v", &type metadata for Channel.ChannelBitmap, v0, v1);
    atomic_store(result, &qword_100591908);
  }

  return result;
}

uint64_t sub_1002190A4(uint64_t a1, unint64_t *a2)
{
  v18 = a2;
  v4 = sub_10005DC58(&qword_100591A40, &qword_10049BC80);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (v17 - v6);
  sub_10005DC58(&qword_100591A48, &qword_10049BC88);
  __chkstk_darwin();
  v9 = v17 - v8;
  v10 = -1 << *(a1 + 32);
  v11 = *(a1 + 64);
  v12 = ~v10;
  v13 = -v10;
  v17[0] = a1;
  v17[1] = a1 + 64;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v17[2] = v12;
  v17[3] = 0;
  v17[4] = v14 & v11;
  v17[5] = 0;

  sub_1002192BC(v9);
  v15 = *(v5 + 48);
  while (v15(v9, 1, v4) != 1)
  {
    sub_10001CEA8(v9, v7, &qword_100591A40, &qword_10049BC80);
    sub_10021A92C(v7, v18);
    sub_100016290(v7, &qword_100591A40, &qword_10049BC80);
    if (v2)
    {
      break;
    }

    sub_1002192BC(v9);
  }

  return sub_1000E290C(v17[0]);
}

void sub_1002192BC(uint64_t a1@<X8>)
{
  v45 = sub_10005DC58(&qword_100591A40, &qword_10049BC80);
  v43 = *(v45 - 8);
  __chkstk_darwin();
  v40 = (&v39 - v3);
  v4 = *(type metadata accessor for NANInternetSharingStatistics.Requester(0) - 8);
  __chkstk_darwin();
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058CF68, qword_10049BC90);
  __chkstk_darwin();
  v8 = &v39 - v7;
  v44 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
  v9 = *(v44 - 8);
  v10 = __chkstk_darwin();
  v12 = &v39 - v11;
  v13 = *v1;
  v14 = v1[1];
  v16 = v1[2];
  v15 = v1[3];
  v17 = v1[4];
  v39 = v12;
  v46 = v16;
  if (!v17)
  {
    v20 = (v16 + 64) >> 6;
    if (v20 <= v15 + 1)
    {
      v21 = v15 + 1;
    }

    else
    {
      v21 = (v16 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v19 >= v20)
      {
        v31 = v44;
        (*(v9 + 56))(v8, 1, 1, v44, v10);
        v32 = 0;
        goto LABEL_12;
      }

      v17 = *(v14 + 8 * v19);
      ++v15;
      if (v17)
      {
        v18 = v4;
        v42 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v18 = v4;
  v42 = a1;
  v19 = v15;
LABEL_11:
  v41 = (v17 - 1) & v17;
  v23 = __clz(__rbit64(v17)) | (v19 << 6);
  v24 = *(v13 + 48) - v23 + 8 * v23;
  v25 = *(v24 + 4);
  v26 = *(v24 + 6);
  v27 = *v24;
  sub_10021F874(*(v13 + 56) + *(v18 + 72) * v23, v6);
  v28 = v44;
  v29 = *(v44 + 48);
  *v8 = v27;
  *(v8 + 2) = v25;
  v8[6] = v26;
  v30 = v6;
  v31 = v28;
  sub_10022074C(v30, &v8[v29]);
  (*(v9 + 56))(v8, 0, 1, v31);
  v32 = v41;
  a1 = v42;
  v22 = v19;
LABEL_12:
  *v1 = v13;
  v1[1] = v14;
  v1[2] = v46;
  v1[3] = v22;
  v1[4] = v32;
  if ((*(v9 + 48))(v8, 1, v31) == 1)
  {
    sub_100016290(v8, &qword_10058CF68, qword_10049BC90);
    (*(v43 + 56))(a1, 1, 1, v45);
    return;
  }

  v33 = v8;
  v34 = v39;
  sub_10001CEA8(v33, v39, &qword_10058CF70, &qword_100484190);
  v35 = v45;
  v36 = *(v45 + 48);
  v37 = v1[5];
  v38 = v40;
  *v40 = v37;
  sub_10001CEA8(v34, v38 + v36, &qword_10058CF70, &qword_100484190);
  if (__OFADD__(v37, 1))
  {
    goto LABEL_19;
  }

  v1[5] = v37 + 1;
  sub_10001CEA8(v38, a1, &qword_100591A40, &qword_10049BC80);
  (*(v43 + 56))(a1, 0, 1, v35);
}

uint64_t NANCoreAnalyticsMetrics.peerAddress.setter(uint64_t result)
{
  *(v1 + 33) = result;
  *(v1 + 35) = BYTE2(result);
  *(v1 + 36) = BYTE3(result);
  *(v1 + 37) = BYTE4(result);
  *(v1 + 38) = BYTE5(result);
  return result;
}

uint64_t NANCoreAnalyticsMetrics.internetSharingStatistics.getter()
{
  v1 = *(v0 + 344);

  return v1;
}

uint64_t NANCoreAnalyticsMetrics.internetSharingStatistics.setter(uint64_t a1, uint64_t a2, char a3)
{

  *(v3 + 344) = a1;
  *(v3 + 352) = a2;
  *(v3 + 360) = a3;
  return result;
}

void NANCoreAnalyticsMetrics.hash(into:)(__int128 *a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(*(v2 + 4) & 1);
  Hasher._combine(_:)(*(v2 + 5) & 1);
  Hasher._combine(_:)(*(v2 + 6) & 1);
  Hasher._combine(_:)(*(v2 + 8));
  Hasher._combine(_:)(*(v2 + 12));
  Hasher._combine(_:)(*(v2 + 16));
  Hasher._combine(_:)(*(v2 + 17));
  Hasher._combine(_:)(*(v2 + 18));
  Hasher._combine(_:)(*(v2 + 19));
  Hasher._combine(_:)(*(v2 + 20));
  Hasher._combine(_:)(*(v2 + 24));
  Hasher._combine(_:)(*(v2 + 28));
  Hasher._combine(_:)(*(v2 + 32));
  v4 = *(v2 + 34);
  v5 = *(v2 + 35);
  v6 = *(v2 + 36);
  v7 = *(v2 + 37);
  v8 = *(v2 + 38);
  Hasher._combine(_:)(*(v2 + 33));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(*(v2 + 40));
  Hasher._combine(_:)(*(v2 + 44));
  Hasher._combine(_:)(*(v2 + 48));
  Hasher._combine(_:)(*(v2 + 56));
  Hasher._combine(_:)(*(v2 + 64));
  Hasher._combine(_:)(*(v2 + 72));
  Hasher._combine(_:)(*(v2 + 80));
  Hasher._combine(_:)(*(v2 + 88));
  Hasher._combine(_:)(*(v2 + 96));
  Hasher._combine(_:)(*(v2 + 104));
  Hasher._combine(_:)(*(v2 + 112));
  Hasher._combine(_:)(*(v2 + 120));
  Hasher._combine(_:)(*(v2 + 128));
  Hasher._combine(_:)(*(v2 + 136));
  Hasher._combine(_:)(*(v2 + 144));
  Hasher._combine(_:)(*(v2 + 152));
  Hasher._combine(_:)(*(v2 + 160));
  Hasher._combine(_:)(*(v2 + 168));
  Hasher._combine(_:)(*(v2 + 176));
  Hasher._combine(_:)(*(v2 + 184));
  Hasher._combine(_:)(*(v2 + 192));
  Hasher._combine(_:)(*(v2 + 200));
  Hasher._combine(_:)(*(v2 + 208));
  Hasher._combine(_:)(*(v2 + 216));
  Hasher._combine(_:)(*(v2 + 224));
  sub_1000DF4A4(a1, *(v2 + 232));
  sub_1000DF4A4(a1, *(v2 + 240));
  sub_1000DF4A4(a1, *(v2 + 248));
  sub_1000DF4A4(a1, *(v2 + 256));
  sub_1000DF4A4(a1, *(v2 + 264));
  sub_1000DF4A4(a1, *(v2 + 272));
  sub_1000DF4A4(a1, *(v2 + 280));
  sub_1000DF4A4(a1, *(v2 + 288));
  sub_1000DF4A4(a1, *(v2 + 296));
  sub_1000DF4A4(a1, *(v2 + 304));
  sub_1000DF4A4(a1, *(v2 + 312));
  sub_1000DF4A4(a1, *(v2 + 320));
  sub_1000DF4A4(a1, *(v2 + 328));
  sub_1000DF4A4(a1, *(v2 + 336));
  v9 = *(v2 + 352);
  if (v9)
  {
    v10 = *(v2 + 360);
    v11 = *(v2 + 344);
    Hasher._combine(_:)(1u);
    if (v11 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v11 & 1);
    }

    Hasher._combine(_:)((BYTE1(v11) & 1) + 1);
    Hasher._combine(_:)(BYTE2(v11) & 1);
    sub_1000CF8A0(a1, v9);
    v12 = v10 & 1;
  }

  else
  {
    v12 = 0;
  }

  Hasher._combine(_:)(v12);
}

Swift::Int NANCoreAnalyticsMetrics.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANCoreAnalyticsMetrics.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100219B08(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANCoreAnalyticsMetrics.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100219B44(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x169uLL);
  memcpy(__dst, a2, 0x169uLL);
  return _s7CoreP2P23NANCoreAnalyticsMetricsV23__derived_struct_equalsySbAC_ACtFZ_0(v4, __dst) & 1;
}

unint64_t sub_100219B9C(char a1)
{
  result = 0x5F5050485F4E414ELL;
  switch(a1)
  {
    case 1:
    case 19:
    case 53:
      result = 0xD000000000000019;
      break;
    case 3:
    case 4:
    case 12:
    case 42:
    case 60:
    case 61:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
    case 31:
    case 32:
    case 51:
    case 59:
      result = 0xD000000000000014;
      break;
    case 7:
    case 36:
      result = 0xD000000000000021;
      break;
    case 8:
    case 34:
    case 35:
    case 37:
    case 46:
      result = 0xD00000000000001FLL;
      break;
    case 9:
      result = 0xD00000000000001DLL;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
    case 58:
      result = 0xD000000000000018;
      break;
    case 13:
    case 62:
      result = 0xD000000000000015;
      break;
    case 14:
    case 55:
      result = 0xD000000000000020;
      break;
    case 15:
    case 16:
    case 26:
    case 39:
    case 40:
    case 48:
    case 49:
      result = 0xD00000000000001CLL;
      break;
    case 17:
    case 23:
      result = 0xD00000000000001ELL;
      break;
    case 18:
    case 20:
    case 43:
    case 52:
    case 54:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0xD00000000000001DLL;
      break;
    case 22:
    case 24:
    case 27:
      result = 0xD000000000000023;
      break;
    case 25:
      result = 0xD00000000000001DLL;
      break;
    case 28:
    case 30:
    case 56:
      result = 0xD00000000000001ALL;
      break;
    case 29:
    case 44:
      result = 0xD000000000000025;
      break;
    case 33:
      result = 0xD00000000000001DLL;
      break;
    case 38:
      result = 0xD00000000000001DLL;
      break;
    case 41:
      result = 0xD00000000000001DLL;
      break;
    case 45:
      result = 0xD000000000000029;
      break;
    case 47:
      result = 0xD00000000000001DLL;
      break;
    case 50:
      result = 0xD00000000000001DLL;
      break;
    case 57:
      result = 0x535F52495F4E414ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t NANCoreAnalyticsMetrics.eventPayload.getter()
{
  v79 = &_swiftEmptyDictionarySingleton;
  v1 = *v0;
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v1;
  sub_1000737E4(&v77, 0);
  v2 = *(v0 + 4);
  *(&v78 + 1) = &type metadata for Bool;
  LOBYTE(v77) = v2;
  sub_1000737E4(&v77, 1);
  v3 = *(v0 + 5);
  *(&v78 + 1) = &type metadata for Bool;
  LOBYTE(v77) = v3;
  sub_1000737E4(&v77, 2);
  v4 = *(v0 + 6);
  *(&v78 + 1) = &type metadata for Bool;
  LOBYTE(v77) = v4;
  sub_1000737E4(&v77, 3);
  v5 = v0[2];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v5;
  sub_1000737E4(&v77, 5);
  v6 = v0[3];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v6;
  sub_1000737E4(&v77, 6);
  v7 = *(v0 + 16);
  *(&v78 + 1) = &type metadata for UInt8;
  LOBYTE(v77) = v7;
  sub_1000737E4(&v77, 7);
  v8 = *(v0 + 17);
  *(&v78 + 1) = &type metadata for UInt8;
  LOBYTE(v77) = v8;
  sub_1000737E4(&v77, 8);
  v9 = *(v0 + 32);
  *(&v78 + 1) = &type metadata for UInt8;
  LOBYTE(v77) = v9;
  sub_1000737E4(&v77, 10);
  v10 = WiFiAddress.description.getter(*(v0 + 33) | (*(v0 + 35) << 16));
  *(&v78 + 1) = &type metadata for String;
  *&v77 = v10;
  *(&v77 + 1) = v11;
  sub_1000737E4(&v77, 11);
  v12 = v0[10];
  *(&v78 + 1) = &type metadata for Int32;
  LODWORD(v77) = v12;
  sub_1000737E4(&v77, 12);
  v13 = v0[11];
  *(&v78 + 1) = &type metadata for Int32;
  LODWORD(v77) = v13;
  sub_1000737E4(&v77, 13);
  v14 = v0[12];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v14;
  sub_1000737E4(&v77, 56);
  v15 = *(v0 + 7);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v15;
  sub_1000737E4(&v77, 15);
  v16 = *(v0 + 8);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v16;
  sub_1000737E4(&v77, 16);
  v17 = *(v0 + 9);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v17;
  sub_1000737E4(&v77, 17);
  v18 = *(v0 + 10);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v18;
  sub_1000737E4(&v77, 18);
  v19 = *(v0 + 11);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v19;
  sub_1000737E4(&v77, 19);
  v20 = *(v0 + 12);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v20;
  sub_1000737E4(&v77, 20);
  v21 = *(v0 + 13);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v21;
  sub_1000737E4(&v77, 21);
  v22 = *(v0 + 14);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v22;
  sub_1000737E4(&v77, 22);
  v23 = *(v0 + 15);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v23;
  sub_1000737E4(&v77, 23);
  v24 = *(v0 + 16);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v24;
  sub_1000737E4(&v77, 24);
  v25 = *(v0 + 17);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v25;
  sub_1000737E4(&v77, 25);
  v26 = *(v0 + 18);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v26;
  sub_1000737E4(&v77, 26);
  v27 = *(v0 + 19);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v27;
  sub_1000737E4(&v77, 27);
  v28 = *(v0 + 20);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v28;
  sub_1000737E4(&v77, 28);
  v29 = *(v0 + 21);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v29;
  sub_1000737E4(&v77, 29);
  v30 = *(v0 + 22);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v30;
  sub_1000737E4(&v77, 30);
  v31 = *(v0 + 23);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v31;
  sub_1000737E4(&v77, 31);
  v32 = *(v0 + 24);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v32;
  sub_1000737E4(&v77, 32);
  v33 = *(v0 + 25);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v33;
  sub_1000737E4(&v77, 33);
  v34 = *(v0 + 26);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v34;
  sub_1000737E4(&v77, 34);
  v35 = *(v0 + 27);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v35;
  sub_1000737E4(&v77, 35);
  v36 = *(v0 + 28);
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v36;
  sub_1000737E4(&v77, 36);
  v37 = *(v0 + 18);
  *(&v78 + 1) = &type metadata for UInt8;
  LOBYTE(v77) = v37;
  sub_1000737E4(&v77, 52);
  v38 = v0[5];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v38;
  sub_1000737E4(&v77, 51);
  v39 = v0[6];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v39;
  sub_1000737E4(&v77, 54);
  v40 = v0[7];
  *(&v78 + 1) = &type metadata for UInt32;
  LODWORD(v77) = v40;
  sub_1000737E4(&v77, 55);
  v41 = *(v0 + 19);
  *(&v78 + 1) = &type metadata for UInt8;
  LOBYTE(v77) = v41;
  sub_1000737E4(&v77, 53);
  v42 = *(v0 + 44);
  v73 = v42;
  if (v42)
  {
    v43 = *(v0 + 43);
    *(&v78 + 1) = &type metadata for Int;
    *&v77 = v43 != 2 && (v43 & 1) == 0;
    sub_1000737E4(&v77, 57);
    *(&v78 + 1) = &type metadata for Bool;
    LOBYTE(v77) = BYTE2(v43);
    sub_1000737E4(&v77, 58);
    if ((v43 & 0x100) != 0)
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }

    *(&v78 + 1) = &type metadata for UInt8;
    LOBYTE(v77) = v44;
    sub_1000737E4(&v77, 59);
    v45 = *(v42 + 16);
    *(&v78 + 1) = &type metadata for Int;
    *&v77 = v45;
  }

  else
  {
    *(&v78 + 1) = &type metadata for Int;
    *&v77 = 0;
    sub_1000737E4(&v77, 57);
    v77 = 0u;
    v78 = 0u;
    sub_1000737E4(&v77, 58);
    v77 = 0u;
    v78 = 0u;
    sub_1000737E4(&v77, 59);
    v77 = 0u;
    v78 = 0u;
  }

  sub_1000737E4(&v77, 60);
  v46 = v79;
  v47 = v79 + 64;
  v48 = 1 << v79[32];
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v79 + 8);
  v51 = (v48 + 63) >> 6;

  v52 = 0;
  v53 = _swiftEmptyArrayStorage;
  while (1)
  {
    v54 = v52;
    if (!v50)
    {
      break;
    }

LABEL_18:
    v55 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v56 = v55 | (v52 << 6);
    v57 = *(*(v46 + 6) + v56);
    sub_100002B30(*(v46 + 7) + 32 * v56, &v77 + 8);
    LOBYTE(v77) = v57;
    sub_100012400(&v77, v75, &qword_100591910, &unk_10049B020);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      sub_100012400(&v77, v75, &qword_100591910, &unk_10049B020);
      v58 = sub_100219B9C(v75[0]);
      v71 = v59;
      v72 = v58;
      sub_100002A00(v76);
      sub_100016290(&v77, &qword_100591910, &unk_10049B020);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_100117A50(0, v53[2] + 1, 1, v53);
      }

      v61 = v53[2];
      v60 = v53[3];
      v62 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        v70 = v61 + 1;
        v64 = v53;
        v65 = v53[2];
        v66 = sub_100117A50((v60 > 1), v61 + 1, 1, v64);
        v61 = v65;
        v62 = v70;
        v53 = v66;
      }

      v53[2] = v62;
      v63 = &v53[3 * v61];
      v63[4] = v72;
      v63[5] = v71;
      v63[6] = v74;
    }

    else
    {
      sub_100016290(&v77, &qword_100591910, &unk_10049B020);
    }
  }

  while (1)
  {
    v52 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v52 >= v51)
    {
      break;
    }

    v50 = *&v47[8 * v52];
    ++v54;
    if (v50)
    {
      goto LABEL_18;
    }
  }

  if (v53[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v67 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v67 = &_swiftEmptyDictionarySingleton;
  }

  *&v77 = v67;

  sub_100236478(v68, 1, &v77);

  if (v73)
  {
    sub_1002190A4(v73, &v77);
  }

  sub_10021F598(*(v0 + 29), 37, &v77);
  sub_10021F598(*(v0 + 30), 38, &v77);
  sub_10021F598(*(v0 + 31), 39, &v77);
  sub_10021F598(*(v0 + 32), 40, &v77);
  sub_10021F598(*(v0 + 33), 41, &v77);
  sub_10021F598(*(v0 + 34), 42, &v77);
  sub_10021F598(*(v0 + 35), 43, &v77);
  sub_10021F598(*(v0 + 36), 44, &v77);
  sub_10021F598(*(v0 + 37), 45, &v77);
  sub_10021F598(*(v0 + 38), 46, &v77);
  sub_10021F598(*(v0 + 39), 47, &v77);
  sub_10021F598(*(v0 + 40), 48, &v77);
  sub_10021F598(*(v0 + 41), 49, &v77);
  sub_10021F598(*(v0 + 42), 50, &v77);
  return v77;
}

uint64_t sub_10021A92C(void *a1, unint64_t *a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10005DC58(&qword_100591A40, &qword_10049BC80);
  __chkstk_darwin();
  v10 = &v29 - v9;
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v34 = 0xD000000000000017;
  v35 = 0x80000001004B7010;
  v12 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v36 = *a1 + 1;
    v31 = v12;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v32 = v8;
    v33 = v4;
    v14 = v8;
    v15 = v34;
    v16 = v35;
    sub_100012400(a1, v10, &qword_100591A40, &qword_10049BC80);
    v17 = *(v14 + 48);
    v18 = sub_10005DC58(&qword_10058CF70, &qword_100484190);
    v19 = &v10[v17 + *(v18 + 48)];
    type metadata accessor for NANInternetSharingStatistics.Requester(0);
    v30 = a1;
    sub_10021F8D8(v19);
    isa = UInt8._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a2;
    *a2 = 0x8000000000000000;
    sub_100081750(isa, v15, v16, isUniquelyReferenced_nonNull_native);

    *a2 = v34;
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v34 = 0xD000000000000015;
    v35 = 0x80000001004B7030;
    v36 = v31;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23 = v34;
    v24 = v35;
    sub_100012400(v30, v10, &qword_100591A40, &qword_10049BC80);
    v25 = v33;
    v26 = *(v32 + 48) + *(v18 + 48);
    (*(v5 + 16))(v7, &v10[v26], v33);
    sub_10021F8D8(&v10[v26]);
    DispatchTimeInterval.rawSeconds.getter();
    (*(v5 + 8))(v7, v25);
    v27 = Int._bridgeToObjectiveC()().super.super.isa;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *a2;
    *a2 = 0x8000000000000000;
    sub_100081750(v27, v23, v24, v28);

    *a2 = v34;
  }

  return result;
}

unint64_t sub_10021AD14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021F4AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_10021AD44@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100219B9C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

CoreP2P::NANInternetSharingStatistics::Provider::SharingMode_optional __swiftcall NANInternetSharingStatistics.Provider.SharingMode.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 2)
  {
    v1.value = CoreP2P_NANInternetSharingStatistics_Provider_SharingMode_dhcpServer;
  }

  else
  {
    v1.value = CoreP2P_NANInternetSharingStatistics_Provider_SharingMode_unknownDefault;
  }

  if (rawValue == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

unsigned __int8 *sub_10021AD8C@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_10021ADAC(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

Swift::Int sub_10021ADC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10021AE14()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10021AE4C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void NANInternetSharingStatistics.Provider.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  if (a2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2 & 1);
}

Swift::Int NANInternetSharingStatistics.Provider.hashValue.getter(__int16 a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10021AF44()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10021AFAC()
{
  v1 = v0[1];
  if (*v0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10021AFF8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t NANInternetSharingStatistics.Requester.InternetSharingPolicyChannelState.init(apiValue:)(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 0;
  }

  else
  {
    return 0x3040102uLL >> (8 * a1);
  }
}

uint64_t NANInternetSharingStatistics.Requester.dhcpDelay.setter(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NANInternetSharingStatistics.Requester.policy.setter(char a1)
{
  result = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t NANInternetSharingStatistics.Requester.init(dhcpDelay:policy:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DispatchTimeInterval();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t NANInternetSharingStatistics.Requester.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for DispatchTimeInterval();
  v20 = *(v4 - 8);
  __chkstk_darwin();
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v17 = v7;
  v18 = v9;
  v10 = v20;
  sub_100031694(v21, v22);
  *v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v11 = v10;
  v12 = *(v10 + 104);
  v13 = v4;
  v12(v6, enum case for DispatchTimeInterval.seconds(_:), v4);
  v14 = v18;
  (*(v11 + 32))(v18, v6, v13);
  sub_100031694(v21, v22);
  sub_10021F820();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  *(v14 + *(v17 + 20)) = v23;
  sub_100002A00(v21);
  sub_10021F874(v14, v19);
  sub_100002A00(a1);
  return sub_10021F8D8(v14);
}

uint64_t NANInternetSharingStatistics.Requester.encode(to:)(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  result = DispatchTimeInterval.rawSeconds.getter();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100031694(v3, v4);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v1)
  {
    type metadata accessor for NANInternetSharingStatistics.Requester(0);
    sub_100031694(v3, v4);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v3);
}

BOOL static NANInternetSharingStatistics.Requester.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

void NANInternetSharingStatistics.Requester.hash(into:)()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin();
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000000000;
LABEL_7:
    v9 = v7 * v8;
    v10 = (v7 * v8) >> 64 != (v7 * v8) >> 63;
    v11 = v7 <= 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = 0x8000000000000000;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    goto LABEL_12;
  }

  if (v6 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000000;
    goto LABEL_7;
  }

  if (v6 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000;
    goto LABEL_7;
  }

  if (v6 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v13 = *v5;
  }

  else
  {
    if (v6 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v2 + 8))(v5, v1);
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_12:
  Hasher._combine(_:)(v13);
  v14 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  Hasher._combine(_:)(*(v0 + *(v14 + 20)));
}

Swift::Int NANInternetSharingStatistics.Requester.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANInternetSharingStatistics.Requester.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10021B8E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANInternetSharingStatistics.Requester.hash(into:)();
  return Hasher._finalize()();
}

uint64_t NANInternetSharingStatistics.provider.setter(uint64_t result)
{
  *(v1 + 1) = result & 1;
  *(v1 + 2) = BYTE1(result) & 1;
  return result;
}

uint64_t NANInternetSharingStatistics.init(provider:)(__int16 a1)
{
  sub_100082F74(_swiftEmptyArrayStorage);
  if (a1)
  {
    v2 = 258;
  }

  else
  {
    v2 = 2;
  }

  return v2 & 0xFFFEFFFF | ((((a1 & 0x100) >> 8) & 1) << 16);
}

void NANInternetSharingStatistics.hash(into:)(__int128 *a1, int a2, uint64_t a3, char a4)
{
  if (a2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2 & 1);
  }

  if ((a2 & 0x100) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(BYTE2(a2) & 1);
  sub_1000CF8A0(a1, a3);
  Hasher._combine(_:)(a4 & 1);
}

Swift::Int NANInternetSharingStatistics.hashValue.getter(int a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if (a1 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1 & 1);
  }

  if ((a1 & 0x100) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(BYTE2(a1) & 1);
  sub_1000CF8A0(v8, a2);
  Hasher._combine(_:)(a3 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10021BB68()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *v0;
  if (v0[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return NANInternetSharingStatistics.hashValue.getter(v2 | v3, *(v0 + 1), v0[16]);
}

void sub_10021BBA0(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = *(v2 + 1);
  v8 = v2[16];
  if (v4 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4 & 1);
  }

  if (v5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v6);
  sub_1000CF8A0(a1, v7);
  Hasher._combine(_:)(v8);
}

Swift::Int sub_10021BC38(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 1);
  v6 = v1[16];
  Hasher.init(_seed:)();
  if (v2 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2 & 1);
  }

  if (v3)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v4);
  sub_1000CF8A0(v9, v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t sub_10021BCF4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *a1;
  if (a1[2])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (a2[1])
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 | *a2;
  if (a2[2])
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  return sub_10021EE40(v3 | v4, *(a1 + 1), a1[16], v6 | v7, *(a2 + 1), a2[16]);
}

uint64_t NANCoreAnalyticsPerformanceStatistics.rssi.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.throughputCeilingMbps.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.throughputCapacityMbps.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.init(rssi:throughputCeilingMbps:throughputCapacityMbps:txLatencyMin:txLatencyMax:txLatencyMean:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = result;
  *(a5 + 8) = 0;
  *(a5 + 16) = a6;
  *(a5 + 24) = 0;
  *(a5 + 32) = a7;
  *(a5 + 40) = 0;
  *(a5 + 48) = a2;
  *(a5 + 56) = a3;
  *(a5 + 64) = a4;
  return result;
}

CoreP2P::NANWiFiAwareStatistics::ClientType_optional __swiftcall NANWiFiAwareStatistics.ClientType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

unint64_t sub_10021BE00@<X0>(Swift::Int *a1@<X0>, CoreP2P::NANWiFiAwareStatistics::AppStatus_optional *a2@<X8>)
{
  result = _s7CoreP2P22NANWiFiAwareStatisticsV9AppStatusO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

void sub_10021BE2C()
{
  qword_10059B650 = 0;
  LODWORD(static NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty) = 0;
  WORD2(static NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty) = 0;
}

uint64_t *NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty.unsafeMutableAddressor()
{
  if (qword_10058AAD0 != -1)
  {
    swift_once();
  }

  return &static NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty;
}

uint64_t static NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty.getter()
{
  if (qword_10058AAD0 != -1)
  {
    swift_once();
  }

  return static NANWiFiAwareStatistics.NANChannelSeqMismatchCount.empty;
}

uint64_t sub_10021C248(char a1)
{
  result = 0x4449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x4E65636976726573;
      break;
    case 2:
      result = 0x6570795472656570;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6F73616552627573;
      break;
    case 5:
      result = 0x6269726373627573;
      break;
    case 6:
      result = 0x436873696C627570;
      break;
    case 7:
      result = 0x6874617061746164;
      break;
    case 8:
      result = 0x6F6974617265706FLL;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
    case 19:
    case 28:
    case 30:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x7954746E65696C63;
      break;
    case 13:
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 17:
      result = 0x6143656469537369;
      break;
    case 18:
      result = 0x616C507269417369;
      break;
    case 20:
      result = 0x65536F54656D6974;
      break;
    case 21:
      result = 0x446E6F6973736573;
      break;
    case 22:
      result = 0x526172666E497369;
      break;
    case 23:
    case 24:
      result = 0xD000000000000010;
      break;
    case 25:
      v3 = 0x666C65537369;
      goto LABEL_35;
    case 26:
      v3 = 0x726565507369;
LABEL_35:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4453000000000000;
      break;
    case 27:
      result = 0xD000000000000011;
      break;
    case 29:
    case 39:
      result = 0xD000000000000012;
      break;
    case 31:
      result = 0x6E756F436E616373;
      break;
    case 32:
      result = 0x756F43636F737361;
      break;
    case 33:
    case 34:
      result = 0xD000000000000019;
      break;
    case 35:
      result = 0x534644664F6D756ELL;
      break;
    case 36:
      result = 0x7574617453707061;
      break;
    case 37:
      result = 1769173874;
      break;
    case 38:
      result = 0xD000000000000011;
      break;
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
      result = 0x636E6574614C7874;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10021C7E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021F448(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10021C810@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10021C248(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *NANWiFiAwareStatistics.eventPayload.getter()
{
  v60 = &_swiftEmptyDictionarySingleton;
  v2 = *v0;
  v1 = v0[1];
  v59 = &type metadata for String;
  v57 = v2;
  v58 = v1;

  sub_100073910(&v57, 0);
  v4 = v0[2];
  v3 = v0[3];
  v59 = &type metadata for String;
  v57 = v4;
  v58 = v3;

  sub_100073910(&v57, 1);
  v5 = *(v0 + 32);
  v59 = &type metadata for Int;
  v57 = v5;
  sub_100073910(&v57, 2);
  v6 = *(v0 + 33);
  v59 = &type metadata for Int;
  v57 = v6;
  sub_100073910(&v57, 3);
  v7 = *(v0 + 34);
  v59 = &type metadata for UInt8;
  LOBYTE(v57) = v7;
  sub_100073910(&v57, 4);
  v8 = v0[5];
  v59 = &type metadata for Int;
  v57 = v8;
  sub_100073910(&v57, 5);
  v9 = v0[6];
  v59 = &type metadata for Int;
  v57 = v9;
  sub_100073910(&v57, 6);
  v10 = v0[7];
  v59 = &type metadata for Int;
  v57 = v10;
  sub_100073910(&v57, 7);
  v11 = *(v0 + 64);
  v59 = &type metadata for Int;
  v57 = v11;
  sub_100073910(&v57, 8);
  v12 = *(v0 + 65);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v12;
  sub_100073910(&v57, 9);
  v13 = *(v0 + 66);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v13;
  sub_100073910(&v57, 10);
  v14 = *(v0 + 67);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v14;
  sub_100073910(&v57, 11);
  v15 = *(v0 + 68);
  v59 = &type metadata for Int;
  v57 = v15;
  sub_100073910(&v57, 12);
  v16 = *(v0 + 69);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v16;
  sub_100073910(&v57, 13);
  v17 = *(v0 + 70);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v17;
  sub_100073910(&v57, 14);
  v18 = *(v0 + 71);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v18;
  sub_100073910(&v57, 15);
  v19 = *(v0 + 72);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v19;
  sub_100073910(&v57, 16);
  v20 = *(v0 + 73);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v20;
  sub_100073910(&v57, 17);
  v21 = *(v0 + 74);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v21;
  sub_100073910(&v57, 18);
  v22 = *(v0 + 75);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v22;
  sub_100073910(&v57, 19);
  v23 = v0[10];
  v59 = &type metadata for UInt64;
  v57 = v23;
  sub_100073910(&v57, 20);
  v24 = v0[11];
  v59 = &type metadata for UInt64;
  v57 = v24;
  sub_100073910(&v57, 21);
  v25 = *(v0 + 96);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v25;
  sub_100073910(&v57, 22);
  v26 = *(v0 + 25);
  v59 = &type metadata for UInt32;
  LODWORD(v57) = v26;
  sub_100073910(&v57, 23);
  v27 = *(v0 + 104);
  v59 = &type metadata for UInt8;
  LOBYTE(v57) = v27;
  sub_100073910(&v57, 24);
  v28 = *(v0 + 105);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v28;
  sub_100073910(&v57, 25);
  v29 = *(v0 + 106);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v29;
  sub_100073910(&v57, 26);
  v30 = *(v0 + 107);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v30;
  sub_100073910(&v57, 27);
  v31 = v0[14];
  v59 = &type metadata for Int;
  v57 = v31;
  sub_100073910(&v57, 28);
  v32 = v0[15];
  v59 = &type metadata for Int;
  v57 = v32;
  sub_100073910(&v57, 29);
  v33 = *(v0 + 128);
  v59 = &type metadata for Bool;
  LOBYTE(v57) = v33;
  sub_100073910(&v57, 30);
  v34 = *(v0 + 33);
  v59 = &type metadata for UInt32;
  LODWORD(v57) = v34;
  sub_100073910(&v57, 31);
  v35 = *(v0 + 34);
  v59 = &type metadata for UInt32;
  LODWORD(v57) = v35;
  sub_100073910(&v57, 32);
  v36 = *(v0 + 35);
  v59 = &type metadata for UInt32;
  LODWORD(v57) = v36;
  sub_100073910(&v57, 33);
  v37 = *(v0 + 36);
  v59 = &type metadata for UInt32;
  LODWORD(v57) = v37;
  sub_100073910(&v57, 34);
  v38 = v0[19];
  v59 = &type metadata for Int;
  v57 = v38;
  sub_100073910(&v57, 35);
  v39 = *(v0 + 160);
  v59 = &type metadata for Int;
  v57 = v39;
  sub_100073910(&v57, 36);
  v40 = v0[21];
  v59 = &type metadata for Int;
  v57 = v40;
  sub_100073910(&v57, 37);
  v41 = v0[22];
  v59 = &type metadata for Double;
  v57 = v41;
  sub_100073910(&v57, 38);
  v42 = v0[23];
  v59 = &type metadata for Double;
  v57 = v42;
  sub_100073910(&v57, 39);
  v43 = v0[24];
  v59 = &type metadata for Double;
  v57 = v43;
  sub_100073910(&v57, 40);
  v44 = v0[25];
  v59 = &type metadata for Double;
  v57 = v44;
  sub_100073910(&v57, 41);
  v45 = v0[26];
  v59 = &type metadata for Double;
  v57 = v45;
  sub_100073910(&v57, 42);
  v46 = v0[27];
  v59 = &type metadata for Double;
  v57 = v46;
  sub_100073910(&v57, 43);
  v47 = v0[28];
  v59 = &type metadata for Double;
  v57 = v47;
  sub_100073910(&v57, 44);
  v48 = v0[29];
  v59 = &type metadata for Double;
  v57 = v48;
  sub_100073910(&v57, 45);
  v49 = v0[30];
  v59 = &type metadata for Double;
  v57 = v49;
  sub_100073910(&v57, 46);
  v50 = v0[31];
  v59 = &type metadata for Double;
  v57 = v50;
  sub_100073910(&v57, 47);
  v51 = v0[32];
  v59 = &type metadata for Double;
  v57 = v51;
  sub_100073910(&v57, 48);
  v52 = v0[33];
  v59 = &type metadata for Double;
  v57 = v52;
  sub_100073910(&v57, 49);
  v53 = v0[34];
  v59 = &type metadata for Double;
  v57 = v53;
  sub_100073910(&v57, 50);
  v54 = v0[35];
  v59 = &type metadata for Double;
  v57 = v54;
  sub_100073910(&v57, 51);
  v55 = sub_1001D9AEC(v60);

  return v55;
}

void __swiftcall NANWiFiAwareStatistics.init()(CoreP2P::NANWiFiAwareStatistics *__return_ptr retstr)
{
  retstr->bundleID._countAndFlagsBits = 0;
  retstr->bundleID._object = 0xE000000000000000;
  retstr->serviceName._countAndFlagsBits = 0;
  retstr->serviceName._object = 0xE000000000000000;
  *&retstr->peerType = 1280;
  retstr->subReason = CoreP2P_NANSubReasonCode_unknown;
  retstr->publishCount = 0;
  retstr->datapathCount = 0;
  retstr->subscribeCount = 0;
  *&retstr->operationType = 0;
  retstr->clientType = CoreP2P_NANWiFiAwareStatistics_ClientType_unknown;
  *&retstr->isRemoteCameraActive = 0;
  *&retstr->isUniversalControlActive = 0;
  retstr->timeToSetUpNDP = 0;
  retstr->sessionDuration = 0;
  retstr->isInfraRealTime = 0;
  *&retstr->selfInfraChannel = 0;
  *&retstr->rssi = 0u;
  p_rssi = &retstr->rssi;
  *(p_rssi - 7) = 0;
  *(p_rssi - 6) = 0;
  *(p_rssi - 40) = 0;
  *(p_rssi - 2) = 0;
  *(p_rssi - 8) = 0;
  *(p_rssi - 36) = 0;
  *(p_rssi - 28) = 0;
  *(p_rssi + 1) = 0u;
  *(p_rssi + 2) = 0u;
  *(p_rssi + 3) = 0u;
  *(p_rssi + 4) = 0u;
  *(p_rssi + 5) = 0u;
  *(p_rssi + 6) = 0u;
  p_rssi[14] = 0;
}

uint64_t NANWiFiAwareStatistics.convertToTerminationError(reason:)(uint64_t a1)
{
  if ((a1 + 1) >= 6)
  {
    return 5;
  }

  else
  {
    return (0x50403020501uLL >> (8 * (a1 + 1)));
  }
}

CoreP2P::NANWiFiAwareStatistics::AppStatus __swiftcall NANWiFiAwareStatistics.convertToAppStatus(reason:)(Swift::Int reason)
{
  if (reason >= 5)
  {
    LOBYTE(reason) = 0;
  }

  return reason;
}

CoreP2P::NANWiFiAwareStatistics::PeerType __swiftcall NANWiFiAwareStatistics.convertToPeerType(flag:)(Swift::UInt8 flag)
{
  if ((flag & 0x10) != 0)
  {
    return 1;
  }

  else
  {
    return (flag >> 4) & 2;
  }
}

void NANWiFiAwareStatistics.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 32));
  Hasher._combine(_:)(*(v1 + 33));
  Hasher._combine(_:)(*(v1 + 34));
  Hasher._combine(_:)(*(v1 + 40));
  Hasher._combine(_:)(*(v1 + 48));
  Hasher._combine(_:)(*(v1 + 56));
  Hasher._combine(_:)(*(v1 + 64));
  Hasher._combine(_:)(*(v1 + 65) & 1);
  Hasher._combine(_:)(*(v1 + 66) & 1);
  Hasher._combine(_:)(*(v1 + 67) & 1);
  Hasher._combine(_:)(*(v1 + 68));
  Hasher._combine(_:)(*(v1 + 69) & 1);
  Hasher._combine(_:)(*(v1 + 70) & 1);
  Hasher._combine(_:)(*(v1 + 71) & 1);
  Hasher._combine(_:)(*(v1 + 72) & 1);
  Hasher._combine(_:)(*(v1 + 73) & 1);
  Hasher._combine(_:)(*(v1 + 74) & 1);
  Hasher._combine(_:)(*(v1 + 75) & 1);
  Hasher._combine(_:)(*(v1 + 80));
  Hasher._combine(_:)(*(v1 + 88));
  Hasher._combine(_:)(*(v1 + 96) & 1);
  Hasher._combine(_:)(*(v1 + 100));
  Hasher._combine(_:)(*(v1 + 104));
  Hasher._combine(_:)(*(v1 + 105) & 1);
  Hasher._combine(_:)(*(v1 + 106) & 1);
  Hasher._combine(_:)(*(v1 + 107) & 1);
  Hasher._combine(_:)(*(v1 + 112));
  Hasher._combine(_:)(*(v1 + 120));
  Hasher._combine(_:)(*(v1 + 128) & 1);
  Hasher._combine(_:)(*(v1 + 132));
  Hasher._combine(_:)(*(v1 + 136));
  Hasher._combine(_:)(*(v1 + 140));
  Hasher._combine(_:)(*(v1 + 144));
  Hasher._combine(_:)(*(v1 + 152));
  Hasher._combine(_:)(*(v1 + 160));
  Hasher._combine(_:)(*(v1 + 168));
  v2 = *(v1 + 176);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v1 + 184);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = *(v1 + 192);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = *(v1 + 200);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  v6 = *(v1 + 208);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
  v7 = *(v1 + 216);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  Hasher._combine(_:)(*&v7);
  v8 = *(v1 + 224);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  Hasher._combine(_:)(*&v8);
  v9 = *(v1 + 232);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  Hasher._combine(_:)(*&v9);
  v10 = *(v1 + 240);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  Hasher._combine(_:)(*&v10);
  v11 = *(v1 + 248);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  Hasher._combine(_:)(*&v11);
  v12 = *(v1 + 256);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  v13 = *(v1 + 264);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  Hasher._combine(_:)(*&v13);
  v14 = *(v1 + 272);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  Hasher._combine(_:)(*&v14);
  v15 = *(v1 + 280);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  Hasher._combine(_:)(*&v15);
}

Swift::Int NANWiFiAwareStatistics.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANWiFiAwareStatistics.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10021D24C(uint64_t a1)
{
  Hasher.init(_seed:)();
  NANWiFiAwareStatistics.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL sub_10021D288(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s7CoreP2P22NANWiFiAwareStatisticsV23__derived_struct_equalsySbAC_ACtFZ_0(v4, __dst);
}

void __swiftcall NANAppUsage.init(bundleID:)(CoreP2P::NANAppUsage *__return_ptr retstr, Swift::String bundleID)
{
  retstr->bundleID = bundleID;
  *&retstr->publishCount = 0u;
  *&retstr->publishDuration = 0u;
  *&retstr->datapathInitiatorDuration = 0u;
  retstr->operationType = CoreP2P_OperationType_none;
  retstr->sessionDuration = 0;
}

void NANAppUsage.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16));
  Hasher._combine(_:)(*(v1 + 18));
  Hasher._combine(_:)(*(v1 + 20));
  Hasher._combine(_:)(*(v1 + 22));
  Hasher._combine(_:)(*(v1 + 24));
  Hasher._combine(_:)(*(v1 + 26));
  Hasher._combine(_:)(*(v1 + 28));
  Hasher._combine(_:)(*(v1 + 30));
  Hasher._combine(_:)(*(v1 + 32));
  Hasher._combine(_:)(*(v1 + 40));
  Hasher._combine(_:)(*(v1 + 48));
  Hasher._combine(_:)(*(v1 + 56));
  Hasher._combine(_:)(*(v1 + 64));
  Hasher._combine(_:)(*(v1 + 72));
}

Swift::Int NANAppUsage.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 18));
  Hasher._combine(_:)(*(v0 + 20));
  Hasher._combine(_:)(*(v0 + 22));
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(*(v0 + 26));
  Hasher._combine(_:)(*(v0 + 28));
  Hasher._combine(_:)(*(v0 + 30));
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 40));
  Hasher._combine(_:)(*(v0 + 48));
  Hasher._combine(_:)(*(v0 + 56));
  Hasher._combine(_:)(*(v0 + 64));
  Hasher._combine(_:)(*(v0 + 72));
  return Hasher._finalize()();
}

void sub_10021D490(uint64_t a1)
{
  v2 = *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = *(v1 + 48);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = *(v1 + 72);
  v3 = *(v1 + 16);
  v4 = *(v1 + 18);
  v5 = *(v1 + 20);
  v6 = *(v1 + 22);
  v7 = *(v1 + 24);
  v8 = *(v1 + 26);
  v9 = *(v1 + 28);
  v10 = *(v1 + 30);
  String.hash(into:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
}

Swift::Int sub_10021D594(uint64_t a1)
{
  v11 = *(v1 + 32);
  v12 = *(v1 + 40);
  v13 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  v2 = *(v1 + 16);
  v3 = *(v1 + 18);
  v4 = *(v1 + 20);
  v5 = *(v1 + 22);
  v6 = *(v1 + 24);
  v7 = *(v1 + 26);
  v8 = *(v1 + 28);
  v10 = *(v1 + 30);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  return Hasher._finalize()();
}

BOOL sub_10021D6E8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s7CoreP2P11NANAppUsageV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9);
}

uint64_t sub_10021D744(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x664F7265626D756ELL;
    v5 = 0x6269726373627573;
    if (a1 != 2)
    {
      v5 = 0xD000000000000016;
    }

    if (a1)
    {
      v4 = 0x436873696C627570;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001BLL;
    if (a1 == 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000016;
    if (a1 != 4)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10021D894()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001871FC(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10021D8E4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1001871FC(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_10021D928@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021F54C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10021D958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10021D744(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *NANWiFiAwareSystemStatistics.eventPayload.getter(unint64_t a1, unint64_t a2, __int16 a3)
{
  v4 = a2;
  v5 = a1 >> 16;
  v6 = HIDWORD(a1);
  v7 = HIWORD(a1);
  v14 = &type metadata for UInt16;
  v15 = &_swiftEmptyDictionarySingleton;
  v8 = a2 >> 16;
  v9 = HIDWORD(a2);
  v10 = HIWORD(a2);
  v13[0] = a1;
  sub_100073A3C(v13, 0);
  v14 = &type metadata for UInt16;
  v13[0] = v5;
  sub_100073A3C(v13, 1);
  v14 = &type metadata for UInt16;
  v13[0] = v6;
  sub_100073A3C(v13, 2);
  v14 = &type metadata for UInt16;
  v13[0] = v7;
  sub_100073A3C(v13, 3);
  v14 = &type metadata for UInt16;
  v13[0] = v4;
  sub_100073A3C(v13, 4);
  v14 = &type metadata for UInt16;
  v13[0] = v8;
  sub_100073A3C(v13, 5);
  v14 = &type metadata for UInt16;
  v13[0] = v9;
  sub_100073A3C(v13, 6);
  v14 = &type metadata for UInt16;
  v13[0] = v10;
  sub_100073A3C(v13, 7);
  v14 = &type metadata for UInt16;
  v13[0] = a3;
  sub_100073A3C(v13, 8);
  v11 = sub_1001D9B14(v15);

  return v11;
}

void NANWiFiAwareSystemStatistics.hash(into:)(int a1, unint64_t a2, unint64_t a3, Swift::UInt16 a4)
{
  v5 = a3;
  v6 = a2 >> 16;
  v7 = HIDWORD(a2);
  v8 = HIWORD(a2);
  v9 = a3 >> 16;
  v10 = HIDWORD(a3);
  v11 = HIWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(a4);
}

Swift::Int NANWiFiAwareSystemStatistics.hashValue.getter(unint64_t a1, unint64_t a2, Swift::UInt16 a3)
{
  v4 = a2;
  v5 = a1;
  v6 = a1 >> 16;
  v7 = HIDWORD(a1);
  v8 = HIWORD(a1);
  v9 = a2 >> 16;
  v10 = HIDWORD(a2);
  v11 = HIWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_10021DC80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  return Hasher._finalize()();
}

void sub_10021DD68()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
}

Swift::Int sub_10021DE14(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  return Hasher._finalize()();
}

uint64_t sub_10021DF14(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      if (a1 == 9)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return 0xD000000000000023;
      }
    }

    else
    {
      v5 = 0xD00000000000001BLL;
      if (a1 != 7)
      {
        v5 = 0xD000000000000019;
      }

      if (a1 == 6)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    v1 = 0x436873696C627570;
    v2 = 0xD000000000000016;
    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    if (a1 == 1)
    {
      v2 = 0x6269726373627573;
    }

    if (a1)
    {
      v1 = v2;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_10021E0C8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_10021E174(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10021E1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int sub_10021E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10021E2D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10021F500(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10021E300@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10021DF14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *NANWiFiAwareAppStatistics.eventPayload.getter()
{
  v17 = &_swiftEmptyDictionarySingleton;
  v1 = *v0;
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v1;
  sub_100073BBC(v15, 0);
  v2 = v0[1];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v2;
  sub_100073BBC(v15, 1);
  v3 = v0[2];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v3;
  sub_100073BBC(v15, 2);
  v4 = v0[3];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v4;
  sub_100073BBC(v15, 3);
  v5 = v0[4];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v5;
  sub_100073BBC(v15, 4);
  v6 = v0[5];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v6;
  sub_100073BBC(v15, 5);
  v7 = v0[6];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v7;
  sub_100073BBC(v15, 6);
  v8 = v0[7];
  v16 = &type metadata for UInt16;
  LOWORD(v15[0]) = v8;
  sub_100073BBC(v15, 7);
  v9 = *(v0 + 2);
  v16 = &type metadata for UInt64;
  v15[0] = v9;
  sub_100073BBC(v15, 8);
  v10 = *(v0 + 3);
  v16 = &type metadata for UInt64;
  v15[0] = v10;
  sub_100073BBC(v15, 9);
  v11 = *(v0 + 4);
  v16 = &type metadata for UInt64;
  v15[0] = v11;
  sub_100073BBC(v15, 10);
  v12 = *(v0 + 5);
  v16 = &type metadata for UInt64;
  v15[0] = v12;
  sub_100073BBC(v15, 11);
  v13 = sub_1001D9F1C(v17);

  return v13;
}

void NANWiFiAwareAppStatistics.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 4));
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 10));
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 14));
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 40));
}

Swift::Int NANWiFiAwareAppStatistics.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 4));
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 10));
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 14));
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 40));
  return Hasher._finalize()();
}

Swift::Int sub_10021E638()
{
  v1 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = *(v0 + 8);
  v7 = *(v0 + 10);
  v8 = *(v0 + 12);
  v9 = *(v0 + 14);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  return Hasher._finalize()();
}

void sub_10021E750()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v10 = *(v0 + 32);
  v11 = *(v0 + 40);
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  v5 = *(v0 + 6);
  v6 = *(v0 + 8);
  v7 = *(v0 + 10);
  v8 = *(v0 + 12);
  v9 = *(v0 + 14);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
}

Swift::Int sub_10021E824(uint64_t a1)
{
  v2 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = *(v1 + 4);
  v6 = *(v1 + 6);
  v7 = *(v1 + 8);
  v8 = *(v1 + 10);
  v9 = *(v1 + 12);
  v10 = *(v1 + 14);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  return Hasher._finalize()();
}

BOOL sub_10021E938(_OWORD *a1, __int128 *a2)
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
  return _s7CoreP2P25NANWiFiAwareAppStatisticsV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

BOOL _s7CoreP2P22NANWiFiAwareStatisticsV23__derived_struct_equalsySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + 2) == *(a2 + 16) ? (v5 = *(a1 + 3) == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + 32) == *(a2 + 32) && *(a1 + 33) == *(a2 + 33) && *(a1 + 34) == *(a2 + 34) && *(a1 + 5) == *(a2 + 40) && *(a1 + 6) == *(a2 + 48) && *(a1 + 7) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && ((*(a1 + 65) ^ *(a2 + 65)) & 1) == 0 && ((*(a1 + 66) ^ *(a2 + 66)) & 1) == 0 && ((*(a1 + 67) ^ *(a2 + 67)) & 1) == 0 && *(a1 + 68) == *(a2 + 68) && ((*(a1 + 69) ^ *(a2 + 69)) & 1) == 0 && ((*(a1 + 70) ^ *(a2 + 70)) & 1) == 0 && ((*(a1 + 71) ^ *(a2 + 71)) & 1) == 0 && ((*(a1 + 72) ^ *(a2 + 72)) & 1) == 0 && ((*(a1 + 73) ^ *(a2 + 73)) & 1) == 0 && ((*(a1 + 74) ^ *(a2 + 74)) & 1) == 0 && ((*(a1 + 75) ^ *(a2 + 75)) & 1) == 0 && *(a1 + 10) == *(a2 + 80) && *(a1 + 11) == *(a2 + 88) && ((*(a1 + 96) ^ *(a2 + 96)) & 1) == 0 && *(a1 + 25) == *(a2 + 100) && *(a1 + 104) == *(a2 + 104) && ((*(a1 + 105) ^ *(a2 + 105)) & 1) == 0 && ((*(a1 + 106) ^ *(a2 + 106)) & 1) == 0 && ((*(a1 + 107) ^ *(a2 + 107)) & 1) == 0 && *(a1 + 14) == *(a2 + 112) && *(a1 + 15) == *(a2 + 120) && ((*(a1 + 128) ^ *(a2 + 128)) & 1) == 0 && *(a1 + 33) == *(a2 + 132) && *(a1 + 34) == *(a2 + 136) && *(a1 + 35) == *(a2 + 140) && *(a1 + 36) == *(a2 + 144) && *(a1 + 19) == *(a2 + 152) && *(a1 + 160) == *(a2 + 160) && *(a1 + 21) == *(a2 + 168) && a1[22] == *(a2 + 176) && a1[23] == *(a2 + 184) && a1[24] == *(a2 + 192) && a1[25] == *(a2 + 200) && a1[26] == *(a2 + 208) && a1[27] == *(a2 + 216) && a1[28] == *(a2 + 224) && a1[29] == *(a2 + 232) && a1[30] == *(a2 + 240) && a1[31] == *(a2 + 248) && a1[32] == *(a2 + 256) && a1[33] == *(a2 + 264) && a1[34] == *(a2 + 272)))
  {
    return a1[35] == *(a2 + 280);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10021EE40(int a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  if (a1 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }
  }

  else if (a4 == 2 || ((a4 ^ a1) & 1) != 0)
  {
    return 0;
  }

  if (((a1 ^ a4) & 0x100) != 0 || ((a1 ^ a4) & 0x10000) != 0)
  {
    return 0;
  }

  sub_1000CE5B8(a2, a5);
  v9 = a3 ^ a6 ^ 1;
  if ((v10 & 1) == 0)
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t _s7CoreP2P23NANCoreAnalyticsMetricsV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0 && ((*(a1 + 5) ^ *(a2 + 5)) & 1) == 0 && ((*(a1 + 6) ^ *(a2 + 6)) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17) && *(a1 + 18) == *(a2 + 18) && *(a1 + 19) == *(a2 + 19) && *(a1 + 20) == *(a2 + 20) && *(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28) && *(a1 + 32) == *(a2 + 32))
  {
    v2 = *(a1 + 33) == *(a2 + 33) && *(a1 + 37) == *(a2 + 37);
    if (v2 && *(a1 + 40) == *(a2 + 40) && *(a1 + 44) == *(a2 + 44) && *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) && *(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112) && *(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128) && *(a1 + 136) == *(a2 + 136) && *(a1 + 144) == *(a2 + 144) && *(a1 + 152) == *(a2 + 152) && *(a1 + 160) == *(a2 + 160) && *(a1 + 168) == *(a2 + 168) && *(a1 + 176) == *(a2 + 176) && *(a1 + 184) == *(a2 + 184) && *(a1 + 192) == *(a2 + 192) && *(a1 + 200) == *(a2 + 200) && *(a1 + 208) == *(a2 + 208) && *(a1 + 216) == *(a2 + 216) && *(a1 + 224) == *(a2 + 224) && (sub_1000BEA94(*(a1 + 232), *(a2 + 232)) & 1) != 0 && (sub_1000BEA94(*(a1 + 240), *(a2 + 240)) & 1) != 0 && (sub_1000BEA94(*(a1 + 248), *(a2 + 248)) & 1) != 0 && (sub_1000BEA94(*(a1 + 256), *(a2 + 256)) & 1) != 0 && (sub_1000BEA94(*(a1 + 264), *(a2 + 264)) & 1) != 0 && (sub_1000BEA94(*(a1 + 272), *(a2 + 272)) & 1) != 0 && (sub_1000BEA94(*(a1 + 280), *(a2 + 280)) & 1) != 0 && (sub_1000BEA94(*(a1 + 288), *(a2 + 288)) & 1) != 0 && (sub_1000BEA94(*(a1 + 296), *(a2 + 296)) & 1) != 0 && (sub_1000BEA94(*(a1 + 304), *(a2 + 304)) & 1) != 0 && (sub_1000BEA94(*(a1 + 312), *(a2 + 312)) & 1) != 0 && (sub_1000BEA94(*(a1 + 320), *(a2 + 320)) & 1) != 0 && (sub_1000BEA94(*(a1 + 328), *(a2 + 328)) & 1) != 0 && (sub_1000BEA94(*(a1 + 336), *(a2 + 336)) & 1) != 0)
    {
      v5 = *(a1 + 352);
      v6 = *(a2 + 352);
      if (v5)
      {
        if (v6)
        {
          v7 = *(a1 + 344);
          v8 = *(a1 + 360);
          v9 = *(a2 + 344);
          v10 = *(a2 + 360);

          v11 = sub_10021EE40(v7 & 0x101FF, v5, v8 & 1, v9 & 0x101FF, v6, v10 & 1);

          if (v11)
          {
            return 1;
          }
        }
      }

      else if (!v6)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_10021F448(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x34)
  {
    return 52;
  }

  else
  {
    return v2;
  }
}

unint64_t _s7CoreP2P22NANWiFiAwareStatisticsV9AppStatusO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_10021F4AC(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x3F)
  {
    return 63;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10021F500(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100555BB0, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10021F54C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100555CF0, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

void sub_10021F598(uint64_t a1, char a2, unint64_t *a3)
{
  v3 = a3;
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1000C0810(0, v4, 0);
    v6 = 0;
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = sub_100219B9C(a2);
      v10 = v9;
      v25[2] = v6;
      sub_100086E78();
      v11 = BinaryInteger.description.getter();
      v13 = v12;
      v25[0] = v8;
      v25[1] = v10;

      v14._countAndFlagsBits = v11;
      v14._object = v13;
      String.append(_:)(v14);

      v15.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
      v26 = v7;
      v17 = v7[2];
      v16 = v7[3];
      if (v17 >= v16 >> 1)
      {
        isa = v15.super.super.isa;
        sub_1000C0810((v16 > 1), v17 + 1, 1);
        v15.super.super.isa = isa;
        v7 = v26;
      }

      ++v6;
      v7[2] = v17 + 1;
      v18 = &v7[3 * v17];
      v18[4].super.super.isa = v8;
      v18[5].super.super.isa = v10;
      v18[6].super.super.isa = v15.super.super.isa;
    }

    while (v4 != v6);
    v3 = a3;
  }

  else if (!_swiftEmptyArrayStorage[2])
  {
    v20 = &_swiftEmptyDictionarySingleton;
    goto LABEL_9;
  }

  sub_10005DC58(&qword_10058F340, &qword_1004948F0);
  v20 = static _DictionaryStorage.allocate(capacity:)();
LABEL_9:
  v25[0] = v20;

  sub_100236478(v21, 1, v25);

  v22 = v25[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25[0] = *v3;
  sub_1001EA09C(v22, sub_1001E874C, 0, isUniquelyReferenced_nonNull_native, v25);

  *v3 = v25[0];
}

uint64_t type metadata accessor for NANInternetSharingStatistics.Requester(uint64_t a1)
{
  result = qword_1005919F8;
  if (!qword_1005919F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10021F820()
{
  result = qword_100591918;
  if (!qword_100591918)
  {
    result = swift_getWitnessTable("\tB\v", &type metadata for NANInternetSharingStatistics.Requester.InternetSharingPolicyChannelState, v0, v1);
    atomic_store(result, &qword_100591918);
  }

  return result;
}

uint64_t sub_10021F874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021F8D8(uint64_t a1)
{
  v2 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10021F938()
{
  result = qword_100591920;
  if (!qword_100591920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANCoreAnalyticsMetrics, &type metadata for NANCoreAnalyticsMetrics, v0, v1);
    atomic_store(result, &qword_100591920);
  }

  return result;
}

unint64_t sub_10021F990()
{
  result = qword_100591928;
  if (!qword_100591928)
  {
    result = swift_getWitnessTable("qA\v", &type metadata for NANInternetSharingStatistics.Provider.SharingMode, v0, v1);
    atomic_store(result, &qword_100591928);
  }

  return result;
}

unint64_t sub_10021F9E8()
{
  result = qword_100591930;
  if (!qword_100591930)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANInternetSharingStatistics.Provider, &type metadata for NANInternetSharingStatistics.Provider, v0, v1);
    atomic_store(result, &qword_100591930);
  }

  return result;
}

unint64_t sub_10021FA40()
{
  result = qword_100591938;
  if (!qword_100591938)
  {
    result = swift_getWitnessTable("i@\v", &type metadata for NANInternetSharingStatistics.Requester.InternetSharingPolicyChannelState, v0, v1);
    atomic_store(result, &qword_100591938);
  }

  return result;
}

unint64_t sub_10021FA98()
{
  result = qword_100591940;
  if (!qword_100591940)
  {
    v3 = type metadata accessor for NANInternetSharingStatistics.Requester(255);
    result = swift_getWitnessTable(protocol conformance descriptor for NANInternetSharingStatistics.Requester, v3, v0, v1);
    atomic_store(result, &qword_100591940);
  }

  return result;
}

unint64_t sub_10021FAF4()
{
  result = qword_100591948;
  if (!qword_100591948)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANInternetSharingStatistics.Status, &type metadata for NANInternetSharingStatistics.Status, v0, v1);
    atomic_store(result, &qword_100591948);
  }

  return result;
}

unint64_t sub_10021FB4C()
{
  result = qword_100591950;
  if (!qword_100591950)
  {
    result = swift_getWitnessTable("A>\v", &type metadata for NANInternetSharingStatistics, v0, v1);
    atomic_store(result, &qword_100591950);
  }

  return result;
}

unint64_t sub_10021FBA4()
{
  result = qword_100591958;
  if (!qword_100591958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OperationType, &type metadata for OperationType, v0, v1);
    atomic_store(result, &qword_100591958);
  }

  return result;
}

unint64_t sub_10021FBFC()
{
  result = qword_100591960;
  if (!qword_100591960)
  {
    result = swift_getWitnessTable("y=\v", &type metadata for NANWiFiAwareStatistics.TerminationReason, v0, v1);
    atomic_store(result, &qword_100591960);
  }

  return result;
}

unint64_t sub_10021FC54()
{
  result = qword_100591968;
  if (!qword_100591968)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANWiFiAwareStatistics.ClientType, &type metadata for NANWiFiAwareStatistics.ClientType, v0, v1);
    atomic_store(result, &qword_100591968);
  }

  return result;
}

unint64_t sub_10021FCAC()
{
  result = qword_100591970;
  if (!qword_100591970)
  {
    result = swift_getWitnessTable("9<\v", &type metadata for NANWiFiAwareStatistics.AppStatus, v0, v1);
    atomic_store(result, &qword_100591970);
  }

  return result;
}

unint64_t sub_10021FD04()
{
  result = qword_100591978;
  if (!qword_100591978)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANWiFiAwareStatistics.PeerType, &type metadata for NANWiFiAwareStatistics.PeerType, v0, v1);
    atomic_store(result, &qword_100591978);
  }

  return result;
}

unint64_t sub_10021FD5C()
{
  result = qword_100591980;
  if (!qword_100591980)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANWiFiAwareStatistics, &type metadata for NANWiFiAwareStatistics, v0, v1);
    atomic_store(result, &qword_100591980);
  }

  return result;
}

unint64_t sub_10021FDB4()
{
  result = qword_100591988;
  if (!qword_100591988)
  {
    result = swift_getWitnessTable("Q:\v", &type metadata for NANAppUsage, v0, v1);
    atomic_store(result, &qword_100591988);
  }

  return result;
}

unint64_t sub_10021FE0C()
{
  result = qword_100591990;
  if (!qword_100591990)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANWiFiAwareSystemStatistics, &type metadata for NANWiFiAwareSystemStatistics, v0, v1);
    atomic_store(result, &qword_100591990);
  }

  return result;
}

unint64_t sub_10021FE64()
{
  result = qword_100591998;
  if (!qword_100591998)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANWiFiAwareAppStatistics, &type metadata for NANWiFiAwareAppStatistics, v0, v1);
    atomic_store(result, &qword_100591998);
  }

  return result;
}

uint64_t sub_10021FEC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 361))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 232);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10021FF08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 361) = 1;
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
      *(result + 232) = (a2 - 1);
      return result;
    }

    *(result + 361) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10021FFB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_100220000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANInternetSharingStatistics.Provider(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for NANInternetSharingStatistics.Provider(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1002201DC(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100220270(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1002202CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_100220350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
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

uint64_t sub_100220398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
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

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100220484(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1002204CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANCoreAnalyticsMetrics.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC2)
  {
    goto LABEL_17;
  }

  if (a2 + 62 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 62) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 62;
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

      return (*a1 | (v4 << 8)) - 62;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 62;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3F;
  v8 = v6 - 63;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANCoreAnalyticsMetrics.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 62 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 62) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC2)
  {
    v4 = 0;
  }

  if (a2 > 0xC1)
  {
    v5 = ((a2 - 194) >> 8) + 1;
    *result = a2 + 62;
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
    *result = a2 + 62;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002206A4()
{
  result = qword_100591A30;
  if (!qword_100591A30)
  {
    result = swift_getWitnessTable(byte_10049BC58, &type metadata for NANCoreAnalyticsMetrics.Key, v0, v1);
    atomic_store(result, &qword_100591A30);
  }

  return result;
}

unint64_t sub_1002206F8()
{
  result = qword_100591A38;
  if (!qword_100591A38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANInternetSharingStatistics.Requester.InternetSharingPolicyChannelState, &type metadata for NANInternetSharingStatistics.Requester.InternetSharingPolicyChannelState, v0, v1);
    atomic_store(result, &qword_100591A38);
  }

  return result;
}

uint64_t sub_10022074C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANInternetSharingStatistics.Requester(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for NANWiFiAwareStatistics.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
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

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANWiFiAwareStatistics.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
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
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANWiFiAwareAppStatistics.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANWiFiAwareAppStatistics.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100220A64()
{
  result = qword_100591A50;
  if (!qword_100591A50)
  {
    result = swift_getWitnessTable(byte_10049BD18, &type metadata for NANWiFiAwareAppStatistics.Key, v0, v1);
    atomic_store(result, &qword_100591A50);
  }

  return result;
}

unint64_t sub_100220ABC()
{
  result = qword_100591A58;
  if (!qword_100591A58)
  {
    result = swift_getWitnessTable("Q4\v", &type metadata for NANWiFiAwareSystemStatistics.Key, v0, v1);
    atomic_store(result, &qword_100591A58);
  }

  return result;
}

unint64_t sub_100220B14()
{
  result = qword_100591A60;
  if (!qword_100591A60)
  {
    result = swift_getWitnessTable(byte_10049BE58, &type metadata for NANWiFiAwareStatistics.Key, v0, v1);
    atomic_store(result, &qword_100591A60);
  }

  return result;
}

void *sub_100220B90(void *(*a1)(unsigned int *__return_ptr, void *, char *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      v12[0] = a3;
      LOWORD(v12[1]) = a4;
      BYTE2(v12[1]) = BYTE2(a4);
      BYTE3(v12[1]) = BYTE3(a4);
      BYTE4(v12[1]) = BYTE4(a4);
      BYTE5(v12[1]) = BYTE5(a4);
      v7 = v12 + BYTE6(a4);
      goto LABEL_9;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    return sub_100222E80(v8, v9, a1);
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    return sub_100222E80(v8, v9, a1);
  }

  memset(v12, 0, 14);
  v7 = v12;
LABEL_9:
  result = a1(&v11, v12, v7);
  if (!v4)
  {
    return v11;
  }

  return result;
}

void sub_100220CE0(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = _s3SAEVMa(0);
  v27 = *(v13 + 28);
  Logger.init(subsystem:category:)();
  *a6 = a1 & 1;
  _s3SAEV7ContextCMa(0);
  swift_allocObject();
  v14 = sub_100222028(a1 & 1);
  v15 = v14;
  if (!v14)
  {
    sub_10000B02C();
    swift_allocError();
    *v22 = xmmword_1004881C0;
    *(v22 + 16) = 1;
    swift_willThrow();
    sub_1000124C8(a4, a5);
    v17 = v27;
LABEL_8:
    v23 = type metadata accessor for Logger();
    (*(*(v23 - 8) + 8))(a6 + v17, v23);
    if (v15)
    {
    }

    return;
  }

  *(a6 + *(v13 + 32)) = v14;
  *(a6 + 1) = a2;
  *(a6 + 3) = BYTE2(a2);
  *(a6 + 4) = BYTE3(a2);
  *(a6 + 5) = BYTE4(a2);
  *(a6 + 6) = BYTE5(a2);
  *(a6 + 7) = a3;
  *(a6 + 9) = BYTE2(a3);
  *(a6 + 10) = BYTE3(a3);
  *(a6 + 11) = BYTE4(a3);
  *(a6 + 12) = BYTE5(a3);
  sub_10000AB0C(a4, a5);

  sub_100222708(a4, a5, a1 & 1, &v28);
  if (v26)
  {
    sub_1000124C8(a4, a5);
    __break(1u);
    return;
  }

  v16 = v28;
  sub_1000124C8(a4, a5);
  v17 = v27;
  v18 = Logger.logObject.getter();
  if (v16)
  {
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to create hash to curve parameter for SAE with error: %d", v20, 8u);
    }

    sub_10000B02C();
    swift_allocError();
    *v21 = xmmword_1004881C0;
    *(v21 + 16) = 1;
    swift_willThrow();
    sub_1000124C8(a4, a5);

    goto LABEL_8;
  }

  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v18, v24, "init", v25, 2u);
  }

  sub_1000124C8(a4, a5);
}

uint64_t sub_1002210A4(__n128 a1)
{
  v2 = v1;
  _s3SAEVMa(0);
  v3 = ccsae_sizeof_commitment();
  v16 = sub_10014345C(v3);
  v17 = v4;
  v15 = v1;
  sub_10029D9A4(sub_1002231FC, &v14);
  v6 = v5;
  v7 = Logger.logObject.getter();
  if (v6)
  {
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to generate SAE commit with error: %d", v9, 8u);
    }

    sub_10000B02C();
    swift_allocError();
    *v10 = xmmword_1004881C0;
    *(v10 + 16) = 1;
    swift_willThrow();
    return sub_1000124C8(v16, v17);
  }

  else
  {
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v7, v12, "generateCommit", v13, 2u);
    }

    return *v2;
  }
}

uint64_t sub_100221278(uint64_t a1, unint64_t a2, __n128 a3)
{
  v5 = _s3SAEVMa(0);
  __chkstk_darwin();
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = 0;
  swift_stdlib_random();
  v8 = v40;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v10 = 0;
    if (v9 != 2)
    {
      goto LABEL_10;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a1), a1))
  {
    __break(1u);
    goto LABEL_39;
  }

  v10 = HIDWORD(a1) - a1;
LABEL_10:
  if (v10 != ccsae_sizeof_commitment())
  {
    sub_1002230C0(v38, v7);
    sub_10000AB0C(a1, a2);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      sub_100223124(v7);
      sub_1000124C8(a1, a2);
LABEL_35:

LABEL_36:
      sub_10000B02C();
      swift_allocError();
      *v35 = xmmword_1004881C0;
      *(v35 + 16) = 1;
      swift_willThrow();
      return v8;
    }

    v20 = swift_slowAlloc();
    *v20 = 134218240;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v30 = *(a1 + 16);
        v29 = *(a1 + 24);
        v31 = __OFSUB__(v29, v30);
        v21 = v29 - v30;
        if (v31)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_34;
    }

    if (!v9)
    {
      v21 = BYTE6(a2);
LABEL_34:
      *(v20 + 4) = v21;
      v8 = v20;
      sub_1000124C8(a1, a2);
      *(v8 + 12) = 2048;
      v34 = ccsae_sizeof_commitment();
      sub_100223124(v7);
      *(v8 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to verify SAE commit from peer because the size %ld is not equal the expected size %ld", v8, 0x16u);

      goto LABEL_35;
    }

    LODWORD(v21) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v21 = v21;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
  }

  __chkstk_darwin();
  *(&v37 - 2) = v38;
  v13 = sub_100220B90(sub_1002231B0, (&v37 - 4), a1, a2);
  if (v13)
  {
    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to verify SAE commit from peer with error: %d", v17, 8u);
    }

    goto LABEL_36;
  }

  v22 = ccsae_sizeof_confirmation();
  v40 = sub_10014345C(v22);
  v41 = v23;
  v39 = v8;
  __chkstk_darwin();
  *(&v37 - 2) = v38;
  *(&v37 - 1) = &v39;
  sub_10029D9A4(sub_1002231CC, (&v37 - 4));
  v25 = v24;
  v5 = Logger.logObject.getter();
  if (v25)
  {
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v5, v26, "Failed to generate SAE confirmation with error: %d", v27, 8u);
    }

    sub_10000B02C();
    swift_allocError();
    *v28 = xmmword_1004881C0;
    *(v28 + 16) = 1;
    swift_willThrow();
    sub_1000124C8(v40, v41);
    return v8;
  }

LABEL_28:
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v5, v32, "generateConfirmation", v33, 2u);
  }

  return v8;
}

void sub_1002217CC(__n128 a1)
{
  _s3SAEVMa(0);
  v2 = ccsae_sizeof_kck_h2c();
  v40 = sub_10014345C(v2);
  v41 = v3;
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v38 = 0x2000000000;
  v39 = __DataStorage.init(length:)() | 0x4000000000000000;
  swift_allocObject();
  v36 = 0x1000000000;
  v37 = __DataStorage.init(length:)() | 0x4000000000000000;
  v34[2] = &v38;
  v34[3] = &v36;
  v35 = v1;
  sub_10029D9A4(sub_100222FD8, v34);
  if (v4)
  {
    v5 = v4;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67109120;
      *(v8 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Failed to generate SAE keys with error: %d", v8, 8u);
LABEL_39:
    }

LABEL_40:

    sub_10000B02C();
    swift_allocError();
    *v33 = xmmword_1004881C0;
    *(v33 + 16) = 1;
    swift_willThrow();
    sub_1000124C8(v40, v41);
    sub_1000124C8(v36, v37);
    sub_1000124C8(v38, v39);
    return;
  }

  v9 = v38;
  v10 = v39;
  v11 = v39 >> 62;
  if ((v39 >> 62) <= 1)
  {
    if (!v11)
    {
      if (BYTE6(v39) != 32)
      {
        goto LABEL_16;
      }

LABEL_15:
      v15 = v36;
      v16 = v37;
      sub_10000AB0C(v36, v37);
      _s7CoreP2P6NANPMKV2IDVyAESg10Foundation4DataVcfC_0(v15, v16);
      if (v17 >> 60 != 15)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    goto LABEL_12;
  }

  if (v11 != 2)
  {
    goto LABEL_16;
  }

  v13 = *(v38 + 16);
  v12 = *(v38 + 24);
  v14 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_12:
    if (__OFSUB__(HIDWORD(v9), v9))
    {
      __break(1u);
      goto LABEL_42;
    }

    v14 = HIDWORD(v9) - v9;
  }

  sub_10000AB0C(v9, v10);
  if (v14 == 32)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_1000124C8(v9, v10);
  v6 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v6, v18))
  {
    goto LABEL_40;
  }

  v19 = swift_slowAlloc();
  *v19 = 134218752;
  swift_beginAccess();
  v20 = v39 >> 62;
  if ((v39 >> 62) <= 1)
  {
    if (!v20)
    {
      v21 = BYTE6(v39);
LABEL_29:
      *(v19 + 4) = v21;
      *(v19 + 12) = 2048;
      *(v19 + 14) = 32;
      *(v19 + 22) = 2048;
      swift_beginAccess();
      v28 = v36;
      v29 = v37 >> 62;
      if ((v37 >> 62) > 1)
      {
        v30 = 0;
        if (v29 != 2)
        {
          goto LABEL_38;
        }

        v28 = *(v36 + 16);
        v31 = *(v36 + 24);
        v24 = __OFSUB__(v31, v28);
        v30 = v31 - v28;
        if (!v24)
        {
          goto LABEL_38;
        }

        __break(1u);
      }

      else if (!v29)
      {
        v30 = BYTE6(v37);
LABEL_38:
        *(v19 + 24) = v30;
        *(v19 + 32) = 2048;
        *(v19 + 34) = 16;
        _os_log_impl(&_mh_execute_header, v6, v18, "Failed to generate SAE keys because they were not the correct size for a PMK (%ld, expected %ld and PMKID (%ld, expected %ld", v19, 0x2Au);
        goto LABEL_39;
      }

      v24 = __OFSUB__(HIDWORD(v28), v28);
      v32 = HIDWORD(v28) - v28;
      if (!v24)
      {
        v30 = v32;
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    if (!__OFSUB__(HIDWORD(v38), v38))
    {
      v21 = HIDWORD(v38) - v38;
      goto LABEL_29;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return;
  }

  v21 = 0;
  if (v20 != 2)
  {
    goto LABEL_29;
  }

  v22 = *(v38 + 16);
  v23 = *(v38 + 24);
  v24 = __OFSUB__(v23, v22);
  v21 = v23 - v22;
  if (!v24)
  {
    goto LABEL_29;
  }

  __break(1u);
LABEL_24:
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "generateKeys", v27, 2u);
  }

  sub_1000124C8(v40, v41);
  sub_1000124C8(v36, v37);
  sub_1000124C8(v38, v39);
}

void sub_100221C40(__int16 a1, uint64_t a2, unint64_t a3, __n128 a4)
{
  _s3SAEVMa(0);
  __chkstk_darwin();
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v11 = 0;
    if (v10 != 2)
    {
      goto LABEL_10;
    }

    v13 = *(a2 + 16);
    v12 = *(a2 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v10)
  {
    v11 = BYTE6(a3);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    goto LABEL_34;
  }

  v11 = HIDWORD(a2) - a2;
LABEL_10:
  if (v11 != ccsae_sizeof_confirmation())
  {
    sub_1002230C0(v4, v9);
    sub_10000AB0C(a2, a3);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      sub_100223124(v9);
      sub_1000124C8(a2, a3);
LABEL_31:

LABEL_32:
      sub_10000B02C();
      swift_allocError();
      *v29 = xmmword_1004881C0;
      *(v29 + 16) = 1;
      swift_willThrow();
      return;
    }

    v20 = swift_slowAlloc();
    *v20 = 134218240;
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        v21 = 0;
        goto LABEL_30;
      }

      v25 = *(a2 + 16);
      v24 = *(a2 + 24);
      v26 = __OFSUB__(v24, v25);
      v21 = v24 - v25;
      if (!v26)
      {
        goto LABEL_30;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v21 = BYTE6(a3);
LABEL_30:
      *(v20 + 4) = v21;
      v27 = v20;
      sub_1000124C8(a2, a3);
      *(v27 + 12) = 2048;
      v28 = ccsae_sizeof_confirmation();
      sub_100223124(v9);
      *(v27 + 14) = v28;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to verify SAE confirmation from peer because the size %ld is not equal the expected size %ld", v27, 0x16u);

      goto LABEL_31;
    }

    LODWORD(v21) = HIDWORD(a2) - a2;
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v21 = v21;
      goto LABEL_30;
    }

LABEL_34:
    __break(1u);
  }

  v31 = a1;
  __chkstk_darwin();
  *&v30[-16] = v4;
  *&v30[-8] = &v31;
  v14 = sub_100220B90(sub_100223180, &v30[-32], a2, a3);
  v15 = Logger.logObject.getter();
  if (v14)
  {
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failed to verify SAE confirmation from peer with error: %d", v17, 8u);
    }

    goto LABEL_32;
  }

  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v15, v22, "verifyConfirmation", v23, 2u);
  }
}
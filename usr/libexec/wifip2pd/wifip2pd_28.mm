char *sub_100222028(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCVV7CoreP2P10NANPairing3SAEP33_4B94487B91F65D95BFC0BE9A4FCAE2417Context_logger;
  Logger.init(subsystem:category:)();
  if (a1)
  {
    if (!ccec_cp_384())
    {
      goto LABEL_14;
    }
  }

  else if (!ccec_cp_256())
  {
LABEL_14:
    (*(v5 + 8))(&v2[v8], v4);
    _s3SAEV7ContextCMa(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (!ccrng())
  {
    goto LABEL_14;
  }

  v9 = ccsae_sizeof_ctx();
  v10 = swift_slowAlloc();
  *(v2 + 2) = v10;
  *(v2 + 3) = v10 + v9;
  *(v2 + 4) = v10;
  if ((a1 & 1) == 0)
  {
    if (!ccsae_init_p256_sha256())
    {
      sub_1004772D8();
      goto LABEL_17;
    }

LABEL_10:
    (*(v5 + 16))(v7, &v2[v8], v4);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to initialize SAE", v13, 2u);
    }

    (*(v5 + 8))(v7, v4);
    if (*(v2 + 2))
    {
    }

    goto LABEL_14;
  }

  if (ccsae_init_p384_sha384())
  {
    goto LABEL_10;
  }

  sub_1004772E4();
LABEL_17:
  *(v2 + 6) = ccsae_sizeof_pt();
  *(v2 + 5) = swift_slowAlloc();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "context init", v17, 2u);
  }

  return v2;
}

uint64_t sub_10022234C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {
  }

  v6 = OBJC_IVAR____TtCVV7CoreP2P10NANPairing3SAEP33_4B94487B91F65D95BFC0BE9A4FCAE2417Context_logger;
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtCVV7CoreP2P10NANPairing3SAEP33_4B94487B91F65D95BFC0BE9A4FCAE2417Context_logger, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "context deinit", v9, 2u);
  }

  v10 = *(v3 + 8);
  v10(v5, v2);
  v10((v1 + v6), v2);
  return v1;
}

uint64_t sub_1002224E8()
{
  sub_10022234C();

  return swift_deallocClassInstance();
}

uint64_t sub_100222564(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100222664(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = _s3SAEV7ContextCMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100222708@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, _DWORD *a8@<X8>)
{
  v10 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v10 != 2)
    {

      if (a4)
      {
LABEL_19:
        sub_1004772E4();
LABEL_21:
        String.count.getter();
        _s3SAEVMa(0);
LABEL_28:
        h2c_pt = ccsae_generate_h2c_pt();

        *a8 = h2c_pt;
        return result;
      }

LABEL_20:
      sub_1004772D8();
      goto LABEL_21;
    }

    v11 = a8;
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);

    v14 = __DataStorage._bytes.getter();
    if (v14)
    {
      v15 = __DataStorage._offset.getter();
      if (__OFSUB__(v12, v15))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v14 += v12 - v15;
    }

    if (!__OFSUB__(v13, v12))
    {
      __DataStorage._length.getter();
      if (a4)
      {
        sub_1004772E4();
      }

      else
      {
        sub_1004772D8();
      }

      a8 = v11;
      result = String.count.getter();
      if (v14)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v10)
  {

    if (a4)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v16 = a8;
  v17 = a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_30;
  }

  v18 = __DataStorage._bytes.getter();
  if (!v18)
  {
    goto LABEL_16;
  }

  v19 = __DataStorage._offset.getter();
  if (__OFSUB__(v17, v19))
  {
LABEL_32:
    __break(1u);
  }

  v18 += v17 - v19;
LABEL_16:
  a8 = v16;
  __DataStorage._length.getter();
  if (a4)
  {
    sub_1004772E4();
  }

  else
  {
    sub_1004772D8();
  }

  result = String.count.getter();
  if (v18)
  {
LABEL_27:
    _s3SAEVMa(0);
    goto LABEL_28;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100222A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int *a4@<X8>)
{
  v8 = *(a3 + 5);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004817D0;
  *(v9 + 32) = *(a3 + 1);
  *(v9 + 36) = v8;
  v10 = sub_10002D874(v9);
  v12 = v11;

  v15[2] = a3;
  v15[3] = a1;
  v15[4] = a2;
  v13 = sub_100220B90(sub_100223218, v15, v10, v12);
  result = sub_1000124C8(v10, v12);
  *a4 = v13;
  return result;
}

uint64_t sub_100222B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X8>)
{
  v19 = a6;
  v11 = *(a3 + 11);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004817D0;
  *(v12 + 32) = *(a3 + 7);
  *(v12 + 36) = v11;
  v13 = sub_10002D874(v12);
  v15 = v14;

  v18[2] = a3;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a4;
  v18[6] = a5;
  v16 = sub_100220B90(sub_100223238, v18, v13, v15);
  result = sub_1000124C8(v13, v15);
  *v19 = v16;
  return result;
}

uint64_t sub_100222C8C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X5>, _DWORD *a5@<X8>)
{
  result = _s3SAEVMa(0);
  if (!a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a4)
  {
    result = ccsae_generate_h2c_commit();
    *a5 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100222D20@<X0>(uint64_t a1@<X0>, _DWORD *a3@<X8>)
{
  result = _s3SAEVMa(0);
  if (a1)
  {
    result = ccsae_verify_commitment();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100222D80@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, uint64_t a4@<X5>, _DWORD *a5@<X8>)
{
  result = _s3SAEVMa(0);
  if (!a3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!a4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1)
  {
    result = ccsae_get_keys();
    *a5 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100222E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X4>, _DWORD *a5@<X8>)
{
  result = _s3SAEVMa(0);
  if (a1)
  {
    result = a4(*(*(a2 + *(result + 32)) + 32), a3, a1);
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_100222E80(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

uint64_t sub_100222F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = __DataStorage._bytes.getter();
  v7 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = __DataStorage._length.getter();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

void sub_100222FD8(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6[1] = *(v3 + 24);
  v7 = a1;
  v8 = a2;
  sub_10029D9A4(sub_100223034, v6);
  *a3 = v5;
}

void sub_100223034(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6[2] = *(v3 + 24);
  v7 = *(v3 + 32);
  v8 = a1;
  v9 = a2;
  sub_10029D9A4(sub_100223094, v6);
  *a3 = v5;
}

uint64_t sub_1002230C0(uint64_t a1, uint64_t a2)
{
  v4 = _s3SAEVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100223124(uint64_t a1)
{
  v2 = _s3SAEVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SystemInfo.string(for:)(uint64_t a1, uint64_t a2)
{
  sub_100223578(v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000BA934(v4);
    return 0;
  }
}

uint64_t sub_100223504()
{
  v0 = type metadata accessor for Logger();
  sub_100068888(v0, qword_100591BE0);
  sub_100037644(v0, qword_100591BE0);
  return Logger.init(subsystem:category:)();
}

double sub_100223578@<D0>(uint64_t a3@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = MGCopyAnswerWithError();

  if (v5)
  {
    *(a3 + 24) = swift_getObjectType();
    *a3 = v5;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t LinkStatistics.description.getter()
{
  _StringGuts.grow(_:)(104);
  v0._object = 0x80000001004BD520;
  v0._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6B6361507874202CLL;
  v2._object = 0xED0000203A737465;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6B6361507872202CLL;
  v4._object = 0xED0000203A737465;
  String.append(_:)(v4);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x203A616363202CLL;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x534249616363202CLL;
  v8._object = 0xEB00000000203A53;
  String.append(_:)(v8);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0x53424F616363202CLL;
  v10._object = 0xEB00000000203A53;
  String.append(_:)(v10);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x6E6F4E616363202CLL;
  v12._object = 0xEE00203A69466957;
  String.append(_:)(v12);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 93;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0;
}

CoreP2P::LinkStatistics __swiftcall LinkStatistics.init(snr:txPackets:rxPackets:cca:ccaIBSS:ccaOBSS:ccaNonWiFi:)(Swift::UInt8 snr, Swift::UInt32 txPackets, Swift::UInt32 rxPackets, Swift::UInt8 cca, Swift::UInt8 ccaIBSS, Swift::UInt8 ccaOBSS, Swift::UInt8 ccaNonWiFi)
{
  v7 = snr | (*&txPackets << 32);
  v8 = rxPackets | (cca << 32) | (ccaIBSS << 40) | (ccaOBSS << 48) | (ccaNonWiFi << 56);
  result.rxPackets = v8;
  result.cca = BYTE4(v8);
  result.ccaIBSS = BYTE5(v8);
  result.ccaOBSS = BYTE6(v8);
  result.ccaNonWiFi = HIBYTE(v8);
  result.snr = v7;
  result.txPackets = HIDWORD(v7);
  return result;
}

uint64_t LinkStatistics.encode(to:)(void *a1, unint64_t a2, unint64_t a3)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v5, v6);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v3)
  {
    sub_100031694(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v5, v6);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v5);
}

Swift::Void __swiftcall LinkStatistics.update(snr:txPackets:rxPackets:cca:ccaIBSS:ccaOBSS:ccaNonWiFi:)(Swift::UInt8 snr, Swift::UInt32 txPackets, Swift::UInt32 rxPackets, Swift::UInt8 cca, Swift::UInt8 ccaIBSS, Swift::UInt8 ccaOBSS, Swift::UInt8 ccaNonWiFi)
{
  *v7 = snr;
  v8 = *(v7 + 8) + rxPackets;
  *(v7 + 4) += txPackets;
  *(v7 + 8) = v8;
  *(v7 + 12) = cca;
  *(v7 + 13) = ccaIBSS;
  *(v7 + 14) = ccaOBSS;
  *(v7 + 15) = ccaNonWiFi;
}

void LinkStatistics.hash(into:)(int a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = HIDWORD(a2);
  v5 = HIDWORD(a3);
  v6 = a3 >> 40;
  v7 = HIWORD(a3);
  v8 = HIBYTE(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
}

Swift::Int LinkStatistics.hashValue.getter(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a2);
  v6 = a2 >> 40;
  v7 = HIWORD(a2);
  v8 = HIBYTE(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

Swift::Int sub_100223E48()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *v0;
  v4 = *(v0 + 12);
  v5 = *(v0 + 13);
  v6 = *(v0 + 14);
  v7 = *(v0 + 15);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_100223F04()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 13);
  v5 = *(v0 + 14);
  v6 = *(v0 + 15);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

Swift::Int sub_100223F8C(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v4 = *v1;
  v5 = *(v1 + 12);
  v6 = *(v1 + 13);
  v7 = *(v1 + 14);
  v8 = *(v1 + 15);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

uint64_t sub_100224044@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1002259D0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = HIDWORD(result);
    *(a1 + 8) = v5;
  }

  return result;
}

CoreP2P::MCSStatistics __swiftcall MCSStatistics.init(snr:txPackets:txMPDU:rxPackets:rxMPDU:cca:)(Swift::UInt8 snr, Swift::UInt32 txPackets, Swift::UInt32 txMPDU, Swift::UInt32 rxPackets, Swift::UInt32 rxMPDU, Swift::UInt8 cca)
{
  v6 = snr | (*&txPackets << 32);
  v7 = txMPDU | (*&rxPackets << 32);
  v8 = rxMPDU | (cca << 32);
  result.rxMPDU = v8;
  result.cca = BYTE4(v8);
  result.txMPDU = v7;
  result.rxPackets = HIDWORD(v7);
  result.snr = v6;
  *result.gap1 = *(&v6 + 1);
  result.gap1[2] = BYTE3(v6);
  result.txPackets = HIDWORD(v6);
  return result;
}

uint64_t MCSStatistics.encode(to:)(void *a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v6, v7);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v4)
  {
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v6, v7);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v6);
}

void MCSStatistics.hash(into:)(int a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = HIDWORD(a2);
  v7 = HIDWORD(a3);
  v8 = HIDWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v8);
}

Swift::Int MCSStatistics.hashValue.getter(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

Swift::Int sub_10022443C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *v0;
  v6 = *(v0 + 20);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void sub_1002244E4()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  v4 = *(v0 + 16);
  v5 = *(v0 + 20);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int sub_10022455C(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = *(v1 + 16);
  v6 = *v1;
  v7 = *(v1 + 20);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t sub_100224600@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100225C84(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = HIDWORD(result);
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 20) = BYTE4(v6);
  }

  return result;
}

void NANMulticastLinkCondition.encode(to:)(void *a1, uint64_t a2)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v14, v15);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v2)
  {
LABEL_14:
    sub_100002A00(v14);
  }

  else
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

    v9 = 0;
    v16 = a2;
    v12 = v8;
    for (i = a2 + 64; v7; v4 = i)
    {
      v10 = v9;
LABEL_9:
      v11 = *(*(a2 + 48) + (__clz(__rbit64(v7)) | (v10 << 6)));
      sub_100031694(v14, v15);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (*(a2 + 16))
      {
        sub_10007CCC8(v11);
      }

      sub_100031694(v14, v15);
      sub_10005DC58(&qword_100591BF8, &unk_10049BF90);
      sub_10022663C(&qword_100591C00, &qword_100591BF8, &unk_10049BF90, sub_100226594);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v7 &= v7 - 1;
      v9 = v10;
      a2 = v16;
      v8 = v12;
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        goto LABEL_14;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

Swift::Int NANMulticastLinkCondition.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  _s7CoreP2P25NANMulticastLinkConditionV4hash4intoys6HasherVz_tF_0(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_10022499C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7CoreP2P25NANMulticastLinkConditionV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002249EC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  _s7CoreP2P25NANMulticastLinkConditionV4hash4intoys6HasherVz_tF_0(v4, v2);
  return Hasher._finalize()();
}

void *sub_100224A30@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = NANMulticastLinkCondition.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void NANMulticastStatsPerMCS.snr.getter(uint64_t a1, unsigned int a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    v4 = __exp10(*&a3 / a2);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -1.0)
    {
      if (v4 < 256.0)
      {
        return;
      }

LABEL_8:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_8;
  }
}

void __swiftcall NANMulticastStatsPerMCS.init(packets:MPDU:snr:)(CoreP2P::NANMulticastStatsPerMCS *__return_ptr retstr, Swift::UInt32 packets, Swift::UInt32 MPDU, Swift::UInt8_optional snr)
{
  if ((*&snr & 0x100) == 0)
  {
    log(snr.value);
  }
}

void sub_100224B80(unsigned __int8 a1)
{
  if (*(v1 + 24))
  {
    v2 = log(a1) / 2.30258509;
  }

  else
  {
    v3 = *(v1 + 16);
    v2 = log(a1) / 2.30258509 + v3;
    if (fabs(v2) == INFINITY)
    {
      return;
    }
  }

  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  ++*(v1 + 8);
}

Swift::Void __swiftcall NANMulticastStatsPerMCS.addValues(packets:MPDU:snr:)(Swift::UInt32 packets, Swift::UInt32 MPDU, Swift::UInt8_optional snr)
{
  v4 = v3[1] + MPDU;
  *v3 += packets;
  v3[1] = v4;
  if ((*&snr & 0x100) == 0)
  {
    sub_100224B80(snr.value);
  }
}

unint64_t NANMulticastStatsPerMCS.init(from:)(void *a1)
{
  result = sub_1002257B4(a1);
  if (v1)
  {
    return v3 & 1;
  }

  return result;
}

uint64_t NANMulticastStatsPerMCS.encode(to:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = a3;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v8, v9);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v5)
  {
    sub_100031694(v8, v9);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v8, v9);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    if (v6)
    {
      sub_100031694(v8, v9);
      sub_10005DC58(&qword_100591C10, &qword_1004B2410);
      sub_100226A20(&qword_100591C18, &protocol witness table for Double, &protocol conformance descriptor for <A> A?);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    }
  }

  return sub_100002A00(v8);
}

uint64_t static NANMulticastStatsPerMCS.__derived_struct_equals(_:_:)(uint64_t a1, int a2, uint64_t a3, char a4, uint64_t a5, int a6, uint64_t a7, char a8)
{
  result = 0;
  if (a1 == a5 && a2 == a6)
  {
    if (a4)
    {
      if (a8)
      {
        return 1;
      }
    }

    else if ((a8 & 1) == 0 && *&a3 == *&a7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void NANMulticastStatsPerMCS.hash(into:)(int a1, unint64_t a2, Swift::UInt32 a3, Swift::UInt64 a4, char a5)
{
  v8 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(a3);
  if (a5)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    Hasher._combine(_:)(v9);
  }
}

Swift::Int NANMulticastStatsPerMCS.hashValue.getter(unint64_t a1, Swift::UInt32 a2, Swift::UInt64 a3, char a4)
{
  v7 = a1;
  v8 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(a2);
  if (a4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = 0;
    }

    Hasher._combine(_:)(v9);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100224FA4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  Hasher.init(_seed:)();
  NANMulticastStatsPerMCS.hash(into:)(v7, v2, v3, v4, v5);
  return Hasher._finalize()();
}

unint64_t sub_100225008@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1002257B4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_100225078(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v5 = 1;
    }

    if ((v5 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

CoreP2P::NANMulticastTxStats __swiftcall NANMulticastTxStats.init(tsf:dwIndex:)(CoreP2P::NANTimeSynchronizationFunction tsf, CoreP2P::NANDiscoveryWindowIndex dwIndex)
{
  v4 = sub_100082094(_swiftEmptyArrayStorage);
  index = dwIndex.index;
  value = tsf.value;
  result.tsf.value = value;
  result.dwIndex.index = index;
  result.txStats._rawValue = v4;
  return result;
}

void *NANMulticastTxStats.init(from:)(void *a1)
{
  result = sub_100225EE0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

void NANMulticastTxStats.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v16, v17);
  sub_1002265E8();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v4)
  {
LABEL_14:
    sub_100002A00(v16);
  }

  else
  {
    sub_100031694(v16, v17);
    sub_100160960();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v16, v17);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v6 = a2 + 64;
    v7 = 1 << *(a2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a2 + 64);
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    v18 = a2;
    v14 = v10;
    for (i = a2 + 64; v9; v6 = i)
    {
      v12 = v11;
LABEL_9:
      v13 = *(*(a2 + 48) + (__clz(__rbit64(v9)) | (v12 << 6)));
      sub_100031694(v16, v17);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (*(a2 + 16))
      {
        sub_10007CCC8(v13);
      }

      sub_100031694(v16, v17);
      sub_10005DC58(&qword_100591C28, &qword_10049BFA0);
      sub_10022663C(&qword_100591C30, &qword_100591C28, &qword_10049BFA0, sub_1002266B8);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v9 &= v9 - 1;
      v11 = v12;
      a2 = v18;
      v10 = v14;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        goto LABEL_14;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t static NANMulticastTxStats.__derived_struct_equals(_:_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1000CE004(a1, a4) & (a2 == a5);
  if (a3 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void NANMulticastTxStats.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt a3, Swift::UInt64 a4)
{
  sub_1000D05AC(a1, a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(a4);
}

Swift::Int NANMulticastTxStats.hashValue.getter(uint64_t a1, Swift::UInt a2, Swift::UInt64 a3)
{
  Hasher.init(_seed:)();
  sub_1000D05AC(v7, a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_100225538()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  sub_1000D05AC(v5, v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_1002255A4(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  sub_1000D05AC(a1, *v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_1002255EC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  sub_1000D05AC(v6, v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void *sub_100225654@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = NANMulticastTxStats.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

BOOL sub_1002256A4(unint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_1000CE004(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

BOOL sub_1002256FC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = BYTE4(a3) == BYTE4(a6);
  if (a3 != a6)
  {
    v6 = 0;
  }

  if (a2 != a5)
  {
    v6 = 0;
  }

  if ((a4 ^ a1) >> 32)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return a1 == a4 && v7;
}

BOOL sub_10022573C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (a1 == a3 && !((a3 ^ a1) >> 32))
  {
    v6 = BYTE6(a2) == BYTE6(a4) && (a4 ^ a2) >> 56 == 0;
    v7 = BYTE5(a2) == BYTE5(a4) && v6;
    v8 = BYTE4(a2) == BYTE4(a4) && v7;
    return a2 == a4 && v8;
  }

  return result;
}

unint64_t sub_1002257B4(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v5, v6);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v5, v6);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v5, v6);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v5, v6);
  sub_10005DC58(&qword_100591C10, &qword_1004B2410);
  sub_100226A20(&qword_100591C78, &protocol witness table for Double, &protocol conformance descriptor for <A> A?);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100002A00(v5);
  sub_100002A00(a1);
  return v4 | (v4 << 32);
}

uint64_t sub_1002259D0(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v3 = v8;
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v8;
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100002A00(v6);
  sub_100002A00(a1);
  return v3 | (v4 << 32);
}

uint64_t sub_100225C84(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v3 = v8;
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v8;
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100002A00(v6);
  sub_100002A00(a1);
  return v3 | (v4 << 32);
}

void *sub_100225EE0(void *a1)
{
  v3 = sub_100082094(_swiftEmptyArrayStorage);
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);

    return v3;
  }

  sub_100031694(v28, v29);
  sub_100226978();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v28, v29);
  sub_10003D59C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v28, v29);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v24;
  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!v24)
  {
LABEL_7:
    sub_100002A00(v28);
    sub_100002A00(a1);
    return v3;
  }

  while (1)
  {
    sub_100031694(v28, v29);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v7 = v24;
    sub_100031694(v28, v29);
    sub_1002269CC();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v22 = v5;
    v8 = v24;
    v23 = HIDWORD(v24);
    v30 = v25;
    v31 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v3;
    v11 = sub_10007CCC8(v7);
    v12 = v3[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v3[3] >= v14)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v10)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_100196294();
        if (v15)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_10018E770(v14, isUniquelyReferenced_nonNull_native);
      v16 = sub_10007CCC8(v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

      v11 = v16;
      if (v15)
      {
LABEL_8:
        v6 = v3[7] + 32 * v11;
        *v6 = v8;
        *(v6 + 4) = v23;
        *(v6 + 8) = v30;
        *(v6 + 16) = v26;
        *(v6 + 24) = v31;
        goto LABEL_9;
      }
    }

    v3[(v11 >> 6) + 8] |= 1 << v11;
    *(v3[6] + v11) = v7;
    v18 = v3[7] + 32 * v11;
    *v18 = v8;
    *(v18 + 4) = v23;
    *(v18 + 8) = v30;
    *(v18 + 16) = v26;
    *(v18 + 24) = v31;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_22;
    }

    v3[2] = v21;
LABEL_9:
    v5 = v22 - 1;
    if (v22 == 1)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100226288(void *a1)
{
  v3 = sub_100081F84(_swiftEmptyArrayStorage);
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {

    sub_100002A00(a1);
    return v3;
  }

  sub_100031694(v34, v35);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v29;
  if ((v29 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (!v29)
  {
LABEL_20:
    sub_100002A00(v34);
    sub_100002A00(a1);
    return v3;
  }

  v27 = a1;
  while (1)
  {
    sub_100031694(v34, v35);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v9 = v29;
    sub_100031694(v34, v35);
    sub_100226A8C();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v28 = v5;
    v10 = v29;
    v11 = HIDWORD(v29);
    v36 = v32;
    v37 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v3;
    v13 = sub_10007CCC8(v9);
    v15 = v3[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v3[3] < v18)
    {
      sub_10018E13C(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_10007CCC8(v9);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v19)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v26 = v13;
    sub_100195EA4();
    v13 = v26;
    v3 = v29;
    if (v19)
    {
LABEL_8:
      v6 = v3[7] + 24 * v13;
      *v6 = v10;
      *(v6 + 4) = v11;
      *(v6 + 8) = v30;
      v8 = v36;
      v7 = v37;
      *(v6 + 12) = v31;
      *(v6 + 16) = v8;
      *(v6 + 20) = v7;
      goto LABEL_9;
    }

LABEL_16:
    v3[(v13 >> 6) + 8] |= 1 << v13;
    *(v3[6] + v13) = v9;
    v21 = v3[7] + 24 * v13;
    *v21 = v10;
    *(v21 + 4) = v11;
    *(v21 + 8) = v30;
    v23 = v36;
    v22 = v37;
    *(v21 + 12) = v31;
    *(v21 + 16) = v23;
    *(v21 + 20) = v22;
    v24 = v3[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v17)
    {
      goto LABEL_22;
    }

    v3[2] = v25;
LABEL_9:
    a1 = v27;
    --v5;
    if (v28 == 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100226594()
{
  result = qword_100591C08;
  if (!qword_100591C08)
  {
    result = swift_getWitnessTable("i3\v", &type metadata for MCSStatistics, v0, v1);
    atomic_store(result, &qword_100591C08);
  }

  return result;
}

unint64_t sub_1002265E8()
{
  result = qword_100591C20;
  if (!qword_100591C20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDiscoveryWindowIndex, &type metadata for NANDiscoveryWindowIndex, v0, v1);
    atomic_store(result, &qword_100591C20);
  }

  return result;
}

uint64_t sub_10022663C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10005DD04(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002266B8()
{
  result = qword_100591C38;
  if (!qword_100591C38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMulticastStatsPerMCS, &type metadata for NANMulticastStatsPerMCS, v0, v1);
    atomic_store(result, &qword_100591C38);
  }

  return result;
}

unint64_t sub_100226710()
{
  result = qword_100591C40;
  if (!qword_100591C40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkStatistics, &type metadata for LinkStatistics, v0, v1);
    atomic_store(result, &qword_100591C40);
  }

  return result;
}

unint64_t sub_100226768()
{
  result = qword_100591C48;
  if (!qword_100591C48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MCSStatistics, &type metadata for MCSStatistics, v0, v1);
    atomic_store(result, &qword_100591C48);
  }

  return result;
}

unint64_t sub_1002267C0()
{
  result = qword_100591C50;
  if (!qword_100591C50)
  {
    result = swift_getWitnessTable("90\v", &type metadata for NANMulticastLinkCondition, v0, v1);
    atomic_store(result, &qword_100591C50);
  }

  return result;
}

unint64_t sub_100226818()
{
  result = qword_100591C58;
  if (!qword_100591C58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMulticastStatsPerMCS, &type metadata for NANMulticastStatsPerMCS, v0, v1);
    atomic_store(result, &qword_100591C58);
  }

  return result;
}

unint64_t sub_100226870()
{
  result = qword_100591C60;
  if (!qword_100591C60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMulticastTxStats, &type metadata for NANMulticastTxStats, v0, v1);
    atomic_store(result, &qword_100591C60);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for MCSStatistics(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MCSStatistics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MCSStatistics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 21) = v3;
  return result;
}

unint64_t sub_100226978()
{
  result = qword_100591C68;
  if (!qword_100591C68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANDiscoveryWindowIndex, &type metadata for NANDiscoveryWindowIndex, v0, v1);
    atomic_store(result, &qword_100591C68);
  }

  return result;
}

unint64_t sub_1002269CC()
{
  result = qword_100591C70;
  if (!qword_100591C70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANMulticastStatsPerMCS, &type metadata for NANMulticastStatsPerMCS, v0, v1);
    atomic_store(result, &qword_100591C70);
  }

  return result;
}

uint64_t sub_100226A20(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10005DD04(&qword_100591C10, &qword_1004B2410);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100226A8C()
{
  result = qword_100591C80;
  if (!qword_100591C80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MCSStatistics, &type metadata for MCSStatistics, v0, v1);
    atomic_store(result, &qword_100591C80);
  }

  return result;
}

void *sub_100226AE0(void *result, uint64_t a2, uint64_t a3)
{
  v12 = result;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_10002D838(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = a2;
    if (a2 <= v12)
    {
      v6 = v12;
    }

    v10 = v6 - v12 + 1;
    while (v5 < v4)
    {
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }

      sub_100031694(a3, *(a3 + 24));
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v3)
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        result = sub_10002D838((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      *(&_swiftEmptyArrayStorage[4] + v9) = v14;
      if (a2 < v12)
      {
        goto LABEL_20;
      }

      if (v10 == ++v5)
      {
        goto LABEL_21;
      }

      if (v7 == v4)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_100226C68(unsigned int a1, uint64_t a2, uint64_t (*a3)(BOOL, unint64_t, uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  v6 = (HIWORD(a1) - a1);
  v16 = HIWORD(a1);
  v17 = a1;
  if (HIWORD(a1) < a1)
  {
    v7 = -(a1 - HIWORD(a1));
  }

  else
  {
    v7 = (HIWORD(a1) - a1);
  }

  if (!v7)
  {
    return _swiftEmptyArrayStorage;
  }

  result = a3(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    LODWORD(v10) = v16 - v17;
    if (v16 >= v17)
    {
      v10 = v10;
    }

    else
    {
      v10 = 0;
    }

    v11 = -v10;
    while (v7)
    {
      sub_100031694(a2, *(a2 + 24));
      a4();
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v5)
      {

        return _swiftEmptyArrayStorage;
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = a3(v12 > 1, v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      *(&_swiftEmptyArrayStorage[4] + v13) = v18;
      if (v16 < v17)
      {
        goto LABEL_21;
      }

      if (!v11)
      {
        goto LABEL_22;
      }

      ++v11;
      --v7;
      if (!--v6)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100226DFC(unsigned int a1, uint64_t a2)
{
  v3 = (HIWORD(a1) - a1);
  v12 = HIWORD(a1);
  v13 = a1;
  if (HIWORD(a1) < a1)
  {
    v4 = -(a1 - HIWORD(a1));
  }

  else
  {
    v4 = (HIWORD(a1) - a1);
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1000C04E4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    LODWORD(v7) = v12 - v13;
    if (v12 >= v13)
    {
      v7 = v7;
    }

    else
    {
      v7 = 0;
    }

    v8 = -v7;
    while (v4)
    {
      sub_100031694(a2, *(a2 + 24));
      sub_1002325C4();
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v2)
      {

        return _swiftEmptyArrayStorage;
      }

      v9 = v14;
      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        result = sub_1000C04E4((v10 > 1), v11 + 1, 1);
        v9 = v14;
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *&_swiftEmptyArrayStorage[2 * v11 + 4] = v9;
      if (v12 < v13)
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        goto LABEL_22;
      }

      ++v8;
      --v4;
      if (!--v3)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement.unsafeMutableAddressor()
{
  if (qword_10058AAE8 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement;
}

uint64_t Collection<>.rsnCapability.getter@<X0>(uint64_t a3@<X8>)
{
  result = Sequence.first(where:)();
  *(v14 + 9) = *&v12[9];
  *v13 = v10;
  *&v13[16] = v11;
  v14[0] = *v12;
  v5 = 0uLL;
  if (v12[24] == 255)
  {
    goto LABEL_5;
  }

  if (v12[24])
  {
    result = sub_100016290(v13, &qword_10058DF90, &unk_100488560);
    v5 = 0uLL;
LABEL_5:
    v9 = 0;
    v7 = 0;
    v6 = 0;
    v8 = 0;
    goto LABEL_6;
  }

  v6 = *&v14[0];
  v7 = *&v13[24];
  v5 = *&v13[8];
  v8 = BYTE8(v14[0]);
  v9 = *v13 & 0xFFFFFF;
LABEL_6:
  *a3 = v9;
  *(a3 + 8) = v5;
  *(a3 + 24) = v7;
  *(a3 + 32) = v6;
  *(a3 + 40) = v8;
  return result;
}

uint64_t Collection<>.extendedRSNCapability.getter(uint64_t a1, uint64_t a2)
{
  Sequence.first(where:)();
  *&v7[9] = *&v5[9];
  v6[0] = v3;
  v6[1] = v4;
  *v7 = *v5;
  if (v5[24] != 255)
  {
    if (v5[24] == 1)
    {
      return *&v6[0];
    }

    sub_100016290(v6, &qword_10058DF90, &unk_100488560);
  }

  return 0;
}

uint64_t Collection<>.preAssociationSecurityNegotiationParameters.getter@<X0>(uint64_t a3@<X8>)
{
  result = Sequence.first(where:)();
  *&v14[9] = *&v11[9];
  v12 = v9;
  v13 = v10;
  *v14 = *v11;
  if (v11[24] == 6)
  {
    v7 = *&v14[16];
    v8 = v13;
    v5 = *v14;
    v6 = v12;
  }

  else
  {
    v5 = xmmword_10049C490;
    v6 = 0uLL;
    if (v11[24] != 255)
    {
      result = sub_100016290(&v12, &qword_10058DF90, &unk_100488560);
      v6 = 0uLL;
      v5 = xmmword_10049C490;
    }

    v7 = 0;
    v8 = 0uLL;
  }

  *a3 = v6;
  *(a3 + 16) = v8;
  *(a3 + 32) = v5;
  *(a3 + 48) = v7;
  return result;
}

uint64_t Collection<>.nanIE.getter(uint64_t a1, uint64_t a2)
{
  Sequence.first(where:)();
  *&v7[9] = *&v5[9];
  v6[0] = v3;
  v6[1] = v4;
  *v7 = *v5;
  if (v5[24] != 255)
  {
    if (v5[24] == 8)
    {
      return *&v6[0];
    }

    sub_100016290(v6, &qword_10058DF90, &unk_100488560);
  }

  return 0;
}

uint64_t sub_10022732C()
{
  v1 = 1802401130;
  v2 = 0x7261507564706D61;
  if (*v0 != 2)
  {
    v2 = 7562093;
  }

  if (*v0)
  {
    v1 = 1868983913;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10022739C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100231EA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1002273C4(uint64_t a1)
{
  v2 = sub_10003BBB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100227400(uint64_t a1)
{
  v2 = sub_10003BBB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.HighThroughputCapability.encode(to:)(void *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = sub_10005DC58(&qword_100591C88, &qword_10049C4C0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - v9;
  sub_100029B34(a1, a1[3]);
  sub_10003BBB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11 = a3;
    v12 = v15;
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v11;
    v17 = v12;
    v18 = 3;
    sub_10000AB0C(v11, v12);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v16, v17);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t IEEE80211InformationElement.HighThroughputCapability.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 >> 16;
  v5 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);

  return Data.hash(into:)();
}

Swift::Int IEEE80211InformationElement.HighThroughputCapability.hashValue.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 16;
  v5 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100227794()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100227820(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 4);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);

  return Data.hash(into:)();
}

Swift::Int sub_100227894(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Data.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10022791C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003B994(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1002279D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100227A60(uint64_t a1)
{
  v2 = sub_10022EB04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100227A9C(uint64_t a1)
{
  v2 = sub_10022EB04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.ManagementMIC.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10005DC58(&qword_100591C98, &qword_10049C4C8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v11 - v8;
  sub_100029B34(a1, a1[3]);
  sub_10022EB04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_10000AB0C(a2, a3);
  sub_1000B8088();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000124C8(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

void *sub_100227C58@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10022EB58(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t IEEE80211InformationElement.HighThroughputOperation.mcs.getter()
{
  v1 = *(v0 + 24);
  sub_10000AB0C(v1, *(v0 + 32));
  return v1;
}

uint64_t IEEE80211InformationElement.HighThroughputOperation.mcs.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000124C8(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

double IEEE80211InformationElement.HighThroughputOperation.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10022F614(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100227D54()
{
  v1 = 0x6F6974617265706FLL;
  if (*v0 != 1)
  {
    v1 = 7562093;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x437972616D697270;
  }
}

uint64_t sub_100227DB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100232014(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100227DE0(uint64_t a1)
{
  v2 = sub_10022F7CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100227E1C(uint64_t a1)
{
  v2 = sub_10022F7CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static IEEE80211InformationElement.HighThroughputOperation.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || !_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[3];
  v7 = a2[4];

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v4, v5, v6, v7);
}

uint64_t IEEE80211InformationElement.HighThroughputOperation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100591CA8, &qword_10049C4D0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11[-v7 - 8];
  sub_100029B34(a1, a1[3]);
  sub_10022F7CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = *(v3 + 8);
    v13 = *(v3 + 8);
    v12 = 1;
    sub_100142478(&v15, v11);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v13, *(&v13 + 1));
    v13 = *(v3 + 24);
    v14 = v13;
    v12 = 2;
    sub_100142478(&v14, v11);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v13, *(&v13 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t IEEE80211InformationElement.HighThroughputOperation.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int IEEE80211InformationElement.HighThroughputOperation.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100228168()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002281E8(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_100228258(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

double sub_1002282D4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = IEEE80211InformationElement.HighThroughputOperation.init(from:)(v6, a2);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

BOOL sub_100228334(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if (!_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v4, v5);
}

uint64_t sub_1002283B4()
{
  v1 = *v0;
  v2 = 1868983913;
  v3 = 0x474C686769487872;
  v4 = 0x70614D53434D7874;
  if (v1 != 3)
  {
    v4 = 0x474C686769487874;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x70614D53434D7872;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100228458@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10023213C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100228480(uint64_t a1)
{
  v2 = sub_10003CED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002284BC(uint64_t a1)
{
  v2 = sub_10003CED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.VeryHighThroughputCapability.encode(to:)(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_10005DC58(&qword_100591CB8, &qword_10049C4D8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10 - v7;
  sub_100029B34(a1, a1[3]);
  sub_10003CED4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v14 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

void IEEE80211InformationElement.VeryHighThroughputCapability.hash(into:)(int a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = HIDWORD(a2);
  v5 = HIWORD(a2);
  v6 = HIWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v6);
}

Swift::Int IEEE80211InformationElement.VeryHighThroughputCapability.hashValue.getter(unint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = HIWORD(a1);
  v6 = HIWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

unint64_t sub_10022881C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003CC24(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

Swift::Int sub_100228884()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 6);
  v4 = *(v0 + 8);
  v5 = *(v0 + 10);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_10022891C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  v3 = *(v0 + 8);
  v4 = *(v0 + 10);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_100228988(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = *(v1 + 6);
  v5 = *(v1 + 8);
  v6 = *(v1 + 10);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

uint64_t sub_100228A6C(uint64_t a1)
{
  v2 = sub_10022F820();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228AA8(uint64_t a1)
{
  v2 = sub_10022F820();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.VeryHighThroughputOperation.encode(to:)(void *a1)
{
  v2 = sub_10005DC58(&qword_100591CC8, &qword_10049C4E0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v7 - v4;
  sub_100029B34(a1, a1[3]);
  sub_10022F820();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v5, v2);
}

void IEEE80211InformationElement.RSNCapability.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(byte_10049EDE4[*(v1 + 2)]);
  v2 = *(v1 + 8);
  v3 = *(v2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(byte_10049EDE4[v5]);
      --v3;
    }

    while (v3);
  }

  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = (v6 + 32);
    do
    {
      v9 = *v8++;
      Hasher._combine(_:)(v9 + 1);
      --v7;
    }

    while (v7);
  }

  Hasher._combine(_:)(*(v1 + 24));
  v10 = *(v1 + 32);
  v11 = *(v10 + 16);
  Hasher._combine(_:)(v11);
  if (v11)
  {
    v12 = (v10 + 40);
    do
    {
      v13 = *(v12 - 1);
      v14 = *v12;
      sub_10000AB0C(v13, *v12);
      Data.hash(into:)();
      sub_1000124C8(v13, v14);
      v12 += 2;
      --v11;
    }

    while (v11);
  }

  Hasher._combine(_:)(byte_10049EDE4[*(v1 + 40)]);
}

Swift::Int IEEE80211InformationElement.RSNCapability.hashValue.getter()
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.RSNCapability.hash(into:)(v1);
  return Hasher._finalize()();
}

double sub_100228ED4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  result = IEEE80211InformationElement.RSNCapability.init(from:)(&v6, a2);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

double IEEE80211InformationElement.RSNCapability.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10022F9A0(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t IEEE80211InformationElement.RSNCapability.encode(to:)(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v4, v5);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v2)
  {
    return sub_100002A00(v4);
  }

  sub_100031694(v4, v5);
  sub_10022FD54();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v8 = v1[1];
  if (*(v8 + 16) >> 16)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_100031694(v4, v5);

  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v4, v5);
  sub_10005DC58(&qword_100591CE0, &qword_10049C4E8);
  sub_10022FDA8();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  result = sub_100016290(&v8, &qword_100591CE0, &qword_10049C4E8);
  v7 = v1[2];
  if (*(v7 + 16) >> 16)
  {
    goto LABEL_9;
  }

  sub_100031694(v4, v5);

  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v4, v5);
  sub_10005DC58(&qword_100591CF0, &qword_10049C4F0);
  sub_10022FE2C();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_100016290(&v7, &qword_100591CF0, &qword_10049C4F0);
  sub_100031694(v4, v5);
  sub_10022FF04();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v6 = v1[4];
  if (!(*(v6 + 16) >> 16))
  {
    sub_100031694(v4, v5);

    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    sub_10005DC58(&qword_100591D10, &qword_10049C4F8);
    sub_10022FF58();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100016290(&v6, &qword_100591D10, &qword_10049C4F8);
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    return sub_100002A00(v4);
  }

LABEL_10:
  __break(1u);
  return result;
}

Swift::Int sub_100229394(uint64_t a1)
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.RSNCapability.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_1002293D0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s7CoreP2P27IEEE80211InformationElementO13RSNCapabilityV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_10022941C()
{
  result = sub_100286BD4();
  static IEEE80211InformationElement.ExtendedRSNCapability.protectedTWTOperationsSupport = result;
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.protectedTWTOperationsSupport.unsafeMutableAddressor()
{
  if (qword_10058AAE0 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.protectedTWTOperationsSupport;
}

uint64_t sub_1002294B4()
{
  result = sub_100286BD4();
  static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement = result;
  return result;
}

uint64_t sub_1002294FC()
{
  result = sub_100286BD4();
  static IEEE80211InformationElement.ExtendedRSNCapability.secureLTFSupported = result;
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.secureLTFSupported.unsafeMutableAddressor()
{
  if (qword_10058AAF0 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.secureLTFSupported;
}

uint64_t sub_100229594()
{
  result = sub_100286BD4();
  static IEEE80211InformationElement.ExtendedRSNCapability.secureRTTSupported = result;
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.secureRTTSupported.unsafeMutableAddressor()
{
  if (qword_10058AAF8 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.secureRTTSupported;
}

uint64_t sub_10022962C()
{
  result = sub_100286BD4();
  static IEEE80211InformationElement.ExtendedRSNCapability.urnmMFPR = result;
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.urnmMFPR.unsafeMutableAddressor()
{
  if (qword_10058AB00 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.urnmMFPR;
}

uint64_t sub_1002296C4()
{
  result = sub_100286BD4();
  static IEEE80211InformationElement.ExtendedRSNCapability.protectedAnnounceSupport = result;
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.protectedAnnounceSupport.unsafeMutableAddressor()
{
  if (qword_10058AB08 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.protectedAnnounceSupport;
}

uint64_t sub_100229774(uint64_t a1)
{
  v2 = sub_100230030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002297B0(uint64_t a1)
{
  v2 = sub_100230030();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.ExtendedRSNCapability.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100591D28, &unk_10049C500);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  sub_100029B34(a1, a1[3]);
  sub_100230030();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_100230084();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

void *sub_100229948@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = IEEE80211InformationElement.ExtendedRSNCapability.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_100229998()
{
  v1 = *v0;
  Hasher._combine(_:)(*(*v0 + 16));
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

uint64_t sub_100229A18@<X0>(void *a1@<X8>)
{
  v4 = *v1;

  sub_1000C2E7C();

  *a1 = v4;
  return result;
}

uint64_t sub_100229A90@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v8 = *v3;

  a2(v6);

  result = swift_bridgeObjectRelease_n();
  *a3 = v8;
  return result;
}

BOOL sub_100229B14(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v8 = *v2;

  sub_1000C2E7C();
  v5 = v8;
  v6 = sub_1000C2E80();
  if ((v6 & 1) == 0)
  {

    sub_10029F424();
    v5 = v4;
  }

  *a1 = v5;
  return (v6 & 1) == 0;
}

uint64_t sub_100229BB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v7 = *v2;
  swift_bridgeObjectRetain_n();
  sub_1000C2E7C();

  v5 = v7;
  if (sub_1000C2E80())
  {

    v5 = 0;
  }

  else
  {
    result = sub_100238570(v4);
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100229C5C()
{

  sub_1000C2E7C();
  v0 = sub_1000C2E80();

  return v0 & 1;
}

uint64_t sub_100229CC8(void *a1)
{

  sub_1000C2E7C();
  v1 = sub_1000C2E80();

  return v1 & 1;
}

uint64_t IEEE80211InformationElement.IEEE80211CipherSuite.encode(to:)(void *a1, char a2)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v4, v5);
  sub_1001F5AF0();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v2)
  {
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v4);
}

uint64_t sub_100229E88@<X0>(Swift::UInt8 *a1@<X0>, CoreP2P::IEEE80211InformationElement::IEEE80211CipherSuite_optional *a2@<X8>)
{
  result = _s7CoreP2P27IEEE80211InformationElementO0C11CipherSuiteO8rawValueAESgs5UInt8V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

Swift::Int sub_100229ECC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10049EDE4[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100229F54(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10049EDE4[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100229FA0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10022F110(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10022A148()
{
  if (*v0)
  {
    return 0x65696B6F6F63;
  }

  else
  {
    return 0x6B636162656D6F63;
  }
}

uint64_t sub_10022A18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B636162656D6F63 && a2 == 0xED00007265746641;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65696B6F6F63 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10022A26C(uint64_t a1)
{
  v2 = sub_100230100();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022A2A8(uint64_t a1)
{
  v2 = sub_100230100();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Comeback.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a4;
  v7 = sub_10005DC58(&qword_100591D38, &unk_10049C510);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v12 - v9;
  sub_100029B34(a1, a1[3]);
  sub_100230100();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v14 = a3;
    v15 = v13;
    v16 = 1;
    sub_10000AB0C(a3, v13);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10022A480@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10022EE50(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.comeback.getter()
{
  v1 = v0[1];
  sub_1000E55A4(v1, v0[2], v0[3]);
  return v1;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.comeback.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002F75C(*(v3 + 8), *(v3 + 16), *(v3 + 24));
  *(v3 + 8) = a1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.ephemeralPublicKeyType.setter(uint64_t result)
{
  *(v1 + 33) = result;
  *(v1 + 34) = BYTE1(result) & 1;
  return result;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.ephemeralPublicKey.getter()
{
  v1 = *(v0 + 40);
  sub_10005D67C(v1, *(v0 + 48));
  return v1;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.ephemeralPublicKey.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100017554(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.hash(into:)(uint64_t a1)
{
  Hasher._combine(_:)(*v1);
  if (*(v1 + 24) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v2 = *(v1 + 8);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
    Data.hash(into:)();
  }

  v3 = *(v1 + 32);
  if (v3 == 2)
  {
    Hasher._combine(_:)(0);
    if ((*(v1 + 34) & 1) == 0)
    {
LABEL_6:
      v4 = *(v1 + 33);
      Hasher._combine(_:)(1u);
      goto LABEL_9;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)((v3 & 1) + 19);
    if ((*(v1 + 34) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_9:
  Hasher._combine(_:)(v4);
  if (*(v1 + 48) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.hashValue.getter()
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10022A784(uint64_t a1)
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.hash(into:)(v2);
  return Hasher._finalize()();
}

double sub_10022A7C0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

double IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022F280(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.encode(to:)(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v23 = *(v1 + 24);
  v22 = *(v1 + 8);
  v3 = v23 >> 60 != 15;
  v4 = *(v1 + 32);
  if (v4 != 2 && *(v1 + 48) >> 60 != 15)
  {
    v3 |= 2u;
  }

  v24 = v3;
  sub_100031694(v20, v21);
  sub_100012400(&v22, &v18, &qword_10058DF78, &unk_100488530);
  sub_100230154();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v2)
  {
    sub_100016290(&v22, &qword_10058DF78, &unk_100488530);
    return sub_100002A00(v20);
  }

  LOBYTE(v18) = *v1;
  sub_100031694(v20, v21);
  sub_1002301A8();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v18 = v22;
  v19 = v23;
  sub_100031694(v20, v21);
  sub_10005DC58(&qword_10058DF78, &unk_100488530);
  sub_1002301FC();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_10002F75C(v18, *(&v18 + 1), v19);
  if (v4 == 2)
  {
    return sub_100002A00(v20);
  }

  v6 = *(v1 + 48);
  if (v6 >> 60 == 15 || (*(v1 + 34) & 1) != 0)
  {
    return sub_100002A00(v20);
  }

  v7 = *(v1 + 40);
  LOBYTE(v18) = v4 & 1;
  sub_100031694(v20, v21);
  sub_10000AB0C(v7, v6);
  sub_1001F4ED8();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      v9 = BYTE6(v6);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v8 != 2)
  {
    v9 = 0;
    goto LABEL_21;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  v12 = __OFSUB__(v10, v11);
  v9 = v10 - v11;
  if (v12)
  {
    __break(1u);
LABEL_18:
    LODWORD(v9) = HIDWORD(v7) - v7;
    if (__OFSUB__(HIDWORD(v7), v7))
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v9 = v9;
  }

LABEL_21:
  v13 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  sub_100031694(v20, v21);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v20, v21);
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v14 = 0;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v14 = *(v7 + 16);
    }
  }

  else if (v8)
  {
    v14 = v7;
  }

  if (((v13 - 1) & 0xFFFFFF00) != 0)
  {
    goto LABEL_41;
  }

  v15 = v14 + (v13 - 1);
  if (__OFADD__(v14, (v13 - 1)))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      result = *(v7 + 16);
      v16 = *(v7 + 24);
    }

    else
    {
      v16 = 0;
      result = 0;
    }
  }

  else if (v8)
  {
    result = v7;
    v16 = v7 >> 32;
  }

  else
  {
    result = 0;
    v16 = BYTE6(v6);
  }

  if (v16 >= result && v15 >= result)
  {
    *&v18 = Data._Representation.subscript.getter();
    *(&v18 + 1) = v17;
    sub_100031694(v20, v21);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v18, *(&v18 + 1));
    sub_100017554(v7, v6);
    return sub_100002A00(v20);
  }

LABEL_43:
  __break(1u);
  return result;
}

BOOL sub_10022AC88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t IEEE80211InformationElement.AuthenticationKeyManagementSuite.encode(to:)(void *a1, int a2)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v6 = 3840;
  v7 = -84;
  sub_100031694(v4, v5);
  sub_1001F5AF0();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v2)
  {
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v4);
}

uint64_t sub_10022ADE4@<X0>(Swift::UInt8 *a1@<X0>, CoreP2P::IEEE80211InformationElement::AuthenticationKeyManagementSuite_optional *a2@<X8>)
{
  result = _s7CoreP2P27IEEE80211InformationElementO32AuthenticationKeyManagementSuiteO8rawValueAESgs5UInt8V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_10022AE10@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_10022EFA0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10022AE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10022AEF0(uint64_t a1)
{
  v2 = sub_1002302D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022AF2C(uint64_t a1)
{
  v2 = sub_1002302D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10022B050(uint64_t a1)
{
  v2 = sub_10023037C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022B08C(uint64_t a1)
{
  v2 = sub_10023037C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10022B10C(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v16 = a6;
  v10 = sub_10005DC58(a4, a5);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v15 - v12;
  sub_100029B34(a1, a1[3]);
  v16();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  sub_10000AB0C(a2, a3);
  sub_100230328();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000124C8(v17, v18);
  return (*(v11 + 8))(v13, v10);
}

void *sub_10022B304@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_10022ECCC(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
  }

  return result;
}

Swift::Int sub_10022B380()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10049EDDA[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10022B408(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10049EDDA[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10022B454@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CB60(*a1);
  *a2 = result;
  return result;
}

unsigned __int8 *sub_10022B548@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 100)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 8)
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

void sub_10022B568(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 100;
  }

  else
  {
    v2 = 8;
  }

  *a1 = v2;
}

Swift::Int sub_10022B584()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 100;
  }

  else
  {
    v2 = 8;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10022B5D8()
{
  if (*v0)
  {
    v1 = 100;
  }

  else
  {
    v1 = 8;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10022B614(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 100;
  }

  else
  {
    v3 = 8;
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

double IEEE80211InformationElement.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10003BC0C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_10022B784@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80, protocol conformance descriptor for TypeLengthValue<A, B>);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (v3)
  {
    return result;
  }

  v8 = v20;
  v9 = v21;
  v10 = sub_10003CB60(v19);
  if (v10 <= 4)
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        v11 = 48;
      }

      else
      {
        v11 = 45;
      }
    }

    else if (v10 == 2)
    {
      v11 = 61;
    }

    else if (v10 == 3)
    {
      v11 = 140;
    }

    else
    {
      v11 = 191;
    }
  }

  else if (v10 > 7)
  {
    if (v10 == 8)
    {
      v11 = 255;
    }

    else
    {
      if (v10 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v17 = xmmword_10047CE70;
        *(v17 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v8, v9);
      }

      v11 = 76;
    }
  }

  else if (v10 == 5)
  {
    v11 = 192;
  }

  else if (v10 == 6)
  {
    v11 = 221;
  }

  else
  {
    v11 = 244;
  }

  if (v11 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v20, v21);
  v12 = sub_100033AA8(_swiftEmptyArrayStorage);
  v13 = type metadata accessor for BinaryDecoder();
  v14 = swift_allocObject();
  v15 = 0;
  v14[5] = &_swiftEmptyDictionarySingleton;
  v14[2] = v8;
  v14[3] = v9;
  v16 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v15 = *(v8 + 16);
    }
  }

  else if (v16)
  {
    v15 = v8;
  }

  v14[4] = v15;
  swift_beginAccess();
  v14[5] = v12;
  v22 = v13;
  v23 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v19 = v14;
  sub_10022F9A0(&v19, &v24);
  result = sub_1000124C8(v8, v9);
  v18 = v25[0];
  *a3 = v24;
  a3[1] = v18;
  *(a3 + 25) = *(v25 + 9);
  return result;
}

uint64_t sub_10022BA84(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80, protocol conformance descriptor for TypeLengthValue<A, B>);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  swift_endAccess();
  if (v2)
  {
    return a2;
  }

  v5 = v17;
  v6 = v18;
  v7 = sub_10003CB60(v16);
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        v8 = 48;
      }

      else
      {
        v8 = 45;
      }
    }

    else if (v7 == 2)
    {
      v8 = 61;
    }

    else if (v7 == 3)
    {
      v8 = 140;
    }

    else
    {
      v8 = 191;
    }
  }

  else if (v7 > 7)
  {
    if (v7 == 8)
    {
      v8 = 255;
    }

    else
    {
      if (v7 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v14 = xmmword_10047CE70;
        *(v14 + 16) = 2;
        swift_willThrow();
        sub_1000124C8(v5, v6);
        return a2;
      }

      v8 = 76;
    }
  }

  else if (v7 == 5)
  {
    v8 = 192;
  }

  else if (v7 == 6)
  {
    v8 = 221;
  }

  else
  {
    v8 = 244;
  }

  if (v8 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v17, v18);
  v9 = sub_100033AA8(_swiftEmptyArrayStorage);
  v10 = type metadata accessor for BinaryDecoder();
  v11 = swift_allocObject();
  v12 = 0;
  v11[5] = &_swiftEmptyDictionarySingleton;
  v11[2] = v5;
  v11[3] = v6;
  v13 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v12 = *(v5 + 16);
    }
  }

  else if (v13)
  {
    v12 = v5;
  }

  v11[4] = v12;
  swift_beginAccess();
  v11[5] = v9;
  v19 = v10;
  v20 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v16 = v11;
  a2 = sub_10022F874(&v16);
  sub_1000124C8(v5, v6);
  return a2;
}

uint64_t sub_10022BD6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80, protocol conformance descriptor for TypeLengthValue<A, B>);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (v3)
  {
    return result;
  }

  v9 = v27;
  v8 = v28;
  v10 = sub_10003CB60(v26);
  if (v10 <= 4)
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        v11 = 48;
      }

      else
      {
        v11 = 45;
      }
    }

    else if (v10 == 2)
    {
      v11 = 61;
    }

    else if (v10 == 3)
    {
      v11 = 140;
    }

    else
    {
      v11 = 191;
    }
  }

  else if (v10 > 7)
  {
    if (v10 == 8)
    {
      v11 = 255;
    }

    else
    {
      if (v10 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v17 = xmmword_10047CE70;
        *(v17 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v9, v8);
      }

      v11 = 76;
    }
  }

  else if (v10 == 5)
  {
    v11 = 192;
  }

  else if (v10 == 6)
  {
    v11 = 221;
  }

  else
  {
    v11 = 244;
  }

  if (v11 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v27, v28);
  v12 = sub_100033AA8(_swiftEmptyArrayStorage);
  v13 = type metadata accessor for BinaryDecoder();
  v14 = swift_allocObject();
  v15 = 0;
  v14[5] = &_swiftEmptyDictionarySingleton;
  v14[2] = v9;
  v14[3] = v8;
  v16 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v15 = *(v9 + 16);
    }
  }

  else if (v16)
  {
    v15 = v9;
  }

  v14[4] = v15;
  swift_beginAccess();
  v14[5] = v12;
  v29 = v13;
  v30 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v26 = v14;
  v18 = sub_10003B994(&v26);
  v20 = v19;
  v22 = v21;
  v23 = HIDWORD(v18);
  v24 = v18 >> 16;
  v25 = v18;
  result = sub_1000124C8(v9, v8);
  *a3 = v25;
  *(a3 + 2) = v24;
  *(a3 + 4) = v23;
  *(a3 + 8) = v20;
  *(a3 + 16) = v22;
  return result;
}

uint64_t sub_10022C080@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80, protocol conformance descriptor for TypeLengthValue<A, B>);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (v3)
  {
    return result;
  }

  v8 = v20;
  v9 = v21;
  v10 = sub_10003CB60(v19);
  if (v10 <= 4)
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        v11 = 48;
      }

      else
      {
        v11 = 45;
      }
    }

    else if (v10 == 2)
    {
      v11 = 61;
    }

    else if (v10 == 3)
    {
      v11 = 140;
    }

    else
    {
      v11 = 191;
    }
  }

  else if (v10 > 7)
  {
    if (v10 == 8)
    {
      v11 = 255;
    }

    else
    {
      if (v10 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v17 = xmmword_10047CE70;
        *(v17 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v8, v9);
      }

      v11 = 76;
    }
  }

  else if (v10 == 5)
  {
    v11 = 192;
  }

  else if (v10 == 6)
  {
    v11 = 221;
  }

  else
  {
    v11 = 244;
  }

  if (v11 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v20, v21);
  v12 = sub_100033AA8(_swiftEmptyArrayStorage);
  v13 = type metadata accessor for BinaryDecoder();
  v14 = swift_allocObject();
  v15 = 0;
  v14[5] = &_swiftEmptyDictionarySingleton;
  v14[2] = v8;
  v14[3] = v9;
  v16 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v15 = *(v8 + 16);
    }
  }

  else if (v16)
  {
    v15 = v8;
  }

  v14[4] = v15;
  swift_beginAccess();
  v14[5] = v12;
  v22 = v13;
  v23 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v19 = v14;
  sub_10022F614(&v19, v24);
  result = sub_1000124C8(v8, v9);
  v18 = v24[1];
  *a3 = v24[0];
  *(a3 + 16) = v18;
  *(a3 + 32) = v25;
  return result;
}

uint64_t sub_10022C384(uint64_t a1, char a2)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80, protocol conformance descriptor for TypeLengthValue<A, B>);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (!v2)
  {
    v6 = sub_10003CB60(v9);
    if (v6 <= 4)
    {
      if (v6 <= 1)
      {
        if (v6)
        {
          v7 = 48;
        }

        else
        {
          v7 = 45;
        }
      }

      else if (v6 == 2)
      {
        v7 = 61;
      }

      else if (v6 == 3)
      {
        v7 = 140;
      }

      else
      {
        v7 = 191;
      }
    }

    else if (v6 > 7)
    {
      if (v6 == 8)
      {
        v7 = 255;
      }

      else
      {
        if (v6 != 9)
        {
LABEL_24:
          sub_10000B02C();
          swift_allocError();
          *v8 = xmmword_10047CE70;
          *(v8 + 16) = 2;
          swift_willThrow();
          return sub_1000124C8(v10, v11);
        }

        v7 = 76;
      }
    }

    else if (v6 == 5)
    {
      v7 = 192;
    }

    else if (v6 == 6)
    {
      v7 = 221;
    }

    else
    {
      v7 = 244;
    }

    if (v7 == byte_10049EDDA[a2])
    {
      sub_10000AB0C(v10, v11);
      sub_100033AA8(_swiftEmptyArrayStorage);
      sub_1000124C8(v10, v11);
      sub_1000124C8(v10, v11);
    }

    goto LABEL_24;
  }

  return result;
}

uint64_t sub_10022C5B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80, protocol conformance descriptor for TypeLengthValue<A, B>);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (v3)
  {
    return result;
  }

  v9 = v22;
  v8 = v23;
  v10 = sub_10003CB60(v21);
  if (v10 <= 4)
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        v11 = 48;
      }

      else
      {
        v11 = 45;
      }
    }

    else if (v10 == 2)
    {
      v11 = 61;
    }

    else if (v10 == 3)
    {
      v11 = 140;
    }

    else
    {
      v11 = 191;
    }
  }

  else if (v10 > 7)
  {
    if (v10 == 8)
    {
      v11 = 255;
    }

    else
    {
      if (v10 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v17 = xmmword_10047CE70;
        *(v17 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v9, v8);
      }

      v11 = 76;
    }
  }

  else if (v10 == 5)
  {
    v11 = 192;
  }

  else if (v10 == 6)
  {
    v11 = 221;
  }

  else
  {
    v11 = 244;
  }

  if (v11 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v22, v23);
  v12 = sub_100033AA8(_swiftEmptyArrayStorage);
  v13 = type metadata accessor for BinaryDecoder();
  v14 = swift_allocObject();
  v15 = 0;
  v14[5] = &_swiftEmptyDictionarySingleton;
  v14[2] = v9;
  v14[3] = v8;
  v16 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v15 = *(v9 + 16);
    }
  }

  else if (v16)
  {
    v15 = v9;
  }

  v14[4] = v15;
  swift_beginAccess();
  v14[5] = v12;
  v24 = v13;
  v25 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v21 = v14;
  v18 = sub_10022ECCC(&v21, &qword_100591FB0, &qword_10049ED88, sub_1002302D4, &type metadata for IEEE80211InformationElement.MessageIntegrityCode.CodingKeys);
  v20 = v19;
  result = sub_1000124C8(v9, v8);
  *a3 = v18;
  a3[1] = v20;
  return result;
}

uint64_t sub_10022C8E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80, protocol conformance descriptor for TypeLengthValue<A, B>);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (v3)
  {
    return result;
  }

  v9 = v22;
  v8 = v23;
  v10 = sub_10003CB60(v21);
  if (v10 <= 4)
  {
    if (v10 <= 1)
    {
      if (v10)
      {
        v11 = 48;
      }

      else
      {
        v11 = 45;
      }
    }

    else if (v10 == 2)
    {
      v11 = 61;
    }

    else if (v10 == 3)
    {
      v11 = 140;
    }

    else
    {
      v11 = 191;
    }
  }

  else if (v10 > 7)
  {
    if (v10 == 8)
    {
      v11 = 255;
    }

    else
    {
      if (v10 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v17 = xmmword_10047CE70;
        *(v17 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v9, v8);
      }

      v11 = 76;
    }
  }

  else if (v10 == 5)
  {
    v11 = 192;
  }

  else if (v10 == 6)
  {
    v11 = 221;
  }

  else
  {
    v11 = 244;
  }

  if (v11 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v22, v23);
  v12 = sub_100033AA8(_swiftEmptyArrayStorage);
  v13 = type metadata accessor for BinaryDecoder();
  v14 = swift_allocObject();
  v15 = 0;
  v14[5] = &_swiftEmptyDictionarySingleton;
  v14[2] = v9;
  v14[3] = v8;
  v16 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v15 = *(v9 + 16);
    }
  }

  else if (v16)
  {
    v15 = v9;
  }

  v14[4] = v15;
  swift_beginAccess();
  v14[5] = v12;
  v24 = v13;
  v25 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v21 = v14;
  v18 = sub_10022EB58(&v21);
  v20 = v19;
  result = sub_1000124C8(v9, v8);
  *a3 = v18;
  a3[1] = v20;
  return result;
}

void IEEE80211InformationElement.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v87.i64[0] = *(v2 + 8);
  v85.i64[0] = v4;
  v5 = sub_10005DC58(&qword_100591CC8, &qword_10049C4E0);
  v83 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v82 - v6;
  v8 = sub_10005DC58(&qword_100591D28, &unk_10049C500);
  v84.i64[0] = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v82 - v9;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v11 = sub_100033AA8(_swiftEmptyArrayStorage);
  v12 = type metadata accessor for BinaryEncoder();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100480A90;
  v86 = v13 + 16;
  v14 = *v2;
  v15 = vdupq_n_s64(*v2);
  v16 = vshlq_u64(v15, xmmword_100484210);
  v17 = v13;
  *(v13 + 32) = v11;
  v18 = vshlq_u64(v15, xmmword_100484220);
  v88 = v2;
  v19 = *(v2 + 56);
  if (v19 > 5)
  {
    if (*(v2 + 56) <= 8u)
    {
      v26 = v13;
      if (v19 == 6)
      {
        v107 = v14 & 0xFFFF000000000000 | ((v16.u8[0] | (v18.u8[0] << 8)) << 32) | v14 | ((v16.u8[8] | (v18.u8[8] << 8)) << 16);
        v108 = v87.i64[0];
        v109 = v85.i64[0];
        v49 = *(v88 + 40);
        v110 = *(v88 + 24);
        v111 = v49;
        v94 = v12;
        v95 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
        v93[0] = v17;

        v50 = v112;
        IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.encode(to:)(v93);
        v20 = v50;
        if (!v50)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v27 = v112;
        if (v19 == 7)
        {
          v28 = vshlq_n_s64(v18, 8uLL);
          v29.i64[0] = 255;
          v29.i64[1] = 255;
          v30 = vandq_s8(v16, v29);
          v31.i64[0] = 65280;
          v31.i64[1] = 65280;
          v32 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(v28, v31), v30), xmmword_100484240), vandq_s8(v15, xmmword_100484230));
          v33 = vorrq_s8(v32, vdupq_laneq_s64(v32, 1)).u64[0];
          v94 = v12;
          v95 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
          v93[0] = v17;

          IEEE80211InformationElement.MessageIntegrityCode.encode(to:)(v93, v33, v87.u64[0]);
          v20 = v27;
          if (!v27)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v84 = v18;
          v85 = v16;
          v61 = v16.u8[8];
          v87.i64[0] = v14;
          v94 = &type metadata for BinaryEncoder.UnkeyedContainer;
          v62 = sub_1000D12E4();
          v95 = v62;
          v93[0] = v17;
          sub_100031694(v93, &type metadata for BinaryEncoder.UnkeyedContainer);

          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          if (!v27)
          {
            sub_100031694(v93, v94);
            dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
            sub_100031694(v93, v94);
            dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
            v20 = 0;
            sub_100002A00(v93);
            v94 = &type metadata for BinaryEncoder.UnkeyedContainer;
            v95 = v62;
            v93[0] = v26;
            sub_100031694(v93, &type metadata for BinaryEncoder.UnkeyedContainer);

            dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
            v89 = v87.i64[0] & 0xFFFF000000000000 | ((v85.u8[0] | (v84.u8[0] << 8)) << 32) | v87.u16[0] | ((v61 | (v84.u8[8] << 8)) << 16);
            sub_100031694(v93, v94);
            sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
            sub_1002304FC();
            dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
            goto LABEL_28;
          }
        }
      }

LABEL_33:

      sub_100002A00(v93);
LABEL_51:
      sub_100002A00(v96);
      return;
    }

    v26 = v13;
    if (v19 == 9)
    {
      v94 = &type metadata for BinaryEncoder.UnkeyedContainer;
      v95 = sub_1000D12E4();
      v93[0] = v17;
      sub_100031694(v93, &type metadata for BinaryEncoder.UnkeyedContainer);

      v51 = v112;
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v20 = v51;
      if (!v51)
      {
        sub_100031694(v93, v94);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        sub_100031694(v93, v94);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        sub_100002A00(v93);
        v52 = v86;
        swift_beginAccess();
        v91 = &type metadata for Data;
        v92 = &protocol witness table for Data;
        v53 = v87.i64[0];
        v54 = v85.i64[0];
        v89 = v87.i64[0];
        v90 = v85.i64[0];
        v55 = sub_100029B34(&v89, &type metadata for Data);
        v56 = *v55;
        v57 = v55[1];
        sub_10000AB0C(v53, v54);
        sub_100178A18(v56, v57, v52);
        sub_100002A00(&v89);
        swift_endAccess();
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (v19 != 10)
    {
      v93[0] = v13;

      sub_10005DC58(&qword_100591DB0, &qword_10049C540);
      sub_10000CADC(&qword_100591DB8, &qword_100591DB0, &qword_10049C540, byte_10049852C);
      KeyedEncodingContainer.init<A>(_:)();
      (*(v83 + 8))(v7, v5);
      v20 = v112;
      goto LABEL_36;
    }

    v42 = vshlq_n_s64(v18, 8uLL);
    v43.i64[0] = 255;
    v43.i64[1] = 255;
    v44 = vandq_s8(v16, v43);
    v45.i64[0] = 65280;
    v45.i64[1] = 65280;
    v46 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(v42, v45), v44), xmmword_100484240), vandq_s8(v15, xmmword_100484230));
    v47 = vorrq_s8(v46, vdupq_laneq_s64(v46, 1)).u64[0];
    v94 = v12;
    v95 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    v93[0] = v17;

    v48 = v112;
    IEEE80211InformationElement.ManagementMIC.encode(to:)(v93, v47, v87.u64[0]);
LABEL_32:
    v20 = v48;
    if (!v48)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (*(v2 + 56) > 2u)
  {
    v34 = v112;
    if (v19 == 3)
    {
      v103 = v14 & 0xFFFF000000000000 | ((v16.u8[0] | (v18.u8[0] << 8)) << 32) | v14 | ((v16.u8[8] | (v18.u8[8] << 8)) << 16);
      v104 = v87.i64[0];
      v105 = v85.i64[0];
      v106 = *(v88 + 24);
      v94 = v12;
      v95 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v26 = v17;
      v93[0] = v17;

      IEEE80211InformationElement.HighThroughputOperation.encode(to:)(v93);
      v20 = v34;
      if (!v34)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    v26 = v13;
    if (v19 == 4)
    {
      v35 = v14;
      v94 = v12;
      v36 = v14;
      v84 = v18;
      v85 = v16;
      v95 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
      v93[0] = v17;
      v37.i64[0] = 255;
      v37.i64[1] = 255;
      v38.i64[0] = 65280;
      v38.i64[1] = 65280;
      v39 = vshlq_u64(vorrq_s8(vandq_s8(vshlq_n_s64(v84, 8uLL), v38), vandq_s8(v85, v37)), xmmword_100484240);
      v40 = v39.i64[1];
      v41 = v35 | v39.i64[0] | v36 & 0xFFFF000000000000;

      IEEE80211InformationElement.VeryHighThroughputCapability.encode(to:)(v93, v40 | v41, v87.i64[0]);
      v20 = v34;
      if (!v34)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    v63 = vshlq_n_s64(v18, 8uLL);
    v64.i64[0] = 255;
    v64.i64[1] = 255;
    v65 = vandq_s8(v16, v64);
    v66.i64[0] = 65280;
    v66.i64[1] = 65280;
    v67 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(v63, v66), v65), xmmword_100484240), vandq_s8(v15, xmmword_100484230));
    v68 = vorrq_s8(v67, vdupq_laneq_s64(v67, 1)).u64[0];
    v94 = v12;
    v95 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    v93[0] = v17;

    v48 = v34;
    IEEE80211InformationElement.WrappedData.encode(to:)(v93, v68, v87.u64[0]);
    goto LABEL_32;
  }

  v20 = v112;
  if (!*(v2 + 56))
  {
    v98 = v14 & 0xFFFF000000000000 | ((v16.u8[0] | (v18.u8[0] << 8)) << 32) | v14 | ((v16.u8[8] | (v18.u8[8] << 8)) << 16);
    v99 = v87.i64[0];
    v100 = v85.i64[0];
    v101 = *(v88 + 24);
    v102 = *(v88 + 40);
    v94 = v12;
    v95 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    v26 = v17;
    v93[0] = v17;

    IEEE80211InformationElement.RSNCapability.encode(to:)(v93);
    if (!v20)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (v19 != 1)
  {
    v58 = v18.u8[8];
    v59 = v16.u8[8];
    v94 = v12;
    v60 = v14;
    v95 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
    v26 = v17;
    v93[0] = v17;

    IEEE80211InformationElement.HighThroughputCapability.encode(to:)(v93, v60 & 0xFF0000FFFFLL | ((v59 & 0xFFFFFFFFFFFF00FFLL | (v58 << 8)) << 16), v87.i64[0], v85.u64[0]);
    if (!v20)
    {
LABEL_28:
      sub_100002A00(v93);
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v21 = vshlq_n_s64(v18, 8uLL);
  v22.i64[0] = 255;
  v22.i64[1] = 255;
  v23 = vandq_s8(v16, v22);
  v24.i64[0] = 65280;
  v24.i64[1] = 65280;
  v25 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(v21, v24), v23), xmmword_100484240), vandq_s8(v15, xmmword_100484230));
  v87 = vorrq_s8(v25, vdupq_laneq_s64(v25, 1));
  v93[0] = v13;

  sub_10005DC58(&qword_100591DC0, &unk_10049C548);
  sub_10000CADC(&qword_100591DC8, &qword_100591DC0, &unk_10049C548, byte_10049852C);
  KeyedEncodingContainer.init<A>(_:)();
  v93[0] = v87.i64[0];
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_100230084();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v20)
  {
    (*(v84.i64[0] + 8))(v10, v8);
LABEL_50:

    goto LABEL_51;
  }

  (*(v84.i64[0] + 8))(v10, v8);
  v26 = v17;
LABEL_36:
  v69 = sub_10022B714();
  swift_beginAccess();
  v70 = *(v26 + 16);
  v71 = *(v26 + 24);
  v72 = v71 >> 62;
  if ((v71 >> 62) > 1)
  {
    v73 = 0;
    if (v72 != 2 || (v75 = v70 + 16, v70 = *(v70 + 16), v74 = *(v75 + 8), v76 = __OFSUB__(v74, v70), v73 = v74 - v70, !v76))
    {
LABEL_45:
      v78 = HIBYTE(v69) != 2;
      v79 = v73 + v78;
      if (__OFADD__(v73, v78))
      {
        __break(1u);
      }

      else
      {
        LOBYTE(v89) = v69;
        sub_100031694(v96, v97);
        sub_1002303D0();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        if (v20)
        {
          goto LABEL_50;
        }

        if ((v79 & 0x8000000000000000) == 0)
        {
          if (v79 <= 0xFF)
          {
            sub_100031694(v96, v97);
            dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
            LOBYTE(v89) = HIBYTE(v69);
            sub_100031694(v96, v97);
            sub_10005DC58(&qword_100591D98, &unk_10049C530);
            sub_100230424();
            dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
            v81 = *(v26 + 24);
            v89 = *(v26 + 16);
            v80 = v89;
            v90 = v81;
            sub_100031694(v96, v97);
            sub_10000AB0C(v80, v81);
            sub_1000B8088();
            dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
            sub_1000124C8(v89, v90);
            goto LABEL_50;
          }

          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    __break(1u);
  }

  else if (!v72)
  {
    v73 = BYTE6(v71);
    goto LABEL_45;
  }

  v76 = __OFSUB__(HIDWORD(v70), v70);
  v77 = HIDWORD(v70) - v70;
  if (!v76)
  {
    v73 = v77;
    goto LABEL_45;
  }

LABEL_56:
  __break(1u);
}

void IEEE80211InformationElement.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[56];
  if (v9 <= 5)
  {
    if (v1[56] <= 2u)
    {
      if (!v1[56])
      {
        Hasher._combine(_:)(0);
        IEEE80211InformationElement.RSNCapability.hash(into:)(a1);
        return;
      }

      if (v9 == 1)
      {
        v10 = *(v1 + 3);
        Hasher._combine(_:)(1uLL);
        v11 = v3 | (v4 << 8) | (v5 << 16) | (v6 << 24) | (v7 << 32) | (v8 << 40) | (v10 << 48);
        v12 = *(v11 + 0x10);
        Hasher._combine(_:)(v12);
        if (v12)
        {
          v13 = (v11 + 32);
          do
          {
            v14 = *v13++;
            Hasher._combine(_:)(v14);
            --v12;
          }

          while (v12);
        }

        return;
      }

      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v3 | (v4 << 8));
      Hasher._combine(_:)(v5 | (v6 << 8));
      Hasher._combine(_:)(v7);
      goto LABEL_30;
    }

    if (v9 == 3)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v3);
      Data.hash(into:)();
LABEL_30:

      Data.hash(into:)();
      return;
    }

    v17 = *(v1 + 3);
    v18 = *(v1 + 1);
    if (v9 == 4)
    {
      Hasher._combine(_:)(4uLL);
      Hasher._combine(_:)(v3 | (v4 << 8) | (v5 << 16) | (v6 << 24));
      Hasher._combine(_:)(v7 | (v8 << 8));
      Hasher._combine(_:)(v17);
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(WORD1(v18));
      return;
    }

    v16 = 6;
LABEL_29:
    Hasher._combine(_:)(v16);
    goto LABEL_30;
  }

  if (v1[56] > 8u)
  {
    if (v9 == 9)
    {
      Hasher._combine(_:)(0xAuLL);
      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100480F30;
      *(v19 + 32) = v3;
      *(v19 + 33) = v4;
      *(v19 + 34) = v5;
      v20 = sub_10002D874(v19);
      v22 = v21;

      Data.hash(into:)();
      sub_1000124C8(v20, v22);
    }

    else
    {
      if (v9 != 10)
      {
        Hasher._combine(_:)(5uLL);
        return;
      }

      Hasher._combine(_:)(0xBuLL);
    }

    goto LABEL_30;
  }

  if (v9 == 6)
  {
    Hasher._combine(_:)(7uLL);
    IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.hash(into:)(a1);
    return;
  }

  v15 = *(v1 + 3);
  if (v9 == 7)
  {
    v16 = 8;
    goto LABEL_29;
  }

  Hasher._combine(_:)(9uLL);
  v23 = v3 | (v4 << 8) | (v5 << 16) | (v6 << 24) | (v7 << 32) | (v8 << 40) | (v15 << 48);
  v24 = *(v23 + 0x10);
  Hasher._combine(_:)(v24);
  if (v24)
  {
    v25 = *(type metadata accessor for NANAttribute(0) - 8);
    v26 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v27 = *(v25 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v26 += v27;
      --v24;
    }

    while (v24);
  }
}

Swift::Int IEEE80211InformationElement.hashValue.getter()
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10022DF04(uint64_t a1)
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.hash(into:)(v2);
  return Hasher._finalize()();
}

double sub_10022DF40@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = IEEE80211InformationElement.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_10022DFD0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return static IEEE80211InformationElement.__derived_enum_equals(_:_:)(v5, v7) & 1;
}

BOOL _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v28 = v2;
  v29 = v3;
  v26 = *(a1 + 8);
  v4 = *(a1 + 3);
  v27 = v4;
  v24 = *(a2 + 8);
  v5 = *(a2 + 3);
  v25 = v5;
  v6 = v26;
  v7 = v24;
  if (v4 >> 60 == 15)
  {
    if (v5 >> 60 == 15)
    {
      v8 = a1;
      v9 = a2;
      sub_100012400(&v26, v22, &qword_10058DF78, &unk_100488530);
      sub_100012400(&v24, v22, &qword_10058DF78, &unk_100488530);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (v5 >> 60 == 15)
  {
LABEL_10:
    sub_100012400(&v26, v22, &qword_10058DF78, &unk_100488530);
    sub_100012400(&v24, v22, &qword_10058DF78, &unk_100488530);
    sub_10002F75C(v6, *(&v6 + 1), v4);
    v14 = *(&v7 + 1);
    v13 = v7;
    v15 = v5;
LABEL_21:
    sub_10002F75C(v13, v14, v15);
    return 0;
  }

  if (v26 != v24)
  {
    sub_100012400(&v26, v22, &qword_10058DF78, &unk_100488530);
    sub_100012400(&v24, v22, &qword_10058DF78, &unk_100488530);
    sub_10002F75C(v7, *(&v7 + 1), v5);
LABEL_20:
    v14 = *(&v6 + 1);
    v13 = v6;
    v15 = v4;
    goto LABEL_21;
  }

  v8 = a1;
  v9 = a2;
  sub_100012400(&v26, v22, &qword_10058DF78, &unk_100488530);
  sub_100012400(&v24, v22, &qword_10058DF78, &unk_100488530);
  v16 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v6 + 1), v4, *(&v7 + 1), v5);
  sub_10002F75C(v7, *(&v7 + 1), v5);
  if (!v16)
  {
    goto LABEL_20;
  }

LABEL_5:
  sub_10002F75C(v6, *(&v6 + 1), v4);
  v10 = v8[32];
  v11 = v9[32];
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v17 = v9[34];
  if (v8[34])
  {
    if (!v9[34])
    {
      return 0;
    }
  }

  else
  {
    if (v8[33] != v9[33])
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v22[0] = *(v8 + 40);
  v23 = *(v9 + 40);
  v18 = v22[0];
  v19 = v23;
  if (*(&v22[0] + 1) >> 60 != 15)
  {
    if (*(&v23 + 1) >> 60 == 15)
    {
      goto LABEL_30;
    }

    sub_100012400(v22, v21, &unk_10059AB80, &qword_10049ED90);
    sub_100012400(&v23, v21, &unk_10059AB80, &qword_10049ED90);
    v20 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v18, *(&v18 + 1), v19, *(&v19 + 1));
    sub_100017554(v19, *(&v19 + 1));
    sub_100017554(v18, *(&v18 + 1));
    return v20;
  }

  if (*(&v23 + 1) >> 60 != 15)
  {
LABEL_30:
    sub_100012400(v22, v21, &unk_10059AB80, &qword_10049ED90);
    sub_100012400(&v23, v21, &unk_10059AB80, &qword_10049ED90);
    sub_100017554(v18, *(&v18 + 1));
    sub_100017554(v19, *(&v19 + 1));
    return 0;
  }

  sub_100012400(v22, v21, &unk_10059AB80, &qword_10049ED90);
  sub_100012400(&v23, v21, &unk_10059AB80, &qword_10049ED90);
  sub_100017554(v18, *(&v18 + 1));
  return 1;
}

unsigned __int16 *_s7CoreP2P27IEEE80211InformationElementO13RSNCapabilityV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  if (byte_10049EDE4[*(result + 2)] != byte_10049EDE4[*(a2 + 2)])
  {
    return 0;
  }

  v2 = *(result + 1);
  v3 = *(a2 + 1);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_12:
    v8 = result;
    if (sub_1000C2E80() & 1) != 0 && v8[12] == a2[12] && (_s7CoreP2P12NANAttributeO13ServiceIDListV23__derived_struct_equalsySbAE_AEtFZ_0(*(v8 + 4), *(a2 + 4)))
    {
      return (byte_10049EDE4[*(v8 + 40)] == byte_10049EDE4[*(a2 + 40)]);
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (byte_10049EDE4[*v6] != byte_10049EDE4[*v7])
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreP2P27IEEE80211InformationElementO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = *(result + 1);
  v4 = *(result + 2);
  v5 = *(result + 2);
  v6 = *(result + 3) | (*(result + 7) << 32);
  v7 = *(result + 8);
  v8 = *(result + 16);
  v10 = *(result + 24);
  v9 = *(result + 32);
  v11 = *(result + 40);
  v12 = *(result + 56);
  if (v12 > 5)
  {
    if (*(result + 56) > 8u)
    {
      if (v12 == 9)
      {
        if (a2[56] != 9)
        {
          goto LABEL_85;
        }

        v38 = *(result + 8);
        v39 = *(a2 + 2);
        v58 = *(a2 + 1);
        v40 = a2[2];
        v41 = *a2;
        sub_10005DC58(&qword_10058B3C0, &qword_100481920);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_100480F30;
        *(v42 + 32) = v2;
        *(v42 + 33) = v3;
        *(v42 + 34) = v4;
        v43 = sub_10002D874(v42);
        v45 = v44;

        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_100480F30;
        *(v46 + 32) = v41;
        *(v46 + 34) = v40;
        v47 = sub_10002D874(v46);
        v49 = v48;

        v50 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v43, v45, v47, v49);
        sub_1000124C8(v47, v49);
        sub_1000124C8(v43, v45);
        if (!v50)
        {
          goto LABEL_85;
        }

        v51 = v38;
        v52 = v8;
        v53 = v58;
        v54 = v39;
LABEL_77:

        return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v51, v52, v53, v54);
      }

      if (v12 != 10)
      {
        if (a2[56] != 11)
        {
          goto LABEL_85;
        }

        v57 = vorrq_s8(*(a2 + 24), *(a2 + 40));
        v27 = (*&vorr_s8(*v57.i8, *&vextq_s8(v57, v57, 8uLL)) | *(a2 + 2) | *(a2 + 1) | *a2) == 0;
        goto LABEL_82;
      }

      if (a2[56] != 10)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v12 == 6)
      {
        v61[0] = *result;
        v61[1] = v3;
        v61[2] = v4;
        v62 = v6;
        v63 = BYTE4(v6);
        v64 = v7;
        v65 = v8;
        v66 = v10;
        v67 = v9;
        v68 = v11;
        *v69 = *(result + 41);
        *&v69[7] = *(result + 48);
        if (a2[56] == 6)
        {
          v35 = *(a2 + 1);
          v59[0] = *a2;
          v59[1] = v35;
          v59[2] = *(a2 + 2);
          v60 = *(a2 + 6);
          LOBYTE(result) = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV23__derived_struct_equalsySbAE_AEtFZ_0(v61, v59);
          return result & 1;
        }

        goto LABEL_85;
      }

      if (v12 != 7)
      {
        if (a2[56] == 8)
        {
          v56 = *a2;

          return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(v2 | (v3 << 8) | (v5 << 16) | (v6 << 24), v56);
        }

        goto LABEL_85;
      }

      if (a2[56] != 7)
      {
LABEL_85:
        LOBYTE(result) = 0;
        return result & 1;
      }
    }

LABEL_76:
    v53 = *a2;
    v54 = *(a2 + 1);
    v51 = v2 | (v3 << 8) | (v5 << 16) | (v6 << 24);
    v52 = v7;
    goto LABEL_77;
  }

  if (*(result + 56) > 2u)
  {
    if (v12 == 3)
    {
      if (a2[56] == 3 && v2 == *a2)
      {
        v36 = *(a2 + 3);
        v37 = *(a2 + 4);
        if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(result + 8), v8, *(a2 + 1), *(a2 + 2)) && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v10, v9, v36, v37))
        {
          goto LABEL_70;
        }
      }

      goto LABEL_85;
    }

    if (v12 == 4)
    {
      if (a2[56] != 4)
      {
        goto LABEL_85;
      }

      v22 = ((v4 << 16) | (*(result + 3) << 24) | (v3 << 8) | v2) == *a2 && *(a2 + 2) == (*(result + 3) >> 8);
      v23 = (v6 >> 24);
      v25 = v22 && v23 == *(a2 + 3) && *(a2 + 4) == *(result + 8);
      v26 = WORD1(v7);
      v27 = v25 && *(a2 + 5) == v26;
LABEL_82:
      LOBYTE(result) = v27;
      return result & 1;
    }

    if (a2[56] != 5)
    {
      goto LABEL_85;
    }

    goto LABEL_76;
  }

  if (!*(result + 56))
  {
    if (!a2[56] && (v2 | (v3 << 8)) == *a2 && byte_10049EDE4[*(result + 2)] == byte_10049EDE4[a2[2]])
    {
      v28 = *(a2 + 1);
      v29 = *(v7 + 16);
      if (v29 == *(v28 + 16))
      {
        v30 = *(a2 + 12);
        v31 = *(a2 + 4);
        v32 = a2[40];
        if (!v29 || v28 == v7)
        {
LABEL_50:
          if ((sub_1000C2E80() & 1) != 0 && v30 == v10 && (_s7CoreP2P12NANAttributeO13ServiceIDListV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v31) & 1) != 0 && byte_10049EDE4[v11] == byte_10049EDE4[v32])
          {
            goto LABEL_70;
          }
        }

        else
        {
          v33 = (v7 + 32);
          v34 = (v28 + 32);
          while (byte_10049EDE4[*v33] == byte_10049EDE4[*v34])
          {
            ++v33;
            ++v34;
            if (!--v29)
            {
              goto LABEL_50;
            }
          }
        }
      }
    }

    goto LABEL_85;
  }

  if (v12 != 1)
  {
    if (a2[56] == 2)
    {
      v55 = *a2;
      if ((v2 | (v3 << 8)) == *a2 && (v4 | (*(result + 3) << 8)) == WORD1(v55) && BYTE1(*(result + 3)) == BYTE4(v55) && _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(result + 8), v8, *(a2 + 1), *(a2 + 2)))
      {
        goto LABEL_70;
      }
    }

    goto LABEL_85;
  }

  if (a2[56] != 1)
  {
    goto LABEL_85;
  }

  v13 = *a2;
  v14 = v2 | (v3 << 8) | (v5 << 16) | (v6 << 24);
  v15 = *(v14 + 16);
  if (v15 != *(*a2 + 16))
  {
    goto LABEL_85;
  }

  if (!v15 || v13 == v14)
  {
LABEL_70:
    LOBYTE(result) = 1;
    return result & 1;
  }

  v16 = (v14 + 32);
  v17 = (v13 + 32);
  while (v15)
  {
    v19 = *v16++;
    v18 = v19;
    v20 = *v17++;
    result = v18 == v20;
    if (v18 != v20 || v15-- == 1)
    {
      return result & 1;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t _s7CoreP2P27IEEE80211InformationElementO0C11CipherSuiteO8rawValueAESgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 > 0xDu)
  {
    return 13;
  }

  else
  {
    return byte_10049EDF1[a1];
  }
}

uint64_t _s7CoreP2P27IEEE80211InformationElementO32AuthenticationKeyManagementSuiteO8rawValueAESgs5UInt8V_tcfC_0(char a1)
{
  if ((a1 - 1) >= 0x19u)
  {
    return 25;
  }

  else
  {
    return (a1 - 1);
  }
}

unint64_t sub_10022EB04()
{
  result = qword_100591CA0;
  if (!qword_100591CA0)
  {
    result = swift_getWitnessTable(byte_10049ECE0, &type metadata for IEEE80211InformationElement.ManagementMIC.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591CA0);
  }

  return result;
}

void *sub_10022EB58(void *a1)
{
  v3 = sub_10005DC58(&qword_100591FF0, &qword_10049EDA0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = sub_100029B34(a1, a1[3]);
  sub_10022EB04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100039F68();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100002A00(a1);
  }

  return v7;
}

void *sub_10022ECCC(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = sub_10005DC58(a2, a3);
  v15 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v14 - v9;
  v11 = sub_100029B34(a1, a1[3]);
  a4();
  v12 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_1002323F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 8))(v10, v8);
    v12 = v14;
    sub_100002A00(a1);
  }

  return v12;
}

uint64_t sub_10022EE50(void *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v9, v10);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v3 = v8;
    sub_100031694(v9, v10);
    v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v5 = v10;
    v6 = v11;
    sub_100031694(v9, v10);
    UnkeyedDecodingContainer.decodeData(with:)(v4, v5, v6);
    sub_100002A00(v9);
  }

  sub_100002A00(a1);
  return v3;
}

uint64_t sub_10022EFA0(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    v3 = sub_100031694(v8, v9);
    sub_1000317F0();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    if (sub_1000319F0(v10 | (v11 << 16), 0xAC0F00u))
    {
      v3 = sub_100031694(v8, v9);
      v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v5 = _s7CoreP2P27IEEE80211InformationElementO32AuthenticationKeyManagementSuiteO8rawValueAESgs5UInt8V_tcfC_0(v4);
      if (v5 != 25)
      {
        v3 = v5;
        sub_100002A00(v8);
        sub_100002A00(a1);
        return v3;
      }
    }

    sub_10000B02C();
    swift_allocError();
    *v6 = xmmword_10047CE70;
    *(v6 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v8);
  }

  sub_100002A00(a1);
  return v3;
}

uint64_t sub_10022F110(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    v3 = sub_100031694(v8, v9);
    sub_1000317F0();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    if (sub_1000319F0(v10 | (v11 << 16), 0xAC0F00u))
    {
      v3 = sub_100031694(v8, v9);
      v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v5 = _s7CoreP2P27IEEE80211InformationElementO0C11CipherSuiteO8rawValueAESgs5UInt8V_tcfC_0(v4);
      if (v5 != 13)
      {
        v3 = v5;
        sub_100002A00(v8);
        sub_100002A00(a1);
        return v3;
      }
    }

    sub_10000B02C();
    swift_allocError();
    *v6 = xmmword_10047CE70;
    *(v6 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v8);
  }

  sub_100002A00(a1);
  return v3;
}

uint64_t sub_10022F280@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = 1;
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    sub_10002F75C(0, 0, 0xF000000000000000);
    return sub_100017554(0, 0xF000000000000000);
  }

  sub_100031694(v37, v38);
  sub_100232444();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  sub_100031694(v37, v38);
  v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if ((v5 & 0xFC) != 0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v28)
  {
    sub_100031694(v37, v38);
    sub_1002324C8();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v40 = v7;
    v9 = v28;
    v8 = v29;
    v10 = v30;
    sub_10002F75C(0, 0, 0xF000000000000000);
    if ((v28 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v40 = v7;
    v8 = 0;
    v9 = 0;
    v10 = 0xF000000000000000;
    if ((v28 & 2) == 0)
    {
LABEL_9:
      v11 = 0;
      v19 = 0xF000000000000000;
      v20 = 0;
      v12 = 2;
LABEL_10:
      v23 = v12;
      sub_100002A00(v37);
      LOBYTE(v24) = v40;
      *(&v24 + 1) = v9;
      *&v25 = v8;
      *(&v25 + 1) = v10;
      LOBYTE(v26) = v12;
      BYTE1(v26) = v11;
      v13 = v41;
      BYTE2(v26) = v41;
      *(&v26 + 1) = v20;
      v27 = v19;
      sub_100144054(&v24, &v28);
      sub_100002A00(a1);
      LOBYTE(v28) = v40;
      v29 = v9;
      v30 = v8;
      v31 = v10;
      v32 = v23;
      v33 = v11;
      v34 = v13;
      v35 = v20;
      v36 = v19;
      result = sub_100232498(&v28);
      v14 = v25;
      *a2 = v24;
      *(a2 + 16) = v14;
      *(a2 + 32) = v26;
      *(a2 + 48) = v27;
      return result;
    }
  }

  sub_100031694(v37, v38);
  sub_1001F7EC4();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  sub_100031694(v37, v38);
  v21 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v37, v38);
  result = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v22 = result;
  v41 = 0;
  if (((v21 - 1) & 0xFFFFFF00) == 0)
  {
    v15 = v38;
    v16 = v39;
    sub_100031694(v37, v38);
    v17 = UnkeyedDecodingContainer.decodeData(with:)((v21 - 1), v15, v16);
    v12 = v28;
    v19 = v18;
    v20 = v17;
    sub_100017554(0, 0xF000000000000000);
    v11 = v22;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10022F614@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v17, v18);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v18;
  v6 = v19;
  sub_100031694(v17, v18);
  v7 = UnkeyedDecodingContainer.decodeData(with:)(5, v5, v6);
  v9 = v8;
  v10 = v18;
  v11 = v19;
  sub_100031694(v17, v18);
  v12 = UnkeyedDecodingContainer.decodeData(with:)(16, v10, v11);
  v14 = v13;
  sub_100002A00(v17);
  sub_10000AB0C(v7, v9);
  sub_10000AB0C(v12, v14);
  sub_100002A00(a1);
  sub_1000124C8(v7, v9);
  result = sub_1000124C8(v12, v14);
  *a2 = v16;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  return result;
}

unint64_t sub_10022F7CC()
{
  result = qword_100591CB0;
  if (!qword_100591CB0)
  {
    result = swift_getWitnessTable("\t\b\v", &type metadata for IEEE80211InformationElement.HighThroughputOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591CB0);
  }

  return result;
}

unint64_t sub_10022F820()
{
  result = qword_100591CD0;
  if (!qword_100591CD0)
  {
    result = swift_getWitnessTable(byte_10049EBF0, &type metadata for IEEE80211InformationElement.VeryHighThroughputOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591CD0);
  }

  return result;
}

void *sub_10022F874(void *a1)
{
  v3 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v8, v8[3]);
    v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100480F40;
    *(v5 + 32) = v4;
    v6 = sub_100226AE0(0, v4 & 0xF, v8);
    v9 = v5;
    sub_1002351C8(v6);
    v3 = v9;
    sub_100002A00(v8);
  }

  sub_100002A00(a1);
  return v3;
}

uint64_t sub_10022F9A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v17, v18);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v20;
  sub_100031694(v17, v18);
  sub_10023251C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v20;
  sub_100031694(v17, v18);
  v7 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v8 = sub_100226C68(v7 << 16, v17, sub_1000C0534, sub_10023251C, &type metadata for IEEE80211InformationElement.IEEE80211CipherSuite);
  v19 = v6;
  v9 = v8;
  sub_100031694(v17, v18);
  v10 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v16 = sub_100226C68(v10 << 16, v17, sub_1000C0504, sub_100232618, &type metadata for IEEE80211InformationElement.AuthenticationKeyManagementSuite);
  sub_100031694(v17, v18);
  sub_100232570();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v15 = v20;
  sub_100031694(v17, v18);
  v11 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v12 = sub_100226DFC(v11 << 16, v17);
  sub_100031694(v17, v18);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v13 = v20;
  sub_100002A00(v17);

  sub_100002A00(a1);

  *a2 = v5;
  *(a2 + 2) = v19;
  *(a2 + 8) = v9;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  return result;
}

unint64_t sub_10022FD54()
{
  result = qword_100591CD8;
  if (!qword_100591CD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.IEEE80211CipherSuite, &type metadata for IEEE80211InformationElement.IEEE80211CipherSuite, v0, v1);
    atomic_store(result, &qword_100591CD8);
  }

  return result;
}

unint64_t sub_10022FDA8()
{
  result = qword_100591CE8;
  if (!qword_100591CE8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100591CE0, &qword_10049C4E8);
    v4[0] = sub_10022FD54();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100591CE8);
  }

  return result;
}

unint64_t sub_10022FE2C()
{
  result = qword_100591CF8;
  if (!qword_100591CF8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100591CF0, &qword_10049C4F0);
    v4[0] = sub_10022FEB0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100591CF8);
  }

  return result;
}

unint64_t sub_10022FEB0()
{
  result = qword_100591D00;
  if (!qword_100591D00)
  {
    result = swift_getWitnessTable("=\v", &type metadata for IEEE80211InformationElement.AuthenticationKeyManagementSuite, v0, v1);
    atomic_store(result, &qword_100591D00);
  }

  return result;
}

unint64_t sub_10022FF04()
{
  result = qword_100591D08;
  if (!qword_100591D08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.RSNCapability.Capabilities, &type metadata for IEEE80211InformationElement.RSNCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100591D08);
  }

  return result;
}

unint64_t sub_10022FF58()
{
  result = qword_100591D18;
  if (!qword_100591D18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100591D10, &qword_10049C4F8);
    v4[0] = sub_10022FFDC();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100591D18);
  }

  return result;
}

unint64_t sub_10022FFDC()
{
  result = qword_100591D20;
  if (!qword_100591D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPMK.ID, &type metadata for NANPMK.ID, v0, v1);
    atomic_store(result, &qword_100591D20);
  }

  return result;
}

unint64_t sub_100230030()
{
  result = qword_100591D30;
  if (!qword_100591D30)
  {
    result = swift_getWitnessTable(byte_10049EBA0, &type metadata for IEEE80211InformationElement.ExtendedRSNCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591D30);
  }

  return result;
}

unint64_t sub_100230084()
{
  result = qword_10058E320;
  if (!qword_10058E320)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10005DD04(&qword_10058D358, &unk_100486960);
    v4[0] = &protocol witness table for UInt8;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_10058E320);
  }

  return result;
}

unint64_t sub_100230100()
{
  result = qword_100591D40;
  if (!qword_100591D40)
  {
    result = swift_getWitnessTable("I\t\v", &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Comeback.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591D40);
  }

  return result;
}

unint64_t sub_100230154()
{
  result = qword_100591D48;
  if (!qword_100591D48)
  {
    result = swift_getWitnessTable("1\t\v", &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Control, v0, v1);
    atomic_store(result, &qword_100591D48);
  }

  return result;
}

unint64_t sub_1002301A8()
{
  result = qword_100591D50;
  if (!qword_100591D50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.WrappedDataFormat, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.WrappedDataFormat, v0, v1);
    atomic_store(result, &qword_100591D50);
  }

  return result;
}

unint64_t sub_1002301FC()
{
  result = qword_100591D58;
  if (!qword_100591D58)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058DF78, &unk_100488530);
    v4[0] = sub_100230280();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100591D58);
  }

  return result;
}

unint64_t sub_100230280()
{
  result = qword_100591D60;
  if (!qword_100591D60)
  {
    result = swift_getWitnessTable("\r$\v", &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Comeback, v0, v1);
    atomic_store(result, &qword_100591D60);
  }

  return result;
}

unint64_t sub_1002302D4()
{
  result = qword_100591D70;
  if (!qword_100591D70)
  {
    result = swift_getWitnessTable(byte_10049EAD8, &type metadata for IEEE80211InformationElement.MessageIntegrityCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591D70);
  }

  return result;
}

unint64_t sub_100230328()
{
  result = qword_100591D78;
  if (!qword_100591D78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BinaryDecoder.DataCopy, &type metadata for BinaryDecoder.DataCopy, v0, v1);
    atomic_store(result, &qword_100591D78);
  }

  return result;
}

unint64_t sub_10023037C()
{
  result = qword_100591D88;
  if (!qword_100591D88)
  {
    result = swift_getWitnessTable(byte_10049EA88, &type metadata for IEEE80211InformationElement.WrappedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591D88);
  }

  return result;
}

unint64_t sub_1002303D0()
{
  result = qword_100591D90;
  if (!qword_100591D90)
  {
    result = swift_getWitnessTable(byte_10049EA60, &type metadata for IEEE80211InformationElement.ElementType, v0, v1);
    atomic_store(result, &qword_100591D90);
  }

  return result;
}

unint64_t sub_100230424()
{
  result = qword_100591DA0;
  if (!qword_100591DA0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_100591D98, &unk_10049C530);
    v4[0] = sub_1002304A8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100591DA0);
  }

  return result;
}

unint64_t sub_1002304A8()
{
  result = qword_100591DA8;
  if (!qword_100591DA8)
  {
    result = swift_getWitnessTable("!\n\v", &type metadata for IEEE80211InformationElement.ExtendedElementID, v0, v1);
    atomic_store(result, &qword_100591DA8);
  }

  return result;
}

unint64_t sub_1002304FC()
{
  result = qword_1005915F8;
  if (!qword_1005915F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10005DD04(&qword_10058D430, &unk_1004AC7D0);
    v4[0] = sub_10003CE48(&qword_10058D458, type metadata accessor for NANAttribute, protocol conformance descriptor for NANAttribute);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_1005915F8);
  }

  return result;
}

unint64_t sub_1002305B4()
{
  result = qword_100591DD0;
  if (!qword_100591DD0)
  {
    result = swift_getWitnessTable("!,\v", &type metadata for IEEE80211InformationElement.HighThroughputCapability, v0, v1);
    atomic_store(result, &qword_100591DD0);
  }

  return result;
}

unint64_t sub_10023060C()
{
  result = qword_100591DD8;
  if (!qword_100591DD8)
  {
    result = swift_getWitnessTable("i+\v", &type metadata for IEEE80211InformationElement.ManagementMIC, v0, v1);
    atomic_store(result, &qword_100591DD8);
  }

  return result;
}

unint64_t sub_100230664()
{
  result = qword_100591DE0;
  if (!qword_100591DE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.HighThroughputOperation, &type metadata for IEEE80211InformationElement.HighThroughputOperation, v0, v1);
    atomic_store(result, &qword_100591DE0);
  }

  return result;
}

unint64_t sub_1002306BC()
{
  result = qword_100591DE8;
  if (!qword_100591DE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.VeryHighThroughputCapability, &type metadata for IEEE80211InformationElement.VeryHighThroughputCapability, v0, v1);
    atomic_store(result, &qword_100591DE8);
  }

  return result;
}

unint64_t sub_100230714()
{
  result = qword_100591DF0;
  if (!qword_100591DF0)
  {
    result = swift_getWitnessTable("A)\v", &type metadata for IEEE80211InformationElement.VeryHighThroughputOperation, v0, v1);
    atomic_store(result, &qword_100591DF0);
  }

  return result;
}

unint64_t sub_10023076C()
{
  result = qword_100591DF8;
  if (!qword_100591DF8)
  {
    result = swift_getWitnessTable("9(\v", &type metadata for IEEE80211InformationElement.RSNCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100591DF8);
  }

  return result;
}

unint64_t sub_1002307C4()
{
  result = qword_100591E00;
  if (!qword_100591E00)
  {
    result = swift_getWitnessTable("1-\v", &type metadata for IEEE80211InformationElement.RSNCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100591E00);
  }

  return result;
}

unint64_t sub_100230818()
{
  result = qword_100591E08;
  if (!qword_100591E08)
  {
    result = swift_getWitnessTable("Q'\v", &type metadata for IEEE80211InformationElement.RSNCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100591E08);
  }

  return result;
}

unint64_t sub_100230870()
{
  result = qword_100591E10;
  if (!qword_100591E10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.RSNCapability.Capabilities, &type metadata for IEEE80211InformationElement.RSNCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100591E10);
  }

  return result;
}

unint64_t sub_1002308C8()
{
  result = qword_100591E18;
  if (!qword_100591E18)
  {
    result = swift_getWitnessTable("i&\v", &type metadata for IEEE80211InformationElement.RSNCapability, v0, v1);
    atomic_store(result, &qword_100591E18);
  }

  return result;
}

unint64_t sub_10023091C()
{
  result = qword_100591E20;
  if (!qword_100591E20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.ExtendedRSNCapability, &type metadata for IEEE80211InformationElement.ExtendedRSNCapability, v0, v1);
    atomic_store(result, &qword_100591E20);
  }

  return result;
}

unint64_t sub_100230970(uint64_t a1)
{
  result = sub_100230998();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100230998()
{
  result = qword_100591E28;
  if (!qword_100591E28)
  {
    result = swift_getWitnessTable("-*\v", &type metadata for IEEE80211InformationElement.ExtendedRSNCapability, v0, v1);
    atomic_store(result, &qword_100591E28);
  }

  return result;
}

unint64_t sub_1002309F0()
{
  result = qword_100591E30;
  if (!qword_100591E30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.ExtendedRSNCapability, &type metadata for IEEE80211InformationElement.ExtendedRSNCapability, v0, v1);
    atomic_store(result, &qword_100591E30);
  }

  return result;
}

unint64_t sub_100230A48()
{
  result = qword_100591E38;
  if (!qword_100591E38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.ExtendedRSNCapability, &type metadata for IEEE80211InformationElement.ExtendedRSNCapability, v0, v1);
    atomic_store(result, &qword_100591E38);
  }

  return result;
}

unint64_t sub_100230AA0()
{
  result = qword_100591E40;
  if (!qword_100591E40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.ExtendedRSNCapability, &type metadata for IEEE80211InformationElement.ExtendedRSNCapability, v0, v1);
    atomic_store(result, &qword_100591E40);
  }

  return result;
}

unint64_t sub_100230AF8()
{
  result = qword_100591E48;
  if (!qword_100591E48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.IEEE80211CipherSuite, &type metadata for IEEE80211InformationElement.IEEE80211CipherSuite, v0, v1);
    atomic_store(result, &qword_100591E48);
  }

  return result;
}

unint64_t sub_100230B50()
{
  result = qword_100591E50;
  if (!qword_100591E50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.WrappedDataFormat, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.WrappedDataFormat, v0, v1);
    atomic_store(result, &qword_100591E50);
  }

  return result;
}

unint64_t sub_100230BA8()
{
  result = qword_100591E58;
  if (!qword_100591E58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Comeback, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Comeback, v0, v1);
    atomic_store(result, &qword_100591E58);
  }

  return result;
}

unint64_t sub_100230C00()
{
  result = qword_100591E60;
  if (!qword_100591E60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters, v0, v1);
    atomic_store(result, &qword_100591E60);
  }

  return result;
}

unint64_t sub_100230C58()
{
  result = qword_100591E68;
  if (!qword_100591E68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.AuthenticationKeyManagementSuite, &type metadata for IEEE80211InformationElement.AuthenticationKeyManagementSuite, v0, v1);
    atomic_store(result, &qword_100591E68);
  }

  return result;
}

unint64_t sub_100230CB0()
{
  result = qword_100591E70;
  if (!qword_100591E70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.MessageIntegrityCode, &type metadata for IEEE80211InformationElement.MessageIntegrityCode, v0, v1);
    atomic_store(result, &qword_100591E70);
  }

  return result;
}

unint64_t sub_100230D08()
{
  result = qword_100591E78;
  if (!qword_100591E78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.WrappedData, &type metadata for IEEE80211InformationElement.WrappedData, v0, v1);
    atomic_store(result, &qword_100591E78);
  }

  return result;
}

unint64_t sub_100230D60()
{
  result = qword_100591E80;
  if (!qword_100591E80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement, &type metadata for IEEE80211InformationElement, v0, v1);
    atomic_store(result, &qword_100591E80);
  }

  return result;
}

uint64_t sub_100230DB4(uint64_t a1)
{
  v1 = *(a1 + 16) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100230DDC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100230E04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 57))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 56);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100230E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_100230EA0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xB)
  {
    *result = a2 - 11;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 11;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_100230EF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100230F4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100230FD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10023101C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1002310A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1002310FC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IEEE80211InformationElement.AuthenticationKeyManagementSuite(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IEEE80211InformationElement.AuthenticationKeyManagementSuite(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002313B0()
{
  result = qword_100591E88;
  if (!qword_100591E88)
  {
    result = swift_getWitnessTable(byte_10049E130, &type metadata for IEEE80211InformationElement.HighThroughputCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591E88);
  }

  return result;
}

unint64_t sub_100231408()
{
  result = qword_100591E90;
  if (!qword_100591E90)
  {
    result = swift_getWitnessTable(asc_10049E1E8, &type metadata for IEEE80211InformationElement.ManagementMIC.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591E90);
  }

  return result;
}

unint64_t sub_100231460()
{
  result = qword_100591E98;
  if (!qword_100591E98)
  {
    result = swift_getWitnessTable(aI_11, &type metadata for IEEE80211InformationElement.HighThroughputOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591E98);
  }

  return result;
}

unint64_t sub_1002314B8()
{
  result = qword_100591EA0;
  if (!qword_100591EA0)
  {
    result = swift_getWitnessTable(byte_10049E358, &type metadata for IEEE80211InformationElement.VeryHighThroughputCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591EA0);
  }

  return result;
}

unint64_t sub_100231510()
{
  result = qword_100591EA8;
  if (!qword_100591EA8)
  {
    result = swift_getWitnessTable(byte_10049E460, &type metadata for IEEE80211InformationElement.ExtendedRSNCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591EA8);
  }

  return result;
}

unint64_t sub_100231568()
{
  result = qword_100591EB0;
  if (!qword_100591EB0)
  {
    result = swift_getWitnessTable(byte_10049E518, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Comeback.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591EB0);
  }

  return result;
}

unint64_t sub_1002315BC()
{
  result = qword_100591EB8;
  if (!qword_100591EB8)
  {
    result = swift_getWitnessTable(byte_10049E570, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Control, v0, v1);
    atomic_store(result, &qword_100591EB8);
  }

  return result;
}

unint64_t sub_100231614()
{
  result = qword_100591EC0;
  if (!qword_100591EC0)
  {
    result = swift_getWitnessTable(aY_20, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Control, v0, v1);
    atomic_store(result, &qword_100591EC0);
  }

  return result;
}

unint64_t sub_10023166C()
{
  result = qword_100591EC8;
  if (!qword_100591EC8)
  {
    result = swift_getWitnessTable("!\r\v", &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Control, v0, v1);
    atomic_store(result, &qword_100591EC8);
  }

  return result;
}

unint64_t sub_1002316C4()
{
  result = qword_100591ED0;
  if (!qword_100591ED0)
  {
    result = swift_getWitnessTable(byte_10049E5D0, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Control, v0, v1);
    atomic_store(result, &qword_100591ED0);
  }

  return result;
}

unint64_t sub_10023171C()
{
  result = qword_100591ED8;
  if (!qword_100591ED8)
  {
    result = swift_getWitnessTable("A\n\v", &type metadata for IEEE80211InformationElement.MessageIntegrityCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591ED8);
  }

  return result;
}

unint64_t sub_100231774()
{
  result = qword_100591EE0;
  if (!qword_100591EE0)
  {
    result = swift_getWitnessTable(byte_10049E880, &type metadata for IEEE80211InformationElement.WrappedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591EE0);
  }

  return result;
}

unint64_t sub_1002317CC()
{
  result = qword_100591EE8;
  if (!qword_100591EE8)
  {
    result = swift_getWitnessTable(byte_10049E948, &type metadata for IEEE80211InformationElement.ElementType, v0, v1);
    atomic_store(result, &qword_100591EE8);
  }

  return result;
}

unint64_t sub_100231824()
{
  result = qword_100591EF0;
  if (!qword_100591EF0)
  {
    result = swift_getWitnessTable(byte_10049EA10, &type metadata for IEEE80211InformationElement.ExtendedElementID, v0, v1);
    atomic_store(result, &qword_100591EF0);
  }

  return result;
}

unint64_t sub_10023187C()
{
  result = qword_100591EF8;
  if (!qword_100591EF8)
  {
    result = swift_getWitnessTable(byte_10049E7F0, &type metadata for IEEE80211InformationElement.WrappedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591EF8);
  }

  return result;
}

unint64_t sub_1002318D4()
{
  result = qword_100591F00;
  if (!qword_100591F00)
  {
    result = swift_getWitnessTable(")\n\v", &type metadata for IEEE80211InformationElement.WrappedData.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F00);
  }

  return result;
}

unint64_t sub_10023192C()
{
  result = qword_100591F08;
  if (!qword_100591F08)
  {
    result = swift_getWitnessTable("Q\r\v", &type metadata for IEEE80211InformationElement.MessageIntegrityCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F08);
  }

  return result;
}

unint64_t sub_100231984()
{
  result = qword_100591F10;
  if (!qword_100591F10)
  {
    result = swift_getWitnessTable(byte_10049E760, &type metadata for IEEE80211InformationElement.MessageIntegrityCode.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F10);
  }

  return result;
}

unint64_t sub_1002319DC()
{
  result = qword_100591F18;
  if (!qword_100591F18)
  {
    result = swift_getWitnessTable(byte_10049E488, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Comeback.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F18);
  }

  return result;
}

unint64_t sub_100231A34()
{
  result = qword_100591F20;
  if (!qword_100591F20)
  {
    result = swift_getWitnessTable(byte_10049E4B0, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Comeback.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F20);
  }

  return result;
}

unint64_t sub_100231A8C()
{
  result = qword_100591F28;
  if (!qword_100591F28)
  {
    result = swift_getWitnessTable(byte_10049E3D0, &type metadata for IEEE80211InformationElement.ExtendedRSNCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F28);
  }

  return result;
}

unint64_t sub_100231AE4()
{
  result = qword_100591F30;
  if (!qword_100591F30)
  {
    result = swift_getWitnessTable(aI_12, &type metadata for IEEE80211InformationElement.ExtendedRSNCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F30);
  }

  return result;
}

unint64_t sub_100231B3C()
{
  result = qword_100591F38;
  if (!qword_100591F38)
  {
    result = swift_getWitnessTable(asc_10049E380, &type metadata for IEEE80211InformationElement.VeryHighThroughputOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F38);
  }

  return result;
}

unint64_t sub_100231B94()
{
  result = qword_100591F40;
  if (!qword_100591F40)
  {
    result = swift_getWitnessTable(byte_10049E3A8, &type metadata for IEEE80211InformationElement.VeryHighThroughputOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F40);
  }

  return result;
}

unint64_t sub_100231BEC()
{
  result = qword_100591F48;
  if (!qword_100591F48)
  {
    result = swift_getWitnessTable(byte_10049E2C8, &type metadata for IEEE80211InformationElement.VeryHighThroughputCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F48);
  }

  return result;
}

unint64_t sub_100231C44()
{
  result = qword_100591F50;
  if (!qword_100591F50)
  {
    result = swift_getWitnessTable(aQ_9, &type metadata for IEEE80211InformationElement.VeryHighThroughputCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F50);
  }

  return result;
}

unint64_t sub_100231C9C()
{
  result = qword_100591F58;
  if (!qword_100591F58)
  {
    result = swift_getWitnessTable(aY_21, &type metadata for IEEE80211InformationElement.HighThroughputOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F58);
  }

  return result;
}

unint64_t sub_100231CF4()
{
  result = qword_100591F60;
  if (!qword_100591F60)
  {
    result = swift_getWitnessTable(asc_10049E238, &type metadata for IEEE80211InformationElement.HighThroughputOperation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F60);
  }

  return result;
}

unint64_t sub_100231D4C()
{
  result = qword_100591F68;
  if (!qword_100591F68)
  {
    result = swift_getWitnessTable(a1_1, &type metadata for IEEE80211InformationElement.ManagementMIC.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F68);
  }

  return result;
}

unint64_t sub_100231DA4()
{
  result = qword_100591F70;
  if (!qword_100591F70)
  {
    result = swift_getWitnessTable(byte_10049E180, &type metadata for IEEE80211InformationElement.ManagementMIC.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F70);
  }

  return result;
}

unint64_t sub_100231DFC()
{
  result = qword_100591F78;
  if (!qword_100591F78)
  {
    result = swift_getWitnessTable(byte_10049E0A0, &type metadata for IEEE80211InformationElement.HighThroughputCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F78);
  }

  return result;
}

unint64_t sub_100231E54()
{
  result = qword_100591F80;
  if (!qword_100591F80)
  {
    result = swift_getWitnessTable(aY_22, &type metadata for IEEE80211InformationElement.HighThroughputCapability.CodingKeys, v0, v1);
    atomic_store(result, &qword_100591F80);
  }

  return result;
}

uint64_t sub_100231EA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802401130 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1868983913 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261507564706D61 && a2 == 0xEF73726574656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7562093 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100232014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437972616D697270 && a2 == 0xEE006C656E6E6168;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7562093 && a2 == 0xE300000000000000)
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

uint64_t sub_10023213C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1868983913 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70614D53434D7872 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x474C686769487872 && a2 == 0xED00006574615249 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70614D53434D7874 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x474C686769487874 && a2 == 0xED00006574615249)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1002322F4()
{
  result = qword_100591F88;
  if (!qword_100591F88)
  {
    result = swift_getWitnessTable(byte_10049E8D0, &type metadata for IEEE80211InformationElement.ElementType, v0, v1);
    atomic_store(result, &qword_100591F88);
  }

  return result;
}

unint64_t sub_100232348()
{
  result = qword_100591F90;
  if (!qword_100591F90)
  {
    result = swift_getWitnessTable(byte_10049E9D8, &type metadata for IEEE80211InformationElement.ExtendedElementID, v0, v1);
    atomic_store(result, &qword_100591F90);
  }

  return result;
}

unint64_t sub_10023239C()
{
  result = qword_100591F98;
  if (!qword_100591F98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.WrappedDataFormat, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.WrappedDataFormat, v0, v1);
    atomic_store(result, &qword_100591F98);
  }

  return result;
}

unint64_t sub_1002323F0()
{
  result = qword_100591FA8;
  if (!qword_100591FA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BinaryDecoder.DataCopy, &type metadata for BinaryDecoder.DataCopy, v0, v1);
    atomic_store(result, &qword_100591FA8);
  }

  return result;
}

unint64_t sub_100232444()
{
  result = qword_100591FB8;
  if (!qword_100591FB8)
  {
    result = swift_getWitnessTable(byte_10049E698, &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Control, v0, v1);
    atomic_store(result, &qword_100591FB8);
  }

  return result;
}

unint64_t sub_1002324C8()
{
  result = qword_100591FC0;
  if (!qword_100591FC0)
  {
    result = swift_getWitnessTable("%$\v", &type metadata for IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Comeback, v0, v1);
    atomic_store(result, &qword_100591FC0);
  }

  return result;
}

unint64_t sub_10023251C()
{
  result = qword_100591FC8;
  if (!qword_100591FC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.IEEE80211CipherSuite, &type metadata for IEEE80211InformationElement.IEEE80211CipherSuite, v0, v1);
    atomic_store(result, &qword_100591FC8);
  }

  return result;
}

unint64_t sub_100232570()
{
  result = qword_100591FD0;
  if (!qword_100591FD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for IEEE80211InformationElement.RSNCapability.Capabilities, &type metadata for IEEE80211InformationElement.RSNCapability.Capabilities, v0, v1);
    atomic_store(result, &qword_100591FD0);
  }

  return result;
}

unint64_t sub_1002325C4()
{
  result = qword_100591FD8;
  if (!qword_100591FD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NANPMK.ID, &type metadata for NANPMK.ID, v0, v1);
    atomic_store(result, &qword_100591FD8);
  }

  return result;
}

unint64_t sub_100232618()
{
  result = qword_100591FE0;
  if (!qword_100591FE0)
  {
    result = swift_getWitnessTable("U\v", &type metadata for IEEE80211InformationElement.AuthenticationKeyManagementSuite, v0, v1);
    atomic_store(result, &qword_100591FE0);
  }

  return result;
}

unint64_t sub_1002326A8()
{
  result = sub_100083180(&off_100556B10);
  qword_10059B688 = result;
  return result;
}

unint64_t sub_1002326D0()
{
  result = sub_100083180(&off_100556B70);
  qword_10059B690 = result;
  return result;
}

uint64_t sub_1002326F8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
LABEL_15:
    if (qword_10058AB10 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v10 = 0;
      v3 = qword_10059B688;
      v11 = 1 << *(qword_10059B688 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(qword_10059B688 + 64);
      v14 = (v11 + 63) >> 6;
      while (v13)
      {
        v15 = v10;
LABEL_25:
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        if (*(*(qword_10059B688 + 48) + ((v15 << 9) | (8 * v16))) == a1)
        {
          goto LABEL_26;
        }
      }

      while (1)
      {
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v15 >= v14)
        {
          return 0;
        }

        v13 = *(qword_10059B688 + 64 + 8 * v15);
        ++v10;
        if (v13)
        {
          v10 = v15;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v20 = a1;
      swift_once();
      a1 = v20;
    }
  }

  if (qword_10058AB18 != -1)
  {
    v21 = a1;
    swift_once();
    a1 = v21;
  }

  v2 = 0;
  v3 = qword_10059B690;
  v4 = 1 << *(qword_10059B690 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_10059B690 + 64);
  v7 = (v4 + 63) >> 6;
  do
  {
    if (v6)
    {
      v8 = v2;
    }

    else
    {
      do
      {
        v8 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_31;
        }

        if (v8 >= v7)
        {
          goto LABEL_15;
        }

        v6 = *(qword_10059B690 + 64 + 8 * v8);
        ++v2;
      }

      while (!v6);
      v2 = v8;
    }

    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (*(*(qword_10059B690 + 48) + ((v8 << 9) | (8 * v9))) != a1);
LABEL_26:
  if (*(v3 + 16) && (v17 = sub_100085268(a1), (v18 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v17);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1002328E4()
{
  result = sub_1000831A8(&off_100556BD0);
  qword_10059B698 = result;
  return result;
}

unint64_t sub_10023290C()
{
  result = sub_1000832AC(&off_100556CB0);
  qword_10059B6A0 = result;
  return result;
}

void __swiftcall PHYDataRateCalculator.init(opMode:BW:NSS:MCS:SGI:)(CoreP2P::PHYDataRateCalculator_optional *__return_ptr retstr, CoreP2P::PHYCapabilities::OperationMode opMode, Swift::Int BW, Swift::UInt NSS, Swift::UInt MCS, Swift::Bool SGI)
{
  sub_100232B10(opMode, BW, NSS, MCS, SGI, v10);
  v7 = v10[5];
  *(&retstr->value.t_dft.value + 4) = v10[4];
  *&retstr->is_nil = v7;
  *(&retstr[1].value.BW + 7) = v10[6];
  HIBYTE(retstr[1].value.MCS) = v11;
  v8 = v10[1];
  *&retstr->value.opMode = v10[0];
  *&retstr->value.NSS = v8;
  v9 = v10[3];
  *&retstr->value.SGI = v10[2];
  *(&retstr->value.n_bpcs.value + 6) = v9;
}

double PHYDataRateCalculator.phyRateMbps.getter()
{
  if ((*(v0 + 48) & 1) == 0 && (*(v0 + 64) & 1) == 0 && (*(v0 + 80) & 1) == 0 && (*(v0 + 96) & 1) == 0 && (*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 40) * *(v0 + 56) * *(v0 + 72) * *(v0 + 16) / (*(v0 + 88) + *(v0 + 104));
  }

  return result;
}

double PHYCapabilities.PHYDataRateMbps.getter()
{
  v1 = v0[1];
  if (v1 != 7 && (v0[16] & 1) == 0 && (v0[32] & 1) == 0)
  {
    v2 = v0[33];
    if (v2 != 2)
    {
      v3 = v1 - 2;
      if (v3 > 4)
      {
        v4 = 40;
      }

      else
      {
        v4 = *&asc_10049EE38[8 * v3];
      }

      sub_100232B10(*v0, v4, *(v0 + 1), *(v0 + 3), v2 & 1, v6);
      if (v8 != 2 && (v10 & 1) == 0 && (v12 & 1) == 0 && (v14 & 1) == 0 && (v16 & 1) == 0 && (v18 & 1) == 0)
      {
        return v9 * v11 * v13 * v7 / (v15 + v17);
      }
    }
  }

  return result;
}

uint64_t sub_100232B10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if ((a3 - 9) >= 0xFFFFFFFFFFFFFFF8 && a4 <= 0xB)
  {
    v19 = a4;
    v20 = a3;
    v21 = a2;
    v22 = result;
    result = sub_1002326F8(a2, 0);
    v8 = result;
    v44 = v23 & 1;
    if (a5)
    {
      v12 = 0x3FD999999999999ALL;
    }

    else
    {
      v12 = 0x3FE999999999999ALL;
    }

    if (!v22)
    {
      if (qword_10058AB20 != -1)
      {
        result = swift_once();
      }

      v27 = qword_10059B698;
      if (*(qword_10059B698 + 16) && (result = sub_100085268(v19 & 7), (v28 & 1) != 0))
      {
        v29 = 0;
        v9 = *(*(v27 + 56) + 8 * result);
      }

      else
      {
        v9 = 0;
        v29 = 1;
      }

      v43 = v29;
      if (qword_10058AB28 != -1)
      {
        result = swift_once();
      }

      v34 = qword_10059B6A0;
      v10 = *(qword_10059B6A0 + 16);
      if (!v10)
      {
        goto LABEL_39;
      }

      result = sub_100085268(v19 & 7);
      if (v37)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }

    if (v22 == 1)
    {
      if (qword_10058AB20 != -1)
      {
        result = swift_once();
      }

      v24 = qword_10059B698;
      if (*(qword_10059B698 + 16) && (result = sub_100085268(v19), (v25 & 1) != 0))
      {
        v26 = 0;
        v9 = *(*(v24 + 56) + 8 * result);
      }

      else
      {
        v9 = 0;
        v26 = 1;
      }

      v43 = v26;
      if (qword_10058AB28 != -1)
      {
        result = swift_once();
      }

      v34 = qword_10059B6A0;
      v10 = *(qword_10059B6A0 + 16);
      if (!v10)
      {
        goto LABEL_39;
      }

      result = sub_100085268(v19);
      if (v35)
      {
LABEL_32:
        v36 = 0;
        v10 = *(*(v34 + 56) + 8 * result);
LABEL_40:
        v42 = v36;
        v11 = 0x400999999999999ALL;
LABEL_50:
        v15 = v44;
        v14 = v43;
        v13 = v42;
        v16 = v22;
        v17 = a5 & 1;
        goto LABEL_51;
      }

LABEL_38:
      v10 = 0;
LABEL_39:
      v36 = 1;
      goto LABEL_40;
    }

    if (qword_10058AB20 != -1)
    {
      swift_once();
    }

    v30 = qword_10059B698;
    if (*(qword_10059B698 + 16) && (v31 = sub_100085268(v19), (v32 & 1) != 0))
    {
      v33 = 0;
      v9 = *(*(v30 + 56) + 8 * v31);
    }

    else
    {
      v9 = 0;
      v33 = 1;
    }

    v43 = v33;
    result = sub_1002326F8(v21, 1);
    v8 = result;
    v44 = v38 & 1;
    if (qword_10058AB28 != -1)
    {
      result = swift_once();
    }

    v39 = qword_10059B6A0;
    v10 = *(qword_10059B6A0 + 16);
    if (v10)
    {
      result = sub_100085268(v19);
      if (v40)
      {
        v41 = 0;
        v10 = *(*(v39 + 56) + 8 * result);
LABEL_49:
        v42 = v41;
        v11 = 0x402999999999999ALL;
        goto LABEL_50;
      }

      v10 = 0;
    }

    v41 = 1;
    goto LABEL_49;
  }

  v21 = 0;
  v20 = 0;
  v19 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 2;
LABEL_51:
  *a6 = v16;
  *(a6 + 8) = v21;
  *(a6 + 16) = v20;
  *(a6 + 24) = v19;
  *(a6 + 32) = v17;
  *(a6 + 40) = v8;
  *(a6 + 48) = v15;
  *(a6 + 56) = v9;
  *(a6 + 64) = v14;
  *(a6 + 72) = v10;
  *(a6 + 80) = v13;
  *(a6 + 88) = v11;
  *(a6 + 96) = 0;
  *(a6 + 104) = v12;
  *(a6 + 112) = 0;
  return result;
}

__n128 sub_100232EC4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100232EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100232F44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100232FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100232FEC(a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_100232FEC(CoreP2P::WiFiInterfaceRole a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {

    v8._countAndFlagsBits = a2;
    v8._object = a3;
    v9 = AppleDevice.findOrCreateInterface(for:on:with:)(a1, v8, (a4 & 0xFFFFFFFFFFFFLL));

    if (v9.value._object)
    {
      swift_allocObject();

      return AppleIO80211Driver.init(device:role:name:)(v10, a1, v9.value._countAndFlagsBits, v9.value._object);
    }

    v12 = 7;
  }

  else
  {
    v12 = 2;
  }

  sub_10000B02C();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_10023310C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a1)
  {
    v12 = 2;
    goto LABEL_6;
  }

  v7 = a1;

  v8._countAndFlagsBits = a2;
  v8._object = a3;
  v9 = AppleDevice.findOrCreateInterface(for:on:with:)(v7, v8, (a4 & 0xFFFFFFFFFFFFLL));

  if (!v9.value._object || (swift_allocObject(), v10 = , (result = AppleBroadcomDriver.init(device:role:name:)(v10, v7, v9.value._countAndFlagsBits, v9.value._object)) == 0))
  {
    v12 = 7;
LABEL_6:
    sub_10000B02C();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t WiFiDriver<>.createInterface(for:on:macAddress:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a2;
  v36 = a3;
  v33 = a7;
  v37 = a1;
  v12 = a1;
  v13 = type metadata accessor for Optional();
  v31 = *(v13 - 8);
  v32 = v13;
  __chkstk_darwin();
  v34 = v30 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = __chkstk_darwin();
  v19 = v30 - v18;
  if (!v12)
  {
    sub_10000B02C();
    swift_allocError();
    v28 = 2;
    goto LABEL_7;
  }

  v30[0] = v8;
  v30[1] = v7;
  v20 = *(a6 + 56);
  v20(a5, a6, v17);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = (*(AssociatedConformanceWitness + 88))(v37, v35, v36, a4 & 0xFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
  v24 = v23;
  (*(v16 + 8))(v19, AssociatedTypeWitness);
  if (!v24)
  {
LABEL_5:
    sub_10000B02C();
    swift_allocError();
    v28 = 7;
LABEL_7:
    *v27 = v28;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    return swift_willThrow();
  }

  (v20)(a5, a6);
  v25 = v34;
  (*(a6 + 48))(v19, v37, v22, v24, a5, a6);
  v26 = *(a5 - 8);
  if ((*(v26 + 48))(v25, 1, a5) == 1)
  {
    (*(v31 + 8))(v25, v32);
    goto LABEL_5;
  }

  return (*(v26 + 32))(v33, v25, a5);
}

uint64_t sub_100233570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_10023310C(a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t InterfaceIdentifier.ipv6Address.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002D874(&off_100556D90);
  v6 = v5;
  v15 = v4;
  v16 = v5;
  v14[3] = &type metadata for Data;
  v14[4] = &protocol witness table for Data;
  v14[0] = a1;
  v14[1] = a2;
  v7 = sub_100029B34(v14, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_10000AB0C(v4, v6);
  sub_10000AB0C(a1, a2);
  sub_100178A18(v8, v9, &v15);
  sub_1000124C8(v4, v6);
  sub_100002A00(v14);
  v10 = v15;
  v11 = v16;
  v12 = sub_1002A58C4(v15, v16);
  sub_1000124C8(v10, v11);
  return v12;
}

uint64_t InterfaceIdentifier.description.getter(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return 0x3A30386566;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (v4)
    {
      v5 = a1 >> 32;
    }

    else
    {
      v5 = BYTE6(a2);
    }

    if (v4)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }
  }

  result = 0x3A30386566;
  v36 = 0x3A30386566;
  v37 = 0xE500000000000000;
  if (v6 < v5)
  {
    v29 = a1 >> 32;
    v28 = v5;
    while (1)
    {
      if (__OFADD__(v6, 2))
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v6 + 2;
      }

      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100480F40;
      if (v4 == 2)
      {
        if (v6 < *(a1 + 16))
        {
          goto LABEL_46;
        }

        if (v6 >= *(a1 + 24))
        {
          goto LABEL_49;
        }

        v21 = __DataStorage._bytes.getter();
        if (!v21)
        {
          goto LABEL_58;
        }

        v22 = v21;
        v23 = __DataStorage._offset.getter();
        if (__OFSUB__(v6, v23))
        {
          goto LABEL_51;
        }

        v24 = v6 + 1;
        if (v6 + 1 < *(a1 + 16))
        {
          goto LABEL_53;
        }

        if (v24 >= *(a1 + 24))
        {
          goto LABEL_55;
        }

        v16 = *(v22 + v6 - v23);
        v25 = __DataStorage._bytes.getter();
        if (!v25)
        {
          goto LABEL_60;
        }

        v18 = v25;
        v26 = __DataStorage._offset.getter();
        v20 = v24 - v26;
        if (__OFSUB__(v24, v26))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v6 >= BYTE6(a2))
          {
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
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
          }

          v30 = a1;
          v31 = a2;
          v32 = BYTE2(a2);
          v33 = BYTE3(a2);
          v34 = BYTE4(a2);
          v27 = v6 + 1;
          v35 = BYTE5(a2);
          if (v6 + 1 >= BYTE6(a2))
          {
            goto LABEL_48;
          }

          v16 = *(&v30 + v6);
          v30 = a1;
          v31 = a2;
          v32 = BYTE2(a2);
          v33 = BYTE3(a2);
          v34 = BYTE4(a2);
          v35 = BYTE5(a2);
          v8 = *(&v30 + v27);
          goto LABEL_13;
        }

        if (v6 < a1 || v6 >= v29)
        {
          goto LABEL_47;
        }

        v12 = __DataStorage._bytes.getter();
        if (!v12)
        {
          goto LABEL_57;
        }

        v13 = v12;
        v14 = __DataStorage._offset.getter();
        if (__OFSUB__(v6, v14))
        {
          goto LABEL_50;
        }

        v15 = v6 + 1;
        if (v6 + 1 < a1 || v15 >= v29)
        {
          goto LABEL_52;
        }

        v16 = *(v13 + v6 - v14);
        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_59;
        }

        v18 = v17;
        v19 = __DataStorage._offset.getter();
        v20 = v15 - v19;
        if (__OFSUB__(v15, v19))
        {
          goto LABEL_54;
        }
      }

      v8 = *(v18 + v20);
      v5 = v28;
LABEL_13:
      *(v11 + 56) = &type metadata for Int;
      *(v11 + 64) = &protocol witness table for Int;
      *(v11 + 32) = v8 | (v16 << 8);
      v9._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v9);

      v6 = v10;
      if (v10 >= v5)
      {
        return v36;
      }
    }
  }

  return result;
}

uint64_t InterfaceIdentifier.customMirror.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v9 = v12 - v8;
  v12[2] = a1;
  v12[3] = a2;
  v12[1] = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v4);
  sub_10000AB0C(a1, a2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_100233C38(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058FC10, &qword_100484170);
  __chkstk_darwin();
  v7 = v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v12[2] = v9;
  v12[3] = v8;
  v12[1] = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v3 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10000AB0C(v9, v8);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t InterfaceIdentifier.init(_:)(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v3 = v3;
LABEL_12:
    if (v3 == 8)
    {
      return result;
    }
  }

  sub_100017554(result, a2);
  return 0;
}

void *sub_100233EA4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = InterfaceIdentifier.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void *sub_100233ED0(void *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    goto LABEL_13;
  }

  v4 = v18;
  v5 = v19;
  sub_100031694(v17, v18);
  result = UnkeyedDecodingContainer.decodeData(with:)(8, v4, v5);
  v3 = result;
  v8 = v7;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_12;
    }

    v11 = result[2];
    v10 = result[3];
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (!v12)
    {
      if (v13 == 8)
      {
        goto LABEL_9;
      }

LABEL_12:
      v14 = type metadata accessor for DecodingError();
      swift_allocError();
      v16 = v15;
      v20 = *(sub_10005DC58(&qword_10058CE38, &unk_100483C40) + 48);
      *v16 = &type metadata for Data;
      sub_100029B34(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.valueNotFound(_:), v14);
      swift_willThrow();
      sub_1000124C8(v3, v8);
      sub_100002A00(v17);
LABEL_13:
      sub_100002A00(a1);
      return v3;
    }

    __break(1u);
  }

  else
  {
    if (!v9)
    {
      if (BYTE6(v7) != 8)
      {
        goto LABEL_12;
      }

LABEL_9:
      sub_100002A00(v17);
      sub_100002A00(a1);
      return v3;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 8)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002340FC()
{
  result = qword_100592008;
  if (!qword_100592008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InterfaceIdentifier, &type metadata for InterfaceIdentifier, v0, v1);
    atomic_store(result, &qword_100592008);
  }

  return result;
}

unint64_t ExtendableOptionSet.formIntersection(_:)(uint64_t (*a1)(_BYTE *, void), uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = *(v17[0] + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v18 + 16);

  if (v9 < v8)
  {
    dispatch thunk of RawRepresentable.rawValue.getter();
    v10 = *(v17[0] + 16);

    dispatch thunk of RawRepresentable.rawValue.getter();
    v11 = *(v18 + 16);

    v12 = (*(a3 + 24))(v17, a2, a3);
    sub_100235DAC((v10 - v11));
    v12(v17, 0);
  }

  dispatch thunk of RawRepresentable.rawValue.getter();
  v13 = *(v17[0] + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v14 = *(v18 + 16);

  if (v13)
  {
    result = 0;
    do
    {
      if (v14 == result)
      {
        break;
      }

      v16 = result + 1;
      sub_100235DD4(result, result, v4, a1, a2, a3);
      result = v16;
    }

    while (v13 != v16);
  }

  return result;
}

uint64_t sub_100234374(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = *(v22[0] + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v23 + 16);

  if (v10)
  {
    v12 = 0;
    do
    {
      if (v11 == v12)
      {
        break;
      }

      v13 = v12 + 1;
      a4(v12, v12, v6, a1, a2, a3);
      v12 = v13;
    }

    while (v10 != v13);
  }

  dispatch thunk of RawRepresentable.rawValue.getter();
  v14 = *(v22[0] + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v23 + 16);

  if (v14 < v15)
  {
    dispatch thunk of RawRepresentable.rawValue.getter();
    v17 = v23;
    dispatch thunk of RawRepresentable.rawValue.getter();

    dispatch thunk of RawRepresentable.rawValue.getter();

    dispatch thunk of RawRepresentable.rawValue.getter();
    v18 = *(v22[4] + 16);

    v19 = *(v23 + 16);
    if (v19 < v18)
    {
      __break(1u);
    }

    else
    {
      v20 = (2 * v19) | 1;
      v21 = (*(a3 + 24))(v22, a2, a3);
      sub_100234FC0(v17, v17 + 32, v18, v20);
      return v21(v22, 0);
    }
  }

  return result;
}

unint64_t ExtendableOptionSet.init(bitOffset:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = result >> 3;
    v5 = (result >> 3) + 1;
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v6 + 16) = v5;
    *(v6 + 32) = 0;
    v7 = v6 + 32;
    if (v3 >= 8)
    {
      bzero((v6 + 33), v4);
    }

    *(v7 + v4) |= 1 << (v3 & 7);
    return dispatch thunk of OptionSet.init(rawValue:)();
  }

  return result;
}

uint64_t static OptionSet<>.withValue<A>(_:at:withBitCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v49 = a1;
  v46[7] = a9;
  v46[9] = a6;
  v46[8] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v46[6] = v46 - v17;
  v46[2] = *(*(*(a7 + 8) + 24) + 16);
  swift_getAssociatedTypeWitness();
  __chkstk_darwin();
  v18 = *(a5 - 8);
  __chkstk_darwin();
  v48 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = v46 - v22;
  v47 = a2;
  v23 = __OFADD__(a2, a3);
  v24 = a2 + a3;
  if (v23)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v46[1] = v20;
  v46[3] = v9;
  v46[4] = AssociatedTypeWitness;
  v46[5] = a8;
  if (dispatch thunk of static FixedWidthInteger.bitWidth.getter() < v24)
  {
    goto LABEL_3;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

  if (a3)
  {
    v27 = 0;
    v28 = 0;
    v29 = v49;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v27 < 0x40)
      {
        v28 |= 1 << v27;
      }

      if (v21 == a3)
      {
        goto LABEL_14;
      }

      ++v27;
      if (v21 >= a3)
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_13:
  v28 = 0;
  v29 = v49;
LABEL_14:
  v30 = v50;
  (*(v18 + 16))(v50, v29, a5);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_29;
  }

  v51 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      sub_100086E78();
      v10 = v48;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      goto LABEL_22;
    }
  }

  else
  {
    v31 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v32 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v31)
    {
      if (v32 > 64)
      {
        sub_100086E78();
        v10 = v48;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v30 = v50;
LABEL_22:
        v33 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v18 + 8))(v10, a5);
        if (v33)
        {
          goto LABEL_58;
        }

        goto LABEL_29;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v10 = v48;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v30 = v50;
      v34 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v18 + 8))(v10, a5);
      if (v34)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    else
    {
      if (v32 >= 64)
      {
        v30 = v50;
        goto LABEL_29;
      }

      v30 = v50;
    }
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_29:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v51 = 0x7FFFFFFFFFFFFFFFLL;
    v35 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v36 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v35 & 1) == 0)
    {
      break;
    }

    if (v36 < 65)
    {
      goto LABEL_38;
    }

LABEL_32:
    sub_100086E78();
    v37 = v48;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v38 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v18 + 8))(v37, a5);
    if (v38)
    {
      __break(1u);
LABEL_34:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_39;
  }

  if (v36 >= 64)
  {
    goto LABEL_32;
  }

LABEL_38:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_39:
  v39 = dispatch thunk of BinaryInteger._lowWord.getter();
  v40 = v30;
  v41 = *(v18 + 8);
  v41(v40, a5);
  v10 = v39 & v28;
  LOBYTE(v39) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v42 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v39 & 1) == 0)
  {
    if (v42 > 63)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_3;
    }

    goto LABEL_43;
  }

  if (v42 <= 64)
  {
LABEL_43:
    if (v10 != dispatch thunk of BinaryInteger._lowWord.getter())
    {
      goto LABEL_3;
    }

LABEL_47:
    v21 = v47;
    if (v47 <= -65)
    {
LABEL_48:
      v45 = v10 >> 63;
LABEL_54:
      v51 = v45;
      sub_100086E78();
      dispatch thunk of BinaryInteger.init<A>(_:)();
      return dispatch thunk of OptionSet.init(rawValue:)();
    }

    if (v47 > 64)
    {
      v45 = 0;
      goto LABEL_54;
    }

    if ((v47 & 0x8000000000000000) == 0)
    {
      v45 = v10 << v47;
      if (v47 == 64)
      {
        v45 = 0;
      }

      goto LABEL_54;
    }

LABEL_59:
    if (v21 != -64)
    {
      v45 = v10 >> -v47;
      goto LABEL_54;
    }

    goto LABEL_48;
  }

LABEL_46:
  v51 = v10;
  sub_100086E78();
  v43 = v48;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41(v43, a5);
  if (v44)
  {
    goto LABEL_47;
  }

LABEL_3:
  sub_10000B02C();
  swift_allocError();
  *v25 = 0;
  *(v25 + 8) = 0;
  *(v25 + 16) = 2;
  return swift_willThrow();
}

void *sub_100234D74(void *result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v2 = result;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2, a2);
    return v4;
  }

  return result;
}

uint64_t static OptionSet<>.withValue<A>(_:at:withBitCount:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v19 = a5;
  v20 = a7;
  v17 = a9;
  v18 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v15 = &v17 - v14;
  dispatch thunk of RawRepresentable.rawValue.getter();
  static OptionSet<>.withValue<A>(_:at:withBitCount:)(v15, a1, a2, v18, AssociatedTypeWitness, v19, v17, v20, a8);
  return (*(v13 + 8))(v15, AssociatedTypeWitness);
}

uint64_t static OptionSet<>.withBool(_:at:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = a1 & 1;
  v11 = sub_100148E98();
  return static OptionSet<>.withValue<A>(_:at:withBitCount:)(&v13, a2, 1uLL, a3, &type metadata for Int, a4, v11, a5, a6);
}

void sub_100234FC0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_100115F68(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + v15 + 32), (a2 + a3), v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}
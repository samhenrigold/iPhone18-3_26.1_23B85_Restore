void *sub_1C939D528()
{
  v2 = *(v0 + 16) + 1;

  return sub_1C93A4F7C(0, v2, 1, v0);
}

uint64_t sub_1C939D54C()
{

  return sub_1C93A86A8(v1, v0);
}

uint64_t sub_1C939D594@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t sub_1C939D59C(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C939D634(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void *sub_1C939D668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v44 = a5;
  v45 = a1;
  v47 = a3;
  v48 = a4;
  v46 = a2;
  v41 = a6;
  v43 = type metadata accessor for Entitlements.Error(0);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[0] = MEMORY[0x1E69E7CC0];
  sub_1C939DC14(0, 5, 0);
  v7 = 0;
  v8 = v49[0];
  v9 = "application-identifier";
  v10 = "iner-environment";
  v11 = "nal.allow-custom-bundle-ids";
  v12 = "-authorization-ui";
  do
  {
    v13 = &unk_1C9405EC0;
    v14 = 0xD000000000000016;
    switch(byte_1F48EB7E8[v7 + 32])
    {
      case 1:
        v14 = 0xD000000000000030;
        v13 = v9;
        break;
      case 2:
        v14 = 0xD00000000000003BLL;
        v13 = v10;
        break;
      case 3:
        v14 = 0xD000000000000041;
        v13 = v11;
        break;
      case 4:
        v14 = 0xD000000000000038;
        v13 = v12;
        break;
      default:
        break;
    }

    v49[0] = v8;
    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      v39 = v10;
      v40 = v9;
      v37 = v12;
      v38 = v11;
      sub_1C939DC14((v15 > 1), v16 + 1, 1);
      v12 = v37;
      v11 = v38;
      v10 = v39;
      v9 = v40;
      v8 = v49[0];
    }

    ++v7;
    *(v8 + 16) = v16 + 1;
    v17 = v8 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13 | 0x8000000000000000;
  }

  while (v7 != 5);
  v18 = v54;
  v19 = _s17CloudCoreInternal9_SecurityV12entitlements10auditToken4keysSDySSs8Sendable_pGSo0F8_token_ta_SaySSGtSo10CFErrorRefaYKF(v45, v46, v47, v48);
  if (v18)
  {

    if (qword_1EE02B450 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1C93D9664(v20, qword_1EE02B458);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      type metadata accessor for CFError(0);
      sub_1C93F7530(&qword_1EE02AD70, type metadata accessor for CFError, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v26 = v21;
      v27 = v21;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v28;
      *v25 = v28;
      _os_log_impl(&dword_1C939C000, v22, v23, "Error getting entitlements for secTask: %@", v24, 0xCu);
      sub_1C93A4838(v25, &qword_1EC39B3A0, &qword_1C9404BE0);
      MEMORY[0x1CCA884B0](v25, -1, -1);
      MEMORY[0x1CCA884B0](v24, -1, -1);
    }

    *v44 = v21;
    swift_storeEnumTagMultiPayload();
    sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error, protocol conformance descriptor for Entitlements.Error);
    return swift_willThrowTypedImpl();
  }

  else
  {

    result = sub_1C939E08C(v19, v42, v49);
    v30 = v49[1];
    v31 = v50;
    v32 = v51;
    v33 = v52;
    v34 = v53;
    v35 = v41;
    *v41 = v49[0];
    v35[1] = v30;
    *(v35 + 16) = v31;
    *(v35 + 17) = v32;
    *(v35 + 18) = v33;
    *(v35 + 19) = v34;
  }

  return result;
}

void *_s17CloudCoreInternal12EntitlementsV10auditTokenACSo0E8_token_ta_tAC5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for Entitlements.Error(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1C93A59A8();
  v16 = v15 - v14;
  result = sub_1C939D668(a1, a2, a3, a4, (v15 - v14), v24);
  if (v6)
  {
    sub_1C93F7BAC();
    return sub_1C93F7630(v16, a5, v18);
  }

  else
  {
    v19 = v24[1];
    v20 = v25;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    *a6 = v24[0];
    *(a6 + 8) = v19;
    *(a6 + 16) = v20;
    *(a6 + 17) = v21;
    *(a6 + 18) = v22;
    *(a6 + 19) = v23;
  }

  return result;
}

uint64_t type metadata accessor for Entitlements.Error(uint64_t a1)
{
  result = qword_1EE02BE68;
  if (!qword_1EE02BE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1C939DC14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C939DC34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C939DC34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C93A1890(&qword_1EC39B348, &qword_1C9403100);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id _s17CloudCoreInternal9_SecurityV12entitlements10auditToken4keysSDySSs8Sendable_pGSo0F8_token_ta_SaySSGtSo10CFErrorRefaYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v5 = SecTaskCreateWithAuditToken(v4, &token);
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  *token.val = 0;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = SecTaskCopyValuesForEntitlements(v6, isa, &token);

  v9 = *token.val;
  if (*token.val)
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93DA48C();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1C93D9664(v10, qword_1EE02B458);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      type metadata accessor for CFError(0);
      sub_1C93F4F4C();
      sub_1C93F4D30(v16, v17, MEMORY[0x1E6969E70]);
      swift_allocError();
      *v18 = v11;
      v19 = v11;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v20;
      *v15 = v20;
      _os_log_impl(&dword_1C939C000, v12, v13, "Error getting entitlements for secTask: %@", v14, 0xCu);
      sub_1C93F4D78(v15);
      MEMORY[0x1CCA884B0](v15, -1, -1);
      MEMORY[0x1CCA884B0](v14, -1, -1);
    }

    type metadata accessor for CFError(0);
    sub_1C93F4F4C();
    sub_1C93F4D30(v21, v22, MEMORY[0x1E6969E70]);
    swift_willThrowTypedImpl();
  }

  else
  {
    if (v8)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v23 = v8;
        sub_1C93A1890(&qword_1EC39B670, &qword_1C9404BE8);
        static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    sub_1C93A1890(&qword_1EC39B670, &qword_1C9404BE8);
    v11 = Dictionary.init(dictionaryLiteral:)();
  }

  return v11;
}

uint64_t sub_1C939E08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = 1;
  sub_1C939E898(0xD000000000000016, 0x80000001C9405EC0, a1, &v33);
  if (!v34)
  {

    sub_1C93A4838(&v33, &qword_1EC39B6B8, &qword_1C9404EA0);
    *a2 = 0;
    type metadata accessor for Entitlements.Error(0);
    swift_storeEnumTagMultiPayload();
    sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error, protocol conformance descriptor for Entitlements.Error);
    return swift_willThrowTypedImpl();
  }

  sub_1C939EA84(&v33, v35);
  sub_1C939E974(v35, &v33);
  v6 = sub_1C93A1890(&qword_1EC39B670, &qword_1C9404BE8);
  v7 = MEMORY[0x1E69E6158];
  v38 = v6;
  if ((swift_dynamicCast() & 1) == 0)
  {

    *a2 = 0;
    *(a2 + 8) = v7;
    sub_1C939E974(v35, a2 + 16);
    type metadata accessor for Entitlements.Error(0);
    swift_storeEnumTagMultiPayload();
    sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error, protocol conformance descriptor for Entitlements.Error);
    swift_willThrowTypedImpl();
    return sub_1C939EA94(v35);
  }

  v36 = v31;
  sub_1C939E898(0xD000000000000030, 0x80000001C9405EE0, a1, &v31);
  if (!v32)
  {
    v29 = a3;
    v28 = a2;
    sub_1C93A4838(&v31, &qword_1EC39B6B8, &qword_1C9404EA0);
    goto LABEL_14;
  }

  sub_1C939EA84(&v31, &v33);
  sub_1C939E974(&v33, &v31);
  if ((swift_dynamicCast() & 1) == 0)
  {

    *a2 = 1;
    *(a2 + 8) = v7;
    sub_1C939E974(&v33, a2 + 16);
    type metadata accessor for Entitlements.Error(0);
LABEL_30:
    swift_storeEnumTagMultiPayload();
    sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error, protocol conformance descriptor for Entitlements.Error);
    swift_willThrowTypedImpl();
    goto LABEL_32;
  }

  v29 = a3;
  v8 = String.lowercased()();
  v9 = v8._countAndFlagsBits == 0x69746375646F7270 && v8._object == 0xEA00000000006E6FLL;
  v28 = a2;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v8._countAndFlagsBits == 0x6D706F6C65766564 && v8._object == 0xEB00000000746E65)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {

        *&v31 = 0;
        *(&v31 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        *&v31 = 0xD00000000000002ELL;
        *(&v31 + 1) = 0x80000001C9406B70;
        MEMORY[0x1CCA87780]();

        v27 = v31;
        *a2 = 1;
        *(a2 + 8) = v27;
        type metadata accessor for Entitlements.Error(0);
        goto LABEL_30;
      }
    }

    sub_1C939EA94(&v33);

    LOBYTE(v37) = 1;
    goto LABEL_14;
  }

  sub_1C939EA94(&v33);

  LOBYTE(v37) = 0;
LABEL_14:
  sub_1C93A1890(&qword_1EC39B6C0, &qword_1C9404EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C93FDC70;
  *(inited + 32) = 2;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = 3;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 4;
  v12 = 0;
  *(inited + 72) = swift_getKeyPath();
  while (1)
  {
    v13 = *(inited + v12 + 32);
    v14 = 0x80000001C9405EC0;
    v15 = 0xD000000000000016;
    switch(v13)
    {
      case 1:
        v15 = 0xD000000000000030;
        v14 = 0x80000001C9405EE0;
        break;
      case 2:
        v15 = 0xD00000000000003BLL;
        v14 = 0x80000001C9405F20;
        break;
      case 3:
        v15 = 0xD000000000000041;
        v14 = 0x80000001C9405F60;
        break;
      case 4:
        v15 = 0xD000000000000038;
        v14 = 0x80000001C9405FB0;
        break;
      default:
        break;
    }

    if (!*(a1 + 16))
    {

      goto LABEL_27;
    }

    v16 = sub_1C939E8FC(v15, v14);
    v18 = v17;

    if ((v18 & 1) == 0)
    {

      goto LABEL_27;
    }

    sub_1C939E974(*(a1 + 56) + 32 * v16, &v31);
    sub_1C939EA84(&v31, &v33);
    sub_1C939E974(&v33, &v31);
    sub_1C93F7B6C(0, &qword_1EE02B2F0, 0x1E696AEC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C939E974(&v33, &v31);
      sub_1C93F7B6C(0, &qword_1EE02B2F8, 0x1E696AD98);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }
    }

    v19 = [v30 BOOLValue];

    LOBYTE(v31) = v19;
    swift_setAtWritableKeyPath();

    sub_1C939EA94(&v33);
LABEL_27:
    v12 += 16;
    if (v12 == 48)
    {
      sub_1C939EA94(v35);

      swift_setDeallocating();
      result = sub_1C939EAE0();
      v20 = *(&v36 + 1);
      v21 = v37;
      v22 = BYTE1(v37);
      v23 = BYTE2(v37);
      v24 = HIBYTE(v37);
      *v29 = v36;
      *(v29 + 8) = v20;
      *(v29 + 16) = v21;
      *(v29 + 17) = v22;
      *(v29 + 18) = v23;
      *(v29 + 19) = v24;
      return result;
    }
  }

  swift_setDeallocating();
  sub_1C939EAE0();

  *v28 = v13;
  *(v28 + 8) = MEMORY[0x1E69E6370];
  sub_1C939E974(&v33, v28 + 16);
  type metadata accessor for Entitlements.Error(0);
  swift_storeEnumTagMultiPayload();
  sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error, protocol conformance descriptor for Entitlements.Error);
  swift_willThrowTypedImpl();

LABEL_32:
  sub_1C939EA94(&v33);
  sub_1C939EA94(v35);
}

double sub_1C939E898@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1C939E8FC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1C939E974(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_1C939E8FC(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1C939E9D0(a1, a2, v4);
}

uint64_t sub_1C939E974(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C939E9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_1C939EA84(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C939EA94(void *a1)
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

uint64_t sub_1C939EAE0()
{
  sub_1C93A1890(&qword_1EC39B6C8, &unk_1C9404F10);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

__n128 sub_1C939EB44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C939EB58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t AuthenticatedSession.Configuration.Encryption.ServiceIdentity.payload.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1C939EBDC(v2, v3);
}

uint64_t sub_1C939EB90(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C939EBA8(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1C939EBDC(a1, a2);
  }

  return a1;
}

uint64_t AnySessionConfiguration.encryption.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C939EBA8(v2, v3);
}

uint64_t AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1C939EBDC(v2, v3);
}

__n128 sub_1C939EBD0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C939EBDC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1C939EBF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 16))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 2;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C939EC44(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C939EC60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C939EC84(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t AnySessionConfiguration.account.getter@<X0>(void *a1@<X8>)
{
  sub_1C939ED08();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 56), 0x60uLL);
  return sub_1C939EE74(v8, &v7);
}

void *sub_1C939ED90(void *a1)
{

  return sub_1C93A4F7C(a1, v1, 1, v2);
}

uint64_t sub_1C939EDD4(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C939EE00(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_1C939EE4C()
{

  JUMPOUT(0x1CCA87780);
}

uint64_t sub_1C939EE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39AA60, &qword_1C93FD270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C939EEE4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C939EF14(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C939EF68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id AuthenticatedSession.Configuration.Account.accessGrantedVia.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_1C939F004(v2, v3, v4);
}

id AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C939F004(v2, v3, v4);
}

id sub_1C939F004(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1C939F07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionID(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_1C93A4810(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v8 = a1 + *(a3 + 36);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1C939F168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SessionID(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v9 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v10 = a1 + *(a4 + 36);
  }

  return sub_1C93A1710(v10, a2, a2, v9);
}

uint64_t sub_1C939F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1C93A928C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1C939F3F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C939F454()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C939F494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionID(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_1C93A4810(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1C939F580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SessionID(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v9 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v10 = a1 + *(a4 + 28);
  }

  return sub_1C93A1710(v10, a2, a2, v9);
}

uint64_t sub_1C939F728()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C939F784()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C939F7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionID(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_1C93A4810(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 28) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1C939F8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SessionID(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v10 = a1 + *(a4 + 36);
  }

  return sub_1C93A1710(v10, a2, a2, v9);
}

uint64_t sub_1C939FEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_1C93A4810(a1, a2, v4);
}

uint64_t sub_1C939FEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_1C93A1710(a1, a2, a2, v4);
}

uint64_t sub_1C939FFA8()
{
  v1 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C939D47C();
  v9 = v8;
  v10 = *(v8 + 80);
  v12 = (v6 + v10 + 40) & ~v10;
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for UUID();
  sub_1C939D430();
  (*(v14 + 8))(v0 + v4);
  sub_1C939EA94((v0 + v6));
  (*(v9 + 8))(v0 + v12, AssociatedTypeWitness);
  if (*(v0 + v13))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v13 + 16, v3 | v10 | 7);
}

uint64_t sub_1C93A021C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C93DB02C(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C93A030C(uint64_t a1, uint64_t a2)
{
  sub_1C93E1AD8();
  v4 = type metadata accessor for Date();

  return sub_1C93A4810(v2, a2, v4);
}

uint64_t sub_1C93A0350(uint64_t a1, uint64_t a2)
{
  sub_1C93E1AD8();
  v4 = type metadata accessor for Date();

  return sub_1C93A1710(v2, a2, a2, v4);
}

uint64_t sub_1C93A039C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C93E1AD8();
  v7 = type metadata accessor for DeviceDate(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
LABEL_10:

    return sub_1C93A4810(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
    v9 = v3 + *(a3 + 36);
    goto LABEL_10;
  }

  v10 = *(v3 + *(a3 + 24) + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

uint64_t sub_1C93A0484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C93E1AD8();
  result = type metadata accessor for DeviceDate(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
    v11 = v4 + *(a4 + 36);
  }

  return sub_1C93A1710(v11, a2, a2, v10);
}

uint64_t sub_1C93A055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
    v9 = a1 + *(a3 + 20);

    return sub_1C93A4810(v9, a2, v8);
  }
}

uint64_t sub_1C93A05E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
    v8 = v5 + *(a4 + 20);

    return sub_1C93A1710(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C93A06F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OSLogPrivacy();
    v9 = a1 + *(a3 + 24);

    return sub_1C93A4810(v9, a2, v8);
  }
}

uint64_t sub_1C93A0778(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSLogPrivacy();
    v8 = v5 + *(a4 + 24);

    return sub_1C93A1710(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C93A0860(uint64_t *a1)
{
  v1 = type metadata accessor for CloudCoreThrowingStream.Iterator(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable(protocol conformance descriptor for CloudCoreThrowingStream<A, B>.Iterator, v1);
}

uint64_t sub_1C93A08AC()
{
  v1 = sub_1C939D618();
  v5 = *(type metadata accessor for CloudCoreThrowingStream.Continuation(v1, v2, v3, v4) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = *(v5 + 64);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D618();
  type metadata accessor for AsyncThrowingStream.Continuation();
  sub_1C939D430();
  (*(v9 + 8))(v0 + v7);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v6 | 7);
}

uint64_t sub_1C93A09A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_1C93A09EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C93A0A00(uint64_t a1, uint64_t a2)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C93E5F20();
  v4 = type metadata accessor for AsyncThrowingStream.Continuation();

  return sub_1C93A4810(a1, a2, v4);
}

uint64_t sub_1C93A0A74(uint64_t a1, uint64_t a2)
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C93E5F20();
  v4 = type metadata accessor for AsyncThrowingStream.Continuation();

  return sub_1C93A1710(a1, a2, a2, v4);
}

uint64_t sub_1C93A0B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);

  return sub_1C93A4810(a1, a2, v4);
}

uint64_t sub_1C93A0BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);

  return sub_1C93A1710(a1, a2, a2, v4);
}

uint64_t sub_1C93A0C58()
{
  sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  sub_1C939EE34();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v5, v0);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

uint64_t sub_1C93A0D18()
{
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  v1 = sub_1C939D618();
  v5 = *(type metadata accessor for Task.CancelHandle(v1, v2, v3, v4) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 48) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();

  v9 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  (*(*(v9 - 8) + 8))(v0 + v7, v9);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v6 | 7);
}

uint64_t sub_1C93A0E24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C93A0E64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for ExponentialBackoff.State(255, *a1, a1[1], a4);
  return type metadata accessor for Mutex();
}

uint64_t sub_1C93A0EEC()
{
  v1 = sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  sub_1C939D47C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C93A0FB4()
{
  v1 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  sub_1C939ED4C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  sub_1C939D430();
  (*(v7 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

uint64_t sub_1C93A1098()
{
  swift_weakDestroy();
  sub_1C93F4654();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C93A10D0(_OWORD *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  type metadata accessor for ExponentialNetworkBackoff.State(255, v3);
  return type metadata accessor for Mutex();
}

uint64_t sub_1C93A112C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);

  return sub_1C93A4810(a1, a2, v4);
}

uint64_t sub_1C93A1180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);

  return sub_1C93A1710(a1, a2, a2, v4);
}

uint64_t sub_1C93A12EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39AC80, &qword_1C93FDDA0);
  v5 = sub_1C93A4810(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C93A1340(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C93A1890(&qword_1EC39AC80, &qword_1C93FDDA0);

  return sub_1C93A1710(a1, v5, a3, v6);
}

uint64_t sub_1C93A1478(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C93A14F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C93A152C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93A14CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t AnySessionAcquiredInfo.init(sessionID:privilegedInfoHash:user:userPersonaUniqueString:keySyncRequestIdentityPublicKeyIDHash:previousInvalidationContext:serviceName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v34 = a4[2];
  v33 = *(a4 + 6);
  v37 = *a7;
  v36 = *(a7 + 2);
  v17 = type metadata accessor for AnySessionAcquiredInfo(0);
  sub_1C93A5A20(v17);
  v19 = (a9 + v18);
  v21 = a9 + v20;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0xF000000000000000;
  v23 = *(v22 + 36);
  type metadata accessor for SessionInvalidationContext(0);
  v31 = a4[1];
  v32 = *a4;
  sub_1C93A5B90();
  sub_1C93A1710(v24, v25, v26, v27);
  v28 = (a9 + *(v17 + 40));
  sub_1C93A594C();
  sub_1C93A5068(a1);
  v29 = (a9 + *(v17 + 20));
  *v29 = a2;
  v29[1] = a3;
  sub_1C93A1738(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48));
  *v11 = v32;
  *(v11 + 16) = v31;
  *(v11 + 32) = v34;
  *(v11 + 48) = v33;
  *v19 = a5;
  v19[1] = a6;
  sub_1C93A17AC(*v21, *(v21 + 8), *(v21 + 16));
  *v21 = v37;
  *(v21 + 16) = v36;
  result = sub_1C93A1820(a8, a9 + v23);
  *v28 = a10;
  v28[1] = a11;
  return result;
}

uint64_t type metadata accessor for AnySessionAcquiredInfo(uint64_t a1)
{
  result = qword_1EE02C4F8;
  if (!qword_1EE02C4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C93A1738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_1C93A1798(a4, a5);
  }
}

uint64_t sub_1C93A1798(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void sub_1C93A17AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    sub_1C93A17C8(a2, a3);
  }
}

uint64_t sub_1C93A17C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1C93A1820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93A1890(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t AnySessionAcquiredInfo.privilegedInfoHash.getter()
{
  type metadata accessor for AnySessionAcquiredInfo(0);
  v0 = sub_1C93A5A40();
  sub_1C93A1988(v0, v1);
  return sub_1C93A5A40();
}

uint64_t sub_1C93A1988(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t AnySessionAcquiredInfo.privilegedInfoHash.setter()
{
  v3 = v1 + *(sub_1C93A5B0C() + 20);
  result = sub_1C93A17C8(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t AnySessionAcquiredInfo.privilegedInfoHash.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for AnySessionAcquiredInfo(v0);
  return sub_1C93A5AA4();
}

void AnySessionAcquiredInfo.user.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AnySessionAcquiredInfo(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  sub_1C93A1ABC(v4, v5, v6, v7, v8, v9, v10);
}

void sub_1C93A1ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {

    sub_1C93A1B1C(a4, a5);
  }
}

uint64_t sub_1C93A1B1C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

__n128 AnySessionAcquiredInfo.user.setter(uint64_t a1)
{
  v7 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = v1 + *(type metadata accessor for AnySessionAcquiredInfo(0) + 24);
  sub_1C93A1738(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v5;
  result = v7;
  *(v4 + 32) = v7;
  *(v4 + 48) = v3;
  return result;
}

uint64_t AnySessionAcquiredInfo.user.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for AnySessionAcquiredInfo(v0);
  return sub_1C93A5AA4();
}

uint64_t AnySessionAcquiredInfo.userPersonaUniqueString.getter()
{
  type metadata accessor for AnySessionAcquiredInfo(0);

  return sub_1C93A5A40();
}

uint64_t AnySessionAcquiredInfo.userPersonaUniqueString.setter()
{
  v3 = (v1 + *(sub_1C93A5B0C() + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AnySessionAcquiredInfo.userPersonaUniqueString.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for AnySessionAcquiredInfo(v0);
  return sub_1C93A5AA4();
}

uint64_t AnySessionAcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AnySessionAcquiredInfo(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_1C93A1CEC(v4, v5, v6);
}

uint64_t sub_1C93A1CEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_1C93A1988(a2, a3);
  }

  return result;
}

__n128 AnySessionAcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for AnySessionAcquiredInfo(0) + 32);
  sub_1C93A17AC(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t AnySessionAcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for AnySessionAcquiredInfo(v0);
  return sub_1C93A5AA4();
}

uint64_t AnySessionAcquiredInfo.previousInvalidationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AnySessionAcquiredInfo(0) + 36);

  return sub_1C93A1DE4(v3, a1);
}

uint64_t sub_1C93A1DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AnySessionAcquiredInfo.previousInvalidationContext.setter()
{
  v2 = sub_1C93A59DC();
  v3 = v1 + *(type metadata accessor for AnySessionAcquiredInfo(v2) + 36);

  return sub_1C93A1820(v0, v3);
}

uint64_t AnySessionAcquiredInfo.previousInvalidationContext.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for AnySessionAcquiredInfo(v0);
  return sub_1C93A5AA4();
}

uint64_t AnySessionAcquiredInfo.serviceName.getter()
{
  type metadata accessor for AnySessionAcquiredInfo(0);

  return sub_1C93A5A40();
}

uint64_t AnySessionAcquiredInfo.serviceName.setter()
{
  v3 = (v1 + *(sub_1C93A5B0C() + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AnySessionAcquiredInfo.serviceName.modify()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for AnySessionAcquiredInfo(v0);
  return sub_1C93A5AA4();
}

void static AnySessionAcquiredInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_1C93A5B40();
  v4 = sub_1C93A59E8();
  v5 = type metadata accessor for SessionInvalidationContext(v4);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C93A59A8();
  v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v7);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v161 - v9;
  v11 = sub_1C93A1890(&qword_1EC39A9F8, &qword_1C93FCE08);
  sub_1C939D430();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v12);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v13 = type metadata accessor for AnySessionAcquiredInfo(0);
  if ((MEMORY[0x1CCA874A0](*(v3 + *(v13 + 20)), *(v3 + *(v13 + 20) + 8), *(v2 + *(v13 + 20)), *(v2 + *(v13 + 20) + 8)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v167 = v11;
  v168 = v5;
  v166 = v10;
  v172 = v13;
  v14 = *(v13 + 24);
  v170 = v3;
  v15 = *(v3 + v14);
  v16 = *(v3 + v14 + 8);
  v17 = *(v3 + v14 + 16);
  v18 = *(v3 + v14 + 24);
  v19 = *(v3 + v14 + 32);
  v20 = *(v3 + v14 + 40);
  v21 = *(v3 + v14 + 48);
  v171 = v2;
  v22 = (v2 + v14);
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  v28 = v22[4];
  v27 = v22[5];
  v29 = v22[6];
  v175 = v27;
  v176 = v29;
  v173 = v18;
  v174 = v17;
  v177 = v15;
  if (!v16)
  {
    sub_1C93A5BA8();
    *(v53 - 256) = v20;
    v54 = v20;
    v56 = v55;
    sub_1C93A1ABC(v57, v58, v59, v60, v61, v54, v55);
    if (!v24)
    {
      sub_1C93A5BC8();
      sub_1C93A1ABC(v23, 0, v25, v26, v28, v175, v176);
      sub_1C93A5BA8();
      sub_1C93A1738(v81, v82, v83, v84, v85, *(v80 - 256), v56);
      goto LABEL_13;
    }

    v62 = v23;
    sub_1C93A5A4C(v23, v24);
LABEL_10:
    sub_1C93A5BA8();
    sub_1C93A1738(v75, v76, v77, v78, v79, *(v74 - 256), v56);
    sub_1C93A1738(v62, v24, v172, v26, v23, v28, v25);
    goto LABEL_11;
  }

  v184[0] = v15;
  v184[1] = v16;
  v184[2] = v17;
  v185 = v18;
  v186 = v19;
  v187 = v20;
  v188 = v21;
  if (!v24)
  {
    v63 = v20;
    v64 = v20;
    v56 = v21;
    sub_1C93A1ABC(v15, v16, v17, v18, v19, v64, v21);
    v162 = v23;
    sub_1C93A5A4C(v23, 0);
    sub_1C93A5BA8();
    *(v65 - 256) = v63;
    v66 = v63;
    v62 = v162;
    sub_1C93A1ABC(v67, v68, v69, v70, v71, v66, v56);

    v72 = sub_1C93A5ADC();
    sub_1C93A1798(v72, v73);

    goto LABEL_10;
  }

  sub_1C93A5BC8();
  v178[0] = v23;
  v178[1] = v24;
  v179 = v25 & 1;
  v180 = v26;
  v181 = v28;
  v30 = v28;
  v31 = v175;
  v32 = v176;
  v182 = v175;
  v183 = v176;
  v169 = v24;
  v165 = v19;
  v33 = v19;
  v35 = v34;
  sub_1C93A1ABC(v37, v16, v36, v38, v33, v20, v34);
  sub_1C93A1ABC(v23, v169, v25, v26, v30, v31, v32);
  sub_1C93A5B9C();
  v39 = v165;
  v40 = v35;
  sub_1C93A1ABC(v41, v42, v43, v44, v165, v20, v35);
  LOBYTE(v35) = static AuthenticatedSession.ResolvedUser.== infix(_:_:)(v184, v178);
  v46 = v180;
  v45 = v181;

  sub_1C93A1798(v46, v45);

  v47 = v185;
  v48 = v186;

  sub_1C93A1798(v47, v48);

  sub_1C93A5B9C();
  sub_1C93A1738(v49, v50, v51, v52, v39, v20, v40);
  if ((v35 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v86 = v171;
  v87 = v172;
  v88 = v170;
  sub_1C93A5BDC();
  if (v89)
  {
    if (!v90)
    {
      goto LABEL_11;
    }

    v93 = *v91 == *v92 && v89 == v90;
    if (!v93 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v90)
  {
    goto LABEL_11;
  }

  v94 = *(v87 + 32);
  v95 = *(v88 + v94);
  v96 = *(v88 + v94 + 16);
  v97 = (v86 + v94);
  v99 = *v97;
  v98 = v97[1];
  v100 = v97[2];
  if (v96 >> 60 == 15)
  {
    v101 = sub_1C939ECF8();
    sub_1C93A1CEC(v101, v102, v103);
    v104 = sub_1C93A58F0();
    sub_1C93A1CEC(v104, v105, v106);
    if (v100 >> 60 == 15)
    {
      v107 = sub_1C939ECF8();
      sub_1C93A17AC(v107, v108, v109);
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  v113 = sub_1C939ECF8();
  if (v116 > 0xE)
  {
    sub_1C93A1CEC(v113, v114, v115);
    v117 = sub_1C93A58F0();
    sub_1C93A1CEC(v117, v118, v119);
    v120 = sub_1C939ECF8();
    sub_1C93A1CEC(v120, v121, v122);
    v123 = sub_1C93A5ADC();
    sub_1C93A17C8(v123, v124);
LABEL_32:
    v125 = sub_1C939ECF8();
    sub_1C93A17AC(v125, v126, v127);
    v128 = sub_1C93A58F0();
LABEL_33:
    sub_1C93A17AC(v128, v129, v130);
    goto LABEL_11;
  }

  sub_1C93A1CEC(v113, v114, v115);
  if (v95 != v99)
  {
    v143 = sub_1C93A58F0();
    sub_1C93A1CEC(v143, v144, v145);
    v146 = sub_1C939ECF8();
    sub_1C93A1CEC(v146, v147, v148);
    v149 = sub_1C93A58F0();
    sub_1C93A17AC(v149, v150, v151);
    v152 = sub_1C93A5ADC();
    sub_1C93A17C8(v152, v153);
    v128 = sub_1C939ECF8();
    goto LABEL_33;
  }

  sub_1C93A1CEC(v95, v98, v100);
  v131 = sub_1C939ECF8();
  sub_1C93A1CEC(v131, v132, v133);
  v134 = sub_1C93A5ADC();
  v135 = MEMORY[0x1CCA874A0](v134);
  sub_1C93A17AC(v95, v98, v100);
  v136 = sub_1C93A5ADC();
  sub_1C93A17C8(v136, v137);
  v138 = sub_1C939ECF8();
  sub_1C93A17AC(v138, v139, v140);
  if ((v135 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v110 = *(v87 + 36);
  v111 = *(v167 + 48);
  v112 = v164;
  sub_1C93A1DE4(v88 + v110, v164);
  sub_1C93A1DE4(v86 + v110, v112 + v111);
  sub_1C93A5C10(v112, 1);
  if (!v93)
  {
    v141 = v166;
    sub_1C93A1DE4(v112, v166);
    sub_1C93A5C10(v112 + v111, 1);
    if (!v142)
    {
      sub_1C93A5964();
      v154 = v163;
      sub_1C93A5068(v112 + v111);
      v155 = static SessionInvalidationContext.== infix(_:_:)(v141, v154);
      sub_1C93A4B68(v154);
      sub_1C93A4B68(v141);
      sub_1C93A4838(v112, &qword_1EC39A9F0, &qword_1C93FCE00);
      if ((v155 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_43;
    }

    sub_1C93A58C0();
    sub_1C93A4B68(v141);
LABEL_40:
    sub_1C93A4838(v112, &qword_1EC39A9F8, &qword_1C93FCE08);
    goto LABEL_11;
  }

  sub_1C93A5C10(v112 + v111, 1);
  if (!v93)
  {
    goto LABEL_40;
  }

  sub_1C93A4838(v112, &qword_1EC39A9F0, &qword_1C93FCE00);
LABEL_43:
  sub_1C93A5BDC();
  if (v156 && v157 && (*v158 != *v159 || v156 != v157))
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_11:
  sub_1C93A5B58();
}

uint64_t sub_1C93A2670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C9405FF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1919251317 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001C9406060 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000025 && 0x80000001C9406030 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001C9406010 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int sub_1C93A28B8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](a1);
  return Hasher._finalize()();
}

unint64_t sub_1C93A290C(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 1919251317;
      break;
    case 3:
      v3 = 5;
      goto LABEL_7;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      v3 = 9;
LABEL_7:
      result = v3 | 0xD000000000000012;
      break;
    case 6:
      result = 0x4E65636976726573;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_1C93A29FC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](v2);
  return Hasher._finalize()();
}

uint64_t sub_1C93A2A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93A2670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93A2A90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93A28B0();
  *a1 = result;
  return result;
}

uint64_t sub_1C93A2AB8(uint64_t a1)
{
  v2 = sub_1C93A48D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93A2AF4(uint64_t a1)
{
  v2 = sub_1C93A48D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnySessionAcquiredInfo.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39AA00, &qword_1C93FCE10);
  sub_1C939D44C();
  v5 = v4;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  sub_1C93A4890(a1, a1[3]);
  sub_1C93A48D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v28) = 0;
  type metadata accessor for SessionID(0);
  sub_1C93A5934();
  sub_1C93A4A24(v9, v10, protocol conformance descriptor for SessionID);
  sub_1C93A5B9C();
  sub_1C93A5A14();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v11 = type metadata accessor for AnySessionAcquiredInfo(0);
    v28 = sub_1C93A5AD0(v11[5]);
    v29 = v12;
    v35 = 1;
    sub_1C93A1988(v28, v12);
    sub_1C93A4928();
    sub_1C93A5900();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A17C8(v28, v29);
    v13 = sub_1C93A5AD0(v11[6]);
    v15 = v14[2];
    v16 = v14[3];
    v17 = v14[4];
    v18 = v14[5];
    v19 = v14[6];
    v28 = v13;
    v29 = v20;
    v30 = v15;
    v31 = v16;
    v32 = v17;
    v33 = v18;
    v34 = v19;
    v35 = 2;
    sub_1C93A1ABC(v13, v20, v15, v16, v17, v18, v19);
    sub_1C93A497C();
    sub_1C93A5900();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93A5BF0();
    sub_1C93A5AD0(v11[7]);
    LOBYTE(v28) = 3;
    sub_1C93A5A14();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = sub_1C93A5AD0(v11[8]);
    v23 = *(v22 + 16);
    v28 = v21;
    v29 = v24;
    v30 = v23;
    v35 = 4;
    sub_1C93A1CEC(v21, v24, v23);
    sub_1C93A49D0();
    sub_1C93A5900();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93A17AC(v28, v29, v30);
    LOBYTE(v28) = 5;
    type metadata accessor for SessionInvalidationContext(0);
    sub_1C93A597C();
    sub_1C93A4A24(v25, v26, protocol conformance descriptor for SessionInvalidationContext);
    sub_1C93A5B9C();
    sub_1C93A5A14();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93A5AD0(v11[10]);
    LOBYTE(v28) = 6;
    sub_1C93A5A14();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

void AnySessionAcquiredInfo.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C93A5B40();
  v5 = sub_1C93A59DC();
  v6 = type metadata accessor for SessionInvalidationContext(v5);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C93A59A8();
  v10 = v9 - v8;
  v11 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v11);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C93A5B7C();
  type metadata accessor for UUID();
  sub_1C93A4A24(&qword_1EC39AA08, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  v13 = type metadata accessor for AnySessionAcquiredInfo(0);
  Data.hash(into:)();
  v14 = (v3 + v13[6]);
  if (!v14[1])
  {
    sub_1C93A5B28();
    goto LABEL_15;
  }

  v21 = v6;
  v22 = v10;
  v15 = v14[4];
  v16 = v14[6];
  v17 = v14[2];
  sub_1C93A5AF4();
  sub_1C939D460();
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v17 & 1);
  if (v15)
  {
    if (v15 == 1)
    {
      v18 = 1;
    }

    else
    {
      if (v15 != 2)
      {
        MEMORY[0x1CCA87E40](2);
        String.hash(into:)();
        goto LABEL_11;
      }

      v18 = 3;
    }
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x1CCA87E40](v18);
LABEL_11:
  v6 = v21;
  if (v16)
  {
    sub_1C93A5AF4();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }

  v10 = v22;
LABEL_15:
  if (*(v3 + v13[7] + 8))
  {
    sub_1C93A5AF4();
    sub_1C939D460();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }

  v19 = (v3 + v13[8]);
  if (v19[2] >> 60 == 15)
  {
    sub_1C93A5B28();
  }

  else
  {
    v20 = *v19;
    sub_1C93A5AF4();
    MEMORY[0x1CCA87E60](v20);
    sub_1C939D460();
    Data.hash(into:)();
  }

  sub_1C93A1DE4(v3 + v13[9], v4);
  if (sub_1C93A4810(v4, 1, v6) == 1)
  {
    sub_1C93A5B28();
  }

  else
  {
    sub_1C93A5964();
    sub_1C93A5068(v4);
    sub_1C93A5AF4();
    SessionInvalidationContext.hash(into:)();
    sub_1C93A58C0();
    sub_1C93A4B68(v10);
  }

  if (*(v3 + v13[10] + 8))
  {
    sub_1C93A5AF4();
    sub_1C939D460();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }

  sub_1C93A5B58();
}

Swift::Int AnySessionAcquiredInfo.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnySessionAcquiredInfo.hash(into:)(v3, v0, v1);
  return Hasher._finalize()();
}

uint64_t AnySessionAcquiredInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v4 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v4);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v65 - v6;
  type metadata accessor for SessionID(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C93A59A8();
  *&v70 = v10 - v9;
  v71 = sub_1C93A1890(&qword_1EC39AA10, &qword_1C93FCE18);
  sub_1C939D44C();
  v69 = v11;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C93A5B7C();
  type metadata accessor for AnySessionAcquiredInfo(v13);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C93A59A8();
  v17 = v16 - v15;
  v19 = v16 - v15 + *(v18 + 24);
  sub_1C93A5994();
  v21 = (v17 + v20[8]);
  *v21 = 0;
  v21[1] = 0;
  v75 = v21;
  v21[2] = 0xF000000000000000;
  v72 = v20;
  v22 = v20[9];
  v23 = type metadata accessor for SessionInvalidationContext(0);
  v76 = v22;
  v24 = v17;
  sub_1C93A5B90();
  sub_1C93A1710(v25, v26, v27, v23);
  v28 = a1[3];
  v77 = a1;
  sub_1C93A4890(a1, v28);
  sub_1C93A48D4();
  v73 = v2;
  v29 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    v34 = v75;
    sub_1C939EA94(v77);
    v42 = v76;
    v35 = sub_1C93A5BB4();
    sub_1C93A1738(v35, v36, v37, v38, v39, v40, v41);

    sub_1C93A17AC(*v34, v34[1], v34[2]);
    return sub_1C93A4838(v24 + v42, &qword_1EC39A9F0, &qword_1C93FCE00);
  }

  else
  {
    v67 = v23;
    v74 = v7;
    v30 = v69;
    LOBYTE(v78) = 0;
    sub_1C93A5934();
    sub_1C93A4A24(v31, v32, protocol conformance descriptor for SessionID);
    v33 = v70;
    sub_1C93A5AE8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1C93A594C();
    sub_1C93A5068(v33);
    v82 = 1;
    sub_1C93A4A6C();
    sub_1C93A59C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = v75;
    *(v24 + v72[5]) = v78;
    v82 = 2;
    sub_1C93A4AC0();
    sub_1C93A59C8();
    sub_1C93A5AE8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v70 = v80;
    v44 = v81;
    v45 = sub_1C93A5BB4();
    v66 = v78;
    v65 = v79;
    sub_1C93A1738(v45, v46, v47, v48, v49, v50, v51);
    v52 = v65;
    *v19 = v66;
    *(v19 + 16) = v52;
    *(v19 + 32) = v70;
    *(v19 + 48) = v44;
    LOBYTE(v78) = 3;
    sub_1C93A5AE8();
    v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v54 = (v24 + v72[7]);
    *v54 = v53;
    v54[1] = v55;
    v82 = 4;
    sub_1C93A4B14();
    sub_1C93A59C8();
    sub_1C93A5AE8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v56 = v76;
    v70 = v78;
    v57 = v79;
    sub_1C93A17AC(*v43, v43[1], v43[2]);
    *v43 = v70;
    v43[2] = v57;
    LOBYTE(v78) = 5;
    sub_1C93A597C();
    sub_1C93A4A24(v58, v59, protocol conformance descriptor for SessionInvalidationContext);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1C93A1820(v74, v24 + v56);
    LOBYTE(v78) = 6;
    sub_1C93A5AE8();
    v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v61;
    v63 = (v24 + v72[10]);
    (*(v30 + 8))(v73, v71);
    *v63 = v60;
    v63[1] = v62;
    sub_1C93A50BC(v24);
    sub_1C939EA94(v77);
    return sub_1C93A4B68(v24);
  }
}

Swift::Int sub_1C93A3734(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnySessionAcquiredInfo.hash(into:)(v4, v1, v2);
  return Hasher._finalize()();
}

void AnySessionAcquiredInfo.propertyDescriptions.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C93A5B40();
  v4 = v3;
  v5 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v5);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v6);
  v122 = &v114 - v7;
  v123 = type metadata accessor for SessionInvalidationContext(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C93A59B8();
  v118 = v9 - v10;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C93A5B70();
  v119 = v12;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v13);
  v125 = &v114 - v14;
  v15 = type metadata accessor for PropertyDescription(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C93A59B8();
  v124 = (v17 - v18);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C93A5B70();
  v121 = v20;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C93A5B70();
  v120 = v22;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C93A5B70();
  v127 = v24;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v25);
  v117 = (&v114 - v26);
  v27 = type metadata accessor for OSLogPrivacy();
  v28 = sub_1C93A5A08(v27);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C93A59B8();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v114 - v33;
  type metadata accessor for SessionID(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C93A59B8();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v114 - v37;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v39 = *(v16 + 72);
  v40 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v131 = v39;
  v129 = (v40 + v39);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C93FCDF0;
  v130 = v40;
  v42 = (v41 + v40);
  sub_1C93A50BC(v4);
  static OSLogPrivacy.auto.getter();
  sub_1C93A50BC(v38);
  v43 = String.init<A>(describing:)();
  v45 = v44;
  sub_1C93A58A8();
  sub_1C93A50BC(v34);
  static OSLogPrivacy.auto.getter();
  sub_1C93A5890();
  sub_1C93A4B68(v34);
  *v42 = 0x496E6F6973736573;
  v42[1] = 0xE900000000000044;
  v42[2] = v43;
  v42[3] = v45;
  sub_1C93A5878();
  v46 = v4;
  sub_1C93A4BBC(v31);
  v47 = sub_1C93A5918();
  sub_1C93A4B68(v47);
  v48 = type metadata accessor for AnySessionAcquiredInfo(0);
  v49 = v4 + v48[5];
  v50 = sub_1C93A41A4(*v49, *(v49 + 8));
  v132 = v31;
  v133 = v15;
  v128 = v48;
  if (!v50)
  {
    v51 = *v49;
    v52 = *(v49 + 8);
    static OSLogPrivacy.auto.getter();
    v134 = v51;
    v135 = v52;
    sub_1C93A1988(v51, v52);
    v53 = String.init<A>(describing:)();
    v55 = v54;
    sub_1C93A58A8();
    sub_1C93A50BC(v34);
    v56 = v117;
    static OSLogPrivacy.auto.getter();
    sub_1C93A5890();
    sub_1C93A4B68(v34);
    *v56 = 0xD000000000000012;
    v56[1] = 0x80000001C9405FF0;
    v48 = v128;
    v56[2] = v53;
    v56[3] = v55;
    sub_1C93A5878();
    sub_1C93A4BBC(v31);
    v41 = sub_1C93A4F7C(1, 2, 1, v41);
    *(v41 + 16) = 2;
    sub_1C939D418();
    sub_1C93A5068(v56);
  }

  v129 = v34;
  v57 = (v4 + v48[6]);
  v58 = v57[1];
  v126 = v4;
  if (v58)
  {
    v59 = v57[6];
    v116 = v57[5];
    v60 = v116;
    v61 = v57[3];
    v62 = v57[4];
    v117 = v57[2];
    v63 = v117;
    v64 = *v57;

    sub_1C93A1B1C(v61, v62);

    v65 = v129;
    static OSLogPrivacy.auto.getter();
    v134 = v64;
    v135 = v58;
    LOBYTE(v136) = v63 & 1;
    v137 = v61;
    v138 = v62;
    v139 = v60;
    v140 = v59;

    sub_1C93A1B1C(v61, v62);

    v115 = String.init<A>(describing:)();
    v114 = v66;
    sub_1C93A58A8();
    v67 = v132;
    sub_1C93A50BC(v65);
    v68 = v41;
    v69 = v127;
    static OSLogPrivacy.auto.getter();
    sub_1C93A1738(v64, v58, v117, v61, v62, v116, v59);
    sub_1C93A5890();
    sub_1C93A4B68(v65);
    *v69 = 1919251317;
    v69[1] = 0xE400000000000000;
    v70 = v114;
    v69[2] = v115;
    v69[3] = v70;
    sub_1C93A5878();
    v41 = v68;
    sub_1C93A4BBC(v67);
    v71 = *(v68 + 24);
    if (*(v68 + 16) >= v71 >> 1)
    {
      v41 = sub_1C93A5A88((v71 > 1));
    }

    v72 = v120;
    sub_1C93A59F8();
    sub_1C939D418();
    sub_1C93A5068(v127);
    v46 = v126;
    v48 = v128;
  }

  else
  {
    v72 = v120;
  }

  v73 = (v46 + v48[7]);
  v74 = v73[1];
  if (v74)
  {
    v75 = *v73;
    swift_bridgeObjectRetain_n();
    v76 = v129;
    static OSLogPrivacy.public.getter();
    v134 = v75;
    v135 = v74;
    v77 = String.init<A>(describing:)();
    v79 = v78;
    sub_1C93A58A8();
    v80 = v132;
    sub_1C93A50BC(v76);
    static OSLogPrivacy.auto.getter();

    sub_1C93A5890();
    sub_1C93A4B68(v76);
    *v72 = 0xD000000000000017;
    v72[1] = 0x80000001C9406060;
    v72[2] = v77;
    v72[3] = v79;
    sub_1C93A5878();
    sub_1C93A4BBC(v80);
    v81 = *(v41 + 24);
    if (*(v41 + 16) >= v81 >> 1)
    {
      v41 = sub_1C93A5A88((v81 > 1));
    }

    sub_1C93A59F8();
    sub_1C939D418();
    sub_1C93A5068(v72);
    v48 = v128;
  }

  v82 = (v46 + v48[8]);
  v83 = v82[2];
  if (v83 >> 60 == 15)
  {
    v84 = v122;
  }

  else
  {
    v85 = *v82;
    v86 = v82[1];
    v127 = 0x80000001C9406030;
    v87 = sub_1C93A5AC0();
    sub_1C93A1CEC(v87, v88, v89);
    sub_1C93A1988(v86, v83);
    v90 = v129;
    static OSLogPrivacy.auto.getter();
    v134 = v85;
    v135 = v86;
    v136 = v83;
    sub_1C93A1988(v86, v83);
    v91 = String.init<A>(describing:)();
    v93 = v92;
    sub_1C93A58A8();
    v94 = v132;
    sub_1C93A50BC(v90);
    v95 = v121;
    static OSLogPrivacy.auto.getter();
    v96 = sub_1C93A5AC0();
    sub_1C93A17AC(v96, v97, v98);
    sub_1C93A5890();
    sub_1C93A4B68(v90);
    v99 = v127;
    *v95 = 0xD000000000000025;
    v95[1] = v99;
    v95[2] = v91;
    v95[3] = v93;
    sub_1C93A5878();
    sub_1C93A4BBC(v94);
    v100 = *(v41 + 24);
    if (*(v41 + 16) >= v100 >> 1)
    {
      v41 = sub_1C93A5A88((v100 > 1));
    }

    v101 = sub_1C93A5AC0();
    sub_1C93A17AC(v101, v102, v103);
    sub_1C93A59F8();
    sub_1C939D418();
    sub_1C93A5068(v121);
    v84 = v122;
    v46 = v126;
    v48 = v128;
  }

  sub_1C93A1DE4(v46 + v48[9], v84);
  sub_1C93A5C10(v84, 1);
  if (v104)
  {
    sub_1C93A4838(v84, &qword_1EC39A9F0, &qword_1C93FCE00);
  }

  else
  {
    v105 = v125;
    sub_1C93A5068(v84);
    v106 = v119;
    sub_1C93A50BC(v105);
    v107 = v129;
    static OSLogPrivacy.auto.getter();
    sub_1C93A50BC(v106);
    v108 = String.init<A>(describing:)();
    v110 = v109;
    sub_1C93A58A8();
    v111 = v132;
    sub_1C93A50BC(v107);
    v112 = v124;
    static OSLogPrivacy.auto.getter();
    sub_1C93A5890();
    sub_1C93A4B68(v107);
    *v112 = 0xD00000000000001BLL;
    v112[1] = 0x80000001C9406010;
    v112[2] = v108;
    v112[3] = v110;
    sub_1C93A5878();
    sub_1C93A4BBC(v111);
    sub_1C93A58C0();
    sub_1C93A4B68(v106);
    v113 = *(v41 + 24);
    if (*(v41 + 16) >= v113 >> 1)
    {
      sub_1C93A5A88((v113 > 1));
    }

    sub_1C93A4B68(v125);
    sub_1C93A59F8();
    sub_1C939D418();
    sub_1C93A5068(v124);
  }

  sub_1C93A5B58();
}

BOOL sub_1C93A41A4(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

void AnonymousSession.AcquiredInfo.asAnySessionAcquiredInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C93A5B40();
  v4 = v3;
  v6 = v5;
  v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v7);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  v45 = &v38 - v9;
  sub_1C93A58D8();
  sub_1C93A50BC(v4);
  v11 = type metadata accessor for AnonymousSession.AcquiredInfo(0);
  v12 = (v4 + v11[5]);
  v13 = *v12;
  v14 = v12[1];
  v15 = (v4 + v11[6]);
  v16 = *v15;
  v43 = v15[1];
  v44 = v16;
  sub_1C93A1DE4(v4 + v11[7], v10);
  v17 = type metadata accessor for AnySessionAcquiredInfo(0);
  v18 = (v6 + v17[6]);
  sub_1C93A5994();
  v20 = v19[8];
  v41 = (v6 + v19[7]);
  v21 = v6 + v20;
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0xF000000000000000;
  v42 = v19[9];
  type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A5B90();
  sub_1C93A1710(v22, v23, v24, v25);
  v40 = (v6 + v17[10]);
  v26 = (v6 + v17[5]);
  v27 = v13;
  *v26 = v13;
  v26[1] = v14;
  v28 = v14;
  v29 = *v18;
  v30 = v18[1];
  v31 = v18[2];
  v32 = v18[3];
  v33 = v18[4];
  v39 = v18[5];
  v34 = v18[6];
  sub_1C93A1988(v27, v28);
  v35 = v43;

  sub_1C93A1738(v29, v30, v31, v32, v33, v39, v34);
  sub_1C93A5994();
  v36 = v41;
  *v41 = v44;
  v36[1] = v35;
  sub_1C93A17AC(*v21, *(v21 + 8), *(v21 + 16));
  *v21 = 0;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0xF000000000000000;
  sub_1C93A1820(v45, v6 + v42);
  v37 = v40;
  *v40 = 0;
  v37[1] = 0;
  sub_1C93A5B58();
}

void AuthenticatedSession.AcquiredInfo.asAnySessionAcquiredInfo.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C93A5B40();
  v5 = v3;
  v7 = v6;
  v8 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v8);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v75 = &v51 - v10;
  sub_1C93A58D8();
  sub_1C93A50BC(v5);
  v12 = type metadata accessor for AuthenticatedSession.AcquiredInfo(0);
  v13 = v12[6];
  v14 = (v5 + v12[5]);
  v16 = *v14;
  v15 = v14[1];
  v17 = v12[8];
  v18 = v5 + v12[7];
  v19 = *(v18 + 8);
  v73 = *v18;
  v72 = *(v18 + 16);
  v62 = *(v18 + 24);
  v61 = *(v18 + 32);
  v20 = *(v18 + 40);
  v69 = *(v18 + 48);
  v21 = *(v5 + v13 + 8);
  v70 = *(v5 + v13);
  v71 = v20;
  v52 = v21;
  v22 = v5 + v17;
  v23 = *(v5 + v17);
  v66 = *(v22 + 8);
  v67 = v23;
  v65 = *(v22 + 16);
  sub_1C93A1DE4(v5 + v12[9], v11);
  v24 = (v5 + v12[10]);
  v25 = v24[1];
  v74 = *v24;
  v26 = type metadata accessor for AnySessionAcquiredInfo(0);
  sub_1C93A5A20(v26);
  v64 = (v7 + v27);
  v29 = v7 + v28;
  *v29 = 0;
  *(v29 + 8) = 0;
  *(v29 + 16) = 0xF000000000000000;
  v68 = *(v30 + 36);
  type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A5B90();
  sub_1C93A1710(v31, v32, v33, v34);
  v63 = (v7 + *(v26 + 40));
  v35 = (v7 + *(v26 + 20));
  *v35 = v16;
  v35[1] = v15;
  v36 = v4[1];
  v59 = *v4;
  v60 = v7;
  v37 = v4[3];
  v57 = v4[2];
  v58 = v36;
  v38 = v4[5];
  v55 = v4[4];
  v56 = v37;
  v54 = v38;
  v53 = v4[6];
  sub_1C93A1988(v16, v15);

  v40 = v61;
  v39 = v62;
  sub_1C93A1B1C(v62, v61);

  v41 = v69;

  v43 = v66;
  v42 = v67;
  v44 = v65;
  sub_1C93A1CEC(v67, v66, v65);

  sub_1C93A1738(v59, v58, v57, v56, v55, v54, v53);
  v45 = v72;
  *v4 = v73;
  v4[1] = v19;
  v4[2] = v45;
  v4[3] = v39;
  v47 = v70;
  v46 = v71;
  v4[4] = v40;
  v4[5] = v46;
  v4[6] = v41;
  v48 = v64;
  v49 = v52;
  *v64 = v47;
  v48[1] = v49;
  sub_1C93A17AC(*v29, *(v29 + 8), *(v29 + 16));
  *v29 = v42;
  *(v29 + 8) = v43;
  *(v29 + 16) = v44;
  sub_1C93A1820(v75, v60 + v68);
  v50 = v63;
  *v63 = v74;
  v50[1] = v25;
  sub_1C93A5B58();
}

uint64_t sub_1C93A4644(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1C93A46C8(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000016;
  v3 = &unk_1C9405EC0;
  v4 = &unk_1C9405EC0;
  v5 = a1;
  v6 = 0xD000000000000016;
  switch(v5)
  {
    case 1:
      v4 = "application-identifier";
      v6 = 0xD000000000000030;
      break;
    case 2:
      v4 = "iner-environment";
      v6 = 0xD00000000000003BLL;
      break;
    case 3:
      v4 = "nal.allow-custom-bundle-ids";
      v6 = 0xD000000000000041;
      break;
    case 4:
      v4 = "-authorization-ui";
      v6 = 0xD000000000000038;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "application-identifier";
      v2 = 0xD000000000000030;
      break;
    case 2:
      v3 = "iner-environment";
      v2 = 0xD00000000000003BLL;
      break;
    case 3:
      v3 = "nal.allow-custom-bundle-ids";
      v2 = 0xD000000000000041;
      break;
    case 4:
      v3 = "-authorization-ui";
      v2 = 0xD000000000000038;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1C93A4838(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C93A1890(a2, a3);
  sub_1C939D430();
  (*(v4 + 8))(a1);
  return a1;
}

void *sub_1C93A4890(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C93A48D4()
{
  result = qword_1EE02B5E0;
  if (!qword_1EE02B5E0)
  {
    result = swift_getWitnessTable(byte_1C93FD20C, &type metadata for AnySessionAcquiredInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B5E0);
  }

  return result;
}

unint64_t sub_1C93A4928()
{
  result = qword_1EE02C1D0;
  if (!qword_1EE02C1D0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E6969090], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &qword_1EE02C1D0);
  }

  return result;
}

unint64_t sub_1C93A497C()
{
  result = qword_1EE02B958;
  if (!qword_1EE02B958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedSession.ResolvedUser, &type metadata for AuthenticatedSession.ResolvedUser, v0, v1);
    atomic_store(result, &qword_1EE02B958);
  }

  return result;
}

unint64_t sub_1C93A49D0()
{
  result = qword_1EE02BF28;
  if (!qword_1EE02BF28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SaltedHash, &type metadata for SaltedHash, v0, v1);
    atomic_store(result, &qword_1EE02BF28);
  }

  return result;
}

uint64_t sub_1C93A4A24(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1C93A4A6C()
{
  result = qword_1EE02C1C8;
  if (!qword_1EE02C1C8)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69690B0], MEMORY[0x1E6969080], v0, v1);
    atomic_store(result, &qword_1EE02C1C8);
  }

  return result;
}

unint64_t sub_1C93A4AC0()
{
  result = qword_1EE02B950;
  if (!qword_1EE02B950)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedSession.ResolvedUser, &type metadata for AuthenticatedSession.ResolvedUser, v0, v1);
    atomic_store(result, &qword_1EE02B950);
  }

  return result;
}

unint64_t sub_1C93A4B14()
{
  result = qword_1EE02BF20;
  if (!qword_1EE02BF20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SaltedHash, &type metadata for SaltedHash, v0, v1);
    atomic_store(result, &qword_1EE02BF20);
  }

  return result;
}

uint64_t sub_1C93A4B68(uint64_t a1)
{
  v2 = sub_1C93A59DC();
  v3(v2);
  sub_1C939D430();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t sub_1C93A4BBC(uint64_t a1)
{
  v2 = sub_1C93A59E8();
  v3(v2);
  sub_1C939D430();
  v4 = sub_1C93A5A40();
  v5(v4);
  return v1;
}

uint64_t sub_1C93A4C20(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1C93A4C9C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C93A4D1C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1C93A4D44(a2);
  *a1 = result;
  return result;
}

uint64_t sub_1C93A4D44(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = MEMORY[0x1CCA876F0](v1);

  return v2;
}

uint64_t sub_1C93A4D7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1CCA876F0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t sub_1C93A4DC4@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C93A4DF8(uint64_t a1)
{
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = MEMORY[0x1CCA877E0](v1);

  return v2;
}

Swift::Int sub_1C93A4E40(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_1C93A4EC0(uint64_t a1)
{
  v2 = sub_1C93A4A24(&qword_1EC39AA50, type metadata accessor for Dataclass, byte_1C93FD184);
  v3 = sub_1C93A4A24(&qword_1EC39AA58, type metadata accessor for Dataclass, aU_1);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void *sub_1C93A4F7C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1C93A577C(v8, v7);
  v10 = *(type metadata accessor for PropertyDescription(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1C93E27E0(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_1C93A5068(uint64_t a1)
{
  v2 = sub_1C93A59E8();
  v3(v2);
  sub_1C939D430();
  v4 = sub_1C93A5A40();
  v5(v4);
  return v1;
}

uint64_t sub_1C93A50BC(uint64_t a1)
{
  v2 = sub_1C93A59E8();
  v3(v2);
  sub_1C939D430();
  v4 = sub_1C93A5A40();
  v5(v4);
  return v1;
}

uint64_t sub_1C93A5158(uint64_t a1)
{
  result = sub_1C93A4A24(&qword_1EC39AA20, type metadata accessor for AnySessionAcquiredInfo, protocol conformance descriptor for AnySessionAcquiredInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93A51D8(uint64_t a1)
{
  v1 = type metadata accessor for SessionID(319);
  if (v2 <= 0x3F)
  {
    sub_1C93A53DC(319, qword_1EE02C508, &type metadata for AuthenticatedSession.ResolvedUser, MEMORY[0x1E69E6720]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C93A53DC(319, qword_1EE02C1D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_1C93A53DC(319, &qword_1EE02C628, &type metadata for SaltedHash, MEMORY[0x1E69E6720]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_1C93A5334(319);
        if (v9 > 0x3F)
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

void sub_1C93A5334(uint64_t a1)
{
  if (!qword_1EE02C2C8[0])
  {
    type metadata accessor for SessionInvalidationContext(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, qword_1EE02C2C8);
    }
  }
}

void sub_1C93A53DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for AnySessionAcquiredInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AnySessionAcquiredInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93A55A0()
{
  result = qword_1EC39AA30;
  if (!qword_1EC39AA30)
  {
    result = swift_getWitnessTable(byte_1C93FD0A4, &type metadata for AnySessionAcquiredInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39AA30);
  }

  return result;
}

unint64_t sub_1C93A56D0()
{
  result = qword_1EE02B5D0;
  if (!qword_1EE02B5D0)
  {
    result = swift_getWitnessTable(byte_1C93FD014, &type metadata for AnySessionAcquiredInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B5D0);
  }

  return result;
}

unint64_t sub_1C93A5728()
{
  result = qword_1EE02B5D8;
  if (!qword_1EE02B5D8)
  {
    result = swift_getWitnessTable(byte_1C93FD03C, &type metadata for AnySessionAcquiredInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B5D8);
  }

  return result;
}

void *sub_1C93A577C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v4 = *(type metadata accessor for PropertyDescription(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1C93A5994()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

double sub_1C93A5A20(uint64_t a1)
{
  v2 = v1 + *(a1 + 24);
  *(v2 + 48) = 0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  return result;
}

void sub_1C93A5A4C(uint64_t a1, uint64_t a2)
{
  *(v5 - 248) = v2;
  v7 = *(v5 - 224);
  v8 = *(v5 - 216);

  sub_1C93A1ABC(a1, a2, v2, v4, v3, v7, v8);
}

void *sub_1C93A5A88(void *a1)
{

  return sub_1C93A4F7C(a1, v1, 1, v2);
}

void sub_1C93A5AF4()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_1C93A5B0C()
{

  return type metadata accessor for AnySessionAcquiredInfo(0);
}

void sub_1C93A5B28()
{

  Hasher._combine(_:)(0);
}

void sub_1C93A5BF0()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
  v4 = *(v0 - 112);
  v5 = *(v0 - 104);
  v6 = *(v0 - 96);
  v7 = *(v0 - 88);
  v8 = *(v0 - 80);

  sub_1C93A1738(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t AnySessionConfiguration.containerID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t AnySessionConfiguration.containerID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t AnySessionConfiguration.application.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;

  return sub_1C93A5D1C(v4, v5);
}

uint64_t sub_1C93A5D1C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 AnySessionConfiguration.application.setter(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);

  sub_1C93A5D7C(v3, v4);
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_1C93A5D7C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *AnySessionConfiguration.account.setter(const void *a1)
{
  sub_1C939ED08();
  memcpy(v3, v4, v5);
  sub_1C93A8044(&v7, &qword_1EC39AA60, &qword_1C93FD270);
  return memcpy((v1 + 56), a1, 0x60uLL);
}

uint64_t AnySessionConfiguration.encryption.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C93A5E60(*(v1 + 152), *(v1 + 160));
  *(v1 + 152) = v2;
  *(v1 + 160) = v3;
  return result;
}

uint64_t sub_1C93A5E60(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1C93A5E70(a1, a2);
  }

  return a1;
}

uint64_t sub_1C93A5E70(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

BOOL static AnySessionConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  HIDWORD(v70) = *(a1 + 17);
  v65 = a1[3];
  v69 = a1[5];
  v67 = a1[4];
  v68 = a1[6];
  sub_1C939ED08();
  memcpy(v7, v8, v9);
  v60 = a1[20];
  v62 = a1[19];
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  v13 = *(a2 + 17);
  v14 = a2[4];
  v64 = a2[3];
  v15 = a2[6];
  v66 = a2[5];
  memcpy(__dst, a2 + 7, sizeof(__dst));
  v16 = a2[19];
  v17 = a2[20];
  if (v4 == v10 && v5 == v11)
  {
    result = 0;
    if (v6 != v12)
    {
      return result;
    }

    v58 = v16;
LABEL_10:
    if ((HIDWORD(v70) ^ v13))
    {
      return result;
    }

    *&__src[0] = v65;
    *(&__src[0] + 1) = v67;
    *&__src[1] = v69;
    *(&__src[1] + 1) = v68;
    v74[0] = v64;
    v74[1] = v14;
    v74[2] = v66;
    v74[3] = v15;

    sub_1C93A5D1C(v69, v68);

    sub_1C93A5D1C(v66, v15);
    v21 = static AuthenticatedSession.Configuration.Application.== infix(_:_:)(__src, v74);

    v22 = sub_1C93A8DA0();
    sub_1C93A5D7C(v22, v23);

    v24 = sub_1C93A8DA0();
    sub_1C93A5D7C(v24, v25);
    if (!v21)
    {
      return 0;
    }

    v81 = v82;
    v26 = v83;
    memcpy(v80, v84, sizeof(v80));
    v79 = __dst[0];
    v27 = *&__dst[1];
    v28 = memcpy(v78, &__dst[1] + 8, sizeof(v78));
    if (v83 == 1)
    {
      if (*&__dst[1] == 1)
      {
        __src[0] = v82;
        *&__src[1] = 1;
        sub_1C93A8E28(v28, v29, v30, v31, v32, v33, v34, v35, v58, v60, v62, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v71[10], v71[11], v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], *&v73[0], *(&v73[0] + 1), *&v73[1], *(&v73[1] + 1), *&v73[2], *(&v73[2] + 1), *&v73[3], *(&v73[3] + 1), *&v73[4], *(&v73[4] + 1), *&v73[5], *(&v73[5] + 1), v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8]);
        sub_1C939EE74(&v82, v74);
        sub_1C939EE74(__dst, v74);
        sub_1C93A8044(__src, &qword_1EC39AA60, &qword_1C93FD270);
LABEL_20:
        if (v61 == 2)
        {
          sub_1C939EBA8(v63, 2uLL);
          if (v17 == 2)
          {
            sub_1C939EBA8(v59, 2uLL);
            sub_1C93A5E60(v63, 2uLL);
            return 1;
          }

          v37 = v17;
          v40 = v59;
          sub_1C939EBA8(v59, v37);
          goto LABEL_26;
        }

        v37 = v17;
        if (v17 == 2)
        {
          v38 = sub_1C93A8DA0();
          sub_1C939EBA8(v38, v39);
          v40 = v59;
          sub_1C939EBA8(v59, 2uLL);
          v41 = sub_1C93A8DA0();
          sub_1C939EBA8(v41, v42);
          v43 = sub_1C93A8DA0();
          sub_1C93A5E70(v43, v44);
LABEL_26:
          v45 = sub_1C93A8DA0();
          sub_1C93A5E60(v45, v46);
          sub_1C93A5E60(v40, v37);
          return 0;
        }

        *&__src[0] = v63;
        *(&__src[0] + 1) = v61;
        v74[0] = v59;
        v74[1] = v17;
        v47 = sub_1C93A8DA0();
        sub_1C939EBA8(v47, v48);
        sub_1C939EBA8(v59, v17);
        v49 = sub_1C93A8DA0();
        sub_1C939EBA8(v49, v50);
        v51 = sub_1C93A8DA0();
        sub_1C939EBDC(v51, v52);
        v53 = static AuthenticatedSession.Configuration.Encryption.ServiceIdentity.== infix(_:_:)(__src, v74);
        sub_1C93A5E70(v74[0], v74[1]);
        sub_1C93A5E70(*&__src[0], *(&__src[0] + 1));
        v54 = sub_1C93A8DA0();
        sub_1C93A5E70(v54, v55);
        v56 = sub_1C93A8DA0();
        sub_1C93A5E60(v56, v57);
        return v53;
      }

      sub_1C939EE74(&v82, __src);
      sub_1C939EE74(__dst, __src);
    }

    else
    {
      __src[0] = v82;
      *&__src[1] = v83;
      sub_1C93A8E28(v28, v29, v30, v31, v32, v33, v34, v35, v58, v60, v62, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v71[10], v71[11], v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], *&v73[0], *(&v73[0] + 1), *&v73[1], *(&v73[1] + 1), *&v73[2], *(&v73[2] + 1), *&v73[3], *(&v73[3] + 1), *&v73[4], *(&v73[4] + 1), *&v73[5], *(&v73[5] + 1), v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8]);
      memcpy(v74, __src, sizeof(v74));
      if (v27 != 1)
      {
        v73[0] = __dst[0];
        memcpy(&v73[1] + 8, &__dst[1] + 8, 0x48uLL);
        *&v73[1] = v27;
        sub_1C939EE74(&v82, v72);
        sub_1C939EE74(__dst, v72);
        sub_1C939EE74(__src, v72);
        v36 = static AuthenticatedSession.Configuration.Account.== infix(_:_:)(v74, v73);
        memcpy(v71, v73, sizeof(v71));
        sub_1C93A80A4(v71);
        memcpy(v72, v74, sizeof(v72));
        sub_1C93A80A4(v72);
        v73[0] = v81;
        *&v73[1] = v26;
        memcpy(&v73[1] + 8, v80, 0x48uLL);
        sub_1C93A8044(v73, &qword_1EC39AA60, &qword_1C93FD270);
        if (!v36)
        {
          return 0;
        }

        goto LABEL_20;
      }

      memcpy(v73, __src, sizeof(v73));
      sub_1C939EE74(&v82, v72);
      sub_1C939EE74(__dst, v72);
      sub_1C939EE74(__src, v72);
      sub_1C93A80A4(v73);
    }

    __src[0] = v81;
    *&__src[1] = v26;
    memcpy(&__src[1] + 8, v80, 0x48uLL);
    __src[6] = v79;
    v76 = v27;
    memcpy(v77, v78, sizeof(v77));
    sub_1C93A8044(__src, &qword_1EC39AA68, &qword_1C93FD278);
    return 0;
  }

  v58 = v16;
  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v19 & 1) != 0 && ((v6 ^ v12) & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1C93A6380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000444972;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6974707972636E65 && a2 == 0xEA00000000006E6FLL)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C93A6534(char a1)
{
  result = 0x656E6961746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6D6574737973;
      break;
    case 2:
      result = 0x746163696C707061;
      break;
    case 3:
      result = 0x746E756F636361;
      break;
    case 4:
      result = 0x6974707972636E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93A65E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93A6380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93A6610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93A652C();
  *a1 = result;
  return result;
}

uint64_t sub_1C93A6638(uint64_t a1)
{
  v2 = sub_1C93A80F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93A6674(uint64_t a1)
{
  v2 = sub_1C93A80F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnySessionConfiguration.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39AA70, &qword_1C93FD280);
  sub_1C939D44C();
  v40 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = v1[1];
  v32 = *v1;
  v9 = *(v1 + 16);
  v31 = *(v1 + 17);
  v10 = v1[3];
  v29 = v1[4];
  v30 = v10;
  v11 = v1[5];
  v27 = v1[6];
  v28 = v11;
  sub_1C939ED08();
  memcpy(v12, v13, v14);
  v15 = v1[20];
  v25 = v1[19];
  v26 = v15;
  sub_1C93A4890(a1, a1[3]);
  sub_1C93A80F8();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v38[0] = v32;
  v38[1] = v8;
  LOBYTE(v38[2]) = v9;
  v37[0] = 0;
  sub_1C93A814C();
  v16 = v33;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v16)
  {

    return (*(v40 + 8))(v7, v3);
  }

  else
  {
    v18 = v29;
    v19 = v30;
    v20 = v28;

    LOBYTE(v38[0]) = v31;
    v37[0] = 1;
    sub_1C93A81A0();
    sub_1C93A8DAC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v38[0] = v19;
    v38[1] = v18;
    v38[2] = v20;
    v21 = v27;
    v38[3] = v27;
    v37[0] = 2;

    sub_1C93A5D1C(v20, v21);
    sub_1C93A81F4();
    sub_1C93A8DAC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v22 = v40;
    v23 = v38[2];
    v24 = v38[3];

    sub_1C93A5D7C(v23, v24);
    memcpy(v38, __src, sizeof(v38));
    v37[103] = 3;
    sub_1C939EE74(__src, v37);
    sub_1C93A8248();
    sub_1C93A8DAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    memcpy(v37, v38, 0x60uLL);
    sub_1C93A8044(v37, &qword_1EC39AA60, &qword_1C93FD270);
    v35 = v25;
    v36 = v26;
    v34 = 4;
    sub_1C939EBA8(v25, v26);
    sub_1C93A829C();
    sub_1C93A8DAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93A5E60(v35, v36);
    return (*(v22 + 8))(v7, v3);
  }
}

void AnySessionConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  sub_1C939ED08();
  memcpy(v7, v8, v9);
  v10 = *(v1 + 160);
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v3);
  Hasher._combine(_:)(v4);
  if (v5)
  {
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  if (v6 == 1)
  {
    v11 = 1;
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
    if (v6)
    {
      MEMORY[0x1CCA87E40](1);
      String.hash(into:)();
      goto LABEL_10;
    }

    v11 = 0;
  }

  MEMORY[0x1CCA87E40](v11);
LABEL_10:
  sub_1C93A82F0(a1);
  if (v10 == 2)
  {
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_16;
  }

  if (v10 == 1)
  {
    v12 = 2;
LABEL_16:
    MEMORY[0x1CCA87E40](v12);
    return;
  }

  MEMORY[0x1CCA87E40](1);

  String.hash(into:)();
}

Swift::Int AnySessionConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnySessionConfiguration.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t AnySessionConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1C93A1890(&qword_1EC39AA78, &unk_1C93FD288);
  sub_1C939D44C();
  MEMORY[0x1EEE9AC00](v5);
  v6 = a1[3];
  v76 = a1;
  sub_1C93A4890(a1, v6);
  sub_1C93A80F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1C939EA94(v76);
    v33 = 0;
    v34 = 0;
    v35 = 1;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    sub_1C93A8044(&v33, &qword_1EC39AA60, &qword_1C93FD270);
    return sub_1C93A5E60(0, 2uLL);
  }

  else
  {
    sub_1C93A849C();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v33;
    v24 = v34;
    sub_1C93A84F0();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v32[0]) = 2;
    sub_1C93A8544();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = v34;
    v23 = v35;
    v20 = v33;
    v21 = v36;
    v63 = 3;
    sub_1C93A8598();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v15 = v33;
    v16 = v35;
    v17 = v64;
    v18 = v65;
    v8 = v66;
    v19 = v67;
    v30 = v69;
    v31 = v68;
    v28 = v71;
    v29 = v70;
    v26 = v73;
    v27 = v72;
    v9 = v75;
    v25 = v74;
    v57[0] = 0;
    v57[1] = 0;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v57[2] = 1;
    v62 = 0;
    sub_1C93A8044(v57, &qword_1EC39AA60, &qword_1C93FD270);
    v54 = 4;
    sub_1C93A85EC();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v10 = sub_1C939D46C();
    v11(v10);
    v12 = v55;
    v13 = v56;
    sub_1C93A5E60(0, 2uLL);
    v32[0] = v7;
    v32[1] = v24;
    LOBYTE(v32[2]) = v16;
    BYTE1(v32[2]) = v15;
    v32[3] = v20;
    v32[4] = v22;
    v32[5] = v23;
    v32[6] = v21;
    v32[7] = v17;
    v32[8] = v18;
    v32[9] = v8;
    v32[10] = v19;
    v32[11] = v31;
    v32[12] = v30;
    v32[13] = v29;
    v32[14] = v28;
    v32[15] = v27;
    v32[16] = v26;
    v32[17] = v25;
    v32[18] = v9;
    v32[19] = v12;
    v32[20] = v13;
    memcpy(a2, v32, 0xA8uLL);
    sub_1C93A8640(v32, &v33);
    sub_1C939EA94(v76);
    v33 = v7;
    v34 = v24;
    LOBYTE(v35) = v16;
    BYTE1(v35) = v15;
    v36 = v20;
    v37 = v22;
    v38 = v23;
    v39 = v21;
    v40 = v17;
    v41 = v18;
    v42 = v8;
    v43 = v19;
    v44 = v31;
    v45 = v30;
    v46 = v29;
    v47 = v28;
    v48 = v27;
    v49 = v26;
    v50 = v25;
    v51 = v9;
    v52 = v12;
    v53 = v13;
    return sub_1C93A8678(&v33);
  }
}

Swift::Int sub_1C93A70E0(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnySessionConfiguration.hash(into:)(v2);
  return Hasher._finalize()();
}

void *AnySessionConfiguration.propertyDescriptions.getter()
{
  v1 = type metadata accessor for PropertyDescription(0);
  v115 = *(v1 - 8);
  v2 = v115;
  v116 = v1;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v113 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v102 = (&v101 - v6);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v107 = (&v101 - v8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v101 - v9);
  v11 = type metadata accessor for OSLogPrivacy();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v101 - v15;
  v17 = *v0;
  v18 = *(v0 + 8);
  v19 = *(v0 + 16);
  LODWORD(v114) = *(v0 + 17);
  v20 = *(v0 + 32);
  v103 = *(v0 + 24);
  v104 = v20;
  v21 = *(v0 + 40);
  v105 = *(v0 + 48);
  v106 = v21;
  sub_1C939ED08();
  memcpy(v22, v23, v24);
  v25 = *(v0 + 152);
  v108 = *(v0 + 160);
  v109 = v25;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v26 = (v115[80] + 32) & ~v115[80];
  v111 = *(v2 + 72);
  v101 = v26 + v111;
  v27 = swift_allocObject();
  *(v27 + 1) = xmmword_1C93FCDF0;
  v110 = v26;
  v28 = (v27 + v26);
  static OSLogPrivacy.public.getter();
  v124[0] = v17;
  v124[1] = v18;
  LOBYTE(v124[2]) = v19;

  v29 = String.init<A>(describing:)();
  v31 = v30;
  sub_1C93A86A8(v16, v14);
  v32 = *(v116 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v16);
  *v28 = 0x656E6961746E6F63;
  v28[1] = 0xEB00000000444972;
  v28[2] = v29;
  v28[3] = v31;
  v115 = v14;
  sub_1C93A8768(v14, v28 + v32);
  v112 = v16;
  if (v114 == 1)
  {
    static OSLogPrivacy.auto.getter();
    LOBYTE(v124[0]) = 1;
    v33 = String.init<A>(describing:)();
    v35 = v34;
    v36 = v115;
    sub_1C93A86A8(v16, v115);
    v37 = *(v116 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v16);
    *v10 = 0x6D6574737973;
    v10[1] = 0xE600000000000000;
    v10[2] = v33;
    v10[3] = v35;
    sub_1C93A8768(v36, v10 + v37);
    v38 = sub_1C93A4F7C(1, 2, 1, v27);
    v38[2] = 2;
    v114 = v38;
    sub_1C93A87CC(v10, v38 + v101);
  }

  else
  {
    v114 = v27;
  }

  v39 = v103;
  v40 = v104;
  v124[0] = v103;
  v124[1] = v104;
  v42 = v105;
  v41 = v106;
  v124[2] = v106;
  v124[3] = v105;
  memset(v123, 0, 32);

  sub_1C93A5D1C(v41, v42);
  v43 = static AuthenticatedSession.Configuration.Application.== infix(_:_:)(v124, v123);
  v44 = v123[1];

  sub_1C93A5D7C(v44, *(&v44 + 1));
  v45 = v124[2];
  v46 = v124[3];

  sub_1C93A5D7C(v45, v46);
  v47 = v113;
  v48 = v108;
  if (v43)
  {
    v49 = v108;
    v50 = v114;
  }

  else
  {
    v51 = v112;
    static OSLogPrivacy.auto.getter();
    v124[0] = v39;
    v124[1] = v40;
    v124[2] = v41;
    v124[3] = v42;

    sub_1C93A5D1C(v41, v42);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    v55 = v115;
    sub_1C93A86A8(v51, v115);
    v56 = *(v116 + 24);
    v57 = v107;
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v51);
    *v57 = 0x746163696C707061;
    v57[1] = 0xEB000000006E6F69;
    v57[2] = v52;
    v57[3] = v54;
    sub_1C93A8768(v55, v57 + v56);
    v59 = v114[2];
    v58 = v114[3];
    v60 = v110;
    if (v59 >= v58 >> 1)
    {
      v114 = sub_1C93A4F7C((v58 > 1), v59 + 1, 1, v114);
    }

    v61 = v111;
    v49 = v48;
    v50 = v114;
    v114[2] = v59 + 1;
    sub_1C93A87CC(v107, v50 + v60 + v59 * v61);
    v47 = v113;
  }

  v126 = __src[0];
  v62 = *&__src[1];
  memcpy(v125, &__src[1] + 8, sizeof(v125));
  if (*&__src[1] != 1)
  {
    v122[0] = __src[0];
    *&v122[1] = *&__src[1];
    memcpy(&v122[1] + 8, &__src[1] + 8, 0x48uLL);
    v121[0] = 0;
    memset(&v121[8], 0, 33);
    memset(&v121[48], 0, 48);
    memcpy(v123, __src, sizeof(v123));
    sub_1C93A8830(v123, &v118);
    v63 = static AuthenticatedSession.Configuration.Account.== infix(_:_:)(v122, v121);
    memcpy(v124, v121, sizeof(v124));
    sub_1C93A80A4(v124);
    if (v63)
    {
      sub_1C93A8044(__src, &qword_1EC39AA60, &qword_1C93FD270);
    }

    else
    {
      memcpy(v121, __src, sizeof(v121));
      sub_1C93A8830(v121, v122);
      v64 = v112;
      static OSLogPrivacy.auto.getter();
      v118 = v126;
      v119 = v62;
      memcpy(v120, v125, sizeof(v120));
      memcpy(v122, __src, sizeof(v122));
      sub_1C93A8830(v122, &v117);
      v65 = String.init<A>(describing:)();
      v67 = v66;
      v68 = v115;
      sub_1C93A86A8(v64, v115);
      v69 = *(v116 + 24);
      v70 = v102;
      static OSLogPrivacy.auto.getter();
      sub_1C93A8044(__src, &qword_1EC39AA60, &qword_1C93FD270);
      sub_1C93A870C(v64);
      *v70 = 0x746E756F636361;
      v70[1] = 0xE700000000000000;
      v70[2] = v65;
      v70[3] = v67;
      sub_1C93A8768(v68, v70 + v69);
      v72 = v50[2];
      v71 = v50[3];
      if (v72 >= v71 >> 1)
      {
        v50 = sub_1C93A4F7C((v71 > 1), v72 + 1, 1, v50);
      }

      v74 = v110;
      v73 = v111;
      sub_1C93A8044(__src, &qword_1EC39AA60, &qword_1C93FD270);
      v50[2] = v72 + 1;
      sub_1C93A87CC(v102, v50 + v74 + v72 * v73);
    }
  }

  v75 = v109;
  if (v49 != 2)
  {
    v76 = v112;
    if (v49 == 1)
    {
      sub_1C93A5E70(v109, 1uLL);
      v79 = sub_1C93A8E1C();
      sub_1C93A5E70(v79, v80);
      sub_1C93A5E60(v75, 1uLL);
    }

    else
    {
      if (!v49)
      {
        sub_1C93A5E70(v109, 0);
        v77 = sub_1C93A8E1C();
        sub_1C93A5E70(v77, v78);
        sub_1C93A5E60(v75, 0);
        sub_1C93A5E60(v75, 0);
        return v50;
      }

      sub_1C939EBA8(v109, v49);
      v81 = sub_1C93A8E10();
      sub_1C939EBA8(v81, v82);
      v83 = sub_1C93A8E10();
      sub_1C93A5E70(v83, v84);
      v85 = sub_1C93A8E1C();
      sub_1C93A5E70(v85, v86);
    }

    static OSLogPrivacy.auto.getter();
    v124[0] = v75;
    v124[1] = v49;
    v87 = sub_1C93A8E10();
    sub_1C939EBDC(v87, v88);
    v89 = String.init<A>(describing:)();
    v91 = v90;
    v92 = v115;
    sub_1C93A86A8(v76, v115);
    v93 = *(v116 + 24);
    static OSLogPrivacy.auto.getter();
    v94 = sub_1C93A8E10();
    sub_1C93A5E60(v94, v95);
    sub_1C93A870C(v76);
    *v47 = 0x6974707972636E65;
    v47[1] = 0xEA00000000006E6FLL;
    v47[2] = v89;
    v47[3] = v91;
    sub_1C93A8768(v92, v47 + v93);
    v97 = v50[2];
    v96 = v50[3];
    if (v97 >= v96 >> 1)
    {
      v50 = sub_1C93A4F7C((v96 > 1), v97 + 1, 1, v50);
    }

    v98 = v110;
    v99 = v111;
    v50[2] = v97 + 1;
    sub_1C93A87CC(v47, v50 + v98 + v97 * v99);
  }

  return v50;
}

double AnonymousSession.Configuration.asAnySessionConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  v8 = v1[3];
  v7 = v1[4];

  v9 = sub_1C93A8E1C();
  sub_1C93A5D7C(v9, v10);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 40) = xmmword_1C93FD260;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 2;
  return result;
}

uint64_t AuthenticatedSession.Configuration.asAnySessionConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v19 = *(v1 + 17);
  v6 = v1[4];
  v18 = v1[3];
  v7 = v1[5];
  v8 = v1[6];
  sub_1C939ED08();
  memcpy(v9, v10, v11);
  v12 = v1[19];
  v13 = v1[20];
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 17) = v19;
  *(a1 + 24) = v18;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  sub_1C939ED08();
  memcpy(v14, v15, v16);
  *(a1 + 152) = v12;
  *(a1 + 160) = v13;

  sub_1C93A5D1C(v7, v8);
  sub_1C93A8830(v21, v20);
  return sub_1C939EBDC(v12, v13);
}

uint64_t AnySessionConfiguration.CustomConfigurationError.description.getter()
{
  v1 = 0xD000000000000016;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  _StringGuts.grow(_:)(73);
  MEMORY[0x1CCA87780](0xD00000000000001DLL, 0x80000001C9406080);
  MEMORY[0x1CCA87780](v3, v4);
  MEMORY[0x1CCA87780](0xD000000000000026, 0x80000001C94060A0);
  v5 = &unk_1C9405EC0;
  switch(v2)
  {
    case 1:
      v5 = "application-identifier";
      v1 = 0xD000000000000030;
      break;
    case 2:
      v5 = "iner-environment";
      v1 = 0xD00000000000003BLL;
      break;
    case 3:
      v5 = "nal.allow-custom-bundle-ids";
      v1 = 0xD000000000000041;
      break;
    case 4:
      v5 = "-authorization-ui";
      v1 = 0xD000000000000038;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA87780](v1, v5 | 0x8000000000000000);

  MEMORY[0x1CCA87780](11810, 0xE200000000000000);
  return 0;
}

void _s17CloudCoreInternal23AnySessionConfigurationV8validate12entitlementsyx_tAC06CustomF5ErrorOYKAA20EntitlementsProtocolRzlF(uint64_t result, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *(v4 + 32);
  v6 = *(v4 + 48);
  v7 = *(v4 + 72);
  v30 = *(v4 + 80);
  v8 = *(v4 + 88);
  v9 = *(v4 + 96);
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_11;
    }

    v10 = sub_1C93A8E04();
    if ((v11(v10) & 1) == 0)
    {
      sub_1C93A8DD0();
      _StringGuts.grow(_:)(22);

      sub_1C93A8DBC();
      v32 = v21;
      v34 = v20;

      sub_1C93A1890(&qword_1EC39AA90, &qword_1C93FD2A0);
      v22 = String.init<A>(describing:)();
      MEMORY[0x1CCA87780](v22);

      MEMORY[0x1CCA87780](34, 0xE100000000000000);
      v17 = v32;
      v18 = v34;
      v19 = 4;
      goto LABEL_20;
    }
  }

  if (!v9)
  {
    if (!v8)
    {
      sub_1C939F004(v30, 0, 0);
      swift_bridgeObjectRelease_n();
      goto LABEL_11;
    }

    sub_1C939F004(v30, v8, 0);
  }

  v12 = sub_1C93A8E04();
  if ((v13(v12) & 1) == 0)
  {
    sub_1C93A8DD0();
    _StringGuts.grow(_:)(30);

    sub_1C93A8DBC();
    v35 = v15 | 8;
    v36 = v14;
    sub_1C939F004(v30, v8, v9);
    sub_1C93A1890(&qword_1EC39AA88, &qword_1C93FD298);
    v16 = String.init<A>(describing:)();
    MEMORY[0x1CCA87780](v16);

    MEMORY[0x1CCA87780](34, 0xE100000000000000);
    v17 = v35;
    v18 = v36;
    v19 = 3;
LABEL_20:
    *a4 = v19;
    *(a4 + 1) = v17;
    *(a4 + 2) = v18;
    sub_1C93A888C();
    swift_willThrowTypedImpl();
    return;
  }

LABEL_11:
  if (v5)
  {
    v23 = sub_1C93A8E04();
    if ((v24(v23) & 1) == 0)
    {
      sub_1C93A8DD0();
      _StringGuts.grow(_:)(34);

      sub_1C93A8DBC();
      v31 = v26 | 0xC;
      v33 = v25;
LABEL_19:

      v29 = String.init<A>(describing:)();
      MEMORY[0x1CCA87780](v29);

      MEMORY[0x1CCA87780](34, 0xE100000000000000);
      v17 = v31;
      v18 = v33;
      v19 = 2;
      goto LABEL_20;
    }
  }

  if (v6 == 1)
  {
    return;
  }

  if (!v6)
  {
    swift_bridgeObjectRelease_n();
    return;
  }

  v27 = sub_1C93A8E04();
  if ((v28(v27) & 1) == 0)
  {
    sub_1C93A8DD0();
    _StringGuts.grow(_:)(56);
    MEMORY[0x1CCA87780](0xD000000000000035, 0x80000001C94060D0);
    goto LABEL_19;
  }
}

uint64_t sub_1C93A8044(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1C93A1890(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C93A80F8()
{
  result = qword_1EE02B540[0];
  if (!qword_1EE02B540[0])
  {
    result = swift_getWitnessTable(byte_1C93FD6A4, &type metadata for AnySessionConfiguration.CodingKeys, v0, v1);
    atomic_store(result, qword_1EE02B540);
  }

  return result;
}

unint64_t sub_1C93A814C()
{
  result = qword_1EE02BE90;
  if (!qword_1EE02BE90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContainerID, &type metadata for ContainerID, v0, v1);
    atomic_store(result, &qword_1EE02BE90);
  }

  return result;
}

unint64_t sub_1C93A81A0()
{
  result = qword_1EE02B810;
  if (!qword_1EE02B810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedSession.Configuration.System, &type metadata for AuthenticatedSession.Configuration.System, v0, v1);
    atomic_store(result, &qword_1EE02B810);
  }

  return result;
}

unint64_t sub_1C93A81F4()
{
  result = qword_1EE02B830;
  if (!qword_1EE02B830)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedSession.Configuration.Application, &type metadata for AuthenticatedSession.Configuration.Application, v0, v1);
    atomic_store(result, &qword_1EE02B830);
  }

  return result;
}

unint64_t sub_1C93A8248()
{
  result = qword_1EE02B718;
  if (!qword_1EE02B718)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedSession.Configuration.Account, &type metadata for AuthenticatedSession.Configuration.Account, v0, v1);
    atomic_store(result, &qword_1EE02B718);
  }

  return result;
}

unint64_t sub_1C93A829C()
{
  result = qword_1EE02B8B8;
  if (!qword_1EE02B8B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedSession.Configuration.Encryption, &type metadata for AuthenticatedSession.Configuration.Encryption, v0, v1);
    atomic_store(result, &qword_1EE02B8B8);
  }

  return result;
}

void sub_1C93A82F0(uint64_t a1)
{
  v2 = *(v1 + 2);
  if (v2 == 1)
  {
    goto LABEL_18;
  }

  v3 = *(v1 + 4);
  v4 = v1[40];
  v5 = *(v1 + 7);
  v6 = *(v1 + 11);
  v7 = *v1;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v7 & 1);
  if (!v2)
  {
    MEMORY[0x1CCA87E40](0);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_8:
    MEMORY[0x1CCA87E40](0);
    if (v3)
    {
      MEMORY[0x1CCA87E40](1);
      String.hash(into:)();
      if (!v5)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v8 = 0;
    goto LABEL_13;
  }

  MEMORY[0x1CCA87E40](1);
  String.hash(into:)();
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v4 == 1)
  {
    MEMORY[0x1CCA87E40](1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();

    if (!v5)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v8 = 2;
LABEL_13:
  MEMORY[0x1CCA87E40](v8);
  if (!v5)
  {
LABEL_18:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_14:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  String.hash(into:)();
  if (!v6)
  {
    goto LABEL_18;
  }

  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

unint64_t sub_1C93A849C()
{
  result = qword_1EE02B230;
  if (!qword_1EE02B230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ContainerID, &type metadata for ContainerID, v0, v1);
    atomic_store(result, &qword_1EE02B230);
  }

  return result;
}

unint64_t sub_1C93A84F0()
{
  result = qword_1EE02AFC0;
  if (!qword_1EE02AFC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedSession.Configuration.System, &type metadata for AuthenticatedSession.Configuration.System, v0, v1);
    atomic_store(result, &qword_1EE02AFC0);
  }

  return result;
}

unint64_t sub_1C93A8544()
{
  result = qword_1EE02AFC8;
  if (!qword_1EE02AFC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedSession.Configuration.Application, &type metadata for AuthenticatedSession.Configuration.Application, v0, v1);
    atomic_store(result, &qword_1EE02AFC8);
  }

  return result;
}

unint64_t sub_1C93A8598()
{
  result = qword_1EE02AF90;
  if (!qword_1EE02AF90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedSession.Configuration.Account, &type metadata for AuthenticatedSession.Configuration.Account, v0, v1);
    atomic_store(result, &qword_1EE02AF90);
  }

  return result;
}

unint64_t sub_1C93A85EC()
{
  result = qword_1EE02AFE0;
  if (!qword_1EE02AFE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AuthenticatedSession.Configuration.Encryption, &type metadata for AuthenticatedSession.Configuration.Encryption, v0, v1);
    atomic_store(result, &qword_1EE02AFE0);
  }

  return result;
}

uint64_t sub_1C93A86A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSLogPrivacy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93A870C(uint64_t a1)
{
  v2 = type metadata accessor for OSLogPrivacy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C93A8768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSLogPrivacy();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93A87CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescription(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C93A888C()
{
  result = qword_1EC39AA80;
  if (!qword_1EC39AA80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnySessionConfiguration.CustomConfigurationError, &type metadata for AnySessionConfiguration.CustomConfigurationError, v0, v1);
    atomic_store(result, &qword_1EC39AA80);
  }

  return result;
}

unint64_t sub_1C93A88E4()
{
  result = qword_1EE02B528;
  if (!qword_1EE02B528)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnySessionConfiguration, &type metadata for AnySessionConfiguration, v0, v1);
    atomic_store(result, &qword_1EE02B528);
  }

  return result;
}

unint64_t sub_1C93A8938(uint64_t a1)
{
  result = sub_1C93A8960();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93A8960()
{
  result = qword_1EC39AA98;
  if (!qword_1EC39AA98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnySessionConfiguration, &type metadata for AnySessionConfiguration, v0, v1);
    atomic_store(result, &qword_1EC39AA98);
  }

  return result;
}

uint64_t sub_1C93A89BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C93A89FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1C93A8A74(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C93A8A88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1C93A8AC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entitlements.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnySessionConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93A8C88()
{
  result = qword_1EC39AAA0;
  if (!qword_1EC39AAA0)
  {
    result = swift_getWitnessTable(asc_1C93FD67C, &type metadata for AnySessionConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC39AAA0);
  }

  return result;
}

unint64_t sub_1C93A8CE0()
{
  result = qword_1EE02B530;
  if (!qword_1EE02B530)
  {
    result = swift_getWitnessTable(byte_1C93FD5EC, &type metadata for AnySessionConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B530);
  }

  return result;
}

unint64_t sub_1C93A8D38()
{
  result = qword_1EE02B538;
  if (!qword_1EE02B538)
  {
    result = swift_getWitnessTable(byte_1C93FD614, &type metadata for AnySessionConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EE02B538);
  }

  return result;
}

void sub_1C93A8DE0()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[10] = 0;
  v0[11] = 0;
  v0[9] = 0;
}

void *sub_1C93A8E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a65, (v65 + 24), 0x48uLL);
}

uint64_t getEnumTagSinglePayload for CKImplementingCC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for CKImplementingCC(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C93A8F54@<X0>(void *a1@<X8>)
{
  if (dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 2) && (v2 = MEMORY[0x1CCA876F0](0xD00000000000001CLL, 0x80000001C9406210), v3 = NSClassFromString(v2), v2, v3) && (swift_getObjCClassMetadata(), sub_1C93A90A8(), (v4 = swift_dynamicCastMetatype()) != 0) && sub_1C93A90EC(v4, v4, &protocol descriptor for CKImplementingCC.EntryPointProtocol))
  {
    v6 = v5;
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    result = swift_getObjectType();
    a1[3] = result;
    a1[4] = v6;
    *a1 = v7;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C93A90A8()
{
  result = qword_1EE02AD68;
  if (!qword_1EE02AD68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE02AD68);
  }

  return result;
}

uint64_t sub_1C93A90EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C93A9144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7964616572 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656B636F6C62 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_1C93A9210(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1C93A9258(char a1)
{
  if (a1)
  {
    return 0x64656B636F6C62;
  }

  else
  {
    return 0x7964616572;
  }
}

uint64_t sub_1C93A928C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_1C93A92FC()
{
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](0);
  return Hasher._finalize()();
}

uint64_t sub_1C93A9388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93A9130();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C93A93B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(asc_1C93FDB90, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C93A940C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(asc_1C93FDB90, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

Swift::Int sub_1C93A9490(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1C93A1498(v3, *v1);
  return Hasher._finalize()();
}

uint64_t sub_1C93A94E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93A9144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93A953C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93A9208();
  *a1 = result;
  return result;
}

uint64_t sub_1C93A9568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1C93FDAF0, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C93A95BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_1C93FDAF0, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

Swift::Int sub_1C93A9610(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void))
{
  Hasher.init(_seed:)();
  a4(v7, *(a2 + 16));
  return Hasher._finalize()();
}

uint64_t sub_1C93A965C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aY_8, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C93A96B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aY_8, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CKImplementingCC.SessionAcquisitionEvent<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a4;
  v6 = *(a2 + 16);
  v7 = _s23SessionAcquisitionEventO17BlockedCodingKeysOMa(255, v6, a3, a4);
  v8 = sub_1C939D48C();
  swift_getWitnessTable(v8, v7);
  sub_1C93AB0D8();
  v61 = v9;
  v62 = v7;
  type metadata accessor for KeyedEncodingContainer();
  sub_1C939D44C();
  v64 = v11;
  v65 = v10;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C939ED24();
  v63 = v13;
  v14 = sub_1C93AB0B4();
  ready = _s23SessionAcquisitionEventO15ReadyCodingKeysOMa(v14, v15, v16, v17);
  v19 = sub_1C93AB07C();
  swift_getWitnessTable(v19, ready);
  sub_1C93AB0D8();
  v57 = ready;
  v55[1] = v20;
  type metadata accessor for KeyedEncodingContainer();
  sub_1C939D44C();
  v59 = v22;
  v60 = v21;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C939ED24();
  v56 = v24;
  sub_1C939D47C();
  v58 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C93A59A8();
  v55[0] = v28 - v27;
  sub_1C939D47C();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C93A59A8();
  v34 = (v33 - v32);
  v67 = v6;
  v37 = _s23SessionAcquisitionEventO10CodingKeysOMa(255, v6, v35, v36);
  v38 = sub_1C93AB064();
  swift_getWitnessTable(v38, v37);
  type metadata accessor for KeyedEncodingContainer();
  sub_1C939D44C();
  v69 = v40;
  v70 = v39;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v55 - v42;
  sub_1C93A4890(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v30 + 16))(v34, v68, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = *v34;
    v73 = 1;
    v45 = v70;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v72 = v44;
    sub_1C93A9BAC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v46 = sub_1C93AB0E4();
    v47(v46);
    return (*(v69 + 8))(v43, v45);
  }

  else
  {
    v49 = v58;
    v50 = v55[0];
    v51 = v67;
    (*(v58 + 32))(v55[0], v34, v67);
    v71 = 0;
    v52 = v56;
    v53 = v70;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54 = v60;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v59 + 8))(v52, v54);
    (*(v49 + 8))(v50, v51);
    return (*(v69 + 8))(v43, v53);
  }
}

unint64_t sub_1C93A9BAC()
{
  result = qword_1EC39AAA8;
  if (!qword_1EC39AAA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionReadinessError, &type metadata for SessionReadinessError, v0, v1);
    atomic_store(result, &qword_1EC39AAA8);
  }

  return result;
}

uint64_t CKImplementingCC.SessionAcquisitionEvent<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v86 = a3;
  v94 = a5;
  v7 = _s23SessionAcquisitionEventO17BlockedCodingKeysOMa(255, a2, a3, a4);
  v8 = sub_1C939D48C();
  swift_getWitnessTable(v8, v7);
  sub_1C93AB0D8();
  v90 = v9;
  v91 = v7;
  v85 = type metadata accessor for KeyedDecodingContainer();
  sub_1C939D44C();
  v84 = v10;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C939ED24();
  v92 = v12;
  v13 = sub_1C93AB0B4();
  ready = _s23SessionAcquisitionEventO15ReadyCodingKeysOMa(v13, v14, v15, v16);
  v18 = sub_1C93AB07C();
  swift_getWitnessTable(v18, ready);
  sub_1C93AB0D8();
  v88 = ready;
  v87 = v19;
  v83 = type metadata accessor for KeyedDecodingContainer();
  sub_1C939D44C();
  v82 = v20;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C939ED24();
  v89 = v22;
  v23 = sub_1C93AB0B4();
  v27 = _s23SessionAcquisitionEventO10CodingKeysOMa(v23, v24, v25, v26);
  v28 = sub_1C93AB064();
  swift_getWitnessTable(v28, v27);
  v95 = type metadata accessor for KeyedDecodingContainer();
  sub_1C939D44C();
  v98 = v29;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v78 - v31;
  v97 = a2;
  v35 = type metadata accessor for CKImplementingCC.SessionAcquisitionEvent(0, a2, v33, v34);
  sub_1C939D44C();
  v93 = v36;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v78 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v78 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v78 - v44;
  v46 = a1;
  v47 = a1[3];
  v104 = v46;
  sub_1C93A4890(v46, v47);
  v96 = v32;
  v48 = v99;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v48)
  {
    v81 = v43;
    v79 = v40;
    v80 = v45;
    v49 = v96;
    v99 = v35;
    v50 = v95;
    *&v100 = KeyedDecodingContainer.allKeys.getter();
    v51 = type metadata accessor for Array();
    swift_getWitnessTable(MEMORY[0x1E69E6328], v51);
    *&v102 = ArraySlice.init<A>(_:)();
    *(&v102 + 1) = v52;
    *&v103 = v53;
    *(&v103 + 1) = v54;
    v55 = type metadata accessor for ArraySlice();
    swift_getWitnessTable(MEMORY[0x1E69E6978], v55);
    Collection<>.popFirst()();
    v56 = v100;
    if (v100 == 2 || (v78 = v102, v100 = v102, v101 = v103, (Collection.isEmpty.getter() & 1) == 0))
    {
      v59 = type metadata accessor for DecodingError();
      swift_allocError();
      v61 = v60;
      sub_1C93A1890(&qword_1EC39AAB0, "̗");
      *v61 = v99;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v59 - 8) + 104))(v61, *MEMORY[0x1E69E6AF8], v59);
      swift_willThrow();
      (*(v98 + 8))(v49, v50);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v56)
      {
        LOBYTE(v100) = 1;
        sub_1C93AB0C4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v57 = v94;
        sub_1C93AA324();
        v58 = v85;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v66 = sub_1C93AB094();
        v67(v66, v58);
        v68 = sub_1C93AB0A4();
        v69(v68);
        sub_1C939ED14();
        swift_unknownObjectRelease();
        v70 = v79;
        *v79 = v100;
        v71 = v99;
        swift_storeEnumTagMultiPayload();
        v72 = *(v93 + 32);
        v73 = v80;
        v72(v80, v70, v71);
      }

      else
      {
        LOBYTE(v100) = 0;
        sub_1C93AB0C4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v62 = v93;
        v63 = v81;
        v64 = v83;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v74 = sub_1C93AB094();
        v75(v74, v64);
        v76 = sub_1C93AB0A4();
        v77(v76);
        sub_1C939ED14();
        swift_unknownObjectRelease();
        v71 = v99;
        swift_storeEnumTagMultiPayload();
        v72 = *(v62 + 32);
        v73 = v80;
        v72(v80, v63, v71);
        v57 = v94;
      }

      v72(v57, v73, v71);
    }
  }

  return sub_1C939EA94(v104);
}

unint64_t sub_1C93AA324()
{
  result = qword_1EC39AAB8[0];
  if (!qword_1EC39AAB8[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SessionReadinessError, &type metadata for SessionReadinessError, v0, v1);
    atomic_store(result, qword_1EC39AAB8);
  }

  return result;
}

uint64_t static CKImplementingCC.SessionAcquisitionEvent<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35[1] = a4;
  v37 = a1;
  v38 = a2;
  sub_1C939D47C();
  v36 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C93A59A8();
  v35[0] = v8 - v7;
  v11 = type metadata accessor for CKImplementingCC.SessionAcquisitionEvent(0, v9, v9, v10);
  sub_1C939D44C();
  v13 = v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v35 - v18;
  swift_getTupleTypeMetadata2();
  sub_1C939D44C();
  v35[2] = v20;
  sub_1C939D440();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v35 - v23;
  v25 = *(v22 + 48);
  v26 = *(v13 + 16);
  v26(v35 - v23, v37, v11);
  v26(&v24[v25], v38, v11);
  sub_1C93AB0E4();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26(v19, v24, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v28 = v36;
      v29 = &v24[v25];
      v30 = v35[0];
      (*(v36 + 32))(v35[0], v29, a3);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v28 + 8);
      v31(v30, a3);
      v31(v19, a3);
      goto LABEL_8;
    }

    (*(v36 + 8))(v19, a3);
    goto LABEL_6;
  }

  v26(v17, v24, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:
    v27 = 0;
    goto LABEL_8;
  }

  v27 = *v17 == v24[v25];
LABEL_8:
  v32 = sub_1C93AB0E4();
  v33(v32);
  return v27 & 1;
}

uint64_t CKImplementingCC.SessionAcquisitionEvent<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v12, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v10;
    MEMORY[0x1CCA87E40](1);
    return MEMORY[0x1CCA87E40](v13);
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x1CCA87E40](0);
    dispatch thunk of Hashable.hash(into:)();
    v15 = sub_1C93AB0E4();
    return v16(v15);
  }
}

Swift::Int CKImplementingCC.SessionAcquisitionEvent<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  CKImplementingCC.SessionAcquisitionEvent<A>.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_1C93AA900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  CKImplementingCC.SessionAcquisitionEvent<A>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

BOOL static CKImplementingCC.SessionAcquisitionEvent<A>.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    if (a2[1])
    {
      return *a1 == *a2;
    }

    return 0;
  }

  return (a2[1] & 1) == 0;
}

uint64_t sub_1C93AA9E4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93AAA50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_23:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_23;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1C93AAB70(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t _s7PersonaV7PayloadO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C93AADB8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C93AAE84(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of CKImplementingCC.ContainerProtocol.allowListedBundleIDs()(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v4 = sub_1C93AB480(v3);

  return v5(v4);
}

uint64_t dispatch thunk of CKImplementingCC.ContainerProtocol.quotaAvailable()(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v4 = sub_1C93AB480(v3);

  return v5(v4);
}

uint64_t sub_1C93AB300(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t AnonymousSession.containerID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration + 8);
  v3 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t AnonymousSession.resolvedUserPersonaUniqueString.getter()
{
  v1 = v0 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_acquiredInfo;
  v2 = *(v1 + *(type metadata accessor for AnonymousSession.AcquiredInfo(0) + 24));

  return v2;
}

uint64_t AnonymousSession.__allocating_init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  AnonymousSession.init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t AnonymousSession.init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v68 = a6;
  v69 = a7;
  v66 = a4;
  v67 = a5;
  v71 = a3;
  v72 = a1;
  v65 = type metadata accessor for SessionValidity(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93A59A8();
  v63 = (v12 - v11);
  v13 = sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  v14 = *(v13 - 8);
  v64 = v13 - 8;
  v70 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v59 - v15;
  v16 = type metadata accessor for AnySessionAcquiredInfo(0);
  v17 = (v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C93A59A8();
  v20 = v19 - v18;
  v21 = type metadata accessor for AnonymousSession.AcquiredInfo(0);
  v22 = (v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C93A59A8();
  v25 = v24 - v23;
  v27 = *a2;
  v26 = a2[1];
  v28 = *(a2 + 16);
  v29 = *(a2 + 17);
  v30 = a2[3];
  v59 = a2[4];
  v60 = v26;
  v61 = v8;
  sub_1C93AC9A0(v72, v8 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_id, type metadata accessor for SessionID);
  v31 = v8 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration;
  v32 = v59;
  v33 = v60;
  *v31 = v27;
  *(v31 + 8) = v33;
  *(v31 + 16) = v28;
  *(v31 + 17) = v29;
  *(v31 + 24) = v30;
  *(v31 + 32) = v32;
  sub_1C93AC9A0(v71, v20, type metadata accessor for AnySessionAcquiredInfo);
  v34 = v22[9];
  v35 = (v25 + v22[8]);
  v36 = type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A1710(v25 + v34, 1, 1, v36);
  sub_1C93AC9A0(v20, v25, type metadata accessor for SessionID);
  v37 = (v20 + v17[7]);
  v38 = *v37;
  v39 = v37[1];
  v40 = (v25 + v22[7]);
  *v40 = v38;
  v40[1] = v39;
  v41 = (v20 + v17[9]);
  v42 = v41[1];
  *v35 = *v41;
  v35[1] = v42;
  v43 = v17[11];
  sub_1C93A1988(v38, v39);

  sub_1C93ABA20(v25 + v34);
  sub_1C93A1DE4(v20 + v43, v25 + v34);
  sub_1C93ACA00(v20, type metadata accessor for AnySessionAcquiredInfo);
  v44 = v61;
  sub_1C93AC8F8(v25, v61 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_acquiredInfo, type metadata accessor for AnonymousSession.AcquiredInfo);
  v45 = (v44 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_anyContainer);
  v46 = v44;
  v47 = v67;
  *v45 = v66;
  v45[1] = v47;
  v49 = v68;
  v48 = v69;
  v50 = v63;
  *v63 = v68;
  *(v50 + 8) = v48;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  sub_1C93A1478(v49, v48);
  v51 = v62;
  *v62 = 0;
  v52 = *(v64 + 36);
  v53 = sub_1C93A1890(&qword_1EC39AC48, &unk_1C93FDC90);
  bzero(&v51[v52], *(*(v53 - 8) + 64));
  sub_1C93AC8F8(v50, &v51[v52], type metadata accessor for SessionValidity);
  memcpy((v46 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_sessionValidity), v51, v70);
  ObjectType = swift_getObjectType();
  v55 = swift_allocObject();
  swift_weakInit();
  v56 = *(v47 + 32);

  v56(sub_1C93ABAFC, v55, ObjectType, v47);
  swift_unknownObjectRelease();
  sub_1C93A14F4(v49, v48);
  sub_1C93ACA00(v71, type metadata accessor for AnySessionAcquiredInfo);
  sub_1C93ACA5C();
  sub_1C93ACA00(v72, v57);

  return v46;
}

uint64_t sub_1C93ABA20(uint64_t a1)
{
  v2 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C93ABA88(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C93B3514(v4, a2);
  }

  return result;
}

void sub_1C93ABB04(uint64_t a1)
{
  type metadata accessor for SessionValidity(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C93A59A8();
  v5 = (v4 - v3);
  v6 = type metadata accessor for SessionInvalidationContext(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C93A59A8();
  v9 = v8 - v7;
  v10 = (a1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_sessionValidity);
  os_unfair_lock_lock(v10);
  v11 = sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  sub_1C93AC9A0(v10 + *(v11 + 28), v5, type metadata accessor for SessionValidity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v5;
    v13 = sub_1C93A1890(&qword_1EC39AC70, &qword_1C93FDD98);
    sub_1C93AC8F8(&v5[*(v13 + 48)], v9, type metadata accessor for SessionInvalidationContext);
    type metadata accessor for CloudCoreError(0);
    sub_1C93AC958(&qword_1EC39AC78, type metadata accessor for CloudCoreError, protocol conformance descriptor for CloudCoreError);
    swift_allocError();
    v15 = v14;
    v16 = sub_1C93A1890(&qword_1EC39AC80, &qword_1C93FDDA0);
    v17 = *(v16 + 48);
    *v15 = v12;
    sub_1C93AC9A0(v9, &v15[v17], type metadata accessor for SessionInvalidationContext);
    sub_1C93A1710(v15, 0, 4, v16);
    swift_willThrow();
    v18 = type metadata accessor for SessionInvalidationContext;
    v19 = v9;
  }

  else
  {
    sub_1C93ACA74();
    v19 = v5;
  }

  sub_1C93ACA00(v19, v18);
  os_unfair_lock_unlock(v10);
}

void _s17CloudCoreInternal16AnonymousSessionC04withE8ValidityyxxAA0eG0OzYuq_YKYTXEq_YKs5ErrorR_r0_lF(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  sub_1C93A59A8();
  v13 = v12 - v11;
  v14 = (v6 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_sessionValidity);
  os_unfair_lock_lock((v6 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_sessionValidity));
  v15 = sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  a1(v14 + *(v15 + 28), v13);
  if (v7)
  {
    (*(v10 + 32))(a6, v13, a4);
  }

  type metadata accessor for SessionValidity(0);
  os_unfair_lock_unlock(v14);
}

uint64_t AnonymousSession.deinit(uint64_t a1)
{
  sub_1C93ACA5C();
  sub_1C93ACA00(v1 + v2, v3);

  sub_1C939D4A4();
  sub_1C93ACA00(v1 + v4, v5);
  swift_unknownObjectRelease();
  v6 = v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_sessionValidity;
  sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  sub_1C93ACA74();
  sub_1C93ACA00(v6 + v7, v8);
  return v1;
}

uint64_t AnonymousSession.__deallocating_deinit(uint64_t a1)
{
  AnonymousSession.deinit(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1C93ABFFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = AnonymousSession.__allocating_init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)(a1, a2, a3, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

void sub_1C93AC024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s17CloudCoreInternal16AnonymousSessionC04withE8ValidityyxxAA0eG0OzYuq_YKYTXEq_YKs5ErrorR_r0_lF(v10, v13, v14, v15, v16, v12);
  if (v6)
  {
    (*(v9 + 32))(a6, v12, a4);
  }
}

uint64_t AnonymousSession.propertyDescriptions.getter()
{
  v1 = v0;
  v56 = type metadata accessor for AnonymousSession.AcquiredInfo(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C93A59B8();
  v55 = v3 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v51 - v6;
  v7 = type metadata accessor for OSLogPrivacy();
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C93A59B8();
  v57 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - v11;
  type metadata accessor for SessionID(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C93A59B8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v20 = (type metadata accessor for PropertyDescription(0) - 8);
  v21 = *v20;
  v59 = *(*v20 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  v53 = v23;
  *(v23 + 16) = xmmword_1C93FDC70;
  v24 = (v23 + v22);
  v51 = v0;
  sub_1C93AC9A0(v0 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_id, v19, type metadata accessor for SessionID);
  static OSLogPrivacy.public.getter();
  sub_1C93AC9A0(v19, v16, type metadata accessor for SessionID);
  v25 = String.init<A>(describing:)();
  v27 = v26;
  v52 = MEMORY[0x1E69E93B0];
  v28 = v57;
  sub_1C93AC9A0(v12, v57, MEMORY[0x1E69E93B0]);
  v29 = v20[8];
  static OSLogPrivacy.auto.getter();
  v58 = MEMORY[0x1E69E93B0];
  sub_1C93ACA00(v12, MEMORY[0x1E69E93B0]);
  *v24 = 25705;
  v24[1] = 0xE200000000000000;
  v24[2] = v25;
  v24[3] = v27;
  sub_1C93A8768(v28, v24 + v29);
  sub_1C93ACA5C();
  sub_1C93ACA00(v19, v30);
  v31 = v24 + v59;
  v32 = v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration;
  v34 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration);
  v33 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration + 8);
  LOBYTE(v1) = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration + 16);
  LOBYTE(v16) = *(v32 + 17);
  v35 = *(v32 + 24);
  v36 = *(v32 + 32);
  static OSLogPrivacy.auto.getter();
  v60 = v34;
  v61 = v33;
  v62 = v1;
  v63 = v16;
  v64 = v35;
  v65 = v36;

  v37 = String.init<A>(describing:)();
  v39 = v38;
  v40 = v57;
  v41 = v52;
  sub_1C93AC9A0(v12, v57, v52);
  v42 = v20[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93ACA00(v12, v58);
  strcpy(v31, "configuration");
  *(v31 + 7) = -4864;
  *(v31 + 2) = v37;
  *(v31 + 3) = v39;
  sub_1C93A8768(v40, &v31[v42]);
  v43 = v24 + 2 * v59;
  v44 = v54;
  sub_1C93AC9A0(v51 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_acquiredInfo, v54, type metadata accessor for AnonymousSession.AcquiredInfo);
  static OSLogPrivacy.auto.getter();
  sub_1C93AC9A0(v44, v55, type metadata accessor for AnonymousSession.AcquiredInfo);
  v45 = String.init<A>(describing:)();
  v47 = v46;
  sub_1C93AC9A0(v12, v40, v41);
  v48 = v20[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93ACA00(v12, v58);
  strcpy(v43, "acquiredInfo");
  v43[13] = 0;
  *(v43 + 7) = -5120;
  *(v43 + 2) = v45;
  *(v43 + 3) = v47;
  sub_1C93A8768(v40, &v43[v48]);
  sub_1C939D4A4();
  sub_1C93ACA00(v44, v49);
  return v53;
}

unint64_t sub_1C93AC5C0()
{
  result = qword_1EC39AC50;
  if (!qword_1EC39AC50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession.Configuration, &type metadata for AnonymousSession.Configuration, v0, v1);
    atomic_store(result, &qword_1EC39AC50);
  }

  return result;
}

uint64_t sub_1C93AC614(uint64_t a1)
{
  result = sub_1C93AC958(&qword_1EC39AC58, type metadata accessor for AnonymousSession, protocol conformance descriptor for AnonymousSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for AnonymousSession(uint64_t a1)
{
  result = qword_1EE02B140;
  if (!qword_1EE02B140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C93AC700(uint64_t a1)
{
  result = sub_1C93AC958(&qword_1EC39AC68, type metadata accessor for AnonymousSession, protocol conformance descriptor for AnonymousSession);
  *(a1 + 8) = result;
  return result;
}

void sub_1C93AC760(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AnonymousSession.AcquiredInfo(319);
    if (v2 <= 0x3F)
    {
      sub_1C93AC8A0(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C93AC8A0(uint64_t a1)
{
  if (!qword_1EE02C190)
  {
    type metadata accessor for SessionValidity(255);
    v1 = type metadata accessor for Mutex();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE02C190);
    }
  }
}

uint64_t sub_1C93AC8F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C939D430();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C93AC958(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1C93AC9A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C939D430();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C93ACA00(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C939D430();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t AnonymousSession.AcquiredInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnonymousSession.AcquiredInfo(0);
  v5 = v4[7];
  v6 = (a2 + v4[6]);
  v7 = type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A1710(a2 + v5, 1, 1, v7);
  sub_1C93AEBA4();
  sub_1C93A5A40();
  sub_1C93AE560();
  v8 = type metadata accessor for AnySessionAcquiredInfo(0);
  v9 = (a1 + v8[5]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a2 + v4[5]);
  *v12 = v11;
  v12[1] = v10;
  v13 = (a1 + v8[7]);
  v14 = v13[1];
  *v6 = *v13;
  v6[1] = v14;
  v15 = v8[9];
  sub_1C93A1988(v11, v10);

  sub_1C93A4838(a2 + v5, &qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A1DE4(a1 + v15, a2 + v5);
  return sub_1C93AE4B8();
}

uint64_t type metadata accessor for AnonymousSession.AcquiredInfo(uint64_t a1)
{
  result = qword_1EE02B1F0;
  if (!qword_1EE02B1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnonymousSession.AcquiredInfo.privilegedInfoHash.getter()
{
  type metadata accessor for AnonymousSession.AcquiredInfo(0);
  v0 = sub_1C93A5A40();
  sub_1C93A1988(v0, v1);
  return sub_1C93A5A40();
}

uint64_t AnonymousSession.AcquiredInfo.privilegedInfoHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AnonymousSession.AcquiredInfo(0) + 20);
  result = sub_1C93A17C8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

void (*AnonymousSession.AcquiredInfo.privilegedInfoHash.modify())()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for AnonymousSession.AcquiredInfo(v0);
  return nullsub_1;
}

uint64_t AnonymousSession.AcquiredInfo.userPersonaUniqueString.getter()
{
  type metadata accessor for AnonymousSession.AcquiredInfo(0);

  return sub_1C93A5A40();
}

uint64_t AnonymousSession.AcquiredInfo.userPersonaUniqueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AnonymousSession.AcquiredInfo(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*AnonymousSession.AcquiredInfo.userPersonaUniqueString.modify())()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for AnonymousSession.AcquiredInfo(v0);
  return nullsub_1;
}

uint64_t AnonymousSession.AcquiredInfo.previousInvalidationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AnonymousSession.AcquiredInfo(0) + 28);

  return sub_1C93A1DE4(v3, a1);
}

uint64_t AnonymousSession.AcquiredInfo.previousInvalidationContext.setter()
{
  v2 = sub_1C93A59DC();
  v3 = v1 + *(type metadata accessor for AnonymousSession.AcquiredInfo(v2) + 28);

  return sub_1C93A1820(v0, v3);
}

void (*AnonymousSession.AcquiredInfo.previousInvalidationContext.modify())()
{
  v0 = sub_1C93A59DC();
  type metadata accessor for AnonymousSession.AcquiredInfo(v0);
  return nullsub_1;
}

BOOL static AnonymousSession.AcquiredInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionInvalidationContext(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C93A59A8();
  v7 = v6 - v5;
  v8 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v8);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = sub_1C93A1890(&qword_1EC39A9F8, &qword_1C93FCE08);
  sub_1C939D430();
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for AnonymousSession.AcquiredInfo(0);
  if ((MEMORY[0x1CCA874A0](*(a1 + v16[5]), *(a1 + v16[5] + 8), *(a2 + v16[5]), *(a2 + v16[5] + 8)) & 1) == 0)
  {
    return 0;
  }

  v17 = v16[6];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }

    v22 = *v18 == *v20 && v19 == v21;
    if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v23 = v16[7];
  v24 = *(v12 + 48);
  sub_1C93A1DE4(a1 + v23, v15);
  sub_1C93A1DE4(a2 + v23, &v15[v24]);
  sub_1C93AEBD4(v15);
  if (v22)
  {
    sub_1C93AEBD4(&v15[v24]);
    if (v22)
    {
      sub_1C93A4838(v15, &qword_1EC39A9F0, &qword_1C93FCE00);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1C93A1DE4(v15, v11);
  sub_1C93AEBD4(&v15[v24]);
  if (v25)
  {
    sub_1C93AEB74();
    sub_1C93AE4B8();
LABEL_20:
    sub_1C93A4838(v15, &qword_1EC39A9F8, &qword_1C93FCE08);
    return 0;
  }

  sub_1C93AEB5C();
  sub_1C93AE50C();
  v27 = static SessionInvalidationContext.== infix(_:_:)(v11, v7);
  sub_1C93AE4B8();
  sub_1C93AE4B8();
  sub_1C93A4838(v15, &qword_1EC39A9F0, &qword_1C93FCE00);
  return (v27 & 1) != 0;
}

uint64_t sub_1C93AD120(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C9405FF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001C9406060 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001BLL && 0x80000001C9406010 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C93AD290(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      v3 = 5;
      goto LABEL_5;
    case 3:
      v3 = 9;
LABEL_5:
      result = v3 | 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93AD330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93AD120(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93AD358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93AD288();
  *a1 = result;
  return result;
}

uint64_t sub_1C93AD380(uint64_t a1)
{
  v2 = sub_1C93AE464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93AD3BC(uint64_t a1)
{
  v2 = sub_1C93AE464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnonymousSession.AcquiredInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C93A1890(&qword_1EC39AC88, &qword_1C93FDDA8);
  sub_1C939D44C();
  v7 = v6;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93AE464();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  type metadata accessor for SessionID(0);
  sub_1C93AEB8C();
  sub_1C93AE748(v11, v12, protocol conformance descriptor for SessionID);
  sub_1C93AEBF4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = (v3 + *(type metadata accessor for AnonymousSession.AcquiredInfo(0) + 20));
    v14 = v13[1];
    v19 = *v13;
    v20 = v14;
    v18[15] = 1;
    sub_1C93A1988(v19, v14);
    sub_1C93A4928();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A17C8(v19, v20);
    LOBYTE(v19) = 2;
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v19) = 3;
    type metadata accessor for SessionInvalidationContext(0);
    sub_1C93AEBBC();
    sub_1C93AE748(v15, v16, protocol conformance descriptor for SessionInvalidationContext);
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

void AnonymousSession.AcquiredInfo.hash(into:)()
{
  v1 = sub_1C93A59DC();
  type metadata accessor for SessionInvalidationContext(v1);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C93A59A8();
  v3 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v3);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - v5;
  type metadata accessor for UUID();
  sub_1C93AE748(&qword_1EC39AA08, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  dispatch thunk of Hashable.hash(into:)();
  v7 = type metadata accessor for AnonymousSession.AcquiredInfo(0);
  Data.hash(into:)();
  if (*(v0 + *(v7 + 24) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1C93A1DE4(v0 + *(v7 + 28), v6);
  sub_1C93AEBD4(v6);
  if (v8)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_1C93AEB5C();
    sub_1C93AE50C();
    Hasher._combine(_:)(1u);
    SessionInvalidationContext.hash(into:)();
    sub_1C93AEB74();
    sub_1C93AE4B8();
  }
}

Swift::Int AnonymousSession.AcquiredInfo.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnonymousSession.AcquiredInfo.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AnonymousSession.AcquiredInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v3);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  type metadata accessor for SessionID(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C93A59A8();
  v35 = v9 - v8;
  v36 = sub_1C93A1890(&qword_1EC39AC98, &qword_1C93FDDB0);
  sub_1C939D44C();
  v34 = v10;
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for AnonymousSession.AcquiredInfo(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C93A59A8();
  v18 = v17 - v16;
  v20 = *(v19 + 28);
  v21 = type metadata accessor for SessionInvalidationContext(0);
  v39 = v18;
  v40 = v20;
  sub_1C93A1710(v18 + v20, 1, 1, v21);
  sub_1C93A4890(a1, a1[3]);
  sub_1C93AE464();
  v37 = v13;
  v22 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    sub_1C939EA94(a1);
    return sub_1C93A4838(v39 + v40, &qword_1EC39A9F0, &qword_1C93FCE00);
  }

  else
  {
    v23 = v34;
    v38 = v6;
    LOBYTE(v41) = 0;
    sub_1C93AEB8C();
    sub_1C93AE748(v24, v25, protocol conformance descriptor for SessionID);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v39;
    sub_1C93AE50C();
    v42 = 1;
    sub_1C93A4A6C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v26 + *(v14 + 20)) = v41;
    LOBYTE(v41) = 2;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = (v26 + *(v14 + 24));
    *v28 = v27;
    v28[1] = v29;
    LOBYTE(v41) = 3;
    sub_1C93AEBBC();
    sub_1C93AE748(v30, v31, protocol conformance descriptor for SessionInvalidationContext);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v23 + 8))(v37, v36);
    sub_1C93A1820(v38, v26 + v40);
    sub_1C93AE560();
    sub_1C939EA94(a1);
    return sub_1C93AE4B8();
  }
}

Swift::Int sub_1C93ADCE0(uint64_t a1)
{
  Hasher.init(_seed:)();
  AnonymousSession.AcquiredInfo.hash(into:)();
  return Hasher._finalize()();
}

void *AnonymousSession.AcquiredInfo.propertyDescriptions.getter()
{
  v0 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v0);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v1);
  v72 = v66 - v2;
  v73 = type metadata accessor for SessionInvalidationContext(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C93A59B8();
  v66[0] = v4 - v5;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v6);
  v66[1] = v66 - v7;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v8);
  v75 = v66 - v9;
  v10 = type metadata accessor for PropertyDescription(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93A59B8();
  v74 = (v12 - v13);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v14);
  v69 = v66 - v15;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v66 - v17);
  v19 = type metadata accessor for OSLogPrivacy();
  v20 = sub_1C93A5A08(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C93A59B8();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  type metadata accessor for SessionID(0);
  sub_1C939D430();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C93A59B8();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v27 = *(v11 + 72);
  v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v71 = v27;
  v66[2] = v28 + v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C93FCDF0;
  v70 = v28;
  v67 = v29;
  v30 = (v29 + v28);
  v31 = v68;
  sub_1C93AE560();
  static OSLogPrivacy.auto.getter();
  sub_1C93AE560();
  v32 = String.init<A>(describing:)();
  v34 = v33;
  sub_1C93AEB18();
  sub_1C93AE560();
  v77 = v10;
  static OSLogPrivacy.auto.getter();
  sub_1C93AEB34();
  *v30 = 0x496E6F6973736573;
  v30[1] = 0xE900000000000044;
  v30[2] = v32;
  v30[3] = v34;
  sub_1C93A5878();
  v35 = v31;
  v76 = v23;
  sub_1C93A4BBC(v23);
  sub_1C939ED30();
  sub_1C93AE4B8();
  v36 = type metadata accessor for AnonymousSession.AcquiredInfo(0);
  v37 = (v31 + v36[6]);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    swift_bridgeObjectRetain_n();
    static OSLogPrivacy.public.getter();
    v78 = v39;
    v79 = v38;
    v40 = String.init<A>(describing:)();
    v41 = v76;
    v42 = v36;
    v43 = v35;
    v45 = v44;
    sub_1C93AEB18();
    sub_1C93AE560();
    static OSLogPrivacy.auto.getter();

    sub_1C93AEB34();
    *v18 = 0xD000000000000017;
    v18[1] = 0x80000001C9406060;
    v18[2] = v40;
    v18[3] = v45;
    v35 = v43;
    v36 = v42;
    sub_1C93A5878();
    sub_1C93A4BBC(v41);
    v46 = sub_1C93A4F7C(1, 2, 1, v67);
    v46[2] = 2;
    sub_1C939D4BC();
    sub_1C93AE50C();
  }

  else
  {
    v46 = v67;
  }

  v47 = v35 + v36[5];
  if (sub_1C93A41A4(*v47, *(v47 + 8)))
  {
    v48 = v72;
  }

  else
  {
    v68 = v36;
    v49 = *v47;
    v50 = *(v47 + 8);
    static OSLogPrivacy.auto.getter();
    v78 = v49;
    v79 = v50;
    sub_1C93A1988(v49, v50);
    v51 = String.init<A>(describing:)();
    v53 = v52;
    sub_1C93AEB18();
    v54 = v76;
    sub_1C93AE560();
    v55 = v69;
    static OSLogPrivacy.auto.getter();
    sub_1C93AEB34();
    *v55 = 0xD000000000000012;
    v55[1] = 0x80000001C9405FF0;
    v55[2] = v51;
    v55[3] = v53;
    sub_1C93A5878();
    sub_1C93A4BBC(v54);
    v57 = v46[2];
    v56 = v46[3];
    if (v57 >= v56 >> 1)
    {
      v46 = sub_1C93A4F7C((v56 > 1), v57 + 1, 1, v46);
    }

    v46[2] = v57 + 1;
    sub_1C939D4BC();
    sub_1C93AE50C();
    v48 = v72;
    v36 = v68;
  }

  sub_1C93A1DE4(v35 + v36[7], v48);
  if (sub_1C93A4810(v48, 1, v73) == 1)
  {
    sub_1C93A4838(v48, &qword_1EC39A9F0, &qword_1C93FCE00);
  }

  else
  {
    sub_1C93AEB5C();
    sub_1C93AE50C();
    sub_1C93AE560();
    static OSLogPrivacy.auto.getter();
    sub_1C93AE560();
    v58 = String.init<A>(describing:)();
    v60 = v59;
    sub_1C93AEB18();
    v61 = v76;
    sub_1C93AE560();
    v62 = v74;
    static OSLogPrivacy.auto.getter();
    sub_1C93AEB34();
    *v62 = 0xD00000000000001BLL;
    v62[1] = 0x80000001C9406010;
    v62[2] = v58;
    v62[3] = v60;
    sub_1C93A5878();
    sub_1C93A4BBC(v61);
    sub_1C93AEB74();
    sub_1C93AE4B8();
    v64 = v46[2];
    v63 = v46[3];
    if (v64 >= v63 >> 1)
    {
      v46 = sub_1C93A4F7C((v63 > 1), v64 + 1, 1, v46);
    }

    sub_1C93AE4B8();
    v46[2] = v64 + 1;
    sub_1C939D4BC();
    sub_1C93AE50C();
  }

  return v46;
}

unint64_t sub_1C93AE464()
{
  result = qword_1EC39AC90;
  if (!qword_1EC39AC90)
  {
    result = swift_getWitnessTable(byte_1C93FDFC4, &_s12AcquiredInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39AC90);
  }

  return result;
}

uint64_t sub_1C93AE4B8()
{
  v1 = sub_1C93A59DC();
  v2(v1);
  sub_1C939D430();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C93AE50C()
{
  v1 = sub_1C93A59E8();
  v2(v1);
  sub_1C939D430();
  v3 = sub_1C93A5A40();
  v4(v3);
  return v0;
}

uint64_t sub_1C93AE560()
{
  v1 = sub_1C93A59E8();
  v2(v1);
  sub_1C939D430();
  v3 = sub_1C93A5A40();
  v4(v3);
  return v0;
}

uint64_t sub_1C93AE5FC(void *a1)
{
  a1[1] = sub_1C93AE748(&qword_1EC39ACA8, type metadata accessor for AnonymousSession.AcquiredInfo, protocol conformance descriptor for AnonymousSession.AcquiredInfo);
  a1[2] = sub_1C93AE748(&qword_1EC39ACB0, type metadata accessor for AnonymousSession.AcquiredInfo, protocol conformance descriptor for AnonymousSession.AcquiredInfo);
  result = sub_1C93AE748(&qword_1EC39ACB8, type metadata accessor for AnonymousSession.AcquiredInfo, protocol conformance descriptor for AnonymousSession.AcquiredInfo);
  a1[3] = result;
  return result;
}

uint64_t sub_1C93AE6F0(uint64_t a1)
{
  result = sub_1C93AE748(&qword_1EC39ACC8, type metadata accessor for AnonymousSession.AcquiredInfo, protocol conformance descriptor for AnonymousSession.AcquiredInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93AE748(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_1C93AE7B8(uint64_t a1)
{
  type metadata accessor for SessionID(319);
  if (v1 <= 0x3F)
  {
    sub_1C93AE85C();
    if (v2 <= 0x3F)
    {
      sub_1C93A5334(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C93AE85C()
{
  if (!qword_1EE02C1D8[0])
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_1EE02C1D8);
    }
  }
}

uint64_t _s12AcquiredInfoV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
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

_BYTE *_s12AcquiredInfoV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
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
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93AEA14()
{
  result = qword_1EC39ACD0;
  if (!qword_1EC39ACD0)
  {
    result = swift_getWitnessTable(byte_1C93FDF9C, &_s12AcquiredInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39ACD0);
  }

  return result;
}

unint64_t sub_1C93AEA6C()
{
  result = qword_1EC39ACD8;
  if (!qword_1EC39ACD8)
  {
    result = swift_getWitnessTable(aP, &_s12AcquiredInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39ACD8);
  }

  return result;
}

unint64_t sub_1C93AEAC4()
{
  result = qword_1EC39ACE0;
  if (!qword_1EC39ACE0)
  {
    result = swift_getWitnessTable(byte_1C93FDF34, &_s12AcquiredInfoV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39ACE0);
  }

  return result;
}

uint64_t sub_1C93AEB34()
{

  return sub_1C93AE4B8();
}

uint64_t AnonymousSession.Configuration.containerID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t AnonymousSession.Configuration.containerID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t AnonymousSession.Configuration.application.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t AnonymousSession.Configuration.application.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t static AnonymousSession.Configuration.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE02B238 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EE02B248;
  v3 = byte_1EE02B250;
  *a1 = qword_1EE02B240;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

uint64_t static AnonymousSession.Configuration.standard(containerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
}

BOOL static AnonymousSession.Configuration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v5 = a1[3];
  v4 = a1[4];
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    v11 = 0;
    if (v2 != v6)
    {
      return v11;
    }
  }

  else
  {
    v11 = 0;
    if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v2 ^ v6))
    {
      return v11;
    }
  }

  if (((v3 ^ v7) & 1) == 0)
  {
    v14[0] = v5;
    v14[1] = v4;
    v13[0] = v9;
    v13[1] = v8;

    v11 = static BundleID.== infix(_:_:)(v14, v13);
  }

  return v11;
}

uint64_t sub_1C93AEE90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000444972;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1C93AEFAC(char a1)
{
  if (!a1)
  {
    return 0x656E6961746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6D6574737973;
  }

  return 0x746163696C707061;
}

uint64_t sub_1C93AF018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93AEE90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93AF040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93AEFA4();
  *a1 = result;
  return result;
}

uint64_t sub_1C93AF068(uint64_t a1)
{
  v2 = sub_1C93AFAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93AF0A4(uint64_t a1)
{
  v2 = sub_1C93AFAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnonymousSession.Configuration.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39ACE8, &qword_1C93FE018);
  sub_1C939D44C();
  v21 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v25 = *(v1 + 17);
  v11 = v1[3];
  v18 = v1[4];
  v19 = v11;
  sub_1C93A4890(a1, a1[3]);
  sub_1C93AFAFC();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v26 = 0;
  sub_1C93A814C();
  sub_1C93B0254();
  v12 = v20;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (v12)
  {
    return (*(v21 + 8))(v7, v3);
  }

  v14 = v18;
  v15 = v19;
  v16 = v21;
  LOBYTE(v22) = v25;
  v26 = 1;
  sub_1C93AFB50();
  sub_1C93B0254();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v22 = v15;
  v23 = v14;
  v26 = 2;
  sub_1C93AFBA4();

  sub_1C93B0254();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v16 + 8))(v7, v3);
}

uint64_t AnonymousSession.Configuration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v4 = *(v1 + 32);
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v2);
  Hasher._combine(_:)(v3);
  if (!v4)
  {
    return MEMORY[0x1CCA87E40](0);
  }

  MEMORY[0x1CCA87E40](1);

  return String.hash(into:)();
}

Swift::Int AnonymousSession.Configuration.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  v3 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v1);
  Hasher._combine(_:)(v2);
  if (v3)
  {
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  return Hasher._finalize()();
}

uint64_t AnonymousSession.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C93A1890(&qword_1EC39AD08, &qword_1C93FE020);
  sub_1C939D44C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C93A4890(a1, a1[3]);
  sub_1C93AFAFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1C939EA94(a1);
  }

  sub_1C93A849C();
  sub_1C93B021C(&type metadata for ContainerID);
  sub_1C93AFBF8();
  sub_1C93B021C(&type metadata for AnonymousSession.Configuration.System);
  sub_1C93AFC4C();
  sub_1C93B021C(&type metadata for AnonymousSession.Configuration.Application);
  v7 = sub_1C93B0244();
  v8(v7);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 17) = v9;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;

  sub_1C939EA94(a1);
}

Swift::Int sub_1C93AF670(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v6[9] = *v1;
  v6[10] = v2;
  v7 = v3;
  v8 = v4;
  v9 = *(v1 + 24);
  Hasher.init(_seed:)();
  AnonymousSession.Configuration.hash(into:)(v6);
  return Hasher._finalize()();
}

uint64_t AnonymousSession.Configuration.propertyDescriptions.getter()
{
  v1 = type metadata accessor for PropertyDescription(0);
  v34 = *(v1 - 8);
  v2 = v34;
  v3 = MEMORY[0x1EEE9AC00](v1);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v31 - v5);
  v7 = type metadata accessor for OSLogPrivacy();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *v0;
  v14 = v0[1];
  v15 = *(v0 + 16);
  v35 = *(v0 + 17);
  v16 = v0[4];
  v32 = v0[3];
  v36 = v16;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v17 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v34 = *(v2 + 72);
  v31 = v17 + v34;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C93FCDF0;
  v33 = v17;
  v19 = (v18 + v17);
  static OSLogPrivacy.public.getter();
  v38 = v13;
  v39 = v14;
  v40 = v15;

  String.init<A>(describing:)();
  sub_1C93B0264();
  v20 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v12);
  *v19 = 0x656E6961746E6F63;
  v19[1] = 0xEB00000000444972;
  v19[2] = v17;
  v19[3] = v14;
  sub_1C93A8768(v10, v18 + v17 + v20);
  if (v35 == 1)
  {
    static OSLogPrivacy.auto.getter();
    LOBYTE(v38) = 1;
    String.init<A>(describing:)();
    sub_1C93B0264();
    v21 = *(v1 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v12);
    *v6 = 0x6D6574737973;
    v6[1] = 0xE600000000000000;
    v6[2] = v17;
    v6[3] = v14;
    sub_1C93A8768(v10, v6 + v21);
    v18 = sub_1C93A4F7C(1, 2, 1, v18);
    *(v18 + 16) = 2;
    sub_1C93A87CC(v6, v18 + v31);
  }

  v22 = v36;
  v23 = v37;
  if (v36)
  {
    static OSLogPrivacy.auto.getter();
    v38 = v32;
    v39 = v22;

    v24 = String.init<A>(describing:)();
    v26 = v25;
    sub_1C93A86A8(v12, v10);
    v27 = *(v1 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v12);
    *v23 = 0x746163696C707061;
    v23[1] = 0xEB000000006E6F69;
    v23[2] = v24;
    v23[3] = v26;
    sub_1C93A8768(v10, v23 + v27);
    v29 = *(v18 + 16);
    v28 = *(v18 + 24);
    if (v29 >= v28 >> 1)
    {
      v18 = sub_1C93A4F7C((v28 > 1), v29 + 1, 1, v18);
    }

    *(v18 + 16) = v29 + 1;
    sub_1C93A87CC(v23, v18 + v33 + v29 * v34);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  return v18;
}

unint64_t sub_1C93AFAFC()
{
  result = qword_1EC39ACF0;
  if (!qword_1EC39ACF0)
  {
    result = swift_getWitnessTable(aM_0, &_s13ConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39ACF0);
  }

  return result;
}

unint64_t sub_1C93AFB50()
{
  result = qword_1EC39ACF8;
  if (!qword_1EC39ACF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession.Configuration.System, &type metadata for AnonymousSession.Configuration.System, v0, v1);
    atomic_store(result, &qword_1EC39ACF8);
  }

  return result;
}

unint64_t sub_1C93AFBA4()
{
  result = qword_1EC39AD00;
  if (!qword_1EC39AD00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession.Configuration.Application, &type metadata for AnonymousSession.Configuration.Application, v0, v1);
    atomic_store(result, &qword_1EC39AD00);
  }

  return result;
}

unint64_t sub_1C93AFBF8()
{
  result = qword_1EC39AD10;
  if (!qword_1EC39AD10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession.Configuration.System, &type metadata for AnonymousSession.Configuration.System, v0, v1);
    atomic_store(result, &qword_1EC39AD10);
  }

  return result;
}

unint64_t sub_1C93AFC4C()
{
  result = qword_1EC39AD18;
  if (!qword_1EC39AD18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession.Configuration.Application, &type metadata for AnonymousSession.Configuration.Application, v0, v1);
    atomic_store(result, &qword_1EC39AD18);
  }

  return result;
}

unint64_t sub_1C93AFCA4()
{
  result = qword_1EC39ACA0;
  if (!qword_1EC39ACA0)
  {
    v3 = type metadata accessor for AnonymousSession(255);
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession, v3, v0, v1);
    atomic_store(result, &qword_1EC39ACA0);
  }

  return result;
}

unint64_t sub_1C93AFCFC(void *a1)
{
  a1[1] = sub_1C93AFD34();
  a1[2] = sub_1C93AFD88();
  result = sub_1C93AFDDC();
  a1[3] = result;
  return result;
}

unint64_t sub_1C93AFD34()
{
  result = qword_1EC39AD20;
  if (!qword_1EC39AD20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession.Configuration, &type metadata for AnonymousSession.Configuration, v0, v1);
    atomic_store(result, &qword_1EC39AD20);
  }

  return result;
}

unint64_t sub_1C93AFD88()
{
  result = qword_1EC39AD28;
  if (!qword_1EC39AD28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession.Configuration, &type metadata for AnonymousSession.Configuration, v0, v1);
    atomic_store(result, &qword_1EC39AD28);
  }

  return result;
}

unint64_t sub_1C93AFDDC()
{
  result = qword_1EC39AD30;
  if (!qword_1EC39AD30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession.Configuration, &type metadata for AnonymousSession.Configuration, v0, v1);
    atomic_store(result, &qword_1EC39AD30);
  }

  return result;
}

unint64_t sub_1C93AFE34()
{
  result = qword_1EC39AD38;
  if (!qword_1EC39AD38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession.Configuration, &type metadata for AnonymousSession.Configuration, v0, v1);
    atomic_store(result, &qword_1EC39AD38);
  }

  return result;
}

unint64_t sub_1C93AFE88(uint64_t a1)
{
  result = sub_1C93AFEB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93AFEB0()
{
  result = qword_1EC39AD40;
  if (!qword_1EC39AD40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnonymousSession.Configuration, &type metadata for AnonymousSession.Configuration, v0, v1);
    atomic_store(result, &qword_1EC39AD40);
  }

  return result;
}

__n128 sub_1C93AFF04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C93AFF18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C93AFF58(uint64_t result, int a2, int a3)
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

uint64_t _s13ConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s13ConfigurationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C93B0118()
{
  result = qword_1EC39AD48;
  if (!qword_1EC39AD48)
  {
    result = swift_getWitnessTable(asc_1C93FE224, &_s13ConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39AD48);
  }

  return result;
}

unint64_t sub_1C93B0170()
{
  result = qword_1EC39AD50;
  if (!qword_1EC39AD50)
  {
    result = swift_getWitnessTable(asc_1C93FE194, &_s13ConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39AD50);
  }

  return result;
}

unint64_t sub_1C93B01C8()
{
  result = qword_1EC39AD58;
  if (!qword_1EC39AD58)
  {
    result = swift_getWitnessTable(aU_2, &_s13ConfigurationV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC39AD58);
  }

  return result;
}

uint64_t sub_1C93B021C(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1C93B0264()
{

  return sub_1C93A86A8(v1, v0);
}

uint64_t AnonymousSession.Configuration.Application.bundleID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AnonymousSession.Configuration.Application.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t static AnonymousSession.Configuration.Application.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v8[0] = v2;
  v8[1] = v3;
  v7[0] = v5;
  v7[1] = v4;

  LOBYTE(v3) = static BundleID.== infix(_:_:)(v8, v7);

  return v3 & 1;
}

uint64_t sub_1C93B0350(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_1C93B03E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](0);
  return Hasher._finalize()();
}

uint64_t sub_1C93B042C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93B0350(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93B0474@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93A9130();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C93B04A0(uint64_t a1)
{
  v2 = sub_1C93B2248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93B04DC(uint64_t a1)
{
  v2 = sub_1C93B2248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnonymousSession.Configuration.Application.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39AD60, &qword_1C93FE2A0);
  sub_1C939D44C();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = *v1;
  v10 = v1[1];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93B2248();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[0] = v9;
  v12[1] = v10;
  sub_1C93B229C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v5 + 8))(v8, v3);
}

uint64_t AnonymousSession.Configuration.Application.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1CCA87E40](0);
  }

  MEMORY[0x1CCA87E40](1);

  return String.hash(into:)();
}

Swift::Int AnonymousSession.Configuration.Application.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  return Hasher._finalize()();
}

uint64_t AnonymousSession.Configuration.Application.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39AD70, &qword_1C93FE2A8);
  sub_1C939D44C();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1C93A4890(a1, a1[3]);
  sub_1C93B2248();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    sub_1C93B22F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
  }

  return sub_1C939EA94(a1);
}

Swift::Int sub_1C93B08C4(uint64_t a1)
{
  v4 = *v1;
  Hasher.init(_seed:)();
  AnonymousSession.Configuration.Application.hash(into:)(v3);
  return Hasher._finalize()();
}

void AnonymousSession.Configuration.Application.description.getter()
{
  if (*(v0 + 8))
  {

    sub_1C93B1340();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }
}

void sub_1C93B09D0()
{
  sub_1C93A5B40();
  v4 = type metadata accessor for PropertyDescription(0);
  v5 = sub_1C939ED4C(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C939D4D4();
  memcpy(v11, v1, sizeof(v11));
  AnySessionConfiguration.propertyDescriptions.getter();
  sub_1C93B28D0();
  if (v2)
  {
    sub_1C93B288C();
    sub_1C93B2954();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v3, v0, v6);
      sub_1C93B2930();
      sub_1C93B28E8();
      MEMORY[0x1CCA87780](*(v0 + 16), *(v0 + 24));
      sub_1C93B2918();
      sub_1C93B2850();
      if (v8)
      {
        v10 = sub_1C93B28DC(v7);
        sub_1C93B2900(v10);
        sub_1C93B2954();
      }

      sub_1C93B2828();
    }

    while (!v9);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B0B64()
{
  sub_1C93A5B40();
  v3 = type metadata accessor for PropertyDescription(0);
  v4 = sub_1C939ED4C(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C939D4D4();
  ContainerID.propertyDescriptions.getter();
  sub_1C93B28D0();
  if (v1)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v2, v0, v5);

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](*(v0 + 16), *(v0 + 24));
      sub_1C93B2918();
      sub_1C93B2850();
      if (v7)
      {
        v9 = sub_1C93B28DC(v6);
        sub_1C93B2900(v9);
      }

      sub_1C93B2828();
    }

    while (!v8);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B0CE8()
{
  sub_1C93A5B40();
  v3 = type metadata accessor for PropertyDescription(0);
  v4 = sub_1C939ED4C(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C939D4D4();
  Entitlements.propertyDescriptions.getter();
  sub_1C93B28D0();
  if (v1)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B27F8();
      sub_1C93B2680(v2, v0, v5);

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](*(v0 + 16), *(v0 + 24));
      sub_1C93B2918();
      sub_1C93B2850();
      if (v7)
      {
        v9 = sub_1C93B28DC(v6);
        sub_1C93B2900(v9);
      }

      sub_1C93B2828();
    }

    while (!v8);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}

void sub_1C93B0E74()
{
  sub_1C93A5B40();
  v4 = v3;
  v5 = type metadata accessor for PropertyDescription(0);
  v6 = sub_1C939ED4C(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C939D4D4();
  v4();
  sub_1C93B28D0();
  if (v1)
  {
    sub_1C93B288C();
    sub_1C93B2860();
    sub_1C93B28C4();
    do
    {
      sub_1C93B2680(v2, v0, type metadata accessor for PropertyDescription);

      sub_1C93B28E8();
      MEMORY[0x1CCA87780](*(v0 + 16), *(v0 + 24));
      sub_1C93B2918();
      sub_1C93B2850();
      if (v8)
      {
        sub_1C93B2900((v7 > 1));
      }

      sub_1C93B2828();
    }

    while (!v9);

    sub_1C93A1890(&qword_1EC39ADA0, &qword_1C94045C0);
    sub_1C93B2748();
    sub_1C93B2870();
    sub_1C93B28A8();
  }

  else
  {

    sub_1C93B2810();
  }

  sub_1C93B2840();
  sub_1C93A5B58();
}
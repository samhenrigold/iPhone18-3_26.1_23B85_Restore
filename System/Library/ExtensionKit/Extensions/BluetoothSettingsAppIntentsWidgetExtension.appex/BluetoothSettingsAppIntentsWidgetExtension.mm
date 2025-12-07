uint64_t sub_1000014C8()
{
  v0 = sub_100003DB8(&qword_1000142B8, &qword_100009D88);
  __chkstk_darwin(v0 - 8);
  v38 = &v28 - v1;
  v2 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  __chkstk_darwin(v2 - 8);
  v39 = &v28 - v3;
  v4 = sub_100009340();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009390();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100009450();
  __chkstk_darwin(v9 - 8);
  v33 = sub_100009350();
  v10 = *(v33 - 8);
  v11 = __chkstk_darwin(v33);
  v37 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v34 = &v28 - v13;
  sub_100003DB8(&qword_1000142C0, &qword_100009D90);
  v14 = *(sub_100003DB8(&qword_1000142C8, &qword_100009D98) - 8);
  v36 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100009790;
  sub_100009440();
  sub_100009380();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v5 + 104);
  v31 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v32 = v5 + 104;
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v16(v7, v15, v4);
  v17 = v39;
  sub_100009360();
  (*(v10 + 56))(v17, 0, 1, v33);
  v18 = v38;
  sub_1000091B0();
  v19 = sub_1000091C0();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  sub_100003DB8(&qword_1000142D0, &qword_100009DA0);
  v30 = *(v10 + 72);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000097A0;
  sub_100009440();
  sub_100009380();
  v20 = v31;
  v16(v7, v31, v4);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v29 = v4;
  v16(v7, v20, v4);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v16(v7, v20, v4);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v21 = v20;
  v22 = v20;
  v23 = v29;
  v16(v7, v21, v29);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v16(v7, v22, v23);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v16(v7, v22, v23);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v16(v7, v22, v23);
  sub_100009360();
  v24 = v35;
  v25 = v36;
  sub_1000091D0();
  v26 = sub_100003788(v24);
  swift_setDeallocating();
  sub_100003F98(v24 + v25);
  result = swift_deallocClassInstance();
  qword_100014610 = v26;
  return result;
}

uint64_t sub_100001DDC()
{
  v0 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_100009340();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009390();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100009450();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100009350();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000092F0();
  sub_100003F34(v10, qword_100014618);
  sub_100003EFC(v10, qword_100014618);
  sub_100009440();
  sub_100009380();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_100009360();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000092E0();
}

unint64_t sub_1000020D4()
{
  result = qword_1000141E0;
  if (!qword_1000141E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141E0);
  }

  return result;
}

Swift::Int sub_100002128()
{
  sub_100009500();
  sub_100009470();
  return sub_100009510();
}

Swift::Int sub_10000219C(uint64_t a1)
{
  sub_100009500();
  sub_100009470();
  return sub_100009510();
}

uint64_t sub_1000021F0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100010C08;
  v7._object = v3;
  v5 = sub_1000094F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100002268()
{
  result = qword_1000141E8;
  if (!qword_1000141E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141E8);
  }

  return result;
}

unint64_t sub_1000022C0()
{
  result = qword_1000141F0;
  if (!qword_1000141F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141F0);
  }

  return result;
}

uint64_t sub_100002314(uint64_t a1)
{
  v2 = sub_100002268();

  return _EnumURLRepresentation.init(stringLiteral:)(0xD000000000000016, 0x800000010000AA80, a1, v2);
}

unint64_t sub_100002378()
{
  result = qword_1000141F8;
  if (!qword_1000141F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141F8);
  }

  return result;
}

unint64_t sub_1000023D0()
{
  result = qword_100014200;
  if (!qword_100014200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014200);
  }

  return result;
}

unint64_t sub_100002428()
{
  result = qword_100014208;
  if (!qword_100014208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014208);
  }

  return result;
}

uint64_t sub_100002488(uint64_t a1)
{
  sub_100003EA8();
  v2 = sub_100009200();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1000024F8()
{
  result = qword_100014210;
  if (!qword_100014210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014210);
  }

  return result;
}

unint64_t sub_100002550()
{
  result = qword_100014218;
  if (!qword_100014218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014218);
  }

  return result;
}

unint64_t sub_1000025A8()
{
  result = qword_100014220;
  if (!qword_100014220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014220);
  }

  return result;
}

unint64_t sub_100002600()
{
  result = qword_100014228;
  if (!qword_100014228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014228);
  }

  return result;
}

uint64_t sub_1000026BC(uint64_t a1)
{
  v2 = sub_100002268();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000270C()
{
  result = qword_100014230;
  if (!qword_100014230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014230);
  }

  return result;
}

unint64_t sub_100002764()
{
  result = qword_100014238;
  if (!qword_100014238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014238);
  }

  return result;
}

unint64_t sub_1000027BC()
{
  result = qword_100014240;
  if (!qword_100014240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014240);
  }

  return result;
}

uint64_t sub_100002810()
{
  if (qword_100014188 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000286C(uint64_t a1)
{
  v2 = sub_100002600();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000028BC()
{
  result = qword_100014248;
  if (!qword_100014248)
  {
    sub_100002920(&qword_100014250, &qword_100009A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014248);
  }

  return result;
}

uint64_t sub_100002920(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000297C()
{
  result = qword_100014258;
  if (!qword_100014258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014258);
  }

  return result;
}

uint64_t sub_1000029D4()
{
  v0 = sub_100009340();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009390();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100009450();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100009350();
  sub_100003F34(v6, qword_100014630);
  sub_100003EFC(v6, qword_100014630);
  sub_100009440();
  sub_100009380();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100009360();
}

uint64_t sub_100002BC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_100009340();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100009390();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100009450();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100009350();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100009440();
  sub_100009380();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100009360();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_100009170();
  v13 = sub_100009160();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*sub_100002F18(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000090F0();
  return sub_100002F8C;
}

void sub_100002F8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002FD8()
{
  result = qword_100014260;
  if (!qword_100014260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014260);
  }

  return result;
}

unint64_t sub_10000302C()
{
  result = qword_100014268;
  if (!qword_100014268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014268);
  }

  return result;
}

uint64_t sub_100003080(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003E00();
  v5 = sub_100003EA8();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000030F0()
{
  v0 = qword_1000141A0;

  return v0;
}

unint64_t sub_100003130()
{
  result = qword_100014270;
  if (!qword_100014270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014270);
  }

  return result;
}

unint64_t sub_100003188()
{
  result = qword_100014278;
  if (!qword_100014278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014278);
  }

  return result;
}

uint64_t sub_10000328C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100003EFC(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_10000334C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003E00();
  v7 = sub_100003E54();
  v8 = sub_100003EA8();
  *v5 = v2;
  v5[1] = sub_100003420;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100003420()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100003528@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003940();
  *a1 = result;
  return result;
}

uint64_t sub_100003550(uint64_t a1)
{
  v2 = sub_100002FD8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void type metadata accessor for CBManagerState()
{
  if (!qword_100014280)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014280);
    }
  }
}

uint64_t getEnumTagSinglePayload for BluetoothSettingsStaticDeepLinks(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BluetoothSettingsStaticDeepLinks(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void *sub_1000036D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000371C()
{
  sub_100009500();
  sub_100009470();
  v0 = sub_100009510();

  return sub_1000036F0(v0);
}

unint64_t sub_100003788(uint64_t a1)
{
  v2 = sub_100003DB8(&qword_1000142C8, &qword_100009D98);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003DB8(&qword_1000142D8, &unk_100009DA8);
    v7 = sub_1000094E0();
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_100004000(v8, v5);
      result = sub_10000371C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_1000091E0();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
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

uint64_t sub_100003940()
{
  v0 = sub_100009240();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100003DB8(&qword_100014288, &qword_100009D70);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_100009340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009390();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100009450();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100009350();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21 = sub_100003DB8(&qword_100014298, &qword_100009D80);
  sub_100009440();
  sub_100009380();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100009360();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26[0] = 1;
  v18 = sub_1000090B0();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_100002268();
  return sub_100009120();
}

uint64_t sub_100003DB8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100003E00()
{
  result = qword_1000142A0;
  if (!qword_1000142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142A0);
  }

  return result;
}

unint64_t sub_100003E54()
{
  result = qword_1000142A8;
  if (!qword_1000142A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142A8);
  }

  return result;
}

unint64_t sub_100003EA8()
{
  result = qword_1000142B0;
  if (!qword_1000142B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B0);
  }

  return result;
}

uint64_t sub_100003EFC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003F34(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100003F98(uint64_t a1)
{
  v2 = sub_100003DB8(&qword_1000142C8, &qword_100009D98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DB8(&qword_1000142C8, &qword_100009D98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004084()
{
  type metadata accessor for BluetoothAppIntentsManager();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(CBController) init];
  *(v0 + 24) = 0;
  result = sub_100009370();
  qword_100014648 = v0;
  return result;
}

uint64_t sub_1000040FC()
{
  sub_100009370();
  [*(v0 + 16) invalidate];

  return swift_deallocClassInstance();
}

uint64_t sub_10000418C(uint64_t result)
{
  if (result)
  {
    sub_1000094C0(19);

    swift_errorRetain();
    sub_100003DB8(&qword_1000143C8, qword_100009E20);
    v1._countAndFlagsBits = sub_100009460();
    sub_100009480(v1);

    result = sub_1000094D0();
    __break(1u);
  }

  return result;
}

BOOL sub_10000425C()
{
  v1 = v0;
  v2 = sub_100009420();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = dispatch_semaphore_create(0);
  v7 = *(v1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v6;
  aBlock[4] = sub_10000454C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004554;
  aBlock[3] = &unk_100010D90;
  v9 = _Block_copy(aBlock);
  v10 = v7;

  v11 = v6;

  [v10 getPowerStateWithCompletion:v9];
  _Block_release(v9);

  sub_100009410();
  sub_1000094A0();

  (*(v3 + 8))(v5, v2);
  return *(v1 + 24) == 5;
}

Swift::Int sub_10000441C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_1000094C0(16);

    swift_errorRetain();
    sub_100003DB8(&qword_1000143C8, qword_100009E20);
    v4._countAndFlagsBits = sub_100009460();
    sub_100009480(v4);

    result = sub_1000094D0();
    __break(1u);
  }

  else
  {
    *(a3 + 24) = a1;
    return sub_1000094B0();
  }

  return result;
}

uint64_t sub_10000450C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100004554(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000045CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000045E4()
{
  v0 = sub_1000046E0();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for BluetoothPowerToggle, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100004660();
  sub_1000093A0();
  return 0;
}

unint64_t sub_100004660()
{
  result = qword_1000143D0;
  if (!qword_1000143D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143D0);
  }

  return result;
}

unint64_t sub_1000046E0()
{
  result = qword_1000143D8;
  if (!qword_1000143D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143D8);
  }

  return result;
}

unint64_t sub_100004784()
{
  result = qword_100014400;
  if (!qword_100014400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014400);
  }

  return result;
}

void sub_10000481C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100004888()
{
  v0 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  __chkstk_darwin(v0 - 8);
  v20 = v17 - v1;
  v18 = sub_100009340();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009390();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100009450();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100009350();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v17[1] = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000092F0();
  sub_100003F34(v10, qword_100014650);
  v19 = sub_100003EFC(v10, qword_100014650);
  sub_100009440();
  sub_100009380();
  v11 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17[0] = *(v2 + 104);
  v12 = v18;
  (v17[0])(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v18);
  sub_100009360();
  (*(v8 + 56))(v20, 1, 1, v7);
  sub_100003DB8(&qword_1000142D0, &qword_100009DA0);
  *(swift_allocObject() + 16) = xmmword_100009ED0;
  sub_100009440();
  sub_100009380();
  v13 = v12;
  v14 = v12;
  v15 = v17[0];
  (v17[0])(v4, v11, v14);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v15(v4, v11, v13);
  sub_100009360();
  return sub_1000092D0();
}

uint64_t sub_100004CD8()
{
  v0 = sub_100009350();
  sub_100003F34(v0, qword_100014668);
  sub_100003EFC(v0, qword_100014668);
  return sub_100009330();
}

uint64_t sub_100004D3C()
{
  v0 = sub_100003DB8(&qword_100014548, &unk_10000A880);
  sub_100003F34(v0, qword_100014680);
  v1 = sub_100003EFC(v0, qword_100014680);
  sub_100009150();
  v2 = sub_100009160();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100004DFC()
{
  result = swift_getKeyPath();
  qword_100014698 = result;
  return result;
}

uint64_t sub_100004E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100004E4C, 0, 0);
}

uint64_t sub_100004E4C()
{
  sub_100009100();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 72) = v1;
  sub_100009100();
  *(v0 + 145) = *(v0 + 144);
  if (qword_1000141D0 != -1)
  {
    swift_once();
  }

  v2 = qword_100014698;
  *(v0 + 80) = qword_100014698;

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_100008E3C(&qword_100014520, &qword_100014528, &unk_10000A830, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  *(v0 + 96) = v4;
  *v3 = v0;
  v3[1] = sub_100004FB0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v2, &type metadata for Bool, v4);
}

uint64_t sub_100004FB0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1000053B8;
  }

  else
  {
    v2 = sub_100005104;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005104(uint64_t a1)
{
  sub_100009100();
  v2 = v1[4];
  v1[5] = v2;
  v3 = qword_100014698;
  v1[14] = v2;
  v1[15] = v3;

  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_1000051DC;
  v5 = v1[12];

  return AppEntity._value<A, B>(for:)(v1 + 146, v3, v5);
}

uint64_t sub_1000051DC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1000053D0;
  }

  else
  {
    v2 = sub_100005330;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005330()
{
  *(v0 + 147) = *(v0 + 146);
  sub_100008D40();
  sub_1000090C0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000053E8@<X0>(void *a2@<X8>)
{
  result = sub_100009100();
  *a2 = v4;
  return result;
}

uint64_t sub_100005424(uint64_t *a1)
{

  sub_100009110();
}

void (*sub_10000546C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000090F0();
  return sub_100008F70;
}

uint64_t sub_1000054E0@<X0>(_BYTE *a2@<X8>)
{
  result = sub_100009100();
  *a2 = v4;
  return result;
}

void (*sub_100005554(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000090F0();
  return sub_100008F70;
}

uint64_t sub_1000055C8()
{
  if (qword_1000141D0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100005644()
{
  result = qword_100014418;
  if (!qword_100014418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014418);
  }

  return result;
}

unint64_t sub_10000569C()
{
  result = qword_100014420;
  if (!qword_100014420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014420);
  }

  return result;
}

uint64_t sub_10000577C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000141C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100003DB8(&qword_100014548, &unk_10000A880);
  v3 = sub_100003EFC(v2, qword_100014680);

  return sub_100008DA0(v3, a1);
}

uint64_t sub_100005800(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000058AC;

  return sub_100004E28(a1, v5, v4);
}

uint64_t sub_1000058AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000059A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008058();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000059E4()
{
  result = qword_100014428;
  if (!qword_100014428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014428);
  }

  return result;
}

unint64_t sub_100005A3C()
{
  result = qword_100014430;
  if (!qword_100014430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014430);
  }

  return result;
}

unint64_t sub_100005A98()
{
  result = qword_100014438;
  if (!qword_100014438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014438);
  }

  return result;
}

uint64_t sub_100005B0C()
{
  if (qword_1000141B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = sub_10000425C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100005BD4()
{
  if (qword_1000141B0 != -1)
  {
    swift_once();
  }

  if (*(v0 + 64))
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  v2 = *(qword_100014648 + 16);
  *(v0 + 48) = sub_10000418C;
  *(v0 + 56) = 0;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10000481C;
  *(v0 + 40) = &unk_100010EC8;
  v3 = _Block_copy((v0 + 16));
  v4 = v2;
  [v4 setPowerState:v1 completion:v3];
  _Block_release(v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100005D0C(uint64_t a1)
{
  v2 = sub_1000059E4();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000025, 0x800000010000ACE0, a1, v2);
}

uint64_t sub_100005D70()
{
  v0 = qword_1000143E0;

  return v0;
}

unint64_t sub_100005DA8()
{
  result = qword_100014440;
  if (!qword_100014440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014440);
  }

  return result;
}

unint64_t sub_100005E00()
{
  result = qword_100014448;
  if (!qword_100014448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014448);
  }

  return result;
}

unint64_t sub_100005E58()
{
  result = qword_100014450;
  if (!qword_100014450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014450);
  }

  return result;
}

unint64_t sub_100005EB0()
{
  result = qword_100014458;
  if (!qword_100014458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014458);
  }

  return result;
}

uint64_t sub_100005F10(uint64_t a1)
{
  sub_100008CD4();
  v2 = sub_100009250();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_100005F80()
{
  result = qword_100014460;
  if (!qword_100014460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014460);
  }

  return result;
}

unint64_t sub_100005FD8()
{
  result = qword_100014468;
  if (!qword_100014468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014468);
  }

  return result;
}

unint64_t sub_100006030()
{
  result = qword_100014470;
  if (!qword_100014470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014470);
  }

  return result;
}

unint64_t sub_100006088()
{
  result = qword_100014478;
  if (!qword_100014478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014478);
  }

  return result;
}

uint64_t sub_1000060E8@<X0>(uint64_t *a2@<X8>)
{
  sub_100006400();
  result = sub_1000090E0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1000061A4(uint64_t a1)
{
  v2 = sub_1000059E4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000061F4()
{
  result = qword_100014490;
  if (!qword_100014490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014490);
  }

  return result;
}

uint64_t sub_100006248(uint64_t a1)
{
  v2 = sub_100006400();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100006294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000058AC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100006358(uint64_t a1)
{
  v2 = sub_100006088();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000063A8()
{
  result = qword_100014498;
  if (!qword_100014498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014498);
  }

  return result;
}

unint64_t sub_100006400()
{
  result = qword_1000144A0;
  if (!qword_1000144A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144A0);
  }

  return result;
}

uint64_t sub_100006454()
{
  v0 = sub_1000093B0();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000064E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009340();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009390();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100009450();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100009350();
  __chkstk_darwin(v8 - 8);
  sub_100009440();
  sub_100009380();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100009360();
  result = sub_1000093F0();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_100006708@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100009340();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009390();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100009450();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100009350();
  __chkstk_darwin(v9 - 8);
  sub_100009440();
  sub_100009380();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_100009360();
  result = sub_1000093F0();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_10000693C@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v1 = sub_100003DB8(&qword_100014550, &qword_10000A8E8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - v3;
  v5 = sub_100003DB8(&qword_100014558, &qword_10000A8F0);
  v6 = *(v5 - 8);
  v13 = v5;
  v14 = v6;
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  swift_getKeyPath();
  sub_100003DB8(&qword_100014560, qword_10000A8F8);
  sub_100006400();
  sub_100008E3C(&qword_100014568, &qword_100014560, qword_10000A8F8, &protocol conformance descriptor for Label<A, B>);
  sub_100009430();
  sub_1000093B0();
  v9 = sub_100008E3C(&qword_100014570, &qword_100014550, &qword_10000A8E8, &protocol conformance descriptor for ControlToggle<A>);
  sub_1000093E0();

  (*(v2 + 8))(v4, v1);
  sub_1000093B0();
  v16 = v1;
  v17 = v9;
  swift_getOpaqueTypeConformance2();
  v10 = v13;
  sub_1000093D0();

  return (*(v14 + 8))(v8, v10);
}

uint64_t sub_100006CBC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100008F6C;

  return sub_1000084BC();
}

uint64_t sub_100006D60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100005A3C();
  *v4 = v2;
  v4[1] = sub_100006E10;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_100006E10(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_100006F28()
{
  result = qword_1000144A8;
  if (!qword_1000144A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144A8);
  }

  return result;
}

unint64_t sub_100006F80()
{
  result = qword_1000144B0;
  if (!qword_1000144B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144B0);
  }

  return result;
}

uint64_t sub_100006FD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100005A3C();
  *v5 = v2;
  v5[1] = sub_100008F98;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100007088(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100005A3C();
  *v4 = v2;
  v4[1] = sub_100008F6C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_100007138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000071F8;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000071F8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000072FC()
{
  result = qword_1000144B8;
  if (!qword_1000144B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144B8);
  }

  return result;
}

unint64_t sub_100007354()
{
  result = qword_1000144C0;
  if (!qword_1000144C0)
  {
    sub_100002920(&qword_1000144C8, qword_10000A458);
    sub_100006030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144C0);
  }

  return result;
}

uint64_t sub_1000073D8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100005EB0();
  *v5 = v2;
  v5[1] = sub_100008F58;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10000748C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F58;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100007548()
{
  result = qword_1000144D0;
  if (!qword_1000144D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D0);
  }

  return result;
}

uint64_t sub_1000075A0()
{
  v0 = sub_100009340();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100009390();
  __chkstk_darwin(v4 - 8);
  v5 = sub_100009450();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100009350();
  sub_100003F34(v6, qword_1000146A0);
  sub_100003EFC(v6, qword_1000146A0);
  sub_100009440();
  sub_100009380();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100009360();
}

uint64_t sub_100007790@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_100009340();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100009390();
  __chkstk_darwin(v9 - 8);
  v10 = sub_100009450();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100009350();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_100009440();
  sub_100009380();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100009360();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_100009170();
  v13 = sub_100009160();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

void (*sub_100007A9C(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000090F0();
  return sub_100007B10;
}

unint64_t sub_100007B14()
{
  result = qword_1000144D8;
  if (!qword_1000144D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D8);
  }

  return result;
}

uint64_t sub_100007B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008C2C();
  v5 = sub_100008CD4();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100007BD4()
{
  v0 = qword_1000143F0;

  return v0;
}

unint64_t sub_100007C10()
{
  result = qword_1000144E0;
  if (!qword_1000144E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144E0);
  }

  return result;
}

unint64_t sub_100007C68()
{
  result = qword_1000144E8;
  if (!qword_1000144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144E8);
  }

  return result;
}

uint64_t sub_100007D60@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100003EFC(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_100007E0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100008C2C();
  v7 = sub_100008C80();
  v8 = sub_100008CD4();
  *v5 = v2;
  v5[1] = sub_100003420;

  return _URLRepresentableIntent<>.perform()(a1, a2, v6, v7, v8);
}

uint64_t sub_100007EE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000087C0();
  *a1 = result;
  return result;
}

uint64_t sub_100007F08(uint64_t a1)
{
  v2 = sub_100007B14();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100007F74(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007F80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100007FC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008058()
{
  v0 = sub_100003DB8(&qword_100014530, &qword_10000A840);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_100009240();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003DB8(&qword_100014288, &qword_100009D70);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_100009350();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100003DB8(&qword_100014500, &qword_10000A810);
  sub_100009330();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000090B0();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000059E4();
  v23 = sub_100009130();
  sub_100003DB8(&qword_100014538, &qword_10000A848);
  sub_100009330();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_100009490();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_100009140();
  return v23;
}

uint64_t sub_1000084BC()
{
  v1 = sub_100009340();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_100009390();
  v0[5] = swift_task_alloc();
  sub_100009450();
  v0[6] = swift_task_alloc();
  sub_100009350();
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000085FC, 0, 0);
}

uint64_t sub_1000085FC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];
  sub_100003DB8(&qword_100014410, qword_100009EE0);
  sub_100009440();
  sub_100009380();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100009360();
  sub_100008E3C(&qword_100014520, &qword_100014528, &unk_10000A830, &protocol conformance descriptor for _EntityDeferredPropertyValue<A, B>);
  v4 = sub_100009320();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1000087C0()
{
  v0 = sub_100009240();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100003DB8(&qword_100014288, &qword_100009D70);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v21 - v5;
  v7 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = sub_100009340();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009390();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100009450();
  __chkstk_darwin(v15 - 8);
  v16 = sub_100009350();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21[1] = sub_100003DB8(&qword_100014500, &qword_10000A810);
  sub_100009440();
  sub_100009380();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_100009360();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_1000090B0();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_1000059E4();
  return sub_100009130();
}

unint64_t sub_100008C2C()
{
  result = qword_100014508;
  if (!qword_100014508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014508);
  }

  return result;
}

unint64_t sub_100008C80()
{
  result = qword_100014510;
  if (!qword_100014510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014510);
  }

  return result;
}

unint64_t sub_100008CD4()
{
  result = qword_100014518;
  if (!qword_100014518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014518);
  }

  return result;
}

uint64_t sub_100008D28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100008D40()
{
  result = qword_100014540;
  if (!qword_100014540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014540);
  }

  return result;
}

uint64_t sub_100008DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DB8(&qword_100014548, &unk_10000A880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008E3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100002920(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008E84()
{
  sub_100002920(&qword_100014558, &qword_10000A8F0);
  sub_100002920(&qword_100014550, &qword_10000A8E8);
  sub_100008E3C(&qword_100014570, &qword_100014550, &qword_10000A8E8, &protocol conformance descriptor for ControlToggle<A>);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}
uint64_t sub_1007F64D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v76 = sub_10022C350(&qword_100CDAD00, &qword_100A86BF0);
  sub_1000037C4();
  v71 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v81 = v5;
  sub_10022C350(&qword_100CDAD08, &qword_100A86BF8);
  sub_1000037C4();
  v74 = v6;
  v75 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v80 = v9;
  sub_10022C350(&qword_100CDAD10, &qword_100A86C00);
  sub_1000037C4();
  v72 = v11;
  v73 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v77 = v13;
  sub_10022C350(&qword_100CDAD18, &qword_100A86C08);
  sub_1000037C4();
  v79 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = v68 - v16;
  v18 = type metadata accessor for NotificationLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v19);
  v21 = v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v68 - v23;
  __chkstk_darwin(v25);
  v27 = v68 - v26;
  v28 = a1[3];
  v82 = a1;
  sub_1000161C0(a1, v28);
  sub_1007F72EC();
  v29 = v83;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    goto LABEL_11;
  }

  v69 = v24;
  v70 = v21;
  v83 = v27;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v32 == v33 >> 1)
  {
    v34 = v18;
LABEL_10:
    v45 = type metadata accessor for DecodingError();
    swift_allocError();
    v47 = v46;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v47 = v34;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v45 - 8) + 104))(v47, enum case for DecodingError.typeMismatch(_:), v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = sub_100008FA4();
    v49(v48);
LABEL_11:
    v50 = v82;
    return sub_100006F14(v50);
  }

  v68[2] = v17;
  if (v32 < (v33 >> 1))
  {
    v35 = *(v31 + v32);
    v36 = sub_100618E7C();
    v38 = v37;
    v40 = v39;
    swift_unknownObjectRelease();
    v68[1] = v36;
    if (v38 != v40 >> 1)
    {
      v34 = v18;
      goto LABEL_10;
    }

    if (v35)
    {
      if (v35 == 1)
      {
        v81 = v18;
        v85[0] = 1;
        sub_1007F73F8();
        sub_100075030(&type metadata for NotificationLocation.LocationCodingKeys, v85);
        v41 = v78;
        type metadata accessor for LocationModel();
        sub_100006844();
        sub_1007F7504(v42, v43, &protocol conformance descriptor for LocationModel);
        v44 = v69;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v57 = sub_100016F84();
        v58(v57);
        v59 = sub_100008FA4();
        v60(v59);
        swift_storeEnumTagMultiPayload();
        v61 = v83;
        sub_1007F7394(v44, v83);
        v62 = v82;
LABEL_16:
        sub_1007F7394(v61, v41);
        v50 = v62;
        return sub_100006F14(v50);
      }

      v86 = 2;
      sub_1007F7340();
      sub_100075030(&type metadata for NotificationLocation.PreviewCodingKeys, &v86);
      type metadata accessor for Location();
      v85[2] = 0;
      sub_100010C54();
      sub_1007F7504(v54, v55, &protocol conformance descriptor for Location);
      v56 = v70;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v85[1] = 1;
      LODWORD(v80) = KeyedDecodingContainer.decode(_:forKey:)();
      swift_unknownObjectRelease();
      v63 = *(sub_10022C350(&unk_100CE2F60, &unk_100A42090) + 48);
      v64 = sub_100004B88();
      v65(v64);
      v66 = sub_100023290();
      v67(v66);
      *(v56 + v63) = v80 & 1;
      swift_storeEnumTagMultiPayload();
      v61 = v83;
      sub_1007F7394(v56, v83);
    }

    else
    {
      v84 = 0;
      sub_1007F744C();
      v51 = v77;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v72 + 8))(v51, v73);
      v52 = sub_10004EB08();
      v53(v52);
      v61 = v83;
      swift_storeEnumTagMultiPayload();
    }

    v62 = v82;
    v41 = v78;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007F6CA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Location();
  sub_1000037C4();
  v39 = v5;
  v40 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = (v7 - v6);
  v9 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v41 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  type metadata accessor for NotificationLocation(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  sub_10022C350(&qword_100CDAD60, &qword_100A86C30);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v38 - v22;
  v25 = &v38 + *(v24 + 56) - v22;
  sub_1007F74A0(a1, &v38 - v22);
  sub_1007F74A0(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = v41;
    sub_1007F74A0(v23, v20);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v35 + 32))(v14, v25, v9);
      v34 = static LocationModel.== infix(_:_:)();
      v37 = *(v35 + 8);
      v37(v14, v9);
      v37(v20, v9);
      sub_1007F75B4(v23);
      return v34 & 1;
    }

    (*(v35 + 8))(v20, v9);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1007F75B4(v23);
      v34 = 1;
      return v34 & 1;
    }

    goto LABEL_11;
  }

  sub_1007F74A0(v23, v17);
  v27 = *(sub_10022C350(&unk_100CE2F60, &unk_100A42090) + 48);
  v28 = v17[v27];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v39 + 8))(v17, v40);
LABEL_11:
    sub_1007F754C(v23);
LABEL_12:
    v34 = 0;
    return v34 & 1;
  }

  v29 = v25[v27];
  v31 = v39;
  v30 = v40;
  (*(v39 + 32))(v8, v25, v40);
  v32 = static Location.== infix(_:_:)();
  v33 = *(v31 + 8);
  v33(v8, v30);
  v33(v17, v30);
  if ((v32 & 1) == 0)
  {
    sub_1007F75B4(v23);
    goto LABEL_12;
  }

  sub_1007F75B4(v23);
  v34 = v28 ^ v29 ^ 1;
  return v34 & 1;
}

uint64_t sub_1007F7050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F5C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F7078(uint64_t a1)
{
  v2 = sub_1007F72EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F70B4(uint64_t a1)
{
  v2 = sub_1007F72EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F70F0(uint64_t a1)
{
  v2 = sub_1007F744C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F712C(uint64_t a1)
{
  v2 = sub_1007F744C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F7168(uint64_t a1)
{
  v2 = sub_1007F73F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F71A4(uint64_t a1)
{
  v2 = sub_1007F73F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F71E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F5DF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F7210(uint64_t a1)
{
  v2 = sub_1007F7340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F724C(uint64_t a1)
{
  v2 = sub_1007F7340();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1007F72EC()
{
  result = qword_100CDAD20;
  if (!qword_100CDAD20)
  {
    result = swift_getWitnessTable(byte_100A8700C, &type metadata for NotificationLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD20);
  }

  return result;
}

unint64_t sub_1007F7340()
{
  result = qword_100CDAD28;
  if (!qword_100CDAD28)
  {
    result = swift_getWitnessTable("5I\x1B", &type metadata for NotificationLocation.PreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD28);
  }

  return result;
}

uint64_t sub_1007F7394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007F73F8()
{
  result = qword_100CDAD30;
  if (!qword_100CDAD30)
  {
    result = swift_getWitnessTable(byte_100A86F6C, &type metadata for NotificationLocation.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD30);
  }

  return result;
}

unint64_t sub_1007F744C()
{
  result = qword_100CDAD38;
  if (!qword_100CDAD38)
  {
    result = swift_getWitnessTable(byte_100A86F1C, &type metadata for NotificationLocation.CurrentCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD38);
  }

  return result;
}

uint64_t sub_1007F74A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007F7504(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1007F754C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CDAD60, &qword_100A86C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007F75B4(uint64_t a1)
{
  v2 = type metadata accessor for NotificationLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for NotificationLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for NotificationLocation.LocationCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for NotificationLocation.PreviewCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1007F7888()
{
  result = qword_100CDAD68;
  if (!qword_100CDAD68)
  {
    result = swift_getWitnessTable(byte_100A86D34, &type metadata for NotificationLocation.PreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD68);
  }

  return result;
}

unint64_t sub_1007F78E0()
{
  result = qword_100CDAD70;
  if (!qword_100CDAD70)
  {
    result = swift_getWitnessTable(byte_100A86DEC, &type metadata for NotificationLocation.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD70);
  }

  return result;
}

unint64_t sub_1007F7938()
{
  result = qword_100CDAD78;
  if (!qword_100CDAD78)
  {
    result = swift_getWitnessTable("\rF\x1B", &type metadata for NotificationLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD78);
  }

  return result;
}

unint64_t sub_1007F7990()
{
  result = qword_100CDAD80;
  if (!qword_100CDAD80)
  {
    result = swift_getWitnessTable(byte_100A86E14, &type metadata for NotificationLocation.CurrentCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD80);
  }

  return result;
}

unint64_t sub_1007F79E8()
{
  result = qword_100CDAD88;
  if (!qword_100CDAD88)
  {
    result = swift_getWitnessTable(byte_100A86E3C, &type metadata for NotificationLocation.CurrentCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD88);
  }

  return result;
}

unint64_t sub_1007F7A40()
{
  result = qword_100CDAD90;
  if (!qword_100CDAD90)
  {
    result = swift_getWitnessTable(byte_100A86D5C, &type metadata for NotificationLocation.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD90);
  }

  return result;
}

unint64_t sub_1007F7A98()
{
  result = qword_100CDAD98;
  if (!qword_100CDAD98)
  {
    result = swift_getWitnessTable("MJ\x1B", &type metadata for NotificationLocation.LocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAD98);
  }

  return result;
}

unint64_t sub_1007F7AF0()
{
  result = qword_100CDADA0;
  if (!qword_100CDADA0)
  {
    result = swift_getWitnessTable("=L\x1B", &type metadata for NotificationLocation.PreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDADA0);
  }

  return result;
}

unint64_t sub_1007F7B48()
{
  result = qword_100CDADA8;
  if (!qword_100CDADA8)
  {
    result = swift_getWitnessTable(byte_100A86CCC, &type metadata for NotificationLocation.PreviewCodingKeys, v0, v1);
    atomic_store(result, &qword_100CDADA8);
  }

  return result;
}

unint64_t sub_1007F7BA0()
{
  result = qword_100CDADB0;
  if (!qword_100CDADB0)
  {
    result = swift_getWitnessTable("}J\x1B", &type metadata for NotificationLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDADB0);
  }

  return result;
}

unint64_t sub_1007F7BF8()
{
  result = qword_100CDADB8;
  if (!qword_100CDADB8)
  {
    result = swift_getWitnessTable("EI\x1B", &type metadata for NotificationLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDADB8);
  }

  return result;
}

uint64_t sub_1007F7C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1007F7CF8, v5, v4);
}

void sub_1007F7CF8()
{
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Repeat instruction", v4, 2u);
  }

  v5 = v0[3];

  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[3];
    if (v6)
    {
      v7 = v0[4];
      v8 = v7[2];
      v0[8] = v8;
      v0[10] = 0;
      v9 = 1;
      while (!v8)
      {
        --v9;
        if (v6 + v9 == 1)
        {
          v0[9] = -v9;
          goto LABEL_11;
        }
      }

      v0[9] = 0;
      sub_1000161C0(v7 + 4, v7[7]);
      sub_10001C878();
      v11 = swift_task_alloc();
      v0[11] = v11;
      *v11 = v0;
      v12 = sub_10001F8B8(v11);

      v13(v12);
    }

    else
    {
LABEL_11:

      sub_100003B14();

      v10();
    }
  }
}

uint64_t sub_1007F7F18()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1007F81C0;
  }

  else
  {
    v5 = sub_1007F8054;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007F8054()
{
  v1 = v0[10] + 1;
  v2 = v0[8];
  while (v1 == v2)
  {
    v3 = v0[9] + 1;
    if (v3 == v0[3])
    {
      v0[10] = v2;

      sub_100003B14();

      return v8();
    }

    v1 = 0;
    v0[9] = v3;
  }

  v0[10] = v1;
  sub_1000161C0((v0[4] + 40 * v1 + 32), *(v0[4] + 40 * v1 + 56));
  sub_10001C878();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v5 = sub_10001F8B8(v4);

  return v6(v5);
}

uint64_t sub_1007F81C0()
{

  sub_100003B14();

  return v0();
}

uint64_t sub_1007F8220(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1002F5240;

  return sub_1007F7C5C(a1, v5, v4);
}

NSObject *sub_1007F82D8(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  sub_1000037C4();
  v74 = v4;
  __chkstk_darwin(v5);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v70 - v8;
  __chkstk_darwin(v9);
  v77 = &v70 - v10;
  __chkstk_darwin(v11);
  v13 = &v70 - v12;
  v14 = sub_10022C350(&qword_100CAC1B0, &unk_100A3B140);
  __chkstk_darwin(v14 - 8);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v22 = v21;
  __chkstk_darwin(v23);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PastDataComparisonTextContext(0);
  (*(v22 + 16))(v25, a1 + v26[9], v20);
  sub_1004075F8(a1 + v26[12], v19);
  v27 = type metadata accessor for ExtremaResult();
  if (sub_100024D10(v19, 1, v27) != 1)
  {
    v71 = v3;
    v72 = v20;
    v28 = v13;
    ExtremaResult.maxValue.getter();
    v29 = *(*(v27 - 8) + 8);
    v29(v19, v27);
    sub_1004075F8(a1 + v26[10], v16);
    if (sub_100024D10(v16, 1, v27) != 1)
    {
      ExtremaResult.maxValue.getter();
      v29(v16, v27);
      ConditionUnits.visibility.getter();
      sub_1002ED0CC();
      v41 = v28;
      Measurement.init(value:unit:)();
      ConditionUnits.visibility.getter();
      Measurement.init(value:unit:)();
      v42 = v76;
      VisibilityFormatter.localizedMeasurement(for:useSmallUnits:)();
      v43 = v75;
      VisibilityFormatter.localizedMeasurement(for:useSmallUnits:)();
      sub_10049EA9C();
      v44 = v71;
      v31 = v71;
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      v70 = v41;
      if (v45)
      {
        LocalizedStringKey.init(stringLiteral:)();
        sub_10001C138();
        Text.init(_:tableName:bundle:comment:)(v46, v47, v48, v49, v50, v51, v52, v53, 148, 0);
        sub_10001F8F0();
        v54 = v43;
        v55 = v42;
        v56 = *(v74 + 8);
        v56(v54, v44);
        v57 = v55;
      }

      else
      {
        v58 = static Measurement.< infix<A, B>(_:_:)();
        v59 = (v74 + 8);
        if (v58)
        {
          LocalizedStringKey.init(stringLiteral:)();
          v69 = 147;
        }

        else
        {
          LocalizedStringKey.init(stringLiteral:)();
          v69 = 134;
        }

        sub_10001C138();
        Text.init(_:tableName:bundle:comment:)(v60, v61, v62, v63, v64, v65, v66, v67, v69, 0);
        sub_10001F8F0();
        v56 = *v59;
        (*v59)(v43, v44);
        v57 = v76;
      }

      v56(v57, v44);
      v56(v77, v44);
      v56(v70, v44);
      v20 = v72;
      goto LABEL_16;
    }

    v19 = v16;
    v20 = v72;
  }

  sub_100407668(v19);
  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000703C(v30, qword_100D90B68);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Missing extrema values for building feels like comparison text", v33, 2u);
  }

  LocalizedStringKey.init(stringLiteral:)();
  sub_10001C138();
  Text.init(_:tableName:bundle:comment:)(v34, v35, v36, v37, v38, v39, v40, 0, 0, 256);
  sub_10001F8F0();
LABEL_16:
  (*(v22 + 8))(v25, v20);
  return v31;
}

void *sub_1007F8924()
{
  v0 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TemperatureScaleConfiguration.Gradient.default.getter();
  result = sub_100100224(v2);
  qword_100D90E18 = result;
  return result;
}

uint64_t sub_1007F89A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F7453726F6C6F63 && a2 == 0xEA00000000007370)
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

uint64_t sub_1007F8A40(void *a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CDADE8, &qword_100A871C0);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_10000E890(a1);
  sub_1007F99F8();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10022C350(&qword_100CDADD0, &qword_100A871B8);
  sub_1007F9AA0(&qword_100CDADF0, sub_1007F9B18, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1007F8BB0(void *a1)
{
  v4 = sub_10022C350(&qword_100CDADC0, &qword_100A871B0);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_10000E890(a1);
  sub_1007F99F8();
  sub_100003CC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_10022C350(&qword_100CDADD0, &qword_100A871B8);
    sub_1007F9AA0(&qword_100CDADD8, sub_1007F9A4C, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v4);
    v1 = v11[1];
    sub_100006F14(a1);
  }

  return v1;
}

uint64_t sub_1007F8D48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657267 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702194274 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
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

uint64_t sub_1007F8E98(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x6E65657267;
      break;
    case 2:
      result = 1702194274;
      break;
    case 3:
      result = 0x6168706C61;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1007F8F04(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t sub_1007F8F28(void *a1)
{
  v3 = sub_10022C350(&qword_100CDAE50, &qword_100A87460);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1000161C0(a1, a1[3]);
  sub_1007F9E7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  sub_100010C6C(&v14);
  if (!v1)
  {
    v13 = 1;
    sub_100010C6C(&v13);
    v12 = 2;
    sub_100010C6C(&v12);
    v11 = 3;
    sub_100010C6C(&v11);
  }

  return (*(v5 + 8))(v8, v3);
}

double sub_1007F90B4(void *a1)
{
  v2 = sub_10022C350(&qword_100CDAE40, &qword_100A87458);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_10000E890(a1);
  sub_1007F9E7C();
  sub_100003CC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v15 = 0;
  sub_10001CDD4(&v15);
  v9 = v8;
  v14 = 1;
  sub_10001CDD4(&v14);
  v13 = 2;
  sub_10001CDD4(&v13);
  v12 = 3;
  sub_10001CDD4(&v12);
  (*(v4 + 8))(v7, v2);
  sub_100006F14(a1);
  return v9;
}

uint64_t sub_1007F9274(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

uint64_t sub_1007F9338(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

BOOL sub_1007F936C(double *a1, double *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F93B8(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CDAE30, &qword_100A87450);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v13[-v9];
  sub_10000E890(a1);
  sub_1007F9D80();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v14 = *v3;
  v15 = v11;
  v13[15] = 0;
  sub_1007F9E28();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1007F9518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CDAE18, &qword_100A87448);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1007F9D80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v17 = 0;
  sub_1007F9DD4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v19;
  v16 = v18;
  LOBYTE(v18) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v7 + 8))(v10, v5);
  result = sub_100006F14(a1);
  v14 = v15;
  *a2 = v16;
  *(a2 + 16) = v14;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_1007F96E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F89A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1007F9714(uint64_t a1)
{
  v2 = sub_1007F99F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F9750(uint64_t a1)
{
  v2 = sub_1007F99F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F978C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1007F8BB0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1007F97E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F8D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F9810(uint64_t a1)
{
  v2 = sub_1007F9E7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F984C(uint64_t a1)
{
  v2 = sub_1007F9E7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007F9888(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1007F90B4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1007F98F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F9274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F991C(uint64_t a1)
{
  v2 = sub_1007F9D80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F9958(uint64_t a1)
{
  v2 = sub_1007F9D80();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007F9994@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007F9518(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1007F99F8()
{
  result = qword_100CDADC8;
  if (!qword_100CDADC8)
  {
    result = swift_getWitnessTable(byte_100A873F8, &type metadata for TemperatureGradient.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDADC8);
  }

  return result;
}

unint64_t sub_1007F9A4C()
{
  result = qword_100CDADE0;
  if (!qword_100CDADE0)
  {
    result = swift_getWitnessTable(byte_100A873D0, &unk_100C6E6C8, v0, v1);
    atomic_store(result, &qword_100CDADE0);
  }

  return result;
}

uint64_t sub_1007F9AA0(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_10022E824(&qword_100CDADD0, &qword_100A871B8);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007F9B18()
{
  result = qword_100CDADF8;
  if (!qword_100CDADF8)
  {
    result = swift_getWitnessTable(byte_100A873A8, &unk_100C6E6C8, v0, v1);
    atomic_store(result, &qword_100CDADF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureGradient.CodingKeys(_BYTE *result, int a2, int a3)
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

uint64_t sub_1007F9C24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F9C44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1007F9C7C()
{
  result = qword_100CDAE00;
  if (!qword_100CDAE00)
  {
    result = swift_getWitnessTable(byte_100A87380, &type metadata for TemperatureGradient.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE00);
  }

  return result;
}

unint64_t sub_1007F9CD4()
{
  result = qword_100CDAE08;
  if (!qword_100CDAE08)
  {
    result = swift_getWitnessTable(byte_100A872F0, &type metadata for TemperatureGradient.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE08);
  }

  return result;
}

unint64_t sub_1007F9D2C()
{
  result = qword_100CDAE10;
  if (!qword_100CDAE10)
  {
    result = swift_getWitnessTable(byte_100A87318, &type metadata for TemperatureGradient.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE10);
  }

  return result;
}

unint64_t sub_1007F9D80()
{
  result = qword_100CDAE20;
  if (!qword_100CDAE20)
  {
    result = swift_getWitnessTable(byte_100A87628, &type metadata for TemperatureGradientColorStop.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE20);
  }

  return result;
}

unint64_t sub_1007F9DD4()
{
  result = qword_100CDAE28;
  if (!qword_100CDAE28)
  {
    result = swift_getWitnessTable(byte_100A872C8, &unk_100C6E640, v0, v1);
    atomic_store(result, &qword_100CDAE28);
  }

  return result;
}

unint64_t sub_1007F9E28()
{
  result = qword_100CDAE38;
  if (!qword_100CDAE38)
  {
    result = swift_getWitnessTable(byte_100A872A0, &unk_100C6E640, v0, v1);
    atomic_store(result, &qword_100CDAE38);
  }

  return result;
}

unint64_t sub_1007F9E7C()
{
  result = qword_100CDAE48;
  if (!qword_100CDAE48)
  {
    result = swift_getWitnessTable(byte_100A875D8, &type metadata for TemperatureGradientColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureGradientColor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TemperatureGradientColorStop.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1007FA08C()
{
  result = qword_100CDAE58;
  if (!qword_100CDAE58)
  {
    result = swift_getWitnessTable("\t@\x1B", &type metadata for TemperatureGradientColorStop.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE58);
  }

  return result;
}

unint64_t sub_1007FA0E4()
{
  result = qword_100CDAE60;
  if (!qword_100CDAE60)
  {
    result = swift_getWitnessTable("Q?\x1B", &type metadata for TemperatureGradientColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE60);
  }

  return result;
}

unint64_t sub_1007FA13C()
{
  result = qword_100CDAE68;
  if (!qword_100CDAE68)
  {
    result = swift_getWitnessTable(byte_100A87520, &type metadata for TemperatureGradientColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE68);
  }

  return result;
}

unint64_t sub_1007FA194()
{
  result = qword_100CDAE70;
  if (!qword_100CDAE70)
  {
    result = swift_getWitnessTable(byte_100A87548, &type metadata for TemperatureGradientColor.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE70);
  }

  return result;
}

unint64_t sub_1007FA1EC()
{
  result = qword_100CDAE78;
  if (!qword_100CDAE78)
  {
    result = swift_getWitnessTable("yD\x1B", &type metadata for TemperatureGradientColorStop.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE78);
  }

  return result;
}

unint64_t sub_1007FA244()
{
  result = qword_100CDAE80;
  if (!qword_100CDAE80)
  {
    result = swift_getWitnessTable("AC\x1B", &type metadata for TemperatureGradientColorStop.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDAE80);
  }

  return result;
}

double sub_1007FA298(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2858 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2868 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2860 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2850 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2848 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:

  return result;
}

void *sub_1007FA404(char a1, char a2, uint64_t a3)
{
  v80 = type metadata accessor for TipPriorityQueue.GridEntry(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v77 = &v73 - v10;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  v15 = type metadata accessor for LocationComponentViewModel(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v73 - v23;
  __chkstk_darwin(v25);
  v27 = &v73 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8, &qword_100A65EA0);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v73 - v32;
  __chkstk_darwin(v34);
  v36 = &v73 - v35;
  sub_1007FA298(a1, a2);
  v38 = v37;
  v39 = OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v39, v14, &qword_100CA5008, &unk_100A2F7B0);
  v40 = type metadata accessor for LocationComponentContainerViewModel(0);
  if (sub_100024D10(v14, 1, v40) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008, &unk_100A2F7B0);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v41], v24, v42);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v43);
    sub_100566A5C(v38, v82);
    if ((v83 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v46);
      v44 = 0;
      v45 = v80;
      v47 = &v33[*(v80 + 20)];
      v48 = v82[1];
      *v47 = v82[0];
      *(v47 + 1) = v48;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v44 = 1;
  v45 = v80;
LABEL_7:
  sub_10001B350(v33, v44, 1, v45);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v40 + 20) + OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v38, v84);
  sub_100924AFC(v3, v84, v81);
  sub_10031694C(*(a3 + 16) + *(v40 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v38, v85);
  v49 = v75;
  if (v86 & 1) != 0 || (sub_100011474(), v50 = v77, sub_1001B6FB0(v20, v77, v51), v52 = (v50 + *(v45 + 20)), v53 = v85[1], *v52 = v85[0], v52[1] = v53, sub_100035AD0(v36, v49, &qword_100CAC7F8, &qword_100A65EA0), sub_10001BD64(), v56 = v74, sub_10031694C(v54 + v55, v74, v57), sub_100566AB0(v38, v87), v58 = v78, (v88))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v56, v58, v59);
    v60 = (v58 + *(v45 + 20));
    v61 = v87[1];
    *v60 = v87[0];
    v60[1] = v61;
    sub_10001BD64();
    v64 = v76;
    sub_10031694C(v62 + v63, v76, v65);
    sub_100566AE8(v38, v89);
    if ((v90 & 1) == 0)
    {

      sub_100011474();
      v66 = v64;
      v67 = v79;
      sub_1001B6FB0(v66, v79, v68);
      v69 = (v67 + *(v45 + 20));
      v70 = v89[1];
      *v69 = v89[0];
      v69[1] = v70;
      v71 = sub_100924C14(v81, v50, v49, v58, v67);
      sub_1000180EC(v36, &qword_100CAC7F8, &qword_100A65EA0);
      return v71;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007FAA88(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008, &unk_100A2F7B0);
  v11 = sub_100024D10(v5, 1, v6);
  v121 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008, &unk_100A2F7B0);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v16 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_newsArticle, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v118 = v13 + 2 * v14;
    v119 = v14;
    v30 = v14;
    v31 = swift_allocObject();
    v122 = xmmword_100A2D320;
    *(v31 + 16) = xmmword_100A2D320;
    v32 = a1;
    v33 = *(a1 + 16);
    v34 = v32;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v31 + v13 + v30, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v35;
    *(v12 + 144) = v36;
    v120 = v15;
    v37 = swift_allocObject();
    sub_1000056EC(v37);
    v39 = v38 + v13;
    v40 = *(v34 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v39 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v41;
    *(v12 + 168) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v13;
    v46 = v121;
    v47 = *(v121 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v48 = v119;
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v49;
    *(v12 + 192) = v50;
    v51 = sub_10000C998();
    sub_1000056EC(v51);
    v53 = v52 + v13;
    v54 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v53 + v48;
    v56 = v48;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 200) = sub_1001B38A0(v31);
    *(v12 + 208) = v57;
    *(v12 + 216) = v58;
    v59 = sub_10000C998();
    sub_100003E18(v59);
    v61 = v60 + v13;
    v62 = *(v46 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v13, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 224) = sub_1001B38A0(v59);
    *(v12 + 232) = v63;
    *(v12 + 240) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8, &unk_100A766C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v65 = sub_10022C350(&qword_100CAC7F0, &unk_100A3BD10);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v70 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_newsArticle, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v82;
    *(v12 + 120) = v83;
    sub_100016B54();
    v120 = v69;
    v84 = swift_allocObject();
    sub_1000056EC(v84);
    sub_10031694C(v9, v85 + v66, v7);
    *(v12 + 128) = sub_1001B38A0(v70);
    *(v12 + 136) = v86;
    *(v12 + 144) = v87;
    v88 = v67;
    v119 = v68;
    v89 = v66 + 2 * v67;
    v90 = swift_allocObject();
    v116 = xmmword_100A2D320;
    *(v90 + 16) = xmmword_100A2D320;
    *&v122 = v9;
    v91 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v88;
    sub_10031694C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v90 + v66 + v88, v7);
    *(v12 + 152) = sub_1001B38A0(v90);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v118 = v89;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    v95 = v121;
    v96 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v66 + v88, v7);
    *(v12 + 176) = sub_1001B38A0(v94);
    *(v12 + 184) = v97;
    *(v12 + 192) = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = 2;
    *(v99 + 24) = 4;
    v100 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v101 = v117;
    sub_10031694C(v100 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v99 + v66 + v117, v7);
    *(v12 + 200) = sub_1001B38A0(v99);
    *(v12 + 208) = v102;
    *(v12 + 216) = v103;
    v104 = swift_allocObject();
    v105 = sub_100017A70(v104) + v66;
    v106 = v121;
    v107 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v105 + v101, v7);
    *(v12 + 224) = sub_1001B38A0(v104);
    *(v12 + 232) = v108;
    *(v12 + 240) = v109;
    v110 = swift_allocObject();
    v111 = sub_100017A70(v110) + v66;
    v112 = *(v106 + 16);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111, v7);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v111 + v101, v7);
    *(v12 + 248) = sub_1001B38A0(v110);
    *(v12 + 256) = v113;
    *(v12 + 264) = v114;
    sub_1003169AC(v122, v7);
  }

  return v12;
}

void sub_1007FB348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBB0;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BBF0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3BBA0;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC00;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A3BBD0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC00;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A41B80;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = xmmword_100A3BBF0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A2C3F0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC10;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC20;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v35 = v10;
  v36 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D90E20 = v8;
}

void sub_1007FB460()
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBB0;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BC00;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3BBA0;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC20;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A3BBD0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC20;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A3BC00;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC10;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC30;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BB80;
  *(&v10 + 1) = 1;
  v11 = xmmword_100A3BB80;
  sub_100024AA4(v12, v4, *(&v4 + 1), v5, *(&v5 + 1), v6, v7, v8, v9, 0);
  v4 = v0;
  v5 = v1;
  v33 = v2;
  v34 = &v4;
  sub_100557528();
  qword_100D90E28 = v3;
}

void sub_1007FB564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BBB0;
  v22[0] = xmmword_100A3BC40;
  v22[1] = xmmword_100A3BB80;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3BBA0;
  v20[0] = xmmword_100A2C3F0;
  v20[1] = xmmword_100A3BB80;
  v26 = v21;
  v27 = v20;
  v18[0] = 0;
  v18[1] = 4;
  v19 = xmmword_100A3BBD0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC50;
  v28 = v18;
  v29 = v17;
  v16[0] = xmmword_100A2D320;
  v16[1] = xmmword_100A3BB70;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v30 = v16;
  v31 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A2C3F0;
  v13[0] = xmmword_100A3BBD0;
  v13[1] = xmmword_100A3BB80;
  v32 = v14;
  v33 = v13;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BB80;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC60;
  v34 = v12;
  v35 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC40;
  v36 = v10;
  v37 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90E30 = v8;
}

void sub_1007FB67C()
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BBB0;
  v22[0] = xmmword_100A3BC40;
  v22[1] = xmmword_100A3BC50;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A2C3F0;
  v20[1] = xmmword_100A3BC50;
  v26 = v21;
  v27 = v20;
  v17 = 0;
  v18 = xmmword_100A3BC70;
  v19 = 2;
  v16[0] = xmmword_100A3BBD0;
  v16[1] = xmmword_100A3BC60;
  v28 = &v17;
  v29 = v16;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC60;
  v14[0] = xmmword_100A2D320;
  v14[1] = xmmword_100A3BBB0;
  v30 = v15;
  v31 = v14;
  v13[0] = xmmword_100A3BBD0;
  v13[1] = xmmword_100A3BC50;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC50;
  v32 = v13;
  v33 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  *(&v9 + 1) = 3;
  v10 = xmmword_100A3BC40;
  sub_100024AA4(v11, v3, *(&v3 + 1), v4, *(&v4 + 1), v5, v6, v7, v8, 2);
  v3 = v0;
  v4 = v0;
  v34 = v1;
  v35 = &v3;
  sub_100557528();
  qword_100D90E38 = v2;
}

void sub_1007FB790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3BBB0;
  v23[0] = xmmword_100A3BC50;
  v23[1] = xmmword_100A3BC60;
  v25 = v24;
  v26 = v23;
  v20 = xmmword_100A3BB70;
  v21 = 1;
  v22 = 4;
  v19[0] = xmmword_100A3BC60;
  v19[1] = xmmword_100A3BC40;
  v27 = &v20;
  v28 = v19;
  v18[0] = xmmword_100A41B90;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC60;
  v29 = v18;
  v30 = v17;
  v16[0] = xmmword_100A3BC90;
  v16[1] = xmmword_100A3BD20;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC60;
  v31 = v16;
  v32 = v15;
  v14[0] = xmmword_100A2D320;
  v14[1] = xmmword_100A2C3F0;
  v13[0] = xmmword_100A3BC60;
  v13[1] = xmmword_100A3BC60;
  v33 = v14;
  v34 = v13;
  v12[0] = xmmword_100A3BC40;
  v12[1] = xmmword_100A3BC40;
  v11[0] = xmmword_100A3BBD0;
  v11[1] = xmmword_100A3BC40;
  v35 = v12;
  v36 = v11;
  v10[0] = xmmword_100A3BC50;
  v10[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v37 = v10;
  v38 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90E40 = v8;
}

uint64_t sub_1007FB8B4(uint64_t a1, void (*a2)(char *))
{
  v5 = type metadata accessor for LocationComponentContainerViewModel(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v34 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v33 = v9;
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = type metadata accessor for LocationViewComponent(0);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v31 - v23;

  sub_1005D71C4(v25, a2);
  v32 = v26;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationElevatedAqiNewsConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationElevatedAqiNewsConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationElevatedAqiNewsConfiguration8_Storage_newsArticle, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008, &unk_100A2F7B0);
  v27 = v33;
  sub_10031694C(v13, v33, type metadata accessor for LocationComponentContainerViewModel);
  v28 = v34;
  sub_10031694C(v2, v34, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for ElevatedAqiNewsContent._Storage(0);
  swift_allocObject();
  v29 = sub_1002BECB0(v32, v21, v27, v28);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008, &unk_100A2F7B0);
  return v29;
}

uint64_t sub_1007FBBF0()
{

  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather27LocationViewerStoreObserver_lastViewedLocationIdentifier, &qword_100CADBA0, &qword_100A3D250);

  return swift_deallocClassInstance();
}

uint64_t sub_1007FBC7C(void **a1)
{
  v50 = type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v48 = type metadata accessor for SelectedSearchResult(0);
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v49 = (v9 - v8);
  v10 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for Location();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  sub_1000161C0(v1 + 34, v1[37]);
  sub_100405270();
  v20 = type metadata accessor for SearchLocation(0);
  sub_100035AD0(a1 + *(v20 + 32), v12, &qword_100CA65D8, &unk_100A3D9D0);
  if (sub_100024D10(v12, 1, v13) == 1)
  {
    sub_1000180EC(v12, &qword_100CA65D8, &unk_100A3D9D0);
    v21 = *a1;
    if (*a1)
    {
      sub_1000161C0(v1 + 23, v1[26]);
      v22 = v21;
      v23 = [v22 w_calloutTitle];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(v22, v24, v26);

      sub_1007FC298(v27);
    }

    sub_100050E70(a1, v6, type metadata accessor for SearchLocation);
    type metadata accessor for SearchViewAction(0);
    swift_storeEnumTagMultiPayload();
    v28 = type metadata accessor for ViewAction(0);
    sub_100008FD0(v28);
    swift_storeEnumTagMultiPayload();
    sub_1007FC0AC(v6);
    sub_10001F3B4();
    return sub_10004F9E8(v6, v29);
  }

  else
  {
    v47 = v15;
    (*(v15 + 32))(v19, v12, v13);
    v31 = sub_1000161C0(v1 + 34, v1[37]);
    v32 = Location.id.getter();
    if (*(*v31 + 24))
    {
      sub_1008957E0(v32, v33);
    }

    sub_100090A8C(v19, 0, v34, v35, v36, v37, v38, v39, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
    v40 = a1[6];
    v41 = v49;
    *v49 = a1[5];
    v41[1] = v40;
    swift_storeEnumTagMultiPayload();
    v42 = *(sub_10022C350(&qword_100CC7D10, &unk_100A645F0) + 48);
    v43 = v47;
    (*(v47 + 16))(v6, v19, v13);
    sub_100050E70(v41, v6 + v42, type metadata accessor for SelectedSearchResult);
    v44 = type metadata accessor for SearchViewAction(0);
    sub_100008FD0(v44);
    v45 = type metadata accessor for ViewAction(0);
    sub_100008FD0(v45);
    swift_storeEnumTagMultiPayload();

    sub_1007FC0AC(v6);
    sub_10001F3B4();
    sub_10004F9E8(v6, v46);
    sub_10004F9E8(v41, type metadata accessor for SelectedSearchResult);
    return (*(v43 + 8))(v19, v13);
  }
}

uint64_t sub_1007FC0AC(uint64_t a1)
{
  v3 = static Solarium.isEnabled.getter();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  if (v3)
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_10004F034(a1, v11, v4, v5);
    v6 = v11;
  }

  else
  {
    sub_10022C350(&qword_100CA3508, &unk_100A2D530);
    v7 = *(type metadata accessor for MainAction(0) - 8);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100A2D320;
    sub_100050E70(a1, v9 + v8, type metadata accessor for MainAction);
    type metadata accessor for SearchViewAction(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_100035AD0(v15, v11, &unk_100CD81B0, &unk_100A3B000);
    v13 = v9;
    v14 = 0;
    sub_10004F1B0(v11, v4);
    sub_1000180EC(v11, &qword_100CA3510, &unk_100A2D540);
    v6 = v15;
  }

  return sub_1000180EC(v6, &unk_100CD81B0, &unk_100A3B000);
}

void sub_1007FC298(uint64_t a1)
{
  type metadata accessor for Location();
  firstly<A>(closure:)();
  sub_100040690();
  v1 = static OS_dispatch_queue.main.getter();
  Promise.then<A, B>(on:disposeOn:closure:)();

  v2 = zalgo.getter();
  Promise.error(on:closure:)();
}

uint64_t sub_1007FC3C4(uint64_t a1)
{
  v35 = type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v33 = type metadata accessor for Location();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_1000161C0((v1 + 272), *(v1 + 296));
  sub_100405270();
  v15 = sub_1000161C0((v1 + 272), *(v1 + 296));
  v34 = a1;
  LocationOfInterest.location.getter();
  v16 = Location.id.getter();
  v18 = v17;
  v19 = *(v8 + 8);
  v20 = v14;
  v21 = v33;
  v19(v20, v33);
  if (*(*v15 + 24))
  {
    sub_1008957E0(v16, v18);
  }

  v22 = v34;
  LocationOfInterest.location.getter();
  sub_100090A8C(v11, 0, v23, v24, v25, v26, v27, v28, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43);
  v19(v11, v21);
  type metadata accessor for LocationOfInterest();
  sub_1000037E8();
  (*(v29 + 16))(v6, v22);
  type metadata accessor for SearchViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1007FC0AC(v6);
  sub_10001F3B4();
  return sub_10004F9E8(v6, v30);
}

uint64_t sub_1007FC620()
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  result = static Solarium.isEnabled.getter();
  if (result)
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    type metadata accessor for SearchViewAction(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction(0);
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_10004F034(v4, v9, v7, v6);
    sub_1000180EC(v9, &unk_100CD81B0, &unk_100A3B000);
    sub_10001F3B4();
    return sub_10004F9E8(v4, v8);
  }

  return result;
}

void sub_1007FC710(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[2];
  v8 = a2[3];
  v9 = *(sub_10022C350(&unk_100CE2F60, &unk_100A42090) + 48);
  v10 = type metadata accessor for Location();
  (*(*(v10 - 8) + 16))(v6, a1, v10);
  v6[v9] = 0;
  type metadata accessor for LocationPreviewViewAction(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ModalViewAction(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_10004F034(v6, &v20, v7, v8);
  sub_1000180EC(&v20, &unk_100CD81B0, &unk_100A3B000);
  sub_10004F9E8(v6, type metadata accessor for MainAction);
  v11 = sub_1000161C0(a2 + 34, a2[37]);
  v12 = Location.id.getter();
  if (*(*v11 + 24))
  {
    sub_1008957E0(v12, v13);
  }

  sub_100090A8C(a1, 0, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27, v28, v29);
}

void *sub_1007FC8E0()
{

  sub_100006F14(v0 + 4);
  sub_100006F14(v0 + 9);
  sub_100006F14(v0 + 14);

  sub_100006F14(v0 + 23);

  sub_100006F14(v0 + 29);
  sub_100006F14(v0 + 34);
  return v0;
}

uint64_t sub_1007FC954()
{
  sub_1007FC8E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1007FCA18(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  *(v5 - v4) = a2;
  type metadata accessor for SearchViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));

  sub_1000047B4();
  sub_1000180EC(v9, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F3B4();
  return sub_10004F9E8(v6, v7);
}

uint64_t sub_1007FCB08(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainAction(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  swift_errorRetain();
  CodableError.init(_:)();
  type metadata accessor for SearchViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction(0);
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_1000047B4();
  sub_1000180EC(v8, &unk_100CD81B0, &unk_100A3B000);
  sub_10001F3B4();
  return sub_10004F9E8(v5, v6);
}

void sub_1007FCC24(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 == 1 && a4 == 1)
  {
    sub_1002D64EC(a1, a3);
  }
}

uint64_t sub_1007FCC80(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v41 = *a1;
  v35 = v10;
  if (v41)
  {
    if (!v10)
    {
      goto LABEL_31;
    }

    v29 = v4;
    v30 = v5;
    v32 = v11;
    v28 = v9;
    sub_1000B8CA8();
    sub_1000B8CEC(&v35, &v46);
    sub_1000B8CEC(&v41, &v46);
    v15 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v41);
    sub_1000B8D48(&v35);
    v9 = v28;
    v4 = v29;
    v5 = v30;
    v11 = v32;
    if ((v15 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v10)
  {
    goto LABEL_31;
  }

  v42 = v4;
  v36 = v9;
  if (v4)
  {
    if (!v9)
    {
      goto LABEL_31;
    }

    v31 = v5;
    v33 = v11;
    sub_1000B8CA8();
    sub_1000B8CEC(&v36, &v46);
    sub_1000B8CEC(&v42, &v46);
    v16 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v42);
    sub_1000B8D48(&v36);
    v5 = v31;
    v11 = v33;
    if ((v16 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v9)
  {
    goto LABEL_31;
  }

  v43 = v5;
  v37 = v11;
  if (v5)
  {
    if (!v11)
    {
      goto LABEL_31;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v37, &v46);
    sub_1000B8CEC(&v43, &v46);
    v17 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v43);
    sub_1000B8D48(&v37);
    if ((v17 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v11)
  {
    goto LABEL_31;
  }

  v44 = v6;
  v38 = v12;
  if (v6)
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v38, &v46);
    sub_1000B8CEC(&v44, &v46);
    v18 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v44);
    sub_1000B8D48(&v38);
    if ((v18 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v12)
  {
    goto LABEL_31;
  }

  v45 = v8;
  v39 = v13;
  if (v8)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v39, &v46);
    sub_1000B8CEC(&v45, &v46);
    v19 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v45);
    sub_1000B8D48(&v39);
    if ((v19 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v13)
  {
    goto LABEL_31;
  }

  v46 = v7;
  v40 = v14;
  if (v7)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v40, v34);
    sub_1000B8CEC(&v46, v34);
    v20 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v46);
    sub_1000B8D48(&v40);
    if ((v20 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v14)
  {
    goto LABEL_31;
  }

  v23 = a1[6];
  v21 = *(a1 + 56);
  v24 = *(a2 + 48);
  v25 = *(a2 + 56);
  if (*(a1 + 56))
  {
    v26 = *(a2 + 49) | ((*(a2 + 53) | (*(a2 + 55) << 16)) << 32);
    if (v21 == 1)
    {
      if (v25 == 1)
      {
        sub_1002D64EC(v23, v24 | (v26 << 8));
        if (v27)
        {
LABEL_43:
          LOBYTE(v21) = *(a1 + 57) ^ *(a2 + 57) ^ 1;
          return v21 & 1;
        }
      }

LABEL_31:
      LOBYTE(v21) = 0;
      return v21 & 1;
    }

    LOBYTE(v21) = 0;
    if (v25 == 2 && !(v24 | (v26 << 8)))
    {
      goto LABEL_43;
    }
  }

  else if (!*(a2 + 56) && v24 == v23)
  {
    goto LABEL_43;
  }

  return v21 & 1;
}

NSObject *sub_1007FD02C@<X0>(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v137 = a1;
  v138 = a2;
  v2 = type metadata accessor for Logger();
  v129 = *(v2 - 8);
  v130 = v2;
  __chkstk_darwin(v2);
  v136 = v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000038CC();
  v125 = type metadata accessor for ModalViewState.LocationDetailModal(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v121 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  v124 = v118 - v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v126 = v10;
  v11 = sub_1000038CC();
  v12 = type metadata accessor for AveragesDetailViewState(v11);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003848();
  v118[1] = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v120 = v16;
  v17 = sub_1000038CC();
  v134 = type metadata accessor for LocationPreviewModalViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  v123 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  sub_10000E70C();
  v133 = v21;
  v22 = sub_1000038CC();
  v23 = type metadata accessor for ConditionDetailViewState(v22);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_100003848();
  v119 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_10000E70C();
  v122 = v27;
  v28 = sub_10022C350(&qword_100CA65E0, &unk_100A31400);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  v128 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_10000E70C();
  v127 = v32;
  v33 = sub_1000038CC();
  v34 = type metadata accessor for ModalViewState(v33);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_100003848();
  v131 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  v39 = v118 - v38;
  __chkstk_darwin(v40);
  v42 = (v118 - v41);
  v43 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_100003848();
  v132 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  v48 = v118 - v47;
  __chkstk_darwin(v49);
  v51 = (v118 - v50);
  v52 = sub_10022C350(&qword_100CDB0D0, &qword_100A879C8);
  v53 = sub_100003810(v52);
  __chkstk_darwin(v53);
  v55 = v118 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v58 = v118 - v57;
  sub_10001B350(v118 - v57, 1, 1, v43);
  sub_1000180EC(v58, &qword_100CDB0D0, &qword_100A879C8);
  v59 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  v60 = sub_10001CE18();
  sub_1000BCB9C(v60, v42, v61);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100010C88();
    sub_1000E0250(v42, v62);
    v63 = sub_10001CE18();
    sub_1000BCB9C(v63, v39, v64);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_100010C88();
      sub_1000E0250(v39, v70);
      goto LABEL_7;
    }

    v65 = v39;
    v66 = v127;
    sub_1003C9FB0(v65, v127);
    v51 = v128;
    sub_1003C9FB0(v66, v128);
    v67 = type metadata accessor for ModalViewState.MapViewModal(0);
    if (sub_100024D10(v51, 1, v67) == 1)
    {
      sub_1000180EC(v51, &qword_100CA65E0, &unk_100A31400);
LABEL_7:
      v71 = 1;
      goto LABEL_10;
    }

    sub_1007FDD38(v51, v48, type metadata accessor for LocationPreviewViewState);
    v68 = v48;
    v69 = v58;
  }

  else
  {
    sub_1007FDD38(v42, v51, type metadata accessor for LocationPreviewViewState);
    v68 = v51;
    v69 = v58;
  }

  sub_1007FDD38(v68, v69, type metadata accessor for LocationPreviewViewState);
  v71 = 0;
LABEL_10:
  sub_10001B350(v58, v71, 1, v43);
  sub_1007FDCC8(v58, v55);
  if (sub_100024D10(v55, 1, v43) == 1)
  {
    sub_1000180EC(v55, &qword_100CDB0D0, &qword_100A879C8);
    v72 = sub_10001CE18();
    v73 = v131;
    sub_1000BCB9C(v72, v131, v74);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1000180EC(v58, &qword_100CDB0D0, &qword_100A879C8);
      sub_100010C88();
      sub_1000E0250(v73, v93);
      v89 = 0;
      LOBYTE(v77) = 2;
LABEL_25:
      sub_100017E50();
      v103 = type metadata accessor for EnvironmentState(0);
      sub_100013CC0(v103);
      v104 = v73;
      v105 = v43;
      v106 = v51;
      v107 = v59;
      result = v34;
      goto LABEL_31;
    }

    v75 = sub_100014F28();
    v73 = v126;
    sub_1007FDD38(v75, v126, v76);
    v77 = v124;
    sub_1000BCB9C(v73, v124, type metadata accessor for ModalViewState.LocationDetailModal);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100075058();
      sub_1000E0250(v77, v78);
      v79 = sub_100014F28();
      v80 = v121;
      sub_1007FDD38(v79, v121, v81);
      sub_100003940();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_1000180EC(v58, &qword_100CDB0D0, &qword_100A879C8);
        v82 = sub_100028BCC();
        v84 = &v139;
LABEL_20:
        v73 = *(v84 - 32);
        sub_1007FDD38(v82, v73, v83);
        v89 = sub_1007FDB84(v73);
        LOBYTE(v77) = v98;
        sub_1000E0250(v73, type metadata accessor for AveragesDetailViewState);
        goto LABEL_25;
      }

      v99 = type metadata accessor for ModalViewState.LocationDetailModal;
LABEL_27:
      sub_1000E0250(v80, v99);
      goto LABEL_28;
    }

    v100 = sub_100019FA0();
    v43 = v119;
    sub_1007FDD38(v100, v119, v101);
    v89 = v135;
    sub_1007FD99C(v43);
    sub_100008FEC();
    sub_1000E0250(v43, v102);
    sub_100075058();
    v91 = v73;
  }

  else
  {
    v51 = v132;
    sub_1007FDD38(v55, v132, type metadata accessor for LocationPreviewViewState);
    v85 = sub_1000232B8();
    v77 = v133;
    sub_1000BCB9C(v85, v133, v86);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000E0250(v77, type metadata accessor for LocationPreviewModalViewState);
      v94 = sub_1000232B8();
      v80 = v123;
      sub_1000BCB9C(v94, v123, v95);
      v96 = sub_100004B9C();
      sub_1000E0250(v96, v97);
      sub_100003940();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        sub_1000180EC(v58, &qword_100CDB0D0, &qword_100A879C8);
        v82 = sub_100028BCC();
        v84 = &v140;
        goto LABEL_20;
      }

      v99 = type metadata accessor for LocationPreviewModalViewState;
      goto LABEL_27;
    }

    v87 = sub_100019FA0();
    v73 = v122;
    sub_1007FDD38(v87, v122, v88);
    v89 = v135;
    sub_1007FD99C(v73);
    sub_100008FEC();
    sub_1000E0250(v73, v90);
    v91 = sub_100004B9C();
  }

  sub_1000E0250(v91, v92);
  if (v77 != 0xFF)
  {
    sub_1000180EC(v58, &qword_100CDB0D0, &qword_100A879C8);
    goto LABEL_25;
  }

LABEL_28:
  static Logger.locale.getter();
  v73 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v73, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&_mh_execute_header, v73, v109, "Missing representation for unit selection", v110, 2u);
  }

  (*(v129 + 8))(v136, v130);
  sub_100017E50();
  v111 = type metadata accessor for EnvironmentState(0);
  sub_100013CC0(v111);
  v112 = v73;
  v113 = v43;
  v114 = v51;
  v115 = v59;
  v116 = v34;
  result = sub_1000180EC(v58, &qword_100CDB0D0, &qword_100A879C8);
  LOBYTE(v77) = 1;
  v89 = &_swiftEmptySetSingleton;
LABEL_31:
  v117 = v138;
  *v138 = v73;
  v117[1] = v43;
  v117[2] = v51;
  v117[3] = v59;
  v117[4] = v34;
  v117[5] = v42;
  v117[6] = v89;
  *(v117 + 56) = v77;
  *(v117 + 57) = 1;
  return result;
}

uint64_t sub_1007FD99C(uint64_t a1)
{
  v2 = type metadata accessor for DetailCondition();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DetailCondition.conditions(_:))
  {
    v8 = sub_10031B84C(&off_100C43750);
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  if (v7 == enum case for DetailCondition.humidity(_:))
  {
    return 0;
  }

  if (v7 == enum case for DetailCondition.pressure(_:))
  {
    return 2;
  }

  if (v7 == enum case for DetailCondition.precipitationTotal(_:))
  {
    return 1;
  }

  if (v7 == enum case for DetailCondition.uvIndex(_:))
  {
    return 0;
  }

  if (v7 == enum case for DetailCondition.visibility(_:))
  {
    return 0;
  }

  if (v7 == enum case for DetailCondition.wind(_:))
  {
    return 4;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1007FDB84(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for AveragesDetailViewState(0) + 20)))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1007FDBE8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1007FDC04(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 58))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1007FDC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1007FDCC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CDB0D0, &qword_100A879C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007FDD38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

_BYTE *sub_1007FDD94(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1007FDE6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007FDEAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1007FDEF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1007FDF18()
{
  result = qword_100CDB0D8;
  if (!qword_100CDB0D8)
  {
    result = swift_getWitnessTable("1:\x1B", &unk_100C6EAD0, v0, v1);
    atomic_store(result, &qword_100CDB0D8);
  }

  return result;
}

unint64_t sub_1007FDF80()
{
  result = qword_100CDB0E0;
  if (!qword_100CDB0E0)
  {
    result = swift_getWitnessTable(byte_100A87C4C, &type metadata for AppLifecycleState, v0, v1);
    atomic_store(result, &qword_100CDB0E0);
  }

  return result;
}

void *sub_1007FDFD4(void *a1)
{
  v3 = sub_10022C350(&qword_100CDB0F0, &qword_100A87C78);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  v9 = sub_1000161C0(a1, a1[3]);
  sub_1007FE7CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_1007FE820();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v3);
    v9 = v11[15];
    sub_100006F14(a1);
  }

  return v9;
}

uint64_t sub_1007FE138(void *a1, char a2)
{
  v4 = sub_10022C350(&qword_100CDB108, &qword_100A87C80);
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v12[-v8];
  sub_1000161C0(a1, a1[3]);
  sub_1007FE7CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = (v6 + 8);
  if (a2)
  {
    if (a2 == 1)
    {
      v12[14] = 1;
    }

    else
    {
      v12[15] = 2;
    }

    sub_1007FE874();
  }

  else
  {
    v12[13] = 0;
    sub_1007FE874();
  }

  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*v10)(v9, v4);
}

unint64_t sub_1007FE2C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45268, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1007FE310(char a1)
{
  if (!a1)
  {
    return 0x756F72676B636162;
  }

  if (a1 == 1)
  {
    return 0x756F726765726F66;
  }

  return 0x6E6968636E75616CLL;
}

BOOL sub_1007FE378@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002136F4(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1007FE3AC@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1002136F4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007FE3D8(uint64_t a1)
{
  v2 = sub_1007FE7CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007FE414(uint64_t a1)
{
  v2 = sub_1007FE7CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1007FE474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007FE2C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007FE4A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1007FE310(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1007FE580@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007FDFD4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1007FE5C8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_10022C350(&qword_100CDB118, &qword_100A87C88);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a2[3] = v3;
  a2[4] = sub_1007FE8C8();
  v9 = sub_100042FB0(a2);
  return (*(v5 + 32))(v9, v8, v3);
}

uint64_t sub_1007FE738(uint64_t a1)
{
  sub_1007FE92C();

  return ShortDescribable.description.getter();
}

unint64_t sub_1007FE778()
{
  result = qword_100CDB0E8;
  if (!qword_100CDB0E8)
  {
    result = swift_getWitnessTable("-<\x1B", &type metadata for AppLifecycleState, v0, v1);
    atomic_store(result, &qword_100CDB0E8);
  }

  return result;
}

unint64_t sub_1007FE7CC()
{
  result = qword_100CDB0F8;
  if (!qword_100CDB0F8)
  {
    result = swift_getWitnessTable("i:\x1B", &type metadata for AppLifecycleState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDB0F8);
  }

  return result;
}

unint64_t sub_1007FE820()
{
  result = qword_100CDB100;
  if (!qword_100CDB100)
  {
    result = swift_getWitnessTable("!:\x1B", &type metadata for AppLifecycleState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDB100);
  }

  return result;
}

unint64_t sub_1007FE874()
{
  result = qword_100CDB110;
  if (!qword_100CDB110)
  {
    result = swift_getWitnessTable("9:\x1B", &type metadata for AppLifecycleState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDB110);
  }

  return result;
}

unint64_t sub_1007FE8C8()
{
  result = qword_100CDB120;
  if (!qword_100CDB120)
  {
    v3 = sub_10022E824(&qword_100CDB118, &qword_100A87C88);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CDB120);
  }

  return result;
}

unint64_t sub_1007FE92C()
{
  result = qword_100CDB128;
  if (!qword_100CDB128)
  {
    result = swift_getWitnessTable(byte_100A87BCC, &type metadata for AppLifecycleState, v0, v1);
    atomic_store(result, &qword_100CDB128);
  }

  return result;
}

_BYTE *sub_1007FE980(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for AppLifecycleState.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1007FEB0C()
{
  result = qword_100CDB130;
  if (!qword_100CDB130)
  {
    result = swift_getWitnessTable(byte_100A87D70, &type metadata for AppLifecycleState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDB130);
  }

  return result;
}

unint64_t sub_1007FEB64()
{
  result = qword_100CDB138;
  if (!qword_100CDB138)
  {
    result = swift_getWitnessTable(byte_100A87E10, &type metadata for AppLifecycleState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDB138);
  }

  return result;
}

unint64_t sub_1007FEBBC()
{
  result = qword_100CDB140;
  if (!qword_100CDB140)
  {
    result = swift_getWitnessTable("9<\x1B", &type metadata for AppLifecycleState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDB140);
  }

  return result;
}

unint64_t sub_1007FEC14()
{
  result = qword_100CDB148;
  if (!qword_100CDB148)
  {
    result = swift_getWitnessTable(byte_100A87CD0, &type metadata for AppLifecycleState.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CDB148);
  }

  return result;
}

unint64_t sub_1007FEC68()
{
  result = qword_100CDB150;
  if (!qword_100CDB150)
  {
    result = swift_getWitnessTable("y7\x1B", &type metadata for AppLifecycleState.CodingType, v0, v1);
    atomic_store(result, &qword_100CDB150);
  }

  return result;
}

void sub_1007FECE4()
{
  sub_100020DF0();
  v1 = v0;
  sub_10022C350(&qword_100CDB408, &qword_100A88178);
  sub_100018784();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CF8();
  sub_100806904();
  sub_100008B5C();
  sub_1000302D8(v3, v4, v5, v6);
  sub_100453998();
  sub_10003A3A8(*(v1 + 8));
  sub_100008B5C();
  sub_10011C0F0(v7, v8, v9, v10);
  sub_10003C890();
  sub_1000212EC();
}

void sub_1007FEDB0()
{
  sub_100020DF0();
  v3 = v2;
  v5 = v4;
  sub_10022C350(&qword_100CDB3F0, &unk_100A88130);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100003CF8();
  v7 = sub_10022C350(&qword_100CBAD88, &unk_100A50670);
  type metadata accessor for AxisGridLine();
  (*(*(v7 - 8) + 16))(v1, *v3, v7);
  sub_100453574();
  v8 = *(v0 + 56);
  sub_1000302D8(v3[1], v1 + v8, &qword_100CBAD70, &unk_100A50660);
  sub_10002CA80();
  v9();
  sub_10011C0F0(v1 + v8, v5 + *(v0 + 56), &qword_100CBAD70, &unk_100A50660);
  sub_1000212EC();
}

void sub_1007FEEE8()
{
  sub_100020DF0();
  v1 = v0;
  sub_10022C350(&qword_100CDB400, &unk_100A88150);
  sub_100018784();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CF8();
  sub_100643AC4();
  sub_100008B5C();
  sub_1000302D8(v3, v4, v5, v6);
  sub_100643C50();
  sub_10003A3A8(*(v1 + 8));
  sub_100008B5C();
  sub_10011C0F0(v7, v8, v9, v10);
  sub_10003C890();
  sub_1000212EC();
}

void sub_1007FEFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100020DF0();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = sub_100003A24(v25, v29);
  sub_10022C350(v30, v31);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  v35 = sub_10022C350(v24, v22);
  type metadata accessor for AxisGridLine();
  v36 = *(v35 - 8);
  (*(v36 + 16))(v34, *v26, v35);
  v37 = sub_10022C350(&qword_100CBAE08, &unk_100A708B0);
  type metadata accessor for AxisTick();
  (*(*(v37 - 8) + 16))(&v34[*(v18 + 56)], v26[1], v37);
  (*(v36 + 32))(v28, v34, v35);
  v38 = sub_1000372CC();
  v39(v38);
  sub_1000212EC();
}

void sub_1007FF14C()
{
  sub_100020DF0();
  v1 = v0;
  sub_10022C350(&qword_100CDB418, &unk_100A88190);
  sub_100018784();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100003CF8();
  sub_100806988();
  sub_100008B5C();
  sub_1000302D8(v3, v4, v5, v6);
  sub_100453998();
  sub_10003A3A8(*(v1 + 8));
  sub_100008B5C();
  sub_10011C0F0(v7, v8, v9, v10);
  sub_10003C890();
  sub_1000212EC();
}

void sub_1007FF218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_100020DF0();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  sub_10022C350(&qword_100CDB410, &qword_100A88188);
  sub_100010654();
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &a9 - v24;
  sub_10066A9DC();
  sub_100008B5C();
  sub_1000302D8(v26, v27, v28, v29);
  v30 = sub_10022C350(&qword_100CCF668, &qword_100A70880);
  sub_10023FBF4(&qword_100CCF660, &qword_100CCF658, &qword_100A70878, &protocol conformance descriptor for AxisValueLabel<A>);
  (*(*(v30 - 8) + 16))(&v25[*(v18 + 56)], *(v22 + 8), v30);
  sub_100008B5C();
  sub_10011C0F0(v31, v32, v33, v34);
  v35 = sub_1000372CC();
  v36(v35);
  sub_1000212EC();
}

uint64_t sub_1007FF370@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CDB3E8, &qword_100A88128);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  sub_100806798();
  sub_1000302D8(*a1, v7, &qword_100CDB3C0, &qword_100A88108);
  v8 = sub_10022C350(&qword_100CDB3D0, &unk_100A88110);
  sub_10023FBF4(&qword_100CDB3C8, &qword_100CDB3D0, &unk_100A88110, &protocol conformance descriptor for AxisValueLabel<A>);
  v9 = *(v5 + 56);
  v10 = *(v8 - 8);
  (*(v10 + 16))(&v7[v9], a1[1], v8);
  sub_10066A9DC();
  v11 = *(v5 + 72);
  sub_1000302D8(a1[2], &v7[v11], &qword_100CCF650, &qword_100A70870);
  sub_10011C0F0(v7, a2, &qword_100CDB3C0, &qword_100A88108);
  (*(v10 + 32))(a2 + *(v5 + 56), &v7[v9], v8);
  return sub_10011C0F0(&v7[v11], a2 + *(v5 + 72), &qword_100CCF650, &qword_100A70870);
}

void sub_1007FF53C()
{
  sub_10000C778();
  v3 = v2;
  v4 = type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_100003CF8();
  v12 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  sub_1000302D8(v0 + *(v12 + 36), v1, &qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v13 + 32))(v3, v1);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v10, v4);
  }

  sub_10000536C();
}

void sub_1007FF704()
{
  sub_10000C778();
  v80 = v0;
  v73 = v1;
  v74 = v2;
  v4 = v3;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v82 = v6;
  v83 = v5;
  __chkstk_darwin(v5);
  sub_1000038E4();
  v77 = v7;
  sub_1000038CC();
  v78 = type metadata accessor for Location();
  sub_1000037C4();
  v76 = v8;
  __chkstk_darwin(v9);
  sub_1000038E4();
  v75 = v10;
  sub_1000038CC();
  v81 = type metadata accessor for Calendar();
  sub_1000037C4();
  v79 = v11;
  __chkstk_darwin(v12);
  sub_1000038E4();
  v72 = v13;
  sub_1000038CC();
  v14 = type metadata accessor for ShadowModel();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_1000038E4();
  v71 = v16;
  sub_1000038CC();
  v17 = type metadata accessor for SunriseSunsetDetailChartContentStyle.TwilightSunColors();
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_1000038E4();
  v70 = v19;
  sub_1000038CC();
  type metadata accessor for Color.RGBColorSpace();
  sub_1000037C4();
  v67 = v20;
  v68 = v21;
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000037E8();
  __chkstk_darwin(v22);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v67 - v26;
  v28 = type metadata accessor for Date();
  v29 = sub_10000900C();
  sub_10001B350(v29, v30, v31, v28);
  sub_1000302D8(v27, v24, &unk_100CB2CF0, &unk_100A2D7F0);
  State.init(wrappedValue:)();
  sub_100018198(v27, &unk_100CB2CF0);
  v32 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  v33 = sub_10000900C();
  sub_10001B350(v33, v34, v35, v28);
  sub_1000302D8(v27, v24, &unk_100CB2CF0, &unk_100A2D7F0);
  State.init(wrappedValue:)();
  sub_100018198(v27, &unk_100CB2CF0);
  v36 = v32[7];
  v84 = 0;
  State.init(wrappedValue:)();
  *(v4 + v36) = v85[0];
  v37 = v32[9];
  *(v4 + v37) = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  swift_storeEnumTagMultiPayload();
  *(v4 + v32[12]) = 0x4030000000000000;
  v38 = v4;
  v69 = v32[13];
  v39 = *(v68 + 104);
  v40 = sub_100028BE8();
  v39(v40);
  v68 = Color.init(_:red:green:blue:opacity:)();
  v41 = sub_100028BE8();
  v42 = v39(v41);
  v42.n128_u64[0] = 0x3FD3333333333333;
  sub_1000216F4(v42, v43);
  v44 = sub_100028BE8();
  v45 = v39(v44);
  v45.n128_u64[0] = 0.5;
  sub_1000216F4(v45, v46);
  v47 = sub_100028BE8();
  v48 = v39(v47);
  v48.n128_u64[0] = 0x3FD6666666666666;
  sub_1000216F4(v48, v49);
  v50 = sub_100028BE8();
  v51 = v39(v50);
  v51.n128_u64[0] = 0x3FC999999999999ALL;
  sub_1000216F4(v51, v52);
  sub_100003940();
  SunriseSunsetDetailChartContentStyle.TwilightSunColors.init(twilightCivil:twilightNautical:twilightAstronomical:)();
  static SunriseSunsetDetailChartContentStyle.defaultNightLineGradient.getter();
  static SunriseSunsetDetailChartContentStyle.defaultDayLineGradient.getter();
  static Image.sunriseSunsetDay.getter();
  static Image.sunriseSunsetNight.getter();
  static ShadowModel.clear.getter();
  sub_100003940();
  SunriseSunsetDetailChartContentStyle.init(nightLineGradient:dayLineGradient:daySunImage:nightSunImage:dayNightLineWidth:horizonLineWidth:horizonLineColor:horizonLineShadow:sunImageWidth:nightSunColor:nightSunSymbolSize:twilightSunColors:twilightSunSymbolSize:)();
  *(v4 + v32[14]) = 0x4024000000000000;
  *(v4 + v32[15]) = 0x4030000000000000;
  *(v4 + v32[16]) = 0x4000000000000000;
  v53 = v73;
  v54 = v74;
  v55 = *(v73 + 8);
  *&v85[0] = *v73;
  v71 = v55;
  v56 = v4 + v32[5];
  v57 = *(v73 + 16);
  *v56 = *v73;
  *(v56 + 16) = v57;
  *(v56 + 32) = *(v53 + 32);
  sub_1000302D8(v54, v4 + v32[8], &qword_100CDB158, &unk_100A87F30);
  v58 = objc_allocWithZone(UISelectionFeedbackGenerator);
  sub_1007FFE10(v85, &v84);

  *(v38 + v32[10]) = [v58 init];
  v59 = v32[11];
  v60 = type metadata accessor for SunriseSunsetDetailChartViewModel();
  sub_100003928();
  v62 = v61;
  v63 = v80;
  (*(v61 + 16))(v38 + v59, v80, v60);
  v64 = v72;
  static Calendar.current.getter();
  v65 = v75;
  SunriseSunsetDetailChartViewModel.location.getter();
  v66 = v77;
  Location.timeZone.getter();
  (*(v76 + 8))(v65, v78);
  Calendar.withTimeZone(_:)();
  sub_1007FFE6C(v85);

  (*(v62 + 8))(v63, v60);
  sub_100018198(v54, &qword_100CDB158);
  (*(v82 + 8))(v66, v83);
  (*(v79 + 8))(v64, v81);
  sub_10000536C();
}

uint64_t type metadata accessor for SunriseSunsetInteractiveChartView(uint64_t a1)
{
  result = qword_100CDB1B8;
  if (!qword_100CDB1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007FFEE8(uint64_t a1)
{
  sub_10080013C(319, &qword_100CBB7E8, &unk_100CB2CF0, &unk_100A2D7F0, &type metadata accessor for State);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10080013C(319, &unk_100CC0E40, &qword_100CC07D8, &qword_100A84020, &type metadata accessor for Binding);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1008000EC();
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_10080013C(319, &qword_100CDB1C8, &qword_100CAB930, &qword_100A3A7C0, &type metadata accessor for Binding);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_100578820(319);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            v2 = sub_10000C70C(319, &unk_100CDB1D0, UISelectionFeedbackGenerator_ptr);
            if (v12 <= 0x3F)
            {
              v2 = type metadata accessor for SunriseSunsetDetailChartViewModel();
              if (v13 <= 0x3F)
              {
                v2 = type metadata accessor for SunriseSunsetDetailChartContentStyle();
                if (v14 <= 0x3F)
                {
                  v2 = type metadata accessor for Calendar();
                  if (v15 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                    return 0;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1008000EC()
{
  if (!qword_100CD22A8[0])
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, qword_100CD22A8);
    }
  }
}

void sub_10080013C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1008001BC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v160 = a1;
  type metadata accessor for SunriseSunsetInteractiveChartView(0);
  sub_1000037C4();
  v158 = v4;
  __chkstk_darwin(v5);
  v164 = v6;
  sub_100003990(&v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v156 = v7;
  __chkstk_darwin(v8);
  sub_1000038E4();
  sub_100003990(v9);
  v141 = type metadata accessor for PlotDimensionScaleRange();
  sub_1000037C4();
  v137 = v10;
  __chkstk_darwin(v11);
  sub_1000038E4();
  sub_100003990(v12);
  v13 = sub_10022C350(&qword_100CBABB8, &qword_100A50510);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v132 - v15;
  v17 = sub_10022C350(&qword_100CDB230, &qword_100A87FC0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v18);
  sub_100003CF8();
  v135 = sub_10022C350(&qword_100CDB238, &qword_100A87FC8);
  sub_1000037C4();
  v134 = v19;
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  sub_100003990(v21);
  v140 = sub_10022C350(&qword_100CDB240, &qword_100A87FD0);
  sub_1000037C4();
  v139 = v22;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_1000039BC();
  sub_100003990(v24);
  v146 = sub_10022C350(&qword_100CDB248, &qword_100A87FD8);
  sub_1000037C4();
  v143 = v25;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100003990(v27);
  v148 = sub_10022C350(&qword_100CDB250, &qword_100A87FE0);
  sub_1000037C4();
  v145 = v28;
  sub_100003828();
  __chkstk_darwin(v29);
  sub_1000039BC();
  sub_100003990(v30);
  v150 = sub_10022C350(&qword_100CDB258, &qword_100A87FE8);
  sub_1000037C4();
  v149 = v31;
  sub_100003828();
  __chkstk_darwin(v32);
  sub_1000039BC();
  sub_100003990(v33);
  v152 = sub_10022C350(&qword_100CDB260, &qword_100A87FF0);
  sub_1000037C4();
  v151 = v34;
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  sub_100003990(v36);
  v154 = sub_10022C350(&qword_100CDB268, &qword_100A87FF8);
  sub_1000037C4();
  v153 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  sub_100003990(v39);
  v166 = v1;
  type metadata accessor for SunriseSunsetDetailChartContent();
  sub_100806118(&qword_100CDB270, &type metadata accessor for SunriseSunsetDetailChartContent, &protocol conformance descriptor for SunriseSunsetDetailChartContent);
  Chart.init(content:)();
  v40 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v2 + *(sub_10022C350(&qword_100CDB278, &unk_100A88000) + 36);
  *v49 = v40;
  *(v49 + 8) = v42;
  *(v49 + 16) = v44;
  *(v49 + 24) = v46;
  *(v49 + 32) = v48;
  *(v49 + 40) = 0;
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F28();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v50 = (v2 + *(v17 + 36));
  v51 = v175;
  *v50 = v174;
  v50[1] = v51;
  v50[2] = v176;
  v167 = SunriseSunsetDetailChartViewModel.xDomain.getter();
  v52 = type metadata accessor for ScaleType();
  v165 = v3;
  v133 = v52;
  v53 = sub_10000900C();
  sub_10001B350(v53, v54, v55, v56);
  v57 = v16;
  v132 = sub_10022C350(&qword_100CA72D0, &qword_100A32450);
  v58 = sub_1008059FC();
  v59 = sub_100805B40(&qword_100CCF570, &qword_100CA72D0, &qword_100A32450, &protocol witness table for Date);
  v60 = v17;
  View.chartXScale<A>(domain:type:)();
  sub_100018198(v57, &qword_100CBABB8);

  sub_100018198(v2, &qword_100CDB230);
  sub_10022C350(&qword_100CAB9C0, &unk_100A3A830);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100A2D320;
  SunriseSunsetDetailChartViewModel.chartMinYValue.getter();
  *(v61 + 32) = v62;
  SunriseSunsetDetailChartViewModel.chartMaxYValue.getter();
  *(v61 + 40) = v63;
  v173 = v61;
  v64 = v136;
  static PositionScaleRange<>.plotDimension(startPadding:endPadding:)();
  sub_10001B350(v57, 1, 1, v133);
  v65 = sub_100003940();
  v67 = sub_10022C350(v65, v66);
  v167 = v60;
  v168 = v132;
  v169 = v58;
  v170 = v59;
  v68 = sub_10004EB1C();
  v69 = sub_100805B40(&qword_100CCF580, &qword_100CCF578, &qword_100A88020, &protocol witness table for Double);
  v70 = v138;
  sub_10002CA80();
  v71 = v135;
  v72 = v141;
  v73 = v161;
  View.chartYScale<A, B>(domain:range:type:)();
  sub_100018198(v57, &qword_100CBABB8);
  sub_10000E73C();
  v74(v64, v72);

  sub_10000E73C();
  v76 = v75(v73, v71);
  v161 = &v132;
  __chkstk_darwin(v76);
  sub_100031848();
  v77 = v165;
  *(v78 - 16) = v165;
  v137 = sub_10022C350(&qword_100CDB2A0, &qword_100A88028);
  v167 = v71;
  v168 = v67;
  v169 = v72;
  v170 = v68;
  v171 = v69;
  v172 = &protocol witness table for PlotDimensionScaleRange;
  v79 = sub_10004EB1C();
  v80 = sub_10022E824(&qword_100CDB2A8, &qword_100A88030);
  v81 = sub_10022E824(&qword_100CDB2B0, &qword_100A88038);
  sub_100014F44();
  v141 = v82;
  v85 = sub_10023FBF4(v83, &qword_100CDB2A8, &qword_100A88030, v84);
  v86 = sub_100805BC8();
  v167 = v80;
  v168 = v81;
  v169 = v85;
  v170 = v86;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = v142;
  v89 = v140;
  v90 = v137;
  View.chartXAxis<A>(content:)();
  sub_10000E73C();
  v92 = v91(v70, v89);
  __chkstk_darwin(v92);
  sub_100031848();
  *(v93 - 16) = v77;
  v94 = sub_10022C350(&qword_100CDB2D8, &qword_100A88048);
  v167 = v89;
  v168 = v90;
  v169 = v79;
  v170 = OpaqueTypeConformance2;
  v95 = sub_10004EB1C();
  v96 = sub_10022E824(&qword_100CDB2E0, &qword_100A88050);
  v97 = sub_10022E824(&qword_100CDB2E8, &qword_100A88058);
  v98 = sub_10023FBF4(&qword_100CDB2F0, &qword_100CDB2E0, &qword_100A88050, v141);
  v99 = sub_100805C98();
  v167 = v96;
  v168 = v97;
  v169 = v98;
  v170 = v99;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v144;
  v102 = v146;
  View.chartYAxis<A>(content:)();
  sub_10000E73C();
  v103(v88, v102);
  v104 = v156;
  v105 = v155;
  v106 = v157;
  (*(v156 + 104))(v155, enum case for DynamicTypeSize.large(_:), v157);
  v167 = v102;
  v168 = v94;
  v169 = v95;
  v170 = v100;
  v107 = sub_10004EB1C();
  v108 = v147;
  v109 = v148;
  View.dynamicTypeSize(_:)();
  (*(v104 + 8))(v105, v106);
  sub_10000E73C();
  v111 = v110(v101, v109);
  __chkstk_darwin(v111);
  sub_100031848();
  v112 = v165;
  *(v113 - 16) = v165;
  v157 = sub_10022C350(&qword_100CB90B0, &qword_100A4D630);
  v167 = v109;
  v168 = v107;
  v114 = sub_10004EB1C();
  v115 = sub_100433B9C();
  v116 = v150;
  View.accessibilityRepresentation<A>(representation:)();
  sub_10000E73C();
  v117(v108, v116);
  v118 = v159;
  sub_100805D58(v112, v159);
  v119 = (*(v158 + 80) + 16) & ~*(v158 + 80);
  v120 = sub_100041B80(&unk_100C6ED30);
  sub_100805DBC(v118, v120 + v119);
  static Alignment.center.getter();
  v121 = sub_10022C350(&qword_100CDB310, &qword_100A88070);
  v167 = v116;
  v168 = v157;
  v169 = v114;
  v170 = v115;
  v122 = sub_10004EB1C();
  v123 = sub_100805E8C();
  v124 = v152;
  v125 = v162;
  View.chartBackground<A>(alignment:content:)();

  sub_10000E73C();
  v126(v125, v124);
  sub_100805D58(v165, v118);
  v127 = sub_100041B80(&unk_100C6ED58);
  sub_100805DBC(v118, v127 + v119);
  static Alignment.center.getter();
  sub_10022C350(&qword_100CDB340, &qword_100A88098);
  v167 = v124;
  v168 = v121;
  v169 = v122;
  v170 = v123;
  sub_10004EB1C();
  sub_100806040();
  v128 = v154;
  v129 = v163;
  View.chartOverlay<A>(alignment:content:)();

  sub_10000E73C();
  return v130(v129, v128);
}

uint64_t sub_100801180(uint64_t a1)
{
  v2 = type metadata accessor for SunriseSunsetDetailChartContentStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SunriseSunsetDetailChartViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  (*(v7 + 16))(v9, a1 + *(v10 + 44), v6);
  (*(v3 + 16))(v5, a1 + *(v10 + 52), v2);
  return SunriseSunsetDetailChartContent.init(model:style:sampleBlocks:)();
}

void sub_100801318()
{
  sub_10000C778();
  v1 = v0;
  v47 = v2;
  v3 = type metadata accessor for AxisMarkPosition();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000038E4();
  v46 = v5;
  sub_1000038CC();
  v6 = type metadata accessor for AxisMarkPreset();
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  v45 = v8;
  v9 = sub_1000038CC();
  v10 = type metadata accessor for SunriseSunsetInteractiveChartView(v9);
  v11 = v10 - 8;
  v43 = *(v10 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v10);
  v41 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CBADB0, &unk_100A708C0);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = type metadata accessor for Calendar.Component();
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_1000037D8();
  v23 = v22 - v21;
  v24 = type metadata accessor for AxisMarkValues();
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v42 = sub_10022C350(&qword_100CDB2A8, &qword_100A88030);
  sub_1000037C4();
  v44 = v26;
  sub_100003828();
  v28 = __chkstk_darwin(v27);
  v30 = &v40 - v29;
  (*(v19 + 104))(v23, enum case for Calendar.Component.hour(_:), v17, v28);
  v31 = *(v11 + 76);
  v32 = type metadata accessor for Calendar();
  sub_1000037E8();
  (*(v33 + 16))(v16, v1 + v31, v32);
  sub_10001B350(v16, 0, 1, v32);
  static AxisMarkValues.stride(by:count:roundLowerBound:roundUpperBound:calendar:)();
  sub_100018198(v16, &qword_100CBADB0);
  (*(v19 + 8))(v23, v17);
  v34 = v41;
  sub_100805D58(v1, v41);
  v35 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v36 = swift_allocObject();
  sub_100805DBC(v34, v36 + v35);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_10022C350(&qword_100CDB3A8, &qword_100A88100);
  sub_1008066D0();
  AxisMarks.init(preset:position:values:content:)();
  sub_10022C350(&qword_100CDB2B0, &qword_100A88038);
  sub_100014F44();
  sub_10023FBF4(v37, &qword_100CDB2A8, &qword_100A88030, v38);
  sub_100805BC8();
  v39 = v42;
  AxisContent.compositingLayer<A>(style:)();
  (*(v44 + 8))(v30, v39);
  sub_10000536C();
}

void sub_100801788()
{
  sub_10000C778();
  v1 = type metadata accessor for AxisMarkPosition();
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  v3 = type metadata accessor for AxisMarkPreset();
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_1000037D8();
  v5 = type metadata accessor for AxisMarkValues();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v7 = sub_10022C350(&qword_100CDB2E0, &qword_100A88050);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100003CF8();
  sub_10014AB54();
  static AxisMarkValues.stride<A>(by:roundLowerBound:roundUpperBound:)();
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_10022C350(&qword_100CCF650, &qword_100A70870);
  sub_10066A9DC();
  AxisMarks.init(preset:position:values:content:)();
  sub_10022C350(&qword_100CDB2E8, &qword_100A88058);
  sub_100014F44();
  sub_10023FBF4(v11, &qword_100CDB2E0, &qword_100A88050, v12);
  sub_100805C98();
  AxisContent.compositingLayer<A>(style:)();
  (*(v9 + 8))(v0, v7);
  sub_10000536C();
}

uint64_t sub_1008019E8@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v63 = a2;
  v2 = type metadata accessor for AccessibilityCustomContentKey();
  __chkstk_darwin(v2 - 8);
  v69 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel();
  v65 = *(v68 - 8);
  __chkstk_darwin(v68);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AccessibilityCustomContentEntry();
  v70 = *(v67 - 8);
  __chkstk_darwin(v67);
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v7);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CB90B0, &qword_100A4D630);
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v16 = *(v7 + 20);
  v17 = enum case for RoundedCornerStyle.continuous(_:);
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(&v9[v16], v17, v18);
  __asm { FMOV            V0.2D, #5.0 }

  *v9 = _Q0;
  v24 = LocalizedStringKey.init(stringLiteral:)();
  v28 = Text.init(_:tableName:bundle:comment:)(v24, v26, v25 & 1, v27, 0, 0, 0, 0, 0, 256);
  v30 = v29;
  v32 = v31;
  sub_100806118(&qword_100CA47B8, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
  View.accessibilityLabel(_:)();
  sub_10010CD64(v28, v30, v32 & 1);

  sub_100433DB4(v9);
  v33 = LocalizedStringKey.init(stringLiteral:)();
  LOWORD(v58) = 256;
  v37 = Text.init(_:tableName:bundle:comment:)(v33, v35, v34 & 1, v36, 0, 0, 0, 0, 0, v58);
  v39 = v38;
  v41 = v40;
  v61 = v15;
  v62 = v10;
  ModifiedContent<>.accessibilityHint(_:)();
  sub_10010CD64(v37, v39, v41 & 1);

  sub_100018198(v12, &qword_100CB90B0);
  type metadata accessor for SunriseSunsetInteractiveChartView(0);
  v42 = SunriseSunsetDetailChartViewModel.sunEventAccessibilityModels.getter();
  v43 = *(v42 + 16);
  if (v43)
  {
    v73 = _swiftEmptyArrayStorage;
    sub_1006A838C();
    v44 = v73;
    v45 = v65 + 16;
    v46 = *(v65 + 16);
    v47 = *(v65 + 80);
    v59 = v42;
    v48 = v42 + ((v47 + 32) & ~v47);
    v65 = *(v65 + 72);
    v66 = v46;
    v49 = (v45 - 8);
    v64 = v70 + 32;
    v50 = v45;
    v51 = v60;
    do
    {
      v52 = v68;
      v53 = v50;
      v66(v5, v48, v68);
      SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.label.getter();
      LocalizedStringKey.init(_:)();
      AccessibilityCustomContentKey.init(_:)();
      v71 = SunriseSunsetDetailChartViewModel.SunEventAccessibilityModel.value.getter();
      v72 = v54;
      sub_10002D5A4();
      Text.init<A>(_:)();
      AccessibilityCustomContentEntry.init(_:value:importance:)();
      (*v49)(v5, v52);
      v73 = v44;
      v55 = v44[2];
      if (v55 >= v44[3] >> 1)
      {
        sub_1006A838C();
        v51 = v60;
        v44 = v73;
      }

      v44[2] = v55 + 1;
      (*(v70 + 32))(v44 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v55, v51, v67);
      v48 += v65;
      --v43;
      v50 = v53;
    }

    while (v43);
  }

  v56 = v61;
  ModifiedContent<>.accessibilityCustomContent(_:)();

  return sub_100018198(v56, &qword_100CB90B0);
}

void *sub_100801FFC@<X0>(void *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CCD140, &unk_100A6DBF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for SunriseSunsetChartBackground();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SunriseSunsetInteractiveChartView(0);
  SunriseSunsetDetailChartViewModel.chartBackground.getter();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_100018198(v4, &qword_100CCD140);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v26[0] = 0;
    ChartProxy.position<A>(forY:)();
    if ((v9 & 1) == 0)
    {
      SunriseSunsetChartBackground.gradient.getter();
      LinearGradient.init(gradient:startPoint:endPoint:)();
      v16 = v19;
      ChartProxy.plotSize.getter();
      SunriseSunsetDetailChartContentStyle.horizonLineWidth.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v18[6] = v22;
      *&v18[22] = v23;
      *&v18[38] = v24;
      SunriseSunsetChartBackground.opacity.getter();
      v11 = v10;
      static Alignment.topLeading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v12 = *(v6 + 8);
      v14 = v21;
      v15 = v20;
      v12(v8, v5);
      v17[0] = v16;
      *&v17[1] = v15;
      *&v17[3] = v14;
      LOWORD(v17[5]) = 256;
      *(&v17[5] + 2) = *v18;
      *(&v17[7] + 2) = *&v18[16];
      *(&v17[9] + 2) = *&v18[32];
      v17[11] = *&v18[46];
      v17[12] = v11;
      memcpy(&v17[13], v25, 0x70uLL);
      LocationSearchEntityFromStringResolver.init()();
      memcpy(v26, v17, 0xD8uLL);
      return memcpy(a1, v26, 0xD8uLL);
    }

    (*(v6 + 8))(v8, v5);
  }

  sub_100806630(v26);
  return memcpy(a1, v26, 0xD8uLL);
}

void *sub_10080235C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CDB358, &qword_100A880A0);
  __chkstk_darwin(v6 - 8);
  v8 = (__src - v7);
  *v8 = static Alignment.topLeading.getter();
  v8[1] = v9;
  v10 = sub_10022C350(&qword_100CDB360, &qword_100A880A8);
  sub_1008024AC(a2, a1, v8 + *(v10 + 44));
  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10011C0F0(v8, a3, &qword_100CDB358, &qword_100A880A0);
  v11 = sub_10022C350(&qword_100CDB340, &qword_100A88098);
  return memcpy((a3 + *(v11 + 36)), __src, 0x70uLL);
}

uint64_t sub_1008024AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v96 = a2;
  v92 = a3;
  v4 = type metadata accessor for LocalCoordinateSpace();
  v90 = *(v4 - 8);
  v91 = v4;
  __chkstk_darwin(v4);
  v89 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for ChartProxy();
  v77 = *(v86 - 8);
  __chkstk_darwin(v86);
  v95 = v6;
  v83 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v93 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChartDragGestureRecognizerRepresentable();
  v79 = *(v10 - 8);
  v80 = v10;
  __chkstk_darwin(v10);
  v78 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CDB368, &qword_100A880B0);
  v81 = *(v12 - 8);
  v82 = v12;
  __chkstk_darwin(v12);
  v94 = &v67 - v13;
  v14 = sub_10022C350(&qword_100CDB370, &qword_100A880B8);
  v87 = *(v14 - 8);
  v88 = v14;
  __chkstk_darwin(v14);
  v85 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v84 = &v67 - v17;
  v18 = *(v7 + 20);
  v97 = a1;
  v19 = a1 + v18;
  v20 = *(v19 + 8);
  v21 = *(v19 + 32);
  *&v107[0] = *v19;
  *(&v107[0] + 1) = v20;
  v107[1] = *(v19 + 16);
  LOBYTE(v107[2]) = v21;
  sub_10022C350(&qword_100CDB378, &unk_100A880C0);
  Binding.wrappedValue.getter();
  if (v106[2])
  {
    sub_1008060F8(v107);
  }

  else
  {
    v22 = *v106;
    v23 = *&v106[1];
    SunriseSunsetDetailChartViewModel.chartMinYValue.getter();
    *&v107[0] = v24;
    ChartProxy.position<A>(forY:)();
    v73 = v9;
    v74 = v8;
    if (v25)
    {
      v75 = 0;
      v76 = 0;
      v26 = 0;
      v71 = 0;
      v72 = 0;
      v69 = 0;
      v70 = 0;
      v27 = 0;
      v28 = 0.0;
    }

    else
    {
      v76 = static Color.white.getter();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v26 = v106[32];
      v75 = v106[33];
      v71 = v106[35];
      v72 = v106[34];
      v27 = 256;
      v28 = v22;
      v69 = v106[37];
      v70 = v106[36];
    }

    v67 = v27;
    v68 = static Alignment.center.getter();
    v30 = v29;
    v31 = v97;
    sub_100802F0C(v107);
    memcpy(v99, v107, sizeof(v99));
    memcpy(v100, v107, sizeof(v100));
    sub_1000302D8(v99, v106, &qword_100CDB390, &qword_100A880E0);
    sub_100018198(v100, &qword_100CDB390);
    v32 = *(v31 + *(v7 + 60)) * 0.5;
    v33 = v22 - v32;
    v34 = v23 - v32;
    memcpy(&v105[2], v99, 0x80uLL);
    v35 = v75;
    v101[0] = v76;
    v101[1] = v27;
    v101[2] = v26;
    v101[3] = v75;
    v36 = v71;
    v37 = v72;
    v101[4] = v72;
    v101[5] = v71;
    v39 = v69;
    v38 = v70;
    v101[6] = v70;
    v101[7] = v69;
    *&v101[8] = v28;
    v101[9] = 0;
    LOBYTE(v101[10]) = 0;
    memcpy(v98, v101, 0x51uLL);
    v104[0] = v68;
    v104[1] = v30;
    memcpy(&v104[2], v99, 0x80uLL);
    *&v104[18] = v33;
    *&v104[19] = v34;
    LOBYTE(v104[20]) = 0;
    memcpy(&v98[88], v104, 0xA1uLL);
    v105[0] = v68;
    v105[1] = v30;
    *&v105[18] = v33;
    *&v105[19] = v34;
    LOBYTE(v105[20]) = 0;
    sub_1000302D8(v101, v107, &qword_100CDB398, &qword_100A880E8);
    sub_1000302D8(v104, v107, &qword_100CDB3A0, &unk_100A880F0);
    sub_100018198(v105, &qword_100CDB3A0);
    v102[0] = v76;
    v102[1] = v67;
    v102[2] = v26;
    v102[3] = v35;
    v102[4] = v37;
    v102[5] = v36;
    v102[6] = v38;
    v102[7] = v39;
    *&v102[8] = v28;
    v102[9] = 0;
    v103 = 0;
    sub_100018198(v102, &qword_100CDB398);
    memcpy(v106, v98, 0xF9uLL);
    LocationSearchEntityFromStringResolver.init()();
    memcpy(v107, v106, 0xF9uLL);
    v9 = v73;
    v8 = v74;
  }

  v76 = static Color.clear.getter();
  v106[0] = v76;
  LOWORD(v106[1]) = 256;
  BYTE2(v106[1]) = 0;
  v40 = v93;
  sub_100805D58(v97, v93);
  v41 = v77;
  v75 = *(v77 + 16);
  v42 = v83;
  v43 = v86;
  v75(v83, v96, v86);
  v44 = *(v8 + 80);
  v45 = *(v41 + 80);
  v46 = (v44 + 16) & ~v44;
  v47 = (v9 + v45 + v46) & ~v45;
  v73 = v44 | v45;
  v74 = v46;
  v48 = swift_allocObject();
  sub_100805DBC(v40, v48 + v46);
  v77 = *(v41 + 32);
  (v77)(v48 + v47, v42, v43);
  v49 = v78;
  ChartDragGestureRecognizerRepresentable.init(isRecognizedHandler:)();
  v72 = sub_10022C350(&qword_100CCE098, &unk_100A6EEE0);
  v50 = sub_10064B084();
  v71 = sub_100806118(&qword_100CCE0A8, &type metadata accessor for ChartDragGestureRecognizerRepresentable, &protocol conformance descriptor for ChartDragGestureRecognizerRepresentable);
  v51 = v80;
  View.gestureRecognizer<A>(_:)();
  (*(v79 + 8))(v49, v51);

  v52 = v93;
  sub_100805D58(v97, v93);
  v75(v42, v96, v43);
  v53 = swift_allocObject();
  sub_100805DBC(v52, v53 + v74);
  (v77)(v53 + v47, v42, v43);
  v54 = v89;
  static CoordinateSpaceProtocol<>.local.getter();
  v106[0] = v72;
  v106[1] = v51;
  v106[2] = v50;
  v106[3] = v71;
  swift_getOpaqueTypeConformance2();
  v55 = v84;
  v56 = v82;
  v57 = v91;
  v58 = v94;
  View.onContinuousHover<A>(coordinateSpace:perform:)();

  (*(v90 + 8))(v54, v57);
  (*(v81 + 8))(v58, v56);
  memcpy(v104, v107, 0xF9uLL);
  v60 = v87;
  v59 = v88;
  v61 = *(v87 + 16);
  v62 = v85;
  v61(v85, v55, v88);
  memcpy(v105, v104, 0xF9uLL);
  v63 = v92;
  memcpy(v92, v104, 0xF9uLL);
  v64 = sub_10022C350(&qword_100CDB380, &qword_100A880D0);
  v61(&v63[*(v64 + 48)], v62, v59);
  sub_1000302D8(v105, v106, &qword_100CDB388, &qword_100A880D8);
  v65 = *(v60 + 8);
  v65(v55, v59);
  v65(v62, v59);
  memcpy(v106, v104, 0xF9uLL);
  return sub_100018198(v106, &qword_100CDB388);
}

uint64_t sub_100802F0C@<X0>(void *a2@<X8>)
{
  v3 = [objc_opt_self() secondarySystemBackgroundColor];
  v4 = Color.init(_:)();
  type metadata accessor for SunriseSunsetInteractiveChartView(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v9[3] = *&v9[27];
  *&v9[11] = *&v9[35];
  *&v9[19] = v10;
  v5 = static Color.white.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v8[6] = v11;
  *&v8[22] = v12;
  *&v8[38] = v13;
  *v14 = v4;
  *&v14[8] = 256;
  *&v14[10] = *v9;
  *&v14[26] = *&v9[8];
  *&v14[42] = *&v9[16];
  *&v14[56] = *(&v10 + 1);
  *v15 = v5;
  v7[2] = *&v14[32];
  v7[3] = *&v14[48];
  v7[0] = *v14;
  v7[1] = *&v14[16];
  *&v15[8] = 256;
  *&v15[10] = *v8;
  *&v15[56] = *(&v13 + 1);
  *&v15[42] = *&v8[32];
  *&v15[26] = *&v8[16];
  v7[6] = *&v15[32];
  v7[7] = *&v15[48];
  v7[4] = *v15;
  v7[5] = *&v15[16];
  memcpy(a2, v7, 0x80uLL);
  v16 = v5;
  v17 = 256;
  v18 = *v8;
  v19 = *&v8[16];
  *v20 = *&v8[32];
  *&v20[14] = *&v8[46];
  sub_1000302D8(v14, &v21, &qword_100CBB260, &qword_100A6F1A0);
  sub_1000302D8(v15, &v21, &qword_100CBB260, &qword_100A6F1A0);
  sub_100018198(&v16, &qword_100CBB260);
  v21 = v4;
  v22 = 256;
  v23 = *v9;
  v24 = *&v9[8];
  *v25 = *&v9[16];
  *&v25[14] = *&v9[23];
  return sub_100018198(&v21, &qword_100CBB260);
}

uint64_t sub_100803148(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v10 - 8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  v16 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v16 - 8);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v28 - v20;
  if (a3)
  {
    v22 = (a4 + *(type metadata accessor for SunriseSunsetInteractiveChartView(0) + 20));
    v23 = v22[1];
    v24 = *(v22 + 32);
    v30 = *v22;
    v31 = v23;
    v32 = *(v22 + 1);
    v33 = v24;
    v28[0] = a1;
    v28[1] = a2;
    v29 = 1;
    sub_10022C350(&qword_100CDB378, &unk_100A880C0);
    Binding.wrappedValue.setter();
    v25 = type metadata accessor for DetailChartDataElement();
    sub_10001B350(v21, 1, 1, v25);
    sub_1000302D8(v21, v18, &qword_100CAB930, &qword_100A3A7C0);
    sub_10022C350(&qword_100CDB158, &unk_100A87F30);
    Binding.wrappedValue.setter();
    sub_100018198(v21, &qword_100CAB930);
    v26 = type metadata accessor for Date();
    sub_10001B350(v15, 1, 1, v26);
    sub_1000302D8(v15, v12, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_10022C350(&qword_100CBB758, &unk_100A51060);
    State.wrappedValue.setter();
    return sub_100018198(v15, &unk_100CB2CF0);
  }

  else
  {
    type metadata accessor for Date();
    ChartProxy.value<A>(atX:as:)();
    sub_1000302D8(v15, v12, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_10022C350(&qword_100CBB758, &unk_100A51060);
    State.wrappedValue.setter();
    sub_100018198(v15, &unk_100CB2CF0);
    return sub_100803464(a5);
  }
}

uint64_t sub_100803464(uint64_t a1)
{
  v57 = a1;
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v54 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = v47 - v5;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v55 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v47 - v10;
  v12 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v12 - 8);
  v58 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  __chkstk_darwin(v17);
  v19 = v47 - v18;
  v20 = type metadata accessor for DetailChartDataElement();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  sub_1008051B4(v19);
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_100018198(v19, &qword_100CAB930);
LABEL_6:
    v33 = (v24 + *(type metadata accessor for SunriseSunsetInteractiveChartView(0) + 20));
    v34 = v33[1];
    v35 = *(v33 + 32);
    v62 = *v33;
    v63 = v34;
    v64 = *(v33 + 1);
    v65 = v35;
    v59 = 0.0;
    v60 = 0;
    v61 = 1;
    sub_10022C350(&qword_100CDB378, &unk_100A880C0);
    Binding.wrappedValue.setter();
    sub_10001B350(v16, 1, 1, v20);
    sub_1000302D8(v16, v58, &qword_100CAB930, &qword_100A3A7C0);
    sub_10022C350(&qword_100CDB158, &unk_100A87F30);
    Binding.wrappedValue.setter();
    return sub_100018198(v16, &qword_100CAB930);
  }

  (*(v21 + 32))(v23, v19, v20);
  DetailChartDataElement.date.getter();
  v25 = ChartProxy.position<A>(forX:)();
  v27 = v26;
  v53 = v7;
  v29 = *(v7 + 8);
  v28 = v7 + 8;
  v52 = v29;
  v29(v11, v6);
  if (v27 & 1) != 0 || (DetailChartDataElement.value.getter(), v62 = v30, v31 = ChartProxy.position<A>(forY:)(), (v32))
  {
    (*(v21 + 8))(v23, v20);
    goto LABEL_6;
  }

  v48 = v31;
  v51 = v28;
  v37 = *&v25;
  DetailChartDataElement.date.getter();
  v38 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  v47[0] = *(v24 + v38[10]);
  [v47[0] prepare];
  v47[1] = v38[11];
  v39 = v38[6];
  v49 = sub_10022C350(&qword_100CBB758, &unk_100A51060);
  v50 = v39;
  v40 = v56;
  State.wrappedValue.getter();
  LOBYTE(v39) = SunriseSunsetDetailChartViewModel.shouldTriggerHaptic(currentDate:previousDate:)();
  sub_100018198(v40, &unk_100CB2CF0);
  if (v39)
  {
    [v47[0] selectionChanged];
  }

  v41 = sub_100805508(v57, v37);
  v42 = (v24 + v38[5]);
  v43 = v42[1];
  v44 = *(v42 + 32);
  v62 = *v42;
  v63 = v43;
  v64 = *(v42 + 1);
  v65 = v44;
  v59 = v41;
  v60 = v48;
  v61 = 0;
  sub_10022C350(&qword_100CDB378, &unk_100A880C0);
  Binding.wrappedValue.setter();
  (*(v21 + 16))(v16, v23, v20);
  sub_10001B350(v16, 0, 1, v20);
  sub_1000302D8(v16, v58, &qword_100CAB930, &qword_100A3A7C0);
  sub_10022C350(&qword_100CDB158, &unk_100A87F30);
  Binding.wrappedValue.setter();
  sub_100018198(v16, &qword_100CAB930);
  v45 = v55;
  v46 = v56;
  (*(v53 + 16))(v56, v55, v6);
  sub_10001B350(v46, 0, 1, v6);
  sub_1000302D8(v46, v54, &unk_100CB2CF0, &unk_100A2D7F0);
  State.wrappedValue.setter();
  sub_100018198(v46, &unk_100CB2CF0);
  v52(v45, v6);
  return (*(v21 + 8))(v23, v20);
}

uint64_t sub_100803B10(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v14 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v26 - v18;
  if (a3)
  {
    v20 = (a4 + *(type metadata accessor for SunriseSunsetInteractiveChartView(0) + 20));
    v21 = v20[1];
    v22 = *(v20 + 32);
    v28 = *v20;
    v29 = v21;
    v30 = *(v20 + 1);
    v31 = v22;
    v26[0] = 0;
    v26[1] = 0;
    v27 = 1;
    sub_10022C350(&qword_100CDB378, &unk_100A880C0);
    Binding.wrappedValue.setter();
    v23 = type metadata accessor for DetailChartDataElement();
    sub_10001B350(v13, 1, 1, v23);
    sub_1000302D8(v13, v10, &qword_100CAB930, &qword_100A3A7C0);
    sub_10022C350(&qword_100CDB158, &unk_100A87F30);
    Binding.wrappedValue.setter();
    sub_100018198(v13, &qword_100CAB930);
    v24 = type metadata accessor for Date();
    sub_10001B350(v19, 1, 1, v24);
    sub_1000302D8(v19, v16, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_10022C350(&qword_100CBB758, &unk_100A51060);
    State.wrappedValue.setter();
    return sub_100018198(v19, &unk_100CB2CF0);
  }

  else
  {
    type metadata accessor for Date();
    ChartProxy.value<A>(atX:as:)();
    sub_1000302D8(v19, v16, &unk_100CB2CF0, &unk_100A2D7F0);
    sub_10022C350(&qword_100CBB758, &unk_100A51060);
    State.wrappedValue.setter();
    sub_100018198(v19, &unk_100CB2CF0);
    return sub_100803464(a5);
  }
}

uint64_t sub_100803E28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v71 = a1;
  v79 = a2;
  v3 = type metadata accessor for AxisGridLine();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v68 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10022C350(&qword_100CBAD88, &unk_100A50670);
  v67 = *(v76 - 8);
  __chkstk_darwin(v76);
  v66 = &v63 - v5;
  v6 = sub_10022C350(&qword_100CCF650, &qword_100A70870);
  __chkstk_darwin(v6 - 8);
  v78 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v63 - v9;
  v10 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10022C350(&qword_100CDB3D0, &unk_100A88110);
  v74 = *(v12 - 8);
  v75 = v12;
  __chkstk_darwin(v12);
  v73 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v81 = &v63 - v15;
  v16 = type metadata accessor for AxisTick.Length();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for AxisTick();
  v65 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CBAE08, &unk_100A708B0);
  v64 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  v23 = sub_10022C350(&qword_100CDB3C0, &qword_100A88108);
  __chkstk_darwin(v23 - 8);
  v72 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v80 = &v63 - v26;
  if (AxisValue.isFirst.getter() & 1) != 0 || (AxisValue.isLast.getter())
  {
    v27 = v80;
    v28 = 1;
  }

  else
  {
    static AxisTick.Length.longestLabel.getter();
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    v63 = v17;
    swift_beginAccess();
    memcpy(v84, &qword_100D90070, 0x1A0uLL);
    sub_100453A48(v84, v83);
    AxisValue.isLast.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v29 = v84[52];
    v30 = v84[54];
    v31 = v84[55];
    v32 = v84[56];
    v33 = v84[53];
    sub_100453AA4(v84);
    v84[62] = v29;
    v84[63] = v33;
    v84[64] = v30;
    v84[65] = v31;
    v84[66] = v32;
    AxisTick.init(centered:length:stroke:)();
    swift_beginAccess();
    v34 = sub_1004B5F70();
    swift_endAccess();
    v83[0] = v34;
    v35 = v63;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v65 + 8))(v19, v35);
    v36 = v80;
    (*(v64 + 32))(v80, v22, v20);
    v27 = v36;
    v28 = 0;
  }

  v37 = sub_10001B350(v27, v28, 1, v20);
  __chkstk_darwin(v37);
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  v62[2] = sub_10022C350(&qword_100CDB3D8, &qword_100A88120);
  v62[3] = sub_100806868();
  v62[0] = sub_100806860;
  v62[1] = v62;
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  v38 = AxisValue.isFirst.getter();
  v39 = v77;
  if (v38)
  {
    v40 = v77;
    v41 = 1;
    v42 = v76;
  }

  else
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    memcpy(v84, &qword_100D90070, 0x1A0uLL);
    sub_100453A48(v84, v83);
    AxisValue.isLast.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v43 = v84[57];
    v44 = v84[59];
    v45 = v84[60];
    v46 = v84[61];
    v47 = v84[58];
    sub_100453AA4(v84);
    v83[0] = v43;
    v83[1] = v47;
    v83[2] = v44;
    v83[3] = v45;
    v83[4] = v46;
    v48 = v68;
    AxisGridLine.init(centered:stroke:)();
    swift_beginAccess();
    v49 = sub_1004B5F70();
    swift_endAccess();
    v82 = v49;
    v50 = v66;
    v51 = v70;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v69 + 8))(v48, v51);
    v52 = v76;
    (*(v67 + 32))(v39, v50, v76);
    v40 = v39;
    v41 = 0;
    v42 = v52;
  }

  sub_10001B350(v40, v41, 1, v42);
  v53 = v80;
  v54 = v72;
  sub_1000302D8(v80, v72, &qword_100CDB3C0, &qword_100A88108);
  v84[0] = v54;
  v55 = v73;
  v56 = v74;
  v57 = v81;
  v58 = v75;
  (*(v74 + 16))(v73, v81, v75);
  v84[1] = v55;
  v59 = v78;
  sub_1000302D8(v39, v78, &qword_100CCF650, &qword_100A70870);
  v84[2] = v59;
  sub_1007FF370(v84, v79);
  sub_100018198(v39, &qword_100CCF650);
  v60 = *(v56 + 8);
  v60(v57, v58);
  sub_100018198(v53, &qword_100CDB3C0);
  sub_100018198(v59, &qword_100CCF650);
  v60(v55, v58);
  return sub_100018198(v54, &qword_100CDB3C0);
}

uint64_t sub_100804854@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TimeStyle();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v5 - 8);
  v7 = v33 - v6;
  v8 = type metadata accessor for DetailChartDataElement();
  v40 = *(v8 - 8);
  __chkstk_darwin(v8);
  v39 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v10 - 8);
  v12 = v33 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AxisValue.as<A>(_:)();
  if (sub_100024D10(v12, 1, v13) == 1)
  {
    result = sub_100018198(v12, &unk_100CB2CF0);
LABEL_5:
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    goto LABEL_9;
  }

  (*(v14 + 32))(v16, v12, v13);
  type metadata accessor for SunriseSunsetInteractiveChartView(0);
  v18 = SunriseSunsetDetailChartViewModel.chartData.getter();
  __chkstk_darwin(v18);
  v33[-2] = v16;
  sub_1008DBA9C();

  if (sub_100024D10(v7, 1, v8) == 1)
  {
    sub_100018198(v7, &qword_100CAB930);
    result = (*(v14 + 8))(v16, v13);
    goto LABEL_5;
  }

  v35 = v14;
  (*(v40 + 32))(v39, v7, v8);
  type metadata accessor for Style();
  v36 = v8;
  static Style.componentTime.getter();
  DetailChartDataElement.dateLabel.getter();
  sub_10000C70C(0, &qword_100CA53F0, NSDateFormatter_ptr);
  static NSDateFormatter.prevailingPeriodSymbols.getter();
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B60A0();
  swift_endAccess();
  v23 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v25 = v24;
  v34 = v26;
  v33[1] = v27;

  (*(v37 + 8))(v4, v38);
  swift_beginAccess();
  v28 = sub_1004B61C0();
  swift_endAccess();
  v41 = v28;
  v29 = v34;
  v19 = Text.foregroundStyle<A>(_:)();
  v20 = v30;
  LODWORD(v38) = v31;
  v22 = v32;
  sub_10010CD64(v23, v25, v29 & 1);

  (*(v40 + 8))(v39, v36);
  v21 = v38 & 1;
  result = (*(v35 + 8))(v16, v13);
LABEL_9:
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v21;
  a1[3] = v22;
  return result;
}

uint64_t sub_100804DD0()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  v4 = static Date.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100804EE0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AxisGridLine();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBAD88, &unk_100A50670);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  if ((AxisValue.isLast.getter() & 1) != 0 || (AxisValue.as<A>(_:)(), (BYTE8(v24) & 1) == 0) && *&v24 == 0.0)
  {
    v11 = 1;
  }

  else
  {
    if (qword_100CA2198 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004B62E0(v12, v13, v14);
    v18 = v22;
    v19 = v21;
    v15 = v23;
    swift_endAccess();
    v24 = v19;
    v25 = v18;
    v26 = v15;
    AxisGridLine.init(centered:stroke:)();
    swift_beginAccess();
    v16 = sub_1004B5F70();
    swift_endAccess();
    v20 = v16;
    AxisMark.foregroundStyle<A>(_:)();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 32))(a1, v10, v7);
    v11 = 0;
  }

  return sub_10001B350(a1, v11, 1, v7);
}

uint64_t sub_1008051B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10022C350(&qword_100CBB758, &unk_100A51060);
  State.wrappedValue.getter();
  if (sub_100024D10(v4, 1, v5) == 1)
  {
    sub_100018198(v4, &unk_100CB2CF0);
    v9 = type metadata accessor for DetailChartDataElement();
    return sub_10001B350(a1, 1, 1, v9);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    type metadata accessor for SunriseSunsetInteractiveChartView(0);
    v11 = SunriseSunsetDetailChartViewModel.chartData.getter();
    __chkstk_darwin(v11);
    *&v12[-16] = v8;
    sub_1008EFB74(sub_100806610, &v12[-32], v11);

    return (*(v6 + 8))(v8, v5);
  }
}

BOOL sub_1008053CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DetailChartDataElement.date.getter();
  Date.distance(to:)();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = fabs(v8);
  DetailChartDataElement.date.getter();
  Date.distance(to:)();
  v12 = v11;
  v9(v6, v3);
  return v10 < fabs(v12);
}

double sub_100805508(uint64_t a1, double a2)
{
  v55 = a1;
  v3 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v51 - v7;
  v9 = type metadata accessor for Date();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin(v9);
  v53 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v54 = &v51 - v12;
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  __chkstk_darwin(v16);
  v58 = &v51 - v17;
  v18 = type metadata accessor for LayoutDirection();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v51 - v23;
  sub_1007FF53C();
  (*(v19 + 104))(v21, enum case for LayoutDirection.rightToLeft(_:), v18);
  v25 = static LayoutDirection.== infix(_:_:)();
  v26 = *(v19 + 8);
  v26(v21, v18);
  v26(v24, v18);
  if (v25)
  {
    type metadata accessor for SunriseSunsetInteractiveChartView(0);
    v27 = SunriseSunsetDetailChartViewModel.chartData.getter();
    sub_1002F5488(v27, v8);

    v28 = type metadata accessor for DetailChartDataElement();
    if (sub_100024D10(v8, 1, v28) == 1)
    {
      v29 = v8;
LABEL_6:
      sub_100018198(v29, &qword_100CAB930);
      return a2;
    }

    DetailChartDataElement.date.getter();
    v30 = *(v28 - 8);
    v31 = *(v30 + 8);
    v51 = v30 + 8;
    v52 = v31;
    v31(v8, v28);
    v32 = v56;
    v33 = v57;
    v34 = v58;
    v35 = v15;
    v36 = *(v56 + 32);
    v36(v58, v35, v57);
    v37 = SunriseSunsetDetailChartViewModel.chartData.getter();
    sub_1003DF9A4(v37, v5);

    if (sub_100024D10(v5, 1, v28) == 1)
    {
      (*(v32 + 8))(v34, v33);
      v29 = v5;
      goto LABEL_6;
    }

    v39 = v53;
    DetailChartDataElement.date.getter();
    v52(v5, v28);
    v40 = v54;
    v36(v54, v39, v33);
    v41 = ChartProxy.position<A>(forX:)();
    if (v42)
    {
      v43 = *(v32 + 8);
      v43(v40, v33);
      v43(v58, v33);
    }

    else
    {
      v44 = *&v41;
      v45 = v58;
      v46 = COERCE_DOUBLE(ChartProxy.position<A>(forX:)());
      v48 = v47;
      v49 = *(v32 + 8);
      v49(v40, v33);
      v49(v45, v33);
      if ((v48 & 1) == 0)
      {
        v50 = v44;
        if (v44 <= v46)
        {
          v50 = v46;
        }

        return v50 - a2;
      }
    }
  }

  return a2;
}

unint64_t sub_1008059FC()
{
  result = qword_100CDB280;
  if (!qword_100CDB280)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB230, &qword_100A87FC0);
    v4[0] = sub_100805A88();
    v4[1] = &protocol witness table for _FrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB280);
  }

  return result;
}

unint64_t sub_100805A88()
{
  result = qword_100CDB288;
  if (!qword_100CDB288)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB278, &unk_100A88000);
    v4[0] = sub_10023FBF4(&qword_100CDB290, &unk_100CDB298, &unk_100A88010, &protocol conformance descriptor for Chart<A>);
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB288);
  }

  return result;
}

uint64_t sub_100805B40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v7 = sub_100003A24(0, a2);
    v9 = sub_10022E824(v7, v8);
    v10 = a4;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100805BC8()
{
  result = qword_100CDB2C0;
  if (!qword_100CDB2C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB2B0, &qword_100A88038);
    v4[0] = sub_10023FBF4(&qword_100CDB2C8, &qword_100CDB2D0, &qword_100A88040, &protocol conformance descriptor for PlaceholderContentView<A>);
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB2C0);
  }

  return result;
}

unint64_t sub_100805C98()
{
  result = qword_100CDB2F8;
  if (!qword_100CDB2F8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB2E8, &qword_100A88058);
    v4[0] = sub_10023FBF4(&qword_100CDB300, &qword_100CDB308, &unk_100A88060, &protocol conformance descriptor for PlaceholderContentView<A>);
    v4[1] = &protocol witness table for _BlendModeEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB2F8);
  }

  return result;
}

uint64_t sub_100805D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100805DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100805E20()
{
  v0 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  sub_100003810(v0);
  sub_100005614();

  return sub_100801FFC(v1);
}

unint64_t sub_100805E8C()
{
  result = qword_100CDB318;
  if (!qword_100CDB318)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CDB310, &qword_100A88070);
    v4[0] = sub_100805F10();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CDB318);
  }

  return result;
}

unint64_t sub_100805F10()
{
  result = qword_100CDB320;
  if (!qword_100CDB320)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB328, &qword_100A88078);
    v4[0] = sub_100805F9C();
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB320);
  }

  return result;
}

unint64_t sub_100805F9C()
{
  result = qword_100CDB330;
  if (!qword_100CDB330)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB338, &unk_100A88080);
    v4[0] = sub_1007A9848();
    v4[1] = &protocol witness table for _OpacityEffect;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB330);
  }

  return result;
}

unint64_t sub_100806040()
{
  result = qword_100CDB348;
  if (!qword_100CDB348)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB340, &qword_100A88098);
    v4[0] = sub_10023FBF4(&qword_100CDB350, &qword_100CDB358, &qword_100A880A0, &protocol conformance descriptor for ZStack<A>);
    v4[1] = &protocol witness table for _FlexFrameLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB348);
  }

  return result;
}

uint64_t sub_100806118(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100806160()
{
  v1 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  sub_100003DDC();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v26 = *(v4 + 64);
  v27 = type metadata accessor for ChartProxy();
  sub_1000037C4();
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v0 + v3;
  v9 = type metadata accessor for Date();
  if (!sub_100024D10(v0 + v3, 1, v9))
  {
    sub_100003B20();
    (*(v10 + 8))(v0 + v3, v9);
  }

  sub_10022C350(&qword_100CBB758, &unk_100A51060);

  v11 = v8 + v1[6];
  if (!sub_100024D10(v11, 1, v9))
  {
    sub_100003B20();
    (*(v12 + 8))(v11, v9);
  }

  v13 = v8 + v1[8];

  v14 = *(sub_10022C350(&qword_100CDB158, &unk_100A87F30) + 32);
  v15 = type metadata accessor for DetailChartDataElement();
  if (!sub_100024D10(v13 + v14, 1, v15))
  {
    sub_100003B20();
    (*(v16 + 8))(v13 + v14, v15);
  }

  v17 = v1[9];
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v18 + 8))(v8 + v17);
  }

  else
  {
  }

  v19 = v1[11];
  type metadata accessor for SunriseSunsetDetailChartViewModel();
  sub_100003D98();
  (*(v20 + 8))(v8 + v19);
  v21 = v1[13];
  type metadata accessor for SunriseSunsetDetailChartContentStyle();
  sub_100003D98();
  (*(v22 + 8))(v8 + v21);
  v23 = v1[17];
  type metadata accessor for Calendar();
  sub_100003D98();
  (*(v24 + 8))(v8 + v23);
  (*(v6 + 8))(v0 + ((v3 + v26 + v7) & ~v7), v27);

  return swift_deallocObject();
}

uint64_t sub_100806514(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void, unint64_t, uint64_t))
{
  v8 = *(type metadata accessor for SunriseSunsetInteractiveChartView(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = type metadata accessor for ChartProxy();
  sub_100003810(v11);
  v13 = v4 + ((v9 + v10 + *(v12 + 80)) & ~*(v12 + 80));

  return a4(a1, a2, a3 & 1, v4 + v9, v13);
}

uint64_t sub_100806650(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v2 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  sub_100003810(v2);
  v3 = sub_100005614();

  return a2(v3);
}

unint64_t sub_1008066D0()
{
  result = qword_100CDB3B0;
  if (!qword_100CDB3B0)
  {
    v5[5] = v0;
    v5[6] = v1;
    v3 = sub_10022E824(&qword_100CDB3A8, &qword_100A88100);
    v5[0] = sub_100806798();
    v5[1] = sub_10023FBF4(&qword_100CDB3C8, &qword_100CDB3D0, &unk_100A88110, &protocol conformance descriptor for AxisValueLabel<A>);
    v5[2] = sub_10066A9DC();
    v4 = v5;
    result = swift_getWitnessTable(&protocol conformance descriptor for <each A> BuilderTuple<Pack{repeat A}>, v3, &v4);
    atomic_store(result, &qword_100CDB3B0);
  }

  return result;
}

unint64_t sub_100806798()
{
  result = qword_100CDB3B8;
  if (!qword_100CDB3B8)
  {
    v4[7] = v0;
    v4[8] = v1;
    v3 = sub_10022E824(&qword_100CDB3C0, &qword_100A88108);
    v4[1] = type metadata accessor for AxisTick();
    v4[2] = &type metadata for Color;
    v4[3] = &protocol witness table for AxisTick;
    v4[4] = &protocol witness table for Color;
    v4[0] = swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CDB3B8);
  }

  return result;
}

unint64_t sub_100806868()
{
  result = qword_100CDB3E0;
  if (!qword_100CDB3E0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = sub_10022E824(&qword_100CDB3D8, &qword_100A88120);
    v4[0] = &protocol witness table for Text;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CDB3E0);
  }

  return result;
}

unint64_t sub_100806904()
{
  result = qword_100CBADC8;
  if (!qword_100CBADC8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CBADD0, &qword_100A88180);
    v4[0] = sub_100453890();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CBADC8);
  }

  return result;
}

unint64_t sub_100806988()
{
  result = qword_100CCF680;
  if (!qword_100CCF680)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CCF688, &unk_100A70890);
    v4[0] = sub_10066AC6C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CCF680);
  }

  return result;
}

id sub_100806A0C()
{
  v1 = OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController____lazy_storage___dateFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController____lazy_storage___dateFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController____lazy_storage___dateFormatter);
  }

  else
  {
    v4 = [objc_allocWithZone(NSDateFormatter) init];
    [v4 setDateStyle:1];
    [v4 setTimeStyle:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100806AA8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController____lazy_storage___dateFormatter] = 0;
  *&v1[OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController_notifications] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DebugSevereNotificationsViewController();
  return objc_msgSendSuper2(&v3, "initWithStyle:", 2);
}

void sub_100806AF8()
{
  *(v0 + OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController____lazy_storage___dateFormatter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100806B70(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DebugSevereNotificationsViewController();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v2 = [v1 tableView];
  if (v2)
  {
    v3 = v2;
    sub_1003B3418();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = String._bridgeToObjectiveC()();
    [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

    sub_1003C1790(0xD000000000000014, 0x8000000100ABF120, v1);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100806CC4(void *a1)
{
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - v4;
  type metadata accessor for UIListContentConfiguration();
  sub_1000037C4();
  v44 = v7;
  v45 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = type metadata accessor for SevereNotificationEntity();
  sub_1000037C4();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [a1 dequeueReusableCellWithIdentifier:v18 forIndexPath:isa];

  v21 = *(v1 + OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController_notifications);
  result = IndexPath.row.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (result >= *(v21 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v23 = *(v13 + 16);
  v24 = v21 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * result;
  v43 = v11;
  v23(v17, v24, v11);
  static UIListContentConfiguration.subtitleCell()();
  SevereNotificationEntity.id.getter();
  dispatch thunk of Column.value.getter();

  UIListContentConfiguration.text.setter();
  v25 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.adjustsFontSizeToFitWidth.setter();
  v25(&v46, 0);
  v26 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v26(&v46, 0);
  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v46 = 0x203A65746144;
  v47 = 0xE600000000000000;
  v27 = sub_100806A0C();
  SevereNotificationEntity.date.getter();
  dispatch thunk of Column.value.getter();
  v28 = type metadata accessor for Date();
  result = sub_100024D10(v5, 1, v28);
  if (result == 1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v29 = Date._bridgeToObjectiveC()().super.isa;
  (*(*(v28 - 8) + 8))(v5, v28);
  v30 = [v27 stringFromDate:v29];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35._object = 0x8000000100AC4760;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  SevereNotificationEntity.subscription.getter();
  dispatch thunk of Column.value.getter();

  if (v51)
  {
    v36 = v50;
  }

  else
  {
    v36 = 0xD000000000000014;
  }

  if (v51)
  {
    v37 = v51;
  }

  else
  {
    v37 = 0x8000000100ABCAE0;
  }

  v38 = v37;
  String.append(_:)(*&v36);

  UIListContentConfiguration.secondaryText.setter();
  v39 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.numberOfLines.setter();
  v39(&v46, 0);
  v40 = v45;
  v48 = v45;
  v49 = &protocol witness table for UIListContentConfiguration;
  v41 = sub_100042FB0(&v46);
  v42 = v44;
  (*(v44 + 16))(v41, v10, v40);
  UITableViewCell.contentConfiguration.setter();
  [v20 setAccessoryType:1];
  (*(v42 + 8))(v10, v40);
  (*(v13 + 8))(v17, v43);
  return v20;
}

void sub_1008072BC()
{
  v1 = v0;
  v2 = type metadata accessor for SevereNotificationEntity();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = *&v0[OBJC_IVAR____TtC7Weather38DebugSevereNotificationsViewController_notifications];
  v10 = IndexPath.row.getter();
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v10 >= *(v9 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  (*(v4 + 16))(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v2);
  v11 = objc_allocWithZone(type metadata accessor for DebugSevereNotificationViewController(0));
  v12 = sub_1004932D4(v8);
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];

    v12 = v14;
  }
}

id sub_10080759C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DebugSevereNotificationsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t LocalSearchRequestService.__allocating_init(appConfigurationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_10003E2A0(a1, v2 + 16);
  return v2;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:calloutTitle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(MKLocalSearchRequest) initWithCompletion:a1];
  sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
  swift_allocObject();
  v3 = Promise.init(resolver:)();

  return v3;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MKLocalSearchRequest) init];
  sub_1008088D4(a1, a2, v4);
  sub_10022C350(&qword_100CD04C0, &unk_100A82F00);
  swift_allocObject();
  v5 = Promise.init(resolver:)();

  return v5;
}

void sub_100807804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1008088D4(a6, a7, a5);
  v14 = [objc_allocWithZone(MKLocalSearch) initWithRequest:a5];
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  v17[4] = sub_100808950;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1008087F8;
  v17[3] = &unk_100C6EE28;
  v16 = _Block_copy(v17);

  [v14 startWithCompletionHandler:v16];
  _Block_release(v16);
}

void sub_100807960(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(char *), uint64_t a8)
{
  v131 = a8;
  v132 = a7;
  v138 = a6;
  v139 = a5;
  v142 = a4;
  v136 = a1;
  v137 = a3;
  v9 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v9 - 8);
  v135 = &v120 - v10;
  v133 = type metadata accessor for Location();
  v130 = *(v133 - 8);
  __chkstk_darwin(v133);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v120 - v14;
  v16 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v120 - v20;
  __chkstk_darwin(v22);
  v24 = &v120 - v23;
  v25 = type metadata accessor for TimeZone();
  v134 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Logger();
  v32 = *(v31 - 8);
  v140 = v31;
  v141 = v32;
  __chkstk_darwin(v31);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  v39 = __chkstk_darwin(v35);
  v41 = &v120 - v40;
  if (a2)
  {
    swift_errorRetain();
    static Logger.geocode.getter();
    swift_errorRetain();
    v42 = v142;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v144[0] = swift_slowAlloc();
      *v45 = 141558531;
      *(v45 + 4) = 1752392040;
      *(v45 + 12) = 2085;
      *(v45 + 14) = sub_100078694(v137, v42, v144);
      *(v45 + 22) = 2082;
      v143 = a2;
      swift_errorRetain();
      sub_10022C350(&qword_100CD8220, &qword_100A4A330);
      v46 = String.init<A>(describing:)();
      v48 = sub_100078694(v46, v47, v144);

      *(v45 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to geocode. searchString=%{sensitive,mask.hash}s, error=%{public}s", v45, 0x20u);
      swift_arrayDestroy();
    }

    (*(v141 + 8))(v41, v140);
    sub_100808960();
    v49 = swift_allocError();
    *v50 = a2;
    swift_errorRetain();
    (v139)(v49);

LABEL_15:

    return;
  }

  v125 = v21;
  v126 = v24;
  v127 = v27;
  v51 = v135;
  v123 = v12;
  v128 = v30;
  v129 = v25;
  v124 = v15;
  v52 = v142;
  if (!v136)
  {
LABEL_12:
    v68 = v36;
    static Logger.geocode.getter();

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v144[0] = v72;
      *v71 = 141558275;
      *(v71 + 4) = 1752392040;
      *(v71 + 12) = 2085;
      *(v71 + 14) = sub_100078694(v137, v52, v144);
      sub_100006F14(v72);
    }

    (*(v141 + 8))(v68, v140);
    sub_100808960();
    swift_allocError();
    *v73 = 0;
    v139();
    goto LABEL_15;
  }

  v53 = v36;
  v121 = v38;
  v122 = v37;
  v54 = [v136 mapItems];
  sub_1008089B4();
  v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!sub_100073CDC(v55))
  {

    v36 = v53;
    goto LABEL_12;
  }

  sub_1000A7560(0, (v55 & 0xC000000000000001) == 0, v55);
  if ((v55 & 0xC000000000000001) != 0)
  {
    v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v56 = *(v55 + 32);
  }

  v57 = v56;
  v58 = v129;
  v59 = v51;
  v60 = v127;

  v61 = [v57 placemark];
  v62 = [v61 timeZone];

  v63 = v125;
  if (v62)
  {
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = v134;
    v65 = *(v134 + 32);
    v65(v63, v60, v58);
    sub_10001B350(v63, 0, 1, v58);
    v66 = v126;
    v65(v126, v63, v58);
    sub_10001B350(v66, 0, 1, v58);
    v67 = v128;
  }

  else
  {
    v74 = 1;
    sub_10001B350(v125, 1, 1, v58);
    v75 = [v57 timeZone];
    if (v75)
    {
      v76 = v75;
      static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

      v74 = 0;
    }

    v67 = v128;
    v66 = v126;
    sub_10001B350(v18, v74, 1, v58);
    sub_1008089F8(v18, v66);
    v77 = sub_100024D10(v63, 1, v58);
    v64 = v134;
    if (v77 != 1)
    {
      sub_100808A68(v63);
    }
  }

  if (sub_100024D10(v66, 1, v58) == 1)
  {
    sub_100808A68(v66);
    v78 = v121;
    static Logger.geocode.getter();
    v79 = v142;

    v80 = Logger.logObject.getter();
    v81 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v144[0] = v83;
      *v82 = 141558275;
      *(v82 + 4) = 1752392040;
      *(v82 + 12) = 2085;
      *(v82 + 14) = sub_100078694(v137, v79, v144);
      _os_log_impl(&_mh_execute_header, v80, v81, "Time zone missing while geocoding, searchString=%{sensitive,mask.hash}s.", v82, 0x16u);
      sub_100006F14(v83);
    }

    (*(v141 + 8))(v78, v140);
    sub_100808960();
    swift_allocError();
    *v84 = 1;
    v139();
  }

  else
  {
    (*(v64 + 32))(v67, v66, v58);
    v85 = [v57 placemark];
    [v85 coordinate];

    v138 = CLLocationCoordinate2D.id.getter();
    v139 = v86;
    v87 = [v57 wc_weatherDisplayName];
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v135 = v89;
    v136 = v88;

    (*(v64 + 16))(v60, v67, v58);
    static WeatherClock.date.getter();
    v90 = type metadata accessor for Date();
    sub_10001B350(v59, 0, 1, v90);
    v91 = [v57 placemark];
    v92 = MKPlacemark.safeTitle.getter();
    v126 = v93;
    v127 = v92;

    v94 = [v57 placemark];
    MKPlacemark.safeSubtitle.getter();
    v125 = v95;

    v96 = [v57 wc_weatherLocationName];
    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v97 = [v57 wc_weatherLocationName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v98 = [v57 wc_weatherDisplayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static Location.sanitizedSecondaryName(_:name:)();

    v99 = v124;
    Location.init(id:name:timeZone:coordinate:lastRefreshDate:searchTitle:searchSubtitle:preciseName:secondaryName:)();
    v100 = v122;
    static Logger.geocode.getter();
    v101 = v130;
    v102 = v123;
    v103 = v133;
    (*(v130 + 16))(v123, v99, v133);
    v104 = v142;

    v105 = v57;
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.default.getter();
    v139 = v105;

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v144[0] = swift_slowAlloc();
      *v108 = 141559299;
      v109 = v102;
      *(v108 + 4) = 1752392040;
      *(v108 + 12) = 2085;
      *(v108 + 14) = sub_100078694(v137, v104, v144);
      *(v108 + 22) = 2160;
      *(v108 + 24) = 1752392040;
      *(v108 + 32) = 2081;
      v110 = Location.id.getter();
      v112 = v111;
      v113 = *(v101 + 8);
      v113(v109, v133);
      v114 = sub_100078694(v110, v112, v144);

      *(v108 + 34) = v114;
      *(v108 + 42) = 2160;
      *(v108 + 44) = 1752392040;
      *(v108 + 52) = 2081;
      v115 = [v139 wc_weatherLocationName];
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v118 = v117;

      v119 = sub_100078694(v116, v118, v144);

      *(v108 + 54) = v119;
      _os_log_impl(&_mh_execute_header, v106, v107, "Successfully geocoded location. searchString=%{sensitive,mask.hash}s, location=%{private,mask.hash}s, unsanitizedSecondaryName=%{private,mask.hash}s", v108, 0x3Eu);
      swift_arrayDestroy();
      v99 = v124;

      v103 = v133;
    }

    else
    {

      v113 = *(v101 + 8);
      v113(v102, v103);
    }

    (*(v141 + 8))(v100, v140);
    v132(v99);

    v113(v99, v103);
    (*(v134 + 8))(v128, v129);
  }
}

void sub_1008087F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1008088D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();
  [a3 setNaturalLanguageQuery:v4];
}

unint64_t sub_100808960()
{
  result = qword_100CDB500;
  if (!qword_100CDB500)
  {
    result = swift_getWitnessTable(byte_100A882C8, &type metadata for LocalSearchRequestService.LocalSearchRequestError, v0, v1);
    atomic_store(result, &qword_100CDB500);
  }

  return result;
}

unint64_t sub_1008089B4()
{
  result = qword_100CB97C0;
  if (!qword_100CB97C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CB97C0);
  }

  return result;
}

uint64_t sub_1008089F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100808A68(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100808AD0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100808AE8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100808B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100808BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppConfiguration();

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_100808BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppConfiguration();

  return sub_10001B350(a1, a2, a3, v6);
}

void sub_100808C94(uint64_t a1)
{
  sub_10080EDD8(319, &unk_100CC0E40, &qword_100CC07D8, &qword_100A84020, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_10080EDD8(319, &qword_100CDB1C8, &qword_100CAB930, &qword_100A3A7C0, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SunriseSunsetDetailViewModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100808DE4(uint64_t a1)
{
  type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    sub_10000D054();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGPoint(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100808EF0(uint64_t a1)
{
  type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    sub_10000D054();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100808FB0@<X0>(__int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000E78C();
  sub_10022C350(v6, v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_100003C38();
  sub_100017E40();
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  v22[1] = 0;
  v22[2] = 0;
  v23 = 1;
  sub_10022C350(&qword_100CC07D8, &qword_100A84020);
  State.init(wrappedValue:)();
  v12 = v25;
  v13 = v26;
  *(a3 + 16) = v24;
  *(a3 + 32) = v12;
  *(a3 + 40) = v13;
  v14 = type metadata accessor for SunriseSunsetDetailView(0);
  v15 = type metadata accessor for DetailChartDataElement();
  sub_10001B350(v11, 1, 1, v15);
  sub_10018CF14(v11, v3, &qword_100CAB930, &qword_100A3A7C0);
  State.init(wrappedValue:)();
  sub_10003FDA0(v11, &qword_100CAB930);
  v16 = v14[7];
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = sub_1004BA278();
  swift_endAccess();
  *(a3 + v16) = v17;
  *(a3 + v14[9]) = 0;
  v18 = sub_10000E78C();
  sub_10022C350(v18, v19);
  sub_10023FBF4(&qword_100CA4D78, &qword_100CA4D70, &unk_100A8C940, asc_100AA1480);
  *a3 = ObservedObject.init(wrappedValue:)();
  *(a3 + 8) = v20;
  return sub_100013188(a2, a3 + v14[8]);
}

BOOL sub_1008091E8()
{
  v1 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  sub_100003810(v1);
  sub_100003828();
  __chkstk_darwin(v2);
  v4 = &v9[-v3];
  LOBYTE(v3) = *(v0 + 32);
  v5 = *(v0 + 40);
  v10 = *(v0 + 16);
  v11 = v3;
  v12 = v5;
  sub_10022C350(&qword_100CC0B18, &unk_100AA7910);
  State.wrappedValue.getter();
  if (v9[24])
  {
    return 0;
  }

  type metadata accessor for SunriseSunsetDetailView(0);
  sub_10022C350(&qword_100CDB830, &unk_100A885A0);
  State.wrappedValue.getter();
  v7 = type metadata accessor for DetailChartDataElement();
  v6 = sub_100024D10(v4, 1, v7) != 1;
  sub_10003FDA0(v4, &qword_100CAB930);
  return v6;
}

uint64_t sub_10080930C()
{
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v39 = v1;
  v40 = v0;
  __chkstk_darwin(v0);
  sub_1000037D8();
  v38 = v3 - v2;
  v4 = type metadata accessor for SunriseSunsetDetailViewModel(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v37 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  v15 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for Date();
  sub_1000037C4();
  v21 = v20;
  __chkstk_darwin(v22);
  sub_100003C38();
  v25 = (v23 - v24);
  __chkstk_darwin(v26);
  v28 = &v36 - v27;
  __chkstk_darwin(v29);
  v31 = &v36 - v30;
  type metadata accessor for SunriseSunsetDetailView(0);
  sub_10022C350(&qword_100CDB830, &unk_100A885A0);
  State.wrappedValue.getter();
  if (sub_100024D10(v18, 1, v9))
  {
    sub_10003FDA0(v18, &qword_100CAB930);
    static WeatherClock.date.getter();
    v31 = v25;
  }

  else
  {
    v32 = v37;
    (*(v37 + 16))(v14, v18, v9);
    sub_10003FDA0(v18, &qword_100CAB930);
    DetailChartDataElement.date.getter();
    (*(v32 + 8))(v14, v9);
    (*(v21 + 32))(v31, v28, v19);
  }

  sub_10098A320();
  v33 = v38;
  sub_10062A418();
  sub_10001F908();
  sub_10080F004(v8, v34);
  Date.formattedTime(timeZone:)();
  (*(v39 + 8))(v33, v40);
  (*(v21 + 8))(v31, v19);
  return sub_100003940();
}

uint64_t sub_10080969C()
{
  v1 = type metadata accessor for SunriseSunsetDetailViewModel(0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  v6 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v49 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v48 = v10 - v9;
  v11 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003C38();
  sub_100017E40();
  __chkstk_darwin(v13);
  v15 = v45 - v14;
  type metadata accessor for Date();
  sub_1000037C4();
  v50 = v17;
  v51 = v16;
  __chkstk_darwin(v16);
  sub_100003C38();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = v45 - v22;
  __chkstk_darwin(v24);
  v47 = v45 - v25;
  type metadata accessor for SunriseSunsetDetailView(0);
  sub_10022C350(&qword_100CDB830, &unk_100A885A0);
  State.wrappedValue.getter();
  if (sub_100024D10(v15, 1, v6))
  {
    v0 = v15;
    v26 = v50;
    v27 = v51;
  }

  else
  {
    v46 = v5;
    v28 = v49;
    v45[0] = *(v49 + 16);
    v45[1] = v49 + 16;
    (v45[0])(v48, v15, v6);
    sub_10003FDA0(v15, &qword_100CAB930);
    DetailChartDataElement.date.getter();
    v29 = *(v28 + 8);
    v30 = sub_10000E78C();
    v49 = v28 + 8;
    v29(v30);
    v31 = v47;
    (*(v50 + 32))(v47, v23, v51);
    State.wrappedValue.getter();
    if (!sub_100024D10(v0, 1, v6))
    {
      (v45[0])(v48, v0, v6);
      sub_10003FDA0(v0, &qword_100CAB930);
      DetailChartDataElement.value.getter();
      v37 = v36;
      v38 = sub_10000E78C();
      v29(v38);
      v39 = v31;
      v5 = v46;
      sub_10098A320();
      v32 = sub_10062B248(v39, v37);
      v41 = v40;
      sub_10001F908();
      sub_10080F004(v5, v42);
      v26 = v50;
      v43 = v39;
      v27 = v51;
      (*(v50 + 8))(v43, v51);
      if (v41)
      {
        return v32;
      }

      goto LABEL_6;
    }

    v26 = v50;
    v27 = v51;
    (*(v50 + 8))(v31, v51);
    v5 = v46;
  }

  sub_10003FDA0(v0, &qword_100CAB930);
LABEL_6:
  sub_10098A320();
  static WeatherClock.date.getter();
  v32 = sub_10062B248(v20, 0.0);
  v34 = v33;
  (*(v26 + 8))(v20, v27);
  sub_10001F908();
  sub_10080F004(v5, v35);
  if (!v34)
  {
    return 5849412;
  }

  return v32;
}

uint64_t sub_100809AE8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = type metadata accessor for SunriseSunsetDetailViewModel(0);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  v48 = v5 - v4;
  v6 = sub_10022C350(&qword_100CA5730, &unk_100A2FB90);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003C38();
  v46 = v8 - v9;
  __chkstk_darwin(v10);
  v45 = &v44 - v11;
  v12 = type metadata accessor for DetailChartDataElement();
  sub_1000037C4();
  v44 = v13;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = sub_10022C350(&qword_100CAB930, &qword_100A3A7C0);
  sub_100003810(v18);
  sub_100003828();
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  v22 = type metadata accessor for Date();
  sub_1000037C4();
  v47 = v23;
  __chkstk_darwin(v24);
  sub_100003C38();
  sub_100017E40();
  __chkstk_darwin(v25);
  v27 = &v44 - v26;
  __chkstk_darwin(v28);
  v30 = &v44 - v29;
  type metadata accessor for SunriseSunsetDetailView(0);
  sub_10022C350(&qword_100CDB830, &unk_100A885A0);
  State.wrappedValue.getter();
  if (sub_100024D10(v21, 1, v12))
  {
    sub_10003FDA0(v21, &qword_100CAB930);
    v31 = v47;
    v32 = v48;
  }

  else
  {
    v33 = v44;
    (*(v44 + 16))(v17, v21, v12);
    sub_10003FDA0(v21, &qword_100CAB930);
    DetailChartDataElement.date.getter();
    (*(v33 + 8))(v17, v12);
    v31 = v47;
    (*(v47 + 32))(v30, v27, v22);
    v32 = v48;
    sub_10098A320();
    v34 = v45;
    sub_10062B6E4();
    sub_10001F908();
    sub_10080F004(v32, v35);
    (*(v31 + 8))(v30, v22);
    v36 = type metadata accessor for AttributedString();
    sub_10000554C(v34);
    if (!v37)
    {
      sub_100003B20();
      return (*(v42 + 32))(v49, v34, v36);
    }

    sub_10003FDA0(v34, &qword_100CA5730);
  }

  sub_10098A320();
  static WeatherClock.date.getter();
  v38 = v46;
  sub_10062B6E4();
  (*(v31 + 8))(v1, v22);
  sub_10001F908();
  sub_10080F004(v32, v39);
  v40 = type metadata accessor for AttributedString();
  sub_10000554C(v38);
  if (v37)
  {
    AttributedString.init(stringLiteral:)();
    result = sub_10000554C(v38);
    if (!v37)
    {
      return sub_10003FDA0(v38, &qword_100CA5730);
    }
  }

  else
  {
    sub_100003B20();
    return (*(v41 + 32))(v49, v38, v40);
  }

  return result;
}

uint64_t sub_100809F8C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = sub_10022C350(&qword_100CA2DF0, &qword_100A2C530) - 8;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v46 - v4;
  v46 = v1;
  sub_10098A320();
  v6 = type metadata accessor for SunriseSunsetDetailView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v47 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v46 - v47;
  sub_10080EFAC(v1, &v46 - v47, type metadata accessor for SunriseSunsetDetailView);
  v10 = *(v7 + 80);
  v11 = swift_allocObject();
  v48 = type metadata accessor for SunriseSunsetDetailView;
  sub_10080F290(v9, v11 + ((v10 + 16) & ~v10), type metadata accessor for SunriseSunsetDetailView);
  v12 = &v5[*(v2 + 64)];
  sub_10022C350(&qword_100CDB8F0, &qword_100A88620);
  v13 = swift_allocObject();
  v14 = *(*v13 + 96);
  v15 = type metadata accessor for SunriseSunsetDetailViewModel(0);
  sub_10001B350(v13 + v14, 1, 1, v15);
  ObservationRegistrar.init()();
  v51 = v13;
  v16 = State.init(wrappedValue:)();
  v17 = v53;
  *v12 = v52;
  v12[1] = v17;
  v18 = *(v2 + 60);
  v49 = v5;
  v19 = &v5[v18];
  *v19 = sub_10080EE58;
  v19[1] = v11;
  __chkstk_darwin(v16);
  v20 = &v46 - v47;
  sub_10080EFAC(v46, &v46 - v47, type metadata accessor for SunriseSunsetDetailView);
  type metadata accessor for MainActor();
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &protocol witness table for MainActor;
  sub_10080F290(v20, v22 + ((v10 + 32) & ~v10), v48);
  v23 = type metadata accessor for TaskPriority();
  sub_1000037C4();
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v28);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF0;
  v30 = &v46 - v29;
  static TaskPriority.userInitiated.getter();
  if (sub_100A162A0(2, 26, 4, 0))
  {
    v47 = type metadata accessor for _TaskModifier2();
    v48 = &v46;
    sub_1000037C4();
    v46 = v31;
    __chkstk_darwin(v32);
    sub_1000037D8();
    v35 = v34 - v33;
    v52 = 0;
    v53 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v52 = 0xD000000000000032;
    v53 = 0x8000000100ADFD40;
    v51 = 112;
    v36._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v36);

    v38 = __chkstk_darwin(v37);
    (*(v25 + 16))(&v46 - v29, &v46 - v29, v23, v38);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v25 + 8))(&v46 - v29, v23);
    v39 = v50;
    sub_10027FB54(v49, v50, &qword_100CA2DF0, &qword_100A2C530);
    v40 = sub_10022C350(&qword_100CA2DF8, &qword_100A2C538);
    return (*(v46 + 32))(v39 + *(v40 + 36), v35, v47);
  }

  else
  {
    v42 = sub_10022C350(&qword_100CA2E00, &unk_100A2C540);
    v43 = v50;
    v44 = (v50 + *(v42 + 36));
    v45 = type metadata accessor for _TaskModifier();
    (*(v25 + 32))(&v44[*(v45 + 20)], v30, v23);
    *v44 = &unk_100A88630;
    *(v44 + 1) = v22;
    return sub_10027FB54(v49, v43, &qword_100CA2DF0, &qword_100A2C530);
  }
}

uint64_t sub_10080A518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for SunriseSunsetDetailViewModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10080EFAC(a1, v8, type metadata accessor for SunriseSunsetDetailViewModel);
  sub_10062C2D8();
  v12 = (a2 + *(type metadata accessor for SunriseSunsetDetailView(0) + 32));
  v13 = v12[3];
  v14 = v12[4];
  v15 = sub_1000161C0(v12, v13);
  v29[3] = v13;
  v29[4] = *(v14 + 8);
  v16 = sub_100042FB0(v29);
  (*(*(v13 - 8) + 16))(v16, v15, v13);
  v17 = sub_100629D98();
  v19 = v18;
  v20 = sub_100629F24();
  v22 = v21;
  *a3 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  swift_storeEnumTagMultiPayload();
  v23 = sub_10022C350(&qword_100CDB8F8, &qword_100A88670);
  sub_10080EFAC(v11, a3 + v23[9], type metadata accessor for DetailViewVisibilityTrackerModel);
  sub_100035B30(v29, a3 + v23[10]);
  v24 = (a3 + v23[11]);
  *v24 = v17;
  v24[1] = v19;
  v25 = (a3 + v23[12]);
  *v25 = v20;
  v25[1] = v22;
  *(a3 + v23[13]) = 0;
  v26 = (a3 + v23[14]);
  *v26 = 0;
  v26[1] = 0;
  *(a3 + v23[15]) = 1;
  sub_10080A788(a1, a2, a3 + v23[16]);
  sub_10080F004(v11, type metadata accessor for DetailViewVisibilityTrackerModel);
  return sub_100006F14(v29);
}

uint64_t sub_10080A788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v5 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ScrollIndicatorVisibility();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10022C350(&qword_100CDB900, &qword_100A88678);
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = sub_10022C350(&qword_100CDB908, &qword_100A88680);
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v54 = &v44 - v14;
  v48 = sub_10022C350(&qword_100CDB910, &qword_100A88688);
  __chkstk_darwin(v48);
  v55 = &v44 - v15;
  v16 = sub_10022C350(&qword_100CDB918, &qword_100A88690);
  __chkstk_darwin(v16);
  v52 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v58 = &v44 - v19;
  v59 = sub_10022C350(&qword_100CDB920, &qword_100A88698);
  __chkstk_darwin(v59);
  v21 = (&v44 - v20);
  v22 = type metadata accessor for SunriseSunsetDetailViewModel(0);
  __chkstk_darwin(v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10080EFAC(a1, v24, type metadata accessor for SunriseSunsetDetailViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      *v21 = static Color.clear.getter();
      swift_storeEnumTagMultiPayload();
      sub_10080F064();
      return _ConditionalContent<>.init(storage:)();
    }

    v44 = v5;
    v45 = v16;
    v46 = a3;
    v26 = sub_10022C350(&qword_100CCD130, &unk_100A6DBE0);
    v27 = _s10PolarModelVMa;
  }

  else
  {
    v44 = v5;
    v45 = v16;
    v46 = a3;
    v26 = sub_10022C350(&qword_100CCD138, &qword_100A886E0);
    v27 = _s11NormalModelVMa;
  }

  v28 = v27;
  sub_10003FDA0(&v24[*(v26 + 48)], &qword_100CA71A0);
  sub_10080F004(v24, v28);
  v29 = static Axis.Set.vertical.getter();
  __chkstk_darwin(v29);
  v30 = v47;
  *(&v44 - 2) = a1;
  *(&v44 - 1) = v30;
  sub_10022C350(&qword_100CDB928, &unk_100A886A0);
  sub_10023FBF4(&qword_100CDB930, &qword_100CDB928, &unk_100A886A0, &protocol conformance descriptor for VStack<A>);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.never.getter();
  sub_10022C350(&qword_100CB59A8, &qword_100A4D640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  LOBYTE(v28) = static Axis.Set.vertical.getter();
  *(inited + 32) = v28;
  v32 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v32;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v28)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v32)
  {
    Axis.Set.init(rawValue:)();
  }

  v33 = v45;
  v35 = v57;
  v34 = v58;
  sub_10023FBF4(&qword_100CDB938, &qword_100CDB900, &qword_100A88678, &protocol conformance descriptor for ScrollView<A>);
  v36 = v54;
  v37 = v50;
  View.scrollIndicators(_:axes:)();
  (*(v51 + 8))(v9, v53);
  (*(v49 + 8))(v12, v37);
  type metadata accessor for AutomationViewInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v38 = v55;
  v39 = &v55[*(v48 + 36)];
  v40 = type metadata accessor for AutomationInfoProperty(0);
  sub_10080EFAC(v7, &v39[*(v40 + 24)], type metadata accessor for AutomationInfo);
  sub_10080F004(v7, type metadata accessor for AutomationInfo);
  *v39 = 0;
  *(v39 + 1) = 0xE000000000000000;
  *(v39 + 2) = swift_getKeyPath();
  v39[24] = 0;
  (*(v56 + 32))(v38, v36, v35);
  if (qword_100CA23F8 != -1)
  {
    swift_once();
  }

  v41 = qword_100D90688;
  v42 = v52;
  sub_10027FB54(v38, v52, &qword_100CDB910, &qword_100A88688);
  *(v42 + *(v33 + 36)) = v41;
  sub_10027FB54(v42, v34, &qword_100CDB918, &qword_100A88690);
  sub_10018CF14(v34, v21, &qword_100CDB918, &qword_100A88690);
  swift_storeEnumTagMultiPayload();
  sub_10080F064();

  _ConditionalContent<>.init(storage:)();
  return sub_10003FDA0(v34, &qword_100CDB918);
}

uint64_t sub_10080AFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10080B040, v5, v4);
}

uint64_t sub_10080B040()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for SunriseSunsetDetailView(0);
  sub_1000161C0((v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 24));
  sub_1003104C4();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10080B0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = static HorizontalAlignment.leading.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = sub_10022C350(&qword_100CDB950, &qword_100A886E8);
  return sub_10080B124(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_10080B124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v160 = a3;
  v157 = sub_10022C350(&qword_100CDB958, &qword_100A886F0);
  __chkstk_darwin(v157);
  v145 = &v135 - v5;
  v6 = sub_10022C350(&qword_100CA71A0, &unk_100A322C0);
  __chkstk_darwin(v6 - 8);
  v152 = &v135 - v7;
  v151 = type metadata accessor for ConditionDetailPlatterViewModel(0);
  __chkstk_darwin(v151);
  v153 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v155 = &v135 - v10;
  v11 = sub_10022C350(&qword_100CDB960, &qword_100A886F8);
  __chkstk_darwin(v11 - 8);
  v159 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v158 = &v135 - v14;
  v150 = type metadata accessor for DetailNewsComponentView(0);
  __chkstk_darwin(v150);
  v144 = (&v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10022C350(&qword_100CA7188, &qword_100A35360);
  __chkstk_darwin(v16 - 8);
  v149 = &v135 - v17;
  v148 = type metadata accessor for DetailComponentContainerViewModel(0);
  __chkstk_darwin(v148);
  v143 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CA7190, &qword_100A322B0);
  __chkstk_darwin(v19 - 8);
  v156 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v169 = &v135 - v22;
  v141 = type metadata accessor for QuaternaryDividerStyle();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for Divider();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10022C350(&qword_100CB5C40, &qword_100A493F0);
  __chkstk_darwin(v147);
  v142 = &v135 - v25;
  v26 = sub_10022C350(&qword_100CDB968, &qword_100A98540);
  __chkstk_darwin(v26 - 8);
  v154 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v168 = &v135 - v29;
  v30 = sub_10022C350(&qword_100CDB158, &unk_100A87F30);
  __chkstk_darwin(v30 - 8);
  v32 = &v135 - v31;
  v33 = type metadata accessor for SunriseSunsetChartAndTable(0);
  __chkstk_darwin(v33);
  v35 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_10022C350(&qword_100CDB970, &qword_100A88700);
  __chkstk_darwin(v146);
  v165 = &v135 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v135 - v38;
  __chkstk_darwin(v40);
  v167 = &v135 - v41;
  v42 = sub_10022C350(&qword_100CDB978, &qword_100A88708);
  __chkstk_darwin(v42 - 8);
  v164 = &v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = (&v135 - v45);
  *v46 = static Alignment.center.getter();
  v46[1] = v47;
  v48 = *(sub_10022C350(&qword_100CDB980, &unk_100A88710) + 44);
  v163 = v46;
  sub_10080C350(a1, a2, v46 + v48);
  v49 = *(a2 + 32);
  v50 = *(a2 + 40);
  v174 = *(a2 + 16);
  v175 = v49;
  v176 = v50;
  sub_10022C350(&qword_100CC0B18, &unk_100AA7910);
  State.projectedValue.getter();
  v161 = v170;
  v51 = v171;
  v52 = v172;
  v53 = v173;
  v162 = type metadata accessor for SunriseSunsetDetailView(0);
  sub_10022C350(&qword_100CDB830, &unk_100A885A0);
  v166 = a2;
  State.projectedValue.getter();
  *v35 = v161;
  *(v35 + 2) = v51;
  *(v35 + 3) = v52;
  v35[32] = v53;
  sub_10027FB54(v32, &v35[v33[5]], &qword_100CDB158, &unk_100A87F30);
  v54 = &v35[v33[6]];
  *&v161 = a1;
  sub_10080EFAC(a1, v54, type metadata accessor for SunriseSunsetDetailViewModel);
  v35[v33[7]] = 1;
  v55 = 12.0;
  if (static Solarium.isEnabled.getter())
  {
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v55 = sub_100472854();
  }

  *&v35[v33[8]] = v55;
  *&v35[v33[9]] = 0x4030000000000000;
  v56 = static Edge.Set.horizontal.getter();
  v57 = v162;
  v58 = v166;
  EdgeInsets.init(_all:)();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  sub_10080F290(v35, v39, type metadata accessor for SunriseSunsetChartAndTable);
  v67 = &v39[*(v146 + 36)];
  *v67 = v56;
  *(v67 + 1) = v60;
  *(v67 + 2) = v62;
  *(v67 + 3) = v64;
  *(v67 + 4) = v66;
  v67[40] = 0;
  sub_10027FB54(v39, v167, &qword_100CDB970, &qword_100A88700);
  v68 = *(v58 + *(v57 + 36));
  if (v68 == 1)
  {
    v69 = v136;
    Divider.init()();
    v70 = v138;
    static DividerStyle<>.quaternary.getter();
    sub_10080F248(&qword_100CA7298, &type metadata accessor for Divider, &protocol conformance descriptor for Divider);
    sub_10080F248(&qword_100CB5C48, &type metadata accessor for QuaternaryDividerStyle, &protocol conformance descriptor for QuaternaryDividerStyle);
    v71 = v142;
    v72 = v139;
    v73 = v141;
    View.dividerStyle<A>(_:)();
    (*(v140 + 8))(v70, v73);
    (*(v137 + 8))(v69, v72);
    v74 = static Edge.Set.top.getter();
    v75 = v153;
    v76 = v152;
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    v77 = swift_beginAccess();
    sub_1004BA4FC(v77);
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v78 = v147;
    v79 = v71 + *(v147 + 36);
    *v79 = v74;
    *(v79 + 8) = v80;
    *(v79 + 16) = v81;
    *(v79 + 24) = v82;
    *(v79 + 32) = v83;
    *(v79 + 40) = 0;
    sub_10027FB54(v71, v168, &qword_100CB5C40, &qword_100A493F0);
    v84 = 0;
  }

  else
  {
    v84 = 1;
    v75 = v153;
    v76 = v152;
    v78 = v147;
  }

  sub_10001B350(v168, v84, 1, v78);
  v85 = v149;
  sub_10062B094();
  if (sub_100024D10(v85, 1, v148) == 1)
  {
    sub_10003FDA0(v85, &qword_100CA7188);
    v86 = 1;
    v87 = v155;
    v88 = v150;
  }

  else
  {
    v89 = v143;
    sub_10080F290(v85, v143, type metadata accessor for DetailComponentContainerViewModel);
    v90 = v68;
    v91 = v75;
    v92 = v150;
    v93 = v144;
    sub_10080EFAC(v89, v144 + *(v150 + 20), type metadata accessor for DetailComponentContainerViewModel);
    v94 = (v166 + *(v162 + 32));
    v95 = v94[3];
    v96 = v94[4];
    v97 = sub_1000161C0(v94, v95);
    v98 = (v93 + *(v92 + 24));
    v98[3] = v95;
    v98[4] = *(v96 + 8);
    v99 = sub_100042FB0(v98);
    v100 = *(*(v95 - 8) + 16);
    v101 = v95;
    v88 = v92;
    v75 = v91;
    v100(v99, v97, v101);
    v102 = v169;
    sub_10080F004(v89, type metadata accessor for DetailComponentContainerViewModel);
    *v93 = swift_getKeyPath();
    sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
    swift_storeEnumTagMultiPayload();
    *(v93 + *(v88 + 28)) = v90;
    sub_10080F290(v93, v102, type metadata accessor for DetailNewsComponentView);
    v86 = 0;
    v87 = v155;
  }

  sub_10001B350(v169, v86, 1, v88);
  sub_10062AF84(v76);
  if (sub_100024D10(v76, 1, v151) == 1)
  {
    sub_10003FDA0(v76, &qword_100CA71A0);
    v103 = 1;
    v104 = v158;
    v105 = v157;
  }

  else
  {
    sub_10080F290(v76, v87, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_10080EFAC(v87, v75, type metadata accessor for ConditionDetailPlatterViewModel);
    v106 = (v166 + *(v162 + 32));
    v107 = v106[3];
    v108 = v106[4];
    v109 = sub_1000161C0(v106, v107);
    v172 = v107;
    v173 = *(v108 + 8);
    v110 = sub_100042FB0(&v170);
    (*(*(v107 - 8) + 16))(v110, v109, v107);
    v111 = v145;
    sub_10080EFAC(v75, v145, type metadata accessor for ConditionDetailPlatterViewModel);
    v112 = sub_10022C350(&qword_100CA7198, &qword_100A322B8);
    sub_100035B30(&v170, v111 + v112[10]);
    *(v111 + v112[9]) = 0;
    v113 = (v111 + v112[11]);
    *v113 = 0;
    v113[1] = 0;
    v114 = v112[12];
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    *(v111 + v114) = sub_1004BA278();
    swift_endAccess();
    sub_10080F004(v75, type metadata accessor for ConditionDetailPlatterViewModel);
    sub_100006F14(&v170);
    v115 = static Edge.Set.bottom.getter();
    v116 = swift_beginAccess();
    sub_1004BA570(v116);
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    sub_10080F004(v87, type metadata accessor for ConditionDetailPlatterViewModel);
    v105 = v157;
    v125 = v111 + *(v157 + 36);
    *v125 = v115;
    *(v125 + 8) = v118;
    *(v125 + 16) = v120;
    *(v125 + 24) = v122;
    *(v125 + 32) = v124;
    *(v125 + 40) = 0;
    v104 = v158;
    sub_10027FB54(v111, v158, &qword_100CDB958, &qword_100A886F0);
    v103 = 0;
  }

  sub_10001B350(v104, v103, 1, v105);
  v126 = v164;
  sub_10018CF14(v163, v164, &qword_100CDB978, &qword_100A88708);
  v127 = v165;
  sub_10018CF14(v167, v165, &qword_100CDB970, &qword_100A88700);
  v128 = v154;
  sub_10018CF14(v168, v154, &qword_100CDB968, &qword_100A98540);
  v129 = v156;
  sub_10018CF14(v169, v156, &qword_100CA7190, &qword_100A322B0);
  v130 = v159;
  sub_10018CF14(v104, v159, &qword_100CDB960, &qword_100A886F8);
  v131 = v160;
  sub_10018CF14(v126, v160, &qword_100CDB978, &qword_100A88708);
  v132 = v104;
  v133 = sub_10022C350(&qword_100CDB988, &unk_100A88720);
  sub_10018CF14(v127, v131 + v133[12], &qword_100CDB970, &qword_100A88700);
  sub_10018CF14(v128, v131 + v133[16], &qword_100CDB968, &qword_100A98540);
  sub_10018CF14(v129, v131 + v133[20], &qword_100CA7190, &qword_100A322B0);
  sub_10018CF14(v130, v131 + v133[24], &qword_100CDB960, &qword_100A886F8);
  sub_10003FDA0(v132, &qword_100CDB960);
  sub_10003FDA0(v169, &qword_100CA7190);
  sub_10003FDA0(v168, &qword_100CDB968);
  sub_10003FDA0(v167, &qword_100CDB970);
  sub_10003FDA0(v163, &qword_100CDB978);
  sub_10003FDA0(v130, &qword_100CDB960);
  sub_10003FDA0(v129, &qword_100CA7190);
  sub_10003FDA0(v128, &qword_100CDB968);
  sub_10003FDA0(v165, &qword_100CDB970);
  return sub_10003FDA0(v164, &qword_100CDB978);
}

uint64_t sub_10080C350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v90 = a3;
  v85 = sub_10022C350(&qword_100CDB990, &qword_100A88768);
  __chkstk_darwin(v85);
  v6 = (&v77 - v5);
  v92 = sub_10022C350(&qword_100CDB998, &qword_100A88770);
  v81 = *(v92 - 8);
  __chkstk_darwin(v92);
  v80 = &v77 - v7;
  v8 = sub_10022C350(&qword_100CDB9A0, &unk_100A88778);
  __chkstk_darwin(v8 - 8);
  v89 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v91 = &v77 - v11;
  v94 = sub_10022C350(&unk_100CE1680, &unk_100A450F0);
  __chkstk_darwin(v94);
  v13 = &v77 - v12;
  v14 = type metadata accessor for SunriseSunsetDetailHeaderView(0);
  __chkstk_darwin(v14);
  v16 = (&v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_10022C350(&qword_100CDB9A8, &qword_100A88788);
  __chkstk_darwin(v93);
  v18 = &v77 - v17;
  v19 = sub_10022C350(&qword_100CDB9B0, &qword_100A88790);
  v87 = *(v19 - 8);
  v88 = v19;
  __chkstk_darwin(v19);
  v86 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v95 = &v77 - v22;
  v23 = sub_100629BF4();
  v25 = v24;
  sub_10062A0B0();
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  v26 = swift_beginAccess();
  v27 = sub_100472730(v26);
  swift_endAccess();
  v84 = a1;
  sub_10062A280();
  v29 = v28;
  v30 = static HorizontalAlignment.leading.getter();
  *v16 = v23;
  v16[1] = v25;
  *(v16 + v14[6]) = v27;
  *(v16 + v14[7]) = v29;
  *(v16 + v14[8]) = v30;
  v31 = enum case for DynamicTypeSize.accessibility1(_:);
  v32 = type metadata accessor for DynamicTypeSize();
  v33 = *(v32 - 8);
  v34 = *(v33 + 104);
  v83 = v33 + 104;
  v34(v13, v31, v32);
  v82 = sub_10080F248(&qword_100CA5390, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v78 = v34;
    v79 = v31;
    sub_10080F248(&qword_100CDB9B8, type metadata accessor for SunriseSunsetDetailHeaderView, byte_100A883A0);
    v77 = sub_10023FBF4(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_10003FDA0(v13, &unk_100CE1680);
    sub_10080F004(v16, type metadata accessor for SunriseSunsetDetailHeaderView);
    v36 = static Edge.Set.horizontal.getter();
    v37 = *(a2 + *(type metadata accessor for SunriseSunsetDetailView(0) + 28));
    EdgeInsets.init(_all:)();
    v38 = &v18[*(v93 + 36)];
    *v38 = v36;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    *(v38 + 3) = v41;
    *(v38 + 4) = v42;
    v38[40] = 0;
    sub_1008091E8();
    sub_10080F2E8();
    View.isHidden(_:defaultAccessibilityHidden:)();
    sub_10003FDA0(v18, &qword_100CDB9A8);
    v43 = *(a2 + 32);
    v44 = *(a2 + 40);
    v99 = *(a2 + 16);
    v100 = v43;
    v101 = v44;
    sub_10022C350(&qword_100CC0B18, &unk_100AA7910);
    State.wrappedValue.getter();
    if (v98)
    {
      v45 = 1;
      v47 = v91;
      v46 = v92;
LABEL_8:
      sub_10001B350(v47, v45, 1, v46);
      v69 = v87;
      v68 = v88;
      v70 = *(v87 + 16);
      v71 = v86;
      v72 = v95;
      v70(v86, v95, v88);
      v73 = v89;
      sub_10018CF14(v47, v89, &qword_100CDB9A0, &unk_100A88778);
      v74 = v90;
      v70(v90, v71, v68);
      v75 = sub_10022C350(&qword_100CDB9C8, &qword_100A88798);
      sub_10018CF14(v73, &v74[*(v75 + 48)], &qword_100CDB9A0, &unk_100A88778);
      sub_10003FDA0(v47, &qword_100CDB9A0);
      v76 = *(v69 + 8);
      v76(v72, v68);
      sub_10003FDA0(v73, &qword_100CDB9A0);
      return (v76)(v71, v68);
    }

    v48 = v96;
    v49 = v97;
    v50 = sub_10080969C();
    v52 = v51;
    v53 = sub_10080930C();
    v55 = v54;
    v56 = type metadata accessor for SunriseSunsetDetailLollipopHeaderView(0);
    sub_100809AE8(v6 + v56[6]);
    sub_10062A280();
    v58 = v57;
    v59 = static HorizontalAlignment.center.getter();
    *v6 = v50;
    v6[1] = v52;
    v6[2] = v53;
    v6[3] = v55;
    *(v6 + v56[7]) = v58;
    *(v6 + v56[8]) = v59;
    *(v6 + v56[9]) = v37;
    v60 = (v6 + v56[10]);
    *v60 = v48;
    v60[1] = v49;
    LOBYTE(v50) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v61 = v6 + *(v85 + 36);
    *v61 = v50;
    *(v61 + 1) = v62;
    *(v61 + 2) = v63;
    *(v61 + 3) = v64;
    *(v61 + 4) = v65;
    v61[40] = 0;
    v78(v13, v79, v32);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_10080F434();
      v66 = v80;
      View.dynamicTypeSize<A>(_:)();
      sub_10003FDA0(v13, &unk_100CE1680);
      sub_10003FDA0(v6, &qword_100CDB990);
      v47 = v91;
      v67 = v66;
      v46 = v92;
      (*(v81 + 32))(v91, v67, v92);
      v45 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10080CC34()
{
  type metadata accessor for SunriseSunsetDetailViewModel(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10080CC7C()
{
  v1 = sub_10022C350(&qword_100CDB798, &qword_100A884B0);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_10022C350(&qword_100CDB7A0, &qword_100A884B8);
  sub_10080CE18(v0, &v3[*(v4 + 44)]);
  if (qword_100CA2198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004B5F4C();
  sub_1004B5F70();
  swift_endAccess();
  sub_10023FBF4(&qword_100CDB7A8, &qword_100CDB798, &qword_100A884B0, &protocol conformance descriptor for VStack<A>);
  View.overviewTableBackground(_:_:)();

  return sub_10003FDA0(v3, &qword_100CDB798);
}

uint64_t sub_10080CE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for OverviewTableViewModel();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for OverviewTableView();
  v23 = *(v4 - 8);
  v5 = v23;
  __chkstk_darwin(v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_10022C350(&qword_100CDB7B0, &qword_100A884C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  sub_10080D0EC(a1);
  type metadata accessor for SunriseSunsetChartAndTable(0);
  sub_10062ADAC();
  OverviewTableView.init(model:rowVerticalPadding:rowHorizontalPadding:showDividerOnFirstRow:titleFont:valueFont:)();
  sub_10018CF14(v15, v12, &qword_100CDB7B0, &qword_100A884C0);
  v16 = *(v5 + 16);
  v17 = v24;
  v16(v24, v9, v4);
  v18 = v25;
  sub_10018CF14(v12, v25, &qword_100CDB7B0, &qword_100A884C0);
  v19 = v18 + *(sub_10022C350(&qword_100CDB7B8, &unk_100A884C8) + 48);
  v16(v19, v17, v4);
  v20 = *(v23 + 8);
  v20(v9, v4);
  sub_10003FDA0(v15, &qword_100CDB7B0);
  v20(v17, v4);
  return sub_10003FDA0(v12, &qword_100CDB7B0);
}

void sub_10080D0EC(uint64_t a1)
{
  v1 = type metadata accessor for SunriseSunsetDetailChartViewModel();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10022C350(&qword_100CDB158, &unk_100A87F30);
  __chkstk_darwin(v2);
  sub_10022C350(&qword_100CDB378, &unk_100A880C0);
  Binding.projectedValue.getter();
  type metadata accessor for SunriseSunsetChartAndTable(0);
  Binding.projectedValue.getter();
  sub_10062A5E8();
  sub_1007FF704();
}

void *sub_10080D248@<X0>(uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  v10 = 0;
  sub_10080D320(v2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_10018CF14(__dst, &v7, &qword_100CDB810, &qword_100A88540);
  sub_10003FDA0(v12, &qword_100CDB810);
  memcpy(&v9[7], __dst, 0x110uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x117uLL);
}

uint64_t sub_10080D320@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Axis.Set.horizontal.getter();
  sub_10080D56C(a1, __src);
  memcpy(__dst, __src, 0x53uLL);
  memcpy(v27, __src, 0x53uLL);
  sub_10018CF14(__dst, v30, &qword_100CDB818, &unk_100A88548);
  sub_10003FDA0(v27, &qword_100CDB818);
  memcpy(&v20[7], __dst, 0x53uLL);
  v5 = static Axis.Set.horizontal.getter();
  sub_10080DAA0(__src);
  memcpy(v28, __src, 0x53uLL);
  memcpy(v29, __src, 0x53uLL);
  sub_10018CF14(v28, v30, &qword_100CDB818, &unk_100A88548);
  sub_10003FDA0(v29, &qword_100CDB818);
  memcpy(&v19[7], v28, 0x53uLL);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29[104] = 1;
  v29[96] = v22;
  v29[88] = v24;
  v16 = 0x4024000000000000;
  v17 = 0;
  v18[0] = &v16;
  v15[0] = v4;
  memcpy(&v15[1], v20, 0x5AuLL);
  v18[1] = v15;
  v14[0] = v5;
  memcpy(&v14[1], v19, 0x5AuLL);
  v7 = 0;
  v8 = 1;
  v9 = v21;
  v10 = v22;
  v11 = v23;
  v12 = v24;
  v13 = v25;
  v18[2] = v14;
  v18[3] = &v7;
  sub_1003E9DEC(v18, a2);
  memcpy(v30, v14, 0x5BuLL);
  sub_10003FDA0(v30, &unk_100CB5CD0);
  memcpy(__src, v15, 0x5BuLL);
  return sub_10003FDA0(__src, &unk_100CB5CD0);
}

uint64_t sub_10080D56C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v54 = type metadata accessor for TimeStyle();
  v3 = *(v54 - 8);
  __chkstk_darwin(v54);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Font.Leading();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Font.largeTitle.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v48 = enum case for Font.Leading.tight(_:);
  v47 = *(v7 + 104);
  v41 = v6;
  v47(v9);
  Font.leading(_:)();

  v46 = *(v7 + 8);
  v46(v9, v6);
  v45 = type metadata accessor for Style();
  static Style.componentTime.getter();
  v10 = a1[1];
  v44 = *a1;
  v43 = v10;
  v42 = *(a1 + *(type metadata accessor for SunriseSunsetDetailHeaderView(0) + 28));
  v11 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v13 = v12;
  LOBYTE(a1) = v14;
  v15 = *(v3 + 8);
  v39 = v3 + 8;
  v40 = v15;
  v15(v5, v54);
  v51 = Text.monospacedDigit()();
  v50 = v16;
  v49 = v17;
  v52 = v18;
  sub_10010CD64(v11, v13, a1 & 1);

  static Font.title2.getter();
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v19 = v41;
  (v47)(v9, v48, v41);
  Font.leading(_:)();

  v46(v9, v19);
  static Style.componentTime.getter();
  v20 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v22 = v21;
  LOBYTE(v9) = v23;
  v40(v5, v54);
  v24 = Text.monospacedDigit()();
  v26 = v25;
  LOBYTE(v5) = v27;
  v29 = v28;
  sub_10010CD64(v20, v22, v9 & 1);

  KeyPath = swift_getKeyPath();
  v31 = v56[0];
  *(&v58 + 1) = v56[0];
  DWORD1(v58) = *(v56 + 3);
  *v59 = KeyPath;
  *&v59[8] = 2;
  v59[16] = 0;
  *&v59[17] = 256;
  v32 = v53;
  *(v53 + 79) = *&v59[15];
  LOBYTE(a1) = v49 & 1;
  v55[56] = v49 & 1;
  *&v57 = v24;
  *(&v57 + 1) = v26;
  LOBYTE(v58) = v5 & 1;
  *(&v58 + 1) = v29;
  v33 = v51;
  v34 = v50;
  *v32 = v51;
  *(v32 + 8) = v34;
  *(v32 + 16) = a1;
  *(v32 + 24) = v52;
  v35 = v57;
  v36 = *v59;
  *(v32 + 48) = v58;
  *(v32 + 64) = v36;
  *(v32 + 32) = v35;
  v60[0] = v24;
  v60[1] = v26;
  v61 = v5 & 1;
  *&v62[3] = *(v56 + 3);
  *v62 = v31;
  v63 = v29;
  v64 = KeyPath;
  v65 = 2;
  v66 = 0;
  v67 = 256;
  v37 = v33;
  sub_10010CD54(v33, v34, a1);

  sub_10018CF14(&v57, v55, &qword_100CACF40, &unk_100A3C2F0);
  sub_10003FDA0(v60, &qword_100CACF40);
  sub_10010CD64(v37, v34, a1);
}

uint64_t sub_10080DAA0@<X0>(uint64_t a2@<X8>)
{
  static Font.subheadline.getter();
  static Font.Weight.medium.getter();
  v3 = Font.weight(_:)();

  v4 = sub_10080DC50(v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  static Font.footnote.getter();
  static Font.Weight.medium.getter();
  v11 = Font.weight(_:)();

  v12 = sub_10080DC50(v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  KeyPath = swift_getKeyPath();
  v24[56] = v8 & 1;
  *&v25 = v12;
  *(&v25 + 1) = v14;
  LOBYTE(v26) = v16 & 1;
  *(&v26 + 1) = v18;
  *v27 = KeyPath;
  *&v27[8] = 2;
  v27[16] = 0;
  *&v27[17] = 256;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  v20 = v25;
  v21 = v26;
  v22 = *v27;
  *(a2 + 79) = *&v27[15];
  *(a2 + 48) = v21;
  *(a2 + 64) = v22;
  *(a2 + 32) = v20;
  v28[0] = v12;
  v28[1] = v14;
  v29 = v16 & 1;
  v30 = v18;
  v31 = KeyPath;
  v32 = 2;
  v33 = 0;
  v34 = 256;
  sub_10010CD54(v4, v6, v8 & 1);

  sub_10018CF14(&v25, v24, &qword_100CACF40, &unk_100A3C2F0);
  sub_10003FDA0(v28, &qword_100CACF40);
  sub_10010CD64(v4, v6, v8 & 1);
}

uint64_t sub_10080DC50(uint64_t a1)
{
  v1 = type metadata accessor for AttributedString();
  __chkstk_darwin(v1 - 8);
  type metadata accessor for SunriseSunsetDetailHeaderView(0);
  AttributedString.with(font:)();
  v2 = Text.init(_:)();
  v4 = v3;
  v6 = v5;
  static Color.secondary.getter();
  v7 = Text.foregroundColor(_:)();
  v9 = v8;
  v11 = v10;

  sub_10010CD64(v2, v4, v6 & 1);

  v12 = Text.monospacedDigit()();
  sub_10010CD64(v7, v9, v11 & 1);

  return v12;
}

uint64_t sub_10080DDC8()
{
  v1 = sub_10022C350(&qword_100CDB7C0, &qword_100A884D8);
  __chkstk_darwin(v1);
  v3 = &v6 - v2;
  *v3 = static HorizontalAlignment.center.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_10022C350(&qword_100CDB7C8, &qword_100A884E0);
  sub_10080DEF4(v0, &v3[*(v4 + 44)]);
  type metadata accessor for SunriseSunsetDetailLollipopHeaderView(0);
  sub_10023FBF4(&qword_100CDB7D0, &qword_100CDB7C0, &qword_100A884D8, &protocol conformance descriptor for VStack<A>);
  View.offsetXWithinBounds(_:)();
  return sub_10003FDA0(v3, &qword_100CDB7C0);
}

uint64_t sub_10080DEF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v114 = a2;
  v3 = type metadata accessor for AttributedString();
  __chkstk_darwin(v3 - 8);
  v111 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Font.Leading();
  v107 = *(v5 - 8);
  v108 = v5;
  __chkstk_darwin(v5);
  v106 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TimeStyle();
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v105 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CDB7D8, &unk_100A884E8);
  v112 = *(v9 - 8);
  v113 = v9;
  __chkstk_darwin(v9);
  v122 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v124 = &v95 - v12;
  v13 = type metadata accessor for CharacterSet();
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin(v13);
  v102 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v15 - 8);
  v17 = &v95 - v16;
  v18 = type metadata accessor for Font.TextStyle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10022C350(&qword_100CDB7E0, &qword_100A884F8);
  __chkstk_darwin(v22 - 8);
  v121 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v123 = &v95 - v25;
  v116 = a1;
  v26 = a1[1];
  v98 = *a1;
  v96 = v26;
  v128[0] = v98;
  v128[1] = v26;
  v97 = sub_10002D5A4();
  swift_bridgeObjectRetain_n();
  v27 = Text.init<A>(_:)();
  v29 = v28;
  v31 = v30;
  v32 = *(v19 + 104);
  v119 = v19 + 104;
  v120 = v32;
  v99 = v18;
  v32(v21, enum case for Font.TextStyle.footnote(_:), v18);
  v33 = type metadata accessor for Font.Design();
  v100 = v17;
  v101 = v33;
  sub_10001B350(v17, 1, 1, v33);
  v115 = v21;
  static Font.system(_:design:weight:)();
  sub_10003FDA0(v17, &qword_100CA4020);
  v34 = *(v19 + 8);
  v117 = v19 + 8;
  v118 = v34;
  v34(v21, v18);
  static Font.Weight.medium.getter();
  Font.weight(_:)();

  v35 = Text.font(_:)();
  v37 = v36;
  LOBYTE(v18) = v38;
  v40 = v39;

  sub_10010CD64(v27, v29, v31 & 1);

  v41 = static Color.secondary.getter();
  KeyPath = swift_getKeyPath();
  v136 = v18 & 1;
  *&v132 = v35;
  *(&v132 + 1) = v37;
  LOBYTE(v133) = v18 & 1;
  *(&v133 + 1) = v40;
  LOWORD(v134) = 257;
  *(&v134 + 1) = KeyPath;
  v135 = v41;
  v128[0] = v98;
  v128[1] = v96;
  v43 = v102;
  static CharacterSet.whitespacesAndNewlines.getter();
  StringProtocol.trimmingCharacters(in:)();
  (*(v103 + 8))(v43, v104);

  sub_10022C350(&qword_100CDB7E8, &qword_100A88530);
  sub_10080EB88();
  View.accessibilityHidden(_:)();
  v126[0] = v132;
  v126[1] = v133;
  v126[2] = v134;
  v127 = v135;
  sub_10003FDA0(v126, &qword_100CDB7E8);
  type metadata accessor for Style();
  v44 = v105;
  static Style.componentTime.getter();
  v103 = v116[3];
  v104 = type metadata accessor for SunriseSunsetDetailLollipopHeaderView(0);
  v45 = v115;
  v46 = v99;
  v120(v115, enum case for Font.TextStyle.largeTitle(_:), v99);
  v47 = v100;
  sub_10001B350(v100, 1, 1, v101);
  static Font.system(_:design:weight:)();
  sub_10003FDA0(v47, &qword_100CA4020);
  v118(v45, v46);
  v49 = v106;
  v48 = v107;
  v50 = v108;
  (*(v107 + 104))(v106, enum case for Font.Leading.tight(_:), v108);
  Font.leading(_:)();

  (*(v48 + 8))(v49, v50);
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v51 = v44;
  v52 = TimeStyle.formatTime(_:periodSymbols:font:)();
  v54 = v53;
  LOBYTE(v43) = v55;
  v57 = v56;

  (*(v109 + 8))(v51, v110);
  LOBYTE(v47) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  LOBYTE(v51) = v43 & 1;
  LOBYTE(v128[0]) = v43 & 1;
  LOBYTE(v125[0]) = 0;
  v66 = static Color.primary.getter();
  v67 = swift_getKeyPath();
  v125[0] = v52;
  v125[1] = v54;
  LOBYTE(v125[2]) = v51;
  v125[3] = v57;
  LOBYTE(v125[4]) = v47;
  v125[5] = v59;
  v125[6] = v61;
  v125[7] = v63;
  v125[8] = v65;
  LOBYTE(v125[9]) = 0;
  v125[10] = v67;
  v125[11] = v66;
  sub_10022C350(&qword_100CDB7F8, &unk_100A99170);
  sub_10080EC60();
  View.monospacedDigit()();
  memcpy(v128, v125, sizeof(v128));
  sub_10003FDA0(v128, &qword_100CDB7F8);
  v68 = v115;
  v120(v115, enum case for Font.TextStyle.caption2(_:), v46);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v118(v68, v46);
  AttributedString.with(font:)();

  v69 = Text.init(_:)();
  v71 = v70;
  LOBYTE(v68) = v72;
  static Color.secondary.getter();
  v73 = Text.foregroundColor(_:)();
  v75 = v74;
  LOBYTE(v49) = v76;

  sub_10010CD64(v69, v71, v68 & 1);

  v77 = Text.monospacedDigit()();
  v117 = v78;
  v118 = v77;
  LODWORD(v119) = v79;
  v120 = v80;
  sub_10010CD64(v73, v75, v49 & 1);

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v115 = v125[2];
  v116 = v125[0];
  v110 = v125[5];
  v111 = v125[4];
  v131 = 1;
  v130 = v125[1];
  v129 = v125[3];
  v81 = v121;
  sub_10018CF14(v123, v121, &qword_100CDB7E0, &qword_100A884F8);
  v83 = v112;
  v82 = v113;
  v84 = *(v112 + 16);
  v85 = v122;
  v84(v122, v124, v113);
  LODWORD(v107) = v131;
  LODWORD(v108) = v130;
  LODWORD(v109) = v129;
  v86 = v114;
  *v114 = 0x4018000000000000;
  *(v86 + 8) = 0;
  v87 = sub_10022C350(&qword_100CDB808, &qword_100A88538);
  sub_10018CF14(v81, v86 + v87[12], &qword_100CDB7E0, &qword_100A884F8);
  v84(v86 + v87[16], v85, v82);
  v88 = v86 + v87[20];
  v89 = v117;
  v90 = v118;
  *v88 = v118;
  *(v88 + 1) = v89;
  LOBYTE(v66) = v119 & 1;
  v88[16] = v119 & 1;
  *(v88 + 3) = v120;
  v91 = v86 + v87[24];
  *v91 = 0;
  v91[8] = v107;
  *(v91 + 2) = v116;
  v91[24] = v108;
  *(v91 + 4) = v115;
  v91[40] = v109;
  v92 = v110;
  *(v91 + 6) = v111;
  *(v91 + 7) = v92;
  sub_10010CD54(v90, v89, v66);
  v93 = *(v83 + 8);

  v93(v124, v82);
  sub_10003FDA0(v123, &qword_100CDB7E0);
  sub_10010CD64(v90, v89, v66);

  v93(v122, v82);
  return sub_10003FDA0(v121, &qword_100CDB7E0);
}

uint64_t sub_10080EACC(uint64_t a1)
{
  result = sub_10080F248(&qword_100CDB790, type metadata accessor for SunriseSunsetDetailViewModel, aY_76);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10080EB24@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10080EB88()
{
  result = qword_100CDB7F0;
  if (!qword_100CDB7F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB7E8, &qword_100A88530);
    v4[0] = sub_10023EBBC(&qword_100CB8158, &qword_100CB8160, &qword_100A5D2E0, &protocol witness table for _FixedSizeLayout);
    v4[1] = sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB7F0);
  }

  return result;
}

unint64_t sub_10080EC60()
{
  result = qword_100CDB800;
  if (!qword_100CDB800)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB7F8, &unk_100A99170);
    v4[0] = sub_10023EBBC(&qword_100CA64A0, &qword_100CA6438, &qword_100A31270, &protocol witness table for _PaddingLayout);
    v4[1] = sub_10023FBF4(&qword_100CE0FF0, &qword_100CA5110, &qword_100A2F320, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB800);
  }

  return result;
}

uint64_t sub_10080ED38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  v8 = sub_100003A24(a1, a2);
  sub_10022E824(v8, v9);
  sub_100005A00();
  sub_10023FBF4(a4, a2, a3, v10);
  return swift_getOpaqueTypeConformance2();
}

void sub_10080EDD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_10080EE58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for SunriseSunsetDetailView(0);
  sub_100003810(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_10080A518(a1, v7, a2);
}

uint64_t sub_10080EED4()
{
  v2 = type metadata accessor for SunriseSunsetDetailView(0);
  sub_100003810(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1000926F8;

  return sub_10080AFA8(v5, v6, v0 + v4);
}

uint64_t sub_10080EFAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_10080F004(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_10080F064()
{
  result = qword_100CDB940;
  if (!qword_100CDB940)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB918, &qword_100A88690);
    v4[0] = sub_10080F11C();
    v4[1] = sub_10023FBF4(&qword_100CA4620, &qword_100CA4628, &qword_100A45EA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB940);
  }

  return result;
}

unint64_t sub_10080F11C()
{
  result = qword_100CDB948;
  if (!qword_100CDB948)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_10022E824(&qword_100CDB910, &qword_100A88688);
    v4[2] = sub_10022E824(&qword_100CDB900, &qword_100A88678);
    v4[3] = sub_10023FBF4(&qword_100CDB938, &qword_100CDB900, &qword_100A88678, &protocol conformance descriptor for ScrollView<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10080F248(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB948);
  }

  return result;
}

uint64_t sub_10080F248(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10080F290(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003A9C();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

unint64_t sub_10080F2E8()
{
  result = qword_100CDB9C0;
  if (!qword_100CDB9C0)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = sub_10022E824(&qword_100CDB9A8, &qword_100A88788);
    v4[2] = type metadata accessor for SunriseSunsetDetailHeaderView(255);
    v4[3] = sub_10022E824(&unk_100CE1680, &unk_100A450F0);
    v4[4] = sub_10080F248(&qword_100CDB9B8, type metadata accessor for SunriseSunsetDetailHeaderView, byte_100A883A0);
    v4[5] = sub_10023FBF4(&qword_100CA53C8, &unk_100CE1680, &unk_100A450F0, &protocol conformance descriptor for PartialRangeThrough<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB9C0);
  }

  return result;
}

unint64_t sub_10080F434()
{
  result = qword_100CDB9D0;
  if (!qword_100CDB9D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CDB990, &qword_100A88768);
    v4[0] = sub_10080F248(&qword_100CDB9D8, type metadata accessor for SunriseSunsetDetailLollipopHeaderView, "q.\x1B");
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CDB9D0);
  }

  return result;
}

uint64_t sub_10080F500(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10080F540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10080F5CC@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_10022C350(&qword_100CDBA80, &qword_100A88938);
  return sub_10080F620(v2, (a2 + *(v4 + 44)));
}

uint64_t sub_10080F620@<X0>(char *a1@<X0>, __n128 *a2@<X8>)
{
  v127 = a2;
  v123 = sub_10022C350(&qword_100CDBA88, &unk_100A88940);
  __chkstk_darwin(v123);
  v105 = (&v101 - v3);
  v4 = sub_10022C350(&qword_100CA5528, &qword_100A2F940);
  v103 = *(v4 - 8);
  v104 = v4;
  __chkstk_darwin(v4);
  v101 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v102 = &v101 - v7;
  v121 = sub_10022C350(&qword_100CDBA90, &qword_100A88950);
  __chkstk_darwin(v121);
  v122 = &v101 - v8;
  v9 = sub_10022C350(&qword_100CB5DC0, &qword_100A495E8);
  __chkstk_darwin(v9 - 8);
  v126 = (&v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = type metadata accessor for Font.TextStyle();
  v115 = *(v14 - 8);
  v116 = v14;
  __chkstk_darwin(v14);
  v114 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  __chkstk_darwin(v16 - 8);
  v18 = &v101 - v17;
  v19 = sub_10022C350(&qword_100CDBA98, &unk_100A88958);
  __chkstk_darwin(v19);
  v21 = (&v101 - v20);
  v22 = sub_10022C350(&qword_100CB5DB8, &qword_100A495E0);
  __chkstk_darwin(v22 - 8);
  v124 = (&v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v128 = &v101 - v25;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v117 = v162[21];
  v118 = v164;
  v119 = v167;
  v120 = v166;
  v179 = 1;
  v177 = v163;
  v175 = v165;

  v113 = Image.init(systemName:)();
  v26 = a1[40];
  v125 = v13;
  v129 = a1;
  if (v26)
  {
    v27 = static Color.secondary.getter();
  }

  else
  {
    v27 = static Color.green.getter();
  }

  v28 = v27;
  KeyPath = swift_getKeyPath();
  v30 = type metadata accessor for Font.Design();
  sub_10001B350(v18, 1, 1, v30);
  v31 = static Font.system(size:weight:design:)();
  sub_10003FDF4(v18, &qword_100CA4020, &qword_100A2E080);
  v32 = swift_getKeyPath();
  v33 = (v21 + *(v19 + 36));
  v34 = *(sub_10022C350(&qword_100CAF750, &qword_100A57BC0) + 28);
  v35 = enum case for Image.Scale.large(_:);
  v36 = type metadata accessor for Image.Scale();
  (*(*(v36 - 8) + 104))(v33 + v34, v35, v36);
  *v33 = swift_getKeyPath();
  *v21 = v113;
  v21[1] = KeyPath;
  v21[2] = v28;
  v21[3] = v32;
  v21[4] = v31;
  sub_100810514();
  View.accessibilityHidden(_:)();
  sub_10003FDF4(v21, &qword_100CDBA98, &unk_100A88958);
  swift_beginAccess();
  v37 = sub_10033D8F8();
  swift_endAccess();
  [v37 _scaledValueForValue:46.0];
  v39 = v38;

  v40 = *(v129 + 9);
  v162[0] = *(v129 + 8);
  v162[1] = v40;
  v110 = sub_10002D5A4();

  v41 = Text.init<A>(_:)();
  v43 = v42;
  LOBYTE(v34) = v44;
  v46 = v114;
  v45 = v115;
  v47 = v116;
  (*(v115 + 104))(v114, enum case for Font.TextStyle.title2(_:), v116);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  (*(v45 + 8))(v46, v47);
  v48 = Text.font(_:)();
  v50 = v49;
  LOBYTE(v45) = v51;

  sub_10010CD64(v41, v43, v34 & 1);

  static Color.primary.getter();
  v52 = Text.foregroundColor(_:)();
  v115 = v53;
  v116 = v52;
  LOBYTE(v43) = v54;
  v114 = v55;

  sub_10010CD64(v48, v50, v45 & 1);

  v113 = swift_getKeyPath();
  v56 = static Edge.Set.horizontal.getter();
  v111 = v43 & 1;
  v112 = v56;
  LOBYTE(v162[0]) = v43 & 1;
  v161[0] = 1;
  swift_beginAccess();
  v57 = sub_10033D8F8();
  swift_endAccess();
  [v57 _scaledValueForValue:24.0];
  v59 = v58;

  v60 = *(v129 + 11);
  v162[0] = *(v129 + 10);
  v162[1] = v60;

  v61 = Text.init<A>(_:)();
  v63 = v62;
  LOBYTE(v43) = v64;
  static Font.subheadline.getter();
  v65 = Text.font(_:)();
  v67 = v66;
  v69 = v68;

  v70 = v43 & 1;
  v71 = v129;
  sub_10010CD64(v61, v63, v70);

  static Color.secondary.getter();
  v72 = Text.foregroundColor(_:)();
  v109 = v74;
  v110 = v73;
  LOBYTE(v63) = v75;

  sub_10010CD64(v65, v67, v69 & 1);

  v108 = swift_getKeyPath();
  v76 = static Edge.Set.horizontal.getter();
  v106 = v63 & 1;
  v107 = v76;
  LOBYTE(v162[0]) = v63 & 1;
  v161[0] = 1;
  v77 = *(v71 + 14);
  if (v77)
  {
    v79 = *(v71 + 12);
    v78 = *(v71 + 13);
    swift_beginAccess();
    v80 = sub_10033D8F8();
    swift_endAccess();
    [v80 _scaledValueForValue:40.0];
    v82 = v81;

    sub_100810684(v71, v162);
    v83 = swift_allocObject();
    v84 = memcpy((v83 + 16), v162, 0x88uLL);
    *(v83 + 152) = v79;
    __chkstk_darwin(v84);
    *(&v101 - 4) = v78;
    *(&v101 - 3) = v77;
    *(&v101 - 2) = v71;
    v85 = v102;
    Button.init(action:label:)();
    v87 = v103;
    v86 = v104;
    v88 = *(v103 + 16);
    v129 = v72;
    v89 = v101;
    v88(v101, v85, v104);
    v90 = v105;
    *v105 = v82;
    *(v90 + 8) = 0;
    *(v90 + 9) = 257;
    v91 = sub_10022C350(&qword_100CDBAB8, &unk_100A88A40);
    v88((v90 + *(v91 + 48)), v89, v86);
    v92 = *(v87 + 8);
    v92(v89, v86);
    sub_100060DE0(v90, v122, &qword_100CDBA88, &unk_100A88940);
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CDBAC0, &qword_100CDBA88, &unk_100A88940, &protocol conformance descriptor for TupleView<A>);
    v93 = v125;
    v72 = v129;
    _ConditionalContent<>.init(storage:)();
    sub_10003FDF4(v90, &qword_100CDBA88, &unk_100A88940);
    v92(v85, v86);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100006F64(&qword_100CDBAC0, &qword_100CDBA88, &unk_100A88940, &protocol conformance descriptor for TupleView<A>);
    v93 = v125;
    _ConditionalContent<>.init(storage:)();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v94 = v168;
  v95 = v170;
  v96 = v173;
  v129 = v172;
  v160 = 1;
  v159 = v169;
  v158 = v171;
  v146 = 0;
  v147 = v179;
  *v148 = *v178;
  *&v148[3] = *&v178[3];
  v149 = v117;
  v150 = v177;
  *v151 = *v176;
  *&v151[3] = *&v176[3];
  v152 = v118;
  v153 = v175;
  *&v154[3] = *&v174[3];
  *v154 = *v174;
  v155 = v120;
  v156 = v119;
  v157[0] = &v146;
  v97 = v128;
  v98 = v124;
  sub_100060DE0(v128, v124, &qword_100CB5DB8, &qword_100A495E0);
  v143 = v39;
  v144 = 0;
  v145 = 257;
  v157[1] = v98;
  v157[2] = &v143;
  v142[0] = v116;
  v142[1] = v115;
  LOBYTE(v142[2]) = v111;
  v142[3] = v114;
  v142[4] = v113;
  LOBYTE(v142[5]) = 1;
  LOBYTE(v142[6]) = v112;
  memset(&v142[7], 0, 32);
  LOBYTE(v142[11]) = 1;
  v139 = v59;
  v140 = 0;
  v141 = 257;
  v157[3] = v142;
  v157[4] = &v139;
  v138[0] = v72;
  v138[1] = v110;
  LOBYTE(v138[2]) = v106;
  v138[3] = v109;
  v138[4] = v108;
  LOBYTE(v138[5]) = 1;
  LOBYTE(v138[6]) = v107;
  memset(&v138[7], 0, 32);
  LOBYTE(v138[11]) = 1;
  v157[5] = v138;
  v99 = v126;
  sub_100060DE0(v93, v126, &qword_100CB5DC0, &qword_100A495E8);
  v130 = 0;
  v131 = v160;
  v132 = v94;
  v133 = v159;
  v134 = v95;
  v135 = v158;
  v136 = v129;
  v137 = v96;
  v157[6] = v99;
  v157[7] = &v130;
  sub_1003E9EE4(v157, v127);
  sub_10003FDF4(v93, &qword_100CB5DC0, &qword_100A495E8);
  sub_10003FDF4(v97, &qword_100CB5DB8, &qword_100A495E0);
  sub_10003FDF4(v99, &qword_100CB5DC0, &qword_100A495E8);
  memcpy(v161, v138, 0x59uLL);
  sub_10003FDF4(v161, &qword_100CB4B18, &qword_100A495F0);
  memcpy(v162, v142, 0x59uLL);
  sub_10003FDF4(v162, &qword_100CB4B18, &qword_100A495F0);
  return sub_10003FDF4(v98, &qword_100CB5DB8, &qword_100A495E0);
}

uint64_t sub_1008103C8@<X0>(uint64_t a4@<X8>)
{
  sub_10002D5A4();

  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  static Font.subheadline.getter();
  v10 = Text.font(_:)();
  v12 = v11;
  v14 = v13;

  sub_10010CD64(v5, v7, v9 & 1);

  Color.init(hex:)();
  v15 = Text.foregroundColor(_:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_10010CD64(v10, v12, v14 & 1);

  *a4 = v15;
  *(a4 + 8) = v17;
  *(a4 + 16) = v19 & 1;
  *(a4 + 24) = v21;
  return result;
}
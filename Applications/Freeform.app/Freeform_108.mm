uint64_t sub_100DA74E8()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_100DA7514@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_100DA7530(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

uint64_t sub_100DA7550(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DC51B4();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_100DA759C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

unint64_t sub_100DA75D8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_100DA7600@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int sub_100DA761C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100DA7688(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DC5208();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_100DA76D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100DA7754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    }
  }

  return result;
}

uint64_t sub_100DA77C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for CRLProto_Data(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100DA7910(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20178, type metadata accessor for CRLProto_Data, byte_1014B5840);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA79B0(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA7A1C(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);

  return Message.hash(into:)();
}

uint64_t sub_100DA7A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1009F9488(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DA7B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t sub_100DA7BCC(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (!*v4 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v5))
  {
    type metadata accessor for CRLProto_Date(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DA7CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20190, type metadata accessor for CRLProto_Date, byte_1014B56D8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA7D78(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A20140, type metadata accessor for CRLProto_Date, "i.8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA7DE4(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A20140, type metadata accessor for CRLProto_Date, "i.8");

  return Message.hash(into:)();
}

uint64_t sub_100DA7E60(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DA7F04()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8190);
  sub_1005EB3DC(v0, qword_101AD8190);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 1) = 1;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DA8118(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20198, type metadata accessor for CRLProto_Point, byte_1014B5570);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA81B8(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point, byte_1014B55A8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA8224(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point, byte_1014B55A8);

  return Message.hash(into:)();
}

uint64_t sub_100DA82A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD81A8);
  sub_1005EB3DC(v0, qword_101AD81A8);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "width";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "height";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DA8468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
    }
  }

  return result;
}

uint64_t sub_100DA84E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*v4 || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v5))
  {
    if (!v4[1] || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v5))
    {
      (a4)(0, a2, a3);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DA85F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201A0, type metadata accessor for CRLProto_Size, "Q18");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA8694(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A10308, type metadata accessor for CRLProto_Size, "918");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA8700(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A10308, type metadata accessor for CRLProto_Size, "918");

  return Message.hash(into:)();
}

uint64_t sub_100DA877C(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DA8830()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD81C0);
  sub_1005EB3DC(v0, qword_101AD81C0);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "x";
  *(v6 + 8) = 1;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "y";
  *(v10 + 8) = 1;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DA8A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_9:
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
        goto LABEL_9;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DA8B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v4))
    {
      if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v4))
      {
        if (!v3[3] || (result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for CRLProto_Rect(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100DA8C18@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  return UnknownStorage.init()();
}

uint64_t sub_100DA8C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201A8, type metadata accessor for CRLProto_Rect, byte_1014B52A0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA8D30(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A10330, type metadata accessor for CRLProto_Rect, byte_1014B52D8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA8D9C(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A10330, type metadata accessor for CRLProto_Rect, byte_1014B52D8);

  return Message.hash(into:)();
}

uint64_t sub_100DA8E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CRLProto_Path.Element(0);
        sub_100DBA678(&qword_101A200C0, type metadata accessor for CRLProto_Path.Element, byte_1014B4FE0);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DA8F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CRLProto_Path.Element(0), sub_100DBA678(&qword_101A200C0, type metadata accessor for CRLProto_Path.Element, byte_1014B4FE0), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for CRLProto_Path(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DA9078(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201B0, type metadata accessor for CRLProto_Path, "!48");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA9118(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A16D68, type metadata accessor for CRLProto_Path, "\t48");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA9184(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A16D68, type metadata accessor for CRLProto_Path, "\t48");

  return Message.hash(into:)();
}

uint64_t sub_100DA9200(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_10066E698(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DA92A8()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD81F0);
  sub_1005EB3DC(v0, qword_101AD81F0);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "moveTo";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "lineTo";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "curveTo";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "close";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_100DA9510()
{
  strcpy(v1, "CRLProto.Path");
  HIWORD(v1[1]) = -4864;
  v0._countAndFlagsBits = 0x746E656D656C452ELL;
  v0._object = 0xE800000000000000;
  String.append(_:)(v0);
  qword_101AD8208 = v1[0];
  unk_101AD8210 = v1[1];
}

uint64_t sub_100DA9584()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8218);
  sub_1005EB3DC(v0, qword_101AD8218);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endPoint";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "controlPoint1";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "controlPoint2";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DA97D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularBytesField(value:)();
        }
      }

      else if (result == 1)
      {
        sub_100DC4F74();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        goto LABEL_4;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DA98B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_100DC4F74(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    v6 = v3[2];
    v7 = v3[3];
    v8 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 16);
      v10 = *(v6 + 24);
    }

    else
    {
      if (!v8)
      {
        if ((v7 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      v9 = v6;
      v10 = v6 >> 32;
    }

    if (v9 == v10)
    {
      goto LABEL_12;
    }

LABEL_11:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

LABEL_12:
    v11 = v3[4];
    v12 = v3[5];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_21;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 == v15)
    {
      goto LABEL_21;
    }

LABEL_20:
    result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

LABEL_21:
    v16 = v3[6];
    v17 = v3[7];
    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_30;
      }

      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
    }

    else
    {
      if (!v18)
      {
        if ((v17 & 0xFF000000000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_29:
        result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
        if (v4)
        {
          return result;
        }

        goto LABEL_30;
      }

      v19 = v16;
      v20 = v16 >> 32;
    }

    if (v19 != v20)
    {
      goto LABEL_29;
    }

LABEL_30:
    type metadata accessor for CRLProto_Path.Element(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DA9A74@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = xmmword_10146F370;
  *(a2 + 32) = xmmword_10146F370;
  *(a2 + 48) = xmmword_10146F370;
  return UnknownStorage.init()();
}

uint64_t sub_100DA9B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201B8, type metadata accessor for CRLProto_Path.Element, byte_1014B4FA8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DA9BA8(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A200C0, type metadata accessor for CRLProto_Path.Element, byte_1014B4FE0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DA9C14(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A200C0, type metadata accessor for CRLProto_Path.Element, byte_1014B4FE0);

  return Message.hash(into:)();
}

uint64_t sub_100DA9C94()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8230);
  sub_1005EB3DC(v0, qword_101AD8230);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1014A50F0;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "strokePoints";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "maskPath";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "randomSeed";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "creationDate";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "renderScaleX";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "renderScaleY";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "anchorPointForTexture";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "renderGroupID";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "shouldSolveMath";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "isSynthesizedStroke";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "particleOffset";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "secondaryParticleOffset";
  *(v28 + 1) = 23;
  v28[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAA0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 6)
      {
        if (result > 9)
        {
          if (result == 10)
          {
            goto LABEL_25;
          }

          if (result == 11 || result == 12)
          {
            type metadata accessor for CRLProto_PKStrokePathData(0);
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          }
        }

        else
        {
          if (result == 7)
          {
            sub_100DAA4E4(v11, a1, v5, a2, a3);
            goto LABEL_5;
          }

          if (result != 8)
          {
LABEL_25:
            type metadata accessor for CRLProto_PKStrokePathData(0);
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            goto LABEL_5;
          }

          sub_100DAA598(v11, a1, v5, a2, a3);
        }
      }

      else if (result > 3)
      {
        if (result == 4)
        {
          sub_100DAA430(v11, a1, v5, a2, a3);
        }

        else
        {
          type metadata accessor for CRLProto_PKStrokePathData(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0);
            sub_100DBA678(&qword_101A20088, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint, "i88");
            dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
            break;
          case 2:
            sub_100DAA37C(v11, a1, v5, a2, a3);
            break;
          case 3:
            type metadata accessor for CRLProto_PKStrokePathData(0);
            dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DAA37C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_PKStrokePathData(0);
  type metadata accessor for CRLProto_Path(0);
  sub_100DBA678(&qword_101A16D68, type metadata accessor for CRLProto_Path, "\t48");
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAA430(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_PKStrokePathData(0);
  type metadata accessor for CRLProto_Date(0);
  sub_100DBA678(&qword_101A20140, type metadata accessor for CRLProto_Date, "i.8");
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAA4E4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_PKStrokePathData(0);
  type metadata accessor for CRLProto_Point(0);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point, byte_1014B55A8);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAA598(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_PKStrokePathData(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAA64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0), sub_100DBA678(&qword_101A20088, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint, "i88"), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = sub_100DAA840(v3, a1, a2, a3);
    if (!v4)
    {
      sub_100DAAA50(v3, v9, a1, a2, a3);
      sub_100DAAAC8(v3, a1, a2, a3);
      sub_100DAACD8(v3, v10, a1, a2, a3);
      sub_100DAAD50(v3, v11, a1, a2, a3);
      sub_100DAADC8(v3, a1, a2, a3);
      sub_100DAAFD8(v3, a1, a2, a3);
      sub_100DAB1E8(v3, v12, a1, a2, a3);
      sub_100DAB260(v3, v13, a1, a2, a3);
      sub_100DAB2D8(v3, v14, a1, a2, a3);
      sub_100DAB350(v3, v15, a1, a2, a3);
      type metadata accessor for CRLProto_PKStrokePathData(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DAA840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A1ACF8, &unk_1014B5900);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Path(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PKStrokePathData(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_101A1ACF8, &unk_1014B5900);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A1ACF8, &unk_1014B5900);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Path);
  sub_100DBA678(&qword_101A16D68, type metadata accessor for CRLProto_Path, "\t48");
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Path);
}

uint64_t sub_100DAAA50(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAAAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A1ACE8, &unk_1014AAE10);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Date(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PKStrokePathData(0);
  sub_10000BE14(a1 + *(v12 + 32), v7, &qword_101A1ACE8, &unk_1014AAE10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A1ACE8, &unk_1014AAE10);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Date);
  sub_100DBA678(&qword_101A20140, type metadata accessor for CRLProto_Date, "i.8");
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Date);
}

uint64_t sub_100DAACD8(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAAD50(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAADC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A15CE8, &qword_1014AAE20);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Point(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PKStrokePathData(0);
  sub_10000BE14(a1 + *(v12 + 44), v7, &qword_101A15CE8, &qword_1014AAE20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A15CE8, &qword_1014AAE20);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Point);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point, byte_1014B55A8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Point);
}

uint64_t sub_100DAAFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PKStrokePathData(0);
  sub_10000BE14(a1 + *(v12 + 48), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DAB1E8(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if (*(a1 + *(result + 52)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAB260(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if (*(a1 + *(result + 56)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAB2D8(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if ((*(a1 + *(result + 60) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAB350(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for CRLProto_PKStrokePathData(0);
  if ((*(a1 + *(result + 64) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DAB3C8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for CRLProto_Path(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[8];
  v7 = &a2[a1[7]];
  *v7 = 0;
  v7[4] = 1;
  v8 = type metadata accessor for CRLProto_Date(0);
  (*(*(v8 - 8) + 56))(&a2[v6], 1, 1, v8);
  v9 = a1[10];
  v10 = &a2[a1[9]];
  *v10 = 0;
  v10[4] = 1;
  v11 = &a2[v9];
  *v11 = 0;
  v11[4] = 1;
  v12 = a1[11];
  v13 = type metadata accessor for CRLProto_Point(0);
  (*(*(v13 - 8) + 56))(&a2[v12], 1, 1, v13);
  v14 = a1[12];
  v15 = type metadata accessor for CRLProto_Data(0);
  result = (*(*(v15 - 8) + 56))(&a2[v14], 1, 1, v15);
  v17 = a1[14];
  a2[a1[13]] = 2;
  a2[v17] = 2;
  v18 = a1[16];
  v19 = &a2[a1[15]];
  *v19 = 0;
  v19[8] = 1;
  v20 = &a2[v18];
  *v20 = 0;
  v20[8] = 1;
  return result;
}

uint64_t sub_100DAB5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201C8, type metadata accessor for CRLProto_PKStrokePathData, byte_1014B4E40);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAB660(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1ACF0, type metadata accessor for CRLProto_PKStrokePathData, byte_1014B4E78);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAB6CC(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A1ACF0, type metadata accessor for CRLProto_PKStrokePathData, byte_1014B4E78);

  return Message.hash(into:)();
}

void sub_100DAB74C()
{
  v0._countAndFlagsBits = 0x50656B6F7274532ELL;
  v0._object = 0xEC000000746E696FLL;
  String.append(_:)(v0);
  qword_101AD8248 = 0xD000000000000019;
  unk_101AD8250 = 0x80000001015A1E10;
}

uint64_t sub_100DAB7C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8258);
  sub_1005EB3DC(v0, qword_101AD8258);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1014A04A0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "altitude";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "azimuth";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "force";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "opacity";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "size";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "timeOffset";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "radius2";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "edgeWidth";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "threshold";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DABB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 4)
      {
        break;
      }

      if (result > 2 || result == 1 || result == 2)
      {
        goto LABEL_9;
      }

LABEL_10:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 9)
    {
      goto LABEL_10;
    }

LABEL_9:
    dispatch thunk of Decoder.decodeSingularBytesField(value:)();
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_100DABC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[2];
  v12 = v3[3];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_19;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
  }

  else
  {
    if (!v13)
    {
      if ((v12 & 0xFF000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v14 = v11;
    v15 = v11 >> 32;
  }

  if (v14 == v15)
  {
    goto LABEL_19;
  }

LABEL_18:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_19:
  v16 = v3[4];
  v17 = v3[5];
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_28;
    }

    v19 = *(v16 + 16);
    v20 = *(v16 + 24);
  }

  else
  {
    if (!v18)
    {
      if ((v17 & 0xFF000000000000) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v19 = v16;
    v20 = v16 >> 32;
  }

  if (v19 == v20)
  {
    goto LABEL_28;
  }

LABEL_27:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_28:
  v21 = v3[6];
  v22 = v3[7];
  v23 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_37;
    }

    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
  }

  else
  {
    if (!v23)
    {
      if ((v22 & 0xFF000000000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v24 = v21;
    v25 = v21 >> 32;
  }

  if (v24 == v25)
  {
    goto LABEL_37;
  }

LABEL_36:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_37:
  v26 = v3[8];
  v27 = v3[9];
  v28 = v27 >> 62;
  if ((v27 >> 62) > 1)
  {
    if (v28 != 2)
    {
      goto LABEL_46;
    }

    v29 = *(v26 + 16);
    v30 = *(v26 + 24);
  }

  else
  {
    if (!v28)
    {
      if ((v27 & 0xFF000000000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    v29 = v26;
    v30 = v26 >> 32;
  }

  if (v29 == v30)
  {
    goto LABEL_46;
  }

LABEL_45:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_46:
  v31 = v3[10];
  v32 = v3[11];
  v33 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v33 != 2)
    {
      goto LABEL_55;
    }

    v34 = *(v31 + 16);
    v35 = *(v31 + 24);
  }

  else
  {
    if (!v33)
    {
      if ((v32 & 0xFF000000000000) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    v34 = v31;
    v35 = v31 >> 32;
  }

  if (v34 == v35)
  {
    goto LABEL_55;
  }

LABEL_54:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_55:
  v36 = v3[12];
  v37 = v3[13];
  v38 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v38 != 2)
    {
      goto LABEL_64;
    }

    v39 = *(v36 + 16);
    v40 = *(v36 + 24);
  }

  else
  {
    if (!v38)
    {
      if ((v37 & 0xFF000000000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    v39 = v36;
    v40 = v36 >> 32;
  }

  if (v39 == v40)
  {
    goto LABEL_64;
  }

LABEL_63:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_64:
  v41 = v3[14];
  v42 = v3[15];
  v43 = v42 >> 62;
  if ((v42 >> 62) > 1)
  {
    if (v43 != 2)
    {
      goto LABEL_73;
    }

    v44 = *(v41 + 16);
    v45 = *(v41 + 24);
  }

  else
  {
    if (!v43)
    {
      if ((v42 & 0xFF000000000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }

    v44 = v41;
    v45 = v41 >> 32;
  }

  if (v44 == v45)
  {
    goto LABEL_73;
  }

LABEL_72:
  result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
  if (v4)
  {
    return result;
  }

LABEL_73:
  v46 = v3[16];
  v47 = v3[17];
  v48 = v47 >> 62;
  if ((v47 >> 62) > 1)
  {
    if (v48 != 2)
    {
      goto LABEL_82;
    }

    v49 = *(v46 + 16);
    v50 = *(v46 + 24);
  }

  else
  {
    if (!v48)
    {
      if ((v47 & 0xFF000000000000) == 0)
      {
        goto LABEL_82;
      }

LABEL_81:
      result = dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
      if (v4)
      {
        return result;
      }

      goto LABEL_82;
    }

    v49 = v46;
    v50 = v46 >> 32;
  }

  if (v49 != v50)
  {
    goto LABEL_81;
  }

LABEL_82:
  type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100DABFC0@<X0>(_OWORD *a2@<X8>)
{
  *a2 = xmmword_10146F370;
  a2[1] = xmmword_10146F370;
  a2[2] = xmmword_10146F370;
  a2[3] = xmmword_10146F370;
  a2[4] = xmmword_10146F370;
  a2[5] = xmmword_10146F370;
  a2[6] = xmmword_10146F370;
  a2[7] = xmmword_10146F370;
  a2[8] = xmmword_10146F370;
  return UnknownStorage.init()();
}

uint64_t sub_100DAC024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DAC098(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DAC13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201E8, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint, byte_1014B4CD8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAC1DC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A20088, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint, "i88");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAC248(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A20088, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint, "i88");

  return Message.hash(into:)();
}

uint64_t sub_100DAC2C8()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8270);
  sub_1005EB3DC(v0, qword_101AD8270);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101483930;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "type";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "insertionPointCursor";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "rangeSelectionHeadCursor";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "rangeSelectionTailCursor";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "eolAffinity";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "isVisual";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "insertionEdge";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAC5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            sub_100DC51B4();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            sub_100DAC778(a1, v5, a2, a3);
            break;
          case 3:
            sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_TextSelection);
            break;
        }
      }

      else if (result > 5)
      {
        if (result != 6)
        {
          if (result != 7)
          {
            goto LABEL_5;
          }

LABEL_17:
          type metadata accessor for CRLProto_TextSelection(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        type metadata accessor for CRLProto_TextSelection(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else
      {
        if (result != 4)
        {
          goto LABEL_17;
        }

        sub_100DAC82C(a1, v5, a2, a3);
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DAC778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_TextSelection(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAC82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_TextSelection(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAC8E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_100DC51B4(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = sub_100DACA3C(v3, a1, a2, a3);
    if (!v4)
    {
      sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_TextSelection, 3);
      sub_100DACC4C(v3, a1, a2, a3);
      sub_100DACE5C(v3, a1, a2, a3);
      sub_100DACED4(v3, a1, a2, a3);
      sub_100DACF4C(v3, a1, a2, a3);
      type metadata accessor for CRLProto_TextSelection(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DACA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_TextSelection(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DACC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_TextSelection(0);
  sub_10000BE14(a1 + *(v12 + 32), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DACE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CRLProto_TextSelection(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DACED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CRLProto_TextSelection(0);
  if (*(a1 + *(result + 40)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DACF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CRLProto_TextSelection(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DACFC4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[7], 1, 1, v5);
  result = (v6)(a2 + a1[8], 1, 1, v5);
  v8 = a1[10];
  v9 = a2 + a1[9];
  *v9 = 0;
  *(v9 + 4) = 1;
  *(a2 + v8) = 2;
  v10 = a2 + a1[11];
  *v10 = 0;
  *(v10 + 4) = 1;
  return result;
}

uint64_t sub_100DAD114(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A201F0, type metadata accessor for CRLProto_TextSelection, byte_1014B4B70);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAD1B4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A20068, type metadata accessor for CRLProto_TextSelection, byte_1014B4BA8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAD220(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A20068, type metadata accessor for CRLProto_TextSelection, byte_1014B4BA8);

  return Message.hash(into:)();
}

uint64_t sub_100DAD2A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8288);
  sub_1005EB3DC(v0, qword_101AD8288);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "insertionPoint";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "range";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAD48C()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD82A0);
  sub_1005EB3DC(v0, qword_101AD82A0);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tableCellRange";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAD654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_100DC5208();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        sub_100DAD714(a1, v5, a2, a3);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DAD714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_TableCellSelection(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAD7C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_100DC5208(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = sub_100DAD894(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for CRLProto_TableCellSelection(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DAD894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_TableCellSelection(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DADAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_100DADB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20200, type metadata accessor for CRLProto_TableCellSelection, "y;8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DADC1C(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A20048, type metadata accessor for CRLProto_TableCellSelection, "a;8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DADC88(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A20048, type metadata accessor for CRLProto_TableCellSelection, "a;8");

  return Message.hash(into:)();
}

uint64_t sub_100DADD08()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD82B8);
  sub_1005EB3DC(v0, qword_101AD82B8);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "range";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "row";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "col";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DADF38()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD82D0);
  sub_1005EB3DC(v0, qword_101AD82D0);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mostSpecificItemSelectionUUIDs";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isGroup";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "textSelection";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tableCellSelection";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAE180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_100DAE2CC(a1, v5, a2, a3);
        }

        else if (result == 4)
        {
          sub_100DAE380(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        type metadata accessor for CRLProto_Data(0);
        sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DAE2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_PersistableSelectionPath(0);
  type metadata accessor for CRLProto_TextSelection(0);
  sub_100DBA678(&qword_101A20068, type metadata accessor for CRLProto_TextSelection, byte_1014B4BA8);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAE380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_PersistableSelectionPath(0);
  type metadata accessor for CRLProto_TableCellSelection(0);
  sub_100DBA678(&qword_101A20048, type metadata accessor for CRLProto_TableCellSelection, "a;8");
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAE434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CRLProto_Data(0), sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (v3[8] != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      result = sub_100DAE570(v3, a1, a2, a3);
      if (!v4)
      {
        sub_100DAE780(v3, a1, a2, a3);
        type metadata accessor for CRLProto_PersistableSelectionPath(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_100DAE570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019FC398, qword_1014771D0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_TextSelection(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PersistableSelectionPath(0);
  sub_10000BE14(a1 + *(v12 + 28), v7, &qword_1019FC398, qword_1014771D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019FC398, qword_1014771D0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_TextSelection);
  sub_100DBA678(&qword_101A20068, type metadata accessor for CRLProto_TextSelection, byte_1014B4BA8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_TextSelection);
}

uint64_t sub_100DAE780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019FC390, &unk_1014771C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_TableCellSelection(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_PersistableSelectionPath(0);
  sub_10000BE14(a1 + *(v12 + 32), v7, &qword_1019FC390, &unk_1014771C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019FC390, &unk_1014771C0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_TableCellSelection);
  sub_100DBA678(&qword_101A20048, type metadata accessor for CRLProto_TableCellSelection, "a;8");
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_TableCellSelection);
}

uint64_t sub_100DAE990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for CRLProto_TextSelection(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for CRLProto_TableCellSelection(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_100DAEAB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20210, type metadata accessor for CRLProto_PersistableSelectionPath, "\t=8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAEB58(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019FC3A8, type metadata accessor for CRLProto_PersistableSelectionPath, byte_1014B4888);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAEBC4(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_1019FC3A8, type metadata accessor for CRLProto_PersistableSelectionPath, byte_1014B4888);

  return Message.hash(into:)();
}

uint64_t sub_100DAEC44()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD82E8);
  sub_1005EB3DC(v0, qword_101AD82E8);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "presenceUuidData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeStamp";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "persistableSelectionPathData";
  *(v11 + 8) = 28;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAEE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_CollaboratorCursor);
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 1:
        sub_100DAEF20(v11, a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_100DAEF20(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_CollaboratorCursor(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAEFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DAF0A4(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_CollaboratorCursor, 3);
    type metadata accessor for CRLProto_CollaboratorCursor(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DAF0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_CollaboratorCursor(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DAF2B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_Data(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 28)];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_100DAF3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20228, type metadata accessor for CRLProto_CollaboratorCursor, "q>8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAF464(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A11F80, type metadata accessor for CRLProto_CollaboratorCursor, "Y>8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAF4D0(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A11F80, type metadata accessor for CRLProto_CollaboratorCursor, "Y>8");

  return Message.hash(into:)();
}

uint64_t sub_100DAF550()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8300);
  sub_1005EB3DC(v0, qword_101AD8300);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "presenceUuidData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "colorIndex";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAF718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100DAF7A8(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t sub_100DAF7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_CollaboratorCursorColor(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DAF85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DAF8F8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_CollaboratorCursorColor(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DAF8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_CollaboratorCursorColor(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DAFB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20230, type metadata accessor for CRLProto_CollaboratorCursorColor, byte_1014B4580);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DAFBF4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019F67C8, type metadata accessor for CRLProto_CollaboratorCursorColor, byte_1014B45B8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DAFC60(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_1019F67C8, type metadata accessor for CRLProto_CollaboratorCursorColor, byte_1014B45B8);

  return Message.hash(into:)();
}

uint64_t sub_100DAFCE0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8318);
  sub_1005EB3DC(v0, qword_101AD8318);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146D2A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ckUserIdentityData";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "presenceUuidData";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timeStamp";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isFollowable";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DAFF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 4)
      {
        type metadata accessor for CRLProto_RealTimeEnter(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1)
    {
      sub_100DB0034(v11, a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_RealTimeEnter);
    }
  }

  return result;
}

uint64_t sub_100DB0034(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_RealTimeEnter(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB00E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB01D0(v3, a1, a2, a3);
  if (!v4)
  {
    sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_RealTimeEnter, 2);
    v9.n128_u64[0] = *v3;
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100DB03E0(v3, v9, a1, a2, a3);
    type metadata accessor for CRLProto_RealTimeEnter(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB01D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_RealTimeEnter(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB03E0(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for CRLProto_RealTimeEnter(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DB0458@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  result = (v6)(&a2[a1[7]], 1, 1, v5);
  a2[a1[8]] = 2;
  return result;
}

uint64_t sub_100DB055C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20238, type metadata accessor for CRLProto_RealTimeEnter, "AA8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB05FC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A0B5E8, type metadata accessor for CRLProto_RealTimeEnter, ")A8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB0668(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A0B5E8, type metadata accessor for CRLProto_RealTimeEnter, ")A8");

  return Message.hash(into:)();
}

uint64_t sub_100DB0774(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20240, type metadata accessor for CRLProto_RealTimeLeave, byte_1014B42B0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB0814(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019F67E0, type metadata accessor for CRLProto_RealTimeLeave, byte_1014B42E8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB0880(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_1019F67E0, type metadata accessor for CRLProto_RealTimeLeave, byte_1014B42E8);

  return Message.hash(into:)();
}

uint64_t sub_100DB092C()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8348);
  sub_1005EB3DC(v0, qword_101AD8348);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1014A04A0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "persistenceType";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "minRequiredVersion";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "childObjectReferences";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "assetReferences";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "dataDirectoryEntries";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "objectOptions";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "minRequiredVersionForGoodEnoughFidelity";
  *(v19 + 1) = 39;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "minRequiredVersionForFullFidelity";
  *(v21 + 1) = 33;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "persistenceSubType";
  *(v22 + 8) = 18;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB0CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 4)
      {
        break;
      }

      if (result <= 6)
      {
        if (result == 5)
        {
          v6 = v3;
          type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
          sub_100DBA678(&qword_101A1FF58, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry, "1H8");
LABEL_5:
          v3 = v6;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_6;
        }

        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else
      {
        if (result == 7 || result == 8)
        {
          goto LABEL_25;
        }

        if (result == 9)
        {
          type metadata accessor for CRLProto_ObjectInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result > 2)
    {
      v6 = v3;
      if (result == 3)
      {
        type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference(0);
        sub_100DBA678(&qword_101A1FF98, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference, "aE8");
      }

      else
      {
        type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
        sub_100DBA678(&qword_101A1FF78, type metadata accessor for CRLProto_ObjectInfo.AssetReference, byte_1014B3EB0);
      }

      goto LABEL_5;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      goto LABEL_6;
    }

    if (result != 2)
    {
      goto LABEL_6;
    }

LABEL_25:
    dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100DB0F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3)
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(*(v3 + 8) + 16))
  {
    result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  v9 = v4;
  if (*(*(v3 + 16) + 16))
  {
    type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference(0);
    sub_100DBA678(&qword_101A1FF98, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference, "aE8");
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v9 = 0;
  }

  if (*(*(v3 + 24) + 16))
  {
    type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
    sub_100DBA678(&qword_101A1FF78, type metadata accessor for CRLProto_ObjectInfo.AssetReference, byte_1014B3EB0);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v9)
    {
      return result;
    }

    v9 = 0;
  }

  if (*(*(v3 + 32) + 16))
  {
    type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
    sub_100DBA678(&qword_101A1FF58, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry, "1H8");
    v10 = v9;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v9)
    {
      return result;
    }

    if (!*(v3 + 40))
    {
      goto LABEL_17;
    }

LABEL_16:
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v10)
    {
      return result;
    }

    goto LABEL_17;
  }

  v10 = v9;
  if (*(v3 + 40))
  {
    goto LABEL_16;
  }

LABEL_17:
  if (!*(*(v3 + 48) + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v10))
  {
    if (!*(*(v3 + 56) + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v10))
    {
      result = sub_100DB11C0(v3, a1, a2, a3);
      if (!v10)
      {
        type metadata accessor for CRLProto_ObjectInfo(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_100DB11C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CRLProto_ObjectInfo(0);
  if ((*(a1 + *(result + 52) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100DB1238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  *(a2 + 16) = _swiftEmptyArrayStorage;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = 0;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 56) = _swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 52);
  *v5 = 0;
  *(v5 + 4) = 1;
  return result;
}

uint64_t sub_100DB12B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DB1328(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DB13CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20248, type metadata accessor for CRLProto_ObjectInfo, byte_1014B4148);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB146C(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019F69B0, type metadata accessor for CRLProto_ObjectInfo, byte_1014B4180);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB14D8(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_1019F69B0, type metadata accessor for CRLProto_ObjectInfo, byte_1014B4180);

  return Message.hash(into:)();
}

void sub_100DB1558()
{
  v0._countAndFlagsBits = 0xD000000000000015;
  v0._object = 0x80000001015A21F0;
  String.append(_:)(v0);
  qword_101AD8360 = 0xD000000000000013;
  *algn_101AD8368 = 0x80000001015A2150;
}

uint64_t sub_100DB15DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100DB67B4(a1, v7, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_100DB1660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128))
{
  result = sub_100DB686C(v4, a1, a2, a3, a4);
  if (!v5)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB16BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_100DB17B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20250, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference, "yE8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB1854(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FF98, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference, "aE8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB18C0(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A1FF98, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference, "aE8");

  return Message.hash(into:)();
}

void sub_100DB196C()
{
  v0._countAndFlagsBits = 0x655274657373412ELL;
  v0._object = 0xEF65636E65726566;
  String.append(_:)(v0);
  qword_101AD8388 = 0xD000000000000013;
  unk_101AD8390 = 0x80000001015A2150;
}

uint64_t sub_100DB19E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8398);
  sub_1005EB3DC(v0, qword_101AD8398);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "assetUUID";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB1BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      sub_100DB1C3C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_100DB1C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB1CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    result = sub_100DB1D9C(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DB1D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB1FAC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100DB208C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20258, type metadata accessor for CRLProto_ObjectInfo.AssetReference, byte_1014B3E78);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB212C(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FF78, type metadata accessor for CRLProto_ObjectInfo.AssetReference, byte_1014B3EB0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB2198(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A1FF78, type metadata accessor for CRLProto_ObjectInfo.AssetReference, byte_1014B3EB0);

  return Message.hash(into:)();
}

void sub_100DB2218()
{
  v0._object = 0x80000001015A2220;
  v0._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v0);
  qword_101AD83B0 = 0xD000000000000013;
  *algn_101AD83B8 = 0x80000001015A2150;
}

uint64_t sub_100DB2288()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD83C0);
  sub_1005EB3DC(v0, qword_101AD83C0);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "size";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB2450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t sub_100DB24DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
  {
    if (!v3[2] || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DB2590@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  return UnknownStorage.init()();
}

uint64_t sub_100DB2614(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20260, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry, "IH8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB26B4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FF58, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry, "1H8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB2720(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A1FF58, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry, "1H8");

  return Message.hash(into:)();
}

uint64_t sub_100DB279C(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DB2868()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD83D8);
  sub_1005EB3DC(v0, qword_101AD83D8);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rootObjectUUID";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minRequiredVersion";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "assetInfos";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB2A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
          sub_100DBA678(&qword_101A1FF20, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo, byte_1014B3A78);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
          break;
        case 1:
          sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_ObjectMetadata);
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DB2BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_ObjectMetadata, 1);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)();
    }

    if (*(v3[1] + 16))
    {
      type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
      sub_100DBA678(&qword_101A1FF20, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo, byte_1014B3A78);
      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_ObjectMetadata(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB2CEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 1) = _swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100DB2DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20268, type metadata accessor for CRLProto_ObjectMetadata, byte_1014B3BA8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB2E64(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A0FE58, type metadata accessor for CRLProto_ObjectMetadata, byte_1014B3BE0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB2ED0(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A0FE58, type metadata accessor for CRLProto_ObjectMetadata, byte_1014B3BE0);

  return Message.hash(into:)();
}

void sub_100DB2F50()
{
  v0._countAndFlagsBits = 0x6E4974657373412ELL;
  v0._object = 0xEA00000000006F66;
  String.append(_:)(v0);
  qword_101AD83F0 = 0xD000000000000017;
  *algn_101AD83F8 = 0x80000001015A2240;
}

uint64_t sub_100DB2FC0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8400);
  sub_1005EB3DC(v0, qword_101AD8400);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "assetUUID";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "filename";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "size";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB31D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
        break;
      case 1:
        sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
        break;
    }
  }

  return result;
}

uint64_t sub_100DB3298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo, 1);
  if (!v4)
  {
    v6 = v3[1];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    if (v3[2])
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB3380@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100DB3434(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

uint64_t sub_100DB34C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20270, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo, byte_1014B3A40);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB3564(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FF20, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo, byte_1014B3A78);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB35D0(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A1FF20, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo, byte_1014B3A78);

  return Message.hash(into:)();
}

uint64_t sub_100DB3650()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8418);
  sub_1005EB3DC(v0, qword_101AD8418);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "followerUuidData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hostUuidData";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB3818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100DB67B4(a1, v5, a2, a3, type metadata accessor for CRLProto_StartOrEndFollow);
    }

    else if (result == 2)
    {
      sub_100DB38C0(v11, a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_100DB38C0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_StartOrEndFollow(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB3974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB686C(v3, a1, a2, a3, type metadata accessor for CRLProto_StartOrEndFollow);
  if (!v4)
  {
    sub_100DB39F8(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB39F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_StartOrEndFollow(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB3C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CRLProto_Data(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_100DB3D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20278, type metadata accessor for CRLProto_StartOrEndFollow, byte_1014B38D8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB3DAC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A130F8, type metadata accessor for CRLProto_StartOrEndFollow, "iL8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB3E18(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A130F8, type metadata accessor for CRLProto_StartOrEndFollow, "iL8");

  return Message.hash(into:)();
}

uint64_t sub_100DB3E98()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8430);
  sub_1005EB3DC(v0, qword_101AD8430);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146CA70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "presenceUuidData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "viewScale";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "visibleRectOrigin";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "visibleRectSize";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "timestamp";
  *(v15 + 8) = 9;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_FollowViewportState);
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_100DB4240(v11, a1, v5, a2, a3);
          break;
        case 4:
          sub_100DB42F4(v11, a1, v5, a2, a3);
          break;
        case 5:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }
    }
  }

  return result;
}

uint64_t sub_100DB4240(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_FollowViewportState(0);
  type metadata accessor for CRLProto_Point(0);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point, byte_1014B55A8);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB42F4(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_FollowViewportState(0);
  type metadata accessor for CRLProto_Size(0);
  sub_100DBA678(&qword_101A10308, type metadata accessor for CRLProto_Size, "918");
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB43A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_FollowViewportState, 1);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    sub_100DB44B0(v3, a1, a2, a3);
    sub_100DB46C0(v3, a1, a2, a3);
    if (*(v3 + 8))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_FollowViewportState(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB44B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A15CE8, &qword_1014AAE20);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Point(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_FollowViewportState(0);
  sub_10000BE14(a1 + *(v12 + 32), v7, &qword_101A15CE8, &qword_1014AAE20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A15CE8, &qword_1014AAE20);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Point);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point, byte_1014B55A8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Point);
}

uint64_t sub_100DB46C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A15CF0, &unk_1014A1050);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Size(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_FollowViewportState(0);
  sub_10000BE14(a1 + *(v12 + 36), v7, &qword_101A15CF0, &unk_1014A1050);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A15CF0, &unk_1014A1050);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Size);
  sub_100DBA678(&qword_101A10308, type metadata accessor for CRLProto_Size, "918");
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Size);
}

uint64_t sub_100DB48D0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = type metadata accessor for CRLProto_Data(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[8];
  v7 = type metadata accessor for CRLProto_Point(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[9];
  v9 = type metadata accessor for CRLProto_Size(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_100DB4A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20280, type metadata accessor for CRLProto_FollowViewportState, byte_1014B3770);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB4AD4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A15CF8, type metadata accessor for CRLProto_FollowViewportState, byte_1014B37A8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB4B40(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A15CF8, type metadata accessor for CRLProto_FollowViewportState, byte_1014B37A8);

  return Message.hash(into:)();
}

uint64_t sub_100DB4BC0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8448);
  sub_1005EB3DC(v0, qword_101AD8448);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hostUuidData";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB4D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_100DB4E18(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }
  }

  return result;
}

uint64_t sub_100DB4E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_RefuseOrEndFollow(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB4ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB4F68(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_RefuseOrEndFollow(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB4F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_RefuseOrEndFollow(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB51C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20290, type metadata accessor for CRLProto_RefuseOrEndFollow, "QO8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB5264(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FED0, type metadata accessor for CRLProto_RefuseOrEndFollow, "9O8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB52D0(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A1FED0, type metadata accessor for CRLProto_RefuseOrEndFollow, "9O8");

  return Message.hash(into:)();
}

uint64_t sub_100DB5350()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8460);
  sub_1005EB3DC(v0, qword_101AD8460);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101478A90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ownerUuidData";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "manipulationState";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "viewScale";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "unscaledContentOffset";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "isAutoscrolling";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "timestamp";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB561C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          sub_100DB57F4(a1, v5, a2, a3);
          break;
        case 5:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 6:
LABEL_15:
          dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          sub_100DB573C(a1, v5, a2, a3, type metadata accessor for CRLProto_CopresenceViewportState);
          break;
        case 2:
          goto LABEL_15;
        case 3:
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          break;
      }
    }
  }
}

uint64_t sub_100DB573C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB57F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_CopresenceViewportState(0);
  type metadata accessor for CRLProto_Point(0);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point, byte_1014B55A8);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB58A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB59E4(v3, a1, a2, a3, type metadata accessor for CRLProto_CopresenceViewportState, 1);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    if (*(v3 + 8))
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    sub_100DB5BFC(v3, a1, a2, a3);
    if (*(v3 + 12) == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    if (*(v3 + 16))
    {
      dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    }

    type metadata accessor for CRLProto_CopresenceViewportState(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB59E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), uint64_t a6)
{
  v18[2] = a6;
  v18[3] = a3;
  v18[5] = a4;
  v18[1] = a2;
  v8 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for CRLProto_Data(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0, v13);
  sub_10000BE14(a1 + *(v16 + 36), v10, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000CAAC(v10, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v10, v15, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v15, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB5BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_101A15CE8, &qword_1014AAE20);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Point(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_CopresenceViewportState(0);
  sub_10000BE14(a1 + *(v12 + 40), v7, &qword_101A15CE8, &qword_1014AAE20);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_101A15CE8, &qword_1014AAE20);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Point);
  sub_100DBA678(&qword_101A10318, type metadata accessor for CRLProto_Point, byte_1014B55A8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Point);
}

uint64_t sub_100DB5E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for CRLProto_Data(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for CRLProto_Point(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_100DB5F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DB5F78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DB601C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A20298, type metadata accessor for CRLProto_CopresenceViewportState, byte_1014B34A0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB60BC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FEB0, type metadata accessor for CRLProto_CopresenceViewportState, byte_1014B34D8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB6128(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A1FEB0, type metadata accessor for CRLProto_CopresenceViewportState, byte_1014B34D8);

  return Message.hash(into:)();
}

uint64_t sub_100DB6234(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202A0, type metadata accessor for CRLProto_BoardItemIdentifier, "!R8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB62D4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019F67D8, type metadata accessor for CRLProto_BoardItemIdentifier, "\tR8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB6340(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_1019F67D8, type metadata accessor for CRLProto_BoardItemIdentifier, "\tR8");

  return Message.hash(into:)();
}

uint64_t sub_100DB6478(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202A8, type metadata accessor for CRLProto_BoardIdentifier, byte_1014B31D0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB6518(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FE78, type metadata accessor for CRLProto_BoardIdentifier, "qS8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB6584(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A1FE78, type metadata accessor for CRLProto_BoardIdentifier, "qS8");

  return Message.hash(into:)();
}

uint64_t sub_100DB6648(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  sub_10061655C(v7, a2);
  sub_1005EB3DC(v7, a2);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v8 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10146C6B0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = enum case for _NameMap.NameDescription.same(_:);
  v13 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB67B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB686C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for CRLProto_Data(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0, v12);
  sub_10000BE14(a1 + *(v15 + 20), v9, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_10000CAAC(v9, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v9, v14, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v14, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB6A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100DB6B04(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_100DB6BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202B0, type metadata accessor for CRLProto_FolderIdentifier, byte_1014B3068);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB6C64(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FE58, type metadata accessor for CRLProto_FolderIdentifier, byte_1014B30A0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB6CD0(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A1FE58, type metadata accessor for CRLProto_FolderIdentifier, byte_1014B30A0);

  return Message.hash(into:)();
}

uint64_t sub_100DB6D7C()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD84C0);
  sub_1005EB3DC(v0, qword_101AD84C0);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "payloadTypeValue";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "payload";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB6F44(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB6FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB7208@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100DB733C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202B8, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord, "YV8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB73DC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A137B0, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord, "AV8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB7448(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A137B0, type metadata accessor for CRLProto_RealTimeOpaqueChangeRecord, "AV8");

  return Message.hash(into:)();
}

uint64_t sub_100DB74F4()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD84D8);
  sub_1005EB3DC(v0, qword_101AD84D8);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "opaqueChangeRecordDatas";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB76BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CRLProto_Data(0);
        sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100DB77B8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (!*v4 || (result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)(), !v5))
  {
    if (!*(v4[1] + 16) || (type metadata accessor for CRLProto_Data(0), sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
    {
      type metadata accessor for CRLProto_RealTimeMessage(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DB78BC@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = _swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_100DB7904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DB7978(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DB7A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202C0, type metadata accessor for CRLProto_RealTimeMessage, byte_1014B2D98);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB7ABC(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A137B8, type metadata accessor for CRLProto_RealTimeMessage, byte_1014B2DD0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB7B28(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A137B8, type metadata accessor for CRLProto_RealTimeMessage, byte_1014B2DD0);

  return Message.hash(into:)();
}

uint64_t sub_100DB7BA4(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_10066C774(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DB7C5C()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD84F0);
  sub_1005EB3DC(v0, qword_101AD84F0);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encryptedCKRecordData";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB7E24(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_100DB7ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_EncryptedRealTimeMessage(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB7F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t), void (*a6)(void))
{
  if (!*v6 || (result = a4(*v6, 1, a2, a3), !v7))
  {
    result = a5(v6, a1, a2, a3);
    if (!v7)
    {
      a6(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DB803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_EncryptedRealTimeMessage(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB82FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202C8, type metadata accessor for CRLProto_EncryptedRealTimeMessage, ")Y8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB839C(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019F7050, type metadata accessor for CRLProto_EncryptedRealTimeMessage, byte_1014B2C68);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB8408(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_1019F7050, type metadata accessor for CRLProto_EncryptedRealTimeMessage, byte_1014B2C68);

  return Message.hash(into:)();
}

uint64_t sub_100DB84B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8508);
  sub_1005EB3DC(v0, qword_101AD8508);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10146CA70;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "chainID";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "index";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "lastIndex";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "encrypted";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "data";
  *(v14 + 8) = 4;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB873C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_100DB883C(v11, a1, v5, a2, a3);
      }

      else if (result == 2)
      {
LABEL_12:
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_12;
        case 4:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 5:
          sub_100DB573C(a1, v5, a2, a3, type metadata accessor for CRLProto_ChunkedRealTimeMessage);
          break;
      }
    }
  }
}

uint64_t sub_100DB883C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CRLProto_ChunkedRealTimeMessage(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB88F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB8A08(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + 4))
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (*(v3 + 8) == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    sub_100DB59E4(v3, a1, a2, a3, type metadata accessor for CRLProto_ChunkedRealTimeMessage, 5);
    type metadata accessor for CRLProto_ChunkedRealTimeMessage(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB8A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_ChunkedRealTimeMessage(0);
  sub_10000BE14(a1 + *(v12 + 32), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB8C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for CRLProto_Data(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 36);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_100DB8CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DB8D70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DB8E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202D0, type metadata accessor for CRLProto_ChunkedRealTimeMessage, byte_1014B2AC8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB8EB4(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A0BB88, type metadata accessor for CRLProto_ChunkedRealTimeMessage, "yZ8");

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB8F20(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A0BB88, type metadata accessor for CRLProto_ChunkedRealTimeMessage, "yZ8");

  return Message.hash(into:)();
}

uint64_t sub_100DB8FA0()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8520);
  sub_1005EB3DC(v0, qword_101AD8520);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146BDE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB9168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
      sub_100DB91F8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_100DB91F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_RealTimeMessageContainer(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB92AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = sub_100DB9348(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for CRLProto_RealTimeMessageContainer(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_100DB9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_Data(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_RealTimeMessageContainer(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DB9558@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_Data(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_100DB9628(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202D8, type metadata accessor for CRLProto_RealTimeMessageContainer, byte_1014B2960);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DB96C8(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_101A1FDD8, type metadata accessor for CRLProto_RealTimeMessageContainer, byte_1014B2998);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100DB9734(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_101A1FDD8, type metadata accessor for CRLProto_RealTimeMessageContainer, byte_1014B2998);

  return Message.hash(into:)();
}

uint64_t sub_100DB97B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_10061655C(v0, qword_101AD8538);
  sub_1005EB3DC(v0, qword_101AD8538);
  sub_1005B981C(&qword_101A20180, &qword_1014B58F0);
  v1 = (sub_1005B981C(&qword_101A20188, &qword_1014B58F8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "boardIdentifier";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "data";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100DB99C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_100DB9B40(a1, v5, a2, a3, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord);
        break;
      case 2:
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        break;
      case 1:
        sub_100DB9A8C(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_100DB9A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord(0);
  type metadata accessor for CRLProto_BoardIdentifier(0);
  sub_100DBA678(&qword_101A1FE78, type metadata accessor for CRLProto_BoardIdentifier, "qS8");
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB9B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for CRLProto_Data(0);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t sub_100DB9BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_100DB9CC8(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    sub_100DB9ED8(v3, a1, a2, a3, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord, 3);
    type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100DB9CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_1005B981C(&qword_1019FC100, &qword_101476D98);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CRLProto_BoardIdentifier(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord(0);
  sub_10000BE14(a1 + *(v12 + 24), v7, &qword_1019FC100, &qword_101476D98);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_10000CAAC(v7, &qword_1019FC100, &qword_101476D98);
  }

  sub_100DC50EC(v7, v11, type metadata accessor for CRLProto_BoardIdentifier);
  sub_100DBA678(&qword_101A1FE78, type metadata accessor for CRLProto_BoardIdentifier, "qS8");
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v11, type metadata accessor for CRLProto_BoardIdentifier);
}

uint64_t sub_100DB9ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), uint64_t a6)
{
  v18[2] = a6;
  v18[3] = a3;
  v18[5] = a4;
  v18[1] = a2;
  v8 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for CRLProto_Data(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0, v13);
  sub_10000BE14(a1 + *(v16 + 28), v10, &qword_1019F67C0, &unk_10146F3E0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10000CAAC(v10, &qword_1019F67C0, &unk_10146F3E0);
  }

  sub_100DC50EC(v10, v15, type metadata accessor for CRLProto_Data);
  sub_100DBA678(&qword_101A20160, type metadata accessor for CRLProto_Data, byte_1014B5878);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100DC5154(v15, type metadata accessor for CRLProto_Data);
}

uint64_t sub_100DBA0F0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for CRLProto_BoardIdentifier(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = *(a1 + 28);
  v7 = type metadata accessor for CRLProto_Data(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a2[v6], 1, 1, v7);
}

uint64_t sub_100DBA1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100DBA250(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100DBA2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100DBA678(&qword_101A202E0, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord, "a]8");

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100DBA394@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = sub_1005EB3DC(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100DBA430(uint64_t a1)
{
  v2 = sub_100DBA678(&qword_1019FC108, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord, "I]8");

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_100DBA49C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100DBA4F4(uint64_t a1, uint64_t a2)
{
  sub_100DBA678(&qword_1019FC108, type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord, "I]8");

  return Message.hash(into:)();
}

Swift::Int sub_100DBA570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100DBA678(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100DBD170(_DWORD *a1, _DWORD *a2)
{
  v47 = a2;
  v3 = type metadata accessor for CRLProto_Data(0);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v5 - 8);
  v40 = &v38 - v6;
  v41 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  __chkstk_darwin(v41);
  v45 = &v38 - v7;
  v8 = type metadata accessor for CRLProto_BoardIdentifier(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019FC100, &qword_101476D98);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_1005B981C(&qword_101A202E8, &qword_1014B5950);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v38 - v17;
  v42 = type metadata accessor for CRLProto_RealTimeBoardAuxiliaryChangeRecord(0);
  v19 = *(v42 + 24);
  v20 = *(v16 + 56);
  v46 = a1;
  sub_10000BE14(a1 + v19, v18, &qword_1019FC100, &qword_101476D98);
  v21 = v47;
  sub_10000BE14(v47 + v19, &v18[v20], &qword_1019FC100, &qword_101476D98);
  v22 = *(v9 + 48);
  if (v22(v18, 1, v8) == 1)
  {
    if (v22(&v18[v20], 1, v8) == 1)
    {
      sub_10000CAAC(v18, &qword_1019FC100, &qword_101476D98);
      goto LABEL_9;
    }

LABEL_6:
    v23 = &qword_101A202E8;
    v24 = &qword_1014B5950;
    v25 = v18;
LABEL_7:
    sub_10000CAAC(v25, v23, v24);
    goto LABEL_20;
  }

  sub_10000BE14(v18, v14, &qword_1019FC100, &qword_101476D98);
  if (v22(&v18[v20], 1, v8) == 1)
  {
    sub_100DC5154(v14, type metadata accessor for CRLProto_BoardIdentifier);
    goto LABEL_6;
  }

  sub_100DC50EC(&v18[v20], v11, type metadata accessor for CRLProto_BoardIdentifier);
  v26 = sub_100DC4A98(v14, v11, type metadata accessor for CRLProto_BoardIdentifier);
  sub_100DC5154(v11, type metadata accessor for CRLProto_BoardIdentifier);
  sub_100DC5154(v14, type metadata accessor for CRLProto_BoardIdentifier);
  sub_10000CAAC(v18, &qword_1019FC100, &qword_101476D98);
  if ((v26 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (*v46 != *v21)
  {
    goto LABEL_20;
  }

  v27 = *(v42 + 28);
  v28 = *(v41 + 48);
  v29 = v45;
  sub_10000BE14(v46 + v27, v45, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(v21 + v27, v29 + v28, &qword_1019F67C0, &unk_10146F3E0);
  v30 = v44;
  v31 = *(v43 + 48);
  if (v31(v29, 1, v44) != 1)
  {
    v33 = v40;
    sub_10000BE14(v29, v40, &qword_1019F67C0, &unk_10146F3E0);
    if (v31(v29 + v28, 1, v30) != 1)
    {
      v34 = v29 + v28;
      v35 = v39;
      sub_100DC50EC(v34, v39, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v33, *(v33 + 8), *v35, *(v35 + 8)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v36 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v35, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v29, &qword_1019F67C0, &unk_10146F3E0);
        if (v36)
        {
          goto LABEL_13;
        }

LABEL_20:
        v32 = 0;
        return v32 & 1;
      }

      sub_100DC5154(v35, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
      v23 = &qword_1019F67C0;
      v24 = &unk_10146F3E0;
      goto LABEL_17;
    }

    sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
LABEL_16:
    v23 = &qword_1019F6CA0;
    v24 = &qword_10146FA78;
LABEL_17:
    v25 = v29;
    goto LABEL_7;
  }

  if (v31(v29 + v28, 1, v30) != 1)
  {
    goto LABEL_16;
  }

  sub_10000CAAC(v29, &qword_1019F67C0, &unk_10146F3E0);
LABEL_13:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v32 & 1;
}

uint64_t sub_100DBD83C(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v22 = type metadata accessor for CRLProto_RealTimeMessageContainer(0);
  v23 = a2;
  v14 = *(v22 + 24);
  v15 = *(v11 + 48);
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(v23 + v14, &v13[v15], &qword_1019F67C0, &unk_10146F3E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v10, &qword_1019F67C0, &unk_10146F3E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_100DC50EC(&v13[v15], v7, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v10, *(v10 + 1), *v7, *(v7 + 1)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v7, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
        if (v21)
        {
          goto LABEL_5;
        }

LABEL_10:
        v17 = 0;
        return v17 & 1;
      }

      sub_100DC5154(v7, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
      v18 = &qword_1019F67C0;
      v19 = &unk_10146F3E0;
LABEL_9:
      sub_10000CAAC(v13, v18, v19);
      goto LABEL_10;
    }

    sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
LABEL_8:
    v18 = &qword_1019F6CA0;
    v19 = &qword_10146FA78;
    goto LABEL_9;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
LABEL_5:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t sub_100DBDC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_TableCellSelection(0);
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1005B981C(&qword_1019FC390, &unk_1014771C0);
  __chkstk_darwin(v7 - 8);
  v45 = (&v41 - v8);
  v46 = sub_1005B981C(&qword_101A20218, &qword_1014B5928);
  __chkstk_darwin(v46);
  v10 = &v41 - v9;
  v11 = type metadata accessor for CRLProto_TextSelection(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1005B981C(&qword_1019FC398, qword_1014771D0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v41 - v16);
  v18 = sub_1005B981C(&qword_101A20220, &unk_1014B5930);
  __chkstk_darwin(v18);
  v20 = &v41 - v19;
  if ((sub_10066C774(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_17;
  }

  v43 = v10;
  v41 = v6;
  v42 = type metadata accessor for CRLProto_PersistableSelectionPath(0);
  v21 = *(v42 + 28);
  v22 = *(v18 + 48);
  v44 = a1;
  sub_10000BE14(a1 + v21, v20, &qword_1019FC398, qword_1014771D0);
  v23 = a2 + v21;
  v24 = a2;
  sub_10000BE14(v23, &v20[v22], &qword_1019FC398, qword_1014771D0);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) != 1)
  {
    sub_10000BE14(v20, v17, &qword_1019FC398, qword_1014771D0);
    if (v25(&v20[v22], 1, v11) != 1)
    {
      sub_100DC50EC(&v20[v22], v14, type metadata accessor for CRLProto_TextSelection);
      v29 = sub_100DC335C(v17, v14);
      sub_100DC5154(v14, type metadata accessor for CRLProto_TextSelection);
      sub_100DC5154(v17, type metadata accessor for CRLProto_TextSelection);
      sub_10000CAAC(v20, &qword_1019FC398, qword_1014771D0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    sub_100DC5154(v17, type metadata accessor for CRLProto_TextSelection);
LABEL_8:
    v26 = &qword_101A20220;
    v27 = &unk_1014B5930;
    v28 = v20;
LABEL_16:
    sub_10000CAAC(v28, v26, v27);
    goto LABEL_17;
  }

  if (v25(&v20[v22], 1, v11) != 1)
  {
    goto LABEL_8;
  }

  sub_10000CAAC(v20, &qword_1019FC398, qword_1014771D0);
LABEL_10:
  v30 = v43;
  v31 = *(v42 + 32);
  v32 = *(v46 + 48);
  sub_10000BE14(v44 + v31, v43, &qword_1019FC390, &unk_1014771C0);
  sub_10000BE14(v24 + v31, v30 + v32, &qword_1019FC390, &unk_1014771C0);
  v33 = v48;
  v34 = *(v47 + 48);
  if (v34(v30, 1, v48) == 1)
  {
    if (v34(v30 + v32, 1, v33) == 1)
    {
      sub_10000CAAC(v30, &qword_1019FC390, &unk_1014771C0);
LABEL_20:
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v36 & 1;
    }

    goto LABEL_15;
  }

  v35 = v45;
  sub_10000BE14(v30, v45, &qword_1019FC390, &unk_1014771C0);
  if (v34(v30 + v32, 1, v33) == 1)
  {
    sub_100DC5154(v35, type metadata accessor for CRLProto_TableCellSelection);
LABEL_15:
    v26 = &qword_101A20218;
    v27 = &qword_1014B5928;
    v28 = v30;
    goto LABEL_16;
  }

  v38 = v30 + v32;
  v39 = v41;
  sub_100DC50EC(v38, v41, type metadata accessor for CRLProto_TableCellSelection);
  v40 = sub_100DC0434(v35, v39);
  sub_100DC5154(v39, type metadata accessor for CRLProto_TableCellSelection);
  sub_100DC5154(v35, type metadata accessor for CRLProto_TableCellSelection);
  sub_10000CAAC(v30, &qword_1019FC390, &unk_1014771C0);
  if (v40)
  {
    goto LABEL_20;
  }

LABEL_17:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_100DBE27C(void *a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v6 = type metadata accessor for CRLProto_Data(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  v14 = __chkstk_darwin(v13);
  v16 = &v25 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_10;
  }

  v25 = a3(0, v14);
  v26 = a2;
  v17 = *(v25 + 24);
  v18 = *(v13 + 48);
  sub_10000BE14(a1 + v17, v16, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(v26 + v17, &v16[v18], &qword_1019F67C0, &unk_10146F3E0);
  v19 = *(v7 + 48);
  if (v19(v16, 1, v6) != 1)
  {
    sub_10000BE14(v16, v12, &qword_1019F67C0, &unk_10146F3E0);
    if (v19(&v16[v18], 1, v6) != 1)
    {
      sub_100DC50EC(&v16[v18], v9, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v12, *(v12 + 1), *v9, *(v9 + 1)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v12, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v16, &qword_1019F67C0, &unk_10146F3E0);
        if (v24)
        {
          goto LABEL_5;
        }

LABEL_10:
        v20 = 0;
        return v20 & 1;
      }

      sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v12, type metadata accessor for CRLProto_Data);
      v21 = &qword_1019F67C0;
      v22 = &unk_10146F3E0;
LABEL_9:
      sub_10000CAAC(v16, v21, v22);
      goto LABEL_10;
    }

    sub_100DC5154(v12, type metadata accessor for CRLProto_Data);
LABEL_8:
    v21 = &qword_1019F6CA0;
    v22 = &qword_10146FA78;
    goto LABEL_9;
  }

  if (v19(&v16[v18], 1, v6) != 1)
  {
    goto LABEL_8;
  }

  sub_10000CAAC(v16, &qword_1019F67C0, &unk_10146F3E0);
LABEL_5:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v20 & 1;
}

uint64_t sub_100DBE698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Point(0);
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v40 = (&v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1005B981C(&qword_101A15CE8, &qword_1014AAE20);
  __chkstk_darwin(v6 - 8);
  v41 = (&v39 - v7);
  v42 = sub_1005B981C(&qword_101A201D0, &qword_1014B5910);
  __chkstk_darwin(v42);
  v46 = &v39 - v8;
  v9 = type metadata accessor for CRLProto_Data(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v39 - v17;
  v43 = type metadata accessor for CRLProto_CopresenceViewportState(0);
  v19 = *(v43 + 36);
  v20 = *(v16 + 56);
  v48 = a1;
  sub_10000BE14(a1 + v19, v18, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(a2 + v19, &v18[v20], &qword_1019F67C0, &unk_10146F3E0);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) == 1)
  {
    if (v21(&v18[v20], 1, v9) == 1)
    {
      sub_10000CAAC(v18, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_10000BE14(v18, v14, &qword_1019F67C0, &unk_10146F3E0);
  if (v21(&v18[v20], 1, v9) == 1)
  {
    sub_100DC5154(v14, type metadata accessor for CRLProto_Data);
LABEL_13:
    v29 = &qword_1019F6CA0;
    v30 = &qword_10146FA78;
LABEL_14:
    v31 = v18;
LABEL_15:
    sub_10000CAAC(v31, v29, v30);
LABEL_16:
    v28 = 0;
    return v28 & 1;
  }

  v33 = v47;
  sub_100DC50EC(&v18[v20], v47, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v14, *(v14 + 1), *v33, *(v33 + 8)))
  {
    sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v14, type metadata accessor for CRLProto_Data);
    v29 = &qword_1019F67C0;
    v30 = &unk_10146F3E0;
    goto LABEL_14;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v14, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v18, &qword_1019F67C0, &unk_10146F3E0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  v22 = v48;
  if (*v48 != *a2 || *(v48 + 8) != *(a2 + 8))
  {
    goto LABEL_16;
  }

  v23 = *(v43 + 40);
  v24 = *(v42 + 48);
  v25 = v46;
  sub_10000BE14(v48 + v23, v46, &qword_101A15CE8, &qword_1014AAE20);
  sub_10000BE14(a2 + v23, v25 + v24, &qword_101A15CE8, &qword_1014AAE20);
  v26 = v45;
  v27 = *(v44 + 48);
  if (v27(v25, 1, v45) != 1)
  {
    v35 = v41;
    sub_10000BE14(v25, v41, &qword_101A15CE8, &qword_1014AAE20);
    if (v27(v25 + v24, 1, v26) != 1)
    {
      v36 = v25 + v24;
      v37 = v40;
      sub_100DC50EC(v36, v40, type metadata accessor for CRLProto_Point);
      if (*v35 == *v37 && v35[1] == v37[1])
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v37, type metadata accessor for CRLProto_Point);
        if (v38)
        {
          sub_100DC5154(v35, type metadata accessor for CRLProto_Point);
          goto LABEL_8;
        }
      }

      else
      {
        sub_100DC5154(v37, type metadata accessor for CRLProto_Point);
      }

      sub_100DC5154(v35, type metadata accessor for CRLProto_Point);
      v29 = &qword_101A15CE8;
      v30 = &qword_1014AAE20;
      v31 = v25;
      goto LABEL_15;
    }

    sub_100DC5154(v35, type metadata accessor for CRLProto_Point);
    goto LABEL_24;
  }

  if (v27(v25 + v24, 1, v26) != 1)
  {
LABEL_24:
    v29 = &qword_101A201D0;
    v30 = &qword_1014B5910;
    v31 = v25;
    goto LABEL_15;
  }

LABEL_8:
  sub_10000CAAC(v25, &qword_101A15CE8, &qword_1014AAE20);
  if (*(v22 + 12) != *(a2 + 12) || *(v22 + 16) != *(a2 + 16))
  {
    goto LABEL_16;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v28 & 1;
}

uint64_t sub_100DBEE40(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v24 = type metadata accessor for CRLProto_CollaboratorCursorColor(0);
  v14 = *(v24 + 24);
  v15 = *(v11 + 56);
  v26 = a1;
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(a2 + v14, &v13[v15], &qword_1019F67C0, &unk_10146F3E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10000BE14(v13, v9, &qword_1019F67C0, &unk_10146F3E0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
LABEL_8:
    v18 = &qword_1019F6CA0;
    v19 = &qword_10146FA78;
LABEL_9:
    sub_10000CAAC(v13, v18, v19);
    goto LABEL_10;
  }

  v21 = v25;
  sub_100DC50EC(&v13[v15], v25, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v9, *(v9 + 1), *v21, *(v21 + 8)))
  {
    sub_100DC5154(v21, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
    v18 = &qword_1019F67C0;
    v19 = &unk_10146F3E0;
    goto LABEL_9;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v21, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (*v26 != *a2)
  {
LABEL_10:
    v17 = 0;
    return v17 & 1;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t sub_100DBF250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v36 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v9 - 8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  __chkstk_darwin(v14);
  v40 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v41 = type metadata accessor for CRLProto_ChunkedRealTimeMessage(0);
  v19 = *(v41 + 32);
  v39 = v14;
  v20 = *(v14 + 48);
  v43 = a1;
  sub_10000BE14(a1 + v19, v18, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(a2 + v19, &v18[v20], &qword_1019F67C0, &unk_10146F3E0);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      sub_10000CAAC(v18, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_10000BE14(v18, v13, &qword_1019F67C0, &unk_10146F3E0);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
LABEL_13:
    v27 = &qword_1019F6CA0;
    v28 = &qword_10146FA78;
LABEL_14:
    v29 = v18;
    goto LABEL_15;
  }

  v31 = v42;
  sub_100DC50EC(&v18[v20], v42, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v13, *(v13 + 1), *v31, *(v31 + 8)))
  {
    sub_100DC5154(v31, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
    v27 = &qword_1019F67C0;
    v28 = &unk_10146F3E0;
    goto LABEL_14;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v31, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v18, &qword_1019F67C0, &unk_10146F3E0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if (*v43 != *a2 || *(v43 + 4) != *(a2 + 4) || *(v43 + 8) != *(a2 + 8))
  {
    goto LABEL_16;
  }

  v22 = *(v41 + 36);
  v23 = *(v39 + 48);
  v24 = v4;
  v25 = v40;
  sub_10000BE14(v43 + v22, v40, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(a2 + v22, v25 + v23, &qword_1019F67C0, &unk_10146F3E0);
  if (v21(v25, 1, v24) != 1)
  {
    v33 = v38;
    sub_10000BE14(v25, v38, &qword_1019F67C0, &unk_10146F3E0);
    if (v21((v25 + v23), 1, v24) == 1)
    {
      sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
      goto LABEL_24;
    }

    v34 = v37;
    sub_100DC50EC(v25 + v23, v37, type metadata accessor for CRLProto_Data);
    if (sub_1009F9488(*v33, *(v33 + 8), *v34, *(v34 + 8)))
    {
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100DC5154(v34, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
      sub_10000CAAC(v25, &qword_1019F67C0, &unk_10146F3E0);
      if (v35)
      {
        goto LABEL_10;
      }

LABEL_16:
      v26 = 0;
      return v26 & 1;
    }

    sub_100DC5154(v34, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
    v27 = &qword_1019F67C0;
    v28 = &unk_10146F3E0;
    v29 = v25;
LABEL_15:
    sub_10000CAAC(v29, v27, v28);
    goto LABEL_16;
  }

  if (v21((v25 + v23), 1, v24) != 1)
  {
LABEL_24:
    v27 = &qword_1019F6CA0;
    v28 = &qword_10146FA78;
    v29 = v25;
    goto LABEL_15;
  }

  sub_10000CAAC(v25, &qword_1019F67C0, &unk_10146F3E0);
LABEL_10:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v26 & 1;
}

uint64_t sub_100DBF93C(float *a1, uint64_t a2)
{
  v72 = a2;
  v3 = type metadata accessor for CRLProto_Size(0);
  v62 = *(v3 - 8);
  v63 = v3;
  __chkstk_darwin(v3);
  v58 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1005B981C(&qword_101A15CF0, &unk_1014A1050);
  __chkstk_darwin(v5 - 8);
  v59 = (&v57 - v6);
  v61 = sub_1005B981C(&qword_101A20288, &unk_1014B5940);
  __chkstk_darwin(v61);
  v64 = &v57 - v7;
  v8 = type metadata accessor for CRLProto_Point(0);
  v67 = *(v8 - 8);
  v68 = v8;
  __chkstk_darwin(v8);
  v60 = (&v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1005B981C(&qword_101A15CE8, &qword_1014AAE20);
  __chkstk_darwin(v10 - 8);
  v65 = (&v57 - v11);
  v66 = sub_1005B981C(&qword_101A201D0, &qword_1014B5910);
  __chkstk_darwin(v66);
  v69 = &v57 - v12;
  v13 = type metadata accessor for CRLProto_Data(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v57 - v18;
  v20 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v57 - v22;
  v70 = type metadata accessor for CRLProto_FollowViewportState(0);
  v71 = a1;
  v24 = *(v70 + 28);
  v25 = *(v21 + 56);
  sub_10000BE14(a1 + v24, v23, &qword_1019F67C0, &unk_10146F3E0);
  v26 = v72 + v24;
  v27 = v72;
  sub_10000BE14(v26, &v23[v25], &qword_1019F67C0, &unk_10146F3E0);
  v28 = *(v14 + 48);
  if (v28(v23, 1, v13) == 1)
  {
    if (v28(&v23[v25], 1, v13) == 1)
    {
      sub_10000CAAC(v23, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_10000BE14(v23, v19, &qword_1019F67C0, &unk_10146F3E0);
  if (v28(&v23[v25], 1, v13) == 1)
  {
    sub_100DC5154(v19, type metadata accessor for CRLProto_Data);
LABEL_13:
    v44 = &qword_1019F6CA0;
    v45 = &qword_10146FA78;
LABEL_14:
    v46 = v23;
LABEL_15:
    sub_10000CAAC(v46, v44, v45);
    goto LABEL_16;
  }

  sub_100DC50EC(&v23[v25], v16, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v19, *(v19 + 1), *v16, *(v16 + 1)))
  {
    sub_100DC5154(v16, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v19, type metadata accessor for CRLProto_Data);
    v44 = &qword_1019F67C0;
    v45 = &unk_10146F3E0;
    goto LABEL_14;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v48 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v16, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v19, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v23, &qword_1019F67C0, &unk_10146F3E0);
  if ((v48 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  v29 = v71;
  if (*v71 != *v27)
  {
LABEL_16:
    v43 = 0;
    return v43 & 1;
  }

  v30 = v69;
  v31 = v70;
  v32 = *(v70 + 32);
  v33 = *(v66 + 48);
  sub_10000BE14(v71 + v32, v69, &qword_101A15CE8, &qword_1014AAE20);
  sub_10000BE14(v27 + v32, v30 + v33, &qword_101A15CE8, &qword_1014AAE20);
  v34 = v68;
  v35 = *(v67 + 48);
  if (v35(v30, 1, v68) == 1)
  {
    if (v35(v30 + v33, 1, v34) == 1)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

  v49 = v65;
  sub_10000BE14(v30, v65, &qword_101A15CE8, &qword_1014AAE20);
  if (v35(v30 + v33, 1, v34) == 1)
  {
    sub_100DC5154(v49, type metadata accessor for CRLProto_Point);
LABEL_24:
    v44 = &qword_101A201D0;
    v45 = &qword_1014B5910;
    v46 = v30;
    goto LABEL_15;
  }

  v50 = v30 + v33;
  v51 = v60;
  sub_100DC50EC(v50, v60, type metadata accessor for CRLProto_Point);
  if (*v49 != *v51 || v49[1] != v51[1])
  {
    sub_100DC5154(v51, type metadata accessor for CRLProto_Point);
    goto LABEL_30;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v52 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v51, type metadata accessor for CRLProto_Point);
  if ((v52 & 1) == 0)
  {
LABEL_30:
    sub_100DC5154(v49, type metadata accessor for CRLProto_Point);
    v44 = &qword_101A15CE8;
    v45 = &qword_1014AAE20;
    v46 = v30;
    goto LABEL_15;
  }

  sub_100DC5154(v49, type metadata accessor for CRLProto_Point);
LABEL_7:
  sub_10000CAAC(v30, &qword_101A15CE8, &qword_1014AAE20);
  v36 = *(v31 + 36);
  v37 = *(v61 + 48);
  v38 = v64;
  sub_10000BE14(v29 + v36, v64, &qword_101A15CF0, &unk_1014A1050);
  v39 = v27 + v36;
  v40 = v38;
  sub_10000BE14(v39, v38 + v37, &qword_101A15CF0, &unk_1014A1050);
  v41 = v63;
  v42 = *(v62 + 48);
  if (v42(v38, 1, v63) == 1)
  {
    if (v42(v38 + v37, 1, v41) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

  v53 = v59;
  sub_10000BE14(v40, v59, &qword_101A15CF0, &unk_1014A1050);
  if (v42(v40 + v37, 1, v41) == 1)
  {
    sub_100DC5154(v53, type metadata accessor for CRLProto_Size);
LABEL_33:
    v44 = &qword_101A20288;
    v45 = &unk_1014B5940;
    v46 = v40;
    goto LABEL_15;
  }

  v54 = v40 + v37;
  v55 = v58;
  sub_100DC50EC(v54, v58, type metadata accessor for CRLProto_Size);
  if (*v53 != *v55 || v53[1] != v55[1])
  {
    sub_100DC5154(v55, type metadata accessor for CRLProto_Size);
    goto LABEL_39;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v55, type metadata accessor for CRLProto_Size);
  if ((v56 & 1) == 0)
  {
LABEL_39:
    sub_100DC5154(v53, type metadata accessor for CRLProto_Size);
    v44 = &qword_101A15CF0;
    v45 = &unk_1014A1050;
    v46 = v40;
    goto LABEL_15;
  }

  sub_100DC5154(v53, type metadata accessor for CRLProto_Size);
LABEL_9:
  sub_10000CAAC(v40, &qword_101A15CF0, &unk_1014A1050);
  if (*(v29 + 1) != *(v27 + 8))
  {
    goto LABEL_16;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v43 & 1;
}

uint64_t sub_100DC0434(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - v9;
  v11 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  __chkstk_darwin(v11);
  v13 = v26 - v12;
  v14 = *a1;
  v15 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v14 != v15)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (!v15)
  {
    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_19:
    v21 = 0;
    return v21 & 1;
  }

  if (v15 != 1)
  {
    if (v14 == 2)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  if (v14 != 1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v16 = type metadata accessor for CRLProto_TableCellSelection(0);
  v17 = a1;
  v26[0] = v16;
  v26[1] = a1;
  v18 = *(v16 + 24);
  v19 = *(v11 + 48);
  sub_10000BE14(v17 + v18, v13, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(a2 + v18, &v13[v19], &qword_1019F67C0, &unk_10146F3E0);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
      sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  sub_10000BE14(v13, v10, &qword_1019F67C0, &unk_10146F3E0);
  if (v20(&v13[v19], 1, v4) == 1)
  {
    sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
LABEL_17:
    v22 = &qword_1019F6CA0;
    v23 = &qword_10146FA78;
LABEL_18:
    sub_10000CAAC(v13, v22, v23);
    goto LABEL_19;
  }

  sub_100DC50EC(&v13[v19], v7, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v10, *(v10 + 1), *v7, *(v7 + 1)))
  {
    sub_100DC5154(v7, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
    v22 = &qword_1019F67C0;
    v23 = &unk_10146F3E0;
    goto LABEL_18;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v7, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_14:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v21 & 1;
}

uint64_t sub_100DC0880(double *a1, double *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v38 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v9 - 8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  __chkstk_darwin(v14);
  v41 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v38 - v17;
  v43 = type metadata accessor for CRLProto_CollaboratorCursor(0);
  v44 = a1;
  v19 = *(v43 + 24);
  v40 = v14;
  v20 = *(v14 + 48);
  sub_10000BE14(a1 + v19, v18, &qword_1019F67C0, &unk_10146F3E0);
  v45 = a2;
  sub_10000BE14(a2 + v19, &v18[v20], &qword_1019F67C0, &unk_10146F3E0);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v22 = v4;
      sub_10000CAAC(v18, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  sub_10000BE14(v18, v13, &qword_1019F67C0, &unk_10146F3E0);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
LABEL_11:
    v28 = &qword_1019F6CA0;
    v29 = &qword_10146FA78;
LABEL_12:
    v30 = v18;
LABEL_13:
    sub_10000CAAC(v30, v28, v29);
    goto LABEL_14;
  }

  v32 = v42;
  sub_100DC50EC(&v18[v20], v42, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v13, *(v13 + 1), *v32, *(v32 + 8)))
  {
    sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
    v28 = &qword_1019F67C0;
    v29 = &unk_10146F3E0;
    goto LABEL_12;
  }

  v22 = v4;
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v32, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v18, &qword_1019F67C0, &unk_10146F3E0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_4:
  v23 = v45;
  if (*v44 != *v45)
  {
    goto LABEL_14;
  }

  v24 = *(v43 + 28);
  v25 = v41;
  v26 = *(v40 + 48);
  sub_10000BE14(v44 + v24, v41, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(v23 + v24, v25 + v26, &qword_1019F67C0, &unk_10146F3E0);
  if (v21(v25, 1, v22) != 1)
  {
    v34 = v39;
    sub_10000BE14(v25, v39, &qword_1019F67C0, &unk_10146F3E0);
    if (v21((v25 + v26), 1, v22) == 1)
    {
      sub_100DC5154(v34, type metadata accessor for CRLProto_Data);
      goto LABEL_22;
    }

    v35 = v25 + v26;
    v36 = v38;
    sub_100DC50EC(v35, v38, type metadata accessor for CRLProto_Data);
    if (!sub_1009F9488(*v34, *(v34 + 8), *v36, *(v36 + 8)))
    {
      sub_100DC5154(v36, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v34, type metadata accessor for CRLProto_Data);
      v28 = &qword_1019F67C0;
      v29 = &unk_10146F3E0;
      v30 = v25;
      goto LABEL_13;
    }

    type metadata accessor for UnknownStorage();
    sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_100DC5154(v36, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v34, type metadata accessor for CRLProto_Data);
    sub_10000CAAC(v25, &qword_1019F67C0, &unk_10146F3E0);
    if (v37)
    {
      goto LABEL_8;
    }

LABEL_14:
    v27 = 0;
    return v27 & 1;
  }

  if (v21((v25 + v26), 1, v22) != 1)
  {
LABEL_22:
    v28 = &qword_1019F6CA0;
    v29 = &qword_10146FA78;
    v30 = v25;
    goto LABEL_13;
  }

  sub_10000CAAC(v25, &qword_1019F67C0, &unk_10146F3E0);
LABEL_8:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v27 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v27 & 1;
}

uint64_t sub_100DC0F48(void *a1, void *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v23 - v8;
  v10 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v24 = type metadata accessor for CRLProto_RefuseOrEndFollow(0);
  v14 = *(v24 + 24);
  v15 = *(v11 + 56);
  v26 = a1;
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(a2 + v14, &v13[v15], &qword_1019F67C0, &unk_10146F3E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_10000BE14(v13, v9, &qword_1019F67C0, &unk_10146F3E0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
LABEL_8:
    v18 = &qword_1019F6CA0;
    v19 = &qword_10146FA78;
LABEL_9:
    sub_10000CAAC(v13, v18, v19);
    goto LABEL_10;
  }

  v21 = v25;
  sub_100DC50EC(&v13[v15], v25, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v9, *(v9 + 1), *v21, *(v21 + 8)))
  {
    sub_100DC5154(v21, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
    v18 = &qword_1019F67C0;
    v19 = &unk_10146F3E0;
    goto LABEL_9;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v22 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v21, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
  if ((v22 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (*v26 != *a2)
  {
LABEL_10:
    v17 = 0;
    return v17 & 1;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t sub_100DC1358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v37 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v9 - 8);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v37 - v12;
  v14 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  __chkstk_darwin(v14);
  v42 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  v40 = type metadata accessor for CRLProto_StartOrEndFollow(0);
  v41 = v14;
  v19 = *(v40 + 20);
  v20 = *(v14 + 48);
  v43 = a1;
  sub_10000BE14(a1 + v19, v18, &qword_1019F67C0, &unk_10146F3E0);
  v44 = a2;
  sub_10000BE14(a2 + v19, &v18[v20], &qword_1019F67C0, &unk_10146F3E0);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      v22 = v4;
      sub_10000CAAC(v18, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  sub_10000BE14(v18, v13, &qword_1019F67C0, &unk_10146F3E0);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
LABEL_10:
    v27 = &qword_1019F6CA0;
    v28 = &qword_10146FA78;
LABEL_11:
    v29 = v18;
    goto LABEL_12;
  }

  v31 = v39;
  sub_100DC50EC(&v18[v20], v39, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v13, *(v13 + 1), *v31, *(v31 + 8)))
  {
    sub_100DC5154(v31, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
    v27 = &qword_1019F67C0;
    v28 = &unk_10146F3E0;
    goto LABEL_11;
  }

  v22 = v4;
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v31, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v18, &qword_1019F67C0, &unk_10146F3E0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  v23 = *(v40 + 24);
  v24 = *(v41 + 48);
  v25 = v42;
  sub_10000BE14(v43 + v23, v42, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(v44 + v23, v25 + v24, &qword_1019F67C0, &unk_10146F3E0);
  if (v21(v25, 1, v22) != 1)
  {
    v33 = v38;
    sub_10000BE14(v25, v38, &qword_1019F67C0, &unk_10146F3E0);
    if (v21((v25 + v24), 1, v22) == 1)
    {
      sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
      goto LABEL_20;
    }

    v34 = v25 + v24;
    v35 = v37;
    sub_100DC50EC(v34, v37, type metadata accessor for CRLProto_Data);
    if (sub_1009F9488(*v33, *(v33 + 8), *v35, *(v35 + 8)))
    {
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100DC5154(v35, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
      sub_10000CAAC(v25, &qword_1019F67C0, &unk_10146F3E0);
      if (v36)
      {
        goto LABEL_7;
      }

LABEL_13:
      v26 = 0;
      return v26 & 1;
    }

    sub_100DC5154(v35, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v33, type metadata accessor for CRLProto_Data);
    v27 = &qword_1019F67C0;
    v28 = &unk_10146F3E0;
    v29 = v25;
LABEL_12:
    sub_10000CAAC(v29, v27, v28);
    goto LABEL_13;
  }

  if (v21((v25 + v24), 1, v22) != 1)
  {
LABEL_20:
    v27 = &qword_1019F6CA0;
    v28 = &qword_10146FA78;
    v29 = v25;
    goto LABEL_12;
  }

  sub_10000CAAC(v25, &qword_1019F67C0, &unk_10146F3E0);
LABEL_7:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v26 & 1;
}

uint64_t sub_100DC1A0C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v113 = *(v4 - 8);
  v114 = v4;
  __chkstk_darwin(v4);
  v109 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v6 - 8);
  v110 = &v105 - v7;
  v112 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  __chkstk_darwin(v112);
  v9 = &v105 - v8;
  v10 = type metadata accessor for CRLProto_Point(0);
  v117 = *(v10 - 8);
  v118 = v10;
  __chkstk_darwin(v10);
  v111 = (&v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1005B981C(&qword_101A15CE8, &qword_1014AAE20);
  __chkstk_darwin(v12 - 8);
  v115 = (&v105 - v13);
  v116 = sub_1005B981C(&qword_101A201D0, &qword_1014B5910);
  __chkstk_darwin(v116);
  v119 = &v105 - v14;
  v15 = type metadata accessor for CRLProto_Date(0);
  v122 = *(v15 - 8);
  v123 = v15;
  __chkstk_darwin(v15);
  v120 = (&v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1005B981C(&qword_101A1ACE8, &unk_1014AAE10);
  __chkstk_darwin(v17 - 8);
  v121 = (&v105 - v18);
  v19 = sub_1005B981C(&qword_101A201D8, &qword_1014B5918);
  __chkstk_darwin(v19);
  v124 = &v105 - v20;
  v21 = type metadata accessor for CRLProto_Path(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = (&v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1005B981C(&qword_101A1ACF8, &unk_1014B5900);
  __chkstk_darwin(v25 - 8);
  v27 = (&v105 - v26);
  v28 = sub_1005B981C(&qword_101A201E0, &qword_1014B5920);
  __chkstk_darwin(v28);
  v30 = &v105 - v29;
  if ((sub_10066D064(*a1, *a2) & 1) == 0)
  {
    goto LABEL_13;
  }

  v106 = v9;
  v31 = type metadata accessor for CRLProto_PKStrokePathData(0);
  v125 = a2;
  v32 = *(v31 + 24);
  v33 = a1;
  v34 = *(v28 + 48);
  v107 = v31;
  v108 = v33;
  sub_10000BE14(v33 + v32, v30, &qword_101A1ACF8, &unk_1014B5900);
  v35 = v125 + v32;
  v36 = v125;
  sub_10000BE14(v35, &v30[v34], &qword_101A1ACF8, &unk_1014B5900);
  v37 = *(v22 + 48);
  if (v37(v30, 1, v21) == 1)
  {
    if (v37(&v30[v34], 1, v21) == 1)
    {
      sub_10000CAAC(v30, &qword_101A1ACF8, &unk_1014B5900);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  sub_10000BE14(v30, v27, &qword_101A1ACF8, &unk_1014B5900);
  if (v37(&v30[v34], 1, v21) == 1)
  {
    sub_100DC5154(v27, type metadata accessor for CRLProto_Path);
LABEL_10:
    v44 = &qword_101A201E0;
    v45 = &qword_1014B5920;
LABEL_11:
    v46 = v30;
    goto LABEL_12;
  }

  sub_100DC50EC(&v30[v34], v24, type metadata accessor for CRLProto_Path);
  if ((sub_10066E698(*v27, *v24) & 1) == 0)
  {
    sub_100DC5154(v24, type metadata accessor for CRLProto_Path);
    sub_100DC5154(v27, type metadata accessor for CRLProto_Path);
    v44 = &qword_101A1ACF8;
    v45 = &unk_1014B5900;
    goto LABEL_11;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v24, type metadata accessor for CRLProto_Path);
  sub_100DC5154(v27, type metadata accessor for CRLProto_Path);
  sub_10000CAAC(v30, &qword_101A1ACF8, &unk_1014B5900);
  if ((v49 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v38 = v107;
  v39 = v107[7];
  v40 = (v108 + v39);
  v41 = *(v108 + v39 + 4);
  v42 = (v36 + v39);
  v43 = *(v36 + v39 + 4);
  if (v41)
  {
    if (!v43)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      goto LABEL_13;
    }
  }

  v50 = v107[8];
  v51 = *(v19 + 48);
  v52 = v124;
  sub_10000BE14(v108 + v50, v124, &qword_101A1ACE8, &unk_1014AAE10);
  sub_10000BE14(v36 + v50, v52 + v51, &qword_101A1ACE8, &unk_1014AAE10);
  v53 = v123;
  v54 = *(v122 + 48);
  if (v54(v52, 1, v123) == 1)
  {
    if (v54(v52 + v51, 1, v53) == 1)
    {
      sub_10000CAAC(v52, &qword_101A1ACE8, &unk_1014AAE10);
      goto LABEL_30;
    }

LABEL_27:
    v44 = &qword_101A201D8;
    v45 = &qword_1014B5918;
    v46 = v52;
    goto LABEL_12;
  }

  v55 = v121;
  sub_10000BE14(v52, v121, &qword_101A1ACE8, &unk_1014AAE10);
  if (v54(v52 + v51, 1, v53) == 1)
  {
    sub_100DC5154(v55, type metadata accessor for CRLProto_Date);
    goto LABEL_27;
  }

  v56 = v52 + v51;
  v57 = v120;
  sub_100DC50EC(v56, v120, type metadata accessor for CRLProto_Date);
  if (*v55 != *v57)
  {
    sub_100DC5154(v57, type metadata accessor for CRLProto_Date);
    sub_100DC5154(v55, type metadata accessor for CRLProto_Date);
    v44 = &qword_101A1ACE8;
    v45 = &unk_1014AAE10;
    v46 = v52;
    goto LABEL_12;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v58 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v57, type metadata accessor for CRLProto_Date);
  sub_100DC5154(v55, type metadata accessor for CRLProto_Date);
  sub_10000CAAC(v52, &qword_101A1ACE8, &unk_1014AAE10);
  if ((v58 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_30:
  v59 = v38[9];
  v60 = (v108 + v59);
  v61 = *(v108 + v59 + 4);
  v62 = (v36 + v59);
  v63 = *(v36 + v59 + 4);
  if (v61)
  {
    if (!v63)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v60 != *v62)
    {
      LOBYTE(v63) = 1;
    }

    if (v63)
    {
      goto LABEL_13;
    }
  }

  v64 = v38[10];
  v65 = (v108 + v64);
  v66 = *(v108 + v64 + 4);
  v67 = (v36 + v64);
  v68 = *(v36 + v64 + 4);
  if (v66)
  {
    if (!v68)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v65 != *v67)
    {
      LOBYTE(v68) = 1;
    }

    if (v68)
    {
      goto LABEL_13;
    }
  }

  v69 = v38[11];
  v70 = *(v116 + 48);
  v71 = v119;
  sub_10000BE14(v108 + v69, v119, &qword_101A15CE8, &qword_1014AAE20);
  v72 = v36 + v69;
  v73 = v71;
  sub_10000BE14(v72, v71 + v70, &qword_101A15CE8, &qword_1014AAE20);
  v74 = v118;
  v75 = *(v117 + 48);
  if (v75(v71, 1, v118) == 1)
  {
    if (v75(v71 + v70, 1, v74) == 1)
    {
      goto LABEL_45;
    }

LABEL_53:
    v44 = &qword_101A201D0;
    v45 = &qword_1014B5910;
    v46 = v73;
    goto LABEL_12;
  }

  v84 = v115;
  sub_10000BE14(v73, v115, &qword_101A15CE8, &qword_1014AAE20);
  if (v75(v73 + v70, 1, v74) == 1)
  {
    sub_100DC5154(v84, type metadata accessor for CRLProto_Point);
    goto LABEL_53;
  }

  v85 = v73 + v70;
  v86 = v111;
  sub_100DC50EC(v85, v111, type metadata accessor for CRLProto_Point);
  if (*v84 != *v86 || v84[1] != v86[1])
  {
    sub_100DC5154(v86, type metadata accessor for CRLProto_Point);
    goto LABEL_59;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v87 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v86, type metadata accessor for CRLProto_Point);
  if ((v87 & 1) == 0)
  {
LABEL_59:
    sub_100DC5154(v84, type metadata accessor for CRLProto_Point);
    v44 = &qword_101A15CE8;
    v45 = &qword_1014AAE20;
    v46 = v73;
    goto LABEL_12;
  }

  sub_100DC5154(v84, type metadata accessor for CRLProto_Point);
LABEL_45:
  sub_10000CAAC(v73, &qword_101A15CE8, &qword_1014AAE20);
  v76 = v38[12];
  v77 = *(v112 + 48);
  v78 = v106;
  sub_10000BE14(v108 + v76, v106, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(v36 + v76, v78 + v77, &qword_1019F67C0, &unk_10146F3E0);
  v79 = v114;
  v80 = *(v113 + 48);
  if (v80(v78, 1, v114) != 1)
  {
    v88 = v110;
    sub_10000BE14(v78, v110, &qword_1019F67C0, &unk_10146F3E0);
    if (v80(v78 + v77, 1, v79) == 1)
    {
      sub_100DC5154(v88, type metadata accessor for CRLProto_Data);
      goto LABEL_62;
    }

    v89 = v78 + v77;
    v90 = v109;
    sub_100DC50EC(v89, v109, type metadata accessor for CRLProto_Data);
    if (sub_1009F9488(*v88, *(v88 + 8), *v90, *(v90 + 8)))
    {
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v91 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100DC5154(v90, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v88, type metadata accessor for CRLProto_Data);
      sub_10000CAAC(v78, &qword_1019F67C0, &unk_10146F3E0);
      if ((v91 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_48;
    }

    sub_100DC5154(v90, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v88, type metadata accessor for CRLProto_Data);
    v44 = &qword_1019F67C0;
    v45 = &unk_10146F3E0;
    v46 = v78;
LABEL_12:
    sub_10000CAAC(v46, v44, v45);
    goto LABEL_13;
  }

  if (v80(v78 + v77, 1, v79) != 1)
  {
LABEL_62:
    v44 = &qword_1019F6CA0;
    v45 = &qword_10146FA78;
    v46 = v78;
    goto LABEL_12;
  }

  sub_10000CAAC(v78, &qword_1019F67C0, &unk_10146F3E0);
LABEL_48:
  v81 = v38[13];
  v82 = *(v108 + v81);
  v83 = *(v36 + v81);
  if (v82 == 2)
  {
    if (v83 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v83 == 2 || ((v82 ^ v83) & 1) != 0)
  {
    goto LABEL_13;
  }

  v92 = v38[14];
  v93 = *(v108 + v92);
  v94 = *(v36 + v92);
  if (v93 == 2)
  {
    if (v94 != 2)
    {
      goto LABEL_13;
    }
  }

  else if (v94 == 2 || ((v93 ^ v94) & 1) != 0)
  {
    goto LABEL_13;
  }

  v95 = v38[15];
  v96 = (v108 + v95);
  v97 = *(v108 + v95 + 8);
  v98 = (v36 + v95);
  v99 = *(v36 + v95 + 8);
  if (v97)
  {
    if (!v99)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (*v96 != *v98)
    {
      LOBYTE(v99) = 1;
    }

    if (v99)
    {
      goto LABEL_13;
    }
  }

  v100 = v107[16];
  v101 = (v108 + v100);
  v102 = *(v108 + v100 + 8);
  v103 = (v125 + v100);
  v104 = *(v125 + v100 + 8);
  if (v102)
  {
    if (v104)
    {
LABEL_86:
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v47 & 1;
    }
  }

  else
  {
    if (*v101 != *v103)
    {
      LOBYTE(v104) = 1;
    }

    if ((v104 & 1) == 0)
    {
      goto LABEL_86;
    }
  }

LABEL_13:
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_100DC29D8(uint64_t a1, uint64_t a2)
{
  if (!sub_1009F9488(*a1, *(a1 + 8), *a2, *(a2 + 8)) || !sub_1009F9488(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || !sub_1009F9488(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) || !sub_1009F9488(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56)) || !sub_1009F9488(*(a1 + 64), *(a1 + 72), *(a2 + 64), *(a2 + 72)) || !sub_1009F9488(*(a1 + 80), *(a1 + 88), *(a2 + 80), *(a2 + 88)) || !sub_1009F9488(*(a1 + 96), *(a1 + 104), *(a2 + 96), *(a2 + 104)) || !sub_1009F9488(*(a1 + 112), *(a1 + 120), *(a2 + 112), *(a2 + 120)) || !sub_1009F9488(*(a1 + 128), *(a1 + 136), *(a2 + 128), *(a2 + 136)))
  {
    return 0;
  }

  type metadata accessor for CRLProto_PKStrokePathData.StrokePoint(0);
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_100DC2B08(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for CRLProto_ObjectMetadata(0);
  v14 = *(v25 + 28);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(a2 + v14, &v13[v15], &qword_1019F67C0, &unk_10146F3E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v9, &qword_1019F67C0, &unk_10146F3E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v22 = v26;
      sub_100DC50EC(&v13[v15], v26, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v9, *(v9 + 1), *v22, *(v22 + 8)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v22, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
        if (v23)
        {
          goto LABEL_4;
        }

LABEL_11:
        v18 = 0;
        return v18 & 1;
      }

      sub_100DC5154(v22, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
      v19 = &qword_1019F67C0;
      v20 = &unk_10146F3E0;
LABEL_10:
      sub_10000CAAC(v13, v19, v20);
      goto LABEL_11;
    }

    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
LABEL_9:
    v19 = &qword_1019F6CA0;
    v20 = &qword_10146FA78;
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
LABEL_4:
  v17 = v27;
  if ((sub_10066FCE0(*v27, *a2) & 1) == 0 || (sub_10066FD3C(v17[1], a2[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v18 & 1;
}

uint64_t sub_100DC2F28(void *a1, void *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v25 = type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
  v14 = *(v25 + 28);
  v15 = *(v11 + 56);
  v27 = a1;
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(a2 + v14, &v13[v15], &qword_1019F67C0, &unk_10146F3E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v9, &qword_1019F67C0, &unk_10146F3E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v22 = v26;
      sub_100DC50EC(&v13[v15], v26, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v9, *(v9 + 1), *v22, *(v22 + 8)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v22, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
        if (v23)
        {
          goto LABEL_4;
        }

LABEL_13:
        v18 = 0;
        return v18 & 1;
      }

      sub_100DC5154(v22, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
      v19 = &qword_1019F67C0;
      v20 = &unk_10146F3E0;
LABEL_12:
      sub_10000CAAC(v13, v19, v20);
      goto LABEL_13;
    }

    sub_100DC5154(v9, type metadata accessor for CRLProto_Data);
LABEL_11:
    v19 = &qword_1019F6CA0;
    v20 = &qword_10146FA78;
    goto LABEL_12;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
LABEL_4:
  v17 = v27;
  if ((*v27 != *a2 || v27[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v17[2] != a2[2])
  {
    goto LABEL_13;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v18 & 1;
}

uint64_t sub_100DC335C(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v76 = &v69 - v9;
  __chkstk_darwin(v10);
  v12 = &v69 - v11;
  v13 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v13 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v77 = &v69 - v17;
  __chkstk_darwin(v18);
  v20 = &v69 - v19;
  v78 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  __chkstk_darwin(v78);
  __chkstk_darwin(v21);
  v23 = &v69 - v22;
  __chkstk_darwin(v24);
  v27 = &v69 - v26;
  v28 = *a1;
  v29 = *a2;
  if (*(a1 + 8))
  {
    v28 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v29)
    {
      if (v28 != 1)
      {
        goto LABEL_27;
      }
    }

    else if (v28)
    {
      goto LABEL_27;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_27;
  }

  v71 = v15;
  v72 = v25;
  v70 = v7;
  v74 = type metadata accessor for CRLProto_TextSelection(0);
  v75 = v4;
  v30 = v74[6];
  v31 = *(v78 + 48);
  v73 = a1;
  sub_10000BE14(a1 + v30, v27, &qword_1019F67C0, &unk_10146F3E0);
  v32 = v75;
  sub_10000BE14(a2 + v30, &v27[v31], &qword_1019F67C0, &unk_10146F3E0);
  v33 = *(v5 + 48);
  if (v33(v27, 1, v32) == 1)
  {
    if (v33(&v27[v31], 1, v32) == 1)
    {
      v69 = a2;
      sub_10000CAAC(v27, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_13;
    }

    goto LABEL_24;
  }

  sub_10000BE14(v27, v20, &qword_1019F67C0, &unk_10146F3E0);
  if (v33(&v27[v31], 1, v32) == 1)
  {
    sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
LABEL_24:
    v46 = &qword_1019F6CA0;
    v47 = &qword_10146FA78;
LABEL_25:
    v48 = v27;
    goto LABEL_26;
  }

  sub_100DC50EC(&v27[v31], v12, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v20, *(v20 + 1), *v12, *(v12 + 1)))
  {
    sub_100DC5154(v12, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
    v46 = &qword_1019F67C0;
    v47 = &unk_10146F3E0;
    goto LABEL_25;
  }

  v69 = a2;
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v51 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v12, type metadata accessor for CRLProto_Data);
  v32 = v75;
  sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v27, &qword_1019F67C0, &unk_10146F3E0);
  if ((v51 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  v34 = v74[7];
  v35 = *(v78 + 48);
  v36 = v73;
  sub_10000BE14(v73 + v34, v23, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(v69 + v34, &v23[v35], &qword_1019F67C0, &unk_10146F3E0);
  if (v33(v23, 1, v32) == 1)
  {
    v37 = v33(&v23[v35], 1, v32);
    v38 = v72;
    if (v37 == 1)
    {
      sub_10000CAAC(v23, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_16;
    }

LABEL_34:
    v46 = &qword_1019F6CA0;
    v47 = &qword_10146FA78;
    v48 = v23;
    goto LABEL_26;
  }

  v52 = v77;
  sub_10000BE14(v23, v77, &qword_1019F67C0, &unk_10146F3E0);
  v53 = v33(&v23[v35], 1, v32);
  v38 = v72;
  if (v53 == 1)
  {
    sub_100DC5154(v52, type metadata accessor for CRLProto_Data);
    goto LABEL_34;
  }

  v54 = &v23[v35];
  v55 = v76;
  sub_100DC50EC(v54, v76, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v52, *(v52 + 8), *v55, *(v55 + 8)))
  {
    sub_100DC5154(v55, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v52, type metadata accessor for CRLProto_Data);
    v46 = &qword_1019F67C0;
    v47 = &unk_10146F3E0;
    v48 = v23;
    goto LABEL_26;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v55, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v52, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v23, &qword_1019F67C0, &unk_10146F3E0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v39 = v74[8];
  v40 = *(v78 + 48);
  sub_10000BE14(v36 + v39, v38, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(v69 + v39, v38 + v40, &qword_1019F67C0, &unk_10146F3E0);
  if (v33(v38, 1, v32) != 1)
  {
    v57 = v71;
    sub_10000BE14(v38, v71, &qword_1019F67C0, &unk_10146F3E0);
    if (v33((v38 + v40), 1, v32) == 1)
    {
      sub_100DC5154(v57, type metadata accessor for CRLProto_Data);
      goto LABEL_41;
    }

    v58 = v38 + v40;
    v59 = v70;
    sub_100DC50EC(v58, v70, type metadata accessor for CRLProto_Data);
    if (sub_1009F9488(*v57, *(v57 + 8), *v59, *(v59 + 8)))
    {
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100DC5154(v59, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v57, type metadata accessor for CRLProto_Data);
      sub_10000CAAC(v38, &qword_1019F67C0, &unk_10146F3E0);
      if ((v60 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    sub_100DC5154(v59, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v57, type metadata accessor for CRLProto_Data);
    v46 = &qword_1019F67C0;
    v47 = &unk_10146F3E0;
    v48 = v38;
LABEL_26:
    sub_10000CAAC(v48, v46, v47);
    goto LABEL_27;
  }

  if (v33((v38 + v40), 1, v32) != 1)
  {
LABEL_41:
    v46 = &qword_1019F6CA0;
    v47 = &qword_10146FA78;
    v48 = v38;
    goto LABEL_26;
  }

  sub_10000CAAC(v38, &qword_1019F67C0, &unk_10146F3E0);
LABEL_19:
  v41 = v74[9];
  v42 = (v36 + v41);
  v43 = *(v36 + v41 + 4);
  v44 = (v69 + v41);
  v45 = *(v69 + v41 + 4);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_27;
    }
  }

  v61 = v74[10];
  v62 = *(v36 + v61);
  v63 = *(v69 + v61);
  if (v62 == 2)
  {
    if (v63 != 2)
    {
      goto LABEL_27;
    }
  }

  else if (v63 == 2 || ((v62 ^ v63) & 1) != 0)
  {
    goto LABEL_27;
  }

  v64 = v74[11];
  v65 = (v36 + v64);
  v66 = *(v36 + v64 + 4);
  v67 = (v69 + v64);
  v68 = *(v69 + v64 + 4);
  if ((v66 & 1) == 0)
  {
    if (*v65 != *v67)
    {
      LOBYTE(v68) = 1;
    }

    if (v68)
    {
      goto LABEL_27;
    }

LABEL_61:
    type metadata accessor for UnknownStorage();
    sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v49 & 1;
  }

  if (v68)
  {
    goto LABEL_61;
  }

LABEL_27:
  v49 = 0;
  return v49 & 1;
}

uint64_t sub_100DC3DC8(double *a1, double *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v46 = &v44 - v8;
  v9 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v9 - 8);
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  __chkstk_darwin(v14);
  v48 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  v51 = type metadata accessor for CRLProto_RealTimeEnter(0);
  v19 = v51[6];
  v47 = v14;
  v20 = *(v14 + 48);
  v49 = a1;
  sub_10000BE14(a1 + v19, v18, &qword_1019F67C0, &unk_10146F3E0);
  v50 = a2;
  sub_10000BE14(a2 + v19, &v18[v20], &qword_1019F67C0, &unk_10146F3E0);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    if (v21(&v18[v20], 1, v4) == 1)
    {
      sub_10000CAAC(v18, &qword_1019F67C0, &unk_10146F3E0);
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  sub_10000BE14(v18, v13, &qword_1019F67C0, &unk_10146F3E0);
  if (v21(&v18[v20], 1, v4) == 1)
  {
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
LABEL_13:
    v31 = &qword_1019F6CA0;
    v32 = &qword_10146FA78;
LABEL_14:
    v33 = v18;
    goto LABEL_15;
  }

  v36 = &v18[v20];
  v37 = v46;
  sub_100DC50EC(v36, v46, type metadata accessor for CRLProto_Data);
  if (!sub_1009F9488(*v13, *(v13 + 1), *v37, *(v37 + 8)))
  {
    sub_100DC5154(v37, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
    v31 = &qword_1019F67C0;
    v32 = &unk_10146F3E0;
    goto LABEL_14;
  }

  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v38 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100DC5154(v37, type metadata accessor for CRLProto_Data);
  sub_100DC5154(v13, type metadata accessor for CRLProto_Data);
  sub_10000CAAC(v18, &qword_1019F67C0, &unk_10146F3E0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  v22 = v51[7];
  v23 = v48;
  v24 = *(v47 + 48);
  v25 = v49;
  sub_10000BE14(v49 + v22, v48, &qword_1019F67C0, &unk_10146F3E0);
  v26 = v50 + v22;
  v27 = v50;
  sub_10000BE14(v26, v23 + v24, &qword_1019F67C0, &unk_10146F3E0);
  if (v21(v23, 1, v4) != 1)
  {
    v39 = v4;
    v40 = v45;
    sub_10000BE14(v23, v45, &qword_1019F67C0, &unk_10146F3E0);
    if (v21((v23 + v24), 1, v39) == 1)
    {
      sub_100DC5154(v40, type metadata accessor for CRLProto_Data);
      goto LABEL_23;
    }

    v41 = v23 + v24;
    v42 = v44;
    sub_100DC50EC(v41, v44, type metadata accessor for CRLProto_Data);
    if (sub_1009F9488(*v40, *(v40 + 8), *v42, *(v42 + 8)))
    {
      type metadata accessor for UnknownStorage();
      sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_100DC5154(v42, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v40, type metadata accessor for CRLProto_Data);
      sub_10000CAAC(v23, &qword_1019F67C0, &unk_10146F3E0);
      if ((v43 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }

    sub_100DC5154(v42, type metadata accessor for CRLProto_Data);
    sub_100DC5154(v40, type metadata accessor for CRLProto_Data);
    v31 = &qword_1019F67C0;
    v32 = &unk_10146F3E0;
    v33 = v23;
LABEL_15:
    sub_10000CAAC(v33, v31, v32);
    goto LABEL_16;
  }

  if (v21((v23 + v24), 1, v4) != 1)
  {
LABEL_23:
    v31 = &qword_1019F6CA0;
    v32 = &qword_10146FA78;
    v33 = v23;
    goto LABEL_15;
  }

  sub_10000CAAC(v23, &qword_1019F67C0, &unk_10146F3E0);
LABEL_7:
  if (*v25 == *v27)
  {
    v28 = v51[8];
    v29 = *(v25 + v28);
    v30 = *(v27 + v28);
    if (v29 == 2)
    {
      if (v30 == 2)
      {
LABEL_31:
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v34 & 1;
      }
    }

    else if (v30 != 2 && ((v29 ^ v30) & 1) == 0)
    {
      goto LABEL_31;
    }
  }

LABEL_16:
  v34 = 0;
  return v34 & 1;
}

uint64_t *sub_100DC44D0(uint64_t *result, uint64_t a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = result[1];
  v3 = *(a2 + 8);
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
LABEL_11:
    v8 = result;
    if ((sub_100670A08(result[2], *(a2 + 16)) & 1) == 0 || (sub_100671390(v8[3], *(a2 + 24)) & 1) == 0 || (sub_100671AE4(v8[4], *(a2 + 32)) & 1) == 0 || v8[5] != *(a2 + 40) || (sub_10066FCE0(v8[6], *(a2 + 48)) & 1) == 0 || (sub_10066FCE0(v8[7], *(a2 + 56)) & 1) == 0)
    {
      return 0;
    }

    v10 = *(type metadata accessor for CRLProto_ObjectInfo(0) + 52);
    v11 = (v8 + v10);
    v12 = *(v8 + v10 + 4);
    v13 = (a2 + v10);
    v14 = *(a2 + v10 + 4);
    if (v12)
    {
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      if (*v11 != *v13)
      {
        LOBYTE(v14) = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return (dispatch thunk of static Equatable.== infix(_:_:)() & 1);
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DC4670(void *a1, void *a2)
{
  v4 = type metadata accessor for CRLProto_Data(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v24 = v7;
  v25 = type metadata accessor for CRLProto_ObjectInfo.AssetReference(0);
  v14 = *(v25 + 24);
  v15 = *(v11 + 48);
  sub_10000BE14(a1 + v14, v13, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(a2 + v14, &v13[v15], &qword_1019F67C0, &unk_10146F3E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_10000BE14(v13, v10, &qword_1019F67C0, &unk_10146F3E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = &v13[v15];
      v22 = v24;
      sub_100DC50EC(v21, v24, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v10, *(v10 + 1), *v22, *(v22 + 8)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v22, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
        if (v23)
        {
          goto LABEL_6;
        }

LABEL_11:
        v17 = 0;
        return v17 & 1;
      }

      sub_100DC5154(v22, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
      v18 = &qword_1019F67C0;
      v19 = &unk_10146F3E0;
LABEL_10:
      sub_10000CAAC(v13, v18, v19);
      goto LABEL_11;
    }

    sub_100DC5154(v10, type metadata accessor for CRLProto_Data);
LABEL_9:
    v18 = &qword_1019F6CA0;
    v19 = &qword_10146FA78;
    goto LABEL_10;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_10000CAAC(v13, &qword_1019F67C0, &unk_10146F3E0);
LABEL_6:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v17 & 1;
}

uint64_t sub_100DC4A98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128))
{
  v6 = type metadata accessor for CRLProto_Data(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v26 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v9 - 8);
  v27 = &v26 - v10;
  v11 = sub_1005B981C(&qword_1019F6CA0, &qword_10146FA78);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v15 = &v26 - v14;
  v16 = *(a3(0, v13) + 20);
  v17 = *(v12 + 56);
  sub_10000BE14(a1 + v16, v15, &qword_1019F67C0, &unk_10146F3E0);
  sub_10000BE14(a2 + v16, &v15[v17], &qword_1019F67C0, &unk_10146F3E0);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) != 1)
  {
    v20 = v27;
    sub_10000BE14(v15, v27, &qword_1019F67C0, &unk_10146F3E0);
    if (v18(&v15[v17], 1, v6) != 1)
    {
      v24 = v26;
      sub_100DC50EC(&v15[v17], v26, type metadata accessor for CRLProto_Data);
      if (sub_1009F9488(*v20, *(v20 + 8), *v24, *(v24 + 8)))
      {
        type metadata accessor for UnknownStorage();
        sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_100DC5154(v24, type metadata accessor for CRLProto_Data);
        sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
        sub_10000CAAC(v15, &qword_1019F67C0, &unk_10146F3E0);
        if (v25)
        {
          goto LABEL_4;
        }

LABEL_9:
        v19 = 0;
        return v19 & 1;
      }

      sub_100DC5154(v24, type metadata accessor for CRLProto_Data);
      sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
      v21 = &qword_1019F67C0;
      v22 = &unk_10146F3E0;
LABEL_8:
      sub_10000CAAC(v15, v21, v22);
      goto LABEL_9;
    }

    sub_100DC5154(v20, type metadata accessor for CRLProto_Data);
LABEL_7:
    v21 = &qword_1019F6CA0;
    v22 = &qword_10146FA78;
    goto LABEL_8;
  }

  if (v18(&v15[v17], 1, v6) != 1)
  {
    goto LABEL_7;
  }

  sub_10000CAAC(v15, &qword_1019F67C0, &unk_10146F3E0);
LABEL_4:
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v19 & 1;
}

uint64_t sub_100DC4E9C(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  type metadata accessor for CRLProto_Rect(0);
  type metadata accessor for UnknownStorage();
  sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_100DC4F74()
{
  result = qword_101A201C0;
  if (!qword_101A201C0)
  {
    result = swift_getWitnessTable("a%8", &type metadata for CRLProto_Path.ElementType, v0, v1);
    atomic_store(result, &qword_101A201C0);
  }

  return result;
}

uint64_t sub_100DC4FC8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        if (v4 != 2)
        {
          return 0;
        }
      }

      else if (v4 != 3)
      {
        return 0;
      }
    }

    else if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (sub_1009F9488(a1[2], a1[3], *(a2 + 16), *(a2 + 24)) && sub_1009F9488(a1[4], a1[5], *(a2 + 32), *(a2 + 40)) && sub_1009F9488(a1[6], a1[7], *(a2 + 48), *(a2 + 56)))
  {
    type metadata accessor for CRLProto_Path.Element(0);
    type metadata accessor for UnknownStorage();
    sub_100DBA678(&unk_1019F6C90, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t sub_100DC50EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100DC5154(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100DC51B4()
{
  result = qword_101A201F8;
  if (!qword_101A201F8)
  {
    result = swift_getWitnessTable(byte_1014B6038, &type metadata for CRLProto_TextSelection.TypeEnum, v0, v1);
    atomic_store(result, &qword_101A201F8);
  }

  return result;
}

unint64_t sub_100DC5208()
{
  result = qword_101A20208;
  if (!qword_101A20208)
  {
    result = swift_getWitnessTable(byte_1014B5FF0, &type metadata for CRLProto_TableCellSelection.TypeEnum, v0, v1);
    atomic_store(result, &qword_101A20208);
  }

  return result;
}

uint64_t sub_100DC5290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100DC5340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_100DC53CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_100DC54A8(uint64_t a1)
{
  sub_100DA725C(319, &unk_101A205B8, type metadata accessor for CRLProto_Path.Element, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100DC55A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100DC5648(uint64_t a1)
{
  sub_100DA725C(319, &qword_101A206F0, type metadata accessor for CRLProto_PKStrokePathData.StrokePoint, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100DA725C(319, &qword_101A206F8, type metadata accessor for CRLProto_Path, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100DC590C(319, &qword_101A20700, &type metadata for UInt32, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100DA725C(319, &qword_101A20708, type metadata accessor for CRLProto_Date, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100DC590C(319, &qword_101A20710, &type metadata for Float, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100DA725C(319, &qword_101A20718, type metadata accessor for CRLProto_Point, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
                {
                  sub_100DC590C(319, &qword_1019F5D50, &type metadata for Bool, &type metadata accessor for Optional);
                  if (v9 <= 0x3F)
                  {
                    sub_100DC590C(319, &unk_101A20720, &type metadata for Double, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
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

void sub_100DC590C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100DC5984(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100DC5A40(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100DC590C(319, &qword_101A20700, &type metadata for UInt32, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100DC590C(319, &qword_1019F5D50, &type metadata for Bool, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100DC5C04(uint64_t a1)
{
  sub_100DA725C(319, &qword_101A209D8, type metadata accessor for CRLProto_Data, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      sub_100DA725C(319, &qword_101A209E0, type metadata accessor for CRLProto_TextSelection, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100DA725C(319, &unk_101A209E8, type metadata accessor for CRLProto_TableCellSelection, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100DC5D78(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DC5E8C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100DC590C(319, &qword_1019F5D50, &type metadata for Bool, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100DC5FDC(uint64_t a1)
{
  sub_100DC590C(319, &qword_101A1FC48, &type metadata for UInt32, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &qword_101A20CF0, type metadata accessor for CRLProto_ObjectInfo.ChildObjectReference, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_100DA725C(319, &qword_101A20CF8, type metadata accessor for CRLProto_ObjectInfo.AssetReference, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100DA725C(319, &unk_101A20D00, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UnknownStorage();
          if (v5 <= 0x3F)
          {
            sub_100DC590C(319, &qword_101A20700, &type metadata for UInt32, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100DC6248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = type metadata accessor for UnknownStorage();
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100DC62E4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DC63C0(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100DA725C(319, &qword_101A20718, type metadata accessor for CRLProto_Point, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100DA725C(319, &unk_101A21010, type metadata accessor for CRLProto_Size, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100DC656C(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100DA725C(319, &qword_101A20718, type metadata accessor for CRLProto_Point, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100DC66F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100DC6800(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100DC6908(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100DC6A04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void sub_100DC6AC4(uint64_t a1)
{
  sub_100DA725C(319, &qword_101A209D8, type metadata accessor for CRLProto_Data, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DC6BD8(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100DC6CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100DC6DD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

void sub_100DC6EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnknownStorage();
  if (v4 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100DC6FC4(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    sub_100DA725C(319, &unk_101A216A8, type metadata accessor for CRLProto_BoardIdentifier, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100DA725C(319, &unk_101A1FC58, type metadata accessor for CRLProto_Data, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100DC70D4()
{
  result = qword_101A216E0;
  if (!qword_101A216E0)
  {
    result = swift_getWitnessTable(byte_1014B5D4C, &type metadata for CRLProto_TableCellSelection.TypeEnum, v0, v1);
    atomic_store(result, &qword_101A216E0);
  }

  return result;
}

unint64_t sub_100DC715C()
{
  result = qword_101A216F8;
  if (!qword_101A216F8)
  {
    result = swift_getWitnessTable(byte_1014B5E30, &type metadata for CRLProto_TextSelection.TypeEnum, v0, v1);
    atomic_store(result, &qword_101A216F8);
  }

  return result;
}

unint64_t sub_100DC71E4()
{
  result = qword_101A21710;
  if (!qword_101A21710)
  {
    result = swift_getWitnessTable(byte_1014B5F10, &type metadata for CRLProto_Path.ElementType, v0, v1);
    atomic_store(result, &qword_101A21710);
  }

  return result;
}

unint64_t sub_100DC726C()
{
  result = qword_101A21728;
  if (!qword_101A21728)
  {
    result = swift_getWitnessTable(byte_1014B5D74, &type metadata for CRLProto_TableCellSelection.TypeEnum, v0, v1);
    atomic_store(result, &qword_101A21728);
  }

  return result;
}

unint64_t sub_100DC72C4()
{
  result = qword_101A21730;
  if (!qword_101A21730)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for CRLProto_TableCellSelection.TypeEnum, v0, v1);
    atomic_store(result, &qword_101A21730);
  }

  return result;
}

unint64_t sub_100DC731C()
{
  result = qword_101A21738;
  if (!qword_101A21738)
  {
    result = swift_getWitnessTable(byte_1014B5E58, &type metadata for CRLProto_TextSelection.TypeEnum, v0, v1);
    atomic_store(result, &qword_101A21738);
  }

  return result;
}

unint64_t sub_100DC7374()
{
  result = qword_101A21740;
  if (!qword_101A21740)
  {
    result = swift_getWitnessTable(aQ_15, &type metadata for CRLProto_TextSelection.TypeEnum, v0, v1);
    atomic_store(result, &qword_101A21740);
  }

  return result;
}

unint64_t sub_100DC73CC()
{
  result = qword_101A21748;
  if (!qword_101A21748)
  {
    result = swift_getWitnessTable(byte_1014B5F38, &type metadata for CRLProto_Path.ElementType, v0, v1);
    atomic_store(result, &qword_101A21748);
  }

  return result;
}

unint64_t sub_100DC7424()
{
  result = qword_101A21750;
  if (!qword_101A21750)
  {
    result = swift_getWitnessTable(aQ_16, &type metadata for CRLProto_Path.ElementType, v0, v1);
    atomic_store(result, &qword_101A21750);
  }

  return result;
}

char *sub_100DC751C()
{

  v1 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_localParticipantUUID, v2);

  sub_100DC8F08(v0 + qword_101A218A0);
  v4 = *(*v0 + 280);
  type metadata accessor for GroupSession.State();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

void *sub_100DC766C@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  a1[3] = *(*v1 + 248);
  a1[4] = *(v2 + 256);
  sub_10002C58C(a1);
  return GroupSession.activity.getter();
}

uint64_t sub_100DC76DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = *v3;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  v4[15] = swift_task_alloc();
  v4[16] = *(v5 + 248);
  v4[17] = *(*(v5 + 256) + 8);
  v6 = type metadata accessor for GroupSession.State();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[22] = v7;
  v4[23] = *(v7 - 8);
  v4[24] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[25] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[26] = v9;
  v4[27] = v8;

  return _swift_task_switch(sub_100DC78AC, v9, v8);
}

uint64_t sub_100DC78AC()
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[14];
  v5 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[28] = *(v4 + qword_101AD8560);
  GroupSession.id.getter();
  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v7;
  *(inited + 40) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v10, "Setting up group session sync controller. Group Session UUID: %{public}@", 72, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v11 = *(v4 + 32);
  v0[29] = v11;
  if (v11)
  {

    return _swift_task_switch(sub_100DC7B4C, v11, 0);
  }

  else
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[11];
    v15 = v0[12];
    v16 = swift_task_alloc();
    v0[30] = v16;
    *(v16 + 16) = v12;
    *(v16 + 24) = v13;
    v17 = swift_task_alloc();
    v0[31] = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    type metadata accessor for CRLGroupSessionSyncController();
    swift_allocObject();
    swift_unknownObjectRetain();
    v18 = swift_task_alloc();
    v0[32] = v18;
    *v18 = v0;
    v18[1] = sub_100DC7D4C;

    return sub_100FF3118(v14, v15, &unk_1014B6220, v16, &unk_1014B6230, v17);
  }
}

uint64_t sub_100DC7B4C()
{
  *(v0[29] + 120) = v0[12];
  swift_unknownObjectWeakAssign();
  v1 = v0[26];
  v2 = v0[27];

  return _swift_task_switch(sub_100DC7BBC, v1, v2);
}

uint64_t sub_100DC7BBC()
{

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  GroupSession.state.getter();
  (*(v4 + 104))(v2, enum case for GroupSession.State.joined<A>(_:), v3);
  *(v0 + 280) = static GroupSession.State.== infix(_:_:)() & 1;
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  v7 = *(v5 + 32);
  *(v0 + 272) = v7;
  if (v7)
  {

    return _swift_task_switch(sub_100DC8050, v7, 0);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100DC7D4C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 264) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return _swift_task_switch(sub_100DC7EB4, v4, v3);
}

uint64_t sub_100DC7EB4()
{
  *(*(v0 + 112) + 32) = *(v0 + 264);

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 112);
  GroupSession.state.getter();
  (*(v4 + 104))(v2, enum case for GroupSession.State.joined<A>(_:), v3);
  *(v0 + 280) = static GroupSession.State.== infix(_:_:)() & 1;
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  v7 = *(v5 + 32);
  *(v0 + 272) = v7;
  if (v7)
  {

    return _swift_task_switch(sub_100DC8050, v7, 0);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100DC8050()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  if (v2 != *(v1 + 210))
  {
    *(v1 + 210) = v2;
    v3 = *(v0 + 272);
    if (v2 & 1) != 0 && (*(v3 + 208))
    {
      v4 = *(v0 + 120);
      *(v3 + 208) = 0;
      v5 = v3;
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      v7 = sub_100DC90F8();
      v8 = swift_allocObject();
      v8[2] = v5;
      v8[3] = v7;
      v8[4] = v5;

      sub_10064191C(0, 0, v4, &unk_1014AA538, v8);
    }
  }

  v9 = *(v0 + 208);
  v10 = *(v0 + 216);

  return _swift_task_switch(sub_100DC8184, v9, v10);
}

uint64_t sub_100DC8184()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_100DC82CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_101A1A740, &unk_1014B6200);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  *(v3 + 4) = 0;
  v10 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(&v3[v10], a1, v11);
  v13(&v3[OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_localParticipantUUID], a2, v11);
  v14 = *(v7 + 56);
  v13(v9, a1, v11);
  v9[v14] = 0;
  sub_1005B981C(&qword_101A1A790, &unk_1014AA5A0);
  swift_allocObject();
  *(v3 + 2) = CurrentValueSubject.init(_:)();
  v18[1] = _swiftEmptySetSingleton;
  sub_1005B981C(&qword_101A1A7A0, &qword_1014B6210);
  swift_allocObject();
  v15 = CurrentValueSubject.init(_:)();
  v16 = *(v12 + 8);
  v16(a2, v11);
  v16(a1, v11);
  *(v3 + 3) = v15;
  return v3;
}

uint64_t sub_100DC84B0()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100DC8540, v1, v0);
}

uint64_t sub_100DC85C0()
{

  v1 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_localParticipantUUID, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100DC86AC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CRLBoardGroupSession(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100DC8708(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a4;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100DC87D0, v7, v6);
}

uint64_t sub_100DC87D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[5];
  v4[11] = type metadata accessor for CRLRealTimeMessenger(0, *(v4[7] + 248), *(v4[7] + 256), a4);
  v6 = *(v5 + qword_101AD8560);

  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  v4[12] = v7;
  *v7 = v4;
  v7[1] = sub_100DC88C4;
  v8 = v4[6];
  v9 = v4[3];
  v10 = v4[4];

  return sub_1008DE4E4(v6, v8, v9, v10);
}

uint64_t sub_100DC88C4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_100DC89EC, v4, v3);
}

uint64_t sub_100DC89EC()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[2];

  v3[3] = v2;
  v3[4] = &off_10188C8F0;
  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC8A70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a4;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_100DC8B38, v7, v6);
}

uint64_t sub_100DC8B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[5];
  v4[11] = type metadata accessor for CRLUnreliableRealTimeMessenger(0, *(v4[7] + 248), *(v4[7] + 256), a4);
  v6 = *(v5 + qword_101AD8560);

  swift_unknownObjectRetain();
  v7 = swift_task_alloc();
  v4[12] = v7;
  *v7 = v4;
  v7[1] = sub_100DC8C2C;
  v8 = v4[6];
  v9 = v4[3];
  v10 = v4[4];

  return sub_10067F450(v6, v8, v9, v10);
}

uint64_t sub_100DC8C2C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_100DC8D54, v4, v3);
}

uint64_t sub_100DC8D54()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[2];

  v3[3] = v2;
  v3[4] = &off_10187F6A8;
  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_100DC8DD8()
{

  sub_100DC8F08(v0 + qword_101A218A0);
  v1 = *(*v0 + 280);
  type metadata accessor for GroupSession.State();
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_100DC8EB0()
{
  sub_100DC751C();

  return swift_deallocClassInstance();
}

uint64_t sub_100DC8F08(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A08DE0, &unk_1014870D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100DC8F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002D4C8;

  return sub_100DC8708(a1, a2, a3, v9, v8);
}

uint64_t sub_100DC9034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10002D3D4;

  return sub_100DC8A70(a1, a2, a3, v9, v8);
}

unint64_t sub_100DC90F8()
{
  result = qword_101A1A758;
  if (!qword_101A1A758)
  {
    v3 = type metadata accessor for CRLGroupSessionSyncController();
    result = swift_getWitnessTable(byte_1014C14F8, v3, v0, v1);
    atomic_store(result, &qword_101A1A758);
  }

  return result;
}

void sub_100DC9150(uint64_t a1)
{
  v2 = v1;
  v74 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v74);
  v73 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v94 = &v67 - v6;
  v85 = type metadata accessor for UUID();
  v7 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v92 = &v67 - v10;
  __chkstk_darwin(v11);
  v82 = &v67 - v12;
  v13 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v67 - v14;
  v90 = type metadata accessor for CRLBoardIdentifier(0);
  v70 = *(v90 - 8);
  __chkstk_darwin(v90);
  v68 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v67 = &v67 - v18;
  v93 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
    sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v19 = v95[3];
    v93 = v95[2];
    v20 = v95[4];
    v21 = v95[5];
    v22 = v95[6];
  }

  else
  {
    v23 = -1 << *(v93 + 32);
    v19 = v93 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v22 = v25 & *(v93 + 56);

    v21 = 0;
  }

  v69 = v20;
  v26 = (v20 + 64) >> 6;
  v84 = (v7 + 56);
  v81 = (v7 + 48);
  v80 = (v7 + 32);
  v79 = (v7 + 16);
  v78 = CKCurrentUserDefaultName;
  v72 = (v7 + 8);
  v87 = (v70 + 48);
  v88 = (v70 + 56);
  v71 = _swiftEmptyArrayStorage;
  v77 = v15;
  v89 = v26;
  v86 = v19;
LABEL_8:
  v27 = v21;
  v28 = v22;
  v29 = v85;
  if (v93 < 0)
  {
    while (1)
    {
      v33 = __CocoaSet.Iterator.next()();
      if (!v33)
      {
        goto LABEL_46;
      }

      v95[9] = v33;
      sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
      swift_dynamicCast();
      v32 = v95[0];
      v21 = v27;
      v22 = v28;
      v29 = v85;
      if (!v95[0])
      {
        goto LABEL_46;
      }

LABEL_17:
      v34 = [v32 zoneName];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      v38._countAndFlagsBits = 0x5F6472616F42;
      v38._object = 0xE600000000000000;
      v39 = String.hasPrefix(_:)(v38);
      if (v39)
      {
        v95[0] = 95;
        v95[1] = 0xE100000000000000;
        __chkstk_darwin(v39);
        *(&v67 - 2) = v95;
        sub_100E8FE90(sub_100C31CAC, (&v67 - 4), v35, v37);
        if (v40)
        {

          (*v84)(v94, 1, 1, v29);
LABEL_23:
          v19 = v86;
          sub_10000CAAC(v94, &qword_1019F6990, &qword_10146D2F0);
          v42 = 1;
          goto LABEL_38;
        }

        v41 = String.index(after:)();
        sub_100DCBC88(v41, v35, v37);
        v91 = v32;

        v15 = v77;
        v29 = v85;
        static String._fromSubstring(_:)();

        v32 = v91;
        UUID.init(uuidString:)();
      }

      else
      {
        (*v84)(v94, 1, 1, v29);
      }

      if ((*v81)(v94, 1, v29) == 1)
      {
        goto LABEL_23;
      }

      v43 = v82;
      v75 = *v80;
      v75(v82, v94, v29);
      v44 = *v79;
      (*v79)(v92, v43, v29);
      v45 = [v32 ownerName];
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v48 = v47;

      v50 = v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49;
      v76 = v2;
      if (v50)
      {
        break;
      }

      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
        goto LABEL_31;
      }

      v52 = [v32 ownerName];
      v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v54;

LABEL_32:
      v91 = v32;
      v44(v83, v92, v29);
      if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
      {
        v57 = v22;

        v15 = v77;
LABEL_36:

        v53 = 0;
        v55 = 0xE000000000000000;
        goto LABEL_37;
      }

      v57 = v22;
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v15 = v77;
      if (v58)
      {
        goto LABEL_36;
      }

LABEL_37:
      v59 = *v72;
      (*v72)(v92, v29);
      v60 = v73;
      v75(v73, v83, v29);
      v61 = (v60 + *(v74 + 20));
      *v61 = v53;
      v61[1] = v55;
      sub_100025668(v60, v15, type metadata accessor for CRLBoardIdentifierStorage);
      v59(v82, v29);
      v42 = 0;
      v2 = v76;
      v19 = v86;
      v22 = v57;
      v32 = v91;
LABEL_38:
      v62 = v90;
      (*v88)(v15, v42, 1, v90);

      if ((*v87)(v15, 1, v62) != 1)
      {
        v63 = v67;
        sub_100025668(v15, v67, type metadata accessor for CRLBoardIdentifier);
        sub_100025668(v63, v68, type metadata accessor for CRLBoardIdentifier);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_100B36BE4(0, v71[2] + 1, 1, v71);
        }

        v65 = v71[2];
        v64 = v71[3];
        if (v65 >= v64 >> 1)
        {
          v71 = sub_100B36BE4((v64 > 1), v65 + 1, 1, v71);
        }

        v66 = v71;
        v71[2] = v65 + 1;
        sub_100025668(v68, v66 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v65, type metadata accessor for CRLBoardIdentifier);
        v26 = v89;
        goto LABEL_8;
      }

      sub_10000CAAC(v15, &unk_1019F52D0, &unk_10147C1C0);
      v27 = v21;
      v28 = v22;
      v26 = v89;
      if ((v93 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_31:
    v53 = 0;
    v55 = 0xE000000000000000;
    goto LABEL_32;
  }

LABEL_9:
  v30 = v27;
  v31 = v28;
  v21 = v27;
  if (v28)
  {
LABEL_13:
    v22 = (v31 - 1) & v31;
    v32 = *(*(v93 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v31)))));
    if (v32)
    {
      goto LABEL_17;
    }

LABEL_46:
    sub_100035F90(v93);
  }

  else
  {
    while (1)
    {
      v21 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v21 >= v26)
      {
        goto LABEL_46;
      }

      v31 = *(v19 + 8 * v21);
      ++v30;
      if (v31)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}
uint64_t sub_10011E64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AA8, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &unk_100379B78);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011E6EC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CC28, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &unk_100379B00);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011E758(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CC28, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &unk_100379B00);

  return Message.hash(into:)();
}

uint64_t sub_10011E7D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004332F8);
  sub_100005DF0(v0, qword_1004332F8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ST_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ST_ROUTE_GUIDANCE";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ST_OTHER";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 0xFFFFLL;
  *v14 = "ST_ANY";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011EA84()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433310);
  sub_100005DF0(v0, qword_100433310);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = -1;
  *v6 = "LI_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 0;
  *v10 = "LI_NONE";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 25;
  *v12 = "LI_LOW";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 50;
  *v14 = "LI_MEDIUM";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 75;
  *v15 = "LI_HIGH";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011EDAC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433328);
  sub_100005DF0(v0, qword_100433328);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "raw_unmodified_course";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "raw_unmodified_course_unc";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "is_static";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_mounted";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

int *sub_10011F138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v6[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v3 + v6[7]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v3 + v6[8]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10011F2C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423AA0, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData, &unk_100379D30);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011F364(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D8E0, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData, &unk_100379CB8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011F3D0(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D8E0, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData, &unk_100379CB8);

  return Message.hash(into:)();
}

uint64_t sub_10011F474()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433340);
  sub_100005DF0(v0, qword_100433340);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "std";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011F6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t sub_10011F790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v7 = result;
  if (*(v4 + *(result + 20) + 8))
  {
    if (v5)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  if ((*(v4 + *(v7 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10011F8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A98, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample, &unk_100379E98);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10011F970(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D8F8, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample, &unk_100379E20);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10011F9DC(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D8F8, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample, &unk_100379E20);

  return Message.hash(into:)();
}

uint64_t sub_10011FA80()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433358);
  sub_100005DF0(v0, qword_100433358);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10036D790;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "constellation";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "sat_id";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "elevation_deg";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "azimuth_deg";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "l1_cn0";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "l5_cn0";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "is_tracked";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_phase_tracked";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10011FE14(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result <= 6)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_5;
        }

        if (result == 7 || result == 8)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
          sub_100198E44();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }

        else if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10011FFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
  v10 = result;
  if (*(v5 + result[5]) == 7)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100198E44();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_10013B19C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  sub_10001677C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  sub_100016874(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  sub_1000167F8(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100120210@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 7;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  *(a2 + a1[11]) = 2;
  *(a2 + v13) = 2;
  return result;
}

uint64_t sub_1001202CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A90, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, &unk_10037A000);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012036C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D910, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, &unk_100379F88);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001203D8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D910, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, &unk_100379F88);

  return Message.hash(into:)();
}

uint64_t sub_10012047C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433370);
  sub_100005DF0(v0, qword_100433370);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1003743F0;
  v4 = v118 + v3;
  v5 = v118 + v3 + v1[14];
  *(v118 + v3) = 1;
  *v5 = "odometer";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v118 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "delta_distance";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v118 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "delta_distance_accuracy";
  *(v11 + 1) = 23;
  v11[16] = 2;
  v8();
  v12 = (v118 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timestamp_gps";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v118 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "mach_time";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v118 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "horz_unc_semi_maj";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v118 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "horz_unc_semi_min";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v118 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "horz_unc_semi_maj_az";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v118 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "is_fitness_match";
  *(v22 + 8) = 16;
  *(v22 + 16) = 2;
  v8();
  v23 = (v118 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "match_quality";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v118 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "match_coordinate";
  *(v26 + 1) = 16;
  v26[16] = 2;
  v8();
  v27 = (v118 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "match_course";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v118 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "match_form_of_way";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v8();
  v31 = (v118 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "match_road_class";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v118 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "match_shifted";
  *(v34 + 1) = 13;
  v34[16] = 2;
  v8();
  v35 = (v118 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "pressure";
  *(v36 + 1) = 8;
  v36[16] = 2;
  v8();
  v37 = v118 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "undulation_model";
  *(v37 + 8) = 16;
  *(v37 + 16) = 2;
  v8();
  v38 = (v118 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "undulation";
  *(v39 + 1) = 10;
  v39[16] = 2;
  v8();
  v40 = (v118 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "special_coordinate";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v8();
  v42 = (v118 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "special_horizontal_accuracy";
  *(v43 + 1) = 27;
  v43[16] = 2;
  v8();
  v44 = (v118 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "mach_continuous_time";
  *(v45 + 1) = 20;
  v45[16] = 2;
  v8();
  v46 = (v118 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 22;
  *v47 = "origin_device";
  *(v47 + 1) = 13;
  v47[16] = 2;
  v8();
  v48 = (v118 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 23;
  *v49 = "is_matcher_propagated_coordinates";
  *(v49 + 1) = 33;
  v49[16] = 2;
  v8();
  v50 = (v118 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 24;
  *v51 = "map_matcher_data";
  *(v51 + 1) = 16;
  v51[16] = 2;
  v8();
  v52 = (v118 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 25;
  *v53 = "slope";
  *(v53 + 1) = 5;
  v53[16] = 2;
  v8();
  v54 = (v118 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 26;
  *v55 = "max_abs_slope";
  *(v55 + 1) = 13;
  v55[16] = 2;
  v8();
  v56 = (v118 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 27;
  *v57 = "ground_altitude";
  *(v57 + 1) = 15;
  v57[16] = 2;
  v8();
  v58 = (v118 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 28;
  *v59 = "ground_altitude_uncertainty";
  *(v59 + 1) = 27;
  v59[16] = 2;
  v8();
  v60 = (v118 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 29;
  *v61 = "smoothed_gps_altitude";
  *(v61 + 1) = 21;
  v61[16] = 2;
  v8();
  v62 = (v118 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 30;
  *v63 = "smoothed_gps_altitude_uncertainty";
  *(v63 + 1) = 33;
  v63[16] = 2;
  v8();
  v64 = (v118 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 31;
  *v65 = "is_simulated_or_spoofed";
  *(v65 + 1) = 23;
  v65[16] = 2;
  v8();
  v66 = (v118 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 32;
  *v67 = "raw_horizontal_accuracy";
  *(v67 + 1) = 23;
  v67[16] = 2;
  v8();
  v68 = v118 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 33;
  *v68 = "raw_course_accuracy";
  *(v68 + 8) = 19;
  *(v68 + 16) = 2;
  v8();
  v69 = (v118 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 34;
  *v70 = "is_coordinate_fused";
  *(v70 + 1) = 19;
  v70[16] = 2;
  v8();
  v71 = (v118 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 35;
  *v72 = "fused_coordinate";
  *(v72 + 1) = 16;
  v72[16] = 2;
  v8();
  v73 = (v118 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 36;
  *v74 = "fused_horizontal_accuracy";
  *(v74 + 1) = 25;
  v74[16] = 2;
  v8();
  v75 = (v118 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 37;
  *v76 = "fused_reference_frame";
  *(v76 + 1) = 21;
  v76[16] = 2;
  v8();
  v77 = (v118 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 38;
  *v78 = "fused_course";
  *(v78 + 1) = 12;
  v78[16] = 2;
  v8();
  v79 = (v118 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 39;
  *v80 = "fused_course_accuracy";
  *(v80 + 1) = 21;
  v80[16] = 2;
  v8();
  v81 = (v118 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 40;
  *v82 = "estimated_worst_case_error";
  *(v82 + 1) = 26;
  v82[16] = 2;
  v8();
  v83 = (v118 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 41;
  *v84 = "pre_fusing_altitude";
  *(v84 + 1) = 19;
  v84[16] = 2;
  v8();
  v85 = (v118 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 42;
  *v86 = "pre_fusing_vertical_accuracy";
  *(v86 + 1) = 28;
  v86[16] = 2;
  v8();
  v87 = (v118 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 43;
  *v88 = "is_coordinate_fused_with_vl";
  *(v88 + 1) = 27;
  v88[16] = 2;
  v8();
  v89 = (v118 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 44;
  *v90 = "fused_altitude";
  *(v90 + 1) = 14;
  v90[16] = 2;
  v8();
  v91 = (v118 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 45;
  *v92 = "fused_vertical_accuracy";
  *(v92 + 1) = 23;
  v92[16] = 2;
  v8();
  v93 = (v118 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 46;
  *v94 = "satellite_visibility_report";
  *(v94 + 1) = 27;
  v94[16] = 2;
  v8();
  v95 = (v118 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 47;
  *v96 = "gnss_content";
  *(v96 + 1) = 12;
  v96[16] = 2;
  v8();
  v97 = (v118 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 48;
  *v98 = "raw_altitude";
  *(v98 + 1) = 12;
  v98[16] = 2;
  v8();
  v99 = (v118 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 49;
  *v100 = "estimated_position_context_state";
  *(v100 + 1) = 32;
  v100[16] = 2;
  v8();
  v101 = (v118 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 50;
  *v102 = "estimated_position_context_state_probability_indoor";
  *(v102 + 1) = 51;
  v102[16] = 2;
  v8();
  v103 = (v118 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 51;
  *v104 = "estimated_position_context_state_probability_outdoor";
  *(v104 + 1) = 52;
  v104[16] = 2;
  v8();
  v105 = (v118 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 52;
  *v106 = "map_matcher_type";
  *(v106 + 1) = 16;
  v106[16] = 2;
  v8();
  v107 = (v118 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 53;
  *v108 = "is_route_hints_triggered_map_matching";
  *(v108 + 1) = 37;
  v108[16] = 2;
  v8();
  v109 = (v118 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 54;
  *v110 = "loi_location_source_accuracy";
  *(v110 + 1) = 28;
  v110[16] = 2;
  v8();
  v111 = (v118 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 55;
  *v112 = "batched_location_fix_type";
  *(v112 + 1) = 25;
  v112[16] = 2;
  v8();
  v113 = (v118 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 56;
  *v114 = "is_wifi_fix_with_associated_ap";
  *(v114 + 1) = 30;
  v114[16] = 2;
  v8();
  v115 = (v118 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 57;
  *v116 = "is_gnss_from_raven_estimators";
  *(v116 + 1) = 29;
  v116[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100121430()
{
  type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 92) = 0;
  *(v0 + 96) = 1;
  *(v0 + 100) = 0;
  *(v0 + 104) = 1;
  *(v0 + 108) = 0;
  *(v0 + 112) = 1;
  *(v0 + 113) = 1026;
  v1 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
  *v6 = 0;
  *(v6 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted) = 2;
  v7 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel) = 4;
  v9 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
  *v9 = 0;
  *(v9 + 4) = 1;
  v3(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate, 1, 1, v2);
  v10 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice) = 3;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates) = 2;
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed) = 2;
  v20 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused) = 2;
  v3(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate, 1, 1, v2);
  v22 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
  *v22 = 0;
  *(v22 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame) = 3;
  v23 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
  *v25 = 0;
  *(v25 + 8) = 1;
  v26 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
  *v27 = 0;
  *(v27 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl) = 2;
  v28 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
  *v29 = 0;
  *(v29 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent) = 3;
  v30 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  result = (*(*(v31 - 8) + 56))(v0 + v30, 1, 1, v31);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState) = 3;
  v33 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
  *v33 = 0;
  *(v33 + 8) = 1;
  v34 = v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
  *v34 = 0;
  *(v34 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType) = 4;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy) = 3;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType) = 5;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp) = 2;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators) = 2;
  qword_100443D38 = v0;
  return result;
}

uint64_t sub_100121908()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate, &qword_10041CA38, &qword_100374468);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure, &qword_10041CA40, &qword_100374470);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate, &qword_10041CA38, &qword_100374468);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData, &qword_10041CA48, &qword_100374478);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate, &qword_10041CA38, &qword_100374468);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude, &qword_10041CA50, &qword_100374480);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100121A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate._StorageClass(0);
    v9 = swift_allocObject();
    sub_100172D1C(v8);

    *(v5 + v6) = v9;
  }

  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v11 & 1) != 0)
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
      case 12:
      case 20:
      case 21:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 32:
      case 33:
      case 36:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 44:
      case 45:
      case 50:
      case 51:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        goto LABEL_26;
      case 6:
      case 7:
      case 8:
      case 18:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        goto LABEL_26;
      case 9:
      case 15:
      case 23:
      case 31:
      case 34:
      case 43:
      case 53:
      case 56:
      case 57:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        goto LABEL_26;
      case 10:
        swift_beginAccess();
        sub_100198760();
        goto LABEL_25;
      case 11:
      case 19:
      case 35:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
        v12 = &qword_10041D8B8;
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate;
        v14 = &unk_100379998;
        goto LABEL_19;
      case 13:
      case 14:
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_26;
      case 16:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
        v12 = &qword_10041D8F8;
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample;
        v14 = &unk_100379E20;
        goto LABEL_19;
      case 17:
        swift_beginAccess();
        sub_10019870C();
        goto LABEL_25;
      case 22:
        swift_beginAccess();
        sub_1001986B8();
        goto LABEL_25;
      case 24:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
        v12 = &qword_10041D8E0;
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData;
        v14 = &unk_100379CB8;
        goto LABEL_19;
      case 37:
        swift_beginAccess();
        sub_100198EEC();
        goto LABEL_25;
      case 46:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
        sub_100015EDC(&qword_10041D910, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, &unk_100379F88);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_26;
      case 47:
        swift_beginAccess();
        sub_100198664();
        goto LABEL_25;
      case 48:
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
        v12 = &qword_10041D938;
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo;
        v14 = &unk_10037A370;
LABEL_19:
        sub_100015EDC(v12, v13, v14);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_26;
      case 49:
        swift_beginAccess();
        sub_100198610();
        goto LABEL_25;
      case 52:
        swift_beginAccess();
        sub_1001985BC();
        goto LABEL_25;
      case 54:
        swift_beginAccess();
        sub_100198568();
        goto LABEL_25;
      case 55:
        swift_beginAccess();
        sub_100198DF0();
LABEL_25:
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_26:
        swift_endAccess();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_100122244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0) + 20));
  result = swift_beginAccess();
  if ((v9[24] & 1) == 0)
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (!v4)
  {
    swift_beginAccess();
    if ((v9[40] & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((v9[56] & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    swift_beginAccess();
    if ((v9[72] & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100122DD4(v9, a1, a2, a3);
    sub_10016E1D4(v9, a1, a2, a3, 6);
    sub_10016E26C(v9, a1, a2, a3, 7);
    sub_10016E304(v9, a1, a2, a3, 8);
    sub_100122E58(v9, a1, a2, a3);
    sub_100122EE0(v9, a1, a2, a3);
    sub_100122F7C(v9, a1, a2, a3);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse, 12);
    sub_10014F29C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay, 13, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    sub_10014F29C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass, 14, &dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:));
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted, 15);
    sub_1001231A4(v9, a1, a2, a3);
    sub_100123C6C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel, sub_10019870C, 17, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.UndulationModelType);
    sub_100089FE0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation, 18);
    sub_1001233CC(v9, a1, a2, a3);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy, 20);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime, 21);
    sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice, sub_1001986B8, 22, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.ClientLocationOriginDeviceType);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates, 23);
    sub_1001235F4(v9, a1, a2, a3);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope, 25);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope, 26);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude, 27);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty, 28);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude, 29);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty, 30);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed, 31);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy, 32);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy, 33);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused, 34);
    sub_10012381C(v9, a1, a2, a3);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy, 36);
    sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame, sub_100198EEC, 37, &type metadata for CLP_LogEntry_PrivateData_ClientLocationReferenceFrameType);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse, 38);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy, 39);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError, 40);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude, 41);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy, 42);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl, 43);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude, 44);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy, 45);
    v11 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
    swift_beginAccess();
    if (*(*&v9[v11] + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo(0);
      sub_100015EDC(&qword_10041D910, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, &unk_100379F88);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent, sub_100198664, 47, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.GnssContent);
    sub_100123A44(v9, a1, a2, a3);
    sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState, sub_100198610, 49, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.PositionContextStateType);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor, 50);
    sub_10009ACD8(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor, 51);
    sub_100123C6C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType, sub_1001985BC, 52, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.MapMatcherType);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching, 53);
    sub_100141760(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy, sub_100198568, 54, &type metadata for CLP_LogEntry_PrivateData_DaemonLocationPrivate.LoiLocationSourceAccuracy);
    sub_100123D2C(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType, sub_100198DF0, 55, &type metadata for CLP_LogEntry_PrivateData_BatchedLocationFixType);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp, 56);
    sub_100016FA0(v9, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators, 57);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100122DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 88) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100122E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 113) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100122EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 114) != 4)
  {
    sub_100198760();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100122F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA38, &qword_100374468);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA38, &qword_100374468);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &unk_100379998);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

uint64_t sub_1001231A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA40, &qword_100374470);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA40, &qword_100374470);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA40, &qword_100374470);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
  sub_100015EDC(&qword_10041D8F8, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample, &unk_100379E20);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
}

uint64_t sub_1001233CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA38, &qword_100374468);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA38, &qword_100374468);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &unk_100379998);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

uint64_t sub_1001235F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA48, &qword_100374478);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA48, &qword_100374478);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA48, &qword_100374478);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
  sub_100015EDC(&qword_10041D8E0, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData, &unk_100379CB8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
}

uint64_t sub_10012381C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA38, &qword_100374468);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA38, &qword_100374468);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
  sub_100015EDC(&qword_10041D8B8, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate, &unk_100379998);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
}

uint64_t sub_100123A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA50, &qword_100374480);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA50, &qword_100374480);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA50, &qword_100374480);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
  sub_100015EDC(&qword_10041D938, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, &unk_10037A370);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
}

uint64_t sub_100123C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 4)
  {
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100123D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 5)
  {
    a6(result);
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100123E30(uint64_t a1, uint64_t a2)
{
  v377 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v375 = *(v377 - 8);
  __chkstk_darwin(v377);
  v376 = &v360 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v372 = sub_100024A2C(&qword_100423DC0, &qword_100383028);
  __chkstk_darwin(v372);
  v378 = &v360 - v5;
  v6 = sub_100024A2C(&qword_10041CA50, &qword_100374480);
  v7 = __chkstk_darwin(v6 - 8);
  v374 = &v360 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v373 = &v360 - v9;
  v367 = type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData(0);
  v365 = *(v367 - 8);
  __chkstk_darwin(v367);
  v366 = &v360 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = sub_100024A2C(&qword_100423DC8, &qword_100383030);
  __chkstk_darwin(v362);
  v368 = &v360 - v11;
  v12 = sub_100024A2C(&qword_10041CA48, &qword_100374478);
  v13 = __chkstk_darwin(v12 - 8);
  v364 = &v360 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v363 = &v360 - v15;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_PressureSample(0);
  v383 = *(v16 - 8);
  __chkstk_darwin(v16);
  v382 = &v360 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100024A2C(&qword_100423DD0, &qword_100383038);
  __chkstk_darwin(v18);
  v384 = &v360 - v19;
  v20 = sub_100024A2C(&qword_10041CA40, &qword_100374470);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v360 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v360 - v24;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate(0);
  v387 = *(v26 - 8);
  v388 = v26;
  __chkstk_darwin(v26);
  v385 = &v360 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = sub_100024A2C(&qword_100423CD0, &qword_100382F38);
  v28 = __chkstk_darwin(v386);
  v371 = &v360 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v381 = &v360 - v31;
  __chkstk_darwin(v30);
  v33 = &v360 - v32;
  v34 = sub_100024A2C(&qword_10041CA38, &qword_100374468);
  v35 = __chkstk_darwin(v34 - 8);
  v370 = &v360 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v369 = &v360 - v38;
  v39 = __chkstk_darwin(v37);
  v379 = &v360 - v40;
  v41 = __chkstk_darwin(v39);
  v380 = &v360 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = &v360 - v44;
  __chkstk_darwin(v43);
  v47 = &v360 - v46;
  swift_beginAccess();
  v48 = *(a1 + 16);
  v389 = a1;
  LOBYTE(a1) = *(a1 + 24);
  swift_beginAccess();
  v49 = *(a2 + 24);
  if (a1)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v48 != *(a2 + 16))
    {
      v49 = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v390 = a2;
  v50 = v389;
  swift_beginAccess();
  v51 = *(v50 + 32);
  v52 = *(v50 + 40);
  swift_beginAccess();
  v53 = *(v390 + 40);
  if (v52)
  {
    if (!*(v390 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v51 != *(v390 + 32))
    {
      v53 = 1;
    }

    if (v53)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v54 = *(v50 + 48);
  v55 = *(v50 + 56);
  swift_beginAccess();
  v56 = *(v390 + 56);
  if (v55)
  {
    if (!*(v390 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v54 != *(v390 + 48))
    {
      v56 = 1;
    }

    if (v56)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v57 = *(v50 + 64);
  v58 = *(v50 + 72);
  swift_beginAccess();
  v59 = *(v390 + 72);
  if (v58)
  {
    if (!*(v390 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v57 != *(v390 + 64))
    {
      v59 = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v60 = *(v50 + 80);
  v61 = *(v50 + 88);
  swift_beginAccess();
  v62 = *(v390 + 88);
  if (v61)
  {
    if (!*(v390 + 88))
    {
      return 0;
    }
  }

  else
  {
    if (v60 != *(v390 + 80))
    {
      v62 = 1;
    }

    if (v62)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v63 = *(v50 + 92);
  v64 = *(v50 + 96);
  v361 = (v390 + 92);
  swift_beginAccess();
  v65 = *(v390 + 96);
  if (v64)
  {
    if (!*(v390 + 96))
    {
      return 0;
    }
  }

  else
  {
    if (v63 != *v361)
    {
      v65 = 1;
    }

    if (v65)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v66 = *(v50 + 100);
  v67 = *(v50 + 104);
  v361 = (v390 + 100);
  swift_beginAccess();
  v68 = *(v390 + 104);
  if (v67)
  {
    if (!*(v390 + 104))
    {
      return 0;
    }
  }

  else
  {
    if (v66 != *v361)
    {
      v68 = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v69 = *(v50 + 108);
  v70 = *(v50 + 112);
  v361 = (v390 + 108);
  swift_beginAccess();
  v71 = *(v390 + 112);
  if (v70)
  {
    if (!*(v390 + 112))
    {
      return 0;
    }
  }

  else
  {
    if (v69 != *v361)
    {
      v71 = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v72 = *(v50 + 113);
  swift_beginAccess();
  v73 = *(v390 + 113);
  if (v72 == 2)
  {
    if (v73 != 2)
    {
      return 0;
    }
  }

  else if (v73 == 2 || ((v72 ^ v73) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v74 = *(v50 + 114);
  swift_beginAccess();
  v75 = *(v390 + 114);
  if (v74 == 4)
  {
    if (v75 != 4)
    {
      return 0;
    }

LABEL_59:
    v77 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    v78 = v389;
    swift_beginAccess();
    sub_10000A0A4(v78 + v77, v47, &qword_10041CA38, &qword_100374468);
    v361 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCoordinate;
    v79 = v390;
    swift_beginAccess();
    v80 = *(v386 + 48);
    sub_10000A0A4(v47, v33, &qword_10041CA38, &qword_100374468);
    v81 = v361 + v79;
    v361 = v80;
    sub_10000A0A4(v81, v80 + v33, &qword_10041CA38, &qword_100374468);
    v83 = v387 + 48;
    v82 = *(v387 + 48);
    if (v82(v33, 1, v388) == 1)
    {

      v84 = v390;

      sub_1000059A8(v47, &qword_10041CA38, &qword_100374468);
      v85 = v82(v361 + v33, 1, v388);
      v86 = v389;
      if (v85 == 1)
      {
        v360 = v82;
        v387 = v83;
        sub_1000059A8(v33, &qword_10041CA38, &qword_100374468);
        goto LABEL_67;
      }
    }

    else
    {
      sub_10000A0A4(v33, v45, &qword_10041CA38, &qword_100374468);
      if (v82(v361 + v33, 1, v388) != 1)
      {
        v360 = v82;
        v387 = v83;
        v87 = v385;
        sub_1000112AC(v361 + v33, v385, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);

        v88 = v390;

        LODWORD(v361) = sub_100184D80(v45, v87, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        sub_100015F24(v87, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        sub_1000059A8(v47, &qword_10041CA38, &qword_100374468);
        v89 = v45;
        v84 = v88;
        v86 = v389;
        sub_100015F24(v89, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
        sub_1000059A8(v33, &qword_10041CA38, &qword_100374468);
        if ((v361 & 1) == 0)
        {
          goto LABEL_94;
        }

LABEL_67:
        v90 = v86 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
        swift_beginAccess();
        v91 = *v90;
        v92 = *(v90 + 8);
        v93 = v84 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchCourse;
        swift_beginAccess();
        if (v92)
        {
          if ((*(v93 + 8) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v93 + 8) & 1) != 0 || v91 != *v93)
        {
          goto LABEL_94;
        }

        v94 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
        swift_beginAccess();
        v95 = *v94;
        v96 = *(v94 + 4);
        v97 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchFormOfWay;
        swift_beginAccess();
        if (v96)
        {
          if ((*(v97 + 4) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v97 + 4) & 1) != 0 || v95 != *v97)
        {
          goto LABEL_94;
        }

        v98 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
        swift_beginAccess();
        v99 = *v98;
        v100 = *(v98 + 4);
        v101 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchRoadClass;
        swift_beginAccess();
        if (v100)
        {
          if ((*(v101 + 4) & 1) == 0)
          {
            goto LABEL_94;
          }
        }

        else if ((*(v101 + 4) & 1) != 0 || v99 != *v101)
        {
          goto LABEL_94;
        }

        v102 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
        v103 = v389;
        swift_beginAccess();
        v104 = *(v103 + v102);
        v105 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__matchShifted;
        v106 = v390;
        swift_beginAccess();
        v107 = *(v106 + v105);
        if (v104 == 2)
        {
          if (v107 != 2)
          {
            goto LABEL_94;
          }
        }

        else if (v107 == 2 || ((v104 ^ v107) & 1) != 0)
        {
          goto LABEL_94;
        }

        v108 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
        v109 = v389;
        swift_beginAccess();
        sub_10000A0A4(v109 + v108, v25, &qword_10041CA40, &qword_100374470);
        v110 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__pressure;
        v111 = v390;
        swift_beginAccess();
        v112 = *(v18 + 48);
        v113 = v384;
        sub_10000A0A4(v25, v384, &qword_10041CA40, &qword_100374470);
        sub_10000A0A4(v111 + v110, v113 + v112, &qword_10041CA40, &qword_100374470);
        v114 = *(v383 + 48);
        if (v114(v113, 1, v16) == 1)
        {
          sub_1000059A8(v25, &qword_10041CA40, &qword_100374470);
          if (v114(v384 + v112, 1, v16) == 1)
          {
            sub_1000059A8(v384, &qword_10041CA40, &qword_100374470);
            goto LABEL_98;
          }
        }

        else
        {
          v115 = v384;
          sub_10000A0A4(v384, v23, &qword_10041CA40, &qword_100374470);
          if (v114(v115 + v112, 1, v16) != 1)
          {
            v119 = v384;
            v120 = v382;
            sub_1000112AC(v384 + v112, v382, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            v121 = sub_100184D80(v23, v120, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            sub_100015F24(v120, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            sub_1000059A8(v25, &qword_10041CA40, &qword_100374470);
            sub_100015F24(v23, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
            sub_1000059A8(v119, &qword_10041CA40, &qword_100374470);
            if ((v121 & 1) == 0)
            {
              goto LABEL_94;
            }

LABEL_98:
            v122 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
            v123 = v389;
            swift_beginAccess();
            v124 = *(v123 + v122);
            v125 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulationModel;
            v126 = v390;
            swift_beginAccess();
            v127 = *(v126 + v125);
            if (v124 == 4)
            {
              if (v127 != 4)
              {
                goto LABEL_94;
              }
            }

            else if (v127 == 4 || v124 != v127)
            {
              goto LABEL_94;
            }

            v128 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
            swift_beginAccess();
            v129 = *v128;
            v130 = *(v128 + 4);
            v131 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__undulation;
            swift_beginAccess();
            if (v130)
            {
              if ((*(v131 + 4) & 1) == 0)
              {
                goto LABEL_94;
              }
            }

            else if ((*(v131 + 4) & 1) != 0 || v129 != *v131)
            {
              goto LABEL_94;
            }

            v132 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
            v133 = v389;
            swift_beginAccess();
            v134 = v380;
            sub_10000A0A4(v133 + v132, v380, &qword_10041CA38, &qword_100374468);
            v135 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialCoordinate;
            v136 = v390;
            swift_beginAccess();
            v137 = *(v386 + 48);
            v138 = v134;
            v139 = v381;
            sub_10000A0A4(v138, v381, &qword_10041CA38, &qword_100374468);
            sub_10000A0A4(v136 + v135, v139 + v137, &qword_10041CA38, &qword_100374468);
            if (v360(v139, 1, v388) == 1)
            {
              sub_1000059A8(v380, &qword_10041CA38, &qword_100374468);
              if (v360(v381 + v137, 1, v388) == 1)
              {
                sub_1000059A8(v381, &qword_10041CA38, &qword_100374468);
                goto LABEL_115;
              }
            }

            else
            {
              v140 = v381;
              sub_10000A0A4(v381, v379, &qword_10041CA38, &qword_100374468);
              if (v360(v140 + v137, 1, v388) != 1)
              {
                v141 = v381;
                v142 = v381 + v137;
                v143 = v385;
                sub_1000112AC(v142, v385, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                v144 = v379;
                v145 = sub_100184D80(v379, v143, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                sub_100015F24(v143, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                sub_1000059A8(v380, &qword_10041CA38, &qword_100374468);
                sub_100015F24(v144, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                sub_1000059A8(v141, &qword_10041CA38, &qword_100374468);
                if ((v145 & 1) == 0)
                {
                  goto LABEL_94;
                }

LABEL_115:
                v146 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
                swift_beginAccess();
                v147 = *v146;
                v148 = *(v146 + 8);
                v149 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__specialHorizontalAccuracy;
                swift_beginAccess();
                if (v148)
                {
                  if ((*(v149 + 8) & 1) == 0)
                  {
                    goto LABEL_94;
                  }
                }

                else if ((*(v149 + 8) & 1) != 0 || v147 != *v149)
                {
                  goto LABEL_94;
                }

                v150 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
                swift_beginAccess();
                v151 = *v150;
                v152 = *(v150 + 8);
                v153 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__machContinuousTime;
                swift_beginAccess();
                if (v152)
                {
                  if ((*(v153 + 8) & 1) == 0)
                  {
                    goto LABEL_94;
                  }
                }

                else if ((*(v153 + 8) & 1) != 0 || v151 != *v153)
                {
                  goto LABEL_94;
                }

                v154 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
                v155 = v389;
                swift_beginAccess();
                v156 = *(v155 + v154);
                v157 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__originDevice;
                v158 = v390;
                swift_beginAccess();
                v159 = *(v158 + v157);
                if (v156 == 3)
                {
                  if (v159 != 3)
                  {
                    goto LABEL_94;
                  }
                }

                else if (v159 == 3 || v156 != v159)
                {
                  goto LABEL_94;
                }

                v160 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
                v161 = v389;
                swift_beginAccess();
                v162 = *(v161 + v160);
                v163 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isMatcherPropagatedCoordinates;
                v164 = v390;
                swift_beginAccess();
                v165 = *(v164 + v163);
                if (v162 == 2)
                {
                  if (v165 != 2)
                  {
                    goto LABEL_94;
                  }
                }

                else if (v165 == 2 || ((v162 ^ v165) & 1) != 0)
                {
                  goto LABEL_94;
                }

                v166 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
                v167 = v389;
                swift_beginAccess();
                v168 = v363;
                sub_10000A0A4(v167 + v166, v363, &qword_10041CA48, &qword_100374478);
                v169 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherData;
                v170 = v390;
                swift_beginAccess();
                v171 = *(v362 + 48);
                v172 = v168;
                v173 = v368;
                sub_10000A0A4(v172, v368, &qword_10041CA48, &qword_100374478);
                sub_10000A0A4(v170 + v169, v173 + v171, &qword_10041CA48, &qword_100374478);
                v174 = *(v365 + 48);
                if (v174(v173, 1, v367) == 1)
                {
                  sub_1000059A8(v363, &qword_10041CA48, &qword_100374478);
                  if (v174(v368 + v171, 1, v367) == 1)
                  {
                    sub_1000059A8(v368, &qword_10041CA48, &qword_100374478);
                    goto LABEL_142;
                  }
                }

                else
                {
                  v175 = v368;
                  sub_10000A0A4(v368, v364, &qword_10041CA48, &qword_100374478);
                  if (v174(v175 + v171, 1, v367) != 1)
                  {
                    v176 = v368;
                    v177 = v368 + v171;
                    v178 = v366;
                    sub_1000112AC(v177, v366, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    v179 = v364;
                    v180 = sub_100185170(v364, v178);
                    sub_100015F24(v178, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    sub_1000059A8(v363, &qword_10041CA48, &qword_100374478);
                    sub_100015F24(v179, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                    sub_1000059A8(v176, &qword_10041CA48, &qword_100374478);
                    if ((v180 & 1) == 0)
                    {
                      goto LABEL_94;
                    }

LABEL_142:
                    v181 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
                    swift_beginAccess();
                    v182 = *v181;
                    v183 = *(v181 + 8);
                    v184 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__slope;
                    swift_beginAccess();
                    if (v183)
                    {
                      if ((*(v184 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v184 + 8) & 1) != 0 || v182 != *v184)
                    {
                      goto LABEL_94;
                    }

                    v185 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
                    swift_beginAccess();
                    v186 = *v185;
                    v187 = *(v185 + 8);
                    v188 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__maxAbsSlope;
                    swift_beginAccess();
                    if (v187)
                    {
                      if ((*(v188 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v188 + 8) & 1) != 0 || v186 != *v188)
                    {
                      goto LABEL_94;
                    }

                    v189 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
                    swift_beginAccess();
                    v190 = *v189;
                    v191 = *(v189 + 8);
                    v192 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitude;
                    swift_beginAccess();
                    if (v191)
                    {
                      if ((*(v192 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v192 + 8) & 1) != 0 || v190 != *v192)
                    {
                      goto LABEL_94;
                    }

                    v193 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
                    swift_beginAccess();
                    v194 = *v193;
                    v195 = *(v193 + 8);
                    v196 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__groundAltitudeUncertainty;
                    swift_beginAccess();
                    if (v195)
                    {
                      if ((*(v196 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v196 + 8) & 1) != 0 || v194 != *v196)
                    {
                      goto LABEL_94;
                    }

                    v197 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
                    swift_beginAccess();
                    v198 = *v197;
                    v199 = *(v197 + 8);
                    v200 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitude;
                    swift_beginAccess();
                    if (v199)
                    {
                      if ((*(v200 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v200 + 8) & 1) != 0 || v198 != *v200)
                    {
                      goto LABEL_94;
                    }

                    v201 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
                    swift_beginAccess();
                    v202 = *v201;
                    v203 = *(v201 + 8);
                    v204 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__smoothedGpsAltitudeUncertainty;
                    swift_beginAccess();
                    if (v203)
                    {
                      if ((*(v204 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v204 + 8) & 1) != 0 || v202 != *v204)
                    {
                      goto LABEL_94;
                    }

                    v205 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
                    v206 = v389;
                    swift_beginAccess();
                    v207 = *(v206 + v205);
                    v208 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isSimulatedOrSpoofed;
                    v209 = v390;
                    swift_beginAccess();
                    v210 = *(v209 + v208);
                    if (v207 == 2)
                    {
                      if (v210 != 2)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if (v210 == 2 || ((v207 ^ v210) & 1) != 0)
                    {
                      goto LABEL_94;
                    }

                    v211 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
                    swift_beginAccess();
                    v212 = *v211;
                    v213 = *(v211 + 8);
                    v214 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawHorizontalAccuracy;
                    swift_beginAccess();
                    if (v213)
                    {
                      if ((*(v214 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v214 + 8) & 1) != 0 || v212 != *v214)
                    {
                      goto LABEL_94;
                    }

                    v215 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
                    swift_beginAccess();
                    v216 = *v215;
                    v217 = *(v215 + 8);
                    v218 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawCourseAccuracy;
                    swift_beginAccess();
                    if (v217)
                    {
                      if ((*(v218 + 8) & 1) == 0)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if ((*(v218 + 8) & 1) != 0 || v216 != *v218)
                    {
                      goto LABEL_94;
                    }

                    v219 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
                    v220 = v389;
                    swift_beginAccess();
                    v221 = *(v220 + v219);
                    v222 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFused;
                    v223 = v390;
                    swift_beginAccess();
                    v224 = *(v223 + v222);
                    if (v221 == 2)
                    {
                      if (v224 != 2)
                      {
                        goto LABEL_94;
                      }
                    }

                    else if (v224 == 2 || ((v221 ^ v224) & 1) != 0)
                    {
                      goto LABEL_94;
                    }

                    v225 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
                    v226 = v389;
                    swift_beginAccess();
                    v227 = v369;
                    sub_10000A0A4(v226 + v225, v369, &qword_10041CA38, &qword_100374468);
                    v228 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCoordinate;
                    v229 = v390;
                    swift_beginAccess();
                    v230 = *(v386 + 48);
                    v231 = v227;
                    v232 = v371;
                    sub_10000A0A4(v231, v371, &qword_10041CA38, &qword_100374468);
                    sub_10000A0A4(v229 + v228, v232 + v230, &qword_10041CA38, &qword_100374468);
                    if (v360(v232, 1, v388) == 1)
                    {
                      sub_1000059A8(v369, &qword_10041CA38, &qword_100374468);
                      if (v360(v371 + v230, 1, v388) == 1)
                      {
                        sub_1000059A8(v371, &qword_10041CA38, &qword_100374468);
LABEL_199:
                        v239 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
                        swift_beginAccess();
                        v240 = *v239;
                        v241 = *(v239 + 8);
                        v242 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedHorizontalAccuracy;
                        swift_beginAccess();
                        if (v241)
                        {
                          if ((*(v242 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v242 + 8) & 1) != 0 || v240 != *v242)
                        {
                          goto LABEL_94;
                        }

                        v243 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
                        v244 = v389;
                        swift_beginAccess();
                        v245 = *(v244 + v243);
                        v246 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedReferenceFrame;
                        v247 = v390;
                        swift_beginAccess();
                        v248 = *(v247 + v246);
                        if (v245 == 3)
                        {
                          if (v248 != 3)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v248 == 3 || v245 != v248)
                        {
                          goto LABEL_94;
                        }

                        v249 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
                        swift_beginAccess();
                        v250 = *v249;
                        v251 = *(v249 + 8);
                        v252 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourse;
                        swift_beginAccess();
                        if (v251)
                        {
                          if ((*(v252 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v252 + 8) & 1) != 0 || v250 != *v252)
                        {
                          goto LABEL_94;
                        }

                        v253 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
                        swift_beginAccess();
                        v254 = *v253;
                        v255 = *(v253 + 8);
                        v256 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedCourseAccuracy;
                        swift_beginAccess();
                        if (v255)
                        {
                          if ((*(v256 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v256 + 8) & 1) != 0 || v254 != *v256)
                        {
                          goto LABEL_94;
                        }

                        v257 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
                        swift_beginAccess();
                        v258 = *v257;
                        v259 = *(v257 + 8);
                        v260 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedWorstCaseError;
                        swift_beginAccess();
                        if (v259)
                        {
                          if ((*(v260 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v260 + 8) & 1) != 0 || v258 != *v260)
                        {
                          goto LABEL_94;
                        }

                        v261 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
                        swift_beginAccess();
                        v262 = *v261;
                        v263 = *(v261 + 8);
                        v264 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingAltitude;
                        swift_beginAccess();
                        if (v263)
                        {
                          if ((*(v264 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v264 + 8) & 1) != 0 || v262 != *v264)
                        {
                          goto LABEL_94;
                        }

                        v265 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
                        swift_beginAccess();
                        v266 = *v265;
                        v267 = *(v265 + 8);
                        v268 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__preFusingVerticalAccuracy;
                        swift_beginAccess();
                        if (v267)
                        {
                          if ((*(v268 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v268 + 8) & 1) != 0 || v266 != *v268)
                        {
                          goto LABEL_94;
                        }

                        v269 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
                        v270 = v389;
                        swift_beginAccess();
                        v271 = *(v270 + v269);
                        v272 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isCoordinateFusedWithVl;
                        v273 = v390;
                        swift_beginAccess();
                        v274 = *(v273 + v272);
                        if (v271 == 2)
                        {
                          if (v274 != 2)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v274 == 2 || ((v271 ^ v274) & 1) != 0)
                        {
                          goto LABEL_94;
                        }

                        v275 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
                        swift_beginAccess();
                        v276 = *v275;
                        v277 = *(v275 + 8);
                        v278 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedAltitude;
                        swift_beginAccess();
                        if (v277)
                        {
                          if ((*(v278 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v278 + 8) & 1) != 0 || v276 != *v278)
                        {
                          goto LABEL_94;
                        }

                        v279 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
                        swift_beginAccess();
                        v280 = *v279;
                        v281 = *(v279 + 8);
                        v282 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__fusedVerticalAccuracy;
                        swift_beginAccess();
                        if (v281)
                        {
                          if ((*(v282 + 8) & 1) == 0)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if ((*(v282 + 8) & 1) != 0 || v280 != *v282)
                        {
                          goto LABEL_94;
                        }

                        v283 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
                        v284 = v389;
                        swift_beginAccess();
                        v285 = *(v284 + v283);
                        v286 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__satelliteVisibilityReport;
                        v287 = v390;
                        swift_beginAccess();
                        v288 = *(v287 + v286);

                        LOBYTE(v287) = sub_1001719FC(v285, v288, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, type metadata accessor for CLP_LogEntry_PrivateData_ClientSatelliteInfo, sub_10017AB2C);

                        if ((v287 & 1) == 0)
                        {
                          goto LABEL_94;
                        }

                        v289 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
                        v290 = v389;
                        swift_beginAccess();
                        v291 = *(v290 + v289);
                        v292 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__gnssContent;
                        v293 = v390;
                        swift_beginAccess();
                        v294 = *(v293 + v292);
                        if (v291 == 3)
                        {
                          if (v294 != 3)
                          {
                            goto LABEL_94;
                          }
                        }

                        else if (v294 == 3 || v291 != v294)
                        {
                          goto LABEL_94;
                        }

                        v295 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
                        v296 = v389;
                        swift_beginAccess();
                        v297 = v373;
                        sub_10000A0A4(v296 + v295, v373, &qword_10041CA50, &qword_100374480);
                        v298 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__rawAltitude;
                        v299 = v390;
                        swift_beginAccess();
                        v300 = *(v372 + 48);
                        v301 = v297;
                        v302 = v378;
                        sub_10000A0A4(v301, v378, &qword_10041CA50, &qword_100374480);
                        sub_10000A0A4(v299 + v298, v302 + v300, &qword_10041CA50, &qword_100374480);
                        v303 = *(v375 + 48);
                        if (v303(v302, 1, v377) == 1)
                        {
                          sub_1000059A8(v373, &qword_10041CA50, &qword_100374480);
                          if (v303(v378 + v300, 1, v377) == 1)
                          {
                            sub_1000059A8(v378, &qword_10041CA50, &qword_100374480);
LABEL_262:
                            v310 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
                            v311 = v389;
                            swift_beginAccess();
                            v312 = *(v311 + v310);
                            v313 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextState;
                            v314 = v390;
                            swift_beginAccess();
                            v315 = *(v314 + v313);
                            if (v312 == 3)
                            {
                              if (v315 != 3)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v315 == 3 || v312 != v315)
                            {
                              goto LABEL_94;
                            }

                            v316 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
                            swift_beginAccess();
                            v317 = *v316;
                            v318 = *(v316 + 8);
                            v319 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityIndoor;
                            swift_beginAccess();
                            if (v318)
                            {
                              if ((*(v319 + 8) & 1) == 0)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if ((*(v319 + 8) & 1) != 0 || v317 != *v319)
                            {
                              goto LABEL_94;
                            }

                            v320 = v389 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
                            swift_beginAccess();
                            v321 = *v320;
                            v322 = *(v320 + 8);
                            v323 = v390 + OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__estimatedPositionContextStateProbabilityOutdoor;
                            swift_beginAccess();
                            if (v322)
                            {
                              if ((*(v323 + 8) & 1) == 0)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if ((*(v323 + 8) & 1) != 0 || v321 != *v323)
                            {
                              goto LABEL_94;
                            }

                            v324 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
                            v325 = v389;
                            swift_beginAccess();
                            v326 = *(v325 + v324);
                            v327 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__mapMatcherType;
                            v328 = v390;
                            swift_beginAccess();
                            v329 = *(v328 + v327);
                            if (v326 == 4)
                            {
                              if (v329 != 4)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v329 == 4 || v326 != v329)
                            {
                              goto LABEL_94;
                            }

                            v330 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
                            v331 = v389;
                            swift_beginAccess();
                            v332 = *(v331 + v330);
                            v333 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isRouteHintsTriggeredMapMatching;
                            v334 = v390;
                            swift_beginAccess();
                            v335 = *(v334 + v333);
                            if (v332 == 2)
                            {
                              if (v335 != 2)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v335 == 2 || ((v332 ^ v335) & 1) != 0)
                            {
                              goto LABEL_94;
                            }

                            v336 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
                            v337 = v389;
                            swift_beginAccess();
                            v338 = *(v337 + v336);
                            v339 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__loiLocationSourceAccuracy;
                            v340 = v390;
                            swift_beginAccess();
                            v341 = *(v340 + v339);
                            if (v338 == 3)
                            {
                              if (v341 != 3)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v341 == 3 || v338 != v341)
                            {
                              goto LABEL_94;
                            }

                            v342 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
                            v343 = v389;
                            swift_beginAccess();
                            v344 = *(v343 + v342);
                            v345 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__batchedLocationFixType;
                            v346 = v390;
                            swift_beginAccess();
                            v347 = *(v346 + v345);
                            if (v344 == 5)
                            {
                              if (v347 != 5)
                              {
                                goto LABEL_94;
                              }
                            }

                            else if (v347 == 5 || v344 != v347)
                            {
                              goto LABEL_94;
                            }

                            v348 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
                            v349 = v389;
                            swift_beginAccess();
                            v350 = *(v349 + v348);
                            v351 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isWifiFixWithAssociatedAp;
                            v352 = v390;
                            swift_beginAccess();
                            v353 = *(v352 + v351);
                            if (v350 != 2)
                            {
                              if (v353 == 2 || ((v350 ^ v353) & 1) != 0)
                              {
                                goto LABEL_94;
                              }

LABEL_302:
                              v354 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
                              v355 = v389;
                              swift_beginAccess();
                              v356 = *(v355 + v354);

                              v357 = OBJC_IVAR____TtCV10ALProtobuf46CLP_LogEntry_PrivateData_DaemonLocationPrivateP33_993346AF53650622B255AB1E3C41340D13_StorageClass__isGnssFromRavenEstimators;
                              v358 = v390;
                              swift_beginAccess();
                              v359 = *(v358 + v357);

                              if (v356 == 2)
                              {
                                if (v359 != 2)
                                {
                                  return 0;
                                }
                              }

                              else if (v359 == 2 || ((v356 ^ v359) & 1) != 0)
                              {
                                return 0;
                              }

                              return 1;
                            }

                            if (v353 == 2)
                            {
                              goto LABEL_302;
                            }

LABEL_94:

                            return 0;
                          }
                        }

                        else
                        {
                          v304 = v378;
                          sub_10000A0A4(v378, v374, &qword_10041CA50, &qword_100374480);
                          if (v303(v304 + v300, 1, v377) != 1)
                          {
                            v305 = v378;
                            v306 = v378 + v300;
                            v307 = v376;
                            sub_1000112AC(v306, v376, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            v308 = v374;
                            v309 = sub_100184E80(v374, v307);
                            sub_100015F24(v307, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            sub_1000059A8(v373, &qword_10041CA50, &qword_100374480);
                            sub_100015F24(v308, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                            sub_1000059A8(v305, &qword_10041CA50, &qword_100374480);
                            if ((v309 & 1) == 0)
                            {
                              goto LABEL_94;
                            }

                            goto LABEL_262;
                          }

                          sub_1000059A8(v373, &qword_10041CA50, &qword_100374480);
                          sub_100015F24(v374, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo);
                        }

                        v116 = &qword_100423DC0;
                        v117 = &qword_100383028;
                        v118 = v378;
LABEL_93:
                        sub_1000059A8(v118, v116, v117);
                        goto LABEL_94;
                      }
                    }

                    else
                    {
                      v233 = v371;
                      sub_10000A0A4(v371, v370, &qword_10041CA38, &qword_100374468);
                      if (v360(v233 + v230, 1, v388) != 1)
                      {
                        v234 = v371;
                        v235 = v371 + v230;
                        v236 = v385;
                        sub_1000112AC(v235, v385, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        v237 = v370;
                        v238 = sub_100184D80(v370, v236, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        sub_100015F24(v236, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        sub_1000059A8(v369, &qword_10041CA38, &qword_100374468);
                        sub_100015F24(v237, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                        sub_1000059A8(v234, &qword_10041CA38, &qword_100374468);
                        if ((v238 & 1) == 0)
                        {
                          goto LABEL_94;
                        }

                        goto LABEL_199;
                      }

                      sub_1000059A8(v369, &qword_10041CA38, &qword_100374468);
                      sub_100015F24(v370, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
                    }

                    v116 = &qword_100423CD0;
                    v117 = &qword_100382F38;
                    v118 = v371;
                    goto LABEL_93;
                  }

                  sub_1000059A8(v363, &qword_10041CA48, &qword_100374478);
                  sub_100015F24(v364, type metadata accessor for CLP_LogEntry_PrivateData_MapMatcherData);
                }

                v116 = &qword_100423DC8;
                v117 = &qword_100383030;
                v118 = v368;
                goto LABEL_93;
              }

              sub_1000059A8(v380, &qword_10041CA38, &qword_100374468);
              sub_100015F24(v379, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
            }

            v116 = &qword_100423CD0;
            v117 = &qword_100382F38;
            v118 = v381;
            goto LABEL_93;
          }

          sub_1000059A8(v25, &qword_10041CA40, &qword_100374470);
          sub_100015F24(v23, type metadata accessor for CLP_LogEntry_PrivateData_PressureSample);
        }

        v116 = &qword_100423DD0;
        v117 = &qword_100383038;
        v118 = v384;
        goto LABEL_93;
      }

      sub_1000059A8(v47, &qword_10041CA38, &qword_100374468);
      sub_100015F24(v45, type metadata accessor for CLP_LogEntry_PrivateData_ClientLocationCoordinate);
    }

    sub_1000059A8(v33, &qword_100423CD0, &qword_100382F38);
    goto LABEL_94;
  }

  result = 0;
  if (v75 != 4 && v74 == v75)
  {
    goto LABEL_59;
  }

  return result;
}

uint64_t sub_100126878(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A88, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &unk_10037A168);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100126918(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041CC30, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &unk_10037A0F0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100126984(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041CC30, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &unk_10037A0F0);

  return Message.hash(into:)();
}

uint64_t sub_100126A00()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433388);
  sub_100005DF0(v0, qword_100433388);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MQ_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MQ_NONE";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MQ_STRONG";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MQ_AMBIGUOUS";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100126CB0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004333A0);
  sub_100005DF0(v0, qword_1004333A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = -1;
  *v6 = "UM_INVALID";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 0;
  *v10 = "UM_UNKNOWN";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 1;
  *v12 = "UM_DMA";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 2;
  *v14 = "UM_EGM08";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100126F60()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004333B8);
  sub_100005DF0(v0, qword_1004333B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OD_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OD_LOCAL";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "OD_REMOTE";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001271DC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004333D0);
  sub_100005DF0(v0, qword_1004333D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GNSS_CONTENT_UNKNOWN";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GNSS_CONTENT_NONE";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "GNSS_CONTENT_PRESENT";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100127458()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004333E8);
  sub_100005DF0(v0, qword_1004333E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "PC_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PC_INDOOR";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "PC_OUTDOOR";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001276D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433400);
  sub_100005DF0(v0, qword_100433400);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MM_TYPE_UNKNOWN";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MM_TYPE_VEHICLE";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MM_TYPE_PEDESTRIAN";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MM_TYPE_BICYCLE";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100127984()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433418);
  sub_100005DF0(v0, qword_100433418);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOI_LOCATION_SOURCE_ACCURACY_UNKNOWN";
  *(v6 + 8) = 36;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LOI_LOCATION_SOURCE_ACCURACY_LOW";
  *(v10 + 1) = 32;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "LOI_LOCATION_SOURCE_ACCURACY_HIGH";
  *(v11 + 8) = 33;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_100127C00()
{
  v0._countAndFlagsBits = 0x64757469746C412ELL;
  v0._object = 0xED00006F666E4965;
  String.append(_:)(v0);
  qword_100433430 = 0xD00000000000002ELL;
  *algn_100433438 = 0x800000010039F5E0;
}

uint64_t *sub_100127C78()
{
  if (qword_100443D78 != -1)
  {
    swift_once();
  }

  return &qword_100433430;
}

uint64_t sub_100127CF0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433440);
  sub_100005DF0(v0, qword_100433440);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "altitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "vertical_accuracy";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "undulation";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "undulation_model";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100127F98(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 3)
        {
          goto LABEL_4;
        }

        if (result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
          sub_10019870C();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else if (result == 1 || result == 2)
      {
LABEL_4:
        type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_1001280BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo(0);
  v6 = result;
  if (*(v3 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v6[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(v3 + v6[8]) != 4)
  {
    sub_10019870C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10012823C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a2 + v8) = 4;
  return result;
}

uint64_t sub_1001282F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A80, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, &unk_10037A3E8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100128394(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D938, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, &unk_10037A370);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100128400(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D938, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate.AltitudeInfo, &unk_10037A370);

  return Message.hash(into:)();
}

uint64_t sub_1001284A4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433458);
  sub_100005DF0(v0, qword_100433458);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "location_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "active";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001286BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
        sub_100198E98();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1001287A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v6 = result;
  if (*(v3 + *(result + 20)) == 14)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100198E98();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100128904(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A78, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus, &unk_10037A550);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001289A4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D950, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus, &unk_10037A4D8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100128A10(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D950, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus, &unk_10037A4D8);

  return Message.hash(into:)();
}

uint64_t sub_100128AB4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433470);
  sub_100005DF0(v0, qword_100433470);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speed";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mach_continuous_time";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mach_absolute_time";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100128E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A70, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed, &unk_10037A6B8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100128EC4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D968, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed, &unk_10037A640);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100128F30(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D968, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed, &unk_10037A640);

  return Message.hash(into:)();
}

uint64_t sub_100128FD4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433488);
  sub_100005DF0(v0, qword_100433488);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "true_heading";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001292BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A68, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading, &unk_10037A820);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012935C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D980, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading, &unk_10037A7A8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001293C8(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D980, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading, &unk_10037A7A8);

  return Message.hash(into:)();
}

uint64_t sub_10012946C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004334A0);
  sub_100005DF0(v0, qword_1004334A0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "when";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "where";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012967C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t sub_100129738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v6 = result;
  if (*(v3 + *(result + 20) + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v3 + *(v6 + 24) + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100129844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1001298B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A60, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable, &unk_10037A988);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100129958(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D998, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable, &unk_10037A910);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001299C4(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D998, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable, &unk_10037A910);

  return Message.hash(into:)();
}

uint64_t sub_100129A68()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004334B8);
  sub_100005DF0(v0, qword_1004334B8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speed";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "uncertainty";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100129CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t sub_100129E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A58, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed, &unk_10037AAF0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100129F08(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D9B0, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed, &unk_10037AA78);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100129F74(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D9B0, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed, &unk_10037AA78);

  return Message.hash(into:)();
}

uint64_t sub_10012A018()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004334D0);
  sub_100005DF0(v0, qword_1004334D0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10036D7A0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "event_receipt_time";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "client";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "location";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "location_private";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "status";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "active";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "odometer";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "signal_quality";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "vehicle_speed";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "vehicle_heading";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "xtra_file_available";
  *(v26 + 1) = 19;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "motion_detected";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "location_derived_speed";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012A4F8()
{
  type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active) = 2;
  v10 = v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality) = 3;
  v11 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v14 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v16 - 8) + 56))(v0 + v15, 1, 1, v16);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected) = 3;
  v17 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  result = (*(*(v18 - 8) + 56))(v0 + v17, 1, 1, v18);
  qword_100443DC0 = v0;
  return result;
}

uint64_t sub_10012A7D4(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  __chkstk_darwin(v3 - 8);
  v84 = &v69 - v4;
  v5 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  __chkstk_darwin(v5 - 8);
  v83 = &v69 - v6;
  v7 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  __chkstk_darwin(v7 - 8);
  v82 = &v69 - v8;
  v9 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  __chkstk_darwin(v9 - 8);
  v81 = &v69 - v10;
  v11 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  __chkstk_darwin(v11 - 8);
  v80 = &v69 - v12;
  v13 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  __chkstk_darwin(v13 - 8);
  v76 = &v69 - v14;
  v15 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  __chkstk_darwin(v15 - 8);
  v72 = &v69 - v16;
  v17 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v17 - 8);
  v19 = &v69 - v18;
  v20 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v21 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v21 - 8) + 56))(v1 + v20, 1, 1, v21);
  v22 = v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v22 = 0;
  *(v22 + 4) = 1;
  v23 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v69 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  v26 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  (*(*(v26 - 8) + 56))(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v70 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  v28 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v71 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active) = 2;
  v29 = v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  *v29 = 0;
  *(v29 + 8) = 1;
  v73 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality) = 3;
  v30 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v74 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  v31 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  (*(*(v31 - 8) + 56))(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v75 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  v33 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  (*(*(v33 - 8) + 56))(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v77 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  v35 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  (*(*(v35 - 8) + 56))(v1 + v34, 1, 1, v35);
  v78 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected) = 3;
  v36 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v79 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  v37 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  (*(*(v37 - 8) + 56))(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v38, v19, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v19, v1 + v20, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v39 = a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  LODWORD(v20) = *v39;
  LOBYTE(v39) = *(v39 + 4);
  swift_beginAccess();
  *v22 = v20;
  *(v22 + 4) = v39;
  v40 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  v41 = v72;
  sub_10000A0A4(a1 + v40, v72, &qword_10041CA58, &qword_100374488);
  swift_beginAccess();
  sub_10000AD64(v41, v1 + v23, &qword_10041CA58, &qword_100374488);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v43 = v76;
  sub_10000A0A4(a1 + v42, v76, &qword_10041CA60, &qword_100374490);
  v44 = v69;
  swift_beginAccess();
  sub_10000AD64(v43, v1 + v44, &qword_10041CA60, &qword_100374490);
  swift_endAccess();
  v45 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v46 = v80;
  sub_10000A0A4(a1 + v45, v80, &qword_10041CA68, &qword_100374498);
  v47 = v70;
  swift_beginAccess();
  sub_10000AD64(v46, v1 + v47, &qword_10041CA68, &qword_100374498);
  swift_endAccess();
  v48 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  LOBYTE(v48) = *(a1 + v48);
  v49 = v71;
  swift_beginAccess();
  *(v1 + v49) = v48;
  v50 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  swift_beginAccess();
  *v29 = v51;
  *(v29 + 8) = v50;
  v52 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v73;
  swift_beginAccess();
  *(v1 + v53) = v52;
  v54 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  v55 = v81;
  sub_10000A0A4(a1 + v54, v81, &qword_10041CA70, &qword_1003744A0);
  v56 = v74;
  swift_beginAccess();
  sub_10000AD64(v55, v1 + v56, &qword_10041CA70, &qword_1003744A0);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  v58 = v82;
  sub_10000A0A4(a1 + v57, v82, &qword_10041CA78, &qword_1003744A8);
  v59 = v75;
  swift_beginAccess();
  sub_10000AD64(v58, v1 + v59, &qword_10041CA78, &qword_1003744A8);
  swift_endAccess();
  v60 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v61 = v83;
  sub_10000A0A4(a1 + v60, v83, &qword_10041CA80, &qword_1003744B0);
  v62 = v77;
  swift_beginAccess();
  sub_10000AD64(v61, v1 + v62, &qword_10041CA80, &qword_1003744B0);
  swift_endAccess();
  v63 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  LOBYTE(v63) = *(a1 + v63);
  v64 = v78;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v66 = v84;
  sub_10000A0A4(a1 + v65, v84, &qword_10041CA88, &qword_1003744B8);

  v67 = v79;
  swift_beginAccess();
  sub_10000AD64(v66, v1 + v67, &qword_10041CA88, &qword_1003744B8);
  swift_endAccess();
  return v1;
}

uint64_t sub_10012B254()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location, &qword_10041CA58, &qword_100374488);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate, &qword_10041CA60, &qword_100374490);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status, &qword_10041CA68, &qword_100374498);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed, &qword_10041CA70, &qword_1003744A0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading, &qword_10041CA78, &qword_1003744A8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable, &qword_10041CA80, &qword_1003744B0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed, &qword_10041CA88, &qword_1003744B8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10012B3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_Location._StorageClass(0);
    v9 = swift_allocObject();
    sub_10012A7D4(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
          v13 = &unk_100378FC0;
          v14 = &qword_10041C7B8;
          goto LABEL_21;
        case 2:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
          goto LABEL_22;
        case 3:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation;
          v13 = &unk_100379B00;
          v14 = &qword_10041CC28;
          goto LABEL_21;
        case 4:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate;
          v13 = &unk_10037A0F0;
          v14 = &qword_10041CC30;
          goto LABEL_21;
        case 5:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus;
          v13 = &unk_10037A4D8;
          v14 = &qword_10041D950;
          goto LABEL_21;
        case 6:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_22;
        case 7:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_22;
        case 8:
          swift_beginAccess();
          sub_100198514();
          goto LABEL_15;
        case 9:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed;
          v13 = &unk_10037A640;
          v14 = &qword_10041D968;
          goto LABEL_21;
        case 10:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading;
          v13 = &unk_10037A7A8;
          v14 = &qword_10041D980;
          goto LABEL_21;
        case 11:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable;
          v13 = &unk_10037A910;
          v14 = &qword_10041D998;
          goto LABEL_21;
        case 12:
          swift_beginAccess();
          sub_1001984C0();
LABEL_15:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_22;
        case 13:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
          v12 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed;
          v13 = &unk_10037AA78;
          v14 = &qword_10041D9B0;
LABEL_21:
          sub_100015EDC(v14, v12, v13);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_22:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10012B8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_Location(0) + 20));
  result = sub_10012BB3C(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
    swift_beginAccess();
    if ((*(v10 + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    sub_10012BD64(v8, a1, a2, a3);
    sub_10012BF8C(v8, a1, a2, a3);
    sub_10012C1B4(v8, a1, a2, a3);
    sub_100016FA0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active, 6);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer, 7);
    sub_100141760(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality, sub_100198514, 8, &type metadata for CLP_LogEntry_PrivateData_Location.SignalQualityType);
    sub_10012C3DC(v8, a1, a2, a3);
    sub_10012C604(v8, a1, a2, a3);
    sub_10012C82C(v8, a1, a2, a3);
    sub_100141760(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected, sub_1001984C0, 12, &type metadata for CLP_LogEntry_PrivateData_Location.MotionDetectedType);
    sub_10012CA54(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10012BB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_10012BD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA58, &qword_100374488);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA58, &qword_100374488);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  sub_100015EDC(&qword_10041CC28, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &unk_100379B00);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
}

uint64_t sub_10012BF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA60, &qword_100374490);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA60, &qword_100374490);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  sub_100015EDC(&qword_10041CC30, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &unk_10037A0F0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
}

uint64_t sub_10012C1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA68, &qword_100374498);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA68, &qword_100374498);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  sub_100015EDC(&qword_10041D950, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus, &unk_10037A4D8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
}

uint64_t sub_10012C3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA70, &qword_1003744A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA70, &qword_1003744A0);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  sub_100015EDC(&qword_10041D968, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed, &unk_10037A640);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
}

uint64_t sub_10012C604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA78, &qword_1003744A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA78, &qword_1003744A8);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  sub_100015EDC(&qword_10041D980, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading, &unk_10037A7A8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
}

uint64_t sub_10012C82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA80, &qword_1003744B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA80, &qword_1003744B0);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  sub_100015EDC(&qword_10041D998, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable, &unk_10037A910);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
}

uint64_t sub_10012CA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA88, &qword_1003744B8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA88, &qword_1003744B8);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
  sub_100015EDC(&qword_10041D9B0, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed, &unk_10037AA78);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
}

BOOL sub_10012CCC0(uint64_t a1, uint64_t a2)
{
  v249 = a2;
  v203 = type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed(0);
  v200 = *(v203 - 8);
  __chkstk_darwin(v203);
  v197 = &v197 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_100024A2C(&qword_100423DD8, &qword_100383040);
  __chkstk_darwin(v198);
  v204 = &v197 - v4;
  v5 = sub_100024A2C(&qword_10041CA88, &qword_1003744B8);
  v6 = __chkstk_darwin(v5 - 8);
  v199 = &v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v202 = &v197 - v8;
  v212 = type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable(0);
  v208 = *(v212 - 8);
  __chkstk_darwin(v212);
  v201 = &v197 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_100024A2C(&qword_100423DE0, &qword_100383048);
  __chkstk_darwin(v206);
  v216 = &v197 - v10;
  v11 = sub_100024A2C(&qword_10041CA80, &qword_1003744B0);
  v12 = __chkstk_darwin(v11 - 8);
  v207 = &v197 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v211 = &v197 - v14;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading(0);
  v214 = *(v15 - 8);
  v215 = v15;
  __chkstk_darwin(v15);
  v205 = &v197 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_100024A2C(&qword_100423DE8, &qword_100383050);
  __chkstk_darwin(v213);
  v219 = &v197 - v17;
  v18 = sub_100024A2C(&qword_10041CA78, &qword_1003744A8);
  v19 = __chkstk_darwin(v18 - 8);
  v209 = &v197 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v218 = &v197 - v21;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed(0);
  v221 = *(v22 - 8);
  v222 = v22;
  __chkstk_darwin(v22);
  v210 = &v197 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_100024A2C(&qword_100423DF0, &qword_100383058);
  __chkstk_darwin(v220);
  v223 = &v197 - v24;
  v25 = sub_100024A2C(&qword_10041CA70, &qword_1003744A0);
  v26 = __chkstk_darwin(v25 - 8);
  v217 = &v197 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v231 = &v197 - v28;
  v29 = type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus(0);
  v228 = *(v29 - 8);
  v229 = v29;
  __chkstk_darwin(v29);
  v224 = &v197 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_100024A2C(&qword_100423DF8, &qword_100383060);
  __chkstk_darwin(v227);
  v230 = &v197 - v31;
  v32 = sub_100024A2C(&qword_10041CA68, &qword_100374498);
  v33 = __chkstk_darwin(v32 - 8);
  v225 = &v197 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v232 = &v197 - v35;
  v36 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
  v236 = *(v36 - 8);
  v237 = v36;
  __chkstk_darwin(v36);
  v226 = &v197 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_100024A2C(&qword_100423E00, &qword_100383068);
  __chkstk_darwin(v235);
  v238 = &v197 - v38;
  v39 = sub_100024A2C(&qword_10041CA60, &qword_100374490);
  v40 = __chkstk_darwin(v39 - 8);
  v234 = &v197 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v239 = &v197 - v42;
  v43 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
  v242 = *(v43 - 8);
  v243 = v43;
  __chkstk_darwin(v43);
  v233 = &v197 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_100024A2C(&qword_100423E08, &unk_100383070);
  __chkstk_darwin(v241);
  v244 = &v197 - v45;
  v46 = sub_100024A2C(&qword_10041CA58, &qword_100374488);
  v47 = __chkstk_darwin(v46 - 8);
  v240 = &v197 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v246 = &v197 - v49;
  v248 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v50 = *(v248 - 8);
  __chkstk_darwin(v248);
  v245 = &v197 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v53 = v52 - 8;
  __chkstk_darwin(v52);
  v55 = &v197 - v54;
  v56 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v57 = __chkstk_darwin(v56 - 8);
  v247 = &v197 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v60 = &v197 - v59;
  v61 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v61, v60, &qword_10041CA30, &qword_100374460);
  v62 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v63 = v249;
  swift_beginAccess();
  v64 = *(v53 + 56);
  sub_10000A0A4(v60, v55, &qword_10041CA30, &qword_100374460);
  v65 = v63 + v62;
  v66 = v248;
  sub_10000A0A4(v65, &v55[v64], &qword_10041CA30, &qword_100374460);
  v67 = *(v50 + 48);
  if (v67(v55, 1, v66) == 1)
  {

    sub_1000059A8(v60, &qword_10041CA30, &qword_100374460);
    if (v67(&v55[v64], 1, v66) == 1)
    {
      sub_1000059A8(v55, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    v69 = &qword_100423CE0;
    v70 = &qword_100393E90;
    v71 = v55;
LABEL_7:
    sub_1000059A8(v71, v69, v70);
    goto LABEL_8;
  }

  v68 = v247;
  sub_10000A0A4(v55, v247, &qword_10041CA30, &qword_100374460);
  if (v67(&v55[v64], 1, v66) == 1)
  {

    sub_1000059A8(v60, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v68, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v73 = v245;
  sub_1000112AC(&v55[v64], v245, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v74 = sub_1001853C4(v68, v73, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v73, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v60, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v68, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v55, &qword_10041CA30, &qword_100374460);
  if ((v74 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v75 = (a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v76 = *v75;
  v77 = *(v75 + 4);
  v78 = v63 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  if (v77)
  {
    v79 = v246;
    if ((*(v78 + 4) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v79 = v246;
    if ((*(v78 + 4) & 1) != 0 || v76 != *v78)
    {
      goto LABEL_8;
    }
  }

  v80 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  sub_10000A0A4(a1 + v80, v79, &qword_10041CA58, &qword_100374488);
  v81 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__location;
  swift_beginAccess();
  v82 = *(v241 + 48);
  v83 = v244;
  sub_10000A0A4(v79, v244, &qword_10041CA58, &qword_100374488);
  sub_10000A0A4(v63 + v81, v83 + v82, &qword_10041CA58, &qword_100374488);
  v84 = v243;
  v85 = *(v242 + 48);
  if (v85(v83, 1, v243) == 1)
  {
    sub_1000059A8(v79, &qword_10041CA58, &qword_100374488);
    if (v85(v83 + v82, 1, v84) == 1)
    {
      sub_1000059A8(v83, &qword_10041CA58, &qword_100374488);
      goto LABEL_25;
    }

LABEL_21:
    v69 = &qword_100423E08;
    v70 = &unk_100383070;
LABEL_31:
    v71 = v83;
    goto LABEL_7;
  }

  v86 = v240;
  sub_10000A0A4(v83, v240, &qword_10041CA58, &qword_100374488);
  if (v85(v83 + v82, 1, v84) == 1)
  {
    sub_1000059A8(v246, &qword_10041CA58, &qword_100374488);
    sub_100015F24(v86, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
    goto LABEL_21;
  }

  v87 = v84;
  v88 = v233;
  sub_1000112AC(v83 + v82, v233, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  v89 = *(v87 + 20);
  v90 = *(v86 + v89);
  v91 = *(v88 + v89);
  if (v90 != v91)
  {

    v92 = sub_10011D6AC(v90, v91);

    if ((v92 & 1) == 0)
    {
      v123 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation;
      sub_100015F24(v88, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
      v124 = &qword_10041CA58;
      v125 = &qword_100374488;
      sub_1000059A8(v246, &qword_10041CA58, &qword_100374488);
      v126 = v240;
LABEL_48:
      sub_100015F24(v126, v123);
      v71 = v83;
      v69 = v124;
      v70 = v125;
      goto LABEL_7;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v93 = v240;
  v94 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v88, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  sub_1000059A8(v246, &qword_10041CA58, &qword_100374488);
  sub_100015F24(v93, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation);
  sub_1000059A8(v83, &qword_10041CA58, &qword_100374488);
  if ((v94 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v95 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v96 = v239;
  sub_10000A0A4(a1 + v95, v239, &qword_10041CA60, &qword_100374490);
  v97 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationPrivate;
  swift_beginAccess();
  v98 = *(v235 + 48);
  v99 = v238;
  sub_10000A0A4(v96, v238, &qword_10041CA60, &qword_100374490);
  v100 = v63 + v97;
  v83 = v99;
  sub_10000A0A4(v100, v99 + v98, &qword_10041CA60, &qword_100374490);
  v101 = *(v236 + 48);
  v102 = v99;
  v103 = v237;
  if (v101(v102, 1, v237) == 1)
  {
    sub_1000059A8(v96, &qword_10041CA60, &qword_100374490);
    if (v101(v83 + v98, 1, v103) == 1)
    {
      sub_1000059A8(v83, &qword_10041CA60, &qword_100374490);
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v104 = v234;
  sub_10000A0A4(v83, v234, &qword_10041CA60, &qword_100374490);
  if (v101(v83 + v98, 1, v103) == 1)
  {
    sub_1000059A8(v239, &qword_10041CA60, &qword_100374490);
    sub_100015F24(v104, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
LABEL_30:
    v69 = &qword_100423E00;
    v70 = &qword_100383068;
    goto LABEL_31;
  }

  v105 = v103;
  v106 = v226;
  sub_1000112AC(v83 + v98, v226, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  v107 = *(v105 + 20);
  v108 = *(v104 + v107);
  v109 = *(v106 + v107);
  if (v108 != v109)
  {

    v110 = sub_100123E30(v108, v109);

    if ((v110 & 1) == 0)
    {
      v123 = type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate;
      sub_100015F24(v106, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
      v124 = &qword_10041CA60;
      v125 = &qword_100374490;
      sub_1000059A8(v239, &qword_10041CA60, &qword_100374490);
      v126 = v234;
      goto LABEL_48;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v111 = v234;
  v112 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_100015F24(v106, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  sub_1000059A8(v239, &qword_10041CA60, &qword_100374490);
  sub_100015F24(v111, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate);
  sub_1000059A8(v83, &qword_10041CA60, &qword_100374490);
  if ((v112 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_35:
  v113 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v114 = v232;
  sub_10000A0A4(a1 + v113, v232, &qword_10041CA68, &qword_100374498);
  v115 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__status;
  swift_beginAccess();
  v116 = *(v227 + 48);
  v117 = v230;
  sub_10000A0A4(v114, v230, &qword_10041CA68, &qword_100374498);
  v118 = v117;
  sub_10000A0A4(v63 + v115, v117 + v116, &qword_10041CA68, &qword_100374498);
  v119 = v229;
  v120 = *(v228 + 48);
  if (v120(v117, 1, v229) == 1)
  {
    sub_1000059A8(v114, &qword_10041CA68, &qword_100374498);
    v121 = v120(v117 + v116, 1, v119);
    v122 = v231;
    if (v121 == 1)
    {
      sub_1000059A8(v117, &qword_10041CA68, &qword_100374498);
      goto LABEL_44;
    }

LABEL_41:
    v69 = &qword_100423DF8;
    v70 = &qword_100383060;
LABEL_42:
    v71 = v118;
    goto LABEL_7;
  }

  v127 = v225;
  sub_10000A0A4(v117, v225, &qword_10041CA68, &qword_100374498);
  v128 = v120(v117 + v116, 1, v119);
  v122 = v231;
  if (v128 == 1)
  {
    sub_1000059A8(v232, &qword_10041CA68, &qword_100374498);
    sub_100015F24(v127, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
    goto LABEL_41;
  }

  v129 = v117 + v116;
  v130 = v224;
  sub_1000112AC(v129, v224, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  v131 = sub_10017B6B0(v127, v130);
  sub_100015F24(v130, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  sub_1000059A8(v232, &qword_10041CA68, &qword_100374498);
  sub_100015F24(v127, type metadata accessor for CLP_LogEntry_PrivateData_TechnologyStatus);
  sub_1000059A8(v117, &qword_10041CA68, &qword_100374498);
  if ((v131 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_44:
  v132 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  v133 = *(a1 + v132);
  v134 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__active;
  swift_beginAccess();
  v135 = *(v63 + v134);
  if (v133 == 2)
  {
    if (v135 != 2)
    {
      goto LABEL_8;
    }
  }

  else if (v135 == 2 || ((v133 ^ v135) & 1) != 0)
  {
    goto LABEL_8;
  }

  v136 = a1 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  swift_beginAccess();
  v137 = *v136;
  v138 = *(v136 + 8);
  v139 = v63 + OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__odometer;
  swift_beginAccess();
  if (v138)
  {
    if ((*(v139 + 8) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((*(v139 + 8) & 1) != 0 || v137 != *v139)
  {
    goto LABEL_8;
  }

  v140 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  v141 = *(a1 + v140);
  v142 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__signalQuality;
  swift_beginAccess();
  v143 = *(v63 + v142);
  if (v141 == 3)
  {
    if (v143 != 3)
    {
      goto LABEL_8;
    }
  }

  else if (v143 == 3 || v141 != v143)
  {
    goto LABEL_8;
  }

  v144 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  sub_10000A0A4(a1 + v144, v122, &qword_10041CA70, &qword_1003744A0);
  v145 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleSpeed;
  swift_beginAccess();
  v146 = *(v220 + 48);
  v147 = v223;
  sub_10000A0A4(v122, v223, &qword_10041CA70, &qword_1003744A0);
  v118 = v147;
  sub_10000A0A4(v63 + v145, v147 + v146, &qword_10041CA70, &qword_1003744A0);
  v148 = v222;
  v149 = *(v221 + 48);
  if (v149(v147, 1, v222) == 1)
  {
    sub_1000059A8(v122, &qword_10041CA70, &qword_1003744A0);
    if (v149(v147 + v146, 1, v148) == 1)
    {
      sub_1000059A8(v147, &qword_10041CA70, &qword_1003744A0);
      v151 = v218;
      v150 = v219;
      goto LABEL_68;
    }

    goto LABEL_66;
  }

  v152 = v217;
  sub_10000A0A4(v147, v217, &qword_10041CA70, &qword_1003744A0);
  if (v149(v147 + v146, 1, v148) == 1)
  {
    sub_1000059A8(v122, &qword_10041CA70, &qword_1003744A0);
    sub_100015F24(v152, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
LABEL_66:
    v69 = &qword_100423DF0;
    v70 = &qword_100383058;
    goto LABEL_42;
  }

  v153 = v147 + v146;
  v154 = v210;
  sub_1000112AC(v153, v210, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  v155 = sub_100183B70(v152, v154, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  sub_100015F24(v154, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  sub_1000059A8(v122, &qword_10041CA70, &qword_1003744A0);
  sub_100015F24(v152, type metadata accessor for CLP_LogEntry_PrivateData_VehicleSpeed);
  sub_1000059A8(v147, &qword_10041CA70, &qword_1003744A0);
  v151 = v218;
  v150 = v219;
  if ((v155 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_68:
  v156 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  sub_10000A0A4(a1 + v156, v151, &qword_10041CA78, &qword_1003744A8);
  v157 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicleHeading;
  swift_beginAccess();
  v158 = *(v213 + 48);
  sub_10000A0A4(v151, v150, &qword_10041CA78, &qword_1003744A8);
  sub_10000A0A4(v63 + v157, v150 + v158, &qword_10041CA78, &qword_1003744A8);
  v159 = v215;
  v160 = *(v214 + 48);
  if (v160(v150, 1, v215) == 1)
  {
    sub_1000059A8(v151, &qword_10041CA78, &qword_1003744A8);
    if (v160(v150 + v158, 1, v159) == 1)
    {
      sub_1000059A8(v150, &qword_10041CA78, &qword_1003744A8);
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  v161 = v209;
  sub_10000A0A4(v150, v209, &qword_10041CA78, &qword_1003744A8);
  if (v160(v150 + v158, 1, v159) == 1)
  {
    sub_1000059A8(v151, &qword_10041CA78, &qword_1003744A8);
    sub_100015F24(v161, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
LABEL_73:
    v69 = &qword_100423DE8;
    v70 = &qword_100383050;
    v71 = v150;
    goto LABEL_7;
  }

  v162 = v150 + v158;
  v163 = v205;
  sub_1000112AC(v162, v205, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  v164 = sub_100184D80(v161, v163, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  sub_100015F24(v163, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  sub_1000059A8(v151, &qword_10041CA78, &qword_1003744A8);
  sub_100015F24(v161, type metadata accessor for CLP_LogEntry_PrivateData_VehicleHeading);
  sub_1000059A8(v150, &qword_10041CA78, &qword_1003744A8);
  if ((v164 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_75:
  v165 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v166 = a1;
  v167 = a1 + v165;
  v168 = v211;
  sub_10000A0A4(v167, v211, &qword_10041CA80, &qword_1003744B0);
  v169 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__xtraFileAvailable;
  swift_beginAccess();
  v170 = *(v206 + 48);
  v171 = v216;
  sub_10000A0A4(v168, v216, &qword_10041CA80, &qword_1003744B0);
  v172 = v63;
  sub_10000A0A4(v63 + v169, v171 + v170, &qword_10041CA80, &qword_1003744B0);
  v173 = *(v208 + 48);
  if (v173(v171, 1, v212) == 1)
  {
    sub_1000059A8(v211, &qword_10041CA80, &qword_1003744B0);
    if (v173(v216 + v170, 1, v212) == 1)
    {
      sub_1000059A8(v216, &qword_10041CA80, &qword_1003744B0);
      goto LABEL_83;
    }

LABEL_80:
    sub_1000059A8(v216, &qword_100423DE0, &qword_100383048);
    goto LABEL_8;
  }

  v174 = v216;
  sub_10000A0A4(v216, v207, &qword_10041CA80, &qword_1003744B0);
  if (v173(v174 + v170, 1, v212) == 1)
  {
    sub_1000059A8(v211, &qword_10041CA80, &qword_1003744B0);
    sub_100015F24(v207, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
    goto LABEL_80;
  }

  v175 = v216;
  v176 = v216 + v170;
  v177 = v201;
  sub_1000112AC(v176, v201, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  v178 = v207;
  v179 = sub_10017AE18(v207, v177);
  sub_100015F24(v177, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  sub_1000059A8(v211, &qword_10041CA80, &qword_1003744B0);
  sub_100015F24(v178, type metadata accessor for CLP_LogEntry_PrivateData_XtraFileAvailable);
  sub_1000059A8(v175, &qword_10041CA80, &qword_1003744B0);
  if ((v179 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_83:
  v180 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  v181 = *(v166 + v180);
  v182 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__motionDetected;
  swift_beginAccess();
  v183 = *(v172 + v182);
  if (v181 == 3)
  {
    if (v183 == 3)
    {
      goto LABEL_88;
    }

LABEL_8:

    return 0;
  }

  if (v183 == 3 || v181 != v183)
  {
    goto LABEL_8;
  }

LABEL_88:
  v184 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v185 = v202;
  sub_10000A0A4(v166 + v184, v202, &qword_10041CA88, &qword_1003744B8);
  v186 = OBJC_IVAR____TtCV10ALProtobuf33CLP_LogEntry_PrivateData_LocationP33_993346AF53650622B255AB1E3C41340D13_StorageClass__locationDerivedSpeed;
  swift_beginAccess();
  v187 = *(v198 + 48);
  v188 = v185;
  v189 = v204;
  sub_10000A0A4(v188, v204, &qword_10041CA88, &qword_1003744B8);
  sub_10000A0A4(v172 + v186, v189 + v187, &qword_10041CA88, &qword_1003744B8);
  v190 = *(v200 + 48);
  if (v190(v189, 1, v203) != 1)
  {
    v191 = v204;
    sub_10000A0A4(v204, v199, &qword_10041CA88, &qword_1003744B8);
    if (v190(v191 + v187, 1, v203) == 1)
    {

      sub_1000059A8(v202, &qword_10041CA88, &qword_1003744B8);
      sub_100015F24(v199, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
      goto LABEL_93;
    }

    v192 = v204;
    v193 = v204 + v187;
    v194 = v197;
    sub_1000112AC(v193, v197, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    v195 = v199;
    v196 = sub_1001853C4(v199, v194, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);

    sub_100015F24(v194, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    sub_1000059A8(v202, &qword_10041CA88, &qword_1003744B8);
    sub_100015F24(v195, type metadata accessor for CLP_LogEntry_PrivateData_LocationDerivedSpeed);
    sub_1000059A8(v192, &qword_10041CA88, &qword_1003744B8);
    return (v196 & 1) != 0;
  }

  sub_1000059A8(v202, &qword_10041CA88, &qword_1003744B8);
  if (v190(v204 + v187, 1, v203) != 1)
  {
LABEL_93:
    sub_1000059A8(v204, &qword_100423DD8, &qword_100383040);
    return 0;
  }

  sub_1000059A8(v204, &qword_10041CA88, &qword_1003744B8);
  return 1;
}

uint64_t sub_10012EE38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A50, type metadata accessor for CLP_LogEntry_PrivateData_Location, &unk_10037AC58);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012EED8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D9C8, type metadata accessor for CLP_LogEntry_PrivateData_Location, &unk_10037ABE0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10012EF44(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D9C8, type metadata accessor for CLP_LogEntry_PrivateData_Location, &unk_10037ABE0);

  return Message.hash(into:)();
}

uint64_t sub_10012EFC0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004334E8);
  sub_100005DF0(v0, qword_1004334E8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SQ_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SQ_POOR";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SQ_GOOD";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012F238()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433500);
  sub_100005DF0(v0, qword_100433500);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MD_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MD_YES";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "MD_NO";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012F4DC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433518);
  sub_100005DF0(v0, qword_100433518);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "locations";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locations_private";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10012F6F4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0);
        sub_100015EDC(&qword_10041CC30, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &unk_10037A0F0);
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0);
    sub_100015EDC(&qword_10041CC28, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &unk_100379B00);
LABEL_5:
    v3 = v6;
    dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10012F82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation(0), sub_100015EDC(&qword_10041CC28, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, &unk_100379B00), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate(0), sub_100015EDC(&qword_10041CC30, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, &unk_10037A0F0), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_10012F988(uint64_t *a1, uint64_t *a2)
{
  if ((sub_100170368(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, sub_10011D6AC) & 1) == 0 || (sub_100170368(a1[1], a2[1], type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, sub_100123E30) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations(0);
  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10012FB04@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  a1[1] = &_swiftEmptyArrayStorage;
  return UnknownStorage.init()();
}

uint64_t sub_10012FB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A48, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations, &unk_10037AE10);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10012FC24(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D9E0, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations, &unk_10037AD98);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10012FC90(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D9E0, type metadata accessor for CLP_LogEntry_PrivateData_BatchedLocations, &unk_10037AD98);

  return Message.hash(into:)();
}

uint64_t sub_10012FD0C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_100170368(*a1, *a2, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocation, sub_10011D6AC) & 1) == 0 || (sub_100170368(a1[1], a2[1], type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, type metadata accessor for CLP_LogEntry_PrivateData_DaemonLocationPrivate, sub_100123E30) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_100015EDC(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10012FE64()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433530);
  sub_100005DF0(v0, qword_100433530);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "gnss_mode_of_operation";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "active_gnss_session";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rhythmic_mode";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "current_modes_of_operation";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "has_subscribed_rhythmic_client";
  *(v15 + 8) = 30;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100130140(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 2)
      {
        break;
      }

      switch(result)
      {
        case 3:
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
          sub_100198D48();
LABEL_17:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 4:
          type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
        case 5:
          goto LABEL_14;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result != 1)
    {
      if (result != 2)
      {
        goto LABEL_5;
      }

LABEL_14:
      type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      goto LABEL_5;
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
    sub_100198D9C();
    goto LABEL_17;
  }

  return result;
}

int *sub_1001302B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate(0);
  v10 = result;
  if (*(v5 + result[5]) == 3)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100198D9C();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + v10[6]) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 5)
  {
    sub_100198D48();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  sub_10013FD7C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100130478@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 3;
  *(a2 + v5) = 2;
  v6 = a1[8];
  *(a2 + a1[7]) = 5;
  v7 = a2 + v6;
  *v7 = 0;
  *(v7 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_100130508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A40, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, &unk_10037AF78);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001305A8(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041D9F8, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, &unk_10037AF00);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100130614(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041D9F8, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicGnssStatusUpdate, &unk_10037AF00);

  return Message.hash(into:)();
}

uint64_t sub_100130720(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t sub_1001307AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl(0);
  if (*(v3 + *(result + 20)) == 2)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100130890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  *(a2 + *(a1 + 20)) = 2;
  return result;
}

uint64_t sub_1001308F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A38, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl, &unk_10037B0E0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100130994(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA10, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl, &unk_10037B068);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100130A00(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DA10, type metadata accessor for CLP_LogEntry_PrivateData_RhythmicStreamingControl, &unk_10037B068);

  return Message.hash(into:)();
}

uint64_t sub_100130AA4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433560);
  sub_100005DF0(v0, qword_100433560);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10036D7D0;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "confidence";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "mounted_state";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "mounted_confidence";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "is_standing";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "tilt";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "timestamp_DEPRECATED";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "is_vehicle_connected";
  *(v21 + 1) = 20;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "exit_state";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "est_exit_time";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "start_time_DEPRECATED";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "raw_type";
  *(v28 + 1) = 8;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "raw_confidence";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "timestamp";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "start_time";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "vehicular_confidence";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100131030()
{
  type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 67306568;
  *(v0 + 20) = 2;
  *(v0 + 24) = 0;
  *(v0 + 28) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 41) = 1026;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 73) = 1096;
  v1 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  result = (v3)(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence) = 6;
  qword_100443E00 = v0;
  return result;
}

uint64_t sub_100131168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity._StorageClass(0);
    v9 = swift_allocObject();
    sub_1001745A0(v8);

    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v11 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 12:
          swift_beginAccess();
          sub_100198BF8();
          goto LABEL_16;
        case 2:
        case 4:
        case 13:
          swift_beginAccess();
          sub_100198418();
          goto LABEL_16;
        case 3:
          swift_beginAccess();
          sub_10019846C();
          goto LABEL_16;
        case 5:
        case 8:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_17;
        case 6:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_17;
        case 7:
        case 10:
        case 11:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_17;
        case 9:
          swift_beginAccess();
          sub_1001983C4();
          goto LABEL_16;
        case 14:
        case 15:
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_17;
        case 16:
          swift_beginAccess();
          sub_100198370();
LABEL_16:
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_17:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100131564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0) + 20));
  result = swift_beginAccess();
  if (v9[16] == 72)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100198BF8();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  if (v9[17] != 4)
  {
    sub_100198418();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (v9[18] != 3)
  {
    sub_10019846C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (v9[19] != 4)
  {
    sub_100198418();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  swift_beginAccess();
  if (v9[20] != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  swift_beginAccess();
  if ((v9[28] & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_1001318A8(v9, a1, a2, a3);
  sub_10013192C(v9, a1, a2, a3);
  sub_1001319B4(v9, a1, a2, a3);
  sub_100131A50(v9, a1, a2, a3);
  sub_100131AD4(v9, a1, a2, a3);
  sub_100131B58(v9, a1, a2, a3);
  sub_100131BF4(v9, a1, a2, a3);
  sub_100131C90(v9, a1, a2, a3);
  sub_100131EB8(v9, a1, a2, a3);
  sub_1001320E0(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001318A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 40) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013192C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 41) != 2)
  {
    return dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1001319B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 42) != 4)
  {
    sub_1001983C4();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100131A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 56) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100131AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 72) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100131B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 73) != 72)
  {
    sub_100198BF8();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100131BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 74) != 4)
  {
    sub_100198418();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100131C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100131EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_1001320E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  result = swift_beginAccess();
  if (*(a1 + v5) != 6)
  {
    sub_100198370();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

BOOL sub_1001321C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  __chkstk_darwin(v4);
  v75 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v8 = __chkstk_darwin(v7);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v72 - v10;
  v12 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v72 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v72 - v20;
  __chkstk_darwin(v19);
  v23 = &v72 - v22;
  swift_beginAccess();
  v24 = *(a1 + 16);
  swift_beginAccess();
  v25 = *(a2 + 16);
  if (v24 == 72)
  {
    if (v25 != 72)
    {
      return 0;
    }
  }

  else if (v25 == 72 || qword_1003830C8[v24] != qword_1003830C8[v25])
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 17);
  swift_beginAccess();
  v27 = *(a2 + 17);
  if (v26 == 4)
  {
    if (v27 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v27 == 4 || v26 != v27)
    {
      return result;
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 18);
  swift_beginAccess();
  v30 = *(a2 + 18);
  if (v29 == 3)
  {
    if (v30 != 3)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v30 == 3 || v29 != v30)
    {
      return result;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 19);
  swift_beginAccess();
  v32 = *(a2 + 19);
  if (v31 == 4)
  {
    if (v32 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v32 == 4 || v31 != v32)
    {
      return result;
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 20);
  swift_beginAccess();
  v34 = *(a2 + 20);
  if (v33 == 2)
  {
    if (v34 != 2)
    {
      return 0;
    }
  }

  else if (v34 == 2 || ((v33 ^ v34) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v35 = *(a1 + 24);
  v36 = *(a1 + 28);
  v74 = (a2 + 24);
  swift_beginAccess();
  v37 = *(a2 + 28);
  if (v36)
  {
    if (!*(a2 + 28))
    {
      return 0;
    }
  }

  else
  {
    if (v35 != *v74)
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v38 = *(a1 + 32);
  v39 = *(a1 + 40);
  swift_beginAccess();
  v40 = *(a2 + 40);
  if (v39)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v38 != *(a2 + 32))
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v41 = *(a1 + 41);
  swift_beginAccess();
  v42 = *(a2 + 41);
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      return 0;
    }
  }

  else if (v42 == 2 || ((v41 ^ v42) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v43 = *(a1 + 42);
  swift_beginAccess();
  v44 = *(a2 + 42);
  if (v43 == 4)
  {
    if (v44 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v44 == 4 || v43 != v44)
    {
      return result;
    }
  }

  swift_beginAccess();
  v45 = *(a1 + 48);
  v46 = *(a1 + 56);
  swift_beginAccess();
  v47 = *(a2 + 56);
  if (v46)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v45 != *(a2 + 48))
    {
      v47 = 1;
    }

    if (v47)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v48 = *(a1 + 64);
  v49 = *(a1 + 72);
  swift_beginAccess();
  v50 = *(a2 + 72);
  if (v49)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v48 != *(a2 + 64))
    {
      v50 = 1;
    }

    if (v50)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v51 = *(a1 + 73);
  swift_beginAccess();
  v52 = *(a2 + 73);
  if (v51 == 72)
  {
    if (v52 != 72)
    {
      return 0;
    }
  }

  else if (v52 == 72 || qword_1003830C8[v51] != qword_1003830C8[v52])
  {
    return 0;
  }

  swift_beginAccess();
  v53 = *(a1 + 74);
  swift_beginAccess();
  v54 = *(a2 + 74);
  if (v53 == 4)
  {
    if (v54 != 4)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v54 == 4 || v53 != v54)
    {
      return result;
    }
  }

  v55 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v55, v23, &qword_10041CA30, &qword_100374460);
  v74 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__timestamp;
  swift_beginAccess();
  v56 = *(v7 + 48);
  sub_10000A0A4(v23, v11, &qword_10041CA30, &qword_100374460);
  v73 = v56;
  sub_10000A0A4(v74 + a2, &v11[v56], &qword_10041CA30, &qword_100374460);
  v57 = *(v78 + 48);
  v78 += 48;
  v74 = v57;
  if ((v57)(v11, 1, v77) == 1)
  {

    sub_1000059A8(v23, &qword_10041CA30, &qword_100374460);
    if ((v74)(&v11[v73], 1, v77) == 1)
    {
      sub_1000059A8(v11, &qword_10041CA30, &qword_100374460);
      goto LABEL_77;
    }

LABEL_75:
    v58 = v11;
LABEL_83:
    sub_1000059A8(v58, &qword_100423CE0, &qword_100393E90);
    goto LABEL_84;
  }

  sub_10000A0A4(v11, v21, &qword_10041CA30, &qword_100374460);
  if ((v74)(&v11[v73], 1, v77) == 1)
  {

    sub_1000059A8(v23, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_75;
  }

  v59 = v75;
  sub_1000112AC(&v11[v73], v75, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  LODWORD(v73) = sub_1001853C4(v21, v59, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v59, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v23, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v21, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v11, &qword_10041CA30, &qword_100374460);
  if ((v73 & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_77:
  v60 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v60, v18, &qword_10041CA30, &qword_100374460);
  v61 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__startTime;
  swift_beginAccess();
  v62 = *(v7 + 48);
  v63 = v76;
  sub_10000A0A4(v18, v76, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(a2 + v61, v63 + v62, &qword_10041CA30, &qword_100374460);
  if ((v74)(v63, 1, v77) != 1)
  {
    v64 = v76;
    sub_10000A0A4(v76, v15, &qword_10041CA30, &qword_100374460);
    if ((v74)(v64 + v62, 1, v77) == 1)
    {
      sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
      sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
      goto LABEL_82;
    }

    v65 = v75;
    v66 = v76;
    sub_1000112AC(v76 + v62, v75, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    v67 = sub_1001853C4(v15, v65, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_100015F24(v65, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v15, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    sub_1000059A8(v66, &qword_10041CA30, &qword_100374460);
    if (v67)
    {
      goto LABEL_88;
    }

LABEL_84:

    return 0;
  }

  sub_1000059A8(v18, &qword_10041CA30, &qword_100374460);
  if ((v74)(v76 + v62, 1, v77) != 1)
  {
LABEL_82:
    v58 = v76;
    goto LABEL_83;
  }

  sub_1000059A8(v76, &qword_10041CA30, &qword_100374460);
LABEL_88:
  v68 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v69 = *(a1 + v68);

  v70 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_MotionActivityP33_993346AF53650622B255AB1E3C41340D13_StorageClass__vehicularConfidence;
  swift_beginAccess();
  v71 = *(a2 + v70);

  if (v69 == 6)
  {
    return v71 == 6;
  }

  result = 0;
  if (v71 != 6 && v69 == v71)
  {
    return 1;
  }

  return result;
}

uint64_t sub_100132E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A30, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &unk_10037B248);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100132ECC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA28, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &unk_10037B1D0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100132F38(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DA28, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &unk_10037B1D0);

  return Message.hash(into:)();
}

uint64_t sub_100132FB4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433578);
  sub_100005DF0(v0, qword_100433578);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MO_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MO_NOT_MOUNTED";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "MO_MOUNTED";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100133230()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433590);
  sub_100005DF0(v0, qword_100433590);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "C_UNKNOWN";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "C_LOW";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "C_MEDIUM";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "C_HIGH";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001334E0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004335A8);
  sub_100005DF0(v0, qword_1004335A8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VE_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VE_NO_DETECTION";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VE_PREHEAT";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VE_DETECTED";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100133790()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004335C0);
  sub_100005DF0(v0, qword_1004335C0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C7E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VC_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VC_NONE";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VC_LOW";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VC_HIGH_NOT_PED_ARM_CONSTRAINED";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "VC_HIGH_NOT_PED";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "VC_HIGH_NOT_CYCLE";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100133AEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004335D8);
  sub_100005DF0(v0, qword_1004335D8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "event_receipt_time";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "client";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "activity";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100133D54(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &unk_100378FC0;
        v9 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
    type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity;
    v8 = &unk_10037B1D0;
    v9 = &qword_10041DA28;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100133F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionState(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041CA90, &qword_1003744C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA90, &qword_1003744C0);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  sub_100015EDC(&qword_10041DA28, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &unk_10037B1D0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
}

uint64_t sub_1001341C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A28, type metadata accessor for CLP_LogEntry_PrivateData_MotionState, &unk_10037B450);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100134260(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA40, type metadata accessor for CLP_LogEntry_PrivateData_MotionState, &unk_10037B3D8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1001342CC(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DA40, type metadata accessor for CLP_LogEntry_PrivateData_MotionState, &unk_10037B3D8);

  return Message.hash(into:)();
}

uint64_t sub_100134370()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004335F0);
  sub_100005DF0(v0, qword_1004335F0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activity_type";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_time_DEPRECATED";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start_time";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "predicted_workout_type";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100134600(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 3)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 4)
        {
LABEL_13:
          type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
          sub_100198BF8();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_13;
        }

        if (result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100134790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v10 = result;
  if (*(v5 + *(result + 20)) == 72)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_100198BF8();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + *(v10 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_1001348C8(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 32)) != 72)
  {
    sub_100198BF8();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1001348C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100134B30@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  *(a2 + a1[5]) = 72;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  *(a2 + a1[8]) = 72;
  return result;
}

uint64_t sub_100134BF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A20, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate, &unk_10037B5B8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100134C98(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA58, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate, &unk_10037B540);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100134D04(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DA58, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate, &unk_10037B540);

  return Message.hash(into:)();
}

uint64_t sub_100134E08(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &unk_100378FC0;
        v9 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
    type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate;
    v8 = &unk_10037B540;
    v9 = &qword_10041DA58;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_100134FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v6;
  result = sub_100168420(v10, a1, a2, a3, a4);
  if (!v7)
  {
    if ((*(v10 + *(a5(0) + 24) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    a6(v10, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1001350B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA98, &qword_1003744C8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041CA98, &qword_1003744C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA98, &qword_1003744C8);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
  sub_100015EDC(&qword_10041DA58, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate, &unk_10037B540);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutUpdate);
}

uint64_t sub_100135338@<X0>(int *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  UnknownStorage.init()();
  v6 = a1[5];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = a1[6];
  v9 = a1[7];
  v10 = a3 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a2(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a3 + v9, 1, 1, v11);
}

uint64_t sub_100135434(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A18, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver, &unk_10037B720);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001354D4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA70, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver, &unk_10037B6A8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100135540(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DA70, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateObserver, &unk_10037B6A8);

  return Message.hash(into:)();
}

uint64_t sub_1001355E4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433620);
  sub_100005DF0(v0, qword_100433620);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "session_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "overview_id";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "workout_type";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "workout_location_type";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "workout_mode";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001358C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
            sub_10019831C();
LABEL_5:
            v3 = v6;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 4:
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
            sub_1001982C8();
            goto LABEL_5;
          case 5:
            v6 = v3;
            type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
            sub_100198274();
            goto LABEL_5;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100135A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  else if (v4)
  {
    return result;
  }

  if (*(v5 + v10[6] + 8))
  {
    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  if (*(v5 + v10[7]) != 67)
  {
    sub_10019831C();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  if (*(v5 + v10[8]) != 5)
  {
    sub_1001982C8();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_100135BA8(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100135BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  if (*(a1 + *(result + 36)) != 3)
  {
    sub_100198274();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100135C80@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 67;
  *(a2 + v8) = 5;
  *(a2 + a1[9]) = 3;
  return result;
}

uint64_t sub_100135D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A10, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings, &unk_10037B888);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100135DAC(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DA88, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings, &unk_10037B810);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100135E18(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DA88, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings, &unk_10037B810);

  return Message.hash(into:)();
}

uint64_t sub_100135E98()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433638);
  sub_100005DF0(v0, qword_100433638);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v137 = swift_allocObject();
  *(v137 + 16) = xmmword_100374400;
  v4 = v137 + v3;
  v5 = v137 + v3 + v1[14];
  *(v137 + v3) = 0;
  *v5 = "WT_PROTOBUF_DEFAULT";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v137 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "WT_NoWorkout";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v137 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "WT_Walking";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v137 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "WT_Running";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v137 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "WT_Cycling";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v137 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "WT_OutdoorCycling";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v137 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "WT_IndoorCycling";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v137 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "WT_Yoga";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v137 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "WT_Dancing";
  *(v22 + 8) = 10;
  *(v22 + 16) = 2;
  v8();
  v23 = (v137 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "WT_CrossTraining";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v137 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "WT_Elliptical";
  *(v26 + 1) = 13;
  v26[16] = 2;
  v8();
  v27 = (v137 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "WT_Climbing";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v137 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "WT_StairClimbing";
  *(v30 + 1) = 16;
  v30[16] = 2;
  v8();
  v31 = (v137 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "WT_Rowing";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v137 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "WT_ResistanceTraining";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v8();
  v35 = (v137 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "WT_GenericWorkout";
  *(v36 + 1) = 17;
  v36[16] = 2;
  v8();
  v37 = v137 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "WT_OutdoorWalking";
  *(v37 + 8) = 17;
  *(v37 + 16) = 2;
  v8();
  v38 = (v137 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "WT_IndoorWalking";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v137 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "WT_OutdoorRunning";
  *(v41 + 1) = 17;
  v41[16] = 2;
  v8();
  v42 = (v137 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "WT_IndoorRunning";
  *(v43 + 1) = 16;
  v43[16] = 2;
  v8();
  v44 = (v137 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "WT_Swimming";
  *(v45 + 1) = 11;
  v45[16] = 2;
  v8();
  v46 = (v137 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "WT_OutdoorWheelchairWalk";
  *(v47 + 1) = 24;
  v47[16] = 2;
  v8();
  v48 = (v137 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "WT_OutdoorWheelchairRun";
  *(v49 + 1) = 23;
  v49[16] = 2;
  v8();
  v50 = (v137 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "WT_Calisthenics";
  *(v51 + 1) = 15;
  v51[16] = 2;
  v8();
  v52 = (v137 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "WT_DownhillSkiing";
  *(v53 + 1) = 17;
  v53[16] = 2;
  v8();
  v54 = (v137 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "WT_Hiking";
  *(v55 + 1) = 9;
  v55[16] = 2;
  v8();
  v56 = (v137 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "WT_UndeterminedWorkout";
  *(v57 + 1) = 22;
  v57[16] = 2;
  v8();
  v58 = (v137 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "WT_Unknown";
  *(v59 + 1) = 10;
  v59[16] = 2;
  v8();
  v60 = (v137 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "WT_Golfing";
  *(v61 + 1) = 10;
  v61[16] = 2;
  v8();
  v62 = (v137 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 29;
  *v63 = "WT_FunctionalStrength";
  *(v63 + 1) = 21;
  v63[16] = 2;
  v8();
  v64 = (v137 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 30;
  *v65 = "WT_CoolDown";
  *(v65 + 1) = 11;
  v65[16] = 2;
  v8();
  v66 = (v137 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 31;
  *v67 = "WT_CoreTraining";
  *(v67 + 1) = 15;
  v67[16] = 2;
  v8();
  v68 = v137 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 32;
  *v68 = "WT_TaiChi";
  *(v68 + 8) = 9;
  *(v68 + 16) = 2;
  v8();
  v69 = (v137 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "WT_Pilates";
  *(v70 + 1) = 10;
  v70[16] = 2;
  v8();
  v71 = (v137 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "WT_MultiSportTransition";
  *(v72 + 1) = 23;
  v72[16] = 2;
  v8();
  v73 = (v137 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "WT_Kickboxing";
  *(v74 + 1) = 13;
  v74[16] = 2;
  v8();
  v75 = (v137 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "WT_OutdoorRowing";
  *(v76 + 1) = 16;
  v76[16] = 2;
  v8();
  v77 = (v137 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "WT_CrossCountrySkiing";
  *(v78 + 1) = 21;
  v78[16] = 2;
  v8();
  v79 = (v137 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "WT_Snowboarding";
  *(v80 + 1) = 15;
  v80[16] = 2;
  v8();
  v81 = (v137 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "WT_PaddleSports";
  *(v82 + 1) = 15;
  v82[16] = 2;
  v8();
  v83 = (v137 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "WT_OutdoorSoccer";
  *(v84 + 1) = 16;
  v84[16] = 2;
  v8();
  v85 = (v137 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "WT_IndoorSoccer";
  *(v86 + 1) = 15;
  v86[16] = 2;
  v8();
  v87 = (v137 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "WT_AustralianFootball";
  *(v88 + 1) = 21;
  v88[16] = 2;
  v8();
  v89 = (v137 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "WT_AmericanFootball";
  *(v90 + 1) = 19;
  v90[16] = 2;
  v8();
  v91 = (v137 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "WT_DiscSports";
  *(v92 + 1) = 13;
  v92[16] = 2;
  v8();
  v93 = (v137 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "WT_Rugby";
  *(v94 + 1) = 8;
  v94[16] = 2;
  v8();
  v95 = (v137 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 46;
  *v96 = "WT_Lacrosse";
  *(v96 + 1) = 11;
  v96[16] = 2;
  v8();
  v97 = (v137 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 47;
  *v98 = "WT_OutdoorSkatingSports";
  *(v98 + 1) = 23;
  v98[16] = 2;
  v8();
  v99 = (v137 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 48;
  *v100 = "WT_IndoorSkatingSports";
  *(v100 + 1) = 22;
  v100[16] = 2;
  v8();
  v101 = (v137 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 49;
  *v102 = "WT_IndoorHockey";
  *(v102 + 1) = 15;
  v102[16] = 2;
  v8();
  v103 = (v137 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 50;
  *v104 = "WT_OutdoorHockey";
  *(v104 + 1) = 16;
  v104[16] = 2;
  v8();
  v105 = (v137 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 51;
  *v106 = "WT_Basketball";
  *(v106 + 1) = 13;
  v106[16] = 2;
  v8();
  v107 = (v137 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 52;
  *v108 = "WT_Tennis";
  *(v108 + 1) = 9;
  v108[16] = 2;
  v8();
  v109 = (v137 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 53;
  *v110 = "WT_Badminton";
  *(v110 + 1) = 12;
  v110[16] = 2;
  v8();
  v111 = (v137 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 54;
  *v112 = "WT_Racquetball";
  *(v112 + 1) = 14;
  v112[16] = 2;
  v8();
  v113 = (v137 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 55;
  *v114 = "WT_Pickleball";
  *(v114 + 1) = 13;
  v114[16] = 2;
  v8();
  v115 = (v137 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 56;
  *v116 = "WT_Volleyball";
  *(v116 + 1) = 13;
  v116[16] = 2;
  v8();
  v117 = (v137 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 57;
  *v118 = "WT_Squash";
  *(v118 + 1) = 9;
  v118[16] = 2;
  v8();
  v119 = (v137 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 58;
  *v120 = "WT_Handball";
  *(v120 + 1) = 11;
  v120[16] = 2;
  v8();
  v121 = (v137 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 59;
  *v122 = "WT_TrackAndField";
  *(v122 + 1) = 16;
  v122[16] = 2;
  v8();
  v123 = (v137 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 60;
  *v124 = "WT_Softball";
  *(v124 + 1) = 11;
  v124[16] = 2;
  v8();
  v125 = (v137 + v3 + 61 * v2);
  v126 = v125 + v1[14];
  *v125 = 61;
  *v126 = "WT_Baseball";
  *(v126 + 1) = 11;
  v126[16] = 2;
  v8();
  v127 = (v137 + v3 + 62 * v2);
  v128 = v127 + v1[14];
  *v127 = 62;
  *v128 = "WT_Cricket";
  *(v128 + 1) = 10;
  v128[16] = 2;
  v8();
  v129 = (v137 + v3 + 63 * v2);
  v130 = v129 + v1[14];
  *v129 = 63;
  *v130 = "WT_TableTennis";
  *(v130 + 1) = 14;
  v130[16] = 2;
  v8();
  v131 = v137 + v3 + (v2 << 6) + v1[14];
  *(v4 + (v2 << 6)) = 64;
  *v131 = "WT_JumpRope";
  *(v131 + 8) = 11;
  *(v131 + 16) = 2;
  v8();
  v132 = (v137 + v3 + 65 * v2);
  v133 = v132 + v1[14];
  *v132 = 65;
  *v133 = "WT_Boxing";
  *(v133 + 1) = 9;
  v133[16] = 2;
  v8();
  v134 = (v137 + v3 + 66 * v2);
  v135 = v134 + v1[14];
  *v134 = 66;
  *v135 = "WT_StepTraining";
  *(v135 + 1) = 15;
  v135[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100136FF4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433650);
  sub_100005DF0(v0, qword_100433650);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WLT_PROTOBUF_DEFAULT";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WLT_Unknown";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WLT_Indoor";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "WLT_Outdoor";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "WLT_Tbd";
  *(v15 + 8) = 7;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1001372F0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433668);
  sub_100005DF0(v0, qword_100433668);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "WM_PROTOBUF_DEFAULT";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WM_NORMAL";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "WM_TYPE_2";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100137590()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433680);
  sub_100005DF0(v0, qword_100433680);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "start_time";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "end_time";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "event_type";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "event_time";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "workout_settings";
  *(v14 + 8) = 16;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100137868(uint64_t a1, uint64_t a2, uint64_t a3)
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
        break;
      }

      if (result == 1 || result == 2)
      {
        goto LABEL_14;
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    switch(result)
    {
      case 3:
        type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
        sub_100198220();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        goto LABEL_5;
      case 4:
LABEL_14:
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &unk_100378FC0;
        v9 = &qword_10041C7B8;
        break;
      case 5:
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
        type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings;
        v8 = &unk_10037B810;
        v9 = &qword_10041DA88;
        break;
      default:
        goto LABEL_5;
    }

    sub_100015EDC(v9, v7, v8);
    v3 = v6;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_100137A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  if (!v4)
  {
    sub_100137B68(v5, a1, a2, a3);
    if (*(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0) + 28)) != 19)
    {
      sub_100198220();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_100151A8C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, 4);
    sub_100137D84(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100137B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100137D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CAA0, &qword_1003744D0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  sub_10000A0A4(a1 + *(v12 + 36), v7, &qword_10041CAA0, &qword_1003744D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAA0, &qword_1003744D0);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
  sub_100015EDC(&qword_10041DA88, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings, &unk_10037B810);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings);
}

uint64_t sub_100137FEC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v6 = *(*(v5 - 8) + 56);
  v6(a2 + v4, 1, 1, v5);
  v6(a2 + a1[6], 1, 1, v5);
  v7 = a1[8];
  *(a2 + a1[7]) = 19;
  v6(a2 + v7, 1, 1, v5);
  v8 = a1[9];
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutSettings(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_100138134(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A08, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, &unk_10037BA68);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1001381D4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DAA0, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, &unk_10037B9F0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100138240(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DAA0, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, &unk_10037B9F0);

  return Message.hash(into:)();
}

uint64_t sub_1001382BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433698);
  sub_100005DF0(v0, qword_100433698);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100374410;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "ET_PROTOBUF_DEFAULT";
  *(v5 + 8) = 19;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ET_WorkoutDidStart";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ET_WorkoutDidStop";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ET_WorkoutWillPause";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ET_WorkoutWillResume";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "ET_WorkoutSuggestedStop";
  *(v17 + 1) = 23;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ET_WorkoutPredictionStartDidMute";
  *(v19 + 1) = 32;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "ET_WorkoutLocationUpdate";
  *(v21 + 1) = 24;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "ET_WorkoutPredictedWorkoutDetected";
  *(v22 + 8) = 34;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "ET_WorkoutPredictedWorkoutLabelUpdate";
  *(v24 + 1) = 37;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ET_WorkoutPredictedWorkoutEnded";
  *(v26 + 1) = 31;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ET_WorkoutShouldAlertUserForPredictedWorkout";
  *(v28 + 1) = 44;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "ET_WorkoutRetractStopAlert";
  *(v30 + 1) = 26;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ET_WorkoutSessionDidBegin";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "ET_WorkoutSessionDidSetCurrentWorkoutType";
  *(v34 + 1) = 41;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ET_WorkoutSessionDidEnd";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "ET_WorkoutSessionDidManuallyPause";
  *(v37 + 8) = 33;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "ET_WorkoutSessionDidManuallyResume";
  *(v39 + 1) = 34;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "ET_WorkoutSessionDetectedChangeInWorkoutType";
  *(v41 + 1) = 44;
  v41[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100138998()
{
  type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v3 = 0;
  *(v3 + 4) = 1;
  v4 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  result = (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  qword_100443E80 = v0;
  return result;
}

uint64_t sub_100138A84(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v14, v8, &qword_10041CA30, &qword_100374460);
  swift_beginAccess();
  sub_10000AD64(v8, v1 + v9, &qword_10041CA30, &qword_100374460);
  swift_endAccess();
  v15 = (a1 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client);
  swift_beginAccess();
  v16 = *v15;
  LOBYTE(v9) = *(v15 + 4);
  swift_beginAccess();
  *v11 = v16;
  *(v11 + 4) = v9;
  v17 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(a1 + v17, v5, &qword_10041CAA8, &qword_1003744D8);

  swift_beginAccess();
  sub_10000AD64(v5, v1 + v12, &qword_10041CAA8, &qword_1003744D8);
  swift_endAccess();
  return v1;
}

uint64_t sub_100138D54(void *a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000059A8(v4 + *a1, &qword_10041CA30, &qword_100374460);
  sub_1000059A8(v4 + *a2, a3, a4);
  v8 = *(*v4 + 48);
  v9 = *(*v4 + 52);

  return _swift_deallocClassInstance(v4, v8, v9);
}

uint64_t sub_100138DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator._StorageClass(0);
    v9 = swift_allocObject();
    sub_100138A84(v8);
    *(v5 + v6) = v9;
  }

  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v11)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_7;
      }

      if (result == 1)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v14 = &unk_100378FC0;
        v15 = &qword_10041C7B8;
        goto LABEL_15;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v12 = v4;
    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
    v13 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent;
    v14 = &unk_10037B9F0;
    v15 = &qword_10041DAA0;
LABEL_15:
    sub_100015EDC(v15, v13, v14);
    v4 = v12;
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10013906C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CA30, &qword_100374460);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA30, &qword_100374460);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
}

uint64_t sub_100139294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_10041CAA8, &qword_1003744D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAA8, &qword_1003744D8);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  sub_100015EDC(&qword_10041DAA0, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent, &unk_10037B9F0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
}

BOOL sub_100139500(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v52 = type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent(0);
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100024A2C(&qword_100423DA8, &qword_100383010);
  __chkstk_darwin(v50);
  v53 = &v48 - v4;
  v5 = sub_100024A2C(&qword_10041CAA8, &qword_1003744D8);
  v6 = __chkstk_darwin(v5 - 8);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v48 - v8;
  v9 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_100423CE0, &qword_100393E90);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v48 - v14;
  v16 = sub_100024A2C(&qword_10041CA30, &qword_100374460);
  v17 = __chkstk_darwin(v16 - 8);
  v57 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v48 - v19;
  v21 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v22 = a1 + v21;
  v23 = v58;
  sub_10000A0A4(v22, v20, &qword_10041CA30, &qword_100374460);
  v24 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__eventReceiptTime;
  swift_beginAccess();
  v25 = *(v13 + 56);
  sub_10000A0A4(v20, v15, &qword_10041CA30, &qword_100374460);
  sub_10000A0A4(v23 + v24, &v15[v25], &qword_10041CA30, &qword_100374460);
  v26 = *(v10 + 48);
  if (v26(v15, 1, v9) == 1)
  {

    sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
    v27 = v26(&v15[v25], 1, v9);
    v28 = a1;
    if (v27 == 1)
    {
      sub_1000059A8(v15, &qword_10041CA30, &qword_100374460);
      goto LABEL_11;
    }

LABEL_6:
    sub_1000059A8(v15, &qword_100423CE0, &qword_100393E90);
    goto LABEL_7;
  }

  v29 = a1;
  v30 = v57;
  sub_10000A0A4(v15, v57, &qword_10041CA30, &qword_100374460);
  if (v26(&v15[v25], 1, v9) == 1)
  {

    sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
    sub_100015F24(v30, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
    goto LABEL_6;
  }

  v32 = v54;
  sub_1000112AC(&v15[v25], v54, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);

  v33 = sub_1001853C4(v30, v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_100015F24(v32, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  sub_1000059A8(v20, &qword_10041CA30, &qword_100374460);
  sub_100015F24(v30, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp);
  v28 = v29;
  sub_1000059A8(v15, &qword_10041CA30, &qword_100374460);
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v34 = v28 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 4);
  v37 = v23 + OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__client;
  swift_beginAccess();
  if ((v36 & 1) == 0)
  {
    v38 = v56;
    v39 = v55;
    if ((*(v37 + 4) & 1) == 0 && v35 == *v37)
    {
      goto LABEL_16;
    }

LABEL_7:

    return 0;
  }

  v38 = v56;
  v39 = v55;
  if ((*(v37 + 4) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  v40 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  sub_10000A0A4(v28 + v40, v39, &qword_10041CAA8, &qword_1003744D8);
  v41 = OBJC_IVAR____TtCV10ALProtobuf44CLP_LogEntry_PrivateData_MotionStateMediatorP33_993346AF53650622B255AB1E3C41340D13_StorageClass__workoutEvent;
  swift_beginAccess();
  v42 = *(v50 + 48);
  v43 = v53;
  sub_10000A0A4(v39, v53, &qword_10041CAA8, &qword_1003744D8);
  sub_10000A0A4(v23 + v41, v43 + v42, &qword_10041CAA8, &qword_1003744D8);
  v44 = *(v51 + 48);
  v45 = v52;
  if (v44(v43, 1, v52) == 1)
  {

    sub_1000059A8(v39, &qword_10041CAA8, &qword_1003744D8);
    if (v44(v43 + v42, 1, v45) == 1)
    {
      sub_1000059A8(v43, &qword_10041CAA8, &qword_1003744D8);
      return 1;
    }

    goto LABEL_21;
  }

  sub_10000A0A4(v43, v38, &qword_10041CAA8, &qword_1003744D8);
  if (v44(v43 + v42, 1, v45) == 1)
  {

    sub_1000059A8(v39, &qword_10041CAA8, &qword_1003744D8);
    sub_100015F24(v38, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
LABEL_21:
    sub_1000059A8(v43, &qword_100423DA8, &qword_100383010);
    return 0;
  }

  v46 = v49;
  sub_1000112AC(v43 + v42, v49, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  v47 = sub_10017C968(v38, v46);

  sub_100015F24(v46, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  sub_1000059A8(v39, &qword_10041CAA8, &qword_1003744D8);
  sub_100015F24(v38, type metadata accessor for CLP_LogEntry_PrivateData_WorkoutEvent);
  sub_1000059A8(v43, &qword_10041CAA8, &qword_1003744D8);
  return (v47 & 1) != 0;
}

uint64_t sub_100139E00(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_100423A00, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator, &unk_10037BBF8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100139EA0(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DAB8, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator, &unk_10037BB80);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100139F0C(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DAB8, type metadata accessor for CLP_LogEntry_PrivateData_MotionStateMediator, &unk_10037BB80);

  return Message.hash(into:)();
}

uint64_t sub_100139FB0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004336C8);
  sub_100005DF0(v0, qword_1004336C8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start_time_cfat_sec";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "activity";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "is_historical_record";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013A214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 2:
          type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
          type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
          sub_100015EDC(&qword_10041DA28, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &unk_10037B1D0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 1:
          type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10013A364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_10013A43C(v5, a1, a2, a3);
  if (*(v5 + *(v10 + 28)) != 2)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10013A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CA90, &qword_1003744C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_10041CA90, &qword_1003744C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CA90, &qword_1003744C0);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
  sub_100015EDC(&qword_10041DA28, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity, &unk_10037B1D0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity);
}

uint64_t sub_10013A6A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_MotionActivity(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_10013A764(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239F8, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity, &unk_10037BD60);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013A804(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DAD0, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity, &unk_10037BCE8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013A870(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DAD0, type metadata accessor for CLP_LogEntry_PrivateData_MediatedMotionActivity, &unk_10037BCE8);

  return Message.hash(into:)();
}

uint64_t sub_10013A914()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004336E0);
  sub_100005DF0(v0, qword_1004336E0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10036D7C0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "gender";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "height_m";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "weight_kg";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "vo2max";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "age";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "hrmin";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hrmax";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "hronset";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "pal";
  *(v22 + 8) = 3;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "condition";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "run_vo2max";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013AD68(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 5)
      {
        if (result > 2)
        {
          goto LABEL_4;
        }

        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
          sub_1001981CC();
LABEL_20:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else
      {
        if (result <= 9)
        {
          goto LABEL_4;
        }

        if (result == 10)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
          sub_100198178();
          goto LABEL_20;
        }

        if (result == 11)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10013AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v10 = result;
  if (*(v5 + result[5]) == 3)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1001981CC();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  sub_10013B19C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_10001677C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_10015A9E4(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_10015AA60(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_10013B218(v5, a1, a2, a3);
  sub_10013B290(v5, a1, a2, a3);
  sub_10013B31C(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10013B19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013B218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  if ((*(a1 + *(result + 52) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  if (*(a1 + *(result + 56)) != 8)
  {
    sub_100198178();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013B31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  if ((*(a1 + *(result + 60) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10013B3E0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 3;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a1[10];
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[12];
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a1[14];
  v17 = a2 + a1[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  *(a2 + v16) = 8;
  v18 = a2 + a1[15];
  *v18 = 0;
  *(v18 + 4) = 1;
  return result;
}

uint64_t sub_10013B4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239F0, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics, &unk_10037BEC8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013B570(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DAE8, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics, &unk_10037BE50);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013B5DC(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DAE8, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics, &unk_10037BE50);

  return Message.hash(into:)();
}

uint64_t sub_10013B658()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_1004336F8);
  sub_100005DF0(v0, qword_1004336F8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NG_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NG_MALE";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "NG_FEMALE";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013B8D4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433710);
  sub_100005DF0(v0, qword_100433710);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D790;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UC_UNKNOWN";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UC_ABLE_BODIED";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UC_AMPUTATION";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UC_SPINA_BIFIDA";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "UC_SPINAL_CORD_INJURY_HIGH";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "UC_SPINAL_CORD_INJURY_MID";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "UC_SPINAL_CORD_INJURY_LOW";
  *(v20 + 1) = 25;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "UC_OTHER";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013BD10(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        goto LABEL_5;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
        type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp;
        v8 = &unk_100378FC0;
        v9 = &qword_10041C7B8;
LABEL_12:
        sub_100015EDC(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
    type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics;
    v8 = &unk_10037BE50;
    v9 = &qword_10041DAE8;
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_10013BEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_10041CAB0, &qword_1003744E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_10041CAB0, &qword_1003744E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_10041CAB0, &qword_1003744E0);
  }

  sub_1000112AC(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
  sub_100015EDC(&qword_10041DAE8, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics, &unk_10037BE50);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_100015F24(v11, type metadata accessor for CLP_LogEntry_PrivateData_BodyMetrics);
}

uint64_t sub_10013C17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239E8, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry, &unk_10037C080);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013C21C(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB00, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry, &unk_10037C008);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013C288(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DB00, type metadata accessor for CLP_LogEntry_PrivateData_Natalimetry, &unk_10037C008);

  return Message.hash(into:)();
}

uint64_t sub_10013C464(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239E0, type metadata accessor for CLP_LogEntry_PrivateData_Timer, &unk_10037C1E8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013C504(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB18, type metadata accessor for CLP_LogEntry_PrivateData_Timer, &unk_10037C170);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013C570(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DB18, type metadata accessor for CLP_LogEntry_PrivateData_Timer, &unk_10037C170);

  return Message.hash(into:)();
}

uint64_t sub_10013C614()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433758);
  sub_100005DF0(v0, qword_100433758);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C820;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicable_time";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ground_altitude_above_wgs84_m";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ground_altitude_above_wgs84_unc_m";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "undulation_m";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "slope_in_direction_of_travel";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "max_abs_slope";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "client";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10013C968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 3)
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
          type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
          sub_100015EDC(&qword_10041C7B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp, &unk_100378FC0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 2 || result == 3)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result > 6)
      {
        if (result == 7)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10013CB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100168420(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel(0);
    if ((*(v5 + v10[6] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[7] + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    if ((*(v5 + v10[8] + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
    }

    sub_10013B19C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
    sub_10001677C(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel);
    sub_100144E04(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel, 7);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10013CD38@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_TimeStamp(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[7];
  v8 = a2 + a1[6];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1[9];
  v11 = a2 + a1[8];
  *v11 = 0;
  *(v11 + 4) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a1[11];
  v14 = a2 + a1[10];
  *v14 = 0;
  *(v14 + 4) = 1;
  v15 = a2 + v13;
  *v15 = 0;
  *(v15 + 4) = 1;
  return result;
}

uint64_t sub_10013CE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_100015EDC(&qword_1004239D8, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel, &unk_10037C350);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10013CED4(uint64_t a1)
{
  v2 = sub_100015EDC(&qword_10041DB30, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel, &unk_10037C2D8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10013CF40(uint64_t a1, uint64_t a2)
{
  sub_100015EDC(&qword_10041DB30, type metadata accessor for CLP_LogEntry_PrivateData_DigitalElevationModel, &unk_10037C2D8);

  return Message.hash(into:)();
}

uint64_t sub_10013CFE4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100433770);
  sub_100005DF0(v0, qword_100433770);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10036D7E0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "applicable_time";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "latitude_deg";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "longitude_deg";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "course_deg";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "course_unc_deg";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "road_width_m";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "start_latitude_deg";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "start_longitude_deg";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "road_length_m";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "speed_mps";
  *(v24 + 1) = 9;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "is_one_way";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "is_rail_way";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "is_tunnel";
  *(v30 + 1) = 9;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "is_bridge";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}
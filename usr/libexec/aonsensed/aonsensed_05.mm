uint64_t sub_1000834BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }
    }

    else
    {
      if (result == 3 || result == 4)
      {
        goto LABEL_2;
      }

      if (result == 5)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }
    }
  }
}

int *sub_1000835D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v10 = result;
  if (*(v5 + result[5] + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
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

  sub_10006FBFC(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100083760@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_100083800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C360, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel, &unk_1003709E0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000838A0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419380, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel, &unk_100370968);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008390C(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419380, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel, &unk_100370968);

  return Message.hash(into:)();
}

uint64_t sub_1000839B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D30);
  sub_100005DF0(v0, qword_100432D30);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "frequency_correction_ppb";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cummulative_phase_correction_nanoseconds";
  *(v10 + 8) = 40;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "current_temperature_degrees_celsius";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "current_temperature_rate_degrees_per_second";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "avg_temperature_over_last_epoch_degrees_celsius";
  *(v15 + 8) = 47;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100083C90(uint64_t a1, uint64_t a2, uint64_t a3)
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
LABEL_10:
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        goto LABEL_10;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100083D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
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

  if ((*(v5 + v10[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_100083EC0(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100083EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100083F84@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_100084028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C358, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections, &unk_100370B48);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000840C8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419398, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections, &unk_100370AD0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100084134(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419398, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections, &unk_100370AD0);

  return Message.hash(into:)();
}

uint64_t sub_1000841D8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D48);
  sub_100005DF0(v0, qword_100432D48);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "offset_nanoseconds";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sub_nanosecond_offset_nanoseconds";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "offset_uncertainty_nanoseconds";
  *(v12 + 1) = 30;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "drift_ppb";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "drift_uncertainty_ppb";
  *(v15 + 8) = 21;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000844B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      else if (result == 2)
      {
LABEL_2:
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
        dispatch thunk of Decoder.decodeSingularFloatField(value:)();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_2;
        case 4:
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          break;
        case 5:
          goto LABEL_2;
      }
    }
  }
}

int *sub_1000845E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)();
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

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_100097484(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008476C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = a2 + a1[9];
  *v11 = 0;
  *(v11 + 4) = 1;
  return result;
}

uint64_t sub_100084810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C350, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, &unk_100370CB0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000848B0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004193B0, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, &unk_100370C38);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008491C(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004193B0, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, &unk_100370C38);

  return Message.hash(into:)();
}

uint64_t sub_1000849C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D60);
  sub_100005DF0(v0, qword_100432D60);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "clock_nanoseconds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "corrections";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "receiver_to_gps_time";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100084C68(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections;
          v8 = &unk_100370AD0;
          v9 = &qword_100419398;
LABEL_5:
          sub_1000A5BD8(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion;
          v8 = &unk_100370C38;
          v9 = &qword_1004193B0;
          goto LABEL_5;
        }
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
        dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
      }

      else if (result == 2)
      {
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel;
        v8 = &unk_100370968;
        v9 = &qword_100419380;
        goto LABEL_5;
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100084E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  if (*(v5 + *(result + 20) + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_100084F24(v5, a1, a2, a3);
  sub_100085140(v5, a1, a2, a3);
  sub_10008535C(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100084F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D38, &qword_10036D8A8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100418D38, &qword_10036D8A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D38, &qword_10036D8A8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
  sub_1000A5BD8(&qword_100419380, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel, &unk_100370968);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel);
}

uint64_t sub_100085140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D40, &qword_10036D8B0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_100418D40, &qword_10036D8B0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D40, &qword_10036D8B0);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
  sub_1000A5BD8(&qword_100419398, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections, &unk_100370AD0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections);
}

uint64_t sub_10008535C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D48, &qword_10036D8B8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_100418D48, &qword_10036D8B8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D48, &qword_10036D8B8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
  sub_1000A5BD8(&qword_1004193B0, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion, &unk_100370C38);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion);
}

uint64_t sub_1000855C4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockModel(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[8];
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v9, 1, 1, v10);
}

uint64_t sub_10008570C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C348, type metadata accessor for CLP_LogEntry_PrivateData_Clock, &unk_100370E18);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000857AC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004193C8, type metadata accessor for CLP_LogEntry_PrivateData_Clock, &unk_100370DA0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100085818(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004193C8, type metadata accessor for CLP_LogEntry_PrivateData_Clock, &unk_100370DA0);

  return Message.hash(into:)();
}

uint64_t sub_1000858BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D78);
  sub_100005DF0(v0, qword_100432D78);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "clock";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "measurements";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100085ACC()
{
  type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements) = &_swiftEmptyArrayStorage;
  qword_1004370B8 = v0;
  return result;
}

uint64_t sub_100085B64(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418D50, &qword_10036D8C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements) = &_swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  sub_10000A0A4(a1 + v9, v5, &qword_100418D50, &qword_10036D8C0);
  swift_beginAccess();
  sub_10000AD64(v5, v1 + v6, &qword_100418D50, &qword_10036D8C0);
  swift_endAccess();
  v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
  swift_beginAccess();
  v11 = *(a1 + v10);

  swift_beginAccess();
  *(v1 + v8) = v11;

  return v1;
}

uint64_t sub_100085D08()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock, &qword_100418D50, &qword_10036D8C0);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100085D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport._StorageClass(0);
    v9 = swift_allocObject();
    sub_100085B64(v8);
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

      if (result == 1)
      {
        break;
      }

      if (result == 2)
      {
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0);
        sub_1000A5BD8(&qword_100419368, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, &unk_100370800);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        goto LABEL_7;
      }

LABEL_8:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    swift_beginAccess();
    type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
    sub_1000A5BD8(&qword_1004193C8, type metadata accessor for CLP_LogEntry_PrivateData_Clock, &unk_100370DA0);
    dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_7:
    swift_endAccess();
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100085F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0) + 20));
  result = sub_1000860D0(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
    swift_beginAccess();
    if (*(*(v8 + v10) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_Measurement(0);
      sub_1000A5BD8(&qword_100419368, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, &unk_100370800);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000860D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D50, &qword_10036D8C0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D50, &qword_10036D8C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D50, &qword_10036D8C0);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  sub_1000A5BD8(&qword_1004193C8, type metadata accessor for CLP_LogEntry_PrivateData_Clock, &unk_100370DA0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
}

uint64_t sub_10008633C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_Clock(0);
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_10041C4A0, &qword_100373C90);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v10 = sub_100024A2C(&qword_100418D50, &qword_10036D8C0);
  v11 = __chkstk_darwin(v10 - 8);
  v37 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  v16 = a1 + v15;
  v17 = a1;
  v18 = v38;
  sub_10000A0A4(v16, v14, &qword_100418D50, &qword_10036D8C0);
  v19 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clock;
  swift_beginAccess();
  v20 = *(v7 + 56);
  sub_10000A0A4(v14, v9, &qword_100418D50, &qword_10036D8C0);
  v21 = a2 + v19;
  v22 = a2;
  sub_10000A0A4(v21, &v9[v20], &qword_100418D50, &qword_10036D8C0);
  v23 = *(v18 + 48);
  if (v23(v9, 1, v4) == 1)
  {

    sub_1000059A8(v14, &qword_100418D50, &qword_10036D8C0);
    if (v23(&v9[v20], 1, v4) == 1)
    {
      sub_1000059A8(v9, &qword_100418D50, &qword_10036D8C0);
LABEL_9:
      v28 = v22;
      v29 = v17;
      v30 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
      swift_beginAccess();
      v31 = *(v29 + v30);
      v32 = OBJC_IVAR____TtCV10ALProtobuf42CLP_LogEntry_PrivateData_MeasurementReportP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measurements;
      swift_beginAccess();
      v33 = *(v28 + v32);

      v25 = sub_10009DB60(v31, v33, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, type metadata accessor for CLP_LogEntry_PrivateData_Measurement, sub_100080F0C);

      return v25 & 1;
    }

    goto LABEL_6;
  }

  v24 = v37;
  sub_10000A0A4(v9, v37, &qword_100418D50, &qword_10036D8C0);
  if (v23(&v9[v20], 1, v4) == 1)
  {

    sub_1000059A8(v14, &qword_100418D50, &qword_10036D8C0);
    sub_10009E7F4(v24, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
LABEL_6:
    sub_1000059A8(v9, &qword_10041C4A0, &qword_100373C90);
    goto LABEL_7;
  }

  v26 = v36;
  sub_10009E724(&v9[v20], v36, type metadata accessor for CLP_LogEntry_PrivateData_Clock);

  v27 = sub_1000A45FC(v24, v26);
  sub_10009E7F4(v26, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  sub_1000059A8(v14, &qword_100418D50, &qword_10036D8C0);
  sub_10009E7F4(v24, type metadata accessor for CLP_LogEntry_PrivateData_Clock);
  sub_1000059A8(v9, &qword_100418D50, &qword_10036D8C0);
  if (v27)
  {
    goto LABEL_9;
  }

LABEL_7:

  v25 = 0;
  return v25 & 1;
}

uint64_t sub_100086890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C340, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport, &unk_100370F80);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100086930(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004193E0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport, &unk_100370F08);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008699C(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004193E0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport, &unk_100370F08);

  return Message.hash(into:)();
}

uint64_t sub_100086A40()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432D90);
  sub_100005DF0(v0, qword_100432D90);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
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
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "z";
  *(v11 + 8) = 1;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100086D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C338, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef, &unk_1003710E8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100086E18(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004193F8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef, &unk_100371070);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100086E84(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004193F8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef, &unk_100371070);

  return Message.hash(into:)();
}

uint64_t sub_100086F28()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432DA8);
  sub_100005DF0(v0, qword_100432DA8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "band";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tropospheric_nanoseconds";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "ionospheric_nanoseconds";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tx_group_delay_nanoseconds";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "ionospheric_model";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100087210(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result == 1)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
          sub_1000AEA34();
          goto LABEL_17;
        }

        if (result == 2)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (result == 3 || result == 4)
        {
LABEL_4:
          type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_5;
        }

        if (result == 5)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
          sub_1000AE83C();
LABEL_17:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_100087368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v10 = result;
  if (*(v5 + result[5]) == 13)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1000AEA34();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + v10[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[7] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v5 + v10[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  sub_1000874AC(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1000874AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  if (*(a1 + *(result + 36)) != 3)
  {
    sub_1000AE83C();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100087584@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 13;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  *(a2 + a1[9]) = 3;
  return result;
}

uint64_t sub_100087620(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C330, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections, &unk_100371250);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000876C0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419410, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections, &unk_1003711D8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008772C(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419410, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections, &unk_1003711D8);

  return Message.hash(into:)();
}

uint64_t sub_1000877D0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432DC0);
  sub_100005DF0(v0, qword_100432DC0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "applicable_time_nanoseconds";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "position";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000879E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
        type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
        sub_1000A5BD8(&qword_1004193F8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef, &unk_100371070);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100087B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
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

  sub_100087BB0(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100087BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D58, &qword_10036D8C8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100418D58, &qword_10036D8C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D58, &qword_10036D8C8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
  sub_1000A5BD8(&qword_1004193F8, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef, &unk_100371070);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
}

uint64_t sub_100087E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v5, 1, 1, v7);
}

uint64_t sub_100087ED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C328, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime, &unk_1003713B8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100087F70(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419428, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime, &unk_100371340);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100087FDC(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419428, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime, &unk_100371340);

  return Message.hash(into:)();
}

uint64_t sub_100088080()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432DD8);
  sub_100005DF0(v0, qword_100432DD8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "fit_validity_start_time_ns";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "fit_validity_end_time_ns";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "x_position_ecef_coefficients";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "y_position_ecef_coefficients";
  *(v14 + 1) = 28;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 6;
  *v15 = "z_position_ecef_coefficients";
  *(v15 + 8) = 28;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100088360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      if (result == 2 || result == 3)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }
    }

    else if (result == 4 || result == 5 || result == 6)
    {
      dispatch thunk of Decoder.decodeRepeatedDoubleField(value:)();
    }
  }

  return result;
}

uint64_t sub_10008844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v6 = result;
  if (*(v3 + *(result + 32) + 8))
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

  if ((*(v3 + *(v6 + 36) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if (*(*v3 + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  if (*(v3[1] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  if (*(v3[2] + 16))
  {
    dispatch thunk of Visitor.visitRepeatedDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1000885D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  a2[1] = &_swiftEmptyArrayStorage;
  a2[2] = &_swiftEmptyArrayStorage;
  result = UnknownStorage.init()();
  v5 = *(a1 + 36);
  v6 = a2 + *(a1 + 32);
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t sub_100088668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C320, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit, &unk_100371520);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100088708(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419440, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit, &unk_1003714A8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100088774(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419440, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit, &unk_1003714A8);

  return Message.hash(into:)();
}

uint64_t sub_100088818()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432DF0);
  sub_100005DF0(v0, qword_100432DF0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10036D7F0;
  v4 = v51 + v3;
  v5 = v51 + v3 + v1[14];
  *(v51 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v51 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "reference_time_nanoseconds";
  *(v9 + 8) = 26;
  *(v9 + 16) = 2;
  v8();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "position_source";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "anchor_positions";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "clock_bias_correction_nanoseconds";
  *(v15 + 1) = 33;
  v15[16] = 2;
  v8();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "clock_frequency_correction_ppb";
  *(v17 + 1) = 30;
  v17[16] = 2;
  v8();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "clock_frequency_change_correction_ppb_per_sec";
  *(v19 + 1) = 45;
  v19[16] = 2;
  v8();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "range_accuracy_position_m";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = v51 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "range_accuracy_clock_nanoseconds";
  *(v22 + 8) = 32;
  *(v22 + 16) = 2;
  v8();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "over_the_air_from_sv_health_l1";
  *(v24 + 1) = 30;
  v24[16] = 2;
  v8();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "over_the_air_from_other_sv_health_l1";
  *(v26 + 1) = 36;
  v26[16] = 2;
  v8();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "assistance_file_health_l1";
  *(v28 + 1) = 25;
  v28[16] = 2;
  v8();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "ms_based_health_l1";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v8();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "integrity_health_l1";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v8();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "sv_band_corrections";
  *(v34 + 1) = 19;
  v34[16] = 2;
  v8();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "polynomial_orbit";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v8();
  v37 = v51 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "over_the_air_from_sv_health_l5";
  *(v37 + 8) = 30;
  *(v37 + 16) = 2;
  v8();
  v38 = (v51 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "over_the_air_from_other_sv_health_l5";
  *(v39 + 1) = 36;
  v39[16] = 2;
  v8();
  v40 = (v51 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "assistance_file_health_l5";
  *(v41 + 1) = 25;
  v41[16] = 2;
  v8();
  v42 = (v51 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "ms_based_health_l5";
  *(v43 + 1) = 18;
  v43[16] = 2;
  v8();
  v44 = (v51 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "integrity_health_l5";
  *(v45 + 1) = 19;
  v45[16] = 2;
  v8();
  v46 = (v51 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "clock_frequency_accel_correction_ppb_per_sec_per_sec";
  *(v47 + 1) = 52;
  v47[16] = 2;
  v8();
  v48 = (v51 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "sv_reference_point";
  *(v49 + 1) = 18;
  v49[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100088F44()
{
  type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource) = 7;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions) = &_swiftEmptyArrayStorage;
  v4 = v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  *v8 = 0;
  *(v8 + 4) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1) = 5;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1) = 5;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1) = 5;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1) = 5;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1) = 5;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections) = &_swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  result = (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5) = 5;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5) = 5;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5) = 5;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5) = 5;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5) = 5;
  v12 = v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint) = 4;
  qword_1004370F0 = v0;
  return result;
}

uint64_t sub_100089164()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id, &qword_100418D10, &qword_10036D880);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit, &qword_100418D60, &qword_10036D8D0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100089218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_SvInfo._StorageClass(0);
    v9 = swift_allocObject();
    sub_10009ECB4(v8);

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
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvId;
          v14 = &unk_10036ED48;
          v15 = &qword_1004191A0;
          goto LABEL_15;
        case 2:
        case 5:
        case 6:
        case 7:
        case 23:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_19;
        case 3:
          v16 = v4;
          swift_beginAccess();
          sub_1000AE8E4();
          goto LABEL_18;
        case 4:
          v17 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
          v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime;
          v19 = &unk_100371340;
          v20 = &qword_100419428;
          goto LABEL_13;
        case 8:
        case 9:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
          goto LABEL_19;
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 18:
        case 19:
        case 20:
        case 21:
        case 22:
          v16 = v4;
          swift_beginAccess();
          sub_1000AE890();
          goto LABEL_18;
        case 15:
          v17 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
          v18 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections;
          v19 = &unk_1003711D8;
          v20 = &qword_100419410;
LABEL_13:
          sub_1000A5BD8(v20, v18, v19);
          v4 = v17;
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_19;
        case 16:
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit;
          v14 = &unk_1003714A8;
          v15 = &qword_100419440;
LABEL_15:
          sub_1000A5BD8(v15, v13, v14);
          v4 = v12;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          goto LABEL_19;
        case 24:
          v16 = v4;
          swift_beginAccess();
          sub_1000AE740();
LABEL_18:
          v4 = v16;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
LABEL_19:
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

uint64_t sub_1000896D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0) + 20));
  result = sub_100089DB8(v8, a1, a2, a3);
  if (!v4)
  {
    v10 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
    swift_beginAccess();
    if ((*(v10 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
    swift_beginAccess();
    if (*(v8 + v11) != 7)
    {
      sub_1000AE8E4();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    v12 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
    swift_beginAccess();
    if (*(*(v8 + v12) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
      sub_1000A5BD8(&qword_100419428, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime, &unk_100371340);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v13 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
    swift_beginAccess();
    if ((*(v13 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v14 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
    swift_beginAccess();
    if ((*(v14 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v15 = v8 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
    swift_beginAccess();
    if ((*(v15 + 8) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM, 8);
    sub_100089FE0(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds, 9);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1, sub_1000AE890, 10, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1, sub_1000AE890, 11, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1, sub_1000AE890, 12, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1, sub_1000AE890, 13, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1, sub_1000AE890, 14, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    v16 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
    swift_beginAccess();
    if (*(*(v8 + v16) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
      sub_1000A5BD8(&qword_100419410, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections, &unk_1003711D8);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    sub_10008A070(v8, a1, a2, a3);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5, sub_1000AE890, 18, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5, sub_1000AE890, 19, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5, sub_1000AE890, 20, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5, sub_1000AE890, 21, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    sub_10008A298(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5, sub_1000AE890, 22, &type metadata for CLP_LogEntry_PrivateData_SvHealthIndication);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec, 23);
    sub_10008A358(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100089DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D10, &qword_10036D880);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D10, &qword_10036D880);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &unk_10036ED48);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t sub_100089FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if ((*(v6 + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10008A070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D60, &qword_10036D8D0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D60, &qword_10036D8D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D60, &qword_10036D8D0);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  sub_1000A5BD8(&qword_100419440, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit, &unk_1003714A8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
}

uint64_t sub_10008A298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
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

uint64_t sub_10008A358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  result = swift_beginAccess();
  if (*(a1 + v5) != 4)
  {
    sub_1000AE740();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

BOOL sub_10008A440(uint64_t a1, uint64_t a2)
{
  v142 = a2;
  v137 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  v135 = *(v137 - 8);
  __chkstk_darwin(v137);
  v132 = (&v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = sub_100024A2C(&qword_10041C570, &qword_100373D60);
  __chkstk_darwin(v134);
  v138 = &v132 - v4;
  v5 = sub_100024A2C(&qword_100418D60, &qword_10036D8D0);
  v6 = __chkstk_darwin(v5 - 8);
  v133 = (&v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v136 = &v132 - v8;
  v141 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100024A2C(&qword_10041C4D8, &qword_100373CC8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v132 - v13;
  v15 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  v16 = __chkstk_darwin(v15 - 8);
  v140 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v132 - v18;
  v20 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v21 = a1 + v20;
  v22 = v142;
  sub_10000A0A4(v21, v19, &qword_100418D10, &qword_10036D880);
  v23 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v24 = *(v12 + 56);
  sub_10000A0A4(v19, v14, &qword_100418D10, &qword_10036D880);
  v25 = v141;
  sub_10000A0A4(v22 + v23, &v14[v24], &qword_100418D10, &qword_10036D880);
  v26 = *(v9 + 48);
  if (v26(v14, 1, v25) == 1)
  {

    sub_1000059A8(v19, &qword_100418D10, &qword_10036D880);
    if (v26(&v14[v24], 1, v25) == 1)
    {
      sub_1000059A8(v14, &qword_100418D10, &qword_10036D880);
      goto LABEL_11;
    }

LABEL_6:
    sub_1000059A8(v14, &qword_10041C4D8, &qword_100373CC8);
    goto LABEL_7;
  }

  v27 = v140;
  sub_10000A0A4(v14, v140, &qword_100418D10, &qword_10036D880);
  if (v26(&v14[v24], 1, v25) == 1)
  {

    sub_1000059A8(v19, &qword_100418D10, &qword_10036D880);
    sub_10009E7F4(v27, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  v29 = v139;
  sub_10009E724(&v14[v24], v139, type metadata accessor for CLP_LogEntry_PrivateData_SvId);

  v30 = sub_1000A5750(v27, v29);
  sub_10009E7F4(v29, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000059A8(v19, &qword_100418D10, &qword_10036D880);
  sub_10009E7F4(v27, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000059A8(v14, &qword_100418D10, &qword_10036D880);
  if ((v30 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v31 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  swift_beginAccess();
  v32 = *v31;
  v33 = *(v31 + 8);
  v34 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  swift_beginAccess();
  if (v33)
  {
    if ((*(v34 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v34 + 8) & 1) != 0 || v32 != *v34)
  {
    goto LABEL_7;
  }

  v35 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  v38 = *(v22 + v37);
  if (v36 == 7)
  {
    if (v38 != 7)
    {
      goto LABEL_7;
    }
  }

  else if (v38 == 7 || v36 != v38)
  {
    goto LABEL_7;
  }

  v39 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v42 = *(v22 + v41);

  v43 = sub_10009D130(v40, v42);

  if ((v43 & 1) == 0)
  {
    goto LABEL_7;
  }

  v44 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  swift_beginAccess();
  v45 = *v44;
  v46 = *(v44 + 8);
  v47 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  swift_beginAccess();
  if (v46)
  {
    if ((*(v47 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v47 + 8) & 1) != 0 || v45 != *v47)
  {
    goto LABEL_7;
  }

  v48 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  swift_beginAccess();
  v49 = *v48;
  v50 = *(v48 + 8);
  v51 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  swift_beginAccess();
  if (v50)
  {
    if ((*(v51 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v51 + 8) & 1) != 0 || v49 != *v51)
  {
    goto LABEL_7;
  }

  v52 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  swift_beginAccess();
  v53 = *v52;
  v54 = *(v52 + 8);
  v55 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  swift_beginAccess();
  if (v54)
  {
    if ((*(v55 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v55 + 8) & 1) != 0 || v53 != *v55)
  {
    goto LABEL_7;
  }

  v56 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  v57 = *v56;
  v58 = *(v56 + 4);
  v59 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  if (v58)
  {
    if ((*(v59 + 4) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v59 + 4) & 1) != 0 || v57 != *v59)
  {
    goto LABEL_7;
  }

  v60 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  v61 = *v60;
  v62 = *(v60 + 4);
  v63 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  if (v62)
  {
    if ((*(v63 + 4) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v63 + 4) & 1) != 0 || v61 != *v63)
  {
    goto LABEL_7;
  }

  v64 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  v65 = *(a1 + v64);
  v66 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  v67 = *(v22 + v66);
  if (v65 == 5)
  {
    if (v67 == 5)
    {
      goto LABEL_52;
    }

LABEL_7:

    return 0;
  }

  if (v67 == 5 || v65 != v67)
  {
    goto LABEL_7;
  }

LABEL_52:
  v68 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  v69 = a1;
  v70 = *(a1 + v68);
  v71 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  v72 = *(v22 + v71);
  if (v70 == 5)
  {
    if (v72 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v72 == 5 || v70 != v72)
  {
    goto LABEL_7;
  }

  v73 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  v74 = *(a1 + v73);
  v75 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  v76 = *(v22 + v75);
  if (v74 == 5)
  {
    if (v76 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v76 == 5 || v74 != v76)
  {
    goto LABEL_7;
  }

  v77 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  v78 = *(a1 + v77);
  v79 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  v80 = *(v22 + v79);
  if (v78 == 5)
  {
    if (v80 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v80 == 5 || v78 != v80)
  {
    goto LABEL_7;
  }

  v81 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  v82 = *(a1 + v81);
  v83 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  v84 = *(v22 + v83);
  if (v82 == 5)
  {
    if (v84 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v84 == 5 || v82 != v84)
  {
    goto LABEL_7;
  }

  v85 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v88 = *(v22 + v87);

  v89 = sub_10009D834(v86, v88);

  if ((v89 & 1) == 0)
  {
    goto LABEL_7;
  }

  v90 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v91 = a1 + v90;
  v92 = v136;
  sub_10000A0A4(v91, v136, &qword_100418D60, &qword_10036D8D0);
  v93 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v94 = *(v134 + 48);
  v95 = v92;
  v96 = v138;
  sub_10000A0A4(v95, v138, &qword_100418D60, &qword_10036D8D0);
  sub_10000A0A4(v22 + v93, v96 + v94, &qword_100418D60, &qword_10036D8D0);
  v97 = *(v135 + 48);
  if (v97(v96, 1, v137) == 1)
  {
    sub_1000059A8(v136, &qword_100418D60, &qword_10036D8D0);
    if (v97(v138 + v94, 1, v137) == 1)
    {
      sub_1000059A8(v138, &qword_100418D60, &qword_10036D8D0);
      goto LABEL_81;
    }

LABEL_78:
    sub_1000059A8(v138, &qword_10041C570, &qword_100373D60);
    goto LABEL_7;
  }

  v98 = v138;
  sub_10000A0A4(v138, v133, &qword_100418D60, &qword_10036D8D0);
  if (v97(v98 + v94, 1, v137) == 1)
  {
    sub_1000059A8(v136, &qword_100418D60, &qword_10036D8D0);
    sub_10009E7F4(v133, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
    goto LABEL_78;
  }

  v99 = v138;
  v100 = v138 + v94;
  v101 = v132;
  sub_10009E724(v100, v132, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  v102 = v133;
  v103 = sub_1000A1B50(v133, v101);
  sub_10009E7F4(v101, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  sub_1000059A8(v136, &qword_100418D60, &qword_10036D8D0);
  sub_10009E7F4(v102, type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit);
  sub_1000059A8(v99, &qword_100418D60, &qword_10036D8D0);
  if ((v103 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_81:
  v104 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  v105 = *(v69 + v104);
  v106 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  v107 = *(v22 + v106);
  if (v105 == 5)
  {
    if (v107 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v107 == 5 || v105 != v107)
  {
    goto LABEL_7;
  }

  v108 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  v109 = *(v69 + v108);
  v110 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  v111 = *(v22 + v110);
  if (v109 == 5)
  {
    if (v111 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v111 == 5 || v109 != v111)
  {
    goto LABEL_7;
  }

  v112 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  v113 = *(v69 + v112);
  v114 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  v115 = *(v22 + v114);
  if (v113 == 5)
  {
    if (v115 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v115 == 5 || v113 != v115)
  {
    goto LABEL_7;
  }

  v116 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  v117 = *(v69 + v116);
  v118 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  v119 = *(v22 + v118);
  if (v117 == 5)
  {
    if (v119 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v119 == 5 || v117 != v119)
  {
    goto LABEL_7;
  }

  v120 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  v121 = *(v69 + v120);
  v122 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  v123 = *(v22 + v122);
  if (v121 == 5)
  {
    if (v123 != 5)
    {
      goto LABEL_7;
    }
  }

  else if (v123 == 5 || v121 != v123)
  {
    goto LABEL_7;
  }

  v124 = v69 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  swift_beginAccess();
  v125 = *v124;
  v126 = *(v124 + 8);
  v127 = v22 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  swift_beginAccess();
  if (v126)
  {
    if ((*(v127 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v127 + 8) & 1) != 0 || v125 != *v127)
  {
    goto LABEL_7;
  }

  v128 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  v129 = *(v69 + v128);

  v130 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  v131 = *(v22 + v130);

  if (v129 == 4)
  {
    return v131 == 4;
  }

  result = 0;
  if (v131 != 4 && v129 == v131)
  {
    return 1;
  }

  return result;
}

uint64_t sub_10008B4AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C318, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, &unk_100371688);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008B54C(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419458, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, &unk_100371610);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008B5B8(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419458, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, &unk_100371610);

  return Message.hash(into:)();
}

uint64_t sub_10008B65C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E08);
  sub_100005DF0(v0, qword_100432E08);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "band";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rf_time_bias_nanoseconds";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rf_time_bias_uncertainty_nanoseconds";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "automatic_gain_control_db";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008B8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3 || result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
          dispatch thunk of Decoder.decodeSingularFloatField(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
        sub_1000AEA34();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_10008BA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v6 = result;
  if (*(v3 + result[5]) == 13)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    sub_1000AEA34();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + v6[6] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[7] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  if ((*(v3 + v6[8] + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008BBAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  *(a2 + a1[5]) = 13;
  v6 = a2 + v5;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  return result;
}

uint64_t sub_10008BC3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C310, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections, &unk_1003717F0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008BCDC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419470, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections, &unk_100371778);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008BD48(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419470, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections, &unk_100371778);

  return Message.hash(into:)();
}

uint64_t sub_10008BDEC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E20);
  sub_100005DF0(v0, qword_100432E20);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "time_of_change";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "new_leap_second";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008BFFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
      dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
    }
  }

  return result;
}

uint64_t sub_10008C0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008C1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_10008C23C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C308, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange, &unk_100371958);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008C2DC(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419488, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange, &unk_1003718E0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008C348(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419488, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange, &unk_1003718E0);

  return Message.hash(into:)();
}

uint64_t sub_10008C3F0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E38);
  sub_100005DF0(v0, qword_100432E38);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "current_leap_second";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "change_knowledge";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "new_leap_second";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008C64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
          sub_1000A5BD8(&qword_100419488, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange, &unk_1003718E0);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
          sub_1000AE7E8();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10008C7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if (*(v5 + *(v10 + 24)) != 5)
  {
    sub_1000AE7E8();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_10008C8B4(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008C8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D68, &qword_10036D8D8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_100418D68, &qword_10036D8D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D68, &qword_10036D8D8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
  sub_1000A5BD8(&qword_100419488, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange, &unk_1003718E0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange);
}

uint64_t sub_10008CB1C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  *(a2 + v4) = 5;
  v6 = a1[7];
  v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondChange(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_10008CBE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C300, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &unk_100371AC0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008CC80(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004194A0, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &unk_100371A48);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008CCEC(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004194A0, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &unk_100371A48);

  return Message.hash(into:)();
}

uint64_t sub_10008CD94()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E50);
  sub_100005DF0(v0, qword_100432E50);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "applicable_time_nanoseconds";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset_nanoseconds";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "drift_ppb";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "accel_ppb_per_second";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008D024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }
    }

    else if (result == 1)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

int *sub_10008D120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
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

  if ((*(v3 + v6[8] + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008D27C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
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
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_10008D310(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2F8, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion, &unk_100371C28);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008D3B0(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004194B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion, &unk_100371BB0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008D41C(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004194B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion, &unk_100371BB0);

  return Message.hash(into:)();
}

uint64_t sub_10008D4C0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E68);
  sub_100005DF0(v0, qword_100432E68);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "week";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "leap_second";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "conversion";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008D724(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v6 = v3;
        type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
        type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
        v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v8 = &unk_100371A48;
        v9 = &qword_1004194A0;
LABEL_5:
        sub_1000A5BD8(v9, v7, v8);
        v3 = v6;
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        goto LABEL_6;
      }

      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    v6 = v3;
    type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
    type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
    v7 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion;
    v8 = &unk_100371BB0;
    v9 = &qword_1004194B8;
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_10008D8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  if (*(v5 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_10008D968(v5, a1, a2, a3);
  sub_10008DB84(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008D968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100418D70, &qword_10036D8E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D70, &qword_10036D8E0);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_1000A5BD8(&qword_1004194A0, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &unk_100371A48);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t sub_10008DB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D78, &qword_10036D8E8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_100418D78, &qword_10036D8E8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D78, &qword_10036D8E8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
  sub_1000A5BD8(&qword_1004194B8, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion, &unk_100371BB0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion);
}

uint64_t sub_10008DDEC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsToUtcConversion(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_10008DEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2F0, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo, &unk_100371D90);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008DF90(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004194D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo, &unk_100371D18);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008DFFC(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004194D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo, &unk_100371D18);

  return Message.hash(into:)();
}

uint64_t sub_10008E0A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E80);
  sub_100005DF0(v0, qword_100432E80);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "collection_time_nanoseconds";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset_time_nanoseconds";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008E2B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
      dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
    }

    else if (result == 2)
    {
      type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t sub_10008E36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008E478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = a2 + *(a1 + 20);
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

uint64_t sub_10008E4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &unk_100371EF8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008E590(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004194E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &unk_100371E80);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008E5FC(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004194E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &unk_100371E80);

  return Message.hash(into:)();
}

uint64_t sub_10008E6A4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432E98);
  sub_100005DF0(v0, qword_100432E98);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10036D780;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "four_week_period";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "day";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "leap_second_deprecated";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gps_time_conversion";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "utc_conversion_deprecated";
  *(v14 + 8) = 25;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008E980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
        }
      }

      else if (result == 3)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
        sub_1000AE794();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 4 || result == 5)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
        type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
        sub_1000A5BD8(&qword_1004194E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &unk_100371E80);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10008EB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v10 = result;
  if (*(v5 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v5 + *(v10 + 24) + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  if (*(v5 + *(v10 + 28)) != 6)
  {
    sub_1000AE794();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  sub_10008EC68(v5, a1, a2, a3);
  sub_10008EE84(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008EC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_100418D80, &qword_10036D8F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D80, &qword_10036D8F0);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  sub_1000A5BD8(&qword_1004194E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &unk_100371E80);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
}

uint64_t sub_10008EE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D80, &qword_10036D8F0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  sub_10000A0A4(a1 + *(v12 + 36), v7, &qword_100418D80, &qword_10036D8F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D80, &qword_10036D8F0);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
  sub_1000A5BD8(&qword_1004194E8, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion, &unk_100371E80);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion);
}

uint64_t sub_10008F0EC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  *(a2 + a1[7]) = 6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassSubsecondConversion(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + a1[9];

  return v11(v9, 1, 1, v8);
}

uint64_t sub_10008F1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2E0, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo, &unk_100372060);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008F29C(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419500, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo, &unk_100371FE8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008F308(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419500, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo, &unk_100371FE8);

  return Message.hash(into:)();
}

uint64_t sub_10008F3AC()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432EB0);
  sub_100005DF0(v0, qword_100432EB0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "applicable_time_nanoSeconds";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset_nanoSeconds";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "drift_ppb";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008F648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      a4(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 1)
    {
      v13 = a4(0);
      a5(v5 + *(v13 + 20), a2, a3);
    }
  }

  return result;
}

uint64_t sub_10008F744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
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
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  if ((*(v3 + *(v6 + 24) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  if ((*(v3 + *(v6 + 28) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10008F890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2D8, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_1003721C8);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10008F930(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_100372150);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10008F99C(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_100372150);

  return Message.hash(into:)();
}

uint64_t sub_10008FA44()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432EC8);
  sub_100005DF0(v0, qword_100432EC8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10036C7E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "week";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "leap_second_deprecated";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "gps_time_conversion";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "glonass_time_conversion";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "galileo_time_conversion";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "utc_time_conversion_deprecated";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_10008FD58()
{
  type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  v1 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, 1, 1, v4);
  result = (v5)(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, 1, 1, v4);
  qword_100437148 = v0;
  return result;
}

uint64_t sub_10008FEB0(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  *(v1 + 16) = 0;
  *(v1 + 20) = 1;
  v9 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v24 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, 1, 1, v12);
  v25 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, 1, 1, v12);
  v26 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  v13(v1 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, 1, 1, v12);
  swift_beginAccess();
  v14 = *(a1 + 16);
  LOBYTE(v13) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 20) = v13;
  v15 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  sub_10000A0A4(a1 + v15, v8, &qword_100418D70, &qword_10036D8E0);
  swift_beginAccess();
  sub_10000AD64(v8, v1 + v9, &qword_100418D70, &qword_10036D8E0);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v16, v5, &qword_100418D88, &qword_10036D8F8);
  swift_beginAccess();
  sub_10000AD64(v5, v1 + v11, &qword_100418D88, &qword_10036D8F8);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v17, v5, &qword_100418D88, &qword_10036D8F8);
  v18 = v24;
  swift_beginAccess();
  sub_10000AD64(v5, v1 + v18, &qword_100418D88, &qword_10036D8F8);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v19, v5, &qword_100418D88, &qword_10036D8F8);
  v20 = v25;
  swift_beginAccess();
  sub_10000AD64(v5, v1 + v20, &qword_100418D88, &qword_10036D8F8);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  sub_10000A0A4(a1 + v21, v5, &qword_100418D88, &qword_10036D8F8);

  v22 = v26;
  swift_beginAccess();
  sub_10000AD64(v5, v1 + v22, &qword_100418D88, &qword_10036D8F8);
  swift_endAccess();
  return v1;
}

uint64_t sub_100090318()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated, &qword_100418D70, &qword_10036D8E0);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion, &qword_100418D88, &qword_10036D8F8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion, &qword_100418D88, &qword_10036D8F8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion, &qword_100418D88, &qword_10036D8F8);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated, &qword_100418D88, &qword_10036D8F8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_10009040C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo._StorageClass(0);
    v9 = swift_allocObject();
    sub_10008FEB0(v8);
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

      if (result <= 3)
      {
        break;
      }

      if (result == 4 || result == 5 || result == 6)
      {
        goto LABEL_18;
      }

LABEL_21:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }

    if (result == 1)
    {
      swift_beginAccess();
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else
    {
      if (result == 2)
      {
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
        v14 = &unk_100371A48;
        v15 = &qword_1004194A0;
      }

      else
      {
        if (result != 3)
        {
          goto LABEL_21;
        }

LABEL_18:
        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion;
        v14 = &unk_100372150;
        v15 = &qword_100419518;
      }

      sub_1000A5BD8(v15, v13, v14);
      v4 = v12;
      dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
    }

    swift_endAccess();
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100090664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = *(v5 + *(type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0) + 20));
  result = swift_beginAccess();
  if (*(v9 + 20))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_10009078C(v9, a1, a2, a3);
  sub_1000909B4(v9, a1, a2, a3);
  sub_100090BDC(v9, a1, a2, a3);
  sub_100090E04(v9, a1, a2, a3);
  sub_10009102C(v9, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_10009078C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D70, &qword_10036D8E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D70, &qword_10036D8E0);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_1000A5BD8(&qword_1004194A0, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &unk_100371A48);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t sub_1000909B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D88, &qword_10036D8F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_100372150);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_100090BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D88, &qword_10036D8F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_100372150);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_100090E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D88, &qword_10036D8F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_100372150);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_10009102C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D88, &qword_10036D8F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_100372150);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

BOOL sub_100091298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v132 = *(v4 - 8);
  __chkstk_darwin(v4);
  v124 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100024A2C(&qword_10041C560, &qword_100373D50);
  v6 = __chkstk_darwin(v131);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v121 = &v115 - v10;
  v11 = __chkstk_darwin(v9);
  v123 = &v115 - v12;
  __chkstk_darwin(v11);
  v129 = &v115 - v13;
  v14 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  v15 = __chkstk_darwin(v14 - 8);
  v118 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v120 = &v115 - v18;
  v19 = __chkstk_darwin(v17);
  v119 = &v115 - v20;
  v21 = __chkstk_darwin(v19);
  v125 = &v115 - v22;
  v23 = __chkstk_darwin(v21);
  v122 = &v115 - v24;
  v25 = __chkstk_darwin(v23);
  v127 = &v115 - v26;
  v27 = __chkstk_darwin(v25);
  v126 = &v115 - v28;
  __chkstk_darwin(v27);
  v135 = &v115 - v29;
  v30 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v133 = *(v30 - 8);
  v134 = v30;
  __chkstk_darwin(v30);
  v128 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100024A2C(&qword_10041C568, &qword_100373D58);
  __chkstk_darwin(v32);
  v34 = &v115 - v33;
  v35 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  v36 = __chkstk_darwin(v35 - 8);
  v130 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v115 - v38;
  swift_beginAccess();
  v40 = *(a1 + 16);
  v41 = *(a1 + 20);
  swift_beginAccess();
  v42 = *(a2 + 20);
  if (v41)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v40 != *(a2 + 16))
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  v116 = v8;
  v117 = v4;
  v43 = a1;
  v44 = a2;
  v45 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  v46 = v43 + v45;
  v47 = v44;
  sub_10000A0A4(v46, v39, &qword_100418D70, &qword_10036D8E0);
  v48 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__leapSecondDeprecated;
  swift_beginAccess();
  v49 = *(v32 + 48);
  sub_10000A0A4(v39, v34, &qword_100418D70, &qword_10036D8E0);
  sub_10000A0A4(v44 + v48, &v34[v49], &qword_100418D70, &qword_10036D8E0);
  v50 = v134;
  v51 = *(v133 + 6);
  if (v51(v34, 1, v134) == 1)
  {

    sub_1000059A8(v39, &qword_100418D70, &qword_10036D8E0);
    v52 = v51(&v34[v49], 1, v50);
    v53 = v43;
    v54 = v117;
    v55 = v135;
    if (v52 == 1)
    {
      sub_1000059A8(v34, &qword_100418D70, &qword_10036D8E0);
      goto LABEL_15;
    }

LABEL_12:
    sub_1000059A8(v34, &qword_10041C568, &qword_100373D58);
    goto LABEL_29;
  }

  v56 = v44;
  v57 = v130;
  sub_10000A0A4(v34, v130, &qword_100418D70, &qword_10036D8E0);
  v58 = v51(&v34[v49], 1, v50);
  v55 = v135;
  if (v58 == 1)
  {

    sub_1000059A8(v39, &qword_100418D70, &qword_10036D8E0);
    sub_10009E7F4(v57, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
    goto LABEL_12;
  }

  v59 = v128;
  sub_10009E724(&v34[v49], v128, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);

  LODWORD(v134) = sub_1000A3478(v57, v59);
  sub_10009E7F4(v59, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_1000059A8(v39, &qword_100418D70, &qword_10036D8E0);
  v60 = v57;
  v47 = v56;
  sub_10009E7F4(v60, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  v53 = v43;
  sub_1000059A8(v34, &qword_100418D70, &qword_10036D8E0);
  v54 = v117;
  if ((v134 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v61 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  v134 = v53;
  sub_10000A0A4(v53 + v61, v55, &qword_100418D88, &qword_10036D8F8);
  v62 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gpsTimeConversion;
  swift_beginAccess();
  v63 = *(v131 + 48);
  v64 = v129;
  sub_10000A0A4(v55, v129, &qword_100418D88, &qword_10036D8F8);
  sub_10000A0A4(v47 + v62, v64 + v63, &qword_100418D88, &qword_10036D8F8);
  v66 = v132 + 48;
  v65 = *(v132 + 48);
  if (v65(v64, 1, v54) == 1)
  {
    sub_1000059A8(v55, &qword_100418D88, &qword_10036D8F8);
    if (v65(v64 + v63, 1, v54) == 1)
    {
      v133 = v65;
      sub_1000059A8(v64, &qword_100418D88, &qword_10036D8F8);
      goto LABEL_22;
    }

LABEL_20:
    v68 = v64;
LABEL_28:
    sub_1000059A8(v68, &qword_10041C560, &qword_100373D50);
    goto LABEL_29;
  }

  v67 = v126;
  sub_10000A0A4(v64, v126, &qword_100418D88, &qword_10036D8F8);
  if (v65(v64 + v63, 1, v54) == 1)
  {
    sub_1000059A8(v135, &qword_100418D88, &qword_10036D8F8);
    sub_10009E7F4(v67, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    goto LABEL_20;
  }

  v133 = v65;
  v69 = v64 + v63;
  v70 = v124;
  sub_10009E724(v69, v124, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v71 = sub_1000A2EBC(v67, v70);
  sub_10009E7F4(v70, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v135, &qword_100418D88, &qword_10036D8F8);
  sub_10009E7F4(v67, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v54 = v117;
  sub_1000059A8(v64, &qword_100418D88, &qword_10036D8F8);
  if ((v71 & 1) == 0)
  {
LABEL_29:

    return 0;
  }

LABEL_22:
  v132 = v66;
  v72 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  v73 = v134;
  swift_beginAccess();
  v74 = v73 + v72;
  v75 = v127;
  sub_10000A0A4(v74, v127, &qword_100418D88, &qword_10036D8F8);
  v76 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonassTimeConversion;
  swift_beginAccess();
  v77 = *(v131 + 48);
  v78 = v123;
  sub_10000A0A4(v75, v123, &qword_100418D88, &qword_10036D8F8);
  v79 = v78;
  sub_10000A0A4(v47 + v76, v78 + v77, &qword_100418D88, &qword_10036D8F8);
  v80 = v133;
  if (v133(v78, 1, v54) == 1)
  {
    sub_1000059A8(v75, &qword_100418D88, &qword_10036D8F8);
    v81 = v80(v78 + v77, 1, v54);
    v82 = v125;
    if (v81 == 1)
    {
      v83 = v80;
      sub_1000059A8(v79, &qword_100418D88, &qword_10036D8F8);
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  v84 = v78;
  v85 = v80;
  v86 = v122;
  sub_10000A0A4(v84, v122, &qword_100418D88, &qword_10036D8F8);
  v83 = v85;
  v87 = v85(v79 + v77, 1, v54);
  v82 = v125;
  if (v87 == 1)
  {
    sub_1000059A8(v127, &qword_100418D88, &qword_10036D8F8);
    sub_10009E7F4(v86, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_27:
    v68 = v79;
    goto LABEL_28;
  }

  v89 = v79 + v77;
  v90 = v124;
  sub_10009E724(v89, v124, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v91 = sub_1000A2EBC(v86, v90);
  sub_10009E7F4(v90, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v127, &qword_100418D88, &qword_10036D8F8);
  sub_10009E7F4(v86, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v79, &qword_100418D88, &qword_10036D8F8);
  if ((v91 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  v92 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  v93 = v134;
  swift_beginAccess();
  sub_10000A0A4(v93 + v92, v82, &qword_100418D88, &qword_10036D8F8);
  v94 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileoTimeConversion;
  swift_beginAccess();
  v95 = *(v131 + 48);
  v96 = v121;
  sub_10000A0A4(v82, v121, &qword_100418D88, &qword_10036D8F8);
  sub_10000A0A4(v47 + v94, v96 + v95, &qword_100418D88, &qword_10036D8F8);
  if (v83(v96, 1, v54) == 1)
  {
    sub_1000059A8(v82, &qword_100418D88, &qword_10036D8F8);
    v97 = v83(v96 + v95, 1, v54);
    v98 = v134;
    if (v97 == 1)
    {
      sub_1000059A8(v96, &qword_100418D88, &qword_10036D8F8);
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  v99 = v119;
  sub_10000A0A4(v96, v119, &qword_100418D88, &qword_10036D8F8);
  if (v83(v96 + v95, 1, v54) == 1)
  {
    sub_1000059A8(v125, &qword_100418D88, &qword_10036D8F8);
    sub_10009E7F4(v99, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
LABEL_37:
    sub_1000059A8(v96, &qword_10041C560, &qword_100373D50);
    goto LABEL_29;
  }

  v100 = v124;
  sub_10009E724(v96 + v95, v124, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  v101 = sub_1000A2EBC(v99, v100);
  sub_10009E7F4(v100, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v125, &qword_100418D88, &qword_10036D8F8);
  sub_10009E7F4(v99, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000059A8(v96, &qword_100418D88, &qword_10036D8F8);
  v98 = v134;
  if ((v101 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_39:
  v102 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  v103 = v120;
  sub_10000A0A4(v98 + v102, v120, &qword_100418D88, &qword_10036D8F8);
  v104 = OBJC_IVAR____TtCV10ALProtobuf39CLP_LogEntry_PrivateData_BeidouTimeInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__utcTimeConversionDeprecated;
  swift_beginAccess();
  v105 = *(v131 + 48);
  v106 = v116;
  sub_10000A0A4(v103, v116, &qword_100418D88, &qword_10036D8F8);
  v107 = v47 + v104;
  v108 = v106;
  v109 = v117;
  v135 = v105;
  sub_10000A0A4(v107, v108 + v105, &qword_100418D88, &qword_10036D8F8);
  if (v83(v108, 1, v109) != 1)
  {
    v110 = v118;
    sub_10000A0A4(v108, v118, &qword_100418D88, &qword_10036D8F8);
    v111 = v135;
    if (v83(v108 + v135, 1, v109) == 1)
    {

      sub_1000059A8(v120, &qword_100418D88, &qword_10036D8F8);
      sub_10009E7F4(v110, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
      goto LABEL_44;
    }

    v112 = v124;
    sub_10009E724(v108 + v111, v124, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    v113 = v110;
    v114 = sub_1000A2EBC(v110, v112);

    sub_10009E7F4(v112, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    sub_1000059A8(v120, &qword_100418D88, &qword_10036D8F8);
    sub_10009E7F4(v113, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
    sub_1000059A8(v108, &qword_100418D88, &qword_10036D8F8);
    return (v114 & 1) != 0;
  }

  sub_1000059A8(v103, &qword_100418D88, &qword_10036D8F8);
  if (v83(v108 + v135, 1, v109) != 1)
  {
LABEL_44:
    sub_1000059A8(v108, &qword_10041C560, &qword_100373D50);
    return 0;
  }

  sub_1000059A8(v108, &qword_100418D88, &qword_10036D8F8);
  return 1;
}

uint64_t sub_1000923B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2D0, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo, &unk_100372330);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100092450(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419530, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo, &unk_1003722B8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1000924BC(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419530, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo, &unk_1003722B8);

  return Message.hash(into:)();
}

uint64_t sub_100092560()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432EE0);
  sub_100005DF0(v0, qword_100432EE0);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "week";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "leap_second_deprecated";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "gps_time_conversion";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "utc_time_conversion_deprecated";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000927FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
          type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion;
          v8 = &unk_100372150;
          v9 = &qword_100419518;
          goto LABEL_14;
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
          type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
          v7 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo;
          v8 = &unk_100371A48;
          v9 = &qword_1004194A0;
LABEL_14:
          sub_1000A5BD8(v9, v7, v8);
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1000929A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  if (*(v5 + *(result + 20) + 4))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }
  }

  sub_100092A7C(v5, a1, a2, a3);
  sub_100092C98(v5, a1, a2, a3);
  sub_100092EB4(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100092A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D70, &qword_10036D8E0);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  sub_10000A0A4(a1 + *(v12 + 24), v7, &qword_100418D70, &qword_10036D8E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D70, &qword_10036D8E0);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
  sub_1000A5BD8(&qword_1004194A0, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo, &unk_100371A48);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo);
}

uint64_t sub_100092C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  sub_10000A0A4(a1 + *(v12 + 28), v7, &qword_100418D88, &qword_10036D8F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_100372150);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_100092EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_100418D88, &qword_10036D8F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_100372150);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_10009311C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_LeapSecondInfo(0);
  (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v7 = a1[7];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v11 = *(*(v8 - 8) + 56);
  (v11)((v8 - 8), a2 + v7, 1, 1, v8);
  v9 = a2 + a1[8];

  return v11(v9, 1, 1, v8);
}

uint64_t sub_100093258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2C8, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo, &unk_100372498);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000932F8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419548, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo, &unk_100372420);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100093364(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419548, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo, &unk_100372420);

  return Message.hash(into:)();
}

uint64_t sub_100093408()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432EF8);
  sub_100005DF0(v0, qword_100432EF8);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C830;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "gps_time_conversion";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "week";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100093620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
        type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
        sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_100372150);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10009373C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000937E8(v3, a1, a2, a3);
  if (!v4)
  {
    if ((*(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0) + 24) + 4) & 1) == 0)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000937E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D88, &qword_10036D8F8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100418D88, &qword_10036D8F8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D88, &qword_10036D8F8);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
  sub_1000A5BD8(&qword_100419518, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion, &unk_100372150);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion);
}

uint64_t sub_100093A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SubSecondConversion(0);
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a2 + *(a1 + 24);
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_100093B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2C0, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo, &unk_100372600);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100093BA8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419560, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo, &unk_100372588);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100093C14(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419560, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo, &unk_100372588);

  return Message.hash(into:)();
}

uint64_t sub_100093CB8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F10);
  sub_100005DF0(v0, qword_100432F10);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D780;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "gps";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "glonass";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "beidou";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "galileo";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "navic";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100093F90()
{
  type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  result = (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  qword_100437170 = v0;
  return result;
}

uint64_t sub_100094134(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  __chkstk_darwin(v3 - 8);
  v39 = &v35 - v4;
  v5 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  __chkstk_darwin(v5 - 8);
  v38 = &v35 - v6;
  v7 = sub_100024A2C(&qword_100418DA0, &qword_10036D910);
  __chkstk_darwin(v7 - 8);
  v37 = &v35 - v8;
  v9 = sub_100024A2C(&qword_100418D98, &qword_10036D908);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_100024A2C(&qword_100418D90, &qword_10036D900);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v16 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  v18 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  v20 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  v22 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  (*(*(v22 - 8) + 56))(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v36 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  v24 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  (*(*(v24 - 8) + 56))(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000A0A4(a1 + v25, v14, &qword_100418D90, &qword_10036D900);
  swift_beginAccess();
  sub_10000AD64(v14, v1 + v15, &qword_100418D90, &qword_10036D900);
  swift_endAccess();
  v26 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  sub_10000A0A4(a1 + v26, v11, &qword_100418D98, &qword_10036D908);
  swift_beginAccess();
  sub_10000AD64(v11, v1 + v17, &qword_100418D98, &qword_10036D908);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  v28 = v37;
  sub_10000A0A4(a1 + v27, v37, &qword_100418DA0, &qword_10036D910);
  swift_beginAccess();
  sub_10000AD64(v28, v1 + v19, &qword_100418DA0, &qword_10036D910);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v30 = v38;
  sub_10000A0A4(a1 + v29, v38, &qword_100418DA8, &qword_10036D918);
  swift_beginAccess();
  sub_10000AD64(v30, v1 + v21, &qword_100418DA8, &qword_10036D918);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  v32 = v39;
  sub_10000A0A4(a1 + v31, v39, &qword_100418DB0, &qword_10036D920);

  v33 = v36;
  swift_beginAccess();
  sub_10000AD64(v32, v1 + v33, &qword_100418DB0, &qword_10036D920);
  swift_endAccess();
  return v1;
}

uint64_t sub_1000946C0()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps, &qword_100418D90, &qword_10036D900);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass, &qword_100418D98, &qword_10036D908);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou, &qword_100418DA0, &qword_10036D910);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo, &qword_100418DA8, &qword_10036D918);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic, &qword_100418DB0, &qword_10036D920);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_1000947B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo._StorageClass(0);
    v9 = swift_allocObject();
    sub_100094134(v8);
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

      if (result <= 2)
      {
        if (result == 1)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo;
          v14 = &unk_100371D18;
          v15 = &qword_1004194D0;
          goto LABEL_7;
        }

        if (result == 2)
        {
          v12 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo;
          v14 = &unk_100371FE8;
          v15 = &qword_100419500;
          goto LABEL_7;
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
            v13 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo;
            v14 = &unk_1003722B8;
            v15 = &qword_100419530;
LABEL_7:
            sub_1000A5BD8(v15, v13, v14);
            v4 = v12;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            swift_endAccess();
            break;
          case 4:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
            v13 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo;
            v14 = &unk_100372420;
            v15 = &qword_100419548;
            goto LABEL_7;
          case 5:
            v12 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
            v13 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo;
            v14 = &unk_100372588;
            v15 = &qword_100419560;
            goto LABEL_7;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100094AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0) + 20));
  result = sub_100094BA8(v8, a1, a2, a3);
  if (!v4)
  {
    sub_100094DD0(v8, a1, a2, a3);
    sub_100094FF8(v8, a1, a2, a3);
    sub_100095220(v8, a1, a2, a3);
    sub_100095448(v8, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100094BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D90, &qword_10036D900);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D90, &qword_10036D900);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D90, &qword_10036D900);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  sub_1000A5BD8(&qword_1004194D0, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo, &unk_100371D18);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
}

uint64_t sub_100094DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418D98, &qword_10036D908);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418D98, &qword_10036D908);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D98, &qword_10036D908);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  sub_1000A5BD8(&qword_100419500, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo, &unk_100371FE8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
}

uint64_t sub_100094FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418DA0, &qword_10036D910);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418DA0, &qword_10036D910);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418DA0, &qword_10036D910);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  sub_1000A5BD8(&qword_100419530, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo, &unk_1003722B8);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
}

uint64_t sub_100095220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418DA8, &qword_10036D918);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418DA8, &qword_10036D918);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
  sub_1000A5BD8(&qword_100419548, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo, &unk_100372420);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
}

uint64_t sub_100095448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418DB0, &qword_10036D920);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418DB0, &qword_10036D920);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  sub_1000A5BD8(&qword_100419560, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo, &unk_100372588);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
}

BOOL sub_1000956B4(uint64_t a1, uint64_t a2)
{
  v135 = a2;
  v109 = type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo(0);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v105 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100024A2C(&qword_10041C538, &qword_100373D28);
  __chkstk_darwin(v107);
  v110 = &v105 - v4;
  v5 = sub_100024A2C(&qword_100418DB0, &qword_10036D920);
  v6 = __chkstk_darwin(v5 - 8);
  v132 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v124 = &v105 - v8;
  v115 = type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo(0);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v106 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100024A2C(&qword_10041C540, &qword_100373D30);
  __chkstk_darwin(v113);
  v116 = &v105 - v10;
  v11 = sub_100024A2C(&qword_100418DA8, &qword_10036D918);
  v12 = __chkstk_darwin(v11 - 8);
  v111 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v117 = &v105 - v14;
  v122 = type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo(0);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v112 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100024A2C(&qword_10041C548, &qword_100373D38);
  __chkstk_darwin(v120);
  v123 = &v105 - v16;
  v17 = sub_100024A2C(&qword_100418DA0, &qword_10036D910);
  v18 = __chkstk_darwin(v17 - 8);
  v119 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v131 = &v105 - v20;
  v129 = type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo(0);
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v118 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_100024A2C(&qword_10041C550, &qword_100373D40);
  __chkstk_darwin(v127);
  v130 = &v105 - v22;
  v23 = sub_100024A2C(&qword_100418D98, &qword_10036D908);
  v24 = __chkstk_darwin(v23 - 8);
  v125 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v134 = &v105 - v26;
  v27 = type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo(0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v126 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100024A2C(&qword_10041C558, &qword_100373D48);
  v31 = v30 - 8;
  __chkstk_darwin(v30);
  v33 = &v105 - v32;
  v34 = sub_100024A2C(&qword_100418D90, &qword_10036D900);
  v35 = __chkstk_darwin(v34 - 8);
  v133 = &v105 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v38 = &v105 - v37;
  v39 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  swift_beginAccess();
  sub_10000A0A4(a1 + v39, v38, &qword_100418D90, &qword_10036D900);
  v40 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__gps;
  v41 = v135;
  swift_beginAccess();
  v42 = *(v31 + 56);
  sub_10000A0A4(v38, v33, &qword_100418D90, &qword_10036D900);
  sub_10000A0A4(v41 + v40, &v33[v42], &qword_100418D90, &qword_10036D900);
  v43 = *(v28 + 48);
  if (v43(v33, 1, v27) == 1)
  {

    sub_1000059A8(v38, &qword_100418D90, &qword_10036D900);
    if (v43(&v33[v42], 1, v27) == 1)
    {
      sub_1000059A8(v33, &qword_100418D90, &qword_10036D900);
      goto LABEL_8;
    }

LABEL_6:
    v45 = &qword_10041C558;
    v46 = &qword_100373D48;
    v47 = v33;
LABEL_22:
    sub_1000059A8(v47, v45, v46);
    goto LABEL_23;
  }

  v44 = v133;
  sub_10000A0A4(v33, v133, &qword_100418D90, &qword_10036D900);
  if (v43(&v33[v42], 1, v27) == 1)
  {

    sub_1000059A8(v38, &qword_100418D90, &qword_10036D900);
    sub_10009E7F4(v44, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
    goto LABEL_6;
  }

  v48 = v126;
  sub_10009E724(&v33[v42], v126, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);

  v49 = sub_1000A382C(v44, v48);
  sub_10009E7F4(v48, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  sub_1000059A8(v38, &qword_100418D90, &qword_10036D900);
  sub_10009E7F4(v44, type metadata accessor for CLP_LogEntry_PrivateData_GpsTimeInfo);
  sub_1000059A8(v33, &qword_100418D90, &qword_10036D900);
  if ((v49 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v50 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  v51 = v134;
  sub_10000A0A4(a1 + v50, v134, &qword_100418D98, &qword_10036D908);
  v52 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__glonass;
  swift_beginAccess();
  v53 = *(v127 + 48);
  v54 = v130;
  sub_10000A0A4(v51, v130, &qword_100418D98, &qword_10036D908);
  sub_10000A0A4(v41 + v52, v54 + v53, &qword_100418D98, &qword_10036D908);
  v55 = *(v128 + 48);
  v56 = v129;
  if (v55(v54, 1, v129) == 1)
  {
    sub_1000059A8(v51, &qword_100418D98, &qword_10036D908);
    v57 = v55(v54 + v53, 1, v56);
    v58 = v132;
    v59 = v131;
    if (v57 == 1)
    {
      sub_1000059A8(v54, &qword_100418D98, &qword_10036D908);
      goto LABEL_15;
    }

LABEL_13:
    v45 = &qword_10041C550;
    v46 = &qword_100373D40;
LABEL_21:
    v47 = v54;
    goto LABEL_22;
  }

  v60 = v125;
  sub_10000A0A4(v54, v125, &qword_100418D98, &qword_10036D908);
  v61 = v55(v54 + v53, 1, v56);
  v62 = v132;
  v59 = v131;
  if (v61 == 1)
  {
    sub_1000059A8(v134, &qword_100418D98, &qword_10036D908);
    sub_10009E7F4(v60, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
    goto LABEL_13;
  }

  v63 = v54 + v53;
  v64 = v118;
  sub_10009E724(v63, v118, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  v65 = sub_1000A1F10(v60, v64);
  sub_10009E7F4(v64, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  sub_1000059A8(v134, &qword_100418D98, &qword_10036D908);
  sub_10009E7F4(v60, type metadata accessor for CLP_LogEntry_PrivateData_GlonassTimeInfo);
  sub_1000059A8(v54, &qword_100418D98, &qword_10036D908);
  v58 = v62;
  if ((v65 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  v66 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  sub_10000A0A4(a1 + v66, v59, &qword_100418DA0, &qword_10036D910);
  v67 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__beidou;
  swift_beginAccess();
  v68 = *(v120 + 48);
  v54 = v123;
  sub_10000A0A4(v59, v123, &qword_100418DA0, &qword_10036D910);
  sub_10000A0A4(v41 + v67, v54 + v68, &qword_100418DA0, &qword_10036D910);
  v69 = *(v121 + 48);
  v70 = v122;
  if (v69(v54, 1, v122) == 1)
  {
    sub_1000059A8(v59, &qword_100418DA0, &qword_10036D910);
    v71 = v69(v54 + v68, 1, v70);
    v72 = v124;
    if (v71 == 1)
    {
      sub_1000059A8(v54, &qword_100418DA0, &qword_10036D910);
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v73 = v119;
  sub_10000A0A4(v54, v119, &qword_100418DA0, &qword_10036D910);
  v74 = v69(v54 + v68, 1, v70);
  v72 = v124;
  if (v74 == 1)
  {
    sub_1000059A8(v59, &qword_100418DA0, &qword_10036D910);
    sub_10009E7F4(v73, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
LABEL_20:
    v45 = &qword_10041C548;
    v46 = &qword_100373D38;
    goto LABEL_21;
  }

  v76 = v70;
  v77 = v112;
  sub_10009E724(v54 + v68, v112, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  v78 = *(v76 + 20);
  v79 = *(v73 + v78);
  v80 = *(v77 + v78);
  if (v79 != v80)
  {

    v81 = sub_100091298(v79, v80);

    if (!v81)
    {
      sub_10009E7F4(v77, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      sub_1000059A8(v59, &qword_100418DA0, &qword_10036D910);
      sub_10009E7F4(v119, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
      v47 = v54;
      v45 = &qword_100418DA0;
      v46 = &qword_10036D910;
      goto LABEL_22;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v82 = v59;
  v83 = v119;
  LODWORD(v134) = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10009E7F4(v77, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  sub_1000059A8(v82, &qword_100418DA0, &qword_10036D910);
  sub_10009E7F4(v83, type metadata accessor for CLP_LogEntry_PrivateData_BeidouTimeInfo);
  sub_1000059A8(v54, &qword_100418DA0, &qword_10036D910);
  v58 = v132;
  if ((v134 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_29:
  v84 = v72;
  v85 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v86 = v117;
  sub_10000A0A4(a1 + v85, v117, &qword_100418DA8, &qword_10036D918);
  v87 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__galileo;
  swift_beginAccess();
  v88 = *(v113 + 48);
  v89 = v116;
  sub_10000A0A4(v86, v116, &qword_100418DA8, &qword_10036D918);
  sub_10000A0A4(v41 + v87, v89 + v88, &qword_100418DA8, &qword_10036D918);
  v90 = *(v114 + 48);
  v91 = v115;
  if (v90(v89, 1, v115) != 1)
  {
    v92 = v111;
    sub_10000A0A4(v89, v111, &qword_100418DA8, &qword_10036D918);
    if (v90(v89 + v88, 1, v91) == 1)
    {
      sub_1000059A8(v117, &qword_100418DA8, &qword_10036D918);
      sub_10009E7F4(v92, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
      goto LABEL_34;
    }

    v93 = v89 + v88;
    v94 = v106;
    sub_10009E724(v93, v106, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    v95 = sub_1000A2500(v92, v94);
    sub_10009E7F4(v94, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    sub_1000059A8(v117, &qword_100418DA8, &qword_10036D918);
    sub_10009E7F4(v92, type metadata accessor for CLP_LogEntry_PrivateData_GalileoTimeInfo);
    sub_1000059A8(v89, &qword_100418DA8, &qword_10036D918);
    if (v95)
    {
      goto LABEL_36;
    }

LABEL_23:

    return 0;
  }

  sub_1000059A8(v86, &qword_100418DA8, &qword_10036D918);
  if (v90(v89 + v88, 1, v91) != 1)
  {
LABEL_34:
    v45 = &qword_10041C540;
    v46 = &qword_100373D30;
    v47 = v89;
    goto LABEL_22;
  }

  sub_1000059A8(v89, &qword_100418DA8, &qword_10036D918);
LABEL_36:
  v96 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  sub_10000A0A4(a1 + v96, v84, &qword_100418DB0, &qword_10036D920);
  v97 = OBJC_IVAR____TtCV10ALProtobuf43CLP_LogEntry_PrivateData_TimeConversionInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__navic;
  swift_beginAccess();
  v98 = *(v107 + 48);
  v99 = v110;
  sub_10000A0A4(v84, v110, &qword_100418DB0, &qword_10036D920);
  sub_10000A0A4(v41 + v97, v99 + v98, &qword_100418DB0, &qword_10036D920);
  v100 = *(v108 + 48);
  v101 = v109;
  if (v100(v99, 1, v109) == 1)
  {

    sub_1000059A8(v84, &qword_100418DB0, &qword_10036D920);
    if (v100(v99 + v98, 1, v101) == 1)
    {
      sub_1000059A8(v99, &qword_100418DB0, &qword_10036D920);
      return 1;
    }

    goto LABEL_42;
  }

  sub_10000A0A4(v99, v58, &qword_100418DB0, &qword_10036D920);
  if (v100(v99 + v98, 1, v101) == 1)
  {

    sub_1000059A8(v124, &qword_100418DB0, &qword_10036D920);
    sub_10009E7F4(v58, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
LABEL_42:
    sub_1000059A8(v99, &qword_10041C538, &qword_100373D28);
    return 0;
  }

  v102 = v99 + v98;
  v103 = v105;
  sub_10009E724(v102, v105, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  v104 = sub_1000A2FEC(v58, v103);

  sub_10009E7F4(v103, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  sub_1000059A8(v124, &qword_100418DB0, &qword_10036D920);
  sub_10009E7F4(v58, type metadata accessor for CLP_LogEntry_PrivateData_NavicTimeInfo);
  sub_1000059A8(v99, &qword_100418DB0, &qword_10036D920);
  return (v104 & 1) != 0;
}

uint64_t sub_100096BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2B8, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo, &unk_100372768);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100096C64(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419578, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo, &unk_1003726F0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100096CD0(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419578, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo, &unk_1003726F0);

  return Message.hash(into:)();
}

uint64_t sub_100096D74()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F28);
  sub_100005DF0(v0, qword_100432F28);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "decode_time_full_gps_ns";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "alpha0";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "alpha1";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "alpha2";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "alpha3";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "beta0";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "beta1";
  *(v19 + 1) = 5;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "beta2";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "beta3";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100097148(uint64_t a1, uint64_t a2, uint64_t a3)
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
        if (result <= 2)
        {
          if (result == 1)
          {
            type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
            dispatch thunk of Decoder.decodeSingularUInt64Field(value:)();
            goto LABEL_13;
          }

          if (result != 2)
          {
            goto LABEL_13;
          }
        }
      }

      else if (result > 9)
      {
        goto LABEL_13;
      }

      type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
      dispatch thunk of Decoder.decodeSingularFloatField(value:)();
LABEL_13:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

int *sub_1000972E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v10 = result;
  if (*(v5 + result[5] + 8))
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    result = dispatch thunk of Visitor.visitSingularUInt64Field(value:fieldNumber:)();
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

  sub_100097484(v5, a1, a2, a3, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  sub_100097500(v5, a1, a2, a3);
  sub_100097578(v5, a1, a2, a3);
  sub_1000975F0(v5, a1, a2, a3);
  sub_100097668(v5, a1, a2, a3);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100097484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 36) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100097500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  if ((*(a1 + *(result + 40) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100097578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  if ((*(a1 + *(result + 44) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_1000975F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  if ((*(a1 + *(result + 48) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_100097668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  if ((*(a1 + *(result + 52) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularFloatField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10009772C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = a1[12];
  v15 = a2 + a1[11];
  *v15 = 0;
  *(v15 + 4) = 1;
  v16 = a2 + v14;
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a2 + a1[13];
  *v17 = 0;
  *(v17 + 4) = 1;
  return result;
}

uint64_t sub_100097808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2B0, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters, &unk_1003728D0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000978A8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_100419590, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters, &unk_100372858);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100097914(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_100419590, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters, &unk_100372858);

  return Message.hash(into:)();
}

uint64_t sub_1000979B8()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F40);
  sub_100005DF0(v0, qword_100432F40);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
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
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "z";
  *(v11 + 8) = 1;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100097C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

  if ((*(v4 + *(v7 + 28) + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_100097DE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2A8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz, &unk_100372A38);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100097E80(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004195A8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz, &unk_1003729C0);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100097EEC(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004195A8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz, &unk_1003729C0);

  return Message.hash(into:)();
}

uint64_t sub_100097F90()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F58);
  sub_100005DF0(v0, qword_100432F58);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036D7B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "band";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sv_reference_point";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "offset_xyz_m";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100098228(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
          sub_1000AE740();
LABEL_5:
          v3 = v6;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
          type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
          sub_1000A5BD8(&qword_1004195A8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz, &unk_1003729C0);
LABEL_16:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
          type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
          sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &unk_10036ED48);
          goto LABEL_16;
        }

        if (result == 2)
        {
          v6 = v3;
          type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
          sub_1000AEA34();
          goto LABEL_5;
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_100098404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_100098530(v5, a1, a2, a3);
  if (!v4)
  {
    v10 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
    if (*(v5 + *(v10 + 24)) != 13)
    {
      v11 = v10;
      sub_1000AEA34();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      v10 = v11;
    }

    if (*(v5 + *(v10 + 28)) != 4)
    {
      sub_1000AE740();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    sub_10009874C(v5, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_100098530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  sub_10000A0A4(a1 + *(v12 + 20), v7, &qword_100418D10, &qword_10036D880);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418D10, &qword_10036D880);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000A5BD8(&qword_1004191A0, type metadata accessor for CLP_LogEntry_PrivateData_SvId, &unk_10036ED48);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
}

uint64_t sub_10009874C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = sub_100024A2C(&qword_100418DB8, &qword_10036D928);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  sub_10000A0A4(a1 + *(v12 + 32), v7, &qword_100418DB8, &qword_10036D928);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418DB8, &qword_10036D928);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  sub_1000A5BD8(&qword_1004195A8, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz, &unk_1003729C0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
}

uint64_t sub_1000989B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = a1[5];
  v5 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[7];
  *(a2 + a1[6]) = 13;
  *(a2 + v6) = 4;
  v7 = a1[8];
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t sub_100098ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C2A0, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, &unk_100372BA0);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100098B5C(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004195C0, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, &unk_100372B28);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100098BC8(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004195C0, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, &unk_100372B28);

  return Message.hash(into:)();
}

uint64_t sub_100098C6C()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F70);
  sub_100005DF0(v0, qword_100432F70);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10036C800;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "ios_absolute_sec";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mach_absolute_sec";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "mach_continuous_sec";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100098FAC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = UnknownStorage.init()();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + a1[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_100099004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C298, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp, &unk_100372D08);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000990A4(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004195D8, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp, &unk_100372C90);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100099110(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004195D8, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp, &unk_100372C90);

  return Message.hash(into:)();
}

uint64_t sub_1000991B4()
{
  v0 = type metadata accessor for _NameMap();
  sub_100036108(v0, qword_100432F88);
  sub_100005DF0(v0, qword_100432F88);
  sub_100024A2C(&qword_100418BE8, &unk_100373D70);
  v1 = (sub_100024A2C(&qword_100418BF0, &qword_10036D6C0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10036C810;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "received_timestamp";
  *(v5 + 8) = 18;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "meas_report";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "sv_info";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "rx_band_corrections";
  *(v13 + 1) = 19;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "time_conversion";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "meas_applicability_time_mach_continuous_sec";
  *(v17 + 1) = 43;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "meas_applicability_time_uncertainty_sec";
  *(v19 + 1) = 39;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "klobuchar_model";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "apc_sv_offset";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_100099580()
{
  type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v2 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo) = &_swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections) = &_swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v6 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  result = (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  *(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset) = &_swiftEmptyArrayStorage;
  qword_1004371A8 = v0;
  return result;
}

uint64_t sub_10009973C(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  __chkstk_darwin(v3 - 8);
  v55 = &v47 - v4;
  v5 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  __chkstk_darwin(v5 - 8);
  v54 = &v47 - v6;
  v7 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  __chkstk_darwin(v7 - 8);
  v49 = &v47 - v8;
  v9 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  __chkstk_darwin(v9 - 8);
  v11 = &v47 - v10;
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v13 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v48 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  v15 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo) = &_swiftEmptyArrayStorage;
  v17 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections) = &_swiftEmptyArrayStorage;
  v18 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v50 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  v19 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  v51 = v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v52 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  v23 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  (*(*(v23 - 8) + 56))(v1 + v22, 1, 1, v23);
  v53 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset) = &_swiftEmptyArrayStorage;
  v24 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v24, v11, &qword_100418DC0, &qword_10036D930);
  swift_beginAccess();
  sub_10000AD64(v11, v1 + v12, &qword_100418DC0, &qword_10036D930);
  swift_endAccess();
  v25 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v26 = v49;
  sub_10000A0A4(a1 + v25, v49, &qword_100418DC8, &qword_10036D938);
  v27 = v48;
  swift_beginAccess();
  sub_10000AD64(v26, v1 + v27, &qword_100418DC8, &qword_10036D938);
  swift_endAccess();
  v28 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v29 = *(a1 + v28);
  swift_beginAccess();
  *(v1 + v16) = v29;

  v30 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v31 = *(a1 + v30);
  swift_beginAccess();
  *(v1 + v17) = v31;

  v32 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v33 = v54;
  sub_10000A0A4(a1 + v32, v54, &qword_100418DD0, &qword_10036D940);
  v34 = v50;
  swift_beginAccess();
  sub_10000AD64(v33, v1 + v34, &qword_100418DD0, &qword_10036D940);
  swift_endAccess();
  v35 = (a1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec);
  swift_beginAccess();
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);
  swift_beginAccess();
  *v20 = v36;
  *(v20 + 8) = v35;
  v37 = (a1 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec);
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  v39 = v51;
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 8) = v37;
  v40 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  v41 = v55;
  sub_10000A0A4(a1 + v40, v55, &qword_100418DD8, &qword_10036D948);
  v42 = v52;
  swift_beginAccess();
  sub_10000AD64(v41, v1 + v42, &qword_100418DD8, &qword_10036D948);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
  swift_beginAccess();
  v44 = *(a1 + v43);

  v45 = v53;
  swift_beginAccess();
  *(v1 + v45) = v44;

  return v1;
}

uint64_t sub_100099DA4()
{
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp, &qword_100418DC0, &qword_10036D930);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport, &qword_100418DC8, &qword_10036D938);

  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion, &qword_100418DD0, &qword_10036D940);
  sub_1000059A8(v0 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel, &qword_100418DD8, &qword_10036D948);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100099EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v3 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents._StorageClass(0);
    v9 = swift_allocObject();
    sub_10009973C(v8);
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

      if (result <= 4)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            v16 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp;
            v18 = &unk_100372C90;
            v19 = &qword_1004195D8;
          }

          else
          {
            if (result != 2)
            {
              goto LABEL_28;
            }

            v16 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport;
            v18 = &unk_100370F08;
            v19 = &qword_1004193E0;
          }

          goto LABEL_26;
        }

        v12 = v4;
        if (result == 3)
        {
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_SvInfo;
          v14 = &unk_100371610;
          v15 = &qword_100419458;
        }

        else
        {
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
          v13 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections;
          v14 = &unk_100371778;
          v15 = &qword_100419470;
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            v16 = v4;
            swift_beginAccess();
            type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
            v17 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo;
            v18 = &unk_1003726F0;
            v19 = &qword_100419578;
LABEL_26:
            sub_1000A5BD8(v19, v17, v18);
            v4 = v16;
            dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
            goto LABEL_27;
          }

LABEL_23:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_27;
        }

        if (result == 7)
        {
          goto LABEL_23;
        }

        if (result == 8)
        {
          v16 = v4;
          swift_beginAccess();
          type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
          v17 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters;
          v18 = &unk_100372858;
          v19 = &qword_100419590;
          goto LABEL_26;
        }

        if (result != 9)
        {
          goto LABEL_28;
        }

        v12 = v4;
        swift_beginAccess();
        type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
        v13 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset;
        v14 = &unk_100372B28;
        v15 = &qword_1004195C0;
      }

      sub_1000A5BD8(v15, v13, v14);
      v4 = v12;
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
LABEL_27:
      swift_endAccess();
LABEL_28:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_10009A320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + *(type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents(0) + 20));
  result = sub_10009A660(v8, a1, a2, a3);
  if (!v4)
  {
    sub_10009A888(v8, a1, a2, a3);
    v10 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
    swift_beginAccess();
    if (*(*(v8 + v10) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_SvInfo(0);
      sub_1000A5BD8(&qword_100419458, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, &unk_100371610);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v11 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
    swift_beginAccess();
    if (*(*(v8 + v11) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
      sub_1000A5BD8(&qword_100419470, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections, &unk_100371778);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    sub_10009AAB0(v8, a1, a2, a3);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec, 6);
    sub_10009ACD8(v8, a1, a2, a3, &OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec, 7);
    sub_10009AD68(v8, a1, a2, a3);
    v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
    swift_beginAccess();
    if (*(*(v8 + v12) + 16))
    {
      type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
      sub_1000A5BD8(&qword_1004195C0, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset, &unk_100372B28);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_10009A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418DC0, &qword_10036D930);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418DC0, &qword_10036D930);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  sub_1000A5BD8(&qword_1004195D8, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp, &unk_100372C90);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
}

uint64_t sub_10009A888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418DC8, &qword_10036D938);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418DC8, &qword_10036D938);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  sub_1000A5BD8(&qword_1004193E0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport, &unk_100370F08);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
}

uint64_t sub_10009AAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418DD0, &qword_10036D940);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418DD0, &qword_10036D940);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
  sub_1000A5BD8(&qword_100419578, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo, &unk_1003726F0);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
}

uint64_t sub_10009ACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if ((*(v6 + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t sub_10009AD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000A0A4(a1 + v12, v7, &qword_100418DD8, &qword_10036D948);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1000059A8(v7, &qword_100418DD8, &qword_10036D948);
  }

  sub_10009E724(v7, v11, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  sub_1000A5BD8(&qword_100419590, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters, &unk_100372858);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
}

uint64_t sub_10009AFD4(uint64_t a1, uint64_t a2)
{
  v156 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v132 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_100024A2C(&qword_10041C480, &qword_100373C70);
  __chkstk_darwin(v133);
  v136 = &v132 - v5;
  v6 = sub_100024A2C(&qword_100418DD8, &qword_10036D948);
  v7 = __chkstk_darwin(v6 - 8);
  v138 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v152 = &v132 - v9;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo(0);
  v141 = *(v10 - 8);
  v142 = v10;
  __chkstk_darwin(v10);
  v137 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_100024A2C(&qword_10041C488, &qword_100373C78);
  __chkstk_darwin(v140);
  v143 = &v132 - v12;
  v13 = sub_100024A2C(&qword_100418DD0, &qword_10036D940);
  v14 = __chkstk_darwin(v13 - 8);
  v139 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v144 = &v132 - v16;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport(0);
  v149 = *(v17 - 8);
  v150 = v17;
  __chkstk_darwin(v17);
  v145 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100024A2C(&qword_10041C490, &qword_100373C80);
  __chkstk_darwin(v148);
  v151 = &v132 - v19;
  v20 = sub_100024A2C(&qword_100418DC8, &qword_10036D938);
  v21 = __chkstk_darwin(v20 - 8);
  v147 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v153 = &v132 - v23;
  v154 = type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp(0);
  v24 = *(v154 - 8);
  __chkstk_darwin(v154);
  v146 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100024A2C(&qword_10041C498, &qword_100373C88);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = &v132 - v28;
  v30 = sub_100024A2C(&qword_100418DC0, &qword_10036D930);
  v31 = __chkstk_darwin(v30 - 8);
  v155 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v132 - v33;
  v35 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  swift_beginAccess();
  v36 = a1 + v35;
  v37 = a1;
  sub_10000A0A4(v36, v34, &qword_100418DC0, &qword_10036D930);
  v38 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__receivedTimestamp;
  v39 = v156;
  swift_beginAccess();
  v40 = *(v27 + 56);
  sub_10000A0A4(v34, v29, &qword_100418DC0, &qword_10036D930);
  v41 = v39;
  v42 = v154;
  v43 = v41 + v38;
  v44 = v41;
  sub_10000A0A4(v43, &v29[v40], &qword_100418DC0, &qword_10036D930);
  v45 = *(v24 + 48);
  if (v45(v29, 1, v42) == 1)
  {

    sub_1000059A8(v34, &qword_100418DC0, &qword_10036D930);
    v46 = v44;
    v47 = v37;
    if (v45(&v29[v40], 1, v42) == 1)
    {
      sub_1000059A8(v29, &qword_100418DC0, &qword_10036D930);
      goto LABEL_8;
    }

LABEL_6:
    v48 = &qword_10041C498;
    v49 = &qword_100373C88;
    v50 = v29;
LABEL_15:
    sub_1000059A8(v50, v48, v49);
    goto LABEL_16;
  }

  v47 = v37;
  sub_10000A0A4(v29, v155, &qword_100418DC0, &qword_10036D930);
  if (v45(&v29[v40], 1, v42) == 1)
  {

    sub_1000059A8(v34, &qword_100418DC0, &qword_10036D930);
    sub_10009E7F4(v155, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
    goto LABEL_6;
  }

  v51 = v146;
  sub_10009E724(&v29[v40], v146, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);

  v52 = v155;
  v53 = sub_1000A4108(v155, v51, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  sub_10009E7F4(v51, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  sub_1000059A8(v34, &qword_100418DC0, &qword_10036D930);
  v54 = v52;
  v46 = v44;
  sub_10009E7F4(v54, type metadata accessor for CLP_LogEntry_PrivateData_ReceivedTimeStamp);
  sub_1000059A8(v29, &qword_100418DC0, &qword_10036D930);
  if ((v53 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v55 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v56 = v153;
  sub_10000A0A4(v47 + v55, v153, &qword_100418DC8, &qword_10036D938);
  v57 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measReport;
  swift_beginAccess();
  v58 = *(v148 + 48);
  v59 = v151;
  sub_10000A0A4(v56, v151, &qword_100418DC8, &qword_10036D938);
  v60 = v46 + v57;
  v61 = v59;
  sub_10000A0A4(v60, v59 + v58, &qword_100418DC8, &qword_10036D938);
  v62 = *(v149 + 48);
  v63 = v59;
  v64 = v150;
  if (v62(v63, 1, v150) == 1)
  {
    sub_1000059A8(v56, &qword_100418DC8, &qword_10036D938);
    v65 = v62(v61 + v58, 1, v64);
    v66 = v152;
    if (v65 == 1)
    {
      sub_1000059A8(v61, &qword_100418DC8, &qword_10036D938);
      goto LABEL_21;
    }

LABEL_13:
    v48 = &qword_10041C490;
    v49 = &qword_100373C80;
LABEL_14:
    v50 = v61;
    goto LABEL_15;
  }

  v67 = v147;
  sub_10000A0A4(v61, v147, &qword_100418DC8, &qword_10036D938);
  v68 = v62(v61 + v58, 1, v64);
  v66 = v152;
  if (v68 == 1)
  {
    sub_1000059A8(v56, &qword_100418DC8, &qword_10036D938);
    sub_10009E7F4(v67, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
    goto LABEL_13;
  }

  v71 = v145;
  sub_10009E724(v61 + v58, v145, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  v72 = *(v64 + 20);
  v73 = *(v67 + v72);
  v74 = *(v71 + v72);
  if (v73 != v74)
  {

    v75 = sub_10008633C(v73, v74);

    if ((v75 & 1) == 0)
    {
      v97 = type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport;
      sub_10009E7F4(v71, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
      v98 = &qword_100418DC8;
      v99 = &qword_10036D938;
      sub_1000059A8(v153, &qword_100418DC8, &qword_10036D938);
      v100 = v147;
      goto LABEL_27;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  v76 = v147;
  v77 = dispatch thunk of static Equatable.== infix(_:_:)();
  sub_10009E7F4(v71, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  sub_1000059A8(v153, &qword_100418DC8, &qword_10036D938);
  sub_10009E7F4(v76, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReport);
  sub_1000059A8(v61, &qword_100418DC8, &qword_10036D938);
  if ((v77 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  v78 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v79 = *(v47 + v78);
  v80 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svInfo;
  swift_beginAccess();
  v81 = *(v46 + v80);

  v82 = sub_10009DB60(v79, v81, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, type metadata accessor for CLP_LogEntry_PrivateData_SvInfo, sub_10008A440);

  if ((v82 & 1) == 0)
  {
    goto LABEL_16;
  }

  v83 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v84 = *(v47 + v83);
  v85 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rxBandCorrections;
  swift_beginAccess();
  v86 = *(v46 + v85);

  v87 = sub_10009DDC0(v84, v86);

  if ((v87 & 1) == 0)
  {
    goto LABEL_16;
  }

  v88 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v89 = v144;
  sub_10000A0A4(v47 + v88, v144, &qword_100418DD0, &qword_10036D940);
  v90 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__timeConversion;
  swift_beginAccess();
  v91 = *(v140 + 48);
  v92 = v143;
  sub_10000A0A4(v89, v143, &qword_100418DD0, &qword_10036D940);
  v93 = v46 + v90;
  v61 = v92;
  sub_10000A0A4(v93, v92 + v91, &qword_100418DD0, &qword_10036D940);
  v94 = *(v141 + 48);
  v95 = v92;
  v96 = v142;
  if (v94(v95, 1, v142) != 1)
  {
    v101 = v139;
    sub_10000A0A4(v61, v139, &qword_100418DD0, &qword_10036D940);
    if (v94(v61 + v91, 1, v96) == 1)
    {
      sub_1000059A8(v144, &qword_100418DD0, &qword_10036D940);
      sub_10009E7F4(v101, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      goto LABEL_30;
    }

    v102 = v96;
    v103 = v137;
    sub_10009E724(v61 + v91, v137, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    v104 = *(v102 + 20);
    v105 = *(v101 + v104);
    v106 = *(v103 + v104);
    if (v105 == v106 || (, , v107 = sub_1000956B4(v105, v106), , , v107))
    {
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v108 = v139;
      v109 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10009E7F4(v103, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      sub_1000059A8(v144, &qword_100418DD0, &qword_10036D940);
      sub_10009E7F4(v108, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
      sub_1000059A8(v61, &qword_100418DD0, &qword_10036D940);
      if ((v109 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_34;
    }

    v97 = type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo;
    sub_10009E7F4(v103, type metadata accessor for CLP_LogEntry_PrivateData_TimeConversionInfo);
    v98 = &qword_100418DD0;
    v99 = &qword_10036D940;
    sub_1000059A8(v144, &qword_100418DD0, &qword_10036D940);
    v100 = v139;
LABEL_27:
    sub_10009E7F4(v100, v97);
    v50 = v61;
    v48 = v98;
    v49 = v99;
    goto LABEL_15;
  }

  sub_1000059A8(v89, &qword_100418DD0, &qword_10036D940);
  if (v94(v61 + v91, 1, v96) != 1)
  {
LABEL_30:
    v48 = &qword_10041C488;
    v49 = &qword_100373C78;
    goto LABEL_14;
  }

  sub_1000059A8(v61, &qword_100418DD0, &qword_10036D940);
LABEL_34:
  v110 = v47 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  v111 = *v110;
  v112 = *(v110 + 8);
  v113 = v46 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeMachContinuousSec;
  swift_beginAccess();
  if (v112)
  {
    v114 = v138;
    if ((*(v113 + 8) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v114 = v138;
    if ((*(v113 + 8) & 1) != 0 || v111 != *v113)
    {
      goto LABEL_16;
    }
  }

  v115 = v47 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  v116 = *v115;
  v117 = *(v115 + 8);
  v118 = v46 + OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__measApplicabilityTimeUncertaintySec;
  swift_beginAccess();
  if (v117)
  {
    if ((*(v118 + 8) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((*(v118 + 8) & 1) != 0 || v116 != *v118)
  {
    goto LABEL_16;
  }

  v119 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  sub_10000A0A4(v47 + v119, v66, &qword_100418DD8, &qword_10036D948);
  v120 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__klobucharModel;
  swift_beginAccess();
  v121 = *(v133 + 48);
  v122 = v136;
  sub_10000A0A4(v66, v136, &qword_100418DD8, &qword_10036D948);
  sub_10000A0A4(v46 + v120, v122 + v121, &qword_100418DD8, &qword_10036D948);
  v123 = v135;
  v124 = *(v134 + 48);
  if (v124(v122, 1, v135) == 1)
  {
    sub_1000059A8(v66, &qword_100418DD8, &qword_10036D948);
    if (v124(v122 + v121, 1, v123) == 1)
    {
      sub_1000059A8(v122, &qword_100418DD8, &qword_10036D948);
LABEL_52:
      v128 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
      swift_beginAccess();
      v129 = *(v47 + v128);
      v130 = OBJC_IVAR____TtCV10ALProtobuf58CLP_LogEntry_PrivateData_MeasurementReportCallbackContentsP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__apcSvOffset;
      swift_beginAccess();
      v131 = *(v46 + v130);

      v69 = sub_10009E0C4(v129, v131);

      return v69 & 1;
    }

    goto LABEL_50;
  }

  sub_10000A0A4(v122, v114, &qword_100418DD8, &qword_10036D948);
  if (v124(v122 + v121, 1, v123) == 1)
  {
    sub_1000059A8(v66, &qword_100418DD8, &qword_10036D948);
    sub_10009E7F4(v114, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
LABEL_50:
    v48 = &qword_10041C480;
    v49 = &qword_100373C70;
    v50 = v122;
    goto LABEL_15;
  }

  v125 = v122 + v121;
  v126 = v132;
  sub_10009E724(v125, v132, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  v127 = sub_1000A05C0(v114, v126);
  sub_10009E7F4(v126, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  sub_1000059A8(v66, &qword_100418DD8, &qword_10036D948);
  sub_10009E7F4(v114, type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters);
  sub_1000059A8(v122, &qword_100418DD8, &qword_10036D948);
  if (v127)
  {
    goto LABEL_52;
  }

LABEL_16:

  v69 = 0;
  return v69 & 1;
}

Swift::Int sub_10009C300(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000A5BD8(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10009C3AC@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  UnknownStorage.init()();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;
}

uint64_t sub_10009C458(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000A5BD8(&qword_10041C290, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, &unk_100372E70);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10009C4F8(uint64_t a1)
{
  v2 = sub_1000A5BD8(&qword_1004195F0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, &unk_100372DF8);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10009C564(uint64_t a1, uint64_t a2)
{
  sub_1000A5BD8(&qword_1004195F0, type metadata accessor for CLP_LogEntry_PrivateData_MeasurementReportCallbackContents, &unk_100372DF8);

  return Message.hash(into:)();
}

uint64_t sub_10009C5E0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009C63C(uint64_t a1, uint64_t a2)
{
  v98 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset(0);
  v4 = *(v98 - 8);
  __chkstk_darwin(v98);
  v92 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100418CF8, &qword_10036D868);
  __chkstk_darwin(v6 - 8);
  v93 = &v85 - v7;
  v8 = sub_100024A2C(&qword_10041C4C0, &qword_100373CB0);
  __chkstk_darwin(v8);
  v10 = &v85 - v9;
  v99 = type metadata accessor for CLP_LogEntry_PrivateData_SvTime(0);
  v11 = *(v99 - 8);
  __chkstk_darwin(v99);
  v94 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100024A2C(&qword_100418CF0, &qword_10036D860);
  __chkstk_darwin(v13 - 8);
  v95 = &v85 - v14;
  v15 = sub_100024A2C(&qword_10041C4C8, &qword_100373CB8);
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  v101 = type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak(0);
  v18 = __chkstk_darwin(v101);
  v102 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v85 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_71:
    v80 = 0;
    return v80 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v80 = 1;
    return v80 & 1;
  }

  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v90 = v10;
  v91 = (v11 + 48);
  v26 = a2 + v24;
  v88 = (v4 + 48);
  v89 = v8;
  v86 = *(v20 + 72);
  v87 = v17;
  v27 = v99;
  v85 = v15;
  v100 = &v85 - v21;
  while (1)
  {
    v97 = v25;
    v28 = v22;
    result = sub_10009E78C(v25, v22, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    if (!v23)
    {
      break;
    }

    v30 = v102;
    v96 = v26;
    sub_10009E78C(v26, v102, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    v31 = v101[5];
    v32 = *(v15 + 48);
    sub_10000A0A4(&v28[v31], v17, &qword_100418CF0, &qword_10036D860);
    sub_10000A0A4(v30 + v31, &v17[v32], &qword_100418CF0, &qword_10036D860);
    v33 = *v91;
    if ((*v91)(v17, 1, v27) == 1)
    {
      if (v33(&v17[v32], 1, v27) != 1)
      {
        goto LABEL_64;
      }

      sub_1000059A8(v17, &qword_100418CF0, &qword_10036D860);
      v34 = v90;
    }

    else
    {
      v35 = v95;
      sub_10000A0A4(v17, v95, &qword_100418CF0, &qword_10036D860);
      if (v33(&v17[v32], 1, v27) == 1)
      {
        sub_10009E7F4(v35, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
LABEL_64:
        v82 = &qword_10041C4C8;
        v83 = &qword_100373CB8;
LABEL_65:
        v84 = v17;
        goto LABEL_69;
      }

      v36 = v94;
      sub_10009E724(&v17[v32], v94, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      v37 = v27[5];
      v38 = (v35 + v37);
      v39 = *(v35 + v37 + 8);
      v40 = (v36 + v37);
      v41 = *(v36 + v37 + 8);
      if (v39)
      {
        v34 = v90;
        if (!v41)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (*v38 != *v40)
        {
          LOBYTE(v41) = 1;
        }

        v34 = v90;
        if (v41)
        {
LABEL_61:
          sub_10009E7F4(v36, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
          sub_10009E7F4(v35, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
          v82 = &qword_100418CF0;
          v83 = &qword_10036D860;
          goto LABEL_65;
        }
      }

      v42 = v27[6];
      v43 = (v35 + v42);
      v44 = *(v35 + v42 + 8);
      v45 = (v36 + v42);
      v46 = *(v36 + v42 + 8);
      if (v44)
      {
        if (!v46)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (*v43 != *v45)
        {
          LOBYTE(v46) = 1;
        }

        if (v46)
        {
          goto LABEL_61;
        }
      }

      v47 = v27[7];
      v48 = *(v35 + v47);
      v49 = *(v36 + v47);
      if (v48 == 2)
      {
        if (v49 != 2)
        {
          goto LABEL_61;
        }
      }

      else if (v49 == 2 || ((v48 ^ v49) & 1) != 0)
      {
        goto LABEL_61;
      }

      type metadata accessor for UnknownStorage();
      v50 = v35;
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v51 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10009E7F4(v36, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      sub_10009E7F4(v50, type metadata accessor for CLP_LogEntry_PrivateData_SvTime);
      sub_1000059A8(v17, &qword_100418CF0, &qword_10036D860);
      if ((v51 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v52 = v101[6];
    v53 = *(v89 + 48);
    sub_10000A0A4(&v100[v52], v34, &qword_100418CF8, &qword_10036D868);
    sub_10000A0A4(v102 + v52, v34 + v53, &qword_100418CF8, &qword_10036D868);
    v54 = *v88;
    v55 = v98;
    if ((*v88)(v34, 1, v98) == 1)
    {
      if (v54(v34 + v53, 1, v55) != 1)
      {
        goto LABEL_67;
      }

      sub_1000059A8(v34, &qword_100418CF8, &qword_10036D868);
      v27 = v99;
      v17 = v87;
    }

    else
    {
      v56 = v93;
      sub_10000A0A4(v34, v93, &qword_100418CF8, &qword_10036D868);
      if (v54(v34 + v53, 1, v55) == 1)
      {
        sub_10009E7F4(v56, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
LABEL_67:
        v82 = &qword_10041C4C0;
        v83 = &qword_100373CB0;
LABEL_68:
        v84 = v34;
LABEL_69:
        sub_1000059A8(v84, v82, v83);
LABEL_70:
        sub_10009E7F4(v102, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
        sub_10009E7F4(v100, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
        goto LABEL_71;
      }

      v57 = v92;
      sub_10009E724(v34 + v53, v92, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      v58 = v55[5];
      v59 = (v56 + v58);
      v60 = *(v56 + v58 + 8);
      v61 = (v57 + v58);
      v62 = *(v57 + v58 + 8);
      if (v60)
      {
        v27 = v99;
        v17 = v87;
        if (!v62)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (*v59 != *v61)
        {
          LOBYTE(v62) = 1;
        }

        v27 = v99;
        v17 = v87;
        if (v62)
        {
LABEL_62:
          sub_10009E7F4(v57, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
          sub_10009E7F4(v56, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
          v82 = &qword_100418CF8;
          v83 = &qword_10036D868;
          goto LABEL_68;
        }
      }

      v63 = v55[6];
      v64 = (v56 + v63);
      v65 = *(v56 + v63 + 8);
      v66 = (v57 + v63);
      v67 = *(v57 + v63 + 8);
      if (v65)
      {
        if (!v67)
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (*v64 != *v66)
        {
          LOBYTE(v67) = 1;
        }

        if (v67)
        {
          goto LABEL_62;
        }
      }

      v68 = v55[7];
      v69 = *(v56 + v68);
      v70 = *(v57 + v68);
      if (v69 == 2)
      {
        if (v70 != 2)
        {
          goto LABEL_62;
        }
      }

      else if (v70 == 2 || ((v69 ^ v70) & 1) != 0)
      {
        goto LABEL_62;
      }

      type metadata accessor for UnknownStorage();
      v71 = v56;
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v72 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10009E7F4(v57, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      sub_10009E7F4(v71, type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffset);
      sub_1000059A8(v34, &qword_100418CF8, &qword_10036D868);
      if ((v72 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v73 = v101[7];
    v74 = &v100[v73];
    v75 = v100[v73 + 4];
    v76 = (v102 + v73);
    v77 = *(v102 + v73 + 4);
    if (v75)
    {
      if (!v77)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (*v74 != *v76)
      {
        LOBYTE(v77) = 1;
      }

      if (v77)
      {
        goto LABEL_70;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v78 = v100;
    v79 = v102;
    v80 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10009E7F4(v79, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    sub_10009E7F4(v78, type metadata accessor for CLP_LogEntry_PrivateData_SignalCorrelationPeak);
    if (v80)
    {
      v15 = v85;
      v26 = v96 + v86;
      v25 = v97 + v86;
      v81 = v23-- == 1;
      v22 = v100;
      if (!v81)
      {
        continue;
      }
    }

    return v80 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009D130(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef(0);
  v4 = *(v59 - 1);
  __chkstk_darwin(v59);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100024A2C(&qword_100418D58, &qword_10036D8C8);
  __chkstk_darwin(v6 - 8);
  v58 = &v51 - v7;
  v55 = sub_100024A2C(&qword_10041C578, &qword_100373D68);
  __chkstk_darwin(v55);
  v9 = &v51 - v8;
  v10 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v60 = &v51 - v15;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    goto LABEL_42;
  }

  if (!v16 || a1 == a2)
  {
    v47 = 1;
    return v47 & 1;
  }

  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = a1 + v17;
  v57 = a2 + v17;
  v53 = v10;
  v54 = (v4 + 48);
  v52 = *(v14 + 72);
  while (1)
  {
    sub_10009E78C(v18, v60, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    sub_10009E78C(v57, v13, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    v19 = *(v10 + 20);
    v20 = (v60 + v19);
    v21 = *(v60 + v19 + 8);
    v22 = &v13[v19];
    if (v21)
    {
      if ((v22[8] & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if ((v22[8] & 1) != 0 || *v20 != *v22)
    {
      goto LABEL_38;
    }

    v23 = *(v10 + 24);
    v24 = *(v55 + 48);
    sub_10000A0A4(v60 + v23, v9, &qword_100418D58, &qword_10036D8C8);
    sub_10000A0A4(&v13[v23], &v9[v24], &qword_100418D58, &qword_10036D8C8);
    v25 = *v54;
    if ((*v54)(v9, 1, v59) == 1)
    {
      break;
    }

    sub_10000A0A4(v9, v58, &qword_100418D58, &qword_10036D8C8);
    if (v25(&v9[v24], 1, v59) == 1)
    {
      sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
      sub_10009E7F4(v60, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
      v48 = type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef;
      v49 = v58;
      goto LABEL_41;
    }

    v26 = &v9[v24];
    v27 = v56;
    sub_10009E724(v26, v56, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    v28 = v59[5];
    v29 = (v58 + v28);
    v30 = *(v58 + v28 + 8);
    v31 = (v27 + v28);
    v32 = *(v27 + v28 + 8);
    if (v30)
    {
      if (!v32)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v29 != *v31)
      {
        LOBYTE(v32) = 1;
      }

      if (v32)
      {
LABEL_37:
        sub_10009E7F4(v56, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        sub_10009E7F4(v58, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
        sub_1000059A8(v9, &qword_100418D58, &qword_10036D8C8);
LABEL_38:
        sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
        sub_10009E7F4(v60, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
        goto LABEL_42;
      }
    }

    v33 = v59[6];
    v34 = (v58 + v33);
    v35 = *(v58 + v33 + 8);
    v36 = (v56 + v33);
    v37 = *(v56 + v33 + 8);
    if (v35)
    {
      if (!v37)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v34 != *v36)
      {
        LOBYTE(v37) = 1;
      }

      if (v37)
      {
        goto LABEL_37;
      }
    }

    v38 = v59[7];
    v39 = (v58 + v38);
    v40 = *(v58 + v38 + 8);
    v41 = (v56 + v38);
    v42 = *(v56 + v38 + 8);
    if (v40)
    {
      if (!v42)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (*v39 != *v41)
      {
        LOBYTE(v42) = 1;
      }

      if (v42)
      {
        goto LABEL_37;
      }
    }

    type metadata accessor for UnknownStorage();
    sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v43 = v58;
    v51 = v16;
    v44 = v56;
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = v51;
    sub_10009E7F4(v44, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    sub_10009E7F4(v43, type metadata accessor for CLP_LogEntry_PrivateData_Wgs84Ecef);
    sub_1000059A8(v9, &qword_100418D58, &qword_10036D8C8);
    if ((v45 & 1) == 0)
    {
      goto LABEL_38;
    }

LABEL_33:
    type metadata accessor for UnknownStorage();
    sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
    v46 = v60;
    v47 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    sub_10009E7F4(v46, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
    if (v47)
    {
      v10 = v53;
      v57 += v52;
      v18 += v52;
      if (--v16)
      {
        continue;
      }
    }

    return v47 & 1;
  }

  if (v25(&v9[v24], 1, v59) == 1)
  {
    sub_1000059A8(v9, &qword_100418D58, &qword_10036D8C8);
    goto LABEL_33;
  }

  sub_10009E7F4(v13, type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime);
  v49 = v60;
  v48 = type metadata accessor for CLP_LogEntry_PrivateData_SvPositionAtTime;
LABEL_41:
  sub_10009E7F4(v49, v48);
  sub_1000059A8(v9, &qword_10041C578, &qword_100373D68);
LABEL_42:
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_10009D834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v39 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_10009E78C(v13, v10, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        sub_10009E78C(v14, v7, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        v16 = v4[5];
        v17 = v10[v16];
        v18 = v7[v16];
        if (v17 == 13)
        {
          if (v18 != 13)
          {
            goto LABEL_35;
          }
        }

        else if (v17 != v18)
        {
          goto LABEL_35;
        }

        v19 = v4[6];
        v20 = &v10[v19];
        v21 = v10[v19 + 8];
        v22 = &v7[v19];
        v23 = v7[v19 + 8];
        if (v21)
        {
          if (!v23)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (*v20 != *v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
LABEL_35:
            sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
            sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
            goto LABEL_36;
          }
        }

        v24 = v4[7];
        v25 = &v10[v24];
        v26 = v10[v24 + 8];
        v27 = &v7[v24];
        v28 = v7[v24 + 8];
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (*v25 != *v27)
          {
            LOBYTE(v28) = 1;
          }

          if (v28)
          {
            goto LABEL_35;
          }
        }

        v29 = v4[8];
        v30 = &v10[v29];
        v31 = v10[v29 + 8];
        v32 = &v7[v29];
        v33 = v7[v29 + 8];
        if (v31)
        {
          if (!v33)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (*v30 != *v32)
          {
            LOBYTE(v33) = 1;
          }

          if (v33)
          {
            goto LABEL_35;
          }
        }

        v34 = v4[9];
        v35 = v10[v34];
        v36 = v7[v34];
        if (v35 == 3)
        {
          if (v36 != 3)
          {
            goto LABEL_35;
          }
        }

        else if (v35 != v36)
        {
          goto LABEL_35;
        }

        type metadata accessor for UnknownStorage();
        sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_SvBandCorrections);
        if (v37)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v37 & 1;
      }
    }

    v37 = 1;
  }

  else
  {
LABEL_36:
    v37 = 0;
  }

  return v37 & 1;
}

uint64_t sub_10009DB60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t))
{
  v25 = a5;
  v26 = a3(0);
  v8 = __chkstk_darwin(v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v13 = &v25 - v12;
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      while (1)
      {
        sub_10009E78C(v16, v13, a4);
        sub_10009E78C(v17, v10, a4);
        v19 = *(v26 + 20);
        v20 = *&v13[v19];
        v21 = *&v10[v19];
        if (v20 != v21)
        {

          v22 = v25(v20, v21);

          if ((v22 & 1) == 0)
          {
            break;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v23 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10009E7F4(v10, a4);
        sub_10009E7F4(v13, a4);
        if (v23)
        {
          v17 += v18;
          v16 += v18;
          if (--v14)
          {
            continue;
          }
        }

        return v23 & 1;
      }

      sub_10009E7F4(v10, a4);
      sub_10009E7F4(v13, a4);
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_10009DDC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v36 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_10009E78C(v13, v10, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        sub_10009E78C(v14, v7, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        v16 = v4[5];
        v17 = v10[v16];
        v18 = v7[v16];
        if (v17 == 13)
        {
          if (v18 != 13)
          {
            goto LABEL_31;
          }
        }

        else if (v17 != v18)
        {
          goto LABEL_31;
        }

        v19 = v4[6];
        v20 = &v10[v19];
        v21 = v10[v19 + 8];
        v22 = &v7[v19];
        v23 = v7[v19 + 8];
        if (v21)
        {
          if (!v23)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (*v20 != *v22)
          {
            LOBYTE(v23) = 1;
          }

          if (v23)
          {
LABEL_31:
            sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
            sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
            goto LABEL_32;
          }
        }

        v24 = v4[7];
        v25 = &v10[v24];
        v26 = v10[v24 + 4];
        v27 = &v7[v24];
        v28 = v7[v24 + 4];
        if (v26)
        {
          if (!v28)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (*v25 != *v27)
          {
            LOBYTE(v28) = 1;
          }

          if (v28)
          {
            goto LABEL_31;
          }
        }

        v29 = v4[8];
        v30 = &v10[v29];
        v31 = v10[v29 + 4];
        v32 = &v7[v29];
        v33 = v7[v29 + 4];
        if (v31)
        {
          if (!v33)
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (*v30 != *v32)
          {
            LOBYTE(v33) = 1;
          }

          if (v33)
          {
            goto LABEL_31;
          }
        }

        type metadata accessor for UnknownStorage();
        sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_ReceiverBandCorrections);
        if (v34)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v34 & 1;
      }
    }

    v34 = 1;
  }

  else
  {
LABEL_32:
    v34 = 0;
  }

  return v34 & 1;
}

uint64_t sub_10009E0C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0) - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_10009E78C(v13, v10, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        sub_10009E78C(v14, v7, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        v16 = sub_10009FDA8(v10, v7);
        sub_10009E7F4(v7, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        sub_10009E7F4(v10, type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10009E26C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10009E49C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10009F890(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100005B2C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10009E26C(v13, a3, a4, &v12);
  v10 = v4;
  sub_100005B2C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10009E62C(uint64_t result)
{
  if (result > 7)
  {
    if (result > 31)
    {
      if (result == 32)
      {
        return 6;
      }

      if (result == 64)
      {
        return 7;
      }
    }

    else
    {
      if (result == 8)
      {
        return 4;
      }

      if (result == 16)
      {
        return 5;
      }
    }

    return 8;
  }

  if (result <= 1)
  {
    if (result <= 1)
    {
      return result;
    }

    return 8;
  }

  if (result != 2)
  {
    if (result == 4)
    {
      return 3;
    }

    return 8;
  }

  return result;
}

unint64_t sub_10009E6B4(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

uint64_t sub_10009E724(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009E78C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009E7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10009ECB4(uint64_t a1)
{
  v3 = sub_100024A2C(&qword_100418D60, &qword_10036D8D0);
  __chkstk_darwin(v3 - 8);
  v90 = &v71 - v4;
  v5 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  __chkstk_darwin(v5 - 8);
  v72 = &v71 - v6;
  v7 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds;
  *v9 = 0;
  *(v9 + 8) = 1;
  v74 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource) = 7;
  v71 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions) = &_swiftEmptyArrayStorage;
  v10 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  v75 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  v76 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  *v13 = 0;
  *(v13 + 4) = 1;
  v14 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  v77 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  *v14 = 0;
  *(v14 + 4) = 1;
  v78 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1) = 5;
  v79 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1) = 5;
  v80 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1) = 5;
  v81 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1) = 5;
  v82 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1) = 5;
  v15 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections) = &_swiftEmptyArrayStorage;
  v16 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v83 = v15;
  v84 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  v17 = type metadata accessor for CLP_LogEntry_PrivateData_PolynomialOrbit(0);
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v85 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5) = 5;
  v86 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5) = 5;
  v87 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5) = 5;
  v88 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5) = 5;
  v89 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5) = 5;
  v18 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  v73 = v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec;
  *v18 = 0;
  *(v18 + 8) = 1;
  v91 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  *(v1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint) = 4;
  v19 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__id;
  swift_beginAccess();
  v20 = v72;
  sub_10000A0A4(a1 + v19, v72, &qword_100418D10, &qword_10036D880);
  swift_beginAccess();
  sub_10000AD64(v20, v1 + v7, &qword_100418D10, &qword_10036D880);
  swift_endAccess();
  v21 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__referenceTimeNanoseconds);
  swift_beginAccess();
  v22 = *v21;
  LOBYTE(v21) = *(v21 + 8);
  swift_beginAccess();
  *v9 = v22;
  *(v9 + 8) = v21;
  v23 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__positionSource;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + v23);
  v24 = v74;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__anchorPositions;
  swift_beginAccess();
  v26 = *(a1 + v25);
  v27 = v71;
  swift_beginAccess();
  *(v1 + v27) = v26;

  v28 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockBiasCorrectionNanoseconds);
  swift_beginAccess();
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  swift_beginAccess();
  *v10 = v29;
  *(v10 + 8) = v28;
  v30 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyCorrectionPpb);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  swift_beginAccess();
  *v11 = v31;
  *(v11 + 8) = v30;
  v32 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyChangeCorrectionPpbPerSec);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  v34 = v75;
  swift_beginAccess();
  *v34 = v33;
  *(v34 + 8) = v32;
  v35 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyPositionM;
  swift_beginAccess();
  LODWORD(v33) = *v35;
  LOBYTE(v35) = *(v35 + 4);
  v36 = v76;
  swift_beginAccess();
  *v36 = v33;
  *(v36 + 4) = v35;
  v37 = a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__rangeAccuracyClockNanoseconds;
  swift_beginAccess();
  LODWORD(v33) = *v37;
  LOBYTE(v37) = *(v37 + 4);
  v38 = v77;
  swift_beginAccess();
  *v38 = v33;
  *(v38 + 4) = v37;
  v39 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL1;
  swift_beginAccess();
  LOBYTE(v39) = *(a1 + v39);
  v40 = v78;
  swift_beginAccess();
  *(v1 + v40) = v39;
  v41 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL1;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v79;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL1;
  swift_beginAccess();
  LOBYTE(v43) = *(a1 + v43);
  v44 = v80;
  swift_beginAccess();
  *(v1 + v44) = v43;
  v45 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL1;
  swift_beginAccess();
  LOBYTE(v45) = *(a1 + v45);
  v46 = v81;
  swift_beginAccess();
  *(v1 + v46) = v45;
  v47 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL1;
  swift_beginAccess();
  LOBYTE(v47) = *(a1 + v47);
  v48 = v82;
  swift_beginAccess();
  *(v1 + v48) = v47;
  v49 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svBandCorrections;
  swift_beginAccess();
  v50 = *(a1 + v49);
  v51 = v83;
  swift_beginAccess();
  *(v1 + v51) = v50;

  v52 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__polynomialOrbit;
  swift_beginAccess();
  v53 = v90;
  sub_10000A0A4(a1 + v52, v90, &qword_100418D60, &qword_10036D8D0);
  v54 = v84;
  swift_beginAccess();
  sub_10000AD64(v53, v1 + v54, &qword_100418D60, &qword_10036D8D0);
  swift_endAccess();
  v55 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromSvHealthL5;
  swift_beginAccess();
  LOBYTE(v55) = *(a1 + v55);
  v56 = v85;
  swift_beginAccess();
  *(v1 + v56) = v55;
  v57 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__overTheAirFromOtherSvHealthL5;
  swift_beginAccess();
  LOBYTE(v57) = *(a1 + v57);
  v58 = v86;
  swift_beginAccess();
  *(v1 + v58) = v57;
  v59 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__assistanceFileHealthL5;
  swift_beginAccess();
  LOBYTE(v59) = *(a1 + v59);
  v60 = v87;
  swift_beginAccess();
  *(v1 + v60) = v59;
  v61 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__msBasedHealthL5;
  swift_beginAccess();
  LOBYTE(v61) = *(a1 + v61);
  v62 = v88;
  swift_beginAccess();
  *(v1 + v62) = v61;
  v63 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__integrityHealthL5;
  swift_beginAccess();
  LOBYTE(v63) = *(a1 + v63);
  v64 = v89;
  swift_beginAccess();
  *(v1 + v64) = v63;
  v65 = (a1 + OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__clockFrequencyAccelCorrectionPpbPerSecPerSec);
  swift_beginAccess();
  v66 = *v65;
  LOBYTE(v65) = *(v65 + 8);
  v67 = v73;
  swift_beginAccess();
  *v67 = v66;
  *(v67 + 8) = v65;
  v68 = OBJC_IVAR____TtCV10ALProtobuf31CLP_LogEntry_PrivateData_SvInfoP33_DB890547D1206BC2212117D0A5F8672013_StorageClass__svReferencePoint;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v68);
  v69 = v91;
  swift_beginAccess();
  *(v1 + v69) = a1;
  return v1;
}

uint64_t sub_10009F890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10009E26C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_10009F948(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000150EC(a3, a4);
          return sub_10009E49C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_10009FAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_FrequencyOffsetFromPhaseTracking(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
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

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

  v18 = v4[8];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      return 0;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10009FC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverToGpsTimeConversion(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
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

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_10009FDA8(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz(0);
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100024A2C(&qword_100418DB8, &qword_10036D928);
  __chkstk_darwin(v5 - 8);
  v49 = &v47 - v6;
  v50 = sub_100024A2C(&qword_10041C580, &qword_100373D80);
  __chkstk_darwin(v50);
  v53 = &v47 - v7;
  v8 = type metadata accessor for CLP_LogEntry_PrivateData_SvId(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100024A2C(&qword_100418D10, &qword_10036D880);
  __chkstk_darwin(v12 - 8);
  v14 = &v47 - v13;
  v15 = sub_100024A2C(&qword_10041C4D8, &qword_100373CC8);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  v54 = type metadata accessor for CLP_LogEntry_PrivateData_AntennaPhaseCenterSvOffset(0);
  v55 = a1;
  v19 = v54[5];
  v20 = *(v16 + 56);
  sub_10000A0A4(a1 + v19, v18, &qword_100418D10, &qword_10036D880);
  v21 = v56 + v19;
  v22 = v56;
  sub_10000A0A4(v21, &v18[v20], &qword_100418D10, &qword_10036D880);
  v23 = *(v9 + 48);
  if (v23(v18, 1, v8) == 1)
  {
    if (v23(&v18[v20], 1, v8) == 1)
    {
      sub_1000059A8(v18, &qword_100418D10, &qword_10036D880);
      goto LABEL_11;
    }

LABEL_6:
    v24 = &qword_10041C4D8;
    v25 = &qword_100373CC8;
    v26 = v18;
LABEL_7:
    sub_1000059A8(v26, v24, v25);
    goto LABEL_8;
  }

  sub_10000A0A4(v18, v14, &qword_100418D10, &qword_10036D880);
  if (v23(&v18[v20], 1, v8) == 1)
  {
    sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
    goto LABEL_6;
  }

  sub_10009E724(&v18[v20], v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  v29 = sub_1000A5750(v14, v11);
  sub_10009E7F4(v11, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_10009E7F4(v14, type metadata accessor for CLP_LogEntry_PrivateData_SvId);
  sub_1000059A8(v18, &qword_100418D10, &qword_10036D880);
  if ((v29 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_11:
  v30 = v54[6];
  v31 = *(v55 + v30);
  v32 = *(v22 + v30);
  if (v31 == 13)
  {
    if (v32 != 13)
    {
      goto LABEL_8;
    }
  }

  else if (v31 != v32)
  {
    goto LABEL_8;
  }

  v33 = v54[7];
  v34 = *(v55 + v33);
  v35 = *(v22 + v33);
  if (v34 == 4)
  {
    if (v35 != 4)
    {
      goto LABEL_8;
    }
  }

  else if (v34 != v35)
  {
    goto LABEL_8;
  }

  v36 = v54[8];
  v37 = *(v50 + 48);
  v38 = v53;
  sub_10000A0A4(v55 + v36, v53, &qword_100418DB8, &qword_10036D928);
  v39 = v22 + v36;
  v40 = v38;
  sub_10000A0A4(v39, v38 + v37, &qword_100418DB8, &qword_10036D928);
  v41 = v52;
  v42 = *(v51 + 48);
  if (v42(v38, 1, v52) == 1)
  {
    if (v42(v38 + v37, 1, v41) == 1)
    {
      sub_1000059A8(v38, &qword_100418DB8, &qword_10036D928);
LABEL_26:
      type metadata accessor for UnknownStorage();
      sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_24;
  }

  v43 = v49;
  sub_10000A0A4(v40, v49, &qword_100418DB8, &qword_10036D928);
  if (v42(v40 + v37, 1, v41) == 1)
  {
    sub_10009E7F4(v43, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
LABEL_24:
    v24 = &qword_10041C580;
    v25 = &qword_100373D80;
    v26 = v40;
    goto LABEL_7;
  }

  v44 = v40 + v37;
  v45 = v48;
  sub_10009E724(v44, v48, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  v46 = sub_1000A4108(v43, v45, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  sub_10009E7F4(v45, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  sub_10009E7F4(v43, type metadata accessor for CLP_LogEntry_PrivateData_SfcfXyz);
  sub_1000059A8(v40, &qword_100418DB8, &qword_10036D928);
  if (v46)
  {
    goto LABEL_26;
  }

LABEL_8:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1000A0428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_ReceiverClockCorrections(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
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

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000A05C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CLP_LogEntry_PrivateData_KlobucharModelParameters(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
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

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[12];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = v4[13];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  sub_1000A5BD8(&qword_100418BA8, &type metadata accessor for UnknownStorage, &protocol conformance descriptor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}
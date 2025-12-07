uint64_t type metadata accessor for IFFlowError(uint64_t a1)
{
  result = qword_81390;
  if (!qword_81390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26DC(uint64_t a1)
{
  sub_6C0AC();
  if (v1 <= 0x3F)
  {
    sub_6C83C();
    if (v2 <= 0x3F)
    {
      sub_288C();
      if (v3 <= 0x3F)
      {
        sub_28BC();
        if (v4 <= 0x3F)
        {
          sub_6CCBC();
          if (v5 <= 0x3F)
          {
            sub_6B7AC();
            if (v6 <= 0x3F)
            {
              sub_6BF6C();
              if (v7 <= 0x3F)
              {
                sub_28EC();
                if (v8 <= 0x3F)
                {
                  sub_2A40(319, &qword_813B8, sub_291C);
                  if (v9 <= 0x3F)
                  {
                    sub_2980(319);
                    if (v10 <= 0x3F)
                    {
                      sub_2A40(319, &qword_813D8, type metadata accessor for AFLocationServiceError);
                      if (v11 <= 0x3F)
                      {
                        sub_2A40(319, &qword_813E0, sub_2A8C);
                        if (v12 <= 0x3F)
                        {
                          sub_2AF0();
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void *sub_288C()
{
  result = qword_813A0;
  if (!qword_813A0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_813A0);
  }

  return result;
}

void *sub_28BC()
{
  result = qword_813A8;
  if (!qword_813A8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_813A8);
  }

  return result;
}

void *sub_28EC()
{
  result = qword_813B0;
  if (!qword_813B0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_813B0);
  }

  return result;
}

unint64_t sub_291C()
{
  result = qword_813C0;
  if (!qword_813C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_813C0);
  }

  return result;
}

void sub_2980(uint64_t a1)
{
  if (!qword_813C8)
  {
    sub_29F8(&qword_813D0, qword_6FC50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_813C8);
    }
  }
}

uint64_t sub_29F8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_2A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2A8C(uint64_t a1)
{
  if (!qword_813E8)
  {
    sub_29F8(&qword_813D0, qword_6FC50);
    v1 = sub_6D4DC();
    if (!v2)
    {
      atomic_store(v1, &qword_813E8);
    }
  }
}

void *sub_2AF0()
{
  result = qword_813F0;
  if (!qword_813F0)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_813F0);
  }

  return result;
}

unint64_t sub_2B20()
{
  v1 = sub_6BF6C();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = __chkstk_darwin(v1);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v36 = &v31 - v4;
  v5 = sub_6CCBC();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6C83C();
  v33 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6C0AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IFFlowError(0);
  __chkstk_darwin(v15);
  v17 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_4394(v0, v17);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = v33;
      (*(v33 + 32))(v10, v17, v8);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(94);
      v54._countAndFlagsBits = 0xD00000000000005CLL;
      v54._object = 0x800000000006E7B0;
      sub_6D33C(v54);
      sub_6D5AC();
      v29 = v40;
      (*(v30 + 8))(v10, v8);
      return v29;
    case 2u:
      v24 = *v17;
      v25 = v17[1];
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(70);
      v26 = "pleted [implicit=true].";
      v27._countAndFlagsBits = 0xD000000000000044;
      goto LABEL_31;
    case 3u:
      if (*v17 == 1)
      {
        return 0xD000000000000057;
      }

      return 0xD000000000000043;
    case 4u:
      v21 = v34;
      v22 = v17;
      v23 = v35;
      (*(v34 + 32))(v7, v22, v35);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(68);
      v47._countAndFlagsBits = 0xD000000000000041;
      v47._object = 0x800000000006E660;
      sub_6D33C(v47);
      sub_6D5AC();
      v48._countAndFlagsBits = 46;
      v48._object = 0xE100000000000000;
      sub_6D33C(v48);
      goto LABEL_17;
    case 5u:
      v24 = *v17;
      v25 = v17[1];
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(23);

      v40 = 0xD000000000000015;
      v41 = 0x800000000006E640;
      goto LABEL_32;
    case 6u:
      sub_43F8(v17);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(82);
      v57._countAndFlagsBits = 0xD000000000000050;
      v57._object = 0x800000000006E580;
      sub_6D33C(v57);
      v58._countAndFlagsBits = 0x7475706E49;
      v58._object = 0xE500000000000000;
      sub_6D33C(v58);
      return v40;
    case 7u:
      v7 = v36;
      v21 = v37;
      v28 = v17;
      v23 = v38;
      (*(v37 + 32))(v36, v28, v38);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(77);
      v52._countAndFlagsBits = 0xD00000000000004BLL;
      v52._object = 0x800000000006E530;
      sub_6D33C(v52);
      (*(v21 + 16))(v32, v7, v23);
      v53._countAndFlagsBits = sub_6D2EC();
      sub_6D33C(v53);

LABEL_17:
      v29 = v40;
      (*(v21 + 8))(v7, v23);
      return v29;
    case 8u:
      v24 = *v17;
      v25 = v17[1];
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(80);
      v26 = "F session was terminated.";
      v27._countAndFlagsBits = 0xD00000000000004ELL;
LABEL_31:
      v27._object = (v26 | 0x8000000000000000);
      sub_6D33C(v27);
LABEL_32:
      v61._countAndFlagsBits = v24;
      v61._object = v25;
      sub_6D33C(v61);
      goto LABEL_33;
    case 9u:
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(74);
      v50._countAndFlagsBits = 0xD000000000000048;
      v50._object = 0x800000000006E450;
      sub_6D33C(v50);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xAu:
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(79);
      v59._countAndFlagsBits = 0xD00000000000004DLL;
      v59._object = 0x800000000006E3B0;
      sub_6D33C(v59);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xBu:
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(76);
      v46._countAndFlagsBits = 0xD00000000000004ALL;
      v46._object = 0x800000000006E360;
      sub_6D33C(v46);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xCu:
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(79);
      v49._countAndFlagsBits = 0xD00000000000004DLL;
      v49._object = 0x800000000006E310;
      sub_6D33C(v49);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xDu:
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(84);
      v56._countAndFlagsBits = 0xD000000000000052;
      v56._object = 0x800000000006E2B0;
      sub_6D33C(v56);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xEu:
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(78);
      v45._countAndFlagsBits = 0xD00000000000004CLL;
      v45._object = 0x800000000006E260;
      sub_6D33C(v45);
      swift_getErrorValue();
      goto LABEL_28;
    case 0xFu:
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(88);
      v51._countAndFlagsBits = 0xD000000000000056;
      v51._object = 0x800000000006E200;
      sub_6D33C(v51);
      swift_getErrorValue();
LABEL_28:
      v60._countAndFlagsBits = sub_6D66C();
      sub_6D33C(v60);

      goto LABEL_29;
    case 0x10u:
      v20 = *v17;
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(39);

      v40 = 0xD000000000000025;
      v41 = 0x800000000006E180;
      v39 = v20;
      type metadata accessor for AFLocationServiceError(0);
      sub_4040(&qword_81428, type metadata accessor for AFLocationServiceError, &unk_6FCE8);
      v44._countAndFlagsBits = sub_6D66C();
      sub_6D33C(v44);

LABEL_33:

      return v40;
    case 0x11u:
      if (!*v17)
      {
        return 0xD000000000000018;
      }

      v40 = 0;
      v41 = 0xE000000000000000;
      swift_errorRetain();
      sub_6D57C(41);

      v40 = 0xD000000000000027;
      v41 = 0x800000000006E130;
      swift_getErrorValue();
      v55._countAndFlagsBits = sub_6D66C();
      sub_6D33C(v55);

LABEL_29:

      return v40;
    case 0x12u:
      return 0xD00000000000001ELL;
    case 0x13u:
      return 0xD000000000000057;
    case 0x14u:
      return 0xD000000000000039;
    case 0x15u:
    case 0x16u:
      return 0xD000000000000047;
    case 0x17u:
      return 0xD000000000000017;
    case 0x18u:
      return 0xD000000000000022;
    case 0x19u:
      return 0xD000000000000014;
    case 0x1Au:
      return 0xD00000000000001BLL;
    case 0x1Bu:
      return 0xD00000000000001DLL;
    case 0x1Cu:
      return 0xD00000000000001ALL;
    case 0x1Du:
      return 0xD00000000000001ELL;
    default:
      (*(v12 + 32))(v14, v17, v11);
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_6D57C(76);
      v42._countAndFlagsBits = 0xD00000000000004ALL;
      v42._object = 0x800000000006E810;
      sub_6D33C(v42);
      v43._countAndFlagsBits = sub_6C07C();
      sub_6D33C(v43);

      v18 = v40;
      (*(v12 + 8))(v14, v11);
      return v18;
  }
}

uint64_t sub_37B8()
{
  v1 = type metadata accessor for IFFlowError(0);
  __chkstk_darwin(v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4394(v0, v3);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      sub_43F8(v3);
      result = 1;
      break;
    case 2:
      sub_43F8(v3);
      result = 2;
      break;
    case 3:
    case 24:
    case 25:
    case 26:
      return result;
    case 4:
      sub_43F8(v3);
      result = 4;
      break;
    case 5:
      sub_43F8(v3);
      result = 6;
      break;
    case 6:
      sub_43F8(v3);
      result = 8;
      break;
    case 7:
      sub_43F8(v3);
      result = 9;
      break;
    case 8:
      sub_43F8(v3);
      result = 10;
      break;
    case 9:
      sub_43F8(v3);
      result = 12;
      break;
    case 10:
      sub_43F8(v3);
      result = 14;
      break;
    case 11:
      sub_43F8(v3);
      result = 15;
      break;
    case 12:
      sub_43F8(v3);
      result = 16;
      break;
    case 13:
      sub_43F8(v3);
      result = 17;
      break;
    case 14:
      sub_43F8(v3);
      result = 18;
      break;
    case 15:
      sub_43F8(v3);
      result = 19;
      break;
    case 16:
      sub_43F8(v3);
      result = 21;
      break;
    case 17:
      sub_43F8(v3);
      result = 23;
      break;
    case 18:
      result = 27;
      break;
    case 19:
      result = 7;
      break;
    case 20:
      result = 11;
      break;
    case 21:
      result = 13;
      break;
    case 22:
      result = 20;
      break;
    case 23:
      result = 22;
      break;
    case 27:
      result = 28;
      break;
    case 28:
      result = 29;
      break;
    case 29:
      result = 30;
      break;
    default:
      sub_43F8(v3);
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_3A48()
{
  sub_6D57C(31);

  strcpy(v1, "Error code: ");
  sub_37B8();
  v2._countAndFlagsBits = sub_6D61C();
  sub_6D33C(v2);

  v3._countAndFlagsBits = 0x697263736564202CLL;
  v3._object = 0xEF203A6E6F697470;
  sub_6D33C(v3);
  v4._countAndFlagsBits = sub_2B20();
  sub_6D33C(v4);

  return v1[0];
}

uint64_t sub_3B54(uint64_t a1)
{
  v2 = sub_4040(&qword_81430, type metadata accessor for AFLocationServiceError, &unk_6FD98);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_3BC0(uint64_t a1)
{
  v2 = sub_4040(&qword_81430, type metadata accessor for AFLocationServiceError, &unk_6FD98);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_3C2C(uint64_t a1)
{
  v2 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError, &unk_6FDD8);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_3CA8(uint64_t a1)
{
  v2 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError, &unk_6FDD8);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_3D14(uint64_t a1)
{
  v2 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError, &unk_6FDD8);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_3D80(void *a1, uint64_t a2)
{
  v4 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError, &unk_6FDD8);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_3E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError, &unk_6FDD8);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_3EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_6D6BC();
  sub_6D25C();
  return sub_6D6DC();
}

void *sub_3F10@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_3F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4040(&qword_81468, type metadata accessor for AFLocationServiceError, &unk_6FDD8);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_4040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_41BC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_4254()
{
  result = qword_81458;
  if (!qword_81458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81458);
  }

  return result;
}

uint64_t sub_4394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IFFlowError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_43F8(uint64_t a1)
{
  v2 = type metadata accessor for IFFlowError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_5708(&qword_814F0, &qword_71350);
  v4 = __chkstk_darwin(v3 - 8);
  v54 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v53 - v6;
  v7 = sub_6C95C();
  v58 = *(v7 - 8);
  v59 = v7;
  __chkstk_darwin(v7);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_6BF0C();
  v9 = *(v56 - 8);
  v10 = __chkstk_darwin(v56);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v53 - v13;
  v15 = sub_6C54C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_6BF6C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  sub_4B4CC(v18);
  if ((*(v16 + 88))(v18, v15) == enum case for StatementOutcome.failure(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v20 + 32))(v22, v18, v19);
    sub_6BF5C();
    v23 = v56;
    (*(v9 + 104))(v12, enum case for ActionFailure.Failure.actionCanceled(_:), v56);
    v24 = sub_6BEFC();
    v25 = *(v9 + 8);
    v25(v12, v23);
    v25(v14, v23);
    (*(v20 + 8))(v22, v19);
    if (v24)
    {
      v26 = 1;
      goto LABEL_6;
    }
  }

  else
  {
    (*(v16 + 8))(v18, v15);
  }

  v26 = 0;
LABEL_6:
  v27 = sub_6C4DC();
  if (*(v27 + 16))
  {
    v29 = v57;
    v28 = v58;
    v30 = v59;
    (*(v58 + 16))(v57, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v59);

    v31 = sub_6C93C();
    v33 = v32;
    (*(v28 + 8))(v29, v30);
    if (v33)
    {
      if (v31 == 0xD000000000000033 && v33 == 0x800000000006E860 || (sub_6D63C() & 1) != 0)
      {
        v34 = enum case for RequestSummary.ExecutionSource.searchTool(_:);
        v35 = sub_6CD2C();
        (*(*(v35 - 8) + 104))(v61, v34, v35);
      }

      if (v31 == 0xD000000000000062 && 0x800000000006E8A0 == v33 || (sub_6D63C() & 1) != 0)
      {

        v41 = &enum case for RequestSummary.PrescribedGenAITool.generateRichContentFromMediaIntentTool(_:);
      }

      else if (v31 == 0xD000000000000059 && 0x800000000006E910 == v33 || (sub_6D63C() & 1) != 0 || v31 == 0xD000000000000053 && 0x800000000006E970 == v33 || (sub_6D63C() & 1) != 0)
      {

        v41 = &enum case for RequestSummary.PrescribedGenAITool.generateRichContentTool(_:);
      }

      else
      {
        if (v31 == 0xD00000000000005FLL && 0x800000000006E9D0 == v33)
        {
        }

        else
        {
          v51 = sub_6D63C();

          if ((v51 & 1) == 0)
          {
            v52 = sub_6CD3C();
            v45 = v54;
            (*(*(v52 - 8) + 56))(v54, 1, 1, v52);
            goto LABEL_27;
          }
        }

        v41 = &enum case for RequestSummary.PrescribedGenAITool.generateKnowledgeResponseIntentTool(_:);
      }

      v42 = *v41;
      v43 = sub_6CD3C();
      v44 = *(v43 - 8);
      v45 = v54;
      (*(v44 + 104))(v54, v42, v43);
      (*(v44 + 56))(v45, 0, 1, v43);
LABEL_27:
      v46 = v55;
      sub_5D90(v45, v55);
      v47 = sub_6CD0C();
      __chkstk_darwin(v47);
      *(&v53 - 2) = v46;
      *(&v53 - 8) = v26;
      sub_5F20(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow, &protocol conformance descriptor for RequestSummary.ExecutionSource.IntelligenceFlow);
      v48 = v61;
      sub_6BE5C();
      v49 = enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:);
      v50 = sub_6CD2C();
      (*(*(v50 - 8) + 104))(v48, v49, v50);
      return sub_5E20(v46, &qword_814F0, &qword_71350);
    }
  }

  else
  {
  }

  v37 = sub_6CD0C();
  __chkstk_darwin(v37);
  *(&v53 - 16) = v26;
  sub_5F20(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow, &protocol conformance descriptor for RequestSummary.ExecutionSource.IntelligenceFlow);
  v38 = v61;
  sub_6BE5C();
  v39 = enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:);
  v40 = sub_6CD2C();
  return (*(*(v40 - 8) + 104))(v38, v39, v40);
}

uint64_t sub_4D58(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_5708(&qword_814F0, &qword_71350);
  __chkstk_darwin(v5 - 8);
  v7 = &v9[-v6];
  swift_getKeyPath();
  sub_5E80(a2, v7);
  sub_6BE2C();
  swift_getKeyPath();
  v9[15] = a3;
  return sub_6BE3C();
}

uint64_t sub_4E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_6C27C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != enum case for MessagePayload.RequestPrescribedPlan.searchTool(_:))
  {
    if (v8 == enum case for MessagePayload.RequestPrescribedPlan.lowConfidenceKnowledgeTool(_:) || v8 == enum case for MessagePayload.RequestPrescribedPlan.textTool(_:) || v8 == enum case for MessagePayload.RequestPrescribedPlan.convertTool(_:) || v8 == enum case for MessagePayload.RequestPrescribedPlan.displayTool(_:))
    {
      sub_6CD0C();
      sub_5F20(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow, &protocol conformance descriptor for RequestSummary.ExecutionSource.IntelligenceFlow);
    }

    else
    {
      v14 = enum case for MessagePayload.RequestPrescribedPlan.knowledgeTool(_:);
      v15 = v8;
      sub_6CD0C();
      sub_5F20(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow, &protocol conformance descriptor for RequestSummary.ExecutionSource.IntelligenceFlow);
      if (v15 != v14)
      {
        sub_6BE6C();
        sub_6BE4C();

        goto LABEL_15;
      }
    }

    sub_6BE5C();
LABEL_15:
    v13 = &enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:);
    goto LABEL_16;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v9 = sub_6D04C();
  sub_5CE4(v9, qword_839A0);
  v10 = sub_6D03C();
  v11 = sub_6D46C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "Unexpected PrescribedPlan: .searchTool", v12, 2u);
  }

  v13 = &enum case for RequestSummary.ExecutionSource.unknown(_:);
LABEL_16:
  v16 = *v13;
  v17 = sub_6CD2C();
  (*(*(v17 - 8) + 104))(a2, v16, v17);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_533C(uint64_t a1, unsigned int *a2)
{
  v3 = sub_5708(&qword_814F0, &qword_71350);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_getKeyPath();
  v6 = *a2;
  v7 = sub_6CD3C();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v5, v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  return sub_6BE2C();
}

uint64_t sub_5468@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_5708(&qword_814E0, &qword_6FF70);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_6C27C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6C2CC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_5E20(v4, &qword_814E0, &qword_6FF70);
    sub_6CD0C();
    sub_5F20(&qword_814E8, &type metadata accessor for RequestSummary.ExecutionSource.IntelligenceFlow, &protocol conformance descriptor for RequestSummary.ExecutionSource.IntelligenceFlow);
    sub_6BE6C();
    sub_6BE4C();

    v9 = enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:);
    v10 = sub_6CD2C();
    v11 = *(v10 - 8);
    (*(v11 + 104))(a1, v9, v10);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_4E58(v8, a1);
    (*(v6 + 8))(v8, v5);
    v10 = sub_6CD2C();
    v11 = *(v10 - 8);
  }

  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_5708(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

BOOL sub_5750()
{
  v0 = sub_5708(&qword_814F0, &qword_71350);
  __chkstk_darwin(v0 - 8);
  v34 = &v28 - v1;
  v2 = sub_6CD3C();
  v3 = *(v2 - 8);
  v4 = v3;
  __chkstk_darwin(v2);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6CD0C();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6CD2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5708(&qword_814F8, &qword_6FFD8);
  v12 = *(v3 + 72);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_6FF60;
  v15 = v14 + v13;
  v33 = v4;
  v16 = *(v4 + 104);
  v16(v15, enum case for RequestSummary.PrescribedGenAITool.generateRichContentTool(_:), v2);
  v16(v15 + v12, enum case for RequestSummary.PrescribedGenAITool.generateKnowledgeResponseIntentTool(_:), v2);
  v16(v15 + 2 * v12, enum case for RequestSummary.PrescribedGenAITool.generateRichContentFromMediaIntentTool(_:), v2);
  (*(v9 + 16))(v11, v35, v8);
  v17 = (*(v9 + 88))(v11, v8);
  if (v17 == enum case for RequestSummary.ExecutionSource.intelligenceFlow(_:))
  {
    (*(v9 + 96))(v11, v8);
    v19 = v30;
    v18 = v31;
    v20 = v32;
    (*(v31 + 32))(v30, v11, v32);
    v21 = v34;
    sub_6CCFC();
    v22 = v33;
    if ((*(v33 + 48))(v21, 1, v2) == 1)
    {
      (*(v18 + 8))(v19, v20);

      sub_5E20(v21, &qword_814F0, &qword_71350);
      return 0;
    }

    v26 = v29;
    (*(v22 + 32))(v29, v21, v2);
    v25 = sub_5BD8(v26, v14);

    (*(v22 + 8))(v26, v2);
    (*(v18 + 8))(v19, v20);
  }

  else
  {
    v23 = v17;
    v24 = enum case for RequestSummary.ExecutionSource.searchTool(_:);

    if (v23 != v24)
    {
      (*(v9 + 8))(v11, v8);
      return 0;
    }

    return 1;
  }

  return v25;
}

BOOL sub_5BD8(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_6CD3C();
    ++v2;
    sub_5F20(&qword_81500, &type metadata accessor for RequestSummary.PrescribedGenAITool, &protocol conformance descriptor for RequestSummary.PrescribedGenAITool);
  }

  while ((sub_6D28C() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_5CE4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_5D90(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_814F0, &qword_71350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5E20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5708(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_5E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_814F0, &qword_71350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5EF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_6CCEC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_5F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5F98(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for IFFlowError(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_603C, 0, 0);
}

uint64_t sub_603C()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_6D04C();
  sub_5CE4(v3, qword_839A0);
  sub_4394(v2, v1);
  v4 = sub_6D03C();
  v5 = sub_6D46C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    sub_9764(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    swift_allocError();
    sub_4394(v7, v10);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    sub_43F8(v7);
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v4, v5, "IFFlow exiting with error %@", v8, 0xCu);
    sub_5E20(v9, &qword_81508, &unk_70260);
  }

  else
  {

    sub_43F8(v7);
  }

  sub_4394(v0[3], v0[6]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
    case 0x12u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x1Au:
      goto LABEL_8;
    case 0xDu:
      v29 = *(v0[6] + 8);

      if (v29 != 1)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    case 0xEu:
    case 0xFu:
      v26 = *(v0[6] + 8);

      if (v26)
      {
LABEL_19:
        v19 = swift_task_alloc();
        v0[10] = v19;
        *v19 = v0;
        v22 = sub_6780;
LABEL_20:
        v19[1] = v22;
        v27 = v0[3];
        v28 = v0[2];

        return sub_7E28(v28, v27, v20, v21);
      }

      else
      {
LABEL_24:
        v12 = swift_task_alloc();
        v0[11] = v12;
        *v12 = v0;
        v15 = sub_68AC;
LABEL_9:
        v12[1] = v15;
        v16 = v0[3];
        v17 = v0[2];

        return sub_6C30(v17, v16, v13, v14);
      }

    case 0x10u:
    case 0x11u:
      sub_43F8(v0[6]);
      goto LABEL_17;
    case 0x13u:
    case 0x1Bu:
    case 0x1Cu:
      v23 = swift_task_alloc();
      v0[9] = v23;
      *v23 = v0;
      v23[1] = sub_6654;
      v24 = v0[3];
      v25 = v0[2];

      return sub_7878(v25, v24);
    case 0x17u:
    case 0x18u:
    case 0x1Du:
      v19 = swift_task_alloc();
      v0[13] = v19;
      *v19 = v0;
      v22 = sub_6B04;
      goto LABEL_20;
    case 0x19u:
LABEL_17:
      v12 = swift_task_alloc();
      v0[12] = v12;
      *v12 = v0;
      v15 = sub_69D8;
      goto LABEL_9;
    default:
      sub_43F8(v0[6]);
LABEL_8:
      v12 = swift_task_alloc();
      v0[8] = v12;
      *v12 = v0;
      v15 = sub_6528;
      goto LABEL_9;
  }
}

uint64_t sub_6528()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_6654()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_6780()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_68AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_69D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_6B04()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_6C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a2;
  v5[9] = v4;
  v5[7] = a1;
  v6 = type metadata accessor for IFFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = type metadata accessor for IFFlowError(0);
  v5[14] = swift_task_alloc();
  v7 = sub_6B89C();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();

  return _swift_task_switch(sub_6DAC, 0, 0);
}

uint64_t sub_6DAC()
{
  v1 = v0[8];
  sub_30BD4();
  v2 = sub_6CDBC();
  v4 = v3;

  sub_4E710(v2, v4, v1);

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_6E94;
  v6 = v0[17];
  v7 = v0[8];

  return sub_8040(v6, v7);
}

uint64_t sub_6E94()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_7604;
  }

  else
  {
    v2 = sub_6FA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_6FA8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[9];
  v5 = v4[10];
  v6 = v4[11];
  sub_99FC(v4 + 7, v5);
  v0[5] = v3;
  v0[6] = &protocol witness table for AceOutput;
  v7 = sub_97B0(v0 + 2);
  (*(v2 + 16))(v7, v1, v3);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_70A8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 2, v5, v6);
}

uint64_t sub_70A8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_7320;
  }

  else
  {
    v2 = sub_71BC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_71BC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  sub_9964(v0 + 2);
  (*(v2 + 8))(v1, v3);
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[8];
  sub_9764(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  v8 = swift_allocError();
  sub_4394(v7, v9);
  *v4 = v8;
  *(v4 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v4);
  (*(v5 + 8))(v4, v6);
  sub_6B49C();

  v10 = v0[1];

  return v10();
}

uint64_t sub_7320()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  *v4 = v0[21];
  swift_storeEnumTagMultiPayload();
  sub_9764(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  swift_willThrowTypedImpl();
  swift_allocError();
  sub_9814(v4, v5);
  (*(v2 + 8))(v1, v3);
  sub_9964(v0 + 2);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v6 = sub_6D04C();
  sub_5CE4(v6, qword_839A0);
  swift_errorRetain();
  v7 = sub_6D03C();
  v8 = sub_6D46C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_0, v7, v8, "Unable to publish error output due to %@.", v9, 0xCu);
    sub_5E20(v10, &qword_81508, &unk_70260);
  }

  else
  {
  }

  v13 = v0[11];
  v12 = v0[12];
  v14 = v0[10];
  v15 = v0[8];
  v16 = swift_allocError();
  sub_4394(v15, v17);
  *v12 = v16;
  *(v12 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v12);
  (*(v13 + 8))(v12, v14);
  sub_6B49C();

  v18 = v0[1];

  return v18();
}

uint64_t sub_7604()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  swift_errorRetain();
  v2 = sub_6D03C();
  v3 = sub_6D46C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "Unable to publish error output due to %@.", v4, 0xCu);
    sub_5E20(v5, &qword_81508, &unk_70260);
  }

  else
  {
  }

  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v10 = v0[8];
  sub_9764(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  v11 = swift_allocError();
  sub_4394(v10, v12);
  *v7 = v11;
  *(v7 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v7);
  (*(v8 + 8))(v7, v9);
  sub_6B49C();

  v13 = v0[1];

  return v13();
}

uint64_t sub_7878(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v5 = sub_6B1AC();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = sub_6B12C();
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v8 = type metadata accessor for IFFlow.State(0, *(v4 + 80), *(v4 + 88), v7);
  v3[11] = v8;
  v3[12] = *(v8 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for IFFlowError(0);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_7A50, 0, 0);
}

uint64_t sub_7A50()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[3];
  v3 = sub_6D04C();
  sub_5CE4(v3, qword_839A0);
  sub_4394(v2, v1);
  v4 = sub_6D03C();
  v5 = sub_6D45C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[15];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    sub_9764(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    swift_allocError();
    sub_4394(v7, v10);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    sub_43F8(v7);
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v4, v5, "IFFlow non presentable error FallbackToSiriX %@", v8, 0xCu);
    sub_5E20(v9, &qword_81508, &unk_70260);
  }

  else
  {

    sub_43F8(v7);
  }

  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[11];
  v15 = v0[8];
  v16 = v0[9];
  v18 = v0[6];
  v17 = v0[7];
  v24 = v0[10];
  v25 = v0[5];
  v19 = v0[3];
  sub_9764(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  v20 = swift_allocError();
  sub_4394(v19, v21);
  *v13 = v20;
  *(v13 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v13);
  (*(v12 + 8))(v13, v14);
  sub_9764(&qword_81510, &type metadata accessor for SiriXRedirectContext, &protocol conformance descriptor for SiriXRedirectContext);
  sub_6BE5C();
  (*(v16 + 16))(v17, v24, v15);
  (*(v18 + 104))(v17, enum case for FlowUnhandledReason.needsSiriXRedirect(_:), v25);
  sub_6B4BC();
  (*(v18 + 8))(v17, v25);
  (*(v16 + 8))(v24, v15);

  v22 = v0[1];

  return v22();
}

uint64_t sub_7E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[4] = v4;
  v5[2] = a1;
  v6 = type metadata accessor for IFFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_7F18, 0, 0);
}

uint64_t sub_7F18()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  type metadata accessor for IFFlowError(0);
  sub_9764(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
  v5 = swift_allocError();
  sub_4394(v4, v6);
  *v1 = v5;
  *(v1 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_4A280(v1);
  (*(v2 + 8))(v1, v3);
  sub_6B49C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_8040(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = sub_6B89C();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();
  v5 = sub_6AE4C();
  v3[35] = v5;
  v3[36] = *(v5 - 8);
  v3[37] = swift_task_alloc();
  v6 = sub_6AF0C();
  v3[38] = v6;
  v3[39] = *(v6 - 8);
  v3[40] = swift_task_alloc();
  v7 = sub_6AEDC();
  v3[41] = v7;
  v3[42] = *(v7 - 8);
  v3[43] = swift_task_alloc();
  sub_5708(&qword_81520, &qword_708D0);
  v3[44] = swift_task_alloc();
  v8 = sub_6B64C();
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  v9 = sub_6B55C();
  v3[48] = v9;
  v3[49] = *(v9 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = type metadata accessor for IFFlowError(0);
  v3[52] = swift_task_alloc();

  return _swift_task_switch(sub_8338, 0, 0);
}

uint64_t sub_8338()
{
  sub_4394(v0[30], v0[52]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 24)
  {
    if (EnumCaseMultiPayload != 25)
    {
      if (EnumCaseMultiPayload == 26)
      {
        v2 = 3;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v2 = 2;
  }

  else
  {
    if (EnumCaseMultiPayload != 16)
    {
      if (EnumCaseMultiPayload == 18)
      {
        v2 = 4;
        goto LABEL_11;
      }

LABEL_8:
      sub_43F8(v0[52]);
      v2 = 1;
      goto LABEL_11;
    }

    sub_43F8(v0[52]);
    v2 = 0;
  }

LABEL_11:
  v3 = v0[31];
  sub_6C9CC();
  sub_9878(v3 + 16, (v0 + 18));
  sub_6C9AC();
  sub_5E20((v0 + 18), &qword_81528, &qword_70070);
  v0[53] = sub_6C9BC();

  v4 = 0xD00000000000001ALL;
  v5 = "CommonErrors#GenericError";
  v6 = "IFFlow#CompanionNotFound";
  v7 = "ly *** IFFlow errored out at ";
  v8 = 0xD000000000000018;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001BLL;
    v7 = "GenerateKnowledgeResponseIntent";
  }

  if (v2 == 2)
  {
    v9 = 0xD00000000000001BLL;
  }

  else
  {
    v9 = v8;
  }

  if (v2 != 2)
  {
    v6 = v7;
  }

  if (v2)
  {
    v4 = 0xD000000000000019;
    v5 = "NetworkAvailability#Timeout";
  }

  if (v2 <= 1)
  {
    v10 = v4;
  }

  else
  {
    v10 = v9;
  }

  if (v2 <= 1)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  v0[54] = v10;
  v0[55] = v11;
  v0[56] = sub_9540();
  v19 = objc_opt_self();
  type metadata accessor for IFFlowPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v0[57] = v13;
  v14 = sub_6D2BC();
  v0[58] = v14;
  isa = sub_6D22C().super.isa;
  v0[59] = isa;
  sub_6C99C();
  v16 = sub_6D22C().super.isa;
  v0[60] = v16;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_8694;
  v17 = swift_continuation_init();
  v0[17] = sub_5708(&qword_81530, &qword_70078);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_9694;
  v0[13] = &unk_7EF48;
  v0[14] = v17;
  [v19 execute:v13 catId:v14 parameters:isa globals:v16 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_8694()
{
  v1 = *(*v0 + 48);
  *(*v0 + 488) = v1;
  if (v1)
  {

    v2 = sub_9308;
  }

  else
  {
    v2 = sub_87B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

id sub_87B4()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 368);
  v88 = *(v0 + 376);
  v89 = *(v0 + 360);
  v95 = *(v0 + 352);
  v5 = *(v0 + 248);
  v6 = *(v0 + 224);

  v7 = [v6 print];
  v8 = sub_6D38C();

  v9 = *(v8 + 16);

  sub_2607C(0, 0xE000000000000000, v9);

  v10 = [v6 speak];
  sub_6D38C();

  v11 = [v6 print];
  sub_6D38C();

  (*(v4 + 104))(v88, enum case for BehaviorAfterSpeaking.defaultBehavior(_:), v89);

  v12 = [v6 meta];
  sub_6D23C();

  sub_6B54C();
  sub_99FC((v5 + 16), *(v5 + 40));
  sub_6B2AC();
  v13 = sub_6B50C();
  (*(*(v13 - 8) + 56))(v95, 1, 1, v13);
  *(v0 + 184) = 0u;
  *(v0 + 216) = 0;
  *(v0 + 200) = 0u;
  sub_6B42C();
  sub_5E20(v0 + 184, &qword_81538, &qword_70080);
  sub_5E20(v95, &qword_81520, &qword_708D0);
  if (*(v5 + 193) != 1)
  {
    v38 = *(v0 + 424);
    (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

LABEL_14:

    goto LABEL_47;
  }

  v98 = v6;
  v15 = *(v0 + 336);
  v14 = *(v0 + 344);
  v17 = *(v0 + 320);
  v16 = *(v0 + 328);
  v18 = *(v0 + 312);
  v19 = *(v0 + 288);
  v20 = *(v0 + 296);
  v90 = *(v0 + 304);
  v92 = *(v0 + 280);
  v21 = [objc_allocWithZone(NSDateFormatter) init];
  v22 = sub_6D2BC();
  [v21 setDateFormat:v22];

  sub_6AECC();
  isa = sub_6AEBC().super.isa;
  (*(v15 + 8))(v14, v16);
  [v21 setLocale:isa];

  sub_6AEFC();
  v24 = sub_6AEEC().super.isa;
  (*(v18 + 8))(v17, v90);
  [v21 setCalendar:v24];

  sub_6AE3C();
  v25 = sub_6AE2C().super.isa;
  (*(v19 + 8))(v20, v92);
  v91 = v21;
  v26 = [v21 stringFromDate:v25];

  v27 = sub_6D2CC();
  v29 = v28;

  v30 = sub_6B88C();
  v31 = v30;
  v87._countAndFlagsBits = v27;
  v87._object = v29;
  if (!(v30 >> 62))
  {
    v32 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
    if (v32)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

LABEL_43:
  v32 = sub_6D5CC();
  if (!v32)
  {
LABEL_44:
    v72 = *(v0 + 424);
    v74 = *(v0 + 392);
    v73 = *(v0 + 400);
    v75 = *(v0 + 384);

    (*(v74 + 8))(v73, v75);
LABEL_47:

    v80 = *(v0 + 8);

    return v80();
  }

LABEL_4:
  v33 = 0;
  while (1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = sub_6D58C();
    }

    else
    {
      if (v33 >= *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_40;
      }

      v34 = *(v31 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    objc_opt_self();
    v37 = swift_dynamicCastObjCClass();
    if (v37)
    {
      break;
    }

    ++v33;
    if (v36 == v32)
    {
      goto LABEL_44;
    }
  }

  v39 = v37;

  v86 = v39;
  result = [v39 dialogs];
  if (result)
  {
    v41 = result;

    v31 = sub_99B0();
    v42 = sub_6D38C();

    v43 = v42;
    v44 = v98;
    if (v42 >> 62)
    {
      v45 = sub_6D5CC();
      if (v45)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v45 = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8));
      if (v45)
      {
LABEL_18:
        v46 = 0;
        v93 = v42 & 0xFFFFFFFFFFFFFF8;
        v96 = v42 & 0xC000000000000001;
        do
        {
          if (v96)
          {
            v47 = sub_6D58C();
          }

          else
          {
            if (v46 >= *(v93 + 16))
            {
              goto LABEL_42;
            }

            v47 = *(v43 + 8 * v46 + 32);
          }

          v48 = v47;
          v49 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_41;
          }

          v50 = [v47 dialogCategory];
          if (v50)
          {
            v51 = v50;
            v31 = v43;
            v52 = sub_6D2CC();
            v54 = v53;

            if (v52 == 0x6C61746146 && v54 == 0xE500000000000000)
            {

              v44 = v98;
LABEL_33:

              v57 = [v48 content];
              if (!v57)
              {
                v64 = *(v0 + 424);
                (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

                goto LABEL_14;
              }

              v58 = v57;
              sub_6D57C(57);
              v59 = [v58 text];
              if (v59)
              {
                v60 = v59;
                v61 = sub_6D2CC();
                v63 = v62;
              }

              else
              {
                v63 = 0xEB0000000065736ELL;
                v61 = 0x6F70736572206F4ELL;
              }

              v83 = *(v0 + 424);
              v84 = *(v0 + 392);
              v85 = *(v0 + 384);
              v65 = *(v0 + 264);
              v82 = *(v0 + 272);
              v94 = *(v0 + 400);
              v97 = *(v0 + 256);
              v81 = *(v0 + 232);
              v100._countAndFlagsBits = v61;
              v100._object = v63;
              sub_6D33C(v100);

              v101._countAndFlagsBits = 0xD00000000000002DLL;
              v101._object = 0x800000000006EA90;
              sub_6D33C(v101);
              sub_6D33C(v87);

              v102._countAndFlagsBits = 0x206874697720;
              v102._object = 0xE600000000000000;
              sub_6D33C(v102);
              sub_9764(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
              v103._countAndFlagsBits = sub_6D66C();
              sub_6D33C(v103);

              v66 = sub_6D2BC();

              [v58 setText:v66];

              [v48 setContent:v58];
              sub_5708(&qword_81548, &qword_70088);
              v67 = swift_allocObject();
              *(v67 + 16) = xmmword_6FFF0;
              *(v67 + 32) = v48;
              v68 = v48;
              v69 = sub_6D37C().super.isa;

              [v86 setDialogs:v69];

              v70 = swift_allocObject();
              *(v70 + 16) = xmmword_6FFF0;
              *(v70 + 32) = v86;
              v71 = v35;
              sub_6B83C();
              sub_6B84C();
              sub_6B85C();

              (*(v84 + 8))(v94, v85);
              (*(v65 + 8))(v81, v97);
              (*(v65 + 32))(v81, v82, v97);
              goto LABEL_47;
            }

            v56 = sub_6D63C();

            v44 = v98;
            v43 = v31;
            if (v56)
            {
              goto LABEL_33;
            }
          }

          ++v46;
        }

        while (v49 != v45);
      }
    }

    v76 = *(v0 + 424);
    v78 = *(v0 + 392);
    v77 = *(v0 + 400);
    v79 = *(v0 + 384);

    (*(v78 + 8))(v77, v79);
    goto LABEL_47;
  }

  __break(1u);
  return result;
}

uint64_t sub_9308()
{
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[57];
  v5 = v0[53];
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_9410()
{
  v0 = sub_5708(&qword_81518, &qword_70030);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  swift_getKeyPath();
  v3 = enum case for SiriXRedirectContext.RedirectReason.ifFlowError(_:);
  v4 = sub_6B10C();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  return sub_6BE3C();
}

void *sub_9540()
{
  v1 = type metadata accessor for IFFlowError(0);
  __chkstk_darwin(v1);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4394(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 18)
  {
    v4 = *v3;
    sub_5708(&qword_81550, &qword_70090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_70000;
    v8[1] = 0xD000000000000014;
    v8[2] = 0x800000000006EB40;
    sub_6D54C();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = v4;
    v6 = sub_25F40(inited);
    swift_setDeallocating();
    sub_5E20(inited + 32, &qword_81558, &qword_70098);
    return v6;
  }

  else
  {
    sub_43F8(v3);
    return &_swiftEmptyDictionarySingleton;
  }
}

uint64_t sub_9694(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_99FC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_5708(&qword_813D0, qword_6FC50);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_9764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_97B0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_9814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IFFlowError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9878(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_98EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_9964(void *a1)
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

unint64_t sub_99B0()
{
  result = qword_81540;
  if (!qword_81540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_81540);
  }

  return result;
}

void *sub_99FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_9A40()
{
  v0 = sub_6D04C();
  sub_9AC8(v0, qword_839A0);
  sub_5CE4(v0, qword_839A0);
  sub_9B2C();
  sub_6D4CC();
  return sub_6D05C();
}

uint64_t *sub_9AC8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_9B2C()
{
  result = qword_81560;
  if (!qword_81560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_81560);
  }

  return result;
}

uint64_t sub_9B78@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a1;
  v6 = sub_5708(&qword_81588, &qword_700C0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  v12 = sub_6C04C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C14C(a3, v11, &qword_81588, &qword_700C0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_5E20(v11, &qword_81588, &qword_700C0);

    sub_6C0CC();
    v16 = &enum case for MessagePayload.RequestContent.text(_:);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);

    sub_6C0DC();
    (*(v13 + 8))(v15, v12);
    v16 = &enum case for MessagePayload.RequestContent.speech(_:);
  }

  v17 = *v16;
  v18 = sub_6C0EC();
  return (*(*(v18 - 8) + 104))(a4, v17, v18);
}

uint64_t sub_9E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5708(&qword_81580, &unk_70F80);
  __chkstk_darwin(v5 - 8);
  v7 = v26 - v6;
  v8 = sub_5708(&qword_81568, &qword_700A8);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - v9;
  v11 = sub_5708(&qword_81570, &qword_700B0);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - v12;
  v14 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v14 - 8);
  v16 = v26 - v15;
  v17 = sub_5708(&qword_814E0, &qword_6FF70);
  __chkstk_darwin(v17 - 8);
  v19 = v26 - v18;
  sub_6C32C();
  v20 = sub_6C27C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_6C2DC();
  v21 = sub_6AE9C();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  sub_6C2FC();
  v22 = sub_6C2AC();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  sub_6C30C();
  v23 = sub_6CFCC();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v10, a2, v23);
  (*(v24 + 56))(v10, 0, 1, v23);
  sub_6C2BC();
  sub_C14C(a3, v7, &qword_81580, &unk_70F80);
  return sub_6C2EC();
}

uint64_t sub_A17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81568, &qword_700A8);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_5708(&qword_81570, &qword_700B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_5708(&qword_814E0, &qword_6FF70);
  __chkstk_darwin(v13 - 8);
  v15 = &v27 - v14;
  v16 = sub_6C0EC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_6C89C();
  (*(*(v20 - 8) + 16))(v19, a1, v20);
  (*(v17 + 104))(v19, enum case for MessagePayload.RequestContent.promptResolution(_:), v16);
  sub_6C31C();
  sub_6C32C();
  v21 = sub_6C27C();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  sub_6C2DC();
  v22 = sub_6AE9C();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  sub_6C2FC();
  v23 = sub_6C2AC();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_6C30C();
  v24 = sub_6CFCC();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v6, a2, v24);
  (*(v25 + 56))(v6, 0, 1, v24);
  return sub_6C2BC();
}

uint64_t sub_A53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v163 = a6;
  v194 = a4;
  v193 = a3;
  v207 = a2;
  v203 = a1;
  v198 = a7;
  v167 = sub_6C24C();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v174 = &v160 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_6C22C();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v201 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_6C20C();
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v182 = &v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6C0EC();
  __chkstk_darwin(v11 - 8);
  v190 = &v160 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_6C33C();
  v196 = *(v13 - 8);
  v197 = v13;
  v14 = __chkstk_darwin(v13);
  v165 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v171 = &v160 - v17;
  v18 = __chkstk_darwin(v16);
  v181 = &v160 - v19;
  __chkstk_darwin(v18);
  v189 = &v160 - v20;
  v21 = sub_6C27C();
  v191 = *(v21 - 8);
  v192 = v21;
  v22 = __chkstk_darwin(v21);
  v164 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v170 = &v160 - v25;
  v26 = __chkstk_darwin(v24);
  v180 = &v160 - v27;
  __chkstk_darwin(v26);
  v187 = &v160 - v28;
  v188 = sub_6C26C();
  v186 = *(v188 - 8);
  __chkstk_darwin(v188);
  v200 = &v160 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_6CD4C();
  v204 = *(v206 - 8);
  v30 = __chkstk_darwin(v206);
  v199 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v205 = &v160 - v32;
  v178 = sub_6CCBC();
  v177 = *(v178 - 8);
  __chkstk_darwin(v178);
  v176 = &v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_6CC8C();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v160 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_6CC6C();
  v175 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = &v160 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_6CC9C();
  v42 = *(v41 - 8);
  v43 = __chkstk_darwin(v41);
  v168 = &v160 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v160 - v45;
  v47 = sub_5708(&qword_81578, &qword_700B8);
  v48 = __chkstk_darwin(v47 - 8);
  v162 = &v160 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __chkstk_darwin(v48);
  v169 = &v160 - v51;
  v52 = __chkstk_darwin(v50);
  v179 = &v160 - v53;
  v54 = __chkstk_darwin(v52);
  v185 = &v160 - v55;
  __chkstk_darwin(v54);
  v208 = &v160 - v56;
  v202 = a5;
  sub_6CCAC();
  v57 = (*(v42 + 88))(v46, v41);
  if (v57 == enum case for AjaxMetadata.AjaxQuery.implicit(_:))
  {
    (*(v42 + 96))(v46, v41);
    (*(v35 + 32))(v37, v46, v34);
    v58 = sub_6CC7C();
    v60 = v59;
    (*(v35 + 8))(v37, v34);
    if (v60)
    {
      v203 = v58;
      v207 = v60;
    }

    else
    {
    }

    v80 = v205;
    v81 = v206;
    v64 = v204;
    v82 = v200;
    v65 = v201;
    v83 = v199;
    v84 = sub_6CCDC();
    (*(*(v84 - 8) + 56))(v208, 1, 1, v84);
  }

  else if (v57 == enum case for AjaxMetadata.AjaxQuery.explicit(_:))
  {
    (*(v42 + 96))(v46, v41);
    v61 = v175;
    (*(v175 + 32))(v40, v46, v38);
    v62 = sub_6CC4C();
    v64 = v204;
    v65 = v201;
    if (v63)
    {
      v203 = v62;
      v207 = v63;
    }

    else
    {
    }

    v81 = v206;
    v83 = v199;
    sub_6CC5C();
    (*(v61 + 8))(v40, v38);
    v80 = v205;
    v82 = v200;
  }

  else
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v66 = sub_6D04C();
    sub_5CE4(v66, qword_839A0);
    v67 = v177;
    v68 = v176;
    v69 = v178;
    (*(v177 + 16))(v176, v202, v178);
    v70 = sub_6D03C();
    v71 = sub_6D46C();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      LODWORD(v175) = v71;
      v73 = v68;
      v74 = v72;
      v161 = swift_slowAlloc();
      v209 = v161;
      *v74 = 136315138;
      sub_6CCAC();
      v75 = sub_6D2EC();
      v76 = v69;
      v78 = v77;
      (*(v67 + 8))(v73, v76);
      v79 = sub_1076C(v75, v78, &v209);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_0, v70, v175, "Unhandled genAI query type: %s", v74, 0xCu);
      sub_9964(v161);
    }

    else
    {

      (*(v67 + 8))(v68, v69);
    }

    v64 = v204;
    v80 = v205;
    v82 = v200;
    v65 = v201;
    v85 = sub_6CCDC();
    (*(*(v85 - 8) + 56))(v208, 1, 1, v85);
    v86 = *(v42 + 8);

    v86(v46, v41);
    v81 = v206;
    v83 = v199;
  }

  sub_6CC3C();
  (*(v64 + 16))(v83, v80, v81);
  v87 = (*(v64 + 88))(v83, v81);
  if (v87 == enum case for PrescribedAjaxTool.generateRichContentTool(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v88 = sub_6D04C();
    sub_5CE4(v88, qword_839A0);
    v89 = sub_6D03C();
    v90 = sub_6D45C();
    v91 = os_log_type_enabled(v89, v90);
    v92 = v188;
    if (v91)
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_0, v89, v90, "IFFlow: #PrescribedPlanDecision running the generateRichContentTool", v93, 2u);
    }

    v94 = v185;
    sub_C14C(v208, v185, &qword_81578, &qword_700B8);
    v95 = sub_6CCDC();
    v96 = *(v95 - 8);
    if ((*(v96 + 48))(v94, 1, v95) == 1)
    {
      sub_5E20(v94, &qword_81578, &qword_700B8);
    }

    else
    {
      sub_6CCCC();
      (*(v96 + 8))(v94, v95);
    }

    v106 = v203;
    sub_6C25C();
    v107 = v82;
    v108 = v186;
    v109 = v187;
    (*(v186 + 16))(v187, v107, v92);
    v111 = v191;
    v110 = v192;
    (*(v191 + 104))(v109, enum case for MessagePayload.RequestPrescribedPlan.textTool(_:), v192);
    sub_9B78(v106, v193, v190);
    v112 = v92;
    v113 = v189;
    sub_6C31C();
    v114 = v195;
    sub_BDE0(v113, v109, v194);
    if (!v114)
    {

      (*(v111 + 8))(v109, v110);
      (*(v108 + 8))(v107, v112);
      v64 = v204;
LABEL_34:
      v115 = v205;
      v116 = v206;
LABEL_45:
      (*(v64 + 8))(v115, v116);
      sub_5E20(v208, &qword_81578, &qword_700B8);
      return (*(v196 + 32))(v198, v113, v197);
    }

    result = (*(v196 + 8))(v113, v197);
  }

  else
  {
    if (v87 == enum case for PrescribedAjaxTool.generateRichContentFromMediaIntentTool(_:))
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v97 = sub_6D04C();
      sub_5CE4(v97, qword_839A0);
      v98 = sub_6D03C();
      v99 = sub_6D45C();
      v100 = os_log_type_enabled(v98, v99);
      v101 = v183;
      if (v100)
      {
        v102 = swift_slowAlloc();
        *v102 = 0;
        _os_log_impl(&dword_0, v98, v99, "IFFlow: #PrescribedPlanDecision running the generateRichContentFromMediaIntentTool", v102, 2u);
      }

      v103 = v179;
      sub_C14C(v208, v179, &qword_81578, &qword_700B8);
      v104 = sub_6CCDC();
      v105 = *(v104 - 8);
      if ((*(v105 + 48))(v103, 1, v104) == 1)
      {
        sub_5E20(v103, &qword_81578, &qword_700B8);
      }

      else
      {
        sub_6CCCC();
        (*(v105 + 8))(v103, v104);
      }

      v124 = v182;
      v125 = v203;
      sub_6C1FC();
      v126 = v180;
      v127 = v184;
      (*(v101 + 16))(v180, v124, v184);
      v129 = v191;
      v128 = v192;
      (*(v191 + 104))(v126, enum case for MessagePayload.RequestPrescribedPlan.convertTool(_:), v192);
      sub_9B78(v125, v193, v190);
      v130 = v181;
      sub_6C31C();
      v131 = v195;
      sub_BDE0(v130, v126, v194);
      if (!v131)
      {

        (*(v129 + 8))(v126, v128);
        (*(v101 + 8))(v124, v127);
        v113 = v130;
        v115 = v205;
        v116 = v206;
        v64 = v204;
        goto LABEL_45;
      }
    }

    else
    {
      if (v87 == enum case for PrescribedAjaxTool.generateImageIntentTool(_:))
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v117 = sub_6D04C();
        sub_5CE4(v117, qword_839A0);
        v118 = sub_6D03C();
        v119 = sub_6D45C();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          *v120 = 0;
          _os_log_impl(&dword_0, v118, v119, "IFFlow: #PrescribedPlanDecision running the generateImageIntentTool", v120, 2u);
        }

        v121 = v169;
        sub_C14C(v208, v169, &qword_81578, &qword_700B8);
        v122 = sub_6CCDC();
        v123 = *(v122 - 8);
        if ((*(v123 + 48))(v121, 1, v122) == 1)
        {
          sub_5E20(v121, &qword_81578, &qword_700B8);
        }

        else
        {
          sub_6CCCC();
          (*(v123 + 8))(v121, v122);
        }

        v141 = v203;
        sub_6C21C();
        v142 = v65;
        v143 = v172;
        v144 = v170;
        v145 = v173;
        (*(v172 + 16))(v170, v142, v173);
        v147 = v191;
        v146 = v192;
        (*(v191 + 104))(v144, enum case for MessagePayload.RequestPrescribedPlan.displayTool(_:), v192);
        sub_9B78(v141, v193, v190);
        v148 = v171;
        sub_6C31C();
        v149 = v195;
        sub_BDE0(v148, v144, v194);
        if (!v149)
        {

          (*(v147 + 8))(v144, v146);
          (*(v143 + 8))(v201, v145);
          v113 = v148;
          goto LABEL_34;
        }

        result = (*(v196 + 8))(v148, v197);
        goto LABEL_63;
      }

      if (v87 != enum case for PrescribedAjaxTool.generateKnowledgeResponseIntentTool(_:))
      {

        v150 = v163;
        *v163 = 0xD00000000000003ALL;
        v150[1] = 0x800000000006EB90;
        type metadata accessor for IFFlowError(0);
        swift_storeEnumTagMultiPayload();
        sub_C0F4();
        swift_willThrowTypedImpl();
        v151 = *(v64 + 8);
        v151(v80, v81);
        sub_5E20(v208, &qword_81578, &qword_700B8);
        return (v151)(v83, v81);
      }

      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v133 = sub_6D04C();
      sub_5CE4(v133, qword_839A0);
      v134 = sub_6D03C();
      v135 = sub_6D45C();
      v136 = os_log_type_enabled(v134, v135);
      v137 = v162;
      if (v136)
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_0, v134, v135, "IFFlow: #PrescribedPlanDecision running the generateKnowledgeResponseIntentTool", v138, 2u);
      }

      sub_C14C(v208, v137, &qword_81578, &qword_700B8);
      v139 = sub_6CCDC();
      v140 = *(v139 - 8);
      if ((*(v140 + 48))(v137, 1, v139) == 1)
      {
        sub_5E20(v137, &qword_81578, &qword_700B8);
      }

      else
      {
        sub_6CCCC();
        (*(v140 + 8))(v137, v139);
      }

      v152 = v174;
      v153 = v203;
      sub_6C23C();
      v154 = v166;
      v155 = v164;
      v156 = v167;
      (*(v166 + 16))(v164, v152);
      v158 = v191;
      v157 = v192;
      (*(v191 + 104))(v155, enum case for MessagePayload.RequestPrescribedPlan.knowledgeTool(_:), v192);
      sub_9B78(v153, v193, v190);
      v130 = v165;
      sub_6C31C();
      v159 = v195;
      sub_BDE0(v130, v155, v194);
      if (!v159)
      {

        (*(v158 + 8))(v155, v157);
        (*(v154 + 8))(v174, v156);
        v113 = v130;
        goto LABEL_34;
      }
    }

    result = (*(v196 + 8))(v130, v197);
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5708(&qword_81568, &qword_700A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_5708(&qword_81570, &qword_700B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - v12;
  v14 = sub_5708(&qword_814E0, &qword_6FF70);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  sub_6C32C();
  v17 = sub_6C27C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v16, a2, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_6C2DC();
  v19 = sub_6AE9C();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  sub_6C2FC();
  v20 = sub_6C2AC();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  sub_6C30C();
  v21 = sub_6CFCC();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v7, a3, v21);
  (*(v22 + 56))(v7, 0, 1, v21);
  return sub_6C2BC();
}

unint64_t sub_C0F4()
{
  result = qword_81470;
  if (!qword_81470)
  {
    type metadata accessor for IFFlowError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81470);
  }

  return result;
}

uint64_t sub_C14C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5708(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_C1CC()
{
  v0 = sub_6B7EC();
  v35 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_6C9FC();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6B3AC();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_6B3DC();
  v33 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6B7FC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6B78C();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for Parse.directInvocation(_:))
  {
    (*(v12 + 96))(v14, v11);
    v16 = v35;
    (*(v35 + 32))(v2, v14, v0);
    if (sub_6B7CC() == 0xD00000000000001FLL && 0x800000000006DF40 == v17)
    {
      goto LABEL_4;
    }

    v25 = sub_6D63C();

    if (v25)
    {
LABEL_13:
      v18 = 1;
      goto LABEL_14;
    }

    if (sub_6B7CC() != 0xD000000000000035 || 0x800000000006DF60 != v26)
    {
      v27 = sub_6D63C();

      if (v27)
      {
        goto LABEL_13;
      }

      if (sub_6B7CC() != 0xD00000000000001FLL || 0x800000000006DFA0 != v28)
      {
        v18 = sub_6D63C();
        goto LABEL_5;
      }
    }

LABEL_4:
    v18 = 1;
LABEL_5:

LABEL_14:
    (*(v16 + 8))(v2, v0);
    return v18 & 1;
  }

  if (v15 != enum case for Parse.nlRouter(_:))
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_23;
  }

  (*(v12 + 96))(v14, v11);
  v19 = v33;
  (*(v33 + 32))(v10, v14, v8);
  sub_6B3CC();
  v20 = v34;
  if ((*(v34 + 88))(v7, v5) != enum case for NLRouterParse.InputCandidate.text(_:))
  {
    (*(v19 + 8))(v10, v8);
    (*(v20 + 8))(v7, v5);
    goto LABEL_23;
  }

  (*(v20 + 8))(v7, v5);
  v21 = v30;
  sub_6B3BC();
  (*(v19 + 8))(v10, v8);
  v23 = v31;
  v22 = v32;
  v24 = (*(v31 + 88))(v21, v32);
  if (v24 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriX(_:) || v24 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriXRewrite(_:) || v24 == enum case for NLRoutingDecisionMessage.RoutingDecision.queryRewrite(_:))
  {
    goto LABEL_11;
  }

  if (v24 == enum case for NLRoutingDecisionMessage.RoutingDecision.ajax(_:))
  {
    (*(v23 + 8))(v21, v22);
    v18 = 1;
    return v18 & 1;
  }

  if (v24 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriXFallback(_:))
  {
    goto LABEL_23;
  }

  v18 = 1;
  if (v24 != enum case for NLRoutingDecisionMessage.RoutingDecision.planner(_:) && v24 != enum case for NLRoutingDecisionMessage.RoutingDecision.search(_:))
  {
LABEL_11:
    (*(v23 + 8))(v21, v22);
LABEL_23:
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_C818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v223 = a3;
  v218 = a2;
  v217 = a1;
  v220 = a4;
  v5 = sub_6C26C();
  v207 = *(v5 - 8);
  v208 = v5;
  __chkstk_darwin(v5);
  v206 = &v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_6D10C();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v187 = &v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5708(&qword_81590, qword_700D0);
  __chkstk_darwin(v8 - 8);
  v198 = &v176 - v9;
  v204 = sub_6C20C();
  v203 = *(v204 - 8);
  __chkstk_darwin(v204);
  v200 = &v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5708(&qword_81578, &qword_700B8);
  v12 = __chkstk_darwin(v11 - 8);
  v201 = &v176 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v211 = &v176 - v15;
  v16 = __chkstk_darwin(v14);
  v197 = &v176 - v17;
  __chkstk_darwin(v16);
  v209 = &v176 - v18;
  v226 = sub_6B7EC();
  v224 = *(v226 - 8);
  __chkstk_darwin(v226);
  v225 = &v176 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_5708(&qword_81580, &unk_70F80);
  v21 = __chkstk_darwin(v20 - 8);
  v190 = &v176 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v205 = &v176 - v24;
  __chkstk_darwin(v23);
  v182 = &v176 - v25;
  v221 = type metadata accessor for IFFlowError(0);
  __chkstk_darwin(v221);
  v186 = (&v176 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = sub_6CCBC();
  v184 = *(v185 - 8);
  __chkstk_darwin(v185);
  v183 = &v176 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_6C0EC();
  __chkstk_darwin(v28 - 8);
  v214 = &v176 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_6C33C();
  v31 = *(v30 - 8);
  v215 = v30;
  v216 = v31;
  v32 = __chkstk_darwin(v30);
  v199 = &v176 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v202 = &v176 - v35;
  v36 = __chkstk_darwin(v34);
  v195 = &v176 - v37;
  v38 = __chkstk_darwin(v36);
  v181 = &v176 - v39;
  __chkstk_darwin(v38);
  v178 = &v176 - v40;
  v41 = sub_6C27C();
  v212 = *(v41 - 8);
  v213 = v41;
  v42 = __chkstk_darwin(v41);
  v196 = &v176 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v194 = &v176 - v45;
  __chkstk_darwin(v44);
  v177 = &v176 - v46;
  v180 = sub_6C1DC();
  v176 = *(v180 - 8);
  __chkstk_darwin(v180);
  v179 = &v176 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_6C9FC();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = &v176 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_6B3AC();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = (&v176 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v210 = sub_6B3DC();
  v53 = *(v210 - 8);
  __chkstk_darwin(v210);
  v55 = &v176 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_6B7FC();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v176 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = v4;
  sub_6B78C();
  v60 = (*(v57 + 88))(v59, v56);
  if (v60 == enum case for Parse.directInvocation(_:))
  {
    (*(v57 + 96))(v59, v56);
    v62 = v224;
    v61 = v225;
    v63 = v59;
    v64 = v226;
    (*(v224 + 32))(v225, v63, v226);
    v65 = sub_6B7CC();
    v67 = v66;
    v68._rawValue = &off_7EE58;
    v228._countAndFlagsBits = v65;
    v228._object = v67;
    v69 = sub_6D5FC(v68, v228);

    if (v69 == 2)
    {
      v98 = sub_22800();
      if (v99)
      {
        v100 = v98;
      }

      else
      {
        v100 = 0;
      }

      if (v99)
      {
        v101 = v99;
      }

      else
      {
        v101 = 0xE000000000000000;
      }

      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v102 = sub_6D04C();
      sub_5CE4(v102, qword_839A0);

      v103 = sub_6D03C();
      v104 = sub_6D45C();

      v105 = os_log_type_enabled(v103, v104);
      v106 = v206;
      if (v105)
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v227 = v108;
        *v107 = 136315138;
        *(v107 + 4) = sub_1076C(v100, v101, &v227);
        _os_log_impl(&dword_0, v103, v104, "Received genAIText directInvocation with utterance: %s", v107, 0xCu);
        sub_9964(v108);
      }

      v109 = sub_6CCDC();
      v110 = *(v109 - 8);
      v111 = v211;
      (*(v110 + 56))(v211, 1, 1, v109);
      v112 = v201;
      sub_E508(v111, v201);
      if ((*(v110 + 48))(v112, 1, v109) == 1)
      {
        sub_5E20(v112, &qword_81578, &qword_700B8);
      }

      else
      {
        sub_6CCCC();
        (*(v110 + 8))(v112, v109);
      }

      sub_6C25C();
      v136 = v106;
      v133 = v207;
      v137 = v208;
      v138 = v196;
      (*(v207 + 16))(v196, v136, v208);
      v140 = v212;
      v139 = v213;
      (*(v212 + 104))(v138, enum case for MessagePayload.RequestPrescribedPlan.textTool(_:), v213);
      sub_9B78(v100, v217, v214);
      v141 = v199;
      sub_6C31C();
      v142 = v219;
      sub_C1B4(v141, v138, v218);
      if (!v142)
      {

        (*(v140 + 8))(v138, v139);
        (*(v133 + 8))(v136, v137);
        sub_5E20(v211, &qword_81578, &qword_700B8);
        (*(v224 + 8))(v225, v226);
        return (*(v216 + 32))(v220, v141, v215);
      }

      (*(v216 + 8))(v141, v215);
    }

    else
    {
      if (v69 == 1)
      {
        v89 = sub_22800();
        if (v90)
        {
          v91 = v89;
        }

        else
        {
          v91 = 0;
        }

        v92 = 0xE000000000000000;
        if (v90)
        {
          v92 = v90;
        }

        v222 = v91;
        v223 = v92;
        v93 = v198;
        sub_228B8(v198);
        v94 = sub_6D12C();
        v95 = *(v94 - 8);
        if ((*(v95 + 48))(v93, 1, v94) == 1)
        {
          sub_5E20(v93, &qword_81590, qword_700D0);
          v96 = 0;
          v97 = 0;
        }

        else
        {
          v115 = v187;
          sub_6D11C();
          (*(v95 + 8))(v93, v94);
          v96 = sub_6D0FC();
          v97 = v116;
          (*(v188 + 8))(v115, v189);
        }

        v117 = v223;
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v118 = sub_6D04C();
        sub_5CE4(v118, qword_839A0);

        v119 = sub_6D03C();
        v120 = sub_6D45C();

        v121 = os_log_type_enabled(v119, v120);
        v221 = v96;
        if (v121)
        {
          v122 = swift_slowAlloc();
          v227 = swift_slowAlloc();
          *v122 = 136315394;
          *(v122 + 4) = sub_1076C(v222, v117, &v227);
          *(v122 + 12) = 2080;
          if (v97)
          {
            v123 = v96;
          }

          else
          {
            v123 = 7104878;
          }

          v124 = v62;
          if (v97)
          {
            v125 = v97;
          }

          else
          {
            v125 = 0xE300000000000000;
          }

          v126 = sub_1076C(v123, v125, &v227);
          v62 = v124;

          *(v122 + 14) = v126;
          _os_log_impl(&dword_0, v119, v120, "IFFlow: #AppIntentSuggestionInvocation received directInvocation with utterance: %s and suggestedInvocationId: %s", v122, 0x16u);
          swift_arrayDestroy();
          v64 = v226;

          v61 = v225;
        }

        v127 = v205;
        v128 = sub_6C29C();
        v129 = *(*(v128 - 8) + 56);
        v129(v127, 1, 1, v128);
        if (v97)
        {

          v130 = v64;
          v131 = v190;
          sub_6C28C();
          sub_5E20(v127, &qword_81580, &unk_70F80);
          v129(v131, 0, 1, v128);
          v132 = v131;
          v64 = v130;
          sub_E578(v132, v127);
        }

        v133 = v223;
        sub_9B78(v222, v217, v214);
        v134 = v202;
        sub_6C31C();
        v135 = v219;
        sub_9E14(v134, v218, v127);
        if (!v135)
        {

          sub_5E20(v127, &qword_81580, &unk_70F80);
          (*(v62 + 8))(v61, v64);
          return (*(v216 + 32))(v220, v134, v215);
        }
      }

      else
      {
        if (v69)
        {
          v114 = sub_6B7AC();
          (*(*(v114 - 8) + 16))(v223, v222, v114);
          swift_storeEnumTagMultiPayload();
          sub_C0F4();
          swift_willThrowTypedImpl();
          return (*(v62 + 8))(v61, v64);
        }

        v70 = sub_22800();
        if (v71)
        {
          v72 = v70;
        }

        else
        {
          v72 = 0;
        }

        if (v71)
        {
          v73 = v71;
        }

        else
        {
          v73 = 0xE000000000000000;
        }

        v74 = sub_6CCDC();
        v75 = *(v74 - 8);
        v76 = v209;
        (*(v75 + 56))(v209, 1, 1, v74);
        v77 = v197;
        sub_E508(v76, v197);
        if ((*(v75 + 48))(v77, 1, v74) == 1)
        {
          sub_5E20(v77, &qword_81578, &qword_700B8);
        }

        else
        {
          sub_6CCCC();
          (*(v75 + 8))(v77, v74);
        }

        v143 = v194;

        v144 = v200;
        sub_6C1EC();
        v145 = v203;
        v146 = v204;
        (*(v203 + 16))(v143, v144, v204);
        v148 = v212;
        v147 = v213;
        (*(v212 + 104))(v143, enum case for MessagePayload.RequestPrescribedPlan.convertTool(_:), v213);
        sub_9B78(v72, v217, v214);
        v133 = v73;
        v134 = v195;
        sub_6C31C();
        v149 = v219;
        sub_C1B4(v134, v143, v218);
        v223 = v149;
        v150 = v225;
        if (!v149)
        {

          (*(v148 + 8))(v143, v147);
          (*(v145 + 8))(v144, v146);
          sub_5E20(v209, &qword_81578, &qword_700B8);
          (*(v224 + 8))(v150, v226);
          return (*(v216 + 32))(v220, v134, v215);
        }
      }

      (*(v216 + 8))(v134, v215);
    }

    while (1)
    {
      __break(1u);
LABEL_88:
      (*(v216 + 8))(v133, v215);
    }
  }

  if (v60 != enum case for Parse.nlRouter(_:))
  {
    v87 = sub_6B7AC();
    (*(*(v87 - 8) + 16))(v223, v222, v87);
    swift_storeEnumTagMultiPayload();
    sub_C0F4();
    swift_willThrowTypedImpl();
    return (*(v57 + 8))(v59, v56);
  }

  (*(v57 + 96))(v59, v56);
  v78 = v53;
  v79 = v59;
  v80 = v210;
  (*(v53 + 32))(v55, v79, v210);
  sub_6B3CC();
  if ((*(v50 + 88))(v52, v49) != enum case for NLRouterParse.InputCandidate.text(_:))
  {
    (*(v50 + 8))(v52, v49);
    goto LABEL_40;
  }

  (*(v50 + 96))(v52, v49);
  v82 = *v52;
  v81 = v52[1];
  v83 = v191;
  sub_6B3BC();
  v84 = v192;
  v85 = v193;
  v86 = (*(v192 + 88))(v83, v193);
  if (v86 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriX(_:) || v86 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriXRewrite(_:) || v86 == enum case for NLRoutingDecisionMessage.RoutingDecision.queryRewrite(_:))
  {

    (*(v84 + 8))(v83, v85);
LABEL_40:
    v113 = sub_6B7AC();
    (*(*(v113 - 8) + 16))(v223, v222, v113);
    swift_storeEnumTagMultiPayload();
    sub_C0F4();
    swift_willThrowTypedImpl();
    return (*(v78 + 8))(v55, v80);
  }

  if (v86 != enum case for NLRoutingDecisionMessage.RoutingDecision.ajax(_:))
  {
    if (v86 == enum case for NLRoutingDecisionMessage.RoutingDecision.siriXFallback(_:))
    {

      goto LABEL_40;
    }

    if (v86 == enum case for NLRoutingDecisionMessage.RoutingDecision.planner(_:))
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v156 = sub_6D04C();
      sub_5CE4(v156, qword_839A0);
      v157 = sub_6D03C();
      v158 = sub_6D45C();
      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        *v159 = 0;
        _os_log_impl(&dword_0, v157, v158, "IFFlow: #PrescribedPlanDecision no prescribed plan, falling back on planner", v159, 2u);
      }

      v160 = sub_6C29C();
      v161 = v182;
      (*(*(v160 - 8) + 56))(v182, 1, 1, v160);
      sub_9B78(v82, v217, v214);
      v133 = v181;
      sub_6C31C();
      v162 = v219;
      sub_9E14(v133, v218, v161);
      if (v162)
      {
        goto LABEL_88;
      }

      sub_5E20(v161, &qword_81580, &unk_70F80);
    }

    else
    {
      if (v86 != enum case for NLRoutingDecisionMessage.RoutingDecision.search(_:))
      {

        v175 = sub_6B7AC();
        (*(*(v175 - 8) + 16))(v223, v222, v175);
        swift_storeEnumTagMultiPayload();
        sub_C0F4();
        swift_willThrowTypedImpl();
        (*(v78 + 8))(v55, v80);
        return (*(v84 + 8))(v83, v85);
      }

      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v163 = sub_6D04C();
      sub_5CE4(v163, qword_839A0);
      v164 = sub_6D03C();
      v165 = sub_6D45C();
      v166 = os_log_type_enabled(v164, v165);
      v167 = v176;
      if (v166)
      {
        v168 = swift_slowAlloc();
        *v168 = 0;
        _os_log_impl(&dword_0, v164, v165, "IFFlow: #PrescribedPlanDecision running the searchTool", v168, 2u);
      }

      v169 = v179;
      sub_6C1CC();
      v170 = v177;
      (*(v167 + 16))(v177, v169, v180);
      v171 = v212;
      (*(v212 + 104))(v170, enum case for MessagePayload.RequestPrescribedPlan.searchTool(_:), v213);
      v172 = v82;
      v173 = v170;
      sub_9B78(v172, v217, v214);
      v133 = v178;
      sub_6C31C();
      v174 = v219;
      sub_C1B4(v133, v173, v218);
      if (v174)
      {
        goto LABEL_88;
      }

      (*(v171 + 8))(v173, v213);
      (*(v167 + 8))(v179, v180);
    }

    (*(v78 + 8))(v55, v80);
    return (*(v216 + 32))(v220, v133, v215);
  }

  (*(v84 + 96))(v83, v85);
  v151 = v184;
  v152 = v183;
  v153 = v185;
  (*(v184 + 32))(v183, v83, v185);
  v154 = v219;
  v155 = v186;
  sub_A53C(v82, v81, v217, v218, v152, v186, v220);

  (*(v151 + 8))(v152, v153);
  if (!v154)
  {
    return (*(v78 + 8))(v55, v80);
  }

  (*(v78 + 8))(v55, v80);
  return sub_9814(v155, v223);
}

uint64_t sub_E508(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81578, &qword_700B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E578(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81580, &unk_70F80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_E5E8()
{
  sub_5708(&qword_816B8, &qword_70210);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  return v1;
}

uint64_t sub_E68C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E728;

  return static ErrorTemplates.genericErrorLegacy()(a1);
}

uint64_t sub_E728()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_E81C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for IFFlowError(0);
  v2[5] = swift_task_alloc();
  v3 = sub_6B7FC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_6B7AC();
  v2[9] = swift_task_alloc();
  v4 = sub_6B36C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_6C06C();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_E9FC, 0, 0);
}

uint64_t sub_E9FC()
{
  v72 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[3];
  v5 = sub_6BE7C();
  v6 = OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_clientActionParse;
  sub_6B5EC();
  v7 = sub_6C05C();
  v9 = v8;
  v10 = *(v2 + 8);
  v10(v1, v3);
  if (*(v5 + 16))
  {
    sub_10DDC(v7, v9);
    v12 = v11;

    if (v12)
    {
      v69 = v10;
      v13 = v0[8];
      v14 = v4;
      v15 = v0[6];
      v16 = v0[7];

      sub_6BE9C();
      v17 = sub_6B60C();
      (*(*(v17 - 8) + 16))(v13, v14 + v6, v17);
      (*(v16 + 104))(v13, enum case for Parse.ifClientAction(_:), v15);
      sub_6B79C();
      sub_6B34C();
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v18 = v0[12];
      v19 = v0[13];
      v20 = v0[10];
      v21 = v0[11];
      v22 = sub_6D04C();
      sub_5CE4(v22, qword_839A0);
      (*(v21 + 16))(v18, v19, v20);

      v23 = sub_6D03C();
      v24 = sub_6D45C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[16];
        v27 = v0[11];
        v26 = v0[12];
        v66 = v0[14];
        v67 = v0[10];
        v28 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *v28 = 136315394;
        sub_6B5EC();
        v29 = sub_6C05C();
        v31 = v30;
        v69(v25, v66);
        v32 = sub_1076C(v29, v31, &v71);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = v26;
        v34 = sub_6B35C();
        v36 = v35;
        v37 = *(v27 + 8);
        v37(v33, v67);
        v38 = sub_1076C(v34, v36, &v71);

        *(v28 + 14) = v38;
        _os_log_impl(&dword_0, v23, v24, "IFClientActionRoutingFlow redirecting %s shim tool request to %s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        v59 = v0[11];
        v58 = v0[12];
        v60 = v0[10];

        v37 = *(v59 + 8);
        v37(v58, v60);
      }

      v61 = v0[13];
      v62 = v0[10];
      v63 = v0[3];
      v64 = *(v63 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
      *(v63 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = 1;
      sub_10E54(v64);
      sub_6B4AC();
      v37(v61, v62);

      v65 = v0[1];

      return v65();
    }
  }

  else
  {
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v39 = sub_6D04C();
  sub_5CE4(v39, qword_839A0);

  v40 = sub_6D03C();
  v41 = sub_6D46C();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = v0[16];
    v68 = v0[14];
    v43 = swift_slowAlloc();
    v70 = v10;
    v71 = swift_slowAlloc();
    v44 = v71;
    *v43 = 136315138;
    sub_6B5EC();
    v45 = sub_6C05C();
    v47 = v46;
    v70(v42, v68);
    v48 = sub_1076C(v45, v47, &v71);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_0, v40, v41, "IFClientActionRoutingFlow can't find shim tool for %s", v43, 0xCu);
    sub_9964(v44);
    v10 = v70;
  }

  v49 = v0[16];
  v50 = v0[14];
  v51 = v0[5];
  sub_6B5EC();
  v52 = sub_6C05C();
  v54 = v53;
  v10(v49, v50);
  *v51 = v52;
  v51[1] = v54;
  swift_storeEnumTagMultiPayload();
  v55 = swift_task_alloc();
  v0[17] = v55;
  *v55 = v0;
  v55[1] = sub_F0B0;
  v56 = v0[5];

  return sub_F274(v56);
}

uint64_t sub_F0B0()
{
  v1 = *(*v0 + 40);

  sub_43F8(v1);

  return _swift_task_switch(sub_F1C8, 0, 0);
}

uint64_t sub_F1C8(uint64_t a1)
{
  sub_6B49C();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_F274(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  sub_5708(&qword_81520, &qword_708D0);
  v2[16] = swift_task_alloc();
  v3 = sub_6B55C();
  v2[17] = v3;
  v2[18] = *(v3 - 8);
  v2[19] = swift_task_alloc();
  v4 = sub_6B89C();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_F3C8, 0, 0);
}

uint64_t sub_F3C8()
{
  v2 = v0[14];
  v1 = v0[15];
  sub_5708(&qword_816B8, &qword_70210);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[13] = v1;

  sub_6BC7C();

  v3 = sub_6CDBC();
  v5 = v4;

  sub_4E710(v3, v5, v2);

  v9 = (*(v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator) + **(v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_errorGenerator));
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_F594;
  v7 = v0[19];

  return v9(v7);
}

uint64_t sub_F594()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_FAD4;
  }

  else
  {
    v2 = sub_F6A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_F6A8()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v15 = *(v0 + 160);
  v3 = *(v0 + 144);
  v13 = *(v0 + 176);
  v14 = *(v0 + 136);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  sub_99FC((v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState), *(v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState + 24));
  sub_6B2AC();
  v6 = sub_6B50C();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_6B43C();
  sub_5E20(v0 + 16, &qword_81538, &qword_70080);
  sub_5E20(v5, &qword_81520, &qword_708D0);
  (*(v3 + 8))(v2, v14);
  v7 = (v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher);
  v8 = *(v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher + 24);
  v9 = *(v4 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher + 32);
  sub_99FC(v7, v8);
  *(v0 + 80) = v15;
  *(v0 + 88) = &protocol witness table for AceOutput;
  v10 = sub_97B0((v0 + 56));
  (*(v1 + 16))(v10, v13, v15);
  v11 = swift_task_alloc();
  *(v0 + 200) = v11;
  *v11 = v0;
  v11[1] = sub_F8CC;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 56, v8, v9);
}

uint64_t sub_F8CC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_FCE0;
  }

  else
  {
    sub_9964((v2 + 56));
    v3 = sub_F9E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_F9E8()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[15];
  v2 = v0[14];
  type metadata accessor for IFFlowError(0);
  sub_C0F4();
  v3 = swift_allocError();
  sub_4394(v2, v4);
  v5 = *(v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
  *(v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = v3;
  sub_10E54(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_FAD4()
{
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  swift_errorRetain();
  v2 = sub_6D03C();
  v3 = sub_6D46C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "IFClientActionRoutingFlow error publishing error response: %@", v4, 0xCu);
    sub_5E20(v5, &qword_81508, &unk_70260);
  }

  else
  {
  }

  v7 = v0[15];
  v8 = v0[14];
  type metadata accessor for IFFlowError(0);
  sub_C0F4();
  v9 = swift_allocError();
  sub_4394(v8, v10);
  v11 = *(v7 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
  *(v7 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = v9;
  sub_10E54(v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_FCE0()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  sub_9964(v0 + 7);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v1 = sub_6D04C();
  sub_5CE4(v1, qword_839A0);
  swift_errorRetain();
  v2 = sub_6D03C();
  v3 = sub_6D46C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_0, v2, v3, "IFClientActionRoutingFlow error publishing error response: %@", v4, 0xCu);
    sub_5E20(v5, &qword_81508, &unk_70260);
  }

  else
  {
  }

  v7 = v0[15];
  v8 = v0[14];
  type metadata accessor for IFFlowError(0);
  sub_C0F4();
  v9 = swift_allocError();
  sub_4394(v8, v10);
  v11 = *(v7 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
  *(v7 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state) = v9;
  sub_10E54(v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_FF0C()
{
  v1 = OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_clientActionParse;
  v2 = sub_6B60C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_9964((v0 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_deviceState));
  sub_9964((v0 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_outputPublisher));

  sub_10E54(*(v0 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IFClientActionRoutingFlow(uint64_t a1)
{
  result = qword_815F8;
  if (!qword_815F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10060(uint64_t a1)
{
  result = sub_6B60C();
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

uint64_t sub_10124(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10148(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1019C(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_101F8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_102E0;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_102E0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_10410(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_E728;

  return sub_E81C(a1);
}

unint64_t sub_104AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(*v1 + OBJC_IVAR____TtC12IFFlowPlugin25IFClientActionRoutingFlow_state);
    }

    v4 = v2 != 1;
  }

  else
  {
    v5 = a1;
    type metadata accessor for IFFlowError(0);
    sub_C0F4();
    v3 = swift_allocError();
    *v6 = 0xD000000000000026;
    v6[1] = 0x800000000006EC80;
    swift_storeEnumTagMultiPayload();
    v2 = 0;
    a1 = v5;
    v4 = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_10578(v2);
}

unint64_t sub_10578(unint64_t result)
{
  if (result >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10588@<X0>(void *a2@<X8>)
{
  sub_5708(&qword_816B8, &qword_70210);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_6BC7C();

  *a2 = v4;
  return result;
}

uint64_t sub_1063C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_10688(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10710(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1076C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1076C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10838(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_98EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_9964(v11);
  return v7;
}

unint64_t sub_10838(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10944(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_6D59C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10944(uint64_t a1, unint64_t a2)
{
  v3 = sub_10990(a1, a2);
  sub_10AC0(&off_7EE30);
  return v3;
}

void *sub_10990(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10BAC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_6D59C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_6D34C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10BAC(v10, 0);
        result = sub_6D56C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10AC0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10C20(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10BAC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_5708(&qword_816B0, &unk_70200);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10C20(char *result, int64_t a2, char a3, char *a4)
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
    sub_5708(&qword_816B0, &unk_70200);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_10D14(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_10D24(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_10D98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_6D52C(*(v2 + 40));

  return sub_10E6C(a1, v4);
}

unint64_t sub_10DDC(uint64_t a1, uint64_t a2)
{
  sub_6D6BC();
  sub_6D31C();
  v4 = sub_6D6DC();

  return sub_10F34(a1, a2, v4);
}

unint64_t sub_10E54(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_10E6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10FEC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_6D53C();
      sub_11048(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_6D63C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1109C(uint64_t a1)
{
  v2 = sub_6B7AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22C60())
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v6 = sub_6D04C();
    sub_5CE4(v6, qword_839A0);
    v7 = sub_6D03C();
    v8 = sub_6D45C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Input contains cancellation dialog act, returning .cancel() from actionForInput", v9, 2u);
    }

    return static ActionForInput.cancel()();
  }

  else
  {
    sub_23170();
    if (v10)
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v11 = sub_6D04C();
      sub_5CE4(v11, qword_839A0);
      (*(v3 + 16))(v5, a1, v2);
      v12 = sub_6D03C();
      v13 = sub_6D45C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v26 = v15;
        *v14 = 136315138;
        sub_11FB4(&qword_81768, &type metadata accessor for Input, &protocol conformance descriptor for Input);
        v16 = sub_6D61C();
        v18 = v17;
        (*(v3 + 8))(v5, v2);
        v19 = sub_1076C(v16, v18, &v26);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_0, v12, v13, "Input does not appear to contain a disambiguation prompt response, returning ignore from actionForInput. Input: %s)", v14, 0xCu);
        sub_9964(v15);
      }

      else
      {

        (*(v3 + 8))(v5, v2);
      }

      return sub_6B40C();
    }

    else
    {
      if (qword_812A0 != -1)
      {
        swift_once();
      }

      v20 = sub_6D04C();
      sub_5CE4(v20, qword_839A0);
      v21 = sub_6D03C();
      v22 = sub_6D45C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_0, v21, v22, "Input contains interoperable disambiguation response, returning handle", v23, 2u);
      }

      return sub_6B3FC();
    }
  }
}

uint64_t sub_114EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  return _swift_task_switch(sub_11510, 0, 0);
}

unint64_t sub_11510()
{
  result = sub_23170();
  if (v2)
  {
    v3 = v0[6];
    sub_6D57C(50);

    v14 = 0xD000000000000030;
    v15 = 0x800000000006ED00;
    sub_6B7AC();
    sub_11FB4(&qword_81768, &type metadata accessor for Input, &protocol conformance descriptor for Input);
LABEL_15:
    v20._countAndFlagsBits = sub_6D61C();
    sub_6D33C(v20);

    *v3 = v14;
    v3[1] = v15;
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    sub_11FB4(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    swift_willThrowTypedImpl();
    v6 = v0[1];
    goto LABEL_16;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    v5 = *(v0[5] + 56);
    v4 = v5 + result;
    if (__OFADD__(v5, result))
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v4 = result - 1;
  }

  if (v4 < 0 || v4 >= *(v0[5] + 56))
  {
    v7 = result;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v8 = sub_6D04C();
    sub_5CE4(v8, qword_839A0);

    v9 = sub_6D03C();
    v10 = sub_6D46C();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[5];
    if (v11)
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      *(v13 + 4) = v4;
      *(v13 + 12) = 2048;
      *(v13 + 14) = *(v12 + 56);

      _os_log_impl(&dword_0, v9, v10, "Referenced list index (%ld) outside of choice range (count: %ld", v13, 0x16u);
    }

    else
    {
    }

    v3 = v0[6];
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_6D57C(90);
    v17._countAndFlagsBits = 0xD000000000000037;
    v17._object = 0x800000000006ED40;
    sub_6D33C(v17);
    v0[2] = v4;
    v18._countAndFlagsBits = sub_6D61C();
    sub_6D33C(v18);

    v19._object = 0x800000000006ED80;
    v19._countAndFlagsBits = 0xD00000000000001FLL;
    sub_6D33C(v19);
    v0[2] = v7;
    goto LABEL_15;
  }

  v0[2] = v4;
  sub_6B62C();
  v6 = v0[1];
LABEL_16:

  return v6();
}

uint64_t sub_118A8()
{
  sub_9964((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_11920(uint64_t a1, uint64_t a2)
{
  v2[2] = type metadata accessor for IFFlowError(0);
  v5 = swift_task_alloc();
  v2[3] = v5;
  v7 = swift_task_alloc();
  v2[4] = v7;
  *v7 = v2;
  v7[1] = sub_11A00;

  return sub_114EC(a1, a2, v6, v5);
}

uint64_t sub_11A00()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v2 + 24);
    sub_11FB4(&qword_81470, type metadata accessor for IFFlowError, &unk_6FC80);
    swift_allocError();
    sub_9814(v4, v5);
  }

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_11B70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_11B90, 0, 0);
}

uint64_t sub_11B90()
{
  sub_9878(v0[3] + 16, v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_11BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_12CEC;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t sub_11CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_12CEC;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v9, a4);
}

uint64_t sub_11DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_E728;

  return PromptForDisambiguationFlowStrategyAsync.makeFlowCancelledResponse()(a1, v7, a3);
}

uint64_t sub_11EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_12CEC;

  return PromptForDisambiguationFlowStrategyAsync.makeErrorResponse(_:)(a1, a2, v9, a4);
}

uint64_t sub_11FB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_11FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v85 = a4;
  v89 = a3;
  v83 = a2;
  v92 = *v5;
  v93 = a5;
  v74 = sub_6C4EC();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_6C35C();
  v86 = *(v88 - 8);
  v8 = __chkstk_darwin(v88);
  v87 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v71 - v10;
  v11 = sub_5708(&qword_81770, &unk_70F70);
  __chkstk_darwin(v11 - 8);
  v13 = &v71 - v12;
  v79 = sub_6BEEC();
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v80 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_6C86C();
  v75 = *(v15 - 8);
  v76 = v15;
  __chkstk_darwin(v15);
  v17 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_6AE9C();
  v18 = *(v90 - 8);
  __chkstk_darwin(v90);
  v78 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_5708(&unk_82030, &qword_70370);
  __chkstk_darwin(v20 - 8);
  v22 = &v71 - v21;
  v23 = sub_6C89C();
  v81 = *(v23 - 8);
  v82 = v23;
  __chkstk_darwin(v23);
  v91 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_5708(&qword_81778, &qword_70378);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v71 - v27;
  (*(v26 + 16))(&v71 - v27, a1, v25);
  v29 = (*(v26 + 88))(v28, v25);
  if (v29 == enum case for PromptResult.answered<A>(_:))
  {
    v71 = v5;
    (*(v26 + 96))(v28, v25);
    v30 = *v28;
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v31 = sub_6D04C();
    sub_5CE4(v31, qword_839A0);
    v32 = sub_6D03C();
    v33 = sub_6D44C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_0, v32, v33, "IFFlow Disambiguation item selected. Forwarding to IF", v34, 2u);
    }

    (*(v18 + 56))(v22, 1, 1, v90);
    v35 = v78;
    sub_6C80C();
    *v17 = v30;
    (*(v75 + 104))(v17, enum case for SystemPromptResolution.UserAction.disambiguationIndexSelected(_:), v76);
    (*(v77 + 16))(v80, v83, v79);
    v36 = enum case for SystemPromptResolution.ResolutionInput.touch(_:);
    v37 = sub_6C85C();
    v38 = *(v37 - 8);
    (*(v38 + 104))(v13, v36, v37);
    (*(v38 + 56))(v13, 0, 1, v37);
    v39 = v91;
    sub_6C87C();
    v83 = *(sub_5708(&qword_81788, &qword_70380) + 48);
    sub_6C82C();
    v40 = v84;
    sub_A17C(v39, v85);
    v41 = v86;
    v42 = v88;
    (*(v86 + 104))(v40, enum case for MessagePayload.request(_:), v88);
    v43 = v93;
    sub_30BF8(v35, v40);
    v44 = *(v41 + 8);
    v44(v40, v42);
    (*(v18 + 8))(v35, v90);
    v45 = v87;
    sub_6C81C();
    if ((*(v41 + 88))(v45, v42) == enum case for MessagePayload.systemResponse(_:))
    {
      (*(v41 + 96))(v45, v42);
      v46 = v73;
      v47 = v72;
      v48 = v74;
      (*(v73 + 32))(v72, v45, v74);
      v49 = v83;
      sub_4458(v47, &v43[v83]);
      (*(v46 + 8))(v47, v48);
      (*(v81 + 8))(v91, v82);
      v50 = 0;
      v51 = v49;
    }

    else
    {
      (*(v81 + 8))(v91, v82);
      v44(v45, v42);
      v50 = 1;
      v51 = v83;
    }

    v55 = sub_6CD2C();
    (*(*(v55 - 8) + 56))(&v43[v51], v50, 1, v55);
    type metadata accessor for IFFlow.State(0, *(v92 + 80), *(v92 + 88), v56);
    return swift_storeEnumTagMultiPayload();
  }

  if (v29 == enum case for PromptResult.error<A>(_:))
  {
    (*(v26 + 96))(v28, v25);
    v52 = v28[8];
    v53 = v93;
    *v93 = *v28;
    v53[8] = v52;
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for IFFlow.State(0, *(v92 + 80), *(v92 + 88), v54);
    return swift_storeEnumTagMultiPayload();
  }

  v58 = v93;
  if (v29 == enum case for PromptResult.cancelled<A>(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v59 = sub_6D04C();
    sub_5CE4(v59, qword_839A0);
    v60 = sub_6D03C();
    v61 = sub_6D45C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_0, v60, v61, "Exiting IFFlow, received userCancelled", v62, 2u);
    }

    *v58 = 0;
    v58[8] = 0;
    type metadata accessor for IFFlow.State(0, *(v92 + 80), *(v92 + 88), v63);
    return swift_storeEnumTagMultiPayload();
  }

  if (v29 == enum case for PromptResult.unanswered<A>(_:))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v64 = sub_6D04C();
    sub_5CE4(v64, qword_839A0);
    v65 = sub_6D03C();
    v66 = sub_6D45C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v65, v66, "Exiting IFFlow, received .unaswered from PromptForDisambiguation", v67, 2u);
    }

    *v58 = 0;
    type metadata accessor for IFFlowError(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for IFFlow.State(0, *(v92 + 80), *(v92 + 88), v68);
    return swift_storeEnumTagMultiPayload();
  }

  v94 = 0;
  v95 = 0xE000000000000000;
  sub_6D57C(35);

  v94 = 0xD000000000000021;
  v95 = 0x800000000006EDA0;
  sub_12C88();
  v96._countAndFlagsBits = sub_6D61C();
  sub_6D33C(v96);

  v69 = v95;
  *v58 = v94;
  *(v58 + 1) = v69;
  type metadata accessor for IFFlowError(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for IFFlow.State(0, *(v92 + 80), *(v92 + 88), v70);
  swift_storeEnumTagMultiPayload();
  return (*(v26 + 8))(v28, v25);
}

void *sub_12C38(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_12C58@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_12C88()
{
  result = qword_81780;
  if (!qword_81780)
  {
    sub_29F8(&qword_81778, &qword_70378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81780);
  }

  return result;
}

id sub_12CF0(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v67) = a3;
  v65 = a1;
  v4 = sub_5708(&qword_81798, &qword_703B8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v58 - v9;
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = sub_6C54C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = objc_allocWithZone(DialogElement);
  v64 = v17;
  v19 = [v18 init];
  v20 = *(v14 + 16);
  v63 = a2;
  v20(v16, a2, v13);
  LODWORD(v17) = (*(v14 + 88))(v16, v13);
  v21 = enum case for StatementOutcome.failure(_:);
  v22 = *(v14 + 8);
  v61 = v14 + 8;
  v62 = v13;
  v60 = v22;
  v22(v16, v13);
  if (v17 == v21 && (v67 & 1) != 0)
  {
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_6D57C(66);
    sub_6C37C();
    v23 = sub_6C45C();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v12, 1, v23) == 1)
    {
      sub_5E20(v12, &qword_81798, &qword_703B8);
      v25 = 0xEB0000000065736ELL;
      v26._countAndFlagsBits = 0x6F70736572206F4ELL;
    }

    else
    {
      v28 = sub_6C44C();
      v25 = v29;
      (*(v24 + 8))(v12, v23);
      v26._countAndFlagsBits = v28;
    }

    v26._object = v25;
    sub_6D33C(v26);

    v70._object = 0x800000000006EDD0;
    v70._countAndFlagsBits = 0xD000000000000040;
    sub_6D33C(v70);
  }

  else
  {
    sub_6C37C();
    v23 = sub_6C45C();
    v27 = *(v23 - 8);
    if ((*(v27 + 48))(v10, 1, v23) == 1)
    {
      sub_5E20(v10, &qword_81798, &qword_703B8);
    }

    else
    {
      sub_6C44C();
      (*(v27 + 8))(v10, v23);
    }
  }

  sub_6C36C();
  sub_6C45C();
  v30 = *(v23 - 8);
  if ((*(v30 + 48))(v7, 1, v23) == 1)
  {
    sub_5E20(v7, &qword_81798, &qword_703B8);
  }

  else
  {
    sub_6C44C();
    (*(v30 + 8))(v7, v23);
  }

  v31 = sub_6D2BC();
  [v19 setFullPrint:v31];

  v32 = sub_6D2BC();
  [v19 setFullSpeak:v32];

  v33 = sub_6D2BC();

  [v19 setSupportingPrint:v33];

  v34 = sub_6D2BC();

  [v19 setSupportingSpeak:v34];

  sub_5708(&qword_81548, &qword_70088);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_6FFF0;
  *(v35 + 32) = v19;
  sub_14CB8();
  v36 = v19;
  isa = sub_6D37C().super.isa;

  v38 = v64;
  [v64 setDialog:isa];

  sub_6C48C();
  v39 = sub_6D2BC();

  [v38 setCatId:v39];

  v66 = sub_6C48C();
  v67 = v40;
  if (v40)
  {
    v41 = [v38 dialog];
    v42 = sub_6D38C();

    v59 = v36;
    if (v42 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)); i; i = sub_6D5CC())
    {
      v44 = 0;
      while (1)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v45 = sub_6D58C();
        }

        else
        {
          if (v44 >= *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_29;
          }

          v45 = *(v42 + 8 * v44 + 32);
        }

        v46 = v45;
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          break;
        }

        v48 = [v45 id];
        v49 = sub_6D2CC();
        v51 = v50;

        v52 = HIBYTE(v51) & 0xF;
        if ((v51 & 0x2000000000000000) == 0)
        {
          v52 = v49 & 0xFFFFFFFFFFFFLL;
        }

        if (!v52)
        {
          v53 = sub_6D2BC();
          [v46 setId:v53];
        }

        ++v44;
        if (v47 == i)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

LABEL_31:

    v55 = v62;
    v54 = v63;
    v38 = v64;
  }

  else
  {

    v55 = v62;
    v54 = v63;
  }

  v60(v54, v55);
  v56 = sub_6C4AC();
  (*(*(v56 - 8) + 8))(v65, v56);
  return v38;
}

uint64_t sub_134C8@<X0>(uint64_t a1@<X8>)
{
  v41 = sub_6BFCC();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_6C3CC();
  v5 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6C3FC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  result = sub_6C42C();
  v15 = result;
  v46 = *(result + 16);
  if (v46)
  {
    v30 = a1;
    v16 = v2;
    v17 = 0;
    v18 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v45 = v8 + 88;
    v44 = enum case for ResponseOutput.VisualOutput.systemSnippet(_:);
    v42 = (v8 + 8);
    v36 = (v8 + 96);
    v33 = (v5 + 8);
    v34 = (v5 + 32);
    v32 = (v16 + 88);
    v31 = enum case for RGPluginModel.archivedView(_:);
    v35 = (v16 + 8);
    v43 = v4;
    v37 = v7;
    v38 = v13;
    while (v17 < *(v15 + 16))
    {
      v20 = *(v8 + 16);
      v20(v13, v18 + *(v8 + 72) * v17, v7);
      v20(v11, v13, v7);
      v21 = (*(v8 + 88))(v11, v7);
      if (v21 == v44)
      {
        v22 = v8;
        v23 = v15;
        (*v36)(v11, v7);
        v24 = v39;
        v25 = v40;
        (*v34)(v39, v11, v40);
        sub_6C3BC();
        (*v33)(v24, v25);
        v26 = v41;
        v27 = (*v32)(v4, v41);
        if (v27 == v31)
        {

          (*v35)(v4, v26);
          v8 = v22;
          a1 = v30;
          v7 = v37;
          (*(v22 + 32))(v30, v38, v37);
          v28 = 0;
          return (*(v8 + 56))(a1, v28, 1, v7);
        }

        (*v35)(v4, v26);
        v19 = *v42;
        v15 = v23;
        v8 = v22;
        v7 = v37;
        v13 = v38;
      }

      else
      {
        v19 = *v42;
        (*v42)(v11, v7);
      }

      ++v17;
      result = (v19)(v13, v7);
      v4 = v43;
      if (v46 == v17)
      {

        v28 = 1;
        a1 = v30;
        return (*(v8 + 56))(a1, v28, 1, v7);
      }
    }

    __break(1u);
  }

  else
  {

    v28 = 1;
    return (*(v8 + 56))(a1, v28, 1, v7);
  }

  return result;
}

uint64_t sub_13950()
{
  v0 = sub_6C3AC();
  v33 = *(v0 - 8);
  v34 = v0;
  __chkstk_darwin(v0);
  v32 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_6C3FC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v32 - v7;
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = sub_5708(&qword_817A8, &qword_703C0);
  v12 = __chkstk_darwin(v11 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v37 = &v32 - v14;
  result = sub_6C42C();
  v16 = result;
  v39 = *(result + 16);
  if (v39)
  {
    v17 = 0;
    v38 = v3 + 88;
    v18 = enum case for ResponseOutput.VisualOutput.pluginSnippet(_:);
    v19 = (v3 + 8);
    while (v17 < *(v16 + 16))
    {
      v20 = *(v3 + 16);
      v20(v10, v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);
      v20(v8, v10, v2);
      if ((*(v3 + 88))(v8, v2) == v18)
      {

        (*(v3 + 8))(v8, v2);
        v23 = v37;
        (*(v3 + 32))(v37, v10, v2);
        v22 = 0;
        goto LABEL_8;
      }

      ++v17;
      v21 = *v19;
      (*v19)(v8, v2);
      result = (v21)(v10, v2);
      if (v39 == v17)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v22 = 1;
    v23 = v37;
LABEL_8:
    (*(v3 + 56))(v23, v22, 1, v2);
    v24 = v36;
    sub_14D04(v23, v36);
    v25 = (*(v3 + 48))(v24, 1, v2);
    v26 = v35;
    if (v25 == 1)
    {
      sub_5E20(v23, &qword_817A8, &qword_703C0);
      sub_5E20(v24, &qword_817A8, &qword_703C0);
      return 0;
    }

    else
    {
      (*(v3 + 16))(v35, v24, v2);
      if ((*(v3 + 88))(v26, v2) == enum case for ResponseOutput.VisualOutput.pluginSnippet(_:))
      {
        (*(v3 + 96))(v26, v2);
        v29 = v32;
        v28 = v33;
        v30 = v34;
        (*(v33 + 32))(v32, v26, v34);
        v27 = sub_6C38C();
        sub_6C39C();
        (*(v28 + 8))(v29, v30);
        sub_5E20(v37, &qword_817A8, &qword_703C0);
        (*(v3 + 8))(v24, v2);
      }

      else
      {
        sub_5E20(v23, &qword_817A8, &qword_703C0);
        v31 = *(v3 + 8);
        v31(v26, v2);
        v27 = 0;
        v31(v24, v2);
      }
    }

    return v27;
  }

  return result;
}

char *sub_13E7C()
{
  v39 = sub_6BFCC();
  v0 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_6C3CC();
  v2 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6C3FC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v46 = &v30 - v10;
  __chkstk_darwin(v9);
  v49 = &v30 - v11;
  result = sub_6C42C();
  v45 = *(result + 2);
  if (v45)
  {
    v48 = v8;
    v13 = 0;
    v42 = v5 + 88;
    v43 = v5 + 16;
    v41 = enum case for ResponseOutput.VisualOutput.systemSnippet(_:);
    v40 = (v5 + 8);
    v34 = (v2 + 32);
    v35 = (v5 + 96);
    v33 = (v2 + 8);
    v32 = (v0 + 88);
    v31 = enum case for RGPluginModel.archivedView(_:);
    v30 = (v0 + 8);
    v47 = (v5 + 32);
    v14 = _swiftEmptyArrayStorage;
    v15 = v46;
    v44 = result;
    while (1)
    {
      if (v13 >= *(result + 2))
      {
        __break(1u);
        return result;
      }

      v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v17 = *(v5 + 72);
      v18 = *(v5 + 16);
      v19 = v49;
      v18(v49, &result[v16 + v17 * v13], v4);
      v18(v15, v19, v4);
      v20 = (*(v5 + 88))(v15, v4);
      if (v20 != v41)
      {
        break;
      }

      (*v35)(v15, v4);
      v22 = v36;
      v21 = v37;
      (*v34)(v36, v46, v37);
      v23 = v38;
      sub_6C3BC();
      (*v33)(v22, v21);
      v24 = v39;
      LODWORD(v22) = (*v32)(v23, v39);
      (*v30)(v23, v24);
      v25 = v22 == v31;
      v15 = v46;
      if (!v25)
      {
        goto LABEL_10;
      }

      (*v40)(v49, v4);
LABEL_4:
      ++v13;
      result = v44;
      if (v45 == v13)
      {
        goto LABEL_16;
      }
    }

    (*v40)(v15, v4);
LABEL_10:
    v26 = *v47;
    (*v47)(v48, v49, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_27D3C(0, v14[2] + 1, 1);
      v15 = v46;
      v14 = v50;
    }

    v29 = v14[2];
    v28 = v14[3];
    if (v29 >= v28 >> 1)
    {
      sub_27D3C((v28 > 1), v29 + 1, 1);
      v15 = v46;
      v14 = v50;
    }

    v14[2] = v29 + 1;
    v26(v14 + v16 + v29 * v17, v48, v4);
    goto LABEL_4;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_16:

  return v14;
}

uint64_t sub_14344@<X0>(uint64_t a1@<X8>)
{
  v55 = sub_6C3CC();
  v2 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6BFCC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v53 = &v42 - v10;
  __chkstk_darwin(v9);
  v52 = &v42 - v11;
  v12 = sub_6C3FC();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v56 = &v42 - v17;
  result = sub_6C42C();
  v62 = *(result + 16);
  if (v62)
  {
    v43 = a1;
    v19 = 0;
    v61 = result + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v60 = v13 + 16;
    v59 = v13 + 88;
    v58 = enum case for ResponseOutput.VisualOutput.systemSnippet(_:);
    v57 = (v13 + 8);
    v49 = (v2 + 32);
    v50 = (v13 + 96);
    v47 = (v5 + 32);
    v48 = (v2 + 8);
    v46 = (v5 + 88);
    v45 = enum case for RGPluginModel.actionConfirmationModel(_:);
    v42 = v5;
    v44 = (v5 + 8);
    v20 = result;
    v21 = v56;
    v51 = result;
    while (v19 < *(v20 + 16))
    {
      v23 = *(v13 + 16);
      v23(v21, v61 + *(v13 + 72) * v19, v12);
      v23(v16, v21, v12);
      v24 = (*(v13 + 88))(v16, v12);
      if (v24 == v58)
      {
        v25 = v13;
        (*v50)(v16, v12);
        v26 = v54;
        v27 = v16;
        v28 = v16;
        v29 = v21;
        v30 = v4;
        v31 = v8;
        v32 = v55;
        (*v49)(v54, v28, v55);
        v33 = v53;
        sub_6C3BC();
        v34 = v32;
        v8 = v31;
        v4 = v30;
        (*v48)(v26, v34);
        (*v57)(v29, v12);
        v35 = *v47;
        v36 = v52;
        (*v47)(v52, v33, v4);
        v35(v8, v36, v4);
        v37 = (*v46)(v8, v4);
        if (v37 == v45)
        {

          (*(v42 + 96))(v8, v4);
          v39 = sub_6C8EC();
          v40 = *(v39 - 8);
          v41 = v43;
          (*(v40 + 32))(v43, v8, v39);
          return (*(v40 + 56))(v41, 0, 1, v39);
        }

        result = (*v44)(v8, v4);
        v13 = v25;
        v20 = v51;
        v21 = v56;
        v16 = v27;
      }

      else
      {
        v22 = *v57;
        (*v57)(v21, v12);
        result = (v22)(v16, v12);
      }

      if (v62 == ++v19)
      {

        a1 = v43;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_11:
    v38 = sub_6C8EC();
    return (*(*(v38 - 8) + 56))(a1, 1, 1, v38);
  }

  return result;
}

uint64_t sub_148E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_6C3FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_6C3EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, v2, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for ResponseOutput.VisualOutput.inAppResponse(_:))
  {
    (*(v5 + 96))(v7, v4);
    (*(v9 + 32))(v11, v7, v8);
    v12 = sub_6C9EC();
    __chkstk_darwin(v12);
    *&v15[-16] = v11;
    sub_14C34();
    sub_6BE5C();
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v14 = sub_6C9EC();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_14BB4()
{
  swift_getKeyPath();
  sub_6C3DC();
  return sub_6BE3C();
}

unint64_t sub_14C34()
{
  result = qword_81790;
  if (!qword_81790)
  {
    sub_6C9EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81790);
  }

  return result;
}

uint64_t sub_14C8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6C9DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_14CB8()
{
  result = qword_817A0;
  if (!qword_817A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_817A0);
  }

  return result;
}

uint64_t sub_14D04(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_817A8, &qword_703C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_14D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 280) = a6;
  *(v8 + 288) = v7;
  *(v8 + 728) = a7;
  *(v8 + 264) = a4;
  *(v8 + 272) = a5;
  *(v8 + 248) = a2;
  *(v8 + 256) = a3;
  *(v8 + 240) = a1;
  sub_5708(&qword_817C0, &qword_703E8);
  *(v8 + 296) = swift_task_alloc();
  sub_5708(&qword_817C8, &qword_703F0);
  *(v8 + 304) = swift_task_alloc();
  v9 = sub_6C41C();
  *(v8 + 312) = v9;
  *(v8 + 320) = *(v9 - 8);
  *(v8 + 328) = swift_task_alloc();
  sub_5708(&qword_817A8, &qword_703C0);
  *(v8 + 336) = swift_task_alloc();
  sub_5708(&qword_817D0, &qword_703F8);
  *(v8 + 344) = swift_task_alloc();
  v10 = sub_6C3FC();
  *(v8 + 352) = v10;
  *(v8 + 360) = *(v10 - 8);
  *(v8 + 368) = swift_task_alloc();
  *(v8 + 376) = swift_task_alloc();
  *(v8 + 384) = sub_5708(&qword_817D8, &qword_70400);
  *(v8 + 392) = swift_task_alloc();
  sub_5708(&qword_81798, &qword_703B8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  v11 = sub_6C4AC();
  *(v8 + 440) = v11;
  *(v8 + 448) = *(v11 - 8);
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  v12 = sub_6B74C();
  *(v8 + 472) = v12;
  *(v8 + 480) = *(v12 - 8);
  *(v8 + 488) = swift_task_alloc();
  sub_5708(&qword_817E0, &qword_71300);
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  sub_5708(&qword_817E8, &qword_70408);
  *(v8 + 512) = swift_task_alloc();
  sub_5708(&qword_81520, &qword_708D0);
  *(v8 + 520) = swift_task_alloc();
  v13 = sub_6CD2C();
  *(v8 + 528) = v13;
  *(v8 + 536) = *(v13 - 8);
  *(v8 + 544) = swift_task_alloc();
  v14 = sub_6B38C();
  *(v8 + 552) = v14;
  *(v8 + 560) = *(v14 - 8);
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  v15 = sub_6B31C();
  *(v8 + 584) = v15;
  *(v8 + 592) = *(v15 - 8);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v16 = sub_6C54C();
  *(v8 + 616) = v16;
  *(v8 + 624) = *(v16 - 8);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();

  return _swift_task_switch(sub_15354, 0, 0);
}

uint64_t sub_15354(uint64_t a1)
{
  v2 = *(v1 + 656);
  v3 = *(v1 + 648);
  v4 = *(v1 + 624);
  v5 = *(v1 + 616);
  v6 = *(v1 + 608);
  sub_4B4CC(v2);
  sub_2CA00(v6);
  v160 = *(v4 + 16);
  v160(v3, v2, v5);
  v154 = *(v4 + 88);
  v7 = v154(v3, v5);
  v8 = *(v1 + 648);
  v9 = *(v1 + 624);
  v10 = *(v1 + 616);
  v11 = *(v1 + 568);
  v12 = *(v1 + 560);
  v13 = *(v1 + 552);
  v152 = enum case for StatementOutcome.toolDisambiguation(_:);
  v156 = enum case for StatementOutcome.parameterDisambiguation(_:);
  v14 = v7 == enum case for StatementOutcome.toolDisambiguation(_:) || v7 == enum case for StatementOutcome.parameterDisambiguation(_:);
  v158 = enum case for StatementOutcome.valueDisambiguation(_:);
  if (v14 || v7 == enum case for StatementOutcome.valueDisambiguation(_:))
  {
    v16 = *(v9 + 8);
    v17 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v8, v10);
    (*(v12 + 104))(v11, enum case for ResponseType.disambiguation(_:), v13);
  }

  else
  {
    (*(v12 + 104))(v11, enum case for ResponseType.standard(_:), v13);
    v16 = *(v9 + 8);
    v17 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v8, v10);
  }

  *(v1 + 664) = v16;
  v18 = *(v1 + 656);
  v19 = *(v1 + 640);
  v20 = *(v1 + 616);
  v21 = *(v1 + 504);
  v22 = *(v1 + 448);
  v149 = *(v1 + 544);
  v151 = *(v1 + 440);
  v23 = *(v1 + 248);
  (*(*(v1 + 560) + 32))(*(v1 + 576), *(v1 + 568), *(v1 + 552));
  v160(v19, v18, v20);
  v24 = v154(v19, v20);
  v32 = v24 == v152 || v24 == enum case for StatementOutcome.actionConfirmation(_:) || v24 == enum case for StatementOutcome.parameterNeedsValue(_:) || v24 == enum case for StatementOutcome.parameterConfirmation(_:) || v24 == v156 || v24 == enum case for StatementOutcome.parameterNotAllowed(_:) || v24 == enum case for StatementOutcome.parameterCandidatesNotFound(_:) || v24 == v158;
  v155 = v32;
  *(v1 + 672) = v17;
  v16(v19, v20);
  sub_4458(v23, v149);
  v33 = sub_4B728();
  v153 = v34;
  sub_6C4CC();
  v157 = *(v22 + 48);
  v35 = v157(v21, 1, v151);
  v36 = *(v1 + 512);
  if (v35 == 1)
  {
    sub_5E20(*(v1 + 504), &qword_817E0, &qword_71300);
    v37 = sub_6C8EC();
    (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  }

  else
  {
    v39 = *(v1 + 440);
    v38 = *(v1 + 448);
    v40 = v33;
    v41 = *(v1 + 504);
    sub_14344(*(v1 + 512));
    v42 = v41;
    v33 = v40;
    (*(v38 + 8))(v42, v39);
  }

  v43 = *(v1 + 656);
  v44 = *(v1 + 592);
  v147 = *(v1 + 584);
  v148 = *(v1 + 608);
  v45 = *(v1 + 544);
  v46 = *(v1 + 520);
  v47 = *(v1 + 512);
  v150 = *(v1 + 576);
  v48 = *(v1 + 280);
  v49 = *(v1 + 272);
  v145 = *(v1 + 600);
  v146 = *(v1 + 248);
  sub_16FA0(*(v1 + 256), *(v1 + 264), v33, v153, v43, v47, v46);

  sub_5E20(v47, &qword_817E8, &qword_70408);
  sub_177A0(v45, v43, v49, v48);
  (*(v44 + 16))(v145, v148, v147);
  v50 = swift_task_alloc();
  *(v50 + 16) = v150;
  *(v50 + 24) = v146;
  *(v50 + 32) = v155;
  *(v50 + 40) = v45;
  *(v50 + 48) = v46;
  *(v50 + 56) = v43;
  sub_6B67C();

  if (sub_5750())
  {
    sub_6B6CC();
  }

  v51 = *(v1 + 496);
  v52 = *(v1 + 440);
  sub_6C4CC();
  if (v157(v51, 1, v52) == 1)
  {
    sub_5E20(*(v1 + 496), &qword_817E0, &qword_71300);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v53 = sub_6D04C();
    sub_5CE4(v53, qword_839A0);
    v54 = sub_6D03C();
    v55 = sub_6D46C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "IFFlow received SystemResponse with no output, defaulting to minimally empty output", v56, 2u);
    }

    v58 = *(v1 + 288);
    v57 = *(v1 + 296);
    v59 = *(v1 + 248);

    v60 = v58[3];
    v61 = v58[4];
    sub_99FC(v58, v60);
    v62 = sub_6C4EC();
    v63 = *(v62 - 8);
    (*(v63 + 16))(v57, v59, v62);
    (*(v63 + 56))(v57, 0, 1, v62);
    v64 = swift_task_alloc();
    *(v1 + 720) = v64;
    *v64 = v1;
    v64[1] = sub_16BE0;
    v65 = *(v1 + 488);
    v66 = *(v1 + 296);
    v67 = *(v1 + 272);
    v68 = *(v1 + 280);
    v69 = *(v1 + 240);
    v70 = _swiftEmptyArrayStorage;
    goto LABEL_77;
  }

  v71 = *(v1 + 464);
  v73 = *(v1 + 424);
  v72 = *(v1 + 432);
  v75 = *(v1 + 384);
  v74 = *(v1 + 392);
  (*(*(v1 + 448) + 32))(v71, *(v1 + 496), *(v1 + 440));
  v76 = sub_4B728();
  sub_17CD4(v71, v76, v77, v1 + 16);

  sub_6C36C();
  sub_6C37C();
  v78 = *(v75 + 48);
  sub_201AC(v72, v74, &qword_81798, &qword_703B8);
  sub_201AC(v73, v74 + v78, &qword_81798, &qword_703B8);
  v79 = sub_6C45C();
  v80 = *(v79 - 8);
  v81 = v80[6];
  if (v81(v74, 1, v79) == 1)
  {
    goto LABEL_58;
  }

  v82 = (v1 + 416);
  v83 = *(v1 + 416);
  sub_C14C(*(v1 + 392), v83, &qword_81798, &qword_703B8);
  v159 = v80[11];
  v84 = v159(v83, v79);
  v85 = v84;
  if (v84 == enum case for ResponseOutput.DialogType.generated(_:))
  {
    v86 = *v82;
    v87 = v80[1];
    v87(v86, v79);
    if (v81(v74 + v78, 1, v79) == 1)
    {
      goto LABEL_58;
    }

    v88 = *(v1 + 408);
    sub_C14C(v74 + v78, v88, &qword_81798, &qword_703B8);
    v89 = v159(v88, v79);
    v87(v88, v79);
    if (v89 != v85)
    {
      goto LABEL_58;
    }

LABEL_53:
    v91 = *(v1 + 392);
    sub_5E20(v74 + v78, &qword_81798, &qword_703B8);
    sub_5E20(v91, &qword_81798, &qword_703B8);
    v92 = sub_6C42C();
    if (*(v92 + 16))
    {
      v93 = *(v1 + 368);
      v94 = *(v1 + 376);
      v95 = *(v1 + 352);
      v96 = *(v1 + 360);
      v97 = *(v1 + 344);
      (*(v96 + 16))(v93, v92 + ((*(v96 + 80) + 32) & ~*(v96 + 80)), v95);

      (*(v96 + 32))(v94, v93, v95);
      sub_148E4(v97);
      sub_6B6AC();
      (*(v96 + 8))(v94, v95);
    }

    else
    {
    }

    goto LABEL_59;
  }

  if (v84 != enum case for ResponseOutput.DialogType.suppressed(_:))
  {
    goto LABEL_57;
  }

  if (v81(v74 + v78, 1, v79) != 1)
  {
    v90 = *(v1 + 400);
    sub_C14C(v74 + v78, v90, &qword_81798, &qword_703B8);
    if (v159(v90, v79) == v85)
    {
      goto LABEL_53;
    }

    v82 = (v1 + 400);
LABEL_57:
    (v80[1])(*v82, v79);
  }

LABEL_58:
  sub_5E20(*(v1 + 392), &qword_817D8, &qword_70400);
LABEL_59:
  sub_C14C(v1 + 16, v1 + 64, &qword_817F0, &qword_70410);
  if (*(v1 + 104))
  {
    sub_5E20(v1 + 64, &qword_81800, &qword_70418);
  }

  else
  {
    sub_5E20(v1 + 64, &qword_817F0, &qword_70410);
  }

  v98 = *(v1 + 352);
  v99 = *(v1 + 360);
  v100 = *(v1 + 336);
  sub_6B70C();
  sub_134C8(v100);
  v101 = (*(v99 + 48))(v100, 1, v98);
  sub_5E20(v100, &qword_817A8, &qword_703C0);
  if (v101 != 1)
  {
    v103 = *(v1 + 320);
    v102 = *(v1 + 328);
    v104 = *(v1 + 312);
    sub_6C49C();
    sub_6C40C();
    (*(v103 + 8))(v102, v104);
  }

  v105 = *(v1 + 728);
  sub_6B73C();
  if (v105 == 1)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v106 = sub_6D04C();
    sub_5CE4(v106, qword_839A0);
    v107 = sub_6D03C();
    v108 = sub_6D45C();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      *v109 = 134217984;
      *(v109 + 4) = 25000;
      _os_log_impl(&dword_0, v107, v108, "Setting minimumAutoDismissalTimeInMs to %ld", v109, 0xCu);
    }

    v110 = *(v1 + 304);

    sub_6B59C();
    v111 = sub_6B58C();
    (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
    sub_6B6FC();
  }

  v112 = *(v1 + 656);
  v113 = *(v1 + 632);
  v114 = *(v1 + 616);
  v116 = *(v1 + 456);
  v115 = *(v1 + 464);
  v117 = *(v1 + 440);
  v118 = *(v1 + 448);
  v119 = *(v1 + 288);
  sub_1FD1C();
  (*(v118 + 16))(v116, v115, v117);
  v160(v113, v112, v114);
  v120 = sub_12CF0(v116, v113, *(v119 + 128));
  *(v1 + 680) = v120;
  sub_C14C(v1 + 16, v1 + 112, &qword_817F0, &qword_70410);
  if (!*(v1 + 152))
  {
    sub_5E20(v1 + 112, &qword_817F0, &qword_70410);
    *(v1 + 200) = 0u;
    *(v1 + 216) = 0u;
    *(v1 + 232) = 0;
    goto LABEL_76;
  }

  *(v1 + 232) = *(v1 + 144);
  v121 = *(v1 + 112);
  *(v1 + 216) = *(v1 + 128);
  *(v1 + 200) = v121;
  if (!*(v1 + 224))
  {
LABEL_76:
    v136 = *(v1 + 288);
    v137 = *(v1 + 296);
    v138 = *(v1 + 248);
    sub_5E20(v1 + 200, &qword_81800, &qword_70418);
    v60 = v136[3];
    v61 = v136[4];
    sub_99FC(v136, v60);
    sub_5708(&qword_81548, &qword_70088);
    v139 = swift_allocObject();
    *(v1 + 704) = v139;
    *(v139 + 16) = xmmword_6FFF0;
    *(v139 + 32) = v120;
    v140 = sub_6C4EC();
    v141 = *(v140 - 8);
    (*(v141 + 16))(v137, v138, v140);
    (*(v141 + 56))(v137, 0, 1, v140);
    v142 = v120;
    v143 = swift_task_alloc();
    *(v1 + 712) = v143;
    *v143 = v1;
    v143[1] = sub_167C0;
    v65 = *(v1 + 488);
    v66 = *(v1 + 296);
    v67 = *(v1 + 272);
    v68 = *(v1 + 280);
    v69 = *(v1 + 240);
    v70 = v139;
LABEL_77:

    return dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:systemResponse:utterance:)(v69, v70, v65, v66, v67, v68, v60, v61);
  }

  v122 = *(v1 + 288);
  v123 = *(v1 + 296);
  v124 = *(v1 + 248);
  sub_1FD68((v1 + 200), v1 + 160);
  v125 = v122[3];
  sub_99FC(v122, v125);
  sub_5708(&qword_81548, &qword_70088);
  v126 = swift_allocObject();
  *(v1 + 688) = v126;
  *(v126 + 16) = xmmword_6FFF0;
  *(v126 + 32) = v120;
  v127 = sub_6C4EC();
  v128 = *(v127 - 8);
  (*(v128 + 16))(v123, v124, v127);
  (*(v128 + 56))(v123, 0, 1, v127);
  v129 = v120;
  v130 = swift_task_alloc();
  *(v1 + 696) = v130;
  *v130 = v1;
  v130[1] = sub_16398;
  v131 = *(v1 + 488);
  v132 = *(v1 + 296);
  v133 = *(v1 + 272);
  v134 = *(v1 + 280);
  v135 = *(v1 + 240);

  return dispatch thunk of IntelligenceFlowResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:systemResponse:utterance:)(v135, v1 + 160, v126, v131, v132, v133, v134, v125);
}

uint64_t sub_16398()
{
  v1 = *(*v0 + 296);

  sub_5E20(v1, &qword_817C0, &qword_703E8);

  return _swift_task_switch(sub_164DC, 0, 0);
}

uint64_t sub_164DC()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v5 = *(v0 + 480);
  v4 = *(v0 + 488);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 440);
  v9 = *(v0 + 448);

  sub_9964((v0 + 160));
  sub_5E20(v0 + 16, &qword_817F0, &qword_70410);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v20 = *(v0 + 664);
  v10 = *(v0 + 656);
  v11 = *(v0 + 616);
  v12 = *(v0 + 576);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  sub_5E20(*(v0 + 520), &qword_81520, &qword_708D0);
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
  v20(v10, v11);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_167C0()
{
  v1 = *(*v0 + 296);

  sub_5E20(v1, &qword_817C0, &qword_703E8);

  return _swift_task_switch(sub_16904, 0, 0);
}

uint64_t sub_16904()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v5 = *(v0 + 480);
  v4 = *(v0 + 488);
  v7 = *(v0 + 464);
  v6 = *(v0 + 472);
  v8 = *(v0 + 440);
  v9 = *(v0 + 448);

  sub_5E20(v0 + 16, &qword_817F0, &qword_70410);
  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v20 = *(v0 + 664);
  v10 = *(v0 + 656);
  v11 = *(v0 + 616);
  v12 = *(v0 + 576);
  v13 = *(v0 + 560);
  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  sub_5E20(*(v0 + 520), &qword_81520, &qword_708D0);
  (*(v16 + 8))(v15, v17);
  (*(v13 + 8))(v12, v14);
  v20(v10, v11);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_16BE0()
{
  v1 = *(*v0 + 296);

  sub_5E20(v1, &qword_817C0, &qword_703E8);

  return _swift_task_switch(sub_16D08, 0, 0);
}

uint64_t sub_16D08()
{
  v1 = v0[76];
  v2 = v0[74];
  v3 = v0[73];
  (*(v0[60] + 8))(v0[61], v0[59]);
  (*(v2 + 8))(v1, v3);
  v14 = v0[83];
  v4 = v0[82];
  v5 = v0[77];
  v6 = v0[72];
  v7 = v0[70];
  v8 = v0[69];
  v9 = v0[68];
  v10 = v0[67];
  v11 = v0[66];
  sub_5E20(v0[65], &qword_81520, &qword_708D0);
  (*(v10 + 8))(v9, v11);
  (*(v7 + 8))(v6, v8);
  v14(v4, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_16FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v59 = a3;
  v60 = a4;
  v58 = a2;
  v57 = a1;
  v63 = a7;
  v67 = sub_6BA3C();
  v69 = *(v67 - 8);
  v9 = __chkstk_darwin(v67);
  v70 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v56 - v11;
  v12 = sub_6C68C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6C8BC();
  v68 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_6C54C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 16);
  v61 = a5;
  v23(v22, a5, v19);
  v24 = (*(v20 + 88))(v22, v19);
  if (v24 == enum case for StatementOutcome.actionConfirmation(_:))
  {
    goto LABEL_2;
  }

  if (v24 == enum case for StatementOutcome.toolDisambiguation(_:))
  {
    (*(v20 + 96))(v22, v19);
    (*(v13 + 32))(v15, v22, v12);
    v27 = *(sub_6C67C() + 16);

    v25 = sub_1AD80(v27);
    (*(v13 + 8))(v15, v12);
  }

  else if (v24 == enum case for StatementOutcome.parameterNeedsValue(_:))
  {
    v25 = sub_1B0B0();
    (*(v20 + 8))(v22, v19);
  }

  else
  {
    if (v24 == enum case for StatementOutcome.parameterConfirmation(_:))
    {
LABEL_2:
      (*(v20 + 8))(v22, v19);
      v25 = sub_1B8C8(a6);
      goto LABEL_7;
    }

    if (v24 != enum case for StatementOutcome.parameterDisambiguation(_:))
    {
      (*(v20 + 8))(v22, v19);
      v25 = _swiftEmptyArrayStorage;
      v28 = v67;
      v29 = v70;
      v30 = v65;
      goto LABEL_8;
    }

    (*(v20 + 96))(v22, v19);
    v54 = v68;
    (*(v68 + 32))(v18, v22, v16);
    v55 = *(sub_6C8AC() + 16);

    v25 = sub_1AD80(v55);
    (*(v54 + 8))(v18, v16);
  }

LABEL_7:
  v28 = v67;
  v29 = v70;
  v30 = v65;
  if (v25)
  {
LABEL_8:
    v62 = v25;
    v31 = v25[2];
    if (v31)
    {
      v68 = *(v69 + 16);
      v69 += 16;
      v32 = v62 + ((*(v69 + 64) + 32) & ~*(v69 + 64));
      v66 = *(v69 + 56);
      v33 = (v69 + 16);
      v34 = (v69 - 8);
      *&v26 = 136315138;
      v64 = v26;
      (v68)(v30, v32, v28);
      while (1)
      {
        if (qword_812A0 != -1)
        {
          swift_once();
        }

        v35 = sub_6D04C();
        sub_5CE4(v35, qword_839A0);
        (*v33)(v29, v30, v28);
        v36 = sub_6D03C();
        v37 = sub_6D45C();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v72 = v39;
          *v38 = v64;
          sub_6BAAC();
          v71[3] = v28;
          v71[4] = sub_20274(&qword_81860, &type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
          v40 = sub_97B0(v71);
          (v68)(v40, v70, v28);
          v41 = sub_6BA9C();
          v43 = v42;
          (*v34)(v70, v67);
          sub_9964(v71);
          v44 = sub_1076C(v41, v43, &v72);
          v28 = v67;

          *(v38 + 4) = v44;
          _os_log_impl(&dword_0, v36, v37, "Posting SDA: %s", v38, 0xCu);
          sub_9964(v39);
          v29 = v70;

          v30 = v65;
        }

        else
        {

          (*v34)(v29, v28);
        }

        v32 += v66;
        if (!--v31)
        {
          break;
        }

        (v68)(v30, v32, v28);
      }
    }

    v45 = v63;
    sub_6B4FC();
    sub_6B4EC();
    sub_1E214(v57, v58, v59, v60);
    sub_6B4CC();
    v46 = 0;
    goto LABEL_23;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v47 = sub_6D04C();
  sub_5CE4(v47, qword_839A0);
  v48 = sub_6D03C();
  v49 = sub_6D46C();
  v50 = os_log_type_enabled(v48, v49);
  v45 = v63;
  if (v50)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_0, v48, v49, "Failed to create any systemDialogActs", v51, 2u);
  }

  v46 = 1;
LABEL_23:
  v52 = sub_6B50C();
  return (*(*(v52 - 8) + 56))(v45, v46, 1, v52);
}

uint64_t sub_177A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_6CD2C();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = &v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    (*(v7 + 104))(v10, enum case for RequestSummary.ExecutionSource.searchTool(_:), v6);
    v11 = sub_6CD1C();
    result = (*(v7 + 8))(v10, v6);
    if (v11)
    {
      v22 = &type metadata for FeatureEnablementProvider.Key;
      v23 = sub_1FF74();
      v12 = sub_6B8AC();
      result = sub_9964(v21);
      if (v12)
      {
        result = sub_1A85C(a2);
        if (result)
        {
          if (qword_812A0 != -1)
          {
            swift_once();
          }

          v13 = sub_6D04C();
          sub_5CE4(v13, qword_839A0);
          v14 = sub_6D03C();
          v15 = sub_6D45C();
          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            *v16 = 0;
            _os_log_impl(&dword_0, v14, v15, "IFFlow SearchTool invoked + ShowASR FF Enabled + PCS result(s). Sending Reveal ASR AceCommand", v16, 2u);
          }

          v17 = [objc_allocWithZone(SAUIRevealRecognizedSpeech) init];
          sub_6CDBC();
          v18 = sub_6D2BC();

          [v17 setRefId:v18];

          v19 = sub_6D2BC();
          [v17 setOverriddenSpeech:v19];

          sub_6B28C();
          sub_99FC(v21, v22);
          sub_6B65C();

          return sub_9964(v21);
        }
      }
    }
  }

  return result;
}

uint64_t sub_17A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v23[0] = a6;
  v23[1] = a7;
  v10 = sub_5708(&qword_81520, &qword_708D0);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v13 = sub_6CD2C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_6B38C();
  __chkstk_darwin(v17);
  (*(v19 + 16))(v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_6B69C();
  sub_4B728();
  sub_6B6BC();
  sub_6B71C();
  sub_6B72C();
  (*(v14 + 16))(v16, a5, v13);
  sub_6B6DC();
  sub_C14C(v23[0], v12, &qword_81520, &qword_708D0);
  sub_6B6EC();
  v20 = sub_1ED90();
  sub_1FA68(a3, v20, v21);

  return sub_6B68C();
}

uint64_t sub_17CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v205 = a2;
  v206 = a3;
  v186 = sub_6C3AC();
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = v178 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_5708(&qword_817A8, &qword_703C0);
  v9 = __chkstk_darwin(v8 - 8);
  v195 = v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v191 = v178 - v11;
  v12 = sub_6C3CC();
  v194 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v187 = v178 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v181 = v178 - v16;
  __chkstk_darwin(v15);
  v218 = v178 - v17;
  v208 = sub_6C3FC();
  v199 = *(v208 - 8);
  v18 = __chkstk_darwin(v208);
  v190 = v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v183 = v178 - v21;
  v22 = __chkstk_darwin(v20);
  v189 = v178 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = v178 - v25;
  v27 = __chkstk_darwin(v24);
  v207 = v178 - v28;
  __chkstk_darwin(v27);
  v219 = v178 - v29;
  v204 = sub_6AE9C();
  v196 = *(v204 - 8);
  __chkstk_darwin(v204);
  v203 = v178 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_6C41C();
  v222 = *(v31 - 8);
  v223 = v31;
  __chkstk_darwin(v31);
  v221 = v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_6C53C();
  v216 = *(v220 - 8);
  __chkstk_darwin(v220);
  v215 = v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_5708(&qword_81808, &qword_70420);
  v35 = __chkstk_darwin(v34 - 8);
  v193 = v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v192 = v178 - v38;
  __chkstk_darwin(v37);
  v40 = v178 - v39;
  v209 = sub_6BFCC();
  v198 = *(v209 - 8);
  v41 = __chkstk_darwin(v209);
  v180 = v178 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v182 = v178 - v44;
  v45 = __chkstk_darwin(v43);
  v217 = v178 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = v178 - v48;
  __chkstk_darwin(v47);
  v51 = v178 - v50;
  sub_99FC((v4 + 88), *(v4 + 112));
  result = sub_6B2BC();
  if (result)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
    *(a4 + 40) = _swiftEmptyArrayStorage;
    return result;
  }

  v188 = v26;
  v179 = a4;
  v224 = _swiftEmptyArrayStorage;
  v197 = a1;
  v53 = sub_13950();
  if (v56)
  {
    v57 = v53;
    v58 = v54;
    v59 = v56;
    v214 = v55;
    sub_6ACFC();
    swift_allocObject();
    sub_6ACEC();
    sub_20274(&qword_81818, &type metadata accessor for RGPluginModel, &protocol conformance descriptor for RGPluginModel);
    v60 = v209;
    v212 = v57;
    v213 = v58;
    sub_6ACDC();
    v61 = v199;

    v62 = v198;
    (*(v198 + 56))(v40, 0, 1, v60);
    (*(v62 + 32))(v51, v40, v60);
    (*(v62 + 16))(v49, v51, v60);
    v63 = (*(v62 + 88))(v49, v60);
    if (v63 == enum case for RGPluginModel.siriSDSView(_:))
    {
      (*(v62 + 96))(v49, v60);
      v64 = v215;
      v65 = v216;
      v66 = v220;
      (*(v216 + 32))(v215, v49, v220);
      v67 = sub_1A384(v64, v205, v206);
      sub_1FD80(v212, v213, v214, v59);
      (*(v65 + 8))(v64, v66);
      (*(v62 + 8))(v51, v60);
      v211 = v67;
      v224 = v67;
    }

    else
    {
      v68 = *(v62 + 8);
      v68(v51, v60);
      v68(v49, v60);
      v220 = v59;
      v69 = v221;
      sub_6C49C();
      sub_6C40C();
      (*(v222 + 8))(v69, v223);
      sub_6D2CC();
      v70 = [objc_allocWithZone(SAUIPluginSnippet) init];
      v71 = v203;
      sub_6AE8C();
      sub_6AE6C();
      (*(v196 + 8))(v71, v204);
      v72 = sub_6D2BC();

      [v70 setAceId:v72];

      v73 = v70;
      v74 = sub_6D2BC();
      [v73 setViewId:v74];

      v75 = v214;
      v76 = sub_6D2BC();
      [v73 setBundleName:v76];

      v77 = sub_6D2BC();

      [v73 setItemType:v77];

      v79 = v212;
      v78 = v213;
      isa = sub_6AE0C().super.isa;
      [v73 setModelData:isa];

      v81 = sub_6D2BC();
      [v73 setResponseViewId:v81];

      sub_6D36C();
      if (*(&dword_10 + (v224 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v224 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_6D3AC();
      }

      sub_6D3CC();
      sub_1FD80(v79, v78, v75, v220);

      v211 = v224;
      v61 = v199;
    }
  }

  else
  {
    v211 = _swiftEmptyArrayStorage;
    v61 = v199;
    v60 = v209;
  }

  v82 = sub_13E7C();
  v83 = *(v82 + 2);
  v202 = v12;
  v84 = v207;
  if (v83)
  {
    v85 = v61 + 16;
    v223 = *(v61 + 16);
    v86 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v178[1] = v82;
    v87 = &v82[v86];
    v88 = *(v61 + 72);
    v221 = (v61 + 88);
    v222 = v88;
    LODWORD(v220) = enum case for ResponseOutput.VisualOutput.systemSnippet(_:);
    v89 = (v61 + 8);
    v215 = (v85 + 80);
    v213 = (v194 + 8);
    v214 = (v194 + 32);
    v212 = (v198 + 8);
    v201 = SAAceViewUIItemTypeItemTypeResultValue;
    v200 = (v196 + 8);
    v90 = v208;
    v91 = v219;
    v216 = v85;
    do
    {
      v93 = v223;
      v223(v91, v87, v90);
      v93(v84, v91, v90);
      v94 = (*v221)(v84, v90);
      if (v94 == v220)
      {
        (*v215)(v84, v90);
        v95 = v218;
        (*v214)(v218, v84, v12);
        v96 = v217;
        sub_6C3BC();
        (*v213)(v95, v12);
        sub_20274(&qword_81810, &type metadata accessor for RGPluginModel, &protocol conformance descriptor for RGPluginModel);
        v97 = sub_6AF1C();
        v99 = v98;
        (*v212)(v96, v60);
        if (v99 >> 60 == 15)
        {
          v91 = v219;
          (*v89)(v219, v90);
        }

        else
        {
          v210 = sub_6BFBC();
          v100 = objc_allocWithZone(SAUIPluginSnippet);
          v211 = v97;
          v101 = v100;
          v102 = v201;
          v103 = [v101 init];
          v104 = v203;
          sub_6AE8C();
          sub_6AE6C();
          (*v200)(v104, v204);
          v105 = sub_6D2BC();

          [v103 setAceId:v105];

          v106 = v103;
          v107 = sub_6D2BC();
          [v106 setViewId:v107];

          v108 = sub_6D2BC();

          [v106 setBundleName:v108];

          [v106 setItemType:v102];
          v109 = v211;
          v110 = sub_6AE0C().super.isa;
          [v106 setModelData:v110];

          v111 = sub_6D2BC();
          [v106 setResponseViewId:v111];

          sub_6D36C();
          if (*(&dword_10 + (v224 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v224 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_6D3AC();
          }

          sub_6D3CC();
          sub_1FCA0(v109, v99);

          v91 = v219;
          v90 = v208;
          (*v89)(v219, v208);
          v211 = v224;
          v12 = v202;
          v60 = v209;
          v84 = v207;
        }
      }

      else
      {
        v92 = *v89;
        (*v89)(v84, v90);
        v92(v91, v90);
      }

      v87 += v222;
      --v83;
    }

    while (v83);

    v61 = v199;
  }

  else
  {

    v90 = v208;
  }

  v112 = v191;
  sub_6C46C();
  v114 = v61 + 48;
  v113 = *(v61 + 48);
  v115 = v113(v112, 1, v90);
  v116 = v188;
  if (v115 == 1)
  {
    sub_5E20(v112, &qword_817A8, &qword_703C0);
    v117 = v179;
    v118 = v195;
  }

  else
  {
    v223 = v113;
    (*(v61 + 32))(v188, v112, v90);
    v119 = *(v61 + 16);
    v120 = v189;
    v119(v189, v116, v90);
    v121 = v61;
    v122 = *(v61 + 88);
    if (v122(v120, v90) == enum case for ResponseOutput.VisualOutput.pluginSnippet(_:))
    {
      (*(v121 + 96))(v120, v90);
      v123 = v185;
      v124 = v184;
      v125 = v186;
      (*(v185 + 32))(v184, v120, v186);
      v222 = sub_6C38C();
      v127 = v126;
      sub_6C39C();
      (*(v123 + 8))(v124, v125);
      v128 = SAAceViewUIItemTypeItemTypeAttributionValue;
      v129 = objc_allocWithZone(SAUIPluginSnippet);
      v130 = v128;
      v131 = [v129 init];
      v132 = v203;
      sub_6AE8C();
      sub_6AE6C();
      (*(v196 + 8))(v132, v204);
      v133 = sub_6D2BC();

      [v131 setAceId:v133];

      v134 = v131;
      v135 = sub_6D2BC();
      [v134 setViewId:v135];

      v136 = v222;
      v137 = sub_6D2BC();
      [v134 setBundleName:v137];

      [v134 setItemType:v130];
      v138 = sub_6AE0C().super.isa;
      [v134 setModelData:v138];

      v139 = sub_6D2BC();
      [v134 setResponseViewId:v139];

      sub_6D36C();
      if (*(&dword_10 + (v224 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v224 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_6D3AC();
      }

      sub_6D3CC();
      sub_1FCB4(v136, v127);

      v61 = v199;
      v90 = v208;
      (*(v199 + 8))(v188, v208);
      v211 = v224;
      v117 = v179;
      v118 = v195;
      v113 = v223;
    }

    else
    {
      v222 = v114;
      v140 = *(v121 + 8);
      v140(v120, v90);
      v141 = v183;
      v119(v183, v116, v90);
      if (v122(v141, v90) == enum case for ResponseOutput.VisualOutput.systemSnippet(_:))
      {
        v221 = v140;
        v61 = v199;
        (*(v199 + 96))(v141, v90);
        v142 = v194;
        v143 = v181;
        v144 = v141;
        v145 = v202;
        (*(v194 + 32))(v181, v144, v202);
        v146 = v180;
        sub_6C3BC();
        (*(v142 + 8))(v143, v145);
        v147 = v198;
        v148 = v182;
        v149 = v209;
        (*(v198 + 32))(v182, v146, v209);
        sub_20274(&qword_81810, &type metadata accessor for RGPluginModel, &protocol conformance descriptor for RGPluginModel);
        v150 = sub_6AF1C();
        if (v151 >> 60 != 15)
        {
          v152 = v150;
          v153 = v151;
          v220 = sub_6BFBC();
          v154 = SAAceViewUIItemTypeItemTypeAttributionValue;
          v155 = objc_allocWithZone(SAUIPluginSnippet);
          v156 = v154;
          v157 = [v155 init];
          v158 = v203;
          sub_6AE8C();
          sub_6AE6C();
          (*(v196 + 8))(v158, v204);
          v159 = sub_6D2BC();

          [v157 setAceId:v159];

          v160 = v157;
          v161 = sub_6D2BC();
          [v160 setViewId:v161];

          v162 = sub_6D2BC();

          [v160 setBundleName:v162];

          [v160 setItemType:v156];
          v163 = sub_6AE0C().super.isa;
          [v160 setModelData:v163];

          v164 = sub_6D2BC();
          [v160 setResponseViewId:v164];

          sub_6D36C();
          v165 = v188;
          v166 = v152;
          v113 = v223;
          if (*(&dword_10 + (v224 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v224 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_6D3AC();
          }

          sub_6D3CC();
          sub_1FCA0(v166, v153);

          (*(v198 + 8))(v182, v209);
          v90 = v208;
          (v221)(v165, v208);
          v211 = v224;
          v117 = v179;
          v118 = v195;
          v61 = v199;
          goto LABEL_37;
        }

        (*(v147 + 8))(v148, v149);
        (v221)(v188, v90);
        v117 = v179;
        v118 = v195;
      }

      else
      {
        v140(v141, v90);
        v140(v116, v90);
        v117 = v179;
        v118 = v195;
        v61 = v199;
      }

      v113 = v223;
    }
  }

LABEL_37:
  sub_134C8(v118);
  if (v113(v118, 1, v90) == 1)
  {
    sub_5E20(v118, &qword_817A8, &qword_703C0);
    v167 = v198;
    v168 = v192;
    v169 = v209;
    (*(v198 + 56))(v192, 1, 1, v209);
    v170 = v193;
  }

  else
  {
    v171 = v190;
    (*(v61 + 16))(v190, v118, v90);
    v172 = (*(v61 + 88))(v171, v90);
    v168 = v192;
    if (v172 == enum case for ResponseOutput.VisualOutput.systemSnippet(_:))
    {
      (*(v61 + 96))(v171, v90);
      v173 = v194;
      v174 = v187;
      v175 = v202;
      (*(v194 + 32))(v187, v171, v202);
      sub_6C3BC();
      (*(v173 + 8))(v174, v175);
      v167 = v198;
      (*(v198 + 56))(v168, 0, 1, v209);
      v176 = *(v61 + 8);
    }

    else
    {
      v176 = *(v61 + 8);
      v176(v171, v90);
      v167 = v198;
      (*(v198 + 56))(v168, 1, 1, v209);
    }

    v170 = v193;
    v176(v118, v90);
    v169 = v209;
  }

  sub_C14C(v168, v170, &qword_81808, &qword_70420);
  if ((*(v167 + 48))(v170, 1, v169) == 1)
  {
    sub_5E20(v168, &qword_81808, &qword_70420);
    result = sub_5E20(v170, &qword_81808, &qword_70420);
    *v117 = 0u;
    *(v117 + 16) = 0u;
    *(v117 + 32) = 0;
  }

  else
  {
    *(v117 + 24) = v169;
    *(v117 + 32) = sub_20274(&qword_81810, &type metadata accessor for RGPluginModel, &protocol conformance descriptor for RGPluginModel);
    v177 = sub_97B0(v117);
    (*(v167 + 32))(v177, v170, v169);
    result = sub_5E20(v168, &qword_81808, &qword_70420);
  }

  *(v117 + 40) = v211;
  return result;
}

uint64_t sub_19890@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_6B50C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5708(&qword_81520, &qword_708D0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v17 - v12;
  __chkstk_darwin(v11);
  v15 = v17 - v14;
  sub_19B34(v17 - v14);
  sub_C14C(v15, v13, &qword_81520, &qword_708D0);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    result = sub_5E20(v15, &qword_81520, &qword_708D0);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v13, v3);
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    (*(v4 + 16))(v10, v6, v3);
    (*(v4 + 56))(v10, 0, 1, v3);
    *(a2 + 24) = sub_6B89C();
    *(a2 + 32) = &protocol witness table for AceOutput;
    sub_97B0(a2);
    sub_6B85C();
    (*(v4 + 8))(v6, v3);
    return sub_5E20(v15, &qword_81520, &qword_708D0);
  }

  return result;
}

uint64_t sub_19B34@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_6CE8C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5708(&qword_817B0, &qword_703D8);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - v12;
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  v16 = sub_21308();
  if (v17 >> 60 == 15)
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v18 = sub_6D04C();
    sub_5CE4(v18, qword_839A0);
    v19 = sub_6D03C();
    v20 = sub_6D44C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "[IFOutputBuilder] Unable to create pommesContextUpdate from Session Status update", v21, 2u);
    }

    v22 = sub_6B50C();
    v23 = *(*(v22 - 8) + 56);

    return v23(a2, 1, 1, v22);
  }

  else
  {
    v25 = v16;
    v26 = v17;
    sub_6ACFC();
    swift_allocObject();
    sub_6ACEC();
    sub_20274(&qword_817B8, &type metadata accessor for PommesContext, &protocol conformance descriptor for PommesContext);
    v32 = v25;
    sub_6ACDC();
    v33 = a2;

    v27 = *(v4 + 56);
    v27(v15, 0, 1, v3);
    sub_C14C(v15, v13, &qword_817B0, &qword_703D8);
    if ((*(v4 + 48))(v13, 1, v3) == 1)
    {
      sub_5E20(v15, &qword_817B0, &qword_703D8);
      sub_1FCA0(v32, v26);
      v28 = sub_6B50C();
      return (*(*(v28 - 8) + 56))(v33, 1, 1, v28);
    }

    else
    {
      (*(v4 + 32))(v6, v13, v3);
      v29 = v33;
      sub_6B4FC();
      (*(v4 + 16))(v10, v6, v3);
      v27(v10, 0, 1, v3);
      sub_6B4DC();
      sub_1FCA0(v32, v26);
      (*(v4 + 8))(v6, v3);
      sub_5E20(v15, &qword_817B0, &qword_703D8);
      v30 = sub_6B50C();
      return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
    }
  }
}

void *sub_1A008()
{
  v1 = v0;
  v2 = sub_6C8BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6BFAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6C54C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == enum case for StatementOutcome.success(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v7 + 32))(v9, v13, v6);
    sub_5708(&qword_81850, &qword_70430);
    sub_6D1EC();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_70000;
    sub_6BF9C();
    (*(v7 + 8))(v9, v6);
  }

  else if (v14 == enum case for StatementOutcome.parameterDisambiguation(_:))
  {
    (*(v11 + 96))(v13, v10);
    (*(v3 + 32))(v5, v13, v2);
    v15 = sub_6C8AC();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    return _swiftEmptyArrayStorage;
  }

  return v15;
}

unint64_t sub_1A384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6AE9C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = _swiftEmptyArrayStorage;
  v10 = sub_6C52C();
  v49 = v11;
  v50 = v10;
  v51 = a1;
  v48 = sub_6C4FC();
  v12 = SAAceViewUIItemTypeItemTypeSmartDialogValue;
  v13 = objc_allocWithZone(SAUIPluginSnippet);
  v14 = v12;
  v15 = [v13 init];
  sub_6AE8C();
  sub_6AE6C();
  v16 = *(v7 + 8);
  v45 = v7 + 8;
  v46 = v6;
  v44 = v16;
  v16(v9, v6);
  v17 = sub_6D2BC();

  [v15 setAceId:v17];

  v18 = v15;
  v19 = sub_6D2BC();
  [v18 setViewId:v19];

  v20 = sub_6D2BC();

  [v18 setBundleName:v20];

  [v18 setItemType:v14];
  v22 = v49;
  v21 = v50;
  isa = sub_6AE0C().super.isa;
  [v18 setModelData:isa];

  v47 = a2;
  v48 = a3;
  v24 = sub_6D2BC();
  [v18 setResponseViewId:v24];

  sub_1FCB4(v21, v22);
  sub_6D36C();
  if (*(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v52 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_6D3AC();
  }

  sub_6D3CC();
  v25 = v52;
  v26 = sub_6C50C();
  if (v27 >> 60 == 15)
  {
  }

  else
  {
    v28 = v26;
    v29 = v27;
    v30 = sub_6C51C();
    if (v31)
    {
      v32 = SAAceViewUIItemTypeItemTypeResultValue;
      v51 = v30;
      v33 = objc_allocWithZone(SAUIPluginSnippet);
      v34 = v32;
      v35 = [v33 init];
      sub_6AE8C();
      sub_6AE6C();
      v44(v9, v46);
      v36 = sub_6D2BC();

      [v35 setAceId:v36];

      v37 = v35;
      v38 = sub_6D2BC();
      [v37 setViewId:v38];

      v39 = sub_6D2BC();

      [v37 setBundleName:v39];

      [v37 setItemType:v34];
      v40 = sub_6AE0C().super.isa;
      [v37 setModelData:v40];

      v41 = sub_6D2BC();
      [v37 setResponseViewId:v41];

      sub_6D36C();
      if (*(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v52 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_6D3AC();
      }

      sub_6D3CC();
      sub_1FCA0(v28, v29);

      return v52;
    }

    else
    {

      sub_1FCA0(v28, v29);
    }
  }

  return v25;
}

uint64_t sub_1A85C(uint64_t a1)
{
  v2 = sub_6D1EC();
  v35 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v32 = &v30 - v6;
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v9 = sub_6D15C();
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_6C54C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_6BFAC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  if ((*(v13 + 88))(v15, v12) != enum case for StatementOutcome.success(_:))
  {
    (*(v13 + 8))(v15, v12);
LABEL_8:
    v28 = 0;
    return v28 & 1;
  }

  (*(v13 + 96))(v15, v12);
  (*(v17 + 32))(v19, v15, v16);
  sub_6BF9C();
  v20 = v35;
  if ((*(v35 + 88))(v8, v2) != enum case for TypedValue.collection(_:))
  {
    (*(v17 + 8))(v19, v16);
    (*(v20 + 8))(v8, v2);
    goto LABEL_8;
  }

  (*(v20 + 96))(v8, v2);
  v21 = swift_projectBox();
  v23 = v33;
  v22 = v34;
  (*(v33 + 16))(v11, v21, v34);

  v24 = *(sub_6D14C() + 16);

  if (v24 != 1)
  {
    (*(v23 + 8))(v11, v22);
    (*(v17 + 8))(v19, v16);
    v28 = 1;
    return v28 & 1;
  }

  v25 = sub_6D14C();
  if (!*(v25 + 16))
  {

    (*(v23 + 8))(v11, v22);
    (*(v17 + 8))(v19, v16);
    goto LABEL_8;
  }

  v26 = v31;
  (*(v20 + 16))(v31, v25 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v2);

  v27 = v32;
  (*(v20 + 32))(v32, v26, v2);
  LOBYTE(v26) = sub_203AC();
  (*(v20 + 8))(v27, v2);
  (*(v23 + 8))(v11, v22);
  (*(v17 + 8))(v19, v16);
  v28 = v26 ^ 1;
  return v28 & 1;
}

uint64_t sub_1AD80(uint64_t a1)
{
  v2 = sub_6BB0C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6BA3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C674();
  sub_23738(a1, v5, v9);
  (*(v3 + 8))(v5, v2);
  sub_5708(&qword_818C8, &qword_70470);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_70000;
  (*(v7 + 32))(v11 + v10, v9, v6);
  return v11;
}

void *sub_1B0B0()
{
  v0 = sub_6BA3C();
  v43 = *(v0 - 8);
  v44 = v0;
  __chkstk_darwin(v0);
  v42 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_6B8BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5708(&qword_81878, &qword_70448);
  v6 = __chkstk_darwin(v5 - 8);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - v9;
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = sub_5708(&qword_818C0, &qword_70468);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_6BB0C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6BBCC();
  swift_allocObject();
  v20 = sub_6BBBC();
  sub_1C674();
  sub_6BAEC();
  v21 = v16;
  v22 = v12;
  (*(v17 + 8))(v19, v21);
  sub_5708(&qword_81548, &qword_70088);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_6FFF0;
  *(v23 + 32) = v20;
  v24 = sub_6BB3C();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v47 = v20;

  v25 = sub_6BB1C();

  sub_5E20(v15, &qword_818C0, &qword_70468);
  v26 = v3;
  v27 = *(v3 + 56);
  v27(v22, 1, 1, v2);
  v48 = v25;
  sub_6BACC();
  v28 = v45;
  sub_5E20(v22, &qword_81878, &qword_70448);
  v27(v10, 0, 1, v2);
  sub_201AC(v10, v22, &qword_81878, &qword_70448);
  v29 = v46;
  sub_C14C(v22, v46, &qword_81878, &qword_70448);
  if ((*(v26 + 48))(v29, 1, v2) == 1)
  {
    sub_5E20(v29, &qword_81878, &qword_70448);
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v30 = sub_6D04C();
    sub_5CE4(v30, qword_839A0);
    v31 = sub_6D03C();
    v32 = sub_6D46C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Unexpected nil value for task", v33, 2u);
    }

    sub_5E20(v22, &qword_81878, &qword_70448);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v35 = v28;
    v36 = (*(v26 + 32))(v28, v29, v2);
    __chkstk_darwin(v36);
    *(&v42 - 2) = v28;
    sub_20274(&qword_81860, &type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
    v37 = v42;
    v38 = v44;
    sub_6CE6C();
    sub_5708(&qword_818C8, &qword_70470);
    v39 = v43;
    v40 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_70000;
    (*(v39 + 32))(v41 + v40, v37, v38);

    sub_5E20(v22, &qword_81878, &qword_70448);
    (*(v26 + 8))(v35, v2);
    return v41;
  }
}

char *sub_1B8C8(uint64_t a1)
{
  v2 = sub_6BA3C();
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v94 = (&v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_6BA7C();
  v92 = *(v4 - 8);
  v93 = v4;
  __chkstk_darwin(v4);
  v82 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5708(&qword_81868, &qword_70438);
  v7 = __chkstk_darwin(v6 - 8);
  v90 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v81 - v9;
  v10 = sub_5708(&qword_81870, &qword_70440);
  __chkstk_darwin(v10 - 8);
  v100 = &v81 - v11;
  v12 = sub_6B8BC();
  v98 = *(v12 - 8);
  v99 = v12;
  __chkstk_darwin(v12);
  v88 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_5708(&qword_81878, &qword_70448);
  v15 = __chkstk_darwin(v14 - 8);
  v86 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v87 = &v81 - v18;
  v19 = __chkstk_darwin(v17);
  v85 = &v81 - v20;
  __chkstk_darwin(v19);
  v97 = &v81 - v21;
  v22 = sub_5708(&qword_81880, &qword_70450);
  v23 = __chkstk_darwin(v22 - 8);
  v89 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v101 = &v81 - v26;
  __chkstk_darwin(v25);
  v102 = &v81 - v27;
  v28 = sub_6ADFC();
  v83 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_5708(&qword_817E8, &qword_70408);
  v32 = __chkstk_darwin(v31 - 8);
  v34 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v81 - v35;
  v84 = a1;
  sub_C14C(a1, &v81 - v35, &qword_817E8, &qword_70408);
  v37 = sub_6C8EC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v36, 1, v37) == 1)
  {
    sub_5E20(v36, &qword_817E8, &qword_70408);
    v40 = 0;
    v41 = v83;
  }

  else
  {
    sub_6C8CC();
    (*(v38 + 8))(v36, v37);
    sub_6ADEC();
    v40 = v42;
    v41 = v83;
    (*(v83 + 8))(v30, v28);
  }

  sub_C14C(v84, v34, &qword_817E8, &qword_70408);
  if (v39(v34, 1, v37) == 1)
  {
    sub_5E20(v34, &qword_817E8, &qword_70408);
    v84 = 0;
    v43 = 0;
  }

  else
  {
    sub_6C8DC();
    (*(v38 + 8))(v34, v37);
    v84 = sub_6ADEC();
    v43 = v44;
    (*(v41 + 8))(v30, v28);
  }

  v45 = v97;
  v46 = v98;
  sub_1C7A4(v40, v97);

  v47 = v85;
  sub_C14C(v45, v85, &qword_81878, &qword_70448);
  v48 = *(v46 + 48);
  v49 = v99;
  if (v48(v47, 1, v99) == 1)
  {
    sub_5E20(v45, &qword_81878, &qword_70448);
    v50 = sub_6B9AC();
    (*(*(v50 - 8) + 56))(v102, 1, 1, v50);
  }

  else
  {
    v51 = v88;
    (*(v46 + 32))(v88, v47, v49);
    v52 = sub_6B9AC();
    __chkstk_darwin(v52);
    *(&v81 - 2) = v51;
    sub_20274(&qword_81888, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
    v53 = v102;
    v49 = v99;
    sub_6CE6C();
    sub_5E20(v97, &qword_81878, &qword_70448);
    (*(v46 + 8))(v51, v49);
    (*(*(v52 - 8) + 56))(v53, 0, 1, v52);
  }

  v54 = v100;
  v55 = v92;
  v56 = v86;
  v57 = v87;
  sub_1C7A4(v43, v87);

  sub_C14C(v57, v56, &qword_81878, &qword_70448);
  if (v48(v56, 1, v49) == 1)
  {
    sub_5E20(v57, &qword_81878, &qword_70448);
    v58 = sub_6B9AC();
    (*(*(v58 - 8) + 56))(v101, 1, 1, v58);
  }

  else
  {
    v59 = v98;
    v60 = v88;
    (*(v98 + 32))(v88, v56, v49);
    v61 = v49;
    v58 = sub_6B9AC();
    __chkstk_darwin(v58);
    *(&v81 - 2) = v60;
    sub_20274(&qword_81888, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
    v62 = v101;
    sub_6CE6C();
    sub_5E20(v57, &qword_81878, &qword_70448);
    v63 = v60;
    v54 = v100;
    (*(v59 + 8))(v63, v61);
    (*(*(v58 - 8) + 56))(v62, 0, 1, v58);
  }

  v64 = v96;
  v65 = v93;
  v66 = v91;
  v67 = v89;
  sub_C14C(v102, v89, &qword_81880, &qword_70450);
  sub_6B9AC();
  v68 = *(v58 - 8);
  if ((*(v68 + 48))(v67, 1, v58) == 1)
  {
    sub_5E20(v67, &qword_81880, &qword_70450);
    v69 = 1;
  }

  else
  {
    sub_6B96C();
    (*(v68 + 8))(v67, v58);
    v69 = 0;
  }

  (*(v55 + 56))(v66, v69, 1, v65);
  v70 = v90;
  sub_C14C(v66, v90, &qword_81868, &qword_70438);
  if ((*(v55 + 48))(v70, 1, v65) == 1)
  {
    sub_5E20(v66, &qword_81868, &qword_70438);
    v71 = 1;
  }

  else
  {
    v72 = v82;
    v73 = (*(v55 + 32))(v82, v70, v65);
    __chkstk_darwin(v73);
    *(&v81 - 2) = v72;
    sub_20274(&qword_81860, &type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
    sub_6CE6C();
    sub_5E20(v66, &qword_81868, &qword_70438);
    (*(v55 + 8))(v72, v65);
    v71 = 0;
  }

  v74 = v95;
  v75 = (*(v95 + 56))(v54, v71, 1, v64);
  __chkstk_darwin(v75);
  v76 = v101;
  v77 = v102;
  *(&v81 - 2) = v102;
  *(&v81 - 1) = v76;
  sub_20274(&qword_81860, &type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
  v78 = v94;
  sub_6CE6C();
  v79 = sub_1D4E4(v54, v78);
  (*(v74 + 8))(v78, v64);
  sub_5E20(v54, &qword_81870, &qword_70440);
  sub_5E20(v76, &qword_81880, &qword_70450);
  sub_5E20(v77, &qword_81880, &qword_70450);
  return v79;
}

uint64_t sub_1C674()
{
  type metadata accessor for IFFlowPlugin();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_6D2CC();
    v5 = v4;

    v6 = 0x800000000006EEC0;
    v7 = 0;
    v8 = 0xE000000000000000;
    v9 = v3;
    v10 = v5;
    v11 = 0xD000000000000015;
    v12 = 0x3FF0000000000000;
    v13 = 0;
  }

  else
  {
    v7 = sub_6D5BC();
    __break(1u);
  }

  return UsoIdentifier.init(value:appBundleId:namespace:probability:)(v7, v8, v9, v10, v11, v6, v12, v13);
}

uint64_t sub_1C7A4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_5708(&qword_818C0, &qword_70468);
  __chkstk_darwin(v5 - 8);
  v7 = &v19[-v6];
  v8 = sub_6BB0C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    sub_6BBEC();
    swift_allocObject();
    v12 = sub_6BBDC();
    sub_1C674();
    sub_6BAEC();
    (*(v9 + 8))(v11, v8);
    sub_6BB7C();
    swift_allocObject();
    sub_6BB6C();
    sub_6BB5C();
    sub_6BC1C();
    sub_5708(&qword_81548, &qword_70088);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_6FFF0;
    *(v13 + 32) = v12;
    v14 = sub_6BB3C();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);

    sub_6BB1C();

    sub_5E20(v7, &qword_818C0, &qword_70468);
    sub_6BACC();

    v17 = sub_6B8BC();
    return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
  }

  else
  {
    v15 = sub_6B8BC();
    v16 = *(*(v15 - 8) + 56);

    return v16(a3, 1, 1, v15);
  }
}

uint64_t sub_1CB18(uint64_t a1, uint64_t a2)
{
  v2 = sub_6BA7C();
  __chkstk_darwin(v2);
  sub_20274(&qword_81890, &type metadata accessor for Siri_Nlu_External_UserWantedToProceed, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToProceed);
  sub_6CE6C();
  return sub_6B97C();
}

uint64_t sub_1CC20(uint64_t a1, uint64_t a2)
{
  v2 = sub_6B8EC();
  __chkstk_darwin(v2);
  sub_20274(&qword_81898, &type metadata accessor for Siri_Nlu_External_UserRejected, &protocol conformance descriptor for Siri_Nlu_External_UserRejected);
  sub_6CE6C();
  return sub_6B98C();
}

uint64_t sub_1CD28(uint64_t a1, uint64_t a2)
{
  v2 = sub_6B90C();
  __chkstk_darwin(v2);
  sub_20274(&qword_818A0, &type metadata accessor for Siri_Nlu_External_SystemOffered, &protocol conformance descriptor for Siri_Nlu_External_SystemOffered);
  sub_6CE6C();
  return sub_6BA0C();
}

uint64_t sub_1CE30(uint64_t a1, uint64_t a2)
{
  v2 = sub_6B9AC();
  __chkstk_darwin(v2);
  sub_20274(&qword_81888, &type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
  sub_6CE6C();
  return sub_6B8FC();
}

uint64_t sub_1CF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_6BA6C();
  __chkstk_darwin(v3);
  sub_20274(&qword_818B0, &type metadata accessor for Siri_Nlu_External_SystemGaveOptions, &protocol conformance descriptor for Siri_Nlu_External_SystemGaveOptions);
  sub_6CE6C();
  return sub_6B9FC();
}

uint64_t sub_1D044(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t))
{
  v33 = a3;
  v30 = a2;
  v32 = a1;
  v3 = sub_6B9AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_5708(&qword_81880, &qword_70450);
  v6 = *(v31 - 8);
  v7 = __chkstk_darwin(v31);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_5708(&qword_818B8, &qword_70460);
  v12 = *(v6 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v29 = swift_allocObject();
  v14 = v29 + v13;
  v15 = v3;
  sub_C14C(v30, v14, &qword_81880, &qword_70450);
  sub_C14C(v33, v14 + v12, &qword_81880, &qword_70450);
  sub_C14C(v14, v11, &qword_81880, &qword_70450);
  sub_201AC(v11, v9, &qword_81880, &qword_70450);
  v30 = v4;
  v28 = *(v4 + 48);
  v16 = v28(v9, 1, v3);
  v33 = (v4 + 32);
  if (v16 == 1)
  {
    sub_5E20(v9, &qword_81880, &qword_70450);
    v17 = _swiftEmptyArrayStorage;
  }

  else
  {
    v18 = v3;
    v27 = *(v4 + 32);
    v27(v34, v9, v3);
    v17 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2B7E0(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_2B7E0((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v20];
    v15 = v18;
    v27(v21, v34, v18);
  }

  sub_C14C(v14 + v12, v11, &qword_81880, &qword_70450);
  sub_201AC(v11, v9, &qword_81880, &qword_70450);
  if (v28(v9, 1, v15) == 1)
  {
    sub_5E20(v9, &qword_81880, &qword_70450);
  }

  else
  {
    v22 = *v33;
    v23 = v34;
    (*v33)(v34, v9, v15);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2B7E0(0, *(v17 + 2) + 1, 1, v17);
    }

    v25 = *(v17 + 2);
    v24 = *(v17 + 3);
    if (v25 >= v24 >> 1)
    {
      v17 = sub_2B7E0((v24 > 1), v25 + 1, 1, v17);
    }

    *(v17 + 2) = v25 + 1;
    v22(&v17[((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v25], v23, v15);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_6BA4C();
}

char *sub_1D4E4(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t))
{
  v65 = a2;
  v71 = sub_5708(&qword_81870, &qword_70440);
  v3 = *(v71 - 8);
  v4 = __chkstk_darwin(v71);
  v64 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v62 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v62 - v10;
  v12 = __chkstk_darwin(v9);
  v63 = &v62 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = (&v62 - v15);
  __chkstk_darwin(v14);
  v18 = &v62 - v17;
  v19 = sub_6BA3C();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v67 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v66 = &v62 - v24;
  __chkstk_darwin(v23);
  v26 = &v62 - v25;
  sub_C14C(a1, v18, &qword_81870, &qword_70440);
  v72 = v20[6];
  v27 = v72(v18, 1, v19);
  v70 = v20;
  v68 = v20 + 6;
  if (v27 == 1)
  {
    sub_5E20(v18, &qword_81870, &qword_70440);
    sub_20274(&qword_81860, &type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
    sub_6CE6C();
    v28 = v8;
    v29 = v20;
    v30 = v20[7];
    v30(v11, 0, 1, v19);
    sub_20120(v11, a1);
    sub_5708(&qword_818A8, &qword_70458);
    v31 = *(v3 + 72);
    v32 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v69 = swift_allocObject();
    v33 = v69 + v32;
    (v29[2])(v33, v65, v19);
    v30(v33, 0, 1, v19);
    sub_C14C(a1, v33 + v31, &qword_81870, &qword_70440);
    v34 = (v29 + 4);
    sub_C14C(v33, v28, &qword_81870, &qword_70440);
    v66 = v28;
    v35 = v64;
    sub_201AC(v28, v64, &qword_81870, &qword_70440);
    v36 = v72;
    if (v72(v35, 1, v19) == 1)
    {
      sub_5E20(v35, &qword_81870, &qword_70440);
      v37 = _swiftEmptyArrayStorage;
      v38 = v70;
    }

    else
    {
      v65 = *v34;
      v65(v67, v35, v19);
      v37 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2B7B8(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v49 = *(v37 + 2);
      v48 = *(v37 + 3);
      v38 = v70;
      if (v49 >= v48 >> 1)
      {
        v37 = sub_2B7B8((v48 > 1), v49 + 1, 1, v37);
      }

      *(v37 + 2) = v49 + 1;
      v65(&v37[((*(v38 + 80) + 32) & ~*(v38 + 80)) + v38[9] * v49], v67, v19);
    }

    v50 = v33 + v31;
    v51 = v66;
    sub_C14C(v50, v66, &qword_81870, &qword_70440);
    sub_201AC(v51, v35, &qword_81870, &qword_70440);
    if (v36(v35, 1, v19) == 1)
    {
      sub_5E20(v35, &qword_81870, &qword_70440);
    }

    else
    {
      v55 = *v34;
      (*v34)(v67, v35, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2B7B8(0, *(v37 + 2) + 1, 1, v37);
      }

      v57 = *(v37 + 2);
      v56 = *(v37 + 3);
      if (v57 >= v56 >> 1)
      {
        v37 = sub_2B7B8((v56 > 1), v57 + 1, 1, v37);
      }

      *(v37 + 2) = v57 + 1;
      v55(&v37[((*(v38 + 80) + 32) & ~*(v38 + 80)) + v38[9] * v57], v67, v19);
    }
  }

  else
  {
    v39 = v20[4];
    v62 = v20 + 4;
    v67 = v39;
    (v39)(v26, v18, v19);
    sub_5708(&qword_818A8, &qword_70458);
    v40 = *(v3 + 72);
    v41 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v69 = swift_allocObject();
    v42 = v69 + v41;
    v43 = v20[2];
    v64 = v26;
    v43(v42, v26, v19);
    v44 = v20[7];
    v44(v42, 0, 1, v19);
    v43(v42 + v40, v65, v19);
    v44(v42 + v40, 0, 1, v19);
    sub_C14C(v42, v16, &qword_81870, &qword_70440);
    v65 = v16;
    v45 = v63;
    sub_201AC(v16, v63, &qword_81870, &qword_70440);
    v46 = v19;
    if (v72(v45, 1, v19) == 1)
    {
      sub_5E20(v45, &qword_81870, &qword_70440);
      v37 = _swiftEmptyArrayStorage;
      v47 = v70;
    }

    else
    {
      (v67)(v66, v45, v19);
      v37 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2B7B8(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v53 = *(v37 + 2);
      v52 = *(v37 + 3);
      v47 = v70;
      if (v53 >= v52 >> 1)
      {
        v37 = sub_2B7B8((v52 > 1), v53 + 1, 1, v37);
      }

      *(v37 + 2) = v53 + 1;
      (v67)(&v37[((*(v47 + 80) + 32) & ~*(v47 + 80)) + v47[9] * v53], v66, v19);
    }

    v54 = v65;
    sub_C14C(v42 + v40, v65, &qword_81870, &qword_70440);
    sub_201AC(v54, v45, &qword_81870, &qword_70440);
    if (v72(v45, 1, v46) == 1)
    {
      sub_5E20(v45, &qword_81870, &qword_70440);
    }

    else
    {
      v58 = v67;
      (v67)(v66, v45, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_2B7B8(0, *(v37 + 2) + 1, 1, v37);
      }

      v60 = *(v37 + 2);
      v59 = *(v37 + 3);
      if (v60 >= v59 >> 1)
      {
        v37 = sub_2B7B8((v59 > 1), v60 + 1, 1, v37);
      }

      *(v37 + 2) = v60 + 1;
      (v58)(&v37[((*(v47 + 80) + 32) & ~*(v47 + 80)) + v47[9] * v60], v66, v46);
    }

    (v47[1])(v64, v46);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v37;
}

uint64_t sub_1DEB0()
{
  v0 = sub_6B90C();
  __chkstk_darwin(v0);
  sub_20274(&qword_818A0, &type metadata accessor for Siri_Nlu_External_SystemOffered, &protocol conformance descriptor for Siri_Nlu_External_SystemOffered);
  sub_6CE6C();
  return sub_6BA0C();
}

uint64_t sub_1DFA0()
{
  v0 = sub_6B9AC();
  __chkstk_darwin(v0 - 8);
  sub_6B99C();
  return sub_6B8FC();
}

uint64_t sub_1E028(uint64_t a1, uint64_t a2)
{
  v2 = sub_6B9BC();
  __chkstk_darwin(v2);
  sub_20274(&qword_818D0, &type metadata accessor for Siri_Nlu_External_SystemPrompted, &protocol conformance descriptor for Siri_Nlu_External_SystemPrompted);
  sub_6CE6C();
  return sub_6BA1C();
}

uint64_t sub_1E130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(char *))
{
  v6 = a3(0);
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  (*(v9 + 16))(v11 - v7, a2);
  return a4(v8);
}

void *sub_1E214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v98 = a3;
  v99 = a4;
  v96 = a1;
  v5 = sub_5708(&qword_818D8, &qword_70478);
  __chkstk_darwin(v5 - 8);
  v95 = &v80 - v6;
  v7 = sub_5708(&qword_818E0, &qword_70480);
  __chkstk_darwin(v7 - 8);
  v94 = &v80 - v8;
  v93 = sub_6AE9C();
  v9 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5708(&qword_818E8, &qword_70488);
  __chkstk_darwin(v11 - 8);
  v13 = &v80 - v12;
  v14 = sub_6D0CC();
  v100 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v82 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v91 = &v80 - v18;
  __chkstk_darwin(v17);
  v81 = &v80 - v19;
  v90 = sub_5708(&qword_818F0, &qword_70490);
  __chkstk_darwin(v90);
  v104 = &v80 - v20;
  v97 = a2;
  if (a2)
  {
    v21 = sub_1A008();
    v23 = v21;
    v89 = v21[2];
    if (v89)
    {
      v24 = 0;
      v86 = (v9 + 8);
      v85 = (v100 + 56);
      v84 = (v100 + 48);
      v25 = _swiftEmptyArrayStorage;
      v83 = (v100 + 32);
      *&v22 = 138412290;
      v80 = v22;
      v87 = v21;
      v88 = v14;
      while (v24 < v23[2])
      {
        v103 = v25;
        v26 = sub_6D1EC();
        v27 = *(v26 - 8);
        v28 = v27;
        v29 = v23 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v27 + 72) * v24;
        v30 = *(v90 + 48);
        v31 = v104;
        *v104 = v24;
        v32 = *(v27 + 16);
        v102 = 0;
        v32(&v31[v30], v29, v26);
        v33 = v92;
        sub_6AE8C();
        v101 = sub_6AE6C();
        (*v86)(v33, v93);
        v34 = &v31[v30];
        v35 = v94;
        v32(v94, v34, v26);
        (*(v28 + 56))(v35, 0, 1, v26);

        v36 = v95;
        sub_6D08C();
        v37 = sub_6D09C();
        (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
        v38 = v102;
        sub_6D0AC();
        if (v38)
        {
          if (qword_812A0 != -1)
          {
            swift_once();
          }

          v39 = sub_6D04C();
          sub_5CE4(v39, qword_839A0);
          swift_errorRetain();
          v40 = sub_6D03C();
          v41 = sub_6D46C();

          v42 = os_log_type_enabled(v40, v41);
          v14 = v88;
          if (v42)
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *v43 = v80;
            swift_errorRetain();
            v45 = _swift_stdlib_bridgeErrorToNSError();
            *(v43 + 4) = v45;
            *v44 = v45;
            _os_log_impl(&dword_0, v40, v41, "Error creating RREntity: %@", v43, 0xCu);
            sub_5E20(v44, &qword_81508, &unk_70260);
          }

          else
          {
          }

          v46 = 1;
        }

        else
        {
          v46 = 0;
          v14 = v88;
        }

        v25 = v103;
        (*v85)(v13, v46, 1, v14);
        sub_5E20(v104, &qword_818F0, &qword_70490);
        if ((*v84)(v13, 1, v14) == 1)
        {
          sub_5E20(v13, &qword_818E8, &qword_70488);
        }

        else
        {
          v47 = *v83;
          v48 = v81;
          (*v83)(v81, v13, v14);
          v47(v91, v48, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_2B808(0, v25[2] + 1, 1, v25);
          }

          v50 = v25[2];
          v49 = v25[3];
          if (v50 >= v49 >> 1)
          {
            v25 = sub_2B808((v49 > 1), v50 + 1, 1, v25);
          }

          v25[2] = v50 + 1;
          v47(v25 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v50, v91, v14);
        }

        v23 = v87;
        if (v89 == ++v24)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
    }

    else
    {
      v25 = _swiftEmptyArrayStorage;
LABEL_27:

      if (qword_812A0 == -1)
      {
        goto LABEL_28;
      }
    }

    swift_once();
LABEL_28:
    v55 = sub_6D04C();
    sub_5CE4(v55, qword_839A0);

    v56 = sub_6D03C();
    v57 = sub_6D45C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v106[0] = v59;
      *v58 = 134218499;
      *(v58 + 4) = v25[2];

      *(v58 + 12) = 2081;
      v60 = v25[2];
      if (v60)
      {
        v97 = v59;
        LODWORD(v98) = v57;
        v99 = v58;
        v101 = v56;
        v105 = _swiftEmptyArrayStorage;
        sub_27D80(0, v60, 0);
        v61 = v105;
        v62 = *(v100 + 16);
        v103 = v25;
        v104 = v62;
        v63 = v25 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
        v102 = *(v100 + 72);
        v100 += 16;
        v64 = (v100 - 8);
        do
        {
          v65 = v82;
          (v104)(v82, v63, v14);
          v66 = sub_6D0BC();
          v68 = v67;
          (*v64)(v65, v14);
          v105 = v61;
          v70 = v61[2];
          v69 = v61[3];
          if (v70 >= v69 >> 1)
          {
            sub_27D80((v69 > 1), v70 + 1, 1);
            v61 = v105;
          }

          v61[2] = v70 + 1;
          v71 = &v61[2 * v70];
          v71[4] = v66;
          v71[5] = v68;
          v63 += v102;
          --v60;
        }

        while (v60);
        v25 = v103;
        v56 = v101;
        v58 = v99;
        LOBYTE(v57) = v98;
      }

      v72 = sub_6D39C();
      v74 = v73;

      v75 = sub_1076C(v72, v74, v106);

      *(v58 + 14) = v75;
      *(v58 + 22) = 2081;
      v76 = sub_6D39C();
      v78 = sub_1076C(v76, v77, v106);

      *(v58 + 24) = v78;
      _os_log_impl(&dword_0, v56, v57, "IFFlow donating %ld with ids: %{private}s and entities RREntities: %{private}s", v58, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return v25;
  }

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v51 = sub_6D04C();
  sub_5CE4(v51, qword_839A0);
  v52 = sub_6D03C();
  v53 = sub_6D46C();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "Nil requestId. Not donating entities to SRR", v54, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1ED90()
{
  v62 = sub_6D1DC();
  v0 = *(v62 - 8);
  __chkstk_darwin(v62);
  v2 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_6D1AC();
  v3 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_6D1EC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v52 - v11;
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  v15 = sub_1A008();
  v16 = v15[2];
  if (v16)
  {
    v61 = v9;
    v58 = v2;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v73 = v18;
    v19 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v52 = v15;
    v20 = v15 + v19;
    v21 = *(v17 + 56);
    v71 = (v17 + 72);
    v72 = v21;
    v22 = v3;
    v23 = enum case for TypedValue.entity(_:);
    v24 = v0;
    v25 = (v17 - 8);
    v67 = (v17 + 80);
    v65 = (v22 + 16);
    v64 = (v22 + 8);
    v60 = enum case for TypedValue.primitive(_:);
    v56 = (v24 + 88);
    v57 = (v24 + 16);
    v55 = enum case for TypedValue.PrimitiveValue.string(_:);
    v54 = (v24 + 8);
    v53 = (v24 + 96);
    v59 = _swiftEmptyArrayStorage;
    v68 = v17;
    v66 = enum case for TypedValue.entity(_:);
    do
    {
      v27 = v73;
      v73(v14, v20, v5);
      v27(v12, v14, v5);
      v28 = *v71;
      if ((*v71)(v12, v5) == v23)
      {
        v29 = *v67;
        (*v67)(v12, v5);
        v30 = swift_projectBox();
        (*v65)(v69, v30, v70);

        v31 = sub_6D18C();
        if (*(v31 + 16) && (v32 = sub_10DDC(0x65736E6F70736572, 0xE800000000000000), (v33 & 1) != 0))
        {
          v34 = v61;
          v73(v61, (*(v31 + 56) + v32 * v72), v5);
          (*v64)(v69, v70);
          v63 = *v25;
          v63(v14, v5);

          v35 = v28(v34, v5);
          if (v35 == v60)
          {
            v29(v34, v5);
            v36 = swift_projectBox();
            v37 = v58;
            v38 = v62;
            (*v57)(v58, v36, v62);
            v39 = (*v56)(v37, v38);
            if (v39 == v55)
            {
              (*v53)(v37, v62);
              v40 = *(v37 + 1);
              v63 = *v37;

              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v41 = v59;
              }

              else
              {
                v41 = sub_2BA0C(0, *(v59 + 2) + 1, 1, v59);
              }

              v43 = *(v41 + 2);
              v42 = *(v41 + 3);
              if (v43 >= v42 >> 1)
              {
                v41 = sub_2BA0C((v42 > 1), v43 + 1, 1, v41);
              }

              *(v41 + 2) = v43 + 1;
              v59 = v41;
              v44 = &v41[16 * v43];
              *(v44 + 4) = v63;
              *(v44 + 5) = v40;
            }

            else
            {
              (*v54)(v37, v62);
            }
          }

          else
          {
            v63(v34, v5);
          }
        }

        else
        {

          (*v64)(v69, v70);
          (*v25)(v14, v5);
        }

        v23 = v66;
      }

      else
      {
        v26 = *v25;
        (*v25)(v14, v5);
        v26(v12, v5);
      }

      v20 += v72;
      --v16;
    }

    while (v16);

    v45 = v59;
  }

  else
  {

    v45 = _swiftEmptyArrayStorage;
  }

  v74 = v45;
  sub_5708(&qword_81840, &qword_70428);
  sub_1FF10();
  v46 = sub_6D27C();

  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v47 = sub_6D04C();
  sub_5CE4(v47, qword_839A0);

  v48 = sub_6D03C();
  v49 = sub_6D45C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = sub_6D32C();

    _os_log_impl(&dword_0, v48, v49, "IFFlow retrieving string content for feedback form with length: %ld", v50, 0xCu);
  }

  else
  {
  }

  return v46;
}

uint64_t sub_1F4D4(void *a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  sub_1FE68();
  v2 = sub_6D50C();
  v3 = *(v2 + 16);
  if (v3 && (v4 = (v2 + 32 * v3), v5 = *v4, v6 = v4[1], v8 = v4[2], v7 = v4[3], , , v20 = v5, v21 = v6, v22 = v8, v23 = v7, sub_1FEBC(), (sub_6D4FC() & 1) != 0))
  {
    if (qword_812A0 != -1)
    {
      swift_once();
    }

    v9 = sub_6D04C();
    sub_5CE4(v9, qword_839A0);

    v10 = sub_6D03C();
    v11 = sub_6D45C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;

      v14 = sub_6D30C();
      v16 = v15;

      v17 = sub_1076C(v14, v16, &v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_0, v10, v11, "IFFlow setting subFeature as: %s", v12, 0xCu);
      sub_9964(v13);
    }

    v18 = sub_6D30C();

    return v18;
  }

  else
  {

    return 0;
  }
}

id sub_1F740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a2;
  v8 = sub_6C4EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_812A0 != -1)
  {
    swift_once();
  }

  v12 = sub_6D04C();
  sub_5CE4(v12, qword_839A0);
  (*(v9 + 16))(v11, a1, v8);
  v13 = sub_6D03C();
  v14 = sub_6D45C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35 = a1;
    v18 = v17;
    v37 = v17;
    *v16 = 136315138;
    v19 = sub_4B728();
    v34 = a4;
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = sub_1076C(v19, v21, &v37);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_0, v13, v14, "IFFlow creating feedback form for toolId: %s", v16, 0xCu);
    sub_9964(v18);

    a3 = v33;
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v23 = [objc_allocWithZone(SAUIFeedbackForm) init];
  if (a3)
  {
    v24 = sub_6D2BC();
    [v23 setOutput:v24];
  }

  v25 = sub_6D2BC();
  [v23 setDomain:v25];

  v26 = sub_4B728();
  sub_1F4D4(v26, v27);
  v29 = v28;

  if (v29)
  {
    v30 = sub_6D2BC();

    [v23 setSubFeature:v30];
  }

  return v23;
}

id sub_1FA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_6C54C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4B4CC(v9);
  if (*(v7 + 88))(v9, v6) == enum case for StatementOutcome.success(_:) && ((v20 = sub_4B728(), v21 = v10, v18 = 0xD000000000000022, v19 = 0x800000000006EE20, sub_1FDC0(), sub_1FE14(), v11 = sub_6D26C(), , (v11) || (v20 = sub_4B728(), v21 = v12, v18 = 0xD000000000000033, v19 = 0x800000000006E860, v13 = sub_6D26C(), , (v13)))
  {
    v14 = sub_6D2CC();
    v16 = sub_1F740(a1, a2, a3, v14, v15);
  }

  else
  {
    v16 = 0;
  }

  (*(v7 + 8))(v9, v6);
  return v16;
}

uint64_t sub_1FCA0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1FCB4(result, a2);
  }

  return result;
}

uint64_t sub_1FCB4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1FD1C()
{
  result = qword_817F8;
  if (!qword_817F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_817F8);
  }

  return result;
}

uint64_t sub_1FD68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1FD80(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1FCB4(result, a2);
  }

  return result;
}

unint64_t sub_1FDC0()
{
  result = qword_81820;
  if (!qword_81820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81820);
  }

  return result;
}

unint64_t sub_1FE14()
{
  result = qword_81828;
  if (!qword_81828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81828);
  }

  return result;
}

unint64_t sub_1FE68()
{
  result = qword_81830;
  if (!qword_81830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81830);
  }

  return result;
}

unint64_t sub_1FEBC()
{
  result = qword_81838;
  if (!qword_81838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81838);
  }

  return result;
}

unint64_t sub_1FF10()
{
  result = qword_81848;
  if (!qword_81848)
  {
    sub_29F8(&qword_81840, &qword_70428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81848);
  }

  return result;
}

unint64_t sub_1FF74()
{
  result = qword_81858;
  if (!qword_81858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81858);
  }

  return result;
}

uint64_t sub_20120(uint64_t a1, uint64_t a2)
{
  v4 = sub_5708(&qword_81870, &qword_70440);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_201AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5708(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20274(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_202BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_202F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20338(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_203AC()
{
  v1 = v0;
  v2 = sub_6D20C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_6D1EC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_6D1AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, v1, v6);
  if ((*(v7 + 88))(v9, v6) != enum case for TypedValue.entity(_:))
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  (*(v7 + 96))(v9, v6);
  v14 = swift_projectBox();
  (*(v11 + 16))(v13, v14, v10);

  sub_6D19C();
  if ((*(v3 + 88))(v5, v2) != enum case for TypeIdentifier.custom(_:))
  {
    (*(v11 + 8))(v13, v10);
    (*(v3 + 8))(v5, v2);
    return 0;
  }

  (*(v3 + 96))(v5, v2);
  v15 = *v5;
  v17 = *(*v5 + 32);
  v16 = *(v15 + 40);

  if (v17 != 0xD000000000000012 || 0x800000000006EF00 != v16)
  {
    v19 = sub_6D63C();

    (*(v11 + 8))(v13, v10);
    return (v19 & 1) != 0;
  }

  (*(v11 + 8))(v13, v10);
  return 1;
}

uint64_t sub_20740@<X0>(uint64_t a1@<X8>)
{
  v33 = sub_6D20C();
  v2 = *(v33 - 8);
  __chkstk_darwin(v33);
  v43 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_6D1AC();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_6D1EC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = sub_6C76C();
  v50 = *(result + 16);
  if (v50)
  {
    v37 = v6;
    v30 = a1;
    v14 = 0;
    v48 = result + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v46 = v8 + 88;
    v47 = v8 + 16;
    v45 = enum case for TypedValue.entity(_:);
    v15 = (v8 + 8);
    v39 = (v4 + 16);
    v40 = (v8 + 96);
    v38 = (v2 + 88);
    v36 = enum case for TypeIdentifier.custom(_:);
    v41 = (v4 + 8);
    v42 = v8;
    v31 = (v2 + 96);
    v32 = (v2 + 8);
    v35 = 0x800000000006EF00;
    v16 = v33;
    v17 = v34;
    v18 = v44;
    v49 = result;
    while (v14 < *(result + 16))
    {
      v19 = *(v8 + 16);
      v19(v18, v48 + *(v8 + 72) * v14, v7);
      v19(v11, v18, v7);
      v20 = (*(v8 + 88))(v11, v7);
      if (v20 == v45)
      {
        (*v40)(v11, v7);
        v21 = swift_projectBox();
        v22 = v37;
        (*v39)(v37, v21, v17);

        v23 = v43;
        sub_6D19C();
        v24 = (*v38)(v23, v16);
        if (v24 == v36)
        {
          v25 = v22;
          (*v31)(v23, v16);
          v26 = *(*v23 + 32);
          v27 = *(*v23 + 40);

          if (v26 == 0xD000000000000012 && v35 == v27)
          {

            (*v41)(v25, v34);
            v8 = v42;
            v18 = v44;
LABEL_16:

            a1 = v30;
            (*(v8 + 32))(v30, v18, v7);
            v29 = 0;
            return (*(v8 + 56))(a1, v29, 1, v7);
          }

          v28 = sub_6D63C();

          v17 = v34;
          (*v41)(v25, v34);
          v16 = v33;
          v8 = v42;
          v18 = v44;
          if (v28)
          {
            goto LABEL_16;
          }
        }

        else
        {
          (*v41)(v22, v17);
          (*v32)(v23, v16);
          v8 = v42;
          v18 = v44;
        }
      }

      else
      {
        (*v15)(v11, v7);
      }

      ++v14;
      (*v15)(v18, v7);
      result = v49;
      if (v50 == v14)
      {

        v29 = 1;
        a1 = v30;
        return (*(v8 + 56))(a1, v29, 1, v7);
      }
    }

    __break(1u);
  }

  else
  {

    v29 = 1;
    return (*(v8 + 56))(a1, v29, 1, v7);
  }

  return result;
}

uint64_t sub_20C88()
{
  v1 = v0;
  v2 = sub_6D1CC();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_6D1DC();
  v54 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v45 - v7;
  v8 = sub_6D1EC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v57 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v56 = &v45 - v13;
  v14 = __chkstk_darwin(v12);
  v58 = &v45 - v15;
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  v18 = sub_6D1AC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 16);
  v22(v17, v1, v8);
  v55 = *(v9 + 88);
  if (v55(v17, v8) == enum case for TypedValue.entity(_:))
  {
    v46 = v4;
    v45 = *(v9 + 96);
    v45(v17, v8);
    v23 = swift_projectBox();
    v47 = v19;
    v48 = v18;
    (*(v19 + 16))(v21, v23, v18);

    v24 = sub_6D18C();
    v25 = v21;
    if (*(v24 + 16) && (v26 = sub_10DDC(0xD000000000000011, 0x800000000006EEE0), (v27 & 1) != 0))
    {
      v28 = v56;
      v22(v56, *(v24 + 56) + *(v9 + 72) * v26, v8);

      v29 = v58;
      (*(v9 + 32))(v58, v28, v8);
      v30 = v57;
      v22(v57, v29, v8);
      if (v55(v30, v8) == enum case for TypedValue.primitive(_:))
      {
        v56 = v25;
        v45(v30, v8);
        v31 = swift_projectBox();
        v32 = v54;
        v33 = *(v54 + 16);
        v34 = v52;
        v35 = v46;
        v33(v52, v31, v46);

        v36 = v53;
        v33(v53, v34, v35);
        v37 = v35;
        if ((*(v32 + 88))(v36, v35) == enum case for TypedValue.PrimitiveValue.file(_:))
        {
          (*(v32 + 96))(v36, v35);
          v38 = v49;
          v39 = v50;
          v40 = v51;
          (*(v50 + 32))(v49, v36, v51);
          v41 = sub_6D1BC();
          (*(v39 + 8))(v38, v40);
          (*(v32 + 8))(v34, v37);
          (*(v9 + 8))(v58, v8);
          (*(v47 + 8))(v56, v48);
          return v41;
        }

        v44 = *(v32 + 8);
        v44(v34, v35);
        (*(v9 + 8))(v58, v8);
        (*(v47 + 8))(v56, v48);
        v44(v36, v35);
      }

      else
      {
        v43 = *(v9 + 8);
        v43(v29, v8);
        (*(v47 + 8))(v25, v48);
        v43(v30, v8);
      }
    }

    else
    {

      (*(v47 + 8))(v21, v48);
    }
  }

  else
  {
    (*(v9 + 8))(v17, v8);
  }

  return 0;
}
uint64_t sub_100054798@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100085378(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_1000547E8()
{
  if (*v0)
  {
    return 6645601;
  }

  else
  {
    return 0x437972746E756F63;
  }
}

uint64_t sub_100054824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000)
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

uint64_t sub_100054904(uint64_t a1)
{
  v2 = sub_10009F7C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054940(uint64_t a1)
{
  v2 = sub_10009F7C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100054A0C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x72656469766F7270;
      break;
    case 4:
      result = 0x6574726F70707573;
      break;
    case 5:
    case 8:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x726F4D6E7261656CLL;
      break;
    case 9:
      result = 0x65726564726F6E75;
      break;
    case 10:
      result = 0xD000000000000027;
      break;
    case 11:
      result = 0xD000000000000024;
      break;
    case 12:
      result = 0xD00000000000002BLL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0x55746E65736E6F63;
      break;
    case 17:
      result = 0x70536E6F69676572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x416D756D696E696DLL;
      break;
    case 21:
      result = 0xD00000000000001BLL;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100054D80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100085564(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100054DB0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100054A0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100054DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100085564(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100054E18(uint64_t a1)
{
  v2 = sub_10009F3E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054E54(uint64_t a1)
{
  v2 = sub_10009F3E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100054E90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  __chkstk_darwin(v5 - 8);
  v7 = &v82[-v6 - 4];
  v8 = sub_100007224(&qword_100835850, &qword_1006C1B30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v82[-v10 - 4];
  v85 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  __chkstk_darwin(v85);
  v86 = a1;
  v87 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  sub_10000BA08(a1, a1[3]);
  sub_10009F3E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v88 = v2;
    sub_10000BB78(v86);
    LODWORD(v11) = 0;
    goto LABEL_4;
  }

  v83 = a2;
  v84 = v9;
  LOBYTE(v90) = 0;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = v87;
  *v87 = v13;
  v15[1] = v16;
  LOBYTE(v90) = 1;
  v15[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[3] = v17;
  LOBYTE(v90) = 3;
  v81 = 0;
  v15[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[5] = v18;
  LOBYTE(v90) = 4;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v88 = 0;
  v15[6] = v19;
  v15[7] = v20;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v89 = 5;
  sub_10007FD2C();
  v21 = v88;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v88 = v21;
  if (v21)
  {
    (*(v84 + 8))(v11, v8);
    *v82 = 0;
    v22 = 0;
    LODWORD(v84) = 0;
    LODWORD(v11) = 0;
    LODWORD(v83) = 1;
    goto LABEL_29;
  }

  v23 = v90;
  if (!v90)
  {
    v23 = _swiftEmptyArrayStorage;
  }

  v15[8] = v23;
  type metadata accessor for HardwareAttestationType();
  LOBYTE(v90) = 6;
  sub_10009F43C(&qword_100839AF0, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
  v24 = v88;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v88 = v24;
  if (v24)
  {
    (*(v84 + 8))(v11, v8);
    v22 = 0;
    LODWORD(v84) = 0;
    LODWORD(v11) = 0;
    LODWORD(v83) = 1;
    *v82 = 1;
    goto LABEL_29;
  }

  v25 = v85;
  sub_1000B1FC8(v7, v15 + v85[9], &qword_1008353E0, &qword_1006C0F18);
  LOBYTE(v90) = 7;
  v26 = v88;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v88 = v26;
  if (v26)
  {
    (*(v84 + 8))(v11, v8);
    v22 = 0;
    LODWORD(v84) = 0;
    LODWORD(v11) = 0;
    LODWORD(v83) = 1;
    *v82 = 1;
    *&v82[4] = 1;
    goto LABEL_29;
  }

  v29 = (v15 + v25[11]);
  *v29 = v27;
  v29[1] = v28;
  sub_100007224(&qword_100835468, &unk_1006C0F40);
  v89 = 8;
  sub_10009F484();
  v30 = v88;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v88 = v30;
  v31 = v84;
  if (v30)
  {
    (*(v84 + 8))(v11, v8);
    v22 = 0;
    LODWORD(v11) = 0;
    LODWORD(v83) = 1;
    *v82 = 1;
    *&v82[4] = 1;
LABEL_27:
    LODWORD(v84) = 1;
LABEL_28:
    v15 = v87;
LABEL_29:
    v37 = v81;
    sub_10000BB78(v86);

    if (v37)
    {
      if (!v83)
      {
        goto LABEL_37;
      }
    }

    else
    {

      if ((v83 & 1) == 0)
      {
LABEL_37:

        if (v82[0])
        {

          if (v82[4])
          {
            goto LABEL_39;
          }
        }

        else if (*&v82[4])
        {
LABEL_39:
          sub_10000BE18(v15 + v85[9], &qword_1008353E0, &qword_1006C0F18);
          if ((v22 & 1) == 0)
          {
LABEL_40:
            if (v84)
            {
              goto LABEL_41;
            }

LABEL_4:

            if (!v11)
            {
LABEL_6:
            }

LABEL_5:

            goto LABEL_6;
          }

          goto LABEL_34;
        }

        if (!v22)
        {
          goto LABEL_40;
        }

LABEL_34:

        if ((v84 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_41:

        if ((v11 & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    goto LABEL_37;
  }

  *(v87 + v25[10]) = v90;
  sub_100007224(&qword_100835478, &qword_1006D4980);
  v89 = 9;
  sub_10009F55C();
  v32 = v88;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v88 = v32;
  if (v32)
  {
    (*(v31 + 8))(v11, v8);
    LODWORD(v11) = 0;
LABEL_26:
    LODWORD(v83) = 1;
    *v82 = 1;
    *&v82[4] = 1;
    v22 = 1;
    goto LABEL_27;
  }

  *(v87 + v85[12]) = v90;
  sub_100007224(&unk_10084A230, &qword_1006C0F50);
  v89 = 17;
  sub_1000ACB5C(&qword_100835878, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
  *&v82[4] = v8;
  v33 = v88;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v88 = v33;
  if (v33 || (*(v87 + v85[21]) = v90, sub_100007224(&qword_100835498, &qword_1006C0F58), v89 = 18, sub_10009F618(), v34 = v88, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v88 = v34) != 0))
  {
    (*(v84 + 8))(v11, *&v82[4]);
    LODWORD(v11) = 0;
    goto LABEL_26;
  }

  if (v90)
  {
    v35 = v90;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v36 = v88;
  *(v87 + v85[22]) = v35;
  v89 = 19;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v88 = v36;
  v38 = v90;
  if (!v90)
  {
    v38 = _swiftEmptyArrayStorage;
  }

  *(v87 + v85[20]) = v38;
  sub_100007224(&unk_1008354A8, &qword_1006C0F60);
  v89 = 20;
  sub_10009F6F0();
  v39 = v88;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v88 = v39;
  if (v39)
  {
    goto LABEL_50;
  }

  if (v90)
  {
    v40 = v90;
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
  }

  v41 = v88;
  *(v87 + v85[23]) = v40;
  LOBYTE(v90) = 21;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v88 = v41;
  v43 = v87 + v85[24];
  *v43 = v42;
  v43[8] = v44 & 1;
  LOBYTE(v90) = 22;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v88 = 0;
  v46 = v85[15];
  v47 = v87 + v85[25];
  *v47 = v45;
  v47[8] = v48 & 1;
  v49 = objc_opt_self();
  v50 = [v49 standardUserDefaults];
  v51._countAndFlagsBits = static DaemonInternalDefaultsKeys.addTimeoutBetweenProvisioningAttemptsInSeconds.getter();
  *v82 = NSUserDefaults.internalBool(forKey:)(v51);

  if (v82[0])
  {
    v52 = 0;
    v53 = 300;
    goto LABEL_54;
  }

  LOBYTE(v90) = 12;
  v54 = v88;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v88 = v54;
  if (v54)
  {
LABEL_50:
    (*(v84 + 8))(v11, *&v82[4]);
    LODWORD(v83) = 1;
    *v82 = 1;
    *&v82[4] = 1;
    v22 = 1;
    LODWORD(v84) = 1;
    LODWORD(v11) = 1;
    goto LABEL_28;
  }

LABEL_54:
  v55 = v87 + v46;
  *v55 = v53;
  v55[8] = v52 & 1;
  v56 = v85[13];
  v57 = [v49 standardUserDefaults];
  v58._countAndFlagsBits = static DaemonInternalDefaultsKeys.removeBillShockThreshold.getter();
  *v82 = NSUserDefaults.internalBool(forKey:)(v58);

  if (v82[0])
  {
    v59 = 0;
    v60 = 0;
  }

  else
  {
    LOBYTE(v90) = 10;
    v61 = v88;
    v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88 = v61;
    if (v61)
    {
      goto LABEL_61;
    }
  }

  v62 = v87 + v56;
  *v62 = v59;
  v62[8] = v60 & 1;
  v63 = v85[14];
  v64 = [v49 standardUserDefaults];
  v65._countAndFlagsBits = static DaemonInternalDefaultsKeys.addDataToLowDataModeThreshold.getter();
  v66 = NSUserDefaults.internalBool(forKey:)(v65);

  if (!v66)
  {
    LOBYTE(v90) = 11;
    v69 = v88;
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88 = v69;
    if (!v69)
    {
      goto LABEL_60;
    }

LABEL_61:
    (*(v84 + 8))(v11, *&v82[4]);
    sub_10000BB78(v86);
    v74 = v87;

    sub_10000BE18(v74 + v85[9], &qword_1008353E0, &qword_1006C0F18);

    LOBYTE(v11) = 1;
    goto LABEL_41;
  }

  v67 = 0;
  v68 = 1000000000;
LABEL_60:
  v70 = v88;
  v71 = v87 + v63;
  *v71 = v68;
  v71[8] = v67 & 1;
  LOBYTE(v90) = 13;
  v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v88 = v70;
  if (v70)
  {
    goto LABEL_61;
  }

  v75 = (v87 + v85[16]);
  *v75 = v72;
  v75[1] = v73;
  LOBYTE(v90) = 14;
  v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v88 = 0;
  *(v87 + v85[17]) = v76;
  LOBYTE(v90) = 15;
  v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v88 = 0;
  *(v87 + v85[18]) = v77;
  type metadata accessor for IdentityProofingConsentFlow();
  v89 = 16;
  sub_10009F43C(&qword_1008358A0, &type metadata accessor for IdentityProofingConsentFlow, &protocol conformance descriptor for IdentityProofingConsentFlow);
  v78 = v88;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v88 = v78;
  if (v78)
  {
    goto LABEL_61;
  }

  v79 = v85[19];
  (*(v84 + 8))(v11, *&v82[4]);
  v80 = v87;
  *(v87 + v79) = v90;
  sub_10009ED78(v80, v83, type metadata accessor for IdentityProofingStaticWorkflow);
  sub_10000BB78(v86);
  return sub_10009EDE0(v80, type metadata accessor for IdentityProofingStaticWorkflow);
}

unint64_t sub_100055D8C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65646F4E61746164;
    v7 = 0xD000000000000016;
    if (a1 != 10)
    {
      v7 = 0x696C696261706163;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001CLL;
    if (a1 == 7)
    {
      v8 = 0x6974726F70707573;
    }

    if (a1 == 6)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4874736575716572;
    v2 = 0xD000000000000017;
    v3 = 0x61746144766469;
    if (a1 != 4)
    {
      v3 = 0x6465696669726576;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (a1 != 1)
    {
      v4 = 0x776F6C666B726F77;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100055F58(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836E98, &qword_1006C9590);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000ABF90();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v14 = *v3;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v17 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v3[3];
    v14 = v3[2];
    v15 = v11;
    v16 = v3[4];
    v17 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = type metadata accessor for IdentityProofingRequest(0);
    LOBYTE(v14) = 3;
    type metadata accessor for HardwareAttestationType();
    sub_10009F43C(&qword_100836DC8, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v14 = *(v3 + v12[8]);
    v17 = 4;
    sub_100007224(&qword_100836E48, &qword_1006C9580);
    sub_1000AC31C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v14 = *(v3 + v12[9]);
    v17 = 5;
    sub_100007224(&qword_1008361D8, &qword_1006C5150);
    sub_1000ABC00();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + v12[10]);
    v17 = 6;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    sub_1000AB518();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + v12[11]);
    v17 = 7;
    sub_100007224(&qword_100836E08, &qword_1006C9568);
    sub_1000ABEB8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v14 = *(v3 + v12[12]);
    v17 = 8;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + v12[13]);
    v17 = 9;
    sub_100007224(&qword_100836200, &qword_1006C5160);
    sub_1000AC3CC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + v12[14]);
    v17 = 10;
    sub_100007224(&qword_100836210, &qword_1006C5168);
    sub_1000AC4A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + v12[15]);
    v17 = 11;
    sub_100007224(&qword_100836E80, &qword_1006C9588);
    sub_1000AC57C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100056464@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = type metadata accessor for HardwareAttestationType();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100007224(&qword_100836E38, &qword_1006C9578);
  v7 = *(v60 - 8);
  __chkstk_darwin(v60);
  v9 = &v50 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for IdentityProofingRequest(0);
  __chkstk_darwin(v69);
  v15 = (&v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  UUID.init()();
  UUID.uuidString.getter();
  v70 = v16;
  (*(v11 + 8))(v13, v10);
  v17 = a1[3];
  v66 = a1;
  sub_10000BA08(a1, v17);
  sub_1000ABF90();
  v59 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v68 = v15;
  if (v2)
  {
    v67 = v2;
    LODWORD(v59) = 0;
    v18 = 0;
    v19 = 0;
    LODWORD(v60) = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v77 = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v29 = v72;
    v30 = v73;
    v31 = v74;
    *v15 = v71;
    v15[1] = v29;
    v15[2] = v30;
    v15[3] = v31;
    v70 = v31;
    v77 = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v32 = v72;
    v33 = v73;
    v34 = v74;
    v35 = v75;
    v36 = v76;
    v55 = v71;
    v15[4] = v71;
    v15[5] = v32;
    v53 = v32;
    v54 = v33;
    v15[6] = v33;
    v15[7] = v34;
    v50 = v34;
    v52 = v35;
    v15[8] = v35;
    v15[9] = v36;
    v51 = v36;
    LOBYTE(v71) = 2;
    v15[10] = KeyedDecodingContainer.decode(_:forKey:)();
    v15[11] = v37;
    LOBYTE(v71) = 3;
    sub_10009F43C(&qword_100839AF0, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
    v38 = v58;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v39 = v69;
    (*(v57 + 32))(v15 + v69[7], v6, v38);
    sub_100007224(&qword_100836E48, &qword_1006C9580);
    v77 = 4;
    sub_1000ABFE4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v15 + v39[8]) = v71;
    sub_100007224(&qword_1008361D8, &qword_1006C5150);
    v77 = 5;
    sub_1000ABA20();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v40 = v39[9];
    v65 = v71;
    *(v15 + v40) = v71;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    v77 = 6;
    sub_1000AB2B0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v41 = v39[10];
    v64 = v71;
    *(v15 + v41) = v71;
    sub_100007224(&qword_100836E08, &qword_1006C9568);
    v77 = 7;
    sub_1000ABDE0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v68 + v69[11]) = v71;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v77 = 8;
    sub_10007FD2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v67 = 0;
    v42 = v69[12];
    v63 = v71;
    *(v68 + v42) = v71;
    sub_100007224(&qword_100836200, &qword_1006C5160);
    v77 = 9;
    sub_1000AC094();
    v43 = v67;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v67 = v43;
    if (v43)
    {
      (*(v7 + 8))(v59, v60);
      v61 = 0;
      v62 = 0;
    }

    else
    {
      v44 = v69[13];
      v62 = v71;
      *(v68 + v44) = v71;
      sub_100007224(&qword_100836210, &qword_1006C5168);
      v77 = 10;
      sub_1000AC16C();
      v45 = v67;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v67 = v45;
      if (v45)
      {
        (*(v7 + 8))(v59, v60);
        v61 = 0;
      }

      else
      {
        v46 = v69[14];
        v61 = v71;
        *(v68 + v46) = v71;
        sub_100007224(&qword_100836E80, &qword_1006C9588);
        v77 = 11;
        sub_1000AC244();
        v47 = v67;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v67 = v47;
        if (!v47)
        {
          v48 = v69[15];
          (*(v7 + 8))(v59, v60);
          v49 = v68;
          *(v68 + v48) = v71;
          sub_10009ED78(v49, v56, type metadata accessor for IdentityProofingRequest);
          sub_10000BB78(v66);
          return sub_10009EDE0(v49, type metadata accessor for IdentityProofingRequest);
        }

        (*(v7 + 8))(v59, v60);
      }
    }

    LODWORD(v59) = 1;
    v18 = 1;
    v19 = 1;
    LODWORD(v60) = 1;
    v20 = v55;
    v21 = v53;
    v22 = v54;
    v23 = v50;
    v24 = v52;
    v25 = v51;
  }

  sub_10000BB78(v66);

  sub_1000AB97C(v20, v21, v22, v23, v24, v25);
  v26 = v68;
  if (!v59)
  {
    v27 = v69;
    if (!v18)
    {
      goto LABEL_6;
    }

LABEL_12:
    (*(v57 + 8))(&v26[v27[7]], v58);
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v27 = v69;
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (v19)
  {
LABEL_7:
  }

LABEL_8:

  if (v60)
  {
  }
}

uint64_t sub_100056F50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000855B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100056F78(uint64_t a1)
{
  v2 = sub_1000ABF90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100056FB4(uint64_t a1)
{
  v2 = sub_1000ABF90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100057024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = type metadata accessor for DIPError.Code();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DIPCertUsage();
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DIPOIDVerifier();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_100836270, &unk_1006C5180);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = sub_100007224(&qword_100837938, &qword_1006C99F0);
  v56 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for IdentityProofingResponse(0);
  v14 = __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 28);
  v18 = type metadata accessor for VerifiedClaim(0);
  v19 = *(*(v18 - 8) + 56);
  v69 = v17;
  v59 = v16;
  v19(&v16[v17], 1, 1, v18);
  v20 = a1[3];
  v58 = a1;
  sub_10000BA08(a1, v20);
  sub_1000B24B0();
  v21 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    v22 = v69;
    v25 = v59;
    sub_10000BB78(v58);
    sub_10000BE18(&v25[v22], &qword_100836270, &unk_1006C5180);
  }

  else
  {
    v46 = v18;
    v57 = v9;
    v45 = v13;
    v44 = v6;
    v62 = 0;
    sub_1000ACC1C();
    v23 = v12;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v69;
    v27 = v66;
    v28 = v67;
    v29 = v64;
    v30 = v59;
    *(v59 + 2) = v65;
    *(v30 + 48) = v27;
    v31 = v68;
    *(v30 + 64) = v28;
    *(v30 + 80) = v31;
    *v30 = v63;
    *(v30 + 16) = v29;
    LOBYTE(v61[0]) = 1;
    *(v30 + 96) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v30 + 104) = v32;
    v43 = v32;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v60 = 2;
    sub_10007FD2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = v61[0];
    *(v30 + 112) = v61[0];
    LOBYTE(v61[0]) = 3;
    sub_10009F43C(&qword_100837948, type metadata accessor for VerifiedClaim, &unk_1006D0E30);
    v33 = v57;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v33, v30 + v24, &qword_100836270, &unk_1006C5180);
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    v60 = 4;
    sub_1000AB2B0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v34 = v56;
    v35 = v45;
    *(v30 + *(v45 + 32)) = v61[0];
    type metadata accessor for LegacyWorkflowPackage(0);
    v60 = 5;
    sub_10009F43C(&qword_100837950, type metadata accessor for LegacyWorkflowPackage, &unk_1006C1994);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v57 = v23;
    *(v30 + *(v35 + 36)) = v61[0];
    if (v42)
    {
      v61[3] = type metadata accessor for DateProvider();
      v61[4] = &protocol witness table for DateProvider;
      sub_100032DBC(v61);
      DateProvider.init()();
      DIPOIDVerifier.init(dateProvider:)();
      v36 = v52 + 104;
      v37 = v53;
      (*(v52 + 104))(v53, enum case for DIPCertUsage.clientIdentity(_:), v55);
      v38 = DIPOIDVerifier.verifyChain(fromBase64DER:forUsage:)();
      v39 = (v36 - 96);
      v52 = v51 + 8;
      v40 = v54;

      (*v39)(v37, v55);
      (*v52)(v44, v50);
    }

    else
    {
      v40 = v54;
    }

    (*(v34 + 8))(v57, v10);
    sub_10009ED78(v30, v40, type metadata accessor for IdentityProofingResponse);
    sub_10000BB78(v58);
    return sub_10009EDE0(v30, type metadata accessor for IdentityProofingResponse);
  }
}

uint64_t sub_100057B58(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_100837958, &qword_1006C99F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000B24B0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[2];
  v9 = v2[4];
  v30 = v2[3];
  v31 = v9;
  v10 = v2[4];
  v32 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v28 = v2[1];
  v29 = v12;
  v13 = *v2;
  v24 = v30;
  v25 = v10;
  v26 = v2[5];
  v27 = v13;
  v21 = v11;
  v22 = v28;
  v23 = v8;
  v20 = 0;
  sub_1000B1478(&v27, v19);
  sub_1000B14B0();
  v14 = v33;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v19[5] = v26;
  v19[0] = v21;
  v19[1] = v22;
  sub_1000ACC70(v19);
  if (v14)
  {
    return (*(v5 + 8))(v7, v4);
  }

  LOBYTE(v18) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v18 = *(v2 + 14);
  HIBYTE(v17) = 2;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10009E8DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v16 = type metadata accessor for IdentityProofingResponse(0);
  LOBYTE(v18) = 3;
  type metadata accessor for VerifiedClaim(0);
  sub_10009F43C(&qword_100837960, type metadata accessor for VerifiedClaim, &unk_1006D0E08);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v18 = *(v2 + *(v16 + 32));
  HIBYTE(v17) = 4;
  sub_100007224(&qword_1008361E8, &qword_1006C5158);
  sub_1000AB518();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v18 = *(v2 + *(v16 + 36));
  HIBYTE(v17) = 5;
  type metadata accessor for LegacyWorkflowPackage(0);
  sub_10009F43C(&qword_1008377C8, type metadata accessor for LegacyWorkflowPackage, &unk_1006C196C);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v5 + 8))(v7, 0);
}

uint64_t sub_100057F4C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837200, &qword_1006C96C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000AED80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[0] = *v3;
  v11[0] = 0;
  sub_1000AEE7C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    memcpy(v11, v3 + 8, 0x148uLL);
    v11[351] = 1;
    sub_1000AEED0(v3, v10);
    sub_1000AEF08();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v10, v11, 0x148uLL);
    sub_1000AEF5C(v10);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100058138()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0x6465696669726576;
  v4 = 0x6B726F577478656ELL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0x45656D69746E7572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100058220@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000859A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100058248(uint64_t a1)
{
  v2 = sub_1000B24B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058284(uint64_t a1)
{
  v2 = sub_1000B24B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100058308(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100058414@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100085BCC(*a1);
  *a2 = result;
  return result;
}

void sub_100058444(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5919309;
  v5 = 0xE800000000000000;
  v6 = 0x444145525F43464ELL;
  if (v2 != 5)
  {
    v6 = 0x454B4F545F494950;
    v5 = 0xE90000000000004ELL;
  }

  v7 = 0x80000001006F8E70;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x4E495F444559454BLL;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5391183;
  if (v2 != 1)
  {
    v10 = 0x454349564544;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1000585C8()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x72756F5361746164;
  }
}

uint64_t sub_100058600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1000586E4(uint64_t a1)
{
  v2 = sub_1000AED80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058720(uint64_t a1)
{
  v2 = sub_1000AED80();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005875C@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100085C18(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x150uLL);
  }

  return result;
}

uint64_t sub_1000587FC()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v18 = 0;
  v19 = 0xE000000000000000;
  v1._countAndFlagsBits = 0x72756F5361746164;
  v1._object = 0xED000022203A6563;
  String.append(_:)(v1);
  v2 = *v0;
  v3 = 0xE300000000000000;
  v4 = 5919309;
  v5 = 0xE800000000000000;
  v6 = 0x444145525F43464ELL;
  if (v2 != 5)
  {
    v6 = 0x454B4F545F494950;
    v5 = 0xE90000000000004ELL;
  }

  v7 = 0x80000001006F8E70;
  v8 = 0xD000000000000013;
  if (v2 != 3)
  {
    v8 = 0x4E495F444559454BLL;
    v7 = 0xE800000000000000;
  }

  if (*v0 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5391183;
  if (v2 != 1)
  {
    v10 = 0x454349564544;
    v9 = 0xE600000000000000;
  }

  if (*v0)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v0 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v0 <= 2u)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12;
  String.append(_:)(*&v11);

  v14._countAndFlagsBits = 0x203A617461640A22;
  v14._object = 0xE900000000000022;
  String.append(_:)(v14);
  memcpy(__dst, v0 + 8, sizeof(__dst));
  _print_unlocked<A, B>(_:_:)();
  v15._countAndFlagsBits = 34;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return v18;
}

uint64_t sub_1000589B0(char a1)
{
  result = 0x3731345F666470;
  switch(a1)
  {
    case 1:
      result = 0x616E5F7473726966;
      break;
    case 2:
      v3 = 0x656C6464696DLL;
      goto LABEL_16;
    case 3:
      result = 0x6D616E5F7473616CLL;
      break;
    case 4:
    case 5:
      result = 0x5F73736572646461;
      break;
    case 6:
      result = 2037672291;
      break;
    case 7:
      result = 0x6574617473;
      break;
    case 8:
      result = 0x635F6C6174736F70;
      break;
    case 9:
      result = 0x7972746E756F63;
      break;
    case 10:
      result = 6451044;
      break;
    case 11:
      result = 0x726575737369;
      break;
    case 12:
      result = 0x61636F6C5F737067;
      break;
    case 13:
      v3 = 0x656369766564;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E5F000000000000;
      break;
    case 14:
      result = 1684628851;
      break;
    case 15:
      result = 0x6469636369;
      break;
    case 16:
      result = 0x756E5F656E6F6870;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x6F666E497A726DLL;
      break;
    case 19:
      result = 6514286;
      break;
    case 20:
      result = 0x6E656B6F54696970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100058C34(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
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

Swift::Int sub_100058CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100058D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();
}

Swift::Int sub_100058DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100058E3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100085E24(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100058E6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000589B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100058EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100085E24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100058ED4(uint64_t a1)
{
  v2 = sub_1000B28DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058F10(uint64_t a1)
{
  v2 = sub_1000B28DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100058F4C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837A38, &qword_1006C9A70);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000B28DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 16);
    v10[7] = 12;
    sub_100007224(&qword_1008355A8, &qword_1006C1A08);
    sub_10009D7D8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v11) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_1000593B0@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100085E78(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x148uLL);
  }

  return result;
}

uint64_t sub_100059414()
{
  _StringGuts.grow(_:)(227);
  v1._countAndFlagsBits = 0x6144373134666470;
  v1._object = 0xEC000000203A6174;
  String.append(_:)(v1);
  v2 = v0[1];
  if (v2)
  {
    v3 = *v0;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = v0[1];
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x6E5F74737269660ALL;
  v6._object = 0xED0000203A656D61;
  String.append(_:)(v6);
  v7 = v0[12];
  if (v7)
  {
    v8 = v0[11];
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v0[12];
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10._countAndFlagsBits = v8;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x5F656C6464696D0ALL;
  v11._object = 0xEE00203A656D616ELL;
  String.append(_:)(v11);
  v12 = v0[14];
  if (v12)
  {
    v13 = v0[13];
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v0[14];
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0x616E5F7473616C0ALL;
  v16._object = 0xEC000000203A656DLL;
  String.append(_:)(v16);
  v17 = v0[16];
  if (v17)
  {
    v18 = v0[15];
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v0[16];
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20._countAndFlagsBits = v18;
  v20._object = v19;
  String.append(_:)(v20);

  v21._object = 0x80000001006FD330;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22 = v0[18];
  if (v22)
  {
    v23 = v0[17];
  }

  else
  {
    v23 = 0;
  }

  if (v22)
  {
    v24 = v0[18];
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  v25._countAndFlagsBits = v23;
  v25._object = v24;
  String.append(_:)(v25);

  v26._object = 0x80000001006FD350;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27 = v0[20];
  if (v27)
  {
    v28 = v0[19];
  }

  else
  {
    v28 = 0;
  }

  if (v27)
  {
    v29 = v0[20];
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  v30._countAndFlagsBits = v28;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0x203A797469630ALL;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32 = v0[22];
  if (v32)
  {
    v33 = v0[21];
  }

  else
  {
    v33 = 0;
  }

  if (v32)
  {
    v34 = v0[22];
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  v35._countAndFlagsBits = v33;
  v35._object = v34;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0x203A65746174730ALL;
  v36._object = 0xE800000000000000;
  String.append(_:)(v36);
  v37 = v0[24];
  if (v37)
  {
    v38 = v0[23];
  }

  else
  {
    v38 = 0;
  }

  if (v37)
  {
    v39 = v0[24];
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  v40._countAndFlagsBits = v38;
  v40._object = v39;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0x5F6C6174736F700ALL;
  v41._object = 0xEE00203A65646F63;
  String.append(_:)(v41);
  v42 = v0[26];
  if (v42)
  {
    v43 = v0[25];
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = v0[26];
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  v45._countAndFlagsBits = v43;
  v45._object = v44;
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0x7972746E756F630ALL;
  v46._object = 0xEA0000000000203ALL;
  String.append(_:)(v46);
  v47 = v0[28];
  if (v47)
  {
    v48 = v0[27];
  }

  else
  {
    v48 = 0;
  }

  if (v47)
  {
    v49 = v0[28];
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  v50._countAndFlagsBits = v48;
  v50._object = v49;
  String.append(_:)(v50);

  v51._countAndFlagsBits = 0x203A626F640ALL;
  v51._object = 0xE600000000000000;
  String.append(_:)(v51);
  v52 = v0[30];
  if (v52)
  {
    v53 = v0[29];
  }

  else
  {
    v53 = 0;
  }

  if (v52)
  {
    v54 = v0[30];
  }

  else
  {
    v54 = 0xE000000000000000;
  }

  v55._countAndFlagsBits = v53;
  v55._object = v54;
  String.append(_:)(v55);

  v56._countAndFlagsBits = 0x3A7265757373690ALL;
  v56._object = 0xE900000000000020;
  String.append(_:)(v56);
  v57 = v0[32];
  if (v57)
  {
    v58 = v0[31];
  }

  else
  {
    v58 = 0;
  }

  if (v57)
  {
    v59 = v0[32];
  }

  else
  {
    v59 = 0xE000000000000000;
  }

  v60._countAndFlagsBits = v58;
  v60._object = v59;
  String.append(_:)(v60);

  v61._countAndFlagsBits = 0x61636F4C7370670ALL;
  v61._object = 0xEE00203A6E6F6974;
  String.append(_:)(v61);

  v62 = Array.description.getter();
  v64 = v63;

  v65._countAndFlagsBits = v62;
  v65._object = v64;
  String.append(_:)(v65);

  v66._countAndFlagsBits = 0x4E6563697665640ALL;
  v66._object = 0xED0000203A656D61;
  String.append(_:)(v66);
  v67 = v0[4];
  if (v67)
  {
    v68 = v0[3];
  }

  else
  {
    v68 = 0;
  }

  if (v67)
  {
    v69 = v0[4];
  }

  else
  {
    v69 = 0xE000000000000000;
  }

  v70._countAndFlagsBits = v68;
  v70._object = v69;
  String.append(_:)(v70);

  v71._countAndFlagsBits = 0x203A646965730ALL;
  v71._object = 0xE700000000000000;
  String.append(_:)(v71);
  v72 = v0[6];
  if (v72)
  {
    v73 = v0[5];
  }

  else
  {
    v73 = 0;
  }

  if (v72)
  {
    v74 = v0[6];
  }

  else
  {
    v74 = 0xE000000000000000;
  }

  v75._countAndFlagsBits = v73;
  v75._object = v74;
  String.append(_:)(v75);

  v76._countAndFlagsBits = 0x203A64696363690ALL;
  v76._object = 0xE800000000000000;
  String.append(_:)(v76);
  v77 = v0[8];
  if (v77)
  {
    v78 = v0[7];
  }

  else
  {
    v78 = 0;
  }

  if (v77)
  {
    v79 = v0[8];
  }

  else
  {
    v79 = 0xE000000000000000;
  }

  v80._countAndFlagsBits = v78;
  v80._object = v79;
  String.append(_:)(v80);

  v81._countAndFlagsBits = 0x754E656E6F68700ALL;
  v81._object = 0xEE00203A7265626DLL;
  String.append(_:)(v81);
  v82 = v0[10];
  if (v82)
  {
    v83 = v0[9];
  }

  else
  {
    v83 = 0;
  }

  if (v82)
  {
    v84 = v0[10];
  }

  else
  {
    v84 = 0xE000000000000000;
  }

  v85._countAndFlagsBits = v83;
  v85._object = v84;
  String.append(_:)(v85);

  _StringGuts.grow(_:)(23);

  v86 = v0[36];
  if (v86)
  {
    v87 = v0[35];
  }

  else
  {
    v87 = 0;
  }

  if (v86)
  {
    v88 = v0[36];
  }

  else
  {
    v88 = 0xE000000000000000;
  }

  v89._countAndFlagsBits = v87;
  v89._object = v88;
  String.append(_:)(v89);

  v90._countAndFlagsBits = 0x63666E202020200ALL;
  v90._object = 0xEA0000000000203ALL;
  String.append(_:)(v90);
  v91 = v0[38];
  if (v91)
  {
    v92 = v0[37];
  }

  else
  {
    v92 = 0;
  }

  if (v91)
  {
    v93 = v0[38];
  }

  else
  {
    v93 = 0xE000000000000000;
  }

  v94._countAndFlagsBits = v92;
  v94._object = v93;
  String.append(_:)(v94);

  v95._countAndFlagsBits = 0x3A7A726D20202020;
  v95._object = 0xE900000000000020;
  String.append(_:)(v95);

  return 0;
}

uint64_t sub_100059A80(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837240, &qword_1006C96D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000AEF8C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  sub_100007224(&qword_100833688, &qword_1006BF6D0);
  sub_1000BA30C(&qword_100837248, &qword_100833688, &qword_1006BF6D0, &protocol conformance descriptor for SealedMessage<A>);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ProofingData(0) + 20));
    v10[15] = 1;
    sub_100007224(&unk_100835CC0, &qword_1006C2148);
    sub_1000AF0B8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100059C6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = sub_100007224(&qword_100833698, &qword_1006BF6E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_100007224(&qword_100837218, &qword_1006C96C8);
  v8 = *(v7 - 8);
  v20 = v7;
  v21 = v8;
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = type metadata accessor for ProofingData(0);
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(a1, a1[3]);
  sub_1000AEF8C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v18 = v13;
  sub_100007224(&qword_100833688, &qword_1006BF6D0);
  v24 = 0;
  sub_1000BA30C(&qword_100837228, &qword_100833688, &qword_1006BF6D0, &protocol conformance descriptor for SealedMessage<A>);
  v14 = v20;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15 = v18;
  sub_1000B1FC8(v6, v18, &qword_100833698, &qword_1006BF6E0);
  sub_100007224(&unk_100835CC0, &qword_1006C2148);
  v23 = 1;
  sub_1000AEFE0();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v21 + 8))(v10, v14);
  *(v15 + *(v11 + 20)) = v22;
  sub_10009ED78(v15, v19, type metadata accessor for ProofingData);
  sub_10000BB78(a1);
  return sub_10009EDE0(v15, type metadata accessor for ProofingData);
}

uint64_t sub_100059FC0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837358, &qword_1006C9730);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000AF9C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = *(v3 + 48);
    v12 = *(v3 + 32);
    v13 = v10;
    v14 = *(v3 + 64);
    v11[15] = 2;
    sub_1000AFAD8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005A1A8(void *a1)
{
  v3 = sub_100007224(&qword_100838370, &qword_1006CFCC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA3FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10005A348(void *a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100837738, &qword_1006C98F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000B171C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  sub_100007224(&qword_100837720, &qword_1006C98E8);
  sub_1000B1850();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10005A4A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = sub_100007224(&qword_100837320, &qword_1006C9720);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000BA08(a1, a1[3]);
  sub_1000AF6BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_100007224(&qword_1008372F8, &qword_1006C9710);
  sub_1000AF86C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = a4;
    v14 = 2;
    sub_100007224(&qword_100837310, &qword_1006C9718);
    sub_1000AF944();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10005A6E4(char a1)
{
  result = 0x656E697272756C62;
  switch(a1)
  {
    case 1:
      result = 0x426563616C70616CLL;
      break;
    case 2:
      result = 0x657275736F707865;
      break;
    case 3:
      result = 0x7473694464726163;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 10:
    case 36:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6374695064616568;
      break;
    case 7:
      result = 0x6C6C6F5264616568;
      break;
    case 8:
      result = 0x77615964616568;
      break;
    case 9:
    case 12:
    case 13:
    case 16:
      result = 0xD000000000000012;
      break;
    case 11:
    case 14:
    case 41:
    case 51:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x5465727574706163;
      break;
    case 17:
    case 19:
    case 33:
    case 40:
      result = 0x746E656D75636F64;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 20:
      v3 = 1952867692;
      goto LABEL_38;
    case 21:
      result = 0x6972447468676972;
      break;
    case 22:
      result = 0x74666972447075;
      break;
    case 23:
      v3 = 1853321060;
LABEL_38:
      result = v3 | 0x6669724400000000;
      break;
    case 24:
      result = 0x666E6F4365636166;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 26:
      result = 0x73656361466D756ELL;
      break;
    case 27:
      result = 0x6C6576654C78756CLL;
      break;
    case 28:
      result = 0x6544373134666470;
      break;
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0x61436F7475417369;
      break;
    case 31:
      result = 0x456873616C467369;
      break;
    case 32:
      result = 0x754E726575737369;
      break;
    case 34:
      result = 0x7465446572616C67;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 37:
      result = 0xD000000000000010;
      break;
    case 38:
      result = 0x6556746567726174;
      break;
    case 39:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0x686374614D72636FLL;
      break;
    case 43:
      result = 0x6365446C65646F6DLL;
      break;
    case 44:
      result = 0x7265566C65646F6DLL;
      break;
    case 45:
      result = 0x7461726F6C707865;
      break;
    case 46:
      result = 0x6F436E6163736572;
      break;
    case 47:
      result = 0x7373656E6576696CLL;
      break;
    case 48:
      result = 0x646F43726F727265;
      break;
    case 49:
      result = 0x6165706552626F64;
      break;
    case 50:
      result = 0x6165706552656F64;
      break;
    case 52:
      result = 0xD000000000000017;
      break;
    case 53:
      result = 0x526E6163537A726DLL;
      break;
    case 54:
      result = 0x636F44664F656761;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005AD84(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008372B8, &qword_1006C9700);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v37 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AF190();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 4);
  LOBYTE(v37[0]) = 0;
  v39 = v9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 12);
    LOBYTE(v37[0]) = 1;
    v39 = v10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 20);
    LOBYTE(v37[0]) = 2;
    v39 = v11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v3 + 28);
    LOBYTE(v37[0]) = 3;
    v39 = v12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 36);
    LOBYTE(v37[0]) = 4;
    v39 = v13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = *(v3 + 44);
    LOBYTE(v37[0]) = 5;
    v39 = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 52);
    LOBYTE(v37[0]) = 6;
    v39 = v15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = *(v3 + 60);
    LOBYTE(v37[0]) = 7;
    v39 = v16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 68);
    LOBYTE(v37[0]) = 8;
    v39 = v17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + 76);
    LOBYTE(v37[0]) = 9;
    v39 = v19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v3 + 84);
    LOBYTE(v37[0]) = 10;
    v39 = v20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v3 + 92);
    LOBYTE(v37[0]) = 11;
    v39 = v21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 100);
    LOBYTE(v37[0]) = 12;
    v39 = v22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 108);
    LOBYTE(v37[0]) = 13;
    v39 = v23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = *(v3 + 116);
    LOBYTE(v37[0]) = 14;
    v39 = v24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 124);
    LOBYTE(v37[0]) = 15;
    v39 = v25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = *(v3 + 132);
    LOBYTE(v37[0]) = 16;
    v39 = v26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + 140);
    LOBYTE(v37[0]) = 17;
    v39 = v27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v28 = *(v3 + 148);
    LOBYTE(v37[0]) = 18;
    v39 = v28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = *(v3 + 156);
    LOBYTE(v37[0]) = 19;
    v39 = v29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v30 = *(v3 + 164);
    LOBYTE(v37[0]) = 20;
    v39 = v30;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = *(v3 + 172);
    LOBYTE(v37[0]) = 21;
    v39 = v31;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v32 = *(v3 + 180);
    LOBYTE(v37[0]) = 22;
    v39 = v32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = *(v3 + 188);
    LOBYTE(v37[0]) = 23;
    v39 = v33;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v37[0] = *(v3 + 192);
    v39 = 24;
    sub_100007224(&unk_10083A0F0, &unk_1006C96E0);
    sub_1000AF4BC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v37[0] = *(v3 + 200);
    v39 = 25;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v37[0]) = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 28;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 29;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 30;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 31;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 33;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 34;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v37[0] = *(v3 + 280);
    v39 = 35;
    sub_100007224(&qword_100837278, &unk_1006DA590);
    sub_1000AF538();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v37[0] = *(v3 + 288);
    v39 = 36;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v37[0] = *(v3 + 296);
    v39 = 37;
    sub_100007224(&qword_100837288, &qword_1006C96F0);
    sub_1000AF5B4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v37[0] = *(v3 + 304);
    v39 = 38;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v37[0] = *(v3 + 312);
    v39 = 39;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v37[0] = *(v3 + 320);
    v39 = 40;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v34 = *(v3 + 408);
    v37[4] = *(v3 + 392);
    *v38 = v34;
    *&v38[10] = *(v3 + 418);
    v35 = *(v3 + 344);
    v37[0] = *(v3 + 328);
    v37[1] = v35;
    v36 = *(v3 + 376);
    v37[2] = *(v3 + 360);
    v37[3] = v36;
    v39 = 41;
    sub_1000AF668();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v37[0] = *(v3 + 440);
    v39 = 42;
    sub_100007224(&qword_1008372A8, &qword_1006C96F8);
    sub_1000AF3E4(&qword_1008372E0, &protocol witness table for String, &protocol witness table for Int, &protocol conformance descriptor for <> [A : B]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v37[0]) = 43;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 44;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 45;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 46;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 47;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 48;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 49;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 50;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 51;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 52;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 53;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v37[0]) = 54;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005BA00(void *a1)
{
  v3 = sub_100007224(&qword_100838358, &qword_1006CFCB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA3A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[9] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10005BC3C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008375A8, &qword_1006C9808);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v17 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B0D04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v32 = 0;
  sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  sub_1000BA30C(&qword_1008374A0, &qword_100835A30, &unk_1006DB6C0, &protocol conformance descriptor for JWSSignedJSON<A>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for LivenessDataV2(0) + 20));
    v11 = v10[3];
    v12 = v10[5];
    v28 = v10[4];
    v29 = v12;
    v13 = v10[5];
    v30 = v10[6];
    v14 = v10[1];
    v15 = v10[3];
    v26 = v10[2];
    v27 = v15;
    v16 = v10[1];
    v25[0] = *v10;
    v25[1] = v16;
    v22 = v28;
    v23 = v13;
    v24 = v10[6];
    v18 = v25[0];
    v19 = v14;
    v20 = v26;
    v21 = v11;
    v31 = 1;
    sub_1000B0DAC(v25, v17);
    sub_1000B0DE4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[4] = v22;
    v17[5] = v23;
    v17[6] = v24;
    v17[0] = v18;
    v17[1] = v19;
    v17[2] = v20;
    v17[3] = v21;
    sub_1000B0E38(v17);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005BEB0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  v29 = sub_100007224(&qword_100837590, &qword_1006C9800);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v23 - v7;
  v9 = type metadata accessor for LivenessDataV2(0);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(a1, a1[3]);
  sub_1000B0D04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v12 = v26;
  v13 = v27;
  v24 = v11;
  LOBYTE(v30) = 0;
  sub_1000BA30C(&qword_100837040, &qword_100835A30, &unk_1006DB6C0, &protocol conformance descriptor for JWSSignedJSON<A>);
  v14 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v24, v6, v14);
  v37 = 1;
  sub_1000B0D58();
  v15 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v8, v15);
  v17 = v24;
  v16 = v25;
  v18 = &v24[*(v9 + 20)];
  v19 = v35;
  *(v18 + 4) = v34;
  *(v18 + 5) = v19;
  *(v18 + 6) = v36;
  v20 = v31;
  *v18 = v30;
  *(v18 + 1) = v20;
  v21 = v33;
  *(v18 + 2) = v32;
  *(v18 + 3) = v21;
  sub_10009ED78(v17, v16, type metadata accessor for LivenessDataV2);
  sub_10000BB78(a1);
  return sub_10009EDE0(v17, type metadata accessor for LivenessDataV2);
}

uint64_t sub_10005C230(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835830, &unk_1006C1B20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_10009F1DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[7];
  v10 = v3[9];
  v57 = v3[8];
  v58[0] = v10;
  *(v58 + 14) = *(v3 + 158);
  v11 = v3[3];
  v12 = v3[5];
  v53 = v3[4];
  v54 = v12;
  v13 = v3[5];
  v14 = v3[7];
  v55 = v3[6];
  v56 = v14;
  v15 = v3[1];
  v50[0] = *v3;
  v50[1] = v15;
  v16 = v3[3];
  v18 = *v3;
  v17 = v3[1];
  v51 = v3[2];
  v52 = v16;
  v19 = v3[9];
  v44 = v57;
  v45[0] = v19;
  *(v45 + 14) = *(v3 + 158);
  v40 = v53;
  v41 = v13;
  v42 = v55;
  v43 = v9;
  v36 = v18;
  v37 = v17;
  v38 = v51;
  v39 = v11;
  v35 = 0;
  sub_10000BBC4(v50, v33, &qword_100835828, &qword_1006C1B18);
  sub_10009F340();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v33[8] = v44;
  *v34 = v45[0];
  *&v34[14] = *(v45 + 14);
  v33[4] = v40;
  v33[5] = v41;
  v33[6] = v42;
  v33[7] = v43;
  v33[0] = v36;
  v33[1] = v37;
  v33[2] = v38;
  v33[3] = v39;
  sub_10000BE18(v33, &qword_100835828, &qword_1006C1B18);
  if (!v2)
  {
    v21 = v3[14];
    v22 = v3[12];
    v47 = v3[13];
    v48 = v21;
    v23 = v3[14];
    v49[0] = v3[15];
    *(v49 + 10) = *(v3 + 250);
    v24 = v3[12];
    v46[0] = v3[11];
    v46[1] = v24;
    v30 = v47;
    v31 = v23;
    v32[0] = v3[15];
    *(v32 + 10) = *(v3 + 250);
    v28 = v46[0];
    v29 = v22;
    v27 = 1;
    sub_10000BBC4(v46, v25, &qword_100835840, &unk_1006DB6D0);
    sub_10009F394();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25[2] = v30;
    v25[3] = v31;
    *v26 = v32[0];
    *&v26[10] = *(v32 + 10);
    v25[0] = v28;
    v25[1] = v29;
    sub_10000BE18(v25, &qword_100835840, &unk_1006DB6D0);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10005C594(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      return 0x7365727574736567;
    case 2:
      return 0x746169636F737361;
    case 3:
      return 0xD000000000000017;
    case 4:
      return 0xD000000000000010;
    case 5:
      v3 = 10;
      goto LABEL_17;
    case 6:
      return 0x6C416F54656D6974;
    case 7:
    case 13:
      v3 = 5;
      goto LABEL_17;
    case 8:
      return 0x6B6174655278616DLL;
    case 9:
      return 0x546E6F6973736573;
    case 10:
      return 0xD000000000000014;
    case 11:
      return 0xD000000000000016;
    case 12:
      return 0xD000000000000012;
    case 14:
      return 0xD000000000000013;
    case 15:
      return 0xD00000000000001ELL;
    case 16:
      v3 = 13;
LABEL_17:
      result = v3 | 0xD000000000000010;
      break;
    case 17:
      result = 0x7365726975716572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x65526569666C6573;
      break;
    case 21:
      result = 0x7541656C62616E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005C8A4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836BE0, &qword_1006C94D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000AA8A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[7] = 1;
    sub_100007224(&qword_100836BB8, &qword_1006C94C0);
    sub_1000AAAF0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10005CD60(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x6E6F6973726576;
    v6 = 0x6B6174655278616DLL;
    v7 = 0x546E6F6973736573;
    if (a1 != 3)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x746169636F737361;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6172466C61746F74;
    v2 = 0x7541656C62616E65;
    if (a1 == 9)
    {
      v2 = 0xD000000000000016;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000011;
    if (a1 != 6)
    {
      v3 = 0xD000000000000016;
    }

    if (a1 == 5)
    {
      v3 = 0x7365726975716572;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10005CF10(void *a1)
{
  v3 = sub_100007224(&qword_100836BF8, &qword_1006C94D8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000AAA34();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[9] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[8] = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[7] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[6] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[5] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10005D1C4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100007224(&qword_1008382E0, &qword_1006CFC78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA168();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005D34C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6D617473656D6974;
    v7 = 0xD000000000000017;
    if (a1 != 10)
    {
      v7 = 0x65756C615678756CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x536465726F6E6769;
    if (a1 != 6)
    {
      v8 = 0x656D737365737361;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7373656E6576696CLL;
    v2 = 0x656D737365737361;
    v3 = 0x6F4C63634E78616DLL;
    if (a1 != 4)
    {
      v3 = 0x694863634E78616DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x656D737365737361;
    if (a1 != 1)
    {
      v4 = 0x6D617473656D6974;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10005D528(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837600, &qword_1006C9830);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B0E68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v17 = *(v3 + 16);
    v16 = 1;
    sub_100007224(&qword_100837278, &unk_1006DA590);
    sub_1000AF538();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v3 + 24);
    v16 = 2;
    sub_100007224(&qword_1008375C8, &qword_1006C9818);
    sub_1000B1094();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = *(v3 + 36);
    LOBYTE(v17) = 3;
    v16 = v9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + 44);
    LOBYTE(v17) = 4;
    v16 = v10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 52);
    LOBYTE(v17) = 5;
    v16 = v11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v17) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 72);
    v16 = 7;
    sub_100007224(&qword_1008375E8, &qword_1006C9828);
    sub_1000B1194();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12 = *(v3 + 84);
    LOBYTE(v17) = 8;
    v16 = v12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 88);
    v16 = 9;
    v13 = sub_100007224(&qword_1008375E0, &qword_1006C9820);
    sub_1000B1118();
    v15 = v13;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v3 + 96);
    v16 = 10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = *(v3 + 104);
    v16 = 11;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005D948(void *a1, uint64_t a2, float a3)
{
  v5 = sub_100007224(&qword_100837A50, &qword_1006C9A80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2968();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005DAD4()
{
  if (*v0)
  {
    return 0x646564616F6C7075;
  }

  else
  {
    return 0x61746144766469;
  }
}

uint64_t sub_10005DB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61746144766469 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646564616F6C7075 && a2 == 0xEC00000061746144)
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

uint64_t sub_10005DBF8(uint64_t a1)
{
  v2 = sub_1000AEF8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005DC34(uint64_t a1)
{
  v2 = sub_1000AEF8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005DCA0()
{
  v1 = 0x7475626972747461;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4961746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644979656BLL;
  }
}

uint64_t sub_10005DD00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100086D64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005DD28(uint64_t a1)
{
  v2 = sub_1000AF9C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005DD64(uint64_t a1)
{
  v2 = sub_1000AF9C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005DDA0@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100086E7C(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_10005DE0C()
{
  v1 = 1702521203;
  if (*v0 != 1)
  {
    v1 = 0x48746E65746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x644964726F636572;
  }
}

uint64_t sub_10005DE68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100087188(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005DE90(uint64_t a1)
{
  v2 = sub_1000BA3FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005DECC(uint64_t a1)
{
  v2 = sub_1000BA3FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005DF08@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000872A4(a2, v6);
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

uint64_t sub_10005DF8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D7363697274656DLL && a2 == 0xEA00000000007061)
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

uint64_t sub_10005E01C(uint64_t a1)
{
  v2 = sub_1000B171C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E058(uint64_t a1)
{
  v2 = sub_1000B171C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005E094@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000874B8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10005E0DC()
{
  v1 = 0x4D65727574706163;
  if (*v0 != 1)
  {
    v1 = 0x74654D6F65646976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654D656E696C6E69;
  }
}

uint64_t sub_10005E158@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008763C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005E180(uint64_t a1)
{
  v2 = sub_1000AF6BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E1BC(uint64_t a1)
{
  v2 = sub_1000AF6BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005E1F8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100087768(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_10005E250@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000879EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005E284(uint64_t a1)
{
  v2 = sub_1000AF190();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E2C0(uint64_t a1)
{
  v2 = sub_1000AF190();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005E2FC@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_100088AE8(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x271uLL);
  }

  return result;
}

uint64_t sub_10005E360()
{
  v1 = *v0;
  v2 = 0x6D614E7473726966;
  v3 = 6451044;
  if (v1 != 5)
  {
    v3 = 0x6F436C6174736F70;
  }

  v4 = 0x6D754E6573756F68;
  if (v1 != 3)
  {
    v4 = 0x746565727473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656D614E7473616CLL;
  if (v1 != 1)
  {
    v5 = 0x6574617473;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10005E43C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008A8D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005E464(uint64_t a1)
{
  v2 = sub_1000BA3A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E4A0(uint64_t a1)
{
  v2 = sub_1000BA3A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005E4DC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008AB2C(a2, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10005E548()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x7373656E6576696CLL;
  }
}

uint64_t sub_10005E594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7373656E6576696CLL && a2 == 0xEE006769666E6F43;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001006FE330 == a2)
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

uint64_t sub_10005E680(uint64_t a1)
{
  v2 = sub_1000B0D04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E6BC(uint64_t a1)
{
  v2 = sub_1000B0D04();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10005E728()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_10005E760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001006FD5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001006FD5F0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10005E844(uint64_t a1)
{
  v2 = sub_10009F1DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E880(uint64_t a1)
{
  v2 = sub_10009F1DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10005E8BC@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_10008AE24(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x10AuLL);
  }

  return result;
}

uint64_t sub_10005E928@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008B118(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005E95C(uint64_t a1)
{
  v2 = sub_1000AA8A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E998(uint64_t a1)
{
  v2 = sub_1000AA8A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005E9D4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008B840(a2, v9);
  if (!v2)
  {
    v5 = v10[0];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 158) = *(v10 + 14);
    v6 = v9[5];
    *(a1 + 64) = v9[4];
    *(a1 + 80) = v6;
    v7 = v9[7];
    *(a1 + 96) = v9[6];
    *(a1 + 112) = v7;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    result = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10005EA58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008BFF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005EA8C(uint64_t a1)
{
  v2 = sub_1000AAA34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EAC8(uint64_t a1)
{
  v2 = sub_1000AAA34();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10005EB04@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10008C3A0(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 74) = *(v8 + 10);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_10005EB70()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x65727574736567;
  }
}

uint64_t sub_10005EBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65727574736567 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t sub_10005EC80(uint64_t a1)
{
  v2 = sub_1000BA168();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005ECBC(uint64_t a1)
{
  v2 = sub_1000BA168();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005ECF8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10008C8FC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10005ED48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008CAA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005ED7C(uint64_t a1)
{
  v2 = sub_1000B0E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EDB8(uint64_t a1)
{
  v2 = sub_1000B0E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10005EDF4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008CEA0(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10005EE60()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x326567617473;
  }
}

uint64_t sub_10005EE9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x326567617473 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
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

uint64_t sub_10005EF7C(uint64_t a1)
{
  v2 = sub_1000B2968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005EFB8(uint64_t a1)
{
  v2 = sub_1000B2968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005EFF4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10008D5EC(a2);
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_10005F044(float a1)
{
  _StringGuts.grow(_:)(26);
  v1._countAndFlagsBits = 0x3A3265676174730ALL;
  v1._object = 0xE900000000000020;
  String.append(_:)(v1);
  Float.write<A>(to:)();
  v2._countAndFlagsBits = 0x7473656D6974202CLL;
  v2._object = 0xED0000203A706D61;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  return 0;
}

uint64_t sub_10005F12C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  v15 = a4;
  v7 = sub_100007224(&qword_100837378, &qword_1006C9740);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000AFB2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v11 = v14;
    v17 = v15;
    v16 = 1;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v11;
    v16 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10005F308(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100837660, &qword_1006C9850);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000B13D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10005F4F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008D798(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10005F51C(uint64_t a1)
{
  v2 = sub_1000AFB2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F558(uint64_t a1)
{
  v2 = sub_1000AFB2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005F594@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10008D8B4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_10005F5E4()
{
  if (*v0)
  {
    return 0x7461747365747461;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_10005F62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001006FE370 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461747365747461 && a2 == 0xEB000000006E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_10005F718(uint64_t a1)
{
  v2 = sub_1000B13D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F754(uint64_t a1)
{
  v2 = sub_1000B13D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005F790@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_100837650, &qword_1006C9848, sub_1000B13D0, &type metadata for CASDAttestationData.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_10005F80C(char a1)
{
  result = 0x4874736575716572;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x776F6C666B726F77;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    case 4:
      result = 0x6574707972636E65;
      break;
    case 5:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0x415064656E676973;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0x49746375646F7270;
      break;
    case 11:
      result = 0x7373656E6576696CLL;
      break;
    case 12:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    case 14:
      result = 0x676E69666F6F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10005FA44(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008371A0, &qword_1006C96B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AE7B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v14 = *v3;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v17 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v3[3];
    v14 = v3[2];
    v15 = v11;
    v16 = v3[4];
    v17 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v14) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v14 = *(v3 + 14);
    v17 = 4;
    sub_100007224(&qword_100837150, &qword_1006C96A0);
    sub_1000AEAC4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = type metadata accessor for IdentityProofingRequestV2(0);
    LOBYTE(v14) = 5;
    type metadata accessor for TiberiusWrappedAssessment(0);
    sub_10009F43C(&qword_100836EF0, type metadata accessor for TiberiusWrappedAssessment, &unk_1006C71E8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + v12[10]);
    v17 = 6;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + v12[11]);
    v17 = 7;
    sub_1000AEB74();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + v12[12]);
    v17 = 8;
    sub_100007224(&qword_100837170, &qword_1006C96A8);
    sub_1000AEBC8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v14) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 11;
    type metadata accessor for LivenessDataV2(0);
    sub_10009F43C(&qword_1008371C8, type metadata accessor for LivenessDataV2, &unk_1006C7EC0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v14 = *(v3 + v12[16]);
    v17 = 12;
    sub_100007224(&unk_100835EE8, &qword_1006C4A28);
    sub_1000AECA0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v14) = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v14) = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10005FF8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_100007224(&qword_100835E40, &qword_1006C49F8);
  __chkstk_darwin(v3 - 8);
  v95 = &v78 - v4;
  v5 = sub_100007224(&qword_100835E38, &qword_1006C49F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v78 - v6;
  v88 = sub_100007224(&qword_100837140, &qword_1006C9698);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v9 = &v78 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IdentityProofingRequestV2(0);
  __chkstk_darwin(v14);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v101 = v17;
  (*(v11 + 8))(v13, v10);
  v18 = *(v14 + 36);
  v19 = type metadata accessor for TiberiusWrappedAssessment(0);
  v20 = *(*(v19 - 8) + 56);
  v102 = v18;
  v20(&v16[v18], 1, 1, v19);
  v21 = *(v14 + 60);
  v22 = type metadata accessor for LivenessDataV2(0);
  v23 = *(*(v22 - 8) + 56);
  v96 = v21;
  v99 = v16;
  v23(&v16[v21], 1, 1, v22);
  v24 = a1[3];
  v94 = a1;
  v25 = a1;
  v26 = v9;
  sub_10000BA08(v25, v24);
  sub_1000AE7B4();
  v27 = v100;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v100 = v27;
    LODWORD(v88) = 0;
    LODWORD(v87) = 0;
    v95 = 0;
    v89 = 0;
    v97 = 0;
    v98 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v90 = _swiftEmptyArrayStorage;
    v37 = v99;
  }

  else
  {
    v28 = v7;
    v89 = v22;
    v85 = v14;
    v29 = v87;
    v109 = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v102;

    v40 = v104;
    v41 = v105;
    v42 = v106;
    v37 = v99;
    *v99 = v103;
    v37[1] = v40;
    v84 = v40;
    v37[2] = v41;
    v37[3] = v42;
    v101 = v42;
    v109 = 1;
    sub_1000AB9CC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43 = v26;
    v31 = v103;
    v44 = v104;
    v45 = v105;
    v46 = v106;
    v47 = v107;
    v48 = v108;
    v37[4] = v103;
    v37[5] = v44;
    v82 = v45;
    v37[6] = v45;
    v37[7] = v46;
    v80 = v46;
    v81 = v47;
    v37[8] = v47;
    v37[9] = v48;
    LOBYTE(v103) = 2;
    v83 = v43;
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    v79 = v48;
    v37[10] = v49;
    v37[11] = v50;
    LOBYTE(v103) = 3;
    v37[12] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37[13] = v51;
    v93 = v51;
    sub_100007224(&qword_100837150, &qword_1006C96A0);
    v109 = 4;
    sub_1000AE808();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37[14] = v103;
    LOBYTE(v103) = 5;
    sub_10009F43C(&qword_100837160, type metadata accessor for TiberiusWrappedAssessment, &unk_1006C7210);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v28, v37 + v30, &qword_100835E38, &qword_1006C49F0);
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v109 = 6;
    sub_10007FD2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v52 = v85;
    v53 = v85[10];
    v92 = v103;
    *(v37 + v53) = v103;
    v109 = 7;
    sub_1000AE8B8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v100 = 0;
    v78 = v44;
    v54 = v52[11];
    v91 = v103;
    *(v37 + v54) = v103;
    sub_100007224(&qword_100837170, &qword_1006C96A8);
    v109 = 8;
    sub_1000AE90C();
    v55 = v88;
    v56 = v100;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v100 = v56;
    if (v56)
    {
      (*(v29 + 8))(v83, v55);
      v95 = 0;
      v89 = 0;
      v97 = 0;
      v98 = 0;
      v90 = _swiftEmptyArrayStorage;
      LODWORD(v88) = 1;
      LODWORD(v87) = 1;
      v32 = v78;
      v33 = v82;
      v34 = v80;
      v35 = v81;
      v36 = v79;
    }

    else
    {
      v57 = v52[12];
      v90 = v103;
      *(v37 + v57) = v103;
      LOBYTE(v103) = 9;
      v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v98 = v59;
      v100 = 0;
      v60 = (v99 + v85[13]);
      *v60 = v58;
      v60[1] = v59;
      LOBYTE(v103) = 10;
      v61 = v100;
      v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v97 = v63;
      v100 = v61;
      if (v61)
      {
        (*(v29 + 8))(v83, v88);
        v95 = 0;
        v89 = 0;
        v97 = 0;
      }

      else
      {
        v64 = (v99 + v85[14]);
        v65 = v97;
        *v64 = v62;
        v64[1] = v65;
        LOBYTE(v103) = 11;
        sub_10009F43C(&qword_100837188, type metadata accessor for LivenessDataV2, &unk_1006C7EE8);
        v66 = v100;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v100 = v66;
        if (!v66)
        {
          sub_1000B2764(v95, v99 + v96, &qword_100835E40, &qword_1006C49F8);
          sub_100007224(&unk_100835EE8, &qword_1006C4A28);
          v109 = 12;
          sub_1000AE9E4();
          v67 = v100;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v100 = v67;
          if (!v67)
          {
            v68 = v85[16];
            v89 = v103;
            *(v99 + v68) = v103;
            LOBYTE(v103) = 13;
            v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v95 = v70;
            v100 = 0;
            v71 = (v99 + v85[17]);
            *v71 = v69;
            v71[1] = v70;
            LOBYTE(v103) = 14;
            v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v100 = 0;
            v73 = v72;
            v75 = v74;
            v76 = v99;
            v77 = (v99 + v85[18]);
            (*(v29 + 8))(v83, v88);
            *v77 = v73;
            v77[1] = v75;
            sub_10009ED78(v76, v86, type metadata accessor for IdentityProofingRequestV2);
            sub_10000BB78(v94);
            return sub_10009EDE0(v76, type metadata accessor for IdentityProofingRequestV2);
          }
        }

        (*(v29 + 8))(v83, v88);
        v95 = 0;
        v89 = 0;
      }

      LODWORD(v88) = 1;
      LODWORD(v87) = 1;
      v37 = v99;
      v32 = v78;
      v33 = v82;
      v34 = v80;
      v35 = v81;
      v36 = v79;
    }
  }

  sub_10000BB78(v94);

  sub_1000AB97C(v31, v32, v33, v34, v35, v36);
  if (v88)
  {
  }

  v38 = v102;
  if (v87)
  {
  }

  sub_10000BE18(v37 + v38, &qword_100835E38, &qword_1006C49F0);

  sub_10000BE18(v37 + v96, &qword_100835E40, &qword_1006C49F8);
}

uint64_t sub_100060DD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008DB34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100060E04(uint64_t a1)
{
  v2 = sub_1000AE7B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100060E40(uint64_t a1)
{
  v2 = sub_1000AE7B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100060EAC(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_100837830, &qword_1006C9958);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000B1EB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_1000B1478(&v31, &v18);
  sub_1000B14B0();
  v14 = v37;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_100061118()
{
  v1 = 0x65736E6F70736572;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x45656D69746E7572;
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

uint64_t sub_1000611B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008E004(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000611DC(uint64_t a1)
{
  v2 = sub_1000B1EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100061218(uint64_t a1)
{
  v2 = sub_1000B1EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100061254@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008E180(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000612C8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836F20, &qword_1006C95B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000AC808();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v12) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v12) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100061480()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x64496863746162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4874736575716572;
  }
}

uint64_t sub_1000614E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008E4D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100061510(uint64_t a1)
{
  v2 = sub_1000AC808();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006154C(uint64_t a1)
{
  v2 = sub_1000AC808();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100061588@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008E5F0(a2, v6);
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

uint64_t sub_1000615F0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836F30, &qword_1006C95B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AC85C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v12 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v13 = *(v3 + 9);
    v12 = 4;
    sub_100007224(&qword_100836F40, &qword_1006C95C0);
    sub_1000AC8B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_100061848()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10006193C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100061A1C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100061B0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008E914(*a1);
  *a2 = result;
  return result;
}

void sub_100061B3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00007265646165;
  v4 = 0x4874736575716572;
  v5 = 0xE800000000000000;
  v6 = 0x644968637461426BLL;
  v7 = 0xE700000000000000;
  v8 = 0x64496B7361546BLL;
  if (v2 != 3)
  {
    v8 = 0xD000000000000011;
    v7 = 0x80000001006F8F90;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E6F69737265566BLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100061BEC()
{
  v1 = *v0;
  v2 = 0x4874736575716572;
  v3 = 0x644968637461426BLL;
  v4 = 0x64496B7361546BLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F69737265566BLL;
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

unint64_t sub_100061C98@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10008E914(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100061CC0(uint64_t a1)
{
  v2 = sub_1000AC85C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100061CFC(uint64_t a1)
{
  v2 = sub_1000AC85C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100061D38@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008E960(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_100061D9C(void *a1)
{
  v3 = sub_100007224(&qword_1008376C0, &qword_1006C9898);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACF74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100061F60()
{
  v1 = 0x7964616572;
  v2 = 0x6F43737574617473;
  if (*v0 != 2)
  {
    v2 = 0x654D737574617473;
  }

  if (*v0)
  {
    v1 = 0x746E497972746572;
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

uint64_t sub_100061FF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008EDF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006201C(uint64_t a1)
{
  v2 = sub_1000ACF74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100062058(uint64_t a1)
{
  v2 = sub_1000ACF74();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100062094@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008EF68(a2, v6);
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

uint64_t sub_1000620FC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008376C8, &qword_1006C98A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACE04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 48);
    v10[15] = 3;
    sub_100007224(&qword_100836F40, &qword_1006C95C0);
    sub_1000AC8B0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[14] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10[13] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10006236C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100062474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008F1A4(*a1);
  *a2 = result;
  return result;
}

void sub_1000624A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6E6F69737265566BLL;
  v5 = 0xE900000000000073;
  v6 = 0x646E616D6D6F436BLL;
  v7 = 0xEA00000000006564;
  v8 = 0x6F43737574617473;
  if (v2 != 4)
  {
    v8 = 0x6461655278614D6BLL;
    v7 = 0xEC000000657A6953;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x644968637461426BLL;
  if (v2 != 1)
  {
    v10 = 0x64496B7361546BLL;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_100062574()
{
  v1 = *v0;
  v2 = 0x6E6F69737265566BLL;
  v3 = 0x646E616D6D6F436BLL;
  v4 = 0x6F43737574617473;
  if (v1 != 4)
  {
    v4 = 0x6461655278614D6BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x644968637461426BLL;
  if (v1 != 1)
  {
    v5 = 0x64496B7361546BLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100062640@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10008F1A4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100062668(uint64_t a1)
{
  v2 = sub_1000ACE04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000626A4(uint64_t a1)
{
  v2 = sub_1000ACE04();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000626E0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008F1F0(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

Swift::Int sub_100062760()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000627B4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000627EC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10006283C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100082140(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100062930()
{
  sub_100007224(&qword_100835958, &qword_1006C1B88);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1006C0990;
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();

  return v0;
}

uint64_t sub_100062AD4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008373E8, &qword_1006C9770);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000AFEB0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[10] = *(v3 + 80);
    v10[9] = 5;
    sub_1000AFFC0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100062D14(uint64_t a1)
{
  v2 = v1;
  v3 = __chkstk_darwin(a1);
  v4 = sub_100007224(&qword_1008376D0, &qword_1006C98A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6 - 8];
  sub_10000BA08(v3, v3[3]);
  sub_1000ACDB0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v11, v2, sizeof(v11));
  sub_1000B1558(v2, v10);
  sub_1000B0600();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  memcpy(v10, v11, 0x2181uLL);
  sub_1000B1590(v10);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100062EC0(void *a1)
{
  v3 = sub_100007224(&qword_100837580, &qword_1006C97F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000BA08(a1, a1[3]);
  sub_1000B0CB0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for ActionRequest(0);
    v8[14] = 1;
    type metadata accessor for PendingActionContext(0);
    sub_10009F43C(&qword_100837588, type metadata accessor for PendingActionContext, &unk_1006C8140);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000630AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_100007224(&unk_100840960, &qword_1006DBCB0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = sub_100007224(&qword_100837568, &qword_1006C97F0);
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = type metadata accessor for ActionRequest(0);
  __chkstk_darwin(v10);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000BA08(a1, a1[3]);
  sub_1000B0CB0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  v13 = v25;
  v29 = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[1] = v14;
  v22[1] = v14;
  v23 = v12;
  type metadata accessor for PendingActionContext(0);
  v28 = 1;
  sub_10009F43C(&qword_100837578, type metadata accessor for PendingActionContext, &unk_1006C8168);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000B1FC8(v6, v23 + *(v10 + 20), &unk_100840960, &qword_1006DBCB0);
  v27 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v13 + 8))(v9, v26);
  v19 = v23;
  v18 = v24;
  v20 = (v23 + *(v10 + 24));
  *v20 = v15;
  v20[1] = v17;
  sub_10009ED78(v19, v18, type metadata accessor for ActionRequest);
  sub_10000BB78(a1);
  return sub_10009EDE0(v19, type metadata accessor for ActionRequest);
}

uint64_t sub_10006344C()
{
  v1 = *v0;
  v2 = 0x776F6C666B726F77;
  v3 = 0x6E6F69676572;
  v4 = 0x65676175676E616CLL;
  if (v1 != 4)
  {
    v4 = 0x74656B637562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F6973726556736FLL;
  if (v1 != 1)
  {
    v5 = 0x6F69737265566462;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100063510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008F644(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100063538(uint64_t a1)
{
  v2 = sub_1000AFEB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063574(uint64_t a1)
{
  v2 = sub_1000AFEB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000635B0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10008F848(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100063640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001006F8C00 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1000636D4(uint64_t a1)
{
  v2 = sub_1000ACDB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063710(uint64_t a1)
{
  v2 = sub_1000ACDB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10006374C(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  result = sub_10008FCE8(v2);
  if (!v1)
  {
    return memcpy(v4, __src, 0x2181uLL);
  }

  return result;
}

uint64_t sub_1000637B4(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  memcpy(__dst, v1, sizeof(__dst));
  return sub_100062D14(v2);
}

unint64_t sub_100063824()
{
  v1 = 0x747865746E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_100063880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10008FEBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000638A8(uint64_t a1)
{
  v2 = sub_1000B0CB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000638E4(uint64_t a1)
{
  v2 = sub_1000B0CB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100063950(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xEE0059525445525FLL;
  v4 = 0xD000000000000010;
  v5 = 0x80000001006F8AB0;
  if (v2 == 1)
  {
    v4 = 0x45444F4348545541;
  }

  else
  {
    v3 = 0x80000001006F8AB0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x45444F4348545541;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 == 1)
  {
    v8 = 0x45444F4348545541;
    v5 = 0xEE0059525445525FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x45444F4348545541;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100063A44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100063AE8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100063B78(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100063C18@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008FFD8(*a1);
  *a2 = result;
  return result;
}

void sub_100063C48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEE0059525445525FLL;
  v5 = 0x45444F4348545541;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001006F8AB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x45444F4348545541;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100063D68()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0x45444F4348545541;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x45444F4348545541;
  }
}

uint64_t sub_100063DC4(uint64_t a1)
{
  v2 = sub_1000B0BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063E00(uint64_t a1)
{
  v2 = sub_1000B0BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100063E3C(char a1)
{
  result = 0x5372656E74726170;
  switch(a1)
  {
    case 1:
    case 24:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6C616548666C6573;
      break;
    case 4:
      result = 0x676E69666F6F7270;
      break;
    case 5:
    case 23:
      result = 0xD000000000000010;
      break;
    case 6:
    case 16:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x4D79616C70736964;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 11:
    case 12:
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
    case 15:
      result = 0x776F6C666B726F77;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0x5570657453646964;
      break;
    case 21:
      result = 0xD000000000000019;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 25:
      result = 0x7373656E6576696CLL;
      break;
    case 26:
    case 29:
      result = 0xD000000000000014;
      break;
    case 27:
      result = 0x6179727465527369;
      break;
    case 28:
      result = 0x6E656B6F54696970;
      break;
    case 30:
      result = 0x6374614D65636166;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_100064214(uint64_t a1)
{
  v3 = v1;
  v4 = __chkstk_darwin(a1);
  v5 = sub_100007224(&qword_100837468, &qword_1006C9790);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  sub_10000BA08(v4, v4[3]);
  sub_1000B0014();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v47[0] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v47[0] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47[0] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47[0] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47[0] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47[0] = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47[0] = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v78[0] = *(v3 + 104);
    v77 = 7;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v10 = *(v3 + 160);
    v11 = *(v3 + 128);
    v73 = *(v3 + 144);
    v74 = v10;
    v12 = *(v3 + 160);
    v13 = *(v3 + 192);
    v75 = *(v3 + 176);
    v76 = v13;
    v14 = *(v3 + 128);
    v72[0] = *(v3 + 112);
    v72[1] = v14;
    v68 = v73;
    v69 = v12;
    v15 = *(v3 + 192);
    v70 = v75;
    v71 = v15;
    v66 = v72[0];
    v67 = v11;
    v65 = 8;
    sub_10000BBC4(v72, v47, &qword_100837410, &qword_1006C9788);
    sub_1000B045C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v64[2] = v68;
    v64[3] = v69;
    v64[4] = v70;
    v64[5] = v71;
    v64[0] = v66;
    v64[1] = v67;
    sub_10000BE18(v64, &qword_100837410, &qword_1006C9788);
    v16 = *(v3 + 224);
    *v47 = *(v3 + 208);
    *&v47[16] = v16;
    v46[0] = 9;
    sub_1000B04B0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v47[0] = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47[0] = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 288);
    *v47 = *(v3 + 272);
    *&v47[16] = v17;
    v46[0] = 12;
    sub_1000B0504();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v47[0] = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v40 = type metadata accessor for PendingActionContext(0);
    v79 = v40[18];
    v47[0] = 14;
    type metadata accessor for WorkflowRecommendationResponse(0);
    sub_10009F43C(&qword_100837488, type metadata accessor for WorkflowRecommendationResponse, &unk_1006D86D0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v47[0] = *(v3 + v40[19]);
    v46[0] = 15;
    sub_1000B0558();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *v47 = *(v3 + v40[20]);
    v46[0] = 16;
    sub_1000B05AC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v47[0] = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47[0] = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47[0] = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v47[0] = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = (v3 + v40[26]);
    v19 = v18[1];
    v62[0] = *v18;
    v62[1] = v19;
    v20 = v18[3];
    v22 = *v18;
    v21 = v18[1];
    v62[2] = v18[2];
    v62[3] = v20;
    v58 = v22;
    v59 = v21;
    v23 = v18[3];
    v60 = v18[2];
    v61 = v23;
    v57 = 22;
    sub_10000BBC4(v62, v47, &qword_100837408, &qword_1006C9780);
    v79 = sub_1000AFCF8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v55[0] = v58;
    v55[1] = v59;
    v55[2] = v60;
    v55[3] = v61;
    sub_10000BE18(v55, &qword_100837408, &qword_1006C9780);
    v24 = (v3 + v40[27]);
    v25 = v24[1];
    v56[0] = *v24;
    v56[1] = v25;
    v26 = v24[3];
    v28 = *v24;
    v27 = v24[1];
    v56[2] = v24[2];
    v56[3] = v26;
    v51 = v28;
    v52 = v27;
    v29 = v24[3];
    v53 = v24[2];
    v54 = v29;
    v50 = 23;
    sub_10000BBC4(v56, v47, &qword_100837408, &qword_1006C9780);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v49[0] = v51;
    v49[1] = v52;
    v49[2] = v53;
    v49[3] = v54;
    sub_10000BE18(v49, &qword_100837408, &qword_1006C9780);
    v47[0] = 24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v79 = v40[29];
    v48 = 25;
    sub_100007224(&qword_100835A30, &unk_1006DB6C0);
    sub_1000BA30C(&qword_1008374A0, &qword_100835A30, &unk_1006DB6C0, &protocol conformance descriptor for JWSSignedJSON<A>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = v40[30];
    memcpy(v47, (v3 + v30), sizeof(v47));
    memcpy(v46, (v3 + v30), sizeof(v46));
    v45[8583] = 26;
    sub_10000BBC4(v47, v45, &qword_100839990, &unk_1006C19E0);
    sub_1000B0600();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    memcpy(v45, v46, 0x2181uLL);
    sub_10000BE18(v45, &qword_100839990, &unk_1006C19E0);
    LOBYTE(v41) = 27;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = (v3 + v40[32]);
    v32 = v31[1];
    v41 = *v31;
    v42 = v32;
    v44 = 28;
    sub_1000B0654();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v41 = *(v3 + v40[33]);
    v44 = 29;
    sub_100007224(&qword_100835A50, &qword_1006C1ED0);
    sub_1000B06A8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v33 = (v3 + v40[34]);
    v34 = *(v33 + 4);
    v35 = v33[1];
    v41 = *v33;
    v42 = v35;
    v43 = v34;
    v44 = 30;
    sub_1000B0780();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v36 = (v3 + v40[35]);
    v37 = *(v36 + 4);
    v38 = v36[1];
    v41 = *v36;
    v42 = v38;
    v43 = v37;
    v44 = 31;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100064EE0(uint64_t a1)
{
  v89 = v1;
  v2 = __chkstk_darwin(a1);
  v62 = v3;
  v4 = sub_100007224(&qword_100835970, &unk_1006C1EA0);
  __chkstk_darwin(v4 - 8);
  v61 = &v60 - v5;
  v6 = sub_100007224(&qword_100835968, &qword_1006DBC90);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - v7;
  v9 = sub_100007224(&qword_1008373F8, &qword_1006C9778);
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  v12 = type metadata accessor for PendingActionContext(0);
  __chkstk_darwin(v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(v2, v2[3]);
  sub_1000B0014();
  v65 = v11;
  v15 = v89;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    sub_10000BB78(v2);
  }

  else
  {
    v60 = v8;
    v89 = v2;
    LOBYTE(v88[0]) = 0;
    *v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v14 + 1) = v16;
    LOBYTE(v88[0]) = 1;
    *(v14 + 2) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v14 + 3) = v17;
    LOBYTE(v88[0]) = 2;
    *(v14 + 4) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v14 + 5) = v18;
    LOBYTE(v88[0]) = 3;
    *(v14 + 6) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v14 + 7) = v19;
    LOBYTE(v88[0]) = 4;
    *(v14 + 8) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v14 + 9) = v20;
    LOBYTE(v88[0]) = 5;
    v14[80] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v88[0]) = 6;
    *(v14 + 11) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v14 + 12) = v21;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    LOBYTE(v82) = 7;
    sub_10007FD2C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v14 + 13) = *&v88[0];
    v81 = 8;
    sub_1000B0138();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22 = v85;
    *(v14 + 9) = v84;
    *(v14 + 10) = v22;
    v23 = v87;
    *(v14 + 11) = v86;
    *(v14 + 12) = v23;
    v24 = v83;
    *(v14 + 7) = v82;
    *(v14 + 8) = v24;
    LOBYTE(v77) = 9;
    sub_1000B018C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v88[1];
    *(v14 + 13) = v88[0];
    *(v14 + 14) = v25;
    LOBYTE(v88[0]) = 10;
    *(v14 + 30) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v14 + 31) = v26;
    LOBYTE(v88[0]) = 11;
    *(v14 + 32) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v14 + 33) = v27;
    LOBYTE(v77) = 12;
    sub_1000B01E0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = v88[1];
    *(v14 + 17) = v88[0];
    *(v14 + 18) = v28;
    LOBYTE(v88[0]) = 13;
    *(v14 + 38) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v14 + 39) = v29;
    type metadata accessor for WorkflowRecommendationResponse(0);
    LOBYTE(v88[0]) = 14;
    sub_10009F43C(&qword_100837430, type metadata accessor for WorkflowRecommendationResponse, &unk_1006D86F8);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B1FC8(v60, &v14[v12[18]], &qword_100835968, &qword_1006DBC90);
    LOBYTE(v77) = 15;
    sub_1000B0234();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14[v12[19]] = v88[0];
    LOBYTE(v77) = 16;
    sub_1000B0288();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v14[v12[20]] = *&v88[0];
    LOBYTE(v88[0]) = 17;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = &v14[v12[21]];
    *v31 = v30;
    v31[8] = v32 & 1;
    LOBYTE(v88[0]) = 18;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v34 = &v14[v12[22]];
    *v34 = v33;
    v34[8] = v35 & 1;
    LOBYTE(v88[0]) = 19;
    v14[v12[23]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v88[0]) = 20;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = &v14[v12[24]];
    *v37 = v36;
    v37[8] = v38 & 1;
    LOBYTE(v88[0]) = 21;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = &v14[v12[25]];
    *v40 = v39;
    v40[8] = v41 & 1;
    v76 = 22;
    sub_1000AFBD4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = &v14[v12[26]];
    v43 = v78;
    v44 = v79;
    *v42 = v77;
    *(v42 + 1) = v43;
    v45 = v80;
    *(v42 + 2) = v44;
    *(v42 + 3) = v45;
    v71 = 23;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v46 = &v14[v12[27]];
    v47 = v73;
    *v46 = v72;
    *(v46 + 1) = v47;
    v48 = v75;
    *(v46 + 2) = v74;
    *(v46 + 3) = v48;
    LOBYTE(v88[0]) = 24;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = &v14[v12[28]];
    *v50 = v49;
    v50[1] = v51;
    sub_100007224(&qword_100835A30, &unk_1006DB6C0);
    LOBYTE(v88[0]) = 25;
    sub_1000BA30C(&qword_100837040, &qword_100835A30, &unk_1006DB6C0, &protocol conformance descriptor for JWSSignedJSON<A>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B1FC8(v61, &v14[v12[29]], &qword_100835970, &unk_1006C1EA0);
    v70 = 26;
    sub_10007FDA8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    memcpy(&v14[v12[30]], v88, 0x2181uLL);
    LOBYTE(v66) = 27;
    v14[v12[31]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v69 = 28;
    sub_1000B02DC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v52 = &v14[v12[32]];
    v53 = v67;
    *v52 = v66;
    *(v52 + 1) = v53;
    sub_100007224(&qword_100835A50, &qword_1006C1ED0);
    v69 = 29;
    sub_1000B0330();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *&v14[v12[33]] = v66;
    v69 = 30;
    sub_1000B0408();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v54 = v68;
    v55 = &v14[v12[34]];
    v56 = v67;
    *v55 = v66;
    *(v55 + 1) = v56;
    *(v55 + 4) = v54;
    v69 = 31;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v63 + 8))(v65, v64);
    v57 = v68;
    v58 = &v14[v12[35]];
    v59 = v67;
    *v58 = v66;
    *(v58 + 1) = v59;
    *(v58 + 4) = v57;
    sub_10009ED78(v14, v62, type metadata accessor for PendingActionContext);
    sub_10000BB78(v89);
    sub_10009EDE0(v14, type metadata accessor for PendingActionContext);
  }
}

uint64_t sub_100065F48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100837548, &qword_1006C97D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000B0C08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000660DC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008373C0, &qword_1006C9760);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AFD4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v15 = *v3;
  v16 = v9;
  v14 = 0;
  sub_1000AFE5C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10 = v3[3];
  v15 = v3[2];
  v16 = v10;
  v14 = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v12 = v3[5];
  v15 = v3[4];
  v16 = v12;
  v14 = 2;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000662C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100838388, &qword_1006CFCD8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA450();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100066454(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_100837560, &qword_1006C97E8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000B0C5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

void *sub_1000665E8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100090024(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10006661C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009085C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100066650(uint64_t a1)
{
  v2 = sub_1000B0014();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006668C(uint64_t a1)
{
  v2 = sub_1000B0014();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000666F8()
{
  v1 = 0x6973726556636166;
  v2 = 0x566C6F6F74646170;
  if (*v0 != 2)
  {
    v2 = 0x6973726556647270;
  }

  if (*v0)
  {
    v1 = 0x65736F5065636166;
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

uint64_t sub_10006678C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100091240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000667B4(uint64_t a1)
{
  v2 = sub_1000B0B60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000667F0(uint64_t a1)
{
  v2 = sub_1000B0B60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006689C()
{
  if (*v0)
  {
    return 0x657079546469;
  }

  else
  {
    return 0x6574617473;
  }
}

uint64_t sub_1000668D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657079546469 && a2 == 0xE600000000000000)
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

uint64_t sub_1000669A4(uint64_t a1)
{
  v2 = sub_1000B0C08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000669E0(uint64_t a1)
{
  v2 = sub_1000B0C08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066A80()
{
  v1 = 0x7261646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0x726F4D6E7261656CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7972616D697270;
  }
}

uint64_t sub_100066AE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000916B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100066B10(uint64_t a1)
{
  v2 = sub_1000AFD4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066B4C(uint64_t a1)
{
  v2 = sub_1000AFD4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100066B88@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000917DC(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_100066BEC()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x69546E6F74747562;
  }
}

uint64_t sub_100066C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69546E6F74747562 && a2 == 0xEB00000000656C74;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_100066D08(uint64_t a1)
{
  v2 = sub_1000BA450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066D44(uint64_t a1)
{
  v2 = sub_1000BA450();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066DC4@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_100091C24(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_100066E24()
{
  if (*v0)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x6574617473;
  }
}

uint64_t sub_100066E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
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

uint64_t sub_100066F34(uint64_t a1)
{
  v2 = sub_1000B0C5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066F70(uint64_t a1)
{
  v2 = sub_1000B0C5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100067010(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837128, &qword_1006C9690);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AE548();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v15 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3[3];
    v12 = v3[2];
    v13 = v10;
    v14 = v3[4];
    v15 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v12 = *(v3 + 14);
    v15 = 4;
    sub_100007224(&qword_100837110, &qword_1006C9688);
    sub_1000AE6DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100067278(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837398, &qword_1006C9750);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AFB80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = v3[1];
    v10 = v3[3];
    v23 = v3[2];
    v24 = v10;
    v11 = v3[3];
    v25 = v3[4];
    v18 = v9;
    v19 = v23;
    v12 = v3[1];
    v20 = v11;
    v21 = v3[4];
    v22 = v12;
    v17 = 1;
    sub_1000AFCC0(&v22, v16);
    sub_1000AFCF8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[0] = v18;
    v16[1] = v19;
    v16[2] = v20;
    v16[3] = v21;
    sub_1000AFC28(v16);
    v15 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100067504(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100007224(&qword_1008383A8, &qword_1006CFCE8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA4F8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100067698(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008374E8, &qword_1006C97A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000B07D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 24);
    v12 = *(v3 + 8);
    v13 = v9;
    v11[15] = 1;
    sub_1000B087C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100067818()
{
  v1 = *v0;
  v2 = 0x4874736575716572;
  v3 = 0x776F6C666B726F77;
  v4 = 0x736E6F69746361;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6F436E6F69676572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000678F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100091E14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100067918(uint64_t a1)
{
  v2 = sub_1000AE548();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067954(uint64_t a1)
{
  v2 = sub_1000AE548();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100067990@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100092028(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v9;
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_100067A14()
{
  v1 = *v0;
  v2 = 0x6C6562616CLL;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0x7373656E6576696CLL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100067AC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100092620(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100067AF4(uint64_t a1)
{
  v2 = sub_1000AFB80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067B30(uint64_t a1)
{
  v2 = sub_1000AFB80();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100067B6C@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000927D8(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_100067BD8()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_100067C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001006FE670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001006FE690 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100067CF8(uint64_t a1)
{
  v2 = sub_1000BA4F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067D34(uint64_t a1)
{
  v2 = sub_1000BA4F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100067D70@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_100838398, &qword_1006CFCE0, sub_1000BA4F8, &type metadata for FaceMatchingResult.ModelVersions.CodingKeys);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100067DEC()
{
  if (*v0)
  {
    return 0x7265566C65646F6DLL;
  }

  else
  {
    return 0x656D737365737361;
  }
}

uint64_t sub_100067E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D737365737361 && a2 == 0xEA0000000000746ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xED0000736E6F6973)
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

uint64_t sub_100067F24(uint64_t a1)
{
  v2 = sub_1000B07D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100067F60(uint64_t a1)
{
  v2 = sub_1000B07D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100067F9C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100092B14(a2, v6);
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

uint64_t sub_100067FFC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008370F8, &qword_1006C9678);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AE48C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v15 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3[3];
    v12 = v3[2];
    v13 = v10;
    v14 = v3[4];
    v15 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100068238(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = sub_100007224(&qword_1008383F8, &qword_1006CFD18);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA5F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_1000BA69C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000683E0()
{
  v1 = *v0;
  v2 = 0x4874736575716572;
  v3 = 0x776F6C666B726F77;
  v4 = 0xD00000000000001CLL;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6F436E6F69676572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000684B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100092CF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000684E0(uint64_t a1)
{
  v2 = sub_1000AE48C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006851C(uint64_t a1)
{
  v2 = sub_1000AE48C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100068558@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100092F00(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1000685CC()
{
  if (*v0)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x657079546469;
  }
}

uint64_t sub_100068604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657079546469 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
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

uint64_t sub_1000686DC(uint64_t a1)
{
  v2 = sub_1000BA5F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068718(uint64_t a1)
{
  v2 = sub_1000BA5F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100068754@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000934DC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000687A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x44495F4554415453;
  if (v2 != 1)
  {
    v3 = 0x54524F5053534150;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x5F474E4956495244;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xEF45534E4543494CLL;
  }

  v6 = 0x44495F4554415453;
  if (*a2 != 1)
  {
    v6 = 0x54524F5053534150;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x5F474E4956495244;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xEF45534E4543494CLL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000688B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100068960(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000689FC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100068AA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000936A0(*a1);
  *a2 = result;
  return result;
}

void sub_100068AD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF45534E4543494CLL;
  v4 = 0x44495F4554415453;
  if (v2 != 1)
  {
    v4 = 0x54524F5053534150;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x5F474E4956495244;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_100068BF4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837800, &qword_1006C9948);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B1BEC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 48);
  v10 = *(v3 + 16);
  v31 = *(v3 + 32);
  v32 = v9;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v33 = *(v3 + 64);
  v34 = v12;
  v13 = *(v3 + 16);
  v30[0] = *v3;
  v30[1] = v13;
  v26 = v31;
  v27 = v11;
  v14 = *(v3 + 80);
  v28 = v33;
  v29 = v14;
  v24 = v30[0];
  v25 = v10;
  v36 = 0;
  sub_1000B1478(v30, &v18);
  sub_1000B14B0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v18 = v24;
    v19 = v25;
    sub_1000ACC70(&v18);
  }

  else
  {
    v20 = v26;
    v21 = v27;
    v22 = v28;
    v23 = v29;
    v18 = v24;
    v19 = v25;
    sub_1000ACC70(&v18);
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v16 = *(v3 + 128);
    v35 = 3;
    sub_100007224(&qword_1008377E0, &qword_1006C9940);
    sub_1000B1DB0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = *(v3 + 136);
    v17 = *(v3 + 152);
    v35 = 4;
    sub_1000B1E64();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_100068EC0()
{
  v1 = *v0;
  v2 = 0x65736E6F70736572;
  v3 = 0xD00000000000001ALL;
  v4 = 0x736E6F69746361;
  if (v1 != 3)
  {
    v4 = 0x747865746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x45656D69746E7572;
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

uint64_t sub_100068F74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000936EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100068F9C(uint64_t a1)
{
  v2 = sub_1000B1BEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100068FD8(uint64_t a1)
{
  v2 = sub_1000B1BEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100069014@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000938B0(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_100069088(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836F68, &qword_1006C95D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AC9B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v15 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3[3];
    v12 = v3[2];
    v13 = v10;
    v14 = v3[4];
    v15 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000692EC()
{
  v1 = *v0;
  v2 = 0x4874736575716572;
  v3 = 0x7373656E6576696CLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6F436E6F69676572;
  if (v1 != 3)
  {
    v4 = 0x6F69676552627573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x72656469766F7270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100069404@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100093CAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006942C(uint64_t a1)
{
  v2 = sub_1000AC9B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100069468(uint64_t a1)
{
  v2 = sub_1000AC9B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000694A4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100093F1C(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_100069518(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_100837698, &qword_1006C9880);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000ACFC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_1000B1478(&v31, &v18);
  sub_1000B14B0();
  v14 = v37;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
    v17 = 2;
    sub_100007224(&qword_100835A30, &unk_1006DB6C0);
    sub_1000BA30C(&qword_1008374A0, &qword_100835A30, &unk_1006DB6C0, &protocol conformance descriptor for JWSSignedJSON<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000697B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
  v21 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v20 - v5;
  v24 = sub_100007224(&qword_100837030, &qword_1006C9618);
  v23 = *(v24 - 8);
  __chkstk_darwin(v24);
  v8 = &v20 - v7;
  v9 = type metadata accessor for IdentityProofingLivenessConfigResponseV2(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v25 = a1;
  sub_10000BA08(a1, v12);
  sub_1000ACFC8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v25);
  }

  v13 = v23;
  v20 = v6;
  v33 = 0;
  sub_1000ACC1C();
  v14 = v24;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v30;
  *(v11 + 2) = v29;
  *(v11 + 3) = v15;
  v16 = v32;
  *(v11 + 4) = v31;
  *(v11 + 5) = v16;
  v17 = v28;
  *v11 = v27;
  *(v11 + 1) = v17;
  v26[0] = 1;
  *(v11 + 12) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v11 + 13) = v18;
  v26[0] = 2;
  sub_1000BA30C(&qword_100837040, &qword_100835A30, &unk_1006DB6C0, &protocol conformance descriptor for JWSSignedJSON<A>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v14);
  (*(v21 + 32))(&v11[*(v9 + 24)], v20, v4);
  sub_10009ED78(v11, v22, type metadata accessor for IdentityProofingLivenessConfigResponseV2);
  sub_10000BB78(v25);
  return sub_10009EDE0(v11, type metadata accessor for IdentityProofingLivenessConfigResponseV2);
}

uint64_t sub_100069BDC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837640, &qword_1006C9840);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000BA08(a1, a1[3]);
  sub_1000B126C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = v3[3];
    v12 = v3[2];
    v13 = v10;
    v14 = v3[4];
    v11[15] = 2;
    sub_1000B137C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100069DC4(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008383C0, &qword_1006CFCF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000BA54C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  HIBYTE(v10) = 0;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10009E8DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v11) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v11) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11 = v3[5];
  HIBYTE(v10) = 3;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100069FC8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837840, &qword_1006C9968);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B1F74();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13[0]) = 0;
  type metadata accessor for HardwareAttestationType();
  sub_10009F43C(&qword_100836DC8, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for SharingRegistrationInfo(0);
    LOBYTE(v13[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13[0]) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v13[0] = *v10;
    v13[1] = v11;
    v14 = 3;
    sub_1000ABCB4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13[0]) = 4;
    sub_100007224(&qword_10084A0E0, &qword_1006E9E70);
    sub_1000BA30C(&qword_100836DF0, &qword_10084A0E0, &qword_1006E9E70, &protocol conformance descriptor for JWSSignedJSON<A>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_10006A284(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_100007224(&qword_100835F50, &qword_1006C4E18);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for HardwareAttestationType();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100007224(&qword_100837850, &qword_1006C9970);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v25 - v8;
  v10 = type metadata accessor for SharingRegistrationInfo(0);
  __chkstk_darwin(v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(a1, a1[3]);
  sub_1000B1F74();
  v30 = v9;
  v13 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v32 = v5;
    v14 = v27;
    LOBYTE(v33) = 0;
    sub_10009F43C(&qword_100839AF0, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
    v15 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 32))(v12, v15, v6);
    LOBYTE(v33) = 1;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = &v12[v10[5]];
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v33) = 2;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = &v12[v10[6]];
    *v20 = v19;
    v20[1] = v21;
    v35 = 3;
    sub_1000ABAD4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v28 = 0;
    v22 = &v12[v10[7]];
    v23 = v34;
    *v22 = v33;
    *(v22 + 1) = v23;
    sub_100007224(&qword_10084A0E0, &qword_1006E9E70);
    LOBYTE(v33) = 4;
    sub_1000BA30C(&qword_100836DB0, &qword_10084A0E0, &qword_1006E9E70, &protocol conformance descriptor for JWSSignedJSON<A>);
    v24 = v32;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v29 + 8))(v30, v31);
    sub_1000B1FC8(v24, &v12[v10[8]], &qword_100835F50, &qword_1006C4E18);
    sub_10009ED78(v12, v26, type metadata accessor for SharingRegistrationInfo);
    sub_10000BB78(a1);
    sub_10009EDE0(v12, type metadata accessor for SharingRegistrationInfo);
  }
}

uint64_t sub_10006A814()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0x7373656E6576696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_10006A890@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100094584(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006A8B8(uint64_t a1)
{
  v2 = sub_1000ACFC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006A8F4(uint64_t a1)
{
  v2 = sub_1000ACFC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006A960()
{
  v1 = 0x737574617473;
  if (*v0 != 1)
  {
    v1 = 0x747865746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_10006A9B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000946B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006A9DC(uint64_t a1)
{
  v2 = sub_1000B126C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006AA18(uint64_t a1)
{
  v2 = sub_1000B126C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10006AA54@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000947C0(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_10006AAB8()
{
  v1 = 0x644964726F636572;
  v2 = 0x746567726174;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_10006AB40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100094B00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006AB68(uint64_t a1)
{
  v2 = sub_1000BA54C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006ABA4(uint64_t a1)
{
  v2 = sub_1000BA54C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10006ABE0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100094C74(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

unint64_t sub_10006AC3C()
{
  v1 = *v0;
  v2 = 0x776F6C666B726F77;
  v3 = 0xD00000000000001ELL;
  v4 = 0x6144434150736469;
  if (v1 != 3)
  {
    v4 = 0x6144656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_10006ACE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100094F44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006AD08(uint64_t a1)
{
  v2 = sub_1000B1F74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006AD44(uint64_t a1)
{
  v2 = sub_1000B1F74();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10006ADB0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4874736575716572;
    v7 = 0xD000000000000017;
    v8 = 0xD00000000000001ELL;
    if (a1 == 3)
    {
      v8 = 0xD000000000000011;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x6144434150736469;
    v2 = 0x6144656369766564;
    if (a1 != 9)
    {
      v2 = 0x6563697665447369;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6465696669726576;
    v4 = 0xD000000000000011;
    if (a1 != 6)
    {
      v4 = 0x6144434150736469;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10006AF54(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836DB8, &qword_1006C9558);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AB928();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v18 = *v3;
  *&v19 = v9;
  *(&v19 + 1) = v10;
  v21 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11 = v3[3];
  v18 = v3[2];
  v19 = v11;
  v20 = v3[4];
  v21 = 1;
  sub_1000ABBAC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v12 = type metadata accessor for SharingRegistrationRequest(0);
  LOBYTE(v18) = 2;
  type metadata accessor for HardwareAttestationType();
  sub_10009F43C(&qword_100836DC8, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v18) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v18) = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v18 = *(v3 + v12[9]);
  v21 = 5;
  sub_100007224(&qword_1008361D8, &qword_1006C5150);
  sub_1000ABC00();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  *&v18 = *(v3 + v12[10]);
  v21 = 6;
  sub_100007224(&qword_1008361E8, &qword_1006C5158);
  sub_1000AB518();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v13 = (v3 + v12[11]);
  v14 = v13[1];
  v18 = *v13;
  v19 = v14;
  v21 = 7;
  sub_1000ABCB4();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  *&v18 = *(v3 + v12[12]);
  v21 = 8;
  sub_100007224(&unk_100836508, &qword_1006C5248);
  sub_1000ABD08();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v17 = v6;
  LOBYTE(v18) = 9;
  sub_100007224(&qword_10084A0E0, &qword_1006E9E70);
  sub_1000BA30C(&qword_100836DF0, &qword_10084A0E0, &qword_1006E9E70, &protocol conformance descriptor for JWSSignedJSON<A>);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  LOBYTE(v18) = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v17 + 8))(v8, v5);
}

uint64_t sub_10006B3FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100007224(&qword_100835F50, &qword_1006C4E18);
  __chkstk_darwin(v3 - 8);
  v5 = &v63 - v4;
  v73 = type metadata accessor for HardwareAttestationType();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_100836D78, &qword_1006C9550);
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v10 = &v63 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharingRegistrationRequest(0);
  __chkstk_darwin(v15);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  UUID.init()();
  UUID.uuidString.getter();
  v89 = v18;
  (*(v12 + 8))(v14, v11);
  v88 = v15;
  v19 = *(v15 + 52);
  v20 = sub_100007224(&qword_10084A0E0, &qword_1006E9E70);
  v21 = *(*(v20 - 8) + 56);
  v85 = v19;
  v86 = v17;
  v21(v17 + v19, 1, 1, v20);
  v22 = a1[3];
  v84 = a1;
  sub_10000BA08(a1, v22);
  sub_1000AB928();
  v23 = v87;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    v87 = v23;
    LODWORD(v74) = 0;
    LODWORD(v75) = 0;
    LODWORD(v76) = 0;
    v77 = 0;
    v78 = 0;
    v80 = 0;
    v81 = 0;
    v79 = 0;
    v82 = 0;
    v83 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = v86;
  }

  else
  {
    v24 = v7;
    v71 = v5;
    v96 = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v33 = v91;
    v34 = v92;
    v35 = v93;
    v31 = v86;
    *v86 = v90;
    *(v31 + 1) = v33;
    v69 = v33;
    *(v31 + 2) = v34;
    *(v31 + 3) = v35;
    v89 = v35;
    v96 = 1;
    sub_1000AB9CC();
    v70 = v10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v91;
    v38 = v92;
    v37 = v93;
    v39 = v94;
    v40 = v95;
    v68 = v90;
    *(v31 + 4) = v90;
    *(v31 + 5) = v36;
    *(v31 + 6) = v38;
    *(v31 + 7) = v37;
    v67 = v37;
    v66 = v39;
    *(v31 + 8) = v39;
    *(v31 + 9) = v40;
    v65 = v40;
    LOBYTE(v90) = 2;
    sub_10009F43C(&qword_100839AF0, &type metadata accessor for HardwareAttestationType, &protocol conformance descriptor for HardwareAttestationType);
    v41 = v73;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v64 = v38;
    v42 = v68;
    v43 = v88;
    (*(v72 + 32))(&v31[v88[6]], v24, v41);
    LOBYTE(v90) = 3;
    v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v45 = &v31[v43[7]];
    *v45 = v44;
    v45[1] = v46;
    v83 = v46;
    LOBYTE(v90) = 4;
    v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = &v31[v43[8]];
    *v48 = v47;
    v48[1] = v49;
    v82 = v49;
    sub_100007224(&qword_1008361D8, &qword_1006C5150);
    v96 = 5;
    sub_1000ABA20();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v31[v43[9]] = v90;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    v96 = 6;
    sub_1000AB2B0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v31[v43[10]] = v90;
    v96 = 7;
    sub_1000ABAD4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v87 = 0;
    v50 = v75;
    v63 = v36;
    v51 = &v31[v43[11]];
    v52 = v91;
    v53 = v92;
    v54 = v93;
    v80 = v91;
    v81 = v90;
    *v51 = v90;
    v51[1] = v52;
    v78 = v54;
    v79 = v53;
    v51[2] = v53;
    v51[3] = v54;
    sub_100007224(&unk_100836508, &qword_1006C5248);
    v96 = 8;
    sub_1000ABB28();
    v55 = v87;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v87 = v55;
    if (v55)
    {
      (*(v50 + 8))(v70, v76);
      v77 = 0;
      LODWORD(v74) = 1;
      LODWORD(v75) = 1;
      LODWORD(v76) = 1;
      v25 = v42;
      v26 = v63;
      v27 = v64;
      v28 = v67;
      v29 = v66;
      v30 = v65;
    }

    else
    {
      v56 = v88[12];
      v77 = v90;
      *&v31[v56] = v90;
      LOBYTE(v90) = 9;
      sub_1000BA30C(&qword_100836DB0, &qword_10084A0E0, &qword_1006E9E70, &protocol conformance descriptor for JWSSignedJSON<A>);
      v57 = v87;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v87 = v57;
      if (!v57)
      {
        sub_1000B2764(v71, v86 + v85, &qword_100835F50, &qword_1006C4E18);
        LOBYTE(v90) = 10;
        v58 = v87;
        v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v87 = v58;
        if (!v58)
        {
          v60 = v59;
          v61 = v88[14];
          (*(v75 + 8))(v70, v76);
          v62 = v86;
          *(v86 + v61) = v60;
          sub_10009ED78(v62, v74, type metadata accessor for SharingRegistrationRequest);
          sub_10000BB78(v84);
          return sub_10009EDE0(v62, type metadata accessor for SharingRegistrationRequest);
        }
      }

      (*(v75 + 8))(v70, v76);
      LODWORD(v74) = 1;
      LODWORD(v75) = 1;
      LODWORD(v76) = 1;
      v31 = v86;
      v25 = v42;
      v26 = v63;
      v27 = v64;
      v28 = v67;
      v29 = v66;
      v30 = v65;
    }
  }

  sub_10000BB78(v84);

  sub_1000AB97C(v25, v26, v27, v28, v29, v30);
  if (v74)
  {
    (*(v72 + 8))(&v31[v88[6]], v73);
  }

  if (v75)
  {
  }

  if (v76)
  {
  }

  sub_1000B00AC(v81, v80, v79, v78);

  return sub_10000BE18(&v31[v85], &qword_100835F50, &qword_1006C4E18);
}

uint64_t sub_10006C06C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100095108(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006C094(uint64_t a1)
{
  v2 = sub_1000AB928();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C0D0(uint64_t a1)
{
  v2 = sub_1000AB928();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006C13C(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008379E8, &qword_1006C9A40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2710();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_1000B1478(&v31, &v18);
  sub_1000B14B0();
  v14 = v37;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for SharingRegistrationResponse(0);
    v17 = 2;
    type metadata accessor for SharingCredentials(0);
    sub_10009F43C(&qword_1008379F0, type metadata accessor for SharingCredentials, &unk_1006C702C);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10006C3D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_100007224(&unk_100849FF0, &unk_1006C5310);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v26 = sub_100007224(&qword_1008379D0, &qword_1006C9A38);
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = v23 - v7;
  v9 = type metadata accessor for SharingRegistrationResponse(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 32);
  v14 = type metadata accessor for SharingCredentials(0);
  v15 = *(*(v14 - 8) + 56);
  v27 = v13;
  v15(&v12[v13], 1, 1, v14);
  sub_10000BA08(a1, a1[3]);
  sub_1000B2710();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
    return sub_10000BE18(&v12[v27], &unk_100849FF0, &unk_1006C5310);
  }

  else
  {
    v16 = v25;
    v35 = 0;
    sub_1000ACC1C();
    v17 = v26;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v32;
    *(v12 + 2) = v31;
    *(v12 + 3) = v18;
    v19 = v34;
    *(v12 + 4) = v33;
    *(v12 + 5) = v19;
    v20 = v30;
    *v12 = v29;
    *(v12 + 1) = v20;
    v28 = 1;
    *(v12 + 12) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v12 + 13) = v21;
    v23[1] = v21;
    v28 = 2;
    sub_10009F43C(&qword_1008379E0, type metadata accessor for SharingCredentials, &unk_1006C7054);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v16 + 8))(v8, v17);
    sub_1000B2764(v6, &v12[v27], &unk_100849FF0, &unk_1006C5310);
    sub_10009ED78(v12, v24, type metadata accessor for SharingRegistrationResponse);
    sub_10000BB78(a1);
    return sub_10009EDE0(v12, type metadata accessor for SharingRegistrationResponse);
  }
}

unint64_t sub_10006C810()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_10006C884@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000954AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006C8AC(uint64_t a1)
{
  v2 = sub_1000B2710();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006C8E8(uint64_t a1)
{
  v2 = sub_1000B2710();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006C954(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836F78, &qword_1006C95D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000ACA0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v15 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = *(v3 + 72);
    v12 = *(v3 + 56);
    v13 = v10;
    v14 = *(v3 + 88);
    v15 = 3;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_10006CB78()
{
  v1 = 0x4874736575716572;
  v2 = 0x72656469766F7270;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x756F4365636E6F6ELL;
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

uint64_t sub_10006CC0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000955D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006CC34(uint64_t a1)
{
  v2 = sub_1000ACA0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006CC70(uint64_t a1)
{
  v2 = sub_1000ACA0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10006CCAC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10009575C(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_10006CD24(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008378B8, &qword_1006C99B0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-v6];
  sub_10000BA08(a1, a1[3]);
  sub_1000AD01C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v2[2];
  v9 = v2[4];
  v34 = v2[3];
  v35 = v9;
  v10 = v2[4];
  v36 = v2[5];
  v11 = *v2;
  v12 = v2[2];
  v32 = v2[1];
  v33 = v12;
  v13 = *v2;
  v28 = v34;
  v29 = v10;
  v30 = v2[5];
  v31 = v13;
  v25 = v11;
  v26 = v32;
  v27 = v8;
  v24 = 0;
  sub_1000B1478(&v31, &v18);
  sub_1000B14B0();
  v14 = v37;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v14)
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
  }

  else
  {
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v23 = v30;
    v18 = v25;
    v19 = v26;
    sub_1000ACC70(&v18);
    LOBYTE(v17) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v2 + 14);
    v16[7] = 2;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10006CF90()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0x7365636E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_10006CFFC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100095B6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006D024(uint64_t a1)
{
  v2 = sub_1000AD01C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006D060(uint64_t a1)
{
  v2 = sub_1000AD01C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10006D09C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100095C8C(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t sub_10006D11C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836CF8, &qword_1006C9528);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000AB154();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v15 = *v3;
  v16 = v9;
  v17 = v10;
  v18 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14 = type metadata accessor for IdentitySharingRequest(0);
    LOBYTE(v15) = 1;
    sub_100007224(&unk_100836448, &unk_1006C5210);
    sub_1000BA30C(&qword_100836D08, &unk_100836448, &unk_1006C5210, &protocol conformance descriptor for JWSSignedJSON<A>);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v14;
    *&v15 = *(v3 + *(v14 + 24));
    v18 = 2;
    sub_100007224(&qword_100836CB8, &qword_1006C9518);
    sub_1000AB464();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v15 = *(v3 + *(v11 + 28));
    v18 = 3;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    sub_1000AB518();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v15 = *(v3 + *(v11 + 32));
    v18 = 4;
    sub_100007224(&unk_100836720, &qword_1006C5448);
    sub_1000AB5C8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v15) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10006D444@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_100007224(&unk_100836448, &unk_1006C5210);
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = v34 - v5;
  v36 = sub_100007224(&qword_100836C98, &qword_1006C9510);
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = v34 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for IdentitySharingRequest(0);
  __chkstk_darwin(v39);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  UUID.uuidString.getter();
  v40 = v16;
  (*(v11 + 8))(v13, v10);
  sub_10000BA08(a1, a1[3]);
  sub_1000AB154();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000BB78(a1);
  }

  else
  {
    v17 = v7;
    v18 = v35;
    v45 = 0;
    sub_1000AB1A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v19 = v42;
    v20 = v43;
    v21 = v44;
    *v15 = v41;
    *(v15 + 1) = v19;
    v34[1] = v19;
    *(v15 + 2) = v20;
    *(v15 + 3) = v21;
    v40 = v21;
    LOBYTE(v41) = 1;
    sub_1000BA30C(&qword_100836CB0, &unk_100836448, &unk_1006C5210, &protocol conformance descriptor for JWSSignedJSON<A>);
    v22 = v38;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v15;
    v24 = v39;
    v25 = *(v39 + 20);
    v26 = *(v37 + 32);
    v34[0] = v23;
    v26(&v23[v25], v6, v22);
    sub_100007224(&qword_100836CB8, &qword_1006C9518);
    v45 = 2;
    sub_1000AB1FC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v34[0] + v24[6]) = v41;
    sub_100007224(&qword_1008361E8, &qword_1006C5158);
    v45 = 3;
    sub_1000AB2B0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v34[0] + v24[7]) = v41;
    sub_100007224(&unk_100836720, &qword_1006C5448);
    v45 = 4;
    sub_1000AB360();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v34[0] + v24[8]) = v41;
    LOBYTE(v41) = 5;
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v34[0];
    v29 = (v34[0] + v24[9]);
    v30 = v9;
    v32 = v31;
    (*(v17 + 8))(v30, v36);
    *v29 = v27;
    v29[1] = v32;
    sub_10009ED78(v28, v18, type metadata accessor for IdentitySharingRequest);
    sub_10000BB78(a1);
    return sub_10009EDE0(v28, type metadata accessor for IdentitySharingRequest);
  }
}

uint64_t sub_10006DADC(void *a1)
{
  v3 = sub_100007224(&qword_100835730, &qword_1006C1AA8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  sub_10000BA08(a1, a1[3]);
  sub_10009ED24();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[1] = type metadata accessor for AssessmentAdditionalInfo(0);
    v10 = 3;
    sub_100007224(&unk_100835208, &unk_1006C0D10);
    sub_1000BA30C(&qword_100835738, &unk_100835208, &unk_1006C0D10, &protocol conformance descriptor for EncryptedDataContainer<A>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10006DD60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_100007224(&qword_100835180, &unk_1006C0CE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-v5];
  v32 = sub_100007224(&qword_100835718, &qword_1006C1AA0);
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v9 = &v27[-v8];
  v10 = type metadata accessor for AssessmentAdditionalInfo(0);
  __chkstk_darwin(v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[3];
  v33 = a1;
  sub_10000BA08(a1, v13);
  sub_10009ED24();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(v33);
  }

  v14 = v7;
  v38 = 0;
  *v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v12 + 1) = v16;
  v29 = v16;
  v37 = 1;
  v12[16] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = 2;
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v30 = 0;
  *(v12 + 3) = v17;
  v12[32] = v18 & 1;
  sub_100007224(&unk_100835208, &unk_1006C0D10);
  v35 = 3;
  v19 = v32;
  sub_1000BA30C(&qword_100835728, &unk_100835208, &unk_1006C0D10, &protocol conformance descriptor for EncryptedDataContainer<A>);
  v20 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = v20;
  if (v20)
  {
    (*(v14 + 8))(v9, v19);
    v21 = 0;
  }

  else
  {
    sub_1000B1FC8(v6, &v12[*(v10 + 28)], &qword_100835180, &unk_1006C0CE0);
    v34 = 4;
    v22 = v30;
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v24;
    v30 = v22;
    if (!v22)
    {
      v25 = v23;
      (*(v14 + 8))(v9, v32);
      v26 = &v12[*(v10 + 32)];
      *v26 = v25;
      v26[8] = v28 & 1;
      sub_10009ED78(v12, v31, type metadata accessor for AssessmentAdditionalInfo);
      sub_10000BB78(v33);
      return sub_10009EDE0(v12, type metadata accessor for AssessmentAdditionalInfo);
    }

    (*(v14 + 8))(v9, v32);
    v21 = 1;
  }

  sub_10000BB78(v33);

  if (v21)
  {
    return sub_10000BE18(&v12[*(v10 + 28)], &qword_100835180, &unk_1006C0CE0);
  }

  return result;
}

unint64_t sub_10006E1C8()
{
  v1 = *v0;
  v2 = 0x4874736575716572;
  v3 = 0x61746144766469;
  if (v1 != 4)
  {
    v3 = 0x746163696C707061;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000019;
  if (v1 != 1)
  {
    v4 = 0x6465696669726576;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10006E2AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100095FB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006E2D4(uint64_t a1)
{
  v2 = sub_1000AB154();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006E310(uint64_t a1)
{
  v2 = sub_1000AB154();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10006E37C()
{
  v1 = *v0;
  v2 = 0x776F6C666B726F77;
  v3 = 0x5F64616F6C796170;
  v4 = 0xD000000000000033;
  if (v1 == 3)
  {
    v4 = 0xD000000000000026;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_10006E43C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000961D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006E464(uint64_t a1)
{
  v2 = sub_10009ED24();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006E4A0(uint64_t a1)
{
  v2 = sub_10009ED24();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006E50C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837980, &qword_1006C9A08);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10000BA08(a1, a1[3]);
  sub_1000B2504();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v35[0] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = v3[2];
    v34[0] = v3[1];
    v34[1] = v9;
    v10 = v3[4];
    v12 = v3[1];
    v11 = v3[2];
    v34[2] = v3[3];
    v34[3] = v10;
    v30 = v12;
    v31 = v11;
    v13 = v3[4];
    v32 = v3[3];
    v33 = v13;
    v29 = 1;
    sub_10000BBC4(v34, v28, &qword_100835770, &qword_1006C1AD0);
    sub_10009F038();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v28[0] = v30;
    v28[1] = v31;
    v28[2] = v32;
    v28[3] = v33;
    sub_10000BE18(v28, &qword_100835770, &qword_1006C1AD0);
    v14 = v3[6];
    v26[0] = v3[5];
    v26[1] = v14;
    v16 = v3[5];
    v15 = v3[6];
    v27[0] = v3[7];
    *(v27 + 9) = *(v3 + 121);
    v23 = v16;
    v24 = v15;
    v25[0] = v3[7];
    *(v25 + 9) = *(v3 + 121);
    v22 = 2;
    sub_10000BBC4(v26, v20, &qword_100835768, &qword_1006DB770);
    sub_10009F08C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20[0] = v23;
    v20[1] = v24;
    *v21 = v25[0];
    *&v21[9] = *(v25 + 9);
    sub_10000BE18(v20, &qword_100835768, &qword_1006DB770);
    v19 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for TiberiusWrappedAssessment(0);
    v19 = 4;
    type metadata accessor for AssessmentAdditionalInfo(0);
    sub_10009F43C(&qword_100837988, type metadata accessor for AssessmentAdditionalInfo, &unk_1006C15D4);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10006E8AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100007224(&qword_100836328, &unk_1006C51B0);
  __chkstk_darwin(v3 - 8);
  v33 = &v31 - v4;
  v36 = sub_100007224(&qword_100837968, &qword_1006C9A00);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v31 - v5;
  v7 = type metadata accessor for TiberiusWrappedAssessment(0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 1) = 0u;
  v11 = v10 + 16;
  *(v10 + 5) = 0u;
  v12 = v10 + 80;
  *(v10 + 6) = 0u;
  *(v10 + 3) = 0u;
  *(v10 + 4) = 0u;
  *(v10 + 2) = 0u;
  *v10 = 0u;
  *(v10 + 15) = 0;
  *(v10 + 16) = 0;
  *(v10 + 14) = 1;
  v10[136] = 0;
  *(v10 + 18) = 0;
  *(v10 + 19) = 0;
  v13 = *(v8 + 40);
  v14 = type metadata accessor for AssessmentAdditionalInfo(0);
  v15 = *(*(v14 - 8) + 56);
  v31 = v13;
  v15(&v10[v13], 1, 1, v14);
  v16 = a1[3];
  v55 = a1;
  sub_10000BA08(a1, v16);
  sub_1000B2504();
  v35 = v6;
  v17 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v17)
  {
    v19 = v34;
    v18 = v35;
    LOBYTE(v54[0]) = 0;
    *v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v10 + 1) = v20;
    v53 = 1;
    sub_10009EF3C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48 = v54[0];
    v49 = v54[1];
    v50 = v54[2];
    v51 = v54[3];
    v22 = *(v10 + 2);
    v52[0] = *v11;
    v52[1] = v22;
    v23 = *(v10 + 4);
    v52[2] = *(v10 + 3);
    v52[3] = v23;
    sub_10000BE18(v52, &qword_100835770, &qword_1006C1AD0);
    v24 = v49;
    *v11 = v48;
    *(v10 + 2) = v24;
    v25 = v51;
    *(v10 + 3) = v50;
    *(v10 + 4) = v25;
    v44 = 2;
    sub_10009EF90();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v39 = v45;
    v40 = v46;
    v41[0] = v47[0];
    *(v41 + 9) = *(v47 + 9);
    v26 = *(v10 + 6);
    v42[0] = *v12;
    v42[1] = v26;
    *v43 = *(v10 + 7);
    *&v43[9] = *(v10 + 121);
    sub_10000BE18(v42, &qword_100835768, &qword_1006DB770);
    v27 = v40;
    *v12 = v39;
    *(v10 + 6) = v27;
    *(v10 + 7) = v41[0];
    *(v10 + 121) = *(v41 + 9);
    v38 = 3;
    v28 = v36;
    *(v10 + 18) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v10 + 19) = v29;
    v38 = 4;
    sub_10009F43C(&qword_100837978, type metadata accessor for AssessmentAdditionalInfo, &unk_1006C15FC);
    v30 = v33;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v19 + 8))(v18, v28);
    sub_1000B2764(v30, &v10[v31], &qword_100836328, &unk_1006C51B0);
    sub_10009ED78(v10, v32, type metadata accessor for TiberiusWrappedAssessment);
  }

  sub_10000BB78(v55);
  return sub_10009EDE0(v10, type metadata accessor for TiberiusWrappedAssessment);
}

uint64_t sub_10006ED64()
{
  v1 = *v0;
  v2 = 0x656D737365737361;
  v3 = 0x666E49726F727265;
  v4 = 0x49656C69666F7270;
  if (v1 != 3)
  {
    v4 = 0x6E6F697469646461;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7364656573;
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

uint64_t sub_10006EE1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10009639C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10006EE44(uint64_t a1)
{
  v2 = sub_1000B2504();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006EE80(uint64_t a1)
{
  v2 = sub_1000B2504();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006EEEC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DIPError.Code();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v41 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for EncodingError();
  v36 = *(v40 - 8);
  v6 = __chkstk_darwin(v40);
  v35 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v32 - v8;
  v9 = sub_100007224(&qword_100835E38, &qword_1006C49F0);
  __chkstk_darwin(v9 - 8);
  v34 = &v32 - v10;
  v11 = type metadata accessor for TiberiusWrappedAssessment(0);
  v33 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&qword_100836EE0, &qword_1006C9598);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - v16;
  sub_10000BA08(a1, a1[3]);
  sub_1000AC654();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v46 = 0;
  sub_100007224(&unk_100836448, &unk_1006C5210);
  sub_1000BA30C(&qword_100836D08, &unk_100836448, &unk_1006C5210, &protocol conformance descriptor for JWSSignedJSON<A>);
  v18 = v42;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v18)
  {
    (*(v15 + 8))(v17, v14);
    v20 = v37;
    v43 = v18;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v21 = v40;
    if (swift_dynamicCast())
    {

      v23 = v35;
      v22 = v36;
      (*(v36 + 32))(v35, v20, v21);
      swift_allocError();
      (*(v22 + 16))(v24, v23, v21);
      (*(v38 + 104))(v41, enum case for DIPError.Code.jsonEncodingFailed(_:), v39);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v22 + 8))(v23, v21);
    }

    else
    {

      (*(v38 + 104))(v41, enum case for DIPError.Code.tiberiusWrappedAssessmentEncodingFailed(_:), v39);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    v42 = v13;
    v19 = type metadata accessor for TiberiusIdentitySharingRequest(0);
    v45 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = v14;
    v26 = v34;
    sub_10000BBC4(v2 + *(v19 + 20), v34, &qword_100835E38, &qword_1006C49F0);
    if ((*(v33 + 48))(v26, 1, v11) == 1)
    {
      (*(v15 + 8))(v17, v32);
      return sub_10000BE18(v26, &qword_100835E38, &qword_1006C49F0);
    }

    else
    {
      v27 = v42;
      sub_1000AC6A8(v26, v42);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      sub_10009F43C(&qword_100836EF0, type metadata accessor for TiberiusWrappedAssessment, &unk_1006C71E8);
      v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v30 = v29;

      Data.base64EncodedString(options:)(0);
      sub_10000B90C(v28, v30);
      v44 = 1;
      v31 = v32;
      KeyedEncodingContainer.encode(_:forKey:)();

      sub_10009EDE0(v27, type metadata accessor for TiberiusWrappedAssessment);
      return (*(v15 + 8))(v17, v31);
    }
  }
}
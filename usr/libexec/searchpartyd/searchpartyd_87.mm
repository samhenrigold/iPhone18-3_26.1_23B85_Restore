uint64_t sub_10099BAB4(uint64_t a1)
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

uint64_t sub_10099BADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10099BB30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10099BBA4()
{
  result = qword_1016B0528;
  if (!qword_1016B0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0528);
  }

  return result;
}

unint64_t sub_10099BC0C()
{
  result = qword_1016B0530;
  if (!qword_1016B0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0530);
  }

  return result;
}

ValueMetadata *sub_10099BC6C(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v1 = &type metadata for AirPodsSWPairingCompleteCommandPayload;
        sub_100391A98();
      }

      else
      {
        v1 = &type metadata for UnpairCommandPayload;
        sub_10027EE90();
      }
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AirPodsMCFinalizePairingCommandPayload;
      sub_1009A1FAC();
    }

    else
    {
      v1 = &type metadata for AirPodsMCSendPairingStatusCommandPayload;
      sub_1009A1F58();
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      sub_100391B40();
    }

    else
    {
      v1 = &type metadata for AirPodsLESendPairingDataCommandPayload;
      sub_1009A00A4();
    }
  }

  else if (a1)
  {
    v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
    sub_100391B94();
  }

  else
  {
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
  }

  return v1;
}

ValueMetadata *sub_10099BD44(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v1 = &type metadata for AirPodsPairingCompleteCommandPayload;
        sub_1009A0048();
      }

      else
      {
        v1 = &type metadata for UnpairCommandPayload;
        sub_10027EE90();
      }
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AirPodsLEFinalizePairingCommandPayload;
      sub_10099FFE8();
    }

    else
    {
      v1 = &type metadata for AirPodsLESendPairingStatusCommandPayload;
      sub_1009A00FC();
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      sub_100391B40();
    }

    else
    {
      v1 = &type metadata for AirPodsLESendPairingDataCommandPayload;
      sub_1009A00A4();
    }
  }

  else if (a1)
  {
    v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
    sub_100391B94();
  }

  else
  {
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
  }

  return v1;
}

uint64_t sub_10099BE5C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, void *)@<X2>, uint64_t a4@<X8>)
{
  v40 = a2;
  v41 = a3;
  v39 = a4;
  v6 = type metadata accessor for Endianness();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v42 = a1;
  sub_1000035D0(a1, v10);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v47, v47[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v4)
  {
    v11 = v42;
  }

  else
  {
    v12 = v40;
    v13 = v41;
    v48 = v45[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v7 + 8))(v9, v6);
    v14 = v46[0];
    v15 = sub_100391628(v46[0]);
    if (v15 == 8)
    {
      v16 = static os_log_type_t.error.getter();
      v11 = v42;
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      v17 = qword_10177C410;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_101385D80;
      LOWORD(v46[0]) = v14;
      v19 = FixedWidthInteger.data.getter();
      v21 = v20;
      v22 = Data.hexString.getter();
      v24 = v23;
      sub_100016590(v19, v21);
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_100008C00();
      *(v18 + 32) = v22;
      *(v18 + 40) = v24;
      os_log(_:dso:log:_:_:)(v16, &_mh_execute_header, v17, "Invalid opcode: %@", 18, 2, v18);

      sub_1009A022C();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }

    else
    {
      v26 = v15;
      v27 = v12();
      v29 = v28;
      v11 = v42;
      sub_10001F280(v42, v45);
      v46[3] = v27;
      v46[4] = v29;
      sub_1000280DC(v46);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v46, v45);
      v13(v43, v26, v45);
      v30 = v43[11];
      v31 = v39;
      *(v39 + 160) = v43[10];
      *(v31 + 176) = v30;
      *(v31 + 192) = v43[12];
      *(v31 + 208) = v44;
      v32 = v43[7];
      *(v31 + 96) = v43[6];
      *(v31 + 112) = v32;
      v33 = v43[9];
      *(v31 + 128) = v43[8];
      *(v31 + 144) = v33;
      v34 = v43[3];
      *(v31 + 32) = v43[2];
      *(v31 + 48) = v34;
      v35 = v43[5];
      *(v31 + 64) = v43[4];
      *(v31 + 80) = v35;
      v36 = v43[1];
      *v31 = v43[0];
      *(v31 + 16) = v36;
      sub_100007BAC(v46);
    }
  }

  sub_100007BAC(v47);
  return sub_100007BAC(v11);
}

void sub_10099C228(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10099BC6C(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 <= 3u)
    {
      if (a1 <= 1u)
      {
        if (!a1)
        {
          sub_10001F280(a2, &v48);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v33) = 0;
            sub_1001DACD4(&v62);
LABEL_23:
            v9 = v73;
            *(a3 + 160) = v72;
            *(a3 + 176) = v9;
            *(a3 + 192) = v74;
            *(a3 + 208) = v75;
            v10 = v69;
            *(a3 + 96) = v68;
            *(a3 + 112) = v10;
            v11 = v71;
            *(a3 + 128) = v70;
            *(a3 + 144) = v11;
            v12 = v65;
            *(a3 + 32) = v64;
            *(a3 + 48) = v12;
            v13 = v67;
            *(a3 + 64) = v66;
            *(a3 + 80) = v13;
            v14 = v63;
            *a3 = v62;
            *(a3 + 16) = v14;
            return;
          }

          goto LABEL_36;
        }

        sub_10001F280(a2, &v33);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v19;
          v49 = v20;
          sub_1009A1EBC(&v48);
          goto LABEL_21;
        }

        v19 = xmmword_10138BBF0;
        v20 = 0uLL;
        sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_36:
        sub_1009A022C();
        swift_allocError();
        *v18 = 0;
        swift_willThrow();
        sub_100007BAC(a2);
        return;
      }

      if (a1 != 2)
      {
        sub_10001F280(a2, v47);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          SharingCircleWildAdvertisementKey.init(key:)();
          v43 = v58;
          v44 = v59;
          v45 = v60;
          v46 = v61;
          v39 = v54;
          v40 = v55;
          v41 = v56;
          v42 = v57;
          v35 = v50;
          v36 = v51;
          v37 = v52;
          v38 = v53;
          v33 = v48;
          v34 = v49;
          sub_1009A1E1C(&v33);
          v72 = v43;
          v73 = v44;
          v74 = v45;
          v75 = v46;
          v68 = v39;
          v69 = v40;
          v70 = v41;
          v71 = v42;
          v64 = v35;
          v65 = v36;
          v66 = v37;
          v67 = v38;
          v7 = v33;
          v8 = v34;
          goto LABEL_22;
        }

        sub_1009A02D4(&v19);
        v58 = v29;
        v59 = v30;
        v60 = v31;
        v54 = v25;
        v55 = v26;
        v56 = v27;
        v57 = v28;
        v50 = v21;
        v51 = v22;
        v52 = v23;
        v53 = v24;
        v48 = v19;
        v49 = v20;
        v43 = v29;
        v44 = v30;
        v45 = v31;
        v39 = v25;
        v40 = v26;
        v41 = v27;
        v42 = v28;
        v35 = v21;
        v36 = v22;
        v37 = v23;
        v38 = v24;
        v61 = v32;
        v46 = v32;
        v33 = v19;
        v34 = v20;
        v15 = &unk_1016B06F8;
        v16 = &unk_1013CDFB0;
        v17 = &v33;
        goto LABEL_35;
      }

      sub_10001F280(a2, &v19);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        v50 = v35;
        v51 = v36;
        v52 = v37;
        v48 = v33;
        v49 = v34;
        sub_1001DAAA0(&v48);
        goto LABEL_21;
      }

      v33 = xmmword_10138BBF0;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v48 = xmmword_10138BBF0;
      v49 = 0u;
      v15 = &unk_1016B0700;
      v16 = &unk_1013CDFB8;
LABEL_33:
      v17 = &v48;
LABEL_35:
      sub_10000B3A8(v17, v15, v16);
      goto LABEL_36;
    }

    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        sub_10001F280(a2, &v48);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          LOBYTE(v33) = 0;
          sub_1001DA870(&v62);
          goto LABEL_23;
        }

        goto LABEL_36;
      }

      sub_10001F280(a2, &v33);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v19 = xmmword_10138BBF0;
        sub_100006654(0, 0xF000000000000000);
        goto LABEL_36;
      }

      sub_100007BAC(a2);
      v48 = v19;
      sub_1009A1D78(&v48);
    }

    else
    {
      if (a1 != 4)
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v33;
          v49 = v34;
          v50 = v35;
          v51 = v36;
          sub_1001DA3BC(&v48);
          goto LABEL_21;
        }

        v33 = xmmword_10138BBF0;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = xmmword_10138BBF0;
        v49 = 0u;
        v15 = &unk_1016B0738;
        v16 = &unk_1013CDFE8;
        goto LABEL_33;
      }

      sub_10001F280(a2, v47);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_100080B6C(&v19);
        v41 = v27;
        v42 = v28;
        v43 = v29;
        v44 = v30;
        v37 = v23;
        v38 = v24;
        v39 = v25;
        v40 = v26;
        v33 = v19;
        v34 = v20;
        v35 = v21;
        v36 = v22;
        v56 = v27;
        v57 = v28;
        v58 = v29;
        v59 = v30;
        v52 = v23;
        v53 = v24;
        v54 = v25;
        v55 = v26;
        v48 = v19;
        v49 = v20;
        v50 = v21;
        v51 = v22;
        v15 = &unk_1016B0740;
        v16 = &unk_1013CDFF0;
        goto LABEL_33;
      }

      sub_100007BAC(a2);
      SharingCircleWildAdvertisementKey.init(key:)();
      v56 = v41;
      v57 = v42;
      v58 = v43;
      v59 = v44;
      v52 = v37;
      v53 = v38;
      v54 = v39;
      v55 = v40;
      v48 = v33;
      v49 = v34;
      v50 = v35;
      v51 = v36;
      sub_1001DA318(&v48);
    }

LABEL_21:
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v68 = v54;
    v69 = v55;
    v70 = v56;
    v71 = v57;
    v64 = v50;
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v7 = v48;
    v8 = v49;
LABEL_22:
    v62 = v7;
    v63 = v8;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_10099C910(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10099BD44(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          sub_10001F280(a2, &v48);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v33) = 0;
            sub_1004132E4(&v62);
            goto LABEL_23;
          }
        }

        else
        {
          sub_10001F280(a2, &v48);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v33) = 0;
            sub_1009A0280(&v62);
            goto LABEL_23;
          }
        }

        goto LABEL_35;
      }

      if (a1 == 4)
      {
        sub_10001F280(a2, v47);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          SharingCircleWildAdvertisementKey.init(key:)();
          v56 = v41;
          v57 = v42;
          v58 = v43;
          v59 = v44;
          v52 = v37;
          v53 = v38;
          v54 = v39;
          v55 = v40;
          v48 = v33;
          v49 = v34;
          v50 = v35;
          v51 = v36;
          sub_1001DA318(&v48);
LABEL_21:
          v72 = v58;
          v73 = v59;
          v74 = v60;
          v75 = v61;
          v68 = v54;
          v69 = v55;
          v70 = v56;
          v71 = v57;
          v64 = v50;
          v65 = v51;
          v66 = v52;
          v67 = v53;
          v7 = v48;
          v8 = v49;
LABEL_22:
          v62 = v7;
          v63 = v8;
          goto LABEL_23;
        }

        sub_100080B6C(&v19);
        v41 = v27;
        v42 = v28;
        v43 = v29;
        v44 = v30;
        v37 = v23;
        v38 = v24;
        v39 = v25;
        v40 = v26;
        v33 = v19;
        v34 = v20;
        v35 = v21;
        v36 = v22;
        v56 = v27;
        v57 = v28;
        v58 = v29;
        v59 = v30;
        v52 = v23;
        v53 = v24;
        v54 = v25;
        v55 = v26;
        v48 = v19;
        v49 = v20;
        v50 = v21;
        v51 = v22;
        v15 = &unk_1016B06F0;
        v16 = &unk_1013CDFA8;
      }

      else
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v33;
          v49 = v34;
          v50 = v35;
          v51 = v36;
          sub_1001DA3BC(&v48);
          goto LABEL_21;
        }

        v33 = xmmword_10138BBF0;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = xmmword_10138BBF0;
        v49 = 0u;
        v15 = &unk_1016B06E8;
        v16 = &unk_1013CDFA0;
      }
    }

    else
    {
      if (a1 <= 1u)
      {
        if (!a1)
        {
          sub_10001F280(a2, &v48);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v33) = 0;
            sub_10041338C(&v62);
LABEL_23:
            v9 = v73;
            *(a3 + 160) = v72;
            *(a3 + 176) = v9;
            *(a3 + 192) = v74;
            *(a3 + 208) = v75;
            v10 = v69;
            *(a3 + 96) = v68;
            *(a3 + 112) = v10;
            v11 = v71;
            *(a3 + 128) = v70;
            *(a3 + 144) = v11;
            v12 = v65;
            *(a3 + 32) = v64;
            *(a3 + 48) = v12;
            v13 = v67;
            *(a3 + 64) = v66;
            *(a3 + 80) = v13;
            v14 = v63;
            *a3 = v62;
            *(a3 + 16) = v14;
            return;
          }

          goto LABEL_35;
        }

        sub_10001F280(a2, &v33);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v19;
          v49 = v20;
          sub_1009A1EBC(&v48);
          goto LABEL_21;
        }

        v19 = xmmword_10138BBF0;
        v20 = 0uLL;
        sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_35:
        sub_1009A022C();
        swift_allocError();
        *v18 = 0;
        swift_willThrow();
        sub_100007BAC(a2);
        return;
      }

      if (a1 != 2)
      {
        sub_10001F280(a2, v47);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          SharingCircleWildAdvertisementKey.init(key:)();
          v43 = v58;
          v44 = v59;
          v45 = v60;
          v46 = v61;
          v39 = v54;
          v40 = v55;
          v41 = v56;
          v42 = v57;
          v35 = v50;
          v36 = v51;
          v37 = v52;
          v38 = v53;
          v33 = v48;
          v34 = v49;
          sub_1009A1E1C(&v33);
          v72 = v43;
          v73 = v44;
          v74 = v45;
          v75 = v46;
          v68 = v39;
          v69 = v40;
          v70 = v41;
          v71 = v42;
          v64 = v35;
          v65 = v36;
          v66 = v37;
          v67 = v38;
          v7 = v33;
          v8 = v34;
          goto LABEL_22;
        }

        sub_1009A02D4(&v19);
        v58 = v29;
        v59 = v30;
        v60 = v31;
        v54 = v25;
        v55 = v26;
        v56 = v27;
        v57 = v28;
        v50 = v21;
        v51 = v22;
        v52 = v23;
        v53 = v24;
        v48 = v19;
        v49 = v20;
        v43 = v29;
        v44 = v30;
        v45 = v31;
        v39 = v25;
        v40 = v26;
        v41 = v27;
        v42 = v28;
        v35 = v21;
        v36 = v22;
        v37 = v23;
        v38 = v24;
        v61 = v32;
        v46 = v32;
        v33 = v19;
        v34 = v20;
        v15 = &unk_1016B06F8;
        v16 = &unk_1013CDFB0;
        v17 = &v33;
        goto LABEL_34;
      }

      sub_10001F280(a2, &v19);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        v50 = v35;
        v51 = v36;
        v52 = v37;
        v48 = v33;
        v49 = v34;
        sub_1001DAAA0(&v48);
        goto LABEL_21;
      }

      v33 = xmmword_10138BBF0;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v48 = xmmword_10138BBF0;
      v49 = 0u;
      v15 = &unk_1016B0700;
      v16 = &unk_1013CDFB8;
    }

    v17 = &v48;
LABEL_34:
    sub_10000B3A8(v17, v15, v16);
    goto LABEL_35;
  }

  __break(1u);
}

uint64_t sub_10099CFD0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v8 = *(v2 + 176);
  v91[10] = *(v2 + 160);
  v91[11] = v8;
  v91[12] = *(v2 + 192);
  v92 = *(v2 + 208);
  v9 = *(v2 + 112);
  v91[6] = *(v2 + 96);
  v91[7] = v9;
  v10 = *(v2 + 144);
  v91[8] = *(v2 + 128);
  v91[9] = v10;
  v11 = *(v2 + 48);
  v91[2] = *(v2 + 32);
  v91[3] = v11;
  v12 = *(v2 + 80);
  v91[4] = *(v2 + 64);
  v91[5] = v12;
  v13 = *(v2 + 16);
  v91[0] = *v2;
  v91[1] = v13;
  v14 = sub_1009A0304(v91);
  if (v14 > 3)
  {
    if (v14 > 5)
    {
      if (v14 == 6)
      {
        v15 = 260;
      }

      else
      {
        v15 = 516;
      }
    }

    else if (v14 == 4)
    {
      sub_10004CA28(v91);
      v15 = 259;
    }

    else
    {
      v15 = 267;
    }
  }

  else if (v14 > 1)
  {
    if (v14 == 2)
    {
      sub_10004CA28(v91);
      v15 = 257;
    }

    else
    {
      sub_10004CA28(v91);
      v15 = 258;
    }
  }

  else if (v14)
  {
    sub_10004CA28(v91);
    v15 = 256;
  }

  else
  {
    sub_10004CA28(v91);
    v15 = 268;
  }

  LOWORD(v58) = v15;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v5 + 8))(v7, v4);
  LOWORD(v58) = v72;
  sub_10015049C(v87, v88);
  v16 = v93;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v16)
  {
    v17 = *(v2 + 176);
    v89[10] = *(v2 + 160);
    v89[11] = v17;
    v89[12] = *(v2 + 192);
    v90 = *(v2 + 208);
    v18 = *(v2 + 112);
    v89[6] = *(v2 + 96);
    v89[7] = v18;
    v19 = *(v2 + 144);
    v89[8] = *(v2 + 128);
    v89[9] = v19;
    v20 = *(v2 + 48);
    v89[2] = *(v2 + 32);
    v89[3] = v20;
    v21 = *(v2 + 80);
    v89[4] = *(v2 + 64);
    v89[5] = v21;
    v22 = *(v2 + 16);
    v89[0] = *v2;
    v89[1] = v22;
    v23 = sub_1009A0304(v89);
    if (v23 <= 3)
    {
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          sub_10004CA28(v89);
          sub_10099F930(v86);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)();
            v82 = v68;
            v83 = v69;
            v84 = v70;
            v85 = v71;
            v78 = v64;
            v79 = v65;
            v80 = v66;
            v81 = v67;
            v74 = v60;
            v75 = v61;
            v76 = v62;
            v77 = v63;
            v72 = v58;
            v73 = v59;
            sub_10015049C(v87, v88);
            sub_10040F2C0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v54 = v82;
            v55 = v83;
            v56 = v84;
            v57 = v85;
            v50 = v78;
            v51 = v79;
            v52 = v80;
            v53 = v81;
            v46 = v74;
            v47 = v75;
            v48 = v76;
            v49 = v77;
            v44 = v72;
            v45 = v73;
            sub_1001DA914(&v44);
            return sub_100007BAC(v87);
          }

          sub_1009A02D4(&v30);
          v68 = v40;
          v69 = v41;
          v70 = v42;
          v64 = v36;
          v65 = v37;
          v66 = v38;
          v67 = v39;
          v60 = v32;
          v61 = v33;
          v62 = v34;
          v63 = v35;
          v58 = v30;
          v59 = v31;
          v54 = v40;
          v55 = v41;
          v56 = v42;
          v50 = v36;
          v51 = v37;
          v52 = v38;
          v53 = v39;
          v46 = v32;
          v47 = v33;
          v48 = v34;
          v49 = v35;
          v71 = v43;
          v57 = v43;
          v44 = v30;
          v45 = v31;
          v25 = &unk_1016B06F8;
          v26 = &unk_1013CDFB0;
        }

        else
        {
          sub_10004CA28(v89);
          sub_10099F930(v86);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)();
            v80 = v66;
            v81 = v67;
            v82 = v68;
            v83 = v69;
            v76 = v62;
            v77 = v63;
            v78 = v64;
            v79 = v65;
            v72 = v58;
            v73 = v59;
            v74 = v60;
            v75 = v61;
            sub_10015049C(v87, v88);
            sub_1001BF4A0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v52 = v80;
            v53 = v81;
            v54 = v82;
            v55 = v83;
            v48 = v76;
            v49 = v77;
            v50 = v78;
            v51 = v79;
            v44 = v72;
            v45 = v73;
            v46 = v74;
            v47 = v75;
            sub_1009A0384(&v44);
            return sub_100007BAC(v87);
          }

          sub_100080B6C(&v30);
          v66 = v38;
          v67 = v39;
          v68 = v40;
          v69 = v41;
          v62 = v34;
          v63 = v35;
          v64 = v36;
          v65 = v37;
          v58 = v30;
          v59 = v31;
          v60 = v32;
          v61 = v33;
          v52 = v38;
          v53 = v39;
          v54 = v40;
          v55 = v41;
          v48 = v34;
          v49 = v35;
          v50 = v36;
          v51 = v37;
          v44 = v30;
          v45 = v31;
          v46 = v32;
          v47 = v33;
          v25 = &unk_1016B06F0;
          v26 = &unk_1013CDFA8;
        }
      }

      else
      {
        if (!v23)
        {
          sub_10004CA28(v89);
          sub_10099F930(&v72);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v58 = v44;
            v59 = v45;
            sub_10015049C(v87, v88);
            sub_100392AF0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v24 = v59;
            sub_100016590(v58, *(&v58 + 1));
            sub_100016590(v24, *(&v24 + 1));
            return sub_100007BAC(v87);
          }

          v44 = xmmword_10138BBF0;
          v45 = 0uLL;
          sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_47:
          sub_1009A022C();
          swift_allocError();
          *v27 = 0;
          swift_willThrow();
          return sub_100007BAC(v87);
        }

        sub_10004CA28(v89);
        sub_10099F930(&v30);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v74 = v60;
          v75 = v61;
          v76 = v62;
          v72 = v58;
          v73 = v59;
          sub_10015049C(v87, v88);
          sub_100392A9C();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v46 = v74;
          v47 = v75;
          v48 = v76;
          v44 = v72;
          v45 = v73;
          sub_1001DAB9C(&v44);
          return sub_100007BAC(v87);
        }

        v58 = xmmword_10138BBF0;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v44 = xmmword_10138BBF0;
        v45 = 0u;
        v25 = &unk_1016B0700;
        v26 = &unk_1013CDFB8;
      }

LABEL_46:
      sub_10000B3A8(&v44, v25, v26);
      goto LABEL_47;
    }

    if (v23 > 5)
    {
      if (v23 == 6)
      {
        sub_10099F930(&v72);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_10015049C(v87, v88);
        sub_1009A0330();
      }

      else
      {
        sub_10099F930(&v72);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_10015049C(v87, v88);
        sub_10027FBB8();
      }
    }

    else
    {
      if (v23 == 4)
      {
        sub_10004CA28(v89);
        sub_10099F930(&v30);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v72 = v58;
          v73 = v59;
          v74 = v60;
          v75 = v61;
          sub_10015049C(v87, v88);
          sub_1008894E4();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v44 = v72;
          v45 = v73;
          v46 = v74;
          v47 = v75;
          sub_1001DA6B0(&v44);
          return sub_100007BAC(v87);
        }

        v58 = xmmword_10138BBF0;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = xmmword_10138BBF0;
        v45 = 0u;
        v25 = &unk_1016B06E8;
        v26 = &unk_1013CDFA0;
        goto LABEL_46;
      }

      sub_10099F930(&v72);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_47;
      }

      sub_10015049C(v87, v88);
      sub_10030FB84();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v87);
}

uint64_t sub_10099DA9C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v8 = *(v2 + 176);
  v91[10] = *(v2 + 160);
  v91[11] = v8;
  v91[12] = *(v2 + 192);
  v92 = *(v2 + 208);
  v9 = *(v2 + 112);
  v91[6] = *(v2 + 96);
  v91[7] = v9;
  v10 = *(v2 + 144);
  v91[8] = *(v2 + 128);
  v91[9] = v10;
  v11 = *(v2 + 48);
  v91[2] = *(v2 + 32);
  v91[3] = v11;
  v12 = *(v2 + 80);
  v91[4] = *(v2 + 64);
  v91[5] = v12;
  v13 = *(v2 + 16);
  v91[0] = *v2;
  v91[1] = v13;
  v14 = sub_1001DA684(v91);
  if (v14 > 3)
  {
    if (v14 > 5)
    {
      if (v14 == 7)
      {
        v15 = 516;
      }

      else
      {
        v15 = 267;
      }
    }

    else if (v14 == 4)
    {
      sub_10004CA28(v91);
      v15 = 259;
    }

    else
    {
      sub_10004CA28(v91);
      v15 = 260;
    }
  }

  else if (v14 > 1)
  {
    if (v14 == 2)
    {
      sub_10004CA28(v91);
      v15 = 257;
    }

    else
    {
      sub_10004CA28(v91);
      v15 = 258;
    }
  }

  else if (v14)
  {
    sub_10004CA28(v91);
    v15 = 256;
  }

  else
  {
    sub_10004CA28(v91);
    v15 = 268;
  }

  LOWORD(v58) = v15;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v5 + 8))(v7, v4);
  LOWORD(v58) = v72;
  sub_10015049C(v87, v88);
  v16 = v93;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v16)
  {
    v17 = *(v2 + 176);
    v89[10] = *(v2 + 160);
    v89[11] = v17;
    v89[12] = *(v2 + 192);
    v90 = *(v2 + 208);
    v18 = *(v2 + 112);
    v89[6] = *(v2 + 96);
    v89[7] = v18;
    v19 = *(v2 + 144);
    v89[8] = *(v2 + 128);
    v89[9] = v19;
    v20 = *(v2 + 48);
    v89[2] = *(v2 + 32);
    v89[3] = v20;
    v21 = *(v2 + 80);
    v89[4] = *(v2 + 64);
    v89[5] = v21;
    v22 = *(v2 + 16);
    v89[0] = *v2;
    v89[1] = v22;
    v23 = sub_1001DA684(v89);
    if (v23 > 3)
    {
      if (v23 > 5)
      {
        if (v23 == 6)
        {
          sub_100C0256C(&v72);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_48;
          }

          sub_10015049C(v87, v88);
          sub_10030FB84();
        }

        else
        {
          sub_100C0256C(&v72);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_48;
          }

          sub_10015049C(v87, v88);
          sub_10027FBB8();
        }

        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        return sub_100007BAC(v87);
      }

      if (v23 != 4)
      {
        sub_10004CA28(v89);
        sub_100C0256C(&v72);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v58 = v44;
          sub_10015049C(v87, v88);
          sub_1003928F8();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_100016590(v58, *(&v58 + 1));
          return sub_100007BAC(v87);
        }

        v44 = xmmword_10138BBF0;
        sub_100006654(0, 0xF000000000000000);
        goto LABEL_48;
      }

      sub_10004CA28(v89);
      sub_100C0256C(&v30);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v72 = v58;
        v73 = v59;
        v74 = v60;
        v75 = v61;
        sub_10015049C(v87, v88);
        sub_1009A2000();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v44 = v72;
        v45 = v73;
        v46 = v74;
        v47 = v75;
        sub_1009A2054(&v44);
        return sub_100007BAC(v87);
      }

      v58 = xmmword_10138BBF0;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = xmmword_10138BBF0;
      v45 = 0u;
      v25 = &unk_1016B0738;
      v26 = &unk_1013CDFE8;
    }

    else if (v23 > 1)
    {
      if (v23 == 2)
      {
        sub_10004CA28(v89);
        sub_100C0256C(v86);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          SharingCircleWildAdvertisementKey.init(key:)();
          v82 = v68;
          v83 = v69;
          v84 = v70;
          v85 = v71;
          v78 = v64;
          v79 = v65;
          v80 = v66;
          v81 = v67;
          v74 = v60;
          v75 = v61;
          v76 = v62;
          v77 = v63;
          v72 = v58;
          v73 = v59;
          sub_10015049C(v87, v88);
          sub_10040F2C0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v54 = v82;
          v55 = v83;
          v56 = v84;
          v57 = v85;
          v50 = v78;
          v51 = v79;
          v52 = v80;
          v53 = v81;
          v46 = v74;
          v47 = v75;
          v48 = v76;
          v49 = v77;
          v44 = v72;
          v45 = v73;
          sub_1001DA914(&v44);
          return sub_100007BAC(v87);
        }

        sub_1009A02D4(&v30);
        v68 = v40;
        v69 = v41;
        v70 = v42;
        v64 = v36;
        v65 = v37;
        v66 = v38;
        v67 = v39;
        v60 = v32;
        v61 = v33;
        v62 = v34;
        v63 = v35;
        v58 = v30;
        v59 = v31;
        v54 = v40;
        v55 = v41;
        v56 = v42;
        v50 = v36;
        v51 = v37;
        v52 = v38;
        v53 = v39;
        v46 = v32;
        v47 = v33;
        v48 = v34;
        v49 = v35;
        v71 = v43;
        v57 = v43;
        v44 = v30;
        v45 = v31;
        v25 = &unk_1016B06F8;
        v26 = &unk_1013CDFB0;
      }

      else
      {
        sub_10004CA28(v89);
        sub_100C0256C(v86);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          SharingCircleWildAdvertisementKey.init(key:)();
          v80 = v66;
          v81 = v67;
          v82 = v68;
          v83 = v69;
          v76 = v62;
          v77 = v63;
          v78 = v64;
          v79 = v65;
          v72 = v58;
          v73 = v59;
          v74 = v60;
          v75 = v61;
          sub_10015049C(v87, v88);
          sub_1008BC3E0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v52 = v80;
          v53 = v81;
          v54 = v82;
          v55 = v83;
          v48 = v76;
          v49 = v77;
          v50 = v78;
          v51 = v79;
          v44 = v72;
          v45 = v73;
          v46 = v74;
          v47 = v75;
          sub_1008BC2B4(&v44);
          return sub_100007BAC(v87);
        }

        sub_100080B6C(&v30);
        v66 = v38;
        v67 = v39;
        v68 = v40;
        v69 = v41;
        v62 = v34;
        v63 = v35;
        v64 = v36;
        v65 = v37;
        v58 = v30;
        v59 = v31;
        v60 = v32;
        v61 = v33;
        v52 = v38;
        v53 = v39;
        v54 = v40;
        v55 = v41;
        v48 = v34;
        v49 = v35;
        v50 = v36;
        v51 = v37;
        v44 = v30;
        v45 = v31;
        v46 = v32;
        v47 = v33;
        v25 = &unk_1016B0740;
        v26 = &unk_1013CDFF0;
      }
    }

    else
    {
      if (!v23)
      {
        sub_10004CA28(v89);
        sub_100C0256C(&v72);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v58 = v44;
          v59 = v45;
          sub_10015049C(v87, v88);
          sub_100392AF0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v24 = v59;
          sub_100016590(v58, *(&v58 + 1));
          sub_100016590(v24, *(&v24 + 1));
          return sub_100007BAC(v87);
        }

        v44 = xmmword_10138BBF0;
        v45 = 0uLL;
        sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_48:
        sub_1009A022C();
        swift_allocError();
        *v27 = 0;
        swift_willThrow();
        return sub_100007BAC(v87);
      }

      sub_10004CA28(v89);
      sub_100C0256C(&v30);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v74 = v60;
        v75 = v61;
        v76 = v62;
        v72 = v58;
        v73 = v59;
        sub_10015049C(v87, v88);
        sub_100392A9C();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v46 = v74;
        v47 = v75;
        v48 = v76;
        v44 = v72;
        v45 = v73;
        sub_1001DAB9C(&v44);
        return sub_100007BAC(v87);
      }

      v58 = xmmword_10138BBF0;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v44 = xmmword_10138BBF0;
      v45 = 0u;
      v25 = &unk_1016B0700;
      v26 = &unk_1013CDFB8;
    }

    sub_10000B3A8(&v44, v25, v26);
    goto LABEL_48;
  }

  return sub_100007BAC(v87);
}

void sub_10099E5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v228 = &v219 - v5;
  v6 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  __chkstk_darwin(v6 - 8);
  v227 = &v219 - v7;
  v8 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v9 = __chkstk_darwin(v8);
  v223 = &v219 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v222 = &v219 - v12;
  v13 = __chkstk_darwin(v11);
  v221 = &v219 - v14;
  v15 = __chkstk_darwin(v13);
  v224 = &v219 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v219 - v18;
  v20 = __chkstk_darwin(v17);
  v225 = &v219 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v219 - v23;
  v25 = __chkstk_darwin(v22);
  v229 = &v219 - v26;
  v27 = __chkstk_darwin(v25);
  v226 = &v219 - v28;
  v29 = __chkstk_darwin(v27);
  v232 = &v219 - v30;
  __chkstk_darwin(v29);
  v32 = &v219 - v31;
  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v230 = v19;
  v231 = v24;
  v33 = type metadata accessor for Logger();
  v34 = sub_1000076D4(v33, qword_10177ACB0);
  sub_1009A1D14(a1, v32);
  v236[5] = v34;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v233 = a1;
  v234 = v8;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v236[0] = v39;
    *v38 = 136446210;
    if (*&v32[*(v8 + 52) + 8] >> 60 == 15)
    {
      v40 = 0;
      v41 = 0xE000000000000000;
    }

    else
    {
      v40 = Data.hexString.getter();
      v41 = v42;
    }

    sub_1009A1CB8(v32);
    v43 = sub_1000136BC(v40, v41, v236);

    *(v38 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "Received SeedS and S3 from server. Pairing token: %{public}s", v38, 0xCu);
    sub_100007BAC(v39);

    a1 = v233;
  }

  else
  {

    sub_1009A1CB8(v32);
  }

  v44 = *(a1 + 64);
  v45 = *(a1 + 72);
  v46 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3);
  v47 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3);
  v48 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3 + 8);
  *v46 = v44;
  v46[1] = v45;
  sub_100017D5C(v44, v45);
  sub_100006654(v47, v48);
  sub_100017D5C(v44, v45);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  sub_100016590(v44, v45);
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v236[0] = v52;
    *v51 = 136315138;
    v53 = Data.hexString.getter();
    v55 = sub_1000136BC(v53, v54, v236);

    *(v51 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v49, v50, "S3: %s", v51, 0xCu);
    sub_100007BAC(v52);
  }

  v56 = v227;
  if (qword_1016946D8 != -1)
  {
    swift_once();
  }

  v57 = qword_10177ACE0;
  v58 = *algn_10177ACE8;
  v59 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(a2 + v59, v56, &qword_101697268, &qword_101394FE0);
  v60 = type metadata accessor for AccessoryProductInfo(0);
  if ((*(*(v60 - 8) + 48))(v56, 1, v60))
  {
    sub_10000B3A8(v56, &qword_101697268, &qword_101394FE0);
    v61 = 0;
    v62 = 0xF000000000000000;
  }

  else
  {
    v63 = (v56 + *(v60 + 100));
    v61 = *v63;
    v62 = v63[1];
    sub_10002E98C(*v63, v62);
    sub_10000B3A8(v56, &qword_101697268, &qword_101394FE0);
    if (v62 >> 60 != 15)
    {
      goto LABEL_17;
    }
  }

  sub_100017D5C(v57, v58);
  sub_100006654(v61, v62);
  v61 = v57;
  v62 = v58;
LABEL_17:
  sub_100017D5C(v61, v62);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  sub_100016590(v61, v62);
  v66 = os_log_type_enabled(v64, v65);
  v220 = v61;
  v219 = v62;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v235[0] = v68;
    *v67 = 136315138;
    v69 = Data.hexString.getter();
    v71 = sub_1000136BC(v69, v70, v235);

    *(v67 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v64, v65, "publicKeyData: %s", v67, 0xCu);
    sub_100007BAC(v68);
  }

  v73 = v233;
  v72 = v234;
  v74 = (v233 + v234[11]);
  v75 = *v74;
  v76 = v74[1];
  v77 = (v233 + v234[12]);
  v78 = *v77;
  v227 = v77[1];
  v79 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
  v80 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
  v81 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8);
  *v79 = v75;
  v79[1] = v76;
  sub_100017D5C(v75, v76);
  sub_100006654(v80, v81);
  v82 = *v77;
  v83 = v77[1];
  v84 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
  v85 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
  v86 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8);
  *v84 = *v77;
  v84[1] = v83;
  sub_100017D5C(v82, v83);
  sub_100006654(v85, v86);
  v87 = v72[9];
  v88 = type metadata accessor for UUID();
  v89 = *(v88 - 8);
  v90 = v73 + v87;
  v91 = v228;
  (*(v89 + 16))(v228, v90, v88);
  (*(v89 + 56))(v91, 0, 1, v88);
  v92 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();
  sub_10002311C(v91, a2 + v92, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  v93 = (v73 + v72[10]);
  v95 = *v93;
  v94 = v93[1];
  v96 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId);
  *v96 = v95;
  v96[1] = v94;

  v97 = v72[14];
  v98 = v78;
  *(a2 + 32) = *(v73 + v97);
  v99 = *(v73 + 48);
  v100 = *(v73 + 56);
  v101 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
  v102 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
  v103 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8);
  *v101 = v99;
  v101[1] = v100;
  sub_100017D5C(v99, v100);
  v104 = v103;
  v105 = v227;
  sub_100006654(v102, v104);
  sub_100017D5C(v75, v76);
  sub_100017D5C(v78, v105);
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v106, v107))
  {
    sub_100016590(v78, v105);
    sub_100016590(v75, v76);
    v112 = v229;
    v113 = v232;
    goto LABEL_42;
  }

  v108 = v105;
  v109 = swift_slowAlloc();
  v110 = v109;
  *v109 = 134218240;
  v111 = v76 >> 62;
  v112 = v229;
  v113 = v232;
  if ((v76 >> 62) <= 1)
  {
    if (!v111)
    {
      v114 = BYTE6(v76);
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v111 != 2)
  {
    v114 = 0;
    goto LABEL_31;
  }

  v116 = *(v75 + 16);
  v115 = *(v75 + 24);
  v117 = __OFSUB__(v115, v116);
  v114 = v115 - v116;
  if (v117)
  {
    __break(1u);
LABEL_28:
    LODWORD(v114) = HIDWORD(v75) - v75;
    if (__OFSUB__(HIDWORD(v75), v75))
    {
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v114 = v114;
  }

LABEL_31:
  *(v109 + 4) = v114;
  sub_100016590(v75, v76);
  *(v110 + 12) = 2048;
  v118 = v108 >> 62;
  if ((v108 >> 62) > 1)
  {
    if (v118 != 2)
    {
      v119 = 0;
      goto LABEL_41;
    }

    v121 = *(v98 + 16);
    v120 = *(v98 + 24);
    v117 = __OFSUB__(v120, v121);
    v119 = v120 - v121;
    if (!v117)
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_38:
    LODWORD(v119) = HIDWORD(v98) - v98;
    if (__OFSUB__(HIDWORD(v98), v98))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v119 = v119;
    goto LABEL_41;
  }

  if (v118)
  {
    goto LABEL_38;
  }

  v119 = BYTE6(v108);
LABEL_41:
  *(v110 + 14) = v119;
  sub_100016590(v98, v108);
  _os_log_impl(&_mh_execute_header, v106, v107, "baaLeafCert count = %ld, baaIntermediateCert count = %ld", v110, 0x16u);

LABEL_42:

  v122 = v233;
  sub_1009A1D14(v233, v113);
  v123 = v226;
  sub_1009A1D14(v122, v226);
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v124, v125))
  {
    sub_1009A1CB8(v113);

    sub_1009A1CB8(v123);
    goto LABEL_55;
  }

  v126 = swift_slowAlloc();
  v127 = swift_slowAlloc();
  v235[0] = v127;
  *v126 = 134218242;
  v128 = *(v113 + 64);
  v129 = *(v113 + 72);
  v130 = v129 >> 62;
  if ((v129 >> 62) > 1)
  {
    if (v130 != 2)
    {
      v131 = 0;
      goto LABEL_54;
    }

    v133 = v128 + 16;
    v128 = *(v128 + 16);
    v132 = *(v133 + 8);
    v131 = v132 - v128;
    if (!__OFSUB__(v132, v128))
    {
      goto LABEL_54;
    }

    __break(1u);
LABEL_51:
    v117 = __OFSUB__(HIDWORD(v128), v128);
    v134 = HIDWORD(v128) - v128;
    if (!v117)
    {
      v131 = v134;
      goto LABEL_54;
    }

    goto LABEL_94;
  }

  if (v130)
  {
    goto LABEL_51;
  }

  v131 = BYTE6(v129);
LABEL_54:
  sub_1009A1CB8(v232);
  *(v126 + 4) = v131;
  *(v126 + 12) = 2080;
  v135 = Data.hexString.getter();
  v136 = v123;
  v138 = v137;
  sub_1009A1CB8(v136);
  v139 = sub_1000136BC(v135, v138, v235);

  *(v126 + 14) = v139;
  _os_log_impl(&_mh_execute_header, v124, v125, "S3 count %ld: %s", v126, 0x16u);
  sub_100007BAC(v127);

LABEL_55:
  sub_1009A1D14(v122, v112);
  v140 = v231;
  sub_1009A1D14(v122, v231);
  v141 = Logger.logObject.getter();
  v142 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v141, v142))
  {
    sub_1009A1CB8(v112);

    sub_1009A1CB8(v140);
    goto LABEL_68;
  }

  v143 = swift_slowAlloc();
  v144 = swift_slowAlloc();
  v235[0] = v144;
  *v143 = 134218242;
  v145 = (v112 + v234[11]);
  v146 = *v145;
  v147 = v145[1];
  v148 = v147 >> 62;
  if ((v147 >> 62) > 1)
  {
    if (v148 != 2)
    {
      v149 = 0;
      goto LABEL_67;
    }

    v151 = v146 + 16;
    v146 = *(v146 + 16);
    v150 = *(v151 + 8);
    v149 = v150 - v146;
    if (!__OFSUB__(v150, v146))
    {
      goto LABEL_67;
    }

    __break(1u);
LABEL_64:
    v117 = __OFSUB__(HIDWORD(v146), v146);
    v152 = HIDWORD(v146) - v146;
    if (!v117)
    {
      v149 = v152;
      goto LABEL_67;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v148)
  {
    goto LABEL_64;
  }

  v149 = BYTE6(v147);
LABEL_67:
  sub_1009A1CB8(v112);
  *(v143 + 4) = v149;
  *(v143 + 12) = 2080;
  v153 = v231;
  v154 = Data.hexString.getter();
  v156 = v155;
  sub_1009A1CB8(v153);
  v157 = sub_1000136BC(v154, v156, v235);

  *(v143 + 14) = v157;
  _os_log_impl(&_mh_execute_header, v141, v142, "baaLeaf count %ld: %s", v143, 0x16u);
  sub_100007BAC(v144);

LABEL_68:
  v158 = v230;
  v159 = v225;
  sub_1009A1D14(v122, v225);
  sub_1009A1D14(v122, v158);
  v160 = Logger.logObject.getter();
  v161 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v235[0] = v163;
    *v162 = 134218242;
    v164 = (v159 + v234[12]);
    v165 = *v164;
    v166 = v164[1];
    v167 = v166 >> 62;
    if ((v166 >> 62) > 1)
    {
      if (v167 != 2)
      {
        v168 = 0;
        goto LABEL_80;
      }

      v170 = v165 + 16;
      v165 = *(v165 + 16);
      v169 = *(v170 + 8);
      v168 = v169 - v165;
      if (!__OFSUB__(v169, v165))
      {
        goto LABEL_80;
      }

      __break(1u);
    }

    else if (!v167)
    {
      v168 = BYTE6(v166);
LABEL_80:
      sub_1009A1CB8(v159);
      *(v162 + 4) = v168;
      *(v162 + 12) = 2080;
      v172 = v230;
      v173 = Data.hexString.getter();
      v175 = v174;
      sub_1009A1CB8(v172);
      v176 = sub_1000136BC(v173, v175, v235);

      *(v162 + 14) = v176;
      _os_log_impl(&_mh_execute_header, v160, v161, "baaIntermediate count %ld: %s", v162, 0x16u);
      sub_100007BAC(v163);

      goto LABEL_81;
    }

    v117 = __OFSUB__(HIDWORD(v165), v165);
    v171 = HIDWORD(v165) - v165;
    if (!v117)
    {
      v168 = v171;
      goto LABEL_80;
    }

LABEL_97:
    __break(1u);
    return;
  }

  sub_1009A1CB8(v159);

  sub_1009A1CB8(v158);
LABEL_81:
  v177 = v224;
  sub_1009A1D14(v122, v224);
  v178 = Logger.logObject.getter();
  v179 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v178, v179))
  {
    v180 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v235[0] = v181;
    *v180 = 136446210;
    v182 = Data.hexString.getter();
    v183 = v177;
    v184 = v182;
    v186 = v185;
    sub_1009A1CB8(v183);
    v187 = sub_1000136BC(v184, v186, v235);

    *(v180 + 4) = v187;
    _os_log_impl(&_mh_execute_header, v178, v179, "response.serverSeed: %{public}s", v180, 0xCu);
    sub_100007BAC(v181);
  }

  else
  {

    sub_1009A1CB8(v177);
  }

  v188 = v221;
  sub_1009A1D14(v122, v221);
  v189 = Logger.logObject.getter();
  v190 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v235[0] = v192;
    *v191 = 136446210;
    v193 = Data.hexString.getter();
    v194 = v188;
    v195 = v193;
    v197 = v196;
    sub_1009A1CB8(v194);
    v198 = sub_1000136BC(v195, v197, v235);

    *(v191 + 4) = v198;
    _os_log_impl(&_mh_execute_header, v189, v190, "response.serverSignature: %{public}s", v191, 0xCu);
    sub_100007BAC(v192);
  }

  else
  {

    sub_1009A1CB8(v188);
  }

  v199 = v222;
  sub_1009A1D14(v122, v222);
  v200 = Logger.logObject.getter();
  v201 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v200, v201))
  {
    v202 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    v235[0] = v203;
    *v202 = 136446210;
    v204 = Data.hexString.getter();
    v205 = v199;
    v206 = v204;
    v208 = v207;
    sub_1009A1CB8(v205);
    v209 = sub_1000136BC(v206, v208, v235);

    *(v202 + 4) = v209;
    _os_log_impl(&_mh_execute_header, v200, v201, "response.baaAccLeafCert: %{public}s", v202, 0xCu);
    sub_100007BAC(v203);
  }

  else
  {

    sub_1009A1CB8(v199);
  }

  v210 = v223;
  sub_1009A1D14(v122, v223);
  v211 = Logger.logObject.getter();
  v212 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v211, v212))
  {
    v213 = swift_slowAlloc();
    v214 = swift_slowAlloc();
    v235[0] = v214;
    *v213 = 136446210;
    v215 = Data.hexString.getter();
    v217 = v216;
    sub_1009A1CB8(v210);
    v218 = sub_1000136BC(v215, v217, v235);

    *(v213 + 4) = v218;
    _os_log_impl(&_mh_execute_header, v211, v212, "response.baaAccIntCA1: %{public}s", v213, 0xCu);
    sub_100007BAC(v214);

    sub_100016590(v220, v219);
  }

  else
  {
    sub_100016590(v220, v219);

    sub_1009A1CB8(v210);
  }
}

unint64_t sub_10099F930@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v76[10] = v1[10];
  v76[11] = v3;
  v76[12] = v1[12];
  v77 = *(v1 + 26);
  v4 = v1[7];
  v76[6] = v1[6];
  v76[7] = v4;
  v5 = v1[9];
  v76[8] = v1[8];
  v76[9] = v5;
  v6 = v1[3];
  v76[2] = v1[2];
  v76[3] = v6;
  v7 = v1[5];
  v76[4] = v1[4];
  v76[5] = v7;
  v8 = v1[1];
  v76[0] = *v1;
  v76[1] = v8;
  v9 = sub_1009A0304(v76);
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v37 = sub_10004CA28(v76);
        a1[3] = &type metadata for AirPodsLESendPairingDataCommandPayload;
        a1[4] = sub_1009A00A4();
        v38 = swift_allocObject();
        *a1 = v38;
        memmove((v38 + 16), v37, 0xD8uLL);
        v39 = v1[11];
        v72 = v1[10];
        v73 = v39;
        v74 = v1[12];
        v75 = *(v1 + 26);
        v40 = v1[7];
        v68 = v1[6];
        v69 = v40;
        v41 = v1[9];
        v70 = v1[8];
        v71 = v41;
        v42 = v1[3];
        v64 = v1[2];
        v65 = v42;
        v43 = v1[5];
        v66 = v1[4];
        v67 = v43;
        v44 = v1[1];
        v62 = *v1;
        v63 = v44;
        v34 = sub_10004CA28(&v62);
        v35 = &unk_1016B0720;
        v36 = &unk_1013CDFD0;
      }

      else
      {
        v53 = sub_10004CA28(v76);
        a1[3] = &type metadata for AirPodsLEFinalizePairingCommandPayload;
        a1[4] = sub_10099FFE8();
        v54 = swift_allocObject();
        *a1 = v54;
        memmove((v54 + 16), v53, 0xC0uLL);
        v55 = v1[11];
        v72 = v1[10];
        v73 = v55;
        v74 = v1[12];
        v75 = *(v1 + 26);
        v56 = v1[7];
        v68 = v1[6];
        v69 = v56;
        v57 = v1[9];
        v70 = v1[8];
        v71 = v57;
        v58 = v1[3];
        v64 = v1[2];
        v65 = v58;
        v59 = v1[5];
        v66 = v1[4];
        v67 = v59;
        v60 = v1[1];
        v62 = *v1;
        v63 = v60;
        v34 = sub_10004CA28(&v62);
        v35 = &unk_1016B0718;
        v36 = &unk_1013CDFC8;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = sub_10004CA28(v76);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v11 = swift_allocObject();
        *a1 = v11;
        v12 = v10[1];
        *(v11 + 16) = *v10;
        *(v11 + 32) = v12;
        v13 = v1[1];
        v62 = *v1;
        v63 = v13;
        v14 = v1[5];
        v66 = v1[4];
        v67 = v14;
        v15 = v1[3];
        v64 = v1[2];
        v65 = v15;
        v16 = v1[9];
        v70 = v1[8];
        v71 = v16;
        v17 = v1[7];
        v68 = v1[6];
        v69 = v17;
        v75 = *(v1 + 26);
        v18 = v1[12];
        v73 = v1[11];
        v74 = v18;
        v72 = v1[10];
        v19 = sub_10004CA28(&v62);
        v20 = v19[2];
        v21 = v19[3];
        sub_100017D5C(*v19, v19[1]);
        return sub_100017D5C(v20, v21);
      }

      v45 = sub_10004CA28(v76);
      a1[3] = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      a1[4] = sub_100391B40();
      v46 = swift_allocObject();
      *a1 = v46;
      memmove((v46 + 16), v45, 0x50uLL);
      v47 = v1[11];
      v72 = v1[10];
      v73 = v47;
      v74 = v1[12];
      v75 = *(v1 + 26);
      v48 = v1[7];
      v68 = v1[6];
      v69 = v48;
      v49 = v1[9];
      v70 = v1[8];
      v71 = v49;
      v50 = v1[3];
      v64 = v1[2];
      v65 = v50;
      v51 = v1[5];
      v66 = v1[4];
      v67 = v51;
      v52 = v1[1];
      v62 = *v1;
      v63 = v52;
      v34 = sub_10004CA28(&v62);
      v35 = &unk_10169EAC0;
      v36 = &unk_10139E338;
    }

    return sub_1000D2A70(v34, v61, v35, v36);
  }

  if (v9 > 5)
  {
    if (v9 == 6)
    {
      a1[3] = &type metadata for AirPodsPairingCompleteCommandPayload;
      result = sub_1009A0048();
    }

    else
    {
      a1[3] = &type metadata for UnpairCommandPayload;
      result = sub_10027EE90();
    }
  }

  else
  {
    if (v9 == 4)
    {
      v23 = sub_10004CA28(v76);
      a1[3] = &type metadata for AirPodsLESendPairingStatusCommandPayload;
      a1[4] = sub_1009A00FC();
      v24 = swift_allocObject();
      *a1 = v24;
      v25 = v23[3];
      v27 = *v23;
      v26 = v23[1];
      v24[3] = v23[2];
      v24[4] = v25;
      v24[1] = v27;
      v24[2] = v26;
      v28 = v1[11];
      v72 = v1[10];
      v73 = v28;
      v74 = v1[12];
      v75 = *(v1 + 26);
      v29 = v1[7];
      v68 = v1[6];
      v69 = v29;
      v30 = v1[9];
      v70 = v1[8];
      v71 = v30;
      v31 = v1[3];
      v64 = v1[2];
      v65 = v31;
      v32 = v1[5];
      v66 = v1[4];
      v67 = v32;
      v33 = v1[1];
      v62 = *v1;
      v63 = v33;
      v34 = sub_10004CA28(&v62);
      v35 = &unk_1016B0710;
      v36 = &unk_1013CDFC0;
      return sub_1000D2A70(v34, v61, v35, v36);
    }

    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  a1[4] = result;
  return result;
}

double sub_10099FE14@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  sub_1009A03D8(a2, a3, a4, a5, v14);
  if (!v5)
  {
    v8 = v14[11];
    *(a1 + 160) = v14[10];
    *(a1 + 176) = v8;
    *(a1 + 192) = v14[12];
    *(a1 + 208) = v15;
    v9 = v14[7];
    *(a1 + 96) = v14[6];
    *(a1 + 112) = v9;
    v10 = v14[9];
    *(a1 + 128) = v14[8];
    *(a1 + 144) = v10;
    v11 = v14[3];
    *(a1 + 32) = v14[2];
    *(a1 + 48) = v11;
    v12 = v14[5];
    *(a1 + 64) = v14[4];
    *(a1 + 80) = v12;
    result = *v14;
    v13 = v14[1];
    *a1 = v14[0];
    *(a1 + 16) = v13;
  }

  return result;
}

uint64_t sub_10099FEB8(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = sub_100A7491C(a3, a4);
  if (!v4)
  {
    v10 = result;
    v11 = v8;
    v12 = v9;
    sub_100017D5C(result, v8);
    sub_10049613C(v10, v11, v15);
    v13 = v15[0];
    v14 = v15[1];
    a1[3] = &type metadata for CollaborativeKeyGen.v1.C2;
    a1[4] = sub_1001023A0();
    *a1 = v13;
    a1[1] = v14;
    a2[3] = type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
    a2[4] = &off_101645BA0;
    result = sub_100016590(v10, v11);
    *a2 = v12;
  }

  return result;
}

__n128 sub_10099FF98@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  sub_1009A1A8C(a2, a3, a4, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v7;
    *(a1 + 64) = v8[4];
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t sub_10099FFE8()
{
  result = qword_1016B05C8;
  if (!qword_1016B05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B05C8);
  }

  return result;
}

unint64_t sub_1009A0048()
{
  result = qword_1016B05D0;
  if (!qword_1016B05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B05D0);
  }

  return result;
}

unint64_t sub_1009A00A4()
{
  result = qword_1016B05D8;
  if (!qword_1016B05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B05D8);
  }

  return result;
}

unint64_t sub_1009A00FC()
{
  result = qword_1016B05E0;
  if (!qword_1016B05E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B05E0);
  }

  return result;
}

unint64_t sub_1009A0154(uint64_t a1)
{
  *(a1 + 8) = sub_1009A0184();
  result = sub_1009A01D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1009A0184()
{
  result = qword_1016B06D0;
  if (!qword_1016B06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B06D0);
  }

  return result;
}

unint64_t sub_1009A01D8()
{
  result = qword_1016B06D8;
  if (!qword_1016B06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B06D8);
  }

  return result;
}

unint64_t sub_1009A022C()
{
  result = qword_1016B06E0;
  if (!qword_1016B06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B06E0);
  }

  return result;
}

double sub_1009A0280(uint64_t a1)
{
  *a1 = 2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  result = -0.0;
  *(a1 + 192) = xmmword_1013A1630;
  *(a1 + 208) = 0x2000000000000000;
  return result;
}

double sub_1009A02D4(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_10138BBF0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

uint64_t sub_1009A0304(uint64_t a1)
{
  v1 = (*(a1 + 208) >> 59) & 6 | (*(a1 + 192) >> 63);
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

unint64_t sub_1009A0330()
{
  result = qword_1016B0708;
  if (!qword_1016B0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0708);
  }

  return result;
}

uint64_t sub_1009A03D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v126 = a4;
  v127 = a3;
  v9 = type metadata accessor for String.Encoding();
  v129 = *(v9 - 8);
  v130 = v9;
  __chkstk_darwin(v9);
  v128 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&qword_1016B0728, &qword_1013CDFE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v119 - v12;
  v14 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a2;
  sub_10001F280(a2, &v134);
  v131 = sub_1000BC4D4(&qword_1016B0730, &unk_1013DE2E0);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v13, 0, 1, v14);
    sub_1009A1C54(v13, v17);
    sub_10099E5D8(v17, a1);
    if (v5)
    {
LABEL_3:
      v20 = v17;
      return sub_1009A1CB8(v20);
    }

    v32 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
    swift_beginAccess();
    sub_1000D2A70(a1 + v32, &v134, &qword_101697378, &unk_101391940);
    v33 = *(&v135 + 1);
    if (!*(&v135 + 1))
    {
      sub_10000B3A8(&v134, &qword_101697378, &unk_101391940);
      sub_100413200();
      swift_allocError();
      *v56 = 8;
      swift_willThrow();
      goto LABEL_3;
    }

    v119 = a5;
    v125 = v17;
    v34 = v136;
    v35 = sub_1000035D0(&v134, *(&v135 + 1));
    v36 = *(v33 - 8);
    __chkstk_darwin(v35);
    v38 = &v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v38);
    sub_10000B3A8(&v134, &qword_101697378, &unk_101391940);
    v39 = (*(*(*(v34 + 8) + 8) + 40))(v33);
    v41 = v40;
    (*(v36 + 8))(v38, v33);
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    v43 = sub_1000076D4(v42, qword_10177ACB0);
    sub_100017D5C(v39, v41);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    sub_100016590(v39, v41);
    v46 = os_log_type_enabled(v44, v45);
    v47 = v39;
    v124 = v41;
    if (v46)
    {
      v48 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *&v134 = v121;
      *v48 = 136446210;
      v49 = Data.hexString.getter();
      v51 = sub_1000136BC(v49, v50, &v134);
      LODWORD(v120) = v45;
      v52 = v51;

      *(v48 + 4) = v52;
      v47 = v39;
      _os_log_impl(&_mh_execute_header, v44, v120, "sharedCommitment: %{public}s", v48, 0xCu);
      sub_100007BAC(v121);
    }

    if (*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) == 1)
    {
      v128 = a1;
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v53 = __DataStorage.init(length:)();
      *&v134 = 0x3C00000000;
      *(&v134 + 1) = v53;
      sub_1007765FC(&v134, 0);
      v54 = v134;
      v55 = *(&v134 + 1) | 0x4000000000000000;
    }

    else
    {
      if (!*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId + 8) || (, v57 = v128, static String.Encoding.utf8.getter(), v54 = String.data(using:allowLossyConversion:)(), v55 = v58, , (*(v129 + 8))(v57, v130), v55 >> 60 == 15))
      {
        v59 = Logger.logObject.getter();
        v60 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v59, v60, "Unable to decode masked apple ID", v61, 2u);
        }

        sub_100413200();
        swift_allocError();
        *v62 = 7;
        swift_willThrow();
        sub_100016590(v47, v124);
        v20 = v125;
        return sub_1009A1CB8(v20);
      }

      v128 = a1;
    }

    sub_100017D5C(v54, v55);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    sub_100016590(v54, v55);
    v65 = os_log_type_enabled(v63, v64);
    v122 = v43;
    v123 = v47;
    v129 = v55;
    v130 = v54;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v134 = v67;
      *v66 = 136446210;
      sub_100017D5C(v54, v55);
      v68 = Data.description.getter();
      v69 = v54;
      v70 = v68;
      v72 = v71;
      sub_100016590(v69, v55);
      v73 = sub_1000136BC(v70, v72, &v134);

      *(v66 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v63, v64, "maskedIdentifier: %{public}s", v66, 0xCu);
      sub_100007BAC(v67);
    }

    v74 = v128;
    *&v134 = *(v128 + 32);
    sub_100102194();
    v75 = FixedWidthInteger.data.getter();
    v77 = v76;
    sub_100017D5C(v75, v76);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    sub_100016590(v75, v77);
    v80 = os_log_type_enabled(v78, v79);
    v120 = v77;
    v121 = v75;
    if (v80)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v134 = v82;
      *v81 = 136446210;
      v83 = Data.hexString.getter();
      v85 = v74;
      v86 = sub_1000136BC(v83, v84, &v134);

      *(v81 + 4) = v86;
      v74 = v85;
      _os_log_impl(&_mh_execute_header, v78, v79, "response.pairingEpoch: %{public}s", v81, 0xCu);
      sub_100007BAC(v82);
    }

    v87 = *(v74 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8);
    if (v87 >> 60 == 15 || (v88 = *(v74 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3 + 8), v88 >> 60 == 15) || (v89 = *(v74 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8), v89 >> 60 == 15) || (v90 = (v74 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1), v91 = *(v74 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8), v91 >> 60 == 15))
    {
      sub_10001F280(v132, &v134);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      v94 = os_log_type_enabled(v92, v93);
      v95 = v121;
      if (v94)
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v149 = v97;
        *v96 = 136446210;
        sub_10001F280(&v134, v133);
        v98 = String.init<A>(describing:)();
        v100 = v99;
        sub_100007BAC(&v134);
        v101 = sub_1000136BC(v98, v100, &v149);

        *(v96 + 4) = v101;
        _os_log_impl(&_mh_execute_header, v92, v93, "Invalid pairing lock data %{public}s", v96, 0xCu);
        sub_100007BAC(v97);
      }

      else
      {

        sub_100007BAC(&v134);
      }

      v103 = v124;
      v102 = v125;
      v104 = v123;
      sub_100413200();
      swift_allocError();
      *v105 = 2;
      swift_willThrow();
      sub_100016590(v95, v120);
      sub_100016590(v130, v129);
      sub_100016590(v104, v103);
      v20 = v102;
      return sub_1009A1CB8(v20);
    }

    v106 = *(v74 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
    v131 = *(v74 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3);
    v107 = v131;
    v132 = v106;
    v128 = *(v74 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
    v108 = v128;
    v109 = *v90;
    sub_10002E98C(v106, v87);
    sub_10002E98C(v107, v88);
    sub_10002E98C(v108, v89);
    sub_10002E98C(v109, v91);
    v111 = v126;
    v110 = v127;
    sub_100017D5C(v127, v126);
    sub_1001BE9F4(v123, v124, v132, v87, v130, v129, v131, v88, v133, v128, v89, v109, v91, v121, v120, v110, v111);
    sub_1009A1CB8(v125);
    v142 = v133[8];
    v143 = v133[9];
    v144 = v133[10];
    v145 = v133[11];
    v138 = v133[4];
    v139 = v133[5];
    v140 = v133[6];
    v141 = v133[7];
    v134 = v133[0];
    v135 = v133[1];
    v136 = v133[2];
    v137 = v133[3];
    result = sub_1001DA318(&v134);
    v112 = v145;
    v113 = v119;
    *(v119 + 160) = v144;
    *(v113 + 176) = v112;
    *(v113 + 192) = v146;
    *(v113 + 208) = v147;
    v114 = v141;
    *(v113 + 96) = v140;
    *(v113 + 112) = v114;
    v115 = v143;
    *(v113 + 128) = v142;
    *(v113 + 144) = v115;
    v116 = v137;
    *(v113 + 32) = v136;
    *(v113 + 48) = v116;
    v117 = v139;
    *(v113 + 64) = v138;
    *(v113 + 80) = v117;
    v118 = v135;
    *v113 = v134;
    *(v113 + 16) = v118;
  }

  else
  {
    v19(v13, 1, 1, v14);
    sub_10000B3A8(v13, &qword_1016B0728, &qword_1013CDFE0);
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177ACB0);
    sub_10001F280(v132, &v134);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v148[0] = v26;
      *v25 = 136446210;
      sub_10001F280(&v134, v133);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      sub_100007BAC(&v134);
      v30 = sub_1000136BC(v27, v29, v148);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Invalid pairing lock response %{public}s", v25, 0xCu);
      sub_100007BAC(v26);
    }

    else
    {

      sub_100007BAC(&v134);
    }

    sub_100413200();
    swift_allocError();
    *v31 = 2;
    return swift_willThrow();
  }

  return result;
}

uint8_t *sub_1009A1178(uint64_t a1, uint64_t a2)
{
  sub_10001F280(a1, v85);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (swift_dynamicCast())
  {
    v80 = v84[0];
    v81 = v84[1];
    v82 = v84[2];
    v83 = v84[3];
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177ACB0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received pairing status.", v8, 2u);
    }

    v9 = v81;
    sub_100017D5C(v81, *(&v81 + 1));
    v10 = sub_1008CDF88(v81, *(&v81 + 1));
    if (v10)
    {
      v11 = v10;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v76 = v15;
        *v14 = 136446210;
        v16 = sub_1008CDD10(v11);
        v18 = sub_1000136BC(v16, v17, &v76);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Pairing failed with status %{public}s", v14, 0xCu);
        sub_100007BAC(v15);
      }

      sub_100413200();
      swift_allocError();
      v20 = 4;
LABEL_20:
      *v19 = v20;
      swift_willThrow();
      return sub_1001DA6B0(&v80);
    }

    sub_100017D5C(v80, *(&v80 + 1));
    sub_100496254(v80, *(&v80 + 1), &v76);
    if (v2)
    {

      sub_1001DA704(&v80, &v76);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      sub_1001DA6B0(&v80);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v76 = v35;
        *v34 = 136315138;
        v36 = Data.hexString.getter();
        v38 = sub_1000136BC(v36, v37, &v76);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Invalid C3: %s", v34, 0xCu);
        sub_100007BAC(v35);
      }

      sub_100413200();
      swift_allocError();
      v20 = 9;
      goto LABEL_20;
    }

    v75 = v76;
    v74 = v77;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v86 = a2;
    if (v41)
    {
      bufa = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = v73;
      *bufa = 136446210;
      v42 = sub_1008CDD10(0);
      v44 = sub_1000136BC(v42, v43, &v76);

      *(bufa + 4) = v44;
      _os_log_impl(&_mh_execute_header, v39, v40, "status: %{public}s", bufa, 0xCu);
      sub_100007BAC(v73);
    }

    sub_1001DA704(&v80, &v76);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v45, v46))
    {
      sub_1001DA6B0(&v80);
LABEL_36:

      sub_1001DA704(&v80, &v76);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      sub_1001DA6B0(&v80);
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v76 = v60;
        *v59 = 136315138;
        v61 = Data.hexString.getter();
        v63 = sub_1000136BC(v61, v62, &v76);

        *(v59 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v57, v58, "C3: %s", v59, 0xCu);
        sub_100007BAC(v60);
      }

      v78 = &type metadata for CollaborativeKeyGen.v1.C3;
      v79 = sub_100101704();
      v76 = v75;
      v77 = v74;
      v64 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
      v65 = v86;
      swift_beginAccess();
      sub_10002311C(&v76, v65 + v64, &qword_101697320, &qword_10138BE90);
      swift_endAccess();
      v66 = *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
      v67 = *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8);
      *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status) = v9;
      sub_100017D5C(v9, *(&v9 + 1));
      sub_100006654(v66, v67);
      v68 = v82;
      sub_100017D5C(v82, *(&v82 + 1));
      sub_1001DA6B0(&v80);
      v69 = *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
      v70 = *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
      *(v65 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4) = v68;
      return sub_100006654(v69, v70);
    }

    v47 = swift_slowAlloc();
    result = swift_slowAlloc();
    buf = result;
    v76 = result;
    *v47 = 134218242;
    v48 = v82;
    v49 = *(&v82 + 1) >> 62;
    if ((*(&v82 + 1) >> 62) > 1)
    {
      if (v49 != 2)
      {
        v50 = 0;
        goto LABEL_35;
      }

      v52 = *(v82 + 16);
      v51 = *(v82 + 24);
      v53 = __OFSUB__(v51, v52);
      v50 = v51 - v52;
      if (!v53)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    else if (!v49)
    {
      v50 = BYTE14(v82);
LABEL_35:
      *(v47 + 4) = v50;
      sub_1001DA6B0(&v80);
      *(v47 + 12) = 2080;
      v54 = Data.hexString.getter();
      v56 = sub_1000136BC(v54, v55, &v76);

      *(v47 + 14) = v56;
      _os_log_impl(&_mh_execute_header, v45, v46, "S4 count %ld: %s", v47, 0x16u);
      sub_100007BAC(buf);

      goto LABEL_36;
    }

    LODWORD(v50) = HIDWORD(v48) - v48;
    if (__OFSUB__(HIDWORD(v48), v48))
    {
      __break(1u);
      return result;
    }

    v50 = v50;
    goto LABEL_35;
  }

  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177ACB0);
  sub_10001F280(a1, v84);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v76 = v25;
    *v24 = 136446210;
    sub_10001F280(v84, &v80);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_100007BAC(v84);
    v29 = sub_1000136BC(v26, v28, &v76);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Invalid sendPairingStatus payload %{public}s", v24, 0xCu);
    sub_100007BAC(v25);
  }

  else
  {

    sub_100007BAC(v84);
  }

  sub_100413200();
  swift_allocError();
  *v30 = 0;
  return swift_willThrow();
}

uint64_t sub_1009A1A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (a3 >> 60 == 15)
  {
    sub_100413200();
    swift_allocError();
    *v5 = 9;
    return swift_willThrow();
  }

  v9 = v4;
  sub_10001F280(a1, v18);
  sub_100017D5C(a2, a3);
  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
  if (!swift_dynamicCast())
  {
    sub_100413200();
    swift_allocError();
    *v13 = 5;
    swift_willThrow();
    return sub_100006654(a2, a3);
  }

  v11 = CCCKGGetOpeningSize();

  sub_1003F141C(a2, a3, v17, v11, v16);
  if (v9)
  {

    sub_100413200();
    swift_allocError();
    *v12 = 10;
    swift_willThrow();

    return sub_100006654(a2, a3);
  }

  sub_100006654(a2, a3);

  v14 = v16[3];
  a4[2] = v16[2];
  a4[3] = v14;
  a4[4] = v16[4];
  v15 = v16[1];
  *a4 = v16[0];
  a4[1] = v15;
  return result;
}

uint64_t sub_1009A1C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009A1CB8(uint64_t a1)
{
  v2 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1009A1D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009A1D78(uint64_t result)
{
  v1 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v2 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 192) | 0x8000000000000000;
  v12 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v1;
  *(result + 40) = v2;
  *(result + 56) = v3;
  *(result + 72) = v4;
  *(result + 88) = v5;
  *(result + 104) = v6;
  *(result + 120) = v7;
  *(result + 136) = v8;
  *(result + 152) = v9;
  *(result + 168) = v10;
  *(result + 192) = v11;
  *(result + 208) = v12;
  return result;
}

uint64_t sub_1009A1E1C(uint64_t result)
{
  v1 = *(result + 192);
  v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v2;
  *(result + 40) = v3;
  *(result + 56) = v4;
  *(result + 72) = v5;
  *(result + 88) = v6;
  *(result + 104) = v7;
  *(result + 120) = v8;
  *(result + 136) = v9;
  *(result + 152) = v10;
  *(result + 168) = v11;
  *(result + 192) = v1;
  *(result + 208) = v12;
  return result;
}

uint64_t sub_1009A1EBC(uint64_t result)
{
  v1 = *(result + 192);
  v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
  v3 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
  v4 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
  v5 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
  v6 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
  v7 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
  v8 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
  v9 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
  v10 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
  v11 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
  v12 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL;
  *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 24) = v2;
  *(result + 40) = v3;
  *(result + 56) = v4;
  *(result + 72) = v5;
  *(result + 88) = v6;
  *(result + 104) = v7;
  *(result + 120) = v8;
  *(result + 136) = v9;
  *(result + 152) = v10;
  *(result + 168) = v11;
  *(result + 192) = v1;
  *(result + 208) = v12;
  return result;
}

unint64_t sub_1009A1F58()
{
  result = qword_1016B0748;
  if (!qword_1016B0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0748);
  }

  return result;
}

unint64_t sub_1009A1FAC()
{
  result = qword_1016B0750;
  if (!qword_1016B0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0750);
  }

  return result;
}

unint64_t sub_1009A2000()
{
  result = qword_1016B0758;
  if (!qword_1016B0758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0758);
  }

  return result;
}

uint64_t sub_1009A20A8(uint64_t a1)
{
  v1 = (*(a1 + 208) >> 59) & 6 | (*(a1 + 192) >> 63);
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1009A20D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 24) >> 58) & 0xC | (*(a1 + 8) >> 60) & 3 | *(a1 + 47) & 0x30 | (*(a1 + 56) >> 54) & 0xC0 | (*(a1 + 72) >> 52) & 0x300 | (*(a1 + 88) >> 50) & 0xC00 | *(a1 + 110) & 0x3000 | (*(a1 + 120) >> 46) & 0xC000 | (*(a1 + 136) >> 44) & 0x30000 | (*(a1 + 152) >> 42) & 0xC0000 | (*(a1 + 168) >> 40) & 0x300000 | (*(a1 + 192) >> 8 << 22);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1009A21C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      v3 = -a2;
      *result = 0;
      *(result + 8) = (-a2 & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (v3 << 58) & 0x3000000000000000;
      *(result + 32) = 0;
      *(result + 40) = (v3 << 56) & 0x3000000000000000;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 54) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 52) & 0x3000000000000000;
      *(result + 80) = 0;
      *(result + 88) = (v3 << 50) & 0x3000000000000000;
      *(result + 96) = 0;
      *(result + 104) = (v3 << 48) & 0x3000000000000000;
      *(result + 112) = 0;
      *(result + 120) = (v3 << 46) & 0x3000000000000000;
      *(result + 128) = 0;
      *(result + 136) = (v3 << 44) & 0x3000000000000000;
      *(result + 144) = 0;
      *(result + 152) = (v3 << 42) & 0x3000000000000000;
      *(result + 160) = 0;
      *(result + 168) = (v3 << 40) & 0x3000000000000000;
      *(result + 176) = 0;
      *(result + 184) = 0;
      *(result + 200) = 0;
      *(result + 208) = 0;
      *(result + 192) = (v3 >> 14) & 0x3FF00;
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1009A22CC(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
    v3 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
    v4 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
    v5 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
    v6 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
    v7 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
    v8 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
    v9 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
    v10 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
    v11 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
    v12 = a2 >> 1;
    v13 = *(result + 192) | (a2 << 63);
    v14 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | ((v12 & 3) << 60);
    *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 24) = v2;
    *(result + 40) = v3;
    *(result + 56) = v4;
    *(result + 72) = v5;
    *(result + 88) = v6;
    *(result + 104) = v7;
    *(result + 120) = v8;
    *(result + 136) = v9;
    *(result + 152) = v10;
    *(result + 168) = v11;
    *(result + 192) = v13;
    *(result + 208) = v14;
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0;
    *(result + 192) = xmmword_1013A1630;
    *(result + 208) = 0x2000000000000000;
  }

  return result;
}

unint64_t sub_1009A23EC(uint64_t a1)
{
  *(a1 + 8) = sub_1009A241C();
  result = sub_10027FBB8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1009A241C()
{
  result = qword_1016B0760;
  if (!qword_1016B0760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0760);
  }

  return result;
}

uint64_t sub_1009A2470(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1009A24B8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1009A2510(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for ManagedCBPeripheralManager.KeyType(0);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for SystemInfo.DeviceLockState();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_1009A2644, 0, 0);
}

uint64_t sub_1009A2644()
{
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = type metadata accessor for Logger();
  *(v0 + 152) = sub_1000076D4(v2, qword_10177B810);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "bluetoothConnectionKeys for request: %{public}@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 216))
  {
    goto LABEL_11;
  }

  type metadata accessor for Transaction();
  v10 = static Transaction.currentNSXPCConnection.getter();
  if (v10)
  {
    v11 = v10;
    sub_1009AB74C();
    if (NSXPCConnection.hasEntitlement<A>(_:)())
    {

LABEL_11:
      v13 = *(v0 + 136);
      v12 = *(v0 + 144);
      v14 = *(v0 + 120);
      v15 = *(v0 + 128);
      static SystemInfo.lockState.getter();
      (*(v15 + 104))(v13, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v14);
      sub_1009ABA98(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      v17 = *(v15 + 8);
      v17(v13, v14);
      v17(v12, v14);
      if (v16)
      {
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v18, v19, "bluetoothConnectionKeys called while in .beforeFirstUnlock state", v20, 2u);
        }

        v21 = objc_allocWithZone(SPCBPeripheralKeyResponse);
        sub_100008BB8(0, &qword_1016B07A8, SPPeripheral_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        v23 = [v21 initWithPeripherals:isa];

        v24 = *(v0 + 8);

        return v24(v23);
      }

      else
      {
        v26 = sub_1000035D0(*(v0 + 80), *(*(v0 + 80) + 24));
        v28 = *v26;
        v27 = v26[1];
        v29 = v26[2];
        v30 = swift_task_alloc();
        *(v0 + 160) = v30;
        *v30 = v0;
        v30[1] = sub_1009A2C9C;

        return sub_100F12038(v28, v27, v29);
      }
    }

    type metadata accessor for SPCBPeripheralError(0);
    *(v0 + 56) = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1009ABA98(&qword_1016963B0, type metadata accessor for SPCBPeripheralError, &unk_10138A6D4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Unable to get current NSXPCConnection!", v33, 2u);
    }

    type metadata accessor for SPCBPeripheralError(0);
    *(v0 + 40) = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_1009ABA98(&qword_1016963B0, type metadata accessor for SPCBPeripheralError, &unk_10138A6D4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1009A2C9C(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return _swift_task_switch(sub_1009A2D9C, 0, 0);
}

uint64_t sub_1009A2D9C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 80);
  v3 = [*(v0 + 72) requestParameters];
  sub_100008BB8(0, &qword_1016B0788, SPCBPeripheralKeyRequestParameters_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 176) = v4;

  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  v7 = sub_1000BC4D4(&qword_1016B0790, &qword_1013CF1A8);
  v8 = sub_1000BC4D4(&qword_1016B0798, &qword_1013CF1B0);
  v9 = sub_1000041A4(&qword_1016B07A0, &qword_1016B0790, &qword_1013CF1A8, &protocol conformance descriptor for [A]);
  *v6 = v0;
  v6[1] = sub_1009A2F38;

  return Sequence.asyncMap<A>(_:)(&unk_1013CF1A0, v5, v7, v8, v9);
}

uint64_t sub_1009A2F38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_1009A382C;
  }

  else
  {
    v4 = sub_1009A3084;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1009A3084()
{
  v77 = v1;
  v2 = v1[25];
  isa = v2[2].isa;
  if (isa)
  {
    v4 = 0;
    v70 = v1[12];
    v5 = v2 + 4;
    v6 = _swiftEmptyDictionarySingleton;
    v67 = v2[2].isa;
    v68 = v1[25];
    v66 = v2 + 4;
    while (1)
    {
      if (v4 >= v2[2].isa)
      {
        goto LABEL_61;
      }

      v7 = v5[2 * v4 + 1].isa;
      if (!(v7 >> 62))
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          break;
        }

        goto LABEL_4;
      }

      v0 = v2;
      v8 = _CocoaArrayWrapper.endIndex.getter();
      v2 = v0;
      if (v8)
      {
        break;
      }

LABEL_4:
      v4 = (v4 + 1);
      if (v4 == isa)
      {
        while (1)
        {

          v43 = v6[2].isa;
          if (!v43)
          {
            goto LABEL_39;
          }

LABEL_36:
          isa = sub_1003CC318();
          v44 = sub_1003AA840(&v76, (isa + 32), v43, v6);
          v45 = v76;

          sub_1000128F8(v45);
          if (v44 == v43)
          {
            goto LABEL_40;
          }

          __break(1u);
        }
      }
    }

    v69 = v4;
    v74 = v7 & 0xC000000000000001;
    v71 = v7 & 0xFFFFFFFFFFFFFF8;

    v9 = 0;
    v72 = v7;
    while (1)
    {
      if (v74)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v71 + 16))
        {
          goto LABEL_59;
        }

        v13 = *(v7 + v9 + 4);
      }

      v14 = v13;
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v16 = v8;
      v17 = [v13 userIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = [v14 beaconIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (v6[2].isa)
      {
        v19 = sub_1007729CC(v1[14]);
        if (v20)
        {
          v21 = v1[14];
          v22 = *(v6[7].isa + v19);
          isa = sub_1009AA1D8(v22, v14);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v6;
          v0 = &v76;
          sub_1010006B0(isa, v21, isUniquelyReferenced_nonNull_native);

          v6 = v76;
          v12 = v21;
          goto LABEL_10;
        }
      }

      v24 = v1[13];
      sub_1009AB854(v1[14], v24, type metadata accessor for ManagedCBPeripheralManager.KeyType);
      v25 = v14;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v6;
      v27 = v24;
      v0 = v6;
      v28 = sub_1007729CC(v27);
      v30 = v6[2].isa;
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_58;
      }

      v34 = v29;
      if (v6[3].isa >= v33)
      {
        if ((v26 & 1) == 0)
        {
          v41 = v28;
          sub_10100BC18();
          v28 = v41;
          v6 = v76;
          v37 = v1[13];
          v0 = v1[14];
          if ((v34 & 1) == 0)
          {
LABEL_26:
            v6[(v28 >> 6) + 8].isa = (v6[(v28 >> 6) + 8].isa | (1 << v28));
            v38 = v28;
            sub_1009AB854(v37, v6[6].isa + *(v70 + 72) * v28, type metadata accessor for ManagedCBPeripheralManager.KeyType);
            *(v6[7].isa + v38) = v25;

            isa = type metadata accessor for ManagedCBPeripheralManager.KeyType;
            sub_1009AB920(v37, type metadata accessor for ManagedCBPeripheralManager.KeyType);
            sub_1009AB920(v0, type metadata accessor for ManagedCBPeripheralManager.KeyType);
            v39 = v6[2].isa;
            v32 = __OFADD__(v39, 1);
            v40 = (v39 + 1);
            if (v32)
            {
              goto LABEL_60;
            }

            v6[2].isa = v40;
            goto LABEL_11;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v35 = v1[13];
        sub_100FF3790(v33, v26);
        v6 = v76;
        v28 = sub_1007729CC(v35);
        if ((v34 & 1) != (v36 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }
      }

      v37 = v1[13];
      v0 = v1[14];
      if ((v34 & 1) == 0)
      {
        goto LABEL_26;
      }

LABEL_9:
      v10 = v6[7].isa;
      v11 = *(v10 + v28);
      *(v10 + v28) = v25;

      isa = type metadata accessor for ManagedCBPeripheralManager.KeyType;
      sub_1009AB920(v37, type metadata accessor for ManagedCBPeripheralManager.KeyType);
      v12 = v0;
LABEL_10:
      sub_1009AB920(v12, type metadata accessor for ManagedCBPeripheralManager.KeyType);
LABEL_11:
      v8 = v16;
      v7 = v72;
      ++v9;
      if (v15 == v8)
      {

        isa = v67;
        v2 = v68;
        v4 = v69;
        v5 = v66;
        goto LABEL_4;
      }
    }
  }

  v6 = _swiftEmptyDictionarySingleton;
  v43 = _swiftEmptyDictionarySingleton[2];
  if (v43)
  {
    goto LABEL_36;
  }

LABEL_39:
  isa = _swiftEmptyArrayStorage;
LABEL_40:

  v0 = Logger.logObject.getter();
  LOBYTE(v46) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v0, v46))
  {

    goto LABEL_46;
  }

  v47 = swift_slowAlloc();
  *v47 = 134217984;
  if (isa < 0 || (isa & 0x4000000000000000) != 0)
  {
    goto LABEL_67;
  }

  v48 = *(isa + 16);
  while (1)
  {
    *(v47 + 4) = v48;
    v49 = v47;

    _os_log_impl(&_mh_execute_header, v0, v46, "Peripheral count: %ld", v49, 0xCu);

LABEL_46:

    if (isa < 0 || (isa & 0x4000000000000000) != 0)
    {
LABEL_62:
      v47 = _CocoaArrayWrapper.endIndex.getter();
      v46 = v47;
      if (!v47)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v46 = *(isa + 16);
      if (!v46)
      {
        goto LABEL_63;
      }
    }

    if (v46 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_67:
    v64 = isa;
    v65 = v47;
    v48 = _CocoaArrayWrapper.endIndex.getter();
    v47 = v65;
    isa = v64;
  }

  v50 = 0;
  v51 = isa & 0xC000000000000001;
  v73 = isa & 0xC000000000000001;
  v75 = v46;
  do
  {
    if (v51)
    {
      v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v52 = *(isa + 8 * v50 + 32);
    }

    v53 = v52;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412290;
      *(v56 + 4) = v53;
      *v57 = v53;
      v58 = isa;
      v59 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "Peripheral: %@", v56, 0xCu);
      sub_10000B3A8(v57, &qword_10169BB30, &unk_10138B3C0);

      v51 = v73;

      v53 = v54;
      v54 = v59;
      isa = v58;
      v46 = v75;
    }

    ++v50;
  }

  while (v46 != v50);
LABEL_63:
  v60 = objc_allocWithZone(SPCBPeripheralKeyResponse);
  sub_100008BB8(0, &qword_1016B07A8, SPPeripheral_ptr);
  v61 = Array._bridgeToObjectiveC()().super.isa;

  v62 = [v60 initWithPeripherals:v61];

  v63 = v1[1];

  return v63(v62);
}

uint64_t sub_1009A382C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1009A38B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = type metadata accessor for UUID();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v4[7] = v7;
  v4[8] = v8;

  return _swift_task_switch(sub_1009A3980, 0, 0);
}

char *sub_1009A3980()
{
  v1 = [*(v0 + 64) vendorIdentifierList];
  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v0;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v0;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  result = sub_101125530(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v2 + 8 * i + 32);
    }

    v7 = v6;
    v8 = [v6 unsignedIntValue];

    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_101125530((v9 > 1), v10 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v10 + 1;
    *(&_swiftEmptyArrayStorage[4] + v10) = v8;
  }

LABEL_13:

  v11 = v26[7];
  v12 = v26[8];
  v13 = v26[6];
  v14 = v26[4];
  v15 = [v12 sessionKey];
  v16 = [v15 userIdentifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = [v12 sessionKey];
  v18 = [v17 bundleId];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = sub_10112B534(_swiftEmptyArrayStorage);

  v23 = sub_1009A40C4(v11, v14, v19, v21, v22);
  v26[9] = v23;

  (*(v13 + 8))(v11, v25);

  v24 = swift_task_alloc();
  v26[10] = v24;
  *v24 = v26;
  v24[1] = sub_1009A3C94;

  return sub_1009A49F8(v23);
}

uint64_t sub_1009A3C94(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 88) = a1;

    return _swift_task_switch(sub_1009A3E1C, 0, 0);
  }
}

uint64_t sub_1009A3E1C()
{
  v1 = [*(v0 + 64) sessionKey];
  *(v0 + 96) = v1;
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1009A3ED8;
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);

  return sub_1009A58E8(v1, v3, v4);
}

uint64_t sub_1009A3ED8(uint64_t a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_1009A4034, 0, 0);
}

uint64_t sub_1009A4034()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);
  *v2 = [*(v0 + 64) sessionKey];
  v2[1] = v1;

  v3 = *(v0 + 8);

  return v3();
}

void *sub_1009A40C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v77 = a5;
  v80 = a1;
  v8 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  v9 = *(v8 - 1);
  v10 = __chkstk_darwin(v8);
  v95 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __chkstk_darwin(v10);
  v14 = &v75[-v13];
  __chkstk_darwin(v12);
  v16 = &v75[-v15];
  v17._countAndFlagsBits = 0x6C7070612E6D6F63;
  v17._object = 0xEA00000000002E65;
  v18 = String.hasPrefix(_:)(v17);
  if (a3 == 0xD000000000000014 && 0x8000000101366FE0 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && !v77[2])
  {
    if (qword_101694B00 != -1)
    {
      goto LABEL_47;
    }

    goto LABEL_8;
  }

  v90 = 0;
  v76 = 0;
  if (v18)
  {
LABEL_9:
    v76 = v77[2] == 0;
  }

LABEL_11:
  v89 = *(a2 + 16);
  if (v89)
  {
    v20 = 0;
    v88 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v94 = _swiftEmptyDictionarySingleton;
    v91 = *(v9 + 72);
    v81 = v77 + 7;
    *(&v21 + 1) = 2;
    v87 = xmmword_101385D80;
    *&v21 = 141559043;
    v78 = v21;
    v79 = v16;
    while (1)
    {
      sub_1009AB854(v88 + v91 * v20, v16, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v23 = swift_allocObject();
      *(v23 + 16) = v87;
      v24 = *&v16[v8[9]];
      *(v23 + 56) = &type metadata for UInt32;
      *(v23 + 64) = &protocol witness table for UInt32;
      *(v23 + 32) = v24;
      v25 = String.init(format:_:)();
      v27 = v26;
      if (qword_101694B98 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      v29 = sub_1000076D4(v28, qword_10177B810);
      sub_1009AB854(v16, v14, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      sub_1009AB854(v16, v95, type metadata accessor for ManagedCBPeripheralBeaconInfo);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      v92 = v31;
      v32 = os_log_type_enabled(v30, v31);
      v93 = v20;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v83 = v25;
        v34 = v33;
        v84 = swift_slowAlloc();
        v96[0] = v84;
        *v34 = v78;
        *(v34 + 4) = 1752392040;
        *(v34 + 12) = 2081;
        type metadata accessor for UUID();
        sub_1009ABA98(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v86 = v24;
        v24 = v95;
        v82 = v30;
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        v85 = v29;
        sub_1009AB920(v14, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        v38 = sub_1000136BC(v35, v37, v96);

        *(v34 + 14) = v38;
        *(v34 + 22) = 2160;
        *(v34 + 24) = 1752392040;
        *(v34 + 32) = 2081;
        v16 = v79;
        v39 = v24;
        LODWORD(v24) = v86;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v42 = v41;
        sub_1009AB920(v39, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        v43 = sub_1000136BC(v40, v42, v96);

        *(v34 + 34) = v43;
        *(v34 + 42) = 2082;
        v44 = sub_1000136BC(v83, v27, v96);

        *(v34 + 44) = v44;
        v45 = v82;
        _os_log_impl(&_mh_execute_header, v82, v92, "Process user: %{private,mask.hash}s beacon: %{private,mask.hash}s (vid: %{public}s)", v34, 0x34u);
        swift_arrayDestroy();

        if (v90)
        {
          goto LABEL_23;
        }
      }

      else
      {

        sub_1009AB920(v95, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        sub_1009AB920(v14, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        if (v90)
        {
          goto LABEL_23;
        }
      }

      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          *v63 = 0;
          v64 = v62;
          v65 = v61;
          v66 = "Skipping beacon not belonging to allowed user session";
          goto LABEL_41;
        }

LABEL_42:

        goto LABEL_14;
      }

      if (!v76)
      {
        if (!v77[2] || (v67 = v77, v68 = static Hasher._hash(seed:bytes:count:)(), v69 = -1 << *(v67 + 32), v70 = v68 & ~v69, ((*(v81 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0))
        {
LABEL_39:
          v61 = Logger.logObject.getter();
          v72 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v61, v72))
          {
            v63 = swift_slowAlloc();
            *v63 = 0;
            v64 = v72;
            v65 = v61;
            v66 = "Skipping non-allowed vendorId";
LABEL_41:
            _os_log_impl(&_mh_execute_header, v65, v64, v66, v63, 2u);
          }

          goto LABEL_42;
        }

        v71 = ~v69;
        while (*(v77[6] + 4 * v70) != v24)
        {
          v70 = (v70 + 1) & v71;
          if (((*(v81 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_23:
      v46 = &v16[v8[10]];
      v47 = *v46;
      a2 = v46[1];
      v18 = v16[v8[12]];

      v9 = v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v96[0] = v9;
      v49 = sub_100772A10(v16);
      v51 = *(v9 + 16);
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        swift_once();
LABEL_8:
        v19 = type metadata accessor for UUID();
        sub_1000076D4(v19, qword_1016B0768);
        v90 = static UUID.== infix(_:_:)();
        if (v18)
        {
          goto LABEL_9;
        }

        v76 = 0;
        goto LABEL_11;
      }

      v55 = v50;
      if (*(v9 + 24) >= v54)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v73 = v49;
          sub_10100BE60();
          v49 = v73;
        }
      }

      else
      {
        sub_100FF3B88(v54, isUniquelyReferenced_nonNull_native);
        v49 = sub_100772A10(v16);
        if ((v55 & 1) != (v56 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v94 = v96[0];
      if (v55)
      {
        v22 = *(v96[0] + 56) + 24 * v49;
        *v22 = v47;
        *(v22 + 8) = a2;
        *(v22 + 16) = v18;
      }

      else
      {
        *(v96[0] + 8 * (v49 >> 6) + 64) |= 1 << v49;
        v9 = v49;
        sub_1009AB854(v16, v94[6] + v49 * v91, type metadata accessor for ManagedCBPeripheralBeaconInfo);
        v57 = v94;
        v58 = v94[7] + 24 * v9;
        *v58 = v47;
        *(v58 + 8) = a2;
        *(v58 + 16) = v18;
        v59 = v57[2];
        v53 = __OFADD__(v59, 1);
        v60 = v59 + 1;
        if (v53)
        {
          goto LABEL_46;
        }

        v57[2] = v60;
      }

LABEL_14:
      v20 = v93 + 1;
      sub_1009AB920(v16, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      if (v20 == v89)
      {
        return v94;
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1009A49F8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for BeaconIdentifier(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_1009A4B18, 0, 0);
}

uint64_t sub_1009A4B18()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  v6 = *(v5 + 32);
  *(v0 + 216) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -(-1 << v6));
  }

  v9 = v7 & *(v5 + 64);
  *(v0 + 128) = _swiftEmptyDictionarySingleton;
  *(v0 + 136) = _swiftEmptyDictionarySingleton;

  if (v9)
  {
    v11 = 0;
LABEL_8:
    *(v0 + 144) = v9;
    *(v0 + 152) = v11;
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 72);
    v16 = *(v10 + 48);
    v17 = *(v2 + 72);
    *(v0 + 160) = v17;
    sub_1009AB854(v16 + v17 * (__clz(__rbit64(v9)) | (v11 << 6)), v13, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    sub_1009AB8BC(v13, v14);
    v18 = sub_1000035D0(v3, v3[3]);
    v19 = type metadata accessor for UUID();
    *(v0 + 168) = v19;
    v20 = *(v19 - 8);
    v21 = *(v20 + 16);
    *(v0 + 176) = v21;
    *(v0 + 184) = (v20 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v15, v14, v19);
    v21(v15 + *(v4 + 20), v14 + *(v1 + 20), v19);
    v22 = *v18;
    v23 = v18[1];
    v24 = v18[2];
    v25 = swift_task_alloc();
    *(v0 + 192) = v25;
    *v25 = v0;
    v25[1] = sub_1009A4DB0;
    v26 = *(v0 + 72);

    return sub_100F16A4C(v26, v22, v23, v24);
  }

  else
  {
    v12 = 0;
    while (((63 - v8) >> 6) - 1 != v12)
    {
      v11 = v12 + 1;
      v9 = *(v10 + 8 * v12++ + 72);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v28 = *(v0 + 8);

    return v28(_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_1009A4DB0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  sub_1009AB920(v4, type metadata accessor for BeaconIdentifier);
  if (v1)
  {
    v5 = sub_1009A4EF8;
  }

  else
  {
    v5 = sub_1009A5498;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1009A4EF8()
{
  v52 = v0;
  if (qword_101694B98 != -1)
  {
LABEL_19:
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B810);
  sub_1009AB854(v2, v1, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 168);
    v8 = *(v0 + 104);
    v50 = *(v0 + 112);
    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = *(v0 + 64);
    v12 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51 = v49;
    *v12 = 141558531;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    v6(v11, v8, v7);
    v6(v11 + *(v10 + 20), v8 + *(v9 + 20), v7);
    sub_1009ABA98(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    *(v0 + 16) = dispatch thunk of CustomStringConvertible.description.getter();
    *(v0 + 24) = v13;
    v14._countAndFlagsBits = 47;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
    sub_1009AB920(v11, type metadata accessor for BeaconIdentifier);
    sub_1009AB920(v8, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    v18 = sub_1000136BC(v16, v17, &v51);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v48 = v19;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to retrieve keys for %{private,mask.hash}s error %{public}@", v12, 0x20u);
    sub_10000B3A8(v48, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v49);

    v20 = v50;
  }

  else
  {
    v22 = *(v0 + 104);
    v21 = *(v0 + 112);

    sub_1009AB920(v22, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    v20 = v21;
  }

  sub_1009AB920(v20, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  v23 = *(v0 + 152);
  v24 = (*(v0 + 144) - 1) & *(v0 + 144);
  if (v24)
  {
    v25 = *(v0 + 40);
LABEL_12:
    *(v0 + 144) = v24;
    *(v0 + 152) = v23;
    v29 = *(v0 + 112);
    v28 = *(v0 + 120);
    v30 = *(v0 + 80);
    v31 = *(v0 + 72);
    v32 = *(v0 + 48);
    v33 = *(v0 + 56);
    v34 = __clz(__rbit64(v24)) | (v23 << 6);
    v35 = *(v25 + 48);
    v36 = *(*(v0 + 88) + 72);
    *(v0 + 160) = v36;
    sub_1009AB854(v35 + v36 * v34, v28, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    sub_1009AB8BC(v28, v29);
    v37 = sub_1000035D0(v32, v32[3]);
    v38 = type metadata accessor for UUID();
    *(v0 + 168) = v38;
    v39 = *(v38 - 8);
    v40 = *(v39 + 16);
    *(v0 + 176) = v40;
    *(v0 + 184) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v40(v31, v29, v38);
    v40(v31 + *(v33 + 20), v29 + *(v30 + 20), v38);
    v41 = *v37;
    v42 = v37[1];
    v43 = v37[2];
    v44 = swift_task_alloc();
    *(v0 + 192) = v44;
    *v44 = v0;
    v44[1] = sub_1009A4DB0;
    v45 = *(v0 + 72);

    return sub_100F16A4C(v45, v41, v42, v43);
  }

  else
  {
    v26 = *(v0 + 136);
    while (1)
    {
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v27 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v25 = *(v0 + 40);
      v24 = *(v25 + 8 * v27 + 64);
      ++v23;
      if (v24)
      {
        v23 = v27;
        goto LABEL_12;
      }
    }

    v47 = *(v0 + 8);

    return v47(v26);
  }
}

unint64_t sub_1009A5498()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);
  sub_1009AB854(*(v0 + 112), v2, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 32) = v1;
  result = sub_100772A10(v2);
  v6 = *(v1 + 16);
  v7 = (v5 & 1) == 0;
  v8 = __OFADD__(v6, v7);
  v9 = v6 + v7;
  if (v8)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v2) = v5;
  if (*(*(v0 + 128) + 24) >= v9)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_26:
    v44 = result;
    sub_10100C0D0();
    result = v44;
    goto LABEL_8;
  }

  v10 = *(v0 + 96);
  sub_100FF4230(v9, isUniquelyReferenced_nonNull_native);
  result = sub_100772A10(v10);
  if ((v2 & 1) != (v11 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

LABEL_8:
  v12 = *(v0 + 32);
  v13 = *(v0 + 200);
  if (v2)
  {
    v2 = *(v0 + 112);
    v14 = *(v0 + 96);
    *(v12[7] + 8 * result) = v13;

    sub_1009AB920(v14, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    result = sub_1009AB920(v2, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  }

  else
  {
    v15 = *(v0 + 160);
    v2 = *(v0 + 112);
    v16 = *(v0 + 96);
    v12[(result >> 6) + 8] |= 1 << result;
    v17 = result;
    sub_1009AB854(v16, v12[6] + v15 * result, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    *(v12[7] + 8 * v17) = v13;
    sub_1009AB920(v16, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    result = sub_1009AB920(v2, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    v18 = v12[2];
    v8 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v8)
    {
      __break(1u);
      return result;
    }

    v12[2] = v19;
  }

  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  *(v0 + 128) = v12;
  *(v0 + 136) = v12;
  v22 = (v21 - 1) & v21;
  if (v22)
  {
    v23 = *(v0 + 40);
LABEL_18:
    *(v0 + 144) = v22;
    *(v0 + 152) = v20;
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);
    v27 = *(v0 + 80);
    v28 = *(v0 + 72);
    v29 = *(v0 + 48);
    v30 = *(v0 + 56);
    v31 = __clz(__rbit64(v22)) | (v20 << 6);
    v32 = *(v23 + 48);
    v33 = *(*(v0 + 88) + 72);
    *(v0 + 160) = v33;
    sub_1009AB854(v32 + v33 * v31, v25, type metadata accessor for ManagedCBPeripheralBeaconInfo);
    sub_1009AB8BC(v25, v26);
    v34 = sub_1000035D0(v29, v29[3]);
    v35 = type metadata accessor for UUID();
    *(v0 + 168) = v35;
    v36 = *(v35 - 8);
    v37 = *(v36 + 16);
    *(v0 + 176) = v37;
    *(v0 + 184) = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37(v28, v26, v35);
    v37(v28 + *(v30 + 20), v26 + *(v27 + 20), v35);
    v38 = *v34;
    v39 = v34[1];
    v40 = v34[2];
    v41 = swift_task_alloc();
    *(v0 + 192) = v41;
    *v41 = v0;
    v41[1] = sub_1009A4DB0;
    v42 = *(v0 + 72);

    return sub_100F16A4C(v42, v38, v39, v40);
  }

  else
  {
    while (1)
    {
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v24 >= (((1 << *(v0 + 216)) + 63) >> 6))
      {
        break;
      }

      v23 = *(v0 + 40);
      v22 = *(v23 + 8 * v24 + 64);
      ++v20;
      if (v22)
      {
        v20 = v24;
        goto LABEL_18;
      }
    }

    v43 = *(v0 + 8);

    return v43(v12);
  }
}

uint64_t sub_1009A58E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4[29] = swift_task_alloc();
  v4[30] = type metadata accessor for BeaconIdentifier(0);
  v4[31] = swift_task_alloc();
  sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v5 = type metadata accessor for MACAddress();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v6 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  v4[42] = v6;
  v4[43] = *(v6 - 8);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016B07B8, &qword_1013CF1C8);
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();

  return _swift_task_switch(sub_1009A5B98, 0, 0);
}

uint64_t sub_1009A5B98()
{
  *(v1 + 176) = _swiftEmptyArrayStorage;
  v110 = (v1 + 64);
  v2 = *(v1 + 208);
  v3 = *(v2 + 32);
  *(v1 + 536) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);

  v7 = 0;
  while (1)
  {
    if (v6)
    {
      v8 = *(v1 + 208);
LABEL_16:
      v13 = *(v1 + 360);
      v14 = *(v1 + 368);
      v15 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v16 = v15 | (v7 << 6);
      sub_1009AB854(*(v8 + 48) + *(*(v1 + 344) + 72) * v16, v13, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      v17 = *(*(v8 + 56) + 8 * v16);
      v18 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      v19 = *(v18 + 48);
      sub_1009AB8BC(v13, v14);
      *(v14 + v19) = v17;
      (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    }

    else
    {
      v9 = ((1 << *(v1 + 536)) + 63) >> 6;
      v10 = v9 <= v7 + 1 ? v7 + 1 : ((1 << *(v1 + 536)) + 63) >> 6;
      v11 = v10 - 1;
      while (1)
      {
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_87:
          v103 = 0;
          goto LABEL_92;
        }

        if (v12 >= v9)
        {
          break;
        }

        v8 = *(v1 + 208);
        v6 = *(v8 + 8 * v12 + 64);
        ++v7;
        if (v6)
        {
          v7 = v12;
          goto LABEL_16;
        }
      }

      v28 = *(v1 + 368);
      v29 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
      v6 = 0;
      v7 = v11;
    }

    *(v1 + 384) = v6;
    *(v1 + 392) = v7;
    v20 = *(v1 + 376);
    sub_1000D2AD8(*(v1 + 368), v20, &qword_1016B07B8, &qword_1013CF1C8);
    v21 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {

      v30 = *(v1 + 8);

      return v30(_swiftEmptyArrayStorage);
    }

    v22 = *(v1 + 376);
    v23 = *(v1 + 352);
    v24 = *(v1 + 216);
    v25 = *(v22 + *(v21 + 48));
    *(v1 + 400) = v25;
    sub_1009AB8BC(v22, v23);
    if (*(v24 + 16))
    {
      v26 = sub_100772A10(*(v1 + 352));
      if (v27)
      {
        break;
      }
    }

    v0 = *(v1 + 352);

    sub_1009AB920(v0, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  }

  v32 = (*(*(v1 + 216) + 56) + 24 * v26);
  *(v1 + 408) = *v32;
  *(v1 + 416) = v32[1];
  v111 = v25;
  v112 = v25[2];
  if (!v112)
  {

    v56 = _swiftEmptyDictionarySingleton;
    v62 = 1;
    v61 = _swiftEmptyArrayStorage;
    goto LABEL_43;
  }

  v108 = v25[5];

  v33 = 0;
  v34 = v25 + 9;
  v35 = _swiftEmptyDictionarySingleton;
  v36 = v1 + 176;
  do
  {
    if (v33 >= v25[2])
    {
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    v39 = *(v34 - 1);
    v40 = *v34;
    v113 = *(v34 - 3);
    v115 = *(v34 - 2);
    sub_100017D5C(v113, v115);
    sub_100017D5C(v39, v40);

    v117 = v40;
    v119 = v39;
    v41 = Data.subdata(in:)();
    v43 = v42;
    v121.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v36;
    v46 = isUniquelyReferenced_nonNull_native;
    *(v45 + 8) = v35;
    v48 = sub_100771E30(v41, v43);
    v49 = v35[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_96;
    }

    v52 = v47;
    if (v35[3] >= v51)
    {
      if (v46)
      {
        v36 = v1 + 176;
        v56 = *(v1 + 184);
        if (v47)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v36 = v1 + 176;
        sub_10100C34C();
        v56 = *(v1 + 184);
        if (v52)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v53 = v46;
      v36 = v1 + 176;
      sub_100FF4898(v51, v53);
      v54 = sub_100771E30(v41, v43);
      if ((v52 & 1) != (v55 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v48 = v54;
      v56 = *(v1 + 184);
      if (v52)
      {
LABEL_27:
        v37 = v56[7];
        v38 = *(v37 + 8 * v48);
        *(v37 + 8 * v48) = v121;

        sub_100016590(v41, v43);

        goto LABEL_28;
      }
    }

    v56[(v48 >> 6) + 8] |= 1 << v48;
    v57 = (v56[6] + 16 * v48);
    *v57 = v41;
    v57[1] = v43;
    *(v56[7] + 8 * v48) = v121;

    v58 = v56[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_98;
    }

    v56[2] = v60;
LABEL_28:
    ++v33;
    sub_100016590(v113, v115);
    sub_100016590(v119, v117);
    v34 += 6;
    v35 = v56;
    v25 = v111;
  }

  while (v112 != v33);
  v61 = _swiftEmptyArrayStorage;
  v62 = v108;
LABEL_43:
  v63 = 0;
  *(v1 + 424) = v62;
  *(v1 + 432) = v56;
  v64 = v25 + 9;
  *(v1 + 192) = _swiftEmptyArrayStorage;
  v107 = v25 + 9;
  while (2)
  {
    *(v1 + 440) = v61;
    v65 = &v64[6 * v63];
LABEL_45:
    if (v112 == v63)
    {
      v102 = swift_task_alloc();
      *(v1 + 448) = v102;
      *v102 = v1;
      v102[1] = sub_1009A67FC;

      return daemon.getter();
    }

    if (v63 >= v25[2])
    {
      goto LABEL_97;
    }

    v118 = v63;
    v66 = *(v1 + 296);
    v67 = *(v1 + 304);
    v68 = *(v1 + 288);
    v69 = *(v65 - 3);
    v70 = *(v65 - 2);
    v71 = *(v65 - 1);
    v72 = *v65;
    sub_100017D5C(v69, v70);
    v122 = v71;
    v120 = v72;
    sub_100017D5C(v71, v72);
    v73 = Data.init(stringLiteral:)();
    v75 = v74;
    sub_100017D5C(v69, v70);
    v114 = v70;
    v116 = v69;
    MACAddress.init(addressToSanitize:type:)();
    if ((*(v67 + 48))(v68, 1, v66) == 1)
    {
      goto LABEL_106;
    }

    v76 = *(v1 + 328);
    v78 = *(v1 + 296);
    v77 = *(v1 + 304);
    (*(v77 + 32))(v76, *(v1 + 288), v78);
    v79 = MACAddress.data.getter();
    v81 = v80;
    (*(v77 + 8))(v76, v78);
    *(v1 + 144) = v73;
    *(v1 + 152) = v75;
    *(v1 + 88) = &type metadata for Data;
    *(v1 + 96) = &protocol witness table for Data;
    *(v1 + 64) = v79;
    *(v1 + 72) = v81;
    v82 = sub_1000035D0(v110, &type metadata for Data);
    v83 = *v82;
    v84 = v82[1];
    v85 = v84 >> 62;
    if ((v84 >> 62) > 1)
    {
      if (v85 == 2)
      {
        v86 = v81;
        v88 = *(v83 + 16);
        v87 = *(v83 + 24);
        sub_100017D5C(v73, v75);
        v109 = v86;
        sub_100017D5C(v79, v86);
        if (__DataStorage._bytes.getter() && __OFSUB__(v88, __DataStorage._offset.getter()))
        {
          goto LABEL_103;
        }

        if (__OFSUB__(v87, v88))
        {
          goto LABEL_102;
        }

        goto LABEL_59;
      }

      *(v1 + 528) = 0;
      *(v1 + 522) = 0;
LABEL_61:
      Data._Representation.append(contentsOf:)();
    }

    else
    {
      if (!v85)
      {
        *(v1 + 508) = v83;
        *(v1 + 516) = v84;
        *(v1 + 518) = BYTE2(v84);
        *(v1 + 519) = BYTE3(v84);
        *(v1 + 520) = BYTE4(v84);
        *(v1 + 521) = BYTE5(v84);
        goto LABEL_61;
      }

      v109 = v81;
      v89 = v83;
      if (v83 >> 32 < v83)
      {
        goto LABEL_101;
      }

      sub_100017D5C(v73, v75);
      sub_100017D5C(v79, v81);
      if (__DataStorage._bytes.getter() && __OFSUB__(v89, __DataStorage._offset.getter()))
      {
        goto LABEL_104;
      }

LABEL_59:
      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_100016590(v79, v109);
      sub_100016590(v73, v75);
    }

    sub_100007BAC(v110);
    v90 = *(v1 + 144);
    v91 = *(v1 + 152);
    v92 = Data.subdata(in:)();
    v11 = v92;
    v0 = v93;
    v94 = v93 >> 62;
    if ((v93 >> 62) > 1)
    {
      if (v94 != 2)
      {
        goto LABEL_87;
      }

      v96 = *(v92 + 16);
      v95 = *(v92 + 24);
      v59 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v59)
      {
        goto LABEL_100;
      }

      if (v97 != 16)
      {
        break;
      }

      goto LABEL_72;
    }

    if (!v94)
    {
      if (BYTE6(v93) != 16)
      {
        break;
      }

      goto LABEL_72;
    }

    if (__OFSUB__(HIDWORD(v92), v92))
    {
      goto LABEL_99;
    }

    if (HIDWORD(v92) - v92 == 16)
    {
LABEL_72:
      v63 = v118 + 1;
      v65 += 6;
      v98 = objc_allocWithZone(SPCBPeripheralKeyAddressPair);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v100 = Data._bridgeToObjectiveC()().super.isa;
      v101 = [v98 initWithLEMACAddress:isa longTermKey:v100];

      sub_100016590(v11, v0);
      sub_100016590(v90, v91);
      sub_100016590(v116, v114);
      sub_100016590(v122, v120);
      v25 = v111;
      if (v101)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v1 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v61 = *(v1 + 192);
        v64 = v107;
        continue;
      }

      goto LABEL_45;
    }

    break;
  }

  if (v94 == 2)
  {
    v105 = *(v92 + 16);
    v104 = *(v92 + 24);
    v103 = v104 - v105;
    if (!__OFSUB__(v104, v105))
    {
      goto LABEL_92;
    }

    __break(1u);
  }

  else if (v94 == 1)
  {
    if (!__OFSUB__(HIDWORD(v92), v92))
    {
      v103 = HIDWORD(v92) - v92;
      goto LABEL_92;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
  }

  v103 = BYTE6(v93);
LABEL_92:
  sub_100018350();
  swift_allocError();
  *v106 = 16;
  *(v106 + 8) = v103;
  *(v106 + 16) = 0;
  swift_willThrow();
  sub_100016590(v11, v0);

  return swift_unexpectedError();
}

uint64_t sub_1009A67FC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 456) = a1;

  v3 = swift_task_alloc();
  *(v2 + 464) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for ObservationStoreService();
  v6 = sub_1009ABA98(&qword_1016AA400, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_1009ABA98(&qword_1016AA450, type metadata accessor for ObservationStoreService, &unk_101404B80);
  *v3 = v9;
  v3[1] = sub_1009A6A04;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1009A6A04(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    return _swift_task_switch(sub_1009A70A4, 0, 0);
  }

  else
  {
    v6 = *(v4 + 352);
    v7 = *(v4 + 336);

    *(v4 + 472) = a1;
    v8 = *(v7 + 20);
    *(v4 + 504) = v8;
    v9 = *(v7 + 28);
    v10 = swift_task_alloc();
    *(v4 + 480) = v10;
    *v10 = v5;
    v10[1] = sub_1009A6C38;
    v11 = *(v4 + 264);

    return sub_1010CD424(v11, v6 + v8, v6 + v9);
  }
}

uint64_t sub_1009A6C38()
{

  return _swift_task_switch(sub_1009A6D60, 0, 0);
}

uint64_t sub_1009A6D60()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 352);
  v4 = *(v0 + 264);
  v3 = *(v0 + 272);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v7 = *(v0 + 224);

  sub_1000D2AD8(v4, v3, &unk_1016C8FC0, &unk_10139D7D0);
  v8 = sub_1000035D0(v7, v7[3]);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 16);
  v10(v5, v2, v9);
  v10(v5 + *(v6 + 20), v2 + v1, v9);
  v11 = *v3;
  v12 = *v8;
  v13 = v8[1];
  v14 = v8[2];
  v15 = swift_task_alloc();
  *(v0 + 488) = v15;
  *v15 = v0;
  v15[1] = sub_1009A6F08;
  v16 = *(v0 + 248);

  return sub_100F1753C(v0 + 16, v16, 0, v11, v12, v13, v14);
}

uint64_t sub_1009A6F08()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {

    sub_1009AB920(v3, type metadata accessor for BeaconIdentifier);
    v4 = sub_1009A92B4;
  }

  else
  {
    sub_1009AB920(v3, type metadata accessor for BeaconIdentifier);
    v4 = sub_1009A7FA4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1009A70A4()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  sub_1000D2A70(v1 + v2[6], v3, &qword_1016980D0, &unk_10138F3B0);
  v133 = *(v1 + v2[12]);
  v127 = *(v1 + v2[11]);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138C320;
  *(v5 + 32) = v4;
  sub_10002E98C(0, 0xF000000000000000);
  v6 = v4;
  v130.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v124.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v3, 1, v7) != 1)
  {
    v10 = *(v0 + 232);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();

  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  sub_1004695BC();
  v13 = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = *(v0 + 424);
  v15 = objc_allocWithZone(SPPeripheral);
  sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  sub_100008BB8(0, &qword_1016B07B0, SPCBPeripheralKeyAddressPair_ptr);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  LOBYTE(v116) = v127;
  v18 = [v15 initWithUserIdentifier:v130.super.isa beaconIdentifier:v124.super.isa groupIdentifier:isa name:v11 partIdentifier:v133 serialNumber:v12 managedByFindMy:v116 primaryIndex:v14 ltkIndexMap:v13 lastConnectedLEMAC:0 allowedSessions:v16 keyAddressPairs:v17];

  isUniquelyReferenced_nonNull_native = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_101;
  }

LABEL_4:
  v20 = *(v0 + 352);
  v21 = v0 + 176;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100006654(0, 0xF000000000000000);

  sub_1009AB920(v20, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  v134 = *(v0 + 176);
  v23 = *(v0 + 384);
  v22 = *(v0 + 392);
  while (1)
  {
    if (v23)
    {
      v24 = *(v0 + 208);
LABEL_16:
      v30 = *(v0 + 360);
      v29 = *(v0 + 368);
      v31 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v32 = v31 | (v22 << 6);
      sub_1009AB854(*(v24 + 48) + *(*(v0 + 344) + 72) * v32, v30, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      v33 = *(*(v24 + 56) + 8 * v32);
      v34 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      v35 = *(v34 + 48);
      sub_1009AB8BC(v30, v29);
      *(v29 + v35) = v33;
      (*(*(v34 - 8) + 56))(v29, 0, 1, v34);
    }

    else
    {
      v25 = ((1 << *(v0 + 536)) + 63) >> 6;
      v26 = v25 <= (v22 + 1) ? v22 + 1 : ((1 << *(v0 + 536)) + 63) >> 6;
      v27 = v26 - 1;
      while (1)
      {
        v28 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_87:
          v112 = 0;
          goto LABEL_92;
        }

        if (v28 >= v25)
        {
          break;
        }

        v24 = *(v0 + 208);
        v23 = *(v24 + 8 * v28 + 64);
        ++v22;
        if (v23)
        {
          v22 = v28;
          goto LABEL_16;
        }
      }

      v43 = *(v0 + 368);
      v44 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
      v23 = 0;
      v22 = v27;
    }

    *(v0 + 384) = v23;
    *(v0 + 392) = v22;
    v36 = *(v0 + 376);
    sub_1000D2AD8(*(v0 + 368), v36, &qword_1016B07B8, &qword_1013CF1C8);
    v37 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {

      v45 = *(v0 + 8);

      return v45(v134);
    }

    v38 = *(v0 + 376);
    v39 = *(v0 + 352);
    isUniquelyReferenced_nonNull_native = *(v0 + 216);
    v40 = *(v38 + *(v37 + 48));
    *(v0 + 400) = v40;
    sub_1009AB8BC(v38, v39);
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      v41 = sub_100772A10(*(v0 + 352));
      if (v42)
      {
        break;
      }
    }

    v21 = *(v0 + 352);

    sub_1009AB920(v21, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  }

  v47 = (*(*(v0 + 216) + 56) + 24 * v41);
  *(v0 + 408) = *v47;
  *(v0 + 416) = v47[1];
  v120 = v40;
  v121 = v40[2];
  if (v121)
  {
    v118 = v40[5];

    v48 = 0;
    v49 = v40 + 9;
    v50 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v48 >= v120[2])
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_4;
      }

      v53 = *(v49 - 1);
      v54 = *v49;
      v122 = *(v49 - 3);
      v125 = *(v49 - 2);
      sub_100017D5C(v122, v125);
      sub_100017D5C(v53, v54);

      v128 = v54;
      v131 = v53;
      v55 = Data.subdata(in:)();
      v57 = v56;
      v135.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 184) = v50;
      v59 = sub_100771E30(v55, v57);
      v60 = v50[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_96;
      }

      v63 = v58;
      if (v50[3] >= v62)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v66 = *(v0 + 184);
          if (v58)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_10100C34C();
          v66 = *(v0 + 184);
          if (v63)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_100FF4898(v62, isUniquelyReferenced_nonNull_native);
        v64 = sub_100771E30(v55, v57);
        if ((v63 & 1) != (v65 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v59 = v64;
        v66 = *(v0 + 184);
        if (v63)
        {
LABEL_27:
          v51 = v66[7];
          v52 = *(v51 + 8 * v59);
          *(v51 + 8 * v59) = v135;

          sub_100016590(v55, v57);

          goto LABEL_28;
        }
      }

      v66[(v59 >> 6) + 8] |= 1 << v59;
      v67 = (v66[6] + 16 * v59);
      *v67 = v55;
      v67[1] = v57;
      *(v66[7] + 8 * v59) = v135;

      v68 = v66[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_98;
      }

      v66[2] = v70;
LABEL_28:
      ++v48;
      sub_100016590(v122, v125);
      sub_100016590(v131, v128);
      v49 += 6;
      v50 = v66;
      if (v121 == v48)
      {
        v71 = v118;
        v40 = v120;
        goto LABEL_43;
      }
    }
  }

  v66 = _swiftEmptyDictionarySingleton;
  v71 = 1;
LABEL_43:
  v72 = 0;
  *(v0 + 424) = v71;
  *(v0 + 432) = v66;
  v73 = _swiftEmptyArrayStorage;
  *(v0 + 192) = _swiftEmptyArrayStorage;
  v74 = v40 + 9;
  v117 = v40 + 9;
LABEL_44:
  *(v0 + 440) = v73;
  v75 = &v74[6 * v72];
  while (1)
  {
    if (v121 == v72)
    {
      v111 = swift_task_alloc();
      *(v0 + 448) = v111;
      *v111 = v0;
      v111[1] = sub_1009A67FC;

      return daemon.getter();
    }

    if (v72 >= v40[2])
    {
      goto LABEL_97;
    }

    v76 = *(v0 + 296);
    v77 = *(v0 + 304);
    v78 = *(v0 + 288);
    v79 = *(v75 - 3);
    v80 = *(v75 - 2);
    v81 = *(v75 - 1);
    v82 = *v75;
    sub_100017D5C(v79, v80);
    v132 = v82;
    v136 = v81;
    sub_100017D5C(v81, v82);
    v83 = Data.init(stringLiteral:)();
    v85 = v84;
    sub_100017D5C(v79, v80);
    v123 = v80;
    v126 = v79;
    MACAddress.init(addressToSanitize:type:)();
    if ((*(v77 + 48))(v78, 1, v76) == 1)
    {
      goto LABEL_107;
    }

    v86 = *(v0 + 328);
    v88 = *(v0 + 296);
    v87 = *(v0 + 304);
    (*(v87 + 32))(v86, *(v0 + 288), v88);
    v89 = MACAddress.data.getter();
    v91 = v90;
    (*(v87 + 8))(v86, v88);
    *(v0 + 144) = v83;
    *(v0 + 152) = v85;
    *(v0 + 88) = &type metadata for Data;
    *(v0 + 96) = &protocol witness table for Data;
    *(v0 + 64) = v89;
    *(v0 + 72) = v91;
    v129 = v91;
    v92 = sub_1000035D0((v0 + 64), &type metadata for Data);
    v93 = *v92;
    v94 = v92[1];
    v95 = v94 >> 62;
    if ((v94 >> 62) > 1)
    {
      if (v95 != 2)
      {
        *(v0 + 528) = 0;
        *(v0 + 522) = 0;
        goto LABEL_61;
      }

      v119 = v72;
      v97 = *(v93 + 16);
      v96 = *(v93 + 24);
      sub_100017D5C(v83, v85);
      sub_100017D5C(v89, v129);
      if (__DataStorage._bytes.getter() && __OFSUB__(v97, __DataStorage._offset.getter()))
      {
        goto LABEL_104;
      }

      if (__OFSUB__(v96, v97))
      {
        goto LABEL_103;
      }

LABEL_59:
      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_100016590(v89, v129);
      sub_100016590(v83, v85);
      v72 = v119;
      goto LABEL_62;
    }

    if (v95)
    {
      v119 = v72;
      v98 = v93;
      if (v93 >> 32 < v93)
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      sub_100017D5C(v83, v85);
      sub_100017D5C(v89, v129);
      if (__DataStorage._bytes.getter() && __OFSUB__(v98, __DataStorage._offset.getter()))
      {
        goto LABEL_105;
      }

      goto LABEL_59;
    }

    *(v0 + 508) = v93;
    *(v0 + 516) = v94;
    *(v0 + 518) = BYTE2(v94);
    *(v0 + 519) = BYTE3(v94);
    *(v0 + 520) = BYTE4(v94);
    *(v0 + 521) = BYTE5(v94);
LABEL_61:
    Data._Representation.append(contentsOf:)();
LABEL_62:
    sub_100007BAC((v0 + 64));
    v99 = *(v0 + 144);
    v100 = *(v0 + 152);
    v101 = Data.subdata(in:)();
    isUniquelyReferenced_nonNull_native = v101;
    v21 = v102;
    v103 = v102 >> 62;
    if ((v102 >> 62) > 1)
    {
      if (v103 != 2)
      {
        goto LABEL_87;
      }

      v105 = *(v101 + 16);
      v104 = *(v101 + 24);
      v69 = __OFSUB__(v104, v105);
      v106 = v104 - v105;
      if (v69)
      {
        goto LABEL_100;
      }

      if (v106 != 16)
      {
        goto LABEL_79;
      }

      goto LABEL_72;
    }

    if (v103)
    {
      break;
    }

    if (BYTE6(v102) != 16)
    {
      goto LABEL_79;
    }

LABEL_72:
    ++v72;
    v75 += 6;
    v107 = objc_allocWithZone(SPCBPeripheralKeyAddressPair);
    v108 = Data._bridgeToObjectiveC()().super.isa;
    v109 = Data._bridgeToObjectiveC()().super.isa;
    v110 = [v107 initWithLEMACAddress:v108 longTermKey:v109];

    sub_100016590(isUniquelyReferenced_nonNull_native, v21);
    sub_100016590(v99, v100);
    sub_100016590(v126, v123);
    sub_100016590(v136, v132);
    v40 = v120;
    if (v110)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        isUniquelyReferenced_nonNull_native = *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v73 = *(v0 + 192);
      v74 = v117;
      goto LABEL_44;
    }
  }

  if (__OFSUB__(HIDWORD(v101), v101))
  {
    goto LABEL_99;
  }

  if (HIDWORD(v101) - v101 == 16)
  {
    goto LABEL_72;
  }

LABEL_79:
  if (v103 == 2)
  {
    v114 = *(v101 + 16);
    v113 = *(v101 + 24);
    v112 = v113 - v114;
    if (!__OFSUB__(v113, v114))
    {
      goto LABEL_92;
    }

    __break(1u);
  }

  else if (v103 == 1)
  {
    if (!__OFSUB__(HIDWORD(v101), v101))
    {
      v112 = HIDWORD(v101) - v101;
      goto LABEL_92;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
  }

  v112 = BYTE6(v102);
LABEL_92:
  sub_100018350();
  swift_allocError();
  *v115 = 16;
  *(v115 + 8) = v112;
  *(v115 + 16) = 0;
  swift_willThrow();
  sub_100016590(isUniquelyReferenced_nonNull_native, v21);

  return swift_unexpectedError();
}

uint64_t sub_1009A7FA4()
{
  v180 = v0;
  if (*(v0 + 16) == 2 || (v2 = *(v0 + 32), v1 = *(v0 + 40), sub_100017D5C(v2, v1), sub_10000B3A8(v0 + 16, &qword_1016B07C8, &unk_1013CF1E0), v1 >> 60 == 15))
  {
    sub_10000B3A8(*(v0 + 272), &unk_1016C8FC0, &unk_10139D7D0);

    v3 = 0;
    v4 = 0xF000000000000000;
    goto LABEL_10;
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 304);
  v7 = *(v0 + 280);
  sub_10002E98C(v2, v1);
  sub_100017D5C(v2, v1);
  MACAddress.init(addressToSanitize:type:)();
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    __break(1u);
    return daemon.getter();
  }

  v8 = *(v0 + 312);
  v9 = *(v0 + 320);
  v10 = *(v0 + 296);
  v11 = *(v0 + 304);
  v12 = *(v0 + 280);

  v178 = v1;
  sub_100006654(v2, v1);
  v13 = *(v11 + 32);
  v13(v8, v12, v10);
  v13(v9, v8, v10);
  if (qword_101694B98 == -1)
  {
    goto LABEL_6;
  }

LABEL_116:
  swift_once();
LABEL_6:
  v176 = v2;
  v14 = *(v0 + 272);
  v15 = *(v0 + 256);
  v16 = type metadata accessor for Logger();
  sub_1000076D4(v16, qword_10177B810);
  sub_1000D2A70(v14, v15, &unk_1016C8FC0, &unk_10139D7D0);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 256);
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v179 = v22;
    *v21 = 136446210;
    v23 = sub_1009AB5AC();
    v25 = v24;
    sub_10000B3A8(v20, &unk_1016C8FC0, &unk_10139D7D0);
    v26 = sub_1000136BC(v23, v25, &v179);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v17, v18, "lastConnectedLEMAC based on latestIndexObserved %{public}s", v21, 0xCu);
    sub_100007BAC(v22);
  }

  else
  {

    sub_10000B3A8(v20, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v27 = *(v0 + 304);
  v163 = *(v0 + 320);
  v167 = *(v0 + 296);
  v172 = *(v0 + 272);
  v28 = Data.init(stringLiteral:)();
  v30 = v29;
  v31 = MACAddress.data.getter();
  v33 = v32;
  *(v0 + 160) = v28;
  *(v0 + 168) = v30;
  *(v0 + 128) = &type metadata for Data;
  *(v0 + 136) = &protocol witness table for Data;
  *(v0 + 104) = v31;
  *(v0 + 112) = v32;
  v34 = sub_1000035D0((v0 + 104), &type metadata for Data);
  v36 = *v34;
  v35 = v34[1];
  sub_100017D5C(v28, v30);
  sub_100017D5C(v31, v33);
  sub_100017DB0(v36, v35, v0 + 160);
  sub_100016590(v31, v33);
  sub_100016590(v28, v30);
  sub_100006654(v176, v178);
  (*(v27 + 8))(v163, v167);
  sub_10000B3A8(v172, &unk_1016C8FC0, &unk_10139D7D0);
  sub_100007BAC((v0 + 104));
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
LABEL_10:
  v37 = *(v0 + 352);
  v38 = *(v0 + 336);
  v39 = *(v0 + 232);
  v40 = *(v0 + 200);
  sub_1000D2A70(v37 + v38[6], v39, &qword_1016980D0, &unk_10138F3B0);
  v168 = *(v37 + v38[12]);
  v164 = *(v37 + v38[11]);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10138C320;
  *(v41 + 32) = v40;
  v178 = v3;
  sub_10002E98C(v3, v4);
  v42 = v40;
  v173.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v161.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v43 = type metadata accessor for UUID();
  v44 = *(v43 - 8);
  isa = 0;
  v46 = v4;
  if ((*(v44 + 48))(v39, 1, v43) != 1)
  {
    v47 = *(v0 + 232);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v44 + 8))(v47, v43);
  }

  v48 = isa;
  v159 = String._bridgeToObjectiveC()();
  v156 = String._bridgeToObjectiveC()();

  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  sub_1004695BC();
  v49.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v50 = 0;
  if (v46 >> 60 != 15)
  {
    v50 = Data._bridgeToObjectiveC()().super.isa;
    sub_100006654(v178, v46);
  }

  v177 = v46;
  v51 = *(v0 + 424);
  v52 = objc_allocWithZone(SPPeripheral);
  sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
  v53 = Array._bridgeToObjectiveC()().super.isa;

  sub_100008BB8(0, &qword_1016B07B0, SPCBPeripheralKeyAddressPair_ptr);
  v54 = Array._bridgeToObjectiveC()().super.isa;

  LOBYTE(v153) = v164;
  v169 = [v52 initWithUserIdentifier:v173.super.isa beaconIdentifier:v161.super.isa groupIdentifier:v48 name:v159 partIdentifier:v168 serialNumber:v156 managedByFindMy:v153 primaryIndex:v51 ltkIndexMap:v49.super.isa lastConnectedLEMAC:v50 allowedSessions:v53 keyAddressPairs:v54];

  v55 = v0 + 16;
  isUniquelyReferenced_nonNull_native = v169;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_111:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v155 = (v55 + 506);
  v57 = *(v0 + 352);
  v58 = v55 + 160;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100006654(v178, v177);

  sub_1009AB920(v57, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  v178 = *(v0 + 176);
  v55 = &qword_1016B07C0;
  v60 = *(v0 + 384);
  v59 = *(v0 + 392);
  while (1)
  {
    if (v60)
    {
      v61 = *(v0 + 208);
LABEL_27:
      v65 = *(v0 + 360);
      v66 = *(v0 + 368);
      v67 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v68 = v67 | (v59 << 6);
      sub_1009AB854(*(v61 + 48) + *(*(v0 + 344) + 72) * v68, v65, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      v69 = *(*(v61 + 56) + 8 * v68);
      v70 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      v71 = *(v70 + 48);
      sub_1009AB8BC(v65, v66);
      *(v66 + v71) = v69;
      (*(*(v70 - 8) + 56))(v66, 0, 1, v70);
    }

    else
    {
      v62 = ((1 << *(v0 + 536)) + 63) >> 6;
      v63 = v62 <= v59 + 1 ? v59 + 1 : ((1 << *(v0 + 536)) + 63) >> 6;
      isUniquelyReferenced_nonNull_native = v63 - 1;
      while (1)
      {
        v64 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          __break(1u);
LABEL_97:
          v149 = 0;
          goto LABEL_102;
        }

        if (v64 >= v62)
        {
          break;
        }

        v61 = *(v0 + 208);
        v60 = *(v61 + 8 * v64 + 64);
        ++v59;
        if (v60)
        {
          v59 = v64;
          goto LABEL_27;
        }
      }

      v80 = *(v0 + 368);
      v81 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      (*(*(v81 - 8) + 56))(v80, 1, 1, v81);
      v60 = 0;
      v59 = isUniquelyReferenced_nonNull_native;
    }

    *(v0 + 384) = v60;
    *(v0 + 392) = v59;
    v72 = *(v0 + 376);
    sub_1000D2AD8(*(v0 + 368), v72, &qword_1016B07B8, &qword_1013CF1C8);
    v73 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
    v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
    v75 = *(v0 + 376);
    if (v74 == 1)
    {

      v82 = *(v0 + 8);

      return v82(v178);
    }

    v76 = *(v0 + 352);
    isUniquelyReferenced_nonNull_native = *(v0 + 216);
    v77 = *(v75 + *(v73 + 48));
    *(v0 + 400) = v77;
    sub_1009AB8BC(v75, v76);
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      v78 = sub_100772A10(*(v0 + 352));
      if (v79)
      {
        break;
      }
    }

    v58 = *(v0 + 352);

    sub_1009AB920(v58, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  }

  v84 = (*(*(v0 + 216) + 56) + 24 * v78);
  *(v0 + 408) = *v84;
  *(v0 + 416) = v84[1];
  v160 = v77;
  v162 = v77[2];
  if (v162)
  {
    v157 = v77[5];

    v85 = 0;
    v86 = v77 + 9;
    v87 = _swiftEmptyDictionarySingleton;
    v55 = v0 + 16;
    while (v85 < v77[2])
    {
      v90 = *(v86 - 1);
      v91 = *v86;
      v165 = *(v86 - 3);
      v170 = *(v86 - 2);
      sub_100017D5C(v165, v170);
      sub_100017D5C(v90, v91);

      v177 = v90;
      v174 = v91;
      v92 = Data.subdata(in:)();
      v94 = v93;
      v178 = UInt64._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v55 + 168) = v87;
      v55 = sub_100771E30(v92, v94);
      v96 = v87[2];
      v97 = (v95 & 1) == 0;
      v98 = v96 + v97;
      if (__OFADD__(v96, v97))
      {
        goto LABEL_106;
      }

      v99 = v95;
      if (v87[3] >= v98)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10100C34C();
        }
      }

      else
      {
        sub_100FF4898(v98, isUniquelyReferenced_nonNull_native);
        v100 = sub_100771E30(v92, v94);
        if ((v99 & 1) != (v101 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v55 = v100;
      }

      v102 = *(v0 + 184);
      if (v99)
      {
        v88 = v102[7];
        v89 = *(v88 + 8 * v55);
        *(v88 + 8 * v55) = v178;

        sub_100016590(v92, v94);
      }

      else
      {
        v102[(v55 >> 6) + 8] |= 1 << v55;
        v103 = (v102[6] + 16 * v55);
        *v103 = v92;
        v103[1] = v94;
        *(v102[7] + 8 * v55) = v178;

        v104 = v102[2];
        v105 = __OFADD__(v104, 1);
        v106 = v104 + 1;
        if (v105)
        {
          goto LABEL_108;
        }

        v102[2] = v106;
      }

      ++v85;
      sub_100016590(v165, v170);
      sub_100016590(v177, v174);
      v86 += 6;
      v87 = v102;
      v77 = v160;
      v55 = v0 + 16;
      if (v162 == v85)
      {
        v107 = v157;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v102 = _swiftEmptyDictionarySingleton;
  v107 = 1;
LABEL_52:
  v108 = 0;
  *(v0 + 424) = v107;
  *(v0 + 432) = v102;
  v109 = _swiftEmptyArrayStorage;
  *(v0 + 192) = _swiftEmptyArrayStorage;
  v110 = v77 + 9;
  v154 = v77 + 9;
LABEL_53:
  *(v0 + 440) = v109;
  v111 = &v110[6 * v108];
  while (1)
  {
    if (v162 == v108)
    {
      v148 = swift_task_alloc();
      *(v0 + 448) = v148;
      *v148 = v0;
      v148[1] = sub_1009A67FC;

      return daemon.getter();
    }

    if (v108 >= v77[2])
    {
      goto LABEL_107;
    }

    v175 = v108;
    v112 = *(v0 + 296);
    v113 = *(v0 + 304);
    v114 = *(v0 + 288);
    v115 = *(v111 - 3);
    v116 = *(v111 - 2);
    v117 = *(v111 - 1);
    v118 = *v111;
    sub_100017D5C(v115, v116);
    v177 = v118;
    v178 = v117;
    sub_100017D5C(v117, v118);
    v119 = Data.init(stringLiteral:)();
    v121 = v120;
    sub_100017D5C(v115, v116);
    v166 = v116;
    v171 = v115;
    MACAddress.init(addressToSanitize:type:)();
    if ((*(v113 + 48))(v114, 1, v112) == 1)
    {
      goto LABEL_118;
    }

    v122 = *(v0 + 328);
    v2 = *(v0 + 296);
    v123 = *(v0 + 304);
    (*(v123 + 32))(v122, *(v0 + 288), v2);
    v124 = MACAddress.data.getter();
    v126 = v125;
    (*(v123 + 8))(v122, v2);
    *(v0 + 144) = v119;
    *(v0 + 152) = v121;
    *(v0 + 88) = &type metadata for Data;
    *(v0 + 96) = &protocol witness table for Data;
    *(v0 + 64) = v124;
    *(v0 + 72) = v126;
    v127 = v0 + 16;
    v128 = sub_1000035D0((v0 + 64), &type metadata for Data);
    v129 = *v128;
    v130 = v128[1];
    v131 = v130 >> 62;
    if ((v130 >> 62) > 1)
    {
      if (v131 != 2)
      {
        *(v155 + 6) = 0;
        *v155 = 0;
        goto LABEL_71;
      }

      v132 = v126;
      v134 = *(v129 + 16);
      v133 = *(v129 + 24);
      sub_100017D5C(v119, v121);
      v158 = v132;
      sub_100017D5C(v124, v132);
      v2 = __DataStorage._bytes.getter();
      if (v2)
      {
        v135 = __DataStorage._offset.getter();
        if (__OFSUB__(v134, v135))
        {
          goto LABEL_114;
        }

        v2 += v134 - v135;
      }

      if (__OFSUB__(v133, v134))
      {
        goto LABEL_113;
      }

LABEL_69:
      __DataStorage._length.getter();
      v127 = v0 + 16;
      Data._Representation.append(contentsOf:)();
      sub_100016590(v124, v158);
      sub_100016590(v119, v121);
      goto LABEL_72;
    }

    if (v131)
    {
      v158 = v126;
      v136 = v129;
      if (v129 >> 32 >= v129)
      {
        sub_100017D5C(v119, v121);
        sub_100017D5C(v124, v126);
        v2 = __DataStorage._bytes.getter();
        if (v2 && __OFSUB__(v136, __DataStorage._offset.getter()))
        {
          goto LABEL_115;
        }

        goto LABEL_69;
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
      goto LABEL_116;
    }

    *(v0 + 508) = v129;
    *(v0 + 516) = v130;
    *(v0 + 518) = BYTE2(v130);
    *(v0 + 519) = BYTE3(v130);
    *(v0 + 520) = BYTE4(v130);
    *(v0 + 521) = BYTE5(v130);
LABEL_71:
    Data._Representation.append(contentsOf:)();
LABEL_72:
    sub_100007BAC((v127 + 48));
    v55 = *(v0 + 144);
    v137 = *(v0 + 152);
    v138 = Data.subdata(in:)();
    isUniquelyReferenced_nonNull_native = v138;
    v58 = v139;
    v140 = v139 >> 62;
    if ((v139 >> 62) > 1)
    {
      if (v140 != 2)
      {
        goto LABEL_97;
      }

      v142 = *(v138 + 16);
      v141 = *(v138 + 24);
      v105 = __OFSUB__(v141, v142);
      v143 = v141 - v142;
      if (v105)
      {
        goto LABEL_110;
      }

      if (v143 != 16)
      {
        break;
      }

      goto LABEL_82;
    }

    if (!v140)
    {
      if (BYTE6(v139) != 16)
      {
        break;
      }

      goto LABEL_82;
    }

    if (__OFSUB__(HIDWORD(v138), v138))
    {
      goto LABEL_109;
    }

    if (HIDWORD(v138) - v138 != 16)
    {
      break;
    }

LABEL_82:
    v108 = v175 + 1;
    v111 += 6;
    v144 = objc_allocWithZone(SPCBPeripheralKeyAddressPair);
    v145 = Data._bridgeToObjectiveC()().super.isa;
    v146 = Data._bridgeToObjectiveC()().super.isa;
    v147 = [v144 initWithLEMACAddress:v145 longTermKey:v146];

    sub_100016590(isUniquelyReferenced_nonNull_native, v58);
    sub_100016590(v55, v137);
    sub_100016590(v171, v166);
    sub_100016590(v178, v177);
    v77 = v160;
    if (v147)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        isUniquelyReferenced_nonNull_native = *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v109 = *(v0 + 192);
      v110 = v154;
      goto LABEL_53;
    }
  }

  if (v140 == 2)
  {
    v151 = *(v138 + 16);
    v150 = *(v138 + 24);
    v149 = v150 - v151;
    if (!__OFSUB__(v150, v151))
    {
      goto LABEL_102;
    }

    __break(1u);
    goto LABEL_101;
  }

  if (v140 != 1)
  {
LABEL_101:
    v149 = BYTE6(v139);
    goto LABEL_102;
  }

  if (__OFSUB__(HIDWORD(v138), v138))
  {
    __break(1u);
LABEL_118:
    __break(1u);
  }

  v149 = HIDWORD(v138) - v138;
LABEL_102:
  sub_100018350();
  swift_allocError();
  *v152 = 16;
  *(v152 + 8) = v149;
  *(v152 + 16) = 0;
  swift_willThrow();
  sub_100016590(isUniquelyReferenced_nonNull_native, v58);

  return swift_unexpectedError();
}

uint64_t sub_1009A92B4()
{
  sub_10000B3A8(*(v0 + 272), &unk_1016C8FC0, &unk_10139D7D0);

  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 232);
  v4 = *(v0 + 200);
  sub_1000D2A70(v1 + v2[6], v3, &qword_1016980D0, &unk_10138F3B0);
  v133 = *(v1 + v2[12]);
  v127 = *(v1 + v2[11]);
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10138C320;
  *(v5 + 32) = v4;
  sub_10002E98C(0, 0xF000000000000000);
  v6 = v4;
  v130.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v124.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v3, 1, v7) != 1)
  {
    v10 = *(v0 + 232);
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();

  sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  sub_1004695BC();
  v13 = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = *(v0 + 424);
  v15 = objc_allocWithZone(SPPeripheral);
  sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
  v16 = Array._bridgeToObjectiveC()().super.isa;

  sub_100008BB8(0, &qword_1016B07B0, SPCBPeripheralKeyAddressPair_ptr);
  v17 = Array._bridgeToObjectiveC()().super.isa;

  LOBYTE(v116) = v127;
  v18 = [v15 initWithUserIdentifier:v130.super.isa beaconIdentifier:v124.super.isa groupIdentifier:isa name:v11 partIdentifier:v133 serialNumber:v12 managedByFindMy:v116 primaryIndex:v14 ltkIndexMap:v13 lastConnectedLEMAC:0 allowedSessions:v16 keyAddressPairs:v17];

  isUniquelyReferenced_nonNull_native = v18;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_101;
  }

LABEL_4:
  v20 = *(v0 + 352);
  v21 = v0 + 176;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_100006654(0, 0xF000000000000000);

  sub_1009AB920(v20, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  v134 = *(v0 + 176);
  v23 = *(v0 + 384);
  v22 = *(v0 + 392);
  while (1)
  {
    if (v23)
    {
      v24 = *(v0 + 208);
LABEL_16:
      v30 = *(v0 + 360);
      v29 = *(v0 + 368);
      v31 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v32 = v31 | (v22 << 6);
      sub_1009AB854(*(v24 + 48) + *(*(v0 + 344) + 72) * v32, v30, type metadata accessor for ManagedCBPeripheralBeaconInfo);
      v33 = *(*(v24 + 56) + 8 * v32);
      v34 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      v35 = *(v34 + 48);
      sub_1009AB8BC(v30, v29);
      *(v29 + v35) = v33;
      (*(*(v34 - 8) + 56))(v29, 0, 1, v34);
    }

    else
    {
      v25 = ((1 << *(v0 + 536)) + 63) >> 6;
      v26 = v25 <= (v22 + 1) ? v22 + 1 : ((1 << *(v0 + 536)) + 63) >> 6;
      v27 = v26 - 1;
      while (1)
      {
        v28 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_87:
          v112 = 0;
          goto LABEL_92;
        }

        if (v28 >= v25)
        {
          break;
        }

        v24 = *(v0 + 208);
        v23 = *(v24 + 8 * v28 + 64);
        ++v22;
        if (v23)
        {
          v22 = v28;
          goto LABEL_16;
        }
      }

      v43 = *(v0 + 368);
      v44 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
      (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
      v23 = 0;
      v22 = v27;
    }

    *(v0 + 384) = v23;
    *(v0 + 392) = v22;
    v36 = *(v0 + 376);
    sub_1000D2AD8(*(v0 + 368), v36, &qword_1016B07B8, &qword_1013CF1C8);
    v37 = sub_1000BC4D4(&qword_1016B07C0, &unk_1013CF1D0);
    if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
    {

      v45 = *(v0 + 8);

      return v45(v134);
    }

    v38 = *(v0 + 376);
    v39 = *(v0 + 352);
    isUniquelyReferenced_nonNull_native = *(v0 + 216);
    v40 = *(v38 + *(v37 + 48));
    *(v0 + 400) = v40;
    sub_1009AB8BC(v38, v39);
    if (*(isUniquelyReferenced_nonNull_native + 16))
    {
      v41 = sub_100772A10(*(v0 + 352));
      if (v42)
      {
        break;
      }
    }

    v21 = *(v0 + 352);

    sub_1009AB920(v21, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  }

  v47 = (*(*(v0 + 216) + 56) + 24 * v41);
  *(v0 + 408) = *v47;
  *(v0 + 416) = v47[1];
  v120 = v40;
  v121 = v40[2];
  if (v121)
  {
    v118 = v40[5];

    v48 = 0;
    v49 = v40 + 9;
    v50 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v48 >= v120[2])
      {
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_4;
      }

      v53 = *(v49 - 1);
      v54 = *v49;
      v122 = *(v49 - 3);
      v125 = *(v49 - 2);
      sub_100017D5C(v122, v125);
      sub_100017D5C(v53, v54);

      v128 = v54;
      v131 = v53;
      v55 = Data.subdata(in:)();
      v57 = v56;
      v135.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 184) = v50;
      v59 = sub_100771E30(v55, v57);
      v60 = v50[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_96;
      }

      v63 = v58;
      if (v50[3] >= v62)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v66 = *(v0 + 184);
          if (v58)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_10100C34C();
          v66 = *(v0 + 184);
          if (v63)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
        sub_100FF4898(v62, isUniquelyReferenced_nonNull_native);
        v64 = sub_100771E30(v55, v57);
        if ((v63 & 1) != (v65 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v59 = v64;
        v66 = *(v0 + 184);
        if (v63)
        {
LABEL_27:
          v51 = v66[7];
          v52 = *(v51 + 8 * v59);
          *(v51 + 8 * v59) = v135;

          sub_100016590(v55, v57);

          goto LABEL_28;
        }
      }

      v66[(v59 >> 6) + 8] |= 1 << v59;
      v67 = (v66[6] + 16 * v59);
      *v67 = v55;
      v67[1] = v57;
      *(v66[7] + 8 * v59) = v135;

      v68 = v66[2];
      v69 = __OFADD__(v68, 1);
      v70 = v68 + 1;
      if (v69)
      {
        goto LABEL_98;
      }

      v66[2] = v70;
LABEL_28:
      ++v48;
      sub_100016590(v122, v125);
      sub_100016590(v131, v128);
      v49 += 6;
      v50 = v66;
      if (v121 == v48)
      {
        v71 = v118;
        v40 = v120;
        goto LABEL_43;
      }
    }
  }

  v66 = _swiftEmptyDictionarySingleton;
  v71 = 1;
LABEL_43:
  v72 = 0;
  *(v0 + 424) = v71;
  *(v0 + 432) = v66;
  v73 = _swiftEmptyArrayStorage;
  *(v0 + 192) = _swiftEmptyArrayStorage;
  v74 = v40 + 9;
  v117 = v40 + 9;
LABEL_44:
  *(v0 + 440) = v73;
  v75 = &v74[6 * v72];
  while (1)
  {
    if (v121 == v72)
    {
      v111 = swift_task_alloc();
      *(v0 + 448) = v111;
      *v111 = v0;
      v111[1] = sub_1009A67FC;

      return daemon.getter();
    }

    if (v72 >= v40[2])
    {
      goto LABEL_97;
    }

    v76 = *(v0 + 296);
    v77 = *(v0 + 304);
    v78 = *(v0 + 288);
    v79 = *(v75 - 3);
    v80 = *(v75 - 2);
    v81 = *(v75 - 1);
    v82 = *v75;
    sub_100017D5C(v79, v80);
    v132 = v82;
    v136 = v81;
    sub_100017D5C(v81, v82);
    v83 = Data.init(stringLiteral:)();
    v85 = v84;
    sub_100017D5C(v79, v80);
    v123 = v80;
    v126 = v79;
    MACAddress.init(addressToSanitize:type:)();
    if ((*(v77 + 48))(v78, 1, v76) == 1)
    {
      goto LABEL_107;
    }

    v86 = *(v0 + 328);
    v88 = *(v0 + 296);
    v87 = *(v0 + 304);
    (*(v87 + 32))(v86, *(v0 + 288), v88);
    v89 = MACAddress.data.getter();
    v91 = v90;
    (*(v87 + 8))(v86, v88);
    *(v0 + 144) = v83;
    *(v0 + 152) = v85;
    *(v0 + 88) = &type metadata for Data;
    *(v0 + 96) = &protocol witness table for Data;
    *(v0 + 64) = v89;
    *(v0 + 72) = v91;
    v129 = v91;
    v92 = sub_1000035D0((v0 + 64), &type metadata for Data);
    v93 = *v92;
    v94 = v92[1];
    v95 = v94 >> 62;
    if ((v94 >> 62) > 1)
    {
      if (v95 != 2)
      {
        *(v0 + 528) = 0;
        *(v0 + 522) = 0;
        goto LABEL_61;
      }

      v119 = v72;
      v97 = *(v93 + 16);
      v96 = *(v93 + 24);
      sub_100017D5C(v83, v85);
      sub_100017D5C(v89, v129);
      if (__DataStorage._bytes.getter() && __OFSUB__(v97, __DataStorage._offset.getter()))
      {
        goto LABEL_104;
      }

      if (__OFSUB__(v96, v97))
      {
        goto LABEL_103;
      }

LABEL_59:
      __DataStorage._length.getter();
      Data._Representation.append(contentsOf:)();
      sub_100016590(v89, v129);
      sub_100016590(v83, v85);
      v72 = v119;
      goto LABEL_62;
    }

    if (v95)
    {
      v119 = v72;
      v98 = v93;
      if (v93 >> 32 < v93)
      {
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      sub_100017D5C(v83, v85);
      sub_100017D5C(v89, v129);
      if (__DataStorage._bytes.getter() && __OFSUB__(v98, __DataStorage._offset.getter()))
      {
        goto LABEL_105;
      }

      goto LABEL_59;
    }

    *(v0 + 508) = v93;
    *(v0 + 516) = v94;
    *(v0 + 518) = BYTE2(v94);
    *(v0 + 519) = BYTE3(v94);
    *(v0 + 520) = BYTE4(v94);
    *(v0 + 521) = BYTE5(v94);
LABEL_61:
    Data._Representation.append(contentsOf:)();
LABEL_62:
    sub_100007BAC((v0 + 64));
    v99 = *(v0 + 144);
    v100 = *(v0 + 152);
    v101 = Data.subdata(in:)();
    isUniquelyReferenced_nonNull_native = v101;
    v21 = v102;
    v103 = v102 >> 62;
    if ((v102 >> 62) > 1)
    {
      if (v103 != 2)
      {
        goto LABEL_87;
      }

      v105 = *(v101 + 16);
      v104 = *(v101 + 24);
      v69 = __OFSUB__(v104, v105);
      v106 = v104 - v105;
      if (v69)
      {
        goto LABEL_100;
      }

      if (v106 != 16)
      {
        goto LABEL_79;
      }

      goto LABEL_72;
    }

    if (v103)
    {
      break;
    }

    if (BYTE6(v102) != 16)
    {
      goto LABEL_79;
    }

LABEL_72:
    ++v72;
    v75 += 6;
    v107 = objc_allocWithZone(SPCBPeripheralKeyAddressPair);
    v108 = Data._bridgeToObjectiveC()().super.isa;
    v109 = Data._bridgeToObjectiveC()().super.isa;
    v110 = [v107 initWithLEMACAddress:v108 longTermKey:v109];

    sub_100016590(isUniquelyReferenced_nonNull_native, v21);
    sub_100016590(v99, v100);
    sub_100016590(v126, v123);
    sub_100016590(v136, v132);
    v40 = v120;
    if (v110)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        isUniquelyReferenced_nonNull_native = *((*(v0 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v73 = *(v0 + 192);
      v74 = v117;
      goto LABEL_44;
    }
  }

  if (__OFSUB__(HIDWORD(v101), v101))
  {
    goto LABEL_99;
  }

  if (HIDWORD(v101) - v101 == 16)
  {
    goto LABEL_72;
  }

LABEL_79:
  if (v103 == 2)
  {
    v114 = *(v101 + 16);
    v113 = *(v101 + 24);
    v112 = v113 - v114;
    if (!__OFSUB__(v113, v114))
    {
      goto LABEL_92;
    }

    __break(1u);
  }

  else if (v103 == 1)
  {
    if (!__OFSUB__(HIDWORD(v101), v101))
    {
      v112 = HIDWORD(v101) - v101;
      goto LABEL_92;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
  }

  v112 = BYTE6(v102);
LABEL_92:
  sub_100018350();
  swift_allocError();
  *v115 = 16;
  *(v115 + 8) = v112;
  *(v115 + 16) = 0;
  swift_willThrow();
  sub_100016590(isUniquelyReferenced_nonNull_native, v21);

  return swift_unexpectedError();
}

id sub_1009AA1D8(void *a1, void *a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v60 - v5;
  v7 = type metadata accessor for UUID();
  v74 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v60 - v11);
  v13 = [a1 allowedSessions];
  v14 = sub_100008BB8(0, &qword_10169EF48, SPCBPeripheralManagerSessionKey_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = sub_10112B504(v15);

  v17 = [a2 allowedSessions];
  v72 = v14;
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = sub_10112B504(v18);

  sub_10039E088(v19, v16);
  v71 = sub_1003A8DB0(v20);

  v21 = [a1 userIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = [a1 beaconIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v23 = [a1 groupIdentifier];
  if (v23)
  {
    v24 = v23;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v74[7](v6, v25, 1, v7);
  v26 = [a1 name];
  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  v69 = [a1 partIdentifier];
  v27 = [a1 serialNumber];
  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = String._bridgeToObjectiveC()();

    v27 = v28;
  }

  v68 = v27;
  v67 = [a1 managedByFindMy];
  v66 = [a1 primaryIndex];
  v29 = [a1 ltkIndexMap];
  v30 = sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
  sub_1004695BC();
  v65 = v30;
  v64 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = [a1 lastConnectedLEMAC];
  if (v31)
  {
    v32 = v31;
    v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v60 = 0;
    v34 = 0xF000000000000000;
  }

  v70 = v26;
  v75 = v7;
  isa = [a1 keyAddressPairs];
  if (!isa)
  {
    sub_100008BB8(0, &qword_1016B07B0, SPCBPeripheralKeyAddressPair_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v36 = v12;
  v63 = UUID._bridgeToObjectiveC()().super.isa;
  v73 = v10;
  v62 = UUID._bridgeToObjectiveC()().super.isa;
  v37 = v74;
  v38 = v6;
  v39 = v6;
  v40 = v75;
  if ((v74[6])(v39, 1, v75) == 1)
  {
    v41 = v37;
    v61 = 0;
  }

  else
  {
    v61 = UUID._bridgeToObjectiveC()().super.isa;
    v41 = v37;
    (v37[1])(v38, v40);
  }

  v42.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v74 = v36;
  if (v34 >> 60 == 15)
  {
    v43 = 0;
  }

  else
  {
    v44 = v60;
    v43 = Data._bridgeToObjectiveC()().super.isa;
    sub_100006654(v44, v34);
  }

  v45 = v41;
  v46 = objc_allocWithZone(SPPeripheral);
  v47 = Array._bridgeToObjectiveC()().super.isa;

  v59 = v42.super.isa;
  LOBYTE(v58) = v67;
  v48 = v46;
  v49 = v42.super.isa;
  v51 = v62;
  v50 = v63;
  v52 = v61;
  v53 = v70;
  v54 = v68;
  v72 = [v48 initWithUserIdentifier:v63 beaconIdentifier:v62 groupIdentifier:v61 name:v70 partIdentifier:v69 serialNumber:v68 managedByFindMy:v58 primaryIndex:v66 ltkIndexMap:v59 lastConnectedLEMAC:v43 allowedSessions:v47 keyAddressPairs:isa];

  v55 = v45[1];
  v56 = v75;
  (v55)(v73, v75);
  (v55)(v74, v56);
  return v72;
}

uint64_t sub_1009AA7E8(uint64_t a1, int a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1009AA80C, 0, 0);
}

uint64_t sub_1009AA80C()
{
  v13 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B810);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    v7 = Dictionary.description.getter();
    v9 = sub_1000136BC(v7, v8, &v12);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "TRACE: leechScannerDiscovered: %s rssi: %d", v5, 0x12u);
    sub_100007BAC(v6);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1009AA9CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1009AAA98, 0, 0);
}

uint64_t sub_1009AAA98()
{
  v21 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B810);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "TRACE: pairPencil: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1009AACCC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1009AAD98, 0, 0);
}

uint64_t sub_1009AAD98()
{
  v21 = v0;
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177B810);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[4];
  v9 = v0[5];
  v11 = v0[3];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00, &protocol conformance descriptor for Identifier<A>);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "TRACE: unpairPencil: %s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1009AAFCC()
{
  v0 = type metadata accessor for UUID();
  sub_100044B3C(v0, qword_1016B0768);
  sub_1000076D4(v0, qword_1016B0768);
  return sub_1000294F0(0);
}

uint64_t sub_1009AB01C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_1009A2510(a1);
}

uint64_t sub_1009AB0B0(uint64_t a1, int a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_1009AA7E8(a1, a2);
}

uint64_t sub_1009AB14C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10003633C;

  return sub_1009AA9CC(a1);
}

uint64_t sub_1009AB1E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100036434;

  return sub_1009AACCC(a1);
}

Swift::Int sub_1009AB274()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1009AB2E8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009AB33C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160CCD0, *a1);

  *a2 = v3 != 0;
  return result;
}

Swift::Int sub_1009AB3B0()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1009ABA98(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009AB460(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1009ABA98(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1009AB500(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1009ABA98(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1009AB5AC()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 41;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = 0x7972616D6972702ELL;
  v2._object = 0xE900000000000028;
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  type metadata accessor for Date();
  sub_1009ABA98(&qword_1016969A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 40;
}

uint64_t type metadata accessor for ManagedCBPeripheralManager.KeyType(uint64_t a1)
{
  result = qword_1016B0828;
  if (!qword_1016B0828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1009AB74C()
{
  result = qword_1016B0780;
  if (!qword_1016B0780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0780);
  }

  return result;
}

uint64_t sub_1009AB7A0(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100014650;

  return sub_1009A38B4(a1, a2, v7, v6);
}

uint64_t sub_1009AB854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1009AB8BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedCBPeripheralBeaconInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009AB920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1009AB980(uint64_t a1, int a2)
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

uint64_t sub_1009AB9C8(uint64_t result, int a2, int a3)
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

uint64_t sub_1009ABA98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1009ABAE4()
{
  result = qword_1016B0868;
  if (!qword_1016B0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0868);
  }

  return result;
}

unint64_t sub_1009ABB3C()
{
  result = qword_1016B0870;
  if (!qword_1016B0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0870);
  }

  return result;
}

uint64_t sub_1009ABF5C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 604));

  return v2;
}

uint64_t sub_1009ABF94(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 612));

  return v2;
}

uint64_t sub_1009AC194(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 636));

  return v2;
}

uint64_t sub_1009AC294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016ADCE8, &qword_1013C53A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ConfigurationResponse(uint64_t a1)
{
  result = qword_1016B08D8;
  if (!qword_1016B08D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1009AC378(uint64_t a1)
{
  sub_1002359B8(319, &qword_1016A8838, &type metadata for Int);
  if (v1 <= 0x3F)
  {
    sub_1002ECE54(319, &qword_1016A8840, &qword_1016B0470, &qword_10138EB80);
    if (v2 <= 0x3F)
    {
      sub_1002359B8(319, &unk_1016A0CD8, &type metadata for Double);
      if (v3 <= 0x3F)
      {
        sub_1002359B8(319, &qword_1016ADEF8, &type metadata for UInt);
        if (v4 <= 0x3F)
        {
          sub_1002359B8(319, &qword_10169D5F0, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            sub_1009AC868(319);
            if (v6 <= 0x3F)
            {
              sub_1002359B8(319, &qword_1016ADF20, &type metadata for AllMacBeaconConfigs);
              if (v7 <= 0x3F)
              {
                sub_1002ECE54(319, &qword_1016ADF28, &qword_101697E40, qword_1013C5620);
                if (v8 <= 0x3F)
                {
                  sub_1002ECE54(319, &qword_1016ADF30, &qword_101697E28, &qword_10138EA70);
                  if (v9 <= 0x3F)
                  {
                    sub_1002359B8(319, &qword_1016ADF38, &type metadata for UInt32);
                    if (v10 <= 0x3F)
                    {
                      sub_1002359B8(319, &qword_1016BD350, &type metadata for String);
                      if (v11 <= 0x3F)
                      {
                        sub_1002359B8(319, &unk_1016ADF40, &type metadata for Int8);
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

void sub_1009AC868(uint64_t a1)
{
  if (!qword_1016B08E8)
  {
    type metadata accessor for FeatureSupportMatrix(255);
    sub_1009AC944();
    sub_1009AC998();
    sub_1009AC9EC(&qword_1016AE268, &unk_1013EC7BC);
    sub_1009AC9EC(&qword_1016AE2B8, &unk_1013EC794);
    v1 = type metadata accessor for CustomCodableKeyDictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1016B08E8);
    }
  }
}

unint64_t sub_1009AC944()
{
  result = qword_1016B08F0;
  if (!qword_1016B08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B08F0);
  }

  return result;
}

unint64_t sub_1009AC998()
{
  result = qword_1016B08F8;
  if (!qword_1016B08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B08F8);
  }

  return result;
}

uint64_t sub_1009AC9EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FeatureSupportMatrix(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1009ACA40(char a1)
{
  result = 0x6F43737574617473;
  switch(a1)
  {
    case 1:
      result = 0x7470697263736564;
      break;
    case 2:
    case 35:
    case 60:
    case 113:
    case 114:
    case -101:
      result = 0xD000000000000010;
      break;
    case 3:
    case 74:
    case 83:
    case 98:
    case 112:
      result = 0xD000000000000019;
      break;
    case 4:
    case 5:
    case 29:
    case 40:
    case 63:
    case 85:
    case -106:
      result = 0xD000000000000025;
      break;
    case 6:
    case 77:
    case 81:
    case 97:
    case 126:
    case -115:
    case -107:
    case -97:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x754E6C6169726573;
      break;
    case 8:
      result = 0x6E457265646E6966;
      break;
    case 9:
    case 21:
    case 58:
    case 76:
    case 107:
    case -109:
    case -96:
      result = 0xD000000000000015;
      break;
    case 10:
    case 53:
    case 56:
    case 57:
    case -124:
    case -122:
    case -117:
    case -104:
      result = 0xD00000000000001ELL;
      break;
    case 11:
    case 45:
    case 117:
      result = 0xD000000000000016;
      break;
    case 12:
    case 34:
    case 46:
    case 67:
    case 88:
    case -99:
      result = 0xD000000000000017;
      break;
    case 13:
    case 24:
    case 70:
    case 125:
      result = 0xD000000000000024;
      break;
    case 14:
      result = 0xD00000000000003ALL;
      break;
    case 15:
      result = 0xD000000000000043;
      break;
    case 16:
    case 42:
    case 43:
    case 49:
    case 54:
    case 55:
    case 61:
    case 62:
    case 87:
    case 93:
    case 121:
      result = 0xD00000000000001CLL;
      break;
    case 17:
    case 64:
    case 102:
      result = 0xD000000000000028;
      break;
    case 18:
    case 22:
    case 26:
    case 36:
    case 86:
    case 96:
    case 111:
    case -121:
      result = 0xD00000000000001FLL;
      break;
    case 19:
    case 32:
    case 37:
    case 39:
    case 66:
    case 68:
    case 71:
    case -102:
      result = 0xD000000000000021;
      break;
    case 20:
    case 118:
    case -100:
      result = 0xD000000000000014;
      break;
    case 23:
    case 27:
    case 41:
    case 69:
    case 75:
    case 84:
    case 123:
    case 124:
    case -126:
    case -114:
      result = 0xD000000000000023;
      break;
    case 25:
    case 44:
      result = 0xD000000000000026;
      break;
    case 28:
    case 38:
      result = 0xD00000000000002ALL;
      break;
    case 30:
      result = 0xD00000000000002CLL;
      break;
    case 31:
      result = 0xD00000000000001DLL;
      break;
    case 33:
      result = 0xD00000000000001DLL;
      break;
    case 47:
      result = 0xD000000000000012;
      break;
    case 48:
    case 78:
    case 90:
    case 91:
    case 95:
    case 120:
    case -123:
    case -120:
      result = 0xD00000000000001ALL;
      break;
    case 50:
    case -112:
      result = 0xD000000000000011;
      break;
    case 51:
    case 82:
    case -105:
      result = 0xD000000000000013;
      break;
    case 52:
      result = 0xD00000000000001DLL;
      break;
    case 59:
      result = 0x724473776F6C6C61;
      break;
    case 65:
    case 73:
    case 92:
    case 110:
    case -125:
    case -98:
      result = 0xD000000000000020;
      break;
    case 72:
      result = 0xD00000000000001DLL;
      break;
    case 79:
      result = 0xD00000000000001DLL;
      break;
    case 80:
      result = 0x6941656C65487369;
      break;
    case 89:
      result = 0xD00000000000001DLL;
      break;
    case 94:
    case 101:
    case 122:
    case -118:
    case -108:
      result = 0xD000000000000022;
      break;
    case 99:
    case 103:
    case 127:
      result = 0xD00000000000002BLL;
      break;
    case 100:
    case 119:
      result = 0xD00000000000001BLL;
      break;
    case 104:
      result = 0xD00000000000001DLL;
      break;
    case 105:
      result = 0xD00000000000001DLL;
      break;
    case 106:
      result = 0xD000000000000032;
      break;
    case 108:
      result = 0xD00000000000001DLL;
      break;
    case 109:
      result = 0xD00000000000001DLL;
      break;
    case 115:
    case 116:
      result = 0x657261685378616DLL;
      break;
    case -128:
    case -119:
      result = 0xD00000000000002DLL;
      break;
    case -127:
      result = 0xD00000000000001DLL;
      break;
    case -116:
      result = 0xD00000000000001DLL;
      break;
    case -113:
      result = 0xD000000000000029;
      break;
    case -111:
      result = 0xD00000000000001DLL;
      break;
    case -110:
      result = 0xD00000000000001DLL;
      break;
    case -103:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1009AD57C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1009ACA40(*a1);
  v5 = v4;
  if (v3 == sub_1009ACA40(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1009AD604()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1009ACA40(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009AD668(uint64_t a1)
{
  sub_1009ACA40(*v1);
  String.hash(into:)();
}

Swift::Int sub_1009AD6BC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_1009ACA40(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009AD71C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1009B1404(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1009AD74C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1009ACA40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1009AD780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1009B1404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009AD7B4(uint64_t a1)
{
  v2 = sub_1009B0E9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1009AD7F0(uint64_t a1)
{
  v2 = sub_1009B0E9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009AD82C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 3158066;
  }

  else
  {
    v3 = 0x726F7272456F6ELL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 3158066;
  }

  else
  {
    v5 = 0x726F7272456F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1009AD8CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009AD948(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1009AD9B0(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009ADA28@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160C1E0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1009ADA88(uint64_t *a1@<X8>)
{
  v2 = 3158066;
  if (!*v1)
  {
    v2 = 0x726F7272456F6ELL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1009ADB74()
{
  result = qword_1016B0BA8;
  if (!qword_1016B0BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BA8);
  }

  return result;
}

uint64_t sub_1009ADBC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v580 = a2;
  v3 = sub_1000BC4D4(&qword_1016B0878, &qword_1013CF3B8);
  v588 = *(v3 - 8);
  v589 = v3;
  __chkstk_darwin(v3);
  v582 = &v576 - v4;
  v584 = sub_1000BC4D4(&qword_1016B0BB0, &qword_1013CF500);
  v583 = *(v584 - 8);
  __chkstk_darwin(v584);
  v6 = &v576 - v5;
  v7 = type metadata accessor for ConfigurationResponse(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v576 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v590 = v8;
  v11 = *(v8 + 96);
  v12 = type metadata accessor for FeatureSupportMatrix(0);
  sub_1009AC944();
  v13 = sub_1009AC998();
  v14 = sub_1009AC9EC(&qword_1016AE268, &unk_1013EC7BC);
  sub_1009AC9EC(&qword_1016AE2B8, &unk_1013EC794);
  v591 = v10;
  v587 = v11;
  v581 = v12;
  CustomCodableKeyDictionary.init(wrappedValue:)();
  v15 = a1[3];
  v586 = a1;
  sub_1000035D0(a1, v15);
  sub_1009B0E9C();
  v585 = v6;
  v16 = v592;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    v592 = v16;
    v18 = v591;
    sub_100007BAC(v586);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    goto LABEL_4;
  }

  v578 = v14;
  v579 = v13;
  v17 = v582;
  LOBYTE(v593) = 0;
  sub_1009B0F58();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v591;
  *v591 = v594;
  LOBYTE(v594) = 1;
  *(v31 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v31 + 2) = v32;
  LOBYTE(v593) = 2;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v577 = 0;
  *(v31 + 24) = v594;
  LOBYTE(v594) = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v31 + 5) = v33;
  LOBYTE(v594) = 4;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v31 + 6) = v34;
  LOBYTE(v594) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v31 + 7) = v35;
  LOBYTE(v594) = 6;
  *(v31 + 8) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31[72] = v36 & 1;
  LOBYTE(v594) = 7;
  *(v31 + 10) = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v594) = 8;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v592 = 0;
  v31[88] = v37 & 1;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  LOBYTE(v593) = 9;
  sub_1009B0FAC(&qword_1016A8A58, &qword_1016B0470, &qword_10138EB80);
  v38 = v592;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v592 = v38;
  if (v38)
  {
    (*(v583 + 8))(v585, v584);
    LODWORD(v585) = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v18 = v591;
    goto LABEL_20;
  }

  *(v591 + 12) = v594;
  LOBYTE(v594) = 10;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v40 = v591;
  *(v591 + 13) = v39;
  v40[112] = v41 & 1;
  LOBYTE(v594) = 11;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v43 = v591;
  *(v591 + 15) = v42;
  v43[128] = v44 & 1;
  LOBYTE(v594) = 12;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v46 = v591;
  *(v591 + 17) = v45;
  v46[144] = v47 & 1;
  LOBYTE(v594) = 13;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v49 = v591;
  *(v591 + 19) = v48;
  v49[160] = v50 & 1;
  LOBYTE(v594) = 14;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v52 = v591;
  *(v591 + 21) = v51;
  v52[176] = v53 & 1;
  LOBYTE(v594) = 15;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v55 = v591;
  *(v591 + 23) = v54;
  v55[192] = v56 & 1;
  LOBYTE(v594) = 16;
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v58 = v591;
  *(v591 + 25) = v57;
  v58[208] = v59 & 1;
  LOBYTE(v594) = 17;
  v60 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v61 = v591;
  *(v591 + 27) = v60;
  v61[224] = v62 & 1;
  LOBYTE(v594) = 18;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v64 = v591;
  *(v591 + 29) = v63;
  v64[240] = v65 & 1;
  LOBYTE(v594) = 19;
  v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v591[241] = v66;
  LOBYTE(v594) = 20;
  sub_10090CE50();
  v67 = v592;
  KeyedDecodingContainer.decode<A, B>(_:forKey:)();
  v592 = v67;
  if (v67
    || ((*(v588 + 40))(&v591[v587], v17, v589), LOBYTE(v594) = 21, v68 = v592, v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v68) != 0)
    || (v71 = &v591[v590[26]], *v71 = v69, v71[8] = v70 & 1, LOBYTE(v594) = 22, v72 = v592, v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v72) != 0)
    || (v75 = &v591[v590[27]], *v75 = v73, v75[8] = v74 & 1, LOBYTE(v594) = 23, v76 = v592, v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v76) != 0)
    || (v79 = &v591[v590[28]], *v79 = v77, v79[8] = v78 & 1, LOBYTE(v594) = 24, v80 = v592, v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v80) != 0)
    || (v83 = &v591[v590[29]], *v83 = v81, v83[8] = v82 & 1, LOBYTE(v594) = 25, v84 = v592, v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v84) != 0)
    || (v87 = &v591[v590[30]], *v87 = v85, v87[8] = v86 & 1, LOBYTE(v594) = 26, v88 = v592, v89 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v88) != 0)
    || (v91 = &v591[v590[31]], *v91 = v89, v91[8] = v90 & 1, LOBYTE(v594) = 27, v92 = v592, v93 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v92) != 0)
    || (v95 = &v591[v590[32]], *v95 = v93, v95[8] = v94 & 1, LOBYTE(v594) = 28, v96 = v592, v97 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v96) != 0)
    || (v99 = &v591[v590[33]], *v99 = v97, v99[8] = v98 & 1, LOBYTE(v594) = 29, v100 = v592, v101 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v100) != 0)
    || (v103 = &v591[v590[34]], *v103 = v101, v103[8] = v102 & 1, LOBYTE(v594) = 30, v104 = v592, v105 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v104) != 0)
    || (v107 = &v591[v590[35]], *v107 = v105, v107[8] = v106 & 1, LOBYTE(v594) = 31, v108 = v592, v109 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v108) != 0)
    || (v591[v590[36]] = v109, LOBYTE(v594) = 32, v110 = v592, v111 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v110) != 0)
    || (v113 = &v591[v590[37]], *v113 = v111, v113[8] = v112 & 1, LOBYTE(v594) = 33, v114 = v592, v115 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v114) != 0)
    || (v117 = &v591[v590[38]], *v117 = v115, v117[8] = v116 & 1, LOBYTE(v594) = 34, v118 = v592, v119 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v118) != 0)
    || (v121 = &v591[v590[39]], *v121 = v119, v121[8] = v120 & 1, LOBYTE(v594) = 35, v122 = v592, v123 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v122) != 0)
    || (v591[v590[40]] = v123, LOBYTE(v594) = 36, v124 = v592, v125 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v124) != 0)
    || (v127 = &v591[v590[41]], *v127 = v125, v127[8] = v126 & 1, LOBYTE(v594) = 37, v128 = v592, v129 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v128) != 0)
    || (v131 = &v591[v590[42]], *v131 = v129, v131[8] = v130 & 1, LOBYTE(v594) = 38, v132 = v592, v133 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v132) != 0)
    || (v135 = &v591[v590[43]], *v135 = v133, v135[8] = v134 & 1, LOBYTE(v594) = 39, v136 = v592, v137 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v136) != 0)
    || (v139 = &v591[v590[44]], *v139 = v137, v139[8] = v138 & 1, LOBYTE(v594) = 40, v140 = v592, v141 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v140) != 0)
    || (v143 = &v591[v590[45]], *v143 = v141, v143[8] = v142 & 1, LOBYTE(v594) = 41, v144 = v592, v145 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v144) != 0)
    || (v147 = &v591[v590[46]], *v147 = v145, v147[8] = v146 & 1, LOBYTE(v594) = 42, v148 = v592, v149 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v148) != 0)
    || (v151 = &v591[v590[47]], *v151 = v149, v151[8] = v150 & 1, LOBYTE(v594) = 43, v152 = v592, v153 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v152) != 0)
    || (v155 = &v591[v590[48]], *v155 = v153, v155[8] = v154 & 1, LOBYTE(v594) = 44, v156 = v592, v157 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v156) != 0)
    || (v159 = &v591[v590[49]], *v159 = v157, v159[8] = v158 & 1, LOBYTE(v594) = 45, v160 = v592, v161 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v160) != 0)
    || (v163 = &v591[v590[25]], *v163 = v161, v163[8] = v162 & 1, LOBYTE(v594) = 46, v164 = v592, v165 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v164) != 0)
    || (v167 = &v591[v590[50]], *v167 = v165, v167[8] = v166 & 1, LOBYTE(v594) = 47, v168 = v592, v169 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v168) != 0)
    || (v171 = &v591[v590[51]], *v171 = v169, v171[8] = v170 & 1, LOBYTE(v594) = 48, v172 = v592, v173 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v172) != 0)
    || (v175 = &v591[v590[52]], *v175 = v173, v175[8] = v174 & 1, LOBYTE(v594) = 49, v176 = v592, v177 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v176) != 0)
    || (v179 = &v591[v590[53]], *v179 = v177, v179[8] = v178 & 1, LOBYTE(v594) = 50, v180 = v592, v181 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v180) != 0)
    || (v183 = &v591[v590[54]], *v183 = v181, v183[8] = v182 & 1, LOBYTE(v594) = 51, v184 = v592, v185 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v184) != 0)
    || (v591[v590[55]] = v185, LOBYTE(v594) = 52, v186 = v592, v187 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v186) != 0)
    || (v189 = &v591[v590[56]], *v189 = v187, v189[8] = v188 & 1, LOBYTE(v594) = 53, v190 = v592, v191 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v190) != 0)
    || (v193 = &v591[v590[57]], *v193 = v191, v193[8] = v192 & 1, LOBYTE(v594) = 54, v194 = v592, v195 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v194) != 0)
    || (v197 = &v591[v590[58]], *v197 = v195, v197[8] = v196 & 1, LOBYTE(v594) = 55, v198 = v592, v199 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v198) != 0)
    || (v201 = &v591[v590[59]], *v201 = v199, v201[8] = v200 & 1, LOBYTE(v594) = 56, v202 = v592, v203 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v202) != 0)
    || (v205 = &v591[v590[60]], *v205 = v203, v205[8] = v204 & 1, LOBYTE(v594) = 57, v206 = v592, v207 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v206) != 0)
    || (v209 = &v591[v590[61]], *v209 = v207, v209[8] = v208 & 1, LOBYTE(v594) = 58, v210 = v592, v211 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v210) != 0)
    || (v591[v590[62]] = v211, LOBYTE(v594) = 59, v212 = v592, v213 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v212) != 0)
    || (v591[v590[63]] = v213, v602 = 60, sub_10090CF40(), v214 = v592, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v592 = v214) != 0))
  {
    (*(v583 + 8))(v585, v584);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    LODWORD(v585) = 1;
    v18 = v591;
    goto LABEL_20;
  }

  v215 = &v591[v590[64]];
  v216 = v599;
  *(v215 + 4) = v598;
  *(v215 + 5) = v216;
  *(v215 + 6) = v600;
  v217 = v595;
  *v215 = v594;
  *(v215 + 1) = v217;
  v218 = v597;
  *(v215 + 2) = v596;
  *(v215 + 3) = v218;
  LOBYTE(v593) = 61;
  v219 = v592;
  v220 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = v219;
  if (v219
    || (v222 = &v591[v590[65]], *v222 = v220, v222[8] = v221 & 1, LOBYTE(v593) = 62, v223 = v592, v224 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v223) != 0)
    || (v226 = &v591[v590[66]], *v226 = v224, v226[8] = v225 & 1, LOBYTE(v593) = 63, v227 = v592, v228 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v227) != 0)
    || (v230 = &v591[v590[67]], *v230 = v228, v230[8] = v229 & 1, LOBYTE(v593) = 64, v231 = v592, v232 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v231) != 0)
    || (v234 = &v591[v590[68]], *v234 = v232, v234[8] = v233 & 1, LOBYTE(v593) = 65, v235 = v592, v236 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v235) != 0)
    || (v238 = &v591[v590[69]], *v238 = v236, v238[8] = v237 & 1, LOBYTE(v593) = 66, v239 = v592, v240 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v239) != 0)
    || (v242 = &v591[v590[70]], *v242 = v240, v242[8] = v241 & 1, LOBYTE(v593) = 67, v243 = v592, v244 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v243) != 0)
    || (v246 = &v591[v590[71]], *v246 = v244, v246[8] = v245 & 1, LOBYTE(v593) = 68, v247 = v592, v248 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v247) != 0)
    || (v250 = &v591[v590[72]], *v250 = v248, v250[8] = v249 & 1, LOBYTE(v593) = 69, v251 = v592, v252 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v251) != 0)
    || (v254 = &v591[v590[73]], *v254 = v252, v254[8] = v253 & 1, LOBYTE(v593) = 70, v255 = v592, v256 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v255) != 0)
    || (v258 = &v591[v590[74]], *v258 = v256, v258[8] = v257 & 1, LOBYTE(v593) = 71, v259 = v592, v260 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v259) != 0)
    || (v262 = &v591[v590[75]], *v262 = v260, v262[8] = v261 & 1, LOBYTE(v593) = 72, v263 = v592, v264 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v263) != 0)
    || (v266 = &v591[v590[76]], *v266 = v264, v266[8] = v265 & 1, LOBYTE(v593) = 73, v267 = v592, v268 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v267) != 0)
    || (v270 = &v591[v590[77]], *v270 = v268, v270[8] = v269 & 1, LOBYTE(v593) = 74, v271 = v592, v272 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v271) != 0)
    || (v274 = &v591[v590[78]], *v274 = v272, v274[8] = v273 & 1, LOBYTE(v593) = 75, v275 = v592, v276 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v275) != 0)
    || (v278 = &v591[v590[79]], *v278 = v276, v278[8] = v277 & 1, LOBYTE(v593) = 76, v279 = v592, v280 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v279) != 0)
    || (v282 = &v591[v590[80]], *v282 = v280, v282[8] = v281 & 1, LOBYTE(v593) = 77, v283 = v592, v284 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v283) != 0)
    || (v286 = &v591[v590[81]], *v286 = v284, v286[8] = v285 & 1, LOBYTE(v593) = 78, v287 = v592, v288 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v287) != 0)
    || (v290 = &v591[v590[82]], *v290 = v288, v290[8] = v289 & 1, LOBYTE(v593) = 79, v291 = v592, v292 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v291) != 0)
    || (v294 = &v591[v590[83]], *v294 = v292, v294[8] = v293 & 1, LOBYTE(v593) = 80, v295 = v592, v296 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v295) != 0)
    || (v591[v590[84]] = v296, LOBYTE(v593) = 81, v297 = v592, v298 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v297) != 0)
    || (v591[v590[85]] = v298, LOBYTE(v593) = 82, v299 = v592, v300 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v299) != 0)
    || (v591[v590[86]] = v300, LOBYTE(v593) = 83, v301 = v592, v302 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v301) != 0)
    || (v304 = &v591[v590[87]], *v304 = v302, v304[8] = v303 & 1, LOBYTE(v593) = 84, v305 = v592, v306 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v305) != 0)
    || (v308 = &v591[v590[88]], *v308 = v306, v308[8] = v307 & 1, LOBYTE(v593) = 85, v309 = v592, v310 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v309) != 0)
    || (v312 = &v591[v590[89]], *v312 = v310, v312[8] = v311 & 1, LOBYTE(v593) = 86, v313 = v592, v314 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v313) != 0)
    || (v316 = &v591[v590[90]], *v316 = v314, v316[8] = v315 & 1, LOBYTE(v593) = 87, v317 = v592, v318 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v317) != 0)
    || (v320 = &v591[v590[91]], *v320 = v318, v320[8] = v319 & 1, LOBYTE(v593) = 88, v321 = v592, v322 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v321) != 0)
    || (v324 = &v591[v590[92]], *v324 = v322, v324[8] = v323 & 1, LOBYTE(v593) = 89, v325 = v592, v326 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v325) != 0)
    || (v328 = &v591[v590[93]], *v328 = v326, v328[8] = v327 & 1, LOBYTE(v593) = 90, v329 = v592, v330 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v329) != 0)
    || (v332 = &v591[v590[94]], *v332 = v330, v332[8] = v331 & 1, LOBYTE(v593) = 91, v333 = v592, v334 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v333) != 0)
    || (v336 = &v591[v590[95]], *v336 = v334, v336[8] = v335 & 1, LOBYTE(v593) = 92, v337 = v592, v338 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v337) != 0)
    || (v591[v590[96]] = v338, LOBYTE(v593) = 93, v339 = v592, v340 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v339) != 0)
    || (v342 = &v591[v590[97]], *v342 = v340, v342[8] = v341 & 1, LOBYTE(v593) = 94, v343 = v592, v344 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v343) != 0)
    || (v346 = &v591[v590[98]], *v346 = v344, v346[8] = v345 & 1, LOBYTE(v593) = 95, v347 = v592, v348 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v347) != 0)
    || (v350 = &v591[v590[99]], *v350 = v348, v350[8] = v349 & 1, LOBYTE(v593) = 96, v351 = v592, v352 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v351) != 0)
    || (v591[v590[100]] = v352, LOBYTE(v593) = 97, v353 = v592, v354 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v353) != 0)
    || (v591[v590[101]] = v354, LOBYTE(v593) = 98, v355 = v592, v356 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v355) != 0)
    || (v591[v590[102]] = v356, LOBYTE(v593) = 99, v357 = v592, v358 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v357) != 0)
    || (v360 = &v591[v590[103]], *v360 = v358, v360[8] = v359 & 1, LOBYTE(v593) = 100, v361 = v592, v362 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v361) != 0)
    || (v364 = &v591[v590[104]], *v364 = v362, v364[8] = v363 & 1, LOBYTE(v593) = 101, v365 = v592, v366 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v365) != 0)
    || (v368 = &v591[v590[105]], *v368 = v366, v368[8] = v367 & 1, LOBYTE(v593) = 102, v369 = v592, v370 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v369) != 0)
    || (v372 = &v591[v590[106]], *v372 = v370, v372[8] = v371 & 1, LOBYTE(v593) = 103, v373 = v592, v374 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v373) != 0)
    || (v591[v590[107]] = v374, LOBYTE(v593) = 104, v375 = v592, v376 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v375) != 0)
    || (v378 = &v591[v590[108]], *v378 = v376, v378[8] = v377 & 1, sub_1000BC4D4(&qword_101697E40, qword_1013C5620), v601 = 105, sub_1009B0FAC(&qword_10169EA80, &qword_101697E40, qword_1013C5620), v379 = v592, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v592 = v379) != 0))
  {
    (*(v583 + 8))(v585, v584);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    LODWORD(v585) = 1;
    v19 = 1;
    v18 = v591;
    goto LABEL_20;
  }

  *&v591[v590[109]] = v593;
  LOBYTE(v593) = 106;
  v380 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v381 = &v591[v590[110]];
  *v381 = v380;
  v381[8] = v382 & 1;
  LOBYTE(v593) = 107;
  v383 = v592;
  v384 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = v383;
  if (v383 || (v591[v590[111]] = v384, sub_1000BC4D4(&qword_101697E28, &qword_10138EA70), v601 = 108, sub_1009B1014(), v385 = v592, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v592 = v385) != 0))
  {
    (*(v583 + 8))(v585, v584);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    LODWORD(v585) = 1;
    v19 = 1;
    v20 = 1;
    v18 = v591;
    goto LABEL_20;
  }

  *&v591[v590[112]] = v593;
  LOBYTE(v593) = 109;
  v386 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = 0;
  v387 = &v591[v590[113]];
  *v387 = v386;
  v387[8] = v388 & 1;
  LOBYTE(v593) = 110;
  v389 = v592;
  v390 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = v389;
  if (v389
    || (v392 = &v591[v590[114]], *v392 = v390, v392[8] = v391 & 1, LOBYTE(v593) = 111, v393 = v592, v394 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v393) != 0)
    || (v591[v590[115]] = v394, LOBYTE(v593) = 112, v395 = v592, v396 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v395) != 0)
    || (v591[v590[116]] = v396, LOBYTE(v593) = 113, v397 = v592, v398 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v397) != 0)
    || (v400 = &v591[v590[117]], *v400 = v398, v400[8] = v399 & 1, LOBYTE(v593) = 114, v401 = v592, v402 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v401) != 0)
    || (v404 = &v591[v590[118]], *v404 = v402, v404[8] = v403 & 1, LOBYTE(v593) = 115, v405 = v592, v406 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v405) != 0)
    || (v408 = &v591[v590[119]], *v408 = v406, v408[8] = v407 & 1, LOBYTE(v593) = 116, v409 = v592, v410 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v409) != 0)
    || (v412 = &v591[v590[120]], *v412 = v410, v412[8] = v411 & 1, LOBYTE(v593) = 117, v413 = v592, v414 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v413) != 0)
    || (v416 = &v591[v590[121]], *v416 = v414, v416[8] = v415 & 1, LOBYTE(v593) = 118, v417 = v592, v418 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v417) != 0)
    || (v420 = &v591[v590[122]], *v420 = v418, v420[8] = v419 & 1, LOBYTE(v593) = 119, v421 = v592, v422 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v421) != 0)
    || (v424 = &v591[v590[123]], *v424 = v422, v424[8] = v423 & 1, LOBYTE(v593) = 120, v425 = v592, v426 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v425) != 0)
    || (v428 = &v591[v590[124]], *v428 = v426, v428[8] = v427 & 1, LOBYTE(v593) = 121, v429 = v592, v430 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v429) != 0)
    || (v432 = &v591[v590[125]], *v432 = v430, v432[8] = v431 & 1, LOBYTE(v593) = 122, v433 = v592, v434 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v433) != 0)
    || (v436 = &v591[v590[126]], *v436 = v434, v436[8] = v435 & 1, LOBYTE(v593) = 123, v437 = v592, v438 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v437) != 0)
    || (v440 = &v591[v590[127]], *v440 = v438, v440[8] = v439 & 1, LOBYTE(v593) = 124, v441 = v592, v442 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v441) != 0)
    || (v444 = &v591[v590[128]], *v444 = v442, v444[8] = v443 & 1, LOBYTE(v593) = 125, v445 = v592, v446 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v445) != 0)
    || (v448 = &v591[v590[129]], *v448 = v446, v448[8] = v447 & 1, LOBYTE(v593) = 126, v449 = v592, v450 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v449) != 0)
    || (v452 = &v591[v590[130]], *v452 = v450, v452[8] = v451 & 1, LOBYTE(v593) = 127, v453 = v592, v454 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v453) != 0)
    || (v456 = &v591[v590[131]], *v456 = v454, v456[8] = v455 & 1, LOBYTE(v593) = 0x80, v457 = v592, v458 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v457) != 0)
    || (v460 = &v591[v590[132]], *v460 = v458, v460[8] = v459 & 1, LOBYTE(v593) = -127, v461 = v592, v462 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v461) != 0)
    || (v464 = &v591[v590[133]], *v464 = v462, v464[8] = v463 & 1, LOBYTE(v593) = -126, v465 = v592, v466 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v465) != 0)
    || (v468 = &v591[v590[134]], *v468 = v466, v468[8] = v467 & 1, LOBYTE(v593) = -125, v469 = v592, v470 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v469) != 0)
    || (v591[v590[135]] = v470, LOBYTE(v593) = -124, v471 = v592, v472 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v471) != 0)
    || (v591[v590[136]] = v472, LOBYTE(v593) = -123, v473 = v592, v474 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v473) != 0)
    || (v476 = &v591[v590[137]], *v476 = v474, v476[8] = v475 & 1, LOBYTE(v593) = -122, v477 = v592, v478 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v477) != 0)
    || (v480 = &v591[v590[138]], *v480 = v478, v480[8] = v479 & 1, LOBYTE(v593) = -121, v481 = v592, v482 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v481) != 0))
  {
    (*(v583 + 8))(v585, v584);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    LODWORD(v585) = 1;
    v19 = 1;
LABEL_158:
    v20 = 1;
    v21 = 1;
    v18 = v591;
    goto LABEL_20;
  }

  v591[v590[139]] = v482;
  LOBYTE(v593) = -120;
  v483 = v592;
  v484 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = v483;
  if (v483 || (v485 = &v591[v590[140]], *v485 = v484, v485[4] = BYTE4(v484) & 1, LOBYTE(v593) = -119, v486 = v592, v487 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v486) != 0) || (v489 = &v591[v590[141]], *v489 = v487, v489[8] = v488 & 1, LOBYTE(v593) = -118, v490 = v592, v491 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v490) != 0) || (v493 = &v591[v590[142]], *v493 = v491, v493[8] = v492 & 1, LOBYTE(v593) = -117, v494 = v592, v495 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v494) != 0) || (v497 = &v591[v590[143]], *v497 = v495, v497[8] = v496 & 1, LOBYTE(v593) = -116, v498 = v592, v499 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v498) != 0) || (v501 = &v591[v590[144]], *v501 = v499, v501[8] = v500 & 1, LOBYTE(v593) = -115, v502 = v592, v503 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v502) != 0) || (v505 = &v591[v590[145]], *v505 = v503, v505[8] = v504 & 1, LOBYTE(v593) = -114, v506 = v592, v507 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v506) != 0) || (v509 = &v591[v590[146]], *v509 = v507, v509[8] = v508 & 1, LOBYTE(v593) = -113, v510 = v592, v511 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v510) != 0) || (v513 = &v591[v590[147]], *v513 = v511, v513[8] = v512 & 1, LOBYTE(v593) = -112, v514 = v592, v515 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v514) != 0) || (v591[v590[148]] = v515, LOBYTE(v593) = -111, v516 = v592, v517 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v516) != 0) || (v519 = &v591[v590[149]], *v519 = v517, v519[8] = v518 & 1, LOBYTE(v593) = -110, v520 = v592, v521 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v520) != 0) || (v523 = &v591[v590[150]], *v523 = v521, v523[8] = v522 & 1, LOBYTE(v593) = -109, v524 = v592, v525 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v524) != 0))
  {
    (*(v583 + 8))(v585, v584);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v19 = 1;
    LODWORD(v585) = 1;
    goto LABEL_158;
  }

  v527 = &v591[v590[151]];
  *v527 = v525;
  v527[1] = v526;
  LOBYTE(v593) = -108;
  v528 = v592;
  v529 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v592 = v528;
  if (v528 || (v531 = &v591[v590[152]], *v531 = v529, v531[8] = v530 & 1, LOBYTE(v593) = -107, v532 = v592, v533 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v532) != 0))
  {
    (*(v583 + 8))(v585, v584);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v19 = 1;
    LODWORD(v585) = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    v18 = v591;
  }

  else
  {
    v535 = &v591[v590[153]];
    *v535 = v533;
    v535[1] = v534;
    LOBYTE(v593) = -106;
    v536 = v592;
    v537 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v592 = v536;
    if (v536 || (v539 = &v591[v590[154]], *v539 = v537, v539[8] = v538 & 1, v601 = -105, v540 = v592, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v592 = v540) != 0))
    {
      (*(v583 + 8))(v585, v584);
      v24 = 0;
      v25 = 0;
      v19 = 1;
      LODWORD(v585) = 1;
      v20 = 1;
      v21 = 1;
      v22 = 1;
      v23 = 1;
      v18 = v591;
    }

    else
    {
      *&v591[v590[155]] = v593;
      LOBYTE(v593) = -104;
      v541 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v592 = 0;
      v542 = &v591[v590[156]];
      *v542 = v541;
      v542[8] = v543 & 1;
      LOBYTE(v593) = -103;
      v544 = v592;
      v545 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v592 = v544;
      if (v544 || (v547 = &v591[v590[157]], *v547 = v545, v547[8] = v546 & 1, LOBYTE(v593) = -102, v548 = v592, v549 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v548) != 0) || (v551 = &v591[v590[158]], *v551 = v549, v551[8] = v550 & 1, LOBYTE(v593) = -101, v552 = v592, v553 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), (v592 = v552) != 0))
      {
        (*(v583 + 8))(v585, v584);
        v25 = 0;
        v19 = 1;
        LODWORD(v585) = 1;
        v20 = 1;
        v21 = 1;
        v22 = 1;
        v23 = 1;
        v24 = 1;
        v18 = v591;
      }

      else
      {
        v555 = &v591[v590[159]];
        *v555 = v553;
        v555[1] = v554;
        LOBYTE(v593) = -100;
        v556 = v592;
        v557 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v592 = v556;
        if (!v556)
        {
          v559 = &v591[v590[160]];
          *v559 = v557;
          v559[8] = v558 & 1;
          LOBYTE(v593) = -99;
          v560 = v592;
          v561 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v592 = v560;
          if (!v560)
          {
            v591[v590[161]] = v561;
            LOBYTE(v593) = -98;
            v562 = v592;
            v563 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
            v592 = v562;
            if (!v562)
            {
              v565 = &v591[v590[162]];
              *v565 = v563;
              v565[8] = v564 & 1;
              LOBYTE(v593) = -97;
              v566 = v592;
              v567 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
              v592 = v566;
              if (!v566)
              {
                v568 = &v591[v590[163]];
                *v568 = v567;
                v568[1] = HIBYTE(v567) & 1;
                LOBYTE(v593) = -96;
                v569 = v592;
                v570 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
                v592 = v569;
                if (!v569)
                {
                  v572 = v570;
                  v573 = v571;
                  (*(v583 + 8))(v585, v584);
                  v574 = v591;
                  v575 = &v591[v590[164]];
                  *v575 = v572;
                  v575[8] = v573 & 1;
                  sub_1009B1098(v574, v580);
                  sub_100007BAC(v586);
                  return sub_1009B10FC(v574);
                }

                (*(v583 + 8))(v585, v584);
                sub_100007BAC(v586);
                v18 = v591;

                sub_100016590(*(v18 + 3), *(v18 + 4));
                v19 = 1;
                v20 = 1;
                v21 = 1;
                v22 = 1;
                v23 = 1;
                v24 = 1;
                v25 = 1;
                goto LABEL_24;
              }
            }
          }
        }

        (*(v583 + 8))(v585, v584);
        v19 = 1;
        LODWORD(v585) = 1;
        v20 = 1;
        v21 = 1;
        v22 = 1;
        v23 = 1;
        v24 = 1;
        v25 = 1;
        v18 = v591;
      }
    }
  }

LABEL_20:
  sub_100007BAC(v586);

  if (v577)
  {
    if (!v585)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_100016590(*(v18 + 3), *(v18 + 4));
    if ((v585 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

LABEL_24:

LABEL_4:
  result = (*(v588 + 8))(&v18[v587], v589);
  if (v19)
  {
    v27 = &v18[v590[64]];
    v28 = *(v27 + 5);
    v598 = *(v27 + 4);
    v599 = v28;
    v600 = *(v27 + 6);
    v29 = *(v27 + 1);
    v594 = *v27;
    v595 = v29;
    v30 = *(v27 + 3);
    v596 = *(v27 + 2);
    v597 = v30;
    result = sub_1009B0EF0(&v594);
    if (!v20)
    {
LABEL_6:
      if (!v21)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  if (!v21)
  {
LABEL_7:
    if (!v22)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:

  if (!v22)
  {
LABEL_8:
    if (!v23)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:

  if (!v23)
  {
LABEL_9:
    if (!v24)
    {
      goto LABEL_10;
    }

LABEL_17:

    if (!v25)
    {
      return result;
    }
  }

LABEL_16:

  if (v24)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (!v25)
  {
    return result;
  }
}

unint64_t sub_1009B0E9C()
{
  result = qword_1016B0BB8;
  if (!qword_1016B0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BB8);
  }

  return result;
}

uint64_t sub_1009B0EF0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADCE8, &qword_1013C53A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1009B0F58()
{
  result = qword_1016B0BC0;
  if (!qword_1016B0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BC0);
  }

  return result;
}

uint64_t sub_1009B0FAC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1009B1014()
{
  result = qword_1016AE290;
  if (!qword_1016AE290)
  {
    sub_1000BC580(&qword_101697E28, &qword_10138EA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE290);
  }

  return result;
}

uint64_t sub_1009B1098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfigurationResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009B10FC(uint64_t a1)
{
  v2 = type metadata accessor for ConfigurationResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1009B1158()
{
  result = qword_1016B0BC8;
  if (!qword_1016B0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0BC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x60)
  {
    goto LABEL_17;
  }

  if (a2 + 160 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 160) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 160;
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

      return (*a1 | (v4 << 8)) - 160;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 160;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA1;
  v8 = v6 - 161;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 160 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 160) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x60)
  {
    v4 = 0;
  }

  if (a2 > 0x5F)
  {
    v5 = ((a2 - 96) >> 8) + 1;
    *result = a2 - 96;
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
    *result = a2 - 96;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}
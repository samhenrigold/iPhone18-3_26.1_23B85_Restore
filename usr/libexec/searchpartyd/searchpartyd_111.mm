uint64_t sub_100C45A84()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B8F00);
  v1 = sub_1000076D4(v0, qword_1016B8F00);
  if (qword_101694DA8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BE08);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100C45B4C()
{
  result = qword_1016B91B0;
  if (!qword_1016B91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B91B0);
  }

  return result;
}

uint64_t sub_100C45BA0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BE08);
  sub_1000076D4(v0, qword_10177BE08);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100C45C3C(uint64_t a1)
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v12 - v6;
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  OS_dispatch_queue.sync<A>(execute:)();
  v8 = sub_101073524(v12[1]);

  if ((v8 * 60) >> 64 != (60 * v8) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  static Date.trustedNow.getter(v7);
  Date.timeIntervalSinceReferenceDate.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  v10 = Duration.milliseconds.getter();
  v11 = *(v2 + 8);
  v11(v5, v1);
  result = (v11)(v7, v1);
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!HIDWORD(v10))
  {
    return v10;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100C45E20(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(result + 192) = 1;
  return result;
}

unint64_t sub_100C45E3C()
{
  result = qword_1016B91B8;
  if (!qword_1016B91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B91B8);
  }

  return result;
}

double sub_100C45E90(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
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
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0x3000000000000000;
  *(a1 + 192) = 1;
  return result;
}

unint64_t sub_100C45ED8()
{
  result = qword_1016B91C0;
  if (!qword_1016B91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B91C0);
  }

  return result;
}

uint64_t sub_100C45FDC(uint64_t a1)
{
  if (*(a1 + 192))
  {
    v1 = 4;
  }

  else
  {
    v1 = 0;
  }

  v2 = (*(a1 + 168) >> 60) & 3 | v1;
  if (v2 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100C4600C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100C46054(uint64_t result)
{
  *(result + 168) |= 0x3000000000000000uLL;
  *(result + 192) = 0;
  return result;
}

uint64_t sub_100C46118(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100C46178(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL | 0x1000000000000000;
  *(result + 192) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for ProximityPairingExecutor.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProximityPairingExecutor.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100C462E4()
{
  result = qword_1016B91D8;
  if (!qword_1016B91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B91D8);
  }

  return result;
}

ValueMetadata *sub_100C46338(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        v1 = &type metadata for AirPodsLEInitiatePairingCommandPayload;
        sub_100391B40();
      }

      else if (a1 == 3)
      {
        v1 = &type metadata for ProximitySendPairingDataCommandPayload;
        sub_100C47978();
      }

      else
      {
        v1 = &type metadata for ProximityFinalizePairingCommandPayload;
        sub_100C47924();
      }

      return v1;
    }

    if (a1)
    {
      v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
      sub_100391B94();
      return v1;
    }

LABEL_11:
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
    return v1;
  }

  if (a1 <= 6u)
  {
    if (a1 == 5)
    {
      v1 = &type metadata for ProximitySendPairingStatusCommandPayload;
      sub_100C478D0();
    }

    else
    {
      v1 = &type metadata for AirPodsSWPairingCompleteCommandPayload;
      sub_100391A98();
    }
  }

  else
  {
    if (a1 == 7)
    {
      goto LABEL_11;
    }

    if (a1 == 8)
    {
      v1 = &type metadata for ProximityPairingStatsCommandPayload;
      sub_100C4787C();
    }

    else
    {
      v1 = &type metadata for UnpairCommandPayload;
      sub_10027EE90();
    }
  }

  return v1;
}

uint64_t sub_100C46430()
{
  v1 = *(v0 + 176);
  v9[10] = *(v0 + 160);
  v9[11] = v1;
  v10 = *(v0 + 192);
  v2 = *(v0 + 112);
  v9[6] = *(v0 + 96);
  v9[7] = v2;
  v3 = *(v0 + 144);
  v9[8] = *(v0 + 128);
  v9[9] = v3;
  v4 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v4;
  v5 = *(v0 + 80);
  v9[4] = *(v0 + 64);
  v9[5] = v5;
  v6 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v6;
  v7 = sub_100C45FDC(v9);
  if (v7 > 4)
  {
    if (v7 <= 6)
    {
      if (v7 == 5)
      {
        sub_10001F270(v9);
        return 6;
      }

      else
      {
        sub_10001F270(v9);
        return 8;
      }
    }

    else if (v7 == 7)
    {
      return 0;
    }

    else if (v7 == 8)
    {
      return 7;
    }

    else
    {
      return 9;
    }
  }

  else if (v7 <= 1)
  {
    if (v7)
    {
      sub_10001F270(v9);
      return 2;
    }

    else
    {
      sub_10001F270(v9);
      return 1;
    }
  }

  else if (v7 == 2)
  {
    sub_10001F270(v9);
    return 3;
  }

  else if (v7 == 3)
  {
    sub_10001F270(v9);
    return 4;
  }

  else
  {
    sub_10001F270(v9);
    return 5;
  }
}

void *sub_100C46554@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v87[10] = v1[10];
  v87[11] = v3;
  v88 = *(v1 + 192);
  v4 = v1[7];
  v87[6] = v1[6];
  v87[7] = v4;
  v5 = v1[9];
  v87[8] = v1[8];
  v87[9] = v5;
  v6 = v1[3];
  v87[2] = v1[2];
  v87[3] = v6;
  v7 = v1[5];
  v87[4] = v1[4];
  v87[5] = v7;
  v8 = v1[1];
  v87[0] = *v1;
  v87[1] = v8;
  v9 = sub_100C45FDC(v87);
  if (v9 > 4)
  {
    if (v9 <= 6)
    {
      if (v9 == 5)
      {
        v34 = sub_10001F270(v87);
        v35 = *v34;
        v36 = v34[1];
        a1[3] = &type metadata for AirPodsSWPairingCompleteCommandPayload;
        a1[4] = sub_100391A98();
        *a1 = v35;
        a1[1] = v36;
        v37 = v1[11];
        v84 = v1[10];
        v85 = v37;
        v86 = *(v1 + 192);
        v38 = v1[7];
        v80 = v1[6];
        v81 = v38;
        v39 = v1[9];
        v82 = v1[8];
        v83 = v39;
        v40 = v1[3];
        v76 = v1[2];
        v77 = v40;
        v41 = v1[5];
        v78 = v1[4];
        v79 = v41;
        v42 = v1[1];
        v74 = *v1;
        v75 = v42;
        v43 = sub_10001F270(&v74);
        return sub_100017D5C(*v43, *(v43 + 8));
      }

      else
      {
        v71 = sub_10001F270(v87);
        a1[3] = &type metadata for ProximityPairingStatsCommandPayload;
        a1[4] = sub_100C4787C();
        v72 = swift_allocObject();
        *a1 = v72;
        return memmove((v72 + 16), v71, 0xA8uLL);
      }
    }

    else
    {
      if (v9 == 7 || v9 == 8)
      {
        a1[3] = &type metadata for AccessoryGenericPayload;
        result = sub_10030FF74();
      }

      else
      {
        a1[3] = &type metadata for UnpairCommandPayload;
        result = sub_10027EE90();
      }

      a1[4] = result;
    }
  }

  else
  {
    if (v9 <= 1)
    {
      if (!v9)
      {
        v22 = sub_10001F270(v87);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v23 = swift_allocObject();
        *a1 = v23;
        v24 = v22[1];
        *(v23 + 16) = *v22;
        *(v23 + 32) = v24;
        v25 = v1[3];
        v76 = v1[2];
        v77 = v25;
        v26 = v1[1];
        v74 = *v1;
        v75 = v26;
        v27 = v1[7];
        v80 = v1[6];
        v81 = v27;
        v28 = v1[5];
        v78 = v1[4];
        v79 = v28;
        v86 = *(v1 + 192);
        v29 = v1[11];
        v84 = v1[10];
        v85 = v29;
        v30 = v1[9];
        v82 = v1[8];
        v83 = v30;
        v31 = sub_10001F270(&v74);
        v32 = v31[2];
        v33 = v31[3];
        sub_100017D5C(*v31, v31[1]);
        return sub_100017D5C(v32, v33);
      }

      v63 = sub_10001F270(v87);
      a1[3] = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      a1[4] = sub_100391B40();
      v64 = swift_allocObject();
      *a1 = v64;
      memmove((v64 + 16), v63, 0x50uLL);
      v65 = v1[11];
      v84 = v1[10];
      v85 = v65;
      v86 = *(v1 + 192);
      v66 = v1[7];
      v80 = v1[6];
      v81 = v66;
      v67 = v1[9];
      v82 = v1[8];
      v83 = v67;
      v68 = v1[3];
      v76 = v1[2];
      v77 = v68;
      v69 = v1[5];
      v78 = v1[4];
      v79 = v69;
      v70 = v1[1];
      v74 = *v1;
      v75 = v70;
      v18 = sub_10001F270(&v74);
      v19 = &unk_10169EAC0;
      v20 = &unk_10139E338;
    }

    else if (v9 == 2)
    {
      v44 = sub_10001F270(v87);
      a1[3] = &type metadata for ProximitySendPairingDataCommandPayload;
      a1[4] = sub_100C47978();
      v45 = swift_allocObject();
      *a1 = v45;
      memmove((v45 + 16), v44, 0xB0uLL);
      v46 = v1[11];
      v84 = v1[10];
      v85 = v46;
      v86 = *(v1 + 192);
      v47 = v1[7];
      v80 = v1[6];
      v81 = v47;
      v48 = v1[9];
      v82 = v1[8];
      v83 = v48;
      v49 = v1[3];
      v76 = v1[2];
      v77 = v49;
      v50 = v1[5];
      v78 = v1[4];
      v79 = v50;
      v51 = v1[1];
      v74 = *v1;
      v75 = v51;
      v18 = sub_10001F270(&v74);
      v19 = &qword_1016B91D0;
      v20 = &unk_1013E1340;
    }

    else if (v9 == 3)
    {
      v10 = sub_10001F270(v87);
      a1[3] = &type metadata for ProximityFinalizePairingCommandPayload;
      a1[4] = sub_100C47924();
      v11 = swift_allocObject();
      *a1 = v11;
      memmove((v11 + 16), v10, 0xC0uLL);
      v12 = v1[11];
      v84 = v1[10];
      v85 = v12;
      v86 = *(v1 + 192);
      v13 = v1[7];
      v80 = v1[6];
      v81 = v13;
      v14 = v1[9];
      v82 = v1[8];
      v83 = v14;
      v15 = v1[3];
      v76 = v1[2];
      v77 = v15;
      v16 = v1[5];
      v78 = v1[4];
      v79 = v16;
      v17 = v1[1];
      v74 = *v1;
      v75 = v17;
      v18 = sub_10001F270(&v74);
      v19 = &unk_1016B9220;
      v20 = &unk_1013E2498;
    }

    else
    {
      v52 = sub_10001F270(v87);
      a1[3] = &type metadata for ProximitySendPairingStatusCommandPayload;
      a1[4] = sub_100C478D0();
      v53 = swift_allocObject();
      *a1 = v53;
      v54 = v52[3];
      v56 = *v52;
      v55 = v52[1];
      v53[3] = v52[2];
      v53[4] = v54;
      v53[1] = v56;
      v53[2] = v55;
      v57 = v1[11];
      v84 = v1[10];
      v85 = v57;
      v86 = *(v1 + 192);
      v58 = v1[7];
      v80 = v1[6];
      v81 = v58;
      v59 = v1[9];
      v82 = v1[8];
      v83 = v59;
      v60 = v1[3];
      v76 = v1[2];
      v77 = v60;
      v61 = v1[5];
      v78 = v1[4];
      v79 = v61;
      v62 = v1[1];
      v74 = *v1;
      v75 = v62;
      v18 = sub_10001F270(&v74);
      v19 = &qword_1016B91C8;
      v20 = &qword_1013E2490;
    }

    return sub_1000D2A70(v18, &v73, v19, v20);
  }

  return result;
}

uint64_t sub_100C46A10(void *a1)
{
  v2 = type metadata accessor for Endianness();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v6 = sub_100C46430();
  LOWORD(v27) = word_1013E2552[v6];
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v3 + 8))(v5, v2);
  LOWORD(v27) = v39;
  sub_10015049C(v52, v53);
  v7 = v54;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v7)
  {
    if (v6 > 4u)
    {
      if (v6 > 6u)
      {
        if (v6 != 7)
        {
          if (v6 == 8)
          {
            sub_100C46554(&v15);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (!swift_dynamicCast())
            {
              goto LABEL_31;
            }

            v35 = v47;
            v36 = v48;
            *&v37 = v49;
            v31 = v43;
            v32 = v44;
            v33 = v45;
            v34 = v46;
            v27 = v39;
            v28 = v40;
            v29 = v41;
            v30 = v42;
            sub_10015049C(v52, v53);
            sub_1004A6D58();
          }

          else
          {
            sub_100C46554(&v39);
            sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
            if (!swift_dynamicCast())
            {
              goto LABEL_31;
            }

            sub_10015049C(v52, v53);
            sub_10027FBB8();
          }

LABEL_25:
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          return sub_100007BAC(v52);
        }

LABEL_14:
        sub_100C46554(&v39);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (!swift_dynamicCast())
        {
          goto LABEL_31;
        }

        sub_10015049C(v52, v53);
        sub_10030FB84();
        goto LABEL_25;
      }

      if (v6 == 5)
      {
        sub_100C46554(v51);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v27 = v39;
          v28 = v40;
          v29 = v41;
          v30 = v42;
          v15 = v39;
          v16 = v40;
          v17 = v41;
          v18 = v42;
          sub_10015049C(v52, v53);
          sub_100BB2730();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_100C47780(&v27);
          return sub_100007BAC(v52);
        }

        goto LABEL_31;
      }

      sub_100C46554(&v39);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_31;
      }

      v12 = v27;
      v39 = v27;
      sub_10015049C(v52, v53);
      sub_1003928F8();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      v11 = *(&v12 + 1);
      v10 = v12;
    }

    else
    {
      if (v6 > 1u)
      {
        if (v6 == 2)
        {
          sub_100C46554(v51);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v29 = v41;
            v30 = v42;
            v31 = v43;
            v27 = v39;
            v28 = v40;
            v17 = v41;
            v18 = v42;
            v19 = v43;
            v15 = v39;
            v16 = v40;
            sub_10015049C(v52, v53);
            sub_100392A9C();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_1001DAB9C(&v27);
            return sub_100007BAC(v52);
          }
        }

        else if (v6 == 3)
        {
          sub_100C46554(v51);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v35 = v47;
            v36 = v48;
            v37 = v49;
            v31 = v43;
            v32 = v44;
            v33 = v45;
            v34 = v46;
            v27 = v39;
            v28 = v40;
            v29 = v41;
            v30 = v42;
            v23 = v47;
            v24 = v48;
            v25 = v49;
            v19 = v43;
            v20 = v44;
            v21 = v45;
            v22 = v46;
            v15 = v39;
            v16 = v40;
            v17 = v41;
            v18 = v42;
            sub_10015049C(v52, v53);
            sub_100C477D4();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_100C47828(&v27);
            return sub_100007BAC(v52);
          }
        }

        else
        {
          sub_100C46554(v51);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v35 = v47;
            v36 = v48;
            v37 = v49;
            v38 = v50;
            v31 = v43;
            v32 = v44;
            v33 = v45;
            v34 = v46;
            v27 = v39;
            v28 = v40;
            v29 = v41;
            v30 = v42;
            v23 = v47;
            v24 = v48;
            v25 = v49;
            v26 = v50;
            v19 = v43;
            v20 = v44;
            v21 = v45;
            v22 = v46;
            v15 = v39;
            v16 = v40;
            v17 = v41;
            v18 = v42;
            sub_10015049C(v52, v53);
            sub_100BB1EAC();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            sub_100C460C4(&v27);
            return sub_100007BAC(v52);
          }
        }

LABEL_31:
        sub_100C4772C();
        swift_allocError();
        *v13 = 0;
        swift_willThrow();
        return sub_100007BAC(v52);
      }

      if (!v6)
      {
        goto LABEL_14;
      }

      sub_100C46554(&v39);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (!swift_dynamicCast())
      {
        goto LABEL_31;
      }

      v8 = v27;
      v9 = v28;
      v39 = v27;
      v40 = v28;
      sub_10015049C(v52, v53);
      sub_100392AF0();
      dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
      sub_100016590(v8, *(&v8 + 1));
      v11 = *(&v9 + 1);
      v10 = v9;
    }

    sub_100016590(v10, v11);
  }

  return sub_100007BAC(v52);
}

__n128 sub_100C47370@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100C480B0(a2, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a1 + 160) = v10[10];
    *(a1 + 176) = v5;
    *(a1 + 192) = v11;
    v6 = v10[7];
    *(a1 + 96) = v10[6];
    *(a1 + 112) = v6;
    v7 = v10[9];
    *(a1 + 128) = v10[8];
    *(a1 + 144) = v7;
    v8 = v10[3];
    *(a1 + 32) = v10[2];
    *(a1 + 48) = v8;
    v9 = v10[5];
    *(a1 + 64) = v10[4];
    *(a1 + 80) = v9;
    result = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_100C4740C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B91E0);
  v1 = sub_1000076D4(v0, qword_1016B91E0);
  if (qword_101694DB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BE78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C474D4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BE78);
  sub_1000076D4(v0, qword_10177BE78);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C47554(uint64_t a1)
{
  v1 = (*(a1 + 168) >> 60) & 3 | (4 * (*(a1 + 192) & 1));
  if (v1 == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return v1;
  }
}

__n128 sub_100C47578(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100C475BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3F9 && *(a1 + 193))
  {
    return (*a1 + 1017);
  }

  v3 = ((*(a1 + 168) >> 60) & 3 | (4 * *(a1 + 192))) ^ 0x3FF;
  if (v3 >= 0x3F8)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100C47610(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3F8)
  {
    *(result + 184) = 0;
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
    *(result + 192) = 0;
    *result = a2 - 1017;
    if (a3 >= 0x3F9)
    {
      *(result + 193) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3F9)
    {
      *(result + 193) = 0;
    }

    if (a2)
    {
      *(result + 128) = 0u;
      *(result + 144) = 0u;
      *(result + 96) = 0u;
      *(result + 112) = 0u;
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 160) = 0;
      *(result + 168) = (-a2 & 3) << 60;
      *(result + 176) = 0;
      *(result + 184) = 0;
      *(result + 192) = -a2 >> 2;
    }
  }

  return result;
}

uint64_t sub_100C476B0(uint64_t result, unsigned int a2)
{
  if (a2 < 7)
  {
    *(result + 168) = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
    *(result + 192) = a2 > 3;
  }

  else
  {
    *result = a2 - 7;
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
    *(result + 176) = 0;
    *(result + 184) = 0;
    *(result + 168) = 0x3000000000000000;
    *(result + 192) = 1;
  }

  return result;
}

unint64_t sub_100C4772C()
{
  result = qword_1016B91F8;
  if (!qword_1016B91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B91F8);
  }

  return result;
}

unint64_t sub_100C477D4()
{
  result = qword_1016B9200;
  if (!qword_1016B9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9200);
  }

  return result;
}

unint64_t sub_100C4787C()
{
  result = qword_1016B9208;
  if (!qword_1016B9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9208);
  }

  return result;
}

unint64_t sub_100C478D0()
{
  result = qword_1016B9210;
  if (!qword_1016B9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9210);
  }

  return result;
}

unint64_t sub_100C47924()
{
  result = qword_1016B9218;
  if (!qword_1016B9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9218);
  }

  return result;
}

unint64_t sub_100C47978()
{
  result = qword_1016B9228;
  if (!qword_1016B9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9228);
  }

  return result;
}

uint64_t sub_100C479CC(unsigned __int16 a1)
{
  if (a1 > 0x104u)
  {
    if (a1 <= 0x10Au)
    {
      if (a1 == 261)
      {
        return 7;
      }

      if (a1 == 262)
      {
        return 8;
      }
    }

    else
    {
      switch(a1)
      {
        case 0x10Bu:
          return 0;
        case 0x10Cu:
          return 1;
        case 0x204u:
          return 9;
      }
    }
  }

  else if (a1 <= 0x101u)
  {
    if (a1 == 256)
    {
      return 2;
    }

    if (a1 == 257)
    {
      return 3;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x102u:
        return 4;
      case 0x103u:
        return 5;
      case 0x104u:
        return 6;
    }
  }

  return 10;
}

void sub_100C47A90(unsigned __int8 a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100C46338(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 > 4u)
    {
      if (a1 <= 6u)
      {
        if (a1 == 5)
        {
          sub_10001F280(a2, v41);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v28 = v16;
            v29 = v17;
            v30 = v18;
            v31 = v19;
            sub_100C4851C(&v28);
            goto LABEL_31;
          }
        }

        else
        {
          sub_10001F280(a2, &v16);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v28 = v14;
            sub_100C45E20(&v28);
            goto LABEL_31;
          }
        }
      }

      else if (a1 == 7)
      {
        sub_10001F280(a2, &v28);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          sub_100C45E90(&v42);
          goto LABEL_32;
        }
      }

      else
      {
        if (a1 == 8)
        {
          sub_10001F280(a2, v41);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v36 = v24;
            v37 = v25;
            *&v38 = v26;
            v32 = v20;
            v33 = v21;
            v34 = v22;
            v35 = v23;
            v28 = v16;
            v29 = v17;
            v30 = v18;
            v31 = v19;
            sub_100C48500(&v28);
            goto LABEL_31;
          }

          goto LABEL_33;
        }

        sub_10001F280(a2, &v28);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          sub_100C484B4(&v42);
          goto LABEL_32;
        }
      }
    }

    else
    {
      if (a1 > 1u)
      {
        if (a1 == 2)
        {
          sub_10001F280(a2, v41);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v30 = v18;
            v31 = v19;
            v32 = v20;
            v28 = v16;
            v29 = v17;
            sub_100C46178(&v28);
            goto LABEL_31;
          }
        }

        else if (a1 == 3)
        {
          sub_10001F280(a2, v41);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v36 = v24;
            v37 = v25;
            v38 = v26;
            v32 = v20;
            v33 = v21;
            v34 = v22;
            v35 = v23;
            v28 = v16;
            v29 = v17;
            v30 = v18;
            v31 = v19;
            sub_100C48534(&v28);
LABEL_31:
            v52 = v38;
            v53 = v39;
            v54 = v40;
            v48 = v34;
            v49 = v35;
            v50 = v36;
            v51 = v37;
            v44 = v30;
            v45 = v31;
            v46 = v32;
            v47 = v33;
            v42 = v28;
            v43 = v29;
            goto LABEL_32;
          }
        }

        else
        {
          sub_10001F280(a2, v41);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            v36 = v24;
            v37 = v25;
            v38 = v26;
            v39 = v27;
            v32 = v20;
            v33 = v21;
            v34 = v22;
            v35 = v23;
            v28 = v16;
            v29 = v17;
            v30 = v18;
            v31 = v19;
            sub_100C46054(&v28);
            goto LABEL_31;
          }
        }

        goto LABEL_33;
      }

      if (a1)
      {
        sub_10001F280(a2, &v16);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v28 = v14;
          v29 = v15;
          sub_100C4854C(&v28);
          goto LABEL_31;
        }
      }

      else
      {
        sub_10001F280(a2, &v28);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          sub_100C48560(&v42);
LABEL_32:
          v7 = v53;
          *(a3 + 160) = v52;
          *(a3 + 176) = v7;
          *(a3 + 192) = v54;
          v8 = v49;
          *(a3 + 96) = v48;
          *(a3 + 112) = v8;
          v9 = v51;
          *(a3 + 128) = v50;
          *(a3 + 144) = v9;
          v10 = v45;
          *(a3 + 32) = v44;
          *(a3 + 48) = v10;
          v11 = v47;
          *(a3 + 64) = v46;
          *(a3 + 80) = v11;
          v12 = v43;
          *a3 = v42;
          *(a3 + 16) = v12;
          return;
        }
      }
    }

LABEL_33:
    sub_100C4772C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    sub_100007BAC(a2);
    return;
  }

  __break(1u);
}

uint64_t sub_100C480B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v39 = a1;
  sub_1000035D0(a1, v8);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v42, v42[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v2)
  {
    v9 = v39;
  }

  else
  {
    v10 = v38;
    v45 = v40[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v5 + 8))(v7, v4);
    v11 = v41[0];
    v12 = sub_100C479CC(v41[0]);
    if (v12 != 10)
    {
      v25 = v12;
      v26 = sub_100C46338(v12);
      v28 = v27;
      v29 = v39;
      sub_10001F280(v39, v40);
      v41[3] = v26;
      v41[4] = v28;
      sub_1000280DC(v41);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v41, v40);
      sub_100C47A90(v25, v40, v43);
      sub_100007BAC(v41);
      sub_100007BAC(v42);
      result = sub_100007BAC(v29);
      v31 = v43[11];
      *(v10 + 10) = v43[10];
      *(v10 + 11) = v31;
      *(v10 + 192) = v44;
      v32 = v43[7];
      *(v10 + 6) = v43[6];
      *(v10 + 7) = v32;
      v33 = v43[9];
      *(v10 + 8) = v43[8];
      *(v10 + 9) = v33;
      v34 = v43[3];
      *(v10 + 2) = v43[2];
      *(v10 + 3) = v34;
      v35 = v43[5];
      *(v10 + 4) = v43[4];
      *(v10 + 5) = v35;
      v36 = v43[1];
      *v10 = v43[0];
      *(v10 + 1) = v36;
      return result;
    }

    v9 = v39;
    if (qword_101694DB0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000076D4(v13, qword_1016B91E0);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v41[0] = v38;
      *v16 = 136446210;
      LOWORD(v40[0]) = v11;
      v17 = FixedWidthInteger.data.getter();
      v19 = v18;
      v20 = Data.hexString.getter();
      v22 = v21;
      sub_100016590(v17, v19);
      v23 = sub_1000136BC(v20, v22, v41);

      *(v16 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Invalid opcode: %{public}s", v16, 0xCu);
      sub_100007BAC(v38);
    }

    sub_100C4772C();
    swift_allocError();
    *v24 = 1;
    swift_willThrow();
  }

  sub_100007BAC(v42);
  return sub_100007BAC(v9);
}

double sub_100C484B4(uint64_t a1)
{
  *a1 = 2;
  result = 0.0;
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
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0x3000000000000000;
  *(a1 + 192) = 1;
  return result;
}

uint64_t sub_100C48500(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(result + 192) = 1;
  return result;
}

uint64_t sub_100C4851C(uint64_t result)
{
  *(result + 168) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 192) = 1;
  return result;
}

uint64_t sub_100C48534(uint64_t result)
{
  *(result + 168) = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL | 0x2000000000000000;
  *(result + 192) = 0;
  return result;
}

uint64_t sub_100C4854C(uint64_t result)
{
  *(result + 168) &= 0xCFFFFFFFFFFFFFFFLL;
  *(result + 192) = 0;
  return result;
}

double sub_100C48560(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3000000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 1;
  return result;
}

unint64_t sub_100C485A4()
{
  result = qword_1016B9230;
  if (!qword_1016B9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9230);
  }

  return result;
}

uint64_t sub_100C485F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MACAddress();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100C486B8, v1, 0);
}

uint64_t sub_100C486B8()
{
  v0[7] = *(v0[3] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[8] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = swift_task_alloc();
  v0[9] = v8;
  v9 = type metadata accessor for CentralManager();
  v10 = sub_100C4CAA0(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v8 = v0;
  v8[1] = sub_100C488A0;

  return CentralManagerProtocol.await(states:)(v5, v9, v10);
}

uint64_t sub_100C488A0()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100C48F38;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100C489C8;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C489C8()
{
  v23 = v0;
  if (qword_101694DC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016B9238);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000013, 0x800000010136FCF0, &v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446210;
    sub_100C4CAA0(&qword_1016A4210, 255, &type metadata accessor for MACAddress, &protocol conformance descriptor for MACAddress);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Retrieving peripheral matching macAddress: %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:) + async function pointer to dispatch thunk of CentralManager.retrievePeripheral(macAddress:));
  v18 = swift_task_alloc();
  v0[11] = v18;
  *v18 = v0;
  v18[1] = sub_100C48D08;
  v19 = v0[2];

  return v21(v19);
}

uint64_t sub_100C48D08(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 24);

    return _swift_task_switch(sub_100C48E58, v7, 0);
  }
}

uint64_t sub_100C48E58()
{
  v1 = *(v0 + 96);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    sub_100C4CA4C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100C48F38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C48FA4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for UUID();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697250, &unk_10138BDB0);
  v2[14] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0);
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for Peripheral.ConnectionOptions();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697260, &unk_10138BDC0);
  v2[19] = swift_task_alloc();
  sub_1000BC4D4(&qword_101697270, &qword_10138BDD0);
  v2[20] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_100C49270, v1, 0);
}

uint64_t sub_100C49270()
{
  v0[24] = *(v0[7] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[25] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = swift_task_alloc();
  v0[26] = v8;
  v9 = type metadata accessor for CentralManager();
  v10 = sub_100C4CAA0(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v8 = v0;
  v8[1] = sub_100C49458;

  return CentralManagerProtocol.await(states:)(v5, v9, v10);
}

uint64_t sub_100C49458()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_100C4AE94;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_100C49580;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C49580()
{
  v15 = v0;
  if (qword_101694DC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[28] = sub_1000076D4(v1, qword_1016B9238);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0xD000000000000018, 0x800000010136FCD0, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v9 = swift_allocObject();
  v0[29] = v9;
  *(v9 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v10 = *(v7 + 8);
  v0[30] = v10;
  v0[31] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v13 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v11 = swift_task_alloc();
  v0[32] = v11;
  *v11 = v0;
  v11[1] = sub_100C497E0;

  return v13(v9);
}

uint64_t sub_100C497E0(uint64_t a1)
{
  v3 = *v2;
  v3[33] = a1;
  v3[34] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_100C4AF64;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_100C49908;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C49908()
{
  v43 = v0;
  v1 = v0[33];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v38 = v0[30];
      v26 = v0[23];
      v27 = v0[21];
      v29 = v0[9];
      v28 = v0[10];
      v41 = v0[8];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42[0] = v31;
      *v30 = 136446210;
      Peripheral.id.getter();
      Identifier.id.getter();
      v38(v26, v27);
      sub_100C4CAA0(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v29 + 8))(v28, v41);
      v35 = sub_1000136BC(v32, v34, v42);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v24, v25, "Missing peripheral for %{public}s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    sub_100C4CA4C();
    swift_allocError();
    *v36 = 1;
    swift_willThrow();

    v37 = v0[1];

    return v37();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[33] + 32);
  }

  v0[35] = v3;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42[0] = v7;
    *v6 = 136315138;
    v0[5] = v3;
    type metadata accessor for Peripheral();
    sub_100C4CAA0(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, v42);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connecting to peripheral: %s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v11 = v0[20];
  v39 = v0[19];
  v12 = v0[15];
  v13 = v0[14];
  v14 = enum case for ConnectUseCase.findMyPair(_:);
  v15 = type metadata accessor for ConnectUseCase();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v11, v14, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[2] = v17;
  sub_100C4CAA0(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions, &protocol conformance descriptor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_100BAFD1C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = type metadata accessor for LongTermKey();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v20 = type metadata accessor for Peripheral.Options();
  (*(*(v20 - 8) + 56))(v39, 0, 1, v20);
  v40 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
  v21 = swift_task_alloc();
  v0[36] = v21;
  *v21 = v0;
  v21[1] = sub_100C49FFC;
  v22 = v0[19];
  v23 = v0[20];

  return v40(v23, v22);
}

uint64_t sub_100C49FFC()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = v2[20];
  v4 = v2[19];
  v5 = v2[7];
  sub_10000B3A8(v4, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v3, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v6 = sub_100C4B034;
  }

  else
  {
    v6 = sub_100C4A180;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C4A180()
{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[35];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v0[4] = v3;
    type metadata accessor for Peripheral();
    sub_100C4CAA0(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Connected to peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v12 = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
  v9 = swift_task_alloc();
  v0[38] = v9;
  *v9 = v0;
  v9[1] = sub_100C4A39C;
  v10 = v0[13];

  return v12(v10);
}

uint64_t sub_100C4A39C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[39] = a1;
  v4[40] = v1;

  v5 = v3[13];
  v6 = v3[12];
  v7 = v3[11];
  v8 = v3[7];
  (*(v6 + 8))(v5, v7);
  if (v1)
  {
    v9 = sub_100C4B104;
  }

  else
  {
    v9 = sub_100C4A520;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100C4A520(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Discovered FindMy service", v4, 2u);
  }

  v5 = sub_100C4CAA0(&qword_1016972A8, 255, &type metadata accessor for Service, &protocol conformance descriptor for Service);
  v1[41] = v5;
  ObjectType = swift_getObjectType();
  v1[42] = ObjectType;

  v7 = swift_task_alloc();
  v1[43] = v7;
  *v7 = v1;
  v7[1] = sub_100C4A698;

  return dispatch thunk of ServiceProtocol.discover(characteristicIdentifiers:)(0, ObjectType, v5);
}

uint64_t sub_100C4A698(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = *(v4 + 56);

    v6 = sub_100C4AA70;
    v7 = v5;
  }

  else
  {
    *(v4 + 360) = a1;
    v6 = sub_100C4A7D8;
    v7 = 0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100C4A7D8()
{
  v1 = v0[7];
  swift_getAssociatedTypeWitness();
  v0[46] = sub_1000BC4D4(&qword_1016B7500, &qword_1013DC4D8);
  v0[47] = _arrayForceCast<A, B>(_:)();

  return _swift_task_switch(sub_100C4A8A8, v1, 0);
}

uint64_t sub_100C4A8A8()
{
  v13 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12 = v4;
    *v3 = 136315138;
    v5 = Array.description.getter();
    v7 = v6;

    v8 = sub_1000136BC(v5, v7, &v12);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Discovered Pairing characteristic %s.", v3, 0xCu);
    sub_100007BAC(v4);
  }

  else
  {
  }

  v11 = (&async function pointer to dispatch thunk of Peripheral.pair() + async function pointer to dispatch thunk of Peripheral.pair());
  v9 = swift_task_alloc();
  *(v0 + 384) = v9;
  *v9 = v0;
  v9[1] = sub_100C4AB4C;

  return v11();
}

uint64_t sub_100C4AA70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4AB4C()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_100C4B1D4;
  }

  else
  {
    v4 = sub_100C4AC78;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C4AC78()
{
  v14 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[35];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    v0[3] = v3;
    type metadata accessor for Peripheral();
    sub_100C4CAA0(&qword_1016972D0, 255, &type metadata accessor for Peripheral, &protocol conformance descriptor for Peripheral);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = sub_1000136BC(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Paired peripheral: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  else
  {
  }

  v9 = v0[1];
  v10 = v0[41];
  v11 = v0[39];

  return v9(v11, v10);
}

uint64_t sub_100C4AE94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4AF64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4B034()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4B104()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4B1D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4B2B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_10169E750, &unk_1013DC4B0);
  v2[7] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C4B410, v1, 0);
}

uint64_t sub_100C4B410()
{
  v0[11] = *(v0[3] + 112);
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[12] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = type metadata accessor for CentralManager();
  v10 = sub_100C4CAA0(&unk_1016C1160, 255, &type metadata accessor for CentralManager, &protocol conformance descriptor for CentralManager);
  *v8 = v0;
  v8[1] = sub_100C4B5F8;

  return CentralManagerProtocol.await(states:)(v5, v9, v10);
}

uint64_t sub_100C4B5F8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_100C4C1D8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_100C4B720;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C4B720()
{
  v15 = v0;
  if (qword_101694DC8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[15] = sub_1000076D4(v1, qword_1016B9238);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000136BC(0x5F28726961706E75, 0xEA0000000000293ALL, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s CentralManager has powered on", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v9 = swift_allocObject();
  v0[16] = v9;
  *(v9 + 16) = xmmword_101385D80;
  Peripheral.id.getter();
  Identifier.id.getter();
  v10 = *(v7 + 8);
  v0[17] = v10;
  v0[18] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v8);
  v13 = (&async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:) + async function pointer to dispatch thunk of CentralManager.retrievePeripherals(identifiers:));
  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_100C4B980;

  return v13(v9);
}

uint64_t sub_100C4B980(uint64_t a1)
{
  v3 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v4 = v3[3];
    v5 = sub_100C4C260;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_100C4BAA8;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100C4BAA8()
{
  v26 = v0;
  v1 = v0[20];
  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v22 = v0[17];
      v10 = v0[10];
      v11 = v0[8];
      v13 = v0[5];
      v12 = v0[6];
      v24 = v0[4];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136446210;
      Peripheral.id.getter();
      Identifier.id.getter();
      v22(v10, v11);
      sub_100C4CAA0(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v16 = dispatch thunk of CustomStringConvertible.description.getter();
      v18 = v17;
      (*(v13 + 8))(v12, v24);
      v19 = sub_1000136BC(v16, v18, &v25);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "Missing peripheral for %{public}s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    sub_100C4CA4C();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[20] + 32);
  }

  v0[22] = v3;
  v4 = v0[7];

  v5 = type metadata accessor for Peripheral.DisconnectionOptions();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v23 = (&async function pointer to dispatch thunk of Peripheral.cancelConnection(options:) + async function pointer to dispatch thunk of Peripheral.cancelConnection(options:));
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_100C4BE4C;
  v7 = v0[7];

  return v23(v7);
}

uint64_t sub_100C4BE4C()
{
  v2 = *v1;
  v3 = *v1;
  v2[24] = v0;

  v4 = v2[7];
  if (v0)
  {
    v5 = v2[3];
    sub_10000B3A8(v4, &qword_10169E750, &unk_1013DC4B0);

    return _swift_task_switch(sub_100C4C2E8, v5, 0);
  }

  else
  {
    sub_10000B3A8(v4, &qword_10169E750, &unk_1013DC4B0);
    v8 = (&async function pointer to dispatch thunk of Peripheral.unpair() + async function pointer to dispatch thunk of Peripheral.unpair());
    v6 = swift_task_alloc();
    v2[25] = v6;
    *v6 = v3;
    v6[1] = sub_100C4C020;

    return v8();
  }
}

uint64_t sub_100C4C020()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100C4C370;
  }

  else
  {
    v4 = sub_100C4C14C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C4C14C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4C1D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4C260()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4C2E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4C370()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4C4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ProximityPeripheralProvider();
  *v8 = v4;
  v8[1] = sub_100014650;

  return PairingPeripheralProvider.getPeripheral(for:)(a1, a2, v9, a4);
}

uint64_t sub_100C4C5C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF6A4;

  return sub_100C485F8(a2);
}

uint64_t sub_100C4C658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ProximityPeripheralProvider();
  *v10 = v5;
  v10[1] = sub_100014744;

  return PairingPeripheralProvider.pair<A>(_:)(a1, a2, v11, a3, a5);
}

uint64_t sub_100C4C724(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100BAF918;

  return sub_100C48FA4(v3);
}

uint64_t sub_100C4C7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for ProximityPeripheralProvider();
  *v6 = v3;
  v6[1] = sub_100014744;

  return PairingPeripheralProvider.unpair(_:)(a1, v7, a3);
}

uint64_t sub_100C4C870(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C4B2B0(v2);
}

uint64_t sub_100C4C904()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BE90);
  sub_1000076D4(v0, qword_10177BE90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C4C984()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B9238);
  v1 = sub_1000076D4(v0, qword_1016B9238);
  if (qword_101694DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BE90);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100C4CA4C()
{
  result = qword_1016B9318;
  if (!qword_1016B9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9318);
  }

  return result;
}

uint64_t sub_100C4CAA0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100C4CAFC()
{
  result = qword_1016B9320;
  if (!qword_1016B9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9320);
  }

  return result;
}

__n128 sub_100C4CB50(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100C4CB84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 176))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100C4CBD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 168) = 0;
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
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100C4CC64(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v18 = *v1;
  v5 = *v1;
  sub_10015049C(v6, v7);
  sub_1001022C4(&v18, v4);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  if (!v2)
  {
    sub_100016590(v5, *(&v5 + 1));
    v17 = v1[2];
    v5 = v1[2];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v17, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v16 = v1[4];
    v5 = v1[4];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v16, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v15 = v1[5];
    v5 = v1[5];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v15, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v14 = v1[1];
    v5 = v1[1];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v14, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v13 = v1[3];
    v5 = v1[3];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v13, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v12 = v1[6];
    v5 = v1[6];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v12, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v11 = v1[7];
    v5 = v1[7];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v11, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v10 = v1[8];
    v5 = v1[8];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v10, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v9 = v1[9];
    v5 = v1[9];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v9, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v5, *(&v5 + 1));
    v8 = v1[10];
    v5 = v1[10];
    sub_10015049C(v6, v7);
    sub_1001022C4(&v8, v4);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  }

  sub_100016590(v5, *(&v5 + 1));
  return sub_100007BAC(v6);
}

__n128 sub_100C4D0FC@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100C4D1FC(a2, v9);
  if (!v2)
  {
    v5 = v9[9];
    *(a1 + 128) = v9[8];
    *(a1 + 144) = v5;
    *(a1 + 160) = v9[10];
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

unint64_t sub_100C4D178(uint64_t a1)
{
  *(a1 + 8) = sub_100C4D1A8();
  result = sub_100C477D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100C4D1A8()
{
  result = qword_1016B9328;
  if (!qword_1016B9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9328);
  }

  return result;
}

uint64_t sub_100C4D1FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Endianness();
  __chkstk_darwin(v5 - 8);
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(&v86, v87);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    goto LABEL_8;
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(&v86, v87);
  v83 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v88 = v10;
  sub_10015049C(&v86, v87);
  v81 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v82 = v11;
  sub_10015049C(&v86, v87);
  v79 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v80 = v12;
  sub_10015049C(&v86, v87);
  v77 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v78 = v13;
  sub_10015049C(&v86, v87);
  v14 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = v15;
  v84 = v77;
  v85 = v78;
  sub_1000E0A3C();
  v17 = DataProtocol.intValue.getter();
  v19 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v18 = 20 * v19;
  if ((v19 * 20) >> 64 != (20 * v19) >> 63)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v73 = v14;
  v74 = v16;
  v75 = Data.subdata(in:)();
  v76 = v20;
  sub_10015049C(&v86, v87);
  v71 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v72 = v21;
  sub_10015049C(&v86, v87);
  v69 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v70 = v22;
  sub_10015049C(&v86, v87);
  v23 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v25 = v24;
  sub_100017D5C(v23, v24);
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.init(data:ofEndianness:)();
  if (BYTE2(v84) == 1)
  {
    v26 = type metadata accessor for BinaryEncodingError();
    sub_100205404();
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for BinaryEncodingError.encodingError(_:), v26);
    swift_willThrow();
    sub_100016590(v23, v25);
    sub_100016590(v69, v70);
    sub_100016590(v71, v72);
    sub_100016590(v75, v76);
    sub_100016590(v73, v74);
    sub_100016590(v77, v78);
    sub_100016590(v79, v80);
    sub_100016590(v81, v82);
    sub_100016590(v83, v88);
    sub_100016590(v8, v9);
LABEL_8:
    sub_100007BAC(&v86);
    return sub_100007BAC(a1);
  }

  v67 = v23;
  v68 = v25;
  sub_100017D5C(v69, v70);
  sub_10002EA98(v84, v69, v70, &v84);
  v65 = v84;
  v66 = v85;
  sub_10015049C(&v86, v87);
  v63 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v64 = v28;
  sub_10015049C(&v86, v87);
  v29 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v31 = v30;
  v84 = v29;
  v85 = v30;
  v32 = DataProtocol.intValue.getter();
  sub_100016590(v29, v31);
  sub_100017D5C(v63, v64);
  sub_10002EA98(v32, v63, v64, &v84);
  v61 = v84;
  v62 = v85;
  sub_10015049C(&v86, v87);
  v59 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v60 = v33;
  sub_10015049C(&v86, v87);
  v34 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v36 = v35;
  v84 = v34;
  v85 = v35;
  v37 = DataProtocol.intValue.getter();
  sub_100016590(v34, v36);
  sub_100017D5C(v59, v60);
  sub_10002EA98(v37, v59, v60, &v84);
  v57 = v84;
  v58 = v85;
  sub_10015049C(&v86, v87);
  v55 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v56 = v38;
  sub_10015049C(&v86, v87);
  v17 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
LABEL_12:
  v40 = v17;
  v41 = v18;
  v84 = v17;
  v85 = v18;
  v42 = DataProtocol.intValue.getter();
  sub_100016590(v40, v41);
  sub_10002EA98(v42, v55, v56, &v84);
  sub_100016590(v73, v74);
  sub_100016590(v59, v60);
  sub_100016590(v63, v64);
  sub_100016590(v69, v70);
  result = sub_100016590(v67, v68);
  v43 = v84;
  v44 = v85;
  v45 = v9 >> 62;
  if ((v9 >> 62) <= 1)
  {
    if (!v45)
    {
      v46 = BYTE6(v9);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (v45 != 2)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v47 = *(v8 + 16);
  v48 = *(v8 + 24);
  v49 = __OFSUB__(v48, v47);
  v46 = v48 - v47;
  if (v49)
  {
    __break(1u);
LABEL_19:
    LODWORD(v46) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v46 = v46;
  }

LABEL_21:
  if (v46 != 32)
  {
    goto LABEL_35;
  }

  v50 = v78 >> 62;
  if ((v78 >> 62) <= 1)
  {
    if (!v50)
    {
      v51 = BYTE6(v78);
      goto LABEL_31;
    }

LABEL_29:
    LODWORD(v51) = HIDWORD(v77) - v77;
    if (!__OFSUB__(HIDWORD(v77), v77))
    {
      v51 = v51;
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (v50 != 2)
  {
    goto LABEL_36;
  }

  v53 = *(v77 + 16);
  v52 = *(v77 + 24);
  v49 = __OFSUB__(v52, v53);
  v51 = v52 - v53;
  if (v49)
  {
    __break(1u);
    goto LABEL_29;
  }

LABEL_31:
  if (v51 == 1)
  {
    sub_100007BAC(&v86);
    result = sub_100007BAC(a1);
    *a2 = v8;
    a2[1] = v9;
    a2[2] = v77;
    a2[3] = v78;
    v54 = v88;
    a2[4] = v83;
    a2[5] = v54;
    a2[6] = v75;
    a2[7] = v76;
    a2[8] = v81;
    a2[9] = v82;
    a2[10] = v79;
    a2[11] = v80;
    a2[12] = v71;
    a2[13] = v72;
    a2[14] = v65;
    a2[15] = v66;
    a2[16] = v61;
    a2[17] = v62;
    a2[18] = v57;
    a2[19] = v58;
    a2[20] = v43;
    a2[21] = v44;
    return result;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t *sub_100C4DB3C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for HashAlgorithm();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 60 == 15)
  {
    sub_100C2A500();
    swift_allocError();
    *v12 = 11;
    swift_willThrow();
  }

  else
  {
    v26 = v9;
    sub_100017D5C(a2, a3);
    v13 = sub_100A7491C(a2, a3);
    if (v3)
    {

      sub_100C2A500();
      swift_allocError();
      *v15 = 2;
      swift_willThrow();
      sub_100006654(a2, a3);
    }

    else
    {
      v16 = v13;
      v17 = v14;
      sub_100017D5C(v13, v14);
      v24 = v17;
      sub_10049613C(v16, v17, v25);
      v19 = v25[0];
      v22 = v25[1];
      v23 = v25[0];
      a1[3] = &type metadata for CollaborativeKeyGen.v1.C2;
      a1[4] = sub_1001023A0();
      *a1 = v19;
      v20 = v22;
      a1[1] = v22;
      (*(v8 + 104))(v11, enum case for HashAlgorithm.sha256(_:), v26);
      sub_100017D5C(v23, v20);
      a1 = Data.hash(algorithm:)();
      sub_100006654(a2, a3);
      sub_100016590(v23, v22);
      sub_100016590(v16, v24);
      (*(v8 + 8))(v11, v26);
    }
  }

  return a1;
}

uint64_t sub_100C4DDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C4DEBC, 0, 0);
}

uint64_t sub_100C4DEBC()
{
  sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  AsyncThrowingStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100C4DF8C;
  v2 = *(v0 + 48);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, 0, 0, v2, v0 + 32);
}

uint64_t sub_100C4DF8C()
{

  if (v0)
  {
    v1 = sub_100C4E32C;
  }

  else
  {
    v1 = sub_100C4E09C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100C4E09C()
{
  v16 = v0;
  v2 = v0[2];
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_101694DD0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_1016B9330);
    sub_100017D5C(v2, v1);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    sub_100006654(v2, v1);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = Data.hexString.getter();
      v12 = sub_1000136BC(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "s2 notify: %s", v8, 0xCu);
      sub_100007BAC(v9);

      sub_100006654(v2, v1);
    }

    else
    {

      sub_100006654(v2, v1);
    }

    v13 = swift_task_alloc();
    v0[9] = v13;
    *v13 = v0;
    v13[1] = sub_100C4DF8C;
    v14 = v0[6];

    return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 2, 0, 0, v14, v0 + 4);
  }
}

uint64_t sub_100C4E32C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C4E3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = a7;
  *(v8 + 176) = a8;
  *(v8 + 152) = a4;
  *(v8 + 160) = a6;
  *(v8 + 256) = a5;
  *(v8 + 144) = a1;
  v9 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  *(v8 + 184) = v9;
  *(v8 + 192) = *(v9 - 8);
  *(v8 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100C4E484, 0, 0);
}

uint64_t sub_100C4E484()
{
  sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  AsyncThrowingStream.makeAsyncIterator()();
  swift_beginAccess();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_100C4E584;
  v2 = *(v0 + 184);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 112, 0, 0, v2, v0 + 128);
}

uint64_t sub_100C4E584()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100C4EECC;
  }

  else
  {
    v2 = sub_100C4E698;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C4E698(uint64_t a1)
{
  v58 = v1;
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  *(v1 + 224) = v3;
  *(v1 + 232) = v2;
  if (v2 >> 60 == 15)
  {
    goto LABEL_2;
  }

  v9 = *(v1 + 216);
  static Task<>.checkCancellation()();
  if (v9)
  {
    (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
    sub_100006654(v3, v2);

    v8 = *(v1 + 8);
    goto LABEL_5;
  }

  if (qword_101694DD0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016B9330);
  sub_10002E98C(v3, v2);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v12, v13))
  {
    sub_100006654(v3, v2);

    goto LABEL_23;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v17 = v15;
  *(v1 + 136) = v15;
  *v14 = 134218242;
  v18 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v18 != 2)
    {
      v19 = 0;
      goto LABEL_22;
    }

    v21 = *(v3 + 16);
    v20 = *(v3 + 24);
    v22 = __OFSUB__(v20, v21);
    v19 = v20 - v21;
    if (!v22)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_19:
    LODWORD(v19) = HIDWORD(v3) - v3;
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      goto LABEL_46;
    }

    v19 = v19;
    goto LABEL_22;
  }

  if (v18)
  {
    goto LABEL_19;
  }

  v19 = BYTE6(v2);
LABEL_22:
  *(v14 + 4) = v19;
  sub_100006654(v3, v2);
  *(v14 + 12) = 2080;
  v23 = Data.hexString.getter();
  v25 = sub_1000136BC(v23, v24, (v1 + 136));

  *(v14 + 14) = v25;
  _os_log_impl(&_mh_execute_header, v12, v13, "S1 notify[%ld]: %s", v14, 0x16u);
  sub_100007BAC(v17);

LABEL_23:
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v1 + 256);
    v29 = swift_slowAlloc();
    *v29 = 33554688;
    *(v29 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v26, v27, "Target: %hu", v29, 6u);
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v1 + 160);
    v33 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = v56;
    *v33 = 136315138;
    v34 = *(v32 + 16);
    v35 = *(v32 + 24);
    sub_100017D5C(v34, v35);
    v36 = Data.description.getter();
    v38 = v37;
    sub_100016590(v34, v35);
    v39 = sub_1000136BC(v36, v38, &v57);

    *(v33 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Buffer: %s", v33, 0xCu);
    sub_100007BAC(v56);
  }

  v40 = *(v1 + 160);
  swift_beginAccess();
  Data.append(_:)();
  v15 = swift_endAccess();
  v41 = *(v40 + 16);
  v42 = *(v40 + 24);
  v43 = v42 >> 62;
  if ((v42 >> 62) <= 1)
  {
    if (!v43)
    {
      v44 = BYTE6(v42);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v44 = 0;
  if (v43 == 2)
  {
    v46 = v41 + 16;
    v41 = *(v41 + 16);
    v45 = *(v46 + 8);
    v44 = v45 - v41;
    if (__OFSUB__(v45, v41))
    {
      __break(1u);
LABEL_34:
      v22 = __OFSUB__(HIDWORD(v41), v41);
      v47 = HIDWORD(v41) - v41;
      if (!v22)
      {
        v44 = v47;
        goto LABEL_36;
      }

      __break(1u);
LABEL_46:
      __break(1u);
      return dispatch thunk of CharacteristicProtocol.readUnderlying()(v15, v16);
    }
  }

LABEL_36:
  v48 = *(v1 + 256);
  v49 = Logger.logObject.getter();
  if (v44 < v48)
  {
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Continue to read S1", v51, 2u);
    }

    ObjectType = swift_getObjectType();
    v53 = swift_task_alloc();
    *(v1 + 240) = v53;
    *v53 = v1;
    v53[1] = sub_100C4ED04;
    v16 = *(v1 + 176);
    v15 = ObjectType;

    return dispatch thunk of CharacteristicProtocol.readUnderlying()(v15, v16);
  }

  v54 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v49, v54, "Finished reading S1", v55, 2u);

    sub_100006654(v3, v2);
  }

  else
  {
    sub_100006654(v3, v2);
  }

LABEL_2:
  v4 = *(v1 + 160);
  v5 = *(v1 + 144);
  (*(*(v1 + 192) + 8))(*(v1 + 200), *(v1 + 184));
  swift_beginAccess();
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  *v5 = v6;
  v5[1] = v7;
  sub_100017D5C(v6, v7);

  v8 = *(v1 + 8);
LABEL_5:

  return v8();
}

uint64_t sub_100C4ED04()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100C4EF48;
  }

  else
  {
    v2 = sub_100C4EE18;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C4EE18()
{
  sub_100006654(v0[28], v0[29]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_100C4E584;
  v2 = v0[23];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 14, 0, 0, v2, v0 + 16);
}

uint64_t sub_100C4EECC()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C4EF48()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_100006654(v0[28], v0[29]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C4EFDC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B9330);
  v1 = sub_1000076D4(v0, qword_1016B9330);
  if (qword_101694DD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BEA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C4F0A4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BEA8);
  sub_1000076D4(v0, qword_10177BEA8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100C4F128(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[2] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v2[5] = *(v5 + 64);
  v2[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[7] = v6;
  ObjectType = swift_getObjectType();
  v8 = swift_task_alloc();
  v2[8] = v8;
  *v8 = v2;
  v8[1] = sub_100C4F29C;

  return dispatch thunk of CharacteristicProtocol.notify()(v6, ObjectType, a2);
}

uint64_t sub_100C4F29C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100C4F534;
  }

  else
  {
    v2 = sub_100C4F3B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C4F3B0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];
  v5 = v0[3];
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  (*(v3 + 16))(v1, v2, v5);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  (*(v3 + 32))(v8 + v7, v1, v5);
  sub_100A838D4(0, 0, v4, &unk_1013E2DA8, v8);

  (*(v3 + 8))(v2, v5);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100C4F534()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4F5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C4F67C, 0, 0);
}

uint64_t sub_100C4F67C()
{
  ObjectType = swift_getObjectType();
  v0[9] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100C4F754;
  v3 = v0[8];
  v4 = v0[3];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C4F754(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100C4FB9C;
  }

  else
  {
    v7 = sub_100C4F8C8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C4F8C8()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  sub_100017D5C(v2, v1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_100C4FA10;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C4FA10()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100C4FC00;
  }

  else
  {

    v2 = sub_100C4FB2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C4FB2C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4FB9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4FC00()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C4FC78(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[16] = swift_task_alloc();
  type metadata accessor for Endianness();
  v2[17] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[21] = v5;
  v6 = *(v5 - 8);
  v2[22] = v6;
  v2[23] = *(v6 + 64);
  v2[24] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[25] = v7;
  ObjectType = swift_getObjectType();
  v2[26] = ObjectType;
  v9 = swift_task_alloc();
  v2[27] = v9;
  *v9 = v2;
  v9[1] = sub_100C4FE88;

  return dispatch thunk of CharacteristicProtocol.notify()(v7, ObjectType, a2);
}

uint64_t sub_100C4FE88()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_100C50D14;
  }

  else
  {
    v2 = sub_100C4FF9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C4FF9C()
{
  v1 = swift_allocObject();
  v0[29] = v1;
  *(v1 + 16) = xmmword_10138C660;
  AsyncThrowingStream.makeAsyncIterator()();
  swift_beginAccess();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_100C500A0;
  v3 = v0[18];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 8, 0, 0, v3, v0 + 12);
}

uint64_t sub_100C500A0()
{

  if (v0)
  {
    v1 = sub_100C50DB0;
  }

  else
  {
    v1 = sub_100C501B0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100C501B0()
{
  v68 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (v2 >> 60 == 15)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 168);
    v5 = *(v0 + 176);
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_100C2A500();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    (*(v5 + 8))(v3, v4);

    v7 = *(v0 + 8);

    return v7();
  }

  if (qword_101694DD0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016B9330);
  sub_100017D5C(v1, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = v2 >> 62;
  if (!os_log_type_enabled(v10, v11))
  {
    sub_100006654(v1, v2);

    goto LABEL_20;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v16 = v14;
  *(v0 + 104) = v14;
  *v13 = 134218242;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      v17 = 0;
      goto LABEL_19;
    }

    v19 = *(v1 + 16);
    v18 = *(v1 + 24);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v20)
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_16:
    LODWORD(v17) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
LABEL_56:
      __break(1u);
      return dispatch thunk of CharacteristicProtocol.readUnderlying()(v14, v15);
    }

    v17 = v17;
    goto LABEL_19;
  }

  if (v12)
  {
    goto LABEL_16;
  }

  v17 = BYTE6(v2);
LABEL_19:
  *(v13 + 4) = v17;
  sub_100006654(v1, v2);
  *(v13 + 12) = 2080;
  v21 = Data.hexString.getter();
  v23 = sub_1000136BC(v21, v22, (v0 + 104));

  *(v13 + 14) = v23;
  _os_log_impl(&_mh_execute_header, v10, v11, "s1 notify[%ld]: %s", v13, 0x16u);
  sub_100007BAC(v16);

  v12 = v2 >> 62;
LABEL_20:
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 33554688;
    *(v26 + 4) = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Target: %hu", v26, 6u);
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v66 = v2;
    v29 = *(v0 + 232);
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v67 = v31;
    *v30 = 136315138;
    v32 = v12;
    v33 = *(v29 + 16);
    v12 = *(v29 + 24);
    sub_100017D5C(v33, v12);
    v65 = v1;
    v34 = Data.description.getter();
    v36 = v35;
    v37 = v12;
    LODWORD(v12) = v32;
    sub_100016590(v33, v37);
    v38 = sub_1000136BC(v34, v36, &v67);
    v2 = v66;

    *(v30 + 4) = v38;
    v1 = v65;
    _os_log_impl(&_mh_execute_header, v27, v28, "Buffer: %s", v30, 0xCu);
    sub_100007BAC(v31);
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_37;
    }

    v40 = *(v1 + 16);
    v39 = *(v1 + 24);
    v20 = __OFSUB__(v39, v40);
    v41 = v39 - v40;
    if (!v20)
    {
      if (v41 > 2)
      {
        goto LABEL_31;
      }

      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_55;
  }

  if (!v12)
  {
    if (BYTE6(v2) <= 2uLL)
    {
      goto LABEL_37;
    }

LABEL_31:
    sub_100017D5C(v1, v2);
    v42 = v1;
    v43 = v2;
    sub_10002EA98(2, v1, v2, (v0 + 80));
    static Endianness.current.getter();
    sub_1002053B0();
    FixedWidthInteger.init(data:ofEndianness:)();
    v44 = *(v0 + 264);
    *(v0 + 268) = v44;
    v45 = *(v0 + 266);
    v46 = Logger.logObject.getter();
    if (v45)
    {
      v47 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v46, v47, "Unable to convert the first 2 bytes to UInt16", v48, 2u);
      }

      sub_100006654(v42, v43);

      goto LABEL_38;
    }

    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 33554688;
      *(v52 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v46, v51, "S1 target length: %hu", v52, 6u);
    }

    if (v12 == 2)
    {
      v54 = v42;
      v55 = *(v42 + 24);
      v56 = v42;
    }

    else
    {
      v53 = v12 == 1;
      v54 = v42;
      if (!v53)
      {
        while (BYTE6(v43) < 2uLL)
        {
LABEL_49:
          __break(1u);
        }

        goto LABEL_51;
      }

      v55 = v42 >> 32;
      v56 = v42;
    }

    sub_100017D5C(v56, v43);
    if (v55 < 2)
    {
      goto LABEL_49;
    }

LABEL_51:
    v57 = v43;
    v59 = *(v0 + 152);
    v58 = *(v0 + 160);
    v60 = *(v0 + 144);
    v61 = Data._Representation.subscript.getter();
    v63 = v62;
    sub_100006654(v54, v57);
    swift_beginAccess();
    Data.append(_:)();
    swift_endAccess();
    sub_100016590(v61, v63);
    sub_100006654(v54, v57);
    (*(v59 + 8))(v58, v60);
    v64 = swift_task_alloc();
    *(v0 + 248) = v64;
    *v64 = v0;
    v64[1] = sub_100C509EC;
    v15 = *(v0 + 120);
    v14 = *(v0 + 208);

    return dispatch thunk of CharacteristicProtocol.readUnderlying()(v14, v15);
  }

  if (__OFSUB__(HIDWORD(v1), v1))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (HIDWORD(v1) - v1 > 2)
  {
    goto LABEL_31;
  }

LABEL_37:
  sub_100006654(v1, v2);
LABEL_38:
  v49 = swift_task_alloc();
  *(v0 + 240) = v49;
  *v49 = v0;
  v49[1] = sub_100C500A0;
  v50 = *(v0 + 144);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 64, 0, 0, v50, v0 + 96);
}

uint64_t sub_100C509EC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_100C50E90;
  }

  else
  {
    v2 = sub_100C50B00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C50B00()
{
  v17 = *(v0 + 268);
  v1 = *(v0 + 232);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  v7 = *(v0 + 128);
  v16 = v7;
  v8 = type metadata accessor for TaskPriority();
  v18 = *(v0 + 112);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v5 + 16))(v3, v2, v6);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = (v4 + v9 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v11 = (v10 + 9) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v5 + 32))(v12 + v9, v3, v6);
  *(v12 + v10) = v17;
  *(v12 + v11) = v1;
  *(v12 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)) = v18;

  swift_unknownObjectRetain();
  v13 = sub_100A838E4(0, 0, v16, &unk_1013E2D88, v12);
  (*(v5 + 8))(v2, v6);

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_100C50D14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C50DB0()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C50E90()
{
  (*(v0[22] + 8))(v0[25], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C50F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Endianness();
  __chkstk_darwin(v4 - 8);
  if (qword_101694DD0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016B9330);
  sub_100017D5C(a1, a2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  sub_100016590(a1, a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_1000136BC(0xD000000000000014, 0x800000010136FD30, &v30);
    *(v8 + 12) = 2080;
    v9 = Data.hexString.getter();
    v11 = sub_1000136BC(v9, v10, &v30);

    *(v8 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  sub_100017D5C(a1, a2);
  static Endianness.current.getter();
  sub_100101824();
  FixedWidthInteger.init(data:ofEndianness:)();
  if ((v30 & 0x100000000) != 0)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Couldn't pack 4 bytes into UInt32", v14, 2u);
    }

    sub_100C2A500();
    swift_allocError();
    *v15 = 10;
    swift_willThrow();
  }

  else
  {
    v16 = (v30 >> 20) & 0xF;
    v17 = WORD1(v30) & 0xF;
    v18 = v30 >> 4;
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10138B360;
    LOWORD(v30) = v18;
    *(v19 + 32) = dispatch thunk of CustomStringConvertible.description.getter();
    *(v19 + 40) = v20;
    LOBYTE(v30) = v17;
    *(v19 + 48) = dispatch thunk of CustomStringConvertible.description.getter();
    *(v19 + 56) = v21;
    LOBYTE(v30) = v16;
    *(v19 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
    *(v19 + 72) = v22;
    v30 = v19;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_10012B138();
    a2 = BidirectionalCollection<>.joined(separator:)();
    v24 = v23;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000136BC(a2, v24, &v30);
      _os_log_impl(&_mh_execute_header, v25, v26, "Result version: %s", v27, 0xCu);
      sub_100007BAC(v28);
    }
  }

  return a2;
}

uint64_t sub_100C513F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C51590, 0, 0);
}

uint64_t sub_100C51590()
{
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100C51668;
  v3 = v0[15];
  v4 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C51668(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100C57868;
  }

  else
  {
    v7 = sub_100C517DC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C517DC()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_100C518D8;
  v4 = *(v0 + 72);

  return dispatch thunk of CharacteristicProtocol.read()(v4, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C518D8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100C5786C;
  }

  else
  {
    v2 = sub_100C519EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C519EC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100C51ACC;
  v5 = v0[10];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 2, 0, 0, v5, v0 + 4);
}

uint64_t sub_100C51ACC()
{

  if (v0)
  {
    v1 = sub_100C57864;
  }

  else
  {
    v1 = sub_100C57860;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100C51BDC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C51D78, 0, 0);
}

uint64_t sub_100C51D78()
{
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100C51E50;
  v3 = v0[15];
  v4 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C51E50(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 120);
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100C52494;
  }

  else
  {
    v7 = sub_100C51FC4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C51FC4()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_100C520C0;
  v4 = *(v0 + 72);

  return dispatch thunk of CharacteristicProtocol.read()(v4, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C520C0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100C52518;
  }

  else
  {
    v2 = sub_100C521D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C521D4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = sub_100C522B4;
  v5 = v0[10];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 2, 0, 0, v5, v0 + 4);
}

uint64_t sub_100C522B4()
{

  if (v0)
  {
    v1 = sub_100C525A4;
  }

  else
  {
    v1 = sub_100C523C4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100C523C4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);
  v4 = v0[3];
  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = v0[2];
  }

  if (v4 >> 60 == 15)
  {
    v6 = 0xF000000000000000;
  }

  else
  {
    v6 = v0[3];
  }

  v7 = v0[1];

  return v7(v5, v6);
}

uint64_t sub_100C52494()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C52518()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C525A4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_unknownObjectRelease();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C52650(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C527EC, 0, 0);
}

uint64_t sub_100C527EC()
{
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100C51668;
  v3 = v0[15];
  v4 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C528C4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C52A60, 0, 0);
}

uint64_t sub_100C52A60()
{
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100C51668;
  v3 = v0[15];
  v4 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C52B38(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C52CD4, 0, 0);
}

uint64_t sub_100C52CD4()
{
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100C51668;
  v3 = v0[15];
  v4 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

void sub_100C52DAC()
{
  v0 = type metadata accessor for Calendar();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v26 - v9;
  Date.init()();
  static Calendar.current.getter();
  Calendar.startOfDay(for:)();
  (*(v1 + 8))(v3, v0);
  Date.timeIntervalSinceReferenceDate.getter();
  v12 = v11;
  Date.timeIntervalSinceReferenceDate.getter();
  if (qword_101694DD0 != -1)
  {
    v25 = v13;
    swift_once();
    v13 = v25;
  }

  v14 = v12 - v13;
  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_1016B9330);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v16, v17, "timeSinceMidnight: %f", v18, 0xCu);
  }

  v19 = v14 * 1000.0;
  if (COERCE__INT64(fabs(v14 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v19 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  if (v19 < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (HIDWORD(v20))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v21, v22, "Reftime: %u", v23, 8u);
  }

  v26[3] = v20;
  sub_100101824();
  FixedWidthInteger.data.getter();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v10, v4);
}

uint64_t sub_100C53150(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C532EC, 0, 0);
}

uint64_t sub_100C532EC()
{
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100C533C4;
  v3 = v0[15];
  v4 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C533C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = a1;
  v4[19] = v1;

  (*(v3[14] + 8))(v3[15], v3[13]);
  if (v1)
  {
    v5 = sub_100C52494;
  }

  else
  {
    v5 = sub_100C53534;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100C53534()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_100C53630;
  v4 = *(v0 + 96);

  return dispatch thunk of CharacteristicProtocol.notify()(v4, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C53630()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_100C52518;
  }

  else
  {
    v2 = sub_100C53744;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C53744()
{
  AsyncThrowingStream.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_100C537FC;
  v2 = *(v0 + 56);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v0 + 16, 0, 0, v2, v0 + 32);
}

uint64_t sub_100C537FC()
{

  if (v0)
  {
    v1 = sub_100C53CB8;
  }

  else
  {
    v1 = sub_100C5390C;
  }

  return _swift_task_switch(v1, 0, 0);
}

void *sub_100C5390C()
{
  v34 = v0;
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    v3 = v0[11];
    v2 = v0[12];
    v4 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
    sub_100C2A500();
    swift_allocError();
    *v5 = 12;
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v2, v4);

    v6 = v0[1];

    return v6();
  }

  v8 = v0[2];
  if (qword_101694DD0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016B9330);
  sub_100017D5C(v8, v1);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    result = swift_slowAlloc();
    v13 = result;
    v33 = result;
    *v12 = 134218242;
    v14 = v1 >> 62;
    if ((v1 >> 62) > 1)
    {
      if (v14 != 2)
      {
        v15 = 0;
        goto LABEL_19;
      }

      v20 = *(v8 + 16);
      v19 = *(v8 + 24);
      v21 = __OFSUB__(v19, v20);
      v15 = v19 - v20;
      if (!v21)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v14)
    {
      v15 = BYTE6(v1);
LABEL_19:
      v22 = v0[8];
      v31 = v0[7];
      v32 = v0[9];
      *(v12 + 4) = v15;
      sub_100006654(v8, v1);
      *(v12 + 12) = 2080;
      v23 = Data.hexString.getter();
      v25 = sub_1000136BC(v23, v24, &v33);

      *(v12 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v10, v11, "c3t4s4[%ld] notify: %s", v12, 0x16u);
      sub_100007BAC(v13);

      (*(v22 + 8))(v32, v31);
      goto LABEL_20;
    }

    LODWORD(v15) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
      __break(1u);
      return result;
    }

    v15 = v15;
    goto LABEL_19;
  }

  v17 = v0[8];
  v16 = v0[9];
  v18 = v0[7];
  sub_100006654(v8, v1);

  (*(v17 + 8))(v16, v18);
LABEL_20:
  v27 = v0[11];
  v26 = v0[12];
  v28 = v0[10];
  sub_100017D5C(v8, v1);
  v29 = sub_1008CDF88(v8, v1);
  swift_unknownObjectRelease();
  sub_100006654(v8, v1);
  (*(v27 + 8))(v26, v28);

  v30 = v0[1];

  return v30(v29);
}

uint64_t sub_100C53CB8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  swift_unknownObjectRelease();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100C53D88(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C53F24, 0, 0);
}

uint64_t sub_100C53F24()
{
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100C51668;
  v3 = v0[15];
  v4 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C53FFC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016B9348, &qword_1013E2CF8);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C54198, 0, 0);
}

uint64_t sub_100C54198()
{
  ObjectType = swift_getObjectType();
  v0[16] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_100C51668;
  v3 = v0[15];
  v4 = v0[6];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C54270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C54340, 0, 0);
}

uint64_t sub_100C54340()
{
  v1 = v0[5];
  if (v1 >> 60 == 15)
  {
    sub_100C2A500();
    swift_allocError();
    *v2 = 8;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[4];
    ObjectType = swift_getObjectType();
    v0[9] = ObjectType;
    sub_100017D5C(v5, v1);
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_100C544B8;
    v8 = v0[8];
    v9 = v0[3];

    return dispatch thunk of ServiceProtocol.subscript.getter(v8, ObjectType, v9);
  }
}

uint64_t sub_100C544B8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100C54918;
  }

  else
  {
    v7 = sub_100C5462C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C5462C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  sub_100017D5C(v2, v1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_100C54774;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C54774()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100C54984;
  }

  else
  {

    v2 = sub_100C54890;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C54890()
{
  v2 = v0[4];
  v1 = v0[5];
  swift_unknownObjectRelease();
  sub_100006654(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C54918()
{
  sub_100006654(v0[4], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C54984()
{
  v2 = v0[4];
  v1 = v0[5];

  swift_unknownObjectRelease();
  sub_100006654(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C54A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100C54AE4, 0, 0);
}

uint64_t sub_100C54AE4()
{
  ObjectType = swift_getObjectType();
  v0[18] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_100C54BBC;
  v3 = v0[17];
  v4 = v0[13];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C54BBC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[20] = a1;
  v4[21] = v1;

  (*(v3[16] + 8))(v3[17], v3[15]);
  if (v1)
  {
    v5 = sub_100C550D4;
  }

  else
  {
    v5 = sub_100C54D2C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100C54D2C()
{
  sub_100C574A8(*(v0 + 112), v0 + 56);
  if (*(v0 + 80))
  {
    sub_100031694((v0 + 56), v0 + 16);
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v1 = swift_allocObject();
    *(v0 + 176) = v1;
    *(v1 + 16) = xmmword_101385D80;
    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    sub_1000035D0((v0 + 16), v3);
    *(v1 + 32) = (*(*(*(v2 + 8) + 8) + 40))(v3);
    *(v1 + 40) = v4;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v7 = swift_task_alloc();
    *(v0 + 184) = v7;
    *v7 = v0;
    v7[1] = sub_100C54F40;

    return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v1, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  else
  {
    sub_100C57518(v0 + 56);
    sub_100C2A500();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
    swift_unknownObjectRelease();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100C54F40()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_100C55138;
  }

  else
  {

    v2 = sub_100C5505C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C5505C()
{
  swift_unknownObjectRelease();
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C550D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C55138()
{
  swift_unknownObjectRelease();

  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C551B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C55288, 0, 0);
}

uint64_t sub_100C55288()
{
  v1 = v0[5];
  if (v1 >> 60 == 15)
  {
    sub_100C2A500();
    swift_allocError();
    *v2 = 5;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[4];
    ObjectType = swift_getObjectType();
    v0[9] = ObjectType;
    sub_100017D5C(v5, v1);
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v7 = swift_task_alloc();
    v0[10] = v7;
    *v7 = v0;
    v7[1] = sub_100C55400;
    v8 = v0[8];
    v9 = v0[3];

    return dispatch thunk of ServiceProtocol.subscript.getter(v8, ObjectType, v9);
  }
}

uint64_t sub_100C55400(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100C57870;
  }

  else
  {
    v7 = sub_100C55574;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C55574()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  sub_100017D5C(v2, v1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_100C556BC;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C556BC()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100C57854;
  }

  else
  {

    v2 = sub_100C57858;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C557D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for String.Encoding();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100C55904, 0, 0);
}

uint64_t sub_100C55904(uint64_t a1)
{
  if (v1[5] && (v3 = v1[10], v2 = v1[11], v4 = v1[9], static String.Encoding.utf8.getter(), v5 = String.data(using:allowLossyConversion:)(), v7 = v6, v1[12] = v5, v1[13] = v6, (*(v3 + 8))(v2, v4), v7 >> 60 != 15))
  {
    ObjectType = swift_getObjectType();
    v1[14] = ObjectType;
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v12 = swift_task_alloc();
    v1[15] = v12;
    *v12 = v1;
    v12[1] = sub_100C55AC4;
    v13 = v1[8];
    v14 = v1[3];

    return dispatch thunk of ServiceProtocol.subscript.getter(v13, ObjectType, v14);
  }

  else
  {
    sub_100C2A500();
    swift_allocError();
    *v8 = 7;
    swift_willThrow();

    v9 = v1[1];

    return v9();
  }
}

uint64_t sub_100C55AC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100C55F30;
  }

  else
  {
    v7 = sub_100C55C38;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C55C38()
{
  v1 = v0[13];
  v2 = v0[12];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  sub_100017D5C(v2, v1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_100C55D80;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C55D80()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100C55FA8;
  }

  else
  {

    v2 = sub_100C55E9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C55E9C()
{
  v1 = v0[12];
  v2 = v0[13];
  swift_unknownObjectRelease();
  sub_100006654(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C55F30()
{
  sub_100006654(v0[12], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C55FA8()
{
  v2 = v0[12];
  v1 = v0[13];

  swift_unknownObjectRelease();
  sub_100006654(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C56044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C56114, 0, 0);
}

uint64_t sub_100C56114()
{
  v1 = v0[7];
  if (v1 >> 60 == 15)
  {
    sub_100C2A500();
    swift_allocError();
    *v2 = 9;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[6];
    ObjectType = swift_getObjectType();
    v0[11] = ObjectType;
    sub_100017D5C(v5, v1);
    type metadata accessor for Characteristic();
    Identifier.init(stringLiteral:)();
    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_100C5628C;
    v8 = v0[10];
    v9 = v0[5];

    return dispatch thunk of ServiceProtocol.subscript.getter(v8, ObjectType, v9);
  }
}

uint64_t sub_100C5628C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  (*(v3[9] + 8))(v3[10], v3[8]);
  if (v1)
  {
    v5 = sub_100C56764;
  }

  else
  {
    v5 = sub_100C563FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100C563FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 56);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v7 = *(*(v3 + 48) + 16);
    v8 = *(*(v3 + 48) + 24);
    v9 = __OFSUB__(v8, v7);
    v6 = v8 - v7;
    if (!v9)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v5)
  {
    LOWORD(v6) = BYTE6(v4);
    goto LABEL_14;
  }

  v10 = *(v3 + 48);
  v11 = *(v3 + 52);
  v9 = __OFSUB__(v11, v10);
  LODWORD(v6) = v11 - v10;
  if (v9)
  {
LABEL_18:
    __break(1u);
    return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(a1, a2, a3);
  }

  v6 = v6;
LABEL_10:
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!(v6 >> 16))
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  LOWORD(v6) = 0;
LABEL_14:
  *(v3 + 144) = v6;
  sub_1002053B0();
  *(v3 + 16) = FixedWidthInteger.data.getter();
  *(v3 + 24) = v12;
  Data.append(_:)();
  v13 = Data.chunked(into:)();
  *(v3 + 120) = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = swift_task_alloc();
  *(v3 + 128) = v16;
  *v16 = v3;
  v16[1] = sub_100C565AC;
  a1 = v13;
  a2 = AssociatedTypeWitness;
  a3 = AssociatedConformanceWitness;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(a1, a2, a3);
}

uint64_t sub_100C565AC()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100C567D0;
  }

  else
  {
    v2 = sub_100C566E0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C566E0()
{
  sub_100006654(v0[6], v0[7]);
  swift_unknownObjectRelease();
  sub_100016590(v0[2], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C56764()
{
  sub_100006654(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C567D0()
{
  sub_100006654(v0[6], v0[7]);
  swift_unknownObjectRelease();
  sub_100016590(v0[2], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C56850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C56920, 0, 0);
}

uint64_t sub_100C56920()
{
  ObjectType = swift_getObjectType();
  v0[9] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100C569F8;
  v3 = v0[8];
  v4 = v0[3];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C569F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v5 = *(*v2 + 56);
  v6 = *(*v2 + 48);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100C5785C;
  }

  else
  {
    v7 = sub_100C56B6C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C56B6C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = xmmword_101385D80;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  sub_100017D5C(v2, v1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_100C56CB4;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v3, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C56CB4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100C57850;
  }

  else
  {

    v2 = sub_100C5784C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C56DD0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100C56E9C, 0, 0);
}

uint64_t sub_100C56E9C()
{
  ObjectType = swift_getObjectType();
  v0[7] = ObjectType;
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_100C56F74;
  v3 = v0[6];
  v4 = v0[3];

  return dispatch thunk of ServiceProtocol.subscript.getter(v3, ObjectType, v4);
}

uint64_t sub_100C56F74(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_100C573CC;
  }

  else
  {
    v7 = sub_100C570E8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100C570E8()
{
  sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
  v1 = swift_allocObject();
  *(v0 + 88) = v1;
  *(v1 + 16) = xmmword_101385D80;
  *(v0 + 112) = 1;
  sub_1000198E8();
  *(v1 + 32) = FixedWidthInteger.data.getter();
  *(v1 + 40) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_100C57240;

  return dispatch thunk of CharacteristicProtocol.writeWithoutResponse(data:)(v1, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_100C57240()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100C57430;
  }

  else
  {

    v2 = sub_100C5735C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100C5735C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C573CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C57430()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C574A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697378, &unk_101391940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C57518(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101697378, &unk_101391940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C57580(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v8 = (v7 + 9) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v9);
  v14 = *(v1 + v9 + 8);
  v15 = *(v1 + v7);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014650;

  return sub_100C4E3AC(a1, v10, v11, v1 + v6, v15, v12, v13, v14);
}

uint64_t sub_100C576E8(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016973C8, &qword_1013B6210) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100C4DDF0(a1, v6, v7, v1 + v5);
}

unint64_t sub_100C577F8()
{
  result = qword_1016B9350;
  if (!qword_1016B9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B9350);
  }

  return result;
}

void *sub_100C57874(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v21 = a1;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v21 + 64;
    result = _HashTable.startBucket.getter();
    v5 = v21;
    v6 = result;
    v7 = 0;
    v8 = *(v21 + 36);
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v5 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v8 != *(v5 + 36))
      {
        goto LABEL_24;
      }

      v11 = v4;
      v12 = *(v5 + 56) + 16 * v6;
      v13 = *v12;
      if (*(v12 + 8))
      {
        sub_100B223D0(v13, 1);
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        swift_willThrowTypedImpl();
      }

      v22 = v7;
      sub_100B223D0(v13, 0);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v5 = v21;
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_25;
      }

      v14 = *(v11 + 8 * v10);
      if ((v14 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_27;
      }

      v4 = v11;
      v15 = v14 & (-2 << (v6 & 0x3F));
      if (v15)
      {
        v9 = __clz(__rbit64(v15)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v10 << 6;
        v17 = v10 + 1;
        v18 = (v21 + 72 + 8 * v10);
        while (v17 < (v9 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_1000BB408(v6, v8, 0);
            v5 = v21;
            v9 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        result = sub_1000BB408(v6, v8, 0);
        v5 = v21;
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_100C57B00(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C57C2C, v2, 0);
}

uint64_t sub_100C57C2C()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_100C57C50, v1, 0);
}

uint64_t sub_100C57C50()
{
  v0[17] = type metadata accessor for CloudStorageDatabase(0);
  v0[18] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase, &unk_1013BA760);
  Database.startup()();
  v0[19] = v1;
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[16];

    return _swift_task_switch(sub_100C57D68, v4, 0);
  }
}

uint64_t sub_100C57D68()
{
  *(v0 + 160) = Database.readConnection.getter();

  return _swift_task_switch(sub_100C57DD8, 0, 0);
}

uint64_t sub_100C57DD8()
{
  if (!v0[20])
  {
    sub_10020223C();
    swift_allocError();
    *v12 = 2;
    *(v12 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694888 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[13], qword_10177B110);
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  v15 = v0[19];
  v1 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v7 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v7, qword_10177B140);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v6 + 8))(v4, v5);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v8 = sub_1000280DC(v0 + 2);
  (*(v1 + 16))(v8, v2, v3);
  sub_10000770C((v0 + 2));
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[13];
  if (v15)
  {
    (*(v9 + 8))(v0[15], v0[13]);

    sub_100007BAC(v0 + 2);
LABEL_9:

    v13 = v0[1];
    goto LABEL_11;
  }

  sub_100007BAC(v0 + 2);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();

  (*(v9 + 8))(v10, v11);

  v13 = v0[1];
LABEL_11:

  return v13();
}

uint64_t sub_100C580A0(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100C581CC, v2, 0);
}

uint64_t sub_100C581CC()
{
  v1 = *(*(v0 + 88) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100C581F0, v1, 0);
}

uint64_t sub_100C581F0()
{
  v0[19] = type metadata accessor for CloudStorageDatabase(0);
  v0[20] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase, &unk_1013BA760);
  Database.startup()();
  v0[21] = v1;
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[18];

    return _swift_task_switch(sub_100C58308, v4, 0);
  }
}

uint64_t sub_100C58308()
{
  *(v0 + 176) = Database.readConnection.getter();

  return _swift_task_switch(sub_100C58378, 0, 0);
}

uint64_t sub_100C58378()
{
  if (!v0[22])
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694888 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[15], qword_10177B110);
  if (qword_1016948B0 != -1)
  {
    swift_once();
  }

  v19 = v0[21];
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v18 = v0[12];
  v7 = v0[9];
  v6 = v0[10];
  v8 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v8, qword_10177B188);
  v0[7] = v7;
  v0[8] = v6;
  sub_100017D5C(v7, v6);
  sub_10003118C(&qword_101699DC8, &type metadata accessor for Blob, &protocol conformance descriptor for Blob);
  == infix<A>(_:_:)();
  sub_100016590(v0[7], v0[8]);
  QueryType.filter(_:)();
  (*(v5 + 8))(v4, v18);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v9 = sub_1000280DC(v0 + 2);
  (*(v1 + 16))(v9, v2, v3);
  sub_10000770C((v0 + 2));
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  if (v19)
  {
    (*(v11 + 8))(v0[17], v0[15]);

    sub_100007BAC(v0 + 2);
LABEL_9:

    v14 = v0[1];

    return v14();
  }

  sub_100007BAC(v0 + 2);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  v16 = sub_100B35970();

  (*(v11 + 8))(v10, v12);

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_100C586BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = type metadata accessor for OnConflict();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for Insert();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = type metadata accessor for Row();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v9 = type metadata accessor for Table();
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v4[32] = v10;
  v4[33] = *(v10 - 8);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_100C58964, 0, 0);
}

uint64_t sub_100C58964()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[15];
  v5 = v0[16];
  v6 = *(v3 + 16);
  v0[36] = v6;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);

  return _swift_task_switch(sub_100C589EC, v5, 0);
}

uint64_t sub_100C589EC()
{
  v1 = *(*(v0 + 128) + 112);
  *(v0 + 304) = v1;
  return _swift_task_switch(sub_100C58A10, v1, 0);
}

uint64_t sub_100C58A10()
{
  v0[39] = type metadata accessor for CloudStorageDatabase(0);
  v0[40] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase, &unk_1013BA760);
  Database.startup()();
  v0[41] = v1;
  if (v1)
  {
    v2 = sub_100C595C4;
    v3 = 0;
  }

  else
  {
    v3 = v0[38];
    v2 = sub_100C58AF4;
  }

  return _swift_task_switch(v2, v3, 0);
}

uint64_t sub_100C58AF4()
{
  *(v0 + 336) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100C58B64, 0, 0);
}

uint64_t sub_100C58B64()
{
  v74 = v0;
  if (!v0[42])
  {
    v16 = v0[35];
    v17 = v0[32];
    v18 = v0[33];
    sub_10020223C();
    swift_allocError();
    *v19 = 2;
    *(v19 + 4) = 1;
    swift_willThrow();
    (*(v18 + 8))(v16, v17);
    goto LABEL_34;
  }

  if (qword_101694890 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[29], qword_10177B128);
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v8, qword_10177B140);
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v5 + 8))(v6, v7);
  v0[5] = v3;
  v0[6] = &protocol witness table for Table;
  v9 = sub_1000280DC(v0 + 2);
  (*(v4 + 16))(v9, v2, v3);
  Connection.prepare(_:)();
  if (v1)
  {
    v10 = v0[35];
    v12 = v0[32];
    v11 = v0[33];
    v14 = v0[30];
    v13 = v0[31];
    v15 = v0[29];

    (*(v14 + 8))(v13, v15);
    (*(v11 + 8))(v10, v12);
    sub_100007BAC(v0 + 2);
LABEL_34:

    v68 = v0[1];
    goto LABEL_35;
  }

  sub_100007BAC(v0 + 2);
  v20 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  if (*(v20 + 16))
  {
    (*(v0[24] + 16))(v0[25], v20 + ((*(v0[24] + 80) + 32) & ~*(v0[24] + 80)), v0[23]);

    if (qword_101694900 != -1)
    {
      swift_once();
    }

    v21 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
    sub_1000076D4(v21, qword_10177B278);
    Row.subscript.getter();
    v71 = v0[8];
    v72 = v0[7];
    if (qword_1016948F8 != -1)
    {
      swift_once();
    }

    v22 = v0[24];
    v23 = v0[25];
    v24 = v0[23];
    v25 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
    sub_1000076D4(v25, qword_10177B260);
    Row.subscript.getter();
    (*(v22 + 8))(v23, v24);
    v26 = v0[11];
    if (v26 == 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = v26 == 1;
    }
  }

  else
  {

    v27 = 0;
    v71 = 0xF000000000000000;
    v72 = 0;
  }

  v28 = v0[14];
  v29 = (v28 >> 60) & 3;
  if (!v29)
  {
    sub_100006654(v72, v71);
    v30 = v0[13];
    v28 = v0[14];
    v71 = v28;
    v72 = v30;
LABEL_23:
    sub_100C61CD4(v30, v28);
    goto LABEL_24;
  }

  if (v29 != 1)
  {
    v30 = v0[13];
    goto LABEL_23;
  }

  v27 = *(v0 + 104);
LABEL_24:
  v70 = v27;
  if (qword_101694DE0 != -1)
  {
    swift_once();
  }

  v31 = v0[36];
  v32 = v0[34];
  v33 = v0[32];
  v35 = v0[14];
  v34 = v0[15];
  v36 = v0[13];
  v37 = type metadata accessor for Logger();
  sub_1000076D4(v37, qword_10177BEC0);
  v31(v32, v34, v33);
  sub_100C61CD4(v36, v35);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  sub_100C61CE4(v36, v35);
  v40 = os_log_type_enabled(v38, v39);
  v42 = v0[33];
  v41 = v0[34];
  v43 = v0[32];
  if (v40)
  {
    v45 = v0[13];
    v44 = v0[14];
    v46 = swift_slowAlloc();
    v73[0] = swift_slowAlloc();
    *v46 = 141559043;
    *(v46 + 4) = 1752392040;
    *(v46 + 12) = 2081;
    v47 = sub_1011EB8F8(v45, v44);
    v49 = sub_1000136BC(v47, v48, v73);

    *(v46 + 14) = v49;
    *(v46 + 22) = 2160;
    *(v46 + 24) = 1752392040;
    *(v46 + 32) = 2081;
    sub_10003118C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    v69 = *(v42 + 8);
    v69(v41, v43);
    v53 = sub_1000136BC(v50, v52, v73);

    *(v46 + 34) = v53;
    *(v46 + 42) = 2050;
    *(v46 + 44) = v70;
    _os_log_impl(&_mh_execute_header, v38, v39, "Saving %{private,mask.hash}s for %{private,mask.hash}s\nrawFindMyPairingState %{public}ld", v46, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v69 = *(v42 + 8);
    v69(v41, v43);
  }

  (*(v0[18] + 104))(v0[19], enum case for OnConflict.replace(_:), v0[17]);
  sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
  type metadata accessor for Setter();
  *(swift_allocObject() + 16) = xmmword_10138B360;
  <- infix<A>(_:_:)();
  if (qword_101694900 != -1)
  {
    swift_once();
  }

  v54 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v54, qword_10177B278);
  v0[9] = v72;
  v0[10] = v71;
  sub_10002E98C(v72, v71);
  <- infix<A>(_:_:)();
  sub_100006654(v0[9], v0[10]);
  if (qword_1016948F8 != -1)
  {
    swift_once();
  }

  v55 = v0[18];
  v56 = v0[19];
  v57 = v0[17];
  v58 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v58, qword_10177B260);
  v0[12] = v70;
  <- infix<A>(_:_:)();
  QueryType.insert(or:_:)();

  (*(v55 + 8))(v56, v57);
  Connection.run(_:)();
  v59 = v0[35];
  v62 = v0[31];
  v61 = v0[32];
  v63 = v0[29];
  v64 = v0[30];
  v65 = v0[21];
  v66 = v0[22];
  v67 = v0[20];

  sub_100006654(v72, v71);
  (*(v65 + 8))(v66, v67);
  (*(v64 + 8))(v62, v63);
  v69(v59, v61);

  v68 = v0[1];
LABEL_35:

  return v68();
}

uint64_t sub_100C595C4()
{
  (*(v0[33] + 8))(v0[35], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100C5969C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v4[11] = swift_task_alloc();
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for Table();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v8 = type metadata accessor for Delete();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();

  return _swift_task_switch(sub_100C598C4, 0, 0);
}

uint64_t sub_100C598C4()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 176) = v1;
  return _swift_task_switch(sub_100C598E8, v1, 0);
}

uint64_t sub_100C598E8()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase, &unk_1013BA760);
  *(v0 + 184) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100C5999C, 0, 0);
}

uint64_t sub_100C5999C()
{
  v48 = v0;
  if (v0[23])
  {
    if (qword_101694890 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v0[15], qword_10177B128);
    if (qword_101694898 != -1)
    {
      swift_once();
    }

    v1 = v0[16];
    v2 = v0[17];
    v4 = v0[14];
    v3 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v7 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v7, qword_10177B140);
    type metadata accessor for UUID();
    == infix<A>(_:_:)();
    QueryType.filter(_:)();
    (*(v5 + 8))(v4, v6);
    QueryType.delete()();
    v8 = *(v1 + 8);
    v8(v2, v3);
    Connection.run(_:)();
    v12 = v0[6];
    if (v12 >> 60 == 15)
    {
      (*(v0[19] + 8))(v0[21], v0[18]);
    }

    else
    {
      sub_100017D5C(v0[5], v12);
      if (qword_101694DE0 != -1)
      {
        swift_once();
      }

      v14 = v0[5];
      v13 = v0[6];
      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_10177BEC0);
      sub_100017D5C(v14, v13);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      sub_100006654(v14, v13);
      v46 = v8;
      if (os_log_type_enabled(v16, v17))
      {
        v19 = v0[5];
        v18 = v0[6];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v47 = v21;
        *v20 = 141558275;
        *(v20 + 4) = 1752392040;
        *(v20 + 12) = 2081;
        sub_100017D5C(v19, v18);
        static String.Encoding.utf8.getter();
        v22 = String.init(data:encoding:)();
        v24 = v23;
        v25 = v0[5];
        v26 = v0[6];
        if (!v24)
        {
          v27 = v0[5];
          v28 = v0[6];
          v22 = Data.hexString.getter();
          v24 = v29;
          v25 = v27;
          v26 = v28;
        }

        sub_100006654(v25, v26);
        v30 = sub_1000136BC(v22, v24, &v47);

        *(v20 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v16, v17, "Deleting preferences for %{private,mask.hash}s", v20, 0x16u);
        sub_100007BAC(v21);
      }

      if (qword_101694900 != -1)
      {
        swift_once();
      }

      v31 = v0[17];
      v32 = v0[15];
      v33 = v0[9];
      v34 = v0[10];
      v45 = v0[8];
      v36 = v0[5];
      v35 = v0[6];
      v37 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
      sub_1000076D4(v37, qword_10177B278);
      v0[2] = v36;
      v0[3] = v35;
      sub_100017D5C(v36, v35);
      sub_10003118C(&qword_101699DC8, &type metadata accessor for Blob, &protocol conformance descriptor for Blob);
      == infix<A>(_:_:)();
      sub_100006654(v0[2], v0[3]);
      QueryType.filter(_:)();
      (*(v33 + 8))(v34, v45);
      QueryType.delete()();
      v46(v31, v32);
      Connection.run(_:)();
      v39 = v0[20];
      v38 = v0[21];
      v40 = v0[18];
      v41 = v0[19];
      v43 = v0[5];
      v42 = v0[6];

      sub_100006654(v43, v42);
      v44 = *(v41 + 8);
      v44(v39, v40);
      v44(v38, v40);
    }

    v10 = v0[1];
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v9 = 2;
    *(v9 + 4) = 1;
    swift_willThrow();

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_100C59FE4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100C5A110, v2, 0);
}

uint64_t sub_100C5A110()
{
  v1 = *(*(v0 + 72) + 112);
  *(v0 + 128) = v1;
  return _swift_task_switch(sub_100C5A134, v1, 0);
}

uint64_t sub_100C5A134()
{
  v0[17] = type metadata accessor for CloudStorageDatabase(0);
  v0[18] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase, &unk_1013BA760);
  Database.startup()();
  v0[19] = v1;
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[16];

    return _swift_task_switch(sub_100C5A24C, v4, 0);
  }
}

uint64_t sub_100C5A24C()
{
  *(v0 + 160) = Database.readConnection.getter();

  return _swift_task_switch(sub_100C5A2BC, 0, 0);
}

uint64_t sub_100C5A2BC()
{
  v1 = v0[20];
  if (!v1)
  {
    sub_10020223C();
    swift_allocError();
    *v13 = 2;
    *(v13 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694890 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[13], qword_10177B128);
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  v16 = v0[19];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v8, qword_10177B140);
  type metadata accessor for UUID();
  == infix<A>(_:_:)();
  QueryType.filter(_:)();
  (*(v7 + 8))(v5, v6);
  v0[5] = v4;
  v0[6] = &protocol witness table for Table;
  v9 = sub_1000280DC(v0 + 2);
  (*(v2 + 16))(v9, v3, v4);
  sub_100C61CF4((v0 + 2), v1);
  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[13];
  if (v16)
  {
    (*(v10 + 8))(v0[15], v0[13]);

    sub_100007BAC(v0 + 2);
LABEL_9:

    v14 = v0[1];
    goto LABEL_11;
  }

  sub_100007BAC(v0 + 2);
  dispatch thunk of _AnySequenceBox._makeIterator()();

  dispatch thunk of _AnyIteratorBoxBase.next()();

  (*(v10 + 8))(v11, v12);

  v14 = v0[1];
LABEL_11:

  return v14();
}

uint64_t sub_100C5A584(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = type metadata accessor for Table();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_100C5A6B0, v2, 0);
}

uint64_t sub_100C5A6B0()
{
  v1 = *(*(v0 + 88) + 112);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100C5A6D4, v1, 0);
}

uint64_t sub_100C5A6D4()
{
  v0[19] = type metadata accessor for CloudStorageDatabase(0);
  v0[20] = sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase, &unk_1013BA760);
  Database.startup()();
  v0[21] = v1;
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[18];

    return _swift_task_switch(sub_100C5A7EC, v4, 0);
  }
}

uint64_t sub_100C5A7EC()
{
  *(v0 + 176) = Database.readConnection.getter();

  return _swift_task_switch(sub_100C5A85C, 0, 0);
}

uint64_t sub_100C5A85C()
{
  v1 = v0[22];
  if (!v1)
  {
    sub_10020223C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 4) = 1;
    swift_willThrow();
    goto LABEL_9;
  }

  if (qword_101694890 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v0[15], qword_10177B128);
  if (qword_101694900 != -1)
  {
    swift_once();
  }

  v20 = v0[21];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  v19 = v0[12];
  v8 = v0[9];
  v7 = v0[10];
  v9 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v9, qword_10177B278);
  v0[7] = v8;
  v0[8] = v7;
  sub_100017D5C(v8, v7);
  sub_10003118C(&qword_101699DC8, &type metadata accessor for Blob, &protocol conformance descriptor for Blob);
  == infix<A>(_:_:)();
  sub_100006654(v0[7], v0[8]);
  QueryType.filter(_:)();
  (*(v6 + 8))(v5, v19);
  v0[5] = v4;
  v0[6] = &protocol witness table for Table;
  v10 = sub_1000280DC(v0 + 2);
  (*(v2 + 16))(v10, v3, v4);
  sub_100C61CF4((v0 + 2), v1);
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[15];
  if (v20)
  {
    (*(v12 + 8))(v0[17], v0[15]);

    sub_100007BAC(v0 + 2);
LABEL_9:

    v15 = v0[1];

    return v15();
  }

  sub_100007BAC(v0 + 2);
  v17 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  (*(v12 + 8))(v11, v13);

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_100C5AB8C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BEC0);
  v1 = sub_1000076D4(v0, qword_10177BEC0);
  if (qword_101694908 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B290);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100C5AC54()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CloudStorageStore.State(0);
  __chkstk_darwin(v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100C62CE0(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v8, v2);
      v18 = 0;
      v19 = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v18 = 0xD00000000000002ELL;
      v19 = 0x800000010136FDD0;
      sub_10003118C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v10);

      v11 = v18;
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      return 0x6E776F6E6B6E752ELL;
    }
  }

  else
  {
    sub_100031694(v8, &v18);
    v16 = 0;
    v17 = 0xE000000000000000;
    v12._countAndFlagsBits = 0x65696669646F6D2ELL;
    v12._object = 0xEA00000000002864;
    String.append(_:)(v12);
    sub_1000BC4D4(&unk_1016AA550, &qword_1013CAFC0);
    _print_unlocked<A, B>(_:_:)();
    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    v11 = v16;
    sub_100007BAC(&v18);
  }

  return v11;
}

uint64_t sub_100C5AEEC()
{

  sub_100C62C80(v0 + OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_state, type metadata accessor for CloudStorageStore.State);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100C5AF88(uint64_t a1)
{
  result = type metadata accessor for CloudStorageStore.State(319);
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

void sub_100C5B068(uint64_t a1)
{
  sub_100C5B0DC();
  if (v1 <= 0x3F)
  {
    sub_100C5B188(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100C5B0DC()
{
  if (!qword_1016B94E8)
  {
    v0 = sub_100C5B124();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B94E8);
    }
  }
}

unint64_t sub_100C5B124()
{
  result = qword_1016B94F0;
  if (!qword_1016B94F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1016B94F0);
  }

  return result;
}

void sub_100C5B188(uint64_t a1)
{
  if (!qword_1016B94F8)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1016B94F8);
    }
  }
}

uint64_t sub_100C5B1F4(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v38 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  v35 = *(v38 - 8);
  v2 = *(v35 + 64);
  __chkstk_darwin(v38);
  v4 = &v27 - v3;
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    UUID.init()();
    v30 = v4;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v2;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    AsyncStream.Continuation.onTermination.setter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_10025EDD4(0, 0, v37, &unk_1013E30F0, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_100C5B5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v12 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v6 + 32))(&v13[v12], &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_10025EDD4(0, 0, v10, &unk_1013E3108, v13);
}

uint64_t sub_100C5B7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100C5B7F8, a4, 0);
}

uint64_t sub_100C5B7F8()
{
  sub_100C5B858(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C5B858(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101699898, &qword_101392018);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v27 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  if (qword_101694DE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_10177BEC0);
  v26 = *(v6 + 16);
  v26(v10, a1, v5);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v4;
    v15 = v14;
    v23 = swift_slowAlloc();
    v28[0] = v23;
    *v15 = 136446210;
    sub_10003118C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = a1;
    v18 = v17;
    (*(v6 + 8))(v10, v5);
    v19 = sub_1000136BC(v16, v18, v28);
    a1 = v24;

    *(v15 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Removing stateContinuation for %{public}s", v15, 0xCu);
    sub_100007BAC(v23);

    v4 = v25;
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  v20 = v27;
  v26(v27, a1, v5);
  v21 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  swift_beginAccess();
  sub_1001E0F58(v4, v20);
  return swift_endAccess();
}

uint64_t sub_100C5BBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_1000BC4D4(&qword_1016B9548, &qword_1013E3098);
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  type metadata accessor for CloudStorageStore.State(0);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100C5BD00, a4, 0);
}

uint64_t sub_100C5BD00()
{
  v1 = v0[12];
  v2 = v0[5];
  sub_100C5BE94(v0[6], v0[7]);
  v3 = OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_state;
  swift_beginAccess();
  sub_100C62CE0(v2 + v3, v1);

  return _swift_task_switch(sub_100C5BDA0, 0, 0);
}

uint64_t sub_100C5BDA0()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_100C62CE0(v1, v0[11]);
  sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  sub_100C62C80(v1, type metadata accessor for CloudStorageStore.State);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C5BE94(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v3 = sub_1000BC4D4(&qword_101699898, &qword_101392018);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  if (qword_101694DE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177BEC0);
  v29 = *(v7 + 16);
  v29(v11, a2, v6);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v26 = swift_slowAlloc();
    v32[0] = v26;
    *v16 = 136446210;
    sub_10003118C(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = a2;
    v19 = v18;
    (*(v7 + 8))(v11, v6);
    v20 = sub_1000136BC(v17, v19, v32);
    a2 = v27;

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v13, v14, "Storing stateContinuation for %{public}s", v16, 0xCu);
    sub_100007BAC(v26);

    v5 = v28;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  v21 = v30;
  v29(v30, a2, v6);
  v22 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  v23 = *(v22 - 8);
  (*(v23 + 16))(v5, v31, v22);
  (*(v23 + 56))(v5, 0, 1, v22);
  swift_beginAccess();
  sub_1001E0F58(v5, v21);
  return swift_endAccess();
}

uint64_t sub_100C5C268(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1000BC4D4(&qword_1016B9548, &qword_1013E3098);
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016998A0, &unk_1013D68B0);
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  type metadata accessor for CloudStorageStore.State(0);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return _swift_task_switch(sub_100C5C3D4, v1, 0);
}

uint64_t sub_100C5C3D4()
{
  v50 = v0;
  v1 = v0[20];
  v2 = v0[11];
  v3 = v0[12];
  v4 = OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_state;
  swift_beginAccess();
  sub_100C62CE0(v3 + v4, v1);
  LOBYTE(v2) = sub_100C618A8(v1, v2);
  sub_100C62C80(v1, type metadata accessor for CloudStorageStore.State);
  if ((v2 & 1) == 0)
  {
    if (qword_101694DE0 != -1)
    {
LABEL_26:
      swift_once();
    }

    v5 = v0[19];
    v6 = v0[11];
    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_10177BEC0);
    sub_100C62CE0(v6, v5);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    v47 = v0;
    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[20];
      v45 = v0[19];
      v11 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v11 = 136315394;
      sub_100C62CE0(v3 + v4, v10);
      v12 = sub_100C5AC54();
      v14 = v13;
      sub_100C62C80(v10, type metadata accessor for CloudStorageStore.State);
      v15 = sub_1000136BC(v12, v14, &v49);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = sub_100C5AC54();
      v18 = v17;
      sub_100C62C80(v45, type metadata accessor for CloudStorageStore.State);
      v19 = sub_1000136BC(v16, v18, &v49);

      *(v11 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v8, v9, "State: %s -> %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v20 = v0[19];

      sub_100C62C80(v20, type metadata accessor for CloudStorageStore.State);
    }

    v21 = v0[11];
    v22 = v0[12];
    swift_beginAccess();
    sub_100C62D44(v21, v3 + v4);
    swift_endAccess();
    v23 = OBJC_IVAR____TtC12searchpartyd17CloudStorageStore_stateContinuations;
    swift_beginAccess();
    v24 = *(v22 + v23);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134217984;
        *(v28 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v26, v27, "Publishing State change event to %ld subscribers", v28, 0xCu);
      }

      v24 = *(v22 + v23);
    }

    v29 = v24 + 64;
    v30 = -1;
    v31 = -1 << *(v24 + 32);
    if (-v31 < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v32 = v30 & *(v24 + 64);
    v33 = (63 - v31) >> 6;
    v43 = (v0[14] + 8);
    v44 = v0[17];
    v46 = v24;

    v4 = 0;
    while (v32)
    {
      v34 = v4;
      v35 = v46;
LABEL_19:
      v36 = v47[20];
      v37 = v47[18];
      v39 = v47[15];
      v38 = v47[16];
      v48 = v47[13];
      v3 = v47[11];
      v40 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
      v0 = v44;
      (*(v44 + 16))(v37, *(v35 + 56) + *(v44 + 72) * (v40 | (v34 << 6)), v38);
      sub_100C62CE0(v3, v36);
      AsyncStream.Continuation.yield(_:)();
      (*v43)(v39, v48);
      (*(v44 + 8))(v37, v38);
    }

    v35 = v46;
    while (1)
    {
      v34 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v34 >= v33)
      {
        break;
      }

      v32 = *(v29 + 8 * v34);
      ++v4;
      if (v32)
      {
        v4 = v34;
        goto LABEL_19;
      }
    }

    v0 = v47;
  }

  v41 = v0[1];

  return v41();
}

uint64_t sub_100C5C920()
{
  v12 = v0;
  v11 = _swiftEmptyArrayStorage;
  sub_101123BB8(0, 1, 0);
  v1 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  v2 = _swiftEmptyArrayStorage[3];
  if (v3 >= v2 >> 1)
  {
    sub_101123BB8((v2 > 1), v3 + 1, 1);
    v1 = v11;
  }

  v1[2] = v3 + 1;
  v4 = &v1[2 * v3];
  v4[4] = 0xD000000000000016;
  v4[5] = 0x800000010134C550;
  v5 = sub_101129930(v1);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_1003A85D4(*(v5 + 16), 0);
    v8 = sub_1003AAC38(&v11, v7 + 4, v6, v5);
    sub_1000128F8(v11);
    if (v8 == v6)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_7:
  v9 = *(v0 + 8);

  return v9(v7);
}

uint64_t sub_100C5CA6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for CloudKitCoordinator.Deletion();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for CloudKitStateChange();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C5CB94, v1, 0);
}

uint64_t sub_100C5CB94()
{
  v40 = v0;
  v1 = v0;
  if (qword_101694DE0 != -1)
  {
    swift_once();
  }

  v3 = v0[9];
  v2 = v1[10];
  v4 = v1[8];
  v5 = v1[2];
  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_10177BEC0);
  (*(v3 + 16))(v2, v5, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[9];
  v10 = v1[10];
  v12 = v1[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v39 = v14;
    *v13 = 136315138;
    sub_10003118C(&qword_1016B9568, &type metadata accessor for CloudKitStateChange, &protocol conformance descriptor for CloudKitStateChange);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_1000136BC(v15, v17, &v39);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "ingest:stateChange %s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = CloudKitStateChange.deleted.getter();
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v1[5];
    v39 = _swiftEmptyArrayStorage;
    sub_101125704(0, v20, 0);
    v22 = v39;
    v23 = *(v21 + 16);
    v21 += 16;
    v37 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v38 = v23;
    v24 = v19 + v37;
    v36 = *(v21 + 56);
    v35 = (v21 - 8);
    v25 = (v21 + 16);
    do
    {
      v26 = v1[6];
      v27 = v1[4];
      v38(v26, v24, v27);
      CloudKitCoordinator.Deletion.recordType.getter();
      CloudKitCoordinator.Deletion.recordID.getter();
      CloudKitCoordinator.Deletion.init(recordType:recordID:)();
      (*v35)(v26, v27);
      v39 = v22;
      v29 = v22[2];
      v28 = v22[3];
      if (v29 >= v28 >> 1)
      {
        sub_101125704((v28 > 1), v29 + 1, 1);
        v22 = v39;
      }

      v30 = v1[7];
      v31 = v1[4];
      v22[2] = v29 + 1;
      (*v25)(v22 + v37 + v29 * v36, v30, v31);
      v24 += v36;
      --v20;
    }

    while (v20);
  }

  else
  {

    v22 = _swiftEmptyArrayStorage;
  }

  v1[11] = v22;
  v32 = CloudKitStateChange.modified.getter();
  v1[12] = v32;
  v33 = swift_task_alloc();
  v1[13] = v33;
  *v33 = v1;
  v33[1] = sub_100C5CF80;

  return sub_100C5D1D4(v22, v32);
}

uint64_t sub_100C5CF80()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_100C5D140;
  }

  else
  {
    v4 = sub_100C5D0AC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C5D0AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C5D140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C5D1D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = type metadata accessor for Connection.TransactionMode();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C5D2C0, v2, 0);
}

uint64_t sub_100C5D2C0()
{
  v1 = *(*(v0 + 32) + 112);
  *(v0 + 72) = v1;
  return _swift_task_switch(sub_100C5D2E4, v1, 0);
}

uint64_t sub_100C5D2E4()
{
  v1 = *(v0 + 32);
  type metadata accessor for CloudStorageDatabase(0);
  sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase, &unk_1013BA760);
  *(v0 + 80) = Database.writeConnection.getter();

  return _swift_task_switch(sub_100C5D3A4, v1, 0);
}

uint64_t sub_100C5D3A4(__n128 a1)
{
  v2 = v1[10];
  if (v2)
  {
    v4 = v1[7];
    v3 = v1[8];
    v5 = v1[6];
    v6 = v1[4];
    v13 = v1[3];
    v14 = v1[5];
    v7 = v1[2];
    v8 = sub_101129930(&off_10160D078);
    sub_1002FFC04(&unk_10160D098);
    v9 = swift_task_alloc();
    v9[2] = v7;
    v9[3] = v6;
    v9[4] = v8;
    v9[5] = v2;
    v9[6] = v13;
    v9[7] = v14;
    (*(v4 + 104))(v3, enum case for Connection.TransactionMode.deferred(_:), v5);
    Connection.transaction(_:block:)();
    (*(v4 + 8))(v3, v5);
  }

  else
  {
    sub_10020223C();
    swift_allocError();
    *v11 = 2;
    *(v11 + 4) = 1;
    swift_willThrow();
  }

  v10 = v1[1];

  return v10();
}

void sub_100C5D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v176 = a6;
  v179 = a5;
  v196 = a4;
  v206 = a2;
  v177 = type metadata accessor for Insert();
  v171 = *(v177 - 8);
  __chkstk_darwin(v177);
  v11 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v13 = __chkstk_darwin(v12 - 8);
  v175 = &v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v188 = &v170 - v16;
  __chkstk_darwin(v15);
  v199 = &v170 - v17;
  v192 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v18 = *(v192 - 8);
  __chkstk_darwin(v192);
  v191 = &v170 - v19;
  v193 = type metadata accessor for Delete();
  v222 = *(v193 - 8);
  __chkstk_darwin(v193);
  v214 = &v170 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  __chkstk_darwin(v21 - 8);
  v204 = &v170 - v22;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v186 = &v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = v26;
  __chkstk_darwin(v25);
  v213 = &v170 - v27;
  v229 = type metadata accessor for Table();
  v28 = *(v229 - 8);
  v29 = __chkstk_darwin(v229);
  v178 = &v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v185 = &v170 - v32;
  v33 = __chkstk_darwin(v31);
  v190 = &v170 - v34;
  v35 = __chkstk_darwin(v33);
  v203 = &v170 - v36;
  __chkstk_darwin(v35);
  v221 = &v170 - v37;
  v216 = type metadata accessor for CloudKitCoordinator.Deletion();
  v38 = __chkstk_darwin(v216);
  v173 = &v170 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v189 = &v170 - v41;
  __chkstk_darwin(v40);
  v45 = *(a1 + 16);
  v197 = a3;
  v211 = v11;
  v210 = v45;
  v172 = v28;
  if (!v45)
  {
LABEL_48:
    v128 = v179;
    if (v179 >> 62)
    {
      goto LABEL_94;
    }

    v129 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_50:
    v130 = v185;
    if (!v129)
    {
      return;
    }

    v131 = 0;
    v222 = v128 & 0xC000000000000001;
    v223 = 0x800000010136FDB0;
    v215 = v128 & 0xFFFFFFFFFFFFFF8;
    v214 = (v128 + 32);
    v213 = (a3 + 56);
    v218 = (v172 + 32);
    v219 = (v172 + 16);
    v216 = (v171 + 8);
    v220 = (v172 + 8);
    *&v44 = 136315138;
    v212 = v44;
    v221 = v129;
    while (1)
    {
      if (v222)
      {
        v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v131 >= *(v215 + 16))
        {
          goto LABEL_93;
        }

        v136 = *&v214[8 * v131];
      }

      v137 = v136;
      if (__OFADD__(v131++, 1))
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        v129 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_50;
      }

      if (CKRecord.recordType.getter() == 0xD00000000000001CLL && v223 == v139)
      {
        break;
      }

      v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v128)
      {
        goto LABEL_63;
      }

      v217 = v7;
      v153 = CKRecord.recordType.getter();
      v155 = v154;
      if (*(a3 + 16))
      {
        v156 = v153;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v157 = Hasher._finalize()();
        v158 = a3;
        v159 = -1 << *(a3 + 32);
        v128 = v157 & ~v159;
        v160 = v213;
        if ((*&v213[(v128 >> 3) & 0xFFFFFFFFFFFFFF8] >> v128))
        {
          v161 = ~v159;
          while (1)
          {
            v162 = (*(v158 + 48) + 16 * v128);
            v163 = *v162 == v156 && v162[1] == v155;
            if (v163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v128 = (v128 + 1) & v161;
            if (((*&v160[(v128 >> 3) & 0xFFFFFFFFFFFFFF8] >> v128) & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_86;
        }
      }

      else
      {
        v158 = a3;
      }

LABEL_81:

      if (qword_101694DE0 != -1)
      {
        swift_once();
      }

      v164 = type metadata accessor for Logger();
      sub_1000076D4(v164, qword_10177BEC0);
      v165 = v137;
      v166 = Logger.logObject.getter();
      v167 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v166, v167))
      {

LABEL_86:
        v7 = v217;
        a3 = v158;
        v11 = v211;
        goto LABEL_53;
      }

      v128 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v228 = v132;
      *v128 = v212;
      v133 = CKRecord.recordType.getter();
      v135 = sub_1000136BC(v133, v134, &v228);

      *(v128 + 4) = v135;
      v11 = v211;
      _os_log_impl(&_mh_execute_header, v166, v167, "Unable to find table for %s", v128, 0xCu);
      sub_100007BAC(v132);
      a3 = v197;

      v7 = v217;
LABEL_53:
      if (v131 == v221)
      {
        return;
      }
    }

LABEL_63:
    v140 = v7;
    if (qword_101694888 != -1)
    {
      swift_once();
    }

    v141 = v229;
    v142 = sub_1000076D4(v229, qword_10177B110);
    v143 = v178;
    (*v219)(v178, v142, v141);
    (*v218)(v130, v143, v141);
    v145 = CKRecord.recordType.getter();
    v146 = v144;
    if ((v145 != 0xD00000000000001CLL || v223 != v144) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100C61C80();
      swift_allocError();
      *v169 = v145;
      v169[1] = v146;
      swift_willThrow();

      (*v220)(v130, v229);
      return;
    }

    sub_100C5F2A4(v130, v137, v11);
    if (v140)
    {
      (*v220)(v130, v229);

      return;
    }

    Connection.run(_:)();
    v7 = 0;
    v147 = type metadata accessor for TaskPriority();
    v148 = v175;
    (*(*(v147 - 8) + 56))(v175, 1, 1, v147);
    v149 = sub_10003118C(&qword_1016B9540, type metadata accessor for CloudStorageStore, &unk_1013E3008);
    v150 = swift_allocObject();
    v151 = v206;
    v150[2] = v206;
    v150[3] = v149;
    v150[4] = v137;
    v150[5] = v151;
    v150[6] = v176;
    swift_retain_n();
    v128 = v137;
    v152 = v148;
    v130 = v185;
    sub_100A838D4(0, 0, v152, &unk_1013E3070, v150);

    (*v216)(v11, v177);
    (*v220)(v130, v229);
    goto LABEL_53;
  }

  v223 = &v170 - v42;
  v46 = 0;
  v48 = *(v43 + 16);
  v47 = v43 + 16;
  v219 = v48;
  v208 = a1 + ((*(v47 + 64) + 32) & ~*(v47 + 64));
  v220 = 0x800000010136FDB0;
  v215 = a3 + 56;
  v209 = (v47 - 8);
  v202 = (v28 + 16);
  v201 = (v28 + 32);
  v200 = (v24 + 48);
  v198 = (v24 + 32);
  v181 = (v18 + 8);
  *&v212 = v28 + 8;
  v180 = v24 + 16;
  v183 = (v222 + 8);
  v182 = v24;
  v184 = (v24 + 8);
  v207 = *(v47 + 56);
  *&v44 = 136315138;
  v174 = v44;
  v205 = v23;
  v218 = v47;
  while (1)
  {
    v222 = v46;
    v50 = v223;
    v219();
    if (CloudKitCoordinator.Deletion.recordType.getter() == 0xD00000000000001CLL && v220 == v51)
    {
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v52 & 1) == 0)
      {
        v94 = CloudKitCoordinator.Deletion.recordType.getter();
        v96 = v95;
        if (*(a3 + 16) && (v97 = v94, Hasher.init(_seed:)(), String.hash(into:)(), v98 = Hasher._finalize()(), v99 = -1 << *(a3 + 32), v100 = v98 & ~v99, ((*(v215 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) != 0))
        {
          v101 = ~v99;
          while (1)
          {
            v102 = (*(a3 + 48) + 16 * v100);
            v103 = *v102 == v97 && v102[1] == v96;
            if (v103 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v100 = (v100 + 1) & v101;
            if (((*(v215 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
            {
              goto LABEL_34;
            }
          }

          (*v209)(v50, v216);
        }

        else
        {
LABEL_34:
          v104 = a3;

          if (qword_101694DE0 != -1)
          {
            swift_once();
          }

          v105 = type metadata accessor for Logger();
          sub_1000076D4(v105, qword_10177BEC0);
          v106 = v173;
          v107 = v50;
          v108 = v216;
          (v219)(v173, v107, v216);
          v109 = Logger.logObject.getter();
          v110 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v109, v110))
          {

            v127 = *v209;
            (*v209)(v106, v108);
            v127(v223, v108);
            v11 = v211;
            v23 = v205;
            a3 = v104;
            goto LABEL_4;
          }

          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v228 = v112;
          *v111 = v174;
          v113 = CloudKitCoordinator.Deletion.recordType.getter();
          v114 = v106;
          v116 = v115;
          v217 = v7;
          v117 = *v209;
          (*v209)(v114, v216);
          v118 = sub_1000136BC(v113, v116, &v228);
          a3 = v197;

          *(v111 + 4) = v118;
          _os_log_impl(&_mh_execute_header, v109, v110, "Unable to find table for %s", v111, 0xCu);
          sub_100007BAC(v112);

          v119 = v216;

          v117(v223, v119);
          v7 = v217;
          v11 = v211;
        }

        v23 = v205;
        goto LABEL_4;
      }
    }

    if (qword_101694888 != -1)
    {
      swift_once();
    }

    v53 = v229;
    v54 = sub_1000076D4(v229, qword_10177B110);
    v55 = v203;
    (*v202)(v203, v54, v53);
    (*v201)(v221, v55, v53);
    v56 = CloudKitCoordinator.Deletion.recordID.getter();
    v57 = [v56 recordName];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v204;
    UUID.init(uuidString:)();

    if ((*v200)(v58, 1, v23) == 1)
    {
      v59 = a3;
      sub_10000B3A8(v58, &qword_1016980D0, &unk_10138F3B0);
      v60 = v216;
      if (qword_101694DE0 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      sub_1000076D4(v61, qword_10177BEC0);
      v62 = v189;
      (v219)(v189, v223, v60);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        v228 = v195;
        *v65 = v174;
        v66 = CloudKitCoordinator.Deletion.recordID.getter();
        v67 = [v66 recordName];

        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v62;
        v71 = v70;

        v217 = v7;
        v72 = *v209;
        (*v209)(v69, v60);
        v73 = v72;
        v74 = sub_1000136BC(v68, v71, &v228);
        a3 = v197;

        *(v65 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v63, v64, "Record name is not a UUID: %s", v65, 0xCu);
        sub_100007BAC(v195);

        v23 = v205;

        (*v212)(v221, v229);
        v73(v223, v60);
        v7 = v217;
      }

      else
      {

        v49 = *v209;
        (*v209)(v62, v60);
        (*v212)(v221, v229);
        v49(v223, v60);
        a3 = v59;
      }

      v11 = v211;
      goto LABEL_4;
    }

    v195 = *v198;
    (v195)(v213, v58, v23);
    v75 = v182;
    if (qword_101694898 != -1)
    {
      swift_once();
    }

    v76 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v76, qword_10177B140);
    v77 = v191;
    == infix<A>(_:_:)();
    v78 = v190;
    v79 = v229;
    QueryType.filter(_:)();
    (*v181)(v77, v192);
    QueryType.delete()();
    v80 = *v212;
    (*v212)(v78, v79);
    v82 = CloudKitCoordinator.Deletion.recordType.getter();
    v83 = v81;
    if ((v82 != 0xD00000000000001CLL || v220 != v81) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      break;
    }

    Connection.run(_:)();
    if (v7)
    {
      goto LABEL_89;
    }

    v194 = v80;
    v217 = 0;
    v84 = type metadata accessor for TaskPriority();
    v85 = *(v84 - 8);
    v86 = v199;
    (*(v85 + 56))(v199, 1, 1, v84);
    v87 = v186;
    (*(v75 + 16))(v186, v213, v23);
    v88 = sub_10003118C(&qword_1016B9540, type metadata accessor for CloudStorageStore, &unk_1013E3008);
    v89 = (*(v75 + 80) + 40) & ~*(v75 + 80);
    v90 = swift_allocObject();
    v91 = v206;
    v90[2] = v206;
    v90[3] = v88;
    v90[4] = v91;
    (v195)(v90 + v89, v87, v23);
    v92 = v188;
    sub_1000D2A70(v86, v188, &qword_101698C00, &qword_10138B570);
    v93 = (*(v85 + 48))(v92, 1, v84);
    swift_retain_n();

    if (v93 == 1)
    {
      sub_10000B3A8(v92, &qword_101698C00, &qword_10138B570);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v85 + 8))(v92, v84);
    }

    v120 = v197;
    v121 = v90[2];
    swift_unknownObjectRetain();

    v7 = v217;
    v122 = v223;
    if (v121)
    {
      swift_getObjectType();
      v123 = dispatch thunk of Actor.unownedExecutor.getter();
      v125 = v124;
      swift_unknownObjectRelease();
    }

    else
    {
      v123 = 0;
      v125 = 0;
    }

    v11 = v211;
    sub_10000B3A8(v199, &qword_101698C00, &qword_10138B570);
    v126 = swift_allocObject();
    *(v126 + 16) = &unk_1013E3080;
    *(v126 + 24) = v90;
    if (v125 | v123)
    {
      v224 = 0;
      v225 = 0;
      v226 = v123;
      v227 = v125;
    }

    a3 = v120;
    swift_task_create();

    (*v183)(v214, v193);
    v23 = v205;
    (*v184)(v213, v205);
    v194(v221, v229);
    (*v209)(v122, v216);
LABEL_4:
    v46 = v222 + 1;
    if (v222 + 1 == v210)
    {
      goto LABEL_48;
    }
  }

  sub_100C61C80();
  swift_allocError();
  *v168 = v82;
  v168[1] = v83;
  swift_willThrow();
LABEL_89:
  (*v183)(v214, v193);
  (*v184)(v213, v23);
  v80(v221, v229);
  (*v209)(v50, v216);
}

uint64_t sub_100C5EFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for CloudStorageStore.State(0);
  v5[5] = swift_task_alloc();

  return _swift_task_switch(sub_100C5F084, a4, 0);
}

uint64_t sub_100C5F084()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  swift_storeEnumTagMultiPayload();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_100C5F178;
  v5 = v0[5];

  return sub_100C5C268(v5);
}

uint64_t sub_100C5F178()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  sub_100C62C80(v1, type metadata accessor for CloudStorageStore.State);

  v2 = *(v4 + 8);

  return v2();
}

void sub_100C5F2A4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for OnConflict();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalFindableAccessoryRecord(0);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015927C(a2, v13);
  if (!v3)
  {
    v48 = a3;
    v49 = a1;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for PeripheralConnectionMaterial(0);
    sub_10003118C(&unk_1016982D0, type metadata accessor for PeripheralConnectionMaterial, &unk_101394F80);
    v14 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v52 = 0;
    v46 = v15;
    v47 = v14;

    v16 = &v13[v11[8]];
    v17 = v10;
    v19 = *v16;
    v18 = v16[1];
    if (v18 >> 60 == 15)
    {
      v20 = 0;
    }

    else
    {
      v20 = *v16;
    }

    v21 = 0xF000000000000000;
    if (v18 >> 60 != 15)
    {
      v21 = v18;
    }

    v38 = v21;
    v39 = v20;
    v22 = *(v8 + 104);
    v41 = v17;
    v45 = v7;
    v22();
    sub_1000BC4D4(&qword_101699D48, &unk_1013B6E00);
    type metadata accessor for Setter();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1013E2E80;
    v40 = v23;
    v42 = v18;
    v43 = v19;
    sub_10002E98C(v19, v18);
    if (qword_101694898 != -1)
    {
      swift_once();
    }

    v44 = v8;
    v24 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
    sub_1000076D4(v24, qword_10177B140);
    type metadata accessor for UUID();
    <- infix<A>(_:_:)();
    if (qword_1016948A0 != -1)
    {
      swift_once();
    }

    v25 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
    sub_1000076D4(v25, qword_10177B158);
    v26 = &v13[v11[5]];
    v27 = v26[1];
    v50 = *v26;
    v51 = v27;

    <- infix<A>(_:_:)();

    if (qword_1016948A8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v25, qword_10177B170);
    v28 = &v13[v11[6]];
    v29 = v28[1];
    v50 = *v28;
    v51 = v29;

    <- infix<A>(_:_:)();

    if (qword_1016948B0 != -1)
    {
      swift_once();
    }

    v30 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
    sub_1000076D4(v30, qword_10177B188);
    v31 = &v13[v11[7]];
    v32 = v31[1];
    v50 = *v31;
    v51 = v32;
    sub_100017D5C(v50, v32);
    <- infix<A>(_:_:)();
    sub_100016590(v50, v51);
    if (qword_1016948B8 != -1)
    {
      swift_once();
    }

    v33 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
    sub_1000076D4(v33, qword_10177B1A0);
    v50 = v39;
    v51 = v38;
    <- infix<A>(_:_:)();
    if (qword_1016948C0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v24, qword_10177B1B8);
    <- infix<A>(_:_:)();
    if (qword_1016948D0 != -1)
    {
      swift_once();
    }

    v34 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
    sub_1000076D4(v34, qword_10177B1E8);
    v50 = *&v13[v11[10]];
    <- infix<A>(_:_:)();
    if (qword_1016948C8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v34, qword_10177B1D0);
    v50 = *&v13[v11[11]];
    <- infix<A>(_:_:)();
    if (qword_1016948D8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v34, qword_10177B200);
    v50 = *&v13[v11[12]];
    <- infix<A>(_:_:)();
    if (qword_1016948E0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v30, qword_10177B218);
    v50 = v47;
    v51 = v46;
    <- infix<A>(_:_:)();
    if (qword_1016948E8 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v30, qword_10177B230);
    v50 = P256PrivateKey.data.getter();
    v51 = v35;
    <- infix<A>(_:_:)();
    sub_100016590(v50, v51);
    if (qword_1016948F0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v30, qword_10177B248);
    v50 = SymmetricKey256.data.getter();
    v51 = v36;
    <- infix<A>(_:_:)();
    sub_100016590(v50, v51);
    type metadata accessor for Table();
    v37 = v41;
    QueryType.insert(or:_:)();

    sub_100006654(v43, v42);
    sub_100016590(v47, v46);
    (*(v44 + 8))(v37, v45);
    sub_100C62C80(v13, type metadata accessor for LocalFindableAccessoryRecord);
  }
}

uint64_t sub_100C5FBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[24] = type metadata accessor for CloudStorageStore.State(0);
  v5[25] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v5[26] = swift_task_alloc();
  v7 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_100C5FD0C, a5, 0);
}

uint64_t sub_100C5FD0C()
{
  sub_10015927C(*(v0 + 176), *(v0 + 232));
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_100C5FE20;
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);

  return sub_100C57B00(v3, v2);
}

uint64_t sub_100C5FE20()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 184);
  if (v0)
  {
    v4 = sub_100C604BC;
  }

  else
  {
    v4 = sub_100C5FF4C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100C5FF4C()
{
  v18 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);
  v3 = (*(*(v0 + 224) + 48))(v2, 1, v1);
  v4 = *(v0 + 232);
  if (v3 == 1)
  {
    sub_100C62C80(*(v0 + 232), type metadata accessor for LocalFindableAccessoryRecord);
    sub_10000B3A8(v2, &qword_1016A9A30, &unk_1013BD120);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
  }

  else
  {
    *(v0 + 80) = v1;
    *(v0 + 88) = sub_10003118C(&qword_1016B9538, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138FB50);
    v5 = sub_1000280DC((v0 + 56));
    sub_100C63080(v2, v5, type metadata accessor for LocalFindableAccessoryRecord);
    sub_100C62C80(v4, type metadata accessor for LocalFindableAccessoryRecord);
  }

  v6 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v6;
  *(v0 + 48) = *(v0 + 88);
  sub_1000D2A70(v0 + 16, v0 + 136, &qword_1016B9558, &qword_1013E30B0);
  if (*(v0 + 160))
  {
    v7 = *(v0 + 200);
    sub_100031694((v0 + 136), v0 + 96);
    sub_10001F280(v0 + 96, v7);
    swift_storeEnumTagMultiPayload();
    v8 = swift_task_alloc();
    *(v0 + 256) = v8;
    *v8 = v0;
    v8[1] = sub_100C602E4;
    v9 = *(v0 + 200);

    return sub_100C5C268(v9);
  }

  else
  {
    sub_10000B3A8(v0 + 136, &qword_1016B9558, &qword_1013E30B0);
    if (qword_101694DE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177BEC0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1000136BC(0xD000000000000019, 0x8000000101369890, &v17);
      _os_log_impl(&_mh_execute_header, v12, v13, "Unable to convert %s to CloudBacked!", v14, 0xCu);
      sub_100007BAC(v15);
    }

    sub_10000B3A8(v0 + 16, &qword_1016B9558, &qword_1013E30B0);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100C602E4()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 184);

  sub_100C62C80(v1, type metadata accessor for CloudStorageStore.State);

  return _swift_task_switch(sub_100C60424, v2, 0);
}

uint64_t sub_100C60424()
{
  sub_100007BAC((v0 + 96));
  sub_10000B3A8(v0 + 16, &qword_1016B9558, &qword_1013E30B0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C604BC()
{
  sub_100C62C80(*(v0 + 232), type metadata accessor for LocalFindableAccessoryRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C60578()
{
  if (qword_101694DE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177BEC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Purging DB", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 112);
  *(v0 + 24) = v6;

  return _swift_task_switch(sub_100C6069C, v6, 0);
}

uint64_t sub_100C6069C()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase, &unk_1013BA760);
  Database.purge()();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100C60760(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = CKRecord.recordType.getter();
  v7 = sub_10111E5C0(v5, v6);

  if (v7)
  {
    if (qword_101694DE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177BEC0);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      v14 = CKRecord.recordType.getter();
      v16 = sub_1000136BC(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unexpected recordType: %{public}s", v12, 0xCu);
      sub_100007BAC(v13);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = type metadata accessor for LocalFindableAccessoryRecord(0);
    *(a2 + 32) = sub_10003118C(&qword_1016B9538, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138FB50);
    v17 = sub_1000280DC(a2);
    sub_10015927C(a1, v17);
    if (v2)
    {
      sub_100101758(a2);
    }
  }
}

uint64_t sub_100C60968()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001BBA4C;

  return sub_100C5C904();
}

uint64_t sub_100C609F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C5CA6C(a1);
}

uint64_t sub_100C60A88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100C6234C(a1, a2);
}

uint64_t sub_100C60B40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100C5D1D4(a1, a2);
}

uint64_t sub_100C60C04()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return _swift_task_switch(sub_100C60C28, v1, 0);
}

uint64_t sub_100C60C28()
{
  type metadata accessor for CloudStorageDatabase(0);
  sub_10003118C(&qword_1016A9008, type metadata accessor for CloudStorageDatabase, &unk_1013BA760);
  Database.startup()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100C60CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100C60558();
}

uint64_t sub_100C60D90@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for SymmetricKey256();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v49 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for P256PrivateKey();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PeripheralConnectionMaterial(0);
  __chkstk_darwin(v51);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694898 != -1)
  {
    swift_once();
  }

  v10 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v10, qword_10177B140);
  v11 = type metadata accessor for UUID();
  Row.subscript.getter();
  if (qword_1016948C0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v10, qword_10177B1B8);
  v12 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v57 = v12[9];
  v62 = v11;
  Row.subscript.getter();
  if (qword_1016948B0 != -1)
  {
    swift_once();
  }

  v55 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v55, qword_10177B188);
  Row.subscript.getter();
  v13 = v60;
  v14 = v61;
  v58 = v60;
  v59 = v61;
  sub_1000E0A3C();
  v56 = DataProtocol.isNull.getter();
  if (v56)
  {
    sub_100016590(v13, v14);
    sub_100C61C80();
    swift_allocError();
    *v15 = 0;
    v15[1] = 0;
    swift_willThrow();
    v16 = type metadata accessor for Row();
    (*(*(v16 - 8) + 8))(a1, v16);
LABEL_31:
    v39 = v62;
    v40 = *(*(v62 - 8) + 8);
    v40(a2, v62);
    if ((v56 & 1) == 0)
    {

      sub_100016590(*&a2[v12[7]], *&a2[v12[7] + 8]);
      sub_100006654(*&a2[v12[8]], *&a2[v12[8] + 8]);
    }

    return (v40)(&a2[v57], v39);
  }

  v17 = Data.trimmed.getter();
  v19 = v18;
  sub_100016590(v13, v14);
  v20 = &a2[v12[7]];
  *v20 = v17;
  *(v20 + 1) = v19;
  if (qword_1016948B8 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v21, qword_10177B1A0);
  Row.subscript.getter();
  v22 = v61;
  if (v61 >> 60 == 15)
  {
    v23 = 0;
    v24 = 0xF000000000000000;
  }

  else
  {
    v25 = v60;
    if (DataProtocol.isNull.getter())
    {
      v23 = 0;
      v24 = 0xF000000000000000;
    }

    else
    {
      v23 = Data.trimmed.getter();
      v24 = v26;
    }

    sub_100006654(v25, v22);
  }

  v27 = &a2[v12[8]];
  *v27 = v23;
  *(v27 + 1) = v24;
  if (qword_1016948A0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v28, qword_10177B158);
  Row.subscript.getter();
  v29 = v61;
  v30 = &a2[v12[5]];
  *v30 = v60;
  *(v30 + 1) = v29;
  if (qword_1016948A8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177B170);
  Row.subscript.getter();
  v31 = v61;
  v32 = &a2[v12[6]];
  *v32 = v60;
  *(v32 + 1) = v31;
  if (qword_1016948D0 != -1)
  {
    swift_once();
  }

  v33 = sub_1000BC4D4(&qword_101699D30, &qword_1013BA850);
  sub_1000076D4(v33, qword_10177B1E8);
  Row.subscript.getter();
  *&a2[v12[10]] = v60;
  v34 = v55;
  if (qword_1016948C8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177B1D0);
  Row.subscript.getter();
  *&a2[v12[11]] = v60;
  if (qword_1016948D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v33, qword_10177B200);
  Row.subscript.getter();
  *&a2[v12[12]] = v60;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (qword_1016948E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v34, qword_10177B218);
  Row.subscript.getter();
  v35 = v60;
  v36 = v61;
  sub_10003118C(&qword_101698310, type metadata accessor for PeripheralConnectionMaterial, &unk_101394FA8);
  v37 = v52;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v37)
  {
    v38 = type metadata accessor for Row();
    (*(*(v38 - 8) + 8))(a1, v38);
    sub_100016590(v35, v36);

    goto LABEL_31;
  }

  sub_100016590(v35, v36);
  sub_100C63080(v9, &a2[v12[13]], type metadata accessor for PeripheralConnectionMaterial);
  if (qword_1016948E8 != -1)
  {
    swift_once();
  }

  v42 = v55;
  sub_1000076D4(v55, qword_10177B230);
  Row.subscript.getter();
  v43 = v50;
  P256PrivateKey.init(data:)();
  (*(v53 + 32))(&a2[v12[14]], v43, v54);
  if (qword_1016948F0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v42, qword_10177B248);
  Row.subscript.getter();
  v44 = v49;
  SymmetricKey256.init(data:)();
  v45 = type metadata accessor for Row();
  (*(*(v45 - 8) + 8))(a1, v45);
  return (*(v47 + 32))(&a2[v12[15]], v44, v48);
}
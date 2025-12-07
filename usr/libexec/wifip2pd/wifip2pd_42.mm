uint64_t sub_10034E8A0(char a1, uint64_t *a2)
{
  v3 = *a2;
  swift_beginAccess();
  v17 = a1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v13 = v4;
  v14 = _s8InstanceCMa_0(255, v4, v5, v6);
  v15 = v5;
  WitnessTable = swift_getWitnessTable("]\r\n", v14);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v13);
  Dictionary.subscript.getter();
  v7 = v18;
  if (v18)
  {
    v8 = v19;
    v9 = v18;
    swift_endAccess();
    sub_100058BA4(v7, v8);
    v10 = &v9[qword_10059B890];
    swift_beginAccess();
    v11 = type metadata accessor for NANPublish.Configuration(0);
    if (v10[*(v11 + 84) + 2] && v10[*(v11 + 84) + 2] != 1)
    {

      LOBYTE(v7) = 1;
    }

    else
    {
      LOBYTE(v7) = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    swift_endAccess();
  }

  return v7 & 1;
}

uint64_t sub_10034EA78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v20 = *a2;
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = __chkstk_darwin();
  v12 = &v18 - v11;
  v13 = *(v5 + 16);
  v13(&v18 - v11, a1, v4, v10);
  v19 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
  (v13)(v9, a1, v4);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v16 = v20;
  v15[2] = *(v20 + 80);
  v15[3] = *(v16 + 88);
  v15[4] = v14;
  *v7 = 100;
  (*(v5 + 104))(v7, enum case for DispatchTimeInterval.milliseconds(_:), v4);
  type metadata accessor for P2PTimer(0);
  swift_allocObject();
  result = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v12, v19, v9, v7, sub_10036C800, v15);
  *v21 = result;
  return result;
}

void sub_10034ECC8()
{
  v1 = v0;
  v2 = *v0;
  v97 = sub_10005DC58(&qword_1005973F8, &unk_1004B16A0);
  __chkstk_darwin();
  v98 = (&v78 - v3);
  v4 = v2[11];
  v93 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v90 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v89 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v78 - v6;
  v92 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  __chkstk_darwin();
  v95 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchTime();
  v8 = *(v96 - 8);
  __chkstk_darwin();
  v87 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v78 - v10;
  v11 = type metadata accessor for DispatchTimeInterval();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v78 - v15;
  v17 = *(v1 + v2[38]);
  swift_unownedRetainStrong();
  LOBYTE(v2) = sub_10040E40C();

  if ((v2 & 1) == 0)
  {
    swift_unownedRetainStrong();
    sub_10040E9C0(v16);

    *v14 = 3;
    v18 = *(v12 + 104);
    LODWORD(v82) = enum case for DispatchTimeInterval.seconds(_:);
    v83 = v12 + 104;
    v81 = v18;
    v18(v14);
    v19 = static DispatchTimeInterval.< infix(_:_:)(v16, v14);
    v20 = *(v12 + 8);
    v20(v14, v11);
    v84 = v20;
    v20(v16, v11);
    if (!v19)
    {
      v21 = type metadata accessor for P2PTimer(0);
      v85 = v4;
      v22 = v94;
      v78 = v21;
      variable initialization expression of AWDLPeer.lastUpdated();
      v23 = qword_100596CC8;
      swift_beginAccess();
      v24 = *(v8 + 16);
      v86 = v1;
      v79 = v23;
      v25 = v1 + v23;
      v26 = v87;
      v27 = v8;
      v28 = v96;
      v24(v87, v25, v96);
      DispatchTime.distance(to:)();
      v80 = v27;
      v29 = *(v27 + 8);
      v29(v26, v28);
      v29(v22, v28);
      *v14 = 5;
      v81(v14, v82, v11);
      LODWORD(v29) = static DispatchTimeInterval.< infix(_:_:)(v16, v14);
      v30 = v84;
      v84(v14, v11);
      v30(v16, v11);
      LODWORD(v84) = v29;
      LODWORD(v83) = v29 ^ 1;
      v31 = swift_allocObject();
      v87 = v31;
      *(v31 + 16) = &_swiftEmptyDictionarySingleton;
      v82 = v31 + 16;
      swift_unownedRetainStrong();
      v32 = *(*v17 + 96);
      swift_beginAccess();
      v33 = v90;
      v34 = *(v90 + 16);
      v35 = v88;
      v36 = AssociatedTypeWitness;
      v34(v88, v17 + v32, AssociatedTypeWitness);

      v37 = v93;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v39 = (*(AssociatedConformanceWitness + 32))(v36, AssociatedConformanceWitness);
      v40 = *(v33 + 8);
      v40(v35, v36);
      swift_unownedRetainStrong();
      v41 = *(*v17 + 96);
      swift_beginAccess();
      v42 = v17 + v41;
      v43 = v89;
      v34(v89, v42, v36);

      v44 = (*(AssociatedConformanceWitness + 24))(v36, AssociatedConformanceWitness);
      v40(v43, v36);
      swift_unownedRetainStrong();
      v45 = WiFiInterface.capabilities.getter();

      v100 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
      v99[0] = v45;
      sub_1000C2A14();

      LOBYTE(v43) = dispatch thunk of SetAlgebra.isSuperset(of:)();

      if (v43)
      {
        v46 = 0;
      }

      else
      {
        v46 = *NANAttribute.CustomDeviceInformation.Flags.doesNotSupportSimultaneousDualBand.unsafeMutableAddressor();
      }

      v47 = v95;
      NANAttribute.CustomDeviceInformation.CustomAttributes.init()(v95 + *(v92 + 28));
      *v47 = v39;
      *(v47 + 1) = v44;
      *(v47 + 4) = v46;
      v48 = qword_100596C90;
      v49 = v86;
      swift_beginAccess();
      v50 = *(v49 + v48);
      v51 = v85;
      v53 = _s17InitiatorInstanceCMa(0, v37, v85, v52);

      WitnessTable = swift_getWitnessTable(byte_1004B0F38, v53);
      v55 = v83;
      v56 = v87;
      sub_10034F810(v50, v83 & 1, v87, v47, v49, v53, WitnessTable);

      v57 = qword_100596C98;
      swift_beginAccess();
      v58 = *(v49 + v57);
      v59 = v49;
      v61 = _s17ResponderInstanceCMa(0, v37, v51, v60);

      v62 = swift_getWitnessTable(aQ_10, v61);
      sub_10034F810(v58, v55 & 1, v56, v47, v49, v61, v62);

      if (v84)
      {
        sub_10036D24C(v47, type metadata accessor for NANAttribute.CustomDeviceInformation);
LABEL_18:
      }

      else
      {
        v63 = v82;
        swift_beginAccess();
        v64 = *v63 + 64;
        v65 = 1 << *(*v63 + 32);
        v66 = -1;
        if (v65 < 64)
        {
          v66 = ~(-1 << v65);
        }

        v67 = v66 & *(*v63 + 64);
        v68 = (v65 + 63) >> 6;
        v93 = *v63;
        swift_bridgeObjectRetain_n();
        for (i = 0; v67; i = v70)
        {
          v70 = i;
LABEL_15:
          v71 = __clz(__rbit64(v67)) | (v70 << 6);
          v72 = *(v93 + 56);
          v73 = *(v93 + 48) + 6 * v71;
          v74 = *(v73 + 4);
          v75 = v72 + *(*(sub_10005DC58(&qword_100597400, &unk_1004B4D20) - 8) + 72) * v71;
          LODWORD(v71) = *v73;
          v49 = v98;
          sub_100012400(v75, v98 + *(v97 + 48), &qword_100597400, &unk_1004B4D20);
          *v49 = v71;
          v49[2] = v74;
          v59 = v86;
          sub_100350AA8(v49, v86);
          v67 &= v67 - 1;
          sub_100016290(v49, &qword_1005973F8, &unk_1004B16A0);
        }

        while (1)
        {
          v70 = i + 1;
          if (__OFADD__(i, 1))
          {
            break;
          }

          if (v70 >= v68)
          {

            v76 = v94;
            variable initialization expression of AWDLPeer.lastUpdated();
            sub_10036D24C(v95, type metadata accessor for NANAttribute.CustomDeviceInformation);
            v77 = v79;
            swift_beginAccess();
            (*(v80 + 40))(v59 + v77, v76, v96);
            swift_endAccess();
            goto LABEL_18;
          }

          v67 = *(v64 + 8 * v70);
          ++i;
          if (v67)
          {
            goto LABEL_15;
          }
        }

        __break(1u);

        sub_100016290(v49, &qword_1005973F8, &unk_1004B16A0);
        __break(1u);
      }
    }
  }
}

uint64_t sub_10034F810(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(*a5 + 88);
  v8 = *(a7 + 8);
  v14[0] = *(*a5 + 80);
  v14[1] = a6;
  v14[2] = v7;
  v14[3] = v8;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v14);
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter();
  v10 = v9;
  v14[0] = v9;
  v11 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v11);
  Sequence.forEach(_:)();

  v14[0] = v10;

  v14[0] = Sequence.filter(_:)();
  v12 = type metadata accessor for Array();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v12);
  Sequence.forEach(_:)();
}

uint64_t sub_10034FA18(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v120 = a4;
  v140 = a3;
  v129 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v123 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v114 - v11;
  __chkstk_darwin();
  v121 = &v114 - v12;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v127 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v114 - v14;
  __chkstk_darwin();
  v118 = &v114 - v15;
  sub_10005DC58(&qword_100597408, &qword_1004B16B0);
  __chkstk_darwin();
  v124 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v125 = &v114 - v17;
  __chkstk_darwin();
  v117 = &v114 - v18;
  __chkstk_darwin();
  v126 = &v114 - v19;
  __chkstk_darwin();
  v128 = &v114 - v20;
  __chkstk_darwin();
  v137 = &v114 - v21;
  v22 = sub_10005DC58(&qword_100597400, &unk_1004B4D20);
  v23 = *(v22 - 8);
  v141 = v22;
  v142 = v23;
  __chkstk_darwin();
  v116 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v114 = &v114 - v25;
  __chkstk_darwin();
  v119 = &v114 - v26;
  __chkstk_darwin();
  v28 = &v114 - v27;
  __chkstk_darwin();
  v30 = &v114 - v29;
  v136 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  __chkstk_darwin();
  v32 = &v114 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *a1;
  LODWORD(v139) = sub_10036DCD0(a5, a6);
  v34 = a6 + 24;
  v35 = *(a6 + 24);
  v138 = v35(a5, a6);
  v36 = v35(a5, a6);
  v135 = v32;
  sub_10036D334(v140, v32, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v133 = a5;
  v134 = a6;
  v132 = v33;
  v37 = sub_10036DB68(a5, a6);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v143 = *a2;
  v39 = v143;
  *a2 = 0x8000000000000000;
  v41 = sub_100041DE8(v36 & 0xFFFFFFFFFFFFLL);
  v42 = *(v39 + 2);
  v43 = (v40 & 1) == 0;
  v44 = v42 + v43;
  if (__OFADD__(v42, v43))
  {
    __break(1u);
    goto LABEL_55;
  }

  LOBYTE(v45) = v40;
  if (*(v39 + 3) < v44)
  {
    sub_100312DB4(v44, isUniquelyReferenced_nonNull_native);
    v39 = v143;
    v46 = sub_100041DE8(v36 & 0xFFFFFFFFFFFFLL);
    if ((v45 & 1) == (v47 & 1))
    {
      v41 = v46;
      *a2 = v39;
      if (v45)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_68:
    sub_10036D24C(v135, type metadata accessor for NANAttribute.CustomDeviceInformation);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_58;
  }

  *a2 = v39;
  if (v40)
  {
    goto LABEL_9;
  }

LABEL_8:
  v48 = *(v141 + 12);
  sub_10036D334(v135, v30, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v30[v48] = v139 & 1;
  sub_1002DD924(v41, v36 & 0xFFFFFFFFFFFFLL, v30, v39);
  while (1)
  {
LABEL_9:
    v49 = *(v39 + 7);
    v140 = *(v142 + 72);
    v34 = v49 + v140 * v41 + *(v136 + 28);
    v50 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
    v41 = *(v50 + 44);
    v39 = *(v34 + v41);
    v51 = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + v41) = v39;
    v115 = v50;
    if ((v51 & 1) == 0)
    {
LABEL_55:
      v39 = sub_1001160AC(0, *(v39 + 2) + 1, 1, v39);
      *(v34 + v41) = v39;
    }

    v53 = *(v39 + 2);
    v52 = *(v39 + 3);
    if (v53 >= v52 >> 1)
    {
      v39 = sub_1001160AC((v52 > 1), v53 + 1, 1, v39);
      *(v34 + v41) = v39;
    }

    *(v39 + 2) = v53 + 1;
    v54 = &v39[8 * v53 - v53];
    *(v54 + 32) = v37;
    *(v54 + 34) = BYTE2(v37);
    *(v54 + 35) = BYTE3(v37);
    *(v54 + 36) = BYTE4(v37);
    *(v54 + 37) = BYTE5(v37);
    *(v54 + 38) = BYTE6(v37);
    v55 = *a2;
    swift_endAccess();
    v41 = v138;
    if (!*(v55 + 16))
    {
      goto LABEL_67;
    }

    v56 = sub_100041DE8(v138 & 0xFFFFFFFFFFFFLL);
    if ((v57 & 1) == 0)
    {
      goto LABEL_67;
    }

    v30 = &unk_1004B4D20;
    sub_100012400(*(v55 + 56) + v56 * v140, v28, &qword_100597400, &unk_1004B4D20);
    v58 = *(v28 + *(v141 + 12));
    sub_100016290(v28, &qword_100597400, &unk_1004B4D20);
    v37 = ((v58 | v139) & 1) != 0 ? (*(v134 + 56))(v133) ^ 1 : 0;
    swift_beginAccess();
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v143 = *a2;
    v59 = v143;
    *a2 = 0x8000000000000000;
    v28 = sub_100041DE8(v41 & 0xFFFFFFFFFFFFLL);
    v61 = *(v59 + 16);
    v62 = (v60 & 1) == 0;
    v63 = v61 + v62;
    if (!__OFADD__(v61, v62))
    {
      break;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    sub_10046CD30();
    v39 = v143;
    *a2 = v143;
    if ((v45 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  LOBYTE(v64) = v60;
  if (*(v59 + 24) >= v63)
  {
    v41 = v131;
    if (v45)
    {
      if ((v60 & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      sub_10046CD30();
      if ((v64 & 1) == 0)
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
    sub_100312DB4(v63, v45);
    v65 = sub_100041DE8(v41 & 0xFFFFFFFFFFFFLL);
    if ((v64 & 1) != (v66 & 1))
    {
      goto LABEL_68;
    }

    v28 = v65;
    v41 = v131;
    if ((v64 & 1) == 0)
    {
LABEL_61:
      sub_10036D24C(v135, type metadata accessor for NANAttribute.CustomDeviceInformation);
      (*(v142 + 56))(v137, 1, 1, v141);
      __break(1u);
      goto LABEL_62;
    }
  }

  v67 = v143;
  v68 = v28 * v140;
  v69 = v137;
  sub_10001CEA8(*(v143 + 56) + v28 * v140, v137, &qword_100597400, &unk_1004B4D20);
  v30 = v141;
  v70 = v142;
  v130 = *(v142 + 56);
  v131 = (v142 + 56);
  v130(v69, 0, 1, v141);
  *(v69 + *(v30 + 12)) = v37 & 1;
  v37 = v128;
  sub_100012400(v69, v128, &qword_100597408, &qword_1004B16B0);
  v36 = *(v70 + 48);
  v142 = v70 + 48;
  if ((v36)(v37, 1, v30) == 1)
  {
    sub_100016290(v37, &qword_100597408, &qword_1004B16B0);
    sub_10046935C(v28, v67);
  }

  else
  {
    v30 = &unk_1004B4D20;
    v71 = v37;
    v37 = v119;
    sub_10001CEA8(v71, v119, &qword_100597400, &unk_1004B4D20);
    sub_10001CEA8(v37, *(v67 + 56) + v68, &qword_100597400, &unk_1004B4D20);
  }

  v72 = v138;
  sub_100016290(v137, &qword_100597408, &qword_1004B16B0);
  *a2 = v67;
  swift_endAccess();
  if ((v139 & 1) == 0)
  {
    while (1)
    {
      swift_beginAccess();
      v45 = swift_isUniquelyReferenced_nonNull_native();
      v143 = *a2;
      v98 = v143;
      *a2 = 0x8000000000000000;
      v28 = sub_100041DE8(v72 & 0xFFFFFFFFFFFFLL);
      v100 = *(v98 + 16);
      v101 = (v99 & 1) == 0;
      v102 = v100 + v101;
      if (__OFADD__(v100, v101))
      {
        goto LABEL_57;
      }

      LOBYTE(v64) = v99;
      if (*(v98 + 24) >= v102)
      {
        if ((v45 & 1) == 0)
        {
          goto LABEL_63;
        }

        if (v99)
        {
          goto LABEL_50;
        }
      }

      else
      {
        sub_100312DB4(v102, v45);
        v103 = sub_100041DE8(v72 & 0xFFFFFFFFFFFFLL);
        if ((v64 & 1) != (v104 & 1))
        {
          goto LABEL_68;
        }

        v28 = v103;
        if (v64)
        {
          goto LABEL_50;
        }
      }

LABEL_64:
      sub_10036D24C(v135, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v130(v125, 1, 1, v141);
      __break(1u);
LABEL_65:
      sub_10046CD30();
      if ((v64 & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_39:
      v92 = v143;
      v37 = v28 * v140;
      v93 = v126;
      sub_10001CEA8(*(v143 + 56) + v28 * v140, v126, &qword_100597400, &unk_1004B4D20);
      v30 = v141;
      v130(v93, 0, 1, v141);
      sub_10036C8F0(v127, v93 + *(v136 + 28) + *(v115 + 40));
      v94 = v93;
      v95 = v117;
      sub_100012400(v94, v117, &qword_100597408, &qword_1004B16B0);
      if ((v36)(v95, 1, v30) == 1)
      {
        sub_100016290(v95, &qword_100597408, &qword_1004B16B0);
        sub_10046935C(v28, v92);
      }

      else
      {
        v30 = &unk_1004B4D20;
        v96 = v95;
        v97 = v114;
        sub_10001CEA8(v96, v114, &qword_100597400, &unk_1004B4D20);
        sub_10001CEA8(v97, *(v92 + 56) + v37, &qword_100597400, &unk_1004B4D20);
      }

      sub_100016290(v126, &qword_100597408, &qword_1004B16B0);
      *a2 = v92;
      swift_endAccess();

      v72 = v138;
    }
  }

  v73 = *(v120 + *(*v120 + 304));
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v74 = v121;
  sub_10040CD68(v72 & 0xFFFFFFFFFFFFLL, v121);
  v139 = v73;

  sub_100012400(v74 + *(v129 + 120), v41, &qword_10058F4D0, &qword_100491AB0);
  sub_10036D24C(v74, type metadata accessor for NANPeer);
  v75 = type metadata accessor for UUID();
  v76 = *(v75 - 8);
  v77 = *(v76 + 48);
  if (v77(v41, 1, v75) == 1)
  {
    v78 = v41;
    v41 = v36;
    v79 = v118;
    UUID.init()();
    v80 = v77(v78, 1, v75);
    v81 = v79;
    v36 = v41;
    if (v80 != 1)
    {
      sub_100016290(v78, &qword_10058F4D0, &qword_100491AB0);
    }
  }

  else
  {
    v81 = v118;
    (*(v76 + 32))(v118, v41, v75);
  }

  (*(v76 + 56))(v81, 0, 1, v75);
  v82 = v122;
  sub_10040CD68(v72 & 0xFFFFFFFFFFFFLL, v122);
  v64 = v129;
  sub_10036C8F0(v81, v82 + *(v129 + 120));
  sub_10040E430(v82, v72 & 0xFFFFFFFFFFFFLL);

  swift_unownedRetainStrong();
  v83 = v123;
  sub_10040CD68(v72 & 0xFFFFFFFFFFFFLL, v123);
  sub_100012400(v83 + *(v64 + 120), v127, &qword_10058F4D0, &qword_100491AB0);
  sub_10036D24C(v83, type metadata accessor for NANPeer);
  swift_beginAccess();
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *a2;
  v85 = v143;
  *a2 = 0x8000000000000000;
  v28 = sub_100041DE8(v72 & 0xFFFFFFFFFFFFLL);
  v87 = *(v85 + 16);
  v88 = (v86 & 1) == 0;
  v89 = v87 + v88;
  if (!__OFADD__(v87, v88))
  {
    LOBYTE(v64) = v86;
    if (*(v85 + 24) >= v89)
    {
      if ((v84 & 1) == 0)
      {
        goto LABEL_65;
      }

      if (v86)
      {
        goto LABEL_39;
      }
    }

    else
    {
      sub_100312DB4(v89, v84);
      v90 = sub_100041DE8(v72 & 0xFFFFFFFFFFFFLL);
      if ((v64 & 1) != (v91 & 1))
      {
        goto LABEL_68;
      }

      v28 = v90;
      if (v64)
      {
        goto LABEL_39;
      }
    }

LABEL_66:
    sub_10036D24C(v135, type metadata accessor for NANAttribute.CustomDeviceInformation);
    v130(v126, 1, 1, v141);
    __break(1u);
LABEL_67:
    sub_10036D24C(v135, type metadata accessor for NANAttribute.CustomDeviceInformation);
    __break(1u);
    goto LABEL_68;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  sub_10046CD30();
  if ((v64 & 1) == 0)
  {
    goto LABEL_64;
  }

LABEL_50:
  v105 = v36;
  v106 = v143;
  v107 = v28 * v140;
  v108 = v125;
  sub_10001CEA8(*(v143 + 56) + v28 * v140, v125, &qword_100597400, &unk_1004B4D20);
  v109 = v141;
  v130(v108, 0, 1, v141);
  (*(v134 + 88))(v108, v133);
  v110 = v124;
  sub_100012400(v108, v124, &qword_100597408, &qword_1004B16B0);
  if (v105(v110, 1, v109) == 1)
  {
    sub_100016290(v110, &qword_100597408, &qword_1004B16B0);
    sub_10046935C(v28, v106);
  }

  else
  {
    v111 = v110;
    v112 = v116;
    sub_10001CEA8(v111, v116, &qword_100597400, &unk_1004B4D20);
    sub_10001CEA8(v112, *(v106 + 56) + v107, &qword_100597400, &unk_1004B4D20);
  }

  sub_100016290(v108, &qword_100597408, &qword_1004B16B0);
  *a2 = v106;
  swift_endAccess();
  return sub_10036D24C(v135, type metadata accessor for NANAttribute.CustomDeviceInformation);
}

void sub_100350AA8(unsigned __int16 *a1, void *a2)
{
  v2 = a2;
  v4 = *a2;
  type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v57 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v55 - v6;
  v61 = sub_10005DC58(&qword_1005973F8, &unk_1004B16A0);
  __chkstk_darwin();
  v56 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (v55 - v9);
  v55[2] = v4[11];
  v55[1] = v4[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = v55 - v13;
  type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v16 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v4[38];
  v55[3] = v2;
  v18 = *(v2 + v17);
  swift_unownedRetainStrong();
  v19 = *(a1 + 1);
  v60 = a1;
  v58 = *a1 | (v19 << 16);
  sub_10040CD68(v58, v16);

  LOBYTE(v2) = sub_1002E172C();
  sub_10036D24C(v16, type metadata accessor for NANPeer);
  if ((v2 & 1) != 0 && (swift_unownedRetainStrong(), v20 = *(*v18 + 96), swift_beginAccess(), (*(v12 + 16))(v14, v18 + v20, AssociatedTypeWitness), , AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(), LODWORD(v20) = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness), (*(v12 + 8))(v14, AssociatedTypeWitness), v20 >= 5))
  {
    v22 = v60;
    sub_100012400(v60, v10, &qword_1005973F8, &unk_1004B16A0);
    v23 = v61;
    v29 = NANActionFrame.init(customDeviceInformation:)(v10 + *(v61 + 12));
    v31 = v32;
  }

  else
  {
    v22 = v60;
    sub_100012400(v60, v10, &qword_1005973F8, &unk_1004B16A0);
    v23 = v61;
    v24 = v10 + *(v61 + 12);
    v25 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
    sub_10036D334(v24 + *(v25 + 28), v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    sub_10036D24C(v24, type metadata accessor for NANAttribute.CustomDeviceInformation);
    sub_100012400(v22, v10, &qword_1005973F8, &unk_1004B16A0);
    v26 = v10 + *(v23 + 12);
    v27 = *(v26 + 4);
    sub_10036D24C(v26, type metadata accessor for NANAttribute.CustomDeviceInformation);
    *v7 = v27;
    v28 = v57;
    sub_10036D334(v7, v57, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v29 = NANActionFrame.init(customAttributes:)(v28);
    v31 = v30;
    sub_10036D24C(v7, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  }

  v33 = swift_unownedRetainStrong();
  sub_10040DD50(v33, v34, v35, v36);

  sub_100012400(v22, v10, &qword_1005973F8, &unk_1004B16A0);
  v37 = v10 + *(v23 + 12);
  v38 = *(v37 + *(sub_10005DC58(&qword_100597400, &unk_1004B4D20) + 48));
  sub_10036D24C(v37, type metadata accessor for NANAttribute.CustomDeviceInformation);
  v39 = 4;
  if (!v38)
  {
    v39 = 0;
  }

  v62[0] = v39;
  v62[1] = v29;
  v62[2] = v31;
  v62[3] = 0;
  v63 = 2;
  v40 = v59;
  sub_1003A8260(v62, v58, 0, 0, 0, 0, 1, 3, 3000, NANBitmap.Channel.operatingClass.getter, 0);
  if (v40)
  {
    sub_100048C4C(v29, v31, 0);

    v41 = v56;
    sub_100012400(v22, v56, &qword_1005973F8, &unk_1004B16A0);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v64 = v61;
      *v44 = 136315394;
      sub_100012400(v41, v10, &qword_1005973F8, &unk_1004B16A0);
      v46 = v23;
      v47 = *(v10 + 1);
      v48 = v10;
      v49 = *v10;
      sub_10036D24C(v48 + *(v46 + 12), type metadata accessor for NANAttribute.CustomDeviceInformation);
      v50 = WiFiAddress.description.getter(v49 | (v47 << 16));
      v52 = v51;
      sub_100016290(v41, &qword_1005973F8, &unk_1004B16A0);
      v53 = sub_100002320(v50, v52, &v64);

      *(v44 + 4) = v53;
      *(v44 + 12) = 2112;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v54;
      *v45 = v54;
      _os_log_impl(&_mh_execute_header, v42, v43, "Failed to send the keep alive frame to %s because %@", v44, 0x16u);
      sub_100016290(v45, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v61);
    }

    else
    {

      sub_100016290(v41, &qword_1005973F8, &unk_1004B16A0);
    }
  }

  else
  {
    sub_100048C4C(v29, v31, 0);
  }
}

void sub_100351250(unsigned __int8 *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_unownedRetainStrong();
  v5 = sub_100422D84();

  if (*(v5 + 16))
  {
    v6 = sub_1003E08F4(v4);
    if (v7)
    {
      v8 = v6;
      v9 = *(v5 + 56);
      v10 = type metadata accessor for NANAttribute(0);
      sub_10036D334(v9 + *(*(v10 - 8) + 72) * v8, a3, type metadata accessor for NANAttribute);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_10035132C(uint64_t a1, __int128 *a2)
{
  swift_unownedRetainStrong();
  v5 = *a2;
  sub_1002785A4(&v5, &v4);
  sub_100411474(v5 | (BYTE4(v5) << 32) | (BYTE5(v5) << 40) | (BYTE6(v5) << 48), *(&v5 + 1));

  return result;
}

double sub_1003513B4()
{
  v1 = v0;
  v2 = *v0;
  v3 = qword_10059B9C0;

  v83 = v3;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  p_prots = &OBJC_PROTOCOL___WiFiAwarePairedDevicesXPC.prots;
  if (os_log_type_enabled(v4, v5))
  {
    LODWORD(v85) = v5;
    v7 = swift_slowAlloc();
    *v7 = 134219008;
    *(v7 + 4) = sub_10033BA90();
    *(v7 + 12) = 2048;
    swift_beginAccess();
    v9 = *(v2 + 80);
    v8 = *(v2 + 88);
    v11 = _s8InstanceCMa_0(255, v9, v8, v10);

    v86 = v9;
    v87 = v11;
    v88 = v8;
    WitnessTable = swift_getWitnessTable("]\r\n", v11);
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v86);
    v12 = Dictionary.count.getter();

    *(v7 + 14) = v12;
    *(v7 + 22) = 2048;
    swift_beginAccess();
    v14 = _s8InstanceCMa(255, v9, v8, v13);

    v15 = swift_getWitnessTable(byte_1004B2574, v14);
    v86 = v9;
    v87 = v14;
    v88 = v8;
    WitnessTable = v15;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v86);
    v16 = Dictionary.count.getter();

    *(v7 + 24) = v16;
    *(v7 + 32) = 2048;
    swift_beginAccess();
    v18 = _s17InitiatorInstanceCMa(255, v9, v8, v17);

    v19 = swift_getWitnessTable(byte_1004B0F14, v18);
    v86 = v9;
    v87 = v18;
    v88 = v8;
    WitnessTable = v19;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v86);
    sub_10020CB70();
    v20 = Dictionary.count.getter();

    *(v7 + 34) = v20;
    *(v7 + 42) = 2048;
    swift_beginAccess();
    v22 = _s17ResponderInstanceCMa(255, v9, v8, v21);

    v23 = swift_getWitnessTable(aM_9, v22);
    v86 = v9;
    v87 = v22;
    v88 = v8;
    WitnessTable = v23;
    type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v86);
    v24 = Dictionary.count.getter();
    p_prots = (&OBJC_PROTOCOL___WiFiAwarePairedDevicesXPC + 16);

    *(v7 + 44) = v24;

    _os_log_impl(&_mh_execute_header, v4, v85, "Stopping ALL service instances. Total: %ld [P: %ld, S: %ld, DI: %ld, DR: %ld]", v7, 0x34u);
  }

  else
  {
  }

  v25 = p_prots[401];
  swift_beginAccess();
  v80[8] = v25;
  v26 = *(v2 + 80);
  v27 = *(v2 + 88);
  v29 = _s8InstanceCMa_0(255, v26, v27, v28);
  v30 = swift_getWitnessTable("]\r\n", v29);
  v86 = v26;
  v87 = v29;
  v88 = v27;
  WitnessTable = v30;
  v31 = type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v86);
  NANBitmap.Channel.operatingClass.getter();
  v85 = v80;
  v86 = v32;
  __chkstk_darwin();
  v79[2] = v26;
  v79[3] = v27;
  v80[7] = v31;
  v33 = type metadata accessor for Dictionary.Values();

  v84 = &protocol conformance descriptor for [A : B].Values;
  v34 = swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v33);
  v36 = sub_10002B84C(sub_10036D72C, v79, v33, v29, &type metadata for Never, v34, &protocol witness table for Never, v35);

  sub_100351F70(v36, v29, v30);

  v37 = qword_100596C80;
  swift_beginAccess();
  v80[6] = v37;
  v39 = _s8InstanceCMa(255, v26, v27, v38);
  v85 = swift_getWitnessTable(byte_1004B2574, v39);
  v86 = v26;
  v87 = v39;
  v88 = v27;
  WitnessTable = v85;
  v40 = type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v86);
  NANBitmap.Channel.operatingClass.getter();
  v81 = v79;
  v86 = v41;
  __chkstk_darwin();
  v79[-2] = v26;
  v79[-1] = v27;
  v80[5] = v40;
  v42 = type metadata accessor for Dictionary.Values();

  v43 = swift_getWitnessTable(v84, v42);
  v45 = sub_10002B84C(sub_10036D77C, &v79[-4], v42, v39, &type metadata for Never, v43, &protocol witness table for Never, v44);

  sub_100351F70(v45, v39, v85);

  v46 = qword_100596C90;
  swift_beginAccess();
  v80[4] = v46;
  v48 = _s17InitiatorInstanceCMa(255, v26, v27, v47);
  v49 = swift_getWitnessTable(byte_1004B0F14, v48);
  v86 = v26;
  v87 = v48;
  v82 = v26;
  v88 = v27;
  WitnessTable = v49;
  v50 = type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v86);
  v51 = sub_10020CB70();
  v85 = v1;
  v52 = v51;
  NANBitmap.Channel.operatingClass.getter();
  v81 = v79;
  v86 = v53;
  __chkstk_darwin();
  v79[-2] = v26;
  v79[-1] = v27;
  v80[3] = v50;
  v54 = type metadata accessor for Dictionary.Values();

  v55 = swift_getWitnessTable(v84, v54);
  v57 = sub_10002B84C(sub_10036D77C, &v79[-4], v54, v48, &type metadata for Never, v55, &protocol witness table for Never, v56);

  sub_100351F70(v57, v48, v49);

  v58 = qword_100596C98;
  swift_beginAccess();
  v80[2] = v58;
  v59 = v82;
  v61 = _s17ResponderInstanceCMa(255, v82, v27, v60);
  v62 = swift_getWitnessTable(aM_9, v61);
  v86 = v59;
  v87 = v61;
  v88 = v27;
  WitnessTable = v62;
  v63 = v27;
  v64 = v62;
  v65 = type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v86);
  NANBitmap.Channel.operatingClass.getter();
  v81 = v79;
  v86 = v66;
  __chkstk_darwin();
  v79[-2] = v59;
  v79[-1] = v63;
  v80[1] = v65;
  v82 = v52;
  v67 = type metadata accessor for Dictionary.Values();

  v68 = swift_getWitnessTable(v84, v67);
  v70 = sub_10002B84C(sub_10036D77C, &v79[-4], v67, v61, &type metadata for Never, v68, &protocol witness table for Never, v69);

  sub_100351F70(v70, v61, v64);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 134219008;
    *(v73 + 4) = sub_10033BA90();
    *(v73 + 12) = 2048;

    v74 = Dictionary.count.getter();

    *(v73 + 14) = v74;
    *(v73 + 22) = 2048;

    v75 = Dictionary.count.getter();

    *(v73 + 24) = v75;
    *(v73 + 32) = 2048;

    v76 = Dictionary.count.getter();

    *(v73 + 34) = v76;
    *(v73 + 42) = 2048;

    v77 = Dictionary.count.getter();

    *(v73 + 44) = v77;

    _os_log_impl(&_mh_execute_header, v71, v72, "Stopped ALL service instances. Total: %ld [P: %ld, S: %ld, DI: %ld, DR: %ld]", v73, 0x34u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_100351F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Array();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v3);
  return Sequence.forEach(_:)();
}

uint64_t sub_100351FFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = sub_100002320(v10, v12, &v15);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "Stopping: %s", v8, 0xCu);
    sub_100002A00(v9);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return (*(a4 + 40))(a3, a4);
}

void sub_100352188(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      return;
    }

    v16 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
    RadioSchedule.set(_:to:with:)(*v16, v16[1], v16[2], 0, 2, 3, a3, a4);
    v17 = TimeBitmap.secondaryDiscoveryWindow.unsafeMutableAddressor();
    v18 = v17[1];
    v19 = v17[2];
    v20 = *v17;
    goto LABEL_10;
  }

  if (a2 - 2 < 2)
  {
    v6 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
    RadioSchedule.set(_:to:with:)(*v6, v6[1], v6[2], 0, 2, 3, a3, a4);
    v7 = *TimeBitmap.Slot.OF.unsafeMutableAddressor();
    v8 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
    v9 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v7, *v8, *v8, *v8);
    RadioSchedule.set(_:to:with:)(v9, v10, v11, 0, 2, 3, a3, a4);
    if ((*(a4 + 56))(a3, a4))
    {
      v12 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v13 = *v8;
      v14 = *v12;
      v15 = v14;
    }

    else
    {
      v24 = *v8;
      v25 = TimeBitmap.Slot.FF.unsafeMutableAddressor();
      v13 = *v8;
      v15 = *v25;
      v14 = v24;
    }

    v20 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v14, v15, v13, v13);
LABEL_10:
    v23 = 1;
    goto LABEL_11;
  }

  v21 = TimeBitmap.primaryDiscoveryWindow.unsafeMutableAddressor();
  RadioSchedule.set(_:to:with:)(*v21, v21[1], v21[2], 0, 2, 3, a3, a4);
  v22 = TimeBitmap.all.unsafeMutableAddressor();
  v18 = v22[1];
  v19 = v22[2];
  v20 = *v22;
  v23 = 0;
LABEL_11:
  RadioSchedule.set(_:to:with:)(v20, v18, v19, v23, 2, 3, a3, a4);
}

void sub_100352334(unsigned __int8 a1)
{
  v2 = v1;
  sub_10005DC58(&qword_100597428, &unk_1004B16C0);
  __chkstk_darwin();
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v38 - v6;
  __chkstk_darwin();
  v9 = &v38 - v8;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16) != a1)
  {
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    v14 = qword_100596DB8;
    swift_beginAccess();
    (*(v11 + 40))(v2 + v14, v13, v10);
    swift_endAccess();
    sub_100352754();
    v15 = swift_unownedRetainStrong();
    sub_10040CAE8(v15, v16, v17, v18);

    sub_10034ABD0();

    v19 = *(v2 + 16);
    v20 = swift_unownedRetainStrong();
    v24 = sub_10040CAE8(v20, v21, v22, v23);

    if (v19)
    {
      v25 = *(*v24 + 256);
      swift_beginAccess();
      sub_100012400(v24 + v25, v7, &qword_100597428, &unk_1004B16C0);

      v26 = sub_10005DC58(&qword_100596D90, &qword_1004B11E8);
      v27 = *(v26 - 8);
      v39 = *(v27 + 48);
      v28 = v39(v7, 1, v26);
      sub_100016290(v7, &qword_100597428, &unk_1004B16C0);
      v29 = swift_unownedRetainStrong();
      v33 = sub_10040CAE8(v29, v30, v31, v32);

      v34 = *(v2 + 16);
      if (v28 != 1)
      {
        v37 = *(*v33 + 256);
        swift_beginAccess();
        sub_100012400(v33 + v37, v5, &qword_100597428, &unk_1004B16C0);
        if (v39(v5, 1, v26) == 1)
        {
          __break(1u);
          return;
        }

        v5[*(v26 + 36)] = v34;
        v36 = v5;
        goto LABEL_9;
      }

      UUID.init()();
      v9[*(v26 + 36)] = v34;
      (*(v27 + 56))(v9, 0, 1, v26);
    }

    else
    {
      v35 = sub_10005DC58(&qword_100596D90, &qword_1004B11E8);
      (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
    }

    v36 = v9;
LABEL_9:
    sub_10033CC18(v36);
  }
}

double sub_100352754()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v8 = &v18 - v7;
  v10 = __chkstk_darwin();
  v11 = (&v18 - v9);
  v12 = *(v1 + 16);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = 1;
    }

    else if (v12 == 3)
    {
      v13 = 5;
    }

    else
    {
      v13 = 20;
    }

    goto LABEL_12;
  }

  if (*(v1 + 16))
  {
    v13 = 8;
LABEL_12:
    *v11 = v13;
    v15 = *(v4 + 104);
    v15(&v18 - v9, enum case for DispatchTimeInterval.seconds(_:), v3, v10);
    v19 = *OS_dispatch_queue.nan.unsafeMutableAddressor();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = *(v2 + 80);
    v17[3] = *(v2 + 88);
    v17[4] = v16;
    (v15)(v8, enum case for DispatchTimeInterval.never(_:), v3);
    *v6 = 100;
    (v15)(v6, enum case for DispatchTimeInterval.milliseconds(_:), v3);
    type metadata accessor for P2PTimer(0);
    swift_allocObject();
    *(v1 + qword_100596DC0) = P2PTimer.init(deadlineAfter:on:repeating:leeway:_:)(v11, v19, v8, v6, sub_10036CB64, v17);

    return result;
  }

  *(v1 + qword_100596DC0) = 0;

  return result;
}

uint64_t sub_100352A28()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v8 = qword_100596DB8;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v8, v2);
  DispatchTime.distance(to:)();
  v9 = *(v3 + 8);
  v9(v5, v2);
  return (v9)(v7, v2);
}

double sub_100352B90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a4();
  }

  return result;
}

uint64_t sub_100352BF0()
{
  v1 = qword_100596DB8;
  v2 = type metadata accessor for DispatchTime();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unownedRelease();
  return v0;
}

void sub_100352CA0(uint64_t a1)
{
  sub_100353CE0(319, qword_100596670, &type metadata accessor for DispatchTime);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

Swift::UInt64 sub_100352D60(char a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v8 = TimeBitmap.zero.unsafeMutableAddressor();
  v20 = *v8;
  v21[0] = *(v8 + 2);
  if ((a2 & 0x100) != 0)
  {
    if (a2 <= 2u)
    {
      if (!a2)
      {
        return v20;
      }

      if (a2 != 1)
      {
        TimeBitmap.subscript.setter(1, 2uLL);
        TimeBitmap.subscript.setter(1, 6uLL);
        TimeBitmap.subscript.setter(1, 0x22uLL);
        TimeBitmap.subscript.setter(1, 0x26uLL);
        if ((a1 & 1) == 0)
        {
          v16 = sub_100352FDC(258, a3, a4);
          TimeBitmap.SlotsView.formUnion(_:)(v16, v17, v18);
        }

        return v20;
      }
    }

    TimeBitmap.subscript.setter(1, 2uLL);
    TimeBitmap.subscript.setter(1, 6uLL);
    TimeBitmap.subscript.setter(1, 0xAuLL);
    TimeBitmap.subscript.setter(1, 0xEuLL);
    TimeBitmap.subscript.setter(1, 0x12uLL);
    TimeBitmap.subscript.setter(1, 0x16uLL);
    TimeBitmap.subscript.setter(1, 0x1AuLL);
    TimeBitmap.subscript.setter(1, 0x1EuLL);
    TimeBitmap.subscript.setter(1, 0x22uLL);
    TimeBitmap.subscript.setter(1, 0x26uLL);
    TimeBitmap.subscript.setter(1, 0x2AuLL);
    TimeBitmap.subscript.setter(1, 0x2EuLL);
    TimeBitmap.subscript.setter(1, 0x32uLL);
    TimeBitmap.subscript.setter(1, 0x36uLL);
    TimeBitmap.subscript.setter(1, 0x3AuLL);
    TimeBitmap.subscript.setter(1, 0x3EuLL);
    return v20;
  }

  v9 = *(&v20 + 1);
  if (v20 == *(&v20 + 1))
  {
    return v20;
  }

  result = NANIntervalDuration.timeUnits.getter(0);
  if (result)
  {
    v11 = result;
    v12.rawValue = v20;
    while (1)
    {
      result = TimeBitmap.SlotsView.index(after:)(v12).rawValue;
      v19 = v21[0];
      v13 = v12.rawValue / v11;
      if (((v12.rawValue / v11) & 0x8000000000000000) != 0)
      {
        break;
      }

      v14 = result;
      v15 = v13 >> 3;
      LOBYTE(v19) = *(&v19 + (v13 >> 3));
      TimeBitmap.Slot.setBit(_:)(a2);
      *(v21 + v15) = v19;
      v12.rawValue = v14;
      if (v14 == v9)
      {
        return v20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100352FDC(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = TimeBitmap.zero.unsafeMutableAddressor();
  v8 = *v6;
  v9 = *(v6 + 2);
  if ((a1 & 0x100) != 0 && a1 >= 2u)
  {
    if (a1 - 3 >= 2)
    {
      TimeBitmap.subscript.setter(1, 0xAuLL);
      TimeBitmap.subscript.setter(1, 0xEuLL);
      TimeBitmap.subscript.setter(1, 0x2AuLL);
      TimeBitmap.subscript.setter(1, 0x2EuLL);
      v6 = &v8;
    }
  }

  else
  {
    *&v8 = sub_100352D60(1, a1 & 0x1FF, a2, a3);
    v6 = &v8;
  }

  return *v6;
}

void sub_1003530B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v17 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = sub_10005DC58(&qword_100597558, &unk_1004B1840) - 8;
  __chkstk_darwin();
  v10 = &v17 - v9;
  v11 = qword_100596E50;
  swift_beginAccess();
  v12 = *(v8 + 56);
  sub_100012400(v1 + v11, v10, &unk_100597330, &unk_100481FA0);
  sub_100012400(a1, &v10[v12], &unk_100597330, &unk_100481FA0);
  v13 = *(v4 + 48);
  if (v13(v10, 1, v3) == 1)
  {
    if (v13(&v10[v12], 1, v3) == 1)
    {
      sub_100016290(v10, &unk_100597330, &unk_100481FA0);
      return;
    }

    goto LABEL_6;
  }

  sub_100012400(v10, v7, &unk_100597330, &unk_100481FA0);
  if (v13(&v10[v12], 1, v3) == 1)
  {
    (*(v4 + 8))(v7, v3);
LABEL_6:
    sub_100016290(v10, &qword_100597558, &unk_1004B1840);
LABEL_7:
    sub_10034ABD0();
    return;
  }

  v14 = v17;
  (*(v4 + 32))(v17, &v10[v12], v3);
  sub_10036D49C(&qword_100597560, &type metadata accessor for DispatchTime, &protocol conformance descriptor for DispatchTime);
  v15 = dispatch thunk of static Equatable.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v14, v3);
  v16(v7, v3);
  sub_100016290(v10, &unk_100597330, &unk_100481FA0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_100353404@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v26 = a5;
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v10 = &v23 - v9;
  v25 = type metadata accessor for DispatchTime();
  v24 = *(v25 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 + 8);
  v35[0] = a1;
  v35[1] = a2;
  v35[2] = a3;
  v35[3] = v13;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, v35);
  sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter();
  v35[0] = v14;
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v15 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v15);
  v35[0] = Sequence.filter(_:)();
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v30 = a4;
  v16 = type metadata accessor for Array();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v16);
  Sequence.min(by:)();

  if (v35[4])
  {
    type metadata accessor for P2PTimer(0);
    variable initialization expression of AWDLPeer.lastUpdated();
    (*(a4 + 64))(a2, a4);
    v17 = v24;
    v18 = v25;
    result = (*(v24 + 48))(v10, 1, v25);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      DispatchTime.distance(to:)();

      swift_unknownObjectRelease();
      v20 = *(v17 + 8);
      v20(v12, v18);
      return (v20)(v10, v18);
    }
  }

  else
  {
    v21 = enum case for DispatchTimeInterval.never(_:);
    v22 = type metadata accessor for DispatchTimeInterval();
    return (*(*(v22 - 8) + 104))(v26, v21, v22);
  }

  return result;
}

BOOL sub_100353764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  v7 = __chkstk_darwin();
  v9 = &v13 - v8;
  (*(a5 + 64))(a3, a5, v7);
  v10 = type metadata accessor for DispatchTime();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_100016290(v9, &unk_100597330, &unk_100481FA0);
  return v11 != 1 && (*(a5 + 48))(a3, a5) == 1;
}

uint64_t sub_1003538AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10005DC58(&unk_100597330, &unk_100481FA0);
  __chkstk_darwin();
  v42 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v32 - v10;
  v12 = type metadata accessor for DispatchTime();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v39 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v32 - v15;
  v17 = type metadata accessor for DispatchTimeInterval();
  v34 = *(v17 - 8);
  v35 = v17;
  __chkstk_darwin();
  v33 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v32 - v19;
  v38 = *a2;
  v36 = type metadata accessor for P2PTimer(0);
  variable initialization expression of AWDLPeer.lastUpdated();
  v20 = *(a6 + 64);
  v40 = a4;
  v41 = a6;
  v37 = v20;
  v20(a4, a6);
  v21 = *(v13 + 48);
  result = v21(v11, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    DispatchTime.distance(to:)();
    v23 = *(v13 + 8);
    v23(v16, v12);
    v23(v11, v12);
    v24 = v39;
    variable initialization expression of AWDLPeer.lastUpdated();
    v25 = v42;
    v37(v40, v41);
    result = v21(v25, 1, v12);
    if (result != 1)
    {
      v26 = v33;
      DispatchTime.distance(to:)();
      v23(v24, v12);
      v23(v25, v12);
      v27 = v43;
      v28 = static DispatchTimeInterval.< infix(_:_:)(v43, v26);
      v29 = *(v34 + 8);
      v30 = v26;
      v31 = v35;
      v29(v30, v35);
      v29(v27, v31);
      return v28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100353C44()
{
  sub_100016290(v0 + qword_100596E50, &unk_100597330, &unk_100481FA0);
  swift_unownedRelease();

  return swift_deallocClassInstance();
}

void sub_100353CE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100353D34(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100353DF0(uint64_t a1)
{
  v2 = v1;
  v3 = qword_100596F00;
  if ((sub_1002E8EFC(*(v1 + qword_100596F00), a1) & 1) == 0)
  {
    swift_unownedRetainStrong();
    swift_unownedRetainStrong();
    WiFiInterface.capabilities.getter();

    v18 = *WiFiDriverCapabilities.supportsSimultaneousDualBand.unsafeMutableAddressor();
    sub_1000C2A14();

    v4 = dispatch thunk of SetAlgebra.isSuperset(of:)();

    v5 = *(v2 + v3);

    v6 = static Array<A>.potentialAvailability(using:supportsSimultaneousDualBand:for:)(0, (v4 & 1), v5);

    sub_10040EF14(v6);

    swift_retain_n();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v9 = 136315394;
      sub_10036D56C();

      v10 = Dictionary.description.getter();
      v12 = v11;

      v13 = sub_100002320(v10, v12, &v18);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2080;
      swift_unownedRetainStrong();
      sub_100422DF0();

      v14 = Array.description.getter();
      v16 = v15;

      v17 = sub_100002320(v14, v16, &v18);

      *(v9 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v7, v8, "preferredChannelsLearnt %s discoveryInterface.potentialAvailability %s", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1003540AC(uint64_t a1)
{
  v2 = *(v1 + qword_100596F00);
  *(v1 + qword_100596F00) = a1;
  sub_100353DF0(v2);
}

void sub_1003540F4(uint64_t a1)
{
  if (*(v1 + qword_100596F08) - 1 < 2)
  {

    sub_1003547A0();
    return;
  }

  if (*(v1 + qword_100596F08))
  {
    swift_unownedRetainStrong();

    sub_10040E580(v13);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      sub_10036D56C();

      v14 = Dictionary.description.getter();
      v16 = v15;

      v17 = sub_100002320(v14, v16, &v19);

      *(v6 + 4) = v17;
      v12 = "state apply, preferredChannelsLearnt %s";
      goto LABEL_10;
    }
  }

  else
  {
    v2 = sub_1002DE8CC(_swiftEmptyArrayStorage);
    v3 = *(v1 + qword_100596F00);
    *(v1 + qword_100596F00) = v2;
    sub_100353DF0(v3);

    swift_unownedRetainStrong();

    sub_10040E580(v4);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      sub_10036D56C();

      v8 = Dictionary.description.getter();
      v10 = v9;

      v11 = sub_100002320(v8, v10, &v19);

      *(v6 + 4) = v11;
      v12 = "state off, preferredChannelsLearnt %s";
LABEL_10:
      _os_log_impl(&_mh_execute_header, oslog, v5, v12, v6, 0xCu);
      sub_100002A00(v7);

      return;
    }
  }
}

double sub_100354458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1003547A0();
  }

  return result;
}

void sub_1003544B0()
{
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v5 = &v30[-v4];
  v6 = *(v0 + qword_100596F10);
  swift_unownedRetainStrong();
  v7 = *(*v6 + 96);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = (*(AssociatedConformanceWitness + 512))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v10 = (*(v3 + 8))(v5, AssociatedTypeWitness);
  if ((v9 & 1) != 0 || (v12 = swift_unownedRetainStrong(), sub_10040CAE8(v12, v13, v14, v15), , v16 = sub_10034A0AC(), , v16 <= 0) && (v17 = swift_unownedRetainStrong(), v21 = sub_10040CAE8(v17, v18, v19, v20), , v22 = v21 + *(*v21 + 272), swift_beginAccess(), LODWORD(v22) = v22[*(sub_10005DC58(&qword_1005973B0, &qword_1004B1690) + 36)], v10 = , v22 != 4))
  {
    v11 = 0;
LABEL_3:
    *(v1 + qword_100596F08) = v11;
    sub_1003540F4(v10);
    return;
  }

  v23 = swift_unownedRetainStrong();
  v27 = sub_10040CAE8(v23, v24, v25, v26);

  v28 = *(v27 + qword_100596CA8);

  if (!v28)
  {
    v11 = 1;
    goto LABEL_3;
  }

  if (v28 == 4)
  {
    v11 = 2;
    goto LABEL_3;
  }

  v10 = NANDiscoveryWindowIndex.last.unsafeMutableAddressor();
  if (*v10 < 8)
  {
    __break(1u);
    return;
  }

  if (v28 >= 8 && *v10 >= v28)
  {
    v11 = 3;
    goto LABEL_3;
  }
}

void sub_1003547A0()
{
  v84 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v83 = &v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + qword_100596F08))
  {
    return;
  }

  v2 = *(v0 + qword_100596F10);
  v82 = v0;
  swift_unownedRetainStrong();
  v3 = sub_10040E40C();

  if (v3)
  {
    return;
  }

  swift_unownedRetainStrong();
  v4 = 0;
  sub_10040CBA8();

  swift_unownedRetainStrong();
  v5 = *(v2 + *(*v2 + 800));
  swift_unownedRetainStrong();
  v79 = v2;

  sub_1003EB084();
  v7 = v6;
  v9 = v8;

  if (!v7)
  {
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v10 = sub_1003A78D4(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = *(v10 + 2);
  v11 = *(v10 + 3);
  v12 = (v5 + 1);
  if (v5 >= v11 >> 1)
  {
    goto LABEL_89;
  }

LABEL_5:
  *(v10 + 2) = v12;
  v13 = &v10[8 * v5];
  *(v13 + 8) = v9;
  v13[36] = BYTE4(v9);
  v13[37] = BYTE5(v9);
  v13[38] = 3;
LABEL_7:
  v14 = swift_unownedRetainStrong();
  v12 = sub_10040CAE8(v14, v15, v16, v17);

  v9 = sub_10033ABB0();

  v18 = *(v9 + 16);
  if (v18)
  {
    v19 = 0;
    v75 = v9 + 32;
    v20 = v82;
    v74 = v9;
    v73 = v18;
    do
    {
      v11 = *(v9 + 16);
      if (v19 >= v11)
      {
        goto LABEL_86;
      }

      if (*(v20 + qword_100596F08) != 1)
      {
        v81 = v19;
        v21 = (v75 + 6 * v19);
        v22 = *(v21 + 1);
        v23 = *v21;
        swift_unownedRetainStrong();
        v24 = v23 | (v22 << 16);
        v9 = v83;
        sub_10040CD68(v24, v83);

        v25 = (v9 + *(v84 + 68));
        v12 = v25[1];
        v26 = v25[2];
        v5 = v25[3];
        v27 = v25[4];
        sub_10036D508(*v25, v12, v26, v5, v27);
        sub_10036D24C(v9, type metadata accessor for NANPeer);
        if (v12)
        {
          v76 = v27;
          v77 = v5;
          v78 = v12;
          v28 = *(v26 + 64);
          v86 = (v26 + 64);
          v29 = 1 << *(v26 + 32);
          if (v29 < 64)
          {
            v30 = ~(-1 << v29);
          }

          else
          {
            v30 = -1;
          }

          v5 = v30 & v28;
          v80 = (v29 + 63) >> 6;
          swift_bridgeObjectRetain_n();
          v31 = 0;
          v32 = _swiftEmptyArrayStorage;
          v89 = v10;
          v87 = v26;
LABEL_20:
          if (v5)
          {
            goto LABEL_25;
          }

          while (1)
          {
            v11 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              break;
            }

            if (v11 >= v80)
            {

              swift_bridgeObjectRelease_n();
              v87 = *(v32 + 2);
              if (v87)
              {
                v50 = 0;
                v85 = v32;
                v86 = v32 + 32;
                do
                {
                  v11 = *(v32 + 2);
                  if (v50 >= v11)
                  {
                    goto LABEL_79;
                  }

                  v51 = &v86[56 * v50];
                  v53 = *v51;
                  v52 = *(v51 + 1);
                  v54 = *(v51 + 2);
                  v55 = *(v51 + 3);
                  v56 = *(*v51 + 16);
                  v92 = v54;
                  v93 = v52;
                  v91 = v55;
                  if (v56)
                  {
                    v88 = v50;
                    v89 = v10;
                    v90 = v4;
                    v57 = v51[32];

                    sub_10005D4F4(v52, v54, v55);
                    v94 = _swiftEmptyArrayStorage;
                    sub_100367908(0, v56, 0);
                    v58 = 0;
                    v12 = v94;
                    if (v57 >= 2)
                    {
                      v59 = 2;
                    }

                    else
                    {
                      v59 = v57;
                    }

                    v60 = v94[2];
                    v61 = v60;
                    do
                    {
                      v62 = *(v53 + v58 + 32);
                      v63 = *(v53 + v58 + 36);
                      v64 = *(v53 + v58 + 37);
                      v94 = v12;
                      v65 = v12[3];
                      if (v60++ >= v65 >> 1)
                      {
                        sub_100367908((v65 > 1), v60, 1);
                        v12 = v94;
                      }

                      v12[2] = v60;
                      v11 = &v12[v61 + v58 / 8];
                      *(v11 + 32) = v62;
                      *(v11 + 36) = v63;
                      *(v11 + 37) = v64;
                      *(v11 + 38) = v59;
                      v58 += 8;
                      --v56;
                    }

                    while (v56);
                    v10 = v89;
                    v4 = v90;
                    v32 = v85;
                    v50 = v88;
                  }

                  else
                  {

                    sub_10005D4F4(v52, v54, v55);
                    v60 = _swiftEmptyArrayStorage[2];
                    v12 = _swiftEmptyArrayStorage;
                  }

                  v9 = *(v10 + 2);
                  v5 = v9 + v60;
                  if (__OFADD__(v9, v60))
                  {
                    goto LABEL_80;
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v5 <= *(v10 + 3) >> 1)
                  {
                    if (!v12[2])
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if (v9 <= v5)
                    {
                      v68 = v9 + v60;
                    }

                    else
                    {
                      v68 = v9;
                    }

                    v10 = sub_1003A78D4(isUniquelyReferenced_nonNull_native, v68, 1, v10);
                    if (!v12[2])
                    {
LABEL_46:

                      sub_10002F75C(v93, v92, v91);

                      if (v60)
                      {
                        goto LABEL_81;
                      }

                      goto LABEL_47;
                    }
                  }

                  v11 = *(v10 + 2);
                  if (((*(v10 + 3) >> 1) - v11) < v60)
                  {
                    goto LABEL_82;
                  }

                  memcpy(&v10[8 * v11 + 32], v12 + 4, 8 * v60);

                  sub_10002F75C(v93, v92, v91);

                  if (v60)
                  {
                    v69 = *(v10 + 2);
                    v49 = __OFADD__(v69, v60);
                    v11 = v69 + v60;
                    if (v49)
                    {
                      goto LABEL_83;
                    }

                    *(v10 + 2) = v11;
                  }

LABEL_47:
                  ++v50;
                }

                while (v50 != v87);
              }

              goto LABEL_10;
            }

            v5 = *&v86[8 * v11];
            ++v31;
            if (v5)
            {
              v31 = v11;
LABEL_25:
              v92 = v5;
              v11 = (v31 << 9) | (8 * __clz(__rbit64(v5)));
              v33 = *(*(v26 + 56) + v11);
              v34 = *(v33 + 16);
              if (v34)
              {
                v90 = v4;
                v91 = v31;
                v85 = v32;
                v94 = _swiftEmptyArrayStorage;

                sub_100367928(0, v34, 0);
                v12 = v94;
                v88 = v33;
                v35 = (v33 + 80);
                do
                {
                  v36 = *(v35 - 6);
                  v37 = *(v35 - 5);
                  v39 = *(v35 - 4);
                  v38 = *(v35 - 3);
                  LODWORD(v93) = *(v35 - 16);
                  v40 = *(v35 - 1);
                  v41 = *v35;

                  sub_10005D4F4(v37, v39, v38);
                  v94 = v12;
                  v43 = v12[2];
                  v42 = v12[3];
                  if (v43 >= v42 >> 1)
                  {
                    sub_100367928((v42 > 1), v43 + 1, 1);
                    v12 = v94;
                  }

                  v12[2] = v43 + 1;
                  v44 = &v12[7 * v43];
                  v44[4] = v36;
                  v44[5] = v37;
                  v44[6] = v39;
                  v44[7] = v38;
                  *(v44 + 64) = v93;
                  v44[9] = v40;
                  v44[10] = v41;
                  v35 += 7;
                  --v34;
                }

                while (v34);

                v10 = v89;
                v4 = v90;
                v32 = v85;
                v26 = v87;
                v31 = v91;
              }

              else
              {
                v12 = _swiftEmptyArrayStorage;
              }

              v9 = v12[2];
              v45 = *(v32 + 2);
              v5 = v45 + v9;
              if (__OFADD__(v45, v9))
              {
                goto LABEL_84;
              }

              v46 = swift_isUniquelyReferenced_nonNull_native();
              if (!v46 || v5 > *(v32 + 3) >> 1)
              {
                if (v45 <= v5)
                {
                  v47 = v45 + v9;
                }

                else
                {
                  v47 = v45;
                }

                v32 = sub_1003A7678(v46, v47, 1, v32);
              }

              v5 = (v92 - 1) & v92;
              if (v12[2])
              {
                v11 = *(v32 + 2);
                if (((*(v32 + 3) >> 1) - v11) < v9)
                {
                  goto LABEL_87;
                }

                swift_arrayInitWithCopy();

                if (v9)
                {
                  v48 = *(v32 + 2);
                  v49 = __OFADD__(v48, v9);
                  v11 = v48 + v9;
                  if (v49)
                  {
                    goto LABEL_88;
                  }

                  *(v32 + 2) = v11;
                }
              }

              else
              {

                if (v9)
                {
                  goto LABEL_85;
                }
              }

              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          v10 = sub_1003A78D4((v11 > 1), v12, 1, v10);
          goto LABEL_5;
        }

LABEL_10:
        v19 = v81;
        v20 = v82;
        v9 = v74;
        v18 = v73;
      }

      ++v19;
    }

    while (v19 != v18);
  }

  if (*(v10 + 2))
  {
    sub_10005DC58(&qword_100595318, &qword_1004AF220);
    v70 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v70 = &_swiftEmptyDictionarySingleton;
  }

  v94 = v70;

  sub_10036BE24(v71, 1, &v94);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v72 = *(v82 + qword_100596F00);
    *(v82 + qword_100596F00) = v94;
    sub_100353DF0(v72);
  }
}

uint64_t sub_1003550BC()
{
  v1 = qword_100596EF0;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unownedRelease();
  return v0;
}

uint64_t sub_100355164(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1003551D4(uint64_t a1, void *a2, uint64_t a3)
{
  v94 = a1;
  v93 = *v3;
  v88 = a2;
  __chkstk_darwin();
  v86 = v83 - v5;
  v87 = v6;
  v7 = *(v6 + 24);
  v100 = *(v7 + 40);
  v8 = *(v7 + 24);
  v85 = v100[1];
  v102 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v96 = *(AssociatedTypeWitness - 8);
  v97 = AssociatedTypeWitness;
  __chkstk_darwin();
  v84 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = v83 - v11;
  v99 = type metadata accessor for Logger();
  v12 = *(v99 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v14 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v83 - v15;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = (v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v22 = *v21;
  *v20 = *v21;
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v20, v17);
  if (v22)
  {
    sub_100012400(a3, v105, &unk_100597480, &qword_1004B1798);
    v89 = v106;
    if (v106)
    {
      sub_100085188(v105, &v107);
      v25 = 0;
    }

    else
    {
      v25 = *&v105[0];
      v26 = [*(*&v105[0] + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    v27 = v101;
    v28 = *(v12 + 16);
    v83[1] = qword_10059B9C0;
    v29 = v16;
    v98 = v16;
    v30 = v12;
    v31 = v99;
    v28(v29, v101 + qword_10059B9C0, v99);
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v25)
    {
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28(v14, v98, v31);
      sub_100002B30(&v107, v105);
      v34 = (*(v30 + 80) + 56) & ~*(v30 + 80);
      v35 = (v13 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = swift_allocObject();
      v37 = v102;
      *(v36 + 2) = *(v93 + 80);
      *(v36 + 3) = v37;
      *(v36 + 4) = v100;
      *(v36 + 5) = v32;
      *(v36 + 6) = v33;
      (*(v30 + 32))(&v36[v34], v14, v31);
      sub_100085188(v105, &v36[v35]);
      v38 = &v25[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v40 = *&v25[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
      v39 = *&v25[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
      *v38 = sub_10036CD28;
      v38[1] = v36;

      sub_100010520(v40, v39);
      v27 = v101;
    }

    v95 = v32;
    v90 = v30;
    v41 = *(v27 + *(*v27 + 304));
    swift_unownedRetainStrong();
    v42 = v91;
    (*(v96 + 16))(v91, v94, v97);
    if (v25)
    {
      v43 = *&v25[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID];
      v44 = *&v25[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8];
      v45 = *&v25[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientPID];
      v46 = v25[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientPID + 4];
    }

    else
    {
      v45 = 0;
      v43 = 0;
      v44 = 0;
      v46 = 1;
    }

    v47 = v98;
    v48 = v100[2];
    LOBYTE(v105[0]) = v46;
    v49 = v45 | (v46 << 32);
    v50 = v100;
    v51 = v43;
    v52 = v44;
    v53 = v102;
    v54 = v92;
    v55 = v48(v41, v42, v51, v52, v49, v89, v102, v100);
    if (v54)
    {
      v56 = v25;
      v57 = v99;
    }

    else
    {
      v94 = 0;
      sub_100002B30(&v107, v105);
      (v50[8])(v105, v53, v50);
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      if (v25)
      {
        v58 = [objc_opt_self() weakExportedObjectProxy:v55];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100301920(v105);
      }

      v59 = v85;
      v60 = *(v85 + 64);
      v61 = v101;

      v62 = v84;
      v60(v53, v59);
      v63 = v97;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 56))(v63, AssociatedConformanceWitness);
      (*(v96 + 8))(v62, v63);
      v65 = *(v93 + 80);
      v66 = *(v93 + 88);
      swift_unknownObjectRetain();
      v56 = v25;
      v67 = v100;
      sub_10036B958(v55, v25, v65, v102, v66, v100);
      v69 = v68;
      v71 = v70;

      v103 = v69;
      v104 = v71;
      v108 = v61;
      v72 = swift_modifyAtReferenceWritableKeyPath();
      Dictionary.subscript.setter();
      v72(v105, 0);

      v73 = v94;
      (v67[4])(v102, v67);
      if (!v73)
      {

        (*(v90 + 8))(v98, v99);
        sub_100002A00(&v107);
LABEL_20:

        return v55;
      }

      swift_errorRetain();
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        *&v105[0] = v77;
        *v76 = 136315394;
        v78 = _typeName(_:qualified:)();
        v80 = sub_100002320(v78, v79, v105);

        *(v76 + 4) = v80;
        *(v76 + 12) = 2112;
        swift_errorRetain();
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v76 + 14) = v81;
        v82 = v100;
        *v100 = v81;
        _os_log_impl(&_mh_execute_header, v74, v75, "Attempt to create service %s failed because of %@", v76, 0x16u);
        sub_100016290(v82, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v77);
      }

      v57 = v99;
      sub_100355F78(v55, v88, 0);
      swift_willThrow();
      swift_unknownObjectRelease();
      v47 = v98;
    }

    (*(v90 + 8))(v47, v57);
    sub_100002A00(&v107);
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_100355C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v15 = *v14;
  *v13 = *v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v20 = v19;
        v34 = a4;
        v21 = v19;
        swift_unknownObjectRetain();
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v33 = a6;
          v27 = v26;
          v35 = v18;
          v36 = v26;
          *v24 = 138412546;
          *(v24 + 4) = v21;
          *v25 = v20;
          *(v24 + 12) = 2080;
          v28 = v21;
          v29 = dispatch thunk of CustomStringConvertible.description.getter();
          v31 = v30;
          swift_unknownObjectRelease();
          v32 = sub_100002320(v29, v31, &v36);

          *(v24 + 14) = v32;
          _os_log_impl(&_mh_execute_header, v22, v23, "%@ was invalidated detaching from %s", v24, 0x16u);
          sub_100016290(v25, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v27);
          a6 = v33;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        (*(a7 + 80))(v34, a6, a7);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100355F78(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = a1;
  v4 = *v3;
  v41 = a3;
  v42 = v4;
  v5 = *a2;
  v46 = a2;
  v45 = *(*(v5 + class metadata base offset for ReferenceWritableKeyPath + 8) + 16);
  v44 = *(v45 - 8);
  __chkstk_darwin();
  v7 = &v39 - v6;
  v43 = v8;
  v9 = *(v8 + 24);
  v40 = *(v9 + 40);
  v10 = *(v40 + 8);
  v11 = *(v9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v15 = &v39 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v21 = *v20;
  *v19 = *v20;
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v22 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  (*(v17 + 8))(v19, v16);
  if (v21)
  {
    v23 = *(v10 + 64);
    v24 = v47;

    v23(v11, v10);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v13 + 8))(v15, AssociatedTypeWitness);
    v49[4] = v24;
    v26 = swift_modifyAtReferenceWritableKeyPath();
    Dictionary.removeValue(forKey:)();
    (*(v44 + 8))(v7, v45);
    v26(v49, 0);

    if (v50[0])
    {
      v27 = v40;
      sub_10033AF04(v50[0], v50[1]);
      v49[0] = v41;
      __chkstk_darwin();
      *(&v39 - 4) = v11;
      *(&v39 - 3) = v27;
      v28 = v48;
      *(&v39 - 2) = v47;
      *(&v39 - 1) = v28;
      sub_10005DD04(&qword_100597328, &qword_1004B1638);
      type metadata accessor for ReferenceWritableKeyPath();
      type metadata accessor for Optional();
      sub_1003392B0(sub_100367804, (&v39 - 6), &type metadata for Never, &type metadata for () + 8, v29, v50);

      swift_unknownObjectRelease();
    }

    else
    {
      v30 = v48;
      swift_unknownObjectRetain();
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v49[0] = v34;
        *v33 = 136315138;
        v50[0] = v30;
        v35 = dispatch thunk of CustomStringConvertible.description.getter();
        v37 = v36;
        swift_unknownObjectRelease();
        v38 = sub_100002320(v35, v37, v49);

        *(v33 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "Unable to find %s when it was terminated", v33, 0xCu);
        sub_100002A00(v34);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_100356504(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v239 = a5;
  v253 = a4;
  v251 = a3;
  v250 = a1;
  v8 = *v5;
  v254 = *(*v5 + 88);
  v9 = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v247 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v246 = *(v247 - 8);
  __chkstk_darwin();
  v245 = &v224 - v13;
  v244 = type metadata accessor for DispatchTimeInterval();
  v243 = *(v244 - 8);
  __chkstk_darwin();
  v15 = &v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANSubscribe.Configuration(0);
  __chkstk_darwin();
  v242 = &v224 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v240 = &v224 - v17;
  v252 = type metadata accessor for NANDriverCapabilities(0);
  *&v18 = __chkstk_darwin().n128_u64[0];
  v20 = &v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a2;
  v22 = [a2 serviceName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  *&v27 = NANServiceName.init(_:)(v26);
  if (!v28)
  {
    v30 = v21;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v258 = v46;
      *v45 = 136315138;
      v47 = [v30 serviceName];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v30 = sub_100002320(v48, v50, &v258);

      *(v45 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v43, v44, "Cannot create new subscribe because '%s' is not a valid service name", v45, 0xCu);
      sub_100002A00(v46);
    }

    sub_10000B02C();
    swift_allocError();
    v52 = xmmword_100481800;
    goto LABEL_32;
  }

  v237 = v15;
  v238 = v21;
  v249 = v27;
  v255 = v28;
  v29 = v253;
  v30 = qword_100596C80;
  swift_beginAccess();
  v31 = v254;
  v33 = _s8InstanceCMa(255, v9, v254, v32);

  WitnessTable = swift_getWitnessTable(byte_1004B2574, v33);
  v241 = v9;
  v258 = v9;
  v259 = v33;
  v260 = v31;
  v261 = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v258);
  v35 = Dictionary.count.getter();

  v36 = *(v5 + *(*v5 + 304));
  swift_unownedRetainStrong();
  v37 = *(*v36 + 736);
  swift_beginAccess();
  sub_10036D334(v36 + v37, v20, type metadata accessor for NANDriverCapabilities);
  v236 = v36;

  v38 = *&v20[*(v252 + 40)];
  sub_10036D24C(v20, type metadata accessor for NANDriverCapabilities);
  v39 = v6;
  if (v35 >= v38)
  {
    swift_retain_n();
    v53 = v255;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v258 = v57;
      *v56 = 136315394;
      v58 = NANServiceName.description.getter(v249, v53);
      v60 = v59;

      v61 = sub_100002320(v58, v60, &v258);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2048;

      v62 = Dictionary.count.getter();

      *(v56 + 14) = v62;

      _os_log_impl(&_mh_execute_header, v54, v55, "Cannot create new subscribe %s because exceeded maximum active count %ld", v56, 0x16u);
      sub_100002A00(v57);
    }

    else
    {
    }

    sub_10000B02C();
    swift_allocError();
    v52 = xmmword_10048DED0;
    goto LABEL_32;
  }

  v40 = v250;
  sub_100012400(v250, &v258, &unk_100597480, &qword_1004B1798);
  if (v262)
  {
    v41 = v29;
    swift_bridgeObjectRetain_n();
    sub_100016290(&v258, &unk_100597480, &qword_1004B1798);
    v42 = v251;
  }

  else
  {
    v63 = v258;
    v42 = *(v258 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID);
    v41 = *(v258 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8);
    swift_bridgeObjectRetain_n();
  }

  v64 = qword_10059B9C0;

  v65 = v255;

  v252 = v39;
  v66 = v64;
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();

  v69 = os_log_type_enabled(v67, v68);
  v251 = v42;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    *v70 = 136315394;
    if (v41)
    {
      v71 = v42;
    }

    else
    {
      v71 = 0x6E776F6E6B6E7528;
    }

    if (v41)
    {
      v72 = v41;
    }

    else
    {
      v72 = 0xE900000000000029;
    }

    v73 = v41;
    v74 = sub_100002320(v71, v72, &v258);

    *(v70 + 4) = v74;
    *(v70 + 12) = 2080;

    v75 = NANServiceName.description.getter(v249, v65);
    v77 = v76;

    v78 = sub_100002320(v75, v77, &v258);
    v41 = v73;

    *(v70 + 14) = v78;
    v40 = v250;
    _os_log_impl(&_mh_execute_header, v67, v68, "New client: %s requesting a subscribe with service name %s", v70, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100012400(v40, &v258, &unk_100597480, &qword_1004B1798);
  if (v262 == 1)
  {
    sub_100016290(&v258, &unk_100597480, &qword_1004B1798);
  }

  else
  {
    v79 = v258;
    v80 = objc_opt_self();
    v81 = [v80 interfaceWithProtocol:&OBJC_PROTOCOL___WiFiAwareSubscriberXPC];
    v82 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection;
    [*&v79[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] setExportedInterface:v81];

    v83 = [v80 interfaceWithProtocol:&OBJC_PROTOCOL___WiFiAwareSubscriberXPCDelegate];
    [*&v79[v82] setRemoteObjectInterface:v83];
  }

  v84 = v238;
  v30 = qword_100596CE0;
  swift_beginAccess();
  v85 = sub_10005DC58(&qword_100597328, &qword_1004B1638);
  IDPool.availableID()(v85, &v256);
  swift_endAccess();
  if ((v256 & 0x100) != 0)
  {

    v86 = v255;

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v258 = v90;
      *v89 = 136315138;
      v91 = NANServiceName.description.getter(v249, v86);
      v93 = v92;

      v30 = sub_100002320(v91, v93, &v258);

      *(v89 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v87, v88, "Cannot create new subscribe %s because no more instance IDs were available", v89, 0xCu);
      sub_100002A00(v90);
    }

    else
    {
    }

    sub_10000B02C();
    swift_allocError();
    v52 = xmmword_1004B1160;
LABEL_32:
    *v51 = v52;
    *(v51 + 16) = 1;
    swift_willThrow();
    return v30;
  }

  v263 = v256;
  v94 = [v84 multicastAddress];
  v233 = v94;
  if (v94)
  {
    v95 = v94;
    v96 = WiFiMACAddress.wifiAddress.getter();

    v232 = v96 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v232 = 0;
  }

  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v235 = (v98 + 16);
  v99 = [v84 allowedDeviceIDs];
  if (v99)
  {
    v100 = v99;
    sub_10036CDE8();
    sub_10036D49C(&qword_10059B290, sub_10036CDE8, &protocol conformance descriptor for NSObject);
    v101 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v102 = v248;
    sub_1003370E4(v101);
    v104 = v103;

    if (!v41)
    {
      v125 = v255;

      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v258 = v30;
        *v128 = 136315394;
        v129 = NANServiceName.description.getter(v249, v125);
        v131 = v130;

        v132 = sub_100002320(v129, v131, &v258);

        *(v128 + 4) = v132;
        *(v128 + 12) = 2080;
        v133 = Array.description.getter();
        v135 = v134;

        v136 = sub_100002320(v133, v135, &v258);

        *(v128 + 14) = v136;
        _os_log_impl(&_mh_execute_header, v126, v127, "Cannot create new subscribe %s because no client bundle ID could be determined to enforece allowedDeviceIDs: %s", v128, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      sub_10000B02C();
      swift_allocError();
      *v137 = xmmword_100481800;
      *(v137 + 16) = 1;
      swift_willThrow();
LABEL_114:

      return v30;
    }

    v228 = v30;
    v248 = v102;
    v105 = dispatch_semaphore_create(0);
    v106 = type metadata accessor for TaskPriority();
    v107 = v240;
    (*(*(v106 - 8) + 56))(v240, 1, 1, v106);
    v108 = swift_allocObject();
    v108[2] = 0;
    v108[3] = 0;
    v109 = v66;
    v110 = v252;
    v108[4] = v105;
    v108[5] = v110;
    v111 = v251;
    v108[6] = v98;
    v108[7] = v111;
    v108[8] = v41;
    v108[9] = v104;

    v112 = v105;

    sub_1003587D4(0, 0, v107, &unk_1004B1828, v108);

    OS_dispatch_semaphore.wait()();
    swift_retain_n();
    v113 = v255;

    v66 = v109;
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.info.getter();

    v116 = os_log_type_enabled(v114, v115);
    v234 = v98;
    if (v116)
    {
      v253 = v112;
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v258 = v118;
      *v117 = 136315394;

      v119 = NANServiceName.description.getter(v249, v113);
      v121 = v120;

      v122 = sub_100002320(v119, v121, &v258);

      *(v117 + 4) = v122;
      *(v117 + 12) = 2048;
      v123 = v235;
      swift_beginAccess();
      if (*v123)
      {
        v124 = *(*v123 + 16);
      }

      else
      {
        v124 = 0;
      }

      *(v117 + 14) = v124;

      _os_log_impl(&_mh_execute_header, v114, v115, "Subscribe: %s filtering for: %ld paired devices", v117, 0x16u);
      sub_100002A00(v118);

      v84 = v238;
    }

    else
    {
    }
  }

  else
  {
    v228 = v30;
    v234 = v98;
  }

  v30 = NANConstants.seaShipServiceName.unsafeMutableAddressor();
  v138 = *v30;
  v139 = *(v30 + 8);
  v258 = v249;
  v259 = v255;
  v256 = v138;
  v257 = v139;
  v140 = sub_10005E2E4();
  LODWORD(v240) = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();
  v141 = [v84 channelInfo];
  if (!v141)
  {
    v227 = v66;
    v30 = 0x300000000;
LABEL_88:
    v155 = v237;
    goto LABEL_89;
  }

  v142 = [v84 channelInfo];
  if (!v142)
  {
    v227 = v66;
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.error.getter();
    v154 = os_log_type_enabled(v152, v153);
    v155 = v237;
    if (v154)
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&_mh_execute_header, v152, v153, "chan info is nil", v156, 2u);
    }

    v30 = 0x300000000;
    goto LABEL_89;
  }

  v143 = v142;
  v144 = Channel.init(apiChannel:)(v143);
  if ((v144 & 0xFF00000000) == 0x300000000)
  {
    v145 = v143;

    v146 = v84;
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v149 = 138412290;
      v150 = [v146 channelInfo];
      *(v149 + 4) = v150;
      *v30 = v150;
      v151 = "Invalid channel information provided %@";
LABEL_85:
      _os_log_impl(&_mh_execute_header, v147, v148, v151, v149, 0xCu);
      sub_100016290(v30, &qword_10058B780, &qword_100480AC0);

      goto LABEL_86;
    }

    goto LABEL_86;
  }

  v230 = BYTE4(v144);
  v157 = v144;
  v158 = Logger.logObject.getter();
  LODWORD(v229) = static os_log_type_t.default.getter();
  v159 = os_log_type_enabled(v158, v229);
  v231 = v157;
  if (!v159)
  {

    v163 = &unk_100588000;
    goto LABEL_80;
  }

  v227 = v158;
  v253 = v41;
  v160 = v157 >> 40;
  v161 = swift_slowAlloc();
  v162 = swift_slowAlloc();
  v258 = v162;
  *v161 = 67109634;
  *(v161 + 4) = v157;
  *(v161 + 8) = 2080;
  v226 = v143;
  v225 = v140;
  v224 = v162;
  if (v230)
  {
    v163 = &unk_100588000;
    if (v230 == 1)
    {
      v164 = 0xE500000000000000;
      v165 = 0x7A48472035;
    }

    else
    {
      v165 = 0x7A48472036;
      v164 = 0xE500000000000000;
    }
  }

  else
  {
    v164 = 0xE700000000000000;
    v165 = 0x7A484720342E32;
    v163 = &unk_100588000;
  }

  v166 = 0x7A484D203031;
  v167 = sub_100002320(v165, v164, &v258);

  *(v161 + 10) = v167;
  *(v161 + 18) = 2080;
  v168 = v160;
  v169 = v160;
  if (v160 <= 3u)
  {
    v41 = v253;
    if (v169 != 2)
    {
      v84 = v238;
      if (v169 == 3)
      {
        v166 = 0x7A484D203032;
        v170 = 0xE600000000000000;
        goto LABEL_79;
      }

      goto LABEL_75;
    }

LABEL_73:
    v170 = 0xE600000000000000;
    v84 = v238;
    goto LABEL_79;
  }

  v41 = v253;
  if (v169 == 4)
  {
    v166 = 0x7A484D203038;
    goto LABEL_73;
  }

  v84 = v238;
  if (v169 == 5)
  {
    v166 = 0x7A484D20303631;
LABEL_78:
    v170 = 0xE700000000000000;
    goto LABEL_79;
  }

  if (v169 != 6)
  {
LABEL_75:
    if (v168)
    {
      v166 = 0x7A484D202B3034;
    }

    else
    {
      v166 = 0x7A484D202D3034;
    }

    goto LABEL_78;
  }

  v170 = 0xE700000000000000;
  v166 = 0x7A484D20303233;
LABEL_79:
  v171 = sub_100002320(v166, v170, &v258);

  *(v161 + 20) = v171;
  v172 = v227;
  _os_log_impl(&_mh_execute_header, v227, v229, "channel %u, band %s, BW %s", v161, 0x1Cu);
  swift_arrayDestroy();

  v143 = v226;
LABEL_80:
  v227 = v66;
  v173 = *v30;
  v174 = *(v30 + 8);
  v258 = v249;
  v259 = v255;
  v256 = v173;
  v257 = v174;
  if ((StringProtocol.localizedCaseInsensitiveContains<A>(_:)() & 1) == 0)
  {

    v30 = v231 & 0xFFFFFFFFFFFFLL;
    goto LABEL_88;
  }

  v155 = v237;
  if (!v230 || (v30 = v231 & 0xFFFFFFFFFFFFLL, Channel.isDFS.getter(v231)))
  {
    v145 = v143;

    v175 = v84;
    v147 = Logger.logObject.getter();
    v148 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v149 = 138412290;
      v176 = [v175 v163[403]];
      *(v149 + 4) = v176;
      *v30 = v176;
      v151 = "Invalid: channel %@ belongs to 2.4G Band or is a DFS channel";
      goto LABEL_85;
    }

LABEL_86:

    sub_10000B02C();
    swift_allocError();
    *v177 = xmmword_100481800;
    *(v177 + 16) = 1;
    swift_willThrow();

    return v30;
  }

LABEL_89:
  v178 = [v84 countryCode];
  if (v178)
  {

    result = [v84 countryCode];
    if (!result)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v179 = result;
    v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v182 = v181;

    v183._countAndFlagsBits = v180;
    v183._object = v182;
    CountryCode.init(stringLiteral:)(v183);
    swift_unownedRetainStrong();
    sub_10040DE8C();
  }

  v184 = [v84 multicastConfiguration];
  if (v184)
  {
    v185 = MulticastConfiguration.init(apiMulticastConfiguration:)(v184);
    v253 = HIWORD(v185) & 1;
    v186 = v185 & 0x100000000000000;
    v187 = v185 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v187 = 0;
    v186 = 0;
    v253 = 1;
  }

  v188 = [v84 serviceSpecificInfo];
  if (v188)
  {
    v189 = v188;
    v238 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v231 = v190;
  }

  else
  {
    v238 = 0;
    v231 = 0xF000000000000000;
  }

  result = NANTimeUnit.discoveryWindowInterval.unsafeMutableAddressor();
  v191 = *result;
  if (*result >> 54)
  {
    __break(1u);
    goto LABEL_126;
  }

  v230 = v30;
  v192 = v191 << 10;
  if ((v192 & 0x8000000000000000) != 0)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v229 = v187;
  *v155 = v192;
  (*(v243 + 104))(v155, enum case for DispatchTimeInterval.microseconds(_:), v244);
  v193 = [v84 fastDiscoveryConfiguration];
  v30 = v193;
  if (v193)
  {
  }

  swift_unownedRetainStrong();
  v194 = v245;
  WiFiInterface.preferences.getter();

  v195 = v247;
  v196 = Preferences.disableAuthentication.getter(v247);
  (*(v246 + 8))(v194, v195);
  v197 = (v196 & 1) != 0 || [v84 authenticationType] != 1;
  LODWORD(v246) = v197;
  v247 = v186;
  v198 = v235;
  swift_beginAccess();
  v199 = *v198;

  v245 = [v84 timeoutAfterSeconds];
  v200 = [v84 discoveryMode];
  if (v200 >= 4)
  {
    v201 = 3;
  }

  else
  {
    v201 = 0x2010003u >> (8 * v200);
  }

  v202 = [v84 countryCode];
  v203 = v202;
  if (!v202)
  {
    v210 = 0;
LABEL_112:
    v211 = v203 == 0;
    LOBYTE(v258) = v253;
    v223 = v247 | (v253 << 48) | v229;
    v212 = v242;
    v213 = v263;
    NANSubscribe.Configuration.init(instanceID:serviceName:serviceSpecificInfo:queryPeriod:enableFastDiscovery:authenticationType:multicastAddress:allowedPairedDevicesUUIDs:type:multicastServiceType:timeoutAfterSeconds:discoveryMode:channelInfo:countryCode:multicastConfiguration:)(v263, v249, v255, v238, v231, v237, v30 != 0, v246, v242, v232, (v232 | ((v233 == 0) << 48)) >> 32, (v232 | ((v233 == 0) << 48)) >> 48, v199, (v240 ^ 1) & 1, (v240 ^ 1) & 1, v245, v201, v230, v210 | (v211 << 16), v222, v223, SWORD2(v223), SBYTE6(v223), SHIBYTE(v223));
    __chkstk_darwin();
    KeyPath = swift_getKeyPath();
    v215 = v250;
    v216 = v248;
    v217 = sub_1003551D4(v212, KeyPath, v250);
    v218 = v251;
    if (v216)
    {
      sub_10036D24C(v212, type metadata accessor for NANSubscribe.Configuration);

      swift_beginAccess();
      sub_1001D5218(v213);
      swift_endAccess();
      swift_willThrow();
    }

    else
    {
      v30 = v217;

      v219 = Logger.logObject.getter();
      v220 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v219, v220))
      {
        v221 = swift_slowAlloc();
        *v221 = 0;
        _os_log_impl(&_mh_execute_header, v219, v220, "createSubscribe done", v221, 2u);
      }

      sub_100012400(v215, &v258, &unk_100597480, &qword_1004B1798);
      if (v262)
      {
        sub_100016290(&v258, &unk_100597480, &qword_1004B1798);
        if (v41)
        {
          if ((v239 & 0x100000000) != 0)
          {
            sub_10036D24C(v212, type metadata accessor for NANSubscribe.Configuration);

            return v30;
          }

          sub_100391120(v218, v41, v239);
        }

        sub_10036D24C(v212, type metadata accessor for NANSubscribe.Configuration);
      }

      else
      {
        sub_10036D24C(v212, type metadata accessor for NANSubscribe.Configuration);

        sub_100016290(&v258, &unk_100597480, &qword_1004B1798);
      }
    }

    goto LABEL_114;
  }

  v204 = v41;

  result = [v84 countryCode];
  if (result)
  {
    v205 = result;
    v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v208 = v207;

    v209._countAndFlagsBits = v206;
    v209._object = v208;
    v210 = CountryCode.init(stringLiteral:)(v209);
    v41 = v204;
    goto LABEL_112;
  }

LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1003583D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = *a5;
  v10 = type metadata accessor for UUID();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v11 = type metadata accessor for WiFiAwarePairedDevice(0);
  v8[14] = v11;
  v8[15] = *(v11 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = *(*(v9 + 88) + 8);
  v8[20] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[21] = AssociatedTypeWitness;
  v8[22] = *(AssociatedTypeWitness - 8);
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_1003585C4, 0, 0);
}

uint64_t sub_1003585C4()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[9];
  v5 = *(v0[6] + *(*v0[6] + 304));
  swift_unownedRetainStrong();
  (*(v2 + 16))(v1, v5 + *(*v5 + 112), v3);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 136))(v3, AssociatedConformanceWitness);
  v0[24] = v7;
  v8 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v11 = *v7 + 392;
    v0[25] = *v11;
    v0[26] = v11 & 0xFFFFFFFFFFFFLL | 0xD6F0000000000000;
    v8 = sub_100358738;
    v9 = v7;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100358738()
{
  *(v0 + 216) = (*(v0 + 200))(*(v0 + 64), *(v0 + 72), 1, 0);
  *(v0 + 224) = 0;

  return _swift_task_switch(sub_10036D7C4, 0, 0);
}

uint64_t sub_1003587D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v9 = v21 - v8;
  sub_100012400(a3, v21 - v8, &qword_1005985E0, &unk_1004B0F80);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);

  if (v12 == 1)
  {
    sub_100016290(v9, &qword_1005985E0, &unk_1004B0F80);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100016290(a3, &qword_1005985E0, &unk_1004B0F80);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

unint64_t *sub_100358A80(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v578 = a1;
  v6 = v5;
  v562 = a5;
  v583 = a4;
  v577 = a3;
  v8 = *v5;
  v9 = type metadata accessor for DispatchTimeInterval();
  v566 = *(v9 - 8);
  v567 = v9;
  __chkstk_darwin();
  v571 = (&v546 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v572 = type metadata accessor for NANPublish.Configuration(0);
  __chkstk_darwin();
  v568 = &v546 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_1005985E0, &unk_1004B0F80);
  __chkstk_darwin();
  v570 = &v546 - v12;
  v584 = *(v8 + 88);
  v13 = *(v8 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v575 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  v580 = *(v575 - 1);
  __chkstk_darwin();
  v565 = &v546 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v574 = &v546 - v18;
  v581 = type metadata accessor for NANDriverCapabilities(0);
  __chkstk_darwin();
  v564 = &v546 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v569 = &v546 - v20;
  __chkstk_darwin();
  v563 = &v546 - v21;
  *&v22 = __chkstk_darwin().n128_u64[0];
  v24 = &v546 - v23;
  v25 = a2;
  v26 = [a2 serviceName];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  *(&v31 - 1) = NANServiceName.init(_:)(v30);
  v582 = v32;
  if (!v31)
  {
    v44 = v25;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v585 = v48;
      *v47 = 136315138;
      v49 = [v44 serviceName];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v51;

      v52 = sub_100002320(v50, v6, &v585);

      *(v47 + 4) = v52;

      _os_log_impl(&_mh_execute_header, v45, v46, "Cannot create new publish because '%s' is not a valid service name", v47, 0xCu);
      sub_100002A00(v48);
    }

    else
    {
    }

    sub_10000B02C();
    swift_allocError();
    v63 = xmmword_100481800;
    goto LABEL_22;
  }

  v573 = v25;
  v608 = v31;
  v33 = qword_100596C88;
  swift_beginAccess();
  v561 = v33;
  v34 = v584;
  v36 = _s8InstanceCMa_0(255, v13, v584, v35);

  WitnessTable = swift_getWitnessTable("]\r\n", v36);
  v560 = v13;
  *&v585 = v13;
  *(&v585 + 1) = v36;
  v586 = v34;
  v587 = WitnessTable;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v585);
  v38 = Dictionary.count.getter();

  v39 = *(v6 + *(*v6 + 304));
  swift_unownedRetainStrong();
  v40 = *(*v39 + 736);
  swift_beginAccess();
  sub_10036D334(v39 + v40, v24, type metadata accessor for NANDriverCapabilities);

  v41 = *&v24[*(v581 + 36)];
  sub_10036D24C(v24, type metadata accessor for NANDriverCapabilities);
  if (v38 >= v41)
  {
    v53 = v608;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v584 = swift_slowAlloc();
      *&v585 = v584;
      *v56 = 136315394;

      v57 = NANServiceName.description.getter(v582, v53);
      v59 = v58;

      v60 = sub_100002320(v57, v59, &v585);

      *(v56 + 4) = v60;
      swift_bridgeObjectRelease_n();
      *(v56 + 12) = 2048;

      v61 = Dictionary.count.getter();

      *(v56 + 14) = v61;

      _os_log_impl(&_mh_execute_header, v54, v55, "Cannot create new publish %s because exceeded maximum active count %ld", v56, 0x16u);
      sub_100002A00(v584);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_10000B02C();
    swift_allocError();
    v63 = xmmword_10048DED0;
LABEL_22:
    *v62 = v63;
    *(v62 + 16) = 1;
    swift_willThrow();
    return v6;
  }

  v556 = v24;
  sub_100012400(v578, &v585, &unk_100597480, &qword_1004B1798);
  v42 = v608;
  if (v588)
  {
    v43 = v583;
    swift_bridgeObjectRetain_n();
    sub_100016290(&v585, &unk_100597480, &qword_1004B1798);
  }

  else
  {
    v64 = v585;
    v43 = *(v585 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID + 8);
    v577 = *(v585 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_clientBundleID);
    swift_bridgeObjectRetain_n();
  }

  v559 = v39;
  v65 = qword_10059B9C0;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v581 = v65;
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.default.getter();
  v68 = os_log_type_enabled(v66, v67);
  v576 = v6;
  if (v68)
  {
    v69 = swift_slowAlloc();
    *&v585 = swift_slowAlloc();
    *v69 = 136315394;
    if (v43)
    {
      v70 = v577;
    }

    else
    {
      v70 = 0x6E776F6E6B6E7528;
    }

    if (v43)
    {
      v71 = v43;
    }

    else
    {
      v71 = 0xE900000000000029;
    }

    v72 = sub_100002320(v70, v71, &v585);

    *(v69 + 4) = v72;
    swift_bridgeObjectRelease_n();
    *(v69 + 12) = 2080;

    v73 = NANServiceName.description.getter(v582, v608);
    v75 = v74;

    v76 = sub_100002320(v73, v75, &v585);
    v42 = v608;

    *(v69 + 14) = v76;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&_mh_execute_header, v66, v67, "New client: %s requesting a publish with service name %s", v69, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v78 = v573;
  v79 = [v573 datapathConfiguration];
  if (v79)
  {
    v80 = v79;
    v81 = [v79 serviceType];

    v82 = v81 == 1;
    if (v81 == 2)
    {
      v82 = 2;
    }

    v557 = v82;
  }

  else
  {
    v557 = 0;
  }

  v83 = [v78 datapathConfiguration];
  if (v83)
  {
    v84 = v83;
    v85 = [v83 connectionMode];

    if (v85 <= 2)
    {
      v86 = 0x10002u >> (8 * v85);
    }

    else
    {
      v86 = 2;
    }
  }

  else
  {
    v86 = 2;
  }

  v583 = v43;
  if (v43)
  {
    v6 = v86;
    *&v594 = *(v576 + v561);
    __chkstk_darwin();
    v542 = v87;
    v543 = v584;
    v544 = v582;
    v545 = v42;
    v88 = type metadata accessor for Dictionary();

    swift_getWitnessTable(&protocol conformance descriptor for [A : B], v88);
    v89 = v579;
    Sequence.first(where:)();

    v90 = *(&v585 + 1);
    if (*(&v585 + 1))
    {

      v91 = &v90[qword_10059B890];
      swift_beginAccess();
      v92 = sub_1002EB6A8(v86, v91[*(v572 + 84) + 24]);
      v78 = v573;
      if (v92)
      {

        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v93, v94))
        {

LABEL_173:
          sub_10000B02C();
          swift_allocError();
          v255 = xmmword_10048DED0;
LABEL_226:
          *v254 = v255;
          *(v254 + 16) = 1;
          swift_willThrow();

          return v6;
        }

        v6 = v90;
        v95 = 0xD00000000000001FLL;
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *&v585 = v98;
        *v96 = 138412546;
        *(v96 + 4) = 0;
        *v97 = 0;
        *(v96 + 12) = 2080;
        if (v86)
        {
          if (v86 == 1)
          {
            v99 = "Allow connection to all devices";
            v95 = 0xD000000000000032;
LABEL_172:
            v253 = sub_100002320(v95, v99 | 0x8000000000000000, &v585);

            *(v96 + 14) = v253;

            _os_log_impl(&_mh_execute_header, v93, v94, "Existing publish instance %@ found for %s", v96, 0x16u);
            sub_100016290(v97, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v98);

            v90 = v6;
            goto LABEL_173;
          }

          v252 = "Allow connection to all devices";
        }

        else
        {
          v95 = 0xD000000000000027;
          v252 = "Allow connection to paired devices only";
        }

        v99 = v252 - 32;
        goto LABEL_172;
      }

      v579 = v89;
      v100 = sub_1002EB6A8(v86, 1u);
      v6 = v576;
      if (v100)
      {
        v101 = *NANConstants.WiFiAwareExclusivePublishPrivileges.unsafeMutableAddressor();

        v102 = sub_1004478AC(v577, v43, v101);

        v42 = v608;
        if ((v102 & 1) == 0)
        {
          swift_bridgeObjectRetain_n();
          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v103, v104))
          {
            v6 = v90;
            v105 = 0xD00000000000001FLL;
            v106 = swift_slowAlloc();
            *&v585 = swift_slowAlloc();
            *v106 = 136315394;
            if (v86)
            {
              if (v86 != 2)
              {
                v337 = "Allow connection to all devices";
                v105 = 0xD000000000000032;
                goto LABEL_239;
              }

              v107 = "Allow connection to all devices";
            }

            else
            {
              v105 = 0xD000000000000027;
              v107 = "Allow connection to paired devices only";
            }

            v337 = v107 - 32;
LABEL_239:
            v338 = sub_100002320(v105, v337 | 0x8000000000000000, &v585);

            *(v106 + 4) = v338;
            *(v106 + 12) = 2080;
            v339 = v583;

            v340 = sub_100002320(v577, v339, &v585);

            *(v106 + 14) = v340;
            swift_bridgeObjectRelease_n();

            _os_log_impl(&_mh_execute_header, v103, v104, "Invalid request %s from%s", v106, 0x16u);
            swift_arrayDestroy();

            v90 = v6;
            goto LABEL_225;
          }

          swift_bridgeObjectRelease_n();

LABEL_225:
          sub_10000B02C();
          swift_allocError();
          v255 = xmmword_100481800;
          goto LABEL_226;
        }
      }

      else
      {

        v42 = v608;
      }

      if (sub_1002EB6A8(v86, 1u))
      {
        if (![v78 timeoutAfterSeconds])
        {
          [v78 setTimeoutAfterSeconds:1800];
        }

        v554 = 1;
      }

      else
      {
        v554 = 0;
      }
    }

    else
    {
      v579 = v89;

      v554 = 0;
      v42 = v608;
      v78 = v573;
    }
  }

  else
  {
    v554 = 0;
    v90 = 0;
  }

  swift_unownedRetainStrong();
  v108 = v574;
  WiFiInterface.preferences.getter();

  v109 = v575;
  v110 = Preferences.enableMulticastKeys.getter(v575);
  v111 = *(v580 + 8);
  v580 += 8;
  v555 = v111;
  v111(v108, v109);
  if (v110)
  {
    v112 = v90;
    if (sub_1002EB6A8(v86, 1u) & 1) != 0 || (v113 = sub_1002EB6A8(v86, 0), LODWORD(v561) = 0, (v113))
    {
      LODWORD(v561) = 1;
    }

    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v114, v115))
    {

LABEL_71:
      v90 = v112;
      goto LABEL_72;
    }

    v116 = v86;
    v117 = 0xD00000000000001FLL;
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    *&v585 = v119;
    *v118 = 67109378;
    *(v118 + 4) = v561;
    *(v118 + 8) = 2080;
    v558 = v116;
    if (v116)
    {
      if (v116 != 2)
      {
        v121 = "Allow connection to all devices";
        v117 = 0xD000000000000032;
        goto LABEL_70;
      }

      v120 = "Allow connection to all devices";
    }

    else
    {
      v117 = 0xD000000000000027;
      v120 = "Allow connection to paired devices only";
    }

    v121 = v120 - 32;
LABEL_70:
    v122 = sub_100002320(v117, v121 | 0x8000000000000000, &v585);

    *(v118 + 10) = v122;
    _os_log_impl(&_mh_execute_header, v114, v115, "Publisher: Setting gtk_required: %{BOOL}d for %s", v118, 0x12u);
    sub_100002A00(v119);

    v42 = v608;
    v78 = v573;
    v86 = v558;
    goto LABEL_71;
  }

  LODWORD(v561) = 0;
LABEL_72:
  v123 = sub_1002EB6A8(v86, 1u);
  v6 = v576;
  v572 = v90;
  if (v123 & 1) != 0 || (sub_1002EB6A8(v86, 0))
  {
    if ((sub_1002EB6A8(v86, 1u) & 1) == 0)
    {
      goto LABEL_77;
    }

    v124 = [v78 pairingMetadata];
    if (v124)
    {

LABEL_77:
      v125 = [v78 datapathConfiguration];
      if (v125)
      {
        v126 = v125;
        v127 = sub_1002EB6A8(v86, 1u);
        v553 = v126;
        if ((v127 & 1) == 0)
        {
LABEL_81:
          v129 = [v126 securityConfiguration];
          if (!v129 || (v130 = v129, v131 = [v129 pairingConfiguration], v130, !v131))
          {
            v132 = objc_allocWithZone(WiFiAwarePairingConfiguration);
            sub_10036CDE8();
            isa = Array._bridgeToObjectiveC()().super.isa;
            v131 = [v132 initWithSupportedPairSetupMethods:isa pairingCachingEnabled:0];
          }

          [v131 setPairingCachingEnabled:1];
          v134 = [v131 supportedPairSetupMethods];
          sub_10036CDE8();
          v135 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v135 >> 62)
          {
            v136 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v136 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v137 = v553;
          if (!v136)
          {
            sub_10005DC58(&unk_1005974D0, &qword_1004B2300);
            v138 = swift_allocObject();
            *(v138 + 16) = xmmword_1004B1170;
            *(v138 + 32) = WiFiAwarePairingMethod.asNSNumber.getter(2);
            v139 = Array._bridgeToObjectiveC()().super.isa;
            v137 = v553;

            [v131 setSupportedPairSetupMethods:v139];
          }

          v140 = [v137 securityConfiguration];
          if (!v140)
          {
            v140 = [objc_allocWithZone(WiFiAwarePublishDatapathSecurityConfiguration) initWithPairingConfiguration:v131 usingPairingDelegate:0];
          }

          v558 = v86;
          v552 = v131;
          [v140 setPairingConfiguration:v131];
          v141 = [v78 datapathConfiguration];
          v42 = v608;
          if (v141)
          {
            v142 = v141;
            [v141 setSecurityConfiguration:v140];
          }

          v143 = v137;
          v144 = Logger.logObject.getter();
          v145 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v144, v145))
          {

            v90 = v572;
LABEL_114:
            v6 = v576;
            LODWORD(v86) = v558;
            goto LABEL_115;
          }

          v146 = 0xD00000000000001FLL;
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          *&v585 = v149;
          *v147 = 136315394;
          v550 = v148;
          v551 = v149;
          if (v558)
          {
            if (v558 != 2)
            {
              v178 = "Allow connection to all devices";
              v146 = 0xD000000000000032;
              goto LABEL_113;
            }

            v150 = "Allow connection to all devices";
          }

          else
          {
            v146 = 0xD000000000000027;
            v150 = "Allow connection to paired devices only";
          }

          v178 = v150 - 32;
LABEL_113:
          v179 = sub_100002320(v146, v178 | 0x8000000000000000, &v585);

          *(v147 + 4) = v179;
          *(v147 + 12) = 2112;
          *(v147 + 14) = v143;
          v180 = v550;
          *v550 = v553;

          _os_log_impl(&_mh_execute_header, v144, v145, "Connection Mode: %s. Datapath configuration set to: %@", v147, 0x16u);
          sub_100016290(v180, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v551);

          v90 = v572;
          v78 = v573;
          v42 = v608;
          goto LABEL_114;
        }

        v128 = [v126 securityConfiguration];
        if (v128)
        {

          goto LABEL_81;
        }

        swift_bridgeObjectRetain_n();
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v169, v170))
        {

          swift_bridgeObjectRelease_n();
LABEL_234:
          sub_10000B02C();
          swift_allocError();
          *v326 = xmmword_100481800;
          *(v326 + 16) = 1;
          swift_willThrow();

          return v6;
        }

        v171 = 0xD00000000000001FLL;
        v172 = swift_slowAlloc();
        v584 = swift_slowAlloc();
        *&v585 = v584;
        *v172 = 136315394;

        v173 = NANServiceName.description.getter(v582, v42);
        v6 = v86;
        v175 = v174;

        v176 = sub_100002320(v173, v175, &v585);

        *(v172 + 4) = v176;
        swift_bridgeObjectRelease_n();
        *(v172 + 12) = 2080;
        if (v6)
        {
          if (v6 != 2)
          {
            v324 = "Allow connection to all devices";
            v171 = 0xD000000000000032;
            goto LABEL_233;
          }

          v177 = "Allow connection to all devices";
        }

        else
        {
          v171 = 0xD000000000000027;
          v177 = "Allow connection to paired devices only";
        }

        v324 = v177 - 32;
LABEL_233:
        v325 = sub_100002320(v171, v324 | 0x8000000000000000, &v585);

        *(v172 + 14) = v325;

        _os_log_impl(&_mh_execute_header, v169, v170, "Cannot create new publish %s because connection mode %s requires security configuration to be non-nil", v172, 0x16u);
        swift_arrayDestroy();

        v90 = v572;
        v126 = v553;
        goto LABEL_234;
      }

      swift_bridgeObjectRetain_n();
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        *&v585 = v6;
        *v153 = 136315394;

        v154 = NANServiceName.description.getter(v582, v42);
        v155 = v86;
        v157 = v156;

        v158 = sub_100002320(v154, v157, &v585);

        *(v153 + 4) = v158;
        swift_bridgeObjectRelease_n();
        *(v153 + 12) = 2080;
        if (v155)
        {
          if (v155 == 2)
          {
            v159 = "OWE Key Generation";
            v160 = 0xD00000000000001FLL;
          }

          else
          {
            v159 = "Allow connection to all devices";
            v160 = 0xD000000000000032;
          }
        }

        else
        {
          v160 = 0xD000000000000027;
          v159 = "rable devices only";
        }

        v283 = sub_100002320(v160, v159 | 0x8000000000000000, &v585);

        *(v153 + 14) = v283;

        _os_log_impl(&_mh_execute_header, v151, v152, "Cannot create new publish %s because connection mode %s requires datapath configuration to be non-nil", v153, 0x16u);
        swift_arrayDestroy();
        goto LABEL_224;
      }

LABEL_105:

      swift_bridgeObjectRelease_n();
      goto LABEL_225;
    }

    swift_bridgeObjectRetain_n();
    v151 = Logger.logObject.getter();
    v161 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v151, v161))
    {
      goto LABEL_105;
    }

    v162 = 0xD00000000000001FLL;
    v163 = swift_slowAlloc();
    v584 = swift_slowAlloc();
    *&v585 = v584;
    *v163 = 136315394;

    v164 = NANServiceName.description.getter(v582, v42);
    v6 = v86;
    v166 = v165;

    v167 = sub_100002320(v164, v166, &v585);

    *(v163 + 4) = v167;
    swift_bridgeObjectRelease_n();
    *(v163 + 12) = 2080;
    if (v6)
    {
      if (v6 != 2)
      {
        v321 = "Allow connection to all devices";
        v162 = 0xD000000000000032;
        goto LABEL_223;
      }

      v168 = "Allow connection to all devices";
    }

    else
    {
      v162 = 0xD000000000000027;
      v168 = "Allow connection to paired devices only";
    }

    v321 = v168 - 32;
LABEL_223:
    v322 = sub_100002320(v162, v321 | 0x8000000000000000, &v585);

    *(v163 + 14) = v322;

    _os_log_impl(&_mh_execute_header, v151, v161, "Cannot create new publish %s because connection mode %s requires pairing metadata", v163, 0x16u);
    swift_arrayDestroy();
LABEL_224:

    v90 = v572;
    goto LABEL_225;
  }

LABEL_115:
  v181 = [v78 internetSharingConfiguration];
  if (v181)
  {
    v182 = v181;
    v6 = &unk_100588000;
    v183 = [v181 interfaceName];
    if (v183)
    {
      v184 = v183;
      v185 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v187 = v186;

      if (([v182 automatic] & 1) == 0 && objc_msgSend(v182, "provider"))
      {
        v188 = [v182 useBridging];

        *&v594 = v185;
        *(&v594 + 1) = v187;
        LOBYTE(v595) = v188;
        v597 = 0;
        v90 = v572;
        v6 = v576;
        goto LABEL_121;
      }
    }

    v194 = [v182 interfaceName];
    if (v194)
    {
      v195 = v194;

      goto LABEL_175;
    }

    if (![v182 automatic] || objc_msgSend(v182, "provider") || (sub_1002EB7AC(v557, 2u) & 1) == 0)
    {

LABEL_175:
      v256 = v182;
      swift_bridgeObjectRetain_n();
      v126 = v256;
      v257 = Logger.logObject.getter();
      v258 = v42;
      v259 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v257, v259))
      {
        v260 = swift_slowAlloc();
        v584 = swift_slowAlloc();
        *&v585 = v584;
        *v260 = 136316162;

        v261 = NANServiceName.description.getter(v582, v258);
        v263 = v262;

        v264 = sub_100002320(v261, v263, &v585);

        *(v260 + 4) = v264;
        swift_bridgeObjectRelease_n();
        *(v260 + 12) = 2080;
        v265 = [v126 automatic];
        v266 = v265 == 0;
        if (v265)
        {
          v267 = 0x6974616D6F747561;
        }

        else
        {
          v267 = 0;
        }

        if (v266)
        {
          v268 = 0xE000000000000000;
        }

        else
        {
          v268 = 0xEA00000000002063;
        }

        v269 = sub_100002320(v267, v268, &v585);

        *(v260 + 14) = v269;

        *(v260 + 22) = 2080;
        v270 = [v126 provider];
        v271 = v270 == 0;
        if (v270)
        {
          v272 = 0x72656469766F7270;
        }

        else
        {
          v272 = 0x6574736575716572;
        }

        if (v271)
        {
          v273 = 0xE900000000000072;
        }

        else
        {
          v273 = 0xE800000000000000;
        }

        v274 = sub_100002320(v272, v273, &v585);

        *(v260 + 24) = v274;

        *(v260 + 32) = 2080;
        v275 = [v126 interfaceName];
        if (v275)
        {
          v6 = v275;
          v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v278 = v277;
        }

        else
        {
          v278 = 0xE400000000000000;
          v276 = 1701736302;
        }

        v279 = sub_100002320(v276, v278, &v585);

        *(v260 + 34) = v279;

        *(v260 + 42) = 2080;
        v90 = v572;
        if (v557)
        {
          if (v557 == 2)
          {
            v280 = 0xEA00000000007963;
            v281 = 0x6E6574614C776F6CLL;
          }

          else
          {
            v280 = 0xE800000000000000;
            v281 = 0x656D69746C616572;
          }
        }

        else
        {
          v280 = 0xE800000000000000;
          v281 = 0x6576697470616461;
        }

        v282 = sub_100002320(v281, v280, &v585);

        *(v260 + 44) = v282;

        _os_log_impl(&_mh_execute_header, v257, v259, "Cannot create new publish %s because of invalid internet sharing policy %s%s on interface: %s with service type: %s", v260, 0x34u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v90 = v572;
      }

      goto LABEL_234;
    }

    v6 = v576;
    v197 = *(v576 + *(*v576 + 280));
    *(&v595 + 1) = type metadata accessor for LowLatencyInternetRequesterPolicy(0, v560, v584, v196);
    v596 = &off_10057A348;
    v198 = v197;

    *&v594 = v198;
    v597 = 1;
    v90 = v572;
  }

  else
  {
    v596 = 0;
    v594 = 0u;
    v595 = 0u;
    v597 = -1;
  }

LABEL_121:
  sub_100012400(&v594, &v585, &unk_1005974B0, &qword_1004AFCF0);
  v189 = v589;
  if (v589 == 255)
  {
    sub_100016290(&v585, &unk_1005974B0, &qword_1004AFCF0);
  }

  else
  {
    sub_10020C758(&v585);
    if ((v189 & 1) == 0)
    {
      v190 = v559;
      swift_unownedRetainStrong();
      v191 = *(v190 + *(*v190 + 480));

      if (v191)
      {
        goto LABEL_140;
      }

      swift_unownedRetainStrong();
      v192 = v579;
      v193 = sub_10040EF90();
      goto LABEL_137;
    }
  }

  v199 = [v78 datapathConfiguration];
  if (!v199 || (v200 = v199, v201 = [v199 serviceType], v200, v201 != 2))
  {
    v191 = v559;
    swift_unownedRetainStrong();
    goto LABEL_140;
  }

  v202 = v559;
  swift_unownedRetainStrong();
  v191 = *(v202 + *(*v202 + 472));

  if (v191)
  {
    goto LABEL_140;
  }

  swift_unownedRetainStrong();
  v192 = v579;
  v193 = sub_10040FB70();
LABEL_137:
  v579 = v192;
  if (v192)
  {

    sub_100016290(&v594, &unk_1005974B0, &qword_1004AFCF0);
    return v6;
  }

  v191 = v193;

LABEL_140:
  sub_100012400(v578, &v585, &unk_100597480, &qword_1004B1798);
  v558 = v86;
  v553 = v191;
  if (v588 == 1)
  {
    sub_100016290(&v585, &unk_100597480, &qword_1004B1798);
    if (v90)
    {
LABEL_142:
      v203 = qword_10059B890;
      swift_beginAccess();
      v204 = v90[v203];
      goto LABEL_149;
    }
  }

  else
  {
    v205 = v585;
    v206 = objc_opt_self();
    v207 = [v206 interfaceWithProtocol:&OBJC_PROTOCOL___WiFiAwarePublisherXPC];
    v86 = v78;
    v208 = v6;
    v209 = v90;
    v210 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection;
    [*&v205[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] setExportedInterface:v207];

    v42 = v608;
    v211 = v206;
    v191 = v553;
    v212 = [v211 interfaceWithProtocol:&OBJC_PROTOCOL___WiFiAwarePublisherXPCDelegate];
    v213 = *&v205[v210];
    v90 = v209;
    v6 = v208;
    v78 = v86;
    LOBYTE(v86) = v558;
    [v213 setRemoteObjectInterface:v212];

    if (v90)
    {
      goto LABEL_142;
    }
  }

  swift_beginAccess();
  v214 = sub_10005DC58(&qword_100597328, &qword_1004B1638);
  IDPool.availableID()(v214, &v591);
  swift_endAccess();
  if ((v591 & 0x100) != 0)
  {

    swift_bridgeObjectRetain_n();
    v215 = Logger.logObject.getter();
    v216 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v215, v216))
    {
      v6 = v191;
      v217 = swift_slowAlloc();
      v218 = v42;
      v219 = swift_slowAlloc();
      *&v585 = v219;
      *v217 = 136315138;

      v220 = NANServiceName.description.getter(v582, v218);
      v222 = v221;

      v223 = sub_100002320(v220, v222, &v585);

      *(v217 + 4) = v223;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&_mh_execute_header, v215, v216, "Cannot create new publish %s because no more instance IDs were available", v217, 0xCu);
      sub_100002A00(v219);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_10000B02C();
    swift_allocError();
    *v323 = xmmword_1004B1160;
    *(v323 + 16) = 1;
    swift_willThrow();

    goto LABEL_331;
  }

  v204 = v591;
LABEL_149:
  LODWORD(v552) = v204;
  v224 = _swiftEmptyArrayStorage;
  v225 = _swiftEmptyArrayStorage[2];
  if (v225)
  {
    v226 = 0;
    v227 = &_swiftEmptyArrayStorage[4];
    do
    {
      v229 = *v227++;
      v228 = v229;
      if ((v229 & ~v226) == 0)
      {
        v228 = 0;
      }

      v226 |= v228;
      --v225;
    }

    while (v225);
  }

  else
  {
    v226 = 0;
  }

  swift_unownedRetainStrong();
  v230 = v574;
  WiFiInterface.preferences.getter();

  v231 = v575;
  v232 = Preferences.disableAuthentication.getter(v575);
  (v555)(v230, v231);
  v233 = (v232 & 1) != 0 || [v78 authenticationType] != 1;
  LODWORD(v551) = v233;
  v593 = _swiftEmptyArrayStorage;
  v234 = [v78 datapathConfiguration];
  v574 = v234;
  if (v234)
  {
    v236 = [v234 securityConfiguration];
    if (v236)
    {
      v237 = v236;
      v238 = [v236 pmkList];
      v239 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v240 = v239[2];
      v550 = v237;
      if (!v240)
      {

LABEL_204:
        v284 = v559;
        swift_unownedRetainStrong();
        v285 = *(*v284 + 736);
        swift_beginAccess();
        v286 = v556;
        sub_10036D334(v284 + v285, v556, type metadata accessor for NANDriverCapabilities);

        v287 = *(v286 + 8);

        sub_10036D24C(v286, type metadata accessor for NANDriverCapabilities);
        v288 = *(v287 + 16);
        v289 = (v287 + 32);
        do
        {
          if (!v288)
          {

            goto LABEL_212;
          }

          v290 = *v289++;
          --v288;
        }

        while (v290 < 6);

        v291 = [v237 pairingConfiguration];
        if (v291)
        {
          v292 = v291;
          v293 = [v291 supportedPairSetupMethods];

          sub_10036CDE8();
          v294 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v295 = v579;
          LOWORD(v293) = sub_10033A730(0, v294);
          v579 = v295;

          v296 = *NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods.unsafeMutableAddressor() & v293;
          if (v296)
          {
            v297 = [v550 pairingConfiguration];
            if (v297)
            {
              v298 = v297;
              v299 = [v297 pairingCachingEnabled];
            }

            else
            {
              v299 = 0;
            }

            v349 = [v550 pairingConfiguration];
            if (v349)
            {
              v350 = v349;
              v351 = [v349 pairingSetupMode];

              LODWORD(v563) = v351 == 1;
            }

            else
            {
              LODWORD(v563) = 0;
            }

            v352 = v559;
            swift_unownedRetainStrong();
            v353 = *(*v352 + 736);
            swift_beginAccess();
            v354 = v556;
            sub_10036D334(v352 + v353, v556, type metadata accessor for NANDriverCapabilities);

            v355 = *(v354 + 8);

            sub_10036D24C(v354, type metadata accessor for NANDriverCapabilities);
            v356 = v579;
            v357 = sub_10036A9C4(v355);

            v224 = sub_100336D5C(v357);
            v579 = v356;

            v593 = v224;
            v358 = Logger.logObject.getter();
            v359 = static os_log_type_t.default.getter();
            v360 = os_log_type_enabled(v358, v359);
            LODWORD(v569) = v299;
            if (v360)
            {
              v361 = swift_slowAlloc();
              *v361 = 33554944;
              *(v361 + 4) = v296;
              *(v361 + 6) = 1024;
              *(v361 + 8) = v299;
              _os_log_impl(&_mh_execute_header, v358, v359, "Using pairing security configuration with pairing methods: %hu, caching: %{BOOL}d", v361, 0xCu);
              v42 = v608;
            }

            v226 = v296;
            v78 = v573;
            goto LABEL_251;
          }

          v237 = v550;
        }

LABEL_212:
        v300 = v559;
        swift_unownedRetainStrong();
        v301 = *(*v300 + 736);
        swift_beginAccess();
        v302 = v300 + v301;
        v303 = v569;
        sub_10036D334(v302, v569, type metadata accessor for NANDriverCapabilities);

        v304 = *(v303 + 8);

        sub_10036D24C(v303, type metadata accessor for NANDriverCapabilities);
        *&v585 = v304;
        v305 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
        v306 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0, &protocol conformance descriptor for [A]);
        v307 = Collection<>.strongestSupportedSharedKeySuite.getter(v305, v306);

        if (v307 == 8)
        {

          v308 = v608;
        }

        else
        {
          v309 = [v237 pairingConfiguration];
          v308 = v608;
          if (!v309)
          {
            v327 = [v237 pmkList];
            v328 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v329 = v579;
            v330 = sub_100339558(v328, v307);
            v579 = v329;

            sub_10044C20C(v330);
            v331 = [v237 passphraseList];
            v332 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v333 = v579;
            sub_100336EA0(v332);
            v335 = v334;

            __chkstk_darwin();
            LOBYTE(v542) = v307;
            v543 = v582;
            v544 = v608;
            v545 = v576;
            v42 = v608;
            v336 = sub_100336F90(sub_10036CF20, v541, v335);
            v579 = v333;

            sub_10044C20C(v336);

            LODWORD(v563) = 0;
            LODWORD(v569) = 0;
            v224 = v593;
            goto LABEL_251;
          }
        }

        swift_bridgeObjectRetain_n();
        v310 = Logger.logObject.getter();
        v311 = static os_log_type_t.error.getter();
        v312 = os_log_type_enabled(v310, v311);
        v6 = v572;
        if (v312)
        {
          v313 = swift_slowAlloc();
          v314 = swift_slowAlloc();
          *&v585 = v314;
          *v313 = 136315138;

          v315 = NANServiceName.description.getter(v582, v308);
          v317 = v316;

          v318 = sub_100002320(v315, v317, &v585);

          *(v313 + 4) = v318;
          swift_bridgeObjectRelease_n();
          _os_log_impl(&_mh_execute_header, v310, v311, "Cannot create new publish %s because the client specified a security configuration but failed to derive a valid configuration", v313, 0xCu);
          sub_100002A00(v314);
          v237 = v550;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v319 = v552;
        sub_10000B02C();
        swift_allocError();
        *v320 = xmmword_1004881C0;
        *(v320 + 16) = 1;
        swift_willThrow();

        goto LABEL_330;
      }

      v241 = v239[4];
      v242 = v239[5];
      sub_10000AB0C(v241, v242);

      v243 = NANPMK.init(pmk:)(v241, v242);
      if (v244 >> 60 == 15)
      {
        goto LABEL_204;
      }

      v86 = v243;
      v245 = v237;
      v246 = v244;
      v247 = [v245 pmkID];
      if (!v247 || (v248 = v247, v249 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v248, v250 = NANPMK.ID.init(_:)(v249), v251 >> 60 == 15))
      {
        sub_100017554(v86, v246);
LABEL_166:
        LOBYTE(v86) = v558;
        v237 = v550;
        goto LABEL_204;
      }

      rawValue = v250;
      v549 = v251;
      v341 = v559;
      swift_unownedRetainStrong();
      v342 = *(*v341 + 736);
      swift_beginAccess();
      v343 = v341 + v342;
      v344 = v563;
      sub_10036D334(v343, v563, type metadata accessor for NANDriverCapabilities);

      v345 = *(v344 + 8);

      sub_10036D24C(v344, type metadata accessor for NANDriverCapabilities);
      *&v585 = v345;
      v346 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
      v347 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0, &protocol conformance descriptor for [A]);
      v348 = Collection<>.strongestSupportedPublicKeySuite.getter(v346, v347);
      if (v348 == 8)
      {
        sub_100017554(v86, v246);
        sub_100017554(rawValue, v549);

        v42 = v608;
        goto LABEL_166;
      }

      v362 = v348;

      sub_10005DC58(&unk_100597450, &qword_1004B16D0);
      v224 = swift_allocObject();
      *(v224 + 1) = xmmword_100480F40;
      sub_10005D67C(v86, v246);
      v363 = rawValue;
      v364 = v549;
      sub_10005D67C(rawValue, v549);
      sub_100017554(0, 0xF000000000000000);
      sub_10000AB0C(v86, v246);
      sub_10005D67C(v363, v364);
      sub_1000124C8(v86, v246);
      sub_100017554(v363, v364);

      *(v224 + 32) = v362;
      v224[5] = v86;
      v224[6] = v246;
      v224[7] = v363;
      v224[8] = v364;
      v224[9] = 0;
      v224[10] = 0;
      sub_100017554(v86, v246);
      sub_100017554(v363, v364);

      LODWORD(v563) = 0;
      LODWORD(v569) = 0;
      v593 = v224;
      v42 = v608;
      LOBYTE(v86) = v558;
    }

    else
    {
      LODWORD(v563) = 0;
      LODWORD(v569) = 0;
      v224 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    LODWORD(v563) = 0;
    LODWORD(v569) = 0;
  }

LABEL_251:
  if (!v224[2])
  {
    swift_unownedRetainStrong();
    v365 = v565;
    WiFiInterface.preferences.getter();

    v366 = v575;
    v367 = Preferences.automaticallyUseEncryption.getter(v575);
    (v555)(v365, v366);
    if ((v367 & 1) != 0 || v551 != 1)
    {
      if (v574)
      {
        v368 = [v574 securityConfiguration];
        if (v368)
        {
          v369 = v368;
          v370 = [v368 pairingConfiguration];

          if (v370)
          {

LABEL_260:
            swift_bridgeObjectRetain_n();
            v379 = Logger.logObject.getter();
            v380 = static os_log_type_t.error.getter();
            v381 = os_log_type_enabled(v379, v380);
            v6 = v572;
            if (v381)
            {
              v382 = swift_slowAlloc();
              v383 = swift_slowAlloc();
              *&v585 = v383;
              *v382 = 136315138;

              v384 = NANServiceName.description.getter(v582, v42);
              v386 = v385;

              v387 = sub_100002320(v384, v386, &v585);

              *(v382 + 4) = v387;
              swift_bridgeObjectRelease_n();
              _os_log_impl(&_mh_execute_header, v379, v380, "Cannot create new publish %s because encryption is required but no suitable cipher suite exists", v382, 0xCu);
              sub_100002A00(v383);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            v319 = v552;
            sub_10000B02C();
            swift_allocError();
            *v460 = xmmword_1004881C0;
            *(v460 + 16) = 1;
            swift_willThrow();
            goto LABEL_329;
          }
        }
      }

      v371 = v559;
      swift_unownedRetainStrong();
      v372 = *(*v371 + 736);
      swift_beginAccess();
      v373 = v371 + v372;
      v374 = v564;
      sub_10036D334(v373, v564, type metadata accessor for NANDriverCapabilities);

      v375 = *(v374 + 8);

      sub_10036D24C(v374, type metadata accessor for NANDriverCapabilities);
      *&v585 = v375;
      v376 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
      v377 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0, &protocol conformance descriptor for [A]);
      v378 = Collection<>.strongestSupportedSharedKeySuite.getter(v376, v377);

      if (v378 == 8)
      {

        v42 = v608;
        goto LABEL_260;
      }

      v388 = static NANPMK.zero.getter();
      v390 = v389;
      sub_100017554(0, 0xF000000000000000);
      v602[0] = v378;
      v603 = v388;
      v604 = v390;
      v605 = xmmword_100483C50;
      v606 = 0;
      v607 = 0;
      sub_100300208(v602, &v585);
      sub_1000124C8(v388, v390);
      sub_100017554(0, 0xF000000000000000);

      *&v235 = sub_1003391F8(v602).n128_u64[0];
    }
  }

  v391 = [v78 multicastAddress];
  if (v391)
  {
    v392 = WiFiMACAddress.wifiAddress.getter();

    v565 = v392 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v565 = 0;
  }

  v564 = v391;
  v393 = swift_allocObject();
  v580 = v393;
  *(v393 + 16) = 0;
  v575 = (v393 + 16);
  v394 = [v78 allowedDeviceIDs];
  if (v394)
  {
    v395 = v394;
    sub_10036CDE8();
    sub_10036D49C(&qword_10059B290, sub_10036CDE8, &protocol conformance descriptor for NSObject);
    v396 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v397 = v579;
    sub_1003370E4(v396);
    v399 = v398;
    v579 = v397;

    v400 = v583;
    if (!v583)
    {

      v419 = v608;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v420 = Logger.logObject.getter();
      v421 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v420, v421))
      {
        v422 = swift_slowAlloc();
        *&v585 = swift_slowAlloc();
        *v422 = 136315394;

        v423 = NANServiceName.description.getter(v582, v419);
        v425 = v424;

        v426 = sub_100002320(v423, v425, &v585);

        *(v422 + 4) = v426;
        swift_bridgeObjectRelease_n();
        *(v422 + 12) = 2080;

        v427 = Array.description.getter();
        v429 = v428;

        v430 = sub_100002320(v427, v429, &v585);

        *(v422 + 14) = v430;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&_mh_execute_header, v420, v421, "Cannot create new publish for %s because no client bundle ID could be determined to enforce allowedDeviceIDs: %s", v422, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
      }

      v6 = v572;
      v319 = v552;
      sub_10000B02C();
      swift_allocError();
      *v431 = xmmword_100481800;
      *(v431 + 16) = 1;
      swift_willThrow();

      goto LABEL_330;
    }

    v401 = dispatch_semaphore_create(0);
    v402 = type metadata accessor for TaskPriority();
    v403 = v399;
    (*(*(v402 - 8) + 56))(v570, 1, 1, v402);
    v404 = swift_allocObject();
    v404[2] = 0;
    v404[3] = 0;
    v404[4] = v401;
    v405 = v577;
    v406 = v580;
    v404[5] = v576;
    v404[6] = v406;
    v404[7] = v405;
    v404[8] = v400;
    v404[9] = v403;

    v407 = v401;

    v556 = v403;

    sub_1003587D4(0, 0, v570, &unk_1004B17C0, v404);

    OS_dispatch_semaphore.wait()();
    v408 = v608;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v409 = Logger.logObject.getter();
    v410 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v409, v410))
    {
      LODWORD(v570) = v410;
      v411 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v585 = v86;
      *v411 = 136315394;

      v412 = NANServiceName.description.getter(v582, v408);
      v414 = v413;

      v415 = sub_100002320(v412, v414, &v585);

      *(v411 + 4) = v415;
      swift_bridgeObjectRelease_n();
      *(v411 + 12) = 2048;
      v416 = v575;
      swift_beginAccess();
      v417 = *v416;
      v555 = v407;
      if (v417)
      {
        v418 = *(v417 + 16);
      }

      else
      {
        v418 = 0;
      }

      *(v411 + 14) = v418;

      _os_log_impl(&_mh_execute_header, v409, v570, "Publish: %s filtering for: %ld paired devices", v411, 0x16u);
      sub_100002A00(v86);

      v78 = v573;
      LOBYTE(v86) = v558;
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  v432 = Logger.logObject.getter();
  v433 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v432, v433))
  {

    goto LABEL_288;
  }

  v434 = v86;
  v86 = 0xD00000000000001FLL;
  v435 = swift_slowAlloc();
  v436 = swift_slowAlloc();
  *&v585 = v436;
  *v435 = 136315138;
  if (v434)
  {
    if (v434 != 2)
    {
      v438 = "Allow connection to all devices";
      v86 = 0xD000000000000032;
      goto LABEL_287;
    }

    v437 = "Allow connection to all devices";
  }

  else
  {
    v86 = 0xD000000000000027;
    v437 = "Allow connection to paired devices only";
  }

  v438 = v437 - 32;
LABEL_287:
  v439 = sub_100002320(v86, v438 | 0x8000000000000000, &v585);

  *(v435 + 4) = v439;
  _os_log_impl(&_mh_execute_header, v432, v433, "NAN-Publish: Connection Mode: %s", v435, 0xCu);
  sub_100002A00(v436);

  v78 = v573;
  LOBYTE(v86) = v558;
LABEL_288:
  v440 = [v78 channelInfo];
  if (!v440)
  {
    v449 = Logger.logObject.getter();
    v450 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v449, v450))
    {
      v451 = swift_slowAlloc();
      *v451 = 0;
      _os_log_impl(&_mh_execute_header, v449, v450, "chan info is nil", v451, 2u);
    }

    v452 = 0x300000000;
    goto LABEL_333;
  }

  result = [v78 channelInfo];
  if (!result)
  {
LABEL_378:
    __break(1u);
    goto LABEL_379;
  }

  v441 = Channel.init(apiChannel:)(result);
  if ((v441 & 0xFF00000000) == 0x300000000)
  {

    v442 = v78;
    v443 = Logger.logObject.getter();
    v444 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v443, v444))
    {
      v445 = swift_slowAlloc();
      v446 = swift_slowAlloc();
      *v445 = 138412290;
      v447 = [v442 channelInfo];
      *(v445 + 4) = v447;
      *v446 = v447;

      v448 = "Invalid channel information provided %@";
LABEL_326:
      _os_log_impl(&_mh_execute_header, v443, v444, v448, v445, 0xCu);
      sub_100016290(v446, &qword_10058B780, &qword_100480AC0);

LABEL_328:
      v6 = v572;
      v319 = v552;
      sub_10000B02C();
      swift_allocError();
      *v467 = xmmword_100481800;
      *(v467 + 16) = 1;
      swift_willThrow();

LABEL_329:

LABEL_330:
      swift_beginAccess();
      sub_1001D5218(v319);
      swift_endAccess();
      swift_willThrow();

LABEL_331:
      sub_100016290(&v594, &unk_1005974B0, &qword_1004AFCF0);
      return v6;
    }

    goto LABEL_327;
  }

  v453 = v441;
  v454 = BYTE4(v441);
  v455 = Logger.logObject.getter();
  v456 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v455, v456))
  {

    goto LABEL_321;
  }

  v555 = v453 >> 40;
  v457 = swift_slowAlloc();
  v556 = swift_slowAlloc();
  *&v585 = v556;
  *v457 = 67109634;
  *(v457 + 4) = v453;
  *(v457 + 8) = 2080;
  v570 = v454;
  if (v454)
  {
    if (v454 == 1)
    {
      v458 = 0xE500000000000000;
      v459 = 0x7A48472035;
    }

    else
    {
      v459 = 0x7A48472036;
      v458 = 0xE500000000000000;
    }
  }

  else
  {
    v458 = 0xE700000000000000;
    v459 = 0x7A484720342E32;
  }

  v461 = 0x7A484D203031;
  v462 = sub_100002320(v459, v458, &v585);

  *(v457 + 10) = v462;
  *(v457 + 18) = 2080;
  if (v555 <= 3u)
  {
    if (v555 == 2)
    {
      v86 = 0xE600000000000000;
      goto LABEL_320;
    }

    if (v555 == 3)
    {
      v461 = 0x7A484D203032;
      v86 = 0xE600000000000000;
      goto LABEL_320;
    }

    goto LABEL_316;
  }

  if (v555 == 4)
  {
    v461 = 0x7A484D203038;
    v86 = 0xE600000000000000;
    goto LABEL_320;
  }

  if (v555 == 5)
  {
    v461 = 0x7A484D20303631;
LABEL_319:
    v86 = 0xE700000000000000;
    goto LABEL_320;
  }

  if (v555 != 6)
  {
LABEL_316:
    if (v555)
    {
      v461 = 0x7A484D202B3034;
    }

    else
    {
      v461 = 0x7A484D202D3034;
    }

    goto LABEL_319;
  }

  v86 = 0xE700000000000000;
  v461 = 0x7A484D20303233;
LABEL_320:
  v454 = sub_100002320(v461, v86, &v585);

  *(v457 + 20) = v454;
  _os_log_impl(&_mh_execute_header, v455, v456, "channel %u, band %s, BW %s", v457, 0x1Cu);
  swift_arrayDestroy();

  v78 = v573;
  LOBYTE(v86) = v558;
  LODWORD(v454) = v570;
LABEL_321:
  v463 = NANConstants.seaShipServiceName.unsafeMutableAddressor();
  v464 = *v463;
  v465 = v463[1];
  *&v585 = v582;
  *(&v585 + 1) = v608;
  v591 = v464;
  v592 = v465;
  sub_10005E2E4();
  if (StringProtocol.localizedCaseInsensitiveContains<A>(_:)())
  {
    if (!v454 || (v452 = v453 & 0xFFFFFFFFFFFFLL, Channel.isDFS.getter(v453)))
    {

      v442 = v78;
      v443 = Logger.logObject.getter();
      v444 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v443, v444))
      {
        v445 = swift_slowAlloc();
        v446 = swift_slowAlloc();
        *v445 = 138412290;
        v466 = [v442 channelInfo];
        *(v445 + 4) = v466;
        *v446 = v466;

        v448 = "Invalid: channel %@ belongs to 2.4G Band";
        goto LABEL_326;
      }

LABEL_327:

      goto LABEL_328;
    }
  }

  else
  {
    v452 = v453 & 0xFFFFFFFFFFFFLL;
  }

LABEL_333:
  v570 = v452;
  v468 = [v78 countryCode];
  v469 = v468;
  if (!v468)
  {
    v475 = 0;
    goto LABEL_337;
  }

  result = [v78 countryCode];
  if (result)
  {
    v470 = result;
    v471 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v473 = v472;

    v474._countAndFlagsBits = v471;
    v474._object = v473;
    LOWORD(v471) = CountryCode.init(stringLiteral:)(v474);
    swift_unownedRetainStrong();
    sub_10040DE8C();

    v475 = v471;
LABEL_337:
    v476 = [v78 multicastConfiguration];
    LODWORD(v549) = v475;
    if (v476)
    {
      v477 = MulticastConfiguration.init(apiMulticastConfiguration:)(v476);
      v550 = HIWORD(v477) & 1;
      v555 = v477 & 0x100000000000000;
      v556 = v477 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v555 = 0;
      v556 = 0;
      v550 = 1;
    }

    if (v574 && (v478 = [v574 serviceSpecificInfo]) != 0)
    {
      v479 = v478;
      rawValue = WiFiAwarePublishDatapathServiceSpecificInfo.genericServiceProtocol.getter();
    }

    else
    {
      rawValue = NANGenericServiceProtocol.init()().attributes._rawValue;
    }

    v547 = v593;
    v480 = NANConstants.seaShipServiceName.unsafeMutableAddressor();
    v481 = *v480;
    v482 = v480[1];
    *&v585 = v582;
    *(&v585 + 1) = v608;
    v591 = v481;
    v592 = v482;
    sub_10005E2E4();
    v483 = StringProtocol.localizedCaseInsensitiveContains<A>(_:)();
    v484 = sub_1002EB6A8(v86, 1u);
    v485 = [v78 serviceSpecificInfo];
    if (v484)
    {
      v486 = NANGenericServiceProtocol.init(apiPublishServiceSpecificInfo:apiPairingMetadata:)(v485, [v78 pairingMetadata]);
    }

    else
    {
      v486 = NANGenericServiceProtocol.init(apiPublishServiceSpecificInfo:)(v485);
    }

    v487 = v486;
    swift_unownedRetainStrong();
    v488 = WiFiInterface.macAddress.getter();

    v490 = (*(*v553 + 256))(v489);
    result = NANTimeUnit.discoveryWindowInterval.unsafeMutableAddressor();
    v491 = *result;
    if (*result >> 54)
    {
      __break(1u);
    }

    else
    {
      v546 = v490;
      v559 = v488;
      v492 = v491 << 10;
      if ((v492 & 0x8000000000000000) == 0)
      {
        v493 = (v483 & 1) == 0;
        *v571 = v492;
        (*(v566 + 104))();
        v494 = WiFiAwarePublishConfiguration.furtherServiceDiscoveryFunction.getter();
        v495 = [v78 fastDiscoveryConfiguration];
        v496 = v495;
        if (v495)
        {
        }

        v497 = v564 == 0;
        sub_100012400(&v594, &v585, &unk_1005974B0, &qword_1004AFCF0);
        v498 = v575;
        swift_beginAccess();
        v499 = *v498;

        v500 = [v573 timeoutAfterSeconds];
        LOBYTE(v591) = v550;
        v545 = (v555 | (v550 << 48) | v556);
        LODWORD(v544) = v549 | ((v469 == 0) << 16);
        v539 = v565 | (v497 << 48);
        v540 = v499;
        v501 = v568;
        v319 = v552;
        NANPublish.Configuration.init(instanceID:serviceName:serviceSpecificInfo:managementAddress:responderAddress:datapathConfiguration:announcementPeriod:furtherServiceDiscoveryFunction:enableFastDiscovery:authenticationType:internetSharingConfiguration:pairingBootstrappingMethod:pairingCachingSupported:publisherType:multicastAddress:allowedPairedDevicesUUIDs:multicastServiceType:timeoutAfterSeconds:pairingSetupMode:channelInfo:countryCode:gtkRequired:multicastConfiguration:)(v552, v582, v608, v487, v559 & 0xFFFFFFFFFFFFLL, v546 & 0xFFFFFFFFFFFFLL, (v557 << 16) | 0x200, rawValue, v568, v547, v558, v571, v494, v496 != 0, v551, &v585, v226, v569, v493, v539, v540, v493, v500, v563, v570, v544, v561, v545);
        v6 = v572;
        if (!v572)
        {
          __chkstk_darwin();
          v544 = v560;
          v545 = v584;
          KeyPath = swift_getKeyPath();
          v507 = v578;
          v506 = v579;
          v508 = sub_1003551D4(v501, KeyPath, v578);
          if (!v506)
          {
            v526 = v508;

            sub_100012400(v507, &v585, &unk_100597480, &qword_1004B1798);
            if (v588)
            {
              sub_100016290(&v585, &unk_100597480, &qword_1004B1798);
              v527 = v573;
              if (v583)
              {
                if ((v562 & 0x100000000) == 0)
                {
                  sub_1002F9630(v577, v583, v562);
                }
              }
            }

            else
            {

              sub_100016290(&v585, &unk_100597480, &qword_1004B1798);
              v527 = v573;
            }

            if (sub_1002EB6A8(v558, 1u))
            {
              v528 = [v527 pairingMetadata];
              if (v528)
              {
                v529 = v528;
                WiFiAwarePairingMetadata.selfMetadata.getter(v600);

                v530 = v526 + qword_10059B8B8;
                v531 = *(v526 + qword_10059B8B8);
                v532 = *(v526 + qword_10059B8B8 + 8);
                v533 = *(v526 + qword_10059B8B8 + 16);
                v534 = *(v526 + qword_10059B8B8 + 24);
                v535 = v600[1];
                *v530 = v600[0];
                *(v530 + 16) = v535;
                *(v530 + 32) = v600[2];
                *(v530 + 48) = v601;
                sub_100083690(v531, v532, v533, v534);
              }
            }

            v536 = Logger.logObject.getter();
            v537 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v536, v537))
            {
              v538 = swift_slowAlloc();
              *v538 = 0;
              _os_log_impl(&_mh_execute_header, v536, v537, "createPublish done", v538, 2u);
            }

            else
            {
            }

            sub_10036D24C(v501, type metadata accessor for NANPublish.Configuration);
            sub_100016290(&v594, &unk_1005974B0, &qword_1004AFCF0);

            return v526;
          }

          sub_10036D24C(v501, type metadata accessor for NANPublish.Configuration);

          goto LABEL_330;
        }

        sub_100012400(v578, &v585, &unk_100597480, &qword_1004B1798);
        if (v588)
        {
          sub_10036D24C(v501, type metadata accessor for NANPublish.Configuration);

          sub_100016290(&v594, &unk_1005974B0, &qword_1004AFCF0);
          v502 = &unk_100597480;
          v503 = &qword_1004B1798;
          v504 = &v585;
        }

        else
        {
          v509 = v585;
          v510 = [*(v585 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) remoteObjectProxy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          sub_10005DC58(&unk_100595B60, qword_1004AFC70);
          swift_dynamicCast();
          v511 = v590;
          v512 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v513 = swift_allocObject();
          *(v513 + 2) = v576;
          *(v513 + 3) = v512;
          *(v513 + 4) = v6;
          *(v513 + 5) = v511;
          v514 = &v509[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
          v515 = *&v509[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
          v516 = *&v509[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
          *v514 = sub_10036CDDC;
          v514[1] = v513;

          v517 = v6;
          swift_unknownObjectRetain();
          sub_100010520(v515, v516);

          sub_1002F9D70(v511, v501, v554);
          if (sub_1002EB6A8(v558, 1u))
          {
            v518 = [v573 pairingMetadata];
            if (v518)
            {
              v519 = v518;
              WiFiAwarePairingMetadata.selfMetadata.getter(v598);

              swift_unknownObjectRelease();

              sub_10036D24C(v501, type metadata accessor for NANPublish.Configuration);
              sub_100016290(&v594, &unk_1005974B0, &qword_1004AFCF0);
              v520 = &v517[qword_10059B8B8];
              v521 = *&v517[qword_10059B8B8];
              v522 = *&v517[qword_10059B8B8 + 8];
              v523 = *&v517[qword_10059B8B8 + 16];
              v524 = *&v517[qword_10059B8B8 + 24];
              *(v520 + 6) = v599;
              v525 = v598[2];
              *(v520 + 1) = v598[1];
              *(v520 + 2) = v525;
              *v520 = v598[0];
              sub_100083690(v521, v522, v523, v524);
LABEL_361:

              return v6;
            }
          }

          sub_10036D24C(v501, type metadata accessor for NANPublish.Configuration);

          swift_unknownObjectRelease();
          v502 = &unk_1005974B0;
          v503 = &qword_1004AFCF0;
          v504 = &v594;
        }

        sub_100016290(v504, v502, v503);
        goto LABEL_361;
      }
    }

    __break(1u);
    goto LABEL_378;
  }

LABEL_379:
  __break(1u);
  return result;
}

uint64_t sub_10035D574(uint64_t a1)
{
  swift_beginAccess();
  v1 = String.lowercased()();
  v2 = String.lowercased()();
  if (v1._countAndFlagsBits == v2._countAndFlagsBits && v1._object == v2._object)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_10035D644@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v15[1] = a2;
  v16 = a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v12 = v15 - v11;
  sub_100012400(v5, v15 - v11, &qword_10058F4D0, &qword_100491AB0);
  if ((*(v8 + 48))(v12, 1, v7) == 1)
  {
    v13 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    (*(v8 + 32))(v10, v12, v7);
    v16(v10);
    result = (*(v8 + 8))(v10, v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

double sub_10035D864@<D0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = a1[1];
  swift_unownedRetainStrong();
  v12 = WiFiInterface.macAddress.getter();

  v13 = NANPassphrase.pmk(for:serviceName:publisherAddress:)(a2, a3, a4, v12 & 0xFFFFFFFFFFFFLL, v10, v11);
  v15 = v14;

  sub_100017554(0, 0xF000000000000000);
  sub_10000AB0C(v13, v15);
  sub_10005D67C(0, 0xF000000000000000);

  sub_1000124C8(v13, v15);
  sub_100017554(0, 0xF000000000000000);

  *a6 = a2;
  *(a6 + 8) = v13;
  *(a6 + 16) = v15;
  result = 0.0;
  *(a6 + 24) = xmmword_100483C50;
  *(a6 + 40) = v10;
  *(a6 + 48) = v11;
  return result;
}

uint64_t sub_10035D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v15;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = *a5;
  v10 = type metadata accessor for UUID();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v11 = type metadata accessor for WiFiAwarePairedDevice(0);
  v8[14] = v11;
  v8[15] = *(v11 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = *(*(v9 + 88) + 8);
  v8[20] = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[21] = AssociatedTypeWitness;
  v8[22] = *(AssociatedTypeWitness - 8);
  v8[23] = swift_task_alloc();

  return _swift_task_switch(sub_10035DB70, 0, 0);
}

uint64_t sub_10035DB70()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[9];
  v5 = *(v0[6] + *(*v0[6] + 304));
  swift_unownedRetainStrong();
  (*(v2 + 16))(v1, v5 + *(*v5 + 112), v3);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = (*(AssociatedConformanceWitness + 136))(v3, AssociatedConformanceWitness);
  v0[24] = v7;
  v8 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v11 = *v7 + 392;
    v0[25] = *v11;
    v0[26] = v11 & 0xFFFFFFFFFFFFLL | 0xD6F0000000000000;
    v8 = sub_10035DCE4;
    v9 = v7;
    v10 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10035DCE4()
{
  *(v0 + 216) = (*(v0 + 200))(*(v0 + 64), *(v0 + 72), 1, 0);
  *(v0 + 224) = 0;

  return _swift_task_switch(sub_10035DE30, 0, 0);
}

uint64_t sub_10035DD80()
{

  OS_dispatch_semaphore.signal()();

  v1 = *(v0 + 8);

  return v1();
}

void sub_10035DE30()
{
  v1 = v0[27];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v0[15];
    v5 = v0[10];
    v31 = v0[14];
    v29 = *(v1 + 16);
    v30 = v0[27];
    while (v3 < *(v1 + 16))
    {
      v6 = v0[18];
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      v9 = v3 + 1;
      sub_10036D334(v0[27] + v7 + v8 * v3, v6, type metadata accessor for WiFiAwarePairedDevice);
      v10 = (v5 + 32);
      v11 = *(v5 + 16);
      do
      {
        if (!v11)
        {
          sub_10036D24C(v0[18], type metadata accessor for WiFiAwarePairedDevice);
          goto LABEL_4;
        }

        v12 = *v10++;
        --v11;
      }

      while (v12 != *(v6 + *(v31 + 20)));
      sub_10036D640(v0[18], v0[17], type metadata accessor for WiFiAwarePairedDevice);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000C0704(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000C0704((v13 > 1), v14 + 1, 1);
      }

      v15 = v0[17];
      _swiftEmptyArrayStorage[2] = v14 + 1;
      sub_10036D640(v15, _swiftEmptyArrayStorage + v7 + v14 * v8, type metadata accessor for WiFiAwarePairedDevice);
      v2 = v29;
      v1 = v30;
LABEL_4:
      v3 = v9;
      if (v9 == v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    v16 = _swiftEmptyArrayStorage[2];
    if (v16)
    {
      v17 = v0[15];
      v18 = v0[12];
      sub_1003678E8(0, v16, 0);
      v19 = _swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80));
      v32 = *(v17 + 72);
      do
      {
        v20 = v0[16];
        v21 = v0[13];
        v22 = v0[11];
        sub_10036D334(v19, v20, type metadata accessor for WiFiAwarePairedDevice);
        (*(v18 + 16))(v21, v20, v22);
        sub_10036D24C(v20, type metadata accessor for WiFiAwarePairedDevice);
        v24 = _swiftEmptyArrayStorage[2];
        v23 = _swiftEmptyArrayStorage[3];
        if (v24 >= v23 >> 1)
        {
          sub_1003678E8((v23 > 1), v24 + 1, 1);
        }

        v25 = v0[13];
        v26 = v0[11];
        _swiftEmptyArrayStorage[2] = v24 + 1;
        (*(v18 + 32))(_swiftEmptyArrayStorage + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v24, v25, v26);
        v19 += v32;
        --v16;
      }

      while (v16);
    }

    v27 = v0[7];
    swift_beginAccess();
    *(v27 + 16) = _swiftEmptyArrayStorage;

    OS_dispatch_semaphore.signal()();

    v28 = v0[1];

    v28();
  }
}

uint64_t sub_10035E208(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v10 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v11 = *v10;
  *v9 = *v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v11)
  {

    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      *(v17 + 4) = Strong;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v14;
      *v18 = Strong;
      v18[1] = v14;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "%@ was invalidated detaching from %@", v17, 0x16u);
      sub_10005DC58(&qword_10058B780, &qword_100480AC0);
      swift_arrayDestroy();
    }

    v26[3] = swift_getObjectType();
    v26[0] = a4;
    swift_unknownObjectRetain();
    sub_1002F7B8C(v26, v24, v21, v22, v23);
    return sub_100002A00(v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10035E470(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v724 = a1;
  v695 = a5;
  v698 = a3;
  v699 = a4;
  v7 = *v5;
  type metadata accessor for OWEKeys(0);
  __chkstk_darwin();
  v697 = &v662 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v700 = &v662 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v693 = &v662 - v10;
  v11 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v12 = *(v11 - 8);
  v701 = v11;
  v702 = v12;
  __chkstk_darwin();
  v688 = &v662 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100597460, &qword_1004AFD18);
  __chkstk_darwin();
  v691 = &v662 - v14;
  v689 = type metadata accessor for NANPeer.Service.AuthenticationStatus.State(0);
  __chkstk_darwin();
  v690 = (&v662 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005DC58(&qword_10058BAD0, &qword_100480E18);
  __chkstk_darwin();
  v708 = &v662 - v16;
  v17 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v703 = *(v17 - 8);
  v704 = v17;
  __chkstk_darwin();
  v696 = &v662 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v705 = &v662 - v19;
  v706 = type metadata accessor for NANPeer(0);
  __chkstk_darwin();
  v692 = &v662 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v694 = &v662 - v21;
  __chkstk_darwin();
  v709 = (&v662 - v22);
  sub_10005DC58(&unk_1005985D0, &unk_1004B17A0);
  __chkstk_darwin();
  v707 = &v662 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v710 = &v662 - v24;
  v715 = type metadata accessor for NANDriverCapabilities(0);
  __chkstk_darwin();
  v716 = &v662 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v720 = type metadata accessor for Logger();
  v718 = *(v720 - 1);
  __chkstk_darwin();
  v712 = v26;
  v713 = &v662 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v719 = &v662 - v27;
  v722 = *(v7 + 88);
  v728 = v5;
  v28 = *(v7 + 80);
  swift_getAssociatedTypeWitness();
  v721 = v28;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = type metadata accessor for Preferences(0, AssociatedTypeWitness, AssociatedConformanceWitness, v31);
  v727 = *(v32 - 8);
  *&v33 = __chkstk_darwin().n128_u64[0];
  v35 = &v662 - v34;
  v36 = [a2 discoveryResult];
  v37 = [v36 serviceName];

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  v774 = NANServiceName.init(_:)(v41);
  if (!v774.value.string._object)
  {
    v56 = a2;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v732 = v60;
      *v59 = 136315138;
      v61 = [v56 discoveryResult];
      v62 = [v61 serviceName];

      v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      v66 = sub_100002320(v63, v65, &v732);

      *(v59 + 4) = v66;

      _os_log_impl(&_mh_execute_header, v57, v58, "Cannot create new datapath because '%s' is not a valid service name", v59, 0xCu);
      sub_100002A00(v60);
    }

    else
    {
    }

    goto LABEL_16;
  }

  object = v774.value.string._object;
  countAndFlagsBits = v774.value.string._countAndFlagsBits;
  v44 = [a2 discoveryResult];
  v45 = [v44 publisherAddress];

  v711 = WiFiMACAddress.wifiAddress.getter();
  v46 = [a2 discoveryResult];
  v47 = [v46 publishID];

  v48 = [a2 discoveryResult];
  v687 = [v48 subscribeID];

  v49 = [a2 connectionMode];
  if (v49 >= 3)
  {
    v50 = 2;
  }

  else
  {
    v50 = 0x10002u >> (8 * v49);
  }

  v51 = *(v728 + *(*v728 + 304));
  swift_unownedRetainStrong();
  WiFiInterface.preferences.getter();
  v686 = v51;

  LOBYTE(v51) = Preferences.enableMulticastKeys.getter(v32);
  v683 = *(v727 + 8);
  v684 = v35;
  v52 = v35;
  v53 = v47;
  v682 = v32;
  v727 += 8;
  v683(v52, v32);
  v726 = object;
  v772 = v47;
  v717 = a2;
  LODWORD(v725) = v50;
  v54 = a2;
  if (v51)
  {
    v55 = &unk_10059B000;
    if (v50 != 1)
    {
      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v50) = v725;
      if (v69)
      {
        goto LABEL_21;
      }

      if (v725)
      {
        v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v685 = 0;
        LOBYTE(v50) = v725;
        if ((v140 & 1) == 0)
        {
LABEL_22:
          v70 = Logger.logObject.getter();
          v71 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v70, v71))
          {

            v67 = v50;
            if (!v50)
            {
              goto LABEL_32;
            }

            goto LABEL_11;
          }

          v72 = 0xD00000000000001FLL;
          v73 = v50;
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *&v732 = v75;
          *v74 = 67109378;
          *(v74 + 4) = v685;
          *(v74 + 8) = 2080;
          if (v73)
          {
            if (v73 != 2)
            {
              v77 = "Allow connection to all devices";
              v72 = 0xD000000000000032;
LABEL_31:
              v78 = sub_100002320(v72, v77 | 0x8000000000000000, &v732);

              *(v74 + 10) = v78;
              _os_log_impl(&_mh_execute_header, v70, v71, "DPReq: Setting gtk_required: %{BOOL}d for %s", v74, 0x12u);
              sub_100002A00(v75);

              object = v726;
              v53 = v772;
              v54 = v717;
              v67 = v725;
              if (!v725)
              {
                goto LABEL_32;
              }

              goto LABEL_11;
            }

            v76 = "Allow connection to all devices";
          }

          else
          {
            v72 = 0xD000000000000027;
            v76 = "Allow connection to paired devices only";
          }

          v77 = v76 - 32;
          goto LABEL_31;
        }

LABEL_21:
        v685 = 1;
        goto LABEL_22;
      }
    }

    goto LABEL_21;
  }

  v685 = 0;
  v55 = &unk_10059B000;
  v67 = v50;
  if (!v50)
  {
    goto LABEL_32;
  }

LABEL_11:
  if (v67 == 1)
  {

LABEL_33:
    v81 = [v54 pairingMetadata];
    v82 = v55[312];
    v83 = v54;
    v84 = Logger.logObject.getter();
    if (v81)
    {
      v680 = v82;
      v681 = v81;
      v85 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v732 = v87;
        *v86 = 136315138;
        v88 = [v83 discoveryResult];
        v89 = [v88 serviceSpecificInfo];

        if (v89)
        {
          v90 = WiFiAwarePublishServiceSpecificInfo.pairingSSI.getter();
        }

        else
        {
          v90 = 0;
        }

        *&v740[0] = v90;
        sub_10005DC58(&unk_100595C60, &unk_1004AFD30);
        v111 = String.init<A>(describing:)();
        v113 = sub_100002320(v111, v112, &v732);

        *(v86 + 4) = v113;

        _os_log_impl(&_mh_execute_header, v84, v85, "Discovery Result Pairing SSI: %s", v86, 0xCu);
        sub_100002A00(v87);

        object = v726;
      }

      else
      {
      }

      v114 = [v83 discoveryResult];
      v115 = [v114 serviceSpecificInfo];

      if (!v115 || (WiFiAwarePublishServiceSpecificInfo.pairingMetadata.getter(&v748), v678 = v749, v679 = v748, v676 = *(&v750 + 1), v677 = v750, v674 = *(&v751 + 1), v675 = v751, v115, (v116 = v749) == 0))
      {
        v119 = v83;
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = swift_slowAlloc();
          *&v732 = swift_slowAlloc();
          *v122 = 136315394;
          v123 = [v119 discoveryResult];
          v124 = [v123 serviceName];

          v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v127 = v126;

          v128 = sub_100002320(v125, v127, &v732);

          *(v122 + 4) = v128;

          *(v122 + 12) = 2080;
          if (v725)
          {
            if (v725 == 2)
            {
              v129 = "OWE Key Generation";
              v130 = 0xD00000000000001FLL;
            }

            else
            {
              v129 = "Allow connection to all devices";
              v130 = 0xD000000000000032;
            }
          }

          else
          {
            v130 = 0xD000000000000027;
            v129 = "rable devices only";
          }

          v141 = sub_100002320(v130, v129 | 0x8000000000000000, &v732);

          *(v122 + 14) = v141;

          _os_log_impl(&_mh_execute_header, v120, v121, "Cannot create new datapath for '%s' because connection mode %s requires discovery result to contain pairing SSI", v122, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        sub_10000B02C();
        swift_allocError();
        *v142 = xmmword_100481800;
        *(v142 + 16) = 1;
        swift_willThrow();

        return;
      }

      v117 = v748;
      v757 = v750;
      v758 = v751;
      WiFiAwarePairingMetadata.selfMetadata.getter(&v752);
      v759[0] = v117;
      v759[1] = v116;
      v760 = v757;
      v761 = v758;
      v118 = v753;
      if (v753)
      {
        v673 = v756;
        v672 = v755;
        v670 = v752;
        v671 = v754;
        sub_1000836D4(v759, &v732);
        sub_1000836D4(&v760, &v732);
        sub_1000836D4(&v761, &v732);
      }

      else
      {
        sub_1000836D4(v759, &v732);
        sub_1000836D4(&v760, &v732);
        sub_1000836D4(&v761, &v732);
        sub_100016290(&v748, &unk_1005974A0, &qword_100491C50);
        v678 = 0;
        v679 = 0;
        v676 = 0;
        v677 = 0;
        v674 = 0;
        v675 = 0;
        v670 = 0;
        v671 = 0uLL;
        v672 = 0uLL;
        v673 = 0;
      }

      if ([v83 pairingMethod])
      {
        v131 = [v83 pairingMethod];
      }

      else
      {
        v131 = 2;
      }

      [v83 setPairingMethod:v131];
      [v83 setPairingCachingEnabled:1];
      v132 = v83;
      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v133, v134))
      {

        sub_10008378C(v759);
        sub_10008378C(&v760);
        sub_10008378C(&v761);

        *&v741 = v670;
        *(&v741 + 1) = v118;
        v742 = v671;
        v743 = v672;
        *&v744 = v673;
        *(&v744 + 1) = v679;
        *&v745 = v678;
        *(&v745 + 1) = v677;
        *&v746 = v676;
        *(&v746 + 1) = v675;
        v747 = v674;
        v53 = v772;
        goto LABEL_91;
      }

      v680 = v118;
      v135 = 0xD00000000000001FLL;
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      *&v732 = v138;
      *v136 = 136315394;
      if (v725)
      {
        if (v725 != 2)
        {
          v146 = "Allow connection to all devices";
          v135 = 0xD000000000000032;
          goto LABEL_89;
        }

        v139 = "Allow connection to all devices";
      }

      else
      {
        v135 = 0xD000000000000027;
        v139 = "Allow connection to paired devices only";
      }

      v146 = v139 - 32;
LABEL_89:
      v147 = sub_100002320(v135, v146 | 0x8000000000000000, &v732);

      *(v136 + 4) = v147;
      *(v136 + 12) = 2112;
      *(v136 + 14) = v132;
      *v137 = v132;
      v148 = v132;
      sub_10008378C(v759);
      sub_10008378C(&v760);
      sub_10008378C(&v761);

      _os_log_impl(&_mh_execute_header, v133, v134, "Connection Mode: %s. Configuration set to: %@", v136, 0x16u);
      sub_100016290(v137, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v138);

      *&v741 = v670;
      *(&v741 + 1) = v680;
      v742 = v671;
      v743 = v672;
      *&v744 = v673;
      *(&v744 + 1) = v679;
      *&v745 = v678;
      *(&v745 + 1) = v677;
      *&v746 = v676;
      *(&v746 + 1) = v675;
      v747 = v674;
      goto LABEL_90;
    }

    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v84, v91))
    {
      v92 = swift_slowAlloc();
      *&v732 = swift_slowAlloc();
      *v92 = 136315394;
      v93 = [v83 discoveryResult];
      v94 = [v93 serviceName];

      v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v97 = v96;

      v98 = sub_100002320(v95, v97, &v732);

      *(v92 + 4) = v98;

      *(v92 + 12) = 2080;
      if (v725)
      {
        if (v725 == 2)
        {
          v99 = "OWE Key Generation";
          v100 = 0xD00000000000001FLL;
        }

        else
        {
          v99 = "Allow connection to all devices";
          v100 = 0xD000000000000032;
        }
      }

      else
      {
        v100 = 0xD000000000000027;
        v99 = "rable devices only";
      }

      v143 = sub_100002320(v100, v99 | 0x8000000000000000, &v732);

      *(v92 + 14) = v143;

      _os_log_impl(&_mh_execute_header, v84, v91, "Cannot create new datapath for '%s' because connection mode %s requires pairing metadata", v92, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

LABEL_16:
    sub_10000B02C();
    swift_allocError();
    *v68 = xmmword_100481800;
    *(v68 + 16) = 1;
    swift_willThrow();
    return;
  }

LABEL_32:
  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v80 = v725;
  if (v79)
  {
    goto LABEL_33;
  }

  if (v725)
  {
    v101 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v101 & 1) == 0)
    {
LABEL_52:
      v747 = 0;
      v746 = 0u;
      v745 = 0u;
      v744 = 0u;
      v743 = 0u;
      v742 = 0u;
      v741 = 0u;
      goto LABEL_91;
    }
  }

  else
  {
  }

  [v54 setPairingCachingEnabled:1];
  v102 = v54;
  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v103, v104))
  {

    goto LABEL_52;
  }

  v105 = 0xD00000000000001FLL;
  v106 = v80;
  v107 = swift_slowAlloc();
  v108 = swift_slowAlloc();
  v109 = swift_slowAlloc();
  *&v732 = v109;
  *v107 = 136315394;
  if (v106)
  {
    if (v106 != 2)
    {
      v144 = "Allow connection to all devices";
      v105 = 0xD000000000000032;
      goto LABEL_85;
    }

    v110 = "Allow connection to all devices";
  }

  else
  {
    v105 = 0xD000000000000027;
    v110 = "Allow connection to paired devices only";
  }

  v144 = v110 - 32;
LABEL_85:
  v145 = sub_100002320(v105, v144 | 0x8000000000000000, &v732);

  *(v107 + 4) = v145;
  *(v107 + 12) = 2112;
  *(v107 + 14) = v102;
  *v108 = v102;

  _os_log_impl(&_mh_execute_header, v103, v104, "Connection Mode: %s. Configuration set to: %@", v107, 0x16u);
  sub_100016290(v108, &qword_10058B780, &qword_100480AC0);

  sub_100002A00(v109);

  v741 = 0u;
  v742 = 0u;
  v743 = 0u;
  v744 = 0u;
  v745 = 0u;
  v746 = 0u;
  v747 = 0;
LABEL_90:
  object = v726;
  v53 = v772;
  v55 = &unk_10059B000;
LABEL_91:
  v763[4] = v745;
  v763[5] = v746;
  v764 = v747;
  v763[0] = v741;
  v763[1] = v742;
  v763[2] = v743;
  v763[3] = v744;
  v149 = v55[312];
  swift_bridgeObjectRetain_n();
  v150 = Logger.logObject.getter();
  v151 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v150, v151))
  {
    v152 = swift_slowAlloc();
    *&v732 = swift_slowAlloc();
    *v152 = 136315906;

    v153 = NANServiceName.description.getter(countAndFlagsBits, object);
    v155 = v154;

    v156 = sub_100002320(v153, v155, &v732);

    *(v152 + 4) = v156;
    swift_bridgeObjectRelease_n();
    *(v152 + 12) = 256;
    *(v152 + 14) = v687;
    *(v152 + 15) = 2080;
    v157 = WiFiAddress.description.getter(v711 & 0xFFFFFFFFFFFFLL);
    v159 = sub_100002320(v157, v158, &v732);

    *(v152 + 17) = v159;
    object = v726;
    *(v152 + 25) = 256;
    v53 = v772;
    *(v152 + 27) = v772;
    _os_log_impl(&_mh_execute_header, v150, v151, "New client requesting a datapath for the service %s[%hhu] to %s[%hhu]", v152, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_100012400(v724, &v732, &unk_100597480, &qword_1004B1798);
  if (v735 == 1)
  {
    sub_100016290(&v732, &unk_100597480, &qword_1004B1798);
  }

  else
  {
    v160 = v732;
    v161 = objc_opt_self();
    v162 = [v161 interfaceWithProtocol:&OBJC_PROTOCOL___WiFiAwareDatapathXPC];
    v163 = OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection;
    [*&v160[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection] setExportedInterface:v162];

    v164 = [v161 interfaceWithProtocol:&OBJC_PROTOCOL___WiFiAwareDatapathXPCDelegate];
    [*&v160[v163] setRemoteObjectInterface:v164];
  }

  v165 = v728;
  v166 = v717;
  v167 = [v717 serviceType];
  if (v167 == 2)
  {
    v168 = 2;
  }

  else
  {
    v168 = v167 == 1;
  }

  v169 = [v166 internetSharingConfiguration];
  if (!v169)
  {
    memset(v740, 0, 24);
    *(&v740[1] + 8) = xmmword_10047CE70;
    goto LABEL_104;
  }

  v170 = v169;
  v171 = [v169 interfaceName];
  if (v171)
  {
  }

  else if (([v170 automatic] & 1) == 0 && (objc_msgSend(v170, "provider") & 1) == 0)
  {

    memset(v740, 0, 40);
    goto LABEL_104;
  }

  v172 = [v170 interfaceName];
  if (v172)
  {

LABEL_115:
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
    v177 = v170;
    swift_bridgeObjectRetain_n();
    v178 = v177;
    v179 = Logger.logObject.getter();
    v180 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v179, v180))
    {
      LODWORD(v728) = v180;
      LODWORD(v681) = v168;
      v181 = swift_slowAlloc();
      v727 = swift_slowAlloc();
      *&v732 = v727;
      *v181 = 136316930;

      v182 = NANServiceName.description.getter(countAndFlagsBits, object);
      v184 = v183;

      v185 = sub_100002320(v182, v184, &v732);

      *(v181 + 4) = v185;
      swift_bridgeObjectRelease_n();
      *(v181 + 12) = 256;
      *(v181 + 14) = v687;
      *(v181 + 15) = 2080;
      v186 = WiFiAddress.description.getter(v711 & 0xFFFFFFFFFFFFLL);
      v188 = sub_100002320(v186, v187, &v732);

      *(v181 + 17) = v188;
      *(v181 + 25) = 256;
      *(v181 + 27) = v53;
      *(v181 + 28) = 2080;
      v189 = [v178 automatic];
      v190 = v189 == 0;
      if (v189)
      {
        v191 = 0x6974616D6F747561;
      }

      else
      {
        v191 = 0;
      }

      if (v190)
      {
        v192 = 0xE000000000000000;
      }

      else
      {
        v192 = 0xEA00000000002063;
      }

      v193 = sub_100002320(v191, v192, &v732);

      *(v181 + 30) = v193;

      *(v181 + 38) = 2080;
      v194 = [v178 provider];
      v195 = v194 == 0;
      if (v194)
      {
        v196 = 0x72656469766F7270;
      }

      else
      {
        v196 = 0x6574736575716572;
      }

      if (v195)
      {
        v197 = 0xE900000000000072;
      }

      else
      {
        v197 = 0xE800000000000000;
      }

      v198 = sub_100002320(v196, v197, &v732);

      *(v181 + 40) = v198;

      *(v181 + 48) = 2080;
      v199 = [v178 interfaceName];
      if (v199)
      {
        v200 = v199;
        v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v203 = v202;
      }

      else
      {
        v203 = 0xE400000000000000;
        v201 = 1701736302;
      }

      v209 = sub_100002320(v201, v203, &v732);

      *(v181 + 50) = v209;

      *(v181 + 58) = 2080;
      if (v681)
      {
        if (v681 == 2)
        {
          v210 = 0xEA00000000007963;
          v211 = 0x6E6574614C776F6CLL;
        }

        else
        {
          v210 = 0xE800000000000000;
          v211 = 0x656D69746C616572;
        }
      }

      else
      {
        v210 = 0xE800000000000000;
        v211 = 0x6576697470616461;
      }

      v212 = sub_100002320(v211, v210, &v732);

      *(v181 + 60) = v212;

      _os_log_impl(&_mh_execute_header, v179, v728, "Cannot create new datapath %s[%hhu] to %s[%hhu] because of invalid internet sharing policy %s%s on interface: %s with service type: %s", v181, 0x44u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_10000B02C();
    swift_allocError();
    *v213 = xmmword_100481800;
    *(v213 + 16) = 1;
    swift_willThrow();

    return;
  }

  if (![v170 automatic] || !objc_msgSend(v170, "provider") || (sub_1002EB7AC(v168, 2u) & 1) == 0)
  {
    goto LABEL_115;
  }

  v174 = *(v165 + *(*v165 + 288));
  v175 = type metadata accessor for LowLatencyInternetProviderPolicy(0, v721, v722, v173);
  *&v740[2] = &off_10057A368;
  *(&v740[1] + 1) = v175;
  *&v740[0] = v174;
  v176 = v174;

LABEL_104:
  sub_100012400(v740, &v732, &qword_1005914A8, &qword_100499048);
  v679 = v149;
  if (!v734)
  {
    sub_10020C6CC(&v732);
    v204 = v686;
    swift_unownedRetainStrong();
    v205 = *(v204 + *(*v204 + 480));

    if (v205)
    {
      LODWORD(v681) = v168;
      v680 = v205;
      goto LABEL_151;
    }

    swift_unownedRetainStrong();
    v214 = v723;
    v215 = sub_10040EF90();
    v216 = v214;
    if (!v214)
    {
      goto LABEL_150;
    }

LABEL_148:
    sub_100016290(v740, &qword_1005914A8, &qword_100499048);
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);

    return;
  }

  if (v734 == 1)
  {
    sub_100016290(&v732, &qword_1005914A8, &qword_100499048);
  }

  else
  {
    sub_10020C6CC(&v732);
  }

  v206 = [v166 serviceType];
  v207 = v686;
  swift_unownedRetainStrong();
  if (v206 != 2)
  {
    LODWORD(v681) = v168;
    v680 = v207;
    goto LABEL_151;
  }

  v208 = *(v207 + *(*v207 + 472));

  if (v208)
  {
    LODWORD(v681) = v168;
    v680 = v208;
    goto LABEL_151;
  }

  swift_unownedRetainStrong();
  v217 = v723;
  v215 = sub_10040FB70();
  v216 = v217;
  if (v217)
  {
    goto LABEL_148;
  }

LABEL_150:
  LODWORD(v681) = v168;
  v723 = v216;
  v680 = v215;

LABEL_151:
  v218 = v711;
  v676 = v711 >> 24;
  v677 = v711 >> 40;
  v674 = HIDWORD(v711);
  v675 = v711 >> 16;
  swift_beginAccess();
  v219 = v721;
  v220 = v722;
  v222 = _s17InitiatorInstanceCMa(255, v721, v722, v221);
  WitnessTable = swift_getWitnessTable(byte_1004B0F14, v222);
  *&v732 = v219;
  *(&v672 + 1) = v222;
  *(&v732 + 1) = v222;
  v733 = v220;
  v734 = WitnessTable;
  v224 = type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v732);
  v225 = sub_10020CB70();
  NANBitmap.Channel.operatingClass.getter();
  v678 = &v662;
  *&v732 = v226;
  __chkstk_darwin();
  *&v672 = v218 >> 8;
  v673 = v225;
  v227 = type metadata accessor for Dictionary.Values();

  swift_getWitnessTable(&protocol conformance descriptor for [A : B].Values, v227);
  v228 = v723;
  Sequence.first(where:)();

  v678 = *&v730[0];
  if (!*&v730[0])
  {
    v723 = v228;
    v235 = v772;
    v236 = v686;
    goto LABEL_169;
  }

  sub_100012400(v724, &v732, &unk_100597480, &qword_1004B1798);
  v229 = v679;
  if ((v735 & 1) == 0)
  {
    v723 = v228;
    v237 = v732;
    v238 = [*(v732 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
    v239 = swift_dynamicCast();
    v231 = v719;
    v232 = v720;
    v233 = v718;
    if (v239)
    {
      *(&v671 + 1) = v739;
      v234 = v237;
      goto LABEL_158;
    }

    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);

LABEL_162:
    sub_10000B02C();
    swift_allocError();
    *v257 = xmmword_100481800;
    *(v257 + 16) = 1;
    swift_willThrow();

LABEL_163:
LABEL_186:
    sub_100016290(v740, &qword_1005914A8, &qword_100499048);
    return;
  }

  sub_100085188(&v732, v730);
  sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
  v230 = swift_dynamicCast();
  v231 = v719;
  v232 = v720;
  v233 = v718;
  if ((v230 & 1) == 0)
  {
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);

    v237 = 0;
    goto LABEL_162;
  }

  v723 = v228;
  v234 = 0;
  *(&v671 + 1) = v739;
LABEL_158:
  v670 = v224;
  v240 = *(v233 + 16);
  v241 = v231;
  v240(v231, v728 + v229, v232);
  v242 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v243 = v234;
  *&v671 = v234;
  if (v234)
  {
    v244 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v245 = v713;
    v240(v713, v241, v232);
    v246 = (*(v233 + 80) + 48) & ~*(v233 + 80);
    v247 = (v712 + v246 + 7) & 0xFFFFFFFFFFFFFFF8;
    v248 = swift_allocObject();
    v249 = v722;
    *(v248 + 2) = v721;
    *(v248 + 3) = v249;
    *(v248 + 4) = v242;
    *(v248 + 5) = v244;
    v250 = v245;
    v243 = v671;
    (*(v233 + 32))(&v248[v246], v250, v232);
    v251 = *(&v671 + 1);
    *&v248[v247] = *(&v671 + 1);
    v252 = &v243[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
    v253 = *&v243[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler];
    v254 = *&v243[OBJC_IVAR____TtC12wifip2pdCore10XPCSession_invalidationHandler + 8];
    *v252 = sub_10036CC7C;
    v252[1] = v248;
    swift_unknownObjectRetain_n();

    sub_100010520(v253, v254);
  }

  else
  {
    v251 = *(&v671 + 1);
    swift_unknownObjectRetain();
  }

  v235 = v772;
  v236 = v686;
  if (sub_1003310B4(v251, v680, v255, v256))
  {
    v727 = v242;
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
    v258 = v678;
    v259 = Logger.logObject.getter();
    v260 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v259, v260))
    {
      v261 = swift_slowAlloc();
      v262 = swift_slowAlloc();
      *v261 = 138412290;
      *(v261 + 4) = v258;
      *v262 = v678;

      _os_log_impl(&_mh_execute_header, v259, v260, "Attached this datapath request to the matching existing %@", v261, 0xCu);
      sub_100016290(v262, &qword_10058B780, &qword_100480AC0);
    }

    else
    {
    }

    v303 = v718;
    if (v243)
    {
      v734 = *(&v672 + 1);
      *&v732 = v258;
      v304 = v258;
      sub_100301920(&v732);
    }

    v305 = v258 + *((swift_isaMask & *v258) + 0x68);
    swift_beginAccess();
    v306 = *(v305 + 2);
    v307 = v305[6];
    v308 = *v305;
    v309 = sub_10033B994(&v732);
    LODWORD(v737) = v308;
    WORD2(v737) = v306;
    BYTE6(v737) = v307;
    v310 = v670;
    type metadata accessor for Dictionary();
    v311 = Dictionary.subscript.modify();
    v313 = (v303 + 8);
    if (*v312)
    {
      v314 = v671;
      sub_10033AE2C(v671, v310);
      v311(v730, 0);
      v309(&v732, 0);

      swift_unknownObjectRelease_n();
    }

    else
    {
      v311(v730, 0);
      v309(&v732, 0);

      swift_unknownObjectRelease_n();
    }

    (*v313)(v719, v720);
    sub_100016290(v740, &qword_1005914A8, &qword_100499048);

    return;
  }

  swift_unknownObjectRelease_n();
  (*(v718 + 8))(v719, v720);

LABEL_169:
  v263 = sub_100349C0C();
  swift_unownedRetainStrong();
  v264 = *(*v236 + 736);
  swift_beginAccess();
  v265 = v716;
  sub_10036D334(v236 + v264, v716, type metadata accessor for NANDriverCapabilities);

  v266 = *(v265 + *(v715 + 48));
  sub_10036D24C(v265, type metadata accessor for NANDriverCapabilities);
  if (v263 >= v266)
  {
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
    v278 = v726;
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v279 = Logger.logObject.getter();
    v280 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v279, v280))
    {
      v281 = swift_slowAlloc();
      v727 = swift_slowAlloc();
      *&v732 = v727;
      *v281 = 136316162;

      v282 = NANServiceName.description.getter(countAndFlagsBits, v278);
      v284 = v283;

      v285 = sub_100002320(v282, v284, &v732);

      *(v281 + 4) = v285;
      swift_bridgeObjectRelease_n();
      *(v281 + 12) = 256;
      *(v281 + 14) = v687;
      *(v281 + 15) = 2080;
      v286 = WiFiAddress.description.getter(v711 & 0xFFFFFFFFFFFFLL);
      v288 = sub_100002320(v286, v287, &v732);

      *(v281 + 17) = v288;
      *(v281 + 25) = 256;
      *(v281 + 27) = v235;
      *(v281 + 28) = 2048;
      v289 = sub_100349C0C();

      *(v281 + 30) = v289;

      _os_log_impl(&_mh_execute_header, v279, v280, "Cannot create new datapath %s[%hhu] to %s[%hhu] because already exceeded maximum active count %ld", v281, 0x26u);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_10000B02C();
    swift_allocError();
    *v290 = xmmword_10048DED0;
    *(v290 + 16) = 1;
    swift_willThrow();
    goto LABEL_185;
  }

  swift_beginAccess();
  v736 = v687;
  v268 = v721;
  v267 = v722;
  v270 = _s8InstanceCMa(255, v721, v722, v269);
  v271 = swift_getWitnessTable(byte_1004B2574, v270);
  *&v732 = v268;
  *(&v732 + 1) = v270;
  v733 = v267;
  v734 = v271;
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v732);
  Dictionary.subscript.getter();
  v272 = v737;
  if (!v737)
  {
    swift_endAccess();
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
LABEL_181:
    v291 = v726;
    swift_bridgeObjectRetain_n();
    v292 = Logger.logObject.getter();
    v293 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v292, v293))
    {
      v294 = swift_slowAlloc();
      *&v732 = swift_slowAlloc();
      *v294 = 136315906;

      v295 = NANServiceName.description.getter(countAndFlagsBits, v291);
      v297 = v296;

      v298 = sub_100002320(v295, v297, &v732);

      *(v294 + 4) = v298;
      swift_bridgeObjectRelease_n();
      *(v294 + 12) = 2080;
      v299 = WiFiAddress.description.getter(v711 & 0xFFFFFFFFFFFFLL);
      v301 = sub_100002320(v299, v300, &v732);

      *(v294 + 14) = v301;
      *(v294 + 22) = 256;
      *(v294 + 24) = v235;
      *(v294 + 25) = 256;
      *(v294 + 27) = v687;

      _os_log_impl(&_mh_execute_header, v292, v293, "Cannot create new datapath %s to %s[%hhu] because unable to find a matching subscribe with instance ID %hhu", v294, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_10000B02C();
    swift_allocError();
    *v302 = xmmword_10049C490;
    *(v302 + 16) = 1;
    swift_willThrow();
LABEL_185:

    goto LABEL_186;
  }

  v273 = v738;
  v274 = v737;
  swift_endAccess();
  sub_100058BA4(v272, v273);
  if (v274[qword_10059BAF0] != 1)
  {
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);

    goto LABEL_181;
  }

  v275 = &v274[qword_10059BAE8];
  swift_beginAccess();
  v276 = String.lowercased()();
  v277 = String.lowercased()();
  if (v276._countAndFlagsBits == v277._countAndFlagsBits && v276._object == v277._object)
  {

    goto LABEL_195;
  }

  v315 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v315 & 1) == 0)
  {
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
    v349 = v726;
    swift_bridgeObjectRetain_n();
    v237 = v274;
    v350 = Logger.logObject.getter();
    v351 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v350, v351))
    {
      v352 = swift_slowAlloc();
      v725 = swift_slowAlloc();
      v728 = swift_slowAlloc();
      *&v732 = v728;
      *v352 = 136315906;
      v353 = WiFiAddress.description.getter(v711 & 0xFFFFFFFFFFFFLL);
      v355 = sub_100002320(v353, v354, &v732);
      v727 = v350;
      v356 = v272;
      v357 = v355;

      *(v352 + 4) = v357;
      *(v352 + 12) = 256;
      *(v352 + 14) = v772;
      *(v352 + 15) = 2112;
      *(v352 + 17) = v237;
      v358 = v725;
      *v725 = v356;

      *(v352 + 25) = 2080;

      v359 = NANServiceName.description.getter(countAndFlagsBits, v349);
      v361 = v360;

      v362 = sub_100002320(v359, v361, &v732);

      *(v352 + 27) = v362;
      swift_bridgeObjectRelease_n();
      v363 = v351;
      v364 = v727;
      _os_log_impl(&_mh_execute_header, v727, v363, "Cannot create new datapath to %s[%hhu] because %@ does not match the service name provided for the datapath: %s", v352, 0x23u);
      sub_100016290(v358, &qword_10058B780, &qword_100480AC0);

      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_10000B02C();
    swift_allocError();
    *v369 = xmmword_10049C490;
    *(v369 + 16) = 1;
    swift_willThrow();

    goto LABEL_163;
  }

LABEL_195:
  v715 = v275;
  v316 = qword_10059BB10;
  swift_beginAccess();
  v317 = *&v274[v316];
  v719 = BYTE5(v711);
  v720 = v274;
  v318 = BYTE4(v711);
  v319 = BYTE3(v711);
  v320 = BYTE2(v711);
  v321 = BYTE1(v711);
  v322 = v711;
  v323 = v772;
  v324 = (BYTE4(v711) << 40) & 0xFF00FF00000000FFLL | (v677 << 48) | (v676 << 32) | (v675 << 24) | (v672 << 16) | (v711 << 8);

  *(&v672 + 1) = v324;
  v673 = v323;
  LOBYTE(v324) = sub_100447E24(v324 | v323, v317);

  v718 = v322;
  if ((v324 & 1) == 0)
  {
    v723 = v321;
    v724 = v320;
    v725 = v318;
    v727 = v319;
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
    v339 = v720;
    v340 = Logger.logObject.getter();
    v341 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v340, v341))
    {
      v342 = swift_slowAlloc();
      v343 = v272;
      v344 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      *&v732 = v345;
      *v342 = 138412802;
      *(v342 + 4) = v339;
      *v344 = v343;

      *(v342 + 12) = 2080;
      v346 = WiFiAddress.description.getter((v725 << 32) | (v719 << 40) | (v727 << 24) | (v724 << 16) | (v723 << 8) | v718);
      v348 = sub_100002320(v346, v347, &v732);

      *(v342 + 14) = v348;
      *(v342 + 22) = 256;
      *(v342 + 24) = v772;

      _os_log_impl(&_mh_execute_header, v340, v341, "Cannot create new datapath because %@ has not discovered %s[%hhu]", v342, 0x19u);
      sub_100016290(v344, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v345);
    }

    else
    {
    }

    sub_10000B02C();
    swift_allocError();
    *v368 = xmmword_10049C490;
    *(v368 + 16) = 1;
    swift_willThrow();

    goto LABEL_186;
  }

  v669 = v272;
  v325 = v686;
  swift_unownedRetainStrong();
  v713 = (v318 << 32) | (v719 << 40) | (v319 << 24) | (v320 << 16) | (v321 << 8);
  v326 = v709;
  sub_10040CD68(v713 | v322, v709);

  v327 = v710;
  v328 = v772;
  sub_1002E7050(v772, v710);
  sub_10036D24C(v326, type metadata accessor for NANPeer);
  swift_unownedRetainStrong();
  v329 = *(*v325 + 736);
  swift_beginAccess();
  v330 = v325 + v329;
  v331 = v716;
  sub_10036D334(v330, v716, type metadata accessor for NANDriverCapabilities);

  v332 = v331[1];

  sub_10036D24C(v331, type metadata accessor for NANDriverCapabilities);
  v333 = v707;
  sub_100012400(v327, v707, &unk_1005985D0, &unk_1004B17A0);
  v334 = type metadata accessor for NANPeer.Service(0);
  if ((*(*(v334 - 8) + 48))(v333, 1, v334) == 1)
  {
    sub_100016290(v333, &unk_1005985D0, &unk_1004B17A0);
    LODWORD(v712) = 0;
    v335 = 0;
    v670 = 0;
    v671 = 0uLL;
    v707 = 5;
    v336 = v724;
    v337 = v717;
    v338 = v708;
  }

  else
  {
    v335 = v333[10];
    v366 = v333[12];
    v365 = v333[13];
    v367 = v333[14];
    v670 = v333[11];
    *&v671 = v365;
    *(&v671 + 1) = v367;
    sub_1002EA048(v335, v670, v366, v365, v367);
    sub_10036D24C(v333, type metadata accessor for NANPeer.Service);
    v707 = v366;
    v336 = v724;
    v337 = v717;
    v338 = v708;
    if (v366 == 5)
    {
      LODWORD(v712) = 0;
    }

    else
    {
      v370 = v724;
      v371 = *NANAttribute.ServiceDescriptorExtension.Control.securityRequired.unsafeMutableAddressor();
      v336 = v370;
      LODWORD(v712) = (v371 & ~WORD1(v335)) == 0;
    }
  }

  sub_100012400(v336, &v732, &unk_100597480, &qword_1004B1798);
  v708 = v335;
  if (v735)
  {
    sub_100085188(&v732, v730);
  }

  else
  {
    v372 = v732;
    v373 = [*(v732 + OBJC_IVAR____TtC12wifip2pdCore10XPCSession_connection) remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  sub_10005DC58(&qword_1005968A8, &qword_1004B1790);
  swift_dynamicCast();
  v719 = v729;
  v678 = v332;
  if (!v712)
  {
    v411 = v682;
    v406 = v719;
LABEL_292:
    swift_unownedRetainStrong();
    v537 = v684;
    WiFiInterface.preferences.getter();

    v538 = Preferences.automaticallyUseEncryption.getter(v411);
    v683(v537, v411);
    if ((v538 & 1) != 0 || *(v715 + *(type metadata accessor for NANSubscribe.Configuration(0) + 68)) != 1)
    {
      v719 = v406;
      sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
      v550 = v720;
      swift_retain_n();
      v551 = v550;
      v552 = Logger.logObject.getter();
      v553 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v552, v553))
      {
        v554 = swift_slowAlloc();
        v555 = swift_slowAlloc();
        v724 = v555;
        v725 = swift_slowAlloc();
        *&v732 = v725;
        *v554 = 138413314;
        *(v554 + 4) = v551;
        *v555 = v669;

        *(v554 + 12) = 2080;
        v556 = WiFiAddress.description.getter(v713 | v718);
        v558 = sub_100002320(v556, v557, &v732);

        *(v554 + 14) = v558;
        *(v554 + 22) = 256;
        *(v554 + 24) = v328;
        *(v554 + 25) = 1024;
        swift_unownedRetainStrong();
        v559 = v684;
        WiFiInterface.preferences.getter();

        LOBYTE(v555) = Preferences.automaticallyUseEncryption.getter(v411);
        v683(v559, v411);

        *(v554 + 27) = v555 & 1;

        *(v554 + 31) = 1024;
        LOBYTE(v555) = *(v715 + *(type metadata accessor for NANSubscribe.Configuration(0) + 68));

        *(v554 + 33) = (v555 & 1) == 0;

        _os_log_impl(&_mh_execute_header, v552, v553, "Cannot create new datapath for %@ to %s[%hhu] because unable to derive a security configuration but encryption required: %{BOOL}d, authentication required: %{BOOL}d", v554, 0x25u);
        sub_100016290(v724, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v725);
      }

      else
      {
      }

      v560 = v708;
      sub_10000B02C();
      swift_allocError();
      *v561 = xmmword_1004881C0;
      *(v561 + 16) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();

      sub_1002EA068(v560, v670, v707, v671, *(&v671 + 1));

      goto LABEL_340;
    }

    if ((v712 & 1) == 0)
    {
      LOBYTE(v408) = 0;
      v468 = 0;
      v471 = 0;
      v472 = 0;
      v470 = 0;
      v473 = 1;
      v410 = v680;
      goto LABEL_302;
    }

    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
    v539 = v720;
    v540 = Logger.logObject.getter();
    v541 = static os_log_type_t.error.getter();
    v542 = os_log_type_enabled(v540, v541);
    v727 = v539;
    if (v542)
    {
      v543 = swift_slowAlloc();
      v544 = swift_slowAlloc();
      v719 = v406;
      v545 = v544;
      v728 = swift_slowAlloc();
      *&v732 = v728;
      *v543 = 138412802;
      *(v543 + 4) = v539;
      *v545 = v669;

      *(v543 + 12) = 2080;
      v546 = WiFiAddress.description.getter(v713 | v718);
      v548 = v328;
      v549 = sub_100002320(v546, v547, &v732);

      *(v543 + 14) = v549;
      *(v543 + 22) = 256;
      *(v543 + 24) = v548;

      _os_log_impl(&_mh_execute_header, v540, v541, "Cannot create new datapath for %@ to %s[%hhu] because publisher requires security, but no security configuration was provided or derivable", v543, 0x19u);
      sub_100016290(v545, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v728);
    }

    else
    {
    }

    sub_10000B02C();
    swift_allocError();
    *v598 = xmmword_1004881C0;
    *(v598 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

LABEL_321:
    sub_1002EA068(v708, v670, v707, v671, *(&v671 + 1));

    goto LABEL_340;
  }

  v374 = [v337 pmk];
  if (v374)
  {
    v375 = v374;
    v376 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v378 = v377;

    v379 = NANPMK.init(pmk:)(v376, v378);
    if (v380 >> 60 != 15)
    {
      v381 = v379;
      v668 = v380;
      v382 = [v717 pmkID];
      if (v382 && (v383 = v382, v384 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v383, v385 = NANPMK.ID.init(_:)(v384), v386 >> 60 != 15))
      {
        v666 = v385;
        v667 = v386;
        *&v732 = v332;
        v505 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
        v506 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0, &protocol conformance descriptor for [A]);
        v507 = Collection<>.strongestSupportedPublicKeySuite.getter(v505, v506);
        if (v507 != 8)
        {
          LOBYTE(v408) = v507;
          if (*(v715 + *(type metadata accessor for NANSubscribe.Configuration(0) + 68)) == 1)
          {
            sub_100017554(0, 0xF000000000000000);
            v468 = v381;
            v519 = v668;
            sub_10000AB0C(v381, v668);
            v521 = v666;
            v520 = v667;
            sub_10005D67C(v666, v667);
            sub_1000124C8(v468, v519);
            sub_100017554(v521, v520);

            v472 = v521;
            v470 = v520;
            v471 = v519;
            v473 = 0;
            v410 = v680;
            v337 = v717;
            v406 = v719;
            goto LABEL_302;
          }

          sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
          v727 = v720;
          v615 = Logger.logObject.getter();
          v616 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v615, v616))
          {
            v617 = swift_slowAlloc();
            v618 = swift_slowAlloc();
            v619 = swift_slowAlloc();
            *&v732 = v619;
            *v617 = 138412802;
            v620 = v727;
            *(v617 + 4) = v727;
            *v618 = v669;

            *(v617 + 12) = 2080;
            v621 = WiFiAddress.description.getter(v713 | v718);
            v623 = sub_100002320(v621, v622, &v732);

            *(v617 + 14) = v623;
            *(v617 + 22) = 256;
            *(v617 + 24) = v772;

            _os_log_impl(&_mh_execute_header, v615, v616, "Cannot create new datapath for %@ to %s[%hhu] because unable to derive security parameters with client provided PMK and PMKID and with authentication type set", v617, 0x19u);
            sub_100016290(v618, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v619);
          }

          else
          {
            v625 = v727;
          }

          sub_10000B02C();
          swift_allocError();
          *v626 = xmmword_1004881C0;
          *(v626 + 16) = 1;
          swift_willThrow();

          sub_100017554(v381, v668);
          sub_100017554(v666, v667);
          swift_unknownObjectRelease();
          goto LABEL_321;
        }

        sub_100017554(v381, v668);
        v387 = v666;
        v388 = v667;
      }

      else
      {
        v387 = v381;
        v388 = v668;
      }

      sub_100017554(v387, v388);
    }
  }

  *&v732 = v332;
  v389 = sub_10005DC58(&unk_100597490, &qword_1004B17B0);
  v390 = sub_10000CADC(&qword_100595C30, &unk_100597490, &qword_1004B17B0, &protocol conformance descriptor for [A]);
  v668 = v389;
  v391 = Collection<>.strongestSupportedSharedKeySuite.getter(v389, v390);
  if (v391 == 8)
  {
LABEL_228:
    v412 = qword_10059B9C8;
    swift_beginAccess();
    v666 = v412;
    LOBYTE(v729) = v711;
    BYTE1(v729) = v672;
    BYTE2(v729) = v675;
    BYTE3(v729) = v676;
    BYTE4(v729) = v674;
    BYTE5(v729) = v677;
    v414 = v721;
    v413 = v722;
    v416 = _s17InitiatorInstanceCMa_0(255, v721, v722, v415);
    v418 = _s17ResponderInstanceCMa_0(255, v414, v413, v417);
    v667 = v416;
    v420 = type metadata accessor for Either(0, v416, v418, v419);
    v664 = sub_1002CAFC4();
    v665 = v420;
    Dictionary.subscript.getter();
    v421 = BYTE8(v730[0]);
    if (BYTE8(v730[0]) == 255)
    {
      swift_endAccess();
      v426 = v772;
    }

    else
    {
      v422 = *&v730[0];
      swift_endAccess();
      swift_unownedRetainStrong();
      v423 = v709;
      sub_10040CD68(v713 | v718, v709);

      v424 = *(v423 + *(v706 + 96));
      sub_10036D24C(v423, type metadata accessor for NANPeer);
      v425 = v772;
      if ((v424 & 1) == 0)
      {
        if (sub_100428BAC(v422, v421 & 1))
        {
          sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
          v460 = v720;
          v461 = Logger.logObject.getter();
          v462 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v461, v462))
          {
            v463 = swift_slowAlloc();
            v464 = swift_slowAlloc();
            v727 = v464;
            v728 = swift_slowAlloc();
            *&v732 = v728;
            *v463 = 138412802;
            *(v463 + 4) = v460;
            *v464 = v669;

            *(v463 + 12) = 2080;
            v465 = WiFiAddress.description.getter(v713 | v718);
            v467 = sub_100002320(v465, v466, &v732);

            *(v463 + 14) = v467;
            *(v463 + 22) = 256;
            *(v463 + 24) = v772;

            _os_log_impl(&_mh_execute_header, v461, v462, "Existing pairing session for the datapath from %@ to %s[%hhu] is terminating, please try again", v463, 0x19u);
            sub_100016290(v727, &qword_10058B780, &qword_100480AC0);

            sub_100002A00(v728);
          }

          else
          {
          }

          sub_10000B02C();
          swift_allocError();
          *v522 = xmmword_10047CE50;
          *(v522 + 16) = 1;
          swift_willThrow();

          sub_1002CB018(v422, v421);
          swift_unknownObjectRelease();
          sub_1002EA068(v708, v670, v707, v671, *(&v671 + 1));

          goto LABEL_340;
        }

        v508 = v720;
        v509 = Logger.logObject.getter();
        v510 = static os_log_type_t.default.getter();
        v511 = os_log_type_enabled(v509, v510);
        v406 = v719;
        if (v511)
        {
          v512 = swift_slowAlloc();
          v727 = v422;
          v513 = v512;
          v514 = swift_slowAlloc();
          v716 = swift_slowAlloc();
          *&v732 = v716;
          *v513 = 138412802;
          *(v513 + 4) = v508;
          *v514 = v669;

          *(v513 + 12) = 2080;
          v515 = WiFiAddress.description.getter(v713 | v718);
          v517 = sub_100002320(v515, v516, &v732);

          *(v513 + 14) = v517;
          *(v513 + 22) = 256;
          *(v513 + 24) = v772;
          _os_log_impl(&_mh_execute_header, v509, v510, "Using existing pairing session for security for the datapath from %@ to %s[%hhu]", v513, 0x19u);
          sub_100016290(v514, &qword_10058B780, &qword_100480AC0);

          sub_100002A00(v716);

          v422 = v727;
        }

        else
        {
        }

        LOBYTE(v408) = sub_100428AE0(v422);
        v468 = static NANPMK.zero.getter();
        v524 = v523;
        sub_100017554(0, 0xF000000000000000);
        sub_10000AB0C(v468, v524);
        sub_10005D67C(0, 0xF000000000000000);
        sub_1000124C8(v468, v524);
        sub_100017554(0, 0xF000000000000000);

        sub_1002CB018(v422, v421);
        v470 = 0xF000000000000000;
        v471 = v524;
        goto LABEL_277;
      }

      sub_1002CB018(v422, v421);
      v426 = v425;
    }

    v427 = v686;
    swift_unownedRetainStrong();
    v428 = v709;
    sub_10040CD68(v713 | v718, v709);

    v429 = v723;
    sub_10035D644(sub_10036CC38, v728, v338);
    v723 = v429;
    sub_10036D24C(v428, type metadata accessor for NANPeer);
    v430 = v704;
    v431 = (*(v703 + 48))(v338, 1, v704);
    v432 = v705;
    if (v431 == 1)
    {
      sub_100016290(v338, &qword_10058BAD0, &qword_100480E18);
    }

    else
    {
      sub_10036D640(v338, v705, type metadata accessor for NANPairedDeviceSharedAssociation);
      swift_unownedRetainStrong();
      v433 = v430;
      v434 = *(*v427 + 736);
      swift_beginAccess();
      v435 = v716;
      sub_10036D334(v427 + v434, v716, type metadata accessor for NANDriverCapabilities);

      v436 = v435[1];

      sub_10036D24C(v435, type metadata accessor for NANDriverCapabilities);
      v437 = *(v432 + *(v433 + 24));
      v716 = v437;
      v438 = v432;
      v439 = sub_1001B4ED4(v437, v436);

      if (v439)
      {
        swift_unownedRetainStrong();
        v440 = NANServiceName.description.getter(countAndFlagsBits, v726);
        v442 = v441;
        v443 = v696;
        sub_10036D334(v438, v696, type metadata accessor for NANPairedDeviceSharedAssociation);
        v444 = v699;

        v445 = v719;
        swift_unknownObjectRetain();
        v446 = v443;
        v406 = v445;
        v447 = sub_100442420(v427, v713 | v718, v687, v426, v440, v442, v446, v445, v698, v444);

        if (v447)
        {
          v719 = v445;
          v448 = v720;
          swift_bridgeObjectRetain_n();
          v449 = v448;
          v450 = Logger.logObject.getter();
          v451 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v450, v451))
          {
            v452 = swift_slowAlloc();
            v453 = swift_slowAlloc();
            v727 = swift_slowAlloc();
            *&v732 = v727;
            *v452 = 138413058;
            *(v452 + 4) = v449;
            *v453 = v669;

            *(v452 + 12) = 2080;
            v454 = WiFiAddress.description.getter(v713 | v718);
            v456 = sub_100002320(v454, v455, &v732);

            *(v452 + 14) = v456;
            *(v452 + 22) = 256;
            *(v452 + 24) = v772;
            *(v452 + 25) = 2080;
            if (v444)
            {
              v457 = v698;
            }

            else
            {
              v457 = 0x6E776F6E6B6E553CLL;
            }

            if (v444)
            {
              v458 = v444;
            }

            else
            {
              v458 = 0xE90000000000003ELL;
            }

            v459 = sub_100002320(v457, v458, &v732);

            *(v452 + 27) = v459;
            swift_bridgeObjectRelease_n();
            _os_log_impl(&_mh_execute_header, v450, v451, "Setting up a pair verify session for security for the datapath from %@ to %s[%hhu] with Client BundleID: %s", v452, 0x23u);
            sub_100016290(v453, &qword_10058B780, &qword_100480AC0);

            swift_arrayDestroy();
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          *&v730[0] = v447;
          BYTE8(v730[0]) = 0;
          LOBYTE(v729) = v711;
          BYTE1(v729) = v672;
          BYTE2(v729) = v675;
          BYTE3(v729) = v676;
          BYTE4(v729) = v674;
          BYTE5(v729) = v677;
          swift_beginAccess();
          type metadata accessor for Dictionary();

          Dictionary.subscript.setter();
          swift_endAccess();
          v468 = static NANPMK.zero.getter();
          v526 = v525;
          sub_100017554(0, 0xF000000000000000);
          sub_10000AB0C(v468, v526);
          sub_10005D67C(0, 0xF000000000000000);
          sub_1000124C8(v468, v526);
          sub_100017554(0, 0xF000000000000000);

          sub_10036D24C(v705, type metadata accessor for NANPairedDeviceSharedAssociation);
          v470 = 0xF000000000000000;
          v471 = v526;
          v472 = 0;
          v473 = 0;
          v410 = v680;
          goto LABEL_281;
        }

        sub_10036D24C(v705, type metadata accessor for NANPairedDeviceSharedAssociation);
        v332 = v678;
        goto LABEL_254;
      }

      sub_10036D24C(v438, type metadata accessor for NANPairedDeviceSharedAssociation);
      v332 = v678;
    }

    v406 = v719;
LABEL_254:
    *&v732 = v332;
    v709 = v390;
    v484 = Collection<>.strongestSupportedPairingKeySuite.getter(v668, v390);
    v411 = v682;
    if (v484 != 8)
    {
      v485 = v484;
      LODWORD(v705) = NANAttribute.PairingBootstrapping.Method.init(apiValue:advertise:)([v717 pairingMethod], 0, 0);
      if ((v705 & 0x10000) == 0)
      {
        swift_unownedRetainStrong();
        v716 = v485;
        v486 = v694;
        sub_10040CD68(v713 | v718, v694);

        v487 = v486 + *(v706 + 80);
        v488 = *v487;
        v489 = *(v487 + 16);
        v490 = *(v487 + 24);
        v491 = *(v487 + 32);
        v492 = *(v487 + 40);
        v493 = *v487;
        v703 = *(v487 + 8);
        v704 = v489;
        sub_10036CC58(v493, v703, v489, v490, v491);
        sub_10036D24C(v486, type metadata accessor for NANPeer);
        if ((v488 & 0xFF0000) != 0xE0000)
        {
          v765 = v488;
          v662 = v488;
          v663 = v490;
          v766 = BYTE2(v488);
          v767 = v703;
          v768 = v704;
          v769 = v490;
          v770 = v491;
          v694 = v491;
          LODWORD(v696) = v492;
          v771 = v492;
          swift_unownedRetainStrong();
          v494 = v692;
          sub_10040CD68(v713 | v718, v692);

          v495 = *(v494 + *(v706 + 56));

          sub_10036D24C(v494, type metadata accessor for NANPeer);
          if (v495)
          {
            if (!NANAttribute.PairingBootstrapping.type.getter())
            {
              *&v496 = NANAttribute.PairingBootstrapping.Method.validAdvertisedMethod(from:)(v696);
              if ((v496 & 0x10000) == 0)
              {
                *&v732 = *NANAttribute.DeviceCapabilityExtension.pairingSetupEnabled.unsafeMutableAddressor();
                *&v730[0] = v495;
                sub_10027B614();
                if (dispatch thunk of SetAlgebra.isSuperset(of:)())
                {
                  v497 = v717;
                  v498 = v720;
                  v499 = v497;
                  v500 = v498;

                  v501 = Logger.logObject.getter();
                  LODWORD(v712) = static os_log_type_t.default.getter();
                  v727 = v501;
                  if (!os_log_type_enabled(v501, v712))
                  {

LABEL_352:
                    swift_unownedRetainStrong();
                    v651 = NANServiceName.description.getter(countAndFlagsBits, v726);
                    v653 = v652;
                    if ([v499 pairingCachingEnabled])
                    {
                      *&v732 = *NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor();
                      *&v730[0] = v495;
                      v654 = dispatch thunk of SetAlgebra.isSuperset(of:)();
                    }

                    else
                    {

                      v654 = 0;
                    }

                    v655 = [v499 connectionMode];
                    v656 = [v499 pairSetupServiceSpecificInfo];
                    if (v655 == 2)
                    {
                      v657 = NANGenericServiceProtocol.init(apiPublishServiceSpecificInfo:apiPairingMetadata:)(v656, [v499 pairingMetadata]);
                    }

                    else
                    {
                      v657 = NANGenericServiceProtocol.init(apiPublishServiceSpecificInfo:)(v656);
                    }

                    v658 = v657;
                    swift_unknownObjectRetain();
                    sub_100012400(&v741, &v732, &qword_1005968A0, &unk_100499050);
                    LOBYTE(v408) = v716;
                    v659 = sub_100442FF4(v686, v713 | v718, v687, v772, v651, v653, v705, v716, v654 & 1, v658, v406, v763);

                    *&v730[0] = v659;
                    BYTE8(v730[0]) = 0;
                    LOBYTE(v729) = v711;
                    BYTE1(v729) = v672;
                    BYTE2(v729) = v675;
                    BYTE3(v729) = v676;
                    BYTE4(v729) = v674;
                    BYTE5(v729) = v677;
                    swift_beginAccess();
                    type metadata accessor for Dictionary();
                    Dictionary.subscript.setter();
                    swift_endAccess();
                    v468 = static NANPMK.zero.getter();
                    v661 = v660;
                    sub_100017554(0, 0xF000000000000000);
                    sub_10000AB0C(v468, v661);
                    sub_10005D67C(0, 0xF000000000000000);
                    sub_1000124C8(v468, v661);
                    sub_100017554(0, 0xF000000000000000);

                    sub_1002EA024(v662, v703, v704, v663, v694);
                    v470 = 0xF000000000000000;
                    v471 = v661;
LABEL_277:
                    v472 = 0;
                    v473 = 0;
                    v410 = v680;
                    v337 = v717;
                    goto LABEL_302;
                  }

                  v502 = swift_slowAlloc();
                  v706 = swift_slowAlloc();
                  v709 = swift_slowAlloc();
                  *&v732 = v709;
                  *v502 = 33555714;
                  *(v502 + 4) = v705;
                  *(v502 + 6) = 1024;
                  if ([v499 pairingCachingEnabled])
                  {
                    *&v730[0] = *NANAttribute.DeviceCapabilityExtension.pairingCachingEnabled.unsafeMutableAddressor();
                    v729 = v495;
                    v503 = dispatch thunk of SetAlgebra.isSuperset(of:)();

                    if (v503)
                    {
                      v504 = 1;
LABEL_351:
                      *(v502 + 8) = v504;

                      *(v502 + 12) = 2112;
                      *(v502 + 14) = v500;
                      v646 = v706;
                      *v706 = v669;

                      *(v502 + 22) = 2080;
                      v647 = WiFiAddress.description.getter(v713 | v718);
                      v649 = sub_100002320(v647, v648, &v732);

                      *(v502 + 24) = v649;
                      *(v502 + 32) = 256;
                      *(v502 + 34) = v772;
                      v650 = v727;
                      _os_log_impl(&_mh_execute_header, v727, v712, "Setting up a pair setup session using method %hu, pairing caching %{BOOL}d for security for the datapath from %@ to %s[%hhu]", v502, 0x23u);
                      sub_100016290(v646, &qword_10058B780, &qword_100480AC0);

                      sub_100002A00(v709);

                      goto LABEL_352;
                    }
                  }

                  else
                  {
                  }

                  v504 = 0;
                  goto LABEL_351;
                }
              }
            }

            v411 = v682;
            v332 = v678;
          }

          sub_1002EA024(v662, v703, v704, v663, v694);
        }
      }
    }

    swift_unownedRetainStrong();
    v527 = v684;
    WiFiInterface.preferences.getter();

    v528 = Preferences.automaticallyUseEncryption.getter(v411);
    v683(v527, v411);
    if (v528)
    {
      *&v732 = v332;
      v716 = Collection<>.strongestSupportedSharedKeySuite.getter(v668, v709);
      if (v716 != 8)
      {
        v529 = type metadata accessor for NANSubscribe.Configuration(0);
        v530 = *(v715 + *(v529 + 68));
        v719 = v406;
        if (v530)
        {
          if ((v707 & 0xFE) == 4 || (v531 = v529, v532 = v671, sub_10000AB0C(v671, *(&v671 + 1)), v533 = v707, v534 = NANServiceInfo.genericServiceProtocol.getter(v707, v532, *(&v532 + 1)), sub_1002EA068(v708, v670, v533, v532, *(&v532 + 1)), !v534))
          {
            sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
            v536 = v693;
            (*(v702 + 56))(v693, 1, 1, v701);
LABEL_326:
            sub_100016290(v536, &unk_100595C40, &qword_100499070);
            v605 = v720;
            v606 = Logger.logObject.getter();
            v607 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v606, v607))
            {
              v608 = swift_slowAlloc();
              v609 = swift_slowAlloc();
              v610 = swift_slowAlloc();
              *&v732 = v610;
              *v608 = 138412802;
              *(v608 + 4) = v605;
              *v609 = v669;

              *(v608 + 12) = 2080;
              v611 = WiFiAddress.description.getter(v713 | v718);
              v613 = sub_100002320(v611, v612, &v732);

              *(v608 + 14) = v613;
              *(v608 + 22) = 256;
              *(v608 + 24) = v772;

              v614 = "Cannot create new datapath for %@ to %s[%hhu] because unable to find security parameters included for the discovered publisher";
LABEL_337:
              _os_log_impl(&_mh_execute_header, v606, v607, v614, v608, 0x19u);
              sub_100016290(v609, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v610);

LABEL_339:
              sub_10000B02C();
              swift_allocError();
              *v630 = xmmword_1004881C0;
              *(v630 + 16) = 1;
              swift_willThrow();
              swift_unknownObjectRelease();

              sub_1002EA068(v708, v670, v707, v671, *(&v671 + 1));

              goto LABEL_340;
            }

            goto LABEL_338;
          }

          v535 = v693;
          NANGenericServiceProtocol.publicKey.getter(v534, v693);

          if ((*(v702 + 48))(v535, 1, v701) == 1)
          {
            sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
            v536 = v693;
            goto LABEL_326;
          }

          v631 = v688;
          (*(v702 + 32))(v688, v693, v701);
          v632 = v697;
          sub_10036D334(v715 + *(v531 + 64), v697, type metadata accessor for OWEKeys);
          v633 = OWEKeys.generatePMK(for:asClient:)(v631, 1);
          v635 = v634;
          sub_10036D24C(v632, type metadata accessor for OWEKeys);
          if (v635 >> 60 == 15)
          {
            sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
            v636 = v720;
            v637 = Logger.logObject.getter();
            v638 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v637, v638))
            {
              v639 = swift_slowAlloc();
              v640 = swift_slowAlloc();
              v641 = swift_slowAlloc();
              *&v732 = v641;
              *v639 = 138412802;
              *(v639 + 4) = v636;
              *v640 = v669;

              *(v639 + 12) = 2080;
              v642 = WiFiAddress.description.getter(v713 | v718);
              v644 = sub_100002320(v642, v643, &v732);

              *(v639 + 14) = v644;
              *(v639 + 22) = 256;
              *(v639 + 24) = v772;

              _os_log_impl(&_mh_execute_header, v637, v638, "Cannot create new datapath for %@ to %s[%hhu] because unable to derive the PMK using the OWE keys", v639, 0x19u);
              sub_100016290(v640, &qword_10058B780, &qword_100480AC0);

              sub_100002A00(v641);
            }

            else
            {
            }

            sub_10000B02C();
            swift_allocError();
            *v645 = xmmword_1004881C0;
            *(v645 + 16) = 1;
            swift_willThrow();
            swift_unknownObjectRelease();

            sub_1002EA068(v708, v670, v707, v671, *(&v671 + 1));

            (*(v702 + 8))(v688, v701);
            goto LABEL_340;
          }

          sub_100017554(0, 0xF000000000000000);
          v468 = v633;
          sub_10000AB0C(v633, v635);
          sub_10005D67C(0, 0xF000000000000000);
          sub_1000124C8(v633, v635);
          sub_100017554(0, 0xF000000000000000);

          (*(v702 + 8))(v688, v701);
          v470 = 0xF000000000000000;
          v471 = v635;
          goto LABEL_345;
        }

        v600 = qword_10059BB08;
        v601 = v720;
        swift_beginAccess();
        v602 = *(v601 + v600);

        v603 = v691;
        sub_10040C968(*(&v672 + 1) | v673, v602, v691);

        v604 = type metadata accessor for NANPeer.Service.AuthenticationStatus(0);
        if ((*(*(v604 - 8) + 48))(v603, 1, v604) == 1)
        {
          sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
          sub_100016290(v603, &unk_100597460, &qword_1004AFD18);
        }

        else
        {
          sub_10036D334(v603, v690, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
          sub_10036D24C(v603, type metadata accessor for NANPeer.Service.AuthenticationStatus);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            v468 = *v690;
            v624 = v690[1];
            sub_100017554(0, 0xF000000000000000);
            sub_10000AB0C(v468, v624);
            sub_10005D67C(0, 0xF000000000000000);
            sub_1000124C8(v468, v624);
            sub_100017554(0, 0xF000000000000000);

            v470 = 0xF000000000000000;
            v471 = v624;
LABEL_345:
            v472 = 0;
            v473 = 0;
            v410 = v680;
LABEL_281:
            LOBYTE(v408) = v716;
            v337 = v717;
            v406 = v719;
            goto LABEL_302;
          }

          sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
          sub_10036D24C(v690, type metadata accessor for NANPeer.Service.AuthenticationStatus.State);
        }

        v605 = v720;
        v606 = Logger.logObject.getter();
        v607 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v606, v607))
        {
          v608 = swift_slowAlloc();
          v609 = swift_slowAlloc();
          v610 = swift_slowAlloc();
          *&v732 = v610;
          *v608 = 138412802;
          *(v608 + 4) = v605;
          *v609 = v669;

          *(v608 + 12) = 2080;
          v627 = WiFiAddress.description.getter(v713 | v718);
          v629 = sub_100002320(v627, v628, &v732);

          *(v608 + 14) = v629;
          *(v608 + 22) = 256;
          *(v608 + 24) = v772;

          v614 = "Cannot create new datapath for %@ to %s[%hhu] because unable to find an authenticated PMK for the discovered publisher";
          goto LABEL_337;
        }

LABEL_338:

        goto LABEL_339;
      }
    }

    v337 = v717;
    v328 = v772;
    goto LABEL_292;
  }

  v392 = v391;
  v393 = [v717 pmk];
  if (!v393 || (v394 = v393, v395 = static Data._unconditionallyBridgeFromObjectiveC(_:)(), v397 = v396, v394, v398 = NANPMK.init(pmk:)(v395, v397), v399 >> 60 == 15))
  {
    v400 = [v717 passphrase];
    if (v400)
    {
      v401 = v400;
      v402 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v404 = v403;

      v405 = HIBYTE(v404) & 0xF;
      if ((v404 & 0x2000000000000000) == 0)
      {
        v405 = v402 & 0xFFFFFFFFFFFFLL;
      }

      v406 = v719;
      if (!v405)
      {
        __break(1u);
        return;
      }

      v407 = v726;

      LOBYTE(v408) = v392;
      v727 = NANPassphrase.pmk(for:serviceName:publisherAddress:)(v392, countAndFlagsBits, v407, v713 | v718, v402, v404);
      v668 = v409;

      swift_bridgeObjectRelease_n();
      v410 = v680;
      v337 = v717;
      goto LABEL_248;
    }

    goto LABEL_228;
  }

  v668 = v399;
  v727 = v398;
  LOBYTE(v408) = v392;
  v410 = v680;
  v337 = v717;
  v406 = v719;
LABEL_248:
  if (*(v715 + *(type metadata accessor for NANSubscribe.Configuration(0) + 68)) != 1)
  {
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
    v474 = v720;
    v475 = Logger.logObject.getter();
    v476 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v475, v476))
    {
      v477 = swift_slowAlloc();
      v478 = swift_slowAlloc();
      v719 = v406;
      v479 = v478;
      v728 = swift_slowAlloc();
      *&v732 = v728;
      *v477 = 138412802;
      *(v477 + 4) = v474;
      *v479 = v669;

      *(v477 + 12) = 2080;
      v480 = WiFiAddress.description.getter(v713 | v718);
      v482 = v474;
      v483 = sub_100002320(v480, v481, &v732);

      *(v477 + 14) = v483;
      v474 = v482;
      *(v477 + 22) = 256;
      *(v477 + 24) = v772;

      _os_log_impl(&_mh_execute_header, v475, v476, "Cannot create new datapath for %@ to %s[%hhu] because unable to derive security parameters with client provided PMK and with authentication type set", v477, 0x19u);
      sub_100016290(v479, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v728);
    }

    else
    {
    }

    sub_10000B02C();
    swift_allocError();
    *v518 = xmmword_1004881C0;
    *(v518 + 16) = 1;
    swift_willThrow();

    sub_1000124C8(v727, v668);
    swift_unknownObjectRelease();
    sub_1002EA068(v708, v670, v707, v671, *(&v671 + 1));

    goto LABEL_340;
  }

  sub_100017554(0, 0xF000000000000000);
  v468 = v727;
  v469 = v668;
  sub_10000AB0C(v727, v668);
  sub_10005D67C(0, 0xF000000000000000);
  sub_1000124C8(v468, v469);
  sub_100017554(0, 0xF000000000000000);

  v470 = 0xF000000000000000;
  v471 = v469;
  v472 = 0;
  v473 = 0;
LABEL_302:
  v719 = v406;
  v408 = v408;
  v762[0] = v408;
  v727 = v468;
  v762[1] = v468;
  v667 = v470;
  v668 = v471;
  v762[2] = v471;
  v666 = v472;
  v762[3] = v472;
  v762[4] = v470;
  v762[5] = 0;
  v717 = v473;
  v762[6] = v473;
  swift_beginAccess();
  v562 = sub_10005DC58(&qword_100597328, &qword_1004B1638);
  IDPool.availableID()(v562, v730);
  swift_endAccess();
  if (BYTE1(v730[0]))
  {
    sub_100016290(&v741, &qword_1005968A0, &unk_100499050);
    v563 = v720;
    v564 = Logger.logObject.getter();
    v565 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v564, v565))
    {
      v566 = swift_slowAlloc();
      v567 = swift_slowAlloc();
      v728 = swift_slowAlloc();
      *&v732 = v728;
      *v566 = 138412802;
      *(v566 + 4) = v563;
      *v567 = v669;

      *(v566 + 12) = 2080;
      v568 = WiFiAddress.description.getter(v713 | v718);
      v570 = v563;
      v571 = v408;
      v572 = sub_100002320(v568, v569, &v732);

      *(v566 + 14) = v572;
      v408 = v571;
      v563 = v570;
      *(v566 + 22) = 256;
      *(v566 + 24) = v772;

      _os_log_impl(&_mh_execute_header, v564, v565, "Cannot create new datapath for %@ to %s[%hhu] because no more instance IDs were available", v566, 0x19u);
      sub_100016290(v567, &qword_10058B780, &qword_100480AC0);

      sub_100002A00(v728);
    }

    else
    {
    }

    sub_10000B02C();
    swift_allocError();
    *v581 = xmmword_1004B1160;
    *(v581 + 16) = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_1002EA068(v708, v670, v707, v671, *(&v671 + 1));

    sub_10011A270(v408, v727, v668, v666, v667, 0, v717);
    goto LABEL_340;
  }

  LODWORD(v712) = LOBYTE(v730[0]);

  v711 = (*(*v410 + 256))(v573);
  v574 = type metadata accessor for NANSubscribe.Configuration(0);
  v575 = v574;
  v576 = v715;
  v577 = *(v715 + *(v574 + 68));
  v716 = v408;
  if (v577 == 1)
  {
    v578 = v697;
    sub_10036D334(v715 + *(v574 + 64), v697, type metadata accessor for OWEKeys);
    v579 = v700;
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    sub_10036D24C(v578, type metadata accessor for OWEKeys);
    v580 = 0;
  }

  else
  {
    v580 = 1;
    v579 = v700;
  }

  (*(v702 + 56))(v579, v580, 1, v701);
  v709 = NANGenericServiceProtocol.init(apiDatapathServiceSpecificInfo:)([v337 serviceSpecificInfo]);
  sub_100012400(v740, v730, &qword_1005914A8, &qword_100499048);
  v582 = (v576 + v575[18]);
  v583 = *v582 | (*(v582 + 2) << 32);
  v584 = *(v582 + 6);
  v585 = v576;
  v586 = *(v576 + v575[20]);
  v587 = *(v585 + v575[23]) | (*(v585 + v575[23] + 4) << 32);
  v588 = (v585 + v575[24]);
  v589 = v579;
  v590 = *v588;
  v591 = *(v588 + 2);
  sub_10011A208(v716, v727, v668, v666, v667, 0, v717);
  v773 = v584;
  NANDatapath.Configuration.init(instanceID:serviceName:responderPublishID:responderManagementAddress:initiatorDataAddress:initiatorSubscribeID:publicOWEKey:serviceSpecificInfo:serviceType:securityConfiguration:internetSharingConfiguration:multicastAddress:multicastServiceType:connectionMode:channelInfo:countryCode:gtkRequired:pairingMetadata:)(v712, countAndFlagsBits, v726, v772, v713 | v718, v711 & 0xFFFFFFFFFFFFLL, v687, v589, &v732, v709, v681, v762, v730, v583 | (v584 << 48), v586, v725, v587, v590 | (v591 << 16), v685, v763);
  __chkstk_darwin();
  KeyPath = swift_getKeyPath();
  v593 = v723;
  v594 = v724;
  sub_1003551D4(&v732, KeyPath, v724);
  if (v593)
  {
    swift_unknownObjectRelease();

    sub_1002EA068(v708, v670, v707, v671, *(&v671 + 1));

    sub_10011A270(v716, v727, v668, v666, v667, 0, v717);
    sub_100333750(&v732);
LABEL_340:
    sub_100016290(v710, &unk_1005985D0, &unk_1004B17A0);
    goto LABEL_186;
  }

  v595 = v716;

  sub_100012400(v594, v730, &unk_100597480, &qword_1004B1798);
  v596 = v731;
  sub_100016290(v730, &unk_100597480, &qword_1004B1798);
  if (v596 == 1 && v699 && (v695 & 0x100000000) == 0)
  {
    sub_10032C110(v698, v699, v695);
  }

  v597 = v708;
  if ((*(v715 + v575[15]) & 1) != 0 || *(v715 + v575[20]) != 1)
  {

    swift_unknownObjectRelease();
    sub_1002EA068(v597, v670, v707, v671, *(&v671 + 1));
    sub_10011A270(v595, v727, v668, v666, v667, 0, v717);
    sub_100333750(&v732);
    sub_100016290(v710, &unk_1005985D0, &unk_1004B17A0);
    sub_100016290(v740, &qword_1005914A8, &qword_100499048);
    v599 = v720;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    swift_unknownObjectRelease();

    sub_1002EA068(v597, v670, v707, v671, *(&v671 + 1));
    sub_10011A270(v595, v727, v668, v666, v667, 0, v717);
    sub_100333750(&v732);
    sub_100016290(v710, &unk_1005985D0, &unk_1004B17A0);
    sub_100016290(v740, &qword_1005914A8, &qword_100499048);
  }
}

BOOL sub_100364C1C(void *a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, uint64_t a7)
{
  v11 = *a1 + *((swift_isaMask & **a1) + 0x68);
  swift_beginAccess();
  if (*(v11 + 24) != a2)
  {
    return 0;
  }

  v12 = String.lowercased()();
  v13 = String.lowercased()();
  if (v12._countAndFlagsBits == v13._countAndFlagsBits && v12._object == v13._object)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v11 + 32))
  {
    if (*(v11 + 32) == 1 && a5 == 2)
    {
      return 0;
    }
  }

  else if (a5 - 1 < 2)
  {
    return 0;
  }

  if (!static NANClusterChangeEvent.__derived_struct_equals(_:_:)(*(v11 + 25) | (*(v11 + 27) << 16), a6 & 0xFFFFFFFFFFFFLL))
  {
    return 0;
  }

  v17 = *(v11 + 3);
  v18 = *(v11 + 1);
  v19 = (*(*a7 + 256))();
  return static NANClusterChangeEvent.__derived_struct_equals(_:_:)(v18 | (v17 << 16), v19 & 0xFFFFFFFFFFFFLL);
}

void sub_100364DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OS_dispatch_queue.nan.unsafeMutableAddressor();
  v10 = *v9;
  *v8 = *v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v10)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      swift_beginAccess();
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = v14;
        v17 = v13;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412546;
          *(v20 + 4) = v16;
          *(v20 + 12) = 2112;
          *(v20 + 14) = v17;
          *v21 = v15;
          v21[1] = v13;
          v22 = v16;
          v23 = v17;
          _os_log_impl(&_mh_execute_header, v18, v19, "%@ was invalidated detaching from %@", v20, 0x16u);
          sub_10005DC58(&qword_10058B780, &qword_100480AC0);
          swift_arrayDestroy();
        }

        v24[3] = swift_getObjectType();
        v24[0] = a4;
        swift_unknownObjectRetain();
        sub_10032D358(v24);

        sub_100002A00(v24);
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10036506C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v5 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = *(a2 + *(v5 + 304));
  swift_unownedRetainStrong();
  (*(v7 + 16))(v9, v10 + *(*v10 + 112), AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 128))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  v12 = LongTermPairingKeyStore.getPairedPeersWithIDs()();

  if (*(v12 + 16) && (v13 = a3, v14 = sub_10002A440(v23), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v12 + 56);
    v18 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    v19 = *(v18 - 8);
    sub_10036D334(v17 + *(v19 + 72) * v16, v13, type metadata accessor for NANPairedDeviceSharedAssociation);

    return (*(v19 + 56))(v13, 0, 1, v18);
  }

  else
  {

    v21 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
    return (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
  }
}

uint64_t sub_1003653DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14[3] = swift_getObjectType();
  v14[0] = a2;
  v15 = 1;
  swift_unknownObjectRetain();
  v12 = a6(v14, a1, a3, a4, a5 | ((HIDWORD(a5) & 1) << 32));
  sub_100016290(v14, &unk_100597480, &qword_1004B1798);
  return v12;
}

uint64_t sub_1003654D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  type metadata accessor for NANSubscribe.Configuration(0);
  __chkstk_darwin();
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  DNSRecords.Identifier.description.getter(a1, a2, a3 & 1);
  v11 = objc_allocWithZone(WiFiAwareSubscribeConfiguration);
  v12 = String._bridgeToObjectiveC()();

  v13 = [v11 initWithServiceName:v12];

  [v13 setAuthenticationType:0];
  v18[0] = 1;
  v14 = sub_1003653DC(v13, a4, 0, 0, 0x100000000uLL, sub_100356504);

  if (!v4)
  {
    v15 = qword_10059BAE8;
    swift_beginAccess();
    sub_10036D334(v14 + v15, v10, type metadata accessor for NANSubscribe.Configuration);

    v14 = *v10;
    sub_10036D24C(v10, type metadata accessor for NANSubscribe.Configuration);
  }

  return v14;
}

uint64_t sub_100365690(char a1)
{
  v2 = *v1;
  swift_beginAccess();
  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  *&v11 = v3;
  *(&v11 + 1) = _s8InstanceCMa(255, v3, v4, v5);
  *&v12 = v4;
  *(&v12 + 1) = swift_getWitnessTable(byte_1004B2574, *(&v11 + 1));
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v11);
  Dictionary.subscript.getter();
  if (!v8)
  {
    swift_endAccess();
    v11 = 0u;
    v12 = 0u;
    goto LABEL_7;
  }

  v6 = v8;
  swift_endAccess();
  sub_100058BA4(v8, v9);
  sub_1003912F4(&v11);

  if (!*(&v12 + 1))
  {
LABEL_7:
    sub_100016290(&v11, &qword_10058BA80, &qword_1004818C0);
    return 0;
  }

  sub_10005DC58(&unk_1005974E0, &qword_1004B1818);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

void sub_100365828(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  v14 = a1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  v10 = v4;
  v11 = _s8InstanceCMa(255, v4, v5, v6);
  v12 = v5;
  WitnessTable = swift_getWitnessTable(byte_1004B2574, v11);
  type metadata accessor for NANDiscoveryEngine.ServiceSession(0, &v10);
  Dictionary.subscript.getter();
  v7 = v15;
  if (v15)
  {
    v8 = v16;
    v9 = v15;
    swift_endAccess();
    sub_100058BA4(v7, v8);
    sub_100391354();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100365950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v30 = a3;
  type metadata accessor for NANPublish.Configuration(0);
  __chkstk_darwin();
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32) | (*(a1 + 33) << 8);
  DNSRecords.Identifier.description.getter(v6, v7, *(a1 + 32));
  v9 = objc_allocWithZone(WiFiAwarePublishConfiguration);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithServiceName:v10];

  [v11 setAuthenticationType:0];
  v12 = [objc_allocWithZone(WiFiAwarePublishServiceSpecificInfo) init];
  v13 = v30;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v12 setTxtRecordData:isa];

  v15 = String._bridgeToObjectiveC()();
  [v12 setInstanceName:v15];

  [v11 setServiceSpecificInfo:v12];
  v16 = [objc_allocWithZone(WiFiAwarePublishDatapathConfiguration) initWithServiceType:DNSRecords.Identifier.serviceType.getter(v6 securityConfiguration:{v7, v8), 0}];
  v17 = *(v13 + 32);
  type metadata accessor for DNSRecords.SRV(0);
  v18 = [objc_allocWithZone(WiFiAwarePublishDatapathServiceSpecificInfo) initWithProtocolType:v17 servicePort:NWEndpoint.Port.rawValue.getter()];
  [v16 setServiceSpecificInfo:v18];

  v19 = [v16 serviceSpecificInfo];
  if (v19)
  {
    v20 = v19;
    v21 = String._bridgeToObjectiveC()();
    [v20 setHostname:v21];
  }

  [v11 setDatapathConfiguration:v16];
  v32[0] = 1;
  v22 = v33;
  v23 = sub_1003653DC(v11, v31, 0, 0, 0x100000000uLL, sub_100358A80);

  if (v22)
  {
  }

  else
  {

    v24 = qword_10059B890;
    swift_beginAccess();
    v25 = v23 + v24;
    v26 = v29;
    sub_10036D334(v25, v29, type metadata accessor for NANPublish.Configuration);

    v23 = *v26;
    sub_10036D24C(v26, type metadata accessor for NANPublish.Configuration);
  }

  return v23;
}
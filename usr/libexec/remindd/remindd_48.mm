void sub_1004745E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSString a6)
{
  v8 = *v6;
  v9.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v11 = String._bridgeToObjectiveC()();
  if (a6)
  {
    a6 = String._bridgeToObjectiveC()();
  }

  v12 = [v8 URLForAttachmentFile:v9.super.isa accountID:v10.super.isa fileName:v11 sha512Sum:a6];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

id sub_100474704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSString a6, uint64_t a7, char a8)
{
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v11.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = String._bridgeToObjectiveC()();
  if (a6)
  {
    a6 = String._bridgeToObjectiveC()();
  }

  URL._bridgeToObjectiveC()(v12);
  v15 = v14;
  v20 = 0;
  v16 = [v19 updateAttachmentFile:v10.super.isa accountID:v11.super.isa fileName:v13 sha512Sum:a6 fileURL:v14 keepSource:a8 & 1 error:&v20];

  if (v16)
  {
    return v20;
  }

  v18 = v20;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100474878@<X0>(NSURL *a1@<X8>)
{
  v2 = *v1;
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = [v2 extractSha512Sum:v3];

  if (!v5)
  {
    return 0;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

uint64_t sub_1004748FC(void *a1)
{
  v3 = v1;
  v5 = sub_1000F5104(&qword_100947F98, &qword_1007AB100);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v13[-v8];
  sub_10000F61C(a1, a1[3]);
  sub_100476A40();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  type metadata accessor for URL();
  sub_100476AF8(&qword_100945620, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = (v3 + *(type metadata accessor for RDSavedAttachment.URLMetadata(0) + 20));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 1;
    sub_1001CB4B8(v14, v11);
    sub_10015377C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100031A14(v14, v15);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100474ADC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = type metadata accessor for URL();
  v27 = *(v30 - 8);
  __chkstk_darwin(v30, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&qword_100947F78, &qword_1007AB0E8);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  __chkstk_darwin(v7, v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for RDSavedAttachment.URLMetadata(0);
  __chkstk_darwin(v12, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F61C(a1, a1[3]);
  sub_100476A40();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v25 = v12;
  v16 = v15;
  v17 = v27;
  LOBYTE(v31) = 0;
  sub_100476AF8(&qword_100945610, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v18 = v30;
  v19 = v28;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(v17 + 32);
  v24 = v16;
  v20(v16, v6, v18);
  v32 = 1;
  sub_1000318F4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v29 + 8))(v11, v19);
  v21 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_100476A94(v21, v26);
  sub_10000607C(a1);
  return sub_100476444(v21);
}

uint64_t sub_100474E3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a3;
  v6 = sub_1000F5104(&qword_100947F88, &qword_1007AB0F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = v12 - v9;
  sub_10000F61C(a1, a1[3]);
  sub_1004769EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v4)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v14 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100474FEC(uint64_t a1)
{
  v2 = sub_100476A40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100475028(uint64_t a1)
{
  v2 = sub_100476A40();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1004750AC(void *a1@<X0>, _TtC7remindd19RDXPCStorePerformer *a2@<X1>, _BYTE *a3@<X8>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, void *a7@<X6>, void *a8@<X7>)
{
  if (a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000)
  {
    a2, a2, a1, a4, a5, a6, a7, a8;
    v19 = 0;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v12, v13, v14, v15, v16, v17, v18;
    v19 = v11 ^ 1;
  }

  *a3 = v19 & 1;
}

uint64_t sub_100475134(uint64_t a1)
{
  v2 = sub_1004766BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100475170(uint64_t a1)
{
  v2 = sub_1004766BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004751AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000F5104(&qword_100947F58, &qword_1007AB0D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v12 - v8;
  sub_10000F61C(a1, a1[3]);
  sub_1004766BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000607C(a1);
  }

  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_10000607C(a1);
  *a2 = v10;
  return result;
}

uint64_t sub_10047530C(void *a1)
{
  v2 = sub_1000F5104(&qword_100947F90, &qword_1007AB0F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v8 - v5;
  sub_10000F61C(a1, a1[3]);
  sub_1004766BC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100475444()
{
  v1 = 0x6874646977;
  if (*v0 != 1)
  {
    v1 = 0x746867696568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x657A6953656C6966;
  }
}

uint64_t sub_100475498@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC7remindd19RDXPCStorePerformer *a3@<X1>, void *a4@<X2>, void *a5@<X3>, void *a6@<X4>, void *a7@<X5>, void *a8@<X6>, void *a9@<X7>)
{
  result = sub_100476710(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1004754C0(uint64_t a1)
{
  v2 = sub_1004769EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004754FC(uint64_t a1)
{
  v2 = sub_1004769EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100475538@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100476820(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

id sub_1004755B4(void *a1, void *a2)
{
  v192 = a2;
  v3 = type metadata accessor for URL();
  v182 = *(v3 - 8);
  v183 = v3;
  __chkstk_darwin(v3, v4);
  v6 = v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = v172 - v14;
  __chkstk_darwin(v16, v17);
  v184 = v172 - v18;
  v19 = type metadata accessor for RDSavedAttachment.URLMetadata(0);
  __chkstk_darwin(v19, v20);
  v22 = v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = [v23 remObjectID];
  if (!v24)
  {

    v50 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v55 = String._bridgeToObjectiveC()();
    [v50 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v55];

    swift_willThrow();
LABEL_17:

    goto LABEL_18;
  }

  v180 = v7;
  v181 = v8;
  v186 = v24;
  v25 = [v23 account];
  if (!v25 || (v26 = v25, v27 = [v25 remObjectID], v26, (v179 = v27) == 0))
  {

    v50 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    v51 = swift_getObjCClassFromMetadata();
    v52 = String._bridgeToObjectiveC()();
    [v50 unexpectedNilPropertyWithClass:v51 property:v52];

    swift_willThrow();
    v53 = v186;
LABEL_16:

    goto LABEL_17;
  }

  v28 = [v23 reminder];
  if (!v28 || (v29 = v28, v30 = [v28 remObjectID], v29, !v30))
  {

    v50 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    v56 = swift_getObjCClassFromMetadata();
    v57 = String._bridgeToObjectiveC()();
    [v50 unexpectedNilPropertyWithClass:v56 property:v57];

    swift_willThrow();
    v53 = v179;
    goto LABEL_16;
  }

  v31 = [v23 metadata];
  if (!v31)
  {

    v50 = objc_opt_self();
    type metadata accessor for REMCDSavedAttachment();
    v59 = swift_getObjCClassFromMetadata();
    v60 = String._bridgeToObjectiveC()();
    [v50 unexpectedNilPropertyWithClass:v59 property:v60];

    swift_willThrow();
    goto LABEL_17;
  }

  v32 = v31;
  v177 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v178 = v33;

  v34 = &selRef_isEmpty;
  v35 = [v23 attachmentTypeRawValue];
  if (!v35)
  {
LABEL_20:

    v187 = 0;
    v188 = 0xE000000000000000;
    _StringGuts.grow(_:)(135);
    v61._countAndFlagsBits = 0xD000000000000084;
    v61._object = 0x80000001007F94C0;
    String.append(_:)(v61);
    v62 = [v23 v34[443]];
    if (v62)
    {
      v63 = v62;
      v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v66 = v65;
    }

    else
    {
      v64 = 0;
      v66 = 0;
    }

    v67 = v179;
    v50 = objc_opt_self();
    v190 = v64;
    v191 = v66;
    sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    v68 = Optional.descriptionOrNil.getter();
    v70 = v69;
    v66, v69, v71, v72, v73, v74, v75, v76;
    v77._countAndFlagsBits = v68;
    v77._object = v70;
    String.append(_:)(v77);
    v70, v78, v79, v80, v81, v82, v83, v84;
    v85._countAndFlagsBits = 125;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    v86 = v188;
    v87 = String._bridgeToObjectiveC()();
    v86, v88, v89, v90, v91, v92, v93, v94;
    [v50 invalidParameterErrorWithDescription:v87];

    swift_willThrow();
    sub_10001BBA0(v177, v178);

    goto LABEL_18;
  }

  v36 = v35;
  v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39._countAndFlagsBits = v176;
  v39._object = v38;
  v40 = _findStringSwitchCase(cases:string:)(&off_1008DD7E8, v39);
  v38, v41, v42, v43, v44, v45, v46, v47;
  if (v40)
  {
    if (v40 == 1)
    {
      v49 = 0;
    }

    else
    {
      v48 = v40 == 2;
      v34 = &selRef_isEmpty;
      if (!v48)
      {
        goto LABEL_20;
      }

      v49 = 1;
    }

    v95 = [v23 uti];
    if (v95)
    {
      v96 = v95;
      v97 = [v23 identifier];

      if (v97)
      {
        LODWORD(v176) = v49;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v99 = v180;
        v98 = v181;
        v100 = v184;
        (*(v181 + 32))(v184, v15, v180);
        v101 = [v23 fileName];
        if (!v101)
        {

          v50 = objc_opt_self();
          type metadata accessor for REMCDSavedAttachment();
          v126 = swift_getObjCClassFromMetadata();
          v127 = v100;
          v128 = String._bridgeToObjectiveC()();
          [v50 unexpectedNilPropertyWithClass:v126 property:v128];

          swift_willThrow();
          sub_10001BBA0(v177, v178);

          (*(v98 + 8))(v127, v99);
          goto LABEL_18;
        }

        v102 = v101;
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v174 = v104;

        v105 = v192[4];
        v173 = v192[3];
        v172[1] = sub_10000F61C(v192, v173);
        v106 = [v179 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v107 = [v23 sha512Sum];
        v175 = v30;
        if (v107)
        {
          v108 = v103;
          v109 = v96;
          v110 = v107;
          v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v113 = v112;

          v96 = v109;
          v103 = v108;
        }

        else
        {
          v111 = 0;
          v113 = 0;
        }

        v132 = v184;
        v133 = v103;
        v134 = v174;
        (*(v105 + 8))(v184, v11, v133, v174, v111, v113, v173, v105);
        v134, v135, v136, v137, v138, v139, v140, v141;
        v113, v142, v143, v144, v145, v146, v147, v148;
        v149 = *(v181 + 8);
        v181 += 8;
        v149(v11, v180);
        v174 = v96;

        if (v176)
        {
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          sub_1004763F0();
          v150 = v177;
          v50 = v178;
          v151 = v185;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (!v151)
          {
            v185 = v149;

            v152 = v188;
            v176 = v187;
            v153 = v189;
            v154 = objc_allocWithZone(REMImageAttachment);
            URL._bridgeToObjectiveC()(v155);
            v157 = v156;
            v171 = v152;
            v158 = v154;
            v159 = v186;
            v160 = v179;
            v161 = v174;
            v162 = v175;
            v163 = v176;
            v176 = v157;
            v50 = [v158 initWithObjectID:v186 accountID:v179 reminderID:v175 UTI:v174 fileSize:v163 fileURL:0 data:v171 width:v153 height:?];
LABEL_47:

            sub_10001BBA0(v177, v178);
            (*(v182 + 8))(v6, v183);
            v185(v184, v180);
            goto LABEL_18;
          }
        }

        else
        {
          type metadata accessor for JSONDecoder();
          swift_allocObject();
          JSONDecoder.init()();
          sub_10047639C();
          v150 = v177;
          v50 = v178;
          v164 = v185;
          dispatch thunk of JSONDecoder.decode<A>(_:from:)();
          if (!v164)
          {
            v185 = v149;

            v165 = v187;
            v166 = objc_allocWithZone(REMFileAttachment);
            URL._bridgeToObjectiveC()(v167);
            v169 = v168;
            v170 = v166;
            v159 = v186;
            v160 = v179;
            v161 = v174;
            v162 = v175;
            v176 = v169;
            v50 = [v170 initWithObjectID:v186 accountID:v179 reminderID:v175 UTI:v174 fileSize:v165 fileURL:0 data:?];
            goto LABEL_47;
          }
        }

        sub_10001BBA0(v150, v50);

        (*(v182 + 8))(v6, v183);
        v149(v132, v180);
        goto LABEL_18;
      }

      v50 = objc_opt_self();
      type metadata accessor for REMCDSavedAttachment();
      v119 = swift_getObjCClassFromMetadata();
      v117 = String._bridgeToObjectiveC()();
      v118 = [v50 unexpectedNilPropertyWithClass:v119 property:v117];
    }

    else
    {

      v50 = objc_opt_self();
      type metadata accessor for REMCDSavedAttachment();
      v116 = swift_getObjCClassFromMetadata();
      v117 = String._bridgeToObjectiveC()();
      v118 = [v50 unexpectedNilPropertyWithClass:v116 property:v117];
    }

    v118;

    swift_willThrow();
    sub_10001BBA0(v177, v178);

    goto LABEL_18;
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_100476AF8(&qword_100947EA8, type metadata accessor for RDSavedAttachment.URLMetadata, &unk_1007AB05C);
  v114 = v177;
  v50 = v178;
  v115 = v185;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v115)
  {

    sub_10001BBA0(v114, v50);

    goto LABEL_17;
  }

  v175 = v30;

  v120 = &v22[*(v19 + 20)];
  urlString = v120->_urlString;
  URL._bridgeToObjectiveC()(v120);
  v123 = v122;
  v124 = v179;
  if (urlString >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v129 = objc_allocWithZone(REMURLAttachment);
  v130 = v186;
  v131 = v175;
  v50 = [v129 initWithObjectID:v186 accountID:v124 reminderID:v175 url:v123 metadata:isa];

  sub_10001BBA0(v177, v178);
  sub_100476444(v22);
LABEL_18:
  sub_10000607C(v192);
  return v50;
}

uint64_t type metadata accessor for RDSavedAttachment.URLMetadata(uint64_t a1)
{
  result = qword_100947F20;
  if (!qword_100947F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10047639C()
{
  result = qword_100947E98;
  if (!qword_100947E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947E98);
  }

  return result;
}

unint64_t sub_1004763F0()
{
  result = qword_100947EA0;
  if (!qword_100947EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947EA0);
  }

  return result;
}

uint64_t sub_100476444(uint64_t a1)
{
  v2 = type metadata accessor for RDSavedAttachment.URLMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004764A0()
{
  result = qword_100940920;
  if (!qword_100940920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100940920);
  }

  return result;
}

unint64_t sub_1004764EC()
{
  result = qword_100947EB0;
  if (!qword_100947EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947EB0);
  }

  return result;
}

unint64_t sub_100476540()
{
  result = qword_100947EB8;
  if (!qword_100947EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947EB8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RDSavedAttachment.ImageMetadata(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RDSavedAttachment.ImageMetadata(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100476628(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_1004766BC()
{
  result = qword_100947F60;
  if (!qword_100947F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947F60);
  }

  return result;
}

uint64_t sub_100476710(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a1 == 0x657A6953656C6966 && a2 == 0xE800000000000000;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {
    0xE600000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100476820(void *a1)
{
  v2 = sub_1000F5104(&qword_100947F68, &qword_1007AB0E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v9 - v5;
  sub_10000F61C(a1, a1[3]);
  sub_1004769EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v12 = 0;
  v7 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_10000607C(a1);
  return v7;
}

unint64_t sub_1004769EC()
{
  result = qword_100947F70;
  if (!qword_100947F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947F70);
  }

  return result;
}

unint64_t sub_100476A40()
{
  result = qword_100947F80;
  if (!qword_100947F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947F80);
  }

  return result;
}

uint64_t sub_100476A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDSavedAttachment.URLMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100476AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t assignWithCopy for RDSavedAttachment(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t assignWithTake for RDSavedAttachment(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedAttachment(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedAttachment(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100476C9C()
{
  result = qword_100947FA0;
  if (!qword_100947FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FA0);
  }

  return result;
}

unint64_t sub_100476CF4()
{
  result = qword_100947FA8;
  if (!qword_100947FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FA8);
  }

  return result;
}

unint64_t sub_100476D4C()
{
  result = qword_100947FB0;
  if (!qword_100947FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FB0);
  }

  return result;
}

unint64_t sub_100476DA4()
{
  result = qword_100947FB8;
  if (!qword_100947FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FB8);
  }

  return result;
}

unint64_t sub_100476DFC()
{
  result = qword_100947FC0;
  if (!qword_100947FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FC0);
  }

  return result;
}

unint64_t sub_100476E54()
{
  result = qword_100947FC8;
  if (!qword_100947FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FC8);
  }

  return result;
}

unint64_t sub_100476EAC()
{
  result = qword_100947FD0;
  if (!qword_100947FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FD0);
  }

  return result;
}

unint64_t sub_100476F04()
{
  result = qword_100947FD8;
  if (!qword_100947FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FD8);
  }

  return result;
}

unint64_t sub_100476F5C()
{
  result = qword_100947FE0;
  if (!qword_100947FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947FE0);
  }

  return result;
}

uint64_t sub_100476FB4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100947FE8);
  v1 = sub_100006654(v0, qword_100947FE8);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10047707C()
{
  if ([v0 type] >= 5)
  {
    if (qword_1009361E8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100006654(v1, qword_100947FE8);
    v2 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v3 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("unknown type", 12, 2, v2, v3);
    __break(1u);
  }

  else
  {
    sub_10012DF40();
    swift_getKeyPath();
    [v0 ascending];
    NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  }
}

id sub_10047717C(uint64_t a1, void *a2, void *a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  *&v10 = __chkstk_darwin(v7, v9).n128_u64[0];
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 managedObjectContext];
  if (!v13)
  {
    v24 = objc_opt_self();
    v25 = String._bridgeToObjectiveC()();
    [v24 internalErrorWithDebugDescription:v25];

    swift_willThrow();
    return v8;
  }

  v14 = v13;
  v15 = [a2 remObjectID];
  if (!v15)
  {
    v26 = objc_opt_self();
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = String._bridgeToObjectiveC()();
    [v26 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v8];

    swift_willThrow();
    return v8;
  }

  v66 = v7;
  v67 = a3;
  v68 = v8;
  v69 = a1;
  v8 = v15;
  v16 = sub_100012718(v8);

  type metadata accessor for REMCDAccountListData();
  v17 = [objc_allocWithZone(NSFetchRequest) init];
  v70 = v14;
  v18 = v17;
  v19 = swift_getObjCClassFromMetadata();
  v20 = [v19 entity];
  [v18 setEntity:v20];

  v21 = v18;
  v22 = v70;
  [v18 setAffectedStores:0];
  [v18 setPredicate:v16];
  v23 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    return v8;
  }

  v29 = v23;
  v65 = v21;
  v63 = v8;
  v30 = objc_allocWithZone(REMOrderedIdentifierMap);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v64 = [v30 initWithOrderedIdentifiers:isa];

  if (!(v29 >> 62))
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_20:
    v29, v32, v33, v34, v35, v36, v37, v38;
    v51 = [v19 entity];
    v52 = objc_allocWithZone(v19);
    v53 = v70;
    v54 = [v52 initWithEntity:v51 insertIntoManagedObjectContext:v70];
    v55 = v67;
    v8 = v54;
    [v53 assignObject:v8 toPersistentStore:v55];

    v56 = v63;
    v57 = [v63 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = UUID._bridgeToObjectiveC()().super.isa;
    v68[1](v12, v66);
    [v8 setAccountID:v58];

    v59 = objc_allocWithZone(REMOrderedIdentifierMap);
    v60 = Array._bridgeToObjectiveC()().super.isa;
    v61 = [v59 initWithOrderedIdentifiers:v60];

    [v8 setOrderedIdentifierMap:v61];
    return v8;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v40 = v64;
    v39 = v65;
LABEL_13:
    v29, v41, v42, v43, v44, v45, v46, v47;
    v48 = [v8 orderedIdentifierMap];
    if (v48)
    {
      v49 = v48;
      sub_1000060C8(0, &qword_10093C660, REMOrderedIdentifierMap_ptr);
      if ((static NSObject.== infix(_:_:)() & 1) == 0)
      {
        v50 = v40;
        [v8 setOrderedIdentifierMap:v50];

        goto LABEL_18;
      }
    }

LABEL_18:
    return v8;
  }

  v40 = v64;
  v39 = v65;
  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v29 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100477720()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948000);
  v1 = sub_100006654(v0, qword_100948000);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004777E8(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = _swiftEmptyDictionarySingleton;
  *(v2 + 24) = [objc_allocWithZone(NSCache) init];
  *(v2 + 40) = 0;
  swift_unknownObjectWeakInit();
  [*(v2 + 24) setCountLimit:a1];
  if (qword_1009361F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006654(v4, qword_100948000);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "RDManualSortIDCacheContext > initialized", v7, 2u);
  }

  return v2;
}

uint64_t sub_100477918(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  sub_1000536E0(v8 + 32);

  return swift_deallocClassInstance();
}

void sub_100477984()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  *(v0 + 16) = _swiftEmptyDictionarySingleton;
  v1, v2, v3, v4, v5, v6, v7, v8;
  [*(v0 + 24) removeAllObjects];
  if (qword_1009361F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_100948000);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "RDManualSortIDCacheContext > cleared all", v12, 2u);
  }
}

uint64_t sub_100477A9C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009480D0);
  v1 = sub_100006654(v0, qword_1009480D0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100477B6C(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *a1;
  v9 = 0x4E79616C70736964;
  v10 = 0xEB00000000656D61;
  if (v8 != 1)
  {
    v9 = 0x73694C7472616D73;
    v10 = 0xE900000000000074;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x6E6F697461657263;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xEC00000065746144;
  }

  v13 = 0x4E79616C70736964;
  v14 = 0xEB00000000656D61;
  if (*a2 != 1)
  {
    v13 = 0x73694C7472616D73;
    v14 = 0xE900000000000074;
  }

  if (*a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x6E6F697461657263;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xEC00000065746144;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

Swift::Int sub_100477C8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0xEB00000000656D61;
  if (v1 != 1)
  {
    v2 = 0xE900000000000074;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEC00000065746144;
  }

  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_100477D44(uint64_t a1)
{
  v2 = 0xEB00000000656D61;
  if (*v1 != 1)
  {
    v2 = 0xE900000000000074;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEC00000065746144;
  }

  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_100477DE8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0xEB00000000656D61;
  if (v2 != 1)
  {
    v3 = 0xE900000000000074;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xEC00000065746144;
  }

  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_100477E9C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100479C48(*a1);
  *a2 = result;
  return result;
}

void sub_100477ECC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065746144;
  v4 = 0xEB00000000656D61;
  v5 = 0x4E79616C70736964;
  if (v2 != 1)
  {
    v5 = 0x73694C7472616D73;
    v4 = 0xE900000000000074;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F697461657263;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static REMCDSmartListSection.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for REMCDSmartListSection();
  v6 = String._bridgeToObjectiveC()();
  v7 = [swift_getObjCClassFromMetadata() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDSmartListSection.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v9 = String._bridgeToObjectiveC()();
    v11, v12, v13, v14, v15, v16, v17, v18;
  }

  v19 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v19)
  {
    v20 = [a2 ckIdentifier];
    if (v20)
    {
      v21 = v20;
      [v19 mergeDataFromRecord:a1 accountID:v20];

      v22 = v19;
      [v22 setCkServerRecord:a1];
      [v22 setInCloud:1];

      [v22 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_1009361F8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_1009480D0);
      v24 = a2;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v55 = v4;
        *v27 = 136446466;
        swift_getMetatypeMetadata();
        v28 = String.init<A>(describing:)();
        v30 = v29;
        v31 = sub_10000668C(v28, v29, &v54);
        v30, v32, v33, v34, v35, v36, v37, v38;
        *(v27 + 4) = v31;
        *(v27 + 12) = 2082;
        v39 = [v24 remObjectID];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 description];

          v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;
        }

        else
        {
          v44 = 0xE300000000000000;
          v42 = 7104878;
        }

        v45 = sub_10000668C(v42, v44, &v54);
        v44, v46, v47, v48, v49, v50, v51, v52;
        *(v27 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v25, v26, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v27, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v19;
}

Swift::String __swiftcall REMCDSmartListSection.recordType()()
{
  v0 = 0x80000001007EAAE0;
  v1 = 0xD000000000000010;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::Void __swiftcall REMCDSmartListSection.mergeData(from:accountID:)(CKRecord from, Swift::String accountID)
{
  v4 = String._bridgeToObjectiveC()();
  v33.receiver = v2;
  v33.super_class = type metadata accessor for REMCDSmartListSection();
  objc_msgSendSuper2(&v33, "mergeDataFromRecord:accountID:", from.super.isa, v4);

  v5 = [(objc_class *)from.super.isa recordID];
  v6 = [v5 recordName];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    v6 = String._bridgeToObjectiveC()();
    v8, v9, v10, v11, v12, v13, v14, v15;
  }

  v16 = [v2 ckIdentifierFromRecordName:v6];

  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    v16 = String._bridgeToObjectiveC()();
    v18, v19, v20, v21, v22, v23, v24, v25;
  }

  [v2 setCkIdentifier:v16];

  v26 = [v2 mergeDataRevertedLocallyMarkedForDeletion];
  v27 = [v2 mergeDataRefusedToMergeMarkedForDeletion];
  v32 = 0;
  v28 = v2;
  v29 = from.super.isa;
  sub_1004E7498(v29, v26, v27, v28, v28, v29, &v32);

  if (v32 == 1)
  {
    v30 = [v28 smartList];
    if (v30)
    {
      v31 = v30;
      if (([v30 ckNeedsInitialFetchFromCloud] & 1) == 0)
      {
        _sSo14REMCDSmartListC7reminddE19sortChildrenObjectsyyF_0();
      }
    }
  }
}

void sub_1004786A0(_BYTE *a1, void *a2, void *a3, _BYTE *a4)
{
  v74 = a4;
  v76 = a2;
  v6 = type metadata accessor for UUID();
  v75 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v72 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v9, v10);
  v12 = &v72 - v11;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v13 - 8, v14);
  v73 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v19 = &v72 - v18;
  __chkstk_darwin(v20, v21);
  v23 = &v72 - v22;
  __chkstk_darwin(v24, v25);
  v27 = &v72 - v26;
  __chkstk_darwin(v28, v29);
  v31 = &v72 - v30;
  v32 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  *&v34 = __chkstk_darwin(v32 - 8, v33).n128_u64[0];
  v36 = &v72 - v35;
  if (*a1)
  {
    if (*a1 == 1)
    {
      v37 = [a3 encryptedValues];
      v38 = String._bridgeToObjectiveC()();
      v39 = [v37 objectForKeyedSubscript:v38];
      swift_unknownObjectRelease();

      if (v39)
      {
        v78 = v39;
        sub_1000F5104(&qword_100938860, &unk_1007A4830);
        if (swift_dynamicCast())
        {
          v40 = v77;
          v39 = String._bridgeToObjectiveC()();
          v40, v41, v42, v43, v44, v45, v46, v47;
        }

        else
        {
          v39 = 0;
        }
      }

      [v76 setDisplayName:v39];

      return;
    }

    v51 = [v76 smartList];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 identifier];

      if (v53)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = *(v75 + 56);
        v54(v27, 0, 1, v6);
      }

      else
      {
        v54 = *(v75 + 56);
        v54(v27, 1, 1, v6);
      }

      sub_100031B58(v27, v31, &unk_100939D90, "8\n\r");
    }

    else
    {
      v54 = *(v75 + 56);
      v54(v31, 1, 1, v6);
    }

    if (CKRecord.subscript.getter())
    {
      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      if (!v55)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v55 = 0;
    }

    v56 = sub_100128EE0(v55);

    if (v56)
    {
      objc_opt_self();
      v57 = swift_dynamicCastObjCClass();
      if (!v57)
      {
      }
    }

    else
    {
      v57 = 0;
    }

    v58 = v76;
    [v76 setSmartList:v57];

    v59 = [v58 smartList];
    if (v59)
    {
      v60 = v59;
      v61 = [v59 identifier];

      if (v61)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v62 = 0;
      }

      else
      {
        v62 = 1;
      }

      v63 = v75;
      v54(v19, v62, 1, v6);
      sub_100031B58(v19, v23, &unk_100939D90, "8\n\r");
    }

    else
    {
      v63 = v75;
      v54(v23, 1, 1, v6);
    }

    v64 = *(v9 + 48);
    sub_10018E470(v23, v12);
    sub_10018E470(v31, &v12[v64]);
    v65 = *(v63 + 48);
    if (v65(v12, 1, v6) == 1)
    {
      sub_1000050A4(v23, &unk_100939D90, "8\n\r");
      sub_1000050A4(v31, &unk_100939D90, "8\n\r");
      if (v65(&v12[v64], 1, v6) == 1)
      {
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v66 = 0;
LABEL_38:
        *v74 = v66 & 1;
        return;
      }
    }

    else
    {
      v67 = v73;
      sub_10018E470(v12, v73);
      if (v65(&v12[v64], 1, v6) != 1)
      {
        v68 = &v12[v64];
        v69 = v72;
        (*(v63 + 32))(v72, v68, v6);
        sub_10018E4E0();
        v70 = dispatch thunk of static Equatable.== infix(_:_:)();
        v71 = *(v63 + 8);
        v71(v69, v6);
        sub_1000050A4(v23, &unk_100939D90, "8\n\r");
        sub_1000050A4(v31, &unk_100939D90, "8\n\r");
        v71(v67, v6);
        sub_1000050A4(v12, &unk_100939D90, "8\n\r");
        v66 = v70 ^ 1;
        goto LABEL_38;
      }

      sub_1000050A4(v23, &unk_100939D90, "8\n\r");
      sub_1000050A4(v31, &unk_100939D90, "8\n\r");
      (*(v63 + 8))(v67, v6);
    }

    sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
    v66 = 1;
    goto LABEL_38;
  }

  sub_10018E134();
  v48 = type metadata accessor for Date();
  CKRecordKeyValueSetting.subscript.getter();
  v49 = *(v48 - 8);
  isa = 0;
  if ((*(v49 + 48))(v36, 1, v48) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v49 + 8))(v36, v48);
  }

  [v76 setCreationDate:isa];
}

CKRecord_optional __swiftcall REMCDSmartListSection.newlyCreatedRecord()()
{
  v1 = v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for REMCDSmartListSection();
  v44.receiver = v0;
  v44.super_class = v10;
  v12 = objc_msgSendSuper2(&v44, "newlyCreatedRecord");
  if (v12)
  {
    v13 = 0;
    v14 = &off_1008E37B8;
    v15 = &unk_100938850;
    v40 = v0;
    do
    {
      if (*(v14 + v13 + 32))
      {
        if (*(v14 + v13 + 32) == 1)
        {
          v17 = [v12 encryptedValues];
          v18 = [v1 displayName];
          if (v18)
          {
            v19 = v18;
            v20 = v12;
            v21 = v9;
            v22 = v5;
            v23 = v14;
            v24 = v15;
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;

            *(&v42 + 1) = &type metadata for String;
            v43 = &protocol witness table for String;
            *&v41 = v25;
            *(&v41 + 1) = v27;
            v15 = v24;
            v14 = v23;
            v5 = v22;
            v9 = v21;
            v12 = v20;
            v1 = v40;
          }

          else
          {
            v43 = 0;
            v41 = 0u;
            v42 = 0u;
          }

          swift_getObjectType();
          CKRecordKeyValueSetting.subscript.setter();
          swift_unknownObjectRelease();
        }

        else
        {
          if (([v1 markedForDeletion] & 1) == 0 && (v31 = objc_msgSend(v1, "smartList")) != 0 && (v32 = v31, v33 = objc_msgSend(v31, "recordID"), v32, v33))
          {
            v34 = [v1 cloudKitReferenceWithRecordIDAndValidateAction:v33];

            if (v34)
            {
              v35 = v34;
            }
          }

          else
          {
            v34 = 0;
          }

          CKRecord.subscript.setter();
        }
      }

      else
      {
        v28 = [v1 creationDate];
        if (v28)
        {
          v29 = v28;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v30 = 0;
        }

        else
        {
          v30 = 1;
        }

        v36 = type metadata accessor for Date();
        v37 = *(v36 - 8);
        (*(v37 + 56))(v5, v30, 1, v36);
        sub_100031B58(v5, v9, v15, qword_100795AE0);
        if ((*(v37 + 48))(v9, 1, v36) == 1)
        {
          sub_1000050A4(v9, v15, qword_100795AE0);
          v41 = 0u;
          v42 = 0u;
          v43 = 0;
        }

        else
        {
          *(&v42 + 1) = v36;
          v43 = &protocol witness table for Date;
          v16 = sub_1000103CC(&v41);
          (*(v37 + 32))(v16, v9, v36);
        }

        sub_10018E134();
        CKRecordKeyValueSetting.subscript.setter();
      }

      ++v13;
    }

    while (v13 != 3);
  }

  v38 = v12;
  result.value.super.isa = v38;
  result.is_nil = v11;
  return result;
}

Swift::Void __swiftcall REMCDSmartListSection.cleanUpAfterLocalObjectMerge()()
{
  if (qword_1009361F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009480D0);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A70, &qword_1007A93E8);
    v6 = String.init<A>(describing:)();
    v8 = v7;
    v9 = sub_10000668C(v6, v7, &v18);
    v8, v10, v11, v12, v13, v14, v15, v16;
    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v3, "MERGE.LOCAL: Perhaps you should not try to call cleanUpAfterLocalObjectMerge() for %s.", v4, 0xCu);
    sub_10000607C(v5);
  }

  else
  {
  }
}

Swift::Void __swiftcall REMCDSmartListSection.fixBrokenReferences()()
{
  v1 = v0;
  if (qword_1009361F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100006654(v2, qword_1009480D0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v5, v6))
  {

    goto LABEL_14;
  }

  v73 = v3;
  v7 = 7104878;
  v8 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  *v8 = 136446466;
  v9 = [v4 remObjectID];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 description];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v7 = 7104878;
  }

  else
  {
    v14 = 0xE300000000000000;
    v12 = 7104878;
  }

  v15 = sub_10000668C(v12, v14, &v75);
  v14, v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 4) = v15;
  *(v8 + 12) = 2082;
  v23 = [v4 smartList];
  if (!v23)
  {
    goto LABEL_12;
  }

  v24 = v23;
  v25 = [v23 remObjectID];
  if (!v25)
  {

LABEL_12:
    v29 = 0xE300000000000000;
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v25 description];

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

LABEL_13:
  v30 = sub_10000668C(v7, v29, &v75);
  v29, v31, v32, v33, v34, v35, v36, v37;
  *(v8 + 14) = v30;
  _os_log_impl(&_mh_execute_header, v5, v6, "Fixing broken references for section in smart list {smartListSectionID: %{public}s, smartListID: %{public}s}", v8, 0x16u);
  swift_arrayDestroy();

LABEL_14:
  v38 = [v4 smartList];
  if (!v38)
  {
    return;
  }

  v74 = v38;
  if ([v38 markedForDeletion] && (objc_msgSend(v4, "markedForDeletion") & 1) == 0)
  {
    v39 = v4;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v40, v41))
    {
LABEL_28:

      [v39 markForDeletion];
      goto LABEL_29;
    }

    v42 = 7104878;
    v43 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v43 = 136446466;
    v44 = [v39 remObjectID];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 description];

      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v42 = 7104878;
    }

    else
    {
      v49 = 0xE300000000000000;
      v47 = 7104878;
    }

    v50 = sub_10000668C(v47, v49, &v75);
    v49, v51, v52, v53, v54, v55, v56, v57;
    *(v43 + 4) = v50;
    *(v43 + 12) = 2082;
    v58 = [v39 smartList];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 remObjectID];
      if (v60)
      {
        v61 = v60;
        v62 = [v60 description];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v64 = v63;

LABEL_27:
        v65 = sub_10000668C(v42, v64, &v75);
        v64, v66, v67, v68, v69, v70, v71, v72;
        *(v43 + 14) = v65;
        _os_log_impl(&_mh_execute_header, v40, v41, "Smart List is marked for deletion but section in smart list is not {smartListSectionID: %{public}s, smartListID: %{public}s}", v43, 0x16u);
        swift_arrayDestroy();

        goto LABEL_28;
      }
    }

    v64 = 0xE300000000000000;
    goto LABEL_27;
  }

LABEL_29:
  [v74 forcePushToCloud];
}

unint64_t sub_100479C48(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E36C8, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7remindd21REMCDSmartListSectionC26existingLocalObjectToMerge4withSo11REMCDObjectCSgSo11NSPredicateCSg_tF_0()
{
  if (qword_1009361F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009480D0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A70, &qword_1007A93E8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call existingLocalObjectToMerge() for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

uint64_t _s7remindd21REMCDSmartListSectionC5merge15withLocalObjectSbSo11REMCDObjectC_tF_0()
{
  if (qword_1009361F8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_1009480D0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    swift_getObjectType();
    sub_1000F5104(&qword_100946A70, &qword_1007A93E8);
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v19);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "MERGE.LOCAL: Perhaps you should not try to call merge(withLocalObject:) for %s.", v5, 0xCu);
    sub_10000607C(v6);
  }

  return 0;
}

unint64_t sub_100479F94(uint64_t a1)
{
  result = sub_100479FBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100479FBC()
{
  result = qword_1009480F0;
  if (!qword_1009480F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009480F0);
  }

  return result;
}

unint64_t sub_10047A010(uint64_t a1)
{
  result = sub_10047A038();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10047A038()
{
  result = qword_1009480F8;
  if (!qword_1009480F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009480F8);
  }

  return result;
}

unint64_t sub_10047A090()
{
  result = qword_100948100;
  if (!qword_100948100)
  {
    sub_1000F514C(&qword_100948108, &qword_1007AB658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948100);
  }

  return result;
}

unint64_t sub_10047A0F8()
{
  result = qword_100948110;
  if (!qword_100948110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948110);
  }

  return result;
}

uint64_t sub_10047A164()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations];
  v5 = *&v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 24];
  v4 = *&v0[OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations + 32];
  sub_10000F61C(v3, v5);
  v6 = (*(*(v4 + 24) + 8))(v5);
  v12 = ObjectType;
  v13 = &off_1008EB3C0;
  *&v11 = v1;
  v7 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v8 = swift_allocObject();
  sub_100054B6C(&v11, v8 + 16);
  *(v8 + 56) = v6;
  v12 = v7;
  v13 = &off_1008F5B28;
  *&v11 = v8;
  sub_10000F61C(&v11, v7);
  v9 = v1;
  sub_10051F440();
  return sub_10000607C(&v11);
}

uint64_t sub_10047A250()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations];
  v5 = *&v0[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 24];
  v4 = *&v0[OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations + 32];
  sub_10000F61C(v3, v5);
  v6 = (*(*(v4 + 16) + 8))(v5);
  v12 = ObjectType;
  v13 = &off_1008F1730;
  *&v11 = v1;
  v7 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v8 = swift_allocObject();
  sub_100054B6C(&v11, v8 + 16);
  *(v8 + 56) = v6;
  v12 = v7;
  v13 = &off_1008F5B28;
  *&v11 = v8;
  sub_10000F61C(&v11, v7);
  v9 = v1;
  sub_10051F440();
  return sub_10000607C(&v11);
}

uint64_t sub_10047A33C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = &v0[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations];
  v5 = *&v0[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 24];
  v4 = *&v0[OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations + 32];
  sub_10000F61C(v3, v5);
  v6 = (*(*(v4 + 16) + 8))(v5);
  v12 = ObjectType;
  v13 = &off_1008FDD08;
  *&v11 = v1;
  v7 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v8 = swift_allocObject();
  sub_100054B6C(&v11, v8 + 16);
  *(v8 + 56) = v6;
  v12 = v7;
  v13 = &off_1008F5B28;
  *&v11 = v8;
  sub_10000F61C(&v11, v7);
  v9 = v1;
  sub_10051F440();
  return sub_10000607C(&v11);
}

uint64_t sub_10047A428(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v3, a1);
  sub_10000F61C(v3, v3[3]);
  sub_10051F440();
  return sub_10000607C(v3);
}

uint64_t sub_10047A4F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 + OBJC_IVAR____TtC7remindd37RDBatchDeleteExpiredRemindersActivity_configurations;
  v6 = v4[3];
  v5 = v4[4];
  sub_10000F61C(v4, v6);
  (*(*(v5 + 24) + 8))(v6);
  v11 = a1;
  v12 = &off_1008EB3C0;
  *&v10 = v3;
  sub_100054B6C(&v10, v9);
  v7 = v3;
  return sub_10000607C(v9);
}

uint64_t sub_10047A5E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 + OBJC_IVAR____TtC7remindd19RDAnalyticsActivity_configurations;
  v6 = v4[3];
  v5 = v4[4];
  sub_10000F61C(v4, v6);
  (*(*(v5 + 16) + 8))(v6);
  v11 = a1;
  v12 = &off_1008F1730;
  *&v10 = v3;
  sub_100054B6C(&v10, v9);
  v7 = v3;
  return sub_10000607C(v9);
}

BOOL sub_10047A67C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = __chkstk_darwin(v4, v6);
  v9 = &v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 16))(v12, a1, a2, v7);
  sub_10000F61C(v12, v12[3]);
  sub_10051EE80(v9);
  LOBYTE(a2) = Date.isInThePast.getter();
  (*(v5 + 8))(v9, v4);
  sub_10000607C(v12);
  return (a2 & 1) == 0;
}

uint64_t sub_10047A7BC(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  (a3)(v4, a1, a2);
  sub_10000F61C(v4, v4[3]);
  sub_10051F440();
  return sub_10000607C(v4);
}

uint64_t sub_10047A884(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 + OBJC_IVAR____TtC7remindd40RDSuggestConversionToGroceryListActivity_configurations;
  v6 = v4[3];
  v5 = v4[4];
  sub_10000F61C(v4, v6);
  (*(*(v5 + 16) + 8))(v6);
  v11 = a1;
  v12 = &off_1008FDD08;
  *&v10 = v3;
  sub_100054B6C(&v10, v9);
  v7 = v3;
  return sub_10000607C(v9);
}

uint64_t sub_10047A91C(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  sub_10000F61C(a1, v8);
  if (sub_10047A67C(v8, v9))
  {
    v10 = objc_opt_self();
    v11 = a1[3];
    v12 = a1[4];
    sub_10000F61C(a1, v11);
    (*(v12 + 16))(v23, v11, v12);
    sub_10000F61C(v23, v23[3]);
    sub_10051EE80(v7);
    Date.timeIntervalSinceNow.getter();
    v14 = v13;
    (*(v4 + 8))(v7, v3);
    [v10 throttledErrorWithRemainingTimeInterval:v14];
    sub_10000607C(v23);
    return swift_willThrow();
  }

  else
  {
    v16 = a1[3];
    v17 = a1[4];
    sub_10000F61C(a1, v16);
    (*(v17 + 24))(v16, v17);
    v19 = a1[3];
    v18 = a1[4];
    sub_10000F61C(a1, v19);
    result = (*(*(v18 + 8) + 8))(v19);
    if (!v1)
    {
      v20 = a1[3];
      v21 = a1[4];
      sub_10000F61C(a1, v20);
      return (*(v21 + 32))(v20, v21);
    }
  }

  return result;
}

uint64_t sub_10047AB5C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948120);
  v1 = sub_100006654(v0, qword_100948120);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10047AC24(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x44497463656A626FLL;
    v7 = 0x6D614E7473726966;
    v8 = 0x614E656C6464696DLL;
    if (a1 != 3)
    {
      v8 = 0x656D614E7473616CLL;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x4E79616C70736964;
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
    v1 = 0x73736572646461;
    v2 = 0x737574617473;
    if (a1 != 9)
    {
      v2 = 0x654C737365636361;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x66657250656D616ELL;
    v4 = 0x66667553656D616ELL;
    if (a1 != 6)
    {
      v4 = 0x656D616E6B63696ELL;
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

uint64_t sub_10047AD9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10047AC24(*a1);
  v5 = v4;
  v6 = sub_10047AC24(v2);
  v14 = v7;
  if (v3 == v6 && v5 == v7)
  {
    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v5, v7, v8, v9, v10, v11, v12, v13;
  v14, v17, v18, v19, v20, v21, v22, v23;
  return v16 & 1;
}

Swift::Int sub_10047AE24()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10047AC24(v1);
  v3 = v2;
  String.hash(into:)();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return Hasher._finalize()();
}

double sub_10047AE88(uint64_t a1)
{
  sub_10047AC24(*v1);
  v3 = v2;
  String.hash(into:)();

  v3, v4, v5, v6, v7, v8, v9, v10;
  return result;
}

Swift::Int sub_10047AEDC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10047AC24(v2);
  v4 = v3;
  String.hash(into:)();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return Hasher._finalize()();
}

unint64_t sub_10047AF3C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10047B0C4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10047AF6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10047AC24(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10047AFA8@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10047B0C4(a1);
  *a2 = result;
  return result;
}

void sub_10047AFD8(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3._countAndFlagsBits = *a1;
  v4 = a1[1];
  v3._object = v4;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1298, v3);
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_10047B048(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1008E1298, v3);
  object, v6, v7, v8, v9, v10, v11, v12;
  if (v5 == 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  if (!v5)
  {
    v13 = 0;
  }

  *a2 = v13;
}

unint64_t sub_10047B0C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008E0900, v2);
  object, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_10047B110(void *a1)
{
  v150 = 0;
  v3 = [a1 remObjectIDWithError:&v150];
  if (!v3)
  {
    v15 = v150;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v1;
  }

  v4 = v3;
  v5 = v150;
  v6 = [a1 account];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 remObjectID];

    if (v8)
    {
      v9 = [a1 list];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 remObjectID];

        if (v11)
        {
          v12 = [a1 displayName];
          if (v12)
          {
            v13 = v12;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v148 = v14;
          }

          else
          {
            v148 = 0;
          }

          v50 = [a1 firstName];
          if (v50)
          {
            v51 = v50;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;
          }

          else
          {
            v53 = 0;
          }

          v54 = [a1 middleName];
          if (v54)
          {
            v55 = v54;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v56;
          }

          else
          {
            v57 = 0;
          }

          v146 = v11;
          v58 = [a1 lastName];
          if (v58)
          {
            v59 = v58;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v61 = v60;
          }

          else
          {
            v61 = 0;
          }

          v62 = [a1 namePrefix];
          if (v62)
          {
            v63 = v62;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v65 = v64;
          }

          else
          {
            v65 = 0;
          }

          v66 = [a1 nameSuffix];
          if (v66)
          {
            v67 = v66;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v145 = v68;
          }

          else
          {
            v145 = 0;
          }

          v69 = [a1 nickname];
          if (v69)
          {
            v70 = v69;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v144 = v71;
          }

          else
          {
            v144 = 0;
          }

          v72 = [a1 address];
          if (v72)
          {
            v73 = v72;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v142 = v74;
          }

          else
          {
            v142 = 0;
          }

          v75 = [a1 status];
          v139 = [a1 accessLevel];
          if (v148)
          {
            v143 = String._bridgeToObjectiveC()();
            v148, v76, v77, v78, v79, v80, v81, v82;
            v83 = v65;
            if (v53)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v143 = 0;
            v83 = v65;
            if (v53)
            {
LABEL_50:
              v141 = String._bridgeToObjectiveC()();
              v53, v84, v85, v86, v87, v88, v89, v90;
              if (v57)
              {
                goto LABEL_51;
              }

              goto LABEL_57;
            }
          }

          v141 = 0;
          if (v57)
          {
LABEL_51:
            v140 = String._bridgeToObjectiveC()();
            v57, v91, v92, v93, v94, v95, v96, v97;
            if (v61)
            {
              goto LABEL_52;
            }

            goto LABEL_58;
          }

LABEL_57:
          v140 = 0;
          if (v61)
          {
LABEL_52:
            v149 = String._bridgeToObjectiveC()();
            v61, v98, v99, v100, v101, v102, v103, v104;
            v105 = v146;
            if (v83)
            {
              goto LABEL_53;
            }

            goto LABEL_59;
          }

LABEL_58:
          v149 = 0;
          v105 = v146;
          if (v83)
          {
LABEL_53:
            v106 = String._bridgeToObjectiveC()();
            v83, v107, v108, v109, v110, v111, v112, v113;
            v114 = v145;
            if (v145)
            {
LABEL_54:
              v147 = String._bridgeToObjectiveC()();
              v114, v115, v116, v117, v118, v119, v120, v121;
LABEL_61:
              if (v144)
              {
                v122 = String._bridgeToObjectiveC()();
                v144, v123, v124, v125, v126, v127, v128, v129;
              }

              else
              {
                v122 = 0;
              }

              v130 = v4;
              if (v142)
              {
                v131 = String._bridgeToObjectiveC()();
                v142, v132, v133, v134, v135, v136, v137, v138;
              }

              else
              {
                v131 = 0;
              }

              v1 = [objc_allocWithZone(REMSharee) initShareeWithObjectID:v130 accountID:v8 listID:v105 displayName:v143 firstName:v141 middleName:v140 lastName:v149 namePrefix:v106 nameSuffix:v147 nickname:v122 address:v131 status:v75 accessLevel:v139];

              return v1;
            }

LABEL_60:
            v147 = 0;
            goto LABEL_61;
          }

LABEL_59:
          v106 = 0;
          v114 = v145;
          if (v145)
          {
            goto LABEL_54;
          }

          goto LABEL_60;
        }
      }
    }
  }

  v16 = [a1 account];
  if (v16)
  {
    v17 = v16;
    v1 = 0xE900000000000029;
  }

  else
  {
    if (qword_100936200 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_100948120);
    v19 = v4;
    v17 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v19;
      *v22 = v4;
      v23 = v19;
      _os_log_impl(&_mh_execute_header, v17, v20, "REMShareeCDIngestor: cdSharee.account is nil {cdSharee.remObjectID: %@}", v21, 0xCu);
      sub_100039860(v22);
    }

    v1 = 0xE700000000000000;
  }

  v24 = [a1 list];
  if (v24)
  {
    v32 = v24;
  }

  else
  {
    v1, v25, v26, v27, v28, v29, v30, v31;
    if (qword_100936200 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_100948120);
    v34 = v4;
    v32 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      *(v36 + 4) = v34;
      *v37 = v4;
      v38 = v34;
      _os_log_impl(&_mh_execute_header, v32, v35, "REMShareeCDIngestor: cdSharee.list is nil {cdSharee.remObjectID: %@}", v36, 0xCu);
      sub_100039860(v37);
    }

    v1 = 0xE400000000000000;
  }

  v39 = objc_opt_self();
  sub_100029EFC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = String._bridgeToObjectiveC()();
  v1, v42, v43, v44, v45, v46, v47, v48;
  [v39 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v41];

  swift_willThrow();
  return v1;
}

void sub_10047B95C(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  *&v9 = __chkstk_darwin(v6, v7).n128_u64[0];
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  if (!v12)
  {
    return;
  }

  v13 = (a3 + 32);
  v14 = (v8 + 8);
  while (1)
  {
    while (1)
    {
      v17 = *v13++;
      v16 = v17;
      if (v17 <= 4)
      {
        if (v16 <= 1)
        {
          if (v16)
          {
            isa = [a1 displayName];
            [a2 setDisplayName:isa];
          }

          else
          {
            v19 = [a1 objectID];
            v20 = [v19 uuid];

            static UUID._unconditionallyBridgeFromObjectiveC(_:)();
            isa = UUID._bridgeToObjectiveC()().super.isa;
            (*v14)(v11, v6);
            [a2 setIdentifier:isa];
          }
        }

        else if (v16 == 2)
        {
          isa = [a1 firstName];
          [a2 setFirstName:isa];
        }

        else if (v16 == 3)
        {
          isa = [a1 middleName];
          [a2 setMiddleName:isa];
        }

        else
        {
          isa = [a1 lastName];
          [a2 setLastName:isa];
        }

        goto LABEL_4;
      }

      if (v16 <= 7)
      {
        if (v16 == 5)
        {
          isa = [a1 namePrefix];
          [a2 setNamePrefix:isa];
        }

        else if (v16 == 6)
        {
          isa = [a1 nameSuffix];
          [a2 setNameSuffix:isa];
        }

        else
        {
          isa = [a1 nickname];
          [a2 setNickname:isa];
        }

        goto LABEL_4;
      }

      if (v16 != 8)
      {
        break;
      }

      isa = [a1 address];
      [a2 setAddress:isa];
LABEL_4:

      if (!--v12)
      {
        return;
      }
    }

    if (v16 != 9)
    {
      break;
    }

    v18 = [a1 status];
    if (v18 < -32768)
    {
      goto LABEL_32;
    }

    if (v18 >= 0x8000)
    {
      goto LABEL_33;
    }

    [a2 setStatus:v18];
LABEL_29:
    if (!--v12)
    {
      return;
    }
  }

  v21 = [a1 accessLevel];
  if (v21 >= -32768)
  {
    if (v21 >= 0x8000)
    {
      goto LABEL_34;
    }

    [a2 setAccessLevel:v21];
    goto LABEL_29;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_10047BD20()
{
  result = qword_100948338;
  if (!qword_100948338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948338);
  }

  return result;
}

unint64_t sub_10047BDA8()
{
  result = qword_100948350;
  if (!qword_100948350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948350);
  }

  return result;
}

uint64_t sub_10047BDFC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948360);
  v1 = sub_100006654(v0, qword_100948360);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10047BEC4(uint64_t *a1, uint64_t a2)
{
  sub_10047C1BC();
  if (!a1[5])
  {
    if (qword_100936208 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006654(v4, qword_100948360);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000668C(a1[2], a1[3], &v18);
      _os_log_impl(&_mh_execute_header, v5, v6, "os_transaction INIT {name: %{public}s}", v7, 0xCu);
      sub_10000607C(v8);
    }

    String.utf8CString.getter();
    v9 = os_transaction_create();

    a1[5] = v9;
    swift_unknownObjectRelease();
  }

  v10 = a1[4];
  v11 = __OFADD__(v10, a2);
  v12 = v10 + a2;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a1[4] = v12;
    if (qword_100936208 == -1)
    {
      goto LABEL_9;
    }
  }

  swift_once();
LABEL_9:
  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100948360);

  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_10000668C(a1[2], a1[3], &v18);
    *(v15 + 12) = 2048;
    *(v15 + 14) = a1[4];

    _os_log_impl(&_mh_execute_header, oslog, v14, "RDTransactionRegistrar[%{public}s]: Transaction count incremented to {count: %ld}", v15, 0x16u);
    sub_10000607C(v16);
  }

  else
  {
  }
}

void sub_10047C1BC()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2 < 0)
  {
    if (qword_100936208 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006654(v7, qword_100948360);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_10000668C(*(v1 + 16), *(v1 + 24), &v18);
      *(v10 + 12) = 2048;
      *(v10 + 14) = *(v1 + 32);

      _os_log_impl(&_mh_execute_header, v8, v9, "RDTransactionRegistrar[%{public}s]: Transaction count is negative {count: %ld}", v10, 0x16u);
      sub_10000607C(v11);
    }

    else
    {
    }

    v2 = *(v1 + 32);
    if (*(v1 + 40))
    {
LABEL_3:
      if (v2)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else if (*(v0 + 40))
  {
    goto LABEL_3;
  }

  if (!v2)
  {
    return;
  }

  if (qword_100936208 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006654(v12, qword_100948360);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18 = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_10000668C(*(v1 + 16), *(v1 + 24), &v18);
    *(v15 + 12) = 2048;
    *(v15 + 14) = *(v1 + 32);

    _os_log_impl(&_mh_execute_header, v13, v14, "RDTransactionRegistrar[%{public}s]: Transaction count is not zero when osTransaction is nil {count: %ld}", v15, 0x16u);
    sub_10000607C(v16);

    if (!*(v1 + 40))
    {
      return;
    }
  }

  else
  {

    if (!*(v1 + 40))
    {
      return;
    }
  }

  if (*(v1 + 32))
  {
    return;
  }

LABEL_4:
  if (qword_100936208 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_100948360);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10000668C(*(v1 + 16), *(v1 + 24), &v18);
    _os_log_impl(&_mh_execute_header, oslog, v4, "RDTransactionRegistrar[%{public}s]: Transaction count is zero when osTransaction is not nil", v5, 0xCu);
    sub_10000607C(v6);
  }

  else
  {
  }
}

void sub_10047C5BC(NSObject *a1, uint64_t a2)
{
  v4 = a1;
  sub_10047C1BC();
  isa = a1[4].isa;
  v6 = __OFSUB__(isa, a2);
  v7 = isa < a2;
  v8 = isa - a2;
  if (v7)
  {
    if (qword_100936208 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100948360);

    v4 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446722;
      *(v11 + 4) = sub_10000668C(a1[2].isa, a1[3].isa, &v22);
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1[4];

      *(v11 + 22) = 2048;
      *(v11 + 24) = a2;
      _os_log_impl(&_mh_execute_header, v4, v10, "RDTransactionRegistrar[%{public}s]: Trying to decrement counter to negative, grounding to zero {count: %ld, n: %ld}", v11, 0x20u);
      sub_10000607C(v12);

LABEL_11:
      v8 = 0;
      goto LABEL_12;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_12:
  a1[4].isa = v8;
  if (qword_100936208 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100006654(v13, qword_100948360);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_10000668C(a1[2].isa, a1[3].isa, &v22);
    *(v16 + 12) = 2048;
    *(v16 + 14) = a1[4];

    _os_log_impl(&_mh_execute_header, v14, v15, "RDTransactionRegistrar[%{public}s]: Transaction count decremented to {count: %ld}", v16, 0x16u);
    sub_10000607C(v17);

    if (a1[4].isa)
    {
      return;
    }
  }

  else
  {

    if (a1[4].isa)
    {
      return;
    }
  }

  if (a1[5].isa)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_10000668C(a1[2].isa, a1[3].isa, &v22);
      _os_log_impl(&_mh_execute_header, v18, v19, "os_transaction RELEASE {name: %{public}s}", v20, 0xCu);
      sub_10000607C(v21);
    }

    a1[5].isa = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10047C984(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_10047C9F0(void *a1@<X0>, BOOL *a2@<X8>)
{
  v5 = objc_opt_self();
  v6 = [v5 fetchRequest];
  v7 = [v5 predicateForCloudKitAccountsWithKeyPathPrefix:0];
  [v6 setPredicate:v7];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100791300;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 32) = 0x696669746E656469;
  *(v8 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8, v10, v11, v12, v13, v14, v15, v16;
  [v6 setPropertiesToFetch:isa];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007953F0;
  *(v17 + 32) = a1;
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  v18 = a1;
  v19 = Array._bridgeToObjectiveC()().super.isa;
  v17, v20, v21, v22, v23, v24, v25, v26;
  [v6 setAffectedStores:v19];

  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v27 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
  }

  else
  {
    if (v27 >> 62)
    {
      v36 = v27;
      v35 = _CocoaArrayWrapper.endIndex.getter();
      v27 = v36;
    }

    else
    {
      v35 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27, v28, v29, v30, v31, v32, v33, v34;

    *a2 = v35 != 0;
  }
}

void sub_10047CC28(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v9, v10);
  v12 = &v36[-v11];
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v36[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17, v18);
  v20 = &v36[-v19];
  *&v23 = __chkstk_darwin(v21, v22).n128_u64[0];
  v25 = &v36[-v24];
  v39 = v2;
  v26 = [v2 mostRecentTargetTemplateIdentifier];
  v40 = v5;
  if (v26)
  {
    v27 = v26;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v40;
    (*(v40 + 56))(v25, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v25, 1, 1, v4);
  }

  v28 = *(v9 + 48);
  sub_10018E470(v25, v12);
  v38 = a1;
  sub_10018E470(a1, &v12[v28]);
  v29 = *(v5 + 48);
  if (v29(v12, 1, v4) == 1)
  {
    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    if (v29(&v12[v28], 1, v4) == 1)
    {
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      return;
    }
  }

  else
  {
    sub_10018E470(v12, v20);
    if (v29(&v12[v28], 1, v4) != 1)
    {
      v34 = v40;
      (*(v40 + 32))(v8, &v12[v28], v4);
      sub_100029FD8(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v34 + 8);
      v35(v8, v4);
      sub_1000050A4(v25, &unk_100939D90, "8\n\r");
      v35(v20, v4);
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      if (v37)
      {
        return;
      }

      goto LABEL_10;
    }

    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    (*(v40 + 8))(v20, v4);
  }

  sub_1000050A4(v12, &unk_10093A3D0, &qword_100795770);
LABEL_10:
  sub_10018E470(v38, v16);
  if (v29(v16, 1, v4) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v40 + 8))(v16, v4);
  }

  v31 = v39;
  [v39 setMostRecentTargetTemplateIdentifier:isa];

  v32 = [v31 createResolutionTokenMapIfNecessary];
  v33 = String._bridgeToObjectiveC()();
  [v32 updateForKey:v33];
}

double sub_10047D104(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, char a3)
{
  v7 = [v3 autoCategorizationLocalCorrectionsChecksum];
  if (!v7)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v9 = v7;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (!a2)
  {
    v12, v13, v14, v15, v16, v17, v18, v19;
LABEL_12:
    [v3 setAutoCategorizationLocalCorrectionsChecksum:a2];

    if (a3)
    {
      v29 = [v3 createResolutionTokenMapIfNecessary];
      v30 = String._bridgeToObjectiveC()();
      [v29 updateForKey:v30];
    }

    return result;
  }

  if (v10 != a1 || v12 != a2)
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v12, v22, v23, v24, v25, v26, v27, v28;
    if (v21)
    {
      return result;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
    goto LABEL_12;
  }

  v12, v13, v14, v15, v16, v17, v18, v19;
  return result;
}

uint64_t sub_10047D30C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948430);
  v1 = sub_100006654(v0, qword_100948430);
  if (qword_100936450 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975038);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10047D3D4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  sub_1000536E0(v8 + 40);
  sub_10003E114(*(v8 + 48), *(v8 + 56));
  return v8;
}

uint64_t sub_10047D40C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_10047D3D4(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t sub_10047D4B8()
{
  _StringGuts.grow(_:)(31);
  0xE000000000000000, v1, v2, v3, v4, v5, v6, v7;
  v8._countAndFlagsBits = sub_100597C80(v0);
  object = v8._object;
  String.append(_:)(v8);
  object, v10, v11, v12, v13, v14, v15, v16;
  v17._countAndFlagsBits = 0x6669746E65646920;
  v17._object = 0xED0000203A726569;
  String.append(_:)(v17);
  String.append(_:)(v0[1]);
  v18._countAndFlagsBits = 0x3A74656772617420;
  v18._object = 0xE900000000000020;
  String.append(_:)(v18);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = String.init<A>(describing:)();
    v21 = v20;
  }

  else
  {
    v21 = 0xE300000000000000;
    v19 = 7104878;
  }

  v22 = v21;
  String.append(_:)(*&v19);
  v21, v23, v24, v25, v26, v27, v28, v29;
  v30._countAndFlagsBits = 10558;
  v30._object = 0xE200000000000000;
  String.append(_:)(v30);
  return 60;
}

uint64_t sub_10047D5E0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return v8;
}

uint64_t sub_10047D610(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_10047D5E0(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t sub_10047D67C()
{
  countAndFlagsBits = v0->_countAndFlagsBits;
  _StringGuts.grow(_:)(31);
  v2._countAndFlagsBits = 60;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_100597C80(v0);
  object = v3._object;
  String.append(_:)(v3);
  object, v5, v6, v7, v8, v9, v10, v11;
  v12._countAndFlagsBits = 0x6669746E65646920;
  v12._object = 0xED0000203A726569;
  String.append(_:)(v12);
  String.append(_:)(v0[1]);
  v13._countAndFlagsBits = 0x3A72656461657220;
  v13._object = 0xE900000000000020;
  String.append(_:)(v13);
  type metadata accessor for RDChannel.Reader(0, *(countAndFlagsBits + 80), v14, v15);
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v16._countAndFlagsBits = 10558;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  return 0;
}

uint64_t sub_10047D800(uint64_t a1)
{
  sub_1000F5104(&qword_1009485C8, qword_1007ABE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  KeyPath = swift_getKeyPath();
  v4 = sub_10004FAEC(a1);
  v5 = sub_1003EE368(KeyPath, v4);

  *(inited + 32) = v5;
  sub_100272424(inited);
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*_swiftEmptyArrayStorage.clientIdentity >= *&_swiftEmptyArrayStorage.clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return sub_10000C2B0();
}

uint64_t sub_10047D908@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 endDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10047D9AC(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_10012F78C(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setEndDate:isa];
}

void *sub_10047DAD8(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v39 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v10 = &v37 - v9;
  v43 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_30:
    v35 = v8;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v35;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_3:
      v37 = v8;
      v12 = 0;
      v41 = a1 & 0xFFFFFFFFFFFFFF8;
      v42 = a1 & 0xC000000000000001;
      v13 = _swiftEmptyDictionarySingleton;
      v38 = xmmword_1007953F0;
      v40 = v11;
      while (1)
      {
        if (v42)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v41 + 16))
          {
            goto LABEL_27;
          }

          v8 = *(a1 + 8 * v12 + 32);
        }

        v16 = v8;
        v17 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v18 = [v8 reminder];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 identifier];

          if (v20)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v21 = 0;
          }

          else
          {
            v21 = 1;
          }

          v23 = type metadata accessor for UUID();
          (*(*(v23 - 8) + 56))(v5, v21, 1, v23);
          sub_100100FB4(v5, v10);
        }

        else
        {
          v22 = type metadata accessor for UUID();
          (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
        }

        v25 = sub_1003645D8(v10);
        v26 = v13[2];
        v27 = (v24 & 1) == 0;
        v8 = (v26 + v27);
        if (__OFADD__(v26, v27))
        {
          goto LABEL_28;
        }

        v28 = v24;
        if (v13[3] < v8)
        {
          sub_10036E3BC(v8, 1);
          v13 = v43;
          v29 = sub_1003645D8(v10);
          if ((v28 & 1) != (v30 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v25 = v29;
        }

        if (v28)
        {
          sub_1001A4F9C(v10);
          v14 = (v13[7] + 8 * v25);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v15 = v40;
          if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v15 = v40;
          }

          v8 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v31 = swift_allocObject();
          *(v31 + 16) = v38;
          *(v31 + 32) = v16;
          v13[(v25 >> 6) + 8] |= 1 << v25;
          v8 = sub_100100FB4(v10, v13[6] + *(v39 + 72) * v25);
          *(v13[7] + 8 * v25) = v31;
          v32 = v13[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_29;
          }

          v13[2] = v34;
          v15 = v40;
        }

        ++v12;
        if (v17 == v15)
        {
          return v13;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

void *sub_10047DEDC(uint64_t a1, void *a2)
{
  v2 = sub_10047D800(a1);
  sub_10047E410();
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setAffectedStores:0];
  v38 = v3;
  [v3 setPredicate:v2];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007ABB40;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = swift_getKeyPath();
  *(inited + 88) = swift_getKeyPath();
  *(inited + 96) = swift_getKeyPath();
  *(inited + 104) = swift_getKeyPath();
  *(inited + 112) = swift_getKeyPath();
  v41 = &_swiftEmptyArrayStorage;
  sub_100010D04(0, 11, 0);
  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  v8 = inited & 0xFFFFFFFFFFFFFF8;
  v9 = &type metadata for String;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v10)
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    v11 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v12)
    {
      goto LABEL_23;
    }

    v13 = v11;
    v14 = v12;
    v40 = &type metadata for String;

    *&v39 = v13;
    *(&v39 + 1) = v14;
    v41 = v7;
    v16 = *v7->clientIdentity;
    v15 = *&v7->clientIdentity[8];
    v3 = (v16 + 1);
    if (v16 >= v15 >> 1)
    {
      sub_100010D04((v15 > 1), v16 + 1, 1);
      v7 = v41;
    }

    ++v6;
    *v7->clientIdentity = v3;
    sub_100005EE0(&v39, &v7->clientIdentity[32 * v16 + 16]);
  }

  while (v6 != 11);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 setPropertiesToFetch:isa];

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1007953F0;
  *(v18 + 32) = swift_getKeyPath();
  v41 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 1, 0);
  v19 = v41;
  if ((v18 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  v20 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v21)
  {
LABEL_23:
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v35._object = 0x80000001007EC120;
    v35._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v35);
    sub_1000F5104(&qword_1009460C0, qword_1007ABDC0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v9 = v20;
  v7 = v21;

  v8 = *v19->clientIdentity;
  v10 = *&v19->clientIdentity[8];
  v3 = (v8 + 1);
  if (v8 >= v10 >> 1)
  {
LABEL_21:
    sub_100026EF4((v10 > 1), v3, 1);
    v19 = v41;
  }

  *v19->clientIdentity = v3;
  v22 = v19 + 16 * v8;
  *(v22 + 4) = v9;
  *(v22 + 5) = v7;
  swift_setDeallocating();
  swift_arrayDestroy();
  v23 = Array._bridgeToObjectiveC()().super.isa;

  [v38 setRelationshipKeyPathsForPrefetching:v23];

  v24 = a2;
  v25 = NSManagedObjectContext.fetch<A>(_:)();
  if (v37)
  {
  }

  else
  {
    v26 = v25;
    v24 = sub_10047DAD8(v25);

    v26, v27, v28, v29, v30, v31, v32, v33;
  }

  return v24;
}

unint64_t sub_10047E410()
{
  result = qword_100940C50;
  if (!qword_100940C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100940C50);
  }

  return result;
}

id sub_10047E4E0()
{
  result = [objc_opt_self() autoCategorization];
  qword_1009485D0 = result;
  return result;
}

void sub_10047E51C()
{
  v0 = [objc_opt_self() sharedConfiguration];
  v1 = [v0 autoCategorizationInputMaximumNumberOfRemindersPerBatch];

  qword_100974E98 = v1;
}

uint64_t sub_10047E578(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_100948700, &unk_1007ABFA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v12[-v9];
  sub_10000F61C(a1, a1[3]);
  sub_10048128C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v12[15] = 0;
  sub_1000F5104(&qword_10093F598, &qword_1007A2640);
  sub_100481534(&qword_100942168, &qword_100942170, &protocol conformance descriptor for REMObjectID_Codable, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10047E764(uint64_t a1)
{
  v2 = sub_10048128C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10047E7A0(uint64_t a1)
{
  v2 = sub_10048128C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10047E7DC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100481324(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t sub_10047E82C(uint64_t a1)
{
  v2[37] = a1;
  v2[38] = v1;
  v2[39] = *v1;
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[44] = v4;
  v2[45] = *(v4 - 8);
  v2[46] = swift_task_alloc();
  v5 = type metadata accessor for OSSignpostID();
  v2[47] = v5;
  v2[48] = *(v5 - 8);
  v2[49] = swift_task_alloc();

  return _swift_task_switch(sub_10047E9D8, 0, 0);
}

uint64_t sub_10047E9D8(uint64_t a1)
{
  v85 = v1;
  static os_signpost_type_t.begin.getter();
  if (qword_100936218 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 384);
  v2 = *(v1 + 392);
  v4 = *(v1 + 376);
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v3 + 8))(v2, v4);
  *(v1 + 400) = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_rdLog;
  swift_retain_n();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = qword_100948000;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = *(v1 + 304);
    v8 = *(v1 + 312);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    *v10 = 136446978;
    *(v1 + 272) = v8;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = v13;
    v15 = sub_10000668C(v12, v13, &v84);
    v14, v16, v17, v18, v19, v20, v21, v22;
    *(v10 + 4) = v15;
    *(v10 + 12) = 2048;
    v23 = *(v9 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_reminderIDs);
    if (v23 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = *(v1 + 304);

    *(v10 + 14) = v24;

    *(v10 + 22) = 2114;
    v26 = *(v25 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_listObjectID);
    *(v10 + 24) = v26;
    *v11 = v26;
    *(v10 + 32) = 2082;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v27 = v26;
    v28 = Array.description.getter();
    v30 = v29;
    v31 = sub_10000668C(v28, v29, &v84);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v10 + 34) = v31;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s: Start execution {remindersCount:%ld listObjectID: %{public}@, reminderIDs: %{public}s}", v10, 0x2Au);
    sub_1000050A4(v11, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v7 = qword_100948000;
  }

  else
  {
  }

  v39 = *(v1 + 328);
  v83 = *(v1 + 344);
  v40 = *(v1 + 296);
  v41 = *(v1 + 304);
  Date.init()();
  v42 = *(v41 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_listObjectID);
  *(v1 + 408) = v42;
  v43 = *(v41 + v7[188]);
  *(v1 + 416) = v43;

  v45 = sub_1001A577C(v44);
  v43, v46, v47, v48, v49, v50, v51, v52;
  v53 = objc_allocWithZone(REMAutoCategorizationActivity);
  *(v1 + 424) = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  sub_10018BA8C();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v45, v55, v56, v57, v58, v59, v60, v61;
  v62 = [v53 initWithListID:v42 reminderIDs:isa];
  *(v1 + 432) = v62;

  v63 = [objc_opt_self() defaultCenter];
  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  *(v1 + 248) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 256) = v65;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_1000060C8(0, &qword_1009486F0, REMAutoCategorizationActivity_ptr);
  *(inited + 72) = v62;
  v66 = v62;
  v67 = sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  v68 = Dictionary._bridgeToObjectiveC()().super.isa;
  v67, v69, v70, v71, v72, v73, v74, v75;
  [v63 postNotificationName:@"RDAutoCategorizationOperationDidBeginNotification" object:v41 userInfo:v68];

  v76 = swift_allocObject();
  *(v1 + 440) = v76;
  *(v76 + 16) = v42;
  *(v76 + 24) = v40;
  *(v1 + 180) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v77 = *(v39 + 104);
  *(v1 + 448) = v77;
  *(v1 + 456) = (v39 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v77(v83);
  v78 = v42;
  v79 = v40;
  v80 = swift_task_alloc();
  *(v1 + 464) = v80;
  *v80 = v1;
  v80[1] = sub_10047EFB8;
  v81 = *(v1 + 344);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1 + 184, v81, sub_10033245C, v76, &_s9UtilitiesO40REMCDListThreadSafePartialRepresentationVN);
}

uint64_t sub_10047EFB8()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 328);
  v5 = *(*v1 + 320);
  v2[59] = v0;

  v6 = *(v4 + 8);
  v2[60] = v6;
  v2[61] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  if (v0)
  {
    v7 = sub_10047F50C;
  }

  else
  {
    v7 = sub_10047F158;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10047F158()
{
  v47 = v0;
  *(v0 + 152) = *(v0 + 216);
  *(v0 + 120) = *(v0 + 184);
  *(v0 + 136) = *(v0 + 200);
  *(v0 + 161) = *(v0 + 225);
  if (*(v0 + 152))
  {
    v1 = *(v0 + 448);
    v2 = *(v0 + 180);
    v3 = *(v0 + 416);
    v4 = *(v0 + 336);
    v5 = *(v0 + 320);
    v6 = *(v0 + 296);
    v7 = swift_allocObject();
    *(v0 + 496) = v7;
    *(v7 + 16) = 100;
    *(v7 + 24) = 0;
    *(v7 + 32) = v3;
    *(v7 + 40) = v6;
    v1(v4, v2, v5);

    v8 = v6;
    v9 = swift_task_alloc();
    *(v0 + 504) = v9;
    v10 = sub_1000F5104(&qword_1009420F0, &qword_1007A24F0);
    *(v0 + 512) = v10;
    *v9 = v0;
    v9[1] = sub_10047F5E0;
    v11 = *(v0 + 336);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 280, v11, sub_1003324CC, v7, v10);
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 408);
      v15 = *(v0 + 312);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v46[0] = swift_slowAlloc();
      v46[1] = v15;
      *v16 = 136446722;
      swift_getMetatypeMetadata();
      v18 = String.init<A>(describing:)();
      v20 = v19;
      v21 = sub_10000668C(v18, v19, v46);
      v20, v22, v23, v24, v25, v26, v27, v28;
      *(v16 + 4) = v21;
      *(v16 + 12) = 2114;
      *(v16 + 14) = v14;
      *v17 = v14;
      *(v16 + 22) = 2082;
      v29 = v14;
      v30 = Array.description.getter();
      v32 = v31;
      v33 = sub_10000668C(v30, v31, v46);
      v32, v34, v35, v36, v37, v38, v39, v40;
      *(v16 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: Skipped auto-categorizing reminders because list should no longer categorize auto-categorization items {listObjectID: %{public}@, reminderIDs: %{public}s}", v16, 0x20u);
      sub_1000050A4(v17, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    sub_100332478(v0 + 120);
    sub_100480404(*(v0 + 304), *(v0 + 368), *(v0 + 432), *(v0 + 312));
    v42 = *(v0 + 360);
    v41 = *(v0 + 368);
    v43 = *(v0 + 352);

    (*(v42 + 8))(v41, v43);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_10047F50C()
{
  sub_100480404(*(v0 + 304), *(v0 + 368), *(v0 + 432), *(v0 + 312));
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10047F5E0()
{
  v2 = *(*v1 + 480);
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 320);
  *(*v1 + 520) = v0;

  v2(v3, v4);

  if (v0)
  {
    v5 = sub_10047FC60;
  }

  else
  {
    v5 = sub_10047F77C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10047F77C()
{
  v62 = v0;
  v4 = *(v0 + 280);
  *(v0 + 288) = v4;
  if (qword_100936220 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v5 = *(v0 + 512);
    sub_100481218();
    v6 = BidirectionalCollection<>.slices(by:)();
    *(v0 + 528) = v6;
    v4, v7, v8, v9, v10, v11, v12, v13;
    v21 = *(v6 + 16);
    *(v0 + 536) = v21;
    if (!v21)
    {
      break;
    }

    v22 = *(v0 + 304);
    v23 = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_isListCategorization;
    *(v0 + 544) = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_queuedAt;
    *(v0 + 177) = *(v22 + v23);
    *(v0 + 560) = 1;
    *(v0 + 552) = 0;
    v24 = *(v0 + 528);
    if (!v24[2])
    {
      __break(1u);
      goto LABEL_36;
    }

    *(v0 + 568) = v24[4];
    v1 = v24[6];
    v25 = v24[7];
    if (v25)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v36 = swift_dynamicCastClass();
      if (!v36)
      {
        swift_unknownObjectRelease();
        v36 = &_swiftEmptyArrayStorage;
      }

      v37 = *v36->clientIdentity;

      v2 = v25 >> 1;
      v38 = __OFSUB__(v25 >> 1, v1);
      v5 = (v25 >> 1) - v1;
      v3 = v38;
      if (!v38)
      {
        if (v37 == v5)
        {
          v4 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v4)
          {
LABEL_24:
            v4 = &_swiftEmptyArrayStorage;
LABEL_25:
            swift_unknownObjectRelease();
          }

          *(v0 + 576) = v4;
          swift_retain_n();
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = *(v0 + 312);
            v42 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v61 = v43;
            *v42 = 136446722;
            *(v0 + 264) = v41;
            swift_getMetatypeMetadata();
            v44 = String.init<A>(describing:)();
            v46 = v45;
            v47 = sub_10000668C(v44, v45, &v61);
            v46, v48, v49, v50, v51, v52, v53, v54;
            *(v42 + 4) = v47;
            *(v42 + 12) = 2048;
            *(v42 + 14) = 1;
            *(v42 + 22) = 2048;
            v55 = *v4->clientIdentity;

            *(v42 + 24) = v55;

            _os_log_impl(&_mh_execute_header, v39, v40, "%{public}s: Batch number: %ld for remindersCount:%ld", v42, 0x20u);
            sub_10000607C(v43);
          }

          else
          {
          }

          v56 = *(v0 + 544);
          v57 = *(v0 + 304);
          v58 = swift_task_alloc();
          *(v0 + 584) = v58;
          *v58 = v0;
          v58[1] = sub_10047FD4C;
          v59 = *(v0 + 177);
          v60 = *(v0 + 296);

          return sub_100323524(v4, v0 + 120, v59, v57 + v56, v60);
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      result = swift_unknownObjectRelease();
      if (v3)
      {
        goto LABEL_38;
      }

      goto LABEL_9;
    }

    v2 = v25 >> 1;
    v38 = __OFSUB__(v25 >> 1, v1);
    v5 = (v25 >> 1) - v1;
    v3 = v38;
    result = swift_unknownObjectRetain_n();
    if (v3)
    {
LABEL_38:
      __break(1u);
      return result;
    }

LABEL_9:
    if (!v5)
    {
      goto LABEL_24;
    }

    if (v5 < 1)
    {
      v4 = &_swiftEmptyArrayStorage;
      if (v1 != v2)
      {
LABEL_12:
        swift_arrayInitWithCopy();
        goto LABEL_25;
      }
    }

    else
    {
      sub_1000F5104(&qword_100942F60, &qword_1007A39F0);
      v4 = swift_allocObject();
      v27 = j__malloc_size(v4);
      *v4->clientIdentity = v5;
      *&v4->clientIdentity[8] = 2 * ((v27 - 32) / 24);
      if (v1 != v2)
      {
        goto LABEL_12;
      }
    }

    swift_unknownObjectRelease();
    __break(1u);
LABEL_34:
    swift_once();
  }

  v28 = *(v0 + 432);
  v29 = *(v0 + 368);
  v31 = *(v0 + 304);
  v30 = *(v0 + 312);
  *(v0 + 528), v14, v15, v16, v17, v18, v19, v20;
  sub_100332478(v0 + 120);
  sub_100480404(v31, v29, v28, v30);
  v33 = *(v0 + 360);
  v32 = *(v0 + 368);
  v34 = *(v0 + 352);

  (*(v33 + 8))(v32, v34);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_10047FC60()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 368);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  sub_100332478(v0 + 120);
  sub_100480404(v4, v2, v1, v3);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v7 = *(v0 + 352);

  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10047FD4C()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    *(v2 + 528), v3, v4, v5, v6, v7, v8, v9;

    v10 = sub_10048030C;
  }

  else
  {

    v10 = sub_10047FE94;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10047FE94()
{
  v56 = v0;
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 536);
  swift_unknownObjectRelease();
  if (v5 + 1 == v6)
  {
    v14 = *(v0 + 432);
    v15 = *(v0 + 368);
    v17 = *(v0 + 304);
    v16 = *(v0 + 312);
    *(v0 + 528), v7, v8, v9, v10, v11, v12, v13;
    sub_100332478(v0 + 120);
    sub_100480404(v17, v15, v14, v16);
    v19 = *(v0 + 360);
    v18 = *(v0 + 368);
    v20 = *(v0 + 352);

    (*(v19 + 8))(v18, v20);

    v21 = *(v0 + 8);

    return v21();
  }

  v23 = v4 + 1;
  v24 = *(v0 + 552) + 1;
  *(v0 + 560) = v4 + 1;
  *(v0 + 552) = v24;
  v25 = *(v0 + 528);
  if (v24 >= *(v25 + 16))
  {
    goto LABEL_33;
  }

  v26 = (v25 + 32 * v24);
  *(v0 + 568) = v26[4];
  v1 = v26[6];
  v27 = v26[7];
  if ((v27 & 1) == 0)
  {
    v2 = v27 >> 1;
    v32 = __OFSUB__(v27 >> 1, v1);
    v6 = (v27 >> 1) - v1;
    v3 = v32;
    result = swift_unknownObjectRetain_n();
    if (v3)
    {
LABEL_36:
      __break(1u);
      return result;
    }

    while (v6)
    {
      if (v6 < 1)
      {
        v28 = &_swiftEmptyArrayStorage;
        if (v1 != v2)
        {
LABEL_14:
          swift_arrayInitWithCopy();
          goto LABEL_24;
        }
      }

      else
      {
        sub_1000F5104(&qword_100942F60, &qword_1007A39F0);
        v28 = swift_allocObject();
        v29 = j__malloc_size(v28);
        *v28->clientIdentity = v6;
        *&v28->clientIdentity[8] = 2 * ((v29 - 32) / 24);
        if (v1 != v2)
        {
          goto LABEL_14;
        }
      }

      swift_unknownObjectRelease();
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = swift_unknownObjectRelease();
      if (v3)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_23;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v30 = swift_dynamicCastClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    v30 = &_swiftEmptyArrayStorage;
  }

  v31 = *v30->clientIdentity;

  v2 = v27 >> 1;
  v32 = __OFSUB__(v27 >> 1, v1);
  v6 = (v27 >> 1) - v1;
  v3 = v32;
  if (v32)
  {
    goto LABEL_34;
  }

  if (v31 != v6)
  {
    goto LABEL_35;
  }

  v28 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v28)
  {
LABEL_23:
    v28 = &_swiftEmptyArrayStorage;
LABEL_24:
    swift_unknownObjectRelease();
  }

  *(v0 + 576) = v28;
  swift_retain_n();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = *(v0 + 312);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v55 = v37;
    *v36 = 136446722;
    *(v0 + 264) = v35;
    swift_getMetatypeMetadata();
    v38 = String.init<A>(describing:)();
    v40 = v39;
    v41 = sub_10000668C(v38, v39, &v55);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v36 + 4) = v41;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v23;
    *(v36 + 22) = 2048;
    v49 = *v28->clientIdentity;

    *(v36 + 24) = v49;

    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Batch number: %ld for remindersCount:%ld", v36, 0x20u);
    sub_10000607C(v37);
  }

  else
  {
  }

  v50 = *(v0 + 544);
  v51 = *(v0 + 304);
  v52 = swift_task_alloc();
  *(v0 + 584) = v52;
  *v52 = v0;
  v52[1] = sub_10047FD4C;
  v53 = *(v0 + 177);
  v54 = *(v0 + 296);

  return sub_100323524(v28, v0 + 120, v53, v51 + v50, v54);
}

uint64_t sub_10048030C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 368);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  sub_100332478(v0 + 120);
  swift_unknownObjectRelease();
  sub_100480404(v4, v2, v1, v3);
  v6 = *(v0 + 360);
  v5 = *(v0 + 368);
  v7 = *(v0 + 352);

  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100480404(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v67 = a3;
  v7 = type metadata accessor for OSSignpostID();
  v69 = *(v7 - 8);
  __chkstk_darwin(v7, v8);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, a2, v10, v13);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v66 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v63 = v20;
    v65 = swift_slowAlloc();
    v70 = v65;
    v71 = a4;
    *v19 = 136446978;
    swift_getMetatypeMetadata();
    v21 = String.init<A>(describing:)();
    v64 = v17;
    v23 = v22;
    v24 = sub_10000668C(v21, v22, &v70);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v19 + 4) = v24;
    *(v19 + 12) = 2114;
    v32 = *(a1 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_listObjectID);
    *(v19 + 14) = v32;
    *v20 = v32;
    *(v19 + 22) = 2082;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v33 = v32;
    v34 = Array.description.getter();
    v36 = v35;
    v37 = sub_10000668C(v34, v35, &v70);
    v36, v38, v39, v40, v41, v42, v43, v44;
    *(v19 + 24) = v37;
    *(v19 + 32) = 2050;
    Date.rem_elapsedInMilliseconds.getter();
    v46 = v45;
    (*(v11 + 8))(v15, v10);
    *(v19 + 34) = v46;
    _os_log_impl(&_mh_execute_header, v16, v64, "%{public}s: Finished execution {listObjectID: %{public}@, reminderIDs: %{public}s, elapsedSeconds: %{public}f}", v19, 0x2Au);
    sub_1000050A4(v63, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v7 = v66;
  }

  else
  {

    (*(v11 + 8))(v15, v10);
  }

  v47 = [objc_opt_self() defaultCenter];
  sub_1000F5104(&unk_100939DA0, &unk_1007A35B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100791300;
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v49;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = sub_1000060C8(0, &qword_1009486F0, REMAutoCategorizationActivity_ptr);
  v50 = v67;
  *(inited + 72) = v67;
  v51 = v50;
  v52 = sub_10038ED74(inited);
  swift_setDeallocating();
  sub_1000050A4(inited + 32, &unk_100946590, &qword_100796FF0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v52, v54, v55, v56, v57, v58, v59, v60;
  [v47 postNotificationName:@"RDStoreControllerManagedObjectContextNotificationTransactionAuthorKey" object:a1 userInfo:isa];

  static os_signpost_type_t.end.getter();
  if (qword_100936218 != -1)
  {
    swift_once();
  }

  v61 = v68;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v69 + 8))(v61, v7);
}

uint64_t sub_100480978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_100480A3C, 0, 0);
}

uint64_t sub_100480A3C()
{
  v1 = v0[3];
  if (*(v1 + 24))
  {
    v38 = *(v1 + 16);
    v2 = *(v1 + 24);
  }

  else
  {
    v3 = _REMGetLocalizedString();
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v4;
  }

  v0[9] = v2;
  v5 = v0[4];
  v6 = *(v5 + 16);
  v37 = v2;
  if (v6)
  {
    v7 = v0[7];
    v8 = (v0[8] + *(v0[6] + 24));
    v9 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);

    v11 = &_swiftEmptyArrayStorage;
    do
    {
      v13 = v0[8];
      sub_100193AB0(v9, v13);
      v14 = *v8;
      v15 = v8[1];

      sub_10033529C(v13);
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_100365788(0, *v11->clientIdentity + 1, 1, v11, v16, v17, v18, v19);
        }

        v21 = *v11->clientIdentity;
        v20 = *&v11->clientIdentity[8];
        if (v21 >= v20 >> 1)
        {
          v11 = sub_100365788((v20 > 1), v21 + 1, 1, v11, v16, v17, v18, v19);
        }

        *v11->clientIdentity = v21 + 1;
        v12 = v11 + 16 * v21;
        *(v12 + 4) = v14;
        *(v12 + 5) = v15;
      }

      v9 += v10;
      --v6;
    }

    while (v6);
  }

  else
  {

    v11 = &_swiftEmptyArrayStorage;
  }

  v22 = v0[5];
  v23 = sub_1001A5660(v11);
  v0[10] = v23;
  v11, v24, v25, v26, v27, v28, v29, v30;
  v31 = *(v22 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_autoCategorizerType + 24);
  v32 = *(v22 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_autoCategorizerType + 32);
  sub_10000F61C((v22 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_autoCategorizerType), v31);
  v36 = (*(v32 + 8) + **(v32 + 8));
  v33 = swift_task_alloc();
  v0[11] = v33;
  *v33 = v0;
  v33[1] = sub_100480CE4;
  v34 = v0[2];

  return v36(v38, v37, v34, v23, v31, v32);
}

uint64_t sub_100480CE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = sub_100480E94;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_100480E0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100480E0C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 104);
  v10 = *(v8 + 72);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  v10, v11, v12, v13, v14, v15, v16, v17;

  v18 = *(v8 + 8);

  return v18(v9);
}

uint64_t sub_100480E94(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 72);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;

  v17 = *(v8 + 8);

  return v17();
}

uint64_t sub_100480F0C()
{
  v1 = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_rdLog;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  *(v0 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_reminderIDs), v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_queuedAt;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  sub_10000607C((v0 + OBJC_IVAR____TtC7remindd54RDAutoCategorizationOperationCategorizeRemindersInList_autoCategorizerType));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RDAutoCategorizationOperationCategorizeRemindersInList(uint64_t a1)
{
  result = qword_100948630;
  if (!qword_100948630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10048107C(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100481180(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FCBFC;

  return sub_10047E82C(a1);
}

unint64_t sub_100481218()
{
  result = qword_1009486F8;
  if (!qword_1009486F8)
  {
    sub_1000F514C(&qword_1009420F0, &qword_1007A24F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009486F8);
  }

  return result;
}

unint64_t sub_10048128C()
{
  result = qword_100948708;
  if (!qword_100948708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948708);
  }

  return result;
}

uint64_t sub_1004812E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMObjectID_Codable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100481324(void *a1)
{
  v3 = sub_1000F5104(&qword_100948710, &qword_1007ABFB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000F61C(a1, v8);
  sub_10048128C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000F5104(&qword_10093F598, &qword_1007A2640);
    v10[7] = 0;
    sub_100481534(&qword_100942180, &qword_100942188, &protocol conformance descriptor for REMObjectID_Codable, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000607C(a1);
  return v8;
}

uint64_t sub_100481534(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000F514C(&qword_10093F598, &qword_1007A2640);
    sub_1004812E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004815D0()
{
  result = qword_100948718;
  if (!qword_100948718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948718);
  }

  return result;
}

unint64_t sub_100481628()
{
  result = qword_100948720;
  if (!qword_100948720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948720);
  }

  return result;
}

unint64_t sub_100481680()
{
  result = qword_100948728;
  if (!qword_100948728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100948728);
  }

  return result;
}

uint64_t sub_1004816D4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948730);
  v1 = sub_100006654(v0, qword_100948730);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Class sub_10048179C(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v131 = a1;
  v3 = _s10PredicatesOMa(0);
  __chkstk_darwin(v3, v4);
  v6 = v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
  *v6 = [v1 listID];
  v6[8] = [v1 includingSubtasks];
  v8 = [v1 includingCompleted];
  v9 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v10 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  if (!v8)
  {
    v10 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
  }

  (*(*(v9 - 8) + 104))(&v6[v7], *v10, v9);
  swift_storeEnumTagMultiPayload();
  v11 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v128[1] = qword_100974E30;
    v12 = sub_100043AA8();
    v13 = [objc_allocWithZone(NSFetchRequest) init];
    v128[2] = v11;
    v14 = [swift_getObjCClassFromMetadata() entity];
    [v13 setEntity:v14];

    [v13 setAffectedStores:0];
    [v13 setPredicate:v12];

    [v13 setFetchLimit:0];
    v129 = v13;
    [v13 setFetchOffset:0];
    v15 = &_swiftEmptyArrayStorage;
    v135 = &_swiftEmptyArrayStorage;
    v16 = sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v138 = sub_1003EBAD0();
    sub_100271EA8(&_swiftEmptyArrayStorage);
    v18 = sub_100235FA0(Predicate);
    Predicate, v19, v20, v21, v22, v23, v24, v25;
    v26 = sub_100277CC0(v18);
    v18, v27, v28, v29, v30, v31, v32, v33;

    v11 = *v26->clientIdentity;
    v128[0] = v6;
    if (!v11)
    {
      goto LABEL_23;
    }

LABEL_7:
    v137 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
LABEL_43:
      swift_once();
      goto LABEL_27;
    }

    v34 = 0;
    v15 = v137;
    v132 = v11;
    v133 = v26 & 0xC000000000000001;
    while (1)
    {
      v6 = (v34 + 1);
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v133)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v34 >= *v26->clientIdentity)
        {
          goto LABEL_20;
        }

        v35 = *&v26->clientIdentity[8 * v34 + 16];
      }

      v36 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v37)
      {
        goto LABEL_46;
      }

      v2 = v36;
      v11 = v37;

      v137 = v15;
      v39 = *v15->clientIdentity;
      v38 = *&v15->clientIdentity[8];
      if (v39 >= v38 >> 1)
      {
        sub_100026EF4((v38 > 1), v39 + 1, 1);
        v15 = v137;
      }

      *v15->clientIdentity = v39 + 1;
      v40 = v15 + 16 * v39;
      *(v40 + 4) = v2;
      *(v40 + 5) = v11;
      ++v34;
      if (v6 == v132)
      {

        v6 = v128[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  v128[0] = v6;
  if (v11)
  {
    goto LABEL_7;
  }

LABEL_23:

LABEL_24:
  sub_100271EA8(v15);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v41 = v138;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v41, v43, v44, v45, v46, v47, v48, v49;
  v50 = v129;
  [v129 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v51.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v50 setSortDescriptors:v51.super.isa];

  v52 = v130;
  v53 = NSManagedObjectContext.fetch<A>(_:)();
  v2 = v52;
  if (v52)
  {
    sub_10048AA6C(v6, _s10PredicatesOMa);

    return v51.super.isa;
  }

  v54 = v53;
  v16 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v53);
  v54, v55, v56, v57, v58, v59, v60, v61;

  if (qword_100936228 != -1)
  {
    goto LABEL_43;
  }

LABEL_27:
  v62 = type metadata accessor for Logger();
  v63 = sub_100006654(v62, qword_100948730);
  v35 = v128;
  v135 = v16;
  __chkstk_darwin(v63, v64);
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  v65 = sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  v133 = v65;
  v66 = Sequence.map<A>(skippingError:_:)();
  if (v2)
  {

    v67 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v67 = v66;
  }

  if (v67 >> 62)
  {
    v68 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = &_swiftEmptyArrayStorage;
  if (!v68)
  {
LABEL_40:
    v74 = [objc_opt_self() defaultFetchOptions];
    v81 = sub_1003EBF14(v16, v74, v131, v75, v76, v77, v78, v79);
    v83 = v82;
    v85 = v84;

    v16, v86, v87, v88, v89, v90, v91, v92;
    v135 = v85;
    sub_1002722C4(v67);
    v93 = v135;
    v94 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v95 = Array._bridgeToObjectiveC()().super.isa;
    v81, v96, v97, v98, v99, v100, v101, v102;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v103 = Array._bridgeToObjectiveC()().super.isa;
    v83, v104, v105, v106, v107, v108, v109, v110;
    v111 = Array._bridgeToObjectiveC()().super.isa;
    v93, v112, v113, v114, v115, v116, v117, v118;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v119 = Array._bridgeToObjectiveC()().super.isa;
    v69, v120, v121, v122, v123, v124, v125, v126;
    v51.super.isa = [v94 initWithAccountStorages:v95 listStorages:v103 reminderStorages:v111 objectIDs:v119];

    sub_10048AA6C(v128[0], _s10PredicatesOMa);
    return v51.super.isa;
  }

  v132 = v16;
  v135 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v68 & 0x8000000000000000) == 0)
  {
    v70 = 0;
    do
    {
      if ((v67 & 0xC000000000000001) != 0)
      {
        v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v71 = *(v67 + 8 * v70 + 32);
      }

      v72 = v71;
      ++v70;
      v73 = [v71 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v68 != v70);
    v69 = v135;
    v16 = v132;
    goto LABEL_40;
  }

  __break(1u);
LABEL_46:
  v135 = 0;
  v136 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v127._object = 0x80000001007EC120;
  v127._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v127);
  v134 = v35;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Class sub_100482168(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = _s10PredicatesOMa(0);
  *&v5 = __chkstk_darwin(v3, v4).n128_u64[0];
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 subtaskFetchOption];
  if (v8 == 1)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_1000F5104(&qword_100946068, &unk_1007A7650) + 64);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v12 = swift_allocObject();
  v94 = xmmword_1007953F0;
  *(v12 + 16) = xmmword_1007953F0;
  *(v12 + 32) = [v1 parentReminderID];
  *v7 = v12;
  *(v7 + v11) = v10;
  _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v87 = v1;
  v13 = [v1 accountID];
  v14 = [(RDXPCStorePerformer *)a1 persistentStoreOfAccountWithAccountID:v13];

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v94;
    *(v15 + 32) = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v88 = qword_100974E30;
    v17 = sub_100043AA8();
    v18 = [objc_allocWithZone(NSFetchRequest) init];
    v19 = [swift_getObjCClassFromMetadata() entity];
    [v18 setEntity:v19];

    if (v15)
    {
      sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v20.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v20.super.isa = 0;
    }

    [v18 setAffectedStores:{v20.super.isa, v86}];

    [v18 setPredicate:v17];
    v15, v21, v22, v23, v24, v25, v26, v27;
    [v18 setFetchLimit:0];
    v89 = v18;
    [v18 setFetchOffset:0];
    v96 = &_swiftEmptyArrayStorage;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v99 = sub_1003EBAD0();
    sub_100271EA8(&_swiftEmptyArrayStorage);
    v29 = sub_100235FA0(Predicate);
    Predicate, v30, v31, v32, v33, v34, v35, v36;
    v15 = sub_100277CC0(v29);
    v29, v37, v38, v39, v40, v41, v42, v43;

    v44 = *(v15 + 16);
    v91 = a1;
    v92 = v7;
    if (!v44)
    {
      goto LABEL_33;
    }

LABEL_17:
    v98 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v44 & ~(v44 >> 63), 0);
    if (v44 < 0)
    {
      __break(1u);
LABEL_39:
      v96 = 0;
      v97 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v85._object = 0x80000001007EC120;
      v85._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v85);
      v95 = v11;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v86 = v16;
    v45 = 0;
    a1 = v98;
    v93 = v44;
    *&v94 = v15 & 0xC000000000000001;
    while (1)
    {
      v16 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v94)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v45 >= *(v15 + 16))
        {
          goto LABEL_30;
        }

        v11 = *(v15 + 8 * v45 + 32);
      }

      v46 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v47)
      {
        goto LABEL_39;
      }

      v48 = v46;
      v49 = v47;

      v98 = a1;
      v7 = *a1->clientIdentity;
      v50 = *&a1->clientIdentity[8];
      v11 = v7 + 1;
      if (v7 >= v50 >> 1)
      {
        sub_100026EF4((v50 > 1), v7 + 1, 1);
        a1 = v98;
      }

      *a1->clientIdentity = v11;
      v51 = &a1->super.isa + 2 * v7;
      v51[4] = v48;
      v51[5] = v49;
      ++v45;
      if (v16 == v93)
      {

        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v44 = _CocoaArrayWrapper.endIndex.getter();
  v91 = a1;
  v92 = v7;
  if (v44)
  {
    goto LABEL_17;
  }

LABEL_33:

  a1 = &_swiftEmptyArrayStorage;
LABEL_34:
  sub_100271EA8(a1);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v52 = v99;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v52, v54, v55, v56, v57, v58, v59, v60;
  v61 = v89;
  [v89 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v62.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v61 setSortDescriptors:v62.super.isa];

  v64 = v90;
  v63 = v91;
  v65 = NSManagedObjectContext.fetch<A>(_:)();
  if (v64)
  {
    sub_10048AA6C(v92, _s10PredicatesOMa);
  }

  else
  {
    v66 = v65;
    v67 = v61;
    v68 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v65);
    v66, v69, v70, v71, v72, v73, v74, v75;

    v76 = [v87 reminderFetchOptions];
    v62.super.isa = sub_10048A0EC(v68, v76, v63);
    sub_10048AA6C(v92, _s10PredicatesOMa);
    v68, v77, v78, v79, v80, v81, v82, v83;
  }

  return v62.super.isa;
}

Class sub_1004828A8(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = v2;
  v5 = _s10PredicatesOMa(0);
  __chkstk_darwin(v5, v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(sub_1000F5104(&qword_100946068, &unk_1007A7650) + 64);
  v10 = [v1 parentReminderIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *v8 = v11;
  _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v8 + v9) = 2;
  swift_storeEnumTagMultiPayload();
  v12 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v74 = qword_100974E30;
    v13 = sub_100043AA8();
    v14 = [objc_allocWithZone(NSFetchRequest) init];
    v76 = v12;
    v15 = [swift_getObjCClassFromMetadata() entity];
    [v14 setEntity:v15];

    [v14 setAffectedStores:0];
    [v14 setPredicate:v13];

    [v14 setFetchLimit:0];
    v75 = v14;
    [v14 setFetchOffset:0];
    v80 = &_swiftEmptyArrayStorage;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v83 = sub_1003EBAD0();
    sub_100271EA8(&_swiftEmptyArrayStorage);
    v17 = sub_100235FA0(Predicate);
    Predicate, v18, v19, v20, v21, v22, v23, v24;
    v25 = sub_100277CC0(v17);
    v17, v26, v27, v28, v29, v30, v31, v32;

    v12 = *v25->clientIdentity;
    if (!v12)
    {
      goto LABEL_21;
    }

LABEL_5:
    v82 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
LABEL_27:
      v80 = 0;
      v81 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v70._object = 0x80000001007EC120;
      v70._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v70);
      v79 = a1;
      sub_1000F5104(&unk_100939F10, &qword_100797F30);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v71 = v3;
    v72 = a1;
    v73 = v8;
    v33 = 0;
    v34 = v82;
    v77 = v12;
    v78 = v25 & 0xC000000000000001;
    while (1)
    {
      v3 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v78)
      {
        a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *v25->clientIdentity)
        {
          goto LABEL_18;
        }

        a1 = *&v25->clientIdentity[8 * v33 + 16];
      }

      v35 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v36)
      {
        goto LABEL_27;
      }

      v37 = v35;
      v12 = v36;

      v82 = v34;
      v8 = *v34->clientIdentity;
      v38 = *&v34->clientIdentity[8];
      a1 = (v8 + 1);
      if (v8 >= v38 >> 1)
      {
        sub_100026EF4((v38 > 1), v8 + 1, 1);
        v34 = v82;
      }

      *v34->clientIdentity = a1;
      v39 = v34 + 16 * v8;
      *(v39 + 4) = v37;
      *(v39 + 5) = v12;
      ++v33;
      if (v3 == v77)
      {

        a1 = v72;
        v8 = v73;
        v3 = v71;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (v12)
  {
    goto LABEL_5;
  }

LABEL_21:

  v34 = &_swiftEmptyArrayStorage;
LABEL_22:
  sub_100271EA8(v34);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v40 = v83;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v40, v42, v43, v44, v45, v46, v47, v48;
  v49 = v75;
  [v75 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v50.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v49 setSortDescriptors:v50.super.isa];

  v51 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {

    sub_10048AA6C(v8, _s10PredicatesOMa);
  }

  else
  {
    v52 = v51;
    v53 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v51);
    v52, v54, v55, v56, v57, v58, v59, v60;

    v61 = [objc_opt_self() defaultFetchOptions];
    v50.super.isa = sub_10048A0EC(v53, v61, a1);
    sub_10048AA6C(v8, _s10PredicatesOMa);
    v53, v62, v63, v64, v65, v66, v67, v68;
  }

  return v50.super.isa;
}

id sub_100482F14()
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v89 - v4;
  v104 = type metadata accessor for UUID();
  v6 = *(v104 - 8);
  __chkstk_darwin(v104, v7);
  v99 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s10PredicatesOMa(0);
  __chkstk_darwin(v9, v10);
  v94 = (&v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = _s10PredicatesO19CompletionPredicateOMa(0);
  *&v14 = __chkstk_darwin(v12, v13).n128_u64[0];
  v98 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v0 includeIncomplete];
  v17 = [v0 includeCompleted];
  if (v16)
  {
    v92 = v6;
    v95 = v1;
  }

  else
  {
    if ((v17 & 1) == 0)
    {
      v70 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
      sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      v72 = Array._bridgeToObjectiveC()().super.isa;
      sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
      v73 = Array._bridgeToObjectiveC()().super.isa;
      sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
      v74 = Array._bridgeToObjectiveC()().super.isa;
      v35 = [v70 initWithAccountStorages:isa listStorages:v72 reminderStorages:v73 objectIDs:v74];

      return v35;
    }

    v92 = v6;
    v95 = v1;
  }

  v18 = v98;
  swift_storeEnumTagMultiPayload();
  v19 = sub_1000F5104(&qword_100946068, &unk_1007A7650);
  v20 = *(v19 + 48);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007953F0;
  *(v21 + 32) = [v0 parentReminderID];
  v22 = v94;
  *v94 = v21;
  v23 = v22;
  sub_10048AA08(v18, v22 + v20);
  if ([v0 isUnsupported])
  {
    v24 = 6;
  }

  else
  {
    v24 = 2;
  }

  *(v23 + *(v19 + 64)) = v24;
  swift_storeEnumTagMultiPayload();
  v97 = objc_opt_self();
  v25 = [v97 cdEntityName];
  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
    v25 = String._bridgeToObjectiveC()();
    v27, v28, v29, v30, v31, v32, v33, v34;
  }

  v35 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v25];

  [v35 setResultType:2];
  v36 = sub_100043AA8();
  [v35 setPredicate:v36];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100791300;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 32) = 0x696669746E656469;
  *(v37 + 40) = 0xEA00000000007265;
  v38 = Array._bridgeToObjectiveC()().super.isa;
  v37, v39, v40, v41, v42, v43, v44, v45;
  [v35 setPropertiesToFetch:v38];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v46 = v95;
  v47 = NSManagedObjectContext.fetch<A>(_:)();
  v55 = v46;
  if (!v46)
  {
    v56 = v47;
    v108 = &_swiftEmptyArrayStorage;
    if (v47 >> 62)
    {
LABEL_43:
      v96 = v56 & 0xFFFFFFFFFFFFFF8;
      v57 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v96 = v47 & 0xFFFFFFFFFFFFFF8;
      v57 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v90 = v35;
    v95 = v55;
    if (!v57)
    {
      v91 = &_swiftEmptyArrayStorage;
      goto LABEL_39;
    }

    v35 = 0;
    v103 = v56 & 0xC000000000000001;
    v100 = (v92 + 6);
    v101 = (v92 + 7);
    v93 = (v92 + 4);
    v91 = &_swiftEmptyArrayStorage;
    ++v92;
    v55 = v96;
    v102 = v56;
    while (1)
    {
      v23 = v35;
      while (1)
      {
        if (v103)
        {
          v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *(v55 + 16))
          {
            goto LABEL_42;
          }

          v58 = *(v56 + 8 * v23 + 32);
        }

        v59 = v58;
        v35 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        *&v105 = 0x696669746E656469;
        *(&v105 + 1) = 0xEA00000000007265;
        v60 = [v58 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v60)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v105 = 0u;
          v106 = 0u;
        }

        v107[0] = v105;
        v107[1] = v106;
        if (*(&v106 + 1))
        {
          break;
        }

        sub_1000050A4(v107, &qword_100939ED0, &qword_100791B10);
        (*v101)(v5, 1, 1, v104);
LABEL_18:
        sub_1000050A4(v5, &unk_100939D90, "8\n\r");

LABEL_19:
        ++v23;
        v56 = v102;
        if (v35 == v57)
        {
          v23 = v94;
          goto LABEL_39;
        }
      }

      v61 = v104;
      v62 = swift_dynamicCast();
      (*v101)(v5, v62 ^ 1u, 1, v61);
      if ((*v100)(v5, 1, v61) == 1)
      {
        goto LABEL_18;
      }

      v63 = v99;
      v64 = v5;
      v65 = v5;
      v66 = v104;
      (*v93)(v99, v64, v104);
      v67 = UUID._bridgeToObjectiveC()().super.isa;
      v68 = [v97 objectIDWithUUID:v67];

      v69 = v66;
      v5 = v65;
      v55 = v96;
      (*v92)(v63, v69);

      if (!v68)
      {
        goto LABEL_19;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v91 = v108;
      v23 = v94;
      v56 = v102;
      if (v35 == v57)
      {
LABEL_39:
        v56, v48, v49, v50, v51, v52, v53, v54;
        v75 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
        sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
        v76 = Array._bridgeToObjectiveC()().super.isa;
        sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
        v77 = Array._bridgeToObjectiveC()().super.isa;
        sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
        v78 = Array._bridgeToObjectiveC()().super.isa;
        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v79 = v91;
        v80 = Array._bridgeToObjectiveC()().super.isa;
        v79, v81, v82, v83, v84, v85, v86, v87;
        v35 = [v75 initWithAccountStorages:v76 listStorages:v77 reminderStorages:v78 objectIDs:v80];

        sub_10048AA6C(v23, _s10PredicatesOMa);
        sub_10048AA6C(v98, _s10PredicatesO19CompletionPredicateOMa);
        return v35;
      }
    }
  }

  sub_10048AA6C(v23, _s10PredicatesOMa);
  sub_10048AA6C(v98, _s10PredicatesO19CompletionPredicateOMa);
  return v35;
}

uint64_t sub_10048394C(uint64_t a1)
{
  v7 = v2;
  v429 = a1;
  v8 = type metadata accessor for RDPublicTemplate(0);
  __chkstk_darwin(v8 - 8, v9);
  v11 = &v421 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v12 - 8, v13);
  v425 = &v421 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v426 = v15;
  v427 = v16;
  __chkstk_darwin(v15, v17);
  v423 = (&v421 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19, v20);
  v424 = &v421 - v21;
  v22 = _s10PredicatesOMa(0);
  *&v24 = __chkstk_darwin(v22, v23).n128_u64[0];
  v430 = (&v421 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v432 = v1;
  v26 = [v1 objectIDs];
  v431 = sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v27 >> 62))
  {
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_82:
    v27, v28, v29, v30, v31, v32, v33, v34;
    v343 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v345 = Array._bridgeToObjectiveC()().super.isa;
    sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
    v346 = Array._bridgeToObjectiveC()().super.isa;
    v347 = Array._bridgeToObjectiveC()().super.isa;
    v27 = [v343 initWithAccountStorages:isa listStorages:v345 reminderStorages:v346 objectIDs:v347];

    return v27;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_82;
  }

LABEL_3:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_86:
      v348 = [v5 objectID];
      v349 = v421;
      v435 = sub_10013BE04(v348);

      __chkstk_darwin(v350, v351);
      *(&v421 - 4) = v349;
      *(&v421 - 3) = v5;
      v420 = v22;
      v352 = v428;
      sub_100337810(&_swiftEmptyArrayStorage, sub_10048A938, (&v421 - 6), v27);
      v428 = v352;
      if (v352)
      {
        v436(v424, v426);

        v27, v353, v354, v355, v356, v357, v358, v359;
        sub_10048AA6C(v421, type metadata accessor for RDPublicTemplate);
        return v27;
      }

LABEL_95:
      v434 = v45;
      v27, v146, v147, v148, v149, v150, v151, v152;
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      v391 = swift_allocObject();
      v433 = xmmword_1007953F0;
      *(v391 + 16) = xmmword_1007953F0;
      *(v391 + 32) = v5;
      v392 = swift_allocObject();
      *(v392 + 16) = v433;
      v393 = v435;
      *(v392 + 32) = v435;
      v432 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
      v431 = sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
      *&v433 = v5;
      v435 = v393;
      v394 = Array._bridgeToObjectiveC()().super.isa;
      v391, v395, v396, v397, v398, v399, v400, v401;
      sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
      v402 = Array._bridgeToObjectiveC()().super.isa;
      v392, v403, v404, v405, v406, v407, v408, v409;
      sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
      v410 = v434;
      v411 = Array._bridgeToObjectiveC()().super.isa;
      v410, v412, v413, v414, v415, v416, v417, v418;
      v27 = [v432 initWithAccountStorages:v394 listStorages:v402 reminderStorages:v411 objectIDs:p_isa];

      v436(v424, v426);
      sub_10048AA6C(v421, type metadata accessor for RDPublicTemplate);
      return v27;
    }

    v36 = *(v27 + 32);
  }

  v437 = v36;
  v27, v37, v38, v39, v40, v41, v42, v43;
  v44 = [v432 objectIDs];
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v428 = v2;
  v422 = v22;
  if (v27 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
    v53 = v45;
  }

  else
  {
    v53 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = &selRef_accountStatusWithCompletionHandler_;
  v421 = v11;
  if (v53)
  {
    v54 = 0;
    v435 = (v27 & 0xFFFFFFFFFFFFFF8);
    v436 = (v27 & 0xC000000000000001);
    v434 = v27;
    *&v433 = v53;
    do
    {
      if (v436)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v54 >= *(v435 + 2))
        {
          goto LABEL_69;
        }

        v45 = *(v27 + 8 * v54 + 32);
      }

      p_isa = &v45->super.isa;
      v69 = (v54 + 1);
      if (__OFADD__(v54, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v70 = [v45 v6[398]];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = v6;
      v5 = [v437 v6[398]];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      if (v71 == v11 && v73 == v76)
      {

        v73, v55, v56, v57, v58, v59, v60, v61;
        v76, v62, v63, v64, v65, v66, v67, v68;
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v73, v78, v79, v80, v81, v82, v83, v84;
        v76, v85, v86, v87, v88, v89, v90, v91;
        if ((v11 & 1) == 0)
        {
          v434, v46, v47, v48, v49, v50, v51, v52;
          if (qword_100936228 != -1)
          {
            swift_once();
          }

          v158 = type metadata accessor for Logger();
          sub_100006654(v158, qword_100948730);
          v159 = Logger.logObject.getter();
          v160 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v159, v160))
          {
            v161 = swift_slowAlloc();
            *v161 = 0;
            _os_log_impl(&_mh_execute_header, v159, v160, "REMRemindersDataViewInvocation_fetchByObjectID: Failed due to attempt to fetch by 'objectIDs' with multiple entity names.", v161, 2u);
          }

          v27 = objc_opt_self();
          v162 = String._bridgeToObjectiveC()();
          [v27 invalidParameterErrorWithDescription:{v162, v421, v422}];

          swift_willThrow();
          return v27;
        }
      }

      ++v54;
      v53 = v433;
      v6 = v74;
      v27 = v434;
    }

    while (v69 != v433);
  }

  v27, v46, v47, v48, v49, v50, v51, v52;
  v5 = &selRef_isEmpty;
  v92 = [v432 fetchOptions];
  v93 = [v92 includeConcealed];

  v94 = [v437 v6[398]];
  p_isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v96 = v95;

  v434 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v98 = [ObjCClassFromMetadata cdEntityName];
  v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v101 = v100;

  if (v99 == p_isa && v101 == v96)
  {
    v96, v102, v103, v104, v105, v106, v107, v108;
    goto LABEL_28;
  }

  v116 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v101, v117, v118, v119, v120, v121, v122, v123;
  if (v116)
  {
    v101 = v96;
LABEL_28:
    v101, v109, v110, v111, v112, v113, v114, v115;
    v124 = [v432 objectIDs];
    v125 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v126 = v430;
    *v430 = v125;
    *(v126 + 8) = v93;
    swift_storeEnumTagMultiPayload();
    v22 = v428;
    if (qword_100936080 != -1)
    {
      swift_once();
    }

    v7 = qword_100974E30;
    v127 = sub_100043AA8();
    v128 = [objc_allocWithZone(NSFetchRequest) init];
    v129 = [ObjCClassFromMetadata entity];
    [v128 setEntity:v129];

    [v128 setAffectedStores:0];
    [v128 setPredicate:v127];

    [v128 setFetchLimit:0];
    *&v433 = v128;
    [v128 setFetchOffset:0];
    v4 = &_swiftEmptyArrayStorage;
    v440 = &_swiftEmptyArrayStorage;
    sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v442 = sub_1003EBAD0();
    sub_100271EA8(&_swiftEmptyArrayStorage);
    v131 = sub_100235FA0(Predicate);
    Predicate, v132, v133, v134, v135, v136, v137, v138;
    v27 = sub_100277CC0(v131);
    v131, v139, v140, v141, v142, v143, v144, v145;
    if ((v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v11 = *(v27 + 16);
      if (v11)
      {
LABEL_33:
        v431 = v7;
        v439 = &_swiftEmptyArrayStorage;
        v53 = &v439;
        v45 = sub_100026EF4(0, v11 & ~(v11 >> 63), 0);
        if (v11 < 0)
        {
          __break(1u);
          goto LABEL_95;
        }

        v5 = 0;
        v4 = v439;
        v435 = v11;
        v436 = (v27 & 0xC000000000000001);
        while (1)
        {
          v54 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            break;
          }

          if (v436)
          {
            v153 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *(v27 + 16))
            {
              __break(1u);
              goto LABEL_79;
            }

            v153 = *(v27 + 8 * v5 + 32);
          }

          v53 = v153;
          v154 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v155)
          {
            v440 = 0;
            v441 = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v419._countAndFlagsBits = 0xD00000000000002CLL;
            v419._object = 0x80000001007EC120;
            String.append(_:)(v419);
            v438 = v153;
            sub_1000F5104(&unk_100939F10, &qword_100797F30);
            _print_unlocked<A, B>(_:_:)();
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v6 = v154;
          v11 = v155;

          v439 = v4;
          v22 = *v4->clientIdentity;
          v156 = *&v4->clientIdentity[8];
          p_isa = (v22 + 1);
          if (v22 >= v156 >> 1)
          {
            v53 = &v439;
            v45 = sub_100026EF4((v156 > 1), v22 + 1, 1);
            v4 = v439;
          }

          *v4->clientIdentity = p_isa;
          v157 = v4 + 16 * v22;
          *(v157 + 4) = v6;
          *(v157 + 5) = v11;
          ++v5;
          if (v54 == v435)
          {

            v22 = v428;
            v5 = 0x100926000;
            goto LABEL_90;
          }
        }

LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

LABEL_90:
    sub_100271EA8(v4);
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    v360 = v442;
    v361 = Array._bridgeToObjectiveC()().super.isa;
    v360, v362, v363, v364, v365, v366, v367, v368;
    v369 = v433;
    [v433 setRelationshipKeyPathsForPrefetching:{v361, v421, v422}];

    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    v27 = Array._bridgeToObjectiveC()().super.isa;
    [v369 setSortDescriptors:v27];

    v370 = v429;
    v371 = NSManagedObjectContext.fetch<A>(_:)();
    if (v22)
    {
      sub_10048AA6C(v430, _s10PredicatesOMa);
    }

    else
    {
      v372 = v370;
      v373 = v371;
      v374 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v371);
      v373, v375, v376, v377, v378, v379, v380, v381;

      v382 = [v432 *(v5 + 3632)];
      v27 = sub_10048A0EC(v374, v382, v372);
      sub_10048AA6C(v430, _s10PredicatesOMa);
      v374, v383, v384, v385, v386, v387, v388, v389;
    }

    return v27;
  }

  v163 = v6;
  if (p_isa == 0xD000000000000012 && 0x80000001007EFFC0 == v96)
  {
    v96, 0x80000001007EFFC0, v110, v111, v112, v113, v114, v115;
    goto LABEL_54;
  }

  v164 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v96, v165, v166, v167, v168, v169, v170, v171;
  if (v164)
  {
LABEL_54:
    v172 = v432;
    v173 = [v432 objectIDs];
    v174 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v175 = sub_10055BD54(v174, v93 ^ 1);
    type metadata accessor for REMCDSavedReminder();
    v27 = [objc_allocWithZone(NSFetchRequest) init];
    v176 = [swift_getObjCClassFromMetadata() entity];
    [v27 setEntity:v176];

    [v27 setAffectedStores:0];
    [v27 setPredicate:v175];

    [v27 setPropertiesToFetch:0];
    [v27 setRelationshipKeyPathsForPrefetching:0];
    v178 = v428;
    v177 = v429;
    v179 = NSManagedObjectContext.fetch<A>(_:)();
    if (v178)
    {

      v174, v187, v188, v189, v190, v191, v192, v193;
    }

    else
    {
      v194 = v179;
      v174, v180, v181, v182, v183, v184, v185, v186;

      v195 = [v172 fetchOptions];
      v27 = sub_10048A4B4(v194, v195, v177);

      v194, v257, v258, v259, v260, v261, v262, v263;
    }

    return v27;
  }

  v196 = [v437 v6[398]];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v198 = v197;

  v199._countAndFlagsBits = 0xD00000000000001DLL;
  v199._object = 0x80000001007EC4D0;
  LOBYTE(v196) = String.hasPrefix(_:)(v199);
  v198, v200, v201, v202, v203, v204, v205, v206;
  if ((v196 & 1) == 0)
  {
LABEL_60:
    if (qword_100936228 != -1)
    {
      swift_once();
    }

    v237 = type metadata accessor for Logger();
    sub_100006654(v237, qword_100948730);
    v238 = v437;
    v239 = Logger.logObject.getter();
    v240 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v440 = v242;
      *v241 = 136446210;
      v243 = v6;
      v244 = v238;
      v245 = [v238 v163[398]];
      v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v248 = v247;

      v249 = sub_10000668C(v246, v248, &v440);
      v248, v250, v251, v252, v253, v254, v255, v256;
      *(v241 + 4) = v249;
      v238 = v244;
      _os_log_impl(&_mh_execute_header, v239, v240, "REMRemindersDataViewInvocation_fetchByObjectID: Failed due to attempt to fetch by 'objectIDs' with unexpected entity name {entityName: %{public}s}", v241, 0xCu);
      sub_10000607C(v242);
    }

    else
    {

      v243 = v6;
    }

    v27 = objc_opt_self();
    v440 = 0;
    v441 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v441, v264, v265, v266, v267, v268, v269, v270;
    v440 = 0xD000000000000024;
    v441 = 0x80000001007F97F0;
    v271 = [v238 v243[398]];
    v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v274 = v273;

    v275._countAndFlagsBits = v272;
    v275._object = v274;
    String.append(_:)(v275);
    v274, v276, v277, v278, v279, v280, v281, v282;
    v283._countAndFlagsBits = 125;
    v283._object = 0xE100000000000000;
    String.append(_:)(v283);
    v284 = v441;
    v285 = String._bridgeToObjectiveC()();
    v284, v286, v287, v288, v289, v290, v291, v292;
    [v27 invalidParameterErrorWithDescription:v285];

    swift_willThrow();
    return v27;
  }

  v207 = [v437 v6[398]];
  v208 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v210 = v209;

  v211 = String.count.getter();
  sub_10048A888(v211, v208, v210);
  v213 = v212;
  v210, v214, v215, v212, v216, v217, v218, v219;
  static String._fromSubstring(_:)();
  v221 = v220;
  v213, v220, v222, v223, v224, v225, v226, v227;
  v228 = v425;
  UUID.init(uuidString:)();
  v221, v229, v230, v231, v232, v233, v234, v235;
  v11 = v426;
  v236 = v427;
  if ((v427[6])(v228, 1, v426) == 1)
  {
    sub_1000050A4(v228, &unk_100939D90, "8\n\r");
    goto LABEL_60;
  }

  v293 = v424;
  (v236[4])(v424, v228, v11);
  type metadata accessor for REMCDTemplate();
  p_isa = v236;
  v294 = swift_getObjCClassFromMetadata();
  v295 = UUID._bridgeToObjectiveC()().super.isa;
  v6 = [v294 objectIDWithUUID:v295];

  v27 = sub_100415C08();
  v296 = [(SEL *)v6 uuid];
  v297 = v423;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = v297;
  v298 = v428;
  v45 = sub_100415DE4(v297, v299, v429, v27);
  v54 = v298;
  if (!v298)
  {
LABEL_71:
    v4 = v45;
    v307 = v5;
    v308 = p_isa[1];
    v427 = p_isa + 1;
    v436 = v308;
    v308(v53, v11);
    v27, v309, v310, v311, v312, v313, v314, v315;
    v316 = v432;
    p_isa = [v432 objectIDs];
    if (!p_isa)
    {
      v317 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      p_isa = Array._bridgeToObjectiveC()().super.isa;
      v317, v318, v319, v320, v321, v322, v323, v324;
    }

    v325 = v54;
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = [v316 *(v307 + 3632)];
    if (qword_1009367D8 != -1)
    {
      swift_once();
    }

    v326 = sub_100013674(qword_1009752E8);
    if (!v326)
    {
LABEL_79:

      v27, v336, v337, v338, v339, v340, v341, v342;
      [objc_opt_self() noPrimaryActiveCloudKitAccountError];
      swift_willThrow();

      v436(v424, v426);
      return v27;
    }

    v7 = v326;
    v327 = sub_100019990(v326);
    v328 = v424;
    if (v325)
    {

      v27, v329, v330, v331, v332, v333, v334, v335;
      v436(v328, v426);
      return v27;
    }

    v5 = v327;
    v35 = sub_1006E8FC0(v421);
    v428 = 0;
    goto LABEL_86;
  }

  v27, v300, v301, v302, v303, v304, v305, v306;
  v27 = p_isa[1];
  (v27)(v53, v11);
  (v27)(v293, v11);
  return v27;
}

void sub_100485114(uint64_t a1)
{
  v3 = v1;
  v5 = _s10PredicatesOMa(0);
  *&v7 = __chkstk_darwin(v5, v6).n128_u64[0];
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 predicateDescriptor];
  sub_1001CDF58(a1, 0);
  i = v11;

  if (v2)
  {
    return;
  }

  v13 = [v3 sortDescriptors];
  v14 = &_swiftEmptyArrayStorage;
  v119 = 0;
  v120 = v9;
  v118 = a1;
  if (v13)
  {
    v15 = v13;
    v117 = i;
    v121 = v5;
    sub_1000060C8(0, &qword_100948748, REMReminderSortDescriptor_ptr);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v16 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v124 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (i < 0)
      {
        goto LABEL_48;
      }

      v9 = 0;
      v122 = v16 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v24 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v122 + 16))
          {
            goto LABEL_17;
          }

          v25 = *(v16 + 8 * v9 + 32);
        }

        v26 = v25;
        if ([v25 type] >= 5)
        {
          goto LABEL_50;
        }

        sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
        swift_getKeyPath();
        [v26 ascending];
        NSSortDescriptor.init<A, B>(keyPath:ascending:)();

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v9;
        if (v24 == i)
        {
          v16, v27, v28, v29, v30, v31, v32, v33;
          v115 = v124;
          v9 = v120;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v16, v17, v18, v19, v20, v21, v22, v23;
    v115 = &_swiftEmptyArrayStorage;
LABEL_20:
    v14 = &_swiftEmptyArrayStorage;
    i = v117;
  }

  else
  {
    v115 = 0;
  }

  *v9 = i;
  *(v9 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v34 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v117 = i;
  v35 = sub_100043AA8();
  v36 = [objc_allocWithZone(NSFetchRequest) init];
  v116 = v34;
  v37 = [swift_getObjCClassFromMetadata() entity];
  [v36 setEntity:v37];

  [v36 setAffectedStores:0];
  [v36 setPredicate:v35];

  [v36 setFetchLimit:0];
  [v36 setFetchOffset:0];
  v124 = &_swiftEmptyArrayStorage;
  sub_1000F5104(&qword_100949370, &unk_100797770);
  sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
  Predicate = Sequence<>.postFetchPredicateTypes.getter();
  v127 = sub_1003EBAD0();
  sub_100271EA8(&_swiftEmptyArrayStorage);
  v39 = sub_100235FA0(Predicate);
  Predicate, v40, v41, v42, v43, v44, v45, v46;
  v47 = sub_100277CC0(v39);
  v39, v48, v49, v50, v51, v52, v53, v54;
  if ((v47 & 0x8000000000000000) != 0 || (v47 & 0x4000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v55 = *v47->clientIdentity;
  if (!v55)
  {
LABEL_39:

    v56 = &_swiftEmptyArrayStorage;
LABEL_40:
    sub_100271EA8(v56);
    sub_1000F5104(&unk_10093B300, &unk_100797780);
    Array<A>.removeDuplicates()();
    v63 = v127;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v63, v65, v66, v67, v68, v69, v70, v71;
    [v36 setRelationshipKeyPathsForPrefetching:isa];

    v72 = v118;
    v73 = v119;
    v74 = v115;
    if (v115)
    {
      sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
      v75.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v75.super.isa = 0;
    }

    [v36 setSortDescriptors:v75.super.isa];

    v76 = NSManagedObjectContext.fetch<A>(_:)();
    if (v73)
    {

      v74, v77, v78, v79, v80, v81, v82, v83;
      sub_10048AA6C(v9, _s10PredicatesOMa);
    }

    else
    {
      v84 = v76;
      v85 = v74;
      v86 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v76);
      v84, v87, v88, v89, v90, v91, v92, v93;

      v85, v94, v95, v96, v97, v98, v99, v100;
      v101 = [objc_opt_self() defaultFetchOptions];
      sub_10048A0EC(v86, v101, v72);
      sub_10048AA6C(v9, _s10PredicatesOMa);
      v86, v102, v103, v104, v105, v106, v107, v108;
    }

    return;
  }

  while (1)
  {
    v114 = v36;
    v126 = v14;
    sub_100026EF4(0, v55 & ~(v55 >> 63), 0);
    if (v55 < 0)
    {
      break;
    }

    v36 = 0;
    v56 = v126;
    v121 = v55;
    v122 = v47 & 0xC000000000000001;
    while (1)
    {
      v9 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v122)
      {
        i = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v36 >= *v47->clientIdentity)
        {
          goto LABEL_37;
        }

        i = *&v47->clientIdentity[8 * v36 + 16];
      }

      v57 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v58)
      {
        goto LABEL_49;
      }

      v59 = v57;
      v14 = v58;

      v126 = v56;
      v61 = *v56->clientIdentity;
      v60 = *&v56->clientIdentity[8];
      i = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        sub_100026EF4((v60 > 1), v61 + 1, 1);
        v56 = v126;
      }

      *v56->clientIdentity = i;
      v62 = v56 + 16 * v61;
      *(v62 + 4) = v59;
      *(v62 + 5) = v14;
      ++v36;
      if (v9 == v121)
      {

        v9 = v120;
        v36 = v114;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v55 = _CocoaArrayWrapper.endIndex.getter();
    if (!v55)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  v124 = 0;
  v125 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v109._object = 0x80000001007EC120;
  v109._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v109);
  v123 = i;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_50:
  if (qword_1009361E8 != -1)
  {
    swift_once();
  }

  v110 = type metadata accessor for Logger();
  sub_100006654(v110, qword_100947FE8);
  v111 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  v112 = sub_1001F67C8(&_swiftEmptyArrayStorage);
  sub_10054573C("unknown type", 12, 2, v111, v112);
  __break(1u);
}

_TtC7remindd19RDXPCStorePerformer *sub_1004859CC(_TtC7remindd19RDXPCStorePerformer *a1, SEL *a2, uint64_t a3)
{
  v6 = v3;
  v8 = _s10PredicatesOMa(0);
  *&v10 = __chkstk_darwin(v8, v9).n128_u64[0];
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = [v6 *a2];
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [v6 listObjectID];
  *v12 = v14;
  v12[1] = v15;
  swift_storeEnumTagMultiPayload();
  v16 = [v6 listObjectID];
  v17 = sub_1003F07EC(v12, v16, a1);
  if (v4)
  {
    sub_10048AA6C(v12, _s10PredicatesOMa);
  }

  else
  {
    v18 = v17;

    v16 = [objc_opt_self() defaultFetchOptions];
    a1 = sub_10048A0EC(v18, v16, a1);
    sub_10048AA6C(v12, _s10PredicatesOMa);
    v18, v19, v20, v21, v22, v23, v24, v25;
  }

  return a1;
}

id sub_100485BC0(void *a1)
{
  v3 = v1;
  v5 = _s10PredicatesOMa(0);
  __chkstk_darwin(v5, v6);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
  *v8 = [v3 listID];
  v8[8] = 1;
  v10 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  v11 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  (*(*(v11 - 8) + 104))(&v8[v9], v10, v11);
  swift_storeEnumTagMultiPayload();
  v12 = sub_100043AA8();
  sub_10048AA6C(v8, _s10PredicatesOMa);
  if (([v3 includingCompleted] & 1) == 0)
  {
    sub_1000F5104(&qword_10093B980, qword_10079A3D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    KeyPath = swift_getKeyPath();
    v15 = sub_1003EAA24(KeyPath);

    *(inited + 32) = v15;
    *(inited + 40) = v12;
    v12 = sub_10000C2B0();
  }

  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v16 = [objc_allocWithZone(NSFetchRequest) init];
  v17 = [swift_getObjCClassFromMetadata() entity];
  [v16 setEntity:v17];

  [v16 setAffectedStores:0];
  [v16 setPredicate:v12];
  v18 = a1;
  v19 = NSManagedObjectContext.count<A>(for:)();
  if (v2)
  {
  }

  else
  {
    v20 = v19;
    v18 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v21 = [objc_allocWithZone(NSNumber) initWithInteger:v20];
    [v18 storeProperty:v21 forKey:REMRemindersDataViewFetchRemindersCountResultKey];
  }

  return v18;
}

id sub_100485ED0()
{
  v2 = v1;
  v3 = _s10PredicatesOMa(0);
  __chkstk_darwin(v3, v4);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(sub_1000F5104(&qword_100946068, &unk_1007A7650) + 64);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007953F0;
  *(v8 + 32) = [v0 parentReminderID];
  *v6 = v8;
  _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + v7) = 2;
  swift_storeEnumTagMultiPayload();
  v9 = sub_100043AA8();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v10 = [objc_allocWithZone(NSFetchRequest) init];
  v11 = [swift_getObjCClassFromMetadata() entity];
  [v10 setEntity:v11];

  [v10 setAffectedStores:0];
  [v10 setPredicate:v9];

  v12 = NSManagedObjectContext.count<A>(for:)();
  if (v1)
  {
    sub_10048AA6C(v6, _s10PredicatesOMa);
  }

  else
  {
    v13 = v12;
    v2 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:v13];
    [v2 storeProperty:v14 forKey:REMRemindersDataViewFetchRemindersCountResultKey];

    sub_10048AA6C(v6, _s10PredicatesOMa);
  }

  return v2;
}

id sub_100486190()
{
  v2 = v1;
  v3 = _s10PredicatesOMa(0);
  __chkstk_darwin(v3, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(sub_1000F5104(&qword_100946068, &unk_1007A7650) + 64);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007953F0;
  *(v8 + 32) = [v0 parentReminderID];
  *v6 = v8;
  _s10PredicatesO19CompletionPredicateOMa(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + v7) = [v0 includingConcealed];
  swift_storeEnumTagMultiPayload();
  v9 = sub_100043AA8();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  p_attr = &stru_100923FF8.attr;
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v9];

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100791300;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0x6574656C706D6F63;
  *(v13 + 40) = 0xE900000000000064;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13, v15, v16, v17, v18, v19, v20, v21;
  [v11 setPropertiesToFetch:isa];

  v22 = NSManagedObjectContext.fetch<A>(_:)();
  v45 = v1;
  if (!v1)
  {
    if (v22 >> 62)
    {
LABEL_19:
      v39 = v22;
      v30 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v39;
      if (v30)
      {
LABEL_5:
        v43 = v11;
        v44 = v6;
        v31 = 0;
        v32 = 0;
        p_attr = 0;
        v46 = v22 & 0xC000000000000001;
        v11 = (v22 & 0xFFFFFFFFFFFFFF8);
        v33 = v30;
        do
        {
          if (v46)
          {
            v34 = v22;
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v31 >= v11[2])
            {
              goto LABEL_18;
            }

            v34 = v22;
            v22 = *(v22 + 8 * v31 + 32);
          }

          v35 = v22;
          v36 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          v6 = [v22 completed];

          p_attr = (v6 ^ 1 | p_attr);
          v32 |= v6;
          ++v31;
          v22 = v34;
        }

        while (v36 != v33);
        if (v32)
        {
          v37 = 2;
        }

        else
        {
          v37 = 0;
        }

        v38 = p_attr & 1;
        v11 = v43;
        v6 = v44;
        p_attr = (&stru_100923FF8 + 8);
        goto LABEL_21;
      }
    }

    else
    {
      v30 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_5;
      }
    }

    v38 = 0;
    v37 = 0;
LABEL_21:
    v22, v23, v24, v25, v26, v27, v28, v29;
    v2 = [objc_allocWithZone(REMStoreInvocationResult) p_attr[424]];
    v40 = [objc_allocWithZone(NSNumber) initWithInteger:v37 | v38];
    [v2 storeProperty:v40 forKey:REMRemindersDataViewFetchReminderSubtasksMasksResultKey];

    sub_10048AA6C(v6, _s10PredicatesOMa);
    return v2;
  }

  sub_10048AA6C(v6, _s10PredicatesOMa);

  return v2;
}

void *sub_1004865F0(uint64_t a1)
{
  v123 = _s10PredicatesOMa(0);
  __chkstk_darwin(v123, v3);
  v122 = (&v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10029B198(1, 160);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v7 = [objc_allocWithZone(NSFetchRequest) init];
  v8 = [swift_getObjCClassFromMetadata() entity];
  [v7 setEntity:v8];

  [v7 setAffectedStores:0];
  [v7 setPredicate:v5];
  v126 = _swiftEmptySetSingleton;

  sub_100391940(v9);
  inited, v10, v11, v12, v13, v14, v15, v16;
  v17 = v126;
  v18 = sub_1003FE4C4(v126);
  v17, v19, v20, v21, v22, v23, v24, v25;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18, v27, v28, v29, v30, v31, v32, v33;
  [v7 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v34 = Array._bridgeToObjectiveC()().super.isa;
  [v7 setRelationshipKeyPathsForPrefetching:v34];

  v35 = NSManagedObjectContext.fetch<A>(_:)();
  if (!v1)
  {
    v44 = v35;
    v120 = a1;
    v121 = v5;
    v126 = &_swiftEmptyArrayStorage;
    if (v35 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v46 = REMCRMergeableOrderedSet_ptr;
      v125 = v1;
      v119 = v7;
      v47 = &_swiftEmptyArrayStorage;
      if (i)
      {
        v48 = 0;
        v7 = (v44 & 0xC000000000000001);
        while (1)
        {
          if (v7)
          {
            v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v48 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v50 = *(v44 + 8 * v48 + 32);
          }

          v51 = v50;
          v52 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          v130 = v50;
          v1 = v125;
          sub_100486EF4(&v130, v124, &v129);
          v125 = v1;

          if (v129)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v118 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v47 = v126;
          }

          ++v48;
          v49 = v52 == i;
          v46 = REMCRMergeableOrderedSet_ptr;
          if (v49)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
      }

      else
      {
LABEL_17:
        v44, v36, v37, v38, v39, v40, v41, v42;
        v7 = v122;
        *v122 = v47;
        v7[8] = 0;
        swift_storeEnumTagMultiPayload();
        v53 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
        if (qword_100936080 != -1)
        {
          swift_once();
        }

        v117 = qword_100974E30;
        v54 = sub_100043AA8();
        v55 = [objc_allocWithZone(v46[406]) init];
        v56 = [swift_getObjCClassFromMetadata() entity];
        [v55 setEntity:v56];

        [v55 setAffectedStores:0];
        [v55 setPredicate:v54];

        [v55 setFetchLimit:0];
        [v55 setFetchOffset:0];
        v126 = &_swiftEmptyArrayStorage;
        sub_1000F5104(&qword_100949370, &unk_100797770);
        sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
        Predicate = Sequence<>.postFetchPredicateTypes.getter();
        v128 = sub_1003EBAD0();
        sub_100271EA8(&_swiftEmptyArrayStorage);
        v58 = sub_100235FA0(Predicate);
        Predicate, v59, v60, v61, v62, v63, v64, v65;
        v44 = sub_100277CC0(v58);
        v58, v66, v67, v68, v69, v70, v71, v72;
        if ((v44 & 0x8000000000000000) != 0 || (v44 & 0x4000000000000000) != 0)
        {
          v73 = _CocoaArrayWrapper.endIndex.getter();
          v118 = v53;
          if (!v73)
          {
LABEL_40:

            v75 = &_swiftEmptyArrayStorage;
LABEL_41:
            sub_100271EA8(v75);
            sub_1000F5104(&unk_10093B300, &unk_100797780);
            Array<A>.removeDuplicates()();
            v83 = v128;
            v84 = Array._bridgeToObjectiveC()().super.isa;
            v83, v85, v86, v87, v88, v89, v90, v91;
            [v55 setRelationshipKeyPathsForPrefetching:v84];

            sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
            v43 = Array._bridgeToObjectiveC()().super.isa;
            [v55 setSortDescriptors:v43];

            v92 = v120;
            v93 = v125;
            v94 = NSManagedObjectContext.fetch<A>(_:)();
            v95 = v121;
            if (v93)
            {

              sub_10048AA6C(v7, _s10PredicatesOMa);
            }

            else
            {
              v96 = v94;
              v97 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v94);
              v96, v98, v99, v100, v101, v102, v103, v104;

              v105 = [objc_opt_self() defaultFetchOptions];
              v43 = sub_10048A0EC(v97, v105, v92);
              sub_10048AA6C(v7, _s10PredicatesOMa);
              v97, v106, v107, v108, v109, v110, v111, v112;
            }

            return v43;
          }
        }

        else
        {
          v73 = *(v44 + 16);
          v118 = v53;
          if (!v73)
          {
            goto LABEL_40;
          }
        }

        v116 = v55;
        v130 = &_swiftEmptyArrayStorage;
        sub_100026EF4(0, v73 & ~(v73 >> 63), 0);
        if (v73 < 0)
        {
          __break(1u);
LABEL_46:
          v126 = 0;
          v127 = 0xE000000000000000;
          _StringGuts.grow(_:)(46);
          v114._object = 0x80000001007EC120;
          v114._countAndFlagsBits = 0xD00000000000002CLL;
          String.append(_:)(v114);
          v129 = v73;
          sub_1000F5104(&unk_100939F10, &qword_100797F30);
          _print_unlocked<A, B>(_:_:)();
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v74 = 0;
        v75 = v130;
        v123 = v73;
        v124 = (v44 & 0xC000000000000001);
        while (1)
        {
          v76 = v74 + 1;
          if (__OFADD__(v74, 1))
          {
            break;
          }

          if (v124)
          {
            v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v74 >= *(v44 + 16))
            {
              goto LABEL_37;
            }

            v73 = *(v44 + 8 * v74 + 32);
          }

          v77 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v78)
          {
            goto LABEL_46;
          }

          v79 = v77;
          v7 = v78;

          v130 = v75;
          v81 = *v75->clientIdentity;
          v80 = *&v75->clientIdentity[8];
          if (v81 >= v80 >> 1)
          {
            sub_100026EF4((v80 > 1), v81 + 1, 1);
            v75 = v130;
          }

          *v75->clientIdentity = v81 + 1;
          v82 = v75 + 16 * v81;
          *(v82 + 4) = v79;
          *(v82 + 5) = v7;
          ++v74;
          if (v76 == v123)
          {

            v7 = v122;
            v55 = v116;
            goto LABEL_41;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }
  }

  v43 = v1;

  return v43;
}

void sub_100486EF4(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 alarm];
  if (v6 && (v7 = v6, v8 = [v6 reminder], v7, v8))
  {
    if (([a2 includingCompleted] & 1) != 0 || (objc_msgSend(v8, "completed") & 1) == 0)
    {
      v16 = [v8 remObjectID];

      goto LABEL_15;
    }
  }

  else
  {
    if (qword_100936228 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_100948730);
    v10 = v5;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v10 remObjectID];
      if (!v15)
      {
        v15 = [objc_allocWithZone(NSNull) init];
      }

      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms: trigger without reminder {trigger REMObjectID: %@).", v13, 0xCu);
      sub_1000050A4(v14, &unk_100938E70, &unk_100797230);
    }
  }

  v16 = 0;
LABEL_15:
  *a3 = v16;
}

Class sub_10048713C(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v137 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s10PredicatesOMa(0);
  __chkstk_darwin(v7, v8);
  v10 = v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
  v12 = [v1 batchCreationID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v3 + 32);
  v13 = v3 + 32;
  v14(v10, v6, v2);
  LODWORD(v12) = [v1 includingCompleted];
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v16 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  if (!v12)
  {
    v16 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
  }

  (*(*(v15 - 8) + 104))(&v10[v11], *v16, v15);
  swift_storeEnumTagMultiPayload();
  v17 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  if (qword_100936080 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v134[1] = qword_100974E30;
    v18 = sub_100043AA8();
    v19 = [objc_allocWithZone(NSFetchRequest) init];
    v134[2] = v17;
    v20 = [swift_getObjCClassFromMetadata() entity];
    [v19 setEntity:v20];

    [v19 setAffectedStores:0];
    [v19 setPredicate:v18];

    [v19 setFetchLimit:0];
    v135 = v19;
    [v19 setFetchOffset:0];
    v21 = &_swiftEmptyArrayStorage;
    v141 = &_swiftEmptyArrayStorage;
    v22 = sub_1000F5104(&qword_100949370, &unk_100797770);
    sub_10000CB90(&qword_100939850, &qword_100949370, &unk_100797770);
    Predicate = Sequence<>.postFetchPredicateTypes.getter();
    v144 = sub_1003EBAD0();
    sub_100271EA8(&_swiftEmptyArrayStorage);
    v24 = sub_100235FA0(Predicate);
    Predicate, v25, v26, v27, v28, v29, v30, v31;
    v32 = sub_100277CC0(v24);
    v24, v33, v34, v35, v36, v37, v38, v39;

    v17 = *v32->clientIdentity;
    v134[0] = v10;
    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_7:
    v143 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      __break(1u);
LABEL_43:
      swift_once();
      goto LABEL_27;
    }

    v40 = 0;
    v21 = v143;
    v138 = v17;
    v139 = v32 & 0xC000000000000001;
    while (1)
    {
      v10 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v139)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v40 >= *v32->clientIdentity)
        {
          goto LABEL_20;
        }

        v41 = *&v32->clientIdentity[8 * v40 + 16];
      }

      v42 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
      if (!v43)
      {
        goto LABEL_46;
      }

      v13 = v42;
      v17 = v43;

      v143 = v21;
      v45 = *v21->clientIdentity;
      v44 = *&v21->clientIdentity[8];
      if (v45 >= v44 >> 1)
      {
        sub_100026EF4((v44 > 1), v45 + 1, 1);
        v21 = v143;
      }

      *v21->clientIdentity = v45 + 1;
      v46 = v21 + 16 * v45;
      *(v46 + 4) = v13;
      *(v46 + 5) = v17;
      ++v40;
      if (v10 == v138)
      {

        v10 = v134[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v134[0] = v10;
  if (v17)
  {
    goto LABEL_7;
  }

LABEL_23:

LABEL_24:
  sub_100271EA8(v21);
  sub_1000F5104(&unk_10093B300, &unk_100797780);
  Array<A>.removeDuplicates()();
  v47 = v144;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v47, v49, v50, v51, v52, v53, v54, v55;
  v56 = v135;
  [v135 setRelationshipKeyPathsForPrefetching:isa];

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v57.super.isa = Array._bridgeToObjectiveC()().super.isa;
  [v56 setSortDescriptors:v57.super.isa];

  v58 = v136;
  v59 = NSManagedObjectContext.fetch<A>(_:)();
  v13 = v58;
  if (v58)
  {
    sub_10048AA6C(v10, _s10PredicatesOMa);

    return v57.super.isa;
  }

  v60 = v59;
  v22 = sub_100155C54(&_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v59);
  v60, v61, v62, v63, v64, v65, v66, v67;

  if (qword_100936228 != -1)
  {
    goto LABEL_43;
  }

LABEL_27:
  v68 = type metadata accessor for Logger();
  v69 = sub_100006654(v68, qword_100948730);
  v41 = v134;
  v141 = v22;
  __chkstk_darwin(v69, v70);
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  v71 = sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  v139 = v71;
  v72 = Sequence.map<A>(skippingError:_:)();
  if (v13)
  {

    v73 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v73 = v72;
  }

  if (v73 >> 62)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = &_swiftEmptyArrayStorage;
  if (!v74)
  {
LABEL_40:
    v80 = [objc_opt_self() defaultFetchOptions];
    v87 = sub_1003EBF14(v22, v80, v137, v81, v82, v83, v84, v85);
    v89 = v88;
    v91 = v90;

    v22, v92, v93, v94, v95, v96, v97, v98;
    v141 = v91;
    sub_1002722C4(v73);
    v99 = v141;
    v100 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    v101 = Array._bridgeToObjectiveC()().super.isa;
    v87, v102, v103, v104, v105, v106, v107, v108;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v109 = Array._bridgeToObjectiveC()().super.isa;
    v89, v110, v111, v112, v113, v114, v115, v116;
    v117 = Array._bridgeToObjectiveC()().super.isa;
    v99, v118, v119, v120, v121, v122, v123, v124;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v125 = Array._bridgeToObjectiveC()().super.isa;
    v75, v126, v127, v128, v129, v130, v131, v132;
    v57.super.isa = [v100 initWithAccountStorages:v101 listStorages:v109 reminderStorages:v117 objectIDs:v125];

    sub_10048AA6C(v134[0], _s10PredicatesOMa);
    return v57.super.isa;
  }

  v138 = v22;
  v141 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v74 & 0x8000000000000000) == 0)
  {
    v76 = 0;
    do
    {
      if ((v73 & 0xC000000000000001) != 0)
      {
        v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v77 = *(v73 + 8 * v76 + 32);
      }

      v78 = v77;
      ++v76;
      v79 = [v77 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v74 != v76);
    v75 = v141;
    v22 = v138;
    goto LABEL_40;
  }

  __break(1u);
LABEL_46:
  v141 = 0;
  v142 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v133._object = 0x80000001007EC120;
  v133._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v133);
  v140 = v41;
  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_100487B90(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s10PredicatesOMa(0);
  __chkstk_darwin(v8, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(sub_1000F5104(&qword_100945FF0, &qword_1007AC720) + 48);
  v13 = [v1 batchCreationID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(v11, v7, v3);
  v14 = [v1 includingCompleted];
  v15 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v16 = &enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  if (!v14)
  {
    v16 = &enum case for REMRemindersListDataView.ShowCompleted.off(_:);
  }

  (*(*(v15 - 8) + 104))(&v11[v12], *v16, v15);
  swift_storeEnumTagMultiPayload();
  v17 = sub_100043AA8();
  sub_10048AA6C(v11, _s10PredicatesOMa);
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v18 = [objc_allocWithZone(NSFetchRequest) init];
  v19 = [swift_getObjCClassFromMetadata() entity];
  [v18 setEntity:v19];

  [v18 setAffectedStores:0];
  [v18 setPredicate:v17];

  v20 = a1;
  v21 = v26[1];
  v22 = NSManagedObjectContext.count<A>(for:)();
  if (v21)
  {
  }

  else
  {
    v23 = v22;
    v20 = [objc_allocWithZone(REMStoreInvocationResult) init];
    v24 = [objc_allocWithZone(NSNumber) initWithInteger:v23];
    [v20 storeProperty:v24 forKey:REMRemindersDataViewFetchRemindersCountResultKey];
  }

  return v20;
}

Class sub_100487EE8(uint64_t a1)
{
  v3 = v2;
  isa = v1;
  v117 = a1;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(v5 - 8);
  *&v8 = __chkstk_darwin(v5 - 8, v7).n128_u64[0];
  v10 = &v113 - v9;
  v11 = &_swiftEmptyArrayStorage;
  v125 = &_swiftEmptyArrayStorage;
  sub_100023B44([(RDXPCStorePerformer *)v1 allowConcealedObjects]);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v125->clientIdentity >= *&v125->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v11 = &_swiftEmptyArrayStorage;
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  KeyPath = swift_getKeyPath();
  v12 = [(RDXPCStorePerformer *)v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v13 >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = isa;
  v118 = v2;
  if (v21)
  {
    v122 = &_swiftEmptyArrayStorage;
    sub_100253218(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v22 = 0;
    v23 = v122;
    v24 = v13;
    v120 = (v13 & 0xC000000000000001);
    v25 = v13;
    v26 = v21;
    do
    {
      if (v120)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v27 = *(v24 + 8 * v22 + 32);
      }

      v28 = v27;
      v29 = [v27 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = type metadata accessor for UUID();
      (*(*(v30 - 8) + 56))(v10, 0, 1, v30);
      v122 = v23;
      v32 = *v23->clientIdentity;
      v31 = *&v23->clientIdentity[8];
      if (v32 >= v31 >> 1)
      {
        sub_100253218((v31 > 1), v32 + 1, 1);
        v23 = v122;
      }

      ++v22;
      *v23->clientIdentity = v32 + 1;
      sub_100100FB4(v10, v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v32);
      v24 = v25;
    }

    while (v26 != v22);
    v25, v25, v33, v34, v35, v36, v37, v38;
  }

  else
  {
    v13, v14, v15, v16, v17, v18, v19, v20;
    v23 = &_swiftEmptyArrayStorage;
  }

  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100791340;
  v40 = sub_10030D838(v39);
  *(v39 + 56) = &type metadata for String;
  *(v39 + 32) = v40;
  *(v39 + 40) = v41;
  *(v39 + 88) = sub_1000F5104(&qword_100946088, &unk_1007A7690);
  *(v39 + 64) = v23;
  v42 = String._bridgeToObjectiveC()();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v39, v43, v44, v45, v46, v47, v48, v49;
  v50 = [objc_opt_self() predicateWithFormat:v42 argumentArray:isa];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v125->clientIdentity >= *&v125->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v51 = sub_10000C2B0();
  v3 = sub_1000060C8(0, &unk_10093F790, off_1008D4158);
  v52 = [objc_allocWithZone(NSFetchRequest) init];
  v53 = [swift_getObjCClassFromMetadata() entity];
  [v52 setEntity:v53];

  [v52 setAffectedStores:0];
  KeyPath = v52;
  [v52 setPredicate:v51];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  v120 = (inited + 32);
  *(inited + 40) = swift_getKeyPath();
  v124 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 2, 0);
  v11 = v124;
  v114 = inited & 0xFFFFFFFFFFFFFF8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v55 = *v120;
  }

  v56 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v57)
  {
    goto LABEL_44;
  }

  v58 = v56;
  v59 = v57;

  v61 = *v11->clientIdentity;
  v60 = *&v11->clientIdentity[8];
  isa = (v61 + 1);
  if (v61 >= v60 >> 1)
  {
    sub_100026EF4((v60 > 1), v61 + 1, 1);
    v11 = v124;
  }

  *v11->clientIdentity = isa;
  v62 = v11 + 16 * v61;
  *(v62 + 4) = v58;
  *(v62 + 5) = v59;
  if ((inited & 0xC000000000000001) != 0)
  {
    v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if (*(v114 + 16) < 2uLL)
  {
    goto LABEL_41;
  }

  v55 = *(inited + 40);

LABEL_29:
  v63 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v64)
  {
    v65 = v63;
    v66 = v64;

    v124 = v11;
    v68 = *v11->clientIdentity;
    v67 = *&v11->clientIdentity[8];
    if (v68 >= v67 >> 1)
    {
      sub_100026EF4((v67 > 1), v68 + 1, 1);
      v11 = v124;
    }

    *v11->clientIdentity = v68 + 1;
    v69 = v11 + 16 * v68;
    *(v69 + 4) = v65;
    *(v69 + 5) = v66;
    swift_setDeallocating();
    swift_arrayDestroy();
    v116, v70, v71, v72, v73, v74, v75, v76;
    v77.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v3 = KeyPath;
    [KeyPath setRelationshipKeyPathsForPrefetching:v77.super.isa];

    v78 = v118;
    v79 = NSManagedObjectContext.fetch<A>(_:)();
    v11 = v78;
    if (v78)
    {

      return v77.super.isa;
    }

    isa = v79;
    if (qword_100936228 == -1)
    {
LABEL_35:
      v80 = type metadata accessor for Logger();
      v81 = sub_100006654(v80, qword_100948730);
      v120 = &v113;
      __chkstk_darwin(v81, v82);
      v118 = &v113;
      v122 = isa;
      __chkstk_darwin(v83, v84);
      sub_1000F5104(&qword_10093CB70, &unk_1007A0280);
      sub_1000060C8(0, &unk_10093F5F0, REMAssignment_ptr);
      sub_10000CB90(&qword_10093CB78, &qword_10093CB70, &unk_1007A0280);
      v85 = Sequence.map<A>(skippingError:_:)();
      if (v11)
      {

        v93 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v93 = v85;
      }

      isa, v86, v87, v88, v89, v90, v91, v92;
      v94 = sub_1001A603C(v93);
      v93, v95, v96, v97, v98, v99, v100, v101;
      v102 = objc_allocWithZone(REMAssignmentsDataViewInvocationResult);
      sub_10000CE28(&qword_100939230, &unk_10093F5F0, REMAssignment_ptr);
      v103 = Set._bridgeToObjectiveC()().super.isa;
      v94, v104, v105, v106, v107, v108, v109, v110;
      v77.super.isa = [v102 initWithAssignments:v103];

      return v77.super.isa;
    }

LABEL_43:
    swift_once();
    goto LABEL_35;
  }

LABEL_44:
  v122 = 0;
  v123 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v112._object = 0x80000001007EC120;
  v112._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v112);
  v121 = v55;
  sub_1000F5104(&qword_100941DD8, &qword_1007A1FC0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1004888B0(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  sub_10018E470(a1, &v12 - v6);
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

void sub_1004889DC(id *a1@<X0>, void *a2@<X1>, NSObject **a3@<X8>)
{
  v49 = a3;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = &v48 - v11;
  v13 = type metadata accessor for UUID();
  v52 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = __chkstk_darwin(v17, v18).n128_u64[0];
  v51 = &v48 - v20;
  v21 = *a1;
  v22 = [*a1 account];
  if (!v22 || (v23 = v22, v24 = [v22 remObjectID], v23, (v48 = v24) == 0))
  {
    v29 = objc_opt_self();
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = String._bridgeToObjectiveC()();
    [v29 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v31];

    swift_willThrow();
    return;
  }

  v25 = a2;
  if ([a2 allowConcealedObjects])
  {
    v26 = [v21 owningReminderIdentifier];
    if (v26)
    {
      v27 = v26;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = v52;
      (*(v52 + 56))(v8, 0, 1, v13);
    }

    else
    {
      v28 = v52;
      (*(v52 + 56))(v8, 1, 1, v13);
    }

    sub_100100FB4(v8, v12);
  }

  else
  {
    v32 = [v21 reminder];
    if (!v32 || (v33 = v32, v34 = [v32 remObjectID], v33, !v34))
    {
      (*(v52 + 56))(v12, 1, 1, v13);
LABEL_14:
      sub_1000050A4(v12, &unk_100939D90, "8\n\r");
      v38 = objc_opt_self();
      sub_1000060C8(0, &unk_10093F790, off_1008D4158);
      v39 = swift_getObjCClassFromMetadata();
      v40 = String._bridgeToObjectiveC()();
      [v38 unexpectedNilPropertyWithClass:v39 property:v40];

      swift_willThrow();
LABEL_17:

      return;
    }

    v35 = [v34 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v52;
    (*(v52 + 32))(v12, v16, v13);
    (*(v28 + 56))(v12, 0, 1, v13);
  }

  v36 = (*(v28 + 48))(v12, 1, v13);
  v37 = v51;
  if (v36 == 1)
  {
    goto LABEL_14;
  }

  (*(v28 + 32))(v51, v12, v13);
  v41 = objc_opt_self();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v43 = [v41 objectIDWithUUID:isa];

  LODWORD(v41) = [v25 allowConcealedObjects];
  v44 = [v25 allowConcealedObjects];
  v45 = v50;
  v46 = sub_10030ED04(v21, v41, v44);
  if (v45)
  {
    (*(v28 + 8))(v37, v13);

    goto LABEL_17;
  }

  v47 = v46;
  (*(v28 + 8))(v37, v13);

  *v49 = &v47->super;
}

Class sub_100488F4C(uint64_t *a1)
{
  v103 = a1;
  v2 = v1;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  p_isa = *(v3 - 8);
  *&v6 = __chkstk_darwin(v3 - 8, v5).n128_u64[0];
  v8 = &v97 - v7;
  v109 = &_swiftEmptyArrayStorage;
  sub_100023B44([(RDXPCStorePerformer *)v1 allowConcealedObjects]);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v109->clientIdentity >= *&v109->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  KeyPath = swift_getKeyPath();
  v99 = v1;
  v10 = [(RDXPCStorePerformer *)v1 objectIDs];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_15:
    v11, v12, v13, v14, v15, v16, v17, v18;
    v21 = &_swiftEmptyArrayStorage;
    goto LABEL_16;
  }

  v19 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_5:
  v106 = &_swiftEmptyArrayStorage;
  sub_100253218(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v102 = KeyPath;
  v20 = 0;
  v21 = v106;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v22 = *(v11 + 8 * v20 + 32);
    }

    v23 = v22;
    v24 = [v22 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = type metadata accessor for UUID();
    (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
    v106 = v21;
    v2 = *v21->clientIdentity;
    v26 = *&v21->clientIdentity[8];
    if (v2 >= v26 >> 1)
    {
      sub_100253218((v26 > 1), v2 + 1, 1);
      v21 = v106;
    }

    ++v20;
    *v21->clientIdentity = v2 + 1;
    sub_100100FB4(v8, v21 + ((*(p_isa + 80) + 32) & ~*(p_isa + 80)) + p_isa[9] * v2);
  }

  while (v19 != v20);
  v11, v27, v28, v29, v30, v31, v32, v33;
  KeyPath = v102;
LABEL_16:
  sub_1003E9F6C(KeyPath, v21);

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*v109->clientIdentity >= *&v109->clientIdentity[8] >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v34 = sub_10000C2B0();
  v35 = sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v36 = [objc_allocWithZone(NSFetchRequest) init];
  v101 = v35;
  v37 = [swift_getObjCClassFromMetadata() entity];
  [(RDXPCStorePerformer *)v36 setEntity:v37];

  [(RDXPCStorePerformer *)v36 setAffectedStores:0];
  v102 = v36;
  [(RDXPCStorePerformer *)v36 setPredicate:v34];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v108 = &_swiftEmptyArrayStorage;
  sub_100026EF4(0, 2, 0);
  KeyPath = v108;
  p_isa = (inited & 0xC000000000000001);
  v98 = inited & 0xFFFFFFFFFFFFFF8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v39 = *(inited + 32);
  }

  v40 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v41)
  {
    goto LABEL_43;
  }

  v42 = v40;
  v43 = v41;

  v45 = *KeyPath->clientIdentity;
  v44 = *&KeyPath->clientIdentity[8];
  v2 = v45 + 1;
  if (v45 >= v44 >> 1)
  {
    sub_100026EF4((v44 > 1), v45 + 1, 1);
    KeyPath = v108;
  }

  *KeyPath->clientIdentity = v2;
  v46 = &KeyPath->super.isa + 2 * v45;
  v46[4] = v42;
  v46[5] = v43;
  if (p_isa)
  {
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_29;
  }

  if (*(v98 + 16) < 2uLL)
  {
    goto LABEL_40;
  }

  v39 = *(inited + 40);

LABEL_29:
  v47 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v48)
  {
    v49 = v47;
    v50 = v48;

    v108 = KeyPath;
    v52 = *KeyPath->clientIdentity;
    v51 = *&KeyPath->clientIdentity[8];
    if (v52 >= v51 >> 1)
    {
      sub_100026EF4((v51 > 1), v52 + 1, 1);
      KeyPath = v108;
    }

    *KeyPath->clientIdentity = v52 + 1;
    v53 = &KeyPath->super.isa + 2 * v52;
    v53[4] = v49;
    v53[5] = v50;
    swift_setDeallocating();
    swift_arrayDestroy();
    v100, v54, v55, v56, v57, v58, v59, v60;
    v61.super.isa = Array._bridgeToObjectiveC()().super.isa;

    p_isa = &v102->super.isa;
    [(RDXPCStorePerformer *)v102 setRelationshipKeyPathsForPrefetching:v61.super.isa];

    v62 = v104;
    v63 = NSManagedObjectContext.fetch<A>(_:)();
    KeyPath = v62;
    if (v62)
    {

      return v61.super.isa;
    }

    v2 = v63;
    if (qword_100936228 == -1)
    {
LABEL_35:
      v64 = type metadata accessor for Logger();
      v65 = sub_100006654(v64, qword_100948730);
      v104 = &v97;
      __chkstk_darwin(v65, v66);
      v103 = &v97;
      v106 = v2;
      __chkstk_darwin(v67, v68);
      sub_1000F5104(&qword_10094F560, &qword_1007AC6A0);
      sub_1000060C8(0, &unk_10093F600, REMHashtag_ptr);
      sub_10000CB90(&unk_10093D0C0, &qword_10094F560, &qword_1007AC6A0);
      v69 = Sequence.map<A>(skippingError:_:)();
      if (KeyPath)
      {

        v77 = &_swiftEmptyArrayStorage;
      }

      else
      {
        v77 = v69;
      }

      v2, v70, v71, v72, v73, v74, v75, v76;
      v78 = sub_1001A606C(v77);
      v77, v79, v80, v81, v82, v83, v84, v85;
      v86 = objc_allocWithZone(REMHashtagsDataViewInvocationResult);
      sub_10000CE28(&qword_10093AA28, &unk_10093F600, REMHashtag_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;
      v78, v88, v89, v90, v91, v92, v93, v94;
      v61.super.isa = [v86 initWithHashtags:isa];

      return v61.super.isa;
    }

LABEL_42:
    swift_once();
    goto LABEL_35;
  }

LABEL_43:
  v106 = 0;
  v107 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v96._object = 0x80000001007EC120;
  v96._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v96);
  v105 = v39;
  sub_1000F5104(&unk_10093D020, qword_1007A3230);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_100489820(id *a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  *&v10 = __chkstk_darwin(v7, v9).n128_u64[0];
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = [*a1 account];
  if (v14 && (v15 = v14, v16 = [v14 remObjectID], v15, v16))
  {
    sub_100489A94([a2 allowConcealedObjects], v12);
    if (v3)
    {
    }

    else
    {
      v25 = a3;
      v17 = objc_opt_self();
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v19 = [v17 objectIDWithUUID:isa];

      v23 = sub_1003AC4B8(v13, [a2 allowConcealedObjects]);
      (*(v8 + 8))(v12, v7);

      *v25 = v23;
    }
  }

  else
  {
    v20 = objc_opt_self();
    sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = String._bridgeToObjectiveC()();
    [v20 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v22];

    swift_willThrow();
  }
}

uint64_t sub_100489A94@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v11, v12).n128_u64[0];
  v15 = &v26 - v14;
  if (a1 & 1) != 0 && ([v3 markedForDeletion])
  {
LABEL_5:
    v17 = [v3 reminderIdentifier];
    if (v17)
    {
      v18 = v17;
LABEL_7:
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      return (*(v7 + 32))(a2, v15, v6);
    }

    goto LABEL_11;
  }

  v16 = [v3 sharedToMeReminderCKIdentifier];
  if (v16)
  {

    goto LABEL_5;
  }

  v20 = [v3 reminder];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 remObjectID];

    if (v22)
    {
      v18 = [v22 uuid];

      v15 = v10;
      goto LABEL_7;
    }
  }

LABEL_11:
  v23 = objc_opt_self();
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = String._bridgeToObjectiveC()();
  [v23 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v25];

  return swift_willThrow();
}

void sub_100489D50(void **a1@<X0>, void *a2@<X1>, _TtC7remindd19RDXPCStorePerformer *a3@<X2>, char **a4@<X8>)
{
  v8 = *a1;
  v9 = sub_1002B3180(*a1);
  if (!v4)
  {
    v10 = v9;
    if ([a2 includeDueDateDeltaAlerts])
    {
      v11 = [a2 includeConcealed];
      sub_1000F5104(&unk_100939D60, &unk_1007959E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007953F0;
      *(inited + 32) = v8;
      v13 = v8;
      v14 = sub_100232618(inited, v11, a3);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_10031EB60(v14);
      v16 = v15;
      v14, v17, v18, v19, v20, v21, v22, v23;
      if (v16)
      {
        v24 = v16;
      }

      else
      {
        v24 = &_swiftEmptyArrayStorage;
      }

      sub_1000060C8(0, &unk_100950F50, REMDueDateDeltaAlert_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v24, v26, v27, v28, v29, v30, v31, v32;
      [v10 setFetchedDueDateDeltaAlerts:isa];
    }

    *a4 = v10;
  }
}

void sub_100489ED0(void *a1, void **a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *a2;
  v10 = objc_autoreleasePoolPush();
  v11 = [a4 objectID];
  v12 = sub_10013C004(v9, v11, a5);
  if (v5)
  {

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v13 = v12;

    objc_autoreleasePoolPop(v10);
    v14 = v13;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v15 = [v14 parentReminderID];
    if (v15)
    {
      v16 = v15;
      v20 = objc_autoreleasePoolPush();
      v17 = [a4 objectID];
      v18 = sub_10013C004(v16, v17, a5);

      objc_autoreleasePoolPop(v20);
      v19 = v18;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }
  }
}

id sub_10048A0EC(unint64_t a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  if (qword_100936228 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v8 = sub_100006654(v7, qword_100948730);
  __chkstk_darwin(v8, v9);
  v64 = a3;
  __chkstk_darwin(v10, v11);
  sub_1000F5104(&qword_10093CAC0, &unk_10079E1E0);
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093A570, &qword_10093CAC0, &unk_10079E1E0);
  v12 = Sequence.map<A>(skippingError:_:)();
  if (v3)
  {

    v18 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v18 = v12;
  }

  if (v18 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
    goto LABEL_15;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v22 = *(v18 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      v24 = [v22 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v19 != v21);
LABEL_15:
    v25 = sub_1003EBF14(a1, a2, v64, v13, v14, v15, v16, v17);
    v65 = v26;
    v27 = v25;
    v29 = v28;
    sub_1002722C4(v18);
    v30 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v27, v32, v33, v34, v35, v36, v37, v38;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v39 = Array._bridgeToObjectiveC()().super.isa;
    v29, v40, v41, v42, v43, v44, v45, v46;
    v47 = Array._bridgeToObjectiveC()().super.isa;
    v65, v48, v49, v50, v51, v52, v53, v54;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v55 = Array._bridgeToObjectiveC()().super.isa;
    &_swiftEmptyArrayStorage, v56, v57, v58, v59, v60, v61, v62;
    v63 = [v30 initWithAccountStorages:isa listStorages:v39 reminderStorages:v47 objectIDs:v55];

    return v63;
  }

  __break(1u);
  return result;
}

id sub_10048A4B4(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for REMSavedReminderStorageCDIngestor();
  inited = swift_initStackObject();
  *(inited + 16) = a2;
  v8 = qword_100936228;
  v61 = a2;
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_100006654(v9, qword_100948730);
  __chkstk_darwin(v10, v11);
  sub_1000F5104(&qword_10093F3A8, qword_1007AC5F0);
  sub_1000060C8(0, &unk_10093F670, REMReminderStorage_ptr);
  sub_10000CB90(&qword_10093F3B0, &qword_10093F3A8, qword_1007AC5F0);
  v12 = Sequence.map<A>(skippingError:_:)();
  if (v3)
  {

    v13 = &_swiftEmptyArrayStorage;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    goto LABEL_16;
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v60 = a3;
    v16 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v13 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      v19 = [v17 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v14 != v16);
    a3 = v60;
LABEL_16:
    v20 = sub_10055CC84(a1, v61, a3);
    v62 = v21;
    v22 = v20;
    v23 = v13;
    v25 = v24;
    sub_1002722C4(v23);
    v26 = objc_allocWithZone(REMRemindersDataViewInvocationResult);
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v22, v28, v29, v30, v31, v32, v33, v34;
    sub_1000060C8(0, &unk_10094F0C0, REMListStorage_ptr);
    v35 = Array._bridgeToObjectiveC()().super.isa;
    v25, v36, v37, v38, v39, v40, v41, v42;
    v43 = Array._bridgeToObjectiveC()().super.isa;
    v62, v44, v45, v46, v47, v48, v49, v50;
    sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
    v51 = Array._bridgeToObjectiveC()().super.isa;
    &_swiftEmptyArrayStorage, v52, v53, v54, v55, v56, v57, v58;
    v59 = [v26 initWithAccountStorages:isa listStorages:v35 reminderStorages:v43 objectIDs:v51];

    swift_setDeallocating();
    return v59;
  }

  __break(1u);
  return result;
}

unint64_t sub_10048A888(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

id sub_10048A980@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10050F83C(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10048AA08(uint64_t a1, uint64_t a2)
{
  v4 = _s10PredicatesO19CompletionPredicateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048AA6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10048AAE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100948750);
  v1 = sub_100006654(v0, qword_100948750);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_UnsetCKDirtyFlagsInNonCKAccounts.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  *&v8 = 0xD00000000000003ALL;
  *(&v8 + 1) = 0x80000001007AC880;
  v4 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1000050A4(v10, &qword_100939ED0, &qword_100791B10);
LABEL_9:
    sub_10048ADCC(_.super.isa, metadata.super.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD00000000000003ALL;
    *(&v10[0] + 1) = 0x80000001007AC880;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v7 integerValue];

  if (v5 < 1)
  {
    goto LABEL_9;
  }
}

void sub_10048ADCC(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100936230 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006654(v6, qword_100948750);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v52 = v11;
    *v10 = 136446210;
    v12 = sub_1003533B0();
    v14 = v13;
    v15 = sub_10000668C(v12, v13, &v52);
    v14, v16, v17, v18, v19, v20, v21, v22;
    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "UnsetCKDirtyFlagsInNonCKAccounts BEGIN {store: %{public}s}", v10, 0xCu);
    sub_10000607C(v11);
  }

  *&v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v58 + 1) = v23;
  v24 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v52 = v58;
  v53 = v59;
  if (!*(&v59 + 1))
  {
LABEL_12:
    sub_1000050A4(&v52, &qword_100939ED0, &qword_100791B10);
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    v25 = v56;
    v26 = v57;
    v27 = objc_allocWithZone(NSManagedObjectContext);
    v28 = [v27 initWithConcurrencyType:{1, v52, v53}];
    v29 = [v7 persistentStoreCoordinator];
    [v28 setPersistentStoreCoordinator:v29];

    [v28 setTransactionAuthor:RDStoreControllerUnsetCKDirtyFlagsInNonCKAccountsMigrationAuthor];
    v30 = swift_allocObject();
    v30[2] = v3;
    v30[3] = v7;
    v30[4] = v28;
    v30[5] = v25;
    v30[6] = v26;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_10048B824;
    *(v31 + 24) = v30;
    v54 = sub_1000529DC;
    v55 = v31;
    *&v52 = _NSConcreteStackBlock;
    *(&v52 + 1) = 1107296256;
    *&v53 = sub_10000F160;
    *(&v53 + 1) = &unk_1008F3710;
    v32 = _Block_copy(&v52);
    v33 = v7;
    v34 = v3;
    v35 = v28;

    [v35 performBlockAndWait:v32];

    _Block_release(v32);
    LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

    if ((v35 & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_13:
  v36 = v7;
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *&v52 = v40;
    *v39 = 136446210;
    v41 = sub_1003533B0();
    v43 = v42;
    v44 = sub_10000668C(v41, v42, &v52);
    v43, v45, v46, v47, v48, v49, v50, v51;
    *(v39 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v37, v38, "UnsetCKDirtyFlagsInNonCKAccounts {store: %{public}s} accountIdentifier is nil, skip migration", v39, 0xCu);
    sub_10000607C(v40);
  }
}
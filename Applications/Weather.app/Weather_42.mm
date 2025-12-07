uint64_t sub_100467A0C(uint64_t a1)
{
  v2 = sub_10046AD28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467A48(uint64_t a1)
{
  v2 = sub_10046AD28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100467A84(uint64_t a1)
{
  v2 = sub_10046AC80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467AC0(uint64_t a1)
{
  v2 = sub_10046AC80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100467AFC(uint64_t a1)
{
  v2 = sub_10046ABD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467B38(uint64_t a1)
{
  v2 = sub_10046ABD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100467B74(uint64_t a1)
{
  v2 = sub_10046AC2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467BB0(uint64_t a1)
{
  v2 = sub_10046AC2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100467BEC(uint64_t a1)
{
  v2 = sub_10046AB30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100467C28(uint64_t a1)
{
  v2 = sub_10046AB30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100467C64@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for ListViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = (v6 - v5);
  v8 = sub_10022C350(&qword_100CBBCF8, &unk_100A51730);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v19[-v12];
  sub_10046A858(v2, v7);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v15 = *v7;
      sub_10022C350(&qword_100CA36F8, &qword_100A2DB10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      *(inited + 32) = 0x6863726165537369;
      *(inited + 40) = 0xEB00000000676E69;
      *(inited + 72) = &type metadata for Bool;
      *(inited + 48) = v15;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_10;
    case 2u:
      Dictionary.init(dictionaryLiteral:)();
      sub_100025204();
      ShortDescription.init(name:_:)();
      sub_10046A920(v7);
      break;
    case 3u:
    case 4u:
    case 9u:
    case 0xBu:
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_10;
    case 5u:
    case 6u:
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_10;
    case 7u:
    case 8u:
    case 0xAu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
      Dictionary.init(dictionaryLiteral:)();
      sub_100025204();
LABEL_10:
      ShortDescription.init(name:_:)();
      break;
    default:
      Dictionary.init(dictionaryLiteral:)();
      ShortDescription.init(name:_:)();
      type metadata accessor for LocationModel();
      sub_1000037E8();
      (*(v14 + 8))(v7);
      break;
  }

  a1[3] = v8;
  a1[4] = sub_10046A8BC();
  v17 = sub_100042FB0(a1);
  return (*(v10 + 32))(v17, v13, v8);
}

uint64_t sub_10046824C(void *a1)
{
  sub_10022C350(&qword_100CBBE48, &qword_100A517D0);
  sub_1000037C4();
  v145 = v3;
  v146 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v143 = v5;
  v140 = sub_10022C350(&qword_100CBBE50, &qword_100A517D8);
  sub_1000037C4();
  v137 = v6;
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v136 = v8;
  v144 = sub_10022C350(&qword_100CBBE58, &qword_100A517E0);
  sub_1000037C4();
  v142 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_1000039BC();
  v138 = v11;
  v141 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v139 = v12;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v135 = v15 - v14;
  sub_10022C350(&qword_100CBBE60, &qword_100A517E8);
  sub_1000037C4();
  v133 = v17;
  v134 = v16;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v132 = v19;
  v20 = sub_10022C350(&qword_100CBBE68, &qword_100A517F0);
  sub_100003E5C(v20, &v157);
  v130 = v21;
  sub_100003828();
  __chkstk_darwin(v22);
  sub_1000039BC();
  sub_100003990(v23);
  v24 = sub_10022C350(&qword_100CBBE70, &qword_100A517F8);
  sub_100003E5C(v24, &v156);
  v128 = v25;
  sub_100003828();
  __chkstk_darwin(v26);
  sub_1000039BC();
  sub_100003990(v27);
  v28 = sub_10022C350(&qword_100CBBE78, &qword_100A51800);
  sub_100003E5C(v28, &v155);
  v127 = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  sub_100003990(v31);
  v32 = sub_10022C350(&qword_100CBBE80, &qword_100A51808);
  sub_100003E5C(v32, &v152);
  v126 = v33;
  sub_100003828();
  __chkstk_darwin(v34);
  sub_1000039BC();
  sub_100003990(v35);
  v36 = sub_10022C350(&qword_100CBBE88, &qword_100A51810);
  sub_100003E5C(v36, v151);
  v125 = v37;
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  sub_100003990(v39);
  v40 = sub_10022C350(&qword_100CBBE90, &qword_100A51818);
  sub_100003E5C(v40, &v147);
  v120[17] = v41;
  sub_100003828();
  __chkstk_darwin(v42);
  sub_1000039BC();
  sub_100003990(v43);
  v44 = sub_10022C350(&qword_100CBBE98, &qword_100A51820);
  sub_100003E5C(v44, &v140);
  v120[13] = v45;
  sub_100003828();
  __chkstk_darwin(v46);
  sub_1000039BC();
  sub_100003990(v47);
  v48 = sub_10022C350(&qword_100CBBEA0, &qword_100A51828);
  sub_100003E5C(v48, &v137);
  v120[10] = v49;
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  sub_100003990(v51);
  v52 = sub_10022C350(&qword_100CBBEA8, &qword_100A51830);
  sub_100003E5C(v52, &v148);
  v123 = v53;
  sub_100003828();
  __chkstk_darwin(v54);
  sub_1000039BC();
  sub_100003990(v55);
  v56 = type metadata accessor for LocationModel();
  v57 = sub_100003E5C(v56, &v145);
  v121 = v58;
  __chkstk_darwin(v57);
  sub_1000037D8();
  v147 = v60 - v59;
  v61 = sub_10022C350(&qword_100CBBEB0, &qword_100A51838);
  sub_100003E5C(v61, &v134);
  v120[7] = v62;
  sub_100003828();
  __chkstk_darwin(v63);
  sub_1000039BC();
  sub_100003990(v64);
  v65 = sub_10022C350(&qword_100CBBEB8, &qword_100A51840);
  sub_100003E5C(v65, v131);
  v120[4] = v66;
  sub_100003828();
  __chkstk_darwin(v67);
  sub_1000039BC();
  sub_100003990(v68);
  v69 = sub_10022C350(&qword_100CBBEC0, &qword_100A51848);
  sub_100003E5C(v69, v129);
  v120[1] = v70;
  sub_100003828();
  __chkstk_darwin(v71);
  v73 = v120 - v72;
  v74 = sub_10022C350(&qword_100CBBEC8, &qword_100A51850);
  sub_1000037C4();
  v120[0] = v75;
  sub_100003828();
  __chkstk_darwin(v76);
  v78 = v120 - v77;
  v79 = type metadata accessor for ListViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v80);
  sub_1000037D8();
  v83 = v82 - v81;
  sub_10022C350(&qword_100CBBED0, &qword_100A51858);
  sub_1000037C4();
  v150 = v84;
  v151[0] = v85;
  sub_100003828();
  __chkstk_darwin(v86);
  v88 = v120 - v87;
  v89 = a1[4];
  v90 = sub_1000161C0(a1, a1[3]);
  sub_10046A97C();
  v149 = v88;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10046A858(v148, v83);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v154 = 13;
      sub_10046AB30();
      v117 = v132;
      sub_100020754(&type metadata for ListViewAction.UpdatedSearchingCodingKeys, &v154);
      v118 = v134;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v133 + 8))(v117, v118);
      goto LABEL_24;
    case 2u:
      v105 = v139;
      v106 = v135;
      v107 = v141;
      (*(v139 + 32))(v135, v83, v141);
      v154 = 14;
      sub_10046AADC();
      v108 = v138;
      v110 = v149;
      v109 = v150;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_100017908();
      sub_10046AFC8(v111, v112, &protocol conformance descriptor for Location.Identifier);
      v113 = v144;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v142 + 8))(v108, v113);
      (*(v105 + 8))(v106, v107);
      return (*(v151[0] + 8))(v110, v109);
    case 3u:
      v154 = 0;
      sub_10046AF74();
      v90 = v149;
      v79 = v150;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000E73C();
      v102 = v78;
      v116 = v74;
      goto LABEL_21;
    case 4u:
      v154 = 1;
      sub_10046AF20();
      v90 = v149;
      v79 = v150;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000E73C();
      v102 = v73;
      v104 = v129;
      goto LABEL_20;
    case 5u:
      v154 = 2;
      sub_10046AECC();
      sub_10000425C(&type metadata for ListViewAction.TappedEditButtonCodingKeys, &v154);
      v102 = sub_1000197E4();
      v104 = v131;
      goto LABEL_20;
    case 6u:
      v154 = 3;
      sub_10046AE78();
      sub_10000425C(&type metadata for ListViewAction.TappedDoneButtonCodingKeys, &v154);
      v102 = sub_1000197E4();
      v104 = &v134;
      goto LABEL_20;
    case 7u:
      v154 = 5;
      sub_10046ADD0();
      sub_10000425C(&type metadata for ListViewAction.TappedNotificationSettingsButtonCodingKeys, &v154);
      v102 = sub_1000197E4();
      v104 = &v137;
      goto LABEL_20;
    case 8u:
      v154 = 6;
      sub_10046AD7C();
      sub_10000425C(&type metadata for ListViewAction.TappedNotificationsOptInButtonCodingKeys, &v154);
      v102 = sub_1000197E4();
      v104 = &v140;
      goto LABEL_20;
    case 9u:
      v154 = 7;
      sub_10046AD28();
      sub_10000425C(&type metadata for ListViewAction.TappedPredictedLocationsNotificationSettingsButtonCodingKeys, &v154);
      v102 = sub_1000197E4();
      v104 = &v147;
      goto LABEL_20;
    case 0xAu:
      v154 = 8;
      sub_10046ACD4();
      sub_10000425C(&type metadata for ListViewAction.TappedPredictedLocationsNotificationOptInButtonCodingKeys, &v154);
      v102 = sub_1000197E4();
      v104 = v151;
      goto LABEL_20;
    case 0xBu:
      v154 = 9;
      sub_10046AC80();
      sub_10000425C(&type metadata for ListViewAction.TappedReportWeatherButtonCodingKeys, &v154);
      v102 = sub_1000197E4();
      v104 = &v152;
      goto LABEL_20;
    case 0xCu:
      v154 = 10;
      sub_10046AC2C();
      sub_10000425C(&type metadata for ListViewAction.TappedWeatherMenuSettingsButtonCodingKeys, &v154);
      v102 = sub_1000197E4();
      v104 = &v155;
      goto LABEL_20;
    case 0xDu:
      v154 = 11;
      sub_10046ABD8();
      sub_10000425C(&type metadata for ListViewAction.TappedUnitsConfigurationButtonCodingKeys, &v154);
      v102 = sub_1000197E4();
      v104 = &v156;
      goto LABEL_20;
    case 0xEu:
      v154 = 12;
      sub_10046AB84();
      sub_10000425C(&type metadata for ListViewAction.DismissedNotificationsOptInAlertCodingKeys, &v154);
      v102 = sub_1000197E4();
      v104 = &v157;
LABEL_20:
      v116 = *(v104 - 32);
LABEL_21:
      v103(v102, v116);
      goto LABEL_22;
    case 0xFu:
      v154 = 15;
      sub_10046AA88();
      v115 = v136;
      sub_1000284F8(&type metadata for ListViewAction.ResetExternalSearchQueryCodingKeys, &v154);
      (*(v137 + 8))(v115, v140);
      goto LABEL_22;
    case 0x10u:
      v154 = 16;
      sub_10046A9D0();
      v101 = v143;
      sub_1000284F8(&type metadata for ListViewAction.CompletedSearchOnLaunchPhaseCodingKeys, &v154);
      (*(v145 + 8))(v101, v146);
LABEL_22:
      result = (*(v151[0] + 8))(v90, v79);
      break;
    default:
      LODWORD(v148) = *(v83 + *(sub_10022C350(&qword_100CBBE20, &unk_100A5C410) + 48));
      v91 = v121;
      v92 = v147;
      v93 = v83;
      v94 = v122;
      (*(v121 + 32))(v147, v93, v122);
      v154 = 4;
      sub_10046AE24();
      v95 = v120[16];
      sub_100020754(&type metadata for ListViewAction.TappedLocationCodingKeys, &v154);
      v154 = 0;
      sub_10003C4CC();
      sub_10046AFC8(v96, v97, &protocol conformance descriptor for LocationModel);
      v98 = v124;
      v99 = v151[1];
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v99)
      {
        sub_10000E73C();
        v100(v95, v98);
        (*(v91 + 8))(v92, v94);
      }

      else
      {
        v154 = v148;
        v153 = 1;
        sub_1002DD4D4();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        sub_10000E73C();
        v119(v95, v98);
        (*(v91 + 8))(v147, v94);
      }

LABEL_24:
      result = (*(v151[0] + 8))(v89, v74);
      break;
  }

  return result;
}

uint64_t sub_100469240@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v233 = a2;
  sub_10022C350(&qword_100CBBD10, &qword_100A51740);
  sub_1000037C4();
  v234 = v4;
  v235[0] = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  sub_1000039BC();
  v232 = v6;
  v7 = sub_10022C350(&qword_100CBBD18, &qword_100A51748);
  sub_100003E5C(v7, &v244);
  v221 = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v230[1] = v10;
  v11 = sub_10022C350(&qword_100CBBD20, &qword_100A51750);
  sub_100003E5C(v11, &v245);
  v223 = v12;
  sub_100003828();
  __chkstk_darwin(v13);
  sub_1000039BC();
  v231 = v14;
  v15 = sub_10022C350(&qword_100CBBD28, &qword_100A51758);
  sub_100003E5C(v15, &v243);
  v219 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_1000039BC();
  v230[0] = v18;
  v19 = sub_10022C350(&qword_100CBBD30, &qword_100A51760);
  sub_100003E5C(v19, &v241);
  v217 = v20;
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  v229[1] = v22;
  v23 = sub_10022C350(&qword_100CBBD38, &qword_100A51768);
  sub_100003E5C(v23, &v240);
  v215 = v24;
  sub_100003828();
  __chkstk_darwin(v25);
  sub_1000039BC();
  v229[0] = v26;
  v27 = sub_10022C350(&qword_100CBBD40, &qword_100A51770);
  sub_100003E5C(v27, &v238);
  v213 = v28;
  sub_100003828();
  __chkstk_darwin(v29);
  sub_1000039BC();
  v228[1] = v30;
  v31 = sub_10022C350(&qword_100CBBD48, &qword_100A51778);
  sub_100003E5C(v31, &v236);
  v211 = v32;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  v228[0] = v34;
  v35 = sub_10022C350(&qword_100CBBD50, &qword_100A51780);
  sub_100003E5C(v35, v235);
  v209 = v36;
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v227[1] = v38;
  v39 = sub_10022C350(&qword_100CBBD58, &qword_100A51788);
  sub_100003E5C(v39, &v231);
  v205 = v40;
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  v227[0] = v42;
  v43 = sub_10022C350(&qword_100CBBD60, &qword_100A51790);
  sub_100003E5C(v43, v230);
  v203 = v44;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  v226[1] = v46;
  v47 = sub_10022C350(&qword_100CBBD68, &qword_100A51798);
  sub_100003E5C(v47, v229);
  v201 = v48;
  sub_100003828();
  __chkstk_darwin(v49);
  sub_1000039BC();
  v226[0] = v50;
  v51 = sub_10022C350(&qword_100CBBD70, &qword_100A517A0);
  sub_100003E5C(v51, &v232);
  v208 = v52;
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  v238 = v54;
  v55 = sub_10022C350(&qword_100CBBD78, &qword_100A517A8);
  sub_100003E5C(v55, v228);
  v199 = v56;
  sub_100003828();
  __chkstk_darwin(v57);
  sub_1000039BC();
  sub_100003990(v58);
  v59 = sub_10022C350(&qword_100CBBD80, &qword_100A517B0);
  sub_100003E5C(v59, v227);
  v197 = v60;
  sub_100003828();
  __chkstk_darwin(v61);
  sub_1000039BC();
  v237 = v62;
  v63 = sub_10022C350(&qword_100CBBD88, &qword_100A517B8);
  sub_100003E5C(v63, v226);
  v195 = v64;
  sub_100003828();
  __chkstk_darwin(v65);
  sub_1000039BC();
  sub_100003990(v66);
  v67 = sub_10022C350(&qword_100CBBD90, &qword_100A517C0);
  sub_100003E5C(v67, v225);
  v193 = v68;
  sub_100003828();
  __chkstk_darwin(v69);
  sub_1000039BC();
  sub_100003990(v70);
  sub_10022C350(&qword_100CBBD98, &qword_100A517C8);
  sub_1000037C4();
  v235[1] = v72;
  v236 = v71;
  sub_100003828();
  __chkstk_darwin(v73);
  v74 = type metadata accessor for ListViewAction(0);
  sub_1000037E8();
  __chkstk_darwin(v75);
  v77 = &v186 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v80 = &v186 - v79;
  __chkstk_darwin(v81);
  v83 = &v186 - v82;
  __chkstk_darwin(v84);
  v86 = &v186 - v85;
  v87 = a1[3];
  v239 = a1;
  sub_1000161C0(a1, v87);
  sub_10046A97C();
  v88 = v240;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v88)
  {
    goto LABEL_8;
  }

  v189 = v80;
  v190 = v77;
  v191 = v83;
  v89 = v238;
  v240 = v74;
  v192 = v86;
  KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80();
  if (v92 == v93 >> 1)
  {
LABEL_7:
    v104 = v240;
    v105 = type metadata accessor for DecodingError();
    swift_allocError();
    v107 = v106;
    sub_10022C350(&qword_100CA7610, &qword_100A327C0);
    *v107 = v104;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v105 - 8) + 104))(v107, enum case for DecodingError.typeMismatch(_:), v105);
    swift_willThrow();
    swift_unknownObjectRelease();
    v108 = sub_100010078();
    v109(v108);
LABEL_8:
    v110 = v239;
    return sub_100006F14(v110);
  }

  v188 = 0;
  if (v92 < (v93 >> 1))
  {
    v187 = *(v91 + v92);
    sub_100618E7C();
    v95 = v94;
    v97 = v96;
    swift_unknownObjectRelease();
    v99 = v234;
    v98 = v235[0];
    if (v95 == v97 >> 1)
    {
      switch(v187)
      {
        case 1:
          v242 = 1;
          sub_10046AF20();
          sub_100008644(&type metadata for ListViewAction.OpenNotificationsOptInFlowCodingKeys, &v242);
          swift_unknownObjectRelease();
          v151 = sub_10000424C();
          v152(v151, v196);
          v153 = sub_100010078();
          v154(v153);
          sub_100005E14();
          goto LABEL_26;
        case 2:
          v242 = 2;
          sub_10046AECC();
          sub_100008644(&type metadata for ListViewAction.TappedEditButtonCodingKeys, &v242);
          swift_unknownObjectRelease();
          v135 = sub_10000424C();
          v136(v135, v198);
          v137 = sub_100010078();
          v138(v137);
          sub_100005E14();
          goto LABEL_26;
        case 3:
          v242 = 3;
          sub_10046AE78();
          sub_100008644(&type metadata for ListViewAction.TappedDoneButtonCodingKeys, &v242);
          swift_unknownObjectRelease();
          v143 = sub_10000424C();
          v144(v143, v200);
          v145 = sub_100010078();
          v146(v145);
          sub_100005E14();
          goto LABEL_26;
        case 4:
          v242 = 4;
          sub_10046AE24();
          v123 = v89;
          sub_1000197C4(&type metadata for ListViewAction.TappedLocationCodingKeys, &v242);
          type metadata accessor for LocationModel();
          v242 = 0;
          sub_10003C4CC();
          sub_10046AFC8(v124, v125, &protocol conformance descriptor for LocationModel);
          v117 = v191;
          v126 = v207;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v237 = *(sub_10022C350(&qword_100CBBE20, &unk_100A5C410) + 48);
          v242 = 1;
          sub_1002DE3AC();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          sub_10000E73C();
          v183(v123, v126);
          v184 = sub_10001148C();
          v185(v184);
          goto LABEL_28;
        case 5:
          v242 = 5;
          sub_10046ADD0();
          sub_100008644(&type metadata for ListViewAction.TappedNotificationSettingsButtonCodingKeys, &v242);
          swift_unknownObjectRelease();
          v155 = sub_10000424C();
          v156(v155, v202);
          v157 = sub_100010078();
          v158(v157);
          sub_100005E14();
          goto LABEL_26;
        case 6:
          v242 = 6;
          sub_10046AD7C();
          sub_100008644(&type metadata for ListViewAction.TappedNotificationsOptInButtonCodingKeys, &v242);
          swift_unknownObjectRelease();
          v160 = sub_10000424C();
          v161(v160, v204);
          v162 = sub_100010078();
          v163(v162);
          sub_100005E14();
          goto LABEL_26;
        case 7:
          v242 = 7;
          sub_10046AD28();
          sub_100008644(&type metadata for ListViewAction.TappedPredictedLocationsNotificationSettingsButtonCodingKeys, &v242);
          swift_unknownObjectRelease();
          v147 = sub_10000424C();
          v148(v147, v206);
          v149 = sub_100010078();
          v150(v149);
          sub_100005E14();
          goto LABEL_26;
        case 8:
          v242 = 8;
          sub_10046ACD4();
          sub_100008644(&type metadata for ListViewAction.TappedPredictedLocationsNotificationOptInButtonCodingKeys, &v242);
          swift_unknownObjectRelease();
          v168 = sub_10000424C();
          v169(v168, v210);
          v170 = sub_100010078();
          v171(v170);
          sub_100005E14();
          goto LABEL_26;
        case 9:
          v242 = 9;
          sub_10046AC80();
          sub_100008644(&type metadata for ListViewAction.TappedReportWeatherButtonCodingKeys, &v242);
          swift_unknownObjectRelease();
          v131 = sub_10000424C();
          v132(v131, v212);
          v133 = sub_100010078();
          v134(v133);
          sub_100005E14();
          goto LABEL_26;
        case 10:
          v242 = 10;
          sub_10046AC2C();
          sub_100008644(&type metadata for ListViewAction.TappedWeatherMenuSettingsButtonCodingKeys, &v242);
          swift_unknownObjectRelease();
          v164 = sub_10000424C();
          v165(v164, v214);
          v166 = sub_100010078();
          v167(v166);
          sub_100005E14();
          goto LABEL_26;
        case 11:
          v242 = 11;
          sub_10046ABD8();
          sub_100008644(&type metadata for ListViewAction.TappedUnitsConfigurationButtonCodingKeys, &v242);
          swift_unknownObjectRelease();
          v119 = sub_10000424C();
          v120(v119, v216);
          v121 = sub_100010078();
          v122(v121);
          sub_100005E14();
          goto LABEL_26;
        case 12:
          v242 = 12;
          sub_10046AB84();
          sub_100008644(&type metadata for ListViewAction.DismissedNotificationsOptInAlertCodingKeys, &v242);
          swift_unknownObjectRelease();
          v127 = sub_10000424C();
          v128(v127, v218);
          v129 = sub_100010078();
          v130(v129);
          sub_100005E14();
          goto LABEL_26;
        case 13:
          v242 = 13;
          sub_10046AB30();
          sub_100008644(&type metadata for ListViewAction.UpdatedSearchingCodingKeys, &v242);
          v159 = v220;
          v176 = KeyedDecodingContainer.decode(_:forKey:)();
          swift_unknownObjectRelease();
          v177 = sub_10000424C();
          v178(v177, v159);
          v179 = sub_10001148C();
          v180(v179);
          v181 = v189;
          *v189 = v176 & 1;
          swift_storeEnumTagMultiPayload();
          v182 = v181;
          goto LABEL_29;
        case 14:
          v242 = 14;
          sub_10046AADC();
          v114 = v231;
          sub_1000197C4(&type metadata for ListViewAction.LocationTransitionBeganCodingKeys, &v242);
          type metadata accessor for Location.Identifier();
          sub_100017908();
          sub_10046AFC8(v115, v116, &protocol conformance descriptor for Location.Identifier);
          v117 = v190;
          v118 = v224;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          sub_10000E73C();
          v173(v114, v118);
          v174 = sub_10001148C();
          v175(v174);
LABEL_28:
          swift_storeEnumTagMultiPayload();
          v182 = v117;
LABEL_29:
          v97 = v192;
          sub_10046AA24(v182, v192);
          goto LABEL_27;
        case 15:
          v242 = 15;
          sub_10046AA88();
          sub_100008644(&type metadata for ListViewAction.ResetExternalSearchQueryCodingKeys, &v242);
          swift_unknownObjectRelease();
          v139 = sub_10000424C();
          v140(v139, v222);
          v141 = sub_100010078();
          v142(v141);
          sub_100005E14();
          goto LABEL_26;
        case 16:
          v242 = 16;
          sub_10046A9D0();
          v111 = v232;
          sub_1000197C4(&type metadata for ListViewAction.CompletedSearchOnLaunchPhaseCodingKeys, &v242);
          swift_unknownObjectRelease();
          (*(v99 + 8))(v111, v98);
          v112 = sub_100010078();
          v113(v112);
          sub_100005E14();
          goto LABEL_26;
        default:
          v242 = 0;
          sub_10046AF74();
          sub_100008644(&type metadata for ListViewAction.EnteredSettingsCodingKeys, &v242);
          swift_unknownObjectRelease();
          v100 = sub_10000424C();
          v101(v100, v194);
          v102 = sub_100010078();
          v103(v102);
          sub_100005E14();
LABEL_26:
          swift_storeEnumTagMultiPayload();
LABEL_27:
          v172 = v239;
          sub_10046AA24(v97, v233);
          v110 = v172;
          break;
      }

      return sub_100006F14(v110);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_10046A774(uint64_t a1)
{
  sub_10046AFC8(&qword_100CBBD08, type metadata accessor for ListViewAction, aY_62);

  return ShortDescribable.description.getter();
}

uint64_t sub_10046A858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListViewAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10046A8BC()
{
  result = qword_100CBBD00;
  if (!qword_100CBBD00)
  {
    v3 = sub_10022E824(&qword_100CBBCF8, &unk_100A51730);
    result = swift_getWitnessTable(&protocol conformance descriptor for ShortDescription<A>, v3, v0, v1);
    atomic_store(result, &qword_100CBBD00);
  }

  return result;
}

uint64_t sub_10046A920(uint64_t a1)
{
  v2 = type metadata accessor for ListViewAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10046A97C()
{
  result = qword_100CBBDA0;
  if (!qword_100CBBDA0)
  {
    result = swift_getWitnessTable(byte_100A527F8, &type metadata for ListViewAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDA0);
  }

  return result;
}

unint64_t sub_10046A9D0()
{
  result = qword_100CBBDA8;
  if (!qword_100CBBDA8)
  {
    result = swift_getWitnessTable(aI_39, &type metadata for ListViewAction.CompletedSearchOnLaunchPhaseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDA8);
  }

  return result;
}

uint64_t sub_10046AA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListViewAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10046AA88()
{
  result = qword_100CBBDB0;
  if (!qword_100CBBDB0)
  {
    result = swift_getWitnessTable(byte_100A52758, &type metadata for ListViewAction.ResetExternalSearchQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDB0);
  }

  return result;
}

unint64_t sub_10046AADC()
{
  result = qword_100CBBDB8;
  if (!qword_100CBBDB8)
  {
    result = swift_getWitnessTable(byte_100A52708, &type metadata for ListViewAction.LocationTransitionBeganCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDB8);
  }

  return result;
}

unint64_t sub_10046AB30()
{
  result = qword_100CBBDC8;
  if (!qword_100CBBDC8)
  {
    result = swift_getWitnessTable(a9_16, &type metadata for ListViewAction.UpdatedSearchingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDC8);
  }

  return result;
}

unint64_t sub_10046AB84()
{
  result = qword_100CBBDD0;
  if (!qword_100CBBDD0)
  {
    result = swift_getWitnessTable(byte_100A52668, &type metadata for ListViewAction.DismissedNotificationsOptInAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDD0);
  }

  return result;
}

unint64_t sub_10046ABD8()
{
  result = qword_100CBBDD8;
  if (!qword_100CBBDD8)
  {
    result = swift_getWitnessTable(asc_100A52618, &type metadata for ListViewAction.TappedUnitsConfigurationButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDD8);
  }

  return result;
}

unint64_t sub_10046AC2C()
{
  result = qword_100CBBDE0;
  if (!qword_100CBBDE0)
  {
    result = swift_getWitnessTable(asc_100A525C8, &type metadata for ListViewAction.TappedWeatherMenuSettingsButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDE0);
  }

  return result;
}

unint64_t sub_10046AC80()
{
  result = qword_100CBBDE8;
  if (!qword_100CBBDE8)
  {
    result = swift_getWitnessTable(aY_61, &type metadata for ListViewAction.TappedReportWeatherButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDE8);
  }

  return result;
}

unint64_t sub_10046ACD4()
{
  result = qword_100CBBDF0;
  if (!qword_100CBBDF0)
  {
    result = swift_getWitnessTable(aB_3, &type metadata for ListViewAction.TappedPredictedLocationsNotificationOptInButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDF0);
  }

  return result;
}

unint64_t sub_10046AD28()
{
  result = qword_100CBBDF8;
  if (!qword_100CBBDF8)
  {
    result = swift_getWitnessTable(byte_100A524D8, &type metadata for ListViewAction.TappedPredictedLocationsNotificationSettingsButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBDF8);
  }

  return result;
}

unint64_t sub_10046AD7C()
{
  result = qword_100CBBE00;
  if (!qword_100CBBE00)
  {
    result = swift_getWitnessTable(aI_41, &type metadata for ListViewAction.TappedNotificationsOptInButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBE00);
  }

  return result;
}

unint64_t sub_10046ADD0()
{
  result = qword_100CBBE08;
  if (!qword_100CBBE08)
  {
    result = swift_getWitnessTable(byte_100A52438, &type metadata for ListViewAction.TappedNotificationSettingsButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBE08);
  }

  return result;
}

unint64_t sub_10046AE24()
{
  result = qword_100CBBE10;
  if (!qword_100CBBE10)
  {
    result = swift_getWitnessTable(asc_100A523E8, &type metadata for ListViewAction.TappedLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBE10);
  }

  return result;
}

unint64_t sub_10046AE78()
{
  result = qword_100CBBE28;
  if (!qword_100CBBE28)
  {
    result = swift_getWitnessTable(aY_60, &type metadata for ListViewAction.TappedDoneButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBE28);
  }

  return result;
}

unint64_t sub_10046AECC()
{
  result = qword_100CBBE30;
  if (!qword_100CBBE30)
  {
    result = swift_getWitnessTable(byte_100A52348, &type metadata for ListViewAction.TappedEditButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBE30);
  }

  return result;
}

unint64_t sub_10046AF20()
{
  result = qword_100CBBE38;
  if (!qword_100CBBE38)
  {
    result = swift_getWitnessTable(byte_100A522F8, &type metadata for ListViewAction.OpenNotificationsOptInFlowCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBE38);
  }

  return result;
}

unint64_t sub_10046AF74()
{
  result = qword_100CBBE40;
  if (!qword_100CBBE40)
  {
    result = swift_getWitnessTable(aI_40, &type metadata for ListViewAction.EnteredSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBE40);
  }

  return result;
}

uint64_t sub_10046AFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t getEnumTagSinglePayload for ListViewAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ListViewAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ListViewAction.TappedLocationCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_10046B320(_BYTE *result, int a2, int a3)
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

unint64_t sub_10046B3F0()
{
  result = qword_100CBBEE8;
  if (!qword_100CBBEE8)
  {
    result = swift_getWitnessTable(aI_42, &type metadata for ListViewAction.LocationTransitionBeganCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBEE8);
  }

  return result;
}

unint64_t sub_10046B448()
{
  result = qword_100CBBEF0;
  if (!qword_100CBBEF0)
  {
    result = swift_getWitnessTable(byte_100A51D50, &type metadata for ListViewAction.UpdatedSearchingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBEF0);
  }

  return result;
}

unint64_t sub_10046B4A0()
{
  result = qword_100CBBEF8;
  if (!qword_100CBBEF8)
  {
    result = swift_getWitnessTable(aY_63, &type metadata for ListViewAction.TappedLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBEF8);
  }

  return result;
}

unint64_t sub_10046B4F8()
{
  result = qword_100CBBF00;
  if (!qword_100CBBF00)
  {
    result = swift_getWitnessTable(byte_100A52280, &type metadata for ListViewAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF00);
  }

  return result;
}

unint64_t sub_10046B550()
{
  result = qword_100CBBF08;
  if (!qword_100CBBF08)
  {
    result = swift_getWitnessTable(aA_40, &type metadata for ListViewAction.EnteredSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF08);
  }

  return result;
}

unint64_t sub_10046B5A8()
{
  result = qword_100CBBF10;
  if (!qword_100CBBF10)
  {
    result = swift_getWitnessTable(asc_100A521C8, &type metadata for ListViewAction.EnteredSettingsCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF10);
  }

  return result;
}

unint64_t sub_10046B600()
{
  result = qword_100CBBF18;
  if (!qword_100CBBF18)
  {
    result = swift_getWitnessTable(byte_100A52150, &type metadata for ListViewAction.OpenNotificationsOptInFlowCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF18);
  }

  return result;
}

unint64_t sub_10046B658()
{
  result = qword_100CBBF20;
  if (!qword_100CBBF20)
  {
    result = swift_getWitnessTable(aY_64, &type metadata for ListViewAction.OpenNotificationsOptInFlowCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF20);
  }

  return result;
}

unint64_t sub_10046B6B0()
{
  result = qword_100CBBF28;
  if (!qword_100CBBF28)
  {
    result = swift_getWitnessTable(byte_100A52100, &type metadata for ListViewAction.TappedEditButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF28);
  }

  return result;
}

unint64_t sub_10046B708()
{
  result = qword_100CBBF30;
  if (!qword_100CBBF30)
  {
    result = swift_getWitnessTable(byte_100A52128, &type metadata for ListViewAction.TappedEditButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF30);
  }

  return result;
}

unint64_t sub_10046B760()
{
  result = qword_100CBBF38;
  if (!qword_100CBBF38)
  {
    result = swift_getWitnessTable(a1_18, &type metadata for ListViewAction.TappedDoneButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF38);
  }

  return result;
}

unint64_t sub_10046B7B8()
{
  result = qword_100CBBF40;
  if (!qword_100CBBF40)
  {
    result = swift_getWitnessTable(byte_100A520D8, &type metadata for ListViewAction.TappedDoneButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF40);
  }

  return result;
}

unint64_t sub_10046B810()
{
  result = qword_100CBBF48;
  if (!qword_100CBBF48)
  {
    result = swift_getWitnessTable(byte_100A51FF8, &type metadata for ListViewAction.TappedLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF48);
  }

  return result;
}

unint64_t sub_10046B868()
{
  result = qword_100CBBF50;
  if (!qword_100CBBF50)
  {
    result = swift_getWitnessTable(byte_100A52020, &type metadata for ListViewAction.TappedLocationCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF50);
  }

  return result;
}

unint64_t sub_10046B8C0()
{
  result = qword_100CBBF58;
  if (!qword_100CBBF58)
  {
    result = swift_getWitnessTable(a9_17, &type metadata for ListViewAction.TappedNotificationSettingsButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF58);
  }

  return result;
}

unint64_t sub_10046B918()
{
  result = qword_100CBBF60;
  if (!qword_100CBBF60)
  {
    result = swift_getWitnessTable(byte_100A51FD0, &type metadata for ListViewAction.TappedNotificationSettingsButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF60);
  }

  return result;
}

unint64_t sub_10046B970()
{
  result = qword_100CBBF68;
  if (!qword_100CBBF68)
  {
    result = swift_getWitnessTable(byte_100A51F58, &type metadata for ListViewAction.TappedNotificationsOptInButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF68);
  }

  return result;
}

unint64_t sub_10046B9C8()
{
  result = qword_100CBBF70;
  if (!qword_100CBBF70)
  {
    result = swift_getWitnessTable(aQ_52, &type metadata for ListViewAction.TappedNotificationsOptInButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF70);
  }

  return result;
}

unint64_t sub_10046BA20()
{
  result = qword_100CBBF78;
  if (!qword_100CBBF78)
  {
    result = swift_getWitnessTable(asc_100A51F08, &type metadata for ListViewAction.TappedPredictedLocationsNotificationSettingsButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF78);
  }

  return result;
}

unint64_t sub_10046BA78()
{
  result = qword_100CBBF80;
  if (!qword_100CBBF80)
  {
    result = swift_getWitnessTable(byte_100A51F30, &type metadata for ListViewAction.TappedPredictedLocationsNotificationSettingsButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF80);
  }

  return result;
}

unint64_t sub_10046BAD0()
{
  result = qword_100CBBF88;
  if (!qword_100CBBF88)
  {
    result = swift_getWitnessTable(asc_100A51EB8, &type metadata for ListViewAction.TappedPredictedLocationsNotificationOptInButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF88);
  }

  return result;
}

unint64_t sub_10046BB28()
{
  result = qword_100CBBF90;
  if (!qword_100CBBF90)
  {
    result = swift_getWitnessTable(byte_100A51EE0, &type metadata for ListViewAction.TappedPredictedLocationsNotificationOptInButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF90);
  }

  return result;
}

unint64_t sub_10046BB80()
{
  result = qword_100CBBF98;
  if (!qword_100CBBF98)
  {
    result = swift_getWitnessTable(aY_65, &type metadata for ListViewAction.TappedReportWeatherButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBF98);
  }

  return result;
}

unint64_t sub_10046BBD8()
{
  result = qword_100CBBFA0;
  if (!qword_100CBBFA0)
  {
    result = swift_getWitnessTable(aA_41, &type metadata for ListViewAction.TappedReportWeatherButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFA0);
  }

  return result;
}

unint64_t sub_10046BC30()
{
  result = qword_100CBBFA8;
  if (!qword_100CBBFA8)
  {
    result = swift_getWitnessTable(asc_100A51E18, &type metadata for ListViewAction.TappedWeatherMenuSettingsButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFA8);
  }

  return result;
}

unint64_t sub_10046BC88()
{
  result = qword_100CBBFB0;
  if (!qword_100CBBFB0)
  {
    result = swift_getWitnessTable(byte_100A51E40, &type metadata for ListViewAction.TappedWeatherMenuSettingsButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFB0);
  }

  return result;
}

unint64_t sub_10046BCE0()
{
  result = qword_100CBBFB8;
  if (!qword_100CBBFB8)
  {
    result = swift_getWitnessTable(byte_100A51DC8, &type metadata for ListViewAction.TappedUnitsConfigurationButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFB8);
  }

  return result;
}

unint64_t sub_10046BD38()
{
  result = qword_100CBBFC0;
  if (!qword_100CBBFC0)
  {
    result = swift_getWitnessTable(byte_100A51DF0, &type metadata for ListViewAction.TappedUnitsConfigurationButtonCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFC0);
  }

  return result;
}

unint64_t sub_10046BD90()
{
  result = qword_100CBBFC8;
  if (!qword_100CBBFC8)
  {
    result = swift_getWitnessTable(aI_43, &type metadata for ListViewAction.DismissedNotificationsOptInAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFC8);
  }

  return result;
}

unint64_t sub_10046BDE8()
{
  result = qword_100CBBFD0;
  if (!qword_100CBBFD0)
  {
    result = swift_getWitnessTable(a1_19, &type metadata for ListViewAction.DismissedNotificationsOptInAlertCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFD0);
  }

  return result;
}

unint64_t sub_10046BE40()
{
  result = qword_100CBBFD8;
  if (!qword_100CBBFD8)
  {
    result = swift_getWitnessTable(asc_100A51CC0, &type metadata for ListViewAction.UpdatedSearchingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFD8);
  }

  return result;
}

unint64_t sub_10046BE98()
{
  result = qword_100CBBFE0;
  if (!qword_100CBBFE0)
  {
    result = swift_getWitnessTable(byte_100A51CE8, &type metadata for ListViewAction.UpdatedSearchingCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFE0);
  }

  return result;
}

unint64_t sub_10046BEF0()
{
  result = qword_100CBBFE8;
  if (!qword_100CBBFE8)
  {
    result = swift_getWitnessTable(asc_100A51C08, &type metadata for ListViewAction.LocationTransitionBeganCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFE8);
  }

  return result;
}

unint64_t sub_10046BF48()
{
  result = qword_100CBBFF0;
  if (!qword_100CBBFF0)
  {
    result = swift_getWitnessTable(byte_100A51C30, &type metadata for ListViewAction.LocationTransitionBeganCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFF0);
  }

  return result;
}

unint64_t sub_10046BFA0()
{
  result = qword_100CBBFF8;
  if (!qword_100CBBFF8)
  {
    result = swift_getWitnessTable(asc_100A51BB8, &type metadata for ListViewAction.ResetExternalSearchQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBBFF8);
  }

  return result;
}

unint64_t sub_10046BFF8()
{
  result = qword_100CBC000;
  if (!qword_100CBC000)
  {
    result = swift_getWitnessTable(byte_100A51BE0, &type metadata for ListViewAction.ResetExternalSearchQueryCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBC000);
  }

  return result;
}

unint64_t sub_10046C050()
{
  result = qword_100CBC008;
  if (!qword_100CBC008)
  {
    result = swift_getWitnessTable(aY_66, &type metadata for ListViewAction.CompletedSearchOnLaunchPhaseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBC008);
  }

  return result;
}

unint64_t sub_10046C0A8()
{
  result = qword_100CBC010;
  if (!qword_100CBC010)
  {
    result = swift_getWitnessTable(aA_42, &type metadata for ListViewAction.CompletedSearchOnLaunchPhaseCodingKeys, v0, v1);
    atomic_store(result, &qword_100CBC010);
  }

  return result;
}

unint64_t sub_10046C100()
{
  result = qword_100CBC018;
  if (!qword_100CBC018)
  {
    result = swift_getWitnessTable(byte_100A521F0, &type metadata for ListViewAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBC018);
  }

  return result;
}

unint64_t sub_10046C158()
{
  result = qword_100CBC020;
  if (!qword_100CBC020)
  {
    result = swift_getWitnessTable(byte_100A52218, &type metadata for ListViewAction.CodingKeys, v0, v1);
    atomic_store(result, &qword_100CBC020);
  }

  return result;
}

uint64_t sub_10046C1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v181 = a1;
  v179 = a3;
  v6 = *v4;
  v180 = v4;
  v175 = v6;
  v7 = type metadata accessor for Location();
  v8 = sub_100003E5C(v7, &v189);
  v10 = v9;
  __chkstk_darwin(v8);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_100003990(&v156 - v15);
  v16 = sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
  sub_100003E5C(v16, v183);
  v159 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  sub_100003990(v19);
  v20 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  v21 = sub_100003E5C(v20, v187);
  v171 = v22;
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_100003990(v24 - v23);
  v25 = type metadata accessor for Deviation();
  v26 = sub_100003E5C(v25, v185);
  v166 = v27;
  __chkstk_darwin(v26);
  sub_1000037D8();
  sub_100003990(v29 - v28);
  v30 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v31 = sub_100003E5C(v30, v184);
  v163 = v32;
  __chkstk_darwin(v31);
  sub_100003C38();
  v162 = v33 - v34;
  __chkstk_darwin(v35);
  sub_100003990(&v156 - v36);
  v37 = sub_10022C350(&qword_100CBC0C8, &unk_100A528F8);
  sub_100003E5C(v37, &v188);
  v160 = v38;
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  sub_100003990(v40);
  sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  sub_100003990(v42);
  v43 = sub_10022C350(&qword_100CBC0D0, &qword_100A52908);
  sub_100003E5C(v43, v186);
  v168 = v44;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  sub_100003990(v46);
  sub_10022C350(&qword_100CBC0D8, &unk_100A52910);
  sub_100003828();
  __chkstk_darwin(v47);
  v49 = &v156 - v48;
  v50 = type metadata accessor for HistoricalComparison();
  sub_1000037C4();
  v52 = v51;
  __chkstk_darwin(v53);
  sub_100003C38();
  v56 = v54 - v55;
  __chkstk_darwin(v57);
  sub_100003990(&v156 - v58);
  sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  sub_100003828();
  __chkstk_darwin(v59);
  v61 = &v156 - v60;
  type metadata accessor for HistoricalComparisons();
  sub_1000037C4();
  v63 = v62;
  __chkstk_darwin(v64);
  sub_1000037D8();
  v67 = v66 - v65;
  v68 = a2;
  v70 = v69;
  sub_1004709A8(v68, v61);
  if (sub_100024D10(v61, 1, v70) == 1)
  {
    v71 = &qword_100CABD10;
    v72 = &qword_100A3ABB0;
    v73 = v61;
  }

  else
  {
    (*(v63 + 32))(v67, v61, v70);
    v74 = v70;
    sub_1003DFA78();
    if (sub_100024D10(v49, 1, v50) != 1)
    {
      v156 = v63;
      v157 = v70;
      (*(v52 + 32))(v177, v49, v50);
      if (HistoricalComparisons.hasValidData.getter())
      {
        if (qword_100CA29D8 != -1)
        {
          swift_once();
        }

        sub_10006CA94(&qword_100CBC0E0, v94, type metadata accessor for AveragesComponentViewModelFactory, aE_26);
        v95 = v180;
        Configurable.setting<A>(_:)();
        if (LOBYTE(v182[0]) == 1)
        {
          v96 = type metadata accessor for Date();
          sub_10001B350(v172, 1, 1, v96);
          v97 = v160;
          (*(v160 + 104))(v173, enum case for TrendBaseline.Kind.mean<A>(_:), v174);
          v98 = objc_opt_self();
          v178 = v67;
          v99 = [v98 inches];
          v175 = v50;
          v100 = v99;
          v101 = sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
          v102 = v161;
          Measurement.init(value:unit:)();
          v103 = [v98 inches];
          v104 = v162;
          Measurement.init(value:unit:)();
          sub_1000497DC();
          v105 = v164;
          sub_100013824();
          v106();
          v107 = v167;
          v108 = v173;
          v109 = v172;
          static Trend<>.mock(baselineKind:baselineValue:currentValue:deviation:baselineStartDate:)();
          v100[1](v105, v101);
          v110 = *(v163 + 8);
          v111 = v165;
          v110(v104, v165);
          v110(v102, v111);
          (*(v97 + 8))(v108, v174);
          sub_10003FDF4(v109, &unk_100CB2CF0, &unk_100A2D7F0);
          sub_1000497DC();
          v112 = v170;
          sub_100013824();
          v113();
          sub_10046FA40(v107, v112, v180, v181, v179);
          (*(v111 + 8))(v112, v110);
          (*(v168 + 8))(v107, v169);
          v114 = sub_100074A34();
          v115(v114, v175);
          return (*(v156 + 8))(v178, v157);
        }

        (*(v52 + 16))(v56, v177, v50);
        v136 = (*(v52 + 88))(v56, v50);
        if (v136 == enum case for HistoricalComparison.highTemperature(_:) || v136 == enum case for HistoricalComparison.lowTemperature(_:))
        {
          v138 = sub_1000197F4();
          v139(v138);
          v140 = v159;
          v141 = v158;
          sub_100013824();
          v142();
          sub_10046E2B4(v141, v95, v181, v179);
          (*(v140 + 8))(v141, v56);
        }

        else
        {
          if (v136 != enum case for HistoricalComparison.precipitationAmount(_:) && v136 != enum case for HistoricalComparison.snowfallAmount(_:))
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v148 = sub_1000197F4();
          v149(v148);
          v150 = sub_100008668();
          v151(v150);
          sub_1000497DC();
          v152 = v170;
          sub_100013824();
          v153();
          sub_10046FA40(v63, v152, v95, v181, v179);
          (*(v74 + 8))(v152, v56);
          (*(v10 + 8))(v63, v52);
        }

        v154 = sub_100074A34();
        v155(v154, v50);
        v123 = v156;
      }

      else
      {
        v175 = v50;
        v116 = v181;
        if (qword_100CA2690 != -1)
        {
          sub_1000146E0(&qword_100CA2690);
        }

        v117 = type metadata accessor for Logger();
        sub_10000703C(v117, qword_100D90A18);
        v118 = v176;
        v119 = v178;
        (*(v10 + 16))(v176, v116, v178);
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();
        v122 = os_log_type_enabled(v120, v121);
        v123 = v156;
        if (v122)
        {
          v124 = swift_slowAlloc();
          v174 = swift_slowAlloc();
          v182[0] = v174;
          sub_10000CB2C(7.2225e-34);
          sub_100005E28();
          sub_10006CA94(v125, 255, v126, &protocol conformance descriptor for Location);
          v127 = dispatch thunk of CustomStringConvertible.description.getter();
          v128 = v67;
          v130 = v129;
          (*(v10 + 8))(v118, v119);
          v131 = sub_100078694(v127, v130, v182);
          v67 = v128;

          *(v124 + 14) = v131;
          sub_10001768C(&_mh_execute_header, v132, v133, "Could not find both a temperature and precipitation weather comparison while making the averages component model. Show internal error message. location=%{private,mask.hash}s");
          v134 = v174;
          sub_100006F14(v174);
          sub_100003884(v134);
          v135 = v124;
          v116 = v181;
          sub_100003884(v135);
        }

        else
        {

          (*(v10 + 8))(v118, v119);
        }

        v143 = sub_10001008C();
        sub_10046F828(v143, v144, v116, v145);
        v146 = sub_100074A34();
        v147(v146, v175);
      }

      return (*(v123 + 8))(v67, v157);
    }

    (*(v63 + 8))(v67, v70);
    v71 = &qword_100CBC0D8;
    v72 = &unk_100A52910;
    v73 = v49;
  }

  sub_10003FDF4(v73, v71, v72);
  v75 = v181;
  v76 = v178;
  if (qword_100CA2690 != -1)
  {
    sub_1000146E0(&qword_100CA2690);
  }

  v77 = type metadata accessor for Logger();
  sub_10000703C(v77, qword_100D90A18);
  (*(v10 + 16))(v13, v75, v76);
  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v182[0] = v81;
    sub_10000CB2C(7.2225e-34);
    sub_100005E28();
    sub_10006CA94(v82, 255, v83, &protocol conformance descriptor for Location);
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v86 = v85;
    (*(v10 + 8))(v13, v76);
    v87 = sub_100078694(v84, v86, v182);

    *(v80 + 14) = v87;
    sub_10001768C(&_mh_execute_header, v88, v89, "Encountered empty weather comparisons while making the averages component model. Show internal error message. location=%{private,mask.hash}s");
    sub_100006F14(v81);
    sub_100003884(v81);
    sub_100003884(v80);
  }

  else
  {

    (*(v10 + 8))(v13, v76);
  }

  v90 = sub_10001008C();
  return sub_10046F828(v90, v91, v75, v92);
}

uint64_t sub_10046D1A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v67 = a3;
  v68 = a4;
  v8 = sub_10022C350(&qword_100CBC0E8, &unk_100A52920);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v63 - v10;
  v12 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  if (a5 <= 0.0)
  {
    v64 = a2;
    v65 = a1;
    if (v67 & 1) != 0 && (sub_10022C350(&qword_100CBC0D0, &qword_100A52908), Trend.currentValue.getter(), Trend.baseline.getter(), TrendBaseline.value.getter(), (*(v9 + 8))(v11, v8), sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr), v34 = static Measurement.< infix<A, B>(_:_:)(), v35 = *(v13 + 8), v35(v15, v12), v35(v18, v12), (v34))
    {
      v36 = [objc_opt_self() mainBundle];
      v71._object = 0x8000000100ACA600;
      v37._countAndFlagsBits = 0x766120776F6C6562;
      v37._object = 0xED00006567617265;
      v32 = 0xE000000000000000;
      v71._countAndFlagsBits = 0xD000000000000082;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v71);
      countAndFlagsBits = v39._countAndFlagsBits;
      object = v39._object;

      v42 = String.trimmingHyphensAndMinusSigns()();
      result = v42._countAndFlagsBits;
      v20 = v42._object;
      v30 = 0;
    }

    else
    {
      v43 = objc_opt_self();
      v44 = [v43 mainBundle];
      if (a5 == 0.0)
      {
        v45._countAndFlagsBits = 0xD000000000000022;
        v72._object = 0x8000000100ACA4E0;
        v45._object = 0x8000000100ACA4B0;
        v72._countAndFlagsBits = 0xD00000000000009DLL;
        v46._countAndFlagsBits = 0x657661206D6F7266;
        v46._object = 0xEC00000065676172;
        v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v72);
        v66 = v47._countAndFlagsBits;
        v48 = v47._object;

        v49 = [v43 mainBundle];
        v62 = 0x8000000100ACA5C0;
        v50 = 0xD000000000000038;
        v51 = 0x8000000100ACA580;
        v52 = 0xD00000000000003FLL;
      }

      else
      {
        v53._countAndFlagsBits = 0xD000000000000028;
        v73._object = 0x8000000100ACA370;
        v53._object = 0x8000000100ACA340;
        v73._countAndFlagsBits = 0xD0000000000000A4;
        v54._countAndFlagsBits = 0x657661206D6F7266;
        v54._object = 0xEC00000065676172;
        v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v44, v54, v73);
        v66 = v55._countAndFlagsBits;
        v48 = v55._object;

        v49 = [v43 mainBundle];
        v62 = 0x8000000100ACA460;
        v51 = 0x8000000100ACA420;
        v52 = 0xD000000000000048;
        v50 = 0xD000000000000031;
      }

      v56._countAndFlagsBits = 0x206D6F7266204025;
      v56._object = 0xEF65676172657661;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v50, 0, v49, v56, *&v52);

      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100A2C3F0;
      *(v57 + 56) = &type metadata for String;
      *(v57 + 64) = sub_100035744();
      v58 = v64;
      *(v57 + 32) = v65;
      *(v57 + 40) = v58;

      v30 = static String.localizedStringWithFormat(_:_:)();
      v32 = v59;

      object = v48;
      countAndFlagsBits = v66;
      v60 = String.replacingHyphensWithMinusSigns()();
      result = v60._countAndFlagsBits;
      v20 = v60._object;
    }
  }

  else
  {
    v64 = sub_10046E020(a1, a2);
    v20 = v19;
    v21 = objc_opt_self();
    v22 = [v21 mainBundle];
    v23._countAndFlagsBits = 0xD000000000000029;
    v69._object = 0x8000000100ACA6C0;
    v24._countAndFlagsBits = 0x76612065766F6261;
    v24._object = 0xED00006567617265;
    v23._object = 0x8000000100ACA690;
    v69._countAndFlagsBits = 0xD000000000000097;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v69);
    v65 = v25._object;
    v66 = v25._countAndFlagsBits;

    v26 = [v21 mainBundle];
    v27._countAndFlagsBits = 0xD000000000000011;
    v70._object = 0x8000000100ACA7C0;
    v28._object = 0x8000000100ACA760;
    v27._object = 0x8000000100ACA7A0;
    v70._countAndFlagsBits = 0xD00000000000004ALL;
    v28._countAndFlagsBits = 0xD000000000000031;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v26, v27, v70);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100A2C3F0;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100035744();
    *(v29 + 32) = a1;
    *(v29 + 40) = a2;

    v30 = static String.localizedStringWithFormat(_:_:)();
    v32 = v31;

    if (v67)
    {

      v20 = a2;
      result = a1;
    }

    else
    {
      result = v64;
    }

    object = v65;
    countAndFlagsBits = v66;
  }

  v61 = v68;
  *v68 = result;
  v61[1] = v20;
  v61[2] = countAndFlagsBits;
  v61[3] = object;
  v61[4] = v30;
  v61[5] = v32;
  return result;
}

uint64_t sub_10046D8EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v69 = a3;
  v70 = a4;
  v8 = sub_10022C350(&qword_100CBB580, &unk_100A50E30);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - v10;
  v12 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v65 - v17;
  if (a5 <= 0.0)
  {
    v66 = a2;
    v67 = a1;
    if (v69 & 1) != 0 && (sub_10022C350(&unk_100CABCA0, qword_100A3AB60), Trend.currentValue.getter(), Trend.baseline.getter(), TrendBaseline.value.getter(), (*(v9 + 8))(v11, v8), sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr), v34 = static Measurement.< infix<A, B>(_:_:)(), v35 = *(v13 + 8), v35(v15, v12), v35(v18, v12), (v34))
    {
      v36 = [objc_opt_self() mainBundle];
      v73._object = 0x8000000100AC9DF0;
      v32 = 0xE000000000000000;
      v37._countAndFlagsBits = 0xD000000000000018;
      v37._object = 0x8000000100AC9DD0;
      v73._countAndFlagsBits = 0xD000000000000085;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v73);
      countAndFlagsBits = v39._countAndFlagsBits;
      object = v39._object;

      v42 = String.trimmingHyphensAndMinusSigns()();
      result = v42._countAndFlagsBits;
      v20 = v42._object;
      v30 = 0;
    }

    else
    {
      v43 = objc_opt_self();
      v44 = [v43 mainBundle];
      if (a5 == 0.0)
      {
        v74._object = 0x8000000100AC9C60;
        v45._countAndFlagsBits = 0xD00000000000002ELL;
        v45._object = 0x8000000100AC9C30;
        v46._object = 0x8000000100AC9A80;
        v74._countAndFlagsBits = 0x10000000000000ABLL;
        v46._countAndFlagsBits = 0xD000000000000017;
        v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v74);
        v68 = v47._countAndFlagsBits;
        v48 = v47._object;

        v49 = [v43 mainBundle];
        v64 = 0x8000000100AC9D60;
        v50 = 0xD000000000000044;
        v51 = 0x8000000100AC9D10;
        v52 = 0xD00000000000001ALL;
        v53 = 0x8000000100AC9BA0;
        v54 = 0x1000000000000062;
        v55.super.isa = v49;
      }

      else
      {
        v75._object = 0x8000000100AC9AA0;
        v56._countAndFlagsBits = 0xD000000000000034;
        v56._object = 0x8000000100AC9A40;
        v57._object = 0x8000000100AC9A80;
        v75._countAndFlagsBits = 0x10000000000000B2;
        v57._countAndFlagsBits = 0xD000000000000017;
        v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v44, v57, v75);
        v68 = v58._countAndFlagsBits;
        v48 = v58._object;

        v49 = [v43 mainBundle];
        v64 = 0x8000000100AC9BC0;
        v50 = 0xD00000000000003DLL;
        v51 = 0x8000000100AC9B60;
        v52 = 0xD00000000000001ALL;
        v53 = 0x8000000100AC9BA0;
        v55.super.isa = v49;
        v54 = 0x1000000000000060;
      }

      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v50, 0, v55, *&v52, *&v54);

      sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_100A2C3F0;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_100035744();
      v60 = v66;
      *(v59 + 32) = v67;
      *(v59 + 40) = v60;

      v30 = static String.localizedStringWithFormat(_:_:)();
      v32 = v61;

      object = v48;
      countAndFlagsBits = v68;
      v62 = String.replacingHyphensWithMinusSigns()();
      result = v62._countAndFlagsBits;
      v20 = v62._object;
    }
  }

  else
  {
    v66 = sub_10046E020(a1, a2);
    v20 = v19;
    v21 = objc_opt_self();
    v22 = [v21 mainBundle];
    v71._object = 0x8000000100AC9EE0;
    v23._countAndFlagsBits = 0xD000000000000035;
    v23._object = 0x8000000100AC9E80;
    v24._countAndFlagsBits = 0xD000000000000018;
    v24._object = 0x8000000100AC9EC0;
    v71._countAndFlagsBits = 0x10000000000000A5;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v71);
    v67 = v25._object;
    v68 = v25._countAndFlagsBits;

    v26 = [v21 mainBundle];
    v72._object = 0x8000000100AC9FF0;
    v27._countAndFlagsBits = 0xD00000000000003DLL;
    v27._object = 0x8000000100AC9F90;
    v28._countAndFlagsBits = 0xD00000000000001CLL;
    v28._object = 0x8000000100AC9FD0;
    v72._countAndFlagsBits = 0x1000000000000060;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v72);

    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100A2C3F0;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100035744();
    *(v29 + 32) = a1;
    *(v29 + 40) = a2;

    v30 = static String.localizedStringWithFormat(_:_:)();
    v32 = v31;

    if (v69)
    {

      v20 = a2;
      result = a1;
    }

    else
    {
      result = v66;
    }

    object = v67;
    countAndFlagsBits = v68;
  }

  v63 = v70;
  *v70 = result;
  v63[1] = v20;
  v63[2] = countAndFlagsBits;
  v63[3] = object;
  v63[4] = v30;
  v63[5] = v32;
  return result;
}

uint64_t sub_10046E020(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0x8000000100ACA0A0;
  v5._object = 0x8000000100ACA060;
  v5._countAndFlagsBits = 0xD000000000000030;
  v6._countAndFlagsBits = 4203819;
  v6._object = 0xE300000000000000;
  v10._countAndFlagsBits = 0x1000000000000070;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v10);

  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100035744();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = static String.localizedStringWithFormat(_:_:)();

  return v8;
}

uint64_t sub_10046E15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() mainBundle];
  v15._object = 0x8000000100AC98F0;
  v9._countAndFlagsBits = 0x4025204025;
  v10._object = 0x8000000100AC98B0;
  v10._countAndFlagsBits = 0xD000000000000037;
  v9._object = 0xE500000000000000;
  v15._countAndFlagsBits = 0x1000000000000142;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v8, v9, v15);

  sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2D320;
  *(v11 + 56) = &type metadata for String;
  v12 = sub_100035744();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v12;
  *(v11 + 64) = v12;
  *(v11 + 72) = a3;
  *(v11 + 80) = a4;

  v13 = String.init(format:_:)();

  return v13;
}

uint64_t sub_10046E2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v198 = a3;
  v199 = a2;
  v223 = a1;
  v197 = a4;
  v227 = type metadata accessor for WeatherFormatPlaceholder();
  v203 = *(v227 - 8);
  __chkstk_darwin(v227);
  v224 = v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v5 - 8);
  v200 = v171 - v6;
  v7 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v8 = *(v7 - 8);
  v220 = v7;
  v221 = v8;
  __chkstk_darwin(v7);
  v214 = v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v226 = v171 - v11;
  v12 = type metadata accessor for Locale.Language();
  v216 = *(v12 - 8);
  v217 = v12;
  __chkstk_darwin(v12);
  v210 = v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for Locale();
  v209 = *(v204 - 8);
  __chkstk_darwin(v204);
  v205 = v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_10022C350(&qword_100CBB580, &unk_100A50E30);
  v212 = *(v207 - 8);
  __chkstk_darwin(v207);
  v206 = v171 - v15;
  v16 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v218 = v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v202 = v171 - v20;
  __chkstk_darwin(v21);
  v23 = v171 - v22;
  __chkstk_darwin(v24);
  v26 = v171 - v25;
  __chkstk_darwin(v27);
  v208 = v171 - v28;
  v29 = sub_10022C350(&unk_100CABCA0, qword_100A3AB60);
  Trend.currentValue.getter();
  v30 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v31 = UnitManager.temperature.getter();

  Measurement<>.converted(to:)();

  v32 = *(v17 + 8);
  v32(v23, v16);
  Measurement.rounded.getter();
  v32(v26, v16);
  v33 = v206;
  v211 = v29;
  Trend.baseline.getter();
  v34 = v207;
  TrendBaseline.value.getter();
  v35 = *(v212 + 8);
  v212 += 8;
  v201 = v35;
  v35(v33, v34);
  v225 = v30;
  static UnitManager.standard.getter();
  v36 = UnitManager.temperature.getter();

  Measurement<>.converted(to:)();

  v32(v23, v16);
  Measurement.rounded.getter();
  v32(v26, v16);
  Measurement.rounded.getter();
  Measurement.rounded.getter();
  sub_10000C70C(0, &qword_100CA51B0, NSUnitTemperature_ptr);
  static Measurement<>.- infix(_:_:)();
  v32(v23, v16);
  v222 = v26;
  v219 = v16;
  v215 = v17 + 8;
  v213 = v32;
  v32(v26, v16);
  v37 = v205;
  static Locale.current.getter();
  v38 = v210;
  Locale.language.getter();
  v39 = v37;
  v40 = v204;
  (*(v209 + 8))(v39);
  v41 = Locale.Language.prefersFullTemperatureScale.getter();
  v216[1](v38, v217);
  if (v41)
  {
    static Set<>.value.getter();
    v42 = v200;
    sub_10001B350(v200, 1, 1, v40);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_10003FDF4(v42, &qword_100CAA9F0, qword_100A44F50);
    LODWORD(v217) = enum case for WeatherFormatPlaceholder.none(_:);
    v43 = v203;
    v216 = *(v203 + 104);
    v210 = ((v203 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000);
    v44 = v224;
    v45 = v227;
    (v216)(v224);
    static UnitManager.standard.getter();
    v196 = sub_10006CA94(&qword_100CA5410, 255, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
    v46 = v220;
    v194 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v48 = v47;

    v193 = *(v43 + 8);
    v209 = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v193(v44, v45);
    v49 = v221 + 8;
    v221 = *(v221 + 1);
    v205 = (v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v50 = v226;
    v221(v226, v46);

    static Set<>.unit.getter();
    sub_10001B350(v42, 1, 1, v204);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_10003FDF4(v42, &qword_100CAA9F0, qword_100A44F50);
    v51 = v227;
    (v216)(v44, v217, v227);
    static UnitManager.standard.getter();
    v52 = v220;
    v53 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v195 = v54;
    v196 = v53;

    v55 = v44;
    v56 = v194;
    v193(v55, v51);
    v57 = v221;
    v221(v50, v52);
  }

  else
  {
    v58 = v226;
    static WeatherFormatStyle<>.weather.getter();
    v59 = v203;
    v60 = *(v203 + 104);
    v210 = ((v203 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000);
    v61 = v224;
    LODWORD(v217) = enum case for WeatherFormatPlaceholder.none(_:);
    v62 = v227;
    v216 = v60;
    (v60)(v224);
    static UnitManager.standard.getter();
    sub_10006CA94(&qword_100CA5410, 255, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
    v63 = v220;
    v56 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v48 = v64;

    v65 = *(v59 + 8);
    v209 = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v65(v61, v62);
    v57 = *(v221 + 1);
    v205 = ((v221 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v57(v58, v63);

    v195 = 0;
    v196 = 0;
  }

  v66 = v219;
  Measurement.value.getter();
  sub_10046D8EC(v56, v48, 0, v229, v67);
  v189 = v229[1];
  v190 = v229[0];
  v193 = v229[3];
  v194 = v229[2];
  v191 = v229[5];
  v192 = v229[4];

  Measurement.value.getter();
  sub_10046D8EC(v56, v48, 1, v229, v68);
  v69 = v229[0];
  v70 = v229[1];
  v71 = v229[2];
  v72 = v229[3];

  v73 = sub_10046E15C(v69, v70, v71, v72);
  v185 = v74;
  v186 = v73;

  v75 = objc_opt_self();
  v76 = [v75 mainBundle];
  v77._countAndFlagsBits = 0xD00000000000001ELL;
  v230._object = 0x8000000100AC9590;
  v78._countAndFlagsBits = 0x7961646F54;
  v77._object = 0x8000000100AC9570;
  v230._countAndFlagsBits = 0xD00000000000003DLL;
  v78._object = 0xE500000000000000;
  v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v77, 0, v76, v78, v230);
  object = v79._object;
  countAndFlagsBits = v79._countAndFlagsBits;

  v178 = "'s High value for temperature";
  v172 = v75;
  v80 = [v75 mainBundle];
  v231._object = 0x8000000100AC9600;
  v81._countAndFlagsBits = 0x2073277961646F54;
  v81._object = 0xEC00000068676948;
  v82._object = 0x8000000100AC95D0;
  v231._countAndFlagsBits = 0xD00000000000004BLL;
  v82._countAndFlagsBits = 0xD00000000000002CLL;
  v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, 0, v80, v81, v231);
  v181 = v83._object;
  v182 = v83._countAndFlagsBits;

  v84 = [v75 mainBundle];
  v232._object = 0x8000000100AC9690;
  v85._countAndFlagsBits = 0xD00000000000003BLL;
  v85._object = 0x8000000100AC9650;
  v86._countAndFlagsBits = 1076181576;
  v86._object = 0xE400000000000000;
  v232._countAndFlagsBits = 0x100000000000004BLL;
  v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v84, v86, v232);
  v184 = v87._countAndFlagsBits;
  v180 = v87._object;

  v200 = sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v88 = swift_allocObject();
  v174 = xmmword_100A2C3F0;
  *(v88 + 16) = xmmword_100A2C3F0;
  Trend.currentValue.getter();
  v89 = v226;
  static WeatherFormatStyle<>.weather.getter();
  v90 = v214;
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v91 = v66;
  v92 = v220;
  v57(v89, v220);
  v221 = v57;
  v93 = v224;
  v94 = v227;
  (v216)(v224, v217, v227);
  static UnitManager.standard.getter();
  v204 = sub_10006CA94(&qword_100CA5410, 255, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitTemperature.BaseWeatherFormatStyle);
  v95 = v222;
  v183 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v179 = v96;

  v203 = *(v203 + 8);
  (v203)(v93, v94);
  v57(v90, v92);
  v213(v95, v91);
  *(v88 + 56) = &type metadata for String;
  v173 = sub_100035744();
  *(v88 + 64) = v173;
  v97 = v179;
  *(v88 + 32) = v183;
  *(v88 + 40) = v97;
  v98 = String.init(format:_:)();
  v183 = v99;
  v184 = v98;

  v100 = v172;
  v101 = [v172 mainBundle];
  v102._countAndFlagsBits = 0xD000000000000017;
  v233._object = 0x8000000100AC9700;
  v103._countAndFlagsBits = 0x65676172657641;
  v102._object = 0x8000000100AC96E0;
  v233._countAndFlagsBits = 0xD000000000000041;
  v103._object = 0xE700000000000000;
  v104 = NSLocalizedString(_:tableName:bundle:value:comment:)(v102, 0, v101, v103, v233);
  v179 = v104._object;
  v180 = v104._countAndFlagsBits;

  v105 = [v100 mainBundle];
  v234._object = 0x8000000100AC9750;
  v106._countAndFlagsBits = 0x2065676172657641;
  v107._object = (v178 | 0x8000000000000000);
  v234._countAndFlagsBits = 0xD00000000000004BLL;
  v107._countAndFlagsBits = 0xD00000000000002CLL;
  v106._object = 0xEC00000068676948;
  v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v107, 0, v105, v106, v234);
  v175 = v108._object;
  v176 = v108._countAndFlagsBits;

  v109 = [v100 mainBundle];
  v110._countAndFlagsBits = 0xD000000000000020;
  v235._object = 0x8000000100AC97D0;
  v110._object = 0x8000000100AC97A0;
  v235._countAndFlagsBits = 0xD00000000000004ALL;
  v111._countAndFlagsBits = 6780481;
  v111._object = 0xE300000000000000;
  v112 = NSLocalizedString(_:tableName:bundle:value:comment:)(v110, 0, v109, v111, v235);
  v177 = v112._object;
  v178 = v112._countAndFlagsBits;

  v113 = [v100 mainBundle];
  v236._object = 0x8000000100AC9860;
  v114._countAndFlagsBits = 0xD00000000000003ELL;
  v114._object = 0x8000000100AC9820;
  v236._countAndFlagsBits = 0x100000000000004FLL;
  v115._countAndFlagsBits = 1076181576;
  v115._object = 0xE400000000000000;
  v116 = NSLocalizedString(_:tableName:bundle:value:comment:)(v114, 0, v113, v115, v236);
  v171[1] = v116._object;
  v172 = v116._countAndFlagsBits;

  v117 = swift_allocObject();
  *(v117 + 16) = v174;
  v118 = v206;
  Trend.baseline.getter();
  v119 = v207;
  TrendBaseline.value.getter();
  v201(v118, v119);
  v120 = v226;
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v121 = v220;
  v221(v120, v220);
  v122 = v224;
  v123 = v227;
  (v216)(v224, v217, v227);
  static UnitManager.standard.getter();
  v124 = v219;
  v125 = v222;
  v126 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v200 = v127;

  (v203)(v122, v123);
  v128 = v214;
  v129 = v221;
  v221(v214, v121);
  v213(v125, v124);
  v130 = v173;
  *(v117 + 56) = &type metadata for String;
  *(v117 + 64) = v130;
  v131 = v200;
  *(v117 + 32) = v126;
  *(v117 + 40) = v131;
  v132 = String.init(format:_:)();
  v173 = v133;
  *&v174 = v132;

  sub_10022C350(&qword_100CA7300, &qword_100A51110);
  v134 = swift_allocObject();
  v200 = v134;
  *(v134 + 16) = xmmword_100A3BBA0;
  v135 = v185;
  *(v134 + 32) = v186;
  *(v134 + 40) = v135;
  Trend.currentValue.getter();
  v136 = v226;
  static WeatherFormatStyle<>.weather.getter();
  v137 = v128;
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v129(v136, v121);
  v138 = v224;
  v139 = v227;
  (v216)(v224, v217, v227);
  static UnitManager.standard.getter();
  v140 = v138;
  v141 = v219;
  v142 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v144 = v143;

  (v203)(v140, v139);
  v221(v137, v121);
  v213(v222, v141);
  v229[0] = v142;
  v229[1] = v144;

  v145._countAndFlagsBits = 8250;
  v145._object = 0xE200000000000000;
  String.append(_:)(v145);
  v146._countAndFlagsBits = v182;
  v146._object = v181;
  String.append(_:)(v146);

  v147 = v229[1];
  v148 = v200;
  *(v200 + 48) = v229[0];
  *(v148 + 56) = v147;
  v149 = v206;
  Trend.baseline.getter();
  v150 = v207;
  TrendBaseline.value.getter();
  v201(v149, v150);
  v151 = v226;
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v152 = v220;
  v153 = v221;
  v221(v151, v220);
  v154 = v224;
  (v216)(v224, v217, v139);
  static UnitManager.standard.getter();
  v155 = v154;
  v156 = v141;
  v157 = v152;
  v158 = v222;
  v159 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v161 = v160;

  (v203)(v155, v227);
  v153(v214, v157);
  v162 = v213;
  v213(v158, v156);
  v229[0] = v159;
  v229[1] = v161;

  v163._countAndFlagsBits = 8250;
  v163._object = 0xE200000000000000;
  String.append(_:)(v163);
  v164._countAndFlagsBits = v176;
  v164._object = v175;
  String.append(_:)(v164);

  v165 = v229[1];
  v166 = v200;
  *(v200 + 64) = v229[0];
  *(v166 + 72) = v165;
  v229[0] = v166;
  sub_10022C350(&qword_100CCC930, &qword_100A41810);
  sub_1001141C8();
  v167 = BidirectionalCollection<>.joined(separator:)();
  v169 = v168;

  v228[0] = v190;
  v228[1] = v189;
  v228[2] = v196;
  v228[3] = v195;
  v228[4] = v194;
  v228[5] = v193;
  v228[6] = v192;
  v228[7] = v191;
  v228[8] = countAndFlagsBits;
  v228[9] = object;
  v228[10] = 0;
  v228[11] = 0;
  v228[12] = v184;
  v228[13] = v183;
  v228[14] = v180;
  v228[15] = v179;
  v228[16] = v178;
  v228[17] = v177;
  v228[18] = v174;
  v228[19] = v173;
  v228[20] = v167;
  v228[21] = v169;
  memcpy(v229, v228, 0xB0uLL);
  sub_10046F828(v229, 0, v198, v197);
  sub_100470A18(v228);
  v162(v218, v156);
  v162(v202, v156);
  return (v162)(v208, v156);
}

uint64_t sub_10046F828@<X0>(const void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [objc_opt_self() mainBundle];
  v19._object = 0x8000000100ACA810;
  v9._countAndFlagsBits = 0x7365676172657641;
  v19._countAndFlagsBits = 0xD00000000000003ALL;
  v9._object = 0xE800000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v19);

  *a4 = v11;
  *(a4 + 16) = 0xD000000000000019;
  *(a4 + 24) = 0x8000000100ACA850;
  *(a4 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for LocationComponentContainerViewModel(0);
  memcpy((a4 + v12[5]), a1, 0xB0uLL);
  type metadata accessor for LocationComponentViewModel(0);
  swift_storeEnumTagMultiPayload();
  v13 = (a4 + v12[8]);
  v14 = *(sub_10022C350(&qword_100CA6688, &unk_100A314A0) + 48);
  *v13 = a2 & 1;
  v15 = type metadata accessor for Location();
  (*(*(v15 - 8) + 16))(&v13[v14], a3, v15);
  v16 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v13, 0, 1, v16);
  sub_100470A6C(a1, v18);
  sub_10013D288();
  result = Dictionary.init(dictionaryLiteral:)();
  *(a4 + v12[6]) = 256;
  *(a4 + v12[7]) = result;
  return result;
}

uint64_t sub_10046FA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v129 = a4;
  v130 = a3;
  v168 = a2;
  v128 = a5;
  v137 = type metadata accessor for WeatherFormatPlaceholder();
  v167 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &countAndFlagsBits - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAA9F0, qword_100A44F50);
  __chkstk_darwin(v7 - 8);
  v154 = &countAndFlagsBits - v8;
  v136 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  v166 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &countAndFlagsBits - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10022C350(&qword_100CBC0E8, &unk_100A52920);
  v160 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &countAndFlagsBits - v10;
  v11 = type metadata accessor for WeatherFormatScaling();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &countAndFlagsBits - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10022C350(&qword_100CAB938, &qword_100A51040);
  v15 = *(v169 - 8);
  __chkstk_darwin(v169);
  v117 = &countAndFlagsBits - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v162 = &countAndFlagsBits - v18;
  __chkstk_darwin(v19);
  v21 = &countAndFlagsBits - v20;
  __chkstk_darwin(v22);
  v153 = &countAndFlagsBits - v23;
  v161 = sub_10022C350(&qword_100CBC0D0, &qword_100A52908);
  v131 = a1;
  Trend.currentValue.getter();
  v156 = enum case for WeatherFormatScaling.automatic(_:);
  v157 = *(v12 + 104);
  v155 = v12 + 104;
  v134 = v14;
  v163 = v11;
  v157(v14);
  Measurement<>.converted(usage:scaling:)();
  v158 = *(v12 + 8);
  v159 = v12 + 8;
  v158(v14, v11);
  v24 = *(v15 + 8);
  v164 = v15 + 8;
  v165 = v24;
  v25 = v21;
  v24(v21, v169);
  v26 = v149;
  Trend.baseline.getter();
  v27 = v162;
  v28 = v150;
  TrendBaseline.value.getter();
  v29 = *(v160 + 8);
  v160 += 8;
  v120 = v29;
  v29(v26, v28);
  v30 = v134;
  v31 = v156;
  v32 = v163;
  v33 = v157;
  (v157)(v134, v156, v163);
  v127 = v25;
  Measurement<>.converted(usage:scaling:)();
  v34 = v30;
  v35 = v30;
  v36 = v158;
  v158(v34, v32);
  v165(v27, v169);
  sub_10000C70C(0, &qword_100CAB968, NSUnitLength_ptr);
  static Measurement<>.- infix(_:_:)();
  v147 = type metadata accessor for Locale();
  v37 = v154;
  sub_10001B350(v154, 1, 1, v147);
  static Set<>.full.getter();
  v38 = v163;
  v33(v35, v31, v163);
  v39 = v133;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  v36(v35, v38);
  sub_10003FDF4(v37, &qword_100CAA9F0, qword_100A44F50);
  v146 = enum case for WeatherFormatPlaceholder.none(_:);
  v40 = v167;
  v41 = *(v167 + 104);
  v144 = v167 + 104;
  v145 = v41;
  v42 = v135;
  v43 = v137;
  v41(v135);
  v143 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v141 = sub_10006CA94(&qword_100CAB948, 255, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle, &protocol conformance descriptor for NSUnitLength.BaseWeatherFormatStyle);
  v44 = v136;
  v152 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v46 = v45;

  v47 = *(v40 + 8);
  v167 = v40 + 8;
  v140 = v47;
  v47(v42, v43);
  v48 = *(v166 + 8);
  v166 += 8;
  v139 = v48;
  v48(v39, v44);
  Measurement.value.getter();
  v49 = v152;
  sub_10046D1A8(v152, v46, 0, v171, v50);
  v121 = v171[1];
  v122 = v171[0];
  v125 = v171[3];
  v126 = v171[2];
  v123 = v171[5];
  v124 = v171[4];
  Measurement.value.getter();
  sub_10046D1A8(v49, v46, 1, v171, v51);
  v52 = v171[0];
  v53 = v171[1];
  v54 = v171[2];
  v55 = v171[3];

  v56 = sub_10046E15C(v52, v53, v54, v55);
  v115 = v57;
  v116 = v56;

  v148 = objc_opt_self();
  v58 = [v148 mainBundle];
  v172._object = 0x8000000100ACA160;
  v59._countAndFlagsBits = 0x206425207473614CLL;
  v59._object = 0xEC00000073796164;
  v60._countAndFlagsBits = 0xD000000000000037;
  v60._object = 0x8000000100ACA120;
  v172._countAndFlagsBits = 0xD000000000000038;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v58, v59, v172);

  v119 = sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
  v61 = swift_allocObject();
  v118 = xmmword_100A2C3F0;
  *(v61 + 16) = xmmword_100A2C3F0;
  *(v61 + 56) = &type metadata for Int;
  *(v61 + 64) = &protocol witness table for Int;
  *(v61 + 32) = 30;
  v62 = String.init(format:_:)();
  v151 = v63;
  v152 = v62;

  v64 = v117;
  Trend.currentValue.getter();
  v65 = v154;
  sub_10001B350(v154, 1, 1, v147);
  static Set<>.full.getter();
  v66 = v134;
  v67 = v163;
  (v157)(v134, v156, v163);
  v68 = v133;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  v158(v66, v67);
  sub_10003FDF4(v65, &qword_100CAA9F0, qword_100A44F50);
  v69 = v135;
  v70 = v137;
  v145(v135, v146, v137);
  static UnitManager.standard.getter();
  v71 = v169;
  v72 = v136;
  v73 = v64;
  v142 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v132 = v74;

  v75 = v70;
  v140(v69, v70);
  v139(v68, v72);
  v76 = v73;
  v165(v73, v71);
  v77 = [v148 mainBundle];
  v173._object = 0x8000000100ACA1E0;
  v78._countAndFlagsBits = 0x65676172657641;
  v79._countAndFlagsBits = 0xD000000000000034;
  v79._object = 0x8000000100ACA1A0;
  v78._object = 0xE700000000000000;
  v173._countAndFlagsBits = 0xD00000000000002FLL;
  v80 = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v77, v78, v173);
  countAndFlagsBits = v80._countAndFlagsBits;
  object = v80._object;

  v81 = v149;
  Trend.baseline.getter();
  v82 = v150;
  TrendBaseline.value.getter();
  v120(v81, v82);
  v83 = v154;
  sub_10001B350(v154, 1, 1, v147);
  static Set<>.full.getter();
  v84 = v163;
  (v157)(v66, v156, v163);
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  v158(v66, v84);
  sub_10003FDF4(v83, &qword_100CAA9F0, qword_100A44F50);
  v145(v69, v146, v75);
  static UnitManager.standard.getter();
  v85 = v169;
  v86 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v163 = v86;
  v168 = v87;

  v140(v69, v75);
  v139(v68, v72);
  v165(v76, v85);
  sub_10022C350(&qword_100CA7300, &qword_100A51110);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_100A3BBA0;
  v89 = v115;
  *(v88 + 32) = v116;
  *(v88 + 40) = v89;
  v171[0] = v142;
  v171[1] = v132;

  v90._countAndFlagsBits = 8250;
  v90._object = 0xE200000000000000;
  String.append(_:)(v90);
  v91._object = v151;
  v91._countAndFlagsBits = v152;
  String.append(_:)(v91);
  v92 = v171[1];
  *(v88 + 48) = v171[0];
  *(v88 + 56) = v92;
  v171[0] = v86;
  v171[1] = v168;

  v93._countAndFlagsBits = 8250;
  v93._object = 0xE200000000000000;
  String.append(_:)(v93);
  v94 = countAndFlagsBits;
  v95._countAndFlagsBits = countAndFlagsBits;
  v95._object = object;
  String.append(_:)(v95);
  v96 = v171[1];
  *(v88 + 64) = v171[0];
  *(v88 + 72) = v96;
  v171[0] = v88;
  sub_10022C350(&qword_100CCC930, &qword_100A41810);
  sub_1001141C8();
  v97 = BidirectionalCollection<>.joined(separator:)();
  v166 = v98;
  v167 = v97;

  v99 = v148;
  v100 = [v148 mainBundle];
  v174._object = 0x8000000100ACA260;
  v101._countAndFlagsBits = 0x646425207473614CLL;
  v102._countAndFlagsBits = 0xD000000000000040;
  v102._object = 0x8000000100ACA210;
  v174._countAndFlagsBits = 0xD00000000000004ELL;
  v101._object = 0xE800000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v102, 0, v100, v101, v174);

  v103 = swift_allocObject();
  *(v103 + 16) = v118;
  *(v103 + 56) = &type metadata for Int;
  *(v103 + 64) = &protocol witness table for Int;
  *(v103 + 32) = 30;
  v104 = String.init(format:_:)();
  v106 = v105;

  v107 = [v99 mainBundle];
  v175._object = 0x8000000100ACA2F0;
  v108._countAndFlagsBits = 0xD00000000000003DLL;
  v108._object = 0x8000000100ACA2B0;
  v175._countAndFlagsBits = 0xD000000000000045;
  v109._countAndFlagsBits = 6780481;
  v109._object = 0xE300000000000000;
  v110 = NSLocalizedString(_:tableName:bundle:value:comment:)(v108, 0, v107, v109, v175);

  *&v170[0] = v122;
  *(&v170[0] + 1) = v121;
  v170[1] = 0uLL;
  *&v170[2] = v126;
  *(&v170[2] + 1) = v125;
  *&v170[3] = v124;
  *(&v170[3] + 1) = v123;
  *&v170[4] = v152;
  *(&v170[4] + 1) = v151;
  *&v170[5] = v104;
  *(&v170[5] + 1) = v106;
  *&v170[6] = v142;
  *(&v170[6] + 1) = v132;
  *&v170[7] = v94;
  *(&v170[7] + 1) = object;
  v170[8] = v110;
  *&v170[9] = v163;
  *(&v170[9] + 1) = v168;
  *&v170[10] = v167;
  *(&v170[10] + 1) = v166;
  memcpy(v171, v170, 0xB0uLL);
  sub_10046F828(v171, 1, v129, v128);
  sub_100470A18(v170);
  v111 = v169;
  v112 = v165;
  v165(v162, v169);
  v112(v127, v111);
  return (v112)(v153, v111);
}

uint64_t sub_1004709A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CABD10, &qword_100A3ABB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for HomeAndWorkRefinementRowViewModel.InfoButtonPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100470BC4()
{
  result = qword_100CBC188;
  if (!qword_100CBC188)
  {
    result = swift_getWitnessTable(byte_100A52A04, &type metadata for HomeAndWorkRefinementRowViewModel.InfoButtonPosition, v0, v1);
    atomic_store(result, &qword_100CBC188);
  }

  return result;
}

uint64_t sub_100470C18(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v5 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
    if (static Location.== infix(_:_:)() & 1) != 0 && (static LocationOfInterest.== infix(_:_:)())
    {
      v2 = a1[*(v5 + 28)] ^ a2[*(v5 + 28)] ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_100470CB8(uint64_t a1)
{
  v293 = type metadata accessor for TimeState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v297 = v3;
  v4 = sub_1000038CC();
  v292 = type metadata accessor for NotificationsOptInState(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v296 = v6;
  v7 = sub_1000038CC();
  v291 = type metadata accessor for NotificationsState(v7);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v290 = type metadata accessor for LocationsState(0);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v289 = type metadata accessor for EnvironmentState(0);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  v295 = v17;
  v18 = sub_1000038CC();
  v287 = type metadata accessor for AppConfigurationState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000038E4();
  v294 = v20;
  v21 = sub_1000038CC();
  v271 = type metadata accessor for ModalViewState(v21);
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_10000E70C();
  sub_100003990(v25);
  v26 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_10000E70C();
  sub_100003990(v29);
  v282 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_1000038E4();
  sub_100003990(v31);
  v265 = type metadata accessor for DisplayMetrics(0);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000038E4();
  v283 = v33;
  v34 = sub_1000038CC();
  v261 = type metadata accessor for ViewState.SecondaryViewState(v34);
  sub_1000037E8();
  __chkstk_darwin(v35);
  sub_1000038E4();
  sub_100003990(v36);
  v37 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v38 = sub_100003810(v37);
  __chkstk_darwin(v38);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_10000E70C();
  sub_100003990(v40);
  v41 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v42 = sub_100003810(v41);
  __chkstk_darwin(v42);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_10000E70C();
  sub_100003990(v44);
  v45 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v46 = sub_100003810(v45);
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_10000E70C();
  sub_100003990(v48);
  v49 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_10000E70C();
  sub_100003990(v52);
  v53 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v54 = sub_100003810(v53);
  __chkstk_darwin(v54);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_10000E70C();
  v288 = v56;
  v57 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v58 = sub_100003810(v57);
  __chkstk_darwin(v58);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_10000E70C();
  v286 = v60;
  v61 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v62 = sub_100003810(v61);
  __chkstk_darwin(v62);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_10000E70C();
  v285 = v64;
  v65 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v66 = sub_100003810(v65);
  __chkstk_darwin(v66);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_10000E70C();
  v284 = v68;
  v69 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v70 = sub_100003810(v69);
  __chkstk_darwin(v70);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_10000E70C();
  sub_100003990(v72);
  v73 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v74 = sub_100003810(v73);
  __chkstk_darwin(v74);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_10000E70C();
  sub_100003990(v76);
  v77 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v78);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  v300 = v80;
  __chkstk_darwin(v81);
  v83 = (&v249 - v82);
  v84 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v85 = sub_100003810(v84);
  __chkstk_darwin(v85);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  v90 = &v249 - v89;
  v91 = type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v92);
  sub_1000037D8();
  v95 = v94 - v93;
  v298 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  v299 = v77;
  sub_100095588();
  v96 = type metadata accessor for SearchViewState(0);
  v97 = sub_10000C834();
  sub_1000038B4(v97, v98, v96);
  if (v99)
  {
    sub_1000180EC(v90, &qword_100CA6600, &unk_100A5C400);
    return 1;
  }

  sub_1000BB878();
  sub_1000AFFAC(v90, type metadata accessor for SearchViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1000AFFAC(v95, type metadata accessor for SearchViewState.ViewState);
  if (EnumCaseMultiPayload != 1)
  {
    return 1;
  }

  v254 = v91;
  v256 = a1;
  sub_100008698();
  sub_1000BB878();
  v101 = *v83;
  v99 = *(v83 + v299[9] + 8) == 1;
  *&v259 = v11;
  v258 = v15;
  v257 = v96;
  if (v99)
  {
    v102 = objc_opt_self();

    v103 = [v102 currentDevice];
    [v103 userInterfaceIdiom];

    v104 = *(v83 + v299[7]);
    sub_100004280();
    sub_1000AFFAC(v83, v105);
    v99 = v104 == 1;
    v114 = v290;
    v113 = v291;
    if (v99)
    {

      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      sub_10000E7B0();
      v101 = sub_100042DA8(v106, v107, v108, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 1, 0);
    }

    v112 = v292;
    v111 = v293;
  }

  else
  {

    sub_100004280();
    sub_1000AFFAC(v83, v110);
    v112 = v292;
    v111 = v293;
    v114 = v290;
    v113 = v291;
  }

  sub_100003934();
  sub_10001B350(v115, v116, v117, v287);
  sub_100003934();
  sub_10001B350(v118, v119, v120, v289);
  sub_100003934();
  sub_10001B350(v121, v122, v123, v114);
  sub_100003934();
  sub_10001B350(v124, v125, v126, v113);
  sub_100003934();
  sub_10001B350(v127, v128, v129, v112);
  sub_100003934();
  sub_10001B350(v130, v131, v132, v111);
  sub_100008698();
  sub_1000BB878();
  v251 = *(v101 + 16);
  v133 = *(v101 + 24);
  v134 = *(v101 + 25);
  HIDWORD(v250) = *(v101 + 26);
  v135 = *(v101 + 56);
  v255 = *(v101 + 48);
  v136 = *(v101 + 64);
  v138 = *(v101 + 72);
  v137 = *(v101 + 80);
  v139 = *(v101 + 88);
  v140 = *(v101 + 89);
  v141 = *(v101 + 27);
  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v252 = v137;
  v253 = v135;
  v142 = sub_100042DA8(v251, v133, v134, SBYTE4(v250), v141, 0, 0xE000000000000000, v255, v135, v136, v138, v137, v139, v140);
  sub_100003934();
  v143 = v261;
  sub_10001B350(v144, v145, v146, v261);
  v147 = v257;
  v148 = v280;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Location();
  sub_100003934();
  sub_10001B350(v149, v150, v151, v152);
  *v148 = 0;
  v148[1] = 0xE000000000000000;
  *(v148 + *(v147 + 24)) = 0;
  sub_10000E7B0();
  sub_10001B350(v153, v154, v155, v147);
  sub_100003934();
  v156 = v265;
  sub_10001B350(v157, v158, v159, v265);
  sub_100003934();
  sub_10001B350(v160, v161, v162, v282);
  v163 = v260;
  sub_100095588();
  sub_1000038B4(v163, 1, v143);
  v255 = v142;
  if (v99)
  {
    v169 = v299;
    v168 = v300;
    sub_100019808(v299[5]);
    sub_1000BB878();
    v164 = sub_100024D10(v163, 1, v143);
    v165 = v163;
    v166 = v164;

    v167 = v277;
    if (v166 != 1)
    {
      sub_1000180EC(v165, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_100013830();
    sub_1000A0838();

    v167 = v277;
    v169 = v299;
    v168 = v300;
  }

  LODWORD(v277) = *(v168 + v169[6]);
  v170 = [objc_opt_self() currentDevice];
  v171 = v168;
  v172 = [v170 userInterfaceIdiom];

  sub_1000180EC(v281, &qword_100CA6608, &unk_100A31430);
  if (v172 && *(v171 + v169[9] + 8) == 2)
  {
    v173 = 1;
  }

  else
  {
    v173 = *(v171 + v169[7]);
  }

  LODWORD(v281) = v173;
  v174 = v282;
  v175 = *(&v259 + 1);
  sub_100051BBC();
  v176 = sub_10000C834();
  v177 = v257;
  sub_1000038B4(v176, v178, v257);
  v179 = v256;
  if (v99)
  {
    sub_100095588();
    v180 = sub_10000C834();
    sub_1000038B4(v180, v181, v177);
    if (!v99)
    {
      sub_1000180EC(v175, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    sub_1000A0838();
    sub_10000E7B0();
    sub_10001B350(v182, v183, v184, v177);
  }

  v185 = v264;
  sub_100051BBC();
  sub_1000038B4(v185, 1, v156);
  if (v99)
  {
    sub_1000BB878();
    sub_1000038B4(v185, 1, v156);
    if (!v99)
    {
      sub_1000180EC(v185, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_10004E5D8();
    sub_1000A0838();
  }

  v186 = v267;
  sub_100051BBC();
  sub_1000038B4(v186, 1, v174);
  if (v99)
  {
    sub_1000BB878();
    sub_1000038B4(v186, 1, v174);
    if (!v99)
    {
      sub_1000180EC(v186, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_100074A44();
    sub_1000A0838();
  }

  v187 = *(v300 + v169[11]);
  sub_100004280();
  sub_1000AFFAC(v188, v189);
  *v167 = v255;
  sub_100013830();
  sub_1000A0838();
  *(v167 + v169[6]) = v277;
  *(v167 + v169[7]) = v281;
  sub_100051BBC();
  sub_10004E5D8();
  sub_1000A0838();
  sub_100074A44();
  sub_1000A0838();

  *(v167 + v169[11]) = v187;
  sub_10000E7B0();
  sub_10001B350(v190, v191, v192, v169);
  sub_100003934();
  v193 = v271;
  sub_10001B350(v194, v195, v196, v271);
  sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
  v197 = v273;
  sub_1000BB878();
  v198 = v270;
  sub_100051BBC();
  sub_1000038B4(v198, 1, v193);
  if (v99)
  {
    sub_1000180EC(v198, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000AFFAC(v197, type metadata accessor for ModalViewState);
    sub_100014700();
    sub_1000A0838();
  }

  v199 = v293;
  v200 = v274;
  v201 = v287;
  v202 = v268;
  v203 = v290;
  sub_100014700();
  sub_1000A0838();
  v204 = *(v179 + 16);
  LODWORD(v300) = *(v179 + 24);
  v205 = v266;
  sub_100051BBC();
  v206 = sub_1000182B8();
  sub_1000038B4(v206, v207, v201);
  v293 = v204;
  if (v99)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_1000BB878();
    v208 = sub_1000182B8();
    v210 = sub_100024D10(v208, v209, v201);

    v99 = v210 == 1;
    v211 = v289;
    if (!v99)
    {
      sub_1000180EC(v205, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_1000A0838();

    v211 = v289;
  }

  sub_100051BBC();
  v212 = sub_1000162B0();
  sub_1000038B4(v212, v213, v211);
  if (v99)
  {
    swift_beginAccess();
    sub_1000BB878();
    v214 = sub_1000162B0();
    sub_1000038B4(v214, v215, v211);
    v216 = v272;
    if (!v99)
    {
      sub_1000180EC(v202, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_1000A0838();
    v216 = v272;
  }

  v217 = v269;
  sub_100051BBC();
  v218 = sub_1000162B0();
  sub_1000038B4(v218, v219, v203);
  if (v99)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_1000BB878();
    v220 = sub_1000162B0();
    sub_1000038B4(v220, v221, v203);
    if (!v99)
    {
      sub_1000180EC(v217, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_1000A0838();
  }

  sub_100051BBC();
  v222 = sub_1000182B8();
  v223 = v291;
  sub_1000038B4(v222, v224, v291);
  if (v99)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_1000BB878();
    v225 = sub_1000182B8();
    sub_1000038B4(v225, v226, v223);
    if (!v99)
    {
      sub_1000180EC(v216, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_1000A0838();
  }

  sub_100051BBC();
  v227 = sub_10000C834();
  v228 = v292;
  sub_1000038B4(v227, v229, v292);
  if (v99)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_1000BB878();
    v230 = sub_10000C834();
    sub_1000038B4(v230, v231, v228);
    v232 = v299;
    if (!v99)
    {
      sub_1000180EC(v200, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_1000A0838();
    v232 = v299;
  }

  v233 = v276;
  sub_100051BBC();
  sub_1000038B4(v233, 1, v199);
  if (v99)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_1000BB878();
    sub_1000038B4(v233, 1, v199);
    if (!v99)
    {
      sub_1000180EC(v233, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_1000A0838();
  }

  v234 = v278;
  sub_100051BBC();
  sub_1000038B4(v234, 1, v232);
  v235 = v275;
  if (v99)
  {
    sub_100008698();
    sub_1000BB878();
    sub_1000038B4(v234, 1, v232);
    if (!v99)
    {
      sub_1000180EC(v234, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_1000A0838();
  }

  sub_100014700();
  v236 = v279;
  sub_1000A0838();
  v238 = *(v179 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v237 = *(v179 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v240 = *(v179 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v239 = *(v179 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v241 = *(v179 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v242 = v179;
  v244 = *(v179 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v243 = *(v179 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v245 = *(v242 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v248) = v241;
  sub_10003E038(v293, v300, v294, v295, v258, v259, v296, v297, v235, v236, v238, v237, v240, v239, v248, v244, v243, v245, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265);
  v109 = v246;

  return v109;
}

uint64_t Optional<A>.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin(a1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v11, v7);
  if (sub_100024D10(v9, 1, v2) == 1)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    v16 = 0x6C616E6F6974704FLL;
    v17 = 0xE90000000000003CLL;
    v12._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x6C696E2E3ELL;
    v13._object = 0xE500000000000000;
    String.append(_:)(v13);
    return v16;
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v3 + 8))(v5, v2);
  }

  return v14;
}

uint64_t sub_1004726C8()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = static Font.footnote.getter();
    *(v0 + 112) = v1;
  }

  return v1;
}

double sub_100472710()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 16) = 0x4030000000000000;
  *(v0 + 24) = 0;
  return sub_10001ECF0();
}

double sub_100472730(uint64_t a1)
{
  if ((*(v1 + 56) & 1) == 0)
  {
    return *(v1 + 48);
  }

  v2 = 19.0;
  if ((static Solarium.isEnabled.getter() & 1) == 0)
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    v3 = swift_beginAccess();
    sub_1004BA4FC(v3);
    v2 = v4;
    swift_endAccess();
  }

  *(v1 + 48) = v2;
  *(v1 + 56) = 0;
  return v2;
}

double sub_1004727E4()
{
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  *v0 = 0x4030000000000000;
  v0[8] = 0;
  return sub_10001ECF0();
}

double sub_100472804(uint64_t a1)
{
  if ((*(v1 + 40) & 1) == 0)
  {
    return *(v1 + 32);
  }

  v2 = static Solarium.isEnabled.getter();
  result = sub_100472710();
  if (v2)
  {
    result = result + 4.0;
  }

  *(v1 + 32) = result;
  *(v1 + 40) = 0;
  return result;
}

double sub_100472854()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  *(v0 + 64) = 0x4030000000000000;
  *(v0 + 72) = 0;
  return sub_10001ECF0();
}

double sub_100472874()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    return *(v0 + 80);
  }

  *(v0 + 80) = 0x4046000000000000;
  *(v0 + 88) = 0;
  return 44.0;
}

void sub_100472898()
{
  qword_100D8FD80 = 0;
  byte_100D8FD88 = 1;
  qword_100D8FD90 = 0;
  byte_100D8FD98 = 1;
  qword_100D8FDA0 = 0;
  byte_100D8FDA8 = 1;
  qword_100D8FDB0 = 0;
  byte_100D8FDB8 = 1;
  qword_100D8FDC0 = 0;
  byte_100D8FDC8 = 1;
  qword_100D8FDD0 = 0;
  byte_100D8FDD8 = 1;
  qword_100D8FDE0 = 0;
  byte_100D8FDE8 = 1;
  qword_100D8FDF0 = 0;
}

uint64_t sub_100472908()
{
  v37 = type metadata accessor for Font.Leading();
  v1 = *(v37 - 8);
  __chkstk_darwin(v37);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + *(type metadata accessor for DailyForecastComponentViewModel(0) + 32));
  v12 = v11[1];
  v38 = *v11;
  v39 = v12;
  sub_10002D5A4();

  v13 = Text.init<A>(_:)();
  v36 = v14;
  v35 = v15;
  v16 = v0 + *(type metadata accessor for DailyComponentView(0) + 36);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v32 = v3;
    v20 = v19;
    os_log(_:dso:log:_:_:)();

    v3 = v32;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v17, 0);
    (*(v33 + 8))(v10, v34);
    if (v38)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = &enum case for Font.TextStyle.title3(_:);
    goto LABEL_6;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = &enum case for Font.TextStyle.body(_:);
LABEL_6:
  (*(v5 + 104))(v7, *v18, v4);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v5 + 8))(v7, v4);
  v21 = v37;
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v37);
  Font.leading(_:)();

  (*(v1 + 8))(v3, v21);
  v22 = v35;
  v23 = v36;
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10010CD64(v13, v23, v22 & 1);

  v29 = Text.monospacedDigit()();
  sub_10010CD64(v24, v26, v28 & 1);

  return v29;
}

uint64_t sub_100472D28()
{
  v37 = type metadata accessor for Font.Leading();
  v1 = *(v37 - 8);
  __chkstk_darwin(v37);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + *(type metadata accessor for DailyForecastComponentViewModel(0) + 36));
  v12 = v11[1];
  v38 = *v11;
  v39 = v12;
  sub_10002D5A4();

  v13 = Text.init<A>(_:)();
  v36 = v14;
  v35 = v15;
  v16 = v0 + *(type metadata accessor for DailyComponentView(0) + 36);
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v32 = v3;
    v20 = v19;
    os_log(_:dso:log:_:_:)();

    v3 = v32;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v17, 0);
    (*(v33 + 8))(v10, v34);
    if (v38)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = &enum case for Font.TextStyle.title3(_:);
    goto LABEL_6;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = &enum case for Font.TextStyle.body(_:);
LABEL_6:
  (*(v5 + 104))(v7, *v18, v4);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v5 + 8))(v7, v4);
  v21 = v37;
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v37);
  Font.leading(_:)();

  (*(v1 + 8))(v3, v21);
  v22 = v35;
  v23 = v36;
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10010CD64(v13, v23, v22 & 1);

  v29 = Text.monospacedDigit()();
  sub_10010CD64(v24, v26, v28 & 1);

  return v29;
}

uint64_t sub_100473148()
{
  v1 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v1 - 8);
  v53 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v47 - v4;
  v6 = type metadata accessor for EnvironmentValues();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 14920;
  v14._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  v15 = *(v0 + *(type metadata accessor for DailyForecastComponentViewModel(0) + 32));
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v15);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  v17 = LocalizedStringKey.init(stringInterpolation:)();
  v21 = Text.init(_:tableName:bundle:comment:)(v17, v19, v18 & 1, v20, 0, 0, 0, "The day's high temperature, matching version used for large text daily forecast row", 83, 2);
  v50 = v22;
  v51 = v21;
  v24 = v23;
  v52 = v25;
  v26 = *(v10 + 104);
  v26(v12, enum case for Font.TextStyle.title3(_:), v9);
  static Font.Weight.medium.getter();
  v49 = static Font.system(_:weight:)();
  v27 = *(v10 + 8);
  v27(v12, v9);
  v26(v12, enum case for Font.TextStyle.body(_:), v9);
  static Font.Weight.medium.getter();
  v28 = static Font.system(_:weight:)();
  v27(v12, v9);
  v29 = v0 + *(type metadata accessor for DailyComponentView(0) + 36);
  v30 = *v29;
  if (*(v29 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v30, 0);
    (*(v47 + 8))(v8, v48);
    LOBYTE(v30) = v54;
  }

  v32 = enum case for Font.Leading.tight(_:);
  v33 = type metadata accessor for Font.Leading();
  (*(*(v33 - 8) + 104))(v5, v32, v33);
  sub_10001B350(v5, 0, 1, v33);
  v34 = v53;
  sub_1000302D8(v5, v53, &qword_100CACFF0, &unk_100A48000);
  v35 = v49;

  sub_1001C987C(v35, v28, v30 & 1, v34);
  v36 = v51;
  v37 = v24;
  v38 = v50;
  v48 = v5;
  v39 = Text.font(_:)();
  v41 = v40;
  v43 = v42;
  v53 = v44;

  sub_10010CD64(v36, v38, v37 & 1);

  sub_1000180EC(v48, &qword_100CACFF0, &unk_100A48000);
  v45 = Text.monospacedDigit()();
  sub_10010CD64(v39, v41, v43 & 1);

  return v45;
}

uint64_t sub_100473678()
{
  v1 = sub_10022C350(&qword_100CACFF0, &unk_100A48000);
  __chkstk_darwin(v1 - 8);
  v53 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v47 - v4;
  v6 = type metadata accessor for EnvironmentValues();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 14924;
  v14._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  v15 = *(v0 + *(type metadata accessor for DailyForecastComponentViewModel(0) + 36));
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v15);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  v17 = LocalizedStringKey.init(stringInterpolation:)();
  v21 = Text.init(_:tableName:bundle:comment:)(v17, v19, v18 & 1, v20, 0, 0, 0, "The day's low temperature, matching version used for large text daily forecast row", 82, 2);
  v50 = v22;
  v51 = v21;
  v24 = v23;
  v52 = v25;
  v26 = *(v10 + 104);
  v26(v12, enum case for Font.TextStyle.title3(_:), v9);
  static Font.Weight.medium.getter();
  v49 = static Font.system(_:weight:)();
  v27 = *(v10 + 8);
  v27(v12, v9);
  v26(v12, enum case for Font.TextStyle.body(_:), v9);
  static Font.Weight.medium.getter();
  v28 = static Font.system(_:weight:)();
  v27(v12, v9);
  v29 = v0 + *(type metadata accessor for DailyComponentView(0) + 36);
  v30 = *v29;
  if (*(v29 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v30, 0);
    (*(v47 + 8))(v8, v48);
    LOBYTE(v30) = v54;
  }

  v32 = enum case for Font.Leading.tight(_:);
  v33 = type metadata accessor for Font.Leading();
  (*(*(v33 - 8) + 104))(v5, v32, v33);
  sub_10001B350(v5, 0, 1, v33);
  v34 = v53;
  sub_1000302D8(v5, v53, &qword_100CACFF0, &unk_100A48000);
  v35 = v49;

  sub_1001C987C(v35, v28, v30 & 1, v34);
  v36 = v51;
  v37 = v24;
  v38 = v50;
  v48 = v5;
  v39 = Text.font(_:)();
  v41 = v40;
  v43 = v42;
  v53 = v44;

  sub_10010CD64(v36, v38, v37 & 1);

  sub_1000180EC(v48, &qword_100CACFF0, &unk_100A48000);
  v45 = Text.monospacedDigit()();
  sub_10010CD64(v39, v41, v43 & 1);

  return v45;
}

uint64_t sub_100473BA8@<X0>(uint64_t *a1@<X8>)
{
  v226 = a1;
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100003990(v5 - v4);
  v6 = sub_10022C350(&qword_100CA4020, &qword_100A2E080);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003990(v209 - v8);
  v216 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v217 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_100003990(v12 - v11);
  v13 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100003990(v209 - v15);
  v16 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  KeyPath = v209 - v18;
  v228 = type metadata accessor for Text.Measurements.Context();
  sub_1000037C4();
  v225 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_100003990(v22 - v21);
  v223 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v219 = v23;
  __chkstk_darwin(v24);
  v26 = v209 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v209 - v28;
  v30 = type metadata accessor for DailyComponentView(0);
  sub_1000037C4();
  v221 = v31;
  __chkstk_darwin(v32);
  sub_100003990(v209 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = v34;
  __chkstk_darwin(v35);
  v37 = v209 - v36;
  v38 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_1000037C4();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_1000037D8();
  v44 = v43 - v42;
  sub_100474CF8();
  v46 = v45;
  v47 = 0;
  v229 = v1;
  v48 = *v1;
  v49 = *(*v1 + 16);
  while (v49 != v47)
  {
    if (v47 >= *(v48 + 16))
    {
      __break(1u);
      goto LABEL_50;
    }

    sub_1001B5618(v48 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v47, v44, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    v50 = *(v44 + *(v38 + 48));
    sub_1001B5728(v44, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    if (v50 >= 0.3)
    {
      goto LABEL_7;
    }

    ++v47;
  }

  v47 = 1;
LABEL_7:
  v38 = v229;
  if (qword_100CA26A8 == -1)
  {
    goto LABEL_8;
  }

LABEL_50:
  swift_once();
LABEL_8:
  v51 = type metadata accessor for Logger();
  v52 = sub_10000703C(v51, qword_100D90A60);
  sub_100014718();
  sub_1001B5618(v38, v37, v53);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  v56 = os_log_type_enabled(v54, v55);
  v218 = v52;
  if (v56)
  {
    v57 = swift_slowAlloc();
    *v57 = 134349056;
    v58 = *(*v37 + 16);
    sub_100019814();
    *(v57 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v54, v55, "About to check if a large text layout might be required for the daily forecast component. dailyForecastCount=%{public}ld", v57, 0xCu);
  }

  else
  {
    sub_100019814();
  }

  sub_10009ECC8();
  v59 = v219;
  v60 = v223;
  (*(v219 + 32))(v26, v29, v223);
  v61 = (*(v59 + 88))(v26, v60);
  if (v61 != enum case for ContentSizeCategory.extraSmall(_:) && v61 != enum case for ContentSizeCategory.small(_:) && v61 != enum case for ContentSizeCategory.medium(_:) && v61 != enum case for ContentSizeCategory.large(_:) && v61 != enum case for ContentSizeCategory.extraLarge(_:) && v61 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v61 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v61 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v61 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v61 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v61 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v61 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v212 = *(v30 + 44);
      sub_100473678();
      v211 = v72;
      v219 = type metadata accessor for Text.WritingMode();
      v223 = 1;
      sub_100003934();
      sub_10001B350(v73, v74, v75, v76);
      v213 = type metadata accessor for Text.Suffix();
      v77 = sub_100005508();
      sub_10001B350(v77, v78, v79, v80);
      v81 = v224;
      sub_100003940();
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      sub_10000C918();
      sub_10002C724();
      Text.Measurements.size(of:in:context:)();
      v83 = v82;
      v85 = v84;
      v86 = sub_10000C918();
      sub_10010CD64(v86, v87, v88);

      v211 = *(v225 + 8);
      v225 += 8;
      v211(v81, v228);
      v89 = sub_100473148();
      v91 = v90;
      v93 = v92;
      v94 = sub_100005508();
      sub_100037AD0(v94, v95, v96);
      sub_100003934();
      sub_10001B350(v97, v98, v99, v213);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      sub_10002C724();
      Text.Measurements.size(of:in:context:)();
      v101 = v100;
      v103 = v102;
      sub_10010CD64(v89, v91, v93 & 1);

      sub_1000100E4();
      v104();
      Image.init(systemName:)();
      v209[2] = Text.init(_:)();
      v105 = v217;
      v106 = *(v217 + 104);
      v209[3] = v217 + 104;
      v210 = v106;
      v107 = v215;
      v108 = v216;
      v106(v215, enum case for Font.TextStyle.title3(_:), v216);
      type metadata accessor for Font.Design();
      v109 = v214;
      sub_100003934();
      sub_10001B350(v110, v111, v112, v113);
      static Font.system(_:design:weight:)();
      sub_1000180EC(v109, &qword_100CA4020, &qword_100A2E080);
      v114 = *(v105 + 8);
      v217 = v105 + 8;
      v214 = v114;
      (v114)(v107, v108);
      v115 = Text.font(_:)();
      v117 = v116;
      LOBYTE(v107) = v118;
      v209[1] = v119;

      v120 = sub_10000C918();
      sub_10010CD64(v120, v121, v122);

      sub_100003934();
      sub_100037AD0(v123, v124, v125);
      v126 = sub_100005508();
      sub_10001B350(v126, v127, v128, v213);
      sub_100003940();
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      sub_10000EA4C();
      sub_10002C724();
      Text.Measurements.size(of:in:context:)();
      v130 = v129;
      sub_10010CD64(v115, v117, v107 & 1);

      sub_1000100E4();
      v131();
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v132._countAndFlagsBits = 0;
      v132._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v132);
      v133 = Double.formattedPercent(roundToNearestPercent:)(1);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v133);

      v134._countAndFlagsBits = 0;
      v134._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v134);
      v135 = LocalizedStringKey.init(stringInterpolation:)();
      v139 = Text.init(_:tableName:bundle:comment:)(v135, v137, v136 & 1, v138, 0, 0, 0, 0, 0, 256);
      v141 = v140;
      LOBYTE(v117) = v142;
      v210(v215, enum case for Font.TextStyle.caption(_:), v216);
      static Font.Weight.medium.getter();
      static Font.system(_:weight:)();
      v143 = sub_10000C918();
      v214(v143);
      sub_100003940();
      Text.font(_:)();
      v217 = v144;

      sub_10010CD64(v139, v141, v117 & 1);

      v145 = sub_100005508();
      sub_100037AD0(v145, v146, v147);
      sub_100003934();
      sub_10001B350(v148, v149, v150, v213);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      sub_10000EA4C();
      sub_10000C918();
      sub_10002C724();
      Text.Measurements.size(of:in:context:)();
      v152 = v151;
      v153 = sub_10000C918();
      sub_10010CD64(v153, v154, v155);

      sub_1000100E4();
      v156();
      LODWORD(v219) = 0;
      goto LABEL_46;
    }

    (*(v59 + 8))(v26, v60);
  }

  v216 = *(v30 + 44);
  v157 = sub_100472D28();
  v159 = v158;
  v161 = v160;
  v215 = v162;
  v223 = type metadata accessor for Text.WritingMode();
  LODWORD(v219) = 1;
  sub_100003934();
  sub_10001B350(v163, v164, v165, v166);
  v217 = type metadata accessor for Text.Suffix();
  sub_100003934();
  sub_10001B350(v167, v168, v169, v170);
  v171 = v224;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v83 = v172;
  v85 = v173;
  sub_10010CD64(v157, v159, v161 & 1);

  v225 = *(v225 + 8);
  (v225)(v171, v228);
  v174 = sub_100472908();
  v176 = v175;
  LOBYTE(v157) = v177;
  v178 = sub_100005508();
  sub_10001B350(v178, v179, v180, v223);
  sub_100003934();
  sub_10001B350(v181, v182, v183, v217);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v101 = v184;
  v103 = v185;
  sub_10010CD64(v174, v176, v157 & 1);

  (v225)(v171, v228);
  v223 = 0;
  v152 = 0;
  v130 = 0;
LABEL_46:
  v186 = Logger.logObject.getter();
  v187 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    *v188 = 67240192;
    *(v188 + 4) = v223;
    _os_log_impl(&_mh_execute_header, v186, v187, "Obtained the large text layout requirement for the daily forecast component. useLargeTextRowView=%{BOOL,public}d", v188, 8u);
  }

  v189 = static HorizontalAlignment.center.getter();
  v190 = v226;
  *v226 = v189;
  v190[1] = 0;
  *(v190 + 16) = 0;
  v228 = *(sub_10022C350(&qword_100CBC258, &qword_100A52B88) + 44);
  sub_1002EE078();
  v230 = v191;
  KeyPath = swift_getKeyPath();
  sub_100014718();
  v192 = v222;
  sub_1001B5618(v229, v222, v193);
  v194 = (*(v221 + 80) + 16) & ~*(v221 + 80);
  v195 = (v220 + v194 + 7) & 0xFFFFFFFFFFFFFFF8;
  v196 = (v195 + 23) & 0xFFFFFFFFFFFFFFF8;
  v197 = (v196 + 23) & 0xFFFFFFFFFFFFFFF8;
  v198 = (v197 + 31) & 0xFFFFFFFFFFFFFFF8;
  v199 = swift_allocObject();
  sub_1001D1978(v192, v199 + v194, type metadata accessor for DailyComponentView);
  v200 = (v199 + v195);
  *v200 = v83;
  v200[1] = v85;
  v201 = (v199 + v196);
  *v201 = v101;
  v201[1] = v103;
  *(v199 + v197) = v46;
  v202 = v199 + ((v197 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v202 = v130;
  v203 = v219;
  *(v202 + 8) = v219;
  v204 = v199 + v198;
  *v204 = v152;
  *(v204 + 8) = v203;
  *(v204 + 9) = v223;
  *(v199 + ((v198 + 17) & 0xFFFFFFFFFFFFFFF8)) = v47;
  v205 = swift_allocObject();
  *(v205 + 16) = sub_1001D2034;
  *(v205 + 24) = v199;
  sub_10022C350(&qword_100CBC260, &qword_100A52BC0);
  sub_10022C350(&qword_100CBC268, &qword_100A52BC8);
  sub_100006F64(&qword_100CBC270, &qword_100CBC260, &qword_100A52BC0, &protocol conformance descriptor for [A]);
  sub_1001CE5C4(&qword_100CA39C8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100006F64(&qword_100CBC278, &qword_100CBC268, &qword_100A52BC8, &protocol conformance descriptor for TupleView<A>);
  v206 = v226;
  ForEach<>.init(_:id:content:)();
  result = sub_10022C350(&qword_100CBC280, &qword_100A52BD0);
  v208 = (v206 + *(result + 36));
  *v208 = 0xD000000000000012;
  v208[1] = 0x8000000100A52AF0;
  return result;
}

void sub_100474CF8()
{
  v1 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v1 - 8);
  v86 = &v76 - v2;
  v3 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v3 - 8);
  v84 = &v76 - v4;
  v5 = type metadata accessor for Text.Measurements.Context();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v85 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Font.TextStyle();
  v82 = *(v7 - 8);
  v83 = v7;
  __chkstk_darwin(v7);
  v81 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v79 = *(v9 - 8);
  v80 = v9;
  __chkstk_darwin(v9);
  v78 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Text.Measurements();
  v90 = *(v11 - 8);
  v91 = v11;
  __chkstk_darwin(v11);
  v89 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v76 - v18;
  __chkstk_darwin(v20);
  v22 = &v76 - v21;
  IsSlow = DeviceIsSlow();
  v24 = *v0;

  v25 = sub_1002B0A94(8, v24);
  v29 = v26;
  v30 = v27;
  if (IsSlow)
  {
    v76 = v22;
    v77 = v0;
    if (v27 == v28 >> 1)
    {
      swift_unknownObjectRelease();
      v31 = 5;
LABEL_20:
      v44 = v87;
      v45 = [objc_opt_self() mainBundle];
      v93._object = 0x8000000100ACA950;
      v46._countAndFlagsBits = 77;
      v46._object = 0xE100000000000000;
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      v93._countAndFlagsBits = 0xD000000000000063;
      v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v93);

      v49 = String.init(repeating:count:)(v48, v31);
      v50 = type metadata accessor for DailyComponentView(0);
      v51 = v77;
      (*(v90 + 16))(v89, v77 + *(v50 + 44), v91);
      v92 = v49;
      sub_10002D5A4();
      v52 = Text.init<A>(_:)();
      v54 = v53;
      v56 = v55;
      v57 = v51 + *(v50 + 36);
      v58 = *v57;
      if (*(v57 + 8) == 1)
      {
        if (v58)
        {
LABEL_22:
          v59 = v44;
          v60 = &enum case for Font.TextStyle.body(_:);
LABEL_25:
          v64 = v81;
          v63 = v82;
          v65 = v83;
          (*(v82 + 104))(v81, *v60, v83);
          static Font.Weight.medium.getter();
          static Font.system(_:weight:)();
          (*(v63 + 8))(v64, v65);
          v66 = Text.font(_:)();
          v68 = v67;
          v70 = v69;

          sub_10010CD64(v52, v54, v56 & 1);

          v71 = type metadata accessor for Text.WritingMode();
          sub_10001B350(v84, 1, 1, v71);
          v72 = type metadata accessor for Text.Suffix();
          sub_10001B350(v86, 1, 1, v72);
          v73 = v85;
          Text.Measurements.Context.init(writingMode:textSuffix:)();
          v74 = v89;
          Text.Measurements.size(of:in:context:)();
          sub_10010CD64(v66, v68, v70 & 1);

          (*(v59 + 8))(v73, v88);
          (*(v90 + 8))(v74, v91);
          v75 = [objc_opt_self() currentDevice];
          [v75 userInterfaceIdiom];

          return;
        }
      }

      else
      {

        static os_log_type_t.fault.getter();
        v61 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v62 = v78;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000E4DF8(v58, 0);
        (*(v79 + 8))(v62, v80);
        if (v92._countAndFlagsBits)
        {
          goto LABEL_22;
        }
      }

      v59 = v44;
      v60 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_25;
    }

    v38 = v28 >> 1;
    if (v27 < (v28 >> 1))
    {
      v39 = *(v14 + 72);
      sub_1001B5618(v26 + v39 * v27, v19, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      v40 = v30 + 1;
      v41 = v29 + v39 * (v30 + 1);
      v42 = v76;
      while (1)
      {
        if (v38 == v40)
        {
          swift_unknownObjectRelease();
          sub_1001D1978(v19, v42, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);

          sub_1001B5728(v42, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
          v31 = String.count.getter();

          goto LABEL_20;
        }

        if (v40 >= v38)
        {
          break;
        }

        sub_1001B5618(v41, v16, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
        v43 = String.count.getter();
        if (v43 >= String.count.getter())
        {
          sub_1001B5728(v16, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
        }

        else
        {
          sub_1001B5728(v19, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
          sub_1001D1978(v16, v19, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
        }

        ++v40;
        v41 += v39;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __chkstk_darwin(v25);
    sub_1008EF16C();
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = v34 - 1;
      if (v35)
      {
        v36 = 48;
        v37 = *(v33 + 32);
        do
        {
          if (v37 < *(v33 + v36))
          {
            v37 = *(v33 + v36);
          }

          v36 += 16;
          --v35;
        }

        while (v35);
      }
    }
  }
}

uint64_t sub_100475674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v62 = a3;
  v53 = a1;
  v4 = sub_10022C350(&qword_100CA3D60, &unk_100A2DDD0);
  __chkstk_darwin(v4 - 8);
  v60 = &v49 - v5;
  v6 = sub_10022C350(&qword_100CA3D68, &unk_100A4AD10);
  __chkstk_darwin(v6 - 8);
  v57 = &v49 - v7;
  v61 = type metadata accessor for Text.Measurements.Context();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EnvironmentValues();
  v51 = *(v13 - 8);
  v52 = v13;
  __chkstk_darwin(v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Text.Measurements();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DailyComponentView(0);
  v21 = *(v20 + 44);
  v54 = v19;
  v55 = v17;
  v22 = *(v17 + 16);
  v56 = v16;
  v22(v19, a2 + v21, v16);
  v23 = (v53 + *(type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0) + 20));
  v24 = v23[1];
  v63 = *v23;
  v64 = v24;
  sub_10002D5A4();

  v25 = Text.init<A>(_:)();
  v27 = v26;
  LODWORD(v53) = v28;
  v29 = a2 + *(v20 + 36);
  v30 = *v29;
  if (*(v29 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v50 = v12;
    v32 = static Log.runtimeIssuesLog.getter();
    v12 = v50;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v30, 0);
    (*(v51 + 8))(v15, v52);
    if (v63)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = &enum case for Font.TextStyle.title3(_:);
    goto LABEL_6;
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v31 = &enum case for Font.TextStyle.body(_:);
LABEL_6:
  (*(v10 + 104))(v12, *v31, v9);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v10 + 8))(v12, v9);
  v33 = v53;
  v34 = Text.font(_:)();
  v36 = v35;
  v38 = v37;

  sub_10010CD64(v25, v27, v33 & 1);

  v39 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v57, 1, 1, v39);
  v40 = type metadata accessor for Text.Suffix();
  sub_10001B350(v60, 1, 1, v40);
  v41 = v58;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  v42 = v54;
  Text.Measurements.size(of:in:context:)();
  v44 = v43;
  v46 = v45;
  sub_10010CD64(v34, v36, v38 & 1);

  (*(v59 + 8))(v41, v61);
  result = (*(v55 + 8))(v42, v56);
  v48 = v62;
  *v62 = v44;
  *(v48 + 1) = v46;
  return result;
}

unint64_t sub_100475D6C()
{
  result = qword_100CBC2C0;
  if (!qword_100CBC2C0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBC2B8, &qword_100A52C38);
    v4[0] = sub_1001CFB08();
    v4[1] = sub_1001D18D8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBC2C0);
  }

  return result;
}

void sub_100475E40(uint64_t a1)
{
  type metadata accessor for DailyForecastComponentViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_10013DB50();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          sub_10009BF30(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1001BA934(319, &qword_100CABD88, &type metadata accessor for Binding);
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

unint64_t sub_100475F88()
{
  result = qword_100CBC398;
  if (!qword_100CBC398)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBC280, &qword_100A52BD0);
    v4[0] = sub_100006F64(&qword_100CBC3A0, &qword_100CBC3A8, &qword_100A52C58, &protocol conformance descriptor for VStack<A>);
    v4[1] = sub_100006F64(&qword_100CBC3B0, &qword_100CBC3B8, &qword_100A52C60, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBC398);
  }

  return result;
}

unint64_t sub_10047606C()
{
  result = qword_100CBC420;
  if (!qword_100CBC420)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBC410, &qword_100A52DF8);
    v4[0] = sub_1001CD014();
    v4[1] = sub_1001D18D8();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBC420);
  }

  return result;
}

unint64_t sub_1004760F8()
{
  result = qword_100CBC430;
  if (!qword_100CBC430)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBC438, &qword_100A52E08);
    v4[0] = sub_1004761B4();
    v4[1] = sub_1001CE5C4(&qword_100CBC498, type metadata accessor for TrackExposureModifier, byte_100A7AA50);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBC430);
  }

  return result;
}

unint64_t sub_1004761B4()
{
  result = qword_100CBC440;
  if (!qword_100CBC440)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBC448, &qword_100A52E10);
    v4[0] = sub_10047626C();
    v4[1] = sub_100006F64(&qword_100CBC488, &qword_100CBC490, &qword_100A52E30, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBC440);
  }

  return result;
}

unint64_t sub_10047626C()
{
  result = qword_100CBC450;
  if (!qword_100CBC450)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBC458, &qword_100A52E18);
    v4[0] = sub_100476328();
    v4[1] = sub_1001CE5C4(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier, byte_100A56C3C);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBC450);
  }

  return result;
}

unint64_t sub_100476328()
{
  result = qword_100CBC460;
  if (!qword_100CBC460)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBC468, &qword_100A52E20);
    v4[0] = sub_100006F64(&qword_100CBC470, &qword_100CBC478, &qword_100A52E28, aQ_16);
    v4[1] = sub_1004763E0();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBC460);
  }

  return result;
}

unint64_t sub_1004763E0()
{
  result = qword_100CBC480;
  if (!qword_100CBC480)
  {
    result = swift_getWitnessTable(byte_100A6BBEC, &type metadata for ManagedWireframeModifier, v0, v1);
    atomic_store(result, &qword_100CBC480);
  }

  return result;
}

unint64_t sub_100476434()
{
  result = qword_100CBC4A0;
  if (!qword_100CBC4A0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(qword_100CBC4A8, &qword_100A52E38);
    v4[0] = sub_1001CE438();
    v4[1] = sub_1001CF314();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> _ConditionalContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CBC4A0);
  }

  return result;
}

uint64_t sub_1004764C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008, &unk_100A2F7B0);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel(0);
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566BC8(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_newsArticle, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566A40(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_airQuality, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v367)
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v368);
  if (v369)
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v370);
  if (v371)
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v372);
  if (v373)
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v374);
  if (v375)
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v376);
  if (v377)
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v378);
  if (v379)
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v380);
  if ((v381 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v382);
    if ((v383 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v384);
      if ((v385 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v386);
        if ((v387 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v386[0], v386[1], v386[2], v386[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v252, &v340);
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100477CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100477D90(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HistoricalFactsCategory(0);
  sub_10022C350(&qword_100CBC530, &qword_100A52F68);
  sub_100477EB0();
  sub_100477F14();

  return static NonEmpty<>.== infix(_:_:)();
}

uint64_t type metadata accessor for HistoricalFactsCategory(uint64_t a1)
{
  result = qword_100CBC5A8;
  if (!qword_100CBC5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100477EB0()
{
  result = qword_100CBC538;
  if (!qword_100CBC538)
  {
    v3 = sub_10022E824(&qword_100CBC530, &qword_100A52F68);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CBC538);
  }

  return result;
}

unint64_t sub_100477F14()
{
  result = qword_100CBC540;
  if (!qword_100CBC540)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CBC530, &qword_100A52F68);
    v4[0] = sub_100477F98();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_100CBC540);
  }

  return result;
}

unint64_t sub_100477F98()
{
  result = qword_100CB7688;
  if (!qword_100CB7688)
  {
    v3 = type metadata accessor for WeatherDescription();
    result = swift_getWitnessTable(&protocol conformance descriptor for WeatherDescription, v3, v0, v1);
    atomic_store(result, &qword_100CB7688);
  }

  return result;
}

void sub_100478018(uint64_t a1)
{
  sub_100478094(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100478094(uint64_t a1)
{
  if (!qword_100CBC5B8)
  {
    sub_10022E824(&qword_100CBC530, &qword_100A52F68);
    sub_100477EB0();
    v1 = type metadata accessor for NonEmpty();
    if (!v2)
    {
      atomic_store(v1, &qword_100CBC5B8);
    }
  }
}

_BYTE *sub_100478128(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10047821C()
{
  v0 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_100007074(v0, qword_100D8FE28);
  sub_10000703C(v0, qword_100D8FE28);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

void sub_1004782CC()
{
  sub_10000C778();
  v1 = v0;
  type metadata accessor for WeatherDescription();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  if (v1)
  {
    v3 = [objc_opt_self() mainBundle];
    v17._object = 0x8000000100ACACD0;
    v4._countAndFlagsBits = 0xD000000000000028;
    v4._object = 0x8000000100ACACA0;
    v17._countAndFlagsBits = 0xD000000000000058;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v17);

    sub_10022C350(&qword_100CA5408, &unk_100A533E0);
    v6 = type metadata accessor for WeatherDescription.Argument();
    sub_1000037C4();
    v8 = v7;
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100A2C3F0;
    *(v10 + v9) = 10;
    (*(v8 + 104))(v10 + v9, enum case for WeatherDescription.Argument.integer(_:), v6);
    WeatherDescription.init(format:_:)();
    WeatherDescription.string.getter();
    v11 = sub_100003B2C();
    v12(v11);
    sub_10002D5A4();
    Text.init<A>(_:)();
  }

  else
  {
    sub_10001C260();
    v13 = LocalizedStringKey.init(stringLiteral:)();
    sub_1000100FC(v13, v14, v15, v16);
  }

  sub_10000536C();
}

uint64_t sub_10047851C()
{
  sub_10022C350(&qword_100CAC610, &unk_100A56560);
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100005E40();
  sub_10001C260();
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v2 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v0, 0, 1, v2);
  v3 = Image.symbolRenderingMode(_:)();

  sub_10003FDF4(v0, &qword_100CAC610, &unk_100A56560);
  return v3;
}

void sub_100478600()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100005E40();
  type metadata accessor for Tips.Rule();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  if (qword_100CA20C0 != -1)
  {
    v4 = swift_once();
  }

  sub_10001983C(v4, qword_100D8FDF8);
  v5 = sub_100022C1C();
  v0(v5);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v6 = sub_100028518();
  v7 = v1(v6);
  if (qword_100CA20C8 != -1)
  {
    v7 = swift_once();
  }

  sub_100004298(v7, qword_100D8FE10);
  v8 = sub_10001698C();
  v0(v8);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v9 = sub_100049808();
  v1(v9);
  static Tips.RuleBuilder.buildPartialBlock(first:)();
  sub_100037AF0();
  sub_100003B2C();
  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  sub_10002C730();
  sub_10000536C();
}

void sub_100478838()
{
  sub_10000C778();
  v16 = v0;
  v2 = v1;
  v3 = sub_10022C350(&qword_100CBC618, &unk_100A533C8);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_10022C350(&qword_100CA5590, &unk_100A41690);
  sub_1000037C4();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v15 - v13;
  sub_100006F64(&qword_100CA55A0, &qword_100CA5590, &unk_100A41690, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = v16;
  static PredicateExpressions.build_Arg<A>(_:)();
  v2[3] = sub_10022C350(&qword_100CBC620, &qword_100A533D8);
  v2[4] = sub_10047A664();
  sub_100042FB0(v2);
  sub_100006F64(&qword_100CBC638, &qword_100CBC618, &unk_100A533C8, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v5 + 8))(v8, v3);
  (*(v11 + 8))(v14, v9);
  sub_10000536C();
}

unint64_t sub_100478AD4()
{
  result = qword_100CBC5E8;
  if (!qword_100CBC5E8)
  {
    result = swift_getWitnessTable(byte_100A53034, &unk_100C590E0, v0, v1);
    atomic_store(result, &qword_100CBC5E8);
  }

  return result;
}

uint64_t sub_100478B50()
{
  sub_10001C260();
  v0 = LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC(v0, v1, v2, v3);
}

uint64_t sub_100478B8C()
{
  sub_10001C260();
  v0 = LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC(v0, v1, v2, v3);
}

void sub_100478BE8()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100005E40();
  type metadata accessor for Tips.Rule();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  if (qword_100CA20D8 != -1)
  {
    v4 = swift_once();
  }

  sub_10001983C(v4, qword_100D8FE40);
  v5 = sub_100022C1C();
  v0(v5);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v6 = sub_100028518();
  v7 = v1(v6);
  if (qword_100CA20E0 != -1)
  {
    v7 = swift_once();
  }

  sub_100004298(v7, qword_100D8FE58);
  v8 = sub_10001698C();
  v0(v8);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v9 = sub_100049808();
  v1(v9);
  static Tips.RuleBuilder.buildPartialBlock(first:)();
  sub_100037AF0();
  sub_100003B2C();
  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  sub_10002C730();
  sub_10000536C();
}

unint64_t sub_100478E60()
{
  result = qword_100CBC5F0;
  if (!qword_100CBC5F0)
  {
    result = swift_getWitnessTable(aE_46, &unk_100C59068, v0, v1);
    atomic_store(result, &qword_100CBC5F0);
  }

  return result;
}

uint64_t sub_100478EDC()
{
  sub_10001C260();
  v0 = LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC(v0, v1, v2, v3);
}

uint64_t sub_100478F18()
{
  sub_10001C260();
  v0 = LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC(v0, v1, v2, v3);
}

void sub_100478F54()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100005E40();
  type metadata accessor for Tips.Rule();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  if (qword_100CA20E8 != -1)
  {
    v4 = swift_once();
  }

  sub_10001983C(v4, qword_100D8FE70);
  v5 = sub_100022C1C();
  v0(v5);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v6 = sub_100028518();
  v7 = v1(v6);
  if (qword_100CA20F0 != -1)
  {
    v7 = swift_once();
  }

  sub_100004298(v7, qword_100D8FE88);
  v8 = sub_10001698C();
  v0(v8);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v9 = sub_100049808();
  v1(v9);
  static Tips.RuleBuilder.buildPartialBlock(first:)();
  sub_100037AF0();
  sub_100003B2C();
  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  sub_10002C730();
  sub_10000536C();
}

unint64_t sub_1004791EC()
{
  result = qword_100CBC5F8;
  if (!qword_100CBC5F8)
  {
    result = swift_getWitnessTable(asc_100A53164, &unk_100C59048, v0, v1);
    atomic_store(result, &qword_100CBC5F8);
  }

  return result;
}

uint64_t sub_100479268()
{
  sub_10001C260();
  v0 = LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC(v0, v1, v2, v3);
}

uint64_t sub_1004792A4()
{
  sub_10001C260();
  v0 = LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC(v0, v1, v2, v3);
}

uint64_t sub_1004792E0(uint64_t a1, uint64_t a2)
{
  sub_10022C350(&qword_100CBB908, &unk_100A511B0);
  sub_100003828();
  __chkstk_darwin(v2);
  v4 = &v9 - v3;
  Image.init(systemName:)();
  v5 = enum case for Image.TemplateRenderingMode.template(_:);
  v6 = type metadata accessor for Image.TemplateRenderingMode();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  sub_10001B350(v4, 0, 1, v6);
  v7 = Image.renderingMode(_:)();

  sub_10003FDF4(v4, &qword_100CBB908, &unk_100A511B0);
  return v7;
}

void sub_100479404()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100005E40();
  type metadata accessor for Tips.Rule();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  if (qword_100CA20F8 != -1)
  {
    v4 = swift_once();
  }

  sub_10001983C(v4, qword_100D8FEA0);
  v5 = sub_100022C1C();
  v0(v5);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v6 = sub_100028518();
  v7 = v1(v6);
  if (qword_100CA2100 != -1)
  {
    v7 = swift_once();
  }

  sub_100004298(v7, qword_100D8FEB8);
  v8 = sub_10001698C();
  v0(v8);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v9 = sub_100049808();
  v1(v9);
  static Tips.RuleBuilder.buildPartialBlock(first:)();
  sub_100037AF0();
  sub_100003B2C();
  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  sub_10002C730();
  sub_10000536C();
}

void sub_10047963C()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA5578, &unk_100A41670);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v0);
  v1 = sub_100051E2C();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA5588, &unk_100A41680);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v3 + 8))(v7, v1);
  v17 = v1;
  v18 = &protocol witness table for Tips.MaxDisplayCount;
  v14 = sub_1000695A4();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v17 = v8;
  v18 = v14;
  sub_100013848();
  sub_100003B2C();
  static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  v15 = sub_100003B2C();
  v16(v15);
  (*(v10 + 8))(v13, v8);
  sub_10000536C();
}

uint64_t sub_1004798D0@<X0>(uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  a2();
  result = Tip.id.getter();
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_100479918()
{
  result = qword_100CBC600;
  if (!qword_100CBC600)
  {
    result = swift_getWitnessTable(a5_23, &unk_100C59028, v0, v1);
    atomic_store(result, &qword_100CBC600);
  }

  return result;
}

uint64_t sub_1004799C4(char a1)
{
  if ((a1 & 1) == 0)
  {
    sub_10001C260();
  }

  v1 = LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC(v1, v2, v3, v4);
}

void sub_100479A44()
{
  sub_10000C778();
  v3 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100005E40();
  v7 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100005888();
  if (qword_100CA2108 != -1)
  {
    v11 = swift_once();
  }

  sub_10001983C(v11, qword_100D8FED0);
  v12 = *(v5 + 16);
  v12(v0, v2, v3);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13 = *(v9 + 8);
  v14 = v13(v1, v7);
  if (qword_100CA2110 != -1)
  {
    v14 = swift_once();
  }

  sub_100004298(v14, qword_100D8FEE8);
  v15 = sub_10001698C();
  (v12)(v15);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v1, v7);
  if (qword_100CA2118 != -1)
  {
    swift_once();
  }

  v16 = sub_10000703C(v3, qword_100D8FF00);
  swift_beginAccess();
  v12(v0, v16, v3);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v17 = sub_100049808();
  (v13)(v17);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  sub_10000536C();
}

unint64_t sub_100479DEC()
{
  result = qword_100CBC608;
  if (!qword_100CBC608)
  {
    result = swift_getWitnessTable(byte_100A53294, &unk_100C59000, v0, v1);
    atomic_store(result, &qword_100CBC608);
  }

  return result;
}

uint64_t sub_100479E54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_100007074(v6, a2);
  sub_10000703C(v6, a2);
  sub_10022C350(&qword_100CA55A8, &qword_100A2FAA0);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100479FB0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_100007074(v4, a2);
  sub_10000703C(v4, a2);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10047A06C()
{
  sub_10001C260();
  v0 = LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC(v0, v1, v2, v3);
}

uint64_t sub_10047A0A8(char a1)
{
  if ((a1 & 1) == 0)
  {
    sub_10001C260();
  }

  v1 = LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC(v1, v2, v3, v4);
}

void sub_10047A130()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100005E40();
  type metadata accessor for Tips.Rule();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  if (qword_100CA2120 != -1)
  {
    v4 = swift_once();
  }

  sub_10001983C(v4, qword_100D8FF18);
  v5 = sub_100022C1C();
  v0(v5);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v6 = sub_100028518();
  v7 = v1(v6);
  if (qword_100CA2128 != -1)
  {
    v7 = swift_once();
  }

  sub_100004298(v7, qword_100D8FF30);
  v8 = sub_10001698C();
  v0(v8);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v9 = sub_100049808();
  v1(v9);
  static Tips.RuleBuilder.buildPartialBlock(first:)();
  sub_100037AF0();
  sub_100003B2C();
  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  sub_10002C730();
  sub_10000536C();
}

void sub_10047A368()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA5578, &unk_100A41670);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v0);
  v1 = sub_100051E2C();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA5588, &unk_100A41680);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v3 + 8))(v7, v1);
  v17 = v1;
  v18 = &protocol witness table for Tips.MaxDisplayCount;
  v14 = sub_1000695A4();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v17 = v8;
  v18 = v14;
  sub_100013848();
  sub_100003B2C();
  static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  v15 = sub_100003B2C();
  v16(v15);
  (*(v10 + 8))(v13, v8);
  sub_10000536C();
}

uint64_t sub_10047A5C8@<X0>(uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  a2();
  result = Tip.id.getter();
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_10047A610()
{
  result = qword_100CBC610;
  if (!qword_100CBC610)
  {
    result = swift_getWitnessTable(byte_100A5332C, &unk_100C58F80, v0, v1);
    atomic_store(result, &qword_100CBC610);
  }

  return result;
}

unint64_t sub_10047A664()
{
  result = qword_100CBC628;
  if (!qword_100CBC628)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CBC620, &qword_100A533D8);
    v4[0] = sub_100006F64(&qword_100CA5598, &qword_100CA5590, &unk_100A41690, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    v4[1] = sub_10047A71C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_100CBC628);
  }

  return result;
}

unint64_t sub_10047A71C()
{
  result = qword_100CBC630;
  if (!qword_100CBC630)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_10022E824(&qword_100CBC618, &unk_100A533C8);
    v4[0] = &protocol witness table for Bool;
    v4[1] = &protocol witness table for Bool;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> PredicateExpressions.Value<A>, v3, v4);
    atomic_store(result, &qword_100CBC630);
  }

  return result;
}

unint64_t sub_10047A7A0()
{
  result = qword_100CBC640;
  if (!qword_100CBC640)
  {
    result = swift_getWitnessTable(byte_100A53364, &unk_100C58F80, v0, v1);
    atomic_store(result, &qword_100CBC640);
  }

  return result;
}

unint64_t sub_10047A7F4()
{
  result = qword_100CBC648;
  if (!qword_100CBC648)
  {
    result = swift_getWitnessTable(byte_100A532CC, &unk_100C59000, v0, v1);
    atomic_store(result, &qword_100CBC648);
  }

  return result;
}

unint64_t sub_10047A848()
{
  result = qword_100CBC650;
  if (!qword_100CBC650)
  {
    result = swift_getWitnessTable(byte_100A53234, &unk_100C59028, v0, v1);
    atomic_store(result, &qword_100CBC650);
  }

  return result;
}

unint64_t sub_10047A89C()
{
  result = qword_100CBC658;
  if (!qword_100CBC658)
  {
    result = swift_getWitnessTable(byte_100A5319C, &unk_100C59048, v0, v1);
    atomic_store(result, &qword_100CBC658);
  }

  return result;
}

unint64_t sub_10047A8F0()
{
  result = qword_100CBC660;
  if (!qword_100CBC660)
  {
    result = swift_getWitnessTable(aM_28, &unk_100C59068, v0, v1);
    atomic_store(result, &qword_100CBC660);
  }

  return result;
}

unint64_t sub_10047A944()
{
  result = qword_100CBC668;
  if (!qword_100CBC668)
  {
    result = swift_getWitnessTable(byte_100A5306C, &unk_100C590E0, v0, v1);
    atomic_store(result, &qword_100CBC668);
  }

  return result;
}

void sub_10047A9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    type metadata accessor for URLHandlerPattern();
    sub_100003DDC();
    v5 = _swiftEmptyArrayStorage;
    v6 = a1 + 40;
    while (1)
    {
      v15 = v3;
      sub_10022C350(&qword_100CB5260, &unk_100A48A20);
      *(swift_allocObject() + 16) = xmmword_100A3BBA0;
      swift_bridgeObjectRetain_n();

      URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)();

      sub_100019874(1886680168, 0xE400000000000000, v7, 0x8000000100ACAD80);

      sub_100019874(0x7370747468, 0xE500000000000000, v8, 0x8000000100ACAD80);
      v9 = v5[2];
      if (__OFADD__(v9, 3))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v10 = v5[3] >> 1, v10 < v9 + 3))
      {
        sub_10069F730();
        v5 = v11;
        v10 = v11[3] >> 1;
      }

      if (v10 - v5[2] < 3)
      {
        goto LABEL_13;
      }

      swift_arrayInitWithCopy();

      v12 = v5[2];
      v13 = __OFADD__(v12, 3);
      v14 = v12 + 3;
      if (v13)
      {
        goto LABEL_14;
      }

      v6 += 16;
      v5[2] = v14;
      --v3;
      if (v15 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_10047AC90(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB5268, &unk_100A53480);
  sub_1000037C4();
  v190 = v3;
  __chkstk_darwin(v4);
  v189 = &v173 - v5;
  v6 = sub_10022C350(&qword_100CA6898, &unk_100A3FA90);
  __chkstk_darwin(v6 - 8);
  sub_100003918(&v173 - v7);
  v185 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v184 = v8;
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v10);
  v183 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v181 = v11;
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_100003918(v13);
  v192 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  v179 = v14;
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  v18 = sub_100003918(&v173 - v17);
  v188 = type metadata accessor for OpenL2Descriptor(v18);
  sub_1000037C4();
  v173 = v19;
  __chkstk_darwin(v20);
  v175 = &v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = v21;
  __chkstk_darwin(v22);
  v24 = sub_100003918(&v173 - v23);
  v197 = type metadata accessor for ActivityAction(v24);
  sub_1000037E8();
  __chkstk_darwin(v25);
  sub_1000038E4();
  sub_100003918(v26);
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  sub_1000037C4();
  v214 = v27;
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003918(&v173 - v31);
  v223 = type metadata accessor for URLHandlerMatch.Values();
  sub_1000037C4();
  v33 = v32;
  __chkstk_darwin(v34);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  v215 = v39;
  __chkstk_darwin(v40);
  v42 = &v173 - v41;
  v43 = type metadata accessor for URLHandlerMatch();
  sub_1000037C4();
  v45 = v44;
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v50);
  v52 = &v173 - v51;
  __chkstk_darwin(v53);
  v55 = &v173 - v54;
  v56 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v56 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  v59 = &v173 - v58;
  v60 = type metadata accessor for Date();
  v216 = v59;
  v193 = v60;
  sub_10001B350(v59, 1, 1, v60);
  sub_100066E08();
  v213 = Dictionary.init(dictionaryLiteral:)();
  v61 = v2;
  v62 = a1;
  URLHandlerContext.match.getter();
  URLHandlerMatch.values.getter();
  v63 = v55;
  v64 = *(v45 + 8);
  v65 = v43;
  v66 = v43;
  v67 = v45 + 8;
  v64(v63, v66);
  v199 = URLHandlerMatch.Values.subscript.getter();
  v69 = v68;
  v70 = *(v33 + 8);
  v212 = v33 + 8;
  v70(v42, v223);
  v219 = v64;
  v220 = v67;
  v211 = v52;
  v221 = v62;
  v222 = v70;
  v217 = v61;
  v218 = v65;
  if (v69)
  {
    URLHandlerContext.match.getter();
    v71 = v215;
    URLHandlerMatch.values.getter();
    v64(v52, v65);
    v72 = v214;
    v73 = (v214 + 104);
    v209 = *(v214 + 104);
    v74 = v207;
    v75 = ParameterKey;
    v209(v207, enum case for WeatherQueryParameterKey.temperature(_:), ParameterKey);
    WeatherQueryParameterKey.rawValue.getter();
    v208 = *(v72 + 8);
    v208(v74, v75);
    v76 = URLHandlerMatch.Values.subscript.getter();
    v78 = v77;

    v79 = v223;
    v222(v71, v223);
    LODWORD(v207) = sub_1009FFFA4(v199, v69, v76, v78);
    v80 = v200;
    URLHandlerContext.match.getter();
    v81 = v201;
    URLHandlerMatch.values.getter();
    v82 = v219;
    v219(v80, v218);
    v83 = v202;
    v200 = v73;
    v209(v202, enum case for WeatherQueryParameterKey.date(_:), v75);
    WeatherQueryParameterKey.rawValue.getter();
    v214 = v72 + 8;
    v208(v83, v75);
    URLHandlerMatch.Values.subscript.getter();
    v85 = v84;

    v222(v81, v79);
    v86 = v82;
    if (v85)
    {
      v87 = [objc_allocWithZone(NSISO8601DateFormatter) init];
      [v87 setFormatOptions:1907];
      v88 = String._bridgeToObjectiveC()();

      v89 = [v87 dateFromString:v88];

      if (v89)
      {
        v90 = v194;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000180EC(v216, &unk_100CB2CF0, &unk_100A2D7F0);
        v91 = 0;
      }

      else
      {
        sub_1000180EC(v216, &unk_100CB2CF0, &unk_100A2D7F0);

        v91 = 1;
        v90 = v194;
      }

      sub_10001B350(v90, v91, 1, v193);
      sub_100237E84(v90, v216);
    }

    v95 = v204;
    URLHandlerContext.match.getter();
    v96 = v205;
    URLHandlerMatch.values.getter();
    v86(v95, v218);
    v97 = v206;
    v209(v206, enum case for WeatherQueryParameterKey.position(_:), v75);
    WeatherQueryParameterKey.rawValue.getter();
    v208(v97, v75);
    v98 = URLHandlerMatch.Values.subscript.getter();
    v100 = v99;

    v222(v96, v223);
    if (v100)
    {
      v101 = v213;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v101;
      sub_100239630(v98, v100, isUniquelyReferenced_nonNull_native, v103, v104, v105, v106, v107, v173, v174);
      v213 = aBlock[0];
    }

    v94 = v210;
    v52 = v211;
    v92 = v223;
    v93 = v218;
  }

  else
  {
    LODWORD(v207) = 18;
    v92 = v223;
    v93 = v65;
    v94 = v210;
  }

  URLHandlerContext.match.getter();
  v108 = v215;
  URLHandlerMatch.values.getter();
  v219(v52, v93);
  v109 = v93;
  v110 = sub_10022F3D4();
  v111 = v222;
  v222(v108, v92);
  if ((v110 & 1) == 0)
  {
    v118 = v195;
    v119 = v111;
    URLHandlerContext.match.getter();
    v120 = v196;
    URLHandlerMatch.values.getter();
    v121 = v118;
    v122 = v219;
    v219(v121, v109);
    *&v123 = COERCE_DOUBLE(sub_10022F730());
    v125 = v124;
    v127 = v126;
    v119(v120, v92);
    if ((v127 & 1) == 0)
    {
      v159 = *&v123;
      v160 = v125;
      v214 = v94[11];
      v161 = v211;
      URLHandlerContext.match.getter();
      v162 = v215;
      URLHandlerMatch.values.getter();
      v163 = v218;
      v122(v161, v218);
      v211 = sub_10022FA00();
      v210 = v164;
      v165 = v222;
      v222(v162, v92);
      v166 = v186;
      URLHandlerContext.match.getter();
      v167 = v187;
      URLHandlerMatch.values.getter();
      v122(v166, v163);
      v168 = sub_10022F3E0();
      v165(v167, v92);
      v169 = v216;
      sub_1002A2C08(v211, v210, v207, v216, v213, v168 & 1, 0, v159, v160);

      v170 = v169;
LABEL_26:
      sub_1000180EC(v170, &unk_100CB2CF0, &unk_100A2D7F0);
      return 1;
    }

    v128 = v221;
    v129 = v217;

    if (qword_100CA2758 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    sub_10000703C(v130, qword_100D90C60);
    v131 = v190;
    v132 = v189;
    (*(v190 + 16))(v189, v128, v129);
    v133 = Logger.logObject.getter();
    v134 = static os_log_type_t.default.getter();
    v135 = os_log_type_enabled(v133, v134);
    v136 = v211;
    if (v135)
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      aBlock[0] = v138;
      *v137 = 141558275;
      *(v137 + 4) = 1752392040;
      *(v137 + 12) = 2081;
      URLHandlerContext.match.getter();
      URLHandlerMatch.values.getter();
      v219(v136, v218);
      v139 = String.init<A>(describing:)();
      v141 = v140;
      (*(v131 + 8))(v132, v129);
      v142 = sub_100078694(v139, v141, aBlock);

      *(v137 + 14) = v142;
      _os_log_impl(&_mh_execute_header, v133, v134, "No coordinates available in URL, matches=%{private,mask.hash}s", v137, 0x16u);
      sub_100006F14(v138);
    }

    else
    {

      (*(v131 + 8))(v132, v129);
    }

LABEL_25:
    v170 = v216;
    goto LABEL_26;
  }

  v112 = v94;
  sub_1000161C0(v94 + 6, v94[9]);
  v113 = v198;
  swift_storeEnumTagMultiPayload();
  v114 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  v115 = static VerticalSizingBehaviorKey.defaultValue.getter();
  v116 = sub_100366814(v113, v114 & 1, v115 & 1);
  sub_10047C2CC(v113, type metadata accessor for ActivityAction);
  v117 = v207;
  if (v207 != 18)
  {
    v143 = v188;
    v144 = *(v188 + 24);
    v145 = v191;
    static Location.current.getter();
    v146 = type metadata accessor for Location();
    sub_10001B350(&v145[v144], 0, 1, v146);
    sub_1000D47CC(v216, &v145[v143[9]]);
    *v145 = v117;
    v145[1] = 0;
    v147 = &v145[v143[7]];
    *v147 = 0;
    *(v147 + 1) = 0;
    v147[16] = 1;
    v148 = &v145[v143[8]];
    *v148 = 0;
    v148[1] = 0;
    *&v145[v143[10]] = v213;
    if (v116)
    {
      sub_100040690();
      v222 = static OS_dispatch_queue.main.getter();
      v149 = v176;
      static DispatchTime.now()();
      v150 = v178;
      + infix(_:_:)();
      v223 = *(v179 + 8);
      v223(v149, v192);
      v151 = v175;
      sub_10047C268(v145, v175);
      v152 = (*(v173 + 80) + 24) & ~*(v173 + 80);
      v153 = swift_allocObject();
      *(v153 + 16) = v112;
      sub_10047C324(v151, v153 + v152);
      aBlock[4] = sub_10047C388;
      aBlock[5] = v153;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000742F0;
      aBlock[3] = &unk_100C59130;
      v154 = _Block_copy(aBlock);

      v155 = v180;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10047C3EC(&qword_100CD81C0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
      sub_1000743E8();
      v156 = v182;
      v157 = v185;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v158 = v222;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v154);

      (*(v184 + 8))(v156, v157);
      (*(v181 + 8))(v155, v183);
      v223(v150, v192);
    }

    else
    {
      sub_1000161C0(v112 + 6, v112[9]);
      v171 = v177;
      sub_10047C268(v145, v177);
      sub_10001B350(v171, 0, 1, v143);
      sub_100364F6C(v171);
      sub_1000180EC(v171, &qword_100CA6898, &unk_100A3FA90);
    }

    sub_10047C2CC(v145, type metadata accessor for OpenL2Descriptor);
    goto LABEL_25;
  }

  sub_1000180EC(v216, &unk_100CB2CF0, &unk_100A2D7F0);

  return 1;
}

uint64_t sub_10047C058(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6898, &unk_100A3FA90);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_1000161C0((a1 + 48), *(a1 + 72));
  sub_10047C268(a2, v6);
  v7 = type metadata accessor for OpenL2Descriptor(0);
  sub_10001B350(v6, 0, 1, v7);
  sub_100364F6C(v6);
  return sub_1000180EC(v6, &qword_100CA6898, &unk_100A3FA90);
}

uint64_t sub_10047C138()
{

  sub_100006F14((v0 + 48));

  return v0;
}

uint64_t sub_10047C184()
{
  sub_10047C138();

  return swift_deallocClassInstance();
}

uint64_t sub_10047C210(uint64_t a1, uint64_t a2)
{
  result = sub_10047C3EC(&qword_100CBC728, a2, type metadata accessor for LocationURLHandlerLink, byte_100A53428);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10047C268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenL2Descriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047C2CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10047C324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenL2Descriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047C388()
{
  v1 = *(type metadata accessor for OpenL2Descriptor(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10047C058(v2, v3);
}

uint64_t sub_10047C3EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10047C434(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActualListInput(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v5 = v4 - v3;
  v6 = type metadata accessor for ListInput(0);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&qword_100CBC9A0, &qword_100A53588);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v20 - v13;
  v16 = *(v15 + 56);
  sub_10047E658();
  sub_10047E658();
  sub_10000394C(v14);
  if (!v18)
  {
    sub_10047E658();
    sub_10000394C(&v14[v16]);
    if (!v18)
    {
      sub_10047E600();
      v17 = sub_10047C654(v10, v5);
      sub_10047E5A8(v5, type metadata accessor for ActualListInput);
      sub_10047E5A8(v10, type metadata accessor for ActualListInput);
      sub_100049818();
      return v17 & 1;
    }

    sub_10047E5A8(v10, type metadata accessor for ActualListInput);
LABEL_9:
    sub_1000180EC(v14, &qword_100CBC9A0, &qword_100A53588);
    v17 = 0;
    return v17 & 1;
  }

  sub_10000394C(&v14[v16]);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_100049818();
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_10047C654(uint64_t a1, uint64_t a2)
{
  v134 = type metadata accessor for ContentStatusBanner(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA5010, &unk_100A2F250);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v135 = v10;
  v133 = sub_10022C350(&qword_100CA50C0, &qword_100A2F2F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v136 = v12;
  type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v137 = v14;
  v15 = sub_10022C350(&qword_100CB0250, &qword_100A3FF58);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v138 = v17;
  v18 = sub_10022C350(&qword_100CBC9A8, &unk_100A5D740);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  v139 = v20;
  v21 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v129 - v28;
  v30 = sub_10022C350(&qword_100CBC9B0, &unk_100A53590);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &v129 - v32;
  sub_1000B9770();
  if ((v34 & 1) == 0)
  {
    goto LABEL_16;
  }

  v130 = v7;
  v35 = type metadata accessor for ActualListInput(0);
  v140 = a2;
  v36 = a1;
  v37 = *(v30 + 48);
  v131 = v35;
  v132 = v36;
  sub_100095588();
  v38 = v140;
  sub_100095588();
  sub_1000038B4(v33, 1, v21);
  if (v45)
  {
    sub_1000038B4(&v33[v37], 1, v21);
    if (v45)
    {
      sub_1000180EC(v33, &unk_100CE49F0, &unk_100A3AFA0);
      goto LABEL_13;
    }

LABEL_10:
    v47 = &qword_100CBC9B0;
    v48 = &unk_100A53590;
    v49 = v33;
LABEL_11:
    sub_1000180EC(v49, v47, v48);
    goto LABEL_16;
  }

  sub_100095588();
  sub_1000038B4(&v33[v37], 1, v21);
  if (v45)
  {
    sub_1000086D4();
    sub_10047E5A8(v29, v46);
    goto LABEL_10;
  }

  sub_10047E600();
  v50 = static CurrentLocation.== infix(_:_:)();
  sub_10047E5A8(v25, &type metadata accessor for CurrentLocation);
  sub_10047E5A8(v29, &type metadata accessor for CurrentLocation);
  sub_1000180EC(v33, &unk_100CE49F0, &unk_100A3AFA0);
  if ((v50 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v52 = v131;
  v51 = v132;
  sub_1000B9068(*(v132 + v131[6]), *(v38 + v131[6]), v39, v40, v41, v42, v43, v44, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
  if ((v53 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000B93DC();
  if ((v54 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10004E60C();
  if (!v45)
  {
    goto LABEL_16;
  }

  sub_10000EA78();
  if (v57)
  {
    if (!v58)
    {
      goto LABEL_16;
    }

    v61 = *v59 == *v60 && v57 == v58;
    if (!v61 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v58)
  {
    goto LABEL_16;
  }

  v62 = v52[10];
  v63 = (v51 + v62);
  v64 = *(v51 + v62 + 8);
  v65 = (v38 + v62);
  v66 = *(v38 + v62 + 8);
  if (v64 == 1)
  {
    if ((v66 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v63 != *v65)
    {
      v66 = 1;
    }

    if (v66)
    {
      goto LABEL_16;
    }
  }

  sub_10004E60C();
  if (!v45)
  {
    goto LABEL_16;
  }

  v67 = v52[12];
  v68 = *(v51 + v67);
  v69 = *(v51 + v67 + 8);
  v70 = (v38 + v67);
  v71 = v68 == *v70 && v69 == v70[1];
  if (!v71 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10000EA78();
  if (v72)
  {
    if (!v73)
    {
      goto LABEL_16;
    }

    v76 = *v74 == *v75 && v72 == v73;
    if (!v76 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v73)
  {
    goto LABEL_16;
  }

  v77 = v52[14];
  v78 = *(v18 + 48);
  v79 = v139;
  sub_1000314B0(v51 + v77, v139);
  sub_1000314B0(v38 + v77, v79 + v78);
  sub_10000394C(v79);
  if (v45)
  {
    sub_10000394C(v79 + v78);
    if (v45)
    {
      sub_1000180EC(v79, &qword_100CB0250, &qword_100A3FF58);
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v80 = v138;
  sub_100095588();
  sub_10000394C(v79 + v78);
  if (v81)
  {
    sub_10047E5A8(v80, type metadata accessor for SearchViewState.ViewState);
LABEL_57:
    v47 = &qword_100CBC9A8;
    v48 = &unk_100A5D740;
    v49 = v79;
    goto LABEL_11;
  }

  v82 = v137;
  sub_10047E600();
  sub_1000BB564(v80, v82, v83, v84, v85, v86, v87, v88, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
  v90 = v89;
  sub_10047E5A8(v82, type metadata accessor for SearchViewState.ViewState);
  sub_10047E5A8(v80, type metadata accessor for SearchViewState.ViewState);
  sub_1000180EC(v79, &qword_100CB0250, &qword_100A3FF58);
  if ((v90 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_59:
  sub_10004E60C();
  if (!v45)
  {
    goto LABEL_16;
  }

  sub_10004E60C();
  if (!v45)
  {
    goto LABEL_16;
  }

  if (!sub_1001AEF68(*(v51 + v52[17]) | (*(v51 + v52[17] + 2) << 16), *(v38 + v52[17]) | (*(v38 + v52[17] + 2) << 16)))
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  v91 = v131[24];
  v92 = *(v140 + v91);
  v93 = LocationAuthorizationState.rawValue.getter(*(v132 + v91));
  v95 = v94;
  if (v93 == LocationAuthorizationState.rawValue.getter(v92) && v95 == v96)
  {
  }

  else
  {
    v98 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v98 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ((sub_1000BA238() & 1) == 0)
  {
    goto LABEL_16;
  }

  v99 = v131[26];
  v100 = v132 + v99;
  v101 = *(v132 + v99);
  v102 = (v140 + v99);
  if (v101 != *v102)
  {
    goto LABEL_16;
  }

  v103 = *(v102 + 2);
  v104 = *(v100 + 16);
  sub_1000BDA70();
  if ((v105 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000BDD2C(v104, v103);
  if ((v106 & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  v107 = v131[29];
  v108 = *(v132 + v107);
  v109 = *(v140 + v107);
  if (v108)
  {
    if (!v109)
    {
      goto LABEL_16;
    }

    sub_1000B8CA8();
    v110 = v109;
    v111 = v108;
    v112 = static NSObject.== infix(_:_:)();

    if ((v112 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v109)
  {
    goto LABEL_16;
  }

  v113 = v131[30];
  v114 = *(v132 + v113);
  v115 = *(v132 + v113 + 8);
  v116 = (v140 + v113);
  v117 = v114 == *v116 && v115 == v116[1];
  if (!v117 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000BCFBC();
  if ((v118 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_100003940();
  sub_1000BD330();
  if ((v119 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  if (*(v132 + v131[32]) != *(v140 + v131[32]))
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  v120 = v131[34];
  v121 = *(v133 + 48);
  v122 = v136;
  sub_1000314B0(v132 + v120, v136);
  sub_1000314B0(v140 + v120, v122 + v121);
  sub_1000038B4(v122, 1, v134);
  if (!v45)
  {
    v123 = v136;
    sub_100095588();
    sub_1000038B4(v123 + v121, 1, v134);
    if (!v124)
    {
      v125 = v136;
      v126 = v130;
      sub_10047E600();
      v127 = v135;
      v128 = sub_100133BA0(v135, v126);
      sub_10047E5A8(v126, type metadata accessor for ContentStatusBanner);
      sub_10047E5A8(v127, type metadata accessor for ContentStatusBanner);
      sub_1000180EC(v125, &qword_100CA5010, &unk_100A2F250);
      if (!v128)
      {
        goto LABEL_16;
      }

      goto LABEL_116;
    }

    sub_10047E5A8(v135, type metadata accessor for ContentStatusBanner);
    goto LABEL_114;
  }

  sub_1000038B4(v136 + v121, 1, v134);
  if (!v45)
  {
LABEL_114:
    v47 = &qword_100CA50C0;
    v48 = &qword_100A2F2F0;
    v49 = v136;
    goto LABEL_11;
  }

  sub_1000180EC(v136, &qword_100CA5010, &unk_100A2F250);
LABEL_116:
  sub_10001ED14();
  if (v45)
  {
    sub_10001ED14();
    if (v45)
    {
      sub_1000B9424();
      return v55 & 1;
    }
  }

LABEL_16:
  v55 = 0;
  return v55 & 1;
}

double sub_10047D13C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a2;
  v184 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  v5 = sub_100003918(v4);
  v6 = type metadata accessor for TimeState(v5);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_1000038E4();
  sub_100003918(v8);
  v9 = type metadata accessor for Date();
  v10 = sub_100003E5C(v9, &v208);
  v186 = v11;
  __chkstk_darwin(v10);
  sub_100003848();
  v197 = v12;
  __chkstk_darwin(v13);
  v196 = &v155 - v14;
  v15 = sub_10022C350(&qword_100CB0250, &qword_100A3FF58);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v195 = v17;
  v18 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  sub_100003848();
  v182 = v20;
  __chkstk_darwin(v21);
  v23 = sub_100003918(&v155 - v22);
  v185 = type metadata accessor for ListInput(v23);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  v27 = (v26 - v25);
  v28 = type metadata accessor for CurrentWeather();
  v29 = sub_100003E5C(v28, &v199);
  v166 = v30;
  __chkstk_darwin(v29);
  sub_1000038E4();
  v32 = sub_100003918(v31);
  active = type metadata accessor for LocationViewerActiveLocationState(v32);
  v34 = sub_100003810(active);
  __chkstk_darwin(v34);
  sub_1000038E4();
  v169 = v35;
  v36 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  sub_100003810(v36);
  sub_100003828();
  __chkstk_darwin(v37);
  sub_1000039BC();
  v170 = v38;
  v39 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  sub_100003810(v39);
  sub_100003828();
  __chkstk_darwin(v40);
  sub_1000039BC();
  v42 = sub_100003918(v41);
  v171 = type metadata accessor for WeatherData(v42);
  sub_1000037E8();
  __chkstk_darwin(v43);
  sub_1000038E4();
  v45 = sub_100003918(v44);
  v175 = type metadata accessor for ViewState.SecondaryViewState(v45);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_1000038E4();
  v179 = v47;
  v48 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  v49 = sub_100003810(v48);
  __chkstk_darwin(v49);
  sub_100003848();
  v193 = v50;
  __chkstk_darwin(v51);
  v53 = &v155 - v52;
  __chkstk_darwin(v54);
  v56 = &v155 - v55;
  __chkstk_darwin(v57);
  v59 = &v155 - v58;
  v199 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v60);
  sub_1000037D8();
  v63 = (v62 - v61);
  sub_10002852C();
  v205 = v64;
  sub_10047E658();
  v206 = *v63;

  sub_100022C30();
  v181 = v63;
  sub_10047E5A8(v63, v65);
  v66 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v203 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v68 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v67 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v168 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
  v192 = (a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
  sub_100095588();
  v194 = a1;
  v69 = (a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
  v190 = type metadata accessor for NotificationsOptInState(0);
  v191 = v69;
  LODWORD(v189) = v69[v190[16]];
  v200 = v59;
  sub_100095588();
  v70 = type metadata accessor for CurrentLocation();
  v71 = sub_10000C7F0();
  LODWORD(v69) = sub_100024D10(v71, v72, v70);
  v204 = v66;

  v202 = v68;

  v201 = v67;

  if (v69 == 1)
  {
    sub_1000180EC(v56, &unk_100CE49F0, &unk_100A3AFA0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_1000086D4();
    sub_10047E5A8(v56, v73);
  }

  sub_100141E5C();
  v75 = v74;

  sub_100095588();
  sub_1000038B4(v53, 1, v70);
  v76 = v194;
  if (v101)
  {
    sub_1000180EC(v53, &unk_100CE49F0, &unk_100A3AFA0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_1000086D4();
    sub_10047E5A8(v53, v77);
  }

  sub_100141E74();
  v79 = v78;

  v80 = v76 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v174 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
  v81 = *(v76 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  v82 = *(v80 + 2);
  v176 = v80;
  v178 = sub_100141E8C(v189, v75 & 1, v79 & 1, *(v80 + 1), v81, v82);

  v177 = sub_100441CA8(v83);
  v84 = *(v206 + 56);
  v85 = v191[v190[14]];
  if (*(v198 + 16))
  {
    v86 = v179;
    if (*(v198 + 16) != 3 && !v191[v190[14]])
    {
      v85 = *(v198 + 16);
    }
  }

  else
  {
    v86 = v179;
  }

  LODWORD(v179) = v85;
  v87 = *(v206 + 48);
  sub_10047E658();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v173 = v87;
  v189 = v84;
  if (EnumCaseMultiPayload == 1)
  {

    sub_10047E5A8(v86, type metadata accessor for ViewState.SecondaryViewState);
    LODWORD(v175) = 0;
    goto LABEL_22;
  }

  v89 = *(v168 + 16);
  v90 = v169;
  sub_10047E658();

  v91 = sub_1000E0924();
  v93 = v92;
  sub_10047E5A8(v90, type metadata accessor for LocationViewerActiveLocationState);
  v94 = v170;
  sub_1000864C0(v91, v93, v89);

  v95 = v94;

  v96 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000038B4(v94, 1, v96);
  if (v101)
  {

    sub_1000180EC(v94, &qword_100CA37B0, &unk_100A2D740);
    v100 = v172;
    v97 = sub_10000C7F0();
    sub_10001B350(v97, v98, 1, v171);
  }

  else
  {
    v99 = v172;
    sub_1001A0D3C();
    v100 = v99;
    sub_10047E5A8(v95, type metadata accessor for LocationWeatherDataState);
    sub_1000038B4(v99, 1, v171);
    if (!v101)
    {
      v102 = v164;
      sub_10047E600();
      v103 = v165;
      WeatherDataModel.currentWeather.getter();
      LODWORD(v175) = CurrentWeather.requiresAdditionalContrast.getter();

      (*(v166 + 8))(v103, v167);
      sub_10047E5A8(v102, type metadata accessor for WeatherData);
      goto LABEL_22;
    }
  }

  sub_1000180EC(v100, &qword_100CA3898, &qword_100A314D0);
  LODWORD(v175) = 0;
LABEL_22:
  v207 = 2;
  v104 = type metadata accessor for LocationsState(0);
  v105 = v192;
  v106 = *(v192 + v104[9]);
  sub_100095588();
  v167 = v104;
  v107 = *(v105 + v104[5]);
  v108 = *(v105 + v104[6]);
  LODWORD(v165) = *(v206 + 88);
  v109 = *(v206 + 80);
  v169 = *(v206 + 72);
  v171 = *(v206 + 16);
  LODWORD(v170) = *(v206 + 24);
  LODWORD(v172) = *(v206 + 64);
  sub_1000113EC();
  sub_100095588();
  v110 = type metadata accessor for SearchViewState(0);
  v111 = sub_10000C7F0();
  sub_1000038B4(v111, v112, v110);
  v168 = v109;
  if (v101)
  {

    sub_1000180EC(v105, &qword_100CA6600, &unk_100A5C400);
    v162 = 0;
    v161 = 0xE000000000000000;
  }

  else
  {
    v113 = v105[1];
    v162 = *v105;

    v161 = v113;

    sub_10001699C();
  }

  v114 = v189;
  sub_1000113EC();
  sub_100095588();
  v115 = sub_10000C7F0();
  sub_1000038B4(v115, v116, v110);
  if (v101)
  {
    sub_1000180EC(v105, &qword_100CA6600, &unk_100A5C400);
    v118 = 1;
    v119 = v194;
    v117 = v195;
  }

  else
  {
    v117 = v195;
    sub_10047E658();
    sub_10001699C();
    v118 = 0;
    v119 = v194;
  }

  v120 = type metadata accessor for SearchViewState.ViewState(0);
  sub_10001B350(v117, v118, 1, v120);
  v101 = *(v206 + 64) == 1;
  v166 = v106;
  v164 = v108;
  v163 = v107;
  if (v101)
  {
    v160 = sub_10047E364(&v207, v119);
  }

  else
  {
    v160 = 0;
  }

  v121 = v173;
  if (!v114)
  {
    v121 = 0;
  }

  v157 = v121;
  v122 = v206;
  v158 = *(v206 + 27);
  v123 = v191;
  LODWORD(v173) = *v191;
  LODWORD(v182) = v191[17];
  v124 = v190;
  v125 = v186;
  v126 = v187;
  (*(v186 + 16))(v196, &v191[v190[11]], v187);
  v159 = *(v123 + v124[12]);
  v127 = v176;
  LODWORD(v190) = *(v176 + 1);
  LODWORD(v191) = *(v174 + v119);
  v180 = *(v119 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v128 = *(v119 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v156 = *(v119 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v155 = v128;
  sub_1000113EC();
  sub_10047E658();
  v174 = *(v125 + 32);
  v174(v197, v123, v126);
  v129 = type metadata accessor for EnvironmentState(0);
  LODWORD(v186) = *(v127 + *(v129 + 40));
  v130 = v122;
  v183 = *(v127 + *(v129 + 72) + 16);
  v131 = v183;
  sub_1000113EC();
  sub_10047E658();
  LODWORD(v184) = swift_getEnumCaseMultiPayload() == 0;
  v132 = v131;

  sub_10047E5A8(v123, type metadata accessor for ModalViewState);
  sub_10002852C();
  sub_1000113EC();
  sub_10047E658();
  v205 = *(v123 + *(v199 + 36) + 8);
  sub_100022C30();
  sub_10047E5A8(v123, v133);
  LODWORD(v199) = *(v130 + 89);
  v134 = *(v119 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  v135 = type metadata accessor for ActualListInput(0);
  v136 = v135[34];

  sub_1007348DC(0, 0, v134, v27 + v136);

  sub_1000180EC(v200, &unk_100CE49F0, &unk_100A3AFA0);
  v137 = *(v127 + 3) == 4;
  v138 = *(v192 + v167[7]);
  *v27 = v166;
  sub_100051BBC();
  *(v27 + v135[6]) = v163;
  *(v27 + v135[7]) = v164;
  sub_1000695D0(v135[8]);
  v139 = (v27 + v135[9]);
  v140 = v168;
  *v139 = v169;
  v139[1] = v140;
  v141 = v27 + v135[10];
  *v141 = v171;
  v141[8] = v170;
  sub_1000695D0(v135[11]);
  v142 = (v27 + v135[12]);
  v143 = v161;
  *v142 = v162;
  v142[1] = v143;
  v144 = (v27 + v135[13]);
  v145 = v189;
  *v144 = v157;
  v144[1] = v145;
  sub_100051BBC();
  *(v27 + v135[15]) = v160 & 1;
  sub_1000695D0(v135[16]);
  v146 = v27 + v135[17];
  v147 = v178;
  v146[2] = BYTE2(v178);
  *v146 = v147;
  sub_1000695D0(v135[18]);
  sub_1000695D0(v135[19]);
  sub_1000695D0(v135[20]);
  v148 = v174;
  v174(v27 + v135[21], v196, v126);
  sub_1000695D0(v135[22]);
  LOBYTE(v134) = v179;
  *(v27 + v135[23]) = v179;
  *(v27 + v135[24]) = v190;
  *(v27 + v135[25]) = v191;
  v149 = v27 + v135[26];
  *v149 = v180;
  v150 = v155;
  *(v149 + 1) = v156;
  *(v149 + 2) = v150;
  v148(v27 + v135[27], v197, v126);
  sub_1000695D0(v135[28]);
  *(v27 + v135[29]) = v183;
  v151 = (v27 + v135[30]);
  v152 = v204;
  *v151 = v203;
  v151[1] = v152;
  v153 = v201;
  v151[2] = v202;
  v151[3] = v153;
  sub_1000695D0(v135[31]);
  *(v27 + v135[32]) = v205;
  *(v27 + v135[33]) = v199;
  *(v27 + v135[35]) = v137;
  *(v27 + v135[36]) = v175 & 1;
  *(v27 + v135[37]) = v138;
  sub_10001B350(v27, 0, 1, v135);
  *(v198 + 16) = v134;
  sub_1000113EC();
  sub_10047E600();
  sub_10001B350(v137, 0, 1, v185);

  return result;
}

uint64_t sub_10047E364(_BYTE *a1, uint64_t a2)
{
  v3 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = *a1;
  if (v9 == 2)
  {
    type metadata accessor for ViewState(0);
    sub_100095588();
    v10 = type metadata accessor for SearchViewState(0);
    if (sub_100024D10(v8, 1, v10) == 1)
    {
      sub_1000180EC(v8, &qword_100CA6600, &unk_100A5C400);
      LOBYTE(v9) = 0;
    }

    else
    {
      sub_10047E658();
      LOBYTE(v9) = sub_100368A3C();
      sub_10047E5A8(v5, type metadata accessor for LocationsState);
      sub_10047E5A8(v8, type metadata accessor for SearchViewState);
    }

    swift_beginAccess();
    *a1 = v9 & 1;
  }

  return v9 & 1;
}

uint64_t sub_10047E5A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10047E600()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10047E658()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10047E6B0(uint64_t a1)
{
  type metadata accessor for Location.Identifier();
  sub_10000FB48();
  __chkstk_darwin(v5);
  sub_10001C26C();
  sub_10043D478((v1 + 96));
  v6 = sub_100005E50();
  v7(v6);
  v8 = 16;
  if (v3)
  {
    v8 = 56;
  }

  sub_1000086EC(v8);
  return (*(v9 + 8))(a1, v2, v3);
}

uint64_t sub_10047E7A4(uint64_t a1)
{
  type metadata accessor for Location.Identifier();
  sub_10000FB48();
  __chkstk_darwin(v5);
  sub_10001C26C();
  sub_10043D478((v1 + 96));
  v6 = sub_100005E50();
  v7(v6);
  v8 = 16;
  if (v3)
  {
    v8 = 56;
  }

  sub_1000086EC(v8);
  return (*(v9 + 16))(a1, v2, v3);
}

uint64_t sub_10047E908()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100007074(v6, static OpenWeatherAirQualityIntent.title);
  sub_10000703C(v6, static OpenWeatherAirQualityIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static OpenWeatherAirQualityIntent.title.modify()
{
  if (qword_100CA2130 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  v1 = sub_10000703C(v0, static OpenWeatherAirQualityIntent.title);
  sub_100005E7C(v1);
  return sub_100049840();
}

uint64_t sub_10047EC10()
{
  v0 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100007074(v10, static OpenWeatherAirQualityIntent.description);
  sub_10000703C(v10, static OpenWeatherAirQualityIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t static OpenWeatherAirQualityIntent.description.modify()
{
  if (qword_100CA2138 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentDescription();
  v1 = sub_10000703C(v0, static OpenWeatherAirQualityIntent.description);
  sub_100005E7C(v1);
  return sub_100049840();
}

uint64_t static OpenWeatherAirQualityIntent.parameterSummary.getter()
{
  v0 = sub_10022C350(&qword_100CBCB20, &qword_100A53678);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  sub_10022C350(&qword_100CBCB28, &qword_100A53680);
  sub_100003B20();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_10001365C();
  sub_10047F18C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100ACAE70;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CBCB38, &qword_100A536B0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  sub_1000042D0();
  return IntentParameterSummary.init(_:table:_:)();
}

unint64_t sub_10047F18C()
{
  result = qword_100CBCB30;
  if (!qword_100CBCB30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OpenWeatherAirQualityIntent, &type metadata for OpenWeatherAirQualityIntent, v0, v1);
    atomic_store(result, &qword_100CBCB30);
  }

  return result;
}

uint64_t sub_10047F204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10047F1E0();
  *a1 = result;
  return result;
}

uint64_t sub_10047F230(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10047F18C();
  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A3BD20;
  *(v3 + 32) = v2;

  v4 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10047F310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10047F2EC();
  *a1 = result;
  return result;
}

__n128 sub_10047F33C@<Q0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_10047F390(__int128 *a1)
{
  v1 = a1[1];
  v5 = *a1;
  v3[1] = *a1;
  v3[2] = v1;
  v4 = *(a1 + 32);
  sub_100358150(&v5, v3);

  IntentParameter.wrappedValue.setter();
  sub_1002ED110(&v5);
}

uint64_t sub_10047F418()
{
  v0 = sub_10022C350(&qword_100CBCC30, &unk_100A53C40);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = v8 - v4;
  v6 = sub_1004839E0();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_100483A34();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_10015E1DC();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
  v8[0] = v6;
  v8[1] = &type metadata for LocationSearchEntityFromStringResolver;
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_10047F5EC()
{
  v0 = sub_10022C350(&qword_100CBCC20, &qword_100A53C08);
  __chkstk_darwin(v0);
  v1 = sub_10022C350(&qword_100CBCB40, &unk_100A536B8);
  sub_100007074(v1, static OpenWeatherAirQualityIntent.urlRepresentation);
  sub_10000703C(v1, static OpenWeatherAirQualityIntent.urlRepresentation);
  sub_10047F18C();
  IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100ACB400;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10022C350(&qword_100CBCB38, &qword_100A536B0);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 38;
  v3._object = 0xE100000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CBCC28, &qword_100A53C38);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v4);
  return IntentURLRepresentation.init(stringInterpolation:)();
}

uint64_t OpenWeatherAirQualityIntent.urlRepresentation.unsafeMutableAddressor()
{
  if (qword_100CA2140 != -1)
  {
    sub_10001C298(&qword_100CA2140);
  }

  v0 = sub_10022C350(&qword_100CBCB40, &unk_100A536B8);

  return sub_10000703C(v0, static OpenWeatherAirQualityIntent.urlRepresentation);
}

uint64_t static OpenWeatherAirQualityIntent.urlRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2140 != -1)
  {
    sub_10001C298(&qword_100CA2140);
  }

  v2 = sub_10022C350(&qword_100CBCB40, &unk_100A536B8);
  v3 = sub_10000703C(v2, static OpenWeatherAirQualityIntent.urlRepresentation);
  sub_100017920(v3, v4);
  sub_100003B20();
  return (*(v5 + 16))(a1, v3, v2);
}

uint64_t static OpenWeatherAirQualityIntent.urlRepresentation.setter(uint64_t a1)
{
  if (qword_100CA2140 != -1)
  {
    sub_10001C298(&qword_100CA2140);
  }

  v2 = sub_10022C350(&qword_100CBCB40, &unk_100A536B8);
  v3 = sub_10000703C(v2, static OpenWeatherAirQualityIntent.urlRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t static OpenWeatherAirQualityIntent.urlRepresentation.modify()
{
  if (qword_100CA2140 != -1)
  {
    sub_10001C298(&qword_100CA2140);
  }

  v0 = sub_10022C350(&qword_100CBCB40, &unk_100A536B8);
  v1 = sub_10000703C(v0, static OpenWeatherAirQualityIntent.urlRepresentation);
  sub_100005E7C(v1);
  return sub_100049840();
}

uint64_t OpenWeatherAirQualityIntent.init()()
{
  v45 = type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v49 = v1;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v48 = v4 - v3;
  v5 = sub_10022C350(&qword_100CA2D68, &unk_100A2C4D0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  v47 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = v35 - v9;
  v10 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for Locale();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  v23 = type metadata accessor for String.LocalizationValue();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  v25 = type metadata accessor for LocalizedStringResource();
  v44 = v25;
  sub_100003B20();
  __chkstk_darwin(v26);
  sub_1000037D8();
  sub_10001365C();
  v36 = v0;
  v43 = sub_10022C350(&qword_100CA2D78, &qword_100A2C4E0);
  sub_10000CB64(0x61636F4Cu);
  static Locale.current.getter();
  v27 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v28 = *(v16 + 104);
  v37 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v38 = v14;
  v28(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  v39 = v28;
  v40 = v16 + 104;
  sub_100005E64();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28(v20, v27, v14);
  v35[0] = v13;
  sub_100005E64();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v13, 0, 1, v25);
  static LocationSearchEntity.makeCurrentLocation()();
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v54 = v58;
  type metadata accessor for IntentDialog();
  sub_10001989C(v46);
  sub_10001989C(v47);
  v41 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v49 + 104);
  v49 += 104;
  v42 = v29;
  v29(v48);
  sub_10022C350(&qword_100CA2D80, &qword_100A2C4E8);
  sub_100006F64(&qword_100CA2D88, &qword_100CA2D80, &qword_100A2C4E8, &protocol conformance descriptor for ResolverSpecificationBuilder<A>.Specification<A1, Pack{repeat B1}>);
  sub_10015E074();
  v30 = v35[0];
  v43 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)();
  v35[1] = sub_10022C350(&qword_100CA2D98, &unk_100A2C4F0);
  sub_10000CB64(0x69736F50u);
  static Locale.current.getter();
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v39(v20, v37, v38);
  sub_100005E64();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v20, v31, v32);
  sub_100005E64();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v30, 0, 1, v44);
  v50[0] = 0;
  sub_10001989C(v46);
  sub_10001989C(v47);
  v42(v48, v41, v45);
  sub_10022E86C();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  return v43;
}

uint64_t sub_100480034@<X0>(uint64_t a1@<X8>)
{
  v2 = OpenWeatherAirQualityIntent.urlRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10022C350(&qword_100CBCB40, &unk_100A536B8);
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1004800FC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10048398C();
  *v4 = v2;
  v4[1] = sub_1004801A8;

  return URLRepresentableIntent.perform()(a2, v5);
}

uint64_t sub_1004801A8()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1004802B0@<X0>(uint64_t *a1@<X8>)
{
  result = OpenWeatherAirQualityIntent.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004802D8(uint64_t a1)
{
  v2 = sub_10047F18C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100480314()
{
  type metadata accessor for _AssistantIntent();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10001365C();
  OpenWeatherAirQualityIntent.init()();
  sub_10047F18C();
  sub_1000042D0();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v3 = static _AssistantIntent.Builder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v5 = sub_100003B2C();
  v4(v5);
  OpenWeatherAirQualityIntent.init()();
  sub_1000042D0();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v6 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7 = sub_100003B2C();
  v4(v7);
  sub_10022C350(&qword_100CADD98, &qword_100A3D4F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2D320;
  *(v8 + 32) = v3;
  *(v8 + 40) = v6;
  v9 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1004804C4(uint64_t a1)
{
  v77 = a1;
  v1 = sub_10022C350(&qword_100CBCBE0, &qword_100A53BD0);
  v2 = *(v1 - 8);
  v80 = v1;
  v81 = v2;
  __chkstk_darwin(v1);
  v4 = &v59 - v3;
  v5 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CBCBE8, &qword_100A53BD8);
  __chkstk_darwin(v9);
  sub_10047F18C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x206E65704FLL;
  v10._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v74 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = *(v6 + 104);
  v73 = v6 + 104;
  v75 = v11;
  (v11)(v8);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v12 = *(v6 + 8);
  v76 = v6 + 8;
  v79 = v12;
  v12(v8, v5);
  v13._countAndFlagsBits = 0xD000000000000021;
  v13._object = 0x8000000100ACB190;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v78 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = *(v81 + 8);
  v69 = v15;
  v70 = v16;
  v81 += 8;
  v16(v4, v80);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x206E65704FLL;
  v17._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v8;
  v71 = v8;
  v72 = v5;
  v19 = v8;
  v20 = v74;
  v21 = v75;
  v75(v19, v74, v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v18, v5);
  v22._object = 0x8000000100ACB1C0;
  v22._countAndFlagsBits = 0x100000000000001CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v68 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v70;
  v70(v4, v80);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x206E65704FLL;
  v24._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v71;
  v26 = v20;
  v27 = v72;
  v21(v71, v26, v72);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v25, v27);
  v28._object = 0x8000000100ACB1E0;
  v28._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v67 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29 = v80;
  v23(v4, v80);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0xD00000000000001BLL;
  v30._object = 0x8000000100ACB200;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 63;
  v31._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v66 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v70(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._countAndFlagsBits = 0xD00000000000001ELL;
  v32._object = 0x8000000100ACB220;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 63;
  v33._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34 = v70;
  v70(v4, v29);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v29);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0xD000000000000020;
  v35._object = 0x8000000100ACB290;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 63;
  v36._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v62 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v29);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v61 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v29);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v60 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0x20656D20776F6853;
  v37._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 0x6920495141207327;
  v38._object = 0xEA0000000000206ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  v39 = v71;
  v40 = v72;
  v75(v71, v74, v72);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v39, v40);
  v41._countAndFlagsBits = 46;
  v41._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v59 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v80);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v42._countAndFlagsBits = 0xD00000000000001BLL;
  v42._object = 0x8000000100ACB300;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v78 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44 = v80;
  v34(v4, v80);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v45);
  v47 = v71;
  v46 = v72;
  v75(v71, v74, v72);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v47, v46);
  v48._countAndFlagsBits = 0xD000000000000011;
  v48._object = 0x8000000100ACB320;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v44);
  sub_10022C350(&qword_100CBCBF0, &unk_100A53BE0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100A53640;
  v51 = v68;
  *(v50 + 32) = v69;
  *(v50 + 40) = v51;
  v52 = v66;
  *(v50 + 48) = v67;
  *(v50 + 56) = v52;
  v53 = v64;
  *(v50 + 64) = v65;
  *(v50 + 72) = v53;
  v54 = v62;
  *(v50 + 80) = v63;
  *(v50 + 88) = v54;
  v55 = v60;
  *(v50 + 96) = v61;
  *(v50 + 104) = v55;
  v56 = v78;
  *(v50 + 112) = v59;
  *(v50 + 120) = v56;
  *(v50 + 128) = v49;
  v57 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v57;
}

double sub_1004810EC@<D0>(uint64_t a1@<X8>)
{
  sub_10047F33C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100481134(__int128 *a1)
{
  v4 = *a1;
  sub_100358150(&v4, &v3);

  return sub_10047F390(a1);
}

uint64_t sub_10048119C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10047F18C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10022C350(&qword_100CBCBD8, &qword_100A549E0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10048130C(uint64_t a1)
{
  v60 = a1;
  v59 = sub_10022C350(&qword_100CBCBE0, &qword_100A53BD0);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v2 = &v41 - v1;
  v3 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBCBE8, &qword_100A53BD8);
  __chkstk_darwin(v7);
  sub_10047F18C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20656874206E49;
  v8._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  LODWORD(v54) = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v9 = *(v4 + 104);
  v52 = v4 + 104;
  v53 = v9;
  v48 = v3;
  v9(v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v10 = *(v4 + 8);
  v50 = v4 + 8;
  v51 = v10;
  v10(v6, v3);
  v11._countAndFlagsBits = 0x6873202C70706120;
  v11._object = 0xEB0000000020776FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v61 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0xD000000000000011;
  v49 = 0xD000000000000011;
  v12._object = 0x8000000100ACAEB0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v58 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = *(v57 + 8);
  v14 = v59;
  v13(v2, v59);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v57 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v14;
  v13(v2, v14);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v56 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v14);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v55 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v14);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x20656874206E49;
  v16._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v48;
  v53(v6, v54, v48);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v51(v6, v17);
  v18._countAndFlagsBits = 0x6873202C70706120;
  v18._object = 0xEB0000000020776FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._object = 0x8000000100ACAF50;
  v19._countAndFlagsBits = v49;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0xD00000000000001DLL;
  v20._object = 0x8000000100ACB0B0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 63;
  v21._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v42 = v13;
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000027;
  v22._object = 0x8000000100ACB100;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 63;
  v23._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v59;
  v25 = v42;
  v42(v2, v59);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._object = 0x8000000100ACB130;
  v26._countAndFlagsBits = 0xD000000000000024;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 63;
  v27._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v2, v24);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v2, v24);
  sub_10022C350(&qword_100CBCBF0, &unk_100A53BE0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100A53650;
  v31 = v57;
  *(v30 + 32) = v58;
  *(v30 + 40) = v31;
  v32 = v55;
  *(v30 + 48) = v56;
  *(v30 + 56) = v32;
  v33 = v53;
  *(v30 + 64) = v54;
  *(v30 + 72) = v33;
  v34 = v51;
  *(v30 + 80) = v52;
  *(v30 + 88) = v34;
  v35 = v49;
  *(v30 + 96) = v50;
  *(v30 + 104) = v35;
  v36 = v47;
  *(v30 + 112) = v48;
  *(v30 + 120) = v36;
  v37 = v45;
  *(v30 + 128) = v46;
  *(v30 + 136) = v37;
  v38 = v43;
  *(v30 + 144) = v44;
  *(v30 + 152) = v38;
  *(v30 + 160) = v28;
  *(v30 + 168) = v29;
  v39 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v39;
}

uint64_t sub_100481E84()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100483654();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10047F18C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10022C350(&qword_100CBCBD8, &qword_100A549E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2D320;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100482074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10047F580();
  *a1 = result;
  return result;
}

uint64_t sub_1004820AC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2C3F0;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100482130()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90, &unk_100A54580);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3B030;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100482250()
{
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_10001365C();
  sub_10047F18C();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v1 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v2 = sub_100003B2C();
  v3(v2);
  sub_10022C350(&qword_100CADD88, &unk_100A3D4E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 32) = v1;
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100482380()
{
  v0 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  sub_100007074(v4, static AirQualityPosition.typeDisplayRepresentation);
  sub_10000703C(v4, static AirQualityPosition.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1004824EC(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = a2(0);

  return sub_10000703C(v6, a3);
}

uint64_t sub_100482580@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v8 = a2(0);
  v9 = sub_10000703C(v8, a3);
  sub_100017920(v9, v10);
  sub_100003B20();
  return (*(v11 + 16))(a5, v9, v8);
}

uint64_t sub_100482658(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v8 = a3(0);
  sub_10000703C(v8, a4);
  swift_beginAccess();
  v9 = *(v8 - 8);
  v10 = sub_100003B2C();
  v11(v10);
  swift_endAccess();
  return (*(v9 + 8))(a1, v8);
}

uint64_t static AirQualityPosition.typeDisplayRepresentation.modify(double a1)
{
  if (qword_100CA2148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  v2 = sub_10000703C(v1, static AirQualityPosition.typeDisplayRepresentation);
  sub_100005E7C(v2);
  return sub_100049840();
}

uint64_t sub_1004827BC()
{
  v0 = sub_10022C350(&qword_100CBCC00, &unk_100A6BF00);
  __chkstk_darwin(v0 - 8);
  v16 = &v16 - v1;
  v2 = sub_10022C350(&qword_100CA2D70, &unk_100A3D520);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for LocalizedStringResource();
  v17 = *(v5 - 8);
  v18 = v17;
  __chkstk_darwin(v5);
  sub_10022C350(&qword_100CBCC08, &qword_100A53BF0);
  v6 = (sub_10022C350(&qword_100CBCC10, &qword_100A53BF8) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  v21 = v9;
  *(v9 + 16) = xmmword_100A2D320;
  v10 = v9 + v8;
  *(v9 + v8) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v11 = v4;
  sub_10001B350(v4, 1, 1, v5);
  v12 = type metadata accessor for DisplayRepresentation.Image();
  v13 = v16;
  sub_10001B350(v16, 1, 1, v12);
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v14 = v6[14];
  v19 = v10 + v7;
  v20 = v14;
  *(v10 + v7) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v11, 1, 1, v5);
  sub_10001B350(v13, 1, 1, v12);
  sub_10022C350(&qword_100CBCC18, &qword_100A53C00);
  *(swift_allocObject() + 16) = xmmword_100A53660;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  type metadata accessor for DisplayRepresentation();
  sub_100483804();
  result = Dictionary.init(dictionaryLiteral:)();
  static AirQualityPosition.caseDisplayRepresentations = result;
  return result;
}
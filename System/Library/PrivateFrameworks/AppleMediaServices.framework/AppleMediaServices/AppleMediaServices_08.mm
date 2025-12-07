void sub_1000ED73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v23;
  a20 = v24;
  v25 = sub_1000F82F8();
  sub_100003724();
  v27 = v26;
  __chkstk_darwin(v28);
  sub_10000306C();
  sub_1000AC3B8();
  v29 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v29);
  sub_100003774();
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  sub_1000A92EC(v20, *v21);
  v33 = type metadata accessor for TSDataSyncDatasetGroupScheduleAction(0);
  sub_10003D1E4();
  sub_10000B3A0(v32, 1, v25);
  if (v34)
  {
    sub_100008C3C();
  }

  else
  {
    v35 = sub_1000F82B0();
    v36(v35);
    sub_100005C20();
    sub_100004AC4();
    v39 = sub_1000F5EC0(v37, v38, &protocol conformance descriptor for Date);
    sub_100004218(v39);
    (*(v27 + 8))(v22, v25);
  }

  Hasher._combine(_:)(*(v21 + *(v33 + 24)));
  sub_1000027F8();
}

uint64_t sub_1000ED8C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000100273890 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6970784561746164 && a2 == 0xEB00000000646572;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6168436C61636F6CLL && a2 == 0xEB0000000065676ELL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4674736575716572 && a2 == 0xED000064656C6961;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x70556D6574737973 && a2 == 0xEC00000065746164;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6843616D65686373 && a2 == 0xEC00000065676E61;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E696C6C6F70 && a2 == 0xE700000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656C756465686373 && a2 == 0xE900000000000064;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x646563726F66 && a2 == 0xE600000000000000;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C6F486563616C70 && a2 == 0xEB00000000726564;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x79536C61756E616DLL && a2 == 0xEA0000000000636ELL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000011 && 0x80000001002738B0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x4950416C61636F6CLL && a2 == 0xE800000000000000)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1000EDCE4(char a1)
{
  result = 0x6970784561746164;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6168436C61636F6CLL;
      break;
    case 3:
      result = 0x4674736575716572;
      break;
    case 4:
      result = 0x70556D6574737973;
      break;
    case 5:
      result = 0x6843616D65686373;
      break;
    case 6:
      result = 0x676E696C6C6F70;
      break;
    case 7:
      result = 0x656C756465686373;
      break;
    case 8:
      result = 0x646563726F66;
      break;
    case 9:
      result = 0x6C6F486563616C70;
      break;
    case 10:
      result = 0x79536C61756E616DLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x4950416C61636F6CLL;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1000EDE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v28;
  a27 = v29;
  v106 = v30;
  sub_100099DF4(&qword_1002DC368, &qword_1002349F0);
  sub_100003724();
  v104 = v32;
  v105 = v31;
  sub_100003774();
  __chkstk_darwin(v33);
  sub_100003018();
  sub_1000F83CC(v34);
  sub_100099DF4(&qword_1002DC370, &qword_1002349F8);
  sub_100003724();
  v102 = v36;
  v103 = v35;
  sub_100003774();
  __chkstk_darwin(v37);
  sub_100003018();
  sub_100003E9C(v38);
  sub_100099DF4(&qword_1002DC378, &qword_100234A00);
  sub_100003724();
  v100 = v40;
  v101 = v39;
  sub_100003774();
  __chkstk_darwin(v41);
  sub_1000F8278(v42, v92[0]);
  sub_100099DF4(&qword_1002DC380, &qword_100234A08);
  sub_100003724();
  v98 = v44;
  v99 = v43;
  sub_100003774();
  __chkstk_darwin(v45);
  sub_100003018();
  v97 = v46;
  sub_100099DF4(&qword_1002DC388, &qword_100234A10);
  sub_100003724();
  v95 = v48;
  v96 = v47;
  sub_100003774();
  __chkstk_darwin(v49);
  sub_100003018();
  v94 = v50;
  v93 = sub_100099DF4(&qword_1002DC390, &qword_100234A18);
  sub_100003724();
  v92[19] = v51;
  sub_100003774();
  __chkstk_darwin(v52);
  sub_100003018();
  sub_10000A1C0(v53);
  v54 = sub_100099DF4(&qword_1002DC398, &qword_100234A20);
  sub_100007F90(v54, &a23);
  v92[16] = v55;
  sub_100003774();
  __chkstk_darwin(v56);
  sub_100003018();
  sub_10000A1C0(v57);
  v58 = sub_100099DF4(&qword_1002DC3A0, &qword_100234A28);
  sub_100007F90(v58, &a20);
  v92[13] = v59;
  sub_100003774();
  __chkstk_darwin(v60);
  sub_100003018();
  sub_10000A1C0(v61);
  v62 = sub_100099DF4(&qword_1002DC3A8, &qword_100234A30);
  sub_100007F90(v62, &a10);
  v92[10] = v63;
  sub_100003774();
  __chkstk_darwin(v64);
  sub_100003018();
  sub_10000A1C0(v65);
  v66 = sub_100099DF4(&qword_1002DC3B0, &qword_100234A38);
  sub_100007F90(v66, v108);
  v92[7] = v67;
  sub_100003774();
  __chkstk_darwin(v68);
  sub_100003018();
  sub_10000A1C0(v69);
  v70 = sub_100099DF4(&qword_1002DC3B8, &qword_100234A40);
  sub_100007F90(v70, v107);
  v92[4] = v71;
  sub_100003774();
  __chkstk_darwin(v72);
  sub_100003018();
  sub_10000A1C0(v73);
  v74 = sub_100099DF4(&qword_1002DC3C0, &qword_100234A48);
  sub_100003724();
  v92[2] = v75;
  sub_100003774();
  __chkstk_darwin(v76);
  v78 = v92 - v77;
  v79 = sub_100099DF4(&qword_1002DC3C8, &qword_100234A50);
  sub_100003724();
  v92[1] = v80;
  sub_100003774();
  __chkstk_darwin(v81);
  sub_100004880();
  v107[1] = sub_100099DF4(&qword_1002DC3D0, &qword_100234A58);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v82);
  sub_10000AF24();
  sub_100002810();
  v83 = sub_1000F239C();
  v107[0] = v27;
  sub_10000A484(&type metadata for TSDataSyncDatasetGroupTrigger.CodingKeys, v84, v83);
  switch(v106)
  {
    case 1:
      v108[4] = 1;
      sub_1000F5168();
      sub_10003CF68();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000EDE8();
      v89(v78, v74);
      v90 = sub_10000DBC0();
      goto LABEL_18;
    case 2:
      v109 = 2;
      sub_1000F5114();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupTrigger.LocalChangeCodingKeys, &v109);
      v85 = sub_1000069D4();
      v88 = v107;
      goto LABEL_13;
    case 3:
      v110 = 3;
      sub_1000F50C0();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupTrigger.RequestFailedCodingKeys, &v110);
      v85 = sub_1000069D4();
      v88 = v108;
      goto LABEL_13;
    case 4:
      v111 = 4;
      sub_1000F506C();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupTrigger.SystemUpdateCodingKeys, &v111);
      v85 = sub_1000069D4();
      v88 = &a10;
      goto LABEL_13;
    case 5:
      a10 = 5;
      sub_1000F5018();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupTrigger.SchemaChangeCodingKeys, &a10);
      v85 = sub_1000069D4();
      v88 = &a20;
      goto LABEL_13;
    case 6:
      a11 = 6;
      sub_1000F4FC4();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupTrigger.PollingCodingKeys, &a11);
      v85 = sub_1000069D4();
      v88 = &a23;
LABEL_13:
      v87 = *(v88 - 32);
      break;
    case 7:
      a12 = 7;
      sub_1000F4F70();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupTrigger.ScheduledCodingKeys, &a12);
      v85 = sub_1000069D4();
      v87 = v93;
      break;
    case 8:
      a13 = 8;
      sub_1000F4F1C();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupTrigger.ForcedCodingKeys, &a13);
      goto LABEL_16;
    case 9:
      a14 = 9;
      sub_1000F4EC8();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupTrigger.PlaceHolderCodingKeys, &a14);
      goto LABEL_16;
    case 10:
      a15 = 10;
      sub_1000F4E74();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupTrigger.ManualSyncCodingKeys, &a15);
      goto LABEL_16;
    case 11:
      a16 = 11;
      sub_1000F4E20();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupTrigger.ResponseSuggestedCodingKeys, &a16);
      goto LABEL_16;
    case 12:
      a17 = 12;
      sub_1000F4DCC();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupTrigger.LocalAPICodingKeys, &a17);
LABEL_16:
      v85 = sub_100008D84();
      break;
    default:
      v108[3] = 0;
      sub_1000F51BC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v85 = sub_100003C24();
      v87 = v79;
      break;
  }

  v86(v85, v87);
  v90 = sub_1000F8344();
LABEL_18:
  v91(v90);
  sub_100005074();
}

void sub_1000EE7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v30;
  a27 = v31;
  v148 = v27;
  v33 = v32;
  v143 = sub_100099DF4(&qword_1002DC280, &qword_100234978);
  sub_100003724();
  v138 = v34;
  sub_100003774();
  __chkstk_darwin(v35);
  sub_100003018();
  sub_1000F83CC(v36);
  sub_100099DF4(&qword_1002DC288, &qword_100234980);
  sub_100003724();
  v136 = v38;
  v137 = v37;
  sub_100003774();
  __chkstk_darwin(v39);
  sub_100003018();
  v142[1] = v40;
  sub_100099DF4(&qword_1002DC290, &qword_100234988);
  sub_100003724();
  v134 = v42;
  v135 = v41;
  sub_100003774();
  __chkstk_darwin(v43);
  sub_100003018();
  v142[0] = v44;
  v133 = sub_100099DF4(&qword_1002DC298, &qword_100234990);
  sub_100003724();
  v132 = v45;
  sub_100003774();
  __chkstk_darwin(v46);
  sub_100003018();
  sub_100003E9C(v47);
  v48 = sub_100099DF4(&qword_1002DC2A0, &qword_100234998);
  sub_100007F90(v48, &a24);
  v131 = v49;
  sub_100003774();
  __chkstk_darwin(v50);
  sub_100003018();
  v141 = v51;
  v52 = sub_100099DF4(&qword_1002DC2A8, &qword_1002349A0);
  sub_100007F90(v52, &a21);
  v130 = v53;
  sub_100003774();
  __chkstk_darwin(v54);
  sub_100003018();
  v146 = v55;
  v56 = sub_100099DF4(&qword_1002DC2B0, &qword_1002349A8);
  sub_100007F90(v56, &a19);
  v129 = v57;
  sub_100003774();
  __chkstk_darwin(v58);
  sub_100003018();
  v145 = v59;
  v60 = sub_100099DF4(&qword_1002DC2B8, &qword_1002349B0);
  sub_100007F90(v60, &a18);
  v128 = v61;
  sub_100003774();
  __chkstk_darwin(v62);
  sub_100003018();
  v144 = v63;
  v64 = sub_100099DF4(&qword_1002DC2C0, &qword_1002349B8);
  sub_100007F90(v64, &a9);
  v127 = v65;
  sub_100003774();
  __chkstk_darwin(v66);
  sub_100003018();
  v140 = v67;
  v68 = sub_100099DF4(&qword_1002DC2C8, &qword_1002349C0);
  sub_100007F90(v68, v149);
  v126 = v69;
  sub_100003774();
  __chkstk_darwin(v70);
  sub_1000F8278(v71, v118[0]);
  v72 = sub_100099DF4(&qword_1002DC2D0, &qword_1002349C8);
  sub_100007F90(v72, &v147);
  v125 = v73;
  sub_100003774();
  __chkstk_darwin(v74);
  sub_100003018();
  v139 = v75;
  v76 = sub_100099DF4(&qword_1002DC2D8, &qword_1002349D0);
  sub_100007F90(v76, &v145);
  v124 = v77;
  sub_100003774();
  __chkstk_darwin(v78);
  v80 = v118 - v79;
  v81 = sub_100099DF4(&qword_1002DC2E0, &qword_1002349D8);
  sub_100003724();
  v123 = v82;
  sub_100003774();
  __chkstk_darwin(v83);
  sub_100004880();
  v84 = sub_100099DF4(&qword_1002DC2E8, &unk_1002349E0);
  sub_100003724();
  v86 = v85;
  sub_100003774();
  __chkstk_darwin(v87);
  sub_10000AF24();
  v147 = v33;
  v88 = sub_1000F8344();
  sub_10000C4FC(v88, v89);
  sub_1000F239C();
  v90 = v148;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v90)
  {
    goto LABEL_9;
  }

  v121 = v29;
  v120 = v81;
  v122 = v80;
  v91 = v145;
  v92 = v146;
  v148 = v86;
  v93 = v28;
  v94 = KeyedDecodingContainer.allKeys.getter();
  v95 = sub_1000F4D84(v94, 0);
  if (v97 == v98 >> 1)
  {
LABEL_8:
    v110 = type metadata accessor for DecodingError();
    swift_allocError();
    v112 = v111;
    sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0);
    *v112 = &type metadata for TSDataSyncDatasetGroupTrigger;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000401C();
    (*(*(v110 - 8) + 104))(v112, enum case for DecodingError.typeMismatch(_:), v110);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v148 + 8))(v93, v84);
LABEL_9:
    sub_100004118(v147);
LABEL_10:
    sub_100005074();
    return;
  }

  v119 = v84;
  v118[0] = 0;
  if (v97 < (v98 >> 1))
  {
    v99 = *(v96 + v97);
    v100 = sub_10003CE24(v97 + 1, v98 >> 1, v95, v96, v97, v98);
    v102 = v101;
    v104 = v103;
    swift_unknownObjectRelease();
    v118[1] = v100;
    if (v102 == v104 >> 1)
    {
      v105 = v118[0];
      v106 = v143;
      switch(v99)
      {
        case 1:
          v151 = 1;
          sub_1000F5168();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.DataExpiredCodingKeys, &v151);
          sub_10000DBA8();
          v107 = sub_100003C24();
          v109 = &v145;
          goto LABEL_27;
        case 2:
          v152 = 2;
          sub_1000F5114();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.LocalChangeCodingKeys, &v152);
          sub_10000DBA8();
          v107 = sub_100003C24();
          v109 = &v147;
          goto LABEL_27;
        case 3:
          v153 = 3;
          sub_1000F50C0();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.RequestFailedCodingKeys, &v153);
          sub_10000DBA8();
          v107 = sub_100003C24();
          v109 = v149;
          goto LABEL_27;
        case 4:
          v154 = 4;
          sub_1000F506C();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.SystemUpdateCodingKeys, &v154);
          sub_10000DBA8();
          v107 = sub_100003C24();
          v109 = &a9;
          goto LABEL_27;
        case 5:
          a10 = 5;
          sub_1000F5018();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.SchemaChangeCodingKeys, &a10);
          sub_10000DBA8();
          v107 = sub_100003C24();
          v109 = &a18;
          goto LABEL_27;
        case 6:
          a11 = 6;
          sub_1000F4FC4();
          sub_10003CF68();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v105)
          {
            goto LABEL_26;
          }

          sub_10000DBA8();
          sub_10000EDE8();
          v107 = v91;
          v109 = &a19;
          goto LABEL_27;
        case 7:
          a12 = 7;
          sub_1000F4F70();
          sub_10003CF68();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (v105)
          {
LABEL_26:
            v114 = sub_10000DBC0();
            v115(v114);
            sub_10000DBA8();
            goto LABEL_9;
          }

          sub_10000DBA8();
          sub_10000EDE8();
          v107 = v92;
          v109 = &a21;
LABEL_27:
          v113 = *(v109 - 32);
LABEL_28:
          v108(v107, v113);
          v116 = sub_10000DBC0();
          v117(v116);
          sub_100004118(v147);
          break;
        case 8:
          a13 = 8;
          sub_1000F4F1C();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.ForcedCodingKeys, &a13);
          sub_10000DBA8();
          v107 = sub_100003C24();
          v109 = &a24;
          goto LABEL_27;
        case 9:
          a14 = 9;
          sub_1000F4EC8();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.PlaceHolderCodingKeys, &a14);
          sub_10000DBA8();
          v107 = sub_100003C24();
          v113 = v133;
          goto LABEL_28;
        case 10:
          a15 = 10;
          sub_1000F4E74();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.ManualSyncCodingKeys, &a15);
          goto LABEL_24;
        case 11:
          a16 = 11;
          sub_1000F4E20();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.ResponseSuggestedCodingKeys, &a16);
LABEL_24:
          sub_10000DBA8();
          v107 = sub_1000F828C();
          goto LABEL_28;
        case 12:
          a17 = 12;
          sub_1000F4DCC();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.LocalAPICodingKeys, &a17);
          sub_10000DBA8();
          v107 = sub_1000F828C();
          v113 = v106;
          goto LABEL_28;
        default:
          v150 = 0;
          sub_1000F51BC();
          sub_10000A554(&type metadata for TSDataSyncDatasetGroupTrigger.PushNotificationCodingKeys, &v150);
          sub_10000DBA8();
          v107 = sub_100003C24();
          v109 = v142;
          goto LABEL_27;
      }

      goto LABEL_10;
    }

    v84 = v119;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1000EF3E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xEC000000636E7953;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974706D65747461 && a2 == 0xEF746867696C666ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x526572756C696166 && a2 == 0xEC00000079727465;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E696C6C6F70 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C6C6143697061 && a2 == 0xE700000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x8000000100273890 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6970784561746164 && a2 == 0xEB00000000646572;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6843616D65686373 && a2 == 0xEC00000065676E61;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C756465686373 && a2 == 0xE900000000000064;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x79536C61756E616DLL && a2 == 0xEA0000000000636ELL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000011 && 0x80000001002738B0 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
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

unint64_t sub_1000EF7C0(char a1)
{
  result = 0x647261646E617473;
  switch(a1)
  {
    case 1:
      result = 0x4974706D65747461;
      break;
    case 2:
      result = 0x526572756C696166;
      break;
    case 3:
      result = 0x7466417972746572;
      break;
    case 4:
      result = 0x676E696C6C6F70;
      break;
    case 5:
      result = 0x6C6C6143697061;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6970784561746164;
      break;
    case 8:
      result = 0x6843616D65686373;
      break;
    case 9:
      result = 0x656C756465686373;
      break;
    case 10:
      result = 0x79536C61756E616DLL;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000EF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v28;
  a27 = v29;
  v102 = v30;
  sub_100099DF4(&qword_1002DCA58, &qword_100235A58);
  sub_100003724();
  v100 = v32;
  v101 = v31;
  sub_100003774();
  __chkstk_darwin(v33);
  sub_100003018();
  sub_1000F83CC(v34);
  sub_100099DF4(&qword_1002DCA60, &qword_100235A60);
  sub_100003724();
  v98 = v36;
  v99 = v35;
  sub_100003774();
  __chkstk_darwin(v37);
  sub_100003018();
  sub_100003E9C(v38);
  sub_100099DF4(&qword_1002DCA68, &qword_100235A68);
  sub_100003724();
  v96 = v40;
  v97 = v39;
  sub_100003774();
  __chkstk_darwin(v41);
  sub_1000F8278(v42, v88[0]);
  sub_100099DF4(&qword_1002DCA70, &qword_100235A70);
  sub_100003724();
  v94 = v44;
  v95 = v43;
  sub_100003774();
  __chkstk_darwin(v45);
  sub_100003018();
  v93 = v46;
  sub_100099DF4(&qword_1002DCA78, &qword_100235A78);
  sub_100003724();
  v91 = v48;
  v92 = v47;
  sub_100003774();
  __chkstk_darwin(v49);
  sub_100003018();
  v90 = v50;
  v89 = sub_100099DF4(&qword_1002DCA80, &qword_100235A80);
  sub_100003724();
  v88[15] = v51;
  sub_100003774();
  __chkstk_darwin(v52);
  sub_100003018();
  sub_10000A1C0(v53);
  v54 = sub_100099DF4(&qword_1002DCA88, &qword_100235A88);
  sub_100007F90(v54, &a23);
  v88[12] = v55;
  sub_100003774();
  __chkstk_darwin(v56);
  sub_100003018();
  sub_10000A1C0(v57);
  v58 = sub_100099DF4(&qword_1002DCA90, &qword_100235A90);
  sub_100007F90(v58, &a20);
  v88[9] = v59;
  sub_100003774();
  __chkstk_darwin(v60);
  sub_100003018();
  sub_10000A1C0(v61);
  v62 = sub_100099DF4(&qword_1002DCA98, &qword_100235A98);
  sub_100007F90(v62, &a10);
  v88[6] = v63;
  sub_100003774();
  __chkstk_darwin(v64);
  sub_100003018();
  sub_10000A1C0(v65);
  v66 = sub_100099DF4(&qword_1002DCAA0, &qword_100235AA0);
  sub_100007F90(v66, v105);
  v88[3] = v67;
  sub_100003774();
  __chkstk_darwin(v68);
  sub_100003018();
  sub_10000A1C0(v69);
  v70 = sub_100099DF4(&qword_1002DCAA8, &qword_100235AA8);
  sub_100003724();
  v88[1] = v71;
  sub_100003774();
  __chkstk_darwin(v72);
  sub_10000AF24();
  v73 = sub_100099DF4(&qword_1002DCAB0, &qword_100235AB0);
  sub_100003724();
  v88[0] = v74;
  sub_100003774();
  __chkstk_darwin(v75);
  v77 = v88 - v76;
  v104 = sub_100099DF4(&qword_1002DCAB8, &qword_100235AB8);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v78);
  sub_100003B38();
  v79 = sub_100005CD0();
  sub_10000C4FC(v79, v80);
  sub_1000F6D44();
  v103 = v27;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v102)
  {
    case 1:
      v106 = 1;
      sub_1000F70E0();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupReason.AttemptInflightCodingKeys, &v106);
      v84 = sub_1000069D4();
      v87 = v70;
      goto LABEL_16;
    case 2:
      v107 = 2;
      sub_1000F708C();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupReason.FailureRetryCodingKeys, &v107);
      v84 = sub_1000069D4();
      v86 = v105;
      goto LABEL_11;
    case 3:
      v108 = 3;
      sub_1000F7038();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupReason.RetryAfterCodingKeys, &v108);
      v84 = sub_1000069D4();
      v86 = &a10;
      goto LABEL_11;
    case 4:
      a10 = 4;
      sub_1000F6FE4();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupReason.PollingCodingKeys, &a10);
      v84 = sub_1000069D4();
      v86 = &a20;
      goto LABEL_11;
    case 5:
      a11 = 5;
      sub_1000F6F90();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupReason.ApiCallCodingKeys, &a11);
      v84 = sub_1000069D4();
      v86 = &a23;
LABEL_11:
      v87 = *(v86 - 32);
      goto LABEL_16;
    case 6:
      a12 = 6;
      sub_1000F6F3C();
      sub_100007288(&type metadata for TSDataSyncDatasetGroupReason.PushNotificationCodingKeys, &a12);
      v84 = sub_1000069D4();
      v87 = v89;
      goto LABEL_16;
    case 7:
      a13 = 7;
      sub_1000F6EE8();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupReason.DataExpiredCodingKeys, &a13);
      goto LABEL_15;
    case 8:
      a14 = 8;
      sub_1000F6E94();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupReason.SchemaChangeCodingKeys, &a14);
      goto LABEL_15;
    case 9:
      a15 = 9;
      sub_1000F6E40();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupReason.ScheduledCodingKeys, &a15);
      goto LABEL_15;
    case 10:
      a16 = 10;
      sub_1000F6DEC();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupReason.ManualSyncCodingKeys, &a16);
      goto LABEL_15;
    case 11:
      a17 = 11;
      sub_1000F6D98();
      sub_100008304(&type metadata for TSDataSyncDatasetGroupReason.ResponseSuggestedCodingKeys, &a17);
LABEL_15:
      v84 = sub_100008D84();
LABEL_16:
      v85(v84, v87);
      v82 = sub_1000F8344();
      break;
    default:
      v105[4] = 0;
      sub_1000F7134();
      sub_10003CF68();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_10000EDE8();
      v81(v77, v73);
      v82 = sub_10000DBC0();
      break;
  }

  v83(v82);
  sub_100005074();
}

void sub_1000F0210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100004868();
  a26 = v31;
  a27 = v32;
  v136 = v27;
  v34 = v33;
  v132[0] = sub_100099DF4(&qword_1002DC988, &qword_1002359F0);
  sub_100003724();
  v127 = v35;
  sub_100003774();
  __chkstk_darwin(v36);
  sub_100003018();
  sub_1000F83CC(v37);
  sub_100099DF4(&qword_1002DC990, &qword_1002359F8);
  sub_100003724();
  v125 = v39;
  v126 = v38;
  sub_100003774();
  __chkstk_darwin(v40);
  sub_100003018();
  v131 = v41;
  sub_100099DF4(&qword_1002DC998, &qword_100235A00);
  sub_100003724();
  v123 = v43;
  v124 = v42;
  sub_100003774();
  __chkstk_darwin(v44);
  sub_100003018();
  v130 = v45;
  sub_100099DF4(&qword_1002DC9A0, &qword_100235A08);
  sub_100003724();
  v121 = v47;
  v122 = v46;
  sub_100003774();
  __chkstk_darwin(v48);
  sub_100003018();
  sub_100003E9C(v49);
  v50 = sub_100099DF4(&qword_1002DC9A8, &qword_100235A10);
  sub_100007F90(v50, &a24);
  v120 = v51;
  sub_100003774();
  __chkstk_darwin(v52);
  sub_100003018();
  v134 = v53;
  v54 = sub_100099DF4(&qword_1002DC9B0, &qword_100235A18);
  sub_100007F90(v54, &a22);
  v119 = v55;
  sub_100003774();
  __chkstk_darwin(v56);
  sub_100003018();
  v133 = v57;
  v58 = sub_100099DF4(&qword_1002DC9B8, &qword_100235A20);
  sub_100007F90(v58, &a21);
  v118 = v59;
  sub_100003774();
  __chkstk_darwin(v60);
  sub_100003018();
  v132[1] = v61;
  v62 = sub_100099DF4(&qword_1002DC9C0, &qword_100235A28);
  sub_100007F90(v62, &a19);
  v117 = v63;
  sub_100003774();
  __chkstk_darwin(v64);
  sub_100003018();
  v129 = v65;
  v66 = sub_100099DF4(&qword_1002DC9C8, &qword_100235A30);
  sub_100007F90(v66, &a10);
  v116 = v67;
  sub_100003774();
  __chkstk_darwin(v68);
  sub_100003018();
  v128 = v69;
  v70 = sub_100099DF4(&qword_1002DC9D0, &qword_100235A38);
  sub_100007F90(v70, &v141);
  v115 = v71;
  sub_100003774();
  __chkstk_darwin(v72);
  sub_1000F8278(v73, v109);
  v74 = sub_100099DF4(&qword_1002DC9D8, &qword_100235A40);
  sub_100007F90(v74, &v136);
  v114 = v75;
  sub_100003774();
  __chkstk_darwin(v76);
  sub_100003B38();
  v77 = sub_100099DF4(&qword_1002DC9E0, &qword_100235A48);
  sub_100003724();
  v113 = v78;
  sub_100003774();
  __chkstk_darwin(v79);
  sub_10000AF24();
  v80 = sub_100099DF4(&qword_1002DC9E8, &qword_100235A50);
  sub_100003724();
  v82 = v81;
  sub_100003774();
  __chkstk_darwin(v83);
  sub_1000AC3B8();
  v135 = v34;
  v84 = sub_100005CD0();
  sub_10000C4FC(v84, v85);
  sub_1000F6D44();
  v86 = v136;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v86)
  {
    goto LABEL_10;
  }

  v111 = v28;
  v110 = v77;
  v112 = v30;
  v136 = v82;
  v87 = KeyedDecodingContainer.allKeys.getter();
  v88 = sub_1000F4D84(v87, 0);
  v92 = v80;
  if (v90 == v91 >> 1)
  {
    v93 = v29;
    v94 = v136;
LABEL_9:
    v103 = type metadata accessor for DecodingError();
    swift_allocError();
    v105 = v104;
    sub_100099DF4(&qword_1002DC2F8, &qword_100239EB0);
    *v105 = &type metadata for TSDataSyncDatasetGroupReason;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000401C();
    (*(*(v103 - 8) + 104))(v105, enum case for DecodingError.typeMismatch(_:), v103);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v94 + 8))(v93, v92);
LABEL_10:
    sub_100004118(v135);
LABEL_11:
    sub_100005074();
    return;
  }

  if (v90 < (v91 >> 1))
  {
    v95 = *(v89 + v90);
    sub_10003CE24(v90 + 1, v91 >> 1, v88, v89, v90, v91);
    v97 = v96;
    v99 = v98;
    swift_unknownObjectRelease();
    if (v97 == v99 >> 1)
    {
      switch(v95)
      {
        case 1:
          v138 = 1;
          sub_1000F70E0();
          sub_10000389C(&type metadata for TSDataSyncDatasetGroupReason.AttemptInflightCodingKeys, &v138);
          sub_10000DED8();
          v100 = sub_1000069D4();
          v102 = &v136;
          goto LABEL_21;
        case 2:
          v139 = 2;
          sub_1000F708C();
          sub_10000389C(&type metadata for TSDataSyncDatasetGroupReason.FailureRetryCodingKeys, &v139);
          sub_10000DED8();
          v100 = sub_1000069D4();
          v102 = &v141;
          goto LABEL_21;
        case 3:
          v140 = 3;
          sub_1000F7038();
          sub_10000389C(&type metadata for TSDataSyncDatasetGroupReason.RetryAfterCodingKeys, &v140);
          sub_10000DED8();
          v100 = sub_1000069D4();
          v102 = &a10;
          goto LABEL_21;
        case 4:
          a10 = 4;
          sub_1000F6FE4();
          sub_10000389C(&type metadata for TSDataSyncDatasetGroupReason.PollingCodingKeys, &a10);
          sub_10000DED8();
          v100 = sub_1000069D4();
          v102 = &a19;
          goto LABEL_21;
        case 5:
          a11 = 5;
          sub_1000F6F90();
          sub_10000389C(&type metadata for TSDataSyncDatasetGroupReason.ApiCallCodingKeys, &a11);
          sub_10000DED8();
          v100 = sub_1000069D4();
          v102 = &a21;
          goto LABEL_21;
        case 6:
          a12 = 6;
          sub_1000F6F3C();
          sub_10000BA2C(&type metadata for TSDataSyncDatasetGroupReason.PushNotificationCodingKeys, &a12);
          sub_10000DED8();
          sub_10000EDE8();
          v100 = v133;
          v102 = &a22;
          goto LABEL_21;
        case 7:
          a13 = 7;
          sub_1000F6EE8();
          sub_10000BA2C(&type metadata for TSDataSyncDatasetGroupReason.DataExpiredCodingKeys, &a13);
          sub_10000DED8();
          sub_10000EDE8();
          v100 = v134;
          v102 = &a24;
          goto LABEL_21;
        case 8:
          a14 = 8;
          sub_1000F6E94();
          sub_10000389C(&type metadata for TSDataSyncDatasetGroupReason.SchemaChangeCodingKeys, &a14);
          sub_10000DED8();
          goto LABEL_24;
        case 9:
          a15 = 9;
          sub_1000F6E40();
          sub_10000389C(&type metadata for TSDataSyncDatasetGroupReason.ScheduledCodingKeys, &a15);
          sub_10000DED8();
          goto LABEL_24;
        case 10:
          a16 = 10;
          sub_1000F6DEC();
          sub_10000389C(&type metadata for TSDataSyncDatasetGroupReason.ManualSyncCodingKeys, &a16);
          sub_10000DED8();
LABEL_24:
          v100 = sub_100008D84();
          break;
        case 11:
          a17 = 11;
          sub_1000F6D98();
          sub_10000389C(&type metadata for TSDataSyncDatasetGroupReason.ResponseSuggestedCodingKeys, &a17);
          sub_10000DED8();
          v100 = sub_100008D84();
          v106 = v132[0];
          break;
        default:
          v137 = 0;
          sub_1000F7134();
          sub_10000389C(&type metadata for TSDataSyncDatasetGroupReason.StandardSyncCodingKeys, &v137);
          sub_10000DED8();
          v100 = sub_1000069D4();
          v102 = v132;
LABEL_21:
          v106 = *(v102 - 32);
          break;
      }

      v101(v100, v106);
      v107 = sub_1000F8344();
      v108(v107);
      sub_100004118(v135);
      goto LABEL_11;
    }

    v93 = v29;
    v94 = v136;
    v92 = v80;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000F0D50()
{
  sub_100004168();
  v2 = sub_1000F8350();
  sub_100003724();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000306C();
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v7 = sub_1000030B8(v6);
  __chkstk_darwin(v7);
  sub_10000308C();
  __chkstk_darwin(v8);
  v10 = &v54[-v9];
  v11 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_10000307C();
  __chkstk_darwin(v12);
  sub_10000308C();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = &v54[-v17];
  v19 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100152BEC(*(v1 + 16), *(v0 + 16)))
  {
    v20 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
    if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v21 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v22 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
        sub_10003CF3C(*(v22 + 32));
        if (static AccountIdentity.== infix(_:_:)())
        {
          v58 = v4;
          v23 = type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
          sub_100112F4C();
          if (v24)
          {
            sub_1000F83B8();
            v27 = v19 && v25 == v26;
            if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              sub_10003CF3C(v23[7]);
              if (static AccountIdentity.== infix(_:_:)())
              {
                sub_100013C80(v23[8]);
                if (v19)
                {
                  sub_100013C80(v23[9]);
                  if (v19)
                  {
                    sub_100013C80(v23[10]);
                    if (v19)
                    {
                      sub_100002A28();
                      if (v19)
                      {
                        sub_100013C80(v23[12]);
                        if (v19)
                        {
                          v28 = v23[13];
                          v56 = v23;
                          v57 = v28;
                          v29 = *(v11 + 48);
                          sub_10003D1E4();
                          v57 = v29;
                          sub_10003D1E4();
                          sub_1000071D8(v18);
                          if (v19)
                          {
                            sub_1000071D8(v57 + v18);
                            if (v19)
                            {
                              sub_100004E24(v18, &qword_1002DA970, &qword_1002318B0);
LABEL_45:
                              v39 = *(v11 + 48);
                              sub_1000F83F8();
                              sub_1000F83D8();
                              sub_1000071D8(v15);
                              if (v19)
                              {
                                sub_1000071D8(v15 + v39);
                                if (v19)
                                {
                                  sub_100004E24(v15, &qword_1002DA970, &qword_1002318B0);
LABEL_57:
                                  v53 = v56;
                                  sub_10003CF3C(v56[15]);
                                  if (static URL.== infix(_:_:)())
                                  {
                                    sub_100013C80(v53[16]);
                                    if (v19)
                                    {
                                      sub_100013C80(v53[17]);
                                      if (v19)
                                      {
                                        sub_100002A28();
                                      }
                                    }
                                  }

                                  goto LABEL_55;
                                }
                              }

                              else
                              {
                                sub_10000B80C();
                                sub_10003D1E4();
                                sub_1000071D8(v15 + v39);
                                if (!v40)
                                {
                                  v43 = v58;
                                  v44 = sub_1000035AC();
                                  v45(v44);
                                  sub_100004AC4();
                                  v48 = sub_1000F5EC0(v46, v47, &protocol conformance descriptor for Date);
                                  v49 = sub_100010DEC(v48);
                                  v50 = *(v43 + 8);
                                  v51 = sub_1000049C0();
                                  v50(v51);
                                  v52 = sub_1000B31F0();
                                  v50(v52);
                                  sub_100004E24(v15, &qword_1002DA970, &qword_1002318B0);
                                  if ((v49 & 1) == 0)
                                  {
                                    goto LABEL_55;
                                  }

                                  goto LABEL_57;
                                }

                                v41 = sub_1000F828C();
                                v42(v41, v2);
                              }

                              v31 = v15;
LABEL_54:
                              sub_100004E24(v31, &qword_1002DACF0, &qword_100232140);
                              goto LABEL_55;
                            }
                          }

                          else
                          {
                            sub_10003D1E4();
                            sub_1000071D8(v57 + v18);
                            if (!v30)
                            {
                              v32 = v58;
                              v33 = sub_1000035AC();
                              v34(v33);
                              sub_100004AC4();
                              sub_1000F5EC0(v35, v36, &protocol conformance descriptor for Date);
                              v55 = dispatch thunk of static Equatable.== infix(_:_:)();
                              v57 = *(v32 + 8);
                              v37 = sub_1000049C0();
                              v38(v37);
                              v57(v10, v2);
                              sub_100004E24(v18, &qword_1002DA970, &qword_1002318B0);
                              if ((v55 & 1) == 0)
                              {
                                goto LABEL_55;
                              }

                              goto LABEL_45;
                            }

                            (*(v58 + 8))(v10, v2);
                          }

                          v31 = v18;
                          goto LABEL_54;
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

LABEL_55:
  sub_1000027F8();
}

void sub_1000F12D8()
{
  v3 = sub_1000F82F8();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v11 = sub_1000030B8(v10);
  __chkstk_darwin(v11);
  sub_10000308C();
  v14 = v12 - v13;
  __chkstk_darwin(v15);
  v17 = &v36 - v16;
  sub_1001113D4(v0);
  type metadata accessor for TSDataSyncDatasetGroupScheduleInput(0);
  sub_1000F8390();
  sub_100115A3C();
  String.hash(into:)();
  type metadata accessor for AccountIdentity();
  sub_1000F5EC0(&qword_1002DE9E0, &type metadata accessor for AccountIdentity, &protocol conformance descriptor for AccountIdentity);
  sub_10000B380();
  dispatch thunk of Hashable.hash(into:)();
  v18 = *(v1 + v2[8]);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  Hasher._combine(_:)(*&v18);
  sub_1000052D4(v2[9]);
  Hasher._combine(_:)(v19);
  sub_1000052D4(v2[10]);
  Hasher._combine(_:)(v20);
  Hasher._combine(_:)(*(v1 + v2[11]));
  sub_1000052D4(v2[12]);
  Hasher._combine(_:)(v21);
  sub_10003D1E4();
  sub_10000B3A0(v17, 1, v3);
  if (v22)
  {
    sub_100008C3C();
  }

  else
  {
    sub_100002E60();
    v23(v9, v17, v3);
    sub_100005C20();
    sub_100004AC4();
    v26 = sub_1000F5EC0(v24, v25, &protocol conformance descriptor for Date);
    sub_10000AD48(v26);
    (*(v5 + 8))(v9, v3);
  }

  sub_10003D1E4();
  sub_10000B3A0(v14, 1, v3);
  if (v22)
  {
    sub_100008C3C();
  }

  else
  {
    sub_100002E60();
    v27 = sub_1000DBA50();
    v28(v27);
    sub_100005C20();
    sub_100004AC4();
    v31 = sub_1000F5EC0(v29, v30, &protocol conformance descriptor for Date);
    sub_10000AD48(v31);
    (*(v5 + 8))(v9, v3);
  }

  type metadata accessor for URL();
  sub_100006658();
  sub_1000F5EC0(v32, v33, &protocol conformance descriptor for URL);
  sub_10000B380();
  dispatch thunk of Hashable.hash(into:)();
  sub_1000052D4(v2[16]);
  Hasher._combine(_:)(v34);
  sub_1000052D4(v2[17]);
  Hasher._combine(_:)(v35);
  Hasher._combine(_:)(*(v1 + v2[18]));
}

void sub_1000F1650()
{
  sub_100004168();
  sub_1000F8350();
  sub_100003724();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_10000306C();
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v6);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100004880();
  v8 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_1000030B8(v8);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_1000AC3B8();
  v11 = *(v10 + 56);
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v2);
  if (v12)
  {
    sub_1000071D8(v2 + v11);
    if (v12)
    {
      sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_11;
    }

LABEL_9:
    sub_100004E24(v2, &qword_1002DACF0, &qword_100232140);
    goto LABEL_25;
  }

  sub_10000B80C();
  sub_10003D1E4();
  sub_1000071D8(v2 + v11);
  if (v12)
  {
    v13 = sub_1000B31F0();
    v14(v13);
    goto LABEL_9;
  }

  sub_100002E60();
  v15 = sub_1000035AC();
  v16(v15);
  sub_100004AC4();
  v19 = sub_1000F5EC0(v17, v18, &protocol conformance descriptor for Date);
  v20 = sub_100010DEC(v19);
  v21 = *(v4 + 8);
  v22 = sub_1000049C0();
  v21(v22);
  v23 = sub_1000B31F0();
  v21(v23);
  sub_100004E24(v2, &qword_1002DA970, &qword_1002318B0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_11:
  v24 = type metadata accessor for TSDataSyncDatasetScheduleInput(0);
  sub_10003CF3C(v24[5]);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_100002A28();
  if (!v12)
  {
    goto LABEL_25;
  }

  v25 = v24[7];
  v26 = (v1 + v25);
  v27 = *(v1 + v25 + 8);
  v28 = (v0 + v25);
  v29 = v28[1];
  if (!v27)
  {
    if (v29)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v29)
  {
    v30 = *v26 == *v28 && v27 == v29;
    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
LABEL_23:
      v31 = (v1 + v24[8]);
      v32 = v31[2];
      v35[1] = v31[1];
      *v36 = v32;
      *&v36[9] = *(v31 + 41);
      v35[0] = *v31;
      v33 = (v0 + v24[8]);
      *&v39[9] = *(v33 + 41);
      v34 = v33[2];
      v38 = v33[1];
      *v39 = v34;
      v37 = *v33;
      if (sub_1000B821C(v35))
      {
        sub_100142CA4(*(v1 + v24[9]), *(v0 + v24[9]));
      }
    }
  }

LABEL_25:
  sub_1000027F8();
}

uint64_t sub_1000F1C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000ED8C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F1C98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EDCDC();
  *a1 = result;
  return result;
}

uint64_t sub_1000F1CC0(uint64_t a1)
{
  v2 = sub_1000F239C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1CFC(uint64_t a1)
{
  v2 = sub_1000F239C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1D3C(uint64_t a1)
{
  v2 = sub_1000F5168();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1D78(uint64_t a1)
{
  v2 = sub_1000F5168();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1DB4(uint64_t a1)
{
  v2 = sub_1000F4F1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1DF0(uint64_t a1)
{
  v2 = sub_1000F4F1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1E2C(uint64_t a1)
{
  v2 = sub_1000F4DCC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1E68(uint64_t a1)
{
  v2 = sub_1000F4DCC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1EA4(uint64_t a1)
{
  v2 = sub_1000F5114();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1EE0(uint64_t a1)
{
  v2 = sub_1000F5114();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1F1C(uint64_t a1)
{
  v2 = sub_1000F4E74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1F58(uint64_t a1)
{
  v2 = sub_1000F4E74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F1F94(uint64_t a1)
{
  v2 = sub_1000F4EC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F1FD0(uint64_t a1)
{
  v2 = sub_1000F4EC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F200C(uint64_t a1)
{
  v2 = sub_1000F4FC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2048(uint64_t a1)
{
  v2 = sub_1000F4FC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2084(uint64_t a1)
{
  v2 = sub_1000F51BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F20C0(uint64_t a1)
{
  v2 = sub_1000F51BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F20FC(uint64_t a1)
{
  v2 = sub_1000F50C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2138(uint64_t a1)
{
  v2 = sub_1000F50C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2174(uint64_t a1)
{
  v2 = sub_1000F4E20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F21B0(uint64_t a1)
{
  v2 = sub_1000F4E20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F21EC(uint64_t a1)
{
  v2 = sub_1000F4F70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2228(uint64_t a1)
{
  v2 = sub_1000F4F70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2264(uint64_t a1)
{
  v2 = sub_1000F5018();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F22A0(uint64_t a1)
{
  v2 = sub_1000F5018();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F22DC(uint64_t a1)
{
  v2 = sub_1000F506C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2318(uint64_t a1)
{
  v2 = sub_1000F506C();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000F239C()
{
  result = qword_1002DC2F0;
  if (!qword_1002DC2F0)
  {
    result = swift_getWitnessTable(byte_100235974, &type metadata for TSDataSyncDatasetGroupTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC2F0);
  }

  return result;
}

uint64_t sub_1000F23F0(uint64_t a1)
{
  v2 = sub_1000F6F90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F242C(uint64_t a1)
{
  v2 = sub_1000F6F90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2468(uint64_t a1)
{
  v2 = sub_1000F70E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F24A4(uint64_t a1)
{
  v2 = sub_1000F70E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F24E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000EF3E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F2510@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EF7B8();
  *a1 = result;
  return result;
}

uint64_t sub_1000F2538(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F6D44();

  return CodingKey.description.getter(a1, v3);
}

uint64_t sub_1000F2574(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F6D44();

  return CodingKey.debugDescription.getter(a1, v3);
}

uint64_t sub_1000F25B0(uint64_t a1)
{
  v2 = sub_1000F6EE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F25EC(uint64_t a1)
{
  v2 = sub_1000F6EE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2628(uint64_t a1)
{
  v2 = sub_1000F708C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2664(uint64_t a1)
{
  v2 = sub_1000F708C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F26A0(uint64_t a1)
{
  v2 = sub_1000F6DEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F26DC(uint64_t a1)
{
  v2 = sub_1000F6DEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2718(uint64_t a1)
{
  v2 = sub_1000F6FE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2754(uint64_t a1)
{
  v2 = sub_1000F6FE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2790(uint64_t a1)
{
  v2 = sub_1000F6F3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F27CC(uint64_t a1)
{
  v2 = sub_1000F6F3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2808(uint64_t a1)
{
  v2 = sub_1000F6D98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2844(uint64_t a1)
{
  v2 = sub_1000F6D98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2880(uint64_t a1)
{
  v2 = sub_1000F7038();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F28BC(uint64_t a1)
{
  v2 = sub_1000F7038();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F28F8(uint64_t a1)
{
  v2 = sub_1000F6E40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2934(uint64_t a1)
{
  v2 = sub_1000F6E40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2970(uint64_t a1)
{
  v2 = sub_1000F6E94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F29AC(uint64_t a1)
{
  v2 = sub_1000F6E94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F29E8(uint64_t a1)
{
  v2 = sub_1000F7134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F2A24(uint64_t a1)
{
  v2 = sub_1000F7134();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000F2B58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001002738D0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72657474696ALL && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001002725D0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x44496B736174 && a2 == 0xE600000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7107189 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000F2D54(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x72657474696ALL;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x44496B736174;
      break;
    case 5:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000F2E08()
{
  sub_100002FBC();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100152BEC(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 40) == *(v0 + 40) && *(v1 + 48) == *(v0 + 48);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  if ((static AccountIdentity.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
  sub_100113274();
  if ((v7 & 1) == 0 || *(v1 + *(v6 + 24)) != *(v0 + *(v6 + 24)) || *(v1 + *(v6 + 28)) != *(v0 + *(v6 + 28)))
  {
    return 0;
  }

  sub_1000F83B8();
  v10 = v3 && v8 == v9;
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static URL.== infix(_:_:)();
}

uint64_t sub_1000F2F58()
{
  v2 = sub_100099DF4(&qword_1002DC960, &qword_1002359E0);
  sub_100003724();
  v4 = v3;
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  sub_100002810();
  v6 = sub_1000F6A20();
  sub_10000A484(&type metadata for TSDataSyncDatasetGroupSchedule.CodingKeys, v7, v6);
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_1000F8298();
  sub_1000F5EC0(v8, v9, byte_1002367DC);
  sub_1000F82C4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
    sub_100099DF4(&qword_1002DC940, &qword_1002359D8);
    sub_1000F6BDC();
    sub_1000F82C4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    sub_1000AEE94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for URL();
    sub_100006658();
    sub_1000F5EC0(v10, v11, &protocol conformance descriptor for URL);
    sub_1000F82C4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t sub_1000F31E4(uint64_t a1)
{
  sub_1001113D4(a1);
  type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
  sub_1000F8390();
  sub_1001160A8();
  v3 = *(v1 + *(v2 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(*(v1 + *(v2 + 28)));
  String.hash(into:)();
  type metadata accessor for URL();
  sub_100006658();
  sub_1000F5EC0(v4, v5, &protocol conformance descriptor for URL);
  sub_10000B380();
  return dispatch thunk of Hashable.hash(into:)();
}

void sub_1000F32A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v25 = v24;
  v26 = type metadata accessor for URL();
  sub_100003724();
  v45 = v27;
  __chkstk_darwin(v28);
  sub_10000306C();
  v31 = v30 - v29;
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
  sub_10000307C();
  __chkstk_darwin(v32);
  sub_10000306C();
  sub_100099DF4(&qword_1002DC930, &qword_1002359D0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v33);
  sub_100003B38();
  v46 = type metadata accessor for TSDataSyncDatasetGroupSchedule(0);
  sub_10000307C();
  __chkstk_darwin(v34);
  sub_10000306C();
  v47 = v36 - v35;
  sub_10000C4FC(v25, v25[3]);
  sub_1000F6A20();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100004118(v25);
  }

  else
  {
    LOBYTE(v48) = 0;
    sub_1000F8298();
    sub_1000F5EC0(v37, v38, byte_100236804);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000F6CEC();
    sub_100099DF4(&qword_1002DC940, &qword_1002359D8);
    sub_1000F6A74();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v47 + v46[5]) = v48;
    sub_1000F83A4(2);
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v47 + v46[6]) = v39;
    sub_1000F83A4(3);
    *(v47 + v46[7]) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000AEE40();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = (v47 + v46[8]);
    *v40 = v48;
    v40[1] = v49;
    sub_100006658();
    sub_1000F5EC0(v41, v42, &protocol conformance descriptor for URL);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = sub_100005CD0();
    v44(v43);
    (*(v45 + 32))(v47 + v46[9], v31, v26);
    sub_1000F7284();
    sub_100004118(v25);
    sub_1000F6B84(v47, type metadata accessor for TSDataSyncDatasetGroupSchedule);
  }

  sub_100005074();
}

uint64_t sub_1000F378C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x537478654E776172 && a2 == 0xED00007441636E79;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636E79537478656ELL && a2 == 0xEA00000000007441;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6769666E6F63 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000F3978(char a1)
{
  result = 0x537478654E776172;
  switch(a1)
  {
    case 1:
      result = 0x636E79537478656ELL;
      break;
    case 2:
      result = 0x72656767697274;
      break;
    case 3:
      result = 0x6E6F73616572;
      break;
    case 4:
      result = 0x746E657665;
      break;
    case 5:
      result = 0x6769666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000F3A30()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v57 = type metadata accessor for TSDataSyncTriggerEvent(0);
  sub_10000307C();
  __chkstk_darwin(v4);
  sub_10000306C();
  sub_10000A1C0(v6 - v5);
  v7 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  sub_1000030B8(v7);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003018();
  sub_10000A1C0(v9);
  v56 = sub_100099DF4(&qword_1002DC980, &qword_1002359E8);
  sub_10000307C();
  sub_100003774();
  __chkstk_darwin(v10);
  sub_100003018();
  v58 = v11;
  v12 = type metadata accessor for Date();
  sub_100003724();
  v14 = v13;
  __chkstk_darwin(v15);
  sub_10000306C();
  v18 = v17 - v16;
  v19 = sub_1000DBA50();
  v21 = sub_100099DF4(v19, v20);
  sub_1000030B8(v21);
  sub_100003774();
  __chkstk_darwin(v22);
  sub_10000AF24();
  v23 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  sub_1000030B8(v23);
  sub_100003774();
  __chkstk_darwin(v24);
  v26 = v55 - v25;
  v28 = *(v27 + 56);
  v59 = v3;
  sub_10003D1E4();
  sub_10003D1E4();
  sub_1000071D8(v26);
  if (v29)
  {
    sub_1000071D8(&v26[v28]);
    if (v29)
    {
      sub_100004E24(v26, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_12;
    }

LABEL_9:
    v32 = &qword_1002DACF0;
    v33 = &qword_100232140;
    v34 = v26;
LABEL_10:
    sub_100004E24(v34, v32, v33);
    goto LABEL_26;
  }

  sub_10003D1E4();
  sub_1000071D8(&v26[v28]);
  if (v29)
  {
    v30 = sub_1000049C0();
    v31(v30);
    goto LABEL_9;
  }

  (*(v14 + 32))(v18, &v26[v28], v12);
  sub_100004AC4();
  sub_1000F5EC0(v35, v36, &protocol conformance descriptor for Date);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v14 + 8);
  v38(v18, v12);
  v39 = sub_1000049C0();
  (v38)(v39);
  sub_100004E24(v26, &qword_1002DA970, &qword_1002318B0);
  if ((v37 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  v40 = type metadata accessor for TSDataSyncDatasetSchedule(0);
  v41 = v59;
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(v41 + v40[6]) != *(v1 + v40[6]) || *(v41 + v40[7]) != *(v1 + v40[7]))
  {
    goto LABEL_26;
  }

  v42 = *(v56 + 48);
  v43 = v58;
  sub_10003D1E4();
  sub_10003D1E4();
  v44 = v57;
  sub_10000B3A0(v43, 1, v57);
  if (v29)
  {
    sub_10000B3A0(v43 + v42, 1, v44);
    if (v29)
    {
      sub_100004E24(v43, &qword_1002DBC20, &unk_100234B00);
LABEL_25:
      v51 = (v41 + v40[9]);
      v52 = v51[2];
      v60[1] = v51[1];
      *v61 = v52;
      *&v61[9] = *(v51 + 41);
      v60[0] = *v51;
      v53 = (v1 + v40[9]);
      *&v64[9] = *(v53 + 41);
      v54 = v53[2];
      v63 = v53[1];
      *v64 = v54;
      v62 = *v53;
      sub_1000B821C(v60);
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  v45 = v55[1];
  sub_10003D1E4();
  sub_10000B3A0(v43 + v42, 1, v44);
  if (v46)
  {
    sub_1000F6B84(v45, type metadata accessor for TSDataSyncTriggerEvent);
LABEL_23:
    v32 = &qword_1002DC980;
    v33 = &qword_1002359E8;
    v34 = v43;
    goto LABEL_10;
  }

  v47 = v55[0];
  sub_1000F6CEC();
  v48 = sub_10010F534();
  sub_1000F6B84(v47, type metadata accessor for TSDataSyncTriggerEvent);
  v49 = sub_10000B80C();
  sub_1000F6B84(v49, v50);
  sub_100004E24(v43, &qword_1002DBC20, &unk_100234B00);
  if (v48)
  {
    goto LABEL_25;
  }

LABEL_26:
  sub_1000027F8();
}

void sub_1000F3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100004868();
  v26 = sub_100099DF4(&qword_1002DCAE8, &qword_100235AC8);
  sub_100003724();
  v28 = v27;
  sub_100003774();
  __chkstk_darwin(v29);
  sub_10000AF24();
  sub_100002810();
  v30 = sub_1000F7188();
  sub_10000A484(&type metadata for TSDataSyncDatasetSchedule.CodingKeys, v31, v30);
  LOBYTE(v46[0]) = 0;
  type metadata accessor for Date();
  sub_100004AC4();
  sub_1000F5EC0(v32, v33, &protocol conformance descriptor for Date);
  sub_100003B2C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v24)
  {
    (*(v28 + 8))(v25, v26);
  }

  else
  {
    v34 = type metadata accessor for TSDataSyncDatasetSchedule(0);
    LOBYTE(v46[0]) = 1;
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v46[0]) = *(v23 + v34[6]);
    LOBYTE(v43) = 2;
    sub_1000F72DC();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v46[0]) = *(v23 + v34[7]);
    LOBYTE(v43) = 3;
    sub_1000F7330();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    type metadata accessor for TSDataSyncTriggerEvent(0);
    sub_100013FFC();
    sub_1000F5EC0(v35, v36, byte_100236984);
    sub_1000F82C4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v37 = (v23 + v34[9]);
    v38 = v37[1];
    v46[0] = *v37;
    v46[1] = v38;
    v40 = *v37;
    v39 = v37[1];
    *v47 = v37[2];
    *&v47[9] = *(v37 + 41);
    v43 = v40;
    v44 = v39;
    *v45 = v37[2];
    *&v45[9] = *(v37 + 41);
    sub_1000BA2CC(v46, v41);
    sub_1000BA1D0();
    sub_100003B2C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v41[0] = v43;
    v41[1] = v44;
    *v42 = *v45;
    *&v42[9] = *&v45[9];
    sub_1000BA304(v41);
    (*(v28 + 8))(v25, v26);
  }

  sub_100005074();
}

void sub_1000F42B0()
{
  v3 = sub_1000F82F8();
  sub_100003724();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_10000306C();
  sub_1000AC3B8();
  v7 = sub_1000DBA50();
  v9 = sub_100099DF4(v7, v8);
  sub_1000030B8(v9);
  sub_100003774();
  __chkstk_darwin(v10);
  sub_100004F7C(v11, v12, v13, v14, v15, v16, v17, v18, v32);
  sub_10000B3A0(v0, 1, v3);
  if (v19)
  {
    sub_100008C3C();
  }

  else
  {
    v20 = sub_1000F82B0();
    v21(v20);
    sub_100005C20();
    sub_100004AC4();
    v24 = sub_1000F5EC0(v22, v23, &protocol conformance descriptor for Date);
    sub_100004218(v24);
    (*(v5 + 8))(v2, v3);
  }

  v25 = type metadata accessor for TSDataSyncDatasetSchedule(0);
  sub_100004AC4();
  sub_1000F5EC0(v26, v27, &protocol conformance descriptor for Date);
  sub_10000B380();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v25[6]));
  Hasher._combine(_:)(*(v1 + v25[7]));
  sub_100114BF4();
  v28 = v1 + v25[9];
  v29 = *(v28 + 56);
  v30 = *(v28 + 32);
  String.hash(into:)();
  sub_1000050CC();
  String.hash(into:)();
  v31 = sub_1000B9204(v30);
  sub_1000F836C(v31);

  String.hash(into:)();
  Hasher._combine(_:)(v29);
}

Swift::Int sub_1000F44C4(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

void sub_1000F450C()
{
  sub_100004868();
  v2 = v1;
  v29 = v3;
  v4 = sub_100099DF4(&qword_1002DBC20, &unk_100234B00);
  sub_1000030B8(v4);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_1000F8278(v6, v29);
  v7 = type metadata accessor for Date();
  sub_100003724();
  v30 = v8;
  __chkstk_darwin(v9);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v13);
  sub_100003774();
  __chkstk_darwin(v14);
  sub_100003B38();
  sub_100099DF4(&qword_1002DCAC0, &qword_100235AC0);
  sub_100003724();
  sub_100003774();
  __chkstk_darwin(v15);
  sub_100004880();
  v31 = type metadata accessor for TSDataSyncDatasetSchedule(0);
  sub_10000307C();
  __chkstk_darwin(v16);
  sub_10000306C();
  v19 = v18 - v17;
  v20 = sub_10000DBC0();
  sub_10000C4FC(v20, v21);
  sub_1000F7188();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_100004AC4();
    sub_1000F5EC0(v22, v23, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100012D44();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v30 + 32))(v19 + v31[5], v12, v7);
    sub_1000F71DC();
    sub_1000F82D4(&type metadata for TSDataSyncDatasetGroupTrigger);
    *(v19 + v31[6]) = 1;
    sub_1000F7230();
    sub_1000F82D4(&type metadata for TSDataSyncDatasetGroupReason);
    *(v19 + v31[7]) = 1;
    type metadata accessor for TSDataSyncTriggerEvent(0);
    LOBYTE(v32) = 4;
    sub_100013FFC();
    sub_1000F5EC0(v24, v25, byte_1002369AC);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100012D44();
    sub_1000BA0B0();
    sub_1000F82D4(&type metadata for TSDataSyncDatasetConfig);
    v26 = sub_1000F8338();
    v27(v26);
    v28 = (v19 + v31[9]);
    *v28 = v32;
    v28[1] = v33;
    v28[2] = *v34;
    *(v28 + 41) = *&v34[9];
    sub_1000F7284();
    sub_100004118(v2);
    sub_1000F6B84(v19, type metadata accessor for TSDataSyncDatasetSchedule);
  }

  sub_100005074();
}

uint64_t sub_1000F4A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F2B58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F4AB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F2D4C();
  *a1 = result;
  return result;
}

uint64_t sub_1000F4ADC(uint64_t a1)
{
  v2 = sub_1000F6A20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F4B18(uint64_t a1)
{
  v2 = sub_1000F6A20();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000F4BD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_1000F4C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000F378C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000F4C4C(uint64_t a1)
{
  v2 = sub_1000F7188();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000F4C88(uint64_t a1)
{
  v2 = sub_1000F7188();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000F4D0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1000F4D84(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000F4DCC()
{
  result = qword_1002DC300;
  if (!qword_1002DC300)
  {
    result = swift_getWitnessTable(byte_100235924, &type metadata for TSDataSyncDatasetGroupTrigger.LocalAPICodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC300);
  }

  return result;
}

unint64_t sub_1000F4E20()
{
  result = qword_1002DC308;
  if (!qword_1002DC308)
  {
    result = swift_getWitnessTable(aM_10, &type metadata for TSDataSyncDatasetGroupTrigger.ResponseSuggestedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC308);
  }

  return result;
}

unint64_t sub_1000F4E74()
{
  result = qword_1002DC310;
  if (!qword_1002DC310)
  {
    result = swift_getWitnessTable(byte_100235884, &type metadata for TSDataSyncDatasetGroupTrigger.ManualSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC310);
  }

  return result;
}

unint64_t sub_1000F4EC8()
{
  result = qword_1002DC318;
  if (!qword_1002DC318)
  {
    result = swift_getWitnessTable(byte_100235834, &type metadata for TSDataSyncDatasetGroupTrigger.PlaceHolderCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC318);
  }

  return result;
}

unint64_t sub_1000F4F1C()
{
  result = qword_1002DC320;
  if (!qword_1002DC320)
  {
    result = swift_getWitnessTable(asc_1002357E4, &type metadata for TSDataSyncDatasetGroupTrigger.ForcedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC320);
  }

  return result;
}

unint64_t sub_1000F4F70()
{
  result = qword_1002DC328;
  if (!qword_1002DC328)
  {
    result = swift_getWitnessTable(byte_100235794, &type metadata for TSDataSyncDatasetGroupTrigger.ScheduledCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC328);
  }

  return result;
}

unint64_t sub_1000F4FC4()
{
  result = qword_1002DC330;
  if (!qword_1002DC330)
  {
    result = swift_getWitnessTable("ݚ\a", &type metadata for TSDataSyncDatasetGroupTrigger.PollingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC330);
  }

  return result;
}

unint64_t sub_1000F5018()
{
  result = qword_1002DC338;
  if (!qword_1002DC338)
  {
    result = swift_getWitnessTable(asc_1002356F4, &type metadata for TSDataSyncDatasetGroupTrigger.SchemaChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC338);
  }

  return result;
}

unint64_t sub_1000F506C()
{
  result = qword_1002DC340;
  if (!qword_1002DC340)
  {
    result = swift_getWitnessTable(asc_1002356A4, &type metadata for TSDataSyncDatasetGroupTrigger.SystemUpdateCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC340);
  }

  return result;
}

unint64_t sub_1000F50C0()
{
  result = qword_1002DC348;
  if (!qword_1002DC348)
  {
    result = swift_getWitnessTable("͛\a", &type metadata for TSDataSyncDatasetGroupTrigger.RequestFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC348);
  }

  return result;
}

unint64_t sub_1000F5114()
{
  result = qword_1002DC350;
  if (!qword_1002DC350)
  {
    result = swift_getWitnessTable(byte_100235604, &type metadata for TSDataSyncDatasetGroupTrigger.LocalChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC350);
  }

  return result;
}

unint64_t sub_1000F5168()
{
  result = qword_1002DC358;
  if (!qword_1002DC358)
  {
    result = swift_getWitnessTable(aM_9, &type metadata for TSDataSyncDatasetGroupTrigger.DataExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC358);
  }

  return result;
}

unint64_t sub_1000F51BC()
{
  result = qword_1002DC360;
  if (!qword_1002DC360)
  {
    result = swift_getWitnessTable(byte_100235564, &type metadata for TSDataSyncDatasetGroupTrigger.PushNotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC360);
  }

  return result;
}

void sub_1000F5258(uint64_t a1)
{
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_1000F563C(319, &unk_1002DC440, type metadata accessor for TSDataSyncDatasetScheduleInput);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AccountIdentity();
      if (v3 <= 0x3F)
      {
        sub_1000F59A4(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          type metadata accessor for URL();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000F5408(uint64_t a1)
{
  sub_1000F54C4(319);
  if (v1 <= 0x3F)
  {
    sub_1000F59A4(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000F54C4(uint64_t a1)
{
  if (!qword_1002DC510)
  {
    sub_1000D6484();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &qword_1002DC510);
    }
  }
}

void sub_1000F5568(uint64_t a1)
{
  type metadata accessor for TSDataSyncDatasetGroupIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_1000F563C(319, &unk_1002DC5B0, type metadata accessor for TSDataSyncDatasetSchedule);
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000F563C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1000D6484();
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000F5704(uint64_t a1)
{
  sub_1000F59A4(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_1000F59A4(319, &unk_1002DC658, type metadata accessor for TSDataSyncTriggerEvent, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000F5848(uint64_t a1)
{
  sub_1000F59A4(319, &qword_1002DA9F8, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_10003D104(319, &qword_1002DA9F0, &type metadata for String);
      if (v3 <= 0x3F)
      {
        sub_1000F59A4(319, &qword_1002DC700, type metadata accessor for TSDataSyncTriggerEvent, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          sub_10003D104(319, &unk_1002DC708, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000F59A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1000F5A50(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AccountIdentity();
    if (v2 <= 0x3F)
    {
      sub_10003D104(319, &qword_1002DC7B8, &type metadata for Double);
      if (v3 <= 0x3F)
      {
        sub_1000F5B48(319);
        if (v4 <= 0x3F)
        {
          sub_10003D104(319, &qword_1002DA9F0, &type metadata for String);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000F5B48(uint64_t a1)
{
  if (!qword_1002DC7C0)
  {
    type metadata accessor for TSDataSyncDatasetGroupIdentifier(255);
    sub_10009A468(&qword_1002DC7C8, &qword_100236CA0);
    sub_1000F5EC0(&unk_1002DC7D0, type metadata accessor for TSDataSyncDatasetGroupIdentifier, byte_10023679C);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1002DC7C0);
    }
  }
}

uint64_t sub_1000F5C00(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100004918(-1);
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return sub_100004918((*a1 | (v4 << 8)) - 13);
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

      return sub_100004918((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100004918((*a1 | (v4 << 8)) - 13);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_100004918(v8);
}

_BYTE *sub_1000F5C84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
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
          result = sub_100006284(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000F5E24()
{
  result = qword_1002DC818;
  if (!qword_1002DC818)
  {
    result = swift_getWitnessTable(aM_11, &type metadata for TSDataSyncDatasetGroupTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC818);
  }

  return result;
}

uint64_t sub_1000F5EC0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1000F5F54()
{
  result = qword_1002DC830;
  if (!qword_1002DC830)
  {
    result = swift_getWitnessTable(aM_12, &type metadata for TSDataSyncDatasetGroupReason, v0, v1);
    atomic_store(result, &qword_1002DC830);
  }

  return result;
}

unint64_t sub_1000F6084()
{
  result = qword_1002DC850;
  if (!qword_1002DC850)
  {
    result = swift_getWitnessTable(byte_1002350D4, &type metadata for TSDataSyncDatasetGroupTrigger.PushNotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC850);
  }

  return result;
}

unint64_t sub_1000F60DC()
{
  result = qword_1002DC858;
  if (!qword_1002DC858)
  {
    result = swift_getWitnessTable(byte_1002350FC, &type metadata for TSDataSyncDatasetGroupTrigger.PushNotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC858);
  }

  return result;
}

unint64_t sub_1000F6134()
{
  result = qword_1002DC860;
  if (!qword_1002DC860)
  {
    result = swift_getWitnessTable(aM_14, &type metadata for TSDataSyncDatasetGroupTrigger.DataExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC860);
  }

  return result;
}

unint64_t sub_1000F618C()
{
  result = qword_1002DC868;
  if (!qword_1002DC868)
  {
    result = swift_getWitnessTable(a5_7, &type metadata for TSDataSyncDatasetGroupTrigger.DataExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC868);
  }

  return result;
}

unint64_t sub_1000F61E4()
{
  result = qword_1002DC870;
  if (!qword_1002DC870)
  {
    result = swift_getWitnessTable(byte_100235034, &type metadata for TSDataSyncDatasetGroupTrigger.LocalChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC870);
  }

  return result;
}

unint64_t sub_1000F623C()
{
  result = qword_1002DC878;
  if (!qword_1002DC878)
  {
    result = swift_getWitnessTable(byte_10023505C, &type metadata for TSDataSyncDatasetGroupTrigger.LocalChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC878);
  }

  return result;
}

unint64_t sub_1000F6294()
{
  result = qword_1002DC880;
  if (!qword_1002DC880)
  {
    result = swift_getWitnessTable(byte_100234FE4, &type metadata for TSDataSyncDatasetGroupTrigger.RequestFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC880);
  }

  return result;
}

unint64_t sub_1000F62EC()
{
  result = qword_1002DC888;
  if (!qword_1002DC888)
  {
    result = swift_getWitnessTable("ա\a", &type metadata for TSDataSyncDatasetGroupTrigger.RequestFailedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC888);
  }

  return result;
}

unint64_t sub_1000F6344()
{
  result = qword_1002DC890;
  if (!qword_1002DC890)
  {
    result = swift_getWitnessTable(asc_100234F94, &type metadata for TSDataSyncDatasetGroupTrigger.SystemUpdateCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC890);
  }

  return result;
}

unint64_t sub_1000F639C()
{
  result = qword_1002DC898;
  if (!qword_1002DC898)
  {
    result = swift_getWitnessTable(asc_100234FBC, &type metadata for TSDataSyncDatasetGroupTrigger.SystemUpdateCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC898);
  }

  return result;
}

unint64_t sub_1000F63F4()
{
  result = qword_1002DC8A0;
  if (!qword_1002DC8A0)
  {
    result = swift_getWitnessTable(byte_100234F44, &type metadata for TSDataSyncDatasetGroupTrigger.SchemaChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8A0);
  }

  return result;
}

unint64_t sub_1000F644C()
{
  result = qword_1002DC8A8;
  if (!qword_1002DC8A8)
  {
    result = swift_getWitnessTable(aU_18, &type metadata for TSDataSyncDatasetGroupTrigger.SchemaChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8A8);
  }

  return result;
}

unint64_t sub_1000F64A4()
{
  result = qword_1002DC8B0;
  if (!qword_1002DC8B0)
  {
    result = swift_getWitnessTable("ݢ\a", &type metadata for TSDataSyncDatasetGroupTrigger.PollingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8B0);
  }

  return result;
}

unint64_t sub_1000F64FC()
{
  result = qword_1002DC8B8;
  if (!qword_1002DC8B8)
  {
    result = swift_getWitnessTable("Ţ\a", &type metadata for TSDataSyncDatasetGroupTrigger.PollingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8B8);
  }

  return result;
}

unint64_t sub_1000F6554()
{
  result = qword_1002DC8C0;
  if (!qword_1002DC8C0)
  {
    result = swift_getWitnessTable(asc_100234EA4, &type metadata for TSDataSyncDatasetGroupTrigger.ScheduledCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8C0);
  }

  return result;
}

unint64_t sub_1000F65AC()
{
  result = qword_1002DC8C8;
  if (!qword_1002DC8C8)
  {
    result = swift_getWitnessTable(byte_100234ECC, &type metadata for TSDataSyncDatasetGroupTrigger.ScheduledCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8C8);
  }

  return result;
}

unint64_t sub_1000F6604()
{
  result = qword_1002DC8D0;
  if (!qword_1002DC8D0)
  {
    result = swift_getWitnessTable(asc_100234E54, &type metadata for TSDataSyncDatasetGroupTrigger.ForcedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8D0);
  }

  return result;
}

unint64_t sub_1000F665C()
{
  result = qword_1002DC8D8;
  if (!qword_1002DC8D8)
  {
    result = swift_getWitnessTable(aE_13, &type metadata for TSDataSyncDatasetGroupTrigger.ForcedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8D8);
  }

  return result;
}

unint64_t sub_1000F66B4()
{
  result = qword_1002DC8E0;
  if (!qword_1002DC8E0)
  {
    result = swift_getWitnessTable("ͣ\a", &type metadata for TSDataSyncDatasetGroupTrigger.PlaceHolderCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8E0);
  }

  return result;
}

unint64_t sub_1000F670C()
{
  result = qword_1002DC8E8;
  if (!qword_1002DC8E8)
  {
    result = swift_getWitnessTable(byte_100234E2C, &type metadata for TSDataSyncDatasetGroupTrigger.PlaceHolderCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8E8);
  }

  return result;
}

unint64_t sub_1000F6764()
{
  result = qword_1002DC8F0;
  if (!qword_1002DC8F0)
  {
    result = swift_getWitnessTable(byte_100234DB4, &type metadata for TSDataSyncDatasetGroupTrigger.ManualSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8F0);
  }

  return result;
}

unint64_t sub_1000F67BC()
{
  result = qword_1002DC8F8;
  if (!qword_1002DC8F8)
  {
    result = swift_getWitnessTable(byte_100234DDC, &type metadata for TSDataSyncDatasetGroupTrigger.ManualSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC8F8);
  }

  return result;
}

unint64_t sub_1000F6814()
{
  result = qword_1002DC900;
  if (!qword_1002DC900)
  {
    result = swift_getWitnessTable(aM_15, &type metadata for TSDataSyncDatasetGroupTrigger.ResponseSuggestedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC900);
  }

  return result;
}

unint64_t sub_1000F686C()
{
  result = qword_1002DC908;
  if (!qword_1002DC908)
  {
    result = swift_getWitnessTable(aU_19, &type metadata for TSDataSyncDatasetGroupTrigger.ResponseSuggestedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC908);
  }

  return result;
}

unint64_t sub_1000F68C4()
{
  result = qword_1002DC910;
  if (!qword_1002DC910)
  {
    result = swift_getWitnessTable(byte_100234D14, &type metadata for TSDataSyncDatasetGroupTrigger.LocalAPICodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC910);
  }

  return result;
}

unint64_t sub_1000F691C()
{
  result = qword_1002DC918;
  if (!qword_1002DC918)
  {
    result = swift_getWitnessTable(byte_100234D3C, &type metadata for TSDataSyncDatasetGroupTrigger.LocalAPICodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC918);
  }

  return result;
}

unint64_t sub_1000F6974()
{
  result = qword_1002DC920;
  if (!qword_1002DC920)
  {
    result = swift_getWitnessTable(byte_100235124, &type metadata for TSDataSyncDatasetGroupTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC920);
  }

  return result;
}

unint64_t sub_1000F69CC()
{
  result = qword_1002DC928;
  if (!qword_1002DC928)
  {
    result = swift_getWitnessTable(byte_10023514C, &type metadata for TSDataSyncDatasetGroupTrigger.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC928);
  }

  return result;
}

unint64_t sub_1000F6A20()
{
  result = qword_1002DC938;
  if (!qword_1002DC938)
  {
    result = swift_getWitnessTable(aU_16, &type metadata for TSDataSyncDatasetGroupSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC938);
  }

  return result;
}

unint64_t sub_1000F6A74()
{
  result = qword_1002DC948;
  if (!qword_1002DC948)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002DC940, &qword_1002359D8);
    v4[0] = sub_1000F6B30();
    v4[1] = sub_1000F5EC0(&qword_1002DC958, type metadata accessor for TSDataSyncDatasetSchedule, byte_1002352BC);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1002DC948);
  }

  return result;
}

unint64_t sub_1000F6B30()
{
  result = qword_1002DC950;
  if (!qword_1002DC950)
  {
    result = swift_getWitnessTable(asc_10023687C, &type metadata for TSDataSyncDatasetIdentifier, v0, v1);
    atomic_store(result, &qword_1002DC950);
  }

  return result;
}

uint64_t sub_1000F6B84(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10000307C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1000F6BDC()
{
  result = qword_1002DC968;
  if (!qword_1002DC968)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10009A468(&qword_1002DC940, &qword_1002359D8);
    v4[0] = sub_1000F6C98();
    v4[1] = sub_1000F5EC0(&qword_1002DC978, type metadata accessor for TSDataSyncDatasetSchedule, byte_100235294);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> [A : B], v3, v4);
    atomic_store(result, &qword_1002DC968);
  }

  return result;
}

unint64_t sub_1000F6C98()
{
  result = qword_1002DC970;
  if (!qword_1002DC970)
  {
    result = swift_getWitnessTable(aE_12, &type metadata for TSDataSyncDatasetIdentifier, v0, v1);
    atomic_store(result, &qword_1002DC970);
  }

  return result;
}

uint64_t sub_1000F6CEC()
{
  sub_100002FBC();
  v1(0);
  sub_10000307C();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

unint64_t sub_1000F6D44()
{
  result = qword_1002DC9F0;
  if (!qword_1002DC9F0)
  {
    result = swift_getWitnessTable("Ō\a", &type metadata for TSDataSyncDatasetGroupReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC9F0);
  }

  return result;
}

unint64_t sub_1000F6D98()
{
  result = qword_1002DC9F8;
  if (!qword_1002DC9F8)
  {
    result = swift_getWitnessTable(byte_10023650C, &type metadata for TSDataSyncDatasetGroupReason.ResponseSuggestedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DC9F8);
  }

  return result;
}

unint64_t sub_1000F6DEC()
{
  result = qword_1002DCA00;
  if (!qword_1002DCA00)
  {
    result = swift_getWitnessTable(aE_10, &type metadata for TSDataSyncDatasetGroupReason.ManualSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA00);
  }

  return result;
}

unint64_t sub_1000F6E40()
{
  result = qword_1002DCA08;
  if (!qword_1002DCA08)
  {
    result = swift_getWitnessTable(byte_10023646C, &type metadata for TSDataSyncDatasetGroupReason.ScheduledCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA08);
  }

  return result;
}

unint64_t sub_1000F6E94()
{
  result = qword_1002DCA10;
  if (!qword_1002DCA10)
  {
    result = swift_getWitnessTable(byte_10023641C, &type metadata for TSDataSyncDatasetGroupReason.SchemaChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA10);
  }

  return result;
}

unint64_t sub_1000F6EE8()
{
  result = qword_1002DCA18;
  if (!qword_1002DCA18)
  {
    result = swift_getWitnessTable(aU_15, &type metadata for TSDataSyncDatasetGroupReason.DataExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA18);
  }

  return result;
}

unint64_t sub_1000F6F3C()
{
  result = qword_1002DCA20;
  if (!qword_1002DCA20)
  {
    result = swift_getWitnessTable(byte_10023637C, &type metadata for TSDataSyncDatasetGroupReason.PushNotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA20);
  }

  return result;
}

unint64_t sub_1000F6F90()
{
  result = qword_1002DCA28;
  if (!qword_1002DCA28)
  {
    result = swift_getWitnessTable(byte_10023632C, &type metadata for TSDataSyncDatasetGroupReason.ApiCallCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA28);
  }

  return result;
}

unint64_t sub_1000F6FE4()
{
  result = qword_1002DCA30;
  if (!qword_1002DCA30)
  {
    result = swift_getWitnessTable(aE_11, &type metadata for TSDataSyncDatasetGroupReason.PollingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA30);
  }

  return result;
}

unint64_t sub_1000F7038()
{
  result = qword_1002DCA38;
  if (!qword_1002DCA38)
  {
    result = swift_getWitnessTable(byte_10023628C, &type metadata for TSDataSyncDatasetGroupReason.RetryAfterCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA38);
  }

  return result;
}

unint64_t sub_1000F708C()
{
  result = qword_1002DCA40;
  if (!qword_1002DCA40)
  {
    result = swift_getWitnessTable(byte_10023623C, &type metadata for TSDataSyncDatasetGroupReason.FailureRetryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA40);
  }

  return result;
}

unint64_t sub_1000F70E0()
{
  result = qword_1002DCA48;
  if (!qword_1002DCA48)
  {
    result = swift_getWitnessTable(a5_6, &type metadata for TSDataSyncDatasetGroupReason.AttemptInflightCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA48);
  }

  return result;
}

unint64_t sub_1000F7134()
{
  result = qword_1002DCA50;
  if (!qword_1002DCA50)
  {
    result = swift_getWitnessTable(byte_10023619C, &type metadata for TSDataSyncDatasetGroupReason.StandardSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCA50);
  }

  return result;
}

unint64_t sub_1000F7188()
{
  result = qword_1002DCAC8;
  if (!qword_1002DCAC8)
  {
    result = swift_getWitnessTable("Ր\a", &type metadata for TSDataSyncDatasetSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCAC8);
  }

  return result;
}

unint64_t sub_1000F71DC()
{
  result = qword_1002DCAD0;
  if (!qword_1002DCAD0)
  {
    result = swift_getWitnessTable(byte_100234928, &type metadata for TSDataSyncDatasetGroupTrigger, v0, v1);
    atomic_store(result, &qword_1002DCAD0);
  }

  return result;
}

unint64_t sub_1000F7230()
{
  result = qword_1002DCAD8;
  if (!qword_1002DCAD8)
  {
    result = swift_getWitnessTable(asc_10023534C, &type metadata for TSDataSyncDatasetGroupReason, v0, v1);
    atomic_store(result, &qword_1002DCAD8);
  }

  return result;
}

uint64_t sub_1000F7284()
{
  sub_100002FBC();
  v1(0);
  sub_10000307C();
  v2 = sub_1000050CC();
  v3(v2);
  return v0;
}

unint64_t sub_1000F72DC()
{
  result = qword_1002DCAF0;
  if (!qword_1002DCAF0)
  {
    result = swift_getWitnessTable(byte_100234900, &type metadata for TSDataSyncDatasetGroupTrigger, v0, v1);
    atomic_store(result, &qword_1002DCAF0);
  }

  return result;
}

unint64_t sub_1000F7330()
{
  result = qword_1002DCAF8;
  if (!qword_1002DCAF8)
  {
    result = swift_getWitnessTable(aU_17, &type metadata for TSDataSyncDatasetGroupReason, v0, v1);
    atomic_store(result, &qword_1002DCAF8);
  }

  return result;
}

uint64_t sub_1000F7394(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100004918(-1);
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return sub_100004918((*a1 | (v4 << 8)) - 12);
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

      return sub_100004918((*a1 | (v4 << 8)) - 12);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100004918((*a1 | (v4 << 8)) - 12);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_100004918(v8);
}

_BYTE *sub_1000F7418(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
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
          result = sub_100006284(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000F75A4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100004918(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return sub_100004918((*a1 | (v4 << 8)) - 6);
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

      return sub_100004918((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100004918((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_100004918(v8);
}

_BYTE *sub_1000F7628(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = sub_10000512C(result, v6);
        break;
      case 2:
        result = sub_100008B94(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_100004FA8(result, v6);
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
          result = sub_100006284(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000F76F8()
{
  result = qword_1002DCB08;
  if (!qword_1002DCB08)
  {
    result = swift_getWitnessTable(asc_100235BF4, &type metadata for TSDataSyncDatasetGroupSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB08);
  }

  return result;
}

unint64_t sub_1000F7750()
{
  result = qword_1002DCB10;
  if (!qword_1002DCB10)
  {
    result = swift_getWitnessTable(byte_10023606C, &type metadata for TSDataSyncDatasetGroupReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB10);
  }

  return result;
}

unint64_t sub_1000F77A8()
{
  result = qword_1002DCB18;
  if (!qword_1002DCB18)
  {
    result = swift_getWitnessTable("ݏ\a", &type metadata for TSDataSyncDatasetSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB18);
  }

  return result;
}

unint64_t sub_1000F7800()
{
  result = qword_1002DCB20;
  if (!qword_1002DCB20)
  {
    result = swift_getWitnessTable(asc_100236094, &type metadata for TSDataSyncDatasetSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB20);
  }

  return result;
}

unint64_t sub_1000F7858()
{
  result = qword_1002DCB28;
  if (!qword_1002DCB28)
  {
    result = swift_getWitnessTable(asc_1002360BC, &type metadata for TSDataSyncDatasetSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB28);
  }

  return result;
}

unint64_t sub_1000F78B0()
{
  result = qword_1002DCB30;
  if (!qword_1002DCB30)
  {
    result = swift_getWitnessTable(aE_14, &type metadata for TSDataSyncDatasetGroupReason.StandardSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB30);
  }

  return result;
}

unint64_t sub_1000F7908()
{
  result = qword_1002DCB38;
  if (!qword_1002DCB38)
  {
    result = swift_getWitnessTable(asc_100235FB4, &type metadata for TSDataSyncDatasetGroupReason.StandardSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB38);
  }

  return result;
}

unint64_t sub_1000F7960()
{
  result = qword_1002DCB40;
  if (!qword_1002DCB40)
  {
    result = swift_getWitnessTable(byte_100235F3C, &type metadata for TSDataSyncDatasetGroupReason.AttemptInflightCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB40);
  }

  return result;
}

unint64_t sub_1000F79B8()
{
  result = qword_1002DCB48;
  if (!qword_1002DCB48)
  {
    result = swift_getWitnessTable(asc_100235F64, &type metadata for TSDataSyncDatasetGroupReason.AttemptInflightCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB48);
  }

  return result;
}

unint64_t sub_1000F7A10()
{
  result = qword_1002DCB50;
  if (!qword_1002DCB50)
  {
    result = swift_getWitnessTable(byte_100235EEC, &type metadata for TSDataSyncDatasetGroupReason.FailureRetryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB50);
  }

  return result;
}

unint64_t sub_1000F7A68()
{
  result = qword_1002DCB58;
  if (!qword_1002DCB58)
  {
    result = swift_getWitnessTable("͒\a", &type metadata for TSDataSyncDatasetGroupReason.FailureRetryCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB58);
  }

  return result;
}

unint64_t sub_1000F7AC0()
{
  result = qword_1002DCB60;
  if (!qword_1002DCB60)
  {
    result = swift_getWitnessTable(a5_8, &type metadata for TSDataSyncDatasetGroupReason.RetryAfterCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB60);
  }

  return result;
}

unint64_t sub_1000F7B18()
{
  result = qword_1002DCB68;
  if (!qword_1002DCB68)
  {
    result = swift_getWitnessTable(byte_100235EC4, &type metadata for TSDataSyncDatasetGroupReason.RetryAfterCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB68);
  }

  return result;
}

unint64_t sub_1000F7B70()
{
  result = qword_1002DCB70;
  if (!qword_1002DCB70)
  {
    result = swift_getWitnessTable(byte_100235E4C, &type metadata for TSDataSyncDatasetGroupReason.PollingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB70);
  }

  return result;
}

unint64_t sub_1000F7BC8()
{
  result = qword_1002DCB78;
  if (!qword_1002DCB78)
  {
    result = swift_getWitnessTable(aM_16, &type metadata for TSDataSyncDatasetGroupReason.PollingCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB78);
  }

  return result;
}

unint64_t sub_1000F7C20()
{
  result = qword_1002DCB80;
  if (!qword_1002DCB80)
  {
    result = swift_getWitnessTable("Փ\a", &type metadata for TSDataSyncDatasetGroupReason.ApiCallCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB80);
  }

  return result;
}

unint64_t sub_1000F7C78()
{
  result = qword_1002DCB88;
  if (!qword_1002DCB88)
  {
    result = swift_getWitnessTable(byte_100235E24, &type metadata for TSDataSyncDatasetGroupReason.ApiCallCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB88);
  }

  return result;
}

unint64_t sub_1000F7CD0()
{
  result = qword_1002DCB90;
  if (!qword_1002DCB90)
  {
    result = swift_getWitnessTable(asc_100235DAC, &type metadata for TSDataSyncDatasetGroupReason.PushNotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB90);
  }

  return result;
}

unint64_t sub_1000F7D28()
{
  result = qword_1002DCB98;
  if (!qword_1002DCB98)
  {
    result = swift_getWitnessTable(asc_100235DD4, &type metadata for TSDataSyncDatasetGroupReason.PushNotificationCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCB98);
  }

  return result;
}

unint64_t sub_1000F7D80()
{
  result = qword_1002DCBA0;
  if (!qword_1002DCBA0)
  {
    result = swift_getWitnessTable(aU_20, &type metadata for TSDataSyncDatasetGroupReason.DataExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBA0);
  }

  return result;
}

unint64_t sub_1000F7DD8()
{
  result = qword_1002DCBA8;
  if (!qword_1002DCBA8)
  {
    result = swift_getWitnessTable(asc_100235D84, &type metadata for TSDataSyncDatasetGroupReason.DataExpiredCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBA8);
  }

  return result;
}

unint64_t sub_1000F7E30()
{
  result = qword_1002DCBB0;
  if (!qword_1002DCBB0)
  {
    result = swift_getWitnessTable("Ŕ\a", &type metadata for TSDataSyncDatasetGroupReason.SchemaChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBB0);
  }

  return result;
}

unint64_t sub_1000F7E88()
{
  result = qword_1002DCBB8;
  if (!qword_1002DCBB8)
  {
    result = swift_getWitnessTable(byte_100235D34, &type metadata for TSDataSyncDatasetGroupReason.SchemaChangeCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBB8);
  }

  return result;
}

unint64_t sub_1000F7EE0()
{
  result = qword_1002DCBC0;
  if (!qword_1002DCBC0)
  {
    result = swift_getWitnessTable(byte_100235CBC, &type metadata for TSDataSyncDatasetGroupReason.ScheduledCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBC0);
  }

  return result;
}

unint64_t sub_1000F7F38()
{
  result = qword_1002DCBC8;
  if (!qword_1002DCBC8)
  {
    result = swift_getWitnessTable(byte_100235CE4, &type metadata for TSDataSyncDatasetGroupReason.ScheduledCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBC8);
  }

  return result;
}

unint64_t sub_1000F7F90()
{
  result = qword_1002DCBD0;
  if (!qword_1002DCBD0)
  {
    result = swift_getWitnessTable(aE_15, &type metadata for TSDataSyncDatasetGroupReason.ManualSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBD0);
  }

  return result;
}

unint64_t sub_1000F7FE8()
{
  result = qword_1002DCBD8;
  if (!qword_1002DCBD8)
  {
    result = swift_getWitnessTable(aM_17, &type metadata for TSDataSyncDatasetGroupReason.ManualSyncCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBD8);
  }

  return result;
}

unint64_t sub_1000F8040()
{
  result = qword_1002DCBE0;
  if (!qword_1002DCBE0)
  {
    result = swift_getWitnessTable(byte_100235C1C, &type metadata for TSDataSyncDatasetGroupReason.ResponseSuggestedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBE0);
  }

  return result;
}

unint64_t sub_1000F8098()
{
  result = qword_1002DCBE8;
  if (!qword_1002DCBE8)
  {
    result = swift_getWitnessTable(byte_100235C44, &type metadata for TSDataSyncDatasetGroupReason.ResponseSuggestedCodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBE8);
  }

  return result;
}

unint64_t sub_1000F80F0()
{
  result = qword_1002DCBF0;
  if (!qword_1002DCBF0)
  {
    result = swift_getWitnessTable(byte_100235FDC, &type metadata for TSDataSyncDatasetGroupReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBF0);
  }

  return result;
}

unint64_t sub_1000F8148()
{
  result = qword_1002DCBF8;
  if (!qword_1002DCBF8)
  {
    result = swift_getWitnessTable("ݑ\a", &type metadata for TSDataSyncDatasetGroupReason.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCBF8);
  }

  return result;
}

unint64_t sub_1000F81A0()
{
  result = qword_1002DCC00;
  if (!qword_1002DCC00)
  {
    result = swift_getWitnessTable(aM_18, &type metadata for TSDataSyncDatasetGroupSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCC00);
  }

  return result;
}

unint64_t sub_1000F81F8()
{
  result = qword_1002DCC08;
  if (!qword_1002DCC08)
  {
    result = swift_getWitnessTable(aU_21, &type metadata for TSDataSyncDatasetGroupSchedule.CodingKeys, v0, v1);
    atomic_store(result, &qword_1002DCC08);
  }

  return result;
}

uint64_t sub_1000F82D4(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000F82F8()
{

  return type metadata accessor for Date();
}

uint64_t sub_1000F8350()
{

  return type metadata accessor for Date();
}

uint64_t sub_1000F836C(uint64_t a1)
{

  return String.hash(into:)();
}

uint64_t sub_1000F83D8()
{

  return sub_10003D1E4();
}

uint64_t sub_1000F83F8()
{

  return sub_10003D1E4();
}

void sub_1000F8418(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v5 = type metadata accessor for TSDataSyncTriggerEvent(0);
  __chkstk_darwin(v5 - 8);
  v18[2] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_100107DFC();
    v12 = v20(v9);
    if (v3)
    {
      sub_100107DA4(v9, type metadata accessor for TSDataSyncTriggerEvent);

      return;
    }

    if (v12)
    {
      sub_100107FA0();
      v13 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100107150(0, v13[2] + 1, 1);
        v13 = v22;
      }

      v16 = v13[2];
      v15 = v13[3];
      v17 = (v16 + 1);
      if (v16 >= v15 >> 1)
      {
        v19 = (v16 + 1);
        v18[1] = v16;
        sub_100107150(v15 > 1, v16 + 1, 1);
        v17 = v19;
        v13 = v22;
      }

      ++v10;
      v13[2] = v17;
      v19 = v13;
      sub_100107FA0();
    }

    else
    {
      sub_100107DA4(v9, type metadata accessor for TSDataSyncTriggerEvent);
      ++v10;
    }
  }

  __break(1u);
}

void sub_1000F86AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100107130(0, v1, 0);
    v5 = sub_1000C87E4(a1);
    v6 = 0;
    v7 = a1 + 64;
    v24 = v1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(a1 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v3)
        {
          goto LABEL_24;
        }

        v25 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(a1 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];

        if (v13 >= v12 >> 1)
        {
          sub_100107130(v12 > 1, v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        v14 = &_swiftEmptyArrayStorage[2 * v13];
        v14[4] = v10;
        v14[5] = v11;
        v15 = 1 << *(a1 + 32);
        if (v5 >= v15)
        {
          goto LABEL_25;
        }

        v7 = a1 + 64;
        v16 = *(a1 + 64 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v27)
        {
          goto LABEL_27;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
          v18 = v24;
        }

        else
        {
          v19 = v8 << 6;
          v20 = v8 + 1;
          v18 = v24;
          v21 = (a1 + 72 + 8 * v8);
          while (v20 < (v15 + 63) >> 6)
          {
            v23 = *v21++;
            v22 = v23;
            v19 += 64;
            ++v20;
            if (v23)
            {
              sub_1000C87D4(v5, v27, v25 & 1);
              v15 = __clz(__rbit64(v22)) + v19;
              goto LABEL_18;
            }
          }

          sub_1000C87D4(v5, v27, v25 & 1);
        }

LABEL_18:
        v6 = v26 + 1;
        if (v26 + 1 == v18)
        {
          return;
        }

        v4 = 0;
        v3 = *(a1 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
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
}

void sub_1000F88E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  v237 = v20;
  v22 = v21;
  v24 = v23;
  v26 = sub_10010834C(v25);
  v27 = type metadata accessor for TSDataSyncDatasetGroupState(v26);
  sub_10000307C();
  __chkstk_darwin(v28);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v29);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v30);
  sub_10000D478();
  v32 = sub_100008280(v31);
  v210 = type metadata accessor for TSDataSyncTriggerEvent(v32);
  sub_100003724();
  __chkstk_darwin(v33);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_10000D478();
  v36 = sub_100008280(v35);
  v37 = type metadata accessor for TSDataSyncDatasetState(v36);
  sub_100003724();
  v226 = v38;
  __chkstk_darwin(v39);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v40);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v41);
  sub_100002DD0();
  v238 = v42;
  sub_100005238();
  __chkstk_darwin(v43);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v44);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v45);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v46);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v47);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v48);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v49);
  sub_10000D478();
  v51 = sub_100008280(v50);
  v52 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(v51);
  v53 = sub_1000030B8(v52);
  __chkstk_darwin(v53);
  sub_10000306C();
  v227 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);

  sub_1000F86AC(v54);
  v56 = v55;

  v246 = v56;

  sub_1001072CC(&v246);

  v57 = v246;
  sub_1000031A4();
  v228 = v24;
  sub_10000AE2C();
  sub_100107DFC();
  v58 = *(v22 + v27[5]);
  v59 = *(v57 + 16);
  v204 = v57;
  sub_100108510();
  if (!v59)
  {
    swift_bridgeObjectRetain_n();
    v243 = v58;
LABEL_38:
    sub_100107FA0();
    sub_10003D1E4();
    sub_10003D1E4();
    v242 = *(v22 + v27[8]);
    v244 = *(v22 + v27[9]);
    v168 = v244;
    v169 = (v22 + v27[10]);
    v170 = *v169;
    v171 = v169[1];
    v172 = v27;
    v173 = v169[2];
    v174 = v169[3];
    *(v205 + v172[5]) = v58;
    *(v205 + v172[8]) = v242;
    *(v205 + v172[9]) = v168;
    v175 = (v205 + v172[10]);
    *v175 = v170;
    v175[1] = v171;
    v176 = v170;
    v175[2] = v173;
    v175[3] = v174;
    v177 = v173;
    sub_1000031A4();
    v245 = v178;
    sub_100107DFC();
    sub_10003D1E4();
    sub_10003D1E4();
    sub_100108210();
    sub_1001071F4(v179, v180);
    sub_100108210();
    sub_1001071F4(v181, v182);

    sub_100108210();
    sub_1001071F4(v183, v184);

    sub_10000764C();
    v239 = v185;
    sub_100107DA4(v205, v186);
    v187 = v243;
    *(v206 + v172[5]) = v243;
    *(v206 + v172[8]) = v242;
    sub_100108540();
    v188 = v176;
    *(v189 + 16) = v177;
    *(v189 + 24) = v174;
    v190 = v172[7];
    v191 = type metadata accessor for Date();
    sub_10000307C();
    (*(v192 + 16))(v207 + v190, v237, v191);
    sub_10000B7B0();
    sub_100002728(v193, v194, v195, v191);
    sub_100107DFC();
    sub_10003D1E4();

    v196 = v188;
    sub_100108210();
    sub_1001071F4(v197, v198);

    v199 = v244;

    sub_100107DA4(v206, v239);
    *(v207 + v172[5]) = v187;
    *(v207 + v172[8]) = v242;
    *(v207 + v172[9]) = v199;
    v200 = (v207 + v172[10]);
    *v200 = v196;
    v200[1] = v171;
    v200[2] = v177;
    v200[3] = v174;
    sub_100107DFC();
    sub_10003D1E4();
    sub_10003D1E4();

    v201 = sub_1000050CC();
    sub_100107DA4(v201, v202);
    *(v208 + v172[5]) = v187;
    *(v208 + v172[8]) = v204;
    sub_100108540();
    *(v203 + 16) = v177;
    *(v203 + 24) = v174;
    sub_1000027F8();
    return;
  }

  swift_bridgeObjectRetain_n();
  v60 = (v57 + 40);
  v243 = v58;
  v224 = v58;
  v225 = v27;
  v223 = v22;
  while (1)
  {
    v240 = v60;
    v241 = v59;
    v61 = *(v60 - 1);
    v62 = *v60;
    v63 = *(v58 + 16);

    v244 = v62;
    v245 = v61;
    if (v63)
    {
      sub_10014EB30(v61, v62);
      if (v64)
      {
        sub_100006D1C();
        sub_100108708();
        sub_100107DFC();
        sub_100007FA8();
        sub_100108204();
        sub_100107FA0();
        v65 = v213 + v37[8];
        v66 = type metadata accessor for Date();
        sub_10000307C();
        v68 = *(v67 + 16);
        (v68)(v65, v237, v66);
        sub_10000B7B0();
        sub_100002728(v69, v70, v71, v66);
        v72 = v22[1];
        v236 = *v22;
        v235 = v22[2];
        sub_1001081E0(v22[3]);
        v234 = v22[4];
        sub_10010869C(v22[5]);
        v232 = v22[6];
        v229 = v22[7];
        v68();
        sub_10003D1E4();
        v231 = *(v22 + v37[11]);
        sub_100007664();
        sub_10003D1E4();
        v73 = (v22 + v37[13]);
        v220 = *v73;
        v211 = v73[1];
        v74 = *(v22 + v37[14] + 8);
        v75 = (v22 + v37[15]);
        v76 = *(v22 + v37[16]);
        v77 = *v75;
        v218 = v75[1];
        v78 = *(v22 + v37[17]);
        v230 = *(v22 + v37[18]);
        v79 = *(v22 + v37[19]);
        sub_10003D1E4();
        *v213 = v236;
        v213[1] = v72;
        v213[2] = v235;
        v213[3] = v221;
        v213[4] = v234;
        v213[5] = v217;
        v213[6] = v232;
        v213[7] = v229;
        *(v213 + v37[11]) = v231;
        v80 = (v213 + v37[13]);
        *v80 = v220;
        v80[1] = v211;
        sub_1001080C4((v213 + v37[14]));
        *(v81 + 8) = v74;
        v82 = (v213 + v37[15]);
        v219 = v77;
        *v82 = v77;
        v82[1] = v218;
        *(v213 + v37[16]) = v76;
        *(v213 + v37[17]) = v78;
        *(v213 + v37[18]) = v230;
        *(v213 + v37[19]) = v79;
        v83 = *(v228 + *(v227 + 36));
        v84 = *(v83 + 16);

        sub_100108690(&v243);

        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_100108334();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        sub_10010881C();
        swift_bridgeObjectRetain_n();
        sub_100108510();
        swift_bridgeObjectRetain_n();
        if (v84)
        {
          sub_10014EB30(v245, v62);
          if (v85)
          {
            sub_100108558();
            sub_10000C020();
            sub_100108708();
            sub_100107DFC();
            v86 = (v83 + *(v210 + 32));
            v84 = *v86;
            v87 = v86[1];

            sub_100008324();
            sub_100107DA4(v83, v88);
LABEL_24:
            sub_1001082C4();
            sub_10003D1E4();
            sub_1001082B8(v37[9]);
            sub_100010F9C();
            v138();
            sub_100007664();
            sub_10003D1E4();
            sub_100007664();
            sub_10003D1E4();
            sub_10003D1E4();

            sub_100004ADC();
            v212 = v139;
            sub_100107DA4(v213, v140);
            *v62 = v236;
            v62[1] = v72;
            v62[2] = v235;
            v62[3] = v221;
            v62[4] = v234;
            v62[5] = v217;
            v62[6] = v232;
            v62[7] = v229;
            *(v62 + v37[11]) = v231;
            v141 = (v62 + v37[13]);
            *v141 = v84;
            v141[1] = v87;
            sub_1001080C4((v62 + v37[14]));
            sub_100010E0C(v142);
            v143 = (v62 + v37[15]);
            *v143 = v219;
            v143[1] = v218;
            sub_100108278(v37[16]);
            sub_100108278(v37[17]);
            *(v62 + v37[18]) = v230;
            *(v62 + v37[19]) = v216;

            sub_1000F9CE4();
            type metadata accessor for TSDataSyncDatasetMetricsFields(0);
            sub_10000B7B0();
            sub_100002728(v144, v145, v146, v147);
            sub_100004920();
            sub_10003D1E4();
            sub_1001086E4();
            sub_100010F9C();
            v148();
            sub_100004920();
            sub_10010861C();
            sub_10003D1E4();
            sub_100004920();
            sub_10010861C();
            sub_10003D1E4();
            sub_1001080B8(&v243);

            sub_100107DA4(v62, v212);
            *v209 = v236;
            v209[1] = v72;
            v209[2] = v235;
            v209[3] = v221;
            v209[4] = v234;
            v209[5] = v217;
            v209[6] = v232;
            v209[7] = v229;
            *(v209 + v37[11]) = v231;
            sub_100002A38((v209 + v37[13]));
            sub_1001080C4((v209 + v37[14]));
            sub_100010E0C(v149);
            sub_1000ED3A4();
            *v150 = v151;
            v150[1] = v218;
            *(v209 + v37[16]) = v76;
            *(v209 + v37[17]) = v78;
            *(v209 + v37[18]) = v230;
            *(v209 + v37[19]) = &qword_1002318B0;
            sub_100007FA8();
            sub_100108204();
            sub_100107FA0();
            v152 = v243;
            swift_isUniquelyReferenced_nonNull_native();
            v246 = v152;
            v153 = sub_10000AE2C();
            sub_10014EB30(v153, v154);
            sub_10000B818();
            if (__OFADD__(v157, v158))
            {
              goto LABEL_41;
            }

            v159 = v155;
            v160 = v156;
            sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
            if (sub_100108840())
            {
              v161 = sub_10000AE2C();
              sub_10014EB30(v161, v162);
              sub_10000A224();
              v58 = v224;
              v27 = v225;
              if (!v133)
              {
                goto LABEL_43;
              }

              v159 = v163;
            }

            else
            {
              v58 = v224;
              v27 = v225;
            }

            v134 = v246;
            if (v160)
            {
              sub_1001087F0();
              sub_100107190(&qword_1002318B0, v164);
            }

            else
            {
              sub_1000035B8(v246 + 8 * (v159 >> 6));
              sub_10010867C();
              sub_1001087F0();
              sub_100007FA8();
              sub_100107FA0();
              v165 = *(v134 + 16);
              v136 = __OFADD__(v165, 1);
              v166 = v165 + 1;
              if (v136)
              {
                goto LABEL_42;
              }

              *(v134 + 16) = v166;
            }

            sub_100004ADC();
            sub_100107DA4(v222, v167);
            goto LABEL_35;
          }

          v84 = 0;
        }

        v87 = 0;
        goto LABEL_24;
      }
    }

    v89 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v90, v91, v92, v89);
    v93 = v37[9];
    static Date.distantPast.getter();
    v94 = sub_10000D500(v37[10]);
    sub_100002728(v94, v95, v96, v89);
    v97 = sub_10000D500(v37[12]);
    sub_100002728(v97, v98, v99, v89);
    v100 = Dictionary.init(dictionaryLiteral:)();
    type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    sub_100007B78();
    sub_100002728(v101, v102, v103, v104);
    sub_100108074();
    *(v215 + v37[11]) = 0;
    v105 = (v215 + v37[13]);
    *v105 = 0;
    v105[1] = 0;
    sub_100108004(v215 + v37[14]);
    v106 = (v215 + v37[15]);
    *v106 = 0;
    v106[1] = 0;
    *(v215 + v37[16]) = 0;
    *(v215 + v37[17]) = 0;
    *(v215 + v37[18]) = v100;
    *(v215 + v37[19]) = _swiftEmptyArrayStorage;
    v107 = *(*(v89 - 8) + 16);
    v107(&v238[v37[8]], v237, v89);
    sub_10000B7B0();
    sub_100002728(v108, v109, v110, v89);
    v233 = v37[9];
    v107(&v238[v233], v215 + v93, v89);
    sub_10003D1E4();
    sub_100108228();
    sub_10003D1E4();
    sub_10003D1E4();

    sub_100004ADC();
    sub_100107DA4(v215, v111);
    *v238 = 0;
    *(v238 + 1) = 0xE000000000000000;
    *(v238 + 2) = 0;
    *(v238 + 3) = 0;
    *(v238 + 4) = 0;
    *(v238 + 5) = 0xE000000000000000;
    *(v238 + 6) = 0;
    *(v238 + 7) = 0;
    *&v238[v37[11]] = 0;
    sub_10010873C(v37[13]);
    sub_100108004(&v238[v37[14]]);
    sub_10010873C(v37[15]);
    v238[v37[16]] = 0;
    v238[v37[17]] = 0;
    *&v238[v37[18]] = v100;
    *&v238[v37[19]] = _swiftEmptyArrayStorage;
    v112 = *(*(v228 + *(v227 + 36)) + 16);

    if (v112 && (sub_10014EB30(v245, v244), (v113 & 1) != 0))
    {
      sub_100108558();
      sub_10000C020();
      sub_100108204();
      sub_100107DFC();
      v114 = (v112 + *(v210 + 32));
      v116 = *v114;
      v115 = v114[1];

      sub_100008324();
      sub_100107DA4(v112, v117);
    }

    else
    {
      v116 = 0;
      v115 = 0;
    }

    sub_10003D1E4();
    v107(&v214[v37[9]], &v238[v233], v89);
    sub_100108210();
    sub_10003D1E4();
    sub_100108210();
    sub_10003D1E4();
    sub_10003D1E4();
    sub_100004ADC();
    sub_100107DA4(v238, v118);
    *v214 = 0;
    *(v214 + 1) = 0xE000000000000000;
    *(v214 + 2) = 0;
    *(v214 + 3) = 0;
    *(v214 + 4) = 0;
    *(v214 + 5) = 0xE000000000000000;
    *(v214 + 6) = 0;
    *(v214 + 7) = 0;
    *&v214[v37[11]] = 0;
    v119 = &v214[v37[13]];
    *v119 = v116;
    *(v119 + 1) = v115;
    sub_100108004(&v214[v37[14]]);
    v120 = &v214[v37[15]];
    *v120 = 0;
    *(v120 + 1) = 0;
    v214[v37[16]] = 0;
    v214[v37[17]] = 0;
    *&v214[v37[18]] = v100;
    *&v214[v37[19]] = _swiftEmptyArrayStorage;
    sub_100007FA8();
    sub_100108204();
    sub_100107FA0();
    v121 = v243;
    swift_isUniquelyReferenced_nonNull_native();
    v246 = v121;
    v122 = sub_10000AE2C();
    sub_10014EB30(v122, v123);
    sub_10000B818();
    if (__OFADD__(v126, v127))
    {
      break;
    }

    v128 = v124;
    v129 = v125;
    sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
    if (sub_100108840())
    {
      v130 = sub_10000AE2C();
      sub_10014EB30(v130, v131);
      sub_10000A224();
      v27 = v225;
      v58 = v224;
      if (!v133)
      {
        goto LABEL_43;
      }

      v128 = v132;
    }

    else
    {
      v27 = v225;
      v58 = v224;
    }

    v134 = v246;
    if (v129)
    {
      sub_100107190(v214, *(v246 + 56) + *(v226 + 72) * v128);
    }

    else
    {
      sub_1000035B8(v246 + 8 * (v128 >> 6));
      sub_10010867C();
      sub_100007FA8();
      sub_100107FA0();
      v135 = *(v134 + 16);
      v136 = __OFADD__(v135, 1);
      v137 = v135 + 1;
      if (v136)
      {
        goto LABEL_40;
      }

      *(v134 + 16) = v137;
    }

LABEL_35:
    v22 = v223;
    v243 = v134;
    v60 = v240 + 2;
    v59 = v241 - 1;
    if (v241 == 1)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
}

void sub_1000F9CE4()
{
  sub_100004168();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_10000307C();
  __chkstk_darwin(v8);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v12);
  sub_100003774();
  __chkstk_darwin(v13);
  v14 = sub_100108808();
  v15 = type metadata accessor for TSDataSyncDatasetState(v14);
  sub_10003D1E4();
  sub_1000071D8(v0);
  if (v16)
  {
    v17 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v18, v19, v20, v17);
    sub_100007B78();
    sub_100002728(v21, v22, v23, v17);
    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 40) = 1;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    sub_100108180();
    *(v6 + v24) = v25;
    *(v6 + v7[12]) = v25;
    sub_1001082E8(v7[14]);
    *(v26 + 8) = 1;
    sub_1001082E8(v7[15]);
    *(v27 + 8) = 1;
    sub_1001082E8(v7[16]);
    *(v28 + 8) = 1;
    sub_1000071D8(v0);
    if (!v16)
    {
      sub_100004E24(v0, &qword_1002DCC10, &unk_100238220);
    }
  }

  else
  {
    sub_100007C00();
    sub_100107FA0();
  }

  v29 = *(v4 + *(v15 + 44));
  if (!v29)
  {
    type metadata accessor for Date();
    sub_100007B78();
    goto LABEL_9;
  }

  if (v29 == 1)
  {
    v30 = v7[10];
    v31 = type metadata accessor for Date();
    sub_10000307C();
    (*(v32 + 16))(v11 + v30, v2, v31);
    sub_10000B7B0();
    v36 = v31;
LABEL_9:
    sub_100002728(v33, v34, v35, v36);
    v37 = *(v6 + 8);
    v38 = *(v6 + 24);
    v57 = *(v6 + 16);
    v58 = *v6;
    v56 = *(v6 + 32);
    v55 = *(v6 + 40);
    v39 = *(v6 + 56);
    v40 = *(v6 + 72);
    v53 = *(v6 + 64);
    v54 = *(v6 + 48);
    v41 = *(v6 + 88);
    v52 = *(v6 + 80);
    v50 = *(v6 + v7[11]);
    v51 = *(v6 + v7[12]);
    sub_10003D1E4();
    v42 = v6 + v7[14];
    v43 = *v42;
    v44 = *(v42 + 8);
    v49 = *(v6 + v7[15]);
    sub_100108648(v6 + v7[16]);

    sub_100006670();
    sub_100107DA4(v6, v45);
    *v11 = v58;
    *(v11 + 8) = v37;
    *(v11 + 16) = v57;
    *(v11 + 24) = v38;
    *(v11 + 32) = v56;
    *(v11 + 40) = v55;
    *(v11 + 48) = v54;
    *(v11 + 56) = v39;
    *(v11 + 64) = v53;
    *(v11 + 72) = v40;
    *(v11 + 80) = v52;
    *(v11 + 88) = v41;
    *(v11 + v7[11]) = v50;
    *(v11 + v7[12]) = v51;
    v46 = v11 + v7[14];
    *v46 = v43;
    *(v46 + 8) = v44;
    v47 = (v11 + v7[15]);
    *v47 = v49;
    sub_100013E00(v47);
    sub_1000109E8(v11 + v48);
    sub_100007C00();
    sub_100107FA0();
  }

  sub_1000027F8();
}

void sub_1000FA050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v22;
  a20 = v23;
  v315 = v24;
  v26 = v25;
  v331 = v27;
  v29 = sub_10010834C(v28);
  v30 = type metadata accessor for TSDataSyncDatasetGroupState(v29);
  sub_10000307C();
  __chkstk_darwin(v31);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v32);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v33);
  sub_10000D478();
  sub_10000A1C0(v34);
  v35 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v35);
  sub_100003774();
  __chkstk_darwin(v36);
  sub_100003018();
  sub_10000A1C0(v37);
  v38 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v38);
  sub_100003774();
  __chkstk_darwin(v39);
  sub_100003018();
  v41 = sub_100008280(v40);
  v310 = type metadata accessor for TSDataSyncDatasetMetricsFields(v41);
  sub_10000307C();
  __chkstk_darwin(v42);
  sub_10000306C();
  v45 = sub_100008280(v44 - v43);
  v46 = type metadata accessor for TSDataSyncDatasetState(v45);
  sub_100003724();
  v316 = v47;
  __chkstk_darwin(v48);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v49);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v50);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v51);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v52);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v53);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v54);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v55);
  sub_10000D478();
  sub_10000A1C0(v56);
  v57 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  v58 = sub_1000030B8(v57);
  __chkstk_darwin(v58);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v59);
  sub_10000D478();
  sub_10000A1C0(v60);
  v61 = sub_100099DF4(&qword_1002DB2E8, &qword_100231B98);
  sub_1000030B8(v61);
  sub_100003774();
  __chkstk_darwin(v62);
  sub_100108404();
  v63 = type metadata accessor for HTTPHelpers.Errors();
  sub_100003724();
  v65 = v64;
  __chkstk_darwin(v66);
  sub_10000308C();
  v69 = v67 - v68;
  __chkstk_darwin(v70);
  sub_1001083F4();
  v71 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v71);
  sub_100003774();
  __chkstk_darwin(v72);
  sub_100003018();
  v329 = v30;
  v73 = *(v30 + 24);
  v328 = v26;
  v304 = v73;
  v75 = v74;
  sub_10003D1E4();
  v359[0] = v331;
  swift_errorRetain();
  sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
  v305 = v75;
  if (swift_dynamicCast())
  {
    sub_100004E24(v75, &qword_1002DA970, &qword_1002318B0);
    sub_10000B7B0();
    sub_100002728(v76, v77, v78, v63);
    v79 = *(v65 + 32);
    v79(v21, v20, v63);
    v79(v69, v21, v63);
    v80 = sub_1000F8344();
    if (v81(v80) != enum case for HTTPHelpers.Errors.httpStatus429(_:))
    {
      v92 = v328;
      sub_100108328(&v333);
      sub_10003D1E4();
      v93 = sub_1000F8344();
      v94(v93);
      goto LABEL_7;
    }

    v82 = sub_1000F8344();
    v83(v82);
    v84 = type metadata accessor for Date();
    sub_10000307C();
    (*(v85 + 32))(v75, v69, v84);
    sub_10000B7B0();
    sub_100002728(v86, v87, v88, v84);
  }

  else
  {
    sub_100007B78();
    sub_100002728(v89, v90, v91, v63);
    sub_100004E24(v20, &qword_1002DB2E8, &qword_100231B98);
  }

  v92 = v328;
LABEL_7:
  sub_100003F34();
  v95 = *(v92 + v329[5]);
  v327 = v95 + 64;
  sub_100007FC0();
  v98 = v97 & v96;
  v306 = (v99 + 63) >> 6;
  sub_100108528();
  swift_bridgeObjectRetain_n();
  v100 = 0;
  v337 = 0;
  v317 = v95;
  v338 = v95;
  v101 = v334;
  while (v98)
  {
LABEL_13:
    v98 &= v98 - 1;
    sub_1001087D8();
    v20 = *v103;
    v104 = v103[1];
    sub_100108558();
    sub_100006D1C();
    sub_100107DFC();
    v105 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
    sub_1001080AC();
    *v106 = v20;
    v106[1] = v104;
    sub_100007FA8();
    sub_100107FA0();
    sub_10000B7B0();
    sub_100002728(v107, v108, v109, v105);

    v101 = v334;
    sub_100003F34();
LABEL_14:
    sub_100012D44();
    v110 = sub_100108828();
    v112 = sub_100099DF4(v110, v111);
    sub_10000B3A0(v20, 1, v112);
    if (v113)
    {

      v270 = v328;
      v271 = v301[0];
      v358 = type metadata accessor for TSDataSyncDatasetGroupIdentifier;
      sub_100107DFC();
      v272 = v329;
      sub_10003D1E4();
      sub_10003D1E4();
      v273 = v272[9];
      v357 = *(v270 + v272[8]);
      v274 = v357;
      v275 = *(v270 + v273);
      v351 = v275;
      v276 = (v270 + v272[10]);
      v277 = *v276;
      v278 = v276[1];
      v279 = v276[2];
      v280 = v276[3];
      *(v271 + v272[5]) = v338;
      *(v271 + v272[8]) = v274;
      *(v271 + v272[9]) = v275;
      v281 = (v271 + v272[10]);
      *v281 = v277;
      v281[1] = v278;
      v281[2] = v279;
      v281[3] = v280;
      sub_10000288C();
      sub_100107DFC();
      v356 = v272[6];
      sub_100108414();
      sub_10003D1E4();
      sub_10003D1E4();
      sub_10010824C();
      sub_10010824C();
      v282 = v357;

      v283 = v351;

      sub_100108604();
      sub_10010824C();

      sub_10000764C();
      v354 = v284;
      sub_100107DA4(v271, v285);
      *(v270 + v272[5]) = &qword_1002DA970;
      *(v270 + v272[8]) = v282;
      sub_100108760();
      v350 = v277;
      *v286 = v277;
      v286[1] = v278;
      v286[2] = v279;
      v286[3] = v280;
      v355 = v272[7];
      type metadata accessor for Date();
      v287 = v302;
      sub_100007B78();
      sub_100002728(v288, v289, v290, v291);
      sub_1000050CC();
      sub_100107DFC();
      v353 = v272[6];
      sub_10003D1E4();
      v352 = v278;
      sub_1001071F4(v277, v278);
      sub_100108690(&a16);

      v292 = v357;

      v293 = v354;
      sub_100107DA4(v270, v354);
      *(v287 + v272[5]) = &qword_1002DA970;
      *(v287 + v272[8]) = v292;
      *(v287 + v272[9]) = v283;
      v294 = (v287 + v272[10]);
      v295 = v350;
      *v294 = v350;
      v294[1] = v278;
      v294[2] = v279;
      v294[3] = v280;
      v296 = sub_100108414();
      sub_100004E24(v296, &qword_1002DA970, &qword_1002318B0);
      sub_10000288C();
      sub_100107DFC();
      sub_10003D1E4();
      sub_10003D1E4();

      sub_100107DA4(v287, v293);
      sub_10010821C();
      *(v270 + v297) = v298;
      *(v270 + v272[8]) = _swiftEmptyArrayStorage;
      sub_100108760();
      v299 = v352;
      *v300 = v295;
      v300[1] = v299;
      v300[2] = v279;
      v300[3] = v280;
      sub_1000027F8();
      return;
    }

    v115 = *v20;
    v114 = *(v20 + 1);
    sub_100007FA8();
    v116 = sub_100107FA0();
    v359[0] = v115;
    v359[1] = v114;
    __chkstk_darwin(v116);
    sub_1001083E4();
    *(v117 - 16) = v359;
    v20 = v337;
    v118 = sub_10015D6FC();
    v337 = v20;
    if (v118)
    {
      v320 = v115;
      v321 = v114;
      sub_100006D1C();
      sub_10000288C();
      sub_100107DFC();
      sub_10000B7B0();
      sub_100002728(v119, v120, v121, v46);
      sub_1000FC888(v331, v301, v122, v123, v124, v125, v126, v127, v301[0], v301[1], v302, v303, v304, v305, v306, v307, v308, v309, v310, v311);
      sub_100004E24(v301, &qword_1002DBC28, &qword_100232F70);
      v330 = v46[8];
      v128 = type metadata accessor for Date();
      v129 = v314;
      sub_100007B78();
      sub_100002728(v130, v131, v132, v128);
      v133 = *v101;
      v134 = v101[1];
      v135 = v101[3];
      v355 = v101[2];
      v356 = v133;
      v349 = v134;
      v350 = v135;
      v136 = v101[4];
      v344 = v101[5];
      v137 = v101[7];
      v353 = v101[6];
      v354 = v136;
      sub_1001084E0(v137);
      v138 = v46[9];
      v345 = v128;
      v139 = *(v128 - 8);
      v140 = *(v139 + 16);
      v341 = v139 + 16;
      v342 = v140;
      (v140)(v129 + v138, v101 + v138, v128);
      sub_1001084EC(v46[10]);
      sub_10003D1E4();
      v141 = v46[11];
      v323 = v46[12];
      v336 = *(v101 + v141);
      sub_10003D1E4();
      v142 = v46[14];
      v143 = (v101 + v46[13]);
      v144 = *v143;
      v351 = v143[1];
      v352 = v144;
      v347 = *(v101 + v142);
      v346 = *(v101 + v142 + 8);
      v145 = v46[16];
      v146 = (v101 + v46[15]);
      v148 = *v146;
      v147 = v146[1];
      v335 = v148;
      v348 = v147;
      v149 = *(v101 + v145);
      v339 = v149;
      v150 = v46[18];
      v151 = *(v101 + v46[17]);
      v343 = v151;
      v358 = *(v101 + v150);
      v152 = v46[19];
      v322 = v46[20];
      v357 = *(v101 + v152);
      v153 = v357;
      sub_10003D1E4();
      v154 = v349;
      *v129 = v356;
      v129[1] = v154;
      v155 = v350;
      v129[2] = v355;
      v129[3] = v155;
      v156 = v344;
      v129[4] = v354;
      v129[5] = v156;
      v157 = v340;
      v129[6] = v353;
      v129[7] = v157;
      sub_100014014();
      *(v129 + v158) = v159;
      sub_100108394((v129 + v46[13]));
      v161 = v348;
      sub_100005CDC(v129 + v160);
      v163 = (v129 + v162);
      *v163 = v148;
      v163[1] = v161;
      *(v129 + v46[16]) = v149;
      *(v129 + v46[17]) = v151;
      *(v129 + v46[18]) = v358;
      *(v129 + v46[19]) = v153;
      v326 = v46[8];
      sub_1001081A4();
      v164 = v313;
      sub_1001081D4();
      sub_10003D1E4();
      v330 = v46[9];
      sub_1001086A8();
      v165();
      sub_1001081A4();
      sub_1001081D4();
      sub_10003D1E4();
      sub_10010848C(v46[12]);
      sub_1001081A4();
      sub_1001081D4();
      sub_10003D1E4();
      sub_1001084EC(v46[20]);
      sub_1001081A4();
      sub_10003D1E4();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v166 = v349;
      swift_bridgeObjectRetain_n();
      v167 = v350;
      swift_bridgeObjectRetain_n();
      v168 = v344;
      swift_bridgeObjectRetain_n();
      sub_100108284(&a18);
      swift_bridgeObjectRetain_n();
      v169 = v351;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_100004ADC();
      v323 = v170;
      sub_100107DA4(v129, v171);
      v172 = v355;
      *v164 = v356;
      v164[1] = v166;
      v164[2] = v172;
      v164[3] = v167;
      v173 = v353;
      v164[4] = v354;
      v164[5] = v168;
      v174 = v168;
      v164[6] = v173;
      v164[7] = v161;
      sub_100014014();
      *(v164 + v175) = v176;
      v177 = (v164 + v46[13]);
      *v177 = v352;
      v177[1] = v169;
      sub_100005CDC(v164 + v46[14]);
      sub_1001080D0((v164 + v178));
      *(v164 + v179) = v339;
      sub_1001086D8();
      *(v164 + v180) = v181;
      v182 = v357;
      *(v164 + v46[18]) = v358;
      *(v164 + v46[19]) = v182;
      v183 = v312;
      v322 = v312 + v46[10];
      sub_100007B78();
      sub_100002728(v184, v185, v186, v345);
      sub_1000035C8(&v356);
      v319 = v187;
      sub_10003D1E4();
      v318 = v183 + v46[9];
      v342();
      sub_1000035C8(&v354);
      v330 = v188;
      sub_10003D1E4();
      sub_1000035C8(&v355);
      v326 = v189;
      sub_10003D1E4();
      v190 = v349;

      v191 = v350;

      v192 = v174;

      v193 = v161;

      v194 = v351;

      v195 = v164;
      v196 = v183;
      sub_100107DA4(v195, v323);
      v197 = v355;
      *v183 = v356;
      v183[1] = v190;
      v183[2] = v197;
      v183[3] = v191;
      v198 = v353;
      v183[4] = v354;
      v183[5] = v192;
      v183[6] = v198;
      v183[7] = v193;
      sub_100014014();
      *(v183 + v200) = v199;
      v201 = (v183 + v46[13]);
      *v201 = v352;
      v201[1] = v194;
      v202 = v183 + v46[14];
      *v202 = v347;
      v202[8] = v346;
      v203 = (v183 + v46[15]);
      v204 = v348;
      *v203 = v335;
      v203[1] = v204;
      *(v183 + v46[16]) = v339;
      *(v183 + v46[17]) = v343;
      v205 = v357;
      *(v183 + v46[18]) = v358;
      *(v183 + v46[19]) = v205;
      if (v199 == -1)
      {
        goto LABEL_22;
      }

      v324 = v46[8];
      v206 = v309;
      sub_1001082D0(v199 + 1);
      sub_10003D1E4();
      sub_1001084EC(v46[9]);
      sub_1001086A8();
      v207();
      v323 = v46[10];
      sub_10003D1E4();
      sub_1001082B8(v46[12]);
      sub_10010878C();
      sub_10003D1E4();
      v319 = v46[20];
      sub_10003D1E4();

      v208 = v350;

      v209 = v344;

      sub_1001080B8(&a18);

      v210 = v351;

      v211 = v357;

      sub_100004ADC();
      v330 = v212;
      sub_100107DA4(v196, v213);
      v214 = v355;
      v215 = v349;
      *v206 = v356;
      v206[1] = v215;
      v206[2] = v214;
      v206[3] = v208;
      v216 = v353;
      v206[4] = v354;
      v206[5] = v209;
      v206[6] = v216;
      v206[7] = v190;
      sub_100014014();
      *(v206 + v217) = v218;
      v219 = (v206 + v46[13]);
      *v219 = v352;
      v219[1] = v210;
      sub_100005CDC(v206 + v46[14]);
      sub_1001080D0((v206 + v220));
      *(v206 + v221) = v339;
      sub_1001086D8();
      *(v206 + v222) = v223;
      *(v206 + v46[18]) = v358;
      *(v206 + v46[19]) = v211;

      sub_10010826C();
      v224 = _convertErrorToNSError(_:)();
      v225 = [v224 domain];

      v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v326 = v226;
      v348 = v227;

      v318 = v46[8];
      v228 = v308;
      sub_10003D1E4();
      sub_1001081E0(v46[9]);
      sub_1001086A8();
      v229();
      v325 = v46[10];
      sub_100007664();
      sub_10003D1E4();
      sub_1001086E4();
      sub_100007664();
      sub_10003D1E4();
      sub_10003D1E4();
      v230 = v357;

      sub_100107DA4(v206, v330);
      v231 = v349;
      *v228 = v356;
      v228[1] = v231;
      v232 = v350;
      v228[2] = v355;
      v228[3] = v232;
      v233 = v344;
      v228[4] = v354;
      v228[5] = v233;
      v228[6] = v353;
      v228[7] = v190;
      sub_100014014();
      *(v228 + v234) = v235;
      sub_100108394((v228 + v46[13]));
      sub_100005CDC(v228 + v236);
      v238 = (v228 + v237);
      *v238 = v226;
      v238[1] = v239;
      LOBYTE(v206) = v339;
      *(v228 + v46[16]) = v339;
      sub_1001086D8();
      *(v228 + v240) = v241;
      *(v228 + v46[18]) = v358;
      *(v228 + v46[19]) = v230;

      sub_10010826C();
      v242 = _convertErrorToNSError(_:)();
      v347 = [v242 code];

      sub_1001087FC();
      v243 = v307;
      sub_10003D1E4();
      sub_100108174();
      sub_1001086A8();
      v244();
      sub_1001087FC();
      sub_1001085EC();
      sub_1001085EC();
      sub_10003D1E4();
      v245 = v357;

      v246 = v330;
      sub_100107DA4(v228, v330);
      v247 = v349;
      *v243 = v356;
      v243[1] = v247;
      v248 = v350;
      v243[2] = v355;
      v243[3] = v248;
      v249 = v344;
      v243[4] = v354;
      v243[5] = v249;
      v250 = v340;
      v243[6] = v353;
      v243[7] = v250;
      sub_100014014();
      *(v243 + v251) = v252;
      sub_100108394((v243 + v46[13]));
      sub_1001080C4((v243 + v253));
      *(v254 + 8) = 0;
      sub_1001080D0((v243 + v46[15]));
      *(v243 + v255) = v206;
      sub_1001086D8();
      *(v243 + v256) = v257;
      *(v243 + v46[18]) = v358;
      *(v243 + v46[19]) = v245;
      sub_1001080B8(&v357);
      sub_10000288C();
      sub_100107DFC();
      sub_10000B7B0();
      sub_100002728(v258, v259, v260, v310);
      v20 = v332;
      sub_100109384(v332);
      sub_100004E24(v245, &qword_1002DCC10, &unk_100238220);
      sub_100107DA4(v243, v246);
      sub_100007FA8();
      sub_100107FA0();
      sub_100005CC4(&a16);
      swift_isUniquelyReferenced_nonNull_native();
      v359[0] = v245;
      v101 = v359;
      sub_10014FF48();

      sub_100002E6C(v359[0]);
      sub_100006670();
      sub_100107DA4(&qword_1002DA970, v261);
      v262 = sub_10000B358(&a12);
      sub_100107DA4(v262, v246);
      sub_100003F34();
    }

    else
    {
      sub_100006D1C();
      sub_10000288C();
      sub_100107DFC();
      sub_10000B358(&a16);
      swift_isUniquelyReferenced_nonNull_native();
      v359[0] = v101;
      sub_10014FF48();
      v101 = v334;

      sub_100004ADC();
      sub_100107DA4(v101, v263);
      sub_100002E6C(v359[0]);
      sub_100003F34();
    }
  }

  while (1)
  {
    v102 = v100 + 1;
    if (__OFADD__(v100, 1))
    {
      break;
    }

    if (v102 >= v306)
    {
      v264 = sub_100108828();
      sub_100099DF4(v264, v265);
      sub_100007B78();
      sub_100002728(v266, v267, v268, v269);
      v98 = 0;
      goto LABEL_14;
    }

    v98 = *(v327 + 8 * v102);
    ++v100;
    if (v98)
    {
      v100 = v102;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void *sub_1000FB800(uint64_t a1)
{
  sub_1000D6484();
  v2 = Dictionary.init(dictionaryLiteral:)();
  v3 = *(a1 + 48);
  v32 = *(v3 + 16);
  if (!v32)
  {
    return v2;
  }

  v4 = 0;
  v5 = (v3 + 136);
  v31 = *(a1 + 48);
  while (v4 < *(v3 + 16))
  {
    v7 = *(v5 - 13);
    v6 = *(v5 - 12);
    v8 = *(v5 - 10);
    v34 = *(v5 - 11);
    v9 = _swiftEmptyArrayStorage;
    if (*v5)
    {
      v9 = *v5;
    }

    v33 = v9;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = sub_10000AE2C();
    sub_10014EB30(v11, v12);
    sub_10000B818();
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_17;
    }

    v18 = v13;
    v19 = v14;
    sub_100099DF4(&qword_1002DCC28, &qword_100236600);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v17))
    {
      v20 = sub_10000AE2C();
      v22 = sub_10014EB30(v20, v21);
      if ((v19 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v18 = v22;
    }

    if (v19)
    {

      v24 = (v2[7] + 24 * v18);
      *v24 = v33;
      v24[1] = v34;
      v24[2] = v8;
    }

    else
    {
      sub_1001086C0();
      sub_1000035B8(v25);
      v26 = (v2[6] + 16 * v18);
      *v26 = v7;
      v26[1] = v6;
      v27 = (v2[7] + 24 * v18);
      *v27 = v33;
      v27[1] = v34;
      v27[2] = v8;
      sub_1001086CC();
      if (v29)
      {
        goto LABEL_18;
      }

      v2[2] = v28;
    }

    ++v4;
    v5 += 17;
    v3 = v31;
    if (v32 == v4)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000FBA04()
{
  sub_100004168();
  v1 = v0;
  v54 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_100003724();
  v52 = v2;
  __chkstk_darwin(v3);
  sub_10000306C();
  v51 = v5 - v4;
  v6 = sub_100099DF4(&qword_1002DCC18, &unk_100236C80);
  v7 = sub_1000030B8(v6);
  __chkstk_darwin(v7);
  sub_1000037D4();
  v55 = v8;
  sub_100005238();
  __chkstk_darwin(v9);
  v11 = (&v48 - v10);
  v12 = *(v1 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 20)) + 64;
  sub_100007FC0();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v53 = v18;

  v19 = 0;
  v49 = _swiftEmptyArrayStorage;
  v50 = v11;
  while (v15)
  {
LABEL_7:
    v15 &= v15 - 1;
    sub_1001087D8();
    v22 = *v21;
    v23 = v21[1];
    sub_100006D1C();
    sub_100107DFC();
    v24 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
    v25 = v55;
    *v55 = v22;
    v25[1] = v23;
    sub_100007FA8();
    sub_100107FA0();
    sub_10000B7B0();
    sub_100002728(v26, v27, v28, v24);

    v11 = v50;
LABEL_8:
    sub_100012D44();
    v29 = sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
    v30 = sub_10000A218();
    sub_10000B3A0(v30, v31, v29);
    if (v32)
    {

      sub_1000027F8();
      return;
    }

    v33 = *v11;
    v34 = v11[1];
    v35 = *(v11 + *(v29 + 48) + *(v54 + 64));
    sub_100004ADC();
    sub_100107DA4(v36, v37);
    if (v35 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10013C0F0();
        v49 = v46;
      }

      v42 = v49[2];
      v43 = v42 + 1;
      if (v42 >= v49[3] >> 1)
      {
        v48 = v42 + 1;
        sub_10013C0F0();
        v43 = v48;
        v49 = v47;
      }

      v44 = v49;
      v49[2] = v43;
      v45 = &v44[2 * v42];
      v45[4] = v33;
      v45[5] = v34;
    }

    else
    {
    }
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      sub_100099DF4(&qword_1002DCC20, &qword_10023F680);
      sub_100007B78();
      sub_100002728(v38, v39, v40, v41);
      v15 = 0;
      goto LABEL_8;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v19 = v20;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1000FBD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = sub_10010834C(v26);
  v28 = type metadata accessor for TSDataSyncDatasetState(v27);
  sub_100003724();
  __chkstk_darwin(v29);
  sub_1000037D4();
  v120 = v30;
  sub_100005238();
  __chkstk_darwin(v31);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v32);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v33);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v35);
  sub_100002DD0();
  v119 = v36;
  sub_100005238();
  __chkstk_darwin(v37);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v38);
  sub_10000D478();
  v118 = v39;
  v40 = *(v23 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 20));
  v41 = *(v25 + 16);
  if (!v41)
  {

LABEL_18:
    sub_10010958C();

    sub_1000027F8();
    return;
  }

  v42 = (v25 + 40);
  v111 = v40;
  while (1)
  {
    if (!*(v40 + 16))
    {
      goto LABEL_15;
    }

    v44 = *(v42 - 1);
    v43 = *v42;

    v45 = sub_10000AE2C();
    sub_10014EB30(v45, v46);
    if ((v47 & 1) == 0)
    {

      goto LABEL_15;
    }

    v114 = v42;
    v115 = v41;
    sub_100108558();
    sub_100006D1C();
    sub_10000288C();
    sub_100107DFC();
    sub_100007FA8();
    sub_100107FA0();
    v116 = v118[2];
    v122 = v118[5];
    v123 = v118[4];
    v126 = v118[3];
    v128 = v118[6];
    v125 = v118[7];
    sub_10010818C(v28[8]);
    sub_10003D1E4();
    v48 = v28[9];
    v134 = type metadata accessor for Date();
    sub_10000307C();
    v133 = *(v49 + 16);
    (v133)(v113 + v48, v118 + v48);
    v117 = v43;
    sub_10003D1E4();
    sub_10003D1E4();
    v50 = v28[14];
    v51 = (v118 + v28[13]);
    v52 = *v51;
    v53 = v51[1];
    v121 = *(v118 + v50);
    v130 = *(v118 + v50 + 8);
    v54 = (v118 + v28[15]);
    v55 = v54[1];
    v131 = *v54;
    v132 = v52;
    LOBYTE(v48) = *(v118 + v28[16]);
    v56 = *(v118 + v28[17]);
    v57 = *(v118 + v28[18]);
    v58 = *(v118 + v28[19]);
    sub_10003D1E4();
    *v113 = 0;
    v113[1] = 0xE000000000000000;
    v113[2] = v116;
    v113[3] = v126;
    v113[4] = v123;
    v113[5] = v122;
    v113[6] = v128;
    v113[7] = v125;
    sub_100108570();
    *(v113 + v59) = v60;
    v61 = (v113 + v28[13]);
    *v61 = v132;
    v61[1] = v53;
    sub_10000BF14(v113 + v28[14]);
    v63 = (v113 + v62);
    *v63 = v131;
    v63[1] = v55;
    *(v113 + v28[16]) = v48;
    *(v113 + v28[17]) = v56;
    *(v113 + v28[18]) = v57;
    *(v113 + v28[19]) = v58;
    sub_1001082D0(v28[8]);
    sub_1001081A4();
    sub_10010842C();
    sub_10003D1E4();
    sub_10010818C(v28[9]);
    sub_100108174();
    v133();
    sub_1001081A4();
    sub_1001085BC();
    sub_1001081A4();
    sub_1001085BC();
    sub_1001081E0(v28[20]);
    sub_1001081A4();
    sub_10003D1E4();

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_100108438(v135);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_10010881C();
    swift_bridgeObjectRetain_n();
    sub_100004ADC();
    v127 = v64;
    sub_100107DA4(v113, v65);
    *v53 = 0;
    v53[1] = 0xE000000000000000;
    v53[2] = 0;
    v53[3] = 0;
    v53[4] = v123;
    v53[5] = v122;
    v53[6] = v128;
    v53[7] = v125;
    sub_100108570();
    *(v53 + v66) = v67;
    v68 = (v53 + v28[13]);
    *v68 = v132;
    v68[1] = v53;
    v69 = v53 + v28[14];
    *v69 = v121;
    v69[8] = v130;
    v70 = (v53 + v28[15]);
    *v70 = v131;
    v70[1] = v55;
    *(v53 + v28[16]) = v48;
    sub_1001087CC();
    *(v53 + v71) = v72;
    *(v53 + v28[18]) = v57;
    *(v53 + v28[19]) = v58;
    sub_100008774(&a14);
    sub_10010863C();
    sub_10003D1E4();
    v124 = v28[9];
    sub_1001082DC();
    v133();
    sub_100008774(&a12);
    sub_10003D1E4();
    sub_100008774(&a11);
    sub_10003D1E4();
    sub_100108174();
    sub_10003D1E4();

    sub_10000B358(v135);

    sub_100107DA4(v53, v127);
    sub_100108798();
    *(v122 + 48) = v128;
    *(v122 + 56) = v125;
    sub_100108570();
    *(v122 + v73) = v74;
    v75 = (v122 + v28[13]);
    *v75 = v132;
    v75[1] = v53;
    v76 = v122 + v28[14];
    *v76 = v121;
    *(v76 + 8) = v130;
    v77 = (v122 + v28[15]);
    *v77 = v131;
    v77[1] = v55;
    *(v122 + v28[16]) = v48;
    sub_1001087CC();
    *(v122 + v78) = v79;
    *(v122 + v28[18]) = &qword_1002318B0;
    *(v122 + v28[19]) = v58;
    sub_10003D1E4();
    v129 = v28[9];
    (v133)(v112 + v129, v122 + v124, v134);
    sub_10010809C();
    sub_1001088C0();
    sub_10010809C();
    sub_1001088C0();
    sub_10010818C(v28[20]);
    sub_10010809C();
    sub_10003D1E4();

    sub_100107DA4(v122, v127);
    *v112 = 0;
    v112[1] = 0xE000000000000000;
    v112[2] = 0;
    v112[3] = 0;
    v112[4] = 0;
    v112[5] = 0xE000000000000000;
    v112[6] = 0;
    v112[7] = 0;
    sub_100108570();
    *(v112 + v80) = v81;
    v82 = (v112 + v28[13]);
    *v82 = v132;
    v82[1] = v53;
    sub_10000BF14(v112 + v28[14]);
    v84 = (v112 + v83);
    *v84 = v131;
    v84[1] = v55;
    *(v112 + v28[16]) = v48;
    sub_1001087CC();
    *(v112 + v85) = v86;
    *(v112 + v28[18]) = &qword_1002318B0;
    *(v112 + v28[19]) = v58;
    sub_1001081D4();
    sub_10003D1E4();
    (v133)(v119 + v28[9], v112 + v129, v134);
    sub_1001081D4();
    sub_10003D1E4();
    sub_1001081D4();
    sub_10003D1E4();
    sub_1001087FC();
    sub_10003D1E4();

    sub_100107DA4(v112, v127);
    *v119 = 0;
    v119[1] = 0xE000000000000000;
    v119[2] = 0;
    v119[3] = 0;
    v119[4] = 0;
    v119[5] = 0xE000000000000000;
    v119[6] = 0;
    v119[7] = 0;
    sub_100108570();
    *(v119 + v87) = v88;
    v89 = (v119 + v28[13]);
    *v89 = v132;
    v89[1] = v53;
    sub_10000BF14(v119 + v28[14]);
    v91 = (v119 + v90);
    *v91 = v131;
    v91[1] = v55;
    *(v119 + v28[16]) = 0;
    sub_1001087CC();
    *(v119 + v92) = v93;
    *(v119 + v28[18]) = &qword_1002318B0;
    *(v119 + v28[19]) = v58;
    sub_100107DFC();
    sub_10000B358(&a17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135[0] = &qword_1002DA970;
    sub_10014EB30(v44, v117);
    sub_10000B818();
    v99 = v97 + v98;
    if (__OFADD__(v97, v98))
    {
      break;
    }

    v100 = v95;
    v101 = v96;
    sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v99))
    {
      v102 = sub_10014EB30(v44, v117);
      if ((v101 & 1) != (v103 & 1))
      {
        goto LABEL_21;
      }

      v100 = v102;
    }

    v104 = v135[0];
    if (v101)
    {
      sub_1001081BC();
      sub_100107190(v120, v105 + v100 * v106);
    }

    else
    {
      sub_1000035B8(v135[0] + 8 * (v100 >> 6));
      v107 = (*(v104 + 48) + 16 * v100);
      *v107 = v44;
      v107[1] = v117;
      sub_1001081BC();
      sub_100007FA8();
      sub_100107FA0();
      v108 = *(v104 + 16);
      v109 = __OFADD__(v108, 1);
      v110 = v108 + 1;
      if (v109)
      {
        goto LABEL_20;
      }

      *(v104 + 16) = v110;
    }

    sub_100107DA4(v119, type metadata accessor for TSDataSyncDatasetState);
    sub_100107DA4(v118, type metadata accessor for TSDataSyncDatasetState);
    v40 = v111;
    v41 = v115;
    v42 = v114;
LABEL_15:
    v42 += 2;
    if (!--v41)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1000FC888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  sub_100002E6C(v25);
  v26 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v26);
  sub_100003774();
  __chkstk_darwin(v27);
  v29 = &v213[-v28];
  v30 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v30);
  sub_100003774();
  __chkstk_darwin(v31);
  v33 = &v213[-v32];
  v34 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_10000307C();
  __chkstk_darwin(v35);
  sub_10000308C();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  sub_10010814C();
  __chkstk_darwin(v40);
  v42 = &v213[-v41];
  __chkstk_darwin(v43);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v44);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v45);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v46);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v47);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v48);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v49);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v50);
  sub_10000D478();
  sub_10000A1C0(v51);
  v217 = v24;
  if (v24)
  {
    v243 = v24;
    swift_errorRetain();
    sub_100099DF4(&qword_1002DB2F0, &qword_10023F010);
    sub_1000B2EA4();
    sub_100108754();
    if (swift_dynamicCast())
    {
      v52 = v242;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
  }

  sub_10000AE2C();
  sub_10003D1E4();
  v53 = type metadata accessor for TSDataSyncDatasetState(0);
  sub_10000B3A0(v29, 1, v53);
  if (v58)
  {
    sub_100004E24(v29, &qword_1002DBC28, &qword_100232F70);
    sub_100007B78();
    sub_100002728(v54, v55, v56, v34);
    goto LABEL_11;
  }

  sub_10003D1E4();
  sub_100004ADC();
  sub_100107DA4(v29, v57);
  sub_1000071D8(v33);
  if (v58)
  {
LABEL_11:
    v59 = type metadata accessor for Date();
    sub_100007B78();
    sub_100002728(v60, v61, v62, v59);
    sub_100007B78();
    sub_100002728(v63, v64, v65, v59);
    *(v38 + 32) = 0;
    *v38 = 0u;
    *(v38 + 16) = 0u;
    *(v38 + 40) = 1;
    *(v38 + 48) = 0u;
    *(v38 + 64) = 0u;
    *(v38 + 80) = 0u;
    sub_100108180();
    *(v38 + v66) = v67;
    *(v38 + v34[12]) = v67;
    sub_100108364(v34[14]);
    sub_100108364(v34[15]);
    sub_100108364(v34[16]);
    sub_1000071D8(v33);
    if (!v58)
    {
      sub_100004E24(v33, &qword_1002DCC10, &unk_100238220);
    }

    if (!v52)
    {
      goto LABEL_16;
    }

LABEL_14:
    v241 = [v52 code];
    goto LABEL_17;
  }

  sub_100007C00();
  sub_100107FA0();
  if (v52)
  {
    goto LABEL_14;
  }

LABEL_16:
  v241 = 0;
LABEL_17:
  LODWORD(v233) = v52 == 0;
  v68 = *v38;
  v235 = v52;
  v69 = *(v38 + 8);
  v236 = *(v38 + 16);
  v70 = *(v38 + 24);
  v71 = *(v38 + 56);
  v223 = *(v38 + 48);
  v73 = *(v38 + 64);
  v72 = *(v38 + 72);
  v227 = v68;
  v228 = v73;
  v232 = v72;
  v74 = v34[10];
  v75 = *(v38 + 88);
  v239 = *(v38 + 80);
  v234 = (v20 + v74);
  sub_10010831C();
  sub_10003D1E4();
  v76 = v34[12];
  LODWORD(v229) = *(v38 + v34[11]);
  LODWORD(v240) = *(v38 + v76);
  v215 = v20 + v34[13];
  sub_10010831C();
  sub_10003D1E4();
  v77 = v34[15];
  v78 = v38 + v34[14];
  v222 = *v78;
  LODWORD(v221) = *(v78 + 8);
  v225 = *(v38 + v77);
  LODWORD(v224) = *(v38 + v77 + 8);
  v79 = v38 + v34[16];
  v237 = *v79;
  v80 = *(v79 + 8);

  v81 = v232;

  sub_100006670();
  sub_100107DA4(v38, v82);
  *v20 = v227;
  *(v20 + 8) = v69;
  v226 = v69;
  v83 = v235;
  *(v20 + 16) = v236;
  *(v20 + 24) = v70;
  v230 = v70;
  v231 = v75;
  *(v20 + 32) = v241;
  *(v20 + 40) = v233;
  *(v20 + 48) = v223;
  *(v20 + 56) = v71;
  *(v20 + 64) = v228;
  *(v20 + 72) = v81;
  *(v20 + 80) = v239;
  *(v20 + 88) = v75;
  sub_1001086FC();
  *(v20 + v84) = v85;
  sub_1001081F8();
  *(v20 + v86) = v87;
  sub_10000A834((v20 + v34[14]));
  v88 = v221;
  sub_100108058(v89);
  sub_100008D90(v20 + v90);
  v92 = v20 + v91;
  *v92 = v237;
  v238 = v80;
  *(v92 + 8) = v80;

  if (v83)
  {
    v93 = [v83 domain];
    v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v96 = v95;

    v214 = v83;
  }

  else
  {
    v214 = 0;
    v94 = 0;
    v96 = 0;
  }

  v97 = v83 == 0;
  LODWORD(v235) = v83 == 0;
  sub_10003D1E4();
  sub_10010869C(v34[13]);
  sub_10003D1E4();
  sub_100006670();
  v234 = v98;
  sub_100107DA4(v20, v99);
  v100 = v226;
  *v42 = v227;
  *(v42 + 1) = v100;
  v101 = v230;
  *(v42 + 2) = v236;
  *(v42 + 3) = v101;
  v102 = v241;
  *(v42 + 4) = v241;
  v42[40] = v97;
  v233 = v94;
  *(v42 + 6) = v94;
  *(v42 + 7) = v96;
  v223 = v96;
  v104 = v231;
  v103 = v232;
  *(v42 + 8) = v228;
  *(v42 + 9) = v103;
  *(v42 + 10) = v239;
  *(v42 + 11) = v104;
  sub_1001086FC();
  v42[v105] = v106;
  sub_1001081F8();
  v42[v107] = v108;
  sub_10000A834(&v42[v34[14]]);
  *(v109 + 8) = v88;
  sub_100008D90(&v42[v34[15]]);
  v111 = &v42[v110];
  v112 = v237;
  *v111 = v237;
  sub_100108358(v111);
  sub_10010881C();
  swift_bridgeObjectRetain_n();
  v113 = v42;
  v114 = v100;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_100108528();
  swift_bridgeObjectRetain_n();
  sub_10010826C();
  v115 = static HTTPHelpers.statusCodeString(error:)();
  v232 = v115;
  v228 = v116;

  v241 = v102;
  v217 = v34[10];
  sub_10010842C();
  sub_10003D1E4();
  v215 = v34[13];
  sub_100004FB0(&v240);
  sub_10003D1E4();
  sub_100107DA4(v113, v234);
  *v88 = v227;
  *(v88 + 8) = v114;
  *(v88 + 16) = v236;
  *(v88 + 24) = v101;
  *(v88 + 32) = v102;
  *(v88 + 40) = v235;
  v117 = v233;
  v118 = v223;
  *(v88 + 48) = v233;
  *(v88 + 56) = v118;
  *(v88 + 64) = v115;
  v119 = v239;
  *(v88 + 72) = v228;
  *(v88 + 80) = v119;
  v120 = v231;
  *(v88 + 88) = v231;
  v121 = v229;
  *(v88 + v34[11]) = v229;
  sub_1001081F8();
  sub_100008C8C(v122);
  sub_10000A834(v123);
  sub_100010E0C(v124);
  sub_100008D90(v88 + v34[15]);
  v126 = (v88 + v125);
  *v126 = v112;
  sub_100108358(v126);
  sub_1001084E0(v34[10]);
  sub_100108140();
  v127 = v216;
  sub_10003D1E4();
  v221 = v34[13];
  sub_100108140();
  sub_10003D1E4();
  sub_100108334();
  swift_bridgeObjectRetain_n();
  v128 = v226;

  v129 = v101;

  v130 = v223;

  v131 = v234;
  sub_100107DA4(v88, v234);
  v132 = v227;
  *v127 = v227;
  *(v127 + 8) = v128;
  *(v127 + 16) = v236;
  *(v127 + 24) = v129;
  *(v127 + 32) = v241;
  *(v127 + 40) = v235;
  *(v127 + 48) = v117;
  *(v127 + 56) = v130;
  v133 = v228;
  *(v127 + 64) = v232;
  *(v127 + 72) = v133;
  *(v127 + 80) = v239;
  *(v127 + 88) = v120;
  *(v127 + v34[11]) = v121;
  sub_1001081F8();
  *(v127 + v134) = v135;
  sub_100003C34(v127 + v34[14]);
  sub_100008D90(v127 + v136);
  v138 = (v127 + v137);
  *v138 = v237;
  sub_100108358(v138);
  v225 = v34[10];
  sub_100004FB0(&a18);
  sub_10010863C();
  sub_10003D1E4();
  v224 = v34[13];
  sub_10010808C(&a17);
  sub_100002854();
  sub_10003D1E4();
  v139 = v230;

  sub_100107DA4(v127, v131);
  v140 = v226;
  *v129 = v132;
  *(v129 + 8) = v140;
  *(v129 + 16) = v236;
  *(v129 + 24) = v139;
  v141 = v241;
  *(v129 + 32) = v241;
  LOBYTE(v127) = v235;
  *(v129 + 40) = v235;
  v142 = v232;
  *(v129 + 48) = v233;
  *(v129 + 56) = v130;
  v143 = v130;
  *(v129 + 64) = v142;
  *(v129 + 72) = v133;
  *(v129 + 80) = v239;
  *(v129 + 88) = v120;
  sub_1001086FC();
  *(v129 + v144) = v145;
  sub_1001081F8();
  *(v129 + v146) = v147;
  sub_100003C34(v129 + v34[14]);
  sub_10000B3B8(v129 + v148);
  v150 = (v129 + v149);
  *v150 = v237;
  sub_100108358(v150);
  v227 = v34[10];
  v151 = v218;
  sub_10003D1E4();
  v226 = v34[13];
  sub_1001085BC();
  v152 = v230;

  sub_100107DA4(v129, v234);
  *v151 = 0;
  *(v151 + 8) = 0;
  *(v151 + 16) = v236;
  *(v151 + 24) = v152;
  *(v151 + 32) = v141;
  *(v151 + 40) = v127;
  v153 = v232;
  *(v151 + 48) = v233;
  *(v151 + 56) = v143;
  *(v151 + 64) = v153;
  *(v151 + 72) = v133;
  v154 = v133;
  v155 = v231;
  *(v151 + 80) = v239;
  *(v151 + 88) = v155;
  sub_1001086FC();
  *(v151 + v156) = v157;
  LOBYTE(v141) = v240;
  *(v151 + v34[12]) = v240;
  sub_100003C34(v151 + v34[14]);
  sub_10000B3B8(v151 + v158);
  v160 = (v151 + v159);
  v161 = v237;
  *v160 = v237;
  sub_100108358(v160);
  v229 = v34[10];
  sub_10010863C();
  sub_10003D1E4();
  v227 = v34[13];
  sub_10003D1E4();

  v162 = v223;

  v163 = v154;

  v164 = sub_10000AE2C();
  sub_100107DA4(v164, v165);
  *v129 = 0;
  *(v129 + 8) = 0;
  v166 = v230;
  *(v129 + 16) = v236;
  *(v129 + 24) = v166;
  v167 = v241;
  *(v129 + 32) = v241;
  LOBYTE(v151) = v235;
  *(v129 + 40) = v235;
  v168 = v232;
  *(v129 + 48) = v233;
  *(v129 + 56) = v162;
  *(v129 + 64) = v168;
  *(v129 + 72) = v163;
  *(v129 + 80) = v239;
  *(v129 + 88) = v155;
  sub_100108180();
  *(v129 + v169) = v170;
  *(v129 + v34[12]) = v141;
  sub_100003C34(v129 + v34[14]);
  sub_10000B3B8(v129 + v171);
  v173 = v129 + v172;
  *v173 = v161;
  LOBYTE(v155) = v238;
  *(v173 + 8) = v238;
  v236 = v34[10];
  v174 = v219;
  sub_10003D1E4();
  v230 = v34[13];
  sub_1001085BC();
  v175 = v162;

  v176 = v228;

  sub_100107DA4(v129, v234);
  *v174 = 0u;
  *(v174 + 16) = 0u;
  *(v174 + 32) = v167;
  *(v174 + 40) = v151;
  v177 = v232;
  v178 = v233;
  *(v174 + 48) = v233;
  *(v174 + 56) = v175;
  *(v174 + 64) = v177;
  *(v174 + 72) = v176;
  v179 = v231;
  *(v174 + 80) = v239;
  *(v174 + 88) = v179;
  sub_100108108();
  sub_100008C8C(v180);
  sub_100003C34(v181);
  sub_10000B3B8(v174 + v182);
  v184 = v174 + v183;
  *v184 = v237;
  LOBYTE(v176) = v155;
  *(v184 + 8) = v155;
  v239 = v34[10];
  v185 = v220;
  sub_10003D1E4();
  v236 = v34[13];
  sub_10003D1E4();

  v186 = v228;

  v187 = v234;
  sub_100107DA4(v174, v234);
  *v185 = 0u;
  *(v185 + 16) = 0u;
  v188 = v241;
  *(v185 + 32) = v241;
  *(v185 + 40) = v235;
  *(v185 + 48) = v178;
  *(v185 + 56) = v175;
  *(v185 + 64) = v177;
  *(v185 + 72) = v186;
  *(v185 + 80) = 0;
  *(v185 + 88) = 0;
  sub_100108180();
  *(v185 + v189) = v190;
  sub_1001081F8();
  *(v185 + v191) = v192;
  sub_100003C34(v185 + v34[14]);
  sub_10000B3B8(v185 + v193);
  v195 = v185 + v194;
  v196 = v237;
  *v195 = v237;
  *(v195 + 8) = v176;
  v240 = v34[10];
  sub_10010842C();
  sub_10003D1E4();
  sub_10003D1E4();
  v197 = v175;

  v198 = v228;

  sub_100107DA4(v185, v187);
  *v174 = 0u;
  *(v174 + 16) = 0u;
  *(v174 + 32) = v188;
  LOBYTE(v175) = v235;
  *(v174 + 40) = v235;
  v200 = v232;
  v199 = v233;
  *(v174 + 48) = v233;
  *(v174 + 56) = v197;
  *(v174 + 64) = v200;
  *(v174 + 72) = v198;
  *(v174 + 80) = 0;
  *(v174 + 88) = 0;
  sub_100108108();
  sub_100008C8C(v201);
  sub_100003C34(v202);
  sub_10000B3B8(v174 + v203);
  v205 = (v174 + v204);
  *v205 = v196;
  sub_100108358(v205);
  sub_100108444();
  sub_10003D1E4();
  sub_10003D1E4();
  sub_100107DA4(v174, v234);
  *v198 = 0u;
  *(v198 + 16) = 0u;
  *(v198 + 32) = v241;
  *(v198 + 40) = v175;
  v206 = v223;
  *(v198 + 48) = v199;
  *(v198 + 56) = v206;
  *(v198 + 64) = v200;
  *(v198 + 72) = v198;
  *(v198 + 80) = 0;
  *(v198 + 88) = 0;
  sub_100108180();
  *(v198 + v207) = v208;
  *(v198 + v34[12]) = v208;
  sub_100003C34(v198 + v34[14]);
  sub_10000B3B8(v198 + v209);
  sub_1001082E8(v210);
  *(v211 + 8) = v212;
  sub_1000027F8();
}

void sub_1000FD780(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v536 = a4;
  v551 = a3;
  v543 = a2;
  v13 = sub_10010834C(a5);
  v544 = type metadata accessor for TSDataSyncDatasetGroupState(v13);
  sub_10000307C();
  __chkstk_darwin(v14);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v15);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v16);
  sub_10000D478();
  sub_10000A1C0(v17);
  v18 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v18);
  sub_100003774();
  __chkstk_darwin(v19);
  sub_100003018();
  v21 = sub_100008280(v20);
  v549 = type metadata accessor for TSDataSyncDatasetState(v21);
  sub_100003724();
  v532[2] = v22;
  __chkstk_darwin(v23);
  sub_1000037D4();
  sub_10000690C();
  __chkstk_darwin(v24);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v25);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v26);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v27);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v28);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v29);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v30);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v31);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v32);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v33);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v35);
  sub_10010814C();
  __chkstk_darwin(v36);
  sub_1000062E0();
  __chkstk_darwin(v37);
  sub_100002DF4();
  __chkstk_darwin(v38);
  v40 = &v473 - v39;
  v41 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  v42 = sub_1000030B8(v41);
  __chkstk_darwin(v42);
  sub_10000308C();
  sub_100008B9C();
  __chkstk_darwin(v43);
  sub_1001080E4();
  __chkstk_darwin(v44);
  sub_100108044();
  __chkstk_darwin(v45);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v46);
  sub_1001083F4();
  v47 = v557;
  v48 = sub_100100474(a1);
  if (v47)
  {
    return;
  }

  v523 = v6;
  v522[0] = v8;
  v520 = v10;
  v517 = v5;
  v527 = v40;
  v522[1] = v11;
  v521 = v9;
  v519 = v7;
  v525 = 0;
  v526 = a1;
  v49 = *(v543 + *(v544 + 20));
  v553 = *(v543 + *(v544 + 32));
  v50 = v553;
  v51 = v48;
  v52 = *(v551 + *(type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0) + 28));
  v53 = (v52 + 64);
  sub_1000DB9A4();
  v56 = v55 & v54;
  v58 = (v57 + 63) >> 6;
  v518 = 0x8000000100273930;

  v524 = v50;

  v547 = v52;

  v59 = 0;
  v551 = v49;
  v548 = v49;
  sub_100004238();
  sub_1001086F0();
  v557 = v51;
  v546 = v60;
  v545 = v58;
  if (!v56)
  {
LABEL_3:
    while (1)
    {
      v62 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v62 >= v61)
      {

        sub_1000031A4();
        v557 = v434;
        sub_100108284(&__dst[5]);
        v435 = v537;
        sub_100107DFC();
        v436 = v544;
        sub_10003D1E4();
        v437 = v436[7];
        sub_10003D1E4();
        v438 = v436[10];
        v551 = *&v53[v436[9]];
        v439 = *&v53[v438];
        v550 = *&v53[v438 + 8];
        v542 = *&v53[v438 + 24];
        sub_1001081BC();
        *(v435 + v440) = v441;
        v442 = v524;
        *(v435 + v436[8]) = v524;
        *(v435 + v436[9]) = v443;
        v444 = (v435 + v436[10]);
        *v444 = v439;
        v444[1] = v445;
        v444[2] = v447;
        v444[3] = v446;
        v448 = v447;
        sub_10010869C(v553);
        sub_100108290();
        sub_100107DFC();
        v549 = v436[6];
        sub_10003D1E4();
        v547 = v436[7];
        sub_10003D1E4();
        sub_100108204();
        v449 = v542;
        sub_1001071F4(v450, v451);

        v452 = sub_100108828();
        v543 = v448;
        sub_1001071F4(v452, v453);
        sub_100005CC4(&v556 + 8);

        v454 = sub_100108828();
        sub_1001071F4(v454, v455);
        v548 = v437;

        sub_10010826C();

        sub_10000764C();
        v551 = v456;
        sub_100107DA4(v435, v457);
        *&v53[v436[5]] = v437;
        *&v53[v436[8]] = v442;
        v458 = v546;
        *&v53[v436[9]] = v546;
        v459 = &v53[v436[10]];
        *v459 = v439;
        *(v459 + 1) = &qword_1002DA970;
        v460 = v543;
        *(v459 + 2) = v543;
        *(v459 + 3) = v449;
        v461 = v538;
        sub_100107DFC();
        v545 = v436[6];
        sub_100107FF8();
        sub_10003D1E4();
        v549 = v436[7];
        sub_100108328(&v556);
        sub_10003D1E4();
        sub_100005CC4(&v556 + 8);

        sub_100107DA4(v53, v551);
        *(v461 + v436[5]) = &qword_1002318B0;
        *(v461 + v436[8]) = _swiftEmptyArrayStorage;
        v462 = v458;
        *(v461 + v436[9]) = v458;
        sub_1000ED3A4();
        *v463 = v439;
        v463[1] = v464;
        v463[2] = v460;
        v463[3] = v449;
        v465 = v526[3];
        v550 = v526[2];
        v466 = v526[4];
        v467 = v526[5];
        v468 = v539;
        sub_100107DFC();
        sub_10010809C();
        sub_10003D1E4();
        sub_10010809C();
        sub_10003D1E4();

        sub_100107DA4(v461, v551);
        sub_1001081BC();
        *(v468 + v469) = v470;
        *(v468 + v436[8]) = _swiftEmptyArrayStorage;
        *(v468 + v436[9]) = v462;
        sub_1000ED3A4();
        *v471 = v472;
        v471[1] = v465;
        v471[2] = v466;
        v471[3] = v467;
        return;
      }

      v56 = *(v60 + 8 * v62);
      ++v59;
      if (v56)
      {
        v59 = v62;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_7:
  while (1)
  {
    v63 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v64 = (*(v547 + 48) + ((v59 << 10) | (16 * v63)));
    v65 = *v64;
    v66 = v64[1];
    v67 = *(v51 + 16);

    v550 = v65;
    if (v67)
    {
      v68 = sub_10014EB30(v65, v66);
      v51 = v557;
      if (v69)
      {
        break;
      }
    }

    if (*(v551 + 2) && (v70 = sub_10010878C(), sub_10014EB30(v70, v66), v51 = v557, (v71 & 1) != 0))
    {
      sub_100108558();
      v497 = v75;
      sub_100006D1C();
      sub_100108708();
      sub_100107DFC();
      sub_100007FA8();
      v514 = v76;
      sub_100107FA0();
      v77 = v549;
      v78 = v10;
      v79 = type metadata accessor for Date();
      sub_100007B78();
      sub_100002728(v80, v81, v82, v79);
      v83 = v10[1];
      v513 = *v10;
      v508 = v83;
      v84 = v10[3];
      v512 = v10[2];
      v509 = v84;
      v85 = v10[5];
      v511 = v10[4];
      v515 = v85;
      v86 = v10[7];
      v510 = v10[6];
      v516 = v86;
      (*(*(v79 - 8) + 16))(v50 + v77[9], v10 + v77[9], v79);
      sub_10003D1E4();
      v507 = *(v10 + v77[11]);
      sub_10003D1E4();
      v87 = (v10 + v77[13]);
      v88 = v87[1];
      v503 = *v87;
      v506 = v88;
      sub_1001087E4();
      LODWORD(v504) = v89;
      v90 = v77[16];
      v91 = (v78 + v77[15]);
      v93 = *v91;
      v92 = v91[1];
      v501 = v93;
      v500 = v92;
      LODWORD(v502) = *(v78 + v90);
      v94 = v77[18];
      LODWORD(v499) = *(v78 + v77[17]);
      v95 = *(v78 + v94);
      v498 = *(v78 + v77[19]);
      sub_10003D1E4();
      v96 = v508;
      *v50 = v513;
      *(v50 + 8) = v96;
      v97 = v509;
      *(v50 + 16) = v512;
      *(v50 + 24) = v97;
      v98 = v515;
      *(v50 + 32) = v511;
      *(v50 + 40) = v98;
      v99 = v516;
      *(v50 + 48) = v510;
      *(v50 + 56) = v99;
      sub_100108564(v77[11]);
      v100 = (v50 + v77[13]);
      *v100 = v503;
      v100[1] = v88;
      sub_10000A834((v50 + v77[14]));
      sub_100010E0C(v101);
      v102 = (v50 + v77[15]);
      v103 = v500;
      *v102 = v501;
      v102[1] = v103;
      sub_1000051EC(v77[16]);
      sub_1000051EC(v77[17]);
      *(v50 + v77[18]) = v95;
      *(v50 + v77[19]) = v498;
      sub_100107FA0();

      sub_1001082F4();

      sub_10000B358(&v556 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v552 = v96;
      v105 = sub_10010878C();
      v10 = v66;
      sub_10014EB30(v105, v66);
      sub_10000B818();
      v110 = v108 + v109;
      if (__OFADD__(v108, v109))
      {
        goto LABEL_91;
      }

      v53 = v106;
      v111 = v107;
      sub_100099DF4(&unk_1002DEA00, &unk_10023B950);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v110))
      {
        v112 = sub_10010878C();
        v113 = sub_10014EB30(v112, v66);
        if ((v111 & 1) != (v114 & 1))
        {
          goto LABEL_98;
        }

        v53 = v113;
      }

      v51 = v557;
      if ((v111 & 1) == 0)
      {
        v312 = v552;
        sub_1001086C0();
        sub_1000035B8(v313);
        sub_1000ED3A4();
        *v314 = v315;
        v314[1] = v66;
        sub_1001087F0();
        sub_100007FA8();
        sub_100107FA0();
        sub_100004ADC();
        v316 = sub_100003EA8(&__dst[4] + 8);
        sub_100107DA4(v316, v317);
        sub_1001086CC();
        if (v146)
        {
          goto LABEL_95;
        }

        v548 = v312;
        v312[2] = v318;
        v50 = v541;
        goto LABEL_82;
      }

      sub_10010811C();
      sub_1001087F0();
      sub_100107190(v535, v115);
      sub_100004ADC();
      v116 = sub_100003EA8(&__dst[4] + 8);
      sub_100107DA4(v116, v117);
      v50 = v541;
      sub_1001086F0();
    }

    else
    {
    }

LABEL_12:
    v60 = v546;
    v61 = v545;
    if (!v56)
    {
      goto LABEL_3;
    }
  }

  memcpy(__dst, (*(v557 + 56) + 96 * v68), sizeof(__dst));
  sub_1000E3AC8(__dst, &v552);
  v512 = v66;
  sub_1001ABF58(v65, v66, v551, v523);
  sub_10003D1E4();
  v72 = v549;
  sub_10000B3A0(v53, 1, v549);
  if (v383)
  {
    v73 = sub_100108774();
    sub_100004E24(v73, v74, &qword_100232F70);
    v118 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v118 = *&v53[*(v72 + 18)];

    sub_100004ADC();
    sub_100107DA4(v53, v119);
  }

  v120 = *(&__dst[3] + 1) + 64;
  sub_1000DB9A4();
  v123 = v122 & v121;
  v125 = (v124 + 63) >> 6;
  v511 = v126;

  v127 = 0;
  v510 = v120;
  v509 = v125;
  if (v123)
  {
LABEL_28:
    while (1)
    {
      v129 = (v127 << 10) | (16 * __clz(__rbit64(v123)));
      v130 = *(*(v511 + 48) + v129 + 8);
      v131 = (*(v511 + 56) + v129);
      v132 = v131[1];
      v514 = *v131;

      v515 = v132;

      v133 = swift_isUniquelyReferenced_nonNull_native();
      v552 = v118;
      v134 = sub_100108690(&v539);
      v516 = v130;
      v135 = sub_10014EB30(v134, v130);
      v137 = v118[2];
      v138 = (v136 & 1) == 0;
      v139 = v137 + v138;
      if (__OFADD__(v137, v138))
      {
        goto LABEL_89;
      }

      v140 = v135;
      v141 = v136;
      sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
      v72 = &v552;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v133, v139))
      {
        v72 = v552;
        v142 = sub_1001087C0();
        v143 = sub_10014EB30(v142, v516);
        if ((v141 & 1) != (v144 & 1))
        {
          goto LABEL_98;
        }

        v140 = v143;
      }

      if (v141)
      {
        sub_1001082F4();

        v118 = v552;
        sub_100002A38((v552[7] + 16 * v140));
      }

      else
      {
        v118 = v552;
        sub_1000035B8(&v552[v140 >> 6]);
        sub_100002A38((v118[6] + 16 * v140));
        sub_100002A38((v118[7] + 16 * v140));
        v145 = v118[2];
        v146 = __OFADD__(v145, 1);
        v147 = v145 + 1;
        if (v146)
        {
          goto LABEL_90;
        }

        v118[2] = v147;
      }

      v120 = v510;
      v125 = v509;
      v123 &= v123 - 1;
      if (!v123)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
LABEL_24:
    v128 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
      goto LABEL_87;
    }

    if (v128 >= v125)
    {
      break;
    }

    v123 = *(v120 + 8 * v128);
    ++v127;
    if (v123)
    {
      v127 = v128;
      goto LABEL_28;
    }
  }

  sub_10010851C();
  sub_100108708();
  sub_10003D1E4();
  v148 = sub_10000A218();
  v149 = v549;
  sub_10000B3A0(v148, v150, v549);
  v474 = v118;
  if (v383)
  {
    v151 = v72;
    v152 = type metadata accessor for Date();
    v169 = v527;
    sub_100007B78();
    sub_100002728(v153, v154, v155, v152);
    static Date.distantPast.getter();
    v156 = sub_10000D500(v149[10]);
    sub_100002728(v156, v157, v158, v152);
    v159 = sub_10000D500(v149[12]);
    sub_100002728(v159, v160, v161, v152);
    Dictionary.init(dictionaryLiteral:)();
    type metadata accessor for TSDataSyncDatasetMetricsFields(0);
    sub_100007B78();
    sub_100002728(v162, v163, v164, v165);
    sub_100108074();
    sub_1001080F4();
    *v166 = 0;
    v166[1] = 0;
    sub_10010845C();
    sub_100108004(v167);
    sub_100004044();
    *(v169 + v168) = _swiftEmptyArrayStorage;
    sub_10000B3A0(v151, 1, v149);
    v170 = v536;
    v171 = v534;
    if (!v383)
    {
      sub_100004E24(v522[0], &qword_1002DBC28, &qword_100232F70);
    }
  }

  else
  {
    sub_100007FA8();
    v169 = v527;
    sub_100107FA0();
    v170 = v536;
    v171 = v534;
  }

  v172 = v149[20];
  v173 = type metadata accessor for Date();
  sub_10000307C();
  v175 = *(v174 + 16);
  v176 = (v174 + 16);
  v175(v171, v170, v173);
  v502 = v176;
  v505 = v175;
  sub_10000B7B0();
  v506 = v173;
  sub_100002728(v177, v178, v179, v173);
  v480 = v172;
  v180 = v521;
  sub_100100C70(__dst, v523, v171, v521 + v172);
  sub_100004E24(v171, &qword_1002DA970, &qword_1002318B0);
  type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_10000B7B0();
  sub_100002728(v181, v182, v183, v184);
  v185 = v169[1];
  v504 = *v169;
  v514 = v185;
  v186 = v169[3];
  v495 = v169[2];
  v493 = v186;
  v187 = v169[5];
  v496 = v169[4];
  v497 = v187;
  v188 = v169[7];
  v499 = v169[6];
  sub_100108780(v188);
  sub_100107FF8();
  v479 = *(v189 + 32);
  v492 = v169 + v479;
  sub_10003D1E4();
  sub_100107FF8();
  v191 = *(v190 + 36);
  v491 = v169 + v191;
  (v175)(v180 + v191);
  sub_100107FF8();
  v478 = *(v192 + 40);
  v490 = v169 + v478;
  sub_1001084F8();
  sub_10003D1E4();
  sub_100107FF8();
  v488 = *(v193 + 44);
  sub_100107FF8();
  sub_10001042C();
  v511 = *(v194 + v195);
  sub_10001042C();
  v476 = v196;
  v489 = v197 + v196;
  sub_1001084F8();
  sub_10003D1E4();
  sub_100107FF8();
  sub_1001080AC();
  v487 = (v527 + v198);
  v199 = *(v527 + v198 + 8);
  v508 = *(v527 + v198);
  sub_10001042C();
  v486 = (v200 + v201);
  sub_1001087E4();
  LODWORD(v509) = v202;
  sub_100107FF8();
  sub_1001080AC();
  v485 = *(v203 + 64);
  LODWORD(v501) = *(v527 + v485);
  sub_100107FF8();
  v484 = *(v204 + 68);
  sub_100107FF8();
  v483 = *(v205 + 72);
  sub_10001042C();
  LODWORD(v500) = *(v206 + v207);
  v481 = v208;
  v209 = v208[1];
  v507 = *v208;
  v516 = v209;
  sub_10001042C();
  v515 = *(v210 + v211);
  v212 = v515;
  sub_100107FF8();
  v482 = *(v213 + 76);
  sub_10001042C();
  v503 = *(v214 + v215);
  v216 = v503;

  sub_1000026F4(&v540);

  sub_1001080B8(&v524);

  sub_100108284(&v528);

  sub_10000A81C(&v529);

  v513 = v199;

  v494 = type metadata accessor for TSDataSyncDatasetState;
  v217 = sub_100108414();
  sub_100107DA4(v217, v218);
  *v180 = v504;
  v180[1] = v173;
  v180[2] = v495;
  v180[3] = v212;
  v180[4] = v496;
  v180[5] = v216;
  sub_100108420();
  v180[6] = v219;
  v180[7] = v169;
  sub_100107FF8();
  sub_100003038();
  *(v180 + v220) = v221;
  sub_100107FF8();
  sub_100108668();
  *v222 = v223;
  v222[1] = v199;
  sub_100107FF8();
  sub_1000069E4(v180 + *(v224 + 56));
  sub_100107FF8();
  sub_10000AFB4((v180 + *(v225 + 60)));
  *(v180 + v226) = v227;
  sub_100107FF8();
  *(v180 + *(v228 + 68)) = v500;
  sub_100107FF8();
  v230 = v515;
  *(v180 + *(v229 + 72)) = v515;
  sub_100107FF8();
  *(v180 + *(v231 + 76)) = v503;
  sub_100107FF8();
  v477 = *(v232 + 32);
  sub_10010863C();
  sub_10003D1E4();
  sub_100107FF8();
  v479 = *(v233 + 36);
  sub_100108160();
  v234();
  sub_100107FF8();
  sub_1001087FC();
  sub_100007664();
  sub_10003D1E4();
  sub_100107FF8();
  v475 = *(v235 + 48);
  sub_10010808C(&v508);
  sub_100007664();
  sub_10003D1E4();
  sub_100107FF8();
  v478 = *(v236 + 80);
  sub_10010808C(&v512);
  sub_10003D1E4();
  swift_bridgeObjectRetain_n();
  sub_100108334();
  swift_bridgeObjectRetain_n();
  sub_100108284(&v528);
  swift_bridgeObjectRetain_n();
  sub_10000B358(&v529);
  swift_bridgeObjectRetain_n();
  sub_1001080B8(&v539);
  swift_bridgeObjectRetain_n();
  sub_1001082F4();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1000026F4(v532);

  v237 = v180;
  sub_100107DA4(v180, v494);
  v238 = v514;
  *v180 = v504;
  v180[1] = v238;
  v180[2] = v495;
  v180[3] = v212;
  v180[4] = v496;
  v180[5] = &qword_1002318B0;
  sub_100108420();
  v180[6] = v239;
  v180[7] = &qword_1002DA970;
  sub_100107FF8();
  sub_100003038();
  *(v180 + v240) = v241;
  sub_100107FF8();
  sub_100108668();
  *v242 = v243;
  v242[1] = v212;
  sub_100107FF8();
  sub_1000069E4(v180 + *(v244 + 56));
  sub_100107FF8();
  sub_10000AFB4((v180 + *(v245 + 60)));
  *(v180 + v246) = v247;
  sub_100107FF8();
  LOBYTE(v180) = v500;
  *(v237 + *(v248 + 68)) = v500;
  sub_100107FF8();
  *(v237 + *(v249 + 72)) = v515;
  sub_100107FF8();
  *(v237 + *(v250 + 76)) = v230;
  type metadata accessor for TSDataSyncServerDatasetGroupResponse(0);
  v251 = sub_1000026F4(v522);
  v252 = v506;
  v253 = v505;
  (v505)(v251);
  sub_10000B7B0();
  sub_100002728(v254, v255, v256, v252);
  sub_100004FB0(&v509);
  sub_10003D1E4();
  v253(v491, v237 + v479, v252);
  sub_100004FB0(&v507);
  sub_100002854();
  sub_10003D1E4();
  sub_100107FF8();
  v258 = (v527 + *(v257 + 80));
  sub_100004FB0(&v510);
  v259 = v527;
  sub_10003D1E4();
  sub_10000B358(v532);

  sub_100107DA4(v237, v494);
  v260 = v504;
  v261 = v516;
  v262 = v507;
  v263 = v514;
  *v259 = v504;
  v259[1] = v263;
  v264 = v493;
  v259[2] = v495;
  v259[3] = v264;
  v265 = v513;
  v266 = v508;
  v267 = v497;
  v259[4] = v496;
  v259[5] = v267;
  v268 = v498;
  v259[6] = v499;
  v259[7] = v268;
  *(v259 + v488) = v511;
  v269 = v487;
  *v487 = v266;
  v269[1] = v265;
  v270 = v486;
  *v486 = v510;
  *(v270 + 8) = v509;
  v271 = v481;
  *v481 = v262;
  v271[1] = v261;
  *(v259 + v485) = v501;
  *(v259 + v484) = v180;
  *(v259 + v483) = v515;
  *(v259 + v482) = v252;
  if ((BYTE2(__dst[3]) & 1) == 0)
  {
    v555 = __dst[0];
    v276 = v260;
    v277 = v549;
    v495 = *(v549 + 32);
    v278 = v263;
    sub_10003D1E4();
    v488 = *(v277 + 36);
    v505(v237 + v488, v491, v506);
    sub_100107FF8();
    v494 = *(v279 + 40);
    sub_10003D1E4();
    sub_100107FF8();
    v493 = *(v280 + 48);
    sub_10003D1E4();
    sub_100107FF8();
    v492 = *(v281 + 80);
    sub_10003D1E4();
    *v237 = v276;
    *(v237 + 8) = v278;
    *(v237 + 16) = v555;
    v282 = v497;
    *(v237 + 32) = v496;
    *(v237 + 40) = v282;
    v283 = v498;
    *(v237 + 48) = v499;
    *(v237 + 56) = v283;
    sub_100107FF8();
    sub_100003038();
    *(v237 + v284) = v285;
    sub_100107FF8();
    v287 = (v237 + *(v286 + 52));
    v288 = v513;
    *v287 = v508;
    v287[1] = v288;
    sub_100107FF8();
    sub_1000069E4(v237 + *(v289 + 56));
    sub_100107FF8();
    sub_10000AFB4((v237 + *(v290 + 60)));
    *(v237 + v291) = v292;
    sub_100107FF8();
    *(v237 + *(v293 + 68)) = v500;
    sub_100107FF8();
    *(v237 + *(v294 + 72)) = v515;
    sub_100107FF8();
    *(v237 + *(v295 + 76)) = v503;
    *(v296 + 16) = __dst[1];
    sub_100107FF8();
    v297 = v533;
    sub_100004FB0(&v526);
    v496 = v298;
    sub_10003D1E4();
    sub_100107FF8();
    v495 = v297 + *(v299 + 36);
    sub_100108160();
    v300();
    sub_100107FF8();
    sub_100004FB0(&v525);
    v301 = v549;
    v494 = v302;
    sub_10010861C();
    sub_10003D1E4();
    sub_100004FB0(&v524);
    v493 = v303;
    sub_10010861C();
    sub_10003D1E4();
    sub_100004FB0(&v523);
    v492 = v304;
    sub_10003D1E4();

    v491 = *(&v556 + 1);
    sub_1001087C0();

    sub_100003EA8(&v542);

    sub_100108534();
    sub_10003D1E4();

    sub_1001080B8(&v529);

    sub_1001087C0();

    sub_10000B358(&v541);

    sub_100003EA8(v532);

    sub_100108534();
    sub_10003D1E4();

    sub_1001087C0();

    sub_10000A81C(&v542);

    sub_100108534();
    sub_10003D1E4();
    sub_1001088F0();
    sub_100004ADC();
    sub_100107DA4(v237, v305);
    sub_10000CFD8();
    sub_100108420();
    *(v297 + 48) = v306;
    *(v297 + 56) = &qword_1002318B0;
    sub_10000F000();
    sub_100002A38(v307);
    sub_1000069E4(v297 + v301[14]);
    v308 = (v297 + v301[15]);
    *v308 = v507;
    v308[1] = v278;
    sub_10000EDF4();
    *(v297 + v309) = v278;
    *(v297 + v301[19]) = &qword_1002DA970;
    v310 = *(&__dst[2] + 1);
    if (*(&__dst[2] + 1))
    {
      sub_100108780(*&__dst[2]);

      v499 = v310;
      v311 = v532[0];
      sub_100108628();
    }

    else
    {
      sub_10010851C();
      sub_100108290();
      sub_10003D1E4();
      sub_10000B3A0(v297, 1, v301);
      v311 = v532[0];
      if (v383)
      {

        v396 = sub_100108774();
        sub_100004E24(v396, v397, &qword_100232F70);
        v498 = 0;
        v499 = 0;
      }

      else
      {
        sub_100108780(*(v297 + 48));
        sub_1001088F0();
        sub_100108438(&v530);

        sub_100004ADC();
        sub_100107DA4(v297, v398);
      }

      sub_100108628();
    }

    sub_100108834(v301[8]);
    sub_10003D1E4();
    v491 = v301[9];
    sub_100108014();
    v399();
    sub_100108834(v301[10]);
    sub_10003D1E4();
    sub_100108834(v301[12]);
    sub_10003D1E4();
    v400 = v311;
    sub_100108834(v301[20]);
    sub_10003D1E4();

    v401 = v503;

    sub_100004ADC();
    v497 = v402;
    sub_100107DA4(v533, v403);
    sub_10000CFD8();
    sub_100108420();
    *(v400 + 48) = v405;
    *(v400 + 56) = v404;
    sub_10000F000();
    v407 = *(v406 - 256);
    *v408 = v409;
    v408[1] = v407;
    sub_1000069E4(v400 + v301[14]);
    sub_1001083D4();
    v411 = *(v410 - 256);
    *v412 = v413;
    v412[1] = v411;
    sub_10000EDF4();
    sub_10000AD68(v414);
    *(v400 + v301[19]) = v401;
    LODWORD(v501) = LOBYTE(__dst[3]);
    v495 = v301[8];
    sub_1001081B0();
    v415 = v531[2];
    sub_1001085A0();
    v496 = v301[9];
    sub_100108014();
    v416();
    v493 = v301[10];
    sub_1001081B0();
    sub_1001085A0();
    v492 = v301[12];
    sub_1001081B0();
    sub_1001085A0();
    v494 = v301[20];
    sub_1001081B0();
    sub_10003D1E4();
    sub_100003EA8(&v540);

    sub_1001085D4();
    sub_1001088F0();
    sub_100108534();
    sub_10003D1E4();

    sub_10000B358(&v539);

    sub_1001082F4();

    sub_1001085D4();
    sub_100108534();
    sub_10003D1E4();
    sub_1001088F0();
    sub_10000A81C(&v530);

    sub_100107DA4(v400, v497);
    *v415 = v504;
    *(v415 + 1) = &qword_1002DA970;
    v417 = v556;
    *(v415 + 1) = v555;
    *(v415 + 2) = v417;
    sub_100108690(&v530);

    sub_1000E3B00(__dst);
    *(v415 + 6) = v498;
    *(v415 + 7) = &qword_100238200;
    sub_100003038();
    *&v415[v418] = v419;
    v420 = &v415[v301[13]];
    *v420 = v508;
    *(v420 + 1) = v407;
    sub_1000069E4(&v415[v301[14]]);
    sub_1001083D4();
    sub_100002A38(v421);
    sub_1000051EC(v301[16]);
    sub_1000051EC(v301[17]);
    sub_100108564(v301[18]);
    *&v415[v301[19]] = v411;
    LODWORD(v500) = BYTE1(__dst[3]);
    sub_100008AC4();
    v422 = v531[1];
    v10 = &qword_1002318B0;
    sub_10003D1E4();
    sub_100108014();
    v423();
    sub_100008AC4();
    sub_10003D1E4();
    sub_100008AC4();
    sub_10003D1E4();
    sub_100008AC4();
    sub_10003D1E4();

    v424 = v497;
    sub_100107DA4(v415, v497);
    sub_10000CFD8();
    sub_100108420();
    *(v422 + 6) = v426;
    *(v422 + 7) = v425;
    sub_10000F000();
    sub_100002A38(v427);
    sub_1000069E4(&v422[v301[14]]);
    sub_1001083D4();
    sub_100002A38(v428);
    sub_10000EDF4();
    sub_10000AD68(v429);
    *&v422[v301[19]] = v411;
    v50 = v474;
    sub_1001098C0(v474, v531[0]);

    v430 = sub_100108774();
    sub_100107DA4(v430, v431);
    sub_100007FA8();
    sub_100108290();
    sub_100107FA0();
    sub_10000B358(&v556 + 8);
    swift_isUniquelyReferenced_nonNull_native();
    sub_100108300();
    v53 = v512;
    sub_10014FF48();

    sub_10010811C();
    v432 = sub_100108414();
    sub_100107DA4(v432, v424);
    v433 = sub_10010851C();
    sub_100004E24(v433, &qword_1002DBC28, &qword_100232F70);
    sub_100004238();
LABEL_82:
    sub_1001086F0();
LABEL_83:
    v51 = v557;
    goto LABEL_12;
  }

  v272 = v505;
  v273 = v506;
  sub_1000E3B00(__dst);
  sub_100006D1C();
  sub_100108290();
  sub_100107DFC();
  sub_10010851C();
  v274 = v520;
  sub_10003D1E4();
  v275 = v549;
  sub_10000B3A0(v274, 1, v549);
  if (v383)
  {
    sub_100004E24(v274, &qword_1002DBC28, &qword_100232F70);
    v319 = 0;
  }

  else
  {
    v319 = *(v274 + *(v275 + 44));
    sub_100004ADC();
    sub_100107DA4(v274, v320);
  }

  v514 = v319 + 1;
  v321 = v502;
  if (v319 == -1)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v322 = v273;
  v323 = v258[1];
  v513 = *v258;
  v497 = v323;
  v324 = v258[3];
  v510 = v258[2];
  v500 = v324;
  v325 = v258[5];
  v511 = v258[4];
  sub_100108780(v325);
  v326 = v258[7];
  v509 = v258[6];
  v499 = v326;
  sub_100107FF8();
  sub_100108340(*(v327 + 32));
  v50 = v529;
  v329 = v328;
  sub_10003D1E4();
  sub_100107FF8();
  v495 = *(v330 + 36);
  v272(v50 + v495, v258 + v495, v322);
  sub_100107FF8();
  sub_100108340(*(v331 + 40));
  sub_10003D1E4();
  sub_100107FF8();
  sub_100108340(*(v332 + 48));
  sub_10003D1E4();
  sub_100107FF8();
  sub_1001080AC();
  v334 = (v258 + v333);
  v336 = *v334;
  v335 = v334[1];
  v507 = v336;
  v515 = v335;
  sub_1001087E4();
  LODWORD(v508) = v337;
  sub_100107FF8();
  sub_1001080AC();
  v339 = *(v338 + 64);
  v341 = (v258 + v340);
  v342 = v341[1];
  v489 = *v341;
  v488 = v342;
  LODWORD(v503) = *(v258 + v339);
  sub_100107FF8();
  sub_1001080AC();
  v344 = *(v343 + 72);
  LODWORD(v501) = *(v258 + v345);
  v496 = *(v258 + v344);
  v346 = v496;
  sub_100107FF8();
  sub_1001080AC();
  v491 = *(v347 + 80);
  v516 = *(v258 + v348);
  v349 = v516;
  sub_10003D1E4();

  sub_10000B358(&v528);

  sub_1000026F4(&v529);

  sub_100003EA8(v531);

  sub_10000A81C(&v530);

  sub_1001085D4();
  sub_100004ADC();
  v490 = v350;
  sub_100107DA4(v258, v351);
  *v50 = v513;
  *(v50 + 8) = v342;
  *(v50 + 16) = v510;
  *(v50 + 24) = v349;
  *(v50 + 32) = v511;
  *(v50 + 40) = v321;
  *(v50 + 48) = v509;
  *(v50 + 56) = v346;
  sub_100107FF8();
  sub_100108564(*(v352 + 44));
  sub_100107FF8();
  v354 = (v50 + *(v353 + 52));
  *v354 = v507;
  v354[1] = v329;
  sub_100107FF8();
  sub_10000A834((v50 + *(v355 + 56)));
  sub_100010E0C(v356);
  sub_100107FF8();
  sub_100002A38((v50 + *(v357 + 60)));
  sub_100107FF8();
  sub_1000051EC(*(v358 + 64));
  sub_100107FF8();
  sub_1000051EC(*(v359 + 68));
  sub_100107FF8();
  v10 = v496;
  *(v50 + *(v360 + 72)) = v496;
  sub_100107FF8();
  sub_100108564(*(v361 + 76));
  sub_100107FF8();
  sub_100008AC4();
  v362 = v549;
  sub_1001082C4();
  sub_10003D1E4();
  sub_100108160();
  v363();
  sub_100008AC4();
  sub_100108228();
  sub_10003D1E4();
  sub_100008AC4();
  sub_100108228();
  sub_10003D1E4();
  sub_100008AC4();
  sub_10003D1E4();
  sub_1001085D4();
  sub_10000A81C(&v529);

  sub_1001082F4();

  sub_100003EA8(v531);

  sub_10000B358(&v530);

  sub_100108204();
  sub_100107DA4(v364, v365);
  *v321 = v513;
  v321[1] = &qword_1002318B0;
  v321[2] = v510;
  v321[3] = v10;
  v321[4] = v511;
  v321[5] = v346;
  v321[6] = v509;
  v321[7] = &qword_1002DA970;
  sub_1000DB94C(v362[11]);
  sub_100002A38((v321 + v362[13]));
  sub_10000A834((v321 + v362[14]));
  sub_100010E0C(v366);
  v367 = (v321 + v362[15]);
  *v367 = 0xD000000000000015;
  v367[1] = v518;
  sub_100108278(v362[16]);
  sub_100108278(v362[17]);
  sub_1000DB94C(v362[18]);
  sub_1000DB94C(v362[19]);
  v53 = v519;
  sub_100109674(1, 0, v519);
  sub_100107DA4(v321, v50);
  sub_100007FA8();
  sub_100108290();
  sub_100107FA0();
  sub_1001080B8(&v538);

  sub_10000B358(&v556 + 8);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100108300();
  sub_100108290();
  sub_10014FF48();

  sub_10010811C();
  v368 = v553;
  sub_100108334();
  swift_bridgeObjectRetain_n();
  v369 = v525;
  v370 = sub_100107CCC(v368, v53, v50);
  v525 = v369;
  if (v371)
  {
    v372 = *(v368 + 16);
    sub_100004238();
    sub_1001086F0();
    goto LABEL_75;
  }

  v373 = v370 + 1;
  v50 = v541;
  v10 = v542;
  v53 = v540;
  if (__OFADD__(v370, 1))
  {
    goto LABEL_97;
  }

  v514 = v370;
  sub_100108030();
  v377 = v368;
  while (2)
  {
    v378 = *(v377 + 16);
    if (v373 != v378)
    {
      if (v373 >= v378)
      {
        goto LABEL_88;
      }

      v379 = v53;
      v380 = v10;
      v381 = *(v377 + v376 + 48);
      v382 = *(v377 + v376 + 56);
      v383 = v381 == v374 && v382 == v375;
      if (v383)
      {
        v10 = v380;
      }

      else
      {
        v515 = v376;
        v516 = v377;
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          v10 = v380;
          v53 = v379;
          sub_100108030();
          sub_1001087AC();
LABEL_73:
          ++v373;
          v376 += 16;
          continue;
        }

        if (v373 == v514)
        {
          v10 = v380;
          sub_100108030();
          sub_1001087AC();
        }

        else
        {
          if (v514 >= v378)
          {
            goto LABEL_92;
          }

          v384 = (v516 + 32 + 16 * v514);
          v385 = v384[1];
          v513 = *v384;
          v511 = v385;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1001082F4();
            sub_1001612A4();
            v516 = v391;
          }

          v386 = v516;
          v387 = v516 + 16 * v514;
          *(v387 + 32) = v381;
          *(v387 + 40) = v382;

          if (v373 >= *(v386 + 16))
          {
            goto LABEL_93;
          }

          sub_100003038();
          *(v388 + 48) = v390;
          *(v388 + 56) = v389;

          v553 = v516;
          v10 = v380;
          sub_100108030();
        }

        ++v514;
      }

      v53 = v379;
      goto LABEL_73;
    }

    break;
  }

  v368 = v377;
  v372 = v514;
LABEL_75:

  sub_10000A81C(&v538);

  v392 = *(v368 + 16);
  if (v392 >= v372)
  {
    sub_100107EB0(v372, v392);

    sub_100004ADC();
    v393 = sub_100108414();
    sub_100107DA4(v393, v394);
    v395 = sub_10010851C();
    sub_100004E24(v395, &qword_1002DBC28, &qword_100232F70);
    goto LABEL_83;
  }

LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100100474(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = sub_1000030B8(v2);
  __chkstk_darwin(v3);
  sub_10000306C();
  sub_1000D6484();
  result = Dictionary.init(dictionaryLiteral:)();
  v5 = *(a1 + 48);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return result;
  }

  v101 = result;
  v7 = 0;
  v8 = (v5 + 32);
  v88 = v6 - 1;
  v89 = *(a1 + 48);
  while (1)
  {
    if (v7 >= v6)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v99 = v8;
    v100 = v7;
    memcpy(__dst, v8, 0x88uLL);
    v10 = __dst[10];
    v9 = __dst[11];
    v11 = __dst[3];
    v102 = __dst[2];
    sub_1000E385C(__dst, v106);
    v12 = Dictionary.init(dictionaryLiteral:)();
    v103 = v11;
    if (v9)
    {
      v13 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {

        Data.init(base64Encoded:options:)();
        if (v14 >> 60 == 15)
        {
          sub_1000E3894(__dst);

LABEL_50:

          sub_1000B2EE8();
          swift_allocError();
          *v84 = 1;
          *(v84 + 8) = 0;
          swift_willThrow();
        }

        v15 = objc_opt_self();
        sub_100005CF0();
        isa = Data._bridgeToObjectiveC()().super.isa;
        v17 = [v15 decompressedDataWithGzippedData:isa];

        if (!v17)
        {
          sub_1000E3894(__dst);

          goto LABEL_53;
        }

        v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = sub_100005CF0();
        sub_10009A7A0(v21, v22);

        static String.Encoding.utf8.getter();
        sub_10003CF5C();
        v23 = String.init(data:encoding:)();
        if (v24)
        {
          v25 = v24;
          v104 = v23;
          v26 = v18;
          v27 = v20;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v106[0] = v12;
          v29 = sub_10014EB30(v102, v11);
          v31 = *(v12 + 16);
          v32 = (v30 & 1) == 0;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            goto LABEL_58;
          }

          v34 = v29;
          v35 = v30;
          sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v33))
          {
            sub_10014EB30(v102, v103);
            sub_10000A224();
            if (!v37)
            {
              goto LABEL_60;
            }

            v34 = v36;
          }

          v38 = v106[0];
          if (v35)
          {
            v39 = (*(v106[0] + 56) + 16 * v34);
            *v39 = v104;
            v39[1] = v25;

            v12 = v38;
          }

          else
          {
            sub_1001086C0();
            sub_1000035B8(v45);
            v46 = (v38[6] + 16 * v34);
            *v46 = v102;
            v46[1] = v103;
            v47 = (v38[7] + 16 * v34);
            *v47 = v104;
            v47[1] = v25;
            sub_1001086CC();
            if (v49)
            {
              goto LABEL_59;
            }

            v12 = v38;
            v38[2] = v48;
          }

          v43 = v26;
          v44 = v27;
        }

        else
        {
          sub_10014EB30(v102, v11);
          if (v40)
          {
            v41 = swift_isUniquelyReferenced_nonNull_native();
            v106[0] = v12;
            v42 = *(v12 + 24);
            sub_100099DF4(&qword_1002DBC60, &unk_10023F210);
            _NativeDictionary.ensureUnique(isUnique:capacity:)(v41, v42);
            v12 = v106[0];

            _NativeDictionary._delete(at:)();
          }

          v43 = sub_10003CF5C();
        }

        sub_10000D170(v43, v44);
      }
    }

    v50 = __dst[1];
    v105 = __dst[0];
    if (__dst[9])
    {
      v51 = HIBYTE(__dst[9]) & 0xFLL;
      if ((__dst[9] & 0x2000000000000000) == 0)
      {
        v51 = __dst[8] & 0xFFFFFFFFFFFFLL;
      }

      if (v51)
      {
        break;
      }
    }

    v96 = 0;
    v97 = 0;
LABEL_33:
    v90 = BYTE1(__dst[12]);
    v98 = v12;
    if (__dst[14])
    {
      v95 = *(__dst[14] + 16) != 0;
    }

    else
    {
      v95 = 0;
    }

    v63 = __dst[7];
    v92 = __dst[6];
    v93 = __dst[15];
    v64 = __dst[5];
    v91 = __dst[4];
    v94 = __dst[16];

    sub_1000E3894(__dst);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v101;
    v66 = v50;
    sub_10014EB30(v105, v50);
    sub_10000B818();
    v71 = v69 + v70;
    if (__OFADD__(v69, v70))
    {
      goto LABEL_56;
    }

    v72 = v67;
    v73 = v68;
    sub_100099DF4(&qword_1002DCC50, &unk_100236620);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v65, v71))
    {
      v74 = sub_10014EB30(v105, v66);
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_60;
      }

      v72 = v74;
    }

    v76 = __dst[12];
    v77 = v90 & 1;
    if (v73)
    {
      v101 = v108;
      v78 = (*(v108 + 56) + 96 * v72);
      memcpy(v106, v78, 0x60uLL);
      *v78 = v91;
      v78[1] = v64;
      v78[2] = v92;
      v78[3] = v63;
      v78[4] = v97;
      v78[5] = v96;
      *(v78 + 48) = v77;
      *(v78 + 49) = v76;
      *(v78 + 50) = v95;
      v78[7] = v98;
      v78[8] = v93;
      v78[9] = v94;
      v78[10] = v102;
      v78[11] = v103;
      sub_1000E3B00(v106);
    }

    else
    {
      sub_1000035B8(v108 + 8 * (v72 >> 6));
      v80 = (v79[6] + 16 * v72);
      *v80 = v105;
      v80[1] = v66;
      v81 = v79[7] + 96 * v72;
      *v81 = v91;
      *(v81 + 8) = v64;
      *(v81 + 16) = v92;
      *(v81 + 24) = v63;
      *(v81 + 32) = v97;
      *(v81 + 40) = v96;
      *(v81 + 48) = v77;
      *(v81 + 49) = v76;
      *(v81 + 50) = v95;
      *(v81 + 56) = v98;
      *(v81 + 64) = v93;
      *(v81 + 72) = v94;
      *(v81 + 80) = v102;
      *(v81 + 88) = v103;
      v82 = v79[2];
      v49 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v49)
      {
        goto LABEL_57;
      }

      v101 = v79;
      v79[2] = v83;
    }

    if (v88 == v100)
    {
      return v101;
    }

    v6 = *(v89 + 16);
    v8 = v99 + 136;
    v7 = v100 + 1;
  }

  Data.init(base64Encoded:options:)();
  if (v52 >> 60 == 15)
  {
    sub_1000E3894(__dst);

    goto LABEL_50;
  }

  v53 = objc_opt_self();
  sub_100005CF0();
  v54 = Data._bridgeToObjectiveC()().super.isa;
  v55 = [v53 decompressedDataWithGzippedData:v54];

  if (v55)
  {
    v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = sub_100005CF0();
    sub_10009A7A0(v59, v60);

    static String.Encoding.utf8.getter();
    v61 = String.init(data:encoding:)();
    v96 = v62;
    v97 = v61;
    sub_10000D170(v56, v58);
    goto LABEL_33;
  }

  sub_1000E3894(__dst);

LABEL_53:

  sub_1000B2EE8();
  swift_allocError();
  *v85 = 2;
  *(v85 + 8) = 1;
  swift_willThrow();

  v86 = sub_100005CF0();
  return sub_10009A7A0(v86, v87);
}

void sub_100100C70(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v208 = a3;
  v199 = a1;
  sub_10010834C(a4);
  v7 = type metadata accessor for Date();
  sub_100003724();
  v207 = v8;
  __chkstk_darwin(v9);
  sub_10000306C();
  v206 = v11 - v10;
  v12 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v13 = sub_1000030B8(v12);
  __chkstk_darwin(v13);
  sub_1000037D4();
  v212 = v14;
  sub_100005238();
  __chkstk_darwin(v15);
  sub_100002DD0();
  v211 = v16;
  sub_100005238();
  __chkstk_darwin(v17);
  sub_10000D478();
  sub_10000A1C0(v18);
  v19 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  v20 = sub_1000030B8(v19);
  __chkstk_darwin(v20);
  sub_1000037D4();
  v210 = v21;
  sub_100005238();
  __chkstk_darwin(v22);
  v24 = v187 - v23;
  v25 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  sub_1000030B8(v25);
  sub_100003774();
  __chkstk_darwin(v26);
  sub_10003CF80();
  v27 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_10000307C();
  __chkstk_darwin(v28);
  sub_10000308C();
  sub_100008B9C();
  __chkstk_darwin(v29);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v30);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v31);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v32);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v33);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v34);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v35);
  sub_100002DD0();
  sub_10000690C();
  __chkstk_darwin(v36);
  v38 = v187 - v37;
  v209 = a2;
  sub_100108774();
  sub_100002854();
  sub_10003D1E4();
  v39 = type metadata accessor for TSDataSyncDatasetState(0);
  v40 = sub_100108594();
  sub_10000B3A0(v40, v41, v39);
  if (v49)
  {
    v45 = v39;
    sub_100004E24(v24, &qword_1002DBC28, &qword_100232F70);
    sub_100007B78();
    sub_100002728(v42, v43, v44, v27);
  }

  else
  {
    v45 = v39;
    sub_10003D1E4();
    sub_100004ADC();
    sub_100107DA4(v24, v46);
    v47 = sub_10000A218();
    sub_10000B3A0(v47, v48, v27);
    if (!v49)
    {
      sub_100007C00();
      sub_100107FA0();
      v58 = v212;
      goto LABEL_8;
    }
  }

  sub_100007B78();
  sub_100002728(v50, v51, v52, v7);
  sub_100007B78();
  sub_100002728(v53, v54, v55, v7);
  *(v38 + 4) = 0;
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v38[40] = 1;
  *(v38 + 3) = 0u;
  *(v38 + 4) = 0u;
  *(v38 + 5) = 0u;
  v38[v27[11]] = 2;
  v38[v27[12]] = 2;
  sub_1001083A4(v27[14]);
  sub_1001083A4(v27[15]);
  sub_1001083A4(v27[16]);
  v56 = sub_10000A218();
  sub_10000B3A0(v56, v57, v27);
  v58 = v212;
  if (!v49)
  {
    sub_100004E24(v5, &qword_1002DCC10, &unk_100238220);
  }

LABEL_8:
  sub_100108204();
  sub_10003D1E4();
  sub_100108240();
  sub_10010818C(*(v59 + 56));
  if (*(v60 + 16))
  {
    sub_100004E24(&qword_1002DBC28, &qword_1002DA970, &qword_1002318B0);
    v58 = v212;
    sub_10003D1E4();
  }

  v61 = v210;
  sub_10003D1E4();
  sub_10000B3A0(v61, 1, v45);
  if (v49)
  {
    sub_100004E24(v61, &qword_1002DBC28, &qword_100232F70);
    v65 = v211;
    sub_100007B78();
    sub_100002728(v62, v63, v64, v7);
LABEL_15:
    v70 = v65;
LABEL_16:
    sub_100004E24(v70, &qword_1002DA970, &qword_1002318B0);
    goto LABEL_17;
  }

  v65 = v211;
  sub_10003D1E4();
  sub_100004ADC();
  sub_100107DA4(v61, v66);
  v67 = sub_10000A218();
  sub_10000B3A0(v67, v68, v7);
  if (v69)
  {
    goto LABEL_15;
  }

  v181 = v206;
  v180 = v207;
  (*(v207 + 32))(v206, v65, v7);
  sub_10003D1E4();
  v182 = sub_100108594();
  sub_10000B3A0(v182, v183, v7);
  if (v184)
  {
    (*(v180 + 8))(v181, v7);
    v70 = v58;
    goto LABEL_16;
  }

  Date.timeIntervalSince(_:)();
  v71 = v185;
  v186 = *(v180 + 8);
  v186(v181, v7);
  v186(v58, v7);
  if (v71 > 0.0)
  {
    v191 = 0;
    goto LABEL_18;
  }

LABEL_17:
  v191 = 1;
  v71 = 0.0;
LABEL_18:
  sub_100108240();
  v214 = *(v72 + 64);
  v73 = *(v38 + 1);
  v205 = *v38;
  v74 = *(v38 + 3);
  v209 = *(v38 + 2);
  sub_1001081E0(*(v38 + 4));
  LODWORD(v196) = v38[40];
  v75 = *(v38 + 7);
  sub_100002E6C(*(v38 + 6));
  v76 = *(v38 + 9);
  v206 = *(v38 + 8);
  sub_10010848C(v27[10]);
  sub_10003D1E4();
  v77 = v27[12];
  LODWORD(v188) = v38[v27[11]];
  v202 = v38[v77];
  sub_1001082B8(v27[13]);
  sub_10003D1E4();
  v78 = v27[15];
  v79 = &v38[v27[14]];
  v203 = *v79;
  v80 = v203;
  v81 = v79[8];
  v204 = v81;
  v210 = *&v38[v78];
  LODWORD(v212) = v38[v78 + 8];
  v82 = &v38[v27[16]];
  v207 = *v82;
  v83 = v207;
  LODWORD(v208) = v82[8];

  v201 = v73;

  sub_100108198();
  sub_10003D1E4();
  sub_100006670();
  v211 = v84;
  sub_100107DA4(v38, v85);
  *v4 = v205;
  *(v4 + 8) = v73;
  *(v4 + 16) = v209;
  *(v4 + 24) = v74;
  sub_100108174();
  *(v4 + 32) = v86;
  *(v4 + 40) = v196;
  sub_100108234();
  *(v4 + 48) = v87;
  *(v4 + 56) = v75;
  *(v4 + 64) = v206;
  *(v4 + 72) = v76;
  sub_100108374();
  *(v4 + v88) = v188;
  sub_100002CB4();
  *(v4 + v89) = v90;
  v91 = v4 + v27[14];
  *v91 = v80;
  *(v91 + 8) = v81;
  sub_100013D8C((v4 + v27[15]));
  sub_100108064(v92);
  v94 = (v4 + v93);
  *v94 = v83;
  sub_1001081C8(v94);
  sub_1001082DC();
  v197 = *(v95 + 16) != 0;
  v188 = v27[10];
  sub_1001082C4();
  sub_10003D1E4();
  sub_10010848C(v27[13]);
  sub_100108130();
  sub_10003D1E4();
  v96 = v201;

  sub_100108198();
  sub_10003D1E4();

  v194 = v75;

  v97 = v76;
  sub_100108438(&v216);

  sub_100108198();
  sub_100108210();
  sub_10003D1E4();
  sub_100107DA4(v4, v211);
  *v73 = v205;
  *(v73 + 8) = v96;
  v98 = v96;
  *(v73 + 16) = v209;
  *(v73 + 24) = v74;
  v99 = v74;
  sub_100108174();
  *(v73 + 32) = v100;
  *(v73 + 40) = v196;
  sub_100108234();
  *(v73 + 48) = v101;
  *(v73 + 56) = v75;
  *(v73 + 64) = v206;
  *(v73 + 72) = v97;
  sub_100108384();
  v102 = v197;
  *(v73 + v103) = v197;
  sub_100002CB4();
  *(v73 + v104) = v105;
  sub_1001084A4(v73 + v27[14]);
  sub_100013D8C(v106);
  sub_100108064(v107);
  v109 = (v73 + v108);
  v110 = v207;
  *v109 = v207;
  sub_1001081C8(v109);
  sub_100108240();
  v202 = *(v111 + 8) != 0;
  v187[1] = v27[10];
  v112 = v189;
  sub_10003D1E4();
  v188 = v27[13];
  sub_10003D1E4();

  sub_100108438(&v220);

  sub_100005CC4(&v215);

  sub_1001080B8(&v216);

  sub_100108198();
  sub_10003D1E4();
  v113 = sub_1000033CC();
  sub_100107DA4(v113, v114);
  v115 = v112;
  v116 = v205;
  *v115 = v205;
  *(v115 + 8) = v98;
  *(v115 + 16) = v209;
  *(v115 + 24) = v99;
  sub_100108174();
  *(v115 + 32) = v117;
  *(v115 + 40) = v196;
  sub_100108234();
  *(v115 + 48) = v118;
  *(v115 + 56) = v98;
  *(v115 + 64) = v206;
  *(v115 + 72) = &qword_1002DA970;
  sub_100108384();
  *(v115 + v119) = v102;
  LOBYTE(v99) = v202;
  *(v115 + v27[12]) = v202;
  sub_1001084A4(v115 + v27[14]);
  v120 = v210;
  *v121 = v210;
  sub_100108064(v121);
  v123 = v115 + v122;
  *v123 = v110;
  LOBYTE(v110) = v208;
  *(v123 + 8) = v208;
  sub_1001082D0(v27[10]);
  sub_100004920();
  sub_100108444();
  sub_10003D1E4();
  sub_1001081E0(v27[13]);
  sub_100004920();
  sub_10003D1E4();
  v124 = v201;

  sub_100108604();
  sub_1001085D4();
  sub_100108198();
  sub_10003D1E4();
  v125 = sub_1000033CC();
  sub_100107DA4(v125, v126);
  *v98 = v116;
  *(v98 + 8) = v124;
  v127 = v209;
  *(v98 + 16) = v209;
  *(v98 + 24) = &qword_1002DA970;
  *(v98 + 32) = 0;
  *(v98 + 40) = 1;
  v128 = v194;
  *(v98 + 48) = v198;
  *(v98 + 56) = v128;
  *(v98 + 64) = v206;
  *(v98 + 72) = v102;
  sub_100108374();
  LOBYTE(v102) = v197;
  *(v98 + v129) = v197;
  *(v98 + v27[12]) = v99;
  v130 = v98 + v27[14];
  *v130 = v203;
  LOBYTE(v116) = v204;
  *(v130 + 8) = v204;
  v131 = (v98 + v27[15]);
  *v131 = v120;
  sub_100108064(v131);
  sub_1001080C4((v98 + v132));
  *(v133 + 8) = v110;
  v198 = v27[10];
  sub_1000035C8(&v218);
  v134 = v190;
  sub_10003D1E4();
  v196 = v27[13];
  sub_1000035C8(&v217);
  sub_10003D1E4();
  v135 = v201;

  sub_100108198();
  sub_10003D1E4();
  v136 = v211;
  sub_100107DA4(v98, v211);
  v137 = v205;
  *v134 = v205;
  *(v134 + 8) = v135;
  *(v134 + 16) = v127;
  *(v134 + 24) = &qword_1002DA970;
  *(v134 + 32) = 0;
  *(v134 + 40) = 1;
  *(v134 + 48) = 0;
  *(v134 + 56) = 0;
  v138 = v195;
  *(v134 + 64) = v206;
  *(v134 + 72) = v138;
  *(v134 + 80) = v214;
  *(v134 + v27[11]) = v102;
  LOBYTE(v98) = v202;
  *(v134 + v27[12]) = v202;
  v139 = v134 + v27[14];
  v140 = v203;
  *v139 = v203;
  *(v139 + 8) = v116;
  sub_100013D8C((v134 + v27[15]));
  LOBYTE(v116) = v212;
  *(v141 + 8) = v212;
  sub_1001080C4((v134 + v27[16]));
  sub_1001081C8(v142);
  v206 = v27[10];
  sub_100008AC4();
  v143 = v192;
  sub_10003D1E4();
  sub_100008AC4();
  sub_10003D1E4();
  v144 = v201;

  sub_100108604();
  sub_100108198();
  sub_10003D1E4();
  sub_100107DA4(v134, v136);
  *v143 = v137;
  *(v143 + 8) = v144;
  v145 = v209;
  *(v143 + 16) = v209;
  *(v143 + 24) = &qword_1002318B0;
  *(v143 + 32) = 0;
  *(v143 + 40) = 1;
  *(v143 + 48) = 0u;
  *(v143 + 64) = 0u;
  *(v143 + 80) = v214;
  LOBYTE(v134) = v197;
  *(v143 + v27[11]) = v197;
  *(v143 + v27[12]) = v98;
  v146 = v143 + v27[14];
  *v146 = v140;
  v147 = v204;
  *(v146 + 8) = v204;
  sub_100013D8C((v143 + v27[15]));
  *(v148 + 8) = v116;
  v149 = v143 + v27[16];
  v150 = v207;
  *v149 = v207;
  LOBYTE(v136) = v208;
  *(v149 + 8) = v208;
  sub_100002E6C(v27[10]);
  sub_10010842C();
  sub_10003D1E4();
  sub_1001082D0(v27[13]);
  sub_1001084F8();
  sub_100012D44();
  sub_10000B358(&v220);

  sub_100108198();
  sub_10003D1E4();
  v151 = v211;
  sub_100107DA4(v143, v211);
  v152 = v201;
  *v140 = v205;
  *(v140 + 8) = v152;
  *(v140 + 16) = v145;
  *(v140 + 24) = &qword_1002318B0;
  sub_10010857C();
  *(v140 + 80) = v214;
  *(v140 + v27[11]) = v134;
  sub_100002CB4();
  *(v140 + v153) = v154;
  v155 = v140 + v27[14];
  *v155 = v203;
  *(v155 + 8) = v147;
  v156 = (v140 + v27[15]);
  v157 = v210;
  *v156 = v210;
  sub_100108064(v156);
  v159 = v140 + v158;
  *v159 = v150;
  *(v159 + 8) = v136;
  sub_100108240();
  v213 = *(v160 + 80);
  v161 = v27[10];
  sub_100008774(&v219);
  v162 = v193;
  sub_10003D1E4();
  v206 = v27[13];
  sub_100108140();
  sub_100108228();
  sub_10003D1E4();
  sub_1001080B8(&v220);

  sub_10003D1E4();
  sub_10003D1E4();
  sub_100107DA4(v140, v151);
  *v162 = v213;
  *(v162 + 16) = v145;
  *(v162 + 24) = &qword_1002318B0;
  *(v162 + 32) = 0;
  *(v162 + 40) = 1;
  *(v162 + 48) = 0u;
  *(v162 + 64) = 0u;
  sub_100108384();
  LOBYTE(v134) = v197;
  *(v162 + v163) = v197;
  sub_100002CB4();
  *(v162 + v164) = v165;
  v166 = v162 + v27[14];
  v167 = v203;
  *v166 = v203;
  LOBYTE(v145) = v204;
  *(v166 + 8) = v204;
  v168 = v162 + v27[15];
  *v168 = v157;
  v169 = v212;
  *(v168 + 8) = v212;
  sub_1001080C4((v162 + v27[16]));
  sub_1001081C8(v170);
  sub_100108444();
  sub_10003D1E4();
  sub_100007664();
  sub_10003D1E4();
  sub_10003D1E4();
  v171 = sub_1000033CC();
  sub_100107DA4(v171, v172);
  *v161 = v213;
  v173 = v200;
  *(v161 + 16) = v209;
  *(v161 + 24) = v173;
  *(v161 + 32) = 0;
  *(v161 + 40) = 1;
  *(v161 + 48) = 0u;
  *(v161 + 64) = 0u;
  sub_100108374();
  *(v161 + v174) = v134;
  sub_100002CB4();
  *(v161 + v175) = v176;
  v177 = v161 + v27[14];
  *v177 = v167;
  *(v177 + 8) = v145;
  v178 = v161 + v27[15];
  *v178 = v157;
  *(v178 + 8) = v169;
  v179 = (v161 + v27[16]);
  *v179 = v71;
  sub_100010E0C(v179);
}
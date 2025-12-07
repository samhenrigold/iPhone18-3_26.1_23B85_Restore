uint64_t sub_19210(uint64_t a1, void *a2)
{
  sub_8BE1C();
  sub_622C(v24, v24[3]);
  if (sub_8B5CC())
  {
    sub_2714(v24);
    return 0;
  }

  sub_8BE1C();
  sub_622C(v23, v23[3]);
  v3 = sub_8B63C();
  sub_2714(v23);
  sub_2714(v24);
  if (v3)
  {
    return 0;
  }

  if (qword_BF838 != -1)
  {
    swift_once();
  }

  sub_622C(qword_C3E30, qword_C3E48);
  if ((sub_7F1F4() & 1) == 0)
  {
    return 2;
  }

  v5 = a2[3];
  v6 = a2[4];
  sub_622C(a2, v5);
  v7 = *(v6 + 144);
  v8 = *(v7(v5, v6) + 16);

  if (v8)
  {
    v9 = v7(v5, v6);
    v10 = *(v9 + 16);
    v11 = (v9 + 56);
    if (!v10)
    {
LABEL_16:

      return 7;
    }

    while (1)
    {
      v12 = *(v11 - 1) == 0xD00000000000001BLL && 0x80000000000953B0 == *v11;
      if (!v12 && (sub_8D45C() & 1) == 0)
      {
        break;
      }

      v11 += 4;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }
  }

  v13 = a2[3];
  v14 = a2[4];
  sub_622C(a2, v13);
  if ((*(v14 + 40))(v13, v14))
  {
    v15 = a2[3];
    v16 = a2[4];
    sub_622C(a2, v15);
    if (((*(v16 + 48))(v15, v16) & 1) == 0)
    {
      return 1;
    }
  }

  v17 = a2[3];
  v18 = a2[4];
  sub_622C(a2, v17);
  if ((*(v18 + 16))(v17, v18) == 4)
  {
    return 4;
  }

  v19 = a2[3];
  v20 = a2[4];
  sub_622C(a2, v19);
  if ((*(v20 + 16))(v19, v20) == 5)
  {
    return 5;
  }

  v21 = a2[3];
  v22 = a2[4];
  sub_622C(a2, v21);
  if ((*(v22 + 16))(v21, v22) == 6)
  {
    return 6;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_19520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19590@<X0>(uint64_t a1@<X8>)
{
  sub_8C7CC();
  if (sub_8C7BC())
  {
    sub_8C79C();
    sub_1D468();
    sub_8BAAC();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = sub_8B78C();

  return sub_6270(a1, v2, 1, v3);
}

uint64_t *sub_19620()
{
  v0 = type metadata accessor for SharedGlobals(0);
  v1 = (v0 - 8);
  __chkstk_darwin(v0);
  sub_1D164();
  v4 = v2 - v3;
  __chkstk_darwin(v5);
  v7 = (&v31 - v6);
  v35 = &unk_B9EE8;
  v36 = &off_B9F88;
  type metadata accessor for HomeCommunicationFeatureManager();
  v8 = swift_allocObject();
  sub_E58C(v34, &unk_B9EE8);
  *(v8 + 40) = &unk_B9EE8;
  *(v8 + 48) = &off_B9F88;
  sub_2714(v34);
  v32 = [objc_opt_self() isAnnounceEnabled];
  v35 = &unk_B9EE8;
  v36 = &off_B9F88;
  v9 = swift_allocObject();
  sub_E58C(v34, &unk_B9EE8);
  *(v9 + 40) = &unk_B9EE8;
  *(v9 + 48) = &off_B9F88;
  sub_2714(v34);
  v10 = type metadata accessor for SKFlowFactory();
  v11 = sub_1D438(v10);
  v7[5] = v10;
  v7[6] = &off_BB630;
  v7[2] = v11;
  sub_19590(v7 + v1[9]);
  v12 = type metadata accessor for RadarUtils();
  v13 = swift_allocObject();
  sub_8C88C();
  swift_allocObject();
  *(v13 + 16) = sub_8C87C();
  v14 = (v7 + v1[10]);
  v14[3] = v12;
  v14[4] = &off_BAD20;
  *v14 = v13;
  v15 = sub_8CBEC();
  v16 = sub_8CBDC();
  v35 = v15;
  v36 = &protocol witness table for ReferenceResolutionClient;
  v34[0] = v16;
  type metadata accessor for SharedNeedsValueContext();
  v17 = swift_allocObject();
  sub_1CED8();
  *(v17 + 16) = sub_8CE6C();
  *v7 = v9;
  sub_E528(v34, v33);
  v18 = type metadata accessor for DirectInvocationTransformer();
  v19 = sub_1D438(v18);
  type metadata accessor for NLTransformer();
  v20 = swift_allocObject();
  sub_E58C(v33, v33[3]);
  sub_E6E8();
  __chkstk_darwin(v21);
  v23 = sub_1D0B4(v22, v31);
  v24(v23);

  v26 = sub_1C5C4(v25, *"sendAnnouncementCATsSimple", v19, v20);
  sub_2714(v33);
  sub_2714(v34);
  v7[1] = v26;
  *(v7 + v1[12]) = v17;
  v27 = type metadata accessor for CATBundleRegisterer();
  v28 = sub_1D438(v27);
  sub_191AC(v7, v4);
  v29 = sub_1C3CC(v8, v32, v4, v28);
  sub_1CF2C(v7, type metadata accessor for SharedGlobals);
  return v29;
}

uint64_t sub_19994@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_8BE0C();
  sub_E6E8();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1D164();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v15 = v35 - v14;
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v16 = sub_8CD0C();
  v17 = sub_33F4(v16, qword_C3DF8);
  v18 = *(v8 + 16);
  v36 = a1;
  v18(v15, a1, v6);
  v35[3] = v17;
  v19 = sub_8CCEC();
  v20 = sub_8D11C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = sub_1D358();
    v35[2] = a2;
    v22 = v21;
    v23 = sub_6630();
    v35[1] = v3;
    v24 = v23;
    v37 = v23;
    *v22 = 136315138;
    v18(v12, v15, v6);
    v25 = sub_72160(v12);
    v27 = v26;
    (*(v8 + 8))(v15, v6);
    v28 = sub_862D8(v25, v27, &v37);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_0, v19, v20, "#HomeCommunicationFlowDelegatePlugin executing findFlowForX with parse: %s", v22, 0xCu);
    sub_2714(v24);
    sub_E890(v24);
    sub_E890(v22);
  }

  else
  {

    (*(v8 + 8))(v15, v6);
  }

  if (sub_19C4C(v36))
  {
    sub_8B39C();
  }

  else
  {
    v30 = sub_8CCEC();
    v31 = sub_8D12C();
    if (sub_1D1B8(v31))
    {
      v32 = sub_E8E0();
      sub_1D274(v32);
      sub_1D214();
    }

    return sub_8B38C();
  }
}

uint64_t *sub_19C4C(void *a1)
{
  v369 = sub_8BDEC();
  sub_E6E8();
  v362 = v2;
  __chkstk_darwin(v3);
  sub_1D164();
  v379 = (v4 - v5);
  __chkstk_darwin(v6);
  sub_1D230(&v353 - v7);
  v8 = sub_2664(&qword_C0E00, &qword_8F9A8);
  sub_65E4(v8);
  sub_1D394();
  __chkstk_darwin(v9);
  sub_1D370();
  sub_1D230(v10);
  v11 = sub_2664(&qword_C0E08, &qword_8F9B0);
  sub_65E4(v11);
  sub_1D394();
  __chkstk_darwin(v12);
  sub_1D370();
  sub_1D230(v13);
  v14 = sub_2664(&qword_C0E10, &qword_8F9B8);
  sub_65E4(v14);
  sub_1D394();
  __chkstk_darwin(v15);
  sub_1D370();
  sub_1D230(v16);
  v17 = sub_2664(&qword_C0E18, &unk_8F9C0);
  sub_65E4(v17);
  sub_1D394();
  __chkstk_darwin(v18);
  sub_1D370();
  sub_1D174(v19);
  v20 = sub_8CA2C();
  v21 = sub_65E4(v20);
  __chkstk_darwin(v21);
  sub_16854();
  v380 = v23 - v22;
  v361 = sub_8C99C();
  sub_E6E8();
  v375 = v24;
  __chkstk_darwin(v25);
  sub_16854();
  v28 = sub_1D174(v27 - v26);
  v367 = type metadata accessor for SmsNLIntent(v28);
  sub_6574();
  __chkstk_darwin(v29);
  sub_1D164();
  sub_115DC();
  __chkstk_darwin(v30);
  sub_1D174(&v353 - v31);
  v371 = sub_8C71C();
  sub_E6E8();
  v381 = v32;
  __chkstk_darwin(v33);
  sub_1D164();
  sub_115DC();
  __chkstk_darwin(v34);
  sub_1D174(&v353 - v35);
  v364 = sub_8BDBC();
  sub_E6E8();
  v363 = v36;
  __chkstk_darwin(v37);
  sub_16854();
  sub_1D174(v39 - v38);
  v40 = sub_8BE0C();
  sub_E6E8();
  v42 = v41;
  __chkstk_darwin(v43);
  sub_1D164();
  sub_115DC();
  v45 = __chkstk_darwin(v44);
  v383 = &v353 - v46;
  __chkstk_darwin(v45);
  sub_115DC();
  __chkstk_darwin(v47);
  v49 = (&v353 - v48);
  if (qword_BF818 != -1)
  {
    sub_E754(&qword_BF818);
  }

  v50 = sub_8CD0C();
  v51 = sub_33F4(v50, qword_C3DF8);
  v53 = v42 + 16;
  v52 = *(v42 + 16);
  v52(v49, a1, v40);
  v54 = sub_8CCEC();
  v55 = sub_8D11C();
  v56 = os_log_type_enabled(v54, v55);
  v376 = a1;
  v378 = v42 + 16;
  v374 = v52;
  if (v56)
  {
    v57 = sub_1D358();
    v370 = v51;
    v58 = v57;
    v353 = sub_6630();
    v390 = v353;
    *v58 = 136315138;
    v59 = v377;
    v52(v377, v49, v40);
    v60 = sub_72160(v59);
    v62 = v61;
    v63 = sub_1D2BC();
    v64(v63);
    v65 = v60;
    v67 = v381;
    v66 = v382;
    v49 = sub_862D8(v65, v62, &v390);

    *(v58 + 4) = v49;
    _os_log_impl(&dword_0, v54, v55, "#HomeCommunicationFlowDelegatePlugin Executing makeFlowFor with parse: %s", v58, 0xCu);
    v68 = v353;
    sub_2714(v353);
    sub_E890(v68);
    v69 = v58;
    v51 = v370;
    sub_E890(v69);
  }

  else
  {

    v71 = sub_1D2BC();
    v72(v71);
    v67 = v381;
    v66 = v382;
  }

  v70 = v40;
  v73 = v379;
  v74 = v383;
  if (*(v66 + 16) != 1)
  {
    v93 = v51;
    v94 = sub_8CCEC();
    v95 = sub_8D11C();
    if (sub_1D1B8(v95))
    {
      v96 = sub_E8E0();
      sub_1D274(v96);
      sub_1D144(&dword_0, v97, v98, "The entire Home Communication feature is disabled.");
      sub_1D214();
    }

    sub_E528(v66 + 32, &v390);
    type metadata accessor for HomeCommunicationCATsSimple(0);
    sub_1D2A4();
    v383 = sub_1D28C();
    type metadata accessor for SendAnnouncementCATsSimple(0);
    sub_1D2A4();
    v99 = sub_1D28C();
    v100 = sub_1D340(v99);
    type metadata accessor for ReadAnnouncementCATsSimple(v100);
    sub_1D2A4();
    sub_1D28C();
    sub_1D3C0();
    sub_1D2A4();
    sub_1D28C();
    sub_1D1F4();
    sub_1D34C();
    sub_E6E8();
    __chkstk_darwin(v101);
    v103 = sub_1D0B4(v102, v353);
    v104(v103);
    v105 = type metadata accessor for SharedGlobals(0);
    sub_1D450(v105);
    v106 = sub_1D248();
    sub_E63C(v106, v107);
    v108 = type metadata accessor for UnsupportedDialogFlow();
    sub_1D2F4(v108);
    sub_1D1D4();
    sub_1D280();
    sub_E6E8();
    __chkstk_darwin(v109);
    sub_16854();
    v111 = sub_1D12C(v110);
    v112(v111);
    v113 = sub_1D408();
    sub_1D4B0(v113);
    v49[2] = 0;
    sub_E510(&v384, (v49 + 3));
    v114 = v382;
    v49[8] = v383;
    v49[9] = v114;
    v49[10] = v73;
    v49[11] = v93;
    sub_2714(&v387);
    sub_2714(&v390);
    v390 = v49;
    sub_1D0D4();
    sub_1CE90(v115, 255, v116, &unk_946A0);
    sub_1D23C();
    v92 = sub_8B33C();
    goto LABEL_14;
  }

  v75 = v376;
  v76 = v374;
  v374(v383, v376, v70);
  v77 = (*(v53 + 88))(v74, v70);
  if (v77 == enum case for Parse.NLv3IntentOnly(_:))
  {
LABEL_8:
    v78 = sub_1D328();
    v79(v78);
    v80 = v51;
    v81 = sub_8CCEC();
    v82 = sub_8D11C();
    if (sub_1D1B8(v82))
    {
      v83 = sub_E8E0();
      sub_1D274(v83);
      sub_1D144(&dword_0, v84, v85, "#HomeCommunicationFlowDelegatePlugin NLv3/NLv4/USO");
      sub_E890(v70);
    }

    v76(v377, v376, v70);
    v86 = v373;
    sub_8BDAC();
    sub_E528(v66 + 32, &v390);
    sub_8B3FC();
    sub_1D2D8();
    sub_E6E8();
    __chkstk_darwin(v87);
    sub_16854();
    v89 = sub_1D114(v88);
    v90(v89);
    v91 = sub_1CA98(v86, v80, &v387);
    sub_2714(&v390);
    v390 = v91;
    v92 = type metadata accessor for HomeCommunicationFlow(0);
    sub_1CE90(&qword_C0D28, 255, type metadata accessor for HomeCommunicationFlow, &unk_8F868);
    sub_1D23C();
    sub_8B33C();
    sub_1D388();
LABEL_14:

    return v92;
  }

  if (v77 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v118 = v70;
    v119 = v75;
    v120 = v383;
    (*(v53 + 96))(v383, v118);
    v121 = *&v120[*(sub_2664(&qword_C0E28, &qword_938D0) + 48)];
    v122 = v372;
    v123 = v120;
    v124 = v371;
    (*(v67 + 32))(v372, v123, v371);
    v383 = v121;
    v125 = sub_8BDFC();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v379 = v125;
      v126 = *(v67 + 16);
      v127 = v365;
      v126(v365, v122, v124);
      v128 = sub_8CCEC();
      v129 = sub_8D11C();
      v130 = os_log_type_enabled(v128, v129);
      v370 = v51;
      if (v130)
      {
        v131 = sub_1D358();
        v132 = sub_6630();
        v390 = v132;
        *v131 = 136315138;
        sub_1CE90(&qword_C0E98, 255, &type metadata accessor for NLIntent, &protocol conformance descriptor for NLIntent);
        v133 = sub_8D43C();
        v134 = v127;
        v136 = v135;
        v137 = *(v67 + 8);
        v137(v134, v124);
        v138 = sub_862D8(v133, v136, &v390);

        *(v131 + 4) = v138;
        _os_log_impl(&dword_0, v128, v129, "NL intent: %s", v131, 0xCu);
        sub_2714(v132);
        sub_E890(v132);
        sub_E890(v131);
      }

      else
      {

        v137 = *(v67 + 8);
        v137(v127, v124);
      }

      v183 = v366;
      v118 = v372;
      v126(v366, v372, v124);
      v184 = sub_7323C();
      sub_1D0EC();
      if (v184)
      {
        v126(v183, v118, v124);
        if (qword_BF8B8 != -1)
        {
          swift_once();
        }

        sub_1D1A0();
        sub_1CE90(v185, 255, v186, &unk_93AB0);
        v187 = sub_8C4CC();
        sub_1D0EC();
        v188 = *(v187 + 16);
        v189 = v361;
        v190 = v360;
        if (v188)
        {
          v390 = _swiftEmptyArrayStorage;
          sub_551CC(0, v188, 0);
          v191 = v390;
          v378 = v187;
          v192 = v187 + 40;
          do
          {

            sub_1D37C();
            sub_8C96C();
            v390 = v191;
            v194 = v191[2];
            v193 = v191[3];
            if (v194 >= v193 >> 1)
            {
              sub_551CC((v193 > 1), v194 + 1, 1);
              v191 = v390;
            }

            v191[2] = v194 + 1;
            (*(v375 + 32))(v191 + ((*(v375 + 80) + 32) & ~*(v375 + 80)) + *(v375 + 72) * v194, v190, v189);
            v192 += 16;
            --v188;
          }

          while (v188);
        }

        else
        {

          v191 = _swiftEmptyArrayStorage;
        }

        v288 = sub_8CCEC();
        v289 = sub_8D11C();

        if (os_log_type_enabled(v288, v289))
        {
          v290 = sub_1D358();
          v291 = sub_6630();
          v390 = v291;
          *v290 = 136315138;
          v292 = sub_8D05C();
          v294 = sub_862D8(v292, v293, &v390);

          *(v290 + 4) = v294;
          _os_log_impl(&dword_0, v288, v289, "Non-existing targets - %s, cannot receive announcements.", v290, 0xCu);
          sub_2714(v291);
          sub_E890(v291);
          sub_E890(v290);
        }

        sub_1D184();
        type metadata accessor for HomeCommunicationCATsSimple(0);
        sub_1D498();
        v295 = sub_1D420();
        v296 = sub_1D340(v295);
        type metadata accessor for SendAnnouncementCATsSimple(v296);
        sub_1D498();
        v297 = sub_1D420();
        sub_1D3D8(v297);
        sub_1D498();
        v377 = sub_1D420();
        type metadata accessor for SkipAnnouncementCATsSimple(0);
        sub_1D498();
        v298 = sub_1D420();
        sub_E58C(&v390, v391);
        sub_E6E8();
        __chkstk_darwin(v299);
        sub_16854();
        v302 = v301 - v300;
        (*(v303 + 16))(v301 - v300);
        v304 = type metadata accessor for SharedGlobals(0);
        v388 = v304;
        v389 = &off_BB508;
        v305 = sub_E5DC(&v387);
        sub_E63C(v302, v305);
        type metadata accessor for UnsupportedDialogFlow();
        v306 = swift_allocObject();
        sub_E58C(&v387, v388);
        sub_E6E8();
        __chkstk_darwin(v307);
        sub_16854();
        v310 = v309 - v308;
        (*(v311 + 16))(v309 - v308);
        v385 = v304;
        v386 = &off_BB508;
        v312 = sub_E5DC(&v384);
        sub_E63C(v310, v312);
        v306[2] = v191;
        sub_E510(&v384, (v306 + 3));
        v313 = v378;
        v306[8] = v382;
        v306[9] = v313;
        v306[10] = v377;
        v306[11] = v298;
        sub_2714(&v387);
        sub_2714(&v390);
        v390 = v306;
        sub_1D0D4();
        sub_1CE90(v314, 255, v315, &unk_946A0);
        sub_1D23C();
        v92 = sub_8B33C();
        goto LABEL_73;
      }

      v195 = v358;
      v196 = v124;
      v126(v358, v118, v124);
      if (qword_BF890 != -1)
      {
        swift_once();
      }

      sub_1D1A0();
      sub_1CE90(v197, 255, v198, &unk_93AB0);
      v199 = v359;
      sub_8C49C();
      sub_1D0EC();
      v200 = sub_8C4DC();
      v201 = sub_3364(v199, 1, v200);
      sub_1D05C(v199, &qword_C0E18, &unk_8F9C0);
      v174 = v379;
      if (v201 == 1)
      {
        sub_1D184();
        sub_8BE1C();
        sub_1D2D8();
        sub_1D280();
        sub_E6E8();
        __chkstk_darwin(v202);
        sub_16854();
        v204 = sub_1D114(v203);
        v205(v204);
        sub_1CBD4(&v387, v195, 0);
        sub_2714(&v390);
        v206 = sub_2664(&qword_C0E78, &qword_8F9F0);
        v207 = v356;
        v210 = sub_1D3A0(v356, v208, v209, v206);
        type metadata accessor for SendAnnouncementRCHFlowDelegate(v210);
        sub_1CE90(&qword_C0E80, 255, type metadata accessor for SendAnnouncementRCHFlowDelegate, &protocol conformance descriptor for BaseRCHFlowDelegate<A, B>);
        sub_8B8DC();
        sub_1D468();
        sub_1D05C(v207, &qword_C0E10, &qword_8F9B8);
        v390 = v199;
        v92 = &qword_C0E88;
        v211 = sub_1D37C();
        sub_2664(v211, v212);
        sub_1CE3C(&qword_C0E90, &qword_C0E88, &qword_8F9F8);
        sub_1D23C();
        sub_8B33C();
        sub_1D388();

        v137(v118, v196);
        return v92;
      }

      v175 = v370;
      v232 = sub_8CCEC();
      v233 = sub_8D11C();
      if (sub_1D1B8(v233))
      {
        v234 = sub_E8E0();
        sub_1D274(v234);
        sub_1D144(&dword_0, v235, v236, "Announcing to a contact or relationship isn't supported.");
        sub_1D214();
      }

      sub_1D184();
      type metadata accessor for HomeCommunicationCATsSimple(0);
      sub_1D480();
      v237 = sub_1D3F0();
      v238 = sub_1D340(v237);
      type metadata accessor for SendAnnouncementCATsSimple(v238);
      sub_1D480();
      v239 = sub_1D3F0();
      sub_1D3D8(v239);
      sub_1D480();
      sub_1D3F0();
      sub_1D3C0();
      sub_1D480();
      sub_1D3F0();
      sub_1D1F4();
      sub_1D34C();
      sub_E6E8();
      __chkstk_darwin(v240);
      v242 = sub_1D0B4(v241, v353);
      v243(v242);
      v244 = type metadata accessor for SharedGlobals(0);
      sub_1D450(v244);
      v245 = sub_1D248();
      sub_E63C(v245, v246);
      v247 = type metadata accessor for UnsupportedDialogFlow();
      sub_1D2F4(v247);
      sub_1D1D4();
      sub_1D280();
      sub_E6E8();
      __chkstk_darwin(v248);
      sub_16854();
      v250 = sub_1D12C(v249);
      v251(v250);
      v252 = sub_1D408();
      sub_1D4B0(v252);
      v253 = 1;
LABEL_72:
      v174[2] = v253;
      sub_E510(&v384, (v174 + 3));
      v350 = v378;
      v174[8] = v382;
      v174[9] = v350;
      v174[10] = v118;
      v174[11] = v175;
      sub_2714(&v387);
      sub_2714(&v390);
      v390 = v174;
      sub_1D0D4();
      sub_1CE90(v351, 255, v352, &unk_946A0);
      sub_1D23C();
      v92 = sub_8B33C();
LABEL_73:

      (*(v381 + 8))(v372, v371);
      return v92;
    }

    v174 = v125;
    v175 = v51;
    objc_opt_self();
    sub_1D248();
    v176 = swift_dynamicCastObjCClass();
    if (v176)
    {
      v177 = v176;
      if ([v176 userNotificationType] == &dword_0 + 2)
      {
        v178 = sub_8CCEC();
        v179 = sub_8D12C();
        if (sub_1D1B8(v179))
        {
          v180 = sub_E8E0();
          sub_1D274(v180);
          sub_1D144(&dword_0, v181, v182, "Delivery failure occurred while attempting to read announcements on airpods.");
          sub_1D214();
        }

        v92 = type metadata accessor for BaseFlow();
        v390 = sub_1D438(v92);
        sub_1CE90(&qword_C00E0, 255, type metadata accessor for BaseFlow, &unk_8E668);
        sub_1D23C();
      }

      else
      {
        if ([v177 readType] == &dword_0 + 2)
        {
          v379 = v174;
          v267 = sub_8CCEC();
          v268 = sub_8D11C();
          if (sub_1D1B8(v268))
          {
            v269 = sub_E8E0();
            sub_1D274(v269);
            sub_1D144(&dword_0, v270, v271, "Repeating announcements isn't supported.");
            sub_1D214();
          }

          sub_1D184();
          type metadata accessor for HomeCommunicationCATsSimple(0);
          sub_1D2A4();
          v272 = sub_1D28C();
          v273 = sub_1D340(v272);
          type metadata accessor for SendAnnouncementCATsSimple(v273);
          sub_1D2A4();
          v274 = sub_1D28C();
          sub_1D3D8(v274);
          sub_1D2A4();
          sub_1D28C();
          sub_1D3C0();
          sub_1D2A4();
          sub_1D28C();
          sub_1D1F4();
          sub_1D34C();
          sub_E6E8();
          __chkstk_darwin(v275);
          v277 = sub_1D0B4(v276, v353);
          v278(v277);
          v279 = type metadata accessor for SharedGlobals(0);
          sub_1D450(v279);
          v280 = sub_1D248();
          sub_E63C(v280, v281);
          v282 = type metadata accessor for UnsupportedDialogFlow();
          sub_1D2F4(v282);
          sub_1D1D4();
          sub_1D280();
          sub_E6E8();
          __chkstk_darwin(v283);
          sub_16854();
          v285 = sub_1D12C(v284);
          v286(v285);
          v287 = sub_1D408();
          sub_1D4B0(v287);
          v253 = 2;
          goto LABEL_72;
        }

        sub_1D184();
        sub_8BE1C();
        sub_1D2D8();
        sub_1D280();
        sub_E6E8();
        __chkstk_darwin(v316);
        sub_16854();
        v318 = sub_1D114(v317);
        v319(v318);
        sub_1CD10(&v387, v175, type metadata accessor for ReadAnnouncementRCHFlowDelegate, &qword_C20F8, &qword_C2100);
        sub_2714(&v390);
        v320 = sub_2664(&qword_C0E50, &qword_8F9E0);
        v321 = v354;
        v324 = sub_1D3A0(v354, v322, v323, v320);
        type metadata accessor for ReadAnnouncementRCHFlowDelegate(v324);
        sub_1CE90(&qword_C0E58, 255, type metadata accessor for ReadAnnouncementRCHFlowDelegate, &protocol conformance descriptor for BaseRCHFlowDelegate<A, B>);
        sub_8B8DC();
        sub_1D468();
        sub_1D05C(v321, &qword_C0E08, &qword_8F9B0);
        v390 = v119;
        v92 = &qword_C0E60;
        v325 = sub_1D37C();
        sub_2664(v325, v326);
        sub_1CE3C(&qword_C0E68, &qword_C0E60, &qword_8F9E8);
        sub_1D23C();
      }

      sub_8B33C();
      sub_1D388();

      (*(v67 + 8))(v122, v371);
      return v92;
    }

    objc_opt_self();
    sub_1D248();
    if (swift_dynamicCastObjCClass())
    {
      sub_1D184();
      sub_8BE1C();
      sub_1D2D8();
      sub_1D280();
      sub_E6E8();
      __chkstk_darwin(v254);
      sub_16854();
      v256 = sub_1D114(v255);
      v257(v256);
      sub_1CD10(&v387, v51, type metadata accessor for StopAnnouncementRCHFlowDelegate, &qword_C3828, &qword_C3830);
      sub_2714(&v390);
      v258 = sub_2664(&qword_C0E30, &qword_8F9D0);
      v259 = v355;
      v262 = sub_1D3A0(v355, v260, v261, v258);
      type metadata accessor for StopAnnouncementRCHFlowDelegate(v262);
      sub_1CE90(&qword_C0E38, 255, type metadata accessor for StopAnnouncementRCHFlowDelegate, &protocol conformance descriptor for BaseRCHFlowDelegate<A, B>);
      sub_8B8DC();
      sub_1D468();
      sub_1D05C(v259, &qword_C0E00, &qword_8F9A8);
      v390 = v119;
      v92 = &qword_C0E40;
      v263 = sub_1D37C();
      sub_2664(v263, v264);
      sub_1CE3C(&qword_C0E48, &qword_C0E40, &qword_8F9D8);
      sub_1D23C();
      sub_8B33C();
      sub_1D388();

      (*(v67 + 8))(v372, v371);
      return v92;
    }

    objc_opt_self();
    sub_1D248();
    v327 = swift_dynamicCastObjCClass();
    v328 = v371;
    if (v327)
    {
      v379 = v174;
      v329 = sub_8CCEC();
      v330 = sub_8D11C();
      if (sub_1D1B8(v330))
      {
        v331 = sub_E8E0();
        sub_1D274(v331);
        sub_1D144(&dword_0, v332, v333, "Skipping announcements isn't supported.");
        sub_1D214();
      }

      sub_1D184();
      type metadata accessor for HomeCommunicationCATsSimple(0);
      sub_1D2A4();
      v334 = sub_1D28C();
      v335 = sub_1D340(v334);
      type metadata accessor for SendAnnouncementCATsSimple(v335);
      sub_1D2A4();
      v336 = sub_1D28C();
      sub_1D3D8(v336);
      sub_1D2A4();
      sub_1D28C();
      sub_1D3C0();
      sub_1D2A4();
      sub_1D28C();
      sub_1D1F4();
      sub_1D34C();
      sub_E6E8();
      __chkstk_darwin(v337);
      v339 = sub_1D0B4(v338, v353);
      v340(v339);
      v341 = type metadata accessor for SharedGlobals(0);
      sub_1D450(v341);
      v342 = sub_1D248();
      sub_E63C(v342, v343);
      v344 = type metadata accessor for UnsupportedDialogFlow();
      sub_1D2F4(v344);
      sub_1D1D4();
      sub_1D280();
      sub_E6E8();
      __chkstk_darwin(v345);
      sub_16854();
      v347 = sub_1D12C(v346);
      v348(v347);
      v349 = sub_1D408();
      sub_1D4B0(v349);
      v253 = 3;
      goto LABEL_72;
    }

    (*(v67 + 8))(v372, v328);
    v75 = v119;
    v70 = v118;
    v76 = v374;
    goto LABEL_28;
  }

  if (v77 != enum case for Parse.directInvocation(_:))
  {
    if (v77 == enum case for Parse.NLv4IntentOnly(_:) || v77 == enum case for Parse.uso(_:))
    {
      goto LABEL_8;
    }

    v157 = sub_1D328();
    v158(v157);
LABEL_28:
    v159 = v357;
    v76(v357, v75, v70);
    v160 = sub_8CCEC();
    v161 = v70;
    v162 = sub_8D12C();
    if (os_log_type_enabled(v160, v162))
    {
      v163 = sub_1D358();
      v164 = sub_6630();
      v165 = v76;
      v166 = v164;
      v390 = v164;
      *v163 = 136315138;
      v167 = v377;
      v165(v377, v159, v161);
      v168 = sub_72160(v167);
      v170 = v169;
      v171 = sub_1D310();
      v172(v171);
      v173 = sub_862D8(v168, v170, &v390);

      *(v163 + 4) = v173;
      _os_log_impl(&dword_0, v160, v162, "#HomeCommunicationFlowDelegatePlugin unsupportedParse %s", v163, 0xCu);
      sub_2714(v166);
      sub_E890(v166);
      sub_E890(v163);
    }

    else
    {

      v265 = sub_1D310();
      v266(v265);
    }

    return 0;
  }

  v139 = v383;
  (*(v53 + 96))(v383, v70);
  v140 = v362;
  v141 = v368;
  v142 = v369;
  (*(v362 + 32))(v368, v139, v369);
  (*(v140 + 16))(v73, v141, v142);
  v143 = sub_8CCEC();
  v144 = sub_8D11C();
  if (os_log_type_enabled(v143, v144))
  {
    v145 = sub_1D358();
    v375 = v70;
    v146 = v145;
    v147 = sub_6630();
    v390 = v147;
    *v146 = 136315138;
    v148 = sub_8BDCC();
    v150 = v149;
    v151 = sub_1D254();
    v152(v151);
    v153 = sub_862D8(v148, v150, &v390);
    v154 = v376;

    *(v146 + 4) = v153;
    _os_log_impl(&dword_0, v143, v144, "#HomeCommunicationFlowDelegatePlugin pushing DirectInvocationHomeCommunicationFlow for DI with id=%s", v146, 0xCu);
    sub_2714(v147);
    sub_E890(v147);
    v155 = v146;
    v70 = v375;
    sub_E890(v155);
  }

  else
  {

    v213 = sub_1D254();
    v214(v213);
    v154 = v376;
  }

  v374(v377, v154, v70);
  v215 = v373;
  sub_8BDAC();
  sub_1D184();
  type metadata accessor for SendAnnouncementCATsSimple(0);
  sub_1D2A4();
  v216 = sub_1D28C();
  sub_E58C(&v390, v391);
  sub_1D34C();
  sub_E6E8();
  __chkstk_darwin(v217);
  sub_16854();
  v220 = v219 - v218;
  (*(v221 + 16))(v219 - v218);
  v222 = type metadata accessor for SharedGlobals(0);
  v388 = v222;
  v389 = &off_BB508;
  v223 = sub_E5DC(&v387);
  sub_E63C(v220, v223);
  type metadata accessor for DirectInvocationHomeCommunicationFlow(0);
  v224 = swift_allocObject();
  sub_E58C(&v387, v388);
  sub_E6E8();
  __chkstk_darwin(v225);
  v227 = sub_1D0B4(v226, v353);
  v228(v227);
  v229 = (v224 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sharedGlobals);
  v229[3] = v222;
  v229[4] = &off_BB508;
  sub_E5DC(v229);
  v230 = sub_1D248();
  sub_E63C(v230, v231);
  (*(v363 + 32))(v224 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_input, v215, v364);
  *(v224 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin37DirectInvocationHomeCommunicationFlow_sendAnnouncementCATsSimple) = v216;
  sub_2714(&v387);
  sub_2714(&v390);
  v390 = v224;
  sub_1CE90(&qword_C0460, 255, type metadata accessor for DirectInvocationHomeCommunicationFlow, &unk_8EB78);
  sub_1D23C();
  v92 = sub_8B33C();

  (v383)(v368, v369);
  return v92;
}

uint64_t sub_1BFE8()
{

  sub_2714((v0 + 32));

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t *sub_1C070@<X0>(uint64_t **a1@<X8>)
{
  result = sub_19620();
  *a1 = result;
  return result;
}

uint64_t sub_1C0F4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v17 = type metadata accessor for SharedGlobals(0);
  v18 = &off_BB508;
  v8 = sub_E5DC(&v16);
  sub_E63C(a2, v8);
  *(a4 + 56) = _swiftEmptyArrayStorage;
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v9 = sub_8CD0C();
  sub_33F4(v9, qword_C3DF8);
  v10 = sub_8CCEC();
  v11 = sub_8D11C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "#HomeCommunicationFlow state is initialized.", v12, 2u);
  }

  v13 = OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_input;
  v14 = sub_8BDBC();
  (*(*(v14 - 8) + 32))(a4 + v13, a1, v14);
  sub_E510(&v16, a4 + 16);
  sub_E510(a3, a4 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin21HomeCommunicationFlow_siriKitEventSender);
  return a4;
}

uint64_t *sub_1C288(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v17[3] = type metadata accessor for SharedGlobals(0);
  v17[4] = &off_BB508;
  v10 = sub_E5DC(v17);
  sub_E63C(a3, v10);
  v11 = type metadata accessor for CATBundleRegisterer();
  v16[3] = v11;
  v16[4] = &off_B9680;
  v16[0] = a4;
  *(a5 + 16) = a2;
  a5[3] = a1;
  sub_E528(v17, (a5 + 4));
  sub_622C(v16, v11);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();

  v14 = [v13 bundleForClass:{ObjCClassFromMetadata, v16[0]}];
  sub_C670(v14);

  sub_2714(v17);
  sub_2714(v16);
  return a5;
}

uint64_t *sub_1C3CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v23 = type metadata accessor for SharedGlobals(0);
  v24 = &off_BB508;
  v8 = sub_E5DC(v22);
  sub_E63C(a3, v8);
  v9 = type metadata accessor for CATBundleRegisterer();
  v21[3] = v9;
  v21[4] = &off_B9680;
  v21[0] = a4;
  type metadata accessor for HomeCommunicationFlowDelegatePlugin();
  v10 = swift_allocObject();
  v11 = sub_E58C(v22, v23);
  __chkstk_darwin(v11);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v15 = sub_E58C(v21, v9);
  __chkstk_darwin(v15);
  v17 = (v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = sub_1C288(a1, a2, v13, *v17, v10);
  sub_2714(v21);
  sub_2714(v22);
  return v19;
}

uint64_t sub_1C5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = sub_8CBEC();
  v13 = &protocol witness table for ReferenceResolutionClient;
  *&v11 = a2;
  *(a4 + 24) = _swiftEmptyArrayStorage;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = xmmword_8F8D0;
  type metadata accessor for NLv4Transformer(0);
  v8 = swift_allocObject();

  *(a4 + 16) = sub_1C68C(v9, a2, v8);
  sub_E510(&v11, a4 + 96);
  *(a4 + 80) = a1;
  *(a4 + 88) = a3;
  return a4;
}

uint64_t sub_1C68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2664(&qword_C0EA8, &unk_8FA00);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v22[3] = sub_8CBEC();
  v22[4] = &protocol witness table for ReferenceResolutionClient;
  v22[0] = a2;
  sub_E528(v22, v21);
  sub_1CF84(v21, v19);
  v10 = swift_allocObject();
  v11 = v19[1];
  *(v10 + 16) = v19[0];
  *(v10 + 32) = v11;
  *(v10 + 48) = v20;
  *(v10 + 56) = a1;
  type metadata accessor for TransformerInput(0);

  sub_2664(&qword_C0438, &qword_8EBD0);
  sub_8C80C();
  sub_1D05C(v21, &qword_C0EB0, &qword_90F40);
  (*(v7 + 32))(a3 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin15NLv4Transformer_transformer, v9, v6);
  *(a3 + OBJC_IVAR____TtC35HomeCommunicationFlowDelegatePlugin15NLv4Transformer_featureManager) = a1;
  v12 = qword_BF818;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_8CD0C();
  sub_33F4(v13, qword_C3DF8);
  v14 = sub_8CCEC();
  v15 = sub_8D11C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "#NLv4Transformer is initiated, this function should be only be called once for each makeFlowFor function", v16, 2u);
  }

  else
  {
  }

  sub_2714(v22);
  return a3;
}

uint64_t sub_1C928(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  v11[3] = type metadata accessor for SharedGlobals(0);
  v11[4] = &off_BB508;
  v8 = sub_E5DC(v11);
  sub_E63C(a2, v8);
  sub_E528(a1, a4 + qword_C2CF0);
  sub_E528(v11, a4 + qword_C2CF8);
  *(a4 + qword_C2D00) = a3;
  v9 = sub_8B9EC();
  sub_2714(a1);
  sub_2714(v11);
  return v9;
}

uint64_t sub_1C9E8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v13[3] = type metadata accessor for SharedGlobals(0);
  v13[4] = &off_BB508;
  v10 = sub_E5DC(v13);
  sub_E63C(a2, v10);
  sub_E528(a1, a3 + *a4);
  sub_E528(v13, a3 + *a5);
  v11 = sub_8B9EC();
  sub_2714(a1);
  sub_2714(v13);
  return v11;
}

uint64_t sub_1CA98(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v16 = type metadata accessor for SharedGlobals(0);
  v17 = &off_BB508;
  v6 = sub_E5DC(v15);
  sub_E63C(a2, v6);
  type metadata accessor for HomeCommunicationFlow(0);
  v7 = swift_allocObject();
  v8 = sub_E58C(v15, v16);
  __chkstk_darwin(v8);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_1C0F4(a1, v10, a3, v7);
  sub_2714(v15);
  return v12;
}

uint64_t sub_1CBD4(void *a1, uint64_t a2, char a3)
{
  v16 = type metadata accessor for SharedGlobals(0);
  v17 = &off_BB508;
  v6 = sub_E5DC(v15);
  sub_E63C(a2, v6);
  type metadata accessor for SendAnnouncementRCHFlowDelegate(0);
  v7 = swift_allocObject();
  v8 = sub_E58C(v15, v16);
  __chkstk_darwin(v8);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_1C928(a1, v10, a3, v7);
  sub_2714(v15);
  return v12;
}

uint64_t sub_1CD10(void *a1, uint64_t a2, uint64_t (*a3)(void), void *a4, void *a5)
{
  v21 = type metadata accessor for SharedGlobals(0);
  v22 = &off_BB508;
  v11 = sub_E5DC(v20);
  sub_E63C(a2, v11);
  a3(0);
  v12 = swift_allocObject();
  sub_E58C(v20, v21);
  sub_E6E8();
  __chkstk_darwin(v13);
  v15 = sub_1D0B4(v14, v19);
  v16(v15);
  v17 = sub_1C9E8(a1, v5, v12, a4, a5);
  sub_2714(v20);
  return v17;
}

uint64_t sub_1CE3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CE90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_1CED8()
{
  result = qword_C0EA0;
  if (!qword_C0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0EA0);
  }

  return result;
}

uint64_t sub_1CF2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_6574();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1CF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C0EB0, &qword_90F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFF4()
{
  if (*(v0 + 40))
  {
    sub_2714((v0 + 16));
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1D05C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_2664(a2, a3);
  sub_6574();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D0EC()
{

  return sub_1CF2C(v0, type metadata accessor for SmsNLIntent);
}

void sub_1D144(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1D184()
{
  v2 = *(v0 - 224) + 32;

  return sub_E528(v2, v0 - 128);
}

BOOL sub_1D1B8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1D1D4()
{
  v2 = *(v0 - 144);

  return sub_E58C(v0 - 168, v2);
}

uint64_t sub_1D1F4()
{
  v2 = *(v0 - 104);

  return sub_E58C(v0 - 128, v2);
}

uint64_t sub_1D214()
{
}

uint64_t sub_1D254()
{
  v3 = *(v1 + 8);
  *(v2 - 232) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v0;
  *(v2 - 216) = v3;
  return result;
}

uint64_t sub_1D28C()
{

  return sub_8C9CC();
}

uint64_t sub_1D2A4()
{

  return sub_8CA1C();
}

uint64_t sub_1D2BC()
{
  result = v1;
  *(v2 - 296) = *(v0 + 8);
  return result;
}

uint64_t sub_1D2D8()
{
  v2 = *(v0 - 104);

  return sub_E58C(v0 - 128, v2);
}

uint64_t sub_1D2F4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_1D358()
{

  return swift_slowAlloc();
}

uint64_t sub_1D3C0()
{

  return type metadata accessor for SkipAnnouncementCATsSimple(0);
}

uint64_t sub_1D3D8(uint64_t a1)
{
  *(v1 - 256) = a1;

  return type metadata accessor for ReadAnnouncementCATsSimple(0);
}

uint64_t sub_1D3F0()
{

  return sub_8C9CC();
}

uint64_t *sub_1D408()
{
  *(v2 - 184) = v1;
  *(v2 - 176) = v0;

  return sub_E5DC((v2 - 208));
}

uint64_t sub_1D420()
{

  return sub_8C9CC();
}

uint64_t sub_1D438(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t *sub_1D450(uint64_t a1)
{
  *(v2 - 144) = a1;
  *(v2 - 136) = v1;

  return sub_E5DC((v2 - 168));
}

uint64_t sub_1D468()
{
}

uint64_t sub_1D480()
{

  return sub_8CA1C();
}

uint64_t sub_1D498()
{

  return sub_8CA1C();
}

uint64_t sub_1D4B0(uint64_t a1)
{

  return sub_E63C(v1, a1);
}

uint64_t getEnumTagSinglePayload for HomeCommunicationIntentClassNames(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HomeCommunicationIntentClassNames(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1D61CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D658()
{
  result = qword_C0EE0;
  if (!qword_C0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0EE0);
  }

  return result;
}

id sub_1D6AC(char a1)
{
  switch(a1)
  {
    case 2:
    case 4:
      if (qword_BF7F8 != -1)
      {
        swift_once();
      }

      v1 = &qword_C0EC0;
      break;
    case 3:
      if (qword_BF800 != -1)
      {
        swift_once();
      }

      v1 = &qword_C0EC8;
      break;
    case 5:
      if (qword_BF808 != -1)
      {
        swift_once();
      }

      v1 = &qword_C0ED0;
      break;
    case 6:
      if (qword_BF810 != -1)
      {
        swift_once();
      }

      v1 = &qword_C0ED8;
      break;
    default:
      if (qword_BF7F0 != -1)
      {
        swift_once();
      }

      v1 = &qword_C0EB8;
      break;
  }

  v2 = *v1;

  return v2;
}

id sub_1D83C()
{
  result = [objc_allocWithZone(INSendAnnouncementIntent) init];
  qword_C0EB8 = result;
  return result;
}

id sub_1D870()
{
  result = [objc_allocWithZone(INReadAnnouncementIntent) init];
  qword_C0EC0 = result;
  return result;
}

id sub_1D8A4()
{
  result = [objc_allocWithZone(INStopAnnouncementIntent) init];
  qword_C0EC8 = result;
  return result;
}

id sub_1D8D8()
{
  result = [objc_allocWithZone(INSkipAnnouncementIntent) init];
  qword_C0ED0 = result;
  return result;
}

id sub_1D90C()
{
  result = [objc_allocWithZone(INIntent) init];
  qword_C0ED8 = result;
  return result;
}

uint64_t sub_1D940()
{
  v0 = sub_8CD0C();
  sub_FCD8(v0, qword_C3DF8);
  sub_33F4(v0, qword_C3DF8);
  return sub_8CCFC();
}

uint64_t sub_1D9C0()
{
  sub_1DA28();
  result = sub_8D1AC();
  qword_C0EE8 = result;
  return result;
}

unint64_t sub_1DA28()
{
  result = qword_C0EF0;
  if (!qword_C0EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C0EF0);
  }

  return result;
}

uint64_t sub_1DA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_8CCDC();

  return sub_3364(a1, a2, v4);
}

uint64_t sub_1DADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_8CCDC();

  return sub_6270(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SignpostLog.Signpost(uint64_t a1)
{
  result = qword_C0F50;
  if (!qword_C0F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB74(uint64_t a1)
{
  result = sub_8CCDC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_1DBE8(void *a1)
{
  v2 = [objc_allocWithZone(FLOWSchemaFLOWDomainContext) init];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(FLOWSchemaFLOWHomeCommunicationContext) init];
    if (v4)
    {
      v5 = v4;
      sub_1DD44(a1, v4);
      [v3 setHomeCommunicationContext:v5];
      [v3 setHasHomeCommunicationContext:1];
      goto LABEL_10;
    }
  }

  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v6 = sub_8CD0C();
  sub_33F4(v6, qword_C3DF8);
  v5 = sub_8CCEC();
  v7 = sub_8D12C();
  if (os_log_type_enabled(v5, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v5, v7, "#HomeCommunicationDomainContextMetricsUtils returning without logging homeCommunication domain context", v8, 2u);
  }

  v3 = 0;
LABEL_10:

  return v3;
}

void sub_1DD44(void *a1, void *a2)
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v4 = sub_8CD0C();
  sub_33F4(v4, qword_C3DF8);
  sub_E528(a1, v23);
  v5 = sub_8CCEC();
  v6 = sub_8D11C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315138;
    v9 = sub_622C(v23, v23[3]);
    __chkstk_darwin(v9);
    (*(v11 + 16))(&v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = sub_8CEFC();
    v14 = v13;
    sub_2714(v23);
    v15 = sub_862D8(v12, v14, &v22);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_0, v5, v6, "#HomeCommunicationDomainContextMetricsUtils addTaskType with homeCommunicationNLIntent: %s", v7, 0xCu);
    sub_2714(v8);
  }

  else
  {

    sub_2714(v23);
  }

  v16 = a1[3];
  v17 = a1[4];
  sub_622C(a1, v16);
  switch((*(v17 + 16))(v16, v17))
  {
    case 0u:
      v18 = a2;
      v19 = 1;
      goto LABEL_11;
    case 1u:
      v18 = a2;
      v19 = 2;
LABEL_11:
      [v18 setTaskType:{v19, v22}];
      sub_1E038(a1, a2);
      return;
    case 2u:
      v20 = a2;
      v21 = 3;
      goto LABEL_13;
    case 3u:
      v20 = a2;
      v21 = 4;
      goto LABEL_13;
    default:
      v20 = a2;
      v21 = 0;
LABEL_13:
      [v20 setTaskType:{v21, v22}];
      return;
  }
}

void sub_1E038(void *a1, void *a2)
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v4 = sub_8CD0C();
  sub_33F4(v4, qword_C3DF8);
  v5 = sub_8CCEC();
  v6 = sub_8D11C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#HomeCommunicationDomainContextMetricsUtils addTargetType for send or reply announcement", v7, 2u);
  }

  v8 = [objc_allocWithZone(FLOWSchemaFLOWHomeCommunicationSendOrReply) init];
  if (v8)
  {
    v41 = v8;
    v9 = a1[3];
    v10 = a1[4];
    sub_622C(a1, v9);
    v11 = *(v10 + 112);
    v12 = *(v11(v9, v10) + 16);

    v13 = v12 == 0;
    if (v12)
    {
      for (i = *(v11(v9, v10) + 16); i; --i)
      {
        [v41 addTargetType:5];
      }
    }

    v15 = a1[3];
    v16 = a1[4];
    sub_622C(a1, v15);
    v17 = *((*(v16 + 96))(v15, v16) + 16);

    if (v17)
    {
      v18 = a1[3];
      v19 = a1[4];
      sub_622C(a1, v18);
      for (j = *((*(v19 + 96))(v18, v19) + 16); j; --j)
      {
        [v41 addTargetType:3];
      }

      v13 = 0;
    }

    v21 = a1[3];
    v22 = a1[4];
    sub_622C(a1, v21);
    v23 = *((*(v22 + 104))(v21, v22) + 16);

    if (v23)
    {
      v24 = a1[3];
      v25 = a1[4];
      sub_622C(a1, v24);
      for (k = *((*(v25 + 104))(v24, v25) + 16); k; --k)
      {
        [v41 addTargetType:4];
      }

      v13 = 0;
    }

    v27 = a1[3];
    v28 = a1[4];
    sub_622C(a1, v27);
    v29 = *((*(v28 + 72))(v27, v28) + 16);

    if (v29)
    {
      v30 = a1[3];
      v31 = a1[4];
      sub_622C(a1, v30);
      for (m = *((*(v31 + 72))(v30, v31) + 16); m; --m)
      {
        [v41 addTargetType:0];
      }

      v13 = 0;
    }

    v33 = a1[3];
    v34 = a1[4];
    sub_622C(a1, v33);
    if ((*(v34 + 40))(v33, v34))
    {
      [v41 addTargetType:6];
      v13 = 0;
    }

    v35 = a1[3];
    v36 = a1[4];
    sub_622C(a1, v35);
    v37 = (*(v36 + 64))(v35, v36);
    if ((v37 & 1) != 0 || v13)
    {
      if (v37)
      {
        v38 = 2;
      }

      else
      {
        v38 = 1;
      }

      [v41 addTargetType:v38];
    }

    [a2 setSendOrReplyContext:v41];
    [a2 setHasSendOrReplyContext:1];
  }

  else
  {
    v41 = sub_8CCEC();
    v39 = sub_8D12C();
    if (os_log_type_enabled(v41, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v41, v39, "#HomeCommunicationDomainContextMetricsUtils returning without logging homeCommunication entityType", v40, 2u);
    }
  }
}

unint64_t sub_1E508(uint64_t a1)
{
  v1 = a1;
  sub_8D25C(20);

  v2 = sub_1E62C(v1);
  v4 = v3;

  sub_1EC38(1, v2, v4);
  v5 = sub_8D1DC();
  v7 = v6;

  sub_1EB64(1uLL, v2, v4);
  sub_1ECF8();

  sub_8CF6C();

  v9._countAndFlagsBits = v5;
  v9._object = v7;
  sub_8CF7C(v9);

  return 0xD000000000000012;
}

unint64_t sub_1E62C(char a1)
{
  result = 7564659;
  switch(a1)
  {
    case 1:
      result = 0x62726556736D73;
      break;
    case 2:
      result = 0x6E756F4E736D73;
      break;
    case 3:
      result = 0x69666E6F43736D73;
      break;
    case 4:
      result = 0x617373654D736D73;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E704(char a1)
{
  result = 7562617;
  switch(a1)
  {
    case 1:
      result = 28526;
      break;
    case 2:
      result = 0x6C65636E6163;
      break;
    case 3:
      result = 1953063287;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E778(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8460;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1E7E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E778(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1E818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E704(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E854(uint64_t a1, uint64_t a2)
{
  v4 = sub_1EFC0();
  v5 = sub_1F014();
  v6 = sub_1F068();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

uint64_t sub_1E8C8()
{
  sub_2664(&qword_C0F90, &unk_8FAE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8FAC0;
  sub_8CF0C();
  v1 = sub_10C68();
  v9 = sub_1F0E4(v1, v2, v3, v4, v5, v6, v7, v8, &type metadata for String, v1, v1, v1, 95, 0xE100000000000000, 32);
  sub_1F0BC(v9, v10, v11, v12, v13, v14, v15, v16, v53, v56, v59, v62);

  v65 = sub_1E508(3);
  v68 = v17;
  sub_1F0F4();
  v71._countAndFlagsBits = sub_8CF0C();
  sub_8CF7C(v71);

  *(v0 + 32) = v65;
  *(v0 + 40) = v68;
  v18 = sub_8CF0C();
  v26 = sub_1F0E4(v18, v19, v20, v21, v22, v23, v24, v25, v54, v57, v1, v1, 95, 0xE100000000000000, 32);
  sub_1F0BC(v26, v27, v28, v29, v30, v31, v32, v33, &type metadata for String, v1, v60, v63);

  v66 = sub_1E508(1);
  v69 = v34;
  sub_1F0F4();
  v72._countAndFlagsBits = sub_8CF0C();
  sub_8CF7C(v72);

  *(v0 + 48) = v66;
  *(v0 + 56) = v69;
  v35 = sub_8CF0C();
  v43 = sub_1F0E4(v35, v36, v37, v38, v39, v40, v41, v42, v55, v58, v1, v1, 95, 0xE100000000000000, 32);
  sub_1F0BC(v43, v44, v45, v46, v47, v48, v49, v50, &type metadata for String, v1, v61, v64);

  v67 = sub_1E508(1);
  v70 = v51;
  sub_1F0F4();
  v73._countAndFlagsBits = sub_8CF0C();
  sub_8CF7C(v73);

  *(v0 + 64) = v67;
  *(v0 + 72) = v70;
  qword_C3E10 = v0;
  return result;
}

unint64_t sub_1EAF8()
{
  sub_2664(&qword_C0F90, &unk_8FAE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_8FAD0;
  *(v0 + 32) = sub_1E508(3);
  *(v0 + 40) = v1;
  result = sub_1E508(1);
  *(v0 + 48) = result;
  *(v0 + 56) = v3;
  qword_C3E18 = v0;
  return result;
}

unint64_t sub_1EB64(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
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
    result = sub_8CF5C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_8D00C();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1EC38(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_8CF5C();
    v3 = sub_8D00C();

    return v3;
  }

  return result;
}

unint64_t sub_1ECF8()
{
  result = qword_C0F88;
  if (!qword_C0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0F88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmsConfirmationSemantics(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1EE18);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1EE54()
{
  result = qword_C0F98;
  if (!qword_C0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0F98);
  }

  return result;
}

unint64_t sub_1EEAC()
{
  result = qword_C0FA0;
  if (!qword_C0FA0)
  {
    sub_B9BC(&qword_C0FA8, &qword_8FB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0FA0);
  }

  return result;
}

unint64_t sub_1EF14()
{
  result = qword_C0FB0;
  if (!qword_C0FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0FB0);
  }

  return result;
}

unint64_t sub_1EF6C()
{
  result = qword_C0FB8;
  if (!qword_C0FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0FB8);
  }

  return result;
}

unint64_t sub_1EFC0()
{
  result = qword_C0FC0;
  if (!qword_C0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0FC0);
  }

  return result;
}

unint64_t sub_1F014()
{
  result = qword_C0FC8;
  if (!qword_C0FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C0FC8);
  }

  return result;
}

unint64_t sub_1F068()
{
  result = qword_C0FD0[0];
  if (!qword_C0FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_C0FD0);
  }

  return result;
}

uint64_t sub_1F0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_8D1FC();
}

void sub_1F0F4()
{
  v2._countAndFlagsBits = v0;
  v2._object = 0xE700000000000000;

  sub_8CF7C(v2);
}

void sub_1F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_11614();
  v40[0] = v12;
  v40[1] = v13;
  v15 = v14;
  v17 = v16;
  v18 = sub_2664(&qword_C1058, &unk_8FCA0);
  sub_65E4(v18);
  sub_1D394();
  __chkstk_darwin(v19);
  v21 = v40 - v20;
  v22 = sub_8B8CC();
  sub_3488();
  v24 = v23;
  __chkstk_darwin(v25);
  sub_16854();
  v28 = v27 - v26;

  if (sub_2670C(v17, v15))
  {
    sub_8BC0C();
    sub_8BC1C();
    sub_115FC();

    v35(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
  }

  else
  {
    sub_1F820();
    (*(v24 + 16))(v21, v28, v22);
    sub_22B0C();
    sub_6270(v37, v38, v39, v22);
    (v40[0])(v21);
    sub_92C0(v21, &qword_C1058, &unk_8FCA0);
    (*(v24 + 8))(v28, v22);
    sub_115FC();
  }
}

void sub_1F374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_11614();
  v45 = v13;
  v15 = v14;
  v17 = v16;
  v18 = sub_2664(&qword_C1058, &unk_8FCA0);
  sub_65E4(v18);
  sub_1D394();
  __chkstk_darwin(v19);
  sub_22B50();
  v20 = sub_8B8CC();
  sub_3488();
  v44 = v21;
  __chkstk_darwin(v22);
  sub_16854();
  v25 = v24 - v23;

  if (sub_2670C(v17, v15))
  {
    sub_8BC0C();
    sub_8BC1C();
    sub_22B40();
    sub_115FC();

    v32(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
  }

  else
  {
    sub_8B8BC();
    sub_8B84C();
    sub_1E508(0);
    sub_8B87C();
    v43 = sub_2664(&qword_C0F90, &unk_8FAE0);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_8FAC0;
    sub_8CF0C();
    sub_10C68();
    sub_22A88();
    sub_8D1FC();

    v46 = sub_1E508(3);
    v49 = v35;
    v52._countAndFlagsBits = sub_22A74();
    v52._object = 0xE700000000000000;
    sub_8CF7C(v52);
    v53._countAndFlagsBits = sub_8CF0C();
    sub_8CF7C(v53);

    *(v34 + 32) = v46;
    *(v34 + 40) = v49;
    sub_8CF0C();
    sub_22A88();
    sub_8D1FC();

    v47 = sub_1E508(3);
    v50 = v36;
    v54._countAndFlagsBits = sub_22A74();
    v54._object = 0xE700000000000000;
    sub_8CF7C(v54);
    v55._countAndFlagsBits = sub_8CF0C();
    sub_8CF7C(v55);

    *(v34 + 48) = v47;
    *(v34 + 56) = v50;
    sub_22BC8();
    sub_22A88();
    sub_8D1FC();

    v48 = sub_1E508(3);
    v51 = v37;
    v56._countAndFlagsBits = sub_22A74();
    v56._object = 0xE700000000000000;
    sub_8CF7C(v56);
    v57._countAndFlagsBits = sub_8CF0C();
    sub_8CF7C(v57);

    *(v34 + 64) = v48;
    *(v34 + 72) = v51;
    sub_8B89C();
    v38 = sub_22B60(v43);
    *(v38 + 16) = xmmword_8E3F0;
    *(v38 + 32) = sub_1E508(3);
    *(v38 + 40) = v39;
    sub_8B8AC();
    (*(v44 + 16))(v12, v25, v20);
    sub_22B0C();
    sub_6270(v40, v41, v42, v20);
    v45(v12);
    sub_92C0(v12, &qword_C1058, &unk_8FCA0);
    (*(v44 + 8))(v25, v20);
    sub_115FC();
  }
}

uint64_t sub_1F820()
{
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v0 = sub_8CD0C();
  sub_22B78(v0, qword_C3DF8);
  v1 = sub_8CCEC();
  v2 = sub_8D11C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_E8E0();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#HomeCommunicationNLContextProvider generateNLContextForAnnouncement", v3, 2u);
    sub_22AF0();
  }

  sub_8B8BC();
  sub_1E508(0);
  sub_8B88C();
  v4 = sub_2664(&qword_C0F90, &unk_8FAE0);
  v5 = sub_22B60(v4);
  *(v5 + 16) = xmmword_8E3F0;
  sub_22BC8();
  sub_10C68();
  sub_22A88();
  sub_8D1FC();

  v10 = sub_1E508(3);
  v11 = v6;
  v12._countAndFlagsBits = sub_22A74();
  v12._object = 0xE700000000000000;
  sub_8CF7C(v12);
  v13._countAndFlagsBits = sub_8CF0C();
  sub_8CF7C(v13);

  *(v5 + 32) = v10;
  *(v5 + 40) = v11;
  sub_8B85C();
  v7 = sub_22B60(v4);
  *(v7 + 16) = xmmword_8E3F0;
  *(v7 + 32) = sub_1E508(4);
  *(v7 + 40) = v8;
  sub_8B86C();
  sub_1FA20();
  return sub_8B83C();
}

void sub_1FA20()
{
  sub_11614();
  sub_8BFDC();
  sub_3488();
  v54 = v0;
  v55 = v1;
  __chkstk_darwin(v0);
  sub_16854();
  v4 = v3 - v2;
  v5 = sub_8BE7C();
  v6 = sub_65E4(v5);
  __chkstk_darwin(v6);
  sub_16854();
  sub_22B50();
  v7 = sub_8BF4C();
  sub_3488();
  v9 = v8;
  v11 = __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  v16 = sub_2664(&qword_C1090, &unk_92770);
  sub_65E4(v16);
  sub_1D394();
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = sub_8C6CC();
  sub_E824(v20);
  v21 = sub_8C6BC();
  v22 = sub_8C68C();
  sub_E824(v22);
  sub_8C67C();
  sub_8C66C();
  sub_8C59C();
  sub_2664(&qword_C0690, &unk_8EBF0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_8E860;
  *(v23 + 32) = v21;
  v24 = sub_8C3FC();
  sub_6270(v19, 1, 1, v24);
  v56 = v21;

  v25 = sub_8C3AC();

  sub_92C0(v19, &qword_C1090, &unk_92770);
  sub_8BF3C();
  v57 = v25;
  sub_8C05C();
  v51 = v13;
  v52 = v4;
  v53 = v7;
  sub_8BF2C();
  if (qword_BF818 != -1)
  {
    sub_650C();
    swift_once();
  }

  v26 = sub_8CD0C();
  sub_22B78(v26, qword_C3DF8);
  v27 = sub_8CCEC();
  v28 = sub_8D11C();
  v29 = sub_22B18(v28);
  v30 = v53;
  if (v29)
  {
    v31 = sub_1D358();
    v32 = sub_6630();
    v58 = v32;
    *v31 = 136315138;
    sub_22AD8();
    swift_beginAccess();
    v33 = v51;
    v34 = sub_22B40();
    v35(v34);
    v36 = sub_6988C(v33);
    v38 = sub_862D8(v36, v37, &v58);
    v30 = v53;

    *(v31 + 4) = v38;
    sub_22B90();
    _os_log_impl(v39, v40, v41, v42, v31, 0xCu);
    sub_2714(v32);
    sub_E890(v32);
    sub_E890(v31);
  }

  v43 = v54;
  v44 = v55;
  v45 = v52;
  sub_8BFCC();
  sub_22AD8();
  swift_beginAccess();
  v46 = sub_22B40();
  v47(v46);
  sub_8BFBC();
  sub_2664(&qword_C1098, &qword_8FCD8);
  v48 = v45;
  v49 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_8E3F0;
  (*(v44 + 32))(v50 + v49, v48, v43);

  (*(v9 + 8))(v15, v30);
  sub_115FC();
}

void sub_2000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_11614();
  v13 = v12;
  v120 = v15;
  v121 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_2664(&qword_C1058, &unk_8FCA0);
  sub_65E4(v20);
  sub_1D394();
  __chkstk_darwin(v21);
  sub_1D370();
  v118 = v22;
  sub_22AE4();
  p_ivar_base_size = sub_8B8CC();
  sub_3488();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_9378();
  v116 = v27;
  sub_22ACC();
  __chkstk_darwin(v28);
  sub_22B34();
  v122 = v29;
  if (qword_BF818 != -1)
  {
LABEL_36:
    sub_650C();
    swift_once();
  }

  v117 = v25;
  v30 = sub_8CD0C();
  v31 = sub_33F4(v30, qword_C3DF8);
  v32 = sub_8CCEC();
  v33 = sub_8D11C();
  if (sub_22B18(v33))
  {
    v34 = v31;
    v35 = v13;
    v36 = sub_E8E0();
    *v36 = 0;
    sub_22B90();
    _os_log_impl(v37, v38, v39, v40, v36, 2u);
    v41 = v36;
    v13 = v35;
    v31 = v34;
    sub_E890(v41);
  }

  if (sub_2670C(v19, v17) == 1)
  {
    v115 = v13;
    sub_8B8BC();
    sub_1E508(0);
    sub_8B87C();
    v42 = sub_2664(&qword_C0F90, &unk_8FAE0);
    v43 = sub_22B60(v42);
    *(v43 + 16) = xmmword_8E3F0;
    v123 = sub_8CF0C();
    v124 = v44;
    v127 = 32;
    v128 = 0xE100000000000000;
    v129 = 95;
    v130 = 0xE100000000000000;
    sub_10C68();
    sub_22A88();
    sub_8D1FC();

    v123 = sub_1E508(3);
    v124 = v45;
    v131._countAndFlagsBits = sub_22A74();
    v131._object = 0xE700000000000000;
    sub_8CF7C(v131);
    v46 = v122;
    v132._countAndFlagsBits = sub_8CF0C();
    sub_8CF7C(v132);

    v47 = v124;
    *(v43 + 32) = v123;
    *(v43 + 40) = v47;
    sub_8B89C();
    v48 = sub_2D8DC();
    v13 = sub_6C594(v48);

    if (v13)
    {
      v49 = sub_22B60(v42);
      *(v49 + 16) = xmmword_8E3F0;
      *(v49 + 32) = sub_1E508(5);
      *(v49 + 40) = v50;
      sub_8B8AC();
      sub_8B84C();

      v17 = sub_8CCEC();
      v51 = sub_8D11C();

      v112 = v31;
      v113 = p_ivar_base_size;
      if (os_log_type_enabled(v17, v51))
      {
        v52 = sub_1D358();
        v53 = sub_6630();
        v123 = v53;
        *v52 = 136315138;
        sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
        v54 = sub_8D05C();
        v56 = sub_862D8(v54, v55, &v123);
        v46 = v122;

        *(v52 + 4) = v56;
        sub_22BA8(&dword_0, v57, v58, "#HomeCommunicationNLContextProvider makeDisambiguationSDAForFilters for homes: %s");
        sub_2714(v53);
        sub_22AF0();
        sub_E890(v52);
      }

      v25 = sub_2D3B4();
      v19 = 0;
      v119 = _swiftEmptyArrayStorage;
      p_ivar_base_size = &SKFlowFactory.ivar_base_size;
      while (v25 != v19)
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v59 = sub_8D27C();
        }

        else
        {
          if (v19 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_35;
          }

          v59 = *(v13 + 8 * v19 + 32);
        }

        v60 = v59;
        v17 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v61 = [v59 home];
        if (v61)
        {
          v62 = v61;
          v63 = [v61 spokenPhrase];

          v64 = sub_8CEDC();
          v66 = v65;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_22AB0();
            v119 = sub_75D80(v70, v71, v72, v73);
          }

          v68 = *(v119 + 2);
          v67 = *(v119 + 3);
          if (v68 >= v67 >> 1)
          {
            v119 = sub_75D80((v67 > 1), v68 + 1, 1, v119);
          }

          *(v119 + 2) = v68 + 1;
          v69 = &v119[16 * v68];
          *(v69 + 4) = v64;
          *(v69 + 5) = v66;
          v19 = v17;
          v46 = v122;
        }

        else
        {

          ++v19;
        }
      }

      if (qword_BF7E8 != -1)
      {
        swift_once();
      }

      v89 = qword_C3DB0;
      v125 = sub_2664(&qword_C07E0, &qword_8FCB0);
      v126 = sub_228D8();
      v123 = v89;

      sub_21A70();
      sub_2714(&v123);
      sub_8B82C();
      sub_21F80();

      sub_8B81C();
      sub_208A0(v119, v90, v91, v92, v93, v94, v95, v96, v112, v113, v115, v116, v117, v118, v119, 2, v120, v121, v122, v123);

      sub_8B83C();
      p_ivar_base_size = v114;
    }

    v97 = sub_8CCEC();
    v98 = sub_8D11C();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = sub_1D358();
      v100 = sub_6630();
      v123 = v100;
      *v99 = 136315138;
      sub_22AD8();
      swift_beginAccess();
      v101 = v117;
      (*(v117 + 16))(v116, v46, p_ivar_base_size);
      v102 = sub_8CEEC();
      v104 = sub_862D8(v102, v103, &v123);
      v46 = v122;

      *(v99 + 4) = v104;
      v105 = v121;
      sub_22BA8(&dword_0, v106, v107, "#HomeCommunicationNLContextProvider nlContext: %s");
      sub_2714(v100);
      sub_22AF0();
      sub_E890(v99);

      v108 = v118;
    }

    else
    {

      v101 = v117;
      v108 = v118;
      v105 = v121;
    }

    sub_22AD8();
    swift_beginAccess();
    (*(v101 + 16))(v108, v46, p_ivar_base_size);
    sub_22B0C();
    sub_6270(v109, v110, v111, p_ivar_base_size);
    v105(v108);
    sub_92C0(v108, &qword_C1058, &unk_8FCA0);
    (*(v101 + 8))(v46, p_ivar_base_size);
    sub_115FC();
  }

  else
  {
    v74 = sub_8CCEC();
    v75 = sub_8D12C();
    if (sub_22B18(v75))
    {
      v76 = sub_E8E0();
      *v76 = 0;
      sub_22B90();
      _os_log_impl(v77, v78, v79, v80, v76, 2u);
      sub_E890(v76);
    }

    sub_8BC0C();
    sub_8BC1C();
    sub_115FC();

    v87(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12);
  }
}

void sub_208A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_11614();
  v22 = v21;
  v123 = sub_8BFDC();
  sub_3488();
  v122 = v23;
  __chkstk_darwin(v24);
  sub_16854();
  v121 = v26 - v25;
  sub_22AE4();
  v120 = sub_8C00C();
  sub_3488();
  v119 = v27;
  __chkstk_darwin(v28);
  sub_9378();
  v117 = v29;
  sub_22ACC();
  __chkstk_darwin(v30);
  sub_22B34();
  v118 = v31;
  sub_22AE4();
  v32 = sub_8BE7C();
  v33 = sub_65E4(v32);
  __chkstk_darwin(v33);
  sub_16854();
  sub_22B50();
  v152 = sub_8BF9C();
  sub_3488();
  v35 = v34;
  __chkstk_darwin(v36);
  sub_9378();
  v145 = v37;
  sub_22ACC();
  __chkstk_darwin(v38);
  v40 = &v116 - v39;
  v154 = sub_8BF1C();
  sub_3488();
  v42 = v41;
  __chkstk_darwin(v43);
  sub_9378();
  v151 = v44;
  sub_22ACC();
  __chkstk_darwin(v45);
  v47 = &v116 - v46;
  v134 = sub_8C15C();
  sub_3488();
  v49 = v48;
  __chkstk_darwin(v50);
  sub_16854();
  v142 = v52 - v51;
  v53 = sub_2664(&qword_C1090, &unk_92770);
  sub_65E4(v53);
  sub_1D394();
  __chkstk_darwin(v54);
  sub_1D370();
  v141 = v55;
  sub_22AE4();
  v140 = sub_8C2DC();
  sub_3488();
  __chkstk_darwin(v56);
  sub_16854();
  v139 = v58 - v57;
  v59 = _swiftEmptyArrayStorage;
  v138 = v60 + 104;
  v137 = v60 + 8;
  v131 = v49 + 8;
  v156 = _swiftEmptyArrayStorage;
  v144 = (v35 + 16);
  v128 = v42 + 16;
  v61 = *(v22 + 16);
  v127 = v42 + 32;
  v129 = v42;
  v132 = v42 + 8;
  v136 = enum case for IdentifierValue.vHomeAutomationHome(_:);
  v133 = v35 + 8;
  v62 = v22 + 40;
  *(&v63 + 1) = 3;
  v135 = xmmword_8E860;
  *&v63 = 136315138;
  v124 = v63;
  v143 = _swiftEmptyArrayStorage;
  v130 = v20;
  v153 = v47;
  if (v61)
  {
    do
    {
      v149 = v62;
      v150 = v61;
      v64 = sub_8C10C();
      sub_E824(v64);

      sub_8C0FC();
      sub_22AC0();
      v65 = v139;
      v66 = v140;
      v67(v139, v136, v140);
      sub_214D0();

      sub_22AC0();
      v68(v65, v66);
      v69 = sub_8C6AC();
      sub_E824(v69);
      v70 = sub_8C69C();

      sub_8C0DC();

      sub_2664(&qword_C0690, &unk_8EBF0);
      v71 = swift_allocObject();
      *(v71 + 16) = v135;
      *(v71 + 32) = v70;
      v72 = sub_8C3FC();
      v73 = v141;
      sub_6270(v141, 1, 1, v72);

      v74 = sub_8C3AC();

      sub_92C0(v73, &qword_C1090, &unk_92770);
      v75 = v142;
      sub_8C6FC();
      sub_ADE4(0, &qword_C10A0, USOSerializedGraph_ptr);
      v76 = sub_8D14C();
      sub_22AC0();
      v77(v75, v134);
      v78 = objc_allocWithZone(SIRINLUUserStatedTask);
      v148 = v76;
      v79 = [v78 initWithTask:v76];
      sub_8D02C();
      if (*(&dword_10 + (v156 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v156 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_8D06C();
      }

      sub_8D08C();
      v143 = v156;
      v80 = v153;
      sub_8BF0C();
      sub_8BF8C();
      sub_8C05C();
      v146 = v79;
      v147 = v74;
      swift_beginAccess();
      sub_8BF7C();
      swift_endAccess();
      v81 = *v144;
      (*v144)(v145, v40, v152);
      sub_8BEFC();
      sub_22AC0();
      v82(v151, v80, v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22AB0();
        sub_762D0();
        v59 = v107;
      }

      v84 = *(v59 + 2);
      v83 = *(v59 + 3);
      if (v84 >= v83 >> 1)
      {
        sub_22A9C(v83);
        sub_762D0();
        v59 = v108;
      }

      *(v59 + 2) = v84 + 1;
      sub_22B9C();
      (*(v86 + 32))(&v59[v85 + *(v86 + 72) * v84], v151, v154);
      if (qword_BF818 != -1)
      {
        sub_650C();
        swift_once();
      }

      v87 = sub_8CD0C();
      sub_22B78(v87, qword_C3DF8);
      v88 = sub_8CCEC();
      v89 = sub_8D11C();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = sub_1D358();
        v126 = v59;
        v91 = v90;
        v92 = sub_6630();
        v93 = v40;
        v94 = v152;
        v125 = v70;
        v95 = v92;
        v155 = v92;
        *v91 = v124;
        v96 = v145;
        v81(v145, v93, v94);
        v97 = sub_69A10(v96);
        v99 = sub_862D8(v97, v98, &v155);

        *(v91 + 4) = v99;
        _os_log_impl(&dword_0, v88, v89, "#HomeCommunicationNLContextProvider Building UserStatedTask for disambiguating between homes: %s", v91, 0xCu);
        sub_2714(v95);
        v100 = v94;
        v40 = v93;
        sub_E890(v95);
        v101 = v91;
        v59 = v126;
        sub_E890(v101);

        sub_22AC0();
        v102(v153, v154);
        sub_22AC0();
        v104 = v93;
        v105 = v100;
      }

      else
      {

        sub_22AC0();
        v106(v153, v154);
        sub_22AC0();
        v104 = v40;
        v105 = v152;
      }

      v103(v104, v105);
      v62 = v149 + 16;
      v61 = v150 - 1;
    }

    while (v150 != 1);
  }

  v109 = v118;
  sub_8BFFC();
  sub_8BFEC();
  v110 = v121;
  sub_8BFCC();
  v111 = v119;
  v112 = v120;
  (*(v119 + 16))(v117, v109, v120);
  sub_8BFAC();
  sub_2664(&qword_C1098, &qword_8FCD8);
  v113 = v122;
  v114 = (*(v122 + 80) + 32) & ~*(v122 + 80);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_8E3F0;
  (*(v113 + 32))(v115 + v114, v110, v123);
  (*(v111 + 8))(v109, v112);
  sub_115FC();
}

void sub_214D0()
{
  sub_11614();
  v69 = v0;
  v2 = v1;
  v3 = sub_2664(&qword_C1088, &qword_8FCC8);
  sub_65E4(v3);
  sub_1D394();
  __chkstk_darwin(v4);
  v6 = v55 - v5;
  v7 = sub_2664(&qword_C0008, &qword_8FCD0);
  sub_65E4(v7);
  sub_1D394();
  __chkstk_darwin(v8);
  sub_1D370();
  v60 = v9;
  sub_22AE4();
  sub_8C2DC();
  sub_3488();
  v64 = v11;
  v65 = v10;
  __chkstk_darwin(v10);
  sub_16854();
  v70 = (v13 - v12);
  sub_22AE4();
  v14 = sub_8C48C();
  sub_3488();
  v61 = v15;
  __chkstk_darwin(v16);
  sub_16854();
  v19 = v18 - v17;
  v20 = sub_8C46C();
  sub_3488();
  v22 = v21;
  __chkstk_darwin(v23);
  sub_16854();
  v26 = v25 - v24;
  sub_8C29C();
  sub_3488();
  v66 = v28;
  v67 = v27;
  __chkstk_darwin(v27);
  sub_9378();
  v63 = v29;
  sub_22ACC();
  __chkstk_darwin(v30);
  sub_22B34();
  v62 = v31;
  v68 = v2;
  sub_8C0EC();
  sub_8C53C();
  v32 = sub_8C3CC();
  if (v32 && (v33 = sub_50190(v32), , v33))
  {
    v58 = enum case for IdentifierAppBundle.abHomeKit(_:);
    v59 = v6;
    v57 = *(v22 + 104);
    v57(v26);

    v34 = sub_8C45C();
    v55[1] = v35;
    v55[2] = v34;
    (*(v22 + 8))(v26, v20);
    v36 = v61;
    v55[0] = v33;
    v56 = *(v61 + 104);
    v56(v19, enum case for IdentifierNamespace.nsSemanticValue(_:), v14);
    sub_8C47C();
    (*(v36 + 8))(v19, v14);
    v37 = v62;
    sub_8C26C();
    sub_8C17C();
    (*(v64 + 16))(v70, v69, v65);
    (v57)(v26, v58, v20);
    v56(v60, enum case for IdentifierNamespace.nsHomeKitEntityType(_:), v14);
    sub_22B0C();
    sub_6270(v38, v39, v40, v14);
    v41 = enum case for UsoIdentifier.NluComponent.unknown(_:);
    v42 = sub_8C21C();
    (*(*(v42 - 8) + 104))(v59, v41, v42);
    sub_22B0C();
    sub_6270(v43, v44, v45, v42);
    v46 = v63;
    sub_8C25C();
    sub_8C17C();

    v47 = *(v66 + 8);
    v48 = v46;
    v49 = v67;
    v47(v48, v67);
    v47(v37, v49);
    sub_115FC();
  }

  else
  {
    if (qword_BF818 != -1)
    {
      sub_650C();
      swift_once();
    }

    v50 = sub_8CD0C();
    sub_22B78(v50, qword_C3DF8);
    v70 = sub_8CCEC();
    v51 = sub_8D12C();
    if (os_log_type_enabled(v70, v51))
    {
      v52 = sub_E8E0();
      *v52 = 0;
      _os_log_impl(&dword_0, v70, v51, "Unable to get name string builder", v52, 2u);
      sub_E890(v52);
    }

    sub_115FC();
  }
}

void sub_21A70()
{
  sub_11614();
  v68 = v0;
  v2 = v1;
  sub_8BD5C();
  sub_3488();
  v57 = v4;
  v58 = v3;
  __chkstk_darwin(v3);
  sub_16854();
  v56 = v6 - v5;
  v7 = sub_2664(&qword_C1080, &qword_8FCC0);
  sub_65E4(v7);
  sub_1D394();
  __chkstk_darwin(v8);
  sub_1D370();
  v67 = v9;
  sub_22AE4();
  v66 = sub_8B6DC();
  sub_3488();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_16854();
  v15 = v14 - v13;
  v16 = sub_8B73C();
  sub_3488();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_9378();
  v65 = v20;
  sub_22ACC();
  __chkstk_darwin(v21);
  v71 = &v56 - v22;
  sub_22ACC();
  __chkstk_darwin(v23);
  sub_22B34();
  v73 = v24;
  v74 = _swiftEmptyArrayStorage;
  v25 = *(v2 + 16);
  if (v25)
  {
    v70 = (v18 + 16);
    v60 = (v18 + 8);
    v61 = v18 + 32;
    v59 = v11 + 32;
    v26 = (v2 + 40);
    v27 = _swiftEmptyArrayStorage;
    v72 = _swiftEmptyArrayStorage;
    v63 = v15;
    v64 = v11;
    v62 = v18;
    do
    {
      v28 = HIBYTE(*v26) & 0xFLL;
      if ((*v26 & 0x2000000000000000) == 0)
      {
        v28 = *(v26 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        v69 = v25;
        v29 = v16;
        v30 = v68;
        sub_622C(v68, v68[3]);

        sub_8C16C();
        v31 = v30[3];
        v32 = v30[4];
        v33 = v30;
        v16 = v29;
        sub_622C(v33, v31);
        sub_732F0(v31, v32);
        v34 = v73;
        sub_8B72C();
        v35 = *v70;
        (*v70)(v71, v34, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22AB0();
          sub_76120();
          v27 = v50;
        }

        v37 = *(v27 + 2);
        v36 = *(v27 + 3);
        v39 = v62;
        v38 = v63;
        if (v37 >= v36 >> 1)
        {
          sub_22A9C(v36);
          sub_76120();
          v27 = v51;
        }

        *(v27 + 2) = v37 + 1;
        sub_22B9C();
        (*(v39 + 32))(&v27[v40 + *(v39 + 72) * v37], v71, v29);
        v41 = v73;
        v35(v67, v73, v29);
        sub_22B0C();
        sub_6270(v42, v43, v44, v29);
        v35(v65, v41, v29);
        sub_8B6CC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22AB0();
          sub_76048();
          v72 = v52;
        }

        v25 = v69;
        v46 = *(v72 + 2);
        v45 = *(v72 + 3);
        if (v46 >= v45 >> 1)
        {
          sub_22A9C(v45);
          sub_76048();
          v72 = v53;
        }

        (*v60)(v73, v16);
        v47 = v72;
        *(v72 + 2) = v46 + 1;
        v48 = v64;
        sub_22B9C();
        (*(v48 + 32))(&v47[v49 + *(v48 + 72) * v46], v38, v66);
        v74 = v47;
      }

      v26 += 2;
      --v25;
    }

    while (v25);
  }

  if (qword_BF8B0 != -1)
  {
    swift_once();
  }

  sub_8C14C();
  v54 = v56;
  sub_8BD3C();
  v55 = sub_8BD4C();

  (*(v57 + 8))(v54, v58);
  sub_2C7E8(v55);
  sub_115FC();
}

void sub_21F80()
{
  sub_11614();
  v1 = v0;
  v91 = sub_8B00C();
  sub_3488();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_16854();
  v90 = v6 - v5;
  sub_22AE4();
  v7 = sub_8CDCC();
  sub_3488();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_9378();
  v84 = v11;
  sub_22ACC();
  v13 = __chkstk_darwin(v12);
  v15 = &v75 - v14;
  __chkstk_darwin(v13);
  sub_22B34();
  v98 = v16;
  v17 = sub_2664(&qword_C1070, &qword_8FCB8);
  v18 = sub_65E4(v17);
  __chkstk_darwin(v18);
  sub_9378();
  v89 = v19;
  sub_22ACC();
  __chkstk_darwin(v20);
  v88 = &v75 - v21;
  sub_22ACC();
  __chkstk_darwin(v22);
  sub_22B34();
  v78 = v23;
  sub_22AE4();
  v24 = sub_8CD7C();
  sub_E824(v24);
  v25 = sub_8CD6C();
  v96 = v1;
  v95 = sub_2D3B4();
  if (v95)
  {
    v27 = v9;
    v28 = 0;
    v99 = 0;
    v94 = v96 & 0xC000000000000001;
    v79 = v96 & 0xFFFFFFFFFFFFFF8;
    v85 = "com.apple.siri.nl.";
    v86 = (v3 + 8);
    v82 = (v27 + 8);
    v83 = (v27 + 16);
    v92 = _swiftEmptyArrayStorage;
    v77 = v27;
    v76 = v27 + 32;
    *&v26 = 136315138;
    v75 = v26;
    v93 = v7;
    v29 = v78;
    v87 = v25;
    v81 = v15;
    while (1)
    {
      if (v94)
      {
        v30 = sub_8D27C();
      }

      else
      {
        if (v28 >= *(v79 + 16))
        {
          goto LABEL_31;
        }

        v30 = *(v96 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (sub_226D4(v30))
      {
        v97 = v28 + 1;
        v33 = sub_8CD4C();
        sub_6270(v29, 1, 1, v33);
        v34 = v29;
        v35 = v88;
        sub_8CD5C();
        sub_92C0(v34, &qword_C1070, &qword_8FCB8);
        sub_22B0C();
        sub_6270(v36, v37, v38, v33);
        sub_2293C(v35, v34);
        v39 = v90;
        sub_8AFFC();
        sub_8AFDC();
        v41 = v40;
        (*v86)(v39, v91);
        sub_229AC(v34, v89);
        sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);

        v42 = v31;
        v43 = v99;
        sub_8CDAC();
        v99 = v43;
        if (v43)
        {
          sub_92C0(v34, &qword_C1070, &qword_8FCB8);
          v29 = v34;
          if (qword_BF818 != -1)
          {
            sub_650C();
            swift_once();
          }

          v44 = sub_8CD0C();
          sub_22B78(v44, qword_C3DF8);
          v45 = sub_8CCEC();
          v46 = sub_8D12C();
          v47 = sub_22B18(v46);
          v32 = v97;
          if (v47)
          {
            v48 = sub_E8E0();
            *v48 = 0;
            _os_log_impl(&dword_0, v45, v41, "#HomeCommunicationNLContextProvider Error creating RREntity", v48, 2u);
            sub_22AF0();
          }

          v99 = 0;
        }

        else
        {
          v80 = v42;
          v49 = v81;
          if (qword_BF818 != -1)
          {
            sub_650C();
            swift_once();
          }

          v50 = sub_8CD0C();
          sub_22B78(v50, qword_C3DF8);
          v51 = v93;
          v52 = *v83;
          (*v83)(v49, v98, v93);
          v53 = sub_8CCEC();
          v54 = sub_8D11C();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = sub_1D358();
            v56 = sub_6630();
            v100 = v56;
            *v55 = v75;
            sub_22A1C();
            v57 = sub_8D43C();
            v59 = v58;
            v60 = *v82;
            (*v82)(v81, v93);
            v61 = sub_862D8(v57, v59, &v100);

            *(v55 + 4) = v61;
            v62 = v54;
            v63 = v60;
            _os_log_impl(&dword_0, v53, v62, "#HomeCommunicationNLContextProvider rrEntity: %s", v55, 0xCu);
            sub_2714(v56);
            v51 = v93;
            sub_E890(v56);
            sub_E890(v55);
          }

          else
          {

            v63 = *v82;
            (*v82)(v49, v51);
          }

          v64 = v92;
          v32 = v97;
          v52(v84, v98, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22AB0();
            sub_761F8();
            v64 = v73;
          }

          v66 = v64[2];
          v65 = v64[3];
          if (v66 >= v65 >> 1)
          {
            sub_22A9C(v65);
            sub_761F8();
            v92 = v74;
          }

          else
          {
            v92 = v64;
          }

          v67 = v93;
          v63(v98, v93);
          v68 = v78;
          sub_92C0(v78, &qword_C1070, &qword_8FCB8);
          v92[2] = v66 + 1;
          sub_22B9C();
          v71 = v67;
          v29 = v68;
          (*(v72 + 32))(v70 + v69 + *(v72 + 72) * v66, v84, v71);
        }
      }

      else
      {
      }

      ++v28;
      if (v32 == v95)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_29:

    sub_115FC();
  }
}

uint64_t sub_226D4(void *a1)
{
  v2 = sub_8C2DC();
  sub_3488();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_16854();
  v8 = v7 - v6;
  v9 = [a1 home];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 spokenPhrase];

    sub_8CEDC();
  }

  v12 = sub_8C10C();
  sub_E824(v12);
  sub_8C0FC();
  (*(v4 + 104))(v8, enum case for IdentifierValue.vHomeAutomationHome(_:), v2);
  sub_214D0();

  (*(v4 + 8))(v8, v2);
  v13 = sub_8C52C();

  return v13;
}

uint64_t sub_22890()
{
  v0 = sub_8BC2C();

  return _swift_deallocClassInstance(v0, 16, 7);
}

unint64_t sub_228D8()
{
  result = qword_C1060;
  if (!qword_C1060)
  {
    sub_B9BC(&qword_C07E0, &qword_8FCB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1060);
  }

  return result;
}

uint64_t sub_2293C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1070, &qword_8FCB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_229AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C1070, &qword_8FCB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22A1C()
{
  result = qword_C1078;
  if (!qword_C1078)
  {
    sub_8CDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1078);
  }

  return result;
}

uint64_t sub_22AF0()
{
}

BOOL sub_22B18(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_22B60(uint64_t a1)
{

  return swift_allocObject();
}

void sub_22BA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22BC8()
{

  return sub_8CF0C();
}

double sub_22C00@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

BOOL sub_22C54(uint64_t a1, uint64_t a2)
{
  v4 = *((*(a2 + 112))() + 16);

  if (v4)
  {
    return 1;
  }

  v5 = *((*(a2 + 104))(a1, a2) + 16);

  if (v5)
  {
    return 1;
  }

  v7 = *((*(a2 + 96))(a1, a2) + 16);

  return v7 != 0;
}

uint64_t sub_22D1C(uint64_t a1, void *a2)
{
  v78 = 0;
  v79 = 0xE000000000000000;
  sub_8D25C(478);
  v82 = 0;
  v83 = 0xE000000000000000;
  sub_239F8();
  sub_8CF7C(v84);
  v3 = sub_239E8();
  v4(v3);
  v5 = v80;
  if (v80)
  {
    v6 = v81;
    sub_622C(&v78, v80);
    v7 = (*(v6 + 8))(v5, v6);
    v9 = v8;
    sub_2714(&v78);
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_234C0(&v78);
  }

  v9 = 0xE300000000000000;
  v7 = 7104878;
LABEL_6:
  v85._countAndFlagsBits = v7;
  v85._object = v9;
  sub_8CF7C(v85);

  sub_239F8();
  countAndFlagsBits = v86._countAndFlagsBits;
  sub_8CF7C(v86);
  v10 = sub_239E8();
  v12 = v11(v10);
  v13._countAndFlagsBits = 7104878;
  object = 0xE300000000000000;
  if (v12 != 7)
  {
    v13._countAndFlagsBits = sub_73424(v12);
    object = v13._object;
  }

  v13._object = object;
  sub_8CF7C(v13);

  sub_239F8();
  sub_8CF7C(v87);
  v15 = sub_239E8();
  v17 = v16(v15);
  v18 = (v17 & 1) == 0;
  if (v17)
  {
    v19._countAndFlagsBits = 1702195828;
  }

  else
  {
    v19._countAndFlagsBits = 0x65736C6166;
  }

  if (v18)
  {
    v20 = 0xE500000000000000;
  }

  else
  {
    v20 = 0xE400000000000000;
  }

  v19._object = v20;
  sub_8CF7C(v19);

  sub_239F8();
  sub_8CF7C(v88);
  v21 = sub_239E8();
  v23 = v22(v21);
  v24 = (v23 & 1) == 0;
  if (v23)
  {
    v25._countAndFlagsBits = 1702195828;
  }

  else
  {
    v25._countAndFlagsBits = 0x65736C6166;
  }

  if (v24)
  {
    v26 = 0xE500000000000000;
  }

  else
  {
    v26 = 0xE400000000000000;
  }

  v25._object = v26;
  sub_8CF7C(v25);

  sub_239F8();
  sub_8CF7C(v89);
  v27 = sub_239E8();
  v28(v27);
  sub_8D05C();
  sub_23A20();
  sub_23A04();

  sub_239F8();
  sub_8CF7C(v90);
  v29 = sub_239E8();
  v30(v29);
  sub_8D05C();
  sub_23A20();
  sub_23A04();

  sub_239F8();
  sub_8CF7C(v91);
  v31 = sub_239E8();
  v33 = v32(v31);
  sub_23A3C(v33);
  sub_23A20();
  sub_23A04();

  sub_239F8();
  v92._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v92);
  v34 = sub_239E8();
  v36 = v35(v34);
  sub_23A3C(v36);
  sub_23A20();
  sub_23A04();

  sub_239F8();
  v93._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v93);
  v37 = a2[14];
  v38 = sub_239E8();
  v39 = v37(v38);
  sub_23A3C(v39);
  sub_23A20();
  sub_23A04();

  sub_239F8();
  v94._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v94);
  v40 = sub_239E8();
  v42 = v41(v40);
  sub_23A3C(v42);
  sub_23A20();
  sub_23A04();

  sub_239F8();
  sub_8CF7C(v95);
  v43 = sub_239E8();
  v78 = v44(v43);
  LOBYTE(v79) = v45 & 1;
  sub_2664(&qword_C10B0, &unk_8FD20);
  v96._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v96);

  v97._countAndFlagsBits = 0x646E65202020200ALL;
  v97._object = 0xEF3D734D656D6954;
  sub_8CF7C(v97);
  v46 = sub_239E8();
  v78 = v47(v46);
  LOBYTE(v79) = v48 & 1;
  v98._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v98);

  sub_239F8();
  v99._countAndFlagsBits = countAndFlagsBits;
  sub_8CF7C(v99);
  v49 = sub_239E8();
  v51._countAndFlagsBits = v50(v49);
  if (v51._object)
  {
    v52 = v51._object;
  }

  else
  {
    v51._countAndFlagsBits = 0;
    v52 = 0xE000000000000000;
  }

  v51._object = v52;
  sub_8CF7C(v51);

  sub_239F8();
  sub_8CF7C(v100);
  v53 = sub_239E8();
  v54 = v37(v53);
  v55 = sub_23A3C(v54);
  v57 = v56;

  v101._countAndFlagsBits = v55;
  v101._object = v57;
  sub_8CF7C(v101);

  sub_239F8();
  sub_8CF7C(v102);
  v58 = sub_239E8();
  v60._countAndFlagsBits = v59(v58);
  v61 = 7104878;
  if (!v60._object)
  {
    v60._countAndFlagsBits = 7104878;
  }

  v62 = 0xE300000000000000;
  if (v60._object)
  {
    v63 = v60._object;
  }

  else
  {
    v63 = 0xE300000000000000;
  }

  v60._object = v63;
  sub_8CF7C(v60);

  sub_239F8();
  sub_8CF7C(v103);
  v64 = sub_239E8();
  v66 = v65(v64);
  v67._countAndFlagsBits = 7562617;
  switch(v66)
  {
    case 1:
      v62 = 0xE200000000000000;
      v67._countAndFlagsBits = 28526;
      break;
    case 2:
      v62 = 0xE600000000000000;
      v67._countAndFlagsBits = 0x6C65636E6163;
      break;
    case 3:
      v67._countAndFlagsBits = 7104878;
      break;
    default:
      break;
  }

  v67._object = v62;
  sub_8CF7C(v67);

  sub_239F8();
  sub_8CF7C(v104);
  v68 = sub_239E8();
  v70 = v69(v68);
  if (v70 && (v71 = v70, v72 = [v70 entityName], v71, v72))
  {
    v73 = [v72 spokenPhrase];

    v61 = sub_8CEDC();
    v75 = v74;
  }

  else
  {
    v75 = 0xE300000000000000;
  }

  v105._countAndFlagsBits = v61;
  v105._object = v75;
  sub_8CF7C(v105);

  return v82;
}

uint64_t sub_23480(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t sub_234C0(uint64_t a1)
{
  v2 = sub_2664(&qword_C10A8, &unk_8FF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23528(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8570;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_23598@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23528(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_235C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23480(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23604(uint64_t a1, uint64_t a2)
{
  v4 = sub_238EC();
  v5 = sub_23940();
  v6 = sub_23994();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

_BYTE *sub_2367C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x23748);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_23780()
{
  result = qword_C10B8;
  if (!qword_C10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10B8);
  }

  return result;
}

unint64_t sub_237D8()
{
  result = qword_C10C0;
  if (!qword_C10C0)
  {
    sub_B9BC(&qword_C10C8, &qword_8FD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10C0);
  }

  return result;
}

unint64_t sub_23840()
{
  result = qword_C10D0;
  if (!qword_C10D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10D0);
  }

  return result;
}

unint64_t sub_23898()
{
  result = qword_C10D8;
  if (!qword_C10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10D8);
  }

  return result;
}

unint64_t sub_238EC()
{
  result = qword_C10E0;
  if (!qword_C10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10E0);
  }

  return result;
}

unint64_t sub_23940()
{
  result = qword_C10E8;
  if (!qword_C10E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10E8);
  }

  return result;
}

unint64_t sub_23994()
{
  result = qword_C10F0;
  if (!qword_C10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10F0);
  }

  return result;
}

void sub_23A04()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_8CF7C(v3);
}

uint64_t sub_23A20()
{
}

uint64_t sub_23A3C(uint64_t a1)
{

  return sub_8D05C();
}

uint64_t sub_23A54()
{
  v1 = 7104878;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_8D25C(478);
  v34 = 0;
  v35 = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD000000000000023;
  v36._object = 0x80000000000968F0;
  sub_8CF7C(v36);
  sub_2436C(v0 + 8, &v30);
  v2 = v32;
  if (!v32)
  {
    sub_234C0(&v30);
LABEL_5:

    v6 = 0xE300000000000000;
    v4 = 7104878;
    goto LABEL_6;
  }

  v3 = v33;
  sub_622C(&v30, v32);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  sub_2714(&v30);
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  v37._countAndFlagsBits = v4;
  v37._object = v6;
  sub_8CF7C(v37);

  v38._object = 0x8000000000096920;
  v38._countAndFlagsBits = 0xD000000000000014;
  sub_8CF7C(v38);
  v7 = *(v0 + 48);
  if (v7 == 7)
  {
    object = 0xE300000000000000;
    v9._countAndFlagsBits = 7104878;
  }

  else
  {
    v9._countAndFlagsBits = sub_73424(v7);
    object = v9._object;
  }

  v9._object = object;
  sub_8CF7C(v9);

  v39._countAndFlagsBits = 0xD000000000000013;
  v39._object = 0x8000000000096940;
  sub_8CF7C(v39);
  if (*(v0 + 49))
  {
    v10._countAndFlagsBits = 1702195828;
  }

  else
  {
    v10._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 49))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v10._object = v11;
  sub_8CF7C(v10);

  v40._countAndFlagsBits = 0xD00000000000001DLL;
  v40._object = 0x8000000000096960;
  sub_8CF7C(v40);
  if (*(v0 + 51))
  {
    v12._countAndFlagsBits = 1702195828;
  }

  else
  {
    v12._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v0 + 51))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  v12._object = v13;
  sub_8CF7C(v12);

  v41._countAndFlagsBits = 0xD000000000000027;
  v41._object = 0x8000000000096980;
  sub_8CF7C(v41);
  v42._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v42);

  v43._countAndFlagsBits = 0xD00000000000001FLL;
  v43._object = 0x80000000000969B0;
  sub_8CF7C(v43);
  v44._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v44);

  v45._countAndFlagsBits = 0xD000000000000021;
  v45._object = 0x80000000000969D0;
  sub_8CF7C(v45);
  v46._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v46);

  v47._object = 0x8000000000096A00;
  v47._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v47);
  v48._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v48);

  v49._object = 0x8000000000096A20;
  v49._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v49);
  v50._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v50);

  v51._object = 0x8000000000096A40;
  v51._countAndFlagsBits = 0xD000000000000019;
  sub_8CF7C(v51);
  v52._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v52);

  v53._countAndFlagsBits = 0xD000000000000011;
  v53._object = 0x8000000000096A60;
  sub_8CF7C(v53);
  v14 = *(v0 + 120);
  v30 = *(v0 + 112);
  LOBYTE(v31) = v14;
  sub_2664(&qword_C10B0, &unk_8FD20);
  v54._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v54);

  v55._countAndFlagsBits = 0x646E65202020200ALL;
  v55._object = 0xEF3D734D656D6954;
  sub_8CF7C(v55);
  v15 = *(v0 + 136);
  v30 = *(v0 + 128);
  LOBYTE(v31) = v15;
  v56._countAndFlagsBits = sub_8CEEC();
  sub_8CF7C(v56);

  v57._object = 0x8000000000096A80;
  v57._countAndFlagsBits = 0xD000000000000014;
  sub_8CF7C(v57);
  v16 = *(v0 + 152);
  if (v16)
  {
    v17 = *(v0 + 144);
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = *(v0 + 152);
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v58._countAndFlagsBits = v17;
  v58._object = v18;
  sub_8CF7C(v58);

  v59._countAndFlagsBits = 0xD00000000000001FLL;
  v59._object = 0x80000000000969B0;
  sub_8CF7C(v59);
  v60._countAndFlagsBits = sub_8D05C();
  sub_8CF7C(v60);

  v61._countAndFlagsBits = 0xD00000000000001DLL;
  v61._object = 0x8000000000096AA0;
  sub_8CF7C(v61);
  if (*(v0 + 176))
  {
    v19 = *(v0 + 168);
    v20 = *(v0 + 176);
  }

  else
  {
    v20 = 0xE300000000000000;
    v19 = 7104878;
  }

  v62._countAndFlagsBits = v19;
  v62._object = v20;
  sub_8CF7C(v62);

  v63._countAndFlagsBits = 0xD000000000000023;
  v63._object = 0x8000000000096AC0;
  sub_8CF7C(v63);
  v21 = 0xE300000000000000;
  v22._countAndFlagsBits = 7562617;
  switch(*(v0 + 184))
  {
    case 1:
      v21 = 0xE200000000000000;
      v22._countAndFlagsBits = 28526;
      break;
    case 2:
      v21 = 0xE600000000000000;
      v22._countAndFlagsBits = 0x6C65636E6163;
      break;
    case 3:
      v22._countAndFlagsBits = 7104878;
      break;
    default:
      break;
  }

  v22._object = v21;
  sub_8CF7C(v22);

  v64._countAndFlagsBits = 0xD000000000000010;
  v64._object = 0x8000000000096AF0;
  sub_8CF7C(v64);
  v23 = *(v0 + 192);
  if (v23 && (v24 = [v23 entityName]) != 0)
  {
    v25 = v24;
    v26 = [v24 spokenPhrase];

    v1 = sub_8CEDC();
    v28 = v27;
  }

  else
  {
    v28 = 0xE300000000000000;
  }

  v65._countAndFlagsBits = v1;
  v65._object = v28;
  sub_8CF7C(v65);

  return v34;
}

double sub_240A8@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *&result = 2031623;
  *(a2 + 48) = 2031623;
  *(a2 + 56) = _swiftEmptyArrayStorage;
  *(a2 + 64) = _swiftEmptyArrayStorage;
  *(a2 + 72) = _swiftEmptyArrayStorage;
  *(a2 + 80) = _swiftEmptyArrayStorage;
  *(a2 + 88) = _swiftEmptyArrayStorage;
  *(a2 + 96) = _swiftEmptyArrayStorage;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 1;
  *(a2 + 128) = 0;
  *(a2 + 136) = 1;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = _swiftEmptyArrayStorage;
  *(a2 + 184) = a1;
  *(a2 + 192) = 0;
  return result;
}

uint64_t sub_24108(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24128(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 200))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24254()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t sub_2428C()
{
  v1 = *(v0 + 168);

  return v1;
}

void *sub_242C4()
{
  v1 = *(v0 + 192);
  v2 = v1;
  return v1;
}

unint64_t sub_242F0(uint64_t a1)
{
  result = sub_24318();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24318()
{
  result = qword_C10F8;
  if (!qword_C10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C10F8);
  }

  return result;
}

uint64_t sub_2436C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664(&qword_C10A8, &unk_8FF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for UnsupportedHomeCommunication(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for UnsupportedHomeCommunication(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x24530);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24568()
{
  sub_2651C();
  v3 = v2;
  v4 = v0;
  switch(v5)
  {
    case 1:
      v3 = sub_266D8();
      break;
    case 2:
      v3 = sub_26568();
      break;
    case 3:
      v3 = sub_26628();
      break;
    case 4:
      v3 = sub_26610();
      break;
    case 5:
      v3 = 0xD000000000000019;
      v4 = 0x8000000000095580;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_266AC();
      break;
    case 2:
      sub_2654C();
      break;
    case 3:
      sub_265F8();
      break;
    case 4:
      sub_265C8();
      break;
    case 5:
      sub_26540();
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26640(v3, v1, v2);
  }

  return v7 & 1;
}

uint64_t sub_246B8()
{
  sub_2651C();
  v3 = v2;
  v4 = v0;
  v5 = "failureRequiringAppLaunch";
  switch(v6)
  {
    case 1:
      v3 = sub_266D8();
      break;
    case 2:
      v3 = sub_26568();
      break;
    case 3:
      v3 = sub_26628();
      break;
    case 4:
      v3 = sub_26610();
      break;
    case 5:
      v3 = 0xD000000000000019;
      v4 = 0x8000000000095580;
      break;
    case 6:
      v4 = 0x80000000000955A0;
      v3 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_266AC();
      break;
    case 2:
      sub_2654C();
      break;
    case 3:
      sub_265F8();
      break;
    case 4:
      sub_265C8();
      break;
    case 5:
      v2 = 0xD000000000000019;
      v0 = (v5 - 32) | 0x8000000000000000;
      break;
    case 6:
      sub_26540();
      v2 = 0xD00000000000001CLL;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26640(v3, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_24830(char a1)
{
  sub_266C0();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_8D45C();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_248B0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C65636E6163;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1953063287;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C65636E6163;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1953063287;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264D8(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_249DC(char a1)
{
  if (a1)
  {
    v1 = 0xEF6572756C696146;
  }

  else
  {
    v1 = 0xEC000000746E656DLL;
  }

  sub_266C0();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264D8(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_24A80(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 28532;
  switch(a1)
  {
    case 1:
      v3 = 0xE400000000000000;
      v4 = 1836020326;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v4 = 0x6563616C706572;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v4 = 0x65766F6D6572;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v4 = 0x65726F6E6769;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v4 = 7301239;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v4 = 1953391987;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 28532;
  switch(a2)
  {
    case 1:
      v5 = 0xE400000000000000;
      v6 = 1836020326;
      break;
    case 2:
      v5 = 0xE700000000000000;
      v6 = 0x6563616C706572;
      break;
    case 3:
      v5 = 0xE600000000000000;
      v6 = 0x65766F6D6572;
      break;
    case 4:
      v5 = 0xE600000000000000;
      v6 = 0x65726F6E6769;
      break;
    case 5:
      v5 = 0xE300000000000000;
      v6 = 7301239;
      break;
    case 6:
      v5 = 0xE400000000000000;
      v6 = 1953391987;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264D8(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_24C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264D8(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_24CDC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x636972656E6567;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x636972656E6567;
  switch(v4)
  {
    case 1:
      v6 = "NLv3IntentPlusServerConversion";
      goto LABEL_5;
    case 2:
      v6 = "directInvocation";
LABEL_5:
      v3 = v6 | 0x8000000000000000;
      v5 = 0xD000000000000010;
      break;
    case 3:
      break;
    default:
      v3 = 0x8000000000094FC0;
      v5 = 0xD00000000000001ELL;
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v8 = "NLv3IntentPlusServerConversion";
      goto LABEL_10;
    case 2:
      v8 = "directInvocation";
LABEL_10:
      v7 = v8 | 0x8000000000000000;
      v2 = 0xD000000000000010;
      break;
    case 3:
      break;
    default:
      v7 = 0x8000000000094FC0;
      v2 = 0xD00000000000001ELL;
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_264D8(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_24E24(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_266C0();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_264D8(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_24EA8(char a1)
{
  sub_266C0();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_8D45C();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_24F34(char a1, uint64_t a2)
{
  v2 = 7562617;
  if (a1)
  {
    sub_266CC();
    if (v3)
    {
      v5 = 28526;
    }

    else
    {
      v5 = 0x6C65636E6163;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7562617;
  }

  if (a2)
  {
    sub_266CC();
    if (v7)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE300000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_264D8(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_24FF8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = sub_261F0(a1);
  v5 = v4;
  if (v3 == sub_261F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_8D45C();
  }

  return v8 & 1;
}

uint64_t sub_2507C()
{
  sub_8C7FC();
  sub_26468();
  sub_8D01C();
  sub_8D01C();
  if (v6 == v4 && v7 == v5)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_26640(v6, v0, v4);
  }

  return v2 & 1;
}

Swift::Int sub_2519C(uint64_t a1)
{
  sub_266EC(a1);
  v1(v4, v2);
  return sub_8D54C();
}

Swift::Int sub_251E8(uint64_t a1)
{
  v1 = a1;
  sub_8D50C();
  sub_261F0(v1);
  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25264(uint64_t a1)
{
  sub_266EC(a1);
  v3 = v1(v2);
  sub_2665C(v3, v4, v5);

  return sub_8D54C();
}

Swift::Int sub_25338(uint64_t a1, uint64_t a2)
{
  sub_8D50C();
  sub_8CF4C();
  return sub_8D54C();
}

uint64_t sub_253DC()
{
  sub_264F4();
  switch(v0)
  {
    case 1:
      sub_26698();
      break;
    case 2:
      sub_26584();
      break;
    case 3:
      sub_265B0();
      break;
    case 4:
      sub_265E0();
      break;
    case 5:
      sub_26540();
      break;
    default:
      break;
  }

  sub_8CF4C();
}

uint64_t sub_2549C()
{
  sub_264F4();
  switch(v0)
  {
    case 1:
      sub_26698();
      break;
    case 2:
      sub_26584();
      break;
    case 3:
      sub_265B0();
      break;
    case 4:
      sub_265E0();
      break;
    case 5:
    case 6:
      sub_26540();
      break;
    default:
      break;
  }

  sub_8CF4C();
}

uint64_t sub_25564(uint64_t a1, char a2)
{
  sub_8CF4C();
}

uint64_t sub_255D4()
{
  sub_265A0();
  sub_8CF4C();
}

uint64_t sub_25694(uint64_t a1, char a2)
{
  sub_8CF4C();
}

uint64_t sub_25714(uint64_t a1, char a2)
{
  sub_8CF4C();
}

uint64_t sub_25828(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_8CF4C();
}

uint64_t sub_25880(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
      break;
    default:
      sub_26540();
      break;
  }

  sub_8CF4C();
}

uint64_t sub_25948(uint64_t a1, char a2)
{
  sub_8CF4C();
}

uint64_t sub_259A8(uint64_t a1, char a2)
{
  sub_8CF4C();
}

uint64_t sub_25A50(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_266CC();
  }

  else
  {
    sub_265A0();
  }

  sub_8CF4C();
}

uint64_t sub_25AB8(uint64_t a1, uint64_t a2)
{
  sub_261F0(a2);
  sub_8CF4C();
}

Swift::Int sub_25B0C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_8D50C();
  sub_261F0(v2);
  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25B6C(uint64_t a1)
{
  sub_26680(a1);
  if (v1)
  {
    sub_266CC();
  }

  else
  {
    sub_265A0();
  }

  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_8D50C();
  v5 = a3(a2);
  sub_2665C(v5, v6, v7);

  return sub_8D54C();
}

Swift::Int sub_25C8C(uint64_t a1)
{
  sub_26680(a1);
  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25CF0(uint64_t a1)
{
  sub_26680(a1);
  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25DB0(uint64_t a1)
{
  sub_26680(a1);
  sub_8CF4C();

  return sub_8D54C();
}

Swift::Int sub_25E74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_8D50C();
  a3(v6, a2);
  return sub_8D54C();
}

Swift::Int sub_25ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8D50C();
  sub_8CF4C();
  return sub_8D54C();
}

Swift::Int sub_25F24(uint64_t a1)
{
  sub_26680(a1);
  sub_8CF4C();

  return sub_8D54C();
}

id sub_25FD8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_622C(a1, v1);
  switch((*(v2 + 16))(v1, v2))
  {
    case 2u:
    case 4u:
      if (qword_BF7F8 != -1)
      {
        swift_once();
      }

      v3 = &qword_C0EC0;
      break;
    case 3u:
      if (qword_BF800 != -1)
      {
        swift_once();
      }

      v3 = &qword_C0EC8;
      break;
    case 5u:
      if (qword_BF808 != -1)
      {
        swift_once();
      }

      v3 = &qword_C0ED0;
      break;
    case 6u:
      if (qword_BF810 != -1)
      {
        swift_once();
      }

      v3 = &qword_C0ED8;
      break;
    default:
      if (qword_BF7F0 != -1)
      {
        swift_once();
      }

      v3 = &qword_C0EB8;
      break;
  }

  return *v3;
}

uint64_t sub_261A0()
{
  v0 = type metadata accessor for SystemAppFinder();
  result = swift_allocObject();
  qword_C3E48 = v0;
  unk_C3E50 = &off_BB8C0;
  qword_C3E30[0] = result;
  return result;
}

unint64_t sub_261F0(char a1)
{
  result = 0x726F707075736E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000022;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD00000000000001DLL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

unint64_t sub_26328(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8600;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_26398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26328(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_263C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_261F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_26414()
{
  result = qword_C1100;
  if (!qword_C1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1100);
  }

  return result;
}

unint64_t sub_26468()
{
  result = qword_C1108;
  if (!qword_C1108)
  {
    sub_8C7FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1108);
  }

  return result;
}

uint64_t sub_264D8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_8D45C();
}

uint64_t sub_26640(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_8D45C();
}

uint64_t sub_2665C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_8CF4C();
}

void *sub_26680(uint64_t a1, ...)
{

  return sub_8D50C();
}

void *sub_266EC(uint64_t a1, ...)
{

  return sub_8D50C();
}

unint64_t sub_2670C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_B8508;
  v6._object = a2;
  v4 = sub_8D39C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t HomeCommunicationSnippetModel.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_8C7DC();
  sub_3488();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_16854();
  v10 = v9 - v8;
  type metadata accessor for HomeCommunicationSnippetModel(0);
  sub_6574();
  __chkstk_darwin(v11);
  sub_16854();
  v14 = v13 - v12;
  sub_26984(v3, v13 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 104))(v10, enum case for DeviceIdiom.car(_:), v4);
    sub_28770(&qword_C1110, &type metadata accessor for DeviceIdiom, &protocol conformance descriptor for DeviceIdiom);
    v15 = sub_8CE9C();
    (*(v6 + 8))(v10, v4);
    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  sub_26D8C(v14, type metadata accessor for HomeCommunicationSnippetModel);
  return v16 & 1;
}

uint64_t type metadata accessor for HomeCommunicationSnippetModel(uint64_t a1)
{
  result = qword_C1238;
  if (!qword_C1238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26984(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeCommunicationSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HomeCommunicationSnippetModel.description.getter()
{
  type metadata accessor for HomeDisambiguationModel(0);
  sub_6574();
  __chkstk_darwin(v1);
  sub_16854();
  v4 = v3 - v2;
  type metadata accessor for CarPlayIntercomControlModel(0);
  sub_6574();
  __chkstk_darwin(v5);
  sub_16854();
  v8 = v7 - v6;
  type metadata accessor for HomeAppLaunchModel(0);
  sub_6574();
  __chkstk_darwin(v9);
  sub_16854();
  v12 = v11 - v10;
  type metadata accessor for HomeCommunicationSnippetModel(0);
  sub_6574();
  __chkstk_darwin(v13);
  sub_16854();
  v16 = v15 - v14;
  sub_26984(v0, v15 - v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_28680(v16, v8, type metadata accessor for CarPlayIntercomControlModel);
      sub_290F0();
      sub_8D25C(27);
      v25._countAndFlagsBits = 0xD000000000000018;
      v25._object = 0x8000000000096B70;
      sub_8CF7C(v25);
      sub_8D31C();
      v26._countAndFlagsBits = 41;
      v26._object = 0xE100000000000000;
      sub_8CF7C(v26);
      v17 = v21;
      v18 = type metadata accessor for CarPlayIntercomControlModel;
      v19 = v8;
      goto LABEL_6;
    case 2u:
      sub_28680(v16, v4, type metadata accessor for HomeDisambiguationModel);
      sub_290F0();
      sub_8D25C(22);
      v23._object = 0x8000000000096B50;
      v23._countAndFlagsBits = 0xD000000000000014;
      sub_8CF7C(v23);
      sub_8D31C();
      v17 = v21;
      v18 = type metadata accessor for HomeDisambiguationModel;
      v19 = v4;
      goto LABEL_6;
    case 3u:
      sub_290F0();
      sub_8D25C(30);
      v24._countAndFlagsBits = 0xD00000000000001CLL;
      v24._object = 0x8000000000096B30;
      sub_8CF7C(v24);
      sub_8D31C();

      return v21;
    default:
      sub_28680(v16, v12, type metadata accessor for HomeAppLaunchModel);
      v22._countAndFlagsBits = 0x6E75614C7070612ELL;
      v22._object = 0xEB00000000286863;
      sub_8CF7C(v22);
      sub_8D31C();
      v17 = 0;
      sub_29094();
      v19 = v12;
LABEL_6:
      sub_26D8C(v19, v18);
      return v17;
  }
}

uint64_t sub_26D8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_6574();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26DF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E75614C707061 && a2 == 0xE900000000000068;
  if (v4 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000000096BC0 == a2;
    if (v6 || (sub_8D45C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x8000000000096BE0 == a2;
      if (v7 || (sub_8D45C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001ALL && 0x8000000000096C00 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_8D45C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_26F64(char a1)
{
  result = 0x636E75614C707061;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27010(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_8D45C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_270A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27010(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_270E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_938C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27114(uint64_t a1)
{
  v2 = sub_27C3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_27150(uint64_t a1)
{
  v2 = sub_27C3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2718C(uint64_t a1)
{
  v2 = sub_27BE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_271C8(uint64_t a1)
{
  v2 = sub_27BE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2720C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26DF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F5C();
  *a1 = result;
  return result;
}

uint64_t sub_2725C(uint64_t a1)
{
  v2 = sub_27A98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_27298(uint64_t a1)
{
  v2 = sub_27A98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_272D4(uint64_t a1)
{
  v2 = sub_27B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_27310(uint64_t a1)
{
  v2 = sub_27B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2734C(uint64_t a1)
{
  v2 = sub_27AEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_27388(uint64_t a1)
{
  v2 = sub_27AEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HomeCommunicationSnippetModel.encode(to:)(void *a1)
{
  sub_2664(&qword_C1118, &qword_90090);
  sub_3488();
  v79 = v3;
  v80 = v2;
  sub_1D394();
  __chkstk_darwin(v4);
  sub_1D370();
  v78 = v5;
  sub_2664(&qword_C1120, &qword_90098);
  sub_3488();
  v76 = v7;
  v77 = v6;
  sub_1D394();
  __chkstk_darwin(v8);
  sub_1D370();
  v75 = v9;
  v73 = type metadata accessor for HomeDisambiguationModel(0);
  sub_6574();
  __chkstk_darwin(v10);
  sub_16854();
  v74 = v12 - v11;
  sub_2664(&qword_C1128, &qword_900A0);
  sub_3488();
  v71 = v14;
  v72 = v13;
  sub_1D394();
  __chkstk_darwin(v15);
  sub_1D370();
  v70 = v16;
  v68[3] = type metadata accessor for CarPlayIntercomControlModel(0);
  sub_6574();
  __chkstk_darwin(v17);
  sub_16854();
  v69 = v19 - v18;
  sub_2664(&qword_C1130, &qword_900A8);
  sub_3488();
  v68[1] = v21;
  v68[2] = v20;
  sub_1D394();
  __chkstk_darwin(v22);
  type metadata accessor for HomeAppLaunchModel(0);
  sub_6574();
  __chkstk_darwin(v23);
  sub_16854();
  v26 = v25 - v24;
  type metadata accessor for HomeCommunicationSnippetModel(0);
  sub_6574();
  __chkstk_darwin(v27);
  sub_16854();
  v30 = (v29 - v28);
  sub_2664(&qword_C1138, &qword_900B0);
  sub_3488();
  v82 = v32;
  v83 = v31;
  sub_1D394();
  __chkstk_darwin(v33);
  v35 = v68 - v34;
  v36 = a1[4];
  sub_622C(a1, a1[3]);
  sub_27A98();
  sub_8D57C();
  sub_26984(v81, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v46 = v69;
      sub_28680(v30, v69, type metadata accessor for CarPlayIntercomControlModel);
      LOBYTE(v84[0]) = 1;
      v61 = sub_27BE8();
      sub_290CC(&type metadata for HomeCommunicationSnippetModel.CarPlayIntercomControlCodingKeys, v84, v62, v63, v61);
      sub_2904C();
      sub_28770(v64, v65, &protocol conformance descriptor for CarPlayIntercomControlModel);
      sub_8D41C();
      v66 = sub_29110();
      v67(v66);
      v54 = type metadata accessor for CarPlayIntercomControlModel;
      goto LABEL_6;
    case 2u:
      v46 = v74;
      sub_28680(v30, v74, type metadata accessor for HomeDisambiguationModel);
      LOBYTE(v84[0]) = 2;
      v47 = sub_27B94();
      sub_290CC(&type metadata for HomeCommunicationSnippetModel.HomeDisambiguationCodingKeys, v84, v48, v49, v47);
      sub_29064();
      sub_28770(v50, v51, &protocol conformance descriptor for HomeDisambiguationModel);
      sub_8D41C();
      v52 = sub_29110();
      v53(v52);
      v54 = type metadata accessor for HomeDisambiguationModel;
LABEL_6:
      v44 = v54;
      v45 = v46;
      goto LABEL_7;
    case 3u:
      v56 = *v30;
      v55 = v30[1];
      LOBYTE(v84[0]) = 3;
      sub_27AEC();
      v57 = v78;
      v58 = v83;
      sub_8D3FC();
      v84[0] = v56;
      v84[1] = v55;
      sub_27B40();
      v59 = v80;
      sub_8D41C();
      (*(v79 + 8))(v57, v59);
      (*(v82 + 8))(v35, v58);

    default:
      sub_28680(v30, v26, type metadata accessor for HomeAppLaunchModel);
      LOBYTE(v84[0]) = 0;
      v37 = sub_27C3C();
      sub_290CC(&type metadata for HomeCommunicationSnippetModel.AppLaunchCodingKeys, v84, v38, v39, v37);
      sub_2907C();
      sub_28770(v40, v41, &protocol conformance descriptor for HomeAppLaunchModel);
      sub_8D41C();
      v42 = sub_29110();
      v43(v42);
      sub_29094();
      v45 = v26;
LABEL_7:
      sub_26D8C(v45, v44);
      return (*(v82 + 8))(v35, v36);
  }
}

unint64_t sub_27A98()
{
  result = qword_C1140;
  if (!qword_C1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1140);
  }

  return result;
}

unint64_t sub_27AEC()
{
  result = qword_C1148;
  if (!qword_C1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1148);
  }

  return result;
}

unint64_t sub_27B40()
{
  result = qword_C1150;
  if (!qword_C1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1150);
  }

  return result;
}

unint64_t sub_27B94()
{
  result = qword_C1158;
  if (!qword_C1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1158);
  }

  return result;
}

unint64_t sub_27BE8()
{
  result = qword_C1168;
  if (!qword_C1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1168);
  }

  return result;
}

unint64_t sub_27C3C()
{
  result = qword_C1170;
  if (!qword_C1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1170);
  }

  return result;
}

uint64_t HomeCommunicationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v112 = sub_2664(&qword_C1178, &qword_900B8);
  sub_3488();
  v105 = v3;
  sub_1D394();
  __chkstk_darwin(v4);
  sub_1D370();
  v110 = v5;
  v111 = sub_2664(&qword_C1180, &qword_900C0);
  sub_3488();
  v104 = v6;
  sub_1D394();
  __chkstk_darwin(v7);
  sub_1D370();
  v109 = v8;
  sub_2664(&qword_C1188, &qword_900C8);
  sub_3488();
  v102 = v10;
  v103 = v9;
  sub_1D394();
  __chkstk_darwin(v11);
  sub_1D370();
  v108 = v12;
  sub_2664(&qword_C1190, &qword_900D0);
  sub_3488();
  v100 = v14;
  v101 = v13;
  sub_1D394();
  __chkstk_darwin(v15);
  sub_1D370();
  v107 = v16;
  v115 = sub_2664(&qword_C1198, &qword_900D8);
  sub_3488();
  v113 = v17;
  sub_1D394();
  __chkstk_darwin(v18);
  v20 = &v95 - v19;
  v114 = type metadata accessor for HomeCommunicationSnippetModel(0);
  sub_6574();
  v22 = __chkstk_darwin(v21);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v95 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v95 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v95 - v32;
  __chkstk_darwin(v31);
  v35 = &v95 - v34;
  v36 = a1[3];
  v116 = a1;
  sub_622C(a1, v36);
  sub_27A98();
  v37 = v118;
  sub_8D56C();
  if (v37)
  {
    return sub_2714(v116);
  }

  v118 = v33;
  v97 = v30;
  v96 = v24;
  v98 = v27;
  v99 = v35;
  v39 = v114;
  v38 = v115;
  v40 = sub_8D3EC();
  v44 = sub_285E4(v40, 0);
  if (v42 == v43 >> 1)
  {
    goto LABEL_7;
  }

  v95 = 0;
  if (v42 >= (v43 >> 1))
  {
    __break(1u);
    JUMPOUT(0x28598);
  }

  v45 = *(v41 + v42);
  sub_28F80(v42 + 1, v43 >> 1, v44, v41, v42, v43);
  v47 = v46;
  v49 = v48;
  swift_unknownObjectRelease();
  if (v47 != v49 >> 1)
  {
LABEL_7:
    v57 = v38;
    v58 = sub_8D2AC();
    swift_allocError();
    v60 = v59;
    sub_2664(&qword_C11A0, &qword_900E0);
    *v60 = v39;
    sub_8D3BC();
    sub_8D29C();
    (*(*(v58 - 8) + 104))(v60, enum case for DecodingError.typeMismatch(_:), v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v113 + 8))(v20, v57);
    return sub_2714(v116);
  }

  v50 = v118;
  switch(v45)
  {
    case 1:
      LOBYTE(v117[0]) = 1;
      sub_27BE8();
      sub_290AC(&type metadata for HomeCommunicationSnippetModel.CarPlayIntercomControlCodingKeys, v117);
      type metadata accessor for CarPlayIntercomControlModel(0);
      sub_29100();
      sub_2904C();
      v71 = sub_28770(v69, v70, &protocol conformance descriptor for CarPlayIntercomControlModel);
      v50 = v97;
      sub_2913C(0, v72, v73, v74, v71);
      sub_29120();
      v88 = sub_2903C();
      v89(v88);
      v90 = sub_29028();
      v91(v90);
      goto LABEL_12;
    case 2:
      LOBYTE(v117[0]) = 2;
      sub_27B94();
      sub_290AC(&type metadata for HomeCommunicationSnippetModel.HomeDisambiguationCodingKeys, v117);
      type metadata accessor for HomeDisambiguationModel(0);
      sub_29100();
      sub_29064();
      v64 = sub_28770(v62, v63, &protocol conformance descriptor for HomeDisambiguationModel);
      v50 = v98;
      sub_2913C(0, v65, v66, v67, v64);
      sub_29120();
      v75 = sub_2903C();
      v76(v75);
      v77 = sub_29028();
      v78(v77);
      goto LABEL_12;
    case 3:
      LOBYTE(v117[0]) = 3;
      sub_27AEC();
      sub_290AC(&type metadata for HomeCommunicationSnippetModel.SendAnnouncementNeedsValueCodingKeys, v117);
      sub_2862C();
      sub_8D3DC();
      v68 = v113;
      swift_unknownObjectRelease();
      v79 = sub_2903C();
      v80(v79);
      (*(v68 + 8))(v20, v38);
      v81 = v96;
      *v96 = v117[0];
      swift_storeEnumTagMultiPayload();
      sub_29010();
      v83 = v81;
      goto LABEL_13;
    default:
      LOBYTE(v117[0]) = 0;
      sub_27C3C();
      sub_290AC(&type metadata for HomeCommunicationSnippetModel.AppLaunchCodingKeys, v117);
      type metadata accessor for HomeAppLaunchModel(0);
      sub_29100();
      sub_2907C();
      v53 = sub_28770(v51, v52, &protocol conformance descriptor for HomeAppLaunchModel);
      sub_2913C(0, v54, v55, v56, v53);
      sub_29120();
      v84 = sub_2903C();
      v85(v84);
      v86 = sub_29028();
      v87(v86);
LABEL_12:
      swift_storeEnumTagMultiPayload();
      sub_29010();
      v83 = v50;
LABEL_13:
      v92 = v99;
      sub_28680(v83, v99, v82);
      v93 = v116;
      sub_29010();
      sub_28680(v92, v106, v94);
      result = sub_2714(v93);
      break;
  }

  return result;
}

uint64_t sub_285E4(uint64_t result, uint64_t a2)
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

unint64_t sub_2862C()
{
  result = qword_C11A8;
  if (!qword_C11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C11A8);
  }

  return result;
}

uint64_t sub_28680(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_6574();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_28770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_287B8(uint64_t a1)
{
  result = type metadata accessor for HomeAppLaunchModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CarPlayIntercomControlModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for HomeDisambiguationModel(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HomeCommunicationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x28914);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_28980(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x28A1CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_28A58()
{
  result = qword_C1270;
  if (!qword_C1270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1270);
  }

  return result;
}

unint64_t sub_28AB0()
{
  result = qword_C1278;
  if (!qword_C1278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1278);
  }

  return result;
}

unint64_t sub_28B08()
{
  result = qword_C1280;
  if (!qword_C1280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1280);
  }

  return result;
}

unint64_t sub_28B60()
{
  result = qword_C1288;
  if (!qword_C1288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1288);
  }

  return result;
}

unint64_t sub_28BB8()
{
  result = qword_C1290;
  if (!qword_C1290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1290);
  }

  return result;
}

unint64_t sub_28C10()
{
  result = qword_C1298;
  if (!qword_C1298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1298);
  }

  return result;
}

unint64_t sub_28C68()
{
  result = qword_C12A0;
  if (!qword_C12A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12A0);
  }

  return result;
}

unint64_t sub_28CC0()
{
  result = qword_C12A8;
  if (!qword_C12A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12A8);
  }

  return result;
}

unint64_t sub_28D18()
{
  result = qword_C12B0;
  if (!qword_C12B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12B0);
  }

  return result;
}

unint64_t sub_28D70()
{
  result = qword_C12B8;
  if (!qword_C12B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12B8);
  }

  return result;
}

unint64_t sub_28DC8()
{
  result = qword_C12C0;
  if (!qword_C12C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12C0);
  }

  return result;
}

unint64_t sub_28E20()
{
  result = qword_C12C8;
  if (!qword_C12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12C8);
  }

  return result;
}

unint64_t sub_28E78()
{
  result = qword_C12D0;
  if (!qword_C12D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12D0);
  }

  return result;
}

unint64_t sub_28ED0()
{
  result = qword_C12D8;
  if (!qword_C12D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12D8);
  }

  return result;
}

unint64_t sub_28F28()
{
  result = qword_C12E0;
  if (!qword_C12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C12E0);
  }

  return result;
}

uint64_t sub_28F80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_290AC(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)(a1, a2, v2, a1);
}

uint64_t sub_290CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_8D3FC();
}

uint64_t sub_29120()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_2913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_8D3DC();
}

uint64_t sub_291A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  sub_8BBEC();
  swift_allocObject();
  sub_8BBDC();
  sub_8BBBC();

  sub_29318();
  sub_8BBBC();

  v7 = sub_8BBCC();
  v9 = v8;

  *a4 = v7;
  *a5 = v9;
  return result;
}

uint64_t sub_29264()
{
  sub_8BBEC();
  swift_allocObject();
  sub_8BBDC();
  sub_8BBBC();

  sub_29318();
  sub_8BBBC();

  v0 = sub_8BBCC();
  v2 = v1;

  qword_C3E88 = v0;
  unk_C3E90 = v2;
  return result;
}

uint64_t HomeTarget.hash(into:)(uint64_t a1)
{
  sub_8B00C();
  sub_2BBE4();
  sub_29A30(v1);

  return sub_8CE7C();
}

uint64_t HomeTarget.id.getter@<X0>(uint64_t a1@<X8>)
{
  sub_8B00C();
  sub_6574();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t property wrapper backing initializer of HomeTarget.selectHomeAction(uint64_t a1)
{
  sub_29474();

  return sub_8B03C();
}

unint64_t sub_29474()
{
  result = qword_C12F0;
  if (!qword_C12F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C12F0);
  }

  return result;
}

uint64_t HomeTarget.init(id:name:selectHomeAction:)@<X0>(uint64_t a1@<X0>, uint64_t a5@<X8>)
{
  v7 = sub_8B00C();
  sub_3488();
  v9 = v8;
  (*(v10 + 16))(a5, a1, v7);
  type metadata accessor for HomeTarget(0);
  sub_8B05C();
  sub_29474();
  sub_8B03C();
  return (*(v9 + 8))(a1, v7);
}

uint64_t sub_295E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_8D45C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000010 && 0x8000000000096C50 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_8D45C();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_296F4(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0xD000000000000010;
}

uint64_t sub_29744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_295E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2976C(uint64_t a1)
{
  v2 = sub_299DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_297A8(uint64_t a1)
{
  v2 = sub_299DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HomeTarget.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_2664(&qword_C12F8, &unk_907A0);
  sub_3488();
  v8 = v7;
  sub_1D394();
  __chkstk_darwin(v9);
  sub_2BC44();
  sub_622C(a1, a1[3]);
  sub_299DC();
  sub_8D57C();
  v27 = 0;
  sub_8B00C();
  sub_2BBE4();
  v11 = sub_29A30(v10);
  sub_2BC18(v4, &v27, v12, v13, v11);
  if (!v2)
  {
    v14 = type metadata accessor for HomeTarget(0);
    v15 = *(v14 + 20);
    sub_2BCA4();
    sub_2664(&qword_C01A8, &qword_8E8F0);
    sub_C5E4();
    v17 = sub_2A09C(v16);
    sub_2BC18(v4 + v15, &v26, v18, v19, v17);
    v20 = *(v14 + 24);
    sub_2BC98();
    sub_2664(&qword_C1310, &qword_907B0);
    v21 = sub_2A108(&unk_C1318);
    sub_2BC18(v4 + v20, &v25, v22, v23, v21);
  }

  return (*(v8 + 8))(v3, v6);
}

unint64_t sub_299DC()
{
  result = qword_C1300;
  if (!qword_C1300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1300);
  }

  return result;
}

unint64_t sub_29A30(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

Swift::Int HomeTarget.hashValue.getter()
{
  sub_8D50C();
  sub_8B00C();
  sub_2BBE4();
  sub_29A30(v0);
  sub_8CE7C();
  return sub_8D54C();
}

uint64_t HomeTarget.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = sub_2664(&qword_C1310, &qword_907B0);
  sub_3488();
  v41 = v4;
  sub_1D394();
  __chkstk_darwin(v5);
  v48 = &v39 - v6;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_3488();
  v46 = v8;
  v47 = v7;
  sub_1D394();
  __chkstk_darwin(v9);
  sub_2BC44();
  v10 = sub_8B00C();
  sub_3488();
  v44 = v11;
  __chkstk_darwin(v12);
  sub_16854();
  v49 = v14 - v13;
  v51 = sub_2664(&qword_C1320, &qword_907B8);
  sub_3488();
  v45 = v15;
  sub_1D394();
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = type metadata accessor for HomeTarget(0);
  sub_6574();
  __chkstk_darwin(v20);
  sub_16854();
  v23 = v22 - v21;
  sub_622C(a1, a1[3]);
  sub_299DC();
  v50 = v18;
  v24 = v52;
  sub_8D56C();
  if (v24)
  {
    return sub_2714(a1);
  }

  v25 = v46;
  v39 = v19;
  v40 = v23;
  v52 = a1;
  v27 = v47;
  v26 = v48;
  v53 = 0;
  sub_2BBE4();
  sub_29A30(v28);
  v29 = v49;
  sub_8D3DC();
  v30 = *(v44 + 32);
  v49 = v10;
  v30(v40, v29, v10);
  sub_2BCA4();
  sub_C5FC();
  sub_2A09C(v31);
  v32 = v2;
  sub_8D3DC();
  v33 = v40;
  (*(v25 + 32))(v40 + *(v39 + 20), v32, v27);
  sub_2BC98();
  sub_2A108(&unk_C1330);
  v34 = v26;
  v35 = v43;
  sub_8D3DC();
  v36 = sub_2BC8C();
  v37(v36);
  (*(v41 + 32))(v33 + *(v39 + 24), v34, v35);
  sub_2AEC4(v33, v42, type metadata accessor for HomeTarget);
  sub_2714(v52);
  return sub_2AF24(v33, type metadata accessor for HomeTarget);
}

uint64_t sub_29FC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_8B00C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_2A060()
{
  sub_8D50C();
  HomeTarget.hash(into:)(v1);
  return sub_8D54C();
}

unint64_t sub_2A09C(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    sub_B9BC(&qword_C01A8, &qword_8E8F0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2A108(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    sub_B9BC(&qword_C1310, &qword_907B0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2A1D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_8D45C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x67726154656D6F68 && a2 == 0xEB00000000737465;
    if (v6 || (sub_8D45C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000000096C70 == a2;
      if (v7 || (sub_8D45C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_8D45C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_2A330(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x67726154656D6F68;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x74706D6F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2A3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2A1D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2A41C(uint64_t a1)
{
  v2 = sub_2A6AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2A458(uint64_t a1)
{
  v2 = sub_2A6AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t HomeDisambiguationModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2664(&qword_C1340, &qword_907C8);
  sub_3488();
  v7 = v6;
  sub_1D394();
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  sub_622C(a1, a1[3]);
  sub_2A6AC();
  sub_8D57C();
  v29 = 0;
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_C5E4();
  sub_2A09C(v11);
  sub_2BC54(v3, &v29);
  if (!v2)
  {
    v25 = type metadata accessor for HomeDisambiguationModel(0);
    v12 = v25[5];
    sub_2BCA4();
    sub_2664(&qword_C1350, &unk_907D0);
    sub_C5E4();
    v14 = sub_2ADE0(v13);
    sub_2BCB0(v3 + v12, &v28, v15, v16, v14);
    v17 = v25[6];
    sub_2BC98();
    sub_2664(&qword_C01B0, &qword_8E8F8);
    sub_C5E4();
    v19 = sub_2A7B8(v18);
    sub_2BCB0(v3 + v17, &v27, v20, v21, v19);
    v22 = v25[7];
    v26 = 3;
    sub_2BC54(v3 + v22, &v26);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_2A6AC()
{
  result = qword_C1348;
  if (!qword_C1348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1348);
  }

  return result;
}

unint64_t sub_2A720(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    v4 = v3;
    sub_B9BC(&qword_C1338, &qword_907C0);
    sub_29A30(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2A7B8(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    sub_B9BC(&qword_C01B0, &qword_8E8F8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t HomeDisambiguationModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v55 = sub_2664(&qword_C01B0, &qword_8E8F8);
  sub_3488();
  v57 = v4;
  sub_1D394();
  __chkstk_darwin(v5);
  v54 = &v46 - v6;
  v59 = sub_2664(&qword_C1350, &unk_907D0);
  sub_3488();
  v56 = v7;
  sub_1D394();
  __chkstk_darwin(v8);
  v60 = &v46 - v9;
  v10 = sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_3488();
  v58 = v11;
  v13 = __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v46 - v16;
  v64 = sub_2664(&qword_C1380, &qword_907E0);
  sub_3488();
  v62 = v17;
  sub_1D394();
  __chkstk_darwin(v18);
  sub_2BC44();
  v19 = type metadata accessor for HomeDisambiguationModel(0);
  sub_6574();
  __chkstk_darwin(v20);
  sub_16854();
  v23 = v22 - v21;
  sub_622C(a1, a1[3]);
  sub_2A6AC();
  v63 = v2;
  v24 = v65;
  sub_8D56C();
  if (v24)
  {
    return sub_2714(a1);
  }

  v25 = v60;
  v51 = v15;
  v52 = v23;
  v65 = a1;
  v67 = 0;
  sub_C5FC();
  v27 = sub_2A09C(v26);
  v28 = v61;
  sub_8D3DC();
  v50 = v27;
  v29 = v10;
  v30 = v58 + 32;
  v31 = *(v58 + 32);
  v61 = v29;
  v31(v52, v28);
  sub_2BCA4();
  sub_C5FC();
  sub_2ADE0(v32);
  v33 = v25;
  v34 = v59;
  sub_8D3DC();
  v47 = v31;
  v48 = v30;
  v49 = v19;
  v35 = v52;
  (*(v56 + 32))(v52 + *(v19 + 20), v33, v34);
  sub_2BC98();
  sub_C5FC();
  sub_2A7B8(v36);
  v38 = v54;
  v37 = v55;
  v60 = 0;
  sub_8D3DC();
  v39 = v49;
  (*(v57 + 32))(v35 + *(v49 + 24), v38, v37);
  v66 = 3;
  v40 = v51;
  v41 = v61;
  sub_8D3DC();
  v42 = v65;
  v43 = sub_2BBFC();
  v44(v43);
  v47(v35 + *(v39 + 28), v40, v41);
  sub_2AEC4(v35, v53, type metadata accessor for HomeDisambiguationModel);
  sub_2714(v42);
  return sub_2AF24(v35, type metadata accessor for HomeDisambiguationModel);
}

unint64_t sub_2ADE0(uint64_t a1)
{
  result = sub_2BC38(a1);
  if (!result)
  {
    sub_B9BC(&qword_C1350, &unk_907D0);
    sub_2A720(&unk_C1360);
    sub_2A720(&unk_C1370);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_2AEC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_6574();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2AF24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_6574();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2B170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_8B00C();
  sub_2BC0C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_2664(&qword_C01A8, &qword_8E8F0);
    sub_2BC0C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_2664(&qword_C1310, &qword_907B0);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_3364(v9, a2, v8);
}

uint64_t sub_2B274()
{
  sub_2BC78();
  sub_8B00C();
  sub_2BC0C();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_2664(&qword_C01A8, &qword_8E8F0);
    sub_2BC0C();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      v6 = sub_2664(&qword_C1310, &qword_907B0);
      v10 = *(v2 + 24);
    }

    v7 = v1 + v10;
  }

  return sub_6270(v7, v0, v0, v6);
}

void sub_2B360(uint64_t a1)
{
  sub_8B00C();
  if (v1 <= 0x3F)
  {
    sub_C2FC(319, &qword_C0268, &type metadata for String);
    if (v2 <= 0x3F)
    {
      sub_2B40C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2B40C(uint64_t a1)
{
  if (!qword_C1400)
  {
    sub_29474();
    v1 = sub_8B04C();
    if (!v2)
    {
      atomic_store(v1, &qword_C1400);
    }
  }
}

uint64_t sub_2B478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_2BC0C();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    sub_2664(&qword_C1350, &unk_907D0);
    sub_2BC0C();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = sub_2664(&qword_C01B0, &qword_8E8F8);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return sub_3364(v9, a2, v8);
}

uint64_t sub_2B588()
{
  sub_2BC78();
  sub_2664(&qword_C01A8, &qword_8E8F0);
  sub_2BC0C();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    sub_2664(&qword_C1350, &unk_907D0);
    sub_2BC0C();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      v6 = sub_2664(&qword_C01B0, &qword_8E8F8);
      v10 = *(v2 + 24);
    }

    v7 = v1 + v10;
  }

  return sub_6270(v7, v0, v0, v6);
}

uint64_t sub_2B680(uint64_t a1)
{
  sub_C2FC(319, &qword_C0268, &type metadata for String);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2B750(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_C2FC(319, &unk_C0270, &type metadata for Bool);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_2B750(uint64_t a1)
{
  if (!qword_C14A0)
  {
    sub_B9BC(&qword_C1338, &qword_907C0);
    v1 = sub_8B09C();
    if (!v2)
    {
      atomic_store(v1, &qword_C14A0);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HomeDisambiguationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x2B880);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HomeTarget.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x2B984);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2B9C0()
{
  result = qword_C14D8;
  if (!qword_C14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C14D8);
  }

  return result;
}

unint64_t sub_2BA18()
{
  result = qword_C14E0;
  if (!qword_C14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C14E0);
  }

  return result;
}

unint64_t sub_2BA70()
{
  result = qword_C14E8;
  if (!qword_C14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C14E8);
  }

  return result;
}

unint64_t sub_2BAC8()
{
  result = qword_C14F0;
  if (!qword_C14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C14F0);
  }

  return result;
}

unint64_t sub_2BB20()
{
  result = qword_C14F8;
  if (!qword_C14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C14F8);
  }

  return result;
}

unint64_t sub_2BB78()
{
  result = qword_C1500;
  if (!qword_C1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C1500);
  }

  return result;
}

uint64_t sub_2BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_8D41C();
}

uint64_t sub_2BC54(uint64_t a1, uint64_t a2)
{

  return sub_8D41C();
}

uint64_t sub_2BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_8D41C();
}

char *sub_2BCD0(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (qword_BF818 != -1)
  {
    swift_once();
  }

  v7 = sub_8CD0C();
  sub_33F4(v7, qword_C3DF8);
  sub_2C088(a1, a2 & 1);
  v8 = sub_8CCEC();
  v9 = sub_8D11C();
  sub_ADD8(a1, a2 & 1);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32 = v29;
    *v10 = 136315138;
    v31 = v9;
    buf = v10;
    if (a2)
    {
      swift_errorRetain();
    }

    else
    {
      v11 = sub_2D3B4();
      if (v11)
      {
        v12 = v11;
        v27 = a2;
        v28 = a4;
        result = sub_55224(0, v11 & ~(v11 >> 63), 0);
        if (v12 < 0)
        {
          __break(1u);
          return result;
        }

        v14 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v15 = sub_8D27C();
          }

          else
          {
            v15 = *(a1 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = sub_2C024(v15);
          v19 = v18;

          if (v19)
          {
            v20 = v17;
          }

          else
          {
            v20 = 0x416E776F6E6B6E55;
          }

          if (!v19)
          {
            v19 = 0xEE00776569566563;
          }

          v22 = _swiftEmptyArrayStorage[2];
          v21 = _swiftEmptyArrayStorage[3];
          if (v22 >= v21 >> 1)
          {
            sub_55224((v21 > 1), v22 + 1, 1);
          }

          ++v14;
          _swiftEmptyArrayStorage[2] = v22 + 1;
          v23 = &_swiftEmptyArrayStorage[2 * v22];
          v23[4] = v20;
          v23[5] = v19;
        }

        while (v12 != v14);
        a4 = v28;
        a2 = v27;
      }
    }

    sub_2664(&qword_C1508, &unk_90C20);
    v24 = sub_8CEEC();
    v26 = sub_862D8(v24, v25, &v32);

    *(buf + 4) = v26;
    _os_log_impl(&dword_0, v8, v31, "IdiomSensitiveViewBuilder: Built views: %s", buf, 0xCu);
    sub_2714(v29);
  }

  sub_8D15C();
  if (qword_BF820 != -1)
  {
    swift_once();
  }

  type metadata accessor for SignpostLog.Signpost(0);
  sub_8CCBC();
  return a4(a1, a2 & 1);
}

uint64_t sub_2C024(void *a1)
{
  v1 = [a1 encodedClassName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_8CEDC();

  return v3;
}

uint64_t sub_2C088(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

void sub_2C094()
{
  v1 = [v0 home];
  if (v1)
  {
    v14 = v1;
    sub_8D13C();
  }

  else
  {
    if (qword_BF818 != -1)
    {
      swift_once();
    }

    v2 = sub_8CD0C();
    sub_33F4(v2, qword_C3DF8);
    v3 = v0;
    v4 = sub_8CCEC();
    v5 = sub_8D12C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      v8 = v3;
      v9 = [v8 description];
      v10 = sub_8CEDC();
      v12 = v11;

      v13 = sub_862D8(v10, v12, &v15);

      *(v6 + 4) = v13;
      _os_log_impl(&dword_0, v4, v5, "#%s error in fetching homeName. Setting empty String", v6, 0xCu);
      sub_2714(v7);
    }

    sub_8C96C();
  }
}

void *sub_2C2A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_2C6E8();
    sub_8D2EC();
    v7 = a1 + 40;
    do
    {
      v8 = objc_allocWithZone(INSpeakableString);

      v9 = sub_8CEAC();
      v10 = [v8 initWithSpokenPhrase:v9];

      v11 = objc_allocWithZone(INHomeFilter);
      v12 = sub_2C6CC();
      sub_2C59C(v12, v13, v14, v15, v16, v17, v10, 0, 0, 0, 0, 0);

      sub_8D2CC();
      sub_8D2FC();
      sub_8D30C();
      sub_8D2DC();
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  sub_2C814(_swiftEmptyArrayStorage);
  v18 = *(a2 + 16);
  if (v18)
  {
    sub_2C6E8();
    sub_8D2EC();
    v19 = a2 + 40;
    do
    {
      v20 = objc_allocWithZone(INSpeakableString);

      v21 = sub_8CEAC();
      v22 = [v20 initWithSpokenPhrase:v21];

      v23 = objc_allocWithZone(INHomeFilter);
      v24 = sub_2C6CC();
      sub_2C59C(v24, v25, v26, v27, v28, v29, 0, 0, 0, v22, 0, 0);

      sub_8D2CC();
      sub_8D2FC();
      sub_8D30C();
      sub_8D2DC();
      v19 += 16;
      --v18;
    }

    while (v18);
  }

  sub_2C814(_swiftEmptyArrayStorage);
  v30 = *(a3 + 16);
  if (v30)
  {
    sub_8D2EC();
    v31 = a3 + 40;
    do
    {
      v32 = objc_allocWithZone(INSpeakableString);

      v33 = sub_8CEAC();
      v34 = [v32 initWithSpokenPhrase:v33];

      v35 = objc_allocWithZone(INHomeFilter);
      v36 = sub_2C6CC();
      sub_2C59C(v36, v37, v38, v39, v40, v41, 0, v34, 0, 0, 0, 0);

      sub_8D2CC();
      sub_2C6E8();
      sub_8D2FC();
      sub_2C6E8();
      sub_8D30C();
      sub_8D2DC();
      v31 += 16;
      --v30;
    }

    while (v30);
  }

  sub_2C814(_swiftEmptyArrayStorage);
  return _swiftEmptyArrayStorage;
}

id sub_2C59C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, char a11, char a12)
{
  v13 = v12;
  v15 = a7;
  v18 = a4;
  v19 = a3;
  v21 = a12;
  v22 = a11;
  v24 = a9;
  v23 = a10;
  if (a1)
  {
    v34 = a5;
    v25 = a8;
    v26 = a6;
    v29.super.isa = sub_8D03C().super.isa;

    v21 = a12;
    v22 = a11;
    v19 = a3;
    v18 = a4;
    a6 = v26;
    a8 = v25;
    v23 = a10;
    v15 = a7;
    v24 = a9;
    a5 = v34;
  }

  else
  {
    v29.super.isa = 0;
  }

  BYTE1(v32) = v21 & 1;
  LOBYTE(v32) = v22 & 1;
  v30 = [v13 initWithEntityIdentifiers:v29.super.isa entityName:a2 entityType:v19 outerDeviceType:v18 outerDeviceName:a5 deviceType:a6 home:v15 zone:a8 group:v24 room:v23 isExcludeFilter:v32 hasAllQuantifier:?];

  return v30;
}

unint64_t sub_2C6F8(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  sub_8D25C(22);

  v3._countAndFlagsBits = sub_2C6F8(a1);
  sub_8CF7C(v3);

  return 0xD000000000000014;
}

uint64_t sub_2C7AC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_8D35C();
  }

  else
  {
    return *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }
}

uint64_t sub_2C82C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  v5 = sub_2C7AC(a1);
  v6 = sub_2C7AC(*v2);
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2CDF8(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v12 < 1)
  {
LABEL_6:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2C90C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_2CE98(result, 1, a2);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_2CA38(SEL *a1)
{
  v28 = sub_8C99C();
  v3 = *(v28 - 8);
  v4 = __chkstk_darwin(v28);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v27 = &v23 - v6;
  v7 = sub_2CF10(v1);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = sub_2D3B4();
  v11 = 0;
  v25 = v3;
  v26 = (v3 + 32);
  while (1)
  {
    if (v10 == v11)
    {

      return;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = sub_8D27C();
    }

    else
    {
      if (v11 >= *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v15 = [v12 *a1];
    if (v15)
    {
      v16 = v15;
      v17 = v24;
      sub_8D13C();

      v18 = v17;
      v19 = *v26;
      (*v26)(v27, v18, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_763A8();
        v8 = v21;
      }

      v20 = *(v8 + 2);
      if (v20 >= *(v8 + 3) >> 1)
      {
        sub_763A8();
        v8 = v22;
      }

      *(v8 + 2) = v20 + 1;
      v19(&v8[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20], v27, v28);
      v11 = v14;
    }

    else
    {

      ++v11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void *sub_2CCA0()
{
  sub_2CA38(&selRef_home);
  sub_2D3C0();
  sub_2C90C(v1, v0, &type metadata accessor for SpeakableString);
  sub_2CA38(&selRef_room);
  sub_2D41C(v2);
  sub_2CA38(&selRef_zone);
  sub_2D41C(v3);
  return _swiftEmptyArrayStorage;
}

void *sub_2CD3C()
{
  sub_2CA38(&selRef_room);
  sub_2D3C0();
  sub_2C90C(v1, v0, &type metadata accessor for SpeakableString);
  sub_2CA38(&selRef_zone);
  sub_2D41C(v2);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_2CDD4(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2CDF8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_8D35C();
LABEL_9:
  result = sub_8D28C();
  *v2 = result;
  return result;
}

uint64_t sub_2CE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2CF10(void *a1)
{
  v1 = [a1 recipients];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
  v3 = sub_8D04C();

  return v3;
}

uint64_t sub_2CF80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_8D35C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2C7AC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_ADE4(0, &qword_C0688, SAAceView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2D360(&qword_C1528, &qword_C1520, &unk_90CA0);
        for (i = 0; i != v7; ++i)
        {
          sub_2664(&qword_C1520, &unk_90CA0);
          v9 = sub_2D288(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2D104(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_8D35C();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_2C7AC(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_ADE4(0, &qword_C1068, INHomeFilter_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2D360(&qword_C1518, &qword_C1510, &qword_90C98);
        for (i = 0; i != v7; ++i)
        {
          sub_2664(&qword_C1510, &qword_90C98);
          v9 = sub_2D2F0(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_2D288(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  sub_2D3D8(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = sub_8D27C();
  }

  *v3 = v7;
  return sub_2D3B8;
}

void (*sub_2D2F0(uint64_t a1, unint64_t a2, uint64_t a3))(id *a1)
{
  sub_2D3D8(a1, a2, a3);
  if (v6)
  {
    v7 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v7 = sub_8D27C();
  }

  *v3 = v7;
  return sub_2D358;
}

uint64_t sub_2D360(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_B9BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2D3D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_2CDC4(a3);

  return sub_2CDD4(a2, v5, a3);
}

uint64_t sub_2D41C(uint64_t a1)
{

  return sub_2C90C(a1, v1, v2);
}

void sub_2D45C(SEL *a1)
{
  v30 = a1;
  v28 = sub_8C99C();
  v2 = *(v28 - 8);
  v3 = __chkstk_darwin(v28);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v23 - v5;
  v6 = sub_2D6EC(v1);
  v29 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = sub_2D3B4();
  v9 = 0;
  v25 = v2;
  v26 = (v2 + 32);
  while (1)
  {
    if (v8 == v9)
    {

      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_8D27C();
    }

    else
    {
      if (v9 >= *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_21;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [v10 originator];
    if (v13 && (v14 = v13, v15 = [v13 *v30], v14, v15))
    {
      v16 = v24;
      sub_8D13C();

      v17 = *v26;
      (*v26)(v27, v16, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_763A8();
        v29 = v21;
      }

      v18 = *(v29 + 2);
      if (v18 >= *(v29 + 3) >> 1)
      {
        sub_763A8();
        v29 = v22;
      }

      v19 = v28;
      v20 = v29;
      *(v29 + 2) = v18 + 1;
      v17(&v20[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v18], v27, v19);
      v9 = v12;
    }

    else
    {

      ++v9;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2D6EC(void *a1)
{
  v1 = [a1 sentAnnouncements];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2D74C();
  v3 = sub_8D04C();

  return v3;
}

unint64_t sub_2D74C()
{
  result = qword_C1530;
  if (!qword_C1530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C1530);
  }

  return result;
}

unint64_t INSendAnnouncementRecipientUnsupportedReason.description.getter(uint64_t a1)
{
  v1 = a1 - 1;
  result = 0x4E7465677261742ELL;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD00000000000001DLL;
      break;
    default:
      sub_8D25C(16);

      strcpy(v3, "Unknown code: ");
      v4._countAndFlagsBits = INSendAnnouncementRecipientUnsupportedReason.description.getter(0x4E7465677261742ELL);
      sub_8CF7C(v4);

      result = v3[0];
      break;
  }

  return result;
}

uint64_t sub_2D8DC()
{
  v1 = [v0 disambiguationItems];
  v2 = sub_8D04C();

  v3 = *(v2 + 16);

  v4 = &selRef_alternatives;
  if (v3)
  {
    v4 = &selRef_disambiguationItems;
  }

  v5 = [v0 *v4];
  v6 = sub_8D04C();

  return v6;
}

uint64_t sub_2D988(uint64_t a1, uint64_t a2)
{
  v3 = sub_8B90C();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_2D9E8(a2);

  return v5;
}

uint64_t sub_2D9E8(uint64_t a1)
{
  v2 = v1;
  sub_8B01C();
  sub_10C68();
  v3 = sub_8D1FC();
  v5 = v4;

  v6 = sub_2E8F0(v1);
  if (!v6)
  {
LABEL_19:

    return sub_2E954(v2);
  }

  v7 = v6;
  v8 = sub_5A20C(v3, v5, v6);
  if (!v9)
  {
    v11 = sub_2DC20(v3, v5);
    if (v11 != 95)
    {
      v12 = v11;
      if (qword_BF860 != -1)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v13 = sub_5A264(v12, qword_C1538);
        if (!v13)
        {
          break;
        }

        v12 = v13;
        v14 = *(v13 + 16);
        if (!v14)
        {
LABEL_18:

          goto LABEL_19;
        }

        v15 = 0;
        v16 = v14 - 1;
        while (v15 < v14)
        {
          v17 = sub_2E108(*(v12 + v15 + 32));
          if (*(v7 + 16))
          {
            v19 = sub_71C64(v17, v18);
            v21 = v20;

            if (v21)
            {
              v10 = *(*(v7 + 56) + 16 * v19);

              goto LABEL_4;
            }
          }

          else
          {
          }

          if (v16 == v15)
          {
            goto LABEL_18;
          }

          v14 = *(v12 + 16);
          ++v15;
        }

        __break(1u);
LABEL_22:
        swift_once();
      }
    }

    goto LABEL_19;
  }

  v10 = v8;

LABEL_4:

  return v10;
}

uint64_t sub_2DC20(uint64_t a1, uint64_t a2)
{
  v2 = sub_8D47C();

  v3 = 0;
  result = 2;
  switch(v2)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v3 = 1;
LABEL_3:
      result = v3;
      break;
    case 2:
      return result;
    case 3:
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      result = 5;
      break;
    case 6:
      result = 6;
      break;
    case 7:
      result = 7;
      break;
    case 8:
      result = 8;
      break;
    case 9:
      result = 9;
      break;
    case 10:
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 14:
      result = 14;
      break;
    case 15:
      result = 15;
      break;
    case 16:
      result = 16;
      break;
    case 17:
      result = 17;
      break;
    case 18:
      result = 18;
      break;
    case 19:
      result = 19;
      break;
    case 20:
      result = 20;
      break;
    case 21:
      result = 21;
      break;
    case 22:
      result = 22;
      break;
    case 23:
      result = 23;
      break;
    case 24:
      result = 24;
      break;
    case 25:
      result = 25;
      break;
    case 26:
      result = 26;
      break;
    case 27:
      result = 27;
      break;
    case 28:
      result = 28;
      break;
    case 29:
      result = 29;
      break;
    case 30:
      result = 30;
      break;
    case 31:
      result = 31;
      break;
    case 32:
      result = 32;
      break;
    case 33:
      result = 33;
      break;
    case 34:
      result = 34;
      break;
    case 35:
      result = 35;
      break;
    case 36:
      result = 36;
      break;
    case 37:
      result = 37;
      break;
    case 38:
      result = 38;
      break;
    case 39:
      result = 39;
      break;
    case 40:
      result = 40;
      break;
    case 41:
      result = 41;
      break;
    case 42:
      result = 42;
      break;
    case 43:
      result = 43;
      break;
    case 44:
      result = 44;
      break;
    case 45:
      result = 45;
      break;
    case 46:
      result = 46;
      break;
    case 47:
      result = 47;
      break;
    case 48:
      result = 48;
      break;
    case 49:
      result = 49;
      break;
    case 50:
      result = 50;
      break;
    case 51:
      result = 51;
      break;
    case 52:
      result = 52;
      break;
    case 53:
      result = 53;
      break;
    case 54:
      result = 54;
      break;
    case 55:
      result = 55;
      break;
    case 56:
      result = 56;
      break;
    case 57:
      result = 57;
      break;
    case 58:
      result = 58;
      break;
    case 59:
      result = 59;
      break;
    case 60:
      result = 60;
      break;
    case 61:
      result = 61;
      break;
    case 62:
      result = 62;
      break;
    case 63:
      result = 63;
      break;
    case 64:
      result = 64;
      break;
    case 65:
      result = 65;
      break;
    case 66:
      result = 66;
      break;
    case 67:
      result = 67;
      break;
    case 68:
      result = 68;
      break;
    case 69:
      result = 69;
      break;
    case 70:
      result = 70;
      break;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    default:
      result = 95;
      break;
  }

  return result;
}
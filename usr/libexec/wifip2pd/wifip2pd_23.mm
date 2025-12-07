uint64_t sub_1001C0E78(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *a1;
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = *a1;
  *(v2 + 104) = v3;
  if (a2)
  {
    sub_10001F89C(v4, v3);
    sub_100010520(v5, v6);
    v7 = v4;
    v8 = v3;
  }

  else
  {
    v7 = v5;
    v8 = v6;
  }

  return sub_100010520(v7, v8);
}

uint64_t sub_1001C0EEC()
{
  result = sub_10016FD40(0xD000000000000017, 0x80000001004BAF20);
  *&xmmword_10058FDF8 = result;
  *(&xmmword_10058FDF8 + 1) = v1;
  return result;
}

uint64_t LongTermPairingKeys.authenticationToken(using:on:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *(type metadata accessor for LongTermPairingKeys(0) + 20);
  v9 = *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v10 = sub_1001D67A4(v8 + v9, v7, a2 & 0xFFFFFFFFFFFFLL);
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t LongTermPairingKeys.authenticationRequest(forPeer:with:using:on:myServiceSpecificInfo:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t a1)@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v141 = a5;
  v144 = a4;
  v149 = a3;
  v155 = a1;
  v159 = a6;
  sub_10005DC58(&qword_10058FE38, &qword_100493918);
  __chkstk_darwin();
  v146 = &v123 - v8;
  v140 = sub_10005DC58(&qword_10058FE40, &qword_100493920);
  __chkstk_darwin();
  v139 = &v123 - v9;
  type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
  __chkstk_darwin();
  v143 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v142 = &v123 - v11;
  sub_10005DC58(&qword_10058FE48, &qword_100493928);
  __chkstk_darwin();
  v147 = &v123 - v12;
  v13 = type metadata accessor for SharedSecret();
  v151 = *(v13 - 8);
  v152 = v13;
  __chkstk_darwin();
  v148 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058FE50, &unk_100493930);
  __chkstk_darwin();
  v145 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v123 - v16;
  v18 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v153 = *(v18 - 8);
  v154 = v18;
  __chkstk_darwin();
  v150 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v21 = &v123 - v20;
  v22 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v23 = *(v22 - 8);
  __chkstk_darwin();
  v25 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v156 = &v123 - v26;
  v27 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v29 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB960(a2, v29);
  v30 = &v29[*(v27 + 28)];
  v31 = v30[1];
  v158 = *v30;
  sub_10005D67C(v158, v31);
  sub_1001D46E4(v29, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v157 = v31;
  if (v31 >> 60 == 15)
  {
LABEL_4:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Authentication request generation failed because no authentication token found", v34, 2u);
    }

    v35 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
    return (*(*(v35 - 8) + 56))(v159, 1, 1, v35);
  }

  sub_1000CB960(a2, v29);
  sub_100012400(&v29[*(v27 + 24)], v21, &unk_100595C40, &qword_100499070);
  sub_1001D46E4(v29, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100017554(v158, v157);
    sub_100016290(v21, &unk_100595C40, &qword_100499070);
    goto LABEL_4;
  }

  v37 = v22;
  v38 = v23;
  *&v129 = v25;
  v39 = v155;
  v40 = v155 >> 40;
  v41 = HIDWORD(v155);
  v42 = v155 >> 24;
  v43 = v155 >> 16;
  v138 = v38;
  v44 = *(v38 + 32);
  v45 = v155 >> 8;
  v46 = v156;
  v137 = v37;
  v44(v156, v21, v37);
  v47 = type metadata accessor for LongTermPairingKeys(0);
  v136 = &v123;
  v135 = v6;
  __chkstk_darwin();
  *(&v123 - 4) = v46;
  *(&v123 - 24) = v39;
  v130 = v45;
  *(&v123 - 23) = BYTE1(v39);
  v131 = v43;
  *(&v123 - 22) = BYTE2(v39);
  v132 = v42;
  *(&v123 - 21) = BYTE3(v39);
  v133 = v41;
  *(&v123 - 20) = BYTE4(v39);
  v134 = v40;
  *(&v123 - 19) = BYTE5(v39);
  v48 = v157;
  *(&v123 - 2) = v158;
  *(&v123 - 1) = v48;
  sub_1001C0584(sub_1001D6B44, (&v123 - 6), v17);
  if ((*(v153 + 48))(v17, 1, v154) == 1)
  {
    sub_100016290(v17, &qword_10058FE50, &unk_100493930);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Authentication request generation failed because no paired device matches the authentication token", v51, 2u);
    }

    sub_100017554(v158, v48);

    v52 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
    (*(*(v52 - 8) + 56))(v159, 1, 1, v52);
    return (*(v138 + 8))(v46, v137);
  }

  v136 = v47;
  sub_1001D6B5C(v17, v150, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v53 = v147;
  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v54 = v53;
  LOBYTE(v53) = v144;
  v127 = v144 >> 40;
  v128 = HIDWORD(v144);
  v126 = v144 >> 24;
  v125 = v144 >> 16;
  v55 = v151;
  v56 = *(v151 + 56);
  v124 = v144 >> 8;
  v57 = v152;
  v56(v54, 0, 1, v152);
  (*(v55 + 32))(v148, v54, v57);
  v58 = v129;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v59 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v61 = v60;
  v62 = *(v138 + 8);
  v138 += 8;
  v147 = v62;
  (v62)(v58, v137);
  v63 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v65 = v64;
  v164 = v59;
  v165 = v61;
  v162 = &type metadata for Data;
  v163 = &protocol witness table for Data;
  v160 = v63;
  v161 = v64;
  v66 = sub_100029B34(&v160, &type metadata for Data);
  v67 = *v66;
  v68 = v66[1];
  sub_10000AB0C(v59, v61);
  sub_10000AB0C(v63, v65);
  sub_100178A18(v67, v68, &v164);
  sub_1000124C8(v63, v65);
  sub_1000124C8(v59, v61);
  sub_100002A00(&v160);
  v69 = v164;
  v70 = v165;
  SharedSecret.withUnsafeBytes<A>(_:)();
  v71 = v160;
  v72 = v161;
  v166 = v69;
  v167 = v70;
  v162 = &type metadata for Data;
  v163 = &protocol witness table for Data;
  v73 = sub_100029B34(&v160, &type metadata for Data);
  v74 = *v73;
  v75 = v73[1];
  sub_10000AB0C(v69, v70);
  sub_10000AB0C(v71, v72);
  sub_100178A18(v74, v75, &v166);
  sub_1000124C8(v71, v72);
  sub_1000124C8(v69, v70);
  sub_100002A00(&v160);
  v76 = v166;
  v77 = v167;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v78 = swift_allocObject();
  v129 = xmmword_1004817D0;
  *(v78 + 16) = xmmword_1004817D0;
  *(v78 + 32) = v53;
  *(v78 + 33) = v124;
  *(v78 + 34) = v125;
  *(v78 + 35) = v126;
  *(v78 + 36) = v128;
  *(v78 + 37) = v127;
  v79 = sub_10002D874(v78);
  v81 = v80;

  v82 = swift_allocObject();
  *(v82 + 16) = v129;
  *(v82 + 32) = v155;
  *(v82 + 33) = v130;
  *(v82 + 34) = v131;
  *(v82 + 35) = v132;
  *(v82 + 36) = v133;
  *(v82 + 37) = v134;
  v83 = sub_10002D874(v82);
  v85 = v84;

  v164 = v79;
  v165 = v81;
  v162 = &type metadata for Data;
  v163 = &protocol witness table for Data;
  v160 = v83;
  v161 = v85;
  v86 = sub_100029B34(&v160, &type metadata for Data);
  v87 = *v86;
  v88 = v86[1];
  sub_10000AB0C(v79, v81);
  sub_10000AB0C(v83, v85);
  sub_100178A18(v87, v88, &v164);
  sub_1000124C8(v83, v85);
  v89 = v150;
  sub_1000124C8(v79, v81);
  sub_100002A00(&v160);
  v90 = v164;
  v91 = v165;
  v92 = v145;
  sub_1001D45C0(v89, v145, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  (*(v153 + 56))(v92, 0, 1, v154);
  v93 = v146;
  sub_1001BEEE0(v76, v77, v90, v91, v92, v146);
  sub_1000124C8(v90, v91);
  sub_1000124C8(v76, v77);
  sub_100016290(v92, &qword_10058FE50, &unk_100493930);
  v94 = sub_10005DC58(&qword_10058FE60, &qword_100493950);
  if ((*(*(v94 - 8) + 48))(v93, 1, v94) == 1)
  {
    sub_100016290(v93, &qword_10058FE38, &qword_100493918);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    v97 = os_log_type_enabled(v95, v96);
    v98 = v157;
    if (v97)
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&_mh_execute_header, v95, v96, "Authentication request generation failed because authentication key derivation failed", v99, 2u);
    }

    sub_100017554(v158, v98);

    (*(v151 + 8))(v148, v152);
    sub_1001D46E4(v89, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v100 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
    (*(*(v100 - 8) + 56))(v159, 1, 1, v100);
    v101 = v156;
    return (v147)(v101, v137);
  }

  v102 = *(v94 + 48);
  v103 = v140;
  v104 = *(v140 + 48);
  v105 = v139;
  sub_1001D6B5C(v93, v139, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  sub_1001D6B5C(v93 + v102, v105 + v104, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v106 = *(v103 + 48);
  v107 = v142;
  sub_1001D6B5C(v105, v142, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v108 = v105 + v106;
  v109 = v143;
  sub_1001D6B5C(v108, v143, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v110 = v156;
  v111 = sub_1001BCC54(v135 + *(v136 + 5), v149, v156, v141);
  v112 = v157;
  if (v111)
  {
    v113 = v111;
    sub_100017554(v158, v157);
    sub_1001D46E4(v107, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v151 + 8))(v148, v152);
    sub_1001D46E4(v89, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v114 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
    v115 = *(v114 + 48);
    v116 = v159;
    sub_1001D6B5C(v109, v159, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    *(v116 + v115) = v113;
    (*(*(v114 - 8) + 56))(v116, 0, 1, v114);
    v101 = v110;
    return (v147)(v101, v137);
  }

  v117 = Logger.logObject.getter();
  v118 = static os_log_type_t.error.getter();
  v119 = os_log_type_enabled(v117, v118);
  v120 = v137;
  if (v119)
  {
    v121 = swift_slowAlloc();
    *v121 = 0;
    _os_log_impl(&_mh_execute_header, v117, v118, "Authentication request generation failed because encrypting the request failed", v121, 2u);
  }

  sub_100017554(v158, v112);

  sub_1001D46E4(v109, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  sub_1001D46E4(v107, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  (*(v151 + 8))(v148, v152);
  sub_1001D46E4(v89, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v122 = sub_10005DC58(&qword_10058FE58, &unk_100493940);
  (*(*(v122 - 8) + 56))(v159, 1, 1, v122);
  return (v147)(v110, v120);
}

unint64_t sub_1001C2298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = type metadata accessor for LongTermPairingKeys.Identity(0);
  v11 = sub_1001D67A4(a1 + *(v10 + 20), a2, a3 & 0xFFFFFFFFFFFFLL);
  v13 = v12;
  LOBYTE(a5) = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v12, a4, a5);
  sub_1000124C8(v11, v13);
  return a5 & 1;
}

uint64_t LongTermPairingKeys.authenticationResponse(forPeer:with:using:on:myServiceSpecificInfo:)(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), unint64_t a4, uint64_t a5, __n128 a6)
{
  v205 = a5;
  v229 = a4;
  v230 = a3;
  v224 = a1;
  v203 = type metadata accessor for AES.GCM.SealedBox();
  v202 = *(v203 - 8);
  __chkstk_darwin();
  v204 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v227 = *(v8 - 8);
  v228 = v8;
  __chkstk_darwin();
  v211 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058FE68, &qword_100493958);
  __chkstk_darwin();
  v214 = &v180 - v10;
  v209 = sub_10005DC58(&qword_10058FE70, &qword_100493960);
  __chkstk_darwin();
  v210 = &v180 - v11;
  v217 = type metadata accessor for P256.Signing.ECDSASignature();
  v216 = *(v217 - 8);
  __chkstk_darwin();
  v215 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for UUID();
  v220 = *(v219 - 8);
  __chkstk_darwin();
  v206 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v218 = &v180 - v14;
  sub_10005DC58(&qword_10058FE50, &unk_100493930);
  __chkstk_darwin();
  v208 = &v180 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v222 = &v180 - v16;
  sub_10005DC58(&qword_10058FE38, &qword_100493918);
  __chkstk_darwin();
  v223 = (&v180 - v17);
  v213 = sub_10005DC58(&qword_10058FE40, &qword_100493920);
  __chkstk_darwin();
  v212 = &v180 - v18;
  v207 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
  __chkstk_darwin();
  v225 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = &v180 - v20;
  sub_10005DC58(&qword_10058FE48, &qword_100493928);
  __chkstk_darwin();
  v22 = &v180 - v21;
  v23 = type metadata accessor for SharedSecret();
  v24 = *(v23 - 8);
  v232 = v23;
  v233 = v24;
  __chkstk_darwin();
  v231 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v28 = &v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v30 = &v180 - v29;
  v31 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v32 = *(v31 - 8);
  __chkstk_darwin();
  v226 = &v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v180 - v34;
  sub_1000CB960(a2, v28);
  sub_100012400(&v28[*(v26 + 24)], v30, &unk_100595C40, &qword_100499070);
  sub_1001D46E4(v28, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_100016290(v30, &unk_100595C40, &qword_100499070);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Authentication response generation failed because no public key found", v38, 2u);
    }

    return 0;
  }

  (*(v32 + 32))(v35, v30, v31);
  sub_1000CB960(a2, v28);
  v39 = &v28[*(v26 + 32)];
  v40 = *v39;
  v41 = v39[1];
  sub_10005D67C(*v39, v41);
  sub_1001D46E4(v28, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if (v41 >> 60 == 15)
  {
    v42 = v35;
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Authentication response generation failed because no encrypted signature found", v45, 2u);
    }

    (*(v32 + 8))(v42, v31);
    return 0;
  }

  v200 = v26;
  v201 = v40;
  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v181 = a2;
  v199 = v41;
  v194 = v229 >> 40;
  v193 = HIDWORD(v229);
  v192 = v229 >> 24;
  v191 = v229 >> 16;
  v190 = v229 >> 8;
  v47 = v224;
  v189 = v224 >> 40;
  v188 = HIDWORD(v224);
  v187 = v224 >> 24;
  v186 = v224 >> 16;
  v48 = v233;
  v49 = *(v233 + 56);
  v185 = v224 >> 8;
  v50 = v232;
  v49(v22, 0, 1, v232);
  (*(v48 + 32))(v231, v22, v50);
  v198 = v35;
  v51 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v53 = v52;
  v54 = v226;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v55 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v56 = v31;
  v58 = v57;
  v59 = *(v32 + 8);
  v196 = v56;
  v197 = v32 + 8;
  v195 = v59;
  v59(v54, v56);
  v239 = v51;
  v240 = v53;
  v237 = &type metadata for Data;
  v238 = &protocol witness table for Data;
  v235 = v55;
  v236 = v58;
  v60 = sub_100029B34(&v235, &type metadata for Data);
  v62 = *v60;
  v61 = v60[1];
  sub_10000AB0C(v51, v53);
  sub_10000AB0C(v55, v58);
  sub_100178A18(v62, v61, &v239);
  sub_1000124C8(v55, v58);
  sub_1000124C8(v51, v53);
  sub_100002A00(&v235);
  v63 = v239;
  v64 = v240;
  SharedSecret.withUnsafeBytes<A>(_:)();
  v65 = v235;
  v66 = v236;
  v241 = v63;
  v242 = v64;
  v237 = &type metadata for Data;
  v238 = &protocol witness table for Data;
  v67 = sub_100029B34(&v235, &type metadata for Data);
  v68 = *v67;
  v69 = v67[1];
  sub_10000AB0C(v63, v64);
  sub_10000AB0C(v65, v66);
  sub_100178A18(v68, v69, &v241);
  sub_1000124C8(v65, v66);
  sub_1000124C8(v63, v64);
  sub_100002A00(&v235);
  v184 = v241;
  v183 = v242;
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v70 = swift_allocObject();
  v182 = xmmword_1004817D0;
  *(v70 + 16) = xmmword_1004817D0;
  *(v70 + 32) = v47;
  *(v70 + 33) = v185;
  *(v70 + 34) = v186;
  *(v70 + 35) = v187;
  *(v70 + 36) = v188;
  *(v70 + 37) = v189;
  v71 = sub_10002D874(v70);
  v73 = v72;

  v74 = swift_allocObject();
  *(v74 + 16) = v182;
  *(v74 + 32) = v229;
  *(v74 + 33) = v190;
  *(v74 + 34) = v191;
  *(v74 + 35) = v192;
  *(v74 + 36) = v193;
  *(v74 + 37) = v194;
  v75 = sub_10002D874(v74);
  v77 = v76;

  v239 = v71;
  v240 = v73;
  v237 = &type metadata for Data;
  v238 = &protocol witness table for Data;
  v235 = v75;
  v236 = v77;
  v78 = sub_100029B34(&v235, &type metadata for Data);
  v79 = *v78;
  v80 = v78[1];
  sub_10000AB0C(v71, v73);
  sub_10000AB0C(v75, v77);
  sub_100178A18(v79, v80, &v239);
  sub_1000124C8(v75, v77);
  sub_1000124C8(v71, v73);
  sub_100002A00(&v235);
  v81 = v239;
  v82 = v240;
  v83 = v222;
  (*(v227 + 56))(v222, 1, 1, v228);
  v84 = v223;
  v85 = v184;
  v86 = v183;
  sub_1001BEEE0(v184, v183, v81, v82, v83, v223);
  sub_1000124C8(v81, v82);
  sub_1000124C8(v85, v86);
  sub_100016290(v83, &qword_10058FE50, &unk_100493930);
  v87 = sub_10005DC58(&qword_10058FE60, &qword_100493950);
  if ((*(*(v87 - 8) + 48))(v84, 1, v87) == 1)
  {
    sub_100016290(v84, &qword_10058FE38, &qword_100493918);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    v90 = os_log_type_enabled(v88, v89);
    v91 = v199;
    if (v90)
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&_mh_execute_header, v88, v89, "Authentication response generation failed because authentication key derivation failed", v92, 2u);
    }

    sub_100017554(v201, v91);

LABEL_19:
    (*(v233 + 8))(v231, v232);
    v195(v198, v196);
    return 0;
  }

  v93 = *(v87 + 48);
  v94 = v213;
  v95 = *(v213 + 48);
  v96 = v212;
  sub_1001D6B5C(v84, v212, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  sub_1001D6B5C(v84 + v93, v96 + v95, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v97 = *(v94 + 48);
  v98 = v221;
  sub_1001D6B5C(v96, v221, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  sub_1001D6B5C(v96 + v97, v225, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  v99 = v214;
  v100 = v201;
  v101 = v199;
  sub_1001BDF68(v201, v199, v214);
  v102 = sub_10005DC58(&qword_10058FE78, &qword_100493968);
  if ((*(*(v102 - 8) + 48))(v99, 1, v102) == 1)
  {
    sub_100016290(v99, &qword_10058FE68, &qword_100493958);
    v103 = Logger.logObject.getter();
    v104 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&_mh_execute_header, v103, v104, "Authentication response generation failed because authentication request parsing failed", v105, 2u);
    }

    sub_100017554(v100, v101);

    sub_1001D46E4(v225, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    sub_1001D46E4(v98, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    goto LABEL_19;
  }

  v213 = 0;
  v222 = *(v102 + 48);
  v106 = (v99 + *(v102 + 64));
  v108 = *v106;
  v107 = v106[1];
  v229 = v108;
  v224 = v107;
  v109 = v209;
  v110 = *(v209 + 48);
  v111 = v210;
  v112 = &v210[*(v209 + 64)];
  v223 = *(v220 + 32);
  v113 = v219;
  (v223)(v210, v99, v219);
  v114 = *(v216 + 32);
  v115 = &v111[v110];
  v116 = v217;
  v114(v115, v99 + v222, v217);
  v117 = v224;
  *v112 = v229;
  v112[1] = v117;
  v118 = *(v109 + 48);
  v119 = &v111[*(v109 + 64)];
  v121 = *v119;
  v120 = v119[1];
  v229 = v121;
  v224 = v120;
  v122 = v218;
  (v223)(v218, v111, v113);
  v123 = &v111[v118];
  v124 = v215;
  v114(v215, v123, v116);
  v125 = type metadata accessor for LongTermPairingKeys(0);
  __chkstk_darwin();
  v179 = v122;
  v126 = v208;
  sub_1001C0584(sub_1001D6BC4, (&v180 - 4), v208);
  if ((*(v227 + 48))(v126, 1, v228) == 1)
  {
    v127 = v229;
    v128 = v224;
    sub_100016290(v126, &qword_10058FE50, &unk_100493930);
    v129 = Logger.logObject.getter();
    v130 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&_mh_execute_header, v129, v130, "Authentication response generation failed because no paired device matches the authentication request", v131, 2u);
    }

    sub_1000124C8(v127, v128);
    sub_100017554(v201, v199);

    (*(v216 + 8))(v124, v217);
    sub_1001D46E4(v225, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    sub_1001D46E4(v221, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v233 + 8))(v231, v232);
    v195(v198, v196);
    (*(v220 + 8))(v122, v219);
    return 0;
  }

  v228 = v125;
  sub_1001D6B5C(v126, v211, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v132 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v134 = v133;
  v135 = v226;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v136 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v138 = v137;
  v195(v135, v196);
  v241 = v132;
  v242 = v134;
  v237 = &type metadata for Data;
  v238 = &protocol witness table for Data;
  v235 = v136;
  v236 = v138;
  v139 = sub_100029B34(&v235, &type metadata for Data);
  v140 = *v139;
  v141 = v139[1];
  sub_10000AB0C(v132, v134);
  sub_10000AB0C(v136, v138);
  v142 = v213;
  sub_100178A18(v140, v141, &v241);
  sub_1000124C8(v136, v138);
  sub_1000124C8(v132, v134);
  sub_100002A00(&v235);
  v143 = v241;
  v144 = v242;
  LOBYTE(v138) = sub_1001BC174(v215, v241, v242);
  sub_1000124C8(v143, v144);
  v145 = v224;
  v235 = v229;
  v236 = v224;
  v146 = v220;
  v147 = v206;
  v148 = v219;
  (*(v220 + 16))(v206, v218, v219);
  v241 = UUID.uuid.getter();
  v242 = v149;
  v150 = sub_10004F3B0(&v241, &v243);
  v152 = v151;
  v153 = *(v146 + 8);
  v220 = v146 + 8;
  v153(v147, v148);
  v241 = v150;
  v242 = v152;
  type metadata accessor for SHA256();
  sub_1001D469C(&qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  v179 = sub_1000BA0A4();
  v154 = v221;
  v155 = static HMAC.isValidAuthenticationCode<A, B>(_:authenticating:using:)();
  sub_1000124C8(v241, v242);
  if ((v138 & 1) == 0 || (v155 & 1) == 0)
  {
    v162 = Logger.logObject.getter();
    v163 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v162, v163))
    {
      v164 = swift_slowAlloc();
      *v164 = 0;
      _os_log_impl(&_mh_execute_header, v162, v163, "Authentication response generation failed because authentication request verification failed", v164, 2u);
    }

    sub_1000124C8(v229, v145);
    sub_100017554(v201, v199);

    sub_1001D46E4(v211, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    (*(v216 + 8))(v215, v217);
    sub_1001D46E4(v225, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    sub_1001D46E4(v154, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v233 + 8))(v231, v232);
    v165 = v198;
    v166 = v196;
    goto LABEL_35;
  }

  v156 = sub_1001BCC54(v234 + *(v228 + 20), v230, v198, v205);
  if (!v156)
  {
    v167 = Logger.logObject.getter();
    v168 = static os_log_type_t.error.getter();
    v169 = os_log_type_enabled(v167, v168);
    v170 = v196;
    if (v169)
    {
      v171 = swift_slowAlloc();
      *v171 = 0;
      _os_log_impl(&_mh_execute_header, v167, v168, "Authentication response generation failed because encrypting the response failed", v171, 2u);
    }

    sub_1000124C8(v229, v145);
    sub_100017554(v201, v199);

    sub_1001D46E4(v211, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    (*(v216 + 8))(v215, v217);
    sub_1001D46E4(v225, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    sub_1001D46E4(v221, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
    (*(v233 + 8))(v231, v232);
    v165 = v198;
    v166 = v170;
LABEL_35:
    v195(v165, v166);
    v153(v218, v148);
    return 0;
  }

  v157 = v145;
  v234 = v156;
  sub_1000CB960(v181, v28);
  v158 = &v28[*(v200 + 36)];
  v159 = *v158;
  v160 = v158[1];
  sub_10005D67C(*v158, v160);
  sub_1001D46E4(v28, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v161 = v196;
  if (v160 >> 60 != 15)
  {
    sub_10000AB0C(v159, v160);
    sub_10000AB0C(v159, v160);
    v172 = v204;
    sub_1001BC944(v159, v160);
    if (v142)
    {
    }

    else
    {
      v173 = static AES.GCM.open(_:using:)();
      v174 = v172;
      v175 = v173;
      v177 = v176;
      (*(v202 + 8))(v174, v203);
      sub_1000D201C(v175, v177);
      v178 = v177;
      v154 = v221;
      sub_1000124C8(v175, v178);
    }

    sub_100017554(v159, v160);
    sub_100017554(v159, v160);
  }

  sub_1000124C8(v229, v157);
  sub_100017554(v201, v199);
  sub_1001D46E4(v211, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  (*(v216 + 8))(v215, v217);
  sub_1001D46E4(v225, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  sub_1001D46E4(v154, type metadata accessor for LongTermPairingKeys.AuthenticationKeys);
  (*(v233 + 8))(v231, v232);
  v195(v198, v161);
  v153(v218, v219);
  return v234;
}

uint64_t LongTermPairingKeys.verifyAuthenticationResponse(forPeer:with:publisherKeys:using:extraServiceSpecificInfo:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), void *a6)
{
  v135 = a5;
  v149 = a3;
  v150 = a4;
  v130 = type metadata accessor for AES.GCM.SealedBox();
  v129 = *(v130 - 8);
  __chkstk_darwin();
  v131 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058FE68, &qword_100493958);
  __chkstk_darwin();
  v140 = &v120 - v8;
  v137 = sub_10005DC58(&qword_10058FE70, &qword_100493960);
  __chkstk_darwin();
  v138 = &v120 - v9;
  v10 = type metadata accessor for P256.Signing.ECDSASignature();
  v142 = *(v10 - 8);
  v143 = v10;
  __chkstk_darwin();
  v141 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v144 = v12;
  v145 = v13;
  __chkstk_darwin();
  v134 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v139 = &v120 - v15;
  sub_10005DC58(&unk_100595C40, &qword_100499070);
  __chkstk_darwin();
  v17 = &v120 - v16;
  v18 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v19 = *(v18 - 8);
  v147 = v18;
  v148 = v19;
  __chkstk_darwin();
  v133 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v146 = &v120 - v21;
  v22 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  __chkstk_darwin();
  v24 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058FE50, &unk_100493930);
  __chkstk_darwin();
  v26 = &v120 - v25;
  v27 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);

  v132 = a6;
  *a6 = 0;
  v31 = v150;
  v136 = type metadata accessor for LongTermPairingKeys.AuthenticationKeys(0);
  sub_100012400(v31 + *(v136 + 28), v26, &qword_10058FE50, &unk_100493930);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    sub_100016290(v26, &qword_10058FE50, &unk_100493930);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Authentication response verification failed because no paired device inforamtion was found", v34, 2u);
    }

    return 0;
  }

  sub_1001D6B5C(v26, v30, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  v35 = v149;
  sub_1000CB960(v149, v24);
  v36 = &v24[*(v22 + 32)];
  v38 = *v36;
  v37 = v36[1];
  sub_10005D67C(*v36, v37);
  sub_1001D46E4(v24, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v39 = v30;
  if (v37 >> 60 == 15)
  {
    goto LABEL_8;
  }

  sub_1000CB960(v35, v24);
  sub_100012400(&v24[*(v22 + 24)], v17, &unk_100595C40, &qword_100499070);
  sub_1001D46E4(v24, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v40 = v147;
  v41 = v148;
  if ((*(v148 + 48))(v17, 1, v147) == 1)
  {
    sub_100017554(v38, v37);
    sub_100016290(v17, &unk_100595C40, &qword_100499070);
LABEL_8:
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Authentication response verification failed because no encrypted signature or public key found", v44, 2u);
    }

LABEL_11:
    v45 = v39;
LABEL_12:
    sub_1001D46E4(v45, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    return 0;
  }

  (*(v41 + 32))(v146, v17, v40);
  v47 = v140;
  sub_1001BDF68(v38, v37, v140);
  v48 = sub_10005DC58(&qword_10058FE78, &qword_100493968);
  if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
  {
    sub_100016290(v47, &qword_10058FE68, &qword_100493958);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "Authentication response verification failed because authentication response parsing failed", v51, 2u);
    }

    sub_100017554(v38, v37);

    (*(v148 + 8))(v146, v40);
    goto LABEL_11;
  }

  v120 = v22;
  v126 = v38;
  v127 = v37;
  v122 = *(v48 + 48);
  v52 = (v47 + *(v48 + 64));
  v54 = *v52;
  v53 = v52[1];
  v125 = v54;
  v124 = v53;
  v55 = v137;
  v121 = *(v137 + 48);
  v56 = v138;
  v57 = &v138[*(v137 + 64)];
  v128 = v39;
  v123 = *(v145 + 32);
  v58 = v144;
  v123(v138, v47, v144);
  v59 = *(v142 + 32);
  v60 = v47 + v122;
  v61 = v143;
  v59(&v56[v121], v60, v143);
  v62 = v124;
  *v57 = v125;
  *(v57 + 1) = v62;
  v63 = v58;
  v64 = *(v55 + 48);
  v65 = &v56[*(v55 + 64)];
  v67 = *v65;
  v66 = v65[1];
  v137 = v67;
  v140 = v66;
  v68 = v139;
  v123(v139, v56, v63);
  v69 = v128;
  v70 = v141;
  v59(v141, &v56[v64], v61);
  v71 = v68;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    v102 = v69;
    v103 = v137;
    v104 = v140;
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    v107 = os_log_type_enabled(v105, v106);
    v108 = v147;
    if (v107)
    {
      v109 = swift_slowAlloc();
      *v109 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "Authentication response verification failed because identifiers did not match", v109, 2u);
    }

    sub_100017554(v126, v127);
    sub_1000124C8(v103, v104);

    (*(v142 + 8))(v70, v143);
    (*(v145 + 8))(v71, v144);
    (*(v148 + 8))(v146, v108);
    v45 = v102;
    goto LABEL_12;
  }

  v72 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v73 = v148;
  v75 = v74;
  v76 = v133;
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v77 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v79 = v78;
  v80 = *(v73 + 8);
  v148 = v73 + 8;
  v138 = v80;
  (v80)(v76, v147);
  v155 = v72;
  v156 = v75;
  v153 = &type metadata for Data;
  v154 = &protocol witness table for Data;
  v151 = v77;
  v152 = v79;
  v81 = sub_100029B34(&v151, &type metadata for Data);
  v82 = *v81;
  v83 = v81[1];
  sub_10000AB0C(v72, v75);
  sub_10000AB0C(v77, v79);
  sub_100178A18(v82, v83, &v155);
  sub_1000124C8(v77, v79);
  sub_1000124C8(v72, v75);
  sub_100002A00(&v151);
  v84 = v155;
  v85 = v156;
  v86 = sub_1001BC174(v141, v155, v156);
  sub_1000124C8(v84, v85);
  v151 = v137;
  v152 = v140;
  v87 = v145;
  v88 = v134;
  (*(v145 + 16))(v134, v71, v144);
  v155 = UUID.uuid.getter();
  v156 = v89;
  v90 = v144;
  v91 = sub_10004F3B0(&v155, &v157);
  v93 = v92;
  v94 = *(v87 + 8);
  v145 = v87 + 8;
  v135 = v94;
  v94(v88, v90);
  v155 = v91;
  v156 = v93;
  type metadata accessor for SHA256();
  sub_1001D469C(&qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1000BA0A4();
  v95 = static HMAC.isValidAuthenticationCode<A, B>(_:authenticating:using:)();
  sub_1000124C8(v155, v156);
  if ((v86 & 1) == 0 || (v95 & 1) == 0)
  {
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&_mh_execute_header, v110, v111, "Authentication response verification failed", v112, 2u);
    }

    sub_100017554(v126, v127);
    sub_1000124C8(v137, v140);

    (*(v142 + 8))(v141, v143);
    v135(v139, v90);
    (v138)(v146, v147);
    v45 = v128;
    goto LABEL_12;
  }

  sub_1000CB960(v149, v24);
  v96 = &v24[*(v120 + 36)];
  v98 = *v96;
  v97 = v96[1];
  sub_10005D67C(*v96, v97);
  sub_1001D46E4(v24, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  if (v97 >> 60 == 15)
  {
    sub_100017554(v126, v127);
    sub_1000124C8(v137, v140);
    v99 = 0;
    v100 = v147;
    v101 = v139;
  }

  else
  {
    sub_10000AB0C(v98, v97);
    sub_10000AB0C(v98, v97);
    v113 = v131;
    sub_1001BC944(v98, v97);
    v100 = v147;
    v114 = v140;
    v115 = v137;
    v116 = static AES.GCM.open(_:using:)();
    v118 = v117;
    (*(v129 + 8))(v113, v130);
    v99 = sub_1000D201C(v116, v118);
    v119 = v118;
    v101 = v139;
    sub_1000124C8(v116, v119);
    sub_100017554(v98, v97);
    sub_100017554(v126, v127);
    sub_1000124C8(v115, v114);
    sub_100017554(v98, v97);
    v90 = v144;
  }

  (*(v142 + 8))(v141, v143);
  v135(v101, v90);
  (v138)(v146, v100);
  sub_1001D46E4(v128, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  *v132 = v99;
  return 1;
}

uint64_t sub_1001C5054(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004938F0;
  *(inited + 32) = kSecAttrAccessGroup;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrSynchronizable;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrIsInvisible;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrLabel;
  *(inited + 80) = a11 == 1;
  if (a11 <= 1u)
  {
    if (a11)
    {
      v20 = 0xE600000000000000;
      v19 = 0x63696C627570;
    }

    else
    {
      v20 = 0xE700000000000000;
      v19 = 0x65746176697270;
    }
  }

  else if (a11 == 2)
  {
    v20 = 0xEC0000006C61636FLL;
    v19 = 0x6C5F63696C627570;
  }

  else if (a11 == 3)
  {
    v19 = 0xD000000000000010;
    v20 = 0x80000001004B5200;
  }

  else
  {
    v20 = 0x80000001004B5220;
    v19 = 0xD000000000000011;
  }

  *(inited + 160) = v19;
  *(inited + 168) = v20;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrAccount;
  *(inited + 200) = a9;
  *(inited + 208) = a10;
  *(inited + 224) = &type metadata for String;
  *(inited + 232) = kSecAttrService;
  *(inited + 240) = a7;
  *(inited + 248) = a8;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecValueData;
  *(inited + 304) = &type metadata for Data;
  *(inited + 280) = a1;
  *(inited + 288) = a2;
  v21 = inited;
  v22 = kSecAttrAccessGroup;

  v23 = kSecAttrSynchronizable;
  v24 = kSecAttrIsInvisible;
  v25 = kSecAttrLabel;
  v26 = kSecAttrAccount;

  v27 = kSecAttrService;

  v28 = kSecValueData;
  sub_10000AB0C(a1, a2);
  v29 = sub_1000821A0(v21);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  result = swift_arrayDestroy();
  if (a11 - 1 >= 2)
  {
    type metadata accessor for CFString(0);
    v40 = v31;
    *&v39 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    sub_100085188(&v39, v38);
    v32 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v29;
    sub_100080710(v38, kSecAttrAccessible, isUniquelyReferenced_nonNull_native);
    return v37;
  }

  if (kSecAttrSyncViewHint)
  {
    v40 = &type metadata for String;
    *&v39 = a5;
    *(&v39 + 1) = a6;
    sub_100085188(&v39, v38);
    v34 = kSecAttrSyncViewHint;

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v29;
    sub_100080710(v38, v34, v35);

    return v37;
  }

  __break(1u);
  return result;
}

uint64_t AppleKeychain.init(accessGroup:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Logger.init(subsystem:category:)();
  *(v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_notificationToken) = -1;
  v9 = (v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_tokens);
  *v9 = &_swiftEmptySetSingleton;
  v9[1] = 0;
  *(v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainMonitors) = &_swiftEmptyDictionarySingleton;
  v10 = (v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  *v10 = 0x726961705F6E616ELL;
  v10[1] = 0xEB00000000676E69;
  v11 = (v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount);
  *v11 = 0x656369766564;
  v11[1] = 0xE600000000000000;
  *(v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers) = &_swiftEmptyDictionarySingleton;
  v12 = (v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
  *v12 = a1;
  v12[1] = a2;
  v13 = (v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView);
  *v13 = a3;
  v13[1] = a4;
  AppleKeychain.loadPairedPeerAssociationsWithIDs()();
  v15 = v14;
  v16 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers;
  swift_beginAccess();
  *(v4 + v16) = v15;

  return v4;
}

void sub_1001C5540()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainMonitors;
  swift_beginAccess();
  v3 = *(*(v1 + v2) + 16);
  v4 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_notificationToken;
  if (v3)
  {
    swift_beginAccess();
    if (!notify_is_valid_token(*(v1 + v4)))
    {
      _StringGuts.grow(_:)(33);

      v19[0] = 0xD00000000000001FLL;
      v19[1] = 0x80000001004BAEA0;
      String.append(_:)(*(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView));

      v5 = sub_1001D5E40(0xD00000000000001FLL, 0x80000001004BAEA0, v1);

      if (v5)
      {
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v19[0] = v9;
          *v8 = 136315138;
          v10 = sub_1002A5014(v5);
          v12 = sub_100002320(v10, v11, v19);

          *(v8 + 4) = v12;
          v13 = "Failed to start monitoring keychain updates with error: %s";
LABEL_10:
          _os_log_impl(&_mh_execute_header, v6, v7, v13, v8, 0xCu);
          sub_100002A00(v9);

          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
    swift_beginAccess();
    if (notify_is_valid_token(*(v1 + v4)))
    {
      v14 = notify_cancel(*(v1 + v4));
      *(v1 + v4) = -1;
      if (v14)
      {
        v15 = v14;
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v19[0] = v9;
          *v8 = 136315138;
          v16 = sub_1002A5014(v15);
          v18 = sub_100002320(v16, v17, v19);

          *(v8 + 4) = v18;
          v13 = "Failed to cancel monitoring keychain updates with error: %s";
          goto LABEL_10;
        }

LABEL_11:
      }
    }
  }
}

void sub_1001C57E4(const char *a1@<X0>, uint64_t a2@<X1>, uint32_t *a3@<X8>)
{
  if (qword_10058AA28 != -1)
  {
    swift_once();
  }

  v6 = static OS_dispatch_queue.nan;
  v7 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_1001D7A54;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001C5BEC;
  v11[3] = &unk_1005675A8;
  v8 = _Block_copy(v11);

  v9 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_notificationToken;
  swift_beginAccess();
  v10 = notify_register_dispatch(a1, (a2 + v9), v6, v8);
  swift_endAccess();
  _Block_release(v8);
  *a3 = v10;
}

void sub_1001C5948(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v3 + 16))(v5, Strong + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger, v2);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Received keychain updated notification", v9, 2u);
    }

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  v10 = swift_weakLoadStrong();
  if (v10)
  {
    v11 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainMonitors;
    v12 = v10;
    swift_beginAccess();
    v13 = *(v12 + v11);

    v14 = 1 << *(v13 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v13 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    while (v16)
    {
      v19 = v18;
LABEL_14:
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v21 = *(*(v13 + 56) + ((v19 << 10) | (16 * v20)));

      v21(v22);
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        return;
      }

      v16 = *(v13 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        v18 = v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }
}

double sub_1001C5BEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t AppleKeychain.monitor(using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_1001B93E4();
  v8 = v7;
  result = swift_endAccess();
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v11 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainMonitors;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v3 + v11);
    *(v3 + v11) = 0x8000000000000000;
    sub_100080850(sub_1001D6BCC, v10, v6, isUniquelyReferenced_nonNull_native);
    *(v3 + v11) = v13;
    swift_endAccess();
    sub_1001C5540();
    return v6;
  }

  return result;
}

Swift::Void __swiftcall AppleKeychain.stopMonitoring(_:)(Swift::UInt64 a1)
{
  swift_beginAccess();
  v2 = sub_10007F974(a1);
  v4 = v3;
  swift_endAccess();
  sub_100010520(v2, v4);
  sub_1001C5540();
  swift_beginAccess();
  sub_1001D4D20(a1);
  swift_endAccess();
}

void AppleKeychain.findIdentities(for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v441 = a1;
  sub_10005DC58(&qword_10058FEC0, &qword_100493970);
  __chkstk_darwin();
  v449 = &v373 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v461 = (&v373 - v6);
  v7 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v410 = *(v7 - 8);
  v411 = v7;
  __chkstk_darwin();
  v408 = &v373 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v407 = *(v409 - 8);
  __chkstk_darwin();
  v403 = &v373 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v404 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v402 = *(v404 - 8);
  __chkstk_darwin();
  v400 = &v373 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Duration.UnitsFormatStyle();
  v405 = *(v11 - 8);
  v406 = v11;
  __chkstk_darwin();
  v401 = &v373 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = type metadata accessor for UUID();
  v451 = *(v462 - 8);
  __chkstk_darwin();
  v447 = &v373 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v423 = &v373 - v14;
  __chkstk_darwin();
  v460 = &v373 - v15;
  __chkstk_darwin();
  v450 = (&v373 - v16);
  __chkstk_darwin();
  v425 = (&v373 - v17);
  __chkstk_darwin();
  v418 = (&v373 - v18);
  sub_10005DC58(&qword_10058FE28, &unk_1004B2430);
  __chkstk_darwin();
  v448 = &v373 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v420 = (&v373 - v20);
  __chkstk_darwin();
  v413 = &v373 - v21;
  sub_10005DC58(&qword_10058FE50, &unk_100493930);
  __chkstk_darwin();
  v439 = &v373 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v424 = (&v373 - v23);
  __chkstk_darwin();
  v436 = (&v373 - v24);
  v458 = type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v454 = *(v458 - 8);
  __chkstk_darwin();
  v459 = &v373 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v444 = &v373 - v26;
  __chkstk_darwin();
  v419 = (&v373 - v27);
  __chkstk_darwin();
  v422 = (&v373 - v28);
  __chkstk_darwin();
  *&v417 = &v373 - v29;
  __chkstk_darwin();
  v421 = &v373 - v30;
  v443 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v442 = *(v443 - 8);
  __chkstk_darwin();
  v437 = (&v373 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v445 = (&v373 - v32);
  __chkstk_darwin();
  v416 = &v373 - v33;
  sub_10005DC58(&qword_10058FEC8, &qword_100493978);
  __chkstk_darwin();
  v429 = &v373 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v430 = (&v373 - v35);
  __chkstk_darwin();
  v412 = &v373 - v36;
  __chkstk_darwin();
  v452 = &v373 - v37;
  __chkstk_darwin();
  v432 = &v373 - v38;
  v453 = type metadata accessor for Date();
  v431 = *(v453 - 8);
  __chkstk_darwin();
  v438 = &v373 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v414 = &v373 - v40;
  __chkstk_darwin();
  v415 = &v373 - v41;
  __chkstk_darwin();
  v434 = (&v373 - v42);
  __chkstk_darwin();
  v399 = &v373 - v43;
  __chkstk_darwin();
  v440 = &v373 - v44;
  v428 = sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004817D0;
  v456 = kSecClass;
  *(inited + 32) = kSecClass;
  v457 = (inited + 32);
  p_isa = &kSecClassGenericPassword->isa;
  type metadata accessor for CFString(0);
  v47 = v46;
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v46;
  *(inited + 72) = kSecAttrSynchronizable;
  *(inited + 80) = kSecAttrSynchronizableAny;
  *(inited + 104) = v46;
  *(inited + 112) = kSecAttrService;
  v433 = a2;
  *(inited + 120) = a2;
  *(inited + 128) = a3;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecMatchLimit;
  *(inited + 160) = kSecMatchLimitAll;
  *(inited + 184) = v46;
  *(inited + 192) = kSecReturnData;
  *(inited + 200) = 1;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecReturnAttributes;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v446 = a3;
  swift_bridgeObjectRetain_n();
  v427 = v456;
  v426 = p_isa;
  v48 = kSecAttrSynchronizable;
  v49 = kSecAttrSynchronizableAny;
  v50 = kSecAttrService;
  v51 = kSecMatchLimit;
  v52 = kSecMatchLimitAll;
  v53 = kSecReturnData;
  v54 = kSecReturnAttributes;
  sub_1000821A0(inited);
  swift_setDeallocating();
  v55 = sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v56 = sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  v57.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v469 = 0;
  if (SecItemCopyMatching(v57.super.isa, &v469))
  {
    swift_bridgeObjectRelease_n();
    (*(v442 + 56))(v441, 1, 1, v443);
LABEL_76:

    goto LABEL_77;
  }

  v398 = v47;
  if (!v469)
  {
    swift_bridgeObjectRelease_n();
    v59 = v441;
    v61 = v443;
    v62 = v442;
LABEL_75:
    (*(v62 + 56))(v59, 1, 1, v61);
    goto LABEL_76;
  }

  v396 = v48;
  v397 = v56;
  *&v464 = v469;
  swift_unknownObjectRetain();
  sub_10005DC58(&qword_10058F4D8, &unk_100492880);
  v58 = swift_dynamicCast();
  v59 = v441;
  v60 = v446;
  v61 = v443;
  v62 = v442;
  if ((v58 & 1) == 0)
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_75;
  }

  v389 = v55;
  v390 = v50;
  isa = v57.super.isa;
  v63 = v467[0];
  Date.init()();
  v64 = *(v62 + 56);
  v65 = v432;
  p_isa = (v62 + 56);
  v395 = v64;
  v64(v432, 1, 1, v61);
  v463 = &_swiftEmptyDictionarySingleton;
  data = v63->data;
  v456 = v63;
  if (!data)
  {

    v392 = 0;
    v388 = &_swiftEmptyDictionarySingleton;
    v71 = v435;
    v167 = v437;
    v168 = v434;
    goto LABEL_89;
  }

  v387 = 0;
  v383 = 0;
  v68 = 0;
  v392 = 0;
  v386 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger;
  v69 = v63 + 1;
  v391 = (v454 + 56);
  v457 = kSecAttrLabel;
  v378 = (v431 + 48);
  v377 = (v431 + 32);
  v393 = kSecValueData;
  v384 = (v451 + 16);
  v379 = kSecAttrModificationDate;
  v380 = (v451 + 8);
  v381 = (v62 + 48);
  v382 = (v431 + 56);
  v70 = data - 1;
  v71 = &qword_100493978;
  *&v66 = 136315138;
  v385 = v66;
  v388 = &_swiftEmptyDictionarySingleton;
  v72 = type metadata for Any;
  v73 = v445;
  v60 = v452;
  while (1)
  {
    while (1)
    {
      if (v68 >= v63->data)
      {
        __break(1u);
        goto LABEL_170;
      }

      v74 = *(&v69->isa + v68);
      if (!*(v74 + 16))
      {
        goto LABEL_41;
      }

      v75 = sub_10007CFD0(v457);
      if ((v76 & 1) == 0)
      {
        goto LABEL_40;
      }

      sub_100002B30(*(v74 + 56) + 32 * v75, &v464);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_40;
      }

      v77 = *v467;

      v78 = _findStringSwitchCase(cases:string:)(&off_1005560B0, v77);
      swift_bridgeObjectRelease_n();
      if (!v78)
      {
        break;
      }

      v63 = v456;
      if (v78 == 1)
      {
        v72 = type metadata for Any;
        if (!*(v74 + 16))
        {
          goto LABEL_32;
        }

        v79 = sub_10007CFD0(v393);
        if ((v80 & 1) == 0)
        {
          goto LABEL_32;
        }

        sub_100002B30(*(v74 + 56) + 32 * v79, &v464);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_32;
        }

        v82 = v467[1];
        v81 = v467[0];
        v376 = sub_100033AA8(_swiftEmptyArrayStorage);
        v83 = type metadata accessor for BinaryDecoder();
        v84 = swift_allocObject();
        v85 = 0;
        v84[5] = &_swiftEmptyDictionarySingleton;
        v84[2] = v81;
        v84[3] = v82;
        v86 = v82 >> 62;
        if ((v82 >> 62) > 1)
        {
          if (v86 == 2)
          {
            v85 = *(v81 + 16);
          }
        }

        else if (v86)
        {
          v85 = v81;
        }

        v84[4] = v85;
        swift_beginAccess();
        v84[5] = v376;
        v465 = v83;
        v466 = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
        *&v464 = v84;
        sub_10000AB0C(v81, v82);

        v376 = v82;
        v94 = v436;
        v95 = v392;
        LongTermPairingKeys.PublicIdentity.init(from:)(&v464, v436);
        if (v95)
        {

          sub_1000124C8(v81, v376);

          v392 = 0;
          v72 = type metadata for Any;
          v63 = v456;
LABEL_32:
          v96 = v436;
          (*v391)(v436, 1, 1, v458);
          sub_100016290(v96, &qword_10058FE50, &unk_100493930);
          sub_1001C95DC(v435, v74, v433, v446);

LABEL_33:
          v73 = v445;
          v60 = v452;
          if (v70 == v68)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        v392 = 0;

        sub_1000124C8(v81, v376);
        (*v391)(v94, 0, 1, v458);
        sub_1001D6B5C(v94, v421, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        if (*(v74 + 16) && (v99 = sub_10007CFD0(v379), (v100 & 1) != 0))
        {
          sub_100002B30(*(v74 + 56) + 32 * v99, &v464);

          v101 = v413;
          v102 = v453;
          v103 = swift_dynamicCast();
          v104 = *v382;
          (*v382)(v101, v103 ^ 1u, 1, v102);
          v105 = (*v378)(v101, 1, v102);
          v106 = v418;
          v107 = v417;
          if (v105 != 1)
          {
            v388 = *v377;
            v108 = v453;
            (v388)(v399, v101, v453);
            v109 = *(v458 + 28);
            v110 = v421;
            sub_100016290(&v421[v109], &qword_10058FE28, &unk_1004B2430);
            (v388)(&v110[v109], v399, v108);
            v111 = v108;
            v107 = v417;
            v106 = v418;
            v104(&v110[v109], 0, 1, v111);
LABEL_53:
            v116 = v421;
            v117 = *v384;
            (*v384)(v106, v421, v462);
            sub_1001D45C0(v116, v107, type metadata accessor for LongTermPairingKeys.PublicIdentity);
            v118 = v463;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v464 = v118;
            v120 = sub_10002A440(v106);
            v122 = v118->data;
            v123 = (v121 & 1) == 0;
            v124 = __OFADD__(v122, v123);
            v125 = &v122[v123];
            if (v124)
            {
              __break(1u);
LABEL_177:
              __break(1u);
            }

            v126 = v121;
            if (v118->length >= v125)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v147 = v120;
                sub_100196DF0();
                v120 = v147;
              }

              v127 = v418;
            }

            else
            {
              sub_10018FDE8(v125, isUniquelyReferenced_nonNull_native);
              v127 = v418;
              v120 = sub_10002A440(v418);
              if ((v126 & 1) != (v128 & 1))
              {
                goto LABEL_179;
              }
            }

            v141 = v464;
            if (v126)
            {
              sub_1001D7894(v417, *(v464 + 56) + *(v454 + 72) * v120, type metadata accessor for LongTermPairingKeys.PublicIdentity);
              (*v380)(v127, v462);
            }

            else
            {
              *(v464 + 8 * (v120 >> 6) + 64) |= 1 << v120;
              v142 = v451;
              v143 = &v141[1].data[*(v451 + 72) * v120];
              v388 = v120;
              v144 = v462;
              v117(v143, v127, v462);
              sub_1001D6B5C(v417, v141[1].length + *(v454 + 72) * v388, type metadata accessor for LongTermPairingKeys.PublicIdentity);
              (*(v142 + 8))(v127, v144);
              v145 = v141->data;
              v124 = __OFADD__(v145, 1);
              v146 = v145 + 1;
              if (v124)
              {
                goto LABEL_177;
              }

              v141->data = v146;
            }

            v72 = type metadata for Any;
            v63 = v456;
            v388 = v141;
            v463 = v141;
            sub_1001D46E4(v421, type metadata accessor for LongTermPairingKeys.PublicIdentity);
            goto LABEL_33;
          }
        }

        else
        {

          v101 = v413;
          (*v382)(v413, 1, 1, v453);
          v106 = v418;
          v107 = v417;
        }

        sub_100016290(v101, &qword_10058FE28, &unk_1004B2430);
        goto LABEL_53;
      }

      if (v78 != 2)
      {
        v72 = type metadata for Any;
        if (v70 == v68)
        {
          goto LABEL_78;
        }

        goto LABEL_42;
      }

      v387 = 1;
      v129 = v70 == v68++;
      v72 = type metadata for Any;
      if (v129)
      {
        goto LABEL_79;
      }
    }

    v72 = type metadata for Any;
    v63 = v456;
    if (!*(v74 + 16))
    {
      goto LABEL_39;
    }

    v87 = sub_10007CFD0(v393);
    if ((v88 & 1) == 0)
    {
      goto LABEL_39;
    }

    sub_100002B30(*(v74 + 56) + 32 * v87, &v464);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_39;
    }

    v89 = *v467;
    v375 = sub_100033AA8(_swiftEmptyArrayStorage);
    v374 = type metadata accessor for BinaryDecoder();
    v90 = swift_allocObject();
    v91 = v90;
    v92 = 0;
    *(v90 + 40) = &_swiftEmptyDictionarySingleton;
    *(v90 + 16) = v89;
    v93 = *(&v89 + 1) >> 62;
    v376 = *(&v89 + 1);
    if ((*(&v89 + 1) >> 62) > 1)
    {
      if (v93 == 2)
      {
        v92 = *(v89 + 16);
      }
    }

    else if (v93)
    {
      v92 = v89;
    }

    *(v90 + 32) = v92;
    swift_beginAccess();
    v97 = v374;
    *(v91 + 40) = v375;
    v465 = v97;
    v466 = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
    *&v464 = v91;
    v375 = v89;
    sub_10000AB0C(v89, v376);

    v98 = v392;
    LongTermPairingKeys.PrivateIdentity.init(from:)(&v464, v60);
    if (v98)
    {

      sub_1000124C8(v375, v376);

      v392 = 0;
      v72 = type metadata for Any;
      v63 = v456;
LABEL_39:
      v395(v60, 1, 1, v443);
      sub_100016290(v60, &qword_10058FEC8, &qword_100493978);
      sub_1001C95DC(v435, v74, v433, v446);
LABEL_40:

LABEL_41:
      if (v70 == v68)
      {
        goto LABEL_78;
      }

      goto LABEL_42;
    }

    v392 = 0;

    sub_1000124C8(v375, v376);
    v112 = v452;
    v113 = v443;
    v395(v452, 0, 1, v443);
    sub_1001D6B5C(v112, v416, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v114 = v412;
    sub_100012400(v432, v412, &qword_10058FEC8, &qword_100493978);
    if ((*v381)(v114, 1, v113) != 1)
    {
      break;
    }

    sub_100016290(v114, &qword_10058FEC8, &qword_100493978);
    v72 = type metadata for Any;
    v63 = v456;
    if (v383)
    {
      goto LABEL_63;
    }

    v115 = v432;
    sub_100016290(v432, &qword_10058FEC8, &qword_100493978);
    sub_1001D6B5C(v416, v115, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v395(v115, 0, 1, v443);
    v383 = 0;
    if (v70 == v68)
    {
      goto LABEL_78;
    }

LABEL_42:
    ++v68;
  }

  sub_1001D6B5C(v114, v73, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  v130 = v433;
  v131 = v446;
  AppleKeychain.remove(identity:for:)(v73, v433, v446);

  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.error.getter();

  v383 = v133;
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v375 = v132;
    v376 = v135;
    v467[0] = v135;
    *v134 = v385;
    *&v464 = 39;
    *(&v464 + 1) = 0xE100000000000000;
    v136._countAndFlagsBits = v130;
    v136._object = v131;
    String.append(_:)(v136);
    v137._countAndFlagsBits = 39;
    v137._object = 0xE100000000000000;
    String.append(_:)(v137);
    v138 = sub_100002320(v464, *(&v464 + 1), v467);

    *(v134 + 4) = v138;
    v132 = v375;
    _os_log_impl(&_mh_execute_header, v375, v383, "Found multiple private identities for %s. Will remove all private identities found", v134, 0xCu);
    sub_100002A00(v376);
  }

  sub_1001D46E4(v445, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  v63 = v456;
  v139 = v432;
  sub_100016290(v432, &qword_10058FEC8, &qword_100493978);
  v395(v139, 1, 1, v443);
  v72 = type metadata for Any;
LABEL_63:
  v140 = v416;
  AppleKeychain.remove(identity:for:)(v416, v433, v446);
  sub_1001D46E4(v140, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  if (v70 != v68)
  {
    v383 = 1;
    v60 = v452;
    goto LABEL_42;
  }

LABEL_78:
  if (v387)
  {
LABEL_79:
    v148 = swift_allocObject();
    *(v148 + 16) = xmmword_100486AE0;
    *(v148 + 32) = kSecAttrAccessGroup;
    v149 = *(v435 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
    *(v148 + 40) = *(v435 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
    *(v148 + 48) = v149;
    v150 = v457;
    *(v148 + 64) = &type metadata for String;
    *(v148 + 72) = v150;
    strcpy((v148 + 80), "public_local");
    *(v148 + 93) = 0;
    *(v148 + 94) = -5120;
    v151 = v390;
    *(v148 + 104) = &type metadata for String;
    *(v148 + 112) = v151;
    v152 = v446;
    *(v148 + 120) = v433;
    *(v148 + 128) = v152;
    v154 = v426;
    v153 = v427;
    *(v148 + 144) = &type metadata for String;
    *(v148 + 152) = v153;
    *(v148 + 184) = v398;
    *(v148 + 160) = v154;
    v155 = v153;
    v156 = v154;
    v157 = v151;
    v158 = kSecAttrAccessGroup;

    v159 = v150;
    sub_1000821A0(v148);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v160.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v161 = SecItemDelete(v160.super.isa);
    if (v161)
    {
      v162 = SecCopyErrorMessageString(v161, 0);
      if (v162)
      {
        v163 = v162;
        v164 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v166 = v165;
      }

      else
      {
        v164 = 0x6E776F6E6B6E75;
        v166 = 0xE700000000000000;
      }

      v71 = v435;
      v60 = v446;

      v169 = Logger.logObject.getter();
      v170 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v169, v170))
      {
        v171 = swift_slowAlloc();
        v172 = swift_slowAlloc();
        *&v464 = v172;
        *v171 = v385;
        *(v171 + 4) = sub_100002320(v164, v166, &v464);
        _os_log_impl(&_mh_execute_header, v169, v170, "Failed to remove public identites of paired devices stored locally with error: %s", v171, 0xCu);
        sub_100002A00(v172);
      }

      v65 = v432;
      v61 = v443;
      v62 = v442;
      v167 = v437;
      v168 = v434;
    }

    else
    {

      v71 = v435;
      v65 = v432;
      v61 = v443;
      v62 = v442;
      v167 = v437;
      v168 = v434;
      v60 = v446;
    }
  }

  else
  {
    v60 = v446;

    v65 = v432;
    v61 = v443;
    v62 = v442;
    v167 = v437;
    v168 = v434;
    v71 = v435;
  }

LABEL_89:
  v173 = v65;
  v174 = v430;
  sub_100012400(v173, v430, &qword_10058FEC8, &qword_100493978);
  v421 = *(v62 + 48);
  v175 = (v421)(v174, 1, v61);
  v176 = v462;
  v442 = v62 + 48;
  if (v175 != 1)
  {
    sub_1001D6B5C(v174, v167, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v178 = *(v451 + 16);
    v179 = v425;
    v178(v425, v167, v176);
    v180 = v388;
    if (!*(v388 + 16) || (v181 = sub_10002A440(v179), (v182 & 1) == 0))
    {
      v189 = v446;

      (*(v451 + 8))(v179, v176);

      v190 = Logger.logObject.getter();
      v191 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v190, v191))
      {
        v192 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        v467[0] = v193;
        *v192 = 136315138;
        *&v464 = 39;
        *(&v464 + 1) = 0xE100000000000000;
        v194._countAndFlagsBits = v433;
        v194._object = v189;
        String.append(_:)(v194);
        v195._countAndFlagsBits = 39;
        v195._object = 0xE100000000000000;
        String.append(_:)(v195);
        v196 = sub_100002320(v464, *(&v464 + 1), v467);

        *(v192 + 4) = v196;
        v197 = v433;
        _os_log_impl(&_mh_execute_header, v190, v191, "Detected public identity is missing from the keychain for %s attempting to re-insert", v192, 0xCu);
        sub_100002A00(v193);
        v167 = v437;

        v176 = v462;

        v198 = v444;
      }

      else
      {

        v198 = v444;
        v197 = v433;
      }

      v178(v198, v167, v176);
      v199 = *(type metadata accessor for LongTermPairingKeys.Identity(0) + 20);
      v200 = type metadata accessor for SymmetricKey();
      (*(*(v200 - 8) + 16))(v198 + v199, v167 + v199, v200);
      v201 = v443;
      v202 = v458;
      P256.Signing.PrivateKey.publicKey.getter();
      v203 = (v198 + *(v202 + 24));
      *v203 = 0;
      v203[1] = 0;
      (*(v431 + 7))(v198 + *(v202 + 28), 1, 1, v453);
      v71 = v435;
      AppleKeychain.save(identity:for:publicly:)(v198, v197, v189, 1);
      LOBYTE(v199) = v204;
      sub_1001D46E4(v198, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      v60 = v189;
      if ((v199 & 1) == 0)
      {
        AppleKeychain.remove(identity:for:)(v167, v197, v189);
        v205 = v432;
        sub_100016290(v432, &qword_10058FEC8, &qword_100493978);
        v395(v205, 1, 1, v201);
      }

      goto LABEL_100;
    }

    v183 = *(v180 + 56) + *(v454 + 72) * v181;
    v184 = v419;
    sub_1001D45C0(v183, v419, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    (*(v451 + 8))(v179, v176);
    v185 = v422;
    sub_1001D6B5C(v184, v422, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v186 = v420;
    sub_100012400(v185 + *(v458 + 28), v420, &qword_10058FE28, &unk_1004B2430);
    v187 = v431;
    v188 = v453;
    if ((*(v431 + 6))(v186, 1, v453) == 1)
    {
      v60 = v446;

      sub_1001D46E4(v185, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      sub_100016290(v186, &qword_10058FE28, &unk_1004B2430);
      v71 = v435;
LABEL_100:
      v177 = v461;
      v206 = v424;
      goto LABEL_101;
    }

    v187[4](v168, v186, v188);
    v305 = v440;
    Date.timeIntervalSince(_:)();
    v60 = v446;
    v71 = v435;
    if (v306 <= 5356800.0)
    {
      goto LABEL_161;
    }

    v307 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger;
    v308 = v187[2];
    v308(v415, v305, v188);
    v308(v414, v168, v188);

    v419 = v307;
    v309 = Logger.logObject.getter();
    v310 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v309, v310))
    {
      v311 = swift_slowAlloc();
      v457 = swift_slowAlloc();
      v467[0] = v457;
      *v311 = 136315394;
      *&v464 = 39;
      *(&v464 + 1) = 0xE100000000000000;
      LODWORD(p_isa) = v310;
      v312._countAndFlagsBits = v433;
      v312._object = v60;
      String.append(_:)(v312);
      v313._countAndFlagsBits = 39;
      v313._object = 0xE100000000000000;
      String.append(_:)(v313);
      v314 = sub_100002320(v464, *(&v464 + 1), v467);

      *(v311 + 4) = v314;
      *(v311 + 12) = 2080;
      Date.timeIntervalSince(_:)();
      v452 = static Duration.seconds(_:)();
      v445 = v315;
      sub_10005DC58(&qword_10058FEE0, &unk_100493990);
      type metadata accessor for Duration.UnitsFormatStyle.Unit();
      v316 = swift_allocObject();
      *(v316 + 16) = xmmword_100483520;
      static Duration.UnitsFormatStyle.Unit.days.getter();
      v71 = v435;
      static Duration.UnitsFormatStyle.Unit.hours.getter();
      sub_100029108(v316);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v317 = v400;
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
      v318 = v403;
      static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
      v319 = v408;
      static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
      v320 = v401;
      static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

      (*(v410 + 8))(v319, v411);
      (*(v407 + 8))(v318, v409);
      (*(v402 + 8))(v317, v404);
      sub_1001D469C(&qword_10058FEE8, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
      v321 = v406;
      Duration.formatted<A>(_:)();
      (*(v405 + 8))(v320, v321);
      v322 = *(v431 + 1);
      v322(v414, v188);
      v420 = v322;
      v322(v415, v188);
      v323 = sub_100002320(v464, *(&v464 + 1), v467);

      *(v311 + 14) = v323;
      _os_log_impl(&_mh_execute_header, v309, p_isa, "Last modified public identity for %s  %s ago in the keychain updating last modified timestamp", v311, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v325 = *(v431 + 1);
      v325(v414, v188);
      v420 = v325;
      v325(v415, v188);
    }

    p_isa = LongTermPairingKeys.PublicIdentity.rawRepresentation.getter();
    v452 = v326;
    v327 = *(v71 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
    v445 = *(v71 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
    v328 = v445;
    v329 = *(v71 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView + 8);
    v425 = *(v71 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView);
    v430 = v329;
    v330 = UUID.uuidString.getter();
    v332 = v331;
    v333 = swift_allocObject();
    *(v333 + 16) = xmmword_1004938F0;
    v436 = kSecAttrAccessGroup;
    *(v333 + 32) = kSecAttrAccessGroup;
    v457 = (v333 + 32);
    *(v333 + 40) = v327;
    *(v333 + 48) = v328;
    v334 = v396;
    *(v333 + 64) = &type metadata for String;
    *(v333 + 72) = v334;
    *(v333 + 80) = 1;
    *(v333 + 104) = &type metadata for Bool;
    *(v333 + 112) = kSecAttrIsInvisible;
    *(v333 + 120) = 1;
    *(v333 + 144) = &type metadata for Bool;
    *(v333 + 152) = kSecAttrLabel;
    *(v333 + 160) = 0x63696C627570;
    *(v333 + 168) = 0xE600000000000000;
    *(v333 + 184) = &type metadata for String;
    *(v333 + 192) = kSecAttrAccount;
    *(v333 + 200) = v330;
    *(v333 + 208) = v332;
    v335 = v390;
    *(v333 + 224) = &type metadata for String;
    *(v333 + 232) = v335;
    v336 = v446;
    *(v333 + 240) = v433;
    *(v333 + 248) = v336;
    *(v333 + 264) = &type metadata for String;
    *(v333 + 272) = kSecValueData;
    *(v333 + 304) = &type metadata for Data;
    v337 = p_isa;
    v338 = v452;
    *(v333 + 280) = p_isa;
    *(v333 + 288) = v338;
    v339 = v334;
    v340 = v335;
    v341 = v436;

    v342 = kSecAttrIsInvisible;
    v343 = kSecAttrLabel;
    v344 = kSecAttrAccount;

    v345 = kSecValueData;
    sub_10000AB0C(v337, v338);
    v346 = sub_1000821A0(v333);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (kSecAttrSyncViewHint)
    {
      v347 = kSecAttrSyncViewHint;

      v465 = &type metadata for String;
      *&v464 = v425;
      *(&v464 + 1) = v430;
      sub_100085188(&v464, v467);

      v348 = swift_isUniquelyReferenced_nonNull_native();
      v468 = v346;
      sub_100080710(v467, v347, v348);
      sub_1000124C8(v337, v338);

      v349 = v468;
      v350 = swift_initStackObject();
      *(v350 + 16) = xmmword_100480F40;
      v352 = v426;
      v351 = v427;
      *(v350 + 32) = v427;
      *(v350 + 64) = v398;
      *(v350 + 40) = v352;
      v353 = v351;
      v354 = v352;

      v355 = sub_1000821A0(v350);
      swift_setDeallocating();
      sub_100016290(v350 + 32, &qword_10058BAE0, &qword_100480E28);
      v356 = swift_isUniquelyReferenced_nonNull_native();
      *&v464 = v349;
      v357 = v392;
      sub_1001D60E8(v355, sub_1001D5980, 0, v356, &v464);

      v392 = v357;
      v73 = v434;
      if (!v357)
      {
        v358 = Dictionary._bridgeToObjectiveC()().super.isa;

        v359 = Dictionary._bridgeToObjectiveC()().super.isa;

        v360 = SecItemUpdate(v358, v359);

        v60 = v446;
        v361 = v433;
        v71 = v435;
        if (!v360)
        {
LABEL_171:
          v420(v73, v453);
          v324 = v422;
          goto LABEL_172;
        }

        v72 = Logger.logObject.getter();
        v362 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v72, v362))
        {
          v363 = swift_slowAlloc();
          v467[0] = swift_slowAlloc();
          *v363 = 136315394;
          *&v464 = 39;
          *(&v464 + 1) = 0xE100000000000000;
          v364._countAndFlagsBits = v361;
          v364._object = v60;
          String.append(_:)(v364);
          v365._countAndFlagsBits = 39;
          v365._object = 0xE100000000000000;
          String.append(_:)(v365);
          v366 = sub_100002320(v464, *(&v464 + 1), v467);

          *(v363 + 4) = v366;
          *(v363 + 12) = 2080;
          v367 = SecCopyErrorMessageString(v360, 0);
          if (v367)
          {
            v368 = v367;
            v369 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v371 = v370;
          }

          else
          {
            v369 = 0x6E776F6E6B6E75;
            v371 = 0xE700000000000000;
          }

          v177 = v461;
          v372 = sub_100002320(v369, v371, v467);

          *(v363 + 14) = v372;
          _os_log_impl(&_mh_execute_header, v72, v362, "Failed to update the last modified timestamp of the public identity to the keychain for %s with error: %s", v363, 0x16u);
          swift_arrayDestroy();

          v420(v434, v453);
          sub_1001D46E4(v422, type metadata accessor for LongTermPairingKeys.PublicIdentity);
          goto LABEL_173;
        }

LABEL_170:

        goto LABEL_171;
      }
    }

    else
    {
      __break(1u);
LABEL_179:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_100016290(v174, &qword_10058FEC8, &qword_100493978);
  v177 = v461;
  while (1)
  {
    v207 = v463->data;
    v456 = v463;
    if (v207 < 0x65)
    {
      break;
    }

    v208 = v463[2].isa;
    v424 = v463 + 2;
    v209 = 1 << LOBYTE(v463[1].isa);
    v210 = -1;
    if (v209 < 64)
    {
      v210 = ~(-1 << v209);
    }

    v60 = v210 & v208;
    v420 = (v71 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
    v168 = (v209 + 63) >> 6;
    v445 = (v451 + 16);
    p_isa = (v451 + 32);
    v437 = (v431 + 48);
    v430 = (v431 + 32);
    v425 = (v431 + 8);
    v452 = (v451 + 8);
    v419 = kSecAttrAccount;
    v418 = kSecAttrAccessGroup;

    v211 = 0;
    v422 = _swiftEmptyArrayStorage;
    v188 = &qword_10058FED8;
    v417 = xmmword_100486AF0;
    v434 = v168;
LABEL_106:
    v212 = v211;
    v187 = v450;
    while (v60)
    {
      v185 = v212;
LABEL_118:
      v214 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v215 = v214 | (v185 << 6);
      v216 = v456;
      v217 = v451;
      v218 = v462;
      (*(v451 + 16))(v187, &v456[1].data[*(v451 + 72) * v215], v462);
      v219 = v444;
      sub_1001D45C0(v216[1].length + *(v454 + 72) * v215, v444, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      v220 = sub_10005DC58(&qword_10058FED8, &qword_100493988);
      v221 = *(v220 + 48);
      v222 = *(v217 + 32);
      v223 = v449;
      v222(v449, v187, v218);
      sub_1001D6B5C(v219, &v223[v221], type metadata accessor for LongTermPairingKeys.PublicIdentity);
      (*(*(v220 - 8) + 56))(v223, 0, 1, v220);
      v71 = v185;
      v224 = v223;
      v177 = v461;
      v168 = v434;
LABEL_119:
      sub_10001CEA8(v224, v177, &qword_10058FEC0, &qword_100493970);
      v225 = sub_10005DC58(&qword_10058FED8, &qword_100493988);
      v226 = (*(*(v225 - 8) + 48))(v177, 1, v225);
      v227 = v448;
      if (v226 == 1)
      {

        v268 = v422;

        v269 = Logger.logObject.getter();
        v270 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v269, v270))
        {
          v271 = swift_slowAlloc();
          *v271 = 134217984;
          *(v271 + 4) = v422[2];

          _os_log_impl(&_mh_execute_header, v269, v270, "Removed %ld stale identities that were not modified recently", v271, 0xCu);
          v268 = v422;
        }

        else
        {
        }

        v272 = v462;
        v273 = v458;
        v274 = v268[2];
        v275 = v447;
        if (v274)
        {
          v276 = v268 + ((*(v451 + 80) + 32) & ~*(v451 + 80));
          v277 = *(v451 + 72);
          v278 = *(v451 + 16);
          v461 = (v454 + 56);
          v460 = v278;
          (v278)(v447, v276, v462);
          while (1)
          {
            v281 = sub_10002A440(v275);
            if (v282)
            {
              v283 = v281;
              v284 = v463;
              v285 = swift_isUniquelyReferenced_nonNull_native();
              *&v464 = v284;
              if (!v285)
              {
                sub_100196DF0();
                v284 = v464;
              }

              v286 = *v452;
              v287 = v462;
              (*v452)(&v284[1].data[v283 * v277], v462);
              v280 = v439;
              sub_1001D6B5C(v284[1].length + *(v454 + 72) * v283, v439, type metadata accessor for LongTermPairingKeys.PublicIdentity);
              v288 = v283;
              v272 = v287;
              sub_1001936E0(v288, v284);
              v286(v447, v287);
              v279 = 0;
              v456 = v284;
              v463 = v284;
              v273 = v458;
              v278 = v460;
            }

            else
            {
              (*v452)(v275, v272);
              v279 = 1;
              v280 = v439;
            }

            (*v461)(v280, v279, 1, v273);
            sub_100016290(v280, &qword_10058FE50, &unk_100493930);
            v276 += v277;
            --v274;
            v275 = v447;
            if (!v274)
            {
              break;
            }

            (v278)(v447, v276, v272);
          }
        }

        v60 = v446;
        goto LABEL_147;
      }

      v457 = v71;
      v228 = *(v225 + 48);
      v229 = v460;
      v230 = v462;
      v436 = *p_isa;
      (v436)(v460, v177, v462);
      v231 = v459;
      sub_1001D6B5C(v177 + v228, v459, type metadata accessor for LongTermPairingKeys.PublicIdentity);
      sub_100012400(v231 + *(v458 + 28), v227, &qword_10058FE28, &unk_1004B2430);
      v232 = v453;
      if ((*v437)(v227, 1, v453) == 1)
      {
        sub_1001D46E4(v231, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        (*v452)(v229, v230);
        sub_100016290(v227, &qword_10058FE28, &unk_1004B2430);
      }

      else
      {
        v233 = v438;
        (*v430)();
        Date.timeIntervalSince(_:)();
        if (v234 > 16070400.0)
        {
          v237 = swift_allocObject();
          *(v237 + 16) = v417;
          v239 = v426;
          v238 = v427;
          *(v237 + 32) = v427;
          v416 = v237 + 32;
          *(v237 + 40) = v239;
          v240 = v396;
          *(v237 + 64) = v398;
          *(v237 + 72) = v240;
          *(v237 + 80) = 1;
          v241 = v390;
          *(v237 + 104) = &type metadata for Bool;
          *(v237 + 112) = v241;
          *(v237 + 120) = v433;
          *(v237 + 128) = v446;
          v242 = v419;
          *(v237 + 144) = &type metadata for String;
          *(v237 + 152) = v242;

          v243 = v238;
          v244 = v239;
          v245 = v240;
          v246 = v241;
          v247 = v242;
          v248 = v459;
          *(v237 + 160) = UUID.uuidString.getter();
          *(v237 + 168) = v249;
          v250 = v418;
          *(v237 + 184) = &type metadata for String;
          *(v237 + 192) = v250;
          v251 = *v420;
          v252 = *(v420 + 1);
          *(v237 + 224) = &type metadata for String;
          *(v237 + 200) = v251;
          *(v237 + 208) = v252;
          v253 = v250;

          sub_1000821A0(v237);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v254.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v255 = SecItemDelete(v254.super.isa);
          v256 = v423;
          v177 = v461;
          if (v255)
          {
            v257 = SecCopyErrorMessageString(v255, 0);
            if (v257)
            {
              v258 = v257;
              v259 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v261 = v260;
            }

            else
            {
              v261 = 0xE700000000000000;
              v259 = 0x6E776F6E6B6E75;
            }

            sub_1001C97EC(v259, v261, v435, v440, v438, v433, v446);
          }

          (*v445)(v256, v460, v462);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v422 = sub_100116AA4(0, v422[2] + 1, 1, v422);
          }

          v188 = &qword_10058FED8;
          v168 = v434;
          v211 = v457;
          v263 = v422[2];
          v262 = v422[3];
          if (v263 >= v262 >> 1)
          {
            v422 = sub_100116AA4((v262 > 1), v263 + 1, 1, v422);
          }

          (*v425)(v438, v453);
          sub_1001D46E4(v248, type metadata accessor for LongTermPairingKeys.PublicIdentity);
          v264 = v451;
          v265 = v462;
          (*(v451 + 8))(v460, v462);
          v267 = v422;
          v266 = v423;
          v422[2] = v263 + 1;
          (v436)(v267 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v263, v266, v265);
          goto LABEL_106;
        }

        (*v425)(v233, v232);
        sub_1001D46E4(v459, type metadata accessor for LongTermPairingKeys.PublicIdentity);
        (*v452)(v460, v462);
      }

      v212 = v457;
      v187 = v450;
      v177 = v461;
      v188 = &qword_10058FED8;
    }

    if (v168 <= v212 + 1)
    {
      v213 = v212 + 1;
    }

    else
    {
      v213 = v168;
    }

    v71 = (v213 - 1);
    while (1)
    {
      v185 = v212 + 1;
      if (__OFADD__(v212, 1))
      {
        break;
      }

      if (v185 >= v168)
      {
        v235 = sub_10005DC58(&qword_10058FED8, &qword_100493988);
        v236 = v449;
        (*(*(v235 - 8) + 56))(v449, 1, 1, v235);
        v224 = v236;
        v60 = 0;
        goto LABEL_119;
      }

      v60 = *(&v424->isa + v185);
      ++v212;
      if (v60)
      {
        goto LABEL_118;
      }
    }

    __break(1u);
LABEL_161:

    (v187[1])(v168, v188);
    v324 = v185;
LABEL_172:
    sub_1001D46E4(v324, type metadata accessor for LongTermPairingKeys.PublicIdentity);
    v177 = v461;
LABEL_173:
    v206 = v424;
    v167 = v437;
LABEL_101:
    sub_10007F920(v167, v206);
    sub_100016290(v206, &qword_10058FE50, &unk_100493930);
    sub_1001D46E4(v167, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  }

LABEL_147:

  v289 = Logger.logObject.getter();
  v290 = static os_log_type_t.default.getter();

  v291 = os_log_type_enabled(v289, v290);
  v292 = v429;
  if (v291)
  {
    v293 = swift_slowAlloc();
    v462 = swift_slowAlloc();
    v468 = v462;
    *v293 = 134218498;
    *(v293 + 4) = v456->data;
    *(v293 + 12) = 2080;
    v294 = v432;
    swift_beginAccess();
    LODWORD(v461) = v290;
    sub_100012400(v294, v292, &qword_10058FEC8, &qword_100493978);
    v295 = v60;
    v296 = (v421)(v292, 1, v443);
    sub_100016290(v292, &qword_10058FEC8, &qword_100493978);
    if (v296 == 1)
    {
      v297 = 0x74756F68746977;
    }

    else
    {
      v297 = 1752459639;
    }

    if (v296 == 1)
    {
      v298 = 0xE700000000000000;
    }

    else
    {
      v298 = 0xE400000000000000;
    }

    v299 = sub_100002320(v297, v298, &v468);

    *(v293 + 14) = v299;
    *(v293 + 22) = 2080;
    v300 = v441;
    *&v464 = 39;
    *(&v464 + 1) = 0xE100000000000000;
    v301._countAndFlagsBits = v433;
    v301._object = v295;
    String.append(_:)(v301);
    v302._countAndFlagsBits = 39;
    v302._object = 0xE100000000000000;
    String.append(_:)(v302);
    v303 = sub_100002320(v464, *(&v464 + 1), &v468);

    *(v293 + 24) = v303;
    _os_log_impl(&_mh_execute_header, v289, v461, "Found %ld paired identities %s private identity in the keychain for %s", v293, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v294 = v432;
    v300 = v441;
  }

  swift_beginAccess();
  sub_100012400(v294, v300, &qword_10058FEC8, &qword_100493978);

  sub_1001B9118(v304);

  (*(v431 + 1))(v440, v453);

  sub_100016290(v294, &qword_10058FEC8, &qword_100493978);
LABEL_77:
  swift_unknownObjectRelease();
}

void sub_1001C95DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F40;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 64) = v9;
  *(inited + 40) = kSecClassGenericPassword;

  v10 = kSecClass;
  v11 = kSecClassGenericPassword;
  v12 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_100016290(inited + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = a2;
  sub_1001D60E8(v12, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, &v23);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = SecItemDelete(v14.super.isa);
  if (v15)
  {
    v16 = SecCopyErrorMessageString(v15, 0);
    if (v16)
    {
      v17 = v16;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v20 = 0xE700000000000000;
      v18 = 0x6E776F6E6B6E75;
    }

    sub_1001CAE68(v18, v20, a1, a3, a4, "Failed to remove badly formed identity for %s with error: %s", v21, v22);
  }
}

void sub_1001C97EC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v57 = a6;
  v58 = a1;
  v59 = a5;
  v60 = a3;
  v10 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin();
  v53 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v52 = *(v54 - 8);
  __chkstk_darwin();
  v48 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v47 = *(v49 - 8);
  __chkstk_darwin();
  v45 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Duration.UnitsFormatStyle();
  v50 = *(v14 - 8);
  v51 = v14;
  __chkstk_darwin();
  v46 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin();
  v22 = v41 - v21;
  v23 = *(v17 + 16);
  v23(v41 - v21, a4, v16, v20);
  (v23)(v19, v59, v16);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  v60 = a2;

  v59 = a7;

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v63[0] = v44;
    *v26 = 136315650;
    v43 = v25;
    Date.timeIntervalSince(_:)();
    v41[2] = static Duration.seconds(_:)();
    v41[1] = v27;
    sub_10005DC58(&qword_10058FEE0, &unk_100493990);
    type metadata accessor for Duration.UnitsFormatStyle.Unit();
    v42 = v24;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100483520;
    static Duration.UnitsFormatStyle.Unit.days.getter();
    static Duration.UnitsFormatStyle.Unit.hours.getter();
    sub_100029108(v28);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v29 = v45;
    static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    v30 = v48;
    static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
    v31 = v53;
    static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.hide.getter();
    v32 = v46;
    static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

    (*(v55 + 8))(v31, v56);
    (*(v52 + 8))(v30, v54);
    (*(v47 + 8))(v29, v49);
    sub_1001D469C(&qword_10058FEE8, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
    v33 = v51;
    Duration.formatted<A>(_:)();
    (*(v50 + 8))(v32, v33);
    v34 = *(v17 + 8);
    v34(v19, v16);
    v34(v22, v16);
    v35 = sub_100002320(v61, v62, v63);

    *(v26 + 4) = v35;
    *(v26 + 12) = 2080;
    v61 = 39;
    v62 = 0xE100000000000000;
    v36._countAndFlagsBits = v57;
    v36._object = v59;
    String.append(_:)(v36);
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    v38 = sub_100002320(v61, v62, v63);

    *(v26 + 14) = v38;
    *(v26 + 22) = 2080;
    *(v26 + 24) = sub_100002320(v58, v60, v63);
    v39 = v42;
    _os_log_impl(&_mh_execute_header, v42, v43, "Failed to delete a stale device identity last modified %s ago from the keychain for %s with error: %s", v26, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v40 = *(v17 + 8);
    v40(v19, v16);
    v40(v22, v16);
  }
}

void AppleKeychain.save(identity:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_1001BAB54();
  v8 = v7;
  type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v9 = P256.Signing.PrivateKey.rawRepresentation.getter();
  v11 = v10;
  *&v65[0] = v6;
  *(&v65[0] + 1) = v8;
  v67 = &type metadata for Data;
  v68 = &protocol witness table for Data;
  *&v66 = v9;
  *(&v66 + 1) = v10;
  v12 = sub_100029B34(&v66, &type metadata for Data);
  v13 = *v12;
  v14 = v12[1];
  sub_10000AB0C(v6, v8);
  sub_10000AB0C(v9, v11);
  sub_100178A18(v13, v14, v65);
  sub_1000124C8(v9, v11);
  sub_1000124C8(v6, v8);
  sub_100002A00(&v66);
  v15 = *&v65[0];
  v17 = *(v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
  v16 = *(v4 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
  v63 = *(&v65[0] + 1);
  v18 = UUID.uuidString.getter();
  v20 = v19;
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004938F0;
  *(inited + 32) = kSecAttrAccessGroup;
  *(inited + 40) = v17;
  *(inited + 48) = v16;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrSynchronizable;
  *(inited + 80) = 0;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrIsInvisible;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrLabel;
  *(inited + 160) = 0x65746176697270;
  *(inited + 168) = 0xE700000000000000;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrAccount;
  *(inited + 200) = v18;
  *(inited + 208) = v20;
  *(inited + 224) = &type metadata for String;
  *(inited + 232) = kSecAttrService;
  v62 = a2;
  *(inited + 240) = a2;
  *(inited + 248) = a3;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecValueData;
  *(inited + 304) = &type metadata for Data;
  *(inited + 280) = v15;
  *(inited + 288) = v63;
  v22 = kSecAttrAccessGroup;

  v23 = kSecAttrSynchronizable;
  v24 = kSecAttrIsInvisible;
  v25 = kSecAttrLabel;
  v26 = kSecAttrAccount;
  v27 = kSecAttrService;

  v28 = kSecValueData;
  sub_10000AB0C(v15, v63);
  v29 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  v31 = v30;
  v67 = v30;
  *&v66 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_100085188(&v66, v65);
  v32 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100080710(v65, kSecAttrAccessible, isUniquelyReferenced_nonNull_native);
  sub_1000124C8(v15, v63);
  v34 = v29;
  v35 = swift_initStackObject();
  *(v35 + 32) = kSecClass;
  *(v35 + 16) = xmmword_100480F40;
  *(v35 + 64) = v31;
  *(v35 + 40) = kSecClassGenericPassword;

  v36 = kSecClass;
  v37 = kSecClassGenericPassword;
  v38 = sub_1000821A0(v35);
  swift_setDeallocating();
  sub_100016290(v35 + 32, &qword_10058BAE0, &qword_100480E28);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  *&v66 = v34;
  sub_1001D60E8(v38, sub_1001D5980, 0, v39, &v66);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v41 = SecItemAdd(isa, 0);

  if (v41 == -25299)
  {
    v42 = swift_initStackObject();
    *(v42 + 16) = xmmword_100480F40;
    *(v42 + 32) = v36;
    *(v42 + 64) = v31;
    *(v42 + 40) = v37;

    v43 = v36;
    v44 = v37;
    v45 = sub_1000821A0(v42);
    swift_setDeallocating();
    sub_100016290(v42 + 32, &qword_10058BAE0, &qword_100480E28);
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *&v66 = v34;
    sub_1001D60E8(v45, sub_1001D5980, 0, v46, &v66);

    v47 = Dictionary._bridgeToObjectiveC()().super.isa;

    v48 = Dictionary._bridgeToObjectiveC()().super.isa;

    v41 = SecItemUpdate(v47, v48);

    v49 = a3;
    if (!v41)
    {
      return;
    }
  }

  else
  {

    v49 = a3;
    if (!v41)
    {
      return;
    }
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *&v65[0] = swift_slowAlloc();
    *v52 = 136315394;
    *&v66 = 39;
    *(&v66 + 1) = 0xE100000000000000;
    v53._countAndFlagsBits = v62;
    v53._object = v49;
    String.append(_:)(v53);
    v54._countAndFlagsBits = 39;
    v54._object = 0xE100000000000000;
    String.append(_:)(v54);
    v55 = sub_100002320(v66, *(&v66 + 1), v65);

    *(v52 + 4) = v55;
    *(v52 + 12) = 2080;
    v56 = SecCopyErrorMessageString(v41, 0);
    if (v56)
    {
      v57 = v56;
      v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = v59;
    }

    else
    {
      v60 = 0xE700000000000000;
      v58 = 0x6E776F6E6B6E75;
    }

    v61 = sub_100002320(v58, v60, v65);

    *(v52 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v50, v51, "Failed to add the generated private identity to the keychain for %s with error: %s", v52, 0x16u);
    swift_arrayDestroy();
  }
}

void AppleKeychain.save(identity:for:publicly:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  if (a4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v56 = v7;
  v8 = sub_1001BAB54();
  v10 = v9;
  type metadata accessor for LongTermPairingKeys.PublicIdentity(0);
  v11 = P256.Signing.PublicKey.rawRepresentation.getter();
  v13 = v12;
  v62 = v8;
  v63 = v10;
  v60 = &type metadata for Data;
  v61 = &protocol witness table for Data;
  v58 = v11;
  v59 = v12;
  v14 = sub_100029B34(&v58, &type metadata for Data);
  v15 = *v14;
  v16 = v14[1];
  sub_10000AB0C(v8, v10);
  sub_10000AB0C(v11, v13);
  sub_100178A18(v15, v16, &v62);
  sub_1000124C8(v11, v13);
  sub_1000124C8(v8, v10);
  sub_100002A00(&v58);
  v17 = v62;
  v18 = v63;
  v19 = *(v5 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
  v20 = *(v5 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
  v22 = *(v5 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView);
  v21 = *(v5 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainView + 8);
  v23 = UUID.uuidString.getter();
  v55 = a2;
  v25 = sub_1001C5054(v17, v18, v19, v20, v22, v21, a2, a3, v23, v24, v56);
  sub_1000124C8(v17, v18);

  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F40;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  v28 = v27;
  *(inited + 64) = v27;
  *(inited + 40) = kSecClassGenericPassword;

  v29 = kSecClass;
  v30 = kSecClassGenericPassword;
  v31 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_100016290(inited + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = v25;
  sub_1001D60E8(v31, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, &v58);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v34 = SecItemAdd(isa, 0);

  if (v34 == -25299)
  {
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_100480F40;
    *(v35 + 32) = v29;
    *(v35 + 64) = v28;
    *(v35 + 40) = v30;

    v36 = v29;
    v37 = v30;
    v38 = sub_1000821A0(v35);
    swift_setDeallocating();
    sub_100016290(v35 + 32, &qword_10058BAE0, &qword_100480E28);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v25;
    sub_1001D60E8(v38, sub_1001D5980, 0, v39, &v58);

    v40 = Dictionary._bridgeToObjectiveC()().super.isa;

    v41 = Dictionary._bridgeToObjectiveC()().super.isa;

    v34 = SecItemUpdate(v40, v41);

    v42 = a3;
    if (!v34)
    {
      return;
    }
  }

  else
  {

    v42 = a3;
    if (!v34)
    {
      return;
    }
  }

  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v45 = 136315394;
    v58 = 39;
    v59 = 0xE100000000000000;
    v46._countAndFlagsBits = v55;
    v46._object = v42;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 39;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v48 = sub_100002320(v58, v59, &v62);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    v49 = SecCopyErrorMessageString(v34, 0);
    if (v49)
    {
      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v53 = 0xE700000000000000;
      v51 = 0x6E776F6E6B6E75;
    }

    v54 = sub_100002320(v51, v53, &v62);

    *(v45 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v43, v44, "Failed to add the generated public identity to the keychain for %s with error: %s", v45, 0x16u);
    swift_arrayDestroy();
  }
}

Swift::Void __swiftcall AppleKeychain.removeAllIdentities(for:)(CoreP2P::NANServiceName a1)
{
  object = a1.string._object;
  countAndFlagsBits = a1.string._countAndFlagsBits;
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100483520;
  *(inited + 32) = kSecAttrSynchronizable;
  type metadata accessor for CFString(0);
  v6 = v5;
  *(inited + 40) = kSecAttrSynchronizableAny;
  *(inited + 64) = v5;
  *(inited + 72) = kSecAttrService;
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = countAndFlagsBits;
  *(inited + 88) = object;
  v7 = kSecAttrSynchronizable;
  v8 = kSecAttrSynchronizableAny;
  v9 = kSecAttrService;

  v10 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v11 = swift_initStackObject();
  *(v11 + 32) = kSecClass;
  *(v11 + 16) = xmmword_100480F40;
  *(v11 + 64) = v6;
  *(v11 + 40) = kSecClassGenericPassword;
  v12 = kSecClass;
  v13 = kSecClassGenericPassword;
  v14 = sub_1000821A0(v11);
  swift_setDeallocating();
  sub_100016290(v11 + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v10;
  sub_1001D60E8(v14, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, &v24);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = SecItemDelete(v16.super.isa);
  if (v17)
  {
    v18 = SecCopyErrorMessageString(v17, 0);
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }

    sub_1001CAE68(v20, v22, v1, countAndFlagsBits, object, "Failed to delete all device identities from the keychain for %s with error: %s", v23, v24);
  }
}

void sub_1001CAE68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, const char *a6, ...)
{

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315394;
    v18 = v13;
    v14._countAndFlagsBits = a4;
    v14._object = a5;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 39;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = sub_100002320(39, 0xE100000000000000, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100002320(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, oslog, v11, a6, v12, 0x16u);
    swift_arrayDestroy();
  }
}

void AppleKeychain.remove(identity:for:)(uint64_t a1, uint64_t a2, void *a3)
{
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F30;
  *(inited + 32) = kSecAttrSynchronizable;
  type metadata accessor for CFString(0);
  v8 = v7;
  *(inited + 40) = kSecAttrSynchronizableAny;
  *(inited + 64) = v7;
  *(inited + 72) = kSecAttrService;
  *(inited + 80) = a2;
  *(inited + 88) = a3;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccount;
  v9 = kSecAttrSynchronizable;
  v10 = kSecAttrSynchronizableAny;
  v11 = kSecAttrService;
  v28 = a3;

  v12 = kSecAttrAccount;
  v29 = a1;
  v13 = UUID.uuidString.getter();
  *(inited + 144) = &type metadata for String;
  *(inited + 120) = v13;
  *(inited + 128) = v14;
  v15 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v16 = swift_initStackObject();
  *(v16 + 32) = kSecClass;
  *(v16 + 16) = xmmword_100480F40;
  *(v16 + 64) = v8;
  *(v16 + 40) = kSecClassGenericPassword;
  v17 = kSecClass;
  v18 = kSecClassGenericPassword;
  v19 = sub_1000821A0(v16);
  swift_setDeallocating();
  sub_100016290(v16 + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = v15;
  sub_1001D60E8(v19, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, &v31);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  v21.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = SecItemDelete(v21.super.isa);
  if (v22)
  {
    v23 = SecCopyErrorMessageString(v22, 0);
    if (v23)
    {
      v24 = v23;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;
    }

    else
    {
      v27 = 0xE700000000000000;
      v25 = 0x6E776F6E6B6E75;
    }

    sub_1001CB2F8(v25, v27, v30, v29, a2, v28);
  }

  else
  {
  }
}

void sub_1001CB2F8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  __chkstk_darwin();
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D45C0(a4, v12, type metadata accessor for LongTermPairingKeys.PrivateIdentity);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = a1;
    v16 = v15;
    v27 = swift_slowAlloc();
    *v16 = 136315650;
    type metadata accessor for UUID();
    sub_1001D469C(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_1001D46E4(v12, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v20 = sub_100002320(v17, v19, &v27);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v25 = 39;
    v26 = 0xE100000000000000;
    v21._countAndFlagsBits = a5;
    v21._object = a6;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 39;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23 = sub_100002320(v25, v26, &v27);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    *(v16 + 24) = sub_100002320(v24, a2, &v27);
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to delete the device identity %s from the keychain for %s with error: %s", v16, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1001D46E4(v12, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  }
}

void AppleKeychain.addIdentityKey(_:)()
{
  v1 = v0;
  v2 = sub_100033AA8(_swiftEmptyArrayStorage);
  v3 = type metadata accessor for BinaryEncoder();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100480A90;
  *(v4 + 32) = v2;
  v52 = v3;
  v53 = sub_1001D469C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  *&v51 = v4;

  NANIdentityKey.encode(to:)(&v51);
  sub_100002A00(&v51);
  swift_beginAccess();
  v48 = *(v4 + 24);
  v49 = *(v4 + 16);
  sub_10000AB0C(v49, v48);

  v5 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
  v6 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
  v7 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v8 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  v9 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount);
  v10 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount + 8);
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 32) = kSecAttrAccessGroup;
  *(inited + 16) = xmmword_1004938F0;
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrSynchronizable;
  *(inited + 80) = 0;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrIsInvisible;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrLabel;
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x80000001004B5200;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrAccount;
  *(inited + 200) = v9;
  *(inited + 208) = v10;
  *(inited + 224) = &type metadata for String;
  *(inited + 232) = kSecAttrService;
  *(inited + 240) = v7;
  *(inited + 248) = v8;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecValueData;
  *(inited + 304) = &type metadata for Data;
  *(inited + 280) = v49;
  *(inited + 288) = v48;
  sub_10000AB0C(v49, v48);
  v12 = kSecAttrAccessGroup;

  v13 = kSecAttrSynchronizable;
  v14 = kSecAttrIsInvisible;
  v15 = kSecAttrLabel;
  v16 = kSecAttrAccount;

  v17 = kSecAttrService;

  v18 = kSecValueData;
  v19 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  v21 = v20;
  v52 = v20;
  *&v51 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_100085188(&v51, v50);
  v22 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100080710(v50, kSecAttrAccessible, isUniquelyReferenced_nonNull_native);
  sub_1000124C8(v49, v48);
  v24 = swift_initStackObject();
  *(v24 + 32) = kSecClass;
  *(v24 + 16) = xmmword_100480F40;
  *(v24 + 64) = v21;
  *(v24 + 40) = kSecClassGenericPassword;

  v25 = kSecClass;
  v26 = kSecClassGenericPassword;
  v27 = sub_1000821A0(v24);
  swift_setDeallocating();
  sub_100016290(v24 + 32, &qword_10058BAE0, &qword_100480E28);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v51 = v19;
  sub_1001D60E8(v27, sub_1001D5980, 0, v28, &v51);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = SecItemAdd(isa, 0);

  if (v30 == -25299)
  {
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_100480F40;
    *(v31 + 32) = v25;
    *(v31 + 64) = v21;
    *(v31 + 40) = v26;

    v32 = v25;
    v33 = v26;
    v34 = sub_1000821A0(v31);
    swift_setDeallocating();
    sub_100016290(v31 + 32, &qword_10058BAE0, &qword_100480E28);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *&v51 = v19;
    sub_1001D60E8(v34, sub_1001D5980, 0, v35, &v51);

    v36 = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = Dictionary._bridgeToObjectiveC()().super.isa;

    v30 = SecItemUpdate(v36, v37);

    if (!v30)
    {
      return;
    }
  }

  else
  {

    if (!v30)
    {
      return;
    }
  }

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v51 = v41;
    *v40 = 136315138;
    v42 = SecCopyErrorMessageString(v30, 0);
    if (v42)
    {
      v43 = v42;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;
    }

    else
    {
      v46 = 0xE700000000000000;
      v44 = 0x6E776F6E6B6E75;
    }

    v47 = sub_100002320(v44, v46, &v51);

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "Failed to add the NAN identity key to the keychain with error: %s", v40, 0xCu);
    sub_100002A00(v41);
  }
}

uint64_t AppleKeychain.findIdentityKey()@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v58 = &v57 - v2;
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004817D0;
  *(inited + 32) = kSecClass;
  v66 = kSecClass;
  v67 = inited + 32;
  v65 = kSecClassGenericPassword;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  v64 = kSecAttrService;
  *(inited + 64) = v4;
  *(inited + 72) = kSecAttrService;
  v5 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v62 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  v6 = v62;
  *(inited + 80) = v5;
  *(inited + 88) = v6;
  v63 = kSecAttrAccount;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccount;
  v61 = v1;
  v7 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount + 8);
  *(inited + 120) = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount);
  *(inited + 128) = v7;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecMatchLimit;
  *(inited + 160) = kSecMatchLimitOne;
  *(inited + 184) = v4;
  *(inited + 192) = kSecReturnData;
  *(inited + 200) = 1;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrAccessible;
  *(inited + 264) = v4;
  *(inited + 240) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v8 = v66;
  v9 = v65;
  v10 = v64;

  v11 = v63;

  v12 = kSecMatchLimit;
  v13 = kSecMatchLimitOne;
  v14 = kSecReturnData;
  v15 = kSecAttrAccessible;
  v16 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v69 = 0;
  v18 = SecItemCopyMatching(v17.super.isa, &v69);
  if (v18)
  {
    if (v18 == -25300)
    {
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "No NAN identity key stored in the keychain", v21, 2u);
      }

      v22 = type metadata accessor for NANIdentityKey(0);
      (*(*(v22 - 8) + 56))(v59, 1, 1, v22);
      return swift_unknownObjectRelease();
    }

    v38 = v18;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v68[0] = v42;
      *v41 = 136315138;
      v43 = SecCopyErrorMessageString(v38, 0);
      if (v43)
      {
        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;
      }

      else
      {
        v47 = 0xE700000000000000;
        v45 = 0x6E776F6E6B6E75;
      }

      v52 = sub_100002320(v45, v47, v68);

      *(v41 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to find the NAN identity key in the keychain with error: %s", v41, 0xCu);
      sub_100002A00(v42);
    }

    v51 = 0;
LABEL_21:
    sub_1001D6BF4();
    swift_allocError();
    *v53 = v51;
    swift_willThrow();

    return swift_unknownObjectRelease();
  }

  v23 = v58;
  if (!v69)
  {
LABEL_15:
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to parse the NAN identity key from the keychain", v50, 2u);
    }

    v51 = 1;
    goto LABEL_21;
  }

  v24 = swift_unknownObjectRetain();
  v25 = CFGetTypeID(v24);
  if (v25 != CFDataGetTypeID())
  {
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  type metadata accessor for CFData(0);
  swift_unknownObjectRetain();
  v26 = swift_dynamicCastUnknownClassUnconditional();
  v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v67 = sub_100033AA8(_swiftEmptyArrayStorage);
  v30 = type metadata accessor for BinaryDecoder();
  v31 = swift_allocObject();
  v32 = 0;
  v31[5] = &_swiftEmptyDictionarySingleton;
  v33 = v27;
  v31[2] = v27;
  v31[3] = v29;
  v34 = v29 >> 62;
  if ((v29 >> 62) > 1)
  {
    v35 = v60;
    v36 = v23;
    v37 = v33;
    if (v34 == 2)
    {
      v32 = *(v33 + 16);
    }
  }

  else
  {
    v35 = v60;
    v36 = v23;
    v37 = v33;
    if (v34)
    {
      v32 = v33;
    }
  }

  v31[4] = v32;
  swift_beginAccess();
  v31[5] = v67;
  v68[3] = v30;
  v68[4] = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v68[0] = v31;
  sub_10000AB0C(v37, v29);

  NANIdentityKey.init(from:)(v68, v36);
  if (v35)
  {

    swift_unknownObjectRelease();
    v55 = 1;
  }

  else
  {
    swift_unknownObjectRelease();

    v55 = 0;
  }

  sub_1000124C8(v37, v29);
  v56 = type metadata accessor for NANIdentityKey(0);
  (*(*(v56 - 8) + 56))(v36, v55, 1, v56);
  sub_10001CEA8(v36, v59, &unk_100595C50, &unk_1004AFD20);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall AppleKeychain.deleteIdentityKey()()
{
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 32) = kSecAttrService;
  *(inited + 16) = xmmword_100480F30;
  v2 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  *(inited + 40) = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  *(inited + 48) = v2;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrAccount;
  v3 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount + 8);
  *(inited + 80) = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount);
  *(inited + 88) = v3;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccessible;
  type metadata accessor for CFString(0);
  v5 = v4;
  *(inited + 144) = v4;
  *(inited + 120) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v6 = kSecAttrService;

  v7 = kSecAttrAccount;

  v8 = kSecAttrAccessible;
  v9 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v10 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v11 = swift_initStackObject();
  *(v11 + 32) = kSecClass;
  *(v11 + 16) = xmmword_100480F40;
  *(v11 + 64) = v5;
  *(v11 + 40) = kSecClassGenericPassword;
  v12 = kSecClass;
  v13 = kSecClassGenericPassword;
  v14 = sub_1000821A0(v11);
  swift_setDeallocating();
  sub_100016290(v11 + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v10;
  sub_1001D60E8(v14, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, &v27);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = SecItemDelete(v16.super.isa);
  if (v17)
  {
    v18 = SecCopyErrorMessageString(v17, 0);
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;
    }

    else
    {
      v22 = 0xE700000000000000;
      v20 = 0x6E776F6E6B6E75;
    }

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100002320(v20, v22, &v27);
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to delete identity key from the keychain with error: %s", v25, 0xCu);
      sub_100002A00(v26);
    }
  }

  else
  {
  }
}

void *AppleKeychain.installPairedPeer(with:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v114 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v116 = &v112 - v6;
  __chkstk_darwin();
  v113 = &v112 - v7;
  __chkstk_darwin();
  v115 = &v112 - v8;
  __chkstk_darwin();
  v144 = &v112 - v9;
  __chkstk_darwin();
  v129 = &v112 - v10;
  sub_10005DC58(&unk_1005985B0, &unk_1004939A0);
  __chkstk_darwin();
  v12 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v137 = &v112 - v13;
  v123 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v128 = *(v123 - 8);
  __chkstk_darwin();
  v122 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v112 - v15;
  __chkstk_darwin();
  v127 = &v112 - v17;
  __chkstk_darwin();
  v19 = &v112 - v18;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v117 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v112 - v21;
  v132 = v1;
  AppleKeychain.loadPairedPeerAssociationsWithIDs()();
  v24 = v23;
  v25 = *(v4 + 56);
  v126 = v22;
  v121 = v4 + 56;
  v120 = v25;
  v25(v22, 1, 1, v3);
  v135 = a1;
  v26 = a1;
  v27 = v16;
  v125 = v19;
  result = sub_1001D45C0(v26, v19, type metadata accessor for NANPairedDeviceSharedAssociation);
  v30 = 0;
  v31 = 0;
  v33 = v24 + 64;
  v32 = *(v24 + 64);
  v130 = v24;
  v34 = 1 << *(v24 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v32;
  v124 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger;
  v37 = (v34 + 63) >> 6;
  v140 = (v4 + 16);
  v141 = (v4 + 32);
  v131 = v4;
  v136 = (v4 + 8);
  *&v29 = 136315138;
  v118 = v29;
  v138 = v12;
  v139 = v3;
  v133 = v37;
  v134 = v24 + 64;
  v142 = v27;
  while (1)
  {
    if (!v36)
    {
      if (v37 <= v30 + 1)
      {
        v39 = v30 + 1;
      }

      else
      {
        v39 = v37;
      }

      v40 = v39 - 1;
      while (1)
      {
        v38 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v38 >= v37)
        {
          v143 = v31;
          v62 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
          v50 = v138;
          (*(*(v62 - 8) + 56))(v138, 1, 1, v62);
          v36 = 0;
          v30 = v40;
          goto LABEL_18;
        }

        v36 = *(v33 + 8 * v38);
        ++v30;
        if (v36)
        {
          v143 = v31;
          v30 = v38;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      return result;
    }

    v143 = v31;
    v38 = v30;
LABEL_17:
    v41 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
    v42 = v41 | (v38 << 6);
    v43 = v130;
    v44 = v131;
    v45 = v129;
    (*(v131 + 16))(v129, *(v130 + 48) + *(v131 + 72) * v42, v3);
    v46 = v127;
    sub_1001D45C0(*(v43 + 56) + *(v128 + 72) * v42, v127, type metadata accessor for NANPairedDeviceSharedAssociation);
    v47 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
    v48 = *(v47 + 48);
    v49 = *(v44 + 32);
    v50 = v138;
    v49(v138, v45, v3);
    sub_1001D6B5C(v46, v50 + v48, type metadata accessor for NANPairedDeviceSharedAssociation);
    (*(*(v47 - 8) + 56))(v50, 0, 1, v47);
    v27 = v142;
LABEL_18:
    v51 = v50;
    v52 = v137;
    sub_10001CEA8(v51, v137, &unk_1005985B0, &unk_1004939A0);
    v53 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
    if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
    {
      break;
    }

    v54 = *(v53 + 48);
    v3 = v139;
    (*v141)(v144, v52, v139);
    sub_1001D6B5C(v52 + v54, v27, type metadata accessor for NANPairedDeviceSharedAssociation);
    v31 = v143;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v55 = v147;
    v56 = v148;
    SymmetricKey.withUnsafeBytes<A>(_:)();
    result = v147;
    v57 = v56 >> 62;
    v58 = v148 >> 62;
    if (v56 >> 62 != 3)
    {
      if (v57)
      {
        if (v57 == 1)
        {
          LODWORD(v59) = HIDWORD(v55) - v55;
          if (__OFSUB__(HIDWORD(v55), v55))
          {
            goto LABEL_65;
          }

          v59 = v59;
        }

        else
        {
          v64 = *(v55 + 16);
          v63 = *(v55 + 24);
          v65 = __OFSUB__(v63, v64);
          v59 = v63 - v64;
          if (v65)
          {
            goto LABEL_66;
          }
        }
      }

      else
      {
        v59 = BYTE6(v56);
      }

LABEL_33:
      if (v58 <= 1)
      {
        if (v58)
        {
          if (__OFSUB__(HIDWORD(v147), v147))
          {
            goto LABEL_64;
          }

          if (v59 != HIDWORD(v147) - v147)
          {
LABEL_5:
            sub_1000124C8(v147, v148);
            sub_1000124C8(v55, v56);
            v27 = v142;
            goto LABEL_6;
          }
        }

        else if (v59 != BYTE6(v148))
        {
          goto LABEL_5;
        }

        goto LABEL_43;
      }

      if (v58 == 2)
      {
        v67 = v147[2];
        v66 = v147[3];
        v65 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v65)
        {
          goto LABEL_63;
        }

        if (v59 != v68)
        {
          goto LABEL_5;
        }

LABEL_43:
        if (v59 >= 1)
        {
          v69 = v147;
          v70 = v148;
          sub_10000AB0C(v147, v148);
          v71 = sub_100031C74(v55, v56, v69, v70);
          sub_1000124C8(v55, v56);
          sub_1000124C8(v69, v70);
          v27 = v142;
          if ((v71 & 1) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_48;
        }
      }

      else if (v59)
      {
        goto LABEL_5;
      }

      sub_1000124C8(v147, v148);
      v60 = v55;
      v61 = v56;
      goto LABEL_47;
    }

    v59 = 0;
    if (v55)
    {
      goto LABEL_33;
    }

    if (v56 != 0xC000000000000000)
    {
      goto LABEL_33;
    }

    if (v148 >> 62 != 3)
    {
      goto LABEL_33;
    }

    v59 = 0;
    if (v147 || v148 != 0xC000000000000000)
    {
      goto LABEL_33;
    }

    sub_1000124C8(0, 0xC000000000000000);
    v60 = 0;
    v61 = 0xC000000000000000;
LABEL_47:
    sub_1000124C8(v60, v61);
    v27 = v142;
LABEL_48:
    v72 = v126;
    sub_100016290(v126, &qword_10058F4D0, &qword_100491AB0);
    (*v140)(v72, v144, v3);
    v120(v72, 0, 1, v3);
    *&v125[*(v123 + 32)] = *(v27 + *(v123 + 32));
    v73 = v122;
    sub_1001D45C0(v27, v122, type metadata accessor for NANPairedDeviceSharedAssociation);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v145 = v119;
      *v76 = v118;
      SymmetricKey.withUnsafeBytes<A>(_:)();
      v143 = v31;
      v77 = v73;
      v79 = v147;
      v78 = v148;
      v80 = Data.hexString.getter(v147, v148);
      v82 = v81;
      sub_1000124C8(v79, v78);
      v83 = v77;
      v31 = v143;
      sub_1001D46E4(v83, type metadata accessor for NANPairedDeviceSharedAssociation);
      v84 = sub_100002320(v80, v82, &v145);
      v3 = v139;

      *(v76 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v74, v75, "Paired Peer: Uninstalling existing shared association for %s", v76, 0xCu);
      sub_100002A00(v119);

      v27 = v142;
    }

    else
    {

      sub_1001D46E4(v73, type metadata accessor for NANPairedDeviceSharedAssociation);
    }

    AppleKeychain.uninstallPairedPeer(with:)(v27);
LABEL_6:
    sub_1001D46E4(v27, type metadata accessor for NANPairedDeviceSharedAssociation);
    result = (*v136)(v144, v3);
    v37 = v133;
    v33 = v134;
  }

  v85 = v117;
  sub_100012400(v126, v117, &qword_10058F4D0, &qword_100491AB0);
  v86 = v139;
  if ((*(v131 + 48))(v85, 1, v139) == 1)
  {
    sub_100016290(v85, &qword_10058F4D0, &qword_100491AB0);
    v87 = v116;
    UUID.init()();
    v88 = v114;
    (*v140)(v114, v87, v86);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v147 = v92;
      *v91 = v118;
      sub_1001D469C(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v93 = dispatch thunk of CustomStringConvertible.description.getter();
      v95 = v94;
      v96 = *v136;
      (*v136)(v88, v86);
      v97 = sub_100002320(v93, v95, &v147);

      *(v91 + 4) = v97;
      _os_log_impl(&_mh_execute_header, v89, v90, "Installing peer with UUID: %s", v91, 0xCu);
      sub_100002A00(v92);
    }

    else
    {

      v96 = *v136;
      (*v136)(v88, v86);
    }

    v108 = v125;
    v109 = v125;
    v110 = &v146;
  }

  else
  {
    v98 = v115;
    (*v141)(v115, v85, v86);
    v99 = v113;
    (*v140)(v113, v98, v86);
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v147 = v103;
      *v102 = v118;
      sub_1001D469C(&qword_100597520, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v105;
      v96 = *v136;
      (*v136)(v99, v86);
      v107 = sub_100002320(v104, v106, &v147);

      *(v102 + 4) = v107;
      _os_log_impl(&_mh_execute_header, v100, v101, "Updating peer with UUID: %s", v102, 0xCu);
      sub_100002A00(v103);
    }

    else
    {

      v96 = *v136;
      (*v136)(v99, v86);
    }

    v108 = v125;
    v109 = v125;
    v110 = &v145;
  }

  v111 = *(v110 - 32);
  AppleKeychain.installPairedPeer(with:using:)(v109, v111);
  v96(v111, v86);
  sub_1001D46E4(v108, type metadata accessor for NANPairedDeviceSharedAssociation);
  return sub_100016290(v126, &qword_10058F4D0, &qword_100491AB0);
}

void AppleKeychain.installPairedPeer(with:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10005DC58(&qword_10058BAD0, &qword_100480E18);
  __chkstk_darwin();
  v70 = &v65 - v6;
  v7 = type metadata accessor for UUID();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin();
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100033AA8(_swiftEmptyArrayStorage);
  v10 = type metadata accessor for BinaryEncoder();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100480A90;
  *(v11 + 32) = v9;
  v83 = v10;
  v84 = sub_1001D469C(&qword_10058CFC0, type metadata accessor for BinaryEncoder, protocol conformance descriptor for BinaryEncoder);
  *&v82 = v11;

  v69 = a1;
  NANPairedDeviceSharedAssociation.encode(to:)(&v82);
  v74 = 0;
  sub_100002A00(&v82);
  swift_beginAccess();
  v12 = *(v11 + 16);
  v78 = *(v11 + 24);
  *&v79 = v12;
  sub_10000AB0C(v12, v78);

  v14 = *(v3 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup);
  v13 = *(v3 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_keychainAccessGroup + 8);
  v75 = a2;
  v76 = v3;
  v15 = *(v3 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v16 = *(v3 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  v71 = v13;
  v72 = v15;
  v17 = UUID.uuidString.getter();
  v19 = v18;
  v77 = sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 32) = kSecAttrAccessGroup;
  v73 = inited + 32;
  *(inited + 16) = xmmword_1004938F0;
  *(inited + 40) = v14;
  *(inited + 48) = v13;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrSynchronizable;
  *(inited + 80) = 0;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrIsInvisible;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecAttrLabel;
  *(inited + 160) = 0xD000000000000011;
  *(inited + 168) = 0x80000001004B5220;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecAttrAccount;
  *(inited + 200) = v17;
  *(inited + 208) = v19;
  *(inited + 224) = &type metadata for String;
  *(inited + 232) = kSecAttrService;
  *(inited + 240) = v72;
  *(inited + 248) = v16;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = kSecValueData;
  *(inited + 304) = &type metadata for Data;
  v22 = v78;
  v21 = v79;
  *(inited + 280) = v79;
  *(inited + 288) = v22;
  sub_10000AB0C(v21, v22);
  v23 = kSecAttrAccessGroup;

  v24 = kSecAttrSynchronizable;
  v25 = kSecAttrIsInvisible;
  v26 = kSecAttrLabel;
  v27 = kSecAttrAccount;
  v28 = kSecAttrService;

  v29 = kSecValueData;
  v30 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  v32 = v31;
  v83 = v31;
  *&v82 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_100085188(&v82, v81);
  v33 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v80 = v30;
  sub_100080710(v81, kSecAttrAccessible, isUniquelyReferenced_nonNull_native);
  sub_1000124C8(v79, v78);
  v35 = v80;
  v36 = swift_initStackObject();
  *(v36 + 32) = kSecClass;
  v79 = xmmword_100480F40;
  *(v36 + 16) = xmmword_100480F40;
  *(v36 + 64) = v32;
  *(v36 + 40) = kSecClassGenericPassword;

  v37 = kSecClass;
  v38 = kSecClassGenericPassword;
  v39 = sub_1000821A0(v36);
  swift_setDeallocating();
  sub_100016290(v36 + 32, &qword_10058BAE0, &qword_100480E28);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *&v82 = v35;
  v41 = v74;
  sub_1001D60E8(v39, sub_1001D5980, 0, v40, &v82);

  if (v41)
  {

    __break(1u);

    sub_100002A00(&v82);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v43 = SecItemAdd(isa, 0);

    if (v43 == -25299)
    {
      v44 = swift_initStackObject();
      *(v44 + 16) = v79;
      *(v44 + 32) = v37;
      *(v44 + 64) = v32;
      *(v44 + 40) = v38;

      v45 = v37;
      v46 = v38;
      v47 = sub_1000821A0(v44);
      swift_setDeallocating();
      sub_100016290(v44 + 32, &qword_10058BAE0, &qword_100480E28);
      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v82 = v35;
      sub_1001D60E8(v47, sub_1001D5980, 0, v48, &v82);

      v49 = Dictionary._bridgeToObjectiveC()().super.isa;

      v50 = Dictionary._bridgeToObjectiveC()().super.isa;

      v43 = SecItemUpdate(v49, v50);

      v51 = v75;
      if (!v43)
      {
        goto LABEL_5;
      }
    }

    else
    {

      v51 = v75;
      if (!v43)
      {
LABEL_5:
        v52 = v68;
        (*(v66 + 16))(v68, v51, v67);
        v53 = v70;
        sub_1001D45C0(v69, v70, type metadata accessor for NANPairedDeviceSharedAssociation);
        v54 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
        (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
        swift_beginAccess();
        sub_100072D18(v53, v52);
        swift_endAccess();
        return;
      }
    }

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v82 = v58;
      *v57 = 136315138;
      v59 = SecCopyErrorMessageString(v43, 0);
      if (v59)
      {
        v60 = v59;
        v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v63 = v62;
      }

      else
      {
        v63 = 0xE700000000000000;
        v61 = 0x6E776F6E6B6E75;
      }

      v64 = sub_100002320(v61, v63, &v82);

      *(v57 + 4) = v64;
      _os_log_impl(&_mh_execute_header, v55, v56, "Failed to add the NAN paired peer keys to the keychain with error: %s", v57, 0xCu);
      sub_100002A00(v58);
    }
  }
}

void AppleKeychain.uninstallPairedPeer(with:)(uint64_t a1)
{
  sub_10005DC58(&qword_10058BAD0, &qword_100480E18);
  __chkstk_darwin();
  v4 = v48 - v3;
  sub_10005DC58(&unk_1005985B0, &unk_1004939A0);
  __chkstk_darwin();
  v6 = v48 - v5;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v8 = v48 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v51 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers;
  swift_beginAccess();
  v13 = *(v1 + v12);
  v52[2] = a1;

  sub_10019BC64(sub_1001D6C48, v52, v13, v6);

  v14 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  if ((*(*(v14 - 8) + 48))(v6, 1, v14) == 1)
  {
    sub_100016290(v6, &unk_1005985B0, &unk_1004939A0);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    sub_100016290(v8, &qword_10058F4D0, &qword_100491AB0);
    return;
  }

  v49 = 0;
  v50 = v4;
  v15 = *(v14 + 48);
  v16 = *(v10 + 32);
  v16(v8, v6, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1001D46E4(&v6[v15], type metadata accessor for NANPairedDeviceSharedAssociation);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  v16(v51, v8, v9);
  v48[1] = sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100480F30;
  *(inited + 32) = kSecAttrService;
  v48[2] = v1;
  v18 = (v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v19 = *(v1 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  *(inited + 40) = *v18;
  *(inited + 48) = v19;
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = kSecAttrAccount;
  v20 = kSecAttrService;

  v21 = kSecAttrAccount;
  *(inited + 80) = UUID.uuidString.getter();
  *(inited + 88) = v22;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrAccessible;
  type metadata accessor for CFString(0);
  v24 = v23;
  *(inited + 144) = v23;
  *(inited + 120) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v25 = kSecAttrAccessible;
  v26 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v27 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v28 = swift_initStackObject();
  *(v28 + 32) = kSecClass;
  *(v28 + 16) = xmmword_100480F40;
  *(v28 + 64) = v24;
  *(v28 + 40) = kSecClassGenericPassword;
  v29 = kSecClass;
  v30 = kSecClassGenericPassword;
  v31 = sub_1000821A0(v28);
  swift_setDeallocating();
  sub_100016290(v28 + 32, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = v27;
  v33 = v49;
  sub_1001D60E8(v31, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, v53);

  if (v33)
  {

    __break(1u);
  }

  else
  {
    sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
    v34.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v35 = SecItemDelete(v34.super.isa);
    if (v35)
    {
      v36 = SecCopyErrorMessageString(v35, 0);
      if (v36)
      {
        v37 = v36;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v40 = 0xE700000000000000;
        v38 = 0x6E776F6E6B6E75;
      }

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v49 = v38;
        v44 = v43;
        v45 = swift_slowAlloc();
        v53[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_100002320(v49, v40, v53);
        _os_log_impl(&_mh_execute_header, v41, v42, "Failed to delete the NAN paired peer keys from the keychain with error: %s", v44, 0xCu);
        sub_100002A00(v45);
      }
    }

    else
    {
    }

    swift_beginAccess();
    v46 = v50;
    v47 = v51;
    sub_1001B91E0(v51, v50);
    sub_100016290(v46, &qword_10058BAD0, &qword_100480E18);
    swift_endAccess();
    (*(v10 + 8))(v47, v9);
  }
}

Swift::Void __swiftcall AppleKeychain.uninstallAllPairedPeers()()
{
  sub_10005DC58(&qword_10058BAD0, &qword_100480E18);
  __chkstk_darwin();
  v129 = &v113[-v1];
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v133 = &v113[-v2];
  v3 = type metadata accessor for UUID();
  v139 = *(v3 - 8);
  v140 = v3;
  __chkstk_darwin();
  v132 = &v113[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100486AF0;
  *(inited + 32) = kSecClass;
  v144 = inited + 32;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v6;
  *(inited + 72) = kSecAttrService;
  v145 = v6;
  v7 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v8 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  v138 = v7;
  *(inited + 80) = v7;
  *(inited + 88) = v8;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecMatchLimit;
  *(inited + 120) = kSecMatchLimitAll;
  *(inited + 144) = v6;
  *(inited + 152) = kSecReturnData;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecReturnAttributes;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 200) = 1;
  v136 = kSecClass;
  v135 = kSecClassGenericPassword;
  v134 = kSecAttrService;
  v137 = v8;

  v9 = kSecMatchLimit;
  v10 = kSecMatchLimitAll;
  v11 = kSecReturnData;
  v12 = v143;
  v13 = kSecReturnAttributes;
  sub_1000821A0(inited);
  swift_setDeallocating();
  v14 = sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  v144 = sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v16 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger;
  v17 = isa;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "Querying ALL paired peers with query: %@", v20, 0xCu);
    sub_100016290(v21, &qword_10058B780, &qword_100480AC0);
  }

  v153 = 0;
  v23 = SecItemCopyMatching(v17, &v153);
  if (v23 == -25300)
  {
    v99 = v17;
    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 138412290;
      *(v102 + 4) = v99;
      *v103 = v99;
      v104 = v99;
      v105 = "No items found for: %@";
      v106 = v101;
      v107 = v100;
      v108 = v102;
      v109 = 12;
LABEL_46:
      _os_log_impl(&_mh_execute_header, v107, v106, v105, v108, v109);
      sub_100016290(v103, &qword_10058B780, &qword_100480AC0);

      goto LABEL_52;
    }

LABEL_47:

    goto LABEL_52;
  }

  if (v23)
  {
    v110 = v23;
    v99 = v17;
    v100 = Logger.logObject.getter();
    v111 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v100, v111))
    {
      v112 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v112 = 138412546;
      *(v112 + 4) = v99;
      *v103 = v99;
      *(v112 + 12) = 1024;
      *(v112 + 14) = v110;
      v104 = v99;
      v105 = "Failed to get items for: %@. Error: %d";
      v106 = v111;
      v107 = v100;
      v108 = v112;
      v109 = 18;
      goto LABEL_46;
    }

    goto LABEL_47;
  }

  if (v153 && (v148 = v153, swift_unknownObjectRetain(), sub_10005DC58(&qword_10058F4D8, &unk_100492880), (swift_dynamicCast() & 1) != 0))
  {
    v25 = v146;
    if (*(v146 + 16))
    {
      v26 = *(v146 + 16);
      v121 = v17;
      v123 = v14;
      v127 = (v12 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_identityKeyAccount);
      v141 = kSecAttrAccount;
      v122 = (v139 + 48);
      v118 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers;
      v119 = (v139 + 32);
      v120 = (v139 + 8);
      v27 = 32;
      *&v24 = 136315138;
      v128 = v24;
      v130 = v16;
      v131 = v146;
      v28 = v26;
      do
      {
        v29 = *(v25 + v27);
        v30 = *(v29 + 16);

        if (v30 && (v31 = sub_10007CFD0(v141), (v32 & 1) != 0) && (sub_100002B30(*(v29 + 56) + 32 * v31, &v148), (swift_dynamicCast() & 1) != 0))
        {

          v34 = v146;
          v33 = v147;
          if (v146 == *v127 && v147 == v127[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
          }

          else
          {
            v142 = v27;
            v126 = v28;
            v46 = v135;
            v45 = v136;
            v150[0] = v136;
            v150[1] = v135;
            v47 = v134;
            v150[4] = v145;
            v151[0] = v134;
            v151[1] = v138;
            v151[2] = v137;
            v48 = v141;
            v151[4] = &type metadata for String;
            v152[0] = v141;
            v152[4] = &type metadata for String;
            v152[1] = v34;
            v152[2] = v33;
            sub_10005DC58(&qword_10058BAD8, &qword_100480E20);
            v49 = static _DictionaryStorage.allocate(capacity:)();
            v50 = v45;
            v51 = v46;
            v52 = v47;

            v53 = v48;

            sub_100012400(v150, &v148, &qword_10058BAE0, &qword_100480E28);
            v54 = v148;
            v55 = sub_10007CFD0(v148);
            if (v56)
            {
              goto LABEL_53;
            }

            v57 = v49 + 8;
            *(v49 + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v55;
            *(v49[6] + 8 * v55) = v54;
            sub_100085188(v149, (v49[7] + 32 * v55));
            v58 = v49[2];
            v59 = __OFADD__(v58, 1);
            v60 = v58 + 1;
            if (v59)
            {
              goto LABEL_54;
            }

            v49[2] = v60;
            sub_100012400(v151, &v148, &qword_10058BAE0, &qword_100480E28);
            v61 = v148;
            v62 = sub_10007CFD0(v148);
            if (v63)
            {
              goto LABEL_53;
            }

            *(v57 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
            *(v49[6] + 8 * v62) = v61;
            sub_100085188(v149, (v49[7] + 32 * v62));
            v64 = v49[2];
            v59 = __OFADD__(v64, 1);
            v65 = v64 + 1;
            if (v59)
            {
              goto LABEL_54;
            }

            v49[2] = v65;
            sub_100012400(v152, &v148, &qword_10058BAE0, &qword_100480E28);
            v66 = v148;
            v67 = sub_10007CFD0(v148);
            if (v68)
            {
LABEL_53:
              __break(1u);
LABEL_54:
              __break(1u);
            }

            *(v57 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
            *(v49[6] + 8 * v67) = v66;
            sub_100085188(v149, (v49[7] + 32 * v67));
            v69 = v49[2];
            v59 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v59)
            {
              goto LABEL_54;
            }

            v49[2] = v70;
            swift_arrayDestroy();
            v71 = Dictionary._bridgeToObjectiveC()().super.isa;

            v125 = v71;
            v72 = SecItemDelete(v71);
            v25 = v131;
            v27 = v142;
            if (v72)
            {
              v73 = SecCopyErrorMessageString(v72, 0);
              v117 = v34;
              if (v73)
              {
                v74 = v73;
                v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v124 = v75;
              }

              else
              {
                v124 = 0xE700000000000000;
                v116 = 0x6E776F6E6B6E75;
              }

              v76 = Logger.logObject.getter();
              v77 = static os_log_type_t.error.getter();

              v114 = v77;
              if (os_log_type_enabled(v76, v77))
              {
                v78 = swift_slowAlloc();
                v115 = v76;
                v79 = v78;
                v80 = swift_slowAlloc();
                v148 = v80;
                *v79 = v128;
                *(v79 + 4) = sub_100002320(v116, v124, &v148);
                _os_log_impl(&_mh_execute_header, v115, v114, "Failed to delete the NAN paired peer with error: %s", v79, 0xCu);
                sub_100002A00(v80);
                v25 = v131;
              }

              else
              {
              }
            }

            v81 = v133;
            UUID.init(uuidString:)();

            v82 = v140;
            if ((*v122)(v81, 1, v140) == 1)
            {

              sub_100016290(v81, &qword_10058F4D0, &qword_100491AB0);
              v28 = v126;
            }

            else
            {
              v83 = v132;
              (*v119)(v132, v81, v82);
              v84 = v118;
              swift_beginAccess();
              v85 = sub_10002A440(v83);
              if (v86)
              {
                v87 = v85;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v89 = *(v12 + v84);
                v146 = v89;
                *(v12 + v84) = 0x8000000000000000;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100196404();
                  v89 = v146;
                }

                v90 = v140;
                (*(v139 + 8))(*(v89 + 48) + *(v139 + 72) * v87, v140);
                v91 = *(v89 + 56);
                v92 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
                v93 = *(v92 - 8);
                v94 = v91 + *(v93 + 72) * v87;
                v95 = v120;
                v96 = v129;
                sub_1001D6B5C(v94, v129, type metadata accessor for NANPairedDeviceSharedAssociation);
                sub_100193868(v87, v89);
                *(v12 + v84) = v89;
                v97 = v96;
                (*(v93 + 56))(v96, 0, 1, v92);
                v25 = v131;
                v28 = v126;
              }

              else
              {
                v98 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
                v97 = v129;
                (*(*(v98 - 8) + 56))(v129, 1, 1, v98);
                v90 = v140;
                v28 = v126;
                v95 = v120;
              }

              sub_100016290(v97, &qword_10058BAD0, &qword_100480E18);
              swift_endAccess();

              (*v95)(v132, v90);
              v27 = v142;
            }
          }
        }

        else
        {

          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v148 = v38;
            *v37 = v128;
            v39 = Dictionary.description.getter();
            v142 = v27;
            v40 = v28;
            v41 = v12;
            v43 = v42;

            v44 = sub_100002320(v39, v43, &v148);
            v12 = v41;
            v28 = v40;
            v27 = v142;

            *(v37 + 4) = v44;
            _os_log_impl(&_mh_execute_header, v35, v36, "Failed to read account from %s", v37, 0xCu);
            sub_100002A00(v38);

            v25 = v131;
          }

          else
          {
          }
        }

        v27 += 8;
        --v28;
      }

      while (v28);
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_52:
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall AppleKeychain.uninstallAllIdentities()()
{
  v1 = v0;
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100483520;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  v4 = v3;
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v3;
  *(inited + 72) = kSecAttrService;
  v5 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v6 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  *(inited + 104) = &type metadata for String;
  *(inited + 80) = v5;
  *(inited + 88) = v6;
  v7 = kSecClass;
  v8 = kSecClassGenericPassword;
  v9 = v7;
  v10 = v8;
  v11 = kSecAttrService;

  v12 = sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40[0] = v39;
    *v15 = 136315138;
    sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
    v16 = Dictionary.description.getter();
    v18 = v10;
    v19 = sub_100002320(v16, v17, v40);

    *(v15 + 4) = v19;
    v10 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "Uninstalling ALL identities with query: %s", v15, 0xCu);
    sub_100002A00(v39);
  }

  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_100480F40;
  *(v20 + 32) = v9;
  v21 = v20 + 32;
  *(v20 + 64) = v4;
  *(v20 + 40) = v10;
  v22 = sub_1000821A0(v20);
  swift_setDeallocating();
  sub_100016290(v21, &qword_10058BAE0, &qword_100480E28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = v12;
  sub_1001D60E8(v22, sub_1001D5980, 0, isUniquelyReferenced_nonNull_native, v40);

  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  v24.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = SecItemDelete(v24.super.isa);
  if (v25)
  {
    v26 = SecCopyErrorMessageString(v25, 0);
    if (v26)
    {
      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;
    }

    else
    {
      v30 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E75;
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v40[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_100002320(v28, v30, v40);
      _os_log_impl(&_mh_execute_header, v31, v32, "Uninstalling ALL identities failed: %s", v33, 0xCu);
      sub_100002A00(v34);
    }
  }

  else
  {
  }

  v35 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers;
  swift_beginAccess();
  *(v1 + v35) = &_swiftEmptyDictionarySingleton;

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Uninstalling ALL identities completed", v38, 2u);
  }
}

void *AppleKeychain.findPairedPeerAssociations()(uint64_t a1)
{
  AppleKeychain.loadPairedPeerAssociationsWithIDs()();
  v2 = v1;
  v3 = v1[2];
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1000DD53C(v1[2], 0);
  v5 = *(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8);
  sub_1000DD9E8(&v9, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
  v7 = v6;
  sub_1000E290C(v9);
  if (v7 != v3)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v4;
}

void AppleKeychain.loadPairedPeerAssociationsWithIDs()()
{
  sub_10005DC58(&qword_10058FEF8, &unk_1004939C0);
  __chkstk_darwin();
  v36 = &v35 - v1;
  v2 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin();
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v35 - v4;
  sub_10005DC58(&qword_10058FED0, &qword_100493980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004817D0;
  v38 = kSecClass;
  *(inited + 32) = kSecClass;
  v44 = inited + 32;
  isa = kSecClassGenericPassword;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassGenericPassword;
  *(inited + 64) = v6;
  *(inited + 72) = kSecAttrService;
  v35 = v0;
  v7 = (v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService);
  v8 = *(v0 + OBJC_IVAR____TtC7CoreP2P13AppleKeychain_nanPairingService + 8);
  *(inited + 80) = *v7;
  *(inited + 88) = v8;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecMatchLimit;
  *(inited + 120) = kSecMatchLimitAll;
  *(inited + 144) = v6;
  *(inited + 152) = kSecReturnData;
  v43 = v6;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecReturnAttributes;
  *(inited + 200) = 1;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecAttrAccessible;
  *(inited + 264) = v6;
  *(inited + 240) = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  v9 = v38;
  v10 = isa;
  v11 = kSecAttrService;

  v12 = kSecMatchLimit;
  v13 = kSecMatchLimitAll;
  v14 = kSecReturnData;
  v15 = kSecReturnAttributes;
  v16 = kSecAttrAccessible;
  v17 = kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly;
  sub_1000821A0(inited);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BAE0, &qword_100480E28);
  swift_arrayDestroy();
  sub_1001D469C(&qword_10058B320, type metadata accessor for CFString, byte_10047F464);
  v18.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v47 = 0;
  if (SecItemCopyMatching(v18.super.isa, &v47) || (v19 = v36, !v47) || (v46[0] = v47, swift_unknownObjectRetain(), sub_10005DC58(&qword_10058F4D8, &unk_100492880), (swift_dynamicCast() & 1) == 0))
  {
    sub_1000822C8(_swiftEmptyArrayStorage);

LABEL_3:
    swift_unknownObjectRelease();
    return;
  }

  isa = v18.super.isa;
  v20 = v45;
  v21 = *(v45 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v44 = v45 + 32;
    v24 = v42;
    v25 = (v41 + 48);
    v26 = _swiftEmptyArrayStorage;
    v27 = v40;
    v38 = (v41 + 48);
    do
    {
      if (v22 >= *(v20 + 16))
      {
        __break(1u);
      }

      v46[0] = *(v44 + 8 * v22);
      sub_1001D0184(v46, v19);
      if ((v25->isa)(v19, 1, v24) == 1)
      {
        sub_100016290(v19, &qword_10058FEF8, &unk_1004939C0);
      }

      else
      {
        v43 = v23;
        v28 = v39;
        sub_10001CEA8(v19, v39, &qword_10058BAC0, &qword_100480E08);
        sub_10001CEA8(v28, v27, &qword_10058BAC0, &qword_100480E08);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_100116434(0, v26[2] + 1, 1, v26);
        }

        v30 = v26[2];
        v29 = v26[3];
        if (v30 >= v29 >> 1)
        {
          v26 = sub_100116434((v29 > 1), v30 + 1, 1, v26);
        }

        v26[2] = v30 + 1;
        v27 = v40;
        sub_10001CEA8(v40, v26 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v30, &qword_10058BAC0, &qword_100480E08);
        v24 = v42;
        v23 = v43;
        v25 = v38;
      }

      ++v22;
    }

    while (v21 != v22);
  }

  else
  {
    v23 = 0;
    v26 = _swiftEmptyArrayStorage;
  }

  if (v26[2])
  {
    sub_10005DC58(&qword_10058BAC8, &qword_100480E10);
    v31 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v31 = &_swiftEmptyDictionarySingleton;
  }

  v46[0] = v31;
  sub_1001D59D0(v26, 1, v46);
  if (!v23)
  {

    v32 = v46[0];
    v33 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_pairedPeers;
    v34 = v35;
    swift_beginAccess();
    *(v34 + v33) = v32;

    goto LABEL_3;
  }

  __break(1u);
}

uint64_t sub_1001D0184@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  sub_10005DC58(&qword_10058BAD0, &qword_100480E18);
  __chkstk_darwin();
  v6 = &v37 - v5;
  v7 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v44 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v11 = &v37 - v10;
  v12 = type metadata accessor for UUID();
  v48 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (!*(v15 + 16))
  {
    goto LABEL_11;
  }

  v16 = sub_10007CFD0(kSecValueData);
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_100002B30(*(v15 + 56) + 32 * v16, v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v18 = v46;
  v43 = v47;
  if (!*(v15 + 16) || (v42 = v46, v19 = sub_10007CFD0(kSecAttrAccount), v18 = v42, (v20 & 1) == 0))
  {
    v22 = v18;
LABEL_10:
    sub_1000124C8(v22, v43);
    goto LABEL_11;
  }

  sub_100002B30(*(v15 + 56) + 32 * v19, v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v22 = v42;
    goto LABEL_10;
  }

  UUID.init(uuidString:)();

  v21 = v48;
  if ((*(v48 + 48))(v11, 1, v12) == 1)
  {
    sub_1000124C8(v42, v43);
    sub_100016290(v11, &qword_10058F4D0, &qword_100491AB0);
LABEL_11:
    v23 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
    return (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  v38 = *(v21 + 32);
  v39 = v21 + 32;
  v38(v14, v11, v12);
  v41 = sub_100033AA8(_swiftEmptyArrayStorage);
  v40 = type metadata accessor for BinaryDecoder();
  v25 = swift_allocObject();
  v26 = 0;
  v25[5] = &_swiftEmptyDictionarySingleton;
  v28 = v42;
  v27 = v43;
  v25[2] = v42;
  v25[3] = v27;
  v29 = v27 >> 62;
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v26 = *(v28 + 16);
    }
  }

  else if (v29)
  {
    v26 = v28;
  }

  v25[4] = v26;
  swift_beginAccess();
  v30 = v40;
  v25[5] = v41;
  v45[3] = v30;
  v45[4] = sub_1001D469C(&qword_10058C7D0, type metadata accessor for BinaryDecoder, protocol conformance descriptor for BinaryDecoder);
  v45[0] = v25;
  v31 = v28;
  v32 = v43;
  sub_10000AB0C(v31, v43);

  NANPairedDeviceSharedAssociation.init(from:)(v45, v6);
  if (v2)
  {

    sub_1000124C8(v42, v32);
    (*(v48 + 8))(v14, v12);
    (*(v44 + 56))(v6, 1, 1, v7);
    sub_100016290(v6, &qword_10058BAD0, &qword_100480E18);
    v33 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
    return (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
  }

  else
  {

    sub_1000124C8(v42, v32);
    (*(v44 + 56))(v6, 0, 1, v7);
    sub_1001D6B5C(v6, v9, type metadata accessor for NANPairedDeviceSharedAssociation);
    v34 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
    v35 = a2;
    v36 = *(v34 + 48);
    v38(v35, v14, v12);
    sub_1001D6B5C(v9, &v35[v36], type metadata accessor for NANPairedDeviceSharedAssociation);
    return (*(*(v34 - 8) + 56))(v35, 0, 1, v34);
  }
}

uint64_t AppleKeychain.incrementUsageCount(for:)(uint64_t a1)
{
  sub_10005DC58(&unk_1005985B0, &unk_1004939A0);
  __chkstk_darwin();
  v3 = &v14[-v2];
  v4 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14[-v6];
  AppleKeychain.loadPairedPeerAssociationsWithIDs()();
  v15 = a1;
  sub_10019BC64(sub_1001AC5B0, v14, v8, v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100016290(v3, &unk_1005985B0, &unk_1004939A0);
    return 0;
  }

  sub_10001CEA8(v3, v7, &unk_100597500, &unk_1004939B0);
  v10 = &v7[*(v4 + 48)];
  AppleKeychain.uninstallPairedPeer(with:)(v10);
  result = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v12 = *(result + 32);
  v13 = *(v10 + v12);
  v9 = v13 + 1;
  if (v13 != -1)
  {
    *(v10 + v12) = v9;
    AppleKeychain.installPairedPeer(with:using:)(v10, v7);
    sub_100016290(v7, &unk_100597500, &unk_1004939B0);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t AppleKeychain.decrementUsageCount(for:)(uint64_t a1)
{
  sub_10005DC58(&unk_1005985B0, &unk_1004939A0);
  __chkstk_darwin();
  v3 = &v14[-v2];
  v4 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14[-v6];
  AppleKeychain.loadPairedPeerAssociationsWithIDs()();
  v15 = a1;
  sub_10019BC64(sub_1001AC51C, v14, v8, v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100016290(v3, &unk_1005985B0, &unk_1004939A0);
    return 0;
  }

  sub_10001CEA8(v3, v7, &unk_100597500, &unk_1004939B0);
  v10 = &v7[*(v4 + 48)];
  AppleKeychain.uninstallPairedPeer(with:)(v10);
  result = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v12 = *(result + 32);
  v13 = *(v10 + v12);
  v9 = v13 - 1;
  if (v13)
  {
    *(v10 + v12) = v9;
    if (v13 != 1)
    {
      AppleKeychain.installPairedPeer(with:using:)(v10, v7);
    }

    sub_100016290(v7, &unk_100597500, &unk_1004939B0);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t AppleKeychain.deinit()
{
  v1 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AppleKeychain.__deallocating_deinit()
{
  AppleKeychain.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1001D0EC8(uint64_t a1)
{
  swift_beginAccess();
  v2 = sub_10007F974(a1);
  v4 = v3;
  swift_endAccess();
  sub_100010520(v2, v4);
  sub_1001C5540();
  swift_beginAccess();
  sub_1001D4D20(a1);
  return swift_endAccess();
}

uint64_t sub_1001D1034(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100590810, &qword_100493E30);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_100029B34(a1, a1[3]);
  sub_1001D77A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  sub_1001D469C(&qword_100590818, type metadata accessor for LongTermPairingKeys.PrivateIdentity, protocol conformance descriptor for LongTermPairingKeys.PrivateIdentity);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for StorageEntry(0) + 20));
    v10[15] = 1;
    sub_10005DC58(&qword_1005907F8, &qword_100493E28);
    sub_1001D77F8(&qword_100590820, &qword_100590828, protocol conformance descriptor for LongTermPairingKeys.PublicIdentity, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1001D1250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_10005DC58(&qword_10058FEC8, &qword_100493978);
  __chkstk_darwin();
  v19 = &v15 - v4;
  v5 = sub_10005DC58(&qword_1005907E0, &qword_100493E20);
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = type metadata accessor for StorageEntry(0);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_100029B34(a1, a1[3]);
  sub_1001D77A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100002A00(a1);
    return sub_100016290(v10, &qword_10058FEC8, &qword_100493978);
  }

  else
  {
    v12 = v17;
    v22 = 0;
    sub_1001D469C(&qword_1005907F0, type metadata accessor for LongTermPairingKeys.PrivateIdentity, protocol conformance descriptor for LongTermPairingKeys.PrivateIdentity);
    v13 = v18;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B1B78(v19, v10, &qword_10058FEC8, &qword_100493978);
    sub_10005DC58(&qword_1005907F8, &qword_100493E28);
    v21 = 1;
    sub_1001D77F8(&qword_100590800, &qword_100590808, protocol conformance descriptor for LongTermPairingKeys.PublicIdentity, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v12 + 8))(v7, v13);
    *&v10[*(v8 + 20)] = v20;
    sub_1001D45C0(v10, v16, type metadata accessor for StorageEntry);
    sub_100002A00(a1);
    return sub_1001D46E4(v10, type metadata accessor for StorageEntry);
  }
}

uint64_t sub_1001D15F8()
{
  if (*v0)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1001D1628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
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

uint64_t sub_1001D1700(uint64_t a1)
{
  v2 = sub_1001D77A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001D173C(uint64_t a1)
{
  v2 = sub_1001D77A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1001D17A8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v6 = 0;
  while (v4)
  {
    v7 = v6;
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(v1 + 56) + ((v7 << 10) | (16 * v8)));

    v9(v10);
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void (*sub_1001D18C0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1001D1914;
}

void sub_1001D1914(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1001D17A8();
  }
}

char *InMemoryKeychain.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 2) = &_swiftEmptyDictionarySingleton;
  *(v0 + 3) = &_swiftEmptySetSingleton;
  *(v0 + 4) = 0;
  *(v0 + 5) = &_swiftEmptyDictionarySingleton;
  v1 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  v2 = type metadata accessor for NANIdentityKey(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs] = &_swiftEmptyDictionarySingleton;
  return v0;
}

char *InMemoryKeychain.init()()
{
  *(v0 + 2) = &_swiftEmptyDictionarySingleton;
  *(v0 + 3) = &_swiftEmptySetSingleton;
  *(v0 + 4) = 0;
  *(v0 + 5) = &_swiftEmptyDictionarySingleton;
  v1 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  v2 = type metadata accessor for NANIdentityKey(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs] = &_swiftEmptyDictionarySingleton;
  return v0;
}

uint64_t InMemoryKeychain.monitor(using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_1001B93E4();
  v8 = v7;
  result = swift_endAccess();
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    sub_100080850(sub_1001D7A78, v10, v6, isUniquelyReferenced_nonNull_native);
    *(v3 + 40) = v12;
    swift_endAccess();
    return v6;
  }

  return result;
}

Swift::Void __swiftcall InMemoryKeychain.stopMonitoring(_:)(Swift::UInt64 a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = sub_100085268(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + 40);
    v9 = *(v2 + 40);
    *(v2 + 40) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10019711C();
      v8 = v9;
    }

    sub_1001936F8(v6, v8);
    *(v2 + 40) = v8;
  }

  swift_endAccess();
}

void *InMemoryKeychain.findIdentities(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for StorageEntry(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v18 - v11;
  swift_beginAccess();
  v13 = *(v3 + 16);
  if (*(v13 + 16))
  {

    v14 = sub_10007D1A4(a2, a3);
    if (v15)
    {
      sub_1001D45C0(*(v13 + 56) + *(v8 + 72) * v14, v10, type metadata accessor for StorageEntry);

      sub_1001D6B5C(v10, v12, type metadata accessor for StorageEntry);
      sub_10001CEA8(v12, a1, &qword_10058FEC8, &qword_100493978);
      return *&v12[*(v7 + 20)];
    }
  }

  v17 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  return _swiftEmptyArrayStorage;
}

uint64_t InMemoryKeychain.save(identity:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for StorageEntry(0);
  v9 = *(v8 - 8);
  v27 = v8;
  v28 = v9;
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058FEC8, &qword_100493978);
  __chkstk_darwin();
  v13 = &v27 - v12;
  sub_1001D45C0(a1, &v27 - v12, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
  v14 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 0, 1, v14);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + 16);
  v30 = a3;
  v31 = v17;
  *(v4 + 16) = 0x8000000000000000;
  v29 = a2;
  v19 = sub_10007D1A4(a2, a3);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(a3) = v18;
  if (v17[3] >= v22)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_100196B98();
    v17 = v31;
    goto LABEL_6;
  }

  sub_10018FA54(v22, isUniquelyReferenced_nonNull_native);
  v17 = v31;
  v23 = sub_10007D1A4(v29, v30);
  if ((a3 & 1) != (v24 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v23;
LABEL_6:
  v25 = v28;
  *(v4 + 16) = v17;
  if ((a3 & 1) == 0)
  {
    v15(v11, 1, 1, v14);
    sub_100016290(v11, &qword_10058FEC8, &qword_100493978);
    v15(v11, 1, 1, v14);
    *&v11[*(v27 + 20)] = _swiftEmptyArrayStorage;
    sub_1001A99F0(v19, v29, v30, v11, v17);
  }

  sub_1000B1B78(v13, v17[7] + *(v25 + 72) * v19, &qword_10058FEC8, &qword_100493978);
  swift_endAccess();
  sub_1001D17A8();
  return 1;
}

Swift::Void __swiftcall InMemoryKeychain.removeAllIdentities(for:)(CoreP2P::NANServiceName a1)
{
  object = a1.string._object;
  countAndFlagsBits = a1.string._countAndFlagsBits;
  sub_10005DC58(&unk_10058F740, &unk_100492AB0);
  __chkstk_darwin();
  v4 = &v5 - v3;
  swift_beginAccess();
  sub_10007FC88(countAndFlagsBits, object, v4);
  sub_100016290(v4, &unk_10058F740, &unk_100492AB0);
  swift_endAccess();
  sub_1001D17A8();
}

uint64_t InMemoryKeychain.remove(identity:for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v50 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10005DC58(&qword_10058FF00, &qword_1004939D0);
  __chkstk_darwin();
  v10 = &v48 - v9;
  v11 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
  v58 = *(v11 - 8);
  v59 = v11;
  __chkstk_darwin();
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&unk_10058F740, &unk_100492AB0);
  __chkstk_darwin();
  v14 = &v48 - v13;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v48 - v16;
  __chkstk_darwin();
  v19 = &v48 - v18;
  swift_beginAccess();
  v54 = v3;
  v55 = a2;
  v20 = *(v3 + 16);
  v21 = *(v20 + 16);
  v56 = a3;
  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = sub_10007D1A4(a2, a3);
  if ((v23 & 1) == 0)
  {

LABEL_5:
    v30 = type metadata accessor for StorageEntry(0);
    (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
    goto LABEL_6;
  }

  v24 = v22;
  v53 = v7;
  v25 = *(v20 + 56);
  v26 = type metadata accessor for StorageEntry(0);
  v52 = v19;
  v27 = v26;
  v28 = *(v26 - 8);
  v29 = v25 + *(v28 + 72) * v24;
  v7 = v53;
  sub_1001D45C0(v29, v14, type metadata accessor for StorageEntry);
  v30 = v27;
  v19 = v52;

  (*(v28 + 56))(v14, 0, 1, v30);
LABEL_6:
  type metadata accessor for StorageEntry(0);
  v31 = *(v30 - 8);
  v52 = *(v31 + 48);
  v53 = v30;
  v51 = v31 + 48;
  if ((v52)(v14, 1, v30) || (*(v58 + 48))(v14, 1, v59))
  {
    sub_100016290(v14, &unk_10058F740, &unk_100492AB0);
    v32 = v7[7];
    v32(v19, 1, 1, v6);
    v33 = v7[2];
  }

  else
  {
    v47 = v49;
    sub_1001D45C0(v14, v49, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    sub_100016290(v14, &unk_10058F740, &unk_100492AB0);
    v33 = v7[2];
    v33(v19, v47, v6);
    sub_1001D46E4(v47, type metadata accessor for LongTermPairingKeys.PrivateIdentity);
    v32 = v7[7];
    v32(v19, 0, 1, v6);
  }

  v33(v17, v61, v6);
  v32(v17, 0, 1, v6);
  v34 = *(v60 + 48);
  sub_100012400(v19, v10, &qword_10058F4D0, &qword_100491AB0);
  sub_100012400(v17, &v10[v34], &qword_10058F4D0, &qword_100491AB0);
  v35 = v7;
  v36 = v7[6];
  if (v36(v10, 1, v6) != 1)
  {
    v37 = v57;
    sub_100012400(v10, v57, &qword_10058F4D0, &qword_100491AB0);
    if (v36(&v10[v34], 1, v6) != 1)
    {
      v39 = v50;
      (v35[4])(v50, &v10[v34], v6);
      sub_1001D469C(&qword_100597540, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = v37;
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      v42 = v35[1];
      v42(v39, v6);
      sub_100016290(v17, &qword_10058F4D0, &qword_100491AB0);
      sub_100016290(v19, &qword_10058F4D0, &qword_100491AB0);
      v42(v40, v6);
      result = sub_100016290(v10, &qword_10058F4D0, &qword_100491AB0);
      if ((v41 & 1) == 0)
      {
        return result;
      }

      goto LABEL_16;
    }

    sub_100016290(v17, &qword_10058F4D0, &qword_100491AB0);
    sub_100016290(v19, &qword_10058F4D0, &qword_100491AB0);
    (v35[1])(v37, v6);
    return sub_100016290(v10, &qword_10058FF00, &qword_1004939D0);
  }

  sub_100016290(v17, &qword_10058F4D0, &qword_100491AB0);
  sub_100016290(v19, &qword_10058F4D0, &qword_100491AB0);
  if (v36(&v10[v34], 1, v6) != 1)
  {
    return sub_100016290(v10, &qword_10058FF00, &qword_1004939D0);
  }

  sub_100016290(v10, &qword_10058F4D0, &qword_100491AB0);
LABEL_16:
  v43 = sub_1001D18C0(v63);
  v44 = sub_1001A9658(v62, v55, v56);
  v46 = v45;
  if (!(v52)(v45, 1, v53))
  {
    sub_100016290(v46, &qword_10058FEC8, &qword_100493978);
    (*(v58 + 56))(v46, 1, 1, v59);
  }

  (v44)(v62, 0);
  return (v43)(v63, 0);
}

uint64_t InMemoryKeychain.addIdentityKey(_:)(uint64_t a1)
{
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v4 = &v8 - v3;
  sub_1001D45C0(a1, &v8 - v3, type metadata accessor for NANIdentityKey);
  v5 = type metadata accessor for NANIdentityKey(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  sub_1000B1B78(v4, v1 + v6, &unk_100595C50, &unk_1004AFD20);
  return swift_endAccess();
}

uint64_t InMemoryKeychain.findIdentityKey()@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  return sub_100012400(v1 + v3, a1, &unk_100595C50, &unk_1004AFD20);
}

Swift::Void __swiftcall InMemoryKeychain.deleteIdentityKey()()
{
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v2 = &v5 - v1;
  v3 = type metadata accessor for NANIdentityKey(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  sub_1000B1B78(v2, v0 + v4, &unk_100595C50, &unk_1004AFD20);
  swift_endAccess();
}

uint64_t InMemoryKeychain.installPairedPeer(with:)(uint64_t a1)
{
  sub_10005DC58(&qword_10058BAD0, &qword_100480E18);
  __chkstk_darwin();
  v4 = &v20 - v3;
  type metadata accessor for UUID();
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers;
  swift_beginAccess();
  v12 = *(v1 + v11);

  sub_10019891C(a1, v12);
  v14 = v13;

  if (v14)
  {
    sub_1001D45C0(a1, v10, type metadata accessor for NANPairedDeviceSharedAssociation);
    swift_beginAccess();
    v16 = *(v1 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + v11) = v16;
    v21 = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_100116ACC(0, v16[2] + 1, 1, v16);
      *(v1 + v11) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_100116ACC((v18 > 1), v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    sub_1001D6B5C(v10, v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, type metadata accessor for NANPairedDeviceSharedAssociation);
    *(v1 + v11) = v16;
    swift_endAccess();
    UUID.init()();
    sub_1001D45C0(a1, v4, type metadata accessor for NANPairedDeviceSharedAssociation);
    (*(v8 + 56))(v4, 0, 1, v21);
    swift_beginAccess();
    sub_100072D18(v4, v6);
    return swift_endAccess();
  }

  return result;
}

uint64_t InMemoryKeychain.uninstallPairedPeer(with:)(uint64_t a1)
{
  v2 = v1;
  sub_10005DC58(&qword_10058BAD0, &qword_100480E18);
  __chkstk_darwin();
  v29 = &v27 - v4;
  sub_10005DC58(&unk_1005985B0, &unk_1004939A0);
  __chkstk_darwin();
  v6 = &v27 - v5;
  sub_10005DC58(&qword_10058F4D0, &qword_100491AB0);
  __chkstk_darwin();
  v8 = &v27 - v7;
  v9 = type metadata accessor for UUID();
  v30 = *(v9 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NANPairedDeviceSharedAssociation(0);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers;
  swift_beginAccess();
  v14 = *(v1 + v13);

  v15 = sub_10019891C(a1, v14);
  v17 = v16;

  if ((v17 & 1) == 0)
  {
    swift_beginAccess();
    sub_100199624(v15, v12);
    sub_1001D46E4(v12, type metadata accessor for NANPairedDeviceSharedAssociation);
    swift_endAccess();
    v19 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
    swift_beginAccess();
    v20 = *(v2 + v19);
    __chkstk_darwin();
    *(&v27 - 2) = a1;

    sub_10019BC64(sub_1001D7A5C, (&v27 - 4), v20, v6);

    v21 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
    if ((*(*(v21 - 8) + 48))(v6, 1, v21) == 1)
    {
      sub_100016290(v6, &unk_1005985B0, &unk_1004939A0);
      (*(v30 + 56))(v8, 1, 1, v9);
      return sub_100016290(v8, &qword_10058F4D0, &qword_100491AB0);
    }

    v22 = *(v21 + 48);
    v23 = v30;
    v24 = *(v30 + 32);
    v24(v8, v6, v9);
    (*(v23 + 56))(v8, 0, 1, v9);
    sub_1001D46E4(&v6[v22], type metadata accessor for NANPairedDeviceSharedAssociation);
    if ((*(v23 + 48))(v8, 1, v9) == 1)
    {
      return sub_100016290(v8, &qword_10058F4D0, &qword_100491AB0);
    }

    v25 = v28;
    v24(v28, v8, v9);
    swift_beginAccess();
    v26 = v29;
    sub_1001B91E0(v25, v29);
    sub_100016290(v26, &qword_10058BAD0, &qword_100480E18);
    swift_endAccess();
    return (*(v23 + 8))(v25, v9);
  }

  return result;
}

Swift::Void __swiftcall InMemoryKeychain.uninstallAllPairedPeers()()
{
  v1 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers;
  swift_beginAccess();
  *(v0 + v1) = _swiftEmptyArrayStorage;

  v2 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
  swift_beginAccess();
  *(v0 + v2) = &_swiftEmptyDictionarySingleton;
}

Swift::Void __swiftcall InMemoryKeychain.uninstallAllIdentities()()
{
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers;
  swift_beginAccess();
  *(v0 + v3) = _swiftEmptyArrayStorage;

  v4 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
  swift_beginAccess();
  *(v0 + v4) = &_swiftEmptyDictionarySingleton;

  v5 = type metadata accessor for NANIdentityKey(0);
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  sub_1000B1B78(v2, v0 + v6, &unk_100595C50, &unk_1004AFD20);
  swift_endAccess();
}

double sub_1001D36D8(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t InMemoryKeychain.incrementUsageCount(for:)(uint64_t a1)
{
  sub_10005DC58(&unk_1005985B0, &unk_1004939A0);
  __chkstk_darwin();
  v4 = &v19[-v3];
  sub_10005DC58(&qword_10058BAD0, &qword_100480E18);
  __chkstk_darwin();
  v6 = &v19[-v5];
  v7 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v20 = a1;

  sub_10019BC64(sub_1001AC5B0, v19, v12, v4);

  v13 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  if ((*(*(v13 - 8) + 48))(v4, 1, v13) == 1)
  {
    sub_100016290(v4, &unk_1005985B0, &unk_1004939A0);
    (*(v8 + 56))(v6, 1, 1, v7);
LABEL_4:
    sub_100016290(v6, &qword_10058BAD0, &qword_100480E18);
    return 0;
  }

  sub_1001D6B5C(&v4[*(v13 + 48)], v6, type metadata accessor for NANPairedDeviceSharedAssociation);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 8))(v4, v14);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  sub_1001D6B5C(v6, v10, type metadata accessor for NANPairedDeviceSharedAssociation);
  result = InMemoryKeychain.uninstallPairedPeer(with:)(v10);
  v16 = *(v7 + 32);
  v17 = *&v10[v16];
  v18 = v17 + 1;
  if (v17 == -1)
  {
    __break(1u);
  }

  else
  {
    *&v10[v16] = v18;
    InMemoryKeychain.installPairedPeer(with:)(v10);
    sub_1001D46E4(v10, type metadata accessor for NANPairedDeviceSharedAssociation);
    return v18;
  }

  return result;
}

uint64_t InMemoryKeychain.decrementUsageCount(for:)(uint64_t a1)
{
  sub_10005DC58(&unk_1005985B0, &unk_1004939A0);
  __chkstk_darwin();
  v4 = &v21[-v3];
  sub_10005DC58(&qword_10058BAD0, &qword_100480E18);
  __chkstk_darwin();
  v6 = &v21[-v5];
  v7 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
  swift_beginAccess();
  v12 = *(v1 + v11);
  v22 = a1;

  sub_10019BC64(sub_1001AC5B0, v21, v12, v4);

  v13 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  if ((*(*(v13 - 8) + 48))(v4, 1, v13) == 1)
  {
    sub_100016290(v4, &unk_1005985B0, &unk_1004939A0);
    (*(v8 + 56))(v6, 1, 1, v7);
LABEL_4:
    sub_100016290(v6, &qword_10058BAD0, &qword_100480E18);
    return 0;
  }

  sub_1001D6B5C(&v4[*(v13 + 48)], v6, type metadata accessor for NANPairedDeviceSharedAssociation);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 8))(v4, v14);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_4;
  }

  sub_1001D6B5C(v6, v10, type metadata accessor for NANPairedDeviceSharedAssociation);
  result = InMemoryKeychain.uninstallPairedPeer(with:)(v10);
  v16 = *(v7 + 32);
  v17 = *&v10[v16];
  v18 = v17 != 0;
  v19 = v17 - 1;
  if (v18)
  {
    *&v10[v16] = v19;
    v20 = v19;
    if (v19)
    {
      InMemoryKeychain.installPairedPeer(with:)(v10);
    }

    sub_1001D46E4(v10, type metadata accessor for NANPairedDeviceSharedAssociation);
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *InMemoryKeychain.deinit()
{

  sub_100016290(v0 + OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey, &unk_100595C50, &unk_1004AFD20);

  return v0;
}

uint64_t InMemoryKeychain.__deallocating_deinit()
{

  sub_100016290(v0 + OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey, &unk_100595C50, &unk_1004AFD20);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D3F40(uint64_t a1)
{
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v4 = &v9 - v3;
  v5 = *v1;
  sub_1001D45C0(a1, &v9 - v3, type metadata accessor for NANIdentityKey);
  v6 = type metadata accessor for NANIdentityKey(0);
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  v7 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  sub_1000B1B78(v4, v5 + v7, &unk_100595C50, &unk_1004AFD20);
  return swift_endAccess();
}

uint64_t sub_1001D4068@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  return sub_100012400(v3 + v4, a1, &unk_100595C50, &unk_1004AFD20);
}

uint64_t sub_1001D40DC()
{
  sub_10005DC58(&unk_100595C50, &unk_1004AFD20);
  __chkstk_darwin();
  v2 = &v7 - v1;
  v3 = *v0;
  v4 = type metadata accessor for NANIdentityKey(0);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_myIdentityKey;
  swift_beginAccess();
  sub_1000B1B78(v2, v3 + v5, &unk_100595C50, &unk_1004AFD20);
  return swift_endAccess();
}

uint64_t sub_1001D4228()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeers;
  swift_beginAccess();
  *(v1 + v2) = _swiftEmptyArrayStorage;

  v3 = OBJC_IVAR____TtC7CoreP2P16InMemoryKeychain_pairedPeersWithIDs;
  swift_beginAccess();
  *(v1 + v3) = &_swiftEmptyDictionarySingleton;
}

double sub_1001D42E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();

  return result;
}

void sub_1001D4434(uint64_t a1, uint64_t a2)
{
  sub_10005DC58(&unk_10058F740, &unk_100492AB0);
  __chkstk_darwin();
  v5 = &v6 - v4;
  swift_beginAccess();
  sub_10007FC88(a1, a2, v5);
  sub_100016290(v5, &unk_10058F740, &unk_100492AB0);
  swift_endAccess();
  sub_1001D17A8();
}

uint64_t sub_1001D45C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001D4648()
{
  result = qword_10058FE10;
  if (!qword_10058FE10)
  {
    result = swift_getWitnessTable("Ͷ\v", &type metadata for LongTermPairingKeys.PrivateIdentity.CodingKeys, v0, v1);
    atomic_store(result, &qword_10058FE10);
  }

  return result;
}

uint64_t sub_1001D469C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1001D46E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1001D4744()
{
  v1 = v0;
  sub_10005DC58(qword_100597D50, &unk_10048D5E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1001D4884()
{
  v1 = v0;
  sub_10005DC58(&unk_100597CE0, &qword_10048D610);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1001D49D4()
{
  v1 = v0;
  v2 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  __chkstk_darwin();
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058EC18, &qword_1004B1E90);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 56);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v2 + 72) * (v17 | (v11 << 6));
        sub_1001D45C0(*(v5 + 48) + v20, v4, type metadata accessor for AWDLPeer.AdvertisedService);
        sub_1001D6B5C(v4, *(v7 + 48) + v20, type metadata accessor for AWDLPeer.AdvertisedService);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_16;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v7;
  }
}

void sub_1001D4BE0()
{
  v1 = v0;
  sub_10005DC58(&unk_10059B1A0, &qword_10048D5F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1001D4D20(uint64_t a1)
{
  v3 = *v1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001D4744();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1001D5324(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1001D4E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  v9 = *v2;
  Hasher.init(_seed:)();
  v10 = *(a1 + 8);
  v12 = *(a1 + 24);
  v11 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 41);
  v43 = *(a1 + 16);
  v44 = v10;
  String.lowercased()();
  String.hash(into:)();

  v38 = v11;
  v39 = v12;
  String.lowercased()();
  String.hash(into:)();

  if (v13)
  {
    v15 = 7365749;
  }

  else
  {
    v15 = 7365492;
  }

  String.hash(into:)();

  v36 = v14;
  Hasher._combine(_:)(v14);
  v16 = Hasher._finalize()();
  v45 = v9;
  v17 = -1 << *(v9 + 32);
  v18 = v16 & ~v17;
  v42 = v9 + 56;
  if (((*(v9 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    v30 = 1;
    return (*(v6 + 56))(a2, v30, 1, v5);
  }

  v37 = v15;
  v34 = v5;
  v35 = a2;
  v40 = ~v17;
  v33 = v6;
  v41 = *(v6 + 72);
  while (1)
  {
    v19 = v41 * v18;
    sub_1001D45C0(*(v45 + 48) + v41 * v18, v8, type metadata accessor for AWDLPeer.AdvertisedService);
    v20 = *(v8 + 2);
    v21 = *(v8 + 3);
    v22 = *(v8 + 4);
    v23 = v8[40];
    v24 = v8[41];
    v48 = *(v8 + 1);
    v49 = v20;
    v46 = v44;
    v47 = v43;
    sub_10005E2E4();
    if (StringProtocol.caseInsensitiveCompare<A>(_:)())
    {
      goto LABEL_6;
    }

    v48 = v21;
    v49 = v22;
    v46 = v39;
    v47 = v38;
    if (StringProtocol.caseInsensitiveCompare<A>(_:)())
    {
      goto LABEL_6;
    }

    v25 = v23 ? 7365749 : 7365492;
    if (v25 == v37)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if (v26)
    {
      goto LABEL_16;
    }

LABEL_6:
    sub_1001D46E4(v8, type metadata accessor for AWDLPeer.AdvertisedService);
LABEL_7:
    v18 = (v18 + 1) & v40;
    if (((*(v42 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      v30 = 1;
      a2 = v35;
      v5 = v34;
      v6 = v33;
      return (*(v6 + 56))(a2, v30, 1, v5);
    }
  }

  swift_bridgeObjectRelease_n();
LABEL_16:
  sub_1001D46E4(v8, type metadata accessor for AWDLPeer.AdvertisedService);
  if (v24 != v36)
  {
    goto LABEL_7;
  }

  v27 = v32;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v27;
  v48 = *v27;
  v6 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001D49D4();
    v29 = v48;
  }

  a2 = v35;
  sub_1001D6B5C(*(v29 + 48) + v19, v35, type metadata accessor for AWDLPeer.AdvertisedService);
  sub_1001D54A8(v18);
  v30 = 0;
  *v27 = v48;
  v5 = v34;
  return (*(v6 + 56))(a2, v30, 1, v5);
}

uint64_t sub_1001D5218(unsigned __int8 a1)
{
  v3 = *v1;
  v4 = 1;
  v5 = static Hasher._hash(seed:bytes:count:)();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (*(*(v3 + 48) + v7) != a1)
    {
      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        v9 = 0;
        v4 = 1;
        return v9 | (v4 << 8);
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v1;
    v13 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1001D4BE0();
      v11 = v13;
    }

    v9 = *(*(v11 + 48) + v7);
    sub_1001D57F8(v7);
    v4 = 0;
    *v1 = v13;
  }

  else
  {
    v9 = 0;
  }

  return v9 | (v4 << 8);
}

void sub_1001D5324(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = static Hasher._hash(seed:_:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_1001D54A8(int64_t a1)
{
  v23 = type metadata accessor for AWDLPeer.AdvertisedService(0);
  v3 = *(v23 - 8);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *v1 + 56;
  v8 = -1 << *(*v1 + 32);
  v9 = (a1 + 1) & ~v8;
  if (((1 << v9) & *(v7 + 8 * (v9 >> 6))) != 0)
  {
    v10 = ~v8;

    v11 = _HashTable.previousHole(before:)();
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) != 0)
    {
      v12 = *(v3 + 72);
      v26 = v6;
      v27 = v7;
      v24 = v12;
      v25 = (v11 + 1) & v10;
      do
      {
        v13 = v12 * v9;
        sub_1001D45C0(*(v6 + 48) + v12 * v9, v5, type metadata accessor for AWDLPeer.AdvertisedService);
        Hasher.init(_seed:)();
        v14 = v10;
        v15 = v5[41];
        String.lowercased()();
        String.hash(into:)();

        String.lowercased()();
        String.hash(into:)();

        String.hash(into:)();

        v16 = v15;
        v10 = v14;
        Hasher._combine(_:)(v16);
        v17 = Hasher._finalize()();
        sub_1001D46E4(v5, type metadata accessor for AWDLPeer.AdvertisedService);
        v18 = v17 & v14;
        if (a1 >= v25)
        {
          if (v18 < v25)
          {
            v6 = v26;
            v12 = v24;
            goto LABEL_5;
          }

          v6 = v26;
          v12 = v24;
          if (a1 < v18)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v6 = v26;
          v12 = v24;
          if (v18 < v25 && a1 < v18)
          {
            goto LABEL_5;
          }
        }

        v19 = v12 * a1;
        if (v12 * a1 < v13 || *(v6 + 48) + v12 * a1 >= (*(v6 + 48) + v13 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v9;
        if (v19 != v13)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v9;
        }

LABEL_5:
        v9 = (v9 + 1) & v10;
        v7 = v27;
      }

      while (((*(v27 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
    }

    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(v6 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v22;
    ++*(v6 + 36);
  }
}

void sub_1001D57F8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + v6);
        v12 = static Hasher._hash(seed:bytes:count:)() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

id sub_1001D5980@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_100002B30((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

void sub_1001D59D0(uint64_t a1, char a2, void *a3)
{
  v48 = a3;
  v43 = *(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8);
  __chkstk_darwin();
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v37 - v6;
  v8 = type metadata accessor for UUID();
  v40 = *(v8 - 8);
  __chkstk_darwin();
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
  __chkstk_darwin();
  v44 = &v37 - v12;
  v13 = *(a1 + 16);
  if (v13)
  {
    v42 = *(v10 + 48);
    v14 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v41 = *(v11 + 72);
    v45 = (v40 + 32);
    v38 = (v40 + 8);
    while (1)
    {
      v46 = v13;
      v17 = v44;
      sub_100012400(v14, v44, &qword_10058BAC0, &qword_100480E08);
      v18 = *v45;
      v19 = v47;
      v20 = v8;
      (*v45)(v47, v17, v8);
      v21 = v17 + v42;
      v22 = v7;
      sub_1001D6B5C(v21, v7, type metadata accessor for NANPairedDeviceSharedAssociation);
      v23 = *v48;
      v25 = sub_10002A440(v19);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if ((a2 & 1) == 0)
        {
          sub_100196404();
        }
      }

      else
      {
        sub_10018EA08(v28, a2 & 1);
        v30 = sub_10002A440(v47);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_17;
        }

        v25 = v30;
      }

      v32 = *v48;
      if (v29)
      {
        v15 = *(v43 + 72) * v25;
        v16 = v39;
        sub_1001D45C0(v32[7] + v15, v39, type metadata accessor for NANPairedDeviceSharedAssociation);
        v7 = v22;
        sub_1001D46E4(v22, type metadata accessor for NANPairedDeviceSharedAssociation);
        v8 = v20;
        (*v38)(v47, v20);
        sub_1001D7894(v16, v32[7] + v15, type metadata accessor for NANPairedDeviceSharedAssociation);
      }

      else
      {
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v8 = v20;
        v18(v32[6] + *(v40 + 72) * v25, v47, v20);
        v33 = v32[7] + *(v43 + 72) * v25;
        v7 = v22;
        sub_1001D6B5C(v22, v33, type metadata accessor for NANPairedDeviceSharedAssociation);
        v34 = v32[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_16;
        }

        v32[2] = v36;
      }

      v14 += v41;
      a2 = 1;
      v13 = v46 - 1;
      if (v46 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }
}

uint64_t sub_1001D5E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *name = a1;
      v22 = a2 & 0xFFFFFFFFFFFFFFLL;
      if (qword_10058AA28 != -1)
      {
        swift_once();
      }

      v6 = static OS_dispatch_queue.nan;
      v12 = swift_allocObject();
      swift_weakInit();
      v19 = sub_1001D7918;
      v20 = v12;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1001C5BEC;
      v18 = &unk_100567558;
      v8 = _Block_copy(&aBlock);

      v13 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_notificationToken;
      swift_beginAccess();
      v10 = name;
      v11 = (a3 + v13);
      goto LABEL_10;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
      if (qword_10058AA28 != -1)
      {
        swift_once();
      }

      v6 = static OS_dispatch_queue.nan;
      v7 = swift_allocObject();
      swift_weakInit();
      v19 = sub_1001D7A54;
      v20 = v7;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_1001C5BEC;
      v18 = &unk_100567580;
      v8 = _Block_copy(&aBlock);

      v9 = OBJC_IVAR____TtC7CoreP2P13AppleKeychain_notificationToken;
      swift_beginAccess();
      v10 = (v5 + 32);
      v11 = (a3 + v9);
LABEL_10:
      a3 = notify_register_dispatch(v10, v11, v6, v8);
      swift_endAccess();
      _Block_release(v8);
      return a3;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v23;
  }

  return a3;
}

void sub_1001D60E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_1001E849C(&v44);
  v12 = v44;
  if (!v44)
  {
    goto LABEL_25;
  }

  sub_100085188(v45, v43);
  v13 = *a5;
  v14 = sub_10007CFD0(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_10018F4B4(v19, a4 & 1);
    v14 = sub_10007CFD0(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CFString(0);
    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = v14;
    sub_100196A18();
    v14 = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 32 * v14;
    sub_100002B30(*(*a5 + 56) + 32 * v14, v42);
    sub_100002A00(v43);

    v24 = *(v22 + 56);
    sub_100002A00((v24 + v23));
    sub_100085188(v42, (v24 + v23));
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  *(v26[6] + 8 * v14) = v12;
  sub_100085188(v43, (v26[7] + 32 * v14));
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_1001E849C(&v44);
    v12 = v44;
    if (v44)
    {
      v20 = 1;
      do
      {
        sub_100085188(v45, v43);
        v32 = *a5;
        v33 = sub_10007CFD0(v12);
        v35 = *(v32 + 16);
        v36 = (v34 & 1) == 0;
        v18 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (*(v32 + 24) < v37)
        {
          sub_10018F4B4(v37, 1);
          v33 = sub_10007CFD0(v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 32 * v33;
          sub_100002B30(*(*a5 + 56) + 32 * v33, v42);
          sub_100002A00(v43);

          v31 = *(v29 + 56);
          sub_100002A00((v31 + v30));
          sub_100085188(v42, (v31 + v30));
        }

        else
        {
          v39 = *a5;
          *(*a5 + 8 * (v33 >> 6) + 64) |= 1 << v33;
          *(v39[6] + 8 * v33) = v12;
          sub_100085188(v43, (v39[7] + 32 * v33));
          v40 = v39[2];
          v18 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v39[2] = v41;
        }

        sub_1001E849C(&v44);
        v12 = v44;
      }

      while (v44);
    }

LABEL_25:
    sub_1000E290C(v46);

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t _s7CoreP2P16InMemoryKeychainC4save8identity3for8publiclySbAA19LongTermPairingKeysV14PublicIdentityV_AA14NANServiceNameVSbtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for StorageEntry(0);
  v32 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(type metadata accessor for LongTermPairingKeys.PublicIdentity(0) - 8);
  __chkstk_darwin();
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001D45C0(a1, v12, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v4 + 16);
  v14 = v34;
  *(v4 + 16) = 0x8000000000000000;
  v16 = sub_10007D1A4(a2, a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  if (v14[3] >= v19)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *(v4 + 16) = v14;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100196B98();
      v14 = v34;
      *(v4 + 16) = v34;
      if (v20)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    v23 = type metadata accessor for LongTermPairingKeys.PrivateIdentity(0);
    v24 = *(*(v23 - 8) + 56);
    v31 = a2;
    v24(v10, 1, 1, v23);
    sub_100016290(v10, &qword_10058FEC8, &qword_100493978);
    v24(v10, 1, 1, v23);
    *&v10[*(v8 + 20)] = _swiftEmptyArrayStorage;
    sub_1001A99F0(v16, v31, a3, v10, v14);

    goto LABEL_9;
  }

  sub_10018FA54(v19, isUniquelyReferenced_nonNull_native);
  v14 = v34;
  v21 = sub_10007D1A4(a2, a3);
  if ((v20 & 1) != (v22 & 1))
  {
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v21;
  *(v4 + 16) = v14;
  if ((v20 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  a3 = v14[7] + *(v32 + 72) * v16;
  v8 = *(v8 + 20);
  v14 = *(a3 + v8);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + v8) = v14;
  if ((v25 & 1) == 0)
  {
LABEL_14:
    v14 = sub_100116A7C(0, v14[2] + 1, 1, v14);
    *(a3 + v8) = v14;
  }

  v26 = v33;
  v28 = v14[2];
  v27 = v14[3];
  if (v28 >= v27 >> 1)
  {
    v14 = sub_100116A7C((v27 > 1), v28 + 1, 1, v14);
    *(a3 + v8) = v14;
  }

  v14[2] = v28 + 1;
  sub_1001D6B5C(v12, v14 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v28, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  swift_endAccess();
  sub_1001D17A8();
  return 1;
}

uint64_t sub_1001D67A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v25 = a3 >> 8;
  v26 = a3 >> 16;
  v27 = a3 >> 24;
  v28 = HIDWORD(a3);
  v29 = a3 >> 40;
  v4 = type metadata accessor for SymmetricKey();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = &v25 - v7;
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v8 = v33;
  v9 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
  v11 = v10;
  v36 = v8;
  v34 = &type metadata for Data;
  v35 = &protocol witness table for Data;
  *&v33 = v9;
  *(&v33 + 1) = v10;
  v12 = sub_100029B34(&v33, &type metadata for Data);
  v13 = *v12;
  v14 = v12[1];
  sub_10000AB0C(v8, *(&v8 + 1));
  sub_10000AB0C(v9, v11);
  sub_100178A18(v13, v14, &v36);
  sub_1000124C8(v9, v11);
  sub_1000124C8(v8, *(&v8 + 1));
  sub_100002A00(&v33);
  v33 = v36;
  SymmetricKey.init<A>(data:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1004817D0;
  *(v15 + 32) = v3;
  v16 = v26;
  *(v15 + 33) = v25;
  *(v15 + 34) = v16;
  v17 = v28;
  *(v15 + 35) = v27;
  *(v15 + 36) = v17;
  *(v15 + 37) = v29;
  v18 = sub_10002D874(v15);
  v20 = v19;

  *&v33 = v18;
  *(&v33 + 1) = v20;
  if (qword_10058A9F8 != -1)
  {
    swift_once();
  }

  v36 = xmmword_10058FDF8;
  sub_10000AB0C(xmmword_10058FDF8, *(&xmmword_10058FDF8 + 1));
  static SHA256Digest.byteCount.getter();
  type metadata accessor for SHA256();
  sub_1001D469C(&qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1000BA0A4();
  v21 = v30;
  static HKDF.deriveKey<A, B>(inputKeyMaterial:salt:info:outputByteCount:)();
  sub_1000124C8(v36, *(&v36 + 1));
  sub_1000124C8(v33, *(&v33 + 1));
  v22 = v32;
  v23 = *(v31 + 8);
  v23(v6, v32);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v23(v21, v22);
  return v33;
}

uint64_t sub_1001D6B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001D6BF4()
{
  result = qword_10058FEF0;
  if (!qword_10058FEF0)
  {
    result = swift_getWitnessTable(asc_1004824DC, &type metadata for KeyStorageError, v0, v1);
    atomic_store(result, &qword_10058FEF0);
  }

  return result;
}

BOOL sub_1001D6C84(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_10005DC58(&unk_100597500, &unk_1004939B0);
  return _s7CoreP2P32NANPairedDeviceSharedAssociationV23__derived_struct_equalsySbAC_ACtFZ_0(a1 + *(v4 + 48), v3);
}

uint64_t sub_1001D6D08(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LongTermPairingKeys.PrivateIdentity(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for LongTermPairingKeys.PairedDevices();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1001D6E20(uint64_t a1)
{
  type metadata accessor for LongTermPairingKeys.Identity(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for P256.Signing.PublicKey();
    if (v2 <= 0x3F)
    {
      sub_1001D6F04();
      if (v3 <= 0x3F)
      {
        sub_1001D7038(319, &unk_100590098, &type metadata accessor for Date, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001D6F04()
{
  if (!qword_100599180)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100599180);
    }
  }
}

void sub_1001D6F7C(uint64_t a1)
{
  type metadata accessor for SymmetricKey();
  if (v1 <= 0x3F)
  {
    sub_1001D7038(319, &unk_100590138, type metadata accessor for LongTermPairingKeys.PublicIdentity, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001D7038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1001D70C4(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_1001D71AC(uint64_t a1)
{
  sub_1001D7038(319, &qword_10059A640, type metadata accessor for NANIdentityKey, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001D72B4(uint64_t a1)
{
  sub_1001D7038(319, &qword_100590700, type metadata accessor for LongTermPairingKeys.PrivateIdentity, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1001D7038(319, &unk_100590708, type metadata accessor for LongTermPairingKeys.PublicIdentity, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001D73BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1001D74CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

uint64_t sub_1001D760C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001D76A0()
{
  result = qword_1005907C8;
  if (!qword_1005907C8)
  {
    result = swift_getWitnessTable(asc_100493CDC, &type metadata for LongTermPairingKeys.PrivateIdentity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005907C8);
  }

  return result;
}

unint64_t sub_1001D76F8()
{
  result = qword_1005907D0;
  if (!qword_1005907D0)
  {
    result = swift_getWitnessTable(asc_100493C4C, &type metadata for LongTermPairingKeys.PrivateIdentity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005907D0);
  }

  return result;
}

unint64_t sub_1001D7750()
{
  result = qword_1005907D8;
  if (!qword_1005907D8)
  {
    result = swift_getWitnessTable("͵\v", &type metadata for LongTermPairingKeys.PrivateIdentity.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005907D8);
  }

  return result;
}

unint64_t sub_1001D77A4()
{
  result = qword_1005907E8;
  if (!qword_1005907E8)
  {
    result = swift_getWitnessTable(aQ_7, &type metadata for StorageEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005907E8);
  }

  return result;
}

uint64_t sub_1001D77F8(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = sub_10005DD04(&qword_1005907F8, &qword_100493E28);
    v10 = sub_1001D469C(a2, type metadata accessor for LongTermPairingKeys.PublicIdentity, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001D7894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001D793C()
{
  result = qword_100590870;
  if (!qword_100590870)
  {
    result = swift_getWitnessTable(asc_100493F00, &type metadata for StorageEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_100590870);
  }

  return result;
}

unint64_t sub_1001D7994()
{
  result = qword_100590878;
  if (!qword_100590878)
  {
    result = swift_getWitnessTable(byte_100493E70, &type metadata for StorageEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_100590878);
  }

  return result;
}

unint64_t sub_1001D79EC()
{
  result = qword_100590880;
  if (!qword_100590880)
  {
    result = swift_getWitnessTable(byte_100493E98, &type metadata for StorageEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_100590880);
  }

  return result;
}

uint64_t sub_1001D7A7C()
{
  v0 = type metadata accessor for Logger();
  sub_100068888(v0, qword_100590888);
  sub_100037644(v0, qword_100590888);
  return Logger.init(subsystem:category:)();
}

char *static Sandbox.check()()
{
  result = sub_100477110();
  if ((result & 1) == 0)
  {
    v1 = result;
    if (qword_10058AA00 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100037644(v2, qword_100590888);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      v7 = errno.getter();
      result = strerror(v7);
      if (!result)
      {
        __break(1u);
        return result;
      }

      v8 = String.init(cString:)();
      v10 = sub_100002320(v8, v9, &v11);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v3, v4, "Sandbox check failed with error: %s", v5, 0xCu);
      sub_100002A00(v6);
    }

    return v1;
  }

  return result;
}

uint64_t AWDLElectionMetric.rawValue.getter(uint64_t result)
{
  if ((result & 0x100000000) != 0)
  {
    return *&asc_1004940A8[4 * result];
  }

  return result;
}

unint64_t AWDLElectionMetric.init(from:)(void *a1)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100029B34(v6, v6[3]);
  v3 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v4 = sub_1000395B0(v3);
  sub_100002A00(v6);
  sub_100002A00(a1);
  return v4 | ((HIDWORD(v4) & 1) << 32);
}

uint64_t AWDLElectionMetric.encode(to:)(void *a1, uint64_t a2)
{
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_100031694(v3, v3[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return sub_100002A00(v3);
}

void AWDLElectionMetric.hash(into:)(int a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = *&asc_1004940A8[4 * a2];
  }

  Hasher._combine(_:)(a2);
}

Swift::Int AWDLElectionMetric.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = *&asc_1004940A8[4 * a1];
  }

  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1001D8048()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    v1 = *&asc_1004940A8[4 * v1];
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1001D80A8()
{
  v1 = *v0;
  if (*(v0 + 4) == 1)
  {
    v1 = *&asc_1004940A8[4 * v1];
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1001D80EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    v2 = *&asc_1004940A8[4 * v2];
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_1001D8198(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1 <= 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          return (a2 & 0x100000000) != 0 && a2 == 1;
        }

        else
        {
          return (a2 & 0x100000000) != 0 && a2 == 2;
        }
      }

      else
      {
        return (a2 & 0x100000000) != 0 && !a2;
      }
    }

    else if (a1 > 4)
    {
      if (a1 == 5)
      {
        return (a2 & 0x100000000) != 0 && a2 == 5;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 > 5;
      }
    }

    else if (a1 == 3)
    {
      return (a2 & 0x100000000) != 0 && a2 == 3;
    }

    else
    {
      return (a2 & 0x100000000) != 0 && a2 == 4;
    }
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

BOOL sub_1001D8268(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    LODWORD(a1) = *&asc_1004940A8[4 * a1];
  }

  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(a2) = *&asc_1004940A8[4 * a2];
  }

  return a1 < a2;
}

unint64_t sub_1001D828C()
{
  result = qword_1005908A0;
  if (!qword_1005908A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AWDLElectionMetric, &type metadata for AWDLElectionMetric, v0, v1);
    atomic_store(result, &qword_1005908A0);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for AWDLElectionMetric(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NANAttribute.RangingInformation(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NANAttribute.RangingInformation(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1001D8340(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D835C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

BOOL static AWDLStatistics.LowLatencyStatistics.__derived_struct_equals(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(a1, a2))
  {
    v4 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
    v5 = &a1[*(v4 + 20)];
    v6 = *(v5 + 11);
    v33[10] = *(v5 + 10);
    v33[11] = v6;
    v33[12] = *(v5 + 12);
    v34 = *(v5 + 26);
    v7 = *(v5 + 7);
    v33[6] = *(v5 + 6);
    v33[7] = v7;
    v8 = *(v5 + 9);
    v33[8] = *(v5 + 8);
    v33[9] = v8;
    v9 = *(v5 + 3);
    v33[2] = *(v5 + 2);
    v33[3] = v9;
    v10 = *(v5 + 5);
    v33[4] = *(v5 + 4);
    v33[5] = v10;
    v11 = *(v5 + 1);
    v33[0] = *v5;
    v33[1] = v11;
    v13 = *(v5 + 264);
    v12 = *(v5 + 280);
    v31[2] = *(v5 + 248);
    v31[3] = v13;
    v14 = *(v5 + 232);
    v15 = *(v5 + 344);
    v31[7] = *(v5 + 328);
    v31[8] = v15;
    v16 = *(v5 + 312);
    v31[5] = *(v5 + 296);
    v31[6] = v16;
    v31[4] = v12;
    v31[0] = *(v5 + 216);
    v31[1] = v14;
    v17 = &a2[*(v4 + 20)];
    v18 = *(v17 + 11);
    v35[10] = *(v17 + 10);
    v35[11] = v18;
    v35[12] = *(v17 + 12);
    v36 = *(v17 + 26);
    v19 = *(v17 + 7);
    v35[6] = *(v17 + 6);
    v35[7] = v19;
    v20 = *(v17 + 9);
    v35[8] = *(v17 + 8);
    v35[9] = v20;
    v21 = *(v17 + 3);
    v35[2] = *(v17 + 2);
    v35[3] = v21;
    v22 = *(v17 + 5);
    v35[4] = *(v17 + 4);
    v35[5] = v22;
    v23 = *(v17 + 1);
    v35[0] = *v17;
    v35[1] = v23;
    v24 = *(v17 + 296);
    v25 = *(v17 + 328);
    v26 = *(v17 + 344);
    v32[6] = *(v17 + 312);
    v32[7] = v25;
    v32[8] = v26;
    v27 = *(v17 + 264);
    v28 = *(v17 + 280);
    v32[2] = *(v17 + 248);
    v32[3] = v27;
    v29 = *(v17 + 232);
    v32[4] = v28;
    v32[5] = v24;
    v32[0] = *(v17 + 216);
    v32[1] = v29;
    if (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV6CountsV23__derived_struct_equalsySbAI_AItFZ_0(v33, v35) && (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV10HistogramsV23__derived_struct_equalsySbAI_AItFZ_0(v31, v32) & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

void *AWDLStatistics.ServiceRejection.eventPayload.getter(uint64_t a1, uint64_t a2)
{
  v10 = &_swiftEmptyDictionarySingleton;
  v9 = &type metadata for String;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v2;
  sub_1000731DC(&v7, 0);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = &type metadata for String;
  v7 = v3;
  v8 = v4;
  sub_1000731DC(&v7, 1);
  v5 = sub_1001D85F8(v10);

  return v5;
}

void *sub_1001D85F8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v28);
    LOBYTE(v27) = v12;
    sub_100012400(&v27, v26, &qword_100590BB0, &qword_100494948);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      v13 = 0x6553657669746361;
      if (v12)
      {
        v13 = 0x64657463656A6572;
      }

      v24 = v13;
      v14 = 0xED00006563697672;
      if (v12)
      {
        v14 = 0xEF65636976726553;
      }

      v23 = v14;
      sub_100016290(&v27, &qword_100590BB0, &qword_100494948);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v16 = v8[2];
      v15 = v8[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = sub_100117A50((v15 > 1), v16 + 1, 1, v8);
        v17 = v16 + 1;
        v8 = v19;
      }

      v8[2] = v17;
      v18 = &v8[3 * v16];
      v18[4] = v24;
      v18[5] = v23;
      v18[6] = v25;
    }

    else
    {
      sub_100016290(&v27, &qword_100590BB0, &qword_100494948);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = &_swiftEmptyDictionarySingleton;
  }

  v27 = v20;

  sub_100236478(v21, 1, &v27);

  return v27;
}

void *sub_1001D88C0(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v27);
    LOBYTE(v26) = v12;
    sub_100012400(&v26, v25, &qword_100590BA8, &qword_100494940);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      if (v12 <= 2)
      {
        if (v12)
        {
          if (v12 == 1)
          {
            v23 = 0xE700000000000000;
            v13 = 0x6172666E49796DLL;
          }

          else
          {
            v23 = 0xE900000000000061;
            v13 = 0x72666E4972656570;
          }
        }

        else
        {
          v23 = 0xE700000000000000;
          v13 = 0x65636976726573;
        }
      }

      else if (v12 > 4)
      {
        if (v12 == 5)
        {
          v22 = 0xD000000000000011;
          v23 = 0x80000001004B5FF0;
          goto LABEL_24;
        }

        v23 = 0xE800000000000000;
        v13 = 0x44495353656D6173;
      }

      else if (v12 == 3)
      {
        v23 = 0xE500000000000000;
        v13 = 0x424453796DLL;
      }

      else
      {
        v23 = 0xE700000000000000;
        v13 = 0x42445372656570;
      }

      v22 = v13;
LABEL_24:
      sub_100016290(&v26, &qword_100590BA8, &qword_100494940);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v15 = v8[2];
      v14 = v8[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = sub_100117A50((v14 > 1), v15 + 1, 1, v8);
        v16 = v15 + 1;
        v8 = v18;
      }

      v8[2] = v16;
      v17 = &v8[3 * v15];
      v17[4] = v22;
      v17[5] = v23;
      v17[6] = v24;
    }

    else
    {
      sub_100016290(&v26, &qword_100590BA8, &qword_100494940);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = &_swiftEmptyDictionarySingleton;
  }

  v26 = v19;

  sub_100236478(v20, 1, &v26);

  return v26;
}

void *sub_1001D8C38(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v27);
    LOBYTE(v26) = v12;
    sub_100012400(&v26, v25, &qword_100590BA0, &qword_100494938);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      if (v12)
      {
        if (v12 == 1)
        {
          v22 = 0x616974696E497369;
          v23 = 0xEB00000000726F74;
          goto LABEL_16;
        }

        v23 = 0xE800000000000000;
        v13 = 0x6E6F697461727564;
      }

      else
      {
        v23 = 0xE700000000000000;
        v13 = 0x65636976726573;
      }

      v22 = v13;
LABEL_16:
      sub_100016290(&v26, &qword_100590BA0, &qword_100494938);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v15 = v8[2];
      v14 = v8[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v18 = sub_100117A50((v14 > 1), v15 + 1, 1, v8);
        v16 = v15 + 1;
        v8 = v18;
      }

      v8[2] = v16;
      v17 = &v8[3 * v15];
      v17[4] = v22;
      v17[5] = v23;
      v17[6] = v24;
    }

    else
    {
      sub_100016290(&v26, &qword_100590BA0, &qword_100494938);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v19 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v19 = &_swiftEmptyDictionarySingleton;
  }

  v26 = v19;

  sub_100236478(v20, 1, &v26);

  return v26;
}

void *sub_1001D8F1C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v28);
    LOBYTE(v27) = v12;
    sub_100012400(&v27, v26, &qword_100590B98, &qword_100494930);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      v13 = 0x65636976726573;
      if (v12)
      {
        v13 = 0x6E6F73616572;
      }

      v24 = v13;
      v14 = 0xE700000000000000;
      if (v12)
      {
        v14 = 0xE600000000000000;
      }

      v23 = v14;
      sub_100016290(&v27, &qword_100590B98, &qword_100494930);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v16 = v8[2];
      v15 = v8[3];
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = sub_100117A50((v15 > 1), v16 + 1, 1, v8);
        v17 = v16 + 1;
        v8 = v19;
      }

      v8[2] = v17;
      v18 = &v8[3 * v16];
      v18[4] = v24;
      v18[5] = v23;
      v18[6] = v25;
    }

    else
    {
      sub_100016290(&v27, &qword_100590B98, &qword_100494930);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v20 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v20 = &_swiftEmptyDictionarySingleton;
  }

  v27 = v20;

  sub_100236478(v21, 1, &v27);

  return v27;
}

void *sub_1001D91C8(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = *(*(a1 + 48) + v11);
    sub_100002B30(*(a1 + 56) + 32 * v11, &v29);
    LOBYTE(v28) = v12;
    sub_100012400(&v28, v27, &qword_100590B88, &qword_100494920);
    sub_1000840B4();
    if (swift_dynamicCast())
    {
      v13 = 0x73657479427874;
      v14 = 0xE700000000000000;
      switch(v12)
      {
        case 1:
          v13 = 0x73657479427872;
          break;
        case 2:
          v14 = 0xED00006E6F697461;
          v13 = 0x7275446C61746F74;
          break;
        case 3:
          v13 = 0xD000000000000012;
          v14 = 0x80000001004B5790;
          break;
        case 4:
          v13 = 0xD000000000000012;
          v14 = 0x80000001004B57B0;
          break;
        case 5:
          v13 = 0xD000000000000011;
          v14 = 0x80000001004B57D0;
          break;
        case 6:
          v14 = 0xEE00746E756F4372;
          v13 = 0x6565506C61746F74;
          break;
        case 7:
          v13 = 0xD000000000000011;
          v14 = 0x80000001004B53D0;
          break;
        case 8:
          v13 = 0xD00000000000001DLL;
          v14 = 0x80000001004B5800;
          break;
        case 9:
          v13 = 0xD000000000000018;
          v14 = 0x80000001004B5820;
          break;
        case 10:
          v14 = 0xEF746E756F436465;
          v13 = 0x6C62616E45667370;
          break;
        case 11:
          v14 = 0xEB000000006E6F69;
          v13 = 0x737265566C647761;
          break;
        case 12:
          v13 = 0xD000000000000016;
          v14 = 0x80000001004B5400;
          break;
        case 13:
          v13 = 0xD000000000000010;
          v14 = 0x80000001004B5440;
          break;
        case 14:
          v13 = 0xD000000000000015;
          v14 = 0x80000001004B5850;
          break;
        case 15:
          v13 = 0xD000000000000010;
          v14 = 0x80000001004B54A0;
          break;
        case 16:
          v13 = 0xD000000000000015;
          v14 = 0x80000001004B5870;
          break;
        case 17:
          v14 = 0xEE006D726F667461;
          v13 = 0x6C507265646E6573;
          break;
        case 18:
          v14 = 0xEC00000049535352;
          v13 = 0x676E697472617473;
          break;
        case 19:
          v14 = 0xEB0000000065646FLL;
          v13 = 0x4D6F727465526E69;
          break;
        case 20:
          v14 = 0xEF6C656E6E616843;
          v13 = 0x7366446F54617363;
          break;
        case 21:
          v13 = 0xD000000000000011;
          v14 = 0x80000001004B58C0;
          break;
        case 22:
          v14 = 0xEC00000065646F4DLL;
          v13 = 0x79786F7250736664;
          break;
        case 23:
          v15 = 1718379891;
          goto LABEL_37;
        case 24:
          v15 = 1919247728;
LABEL_37:
          v13 = v15 | 0x4453734900000000;
          v14 = 0xE900000000000042;
          break;
        case 25:
          v13 = 0xD000000000000013;
          v14 = 0x80000001004B5900;
          break;
        case 26:
          v13 = 0xD000000000000015;
          v14 = 0x80000001004B5920;
          break;
        case 27:
          v13 = 0xD000000000000015;
          v14 = 0x80000001004B5940;
          break;
        case 28:
          v13 = 0xD000000000000017;
          v14 = 0x80000001004B5620;
          break;
        case 29:
          v13 = 0xD000000000000015;
          v14 = 0x80000001004B5960;
          break;
        default:
          break;
      }

      v24 = v14;
      v25 = v13;
      sub_100016290(&v28, &qword_100590B88, &qword_100494920);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v17 = v8[2];
      v16 = v8[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100117A50((v16 > 1), v17 + 1, 1, v8);
        v18 = v17 + 1;
        v8 = v20;
      }

      v8[2] = v18;
      v19 = &v8[3 * v17];
      v19[4] = v25;
      v19[5] = v24;
      v19[6] = v26;
    }

    else
    {
      sub_100016290(&v28, &qword_100590B88, &qword_100494920);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = &_swiftEmptyDictionarySingleton;
  }

  v28 = v21;

  sub_100236478(v22, 1, &v28);

  return v28;
}
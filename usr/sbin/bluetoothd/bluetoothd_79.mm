_BYTE *sub_10059AE28()
{
  if (qword_100B508F0 != -1)
  {
    sub_1008477A0();
  }

  sub_10056E398(off_100B508E8);
  if (qword_100B508D0 != -1)
  {
    sub_1008477B4();
  }

  sub_1007984B8(off_100B508C8);
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  if (*(off_100B50A98 + 60) == 1)
  {
    v3 = 0;
    sub_1000216B4(&v3);
    sub_10019919C();
    v0 = sub_100017E6C();
    (*(*v0 + 64))(v0);
    return sub_10002249C(&v3);
  }

  else
  {
    sub_10019919C();
    v2 = *(*sub_100017E6C() + 64);

    return v2();
  }
}

uint64_t sub_10059AF5C(uint64_t a1)
{
  v1 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "Oct 23 2025";
    *&buf[12] = 2082;
    *v258 = "06:55:44";
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Starting bluetooth core stack (BUILD %{public}s %{public}s)", buf, 0x16u);
  }

  v256[0] = 0;
  v256[1] = 0;
  sub_100007F88(v256, a1 + 240);
  *(a1 + 308) = 0;
  *(a1 + 304) = 0;
  if (*(a1 + 335) < 0)
  {
    **(a1 + 312) = 0;
    *(a1 + 320) = 0;
  }

  else
  {
    *(a1 + 312) = 0;
    *(a1 + 335) = 0;
  }

  *(a1 + 572) = 0;
  sub_10000801C(v256);
  __p[0] = 0;
  __p[1] = 0;
  v255 = 0;
  v2 = sub_100017E6C();
  sub_1004F0F04(v2 + 224, a1 + 8);
  v3 = sub_100017E6C();
  v4 = (*(*v3 + 24))(v3, __p);
  if (!v4)
  {
    if (v255 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    v4 = strlcpy(aIos_0, v6, 0x82uLL);
  }

  v7 = sub_10000C798(v4, v5);
  v8 = (*(*v7 + 56))(v7, 256);
  if (v8)
  {
    v10 = sub_100017E6C();
    sub_1005AAE0C(v10 + 264, a1 + 24);
  }

  v11 = sub_10000C798(v8, v9);
  if ((*(*v11 + 56))(v11, 0x40000))
  {
    v12 = sub_100017E6C();
    sub_1005AB0AC(v12 + 704, a1 + 40);
  }

  v253 = sub_10059D068;
  sub_10022DED8(&v253, a1);
  v252 = 0;
  v13 = sub_10000E92C();
  sub_100007E30(buf, "Stack");
  sub_100007E30(v262, "force1M");
  v14 = (*(*v13 + 72))(v13, buf, v262, &v252);
  v15 = v252;
  if (v265 < 0)
  {
    operator delete(*v262);
  }

  v16 = v14 & v15;
  if ((v258[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v236 = v16;
  if (v16)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008477C8();
    }

    sub_10024E3FC();
  }

  v251 = 0;
  v17 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v262, "enableLELRInSetDefaultPhy");
  v18 = (*(*v17 + 72))(v17, buf, v262, &v251);
  if (v265 < 0)
  {
    operator delete(*v262);
  }

  if ((v258[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v18)
    {
      goto LABEL_32;
    }
  }

  else if (!v18)
  {
    goto LABEL_32;
  }

  v19 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v251;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "LELR for testing enableLELR=%d", buf, 8u);
  }

  v236 = 1;
LABEL_32:
  sub_10024E418(v251);
  v250 = 0;
  v20 = sub_10000E92C();
  sub_100007E30(buf, "Stack");
  sub_100007E30(v262, "disableConnUpdateWAR");
  v21 = (*(*v20 + 72))(v20, buf, v262, &v250);
  v22 = v250;
  if (v265 < 0)
  {
    operator delete(*v262);
  }

  v23 = v21 & v22;
  if ((v258[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v23)
    {
      goto LABEL_41;
    }
  }

  else if (!v23)
  {
    goto LABEL_41;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100847804();
  }

  v236 = 1;
LABEL_41:
  v249 = 0;
  v24 = sub_10000E92C();
  sub_100007E30(buf, "Stack");
  sub_100007E30(v262, "disableWriteCODWAR");
  v25 = (*(*v24 + 72))(v24, buf, v262, &v249);
  v26 = v249;
  if (v265 < 0)
  {
    operator delete(*v262);
  }

  v27 = v25 & v26;
  if ((v258[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v27)
    {
      goto LABEL_50;
    }
  }

  else if (!v27)
  {
    goto LABEL_50;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100847840();
  }

  v236 = 1;
LABEL_50:
  v28 = sub_10000E92C();
  v29 = (*(*v28 + 664))(v28);
  *(a1 + 234) = v29;
  if ((v29 & 1) == 0 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10084787C();
  }

  v248 = 0;
  v30 = sub_10000E92C();
  sub_100007E30(buf, "Stack");
  sub_100007E30(v262, "disableClassicSecureConnections");
  v31 = (*(*v30 + 72))(v30, buf, v262, &v248);
  v32 = v248;
  if (v265 < 0)
  {
    operator delete(*v262);
  }

  v33 = v31 & v32;
  if ((v258[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v33)
    {
      goto LABEL_62;
    }
  }

  else if (!v33)
  {
    goto LABEL_62;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008478B8();
  }

  v236 = 1;
LABEL_62:
  sub_1002FD248(v248);
  v34 = sub_100257948(sub_10059D104);
  v36 = sub_10000C7D0(v34, v35);
  if (*(v36 + 800) >> 3 >= 0x271u && (v36 = sub_10000C7D0(v36, v37), *(v36 + 800) >> 4 < 0x177u) || (v38 = sub_10000C7D0(v36, v37), *(v38 + 800) >= 0xFA0u) && (v38 = sub_10000C7D0(v38, v39), *(v38 + 800) >> 3 <= 0x270u))
  {
    v38 = sub_100257954(sub_10059D1A0);
  }

  v40 = sub_10000C7D0(v38, v39);
  v41 = sub_1004106D0(v40, 0xBB8u);
  if (v41)
  {
    v41 = sub_100257954(sub_10059D1A0);
  }

  v43 = sub_10000C798(v41, v42);
  v44 = (*(*v43 + 600))(v43);
  v235 = v44;
  v46 = sub_10000C798(v44, v45);
  v47 = (*(*v46 + 520))(v46);
  v237 = v47;
  v49 = sub_10000C798(v47, v48);
  v50 = (*(*v49 + 608))(v49);
  v52 = sub_10000C798(v50, v51);
  v53 = (*(*v52 + 616))(v52);
  v55 = sub_10000C798(v53, v54);
  v56 = (*(*v55 + 624))(v55);
  v234 = v56;
  v58 = sub_10000C798(v56, v57);
  v59 = (*(*v58 + 632))(v58);
  v233 = v59;
  v61 = sub_10000C798(v59, v60);
  v62 = (*(*v61 + 648))(v61);
  v64 = sub_10000C798(v62, v63);
  v65 = (*(*v64 + 656))(v64);
  v67 = sub_10000C798(v65, v66);
  v68 = (*(*v67 + 680))(v67);
  v69 = v68;
  v71 = sub_10000C798(v68, v70);
  v72 = (*(*v71 + 720))(v71);
  v74 = sub_10000C798(v72, v73);
  v75 = (*(*v74 + 688))(v74);
  v76 = v75;
  v78 = sub_10000C798(v75, v77);
  v79 = (*(*v78 + 528))(v78);
  v231 = v76;
  v232 = v69;
  v80 = qword_100BCE8D8;
  v81 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v81)
  {
    *buf = 67109120;
    *&buf[4] = v79;
    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "initCoreStack enablePeriodicAdvertisingAdv=%d", buf, 8u);
  }

  v83 = sub_10000C798(v81, v82);
  v84 = (*(*v83 + 536))(v83);
  v230 = v79;
  v85 = qword_100BCE8D8;
  v86 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v86)
  {
    *buf = 67109120;
    *&buf[4] = v84;
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "initCoreStack enablePeriodicAdvertisingSync=%d", buf, 8u);
  }

  v88 = sub_10000C798(v86, v87);
  v89 = (*(*v88 + 544))(v88);
  v90 = qword_100BCE8D8;
  v91 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v91)
  {
    *buf = 67109120;
    *&buf[4] = v89;
    _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "initCoreStack enablePeriodidAdvSyncTranSender=%d", buf, 8u);
  }

  v93 = sub_10000C798(v91, v92);
  v94 = (*(*v93 + 552))(v93);
  v95 = qword_100BCE8D8;
  v96 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v96)
  {
    *buf = 67109120;
    *&buf[4] = v94;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "initCoreStack enablePeriodidAdvSyncTranRecipient=%d", buf, 8u);
  }

  v98 = sub_10000C798(v96, v97);
  v99 = (*(*v98 + 792))(v98);
  v100 = v99;
  v102 = sub_10000C798(v99, v101);
  v103 = (*(*v102 + 800))(v102);
  v104 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v103;
    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "enable ABC logs for Magnet Timer: %d", buf, 8u);
  }

  if (qword_100B512C8 != -1)
  {
    sub_1008478F4();
  }

  v105 = sub_10057BA7C(off_100B512C0, v103);
  if (v237)
  {
    v105 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
    if (v105)
    {
      sub_10084791C();
    }

    v235 = 1;
  }

  v107 = v50;
  v108 = sub_10000C7D0(v105, v106);
  v109 = (*(*v108 + 3208))(v108);
  v110 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v111 = "does not support";
    if (v109)
    {
      v111 = "supports";
    }

    *buf = 136315138;
    *&buf[4] = v111;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "This platform %s address rotation while scanning or connecting", buf, 0xCu);
    v110 = qword_100BCE8D8;
  }

  v112 = os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT);
  if (v112)
  {
    v114 = "does not support";
    if (v100)
    {
      v114 = "supports";
    }

    *buf = 136315138;
    *&buf[4] = v114;
    _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "This platform %s rssi connection statistics and detection", buf, 0xCu);
  }

  v115 = sub_10000C798(v112, v113);
  v116 = (*(*v115 + 872))(v115);
  sub_1002B2C0C(v237);
  sub_1002B2C00(v235);
  sub_1002C3D80(v53);
  sub_1002C3D8C(v234);
  v117 = v65 | v50;
  sub_1002D9D00((v65 | v107) & 1);
  sub_1002D9D58(v233);
  sub_1002D9D64(v62);
  sub_1002D9D70(v65);
  sub_1002D9D84(v232);
  v118 = sub_1002D9D90(v231);
  v120 = sub_10000C7D0(v118, v119);
  v121 = (*(*v120 + 3912))(v120);
  v122 = v121;
  sub_1002B2C28(v121);
  nullsub_21();
  sub_1002D9E40(v72);
  nullsub_21();
  sub_1002D2D3C(v109);
  sub_1002B4218(v230);
  v123 = sub_1001B8B64(v84);
  v125 = sub_10000C7D0(v123, v124);
  v126 = (*(*v125 + 4104))(v125);
  v127 = v126;
  v129 = sub_10000C7D0(v126, v128);
  v130 = (*(*v129 + 4096))(v129);
  sub_1002C4048(v130, v127);
  sub_1002D9D9C(v116);
  v131 = qword_100BCE8D8;
  v132 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v132)
  {
    *buf = 67110400;
    *&buf[4] = v235;
    *&buf[8] = 1024;
    *&buf[10] = v237;
    *v258 = 1024;
    *&v258[2] = v117 & 1;
    *&v258[6] = 1024;
    *&v258[8] = v233;
    *&v258[12] = 1024;
    v259 = v122;
    v260 = 1024;
    v261 = v234;
    _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "enableBTSpecAdvertisingSets=%d enableExtendedAdvertising=%d enableExtendedScanning=%d enableExtendedScanHCI=%d maxAdvHandles=%d enableEnhancedConnectionsV2=%d", buf, 0x26u);
  }

  v134 = sub_10000C7D0(v132, v133);
  if ((*(*v134 + 3264))(v134))
  {
    v135 = 16;
  }

  else
  {
    v135 = 8;
  }

  v136 = sub_1002D3628(v135);
  v138 = sub_10000C7D0(v136, v137);
  if (*(v138 + 800))
  {
    v140 = sub_10000C7D0(v138, v139);
    v138 = sub_100413098(v140);
    if (v138)
    {
      goto LABEL_118;
    }
  }

  v141 = sub_10000C7D0(v138, v139);
  if (*(v141 + 800) == 6000)
  {
    v143 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "initCoreStack";
      _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "%s: register BTVirtualController callbacks", buf, 0xCu);
    }

    if (qword_100B54A88 != -1)
    {
      sub_100847958();
    }

    v141 = sub_1007F2384();
  }

  v144 = sub_10000C7D0(v141, v142);
  if ((*(v144 + 800) >> 3 < 0x271u || (v144 = sub_10000C7D0(v144, v145), *(v144 + 800) >> 4 >= 0x177u)) && ((v146 = sub_10000C7D0(v144, v145), *(v146 + 800) < 0xFA0u) || (v146 = sub_10000C7D0(v146, v147), *(v146 + 800) >> 3 >= 0x271u)) && ((v148 = sub_10000C7D0(v146, v147), *(v148 + 800) < 0x7D0u) || (v150 = sub_10000C7D0(v148, v149), *(v150 + 800) > 0xF9Fu) || *(sub_10000C7D0(v150, v151) + 800) < 0xBB8u))
  {
    v152 = sub_1001B2A50(1, sub_10059D22C, 0);
  }

  else
  {
    v152 = sub_1001B2A50(1, sub_10059D22C, sub_10059D258);
  }

  if (v152)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847980();
    }

LABEL_118:
    v153 = 110;
    goto LABEL_211;
  }

  v247 = 0;
  v154 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(v262, "overridePrivateAddressRotationInterval");
  v155 = (*(*v154 + 88))(v154, buf, v262, &v247);
  if (v265 < 0)
  {
    operator delete(*v262);
  }

  if ((v258[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v155)
    {
      goto LABEL_128;
    }
  }

  else if (!v155)
  {
    goto LABEL_128;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008479F0();
  }

  sub_1002D2D1C(v247);
LABEL_128:
  v156 = sub_10000E92C();
  if (!(*(*v156 + 8))(v156))
  {
    goto LABEL_150;
  }

  v243 = 0;
  v157 = sub_10000E92C();
  sub_100007E30(buf, "FastR1ScanInterval");
  sub_100007E30(v262, "interval");
  v158 = (*(*v157 + 88))(v157, buf, v262, &v243);
  if (v265 < 0)
  {
    operator delete(*v262);
  }

  if ((v258[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v158)
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

  if (v158)
  {
LABEL_135:
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100242F18(v243);
    sub_10002249C(buf);
  }

LABEL_136:
  v246 = 0;
  v159 = sub_10000E92C();
  sub_100007E30(buf, "FastR1ScanType");
  sub_100007E30(v262, "scanType");
  v160 = (*(*v159 + 88))(v159, buf, v262, &v246);
  if (v265 < 0)
  {
    operator delete(*v262);
  }

  if ((v258[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v160)
    {
      goto LABEL_143;
    }

    goto LABEL_142;
  }

  if (v160)
  {
LABEL_142:
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100242F24(v246);
    sub_10002249C(buf);
  }

LABEL_143:
  v245 = 0;
  v161 = sub_10000E92C();
  sub_100007E30(buf, "MediumR1ScanInterval");
  sub_100007E30(v262, "interval");
  v162 = (*(*v161 + 88))(v161, buf, v262, &v245);
  if (v265 < 0)
  {
    operator delete(*v262);
  }

  if ((v258[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (!v162)
    {
      goto LABEL_150;
    }

    goto LABEL_149;
  }

  if (v162)
  {
LABEL_149:
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100242F30(v245);
    sub_10002249C(buf);
  }

LABEL_150:
  dword_100BCE7A8 = 0;
  byte_100BCE7AD = 0;
  v244 = 0;
  v243 = 0;
  LOBYTE(v246) = 0;
  sub_1000216B4(&v246);
  v163 = sub_100243324(&v243);
  sub_100022214(&v246);
  if (v163)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847A68();
    }

    sub_10059D2E4(a1);
  }

  else
  {
    sub_1000618AC(&v246);
    v166 = sub_10000C798(v164, v165);
    v167 = (*(*v166 + 192))(v166);
    sub_100191DC0(v167);
    sub_100022214(&v246);
    sub_100007FB8(v256);
    v168 = (a1 + 312);
    *(a1 + 304) = v243;
    *(a1 + 308) = v244;
    std::string::assign((a1 + 312), aIos_0);
    v169 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v170 = (a1 + 312);
      if (*(a1 + 335) < 0)
      {
        v170 = *v168;
      }

      *buf = 136315650;
      *&buf[4] = v170;
      *&buf[12] = 1040;
      *v258 = 6;
      *&v258[4] = 2096;
      *&v258[6] = a1 + 304;
      _os_log_impl(&_mh_execute_header, v169, OS_LOG_TYPE_DEFAULT, "statedump: Local device is %s (%{bluetooth:BD_ADDR}.6P)", buf, 0x1Cu);
    }

    v171 = qword_100BCE9D8;
    if (os_log_type_enabled(qword_100BCE9D8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 335) < 0)
      {
        v168 = *v168;
      }

      sub_1000BE6F8((a1 + 304), buf);
      if (v258[9] >= 0)
      {
        v172 = buf;
      }

      else
      {
        v172 = *buf;
      }

      *v262 = 136315394;
      *&v262[4] = v168;
      v263 = 2080;
      v264 = v172;
      _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "Init Core Stack - {localname: %s, local-addr: %s}", v262, 0x16u);
      if ((v258[9] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    sub_10000801C(v256);
    sub_1000618AC(&v246);
    sub_10000C7D0(v173, v174);
    v175 = sub_100413208();
    v177 = sub_10000C7D0(v175, v176);
    if (*(v177 + 800) >= 0x7D0u)
    {
      v177 = sub_10000C7D0(v177, v178);
      if (*(v177 + 800) <= 0xF9Fu)
      {
        sub_10000C7D0(v177, v178);
        v177 = sub_100413134();
      }
    }

    v179 = sub_10000C7D0(v177, v178);
    v181 = *(v179 + 800) && *(sub_10000C7D0(v179, v180) + 800) < 0x7D0u;
    sub_1002582A8(v181);
    sub_100022214(&v246);
    *(a1 + 352) = 0u;
    *(a1 + 368) = 0u;
    *(a1 + 336) = 0u;
    *(a1 + 336) = sub_10009BB08();
    *(a1 + 338) = sub_10009BAE4();
    *(a1 + 340) = sub_1004BF974();
    *(a1 + 342) = 1;
    *(a1 + 344) = sub_10000C240();
    *(a1 + 360) = 0;
    *(a1 + 368) = aPnpInformation;
    *(a1 + 376) = 0;
    *(a1 + 348) = 10495684;
    *(a1 + 346) = 1;
    *(a1 + 352) = 0x7D0C0D00000000;
    sub_1000618AC(&v246);
    v182 = sub_10009BB08();
    v183 = getpid();
    v184 = sub_1004BF974();
    v185 = v184;
    v187 = sub_10000C7D0(v184, v186);
    v188 = sub_100199494(v182, v183, v185, *(v187 + 800));
    v190 = sub_10000C798(v188, v189);
    v191 = (*(*v190 + 80))(v190);
    sub_100199844(v191);
    sub_100022214(&v246);
    LOBYTE(v245) = 0;
    v242 = 0;
    v192 = sub_10000E92C();
    v193 = (*(*v192 + 8))(v192);
    if (v193)
    {
      v195 = sub_10000E92C();
      sub_100007E30(buf, "FastConnect");
      sub_100007E30(v262, "DisableFastConnect");
      (*(*v195 + 72))(v195, buf, v262, &v245);
      if (v265 < 0)
      {
        operator delete(*v262);
      }

      if ((v258[9] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v196 = sub_10000E92C();
      sub_100007E30(buf, "FastConnect");
      sub_100007E30(v262, "DisableFastConnectAll");
      v193 = (*(*v196 + 72))(v196, buf, v262, &v242);
      if (v265 < 0)
      {
        operator delete(*v262);
      }

      if ((v258[9] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v245 == 1)
      {
        *(a1 + 348) &= ~0x200000u;
      }

      if (v242 == 1)
      {
        *(a1 + 356) &= ~0x40000u;
      }
    }

    v197 = sub_10000C798(v193, v194);
    if (((*(*v197 + 840))(v197, 11) & 1) == 0)
    {
      *(a1 + 356) &= ~0x800u;
    }

    v198 = _os_feature_enabled_impl();
    if ((v198 & 1) == 0)
    {
      *(a1 + 356) &= ~0x400u;
    }

    v200 = sub_10000C7D0(v198, v199);
    v201 = sub_1000E01B4(v200, 1);
    if ((v201 & 1) == 0)
    {
      *(a1 + 356) &= ~0x10000u;
    }

    sub_10000C7D0(v201, v202);
    if (sub_1004107F0())
    {
      *(a1 + 356) |= 0x20000u;
    }

    v203 = _os_feature_enabled_impl();
    if ((v203 & 1) == 0)
    {
      *(a1 + 356) &= ~0x80000u;
    }

    v205 = sub_10000C798(v203, v204);
    v206 = (*(*v205 + 248))(v205);
    if ((v206 & 1) == 0)
    {
      *(a1 + 356) &= ~0x100000u;
    }

    v208 = sub_10000C7D0(v206, v207);
    v209 = (*(*v208 + 2888))(v208);
    if ((v209 & 1) == 0)
    {
      *(a1 + 356) &= ~0x200000u;
    }

    v211 = sub_10000C7D0(v209, v210);
    if (((*(*v211 + 2912))(v211) & 1) == 0)
    {
      *(a1 + 356) &= ~0x400000u;
    }

    sub_1000618AC(&v246);
    v212 = sub_1002418C0(sub_10059D4E0, 0);
    sub_100022214(&v246);
    if (v212)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100847AD8();
      }
    }

    else
    {
      sub_1000618AC(&v246);
      v213 = sub_1002418D0(nullsub_411, 0);
      sub_100022214(&v246);
      if (v213)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100847B48();
        }
      }

      else
      {
        sub_1000618AC(&v246);
        v215 = sub_1002418E0(sub_10059D568, 0);
        v216 = sub_100022214(&v246);
        if (v215)
        {
          v216 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
          if (v216)
          {
            sub_100847BB8();
          }
        }

        v218 = sub_10000C7D0(v216, v217);
        if (*(v218 + 800) >= 0xFA0u && *(sub_10000C7D0(v218, v219) + 800) >> 3 <= 0x270u)
        {
          *(a1 + 352) = 0;
        }

        sub_1000618AC(&v246);
        v220 = sub_10020E384((a1 + 336), &dword_100B6F0F0);
        sub_1001C4E28(sub_10059AE28);
        sub_100022214(&v246);
        if (!v220)
        {
          v241 = 0;
          v240 = 0;
          v221 = sub_100017E6C();
          (*(*v221 + 32))(v221, &v241, &v240 + 1, &v240);
          if (v241 == 1)
          {
            sub_1000618AC(&v246);
            sub_100247BB4(HIBYTE(v240) != 0);
            sub_100022214(&v246);
          }

          v222 = sub_10000E92C();
          if ((*(*v222 + 8))(v222))
          {
            v239 = 0;
            v223 = sub_10000E92C();
            sub_100007E30(buf, "Stack");
            sub_100007E30(v262, "IOTDataCollection");
            (*(*v223 + 72))(v223, buf, v262, &v239);
            if (v265 < 0)
            {
              operator delete(*v262);
            }

            if ((v258[9] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v239 == 1)
            {
              sub_1000618AC(&v246);
              nullsub_21();
              sub_100022214(&v246);
            }
          }

          v224 = sub_10000E92C();
          sub_100007E30(buf, "Stack");
          sub_100007E30(v262, "PacketAggregation");
          v225 = (*(*v224 + 72))(v224, buf, v262, &v241);
          if (v265 < 0)
          {
            operator delete(*v262);
          }

          if ((v258[9] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v225)
          {
            sub_10029722C(v241);
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
            {
              sub_100847C98();
            }
          }

          v226 = sub_10059D64C();
          v228 = sub_10000C7D0(v226, v227);
          v229 = (*(*v228 + 4352))(v228);
          sub_100301928(v229);
          sub_100007FB8(v256);
          v153 = 0;
          *(a1 + 572) = v236;
          goto LABEL_210;
        }

        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100847C28();
        }
      }
    }

    sub_10059D2E4(a1);
  }

  v153 = 110;
LABEL_210:
  sub_10002249C(&v246);
LABEL_211:
  if (SHIBYTE(v255) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000088CC(v256);
  return v153;
}

void sub_10059CE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 105) < 0)
  {
    operator delete(*(v33 - 128));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a17);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_1000088CC(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_10059D068(void *a1)
{
  off_100B6F618 = a1;
  xmmword_100B6F620 = xmmword_1008AA568;
  *(&xmmword_100B6F620 + 14) = 0x101020100000000;
  v1 = sub_100243354(sub_1005ABA54, &xmmword_100B6F620);
  if (v1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847D24();
    }

    off_100B6F618 = 0;
  }

  return v1;
}

void sub_10059D104(int a1, __int16 a2, char a3)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005A4B80;
  block[3] = &unk_100AFEBE0;
  v8 = a1;
  v9 = a2;
  v10 = a3;
  dispatch_async(global_queue, block);
}

void sub_10059D1A0(int a1, __int16 a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005A4DC8;
  block[3] = &unk_100AE0ED8;
  v6 = a1;
  v7 = a2;
  dispatch_async(global_queue, block);
}

void sub_10059D22C(uint64_t result)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }
}

void sub_10059D258(int a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005A2410;
  v5[3] = &unk_100ADF940;
  v6 = a1;
  v5[4] = a2;
  dispatch_async(global_queue, v5);
}

uint64_t sub_10059D2E4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Terminating core stack", buf, 2u);
  }

  *buf = 0;
  v15 = 0;
  sub_100007F88(buf, a1 + 240);
  *(a1 + 308) = 0;
  *(a1 + 304) = 0;
  if (*(a1 + 335) < 0)
  {
    **(a1 + 312) = 0;
    *(a1 + 320) = 0;
  }

  else
  {
    *(a1 + 312) = 0;
    *(a1 + 335) = 0;
  }

  sub_10000801C(buf);
  v13 = 0;
  sub_1000216B4(&v13);
  if (sub_10020EE54(dword_100B6F0F0) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100847D94();
  }

  sub_100022214(&v13);
  sub_1001B2ED8();
  dword_100BCE7A8 = 103;
  byte_100BCE7AD = 0;
  sub_10002286C(&stru_100BCE748);
  sub_10002286C(&stru_100BCE778);
  v5 = sub_10000C798(v3, v4);
  if ((*(*v5 + 56))(v5, 256))
  {
    v6 = sub_100017E6C();
    sub_1005AB34C(v6 + 264, a1 + 24);
  }

  v7 = sub_100017E6C();
  sub_1005AB424(v7 + 224, a1 + 8);
  v10 = sub_10000C798(v8, v9);
  if ((*(*v10 + 56))(v10, 0x40000))
  {
    v11 = sub_100017E6C();
    sub_1005AB4FC(v11 + 704, a1 + 40);
  }

  sub_10002249C(&v13);
  sub_1000088CC(buf);
  return 0;
}

void sub_10059D4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10059D4E0(char a1)
{
  global_queue = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005A7B50;
  block[3] = &unk_100AF3580;
  v4 = a1;
  dispatch_async(global_queue, block);
}

void sub_10059D568(uint64_t a1, unsigned __int8 *a2, char a3, __int16 a4, char a5, uint64_t a6)
{
  if (!a1)
  {
    if (a2)
    {
      v10 = (*a2 << 40) | (a2[1] << 32) | (a2[2] << 24) | (a2[3] << 16) | (a2[4] << 8) | a2[5];
      v11 = sub_100017F4C(a1, a2);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1005A7B9C;
      v12[3] = &unk_100AEC130;
      v13 = 0;
      v15 = a3;
      v14 = a4;
      v16 = a5;
      v12[4] = v10;
      v12[5] = a6;
      sub_10000CA94(v11, v12);
    }
  }
}

uint64_t sub_10059D64C()
{
  v10 = 0;
  v0 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "enableLEPowerControl");
  v1 = (*(*v0 + 72))(v0, buf, __p, &v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(*buf);
    if (!v1)
    {
      goto LABEL_9;
    }
  }

  else if (!v1)
  {
    goto LABEL_9;
  }

  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LE Power Control enableLEPowerControl=%d", buf, 8u);
  }

LABEL_9:
  v3 = sub_10023DE74();
  if (v3)
  {
    if (v10)
    {
      goto LABEL_16;
    }

    *buf = *&byte_100BCDFFC;
    buf[4] = byte_100BCE000 & 0xF9;
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_10023DD38(buf);
    sub_100022214(__p);
    goto LABEL_15;
  }

  if (v10)
  {
    v5 = sub_10000C7D0(v3, v4);
    if ((*(*v5 + 2672))(v5))
    {
      *buf = *&byte_100BCDFFC;
      buf[4] = byte_100BCE000 | 6;
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_10023DD38(buf);
      sub_100022214(__p);
LABEL_15:
      sub_10002249C(__p);
    }
  }

LABEL_16:
  if (qword_100B50AA0 != -1)
  {
    sub_100847634();
  }

  v6 = off_100B50A98;
  *buf = 0;
  v12 = 0;
  sub_100007F88(buf, off_100B50A98 + 240);
  v6[572] = v1;
  return sub_1000088CC(buf);
}

uint64_t sub_10059D8D0(os_unfair_lock_s *a1)
{
  v266 = 0;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Starting up StackManager", buf, 2u);
  }

  v265[0] = 0;
  v265[1] = 0;
  sub_100007F88(v265, &a1[40]);
  os_unfair_lock_opaque = a1[14]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    if (os_unfair_lock_opaque == 2)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10084800C();
      }

      v4 = 111;
    }

    else
    {
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "StackManager is already running", buf, 2u);
      }

      v4 = 110;
    }

    goto LABEL_270;
  }

  sub_10059ACE4(a1, 2u, 0);
  BYTE1(a1[56]._os_unfair_lock_opaque) = 0;
  sub_10000801C(v265);
  v5 = sub_10059AF5C(a1);
  v4 = v5;
  if (v5)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100847E04();
    }

    sub_100007FB8(v265);
    sub_10059ACE4(a1, 0, 0);
    sub_10000801C(v265);
    goto LABEL_270;
  }

  v8 = sub_10000C7D0(v5, v6);
  sub_10041169C(v8);
  sub_1005A0250(a1);
  sub_100007FB8(v265);
  sub_10059ACE4(a1, 1u, 0);
  LOBYTE(a1[56]._os_unfair_lock_opaque) = 0;
  HIWORD(a1[56]._os_unfair_lock_opaque) = 0;
  LOBYTE(a1[57]._os_unfair_lock_opaque) = 0;
  HIBYTE(a1[57]._os_unfair_lock_opaque) = 0;
  sub_10000801C(v265);
  if (BYTE1(a1[56]._os_unfair_lock_opaque) == 1)
  {
    LOBYTE(__p[0]) = 0;
    LOBYTE(v251[0]) = 0;
    LOBYTE(v249[0]) = 0;
    v9 = sub_100017E6C();
    if (!(*(*v9 + 32))(v9, __p, v251, v249))
    {
      (*(*&a1->_os_unfair_lock_opaque + 72))(a1, LOBYTE(__p[0]), LOBYTE(v251[0]), LOBYTE(v249[0]));
    }

    memset(buf, 0, sizeof(buf));
    v268 = 0;
    v10 = sub_100017E6C();
    if (!(*(*v10 + 24))(v10, buf))
    {
      if (SHIBYTE(v268) < 0)
      {
        sub_100008904(&__dst, *buf, *&buf[8]);
      }

      else
      {
        __dst = *buf;
        v264 = v268;
      }

      (*(*&a1->_os_unfair_lock_opaque + 40))(a1, &__dst);
      if (SHIBYTE(v264) < 0)
      {
        operator delete(__dst);
      }
    }

    if (SHIBYTE(v268) < 0)
    {
      operator delete(*buf);
    }
  }

  v11 = qword_100BCE8D8;
  v12 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Done starting up stack", buf, 2u);
  }

  v14 = sub_10000C798(v12, v13);
  if ((*(*v14 + 440))(v14))
  {
    buf[0] = 0;
    sub_1000216B4(buf);
    sub_100247BB4(1);
    sub_10002249C(buf);
  }

  v15 = sub_100017E6C();
  sub_1003128B0(v15 + 384, &a1[4]);
  v18 = sub_10000C798(v16, v17);
  v19 = (*(*v18 + 112))(v18);
  if (v19)
  {
    v21 = sub_100017E6C();
    sub_1005AB5D4(v21 + 584, &a1[8]);
    buf[0] = 0;
    v22 = sub_100017E6C();
    v19 = (*(*v22 + 136))(v22, buf);
    if (v19)
    {
      v19 = (*(*&a1->_os_unfair_lock_opaque + 80))(a1, buf[0]);
    }
  }

  v23 = sub_10000C798(v19, v20);
  v24 = (*(*v23 + 120))(v23);
  if (v24)
  {
    v26 = sub_1000D999C(v24, v25);
    v262[0] = _NSConcreteStackBlock;
    v262[1] = 3221225472;
    v262[2] = sub_1005A02CC;
    v262[3] = &unk_100ADF8F8;
    v262[4] = a1;
    sub_10000D334(v26, v262);
  }

  if (HIBYTE(a1[58]._os_unfair_lock_opaque) == 1)
  {
    if (qword_100B50910 != -1)
    {
      sub_100847E40();
    }

    v27 = sub_1005BC880();
    v28 = sub_1005A0378(v27);
    if (v27 == 0.0 || (v29 = v28, +[NSDate timeIntervalSinceReferenceDate], v30 >= v29))
    {
      v32 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Disabling denylist on expiration", buf, 2u);
      }

      sub_1005A0484(a1, 0);
    }

    else
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      v31 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Re-enabling the denylist mode", buf, 2u);
      }

      HIBYTE(a1[58]._os_unfair_lock_opaque) = 1;
      sub_1005A0830(1, v29);
      if (qword_100B512F8 != -1)
      {
        sub_100847E68();
      }

      sub_1003B4134(off_100B512F0, HIBYTE(a1[58]._os_unfair_lock_opaque));
      sub_10002249C(__p);
    }
  }

  if (qword_100B6F0F8 != -1)
  {
    sub_100847E90();
  }

  v261 = 0;
  v260 = 0;
  v33 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "HDRForcePkt");
  v34 = (*(*v33 + 72))(v33, buf, __p, &v261);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
    if (!v34)
    {
      goto LABEL_59;
    }
  }

  else if (!v34)
  {
    goto LABEL_59;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100847634();
  }

  v35 = off_100B50A98;
  memset(buf, 0, sizeof(buf));
  v36 = sub_100007F88(buf, off_100B50A98 + 240);
  v35[572] = 1;
  sub_1000088CC(v36);
LABEL_59:
  v37 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "HDRPktTypeMask");
  v38 = (*(*v37 + 128))(v37, buf, __p, &v260);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
    if (!v38)
    {
      goto LABEL_68;
    }
  }

  else if (!v38)
  {
    goto LABEL_68;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100847634();
  }

  v39 = off_100B50A98;
  memset(buf, 0, sizeof(buf));
  v40 = sub_100007F88(buf, off_100B50A98 + 240);
  v39[572] = 1;
  sub_1000088CC(v40);
LABEL_68:
  v257 = 1;
  v41 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "EnableHDR");
  v42 = (*(*v41 + 72))(v41, buf, __p, &v257);
  v44 = v42;
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
    if (!v44)
    {
      goto LABEL_77;
    }
  }

  else if (!v44)
  {
    goto LABEL_77;
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100847634();
  }

  v45 = off_100B50A98;
  memset(buf, 0, sizeof(buf));
  v46 = sub_100007F88(buf, off_100B50A98 + 240);
  v45[572] = 1;
  v42 = sub_1000088CC(v46);
LABEL_77:
  v47 = sub_10000C7D0(v42, v43);
  v48 = (*(*v47 + 1336))(v47, v257, 1);
  v50 = sub_10000C7D0(v48, v49);
  v51 = (*(*v50 + 3016))(v50);
  if (v51 && v257 == 1)
  {
    v53 = qword_100BCE8D8;
    v54 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v54)
    {
      *buf = 67109376;
      *&buf[4] = 360;
      *&buf[8] = 1024;
      *&buf[10] = 1;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Adjust sco hci buffer length bufferSize %d numBuffer %d", buf, 0xEu);
    }

    v56 = sub_10000C7D0(v54, v55);
    v51 = (*(*v56 + 1408))(v56, 1, 360, 1, 1);
  }

  v57 = sub_10000C7D0(v51, v52);
  v58 = (*(*v57 + 4224))(v57, 1);
  v60 = sub_10000C7D0(v58, v59);
  v61 = (*(*v60 + 3464))(v60, 20, 1, 1);
  v63 = sub_10000C7D0(v61, v62);
  v64 = (*(*v63 + 1344))(v63, 1);
  if (v261 == 1)
  {
    v66 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "Forcing HDR packet type", buf, 2u);
    }

    sub_10023E7C0(1);
    v64 = sub_10023E7CC(v260);
  }

  if (BYTE2(a1[58]._os_unfair_lock_opaque) == 1)
  {
    v67 = sub_10000C7D0(v64, v65);
    if (*(v67 + 800) >= 0x7D0u)
    {
      v67 = sub_10000C7D0(v67, v68);
      if (*(v67 + 800) <= 0xF9Fu)
      {
        v69 = sub_10000C7D0(v67, v68);
        v70 = (*(*v69 + 1304))(v69, 1);
        v67 = sub_10000C7D0(v70, v71);
        if (*(v67 + 800) >= 0xBB8u)
        {
          v72 = sub_10000C7D0(v67, v68);
          v67 = (*(*v72 + 2088))(v72, 1);
        }
      }
    }

    v73 = sub_10000C7D0(v67, v68);
    if (*(v73 + 800) >> 3 >= 0x271u)
    {
      v73 = sub_10000C7D0(v73, v74);
      if (*(v73 + 800) >> 4 <= 0x176u)
      {
        v75 = sub_10000C7D0(v73, v74);
        v73 = (*(*v75 + 1304))(v75, 1);
      }
    }

    v64 = sub_10000C7D0(v73, v74);
    if (*(v64 + 800))
    {
      v64 = sub_10000C7D0(v64, v65);
      if (*(v64 + 800) <= 0x7CFu)
      {
        v76 = sub_10000C7D0(v64, v65);
        if (*(v76 + 800) < 0x13u)
        {
          v82 = sub_10000C7D0(v76, v77);
          v64 = (*(*v82 + 1304))(v82, 1);
          if (v64)
          {
            buf[0] = 0;
            sub_1000216B4(buf);
            sub_10024E230();
            sub_100022214(buf);
            v64 = sub_10002249C(buf);
          }
        }

        else
        {
          v78 = sub_10000C7D0(v76, v77);
          v79 = (*(*v78 + 1320))(v78, 1);
          v81 = sub_10000C7D0(v79, v80);
          v64 = (*(*v81 + 2088))(v81, 1);
        }
      }
    }
  }

  v83 = sub_10000C7D0(v64, v65);
  if (*(v83 + 800))
  {
    v83 = sub_10000C7D0(v83, v84);
    if (*(v83 + 800) <= 0x7CFu)
    {
      v85 = sub_10000C7D0(v83, v84);
      if (*(v85 + 800) >= 0x13u)
      {
        v87 = sub_10000C7D0(v85, v86);
        (*(*v87 + 2032))(v87, 1);
      }

      v88 = sub_10000E92C();
      v89 = (*(*v88 + 8))(v88);
      v91 = sub_10000C7D0(v89, v90);
      v83 = (*(*v91 + 1040))(v91, v89);
    }
  }

  v92 = sub_10000C7D0(v83, v84);
  v93 = (*(*v92 + 2432))(v92);
  if (!v93)
  {
    v104 = sub_10000C7D0(v93, v94);
    v105 = (*(*v104 + 2424))(v104);
    if (v105)
    {
      v107 = (*sub_10000C7D0(v105, v106) + 2040);
    }

    else
    {
      v107 = (*sub_10000C7D0(v105, v106) + 352);
    }

    v108 = (*v107)();
    goto LABEL_137;
  }

  LOBYTE(v255) = 0;
  LODWORD(v251[0]) = 0;
  LODWORD(v249[0]) = 1;
  v95 = sub_10000C798(v93, v94);
  if ((*(*v95 + 456))(v95))
  {
    v96 = 5;
  }

  else
  {
    v96 = 1;
  }

  v97 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "PowerTagV2ForceHandleEnable");
  (*(*v97 + 72))(v97, buf, __p, &v255);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  v98 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "PowerTagV2ForceHandleValue");
  (*(*v98 + 128))(v98, buf, __p, v251);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  v99 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "PowerTagV2ForceEnableFeatureSet");
  v100 = (*(*v99 + 128))(v99, buf, __p, v249);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  if (v255 == 1)
  {
    v102 = qword_100BCE8D8;
    v100 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v100)
    {
      *buf = 67109632;
      *&buf[4] = v249[0];
      *&buf[8] = 1024;
      *&buf[10] = v251[0];
      *&buf[14] = 1024;
      LODWORD(v268) = v251[0];
      _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Force PowerTagV2 %d:  %d (0x%04x)", buf, 0x14u);
    }

    v103 = v251[0];
    v96 = LODWORD(v249[0]);
    if ((v249[0] & 4) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_131;
  }

  v103 = 0;
  if ((v96 & 4) != 0)
  {
LABEL_131:
    v110 = qword_100BCE8D8;
    v111 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v111)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v110, OS_LOG_TYPE_DEFAULT, "PowerTag V2 BTCLK is enable ", buf, 2u);
    }

    v113 = sub_10000C798(v111, v112);
    v100 = (*(*v113 + 920))(v113, 1);
  }

LABEL_134:
  v114 = sub_10000C7D0(v100, v101);
  v108 = (*(*v114 + 2064))(v114, v96, 1, v103);
  v115 = v108;
  if (v108)
  {
    v116 = qword_100BCE8D8;
    v108 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v108)
    {
      *buf = 67109120;
      *&buf[4] = v115;
      _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "PowerTag BTCLK V2 error configuring %d ", buf, 8u);
    }
  }

LABEL_137:
  v117 = sub_10000C7D0(v108, v109);
  if (*(v117 + 800) == 15)
  {
    LODWORD(v251[0]) = 0;
    v119 = sub_10000E92C();
    sub_100007E30(buf, "CoEx");
    sub_100007E30(__p, "EnableDebugCounters");
    v117 = (*(*v119 + 128))(v119, buf, __p, v251);
    if (LODWORD(v251[0]))
    {
      v120 = v117;
    }

    else
    {
      v120 = 0;
    }

    if (v259 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v268) < 0)
    {
      operator delete(*buf);
    }

    if (v120)
    {
      v121 = sub_10000C7D0(v117, v118);
      v117 = (*(*v121 + 1288))(v121, LOBYTE(v251[0]));
    }
  }

  v122 = sub_10000C7D0(v117, v118);
  v123 = (*(*v122 + 2440))(v122);
  if (v123)
  {
    v125 = sub_10000C7D0(v123, v124);
    v123 = (*(*v125 + 2048))(v125, 1, 0);
  }

  v126 = sub_10000C7D0(v123, v124);
  if (*(v126 + 800) >> 3 >= 0x271u)
  {
    v126 = sub_10000C7D0(v126, v127);
    if (*(v126 + 800) >> 4 <= 0x176u)
    {
      v128 = sub_10000C7D0(v126, v127);
      v126 = (*(*v128 + 2032))(v128, 1);
    }
  }

  v129 = sub_10000C7D0(v126, v127);
  if (*(v129 + 800) < 0x7D0u || *(sub_10000C7D0(v129, v130) + 800) > 0xF9Fu)
  {
    goto LABEL_172;
  }

  v131 = sub_10000E92C();
  sub_100007E30(buf, "fw");
  sub_100007E30(__p, "TraceMode");
  v132 = (*(*v131 + 88))(v131, buf, __p, &v266);
  v134 = v132;
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  if (v266 < 7)
  {
    v135 = v134;
  }

  else
  {
    v135 = 0;
  }

  if (v135 == 1)
  {
    v136 = sub_10000C7D0(v132, v133);
    (*(*v136 + 1312))(v136, v266);
    v137 = sub_10000E92C();
    v138 = (*(*v137 + 8))(v137);
    if ((v138 & 1) == 0)
    {
      v140 = sub_10000E92C();
      v141 = v266 != 0;
LABEL_167:
      v138 = (*(*v140 + 512))(v140, v141);
    }
  }

  else
  {
    v142 = sub_10000E92C();
    v143 = (*(*v142 + 8))(v142);
    if (!v143)
    {
      v146 = sub_10000C7D0(v143, v144);
      (*(*v146 + 1312))(v146, 0);
      v140 = sub_10000E92C();
      v141 = 0;
      goto LABEL_167;
    }

    v145 = sub_10000C7D0(v143, v144);
    v138 = (*(*v145 + 1312))(v145, 6);
  }

  v147 = sub_10000C7D0(v138, v139);
  v148 = sub_1004106D0(v147, 0xBB8u);
  if (v148)
  {
    v150 = sub_10000C7D0(v148, v149);
    v151 = (*(*v150 + 2032))(v150, 1);
    v153 = sub_10000C7D0(v151, v152);
    if ((*(*v153 + 3928))(v153, 1))
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100847EB8();
      }
    }
  }

LABEL_172:
  v256 = 0;
  v154 = sub_10000E92C();
  sub_100007E30(buf, "hci");
  sub_100007E30(__p, "AssertOnFlowErrors");
  v155 = (*(*v154 + 72))(v154, buf, __p, &v256);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  if (v256 == 1)
  {
    sub_100259B84();
  }

  v157 = sub_10000C798(v155, v156);
  v158 = (*(*v157 + 344))(v157);
  if (v158)
  {
    v160 = sub_10000C7D0(v158, v159);
    v158 = (*(*v160 + 1936))(v160, 1, 1);
  }

  LODWORD(v251[0]) = 124;
  LODWORD(v249[0]) = 2;
  v254 = 2;
  v255 = 10;
  v253 = 50;
  v161 = sub_10000C798(v158, v159);
  if ((*(*v161 + 720))(v161))
  {
    LODWORD(v249[0]) |= 4u;
  }

  v162 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AElengthAllowed");
  (*(*v162 + 128))(v162, buf, __p, v251);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  v163 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AEAuxPhyMask");
  (*(*v163 + 128))(v163, buf, __p, v249);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  v164 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AEMaxAuxOffset");
  (*(*v164 + 128))(v164, buf, __p, &v255);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  v165 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AEMaxChanins");
  v166 = (*(*v165 + 128))(v165, buf, __p, &v254);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  v168 = sub_10000C7D0(v166, v167);
  (*(*v168 + 1000))(v168, 1, LOWORD(v251[0]), LOBYTE(v249[0]), v255, v254);
  v169 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AEMaxScanBuffers");
  v170 = (*(*v169 + 128))(v169, buf, __p, &v253);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  v172 = sub_10000C7D0(v170, v171);
  (*(*v172 + 1008))(v172, 1, v253, 0);
  LODWORD(v251[0]) = 10;
  v173 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "AEMaxAuxOffset");
  v174 = (*(*v173 + 128))(v173, buf, __p, v251);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  v176 = sub_10000C7D0(v174, v175);
  v177 = (*(*v176 + 1024))(v176, 1, LOWORD(v251[0]));
  sub_10000C7D0(v177, v178);
  v179 = sub_100410074();
  v180 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG);
  if (v179)
  {
    if (v180)
    {
      sub_100847F68();
    }

    v182 = sub_10000C7D0(v180, v181);
    *&v243[100] = 10000;
    *&v243[92] = 0x500000004;
    *&v243[84] = 0x300000002;
    *&v243[76] = 20;
    *&v243[68] = 0xF0000000ALL;
    *&v243[60] = 0x50000C350;
    *&v243[52] = 171798691870000;
    *&v243[44] = 0x3A9800000005;
    *&v243[36] = 0x400000003;
    *&v243[28] = 0x200000000;
    *&v243[20] = 0x3200000028;
    *&v243[12] = 0x140000000ALL;
    *&v243[4] = 0x5A00000050;
    *v243 = 60;
    v183 = (*(*v182 + 4024))(v182, 0, 29, 29, 29, 29, 0, 0, 1929379840, 0, *v243, *&v243[8], *&v243[16], *&v243[24], *&v243[32], *&v243[40], *&v243[48], *&v243[56], *&v243[64], *&v243[72], *&v243[80], *&v243[88], *&v243[96], 115);
    v185 = sub_10000C7D0(v183, v184);
    LOBYTE(v244) = 115;
    *&v238[108] = 10000;
    *&v238[100] = 0x500000004;
    *&v238[92] = 0x300000002;
    *&v238[84] = 20;
    *&v238[76] = 0xF0000000ALL;
    *&v238[68] = 0x50000C350;
    *&v238[60] = 171798691870000;
    *&v238[52] = 0x3A9800000005;
    *&v238[44] = 0x400000003;
    *&v238[36] = 0x200000000;
    *&v238[28] = 0x3200000028;
    *&v238[20] = 0x140000000ALL;
    *&v238[12] = 0x5A00000050;
    *&v238[4] = 0x3C00000032;
    v238[0] = 0;
    v186 = (*(*v185 + 4024))(v185, 1, 29, 49, 75, 149, 1, 1, 0x101000073000001, *v238, *&v238[8], *&v238[16], *&v238[24], *&v238[32], *&v238[40], *&v238[48], *&v238[56], *&v238[64], *&v238[72], *&v238[80], *&v238[88], *&v238[96], *&v238[104], v244);
    v188 = sub_10000C7D0(v186, v187);
    LOBYTE(v245) = -123;
    *&v239[108] = 10000;
    *&v239[100] = 0x500000004;
    *&v239[92] = 0x300000002;
    *&v239[84] = 20;
    *&v239[76] = 0xF0000000ALL;
    *&v239[68] = 0x50000C350;
    *&v239[60] = 171798691870000;
    *&v239[52] = 0x3A9800000005;
    *&v239[44] = 0x400000003;
    *&v239[36] = 0x200000000;
    *&v239[28] = 0x1E00000014;
    *&v239[20] = 0xA00000005;
    *&v239[12] = 0x5F00000055;
    *&v239[4] = 0x4B00000032;
    v239[0] = 1;
    v189 = (*(*v188 + 4024))(v188, 2, 49, 75, 115, 163, 1, 1, 0x1010000A3010101, *v239, *&v239[8], *&v239[16], *&v239[24], *&v239[32], *&v239[40], *&v239[48], *&v239[56], *&v239[64], *&v239[72], *&v239[80], *&v239[88], *&v239[96], *&v239[104], v245);
    v191 = sub_10000C7D0(v189, v190);
    LOBYTE(v246) = -105;
    *&v240[108] = 10000;
    *&v240[100] = 0x500000004;
    *&v240[92] = 0x300000002;
    *&v240[84] = 20;
    *&v240[76] = 0xF0000000ALL;
    *&v240[68] = 0x50000C350;
    *&v240[60] = 171798691870000;
    *&v240[52] = 0x3A9800000005;
    *&v240[44] = 0x400000003;
    *&v240[36] = 0x200000000;
    *&v240[28] = 0x1000000008;
    *&v240[20] = 0x400000002;
    *&v240[12] = 0x5F00000055;
    *&v240[4] = 0x4B00000032;
    v240[0] = 1;
    v192 = (*(*v191 + 4024))(v191, 3, 75, 115, 163, 167, 1, 1, 0x1010000A7010101, *v240, *&v240[8], *&v240[16], *&v240[24], *&v240[32], *&v240[40], *&v240[48], *&v240[56], *&v240[64], *&v240[72], *&v240[80], *&v240[88], *&v240[96], *&v240[104], v246);
    v194 = sub_10000C7D0(v192, v193);
    LOBYTE(v247) = -105;
    *&v241[108] = 10000;
    *&v241[100] = 0x500000004;
    *&v241[92] = 0x300000002;
    *&v241[84] = 20;
    *&v241[76] = 0xF0000000ALL;
    *&v241[68] = 0x50000C350;
    *&v241[60] = 171798691870000;
    *&v241[52] = 0x3A9800000005;
    *&v241[44] = 0x400000003;
    *&v241[36] = 0x200000000;
    *&v241[28] = 0x1000000008;
    *&v241[20] = 0x400000002;
    *&v241[12] = 0x5F00000055;
    *&v241[4] = 0x4B00000032;
    v241[0] = 1;
    v195 = (*(*v194 + 4024))(v194, 4, 29, 29, 29, 29, 1, 1, 0x1010000A7010101, *v241, *&v241[8], *&v241[16], *&v241[24], *&v241[32], *&v241[40], *&v241[48], *&v241[56], *&v241[64], *&v241[72], *&v241[80], *&v241[88], *&v241[96], *&v241[104], v247);
    v197 = sub_10000C7D0(v195, v196);
    LOBYTE(v248) = -105;
    *&v242[108] = 10000;
    *&v242[100] = 0x500000004;
    *&v242[92] = 0x300000002;
    *&v242[84] = 20;
    *&v242[76] = 0xF0000000ALL;
    *&v242[68] = 0x50000C350;
    *&v242[60] = 171798691870000;
    *&v242[52] = 0x3A9800000005;
    *&v242[44] = 0x400000003;
    *&v242[36] = 0x200000000;
    *&v242[28] = 0x3200000032;
    *&v242[20] = 0x3200000032;
    *&v242[12] = 0x6400000064;
    *&v242[4] = 0x6400000064;
    v242[0] = 0;
    (*(*v197 + 4024))(v197, 5, 17, 17, 17, 17, 0, 0, 2801795072, *v242, *&v242[8], *&v242[16], *&v242[24], *&v242[32], *&v242[40], *&v242[48], *&v242[56], *&v242[64], *&v242[72], *&v242[80], *&v242[88], *&v242[96], *&v242[104], v248);
  }

  else if (v180)
  {
    sub_100847F28();
  }

  LOBYTE(v249[0]) = 0;
  v198 = sub_10000E92C();
  sub_100007E30(buf, "HRB");
  sub_100007E30(__p, "SwitchToHRB");
  (*(*v198 + 72))(v198, buf, __p, v249);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  sub_10023E7D8(LOBYTE(v249[0]));
  LODWORD(v251[0]) = 1;
  v199 = sub_10000E92C();
  sub_100007E30(buf, "HRB");
  sub_100007E30(__p, "HRBBand");
  (*(*v199 + 128))(v199, buf, __p, v251);
  if (v259 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v268) < 0)
  {
    operator delete(*buf);
  }

  v200 = sub_10023E7E4(LOBYTE(v251[0]));
  v202 = sub_10000C7D0(v200, v201);
  if (sub_1004106D0(v202, 0xBB8u))
  {
    sub_10023E7F0(1);
  }

  v203 = sub_10000E92C();
  v204 = (*(*v203 + 8))(v203);
  if (v204)
  {
    LOBYTE(v251[0]) = 0;
    v206 = sub_10000E92C();
    sub_100007E30(buf, "Stack");
    sub_100007E30(__p, "RestrictRoleSwitchOnOutogingConnection");
    v204 = (*(*v206 + 72))(v206, buf, __p, v251);
    if (v259 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v268) < 0)
    {
      operator delete(*buf);
    }

    if (LOBYTE(v251[0]) == 1)
    {
      sub_10023E3B8();
    }
  }

  v207 = sub_10000C798(v204, v205);
  v208 = (*(*v207 + 272))(v207);
  if (v208)
  {
    v268 = 0xFFFF0000FFFF0046;
    *buf = xmmword_1008AA550;
    v210 = sub_10000C798(v208, v209);
    if ((*(*v210 + 280))(v210))
    {
      v211 = 3;
    }

    else
    {
      v211 = 2;
    }

    v212 = qword_100BCE8D8;
    v213 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v213)
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v212, OS_LOG_TYPE_DEFAULT, "stackManager sending Apple LE Feature Set Vendor List", __p, 2u);
    }

    v215 = sub_10000C7D0(v213, v214);
    v208 = (*(*v215 + 2272))(v215, v211, buf);
  }

  v216 = sub_10000C798(v208, v209);
  v217 = (*(*v216 + 1040))(v216);
  if (v217)
  {
    v219 = sub_10000C7D0(v217, v218);
    (*(*v219 + 1888))(v219, 1, 1);
  }

  sub_100007FB8(v265);
  sub_10059ACE4(a1, 1u, 1);
  sub_10000801C(v265);
  sub_1005A10F8(a1);
  v220 = sub_1005A1174(a1);
  v222 = sub_10000C7D0(v220, v221);
  if (*(v222 + 800) >> 3 >= 0x271u)
  {
    v222 = sub_10000C7D0(v222, v223);
    if (*(v222 + 800) >> 4 <= 0x176u)
    {
      LOBYTE(v253) = 0;
      v254 = 0;
      v255 = 0;
      v224 = sub_10000E92C();
      sub_100007E30(buf, "Device");
      sub_100007E30(__p, "OverrideCompanyId");
      v222 = (*(*v224 + 72))(v224, buf, __p, &v253);
      if (v259 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v268) < 0)
      {
        operator delete(*buf);
      }

      if (v253 == 1)
      {
        v225 = sub_10000E92C();
        sub_100007E30(buf, "Device");
        sub_100007E30(__p, "NewCompanyId");
        v222 = (*(*v225 + 128))(v225, buf, __p, &v255);
        if (v222)
        {
          v226 = sub_10000E92C();
          sub_100007E30(v251, "Device");
          sub_100007E30(v249, "NewSubVersion");
          v222 = (*(*v226 + 128))(v226, v251, v249, &v254);
          v227 = v222;
          if (v250 < 0)
          {
            operator delete(v249[0]);
          }

          if (v252 < 0)
          {
            operator delete(v251[0]);
          }
        }

        else
        {
          v227 = 0;
        }

        if (v259 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v268) < 0)
        {
          operator delete(*buf);
        }

        if (v227)
        {
          v228 = sub_10000C7D0(v222, v223);
          (*(*v228 + 2264))(v228, v255, v254);
          if (qword_100B50AA0 != -1)
          {
            sub_100847634();
          }

          v222 = sub_1005A10B0(off_100B50A98, 1);
        }
      }
    }
  }

  v229 = sub_10000C7D0(v222, v223);
  if (*(v229 + 800))
  {
    v231 = sub_10000C7D0(v229, v230);
    if (*(v231 + 800) <= 0x7CFu && *(sub_10000C7D0(v231, v232) + 800) == 23)
    {
      v233 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "Disable antenna switch VSE for unsupported platforms!", buf, 2u);
      }

      if (qword_100B508F0 != -1)
      {
        sub_100847FA8();
      }

      v234 = sub_1000504C8(off_100B508E8, 1, 1);
      v236 = sub_10000C7D0(v234, v235);
      if ((*(*v236 + 152))(v236, 255, v234) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100847FD0();
      }
    }
  }

  v4 = 0;
LABEL_270:
  sub_1000088CC(v265);
  return v4;
}

void sub_1005A0250(os_unfair_lock_s *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying stack listeners that the stack will start", v3, 2u);
  }

  sub_1005AA6AC(a1 + 16, &stru_100AFECB0);
}

uint64_t sub_1005A02CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100848048();
  }

  sub_1006FCA38(off_100B54078, v1 + 48);
  if (qword_100B54080 != -1)
  {
    sub_100848048();
  }

  result = sub_1006FCEA4(off_100B54078);
  if (!result)
  {
    return (*(*v1 + 128))(v1, 0);
  }

  return result;
}

double sub_1005A0378(double a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:a1];
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:60 fromDate:v3];
  [v5 setHour:5];
  [v5 setDay:{objc_msgSend(v5, "day") + 1}];
  v6 = [v4 dateFromComponents:v5];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  objc_autoreleasePoolPop(v2);
  return v8;
}

void sub_1005A0484(uint64_t a1, int a2)
{
  if (*(a1 + 235) == a2)
  {
    v3 = qword_100BCE8D8;
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v4 = "disabled";
    if (a2)
    {
      v4 = "enabled";
    }

    LODWORD(v19) = 136315138;
    *(&v19 + 4) = v4;
    v5 = "Denylist already %s";
    v6 = v3;
    v7 = 12;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, &v19, v7);
    return;
  }

  v9 = *(a1 + 56);
  v10 = qword_100BCE8D8;
  v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v9 != 1)
  {
    if (!v11)
    {
      return;
    }

    LOWORD(v19) = 0;
    v5 = "Ignore set denylist mode due to stack not ready";
    v6 = v10;
    v7 = 2;
    goto LABEL_28;
  }

  if (v11)
  {
    v12 = "disabled";
    if (a2)
    {
      v12 = "enabled";
    }

    LODWORD(v19) = 136315138;
    *(&v19 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "denylist mode %s", &v19, 0xCu);
  }

  *(a1 + 235) = a2;
  if (qword_100B512C8 != -1)
  {
    sub_1008478F4();
  }

  if (sub_10057A798(off_100B512C0))
  {
    if (a2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    sub_1005A2094(a1, v13);
  }

  if (*(a1 + 235) == 1)
  {
    v19 = 0uLL;
    v20 = 0;
    if (qword_100B50F68 != -1)
    {
      sub_10084805C();
    }

    sub_1000ADA24(off_100B50F60, &v19);
    v14 = v19;
    if (v19 != *(&v19 + 1))
    {
      do
      {
        v15 = *v14;
        if (qword_100B50AC0 != -1)
        {
          sub_100848084();
        }

        sub_1005922D4(off_100B50AB8, v15, 1);
        ++v14;
      }

      while (v14 != *(&v19 + 1));
      v14 = v19;
    }

    if (v14)
    {
      *(&v19 + 1) = v14;
      operator delete(v14);
    }
  }

  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  sub_1000971F4(off_100B50898, 10, 0);
  LOBYTE(v19) = 0;
  sub_1000216B4(&v19);
  if (*(a1 + 235) == 1)
  {
    if (qword_100B50910 != -1)
    {
      sub_100847E40();
    }

    +[NSDate timeIntervalSinceReferenceDate];
    sub_1005BC7F8(v16);
    +[NSDate timeIntervalSinceReferenceDate];
    v18 = sub_1005A0378(v17);
    sub_1005A0830(1, v18);
  }

  else
  {
    if (qword_100B50910 != -1)
    {
      sub_100847E40();
    }

    sub_1005BC7F8(0.0);
    sub_10023E7B4();
  }

  sub_100022214(&v19);
  if (qword_100B512F8 != -1)
  {
    sub_100847E68();
  }

  sub_1003B4134(off_100B512F0, *(a1 + 235));
  if (qword_100B508D0 != -1)
  {
    sub_1008480D4();
  }

  sub_100789A50(off_100B508C8, *(a1 + 235));
  sub_1005A221C(a1);
  sub_10002249C(&v19);
}

void sub_1005A07F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A0830(int a1, double a2)
{
  if (a1)
  {
    sub_10023E764();
    v4 = xpc_dictionary_create(0, 0, 0);
    +[NSDate timeIntervalSinceReferenceDate];
    xpc_dictionary_set_double(v4, XPC_ACTIVITY_DELAY, a2 - v5);
    xpc_dictionary_set_int64(v4, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
    xpc_dictionary_set_string(v4, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    xpc_activity_register("com.apple.bluetooth.denylist.autoExpire", v4, &stru_100AFEDA8);

    xpc_release(v4);
  }

  else
  {

    sub_10023E7B4();
  }
}

void sub_1005A0914(id a1)
{
  v2 = sub_10009BD9C(a1, v1);
  v3 = (*(*v2 + 136))(v2);
  if (!v3)
  {
    v5 = sub_10009B9DC(v3, v4);
    if (v5 == 7 || (v7 = sub_10009B9DC(v5, v6), v7 == 8))
    {
      if (qword_100B50AA0 != -1)
      {
        sub_10084760C();
      }

      sub_1005A0B4C();
      if (qword_100B50AA0 != -1)
      {
        sub_10084760C();
      }

      sub_1005A0DF4();
    }

    v9 = sub_10009B9DC(v7, v8);
    if (v9 == 7)
    {
      v11 = sub_10000C7D0(v9, v10);
      v9 = (*(*v11 + 528))(v11, 1);
      if (v9)
      {
        v9 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT);
        if (v9)
        {
          sub_1008480FC();
        }
      }
    }

    v12 = sub_10009B9DC(v9, v10);
    if (v12 == 9)
    {
      v20 = 0;
      v21 = 0;
      v14 = sub_10000C7D0(v12, v13);
      (*(*v14 + 1416))(v14, &v20);
      bzero(__str, 0x400uLL);
      snprintf(__str, 0x400uLL, "MAC FW Version: %d.%d.%d.%d, PHY FW Version: %d.%d.%d.%d", v20, WORD1(v20), WORD2(v20), HIWORD(v20), v21, WORD2(v21), WORD1(v21), HIWORD(v21));
      __p[0] = 0;
      __p[1] = 0;
      v19 = 0;
      v15 = sub_100007E30(__p, __str);
      v17 = sub_10009BD9C(v15, v16);
      (*(*v17 + 72))(v17, __p);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_1005A0B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A0B4C()
{
  v10 = 0;
  v9 = 0;
  bzero(__str, 0x400uLL);
  v8 = 1024;
  v0 = sysctlbyname("kern.bootargs", __str, &v8, 0, 0);
  if (v0 || (v0 = strtok(__str, " ")) == 0)
  {
LABEL_2:
    if (sub_10009B9DC(v0, v1) == 9)
    {
      return;
    }

    v2 = qword_100BCE8D8;
    v3 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Load and send calibration data to host controller", v7, 2u);
    }

    if ((*(sub_10000C7D0(v3, v4) + 800) - 5000) > 0x3E7)
    {
      if (sub_1005A5348(@"bluetooth-taurus-calibration-bf", &v10, &v9) && sub_1005A5348(@"bluetooth-taurus-calibration", &v10, &v9) && sub_1005A5540(&v10, &v9))
      {
        if (sub_1000271F0() != 264 && sub_1000271F0() != 287 && sub_1000271F0() != 288)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
          {
            sub_100848130();
          }

          return;
        }

        sub_1005A5774(&v10, &v9);
      }

      if (!sub_1005A5928(v10, v9, 0xE6u))
      {
LABEL_27:
        if (v10)
        {
          free(v10);
        }

        return;
      }
    }

    else
    {
      if (sub_1005A5348(@"sunrise-bt-bcal", &v10, &v9))
      {
        v5 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
        {
          sub_100848164(v5);
        }

        return;
      }

      if (!sub_1005A5B44(1, v10, v9, 0xF0u))
      {
        goto LABEL_27;
      }
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_1008481E8();
    }

    goto LABEL_27;
  }

  while (!strstr(v0, "wifibt-external"))
  {
    v0 = strtok(0, " ");
    if (!v0)
    {
      goto LABEL_2;
    }
  }

  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Thunderbolt to PCIe expansion chassis, so skip loading calibration data", v7, 2u);
  }
}

void sub_1005A0DF4()
{
  v21 = 0;
  v20 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  memset(&v17, 0, sizeof(v17));
  v0 = sub_100007E30(&v17, ".ptb");
  v2 = sub_10009B9DC(v0, v1);
  if (v2 == 9)
  {
    goto LABEL_26;
  }

  v4 = sub_10000C7D0(v2, v3);
  if (*(v4 + 800) >> 3 >= 0x271u && *(sub_10000C7D0(v4, v5) + 800) >> 4 <= 0x176u)
  {
    std::string::assign(&v17, ".ptx");
  }

  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Load and send regulatory data to host controller", buf, 2u);
  }

  v7 = sub_100017E6C();
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100008904(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  v8 = (*(*v7 + 448))(v7, &__p, &v21, &v20, v18, 0);
  v10 = v8;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v10)
    {
LABEL_12:
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_10084821C();
      }

      goto LABEL_26;
    }
  }

  else if (v8)
  {
    goto LABEL_12;
  }

  v11 = sub_10000C7D0(v8, v9);
  if (*(v11 + 800) >> 3 < 0x271u || (v11 = sub_10000C7D0(v11, v12), *(v11 + 800) >> 4 > 0x176u))
  {
    if (v20 < 251)
    {
      v14 = sub_10000C7D0(v11, v12);
      v13 = (*(*v14 + 4288))(v14, v21, v20, 1);
    }

    else
    {
      v13 = sub_1005A5928(v21, v20, 0xCFu);
    }

    if (v13 && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100848250();
    }
  }

  else
  {
    sub_1005A5B44(0, v21, v20, 0xF0u);
  }

  if (v21)
  {
    free(v21);
  }

LABEL_26:
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_1005A1064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A10B0(uint64_t a1, char a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 240);
  *(a1 + 572) = a2;
  return sub_1000088CC(v5);
}

void sub_1005A10F8(os_unfair_lock_s *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying stack listeners that the stack did start", v3, 2u);
  }

  sub_1005AA6AC(a1 + 16, &stru_100AFECD0);
}

uint64_t sub_1005A1174(uint64_t a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 160);
  if (*(a1 + 56) == 1)
  {
    v2 = sub_1005A40F8();
    *(a1 + 232) = v2;
    sub_100017F4C(v2, v3);
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848284();
  }

  sub_1000088CC(v5);
  return 111;
}

uint64_t sub_1005A1268(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "StackManager halting stack", buf, 2u);
  }

  *buf = 0;
  v32 = 0;
  sub_100007F88(buf, a1 + 160);
  v3 = *(a1 + 56);
  if (v3)
  {
    if (v3 == 2)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_10084830C();
      }

      v4 = 111;
      goto LABEL_39;
    }

    sub_10059ACE4(a1, 2u, 0);
    sub_10000801C(buf);
    v6 = qword_100BCE8D8;
    v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Starting event un-registerations", v30, 2u);
    }

    v9 = sub_10000C798(v7, v8);
    v10 = (*(*v9 + 120))(v9);
    if (v10)
    {
      v12 = sub_1000D999C(v10, v11);
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = sub_1005A16C0;
      v29[3] = &unk_100ADF8F8;
      v29[4] = a1;
      sub_10000D334(v12, v29);
    }

    v13 = sub_10000C798(v10, v11);
    if ((*(*v13 + 112))(v13))
    {
      v14 = sub_100017E6C();
      sub_1005AB97C(v14 + 584, a1 + 32);
    }

    v15 = sub_100017E6C();
    sub_10036F1AC(v15 + 384, a1 + 16);
    v28 = 0;
    v16 = sub_1000216B4(&v28);
    v18 = sub_10009B9DC(v16, v17);
    if (v18 == 7)
    {
      v20 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Hard reset transport...", v30, 2u);
      }

      if (sub_10022DE08())
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v21 = sub_10009B9DC(v18, v19);
      if (v21 == 8)
      {
        v23 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Hard reset transport...", v30, 2u);
        }

        if (sub_10022DE08())
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
LABEL_27:
            sub_100848348();
          }

LABEL_28:
          v4 = 1;
LABEL_38:
          sub_10002249C(&v28);
          goto LABEL_39;
        }
      }

      else if (sub_10009B9DC(v21, v22) == 9)
      {
        v24 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Do not execute FLR due to FLR limit-fatal check...neither hci reset", v30, 2u);
        }
      }

      else
      {
        sub_100022214(&v28);
        sub_1005A1714();
        sub_1000618AC(&v28);
      }
    }

    v25 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Configuring stack to halt", v30, 2u);
    }

    sub_10023B69C();
    v26 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Halting core stack", v30, 2u);
    }

    sub_10022DD58();
    sub_10022DD48();
    sub_100007FB8(buf);
    sub_1002D3624();
    sub_10059ACE4(a1, 3u, 0);
    v4 = 0;
    goto LABEL_38;
  }

  v5 = qword_100BCE8D8;
  v4 = 0;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "StackManager is already stopped", v30, 2u);
    v4 = 0;
  }

LABEL_39:
  sub_1000088CC(buf);
  return v4;
}

void sub_1005A16C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100848048();
  }

  v2 = off_100B54078;

  sub_1006FCB0C(v2, v1 + 48);
}

_BYTE *sub_1005A1714()
{
  v13 = 0;
  sub_1000216B4(&v13);
  v0 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "Sending HCI reset", buf, 2u);
  }

  byte_100BCE820 = 1;
  sub_100018960(55, sub_1005A470C, v1, v2, v3, v4, v5, v6, v10);
  sub_100022214(&v13);
  v7 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Waiting for controller reset complete", buf, 2u);
  }

  *buf = 0;
  v12 = 0;
  sub_100007F88(buf, &stru_100BCE7E0);
  if (byte_100BCE820 == 1)
  {
    sub_1003645F8(&stru_100BCE7B0, buf);
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reset complete", &v10, 2u);
  }

  sub_1000088CC(buf);
  return sub_10002249C(&v13);
}

void sub_1005A1874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  sub_10002249C((v5 - 33));
  _Unwind_Resume(a1);
}

uint64_t sub_1005A189C(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "StackManager shutting down", buf, 2u);
  }

  *buf = 0;
  v39 = 0;
  sub_100007F88(buf, a1 + 160);
  v3 = *(a1 + 56);
  if (!v3)
  {
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "StackManager is already stopped", v37, 2u);
    }

    goto LABEL_41;
  }

  if (v3 == 3)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848384();
    }

    goto LABEL_41;
  }

  if (v3 != 2)
  {
    sub_10059ACE4(a1, 2u, 0);
    sub_10000801C(buf);
    if (*(a1 + 234) == 1)
    {
      v8 = sub_10000C7D0(v6, v7);
      if (*(v8 + 800))
      {
        if (*(sub_10000C7D0(v8, v9) + 800) <= 0x7CFu)
        {
          v10 = qword_100BCE8D8;
          v11 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
          if (v11)
          {
            *v37 = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "StackManager preparing for chip power down", v37, 2u);
          }

          v13 = sub_10000C7D0(v11, v12);
          if (*(v13 + 800) <= 0x12u)
          {
            v15 = sub_10000C7D0(v13, v14);
            if ((*(*v15 + 1304))(v15, 0))
            {
              v37[0] = 0;
              sub_1000216B4(v37);
              sub_10024E230();
              sub_100022214(v37);
              sub_10002249C(v37);
            }
          }
        }
      }
    }

    v16 = qword_100BCE8D8;
    v17 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Starting event un-registerations", v37, 2u);
    }

    v19 = sub_10000C798(v17, v18);
    v20 = (*(*v19 + 120))(v19);
    if (v20)
    {
      v22 = sub_1000D999C(v20, v21);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1005A1D98;
      v36[3] = &unk_100ADF8F8;
      v36[4] = a1;
      sub_10000D334(v22, v36);
    }

    v23 = sub_10000C798(v20, v21);
    if ((*(*v23 + 112))(v23))
    {
      v24 = sub_100017E6C();
      sub_1005AB97C(v24 + 584, a1 + 32);
    }

    v25 = sub_100017E6C();
    sub_10036F1AC(v25 + 384, a1 + 16);
    v26 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Configuring stack to stop", v37, 2u);
    }

    v37[0] = 0;
    sub_1000216B4(v37);
    sub_10023B680();
    sub_100022214(v37);
    sub_1005A1DEC(a1);
    sub_1000618AC(v37);
    byte_100BCE7AD = 1;
    v34 = sub_10024DFC8(sub_1005A1E68, v27, v28, v29, v30, v31, v32, v33);
    sub_100022214(v37);
    if (v34)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008483C0();
      }

      byte_100BCE7AD = 0;
    }

    else if (sub_1005A1F18(a1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848430();
    }

    sub_10059D2E4(a1);
    sub_10023B3B4(0);
    sub_100007FB8(buf);
    sub_10059ACE4(a1, 0, 0);
    *(a1 + 224) = 0;
    *(a1 + 226) = 0;
    *(a1 + 228) = 0;
    *(a1 + 231) = 0;
    *(a1 + 235) = 0;
    sub_10000801C(buf);
    if (qword_100B512F8 != -1)
    {
      sub_100847E68();
    }

    sub_1003B4134(off_100B512F0, *(a1 + 235));
    if (qword_100B50910 != -1)
    {
      sub_100847E40();
    }

    sub_1005BC7F8(0.0);
    sub_1001C4F3C();
    sub_1005A2018(a1);
    sub_10002249C(v37);
LABEL_41:
    v4 = 0;
    goto LABEL_42;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10084800C();
  }

  v4 = 111;
LABEL_42:
  sub_1000088CC(buf);
  return v4;
}

void sub_1005A1D98(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B54080 != -1)
  {
    sub_100848048();
  }

  v2 = off_100B54078;

  sub_1006FCB0C(v2, v1 + 48);
}

void sub_1005A1DEC(os_unfair_lock_s *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying stack listeners that the stack will stop", v3, 2u);
  }

  sub_1005AA6AC(a1 + 16, &stru_100AFECF0);
}

uint64_t sub_1005A1E68(uint64_t a1)
{
  v1 = a1;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "shutdownStackResetCommandCompleteCb status %{bluetooth:OI_STATUS}u", v4, 8u);
  }

  sub_100255224();
  return sub_1005A4698(v1);
}

uint64_t sub_1005A1F18(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, &stru_100BCE708);
  if (byte_100BCE7AD == 1 && !sub_10002220C(&stru_100BCE748, v6, 0x3A98uLL))
  {
    sub_100007E30(v5, "");
    sub_100007E30(v4, "");
    sub_1005A24D4(a1, 9500, v5, 1, 4, 0, v4);
  }

  v2 = dword_100BCE7A8;
  sub_1000088CC(v6);
  return v2;
}

void sub_1005A1FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1000088CC(v20 - 32);
  _Unwind_Resume(a1);
}

void sub_1005A2018(os_unfair_lock_s *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Notifying stack listeners that the stack did stop", v3, 2u);
  }

  sub_1005AA6AC(a1 + 16, &stru_100AFED10);
}

uint64_t sub_1005A2094(uint64_t a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 504);
  if (*(a1 + 568) == a2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v10 = a2;
      v11 = 1024;
      v12 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Not writing default airplane mode grant list state. As current state (%d) == new state (%d)", buf, 0xEu);
    }
  }

  else
  {
    if (a2 == 2)
    {
      v5 = @"on";
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 568) = a2;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = a2;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Write default airplane mode grant list state: %d to CFPrefs", buf, 8u);
    }

    CFPreferencesSetAppValue(@"defaultAirplaneModeDenylistState", v5, @"com.apple.BTServer");
    CFPreferencesAppSynchronize(@"com.apple.BTServer");
  }

  return sub_1000088CC(v8);
}

uint64_t sub_1005A221C(_BYTE *a1)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, (a1 + 160));
  if (a1[60])
  {
    if (qword_100B508A0 != -1)
    {
      sub_1008480AC();
    }

    v2 = sub_100575554(off_100B50898);
    a1[229] = (a1[235] ^ 1) & v2;
    sub_100017F4C(v2, v3);
    operator new();
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008484A0();
  }

  sub_1000088CC(v5);
  return 111;
}

uint64_t sub_1005A2338(const std::string *a1, std::string *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, &a1[6].__r_.__value_.__r.__words[2]);
  if (a1[2].__r_.__value_.__s.__data_[12])
  {
    sub_10000801C(v7);
    v6[0] = 0;
    v6[1] = 0;
    sub_100007F88(v6, &a1[10]);
    std::string::operator=(a2, a1 + 13);
    sub_1000088CC(v6);
    v4 = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v4 = 111;
  }

  sub_1000088CC(v7);
  return v4;
}

void sub_1005A23E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000088CC(&a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005A2410(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    dispatch_once(&qword_100B50AA0, &stru_100AFEE40);
  }

  v2 = off_100B50A98;
  v3 = *(a1 + 40);
  sub_100007E30(v5, *(a1 + 32));
  sub_100007E30(v4, "");
  sub_1005A24D4(v2, v3, v5, 0, 0, 0, v4);
}

void sub_1005A24A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A24D4(uint64_t a1, int a2, __int128 *a3, char a4, int a5, int a6, uint64_t a7)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1005A70E8;
  block[3] = &unk_100AFEC60;
  block[4] = a1;
  v18 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100008904(&v15, *a3, *(a3 + 1));
  }

  else
  {
    v15 = *a3;
    v16 = *(a3 + 2);
  }

  v21 = a4;
  v19 = a5;
  v20 = a6;
  v17 = a7;
  if (qword_100B6F608 != -1)
  {
    dispatch_once(&qword_100B6F608, block);
  }

  sleep(0x384u);
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v23 = 15;
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "We've been sleeping for %d minutes during a coredump, restarting", buf, 8u);
  }

  v12 = sub_10000E92C();
  sub_100007E30(&v13, "");
  sub_100693260(v12, 3706, &v13, 1);
}

void sub_1005A263C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A2678(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_100017F4C(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005A26F4;
  v5[3] = &unk_100AF3580;
  v6 = a3;
  sub_10000CA94(v4, v5);
}

void sub_1005A26F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F034(a1, a2);
  if (v3)
  {
    v5 = sub_10000F034(v3, v4);
    v6 = *(a1 + 32);
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
    (*(*v5 + 112))(v5, 2, v6, __p);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1005A2770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A278C(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    if (qword_100B53FE8 != -1)
    {
      sub_100848568();
    }

    v3 = qword_100B53FE0;
    sub_100007E30(v6, "TransportError");
    sub_100007E30(__p, "TransportErrorDeviceOfflineError");
    sub_1005780BC(v3, v6, __p, 60.0);
  }

  else
  {
    if (a2)
    {
      return;
    }

    if (qword_100B53FE8 != -1)
    {
      sub_100848568();
    }

    v2 = qword_100B53FE0;
    sub_100007E30(v6, "TransportError");
    sub_100007E30(__p, "TransportErrorNoMemError");
    sub_1005780BC(v2, v6, __p, 60.0);
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1005A2890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A28CC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  snprintf(byte_100B6F100, 0x200uLL, "AppleBT Device Error (Recovery)\n Code: %llu\n Reason: %s\n", a3, a4);
  v7 = snprintf(byte_100B6F300, 0x200uLL, "AppleBT Device Error (Recovery) Code: %llu Reason: %s", a3, a4);
  qword_100B55118 = byte_100B6F100;
  qword_100B55148 = a3;
  v9 = sub_10000F034(v7, v8);
  if (v9)
  {
    v11 = sub_10000F034(v9, v10);
    sub_100007E30(__p, a4);
    (*(*v11 + 112))(v11, a2, a3, __p);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (qword_100B53FE8 != -1)
  {
    sub_10084857C();
  }

  v12 = qword_100B53FE0;
  sub_100007E30(__p, "FWErrorDeviceError");
  sub_100007E30(v13, a4);
  sub_1005780BC(v12, __p, v13, 60.0);
  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005A2A24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A2A5C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005A2AE8;
  v4[3] = &unk_100AE0860;
  v5 = a2;
  v6 = a3;
  v4[4] = a4;
  if (qword_100B6F500 != -1)
  {
    dispatch_once(&qword_100B6F500, v4);
  }
}

void sub_1005A2AE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F034(a1, a2);
  if (v3)
  {
    v5 = sub_10000F034(v3, v4);
    v6 = *(a1 + 40);
    v7 = *(a1 + 44);
    sub_100007E30(__p, *(a1 + 32));
    (*(*v5 + 112))(v5, v6, v7, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1005A2B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A2B98(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  result = sub_1005A2C14(off_100B50A98);
  if (result)
  {
    *(a1 + 8) = 1;
  }

  else
  {
    *(a1 + 16) = 100;
    v4 = sub_100017F4C(result, v3);

    return sub_100070A6C(v4, a1);
  }

  return result;
}

uint64_t sub_1005A2C14(uint64_t a1)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 160);
  v2 = *(a1 + 56);
  if (v2 != 2)
  {
    if (!v2)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008485A4();
      }

      sub_10000801C(v19);
      if (qword_100B508A0 != -1)
      {
        sub_1008480AC();
      }

      v3 = 111;
      goto LABEL_23;
    }

    if (*(a1 + 224) != 1)
    {
      v7 = *(a1 + 228);
      if (v7 != *(a1 + 229))
      {
        buf[0] = 0;
        sub_1000216B4(buf);
        if (*(a1 + 229))
        {
          v17 = 2;
        }

        else
        {
          v17 = 0;
        }

        v18 = sub_10024401C(sub_1005A3088, v17, v11, v12, v13, v14, v15, v16);
        sub_100022214(buf);
        if (v18)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_1008485E0();
          }

          sub_10000801C(v19);
          if (qword_100B508A0 != -1)
          {
            sub_1008480AC();
          }

          sub_1000971F4(off_100B50898, 2, 1);
        }

        else
        {
          *(a1 + 224) = 1;
          *(a1 + 230) = *(a1 + 229);
        }

        sub_10002249C(buf);
        goto LABEL_24;
      }

      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "not discoverable";
        if (v7)
        {
          v9 = "discoverable";
        }

        *buf = 136446210;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Local device state is already %{public}s", buf, 0xCu);
      }

      sub_10000801C(v19);
      if (qword_100B508A0 != -1)
      {
        sub_1008480AC();
      }

      if (*(a1 + 228))
      {
        v3 = 122;
      }

      else
      {
        v3 = 123;
      }

LABEL_23:
      sub_1000971F4(off_100B50898, 2, v3);
LABEL_24:
      v5 = 1;
      goto LABEL_25;
    }
  }

  v4 = qword_100BCE8D8;
  v5 = 0;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "busy";
    if (v2 == 2)
    {
      v6 = "in flux";
    }

    *buf = 136446210;
    v21 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delaying discoverability change event as stack is %{public}s", buf, 0xCu);
    v5 = 0;
  }

LABEL_25:
  sub_1000088CC(v19);
  return v5;
}

uint64_t sub_1005A2F18(_BYTE *a1, int a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, (a1 + 160));
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848678();
    }
  }

  else
  {
    v4 = a1[230];
    a1[228] = v4;
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "not discoverable";
      if (v4)
      {
        v6 = "discoverable";
      }

      *buf = 136446210;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Local device is now %{public}s", buf, 0xCu);
    }
  }

  a1[224] = 0;
  sub_10000801C(v8);
  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  sub_1000971F4(off_100B50898, 2, a2 != 0);
  return sub_1000088CC(v8);
}

void sub_1005A3088(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = sub_100017F4C(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005AC0B0;
  v4[3] = &unk_100AE0900;
  v5 = v2;
  sub_10000CA94(v3, v4);
}

uint64_t sub_1005A3104(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 160);
  if ((*(a1 + 60) & 1) != 0 && sub_100243344() >= 4)
  {
    sub_1005A31F4();
    sub_10000801C(v9);
    v8 = 0;
    sub_1000216B4(&v8);
    if (sub_10024E040(sub_1005A401C, 1, byte_100B6F508, v2, v3, v4, v5, v6) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848704();
    }

    sub_10002249C(&v8);
  }

  return sub_1000088CC(v9);
}

void sub_1005A31CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14)
{
  sub_10002249C(&a13);
  sub_1000088CC(&a14);
  _Unwind_Resume(a1);
}

void sub_1005A31F4()
{
  bzero(byte_100B6F508, dword_100B6F640);
  v0 = strlen(aIos_0);
  byte_100B6F508[0] = v0 + 1;
  byte_100B6F509 = 9;
  v1 = (v0 + 1);
  memcpy(&unk_100B6F50A, aIos_0, v1 - 1);
  v2 = v1 + 1;
  dword_100B6F640 = v2;
  LOBYTE(v100) = 0;
  v99 = 0;
  v3 = sub_10000E92C();
  sub_100007E30(buf, "WiAP");
  sub_100007E30(&__p, "enableSink");
  v4 = (*(*v3 + 72))(v3, buf, &__p, &v100);
  if (SBYTE1(v107) < 0)
  {
    operator delete(__p);
  }

  if (SBYTE7(v109) < 0)
  {
    operator delete(*buf);
  }

  if (v100 == 1)
  {
    v6 = sub_10000E92C();
    sub_100007E30(buf, "CarPlay");
    sub_100007E30(&__p, "enableLeCarPlay");
    v4 = (*(*v6 + 72))(v6, buf, &__p, &v99);
    if (SBYTE1(v107) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v109) < 0)
    {
      operator delete(*buf);
    }
  }

  v7 = dword_100B6F640;
  *&byte_100B6F508[dword_100B6F640] = 301990656;
  dword_100B6F640 = v7 + 4;
  v8 = sub_10000C798(v4, v5);
  v9 = (*(*v8 + 56))(v8, 1);
  if (v9)
  {
    v11 = dword_100B6F640;
    *&byte_100B6F508[dword_100B6F640] = 4383;
    dword_100B6F640 = v11 + 2;
    v12 = qword_100BCE8D8;
    v9 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Advertising HFP AG", buf, 2u);
    }
  }

  v13 = sub_10000C798(v9, v10);
  v14 = (*(*v13 + 56))(v13, 2);
  if (v14)
  {
    v16 = dword_100B6F640;
    *&byte_100B6F508[dword_100B6F640] = 4399;
    dword_100B6F640 = v16 + 2;
    v17 = qword_100BCE8D8;
    v14 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Advertising PBAP Server", buf, 2u);
    }
  }

  v18 = sub_10000C798(v14, v15);
  v19 = (*(*v18 + 56))(v18, 16);
  if (v19)
  {
    v21 = dword_100B6F640;
    *&byte_100B6F508[dword_100B6F640] = 4362;
    dword_100B6F640 = v21 + 2;
    v22 = qword_100BCE8D8;
    v19 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Advertising A2DP Source", buf, 2u);
    }
  }

  v23 = sub_10000C798(v19, v20);
  v24 = (*(*v23 + 56))(v23, 8);
  if (v24)
  {
    v26 = dword_100B6F640;
    *&byte_100B6F508[dword_100B6F640] = 4364;
    dword_100B6F640 = v26 + 2;
    v27 = qword_100BCE8D8;
    v24 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Advertising AVRCP Target", buf, 2u);
    }
  }

  v28 = sub_10000C798(v24, v25);
  v29 = (*(*v28 + 56))(v28, 256);
  if (v29)
  {
    LOBYTE(__p) = 0;
    v98 = 0;
    v97 = 0;
    v31 = sub_100017E6C();
    v29 = (*(*v31 + 32))(v31, &__p, &v98, &v97);
    if (__p == 1)
    {
      v32 = dword_100B6F640;
      *&byte_100B6F508[dword_100B6F640] = 4374;
      dword_100B6F640 = v32 + 2;
      v33 = qword_100BCE8D8;
      v29 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "Advertising PAN-NAP", buf, 2u);
      }
    }
  }

  v34 = sub_10000C798(v29, v30);
  v35 = (*(*v34 + 56))(v34, 2048);
  if (v35)
  {
    if (qword_100B508A0 != -1)
    {
      sub_1008480AC();
    }

    v35 = sub_100573910(off_100B50898);
    if (v35)
    {
      v37 = dword_100B6F640;
      *&byte_100B6F508[dword_100B6F640] = 4373;
      dword_100B6F640 = v37 + 2;
      v38 = qword_100BCE8D8;
      v35 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
      if (v35)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Advertising PAN-U", buf, 2u);
      }
    }
  }

  v39 = sub_10000C798(v35, v36);
  if ((*(*v39 + 56))(v39, 512))
  {
    v40 = dword_100B6F640;
    *&byte_100B6F508[dword_100B6F640] = 4402;
    dword_100B6F640 = v40 + 2;
    v41 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Advertising MAP Server", buf, 2u);
    }
  }

  v98 = 0;
  v42 = sub_10000E92C();
  v43 = (*(*v42 + 8))(v42);
  if (v43)
  {
    v45 = sub_10000E92C();
    sub_100007E30(buf, "CATT");
    sub_100007E30(&__p, "DisableSdp");
    v43 = (*(*v45 + 72))(v45, buf, &__p, &v98);
    if (SBYTE1(v107) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v109) < 0)
    {
      operator delete(*buf);
    }
  }

  if ((v98 & 1) == 0)
  {
    v46 = sub_10000C798(v43, v44);
    v43 = (*(*v46 + 56))(v46, 0x100000);
    if (v43)
    {
      v47 = dword_100B6F640;
      *&byte_100B6F508[dword_100B6F640] = 6145;
      dword_100B6F640 = v47 + 2;
      v48 = qword_100BCE8D8;
      v43 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
      if (v43)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_INFO, "Advertising GATT Source", buf, 2u);
      }
    }
  }

  v49 = sub_10000C798(v43, v44);
  v50 = (*(*v49 + 56))(v49, 0x20000);
  if (v50)
  {
    if (v100 == 1 && v99 == 1)
    {
      v52 = dword_100B6F640;
      *&byte_100B6F508[dword_100B6F640] = -876;
      dword_100B6F640 = v52 + 2;
      v53 = qword_100BCE8D8;
      v50 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
      if (v50)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "Advertising LE CarPlay", buf, 2u);
      }
    }
  }

  v54 = dword_100B6F640;
  byte_100B6F508[v2] = dword_100B6F640 - v0 - 3;
  *&byte_100B6F508[v54] = 117441793;
  dword_100B6F640 = v54 + 4;
  v55 = sub_10000C798(v50, v51);
  v56 = (*(*v55 + 56))(v55, 128);
  if (v56 && (v100 & 1) == 0)
  {
    v97 = 0;
    v58 = sub_10000E92C();
    sub_100007E30(buf, "IAP");
    sub_100007E30(&__p, "enableIAP");
    v59 = (*(*v58 + 72))(v58, buf, &__p, &v97);
    if (SBYTE1(v107) < 0)
    {
      operator delete(__p);
    }

    if (SBYTE7(v109) < 0)
    {
      operator delete(*buf);
    }

    if ((v97 & 1) != 0 || (v61 = sub_10000C798(v59, v60), v56 = (*(*v61 + 416))(v61), (v56 & 1) == 0))
    {
      v62 = dword_100B6F640;
      v63 = &dword_10000000C + 3;
      v64 = dword_100B6F640;
      do
      {
        byte_100B6F508[v64++] = byte_1008AA57E[v63--];
      }

      while (v63 != -1);
      v65 = v62 + 16;
      dword_100B6F640 = v62 + 16;
      for (i = &dword_10000000C + 3; i != -1; --i)
      {
        byte_100B6F508[v65++] = byte_1008AA58E[i];
      }

      dword_100B6F640 = v62 + 32;
      v67 = qword_100BCE8D8;
      v56 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
      if (v56)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_INFO, "Advertising WiAP", buf, 2u);
      }
    }
  }

  v68 = sub_10000C798(v56, v57);
  v69 = (*(*v68 + 56))(v68, 0x20000);
  if (v69)
  {
    if (v100 == 1)
    {
      v71 = dword_100B6F640;
      v72 = &dword_10000000C + 3;
      v73 = dword_100B6F640;
      do
      {
        byte_100B6F508[v73++] = byte_1008AA59E[v72--];
      }

      while (v72 != -1);
      v74 = v71 + 16;
      dword_100B6F640 = v71 + 16;
      for (j = &dword_10000000C + 3; j != -1; --j)
      {
        byte_100B6F508[v74++] = byte_1008AA5AE[j];
      }

      dword_100B6F640 = v71 + 32;
      v76 = qword_100BCE8D8;
      v69 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO);
      if (v69)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_INFO, "Advertising WiAP Sink and Classic CarPlay", buf, 2u);
      }
    }
  }

  v77 = sub_10000C798(v69, v70);
  if ((*(*v77 + 56))(v77, 0x40000))
  {
    LOBYTE(__p) = 0;
    v78 = sub_100017E6C();
    if (!(*(*v78 + 152))(v78, &__p) && __p == 1)
    {
      v79 = dword_100B6F640;
      v80 = &dword_10000000C + 3;
      v81 = dword_100B6F640;
      do
      {
        byte_100B6F508[v81++] = byte_1008AA5BE[v80--];
      }

      while (v80 != -1);
      dword_100B6F640 = v79 + 16;
      v82 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "Advertising  CarPlay Gateway", buf, 2u);
      }
    }
  }

  v83 = dword_100B6F640;
  byte_100B6F508[v54 + 2] = dword_100B6F640 - v54 - 3;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  *buf = 0u;
  v109 = 0u;
  v100 = 0;
  *&byte_100B6F508[v83] = 1275133696;
  dword_100B6F640 = v83 + 4;
  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  v84 = sub_10057384C(off_100B50898, buf, &v100);
  v85 = v100;
  if (v100)
  {
    v86 = v84;
  }

  else
  {
    v86 = 0;
  }

  if (v86 == 1)
  {
    v87 = dword_100B6F640;
    v88 = dword_100B6F640 + v100;
    if (v88 > 240)
    {
      v89 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        __p = __PAIR64__(v85, 67109888);
        v102 = 1024;
        v103 = v87;
        v104 = 1024;
        v105 = v88;
        v106 = 1024;
        v107 = 240;
        _os_log_error_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "EIR data length: %d + constEirLen: %d = %d > %d", &__p, 0x1Au);
      }
    }

    else
    {
      memcpy(&byte_100B6F508[dword_100B6F640], buf, v100);
      dword_100B6F640 = v88;
    }
  }

  if (qword_100B50AC0 != -1)
  {
    sub_100848084();
  }

  v90 = sub_100598120(off_100B50AB8, buf, &v100);
  v91 = v100;
  if (v100)
  {
    v92 = v90;
  }

  else
  {
    v92 = 0;
  }

  v93 = dword_100B6F640;
  if (v92 != 1)
  {
    goto LABEL_97;
  }

  v94 = dword_100B6F640 + v100;
  if (v94 <= 240)
  {
    memcpy(&byte_100B6F508[dword_100B6F640], buf, v100);
    dword_100B6F640 = v94;
    goto LABEL_98;
  }

  v95 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    __p = __PAIR64__(v91, 67109888);
    v102 = 1024;
    v103 = v93;
    v104 = 1024;
    v105 = v94;
    v106 = 1024;
    v107 = 240;
    _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "Service specific EIR data length: %d + constEirLen: %d = %d > %d", &__p, 0x1Au);
    v94 = dword_100B6F640;
  }

  else
  {
LABEL_97:
    v94 = v93;
  }

LABEL_98:
  byte_100B6F508[v83] = v94 + ~v83;
  if (v94 >= 240)
  {
    v96 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100848774(v96);
    }
  }
}

void sub_1005A3FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A401C(uint64_t result)
{
  if (result)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008487F8();
    }
  }
}

uint64_t sub_1005A4070(uint64_t a1, uint64_t a2)
{
  v3 = sub_100017F4C(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005A40F0;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  sub_10000CA94(v3, v5);
  return 0;
}

BOOL sub_1005A40F8()
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  if (qword_100B50F88 != -1)
  {
    sub_100848868();
  }

  sub_10009DB3C(off_100B50F80, &v4);
  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  v0 = sub_100574E7C(off_100B50898);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v1 != v2 || v0;
}

void sub_1005A4198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A41B4(uint64_t a1, int a2, int a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 160);
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084887C();
    }
  }

  else
  {
    *(a1 + 231) = a3;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "not connectable";
      if (a3)
      {
        v7 = "connectable";
      }

      *buf = 136446210;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Local device is now %{public}s", buf, 0xCu);
    }
  }

  *(a1 + 224) = 0;
  sub_10000801C(v9);
  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  sub_1000971F4(off_100B50898, 3, a2 != 0);
  return sub_1000088CC(v9);
}

uint64_t sub_1005A4324(uint64_t a1)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 160);
  v2 = *(a1 + 56);
  if (v2 != 2)
  {
    if (!v2)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848908();
      }

      sub_10000801C(v18);
      if (qword_100B508A0 != -1)
      {
        sub_1008480AC();
      }

      v3 = 111;
      goto LABEL_23;
    }

    if (*(a1 + 224) != 1)
    {
      v7 = *(a1 + 231);
      if (v7 != *(a1 + 232))
      {
        buf[0] = 0;
        sub_1000216B4(buf);
        v17 = sub_1002443FC(sub_1005A4614, *(a1 + 232), v11, v12, v13, v14, v15, v16);
        sub_100022214(buf);
        if (v17)
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100848944();
          }

          sub_10000801C(v18);
          if (qword_100B508A0 != -1)
          {
            sub_1008480AC();
          }

          sub_1000971F4(off_100B50898, 3, 1);
        }

        else
        {
          *(a1 + 224) = 1;
        }

        sub_10002249C(buf);
        goto LABEL_24;
      }

      v8 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = "not connectable";
        if (v7)
        {
          v9 = "connectable";
        }

        *buf = 136446210;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Local device state is already %{public}s", buf, 0xCu);
      }

      sub_10000801C(v18);
      if (qword_100B508A0 != -1)
      {
        sub_1008480AC();
      }

      if (*(a1 + 231))
      {
        v3 = 120;
      }

      else
      {
        v3 = 121;
      }

LABEL_23:
      sub_1000971F4(off_100B50898, 3, v3);
LABEL_24:
      v5 = 1;
      goto LABEL_25;
    }
  }

  v4 = qword_100BCE8D8;
  v5 = 0;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "busy";
    if (v2 == 2)
    {
      v6 = "in flux";
    }

    *buf = 136446210;
    v20 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Delaying connectability change event as stack is %{public}s", buf, 0xCu);
    v5 = 0;
  }

LABEL_25:
  sub_1000088CC(v18);
  return v5;
}

void sub_1005A4614(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = sub_100017F4C(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005AC198;
  v5[3] = &unk_100AF5990;
  v6 = v3;
  v7 = v2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1005A4698(int a1)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100007F88(v3, &stru_100BCE708);
  byte_100BCE7AD = 0;
  dword_100BCE7A8 = a1;
  sub_10002286C(&stru_100BCE748);
  return sub_1000088CC(v3);
}

uint64_t sub_1005A470C()
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100007F88(v1, &stru_100BCE7E0);
  byte_100BCE820 = 0;
  sub_10002286C(&stru_100BCE7B0);
  return sub_1000088CC(v1);
}

void sub_1005A4774(uint64_t a1, int a2)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 160);
  v22 = 0uLL;
  sub_1000D38CC(&v22, 17);
  *(&v22 + 4) = 0xE220000003ALL;
  HIDWORD(v22) = a2;
  if ((a2 - 240) <= 0xFFFFFF10)
  {
    sub_1001BBC00();
  }

  if (a2 > 241)
  {
    if (a2 > 243)
    {
      if (a2 == 244)
      {
        v4 = 647;
        v5 = "Invalid packet length received from BT Chip";
        goto LABEL_21;
      }

      if (a2 == 245)
      {
        v4 = 3703;
        v5 = "Core dump";
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (a2 == 242)
    {
      v4 = 645;
      v5 = "Invalid receive state from BT Chip";
    }

    else
    {
      v4 = 646;
      v5 = "Timed out in invalid receive state from BT Chip";
    }
  }

  else
  {
    if (a2 <= 239)
    {
      if (!a2)
      {
        v4 = 642;
        v5 = "BT chip received invalid data from iOS";
        goto LABEL_21;
      }

      if (a2 == 8)
      {
        v4 = 652;
        v5 = "Bt chip timed out while trying to transfer data to SPMI master";
        goto LABEL_21;
      }

LABEL_20:
      v4 = 648;
      v5 = "unknown";
      goto LABEL_21;
    }

    if (a2 == 240)
    {
      v4 = 643;
      v5 = "received invalid data from BT chip";
    }

    else
    {
      v4 = 644;
      v5 = "Timed out while waiting for data from BT Chip";
    }
  }

LABEL_21:
  v6 = qword_100BCE8D8;
  v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    *buf = 136446466;
    *&buf[4] = v5;
    v25 = 1024;
    v26 = a2;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Hardware error - %{public}s (%u)", buf, 0x12u);
  }

  v9 = *(a1 + 226);
  if ((v9 & 1) != 0 || *(a1 + 227) == 1)
  {
    v10 = qword_100BCE8D8;
    v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      v11 = "LE Test";
      if (v9)
      {
        v11 = "DUT";
      }

      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Can not restore state while in %{public}s mode", buf, 0xCu);
    }
  }

  if (a2 == 245)
  {
    v12 = sub_10000F034(v7, v8);
    if (v12)
    {
      v18 = sub_10000F034(v12, v13);
      sub_100007E30(buf, v5);
      (*(*v18 + 112))(v18, 1, 0, buf);
      if (v27 < 0)
      {
        operator delete(*buf);
      }
    }

    v14 = sub_10000E92C();
    (*(*v14 + 504))(v14, "UART core dump");
    v15 = sub_10000E92C();
    v16 = *(a1 + 384);
    if (*(a1 + 415) < 0)
    {
      sub_100008904(&__dst, *(a1 + 392), *(a1 + 400));
    }

    else
    {
      __dst = *(a1 + 392);
      v21 = *(a1 + 408);
    }

    sub_100693260(v15, v16, &__dst, 1);
  }

  v17 = sub_10000F034(v7, v8);
  (*(*v17 + 40))(v17, &v22);
  sub_10000801C(v23);
  sub_100007E30(&v19, "");
  sub_100007E30(buf, v5);
  sub_1005A24D4(a1, v4, &v19, 1, 0, a2, buf);
}

void sub_1005A4B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a25);
  _Unwind_Resume(a1);
}

float sub_1005A4B80(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v2 = off_100B50A98;
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);
  v5 = *(a1 + 38);

  return sub_1005A4BDC(v2, v3, v4, v5);
}

float sub_1005A4BDC(uint64_t a1, int a2, int a3, int a4)
{
  v6 = *(a1 + 56);
  if (v6 == 1)
  {
    if (sub_10000EFCC())
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      *buf = 0u;
      v16 = 0u;
      v14 = 0;
      sub_1000216B4(&v14);
      v10 = sub_10028A99C(a3);
      sub_100304ACC(buf, 256, "HCI stall detected, %s (0x%x)", v10, a3);
      sub_1001C4B04(buf);
      sub_100022214(&v14);
      sub_10002249C(&v14);
    }

    v11 = sub_10028A99C(a3);
    sub_100007E30(&v13, v11);
    sub_100007E30(buf, "");
    sub_1005A24D4(a1, 621, &v13, 1, 5, a3 | (a4 << 16), buf);
  }

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109888;
    *&buf[4] = v6;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    *&buf[14] = 1024;
    LODWORD(v16) = a4;
    WORD2(v16) = 1024;
    *(&v16 + 6) = a2;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "HCI event timeout occured during state %d on opcode 0x%x with subopcode 0x%x due to %{bluetooth:OI_STATUS}u, ignoring", buf, 0x1Au);
  }

  return result;
}

void sub_1005A4D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A4DC8(uint64_t a1)
{
  if (sub_10000EFCC())
  {
    memset(v14, 0, sizeof(v14));
    v13 = 0;
    sub_1000216B4(&v13);
    v2 = *(a1 + 32);
    v3 = *(a1 + 36);
    switch(v2)
    {
      case 607:
        sub_100304ACC(v14, 256, "Unknown event received, eventId (0x%x)");
        break;
      case 651:
        sub_100304ACC(v14, 256, "HCI Event Data Underrun, eventId (0x%x)");
        break;
      case 635:
        v4 = sub_10028A99C(v3);
        sub_100304ACC(v14, 256, "Orphaned event detected, cmdOpcode %s (0x%x)", v4, *(a1 + 36));
        break;
      default:
        sub_100304ACC(v14, 256, "Unexpected HCI Event Error callback, status (0x%x), cmdOpcode %s (0x%x)", *(a1 + 32), v3, v10);
        break;
    }

    sub_1001C4B04(v14);
    sub_100022214(&v13);
    sub_10002249C(&v13);
  }

  if (*(a1 + 32) == 635)
  {
    if (qword_100B50AA0 != -1)
    {
      dispatch_once(&qword_100B50AA0, &stru_100AFEE40);
    }

    v5 = off_100B50A98;
    v6 = *(a1 + 32);
    v7 = sub_10028A99C(*(a1 + 36));
    sub_100007E30(&v12, v7);
    sub_100007E30(v14, "");
    sub_1005A24D4(v5, v6, &v12, 0, 0, 0, v14);
  }

  if (qword_100B50AA0 != -1)
  {
    dispatch_once(&qword_100B50AA0, &stru_100AFEE40);
  }

  v8 = off_100B50A98;
  v9 = *(a1 + 32);
  sub_100007E30(&v11, "");
  sub_100007E30(v14, "");
  sub_1005A24D4(v8, v9, &v11, 0, 0, 0, v14);
}

void sub_1005A4FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A5040(uint64_t a1, int a2)
{
  if (a2 > 2403)
  {
    if (a2 > 2409)
    {
      switch(a2)
      {
        case 2410:
          return 24;
        case 2411:
          return 22;
        case 2414:
          return 21;
      }
    }

    else
    {
      switch(a2)
      {
        case 2404:
          return 18;
        case 2405:
          return 19;
        case 2408:
          return 23;
      }
    }

    return 11;
  }

  if (a2 <= 2400)
  {
    if (a2 == 11)
    {
      return 14;
    }

    if (a2 == 2400)
    {
      return 15;
    }

    return 11;
  }

  if (a2 == 2401)
  {
    return 16;
  }

  if (a2 == 2402)
  {
    return 20;
  }

  return 17;
}

void sub_1005A5110(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  v6 = a2;
  v8 = sub_10009B9DC(a1, a2);
  if (v8 == 7)
  {
    if ((a3 & 1) == 0)
    {
      v10 = sub_10009B9DC(v8, v9);
      goto LABEL_8;
    }

LABEL_13:
    sub_100007E30(&v20, "chip boot failure");
    if (a4[23] < 0)
    {
      a4 = *a4;
    }

    sub_100007E30(v19, a4);
    sub_1005A24D4(a1, 1214, &v20, 1, 11, 0, v19);
  }

  v11 = sub_10009B9DC(v8, v9);
  if (v11 == 9 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  v10 = sub_10009B9DC(v11, v12);
  if (v10 == 8 && a3)
  {
    v13 = sub_1005A5040(v10, v6);
    v14 = a4;
    if (a4[23] < 0)
    {
      v14 = *a4;
    }

    sub_1005A2A5C(v13, v13, 0, v14);
    if (v6 == 2411)
    {
      if (a4[23] < 0)
      {
        a4 = *a4;
      }

      sub_1005A2A5C(v15, 11, 0, a4);
      sub_10022DE3C();
      v16 = sub_10000E92C();
      sub_100007E30(v18, "chip boot failure - device fatal error");
      sub_100693260(v16, 1220, v18, 1);
    }

    sub_100007E30(&v17, "chip boot failure");
    if (a4[23] < 0)
    {
      a4 = *a4;
    }

    sub_100007E30(v19, a4);
    sub_1005A24D4(a1, 1214, &v17, 1, 11, 0, v19);
  }

LABEL_8:
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  sub_1005A2A5C(v10, 12, 0, a4);
}

void sub_1005A52C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A5348(const __CFString *a1, UInt8 **a2, _WORD *a3)
{
  if ((*(sub_10000C7D0(a1, a2) + 800) - 5000) > 0x3E7)
  {
    v7 = "bluetooth";
  }

  else
  {
    v6 = IOServiceNameMatching("AppleSunriseHALDevice");
    if (v6)
    {
      goto LABEL_6;
    }

    v7 = "AppleSunriseWLAN";
  }

  v6 = IOServiceNameMatching(v7);
  if (!v6)
  {
    return 131;
  }

LABEL_6:
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
  if (!MatchingService)
  {
    return 131;
  }

  v9 = MatchingService;
  v10 = IORegistryEntrySearchCFProperty(MatchingService, "IODeviceTree", a1, kCFAllocatorDefault, 1u);
  if (v10)
  {
    v11 = v10;
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v11))
    {
      Length = CFDataGetLength(v11);
      v14 = Length;
      if (Length)
      {
        v15 = malloc_type_malloc(Length, 0x100004077774924uLL);
        *a2 = v15;
        v18.location = 0;
        v18.length = v14;
        CFDataGetBytes(v11, v18, v15);
      }

      *a3 = v14;
    }

    CFRelease(v11);
    v16 = 0;
  }

  else
  {
    v16 = 131;
  }

  IOObjectRelease(v9);
  return v16;
}

uint64_t sub_1005A548C(const void **a1, void *a2, uint64_t a3)
{
  v4 = AMFDRSealingMapCopyLocalDictForClass();
  v5 = v4;
  if (!a1 || !v4)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    Value = *a1;
    if (!*a1)
    {
      goto LABEL_8;
    }

LABEL_7:
    CFRetain(Value);
    v7 = 0;
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(v4, @"BTBF");
  *a1 = Value;
  if (Value)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7 = 131;
LABEL_9:
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

uint64_t sub_1005A5540(UInt8 **a1, _WORD *a2)
{
  theData = 0;
  cf = 0;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Loading calibration of FATP stage", buf, 2u);
  }

  if (!sub_1005A548C(&theData, &cf, @"BWCl"))
  {
    goto LABEL_12;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FATP stage calibration not found, looking for Golden calibration from SMT", buf, 2u);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v6 = sub_1005A548C(&theData, &cf, @"0BCl");
  if (v6)
  {
    v7 = v6;
    v8 = cf;
    if (cf)
    {
      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        Code = CFErrorGetCode(v8);
        *buf = 134217984;
        v19 = Code;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Loading FDR data got error %ld", buf, 0xCu);
      }
    }
  }

  else
  {
LABEL_12:
    Length = CFDataGetLength(theData);
    v12 = Length;
    if (Length)
    {
      v13 = malloc_type_malloc(Length, 0x100004077774924uLL);
      *a1 = v13;
      v20.location = 0;
      v20.length = v12;
      CFDataGetBytes(theData, v20, v13);
      v14 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "btbf length %ld", buf, 0xCu);
      }
    }

    v7 = 0;
    *a2 = v12;
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t sub_1005A5774(uint64_t a1, _WORD *a2)
{
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  v13 = 0;
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Looking for fail safe calibration file", buf, 2u);
  }

  v5 = sub_100017E6C();
  sub_100007E30(__p, ".msf");
  v6 = (*(*v5 + 448))(v5, __p, a1, &v13, v14, 0);
  v7 = v6;
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v6)
  {
LABEL_5:
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100848B08();
    }

    v7 = 131;
    goto LABEL_11;
  }

  *a2 = v13;
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found fail safe calibration file", buf, 2u);
    v7 = 0;
  }

LABEL_11:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  return v7;
}

void sub_1005A58F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005A5928(char *a1, unsigned int a2, unsigned int a3)
{
  v5 = a1;
  v6 = a3;
  __chkstk_darwin(a1);
  v8 = &buf[-v7];
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v21 = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calibration/Regulatory data size %d", buf, 8u);
  }

  if ((((a2 / a3) - ((a2 % a3) == 0)) & 0x80) != 0)
  {
    return 1;
  }

  v10 = a2 / a3 - ((a2 % a3) == 0);
  v11 = (a2 % a3);
  while (1)
  {
    v12 = v6;
    if (!v10)
    {
      bzero(v8, v6);
      v12 = v11;
    }

    v13 = memcpy(v8, v5, v12);
    v15 = *sub_10000C7D0(v13, v14);
    v16 = a3 == 230 ? (*(v15 + 4280))() : (*(v15 + 4296))();
    v17 = v16;
    if (v16)
    {
      break;
    }

    v18 = v10--;
    v5 += v6;
    if (v18 < 1)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848B44();
  }

  return v17;
}

uint64_t sub_1005A5B44(int a1, uint64_t a2, int a3, unsigned int a4)
{
  v8 = qword_100BCE8D8;
  v9 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v11 = "Unknow";
    if (a1 == 1)
    {
      v11 = "BTCAL";
    }

    if (!a1)
    {
      v11 = "MCC";
    }

    v16 = 136315138;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Load (%s) Calibration to host controller", &v16, 0xCu);
  }

  if (!a3)
  {
    return 1;
  }

  while (1)
  {
    v12 = a3 >= a4 ? a4 : a3;
    LOWORD(a3) = a3 - v12;
    v13 = sub_10000C7D0(v9, v10);
    v9 = (*(*v13 + 4280))(v13, a1, a3, a2, v12, 1);
    if (v9)
    {
      break;
    }

    a2 += v12;
    if (!a3)
    {
      return 0;
    }
  }

  v14 = v9;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848BB4();
  }

  return v14;
}

uint64_t sub_1005A5CD8(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"GlobalAllowSoundProfile", @"com.apple.BTServer");
  v3 = 1;
  *(a1 + 488) = 1;
  if (v2)
  {
    if ([@"on" isEqualToString:v2])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    *(a1 + 488) = v3;
  }

  return v3;
}

uint64_t sub_1005A5D5C(uint64_t a1, int a2)
{
  *(a1 + 488) = a2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Spatial Spatial Profile Global Allowed Written:  %d", v6, 8u);
  }

  if (a2 == 1)
  {
    v4 = @"on";
  }

  else
  {
    v4 = @"off";
  }

  CFPreferencesSetAppValue(@"GlobalAllowSoundProfile", v4, @"com.apple.BTServer");
  return CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

uint64_t sub_1005A5E40(uint64_t a1, int a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 424);
  if (*(a1 + 488) != a2)
  {
    sub_1005A5D5C(a1, a2);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1005A5EB0(uint64_t a1)
{
  v2 = CFPreferencesCopyAppValue(@"GlobalAllowSpatial", @"com.apple.BTServer");
  if (v2)
  {
    if ([@"on" isEqualToString:v2])
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    *(a1 + 416) = v3;
  }

  else
  {
    v3 = *(a1 + 416);
  }

  return v3;
}

uint64_t sub_1005A5F38(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 424);
  if (*(a1 + 416) != v2)
  {
    sub_1005A5FA8(a1, v2);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1005A5FA8(uint64_t a1, int a2)
{
  *(a1 + 416) = a2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Spatial Audio Global Allowed Written:  %d", v6, 8u);
  }

  if (a2 == 1)
  {
    v4 = @"on";
  }

  else
  {
    v4 = @"off";
  }

  CFPreferencesSetAppValue(@"GlobalAllowSpatial", v4, @"com.apple.BTServer");
  return CFPreferencesAppSynchronize(@"com.apple.BTServer");
}

void sub_1005A608C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = qword_100BCE8D8;
  if (v7)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v17 = v7;
      v18 = 1024;
      v19 = a3;
      v20 = 1024;
      v21 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "StackManager setSpatialModeWithBundleID：%@, mode:%u, headtrack:%u", buf, 0x18u);
    }

    if (!*(a1 + 496))
    {
      v9 = sub_1005A6278(a1);
      v10 = *(a1 + 496);
      *(a1 + 496) = v9;
    }

    v11 = [NSNumber numberWithBool:a4, @"kCBMsgArgParamSpatialHeadTracking"];
    v14[1] = @"kCBMsgArgParamSpatialMode";
    v15[0] = v11;
    v12 = [NSNumber numberWithUnsignedInt:a3];
    v15[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];

    [*(a1 + 496) setObject:v13 forKey:v7];
    sub_1005A68E8(a1, *(a1 + 496));
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848C3C();
  }
}

id sub_1005A6278(uint64_t a1)
{
  v46[0] = 0;
  v46[1] = 0;
  sub_100007F88(v46, a1 + 424);
  v1 = *(a1 + 496);
  if (v1)
  {
    v2 = v1;
    goto LABEL_35;
  }

  v33 = CFPreferencesCopyAppValue(@"SpatialModeDict", @"com.apple.BTServer");
  v32 = [v33 mutableCopy];
  if (v32)
  {
    v36 = objc_alloc_init(NSMutableDictionary);
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v3 = v32;
    v4 = [v3 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (!v4)
    {
      v35 = 0;
      goto LABEL_24;
    }

    v35 = 0;
    v37 = *v43;
    while (1)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(v3);
        }

        v6 = *(*(&v42 + 1) + 8 * i);
        v7 = [v3 objectForKeyedSubscript:v6];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

LABEL_12:
          v10 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v3 objectForKeyedSubscript:v6];
            v12 = [v11 objectForKeyedSubscript:@"kCBMsgArgParamSpatialMode"];
            v13 = [v12 unsignedIntValue];
            v14 = [v3 objectForKeyedSubscript:v6];
            v15 = [v14 objectForKeyedSubscript:@"kCBMsgArgParamSpatialHeadTracking"];
            v16 = [v15 BOOLValue];
            *buf = 138412802;
            v49 = v6;
            v50 = 1024;
            v51 = v13;
            v52 = 1024;
            v53 = v16;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "StackManager Get Spatial Mode Bundle ID Dict, key: %@, value: %u headtrack: %u", buf, 0x18u);
          }

          continue;
        }

        v8 = [v3 objectForKeyedSubscript:v6];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          goto LABEL_12;
        }

        v17 = objc_alloc_init(NSMutableDictionary);
        v18 = [v3 objectForKeyedSubscript:v6];
        v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v18 unsignedIntValue]);

        [v17 setObject:v19 forKey:@"kCBMsgArgParamSpatialMode"];
        v20 = [NSNumber numberWithBool:1];
        [v17 setObject:v20 forKey:@"kCBMsgArgParamSpatialHeadTracking"];
        [v36 setObject:v17 forKey:v6];
        v21 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = [v3 objectForKeyedSubscript:v6];
          v23 = [v22 unsignedIntValue];
          *buf = 138412546;
          v49 = v6;
          v50 = 1024;
          v51 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "StackManager Converting Bundle ID Dict, key: %@, value: %u", buf, 0x12u);
        }

        v35 = 1;
      }

      v4 = [v3 countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (!v4)
      {
LABEL_24:

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v25 = v36;
        v26 = [v25 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v26)
        {
          v27 = *v39;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v39 != v27)
              {
                objc_enumerationMutation(v25);
              }

              v29 = *(*(&v38 + 1) + 8 * j);
              [v3 removeObjectForKey:v29];
              v30 = [v25 objectForKeyedSubscript:v29];
              [v3 setObject:v30 forKey:v29];
            }

            v26 = [v25 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v26);
        }

        if (v35)
        {
          sub_1005A68E8(a1, v3);
        }

        v2 = v3;

        goto LABEL_34;
      }
    }
  }

  v24 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "StackManager create a new dict", buf, 2u);
  }

  v2 = objc_alloc_init(NSMutableDictionary);
LABEL_34:

LABEL_35:
  sub_1000088CC(v46);

  return v2;
}

void sub_1005A67D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005A68E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 424);
  CFPreferencesSetAppValue(@"SpatialModeDict", v3, @"com.apple.BTServer");
  CFPreferencesAppSynchronize(@"com.apple.BTServer");
  sub_1000088CC(v4);
}

uint64_t sub_1005A6978(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 504);
  v2 = *(a1 + 568);
  if (v2)
  {
    v3 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Default airplane mode denylist state is %d", buf, 8u);
      v2 = *(a1 + 568);
    }

    goto LABEL_13;
  }

  v4 = CFPreferencesCopyAppValue(@"defaultAirplaneModeDenylistState", @"com.apple.BTServer");
  if (v4)
  {
    if ([@"on" isEqualToString:v4])
    {
      v5 = 2;
LABEL_9:
      *(a1 + 568) = v5;
      goto LABEL_10;
    }

    if ([@"off" isEqualToString:v4])
    {
      v5 = 1;
      goto LABEL_9;
    }
  }

LABEL_10:
  v6 = qword_100BCE8D8;
  v7 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  v2 = *(a1 + 568);
  if (v7)
  {
    *buf = 67109120;
    v11 = v2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Read from CFPRefs. Default airplane mode grant list state is %d", buf, 8u);
    v2 = *(a1 + 568);
  }

LABEL_13:
  sub_1000088CC(v9);
  return v2;
}

void sub_1005A6B28(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "BT");
  sub_100007E30(__p, "LogTimesyncReference");
  (*(*v1 + 72))(v1, buf, __p, &byte_100B6F600);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(*buf);
  }

  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (byte_100B6F600)
    {
      v3 = "not ";
    }

    else
    {
      v3 = "";
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TimesyncReference is %slogged", buf, 0xCu);
  }
}

void sub_1005A6C68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005A6CA4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005A70B4;
  v2[3] = &unk_100AFEC40;
  sub_1005A6FA0(off_100B50A98 + 24, v2);
}

void sub_1005A6D4C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1005A6EC0;
  v2[3] = &unk_100AFEC20;
  sub_1005A6DF4(off_100B50A98 + 32, v2);
}

void sub_1005A6DF4(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_1005A6EC0(void *a1, uint64_t a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    *v8 = 134218240;
    *&v8[4] = v5;
    *&v8[12] = 2048;
    *&v8[14] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling PCIE Timesync Event listener with PCIe Timesync event: Host Timestamp = %llu, FW Timestamp = %llu", v8, 0x16u);
  }

  *v8 = *(a1 + 2);
  *&v8[16] = a1[6];
  return (*a2)(*(a2 + 8), *(a2 + 16), v8);
}

void sub_1005A6FA0(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  sub_1005ACA74(&v10, *&a1[2]._os_unfair_lock_opaque, *&a1[4]._os_unfair_lock_opaque, (*&a1[4]._os_unfair_lock_opaque - *&a1[2]._os_unfair_lock_opaque) >> 4);
  os_unfair_lock_unlock(a1);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    while (1)
    {
      v8 = 0;
      v9 = 0;
      v6 = *(v4 + 8);
      if (v6)
      {
        break;
      }

LABEL_10:
      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_11;
      }
    }

    v7 = std::__shared_weak_count::lock(v6);
    v9 = v7;
    if (v7)
    {
      v8 = *v4;
      if (!v8)
      {
LABEL_8:
        if (v7)
        {
          sub_100117644(v7);
        }

        goto LABEL_10;
      }
    }

    else if (!v8)
    {
      goto LABEL_8;
    }

    v3[2](v3, &v8);
    v7 = v9;
    goto LABEL_8;
  }

LABEL_11:
  v8 = &v10;
  sub_1005AAD6C(&v8);
}

void sub_1005A70E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 72) == 3703)
  {
    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    sub_1001C4B04("Host Initiated Core Dump");
    sub_100022214(__p);
    sub_10002249C(__p);
  }

  __s = 0;
  memset(&v58, 0, sizeof(v58));
  sub_100007E30(&v58, "");
  v3 = sub_10000E92C();
  v4 = *(a1 + 72);
  v5 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    if (*(a1 + 48))
    {
      v6 = v5->__r_.__value_.__r.__words[0];
      goto LABEL_8;
    }
  }

  else
  {
    v6 = a1 + 40;
    if (*(a1 + 63))
    {
      goto LABEL_8;
    }
  }

  sub_1000CDD74(*(a1 + 72));
  v6 = v7;
LABEL_8:
  v8 = (*(*v3 + 520))(v3, v4, v6, &__s);
  std::string::operator=(&v58, (a1 + 40));
  if (__s)
  {
    sub_100007E30(&v57, __s);
    v15 = std::string::insert(&v57, 0, " ");
    v16 = *&v15->__r_.__value_.__l.__data_;
    v61 = v15->__r_.__value_.__r.__words[2];
    *__p = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (v61 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if (v61 >= 0)
    {
      v18 = HIBYTE(v61);
    }

    else
    {
      v18 = __p[1];
    }

    std::string::append(&v58, v17, v18);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    free(__s);
    __s = 0;
  }

  v9 = sub_10000E92C();
  v10 = (*(*v9 + 8))(v9);
  if (!v10)
  {
LABEL_60:
    if (*(a1 + 84) == 1 && (v25 = sub_10000F034(v10, v11)) != 0)
    {
      v30 = sub_10000F034(v25, v26);
      v50 = v2;
      v31 = *(a1 + 76);
      v32 = *(a1 + 80);
      sub_1004EE4EC(&v57, "-", *(a1 + 64));
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v58;
      }

      else
      {
        v33 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v58.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v57, v33, size);
      v36 = *&v35->__r_.__value_.__l.__data_;
      v61 = v35->__r_.__value_.__r.__words[2];
      *__p = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      (*(*v30 + 112))(v30, v31, v32, __p);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      v2 = v50;
      if (v8)
      {
LABEL_63:
        v27 = sub_10000E92C();
        v28 = *(a1 + 72);
        if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v58;
        }

        else
        {
          v29 = v58.__r_.__value_.__r.__words[0];
        }

        sub_100007E30(v54, v29);
        sub_100693260(v27, v28, v54, 1);
      }
    }

    else if (v8)
    {
      goto LABEL_63;
    }

    if ((sub_1001BBF38() & 1) == 0)
    {
      v42 = sub_10000E92C();
      if (*(a1 + 63) < 0)
      {
        v5 = v5->__r_.__value_.__r.__words[0];
      }

      v43 = *(a1 + 72);
      sub_100007E30(v53, v5);
      sub_100693260(v42, v43, v53, 1);
    }

    *(v2 + 384) = *(a1 + 72);
    v37 = std::string::operator=((v2 + 392), v5);
    v39 = sub_10000C7D0(v37, v38);
    if ((*(*v39 + 1248))(v39))
    {
      v44 = sub_10000E92C();
      if (*(a1 + 63) < 0)
      {
        v5 = v5->__r_.__value_.__r.__words[0];
      }

      v45 = *(a1 + 72);
      sub_100007E30(v52, v5);
      sub_100693260(v44, v45, v52, 1);
    }

    v40 = 0;
    while (1)
    {
      v41 = v40;
      sleep(0xAu);
      v40 = sub_1001BBF94();
      if (v40 == v41)
      {
        break;
      }

      if ((sub_100018C6C() & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    v40 = v41;
LABEL_91:
    v46 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 67109632;
      HIDWORD(__p[0]) = v40;
      LOWORD(__p[1]) = 1024;
      *(&__p[1] + 2) = v41;
      HIWORD(__p[1]) = 1024;
      LODWORD(v61) = 10;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "coreDumpPacketCounter:%d coreDumpLastPacketCounter:%d no change detected for %d seconds, aborting", __p, 0x14u);
    }

    v47 = sub_10000E92C();
    v48 = *(a1 + 72);
    sub_1004EE4EC(__p, " BD_COREDUMP_TOO_LONG", &v5->__r_.__value_.__l.__data_);
    if (v61 >= 0)
    {
      v49 = __p;
    }

    else
    {
      v49 = __p[0];
    }

    sub_100007E30(v51, v49);
    sub_100693260(v47, v48, v51, 1);
  }

  memset(&v57, 0, sizeof(v57));
  sub_100007E30(__p, "Firmware crash detected :(pc = 0xc6dce, lr = 0xc6de5, bcsReason = 0x0, trapReason = 0x5)");
  sub_100007E30(v62, "Firmware crash detected :(pc = 0x82c, lr = 0x7bf, bcsReason = 0x0, trapReason = 0x25)");
  sub_100007E30(v63, "pci error: kACIPCEnterLowPowerFailed: (0x2, 0x0)");
  sub_100007E30(v64, "chip boot failure");
  sub_100007E30(v65, "BD_VSC_LE_META_ADD_IRK_TO_LIST");
  sub_1000C1030(&v57, __p, 5);
  for (i = 0; i != -15; i -= 3)
  {
    if (SHIBYTE(v65[i + 2]) < 0)
    {
      operator delete(v65[i]);
    }
  }

  if (&v57.__r_.__value_.__r.__words[1] == sub_1000463C8(&v57, (a1 + 40)))
  {
    v13 = *(a1 + 72);
    if (v13 == 133)
    {
      if (qword_100B53FE8 != -1)
      {
        dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
      }

      v22 = qword_100B53FE0;
      sub_100007E30(__p, "FW Crash");
      sub_100007E30(v55, "OI_STATUS_ALREADY_CONNECTED");
      sub_1005780BC(v22, __p, v55, 60.0);
    }

    else
    {
      if (v13 != 652)
      {
        goto LABEL_39;
      }

      if (qword_100B53FE8 != -1)
      {
        dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
      }

      v14 = qword_100B53FE0;
      sub_100007E30(__p, "FW Crash");
      sub_100007E30(v55, "OI_HCI_HW_ERROR_SPMI_TIMEOUT");
      sub_1005780BC(v14, __p, v55, 60.0);
    }

    if (v56 < 0)
    {
      operator delete(v55[0]);
    }
  }

  else
  {
    v19 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Targeted FW Crash signature found, filing ABC Snapshot", __p, 2u);
    }

    if (qword_100B53FE8 != -1)
    {
      dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
    }

    v20 = qword_100B53FE0;
    sub_100007E30(__p, "FW Crash");
    sub_1005780BC(v20, __p, &v5->__r_.__value_.__l.__data_, 60.0);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p[0]);
  }

  v13 = *(a1 + 72);
LABEL_39:
  if (v13 == 621)
  {
    if (qword_100B53FE8 != -1)
    {
      dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
    }

    v23 = qword_100B53FE0;
    sub_100007E30(__p, "FW Crash");
    sub_100007E30(v55, "OI_HCI_EXPECTED_EVENT_TIMEOUT");
    sub_1005780BC(v23, __p, v55, 60.0);
  }

  else
  {
    if (v13 != 653)
    {
      if (qword_100B53FE8 != -1)
      {
        dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
      }

      v24 = qword_100B53FE0;
      sub_100007E30(__p, "FW Crash");
      sub_1005780BC(v24, __p, &v58.__r_.__value_.__l.__data_, 60.0);
      goto LABEL_57;
    }

    if (qword_100B53FE8 != -1)
    {
      dispatch_once(&qword_100B53FE8, &stru_100AFEFA0);
    }

    v21 = qword_100B53FE0;
    sub_100007E30(__p, "FW Crash");
    sub_100007E30(v55, "OI_HCI_HW_ERROR_DID_NOT_SLEEP");
    sub_1005780BC(v21, __p, v55, 60.0);
  }

  if (v56 < 0)
  {
    operator delete(v55[0]);
  }

LABEL_57:
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10004B61C(&v57, v57.__r_.__value_.__l.__size_);
  goto LABEL_60;
}

void sub_1005A7948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char *a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a59 < 0)
  {
    operator delete(a54);
  }

  sub_10004B61C(&a41, a42);
  if (a52 < 0)
  {
    operator delete(a47);
  }

  _Unwind_Resume(a1);
}

char *sub_1005A7B10(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100008904(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1005A7B3C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

void sub_1005A7B50(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    dispatch_once(&qword_100B50AA0, &stru_100AFEE40);
  }

  sub_1005A4774(off_100B50A98, *(a1 + 32));
}

void sub_1005A7B9C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 54);
  v4 = *(a1 + 55);

  sub_1005A7BF4(a1, v2, v3, 0, v4);
}

void sub_1005A7BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  if (a2)
  {
    if (qword_100B508F0 != -1)
    {
      sub_1008477A0();
    }

    v8 = sub_1000504C8(off_100B508E8, a2, 1);
    if (v8)
    {
      if (a3 == 240)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      if (a3 == 2)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9;
      }

      if (a3 == 1)
      {
        v11 = 3;
      }

      else
      {
        v11 = 0;
      }

      if (a3)
      {
        v12 = v11;
      }

      else
      {
        v12 = 1;
      }

      if (a3 <= 1)
      {
        v13 = v12;
      }

      else
      {
        v13 = v10;
      }

      sub_1005501A8(v8, v13, a5);
    }
  }
}

uint64_t sub_1005A7CB4(uint64_t a1, const char *a2)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 160);
  if (*(a1 + 60))
  {
    sub_10000801C(v26);
    v25[0] = 0;
    v25[1] = 0;
    sub_100007F88(v25, a1 + 240);
    v4 = (a1 + 312);
    v5 = a2[23];
    if (v5 >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      v6 = *(a2 + 1);
    }

    v7 = *(a1 + 335);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a1 + 320);
    }

    if (v6 != v7 || (v5 >= 0 ? (v9 = a2) : (v9 = *a2), v8 >= 0 ? (v10 = (a1 + 312)) : (v10 = *v4), memcmp(v9, v10, v6)))
    {
      sub_10000801C(v25);
      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      strlcpy(aIos_0, a2, 0x82uLL);
      v24 = 0;
      sub_1000216B4(&v24);
      byte_100BCE7AD = 1;
      v17 = sub_10024DDD0(sub_1005A4698, aIos_0, v11, v12, v13, v14, v15, v16);
      sub_100022214(&v24);
      if (v17)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100848D2C();
        }
      }

      else
      {
        v18 = sub_1005A1F18(a1);
        if (!v18)
        {
          v20 = sub_100017F4C(v18, v19);
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1005A7F98;
          v23[3] = &unk_100ADF8F8;
          v23[4] = a1;
          sub_10000CA94(v20, v23);
          sub_100007FB8(v25);
          std::string::assign((a1 + 312), aIos_0);
          v21 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a1 + 335) < 0)
            {
              v4 = *v4;
            }

            *buf = 136446210;
            v28 = v4;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Local device name changed to %{public}s", buf, 0xCu);
          }

          sub_10000801C(v25);
        }
      }

      sub_10002249C(&v24);
    }

    sub_1000088CC(v25);
  }

  else
  {
    *(a1 + 225) = 1;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }
  }

  return sub_1000088CC(v26);
}

void sub_1005A7F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_1000088CC(va);
  sub_1000088CC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A7FA8(int a1, uint64_t a2, char a3)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, &stru_100BCE708);
  dword_100BCE7A8 = a1;
  byte_100BCE7AC = a3;
  byte_100BCE7AD = 0;
  sub_10002286C(&stru_100BCE748);
  return sub_1000088CC(v6);
}

uint64_t sub_1005A8028(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v16 = 0;
  sub_1000216B4(&v16);
  if (!a2)
  {
    goto LABEL_12;
  }

  if (sub_1000B8B5C(a2) || sub_1000C0E08(a2) || sub_1000ABD24(a2))
  {
    if (a3)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  v15 = sub_1000B7994(a2);
  v13 = 1;
  if (a3 && v15)
  {
LABEL_6:
    byte_100BCE7AD = 1;
    v12 = sub_10024DE3C(sub_1005A7FA8, a2, v6, v7, v8, v9, v10, v11);
    sub_100022214(&v16);
    if (v12)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848D9C();
      }
    }

    else
    {
      if (!sub_1005A1F18(a1))
      {
        v13 = 0;
        *a3 = byte_100BCE7AC;
        goto LABEL_13;
      }

      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848E0C();
      }
    }

    goto LABEL_12;
  }

LABEL_13:
  sub_10002249C(&v16);
  return v13;
}

void sub_1005A8184(uint64_t a1, uint64_t a2)
{
  v26 = 0;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  *v23 = 0u;
  v20 = 0u;
  *v21 = 0u;
  v18 = 0u;
  *v19 = 0u;
  sub_1000DE474(&v18 + 1);
  BYTE2(v19[0]) = 0;
  BYTE4(v19[0]) = 0;
  BYTE2(v21[0]) = 0;
  BYTE4(v21[0]) = 0;
  DWORD1(v24[1]) = 0;
  v20 = 0uLL;
  v19[1] = 0;
  LOBYTE(v21[0]) = 0;
  v22 = 0uLL;
  v21[1] = 0;
  LOBYTE(v23[0]) = 0;
  memset(v24, 0, 19);
  v23[1] = 0;
  BYTE8(v24[1]) = 1;
  *(&v24[1] + 14) = 0;
  *(&v24[1] + 9) = 0;
  v25 = 0uLL;
  *(&v24[2] + 1) = 0;
  LOBYTE(v26) = 0;
  *(&v26 + 2) = 0;
  v14 = 0;
  if (qword_100B508F0 != -1)
  {
    sub_100847FA8();
  }

  *buf = *a2;
  *&buf[4] = *(a2 + 4);
  v3 = sub_1000E6554(off_100B508E8, buf, 1);
  if (sub_100536A18(v3, &v18))
  {
    if (BYTE5(v25) == 1)
    {
      v4 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        *&buf[4] = 6;
        *&buf[8] = 2096;
        *&buf[10] = a2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Invoking roleswitch disable for %{bluetooth:BD_ADDR}.6P", buf, 0x12u);
      }

      if (sub_100246BB4(v3 + 128, 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848E7C();
      }
    }

    if (BYTE6(v25) == 1)
    {
      v5 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558531;
        *&buf[4] = 1752392040;
        *&buf[12] = 1041;
        *&buf[14] = 6;
        v16 = 2097;
        v17 = a2;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting extended LSTO for %{private,bluetooth:BD_ADDR,mask.hash}.6P to 10000ms", buf, 0x1Cu);
      }

      if (sub_100246B50(v3 + 128, 10000) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848EEC();
      }
    }

    if (BYTE1(v26) == 1)
    {
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        *&buf[4] = 6;
        *&buf[8] = 2096;
        *&buf[10] = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Invoking reduced QoS Latency for %{bluetooth:BD_ADDR}.6P", buf, 0x12u);
      }

      if (sub_100246C04(v3 + 128, 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100848F5C();
      }
    }
  }

  sub_1000DEEA4(v3, buf);
  v7 = BYTE3(v17);
  if ((v17 & 0x80000000) != 0)
  {
    v7 = *&buf[8];
  }

  if (v7)
  {
    sub_1000DEEA4(v3, &__p);
    v8 = std::string::compare(&__p, "INTEGRATED HANDSFREE") == 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if ((v17 & 0x80000000) == 0)
    {
LABEL_28:
      if (!v8)
      {
        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v8 = 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  operator delete(*buf);
  if (!v8)
  {
    goto LABEL_37;
  }

LABEL_32:
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68157954;
    *&buf[4] = 6;
    *&buf[8] = 2096;
    *&buf[10] = a2;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Name matched, invoking roleswitch disable for %{bluetooth:BD_ADDR}.6P", buf, 0x12u);
  }

  if (sub_100246BB4(v3 + 128, 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848E7C();
  }

LABEL_37:
  if (qword_100B50AC0 != -1)
  {
    sub_100848084();
  }

  v10 = sub_1000DFA00(off_100B50AB8, v3);
  v11 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68158210;
    *&buf[4] = 6;
    *&buf[8] = 2096;
    *&buf[10] = a2;
    v16 = 1024;
    LODWORD(v17) = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device %{bluetooth:BD_ADDR}.6P services are %x", buf, 0x18u);
  }

  if ((v10 & 0x20080) != 0 && sub_10023E098(a2, 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848FCC();
  }

  if (sub_100539FE8(v3))
  {
    sub_1005379CC(v3, &v14);
    v12 = v14 & 0x1F00;
    if ((v12 == 512 || v12 == 256) && sub_10023E2B0(a2, 1) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084903C();
    }
  }

  if (sub_1000DEB14(v3) == 26 && sub_100538D24(v3) && sub_10023E3C8(a2, 2) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008490AC();
  }

  if (SHIBYTE(v24[0]) < 0)
  {
    operator delete(v23[1]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[1]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  nullsub_21();
}

void sub_1005A8788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100320BE8(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A87C8()
{
  v2 = 0;
  sub_1000216B4(&v2);
  v0 = sub_100242E9C();
  sub_10002249C(&v2);
  return v0;
}

_BYTE *sub_1005A8824(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 234) == 1)
  {
    if ((v2 = sub_10000C7D0(a1, a2), *(v2 + 800)) && (v2 = sub_10000C7D0(v2, v3), *(v2 + 800) <= 0x7CFu) && (v2 = sub_10000C7D0(v2, v3), *(v2 + 800) < 0x13u) || (v2 = sub_10000C7D0(v2, v3), *(v2 + 800) >> 3 >= 0x271u) && (v2 = sub_10000C7D0(v2, v3), *(v2 + 800) >> 4 < 0x177u) || (v4 = sub_10000C7D0(v2, v3), v2 = sub_1004106D0(v4, 0xBB8u), v2))
    {
      v5 = sub_10000C7D0(v2, v3);
      if ((*(*v5 + 1304))(v5, 0))
      {
        v14 = 0;
        sub_1000216B4(&v14);
        sub_10024E230();
        sub_100022214(&v14);
        sub_10002249C(&v14);
      }
    }
  }

  if (qword_100B50DB8 != -1)
  {
    sub_10084911C();
  }

  sub_1000DAE4C(off_100B50DB0, 3, 1u);
  v13 = 0;
  sub_1000216B4(&v13);
  v6 = sub_1001B3100();
  v7 = sub_100022214(&v13);
  v9 = sub_10000C7D0(v7, v8);
  (*(*v9 + 552))(v9, 0, 1);
  if (v6 == 118)
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Waiting for 'YOU MAY SLEEP'", v12, 2u);
    }

    sub_1001BAECC(500);
  }

  return sub_10002249C(&v13);
}

_BYTE *sub_1005A8A18(uint64_t a1)
{
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  *__big = 0u;
  v43 = 0u;
  v36 = 256;
  sysctlbyname("kern.wakereason", __big, &v36, 0, 0);
  v2 = strnstr(__big, "bluetooth", 0x100uLL);
  if (v2 || (v2 = strnstr(__big, "BT.Ou", 0x100uLL)) != 0)
  {
    v4 = 1;
  }

  else
  {
    v2 = strnstr(__big, "centauri-beta", 0x100uLL);
    v4 = v2 != 0;
  }

  HIBYTE(v57) = 0;
  if (*(a1 + 234) == 1)
  {
    if ((v5 = sub_10000C7D0(v2, v3), *(v5 + 800)) && (v5 = sub_10000C7D0(v5, v6), *(v5 + 800) <= 0x7CFu) && (v5 = sub_10000C7D0(v5, v6), *(v5 + 800) < 0x13u) || (v5 = sub_10000C7D0(v5, v6), *(v5 + 800) >> 3 >= 0x271u) && (v5 = sub_10000C7D0(v5, v6), *(v5 + 800) >> 4 < 0x177u) || (v7 = sub_10000C7D0(v5, v6), v5 = sub_1004106D0(v7, 0xBB8u), v5))
    {
      v8 = sub_10000C7D0(v5, v6);
      if ((*(*v8 + 1304))(v8, 1))
      {
        buf[0] = 0;
        sub_1000216B4(buf);
        sub_10024E230();
        sub_100022214(buf);
        sub_10002249C(buf);
      }
    }
  }

  v35 = 0;
  sub_1000216B4(&v35);
  sub_1001B3128(v4);
  v9 = sub_100022214(&v35);
  v11 = sub_10000C7D0(v9, v10);
  (*(*v11 + 552))(v11, 1, 1);
  if (v4)
  {
    v12 = *sub_100256ED8(0);
    if ((v12 - 2) > 2)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = *(&off_100AFF060 + (v12 - 2));
    }

    IOPMClaimSystemWakeEvent();
    sub_100007E30(&__p, [(__CFString *)v13 UTF8String]);
    sub_1005A8F3C(a1, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (sub_1005A8FB0(a1))
    {
      if (qword_100B53FE8 != -1)
      {
        sub_10084857C();
      }

      v14 = qword_100B53FE0;
      sub_100007E30(buf, "Power Anomaly");
      sub_100007E30(v32, "Bluetooth Wake Limit Reached");
      sub_1005780BC(v14, buf, v32, 0.0);
      if (v33 < 0)
      {
        operator delete(v32[0]);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(*buf);
      }

      sub_1005AC6F0(a1 + 576, *(a1 + 584));
      *(a1 + 576) = a1 + 584;
      *(a1 + 584) = 0u;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = qword_100BCE8D8;
  v16 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    *buf = 136315650;
    *&buf[4] = __big;
    v38 = 1024;
    v39 = v4;
    v40 = 1024;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "wakeReason:%s reasonWasBluetooth:%d controllerPacketType:%d", buf, 0x18u);
  }

  v18 = sub_10000C7D0(v16, v17);
  if (*(v18 + 800) >= 0x7D0u)
  {
    v20 = sub_10000C7D0(v18, v19);
    if (*(v20 + 800) <= 0xF9Fu)
    {
      v22 = sub_10000C7D0(v20, v21);
      if (*(v22 + 800) >= 0xBB8u)
      {
        v24 = sub_10000C798(v22, v23);
        v25 = (*(*v24 + 704))(v24);
        if (v25)
        {
          v27 = sub_10000C798(v25, v26);
          v28 = (*(*v27 + 416))(v27);
          if (v28)
          {
            v30 = sub_10000C7D0(v28, v29);
            if ((*(*v30 + 712))(v30, 1))
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_100849144();
              }
            }
          }
        }
      }
    }
  }

  return sub_10002249C(&v35);
}

uint64_t sub_1005A8F3C(void *a1, const std::string *a2)
{
  sub_1005AA818(a1);
  Current = CFAbsoluteTimeGetCurrent();
  p_Current = &Current;
  v4 = sub_1005ACFE8((a1 + 72), &Current, &unk_1008A9BD0, &p_Current);
  std::string::operator=((v4 + 5), a2);
  sub_1005AA9E0(a1);
  return 1;
}

BOOL sub_1005A8FB0(uint64_t a1)
{
  sub_1005AA818(a1);
  v2 = *(a1 + 592);
  if (qword_100B6F610 != -1)
  {
    sub_1008491B4();
  }

  v3 = dword_100B54A7C;
  if (dword_100B54A7C < v2)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109376;
      v6[1] = v3;
      v7 = 1024;
      v8 = v2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ABC Trigger: We're over the Wake Limit of %d, current wake count: %d", v6, 0xEu);
    }
  }

  return v3 < v2;
}

uint64_t sub_1005A90A8(uint64_t a1, unsigned int a2, int a3)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 160);
  if (*(a1 + 60))
  {
    sub_10000801C(v13);
    v8 = sub_100017F4C(v6, v7);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1005A91D8;
    v12[3] = &unk_100ADF8F8;
    v12[4] = a1;
    sub_10000CA94(v8, v12);
    v11 = 0;
    sub_1000216B4(&v11);
    if (a3)
    {
      v9 = a2;
    }

    else
    {
      v9 = 0;
    }

    sub_100247BB4(v9);
    sub_10002249C(&v11);
  }

  else
  {
    *(a1 + 225) = 1;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }
  }

  return sub_1000088CC(v13);
}

void sub_1005A91B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_10002249C(&a12);
  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A91EC(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_10000C7D0(a1, a2) + 1184);

  return v2();
}

uint64_t sub_1005A924C(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  v2 = sub_100007F88(v10, a1 + 160);
  if (*(a1 + 60))
  {
    sub_10000801C(v2);
    v5 = sub_100017F4C(v3, v4);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1005A9348;
    v8[3] = &unk_100ADF8F8;
    v8[4] = a1;
    sub_10000CA94(v5, v8);
  }

  else
  {
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Ignoring CarPlay state change notification as stack is not ready", buf, 2u);
    }
  }

  return sub_1000088CC(v10);
}

uint64_t sub_1005A935C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_100B50910 != -1)
  {
    sub_1008475E4();
  }

  v3 = sub_1005BC718(off_100B50908, v2);
  v5 = *(*sub_10000C7D0(v3, v4) + 560);

  return v5();
}

uint64_t sub_1005A93F8(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v27[0] = 0;
  v27[1] = 0;
  v5 = sub_100007F88(v27, a1 + 160);
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v7 = sub_10000C7D0(v5, v6);
  if (*(a1 + 56) == 1)
  {
    v8 = *(v7 + 800);
    sub_10000801C(v27);
    if ((v8 - 2000) < 0x7D0 || (v9 = 1, v8 != 6) && (v8 - 1) <= 0x7CE)
    {
      v28 = *a3;
      v29 = *(a3 + 1);
      v30 = *(a3 + 6);
      v10 = v30;
      if (v30)
      {
        v11 = a3 + 4;
        v12 = 7;
        v13 = v30;
        do
        {
          v14 = *v11++;
          *(&v28 + v12) = v14;
          v12 += 2;
          --v13;
        }

        while (v13);
        v15 = 2 * v10 + 7;
        v16 = a3 + 36;
        v17 = v10;
        do
        {
          v18 = *v16;
          v16 = (v16 + 1);
          *(&v28 + v15++) = v18;
          --v17;
        }

        while (v17);
      }

      v26 = 0;
      sub_1000216B4(&v26);
      v24 = sub_10024E0A0(0, (3 * v10 + 7), &v28, v19, v20, v21, v22, v23);
      sub_100022214(&v26);
      sub_10002249C(&v26);
      v9 = v24 != 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v9 = 111;
  }

  sub_1000088CC(v27);
  return v9;
}

void sub_1005A95AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A95DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[0] = 0;
  v26[1] = 0;
  v5 = sub_100007F88(v26, a1 + 160);
  v7 = sub_10000C7D0(v5, v6);
  if (*(a1 + 56) == 1)
  {
    v8 = *(v7 + 800);
    sub_10000801C(v26);
    if ((v8 - 2000) < 0x7D0 || (v9 = 0, v8 != 6) && (v8 - 1) <= 0x7CE)
    {
      *__p = 0u;
      v25 = 0u;
      sub_10057C6A8(__p, 0);
      sub_10057C6D0(__p, *a3);
      sub_10057C70C(__p, *(a3 + 2));
      sub_10057C70C(__p, *(a3 + 4));
      sub_10057C70C(__p, *(a3 + 6));
      sub_10057C70C(__p, *(a3 + 8));
      sub_10057C6D0(__p, *(a3 + 10));
      v23 = 0;
      sub_1000216B4(&v23);
      sub_10000C704(&v21, __p[1], v25 - __p[1]);
      v10 = sub_10000C5E0(&v21);
      sub_10000C704(&v19, __p[1], v25 - __p[1]);
      v11 = sub_10000C5F8(&v19);
      v17 = sub_10024E070(0, v10, v11, v12, v13, v14, v15, v16);
      v19 = &off_100AE0A78;
      if (v20)
      {
        sub_10000C808(v20);
      }

      v21 = &off_100AE0A78;
      if (v22)
      {
        sub_10000C808(v22);
      }

      sub_100022214(&v23);
      sub_10002249C(&v23);
      if (__p[1])
      {
        *&v25 = __p[1];
        operator delete(__p[1]);
      }

      v9 = v17 != 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v9 = 111;
  }

  sub_1000088CC(v26);
  return v9;
}

void sub_1005A97D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  sub_10002249C(&a17);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_1000088CC(v20 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A9880(uint64_t a1, uint64_t a2, __int16 *a3)
{
  v26[0] = 0;
  v26[1] = 0;
  v5 = sub_100007F88(v26, a1 + 160);
  v7 = sub_10000C7D0(v5, v6);
  if (*(a1 + 56) == 1)
  {
    v8 = *(v7 + 800);
    sub_10000801C(v26);
    if ((v8 - 1) > 0xF9E)
    {
      v17 = 1;
    }

    else
    {
      *__p = 0u;
      v25 = 0u;
      sub_10057C6A8(__p, 0);
      sub_10057C70C(__p, *a3);
      sub_10057C70C(__p, a3[1]);
      sub_10057C70C(__p, a3[2]);
      sub_10057C70C(__p, a3[3]);
      sub_10057C70C(__p, a3[4]);
      sub_10057C70C(__p, a3[5]);
      sub_10057C70C(__p, a3[6]);
      sub_10057C70C(__p, a3[7]);
      sub_10057C70C(__p, a3[8]);
      sub_10057C70C(__p, a3[9]);
      sub_10057C70C(__p, a3[10]);
      sub_10057C70C(__p, a3[11]);
      sub_10057C70C(__p, a3[12]);
      sub_10057C70C(__p, a3[13]);
      sub_10057C70C(__p, a3[14]);
      v23 = 0;
      sub_1000216B4(&v23);
      sub_10000C704(&v21, __p[1], v25 - __p[1]);
      v9 = sub_10000C5E0(&v21);
      sub_10000C704(&v19, __p[1], v25 - __p[1]);
      v10 = sub_10000C5F8(&v19);
      v16 = sub_10024E0D0(0, v9, v10, v11, v12, v13, v14, v15);
      v19 = &off_100AE0A78;
      if (v20)
      {
        sub_10000C808(v20);
      }

      v21 = &off_100AE0A78;
      if (v22)
      {
        sub_10000C808(v22);
      }

      sub_100022214(&v23);
      sub_10002249C(&v23);
      if (__p[1])
      {
        *&v25 = __p[1];
        operator delete(__p[1]);
      }

      v17 = v16 != 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v17 = 111;
  }

  sub_1000088CC(v26);
  return v17;
}

void sub_1005A9AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  sub_10002249C(&a17);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  sub_1000088CC(v20 - 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1005A9B78(uint64_t a1, uint64_t a2, char *a3)
{
  v17[0] = 0;
  v17[1] = 0;
  v5 = sub_100007F88(v17, a1 + 160);
  v6 = *a3;
  v8 = sub_10000C7D0(v5, v7);
  if (*(a1 + 56) == 1)
  {
    v9 = *(v8 + 800);
    sub_10000801C(v17);
    if ((v9 - 1) > 0xF9E)
    {
      v14 = 1;
    }

    else
    {
      v16 = 0;
      sub_1000216B4(&v16);
      v13 = sub_10024E100(0, (4 * v6) | 1u, *a3, (a3 + 2), (a3 + 34), v10, v11, v12);
      sub_100022214(&v16);
      sub_10002249C(&v16);
      v14 = v13 != 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v14 = 111;
  }

  sub_1000088CC(v17);
  return v14;
}

void sub_1005A9C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005A9C9C(uint64_t a1)
{
  v34 = 2;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Putting device into test mode", buf, 2u);
  }

  *buf = 0;
  v33 = 0;
  sub_100007F88(buf, a1 + 160);
  if ((*(a1 + 56) & 0xFFFFFFFD) != 1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    goto LABEL_15;
  }

  sub_10000801C(buf);
  v31 = 0;
  sub_1000216B4(&v31);
  byte_100BCE7AD = 1;
  v10 = sub_10024DFC8(sub_1005A4698, v3, v4, v5, v6, v7, v8, v9);
  sub_100022214(&v31);
  if (v10)
  {
    if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (!sub_1005A1F18(a1))
  {
    sub_1000618AC(&v31);
    sub_1002D35C4(1);
    sub_100022214(&v31);
    sub_1000618AC(&v31);
    byte_100BCE7AD = 1;
    v17 = sub_100018960(71, sub_1005A4698, v11, v12, v13, v14, v15, v16, 3);
    sub_100022214(&v31);
    if (v17)
    {
      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (sub_1005A1F18(a1))
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100849318();
        }

        goto LABEL_32;
      }

      sub_1000618AC(&v31);
      byte_100BCE7AD = 1;
      v21 = sub_10024DD9C(sub_1005A4698, 2, 0, 1, &v34, v18, v19, v20);
      sub_100022214(&v31);
      if (!v21)
      {
        if (sub_1005A1F18(a1))
        {
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100849388();
          }

          goto LABEL_32;
        }

        sub_1000618AC(&v31);
        byte_100BCE7AD = 1;
        v29 = sub_10024E3F0(sub_1005A4698, v22, v23, v24, v25, v26, v27, v28, v30);
        sub_100022214(&v31);
        if (!v29)
        {
          if (!sub_1005A1F18(a1))
          {
            sub_1000618AC(&v31);
            sub_10023B3B4(1);
            sub_100022214(&v31);
            sub_100007FB8(buf);
            *(a1 + 226) = 1;
            sub_10002249C(&v31);
LABEL_15:
            sub_1000088CC(buf);
            return;
          }

          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_31;
          }

          goto LABEL_32;
        }

        if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_32;
        }

LABEL_17:
        sub_1008491C8();
        goto LABEL_32;
      }

      if (!os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

    sub_1008492A8();
    goto LABEL_32;
  }

  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
LABEL_31:
    sub_100849238();
  }

LABEL_32:
  sub_1000C52F4(408);
  __break(1u);
}

void sub_1005AA01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AA044(uint64_t a1, _BYTE *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 160);
  *a2 = *(a1 + 226);
  sub_1000088CC(v5);
  return 0;
}

uint64_t sub_1005AA094(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Putting device into LE TX test mode", buf, 2u);
  }

  *buf = 0;
  v18 = 0;
  sub_100007F88(buf, a1 + 160);
  if ((*(a1 + 56) & 0xFFFFFFFD) == 1)
  {
    if (*(a1 + 227) == 1)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100849468();
      }

      v9 = 1;
    }

    else
    {
      sub_10000801C(buf);
      v16 = 0;
      sub_1000216B4(&v16);
      v9 = sub_1002E8C54(((a2 - 2402) / 2), a3, a4, v10, v11, v12, v13, v14);
      sub_100022214(&v16);
      if (v9)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008493F8();
        }

        v9 = 111;
      }

      else
      {
        *(a1 + 227) = 1;
      }

      sub_10002249C(&v16);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v9 = 111;
  }

  sub_1000088CC(buf);
  return v9;
}

void sub_1005AA21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AA244(uint64_t a1, int a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Putting device into LE RX test mode", buf, 2u);
  }

  *buf = 0;
  v16 = 0;
  sub_100007F88(buf, a1 + 160);
  if ((*(a1 + 56) & 0xFFFFFFFD) == 1)
  {
    if (*(a1 + 227) == 1)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100849468();
      }

      v5 = 1;
    }

    else
    {
      sub_10000801C(buf);
      v14 = 0;
      sub_1000216B4(&v14);
      v5 = sub_1002E8AA4(((a2 - 2402) / 2), v6, v7, v8, v9, v10, v11, v12);
      sub_100022214(&v14);
      if (v5)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008493F8();
        }

        v5 = 111;
      }

      else
      {
        *(a1 + 227) = 1;
      }

      sub_10002249C(&v14);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v5 = 111;
  }

  sub_1000088CC(buf);
  return v5;
}

void sub_1005AA3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005AA3DC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v4 = off_100B50A98;

  return sub_1005AA438(v4, v3, v2);
}

uint64_t sub_1005AA438(uint64_t a1, int a2, int a3)
{
  *(a1 + 227) = 0;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = a2;
    v8 = 1024;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LE test mode stopped : %{bluetooth:OI_STATUS}u, packets = %d", v7, 0xEu);
  }

  if (qword_100B508A0 != -1)
  {
    sub_1008480AC();
  }

  return sub_100575B64(off_100B50898, a2, a3);
}

uint64_t sub_1005AA524(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Stopping LE test mode", buf, 2u);
  }

  *buf = 0;
  v14 = 0;
  sub_100007F88(buf, a1 + 160);
  if ((*(a1 + 56) & 0xFFFFFFFD) == 1)
  {
    if (*(a1 + 227))
    {
      sub_10000801C(buf);
      v12 = 0;
      sub_1000216B4(&v12);
      v10 = sub_1002E8EC0(sub_1005AA3DC, v3, v4, v5, v6, v7, v8, v9);
      sub_100022214(&v12);
      if (v10)
      {
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_1008494E0();
        }

        v10 = 111;
      }

      sub_10002249C(&v12);
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008494A4();
      }

      v10 = 1;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084852C();
    }

    v10 = 111;
  }

  sub_1000088CC(buf);
  return v10;
}

void sub_1005AA684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005AA6AC(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

void sub_1005AA818(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current <= 3600.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = Current + -3600.0;
  }

  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  sub_1005AA958(&v9, *(a1 + 576), (a1 + 584));
  sub_1005AC6F0(a1 + 576, *(a1 + 584));
  *(a1 + 576) = a1 + 584;
  *(a1 + 584) = 0u;
  v4 = v9;
  if (v9 != v10)
  {
    do
    {
      if (*(v4 + 4) > v3)
      {
        v11 = v4 + 4;
        v5 = sub_1005ACFE8(a1 + 576, v4 + 4, &unk_1008A9BD0, &v11);
        std::string::operator=((v5 + 5), (v4 + 5));
      }

      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v10);
  }

  sub_1005AC6F0(&v9, v10[0]);
}

void *sub_1005AA958(void *result, double *a2, double *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005ACCA0(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void sub_1005AA9E0(void *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = a1[74];
    *buf = 134218240;
    v14 = Current;
    v15 = 2048;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump:        fWakeHistoryMap: %f, current size: %lu", buf, 0x16u);
  }

  v5 = a1[72];
  v6 = a1 + 73;
  if (v5 != a1 + 73)
  {
    v7 = qword_100BCE8D8;
    do
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v5 + 5;
        if (*(v5 + 63) < 0)
        {
          v8 = *v8;
        }

        v9 = *(v5 + 4);
        *buf = 134218242;
        v14 = v9;
        v15 = 2082;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump:        %f: %{public}s", buf, 0x16u);
        v7 = qword_100BCE8D8;
      }

      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != v6);
  }
}

void sub_1005AAB74(id a1)
{
  v8 = 0;
  v1 = sub_10000E92C();
  sub_100007E30(buf, "BluetoothTTR");
  sub_100007E30(__p, "WakeLimitPerHour");
  v2 = (*(*v1 + 88))(v1, buf, __p, &v8);
  if (v8)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10 < 0)
  {
    operator delete(*buf);
    if (!v3)
    {
      return;
    }
  }

  else if (!v3)
  {
    return;
  }

  v4 = v8;
  dword_100B54A7C = v8;
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ABC Trigger: Wake Limit over-riden to: %d", buf, 8u);
  }
}

void sub_1005AACB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AAD14(uint64_t a1)
{
  sub_1005AC1F0(a1);

  operator delete();
}

void sub_1005AAD6C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005AADC0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1005AADC0(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void sub_1005AAE0C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_1005AAED8((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1005AAED8(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1005AB074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AB0AC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_1005AB178((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1005AB178(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1005AB314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AB34C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_1005AB424(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_1005AB4FC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_1005AB5D4(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_1005AB6A0((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1005AB6A0(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1005AB83C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005AB874(id a1, _xpc_activity_s *a2)
{
  if (qword_100B512C8 != -1)
  {
    sub_100847620();
  }

  v2 = sub_10057A798(off_100B512C0);
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timeout passed. Not Resetting the denylist since Airplane mode is enabled", buf, 2u);
    }

    +[NSDate timeIntervalSinceReferenceDate];
    v6 = sub_1005A0378(v5);
    sub_1005A0830(1, v6);
  }

  else
  {
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Timeout passed. Resetting the denylist", v7, 2u);
    }

    if (qword_100B50910 != -1)
    {
      sub_100847E40();
    }

    sub_1005BC7F8(0.0);
    sub_10023E7B4();
  }
}

void sub_1005AB97C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_1005ABA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if ((a1 - 701) > 0x44)
  {
    if (a1)
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100849550();
      }

      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008495C0();
  }

  v9 = sub_10024DDD0(sub_1005ABB44, aIos_0, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    return;
  }

  v8 = v9;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100848D2C();
  }

LABEL_10:
  v10 = off_100B6F618;
  if (off_100B6F618)
  {
    off_100B6F618 = 0;
    v10(v8);
  }
}

void sub_1005ABB44(uint64_t a1)
{
  if (sub_100243344() < 4)
  {

    sub_1005ABC00(a1, v2);
  }

  else
  {
    sub_1005A31F4();
    v8 = sub_10024E040(sub_1005ABC00, 1, byte_100B6F508, v3, v4, v5, v6, v7);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_100849630();
      }

      v10 = off_100B6F618;
      if (off_100B6F618)
      {
        off_100B6F618 = 0;
        v10(v9);
      }
    }
  }
}

void sub_1005ABC00(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  v4 = (*(*v3 + 80))(v3);
  if (a1)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008496A0();
    }

    v6 = off_100B6F618;
    if (off_100B6F618)
    {
      off_100B6F618 = 0;
      v7 = a1;
LABEL_43:
      v6(v7);
      return;
    }

    return;
  }

  v8 = v4;
  v9 = sub_10000C7D0(v4, v5);
  if (*(v9 + 800) >= 0x7D0u)
  {
    v11 = sub_10000C7D0(v9, v10);
    if (*(v11 + 800) <= 0xF9Fu && *(sub_10000C7D0(v11, v12) + 800) >= 0xBB8u)
    {
      if (qword_100B6F638 != -1)
      {
        sub_100849710();
      }

      if (byte_100B6F636 == 1)
      {
        v13 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          v21[0] = 67109120;
          v21[1] = 42;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Override deviceType = %d", v21, 8u);
        }

LABEL_22:
        v14 = 1792;
LABEL_24:
        v15 = 4;
        goto LABEL_28;
      }
    }
  }

  if (v8 <= 20)
  {
    if (v8 != 7)
    {
      if (v8 == 8)
      {
        v14 = 256;
        v15 = 16;
      }

      else
      {
        if (v8 != 12)
        {
          goto LABEL_31;
        }

        v14 = 512;
        v15 = 12;
      }

      goto LABEL_28;
    }

    v14 = 256;
    goto LABEL_24;
  }

  switch(v8)
  {
    case 21:
      v14 = 1024;
      v15 = 28;
      break;
    case 40:
      v14 = 1024;
      v15 = 72;
      break;
    case 42:
      goto LABEL_22;
    default:
      goto LABEL_31;
  }

LABEL_28:
  v16 = sub_1002448D0(v14, v15);
  if (v16)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100849724();
    }

LABEL_41:
    v6 = off_100B6F618;
    if (!off_100B6F618)
    {
      return;
    }

    off_100B6F618 = 0;
    v7 = v16;
    goto LABEL_43;
  }

LABEL_31:
  if (qword_100B512E8 != -1)
  {
    sub_100849794();
  }

  v17 = sub_1006EA7EC();
  v18 = sub_1002FD254(v17);
  if (v18)
  {
    v16 = v18;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008497BC();
    }

    goto LABEL_41;
  }

  if (qword_100B512E8 != -1)
  {
    sub_100849794();
  }

  v19 = sub_1006EA7F8();
  v20 = sub_1002FD4B8(v19);
  if (v20)
  {
    v16 = v20;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084982C();
    }

    goto LABEL_41;
  }

  v6 = off_100B6F618;
  if (off_100B6F618)
  {
    off_100B6F618 = 0;
    v7 = 0;
    goto LABEL_43;
  }
}

void sub_1005ABF10(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "MaskCODandNameAsAppleWatch");
  v2 = (*(*v1 + 72))(v1, buf, __p, &byte_100B6F636);
  v3 = byte_100B6F636;
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v2 & v3;
  if (v9 < 0)
  {
    operator delete(*buf);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mask as Apple Watch", buf, 2u);
  }
}

void sub_1005AC014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005AC0B0(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v2 = off_100B50A98;
  v3 = *(a1 + 32);

  return sub_1005A2F18(v2, v3);
}

uint64_t sub_1005AC11C(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  result = sub_1005A4324(off_100B50A98);
  if (result)
  {
    *(a1 + 8) = 1;
  }

  else
  {
    *(a1 + 16) = 100;
    v4 = sub_100017F4C(result, v3);

    return sub_100070A6C(v4, a1);
  }

  return result;
}

uint64_t sub_1005AC198(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10084760C();
  }

  v2 = off_100B50A98;
  v3 = *(a1 + 32);
  v4 = *(a1 + 36);

  return sub_1005A41B4(v2, v3, v4);
}

uint64_t sub_1005AC1F0(uint64_t a1)
{
  *a1 = off_100AFEA48;
  *(a1 + 8) = &off_100AFEAE0;
  *(a1 + 16) = off_100AFEAF8;
  *(a1 + 24) = &off_100AFEB28;
  *(a1 + 32) = &off_100AFEB40;
  *(a1 + 40) = &off_100AFEB58;
  *(a1 + 48) = &off_100AFEB70;
  sub_1005AC6F0(a1 + 576, *(a1 + 584));
  sub_10007A068(a1 + 504);

  sub_10007A068(a1 + 424);
  if (*(a1 + 415) < 0)
  {
    operator delete(*(a1 + 392));
  }

  if (*(a1 + 335) < 0)
  {
    operator delete(*(a1 + 312));
  }

  sub_10007A068(a1 + 240);
  sub_10007A068(a1 + 160);
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v5 = (a1 + 104);
  sub_1005AAD6C(&v5);
  v3 = *(a1 + 72);
  if (v3)
  {
    *(a1 + 80) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1005AC6F0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1005AC6F0(a1, *a2);
    sub_1005AC6F0(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

uint64_t *sub_1005ACA74(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    sub_10042A5D4(result, a4);
  }

  return result;
}

void sub_1005ACB90(_Unwind_Exception *a1)
{
  v4 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1003C95E8(v2, *(v1 + 16));

  operator delete();
}

void *sub_1005ACCA0(double **a1, double *a2, double *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_1005ACD30(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1005ACECC();
  }

  return result;
}

double *sub_1005ACD30(double **a1, double *a2, double **a3, double *a4, double *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = *(v13 + 2);
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = *&v16;
          v18 = *(*&v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = **&v16;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = (*&v16 + 8);
        v16 = *(*&v16 + 8);
      }

      while (v16 != 0.0);
      goto LABEL_43;
    }

LABEL_42:
    v17 = (a1 + 1);
LABEL_43:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = *(a2 + 1);
  if (v11)
  {
    v12 = *(a2 + 1);
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = *(v19 + 2);
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v20;
          v21 = v20[4];
          if (v6 >= v21)
          {
            break;
          }

          v20 = *v20;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_43;
          }
        }

        if (v21 >= v6)
        {
          break;
        }

        v5 = v20 + 1;
        v20 = *(v20 + 1);
      }

      while (v20);
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}
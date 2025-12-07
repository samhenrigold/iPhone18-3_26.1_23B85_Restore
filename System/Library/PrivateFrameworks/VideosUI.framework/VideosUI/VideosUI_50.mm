void sub_1E3A213FC()
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR____TtC8VideosUI16MetricsEventCell____lazy_storage___pageTypeLabel);
  OUTLINED_FUNCTION_4_97();
  __break(1u);
}

uint64_t sub_1E3A21468(uint64_t a1)
{
  v2 = sub_1E3A209D0();
  v3 = sub_1E4205ED4();
  [v2 setText_];

  v4 = sub_1E3A20B04();
  v5 = sub_1E4167B40(a1, 5);
  v7 = v6;
  sub_1E41675F8(5);
  v8 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v4) + 0x98))(v5, v7, v9, v10);

  v11 = sub_1E3A20AF8();
  v12 = sub_1E4167B40(a1, 23);
  v14 = v13;
  sub_1E41675F8(23);
  (*((*v8 & *v11) + 0x98))(v12, v14, v15, v16);
}

id sub_1E3A21608(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3A216BC()
{
  v1 = v0;
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_8();
  (*(v3 + 1352))(0);
  OUTLINED_FUNCTION_36();
  (*(v4 + 1328))(1);
  v5 = *sub_1E3BD2884();
  (*(*v2 + 1280))(v5, 0);
  OUTLINED_FUNCTION_36();
  v7 = *(v6 + 1808);
  v7(3);
  v8 = *sub_1E3E5FB0C();
  v9 = *(*v2 + 776);
  v10 = v8;
  v9(v8);
  OUTLINED_FUNCTION_5_0(v1 + 177, &v178);
  v11 = *(v1 + 177);
  v12 = *(*v2 + 2240);
  if (v11 == 1)
  {
    v12(1);
    sub_1E39537A8();
    *&__src[0] = v13;
    *(&__src[0] + 1) = v14;
    *&__src[1] = v15;
    *(&__src[1] + 1) = v16;
    LOBYTE(__src[2]) = 0;
    (*(*v2 + 560))(__src);
    OUTLINED_FUNCTION_36();
    (*(v17 + 312))(0x4048000000000000, 0);
    sub_1E418A524();
    OUTLINED_FUNCTION_8();
    (*(v18 + 208))();
    *__dst = 0uLL;
    __asm { FMOV            V0.2D, #10.0 }

    *&__dst[16] = _Q0;
    __dst[32] = 0;
    OUTLINED_FUNCTION_8();
    (*(v24 + 160))(__dst);
    OUTLINED_FUNCTION_36();
    (*(v25 + 1712))(1);
    v7(1);
  }

  else
  {
    v12(0);
    memset(__src, 0, 32);
    LOBYTE(__src[2]) = 1;
    OUTLINED_FUNCTION_8();
    (*(v26 + 560))(__src);
    OUTLINED_FUNCTION_36();
    (*(v27 + 360))(0, 1);
    OUTLINED_FUNCTION_8();
    (*(v28 + 160))(__src);
    OUTLINED_FUNCTION_36();
    (*(v29 + 312))(0, 1);
  }

  OUTLINED_FUNCTION_8();
  (*(v30 + 416))(v11 ^ 1u);
  v31 = *(v1 + 160);
  sub_1E3952C78();
  *__dst = v32;
  *&__dst[8] = v33;
  *&__dst[16] = v34;
  *&__dst[24] = v35;
  __dst[32] = 0;
  v206 = 0u;
  v207 = 0u;
  v208 = 1;
  sub_1E3952C78();
  v203.n128_u64[0] = v36;
  v203.n128_u64[1] = v37;
  v204.n128_u64[0] = v38;
  v204.n128_u64[1] = v39;
  v205 = 0;
  type metadata accessor for UIEdgeInsets();
  v41 = v40;
  sub_1E3C2FC98();
  v197 = v200;
  v198 = v201;
  v199 = v202;
  v42 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_5_24(v42, v43, v44, v45, v46, v47, v48, v49, v175, v176, v177, v178, v179, v180, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v182, *(&v182 + 1), v183, *(&v183 + 1), v184, v185, v186, *(&v186 + 1), v187, *(&v187 + 1), v188, v189, v190, v191, v192, v193, v194, v195, v196);
  v50 = sub_1E3C3DE00();
  v182 = v186;
  v183 = v187;
  LOBYTE(v184) = v188;
  v58 = OUTLINED_FUNCTION_7_97(v50, v51, v52, v53, v54, v55, v56, v57, v175, v176, v177, v178, v179, v180, __dst[0]);
  sub_1E3C2FCB8(v58, v59, v60, &v206, &v203, &v182, v41, v61);
  memcpy(__dst, __src, 0xE9uLL);
  v62 = OUTLINED_FUNCTION_18();
  v70 = OUTLINED_FUNCTION_6_80(v62, v63, v64, v65, v66, v67, v68, v69, v175, v176, v177, v178, v179, v180, __dst[0]);
  v72 = v71(v70, 0);
  v73 = (*(*v31 + 1728))(v72);
  v74 = *sub_1E3E5FDEC();
  v75 = *(*v73 + 680);
  v76 = v74;
  v75(v74);

  v77 = *sub_1E3E5FD88();
  (*(*v31 + 1712))(v77);
  v78 = *(v1 + 152);
  OUTLINED_FUNCTION_3_0(v78 + 208, &v182);
  __asm { FMOV            V0.2D, #25.0 }

  *(v78 + 208) = _Q0;
  *(v78 + 224) = _Q0;
  OUTLINED_FUNCTION_3_0(v78 + 201, v210);
  *(v78 + 201) = 0;
  v80 = OUTLINED_FUNCTION_5_0(v1 + 177, &v175);
  if (*(v1 + 177) == 1)
  {
    v81 = *(v1 + 128);
    (*(*v81 + 1656))(v80);
    OUTLINED_FUNCTION_36();
    (*(v82 + 1656))();
    sub_1E3C6DC94(v81);
    sub_1E3C6DE18();
    sub_1E3C2D438();
    type metadata accessor for LayoutGrid();
    sub_1E3C2F814();
    sub_1E3A25914();
    *&__src[0] = 0x4024000000000000;
    *(&__src[0] + 1) = v83;
    *&__src[1] = 0x4024000000000000;
    *(&__src[1] + 1) = v84;
    LOBYTE(__src[2]) = 0;
    sub_1E3C2CC78();
    memset(__dst, 0, 32);
    __dst[32] = 1;
    sub_1E3C2D7EC();
    sub_1E3C2DE50();
    sub_1E3C2E258();
  }

  else
  {
    v85 = *(v1 + 120);
    OUTLINED_FUNCTION_8();
    (*(v86 + 1656))();
    __dst[0] = 24;
    LOBYTE(v206) = 17;
    v203.n128_u8[0] = 19;
    sub_1E3C2FC98();
    LOBYTE(v197) = v200;
    sub_1E3C3DE00();
    LOBYTE(v190) = v196;
    v87 = sub_1E3C3DE00();
    v211 = v186;
    v95 = OUTLINED_FUNCTION_7_97(v87, v88, v89, v90, v91, v92, v93, v94, v175, v176, v177, v178, v179, v180, __dst[0]);
    sub_1E3C2FCB8(v95, v96, v97, &v211, &v206, &v203, &qword_1F5D549D8, v98);
    OUTLINED_FUNCTION_3_97();
    OUTLINED_FUNCTION_36();
    v107 = OUTLINED_FUNCTION_6_80(v99, v100, v101, v102, v103, v104, v105, v106, v175, v176, v177, v178, v179, v180, __dst[0]);
    v108(v107, 48);
    OUTLINED_FUNCTION_36();
    (*(v109 + 1792))(10);
    OUTLINED_FUNCTION_36();
    (*(v110 + 1936))(2);
    v111 = *sub_1E3E5FDEC();
    v112 = *(*v85 + 680);
    v113 = v111;
    v112(v111);
    OUTLINED_FUNCTION_36();
    (*(v114 + 2056))(1, 0);
    OUTLINED_FUNCTION_36();
    (*(v115 + 1984))(5);
    OUTLINED_FUNCTION_36();
    (*(v116 + 2008))(1);
    v117 = *(v1 + 128);
    OUTLINED_FUNCTION_36();
    (*(v118 + 1656))();
    __dst[0] = 15;
    LOBYTE(v206) = 19;
    v203.n128_u8[0] = 19;
    LOBYTE(v200) = 21;
    LOBYTE(v197) = 3;
    sub_1E3C3DE00();
    LOBYTE(v190) = v196;
    sub_1E3C2FCB8(__dst, &v206, &v203, &v200, &v197, &v190, &qword_1F5D549D8, __src);
    OUTLINED_FUNCTION_3_97();
    OUTLINED_FUNCTION_36();
    v127 = OUTLINED_FUNCTION_6_80(v119, v120, v121, v122, v123, v124, v125, v126, v175, v176, v177, v178, v179, v180, __dst[0]);
    v128(v127, 48);
    OUTLINED_FUNCTION_5_0(v1 + 177, &v186);
    if (*(v1 + 177) == 1)
    {
      OUTLINED_FUNCTION_8();
      (*(v129 + 1696))(17);
    }

    v130 = *sub_1E3E5FD88();
    OUTLINED_FUNCTION_8();
    v132 = *(v131 + 680);
    v133 = v130;
    v132(v130);
    if (*(v1 + 177))
    {
      v134 = 2;
    }

    else
    {
      v134 = 1;
    }

    (*(*v117 + 2056))(v134, 0);
    OUTLINED_FUNCTION_36();
    (*(v135 + 2080))(2, 0);
    OUTLINED_FUNCTION_36();
    (*(v136 + 2104))(0, 0);
    OUTLINED_FUNCTION_36();
    (*(v137 + 1984))(5);
    sub_1E3952C94();
    *&__src[0] = v138;
    *(&__src[0] + 1) = v139;
    *&__src[1] = v140;
    *(&__src[1] + 1) = v141;
    LOBYTE(__src[2]) = 0;
    OUTLINED_FUNCTION_8();
    (*(v142 + 160))(__src);
    OUTLINED_FUNCTION_36();
    (*(v143 + 2008))(1);
    __asm { FMOV            V1.2D, #12.0 }

    *__dst = _Q1;
    *&__dst[16] = xmmword_1E42B29F0;
    __dst[32] = 0;
    v206 = _Q1;
    v207 = xmmword_1E42B29F0;
    v208 = 0;
    __asm { FMOV            V0.2D, #14.0 }

    v203 = _Q0;
    v204 = _Q0;
    v205 = 0;
    _Q0.n128_u64[0] = 12.0;
    *&v200 = j__OUTLINED_FUNCTION_7_78(_Q0);
    *(&v200 + 1) = v146;
    *&v201 = v147;
    *(&v201 + 1) = v148;
    v202 = 0;
    v149.n128_u64[0] = 12.0;
    *&v197 = j__OUTLINED_FUNCTION_7_78(v149);
    *(&v197 + 1) = v150;
    *&v198 = v151;
    *(&v198 + 1) = v152;
    v199 = 0;
    v153 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_24(v153, v154, v155, v156, v157, v158, v159, v160, v175, v176, v177, v178, v179, v180, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v182, *(&v182 + 1), v183, *(&v183 + 1), v184, v185, v186, *(&v186 + 1), v187, *(&v187 + 1), v188, v189, v190, v191, v192, v193, v194, v195, v196);
    sub_1E3C2FCB8(&v190, __dst, &v206, &v203, &v200, &v197, v41, __src);
    memcpy(__dst, __src, 0xE9uLL);
    v161 = OUTLINED_FUNCTION_18();
    v169 = OUTLINED_FUNCTION_6_80(v161, v162, v163, v164, v165, v166, v167, v168, v175, v176, v177, v178, v179, v180, __dst[0]);
    sub_1E3C2FDFC(v169, 1, v170, v41);
    v171 = sub_1E3E61064();
    v172 = *(v171 + 1);
    __src[0] = *v171;
    __src[1] = v172;
    LOBYTE(__src[2]) = 0;
    sub_1E3C2D7EC();
    v173 = *sub_1E3E5FB0C();
    sub_1E3C2DE50();
  }

  return sub_1E3C2D200();
}

uint64_t sub_1E3A2240C(char a1)
{
  OUTLINED_FUNCTION_3_0(v1 + 177, &v5);
  v3 = *(v1 + 177);
  *(v1 + 177) = a1;
  result = OUTLINED_FUNCTION_5_0(v1 + 177, v6);
  if (v3 != *(v1 + 177))
  {
    return sub_1E3A216BC();
  }

  return result;
}

uint64_t *sub_1E3A224A0()
{
  type metadata accessor for ImageLayout();
  *(v0 + 104) = sub_1E3BD61D8();
  type metadata accessor for PlaybackStatusLayout();
  *(v0 + 112) = sub_1E3A70EBC(1);
  type metadata accessor for TextLayout();
  *(v0 + 120) = sub_1E383BCC0();
  *(v0 + 128) = sub_1E383BCC0();
  *(v0 + 136) = sub_1E383BCC0();
  *(v0 + 144) = 0;
  type metadata accessor for ContextMenuButtonLayout();
  *(v0 + 152) = sub_1E3890F28();
  type metadata accessor for DownloadStateIndicatorLayout();
  *(v0 + 160) = sub_1E3C6D918();
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  v1 = sub_1E3C2F9A0();

  sub_1E3A216BC();
  sub_1E3C37CBC(v1[13], 39);
  sub_1E3C37CBC(v1[16], 23);
  sub_1E3C37CBC(v1[14], 96);
  sub_1E3C37CBC(v1[15], 15);
  sub_1E3C37CBC(v1[19], 67);
  sub_1E3C37CBC(v1[20], 233);

  return v1;
}

void sub_1E3A225B0(uint64_t a1, void *a2, uint64_t a3, __n128 a4)
{
  v6 = a3;
  sub_1E3C35CF4(a1, a2);
  v8 = sub_1E3A22650(a1, a3, v7);
  v9 = sub_1E3A2240C(v8 & 1);
  if (v6 != 5)
  {
    sub_1E3890B18(v9, v10, v11);
    if (sub_1E4205E84())
    {
      sub_1E3A70DC8(0);
    }
  }
}

uint64_t sub_1E3A22650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (BYTE1(a2) == 2)
  {
    if (a2 == 5)
    {
      goto LABEL_12;
    }

LABEL_9:
    sub_1E3890B18(a1, a2, a3);
    if ((sub_1E4205E84() & 1) == 0 || (sub_1E3A24FDC(v3) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a2 == 5)
  {
LABEL_12:
    LOBYTE(v5) = 0;
    return v5 & 1;
  }

  v4 = a2;
  sub_1E3890B18(a1, a2, a3);
  a1 = sub_1E4205E84();
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v4 & 0x100) != 0)
  {
LABEL_11:
    LOBYTE(v5) = 1;
    return v5 & 1;
  }

  v5 = [objc_opt_self() isPad];
  if (v5)
  {
    LOBYTE(v5) = sub_1E3A24FDC(v3);
  }

  return v5 & 1;
}

uint64_t sub_1E3A22750(uint64_t a1)
{
  result = sub_1E385050C();
  if (result)
  {
    type metadata accessor for TextBadgeLayout(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v3 = result;
      OUTLINED_FUNCTION_3_0(v1 + 144, v18);
      *(v1 + 144) = v3;
      swift_retain_n();

      OUTLINED_FUNCTION_5_0(v1 + 177, v32);
      v4 = v1 + 144;
      if (*(v1 + 177) == 1)
      {
        OUTLINED_FUNCTION_5_0(v4, __src);
        if (*(v1 + 144))
        {
          OUTLINED_FUNCTION_8();
          v6 = *(v5 + 1808);

          v6(1);
LABEL_8:
        }
      }

      else
      {
        OUTLINED_FUNCTION_5_0(v4, v31);
        if (*(v1 + 144))
        {
          __dst[0] = xmmword_1E42B29E0;
          memset(&__dst[1], 0, 17);
          __asm { FMOV            V0.2D, #12.0 }

          v28[0] = _Q0;
          v28[1] = xmmword_1E4298720;
          v29 = 0;
          v26[0] = xmmword_1E42B3F30;
          v26[1] = xmmword_1E429D550;
          v27 = 0;
          __asm { FMOV            V1.2D, #14.0 }

          v24[0] = _Q1;
          v24[1] = _Q1;
          v25 = 0;
          v22[0] = xmmword_1E4298700;
          v22[1] = xmmword_1E4298700;
          v23 = 0;
          v20[0] = _Q0;
          v20[1] = _Q0;
          v21 = 0;
          type metadata accessor for UIEdgeInsets();
          v14 = v13;

          sub_1E3C2FCB8(__dst, v28, v26, v24, v22, v20, v14, __src);
          memcpy(__dst, __src, 0xE9uLL);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_36();
          (*(v15 + 1600))(__dst, 0, v16 & 1, v14);
          goto LABEL_8;
        }
      }

      v17 = *sub_1E3810A0C();

      sub_1E3C37EC8(v3, v17);
    }
  }

  return result;
}

double sub_1E3A22990()
{

  return result;
}

uint64_t sub_1E3A229F0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3A22A58()
{
  v0 = sub_1E3A229F0();

  return MEMORY[0x1EEE6BDC0](v0, 178, 7);
}

uint64_t sub_1E3A22A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E3A22650(a1, a3, a3);
  OUTLINED_FUNCTION_5_0(v3 + 177, v6);
  return (v4 ^ *(v3 + 177)) & 1;
}

uint64_t sub_1E3A22B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  swift_allocObject();
  return sub_1E3A22B70(v5, a2, a3);
}

uint64_t sub_1E3A22B70(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 272) = 0;
  *(v3 + 280) = 0;
  *(v3 + 248) = a1;
  v6 = 0x80000001E4266410;
  v7 = 0x2E72656B61657073;
  if (a1)
  {
    v7 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xEC0000006C6C6966;
  }

  *(v3 + 256) = v7;
  *(v3 + 264) = v6;
  OUTLINED_FUNCTION_14_0(v3 + 272, a2);
  *(v3 + 272) = a2;
  *(v3 + 280) = a3;
  sub_1E37FAED4(a2, a3);
  v8 = sub_1E4205CB4();
  v9 = sub_1E39BEDCC(59, v8, 0);

  sub_1E37FAED8(a2, a3);
  if (v9)
  {
  }

  return v9;
}

uint64_t sub_1E3A22C64(uint64_t a1)
{
  if (*a1 != _TtC8VideosUI19MuteButtonViewModel)
  {
    goto LABEL_9;
  }

  if ((sub_1E39C0504(v3) & 1) == 0)
  {

LABEL_9:
    v7 = 0;
    return v7 & 1;
  }

  swift_beginAccess();
  v5 = *(v1 + 256);
  v4 = *(v1 + 264);
  swift_beginAccess();
  if (v5 == *(a1 + 256) && v4 == *(a1 + 264))
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_1E42079A4();
  }

  return v7 & 1;
}

uint64_t sub_1E3A22DB0()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return sub_1E37FAED8(v1, v2);
}

uint64_t sub_1E3A22DE0()
{
  v0 = ViewModel.deinit();

  sub_1E37FAED8(*(v0 + 272), *(v0 + 280));
  return v0;
}

uint64_t sub_1E3A22E18()
{
  v0 = sub_1E3A22DE0();

  return MEMORY[0x1EEE6BDC0](v0, 288, 7);
}

id sub_1E3A22E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306D8, &qword_1E42B2130);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306E0, &qword_1E42B2138);
  OUTLINED_FUNCTION_0_10();
  v41 = v10;
  v42 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - v11;
  swift_beginAccess();
  v13 = *(a1 + 248);
  if (v13 == 1)
  {
    v14 = 0x6574756D6E55;
  }

  else
  {
    v14 = 1702131021;
  }

  if (v13 == 1)
  {
    v15 = 0xE600000000000000;
  }

  else
  {
    v15 = 0xE400000000000000;
  }

  if (v13 == 1)
  {
    v16 = 0xD000000000000010;
  }

  else
  {
    v16 = 0x6F747475422E5654;
  }

  if (v13 == 1)
  {
    v17 = 0x80000001E426CE40;
  }

  else
  {
    v17 = 0xEE006574754D2E6ELL;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v19 = result;
    v20 = sub_1E3741090(v16, v17, result);
    v22 = v21;

    if (v22)
    {

      v40 = v20;
      v15 = v22;
    }

    else
    {
      v40 = v14;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF306F0, &qword_1E42B3FC0);
    v44 = MEMORY[0x1E6981748];
    v45 = MEMORY[0x1E6981710];
    swift_getOpaqueTypeConformance2();
    sub_1E4203964();
    type metadata accessor for ButtonLayout();
    v23 = j__OUTLINED_FUNCTION_18();
    v24 = sub_1E3B050E8();
    v25 = j__OUTLINED_FUNCTION_18();
    v26 = sub_1E3BBD964(8, v23 & 1, v24, v25 & 1);
    v44 = sub_1E3751C54(v26);
    LOBYTE(v45) = v27;
    v28 = sub_1E3A232DC();
    v31 = sub_1E375320C(v28, v29, v30);
    sub_1E3EC5F84(&v44, v3, &type metadata for SystemButtonStyle, v28, v31, v32, v33, v34, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, *v50);

    (*(v5 + 8))(v8, v3);
    v48 = v40;
    v49 = v15;
    v44 = v3;
    v45 = &type metadata for SystemButtonStyle;
    v46 = v28;
    v47 = v31;
    OUTLINED_FUNCTION_0_116();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E32822E0(OpaqueTypeConformance2, v36, v37);
    v38 = v42;
    sub_1E4203414();
    (*(v41 + 8))(v12, v38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3A23208(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_15_0(v2 + 272, a2);
  v4 = *(v2 + 272);
  if (v4)
  {

    v4(v5);
    v6 = OUTLINED_FUNCTION_32_0();
    return sub_1E37FAED8(v6, v7);
  }

  return result;
}

double sub_1E3A23258(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 256, a2);

  sub_1E42037C4();
  sub_1E39B9610();

  return result;
}

unint64_t sub_1E3A232DC()
{
  result = qword_1ECF306F8;
  if (!qword_1ECF306F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF306D8, &qword_1E42B2130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF306F8);
  }

  return result;
}

void *sub_1E3A23390()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for RolesInfoViewLayout();
    v3 = swift_allocObject();
    v1 = sub_1E3A2360C(v3);
    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3A2345C()
{
  if ((*(v0 + 121) & 1) == 0)
  {
    return *(v0 + 112);
  }

  result = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 1;
  return result;
}

uint64_t sub_1E3A23488(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  *(v2 + 121) = 0;
  return result;
}

uint64_t sub_1E3A234D0(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 256;
  sub_1E3C2F9A0();
  OUTLINED_FUNCTION_2_1();
  v3 = *(v2 + 1752);

  v5 = v3(v4);
  v6 = (*(*v1 + 1704))(v5);
  sub_1E3C37CBC(v6, 94);

  return v1;
}

uint64_t sub_1E3A23594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = TVAppFeature.isEnabled.getter(10, a2, a3);
  if (result)
  {
    *(v3 + 112) = 0x4070400000000000;
    *(v3 + 120) = 0;
  }

  return result;
}

uint64_t sub_1E3A235C4()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 122, 7);
}

void *sub_1E3A2360C(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v2 = sub_1E3C2F9A0();

  v5 = TVAppFeature.isEnabled.getter(10, v3, v4);
  OUTLINED_FUNCTION_9_2();
  (*(v6 + 1728))();
  OUTLINED_FUNCTION_2_1();
  if (v5)
  {
    v8 = 14;
  }

  else
  {
    v8 = 17;
  }

  (*(v7 + 1696))(v8);

  OUTLINED_FUNCTION_9_2();
  (*(v9 + 1704))();
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1696))(v8);

  OUTLINED_FUNCTION_9_2();
  v12 = *(v11 + 1704);
  v12();
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1984))(4);

  v16 = TVAppFeature.isEnabled.getter(10, v14, v15);
  v17 = (v12)();
  if (v16)
  {
    v18 = sub_1E3C8BE74();
    sub_1E3DEFBE8(2, v18);

    OUTLINED_FUNCTION_9_2();
    (*(v19 + 1728))();
    v20 = sub_1E3C8BE74();
    sub_1E3DEFBE8(1, v20);
  }

  else
  {
    v21 = *sub_1E3E5F6B8();
    v22 = *(*v17 + 680);
    v23 = v21;
    v22(v21);

    OUTLINED_FUNCTION_9_2();
    v25 = (*(v24 + 1728))();
    v26 = *sub_1E3E5FD88();
    v27 = *(*v25 + 680);
    v28 = v26;
    v27(v26);
  }

  v30 = (*v2 + 1728);
  v31 = *v30;
  v32 = (*v30)(v29);
  (*(*v32 + 1984))(4);

  v34 = (v12)(v33);
  sub_1E3C37CBC(v34, 23);

  v36 = v31(v35);
  sub_1E3C37CBC(v36, 17);

  return v2;
}

uint64_t sub_1E3A23A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v41 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30FC0, &qword_1E42B4170);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30FC8, &qword_1E42B4178);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30FD0, &qword_1E42B4180);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - v11;
  v42 = *(v2 + 24);
  v43 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C708, &qword_1E42BD890);
  sub_1E42038F4();
  v13 = 0.0;
  if (v44 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = -v44;
  }

  v15 = (*(v2 + 8) - v14 * *(v2 + 48)) / *(v2 + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30FD8, &qword_1E42B4188);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30FE0, &qword_1E42B4190);
  v19 = sub_1E32752B0(&qword_1ECF30FE8, &qword_1ECF30FD8, &qword_1E42B4188, MEMORY[0x1E697FDF8]);
  v20 = sub_1E4201734();
  OUTLINED_FUNCTION_0_117();
  v23 = sub_1E3A240FC(v21, v22, MEMORY[0x1E697ED28]);
  *&v42 = v20;
  *(&v42 + 1) = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v37;
  MEMORY[0x1E690D7F0](sub_1E3A2405C, v16, v17, v18, v19, OpaqueTypeConformance2);

  if (*(v3 + 16))
  {
    v13 = v14;
  }

  v26 = (*(v38 + 32))(v8, v25, v40);
  v27 = &v8[*(v6 + 44)];
  *v27 = 0;
  *(v27 + 1) = v13;
  v28 = (*(**v3 + 216))(v26);
  type metadata accessor for CGPoint(0);
  v30 = v29;
  sub_1E3A240FC(&qword_1ECF2C6F8, type metadata accessor for CGPoint, MEMORY[0x1E695EFB8]);
  v31 = sub_1E3B501F8(v28, v30);

  v32 = swift_allocObject();
  v33 = *(v3 + 16);
  *(v32 + 16) = *v3;
  *(v32 + 32) = v33;
  *(v32 + 48) = *(v3 + 32);
  *(v32 + 64) = *(v3 + 48);
  sub_1E3A241A0(v8, v12, &qword_1ECF30FC8, &qword_1E42B4178);
  *&v12[*(v10 + 60)] = v31;
  v34 = &v12[*(v10 + 64)];
  *v34 = sub_1E3A24144;
  *(v34 + 1) = v32;
  sub_1E3A241A0(v12, v41, &qword_1ECF30FD0, &qword_1E42B4180);
  return sub_1E3A24208(v3, &v42);
}

void sub_1E3A23EA4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v22 = a2;
  v9 = *(* + 192);

  v10 = v9();
  v12 = v11;

  v20 = v10;
  v21 = v12;
  type metadata accessor for CGPoint(0);
  sub_1E42038E4();
  v13 = v16;
  v14 = v15;
  *&v15 = a1;
  *(&v15 + 1) = a5;
  LOBYTE(v16) = v22;
  *(&v16 + 1) = LODWORD(v10);
  HIDWORD(v16) = *&v10 >> 24;
  v17 = v14;
  v18 = v13;
  v19 = 0x3FF0CCCCCCCCCCCDLL;
  MEMORY[0x1E690DE70](&v15, a3, &type metadata for RubberBand, a4);
}

unint64_t sub_1E3A23FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF531B0[0];
  if (!qword_1ECF531B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF531B0);
  }

  return result;
}

uint64_t sub_1E3A2405C()
{
  v1 = *(v0 + 16);
  sub_1E4203F34();
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4201734();
  OUTLINED_FUNCTION_0_117();
  v9 = sub_1E3A240FC(v7, v8, MEMORY[0x1E697ED28]);
  return MEMORY[0x1E690B6C0](v6, v9, v1, v1, v3, v5);
}

uint64_t sub_1E3A240FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3A241A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id sub_1E3A24240()
{
  result = [v0 context];
  if (result)
  {
    v2 = result;
    v3 = [result JSGlobalContextRef];

    v4 = [v0 JSValueRef];
    if (JSValueGetType(v3, v4) == kJSTypeObject)
    {
      return JSObjectIsConstructor(v3, v4);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3A242D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v13 = sub_1E3A246FC;
  v14 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E38896EC;
  v12 = &block_descriptor_43;
  v7 = _Block_copy(v11);

  sub_1E3A246B8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31000, &qword_1E42B4198);
  v11[0] = v7;
  _Block_copy(v7);
  v8 = a1;
  result = sub_1E3A243F8(v11, a1);
  if (result)
  {
    v10 = result;
    _Block_release(v7);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3A243F8(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_1E4207994();
    (*(v6 + 8))(v9, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() valueWithObject:v10 inContext:a2];
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1E3A2454C(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1E4207574();
  v3 = a1 + 32;
  if (!v2)
  {
    return v6;
  }

  while (1)
  {
    sub_1E328438C(v3, v5);
    sub_1E3A246B8();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    sub_1E4207554();
    v3 += 32;
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_1E3A24638(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1E4205ED4();
  }

  else
  {
    v4 = 0;
  }

  v5 = [swift_getObjCClassFromMetadata() valueWithNewErrorFromMessage:v4 inContext:a3];

  return v5;
}

unint64_t sub_1E3A246B8()
{
  result = qword_1EE23AE50;
  if (!qword_1EE23AE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AE50);
  }

  return result;
}

uint64_t sub_1E3A246FC()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 currentContext];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 currentThis];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1E3A24924(v2);
      if (v7)
      {
        v8 = sub_1E3A2454C(v7);

        if (v8)
        {
          v9 = v1(v4, v6, v8);

          return v9;
        }
      }
    }

    else
    {
      v6 = v4;
    }
  }

  result = sub_1E42076B4();
  __break(1u);
  return result;
}

uint64_t sub_1E3A24924(void *a1)
{
  v1 = [a1 currentArguments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E3A24980(uint64_t a1)
{
  type metadata accessor for LayoutGrid();
  v1 = swift_allocObject();
  type metadata accessor for VUIGridStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31008, &qword_1E42B4200);
  OUTLINED_FUNCTION_3_98(&qword_1EE23B388);
  OUTLINED_FUNCTION_77();
  v2 = sub_1E4205CB4();
  *(v1 + 16) = v2;
  result = sub_1E3A24A94(v2, v3, v4);
  qword_1EE2AB288 = v1;
  return result;
}

uint64_t sub_1E3A24A0C()
{
  v0 = swift_allocObject();
  type metadata accessor for VUIGridStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31008, &qword_1E42B4200);
  OUTLINED_FUNCTION_3_98(&qword_1EE23B388);
  OUTLINED_FUNCTION_77();
  v1 = sub_1E4205CB4();
  *(v0 + 16) = v1;
  sub_1E3A24A94(v1, v2, v3);
  return v0;
}

uint64_t sub_1E3A24A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3A26870(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_7_98(&unk_1F5D69930);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1E3A26E78(v3, 0, isUniquelyReferenced_nonNull_native);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7_98(&unk_1F5D69A30);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_119();
  sub_1E3A26E78(v3, 1, v5);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7_98(&unk_1F5D69B30);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  v6 = OUTLINED_FUNCTION_0_118();
  sub_1E3A26E78(v6, 3, v7);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7_98(&unk_1F5D69C30);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_119();
  sub_1E3A26E78(v3, 4, v8);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7_98(&unk_1F5D69D30);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  v9 = OUTLINED_FUNCTION_0_118();
  sub_1E3A26E78(v9, 5, v10);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7_98(&unk_1F5D69E30);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_119();
  sub_1E3A26E78(v3, 6, v11);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7_98(&unk_1F5D69F30);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  v12 = OUTLINED_FUNCTION_0_118();
  sub_1E3A26E78(v12, 7, v13);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7_98(&unk_1F5D6A030);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  v14 = OUTLINED_FUNCTION_0_118();
  sub_1E3A26E78(v14, 8, v15);
  OUTLINED_FUNCTION_6_81();
  v18 = TVAppFeature.isEnabled.getter(10, v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31030, &qword_1E42B43D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A230;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_1E42B41A0;
  *(inited + 56) = 0x4000000000000000;
  *(inited + 64) = 1;
  v20 = OUTLINED_FUNCTION_19_55(inited, xmmword_1E42B41A0);
  *(v20 + 104) = xmmword_1E42B41B0;
  *(v20 + 120) = 0x4008000000000000;
  *(v20 + 128) = 3;
  *(v20 + 136) = xmmword_1E42B41C0;
  *(v20 + 152) = 0x4008000000000000;
  *(v20 + 160) = 4;
  *(v20 + 168) = xmmword_1E42B41D0;
  *(v20 + 184) = 0x4010000000000000;
  *(v20 + 192) = 5;
  *(v20 + 200) = xmmword_1E42B41E0;
  *(v20 + 216) = 0x4014000000000000;
  *(v20 + 224) = 6;
  v21 = 6.0;
  v22 = 7.0;
  if ((v18 & 1) == 0)
  {
    v22 = 6.0;
  }

  *(v20 + 232) = v22;
  *(v20 + 240) = 0x3FF0000000000000;
  *(v20 + 248) = v22;
  v23 = OUTLINED_FUNCTION_7_98(v20);
  OUTLINED_FUNCTION_5_96();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_119();
  sub_1E3A26E78(v23, 9, v24);
  OUTLINED_FUNCTION_6_81();
  v25 = OUTLINED_FUNCTION_7_98(&unk_1F5D6A130);
  OUTLINED_FUNCTION_5_96();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_119();
  sub_1E3A26E78(v25, 13, v26);
  OUTLINED_FUNCTION_6_81();
  v27 = OUTLINED_FUNCTION_7_98(&unk_1F5D6A230);
  OUTLINED_FUNCTION_5_96();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_119();
  sub_1E3A26E78(v27, 14, v28);
  OUTLINED_FUNCTION_6_81();
  v29 = OUTLINED_FUNCTION_7_98(&unk_1F5D6A270);
  OUTLINED_FUNCTION_5_96();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_119();
  sub_1E3A26E78(v29, 18, v30);
  OUTLINED_FUNCTION_6_81();
  v31 = OUTLINED_FUNCTION_7_98(&unk_1F5D6A370);
  OUTLINED_FUNCTION_5_96();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_119();
  sub_1E3A26E78(v31, 19, v32);
  OUTLINED_FUNCTION_6_81();
  v33 = OUTLINED_FUNCTION_7_98(&unk_1F5D6A470);
  OUTLINED_FUNCTION_5_96();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_119();
  sub_1E3A26E78(v33, 20, v34);
  v35 = OUTLINED_FUNCTION_6_81();
  if ((sub_1E39DFFC0(v35, v36, v37) & 1) == 0)
  {
    v21 = 4.0;
  }

  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_1E429A230;
  *(v38 + 32) = 0;
  *(v38 + 40) = xmmword_1E42B41F0;
  *(v38 + 56) = 0x4000000000000000;
  *(v38 + 64) = 1;
  v39 = OUTLINED_FUNCTION_19_55(v38, xmmword_1E42B41F0);
  *(v39 + 104) = xmmword_1E42B41C0;
  *(v39 + 120) = 0x4008000000000000;
  *(v39 + 128) = 3;
  *(v39 + 136) = xmmword_1E42B41C0;
  *(v39 + 152) = 0x4008000000000000;
  *(v39 + 160) = 4;
  *(v39 + 168) = xmmword_1E42B41D0;
  *(v39 + 184) = 0x4010000000000000;
  *(v39 + 192) = 5;
  *(v39 + 200) = xmmword_1E42B41D0;
  *(v39 + 216) = 0x4010000000000000;
  *(v39 + 224) = 6;
  *(v39 + 232) = v21;
  *(v39 + 240) = 0x3FF0000000000000;
  *(v39 + 248) = v21;
  OUTLINED_FUNCTION_7_98(v39);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  v40 = OUTLINED_FUNCTION_0_118();
  sub_1E3A26E78(v40, 16, v41);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7_98(&unk_1F5D6A570);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  v42 = OUTLINED_FUNCTION_0_118();
  sub_1E3A26E78(v42, 26, v43);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7_98(&unk_1F5D6A670);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  v44 = OUTLINED_FUNCTION_0_118();
  sub_1E3A26E78(v44, 12, v45);
  OUTLINED_FUNCTION_6_81();
  OUTLINED_FUNCTION_7_98(&unk_1F5D6A770);
  OUTLINED_FUNCTION_4_98();
  swift_isUniquelyReferenced_nonNull_native();
  v46 = OUTLINED_FUNCTION_0_118();
  sub_1E3A26E78(v46, 24, v47);
  OUTLINED_FUNCTION_6_81();
  v48 = OUTLINED_FUNCTION_7_98(&unk_1F5D6A870);
  OUTLINED_FUNCTION_5_96();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_119();
  sub_1E3A26E78(v48, 25, v49);
  return OUTLINED_FUNCTION_6_81();
}

uint64_t sub_1E3A24FDC(uint64_t a1)
{
  v1 = 0xE600000000000000;
  v2 = a1;
  switch(a1)
  {
    case 1:
    case 3:
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_14_75();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_16_61();
      goto LABEL_6;
    case 5:
      OUTLINED_FUNCTION_13_73();
      goto LABEL_6;
    case 6:
      OUTLINED_FUNCTION_15_66();
      v1 = 0xE700000000000000;
LABEL_6:
      OUTLINED_FUNCTION_10_68();
      v5 = OUTLINED_FUNCTION_40_5(v4, v1, v3 & 0xFFFF0000FFFFFFFFLL | 0x317300000000);

      if (v5)
      {
        return 1;
      }

      v6 = sub_1E3A253B8(v2);
      v8 = v7;
      if (v6 == 0x327373616C63 && v7 == 0xE600000000000000)
      {
        goto LABEL_17;
      }

      v10 = v6;
      v11 = OUTLINED_FUNCTION_40_5(v6, v7, 0x327373616C63);

      if (v11)
      {
        return 1;
      }

      OUTLINED_FUNCTION_10_68();
      v13 = v12 & 0xFFFF0000FFFFFFFFLL | 0x337300000000;
      if (v10 == v13 && v8 == 0xE600000000000000)
      {
LABEL_17:

        return 1;
      }

      else
      {
        v15 = OUTLINED_FUNCTION_40_5(v10, v8, v13);

        return v15 & 1;
      }

    default:
      goto LABEL_17;
  }
}

uint64_t sub_1E3A2511C(uint64_t a1)
{
  v1 = a1;
  v2 = 0xE600000000000000;
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_14_75();
      goto LABEL_6;
    case 3:
      goto LABEL_17;
    case 4:
      OUTLINED_FUNCTION_16_61();
      goto LABEL_6;
    case 5:
      OUTLINED_FUNCTION_13_73();
      goto LABEL_6;
    case 6:
      OUTLINED_FUNCTION_15_66();
      v2 = 0xE700000000000000;
      goto LABEL_6;
    default:
LABEL_6:
      OUTLINED_FUNCTION_10_68();
      v5 = OUTLINED_FUNCTION_40_5(v4, v2, v3 & 0xFFFF0000FFFFFFFFLL | 0x347300000000);

      if (v5)
      {
        return 1;
      }

      v6 = sub_1E3A253B8(v1);
      v8 = v7;
      if (v6 == 0x357373616C63 && v7 == 0xE600000000000000)
      {
        goto LABEL_17;
      }

      v10 = v6;
      OUTLINED_FUNCTION_77();
      v14 = OUTLINED_FUNCTION_40_5(v11, v12, v13);

      if (v14)
      {
        return 1;
      }

      OUTLINED_FUNCTION_10_68();
      v16 = v15 & 0xFFFF0000FFFFFFFFLL | 0x367300000000;
      if (v10 == v16 && v8 == 0xE600000000000000)
      {
LABEL_17:

        return 1;
      }

      else
      {
        v18 = OUTLINED_FUNCTION_40_5(v10, v8, v16);

        return v18 & 1;
      }
  }
}

uint64_t sub_1E3A25254(char a1)
{
  v1 = 1;
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_14_75();
      goto LABEL_5;
    case 4:
      OUTLINED_FUNCTION_16_61();
      goto LABEL_5;
    case 5:
      OUTLINED_FUNCTION_13_73();
      goto LABEL_5;
    case 6:
      goto LABEL_6;
    default:
LABEL_5:
      OUTLINED_FUNCTION_10_68();
      v1 = sub_1E42079A4();
LABEL_6:

      return v1 & 1;
  }
}

uint64_t sub_1E3A2532C()
{
  v0 = objc_opt_self();
  if ([v0 isTV])
  {
    return 6;
  }

  if ([v0 isPad])
  {
    return 3;
  }

  return [v0 isVision];
}

uint64_t sub_1E3A253B8(char a1)
{
  result = 0x317373616C63;
  switch(a1)
  {
    case 1:
      result = 0x327373616C63;
      break;
    case 2:
      result = OUTLINED_FUNCTION_14_75();
      break;
    case 3:
      result = 0x347373616C63;
      break;
    case 4:
      result = OUTLINED_FUNCTION_16_61();
      break;
    case 5:
      result = OUTLINED_FUNCTION_13_73();
      break;
    case 6:
      result = OUTLINED_FUNCTION_15_66();
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3A25474()
{
  v0 = sub_1E4207784();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3A254D4(char a1)
{
  sub_1E4207B44();
  sub_1E3A253B8(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3A25540(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3A2561C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3A253B8(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E3A2567C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A25474();
  *a1 = result;
  return result;
}

uint64_t sub_1E3A256AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3A253B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3A256EC()
{
  v0 = [objc_opt_self() vui_keyWindow];
  v1 = v0;
  if (v0 && ([v0 bounds], Width = CGRectGetWidth(v7), Width != 0.0))
  {
    v4 = Width;
    type metadata accessor for LayoutGrid();
    v3 = sub_1E3A2579C(v4);
  }

  else
  {
    v3 = sub_1E3A2532C();
  }

  v5 = v3;

  return v5;
}

uint64_t sub_1E3A2579C(double a1)
{
  v2 = sub_1E3A2532C();
  type metadata accessor for LayoutGrid();
  if (a1 == 812.0 || a1 == 896.0)
  {
    v3 = sub_1E3952C64();
  }

  else
  {
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    v6 = *(MEMORY[0x1E69DDCE0] + 24);
    v3 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  v7 = a1 - sub_1E3952BE0(v3, v4, v5, v6);
  if (v7 >= 0.0 && v7 < 375.0)
  {
    return 0;
  }

  if (v7 >= 375.0 && v7 < 461.0)
  {
    return 1;
  }

  if (v7 >= 461.0 && v7 < 727.0)
  {
    return 2;
  }

  if (v7 >= 727.0 && v7 < 982.0)
  {
    return 3;
  }

  if (v7 >= 982.0 && v7 < 1195.0)
  {
    return 4;
  }

  if (v7 < 1195.0)
  {
    return v2;
  }

  return 5;
}

void sub_1E3A258E4(double a1)
{
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a1);
  sub_1E3A25914();
}

void sub_1E3A25950(double a1)
{
  type metadata accessor for LayoutGrid();
  v2 = sub_1E3A2579C(a1);
  sub_1E3A2593C(v2);
}

void sub_1E3A259B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    (*(*a1 + 984))();
    OUTLINED_FUNCTION_1_32();
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0, &qword_1E429ED88);
    OUTLINED_FUNCTION_4_35(v4, v5, v4, v6, v7, v8);
    type metadata accessor for LayoutGrid();
    v9 = sub_1E3A25B9C(a1, v23, 1);
  }

  else
  {
    (*(*a1 + 984))();
    OUTLINED_FUNCTION_1_32();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0, &qword_1E429ED88);
    OUTLINED_FUNCTION_4_35(v10, v11, v10, v12, v13, v14);
    v9 = v23;
  }

  v15 = (*(*a1 + 1200))();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  (*(*a1 + 1128))(v15);
  OUTLINED_FUNCTION_1_32();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  OUTLINED_FUNCTION_4_35(v18, v19, v18, v20, v21, v22);
  type metadata accessor for LayoutGrid();
  sub_1E3A25C38(v9, v17, *&v23);
}

id sub_1E3A25B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = objc_opt_self();
  result = sub_1E3A25EB8(a1, [v6 isAXSmallEnabled_], objc_msgSend(v6, sel_isAXLargeEnabled_, 0), v3);
  if (v8)
  {
    return a2;
  }

  return result;
}

double sub_1E3A25C38(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [objc_opt_self() isPad];
  if (v6)
  {
    v7 = 6;
  }

  else
  {
    v7 = 3;
  }

  if (v6)
  {
    v8 = &unk_1F5D6AA80;
  }

  else
  {
    v8 = &unk_1F5D6AAD0;
  }

  v9 = 0.0;
  do
  {
    v10 = *v8++;
    v11 = sub_1E3A25D00(a1, a2, v10, a3);
    if (v9 <= v11)
    {
      v9 = v11;
    }

    --v7;
  }

  while (v7);

  return v9;
}

double sub_1E3A25D00(uint64_t a1, uint64_t a2, double a3, double a4)
{
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a3);
  v8 = sub_1E3A25914();
  v12 = v9;
  v13 = v11;
  v14 = a3;
  switch(a1)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 24:
    case 25:
    case 26:
      v15 = sub_1E3A2579C(a3);
      if (qword_1EE2A9600 != -1)
      {
        OUTLINED_FUNCTION_2_94(&qword_1EE2A9600);
      }

      v16 = qword_1EE2AB288;
      swift_beginAccess();
      sub_1E3A25FF0(a1, *(v16 + 16));
      v14 = 0.0;
      if (v17)
      {
        *&v18 = COERCE_DOUBLE(sub_1E3A26040(v15, v17));
        v20 = v19;
        v22 = v21;
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          v25 = sub_1E3A2579C(a3);
          v26 = sub_1E3A2593C(v25);
          v27 = v20 * a4;
          v28 = v26 + 36.0;
          if (a2 == 1)
          {
            v28 = v13;
            v27 = a4;
            v29 = v22;
          }

          else
          {
            v29 = *&v18;
          }

          v14 = (v27 + -1.0) * v26 + v27 * (a3 - v12 - v28 - (v29 + -1.0) * v26) / v29;
        }
      }

      break;
    case 21:
      v14 = a3 - sub_1E3952BE0(v8, v9, v10, v11);
      break;
    case 22:
      return v14;
    case 23:
      v14 = 568.0;
      break;
    default:
      v14 = 0.0;
      break;
  }

  return v14;
}

id sub_1E3A25EB8(uint64_t a1, char a2, char a3, char a4)
{
  v6 = a1;
  if ((a2 & 1) != 0 && a1)
  {
    a1 = (*(*a1 + 1056))(a1);
    v8 = v7;
    if (v7)
    {
      v9 = 0;
    }

    else
    {
      v9 = a1;
    }

    if ((v7 & 1) == 0 || (a3 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v9 = 0;
  v8 = 1;
  if ((a3 & 1) != 0 && a1)
  {
LABEL_11:
    a1 = (*(*v6 + 1080))(a1);
    v8 = v10;
    if (v10)
    {
      v9 = 0;
    }

    else
    {
      v9 = a1;
    }
  }

LABEL_14:
  if (v8 & 1) != 0 && (a4)
  {
    if (v6)
    {
      v11 = (*(*v6 + 984))(a1);
      if ((v12 & 1) == 0)
      {
        return [objc_opt_self() gridStyleConsideringAX_];
      }
    }
  }

  return v9;
}

void sub_1E3A25FF0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1E3887C44(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_1E3A26040(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3A268C4(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 24 * v3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3A260B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a2 > 0x18)
  {
    return -1;
  }

  if (((1 << a2) & 0x11F5F7B) == 0)
  {
    if (((1 << a2) & 0x600000) != 0)
    {
      return a1;
    }

    return -1;
  }

  if (a4 == 7)
  {
    return -1;
  }

  if (qword_1EE2A9600 != -1)
  {
    OUTLINED_FUNCTION_2_94(&qword_1EE2A9600);
  }

  v10 = qword_1EE2AB288;
  swift_beginAccess();
  v11 = *(v10 + 16);
  if (!*(v11 + 16))
  {
    return -1;
  }

  v12 = sub_1E3887C44(a2);
  if ((v13 & 1) == 0)
  {
    return -1;
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  *&v15 = COERCE_DOUBLE(sub_1E3A26040(a4, v14));
  v17 = v16;
  v19 = v18;
  v21 = v20;

  if (v21)
  {
    return -1;
  }

  v23 = v17;
  if (a3 == 1)
  {
    v23 = 1.0;
    v24 = v19;
  }

  else
  {
    v24 = *&v15;
  }

  v25 = v23 * a5;
  v26 = v25 * a1;
  if (COERCE__INT64(fabs(v26)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v27 = ceil(v26 / v24);
  if (v27 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v28 = v24 / v25;
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v28 < 9.22337204e18)
  {
    return v27;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E3A262D8(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = 7;
  if (a2 <= 0x18 && ((1 << a2) & 0x11F5F7B) != 0)
  {
    type metadata accessor for LayoutGrid();
    v9 = sub_1E3A2579C(a4);
  }

  return sub_1E3A260B4(a1, a2, a3, v9, a5);
}

uint64_t sub_1E3A26360()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1E3A26398()
{
  result = sub_1E3A263C8(&unk_1F5D6AA38, 0, 7);
  qword_1EE28B9F8 = result;
  return result;
}

uint64_t sub_1E3A263C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__OFSUB__(a3, a2))
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    if (a3 - a2 >= *(a1 + 16))
    {
      v6 = *(a1 + 16);
    }

    else
    {
      v6 = a3 - a2;
    }

    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31020, &qword_1E42B43C8);
      v7 = sub_1E4207744();
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC8];
    }

    v9 = v7;
    sub_1E3A26F9C(a1, a2, a3, 1, &v9);
    return v9;
  }

  return result;
}

uint64_t sub_1E3A26494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_MergedGlobals_184 != -1)
  {
    a1 = swift_once();
  }

  sub_1E3A26870(a1, a2, a3);
  sub_1E4205C94();
  return v4;
}

unint64_t sub_1E3A26664()
{
  result = qword_1ECF31010;
  if (!qword_1ECF31010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31018, qword_1E42B42B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31010);
  }

  return result;
}

uint64_t sub_1E3A266C8(uint64_t a1, int a2)
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

uint64_t sub_1E3A266E8(uint64_t result, int a2, int a3)
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

_BYTE *sub_1E3A26720(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3A2682C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VUIGridStyle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3A26870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287FA8[0];
  if (!qword_1EE287FA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE287FA8);
  }

  return result;
}

unint64_t sub_1E3A268C4(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3A253B8(v1);
  sub_1E4206014();

  v2 = sub_1E4207BA4();

  return sub_1E3A2694C(v1, v2);
}

unint64_t sub_1E3A2694C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE600000000000000;
      v8 = 0x317373616C63;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x327373616C63;
          break;
        case 2:
          v8 = 0x337373616C63;
          break;
        case 3:
          v8 = 0x347373616C63;
          break;
        case 4:
          v8 = 0x357373616C63;
          break;
        case 5:
          v8 = 0x367373616C63;
          break;
        case 6:
          v7 = 0xE700000000000000;
          v8 = 0x56547373616C63;
          break;
        default:
          break;
      }

      v9 = 0xE600000000000000;
      v10 = 0x317373616C63;
      switch(a1)
      {
        case 1:
          v10 = 0x327373616C63;
          break;
        case 2:
          v10 = 0x337373616C63;
          break;
        case 3:
          v10 = 0x347373616C63;
          break;
        case 4:
          v10 = 0x357373616C63;
          break;
        case 5:
          v10 = 0x367373616C63;
          break;
        case 6:
          v9 = 0xE700000000000000;
          v10 = 0x56547373616C63;
          break;
        default:
          break;
      }

      if (v8 == v10 && v7 == v9)
      {
        break;
      }

      v12 = sub_1E42079A4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_1E3A26B5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31020, &qword_1E42B43C8);
  v6 = sub_1E4207724();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_29:

LABEL_30:
    *v3 = v7;
    return;
  }

  v31 = v4;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_30;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      sub_1E373CBF0(0, (v30 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    sub_1E4207B44();
    sub_1E4206014();

    v21 = sub_1E4207BA4();
    v22 = -1 << *(v7 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + v25) = v19;
    *(*(v7 + 56) + 8 * v25) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

unint64_t sub_1E3A26E78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E3887C44(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31038, &qword_1E42B43E0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1E3887C44(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    type metadata accessor for VUIGridStyle(0);
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {

    return sub_1E38CF6BC(v10, a2, a1, v14);
  }
}

void sub_1E3A26F9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = a2;
  v8 = 0;
  v27 = *(a1 + 16);
  while (1)
  {
    if (v27 == v8)
    {
LABEL_19:

      return;
    }

    if (v8 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_1E4207A74();
      __break(1u);
      goto LABEL_27;
    }

    if (a3 == v7)
    {
      goto LABEL_19;
    }

    if (a3 < a2)
    {
      goto LABEL_22;
    }

    if (v7 >= a3)
    {
      goto LABEL_23;
    }

    v9 = a1;
    v10 = *(a1 + v8 + 32);
    v11 = *a5;
    v13 = sub_1E3A268C4(v10);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_24;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a4)
    {
      if (v12)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31028, &qword_1E42B43D0);
      sub_1E4207654();
      if (v17)
      {
        goto LABEL_17;
      }
    }

LABEL_14:
    v20 = *a5;
    *(*a5 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    *(v20[6] + v13) = v10;
    *(v20[7] + 8 * v13) = v7;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_25;
    }

    v20[2] = v23;
    ++v7;
    ++v8;
    a4 = 1;
    a1 = v9;
  }

  sub_1E3A26B5C(v16, a4 & 1);
  v18 = sub_1E3A268C4(v10);
  if ((v17 & 1) != (v19 & 1))
  {
    goto LABEL_26;
  }

  v13 = v18;
  if ((v17 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  v24 = swift_allocError();
  swift_willThrow();

  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_27:
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD00000000000001BLL, 0x80000001E426B040);
  sub_1E4207614();
  MEMORY[0x1E69109E0](39, 0xE100000000000000);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3A27280(uint64_t a1@<X0>, void *a2@<X8>)
{
  LOBYTE(v41[0]) = 0;
  sub_1E42038E4();
  type metadata accessor for ViewMetricsRecorder();
  v6 = sub_1E3FEFA68();
  swift_retain_n();
  sub_1E39C1F18();
  v8 = v7;
  if (!sub_1E32AE9B0(v7))
  {

    a1 = 0;
    v2 = 0;
LABEL_13:
    v14 = 0;
    v18 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v6 = 0;
LABEL_34:
    *a2 = a1;
    a2[1] = v2;
    a2[2] = v14;
    a2[3] = v18;
    a2[4] = v26;
    a2[5] = v27;
    a2[6] = v28;
    a2[7] = v6;
    return;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
  }

  else
  {
    OUTLINED_FUNCTION_34_0();
    if (!v9)
    {
      __break(1u);
      goto LABEL_37;
    }
  }

  type metadata accessor for CollectionViewModel();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {

    a1 = 0;
    goto LABEL_13;
  }

  v38 = v45;
  v39 = v46;
  v10 = *(*a1 + 392);

  v12 = (v10)(v11);

  if (v12 && (OUTLINED_FUNCTION_8(), v14 = (*(v13 + 1536))(), v16 = v15, v18 = v17, , v16 != 1))
  {

    sub_1E39DFB80(v14, v16);
  }

  else
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A256EC();
    v19 = [objc_opt_self() current];
    sub_1E3C2AE10();
    v18 = v20;
    v14 = v21;
    v23 = v22;
    v24 = v10();

    if (v24)
    {
      OUTLINED_FUNCTION_8();
      (*(v25 + 1640))(v18, v14, v23);
    }
  }

  v3 = type metadata accessor for ViewModel();
  v29 = j___s8VideosUI9ViewModelCMa(v3);
  v30 = sub_1E39C1CF8(138, v29, v3);
  if (sub_1E32AE9B0(v30))
  {
    if ((v30 & 0xC000000000000001) == 0)
    {
      OUTLINED_FUNCTION_34_0();
      if (!v31)
      {
        __break(1u);
        goto LABEL_40;
      }

      v14 = *(v30 + 32);

      goto LABEL_19;
    }

LABEL_37:
    OUTLINED_FUNCTION_41_1();
    v14 = v36;
LABEL_19:

    goto LABEL_21;
  }

  v14 = 0;
LABEL_21:
  v32 = j___s8VideosUI9ViewModelCMa(v3);
  v33 = sub_1E39C1CF8(259, v32, v3);
  if (sub_1E32AE9B0(v33))
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      OUTLINED_FUNCTION_41_1();
      v18 = v37;
    }

    else
    {
      OUTLINED_FUNCTION_34_0();
      if (!v34)
      {
        __break(1u);
        goto LABEL_42;
      }

      v18 = *(v33 + 32);
    }
  }

  else
  {

    v18 = 0;
  }

  v35 = j___s8VideosUI9ViewModelCMa(v3);
  v3 = sub_1E39C1CF8(59, v35, v3);

  if (!sub_1E32AE9B0(v3))
  {

    v26 = 0;
    goto LABEL_33;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_40:
    v26 = MEMORY[0x1E6911E60](0, v3);
    goto LABEL_31;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v3 + 32);

LABEL_31:

LABEL_33:
    v41[0] = a1;
    v41[1] = v2;
    v41[2] = v14;
    v41[3] = v18;
    v41[4] = v26;
    LOBYTE(v42) = v38;
    *(&v42 + 1) = v54[0];
    HIDWORD(v42) = *(v54 + 3);
    v28 = v39;
    v43 = v39;
    v44 = v6;
    v27 = v42;
    v45 = a1;
    v46 = v2;
    v47 = v14;
    v48 = v18;
    v49 = v26;
    v50 = v38;
    *&v51[3] = *(v54 + 3);
    *v51 = v54[0];
    v52 = v39;
    v53 = v6;
    sub_1E3A28300(v41, v40);
    sub_1E3A28338(&v45);
    goto LABEL_34;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1E3A2774C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A970, &qword_1E429E840);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - v4;
  v6 = sub_1E42045D4();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4204624();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A978, &qword_1E429E848);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - v11;
  v13 = *(v1 + 8);

  sub_1E3A27D1C(v50);
  v14 = *(v1 + 32);
  v15 = *(v2 + 16);
  v16 = *(v2 + 24);

  sub_1E373CD18(v13, v50, v16, v14, v15, v49);
  v17 = MEMORY[0x1E69E7CC0];
  sub_1E4205CB4();
  sub_1E4204614();
  sub_1E37E5C70(v17);
  sub_1E4204504();
  v18 = sub_1E4204514();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  v19 = MetricsJetEngine.shared.unsafeMutableAddressor();
  v20 = *((*MEMORY[0x1E69E7D40] & **v19) + 0x68);
  v21 = *v19;
  v20();

  v22 = *(v2 + 56);
  (*(*v22 + 176))();
  v23 = sub_1E41FF594();
  v24 = __swift_storeEnumTagSinglePayload(v5, 1, 1, v23);
  sub_1E3A28368(v24, v25, v26);
  v27 = v47;
  sub_1E4202C74();
  swift_unknownObjectRelease();
  sub_1E325F748(v5, &qword_1ECF2A970, &qword_1E429E840);
  (*(v45 + 8))(v8, v46);
  sub_1E325F748(v12, &qword_1ECF2A978, &qword_1E429E848);
  memcpy(v51, v49, 0xD8uLL);
  sub_1E3A283BC(v51);
  KeyPath = swift_getKeyPath();
  v29 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31048, &qword_1E42B4488) + 36));
  *v29 = KeyPath;
  v29[1] = v22;

  v30 = *sub_1E3CD9D88();
  type metadata accessor for AppEnvironment(0);
  sub_1E3A284C4(&qword_1EE283350, type metadata accessor for AppEnvironment, &unk_1E42BD340);

  v31 = sub_1E4200504();
  v32 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31050, &unk_1E42B4490) + 36));
  *v32 = v31;
  v32[1] = v30;
  *v49 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  LOBYTE(v31) = v48;
  *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31058, &unk_1E42B44A0) + 52)) = v31;
  OUTLINED_FUNCTION_8();
  v34 = *(v33 + 208);

  v36 = v34(v35);

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70, &qword_1E429F170);
  sub_1E3A28410();
  v38 = sub_1E3B501F8(v36, v37);

  v39 = swift_allocObject();
  OUTLINED_FUNCTION_3_99(v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31068, &qword_1E42B44B0);
  *(v27 + *(v40 + 52)) = v38;
  v41 = (v27 + *(v40 + 56));
  *v41 = sub_1E3A2850C;
  v41[1] = v39;
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_3_99(v42);
  v43 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31070, qword_1E42B44B8) + 36));
  *v43 = sub_1E3A28638;
  v43[1] = v42;
  v43[2] = 0;
  v43[3] = 0;
  sub_1E3A28300(v2, v49);
  return sub_1E3A28300(v2, v49);
}

void sub_1E3A27D1C(uint64_t a1@<X8>)
{
  v5 = *(v1 + 8);
  v4 = v5;
  v6 = (*(*v5 + 392))();
  v7 = 0.0;
  if (!v6)
  {
    OUTLINED_FUNCTION_2_95();
LABEL_20:
    *a1 = v7;
    *(a1 + 8) = 0;
    *(a1 + 16) = v22;
    *(a1 + 32) = v23;
    *(a1 + 48) = v2;
    *(a1 + 56) = v5;
    *(a1 + 64) = v4;
    return;
  }

  v8 = dynamic_cast_existential_1_conditional(v6, *v6, &protocol descriptor for FlexibleGridPaddedLayout);
  if (!v8)
  {

    OUTLINED_FUNCTION_2_95();
    v22 = 0uLL;
    goto LABEL_20;
  }

  v10 = v9;
  v11 = *v8;
  (*(*v8 + 200))();
  if ([objc_opt_self() isIpadInterface])
  {
    type metadata accessor for LayoutGrid();
    v12 = sub_1E3A256EC();
    if (sub_1E373F630(v12, 0, v13) & 1) != 0 || (v14 = sub_1E3A256EC(), (sub_1E373F630(v14, 1, v15)))
    {
      sub_1E3CD9D88();
      OUTLINED_FUNCTION_8();
      v17 = *(v16 + 184);

      v19 = COERCE_DOUBLE(v17(v18));
      v21 = v20;

      if (v21)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = v19;
      }
    }

    else
    {
      v7 = 580.0 + 40.0;
    }
  }

  else
  {
    sub_1E3A286D4();
    v7 = sub_1E41DA724();
  }

  (*(v10 + 8))(v51, v11, v10);
  v24 = 0.0;
  if ((v52 & 1) == 0)
  {
    v24 = sub_1E3952BE0(v51[0], v51[1], v51[2], v51[3]);
  }

  sub_1E3EBA478(v53);
  v49[0] = *v54;
  *(v49 + 15) = *&v54[15];
  v25 = (*(*v5 + 1040))();
  if (!v25)
  {
    goto LABEL_19;
  }

  v26 = v25;
  if ((v25 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_41_1();
    v28 = v34;
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_34_0();
  if (v27)
  {
    v28 = *(v26 + 32);

LABEL_18:

    (*(*v28 + 872))(v29);

LABEL_19:
    type metadata accessor for FlexibleGridLayoutHelper();
    v30 = (*(*v4 + 960))();
    (*(*v4 + 968))(v30);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
    v31 = sub_1E39D9354();
    v2 = (*(*v31 + 200))(v7 - v24);
    v5 = v32;
    LOBYTE(v4) = v33;

    sub_1E3A28718(v53);
    v50 = 0;
    *v38 = v7;
    v38[1] = 0;
    v39[0] = 0;
    *&v39[1] = v49[0];
    *&v39[16] = *(v49 + 15);
    v40 = v2;
    v41 = v5;
    v42 = v4;
    v35 = *(v49 + 15);
    v36 = *v39;
    *v43 = v7;
    v43[1] = 0;
    v44 = 0;
    *&v45[15] = *(v49 + 15);
    *v45 = v49[0];
    v46 = v2;
    v47 = v5;
    v48 = v4;
    sub_1E3741F40(v38, v37);
    sub_1E3A28718(v43);
    v23 = v35;
    v22 = v36;
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1E3A281B4(uint64_t (*a1)(void))
{
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_8();
  (*(v2 + 176))();
  v3 = a1();
  swift_unknownObjectRelease();
  return v3;
}

double sub_1E3A2822C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1E3A27280(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

unint64_t sub_1E3A28368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31040;
  if (!qword_1ECF31040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31040);
  }

  return result;
}

unint64_t sub_1E3A28410()
{
  result = qword_1ECF31060;
  if (!qword_1ECF31060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AD70, &qword_1E429F170);
    sub_1E3A284C4(&qword_1EE23AE98, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31060);
  }

  return result;
}

uint64_t sub_1E3A284C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3A2850C()
{
  v3 = *(v0 + 56);
  v2[1] = *(v0 + 56);
  v4 = *(&v3 + 1);
  sub_1E37C5830(&v4, v2, &qword_1ECF31088, &qword_1E42E69F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E42038F4();
  v2[0] = v3;
  sub_1E4203904();
  return sub_1E325F748(&v3, &qword_1ECF294E0, &qword_1E429C8B0);
}

uint64_t objectdestroyTm_19()
{

  return swift_deallocObject();
}

double sub_1E3A28638()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 576))();
  if (v1)
  {
    (*(*v1 + 296))(v1);
  }

  return result;
}

unint64_t sub_1E3A286D4()
{
  result = qword_1EE23AD50;
  if (!qword_1EE23AD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AD50);
  }

  return result;
}

unint64_t sub_1E3A2876C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3A28794(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3A28794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24DF90;
  if (!qword_1EE24DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE24DF90);
  }

  return result;
}

uint64_t sub_1E3A28804(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E3A28844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3A288A4()
{
  result = qword_1ECF31078;
  if (!qword_1ECF31078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31070, qword_1E42B44B8);
    sub_1E3A28930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31078);
  }

  return result;
}

unint64_t sub_1E3A28930()
{
  result = qword_1ECF31080;
  if (!qword_1ECF31080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF31068, &qword_1E42B44B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31080);
  }

  return result;
}

uint64_t static PlayerHapticManagerObjC.deviceSupportsHaptics.getter()
{
  sub_1E3E4C0A4();

  v0 = sub_1E3E49B34();

  return v0 & 1;
}

double static PlayerHapticManagerObjC.setPlayer(_:)(void *a1)
{
  sub_1E3E4C0A4();
  v2 = a1;

  sub_1E3E4BFCC(a1);

  return result;
}

id PlayerHapticManagerObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlayerHapticManagerObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlayerHapticManagerObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3A28B78()
{
  result = sub_1E32859C4(v0, &selRef_genre);
  if (!v2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1E3A28BAC()
{
  if ([v0 valueForProperty_])
  {
    OUTLINED_FUNCTION_5_97();
    v1 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  OUTLINED_FUNCTION_0_119(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v17, v18, v19);
  if (v9)
  {
    v10 = swift_dynamicCast();
    v11 = v16;
    v12 = v10 ^ 1;
    if (!v10)
    {
      v11 = 0;
    }
  }

  else
  {
    sub_1E329505C(v20);
    v11 = 0;
    v12 = 1;
  }

  return v11 | (v12 << 32);
}

uint64_t sub_1E3A28C80(void *a1)
{
  if ([v1 valueForProperty_])
  {
    OUTLINED_FUNCTION_5_97();
    v2 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  OUTLINED_FUNCTION_0_119(v2, v3, v4, v5, v6, v7, v8, v9, v12, v14, v15, v16, v17);
  if (v10)
  {
    if (swift_dynamicCast())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E329505C(v18);
    return 0;
  }
}

BOOL sub_1E3A28D28()
{
  if ([v0 valueForProperty_])
  {
    OUTLINED_FUNCTION_5_97();
    v1 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *&v10 = OUTLINED_FUNCTION_0_119(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v16, v17, v18).n128_u64[0];
  if (v11)
  {
    if (OUTLINED_FUNCTION_1_18(v9, v10))
    {
      return v15 == 1;
    }
  }

  else
  {
    sub_1E329505C(v19);
  }

  return 0;
}

uint64_t sub_1E3A28DC4()
{
  if ([v0 valueForProperty_])
  {
    OUTLINED_FUNCTION_5_97();
    v1 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  OUTLINED_FUNCTION_0_119(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v16, v17, v18);
  if (!v9)
  {
    sub_1E329505C(v19);
    return 0;
  }

  v10 = sub_1E376948C();
  if ((OUTLINED_FUNCTION_1_18(v10) & 1) == 0)
  {
    return 0;
  }

  v11 = [v15 integerValue];

  if ((v11 - 1) < 2)
  {
    return 2;
  }

  if (v11 != 3)
  {
    return 1;
  }

  return v11;
}

uint64_t sub_1E3A28EAC()
{
  if ([v0 valueForProperty_])
  {
    OUTLINED_FUNCTION_5_97();
    v1 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  OUTLINED_FUNCTION_0_119(v1, v2, v3, v4, v5, v6, v7, v8, v13, v14, v16, v17, v18);
  if (!v9)
  {
    sub_1E329505C(v19);
    return 0;
  }

  v10 = sub_1E376948C();
  if ((OUTLINED_FUNCTION_1_18(v10) & 1) == 0)
  {
    return 0;
  }

  v11 = [v15 integerValue];

  if (v11 == 1)
  {
    return 2;
  }

  if (v11 == 2)
  {
    return 3;
  }

  return 1;
}

uint64_t sub_1E3A28F90()
{
  if ([v0 valueForProperty_])
  {
    OUTLINED_FUNCTION_5_97();
    v1 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *&v10 = OUTLINED_FUNCTION_0_119(v1, v2, v3, v4, v5, v6, v7, v8, v21, v23, v25, v26, v27).n128_u64[0];
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_1_18(v9, v10);
    return OUTLINED_FUNCTION_8_68(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24);
  }

  else
  {
    sub_1E329505C(v28);
    return 0;
  }
}

uint64_t sub_1E3A29024()
{
  if ([v0 valueForProperty_])
  {
    OUTLINED_FUNCTION_5_97();
    v1 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  *&v10 = OUTLINED_FUNCTION_0_119(v1, v2, v3, v4, v5, v6, v7, v8, v21, v23, v25, v26, v27).n128_u64[0];
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_1_18(v9, v10);
    return OUTLINED_FUNCTION_8_68(v12, v13, v14, v15, v16, v17, v18, v19, v22, v24);
  }

  else
  {
    sub_1E329505C(v28);
    return 0;
  }
}

unsigned __int8 *sub_1E3A290B8()
{
  if ([v0 valueForProperty_])
  {
    OUTLINED_FUNCTION_5_97();
    v1 = swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_25_4();
  }

  OUTLINED_FUNCTION_0_119(v1, v2, v3, v4, v5, v6, v7, v8, v49, v51, v53, v54, v55);
  if (!v9)
  {
    sub_1E329505C(v56);
    return 0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  if ((OUTLINED_FUNCTION_1_18(v10) & 1) == 0)
  {
    return 0;
  }

  v11 = sub_1E4205F14();
  v50 = sub_1E37D26AC(v11, v12, v52);
  v14 = v13;

  v15 = sub_1E4205F14();
  v17 = sub_1E37D26AC(v15, v16, v52);
  v19 = v18;

  v20 = sub_1E4205F14();
  v22 = sub_1E37D26AC(v20, v21, v52);
  v24 = v23;

  if (v24)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = sub_1E4205F14();
  v29 = sub_1E37D26AC(v27, v28, v52);
  v31 = v30;

  if (v31)
  {
    v33 = v29;
  }

  else
  {
    v33 = 0;
  }

  if (v31)
  {
    v34 = v31;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  v35 = HIBYTE(v26) & 0xF;
  v36 = v25 & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v26) & 0xF;
  }

  else
  {
    v37 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

    goto LABEL_92;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    v25 = sub_1E3A295AC(v25, v26, 10);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_93;
    }

    goto LABEL_92;
  }

  if ((v26 & 0x2000000000000000) == 0)
  {
    if ((v25 & 0x1000000000000000) != 0)
    {
      result = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1E4207524();
    }

    v38 = *result;
    if (v38 == 43)
    {
      if (v36 >= 1)
      {
        if (v36 != 1)
        {
          v25 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v40 && v39)
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_7_99();
              if (!v40)
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_4_99();
              if (v39)
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_132();
              if (v40)
              {
                goto LABEL_91;
              }
            }
          }

          goto LABEL_80;
        }

        goto LABEL_90;
      }

      goto LABEL_100;
    }

    if (v38 != 45)
    {
      if (v36)
      {
        v25 = 0;
        if (result)
        {
          while (1)
          {
            v44 = *result - 48;
            if (v44 > 9)
            {
              goto LABEL_90;
            }

            if (!is_mul_ok(v25, 0xAuLL))
            {
              goto LABEL_90;
            }

            v39 = __CFADD__(10 * v25, v44);
            v25 = 10 * v25 + v44;
            if (v39)
            {
              goto LABEL_90;
            }

            ++result;
            if (!--v36)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_80;
      }

LABEL_90:
      v25 = 0;
      v42 = 1;
LABEL_91:
      v45 = v42;

      if ((v45 & 1) == 0)
      {
LABEL_93:
        v46 = objc_allocWithZone(MEMORY[0x1E69DF6B8]);
        return sub_1E3A294D4(v33, v34, v50, v14, v25, v17, v19);
      }

LABEL_92:
      v25 = 0;
      goto LABEL_93;
    }

    if (v36 >= 1)
    {
      if (v36 != 1)
      {
        v25 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v40 && v39)
            {
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_7_99();
            if (!v40)
            {
              goto LABEL_90;
            }

            v39 = 10 * v25 >= v41;
            v25 = 10 * v25 - v41;
            if (!v39)
            {
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_132();
            if (v40)
            {
              goto LABEL_91;
            }
          }
        }

LABEL_80:
        v42 = 0;
        goto LABEL_91;
      }

      goto LABEL_90;
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v56[0] = v25;
  v56[1] = v26 & 0xFFFFFFFFFFFFFFLL;
  if (v25 != 43)
  {
    if (v25 != 45)
    {
      if (v35)
      {
        v25 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v40 && v39)
          {
            break;
          }

          OUTLINED_FUNCTION_7_99();
          if (!v40)
          {
            break;
          }

          OUTLINED_FUNCTION_4_99();
          if (v39)
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v40)
          {
            goto LABEL_91;
          }
        }
      }

      goto LABEL_90;
    }

    if (v35)
    {
      if (v35 != 1)
      {
        OUTLINED_FUNCTION_9_67();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v40 && v39)
          {
            break;
          }

          OUTLINED_FUNCTION_7_99();
          if (!v40)
          {
            break;
          }

          v39 = 10 * v25 >= v43;
          v25 = 10 * v25 - v43;
          if (!v39)
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v40)
          {
            goto LABEL_91;
          }
        }
      }

      goto LABEL_90;
    }

    goto LABEL_99;
  }

  if (v35)
  {
    if (v35 != 1)
    {
      OUTLINED_FUNCTION_9_67();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v40 && v39)
        {
          break;
        }

        OUTLINED_FUNCTION_7_99();
        if (!v40)
        {
          break;
        }

        OUTLINED_FUNCTION_4_99();
        if (v39)
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v40)
        {
          goto LABEL_91;
        }
      }
    }

    goto LABEL_90;
  }

LABEL_101:
  __break(1u);
  return result;
}

id sub_1E3A294D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1E4205ED4();

  if (!a4)
  {
    v12 = 0;
    if (a7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_1E4205ED4();

  if (!a7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = sub_1E4205ED4();

LABEL_6:
  v14 = [v7 initWithRatingSystemString:v11 ratingLabel:v12 rank:a5 ratingDescription:v13];

  return v14;
}

unsigned __int8 *sub_1E3A295AC(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = sub_1E4206174();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E378072C(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E4207524();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void static VideosUI.initializeWelcomeScreenControllerPresenterIfNeeded()()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v2 = [v1 welcomeScreenControllerPresenter];

  if (v2)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E3A01CF8();
    type metadata accessor for Router(0);

    sub_1E40C49A8();
    v4 = v3;

    v5 = [v0 sharedInstance];
    [v5 setWelcomeScreenControllerPresenter_];
  }
}

void static VideosUI.handleUnifiedMessagingAppDidFinishLoading()()
{
  v0 = *sub_1E3D54C24();
  OUTLINED_FUNCTION_51();
  sub_1E3D59680();
}

void static VideosUI.pushDownloadDidStartSignal()()
{
  v0 = *sub_1E3D54C24();
  OUTLINED_FUNCTION_51();
  sub_1E3D59B08();
}

void static VideosUI.handleGDPRDidChangeSignal()()
{
  v0 = *sub_1E3D54C24();
  OUTLINED_FUNCTION_51();
  sub_1E3D59B80();
}

double static VideosUI.handleUpsellPresented(_:)(char a1)
{
  v1 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v27 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  (*(v16 + 104))(v20, *MEMORY[0x1E69E7F98], v14);
  v21 = sub_1E4206A54();
  (*(v16 + 8))(v20, v14);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  aBlock[4] = sub_1E3A2A0DC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_0_48();
  aBlock[2] = v23;
  aBlock[3] = &block_descriptor_44;
  v24 = _Block_copy(aBlock);
  sub_1E4203FE4();
  sub_1E37E7A8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E378AD28();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v13, v7, v24);
  _Block_release(v24);

  (*(v3 + 8))(v7, v1);
  (*(v9 + 8))(v13, v27);

  return result;
}

void sub_1E3A2A0DC()
{
  v1 = *(v0 + 16);
  v2 = *sub_1E3D54C24();
  sub_1E3D59C18(v1);
}

void static VideosUI.fetchODJBadgingAppLevelSheet()()
{
  v0 = [objc_opt_self() defaultLocationManager];
  if (v0)
  {
    v1 = v0;
    v3[4] = sub_1E3A2A228;
    v3[5] = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 1107296256;
    v3[2] = sub_1E39EBA28;
    v3[3] = &block_descriptor_3_1;
    v2 = _Block_copy(v3);
    [v1 fetchAuthorizationStatus_];
    _Block_release(v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3A2A228(uint64_t a1)
{
  v2 = sub_1E3D54BDC();
  v3 = *v2;
  v4 = v2[1];

  v5 = *sub_1E3D54C24();
  type metadata accessor for UnifiedMessagingSignalProvider();
  v6 = v5;
  v7 = sub_1E3D595AC(a1);
  v8 = sub_1E3D595C0(v3, v4, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v10 = sub_1E3B58240();
  v11 = *(v10 + 1);
  *(inited + 32) = *v10;
  *(inited + 40) = v11;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0, &qword_1E429FAB0);
  *(inited + 48) = v8;

  sub_1E4205CB4();
  v12 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  sub_1E3B58258();

  sub_1E3B584A8();
}

void static VideosUI.fetchUMConfigurations()()
{
  v0 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  OUTLINED_FUNCTION_51();
  sub_1E3B60598();
}

void static VideosUI.processDeeplink(_:)()
{
  v0 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  OUTLINED_FUNCTION_6_82();
  sub_1E3B60024();
}

void static VideosUI.messageViewController(_:didSelectActionWith:)()
{
  v0 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  OUTLINED_FUNCTION_16_0();
  nullsub_1();
}

void static VideosUI.markLastPlaybackEventasUpsellPresented()(__n128 a1)
{
  v1 = *sub_1E3D54C24();
  OUTLINED_FUNCTION_51();
  sub_1E3D59C90();
}

void static VideosUI.markLastPlaybackEventasError()(__n128 a1)
{
  v1 = *sub_1E3D54C24();
  OUTLINED_FUNCTION_51();
  sub_1E3D59C98();
}

void static VideosUI.markPlaybackElapsedTime(_:)(__n128 a1)
{
  v1 = a1.n128_f64[0];
  v2 = *sub_1E3D54C24();
  sub_1E3D59D0C(v2, v1);
}

double static VideosUI.getPlaybackElapsedTime()(__n128 a1)
{
  v1 = *sub_1E3D54C24();
  v2 = sub_1E3D567E4(v1);

  return v2;
}

void static VideosUI.handlePlaybackDidEndForTCC()(__n128 a1)
{
  v1 = *sub_1E3D54C24();
  OUTLINED_FUNCTION_51();
  sub_1E3D59DCC();
}

void static VideosUI.getFullorHalfSheetPromptedAt()()
{
  v0 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  sub_1E3B5B81C();
}

void static VideosUI.buildCustomMenu(withBuilder:)()
{
  v0 = sub_1E383BD78();
  v1 = *((*MEMORY[0x1E69E7D40] & **v0) + 0x50);
  v2 = *v0;
  v3 = OUTLINED_FUNCTION_6_82();
  v1(v3);
}

id static VideosUI.vuiSwiftAction(_:appContext:)()
{
  sub_1E3280A90(0, &qword_1ECF31090, off_1E87281A8);
  v0 = OUTLINED_FUNCTION_16_0();
  return static VUIAction.makeAction(with:appContext:)(v0, v1);
}

id VideosUI.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VideosUI.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VideosUI.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static VideosUI.getTipViewControllerIfAny(_:)()
{
  v0 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
  OUTLINED_FUNCTION_16_0();
  sub_1E3B5AB8C();
  v2 = v1;

  if (v2)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t static VideosUI.viewController(with:appContext:documentOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
  sub_1E3D50594();
  v5 = v4;

  return v5;
}

void static VideosUI.presentSportsFavoriteSyncSheet(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SportsFavoritesOnboardingViewController();
  sub_1E398B5BC();
  v4 = sub_1E39874B4();
  v5 = &v4[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_completion];
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_1E34AF604(a1, a2);
  sub_1E34AF594(v6, v7);
  if ([objc_opt_self() isSUIEnabled])
  {
    v8 = [objc_opt_self() sharedInstance];
    v9 = [v8 controllerPresenter];

    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = [objc_opt_self() topPresentedViewController];
  if (v10)
  {
    v9 = v10;
LABEL_6:
    swift_unknownObjectRetain();
    aBlock[4] = sub_1E3A2AF94;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_0_48();
    aBlock[2] = v11;
    aBlock[3] = &block_descriptor_6_1;
    v12 = _Block_copy(aBlock);
    [v9 presentViewController:v4 animated:1 completion:v12];
    swift_unknownObjectRelease_n();
    _Block_release(v12);
  }

LABEL_7:
}

uint64_t sub_1E3A2AF94()
{
  v0 = sub_1E398742C();
  result = swift_beginAccess();
  *v0 = 1;
  return result;
}

unint64_t sub_1E3A2B058(void *a1)
{
  v1 = a1;
  v2 = a1;
  if (!v1)
  {
    return v1;
  }

LABEL_2:
  type metadata accessor for DocumentViewController(0);
  while (1)
  {
    if (swift_dynamicCastClass())
    {
      return v1;
    }

    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v14 = [v3 visibleViewController];

      v1 = v14;
      if (v14)
      {
        goto LABEL_2;
      }

      return v1;
    }

    v4 = [v1 vuiChildViewControllers];
    sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    v5 = sub_1E42062B4();

    if (v5 >> 62)
    {
      v6 = sub_1E4207384();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v6)
    {

      return 0;
    }

    v7 = [v1 vuiChildViewControllers];
    v8 = sub_1E42062B4();

    if (v8 >> 62)
    {
      v9 = sub_1E4207384();
      if (!v9)
      {
LABEL_23:

        return 0;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    v10 = __OFSUB__(v9, 1);
    result = v9 - 1;
    if (v10)
    {
      break;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1E6911E60](result, v8);
    }

    else
    {
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_27;
      }

      if (result >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v12 = *(v8 + 8 * result + 32);
    }

    v13 = v12;

    v1 = v13;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void static VideosUI.notifyAppearingViewControllerOfTabSwitch(_:)(void *a1)
{
  v1 = sub_1E3A2B058(a1);
  if (v1)
  {
    v3 = v1;
    type metadata accessor for DocumentViewController(0);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      (*((*MEMORY[0x1E69E7D40] & *v2) + 0x188))(1);
    }
  }
}

void static VideosUI.notifyAppearingViewControllerOfTabSelection(_:)(void *a1)
{
  v1 = sub_1E3A2B058(a1);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for DocumentViewController(0);
    v3 = swift_dynamicCastClass();
    if (v3 && (v4 = MEMORY[0x1E69E7D40], (v5 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1B0))()) != 0))
    {
      v8 = v5;
      type metadata accessor for SearchTemplateController();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        (*((*v4 & *v6) + 0x328))();
      }

      v7 = v8;
    }

    else
    {
      v7 = v2;
    }
  }
}

uint64_t sub_1E3A2B538(char a1)
{
  result = OUTLINED_FUNCTION_3_0(v1 + 98, v4);
  *(v1 + 98) = a1;
  return result;
}

__n128 sub_1E3A2B570@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_15_0(v2 + 104, a1);
  v4 = *(v2 + 136);
  result = *(v2 + 104);
  v6 = *(v2 + 120);
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v4;
  return result;
}

BOOL sub_1E3A2B5B4()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

BOOL sub_1E3A2B5FC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1E3A2B5B4();
  *a1 = result;
  return result;
}

_BYTE *sub_1E3A2B630(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3A2B66C(v1);
}

_BYTE *sub_1E3A2B66C(char a1)
{
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 136) = 1;
  *(v1 + 98) = a1;
  sub_1E3952C94();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_3_0(v1 + 104, &v243);
  *(v1 + 104) = v3;
  *(v1 + 112) = v5;
  *(v1 + 120) = v7;
  *(v1 + 128) = v9;
  *(v1 + 136) = 0;
  v10 = sub_1E3C2F9A0();
  OUTLINED_FUNCTION_15_0((v10 + 98), v11);
  v12 = v10[98];

  v13 = OUTLINED_FUNCTION_3_0((v10 + 98), &v246);
  v10[98] = v12;
  switch((*(*v10 + 1704))(v13))
  {
    case 1u:
      (*(*v10 + 992))(21, 0);
      OUTLINED_FUNCTION_36();
      (*(v16 + 1208))(0, 0);
      OUTLINED_FUNCTION_36();
      (*(v17 + 1136))(0x3FF0000000000000, 0);
      *__dst = 0x407C200000000000;
      __dst[8] = 0;
      v271 = 0;
      LOBYTE(v272) = 1;
      v269 = 0;
      LOBYTE(v270) = 1;
      OUTLINED_FUNCTION_5_99(0xE00000000000);
      v18 = MEMORY[0x1E69E7DE0];
      v19 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_0_120(v19, v20, v21, v22, v23, v24, v25, v26, v189, v204);
      OUTLINED_FUNCTION_4_100(v27, v28, v29, v30, v31, v32, v33, v34, v190, v205, v219, v231, v243, v244, v245, v246, v247, v248);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_36();
      v36 = *(v35 + 1600);
      (v36)(__dst, 6, v37 & 1, v18);
      if (TVAppFeature.isEnabled.getter(10, v38, v39))
      {
        *__dst = 0;
        __dst[8] = 1;
        v42 = sub_1E418A50C();
LABEL_11:
        v91 = *v42;
        goto LABEL_15;
      }

      if (TVAppFeature.isEnabled.getter(17, v40, v41))
      {
        OUTLINED_FUNCTION_8_69();
        v42 = sub_1E418A530();
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_8_69();
      OUTLINED_FUNCTION_20_53();
LABEL_15:
      OUTLINED_FUNCTION_22_40(v91);
      OUTLINED_FUNCTION_15_67();
      OUTLINED_FUNCTION_13_74();
      v142 = OUTLINED_FUNCTION_11_72();
      OUTLINED_FUNCTION_2_96(v142, v143, v144, v145, v146, v147, v148, v149, v191, v206, v220, v232, v243, v244, v245, v246, v247, v248, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
      OUTLINED_FUNCTION_4_100(v150, v151, v152, v153, v154, v155, v156, v157, v200, v215, v227, v239, v243, v244, v245, v246, v247, v248);
      v158 = OUTLINED_FUNCTION_18();
      v166 = OUTLINED_FUNCTION_1_120(v158, v159, v160, v161, v162, v163, v164, v165, v201, v216, v228, v240, v243, v244, v245, v246, v247, v248, __dst[0]);
      v36(v166, 81);
      sub_1E3952C88();
      *__dst = v167;
      *&__dst[8] = v168;
      *&__dst[16] = v169;
      *&__dst[24] = v170;
      __dst[32] = 0;
      type metadata accessor for UIEdgeInsets();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_76();
      OUTLINED_FUNCTION_12_65();
      OUTLINED_FUNCTION_10_69();
      v171 = OUTLINED_FUNCTION_16_62();
      OUTLINED_FUNCTION_3_100(v171, v172, v173, v174, v175, v176, v177, v178, v202, v217, v229, v241, v243, v244, v245, v246, v247, v248, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262);
      memcpy(__dst, __src, 0xE9uLL);
      v179 = OUTLINED_FUNCTION_18();
      v187 = OUTLINED_FUNCTION_1_120(v179, v180, v181, v182, v183, v184, v185, v186, v203, v218, v230, v242, v243, v244, v245, v246, v247, v248, __dst[0]);
      v36(v187, 0);
LABEL_16:

      return v10;
    case 2u:
      if (TVAppFeature.isEnabled.getter(10, v14, v15))
      {
        v43 = 21;
      }

      else
      {
        v43 = 22;
      }

      (*(*v10 + 992))(v43, 0);
      OUTLINED_FUNCTION_36();
      (*(v44 + 1208))(0, 0);
      OUTLINED_FUNCTION_36();
      (*(v45 + 1136))(0x3FF0000000000000, 0);
      sub_1E3952C58();
      *__dst = v46;
      *&__dst[8] = v47;
      *&__dst[16] = v48;
      *&__dst[24] = v49;
      __dst[32] = 0;
      type metadata accessor for UIEdgeInsets();
      v51 = v50;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_14_76();
      OUTLINED_FUNCTION_12_65();
      OUTLINED_FUNCTION_10_69();
      v52 = OUTLINED_FUNCTION_16_62();
      OUTLINED_FUNCTION_3_100(v52, v53, v54, v55, v56, v57, v58, v59, v189, v204, v219, v231, v243, v244, v245, v246, v247, v248, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262);
      memcpy(__dst, __src, 0xE9uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_36();
      v61 = *(v60 + 1600);
      (v61)(__dst, 0, v62 & 1, v51);
      if (TVAppFeature.isEnabled.getter(10, v63, v64))
      {
        OUTLINED_FUNCTION_8_69();
        v271 = 0x407C200000000000;
        LOBYTE(v272) = 0;
        v269 = 0x406F400000000000;
        LOBYTE(v270) = 0;
        v267 = 0x4078600000000000;
        LOBYTE(v268) = 0;
        v265 = 0x4071400000000000;
        LOBYTE(v266) = 0;
        v65 = sub_1E3C3DE00();
        OUTLINED_FUNCTION_0_120(v65, v66, v67, v68, v69, v70, v71, v72, v192, v207);
        OUTLINED_FUNCTION_4_100(v73, v74, v75, v76, v77, v78, v79, v80, v193, v208, v221, v233, v243, v244, v245, v246, v247, v248);
        v81 = OUTLINED_FUNCTION_18();
        v89 = OUTLINED_FUNCTION_1_120(v81, v82, v83, v84, v85, v86, v87, v88, v194, v209, v222, v234, v243, v244, v245, v246, v247, v248, __dst[0]);
        v90 = 6;
      }

      else
      {
        *__dst = 0;
        __dst[8] = 1;
        v271 = 0x407C200000000000;
        LOBYTE(v272) = 0;
        v269 = 0x407AA00000000000;
        LOBYTE(v270) = 0;
        OUTLINED_FUNCTION_5_99(0xA00000000000);
        v92 = sub_1E3C3DE00();
        OUTLINED_FUNCTION_0_120(v92, v93, v94, v95, v96, v97, v98, v99, v192, v207);
        OUTLINED_FUNCTION_4_100(v100, v101, v102, v103, v104, v105, v106, v107, v195, v210, v221, v233, v243, v244, v245, v246, v247, v248);
        v108 = OUTLINED_FUNCTION_18();
        v116 = OUTLINED_FUNCTION_1_120(v108, v109, v110, v111, v112, v113, v114, v115, v196, v211, v223, v235, v243, v244, v245, v246, v247, v248, __dst[0]);
        v61(v116, 6);
        *__dst = 0;
        __dst[8] = 1;
        OUTLINED_FUNCTION_20_53();
        OUTLINED_FUNCTION_22_40(v117);
        OUTLINED_FUNCTION_15_67();
        OUTLINED_FUNCTION_13_74();
        v118 = OUTLINED_FUNCTION_11_72();
        OUTLINED_FUNCTION_2_96(v118, v119, v120, v121, v122, v123, v124, v125, v197, v212, v224, v236, v243, v244, v245, v246, v247, v248, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264);
        OUTLINED_FUNCTION_4_100(v126, v127, v128, v129, v130, v131, v132, v133, v198, v213, v225, v237, v243, v244, v245, v246, v247, v248);
        v134 = OUTLINED_FUNCTION_18();
        v89 = OUTLINED_FUNCTION_1_120(v134, v135, v136, v137, v138, v139, v140, v141, v199, v214, v226, v238, v243, v244, v245, v246, v247, v248, __dst[0]);
        v90 = 81;
      }

      v61(v89, v90);
      goto LABEL_16;
    default:
      goto LABEL_16;
  }
}

uint64_t sub_1E3A2BC88(uint64_t a1)
{
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 136) = 1;
  *(v1 + 98) = 0;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3A2BCA4(uint64_t a1)
{
  sub_1E3C34E14();
  v4[3] = &type metadata for CarouselViewLayout.CarouselLayoutKeys;
  v4[4] = &off_1F5D6AF48;
  sub_1E3F9F164(v4, a1, MEMORY[0x1E69E7CA0] + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  sub_1E4148DE0(sub_1E3A2BD54);
  sub_1E329505C(v3);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1E3A2BD54(uint64_t a1)
{
  sub_1E328438C(a1, &v6);
  type metadata accessor for UIEdgeInsets();
  if (swift_dynamicCast())
  {
    v2 = 0;
    v3 = v9;
    v4 = v10;
  }

  else
  {
    (*(*v1 + 1728))(v7);
    v3 = v7[0];
    v4 = v7[1];
    v2 = v8;
  }

  v9 = v3;
  v10 = v4;
  v11 = v2;
  return (*(*v1 + 1736))(&v9);
}

double sub_1E3A2BE30(uint64_t a1)
{
  v2 = v1;
  sub_1E3C35F80();
  type metadata accessor for CarouselViewLayout();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v5 = v3;
    v6 = *(*v3 + 1704);

    LOBYTE(v6) = v6(v7);
    v8 = OUTLINED_FUNCTION_3_0((v2 + 98), &v9);
    v2[98] = v6;
    (*(*v5 + 1728))(v10, v8);
    (*(*v2 + 1736))(v10);
  }

  return result;
}

double sub_1E3A2BF78(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_68();
  v6 += 213;
  v7 = *v6;
  if ((*v6)() == 1 || v7() == 3)
  {
    type metadata accessor for LayoutGrid();
    (*(*v2 + 984))();
    OUTLINED_FUNCTION_7_100();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0, &qword_1E429ED88);
    v9 = sub_1E4148C68(sub_1E37E7E70, v8, &v31);
    v10 = v31;
    (*(*v2 + 1200))(v9);
    OUTLINED_FUNCTION_7_100();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC28, &unk_1E42B45E0);
    v12 = sub_1E4148C68(sub_1E37E8788, v11, &v30);
    v13 = v30;
    (*(*v2 + 1128))(v12);
    OUTLINED_FUNCTION_7_100();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
    sub_1E4148C68(sub_1E37E8790, v14, &v29);
    return sub_1E3A25D00(v10, v13, v3, v29);
  }

  type metadata accessor for LayoutGrid();
  v16 = sub_1E3A2579C(v3);
  if ((TVAppFeature.isEnabled.getter(10, v17, v18) & 1) == 0)
  {
    if (a2 <= 2)
    {
      goto LABEL_11;
    }

LABEL_9:
    sub_1E3A258E4(v3);
    goto LABEL_11;
  }

  if (v7() == 2)
  {
    sub_1E3A258E4(v3);
    return v3 - sub_1E3952BE0(v19, v20, v21, v22);
  }

  if (a2 >= 3)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (sub_1E3A25254(v16) & 1) != 0 || (OUTLINED_FUNCTION_18())
  {
    if (v7() == 2)
    {
      v19 = OUTLINED_FUNCTION_24_0();
      return v3 - sub_1E3952BE0(v19, v20, v21, v22);
    }

    *&v23 = COERCE_DOUBLE((*(*v2 + 200))());
    v3 = 0.0;
    if ((v24 & 1) == 0)
    {
      return *&v23;
    }
  }

  else if ((a1 & 1) == 0)
  {
    v25 = OUTLINED_FUNCTION_24_0();
    return v3 + sub_1E3952BE0(v25, v26, v27, v28) * -0.5;
  }

  return v3;
}

void sub_1E3A2C2F8()
{
  OUTLINED_FUNCTION_9_68();
  v1 += 213;
  v2 = *v1;
  if ((*v1)() == 1 || v2() == 3)
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A25950(v0);
  }
}

unint64_t sub_1E3A2C390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF31098;
  if (!qword_1ECF31098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF31098);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CarouselViewLayout.LayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CarouselViewLayout.CarouselLayoutKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1E3A2C570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF53550[0];
  if (!qword_1ECF53550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF53550);
  }

  return result;
}

id sub_1E3A2C5C4(uint64_t a1)
{
  v2 = (*(*a1 + 488))(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  type metadata accessor for ErrorContentView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if ((*(*a1 + 392))())
  {
    type metadata accessor for ErrorContentViewLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_24_1();
      v6 = *(v5 + 128);

      v7 = OUTLINED_FUNCTION_8_10();
      v6(v7);
    }
  }

  type metadata accessor for UIFactory();
  v9 = sub_1E373E010(23, v3, v8);
  OUTLINED_FUNCTION_28_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF310A0, &qword_1E42B4768);
  OUTLINED_FUNCTION_2_97(v9, v10, v29);
  OUTLINED_FUNCTION_16_6();
  sub_1E373C624(v29);
  OUTLINED_FUNCTION_24_1();
  v11 = OUTLINED_FUNCTION_8_10();
  v12(v11);
  sub_1E373E010(4, v3, v13);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_2_97(v14, v15, v29);
  OUTLINED_FUNCTION_16_6();
  sub_1E373C624(v29);
  OUTLINED_FUNCTION_24_1();
  v16 = OUTLINED_FUNCTION_8_10();
  v17(v16);
  sub_1E373E010(7, v3, v18);
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_2_97(v19, v20, v29);
  OUTLINED_FUNCTION_16_6();
  sub_1E373C624(v29);
  OUTLINED_FUNCTION_24_1();
  v21 = OUTLINED_FUNCTION_8_10();
  v22(v21);
  v24 = sub_1E373E010(8, v3, v23);

  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_2_97(v24, v25, v29);
  OUTLINED_FUNCTION_16_6();
  sub_1E373C624(v29);
  OUTLINED_FUNCTION_24_1();
  v26 = OUTLINED_FUNCTION_8_10();
  v27(v26);
  return v4;
}

double sub_1E3A2C8B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI16ErrorContentView_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void *sub_1E3A2C970(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI16ErrorContentView_titleView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A2C9B8()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3A2CA34(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI16ErrorContentView_descriptionView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A2CA7C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3A2CAF8(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E3A2CB78(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI16ErrorContentView_debugTextView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3A2CBC0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3A2CC3C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI16ErrorContentView_debugTextView2;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3A2CC84(void *a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = *a2;
  v8 = a1;
  swift_beginAccess();
  [v2 vui:*&v2[v7] addSubview:v6 oldView:?];
  [v2 vui_setNeedsLayout];
}

uint64_t sub_1E3A2CD30()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

double sub_1E3A2CDAC(char a1, double a2, double a3)
{
  v4 = v3;
  v101.receiver = v4;
  v101.super_class = type metadata accessor for ErrorContentView();
  objc_msgSendSuper2(&v101, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a2 == 0.0 && a3 == 0.0)
  {
    return a2;
  }

  v100 = a1;
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(a2);
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_9_69();
  if (v12 == 0.0 && (OUTLINED_FUNCTION_9_69(), v13 == 0.0) && (v14 = [v4 superview]) != 0)
  {
    v15 = v14;
    [v14 safeAreaInsets];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    OUTLINED_FUNCTION_9_69();
    v17 = v20;
    v19 = v21;
  }

  v94 = v19;
  v22 = a2 - sub_1E3952BE0(v17, v9, v19, v11);
  if (v22 <= 460.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 460.0;
  }

  OUTLINED_FUNCTION_12_5();
  v25 = *(v24 + 144);
  v26 = v25();
  v27 = 0.0;
  v28 = &selRef_vui_disableLocalAsset;
  v29 = 0.0;
  v98 = 0.0;
  v99 = 0.0;
  v30 = 0.0;
  if (v26)
  {
    v31 = v26;
    [v26 vui:v23 sizeThatFits:0.0];
    v33 = v32;
    VUIRoundValue();
    v98 = v34;

    v99 = v33;
    v29 = v33 + 0.0;
    v30 = v23;
  }

  v90 = v30;
  OUTLINED_FUNCTION_12_5();
  v36 = *(v35 + 168);
  v37 = v36();
  if (v37)
  {
    v38 = v37;
    [v37 vui:v23 sizeThatFits:0.0];
    v27 = v39;
    v40 = VUIRoundValue();
    v89 = v41;
    v29 = v29 + v27;
    v42 = (v25)(v40);
    if (v42)
    {
      v43 = v42;
      OUTLINED_FUNCTION_12_5();
      v45 = (*(v44 + 120))();
      if (v45)
      {
        v46 = v36;
        v47 = (*(*v45 + 1776))(v45);

        v48 = *(*v47 + 152);

        v49 = v43;
        v48(v102);
        v28 = &selRef_vui_disableLocalAsset;

        v50 = v102[0];
        if (v103)
        {
          v50 = 0.0;
        }

        [v38 topMarginToLabel:v49 withBaselineMargin:v50];
        v52 = v51;

        v36 = v46;

        v29 = v29 + v52;
        goto LABEL_22;
      }
    }
  }

  else
  {
    v23 = 0.0;
    v89 = 0.0;
  }

LABEL_22:
  OUTLINED_FUNCTION_9_69();
  v54 = a3 - v53;
  v55 = OUTLINED_FUNCTION_9_69();
  v57 = (v54 - v56 - v29) * 0.5;
  v58 = (v25)(v55);
  v59 = 0.0;
  v97 = 0.0;
  if (v58)
  {

    v59 = v57;
  }

  v88 = v59;
  v92 = v23;
  v60 = v36();
  if (v60)
  {

    v97 = v29 + v57 - v27;
  }

  v93 = v36;
  v91 = v27;
  OUTLINED_FUNCTION_12_5();
  v62 = *(v61 + 192);
  v63 = v62();
  v64 = 0.0;
  v96 = 0.0;
  v65 = 0.0;
  v66 = 0.0;
  v67 = 0.0;
  if (v63)
  {
    v68 = v63;
    [v63 v28[132]];
    v65 = v69;

    v66 = a3 - v65 - v94;
    v64 = v22;
    v67 = v9;
  }

  v87 = v67;
  v95 = v64;
  OUTLINED_FUNCTION_12_5();
  v71 = *(v70 + 216);
  v72 = v71();
  v73 = 0.0;
  v74 = 0.0;
  v75 = 0.0;
  if (v72)
  {
    v76 = v72;
    [v72 v28[132]];
    v73 = v77;

    v74 = v66 - v73 + -20.0;
    v96 = v22;
    v75 = v9;
  }

  if ((v100 & 1) == 0)
  {
    if (v25())
    {
      OUTLINED_FUNCTION_12_66();
      [v78 v79];
    }

    if (v93())
    {
      OUTLINED_FUNCTION_12_66();
      [v80 v81];
    }

    if (v62())
    {
      OUTLINED_FUNCTION_12_66();
      [v82 v83];
    }

    if (v71())
    {
      OUTLINED_FUNCTION_12_66();
      [v84 v85];
    }
  }

  OUTLINED_FUNCTION_9_69();
  return a2;
}

id sub_1E3A2D4CC()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI16ErrorContentView_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16ErrorContentView_titleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16ErrorContentView_descriptionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16ErrorContentView_debugTextView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI16ErrorContentView_debugTextView2) = 0;
  v5 = type metadata accessor for ErrorContentView();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E3A2D578(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI16ErrorContentView_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI16ErrorContentView_titleView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI16ErrorContentView_descriptionView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI16ErrorContentView_debugTextView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI16ErrorContentView_debugTextView2] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ErrorContentView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3A2D644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ErrorContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3A2D7CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredOpenURL;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E37E93E8(v1 + v3, a1, &unk_1ECF363C0, &unk_1E42A9420);
}

uint64_t sub_1E3A2D8EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredOpenURL;
  v4 = OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3(v4, v5);
  sub_1E38DAEEC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E3A2D968(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14OpenURLHandler_openedByDeeplink;
  OUTLINED_FUNCTION_57_2();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3A2DA0C()
{
  v1 = OBJC_IVAR____TtC8VideosUI14OpenURLHandler_isMultiOffer;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E3A2DA4C(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI14OpenURLHandler_isMultiOffer;
  OUTLINED_FUNCTION_57_2();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void (*sub_1E3A2DB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = v8;
  sub_1E3A2DB24(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  *(a1 + 8) = v10 & 1;
  return sub_1E3A2DBE0;
}

void sub_1E3A2DC64()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  v8 = *v4;
  OUTLINED_FUNCTION_11_3(v0 + v8, v26);
  os_unfair_lock_lock((v0 + v8));
  *(v0 + *v2) = v6;
  os_unfair_lock_unlock((v0 + v8));
  swift_endAccess();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v9 = OUTLINED_FUNCTION_297();
  v10(v9);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067D4();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_13_13();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_35();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v8 = 136315138;
    v14 = sub_1E328692C(v6 & 1);
    v16 = sub_1E3270FC8(v14, v15, v26);

    *(v8 + 4) = v16;
    OUTLINED_FUNCTION_126_1();
    _os_log_impl(v17, v18, v19, v20, v21, v22);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v23 = OUTLINED_FUNCTION_19_56();
    MEMORY[0x1E69143B0](v23);
  }

  v24 = OUTLINED_FUNCTION_142();
  v25(v24);
  OUTLINED_FUNCTION_25_2();
}

void (*sub_1E3A2DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = v8;
  sub_1E32A3C60(a1, a2, a3, a4, a5, a6, a7, a8, v12);
  *(a1 + 8) = v10 & 1;
  return sub_1E3A2DE54;
}

void sub_1E3A2DE7C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_93_0();
  v8 = OUTLINED_FUNCTION_39_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_72_13();
  v12 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  sub_1E37E93E8(v4, v2, &unk_1ECF363C0, &unk_1E42A9420);
  v14 = OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_52(v14, v15, v12);
  if (v24)
  {
    v16 = &unk_1ECF363C0;
    v17 = &unk_1E42A9420;
    v18 = v2;
LABEL_7:
    sub_1E325F6F0(v18, v16, v17);
    goto LABEL_14;
  }

  v19 = OUTLINED_FUNCTION_125();
  v20(v19);
  sub_1E41FDFB4();
  sub_1E37E93E8(v0, v1, &qword_1ECF304A8, &unk_1E42B18D0);
  v21 = sub_1E41FE004();
  v22 = OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_52(v22, v23, v21);
  if (v24)
  {
    sub_1E325F6F0(v0, &qword_1ECF304A8, &unk_1E42B18D0);
    v25 = OUTLINED_FUNCTION_74();
    v26(v25);
    v18 = OUTLINED_FUNCTION_32_7();
    v17 = &unk_1E42B18D0;
    goto LABEL_7;
  }

  sub_1E41FDFD4();
  OUTLINED_FUNCTION_37_1();
  v27 = OUTLINED_FUNCTION_32_7();
  v28(v27);
  v29 = sub_1E4205F14();
  MEMORY[0x1E69109E0](v29);

  OUTLINED_FUNCTION_139_0();
  v30 = sub_1E4205F94();
  v32 = v31;

  if (v30 != 47 || v32 != 0xE100000000000000)
  {
    OUTLINED_FUNCTION_123_1();
    sub_1E42079A4();
  }

  sub_1E325F6F0(v0, &qword_1ECF304A8, &unk_1E42B18D0);
  v34 = OUTLINED_FUNCTION_74();
  v35(v34);
LABEL_14:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A2E25C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v34 = v8;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v32 = v10;
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  v12 = v11;
  OUTLINED_FUNCTION_138();
  v13 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_93_0();
  sub_1E3280A90(0, &qword_1ECF310D8, 0x1E696AF20);
  v35 = *(v15 + 16);
  v36 = v3;
  v35(v0, v3, v13);
  v18 = sub_1E3A2E5B8(v0, 1);
  if (v18 && (sub_1E3A494D0(v7, v5, v18), (v19 = [v18 URL]) != 0))
  {
    v20 = v19;
    sub_1E41FE3C4();
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_88_4();
    v21(v12);
    v35(v1, v36, v13);
    v22 = sub_1E41FFC94();
    v23 = sub_1E42067D4();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_13_13();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v37 = swift_slowAlloc();
      *v24 = 136315138;
      OUTLINED_FUNCTION_6_83();
      sub_1E3A496B8(v25, v26);
      v31 = v23;
      v27 = sub_1E4207944();
      (*(v15 + 8))(v1, v13);
      v28 = OUTLINED_FUNCTION_63_0();
      sub_1E3270FC8(v28, v29, v30);
      OUTLINED_FUNCTION_31_4();

      *(v24 + 4) = v27;
      _os_log_impl(&dword_1E323F000, v22, v31, "OpenURLHandler::Failed to change scheme for: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    else
    {

      (*(v15 + 8))(v1, v13);
    }

    (*(v32 + 8))(v12, v33);
    v35(v34, v36, v13);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3A2E5B8(uint64_t a1, char a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1E41FE364();
  v6 = [v4 initWithURL:v5 resolvingAgainstBaseURL:a2 & 1];

  v7 = sub_1E41FE414();
  (*(*(v7 - 8) + 8))(a1, v7);
  return v6;
}

void sub_1E3A2E65C()
{
  OUTLINED_FUNCTION_31_1();
  v54 = v3;
  v55 = v4;
  v52 = v5;
  sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_77_0();
  v14 = OUTLINED_FUNCTION_277();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_71_0();
  v18 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  sub_1E37E93E8(v52, v1, &unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_52(v1, 1, v18);
  if (v29)
  {
    v25 = &unk_1ECF363C0;
    v26 = &unk_1E42A9420;
    v27 = v1;
LABEL_7:
    sub_1E325F6F0(v27, v25, v26);
LABEL_8:
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_90();
  v28();
  sub_1E41FDFB4();
  sub_1E37E93E8(v2, v0, &qword_1ECF304A8, &unk_1E42B18D0);
  sub_1E41FE004();
  OUTLINED_FUNCTION_63(v0);
  v30 = v2;
  if (v29)
  {
    v31 = OUTLINED_FUNCTION_242();
    sub_1E325F6F0(v31, v32, &unk_1E42B18D0);
    (*(v20 + 8))(v24, v18);
    v27 = OUTLINED_FUNCTION_16_0();
    v26 = &unk_1E42B18D0;
    goto LABEL_7;
  }

  v33 = sub_1E41FDF84();
  OUTLINED_FUNCTION_37_1();
  v34 = OUTLINED_FUNCTION_63_0();
  v35(v34);
  if (!v33)
  {
    sub_1E325F6F0(v30, &qword_1ECF304A8, &unk_1E42B18D0);
    (*(v20 + 8))(v24, v18);
    goto LABEL_8;
  }

  v53 = v18;
  v36 = 0;
  v37 = *(v33 + 16);
  while (1)
  {
    if (v37 == v36)
    {

      sub_1E325F6F0(v30, &qword_1ECF304A8, &unk_1E42B18D0);
      OUTLINED_FUNCTION_215();
      v45(v24, v53);
      goto LABEL_8;
    }

    if (v36 >= *(v33 + 16))
    {
      break;
    }

    v38 = OUTLINED_FUNCTION_297();
    v39(v38);
    if (sub_1E41FDF54() == v54 && v40 == v55)
    {

LABEL_22:

      v46 = *(v7 + 32);
      v47 = OUTLINED_FUNCTION_283();
      v46(v47);
      v48 = OUTLINED_FUNCTION_53();
      v46(v48);
      sub_1E41FDF64();
      v49 = OUTLINED_FUNCTION_38_0();
      v50(v49);
      sub_1E325F6F0(v30, &qword_1ECF304A8, &unk_1E42B18D0);
      OUTLINED_FUNCTION_215();
      v51(v24, v53);
      goto LABEL_8;
    }

    v42 = sub_1E42079A4();

    if (v42)
    {
      goto LABEL_22;
    }

    v43 = OUTLINED_FUNCTION_142();
    v44(v43);
    ++v36;
  }

  __break(1u);
}

void sub_1E3A2EC48()
{
  OUTLINED_FUNCTION_31_1();
  v59 = v0;
  v60 = v3;
  v61 = v4;
  v62 = v5;
  OUTLINED_FUNCTION_144_0();
  v68 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v63 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_124_2();
  v67 = v8;
  v58 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v66 = v11;
  OUTLINED_FUNCTION_138();
  v12 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_124_2();
  v64 = v16;
  v57 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34_1();
  v19 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v25 = v24 - v23;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v26(v25);
  v65 = v14;
  OUTLINED_FUNCTION_90();
  v56 = v27;
  v27();
  v28 = sub_1E41FFC94();
  sub_1E42067D4();
  OUTLINED_FUNCTION_178();
  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_13_13();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v55 = swift_slowAlloc();
    v69[0] = v55;
    *v30 = 136315138;
    OUTLINED_FUNCTION_6_83();
    sub_1E3A496B8(v31, v32);
    v33 = sub_1E4207944();
    v34 = OUTLINED_FUNCTION_39_9();
    v35(v34);
    v36 = OUTLINED_FUNCTION_32_7();
    sub_1E3270FC8(v36, v37, v38);
    OUTLINED_FUNCTION_16_5();

    *(v30 + 4) = v33;
    _os_log_impl(&dword_1E323F000, v28, v1, "OpenURLHandler::openSharedWatchURL start processing: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  else
  {

    (*(v14 + 8))(v2, v12);
  }

  (*(v21 + 8))(v25, v19);
  sub_1E41FE5C4();
  OUTLINED_FUNCTION_21();
  (*(v39 + 304))(1);
  OUTLINED_FUNCTION_90();
  v56();
  OUTLINED_FUNCTION_89_5();
  v40(v67, v66, v68);
  v41 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v42 = (v57 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = v12;
  v45 = (*(v63 + 80) + v43 + 8) & ~*(v63 + 80);
  v46 = swift_allocObject();
  (*(v65 + 32))(v46 + v41, v64, v44);
  *(v46 + v42) = v59;
  *(v46 + v43) = v60;
  (*(v63 + 32))(v46 + v45, v67, v68);
  v47 = (v46 + ((v58 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v47 = v61;
  v47[1] = v62;
  v69[4] = sub_1E3A49528;
  v69[5] = v46;
  OUTLINED_FUNCTION_24_35();
  v69[1] = 1107296256;
  OUTLINED_FUNCTION_7_6();
  v69[2] = v48;
  v69[3] = &block_descriptor_45;
  v49 = _Block_copy(v69);
  v50 = v59;
  v60;
  v51 = OUTLINED_FUNCTION_53();
  sub_1E34AF604(v51, v52);

  v53 = OUTLINED_FUNCTION_33_14();
  [v53 v54];
  _Block_release(v49);
  (*(v63 + 8))(v66, v68);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A2F158()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v2;
  v52 = v3;
  v47 = v4;
  v49 = v6;
  v50 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_144_0();
  v44 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_132_3();
  v43 = sub_1E41FE414();
  OUTLINED_FUNCTION_1_2();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_279();
  v21 = v20 - (v19 & 0xFFFFFFFFFFFFFFF0);
  v48 = [v0 objectForKeyedSubscript_];
  v22 = sub_1E41FE314();
  v45 = v23;
  v46 = v22;
  OUTLINED_FUNCTION_4_0();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_114_3();
  v25();
  OUTLINED_FUNCTION_164_0();
  v26 = v1;
  v27(v1, v47, v44);
  OUTLINED_FUNCTION_303();
  OUTLINED_FUNCTION_302();
  v30 = v29 & ~v28;
  v31 = swift_allocObject();
  *(v31 + 16) = v24;
  (*(v15 + 32))(v31 + v8, v21, v43);
  *(v31 + v17) = v49;
  (*(v10 + 32))(v31 + v30, v26, v44);
  v32 = (v31 + ((v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v32 = v51;
  v32[1] = v52;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v34 = OUTLINED_FUNCTION_28_30(v33);
  *(v34 + 16) = xmmword_1E4299720;
  *(v34 + 56) = MEMORY[0x1E69E6158];
  *(v34 + 32) = v46;
  *(v34 + 40) = v45;
  v35 = sub_1E3280A90(0, &qword_1EE23AE50, 0x1E696EB58);
  v36 = v49;
  v37 = OUTLINED_FUNCTION_74();
  sub_1E34AF604(v37, v38);
  v39 = sub_1E3A242D8(v50, sub_1E3A4CE38, v31);
  *(v34 + 88) = v35;
  *(v34 + 64) = v39;
  if (v48)
  {
    v40 = sub_1E4205F14();
    v42 = sub_1E3780E30(v40, v41, v34, v48);
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A2F46C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_31_2();
  if (!sub_1E32AE9B0(v13))
  {
    OUTLINED_FUNCTION_200_0();
LABEL_13:
    sub_1E325F6F0(&v38, &unk_1ECF296E0, &unk_1E4298030);
    v36 = 0;
    goto LABEL_14;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1E6911E60](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_22;
    }

    v18 = *(v13 + 32);
  }

  v19 = v18;
  v1 = [v18 toObject];

  if (v1)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_201_1();
  }

  OUTLINED_FUNCTION_128_5();
  if (!v20)
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  OUTLINED_FUNCTION_47_23();
  v21 = swift_dynamicCast();
  v22 = v37;
  if (!v21)
  {
    v22 = 0;
  }

  v36 = v22;
LABEL_14:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_294();
    v23 = v15;
    v24 = sub_1E41FE414();
    OUTLINED_FUNCTION_2();
    (*(v25 + 16))(v0, v11, v24);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
    v29 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    MEMORY[0x1EEE9AC00](v29);
    OUTLINED_FUNCTION_228();
    *(v30 - 64) = v0;
    *(v30 - 56) = v36;
    *(v30 - 48) = v9;
    *(v30 - 40) = v1;
    *(v30 - 32) = v7;
    *(v30 - 24) = v5;
    *(v30 - 16) = v3;
    OUTLINED_FUNCTION_346(v33, v31, v32);

    v15 = v23;
    sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v35 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x130))(0);
  }

  if ([objc_opt_self() valueWithUndefinedInContext_])
  {

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_22:
  __break(1u);
}

double sub_1E3A2F770@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1E328438C(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1E3A2F8B8()
{
  OUTLINED_FUNCTION_48_1();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_141_0(v0);
  v1 = OUTLINED_FUNCTION_301();
  sub_1E3B79200(v1, v2);

  return result;
}

void sub_1E3A2F95C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_106();
  v9 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_279();
  v17 = v16 - (v15 & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_opt_self() vui_defaultBag];
  if (v18)
  {
    v19 = v18;
    v39 = v4;
    v20 = objc_allocWithZone(MEMORY[0x1E698C820]);
    v38 = v8;
    v21 = v19;
    v22 = sub_1E41FE364();
    v40 = [v20 initWithURL:v22 bag:v21];

    v37 = [v40 perform];
    OUTLINED_FUNCTION_107_0();
    v23(v17, v0, v9);
    v24 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v25 = v2;
    v26 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 2) = v38;
    *(v27 + 3) = v6;
    *(v27 + 4) = v39;
    (*(v11 + 32))(&v27[v24], v17, v9);
    v28 = v37;
    *&v27[v26] = v25;
    v41[4] = sub_1E3A4C8D0;
    v41[5] = v27;
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_23_40(COERCE_DOUBLE(1107296256));
    v41[2] = v29;
    v41[3] = &block_descriptor_504;
    v30 = _Block_copy(v41);
    v31 = OUTLINED_FUNCTION_146();
    sub_1E34AF604(v31, v32);
    v33 = v25;

    v34 = OUTLINED_FUNCTION_33_14();
    [v34 v35];
    _Block_release(v30);

LABEL_5:
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    OUTLINED_FUNCTION_100_3();
    OUTLINED_FUNCTION_63_0();
    sub_1E3A40514();
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A2FC0C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_9_5();
  v7 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v94 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_3();
  v90 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v89 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v87 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v91 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v93 = v20;
  OUTLINED_FUNCTION_138();
  v21 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v92 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_47_3();
  v27 = "ractor";
  if (v6)
  {
    v88 = v0;
    sub_1E324FBDC();
    v28 = OUTLINED_FUNCTION_21_16();
    v29(v28);
    v30 = v6;
    v31 = v21;
    v32 = sub_1E41FFC94();
    v33 = sub_1E42067F4();

    if (os_log_type_enabled(v32, v33))
    {
      OUTLINED_FUNCTION_13_13();
      v84 = v31;
      v34 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      swift_slowAlloc();
      OUTLINED_FUNCTION_238();
      v98 = v35;
      *v34 = 136315138;
      swift_getErrorValue();
      v86 = v4;
      v97 = v95;
      __swift_allocate_boxed_opaque_existential_1(v96);
      OUTLINED_FUNCTION_34_34();
      (*(v36 + 16))();
      v37 = sub_1E3294FA4(v96);
      v39 = sub_1E3270FC8(v37, v38, &v98);
      v27 = "VideosUI.LibMenuTemplateViewInteractor" + 32;

      *(v34 + 4) = v39;
      v4 = v86;
      OUTLINED_FUNCTION_50_6(&dword_1E323F000, v32, v33, "OpenURLHandler::error returned in campaignAttributionTask: %s");
      __swift_destroy_boxed_opaque_existential_1(v7);
      v7 = v85;
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      v21 = v84;
      (*(v23 + 8))(v1, v84);
    }

    else
    {

      v40 = OUTLINED_FUNCTION_32_7();
      v41(v40);
      v21 = v31;
    }

    v0 = v88;
    if (v4)
    {
      v4(0, v6);
    }
  }

  if (v0)
  {
    v42 = OUTLINED_FUNCTION_47_12(v0);
    v44 = [v42 v43];
    if (v44)
    {
      v45 = v44;
      sub_1E41FE3C4();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = v93;
    __swift_storeEnumTagSinglePayload(v2, v46, 1, v7);
    v48 = OUTLINED_FUNCTION_151_1();
    sub_1E327D738(v48, v49);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_88_4();
    v50(v92);
    v51 = OUTLINED_FUNCTION_8_6();
    sub_1E37E93E8(v51, v52, v53, v54);
    v55 = sub_1E41FFC94();
    v56 = sub_1E42067E4();
    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_13_13();
      swift_slowAlloc();
      OUTLINED_FUNCTION_30_35();
      v57 = swift_slowAlloc();
      v98 = v57;
      *v93 = *(v27 + 463);
      sub_1E37E93E8(v91, v87, &unk_1ECF363C0, &unk_1E42A9420);
      OUTLINED_FUNCTION_63(v87);
      if (v58)
      {
        sub_1E325F6F0(v87, &unk_1ECF363C0, &unk_1E42A9420);
        OUTLINED_FUNCTION_2_85();
      }

      else
      {
        v97 = v7;
        __swift_allocate_boxed_opaque_existential_1(v96);
        OUTLINED_FUNCTION_322();
        v61();
      }

      v62 = sub_1E3294FA4(v96);
      sub_1E325F6F0(v91, &unk_1ECF363C0, &unk_1E42A9420);
      v63 = OUTLINED_FUNCTION_27_0();
      sub_1E3270FC8(v63, v64, v65);
      OUTLINED_FUNCTION_92_2();

      *(v93 + 4) = v62;
      OUTLINED_FUNCTION_126_1();
      _os_log_impl(v66, v67, v68, v69, v70, v71);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      v72 = OUTLINED_FUNCTION_19_56();
      MEMORY[0x1E69143B0](v72);

      (*(v23 + 8))(v92, v21);
      v47 = v93;
    }

    else
    {

      sub_1E325F6F0(v91, &unk_1ECF363C0, &unk_1E42A9420);
      v59 = OUTLINED_FUNCTION_99_0();
      v60(v59);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v74 = Strong;
      v75 = OUTLINED_FUNCTION_146();
      sub_1E37E93E8(v75, v76, v77, v78);
      OUTLINED_FUNCTION_63(v89);
      if (v58)
      {
        v79 = OUTLINED_FUNCTION_259();
        v80(v79);
        OUTLINED_FUNCTION_63(v89);
        if (!v58)
        {
          sub_1E325F6F0(v89, &unk_1ECF363C0, &unk_1E42A9420);
        }
      }

      else
      {
        OUTLINED_FUNCTION_322();
        v82(v90, v89, v7);
      }

      OUTLINED_FUNCTION_100_3();
      sub_1E3A40514();

      OUTLINED_FUNCTION_143();
      (*(v94 + 8))(v90, v7);
    }

    else
    {
      OUTLINED_FUNCTION_143();
    }

    sub_1E325F6F0(v47, &unk_1ECF363C0, &unk_1E42A9420);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A302F4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  OUTLINED_FUNCTION_123_2();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_93_2();
  v6 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v8 = [objc_opt_self() vui_defaultBag];
  if (v8)
  {
    v9 = v8;
    v10 = OUTLINED_FUNCTION_39_0();
    sub_1E37E93E8(v10, v11, v12, v13);
    OUTLINED_FUNCTION_52(v0, 1, v6);
    if (!v14)
    {
      v27 = OUTLINED_FUNCTION_139_0();
      v28(v27);
      v29 = objc_allocWithZone(MEMORY[0x1E698CCC8]);
      v30 = v9;
      v31 = sub_1E41FE364();
      v32 = [v29 initWithBag:v30 URL:v31];

      sub_1E41FE9C4();
      v33 = sub_1E41FE9B4();
      [v32 setAccount_];

      if (v2)
      {
        v34 = v32;
        v2(v32, 0);

        v35 = OUTLINED_FUNCTION_124();
        v36(v35);
      }

      else
      {
        v37 = OUTLINED_FUNCTION_124();
        v38(v37);
      }

      goto LABEL_11;
    }

    sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v15 = OUTLINED_FUNCTION_43_0();
  v16(v15);
  v17 = sub_1E41FFC94();
  sub_1E42067E4();
  OUTLINED_FUNCTION_101_3();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_34_10(v19);
    OUTLINED_FUNCTION_70_12();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  v25 = OUTLINED_FUNCTION_16_0();
  v26(v25);
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A30608()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v31 = v2;
  v32 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_123_2();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v11) + 0x118))(0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  OUTLINED_FUNCTION_23();
  v14 = sub_1E4205ED4();
  [v12 setObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_amsURLParser);
  v16 = sub_1E41FE364();
  v17 = [v15 typeForURL_];

  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_107_0();
  v19 = OUTLINED_FUNCTION_146();
  v20(v19);
  v21 = (v9 + ((*(v7 + 80) + 24) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  OUTLINED_FUNCTION_168_0();
  v23();
  v24 = (v22 + v21);
  *v24 = v5;
  v24[1] = v32;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v33[4] = sub_1E3A49558;
  v33[5] = v22;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_58_16(COERCE_DOUBLE(1107296256));
  v33[2] = sub_1E3A4D110;
  v33[3] = &block_descriptor_13;
  v25 = _Block_copy(v33);
  v26 = OUTLINED_FUNCTION_125();
  sub_1E34AF604(v26, v27);
  v28 = v31;

  v29 = OUTLINED_FUNCTION_43_0();
  [v29 v30];
  _Block_release(v25);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A308DC()
{
  OUTLINED_FUNCTION_31_1();
  v87 = v3;
  v89 = v2;
  v90 = v5;
  v91 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_11_14();
  v93 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v82 = v15;
  OUTLINED_FUNCTION_138();
  v16 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_278();
  v22 = v21 - (v20 & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v83 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_34_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v85 = v27;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v86 = Strong;
  if (!v0)
  {
    goto LABEL_5;
  }

  v29 = v0;
  v30 = [v29 integerValue];
  if (v7)
  {

LABEL_5:
    sub_1E324FBDC();
    v31 = v9;
    OUTLINED_FUNCTION_131_0();
    v32(v13);
    v33 = v18;
    OUTLINED_FUNCTION_88_4();
    v34 = v91;
    v35(v22, v91, v16);
    v36 = sub_1E41FFC94();
    v37 = sub_1E42067D4();
    if (OUTLINED_FUNCTION_262(v37))
    {
      OUTLINED_FUNCTION_13_13();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v84 = v16;
      v94[0] = swift_slowAlloc();
      *v38 = 136315138;
      sub_1E41FE314();
      v39 = sub_1E4205F94();
      v41 = v40;

      (*(v33 + 8))(v22, v84);
      v42 = v39;
      v34 = v91;
      v43 = sub_1E3270FC8(v42, v41, v94);

      *(v38 + 4) = v43;
      OUTLINED_FUNCTION_50_6(&dword_1E323F000, v36, v37, "OpenURLHandler::processDeeplink %s");
      OUTLINED_FUNCTION_248();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v31 + 8))(v13, v93);
    }

    else
    {

      v44 = OUTLINED_FUNCTION_125();
      v45(v44);
      (*(v31 + 8))(v13, v93);
    }

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    OUTLINED_FUNCTION_4_0();
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v94[2] = v34;
    v94[3] = v46;
    v94[4] = v87;
    v94[5] = v89;
    v94[6] = v90;
    sub_1E3B79200(sub_1E3A4C80C, v94);

    goto LABEL_16;
  }

  v88 = v30;
  sub_1E41FE314();
  v47 = sub_1E4206124();

  if (v47)
  {
    OUTLINED_FUNCTION_88_4();
    v48 = v85;
    v49(v85, v91, v16);
  }

  else
  {
    v48 = v85;
    OUTLINED_FUNCTION_21();
    (*(v50 + 616))(0x7370747468, 0xE500000000000000, v91);
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_131_0();
  v51(v82);
  v92 = v18;
  v81 = *(v18 + 16);
  v81(v1, v48, v16);
  v52 = v29;
  v53 = sub_1E41FFC94();
  sub_1E42067D4();
  OUTLINED_FUNCTION_41_15();
  if (os_log_type_enabled(v53, v54))
  {
    OUTLINED_FUNCTION_57_3();
    HIDWORD(v79) = v29;
    v55 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v56 = swift_slowAlloc();
    v94[0] = OUTLINED_FUNCTION_275(v56);
    *v55 = 134218242;
    *(v55 + 4) = [v52 integerValue];

    *(v55 + 12) = 2080;
    OUTLINED_FUNCTION_6_83();
    sub_1E3A496B8(v57, v58);
    v77 = v53;
    sub_1E4207944();
    v59 = OUTLINED_FUNCTION_176_2(v18);
    v60(v59);
    v61 = OUTLINED_FUNCTION_153_2();
    v64 = sub_1E3270FC8(v61, v62, v63);

    *(v55 + 14) = v64;
    _os_log_impl(&dword_1E323F000, v77, BYTE4(v79), "OpenURLHandler::processDeeplink AMSURLParser typeForURL: AMS URL -- returns %ld, %s", v55, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();

    (*(v9 + 8))(v82, v93);
  }

  else
  {

    v65 = OUTLINED_FUNCTION_176_2(v18);
    v66(v65);
    v67 = OUTLINED_FUNCTION_277();
    v68(v67);
  }

  v81(v83, v85, v16);
  v69 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v70 = swift_allocObject();
  *(v70 + 16) = v89;
  *(v70 + 24) = v90;
  (*(v92 + 32))(v70 + v69, v83, v16);
  v71 = OUTLINED_FUNCTION_39_3();
  sub_1E34AF604(v71, v72);
  sub_1E3A31000(v88, v85, 0, sub_1E3A4C730, v70, v73, v74, v75, v77, v78, v79, v80);

  OUTLINED_FUNCTION_143();
  v76();
LABEL_16:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A31000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_31_1();
  v14 = v12;
  OUTLINED_FUNCTION_123_2();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_8();
  if (v13 != 2)
  {
    if (v13 == 1)
    {
      v20 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      MEMORY[0x1EEE9AC00](v20);
      OUTLINED_FUNCTION_280();
      *(v21 - 24) = 0;
      *(v21 - 16) = v14;
      v19 = sub_1E3A4C470;
    }

    else
    {
      if (v13)
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_4_32();
        v23 = OUTLINED_FUNCTION_121();
        v24(v23);
        v25 = sub_1E41FFC94();
        sub_1E42067D4();
        OUTLINED_FUNCTION_41_15();
        if (os_log_type_enabled(v25, v26))
        {
          *OUTLINED_FUNCTION_125_0() = 0;
          OUTLINED_FUNCTION_12_17();
          _os_log_impl(v27, v28, v29, v30, v31, 2u);
          v32 = OUTLINED_FUNCTION_19_56();
          MEMORY[0x1E69143B0](v32);
        }

        v33 = OUTLINED_FUNCTION_57();
        v34(v33);
        sub_1E3A407C0();
        (*((*MEMORY[0x1E69E7D40] & *v12) + 0x118))(1);
        goto LABEL_13;
      }

      v16 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      MEMORY[0x1EEE9AC00](v16);
      OUTLINED_FUNCTION_280();
      *(v18 - 24) = 1;
      *(v18 - 16) = v14;
      v19 = sub_1E3A4D124;
    }

    sub_1E3B79200(v19, v17);
LABEL_13:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_283();
  OUTLINED_FUNCTION_25_2();

  sub_1E3A436B8();
}

void sub_1E3A3139C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v9 = sub_1E41FE364();
  v10 = sub_1E4205ED4();
  (*(a6 + 16))(a6, v9, v10, a4 & 1, a5 & 1);
}

void sub_1E3A31438()
{
  OUTLINED_FUNCTION_31_1();
  v33 = v3;
  v34 = v4;
  v32 = v5;
  v29 = v6;
  v30 = v7;
  v28 = v8;
  OUTLINED_FUNCTION_294();
  v9 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_132_3();
  v13 = *(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_amsURLParser);
  v14 = sub_1E41FE364();
  v31 = [v13 typeForURL_];

  OUTLINED_FUNCTION_4_0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_66_4();
  v16(v1, v2, v9);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  OUTLINED_FUNCTION_134_4();
  v19 = v18 & 0xFFFFFFFFFFFFFFF8;
  v20 = ((v18 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  (*(v11 + 32))(v21 + v17, v1, v9);
  *(v21 + v0) = v28;
  v22 = (v21 + v19);
  *v22 = v29;
  v22[1] = v30;
  *(v21 + v20) = v32;
  v23 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v23 = v33;
  v23[1] = v34;
  v35[4] = sub_1E3A495FC;
  v35[5] = v21;
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_58_16(COERCE_DOUBLE(1107296256));
  v35[2] = sub_1E3A4D110;
  v35[3] = &block_descriptor_20;
  v24 = _Block_copy(v35);
  v25 = v32;

  sub_1E34AF604(v33, v34);

  v26 = OUTLINED_FUNCTION_43_0();
  [v26 v27];
  _Block_release(v24);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A31680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), uint64_t a22)
{
  OUTLINED_FUNCTION_31_1();
  v99 = v26;
  v100 = v25;
  v98 = v27;
  v101 = v28;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_9_5();
  v33 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_77_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v103 = v40;
  v104 = v39;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v102 = Strong;
    if (v22)
    {
      v43 = v22;
      [v43 integerValue];
      if (!v32)
      {
        sub_1E324FBDC();
        OUTLINED_FUNCTION_28_13();
        v56(v23);
        OUTLINED_FUNCTION_66_4();
        OUTLINED_FUNCTION_240();
        v57();
        v58 = v43;
        v59 = sub_1E41FFC94();
        v60 = sub_1E42067D4();
        if (OUTLINED_FUNCTION_262(v60))
        {
          OUTLINED_FUNCTION_57_3();
          v97 = v58;
          v61 = swift_slowAlloc();
          OUTLINED_FUNCTION_15_4();
          v62 = swift_slowAlloc();
          *&v106 = OUTLINED_FUNCTION_306(v62);
          *v61 = 134218242;
          *(v61 + 4) = [v97 integerValue];

          *(v61 + 12) = 2080;
          OUTLINED_FUNCTION_6_83();
          sub_1E3A496B8(v63, v64);
          v65 = sub_1E4207944();
          v96 = v30;
          v66 = OUTLINED_FUNCTION_151_1();
          v67(v66);
          v68 = OUTLINED_FUNCTION_63_0();
          sub_1E3270FC8(v68, v69, v70);
          OUTLINED_FUNCTION_31_4();

          *(v61 + 14) = v65;
          _os_log_impl(&dword_1E323F000, v59, v60, "OpenURLHandler::processNonDeeplinkURL AMSURLParser typeForURL: AMS URL -- returns %ld, %s", v61, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v95);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
          v58 = v97;
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        else
        {

          v82 = OUTLINED_FUNCTION_151_1();
          v83(v82);
        }

        (*(v103 + 8))(v23, v104);
        OUTLINED_FUNCTION_4_0();
        v84 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v85 = swift_allocObject();
        v85[2] = v98;
        v85[3] = v100;
        v85[4] = v84;
        v85[5] = v99;
        v85[6] = a21;
        v85[7] = a22;
        v86 = v99;

        v87 = OUTLINED_FUNCTION_53();
        sub_1E34AF604(v87, v88);
        v89 = OUTLINED_FUNCTION_81_6();
        sub_1E3A31000(v89, v30, v101, v90, v85, v91, v92, v93, v94, v95, v96, v97);

LABEL_17:

        goto LABEL_18;
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v44 = OUTLINED_FUNCTION_297();
    v45(v44);
    OUTLINED_FUNCTION_66_4();
    v46(v37, v30, v33);
    v47 = v32;
    v48 = sub_1E41FFC94();
    v49 = sub_1E42067D4();

    if (os_log_type_enabled(v48, v49))
    {
      OUTLINED_FUNCTION_57_3();
      v50 = swift_slowAlloc();
      v108 = OUTLINED_FUNCTION_72_0();
      *v50 = 136315394;
      if (v32)
      {
        swift_getErrorValue();
        *(&v107 + 1) = v105;
        __swift_allocate_boxed_opaque_existential_1(&v106);
        OUTLINED_FUNCTION_37_1();
        OUTLINED_FUNCTION_114_3();
        v51();
      }

      else
      {
        v106 = 0u;
        v107 = 0u;
      }

      v71 = sub_1E3294FA4(&v106);
      v73 = sub_1E3270FC8(v71, v72, &v108);

      *(v50 + 4) = v73;
      OUTLINED_FUNCTION_332();
      OUTLINED_FUNCTION_6_83();
      sub_1E3A496B8(v74, v75);
      sub_1E4207944();
      v76 = OUTLINED_FUNCTION_125();
      v77(v76);
      v78 = OUTLINED_FUNCTION_153_2();
      v81 = sub_1E3270FC8(v78, v79, v80);

      *(v50 + 14) = v81;
      OUTLINED_FUNCTION_347(&dword_1E323F000, v48, v49, "OpenURLHandler::processNonDeeplinkURL Non-AMS Link - error: %s for %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v103 + 8))(v24, v104);
    }

    else
    {

      v52 = OUTLINED_FUNCTION_125();
      v53(v52);
      v54 = OUTLINED_FUNCTION_142();
      v55(v54);
    }

    if (a21)
    {
      a21(0);
    }

    goto LABEL_17;
  }

LABEL_18:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A31CE8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v24 = v6;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31_2();
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E328438C(v10, &v26);
  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  OUTLINED_FUNCTION_47_23();
  if (swift_dynamicCast())
  {
    v14 = [v25 BOOLValue];

    if (!v8)
    {
LABEL_8:
      if (!v5)
      {
LABEL_16:
        OUTLINED_FUNCTION_25_2();
        return;
      }

LABEL_9:
      v5(v14);
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_99_0();
  sub_1E41FE404();
  OUTLINED_FUNCTION_63(v1);
  if (v15)
  {
    sub_1E325F6F0(v1, &unk_1ECF363C0, &unk_1E42A9420);
    goto LABEL_8;
  }

  v16 = OUTLINED_FUNCTION_146();
  v17(v16);
  if (!v14)
  {
    v22 = OUTLINED_FUNCTION_220();
    v23(v22);
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_14:
    v20 = OUTLINED_FUNCTION_220();
    v21(v20);
    goto LABEL_16;
  }

  if (v24)
  {
    v19 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x278))(v0, v24, v5, v3);

    goto LABEL_14;
  }

  __break(1u);
}

void sub_1E3A32134()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_304();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v29 = v9;
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_12();
  sub_1E32859C4(v2, &selRef_tabIdentifier);
  if (v10)
  {
    v11 = [objc_opt_self() sharedInstance];
    v12 = sub_1E4205ED4();

    [v11 selectTabBarItem_];
  }

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v13 = sub_1E4206A04();
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_10_9();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = v2;
  v15[4] = v6;
  v15[5] = v4;
  v31[4] = sub_1E3A496AC;
  v31[5] = v15;
  OUTLINED_FUNCTION_12_0();
  v31[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v31[2] = v16;
  v31[3] = &block_descriptor_27;
  v17 = _Block_copy(v31);
  v18 = v2;
  v19 = OUTLINED_FUNCTION_123_1();
  sub_1E34AF604(v19, v20);

  sub_1E4203FE4();
  v31[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_3_101();
  sub_1E3A496B8(v21, v22);
  v23 = OUTLINED_FUNCTION_97_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v25, v26, &qword_1E429B000);
  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v1, v0, v17);
  _Block_release(v17);

  OUTLINED_FUNCTION_215();
  v27 = OUTLINED_FUNCTION_13_8();
  v28(v27);
  (*(v29 + 8))(v1, v30);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A32608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (TVAppFeature.isEnabled.getter(1, a2, a3))
  {
    v22 = OUTLINED_FUNCTION_53();

    sub_1E3A36D90(v22, v23, v24, a4, a5, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, SHIDWORD(a18), a19, a20);
  }

  else
  {
    v28 = OUTLINED_FUNCTION_53();

    sub_1E3A3579C(v28, v29, v30, a4, a5, 0, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1E3A3276C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_318();
  v9 = sub_1E41FE414();
  OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_53();
  v11(v10);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
  v15 = OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredOpenURL;
  OUTLINED_FUNCTION_11_3(v3 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredOpenURL, v20);
  sub_1E38DAEEC(v4, v3 + v15);
  swift_endAccess();
  v16 = (v3 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredOpenURLCompletion);
  *v16 = a2;
  v16[1] = a3;

  v17 = OUTLINED_FUNCTION_63_0();
  return sub_1E34AF594(v17, v18);
}

void sub_1E3A3297C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_6();
  v9 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_21();
  (*(v13 + 200))();
  OUTLINED_FUNCTION_63(v2);
  if (v14)
  {
    sub_1E325F6F0(v2, &unk_1ECF363C0, &unk_1E42A9420);
  }

  else
  {
    (*(v11 + 32))(v1, v2, v9);
    v15 = (v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredOpenURLCompletion);
    if (*(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredOpenURLCompletion))
    {
      OUTLINED_FUNCTION_21();
      v30 = *(v16 + 656);

      v17 = OUTLINED_FUNCTION_39_3();
      v30(v17);
      v18 = OUTLINED_FUNCTION_146();
      sub_1E34AF594(v18, v19);
      v20 = OUTLINED_FUNCTION_53();
      v21(v20);
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v22, v23, v24, v9);
      v25 = OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredOpenURL;
      OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_deferredOpenURL, &v31);
      sub_1E38DAEEC(v7, v0 + v25);
      swift_endAccess();
      v26 = *v15;
      v27 = v15[1];
      *v15 = 0;
      v15[1] = 0;
      sub_1E34AF594(v26, v27);
    }

    else
    {
      v28 = OUTLINED_FUNCTION_53();
      v29(v28);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A32C2C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  OUTLINED_FUNCTION_144_0();
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_2_10();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v10 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  sub_1E41FE5C4();
  OUTLINED_FUNCTION_89_5();
  v12 = OUTLINED_FUNCTION_168();
  v13(v12);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = v4;
  (*(v6 + 32))(v16 + v14, v10, v0);
  *(v16 + v15) = v2;
  v23[4] = sub_1E3A496FC;
  v23[5] = v16;
  OUTLINED_FUNCTION_12_0();
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_7_6();
  v23[2] = v17;
  v23[3] = &block_descriptor_33;
  v18 = _Block_copy(v23);
  v19 = v1;
  v20 = v4;
  OUTLINED_FUNCTION_31_4();

  [v1 evaluate_];
  _Block_release(v18);
  v21 = OUTLINED_FUNCTION_38_0();
  v22(v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A32DF0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_9_5();
  v5 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  v9 = *(v8 + 64);
  v11 = [v0 objectForKeyedSubscript_];
  if (!v11)
  {
    goto LABEL_4;
  }

  v29 = v11;
  if ([v11 hasProperty_])
  {
    OUTLINED_FUNCTION_4_0();
    v12 = swift_allocObject();
    v28 = v2;
    v13 = v12;
    swift_unknownObjectWeakInit();
    v14 = OUTLINED_FUNCTION_123_1();
    v15(v14);
    v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v4;
    (*(v7 + 32))(v17 + v16, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1E4297BD0;
    *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    *(v18 + 32) = v28;
    v19 = sub_1E3280A90(0, &qword_1EE23AE50, 0x1E696EB58);
    v20 = v4;

    v21 = sub_1E3A242D8(v0, sub_1E3A4C39C, v17);
    *(v18 + 88) = v19;
    *(v18 + 64) = v21;
    v22 = sub_1E3A242D8(v0, sub_1E3A332F4, 0);
    *(v18 + 120) = v19;
    *(v18 + 96) = v22;
    v23 = sub_1E4205F14();
    v25 = sub_1E3780E30(v23, v24, v18, v29);

LABEL_4:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A33090()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_19_2();
  if (sub_1E32AE9B0(v8))
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](0, v8);
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v13 = *(v8 + 32);
    }

    v14 = v13;
    v15 = [v13 toObject];

    if (v15)
    {
      sub_1E4207264();
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_2_85();
    }

    v28 = v26;
    v29 = v27;
    if (*(&v27 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
      OUTLINED_FUNCTION_77_8();
      if (swift_dynamicCast())
      {
        v16 = v26;
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  sub_1E325F6F0(&v28, &unk_1ECF296E0, &unk_1E4298030);
  v16 = 0;
LABEL_14:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_11_14();
    sub_1E41FE414();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    MEMORY[0x1EEE9AC00](v21);
    OUTLINED_FUNCTION_228();
    *(v22 - 64) = v0;
    *(v22 - 56) = v16;
    *(v22 - 48) = v4;
    *(v22 - 40) = v6;
    *(v22 - 24) = 0;
    *(v22 - 16) = 0;
    *(v22 - 32) = v2;
    OUTLINED_FUNCTION_346(v25, v23, v24);

    sub_1E325F6F0(v0, &unk_1ECF363C0, &unk_1E42A9420);
  }

  if ([objc_opt_self() valueWithUndefinedInContext_])
  {

    OUTLINED_FUNCTION_95();
    return;
  }

LABEL_20:
  __break(1u);
}

void sub_1E3A333C8()
{
  OUTLINED_FUNCTION_31_1();
  v64 = v4;
  v65 = v3;
  v62 = v5;
  v7 = v6;
  v8 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v66 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_93_0();
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_47_3();
  v67 = v16;
  v68 = v14;
  v59 = sub_1E324FBDC();
  v58 = *(v16 + 16);
  v58(v1);
  v19 = *(v10 + 16);
  v60 = v7;
  v19(v0, v7, v8);
  v20 = sub_1E41FFC94();
  v21 = sub_1E42067D4();
  v61 = v8;
  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_13_13();
    v63 = v2;
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v23 = swift_slowAlloc();
    v70 = v8;
    v71 = OUTLINED_FUNCTION_47_12(v23);
    *v22 = 136315138;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
    v19(boxed_opaque_existential_1, v0, v8);
    v25 = sub_1E3294FA4(v69);
    v26 = v8;
    v27 = v25;
    v29 = v28;
    v30 = *(v10 + 8);
    v30(v0, v26);
    sub_1E3270FC8(v27, v29, &v71);
    OUTLINED_FUNCTION_92_2();

    *(v22 + 4) = v0;
    OUTLINED_FUNCTION_50_6(&dword_1E323F000, v20, v21, "OpenURLHandler::handleParseURLJSResponse back from %s");
    __swift_destroy_boxed_opaque_existential_1(v57);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v2 = v63;
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  else
  {

    v30 = *(v10 + 8);
    v30(v0, v8);
  }

  v31 = *(v67 + 8);
  v31(v1, v68);
  if (!v65)
  {
    v34 = 0;
    goto LABEL_9;
  }

  sub_1E3280A90(0, &qword_1ECF31170, off_1E87284D8);
  v32 = v62;

  v34 = sub_1E3A355A4(v33, v62);
  if (!v34)
  {
LABEL_9:
    v64(v34);
LABEL_20:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v35 = v34;
  (v58)(v2, v59, v68);
  v19(v66, v60, v61);
  v36 = sub_1E41FFC94();
  sub_1E42067D4();
  OUTLINED_FUNCTION_41_15();
  if (os_log_type_enabled(v36, v37))
  {
    OUTLINED_FUNCTION_13_13();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_35();
    v38 = swift_slowAlloc();
    v70 = v61;
    v71 = v38;
    *v35 = 136315138;
    v39 = __swift_allocate_boxed_opaque_existential_1(v69);
    v19(v39, v66, v61);
    sub_1E3294FA4(v69);
    v40 = OUTLINED_FUNCTION_242();
    v41(v40);
    v42 = OUTLINED_FUNCTION_39_9();
    v45 = sub_1E3270FC8(v42, v43, v44);

    *(v35 + 4) = v45;
    OUTLINED_FUNCTION_258();
    OUTLINED_FUNCTION_126_1();
    _os_log_impl(v46, v47, v48, v49, v50, v51);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  else
  {

    v52 = OUTLINED_FUNCTION_242();
    (v30)(v52);
  }

  v31(v2, v68);
  v53 = sub_1E3A49AF4(v35);
  if (!v53)
  {
    goto LABEL_18;
  }

  v54 = v53;
  if (!sub_1E32AE9B0(v53))
  {

LABEL_18:
    v56 = 0;
    goto LABEL_19;
  }

  if ((v54 & 0xC000000000000001) != 0)
  {
    v55 = MEMORY[0x1E6911E60](0, v54);
    goto LABEL_16;
  }

  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v55 = *(v54 + 32);
LABEL_16:
    v56 = v55;

LABEL_19:
    v64(v56);

    goto LABEL_20;
  }

  __break(1u);
}

id sub_1E3A338F0(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4, ...)
{
  OUTLINED_FUNCTION_11_14();
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  result = sub_1E32AE9B0(a3);
  if (!result)
  {
    OUTLINED_FUNCTION_200_0();
LABEL_12:
    sub_1E325F6F0(v36, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_13;
  }

  if ((a3 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1E6911E60](0, a3);
  }

  else
  {
    if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_21;
    }

    v12 = *(a3 + 32);
  }

  v13 = v12;
  v14 = [v12 toObject];

  if (v14)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_201_1();
  }

  OUTLINED_FUNCTION_128_5();
  if (!v15)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_47_23();
  if (swift_dynamicCast())
  {
    v16 = v34;
    v17 = v35;
    goto LABEL_14;
  }

LABEL_13:
  v17 = 0x80000001E426D780;
  v16 = 0xD000000000000015;
LABEL_14:
  v37 = v16;
  sub_1E324FBDC();
  v18 = OUTLINED_FUNCTION_101();
  v19(v18);

  v20 = sub_1E41FFC94();
  v21 = sub_1E42067F4();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_13_13();
    swift_slowAlloc();
    OUTLINED_FUNCTION_30_35();
    v22 = swift_slowAlloc();
    v36[0] = v22;
    *v7 = 136315138;
    *(v7 + 4) = sub_1E3270FC8(v37, v17, v36);
    OUTLINED_FUNCTION_126_1();
    _os_log_impl(v23, v24, v25, v26, v27, v28);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v29 = OUTLINED_FUNCTION_19_56();
    MEMORY[0x1E69143B0](v29);

    (*(v9 + 8))(v4, v7);
  }

  else
  {

    v30 = OUTLINED_FUNCTION_97_1();
    v32(v30, v31);
  }

  result = [objc_opt_self() valueWithUndefinedInContext_];
  if (result)
  {
    v33 = result;

    return v33;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1E3A33C20()
{
  OUTLINED_FUNCTION_31_1();
  v30 = v1;
  v31 = v2;
  v28 = v3;
  v29 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_304();
  v7 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_66_4();
  v14 = OUTLINED_FUNCTION_283();
  v15(v14);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v9 + 32))(v19 + v16, v13, v7);
  *(v19 + v17) = v0;
  *(v19 + v18) = v6;
  v20 = (v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8));
  v21 = v29;
  *v20 = v28;
  v20[1] = v21;
  v32[4] = v30;
  v32[5] = v19;
  OUTLINED_FUNCTION_12_0();
  v32[1] = 1107296256;
  OUTLINED_FUNCTION_7_6();
  v32[2] = v22;
  v32[3] = v31;
  v23 = _Block_copy(v32);
  v24 = v0;
  v25 = v6;
  OUTLINED_FUNCTION_50();

  v26 = OUTLINED_FUNCTION_123_3();
  [v26 v27];
  _Block_release(v23);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A33DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_31_1();
  v23 = v22;
  v65 = v25;
  v66 = v24;
  v27 = v26;
  v29 = v28;
  v67 = a21;
  v68 = v30;
  v31 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v33 = v32;
  v35 = *(v34 + 64);
  v37 = &v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = [v29 objectForKeyedSubscript_];
  if (!v38)
  {
    goto LABEL_4;
  }

  v39 = *v23;
  v69 = v38;
  if ([v38 hasProperty_])
  {
    v40 = sub_1E41FE314();
    v62 = v41;
    v63 = v40;
    OUTLINED_FUNCTION_4_0();
    v42 = swift_allocObject();
    v64 = a22;
    v43 = v42;
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_114_3();
    v44();
    OUTLINED_FUNCTION_303();
    v45 = (v35 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    (*(v33 + 32))(v46 + v27, v37, v31);
    v47 = v65;
    v48 = v66;
    *(v46 + v45) = v66;
    v49 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
    v50 = v68;
    *v49 = v47;
    v49[1] = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_1E4297BD0;
    *(v51 + 56) = MEMORY[0x1E69E6158];
    v52 = v62;
    *(v51 + 32) = v63;
    *(v51 + 40) = v52;
    v53 = sub_1E3280A90(0, &qword_1EE23AE50, 0x1E696EB58);
    v54 = v48;

    v55 = sub_1E3A242D8(v29, v67, v46);
    *(v51 + 88) = v53;
    *(v51 + 64) = v55;
    v56 = sub_1E3A242D8(v29, v64, 0);
    *(v51 + 120) = v53;
    *(v51 + 96) = v56;
    v57 = sub_1E4205F14();
    v59 = sub_1E3780E30(v57, v58, v51, v69);

LABEL_4:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A340AC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_144_0();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v8 = _Block_copy(v4);
  sub_1E41FE3C4();
  OUTLINED_FUNCTION_4_0();
  *(swift_allocObject() + 16) = v8;
  v9 = v6;
  v10 = v0;
  v11 = OUTLINED_FUNCTION_151_1();
  v2(v11);

  v12 = OUTLINED_FUNCTION_32_12();
  v13(v12);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A341CC()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v1;
  v7 = v6;
  OUTLINED_FUNCTION_304();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_2_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_45_25();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_55_20();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v72 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_28_6();
  if (v7)
  {
    v16 = v7;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v17(v3);
    v18 = v7;
    v19 = sub_1E41FFC94();
    v20 = sub_1E42067F4();

    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_13_13();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      *&v76 = swift_slowAlloc();
      *v21 = 136315138;
      swift_getErrorValue();
      v75[3] = v72[2];
      __swift_allocate_boxed_opaque_existential_1(v75);
      OUTLINED_FUNCTION_37_1();
      (*(v22 + 16))();
      v23 = sub_1E3294FA4(v75);
      v25 = sub_1E3270FC8(v23, v24, &v76);

      *(v21 + 4) = v25;
      OUTLINED_FUNCTION_82_0();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      OUTLINED_FUNCTION_91_6();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    else
    {
    }

    (*(v9 + 8))(v3, v0);
    goto LABEL_25;
  }

  v31 = [v4 carrierLinkResult];
  if (v31)
  {
    v32 = v31;
    v33 = sub_1E3A49BE0([v31 linkParams]);
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v37(v14);
      v38 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_101_3();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_125_0();
        *v40 = 0;
        _os_log_impl(&dword_1E323F000, v38, v2, "OpenURLHandler::processEngagementResult processing carrier linking result", v40, 2u);
        OUTLINED_FUNCTION_7_17();
        MEMORY[0x1E69143B0]();
      }

      v41 = OUTLINED_FUNCTION_242();
      v42(v41);
      v43 = (v5 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID);
      *v43 = v35;
      v43[1] = v36;

      v44 = 2;
LABEL_9:
      sub_1E3A3472C(v44);

      goto LABEL_25;
    }
  }

  v45 = [v4 purchaseResult];
  if (v45)
  {
    v32 = v45;
    v46 = sub_1E3A49B64(v45, &selRef_responseDictionary);
    if (v46)
    {
      v47 = v46;
      v73 = *MEMORY[0x1E698C530];
      v48 = v73;
      type metadata accessor for AMSBuyParamProperty(0);
      OUTLINED_FUNCTION_16_63();
      sub_1E3A496B8(v49, v50);
      v51 = v48;
      sub_1E4207414();
      sub_1E375D7E8(v47, &v76, v75);

      sub_1E375D84C(v75);
      if (!v77)
      {

        sub_1E325F6F0(&v76, &unk_1ECF296E0, &unk_1E4298030);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_47_23();
      if (swift_dynamicCast())
      {
        v52 = v73;
        v53 = v74;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_11();
        v54 = OUTLINED_FUNCTION_244();
        v55(v54);
        v56 = sub_1E41FFC94();
        sub_1E42067E4();
        OUTLINED_FUNCTION_178();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = OUTLINED_FUNCTION_125_0();
          *v58 = 0;
          _os_log_impl(&dword_1E323F000, v56, v47, "OpenURLHandler::processEngagementResult processing purchase result", v58, 2u);
          OUTLINED_FUNCTION_7_17();
          MEMORY[0x1E69143B0]();
        }

        v59 = OUTLINED_FUNCTION_11_6();
        v60(v59);
        v61 = (v5 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID);
        *v61 = v52;
        v61[1] = v53;

        v44 = 0;
        goto LABEL_9;
      }
    }
  }

LABEL_22:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v62 = OUTLINED_FUNCTION_43_0();
  v63(v62);
  v64 = sub_1E41FFC94();
  sub_1E42067F4();
  OUTLINED_FUNCTION_101_3();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_34_10(v66);
    OUTLINED_FUNCTION_70_12();
    _os_log_impl(v67, v68, v69, v70, v71, 2u);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  (*(v9 + 8))(v1, v0);
LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3A3472C(char a1)
{
  if (!*(v1 + OBJC_IVAR____TtC8VideosUI14OpenURLHandler_purchaseOrLinkingAdamID + 8))
  {
LABEL_4:

    sub_1E3A46658();
    return result;
  }

  if (a1 == 2)
  {
    OUTLINED_FUNCTION_4_0();
    v4 = swift_allocObject();
    OUTLINED_FUNCTION_141_0(v4);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 2;

    objc_opt_self();
    OUTLINED_FUNCTION_87_0();

    v6 = +[VUITVAppLauncher sharedInstance];
    v7 = [(VUITVAppLauncher *)v6 appController];

    if (v7 && (v8 = [(VUITVApplicationController *)v7 appContext], v7, v8))
    {
      OUTLINED_FUNCTION_2_4();
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1E3A4B364;
      *(v9 + 24) = v5;
      v14[4] = sub_1E3A4B370;
      v14[5] = v9;
      OUTLINED_FUNCTION_3_4();
      v14[1] = 1107296256;
      OUTLINED_FUNCTION_7_6();
      v14[2] = v10;
      v14[3] = &block_descriptor_235;
      v11 = _Block_copy(v14);

      [(VUIAppContext *)v8 evaluate:v11];
      _Block_release(v11);
    }

    else
    {
      sub_1E3A46B04();
    }
  }

  else
  {
    if (a1 == 3)
    {
      goto LABEL_4;
    }

    v12 = OUTLINED_FUNCTION_74();
    sub_1E3A46FBC(v12, v13, a1);
  }

  return result;
}

void sub_1E3A349F0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = OUTLINED_FUNCTION_39_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_72_13();
  sub_1E41FE414();
  OUTLINED_FUNCTION_2_10();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_226();
  v15 = OUTLINED_FUNCTION_123_1();
  sub_1E37E93E8(v15, v16, &unk_1ECF363C0, &unk_1E42A9420);
  v17 = OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_52(v17, v18, v0);
  if (v19)
  {
    sub_1E325F6F0(v3, &unk_1ECF363C0, &unk_1E42A9420);
  }

  else
  {
    v20 = *(v9 + 32);
    v20(v2, v3, v0);
    v21 = [objc_opt_self() sharedInstance];
    v22 = [v21 appController];

    if (v22)
    {
      v23 = [v22 appContext];

      if (v23)
      {
        v24 = OUTLINED_FUNCTION_74();
        v25(v24);
        v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
        v37 = v20;
        v38 = v1;
        OUTLINED_FUNCTION_272();
        v28 = v27 & 0xFFFFFFFFFFFFFFF8;
        v29 = swift_allocObject();
        v37(v29 + v26, v13, v0);
        *(v20 + v29) = v23;
        v30 = v38;
        *(v29 + v28) = v38;
        v39[4] = sub_1E3A49C50;
        v39[5] = v29;
        OUTLINED_FUNCTION_12_0();
        v39[1] = 1107296256;
        OUTLINED_FUNCTION_7_6();
        v39[2] = v31;
        v39[3] = &block_descriptor_51;
        v32 = _Block_copy(v39);
        v33 = v23;
        v34 = v30;

        [v33 evaluate_];
        _Block_release(v32);
      }
    }

    v35 = OUTLINED_FUNCTION_13_8();
    v36(v35);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A34CB4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v49 = v4;
  OUTLINED_FUNCTION_118();
  v5 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_278();
  OUTLINED_FUNCTION_179_1();
  v48 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_8();
  v50 = v0;
  v12 = [v0 objectForKeyedSubscript_];
  if (!v12)
  {
LABEL_10:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v51 = v12;
  if ([v12 hasProperty_])
  {
    v46 = v3;
    sub_1E324FBDC();
    v13 = OUTLINED_FUNCTION_21_16();
    v14(v13);
    OUTLINED_FUNCTION_240();
    v47 = v15;
    v15();
    v16 = sub_1E41FFC94();
    v45 = sub_1E4206814();
    if (os_log_type_enabled(v16, v45))
    {
      OUTLINED_FUNCTION_57_3();
      v17 = swift_slowAlloc();
      v53 = OUTLINED_FUNCTION_72_0();
      *v17 = 136315394;
      OUTLINED_FUNCTION_23();
      *(v17 + 4) = sub_1E3270FC8(0xD000000000000020, v18, &v53);
      OUTLINED_FUNCTION_332();
      v52[3] = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
      (v47)(boxed_opaque_existential_1, v1, v5);
      v20 = sub_1E3294FA4(v52);
      v21 = OUTLINED_FUNCTION_125();
      v22(v21);
      v23 = OUTLINED_FUNCTION_27_0();
      sub_1E3270FC8(v23, v24, v25);
      OUTLINED_FUNCTION_92_2();

      *(v17 + 14) = v20;
      OUTLINED_FUNCTION_347(&dword_1E323F000, v16, v45, "OpenURLHandler::%s called for %s");
      OUTLINED_FUNCTION_343();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    else
    {

      v28 = OUTLINED_FUNCTION_125();
      v29(v28);
    }

    v30 = OUTLINED_FUNCTION_153_2();
    v31(v30);
    OUTLINED_FUNCTION_240();
    v47();
    v32 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v33 = swift_allocObject();
    *(v33 + 16) = v49;
    *(v33 + 24) = v46;
    (*(v7 + 32))(v33 + v32, v48, v5);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
    v35 = OUTLINED_FUNCTION_28_30(v34);
    *(v35 + 16) = xmmword_1E4299720;
    v36 = v49;
    v37 = v46;
    v38 = sub_1E41FE314();
    *(v35 + 56) = MEMORY[0x1E69E6158];
    *(v35 + 32) = v38;
    *(v35 + 40) = v39;
    v40 = sub_1E3280A90(0, &qword_1EE23AE50, 0x1E696EB58);
    v41 = sub_1E3A242D8(v50, sub_1E3A49D98, v33);
    *(v35 + 88) = v40;
    *(v35 + 64) = v41;
    v42 = sub_1E4205F14();
    v44 = sub_1E3780E30(v42, v43, v35, v51);

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3A35114()
{
  OUTLINED_FUNCTION_31_1();
  v40 = v3;
  v41 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_9_5();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_12();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v42 = v10;
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_72_13();
  v11 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_227();
  v17 = v15 - v16;
  if (!sub_1E32AE9B0(v7))
  {
    v45 = 0u;
    v46 = 0u;
LABEL_13:
    sub_1E325F6F0(&v45, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_14;
  }

  v44 = v0;
  if ((v7 & 0xC000000000000001) != 0)
  {
    v37 = OUTLINED_FUNCTION_321();
    v18 = MEMORY[0x1E6911E60](v37);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v18 = *(v7 + 32);
  }

  v19 = v18;
  v20 = [v18 toObject];

  if (v20)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_200_0();
  }

  v0 = v44;
  v45 = v49;
  v46 = v50;
  if (!*(&v50 + 1))
  {
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  OUTLINED_FUNCTION_77_8();
  if (swift_dynamicCast())
  {
    sub_1E3280A90(0, &qword_1ECF31170, off_1E87284D8);
    v39 = v5;
    v0 = v44;
    v21 = sub_1E3A355A4(v49, v5);
    if (v21)
    {
      v22 = v21;
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      v38 = sub_1E4206A04();
      OUTLINED_FUNCTION_28_13();
      v23(v17, v40, v11);
      v24 = (*(v13 + 80) + 40) & ~*(v13 + 80);
      v25 = swift_allocObject();
      *(v25 + 2) = v41;
      *(v25 + 3) = v22;
      *(v25 + 4) = v39;
      (*(v13 + 32))(&v25[v24], v17, v11);
      v47 = sub_1E3A49DD8;
      v48 = v25;
      OUTLINED_FUNCTION_96_1();
      *(&v45 + 1) = 1107296256;
      OUTLINED_FUNCTION_14_1();
      *&v46 = v26;
      *(&v46 + 1) = &block_descriptor_129;
      v27 = _Block_copy(&v45);
      v28 = v39;
      v29 = v41;
      v30 = v22;

      sub_1E4203FE4();
      *&v45 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_3_101();
      sub_1E3A496B8(v31, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
      OUTLINED_FUNCTION_47();
      sub_1E328FCF4(v33, v34, &qword_1E429B000);
      v0 = v44;
      sub_1E42072E4();
      OUTLINED_FUNCTION_168_0();
      MEMORY[0x1E6911380]();
      _Block_release(v27);

      v35 = OUTLINED_FUNCTION_39_3();
      v36(v35);
      (*(v42 + 8))(v1, v43);
    }
  }

LABEL_14:
  if ([objc_opt_self() valueWithUndefinedInContext_])
  {
    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_18:
  __break(1u);
}

id sub_1E3A355A4(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  v4 = [swift_getObjCClassFromMetadata() routerDataSourceWithDict:v3 appContext:a2];

  return v4;
}

void sub_1E3A3579C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  LODWORD(v183) = v23;
  v185 = v24;
  v190 = v25;
  v27 = v26;
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_8_0(v30);
  v176 = v31;
  OUTLINED_FUNCTION_5_7();
  v177 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_20(v34);
  v192 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_124_2();
  OUTLINED_FUNCTION_17_3(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v40);
  v178 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_25_3();
  v197 = v43;
  v182 = sub_1E32859C4(v29, &selRef_nativePageName);
  v193 = v44;
  v46 = TVAppFeature.isEnabled.getter(12, v44, v45);
  v47 = 0;
  if (v46)
  {
    v47 = sub_1E3A49B64(v29, &selRef_channelsResponse);
  }

  v186 = v47;
  v189 = sub_1E3A49B64(v29, &selRef_localLibraryLink);
  v194 = v29;
  v48 = sub_1E3A49AF4(v29);
  OUTLINED_FUNCTION_4_0();
  v196 = swift_allocObject();
  *(v196 + 16) = 0;
  OUTLINED_FUNCTION_4_0();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  OUTLINED_FUNCTION_4_0();
  v195 = swift_allocObject();
  *(v195 + 16) = MEMORY[0x1E69E7CC0];
  v50 = &selRef_setWaitingForTransactionToStart_;
  v187 = v49;
  v188 = v20;
  if (!v48)
  {
    goto LABEL_15;
  }

  v200 = sub_1E32AE9B0(v48);
  if (!v200)
  {

LABEL_15:
    v59 = 1;
LABEL_34:
    v74 = v194;
    v75 = [v194 action];
    sub_1E41FE5C4();
    v203 = v75;
    if (v75 && (objc_opt_self(), (v76 = swift_dynamicCastObjCClass()) != 0))
    {
      v77 = v76;
      v78 = v203;
      v79 = sub_1E41FE514();
      [v77 setUserPlaybackInitiationDate_];

      v80 = sub_1E41FE514();
      [v77 setOpenURLCompletionDate_];

      v74 = v194;
      v81 = 1;
    }

    else
    {
      v81 = 0;
    }

    v201 = [v74 actionFirst];
    v82 = [objc_opt_self() v50[64]];
    v83 = [v82 appController];

    if (v83)
    {
      v84 = [v83 navigationController];
    }

    else
    {
      v84 = 0;
    }

    v85 = [v74 postAction];
    sub_1E32859C4(v74, &selRef_tabIdentifier);
    if (!v193 && !v189 && !v203 && v59 && !v86)
    {

      sub_1E3A38568();

      goto LABEL_56;
    }

    v199 = [objc_opt_self() v50[64]];
    if (![v199 isPlaybackUIBeingShown])
    {
      if (v84)
      {
        v97 = OUTLINED_FUNCTION_46_12();
        sub_1E37E93E8(v97, v180, v98, v99);
        v100 = *(v36 + 16);
        v100(v179, v190, v192);
        v101 = OUTLINED_FUNCTION_305();
        v100(v101, v197, v192);
        OUTLINED_FUNCTION_166_1();
        v103 = (v102 + 48) & ~v102;
        OUTLINED_FUNCTION_289();
        v105 = (v104 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
        OUTLINED_FUNCTION_53_23();
        v107 = (v178 + v106 + v81) & ~v106;
        OUTLINED_FUNCTION_272();
        v108 = OUTLINED_FUNCTION_268();
        *(v108 + 2) = v182;
        *(v108 + 3) = v193;
        *(v108 + 4) = v188;
        *(v108 + 5) = v186;
        v109 = OUTLINED_FUNCTION_291();
        sub_1E327D738(v109, v110);
        *&v108[v105] = v194;
        *&v108[(v105 + 15) & 0xFFFFFFFFFFFFFFF8] = v189;
        v111 = *(v36 + 32);
        v111(&v108[v81], v179, v192);
        v111(&v108[v107], v181, v192);
        OUTLINED_FUNCTION_158_3();
        OUTLINED_FUNCTION_289();
        v108[v113] = v112;
        OUTLINED_FUNCTION_165_3();
        *(v114 + 8) = v195;
        *&v108[(((v107 + v178) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8] = v203;
        *&v108[v36] = v196;
        OUTLINED_FUNCTION_145_0(&a9);
        OUTLINED_FUNCTION_143();
        v116 = &v108[v115];
        *v116 = v84;
        v116[8] = v201;
        *&v108[(v36 + 47) & 0xFFFFFFFFFFFFFFF8] = v85;
        v204[4] = sub_1E3A49E3C;
        v204[5] = v108;
        OUTLINED_FUNCTION_24_35();
        v204[1] = 1107296256;
        OUTLINED_FUNCTION_0_48();
        v204[2] = v117;
        v204[3] = &block_descriptor_144;
        v118 = _Block_copy(v204);
        v119 = v203;
        v120 = v84;
        v121 = v188;
        v122 = v194;

        v123 = v85;

        [v120 vui:1 dismissViewControllerAnimated:v118 completion:?];

        _Block_release(v118);
      }

      else
      {
        OUTLINED_FUNCTION_233();
        OUTLINED_FUNCTION_141_4();
        OUTLINED_FUNCTION_158_3();
        v130 = OUTLINED_FUNCTION_76_5();
        OUTLINED_FUNCTION_90_6(v130, v193, v131, v186, v132, v133, v134, v135, v167, v168, v195, v203, v196, v187, v169, 0, v170, v171, v173, v174, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185);
      }

      goto LABEL_56;
    }

    if (v81)
    {
      OUTLINED_FUNCTION_233();
      OUTLINED_FUNCTION_141_4();
      OUTLINED_FUNCTION_158_3();
      v87 = OUTLINED_FUNCTION_76_5();
      v88 = v36;
      v90 = v89;
      OUTLINED_FUNCTION_90_6(v87, v193, v91, v186, v92, v93, v94, v95, v167, v168, v195, v203, v196, v187, v169, v84, v170, v171, v173, v84, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185);

      v36 = v88;

      v96 = v175;
    }

    else
    {
      if (v183)
      {
        OUTLINED_FUNCTION_233();
        OUTLINED_FUNCTION_141_4();
        v124 = OUTLINED_FUNCTION_76_5();
        OUTLINED_FUNCTION_90_6(v124, v193, v125, v186, v126, v127, v128, v129, v167, v168, v195, v203, v196, v187, v169, v84, v170, v171, v173, v174, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185);

LABEL_56:
        (*(v36 + 8))(v197, v192);

        OUTLINED_FUNCTION_25_2();
        return;
      }

      v136 = OUTLINED_FUNCTION_46_12();
      sub_1E37E93E8(v136, v180, v137, v138);
      v139 = *(v36 + 16);
      v139(v179, v190, v192);
      v140 = OUTLINED_FUNCTION_305();
      v139(v140, v197, v192);
      OUTLINED_FUNCTION_166_1();
      v142 = (v141 + 56) & ~v141;
      OUTLINED_FUNCTION_289();
      v144 = (v143 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
      v145 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
      v146 = *(v36 + 80);
      v191 = v85;
      v147 = v74;
      v148 = (v146 + v145 + 8) & ~v146;
      v149 = (v178 + v146 + v148) & ~v146;
      v150 = OUTLINED_FUNCTION_268();
      OUTLINED_FUNCTION_329();
      v151[2] = v84;
      v151[3] = v152;
      v151[4] = v193;
      v151[5] = v188;
      v151[6] = v186;
      v153 = OUTLINED_FUNCTION_291();
      sub_1E327D738(v153, v154);
      *(v150 + v144) = v147;
      *(v150 + v145) = v189;
      v155 = *(v36 + 32);
      v155(v150 + v148, v179, v192);
      v155(v150 + v149, v181, v192);
      OUTLINED_FUNCTION_143();
      *(v150 + v156) = 0;
      OUTLINED_FUNCTION_165_3();
      *(v157 + 8) = v195;
      OUTLINED_FUNCTION_252();
      *(v150 + v158) = v203;
      OUTLINED_FUNCTION_289();
      *(v150 + v160) = v159;
      OUTLINED_FUNCTION_145_0(&v205);
      *(v161 + 9) = v201;
      *(v150 + ((((((((((v149 + v178) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8)) = v191;
      v162 = v84;
      v163 = v188;
      v164 = v147;

      v165 = v191;
      v166 = v203;
      sub_1E3A3C02C();

      v96 = v199;
    }

    goto LABEL_56;
  }

  v174 = v36;
  v51 = sub_1E3A384DC(v48);
  v172 = v51;
  if (!v51)
  {
    *(v49 + 16) = 0;
    v53 = v200;
    goto LABEL_20;
  }

  v20 = [v51 uiConfiguration];
  *(v49 + 16) = v20;
  v52 = v20;
  v53 = v200;
  if (!v20)
  {
    goto LABEL_20;
  }

  v54 = v52;
  v55 = sub_1E32859C4(v52, &selRef_viewControllerDocumentIdentifier);
  if (v56)
  {
    v20 = v56;
    if (v55 == 0xD000000000000012 && v56 == 0x80000001E426D1F0)
    {
    }

    else
    {
      v58 = sub_1E42079A4();

      if ((v58 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v20 = type metadata accessor for VideosUI();
    static VideosUI.handleUpsellPresented(_:)(1);
  }

LABEL_19:

LABEL_20:
  v60 = 0;
  v202 = v48 & 0xC000000000000001;
  v198 = v48 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v202)
    {
      v61 = OUTLINED_FUNCTION_75();
      v62 = MEMORY[0x1E6911E60](v61);
    }

    else
    {
      if (v60 >= *(v198 + 16))
      {
        goto LABEL_59;
      }

      v62 = *(v48 + 8 * v60 + 32);
    }

    v63 = v62;
    v64 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v27)
    {
      v65 = objc_opt_self();
      v66 = v27;
      v67 = [v65 v50[64]];
      v20 = [v67 viewControllerWithDocumentDataSource:v63 appContext:v66];

      if (v20)
      {
        v68 = v48;
        v69 = v27;
        v70 = v50;
        v71 = v20;
        v20 = (v195 + 16);
        MEMORY[0x1E6910BF0]();
        if (*((*v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
          v20 = (v195 + 16);
        }

        OUTLINED_FUNCTION_277();
        sub_1E4206324();

        v50 = v70;
        v27 = v69;
        v48 = v68;
        v53 = v200;
      }
    }

    ++v60;
    if (v64 == v53)
    {

      sub_1E3A384DC(v72);
      OUTLINED_FUNCTION_50();

      v73 = *(v196 + 16);
      *(v196 + 16) = v20;

      v59 = v20 == 0;
      v36 = v174;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
}
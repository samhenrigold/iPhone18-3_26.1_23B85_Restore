uint64_t sub_1E3AE0584(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E324FBDC();
  (*(v12 + 16))(v16, v17, v10);
  v18 = v6;

  v19 = a5;
  v20 = a6;
  v21 = sub_1E41FFC94();
  v22 = sub_1E4206814();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v23 = 136448002;
    *(v23 + 4) = sub_1E3270FC8(a1, a2, &v49);
    *(v23 + 12) = 2080;
    v24 = sub_1E41E1364(v18);
    v45 = v21;
    OUTLINED_FUNCTION_63_16(v24, v25);
    OUTLINED_FUNCTION_6_19();

    *(v23 + 14) = a2;
    *(v23 + 22) = 2080;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327A0, &qword_1E42BA320);
    v27 = sub_1E41494B4(v26);
    OUTLINED_FUNCTION_63_16(v27, v28);
    OUTLINED_FUNCTION_6_19();

    *(v23 + 24) = a2;
    *(v23 + 32) = 2048;
    *(v23 + 34) = a4;
    *(v23 + 42) = 2112;
    *(v23 + 44) = v19;
    *(v23 + 52) = 2112;
    *(v23 + 54) = v20;
    *v46 = v19;
    v46[1] = v20;
    *(v23 + 62) = 2080;
    v29 = sub_1E3280A90(0, &unk_1ECF31E80, 0x1E696AB10);
    v47 = v22;
    v30 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x1B8);
    v31 = v19;
    v32 = v30(v20);
    [v32 frame];
    OUTLINED_FUNCTION_16_73();

    OUTLINED_FUNCTION_5_111();
    v37 = sub_1E389BF5C(v33, v34, v35, v36);
    OUTLINED_FUNCTION_63_16(v37, v38);
    OUTLINED_FUNCTION_6_19();

    *(v23 + 64) = v29;
    *(v23 + 72) = 2080;
    v40 = v30(v39);
    [v40 contentSize];

    v41 = sub_1E4206E54();
    OUTLINED_FUNCTION_63_16(v41, v42);
    OUTLINED_FUNCTION_6_19();

    *(v23 + 74) = v29;
    _os_log_impl(&dword_1E323F000, v45, v47, "StackViewControllerLayout::%{public}s<%s> model:%s, index:%ld, item:%@, group:%@, collectionFrame: %s, contentSize: %s", v23, 0x52u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E30, &qword_1E429E820);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    return (*(v12 + 8))(v16, v10);
  }

  else
  {

    return (*(v12 + 8))(v16, v10);
  }
}

id sub_1E3AE0974(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  sub_1E3280A90(0, &qword_1ECF327B0, 0x1E6995570);
  v4 = sub_1E42062A4();

  return v4;
}

uint64_t sub_1E3AE0A10()
{
  v3[3] = &unk_1F5D5D918;
  v3[4] = &off_1F5D5C938;
  LOBYTE(v3[0]) = 0;
  v0 = j__OUTLINED_FUNCTION_18();
  v1 = sub_1E39C29F0(v3, v0 & 1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1 & 1;
}

id sub_1E3AE0A7C(uint64_t a1, uint64_t a2, double a3)
{
  v7 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v8 + 440))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  v10 = (*(v9 + 232))(a2);

  v38 = [v10 isAXLargeEnabled];
  v11 = &selRef_accountConfig;
  if ((*(*a1 + 960))())
  {
    v35 = v10;
    OUTLINED_FUNCTION_26_0();
    v12 += 49;
    v13 = *v12;
    if ((*v12)())
    {
      OUTLINED_FUNCTION_30();
      v15 = COERCE_DOUBLE((*(v14 + 304))());
      v17 = v16;

      if ((v17 & 1) == 0 && !((v15 <= 0.0) | v38 & 1))
      {
        v26 = [objc_opt_self() absoluteDimension_];
        goto LABEL_18;
      }
    }

    v18 = *MEMORY[0x1E69DC5C0];
    v19 = *(MEMORY[0x1E69DC5C0] + 8);
    v20 = *(MEMORY[0x1E69DC5C0] + 16);
    v21 = *(MEMORY[0x1E69DC5C0] + 24);
    if (a2)
    {
      swift_getObjectType();
      v22 = sub_1E40175B0();
    }

    else
    {
      v22 = 0.0;
    }

    (*((*v7 & *v3) + 0x468))(v39, a1, COERCE_DOUBLE(*&v22), a2 == 0, a2, a3, v18, v19, v20, v21);
    if (v40)
    {
      v23.n128_f64[0] = sub_1E41A300C(v41);
      v24 = v42;
    }

    else
    {
      v24 = *&v39[1];
    }

    if (v24 > 0.0)
    {
      v25 = objc_opt_self();
      if (!v38)
      {
        v26 = [v25 absoluteDimension_];
LABEL_18:
        v10 = v36;
        v11 = &selRef_accountConfig;
        goto LABEL_21;
      }

LABEL_20:
      v11 = &selRef_accountConfig;
      v26 = [v25 estimatedDimension_];
      v10 = v37;
LABEL_21:
      v31 = v26;

      if (v31)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (v13(v23))
    {
      OUTLINED_FUNCTION_30();
      *&v28 = COERCE_DOUBLE((*(v27 + 328))());
      v30 = v29;

      if ((v30 & 1) == 0)
      {
        v24 = *&v28;
        v25 = objc_opt_self();
        goto LABEL_20;
      }
    }

    v10 = v35;
    v11 = &selRef_accountConfig;
  }

LABEL_22:
  v32 = objc_opt_self();
  if ([v32 isTV])
  {
    v33 = 120.0;
  }

  else if ([v32 isMac])
  {
    v33 = 120.0;
  }

  else
  {
    v33 = 78.0;
  }

  v31 = [objc_opt_self() v11[271]];
LABEL_28:

  return v31;
}

char *sub_1E3AE0E54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327A8, &qword_1E42B8F78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 80 * v8);
  }

  return v10;
}

unint64_t sub_1E3AE0FBC()
{
  result = qword_1EE23B578;
  if (!qword_1EE23B578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3F4C0, &unk_1E42A0990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B578);
  }

  return result;
}

uint64_t sub_1E3AE10F0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[6];
  v27 = *(v1 + 8);
  v28 = v1[4];
  OUTLINED_FUNCTION_47_0();
  v6 = *(v5 + 392);
  if (!v6() || (OUTLINED_FUNCTION_30(), (*(v7 + 176))(v34), v9 = *v34, v8 = *&v34[1], v10 = *&v34[2], v11 = *&v34[3], , (v35 & 1) != 0))
  {
    v9 = *MEMORY[0x1E69DDCE0];
    v8 = *(MEMORY[0x1E69DDCE0] + 8);
    v10 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  swift_getObjectType();
  v12 = sub_1E40175B0();
  v13 = v12 - sub_1E3952BE0(v2, v28, v3, v4);
  v14 = v13 - sub_1E3952BE0(v9, v8, v10, v11);
  OUTLINED_FUNCTION_26();
  v29 = (*(v15 + 224))();
  v30 = v16 & 1;
  v33 = v27;
  v31 = v14;
  v32 = 0;
  sub_1E3793CAC(v29, v16, v17);
  clamp<A>(_:_:_:)(&v29, &v33, &v31, MEMORY[0x1E69E7DE0]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    [Strong vuiIsRTL];
  }

  if (v6())
  {
    OUTLINED_FUNCTION_30();
    v21 = (*(v20 + 456))();

    switch(v21)
    {
      case 2:
      case 4:
        break;
      default:
        goto LABEL_8;
    }
  }

  else
  {
LABEL_8:
    sub_1E40175B0();
  }

  sub_1E40175B0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v23 = OUTLINED_FUNCTION_24_3(v22);
  *(v23 + 16) = xmmword_1E4298880;
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  OUTLINED_FUNCTION_16_73();
  objc_opt_self();
  OUTLINED_FUNCTION_5_111();
  *(v23 + 32) = [v24 v25];
  return v23;
}

double OUTLINED_FUNCTION_57_14(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1E4148C68(v3, a3, v4 - 136);
  return result;
}

double OUTLINED_FUNCTION_58_18(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_1E4148C68(v3, a3, va);
  return result;
}

id OUTLINED_FUNCTION_62_13()
{

  return [v1 (v0 + 1656)];
}

uint64_t sub_1E3AE152C(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3AE1568(v1);
}

uint64_t sub_1E3AE1568(char a1)
{
  type metadata accessor for ImageLayout();
  v1[13] = sub_1E3BD61D8();
  v1[14] = 0;
  v1[15] = sub_1E3BD61D8();
  type metadata accessor for ViewGradientLayout(0);
  v1[16] = sub_1E40C3088();
  v3 = sub_1E3C2F9A0();
  if (a1)
  {
    type metadata accessor for ChannelOfferOverlayLayout();
    v4 = sub_1E3B91818(161);
    swift_beginAccess();
    *(v3 + 112) = v4;

    sub_1E3C37CBC(v4, 161);
  }

  v5 = *(**(v3 + 104) + 1808);

  v5(3);

  if (TVAppFeature.isEnabled.getter(10, v6, v7))
  {
    v8 = *(v3 + 104);

    sub_1E39537A8();
    v85 = v9;
    v86 = v10;
    v87 = v11;
    v88 = v12;
    LOBYTE(v89) = 0;
    (*(*v8 + 560))(&v85);

    sub_1E39537A8();
    v80 = v13;
    v81 = v14;
    v82 = v15;
    v83 = v16;
    LOBYTE(v84) = 0;
    (*(*v3 + 560))(&v80);
    v17 = *(v3 + 104);

    v18 = *sub_1E3E60F2C();
    v19 = *(*v17 + 1832);
    v20 = v18;
    v19(v18);

    v21 = *(v3 + 104);

    v22.n128_u64[0] = *sub_1E3E60B34();
    v75 = j__OUTLINED_FUNCTION_7_78(v22);
    v76 = v23;
    v77 = v24;
    v78 = v25;
    LOBYTE(v79) = 0;
    (*(*v21 + 1856))(&v75);
  }

  *__dst = 0x4054000000000000;
  __dst[8] = 0;
  v113 = 0x4059000000000000;
  LOBYTE(v114) = 0;
  v109 = 0x4060C00000000000;
  LOBYTE(v110) = 0;
  v105 = 0x4051000000000000;
  LOBYTE(v106) = 0;
  v101 = 0x4059000000000000;
  LOBYTE(v102) = 0;
  v26 = MEMORY[0x1E69E7DE0];
  v27 = sub_1E3C3DE00();
  BYTE8(v91) = v97;
  OUTLINED_FUNCTION_0_139(v27, v28, v29, v30, v31, v32, v33, v34, v66, v69, v72, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v96, *(&v91 + 1), v92, v93, v94, v95, v96);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  v36 = *(v35 + 1600);
  v36(__dst, 4, v37 & 1, v26);
  *__dst = 0x4038000000000000;
  __dst[8] = 0;
  v113 = 0x403E000000000000;
  LOBYTE(v114) = 0;
  v109 = 0x4046800000000000;
  LOBYTE(v110) = 0;
  v105 = 0x4038000000000000;
  LOBYTE(v106) = 0;
  v101 = 0x4041000000000000;
  LOBYTE(v102) = 0;
  v38 = sub_1E3C3DE00();
  BYTE8(v91) = v97;
  OUTLINED_FUNCTION_0_139(v38, v39, v40, v41, v42, v43, v44, v45, v67, v70, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v96, *(&v91 + 1), v92, v93, v94, v95, v96);
  memcpy(__dst, __src, 0x59uLL);
  v46 = OUTLINED_FUNCTION_18();
  v36(__dst, 8, v46 & 1, v26);
  *__dst = 0x4032000000000000;
  memset(&__dst[8], 0, 25);
  v114 = 0;
  v113 = 0;
  __asm { FMOV            V0.2D, #20.0 }

  v115 = _Q0;
  v116 = 0;
  v110 = 0;
  v109 = 0;
  v111 = xmmword_1E42B8F80;
  v112 = 0;
  v106 = 0;
  v105 = 0;
  v107 = xmmword_1E42B8860;
  v108 = 0;
  v101 = 0;
  v102 = 0;
  v103 = vdupq_n_s64(0x4040000000000000uLL);
  v104 = 0;
  type metadata accessor for UIEdgeInsets();
  v53 = v52;
  v54 = sub_1E3C3DE00();
  LOBYTE(v94) = v100;
  OUTLINED_FUNCTION_0_139(v54, v55, v56, v57, v58, v59, v60, v61, v68, v71, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184], *&__dst[192], *&__dst[200], *&__dst[208], *&__dst[216], *&__dst[224], *&__dst[232], v96, v97, v98, v99, v94, v95, v96);
  memcpy(__dst, __src, 0xE9uLL);
  v62 = OUTLINED_FUNCTION_18();
  v36(__dst, 0, v62 & 1, v53);
  (*(*v3 + 1752))(0);

  sub_1E3C37CBC(v63, 39);

  sub_1E3C37CBC(v64, 40);

  return v3;
}

uint64_t sub_1E3AE1AEC()
{
  type metadata accessor for ImageLayout();
  v0[13] = sub_1E3BD61D8();
  v0[14] = 0;
  v0[15] = sub_1E3BD61D8();
  type metadata accessor for ViewGradientLayout(0);
  v0[16] = sub_1E40C3088();

  return sub_1E3C2F9A0();
}

void sub_1E3AE1B4C(char a1)
{
  v11 = [objc_opt_self() blackColor];
  v3 = *(v1 + 128);
  OUTLINED_FUNCTION_36();
  (*(v4 + 1776))(1);
  OUTLINED_FUNCTION_36();
  v6 = *(v5 + 1728);
  if (a1)
  {
    v6(0, 0x3FF0000000000000, 0);
    OUTLINED_FUNCTION_36();
    (*(v7 + 1752))(0, 0, 0);
    v8 = &unk_1F5D6FB80;
  }

  else
  {
    v6(0x3FE8000000000000, 0x3FE8000000000000, 0);
    OUTLINED_FUNCTION_36();
    (*(v9 + 1752))(0x3FF0000000000000, 0x3FF0000000000000, 0);
    v8 = &unk_1F5D6FBB8;
  }

  (*(*v3 + 1824))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E42A73A0;
  *(v10 + 32) = [v11 colorWithAlphaComponent_];
  *(v10 + 40) = [v11 colorWithAlphaComponent_];
  *(v10 + 48) = [v11 colorWithAlphaComponent_];
  (*(*v3 + 1800))(v10);
}

void sub_1E3AE1DF8(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const void *a6@<X5>, void *a7@<X8>)
{
  v121 = a7;
  v122 = a4;
  v117 = *(a3 + 4);
  v119 = *(a3 + 3);
  type metadata accessor for EmptyResultsViewLayout();
  v12 = sub_1E3FFF238();
  sub_1E3A57880(__src);
  memcpy(__dst, __src, 0xC3uLL);

  sub_1E3294EE4(a6, &v172, &qword_1ECF28C28, &qword_1E4298330);
  sub_1E325F6F0(__dst, &qword_1ECF28C28, &qword_1E4298330);
  memcpy(v179, a6, sizeof(v179));
  v135 = [objc_opt_self() sharedInstance];
  v13 = sub_1E38F8C98();
  v134 = a1;
  v14 = *v13 == a1 && *(v13 + 1) == a2;
  if (v14 || (sub_1E42079A4()) && (v15 = [objc_opt_self() standardUserDefaults], v16 = sub_1E4205ED4(), v17 = objc_msgSend(v15, sel_stringForKey_, v16), v15, v16, v17) && (v18 = sub_1E4205F14(), v20 = v19, v17, v20))
  {
    v171[3] = MEMORY[0x1E69E6158];
    v171[1] = v20;
    v29 = OUTLINED_FUNCTION_8_80(v21, v22, v23, v24, v25, v26, v27, v28, v117, v119, v121, v122, v125, v127, v130, v134, v135, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v18);
    sub_1E329504C(v29, v30);
    v31 = v135;
  }

  else
  {
    memset(v171, 0, 32);
    *(&v173 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
    v31 = v135;
    if (v135)
    {
      *&v172 = sub_1E3741090(0xD000000000000015, 0x80000001E4270AC0, v135);
      *(&v172 + 1) = v32;
      if (v171[3])
      {
        sub_1E325F6F0(v171, &unk_1ECF296E0, &unk_1E4298030);
      }
    }

    else
    {
      v172 = 0uLL;
    }
  }

  v131 = a5;
  type metadata accessor for TextViewModel();

  v126 = v12;
  v128 = OUTLINED_FUNCTION_13_87(23, &v172);
  if (v128)
  {
    v33 = *(*v12 + 1704);

    v35 = v33(v34);
    v36 = sub_1E3AE3818(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v38 = v36[2];
    v37 = v36[3];
    if (v38 >= v37 >> 1)
    {
      v36 = sub_1E3AE3818((v37 > 1), v38 + 1, 1, v36);
    }

    v36[2] = v38 + 1;
    v39 = &v36[2 * v38];
    v39[4] = v128;
    v39[5] = v35;
    v31 = v135;
    if (v135)
    {
      goto LABEL_18;
    }

LABEL_21:
    v44 = 0;
    goto LABEL_23;
  }

  v36 = MEMORY[0x1E69E7CC0];
  if (!v31)
  {
    goto LABEL_21;
  }

LABEL_18:
  sub_1E3741090(0xD000000000000017, 0x80000001E4270AA0, v31);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1E4297BE0;
    *(v41 + 56) = MEMORY[0x1E69E6158];
    *(v41 + 64) = sub_1E3283528(v41, v42, v43);
    *(v41 + 32) = v134;
    *(v41 + 40) = a2;

    v44 = sub_1E4205F44();
    v31 = v45;
  }

  else
  {
    v44 = 0;
    v31 = 0;
  }

LABEL_23:
  v46 = v131;
  if (!v131 || (memcpy(v181, a6, 0xC3uLL), sub_1E3748B78(v181) == 1))
  {

    v47 = [objc_opt_self() isSearchEnabled];
    v48 = MEMORY[0x1E69E6158];
    if (!v47)
    {
LABEL_37:
      if (!v31)
      {
        goto LABEL_46;
      }

      v63 = v31;
LABEL_39:
      *(&v173 + 1) = v48;
      *&v172 = v44;
      *(&v172 + 1) = v63;
      v72 = OUTLINED_FUNCTION_13_87(15, &v172);
      if (v72)
      {
        v73 = *(*v126 + 1728);

        v75 = v73(v74);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_1E3AE3818(0, v36[2] + 1, 1, v36);
        }

        v77 = v36[2];
        v76 = v36[3];
        if (v77 >= v76 >> 1)
        {
          v36 = sub_1E3AE3818((v76 > 1), v77 + 1, 1, v36);
        }

        v36[2] = v77 + 1;
        v78 = &v36[2 * v77];
        v78[4] = v72;
        v78[5] = v75;
      }

      v46 = v131;
LABEL_46:
      if ([objc_opt_self() isSearchEnabled])
      {
        v79 = *(a3 + 3);
        if (!v79)
        {
          sub_1E325F6F0(a6, &qword_1ECF28C28, &qword_1E4298330);

LABEL_66:

          goto LABEL_67;
        }

        v80 = *(a3 + 2);
        v81 = *(a3 + 4);
        if (v46)
        {
          sub_1E325F6F0(a6, &qword_1ECF28C28, &qword_1E4298330);

          v180[0] = v80;
          v180[1] = v79;
          sub_1E3782C70(v180);
          v184 = v81;
          v82 = &v184;
LABEL_64:
          sub_1E325F6F0(v82, &unk_1ECF2EB10, &qword_1E42B9000);

LABEL_65:

          goto LABEL_66;
        }

        memcpy(v180, a6, 0xC3uLL);
        if (sub_1E3748B78(v180) != 1)
        {
          sub_1E325F6F0(a6, &qword_1ECF28C28, &qword_1E4298330);
          OUTLINED_FUNCTION_6_95();
          v185 = v81;
          v82 = &v185;
          goto LABEL_64;
        }

        v185 = v81;
        if (v81)
        {
          v86 = sub_1E3EA3A8C();
          v87 = *v86;
          v88 = v86[1];

          sub_1E3277E60(v87, v88, v81, &v172);
          OUTLINED_FUNCTION_6_95();
          sub_1E325F6F0(&v185, &unk_1ECF2EB10, &qword_1E42B9000);

          if (*(&v173 + 1))
          {
            v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
            OUTLINED_FUNCTION_8_80(v89, v90, v91, v92, v93, v94, v95, v96, v117, v119, v121, v122, v126, v128, v131, v134, v135, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171[0]);
            if (swift_dynamicCast())
            {
              v97 = v171[0];
              v98 = sub_1E3EA3A98();
              v99 = *v98;
              v100 = v98[1];

              sub_1E3277E60(v99, v100, v97, &v172);

              if (*(&v173 + 1))
              {
                OUTLINED_FUNCTION_8_80(v101, v102, v103, v104, v105, v106, v107, v108, v118, v120, v121, v123, v126, v129, v132, v134, v136, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171[0]);
                v46 = v133;
                if (swift_dynamicCast())
                {
                  v109 = v171[0];
                  type metadata accessor for ViewModel();

                  v110 = sub_1E39BED80(90, v109, v124);
                  if (v110)
                  {

                    if (sub_1E3D76A14(v111, 0))
                    {
                      type metadata accessor for AttributionTextViewLayout();
                      v112 = swift_dynamicCastClass();
                      if (v112)
                      {
                        v113 = v112;
                        v114 = (*(*v126 + 1728))();
                        v115 = (*(*v114 + 1688))(v114);

                        v116 = v115;
                        v46 = v133;
                        (*(*v113 + 1720))(v116);

LABEL_69:
                        v171[0] = v134;
                        v171[1] = a2;
                        v171[2] = 0;
                        v171[3] = v110;
                        v171[4] = v113;
                        v171[5] = v126;
                        v171[6] = v36;
                        v171[7] = v46;
                        memcpy(&v171[8], v179, 0xC3uLL);
                        *&v172 = v134;
                        *(&v172 + 1) = a2;
                        *&v173 = 0;
                        *(&v173 + 1) = v110;
                        v174 = v113;
                        v175 = v126;
                        v176 = v36;
                        v177 = v46;
                        memcpy(v178, v179, sizeof(v178));
                        sub_1E3900318(v171, &v138);
                        sub_1E3900374(&v172);
                        memcpy(v121, v171, 0x103uLL);
                        return;
                      }
                    }

                    else
                    {
                    }
                  }

                  else
                  {
                  }

LABEL_68:
                  v113 = 0;
                  goto LABEL_69;
                }

                goto LABEL_65;
              }

              sub_1E325F6F0(&v172, &unk_1ECF296E0, &unk_1E4298030);
            }

            else
            {
            }

            v110 = 0;
            v113 = 0;
            v46 = v132;
            goto LABEL_69;
          }

          v46 = v131;
        }

        else
        {

          OUTLINED_FUNCTION_6_95();
          v172 = 0u;
          v173 = 0u;
        }

        v83 = &unk_1ECF296E0;
        v84 = &unk_1E4298030;
        v85 = &v172;
      }

      else
      {
        sub_1E325F6F0(a6, &qword_1ECF28C28, &qword_1E4298330);

        v83 = &qword_1ECF327B8;
        v84 = &qword_1E42B8FF8;
        v85 = a3;
      }

      sub_1E325F6F0(v85, v83, v84);
LABEL_67:

      v110 = 0;
      goto LABEL_68;
    }

    v49 = *(a3 + 3);
    if (v49 && (v50 = *(a3 + 2), v182 = *(a3 + 4), v183[0] = v50, v183[1] = v49, , , sub_1E3782C70(v183), (v51 = v182) != 0))
    {
      v52 = sub_1E3EA3A74();
      v53 = *v52;
      v54 = v52[1];

      v55 = v53;
      v48 = MEMORY[0x1E69E6158];
      sub_1E3277E60(v55, v54, v51, &v172);
      sub_1E325F6F0(&v182, &unk_1ECF2EB10, &qword_1E42B9000);

      if (*(&v173 + 1))
      {
        OUTLINED_FUNCTION_8_80(v56, v57, v58, MEMORY[0x1E69E6158], v59, v60, v61, v62, v117, v119, v121, v122, v126, v128, v131, v134, v135, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171[0]);
        if (swift_dynamicCast())
        {
          v63 = v171[1];
          v44 = v171[0];
LABEL_33:

          goto LABEL_39;
        }

        goto LABEL_36;
      }
    }

    else
    {
      v172 = 0u;
      v173 = 0u;
    }

    sub_1E325F6F0(&v172, &unk_1ECF296E0, &unk_1E4298030);
LABEL_36:
    v46 = v131;
    goto LABEL_37;
  }

  v64 = [objc_allocWithZone(VUILocalizationManager) init];
  sub_1E3741090(0xD00000000000001ELL, 0x80000001E4270A80, v64);
  v66 = v65;

  if (v66)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1E4297BE0;
    v68 = MEMORY[0x1E69E6158];
    *(v67 + 56) = MEMORY[0x1E69E6158];
    *(v67 + 64) = sub_1E3283528(v67, v69, v70);
    *(v67 + 32) = v134;
    *(v67 + 40) = a2;
    v48 = v68;
    v44 = sub_1E4205F44();
    v63 = v71;

    goto LABEL_33;
  }

  __break(1u);
}

void *sub_1E3AE2ABC@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327C0, &qword_1E42B9008);
  return sub_1E3AE2B10(v2, a2 + *(v4 + 44));
}

void *sub_1E3AE2B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327F0, &qword_1E42B9240);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &__src[-v6];
  *v7 = sub_1E4201D44();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF327F8, &qword_1E42B9248);
  v9 = sub_1E3AE2CF8(a1, &v7[*(v8 + 44)]);
  (*(**(a1 + 40) + 304))(v9);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_14_8();
  sub_1E42015C4();
  sub_1E329E454(v7, a2, &qword_1ECF327F0, &qword_1E42B9240);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32800, &qword_1E42B9250);
  return memcpy((a2 + *(v10 + 36)), __src, 0x70uLL);
}

uint64_t sub_1E3AE2CF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32808, &qword_1E42B9258);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v79 = (&v70 - v5);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32810, &qword_1E42B9260);
  OUTLINED_FUNCTION_0_10();
  v77 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v78 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32818, &unk_1E42B9268);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v85 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v17 = type metadata accessor for StackedTextViews(0);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v84 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v87 = &v70 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v70 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32820, &qword_1E42B9278);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v81 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  v88 = &v70 - v32;
  v33 = a1[7];
  v106 = v33;
  v82 = v16;
  if (v33 && (memcpy(v105, a1 + 8, 0xC3uLL), memcpy(v108, a1 + 8, 0xC3uLL), sub_1E3748B78(v108) != 1))
  {
    memcpy(v107, v108, 0xC3uLL);
    sub_1E3294EE4(&v106, v89, &qword_1ECF2BB28, &qword_1E42A2A60);
    sub_1E3294EE4(v105, v89, &qword_1ECF28C28, &qword_1E4298330);
    sub_1E40EA03C(v33, v107, 0, 0, v27);
    sub_1E325F6F0(&v106, &qword_1ECF2BB28, &qword_1E42A2A60);
    sub_1E325F6F0(v105, &qword_1ECF28C28, &qword_1E4298330);
    (*(v24 + 32))(v88, v27, v22);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  __swift_storeEnumTagSinglePayload(v88, v34, 1, v22);
  v35 = a1[6];

  v36 = sub_1E4201D44();
  sub_1E403E8B0(v35, v36, v87);
  v37 = a1[3];
  if (v37)
  {

    sub_1E4203DA4();
    sub_1E4200D94();
    v74 = v98;
    v75 = v96;
    v72 = v101;
    v73 = v100;
    v95 = 1;
    v94 = v97;
    v93 = v99;
    v38 = a1[4];
    v76 = a2;
    if (v38)
    {
      _Q0 = *(v38 + 128);
      v71 = *(v38 + 144);
    }

    else
    {
      v71 = xmmword_1E429C0F0;
      __asm { FMOV            V0.2D, #2.0 }
    }

    v70 = _Q0;

    v45 = sub_1E4202734();
    v91 = 0;
    sub_1E4203DA4();
    OUTLINED_FUNCTION_14_8();
    sub_1E4200D94();
    *&v92[39] = v104;
    *&v92[23] = v103;
    *&v92[7] = v102;
    v90[0] = v37;
    v90[1] = v38;
    LOBYTE(v90[2]) = v45;
    *&v90[5] = v71;
    *&v90[3] = v70;
    LOBYTE(v90[7]) = 0;
    *(&v90[7] + 1) = *v92;
    *(&v90[9] + 1) = *&v92[16];
    *(&v90[11] + 1) = *&v92[32];
    v90[13] = *(&v104 + 1);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32830, &qword_1E42B9288);
    v47 = sub_1E3AE3BE0();
    v48 = j__OUTLINED_FUNCTION_18();
    v49 = j__OUTLINED_FUNCTION_18();
    v50 = OUTLINED_FUNCTION_51_1();
    v51 = v86;
    sub_1E383F6D4(0, v48 & 1, 1, v49 & 1, v50 & 1, v46, v47);
    memcpy(v89, v90, 0x70uLL);
    sub_1E325F6F0(v89, &qword_1ECF32830, &qword_1E42B9288);
    v52 = v95;
    LOBYTE(v46) = v94;
    v53 = v93;
    v54 = v77;
    v55 = *(v77 + 16);
    *&v71 = v37;
    v56 = v78;
    v57 = v80;
    v55(v78, v51, v80);
    v58 = v79;
    *v79 = 0;
    *(v58 + 8) = v52;
    v59 = v74;
    *(v58 + 16) = v75;
    *(v58 + 24) = v46;
    *(v58 + 32) = v59;
    *(v58 + 40) = v53;
    v60 = v72;
    *(v58 + 48) = v73;
    *(v58 + 56) = v60;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32850, &unk_1E42B9298);
    v55((v58 + *(v61 + 48)), v56, v57);

    v62 = *(v54 + 8);
    v62(v86, v57);
    v62(v56, v57);
    v40 = v82;
    sub_1E329E454(v58, v82, &qword_1ECF32808, &qword_1E42B9258);
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v83);
    a2 = v76;
  }

  else
  {
    v40 = v82;
    __swift_storeEnumTagSinglePayload(v82, 1, 1, v83);
  }

  v63 = v81;
  sub_1E3294EE4(v88, v81, &qword_1ECF32820, &qword_1E42B9278);
  v64 = v87;
  v65 = v84;
  sub_1E38F84AC(v87, v84);
  v66 = v85;
  sub_1E3294EE4(v40, v85, &qword_1ECF32818, &unk_1E42B9268);
  sub_1E3294EE4(v63, a2, &qword_1ECF32820, &qword_1E42B9278);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32828, &qword_1E42B9280);
  OUTLINED_FUNCTION_11_82(v67[12]);
  sub_1E38F84AC(v65, a2 + *(v68 + 64));
  sub_1E3294EE4(v66, a2 + v67[20], &qword_1ECF32818, &unk_1E42B9268);
  OUTLINED_FUNCTION_11_82(v67[24]);
  sub_1E325F6F0(v40, &qword_1ECF32818, &unk_1E42B9268);
  sub_1E38F8510(v64);
  sub_1E325F6F0(v88, &qword_1ECF32820, &qword_1E42B9278);
  sub_1E325F6F0(v66, &qword_1ECF32818, &unk_1E42B9268);
  sub_1E38F8510(v65);
  return sub_1E325F6F0(v63, &qword_1ECF32820, &qword_1E42B9278);
}

void *sub_1E3AE3500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AttributionTextViewUIKit();
  v5 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xD0))(a2, a3);
  LODWORD(v6) = 1148846080;
  [v5 setContentHuggingPriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v7];
  return v5;
}

uint64_t sub_1E3AE3628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3AE3B8C(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E3AE3674()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3AE3B8C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

uint64_t sub_1E3AE3748()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3AE398C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3AE379C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3AE398C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3AE37F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3AE398C(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

void *sub_1E3AE3818(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32858, &qword_1E42B92A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32860, &unk_1E42B92B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E3AE3964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3AE398C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3AE398C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF327C8;
  if (!qword_1ECF327C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF327C8);
  }

  return result;
}

unint64_t sub_1E3AE39E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF327D0;
  if (!qword_1ECF327D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF327D0);
  }

  return result;
}

uint64_t sub_1E3AE3A40(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 259))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1E3AE3A80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 258) = 0;
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 259) = 1;
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

    *(result + 259) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3AE3B28()
{
  result = qword_1ECF327D8;
  if (!qword_1ECF327D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF327E0, &qword_1E42B9238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF327D8);
  }

  return result;
}

unint64_t sub_1E3AE3B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF327E8;
  if (!qword_1ECF327E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF327E8);
  }

  return result;
}

unint64_t sub_1E3AE3BE0()
{
  result = qword_1ECF32838;
  if (!qword_1ECF32838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32830, &qword_1E42B9288);
    sub_1E3AE3C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32838);
  }

  return result;
}

unint64_t sub_1E3AE3C6C()
{
  result = qword_1ECF32840;
  if (!qword_1ECF32840)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32848, &qword_1E42B9290);
    sub_1E3AE39E4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32840);
  }

  return result;
}

uint64_t sub_1E3AE3D18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4201A54();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3AE3D48@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for PlaybackPersonView(0);
  v7 = *(v6 + 28);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v8 = a3 + *(v6 + 32);
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  *a3 = a1;
  memcpy(a3 + 1, a2, 0xC3uLL);
  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 392);

  v12 = v10(v11);

  if (!v12)
  {
    goto LABEL_4;
  }

  if (*v12 != _TtC8VideosUI24PlaybackPersonViewLayout)
  {

LABEL_4:
    type metadata accessor for PlaybackPersonViewLayout(0);
    sub_1E3915434(1, 204);
  }

  type metadata accessor for PlaybackPersonViewLayout(0);
  OUTLINED_FUNCTION_12_77();
  sub_1E3AEBB84(v13, v14, &unk_1E42AABA8);
  result = sub_1E42010C4();
  a3[26] = result;
  a3[27] = v16;
  return result;
}

void sub_1E3AE3EDC()
{
  OUTLINED_FUNCTION_31_1();
  v31 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v30 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v29 = v7 - v6;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v27 = v9;
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v26 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32868, &qword_1E42B9328);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32870, &qword_1E42B9330);
  OUTLINED_FUNCTION_0_10();
  v24 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_74_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32878, &qword_1E42B9338);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  sub_1E3AE43C4();
  v19 = *sub_1E37BD068();
  v20 = (*(v19 + 1712))();

  if (v20 == 13)
  {
    v21 = sub_1E42012F4();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v21);
  }

  else
  {
    sub_1E3B033CC(v20, v1);
  }

  sub_1E3B03114(v1, v2);
  sub_1E325F6F0(v1, &qword_1ECF2A250, " B\r");
  sub_1E3AE4D2C();
  sub_1E32752B0(&qword_1EE23ACD8, &qword_1ECF2A1F8, &qword_1E429E7F0, MEMORY[0x1E69E6ED8]);
  sub_1E4202FA4();
  sub_1E325F6F0(v2, &qword_1ECF2A1F8, &qword_1E429E7F0);
  sub_1E325F6F0(v3, &qword_1ECF32868, &qword_1E42B9328);
  sub_1E4202474();
  swift_getOpaqueTypeConformance2();
  sub_1E4203224();
  (*(v27 + 8))(v26, v28);
  (*(v24 + 8))(v0, v25);
  sub_1E4201C94();
  swift_getOpaqueTypeConformance2();
  sub_1E4203294();
  (*(v30 + 8))(v29, v31);
  v22 = OUTLINED_FUNCTION_8_6();
  v23(v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AE43C4()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v0;
  v106 = v5;
  sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v91 = v7;
  v92 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v89 = v9 - v8;
  v105 = type metadata accessor for PlaybackPersonListView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF329B8, &qword_1E42B93E8);
  OUTLINED_FUNCTION_17_2(v14);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  v88 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF329A0, &qword_1E42B93E0));
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_2();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32998, &qword_1E42B93D8);
  OUTLINED_FUNCTION_0_10();
  v90 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AF0, &qword_1E42B95E0);
  OUTLINED_FUNCTION_0_10();
  v95 = v22;
  v96 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  v94 = v24;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32988, &qword_1E42B93D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v93 = v26;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32980, &qword_1E42B93C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v97 = v28;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AF8, &qword_1E42B95E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v104 = v30;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B00, &qword_1E42B95F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_26_2();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32890, &qword_1E42B9340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v98 = v33;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328A0, &qword_1E42B9348);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v85 - v35;
  v37 = v4[27];
  v38 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType;
  OUTLINED_FUNCTION_5_0(v37 + OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType, &v113);
  if (!*(v37 + v38))
  {
    sub_1E3AE5A68();
    sub_1E3743538(v36, v1, &qword_1ECF328A0, &qword_1E42B9348);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE4E44();
    sub_1E3AE56B0();
    OUTLINED_FUNCTION_68_14();
    sub_1E4201F44();
    sub_1E3743538(v37, v104, &qword_1ECF32890, &qword_1E42B9340);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE4DB8();
    sub_1E3AE59D8();
    sub_1E4201F44();
    v50 = OUTLINED_FUNCTION_134_0();
    sub_1E325F6F0(v50, v51, &qword_1E42B9340);
    v52 = v36;
    v53 = &qword_1ECF328A0;
    v54 = &qword_1E42B9348;
LABEL_11:
    sub_1E325F6F0(v52, v53, v54);
    goto LABEL_12;
  }

  if (*(v37 + v38) == 1)
  {
    *v2 = sub_1E4201B84();
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B08, &qword_1E42B95F8);
    sub_1E3AE6C1C(v4, v39, v40, v41, v42, v43, v44, v45, v85, v86, v87, *&v88, v89, v90, v91, v92, v93, v94, v95, v96);
    (*(*v37 + 176))(&v107);
    if (v111)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v48.n128_u64[0] = v109;
      v49.n128_u64[0] = v110;
      v46.n128_u64[0] = v107;
      v47.n128_u64[0] = v108;
      j_nullsub_1(v46, v47, v48, v49);
    }

    OUTLINED_FUNCTION_3();
    v61 = v86;
    sub_1E4202734();
    sub_1E3741EA0(v2, v3, &qword_1ECF329B8, &qword_1E42B93E8);
    v62 = v88;
    OUTLINED_FUNCTION_7_3(v3 + *(*&v88 + 36));
    v63 = sub_1E3AE5920();
    v64 = OUTLINED_FUNCTION_99_0();
    sub_1E3883AF4(v64, v65, v63);
    sub_1E325F6F0(v3, &qword_1ECF329A0, &qword_1E42B93E0);
    v66 = sub_1E3AE7790();
    v112[0] = v62;
    *&v112[1] = v63;
    OUTLINED_FUNCTION_11_83();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = v94;
    sub_1E39B87A4(v66, v61, OpaqueTypeConformance2);

    v69 = (*(v90 + 8))(v20, v61);
    (*(*v37 + 552))(v112, v69);
    v70 = 0.0;
    if ((LOBYTE(v112[4]) & 1) == 0)
    {
      v70 = sub_1E3952BE8(v112[0], v112[1], v112[2], v112[3]);
    }

    v71 = v93;
    v72 = (v93 + *(v87 + 36));
    v73 = *(sub_1E4201534() + 20);
    v74 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v75 + 104))(v72 + v73, v74);
    *v72 = v70;
    v72[1] = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0);
    OUTLINED_FUNCTION_81_8();
    *(v72 + v76) = v77;
    (*(v95 + 32))(v71, v68, v96);
    v78 = v97;
    sub_1E3AE7860(v37);
    sub_1E325F6F0(v71, &qword_1ECF32988, &qword_1E42B93D0);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v79, v80, v81, v82);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE4E44();
    sub_1E3AE56B0();
    OUTLINED_FUNCTION_68_14();
    sub_1E4201F44();
    sub_1E3743538(v37, v104, &qword_1ECF32890, &qword_1E42B9340);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE4DB8();
    sub_1E3AE59D8();
    sub_1E4201F44();
    v83 = OUTLINED_FUNCTION_134_0();
    sub_1E325F6F0(v83, v84, &qword_1E42B9340);
    v52 = v78;
    v53 = &qword_1ECF32980;
    v54 = &qword_1E42B93C8;
    goto LABEL_11;
  }

  v55 = *v4;
  memcpy(v112, v4 + 1, 0xC3uLL);
  v56 = *(v105 + 28);
  *(v13 + v56) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *v13 = v55;
  memcpy(v13 + 1, v112, 0xC3uLL);
  type metadata accessor for ContextMenuModel(0);
  swift_retain_n();
  sub_1E375C1CC(v112, &v107);
  v57 = sub_1E3E6CDBC();
  v59 = *v57;
  v58 = v57[1];
  v107 = v59;
  v108 = v58;

  v60 = v89;
  sub_1E4207414();
  (*(v91 + 104))(v60, *MEMORY[0x1E697E660], v92);
  v13[26] = sub_1E4188148(v55, v60);
  sub_1E3AEBEE4(v13, v104, type metadata accessor for PlaybackPersonListView);
  swift_storeEnumTagMultiPayload();
  sub_1E3AE4DB8();
  sub_1E3AE59D8();
  sub_1E4201F44();
  sub_1E3AEBBCC(v13, type metadata accessor for PlaybackPersonListView);
LABEL_12:
  OUTLINED_FUNCTION_10_3();
}

unint64_t sub_1E3AE4D2C()
{
  result = qword_1ECF32880;
  if (!qword_1ECF32880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32868, &qword_1E42B9328);
    sub_1E3AE4DB8();
    sub_1E3AE59D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32880);
  }

  return result;
}

unint64_t sub_1E3AE4DB8()
{
  result = qword_1ECF32888;
  if (!qword_1ECF32888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32890, &qword_1E42B9340);
    sub_1E3AE4E44();
    sub_1E3AE56B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32888);
  }

  return result;
}

unint64_t sub_1E3AE4E44()
{
  result = qword_1ECF32898;
  if (!qword_1ECF32898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328A0, &qword_1E42B9348);
    sub_1E3AE4EC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32898);
  }

  return result;
}

unint64_t sub_1E3AE4EC8()
{
  result = qword_1ECF328A8;
  if (!qword_1ECF328A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328B0, &qword_1E42B9350);
    sub_1E3AE4F54();
    sub_1E3AE54C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF328A8);
  }

  return result;
}

unint64_t sub_1E3AE4F54()
{
  result = qword_1ECF328B8;
  if (!qword_1ECF328B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328C0, &qword_1E42B9358);
    sub_1E3AE500C();
    sub_1E32752B0(&qword_1ECF32930, &qword_1ECF32938, &qword_1E42B93A0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF328B8);
  }

  return result;
}

unint64_t sub_1E3AE500C()
{
  result = qword_1ECF328C8;
  if (!qword_1ECF328C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328D0, &qword_1E42B9360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328D8, &qword_1E42B9368);
    sub_1E3AE510C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328F0, &qword_1E42B9370);
    sub_1E3AE5198();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF328C8);
  }

  return result;
}

unint64_t sub_1E3AE510C()
{
  result = qword_1ECF328E0;
  if (!qword_1ECF328E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328D8, &qword_1E42B9368);
    sub_1E3AE5198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF328E0);
  }

  return result;
}

unint64_t sub_1E3AE5198()
{
  result = qword_1ECF328E8;
  if (!qword_1ECF328E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328F0, &qword_1E42B9370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328F8, &qword_1E42B9378);
    sub_1E4201534();
    sub_1E3AE52D0();
    sub_1E3AEBB84(&qword_1EE2893F8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF328E8);
  }

  return result;
}

unint64_t sub_1E3AE52D0()
{
  result = qword_1ECF32900;
  if (!qword_1ECF32900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF328F8, &qword_1E42B9378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32908, &qword_1E42B9380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32910, &qword_1E42B9388);
    sub_1E3AE5408();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0, &unk_1E42AC0E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32900);
  }

  return result;
}

unint64_t sub_1E3AE5408()
{
  result = qword_1ECF32918;
  if (!qword_1ECF32918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32910, &qword_1E42B9388);
    sub_1E32752B0(&qword_1ECF32920, &qword_1ECF32928, &unk_1E42B9390, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32918);
  }

  return result;
}

unint64_t sub_1E3AE54C0()
{
  result = qword_1ECF32940;
  if (!qword_1ECF32940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32948, &qword_1E42B93A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32950, &qword_1E42B93B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32958, &qword_1E42B93B8);
    sub_1E3AE55F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0, &unk_1E42AC0E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32940);
  }

  return result;
}

unint64_t sub_1E3AE55F8()
{
  result = qword_1ECF32960;
  if (!qword_1ECF32960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32958, &qword_1E42B93B8);
    sub_1E32752B0(&qword_1ECF32968, &qword_1ECF32970, &qword_1E42B93C0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32960);
  }

  return result;
}

unint64_t sub_1E3AE56B0()
{
  result = qword_1ECF32978;
  if (!qword_1ECF32978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32980, &qword_1E42B93C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32988, &qword_1E42B93D0);
    sub_1E4201534();
    sub_1E3AE57E8();
    sub_1E3AEBB84(&qword_1EE2893F8, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32978);
  }

  return result;
}

unint64_t sub_1E3AE57E8()
{
  result = qword_1ECF32990;
  if (!qword_1ECF32990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32988, &qword_1E42B93D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32998, &qword_1E42B93D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF329A0, &qword_1E42B93E0);
    sub_1E3AE5920();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0, &unk_1E42AC0E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32990);
  }

  return result;
}

unint64_t sub_1E3AE5920()
{
  result = qword_1ECF329A8;
  if (!qword_1ECF329A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF329A0, &qword_1E42B93E0);
    sub_1E32752B0(&qword_1ECF329B0, &qword_1ECF329B8, &qword_1E42B93E8, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF329A8);
  }

  return result;
}

unint64_t sub_1E3AE59D8()
{
  result = qword_1ECF559E0[0];
  if (!qword_1ECF559E0[0])
  {
    type metadata accessor for PlaybackPersonListView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF559E0);
  }

  return result;
}

void sub_1E3AE5A68()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32948, &qword_1E42B93A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32938, &qword_1E42B93A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v85 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B10, &qword_1E42B9600);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v90 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B18, &qword_1E42B9608);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328C0, &qword_1E42B9358);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v89 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328D8, &qword_1E42B9368);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_74_1();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B20, &qword_1E42B9610);
  OUTLINED_FUNCTION_0_10();
  v84 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v83 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B28, &qword_1E42B9618);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v87 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328F0, &qword_1E42B9370);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_31_2();
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B30, &qword_1E42B9620);
  OUTLINED_FUNCTION_0_10();
  v82 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328D0, &qword_1E42B9360);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v25 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  v31 = (v30 - v29);
  type metadata accessor for PlaybackPersonView(0);
  sub_1E3746E10(v31);
  v32 = sub_1E42012B4();
  v33 = (*(v27 + 8))(v31, v25);
  v34 = *(v4 + 216);
  if (v32)
  {
    OUTLINED_FUNCTION_5_0((v34 + 72), &v91);
    if (sub_1E373F6E0(v34[72], 194, v35, v36, v37, v38) & 1) != 0 || (sub_1E373F6E0(v34[72], 215, v39, v40, v41, v42))
    {
      *v85 = sub_1E4201D44();
      *(v85 + 8) = 0;
      *(v85 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B38, &qword_1E42B9628);
      sub_1E3AE84F0();
      OUTLINED_FUNCTION_12_12();
      sub_1E3743538(v43, v44, v45, v46);
      swift_storeEnumTagMultiPayload();
      sub_1E3AE500C();
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_21_1();
      sub_1E32752B0(v47, v48, v49, v50);
      sub_1E4201F44();
      sub_1E3743538(v89, v90, &qword_1ECF328C0, &qword_1E42B9358);
      swift_storeEnumTagMultiPayload();
      sub_1E3AE4F54();
      sub_1E3AE54C0();
      sub_1E4201F44();
      sub_1E325F6F0(v89, &qword_1ECF328C0, &qword_1E42B9358);
    }

    else
    {
      sub_1E3AE67E0();
      OUTLINED_FUNCTION_12_12();
      sub_1E3743538(v75, v76, v77, v78);
      swift_storeEnumTagMultiPayload();
      sub_1E3AE4F54();
      sub_1E3AE54C0();
      sub_1E4201F44();
    }
  }

  else
  {
    v51 = (*(*v34 + 432))(v33);
    if (v52)
    {
      sub_1E3AE63D4();
      v53 = sub_1E3AE5198();
      OUTLINED_FUNCTION_142();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_142();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_142();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_142();
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_85_7();
      sub_1E383F6D4(v34, v54, v55, v56, v57, v20, v53);
      sub_1E325F6F0(v2, &qword_1ECF328F0, &qword_1E42B9370);
      v58 = OUTLINED_FUNCTION_53();
      v59(v58);
      swift_storeEnumTagMultiPayload();
      sub_1E3AE510C();
      swift_getOpaqueTypeConformance2();
      v91 = v20;
      v92 = v53;
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      (*(v82 + 8))(v1, v86);
    }

    else
    {
      v60 = v51;
      sub_1E3AE63D4();
      v61 = v0 + *(v13 + 36);
      *v61 = v60;
      *(v61 + 8) = 256;
      v62 = sub_1E3AE510C();
      OUTLINED_FUNCTION_34();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_34();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_34();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_51_1();
      OUTLINED_FUNCTION_85_7();
      sub_1E383F6D4(v34, v63, v64, v65, v66, v13, v62);
      sub_1E325F6F0(v0, &qword_1ECF328D8, &qword_1E42B9368);
      (*(v84 + 16))(v87, v83, v88);
      swift_storeEnumTagMultiPayload();
      swift_getOpaqueTypeConformance2();
      v91 = v20;
      v92 = sub_1E3AE5198();
      swift_getOpaqueTypeConformance2();
      sub_1E4201F44();
      (*(v84 + 8))(v83, v88);
    }

    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v67, v68, v69, v70);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE500C();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v71, v72, v73, v74);
    sub_1E4201F44();
    sub_1E3743538(v89, v90, &qword_1ECF328C0, &qword_1E42B9358);
    swift_storeEnumTagMultiPayload();
    sub_1E3AE4F54();
    sub_1E3AE54C0();
    sub_1E4201F44();
    sub_1E325F6F0(v89, &qword_1ECF328C0, &qword_1E42B9358);
  }

  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v79, v80, v81);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AE63D4()
{
  OUTLINED_FUNCTION_9_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32928, &unk_1E42B9390);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32910, &qword_1E42B9388);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_19_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32908, &qword_1E42B9380);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_74_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BA8, &qword_1E42B9690);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_26_2();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328F8, &qword_1E42B9378);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  v40 = sub_1E3AE7790();
  *v4 = sub_1E4201D44();
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BB0, &qword_1E42B9698);
  sub_1E3AE8020();
  v15 = *(v1 + 216);
  (*(*v15 + 176))(v41);
  if (v42)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v18.n128_u64[0] = v41[2];
    v19.n128_u64[0] = v41[3];
    v16.n128_u64[0] = v41[0];
    v17.n128_u64[0] = v41[1];
    j_nullsub_1(v16, v17, v18, v19);
  }

  OUTLINED_FUNCTION_3();
  sub_1E4202734();
  v20 = OUTLINED_FUNCTION_8_6();
  sub_1E3741EA0(v20, v21, v22, v23);
  OUTLINED_FUNCTION_7_3(v2 + *(v7 + 36));
  v24 = sub_1E3AE5408();
  v25 = OUTLINED_FUNCTION_99_0();
  sub_1E3883AF4(v25, v26, v24);
  sub_1E325F6F0(v2, &qword_1ECF32910, &qword_1E42B9388);
  v43 = *&v7;
  *&v44 = v24;
  OUTLINED_FUNCTION_11_83();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = sub_1E39B87A4(v40, v9, OpaqueTypeConformance2);
  v29 = (*(v11 + 8))(v0, v9, v28);
  (*(*v15 + 552))(&v43, v29);
  v30 = 0.0;
  if ((v47 & 1) == 0)
  {
    v30 = sub_1E3952BE8(v43, v44, v45, v46);
  }

  v31 = (v3 + *(v39 + 36));
  v32 = *(sub_1E4201534() + 20);
  v33 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v34 + 104))(v31 + v32, v33);
  *v31 = v30;
  v31[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0);
  OUTLINED_FUNCTION_81_8();
  *(v31 + v35) = v36;
  v37 = OUTLINED_FUNCTION_53();
  v38(v37);
  sub_1E3AE7C40(v15);

  sub_1E325F6F0(v3, &qword_1ECF328F8, &qword_1E42B9378);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3AE67E0()
{
  OUTLINED_FUNCTION_9_4();
  v37 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32970, &qword_1E42B93C0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32958, &qword_1E42B93B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32950, &qword_1E42B93B0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B88, &qword_1E42B9670);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_26_2();
  *v4 = sub_1E4201B84();
  *(v4 + 8) = 0x4028000000000000;
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B90, &qword_1E42B9678);
  sub_1E3AE822C();
  v17 = *(v0 + 216);
  (*(*v17 + 176))(v38);
  if (v39)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v20.n128_u64[0] = v38[2];
    v21.n128_u64[0] = v38[3];
    v18.n128_u64[0] = v38[0];
    v19.n128_u64[0] = v38[1];
    j_nullsub_1(v18, v19, v20, v21);
  }

  OUTLINED_FUNCTION_3();
  sub_1E4202734();
  sub_1E3741EA0(v4, v3, &qword_1ECF32970, &qword_1E42B93C0);
  OUTLINED_FUNCTION_7_3(v3 + *(v8 + 36));
  v22 = sub_1E3AE55F8();
  sub_1E3883AF4(v17, v8, v22);
  v23 = sub_1E325F6F0(v3, &qword_1ECF32958, &qword_1E42B93B8);
  if ((*(*v17 + 792))(v23) == 11)
  {
    v24 = (*(*v17 + 744))();
  }

  else
  {
    v24 = 0;
  }

  v40 = *&v8;
  *&v41 = v22;
  OUTLINED_FUNCTION_11_83();
  swift_getOpaqueTypeConformance2();
  v25 = OUTLINED_FUNCTION_157_0();
  sub_1E39B87A4(v25, v26, v27);

  v28 = (*(v12 + 8))(v2, v10);
  (*(*v17 + 552))(&v40, v28);
  v29 = 0.0;
  if ((v44 & 1) == 0)
  {
    v29 = sub_1E3952BE8(v40, v41, v42, v43);
  }

  v30 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32948, &qword_1E42B93A8) + 36));
  v31 = *(sub_1E4201534() + 20);
  v32 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v33 + 104))(v30 + v31, v32);
  *v30 = v29;
  v30[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0);
  OUTLINED_FUNCTION_81_8();
  *(v30 + v34) = v35;
  (*(v15 + 32))(v37, v1, v36);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3AE6C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29608, &qword_1E42B96E0);
  v30 = OUTLINED_FUNCTION_17_2(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_4_6();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v35 = type metadata accessor for StackedTextViews(0);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29648, &qword_1E42B70C0);
  v41 = OUTLINED_FUNCTION_17_2(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_226();
  sub_1E3AE6EA8();
  sub_1E3AE71A4();
  sub_1E3AE7358();
  sub_1E3743538(v20, v22, &qword_1ECF29648, &qword_1E42B70C0);
  OUTLINED_FUNCTION_27_38();
  sub_1E3AEBEE4(v39, v21, v43);
  v44 = OUTLINED_FUNCTION_134_0();
  sub_1E3743538(v44, v45, &qword_1ECF29608, &qword_1E42B96E0);
  sub_1E3743538(v22, v28, &qword_1ECF29648, &qword_1E42B70C0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BF0, &qword_1E42B96E8);
  sub_1E3AEBEE4(v21, v28 + v46[12], v26);
  v47 = v28 + v46[16];
  *v47 = 0;
  *(v47 + 8) = 0;
  sub_1E3743538(v33, v28 + v46[20], &qword_1ECF29608, &qword_1E42B96E0);
  v48 = OUTLINED_FUNCTION_157_0();
  sub_1E325F6F0(v48, v49, &qword_1E42B96E0);
  sub_1E3AEBBCC(v39, type metadata accessor for StackedTextViews);
  sub_1E325F6F0(v20, &qword_1ECF29648, &qword_1E42B70C0);
  sub_1E325F6F0(v33, &qword_1ECF29608, &qword_1E42B96E0);
  v50 = OUTLINED_FUNCTION_138_0();
  sub_1E3AEBBCC(v50, v51);
  sub_1E325F6F0(v22, &qword_1ECF29648, &qword_1E42B70C0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AE6EA8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Monogram(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  OUTLINED_FUNCTION_14_18();
  v10 = (*(v9 + 488))();
  if (v10 && (v12 = sub_1E373E010(41, v10, v11), , v12))
  {

    v14 = (*v12 + 392);
    v15 = *v14;
    v16 = (*v14)(v13);
    if (v16)
    {
      OUTLINED_FUNCTION_30();
      v18 = (*(v17 + 200))();
      v20 = v19;

      if (v20)
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v26 = v15(v16);
    if (v26)
    {
      OUTLINED_FUNCTION_8();
      v28 = (*(v27 + 304))();
      v30 = v29;

      if (v30)
      {
        v26 = 0;
      }

      else
      {
        v26 = v28;
      }
    }

    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    v46 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_51_24();
    OUTLINED_FUNCTION_71_12();
    OUTLINED_FUNCTION_6_14(v18, v26, v31, v32, v40, v41, v42, v43, v44, v45, SHIBYTE(v45), v46);
    v33 = v57;
    v34 = *(v1 + 216);
    OUTLINED_FUNCTION_5_0(v34 + 144, v55);
    if (sub_1E373F6E0(*(v34 + 144), 194, v35, v36, v37, v38))
    {
      v39 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType;
      OUTLINED_FUNCTION_5_0(v34 + OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType, &v54);
      if (sub_1E374E8E4(*(v34 + v39), 0))
      {
        v33 = 0;
      }
    }

    v47 = *&v55[24];
    *v48 = *v56;
    *&v48[9] = *&v56[9];
    v49 = v33;
    v50 = v58;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    OUTLINED_FUNCTION_65_14(v12, &v47, v8);

    sub_1E38F856C(v8, v3);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }
}

double sub_1E3AE71A4()
{
  OUTLINED_FUNCTION_8();
  v0 += 61;
  v1 = *v0;
  v2 = (*v0)();
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = sub_1E373E010(23, v2, v3);

  if (v4 && *v4 != _TtC8VideosUI13TextViewModel)
  {

LABEL_5:
    v4 = 0;
  }

  v5 = (v1)(v2);
  if (!v5)
  {
LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = sub_1E373E010(15, v5, v6);

  if (v7 && *v7 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_10;
  }

LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378, &unk_1E42E1610);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E4299720;
  *(v8 + 32) = v4;
  *(v8 + 40) = v7;

  sub_1E3AE8AE4();
  j__OUTLINED_FUNCTION_18();
  v9 = OUTLINED_FUNCTION_138_0();
  sub_1E403E654(v9, v10, v11, v12);

  return result;
}

void sub_1E3AE7358()
{
  OUTLINED_FUNCTION_9_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29240, &unk_1E429B770);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_14_18();
  v11 = (*(v10 + 488))();
  if (v11)
  {
    v13 = v11;
    v14 = sub_1E373E010(31, v11, v12);

    if (v14)
    {
      type metadata accessor for ImageViewModel();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_76();

        sub_1E3EB9BB4(v34);
        v15 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v13, v34, 0, v15 & 1, 0, 0, v0);
        sub_1E375C31C(v34);
        OUTLINED_FUNCTION_36();
        (*(v16 + 392))();
        OUTLINED_FUNCTION_76();

        OUTLINED_FUNCTION_8();
        (*(v17 + 152))(&v35);

        if (v36)
        {
          OUTLINED_FUNCTION_5_8();
        }

        else
        {
          OUTLINED_FUNCTION_13_3(v18, v19, v20, v21);
        }

        OUTLINED_FUNCTION_3();
        sub_1E4202734();

        (*(v5 + 32))(v1, v0, v3);
        OUTLINED_FUNCTION_7_3(v1 + *(v7 + 36));
        sub_1E3741EA0(v1, v2, &qword_1ECF29240, &unk_1E429B770);
        OUTLINED_FUNCTION_21_1();
        sub_1E3741EA0(v27, v28, v29, &unk_1E429B770);
        OUTLINED_FUNCTION_8_11();
        __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
        OUTLINED_FUNCTION_10_3();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_1E3AE7640@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF32A30, &unk_1E42B9520);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A40, &qword_1E42B9530);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF295C0, &unk_1E429B700);
  sub_1E3743538(a1[2], a2 + v4[16], &qword_1ECF295C0, &unk_1E429B700);
  v5 = v4[20];
  v6 = a1[3];
  memcpy(__dst, v6, 0x51uLL);
  memmove((a2 + v5), v6, 0x51uLL);
  v7 = a2 + v4[24];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v7 = v10;
  *(v7 + 8) = v8;
  v11 = v4[28];
  v12 = sub_1E4203B14();
  (*(*(v12 - 8) + 16))(a2 + v11, v9, v12);
  return sub_1E3743538(__dst, &v14, &qword_1ECF32A38, &unk_1E42BC620);
}

uint64_t sub_1E3AE7790()
{
  v1 = type metadata accessor for PlaybackPersonView(0);
  v2 = sub_1E38D5E2C(*(v0 + *(v1 + 32)), *(v0 + *(v1 + 32) + 8));
  v3 = *(v0 + 216);
  if ((v2 & 1) == 0 || (OUTLINED_FUNCTION_8(), (result = (*(v4 + 864))()) == 0))
  {
    if ((*(*v3 + 792))() == 11)
    {
      return (*(*v3 + 744))();
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3AE7860(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BD8, &qword_1E42B96C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BE0, &qword_1E42B96C8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_5();
  v7 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BE8, &unk_1E42B96D0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_3();
  v11 = sub_1E39DFFC8();
  v12 = *a1;
  if (v11)
  {
    (*(v12 + 552))(v31);
    v13 = 0.0;
    if ((v32 & 1) == 0)
    {
      v13 = sub_1E3952BE8(v31[0], v31[1], v31[2], v31[3]);
    }

    v14 = *(v7 + 20);
    v15 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v16 + 104))(v1 + v14, v15);
    *v1 = v13;
    v1[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32988, &qword_1E42B93D0);
    sub_1E3AE57E8();
    OUTLINED_FUNCTION_4_116();
    v19 = sub_1E3AEBB84(v17, v18, MEMORY[0x1E697EAD0]);
    OUTLINED_FUNCTION_44_32(v19);
    OUTLINED_FUNCTION_31_36();
    v20 = OUTLINED_FUNCTION_49_27();
    v21(v20);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_35();
    OUTLINED_FUNCTION_6_96();
    OUTLINED_FUNCTION_53();
    sub_1E4201F44();
    return (*(v4 + 8))(v2, v9);
  }

  else
  {
    (*(v12 + 792))();
    OUTLINED_FUNCTION_8();
    (*(v23 + 552))(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32988, &qword_1E42B93D0);
    v24 = sub_1E3AE57E8();
    OUTLINED_FUNCTION_37_32(v24);
    v25 = OUTLINED_FUNCTION_48_26();
    v26(v25);
    OUTLINED_FUNCTION_8_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_116();
    sub_1E3AEBB84(v27, v28, MEMORY[0x1E697EAD0]);
    OUTLINED_FUNCTION_7_35();
    OUTLINED_FUNCTION_6_96();
    OUTLINED_FUNCTION_66_16();
    v29 = OUTLINED_FUNCTION_157_0();
    return v30(v29);
  }
}

uint64_t sub_1E3AE7C40(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BB8, &qword_1E42B96A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BC0, &qword_1E42B96A8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_5();
  v7 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BC8, &qword_1E42B96B0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_3();
  v11 = sub_1E39DFFC8();
  v12 = *a1;
  if (v11)
  {
    (*(v12 + 552))(v31);
    v13 = 0.0;
    if ((v32 & 1) == 0)
    {
      v13 = sub_1E3952BE8(v31[0], v31[1], v31[2], v31[3]);
    }

    v14 = *(v7 + 20);
    v15 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v16 + 104))(v1 + v14, v15);
    *v1 = v13;
    v1[1] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328F8, &qword_1E42B9378);
    sub_1E3AE52D0();
    OUTLINED_FUNCTION_4_116();
    v19 = sub_1E3AEBB84(v17, v18, MEMORY[0x1E697EAD0]);
    OUTLINED_FUNCTION_44_32(v19);
    OUTLINED_FUNCTION_31_36();
    v20 = OUTLINED_FUNCTION_49_27();
    v21(v20);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_35();
    OUTLINED_FUNCTION_6_96();
    OUTLINED_FUNCTION_53();
    sub_1E4201F44();
    return (*(v4 + 8))(v2, v9);
  }

  else
  {
    (*(v12 + 792))();
    OUTLINED_FUNCTION_8();
    (*(v23 + 552))(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF328F8, &qword_1E42B9378);
    v24 = sub_1E3AE52D0();
    OUTLINED_FUNCTION_37_32(v24);
    v25 = OUTLINED_FUNCTION_48_26();
    v26(v25);
    OUTLINED_FUNCTION_8_6();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_116();
    sub_1E3AEBB84(v27, v28, MEMORY[0x1E697EAD0]);
    OUTLINED_FUNCTION_7_35();
    OUTLINED_FUNCTION_6_96();
    OUTLINED_FUNCTION_66_16();
    v29 = OUTLINED_FUNCTION_157_0();
    return v30(v29);
  }
}

void sub_1E3AE8020()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for StackedTextViews(0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_6();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295C8, &qword_1E42B9630);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34_1();
  OUTLINED_FUNCTION_36();
  (*(v16 + 432))();
  v18 = v17;
  sub_1E3AE6EA8();
  *(v2 + *(v14 + 44)) = (v18 & 1) == 0;
  sub_1E3AE71A4();
  sub_1E3743538(v2, v1, &qword_1ECF295C8, &qword_1E42B9630);
  OUTLINED_FUNCTION_27_38();
  sub_1E3AEBEE4(v0, v11, v19);
  *v6 = 0;
  *(v6 + 8) = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BD0, &qword_1E42B96B8);
  sub_1E3743538(v1, v6 + v20[12], &qword_1ECF295C8, &qword_1E42B9630);
  sub_1E3AEBEE4(v11, v6 + v20[16], v4);
  OUTLINED_FUNCTION_10_78(v6 + v20[20]);
  sub_1E3AEBBCC(v0, v21);
  sub_1E325F6F0(v2, &qword_1ECF295C8, &qword_1E42B9630);
  v22 = OUTLINED_FUNCTION_32_0();
  sub_1E3AEBBCC(v22, v23);
  v24 = OUTLINED_FUNCTION_48_9();
  sub_1E325F6F0(v24, v25, &qword_1E42B9630);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AE822C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v34 = v4;
  v5 = type metadata accessor for StackedTextViews(0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v33 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v32 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29648, &qword_1E42B70C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21_3();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B98, &qword_1E42B9680);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v31 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34_1();
  sub_1E3AE6EA8();
  v18 = *(v3 + 216);
  v19 = sub_1E3AEBD3C();
  OUTLINED_FUNCTION_45_1();
  v20 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_45_1();
  v21 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_45_1();
  v22 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_45_1();
  v23 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v18, v20 & 1, v21 & 1, v22 & 1, v23 & 1, v10, v19);
  sub_1E325F6F0(v1, &qword_1ECF29648, &qword_1E42B70C0);
  v24 = sub_1E3AE71A4();
  v25 = *(v14 + 16);
  v25(v31, v0, v12, v24);
  OUTLINED_FUNCTION_28_39();
  sub_1E3AEBEE4(v32, v33, v26);
  (v25)(v34, v31, v12);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32BA0, &qword_1E42B9688);
  sub_1E3AEBEE4(v33, v34 + *(v27 + 48), v20);
  OUTLINED_FUNCTION_10_78(v34 + *(v27 + 64));
  v29 = v28;
  sub_1E3AEBBCC(v32, v28);
  v30 = *(v14 + 8);
  v30(v0, v12);
  sub_1E3AEBBCC(v33, v29);
  v30(v31, v12);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AE84F0()
{
  OUTLINED_FUNCTION_9_4();
  v9 = v8;
  v67 = v10;
  v11 = type metadata accessor for StackedTextViews(0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v68 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v66 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295C8, &qword_1E42B9630) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8_4();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B40, &qword_1E42B9638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_26_2();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B48, &qword_1E42B9640);
  OUTLINED_FUNCTION_0_10();
  v63 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_44();
  v69 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B50, &qword_1E42B9648);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_21_3();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B58, &unk_1E42B9650);
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_5();
  v65 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_34_1();
  sub_1E3AE6EA8();
  *(v1 + *(v16 + 44)) = 256;
  v31 = *(v9 + 216);
  (*(*v31 + 176))(v70);
  if (v71)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v34.n128_u64[0] = v70[2];
    v35.n128_u64[0] = v70[3];
    v32.n128_u64[0] = v70[0];
    v33.n128_u64[0] = v70[1];
    j_nullsub_1(v32, v33, v34, v35);
  }

  OUTLINED_FUNCTION_3();
  v36 = sub_1E4202734();
  v37 = OUTLINED_FUNCTION_53();
  v41 = sub_1E3741EA0(v37, v38, v39, v40);
  v42 = v0 + *(v18 + 36);
  *v42 = v36;
  *(v42 + 8) = v4;
  *(v42 + 16) = v5;
  *(v42 + 24) = v6;
  *(v42 + 32) = v7;
  *(v42 + 40) = 0;
  if ((*(*v31 + 792))(v41) == 11)
  {
    v43 = (*(*v31 + 744))();
  }

  else
  {
    v43 = 0;
  }

  v44 = sub_1E3AEBC24();
  sub_1E39B87A4(v43, v18, v44);

  v45 = sub_1E325F6F0(v0, &qword_1ECF32B40, &qword_1E42B9638);
  (*(*v31 + 552))(v72, v45);
  v46 = 0.0;
  if ((v73 & 1) == 0)
  {
    v46 = sub_1E3952BE8(v72[0], v72[1], v72[2], v72[3]);
  }

  v47 = (v3 + *(v23 + 36));
  v48 = *(sub_1E4201534() + 20);
  v49 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v50 + 104))(v47 + v48, v49);
  *v47 = v46;
  v47[1] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0);
  OUTLINED_FUNCTION_81_8();
  *(v47 + v51) = v52;
  (*(v63 + 32))(v3, v69, v64);
  v53 = sub_1E3AEBDF0();
  OUTLINED_FUNCTION_32_12();
  LOBYTE(v47) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_32_12();
  LOBYTE(v48) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_32_12();
  v54 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_32_12();
  v55 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v31, v47 & 1, v48 & 1, v54 & 1, v55 & 1, v23, v53);
  sub_1E325F6F0(v3, &qword_1ECF32B50, &qword_1E42B9648);
  v56 = sub_1E3AE71A4();
  v57 = *(v27 + 16);
  v57(v65, v2, v25, v56);
  OUTLINED_FUNCTION_28_39();
  sub_1E3AEBEE4(v66, v68, v58);
  (v57)(v67, v65, v25);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32B80, &unk_1E42B9660);
  sub_1E3AEBEE4(v68, v67 + *(v59 + 48), v53);
  OUTLINED_FUNCTION_10_78(v67 + *(v59 + 64));
  v61 = v60;
  sub_1E3AEBBCC(v66, v60);
  v62 = *(v27 + 8);
  v62(v2, v25);
  sub_1E3AEBBCC(v68, v61);
  v62(v65, v25);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3AE8AE4()
{
  v1 = v0;
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  sub_1E4201D54();
  type metadata accessor for PlaybackPersonView(0);
  sub_1E3746E10(v8);
  v9 = sub_1E42012B4();
  (*(v4 + 8))(v8, v2);
  v10 = *(v1 + 216);
  if (v9)
  {
    OUTLINED_FUNCTION_5_0(v10 + 144, v21);
    if ((sub_1E373F6E0(*(v10 + 144), 194, v11, v12, v13, v14) & 1) == 0 && (sub_1E373F6E0(*(v10 + 144), 215, v15, v16, v17, v18) & 1) == 0)
    {
      return sub_1E4201D54();
    }
  }

  else
  {
    v20 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType;
    OUTLINED_FUNCTION_5_0(v10 + OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType, v21);
    if (sub_1E374E8E4(*(v10 + v20), 1))
    {
      return sub_1E4201D54();
    }
  }

  return sub_1E4201D44();
}

void sub_1E3AE8C54(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3AE8D10(319);
    if (v2 <= 0x3F)
    {
      sub_1E38D5D68(319);
      if (v3 <= 0x3F)
      {
        sub_1E38D5DC0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3AE8D10(uint64_t a1)
{
  if (!qword_1EE289D18)
  {
    type metadata accessor for PlaybackPersonViewLayout(255);
    sub_1E3AEBB84(qword_1EE256DB8, type metadata accessor for PlaybackPersonViewLayout, &unk_1E42AABA8);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289D18);
    }
  }
}

unint64_t sub_1E3AE8DA4()
{
  result = qword_1ECF329C0;
  if (!qword_1ECF329C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF329C8, &qword_1E42B9458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32870, &qword_1E42B9330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32868, &qword_1E42B9328);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
    sub_1E3AE4D2C();
    sub_1E32752B0(&qword_1EE23ACD8, &qword_1ECF2A1F8, &qword_1E429E7F0, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3AEBB84(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF329C0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_1E3AE9088(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContextMenuModel(319);
    if (v2 <= 0x3F)
    {
      sub_1E38D5D68(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__objc2_class **sub_1E3AE9144()
{
  result = sub_1E39C408C();
  if (result)
  {
    if (*result != _TtC8VideosUI13TextViewModel)
    {

      return 0;
    }
  }

  return result;
}

void sub_1E3AE91AC()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF329D0, &qword_1E42B94C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF329D8, &qword_1E42B94D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF329E0, &qword_1E42B94D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_5();
  v4 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  type metadata accessor for PlaybackPersonListView(0);
  sub_1E3746E10(v0);
  v8 = sub_1E3B02A04();
  (*(v6 + 8))(v0, v4);
  if (v8)
  {
    sub_1E3AE93F8();
  }

  else
  {
    sub_1E3AE96C4();
  }

  OUTLINED_FUNCTION_12_12();
  sub_1E3743538(v9, v10, v11, v12);
  OUTLINED_FUNCTION_283();
  swift_storeEnumTagMultiPayload();
  sub_1E3AE9B70();
  sub_1E3AE9CB4();
  OUTLINED_FUNCTION_80_9();
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v13, v14, v15);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AE93F8()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A08, &qword_1E42B94E8);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF329F8, &qword_1E42B94E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_14_18();
  if ((*(v8 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v9 + 1152))();
  }

  sub_1E3AE9D6C();
  *v1 = sub_1E4201D54();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A28, &qword_1E42B94F8);
  sub_1E3AE9E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v11 = sub_1E4202744();
  *(inited + 32) = v11;
  v12 = sub_1E4202754();
  *(inited + 33) = v12;
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v11)
  {
    sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v12)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v1, v0, &qword_1ECF32A08, &qword_1E42B94E8);
  OUTLINED_FUNCTION_7_3(v0 + *(v6 + 36));
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v0, v3, &qword_1ECF329F8, &qword_1E42B94E0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF329E0, &qword_1E42B94D8);
  memcpy((v3 + *(v13 + 36)), v14, 0x70uLL);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3AE96C4()
{
  OUTLINED_FUNCTION_9_4();
  v32 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A50, &qword_1E42B9540);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_49_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A58, &qword_1E42B9548);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_28_6();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A60, &qword_1E42B9550);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_5();
  v31 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_8();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A20, &qword_1E42B94F0);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_14_18();
  if ((*(v21 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v22 + 1152))();
  }

  sub_1E3AE9D6C();
  *v0 = sub_1E4201B84();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  *v2 = sub_1E4201D44();
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A68, &qword_1E42B9558);
  sub_1E3AEAD80();
  *v3 = sub_1E4201D44();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A70, &qword_1E42B9560);
  sub_1E3AEB12C();
  v23 = sub_1E4202764();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v23)
  {
    sub_1E4202774();
  }

  v24 = v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A78, &qword_1E42B9568) + 44);
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v3, v4, &qword_1ECF32A50, &qword_1E42B9540);
  OUTLINED_FUNCTION_7_3(v4 + *(v8 + 36));
  sub_1E3741EA0(v4, v1, &qword_1ECF32A58, &qword_1E42B9548);
  sub_1E3743538(v2, v31, &qword_1ECF32A60, &qword_1E42B9550);
  sub_1E3743538(v1, v12, &qword_1ECF32A58, &qword_1E42B9548);
  sub_1E3743538(v31, v24, &qword_1ECF32A60, &qword_1E42B9550);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A80, &qword_1E42B9570);
  sub_1E3743538(v12, v24 + *(v25 + 48), &qword_1ECF32A58, &qword_1E42B9548);
  v26 = OUTLINED_FUNCTION_138_0();
  sub_1E325F6F0(v26, v27, &qword_1E42B9548);
  v28 = OUTLINED_FUNCTION_48_9();
  sub_1E325F6F0(v28, v29, &qword_1E42B9550);
  sub_1E325F6F0(v12, &qword_1ECF32A58, &qword_1E42B9548);
  sub_1E325F6F0(v31, &qword_1ECF32A60, &qword_1E42B9550);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_23_3();
  sub_1E42015C4();
  sub_1E3741EA0(v0, v32, &qword_1ECF32A20, &qword_1E42B94F0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF329D0, &qword_1E42B94C8);
  memcpy((v32 + *(v30 + 36)), v33, 0x70uLL);
  OUTLINED_FUNCTION_10_3();
}

unint64_t sub_1E3AE9B70()
{
  result = qword_1ECF329E8;
  if (!qword_1ECF329E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF329E0, &qword_1E42B94D8);
    sub_1E3AE9BFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF329E8);
  }

  return result;
}

unint64_t sub_1E3AE9BFC()
{
  result = qword_1ECF329F0;
  if (!qword_1ECF329F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF329F8, &qword_1E42B94E0);
    sub_1E32752B0(&qword_1ECF32A00, &qword_1ECF32A08, &qword_1E42B94E8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF329F0);
  }

  return result;
}

unint64_t sub_1E3AE9CB4()
{
  result = qword_1ECF32A10;
  if (!qword_1ECF32A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF329D0, &qword_1E42B94C8);
    sub_1E32752B0(&qword_1ECF32A18, &qword_1ECF32A20, &qword_1E42B94F0, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32A10);
  }

  return result;
}

void sub_1E3AE9D6C()
{
  if (*(v0 + 120))
  {
    v1 = 0.0;
  }

  else
  {
    v1 = *(v0 + 104);
  }

  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(v1);
  v2.n128_f64[0] = sub_1E3A25914();
  j_nullsub_1(v2, v3, v4, v5);
  OUTLINED_FUNCTION_36();
  if ((*(v6 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v7 + 176))(&v8);
  }
}

void sub_1E3AE9E58()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v127 = v4;
  v126 = sub_1E4203B14();
  OUTLINED_FUNCTION_0_10();
  v121 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v124 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v125 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v131 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_3();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  OUTLINED_FUNCTION_0_10();
  v130 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_5();
  v129 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v109 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0, &unk_1E429B6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v116 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  v115 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v114 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v113 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8, &unk_1E42B9510);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v136 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_25_3();
  v118 = v32;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295C0, &unk_1E429B700);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_5();
  v123 = v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_6();
  v133 = v36;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_6();
  v119 = v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_6();
  v122 = v40;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  v117 = v42;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_226();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A30, &unk_1E42B9520);
  v45 = v44 - 8;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_5();
  v135 = v46;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v109 - v48;
  sub_1E3AEA884();
  v50 = *(v45 + 44);
  v120 = v49;
  *&v49[v50] = 256;
  v134 = v3;
  v51 = sub_1E3AE9144();
  if (v51)
  {
    v53 = sub_1E3C27528(v51, v52);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21(v54);
    v111 = v18;
    v55 = OUTLINED_FUNCTION_283();
    sub_1E3883AF4(v55, v56, v57);
    v58 = *(v131 + 8);
    v112 = v10;
    v58(v1, v10);
    sub_1E4202744();
    v59 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v60)
    {
      v59 = sub_1E4202774();
    }

    if (v53)
    {
      v110 = *(*v53 + 152);

      v110(v143, v61);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v64 = v114;
    (*(v130 + 32))(v114, v111, v128);
    v65 = (v64 + *(v19 + 36));
    *v65 = v59;
    OUTLINED_FUNCTION_15_3(v65);
    v66 = v113;
    sub_1E3741EA0(v64, v113, &qword_1ECF295B0, &unk_1E429B6F0);
    v63 = v118;
    sub_1E3741EA0(v66, v118, &qword_1ECF295B0, &unk_1E429B6F0);
    v62 = 0;
  }

  else
  {
    v62 = 1;
    v63 = v118;
  }

  __swift_storeEnumTagSinglePayload(v63, v62, 1, v19);
  v67 = sub_1E4202744();
  v68 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v67)
  {
    v68 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v69 = v117;
  sub_1E3741EA0(v63, v117, &qword_1ECF295B8, &unk_1E42B9510);
  v70 = (v69 + *(v132 + 36));
  *v70 = v68;
  OUTLINED_FUNCTION_15_3(v70);
  v131 = v0;
  sub_1E3741EA0(v69, v0, &qword_1ECF295C0, &unk_1E429B700);
  v71 = sub_1E3AE9144();
  if (v71)
  {
    v73 = sub_1E3C27528(v71, v72);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OUTLINED_FUNCTION_0_21(v74);
    v75 = OUTLINED_FUNCTION_283();
    sub_1E3883AF4(v75, v76, v77);
    v78 = OUTLINED_FUNCTION_99_0();
    v79(v78);
    sub_1E4202744();
    v80 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v60)
    {
      v80 = sub_1E4202774();
    }

    if (v73)
    {
      v81 = *(*v73 + 152);

      v81(v144, v82);

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_9_10();

    v84 = v116;
    (*(v130 + 32))(v116, v129, v128);
    v85 = (v84 + *(v19 + 36));
    *v85 = v80;
    OUTLINED_FUNCTION_15_3(v85);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v86, v87, v88, v89);
    OUTLINED_FUNCTION_18_5();
    sub_1E3741EA0(v90, v91, v92, v93);
    v83 = 0;
  }

  else
  {
    v83 = 1;
  }

  __swift_storeEnumTagSinglePayload(v136, v83, 1, v19);
  v94 = sub_1E4202744();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v94)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v95 = v119;
  sub_1E3741EA0(v136, v119, &qword_1ECF295B8, &unk_1E42B9510);
  OUTLINED_FUNCTION_7_3(v95 + *(v132 + 36));
  v96 = v95;
  v97 = v122;
  sub_1E3741EA0(v96, v122, &qword_1ECF295C0, &unk_1E429B700);
  sub_1E3AEABF4(v141);
  v98 = v125;
  sub_1E4203B04();
  v99 = v120;
  v100 = v135;
  sub_1E3743538(v120, v135, &qword_1ECF32A30, &unk_1E42B9520);
  v140[0] = v100;
  v101 = v131;
  v102 = v133;
  sub_1E3743538(v131, v133, &qword_1ECF295C0, &unk_1E429B700);
  v140[1] = v102;
  v103 = v123;
  sub_1E3743538(v97, v123, &qword_1ECF295C0, &unk_1E429B700);
  v140[2] = v103;
  memcpy(v139, v141, 0x51uLL);
  v137 = 0;
  v138 = 0;
  v140[3] = v139;
  v140[4] = &v137;
  v104 = v121;
  v105 = v124;
  v106 = v126;
  (*(v121 + 16))(v124, v98, v126);
  v140[5] = v105;
  sub_1E3AE7640(v140, v127);
  v107 = *(v104 + 8);
  v107(v98, v106);
  sub_1E325F6F0(v97, &qword_1ECF295C0, &unk_1E429B700);
  sub_1E325F6F0(v101, &qword_1ECF295C0, &unk_1E429B700);
  sub_1E325F6F0(v99, &qword_1ECF32A30, &unk_1E42B9520);
  v108 = OUTLINED_FUNCTION_99_0();
  (v107)(v108);
  memcpy(v142, v139, 0x51uLL);
  sub_1E325F6F0(v142, &qword_1ECF32A38, &unk_1E42BC620);
  sub_1E325F6F0(v103, &qword_1ECF295C0, &unk_1E429B700);
  sub_1E325F6F0(v133, &qword_1ECF295C0, &unk_1E429B700);
  sub_1E325F6F0(v135, &qword_1ECF32A30, &unk_1E42B9520);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3AEA884()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for Monogram(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A48, &qword_1E42B9538);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_1();
  v11 = sub_1E39C408C();
  if (v11)
  {
    v12 = v11;
    v40 = v2;
    v13 = sub_1E39C408C();
    v14 = v13;
    if (v13)
    {
      (*(*v13 + 392))(v13);
      OUTLINED_FUNCTION_76();

      OUTLINED_FUNCTION_8();
      v16 = *(v15 + 304);

      v14 = v16(v17);
      v19 = v18;

      if (v19)
      {
        v14 = 0;
      }
    }

    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    v39 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_51_24();
    OUTLINED_FUNCTION_71_12();
    OUTLINED_FUNCTION_6_14(v14, v14, v25, v26, v33, v34, v35, v36, v37, v38, SHIBYTE(v38), v39);

    v41 = v50;
    v42 = v51;
    v43 = v14;
    v44 = v14;
    v45 = 256;
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v49 = v55;

    sub_1E375C2C0(&v41, &v50);
    OUTLINED_FUNCTION_65_14(v12, &v41, v6);
    v27 = sub_1E3D79C84();
    v28 = v27[1];
    *&v50 = *v27;
    *(&v50 + 1) = v28;
    sub_1E3AEBB84(&qword_1EE23BF18, type metadata accessor for Monogram, &unk_1E42C18F0);
    OUTLINED_FUNCTION_76();

    sub_1E4203184();
    sub_1E375C31C(&v41);

    sub_1E3AEBBCC(v6, type metadata accessor for Monogram);
    (*(v9 + 32))(v40, v0, v7);
    OUTLINED_FUNCTION_8_11();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }
}

void sub_1E3AEABF4(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (sub_1E39C408C())
  {

    v4 = sub_1E39C408C();
    if (v4)
    {
      v5 = (*(*v4 + 392))();

      if (v5)
      {
        OUTLINED_FUNCTION_8();
        v7 = *(v6 + 152);

        v7(&v23, v8);

        if ((v24 & 1) == 0)
        {
          OUTLINED_FUNCTION_13_3(v9, v10, v11, v12);
LABEL_9:
          v17 = v13;

          sub_1E397F070(v3, v5, v25);
          v21 = v25[1];
          v22 = v25[0];
          v19 = v26;
          v20 = sub_1E4202734();

          v18 = v21;
          v16 = v22;
          v15 = v19;
          v14 = v20;
          goto LABEL_10;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    OUTLINED_FUNCTION_5_8();
    goto LABEL_9;
  }

  v14 = 0;
  v15 = 0;
  v16 = 0uLL;
  v17 = 0;
  v18 = 0uLL;
LABEL_10:
  *a1 = v16;
  *(a1 + 16) = v18;
  *(a1 + 32) = v15;
  *(a1 + 40) = v14;
  *(a1 + 48) = 0;
  *(a1 + 56) = v17;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
}

void sub_1E3AEAD80()
{
  OUTLINED_FUNCTION_21_5();
  v45 = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AC0, &qword_1E42B95B0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v46 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AC8, &qword_1E42B95B8);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AD0, &qword_1E42B95C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_49_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AD8, &qword_1E42B95C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_8();
  sub_1E3AEA884();
  v18 = sub_1E4202744();
  v19 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v18)
  {
    v19 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v0, v2, &qword_1ECF32AC8, &qword_1E42B95B8);
  v20 = (v2 + *(v12 + 36));
  *v20 = v19;
  OUTLINED_FUNCTION_15_3(v20);
  v21 = sub_1E4202754();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v21)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v2, v3, &qword_1ECF32AD0, &qword_1E42B95C0);
  OUTLINED_FUNCTION_7_3(v3 + *(v14 + 36));
  OUTLINED_FUNCTION_18_5();
  sub_1E3741EA0(v22, v23, v24, v25);
  sub_1E4203B04();
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AE0, &qword_1E42B95D0) + 36)] = 0;
  sub_1E4203DA4();
  sub_1E4200D94();
  v26 = &v9[*(v44 + 36)];
  v27 = v48;
  *v26 = v47;
  *(v26 + 1) = v27;
  *(v26 + 2) = v49;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v28, v29, v30, v31);
  v32 = v46;
  sub_1E3743538(v9, v46, &qword_1ECF32AC0, &qword_1E42B95B0);
  v33 = v45;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v34, v35, v36, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AE8, &qword_1E42B95D8);
  sub_1E3743538(v32, v33 + *(v38 + 48), &qword_1ECF32AC0, &qword_1E42B95B0);
  sub_1E325F6F0(v9, &qword_1ECF32AC0, &qword_1E42B95B0);
  sub_1E325F6F0(v1, &qword_1ECF32AD8, &qword_1E42B95C8);
  v39 = OUTLINED_FUNCTION_142();
  sub_1E325F6F0(v39, v40, &qword_1E42B95B0);
  v41 = OUTLINED_FUNCTION_138_0();
  sub_1E325F6F0(v41, v42, &qword_1E42B95C8);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3AEB12C()
{
  OUTLINED_FUNCTION_31_1();
  v39 = v2;
  v38 = sub_1E4203B14();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v40 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v41 = v8;
  v9 = OUTLINED_FUNCTION_134_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A90, &qword_1E42B9580);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v36 - v20;
  *v21 = sub_1E4201B84();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32A98, &qword_1E42B9588) + 44)];
  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AA0, &qword_1E42B9590);
  sub_1E3AEB4F8();
  sub_1E3AEABF4(v44);
  sub_1E3743538(v1, v0, &qword_1ECF32A88, &qword_1E42B9578);
  sub_1E3743538(v0, v22, &qword_1ECF32A88, &qword_1E42B9578);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AA8, &qword_1E42B9598) + 48);
  memcpy(v45, v44, 0x51uLL);
  memcpy((v22 + v23), v44, 0x51uLL);
  sub_1E3743538(v45, v46, &qword_1ECF32A38, &unk_1E42BC620);
  sub_1E325F6F0(v1, &qword_1ECF32A88, &qword_1E42B9578);
  memcpy(v46, v44, 0x51uLL);
  sub_1E325F6F0(v46, &qword_1ECF32A38, &unk_1E42BC620);
  v24 = OUTLINED_FUNCTION_48_9();
  sub_1E325F6F0(v24, v25, &qword_1E42B9578);
  v26 = v41;
  sub_1E4203B04();
  v43 = 0;
  v37 = v18;
  sub_1E3743538(v21, v18, &qword_1ECF32A90, &qword_1E42B9580);
  v42 = 0;
  v27 = *(v4 + 16);
  v28 = v40;
  v29 = v38;
  v27(v40, v26, v38);
  v30 = v43;
  v31 = v39;
  *v39 = 0;
  *(v31 + 8) = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AB0, &qword_1E42B95A0);
  sub_1E3743538(v18, v31 + v32[12], &qword_1ECF32A90, &qword_1E42B9580);
  v33 = v31 + v32[16];
  v34 = v42;
  *v33 = 0;
  v33[8] = v34;
  v27(v31 + v32[20], v28, v29);
  v35 = *(v4 + 8);
  v35(v41, v29);
  sub_1E325F6F0(v21, &qword_1ECF32A90, &qword_1E42B9580);
  v35(v28, v29);
  sub_1E325F6F0(v37, &qword_1ECF32A90, &qword_1E42B9580);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AEB4F8()
{
  OUTLINED_FUNCTION_9_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v102 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295A8, &unk_1E42B9500);
  OUTLINED_FUNCTION_0_10();
  v103 = v13;
  v104 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v105 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_226();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B0, &unk_1E429B6F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_88_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF295B8, &unk_1E42B9510);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v101 = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_28_6();
  v27 = sub_1E3AE9144();
  v100 = v9;
  if (v27)
  {
    v98 = v1;
    v99 = v16;
    v29 = sub_1E3C27528(v27, v28);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v31 = OUTLINED_FUNCTION_0_21(v30);
    sub_1E3883AF4(v29, v9, v31);
    v32 = OUTLINED_FUNCTION_142();
    v33(v32);
    sub_1E4202744();
    v34 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v35)
    {
      v34 = sub_1E4202774();
    }

    if (v29)
    {
      v36 = v2;
      v37 = *(*v29 + 152);

      v37(&v106, v38);
      v2 = v36;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    (*(v103 + 32))(v4, v0, v104);
    v16 = v99;
    v40 = v4 + *(v99 + 36);
    *v40 = v34;
    *(v40 + 8) = v5;
    *(v40 + 16) = v6;
    *(v40 + 24) = v7;
    *(v40 + 32) = v8;
    *(v40 + 40) = 0;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v41, v42, v43, v44);
    v1 = v98;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v45, v46, v47, v48);
    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v49 = 1;
  __swift_storeEnumTagSinglePayload(v1, v39, 1, v16);
  v50 = sub_1E3AE9144();
  v52 = v105;
  if (v50)
  {
    v53 = sub_1E3C27528(v50, v51);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v55 = OUTLINED_FUNCTION_0_21(v54);
    sub_1E3883AF4(v53, v100, v55);
    (*(v102 + 8))(v3, v100);
    sub_1E4202744();
    v56 = OUTLINED_FUNCTION_41_4();
    sub_1E4202774();
    sub_1E4202774();
    OUTLINED_FUNCTION_29();
    if (!v35)
    {
      v56 = sub_1E4202774();
    }

    if (v53)
    {
      v57 = v16;
      v58 = *(*v53 + 152);

      v58(&v107, v59);
      v52 = v105;
      v16 = v57;

      OUTLINED_FUNCTION_32_1();
    }

    sub_1E4200A54();
    OUTLINED_FUNCTION_3();

    (*(v103 + 32))(v2, v52, v104);
    v61 = v2 + *(v16 + 36);
    *v61 = v56;
    *(v61 + 8) = v5;
    *(v61 + 16) = v6;
    *(v61 + 24) = v7;
    *(v61 + 32) = v8;
    *(v61 + 40) = 0;
    OUTLINED_FUNCTION_48_9();
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v62, v63, v64, v65);
    v60 = v101;
    OUTLINED_FUNCTION_12_12();
    sub_1E3741EA0(v66, v67, v68, v69);
    v49 = 0;
  }

  else
  {
    v60 = v101;
  }

  __swift_storeEnumTagSinglePayload(v60, v49, 1, v16);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v70, v71, v72, v73);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v74, v75, v76, v77);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v78, v79, v80, v81);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32AB8, &qword_1E42B95A8);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v82, v83, v84, v85);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v86, v87, v88);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v89, v90, v91);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v92, v93, v94);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v95, v96, v97);
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E3AEBB84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3AEBBCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3AEBC24()
{
  result = qword_1ECF32B60;
  if (!qword_1ECF32B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32B40, &qword_1E42B9638);
    sub_1E3AEBCB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32B60);
  }

  return result;
}

unint64_t sub_1E3AEBCB0()
{
  result = qword_1ECF32B68;
  if (!qword_1ECF32B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF295C8, &qword_1E42B9630);
    sub_1E3AEBD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32B68);
  }

  return result;
}

unint64_t sub_1E3AEBD3C()
{
  result = qword_1ECF32B70;
  if (!qword_1ECF32B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29648, &qword_1E42B70C0);
    sub_1E3AEBB84(&qword_1EE23BF18, type metadata accessor for Monogram, &unk_1E42C18F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32B70);
  }

  return result;
}

unint64_t sub_1E3AEBDF0()
{
  result = qword_1ECF32B78;
  if (!qword_1ECF32B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32B50, &qword_1E42B9648);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32B40, &qword_1E42B9638);
    sub_1E3AEBC24();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0, &unk_1E42AC0E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32B78);
  }

  return result;
}

uint64_t sub_1E3AEBEE4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3AEBF40()
{
  result = qword_1ECF32BF8;
  if (!qword_1ECF32BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32C00, &qword_1E42B96F0);
    sub_1E3AE9B70();
    sub_1E3AE9CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32BF8);
  }

  return result;
}

uint64_t sub_1E3AEC014(uint64_t a1)
{
  type metadata accessor for ScoreboardLayout();
  OUTLINED_FUNCTION_26_44();
  swift_allocObject();
  sub_1E3AEDE4C();
  OUTLINED_FUNCTION_40_35();
  *&v108 = j__OUTLINED_FUNCTION_7_78(COERCE_UNSIGNED_INT64(5.0));
  *(&v108 + 1) = v3;
  *&v109 = v4;
  *(&v109 + 1) = v5;
  v110 = 0;
  v6.n128_u64[0] = 6.0;
  *&v105 = j__OUTLINED_FUNCTION_7_78(v6);
  *(&v105 + 1) = v7;
  *&v106 = v8;
  *(&v106 + 1) = v9;
  v107 = 0;
  v10.n128_u64[0] = 10.0;
  v100 = j__OUTLINED_FUNCTION_7_78(v10);
  v101 = v11;
  v102 = v12;
  v103 = v13;
  v104 = 0;
  v95 = sub_1E3952C10(12.0, 5.0);
  v96 = v14;
  v97 = v15;
  v98 = v16;
  v99 = 0;
  v17.n128_u64[0] = 4.0;
  v90 = j__OUTLINED_FUNCTION_7_78(v17);
  v91 = v18;
  v92 = v19;
  v93 = v20;
  v94 = 0;
  OUTLINED_FUNCTION_36_30();
  v29 = OUTLINED_FUNCTION_35_35(v21, v22, v23, v24, v25, v26, v27, v28, v81, v82, v83, v84, v85, v86, v87, v88, 0);
  sub_1E3C2FCB8(v29, v30, v31, v32, &v95, &v90, v2, v33);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v35 = *(v34 + 1600);
  OUTLINED_FUNCTION_4_117();
  v36 = v35();
  v36.n128_u64[0] = 6.0;
  *&__dst[0] = j__OUTLINED_FUNCTION_7_78(v36);
  *(&__dst[0] + 1) = v37;
  *&__dst[1] = v38;
  *(&__dst[1] + 1) = v39;
  LOBYTE(__dst[2]) = 0;
  v108 = 0u;
  v109 = 0u;
  v110 = 1;
  v105 = 0u;
  v106 = 0u;
  v107 = 1;
  v100 = j__OUTLINED_FUNCTION_7_78(COERCE_UNSIGNED_INT64(6.0));
  v101 = v40;
  v102 = v41;
  v103 = v42;
  v104 = 0;
  v43.n128_u64[0] = 6.0;
  v95 = j__OUTLINED_FUNCTION_7_78(v43);
  v96 = v44;
  v97 = v45;
  v98 = v46;
  v99 = 0;
  v47 = sub_1E3C3DE00();
  LOBYTE(v87) = v94;
  v55 = OUTLINED_FUNCTION_35_35(v47, v48, v49, v50, v51, v52, v53, v54, v81, v82, *&v90, v91, v92, v93, v87, v88, __dst[0]);
  sub_1E3C2FCB8(v55, v56, v57, v58, &v83, &v95, v2, v59);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14_92();
  v35();
  OUTLINED_FUNCTION_9_2();
  v61 = *(v60 + 1792);
  v61();
  OUTLINED_FUNCTION_2_1();
  v62 = OUTLINED_FUNCTION_15_8();
  v63(v62);

  (v61)(v64);
  OUTLINED_FUNCTION_2_1();
  (*(v65 + 1984))(1);

  (v61)(v66);
  OUTLINED_FUNCTION_2_1();
  (*(v67 + 1912))(26);

  (v61)(v68);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v69 + 1768))();

  (v61)(v70);
  OUTLINED_FUNCTION_2_1();
  (*(v71 + 1792))(6);

  (v61)(v72);
  sub_1E3755B54();
  OUTLINED_FUNCTION_27_39(v73, v74, v75);
  OUTLINED_FUNCTION_13();
  (*(v76 + 680))();

  (v61)(v77);
  *&__dst[0] = 0x4028000000000000;
  BYTE8(__dst[0]) = 0;
  *&v108 = 0x4039000000000000;
  BYTE8(v108) = 0;
  *&v105 = 0x402E000000000000;
  BYTE8(v105) = 0;
  v100 = 11.0;
  LOBYTE(v101) = 0;
  v78 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v90 = v95;
  LOBYTE(v91) = v96;
  sub_1E3C3DE00();
  v81 = v83;
  LOBYTE(v82) = v84;
  sub_1E3C2FCB8(__dst, &v90, &v81, &v108, &v105, &v100, v78, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_83();
  v79();

  return v1;
}

uint64_t sub_1E3AEC538(uint64_t a1)
{
  type metadata accessor for ScoreboardLayout();
  OUTLINED_FUNCTION_26_44();
  swift_allocObject();
  sub_1E3AEDE4C();
  OUTLINED_FUNCTION_40_35();
  v2.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v2);
  OUTLINED_FUNCTION_7_26();
  v3.n128_u64[0] = 5.0;
  v4.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v3);
  v8.n128_f64[0] = OUTLINED_FUNCTION_10_79(v4, v5, v6, v7);
  OUTLINED_FUNCTION_21_56(v8);
  OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_43_30(v9, v10);
  OUTLINED_FUNCTION_5_112();
  v11.n128_u64[0] = 4.0;
  j__OUTLINED_FUNCTION_7_78(v11);
  OUTLINED_FUNCTION_23_46();
  OUTLINED_FUNCTION_36_30();
  v20 = OUTLINED_FUNCTION_0_140(v12, v13, v14, v15, v16, v17, v18, v19, v96, v104, v112, v120, v129, v136, v143, v150, v157, v165, v173);
  OUTLINED_FUNCTION_29_43(v20, v21, v22, v23, v24, v97, v105, v113, v121, v130, v137, v144, v151, v158, v166, v174, v178, v181, v184, v187, v190, v193, v196, v199, v202, v205, v208, v211, v214, v217, v220, v223, v226, v229, v232, v235, v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v271, v274, v277, v280);
  OUTLINED_FUNCTION_20_59(v25, v26, v27, v28, v29, v30, v31, v32, v98, v106, v114, v122, v131, v138, v145, v152, v159, v167);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v34 = *(v33 + 1600);
  OUTLINED_FUNCTION_4_117();
  v35 = v34();
  v35.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v35);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_19_64();
  OUTLINED_FUNCTION_6_97();
  v36.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v36);
  OUTLINED_FUNCTION_5_112();
  v37 = sub_1E3C3DE00();
  LOBYTE(v160) = v278;
  v45 = OUTLINED_FUNCTION_0_140(v37, v38, v39, v40, v41, v42, v43, v44, v99, v107, v115, v123, v266, v269, v272, v275, v160, v168, v175);
  OUTLINED_FUNCTION_38_27(v45, v46, v47, v48, v49, v100, v108, v116, v124, v132, v139, v146, v153, v161, v169, v176, v179, v182, v185, v188, v191, v194, v197, v200, v203, v206, v209, v212, v215, v218, v221, v224, v227, v230, v233, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, v269, v272, v275, v278, v281);
  OUTLINED_FUNCTION_20_59(v50, v51, v52, v53, v54, v55, v56, v57, v101, v109, v117, v125, v133, v140, v147, v154, v162, v170);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14_92();
  v34();
  OUTLINED_FUNCTION_9_2();
  v59 = *(v58 + 1792);
  v59();
  OUTLINED_FUNCTION_2_1();
  v60 = OUTLINED_FUNCTION_15_8();
  v61(v60);

  (v59)(v62);
  OUTLINED_FUNCTION_2_1();
  (*(v63 + 1984))(1);

  (v59)(v64);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v65 + 1768))();

  (v59)(v66);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v67 + 1768))();

  (v59)(v68);
  OUTLINED_FUNCTION_2_1();
  (*(v69 + 1912))(26);

  (v59)(v70);
  sub_1E3755B54();
  OUTLINED_FUNCTION_27_39(v71, v72, v73);
  OUTLINED_FUNCTION_13();
  (*(v74 + 680))();

  (v59)(v75);
  OUTLINED_FUNCTION_2_1();
  (*(v76 + 1792))(6);

  (v59)(v77);
  OUTLINED_FUNCTION_2_112();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_18_55();
  v78 = OUTLINED_FUNCTION_17_68();
  OUTLINED_FUNCTION_3_116(v78, v79, v80, v81, v82, v83, v84, v85, v102, v110, v118, v126, v128, v134, v141, v148, v155, v163, v171, v177, v180, v183, v186, v189, v192, v195, v198, v201, v204, v207, v210, v213, v216, v219, v222, v225, v228, v231, v234, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v270, v273, v276, v279, v282, v283, v284, v285, v286, v287, v288, v289, v290);
  OUTLINED_FUNCTION_39_26(v86, v87, v88, v89, v90, v91, v92, v93, v103, v111, v119, v127, v135, v142, v149, v156, v164, v172);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_83();
  v94();

  return v1;
}

uint64_t sub_1E3AEC99C(uint64_t a1)
{
  type metadata accessor for ScoreboardLayout();
  OUTLINED_FUNCTION_26_44();
  swift_allocObject();
  sub_1E3AEDE4C();
  OUTLINED_FUNCTION_40_35();
  v2.n128_u64[0] = 6.0;
  *v51 = j__OUTLINED_FUNCTION_7_78(v2);
  *&v51[8] = v3;
  *&v51[16] = v4;
  *&v51[24] = v5;
  v51[32] = 0;
  OUTLINED_FUNCTION_36_30();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_31_37();
  OUTLINED_FUNCTION_7_37();
  OUTLINED_FUNCTION_6_7();
  v6 = OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_22_48(v6, v7, v8, v9, v10, v11, v12, v13, *v51, *&v51[8], *&v51[16], *&v51[24], *&v51[32], *&v51[40], *&v51[48], *&v51[56], *&v51[64], *&v51[72], *&v51[80], *&v51[88], *&v51[96], *&v51[104], *&v51[112], *&v51[120], *&v51[128], *&v51[136], *&v51[144], *&v51[152], *&v51[160], *&v51[168], *&v51[176], *&v51[184], *&v51[192], *&v51[200], *&v51[208], *&v51[216], *&v51[224], *&v51[232], v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  memcpy(v51, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v15 = *(v14 + 1600);
  OUTLINED_FUNCTION_4_117();
  v16 = v15();
  v16.n128_u64[0] = 6.0;
  *v51 = j__OUTLINED_FUNCTION_7_78(v16);
  *&v51[8] = v17;
  *&v51[16] = v18;
  *&v51[24] = v19;
  v51[32] = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_31_37();
  OUTLINED_FUNCTION_7_37();
  OUTLINED_FUNCTION_6_7();
  v20 = OUTLINED_FUNCTION_5_17();
  OUTLINED_FUNCTION_22_48(v20, v21, v22, v23, v24, v25, v26, v27, *v51, *&v51[8], *&v51[16], *&v51[24], *&v51[32], *&v51[40], *&v51[48], *&v51[56], *&v51[64], *&v51[72], *&v51[80], *&v51[88], *&v51[96], *&v51[104], *&v51[112], *&v51[120], *&v51[128], *&v51[136], *&v51[144], *&v51[152], *&v51[160], *&v51[168], *&v51[176], *&v51[184], *&v51[192], *&v51[200], *&v51[208], *&v51[216], *&v51[224], *&v51[232], v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  memcpy(v51, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14_92();
  v15();
  OUTLINED_FUNCTION_9_2();
  v29 = *(v28 + 1792);
  v29();
  OUTLINED_FUNCTION_2_1();
  v30 = OUTLINED_FUNCTION_15_8();
  v31(v30);

  (v29)(v32);
  OUTLINED_FUNCTION_2_1();
  (*(v33 + 1984))(1);

  (v29)(v34);
  OUTLINED_FUNCTION_2_1();
  (*(v35 + 1912))(26);

  (v29)(v36);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v37 + 1768))();

  (v29)(v38);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v39 + 1768))();

  (v29)(v40);
  OUTLINED_FUNCTION_2_1();
  (*(v41 + 1792))(6);

  (v29)(v42);
  sub_1E3755B54();
  OUTLINED_FUNCTION_27_39(v43, v44, v45);
  OUTLINED_FUNCTION_13();
  (*(v46 + 680))();

  (v29)(v47);
  *v51 = 0x4032000000000000;
  v51[8] = 0;
  v82 = 0x402E000000000000;
  v83 = 0;
  v48 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  v78 = v80;
  v79 = v81;
  sub_1E3C3DE00();
  v74 = v76;
  v75 = v77;
  sub_1E3C3DE00();
  v66 = v72;
  LOBYTE(v67) = v73;
  sub_1E3C3DE00();
  *&v56 = v60;
  BYTE8(v56) = v61;
  sub_1E3C2FCB8(v51, &v78, &v74, &v66, &v82, &v56, v48, __src);
  memcpy(v51, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_83();
  v49();

  return v1;
}

uint64_t sub_1E3AECE90(uint64_t a1)
{
  type metadata accessor for ScoreboardLayout();
  OUTLINED_FUNCTION_26_44();
  swift_allocObject();
  sub_1E3AEDE4C();
  OUTLINED_FUNCTION_40_35();
  v3.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v3);
  OUTLINED_FUNCTION_7_26();
  v4.n128_u64[0] = 3.0;
  v5.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v4);
  v9.n128_f64[0] = OUTLINED_FUNCTION_10_79(v5, v6, v7, v8);
  OUTLINED_FUNCTION_21_56(v9);
  OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_43_30(v10, v11);
  OUTLINED_FUNCTION_5_112();
  v12.n128_u64[0] = 4.0;
  j__OUTLINED_FUNCTION_7_78(v12);
  OUTLINED_FUNCTION_23_46();
  OUTLINED_FUNCTION_36_30();
  v21 = OUTLINED_FUNCTION_0_140(v13, v14, v15, v16, v17, v18, v19, v20, v132, v143, v154, v165, v177, v187, v197, v207, v217, v228, v239);
  OUTLINED_FUNCTION_29_43(v21, v22, v23, v24, v25, v133, v144, v155, v166, v178, v188, v198, v208, v218, v229, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274);
  OUTLINED_FUNCTION_20_59(v26, v27, v28, v29, v30, v31, v32, v33, v134, v145, v156, v167, v179, v189, v199, v209, v219, v230);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v35 = *(v34 + 1600);
  OUTLINED_FUNCTION_4_117();
  v36 = v35();
  v36.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v36);
  OUTLINED_FUNCTION_7_26();
  v37.n128_u64[0] = 4.0;
  v38.n128_f64[0] = j__OUTLINED_FUNCTION_7_78(v37);
  v42.n128_f64[0] = OUTLINED_FUNCTION_10_79(v38, v39, v40, v41);
  OUTLINED_FUNCTION_21_56(v42);
  OUTLINED_FUNCTION_6_97();
  OUTLINED_FUNCTION_43_30(v43, v44);
  OUTLINED_FUNCTION_5_112();
  v45.n128_u64[0] = 7.0;
  j__OUTLINED_FUNCTION_7_78(v45);
  OUTLINED_FUNCTION_23_46();
  v54 = OUTLINED_FUNCTION_0_140(v46, v47, v48, v49, v50, v51, v52, v53, v135, v146, v157, v168, v180, v190, v200, v210, v220, v231, v239);
  OUTLINED_FUNCTION_29_43(v54, v55, v56, v57, v58, v136, v147, v158, v169, v181, v191, v201, v211, v221, v232, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274);
  OUTLINED_FUNCTION_20_59(v59, v60, v61, v62, v63, v64, v65, v66, v137, v148, v159, v170, v182, v192, v202, v212, v222, v233);
  v67 = OUTLINED_FUNCTION_18();
  v68 = (v35)(&v239, 1, v67 & 1, v2);
  v68.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v68);
  OUTLINED_FUNCTION_7_26();
  OUTLINED_FUNCTION_19_64();
  OUTLINED_FUNCTION_6_97();
  v69.n128_u64[0] = 6.0;
  j__OUTLINED_FUNCTION_7_78(v69);
  OUTLINED_FUNCTION_5_112();
  v70 = sub_1E3C3DE00();
  LOBYTE(v223) = v273;
  v78 = OUTLINED_FUNCTION_0_140(v70, v71, v72, v73, v74, v75, v76, v77, v138, v149, v160, v171, v269, v270, v271, v272, v223, v234, v239);
  OUTLINED_FUNCTION_38_27(v78, v79, v80, v81, v82, v139, v150, v161, v172, v183, v193, v203, v213, v224, v235, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274);
  OUTLINED_FUNCTION_20_59(v83, v84, v85, v86, v87, v88, v89, v90, v140, v151, v162, v173, v184, v194, v204, v214, v225, v236);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14_92();
  v35();
  OUTLINED_FUNCTION_9_2();
  (*(v91 + 1968))(-1.0);
  OUTLINED_FUNCTION_9_2();
  v93 = *(v92 + 1792);
  v93();
  OUTLINED_FUNCTION_2_1();
  v94 = OUTLINED_FUNCTION_15_8();
  v95(v94);

  (v93)(v96);
  OUTLINED_FUNCTION_2_1();
  (*(v97 + 1984))(1);

  (v93)(v98);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v99 + 1768))();

  OUTLINED_FUNCTION_9_2();
  (*(v100 + 1896))(2.5);
  OUTLINED_FUNCTION_9_2();
  (*(v101 + 1872))(9.0);
  OUTLINED_FUNCTION_9_2();
  (*(v102 + 2016))(3.0);
  OUTLINED_FUNCTION_9_2();
  (*(v103 + 1920))(sub_1E3AEE280, 0);
  OUTLINED_FUNCTION_9_2();
  v105 = (*(v104 + 1992))(15.0);
  (v93)(v105);
  OUTLINED_FUNCTION_2_1();
  (*(v106 + 1912))(26);

  (v93)(v107);
  v108 = [objc_opt_self() blackColor];
  v109 = [v108 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v110 + 680))(v109);

  (v93)(v111);
  OUTLINED_FUNCTION_2_1();
  (*(v112 + 1792))(6);

  (v93)(v113);
  OUTLINED_FUNCTION_2_112();
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_18_55();
  v114 = OUTLINED_FUNCTION_17_68();
  OUTLINED_FUNCTION_3_116(v114, v115, v116, v117, v118, v119, v120, v121, v141, v152, v163, v174, v176, v185, v195, v205, v215, v226, v237, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
  OUTLINED_FUNCTION_39_26(v122, v123, v124, v125, v126, v127, v128, v129, v142, v153, v164, v175, v186, v196, v206, v216, v227, v238);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_15_83();
  v130();

  return v1;
}

id sub_1E3AED490()
{
  v1 = [objc_allocWithZone(VUIScoreboardLayout) init];
  OUTLINED_FUNCTION_36();
  (*(v2 + 1792))();
  OUTLINED_FUNCTION_2_1();
  v4 = (*(v3 + 2408))();

  [v1 setTextLayout_];

  (*(*v0 + 176))(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
  sub_1E4148DE0(sub_1E3AED75C);
  OUTLINED_FUNCTION_13();
  (*(v5 + 552))(v13);
  sub_1E4148DE0(sub_1E3AED774);
  OUTLINED_FUNCTION_13();
  (*(v6 + 1816))();
  OUTLINED_FUNCTION_2_1();
  v8 = (*(v7 + 1712))();

  [v1 setTopRowLayout_];

  OUTLINED_FUNCTION_13();
  (*(v9 + 1840))();
  OUTLINED_FUNCTION_2_1();
  v11 = (*(v10 + 1712))();

  [v1 setBottomRowLayout_];

  return v1;
}

id sub_1E3AED774()
{
  v1 = *(v0 + 16);
  sub_1E3952BF8();

  return [v1 setBorderRadii_];
}

uint64_t sub_1E3AED7BC()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ScoreboardRowLayout();
    OUTLINED_FUNCTION_42_6();
    v3 = swift_allocObject();
    v1 = sub_1E3AEE6A0(v3);
    *(v2 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3AED82C()
{
  OUTLINED_FUNCTION_42_6();
  v0 = swift_allocObject();
  return sub_1E3AEE6A0(v0);
}

uint64_t sub_1E3AED880()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ScoreboardRowLayout();
    OUTLINED_FUNCTION_42_6();
    v3 = swift_allocObject();
    v1 = sub_1E3AEE6A0(v3);
    *(v2 + 120) = v1;
  }

  return v1;
}

double sub_1E3AED8F0()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 128);
  }

  result = COERCE_DOUBLE((*(*v0 + 1176))());
  if (v2)
  {
    result = 8.0;
  }

  *(v0 + 128) = result;
  *(v0 + 136) = 0;
  return result;
}

uint64_t (*sub_1E3AED964(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = sub_1E3AED8F0();
  return sub_1E3AED9AC;
}

void *sub_1E3AED9AC(void *result)
{
  v1 = result[1];
  *(v1 + 128) = *result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t sub_1E3AED9E4(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 144, a3);
  *(v3 + 144) = a1;
  return result;
}

double sub_1E3AEDA5C(uint64_t a1)
{
  result = 14.0;
  if (a1 > 1)
  {
    return 26.0;
  }

  return result;
}

uint64_t sub_1E3AEDA70(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 152, a2);
  v3 = *(v2 + 152);

  return v3;
}

double sub_1E3AEDAB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 152, a2);
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;

  return result;
}

double sub_1E3AEDB3C(uint64_t a1)
{
  result = 0.0;
  if (a1 > 1)
  {
    return 3.0;
  }

  return result;
}

uint64_t sub_1E3AEDB50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 168, a2);
  v3 = *(v2 + 168);

  return v3;
}

double sub_1E3AEDB90(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 168, a2);
  *(v2 + 168) = a1;
  *(v2 + 176) = a2;

  return result;
}

uint64_t sub_1E3AEDC44(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 184, a3);
  *(v3 + 184) = a1;
  return result;
}

uint64_t sub_1E3AEDCE4(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 192, a3);
  *(v3 + 192) = a1;
  return result;
}

uint64_t sub_1E3AEDD40(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 200, a3);
  *(v3 + 200) = a1;
  return result;
}

id sub_1E3AEDD74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 208, a2);
  v3 = *(v2 + 208);

  return v3;
}

void sub_1E3AEDDAC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 208, a2);
  v4 = *(v2 + 208);
  *(v2 + 208) = a1;
}

uint64_t sub_1E3AEDDE8(double a1, uint64_t a2, uint64_t a3)
{
  result = OUTLINED_FUNCTION_14_0(v3 + 216, a3);
  *(v3 + 216) = a1;
  return result;
}

uint64_t sub_1E3AEDE1C()
{
  OUTLINED_FUNCTION_26_44();
  swift_allocObject();
  return sub_1E3AEDE4C();
}

uint64_t sub_1E3AEDE4C()
{
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = sub_1E3AEDA5C;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = sub_1E3AEDB3C;
  *(v0 + 192) = xmmword_1E42B9700;
  *(v0 + 208) = [objc_opt_self() clearColor];
  *(v0 + 216) = 0;

  return sub_1E3C2F9A0();
}

void sub_1E3AEDEE0()
{

  v1 = *(v0 + 208);
}

uint64_t sub_1E3AEDF30()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3AEDF88()
{
  sub_1E3AEDF30();
  OUTLINED_FUNCTION_26_44();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1E3AEDFB4()
{
  v1 = (*v0 + 1816);
  v2 = *v1;
  v3 = (*v1)();
  sub_1E3755B54();
  OUTLINED_FUNCTION_41_32();
  v4 = sub_1E4206F24();
  (*(*v3 + 1776))(v4);

  (v2)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1752))(26);

  OUTLINED_FUNCTION_9_2();
  v8 = *(v7 + 1840);
  v9 = v8();
  OUTLINED_FUNCTION_41_32();
  v10 = sub_1E4206F24();
  (*(*v9 + 752))(v10);

  (v8)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1728))(26);

  (v8)(v13);
  v14 = [objc_opt_self() blackColor];
  v15 = [v14 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v16 + 752))(v15);

  return result;
}

double sub_1E3AEE280(uint64_t a1)
{
  result = 16.0;
  if (a1 > 1)
  {
    return 24.0;
  }

  return result;
}

id sub_1E3AEE294()
{
  v0 = [objc_allocWithZone(VUIScoreboardRowLayout) init];
  OUTLINED_FUNCTION_36();
  (*(v1 + 1720))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C08, &qword_1E42B9718);
  sub_1E4148DE0(sub_1E3AEE6BC);
  OUTLINED_FUNCTION_13();
  v3 = (*(v2 + 744))();
  [v0 setBackgroundColor_];

  OUTLINED_FUNCTION_13();
  (*(v4 + 1744))();
  sub_1E4148DE0(sub_1E3AEE6D0);
  OUTLINED_FUNCTION_13();
  v6 = (*(v5 + 1768))();
  [v0 setSeparatorColor_];

  return v0;
}

uint64_t sub_1E3AEE4B0(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 100, a2);
  *(v2 + 100) = a1;
  *(v2 + 104) = BYTE4(a1) & 1;
  return result;
}

uint64_t sub_1E3AEE568(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 108, a2);
  *(v2 + 108) = a1;
  *(v2 + 112) = BYTE4(a1) & 1;
  return result;
}

void *sub_1E3AEE5E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 120, a2);
  v3 = *(v2 + 120);
  v4 = v3;
  return v3;
}

void sub_1E3AEE620(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 120, a2);
  v4 = *(v2 + 120);
  *(v2 + 120) = a1;
}

uint64_t sub_1E3AEE6A0(uint64_t a1)
{
  *(v1 + 100) = 0;
  *(v1 + 104) = 1;
  *(v1 + 108) = 0;
  *(v1 + 112) = 1;
  *(v1 + 120) = 0;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3AEE6EC()
{
  OUTLINED_FUNCTION_42_6();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3AEE768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C10, &qword_1E42B97E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C18, &qword_1E42B97E8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  *(&v39 + 1) = &unk_1F5D5D5B8;
  *&v40 = &off_1F5D5C878;
  LOBYTE(v38[0]) = 1;
  v14 = j__OUTLINED_FUNCTION_18();
  v15 = sub_1E39C29F0(v38, v14 & 1);
  __swift_destroy_boxed_opaque_existential_1(v38);
  if (v15)
  {
    sub_1E4203704();
    v16 = sub_1E4203734();

    KeyPath = swift_getKeyPath();
    v32[2] = v6;
    v18 = a1;
    v19 = KeyPath;
    sub_1E4203DA4();
    sub_1E4200D94();
    v20 = sub_1E4203DA4();
    v32[1] = a2;
    v22 = v21;
    *&v37[0] = v19;
    *(&v37[0] + 1) = v16;
    v37[1] = v34;
    v37[2] = v35;
    v37[3] = v36;
    *&v37[4] = v20;
    *(&v37[4] + 1) = v21;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C20, &qword_1E42B97F0);
    OUTLINED_FUNCTION_2();
    (*(v24 + 16))(v13, v18, v23);
    memcpy(&v13[*(v10 + 36)], v37, 0x50uLL);
    v38[0] = v19;
    v38[1] = v16;
    v39 = v34;
    v40 = v35;
    v41 = v36;
    v42 = v20;
    v43 = v22;
    sub_1E37E93E8(v37, &v33, &qword_1ECF32C40, &qword_1E42B97F8);
    sub_1E325F6F0(v38, &qword_1ECF32C40, &qword_1E42B97F8);
    sub_1E37E93E8(v13, v9, &qword_1ECF32C18, &qword_1E42B97E8);
    swift_storeEnumTagMultiPayload();
    sub_1E3AEEB08();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v25, &qword_1ECF32C20, &qword_1E42B97F0, v26);
    sub_1E4201F44();
    return sub_1E325F6F0(v13, &qword_1ECF32C18, &qword_1E42B97E8);
  }

  else
  {
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C20, &qword_1E42B97F0);
    OUTLINED_FUNCTION_2();
    (*(v29 + 16))(v9, a1, v28);
    swift_storeEnumTagMultiPayload();
    sub_1E3AEEB08();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v30, &qword_1ECF32C20, &qword_1E42B97F0, v31);
    return sub_1E4201F44();
  }
}

unint64_t sub_1E3AEEB08()
{
  result = qword_1ECF32C28;
  if (!qword_1ECF32C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32C18, &qword_1E42B97E8);
    sub_1E32752B0(&qword_1ECF32C30, &qword_1ECF32C20, &qword_1E42B97F0, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1ECF32C38, &qword_1ECF32C40, &qword_1E42B97F8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32C28);
  }

  return result;
}

uint64_t sub_1E3AEEBF8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6[0] = a1;
  *&v6[1] = a4;
  *&v6[2] = a5;
  return MEMORY[0x1E690DE70](v6, a2, &type metadata for HighlightFlexibleGridRowModifier, a3);
}

unint64_t sub_1E3AEEC5C()
{
  result = qword_1ECF32C48;
  if (!qword_1ECF32C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32C50, &qword_1E42B98C8);
    sub_1E3AEEB08();
    sub_1E32752B0(&qword_1ECF32C30, &qword_1ECF32C20, &qword_1E42B97F0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32C48);
  }

  return result;
}

unint64_t sub_1E3AEED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF32C58;
  if (!qword_1ECF32C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32C58);
  }

  return result;
}

uint64_t sub_1E3AEED68()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_hostedType) == 1)
  {
  }

  else
  {
    v2 = *sub_1E3287198();
    v3 = sub_1E37C085C();

    return v3;
  }
}

uint64_t sub_1E3AEEDE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController____lazy_storage___emptyStateViewModel;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController____lazy_storage___emptyStateViewModel);
  v4 = v3;
  if (v3 == 1)
  {
    type metadata accessor for TimedMetadataViewModelCreator();
    v4 = sub_1E3E9BEFC();
    v5 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_1E3781D80(v5);
  }

  sub_1E37C5408(v3);
  return v4;
}

uint64_t sub_1E3AEEE5C()
{
  v1 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController____lazy_storage___emptyStatePresenter;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController____lazy_storage___emptyStatePresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController____lazy_storage___emptyStatePresenter);
  }

  else
  {
    v3 = v0;
    type metadata accessor for EmptyStatePresenter(0);
    v4 = sub_1E3AEEDE0();
    v2 = sub_1E4138700(v4);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_1E3AEEF18(char a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23_47(&OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_templateController);
  *(v2 + v5) = MEMORY[0x1E69E7CD0];
  *(v2 + *(v6 + 40)) = 0;
  v7 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_currentTimedEntityMapping;
  v8 = sub_1E41FEC34();
  __swift_storeEnumTagSinglePayload(v2 + v7, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedEntityMappingsTask) = 0;
  v9 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedMetadataVendor;
  *(v2 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedMetadataVendor) = 0;
  sub_1E41FFCA4();
  *(v2 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController____lazy_storage___emptyStateViewModel) = 1;
  *(v2 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController____lazy_storage___emptyStatePresenter) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_emptyStateView) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_hostedType) = a1 & 1;
  *(v2 + v9) = a2;

  v14 = type metadata accessor for TimedMetadataViewController(0);
  OUTLINED_FUNCTION_25();
  v12 = objc_msgSendSuper2(v10, v11, v2, v14);

  return v12;
}

uint64_t type metadata accessor for TimedMetadataViewController(uint64_t a1)
{
  result = qword_1EE2943B0;
  if (!qword_1EE2943B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3AEF0B8()
{
  OUTLINED_FUNCTION_23_47(&OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_templateController);
  *(v0 + v1) = MEMORY[0x1E69E7CD0];
  *(v0 + *(v2 + 40)) = 0;
  v3 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_currentTimedEntityMapping;
  v4 = sub_1E41FEC34();
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedEntityMappingsTask) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedMetadataVendor) = 0;
  sub_1E41FFCA4();
  *(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController____lazy_storage___emptyStateViewModel) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController____lazy_storage___emptyStatePresenter) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_emptyStateView) = 0;
  swift_unknownObjectWeakInit();
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3AEF200()
{
  v1 = v0;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for TimedMetadataViewController(0);
  objc_msgSendSuper2(&v34, sel_vui_viewDidLayoutSubviews);
  if (v0[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_hostedType] == 1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_playerViewSize];
    v3 = [v0 view];
    if (!v3)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v4 = v3;
    [v3 bounds];
    v6 = v5;

    if (v2 != v6)
    {
      v7 = [v1 view];
      if (!v7)
      {
LABEL_18:
        __break(1u);
        return;
      }

      v8 = v7;
      [v7 bounds];
      v10 = v9;
      v12 = v11;

      [v1 setPlayerViewSize_];
    }
  }

  v13 = 1;
  sub_1E3AEF49C();
  if ((v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_hostedType] & 1) == 0)
  {
    type metadata accessor for LayoutGrid();
    v14 = &v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_playerViewSize];
    v15 = sub_1E3A2579C(*&v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_playerViewSize]);
    v16 = objc_opt_self();
    v13 = [v16 shouldPlayerTabsUseVerticalLayoutForSize:sub_1E3A24FDC(v15) & 1 isPhoneSizeClass:{*v14, v14[1]}];
  }

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();
  if (OUTLINED_FUNCTION_20_11(v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    v19[1] = v13;
    OUTLINED_FUNCTION_122_0();
    _os_log_impl(v20, v21, v22, v23, v24, 8u);
    OUTLINED_FUNCTION_65_0();
  }

  sub_1E3AEEE5C();
  OUTLINED_FUNCTION_26_0();
  (*(v25 + 160))(v13);

  v26 = *&v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_templateController];
  if (v26)
  {
    v27 = [v26 vuiView];
    if (v27)
    {
      v28 = v27;
      v29 = [v1 vuiView];
      if (v29)
      {
        v30 = v29;
        [v29 bounds];
        OUTLINED_FUNCTION_3();

        v31 = OUTLINED_FUNCTION_6();
        [v32 v33];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}

void sub_1E3AEF49C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C60, &unk_1E42B98F0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - v10;
  v12 = sub_1E41FEC34();
  OUTLINED_FUNCTION_0_10();
  v47 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v46 = v16 - v15;
  v17 = *&OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_previousViewWidth;
  v18 = &v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_playerViewSize];
  if (*&v1[*&OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_previousViewWidth] != *&v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_playerViewSize])
  {
    v44 = v3;
    v19 = v1;
    v20 = sub_1E41FFC94();
    v21 = sub_1E4206814();
    v45 = v19;

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = *&v1[v17];
      *v22 = 134218240;
      *(v22 + 4) = v23;
      *(v22 + 12) = 2048;
      *(v22 + 14) = *v18;
      _os_log_impl(&dword_1E323F000, v20, v21, "view width changed from %f to %f", v22, 0x16u);
      OUTLINED_FUNCTION_6_0();
    }

    type metadata accessor for LayoutGrid();
    v24 = sub_1E3A2579C(*v18);
    v25 = objc_opt_self();
    v26 = [v25 shouldPlayerTabsUseVerticalLayoutForSize:sub_1E3A24FDC(v24) & 1 isPhoneSizeClass:{*v18, v18[1]}];
    v27 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_shouldUseVerticalLayout;
    if (v26 != v45[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_shouldUseVerticalLayout])
    {
      v28 = v26;
      v43 = v8;
      v29 = sub_1E41FFC94();
      v30 = sub_1E4206814();
      if (OUTLINED_FUNCTION_104(v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 67109120;
        *(v31 + 4) = v28;
        _os_log_impl(&dword_1E323F000, v29, v30, "resolveLayout shouldUseVerticalLayout: %{BOOL}d", v31, 8u);
        OUTLINED_FUNCTION_6_0();
      }

      v32 = v45;
      v45[v27] = v28;
      *&v1[v17] = *v18;
      v33 = v43;
      if (v44)
      {
        v34 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_currentTimedEntityMapping;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        sub_1E379D7E4(&v32[v34], v11, &qword_1ECF32C60, &unk_1E42B98F0);
        if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
        {
          sub_1E325F6F0(v11, &qword_1ECF32C60, &unk_1E42B98F0);
        }

        else
        {
          v36 = v46;
          v35 = v47;
          (*(v47 + 32))(v46, v11, v12);
          (*(v35 + 16))(v33, v36, v12);
          OUTLINED_FUNCTION_114();
          __swift_storeEnumTagSinglePayload(v37, v38, v39, v12);
          OUTLINED_FUNCTION_114();
          sub_1E3AF0284(v40, v41, v42);
          sub_1E325F6F0(v33, &qword_1ECF32C60, &unk_1E42B98F0);
          (*(v35 + 8))(v36, v12);
        }
      }
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3AEF8A8()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for TimedMetadataViewController(0);
  objc_msgSendSuper2(&v41, sel_viewDidLoad);
  v1 = v0;
  v2 = sub_1E41FFC94();
  v3 = sub_1E4206814();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_6_21();
    v5 = OUTLINED_FUNCTION_100();
    v40[0] = v5;
    *v4 = 136315138;
    v6 = sub_1E41E1364(v1);
    v8 = sub_1E3270FC8(v6, v7, v40);

    *(v4 + 4) = v8;
    OUTLINED_FUNCTION_24_43();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_7_9();
  }

  sub_1E3AEF49C();
  v14 = sub_1E3AEFD0C(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0]);
  v15 = *&v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_document];
  *&v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_document] = v14;

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v14 + 56))
  {

    v16 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v17 = OUTLINED_FUNCTION_31_4();
    v18 = sub_1E3D9DBC0(v17);

    if (v18)
    {
      type metadata accessor for TimedMetadataTemplateController(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v20 = v19;
        v21 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & *v19) + 0xA30))(v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_hostedType]);
        Strong = swift_unknownObjectWeakLoadStrong();
        v23 = *((*v21 & *v20) + 0x898);
        v24 = v18;
        v25 = v23(Strong);
        v26.n128_u64[0] = *&v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_playerViewSize];
        v27.n128_u64[0] = *&v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_playerViewSize + 8];
        (*((*v21 & *v20) + 0x8B0))(v25, v26, v27);

        v28 = *&v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_templateController];
        *&v1[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_templateController] = v20;
        v29 = v24;

        v30 = v29;
        [v1 vui:v20 addChildViewController:?];
        [v20 vui:1 beginAppearanceTransition:1 animated:?];
        v31 = [v1 vuiView];
        if (v31)
        {
          v32 = v31;
          v33 = [v20 view];

          [v32 vui:v33 addSubview:0 oldView:?];
          [v20 vui:v1 didMoveToParentViewController:?];
          [v20 vui_endAppearanceTransition];
        }

        else
        {
          __break(1u);
        }

        return;
      }
    }

    v37 = sub_1E41FFC94();
    v38 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v38))
    {
      v39 = OUTLINED_FUNCTION_125_0();
      *v39 = 0;
      _os_log_impl(&dword_1E323F000, v37, v38, "failed to create template controller", v39, 2u);
      OUTLINED_FUNCTION_65_0();
    }
  }

  else
  {
    v34 = sub_1E41FFC94();
    v35 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v35))
    {
      v36 = OUTLINED_FUNCTION_125_0();
      *v36 = 0;
      _os_log_impl(&dword_1E323F000, v34, v35, "failed to create initial template view model", v36, 2u);
      OUTLINED_FUNCTION_7_9();
    }
  }
}

uint64_t sub_1E3AEFD0C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(*(v2 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_playerViewSize));
  if (*(v2 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_hostedType) == 1)
  {
    *(v2 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_shouldUseVerticalLayout) = 1;
  }

  type metadata accessor for TimedMetadataViewModelCreator();

  sub_1E3E9945C();
  v4 = v3;

  return v4;
}

void sub_1E3AEFE28(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TimedMetadataViewController(0);
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1 & 1);
  sub_1E3AEFE74();
}

void sub_1E3AEFE74()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  v5 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedEntityMappingsTask;
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedEntityMappingsTask))
  {
    v6 = sub_1E41FFC94();
    v7 = sub_1E4206814();
    if (OUTLINED_FUNCTION_20_11(v7))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_122_0();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v13 = sub_1E3AEED68();
    if (v13)
    {
      v14 = v13;
      sub_1E4206474();
      v15 = OUTLINED_FUNCTION_31_5();
      __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1E4206434();
      OUTLINED_FUNCTION_31_4();

      v19 = sub_1E4206424();
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E85E0];
      v20[2] = v19;
      v20[3] = v21;
      v20[4] = v14;
      v20[5] = v18;

      sub_1E376FE58(0, 0, v1, &unk_1E42B9A70, v20);
      OUTLINED_FUNCTION_31_4();

      *(v2 + v5) = v19;
    }

    else
    {
      v24 = sub_1E41FFC94();
      v22 = sub_1E42067F4();
      if (os_log_type_enabled(v24, v22))
      {
        v23 = OUTLINED_FUNCTION_125_0();
        *v23 = 0;
        _os_log_impl(&dword_1E323F000, v24, v22, "currentVendor is nil", v23, 2u);
        OUTLINED_FUNCTION_6_0();
      }
    }
  }
}

uint64_t sub_1E3AF0104(char a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C60, &unk_1E42B98F0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v19.receiver = v3;
  v19.super_class = type metadata accessor for TimedMetadataViewController(0);
  objc_msgSendSuper2(&v19, sel_viewDidDisappear_, a1 & 1);
  v7 = sub_1E41FFC94();
  v8 = sub_1E4206814();
  if (OUTLINED_FUNCTION_20_11(v8))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_122_0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_65_0();
  }

  v14 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedEntityMappingsTask;
  if (*&v3[OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedEntityMappingsTask])
  {

    sub_1E42064D4();
  }

  *&v3[v14] = 0;

  sub_1E41FEC34();
  v15 = OUTLINED_FUNCTION_31_5();
  __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
  sub_1E3AF0284(v2, 0, 0);
  return sub_1E325F6F0(v2, &qword_1ECF32C60, &unk_1E42B98F0);
}

void sub_1E3AF0284(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C60, &unk_1E42B98F0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v174 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D00, &qword_1E42B9A28);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v174 - v22;
  sub_1E379D7E4(a1, v15, &qword_1ECF32C60, &unk_1E42B98F0);
  v24 = sub_1E41FEC34();
  OUTLINED_FUNCTION_34_4(v15);
  if (v39)
  {
    v25 = &qword_1ECF32C60;
    v26 = &unk_1E42B98F0;
    v27 = v15;
LABEL_6:
    sub_1E325F6F0(v27, v25, v26);
LABEL_7:

    v33 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  sub_1E41FEC24();
  OUTLINED_FUNCTION_5_28();
  (*(v28 + 8))(v15, v24);
  v29 = sub_1E41FEAE4();
  v30 = OUTLINED_FUNCTION_31_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, v31, v29);
  if (EnumTagSinglePayload == 1)
  {
    v25 = &unk_1ECF32D00;
    v26 = &qword_1E42B9A28;
    v27 = v23;
    goto LABEL_6;
  }

  sub_1E41FEAC4();
  (*(*(v29 - 8) + 8))(v23, v29);
  sub_1E3AF2C70();
  v33 = v68;

  if (!v33)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_1E379D7E4(a1, v12, &qword_1ECF32C60, &unk_1E42B98F0);
  OUTLINED_FUNCTION_34_4(v12);
  if (v39)
  {
    v34 = &qword_1ECF32C60;
    v35 = &unk_1E42B98F0;
    v36 = v12;
LABEL_14:
    sub_1E325F6F0(v36, v34, v35);
LABEL_15:

    v71 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  sub_1E41FEC04();
  OUTLINED_FUNCTION_5_28();
  (*(v37 + 8))(v12, v24);
  v38 = sub_1E41FEAE4();
  OUTLINED_FUNCTION_34_4(v20);
  if (v39)
  {
    v34 = &unk_1ECF32D00;
    v35 = &qword_1E42B9A28;
    v36 = v20;
    goto LABEL_14;
  }

  sub_1E41FEAC4();
  OUTLINED_FUNCTION_5_28();
  (*(v69 + 8))(v20, v38);
  sub_1E3AF2C70();
  v71 = v70;

  if (!v71)
  {
    goto LABEL_15;
  }

LABEL_16:
  v40 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_logger;

  v41 = sub_1E41FFC94();
  v42 = sub_1E4206814();
  v43 = OUTLINED_FUNCTION_20_11(v42);
  v175 = a3;
  v174 = v40;
  if (v43)
  {
    v44 = swift_slowAlloc();
    *v44 = 134218240;
    *(v44 + 4) = *(v33 + 16);

    *(v44 + 12) = 2048;
    *(v44 + 14) = *(v71 + 16);

    OUTLINED_FUNCTION_122_0();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
    OUTLINED_FUNCTION_65_0();
  }

  else
  {
  }

  v50 = sub_1E3AEFD0C(v33, v71);

  *(v4 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_document) = v50;

  v183 = 0;
  v51 = MEMORY[0x1E69E7CD0];
  v191 = MEMORY[0x1E69E7CD0];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v52 = *(v50 + 56);
  if (v52)
  {
    v53 = *(*v52 + 464);

    v55 = v53(v54);

    if (v55)
    {
      v56 = sub_1E32AE9B0(v55);
      if (v56)
      {
        v57 = v56;
        if (v56 >= 1)
        {
          v58 = 0;
          while (1)
          {
            if ((v55 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1E6911E60](v58, v55);
            }

            else
            {
            }

            type metadata accessor for CollectionViewModel();
            if (!swift_dynamicCastClass())
            {
              goto LABEL_38;
            }

            OUTLINED_FUNCTION_26_0();
            v61 = (*(v59 + 1040))(v60);
            if (!v61)
            {
              goto LABEL_38;
            }

            v62 = v61;
            v63 = v61 & 0xFFFFFFFFFFFFFF8;
            if (v61 >> 62)
            {
              if (!sub_1E4207384())
              {
LABEL_37:

LABEL_38:

                goto LABEL_39;
              }
            }

            else if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            if ((v62 & 0xC000000000000001) != 0)
            {
              v64 = MEMORY[0x1E6911E60](0, v62);
            }

            else
            {
              if (!*(v63 + 16))
              {
                goto LABEL_143;
              }

              v64 = *(v62 + 32);
            }

            v66 = (*(*v64 + 872))(v65);

            if (!v66)
            {
              goto LABEL_38;
            }

            v67 = v183;
            sub_1E3AF1868(v66);
            v183 = v67;

LABEL_39:
            if (v57 == ++v58)
            {

              v51 = v191;
              goto LABEL_48;
            }
          }
        }

LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }
    }

    v51 = MEMORY[0x1E69E7CD0];
  }

LABEL_48:
  v180 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_existingCellViewModels;

  v196 = MEMORY[0x1E69E7CC0];
  v176 = a2;
  v178 = v50;
  v181 = v72;
  if ((v72 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_0_141();
    sub_1E3AF44E0(v73, v74, &protocol conformance descriptor for ViewModel);
    OUTLINED_FUNCTION_32_0();
    sub_1E4206664();
    v75 = v191;
    v76 = v192;
    v77 = v193;
    v78 = v194;
    v79 = v195;
  }

  else
  {
    OUTLINED_FUNCTION_38_28();
    v76 = v80 + 56;
    v77 = ~v81;
    OUTLINED_FUNCTION_8_20();
    v79 = v82 & v83;

    v78 = 0;
  }

  v179 = v77;
  v84 = (v77 + 64) >> 6;
  v188 = v51 & 0xC000000000000001;
  v85 = v51 & 0xFFFFFFFFFFFFFF8;
  if (v51 < 0)
  {
    v85 = v51;
  }

  v185 = v85;
  v86 = v51 + 56;
  v182 = MEMORY[0x1E69E7CC0];
  v186 = v76;
  v187 = v75;
  v184 = v4;
LABEL_54:
  v87 = v78;
  if (v75 < 0)
  {
    goto LABEL_55;
  }

LABEL_58:
  v91 = v87;
  v92 = v79;
  v78 = v87;
  if (!v79)
  {
    while (1)
    {
      v78 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      if (v78 >= v84)
      {
        goto LABEL_77;
      }

      v92 = *(v76 + 8 * v78);
      ++v91;
      if (v92)
      {
        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_142:
    __break(1u);
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

LABEL_62:
  v90 = (v92 - 1) & v92;
  v89 = *(*(v75 + 48) + ((v78 << 9) | (8 * __clz(__rbit64(v92)))));

  if (!v89)
  {
    goto LABEL_118;
  }

  while (1)
  {
    v190 = v89;
    if (v188)
    {

      v93 = sub_1E42073D4();

      if (v93)
      {

        v87 = v78;
        v79 = v90;
        goto LABEL_71;
      }

LABEL_74:

      MEMORY[0x1E6910BF0](v101);
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v182 = v196;
      v79 = v90;
      v76 = v186;
      v75 = v187;
      goto LABEL_54;
    }

    if (!*(v51 + 16))
    {
      goto LABEL_74;
    }

    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_0_141();
    sub_1E3AF44E0(qword_1EE23BA70, v94, &protocol conformance descriptor for ViewModel);
    sub_1E4205DA4();
    v4 = v51;
    OUTLINED_FUNCTION_38_28();
    v97 = ~v96;
    do
    {
      v98 = v95 & v97;
      if (((*(v86 + (((v95 & v97) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v95 & v97)) & 1) == 0)
      {
        v51 = v4;
        OUTLINED_FUNCTION_35_36();
        goto LABEL_74;
      }

      v189 = *(*(v4 + 48) + 8 * v98);
      OUTLINED_FUNCTION_0_141();
      sub_1E3AF44E0(&qword_1EE23BA60, v99, &protocol conformance descriptor for ViewModel);
      v100 = sub_1E4205E84();
      v95 = v98 + 1;
    }

    while ((v100 & 1) == 0);

    v87 = v78;
    v79 = v90;
    v51 = v4;
    OUTLINED_FUNCTION_35_36();
LABEL_71:
    v76 = v186;
    v75 = v187;
    if ((v187 & 0x8000000000000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_55:
    v88 = sub_1E42073C4();
    if (!v88)
    {
      break;
    }

    v189 = v88;
    type metadata accessor for ViewModel();
    swift_dynamicCast();
    v89 = v190;
    v78 = v87;
    v90 = v79;
    if (!v190)
    {
LABEL_118:
      v75 = v187;
      goto LABEL_77;
    }
  }

  v75 = v187;
LABEL_77:
  sub_1E34AF4DC(v75);

  v102 = *(v4 + v180);

  v196 = MEMORY[0x1E69E7CC0];
  v177 = v51;
  if (v188)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_0_141();
    sub_1E3AF44E0(v103, v104, &protocol conformance descriptor for ViewModel);
    OUTLINED_FUNCTION_32_0();
    sub_1E4206664();
    v105 = v191;
    v86 = v192;
    v106 = v193;
    i = v194;
    v108 = v195;
  }

  else
  {
    OUTLINED_FUNCTION_38_28();
    v106 = ~v109;
    OUTLINED_FUNCTION_8_20();
    v108 = v110 & v111;

    v105 = v51;
    i = 0;
  }

  v179 = v106;
  v112 = (v106 + 64) >> 6;
  v187 = v102 & 0xC000000000000001;
  v113 = v102 & 0xFFFFFFFFFFFFFF8;
  if (v102 < 0)
  {
    v113 = v102;
  }

  v185 = v113;
  v181 = MEMORY[0x1E69E7CC0];
  v186 = v105;
LABEL_83:
  v114 = i;
LABEL_84:
  while ((v105 & 0x8000000000000000) == 0)
  {
    v115 = v114;
    v116 = v108;
    for (i = v114; !v116; ++v115)
    {
      i = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_142;
      }

      if (i >= v112)
      {
        goto LABEL_105;
      }

      v116 = *(v86 + 8 * i);
    }

    v188 = (v116 - 1) & v116;
    v117 = *(*(v105 + 48) + ((i << 9) | (8 * __clz(__rbit64(v116)))));

    if (!v117)
    {
      goto LABEL_105;
    }

LABEL_93:
    v190 = v117;
    if (!v187)
    {
      if (*(v102 + 16))
      {
        type metadata accessor for ViewModel();
        OUTLINED_FUNCTION_0_141();
        sub_1E3AF44E0(qword_1EE23BA70, v120, &protocol conformance descriptor for ViewModel);
        sub_1E4205DA4();
        OUTLINED_FUNCTION_38_28();
        v123 = ~v122;
        while (1)
        {
          v4 = v121 & v123;
          if (((*(v102 + 56 + (((v121 & v123) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v121 & v123)) & 1) == 0)
          {
            break;
          }

          v189 = *(*(v102 + 48) + 8 * v4);
          OUTLINED_FUNCTION_0_141();
          sub_1E3AF44E0(&qword_1EE23BA60, v124, &protocol conformance descriptor for ViewModel);
          v125 = sub_1E4205E84();
          v121 = v4 + 1;
          if (v125)
          {

            v114 = i;
            v108 = v188;
            OUTLINED_FUNCTION_35_36();
            v105 = v186;
            goto LABEL_84;
          }
        }

        OUTLINED_FUNCTION_35_36();
      }

LABEL_102:
      v108 = v188;

      MEMORY[0x1E6910BF0](v126);
      if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v181 = v196;
      v105 = v186;
      goto LABEL_83;
    }

    v119 = sub_1E42073D4();

    if ((v119 & 1) == 0)
    {
      goto LABEL_102;
    }

    v114 = i;
    v108 = v188;
  }

  v118 = sub_1E42073C4();
  if (v118)
  {
    v189 = v118;
    type metadata accessor for ViewModel();
    swift_dynamicCast();
    v117 = v190;
    i = v114;
    v188 = v108;
    v105 = v186;
    if (!v190)
    {
      goto LABEL_105;
    }

    goto LABEL_93;
  }

  v105 = v186;
LABEL_105:
  sub_1E34AF4DC(v105);

  *(v4 + v180) = v177;

  v127 = v178;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v128 = *(v127 + 56);
  if (!v128)
  {

    v144 = sub_1E41FFC94();
    v145 = sub_1E42067F4();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = OUTLINED_FUNCTION_125_0();
      *v146 = 0;
      _os_log_impl(&dword_1E323F000, v144, v145, "createTemplateViewModel returns nil", v146, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    return;
  }

  v129 = *(*v128 + 464);

  v196 = v129(v130);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
  sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6340]);
  LOBYTE(v131) = sub_1E4149048(v131);

  v132 = sub_1E41FFC94();
  v133 = sub_1E4206814();
  v134 = os_log_type_enabled(v132, v133);
  if ((v131 & 1) == 0 || (v175 & 1) == 0)
  {
    v135 = v176;
    if (v134)
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_24_43();
      _os_log_impl(v147, v148, v149, v150, v151, 2u);
      OUTLINED_FUNCTION_7_9();
    }

    [*(v4 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_emptyStateView) removeFromSuperview];
    goto LABEL_134;
  }

  v135 = v176;
  if (v134)
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_24_43();
    _os_log_impl(v136, v137, v138, v139, v140, 2u);
    OUTLINED_FUNCTION_7_9();
  }

  v141 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_emptyStateView;
  v142 = *(v4 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_emptyStateView);
  if (v142)
  {
    v143 = *(v4 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_emptyStateView);
  }

  else
  {
    sub_1E3AEEE5C();
    v196 = sub_1E4139D20();
    v197 = v152;
    v153 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D38, &unk_1E42B9A58));
    v143 = sub_1E4201214();
    v142 = 0;
  }

  v154 = v142;
  v155 = [v143 superview];
  v156 = [v4 vuiView];
  v157 = v156;
  if (!v155)
  {
    if (v156)
    {
LABEL_129:

      goto LABEL_130;
    }

LABEL_133:
    v165 = *(v4 + v141);
    *(v4 + v141) = v143;

LABEL_134:
    if (v135)
    {
      sub_1E3AF1944();
    }

    v166 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_templateController;
    v167 = v182;
    if (*(v4 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_templateController))
    {
      OUTLINED_FUNCTION_88_0();
      v169 = *(v168 + 2696);
      v171 = v170;
      v169(v167);
    }

    v172 = *(v4 + v166);
    if (v172)
    {
      v173 = v172;
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_31_5();
      sub_1E404BB24();
    }

    return;
  }

  if (!v156)
  {
    v157 = v155;
    goto LABEL_129;
  }

  if (v155 == v157)
  {
    goto LABEL_133;
  }

LABEL_130:
  v158 = [v4 vuiView];
  if (!v158)
  {
    goto LABEL_145;
  }

  v159 = v158;
  [v158 bounds];
  OUTLINED_FUNCTION_3();

  v160 = OUTLINED_FUNCTION_6();
  [v161 v162];
  [v143 setAutoresizingMask_];
  v163 = [v4 vuiView];
  if (v163)
  {
    v164 = v163;
    [v163 vui:v143 addSubview:0 oldView:?];

    goto LABEL_133;
  }

LABEL_146:
  __break(1u);
}

void sub_1E3AF1508()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  (*(v3 + 16))(v6 - v5, v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_logger, v1);
  v8 = v0;
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_100();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_1E41E1364(v8);
    v15 = sub_1E3270FC8(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v9, v10, "%s deinit", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v7, v1);
  v16 = type metadata accessor for TimedMetadataViewController(0);
  v18.receiver = v8;
  v18.super_class = v16;
  objc_msgSendSuper2(&v18, sel_dealloc);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AF1868(unint64_t a1)
{
  v2 = sub_1E32AE9B0(a1);
  for (i = 0; v2 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return;
    }

    sub_1E37CB934(&v5, v4);
  }
}

void sub_1E3AF1944()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v58 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v57 = v6 - v5;
  v59 = sub_1E42046B4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v48 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v47 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v47 - v15;
  v16 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  v24 = OUTLINED_FUNCTION_17_2(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  v27 = v25 - v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v47 - v30;
  if (!(v1 >> 62))
  {
    v32 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_19:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v32 = sub_1E4207384();
  if (!v32)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v32 >= 1)
  {
    v33 = 0;
    v62 = v1 & 0xC000000000000001;
    v51 = (v3 + 8);
    v52 = (v18 + 32);
    v47 = (v8 + 16);
    v50 = (v8 + 8);
    v49 = (v18 + 8);
    v55 = v27;
    v56 = v22;
    v53 = v32;
    v54 = v31;
    do
    {
      if (v62)
      {
        v34 = MEMORY[0x1E6911E60](v33, v1, v29);
      }

      else
      {
        v34 = *(v1 + 8 * v33 + 32);
      }

      v35 = *(*v34 + 576);
      v65 = *v34 + 576;
      v66 = v35;
      if (v35())
      {
        OUTLINED_FUNCTION_26_0();
        (*(v36 + 224))();
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v31, 1, 1, v16);
      }

      sub_1E379D7E4(v31, v27, &qword_1ECF2B7B0, &qword_1E429EC30);
      if (__swift_getEnumTagSinglePayload(v27, 1, v16) == 1)
      {
        sub_1E325F6F0(v31, &qword_1ECF2B7B0, &qword_1E429EC30);

        v37 = v27;
      }

      else
      {
        (*v52)(v22, v27, v16);
        sub_1E42046D4();
        v38 = v57;
        sub_1E41FE614();
        v39 = sub_1E41FE5E4();
        v60 = v40;
        v61 = v39;
        (*v51)(v38, v58);
        sub_1E4204674();
        sub_1E4204694();
        sub_1E4204634();
        v32 = v53;
        v31 = v54;
        v41 = sub_1E4204654();
        if ((v66)(v41))
        {
          OUTLINED_FUNCTION_26_0();
          v43 = (*(v42 + 240))(v68);
          if (!__swift_getEnumTagSinglePayload(v44, 1, v16))
          {
            (*v47)(v48, v64, v59);
            sub_1E42046E4();
          }

          v43(v68, 0);
        }

        v45 = *v50;
        v46 = v59;
        (*v50)(v64, v59);
        v45(v63, v46);
        v22 = v56;
        (*v49)(v56, v16);
        v37 = v31;
        v27 = v55;
      }

      ++v33;
      sub_1E325F6F0(v37, &qword_1ECF2B7B0, &qword_1E429EC30);
    }

    while (v32 != v33);
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_1E3AF1EF0()
{
  OUTLINED_FUNCTION_24();
  v0[15] = v1;
  v0[16] = v2;
  v3 = sub_1E4203FC4();
  v0[17] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[18] = v4;
  v0[19] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E4203FF4();
  v0[20] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[21] = v6;
  v0[22] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FFCB4();
  v0[23] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[24] = v8;
  v0[25] = OUTLINED_FUNCTION_86_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32D00, &qword_1E42B9A28);
  OUTLINED_FUNCTION_17_2(v9);
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v10 = sub_1E41FEC34();
  v0[28] = v10;
  OUTLINED_FUNCTION_8_0(v10);
  v0[29] = v11;
  v0[30] = *(v12 + 64);
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C60, &unk_1E42B98F0);
  OUTLINED_FUNCTION_17_2(v13);
  v0[33] = OUTLINED_FUNCTION_86_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D48, &qword_1E42B9A80);
  v0[34] = v14;
  OUTLINED_FUNCTION_8_0(v14);
  v0[35] = v15;
  v0[36] = OUTLINED_FUNCTION_86_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D50, &qword_1E42B9A88);
  v0[37] = v16;
  OUTLINED_FUNCTION_8_0(v16);
  v0[38] = v17;
  v0[39] = OUTLINED_FUNCTION_86_0();
  v0[40] = sub_1E4206434();
  v0[41] = sub_1E4206424();
  v19 = sub_1E42063B4();
  v0[42] = v19;
  v0[43] = v18;

  return MEMORY[0x1EEE6DFA0](sub_1E3AF21F0, v19, v18);
}

uint64_t sub_1E3AF21F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1E41FEEE4();
  v13 = swift_allocObject();
  v12[44] = v13;
  *(v13 + 16) = 0;
  sub_1E42064A4();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v14 = sub_1E4206424();
  v12[45] = v14;
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v12[46] = v15;
  *v15 = v16;
  v17 = OUTLINED_FUNCTION_8_81(v15);
  v23 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v17, v14, v23, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1E3AF22F8()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 344);
  v5 = *(v1 + 336);

  return MEMORY[0x1EEE6DFA0](sub_1E3AF2434, v5, v4);
}

uint64_t sub_1E3AF2434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_34_4(v12[33]);
  if (v13)
  {
    v14 = v12[38];
    v15 = v12[39];
    v17 = v12[36];
    v16 = v12[37];
    v18 = v12[34];
    v19 = v12[35];

    (*(v19 + 8))(v17, v18);
    (*(v14 + 8))(v15, v16);

    OUTLINED_FUNCTION_54();

    return v20();
  }

  else
  {
    v22 = v12[27];
    v23 = OUTLINED_FUNCTION_25_50();
    v73 = v24;
    (v24)(v23);
    sub_1E41FEC24();
    v25 = sub_1E41FEAE4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v25);
    v27 = v12[27];
    if (EnumTagSinglePayload == 1)
    {
      sub_1E325F6F0(v12[27], &unk_1ECF32D00, &qword_1E42B9A28);
      v28 = 0;
    }

    else
    {
      v29 = sub_1E41FEAC4();
      OUTLINED_FUNCTION_5_28();
      (*(v30 + 8))(v27, v25);
      v28 = *(v29 + 16);
    }

    sub_1E41FEC04();
    v31 = OUTLINED_FUNCTION_31_5();
    v33 = __swift_getEnumTagSinglePayload(v31, v32, v25);
    v34 = v12[26];
    if (v33 == 1)
    {
      sub_1E325F6F0(v12[26], &unk_1ECF32D00, &qword_1E42B9A28);
      v35 = 0;
    }

    else
    {
      v36 = sub_1E41FEAC4();
      OUTLINED_FUNCTION_5_28();
      (*(v37 + 8))(v34, v25);
      v35 = *(v36 + 16);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v39 = Strong;
      (*(v12[24] + 16))(v12[25], Strong + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_logger, v12[23]);

      v40 = sub_1E41FFC94();
      v41 = sub_1E4206814();
      if (OUTLINED_FUNCTION_104(v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134218240;
        *(v42 + 4) = v28;
        *(v42 + 12) = 2048;
        *(v42 + 14) = v35;
        _os_log_impl(&dword_1E323F000, v40, v41, "update timedEntityMappings, visualCount: %ld,  audioCount:%ld", v42, 0x16u);
        OUTLINED_FUNCTION_6_0();
      }

      v43 = OUTLINED_FUNCTION_27_0();
      v44(v43);
    }

    v46 = v12[31];
    v45 = v12[32];
    v48 = v12[29];
    v47 = v12[30];
    v49 = v12[28];
    v65 = v12[44];
    v66 = v12[22];
    v71 = v12[21];
    v72 = v12[20];
    v69 = v12[19];
    v70 = v12[18];
    v68 = v12[17];
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v67 = sub_1E4206A04();
    v50 = swift_allocObject();
    v51 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    (*(v48 + 16))(v46, v45, v49);
    v52 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = v50;
    v73(v53 + v52, v46, v49);
    *(v53 + ((v47 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v65;
    v12[6] = sub_1E3AF4458;
    v12[7] = v53;
    v12[2] = MEMORY[0x1E69E9820];
    v12[3] = 1107296256;
    v12[4] = sub_1E329EEC4;
    v12[5] = &block_descriptor_59;
    v54 = _Block_copy(v12 + 2);

    sub_1E4203FE4();
    v12[14] = MEMORY[0x1E69E7CC0];
    sub_1E3AF44E0(&qword_1EE2882E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E32752B0(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000, MEMORY[0x1E69E6328]);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v66, v69, v54);
    _Block_release(v54);

    (*(v70 + 8))(v69, v68);
    (*(v71 + 8))(v66, v72);
    (*(v48 + 8))(v45, v49);

    v55 = sub_1E4206424();
    v12[45] = v55;
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    v12[46] = v56;
    *v56 = v57;
    v58 = OUTLINED_FUNCTION_8_81(v56);
    v64 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v58, v55, v64, v59, v60, v61, v62, v63, a9, a10, a11, a12);
  }
}

void sub_1E3AF2AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C60, &unk_1E42B98F0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22[-v6];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1E41FEC34();
    OUTLINED_FUNCTION_2();
    v12 = *(v11 + 16);
    v13 = OUTLINED_FUNCTION_27_0();
    v12(v13);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3AF0284(v7, *(a3 + 16), 1);
    sub_1E325F6F0(v7, &qword_1ECF32C60, &unk_1E42B98F0);
    swift_beginAccess();
    *(a3 + 16) = 1;
    v17 = OUTLINED_FUNCTION_27_0();
    v12(v17);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v10);
    v21 = OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_currentTimedEntityMapping;
    swift_beginAccess();
    sub_1E3AF4528(v7, v9 + v21);
    swift_endAccess();
  }
}

void sub_1E3AF2C70()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v36 = v6;
  v37 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - v11;
  v13 = v3(0, v10);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = (v17 - v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v38 = &v34 - v22;
  v23 = *(v5 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  v35 = v1;
  (v1)(0, v23, 0, v21);
  v24 = v41;
  v25 = v5 + 32;
  v39 = v15;
  v26 = (v15 + 32);
  if (v23)
  {
    while (1)
    {
      sub_1E327F454(v25, &v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF343A0, &unk_1E42BF640);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v13);
      v30 = *v26;
      v31 = v38;
      (*v26)(v38, v12, v13);
      v30(v19, v31, v13);
      v41 = v24;
      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        v35(v32 > 1, v33 + 1, 1);
        v24 = v41;
      }

      *(v24 + 16) = v33 + 1;
      v30((v24 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33), v19, v13);
      v25 += 40;
      if (!--v23)
      {
        goto LABEL_8;
      }
    }

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    sub_1E325F6F0(v12, v36, v37);
  }

LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AF2EF0(uint64_t a1, double a2, double a3)
{
  v5 = v3;
  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();
  if (OUTLINED_FUNCTION_20_11(v9))
  {
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = OUTLINED_FUNCTION_100();
    v20 = v11;
    *v10 = 136315138;
    v12 = sub_1E4206E54();
    v14 = sub_1E3270FC8(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v8, v4, "setPlayerViewSize: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }

  v15 = (v5 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_playerViewSize);
  *v15 = a2;
  v15[1] = a3;
  if (*(v5 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_templateController))
  {
    OUTLINED_FUNCTION_88_0();
    v17 = *(v16 + 2224);
    v19 = v18;
    v17(a2, a3);
  }
}

void sub_1E3AF30E4(uint64_t a1)
{
  swift_unknownObjectWeakAssign();
  if (*(v1 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_templateController))
  {
    OUTLINED_FUNCTION_88_0();
    v3 = *(v2 + 2200);
    v6 = v4;
    v5 = swift_unknownObjectRetain();
    v3(v5);
  }
}

void sub_1E3AF3260()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_templateController))
  {
    OUTLINED_FUNCTION_88_0();
    v2 = *(v1 + 440);
    v4 = v3;
    v5 = v2();
    [v5 frame];
    OUTLINED_FUNCTION_3();

    v6.origin.x = OUTLINED_FUNCTION_6();
    CGRectGetHeight(v6);
  }
}

void sub_1E3AF3354()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_32_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v36 - v16;
  v18 = v5;
  sub_1E379D7E4(v3, v36 - v16, &unk_1ECF28E20, &unk_1E42986D0);
  v19 = v5;
  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v36[1] = v3;
    v22 = OUTLINED_FUNCTION_100();
    v39 = swift_slowAlloc();
    *v22 = 134218498;
    *(v22 + 4) = v7;
    *(v22 + 12) = 2080;
    v36[0] = v18;
    if (v18)
    {
      v23 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
      v24 = v19;
    }

    else
    {
      v24 = 0;
      v23 = 0;
      *(&v37 + 1) = 0;
      *&v38 = 0;
    }

    *&v37 = v24;
    *(&v38 + 1) = v23;
    v25 = v19;
    v26 = sub_1E3294FA4(&v37);
    v28 = sub_1E3270FC8(v26, v27, &v39);

    *(v22 + 14) = v28;
    *(v22 + 22) = 2080;
    sub_1E379D7E4(v17, v14, &unk_1ECF28E20, &unk_1E42986D0);
    v29 = sub_1E41FE5D4();
    OUTLINED_FUNCTION_34_4(v14);
    if (v30)
    {
      sub_1E325F6F0(v14, &unk_1ECF28E20, &unk_1E42986D0);
      v37 = 0u;
      v38 = 0u;
    }

    else
    {
      *(&v38 + 1) = v29;
      __swift_allocate_boxed_opaque_existential_1(&v37);
      OUTLINED_FUNCTION_5_28();
      (*(v31 + 32))();
    }

    sub_1E3294FA4(&v37);
    sub_1E325F6F0(v17, &unk_1ECF28E20, &unk_1E42986D0);
    v32 = OUTLINED_FUNCTION_27_0();
    v35 = sub_1E3270FC8(v32, v33, v34);

    *(v22 + 24) = v35;
    _os_log_impl(&dword_1E323F000, v20, v21, "Update timed metadata view with playback rate: %f elapsed time: %s timestamp: %s", v22, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v18 = v36[0];
  }

  else
  {

    sub_1E325F6F0(v17, &unk_1ECF28E20, &unk_1E42986D0);
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedMetadataVendor))
  {
    sub_1E41FF1C4();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_31_4();

      if (v18)
      {
        [v19 doubleValue];
      }

      sub_1E41FF1A4();
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3AF379C()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C68, &qword_1E42B9900);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v54 = (&v49 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32C70, &unk_1E42B9908);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v53 = sub_1E41FEE84();
  OUTLINED_FUNCTION_0_10();
  v51 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  sub_1E41FEE64();
  OUTLINED_FUNCTION_0_10();
  v49 = v18;
  v50 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v22 = v3;
  v23 = sub_1E41FFC94();
  v24 = sub_1E4206814();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_6_21();
    v26 = swift_slowAlloc();
    *v25 = 138412290;
    *(v25 + 4) = v22;
    *v26 = v22;
    v27 = v22;
    _os_log_impl(&dword_1E323F000, v23, v24, "Update timed metadata view with playbackInfo: %@", v25, 0xCu);
    sub_1E325F6F0(v26, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_6_0();
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI27TimedMetadataViewController_timedMetadataVendor) && (sub_1E41FF1C4(), swift_dynamicCastClass()))
  {

    v28 = [v22 programId];
    sub_1E4205F14();

    sub_1E3AF4040(v22);
    [v22 featureStartTime];
    sub_1E3AF40A4(v22);
    sub_1E41FEE54();
    [v22 currentTime];
    v29 = [v22 timeStamp];
    sub_1E41FE584();

    sub_1E41FE5D4();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    [v22 playbackRate];
    v34 = [v22 audioLanguage];
    sub_1E4205F14();

    sub_1E41FEE74();
    v36 = v49;
    v35 = v50;
    (*(v49 + 16))(v52, v21, v50);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v35);
    sub_1E41FF194();
    v40 = v51;
    v41 = v53;
    (*(v51 + 16))(v54, v16, v53);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
    sub_1E41FEE94();

    (*(v40 + 8))(v16, v41);
    (*(v36 + 8))(v21, v35);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    v54 = sub_1E41FFC94();
    v45 = sub_1E42067F4();
    if (os_log_type_enabled(v54, v45))
    {
      v46 = OUTLINED_FUNCTION_125_0();
      *v46 = 0;
      _os_log_impl(&dword_1E323F000, v54, v45, "vendor isn't TimerBasedMetadataVendor", v46, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_54_0();
  }
}

void sub_1E3AF3D38(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_2(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_25_50();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_25_50();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1E3AF3E90()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v10 = v9;
  if (v11)
  {
    v12 = *(v1 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < v0)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= v0)
      {
        v13 = v0;
      }
    }
  }

  else
  {
    v13 = v0;
  }

  v14 = *(v1 + 16);
  if (v13 <= v14)
  {
    v15 = *(v1 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v16 = v7(0);
  OUTLINED_FUNCTION_8_0(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v22 = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v22 - v20 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((v22 - v20) / v18);
LABEL_19:
  v24 = *(v7(0) - 8);
  if (v10)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_1E3AF3D38(v8 + v25, v14, v21 + v25, v5);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AF4040(void *a1)
{
  v1 = [a1 adamId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3AF40A4(void *a1)
{
  v1 = [a1 rawTimedMetadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E41FE464();

  return v3;
}

unint64_t sub_1E3AF410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF32C80;
  if (!qword_1ECF32C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32C80);
  }

  return result;
}

void sub_1E3AF4168(uint64_t a1)
{
  sub_1E3AF4290(319);
  if (v1 <= 0x3F)
  {
    sub_1E41FFCB4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E3AF4290(uint64_t a1)
{
  if (!qword_1ECF32C90)
  {
    sub_1E41FEC34();
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF32C90);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TimedMetadataViewController.HostedType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3AF43C4()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E37E1058;

  return sub_1E3AF1EF0();
}

void sub_1E3AF4458()
{
  v1 = sub_1E41FEC34();
  OUTLINED_FUNCTION_8_0(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1E3AF2AD4(v7, v0 + v6, v8);
}

uint64_t sub_1E3AF44E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3AF4528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32C60, &unk_1E42B98F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AF4598()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3AF460C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3AF4598();
  *a1 = result;
  return result;
}

uint64_t sub_1E3AF4664()
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_82();
  return sub_1E4200684();
}

uint64_t sub_1E3AF46E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v12 = swift_allocObject();
  sub_1E3AF4760(a1, a2, a3, a4, a5, a6 & 1);
  return v12;
}

void sub_1E3AF4760(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v11 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_preferredLayout;
  *(v6 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_preferredLayout) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_downloadStatusViewModel;
  *(v6 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_downloadStatusViewModel) = 0;
  v34 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_contextMenuViewModel;
  *(v6 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_contextMenuViewModel) = 0;
  *(v6 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_cancellables) = MEMORY[0x1E69E7CC0];
  *(v6 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_shouldPublishChanges) = 0;
  v13 = v6 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_multipleLineLayoutWithMaxWidth;
  *v13 = 0;
  v37 = v13;
  *(v13 + 8) = 1;
  OUTLINED_FUNCTION_11_3(v6 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel__textViewModel, v45);
  v44[0] = a1;
  type metadata accessor for TextViewModel();
  v36 = a1;

  sub_1E4200634();
  swift_endAccess();
  OUTLINED_FUNCTION_3_0(v6 + v11, v45);
  *(v6 + v11) = a2;

  v14 = sub_1E32AE9B0(a3);
  v15 = 0;
  v16 = a3 & 0xC000000000000001;
  while (v14 != v15)
  {
    if (v16)
    {
      v17 = MEMORY[0x1E6911E60](v15, a3);
    }

    else
    {
      if (v15 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v17 = *(a3 + 8 * v15 + 32);
    }

    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    if (*v17 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
    {
      goto LABEL_11;
    }

    ++v15;
  }

  v17 = 0;
LABEL_11:
  OUTLINED_FUNCTION_3_0(v6 + v12, v44);
  *(v6 + v12) = v17;

  for (i = 0; ; ++i)
  {
    if (v14 == i)
    {

      v19 = 0;
      goto LABEL_27;
    }

    if (v16)
    {
      v20 = MEMORY[0x1E6911E60](i, a3);
      v19 = v20;
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v19 = *(a3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_36;
    }

    v43 = *(v19 + 98);
    v42 = 67;
    sub_1E3742F1C(v20, v21, v22);
    sub_1E4206254();
    sub_1E4206254();
    if (v41[0] == v39 && v41[1] == v40)
    {
      break;
    }

    v24 = sub_1E42079A4();

    if (v24)
    {
      goto LABEL_26;
    }
  }

LABEL_26:

LABEL_27:
  OUTLINED_FUNCTION_3_0(v6 + v34, v41);
  *(v6 + v34) = v19;

  *(v6 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_supplementaryViewsAlignment) = a4;
  v25 = sub_1E3C27024();
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  sub_1E384EE08(*(v36 + 98));
  v30 = v29;
  v32 = v31;
  v39 = v27;
  v40 = v28;

  MEMORY[0x1E69109E0](v30, v32);

  v33 = (v6 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_identifier);
  *v33 = v27;
  v33[1] = v28;
  OUTLINED_FUNCTION_3_0(v37, &v39);
  *v37 = a5;
  *(v37 + 8) = a6 & 1;
}

void sub_1E3AF4B30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE60, qword_1E42D2830);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  if (sub_1E3DC7DF4() || (type metadata accessor for TextViewModel(), v18[3] = MEMORY[0x1E69E6158], v18[0] = 0, v18[1] = 0xE000000000000000, OUTLINED_FUNCTION_25(), sub_1E3C27638(v12, v13, v14, v15, 0)))
  {
    v16 = swift_allocObject();

    sub_1E3AF4760(v17, v5, v3, v1, 0, 1);

    sub_1E3DC7F30();
    swift_allocObject();
    swift_weakInit();
    sub_1E328FCF4(&qword_1ECF2CE80, &qword_1ECF2CE60, qword_1E42D2830);
    sub_1E4200844();

    (*(v8 + 8))(v11, v6);
    OUTLINED_FUNCTION_11_3(v16 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_cancellables, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580, &qword_1E42A9B90);
    sub_1E328FCF4(&qword_1EE23B5E0, &qword_1ECF32580, &qword_1E42A9B90);
    sub_1E42004D4();
    swift_endAccess();
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AF4DE0()
{
  OUTLINED_FUNCTION_31_1();
  v40 = v1;
  v41 = v2;
  v4 = v3;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v38 = v6;
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v37 = v8 - v7;
  v36 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v35 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v12 - v11);
  v13 = sub_1E32AE9B0(v4);
  v14 = 0;
  v15 = v4 & 0xC000000000000001;
  while (1)
  {
    if (v13 == v14)
    {
      v16 = 0;
LABEL_11:
      for (i = 0; ; ++i)
      {
        if (v13 == i)
        {
          v18 = 0;
          goto LABEL_26;
        }

        if (v15)
        {
          v19 = MEMORY[0x1E6911E60](i, v4);
          v18 = v19;
        }

        else
        {
          if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v18 = *(v4 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_51;
        }

        LOWORD(v49) = *(v18 + 98);
        LOWORD(v48) = 67;
        sub_1E3742F1C(v19, v20, v21);
        sub_1E4206254();
        sub_1E4206254();
        if (v42 == v50[0] && v43 == v50[1])
        {
          break;
        }

        v23 = sub_1E42079A4();

        if (v23)
        {
          goto LABEL_26;
        }
      }

LABEL_26:
      v24 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_downloadStatusViewModel;
      OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_downloadStatusViewModel, v50);
      if (*(v0 + v24))
      {
        v42 = *(v0 + v24);
        if (v16)
        {
          v49 = v16;
          type metadata accessor for DownloadStateIndicatorViewModel(0);
          sub_1E3AF6CAC(&qword_1ECF32D60, type metadata accessor for DownloadStateIndicatorViewModel);

          OUTLINED_FUNCTION_18_5();
          v25 = sub_1E4205E84();

          if (v25)
          {
            goto LABEL_29;
          }
        }
      }

      else if (!v16)
      {
LABEL_29:
        v26 = 0;
        goto LABEL_32;
      }

      *(v0 + v24) = v16;

      v26 = 1;
LABEL_32:
      v27 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_contextMenuViewModel;
      OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_contextMenuViewModel, &v49);
      if (*(v0 + v27))
      {
        v42 = *(v0 + v27);
        if (v18)
        {
          v48 = v18;
          type metadata accessor for ViewModel();
          sub_1E3AF6CAC(&qword_1EE23BA60, type metadata accessor for ViewModel);

          OUTLINED_FUNCTION_18_5();
          v28 = sub_1E4205E84();

          if (v28)
          {
LABEL_38:
            v29 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_supplementaryViewsAlignment;
            OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_supplementaryViewsAlignment, &v48);
            if (sub_1E4201B54())
            {
              if ((v26 & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            else
            {
              *(v0 + v29) = v41;
            }

            if (*(v0 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_shouldPublishChanges))
            {
              if (v40)
              {
                sub_1E32ADE38();
                v30 = sub_1E4206A04();
                v46 = sub_1E3AF6C20;
                v47 = v0;
                v42 = MEMORY[0x1E69E9820];
                v43 = 1107296256;
                v44 = sub_1E378AEA4;
                v45 = &block_descriptor_60;
                v31 = _Block_copy(&v42);

                sub_1E4203FE4();
                v42 = MEMORY[0x1E69E7CC0];
                sub_1E3AF6CAC(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
                sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
                sub_1E42072E4();
                MEMORY[0x1E6911380](0, v34, v37, v31);
                _Block_release(v31);

                (*(v38 + 8))(v37, v39);
                (*(v35 + 8))(v34, v36);
LABEL_48:
                OUTLINED_FUNCTION_25_2();
                return;
              }

              OUTLINED_FUNCTION_0_142();
              sub_1E3AF6CAC(v32, v33);
              sub_1E4200514();
              sub_1E4200594();

LABEL_47:

              goto LABEL_48;
            }

LABEL_45:

            goto LABEL_47;
          }
        }
      }

      else if (!v18)
      {
        goto LABEL_38;
      }

      *(v0 + v27) = v18;

      v26 = 1;
      goto LABEL_38;
    }

    if (v15)
    {
      v16 = MEMORY[0x1E6911E60](v14, v4);
    }

    else
    {
      if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v16 = *(v4 + 8 * v14 + 32);
    }

    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (*v16 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
    {
      goto LABEL_11;
    }

    ++v14;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

BOOL sub_1E3AF54BC()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_downloadStatusViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v0 + v1))
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_contextMenuViewModel;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + v3) != 0;
}

uint64_t sub_1E3AF552C()
{
  v1 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel__textViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D58, &qword_1E42B9AD8);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1E3AF55E4()
{
  sub_1E3AF552C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1E3AF563C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(type metadata accessor for RichTextView(0) + 24);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RichTextViewModel(0);
  OUTLINED_FUNCTION_0_142();
  sub_1E3AF6CAC(v7, v8);

  *a3 = sub_1E42010C4();
  a3[1] = v9;
  a3[2] = a2;
  *(a1 + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_shouldPublishChanges) = 1;

  return result;
}

void sub_1E3AF5728()
{
  OUTLINED_FUNCTION_31_1();
  v53 = v1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D68, &qword_1E42B9B18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_17_3(v47 - v3);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D70, &qword_1E42B9B20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v50 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17_3(v47 - v8);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D78, &qword_1E42B9B28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_17_3(v47 - v10);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D80, &qword_1E42B9B30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v47 - v12;
  v14 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v21 = *(v0 + 8);
  v47[2] = sub_1E3AF54BC();
  sub_1E4201D64();
  OUTLINED_FUNCTION_20_2();
  v47[3] = sub_1E4201B54();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E4201D64();
  sub_1E4201B54();
  sub_1E4201D54();
  OUTLINED_FUNCTION_20_2();
  sub_1E4201B54();
  type metadata accessor for RichTextView(0);
  sub_1E3746E10(v20);
  v22 = sub_1E3B0352C();
  (*(v16 + 8))(v20, v14);
  if (v22)
  {
    *v13 = sub_1E4201D54();
    *(v13 + 1) = 0;
    v13[16] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32DB8, &qword_1E42B9B48);
    sub_1E3AF5D28();
    v23 = &qword_1ECF32D80;
    v24 = &qword_1E42B9B30;
    OUTLINED_FUNCTION_31_38();
    sub_1E3743538(v25, v26, v27, v28);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v29, &qword_1ECF32D80, &qword_1E42B9B30);
    sub_1E3AF6D10();
    sub_1E4201F44();
    v30 = v13;
  }

  else
  {
    v31 = v52;
    v32 = v55;
    v33 = sub_1E4201B84();
    v34 = v49;
    *v49 = v33;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32D88, &qword_1E42B9B38);
    sub_1E3AF66E8();
    *(v34 + *(v48 + 36)) = 256;
    v35 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_preferredLayout;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v36 = *(v21 + v35);
    if (v36)
    {
      v37 = *(*v36 + 328);

      v37(v38);
    }

    sub_1E4203DA4();
    sub_1E42015C4();
    v39 = v50;
    sub_1E3741EA0(v34, v50, &qword_1ECF32D68, &qword_1E42B9B18);
    memcpy((v39 + *(v32 + 36)), v56, 0x70uLL);
    v23 = &qword_1ECF32D70;
    v24 = &qword_1E42B9B20;
    OUTLINED_FUNCTION_31_38();
    sub_1E3741EA0(v40, v41, v42, v43);
    sub_1E3743538(v34, v31, &qword_1ECF32D70, &qword_1E42B9B20);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E328FCF4(v44, v45, v46);
    sub_1E3AF6D10();
    OUTLINED_FUNCTION_20_60();
    sub_1E4201F44();
    v30 = v34;
  }

  sub_1E325F6F0(v30, v23, v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AF5D28()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v37 = v2;
  v36[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B278, &qword_1E429FF40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v36 - v4);
  v36[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32DD0, &unk_1E42B9C80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32DD8, &unk_1E42B9C90);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v16);
  v36[4] = v1;
  v17 = *(v1 + 8) + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_multipleLineLayoutWithMaxWidth;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v17 + 8) == 1)
  {
    sub_1E3AF4598();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v11 + 16))(v8, v14, v9);
    swift_storeEnumTagMultiPayload();
    v18 = sub_1E3AF7210();
    OUTLINED_FUNCTION_0_21(v18);
    OUTLINED_FUNCTION_20_60();
    sub_1E4201F44();
    (*(v11 + 8))(v14, v9);
  }

  else
  {
    *v5 = sub_1E395FA08(*v17, 0);
    v36[1] = v9;
    sub_1E3AF4598();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    sub_1E3743538(v5, v8, &qword_1ECF2B278, &qword_1E429FF40);
    swift_storeEnumTagMultiPayload();
    v19 = sub_1E3AF7210();
    OUTLINED_FUNCTION_0_21(v19);
    OUTLINED_FUNCTION_20_60();
    sub_1E4201F44();
    sub_1E325F6F0(v5, &qword_1ECF2B278, &qword_1E429FF40);
  }

  sub_1E3AF6168();
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v20, v21, v22, v23);
  v24 = v37;
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v25, v26, v27, v28);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32DE8, &qword_1E42B9CA0) + 48);
  memcpy(v39, v38, 0x62uLL);
  memcpy((v24 + v29), v38, 0x62uLL);
  sub_1E3743538(v39, v40, &qword_1ECF32DF0, &qword_1E42B9CA8);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v30, v31, v32);
  memcpy(v40, v38, 0x62uLL);
  sub_1E325F6F0(v40, &qword_1ECF32DF0, &qword_1E42B9CA8);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v33, v34, v35);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AF6168()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v78 = v2;
  v3 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = (v8 - v7);
  type metadata accessor for RichTextView(0);
  sub_1E3746E10(v9);
  v10 = sub_1E3B0352C();
  (*(v5 + 8))(v9, v3);
  if (v10)
  {
    sub_1E4201D54();
    v81 = 0;
    v11 = *(v1 + 8);
    v12 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_downloadStatusViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v11 + v12))
    {

      OUTLINED_FUNCTION_25();
      sub_1E3F66914(v13, v14, v15, v16, 0, v17);
      OUTLINED_FUNCTION_9_81();
      sub_1E3743538(v86, v84, &qword_1ECF32E10, &unk_1E42B9CD0);
      sub_1E3743538(v83, v84, &qword_1ECF32E18, &qword_1E42E0410);
    }

    else
    {
      OUTLINED_FUNCTION_32_43();
    }

    v25 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_contextMenuViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v11 + v25))
    {
      OUTLINED_FUNCTION_8();
      v27 = *(v26 + 624);

      v29 = v27(v28);
      if (v29)
      {
        v30 = v29;
        OUTLINED_FUNCTION_8();
        v32 = (*(v31 + 392))();
        sub_1E397F070(v30, v32, v84);
        OUTLINED_FUNCTION_23_48();
        OUTLINED_FUNCTION_22_49();

        sub_1E3743538(v82, v85, &qword_1ECF2C5D0, &qword_1E42E7120);
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_14_93();
    v41 = OUTLINED_FUNCTION_1_139();
    sub_1E3AF72E0(v41);
    OUTLINED_FUNCTION_13_88();
    v42 = OUTLINED_FUNCTION_1_139();
    sub_1E3AF7344(v42, v43, v44, v45);
    v46 = OUTLINED_FUNCTION_1_139();
    sub_1E3AF7344(v46, v47, v48, v49);
    OUTLINED_FUNCTION_19_65();
    OUTLINED_FUNCTION_7_112();
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v50, v51, v52, v53);
    OUTLINED_FUNCTION_82();
    sub_1E325F6F0(v54, v55, v56);
    memcpy(&v79[7], v82, 0x49uLL);
    v85[0] = 0;
    v57 = OUTLINED_FUNCTION_25_51(v81);
    v58 = v79;
  }

  else
  {
    sub_1E4201B84();
    v81 = 0;
    v18 = *(v1 + 8);
    v19 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_downloadStatusViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v18 + v19))
    {

      OUTLINED_FUNCTION_25();
      sub_1E3F66914(v20, v21, v22, v23, 0, v24);
      OUTLINED_FUNCTION_9_81();
      sub_1E3743538(v86, v84, &qword_1ECF32E10, &unk_1E42B9CD0);
      sub_1E3743538(v83, v84, &qword_1ECF32E18, &qword_1E42E0410);
    }

    else
    {
      OUTLINED_FUNCTION_32_43();
    }

    v33 = OBJC_IVAR____TtC8VideosUI17RichTextViewModel_contextMenuViewModel;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v18 + v33))
    {
      OUTLINED_FUNCTION_8();
      v35 = *(v34 + 624);

      v37 = v35(v36);
      if (v37)
      {
        v38 = v37;
        OUTLINED_FUNCTION_8();
        v40 = (*(v39 + 392))();
        sub_1E397F070(v38, v40, v84);
        OUTLINED_FUNCTION_23_48();
        OUTLINED_FUNCTION_22_49();

        sub_1E3743538(v82, v85, &qword_1ECF2C5D0, &qword_1E42E7120);
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_14_93();
    v59 = OUTLINED_FUNCTION_1_139();
    sub_1E3AF72E0(v59);
    OUTLINED_FUNCTION_13_88();
    v60 = OUTLINED_FUNCTION_1_139();
    sub_1E3AF7344(v60, v61, v62, v63);
    v64 = OUTLINED_FUNCTION_1_139();
    sub_1E3AF7344(v64, v65, v66, v67);
    OUTLINED_FUNCTION_19_65();
    OUTLINED_FUNCTION_7_112();
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v68, v69, v70, v71);
    OUTLINED_FUNCTION_82();
    sub_1E325F6F0(v72, v73, v74);
    memcpy(&v80[7], v82, 0x49uLL);
    v85[0] = 1;
    v57 = OUTLINED_FUNCTION_25_51(v81);
    v58 = v80;
  }

  memcpy(v57, v58, 0x50uLL);
  v79[177] = v85[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E00, &qword_1E42B9CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E08, &unk_1E42B9CC0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_82();
  sub_1E328FCF4(v75, v76, v77);
  sub_1E328FCF4(&qword_1EE288608, &qword_1ECF32E08, &unk_1E42B9CC0);
  sub_1E4201F44();
  memcpy(v78, v84, 0x62uLL);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AF66E8()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v0;
  v47 = v1;
  v3 = v2;
  v45 = v4;
  v6 = v5;
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B278, &qword_1E429FF40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v44 - v8);
  v44[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32DD0, &unk_1E42B9C80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32DD8, &unk_1E42B9C90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_4_6();
  v44[5] = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v44[4] = v3;
  v23 = *(v3 + 8) + OBJC_IVAR____TtC8VideosUI17RichTextViewModel_multipleLineLayoutWithMaxWidth;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v23 + 8) == 1)
  {
    sub_1E3AF4598();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    (*(v15 + 16))(v12, v18, v13);
    swift_storeEnumTagMultiPayload();
    v24 = sub_1E3AF7210();
    OUTLINED_FUNCTION_0_21(v24);
    sub_1E4201F44();
    (*(v15 + 8))(v18, v13);
  }

  else
  {
    *v9 = sub_1E395FA08(*v23, 0);
    v44[1] = v13;
    sub_1E3AF4598();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    sub_1E3743538(v9, v12, &qword_1ECF2B278, &qword_1E429FF40);
    swift_storeEnumTagMultiPayload();
    v25 = sub_1E3AF7210();
    OUTLINED_FUNCTION_0_21(v25);
    sub_1E4201F44();
    sub_1E325F6F0(v9, &qword_1ECF2B278, &qword_1E429FF40);
  }

  sub_1E3AF6168();
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v26, v27, v28, v29);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 9) = (v45 & 1) == 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32E20, &unk_1E42B9CE0);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v31, v32, v33, v34);
  v35 = v6 + v30[16];
  *v35 = 0;
  *(v35 + 8) = 0;
  *(v35 + 9) = (v46 & 1) == 0;
  v36 = v30[20];
  memcpy(v49, v48, 0x62uLL);
  memcpy((v6 + v36), v48, 0x62uLL);
  v37 = v6 + v30[24];
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 9) = (v47 & 1) == 0;
  sub_1E3743538(v49, v50, &qword_1ECF32DF0, &qword_1E42B9CA8);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v38, v39, v40);
  memcpy(v50, v48, 0x62uLL);
  sub_1E325F6F0(v50, &qword_1ECF32DF0, &qword_1E42B9CA8);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v41, v42, v43);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3AF6BA0(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (v1)
    {

      sub_1E3AF4664();
    }
  }

  return result;
}

double sub_1E3AF6C20()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_142();
  sub_1E3AF6CAC(v0, v1);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

uint64_t sub_1E3AF6CAC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3AF6D10()
{
  result = qword_1ECF32D98;
  if (!qword_1ECF32D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32D70, &qword_1E42B9B20);
    sub_1E3AF6D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32D98);
  }

  return result;
}

unint64_t sub_1E3AF6D9C()
{
  result = qword_1ECF32DA0;
  if (!qword_1ECF32DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32D68, &qword_1E42B9B18);
    sub_1E328FCF4(&qword_1ECF32DA8, &qword_1ECF32DB0, &qword_1E42B9B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32DA0);
  }

  return result;
}

void sub_1E3AF6E78(uint64_t a1)
{
  sub_1E3AF70F4(319, &qword_1EE28A070, type metadata accessor for TextViewModel, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3AF6FA4(uint64_t a1)
{
  sub_1E3AF7060(319);
  if (v1 <= 0x3F)
  {
    sub_1E3AF70F4(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E3AF7060(uint64_t a1)
{
  if (!qword_1EE289D60)
  {
    type metadata accessor for RichTextViewModel(255);
    sub_1E3AF6CAC(&qword_1EE279A08, type metadata accessor for RichTextViewModel);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289D60);
    }
  }
}

void sub_1E3AF70F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3AF7158()
{
  result = qword_1ECF32DC0;
  if (!qword_1ECF32DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32DC8, &unk_1E42B9C70);
    sub_1E328FCF4(&qword_1ECF32D90, &qword_1ECF32D80, &qword_1E42B9B30);
    sub_1E3AF6D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32DC0);
  }

  return result;
}

unint64_t sub_1E3AF7210()
{
  result = qword_1ECF32DE0;
  if (!qword_1ECF32DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B278, &qword_1E429FF40);
    sub_1E328FCF4(&qword_1EE289DE0, &qword_1ECF2B388, &qword_1E42A0238);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF32DE0);
  }

  return result;
}

uint64_t sub_1E3AF72E0(uint64_t result)
{
  if (result)
  {

    return sub_1E380E99C();
  }

  return result;
}

uint64_t sub_1E3AF7344(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {

    return sub_1E389BF58(a3, a4);
  }

  return result;
}

void OUTLINED_FUNCTION_32_43()
{
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 28) = 0;
}

id sub_1E3AF73C0()
{
  result = sub_1E3AF79AC();
  if (!v1)
  {
    return sub_1E393F300();
  }

  return result;
}

uint64_t sub_1E3AF73E0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title);
  v4 = *(v2 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title);
  v5 = *(v2 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1E37E9E48(v4, v5);
}

uint64_t (*sub_1E3AF7400(id *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1E3AF73C0();
  a1[1] = v3;
  return sub_1E3AF7448;
}

uint64_t sub_1E3AF7448(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_1E3AF73E0(*a1, v2);
  }

  sub_1E3AF73E0(v3, v2);
}

void sub_1E3AF74BC()
{
  v1 = OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage___episodes;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage___episodes);
  if (v2 != 1)
  {
    goto LABEL_33;
  }

  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandBaseMediaEntity_managedObject);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_32:
    v30 = *(v0 + v1);
    *(v0 + v1) = v13;

    sub_1E37C3B04(v30);
LABEL_33:
    sub_1E37C3ADC(v2);
    return;
  }

  v5 = v4;
  v6 = v3;
  v7 = sub_1E3AF91F8(v5);
  if (!v7)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_31:
    *&v35 = v14;

    sub_1E3AF7FB4(&v35);

    v13 = v35;
    goto LABEL_32;
  }

  v8 = v7;
  v33 = v0;
  v31 = v6;
  v32 = v1;
  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_1E4207344();
    sub_1E3A677E8();
    sub_1E3AF9294(&qword_1ECF315E0, sub_1E3A677E8, MEMORY[0x1E69E81B8]);
    sub_1E4206664();
    v8 = v38;
    v9 = v39;
    v10 = v40;
    v11 = v41;
    v12 = v42;
  }

  else
  {
    v11 = 0;
    v15 = -1 << *(v7 + 32);
    v9 = v7 + 56;
    v10 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v12 = v17 & *(v7 + 56);
  }

  v34 = MEMORY[0x1E69E7CC0];
  v18 = (v10 + 64) >> 6;
  while (v8 < 0)
  {
    if (!sub_1E42073C4() || (sub_1E3A677E8(), swift_dynamicCast(), (v21 = v35) == 0))
    {
LABEL_30:
      sub_1E34AF4DC(v8);
      v0 = v33;
      v2 = 1;
      v6 = v31;
      v1 = v32;
      v14 = v34;
      goto LABEL_31;
    }

LABEL_22:
    v22 = type metadata accessor for LibSidebandEpisodeMediaEntity(0);
    v23 = v21;
    v24 = sub_1E38F6A6C(v23);
    v25 = *(*v24 + 696);

    v27 = v25(v26);

    if (v27 == 2 || (v27 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E3AF90C0(0, v34[2] + 1, 1, v34);
      }

      v29 = v34[2];
      v28 = v34[3];
      if (v29 >= v28 >> 1)
      {
        v34 = sub_1E3AF90C0((v28 > 1), v29 + 1, 1, v34);
      }

      v36 = v22;
      v37 = sub_1E3AF9294(&qword_1ECF32E30, type metadata accessor for LibSidebandEpisodeMediaEntity, &unk_1E42A9BD0);
      *&v35 = v24;
      v34[2] = v29 + 1;
      sub_1E37DADF4(&v35, &v34[5 * v29 + 4]);
    }

    else
    {
    }
  }

  v19 = v11;
  v20 = v12;
  if (v12)
  {
LABEL_18:
    v12 = (v20 - 1) & v20;
    v21 = *(*(v8 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v21)
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_30;
    }

    v20 = *(v9 + 8 * v11);
    ++v19;
    if (v20)
    {
      goto LABEL_18;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1E3AF78D4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage___episodes);
  *(v1 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage___episodes) = a1;
  return sub_1E37C3B04(v2);
}

uint64_t (*sub_1E3AF78EC(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  sub_1E3AF74BC();
  *a1 = v3;
  return sub_1E3AF7934;
}

uint64_t sub_1E3AF7934(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage___episodes);
  *(v2 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage___episodes) = *a1;
  if (a2)
  {

    sub_1E37C3B04(v3);
  }

  else
  {

    return sub_1E37C3B04(v3);
  }
}

id sub_1E3AF79AC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandBaseMediaEntity_managedObject);
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = sub_1E3A0D4E0();
      v11 = v10;
      v12 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        v4 = v9;

LABEL_12:
        v13 = *v1;
        v14 = v1[1];
        *v1 = v4;
        v1[1] = v11;

        sub_1E37E9E48(v13, v14);
        goto LABEL_13;
      }

      v4 = [v7 seasonNumber];
      if (!v4)
      {

LABEL_11:
        v11 = 0xE000000000000000;
        goto LABEL_12;
      }

      sub_1E42066A4();
    }

    v4 = 0;
    goto LABEL_11;
  }

LABEL_13:
  sub_1E37EA628(v2, v3);
  return v4;
}

uint64_t sub_1E3AF7C10(void *a1)
{
  type metadata accessor for LibSidebandSeasonMediaEntity(0);
  swift_allocObject();
  v2 = a1;
  v3 = sub_1E3AF7DA8();
  v4 = (*(*v3 + 456))();
  if (!v4)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);

  if (!v5)
  {

    return 0;
  }

  return v3;
}

uint64_t type metadata accessor for LibSidebandSeasonMediaEntity(uint64_t a1)
{
  result = qword_1EE293C10;
  if (!qword_1EE293C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3AF7D34()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage___episodes) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title) = xmmword_1E4297170;
  return sub_1E39405AC();
}

uint64_t sub_1E3AF7DA8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage___episodes) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title) = xmmword_1E4297170;
  return sub_1E3940F38();
}

uint64_t sub_1E3AF7DD0()
{
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage___episodes));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title + 8);

  return sub_1E37E9E48(v1, v2);
}

uint64_t sub_1E3AF7E1C()
{
  v0 = sub_1E39406CC();
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage___episodes));
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title), *(v0 + OBJC_IVAR____TtC8VideosUI28LibSidebandSeasonMediaEntity____lazy_storage____title + 8));
  return v0;
}

uint64_t sub_1E3AF7E68()
{
  v0 = sub_1E3AF7E1C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3AF7F08(uint64_t a1)
{
  result = sub_1E3AF9294(&qword_1ECF32E28, type metadata accessor for LibSidebandSeasonMediaEntity, &unk_1E42AC898);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E3AF7FB4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E3AF92DC(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1E3AF8020(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1E3AF8020(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE58, &unk_1E42A8830);
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3AF8314(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E3AF8124(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3AF8124(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v38 = a3;
      v7 = v6;
      v31 = v5;
      do
      {
        sub_1E327F454(v5, &v35);
        sub_1E327F454(v5 - 40, v32);
        v8 = v36;
        v9 = v37;
        __swift_project_boxed_opaque_existential_1(&v35, v36);
        v10 = (*(v9 + 32))(v8, v9);
        if (v11 & 1) != 0 || (v12 = *&v10, v13 = v33, v14 = v34, __swift_project_boxed_opaque_existential_1(v32, v33), v15 = COERCE_DOUBLE((*(v14 + 32))(v13, v14)), (v16))
        {
          v17 = v36;
          v18 = v37;
          __swift_project_boxed_opaque_existential_1(&v35, v36);
          v19 = (*(v18 + 24))(v17, v18);
          if (v20)
          {
            v21 = 0;
          }

          else
          {
            v21 = v19;
          }

          v22 = v33;
          v23 = v34;
          __swift_project_boxed_opaque_existential_1(v32, v33);
          v24 = (*(v23 + 24))(v22, v23);
          if (v25)
          {
            v26 = 0;
          }

          else
          {
            v26 = v24;
          }

          v27 = v21 < v26;
        }

        else
        {
          v27 = v12 < v15;
        }

        __swift_destroy_boxed_opaque_existential_1(v32);
        result = __swift_destroy_boxed_opaque_existential_1(&v35);
        if (!v27)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        sub_1E37DADF4(v5, &v35);
        v28 = *(v5 - 24);
        *v5 = *(v5 - 40);
        *(v5 + 16) = v28;
        *(v5 + 32) = *(v5 - 8);
        result = sub_1E37DADF4(&v35, v5 - 40);
        v5 -= 40;
      }

      while (!__CFADD__(v7++, 1));
      a3 = v38 + 1;
      v5 = v31 + 40;
      --v6;
      if (v38 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1E3AF8314(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v157 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    i = MEMORY[0x1E69E7CC0];
LABEL_118:
    v161 = *v157;
    if (!*v157)
    {
      goto LABEL_160;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_120;
    }

    goto LABEL_154;
  }

  v5 = 0;
  i = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5++;
    if (v5 < v4)
    {
      v8 = *a3;
      v9 = v5;
      sub_1E327F454(*a3 + 40 * v5, &v166);
      sub_1E327F454(v8 + 40 * v7, v163);
      v10 = v167;
      v11 = v168;
      __swift_project_boxed_opaque_existential_1(&v166, v167);
      v12 = (*(v11 + 32))(v10, v11);
      if (v13 & 1) != 0 || (v14 = *&v12, v15 = v4, v16 = v164, v17 = v165, __swift_project_boxed_opaque_existential_1(v163, v164), v18 = *(v17 + 32), v19 = v17, v4 = v15, v20 = COERCE_DOUBLE(v18(v16, v19)), (v21))
      {
        v22 = v167;
        v23 = v168;
        __swift_project_boxed_opaque_existential_1(&v166, v167);
        v24 = (*(v23 + 24))(v22, v23);
        v26 = v7;
        if (v25)
        {
          v27 = 0;
        }

        else
        {
          v27 = v24;
        }

        v28 = v164;
        v29 = v165;
        __swift_project_boxed_opaque_existential_1(v163, v164);
        v30 = (*(v29 + 24))(v28, v29);
        if (v31)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30;
        }

        v33 = v27 < v32;
        v7 = v26;
        v34 = v33;
      }

      else
      {
        v34 = v14 < v20;
      }

      LODWORD(v161) = v34;
      if (v169)
      {
        __swift_destroy_boxed_opaque_existential_1(v163);
        __swift_destroy_boxed_opaque_existential_1(&v166);
      }

      v153 = i;
      __swift_destroy_boxed_opaque_existential_1(v163);
      result = __swift_destroy_boxed_opaque_existential_1(&v166);
      v35 = v7 + 2;
      v155 = v7;
      v36 = v8 + 40 * v7;
      v37 = 40 * v7;
      v38 = v36 + 80;
      v39 = v37 + 40;
      v159 = v4;
      do
      {
        i = v35;
        v40 = v9;
        v41 = v39;
        if (v35 >= v4)
        {
          break;
        }

        sub_1E327F454(v38, &v166);
        sub_1E327F454(v38 - 40, v163);
        v42 = v167;
        v43 = v168;
        __swift_project_boxed_opaque_existential_1(&v166, v167);
        v44 = (*(v43 + 32))(v42, v43);
        if (v45 & 1) != 0 || (v46 = *&v44, v48 = v164, v47 = v165, __swift_project_boxed_opaque_existential_1(v163, v164), v49 = COERCE_DOUBLE((*(v47 + 32))(v48, v47)), (v50))
        {
          v51 = v167;
          v52 = v168;
          __swift_project_boxed_opaque_existential_1(&v166, v167);
          v53 = (*(v52 + 24))(v51, v52);
          v55 = (v54 & 1) != 0 ? 0 : v53;
          v56 = v164;
          v57 = v165;
          __swift_project_boxed_opaque_existential_1(v163, v164);
          v58 = (*(v57 + 24))(v56, v57);
          v60 = (v59 & 1) != 0 ? 0 : v58;
          v61 = v55 < v60;
        }

        else
        {
          v61 = v46 < v49;
        }

        __swift_destroy_boxed_opaque_existential_1(v163);
        result = __swift_destroy_boxed_opaque_existential_1(&v166);
        v35 = i + 1;
        v38 += 40;
        v9 = v40 + 1;
        v39 = v41 + 40;
        v4 = v159;
      }

      while (v161 == v61);
      if (v161)
      {
        v62 = v155;
        if (i < v155)
        {
          goto LABEL_153;
        }

        if (v155 >= i)
        {
          v5 = i;
          i = v153;
          v7 = v155;
          goto LABEL_39;
        }

        do
        {
          if (v62 != v40)
          {
            v63 = *a3;
            if (!*a3)
            {
              goto LABEL_158;
            }

            v64 = v63 + v37;
            v65 = v63 + v41;
            sub_1E37DADF4((v63 + v37), &v166);
            v66 = *(v65 + 32);
            v67 = *(v65 + 16);
            *v64 = *v65;
            *(v64 + 16) = v67;
            *(v64 + 32) = v66;
            result = sub_1E37DADF4(&v166, v65);
          }

          ++v62;
          v41 -= 40;
          v37 += 40;
          v33 = v62 < v40--;
        }

        while (v33);
      }

      v5 = i;
      i = v153;
      v7 = v155;
    }

LABEL_39:
    v68 = a3[1];
    if (v5 < v68)
    {
      if (__OFSUB__(v5, v7))
      {
        goto LABEL_150;
      }

      if (v5 - v7 < a4)
      {
        break;
      }
    }

LABEL_66:
    if (v5 < v7)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E37FFF70(0, *(i + 16) + 1, 1, i);
      i = result;
    }

    v98 = *(i + 16);
    v97 = *(i + 24);
    v99 = v98 + 1;
    if (v98 >= v97 >> 1)
    {
      result = sub_1E37FFF70((v97 > 1), v98 + 1, 1, i);
      i = result;
    }

    *(i + 16) = v99;
    v100 = i + 32;
    v101 = (i + 32 + 16 * v98);
    *v101 = v7;
    v101[1] = v5;
    v161 = *v157;
    if (!*v157)
    {
      goto LABEL_159;
    }

    if (v98)
    {
      while (1)
      {
        v102 = v99 - 1;
        v103 = (v100 + 16 * (v99 - 1));
        v104 = (i + 16 * v99);
        if (v99 >= 4)
        {
          break;
        }

        if (v99 == 3)
        {
          v105 = *(i + 32);
          v106 = *(i + 40);
          v115 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          v108 = v115;
LABEL_86:
          if (v108)
          {
            goto LABEL_136;
          }

          v120 = *v104;
          v119 = v104[1];
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_139;
          }

          v124 = v103[1];
          v125 = v124 - *v103;
          if (__OFSUB__(v124, *v103))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v122, v125))
          {
            goto LABEL_144;
          }

          if (v122 + v125 >= v107)
          {
            if (v107 < v125)
            {
              v102 = v99 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (v99 < 2)
        {
          goto LABEL_138;
        }

        v127 = *v104;
        v126 = v104[1];
        v115 = __OFSUB__(v126, v127);
        v122 = v126 - v127;
        v123 = v115;
LABEL_101:
        if (v123)
        {
          goto LABEL_141;
        }

        v129 = *v103;
        v128 = v103[1];
        v115 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v115)
        {
          goto LABEL_143;
        }

        if (v130 < v122)
        {
          goto LABEL_115;
        }

LABEL_108:
        if (v102 - 1 >= v99)
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*a3)
        {
          goto LABEL_156;
        }

        v134 = v5;
        v135 = i;
        i = v100 + 16 * (v102 - 1);
        v136 = *i;
        v137 = v102;
        v138 = (v100 + 16 * v102);
        v139 = v138[1];
        v140 = v169;
        sub_1E3AF8C74((*a3 + 40 * *i), (*a3 + 40 * *v138), *a3 + 40 * v139, v161);
        v169 = v140;
        if (v140)
        {
        }

        if (v139 < v136)
        {
          goto LABEL_131;
        }

        v141 = v100;
        v142 = *(v135 + 16);
        if (v137 > v142)
        {
          goto LABEL_132;
        }

        *i = v136;
        *(i + 8) = v139;
        if (v137 >= v142)
        {
          goto LABEL_133;
        }

        v143 = v137;
        v99 = v142 - 1;
        result = memmove(v138, v138 + 2, 16 * (v142 - 1 - v143));
        i = v135;
        *(v135 + 16) = v142 - 1;
        v33 = v142 > 2;
        v5 = v134;
        v100 = v141;
        if (!v33)
        {
          goto LABEL_115;
        }
      }

      v109 = v100 + 16 * v99;
      v110 = *(v109 - 64);
      v111 = *(v109 - 56);
      v115 = __OFSUB__(v111, v110);
      v112 = v111 - v110;
      if (v115)
      {
        goto LABEL_134;
      }

      v114 = *(v109 - 48);
      v113 = *(v109 - 40);
      v115 = __OFSUB__(v113, v114);
      v107 = v113 - v114;
      v108 = v115;
      if (v115)
      {
        goto LABEL_135;
      }

      v116 = v104[1];
      v117 = v116 - *v104;
      if (__OFSUB__(v116, *v104))
      {
        goto LABEL_137;
      }

      v115 = __OFADD__(v107, v117);
      v118 = v107 + v117;
      if (v115)
      {
        goto LABEL_140;
      }

      if (v118 >= v112)
      {
        v132 = *v103;
        v131 = v103[1];
        v115 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v115)
        {
          goto LABEL_148;
        }

        if (v107 < v133)
        {
          v102 = v99 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_86;
    }

LABEL_115:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_118;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_151;
  }

  if (v7 + a4 >= v68)
  {
    v69 = a3[1];
  }

  else
  {
    v69 = v7 + a4;
  }

  if (v69 < v7)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    result = sub_1E37FFF5C(i);
    i = result;
LABEL_120:
    v144 = i;
    v145 = (i + 16);
    for (i = *(i + 16); i >= 2; *v145 = i)
    {
      if (!*a3)
      {
        goto LABEL_157;
      }

      v146 = (v144 + 16 * i);
      v147 = *v146;
      v148 = &v145[2 * i];
      v149 = v148[1];
      v150 = v169;
      sub_1E3AF8C74((*a3 + 40 * *v146), (*a3 + 40 * *v148), *a3 + 40 * v149, v161);
      v169 = v150;
      if (v150)
      {
        break;
      }

      if (v149 < v147)
      {
        goto LABEL_145;
      }

      if (i - 2 >= *v145)
      {
        goto LABEL_146;
      }

      *v146 = v147;
      v146[1] = v149;
      v151 = *v145 - i;
      if (*v145 < i)
      {
        goto LABEL_147;
      }

      i = *v145 - 1;
      result = memmove(v148, v148 + 2, 16 * v151);
    }
  }

  if (v5 == v69)
  {
    goto LABEL_66;
  }

  v70 = v7;
  v71 = *a3;
  v72 = *a3 + 40 * v5;
  v154 = i;
  v156 = v70;
  v73 = v70 - v5;
  v158 = v69;
LABEL_49:
  v160 = v72;
  v161 = v5;
  v74 = v73;
  while (1)
  {
    sub_1E327F454(v72, &v166);
    sub_1E327F454(v72 - 40, v163);
    v75 = v167;
    v76 = v168;
    __swift_project_boxed_opaque_existential_1(&v166, v167);
    v77 = (*(v76 + 32))(v75, v76);
    if (v78 & 1) != 0 || (v79 = *&v77, v81 = v164, v80 = v165, __swift_project_boxed_opaque_existential_1(v163, v164), v82 = COERCE_DOUBLE((*(v80 + 32))(v81, v80)), (v83))
    {
      v84 = v167;
      v85 = v168;
      __swift_project_boxed_opaque_existential_1(&v166, v167);
      v86 = (*(v85 + 24))(v84, v85);
      if (v87)
      {
        v88 = 0;
      }

      else
      {
        v88 = v86;
      }

      v89 = v164;
      v90 = v165;
      __swift_project_boxed_opaque_existential_1(v163, v164);
      v91 = (*(v90 + 24))(v89, v90);
      if (v92)
      {
        v93 = 0;
      }

      else
      {
        v93 = v91;
      }

      v94 = v88 < v93;
    }

    else
    {
      v94 = v79 < v82;
    }

    __swift_destroy_boxed_opaque_existential_1(v163);
    result = __swift_destroy_boxed_opaque_existential_1(&v166);
    if (!v94)
    {
LABEL_64:
      v5 = (v161 + 1);
      v72 = v160 + 40;
      --v73;
      if (v161 + 1 == v158)
      {
        v5 = v158;
        i = v154;
        v7 = v156;
        goto LABEL_66;
      }

      goto LABEL_49;
    }

    if (!v71)
    {
      break;
    }

    sub_1E37DADF4(v72, &v166);
    v95 = *(v72 - 24);
    *v72 = *(v72 - 40);
    *(v72 + 16) = v95;
    *(v72 + 32) = *(v72 - 8);
    sub_1E37DADF4(&v166, v72 - 40);
    v72 -= 40;
    if (__CFADD__(v74++, 1))
    {
      goto LABEL_64;
    }
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}
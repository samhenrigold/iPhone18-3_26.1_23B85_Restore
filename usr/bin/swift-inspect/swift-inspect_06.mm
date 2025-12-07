uint64_t sub_10005D92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = &type metadata for Bool;
  v16[0] = 1;
  sub_10005AC84(v16, v14);
  v13[0] = a6;
  v13[1] = a7;
  v13[2] = a8;
  v14[4] = a1;
  v15 = 1;

  sub_10006AD50(v13);
  sub_100039234(v13);
  return sub_100002BCC(v16, &qword_1000B5428, &qword_100093030);
}

uint64_t sub_10005DA4C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 2)
  {
    v17 = v6;
    v18 = v7;
    v16 = &type metadata for Bool;
    v15[0] = a3 & 1;
    v11 = result;
    sub_10005AC84(v15, v13);
    v12[0] = a4;
    v12[1] = a5;
    v12[2] = a6;
    v13[4] = v11;
    v14 = 1;

    sub_10006AD50(v12);
    sub_100039234(v12);
    return sub_100002BCC(v15, &qword_1000B5428, &qword_100093030);
  }

  return result;
}

uint64_t sub_10005DB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a5;
  if (!*(*a5 + 16) || (v13 = sub_1000561CC(a6, a7, a8), (v14 & 1) == 0))
  {
    v20 = 0u;
    v21 = 0u;
    goto LABEL_8;
  }

  sub_100058AFC(*(v8 + 56) + 72 * v13, v17);
  sub_10005AC84(v18, &v20);
  sub_100039234(v17);
  if (!*(&v21 + 1))
  {
LABEL_8:
    sub_100002BCC(&v20, &qword_1000B5428, &qword_100093030);
LABEL_9:
    sub_10002A1BC();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 72) = 0;
    *(v16 + 80) = 15;
    return swift_willThrow();
  }

  sub_100058B58(&v20, v22);
  sub_10004CC10(v22, v17);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_100002B38(v22);
    goto LABEL_9;
  }

  if (__OFADD__(v20, 1))
  {
    __break(1u);
  }

  else
  {
    *(&v21 + 1) = &type metadata for Int;
    *&v20 = v20 + 1;
    sub_10005AC84(&v20, v18);
    v17[0] = a6;
    v17[1] = a7;
    v17[2] = a8;
    v18[4] = a1;
    v19 = 1;

    sub_10006AD50(v17);
    sub_100039234(v17);
    sub_100002B38(v22);
    return sub_100002BCC(&v20, &qword_1000B5428, &qword_100093030);
  }

  return result;
}

uint64_t sub_10005DD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = &type metadata for Int;
  v13[0] = 0;
  sub_10005AC84(v13, v11);
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v11[4] = a1;
  v12 = 1;

  sub_10006AD50(v10);
  sub_100039234(v10);
  return sub_100002BCC(v13, &qword_1000B5428, &qword_100093030);
}

uint64_t sub_10005DE1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = result;

    v8 = v5 - 1;
    for (i = 32; ; i += 192)
    {
      v10 = *(a2 + i + 144);
      v18[8] = *(a2 + i + 128);
      v18[9] = v10;
      v11 = *(a2 + i + 176);
      v18[10] = *(a2 + i + 160);
      v19 = v11;
      v12 = *(a2 + i + 80);
      v18[4] = *(a2 + i + 64);
      v18[5] = v12;
      v13 = *(a2 + i + 112);
      v18[6] = *(a2 + i + 96);
      v18[7] = v13;
      v14 = *(a2 + i + 16);
      v18[0] = *(a2 + i);
      v18[1] = v14;
      v15 = *(a2 + i + 48);
      v18[2] = *(a2 + i + 32);
      v18[3] = v15;
      v16 = v19;
      sub_1000289DC(v18, &v17);
      v16(&_swiftEmptySetSingleton, v7);
      sub_100028A38(v18);
      if (v4 || !v8)
      {
        break;
      }

      --v8;
    }
  }

  return result;
}

void sub_10005DF24(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (!*(a3 + 16) || (v7 = sub_1000560F8(*a1, a1[1], a1[2]), (v8 & 1) == 0))
  {
    sub_10002F144(&v54);
    goto LABEL_7;
  }

  v9 = *(*(a3 + 56) + 8 * v7);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(a2 + 16))
  {
    v10 = (a2 + 192 * v9);
    v11 = v10[11];
    v12 = v10[9];
    v38 = v10[10];
    v39 = v11;
    v13 = v10[11];
    v14 = v10[13];
    v40 = v10[12];
    v41 = v14;
    v15 = v10[7];
    v16 = v10[5];
    v34 = v10[6];
    v35 = v15;
    v17 = v10[7];
    v18 = v10[9];
    v36 = v10[8];
    v37 = v18;
    v19 = v10[3];
    v31[0] = v10[2];
    v31[1] = v19;
    v20 = v10[5];
    v22 = v10[2];
    v21 = v10[3];
    v32 = v10[4];
    v33 = v20;
    v50 = v38;
    v51 = v13;
    v23 = v10[13];
    v52 = v40;
    v53 = v23;
    v46 = v34;
    v47 = v17;
    v48 = v36;
    v49 = v12;
    v42 = v22;
    v43 = v21;
    v44 = v32;
    v45 = v16;
    v24 = &v42;
    String.init(argument:)(*(&v8 - 1));
    sub_1000289DC(v31, &v54);
    v62 = v50;
    v63 = v51;
    v64 = v52;
    v65 = v53;
    v58 = v46;
    v59 = v47;
    v60 = v48;
    v61 = v49;
    v54 = v42;
    v55 = v43;
    v56 = v44;
    v57 = v45;
LABEL_7:
    v25 = v63;
    a4[8] = v62;
    a4[9] = v25;
    v26 = v65;
    a4[10] = v64;
    a4[11] = v26;
    v27 = v59;
    a4[4] = v58;
    a4[5] = v27;
    v28 = v61;
    a4[6] = v60;
    a4[7] = v28;
    v29 = v55;
    *a4 = v54;
    a4[1] = v29;
    v30 = v57;
    a4[2] = v56;
    a4[3] = v30;
    return;
  }

  __break(1u);
}

double sub_10005E084@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v38 = a6;
  v39 = a3;
  v10 = *(a4 + 16);

  v37[5] = a5;

  if (v10)
  {
    v12 = 32;
    while (1)
    {
      v13 = *(a4 + v12 + 144);
      v14 = *(a4 + v12 + 112);
      v49 = *(a4 + v12 + 128);
      v50 = v13;
      v15 = *(a4 + v12 + 144);
      v16 = *(a4 + v12 + 176);
      v51 = *(a4 + v12 + 160);
      v52 = v16;
      v17 = *(a4 + v12 + 80);
      v18 = *(a4 + v12 + 48);
      v45 = *(a4 + v12 + 64);
      v46 = v17;
      v19 = *(a4 + v12 + 80);
      v20 = *(a4 + v12 + 112);
      v47 = *(a4 + v12 + 96);
      v48 = v20;
      v21 = *(a4 + v12 + 16);
      v42[0] = *(a4 + v12);
      v42[1] = v21;
      v22 = *(a4 + v12 + 48);
      v24 = *(a4 + v12);
      v23 = *(a4 + v12 + 16);
      v43 = *(a4 + v12 + 32);
      v44 = v22;
      v61 = v49;
      v62 = v15;
      v25 = *(a4 + v12 + 176);
      v63 = v51;
      v64 = v25;
      v57 = v45;
      v58 = v19;
      v59 = v47;
      v60 = v14;
      v53 = v24;
      v54 = v23;
      v55 = v43;
      v56 = v18;
      v26 = &v53;
      String.init(argument:)(*(&v11 - 1));
      v27 = v43;
      v41[0] = a1;
      v41[1] = a2;
      v41[2] = v39;
      __chkstk_darwin();
      v37[2] = v41;
      sub_1000289DC(v42, &v40);

      v28 = sub_100083B60(sub_100062C3C, v37, v27);

      if (v28)
      {
        break;
      }

      sub_100028A38(v42);
      v12 += 192;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    v73 = v61;
    v74 = v62;
    v75 = v63;
    v76 = v64;
    v69 = v57;
    v70 = v58;
    v71 = v59;
    v72 = v60;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v68 = v56;
  }

  else
  {
LABEL_5:

    sub_10002F144(&v65);
  }

  v29 = v74;
  v30 = v38;
  v38[8] = v73;
  v30[9] = v29;
  v31 = v76;
  v30[10] = v75;
  v30[11] = v31;
  v32 = v70;
  v30[4] = v69;
  v30[5] = v32;
  v33 = v72;
  v30[6] = v71;
  v30[7] = v33;
  v34 = v66;
  *v30 = v65;
  v30[1] = v34;
  result = *&v67;
  v36 = v68;
  v30[2] = v67;
  v30[3] = v36;
  return result;
}

uint64_t sub_10005E29C(Swift::UInt a1, uint64_t *a2, Swift::UInt a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v10 = v9;
  v16 = a9;
  v215 = *a2;
  v250 = a2[1];
  v17 = a2[2];
  sub_1000021C0(&qword_1000B57F0, &qword_100092C10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10008E640;
  v211 = a3;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  *(v18 + 49) = BYTE1(a5) & 1;
  v19 = sub_100068C4C(v18);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v20 = *(a1 + 145);
  if (v20 <= 2)
  {
    if (*(a1 + 145))
    {
      if (v20 == 1)
      {
        if ((v17 & 0x8000000000000000) == 0)
        {
          v210 = v17;

          if ((sub_100059AEC() & 1) != 0 && (a5 & 0x100) == 0 && (a5 & 1) == 0 && !a4)
          {
            if ((v211 & 0x8000000000000000) == 0)
            {
              v21 = v212[6];
              if (*(v21 + 16) > v211)
              {
                v22 = v21 + 16 * v211;
                v24 = *(v22 + 32);
                v23 = *(v22 + 40);

                sub_100068124(2uLL, v24, v23);

                a4 = static String._fromSubstring(_:)();
                a5 = v25;
                v26 = v211;

                if (*(v19 + 16))
                {
                  Hasher.init(_seed:)();
                  Hasher._combine(_:)(1uLL);
                  Hasher._combine(_:)(v211);
                  Hasher._combine(_:)(0);
                  v27 = Hasher._finalize()();
                  v28 = -1 << *(v19 + 32);
                  v29 = v27 & ~v28;
                  if ((*(v19 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
                  {
                    v30 = ~v28;
                    while (1)
                    {
                      v64 = *(v19 + 48) + 24 * v29;
                      if (*(v64 + 17) & 1) == 0 && *v64 == v211 && (*(v64 + 16))
                      {
                        break;
                      }

                      v29 = (v29 + 1) & v30;
                      if (((*(v19 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
                      {
                        goto LABEL_117;
                      }
                    }

LABEL_61:

                    goto LABEL_235;
                  }
                }

LABEL_117:

                if (*(v19 + 16))
                {
                  Hasher.init(_seed:)();
                  Hasher._combine(_:)(1uLL);
                  Hasher._combine(_:)(v211);
                  Hasher._combine(_:)(0);
                  v118 = Hasher._finalize()();
                  v119 = -1 << *(v19 + 32);
                  v120 = v118 & ~v119;
                  if ((*(v19 + 56 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120))
                  {
                    v121 = ~v119;
                    do
                    {
                      v122 = *(v19 + 48) + 24 * v120;
                      if (*(v122 + 17) & 1) == 0 && *v122 == v211 && (*(v122 + 16))
                      {
                        goto LABEL_235;
                      }

                      v120 = (v120 + 1) & v121;
                    }

                    while (((*(v19 + 56 + ((v120 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v120) & 1) != 0);
                  }
                }

                Hasher.init(_seed:)();
                Hasher._combine(_:)(1uLL);
                Hasher._combine(_:)(v211);
                Hasher._combine(_:)(0);
                v132 = Hasher._finalize()();
                v133 = -1 << *(v19 + 32);
                v134 = v132 & ~v133;
                if ((*(v19 + 56 + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134))
                {
                  v135 = ~v133;
                  do
                  {
                    v136 = *(v19 + 48) + 24 * v134;
                    if (*(v136 + 17) & 1) == 0 && *v136 == v211 && (*(v136 + 16))
                    {
                      goto LABEL_158;
                    }

                    v134 = (v134 + 1) & v135;
                  }

                  while (((*(v19 + 56 + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134) & 1) != 0);
                }

LABEL_157:

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v216 = v19;
                sub_100057B10(v26, 0, 1, v134, isUniquelyReferenced_nonNull_native);

LABEL_158:
                v17 = v210;
                goto LABEL_235;
              }

              goto LABEL_253;
            }

            goto LABEL_250;
          }

          sub_10006CB10(v211, a4, a5 & 0x1FF, &v226);
          v88 = v231;
          if (v231)
          {
            v89 = v226;
            v90 = v227;
            v91 = v230;
            v92 = v228 | ((v229 & 1) << 8);
            v93 = sub_100061F2C(v226, v227, v228 | ((v229 & 1) << 8), v19);

            if ((v93 & 1) == 0)
            {
              v219 = v19;
              if ((sub_100061F2C(v89, v90, v92, v19) & 1) == 0)
              {
                sub_100056A44(&v216, v89, v90, v92);
                v19 = v219;
              }
            }

            (a6)(v19, v215, v250, v210, v91, v88, a8);
            if (v9)
            {

              return sub_100002BCC(&v226, &qword_1000B5C58, &qword_100093D88);
            }

            sub_100002BCC(&v226, &qword_1000B5C58, &qword_100093D88);
            return sub_100055BDC(v19);
          }

LABEL_98:

          sub_10002A1BC();
          swift_allocError();
          *v100 = v19;
          *(v100 + 8) = v215;
          v101 = v250;
          *(v100 + 16) = v250;
          *(v100 + 24) = v210;
          v102 = *&v218[15];
          v103 = *v218;
          v104 = v216;
          *(v100 + 41) = v217;
          *(v100 + 25) = v104;
          *(v100 + 57) = v103;
          *(v100 + 72) = v102;
          *(v100 + 80) = 7;
          swift_willThrow();
          return sub_10002BB8C(v215, v101, v210);
        }

        goto LABEL_62;
      }

      if (v17 < 0)
      {
LABEL_62:
        v66 = a2[3];
        v67 = a2[4];

        (a6)(v68, v215, v250, v17, v66, v67, a8);
        if (!v10)
        {
LABEL_237:

          return sub_100055BDC(v19);
        }

        return swift_bridgeObjectRelease_n();
      }

      v210 = v17;

      if ((sub_100059AEC() & 1) == 0 || (a5 & 0x100) != 0 || (a5 & 1) != 0 || a4)
      {
        sub_10006CC94(v211, a4, a5 & 0x1FF, &v232);
        v94 = v237;
        if (v237)
        {
          v95 = v232;
          v96 = v233;
          v97 = v236;
          v98 = v234 | ((v235 & 1) << 8);
          v99 = sub_100061F2C(v232, v233, v234 | ((v235 & 1) << 8), v19);

          if ((v99 & 1) == 0)
          {
            v219 = v19;
            if ((sub_100061F2C(v95, v96, v98, v19) & 1) == 0)
            {
              sub_100056A44(&v216, v95, v96, v98);
              v19 = v219;
            }
          }

          (a6)(v19, v215, v250, v210, v97, v94, a8);
          if (v9)
          {

            return sub_100002BCC(&v232, &qword_1000B5C58, &qword_100093D88);
          }

          sub_100002BCC(&v232, &qword_1000B5C58, &qword_100093D88);
          return sub_100055BDC(v19);
        }

        goto LABEL_98;
      }

      if ((v211 & 0x8000000000000000) != 0)
      {
LABEL_251:
        __break(1u);
        goto LABEL_252;
      }

      v54 = v212[6];
      if (*(v54 + 16) <= v211)
      {
LABEL_254:
        __break(1u);
        goto LABEL_255;
      }

      v55 = v54 + 16 * v211;
      v57 = *(v55 + 32);
      v56 = *(v55 + 40);

      sub_100068124(2uLL, v57, v56);

      a4 = static String._fromSubstring(_:)();
      a5 = v58;
      v26 = v211;

      if (*(v19 + 16))
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v211);
        Hasher._combine(_:)(0);
        v59 = Hasher._finalize()();
        v60 = -1 << *(v19 + 32);
        v61 = v59 & ~v60;
        if ((*(v19 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
        {
          v62 = ~v60;
          do
          {
            v65 = *(v19 + 48) + 24 * v61;
            if (*(v65 + 17) & 1) == 0 && *v65 == v211 && (*(v65 + 16))
            {
              goto LABEL_61;
            }

            v61 = (v61 + 1) & v62;
          }

          while (((*(v19 + 56 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) != 0);
        }
      }

      if (!*(v19 + 16) || (Hasher.init(_seed:)(), Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v211), Hasher._combine(_:)(0), v123 = Hasher._finalize()(), v124 = -1 << *(v19 + 32), v125 = v123 & ~v124, ((*(v19 + 56 + ((v125 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v125) & 1) == 0))
      {
LABEL_150:
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v211);
        Hasher._combine(_:)(0);
        v137 = Hasher._finalize()();
        v138 = -1 << *(v19 + 32);
        v134 = v137 & ~v138;
        if ((*(v19 + 56 + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134))
        {
          v139 = ~v138;
          while (1)
          {
            v140 = *(v19 + 48) + 24 * v134;
            if (*(v140 + 17) & 1) == 0 && *v140 == v211 && (*(v140 + 16))
            {
              goto LABEL_158;
            }

            v134 = (v134 + 1) & v139;
            if (((*(v19 + 56 + ((v134 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v134) & 1) == 0)
            {
              goto LABEL_157;
            }
          }
        }

        goto LABEL_157;
      }

      v126 = ~v124;
      while (1)
      {
        v127 = *(v19 + 48) + 24 * v125;
        if (*(v127 + 17) & 1) == 0 && *v127 == v211 && (*(v127 + 16))
        {
          break;
        }

        v125 = (v125 + 1) & v126;
        if (((*(v19 + 56 + ((v125 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v125) & 1) == 0)
        {
          goto LABEL_150;
        }
      }

LABEL_235:
      *&v216 = a4;
      *(&v216 + 1) = a5;
      v202 = String.init<A>(_:)();
      (a6)(v19, v215, v250, v17, v202, v203, a8);
      if (v10)
      {
      }

      goto LABEL_237;
    }

    if ((v17 & 0x8000000000000000) == 0)
    {
      v210 = v17;

      if ((sub_100059AEC() & 1) == 0 || (a5 & 0x100) != 0 || (a5 & 1) != 0 || a4)
      {
        sub_10006CA04(v211, a4, a5 & 0x1FF, &v220);
        v82 = v225;
        if (v225)
        {
          v83 = v220;
          v84 = v221;
          v85 = v224;
          v86 = v222 | ((v223 & 1) << 8);
          v87 = sub_100061F2C(v220, v221, v222 | ((v223 & 1) << 8), v19);

          if ((v87 & 1) == 0)
          {
            v219 = v19;
            if ((sub_100061F2C(v83, v84, v86, v19) & 1) == 0)
            {
              sub_100056A44(&v216, v83, v84, v86);
              v19 = v219;
            }
          }

          (a6)(v19, v215, v250, v210, v85, v82, a8);
          if (v9)
          {

            return sub_100002BCC(&v220, &qword_1000B5C58, &qword_100093D88);
          }

          sub_100002BCC(&v220, &qword_1000B5C58, &qword_100093D88);
          return sub_100055BDC(v19);
        }

        goto LABEL_98;
      }

      if ((v211 & 0x8000000000000000) == 0)
      {
        v45 = v212[6];
        if (*(v45 + 16) <= v211)
        {
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
          goto LABEL_254;
        }

        v46 = v45 + 16 * v211;
        v48 = *(v46 + 32);
        v47 = *(v46 + 40);

        sub_100068124(2uLL, v48, v47);

        a4 = static String._fromSubstring(_:)();
        a5 = v49;
        a1 = v211;

        if (*(v19 + 16))
        {
          Hasher.init(_seed:)();
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v211);
          Hasher._combine(_:)(0);
          v50 = Hasher._finalize()();
          v51 = -1 << *(v19 + 32);
          v52 = v50 & ~v51;
          if ((*(v19 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
          {
            v53 = ~v51;
            do
            {
              v63 = *(v19 + 48) + 24 * v52;
              if (*(v63 + 17) & 1) == 0 && *v63 == v211 && (*(v63 + 16))
              {
                goto LABEL_61;
              }

              v52 = (v52 + 1) & v53;
            }

            while (((*(v19 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) != 0);
          }
        }

        if (*(v19 + 16))
        {
          Hasher.init(_seed:)();
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v211);
          Hasher._combine(_:)(0);
          v113 = Hasher._finalize()();
          v114 = -1 << *(v19 + 32);
          v115 = v113 & ~v114;
          if ((*(v19 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115))
          {
            v116 = ~v114;
            do
            {
              v117 = *(v19 + 48) + 24 * v115;
              if (*(v117 + 17) & 1) == 0 && *v117 == v211 && (*(v117 + 16))
              {
                goto LABEL_235;
              }

              v115 = (v115 + 1) & v116;
            }

            while (((*(v19 + 56 + ((v115 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v115) & 1) != 0);
          }
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v211);
        Hasher._combine(_:)(0);
        v128 = Hasher._finalize()();
        v129 = -1 << *(v19 + 32);
        v18 = v128 & ~v129;
        if ((*(v19 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v130 = ~v129;
          do
          {
            v131 = *(v19 + 48) + 24 * v18;
            if (*(v131 + 17) & 1) == 0 && *v131 == v211 && (*(v131 + 16))
            {
              goto LABEL_235;
            }

            v18 = (v18 + 1) & v130;
          }

          while (((*(v19 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
        }

        v149 = swift_isUniquelyReferenced_nonNull_native();
        v219 = v19;
        v150 = *(v19 + 16);
        if (*(v19 + 24) > v150)
        {
          if ((v149 & 1) == 0)
          {
            goto LABEL_258;
          }

          v76 = v19;
          goto LABEL_233;
        }

        if (v149)
        {
          sub_10005717C(v150 + 1);
        }

        else
        {
          sub_1000583B8(v150 + 1);
        }

        v76 = v219;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v211);
        Hasher._combine(_:)(0);
        v181 = Hasher._finalize()();
        v182 = -1 << *(v219 + 32);
        v18 = v181 & ~v182;
        if (((*(v219 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_233;
        }

        v183 = ~v182;
        while (1)
        {
          v184 = *(v219 + 48) + 24 * v18;
          if (*(v184 + 17) & 1) == 0 && *v184 == v211 && (*(v184 + 16))
          {
            break;
          }

          v18 = (v18 + 1) & v183;
          if (((*(v219 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_233;
          }
        }

        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_218;
      }

LABEL_249:
      __break(1u);
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

    v105 = a2[3];
    v106 = a2[4];

    (a6)(v107, v215, v250, v17, v105, v106, a8);

    if (!v10)
    {
      return sub_100055BDC(v19);
    }
  }

  if (v20 - 5 < 2)
  {

    sub_10002A1BC();
    swift_allocError();
    *v31 = 3;
    *(v31 + 8) = 0u;
    *(v31 + 24) = 0u;
    *(v31 + 40) = 0u;
    *(v31 + 56) = 0u;
    *(v31 + 72) = 0;
    *(v31 + 80) = 15;
    return swift_willThrow();
  }

  v208 = a9;
  v209 = v19;
  if (v20 == 3)
  {
    if (v17 < 0)
    {
      v108 = a2[3];
      v109 = a2[4];

      a5 = v215;
      a4 = v250;
      (a6)(v110, v215, v250, v17, v108, v109, a8);
      if (v10)
      {
        return swift_bridgeObjectRelease_n();
      }

      v210 = v17;

      sub_100055BDC(v111);
LABEL_189:
      v18 = 1;
LABEL_190:

      sub_100055BDC(v165);
      sub_100068908(v19);
      v166 = v212[4];
      v167 = v212[5];
      v168 = *(v166 + 16);
      if (v168 < v167)
      {
        __break(1u);
      }

      else if ((v167 & 0x8000000000000000) == 0)
      {
        if (v167 == v168)
        {
          goto LABEL_204;
        }

        if (v167 < v168)
        {
          if ((*(v166 + (v167 << 6) + 48) & 0x6000000000000000) == 0x2000000000000000)
          {
            v169 = v10;
            sub_10006CDA4(&v244);
            v170 = v249;
            if (!v249)
            {
              return swift_bridgeObjectRelease_n();
            }

            v171 = v247;
            v172 = v246;
            v173 = v245;
            v174 = v248;
            while (1)
            {
              v175 = v244;
              if (sub_100061F2C(v244, v173, v172 | ((v171 & 1u) << 8), v209) & 1) != 0 || (v219 = v209, (sub_100061F2C(v175, v173, v172 | ((v171 & 1u) << 8), v209)))
              {

                v176 = v209;
              }

              else
              {

                sub_100056A44(&v216, v175, v173, v172 | ((v171 & 1) << 8));
                v176 = v219;
              }

              (a6)(v176, v215, v250, v210, v174, v170, a8);
              if (v169)
              {
                break;
              }

              v169 = 0;
              sub_100002BCC(&v244, &qword_1000B5C58, &qword_100093D88);
              sub_100055BDC(v176);
              sub_10006CDA4(&v244);
              v173 = v245;
              v172 = v246;
              v174 = v248;
              v170 = v249;
              v171 = v247;
              if (!v249)
              {
                return swift_bridgeObjectRelease_n();
              }
            }

            swift_bridgeObjectRelease_n();
            return sub_100002BCC(&v244, &qword_1000B5C58, &qword_100093D88);
          }

LABEL_204:

          if (!v18)
          {
            sub_10002A1BC();
            swift_allocError();
            *v177 = v19;
            *(v177 + 8) = a5;
            *(v177 + 16) = a4;
            *(v177 + 24) = v210;
            v178 = *&v218[15];
            v179 = *v218;
            v180 = v216;
            *(v177 + 41) = v217;
            *(v177 + 25) = v180;
            *(v177 + 57) = v179;
            *(v177 + 72) = v178;
            *(v177 + 80) = 7;
            swift_willThrow();
            return sub_10002BB8C(a5, a4, v210);
          }
        }

LABEL_248:
        __break(1u);
        goto LABEL_249;
      }

      __break(1u);
      goto LABEL_248;
    }

    v210 = v17;

    v18 = 0;
    if ((sub_100059AEC() & 1) == 0 || (a5 & 0x100) != 0 || (a5 & 1) != 0 || a4)
    {
      a4 = v250;
      a5 = v215;
      goto LABEL_190;
    }

    if ((v211 & 0x8000000000000000) != 0)
    {
LABEL_255:
      __break(1u);
LABEL_256:
      __break(1u);
      do
      {
        __break(1u);
LABEL_258:
        sub_100057FB0();
        v17 = v210;
        v76 = v219;
LABEL_233:
        *(v76 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v18;
        v198 = *(v76 + 48) + 24 * v18;
        *v198 = a1;
        *(v198 + 8) = 0;
        *(v198 + 16) = 1;
        v199 = *(v76 + 16);
        v200 = __OFADD__(v199, 1);
        v201 = v199 + 1;
      }

      while (v200);
      *(v76 + 16) = v201;

      v19 = v76;
      goto LABEL_235;
    }

    v33 = v212[6];
    if (*(v33 + 16) <= v211)
    {
      goto LABEL_256;
    }

    v34 = v33 + 16 * v211;
    v36 = *(v34 + 32);
    v35 = *(v34 + 40);

    sub_100068124(2uLL, v36, v35);

    v37 = static String._fromSubstring(_:)();
    v39 = v38;
    a1 = v211;

    if (!*(v19 + 16))
    {
      goto LABEL_179;
    }

    Hasher.init(_seed:)();
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v211);
    Hasher._combine(_:)(0);
    v40 = Hasher._finalize()();
    v41 = v19 + 56;
    v42 = -1 << *(v19 + 32);
    v43 = v40 & ~v42;
    if ((*(v19 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
    {
      v44 = ~v42;
      do
      {
        v81 = *(v19 + 48) + 24 * v43;
        if (*(v81 + 17) & 1) == 0 && *v81 == v211 && (*(v81 + 16))
        {
          goto LABEL_185;
        }

        v43 = (v43 + 1) & v44;
      }

      while (((*(v41 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) != 0);
    }

    if (*(v19 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v211), Hasher._combine(_:)(0), v151 = Hasher._finalize()(), v152 = -1 << *(v19 + 32), v153 = v151 & ~v152, ((*(v41 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153) & 1) != 0))
    {
      v154 = ~v152;
      while (1)
      {
        v155 = *(v19 + 48) + 24 * v153;
        if (*(v155 + 17) & 1) == 0 && *v155 == v211 && (*(v155 + 16))
        {
          break;
        }

        v153 = (v153 + 1) & v154;
        if (((*(v41 + ((v153 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v153) & 1) == 0)
        {
          goto LABEL_179;
        }
      }
    }

    else
    {
LABEL_179:
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v211);
      Hasher._combine(_:)(0);
      v156 = Hasher._finalize()();
      v157 = -1 << *(v19 + 32);
      v158 = v156 & ~v157;
      if (((*(v19 + 56 + ((v158 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v158) & 1) == 0)
      {
LABEL_186:

        v162 = swift_isUniquelyReferenced_nonNull_native();
        sub_100057B10(v211, 0, 1, v158, v162);
        v161 = v19;
        goto LABEL_187;
      }

      v159 = ~v157;
      while (1)
      {
        v160 = *(v19 + 48) + 24 * v158;
        if (*(v160 + 17) & 1) == 0 && *v160 == v211 && (*(v160 + 16))
        {
          break;
        }

        v158 = (v158 + 1) & v159;
        if (((*(v19 + 56 + ((v158 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v158) & 1) == 0)
        {
          goto LABEL_186;
        }
      }
    }

LABEL_185:

    v161 = v19;
LABEL_187:
    *&v216 = v37;
    *(&v216 + 1) = v39;
    v163 = String.init<A>(_:)();
    a5 = v215;
    a4 = v250;
    (a6)(v161, v215, v250, v17, v163, v164, a8);
    if (v10)
    {
LABEL_243:

      return swift_bridgeObjectRelease_n();
    }

    sub_100055BDC(v161);
    sub_100068908(*a9);
    goto LABEL_189;
  }

  v210 = v17;
  v69 = *(a1 + 176);

  v69(v70, a8);
  if (v9)
  {
    return swift_bridgeObjectRelease_n();
  }

  if (v17 < 0)
  {
    a6(v19, v215, v250);
    a1 = v211;

    sub_100055BDC(v142);
    goto LABEL_161;
  }

  result = sub_100059AEC();
  if ((result & 1) == 0)
  {
    a1 = v211;
    goto LABEL_161;
  }

  a1 = v211;
  if ((a5 & 0x100) != 0 || (a5 & 1) != 0 || a4)
  {
LABEL_161:
    while (1)
    {
      sub_10006CC94(a1, a4, a5 & 0x1FF, &v238);
      v143 = v243;
      if (!v243)
      {
        break;
      }

      v145 = v238;
      v144 = v239;
      v146 = v242;
      v147 = v240 | ((v241 & 1) << 8);
      if (sub_100061F2C(v238, v239, v240 | ((v241 & 1) << 8), v209) & 1) != 0 || (v219 = v209, (sub_100061F2C(v145, v144, v147, v209)))
      {

        v148 = v209;
      }

      else
      {

        sub_100056A44(&v216, v145, v144, v147);
        v148 = v219;
      }

      a1 = v211;
      (a6)(v148, v215, v250, v210, v146, v143, a8);
      sub_100002BCC(&v238, &qword_1000B5C58, &qword_100093D88);
      sub_100055BDC(v148);
    }

    return swift_bridgeObjectRelease_n();
  }

  if ((v211 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v71 = v212[6];
    if (*(v71 + 16) > v211)
    {
      v16 = 0;
      v72 = v71 + 16 * v211;
      v74 = *(v72 + 32);
      v73 = *(v72 + 40);

      sub_100068124(2uLL, v74, v73);

      a1 = v211;
      v207 = static String._fromSubstring(_:)();
      v76 = v75;

      if (!*(v19 + 16))
      {
        goto LABEL_226;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v211);
      Hasher._combine(_:)(0);
      v77 = Hasher._finalize()();
      v18 = v19 + 56;
      v78 = -1 << *(v19 + 32);
      v79 = v77 & ~v78;
      if ((*(v19 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
      {
        v80 = ~v78;
        do
        {
          v112 = *(v19 + 48) + 24 * v79;
          if (*(v112 + 17) & 1) == 0 && *v112 == v211 && (*(v112 + 16))
          {
            goto LABEL_225;
          }

          v79 = (v79 + 1) & v80;
        }

        while (((*(v18 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) != 0);
      }

LABEL_218:
      if (*(v19 + 16))
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(a1);
        Hasher._combine(_:)(0);
        v185 = Hasher._finalize()();
        v17 = v210;
        v186 = -1 << *(v19 + 32);
        v187 = v185 & ~v186;
        if ((*(v18 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187))
        {
          v188 = ~v186;
          while (1)
          {
            v189 = *(v19 + 48) + 24 * v187;
            if (*(v189 + 17) & 1) == 0 && *v189 == a1 && (*(v189 + 16))
            {
              break;
            }

            v187 = (v187 + 1) & v188;
            if (((*(v18 + ((v187 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v187) & 1) == 0)
            {
              goto LABEL_226;
            }
          }

LABEL_225:
          v190 = v76;

          v191 = v19;
          v192 = v207;
LABEL_242:
          *&v216 = v192;
          *(&v216 + 1) = v190;
          v205 = String.init<A>(_:)();
          (a6)(v191, v215, v250, v17, v205, v206, a8);
          if (v16)
          {
            goto LABEL_243;
          }

          sub_100055BDC(v191);
          sub_100068908(*v208);
          goto LABEL_161;
        }
      }

LABEL_226:
      v190 = v76;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(a1);
      Hasher._combine(_:)(0);
      v193 = Hasher._finalize()();
      v194 = -1 << *(v19 + 32);
      v195 = v193 & ~v194;
      if ((*(v19 + 56 + ((v195 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v195))
      {
        v196 = ~v194;
        v192 = v207;
        while (1)
        {
          v197 = *(v19 + 48) + 24 * v195;
          if (*(v197 + 17) & 1) == 0 && *v197 == a1 && (*(v197 + 16))
          {
            break;
          }

          v195 = (v195 + 1) & v196;
          if (((*(v19 + 56 + ((v195 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v195) & 1) == 0)
          {
            goto LABEL_240;
          }
        }

        v191 = v19;
      }

      else
      {
        v192 = v207;
LABEL_240:

        v204 = swift_isUniquelyReferenced_nonNull_native();
        sub_100057B10(a1, 0, 1, v195, v204);
        v191 = v19;
      }

      v17 = v210;
      goto LABEL_242;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10005FEE4(uint64_t isUniquelyReferenced_nonNull_native, int64_t a2, uint64_t a3, void *a4)
{
  v12 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v12 < a2)
  {
    goto LABEL_219;
  }

  v10 = a2;
  if (a2 < 0)
  {
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      swift_unknownObjectRelease();
LABEL_107:
      sub_10004E710(v7, v163, v10, v8);
LABEL_165:
      v122 = v96;
LABEL_166:

      a4[2] = v122;
      a4[3] = 0;
      a4[4] = _swiftEmptyArrayStorage;
      if (v10 == v9)
      {
        break;
      }

      v146 = v9;
      v147 = v7;
      if (v10 <= v9)
      {
        v123 = v9;
      }

      else
      {
        v123 = v10;
      }

      v158 = v8;
      v162 = v123;
      v9 = 24;
      v149 = v4;
      v152 = v6;
      v154 = v11;
      while (v10 != v162)
      {
        v124 = v163 + (v10 << 6);
        v8 = *(v124 + 40);
        v125 = *(v124 + 48);
        v6 = *(v124 + 56);
        ++v10;
        *&v168 = v7;
        *(&v168 + 1) = v163;
        *&v169 = v10;
        *(&v169 + 1) = v158;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_223;
        }

        if (v8 >= *(a3 + 16))
        {
          goto LABEL_224;
        }

        v126 = &v155[16 * v8];
        v127 = *(v126 + 1);
        v167 = *v126;
        sub_100062BE0();

        v11 = Set.init(minimumCapacity:)();
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v8);
        if (v6)
        {
          v128 = 0;
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v128 = v125;
        }

        Hasher._combine(_:)(v128);
        v4 = v172;
        v129 = Hasher._finalize()();
        v130 = -1 << *(v11 + 32);
        v7 = v129 & ~v130;
        if ((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
        {
          v131 = ~v130;
          do
          {
            v132 = *(v11 + 48) + 24 * v7;
            if ((*(v132 + 17) & 1) == 0 && *v132 == v8)
            {
              if (*(v132 + 16))
              {
                if (v6)
                {
                  goto LABEL_208;
                }
              }

              else if ((v6 & 1) == 0 && *(v132 + 8) == v125)
              {
                goto LABEL_208;
              }
            }

            v7 = (v7 + 1) & v131;
          }

          while (((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
        }

        v133 = swift_isUniquelyReferenced_nonNull_native();
        v171 = v11;
        v134 = *(v11 + 16);
        if (*(v11 + 24) <= v134)
        {
          if (v133)
          {
            sub_10005717C(v134 + 1);
          }

          else
          {
            sub_1000583B8(v134 + 1);
          }

          v11 = v171;
          Hasher.init(_seed:)();
          Hasher._combine(_:)(1uLL);
          Hasher._combine(_:)(v8);
          if (v6)
          {
            v135 = 0;
          }

          else
          {
            Hasher._combine(_:)(1uLL);
            v135 = v125;
          }

          Hasher._combine(_:)(v135);
          v4 = v172;
          v136 = Hasher._finalize()();
          v137 = -1 << *(v11 + 32);
          v7 = v136 & ~v137;
          if ((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
          {
            v138 = ~v137;
            do
            {
              v139 = *(v11 + 48) + 24 * v7;
              if ((*(v139 + 17) & 1) == 0 && *v139 == v8)
              {
                if (*(v139 + 16))
                {
                  if (v6)
                  {
                    goto LABEL_231;
                  }
                }

                else if ((v6 & 1) == 0 && *(v139 + 8) == v125)
                {
                  goto LABEL_231;
                }
              }

              v7 = (v7 + 1) & v138;
            }

            while (((*(v11 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
          }
        }

        else if ((v133 & 1) == 0)
        {
          v4 = &v171;
          sub_100057FB0();
          v11 = v171;
        }

        *(v11 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v7;
        v140 = *(v11 + 48) + 24 * v7;
        *v140 = v8;
        *(v140 + 8) = v125;
        *(v140 + 16) = v6;
        *(v140 + 17) = 0;
        v141 = *(v11 + 16);
        v46 = __OFADD__(v141, 1);
        v142 = v141 + 1;
        if (v46)
        {
          goto LABEL_225;
        }

        *(v11 + 16) = v142;
LABEL_208:
        v4 = v149;
        v6 = v152;
        v7 = v147;
        v143 = v190;
        v152(v11, 0, 0, 254, v167, v127, a4);
        v190 = v143;
        if (v143)
        {

          sub_100062C34(v152, v149);

          sub_100028A38(&v174);
          return swift_unknownObjectRelease();
        }

        v11 = v154;
        if (v10 == v146)
        {
          goto LABEL_210;
        }
      }
    }

LABEL_210:
    sub_100062C34(v6, v4);
    sub_100028A38(&v174);
    goto LABEL_98;
  }

  v13 = isUniquelyReferenced_nonNull_native;
  v190 = v5;
  v14 = *(v4 + 16);
  v148 = v14;
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = (v14 + 32);
  while (1)
  {
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[3];
    *v176 = v16[2];
    *&v176[16] = v19;
    v174 = v17;
    v175 = v18;
    v20 = v16[4];
    v21 = v16[5];
    v22 = v16[7];
    v179 = v16[6];
    v180 = v22;
    v177 = v20;
    v178 = v21;
    v23 = v16[8];
    v24 = v16[9];
    v25 = v16[11];
    v183 = v16[10];
    v184 = v25;
    v181 = v23;
    v182 = v24;
    if (!v174 && (BYTE8(v174) & 2) != 0 && BYTE1(v182) == 5)
    {
      break;
    }

    v16 += 12;
    if (!--v15)
    {
      goto LABEL_11;
    }
  }

  if (BYTE8(v183) != 1 || v12 == a2)
  {
LABEL_11:
    v6 = v12;
    if (v12 >= a2)
    {
      goto LABEL_12;
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    swift_unknownObjectRetain();
    sub_1000289DC(&v174, v172);
    sub_10003922C(v6, v4);
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v120 = swift_dynamicCastClass();
    if (!v120)
    {
      swift_unknownObjectRelease();
      v120 = _swiftEmptyArrayStorage;
    }

    v121 = v120[2];

    v9 = v8 >> 1;
    if (__OFSUB__(v8 >> 1, v10))
    {
      goto LABEL_227;
    }

    if (v121 != (v8 >> 1) - v10)
    {
      goto LABEL_228;
    }

    v96 = swift_dynamicCastClass();
    if (!v96)
    {
      swift_unknownObjectRelease();
      v122 = _swiftEmptyArrayStorage;
      goto LABEL_166;
    }

    goto LABEL_165;
  }

  v155 = *(&v182 + 1);
  v151 = isUniquelyReferenced_nonNull_native + 32;
  v153 = v183;
  v6 = a2 + 1;
  v97 = (isUniquelyReferenced_nonNull_native + (a2 << 6) + 64);
  while (1)
  {
    v98 = *(v97 - 2);
    if ((v98 & 0x6000000000000000) == 0x4000000000000000 && v98 == 0x4000000000000000 && (*(v97 - 1) | *v97 | *(v97 - 3) | *(v97 - 4)) == 0)
    {
      break;
    }

    ++v6;
    v97 += 8;
    if (v6 - v12 == 1)
    {
      goto LABEL_11;
    }
  }

  sub_1000289DC(&v174, v172);
  sub_10003922C(v155, v153);
  v166 = v13;

  if (v12 != v6)
  {
    v4 = v6;
    while (1)
    {
      v157 = v4;
      v100 = (v151 + (v4 << 6));
      v101 = v100[1];
      v168 = *v100;
      v169 = v101;
      *v170 = v100[2];
      *&v170[9] = *(v100 + 41);
      if ((v101 & 0x6000000000000000) != 0x2000000000000000)
      {
        break;
      }

      v161 = *(&v168 + 1);
      v163 = v168;
      v102 = *&v170[8];
      v103 = *&v170[16];
      v11 = v170[24];
      sub_100062A60(&v168, v172);
      sub_100062BE0();
      v7 = Set.init(minimumCapacity:)();
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v102);
      v9 = v103;
      if (v11 == 1)
      {
        v104 = 0;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v104 = v103;
      }

      Hasher._combine(_:)(v104);
      v105 = Hasher._finalize()();
      v106 = -1 << *(v7 + 32);
      v8 = v105 & ~v106;
      if ((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
      {
        v107 = ~v106;
        v4 = 24;
        while (1)
        {
          v108 = *(v7 + 48) + 24 * v8;
          if ((*(v108 + 17) & 1) == 0 && *v108 == v102)
          {
            if (*(v108 + 16))
            {
              if (v11)
              {
                goto LABEL_155;
              }
            }

            else if ((v11 & 1) == 0 && *(v108 + 8) == v9)
            {
              goto LABEL_155;
            }
          }

          v8 = (v8 + 1) & v107;
          if (((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_133;
          }
        }
      }

      v4 = 24;
LABEL_133:
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v173 = v7;
      v110 = *(v7 + 16);
      if (*(v7 + 24) <= v110)
      {
        if (v109)
        {
          sub_10005717C(v110 + 1);
        }

        else
        {
          sub_1000583B8(v110 + 1);
        }

        v7 = v173;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(v102);
        if (v11)
        {
          v111 = 0;
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v111 = v9;
        }

        Hasher._combine(_:)(v111);
        v112 = Hasher._finalize()();
        v113 = -1 << *(v7 + 32);
        v8 = v112 & ~v113;
        if ((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          v114 = ~v113;
          v4 = 24;
          while (1)
          {
            v115 = *(v7 + 48) + 24 * v8;
            if ((*(v115 + 17) & 1) == 0 && *v115 == v102)
            {
              if (*(v115 + 16))
              {
                if (v11)
                {
                  goto LABEL_231;
                }
              }

              else if ((v11 & 1) == 0 && *(v115 + 8) == v9)
              {
                goto LABEL_231;
              }
            }

            v8 = (v8 + 1) & v114;
            if (((*(v7 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
            {
              goto LABEL_153;
            }
          }
        }

        v4 = 24;
      }

      else if ((v109 & 1) == 0)
      {
        sub_100057FB0();
        v4 = 24;
        v7 = v173;
      }

LABEL_153:
      *(v7 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v8;
      v116 = *(v7 + 48) + 24 * v8;
      *v116 = v102;
      *(v116 + 8) = v9;
      *(v116 + 16) = v11;
      *(v116 + 17) = 0;
      v117 = *(v7 + 16);
      v46 = __OFADD__(v117, 1);
      v118 = v117 + 1;
      if (v46)
      {
        goto LABEL_226;
      }

      *(v7 + 16) = v118;
LABEL_155:
      v119 = v190;
      (v155)(v7, 0, 0, 254, v163, v161, a4);
      v190 = v119;
      if (v119)
      {
        goto LABEL_214;
      }

      v4 = v157 + 1;

      sub_100062ABC(&v168);
      if (v157 + 1 == v12)
      {
        goto LABEL_157;
      }
    }

LABEL_230:
    __break(1u);
LABEL_231:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_157:
  --v6;
  v13 = v166;

  sub_100062C34(v155, v153);
  sub_100028A38(&v174);
  v14 = v148;
  if (v6 < v10)
  {
    goto LABEL_158;
  }

LABEL_12:
  if (v12 < v6)
  {
    goto LABEL_221;
  }

  v4 = _swiftEmptyArrayStorage;
  if (v6 != v10)
  {
    v72 = v13 + 32;
    v73 = v6 - 1;
    v74 = v10;
    do
    {
      v75 = (v72 + (v74 << 6));
      v9 = v74;
      while (1)
      {
        if (v74 < v10 || v9 >= v6)
        {
          goto LABEL_159;
        }

        *&v176[9] = *(v75 + 41);
        v76 = v75[1];
        v174 = *v75;
        v175 = v76;
        *v176 = v75[2];
        v11 = v9 + 1;
        if (v176[24])
        {
          break;
        }

        v75 += 4;
        ++v9;
        if (v6 == v11)
        {
          goto LABEL_14;
        }
      }

      v160 = v73;
      v163 = v72;
      v7 = v14;
      sub_100062A60(&v174, v172);
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v173 = v4;
      if ((v77 & 1) == 0)
      {
        sub_10004E8C0(0, *(v4 + 16) + 1, 1);
        v4 = v173;
      }

      v8 = *(v4 + 16);
      v78 = *(v4 + 24);
      if (v8 >= v78 >> 1)
      {
        sub_10004E8C0((v78 > 1), v8 + 1, 1);
        v4 = v173;
      }

      *(v4 + 16) = v8 + 1;
      v79 = (v4 + (v8 << 6));
      v80 = v174;
      v81 = v175;
      v82 = *v176;
      *(v79 + 73) = *&v176[9];
      v79[3] = v81;
      v79[4] = v82;
      v79[2] = v80;
      v74 = v9 + 1;
      v73 = v160;
      v72 = v163;
    }

    while (v160 != v9);
  }

LABEL_14:

  v26 = *(v4 + 16);
  *&v168 = v4;
  *(&v168 + 1) = v4 + 32;
  *&v169 = 0;
  *(&v169 + 1) = (2 * v26) | 1;
  if (!v26)
  {
  }

  v27 = v148;
  if (!*(v148 + 16))
  {
    goto LABEL_98;
  }

  v145 = *(v148 + 16);

  v28 = v145;
  v29 = v148 + 32;
  v30 = 0;
  v155 = (a3 + 32);
  v11 = &_swiftEmptySetSingleton;
  v153 = 1;
  while (1)
  {
    v31 = (v29 + 192 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[3];
    *v176 = v31[2];
    *&v176[16] = v34;
    v174 = v32;
    v175 = v33;
    v35 = v31[4];
    v36 = v31[5];
    v37 = v31[7];
    v179 = v31[6];
    v180 = v37;
    v177 = v35;
    v178 = v36;
    v38 = v31[8];
    v39 = v31[9];
    v40 = v31[11];
    v183 = v31[10];
    v184 = v40;
    v181 = v38;
    v182 = v39;
    if (v30 == v28)
    {
      goto LABEL_217;
    }

    if (!v174)
    {
      v156 = BYTE1(v182);
      if ((BYTE1(v182) | 4) == 4)
      {
        break;
      }
    }

LABEL_19:
    ++v30;
    v41 = *(v27 + 16);
    if (v30 == v41)
    {
      v84 = v27;

      goto LABEL_97;
    }

    if (v30 >= v41)
    {
      goto LABEL_218;
    }
  }

  v144 = v30;
  if (BYTE8(v183) != 1)
  {
    __break(1u);
    goto LABEL_230;
  }

  v42 = v183;
  v43 = *(&v182 + 1);
  v150 = BYTE8(v174);
  sub_1000289DC(&v174, v172);
  v159 = v43;
  v163 = v42;
  sub_10003922C(v43, v42);
  while (1)
  {
    sub_100061118(v156 == 4, &v168, v185);
    if ((v186 & 0x7FFFFFFFFFFFFF3ELL) == 0x7FFFFFF3ELL)
    {

      v84 = v148;

      sub_100062C34(v159, v163);
      sub_100028A38(&v174);
LABEL_97:
      v85 = *(v84 + 16);
      v86 = (v148 + 32);
      if (v85)
      {
        while (1)
        {
          v87 = *v86;
          v88 = v86[1];
          v89 = v86[3];
          *v176 = v86[2];
          *&v176[16] = v89;
          v174 = v87;
          v175 = v88;
          v90 = v86[4];
          v91 = v86[5];
          v92 = v86[7];
          v179 = v86[6];
          v180 = v92;
          v177 = v90;
          v178 = v91;
          v93 = v86[8];
          v94 = v86[9];
          v95 = v86[11];
          v183 = v86[10];
          v184 = v95;
          v181 = v93;
          v182 = v94;
          if (!v174 && (BYTE8(v174) & 2) != 0 && BYTE1(v182) == 6)
          {
            break;
          }

          v86 += 12;
          if (!--v85)
          {
            goto LABEL_98;
          }
        }

        if (BYTE8(v183) == 1)
        {
          v6 = *(&v182 + 1);
          v4 = v183;
          swift_beginAccess();
          v163 = *(&v168 + 1);
          v7 = v168;
          v8 = *(&v169 + 1);
          v10 = v169;
          if ((BYTE8(v169) & 1) == 0)
          {
            sub_1000289DC(&v174, v172);
            sub_10003922C(v6, v4);
            v9 = v8 >> 1;
            goto LABEL_107;
          }

          goto LABEL_160;
        }
      }

LABEL_98:

      return swift_unknownObjectRelease();
    }

    v10 = v187;
    v7 = v188;
    v9 = v189;
    sub_100002BCC(v185, &qword_1000B5C68, &qword_100093D90);
    if (v10 < 0)
    {
      break;
    }

    if (v10 >= *(a3 + 16))
    {
      goto LABEL_213;
    }

    v6 = v11;
    v48 = &v155[16 * v10];
    v49 = *v48;
    v50 = *(v48 + 1);
    sub_1000021C0(&qword_1000B57F0, &qword_100092C10);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10008E640;
    *(v51 + 32) = v10;
    *(v51 + 40) = v7;
    *(v51 + 48) = v9 & 1;

    v8 = sub_100068C4C(v51);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v52 = v190;
    v159(v8, 0, 0, 254, v49, v50, a4);
    v190 = v52;
    if (v52)
    {

      sub_100062C34(v159, v163);
      sub_100028A38(&v174);

      goto LABEL_98;
    }

    v11 = v6;
    if (*(v6 + 16))
    {
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v10);
      if (v9)
      {
        v53 = 0;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v53 = v7;
      }

      Hasher._combine(_:)(v53);
      v4 = v172;
      v54 = Hasher._finalize()();
      v55 = -1 << *(v6 + 32);
      v56 = v54 & ~v55;
      if ((*(v6 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
      {
        v57 = ~v55;
        do
        {
          v58 = *(v6 + 48) + 24 * v56;
          if ((*(v58 + 17) & 1) == 0 && *v58 == v10)
          {
            if (*(v58 + 16))
            {
              if (v9)
              {
                goto LABEL_29;
              }
            }

            else if ((v9 & 1) == 0 && *(v58 + 8) == v7)
            {
              goto LABEL_29;
            }
          }

          v56 = (v56 + 1) & v57;
        }

        while (((*(v6 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0);
      }
    }

    Hasher.init(_seed:)();
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v10);
    if (v9)
    {
      v59 = 0;
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      v59 = v7;
    }

    Hasher._combine(_:)(v59);
    v4 = v172;
    v60 = Hasher._finalize()();
    v61 = -1 << *(v6 + 32);
    v62 = v60 & ~v61;
    if ((*(v6 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
    {
      v63 = ~v61;
      do
      {
        v64 = *(v6 + 48) + 24 * v62;
        if ((*(v64 + 17) & 1) == 0 && *v64 == v10)
        {
          if (*(v64 + 16))
          {
            if (v9)
            {
              goto LABEL_29;
            }
          }

          else if ((v9 & 1) == 0 && *(v64 + 8) == v7)
          {
            goto LABEL_29;
          }
        }

        v62 = (v62 + 1) & v63;
      }

      while (((*(v6 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) != 0);
    }

    v65 = swift_isUniquelyReferenced_nonNull_native();
    v173 = v6;
    v66 = *(v6 + 16);
    if (*(v6 + 24) > v66)
    {
      if ((v65 & 1) == 0)
      {
        v4 = &v173;
        sub_100057FB0();
        v11 = v173;
      }
    }

    else
    {
      if (v65)
      {
        sub_10005717C(v66 + 1);
      }

      else
      {
        sub_1000583B8(v66 + 1);
      }

      v11 = v173;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v10);
      if (v9)
      {
        v67 = 0;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v67 = v7;
      }

      Hasher._combine(_:)(v67);
      v4 = v172;
      v68 = Hasher._finalize()();
      v69 = -1 << *(v11 + 32);
      v62 = v68 & ~v69;
      if ((*(v11 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
      {
        v70 = ~v69;
        do
        {
          v71 = *(v11 + 48) + 24 * v62;
          if ((*(v71 + 17) & 1) == 0 && *v71 == v10)
          {
            if (*(v71 + 16))
            {
              if (v9)
              {
                goto LABEL_231;
              }
            }

            else if ((v9 & 1) == 0 && *(v71 + 8) == v7)
            {
              goto LABEL_231;
            }
          }

          v62 = (v62 + 1) & v70;
        }

        while (((*(v11 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) != 0);
      }
    }

    *(v11 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v62;
    v44 = *(v11 + 48) + 24 * v62;
    *v44 = v10;
    *(v44 + 8) = v7;
    *(v44 + 16) = v9 & 1;
    v45 = *(v11 + 16);
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
      goto LABEL_220;
    }

    *(v11 + 16) = v47;
LABEL_29:
    if ((v150 & 2) == 0)
    {
      sub_100062C34(v159, v163);
      sub_100028A38(&v174);
      v27 = v148;
      v29 = v148 + 32;
      v28 = v145;
      v30 = v144;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:

  sub_100062C34(v155, v153);

  sub_100062ABC(&v168);
  return sub_100028A38(&v174);
}

uint64_t sub_100061118@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0x7FFFFFF3ELL;
  result = swift_beginAccess();
  v8 = a2[2];
  v9 = a2[3] >> 1;
  v10 = 0uLL;
  v11 = v9 - v8;
  if (v9 == v8)
  {
LABEL_9:
    v20 = 0;
    v21 = 0uLL;
    v22 = 0uLL;
LABEL_11:
    *a3 = v10;
    *(a3 + 16) = v6;
    *(a3 + 24) = v21;
    *(a3 + 40) = v22;
    *(a3 + 56) = v20;
  }

  else
  {
    if (v8 > v9)
    {
      v9 = a2[2];
    }

    v12 = v9 - v8;
    v13 = v8 + 1;
    v14 = v8 << 6;
    while (v12)
    {
      v15 = (a2[1] + v14);
      v17 = v15[1];
      v16 = v15[2];
      v18 = *(v15 + 41);
      v27 = *v15;
      *v28 = v17;
      *&v28[25] = v18;
      *&v28[16] = v16;
      a2[2] = v13;
      v19 = *v28;
      if (*v28 & 0x6000000000000000) == 0x2000000000000000 || (a1)
      {
        v24 = *&v28[8];
        v25 = v27;
        v23 = *&v28[24];
        v20 = v28[40];
        result = sub_100062A60(&v27, v26);
        v22 = v23;
        v21 = v24;
        v10 = v25;
        v6 = v19;
        goto LABEL_11;
      }

      --v12;
      ++v13;
      v14 += 64;
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100061248@<X0>(_OWORD *a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v112 = a1;
  v5 = v1[4];
  v121 = v1 + 4;
  v6 = v1[6];
  v117 = v1[5];
  v7 = *v1;
  v8 = v4[1];

  v119 = v8;
  v116 = v7;
  if (sub_10004E0CC(v7, v8))
  {
    v9 = 1;
  }

  else
  {
    v10 = v4[2];
    v11 = (v10 + 177);
    v12 = *(v10 + 16) + 1;
    do
    {
      v9 = --v12 != 0;
      if (!v12)
      {
        break;
      }

      v13 = v11;
      v11 += 192;
    }

    while (*(v13 - 145) || (*(v13 - 137) & 2) == 0 || *v13 != 4);
  }

  v118 = v9;
  *&v135 = sub_100074FD8(_swiftEmptyArrayStorage);
  *(&v135 + 1) = v6;
  *&v136 = _swiftEmptyArrayStorage;
  *(&v136 + 1) = 0;
  v137 = _swiftEmptyArrayStorage;
  v134 = &_swiftEmptySetSingleton;
  v14 = v4[2];
  v15 = v4[3];

  sub_10005DE1C(&v135, v14, v15);
  if (v3)
  {

LABEL_97:
    v98 = v117;
    v4[4] = v5;
    v4[5] = v98;
    v4[6] = v6;
    return result;
  }

  v115 = v15;
  v111 = v5;
  v17 = *(v5 + 16);
  v18 = v117;
  if (v17 < v117)
  {
    goto LABEL_107;
  }

  if (v117 < 0)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *&v126 = 0;
    if (v117 != v17)
    {
      v110 = v14;

      if (v117 < v17)
      {
        v114 = v119 + 16;
        v19 = v111;
        v109 = v110 + 32;
        v108 = xmmword_10008E640;
        v20 = v117;
        v113 = v4;
        v120 = v6;
        while (1)
        {
          v21 = (v19 + (v20 << 6));
          v22 = v21[2];
          v23 = v21[3];
          v24 = v21[4];
          *(v133 + 9) = *(v21 + 73);
          v132 = v23;
          v133[0] = v24;
          v131 = v22;
          sub_100062A60(&v131, &v128);
          swift_unknownObjectRelease();
          v25 = v131;
          v26 = *(&v132 + 1);
          v27 = v132;
          v28 = v133[0];
          v29 = *&v133[1];
          v30 = BYTE8(v133[1]);
          v4[5] = v20 + 1;
          v130 = &_swiftEmptySetSingleton;
          v31 = (v27 >> 61) & 3;
          if (v31)
          {
            break;
          }

          *&v125 = v29;
          v140 = v25;
          v141 = v27;
          v142 = v26;
          v143 = v28;
          v48 = v115;
          if (*(v115 + 16))
          {
            v123 = *(&v25 + 1);
            v124 = v25;
            v49 = sub_1000560F8(v25, *(&v25 + 1), v27);
            if (v50)
            {
              v51 = *(*(v48 + 56) + 8 * v49);
              if ((v51 & 0x8000000000000000) != 0)
              {
                goto LABEL_109;
              }

              if (v51 >= *(v110 + 16))
              {
                goto LABEL_110;
              }

              v52 = (v109 + 192 * v51);
              v53 = *v52;
              v54 = v52[1];
              v55 = v52[3];
              v144[2] = v52[2];
              v144[3] = v55;
              v144[0] = v53;
              v144[1] = v54;
              v56 = v52[4];
              v57 = v52[5];
              v58 = v52[7];
              v144[6] = v52[6];
              v144[7] = v58;
              v144[4] = v56;
              v144[5] = v57;
              v59 = v52[8];
              v60 = v52[9];
              v61 = v52[11];
              v144[10] = v52[10];
              v144[11] = v61;
              v144[8] = v59;
              v144[9] = v60;
              v62 = *(v52 + 168);
              v145 = *(v52 + 152);
              v146 = v62;
              v63 = v145;
              if ((v62 & 1) == 0)
              {
                v147 = v145;
                v69 = v126;
                if ((v27 & 0x8000000000000000) != 0)
                {
                  sub_1000289DC(v144, &v128);
                  sub_100062B10(&v145, &v128);
                  sub_10002BB8C(v124, v123, v27);

                  sub_100062ABC(&v131);
                  LOBYTE(v127) = 0;
                  sub_10002A1BC();
                  swift_allocError();
                  v103 = v124;
                  v102 = v125;
                  *v104 = *(&v28 + 1);
                  *(v104 + 8) = v102;
                  *(v104 + 16) = v30;
                  *(v104 + 17) = 0;
                  v105 = v123;
                  *(v104 + 24) = v103;
                  *(v104 + 32) = v105;
                  *(v104 + 40) = v27;
                  *(v104 + 48) = v26;
                  *(v104 + 56) = v28;
                  *(v104 + 64) = v128;
                  *(v104 + 80) = 8;
                  swift_willThrow();
                  sub_100062B6C(&v145);
                  sub_100028A38(v144);
                }

                else
                {
                  sub_1000021C0(&qword_1000B57F0, &qword_100092C10);
                  v70 = swift_allocObject();
                  *(v70 + 16) = v108;
                  v71 = v125;
                  *(v70 + 32) = *(&v28 + 1);
                  *(v70 + 40) = v71;
                  *(v70 + 48) = v30;
                  *(v70 + 49) = 0;
                  sub_1000289DC(v144, &v128);
                  sub_100062B10(&v145, &v128);
                  v72 = sub_100068C4C(v70);
                  swift_setDeallocating();
                  swift_deallocClassInstance();
                  (v147)(v72, v124, v123, v27, &v135);
                  if (!v69)
                  {
                    sub_100062ABC(&v131);

                    Hasher.init(_seed:)();
                    Hasher._combine(_:)(1uLL);
                    Hasher._combine(_:)(*(&v28 + 1));
                    if (v30)
                    {
                      v73 = 0;
                    }

                    else
                    {
                      Hasher._combine(_:)(1uLL);
                      v73 = v125;
                    }

                    Hasher._combine(_:)(v73);
                    v74 = Hasher._finalize()();
                    v75 = &_swiftEmptySetSingleton;
                    v76 = -1 << *(&_swiftEmptySetSingleton + 32);
                    v77 = v74 & ~v76;
                    v78 = *(&_swiftEmptySetSingleton + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v77;
                    *&v126 = 0;
                    if (v78)
                    {
                      v79 = ~v76;
                      do
                      {
                        v80 = *(&_swiftEmptySetSingleton + 6) + 24 * v77;
                        if ((*(v80 + 17) & 1) == 0 && *v80 == *(&v28 + 1))
                        {
                          if (*(v80 + 16))
                          {
                            if (v30)
                            {
                              goto LABEL_61;
                            }
                          }

                          else if ((v30 & 1) == 0 && *(v80 + 8) == v125)
                          {
LABEL_61:
                            sub_100062B6C(&v145);
                            sub_100028A38(v144);
                            goto LABEL_84;
                          }
                        }

                        v77 = (v77 + 1) & v79;
                      }

                      while (((*(&_swiftEmptySetSingleton + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v77) & 1) != 0);
                    }

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v127 = &_swiftEmptySetSingleton;
                    v82 = *(&_swiftEmptySetSingleton + 2);
                    if (*(&_swiftEmptySetSingleton + 3) <= v82)
                    {
                      if (isUniquelyReferenced_nonNull_native)
                      {
                        sub_10005717C(v82 + 1);
                      }

                      else
                      {
                        sub_1000583B8(v82 + 1);
                      }

                      v75 = v127;
                      Hasher.init(_seed:)();
                      Hasher._combine(_:)(1uLL);
                      Hasher._combine(_:)(*(&v28 + 1));
                      if (v30)
                      {
                        v83 = 0;
                      }

                      else
                      {
                        Hasher._combine(_:)(1uLL);
                        v83 = v125;
                      }

                      Hasher._combine(_:)(v83);
                      v84 = Hasher._finalize()();
                      v85 = -1 << v75[32];
                      v77 = v84 & ~v85;
                      if ((*&v75[((v77 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v77))
                      {
                        v86 = ~v85;
                        v87 = v125;
                        while (1)
                        {
                          v88 = *(v75 + 6) + 24 * v77;
                          if ((*(v88 + 17) & 1) == 0 && *v88 == *(&v28 + 1))
                          {
                            if (*(v88 + 16))
                            {
                              if (v30)
                              {
                                goto LABEL_112;
                              }
                            }

                            else if ((v30 & 1) == 0 && *(v88 + 8) == v125)
                            {
                              goto LABEL_112;
                            }
                          }

                          v77 = (v77 + 1) & v86;
                          if (((*&v75[((v77 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v77) & 1) == 0)
                          {
                            goto LABEL_82;
                          }
                        }
                      }
                    }

                    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_100057FB0();
                      v75 = v127;
                    }

                    v87 = v125;
LABEL_82:
                    *(v28 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v77;
                    v89 = *(v28 + 48) + 24 * v77;
                    *v89 = *(&v28 + 1);
                    *(v89 + 8) = v87;
                    *(v89 + 16) = v30;
                    *(v89 + 17) = 0;
                    v90 = *(v28 + 16);
                    v91 = __OFADD__(v90, 1);
                    v92 = v90 + 1;
                    if (!v91)
                    {
                      *(v75 + 2) = v92;
                      sub_100062B6C(&v145);
                      sub_100028A38(v144);
                      v130 = v75;
                      goto LABEL_84;
                    }

                    goto LABEL_111;
                  }

                  sub_100062ABC(&v131);

                  sub_100062B6C(&v145);
                  sub_100028A38(v144);
                }

                sub_100068908(&_swiftEmptySetSingleton);
                sub_100055BDC(&_swiftEmptySetSingleton);
LABEL_103:

                v6 = v120;
                v5 = v111;
                goto LABEL_97;
              }

              sub_1000289DC(v144, &v128);
              sub_100062B10(&v145, &v128);
              v64 = v126;
              sub_10005E29C(v144, &v140, *(&v28 + 1), v125, v30, v63, *(&v63 + 1), &v135, &v130);
              if (v64)
              {
                sub_100062ABC(&v131);
                sub_100028A38(v144);

                sub_100062B6C(&v145);
                sub_100068908(v130);

                sub_100055BDC(v106);

                goto LABEL_103;
              }

              *&v126 = 0;
              sub_100062ABC(&v131);
              sub_100028A38(v144);
              sub_100062B6C(&v145);
LABEL_84:
              v6 = v120;
LABEL_85:
              v93 = v130;
              sub_100068908(v130);
              v67 = v93;
              goto LABEL_86;
            }
          }

          if (v118)
          {
            v65 = sub_10006CED4();
            sub_100062ABC(&v131);
            v66 = v65[2];

            v6 = v120;
            if (!v66)
            {
              goto LABEL_92;
            }
          }

          else
          {
            sub_100062ABC(&v131);
            v6 = v120;
          }

          sub_100068908(&_swiftEmptySetSingleton);
          v67 = &_swiftEmptySetSingleton;
LABEL_86:
          sub_100055BDC(v67);
LABEL_87:
          v19 = v4[4];
          v20 = v4[5];
          v94 = *(v19 + 16);
          if (v94 < v20)
          {
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (v20 < 0)
          {
            goto LABEL_106;
          }

          if (v20 == v94)
          {
            goto LABEL_94;
          }

          if (v20 >= v94)
          {
            goto LABEL_91;
          }
        }

        if (v31 == 1)
        {
          v123 = *(&v25 + 1);
          v124 = v25;
          (*(v119 + 16))(v138);
          CommandConfiguration.subcommands.getter();
          v33 = v32;
          sub_100027BE4(v138);
          v34 = *(v33 + 16);
          v147 = v33;
          v35 = (v33 + 40);
          v122 = -v34;
          v36 = -1;
          while (1)
          {
            if (v122 + v36 == -1)
            {

              sub_100062ABC(&v131);
              v4 = v113;
              goto LABEL_45;
            }

            if (++v36 >= *(v147 + 16))
            {
              __break(1u);
              goto LABEL_105;
            }

            v37 = *(v35 - 1);
            v38 = *v35;
            v39 = (*(*v35 + 24))(v37, *v35);
            v42 = v123;
            v41 = v124;
            if (v39 == v124 && v123 == v40)
            {
              break;
            }

            v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v44 & 1) == 0)
            {
              v35 += 2;
              (*(v38 + 16))(v139, v37, v38);
              v45 = v139[18];

              sub_100027BE4(v139);
              *&v125 = &v108;
              *&v128 = v41;
              *(&v128 + 1) = v42;
              __chkstk_darwin();
              v107 = &v128;
              v46 = v126;
              v47 = sub_100083AB4(sub_100062BC0, (&v108 - 2), v45);
              *&v126 = v46;

              if ((v47 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_41;
          }

LABEL_41:

          sub_100062ABC(&v131);
          v68 = sub_10004DFB4(v37, v38);
          v4 = v113;
          if (!v68 && sub_10004E0CC(v116, v119))
          {
            sub_100068908(&_swiftEmptySetSingleton);
            sub_100055BDC(&_swiftEmptySetSingleton);
            v6 = v120;
            goto LABEL_87;
          }

          if (sub_10004DFB4(v37, v38))
          {
            sub_100068908(&_swiftEmptySetSingleton);
            sub_100055BDC(&_swiftEmptySetSingleton);
            v6 = v120;
            goto LABEL_94;
          }

LABEL_45:
          v6 = v120;
          if (!v118)
          {
            goto LABEL_85;
          }

          goto LABEL_92;
        }

        goto LABEL_84;
      }

LABEL_91:
      __break(1u);
LABEL_92:
      sub_100068908(&_swiftEmptySetSingleton);
      sub_100055BDC(&_swiftEmptySetSingleton);
LABEL_94:
      v18 = v117;
    }

    v95 = v111;
    *&v128 = v111;
    *(&v128 + 1) = v18;
    v129 = v6;
    v96 = v134;

    sub_100068908(v96);

    v97 = v126;
    sub_10005FEE4(v128, *(&v128 + 1), v129, &v135);
    if (v97)
    {

      v5 = v95;
      goto LABEL_97;
    }

    v99 = v137;
    v125 = v135;
    v126 = v136;

    v4[4] = v95;
    v4[5] = v18;
    v4[6] = v6;
    v100 = v112;
    v101 = v126;
    *v112 = v125;
    v100[1] = v101;
    *(v100 + 4) = v99;
  }

  return result;
}

uint64_t sub_100061F2C(Swift::UInt a1, Swift::UInt a2, __int16 a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a3 & 0x100) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(a1), (a3))
  {
    v8 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    v8 = a2;
  }

  Hasher._combine(_:)(v8);
  v10 = Hasher._finalize()();
  v11 = -1 << *(a4 + 32);
  v12 = v10 & ~v11;
  if ((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    do
    {
      v14 = *(a4 + 48) + 24 * v12;
      if (*(v14 + 17))
      {
        if ((a3 & 0x100) != 0)
        {
          return 1;
        }
      }

      else if ((a3 & 0x100) == 0 && *v14 == a1)
      {
        if (*(v14 + 16))
        {
          if (a3)
          {
            return 1;
          }
        }

        else if ((a3 & 1) == 0 && *(v14 + 8) == a2)
        {
          return 1;
        }
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return 0;
}

void *sub_100062078(void *result, char *__dst, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = result;
  if (!__dst)
  {
    v8 = 0;
    goto LABEL_12;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_12:
    *v7 = a4;
    v7[1] = a5;
    v7[2] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v10 = __dst;
      v11 = 0;
      v12 = (a4 + 32);
      v13 = a3 - 1;
      while (v11 < *(a4 + 16))
      {
        v14 = v12[9];
        v21[8] = v12[8];
        v21[9] = v14;
        v15 = v12[11];
        v21[10] = v12[10];
        v21[11] = v15;
        v16 = v12[5];
        v21[4] = v12[4];
        v21[5] = v16;
        v17 = v12[7];
        v21[6] = v12[6];
        v21[7] = v17;
        v18 = v12[1];
        v21[0] = *v12;
        v21[1] = v18;
        v19 = v12[3];
        v21[2] = v12[2];
        v21[3] = v19;
        memmove(v10, v12, 0xC0uLL);
        if (v13 == v11)
        {
          sub_1000289DC(v21, v20);
          goto LABEL_12;
        }

        v10 += 192;
        result = sub_1000289DC(v21, v20);
        ++v11;
        v12 += 12;
        if (v9 == v11)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_100062194(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(a4 + 48) + 24 * (v14 | (v9 << 6));
      v16 = *(v15 + 16);
      v17 = *(v15 + 17);
      *a2 = *v15;
      *(a2 + 16) = v16;
      *(a2 + 17) = v17;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 24;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v19 = v9 + 1;
    }

    else
    {
      v19 = (63 - v6) >> 6;
    }

    v9 = v19 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1000622A8(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_100062314(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = a6[2];
  v11 = a6[3];
  v13 = a6[4];
  v12 = a6[5];
  v30 = *(a6 + 48);
  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10008E640;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  v15 = a6[1];
  if (v15)
  {
    v16 = *a6;
    v51[0] = v16;
    v51[1] = v15;
    if (v12)
    {
      sub_100039960(v51, v40);

      goto LABEL_7;
    }

    sub_100039960(v51, v40);
  }

  else
  {
    v30 = 0;
    v16 = 0;
    v10 = 0;
    v15 = 0xE000000000000000;
    v11 = 0xE000000000000000;
  }

  v13 = 0;
  v12 = 0xE000000000000000;
LABEL_7:
  v17 = 1702195828;
  if ((a5 & 1) == 0)
  {
    v17 = 0;
  }

  *&v32 = a5 != 2;
  *(&v32 + 1) = v17;
  v18 = 0xE400000000000000;
  if ((a5 & 1) == 0)
  {
    v18 = 0;
  }

  *&v33 = v18;
  *(&v33 + 1) = v14;
  *&v34 = _swiftEmptyArrayStorage;
  BYTE8(v34) = 0;
  *&v35 = v16;
  *(&v35 + 1) = v15;
  *&v36 = v10;
  *(&v36 + 1) = v11;
  *&v37 = v13;
  *(&v37 + 1) = v12;
  LOBYTE(v38) = v30;
  *(&v38 + 1) = 0;
  v39 = 0xE000000000000000;
  v40[0] = a5 != 2;
  v40[1] = v17;
  v40[2] = v18;
  v40[3] = v14;
  v40[4] = _swiftEmptyArrayStorage;
  v41 = 0;
  v42 = v16;
  v43 = v15;
  v44 = v10;
  v45 = v11;
  v46 = v13;
  v47 = v12;
  v48 = v30;
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_10002F094(&v32, v31);
  sub_10002F0F0(v40);
  v19 = sub_10003B384(a1, a2, a4);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v20[4] = a3;
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a1;
  *(v21 + 32) = a2;
  *(v21 + 40) = a3;
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10008E640;
  v23 = v37;
  *(v22 + 104) = v36;
  *(v22 + 120) = v23;
  *(v22 + 136) = v38;
  v24 = v33;
  *(v22 + 40) = v32;
  *(v22 + 56) = v24;
  v25 = v35;
  *(v22 + 72) = v34;
  *(v22 + 32) = v19;
  v26 = v39;
  *(v22 + 88) = v25;
  *(v22 + 160) = 0;
  *(v22 + 168) = 0;
  *(v22 + 152) = v26;
  *(v22 + 176) = 4;
  *(v22 + 184) = sub_100062D50;
  *(v22 + 192) = v20;
  *(v22 + 200) = 0;
  *(v22 + 208) = sub_100062DB0;
  *(v22 + 216) = v21;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_100072F04(v22);
}

uint64_t sub_100062604(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = a5[2];
  v9 = a5[3];
  v12 = a5[4];
  v11 = a5[5];
  v26 = *(a5 + 48);
  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10008E640;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  *(v13 + 48) = a3;
  v14 = a5[1];
  if (!v14)
  {
    v26 = 0;
    v15 = 0;
    v10 = 0;
    v14 = 0xE000000000000000;
    v9 = 0xE000000000000000;
LABEL_6:

    v12 = 0;
    v11 = 0xE000000000000000;
    goto LABEL_7;
  }

  v15 = *a5;
  v47[0] = v15;
  v47[1] = v14;
  if (!v11)
  {
    sub_100039960(v47, v36);

    goto LABEL_6;
  }

  sub_100039960(v47, v36);

LABEL_7:
  v28 = 3uLL;
  *&v29 = 0;
  *(&v29 + 1) = v13;
  *&v30 = _swiftEmptyArrayStorage;
  BYTE8(v30) = 0;
  *&v31 = v15;
  *(&v31 + 1) = v14;
  *&v32 = v10;
  *(&v32 + 1) = v9;
  *&v33 = v12;
  *(&v33 + 1) = v11;
  LOBYTE(v34) = v26;
  *(&v34 + 1) = 0;
  v35 = 0xE000000000000000;
  v36[0] = 3;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = v13;
  v36[4] = _swiftEmptyArrayStorage;
  v37 = 0;
  v38 = v15;
  v39 = v14;
  v40 = v10;
  v41 = v9;
  v42 = v12;
  v43 = v11;
  v44 = v26;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_10002F094(&v28, v27);
  sub_10002F0F0(v36);
  v16 = sub_10003B384(a1, a2, a4);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10008E640;
  v20 = v33;
  *(v19 + 104) = v32;
  *(v19 + 120) = v20;
  *(v19 + 136) = v34;
  v21 = v29;
  *(v19 + 40) = v28;
  *(v19 + 56) = v21;
  v22 = v31;
  *(v19 + 72) = v30;
  *(v19 + 32) = v16;
  v23 = v35;
  *(v19 + 88) = v22;
  *(v19 + 160) = 0;
  *(v19 + 168) = 0;
  *(v19 + 152) = v23;
  *(v19 + 176) = 4;
  *(v19 + 184) = sub_100062C60;
  *(v19 + 192) = v17;
  *(v19 + 200) = 0;
  *(v19 + 208) = sub_100062C80;
  *(v19 + 216) = v18;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  return sub_100072F04(v19);
}

uint64_t sub_1000628C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_10004E820(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[9];
      v21[8] = v4[8];
      v21[9] = v5;
      v6 = v4[11];
      v21[10] = v4[10];
      v21[11] = v6;
      v7 = v4[5];
      v21[4] = v4[4];
      v21[5] = v7;
      v8 = v4[7];
      v21[6] = v4[6];
      v21[7] = v8;
      v9 = v4[1];
      v21[0] = *v4;
      v21[1] = v9;
      v10 = v4[3];
      v21[2] = v4[2];
      v21[3] = v10;
      sub_1000289DC(v21, &v19);
      v11 = sub_100059614();
      v13 = v12;
      sub_100028A38(v21);
      v20 = v2;
      v15 = v2[2];
      v14 = v2[3];
      if (v15 >= v14 >> 1)
      {
        sub_10004E820((v14 > 1), v15 + 1, 1);
        v2 = v20;
      }

      v2[2] = v15 + 1;
      v16 = &v2[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
      v4 += 12;
      --v1;
    }

    while (v1);
  }

  v19 = v2;
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
  v17 = BidirectionalCollection<>.joined(separator:)();

  return v17;
}

unint64_t sub_100062BE0()
{
  result = qword_1000B5C60;
  if (!qword_1000B5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C60);
  }

  return result;
}

uint64_t sub_100062CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000021C0(&qword_1000B5428, &qword_100093030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100062D10()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062D70()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100062E0C(uint64_t a1)
{
  v1 = (*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100062E34(uint64_t a1)
{
  if ((*(a1 + 80) & 0xF) == 0xF)
  {
    return (*a1 + 15);
  }

  else
  {
    return *(a1 + 80) & 0xF;
  }
}

__n128 sub_100062E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100062E74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100062EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100062F24(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v15 = a5[1];
  v16 = a5[2];
  v42 = a5[4];
  v44 = a5[3];
  v17 = a5[5];
  v40 = *(a5 + 48);

  v38 = sub_10003B384(a1, a2, a4);
  sub_1000021C0(&qword_1000B5210, &unk_100092A40);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10008E640;
  v37 = a8;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  if (v15)
  {
    v35 = *a5;
    v36 = v16;
    v66[0] = *a5;
    v66[1] = v15;
    if (v17)
    {
      sub_10003357C(a7, a8, a9);

      sub_10003357C(a7, a8, a9);
      sub_10002600C(a5, v55, &qword_1000B52F0, qword_100091640);
      sub_100039960(v66, v55);

      v19 = v15;
      v20 = v17;
LABEL_8:

      v21 = v42;
      v22 = v40;
      goto LABEL_10;
    }

    sub_100039960(v66, v55);

    v19 = v15;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v19 = 0xE000000000000000;
    v44 = 0xE000000000000000;
  }

  sub_10003357C(a7, a8, a9);

  sub_10003357C(a7, a8, a9);
  sub_10002600C(a5, v55, &qword_1000B52F0, qword_100091640);

  if (a5[1])
  {
    v42 = 0;
    v40 = *(a5 + 48);
    v20 = 0xE000000000000000;
    goto LABEL_8;
  }

  v21 = 0;
  v22 = 0;
  v20 = 0xE000000000000000;
LABEL_10:
  v47 = 0uLL;
  if (a9 == 255)
  {
    v23 = 4;
  }

  else
  {
    v23 = a9;
  }

  v43 = v23;
  if (a9 == 255)
  {
    v24 = 0;
  }

  else
  {
    v24 = v37;
  }

  v41 = v24;
  if (a9 == 255)
  {
    v25 = 0;
  }

  else
  {
    v25 = a7;
  }

  v34 = v25;
  *&v48 = 0;
  *(&v48 + 1) = v18;
  *&v49 = _swiftEmptyArrayStorage;
  BYTE8(v49) = 0;
  *&v50 = v35;
  *(&v50 + 1) = v19;
  *&v51 = v36;
  *(&v51 + 1) = v44;
  *&v52 = v21;
  *(&v52 + 1) = v20;
  LOBYTE(v53) = v22;
  *(&v53 + 1) = 0;
  v54 = 0xE000000000000000;
  memset(v55, 0, 24);
  v55[3] = v18;
  v55[4] = _swiftEmptyArrayStorage;
  v56 = 0;
  v57 = v35;
  v58 = v19;
  v59 = v36;
  v60 = v44;
  v61 = v21;
  v62 = v20;
  v63 = v22;
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_10002F094(&v47, v46);
  sub_10002F0F0(v55);
  v26 = swift_allocObject();
  v26[2] = sub_100065610;
  v26[3] = 0;
  v26[4] = a1;
  v26[5] = a2;
  v26[6] = a3;
  v27 = swift_allocObject();
  v27[2] = v38;
  v27[3] = 0;
  v27[4] = 0;
  v27[5] = a1;
  v27[6] = a2;
  v27[7] = a3;

  sub_1000676CC(a7, v37, a9);
  sub_1000021C0(&qword_1000B52F8, &qword_1000924C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10008E640;
  v29 = v52;
  *(v28 + 104) = v51;
  *(v28 + 120) = v29;
  *(v28 + 136) = v53;
  v30 = v48;
  *(v28 + 40) = v47;
  *(v28 + 56) = v30;
  v31 = v50;
  *(v28 + 72) = v49;
  *(v28 + 32) = v38;
  v32 = v54;
  *(v28 + 88) = v31;
  *(v28 + 152) = v32;
  *(v28 + 160) = v34;
  *(v28 + 168) = v41;
  *(v28 + 176) = v43;
  *(v28 + 177) = a6;
  *(v28 + 184) = sub_10006761C;
  *(v28 + 192) = v26;
  *(v28 + 200) = 1;
  *(v28 + 208) = sub_1000676A8;
  *(v28 + 216) = v27;
  return sub_100072F04(v28);
}

uint64_t sub_100063360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  sub_100065F38(a1, *v2);

  v58 = sub_10006FC54(v7);
  v59 = v8;
  v60 = v9;
  sub_100064EB0(&v58, v4, v5, v6);
  sub_100064724(&v58);
  v10 = *v2;
  sub_100063E54(v58, v59, v60, v2[2], v57, v2[1]);

  sub_10002F35C(v57, &v56);
  sub_1000021C0(&qword_1000B55E8, &qword_100092588);
  if (!swift_dynamicCast())
  {
    result = sub_100040F6C(v57, a2);
    goto LABEL_34;
  }

  if ((v62 & 1) == 0)
  {
    v11 = v61[0];
    v12 = v61[1];
    v13 = v63;
    v14 = v64;
    v15 = v65;
    v45 = v66;
    v41 = v67;
    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    v16 = swift_allocObject();
    *(v16 + 1) = xmmword_10008E640;
    *(v16 + 2) = *(v10 + 16);
    v42 = *(v11 + 16);
    if (v42)
    {
      v44 = v11 + 32;
      sub_100066F1C(v11, v12, 0);
      v37 = v12;
      sub_100066F1C(v11, v12, 0);
      v39 = v14;
      v40 = v13;
      v38 = v15;
      sub_10004FDF8(v13, v14, v15);

      v17 = 0;
      v43 = v11;
      while (1)
      {
        v47 = v16;
        if (v17 >= *(v11 + 16))
        {
          break;
        }

        v48 = v17;
        v18 = (v44 + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        swift_beginAccess();
        v21 = *(v10 + 40);
        v46 = v10;
        if (v21 >> 62)
        {
          v22 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!v22)
        {
LABEL_31:
          v11 = v43;
          v34 = v37;
          sub_10004BA18(v43, v37, 0);

          v14 = v39;
          v13 = v40;
          LOBYTE(v15) = v38;
          v16 = v47;
          goto LABEL_33;
        }

        v23 = 0;
        ++v48;
        v49 = v22;
        v50 = v21 & 0xFFFFFFFFFFFFFF8;
        v51 = v21 & 0xC000000000000001;
        while (1)
        {
          if (v51)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v23 >= *(v50 + 16))
            {
              goto LABEL_36;
            }

            v24 = *(v21 + 8 * v23 + 32);
          }

          *&v53 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          if ((*(*(v24 + 24) + 24))() == v19 && v25 == v20)
          {
            break;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_25;
          }

          (*(*(v24 + 24) + 16))(v61);
          v28 = v68;

          sub_100027BE4(v61);
          v52 = &v37;
          v55[0] = v19;
          v55[1] = v20;
          __chkstk_darwin();
          v35 = v55;
          v29 = sub_100083AB4(sub_10002EFA8, (&v37 - 4), v28);

          if (v29)
          {
            goto LABEL_25;
          }

          ++v23;
          if (v53 == v49)
          {
            goto LABEL_31;
          }
        }

LABEL_25:

        v53 = *(v24 + 16);
        v16 = v47;
        v31 = *(v47 + 2);
        v30 = *(v47 + 3);
        v11 = v43;
        if (v31 >= v30 >> 1)
        {
          v16 = sub_100043048((v30 > 1), v31 + 1, 1, v47);
        }

        *(v16 + 2) = v31 + 1;
        *&v16[16 * v31 + 32] = v53;
        v10 = v24;
        v17 = v48;
        if (v48 == v42)
        {
          v34 = v37;
          sub_10004BA18(v11, v37, 0);

          v14 = v39;
          v13 = v40;
          LOBYTE(v15) = v38;
          goto LABEL_33;
        }
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    sub_100066F1C(v11, v12, 0);
    sub_10004FDF8(v13, v14, v15);

    v34 = v12;
LABEL_33:
    LOBYTE(v55[0]) = 0;
    v54 = v15;
    *(a2 + 24) = &type metadata for HelpCommand;
    *(a2 + 32) = sub_100028988();
    v33 = swift_allocObject();
    *a2 = v33;
    *(v33 + 16) = v11;
    *(v33 + 24) = v34;
    *(v33 + 32) = v55[0];
    *(v33 + 40) = v13;
    *(v33 + 48) = v14;
    *(v33 + 56) = v54;
    *(v33 + 64) = v16;
    *(v33 + 72) = v41;

    sub_100002B38(v57);
    sub_10004BA18(v11, v34, 0);
    sub_1000022C8(v13, v14, v15);

LABEL_34:
    *(a2 + 89) = 0;
    return result;
  }

LABEL_38:
  v36 = 0;
  v35 = 79;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100063DA0(uint64_t a1)
{
  swift_beginAccess();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return swift_weakAssign();
}

uint64_t sub_100063E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>, uint64_t a6@<X4>)
{
  result = sub_100066A98(a1, a2, a3, 0, a6, a4);
  if (v6)
  {
    return result;
  }

  result = sub_100070064(a1, a2);
  if (result)
  {
    v13 = *(a1 + 16);
    if (v13 < a2)
    {
LABEL_30:
      __break(1u);
    }

    else if ((a2 & 0x8000000000000000) == 0)
    {
      v14 = v13 + 1;
      v15 = a1 + (a2 << 6) + 8;
      while (a2 != --v14)
      {
        v16 = v15 + 64;
        v17 = *(v15 + 40);
        v15 += 64;
        if ((v17 & 0x6000000000000000) == 0)
        {
          v18 = *(v16 - 40);
          v19 = *(v16 - 32);
          v20 = *v16;
          v21 = *(v16 + 8);
          v22 = *(v16 + 16);
          LOBYTE(v41) = 0;
          sub_10002A1BC();
          swift_allocError();
          *v23 = v20;
          *(v23 + 8) = v21;
          *(v23 + 16) = v22;
          *(v23 + 17) = v41;
          *(v23 + 24) = v18;
          *(v23 + 32) = v19;
          v24 = *&v36[16];
          *(v23 + 41) = *v36;
          *(v23 + 40) = v17;
          *(v23 + 57) = v24;
          *(v23 + 72) = *&v36[31];
          *(v23 + 80) = 4;
          swift_willThrow();
          return sub_10002BB8C(v18, v19, v17);
        }
      }

      v30 = sub_10006D110(a1, a2, a3);
      sub_10002A1BC();
      swift_allocError();
      *v31 = v30;
      *(v31 + 8) = *v36;
      v32 = *&v36[16];
      v33 = *&v36[32];
      v34 = v37;
      *(v31 + 72) = v38;
      *(v31 + 56) = v34;
      *(v31 + 40) = v33;
      *(v31 + 24) = v32;
      *(v31 + 80) = 9;
      return swift_willThrow();
    }

    __break(1u);
    goto LABEL_32;
  }

  v25 = *(a4 + 16);
  v44 = a4;

  if (!v25)
  {
LABEL_24:
    memset(v36, 0, 40);
LABEL_25:

    if (*&v36[24])
    {
      return sub_100040F6C(v36, a5);
    }

    sub_100002BCC(v36, &qword_1000B5C70, &qword_100094208);
    sub_10002A1BC();
    swift_allocError();
    *v35 = 3;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    *(v35 + 40) = 0u;
    *(v35 + 56) = 0u;
    *(v35 + 72) = 0;
    *(v35 + 80) = 15;
    return swift_willThrow();
  }

  v26 = v44 + 48;
  v27 = v25;
  while (1)
  {
    sub_10002F35C(v26, &v39);
    sub_1000021C0(&qword_1000B59D0, &qword_100093060);
    sub_1000021C0(&qword_1000B55E8, &qword_100092588);
    if (swift_dynamicCast())
    {
      break;
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
LABEL_12:
    sub_100002BCC(&v41, &qword_1000B5C70, &qword_100094208);
    v26 += 56;
    if (!--v27)
    {
      goto LABEL_24;
    }
  }

  if (!*(&v42 + 1))
  {
    goto LABEL_12;
  }

  sub_100002BCC(&v41, &qword_1000B5C70, &qword_100094208);
  v28 = v25 - 1;
  v29 = v44 + 56 * v25 - 8;
  while (1)
  {
    sub_10002F35C(v29, &v39);
    if (swift_dynamicCast())
    {
      break;
    }

    v43 = 0;
    v41 = 0u;
    v42 = 0u;
LABEL_17:
    result = sub_100002BCC(&v41, &qword_1000B5C70, &qword_100094208);
    --v28;
    v29 -= 56;
    if (v28 >= v25)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  if (!*(&v42 + 1))
  {
    goto LABEL_17;
  }

  sub_100002BCC(&v41, &qword_1000B5C70, &qword_100094208);
  sub_10002F35C(v29, &v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
  }

  result = sub_10002600C(&v41, &v39, &qword_1000B5C70, &qword_100094208);
  if (v40)
  {
    sub_100040F6C(&v39, v36);
    sub_100002BCC(&v41, &qword_1000B5C70, &qword_100094208);
    goto LABEL_25;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000642B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = *(v5 + 8);

  v44 = v4;
  v45 = v5;
  v46 = sub_10004C130(v4, v9, 2, 0, 0, 0);
  v47 = v10;
  v48 = v7;
  v49 = v6;
  v50 = v8;
  sub_100061248(&v51);
  if (v36)
  {
  }

  else
  {

    if (sub_10004E040(*(v3 + 16), *(v3 + 24)))
    {
      sub_100066A98(v52, *(&v52 + 1), v53, 0, v3, *(v35 + 16));
    }

    v12 = *(v35 + 16);
    v13 = type metadata accessor for ArgumentDecoder();
    v14 = swift_allocObject();
    *(v14 + 64) = 0;
    *(v14 + 72) = _swiftEmptyArrayStorage;
    *(v14 + 80) = _swiftEmptyArrayStorage;

    *(v14 + 88) = sub_100075204(_swiftEmptyArrayStorage);
    v15 = v52;
    *(v14 + 16) = v51;
    *(v14 + 32) = v15;
    *(v14 + 48) = v53;
    swift_beginAccess();
    *(v14 + 72) = v12;

    *(v14 + 56) = &_swiftEmptySetSingleton;
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    v42 = v13;
    v43 = sub_10006700C();
    v41 = v14;
    *(&v38 + 1) = v17;
    *&v39 = v16;
    sub_100007DE4(&v37);

    dispatch thunk of Decodable.init(from:)();
    sub_100040F6C(&v37, a2);
    swift_beginAccess();

    sub_100068908(v18);

    v20 = sub_100065630(v19, v35);

    sub_100041A18(v20);
    v21 = *(v3 + 16);
    v22 = *(*(v3 + 24) + 8);
    v23 = a2[3];
    v24 = a2[4];
    v25 = sub_100002AA0(a2, v23);
    *(&v39 + 1) = v23;
    v40 = *(v24 + 8);
    v26 = sub_100007DE4(&v38);
    (*(*(v23 - 8) + 16))(v26, v25, v23);
    *&v37 = v21;
    *(&v37 + 1) = v22;
    v27 = *(v35 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_100043A20(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_100043A20((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[56 * v29];
    v31 = v37;
    v32 = v38;
    v33 = v39;
    *(v30 + 10) = v40;
    *(v30 + 3) = v32;
    *(v30 + 4) = v33;
    *(v30 + 2) = v31;
    *(v35 + 16) = v27;
  }

  return result;
}

uint64_t sub_100064724(uint64_t *a1)
{
  v3 = v1;
  v4 = a1;
  result = sub_1000642B4(a1, v87);
  v6 = v2;
  if (!v2)
  {
    v72 = v4;
    v77 = v1;
    while (1)
    {
      v8 = v88;
      v7 = v89;
      sub_100006190(v87, v88);
      result = (*(*(v7 + 8) + 24))(v8);
      v9 = v6;
      if (v6)
      {
        break;
      }

      v10 = *(v3 + 16);
      if (!*(v10 + 2))
      {
        goto LABEL_64;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v11 = *(v10 + 2);
        if (!v11)
        {
          goto LABEL_65;
        }
      }

      else
      {
        result = sub_10005888C(v10);
        v10 = result;
        v11 = *(result + 16);
        if (!v11)
        {
          goto LABEL_65;
        }
      }

      *(v10 + 2) = v11 - 1;
      v12 = &v10[56 * v11];
      v13 = *(v12 - 24);
      v14 = *(v12 - 8);
      v15 = *(v12 + 8);
      *&v85 = *(v12 + 3);
      v84 = v15;
      v82 = v13;
      v83 = v14;
      v16 = v88;
      v17 = v89;
      v18 = sub_100002AA0(v87, v88);
      *(&v79 + 1) = v16;
      *&v80 = *(v17 + 8);
      v19 = sub_100007DE4(&v78);
      (*(*(v16 - 8) + 16))(v19, v18, v16);
      sub_100002B38(&v83);
      sub_100040F6C(&v78, &v83);
      sub_100058E3C(&v82, &v78);
      v21 = *(v10 + 2);
      v20 = *(v10 + 3);
      if (v21 >= v20 >> 1)
      {
        v10 = sub_100043A20((v20 > 1), v21 + 1, 1, v10);
      }

      *(v10 + 2) = v21 + 1;
      v22 = &v10[56 * v21];
      v23 = v78;
      v24 = v79;
      v25 = v80;
      *(v22 + 10) = v81;
      *(v22 + 3) = v24;
      *(v22 + 4) = v25;
      *(v22 + 2) = v23;
      v26 = v77;
      *(v77 + 16) = v10;
      sub_100058E74(&v82);
      v27 = *(v26 + 8);
      v28 = v4[1];
      v29 = v4[2];
      v30 = *v4;
      sub_10006FF78(v30, v28, v90);
      v97 = v27;
      if ((v92 & 0x7FFFFFFFFFFFFF3ELL) == 0x7FFFFFF3ELL)
      {
        goto LABEL_34;
      }

      if ((v92 & 0x6000000000000000) != 0x2000000000000000)
      {
        sub_100002BCC(v90, &qword_1000B5C80, &qword_100094210);
        goto LABEL_34;
      }

      v31 = v90[0];
      v32 = v91;
      result = sub_100002BCC(v90, &qword_1000B5C80, &qword_100094210);
      if (v32)
      {
        goto LABEL_34;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      if (v31 >= *(v29 + 16))
      {
LABEL_69:
        __break(1u);
        return result;
      }

      v33 = v29 + 16 * v31;
      v35 = *(v33 + 32);
      v34 = *(v33 + 40);
      v70 = v35;
      v71 = v34;
      swift_beginAccess();
      v75 = *(v27 + 40);
      if (v75 >> 62)
      {
        v36 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v36 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v64 = v30;
      v65 = v29;

      if (!v36)
      {
LABEL_33:

        v30 = v64;
        v29 = v65;
LABEL_34:
        sub_100066A98(v30, v28, v29, 1, v27, v10);
        (*(*(v27 + 24) + 16))(v95);
        sub_100027BE4(v95);
        v49 = v96;
        if (v96)
        {
          swift_beginAccess();
          v50 = *(v27 + 40);
          v76 = 0;
          if (v50 >> 62)
          {
            v51 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v51)
          {
            v52 = 0;
            do
            {
              if ((v50 & 0xC000000000000001) != 0)
              {
                result = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v53 = result;
                v54 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  goto LABEL_62;
                }
              }

              else
              {
                if (v52 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_63;
                }

                v53 = *(v50 + 8 * v52 + 32);

                v54 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
                  goto LABEL_69;
                }
              }

              if (*(v53 + 16) == v49)
              {

                v3 = v77;
                *(v77 + 8) = v53;
                sub_100002B38(v87);
                v9 = v76;
                v4 = v72;
                goto LABEL_49;
              }

              ++v52;
            }

            while (v54 != v51);
          }

          sub_10002A1BC();
          swift_allocError();
          *v55 = 3;
          *(v55 + 8) = 0u;
          *(v55 + 24) = 0u;
          *(v55 + 40) = 0u;
          *(v55 + 56) = 0u;
          *(v55 + 72) = 0;
          *(v55 + 80) = 15;
LABEL_58:
          swift_willThrow();
        }

        return sub_100002B38(v87);
      }

      v37 = 0;
      v68 = v75 & 0xFFFFFFFFFFFFFF8;
      v69 = v75 & 0xC000000000000001;
      v66 = v36;
      v67 = v28;
      while (1)
      {
        if (v69)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v38 = result;
          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v37 >= *(v68 + 16))
          {
            goto LABEL_67;
          }

          v38 = *(v75 + 8 * v37 + 32);

          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_66;
          }
        }

        v40 = *(v38 + 24);
        v76 = v38;
        v41 = (*(v40 + 24))();
        v43 = v70;
        v44 = v71;
        if (v41 == v70 && v42 == v71)
        {
          break;
        }

        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v46)
        {
          goto LABEL_52;
        }

        v73 = v39;
        (*(*(v76 + 24) + 16))(v93);
        v47 = v93[18];

        sub_100027BE4(v93);
        v74 = &v63;
        *&v82 = v43;
        *(&v82 + 1) = v44;
        __chkstk_darwin();
        *(&v63 - 2) = &v82;
        v48 = sub_100083AB4(sub_10002F224, (&v63 - 4), v47);

        if (v48)
        {
          goto LABEL_52;
        }

        ++v37;
        v28 = v67;
        v27 = v97;
        if (v73 == v66)
        {
          goto LABEL_33;
        }
      }

      v75 = v44;
LABEL_52:

      v4 = v72;
      sub_10006D038(v94);
      sub_100002BCC(v94, &qword_1000B5C88, &qword_100094218);

      v3 = v77;
      *(v77 + 8) = v76;
      sub_100002B38(v87);
LABEL_49:
      result = sub_1000642B4(v4, v87);
      v6 = v9;
      if (v9)
      {
        return result;
      }
    }

    v56 = *(v3 + 8);
    v57 = *(v3 + 16);
    sub_100066A98(*v4, v4[1], v4[2], 0, v56, v57);
    v58 = sub_1000667A8(v56, v57);
    sub_10004FD40();
    swift_allocError();
    *v59 = v58;
    *(v59 + 8) = v6;
    v60 = v86;
    v61 = v85;
    *(v59 + 48) = v84;
    *(v59 + 64) = v61;
    *(v59 + 80) = v60;
    v62 = v83;
    *(v59 + 16) = v82;
    *(v59 + 32) = v62;
    *(v59 + 88) = 13;
    goto LABEL_58;
  }

  return result;
}

uint64_t sub_100064EB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a2 + 24) + 16))(v41);
  v43[0] = v42;
  sub_10002600C(v43, &v29, &qword_1000B51D8, &qword_100094230);
  sub_100027BE4(v41);
  if (*(&v43[0] + 1))
  {
    return sub_100002BCC(v43, &qword_1000B51D8, &qword_100094230);
  }

  v9 = sub_1000670B4();
  v38 = sub_100065C18(&type metadata for GenerateCompletions, v9);
  v39 = v10;
  v40 = v11;
  sub_1000642B4(a1, &v29);
  if (v4)
  {
  }

  else
  {
    sub_1000021C0(&qword_1000B55E8, &qword_100092588);
    if (swift_dynamicCast())
    {
      v12 = v35;
      v13 = v36;
      v14 = v37;
      v15 = sub_1000667A8(a3, a4);
      if ((v14 & 1) == 0)
      {
        v16 = v15;
        sub_10004FD40();
        swift_allocError();
        *v17 = v16;
        *(v17 + 8) = v12;
        *(v17 + 16) = v13;
        v19 = v31;
        v18 = v32;
        v20 = v29;
        *(v17 + 40) = v30;
        *(v17 + 24) = v20;
        *(v17 + 56) = v19;
        *(v17 + 72) = v18;
        *(v17 + 88) = 1;
        swift_willThrow();
      }

      goto LABEL_14;
    }
  }

  v21 = sub_100067108();
  v35 = sub_100065C18(&type metadata for AutodetectedGenerateCompletions, v21);
  v36 = v22;
  v37 = v23;
  sub_1000642B4(a1, &v29);
  sub_1000021C0(&qword_1000B55E8, &qword_100092588);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
  }

  if ((v34 & 1) == 0)
  {
    if (v33)
    {
      v24 = sub_1000667A8(a3, a4);
      sub_10004FD40();
      swift_allocError();
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      *v25 = v24;
      v27 = v31;
      v26 = v32;
      v28 = v30;
      *(v25 + 24) = v29;
      *(v25 + 56) = v27;
      *(v25 + 40) = v28;
      *(v25 + 72) = v26;
      *(v25 + 88) = 1;
      swift_willThrow();
    }

    goto LABEL_12;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100065290(uint64_t a1)
{
  v2 = sub_1000676E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000652CC(uint64_t a1)
{
  v2 = sub_1000676E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100065308@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10003AD7C(&off_1000ABFF0);
  sub_10003AF24(&unk_1000AC010);

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  result = 0.0;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = -1;
  *a1 = sub_10006759C;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1000653F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001000994E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100065484(uint64_t a1)
{
  v2 = sub_1000674E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000654C0(uint64_t a1)
{
  v2 = sub_1000674E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000654FC@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10003AD7C(&off_1000AC028);
  sub_10003AF24(&unk_1000AC048);

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  *a1 = sub_1000674D0;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1000655D8@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_100065610@<X0>(uint64_t a1@<X7>, void *a2@<X8>, uint64_t a3)
{
  *a2 = a1;
  a2[1] = a3;
}

void *sub_100065630(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = 0;
    v20 = a1 + 32;
    v5 = _swiftEmptyArrayStorage;
LABEL_7:
    v12 = v20 + 56 * v4++;
    sub_100058E3C(v12, v25);
    v13 = *(a2 + 16);
    v14 = *(v13 + 16);

    result = (v13 + 32);
    v16 = -1;
    while (1)
    {
      if (v16 - v14 == -1)
      {

        v21 = v25[0];
        v22 = v25[1];
        v23 = v25[2];
        v24 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10004E8E0(0, v5[2] + 1, 1);
          v5 = v27;
        }

        v7 = v5[2];
        v6 = v5[3];
        if (v7 >= v6 >> 1)
        {
          sub_10004E8E0((v6 > 1), v7 + 1, 1);
          v5 = v27;
        }

        v5[2] = v7 + 1;
        v8 = &v5[7 * v7];
        v9 = v21;
        v10 = v22;
        v11 = v23;
        v8[10] = v24;
        *(v8 + 3) = v10;
        *(v8 + 4) = v11;
        *(v8 + 2) = v9;
LABEL_6:
        if (v4 == v2)
        {
          return v5;
        }

        goto LABEL_7;
      }

      if (++v16 >= *(v13 + 16))
      {
        break;
      }

      v17 = result + 7;
      sub_100058E3C(result, &v21);
      v18 = v21;
      sub_100058E74(&v21);
      result = v17;
      if (v18 == *&v25[0])
      {

        sub_100058E74(v25);
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void *sub_1000657F0(void *a1)
{
  v3 = sub_1000021C0(&qword_1000B5CF8, &qword_100094488);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v10 = &_swiftEmptySetSingleton;
  sub_10003AD7C(&off_1000AC268);
  sub_10003AF24(&unk_1000AC288);

  v7 = sub_100002AA0(a1, a1[3]);
  sub_1000676E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {

    sub_100002B38(a1);
  }

  else
  {
    sub_1000021C0(&qword_1000B5D08, &qword_100094490);
    sub_10000BD8C(&qword_1000B5D10, &qword_1000B5D08, &qword_100094490, &protocol conformance descriptor for Option<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);

    v7 = v10;
    sub_100002B38(a1);
  }

  return v7;
}

void *sub_100065A04(void *a1)
{
  v3 = sub_1000021C0(&qword_1000B5CD8, &qword_100094470);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v10 = &_swiftEmptySetSingleton;
  sub_10003AD7C(&off_1000AC2A0);
  sub_10003AF24(&unk_1000AC2C0);

  v7 = sub_100002AA0(a1, a1[3]);
  sub_1000674E0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {

    sub_100002B38(a1);
  }

  else
  {
    sub_1000021C0(&qword_1000B5CE8, &unk_100094478);
    sub_10000BD8C(&qword_1000B5CF0, &qword_1000B5CE8, &unk_100094478, &protocol conformance descriptor for Flag<A>);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);

    v7 = v10;
    sub_100002B38(a1);
  }

  return v7;
}

void *sub_100065C18(uint64_t a1, uint64_t a2)
{
  v2 = sub_100085194(a1, a2);
  swift_beginAccess();
  v3 = v2[5];
  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_3;
    }

LABEL_5:

    return v2;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = sub_100028988();
  sub_1000021C0(&qword_1000B59C0, &unk_100093050);
  v5 = swift_allocObject();
  swift_weakInit();
  v5[2] = &type metadata for HelpCommand;
  v5[3] = v4;
  swift_weakAssign();
  v5[5] = _swiftEmptyArrayStorage;

  sub_100063DA0(v5);

  return v2;
}

void *sub_100065F38(void *result, void *a2)
{
  v4 = result[2];
  if (!v4)
  {
    return result;
  }

  v6 = result + 4;
  if (result[4] != 0x6C706D6F632D2D2DLL || result[5] != 0xED00006E6F697465)
  {
    v8 = result;
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = v8;
    if ((v9 & 1) == 0)
    {
      return result;
    }
  }

  v85 = v2;
  v63 = result;
  v64 = v6;
  v65 = 1;
  v66 = (2 * v4) | 1;

  v10 = &v63;
  v11 = sub_10006CE68();
  if (!v12)
  {
LABEL_41:
    v6 = a2;
    goto LABEL_42;
  }

  v13 = v11;
  v14 = v12;
  do
  {
    v15 = v13 == 11565 && v14 == 0xE200000000000000;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      goto LABEL_41;
    }

    swift_beginAccess();
    v16 = a2[5];
    v57[1] = a2;
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v17)
    {
LABEL_39:

      sub_10002A1BC();
      swift_allocError();
      *v23 = 3;
      *(v23 + 8) = 0u;
      *(v23 + 24) = 0u;
      *(v23 + 40) = 0u;
      *(v23 + 56) = 0u;
      *(v23 + 72) = 0;
      *(v23 + 80) = 15;
      swift_willThrow();
      goto LABEL_68;
    }

    v18 = 0;
    v58 = v16 & 0xFFFFFFFFFFFFFF8;
    v59 = v16 & 0xC000000000000001;
    while (1)
    {
      if (v59)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v3 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v18 >= *(v58 + 16))
        {
          goto LABEL_71;
        }

        v6 = *(v16 + 8 * v18 + 32);

        v3 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }
      }

      if ((*(v6[3] + 24))() == v13 && v14 == v19)
      {

LABEL_34:

        goto LABEL_36;
      }

      v61 = v3;
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v3)
      {

        goto LABEL_34;
      }

      (*(v6[3] + 16))(v67);
      v10 = v67[18];

      sub_100027BE4(v67);
      v60 = v57;
      *&v62[0] = v13;
      *(&v62[0] + 1) = v14;
      __chkstk_darwin();
      v57[-2] = v62;
      v21 = v85;
      v3 = sub_100083AB4(sub_10002F224, &v57[-4], v10);
      v85 = v21;

      if (v3)
      {
        break;
      }

      ++v18;
      if (v61 == v17)
      {
        goto LABEL_39;
      }
    }

LABEL_36:

    v10 = &v63;
    v13 = sub_10006CE68();
    v14 = v22;
    a2 = v6;
  }

  while (v22);
LABEL_42:
  v24 = sub_10006CE68();
  if (v25)
  {
    v13 = v24;
    v10 = v25;
    v14 = v63;
    v26 = v64;
    v16 = v65;
    v3 = v66;
    if (v66)
    {
      v61 = v64;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v29 = swift_dynamicCastClass();
      if (!v29)
      {
        swift_unknownObjectRelease();
        v29 = _swiftEmptyArrayStorage;
      }

      v30 = v29[2];

      if (__OFSUB__(v3 >> 1, v16))
      {
        goto LABEL_73;
      }

      if (v30 != (v3 >> 1) - v16)
      {
        goto LABEL_74;
      }

      v28 = swift_dynamicCastClass();
      if (!v28)
      {
        swift_unknownObjectRelease();
        v28 = _swiftEmptyArrayStorage;
      }

      goto LABEL_51;
    }

    while (1)
    {
      sub_10004E638(v14, v26, v16, v3);
      v28 = v27;
LABEL_51:
      v16 = sub_10004C130(v6[2], *(v6[3] + 8), 2, 0, 0, 0);
      v32 = v31;
      v33 = v85;
      v34 = sub_10006D8FC(v13, v10, 0);
      if (v33)
      {
        goto LABEL_76;
      }

      v14 = v34;
      if (!*(v34 + 16))
      {

        __break(1u);
LABEL_76:
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v61 = v32;
      v85 = v28;

      if (v14[2])
      {
        break;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      swift_unknownObjectRelease();
      v26 = v61;
    }

    v35 = v14[4];
    v36 = v14[5];
    v37 = v14[6];
    v38 = v14[7];
    v39 = v14[8];
    sub_100066FA0(v35, v36, v37, v38, v39);

    v40 = (v37 >> 61) & 3;
    if (v40)
    {
      if (v40 == 1 && (v41 = sub_10006832C(v35, v36), v42))
      {
        sub_10005E084(v41, v42, v43, v16, v61, v69);

        v77 = v69[9];
        v78 = v69[10];
        v79 = v69[11];
        v75[4] = v69[4];
        v75[5] = v69[5];
        v75[6] = v69[6];
        v75[7] = v69[7];
        v76 = v69[8];
        v75[0] = v69[0];
        v75[1] = v69[1];
        v75[2] = v69[2];
        v75[3] = v69[3];
        if (sub_10002F07C(v75) != 1)
        {
          v80 = v76;
          v44 = v77;
          v81 = v77;
          v45 = v76;
          sub_10006715C(&v80, v62);
          sub_100002BCC(v69, &qword_1000B5208, &qword_1000914C0);
          if (v44 != 3)
          {
            v46 = &v80;
            goto LABEL_65;
          }

LABEL_62:

          v48 = v45(v85);

          *&v62[0] = v48;
          sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
          sub_10000BD8C(&qword_1000B5188, &qword_1000B5180, &unk_100095FF0, &protocol conformance descriptor for [A]);
          v49 = BidirectionalCollection<>.joined(separator:)();
          v51 = v50;

          sub_10002A1BC();
          swift_allocError();
          *v52 = v49;
          *(v52 + 8) = v51;
          v53 = v62[3];
          v54 = v62[2];
          v55 = v62[1];
          *(v52 + 16) = v62[0];
          *(v52 + 32) = v55;
          *(v52 + 48) = v54;
          *(v52 + 64) = v53;
          *(v52 + 80) = 2;
          swift_willThrow();

          goto LABEL_68;
        }
      }

      else
      {
      }
    }

    else
    {
      v84[0] = v35;
      v84[1] = v36;
      v84[2] = v37;
      v84[3] = v38;
      v84[4] = v39;
      sub_10005DF24(v84, v16, v61, v68);

      sub_100058C08(v35, v36, v37, v38, v39);
      v71 = v68[8];
      v72 = v68[9];
      v73 = v68[10];
      v74 = v68[11];
      v70[4] = v68[4];
      v70[5] = v68[5];
      v70[6] = v68[6];
      v70[7] = v68[7];
      v70[0] = v68[0];
      v70[1] = v68[1];
      v70[2] = v68[2];
      v70[3] = v68[3];
      if (sub_10002F07C(v70) != 1)
      {
        v82 = v71;
        v47 = v72;
        v83 = v72;
        v45 = v71;
        sub_10006715C(&v82, v62);
        sub_100002BCC(v68, &qword_1000B5208, &qword_1000914C0);
        if (v47 == 3)
        {
          goto LABEL_62;
        }

        v46 = &v82;
LABEL_65:
        sub_1000671B8(v46);
      }
    }
  }

  sub_10002A1BC();
  swift_allocError();
  *v56 = 3;
  *(v56 + 8) = 0u;
  *(v56 + 24) = 0u;
  *(v56 + 40) = 0u;
  *(v56 + 56) = 0u;
  *(v56 + 72) = 0;
  *(v56 + 80) = 15;
  swift_willThrow();
LABEL_68:

  return swift_unknownObjectRelease();
}

char *sub_1000667A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = a2 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_100058E3C(v4, v17);
      v7 = v17[0];
      sub_100058E74(v17);
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        v9 = v7 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        v10 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_100043048(0, *(v5 + 2) + 1, 1, v5);
        }

        v12 = *(v5 + 2);
        v11 = *(v5 + 3);
        if (v12 >= v11 >> 1)
        {
          v5 = sub_100043048((v11 > 1), v12 + 1, 1, v5);
        }

        *(v5 + 2) = v12 + 1;
        v6 = &v5[16 * v12];
        *(v6 + 4) = v7;
        *(v6 + 5) = v10;
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v13 = *(v5 + 2);
  if (!v13 || *(a1 + 16) != *&v5[16 * v13 + 16])
  {
    v16 = *(a1 + 16);
    sub_1000021C0(&qword_1000B5190, &qword_100092750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008E640;
    *(inited + 32) = v16;
    v17[0] = v5;
    sub_100041744(inited);
    return v17[0];
  }

  return v5;
}

uint64_t sub_100066928(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13[0] = result;
  v3 = *(a2 + 16);
  if (v3 < a3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = a3;
  if (a3 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (v3 != a3)
  {
    v5 = (a2 + (a3 << 6) + 64);
    while (v4 < v3)
    {
      v6 = *(v5 - 2);
      if ((v6 & 0x6000000000000000) == 0)
      {
        v13[1] = v13;
        v8 = *(v5 - 1);
        v7 = *v5;
        v9 = *(v5 - 3);
        v14[0] = *(v5 - 4);
        v10 = v14[0];
        v14[1] = v9;
        v15 = v6;
        __chkstk_darwin();
        v12[2] = v14;
        sub_100066FA0(v10, v9, v6, v8, v7);
        sub_10002BB8C(v10, v9, v6);
        v11 = sub_100083C24(sub_100066F80, v12, v13[0]);
        sub_100028AE8(v10, v9, v6);
        result = sub_100058C08(v10, v9, v6, v8, v7);
        if (v11)
        {
          return 1;
        }
      }

      ++v4;
      v5 += 8;
      if (v3 == v4)
      {
        return 0;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_100066A98(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v8 = result;
  if ((a4 & 1) == 0 || *(a3 + 16) == 1)
  {
    v9 = sub_1000667A8(v36, a6);
    v10 = sub_10002DE7C(0, v9);

    v11 = sub_100066928(v10, v8, a2);

    if (v11)
    {
      sub_100066F2C();
      swift_allocError();
      *v12 = 0;
      return swift_willThrow();
    }

    v32 = a6;
    v13 = sub_1000667A8(v36, a6);
    v14 = sub_10002DE7C(1, v13);

    v15 = sub_100066928(v14, v8, a2);

    if (v15)
    {
      sub_100066F2C();
      swift_allocError();
      *v16 = 1;
      return swift_willThrow();
    }

    v17 = *(v8 + 16);
    if (v17 >= a2)
    {
      if (a2 < 0)
      {
LABEL_46:
        __break(1u);
        return result;
      }

      if (v17 != a2)
      {
        v24 = (v8 + (a2 << 6) + 48);
        v25 = a2;
        while (1)
        {
          if (v25 >= v17)
          {
            __break(1u);
            goto LABEL_43;
          }

          if ((*v24 & 0x60000000000000C0) == 0)
          {
            if (*(v24 - 2) == 0xD000000000000016 && *(v24 - 1) == 0x80000001000993E0)
            {
              break;
            }

            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if (result)
            {
              break;
            }
          }

          ++v25;
          v24 += 8;
          if (v17 == v25)
          {
            goto LABEL_10;
          }
        }

        v27 = sub_1000667A8(v36, a6);
        sub_10004FD40();
        swift_allocError();
        *v28 = v27;
        *(v28 + 8) = 1;
        *(v28 + 16) = 0u;
        *(v28 + 32) = 0u;
        *(v28 + 48) = 0u;
        *(v28 + 64) = 0u;
        *(v28 + 80) = 0;
LABEL_28:
        *(v28 + 88) = 15;
        return swift_willThrow();
      }

LABEL_10:
      result = sub_1000667A8(v36, a6);
      v18 = result;
      v19 = *(result + 16);
      if (!v19)
      {
      }

      v20 = 0;
      v21 = result + 40;
      while (v20 < *(v18 + 16))
      {
        (*(*v21 + 16))(v33);
        v35 = v34;
        v22 = v34;

        sub_100027BE4(v33);
        result = sub_1000186F4(&v35);
        v23 = HIBYTE(*(&v22 + 1)) & 0xFLL;
        if ((*(&v22 + 1) & 0x2000000000000000) == 0)
        {
          v23 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {

          if (v17 == a2)
          {
            return result;
          }

          v29 = (v8 + (a2 << 6) + 48);
          while (a2 < v17)
          {
            if ((*v29 & 0x60000000000000C0) == 0)
            {
              v30 = *(v29 - 2) == 0x6E6F6973726576 && *(v29 - 1) == 0xE700000000000000;
              if (v30 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
              {
                v31 = sub_1000667A8(v36, v32);
                sub_10004FD40();
                swift_allocError();
                *v28 = v31;
                *(v28 + 8) = 0u;
                *(v28 + 24) = 0u;
                *(v28 + 40) = 0u;
                *(v28 + 56) = 0u;
                *(v28 + 72) = 0u;
                goto LABEL_28;
              }
            }

            ++a2;
            v29 += 8;
            if (v17 == a2)
            {
              return result;
            }
          }

          goto LABEL_44;
        }

        ++v20;
        v21 += 16;
        if (v19 == v20)
        {
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_100066E70()
{
  sub_10004BA18(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1000022C8(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_100066F1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100066F2C()
{
  result = qword_1000B5C78;
  if (!qword_1000B5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C78);
  }

  return result;
}

uint64_t sub_100066FA0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (a3 >> 61) & 3;
  if (v5 == 1)
  {
  }

  if (!v5)
  {
    return sub_100066FC0(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_100066FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 0)
  {
    sub_10002BB8C(a1, a2, a3);
  }

  else
  {

    return sub_10002BB8C(a1, a2, a3);
  }
}

unint64_t sub_10006700C()
{
  result = qword_1000B5C90;
  if (!qword_1000B5C90)
  {
    type metadata accessor for ArgumentDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5C90);
  }

  return result;
}

void *sub_100067064(void *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    return _swift_slowDealloc(*result, *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)), *(v1 + 80) | 7);
  }

  return result;
}

unint64_t sub_1000670B4()
{
  result = qword_1000B5CA0;
  if (!qword_1000B5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CA0);
  }

  return result;
}

unint64_t sub_100067108()
{
  result = qword_1000B5CA8;
  if (!qword_1000B5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CA8);
  }

  return result;
}

void sub_10006720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1000B5CB0)
  {
    v4 = _s19InitializationErrorOMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1000B5CB0);
    }
  }
}

unint64_t sub_10006728C(uint64_t a1)
{
  result = sub_1000672B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000672B4()
{
  result = qword_1000B5CB8;
  if (!qword_1000B5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CB8);
  }

  return result;
}

unint64_t sub_100067308(uint64_t a1)
{
  result = sub_100067330();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100067330()
{
  result = qword_1000B5CC0;
  if (!qword_1000B5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CC0);
  }

  return result;
}

unint64_t sub_100067384(uint64_t a1)
{
  result = sub_1000673AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000673AC()
{
  result = qword_1000B5CC8;
  if (!qword_1000B5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CC8);
  }

  return result;
}

unint64_t sub_100067400(uint64_t a1)
{
  result = sub_100067428();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100067428()
{
  result = qword_1000B5CD0;
  if (!qword_1000B5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CD0);
  }

  return result;
}

uint64_t sub_10006747C()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 81, 7);
}

unint64_t sub_1000674E0()
{
  result = qword_1000B5CE0;
  if (!qword_1000B5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5CE0);
  }

  return result;
}

uint64_t sub_100067534()
{

  if (*(v0 + 32))
  {
  }

  v1 = *(v0 + 96);
  if (v1 != 255)
  {
    sub_100032650(*(v0 + 80), *(v0 + 88), v1);
  }

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1000675D4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100067650()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000676CC(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_100032650(result, a2, a3);
  }

  return result;
}

unint64_t sub_1000676E0()
{
  result = qword_1000B5D00;
  if (!qword_1000B5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D00);
  }

  return result;
}

unint64_t sub_100067760()
{
  result = qword_1000B5D18;
  if (!qword_1000B5D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D18);
  }

  return result;
}

unint64_t sub_1000677B8()
{
  result = qword_1000B5D20;
  if (!qword_1000B5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D20);
  }

  return result;
}

unint64_t sub_100067810()
{
  result = qword_1000B5D28;
  if (!qword_1000B5D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D28);
  }

  return result;
}

unint64_t sub_100067868()
{
  result = qword_1000B5D30;
  if (!qword_1000B5D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D30);
  }

  return result;
}

unint64_t sub_1000678C0()
{
  result = qword_1000B5D38;
  if (!qword_1000B5D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D38);
  }

  return result;
}

unint64_t sub_100067918()
{
  result = qword_1000B5D40;
  if (!qword_1000B5D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D40);
  }

  return result;
}

Swift::Int sub_10006799C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = *(a3 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = a3 + 40;
    do
    {

      String.hash(into:)();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

void sub_100067A4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

Swift::Int sub_100067AD0(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

uint64_t sub_100067B6C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_100055CD4(v2, v3);
}

uint64_t sub_100067BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10008E640;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_100041830(inited);
  sub_1000021C0(&qword_1000B5180, &unk_100095FF0);
  sub_10002BB28();
  v6 = BidirectionalCollection<>.joined(separator:)();

  return v6;
}

uint64_t sub_100067CC8(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 40;
        v31 = *(a2 + 16);
        v27 = v4 - 1;
        v8 = _swiftEmptyArrayStorage;
        v30 = _swiftEmptyArrayStorage;
        v28 = a2 + 40;
        while (1)
        {
          v29 = v6;
          v9 = (v7 + 16 * v5);
          while (1)
          {
            if (v5 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v10 = *(v9 - 1);
            v11 = *v9;
            v12 = v5 + 1;
            v13 = v8[2];
            if (v13 >= v3)
            {
              break;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_10004E820(0, v13 + 1, 1);
            }

            v15 = v8[2];
            v14 = v8[3];
            if (v15 >= v14 >> 1)
            {
              result = sub_10004E820((v14 > 1), v15 + 1, 1);
            }

            v8[2] = v15 + 1;
            v16 = &v8[2 * v15];
            v16[4] = v10;
            v16[5] = v11;
            v9 += 2;
            v5 = v12;
            if (v31 == v12)
            {
              goto LABEL_29;
            }
          }

          if (v29 >= v13)
          {
            goto LABEL_33;
          }

          v17 = &v8[2 * v29];
          v18 = v17[5];
          v25 = v17[4];

          v26 = v18;

          v19 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10004E820(0, v30[2] + 1, 1);
            v19 = v30;
          }

          v21 = v19[2];
          v20 = v19[3];
          if (v21 >= v20 >> 1)
          {
            sub_10004E820((v20 > 1), v21 + 1, 1);
            v19 = v30;
          }

          v19[2] = v21 + 1;
          v30 = v19;
          v22 = &v19[2 * v21];
          v22[4] = v25;
          v22[5] = v26;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100078CE4(v8);
            v8 = result;
          }

          v7 = v28;
          if (v29 >= v8[2])
          {
            goto LABEL_34;
          }

          v23 = &v8[2 * v29];
          v23[4] = v10;
          v23[5] = v11;

          if ((v29 + 1) < v3)
          {
            v6 = v29 + 1;
          }

          else
          {
            v6 = 0;
          }

          if (v27 == v5++)
          {
            goto LABEL_29;
          }
        }
      }

      v30 = _swiftEmptyArrayStorage;
LABEL_29:

      return v30;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100067F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v6 = *(a3 - 8);
  __chkstk_darwin();
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 32))(v8);
  v9 = dispatch thunk of CodingKey.stringValue.getter();
  v11 = v9;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v10;
    v23 = v9;
    v25 = v4;
    v27 = _swiftEmptyArrayStorage;
    sub_10004E820(0, v12, 0);
    v13 = v27;
    v24 = a2;
    v14 = a2 + 32;
    do
    {
      sub_10002F35C(v14, v26);
      sub_100002AA0(v26, v26[3]);
      v15 = dispatch thunk of CodingKey.stringValue.getter();
      v17 = v16;
      sub_100002B38(v26);
      v27 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_10004E820((v18 > 1), v19 + 1, 1);
        v13 = v27;
      }

      v13[2] = v19 + 1;
      v20 = &v13[2 * v19];
      v20[4] = v15;
      v20[5] = v17;
      v14 += 40;
      --v12;
    }

    while (v12);

    v4 = v25;
    v11 = v23;
  }

  else
  {
  }

  (*(v6 + 8))(v8, v4);
  return v11;
}

unint64_t sub_100068124(unint64_t result, uint64_t a2, unint64_t a3)
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

uint64_t sub_1000681D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    if (String.subscript.getter() == 95 && v9 == 0xE100000000000000)
    {
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v10 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_100068124(1uLL, v7, a2);

    v7 = static String._fromSubstring(_:)();
  }

LABEL_9:
  if (a4)
  {
    sub_1000021C0(&qword_1000B51D0, &qword_100092A50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008E640;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    sub_100041830(inited);
  }

  return v7;
}

uint64_t sub_10006832C(uint64_t a1, unint64_t a2)
{
  v17[0] = 46;
  v17[1] = 0xE100000000000000;
  v16[2] = v17;
  v2 = sub_10002E594(0x7FFFFFFFFFFFFFFFLL, 1, sub_10002A00C, v16, a1, a2, v17);
  v3 = v2[2];
  if (v3)
  {
    v17[0] = _swiftEmptyArrayStorage;
    result = sub_10004E820(0, v3, 0);
    v5 = 0;
    v6 = v17[0];
    v7 = v2 + 7;
    while (v5 < v2[2])
    {

      v8 = static String._fromSubstring(_:)();
      v10 = v9;

      v17[0] = v6;
      v12 = v6[2];
      v11 = v6[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_10004E820((v11 > 1), v12 + 1, 1);
        v6 = v17[0];
      }

      ++v5;
      v6[2] = v12 + 1;
      v13 = &v6[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v7 += 4;
      if (v3 == v5)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
LABEL_9:
    v14 = v6[2];
    if (v14)
    {
      v15 = v6[2 * v14 + 2];

      sub_100067CC8(1, v6);
    }

    else
    {

      return 0;
    }

    return v15;
  }

  return result;
}

unint64_t sub_100068500()
{
  result = qword_1000B5D48;
  if (!qword_1000B5D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D48);
  }

  return result;
}

BOOL sub_100068564(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    return 0;
  }

  if (*(a2 + 17))
  {
    return 1;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) == 0;
  }

  return (*(a2 + 16) & 1) == 0 && *(a1 + 8) < *(a2 + 8);
}

uint64_t sub_1000685EC(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a6 & 0x100) == 0)
  {
    if ((a3 & 0x100) != 0 || a4 < a1)
    {
      return 0;
    }

    if (a4 == a1)
    {
      if (a6)
      {
        if ((a3 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a3 & 1) == 0 && a5 < a2)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t sub_10006867C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if ((a3 & 0x100) == 0)
  {
    if ((a6 & 0x100) != 0 || a1 < a4)
    {
      return 0;
    }

    if (a1 == a4)
    {
      if (a3)
      {
        if ((a6 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((a6 & 1) == 0 && a2 < a5)
      {
        return 0;
      }
    }
  }

  return 1;
}

BOOL sub_1000686B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 17))
  {
    return 0;
  }

  if (*(a1 + 17))
  {
    return 1;
  }

  if (*a2 < *a1)
  {
    return 1;
  }

  if (*a2 != *a1)
  {
    return 0;
  }

  if (*(a2 + 16))
  {
    return (*(a1 + 16) & 1) == 0;
  }

  return (*(a1 + 16) & 1) == 0 && *(a2 + 8) < *(a1 + 8);
}

Swift::Int sub_100068728()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  Hasher.init(_seed:)();
  if (v4 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v2), (v3))
  {
    v1 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1000687B4()
{
  if (*(v0 + 17) & 1) != 0 || (v1 = *(v0 + 16), v3 = *v0, v2 = *(v0 + 8), Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v3), (v1))
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_10006881C(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  Hasher.init(_seed:)();
  if (v5 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v3), (v4))
  {
    v2 = 0;
  }

  else
  {
    Hasher._combine(_:)(1uLL);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

BOOL sub_1000688A4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    return (*(a2 + 17) & 1) != 0;
  }

  if (*(a2 + 17))
  {
    return 0;
  }

  if (*a1 == *a2)
  {
    if (*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        return 1;
      }
    }

    else if ((*(a2 + 16) & 1) == 0 && *(a1 + 8) == *(a2 + 8))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100068908(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + 24 * (v10 | (v8 << 6));
    if ((*(v11 + 17) & 1) == 0)
    {
      result = sub_10006EFF0(*v11, *(v11 + 8), *(v11 + 16) & 1);
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100068A00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100068C4C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100068A40(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v25 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(result + 48) + 24 * (v10 | (v3 << 6));
    v14 = *v13;
    v26 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 17);
    Hasher.init(_seed:)();
    if (v16 & 1) != 0 || (Hasher._combine(_:)(1uLL), Hasher._combine(_:)(v14), (v15))
    {
      v17 = 0;
    }

    else
    {
      Hasher._combine(_:)(1uLL);
      v17 = v26;
    }

    Hasher._combine(_:)(v17);
    v18 = Hasher._finalize()();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }

    v21 = ~v19;
    while (1)
    {
      v22 = *(a2 + 48) + 24 * v20;
      if (*(v22 + 17))
      {
        if (v16)
        {
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (*v22 == v14)
      {
        v23 = v16;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_20;
      }

      if ((*(v22 + 16) & 1) == 0)
      {
        break;
      }

      if (v15)
      {
        goto LABEL_31;
      }

LABEL_20:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return 0;
      }
    }

    if ((v15 & 1) != 0 || *(v22 + 8) != v26)
    {
      goto LABEL_20;
    }

LABEL_31:
    result = v24;
    v7 = v25;
  }

  while (v25);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v25 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100068C4C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100062BE0();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 49);
    do
    {
      v5 = *(v4 - 17);
      v6 = *(v4 - 9);
      v7 = *(v4 - 1);
      v8 = *v4;
      v4 += 24;
      sub_100056A44(v9, v5, v6, v7 | (v8 << 8));
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for InputOrigin.Element(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InputOrigin.Element(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InputOrigin.Element(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 18) = v3;
  return result;
}

uint64_t sub_100068D34(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100068D50(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 17) = 1;
  }

  else
  {
    *(result + 17) = 0;
  }

  return result;
}

unint64_t sub_100068D84()
{
  result = qword_1000B5D50;
  if (!qword_1000B5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B5D50);
  }

  return result;
}

unint64_t sub_100068DE4()
{
  result = qword_1000B5D58[0];
  if (!qword_1000B5D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000B5D58);
  }

  return result;
}

uint64_t sub_100068E38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (!(a3 >> 6))
  {
    v4 = 11565;
LABEL_6:
    v6 = v4;
    String.append(_:)(*&a1);
    return v6;
  }

  if (a3 >> 6 != 1)
  {
    v4 = 45;
    goto LABEL_6;
  }

  v6 = 0;
  v3._countAndFlagsBits = 45;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  Character.write<A>(to:)();
  return v6;
}

Swift::Int sub_100068EDC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (!(a3 >> 6))
  {
    v4 = 0;
LABEL_6:
    Hasher._combine(_:)(v4);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (a3 >> 6 != 1)
  {
    v4 = 2;
    goto LABEL_6;
  }

  Hasher._combine(_:)(1uLL);
  Character.hash(into:)();
  Hasher._combine(_:)(a3 & 1);
  return Hasher._finalize()();
}

uint64_t sub_100068F84(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = sub_100068E38(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_100068E38(v2, v3, v4) && v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_10006902C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = sub_100068E38(*a2, *(a2 + 8), *(a2 + 16));
  v7 = v6;
  if (v5 == sub_100068E38(v2, v3, v4) && v7 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1000690E8(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = sub_100068E38(*a1, *(a1 + 8), *(a1 + 16));
  v7 = v6;
  if (v5 == sub_100068E38(v2, v3, v4) && v7 == v8)
  {

    v11 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_1000691A4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = sub_100068E38(*a2, *(a2 + 8), *(a2 + 16));
  v7 = v6;
  if (v5 == sub_100068E38(v2, v3, v4) && v7 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

void sub_100069274(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      Hasher._combine(_:)(1uLL);
      Character.hash(into:)();
      Hasher._combine(_:)(v2 & 1);
      return;
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  Hasher._combine(_:)(v3);

  String.hash(into:)();
}

Swift::Int sub_100069324(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  if (!(v2 >> 6))
  {
    v3 = 0;
LABEL_6:
    Hasher._combine(_:)(v3);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v2 >> 6 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  Hasher._combine(_:)(1uLL);
  Character.hash(into:)();
  Hasher._combine(_:)(v2 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1000693C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3 ^ a4;

  if (v7 >= 0x4000)
  {
    while (1)
    {
      v11 = Substring.subscript.getter();
      v13 = v12;
      v14 = Substring.index(after:)();
      v15 = String.Iterator.next()();
      if (!v15.value._object)
      {
        break;
      }

      if (v11 == v15.value._countAndFlagsBits && v15.value._object == v13)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v14 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    object = String.Iterator.next()().value._object;

    if (object)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t sub_100069534(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!(a3 >> 6))
  {
    if (a6 < 0x40u)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      goto LABEL_17;
    }

    return 0;
  }

  if (a3 >> 6 == 1)
  {
    if ((a6 & 0xC0) == 0x40)
    {
      if (a1 == a4 && a2 == a5)
      {
        return (a6 ^ a3 ^ 1) & 1;
      }

      v7 = a3;
      v8 = a6;
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a3 = v7;
      a6 = v8;
      if (v9)
      {
        return (a6 ^ a3 ^ 1) & 1;
      }
    }

    return 0;
  }

  if ((a6 & 0xC0) != 0x80)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

LABEL_17:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_10006961C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1000693C4(11565, 0xE200000000000000, a1, a2, a3, a4))
  {
    result = Substring.index(_:offsetBy:limitedBy:)();
    if (v7)
    {
      result = a2;
    }

    if (a2 >> 14 >= result >> 14)
    {
LABEL_12:
      Substring.subscript.getter();

      v8 = static String._fromSubstring(_:)();
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  result = Substring.distance(from:to:)();
  if (result == 2)
  {
    if ((a2 ^ a1) >= 0x4000)
    {
      Substring.index(before:)();
      v8 = Substring.subscript.getter();
LABEL_13:

      return v8;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v9)
  {
    result = a2;
  }

  if (a2 >> 14 >= result >> 14)
  {
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10006983C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1000698CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000698CC()
{
  result = qword_1000B5DE0;
  if (!qword_1000B5DE0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000B5DE0);
  }

  return result;
}

uint64_t sub_10006991C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a4;
  v47 = a3;
  v32 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = type metadata accessor for Parsed(0, AssociatedTypeWitness, v6, v7);
  __chkstk_darwin();
  v9 = &v28 - v8;
  v10 = type metadata accessor for Optional();
  v29 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v15 = &v28 - v14;
  sub_10002F35C(a1, v41);
  sub_1000021C0(&qword_1000B5528, &unk_100094A90);
  if (swift_dynamicCast())
  {
    v28 = a1;
    v45[1] = v37;
    v45[2] = v38;
    v45[3] = v39;
    v46 = v40;
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45[0] = v36;
    sub_10002600C(v45, &v33, &qword_1000B5978, &qword_100094AA0);
    if (*(&v33 + 1))
    {
      sub_10002600C(&v34 + 8, v41, &qword_1000B5428, &qword_100093030);
      sub_100039234(&v33);
    }

    else
    {
      sub_100002BCC(&v33, &qword_1000B5978, &qword_100094AA0);
      memset(v41, 0, 32);
    }

    sub_1000021C0(&qword_1000B5428, &qword_100093030);
    v18 = swift_dynamicCast();
    v19 = *(v13 + 56);
    v20 = v28;
    if (v18)
    {
      v19(v12, 0, 1, AssociatedTypeWitness);
      (*(v13 + 32))(v15, v12, AssociatedTypeWitness);
      (*(v13 + 16))(v9, v15, AssociatedTypeWitness);
      swift_storeEnumTagMultiPayload();
      (*(v47 + 40))(v9, v32);
      sub_100002B38(v20);
      (*(v13 + 8))(v15, AssociatedTypeWitness);
    }

    else
    {
      v19(v12, 1, 1, AssociatedTypeWitness);
      (*(v29 + 8))(v12, v10);
      sub_10002600C(v45, &v33, &qword_1000B5978, &qword_100094AA0);
      v21 = *(&v33 + 1);
      if (*(&v33 + 1))
      {
        v22 = v33;
        v23 = v34;

        sub_100039234(&v33);
      }

      else
      {
        sub_100002BCC(&v33, &qword_1000B5978, &qword_100094AA0);
        v22 = *(&v43 + 1);
        v23 = *(&v44 + 1);
        v21 = v44;
      }

      sub_10002A1BC();
      swift_allocError();
      *v24 = v22;
      *(v24 + 8) = v21;
      *(v24 + 16) = v23;
      v25 = v36;
      v26 = v35;
      v27 = v33;
      *(v24 + 40) = v34;
      *(v24 + 24) = v27;
      *(v24 + 56) = v26;
      *(v24 + 72) = v25;
      *(v24 + 80) = 11;
      swift_willThrow();
      sub_100002B38(v20);
    }

    return sub_100040178(&v42);
  }

  else
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    sub_100002BCC(&v33, &qword_1000B5530, &qword_1000924C8);
    sub_10002A1BC();
    swift_allocError();
    *v16 = 3;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 72) = 0;
    *(v16 + 80) = 15;
    swift_willThrow();
    return sub_100002B38(a1);
  }
}

uint64_t sub_100069E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100069EC4(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100069EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Parsed(0, AssociatedTypeWitness, v11, v12);
  __chkstk_darwin();
  v14 = (&v17 - v13);
  (*(a5 + 32))(a4, a5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = (*v14)(a1, a2, a3);

    return v15;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006A034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  type metadata accessor for Parsed(0, a3, a3, a4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10006A080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100069EC4(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10006A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100069EC4(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10006A178@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v26 = a5;
  v40 = a3;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin();
  v23 = &v21 - v9;
  v25 = type metadata accessor for Parsed(0, AssociatedTypeWitness, v10, v11);
  __chkstk_darwin();
  v24 = &v21 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v21 - v16;
  sub_10002F35C(a1, v37);
  dispatch thunk of Decodable.init(from:)();
  if (!v5)
  {
    (*(v13 + 32))(v17, v15, AssociatedTypeWitness);
LABEL_10:
    v19 = v24;
    (*(v13 + 16))(v24, v17, AssociatedTypeWitness);
    swift_storeEnumTagMultiPayload();
    (*(v40 + 40))(v19, v27);
    sub_100002B38(a1);
    return (*(v13 + 8))(v17, AssociatedTypeWitness);
  }

  sub_10002F35C(a1, v36);
  sub_1000021C0(&qword_1000B5528, &unk_100094A90);
  if (swift_dynamicCast())
  {
    v38[1] = v32;
    v38[2] = v33;
    v38[3] = v34;
    v39 = v35;
    v37[0] = v28;
    v37[1] = v29;
    v37[2] = v30;
    v38[0] = v31;
    sub_10002600C(v38, &v28, &qword_1000B5978, &qword_100094AA0);
    sub_100040178(v37);
    if (*(&v28 + 1))
    {
      sub_10002600C(&v29 + 8, v36, &qword_1000B5428, &qword_100093030);
      sub_100039234(&v28);
    }

    else
    {
      sub_100002BCC(&v28, &qword_1000B5978, &qword_100094AA0);
      memset(v36, 0, 32);
    }

    sub_1000021C0(&qword_1000B5428, &qword_100093030);
    v18 = v23;
    if (swift_dynamicCast())
    {

      (*(v13 + 56))(v18, 0, 1, AssociatedTypeWitness);
      (*(v13 + 32))(v17, v18, AssociatedTypeWitness);
      goto LABEL_10;
    }

    (*(v13 + 56))(v18, 1, 1, AssociatedTypeWitness);
    (*(v21 + 8))(v18, v22);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    sub_100002BCC(&v28, &qword_1000B5530, &qword_1000924C8);
  }

  swift_willThrow();
  return sub_100002B38(a1);
}

uint64_t sub_10006A614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100069EC4(a1, a2, a3, a4, WitnessTable);
}

__n128 sub_10006A690(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006A6A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006A6EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006A744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  if (*(v14 + 16) && (v15 = sub_1000561CC(a1, a2, a3), (v16 & 1) != 0))
  {
    sub_100058AFC(*(v14 + 56) + 72 * v15, &v21);
    v27[1] = v23;
    v28 = v24;
    v29 = v25;
    v26 = v21;
    v27[0] = v22;
  }

  else
  {
    *&v26 = a1;
    *(&v26 + 1) = a2;
    *&v27[0] = a3;
    *(&v27[0] + 1) = a5;
    *&v28 = type metadata accessor for Array();
    *(&v28 + 1) = &_swiftEmptySetSingleton;
    v29 = 1;
  }

  sub_10005AC84(v27 + 8, &v21);
  if (*(&v22 + 1))
  {
    type metadata accessor for Array();
    if (swift_dynamicCast())
    {
      if ((v29 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_100002BCC(&v21, &qword_1000B5428, &qword_100093030);
  }

  v20 = a5;

  if (v29)
  {
LABEL_11:
    type metadata accessor for Array();
    Array.removeAll(keepingCapacity:)(0);
    v29 = 0;
  }

LABEL_12:
  a6(&v20);
  v17 = v20;
  *(&v22 + 1) = type metadata accessor for Array();
  *&v21 = v17;
  sub_100062CA0(&v21, v27 + 8);

  sub_100055BDC(v18);
  sub_10006AD50(&v26);
  return sub_100039234(&v26);
}

uint64_t sub_10006A948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8))
  {
    v8 = *(a1 + 48);
    v13[2] = *(a1 + 32);
    v13[3] = v8;
    v14 = *(a1 + 64);
    v9 = *(a1 + 16);
    v13[0] = *a1;
    v13[1] = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    sub_10006C3D0(v13, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v12;
  }

  else
  {
    sub_100002BCC(a1, &qword_1000B5978, &qword_100094AA0);
    sub_10006C0A0(a2, a3, a4, v13);

    return sub_100002BCC(v13, &qword_1000B5978, &qword_100094AA0);
  }

  return result;
}

uint64_t sub_10006AA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7, uint64_t a8)
{
  v28[1] = a7;
  v29 = a6;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v15 = v28 - v14;
  v16 = *(a8 - 8);
  __chkstk_darwin();
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[0] = v8;
  v19 = *v8;
  if (*(v19 + 16) && (v20 = sub_1000561CC(a1, a2, a3), (v21 & 1) != 0))
  {
    sub_100058AFC(*(v19 + 56) + 72 * v20, &v30);
    v36[1] = v32;
    v37 = v33;
    v38 = v34;
    v35 = v30;
    v36[0] = v31;
  }

  else
  {
    *&v37 = a8;
    v22 = sub_100007DE4(v36 + 1);
    (*(v16 + 16))(v22, a5, a8);
    *&v35 = a1;
    *(&v35 + 1) = a2;
    *&v36[0] = a3;
    *(&v37 + 1) = &_swiftEmptySetSingleton;
    v38 = 1;
  }

  sub_10005AC84(v36 + 8, &v30);
  sub_1000021C0(&qword_1000B5428, &qword_100093030);
  v23 = swift_dynamicCast();
  v24 = *(v16 + 56);
  if (v23)
  {
    v24(v15, 0, 1, a8);
    (*(v16 + 32))(v18, v15, a8);
  }

  else
  {
    v24(v15, 1, 1, a8);
    (*(v16 + 16))(v18, a5, a8);
  }

  v29(v18);
  *(&v31 + 1) = a8;
  v25 = sub_100007DE4(&v30);
  (*(v16 + 16))(v25, v18, a8);
  sub_100062CA0(&v30, v36 + 8);

  sub_100055BDC(v26);
  sub_10006AD50(&v35);
  (*(v16 + 8))(v18, a8);
  return sub_100039234(&v35);
}

uint64_t sub_10006AD50(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *v1;
  if (*(v6 + 16) && (v7 = sub_1000561CC(*a1, v4, v5), (v8 & 1) != 0))
  {
    sub_100058AFC(*(v6 + 56) + 72 * v7, v16);
    sub_100058AFC(a1, v15);

    sub_100055BDC(v9);
    v10 = v15[0];
    v11 = v15[1];
    v12 = v15[2];
    sub_100058AFC(v15, v14);

    sub_10006A948(v14, v10, v11, v12);
    sub_100039234(v15);
    return sub_100039234(v16);
  }

  else
  {
    sub_100058AFC(a1, v16);

    return sub_10006A948(v16, v3, v4, v5);
  }
}

void *sub_10006AE74()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5DF0, &qword_100094B08);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        result = sub_10002BB8C(v19, v20, v23);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_10006AFE8()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5DE8, &qword_100094B00);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v29 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v30 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 24 * v17;
        v19 = (*(v2 + 48) + 24 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = 72 * v17;
        sub_100058AFC(*(v2 + 56) + 72 * v17, v31);
        v24 = (*(v30 + 48) + v18);
        *v24 = v20;
        v24[1] = v21;
        v24[2] = v22;
        v25 = *(v30 + 56) + v23;
        *v25 = v31[0];
        v26 = v31[1];
        v27 = v31[2];
        v28 = v31[3];
        *(v25 + 64) = v32;
        *(v25 + 32) = v27;
        *(v25 + 48) = v28;
        *(v25 + 16) = v26;
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

        v1 = v29;
        v4 = v30;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_10006B1C8()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5E00, &qword_100094B10);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

void *sub_10006B338()
{
  v1 = v0;
  sub_1000021C0(&qword_1000B5DF8, &unk_100096560);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

Swift::Int sub_10006B49C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000021C0(&qword_1000B5DF0, &qword_100094B08);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = result + 64;
    while (1)
    {
      if (!v12)
      {
        v18 = v8;
        while (1)
        {
          v8 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v8 >= v13)
          {
            break;
          }

          v19 = v9[v8];
          ++v18;
          if (v19)
          {
            v17 = __clz(__rbit64(v19));
            v12 = (v19 - 1) & v19;
            goto LABEL_15;
          }
        }

        if ((v36 & 1) == 0)
        {

          v3 = v2;
          goto LABEL_39;
        }

        v34 = 1 << *(v5 + 32);
        v3 = v2;
        if (v34 >= 64)
        {
          bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v34;
        }

        *(v5 + 16) = 0;
        break;
      }

      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v37 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
        sub_10002BB8C(v23, v24, v25);
      }

      Hasher.init(_seed:)();
      if (v25 >> 6)
      {
        if (v25 >> 6 == 1)
        {
          Hasher._combine(_:)(1uLL);
          Character.hash(into:)();
          Hasher._combine(_:)(v25 & 1);
          goto LABEL_23;
        }

        v26 = 2;
      }

      else
      {
        v26 = 0;
      }

      Hasher._combine(_:)(v26);
      String.hash(into:)();
LABEL_23:
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }
  }

LABEL_39:
  *v3 = v7;
  return result;
}

Swift::Int sub_10006B7A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000021C0(&qword_1000B5DE8, &qword_100094B00);
  v48 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v46 = v2;
    v47 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v49 = (v12 - 1) & v12;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 56);
      v28 = (*(v5 + 48) + 24 * v26);
      v29 = *v28;
      v30 = v28[1];
      v31 = v28[2];
      v32 = v27 + 72 * v26;
      if (v48)
      {
        v51 = *v32;
        v33 = *(v32 + 16);
        v34 = *(v32 + 32);
        v35 = *(v32 + 48);
        v55 = *(v32 + 64);
        v53 = v34;
        v54 = v35;
        v52 = v33;
      }

      else
      {
        sub_100058AFC(v32, &v51);
      }

      Hasher.init(_seed:)();
      v50 = v30;
      String.hash(into:)();
      Hasher._combine(_:)(*(v31 + 16));
      v36 = *(v31 + 16);
      if (v36)
      {
        v37 = v31 + 40;
        do
        {

          String.hash(into:)();

          v37 += 16;
          --v36;
        }

        while (v36);
      }

      result = Hasher._finalize()();
      v38 = -1 << *(v7 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v14 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v17 = v50;
        v16 = v29;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v14 + 8 * v40);
          if (v44 != -1)
          {
            v15 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v39) & ~*(v14 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v17 = v50;
      v16 = v29;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v18 = (*(v7 + 48) + 24 * v15);
      *v18 = v16;
      v18[1] = v17;
      v18[2] = v31;
      v19 = *(v7 + 56) + 72 * v15;
      *v19 = v51;
      v20 = v52;
      v21 = v53;
      v22 = v54;
      *(v19 + 64) = v55;
      *(v19 + 32) = v21;
      *(v19 + 48) = v22;
      *(v19 + 16) = v20;
      ++*(v7 + 16);
      v5 = v47;
      v12 = v49;
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v49 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_37;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v9, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
  return result;
}

Swift::Int sub_10006BB18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000021C0(&qword_1000B5E00, &qword_100094B10);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

Swift::Int sub_10006BDC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000021C0(&qword_1000B5DF8, &unk_100096560);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_10006C058(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

double sub_10006C0A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v7 = sub_1000561CC(a1, a2, a3);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v16 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10006AFE8();
      v11 = v16;
    }

    v12 = *(v11 + 56) + 72 * v9;
    v13 = *(v12 + 48);
    *(a4 + 32) = *(v12 + 32);
    *(a4 + 48) = v13;
    *(a4 + 64) = *(v12 + 64);
    v14 = *(v12 + 16);
    *a4 = *v12;
    *(a4 + 16) = v14;
    sub_10006C174(v9, v11);
    *v5 = v11;
  }

  else
  {
    *(a4 + 64) = 0;
    result = 0.0;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

char *sub_10006C174(char *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v24 = v4;
    v25 = v2;
    do
    {
      v9 = v7;
      v10 = *(*(v2 + 48) + 24 * v6 + 16);
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._combine(_:)(*(v10 + 16));
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 40;
        do
        {

          String.hash(into:)();

          v12 += 16;
          --v11;
        }

        while (v11);
      }

      v13 = Hasher._finalize()();

      v7 = v9;
      v14 = v13 & v9;
      if (v3 >= v8)
      {
        v4 = v24;
        if (v14 < v8)
        {
          v2 = v25;
        }

        else
        {
          v2 = v25;
          if (v3 >= v14)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
        v4 = v24;
        v2 = v25;
        if (v14 >= v8 || v3 >= v14)
        {
LABEL_14:
          v15 = *(v2 + 48);
          v16 = v15 + 24 * v3;
          v17 = (v15 + 24 * v6);
          if (v3 != v6 || v16 >= v17 + 24)
          {
            v18 = *v17;
            *(v16 + 16) = *(v17 + 2);
            *v16 = v18;
          }

          v19 = *(v2 + 56);
          result = (v19 + 72 * v3);
          v20 = (v19 + 72 * v6);
          if (72 * v3 < (72 * v6) || result >= v20 + 72 || v3 != v6)
          {
            result = memmove(result, v20, 0x48uLL);
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(v2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v23;
    ++*(v2 + 36);
  }

  return result;
}

uint64_t sub_10006C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000561CC(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_10006B7A8(v18, a5 & 1);
      v13 = sub_1000561CC(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10006AFE8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 72 * v13;

    return sub_10006C58C(a1, v24);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 24 * v13);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v27 = v23[7] + 72 * v13;
  *v27 = *a1;
  v28 = *(a1 + 16);
  v29 = *(a1 + 32);
  v30 = *(a1 + 48);
  *(v27 + 64) = *(a1 + 64);
  *(v27 + 32) = v29;
  *(v27 + 48) = v30;
  *(v27 + 16) = v28;
  v31 = v23[2];
  v17 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v32;
}

uint64_t sub_10006C5C4(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100056308(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_10006BDC0(v14, a3 & 1);
      v9 = sub_100056308(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000021C0(&qword_1000B59C0, &unk_100093050);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_10006B338();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

__n128 sub_10006C730(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10006C754(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10006C79C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10006C800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10006C824(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 81))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 80);
  if (v3 <= 0xF)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}
void BlueprintLayoutCollectionPinAdjuster.shouldInvalidateLayoutAttributes(for:offset:insets:contentSize:hasViewOnScreen:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, unint64_t a30, unint64_t a31, unint64_t a32)
{
  OUTLINED_FUNCTION_70();
  v94 = v37;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  OUTLINED_FUNCTION_5_46();
  memcpy(__dst, v32, sizeof(__dst));
  v113 = *(v32 + 565);
  v101 = *(v32 + 566);
  v100 = *(v32 + 567);
  v46 = *(v32 + 568);
  v99 = *(v32 + 576);
  v102 = *(v32 + 584);
  v112 = *(v32 + 592);
  v111 = MEMORY[0x1E69E7CC0];
  v47 = v46 + 64;
  v48 = 1 << *(v46 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v46 + 64);
  v51 = (v48 + 63) >> 6;
  v89 = fmin(v43, v45) <= 0.0;
  v103 = v46;
  sub_1D8190DB4();
  v52 = 0;
  v95 = v51;
  v96 = v47;
  if (v50)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v53 >= v51)
    {

      OUTLINED_FUNCTION_72();
      return;
    }

    v50 = *(v47 + 8 * v53);
    ++v52;
    if (v50)
    {
      v52 = v53;
LABEL_8:
      while (2)
      {
        v54 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v55 = (v52 << 9) | (8 * v54);
        v97 = *(*(v103 + 48) + v55);
        v56 = *(*(v103 + 56) + v55);
        v57 = sub_1D7E36AB8(v56);
        v58 = v56 & 0xC000000000000001;
        sub_1D8190DB4();
        for (i = 0; v57 != i; ++i)
        {
          if (v58)
          {
            v60 = MEMORY[0x1DA714420](i, v56);
          }

          else
          {
            if (i >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v60 = *(v56 + 8 * i + 32);
          }

          v61 = v60;
          if (__OFADD__(i, 1))
          {
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          v62 = &v60[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
          OUTLINED_FUNCTION_8_4(&v60[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait], v110);
          if (v62[8])
          {
            goto LABEL_18;
          }

          if ((*v62 & 1) == 0)
          {
            goto LABEL_52;
          }

          v63 = sub_1D8192634();

          if (v63)
          {

LABEL_53:
            sub_1D7F0A764(v56);
            goto LABEL_54;
          }

          if (v62[8])
          {
LABEL_18:
          }

          else
          {
            if (*v62)
            {
LABEL_52:

              goto LABEL_53;
            }

            v64 = sub_1D8192634();

            if (v64)
            {
              goto LABEL_53;
            }
          }
        }

        v65 = v102;
        if (*(v102 + 16))
        {
          sub_1D7E7E198(v97);
          if (v66)
          {
            v115.origin.x = OUTLINED_FUNCTION_4_5();
            v115.size.height = v33;
            if (CGRectIntersectsRect(v115, v118))
            {
              if (v57)
              {
                if (v57 < 1)
                {
                  goto LABEL_60;
                }

                v67 = 0;
                v98 = v113;
                v92 = v34;
                v93 = v45;
                v90 = v36;
                v91 = v35;
                do
                {
                  if (v58)
                  {
                    v68 = MEMORY[0x1DA714420](v67, v56);
                  }

                  else
                  {
                    v68 = *(v56 + 8 * v67 + 32);
                  }

                  v69 = v68;
                  memcpy(v105, __dst, 0x235uLL);
                  v105[565] = v113;
                  v105[566] = v101;
                  v105[567] = v100;
                  v106 = v103;
                  v107 = v99;
                  v108 = v65;
                  v109 = v112;
                  BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)();
                  v71 = v70;
                  v72 = v71;
                  if (v98)
                  {
                    [v71 frame];
                    OUTLINED_FUNCTION_11_1();
                    v116.origin.x = OUTLINED_FUNCTION_4_5();
                    v116.size.height = v33;
                    if (CGRectIntersectsRect(v116, v119))
                    {
                      v73 = v43;
                      v74 = v33;
                      v75 = v41;
                      v76 = v39;
                      [v72 frame];
                      v78 = v77;
                      v80 = v79;
                      v82 = v81;
                      v84 = v83;

                      [v69 frame];
                      OUTLINED_FUNCTION_11_1();
                      v117.origin.x = v78;
                      v117.origin.y = v80;
                      v117.size.width = v82;
                      v117.size.height = v84;
                      if (!CGRectEqualToRect(v117, v120) || (v94(v72) & 1) == 0 || (v101 & 1) != 0 || v89 && (v85 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge, OUTLINED_FUNCTION_8_4(v72 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge, v104), *(v72 + v85) != 3))
                      {
                        v72 = v72;
                        MEMORY[0x1DA713500]();
                        OUTLINED_FUNCTION_15_25();
                        if (v87)
                        {
                          OUTLINED_FUNCTION_2_10(v86);
                          sub_1D81913B4();
                        }

                        sub_1D8191404();
                      }

                      v39 = v76;
                      v41 = v75;
                      v33 = v74;
                      v43 = v73;
                      v34 = v92;
                      v45 = v93;
                      v36 = v90;
                      v35 = v91;
                    }

                    else
                    {

                      v69 = v72;
                    }
                  }

                  else
                  {
                    MEMORY[0x1DA713500]();
                    OUTLINED_FUNCTION_15_25();
                    if (v87)
                    {
                      OUTLINED_FUNCTION_2_10(v88);
                      sub_1D81913B4();
                    }

                    sub_1D8191404();
                  }

                  ++v67;

                  v65 = v102;
                }

                while (v57 != v67);
              }
            }
          }
        }

LABEL_54:
        v51 = v95;
        v47 = v96;
        if (v50)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

void BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)()
{
  OUTLINED_FUNCTION_70();
  v172 = v1;
  *&v173 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  *&v174 = v15;
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v169 = v17;
  MaxY = v16;
  MEMORY[0x1EEE9AC00](*&v16);
  v19 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v155 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v155 - v24;
  MEMORY[0x1EEE9AC00](v26);
  *&v164 = &v155 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v155 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v155 - v32;
  memcpy(v179, v0, sizeof(v179));
  v34 = *(v0 + 168);
  memcpy(v181, (v0 + 176), sizeof(v181));
  v35 = *(v0 + 376);
  memcpy(v183, (v0 + 384), 0xB5uLL);
  v189 = *(v0 + 565);
  v36 = v189;
  v184 = *(v0 + 566);
  v185 = *(v0 + 582);
  v37 = *(v0 + 584);
  v38 = *(v0 + 592);
  v39 = *(v0 + 600);
  v171 = v34;
  v180 = v34;
  v40 = v14;
  v41 = v10;
  v165 = v35;
  v166 = v8;
  v182 = v35;
  v183[181] = v189;
  v186 = v37;
  v167 = v38;
  v168 = v39;
  v187 = v38;
  v188 = v39;
  sub_1D80323E8(&v176, v40, v12, v10, v6, v4, v172, *&v173);
  a_low = LOBYTE(v176.a);
  v43 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
  OUTLINED_FUNCTION_8_4(v174 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge, &v178);
  switch(*(v174 + v43))
  {
    case 1:
      if (a_low != 1)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    case 2:
      if (a_low <= 1)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    case 3:
      goto LABEL_3;
    default:
      if (a_low)
      {
LABEL_3:
        v44 = v174 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait;
        OUTLINED_FUNCTION_8_4(v174 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait, &v175);
        v45 = *v44;
        switch(*(v44 + 8))
        {
          case 1:
            v96 = v12;
            v97 = v10;
            [v174 frame];
            v102 = v98;
            v103 = v99;
            v104 = v100;
            v105 = v101;
            if (v36)
            {
              Height = CGRectGetHeight(*&v98);
              v107 = v96 + v97;
              if (v96 + v97 >= v103)
              {
                v108 = v103 + v45 - Height;
                if (v108 >= v107)
                {
                  v103 = v107 + 0.0;
                }

                else
                {
                  v103 = v108;
                }
              }
            }

            else
            {
              CGRectGetWidth(*&v98);
              OUTLINED_FUNCTION_1_98();
              v117 = v115 + v116;
              if (v117 >= v102)
              {
                v118 = v102 + v45 - v114;
                if (v118 >= v117)
                {
                  v102 = v117 + 0.0;
                }

                else
                {
                  v102 = v118;
                }
              }
            }

            v52 = v174;
            v46 = v102;
            v47 = v103;
            v48 = v104;
            v49 = v105;
            goto LABEL_97;
          case 2:
            v160 = *v44;
            v66 = OUTLINED_FUNCTION_13_28();
            sub_1D818E924();

            sub_1D818E974();
            v67 = MaxY;
            v68 = *(*&v169 + 8);
            (v68)(v25, *&MaxY);
            sub_1D7E7E7A8();
            v161 = 0.0;
            a = 0.0;
            OUTLINED_FUNCTION_20_21();
            if ((v73 & 1) == 0)
            {
              c = v176.c;
              d = v176.d;
              a = v176.a;
              b = v176.b;
            }

            v162 = b;
            v163 = c;
            v164 = d;
            v74 = OUTLINED_FUNCTION_13_28();
            sub_1D818E924();

            sub_1D818E974();
            (v68)(v22, *&v67);
            sub_1D7E7E7A8();
            OUTLINED_FUNCTION_20_21();
            if ((v78 & 1) == 0)
            {
              v76 = *&v179[16];
              v75 = *&v179[24];
              v77 = *&v179[8];
              v161 = *v179;
            }

            v158 = v77;
            v159 = v76;
            v167 = v75;
            v79 = OUTLINED_FUNCTION_13_28();
            sub_1D818E924();

            sub_1D818E974();
            (v68)(v19, *&v67);
            v80 = sub_1D7EE287C();
            if (v80)
            {
              v81 = v80;
            }

            else
            {
              v81 = MEMORY[0x1E69E7CC0];
            }

            [v174 frame];
            v83 = v82;
            OUTLINED_FUNCTION_18_22();
            if (v84)
            {
              v172 = v8;
              *&v173 = v83;
              v168 = a;
              v85 = *(v81 + 16);
              v156 = v12;
              v157 = v41;
              if (v85)
              {
                OUTLINED_FUNCTION_7_42();
                do
                {
                  OUTLINED_FUNCTION_10_39();
                  if (v6 <= OUTLINED_FUNCTION_21_20())
                  {
                    if (v19)
                    {
                      OUTLINED_FUNCTION_16_25();
                    }

                    else
                    {
                      v86 = OUTLINED_FUNCTION_9_26();
                      OUTLINED_FUNCTION_14_25(v86, v87);
                    }
                  }

                  v68 += 32;
                  --v85;
                }

                while (v85);

                if (v19)
                {
                  v88 = 0.0;
                }

                else
                {
                  v88 = MaxY;
                }

                v89 = v169;
                if (v19)
                {
                  v89 = 0.0;
                }

                v169 = v89;
                MaxY = v88;
                if (v19)
                {
                  v90 = 0.0;
                }

                else
                {
                  v90 = v83;
                }

                if (v19)
                {
                  v91 = 0.0;
                }

                else
                {
                  v91 = a;
                }

                v92 = v163;
                v6 = v4;
                v4 = v171;
              }

              else
              {

                v169 = 0.0;
                MaxY = 0.0;
                v90 = 0.0;
                v91 = 0.0;
                v92 = v163;
              }

              v147 = v172;
              v148 = *&v173;
              OUTLINED_FUNCTION_6_56();
              MinY = CGRectGetMinY(v196);
              v197.origin.y = v169;
              v197.origin.x = MaxY;
              v197.size.width = v90;
              v197.size.height = v91;
              v171 = MinY - CGRectGetMinY(v197);
              v198.origin.x = v161;
              v198.origin.y = v158;
              v198.size.width = v159;
              v198.size.height = v167;
              MaxY = CGRectGetMaxY(v198);
              OUTLINED_FUNCTION_6_56();
              v169 = CGRectGetMaxY(v199);
              v150 = v4;
              v151 = v6;
              v152 = v168;
              v200.origin.x = v168;
              v153 = v162;
              v200.origin.y = v162;
              v200.size.width = v92;
              v154 = v164;
              v200.size.height = v164;
              v167 = CGRectGetMinY(v200);
              v201.origin.x = v152;
              v201.origin.y = v153;
              v201.size.width = v92;
              v201.size.height = v154;
              CGRectGetMaxY(v201);
              v202.origin.x = v148;
              v202.origin.y = v147;
              v202.size.width = v151;
              v202.size.height = v150;
              CGRectGetHeight(v202);
            }

            else
            {

              v194.origin.x = a;
              v194.origin.y = v162;
              v194.size.width = v163;
              v194.size.height = v164;
              CGRectGetMaxX(v194);
              OUTLINED_FUNCTION_6_56();
              CGRectGetWidth(v195);
              OUTLINED_FUNCTION_1_98();
            }

            goto LABEL_96;
          case 3:
            if (v45 != 0.0)
            {
              OUTLINED_FUNCTION_72();

              v95 = v93;
              return;
            }

            v119 = [v174 indexPath];
            sub_1D818E924();

            sub_1D818E974();
            v120 = *(*&v169 + 8);
            v121 = v33;
            v122 = MaxY;
            v120(v121, *&MaxY);
            sub_1D7E7E7A8();
            v160 = 0.0;
            v123 = 0.0;
            OUTLINED_FUNCTION_20_21();
            if ((v127 & 1) == 0)
            {
              v125 = v176.c;
              v124 = v176.d;
              v123 = v176.a;
              v126 = v176.b;
            }

            v161 = v126;
            v162 = v125;
            v163 = v124;
            v128 = OUTLINED_FUNCTION_13_28();
            sub_1D818E924();

            sub_1D818E974();
            v120(v30, *&v122);
            sub_1D7E7E7A8();
            OUTLINED_FUNCTION_20_21();
            if ((v132 & 1) == 0)
            {
              v130 = *&v179[16];
              v129 = *&v179[24];
              v131 = *&v179[8];
              v160 = *v179;
            }

            v158 = v131;
            v159 = v130;
            v167 = v129;
            v133 = OUTLINED_FUNCTION_13_28();
            v134 = v164;
            sub_1D818E924();

            sub_1D818E974();
            v120(*&v134, *&v122);
            v135 = sub_1D7EE287C();
            if (v135)
            {
              v136 = v135;
            }

            else
            {
              v136 = MEMORY[0x1E69E7CC0];
            }

            [v174 frame];
            v138 = v137;
            OUTLINED_FUNCTION_18_22();
            if (v139)
            {
              v172 = v8;
              *&v173 = v138;
              v168 = v123;
              v140 = *(v136 + 16);
              v156 = v12;
              v157 = v41;
              if (v140)
              {
                OUTLINED_FUNCTION_7_42();
                do
                {
                  OUTLINED_FUNCTION_10_39();
                  if (v6 <= OUTLINED_FUNCTION_21_20())
                  {
                    if (v120)
                    {
                      OUTLINED_FUNCTION_16_25();
                    }

                    else
                    {
                      v141 = OUTLINED_FUNCTION_9_26();
                      OUTLINED_FUNCTION_14_25(v141, v142);
                    }
                  }

                  *&v122 += 32;
                  --v140;
                }

                while (v140);

                v143 = MaxY;
                if (v120)
                {
                  v143 = 0.0;
                }

                MaxY = v143;
                if (v120)
                {
                  v144 = 0.0;
                }

                else
                {
                  v144 = v169;
                }

                if (v120)
                {
                  v145 = 0.0;
                }

                else
                {
                  v145 = v123;
                }

                if (v120)
                {
                  v146 = 0.0;
                }

                else
                {
                  v146 = v138;
                }
              }

              else
              {

                MaxY = 0.0;
                v144 = 0.0;
                v145 = 0.0;
                v146 = 0.0;
              }

              v205.origin.x = OUTLINED_FUNCTION_3_82();
              CGRectGetMinY(v205);
              v206.origin.x = MaxY;
              v206.origin.y = v144;
              v206.size.width = v145;
              v206.size.height = v146;
              CGRectGetMinY(v206);
              v207.size.width = v159;
              v207.origin.x = v160;
              v207.origin.y = v158;
              v207.size.height = v167;
              v171 = CGRectGetMaxY(v207);
              v208.origin.x = OUTLINED_FUNCTION_3_82();
              CGRectGetMaxY(v208);
              v209.origin.x = v168;
              v209.origin.y = v161;
              v209.size.width = v162;
              v209.size.height = v163;
              CGRectGetMaxY(v209);
              v210.origin.x = OUTLINED_FUNCTION_3_82();
              CGRectGetHeight(v210);
            }

            else
            {

              v203.origin.x = v123;
              v203.origin.y = v161;
              v203.size.width = v162;
              v203.size.height = v163;
              CGRectGetMaxX(v203);
              OUTLINED_FUNCTION_6_56();
              CGRectGetWidth(v204);
              OUTLINED_FUNCTION_1_98();
            }

LABEL_96:
            OUTLINED_FUNCTION_6_56();
LABEL_97:
            sub_1D803231C(v52, v46, v47, v48, v49);
            break;
          default:
            [v174 frame];
            v50 = v12 + v10;
            if (v12 + v10 <= v47)
            {
              v50 = v47;
            }

            if (LOBYTE(v45))
            {
              v50 = v47;
            }

            v51 = v46 + v40;
            if (LOBYTE(v45))
            {
              v51 = v46;
            }

            if (v36)
            {
              v47 = v50;
            }

            else
            {
              v46 = v51;
            }

            v52 = v174;
            goto LABEL_97;
        }
      }

      else
      {
LABEL_15:
        [v174 frame];
        v53 = OUTLINED_FUNCTION_0_135();
        v58 = sub_1D803231C(v54, v53, v55, v56, v57);
        v59 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
        OUTLINED_FUNCTION_8_4(v174 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait, &v177);
        v60 = *(v174 + v59);
        if ((v60 & 0xFE) != 2 && v12 <= 0.0)
        {
          v190.origin.x = OUTLINED_FUNCTION_0_135();
          v61 = vabdd_f64(fabs(v12), v10) + CGRectGetHeight(v190);
          v191.origin.x = OUTLINED_FUNCTION_0_135();
          v62 = fmax(v61 / CGRectGetHeight(v191), 1.0);
          v192.origin.x = OUTLINED_FUNCTION_0_135();
          v63 = CGRectGetHeight(v192) * v62;
          v193.origin.x = OUTLINED_FUNCTION_0_135();
          v64 = (v63 - CGRectGetHeight(v193)) * 0.5;
          if (v60)
          {
            v65 = 1.0;
          }

          else
          {
            v65 = v62;
          }

          CGAffineTransformMakeScale(v179, v65, v62);
          v109 = *&v179[32];
          v110 = *&v179[40];
          v173 = *&v179[16];
          v174 = *v179;
          CGAffineTransformMakeTranslation(v179, 0.0, v64);
          v111 = *v179;
          v112 = *&v179[16];
          v113 = *&v179[32];
          *v179 = v174;
          *&v179[16] = v173;
          *&v179[32] = v109;
          *&v179[40] = v110;
          *&v176.a = v111;
          *&v176.c = v112;
          *&v176.tx = v113;
          CGAffineTransformConcat(&v175, v179, &v176);
          *v179 = v175;
          [v58 setTransform_];
        }
      }

      OUTLINED_FUNCTION_72();
      return;
  }
}

__C::CGRect __swiftcall BlueprintLayoutCollectionPinAdjuster.frameForSection(index:)(Swift::Int index)
{
  v2 = *(v1 + 584);
  v3 = 0.0;
  if (*(v2 + 16))
  {
    v4 = sub_1D7E7E198(index);
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
    if (v8)
    {
      v9 = *(v2 + 56) + 32 * v4;
      v3 = *v9;
      v5 = *(v9 + 8);
      v6 = *(v9 + 16);
      v7 = *(v9 + 24);
    }
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v10 = v3;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v10;
  return result;
}

id sub_1D803231C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [a1 frame];
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  if (CGRectEqualToRect(v13, v14))
  {

    return a1;
  }

  else
  {
    v10 = [a1 copy];
    [v10 setFrame_];
    return v10;
  }
}

void sub_1D80323E8(char *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D4>, double a6@<D5>, double a7@<D6>, double a8@<D7>)
{
  v9 = *(v8 + 1);
  if ((*(v8 + 565) & 1) == 0)
  {
    if (a2 >= 0.0)
    {
      v14 = *(v8 + 8);
      v15 = *(v8 + 56);
      if (v9 != 1)
      {
        v15 = *(v8 + 88);
      }

      if (*(v8 + 1))
      {
        v14 = v15;
      }

      v12 = a7 - v14 + a6 < a2;
      goto LABEL_15;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_18;
  }

  if (a3 + a4 < 0.0)
  {
    goto LABEL_9;
  }

  v10 = *(v8 + 16);
  v11 = *(v8 + 64);
  if (v9 != 1)
  {
    v11 = *(v8 + 96);
  }

  if (*(v8 + 1))
  {
    v10 = v11;
  }

  v12 = a8 - v10 + a5 < a3;
LABEL_15:
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

LABEL_18:
  *a1 = v13;
}

uint64_t BlueprintLayoutCollectionPinAdjuster.track(layoutAttributes:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  if (BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter())
  {
    v16 = [a1 indexPath];
    sub_1D818E924();

    sub_1D818E974();
    v38 = v6;
    v17 = *(v6 + 8);
    v17(v15, v4);
    v18 = sub_1D7EE287C();
    v19 = MEMORY[0x1E69E7CC0];
    if (v18)
    {
      v19 = v18;
    }

    v41[0] = v19;
    v20 = a1;
    MEMORY[0x1DA713500]();
    v21 = *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
    {
      OUTLINED_FUNCTION_2_10(v21);
      sub_1D81913B4();
    }

    sub_1D8191404();
    v22 = v41[0];
    v23 = [v20 indexPath];
    sub_1D818E924();

    v24 = sub_1D818E974();
    v17(v12, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v2 + 568);
    sub_1D7EF6514(v22, v24, isUniquelyReferenced_nonNull_native);
    *(v2 + 568) = v40;
    v6 = v38;
  }

  v26 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
  result = OUTLINED_FUNCTION_8_4(a1 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin, v41);
  if (*(a1 + v26) == 1)
  {
    v28 = [a1 indexPath];
    sub_1D818E924();

    sub_1D818E974();
    v29 = *(v6 + 8);
    v29(v9, v4);
    v30 = sub_1D7EE287C();
    v31 = MEMORY[0x1E69E7CC0];
    if (v30)
    {
      v31 = v30;
    }

    v40 = v31;
    v32 = a1;
    MEMORY[0x1DA713500]();
    v33 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v33 >> 1)
    {
      OUTLINED_FUNCTION_2_10(v33);
      sub_1D81913B4();
    }

    sub_1D8191404();
    v34 = v40;
    v35 = [v32 indexPath];
    sub_1D818E924();

    v36 = sub_1D818E974();
    v29(v12, v4);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v2 + 576);
    result = sub_1D7EF6514(v34, v36, v37);
    *(v2 + 576) = v39;
  }

  return result;
}

Swift::Void __swiftcall BlueprintLayoutCollectionPinAdjuster.trackSection(index:unionFrame:headerUnionFrame:pinnedHeaderFrames:)(Swift::Int index, __C::CGRect unionFrame, __C::CGRect_optional *headerUnionFrame, Swift::OpaquePointer pinnedHeaderFrames)
{
  OUTLINED_FUNCTION_5_46();
  v8 = v7;
  sub_1D7E7E7A8();
  if (v12 == 1)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v13[0] = v4[73];
    OUTLINED_FUNCTION_4_5();
    sub_1D7E7DFC8();
    v4[73] = v13[0];
    v9 = v4 + 74;
    if (headerUnionFrame->is_nil)
    {
      sub_1D7E7ED3C(v8, v13);
    }

    else
    {
      swift_isUniquelyReferenced_nonNull_native();
      v13[0] = *v9;
      sub_1D7E7DFC8();
      *v9 = v13[0];
    }

    sub_1D8190DB4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v4[75];
    sub_1D7E7EF78(pinnedHeaderFrames._rawValue, v8, isUniquelyReferenced_nonNull_native);
    v4[75] = v11;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D8032940(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 608))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 128);
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

uint64_t sub_1D8032980(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 600) = 0;
    *(result + 248) = 0u;
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 608) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 608) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8032A70(double a1, double a2)
{
  v3 = a2;
  v4 = a1;
  v5 = atan2f(v3, v4);
  if (a2 > 0.0 && v5 > 0.7854 && v5 < 2.3562)
  {
    return 1;
  }

  v8 = a2 < 0.0 && v5 < -0.7854;
  if (v8 && v5 > -2.3562)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

id sub_1D8032B00()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.63 green:0.63 blue:0.63 alpha:1.0];
  qword_1ECA0F980 = result;
  return result;
}

id sub_1D8032B48()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.87 green:0.87 blue:0.87 alpha:1.0];
  qword_1ECA0F988 = result;
  return result;
}

char *sub_1D8032B90(const void *a1, double a2)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, a1, sizeof(__dst));
  v6 = OBJC_IVAR____TtC5TeaUI15SwipeActionView_button;
  *&v2[v6] = [objc_opt_self() buttonWithType_];
  v7 = OBJC_IVAR____TtC5TeaUI15SwipeActionView_onTap;
  sub_1D7E40308(0, v8, v9, v10);
  *&v2[v7] = [objc_allocWithZone(v11) init];
  memcpy(&v2[OBJC_IVAR____TtC5TeaUI15SwipeActionView_swipeAction], a1, 0x48uLL);
  sub_1D8008738(__dst, v33);
  v32.receiver = v2;
  v32.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v32, sel_initWithFrame_, 0.0, 0.0, a2, a2);
  v13 = OBJC_IVAR____TtC5TeaUI15SwipeActionView_button;
  v14 = *&v12[OBJC_IVAR____TtC5TeaUI15SwipeActionView_button];
  v15 = v12;
  [v14 setFrame_];
  v16 = [*&v12[v13] layer];
  [v16 setCornerRadius_];

  v17 = *&v12[v13];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 whiteColor];
  [v19 setTintColor_];

  [*&v12[v13] setAdjustsImageWhenHighlighted_];
  [*&v12[v13] setEnabled_];
  v21 = *&v12[v13];
  v22 = sub_1D8190EE4();
  [v21 setAccessibilityIdentifier_];

  v23 = [*&v12[v13] isEnabled];
  v24 = *&v12[v13];
  if (v23)
  {
    [v24 setBackgroundColor_];
  }

  else
  {
    v25 = qword_1ECA0C310;
    v26 = v24;
    if (v25 != -1)
    {
      swift_once();
    }

    [v26 setBackgroundColor_];

    v27 = [*&v12[v13] imageView];
    if (v27)
    {
      v28 = v27;
      if (qword_1ECA0C318 != -1)
      {
        swift_once();
      }

      [v28 setTintColor_];
    }
  }

  v33[0] = 1;
  UIImage.scaleImage(to:scaling:)();
  v30 = v29;
  sub_1D80332A0(__dst);
  [*&v12[v13] setImage:v30 forState:0];
  [*&v12[v13] addTarget:*&v15[OBJC_IVAR____TtC5TeaUI15SwipeActionView_onTap] action:sel_handleAction forControlEvents:64];
  [v15 addSubview_];

  return v15;
}

void sub_1D8032F38()
{
  v1 = OBJC_IVAR____TtC5TeaUI15SwipeActionView_button;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = OBJC_IVAR____TtC5TeaUI15SwipeActionView_onTap;
  sub_1D7E40308(0, v3, v4, v5);
  *(v0 + v2) = [objc_allocWithZone(v6) init];
  sub_1D81923A4();
  __break(1u);
}

void sub_1D8033010()
{
  v1 = OBJC_IVAR____TtC5TeaUI15SwipeActionView_button;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = OBJC_IVAR____TtC5TeaUI15SwipeActionView_onTap;
  sub_1D7E40308(0, v3, v4, v5);
  *(v0 + v2) = [objc_allocWithZone(v6) init];
  sub_1D81923A4();
  __break(1u);
}

id sub_1D80330E0()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5TeaUI15SwipeActionView_button];
  [v0 bounds];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  MidX = CGRectGetMidX(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  return [v1 setCenter_];
}

uint64_t sub_1D80332F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_0_136(a1, &qword_1EDBB4678);
  OUTLINED_FUNCTION_50(v8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_1D7E319A8(0);
  v13 = &v11[*(v12 + 48)];
  sub_1D818E794();
  OUTLINED_FUNCTION_8();
  (*(v14 + 16))(v11, a1);
  *v13 = a2;
  *(v13 + 1) = a3;
  v13[16] = a4 & 1;
  v15 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v15);
  return sub_1D80336C4(v11);
}

uint64_t sub_1D80333EC(uint64_t a1)
{
  v2 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_136(v6, &qword_1EDBB4678);
  OUTLINED_FUNCTION_50(v7);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  v11 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state;
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v1 + v11, 1, v2))
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v2);
  }

  else
  {
    sub_1D8033BB4(v1 + v11, v5);
    sub_1D80338D8(v10);
    sub_1D8033C18(v5);
  }

  return sub_1D80336C4(v10);
}

uint64_t sub_1D8033520()
{
  sub_1D7E31954(0, &qword_1EDBB4678, type metadata accessor for BlueprintCollectionViewLayoutTransition.State);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15[-v2];
  v4 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state;
  swift_beginAccess();
  sub_1D7E6C3B4(v0 + v4, v3);
  v5 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v5);
  v7 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_completionBlocks;
  if (EnumTagSinglePayload == 1)
  {
    swift_beginAccess();
    v8 = *(v0 + v7);
    *(v0 + v7) = MEMORY[0x1E69E7CC0];
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v8 + 40;
      do
      {
        v11 = *(v10 - 8);

        v11(v12);

        v10 += 16;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    swift_beginAccess();
    *(v0 + v7) = MEMORY[0x1E69E7CC0];

    v14 = sub_1D818E794();
    return (*(*(v14 - 8) + 8))(v3, v14);
  }
}

uint64_t sub_1D80336C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state;
  swift_beginAccess();
  sub_1D8033C74(a1, v1 + v3);
  swift_endAccess();
  sub_1D8033520();
  return sub_1D8033B08(a1);
}

uint64_t BlueprintCollectionViewLayoutTransition.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state;
  v2 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_completionBlocks) = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t BlueprintCollectionViewLayoutTransition.init()()
{
  v1 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state;
  v2 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_completionBlocks) = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t BlueprintCollectionViewLayoutTransition.onCompletion(block:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (!BlueprintCollectionViewLayoutTransition.isTransitioning.getter(a1))
  {
    return a1();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_completionBlocks;
  swift_beginAccess();

  sub_1D7EE438C();
  v7 = *(*(v2 + v6) + 16);
  sub_1D7EE45B8();
  v8 = *(v2 + v6);
  *(v8 + 16) = v7 + 1;
  v9 = v8 + 16 * v7;
  *(v9 + 32) = sub_1D7E74D6C;
  *(v9 + 40) = v5;
  *(v2 + v6) = v8;
  return swift_endAccess();
}

uint64_t sub_1D80338D8@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1D818E794();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8033BB4(v2, v10);
  (*(v5 + 32))(v7, v10, v4);
  v11 = sub_1D818E774();
  (*(v5 + 8))(v7, v4);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    sub_1D8033BB4(v2, a2);
    v12 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v12, 1, v8);
}

uint64_t BlueprintCollectionViewLayoutTransition.deinit()
{
  sub_1D8033B08(v0 + OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state);

  return v0;
}

uint64_t BlueprintCollectionViewLayoutTransition.__deallocating_deinit()
{
  sub_1D8033B08(v0 + OBJC_IVAR____TtC5TeaUI39BlueprintCollectionViewLayoutTransition_state);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8033B08(uint64_t a1)
{
  sub_1D7E31954(0, &qword_1EDBB4678, type metadata accessor for BlueprintCollectionViewLayoutTransition.State);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8033BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8033C18(uint64_t a1)
{
  v2 = type metadata accessor for BlueprintCollectionViewLayoutTransition.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8033C74(uint64_t a1, uint64_t a2)
{
  sub_1D7E31954(0, &qword_1EDBB4678, type metadata accessor for BlueprintCollectionViewLayoutTransition.State);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void static CardViewBehavior.default.getter(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CD0];
  *(a1 + 8) = 1025;
  *(a1 + 10) = 1;
  *(a1 + 16) = 0x4030000000000000;
}

uint64_t CardViewBehaviorProviding<>.updateCardViewBehavior()(uint64_t a1, uint64_t a2)
{
  sub_1D7EB0890(v7);
  v4 = v8;
  if (!v8)
  {
    return sub_1D7F35C78(v7);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 24))(v2, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

void CardViewBehavior.init(positions:dismissTrait:stackTrait:hasOverscrollToDismissTrait:topSafeAreaInset:)()
{
  OUTLINED_FUNCTION_2_92();
  if ((v2 & 1) != 0 || *(v0 + 16))
  {
    if (v1 - 3) < 3 || (sub_1D7E3A3F4())
    {
      OUTLINED_FUNCTION_3_83();
      return;
    }

    v3 = 1;
  }

  else
  {

    v3 = 0;
  }

  sub_1D8033E78();
  swift_allocError();
  *v4 = v3;
  swift_willThrow();
}

unint64_t sub_1D8033E78()
{
  result = qword_1ECA0F9A8;
  if (!qword_1ECA0F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F9A8);
  }

  return result;
}

uint64_t CardViewBehavior.SnapPosition.hashValue.getter()
{
  OUTLINED_FUNCTION_6_57();
  sub_1D81927E4();
  OUTLINED_FUNCTION_7_43();
  return sub_1D8192824();
}

uint64_t sub_1D8033F6C()
{
  OUTLINED_FUNCTION_6_57();
  sub_1D81927E4();
  OUTLINED_FUNCTION_7_43();
  return sub_1D8192824();
}

void CardViewBehavior.init(positions:dismissTrait:stackTrait:hasOverscrollToDismissTrait:topSafeAreaInset:initialRestorePosition:)()
{
  OUTLINED_FUNCTION_2_92();
  if ((v2 & 1) != 0 || *(v0 + 16))
  {
    if (v1 - 3) < 3 || (sub_1D7E3A3F4())
    {
      OUTLINED_FUNCTION_3_83();
      return;
    }

    v3 = 1;
  }

  else
  {

    v3 = 0;
  }

  sub_1D8033E78();
  swift_allocError();
  *v4 = v3;
  swift_willThrow();
}

unint64_t sub_1D8034090()
{
  result = qword_1ECA0F9B0;
  if (!qword_1ECA0F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F9B0);
  }

  return result;
}

unint64_t sub_1D80340E8()
{
  result = qword_1ECA0F9B8;
  if (!qword_1ECA0F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F9B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CardViewBehavior.SnapPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D8034214(_BYTE *result, unsigned int a2, unsigned int a3)
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

unsigned __int8 *getEnumTagSinglePayload for CardViewBehavior.StackTrait(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 3)
    {
      v7 = v6 - 2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 4)
    {
      return (v7 - 3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CardViewBehavior.StackTrait(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8034464(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D803448C()
{
  if (sub_1D7E3A3F4())
  {
    sub_1D7EE508C();
    v1 = v0;
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    if (v3 >= v2 >> 1)
    {
      v14 = OUTLINED_FUNCTION_2_10(v2);
      OUTLINED_FUNCTION_4_58(v14, v3 + 1);
      v1 = v15;
    }

    *(v1 + 16) = v3 + 1;
    *(v1 + v3 + 32) = 2;
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1D7E3A3F4())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_137();
      v1 = v16;
    }

    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    if (v5 >= v4 >> 1)
    {
      v17 = OUTLINED_FUNCTION_2_10(v4);
      OUTLINED_FUNCTION_4_58(v17, v5 + 1);
      v1 = v18;
    }

    *(v1 + 16) = v5 + 1;
    *(v1 + v5 + 32) = 3;
  }

  v6 = sub_1D7E3A3F4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (v6)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_0_137();
      v1 = v19;
    }

    v9 = *(v1 + 16);
    v8 = *(v1 + 24);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v20 = OUTLINED_FUNCTION_2_10(v8);
      OUTLINED_FUNCTION_4_58(v20, v9 + 1);
      v1 = v21;
    }

    v11 = 0;
  }

  else
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_0_137();
      v1 = v22;
    }

    v9 = *(v1 + 16);
    v12 = *(v1 + 24);
    v10 = v9 + 1;
    if (v9 >= v12 >> 1)
    {
      v23 = OUTLINED_FUNCTION_2_10(v12);
      v11 = 1;
      OUTLINED_FUNCTION_4_58(v23, v9 + 1);
      v1 = v24;
    }

    else
    {
      v11 = 1;
    }
  }

  *(v1 + 16) = v10;
  *(v1 + v9 + 32) = v11;
  return v1;
}

uint64_t Bootstrapper.__allocating_init(mainViewControllerFactory:onboardingViewControllerFactory:onboardingViewDismissalAnimator:shouldHideToolbar:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = objc_allocWithZone(v4);
  return Bootstrapper.init(mainViewControllerFactory:onboardingViewControllerFactory:onboardingViewDismissalAnimator:shouldHideToolbar:)(a1, a2, a3, v5);
}

uint64_t Bootstrapper.init(mainViewControllerFactory:onboardingViewControllerFactory:onboardingViewDismissalAnimator:shouldHideToolbar:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = v5;
  v10 = OUTLINED_FUNCTION_4_59();
  v11 = OBJC_IVAR____TtC5TeaUI12Bootstrapper_deferredPromise;
  sub_1D7E0E714();
  swift_allocObject();
  *&v5[v11] = sub_1D818F1E4();
  v12 = OBJC_IVAR____TtC5TeaUI12Bootstrapper_deferringGroup;
  *&v8[v12] = dispatch_group_create();
  sub_1D7E0E768(v4, &v8[OBJC_IVAR____TtC5TeaUI12Bootstrapper_mainViewControllerFactory]);
  sub_1D7E0E768(v6, &v8[OBJC_IVAR____TtC5TeaUI12Bootstrapper_onboardingViewControllerFactory]);
  sub_1D7E0E768(v7, &v8[OBJC_IVAR____TtC5TeaUI12Bootstrapper_onboardingViewDismissalAnimator]);
  v8[OBJC_IVAR____TtC5TeaUI12Bootstrapper_shouldCollapseSidebar] = 0;
  v8[OBJC_IVAR____TtC5TeaUI12Bootstrapper_shouldHideToolbar] = a4;
  v15.receiver = v8;
  v15.super_class = v10;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  return OUTLINED_FUNCTION_3_84(v13);
}

id sub_1D80348CC(void *a1, void *a2)
{
  result = [a1 view];
  if (result)
  {
    v4 = result;
    [result setHidden_];

    return [a2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Bootstrapper.didFinishOnboarding(window:)(UIWindow *window)
{
  v2 = v1;
  v13 = [(UIWindow *)window rootViewController];
  if (!v13)
  {
    goto LABEL_9;
  }

  type metadata accessor for BootstrapperViewController();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {

LABEL_9:
    sub_1D81923A4();
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = sub_1D7FFA390();
  if (v5)
  {
    v6 = v5;
    MEMORY[0x1EEE9AC00](v5);
    sub_1D818FC24();
    v7 = swift_allocObject();
    v7[2] = v4;
    v7[3] = v6;
    v7[4] = v2;
    v8 = v13;
    v9 = v6;
    v10 = v2;
    v11 = sub_1D818FA14();
    sub_1D818FB54();
  }

  else
  {
    v12 = *&v1[OBJC_IVAR____TtC5TeaUI12Bootstrapper_deferringGroup];
    dispatch_group_leave(v12);
  }
}

uint64_t sub_1D8034B44(uint64_t a1, uint64_t a2)
{
  sub_1D7E0E768(a1 + OBJC_IVAR____TtC5TeaUI12Bootstrapper_onboardingViewDismissalAnimator, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v5 = sub_1D7FF9BAC();
  v6 = (*(v4 + 8))(a2, v5, v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

void sub_1D8034BFC(int a1, id a2, uint64_t a3)
{
  [a2 removeFromSuperview];
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD930], 0);
  v4 = *(a3 + OBJC_IVAR____TtC5TeaUI12Bootstrapper_deferringGroup);

  dispatch_group_leave(v4);
}

id Bootstrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Bootstrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

TeaUI::FloatingTabBarNavigationPresentation __swiftcall FloatingTabBarNavigationPresentation.init(compact:regular:)(TeaUI::FloatingTabBarNavigationVisibility_optional compact, TeaUI::FloatingTabBarNavigationVisibility_optional regular)
{
  v2->value = compact.value;
  v2[1].value = regular.value;
  result.compactTabBarVisibility = compact;
  return result;
}

TeaUI::FloatingTabBarNavigationVisibility_optional __swiftcall FloatingTabBarNavigationPresentation.tabBarVisibility(traitCollection:)(UITraitCollection traitCollection)
{
  v2.value = *v1;
  v3 = *(v1 + 1);
  v4 = [(objc_class *)traitCollection.super.isa horizontalSizeClass];
  if (!v4)
  {
    return 2;
  }

  if (v4 == 2)
  {
    v5.value = v3;
  }

  else
  {
    v5.value = TeaUI_FloatingTabBarNavigationVisibility_unknownDefault;
  }

  if (v4 == 1)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t getEnumTagSinglePayload for FloatingTabBarNavigationPresentation(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65283;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 3;
  if (v6 < 2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FloatingTabBarNavigationPresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

id static UIFont.fontNamed(_:size:)(uint64_t a1, uint64_t a2, double a3)
{
  sub_1D7E4E810();
  sub_1D8190DB4();
  result = sub_1D8035208(a1, a2, a3);
  if (!result)
  {
    v7 = [objc_opt_self() systemFontOfSize_];

    return v7;
  }

  return result;
}

id sub_1D8035208(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_1D8190EE4();

  v5 = [swift_getObjCClassFromMetadata() fontWithName:v4 size:a3];

  return v5;
}

id static UIFont.scaledFontNamed(_:style:size:maxSize:traitCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v11 scaledValueForValue:a4 compatibleWithTraitCollection:a5];
  v13 = v12;

  if (v13 < a6)
  {
    a6 = v13;
  }

  sub_1D7E4E810();
  return static UIFont.fontNamed(_:size:)(a1, a2, a6);
}

id static UIFont.preferredFont(for:weight:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v4 = objc_opt_self();
  [v3 pointSize];
  v5 = [v4 systemFontOfSize_weight_];
  v6 = [v2 scaledFontForFont_];

  return v6;
}

id static UIFont.preferredFont(for:weight:compatibleWith:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v6 = objc_opt_self();
  [v5 pointSize];
  v7 = [v6 systemFontOfSize_weight_];
  v8 = [v4 scaledFontForFont:v7 compatibleWithTraitCollection:a2];

  return v8;
}

uint64_t sub_1D8035574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v25 = *a5;
  v26 = *a6;
  v27 = OUTLINED_FUNCTION_4_60();
  type metadata accessor for Blueprint(v27, v28);
  OUTLINED_FUNCTION_8();
  (*(v29 + 32))(a9, a1);
  v30 = OUTLINED_FUNCTION_4_60();
  v32 = type metadata accessor for BlueprintImpression(v30, v31);
  v33 = v32[13];
  type metadata accessor for BlueprintItem(0, a15, a17, v34);
  OUTLINED_FUNCTION_8();
  (*(v35 + 32))(a9 + v33, a2);
  v36 = v32[14];
  v37 = sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v39 = *(v38 + 32);
  v39(a9 + v36, a3, v37);
  result = (v39)(a9 + v32[15], a4, v37);
  *(a9 + v32[16]) = v25;
  *(a9 + v32[17]) = v26;
  v41 = (a9 + v32[18]);
  *v41 = a7;
  v41[1] = a8;
  v42 = (a9 + v32[19]);
  *v42 = a10;
  v42[1] = a11;
  v42[2] = a12;
  v42[3] = a13;
  return result;
}

uint64_t BlueprintImpression.blueprint.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  OUTLINED_FUNCTION_6_58(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14);
  OUTLINED_FUNCTION_8();
  return (*(v11 + 16))(a9, v9);
}

uint64_t BlueprintImpression.item.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BlueprintItem(0, *(a1 + 24), *(a1 + 40), a4);
  OUTLINED_FUNCTION_8();
  v4 = OUTLINED_FUNCTION_1_99();

  return v5(v4);
}

uint64_t BlueprintImpression.startDate.getter()
{
  sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_1_99();

  return v1(v0);
}

uint64_t BlueprintImpression.endDate.getter()
{
  sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_1_99();

  return v1(v0);
}

uint64_t BlueprintImpression.sessionIdentifier.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 72));
  sub_1D8190DB4();
  return v2;
}

uint64_t BlueprintImpressionSession.identifier.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

uint64_t BlueprintImpressionSession.startDate.getter()
{
  OUTLINED_FUNCTION_7_44();
  sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_1_99();

  return v1(v0);
}

uint64_t type metadata accessor for BlueprintImpressionSession(uint64_t a1)
{
  result = qword_1EDBB6F48;
  if (!qword_1EDBB6F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BlueprintImpressionSession.endDate.getter()
{
  OUTLINED_FUNCTION_7_44();
  sub_1D818E754();
  OUTLINED_FUNCTION_8();
  v0 = OUTLINED_FUNCTION_1_99();

  return v1(v0);
}

uint64_t BlueprintImpressionSession.startTrigger.getter()
{
  result = OUTLINED_FUNCTION_7_44();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t BlueprintImpressionSession.endTrigger.getter()
{
  result = OUTLINED_FUNCTION_7_44();
  *v0 = *(v1 + *(result + 32));
  return result;
}

unint64_t sub_1D8035B50()
{
  result = qword_1ECA0F9E8;
  if (!qword_1ECA0F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F9E8);
  }

  return result;
}

unint64_t sub_1D8035BA8()
{
  result = qword_1ECA0F9F0;
  if (!qword_1ECA0F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0F9F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BlueprintModifierTrait(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for BlueprintImpressionTrigger(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BlueprintImpressionTriggerSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x1F)
  {
    if (a2 + 225 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 225) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 226;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v5 >= 0x1E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for BlueprintImpressionTriggerSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1E)
  {
    v6 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
          *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BlueprintImpressionSessionTrigger(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for BlueprintImpressionSessionTriggerSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3F)
  {
    if (a2 + 193 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 193) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 194;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v5 >= 0x3E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for BlueprintImpressionSessionTriggerSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3E)
  {
    v6 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
          *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D8036194(uint64_t a1)
{
  result = sub_1D818E754();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void DecorationToolbarItem.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
}

uint64_t DecorationToolbarItem.init(identifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t DecorationToolbarItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D80362F0(uint64_t a1)
{
  result = sub_1D803639C(&qword_1EDBB90F0, &protocol conformance descriptor for DecorationToolbarItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8036358(uint64_t a1)
{
  result = sub_1D803639C(qword_1EDBB90F8, &protocol conformance descriptor for DecorationToolbarItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D803639C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DecorationToolbarItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D803640C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D803644C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t StateCommandValue.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  OUTLINED_FUNCTION_2();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v8, v17);
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) == 1)
  {
    (*(v10 + 8))(v13, v8);
    return (*(*(*(a2 + 24) - 8) + 16))(a3, v3 + *(a2 + 44));
  }

  else
  {
    (*(v15 + 32))(v19, v13, v7);
    (*v3)(v19);
    return (*(v15 + 8))(v19, v7);
  }
}

uint64_t StateCommandValue.init(default:block:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (**a7)(uint64_t)@<X8>)
{
  type metadata accessor for StateCommandValue(0, a4, a5, a6);
  a2(a1);
  result = (*(*(a4 - 8) + 8))(a1, a4);
  *a7 = a2;
  a7[1] = a3;
  return result;
}

void StateCommandValue<>.init(off:on:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = type metadata accessor for StateCommandValue(0, MEMORY[0x1E69E6370], v13, &protocol witness table for Bool);
  (*(v9 + 16))(&a4[*(v14 + 44)], a1, a3);
  v15 = *(v9 + 32);
  v15(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v16 = *(v9 + 80);
  v17 = (v16 + 24) & ~v16;
  v18 = (v11 + v16 + v17) & ~v16;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  v15((v19 + v17), a2, a3);
  v15((v19 + v18), &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = sub_1D8036910;
  v20[4] = v19;
  *a4 = sub_1D8036968;
  *(a4 + 1) = v20;
}

uint64_t sub_1D8036910@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(*(v3 - 8) + 16);
  v5 = *(v3 - 8) + 16;
  v6 = *(*(v3 - 8) + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = (*(v5 + 48) + v6 + v7) & ~v6;
  if (a1)
  {
    v8 = v7;
  }

  return v4(a2, v2 + v8);
}

void StateCommandValue<>.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(unsigned __int8 *)@<X8>)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for StateCommandValue(0, MEMORY[0x1E69E6370], a2, &protocol witness table for Bool);
  (*(v7 + 16))(a3 + *(v11 + 44), a1, a2);
  v12 = *(v7 + 32);
  v12(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  v12((v14 + v13), &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = sub_1D8036B18;
  *(v15 + 32) = v14;
  *a3 = sub_1D8037050;
  a3[1] = v15;
}

unint64_t sub_1D8036B58(uint64_t a1)
{
  result = sub_1D7E31228();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8036BE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if ((v6 & 0x80000000) != 0)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_1D8036D60(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 >= a2)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if ((v8 & 0x80000000) != 0)
          {
            v22 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        break;
      case 2:
        *&a1[v11] = v17;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

void sub_1D8036FAC(uint64_t (*a1)@<X0>(uint64_t *a1@<X8>)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  a6[2] = a1;
  v11 = swift_allocObject();
  *(v11 + 2) = a4;
  *(v11 + 3) = a5;
  *(v11 + 4) = a2;
  *(v11 + 5) = a3;
  *a6 = sub_1D8037020;
  a6[1] = v11;
}

uint64_t sub_1D8037020@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  return result;
}

id BarCompressible.compressingNavigationController.getter(uint64_t a1)
{
  sub_1D8037198();
  v2 = v1;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    if ((*(v4 + 32))(v3, v4))
    {
      v5 = 0;
    }

    else
    {
      v5 = [v2 navigationController];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1D7F66B18(v7);
    return [v2 navigationController];
  }

  return v5;
}

unint64_t sub_1D8037198()
{
  result = qword_1EDBB3500;
  if (!qword_1EDBB3500)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB3500);
  }

  return result;
}

Swift::Void __swiftcall BarCompressible.updateCompressingNavigationController(traitCollection:miniMastheadPresent:)(UITraitCollection traitCollection, Swift::Bool miniMastheadPresent)
{
  v5 = v3;
  v6 = v2;
  if ((sub_1D8190B24() & 1) == 0)
  {
    v7 = [v4 splitViewController];
    if (v7 || (v7 = [v4 tabBarController]) != 0)
    {
      v8 = v7;
      v9 = [v7 traitCollection];

      [v9 horizontalSizeClass];
    }

    v10 = (*(v5 + 8))(v6, v5);
    if (v10)
    {
      v11 = v10;
      [v10 setNavigationBarHidden:0 animated:0];
    }
  }
}

unint64_t SegmentedColorViewDirection.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D8037320@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SegmentedColorViewDirection.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SegmentedColorView.startColor.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___TUSegmentedColorView_startColor;
  OUTLINED_FUNCTION_1_0(a1);
  v3 = *(v1 + v2);

  return v3;
}

id sub_1D8037434@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TUSegmentedColorView_startColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t SegmentedColorView.startColor.modify()
{
  v0 = OUTLINED_FUNCTION_9_27();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_85(v1);
  OUTLINED_FUNCTION_2_93();
  OUTLINED_FUNCTION_7_45();
  v3 = v2;
  return OUTLINED_FUNCTION_31();
}

id SegmentedColorView.endColor.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___TUSegmentedColorView_endColor;
  OUTLINED_FUNCTION_1_0(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1D8037624(void *a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  v7 = a1;
  sub_1D8037730(v6, a2);
}

id sub_1D803769C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TUSegmentedColorView_endColor;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1D8037730(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  OUTLINED_FUNCTION_8_4(&v2[*a2], v8);
  v5 = *&v2[v4];
  sub_1D7E9F44C();
  v6 = v5;
  v7 = sub_1D8191CC4();

  if ((v7 & 1) == 0)
  {
    [v3 setNeedsDisplay];
  }
}

uint64_t SegmentedColorView.endColor.modify()
{
  v0 = OUTLINED_FUNCTION_9_27();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_85(v1);
  OUTLINED_FUNCTION_2_93();
  OUTLINED_FUNCTION_7_45();
  v3 = v2;
  return OUTLINED_FUNCTION_31();
}

void sub_1D8037834(void **a1, char a2, void (*a3)(id))
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  if (a2)
  {
    a3(v4);
  }

  else
  {
    a3(v4);
  }

  free(v3);
}

uint64_t SegmentedColorView.numberOfSegments.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___TUSegmentedColorView_numberOfSegments;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

void sub_1D803795C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TUSegmentedColorView_numberOfSegments;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void (*SegmentedColorView.numberOfSegments.modify())(uint64_t a1, uint64_t a2)
{
  v0 = OUTLINED_FUNCTION_9_27();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_85(v1);
  OUTLINED_FUNCTION_2_93();
  OUTLINED_FUNCTION_7_45();
  return sub_1D8037A14;
}

uint64_t SegmentedColorView.direction.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___TUSegmentedColorView_direction;
  OUTLINED_FUNCTION_1_0(a1);
  return *(v1 + v2);
}

id sub_1D8037AE4(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v2 + v5);
  *(v2 + v5) = a1;
  return sub_1D8037B98(v6, a2);
}

void sub_1D8037B40(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TUSegmentedColorView_direction;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1D8037B98(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  result = OUTLINED_FUNCTION_8_4(&v2[*a2], v6);
  if (*&v2[v4] != a1)
  {
    return [v2 setNeedsDisplay];
  }

  return result;
}

void (*SegmentedColorView.direction.modify())(uint64_t a1, uint64_t a2)
{
  v0 = OUTLINED_FUNCTION_9_27();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_85(v1);
  OUTLINED_FUNCTION_2_93();
  OUTLINED_FUNCTION_7_45();
  return sub_1D8037C54;
}

void sub_1D8037C6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  (a3)(*(*a1 + 24), a2);

  free(v3);
}

id SegmentedColorView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id SegmentedColorView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___TUSegmentedColorView_startColor;
  v3 = objc_opt_self();
  *(v0 + v2) = [v3 whiteColor];
  v4 = OBJC_IVAR___TUSegmentedColorView_endColor;
  *(v0 + v4) = [v3 blackColor];
  *(v0 + OBJC_IVAR___TUSegmentedColorView_numberOfSegments) = 5;
  *(v0 + OBJC_IVAR___TUSegmentedColorView_direction) = 0;
  v5 = OUTLINED_FUNCTION_80();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, ObjectType);
  [v8 setClipsToBounds_];
  return v8;
}

void sub_1D8037E08()
{
  v1 = OBJC_IVAR___TUSegmentedColorView_startColor;
  v2 = objc_opt_self();
  *(v0 + v1) = [v2 whiteColor];
  v3 = OBJC_IVAR___TUSegmentedColorView_endColor;
  *(v0 + v3) = [v2 blackColor];
  *(v0 + OBJC_IVAR___TUSegmentedColorView_numberOfSegments) = 5;
  *(v0 + OBJC_IVAR___TUSegmentedColorView_direction) = 0;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall SegmentedColorView.draw(_:)(__C::CGRect a1)
{
  v2 = UIGraphicsGetCurrentContext();
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR___TUSegmentedColorView_endColor;
    OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR___TUSegmentedColorView_endColor, v35);
    v5 = [*(v1 + v4) CGColor];
    v6 = OUTLINED_FUNCTION_31();
    CGContextSetFillColorWithColor(v6, v7);

    OUTLINED_FUNCTION_0_139();
    CGContextFillRect(v8, v36);
    v9 = OBJC_IVAR___TUSegmentedColorView_numberOfSegments;
    OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR___TUSegmentedColorView_numberOfSegments, v34);
    if (*(v1 + v9) >= 1)
    {
      v10 = OBJC_IVAR___TUSegmentedColorView_direction;
      OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR___TUSegmentedColorView_direction, v33);
      v11 = *(v1 + v10);
      if (v11 == 1)
      {
        OUTLINED_FUNCTION_0_139();
        Height = CGRectGetHeight(v37);
      }

      else
      {
        if (v11)
        {
          goto LABEL_23;
        }

        OUTLINED_FUNCTION_0_139();
        Height = CGRectGetWidth(v38);
      }

      v13 = *(v1 + v9);
      if ((v13 & 0x8000000000000000) == 0)
      {
        v14 = Height / v13;
        v15 = OBJC_IVAR___TUSegmentedColorView_startColor;
        OUTLINED_FUNCTION_8_4(v1 + OBJC_IVAR___TUSegmentedColorView_startColor, v32);
        v16 = 0;
        v17 = 0.0;
        while (1)
        {
          if (v13 == v16)
          {
            goto LABEL_17;
          }

          if (__OFADD__(v16, 1))
          {
            break;
          }

          v18 = [*(v1 + v15) CGColor];
          v19 = OUTLINED_FUNCTION_31();
          CGContextSetFillColorWithColor(v19, v20);

          v21 = *(v1 + v9);
          if (__OFSUB__(v21, v16))
          {
            goto LABEL_20;
          }

          CGContextSetAlpha(v3, (v21 - v16) / v21);
          v22 = *(v1 + v10);
          if (v22 == 1)
          {
            OUTLINED_FUNCTION_0_139();
            v40.size.width = CGRectGetWidth(v39);
            v40.origin.x = 0.0;
            v40.origin.y = v17;
            v40.size.height = v14;
            v41 = CGRectIntegral(v40);
            x = v41.origin.x;
            y = v41.origin.y;
            width = v41.size.width;
            v26 = v41.size.height;
            CGContextFillRect(v3, v41);
            v42.origin.x = x;
            v42.origin.y = y;
            v42.size.width = width;
            v42.size.height = v26;
            MaxY = CGRectGetMaxY(v42);
          }

          else
          {
            if (v22)
            {
              goto LABEL_22;
            }

            OUTLINED_FUNCTION_0_139();
            v44.size.height = CGRectGetHeight(v43);
            v44.origin.y = 0.0;
            v44.origin.x = v17;
            v44.size.width = v14;
            v45 = CGRectIntegral(v44);
            v28 = v45.origin.x;
            v29 = v45.origin.y;
            v30 = v45.size.width;
            v31 = v45.size.height;
            CGContextFillRect(v3, v45);
            v46.origin.x = v28;
            v46.origin.y = v29;
            v46.size.width = v30;
            v46.size.height = v31;
            MaxY = CGRectGetMaxX(v46);
          }

          v17 = MaxY;
          ++v16;
        }

        __break(1u);
LABEL_20:
        __break(1u);
      }

      __break(1u);
      while (1)
      {
LABEL_22:
        sub_1D81926E4();
        __break(1u);
LABEL_23:
        v32[0] = v11;
      }
    }

LABEL_17:
  }
}

id SegmentedColorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8038284()
{
  result = qword_1ECA0FA18;
  if (!qword_1ECA0FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA0FA18);
  }

  return result;
}

uint64_t sub_1D8038358(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = swift_unknownObjectRetain();
  return sub_1D80383E0(v2, v1);
}

uint64_t sub_1D8038394()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D80383E0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_delegate;
  OUTLINED_FUNCTION_56(v4, v6);
  *(v4 + 8) = a2;
  OUTLINED_FUNCTION_2_4();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D8038440(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  v6 = OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_15_2(v6, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v9;
  return sub_1D7F45C30;
}

void sub_1D80384D0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D8038548(v1);
}

void *sub_1D8038500()
{
  v1 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_expandedViewController;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8038548(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_expandedViewController;
  OUTLINED_FUNCTION_56(v1 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_expandedViewController, v5);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double sub_1D803861C()
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();

  return result;
}

double sub_1D8038660(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_accessoryPresentationMode;
  OUTLINED_FUNCTION_56(v1 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_accessoryPresentationMode, v5);
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1D8038708()
{
  OUTLINED_FUNCTION_0_140();
  sub_1D803BFD8(0, v2, v3, v4);
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v12 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_accessoryStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v8 + 16))(v11, v1 + v12, v6);
  sub_1D818F974();
  return (*(v8 + 8))(v11, v6);
}

id FloatingTabBarAccessoryManager.init(commandCenter:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_containerView;
  *&v3[v6] = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v3[OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_expandedViewController] = 0;
  v7 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_accessoryPresentationMode;
  LOBYTE(v12[0]) = 0;
  sub_1D803BFD8(0, &qword_1EDBB2050, &type metadata for DockablePresentationMode, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *&v3[v7] = sub_1D818F144();
  sub_1D818F9D4();
  *&v3[OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_currentAccessoryContentView] = 0;
  v8 = &v3[OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_commandCenter];
  *v8 = a1;
  *(v8 + 1) = a2;
  v13.receiver = v3;
  v13.super_class = type metadata accessor for FloatingTabBarAccessoryManager(0);
  swift_unknownObjectRetain();
  v9 = objc_msgSendSuper2(&v13, sel_init);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_0_8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v9;

  sub_1D818F164();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v10;
}

uint64_t type metadata accessor for FloatingTabBarAccessoryManager(uint64_t a1)
{
  result = qword_1EDBB5C50;
  if (!qword_1EDBB5C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8038A90(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v2;
    sub_1D803B4A4(&v5);
  }
}

uint64_t sub_1D8038B00(void *ObjectType)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_140();
  sub_1D803BFD8(0, v4, v5, v6);
  v8 = v7;
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_accessoryStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  (*(v10 + 16))(v13, v2 + v14, v8);
  v51 = ObjectType;
  v15 = sub_1D7F8F278(sub_1D8038FA4, v50);
  result = (*(v10 + 8))(v13, v8);
  if (!v15)
  {
    v46 = 0;
    v17 = ObjectType[5];
    v19 = v17 + 56;
    v18 = *(v17 + 56);
    v20 = *(v17 + 32);
    v49 = 1;
    v21 = 1 << v20;
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v24 = (v21 + 63) >> 6;
    sub_1D8190DB4();
    v48 = 0.0;
    v47 = 0;
    v25 = 0;
    v26 = 0.0;
    while (1)
    {
      v27 = v25;
      if (!v23)
      {
        break;
      }

LABEL_9:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v29 = *(v17 + 48) + 24 * (v28 | (v25 << 6));
      v30 = *v29;
      v31 = *(v29 + 16);
      if (v31 < 0)
      {
        v49 = 0;
        v48 = *(v29 + 8);
        v47 = v31 & 1;
        v26 = v30;
      }

      else
      {
        sub_1D803AAC4(ObjectType[6], ObjectType[7], v30);
      }
    }

    while (1)
    {
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v25 >= v24)
      {
        break;
      }

      v23 = *(v19 + 8 * v25);
      ++v27;
      if (v23)
      {
        goto LABEL_9;
      }
    }

    OUTLINED_FUNCTION_15_2(v2 + v14, v56);
    OUTLINED_FUNCTION_15_5();
    sub_1D818F984();
    swift_endAccess();
    v32 = OUTLINED_FUNCTION_15_5();
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v34 = OUTLINED_FUNCTION_12_30();
    v36 = v35(v34);
    v37 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_expandedViewController;
    LOBYTE(v19) = 1;
    OUTLINED_FUNCTION_56(v2 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_expandedViewController, v59);
    v38 = *(v2 + v37);
    *(v2 + v37) = v36;

    sub_1D7E0E768(ObjectType, v56);
    __swift_project_boxed_opaque_existential_1(v56, v57);
    OUTLINED_FUNCTION_15_26();
    v39 = OUTLINED_FUNCTION_15_5();
    v40(v39);
    OUTLINED_FUNCTION_7();
    swift_beginAccess();

    sub_1D818F154();

    v55 = LOBYTE(v52[0]);
    sub_1D803ABD8();
    sub_1D818F184();

    v41 = v57;
    v42 = v58;
    __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    v43 = *(v42 + 16);
    v44 = swift_unknownObjectRetain();
    v43(v44, &protocol witness table for FloatingTabBarAccessoryManager, v41, v42);
    v52[0] = v26;
    v52[1] = v48;
    v53 = v47;
    v54 = v49 & 1;
    sub_1D80399EC(v52);
    v2 = *(v2 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_commandCenter + 8);
    ObjectType = swift_getObjectType();
    if (qword_1EDBB3720 == -1)
    {
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
LABEL_13:
    LOBYTE(v52[0]) = v19;
    v45 = v46;
    CommandCenterType.execute<A>(command:context:)(qword_1EDBB3728, v52, ObjectType, v2);
    if (v45)
    {
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }

  return result;
}

uint64_t sub_1D8038F4C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    return 1;
  }

  else
  {
    return sub_1D8192634() & 1;
  }
}

double sub_1D8038FC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_0_140();
  sub_1D803BFD8(0, v7, v8, v9);
  v11 = v10;
  OUTLINED_FUNCTION_9();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  memset(v79, 0, 64);
  p_vtable = &OBJC_METACLASS____TtC5TeaUI34BlueprintViewportTransitionManager.vtable;
  v64 = v3;
  v65 = v13;
  if (a2)
  {
    v62 = a3;
    v18 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_accessoryStack;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v19 = OUTLINED_FUNCTION_0_41();
    v20(v19);
    OUTLINED_FUNCTION_7_46(&qword_1EDBB1FB8);
    sub_1D8191724();
    while (1)
    {
      sub_1D81917B4();
      if (v68[0] == v75)
      {
        v25 = OUTLINED_FUNCTION_2_4();
        v26(v25);
        sub_1D803B994(v79);
        result = 0.0;
        v28 = v62;
        v62[2] = 0u;
        v28[3] = 0u;
        *v28 = 0u;
        v28[1] = 0u;
        return result;
      }

      v21 = sub_1D81918F4();
      sub_1D7F9E10C(v22, &v75);
      v21(&v71, 0);
      if (v78 == a1 && *(&v78 + 1) == a2)
      {
        break;
      }

      v24 = sub_1D8192634();
      sub_1D7F9E168(&v75);
      if (v24)
      {
        goto LABEL_13;
      }

      sub_1D81917C4();
    }

    sub_1D7F9E168(&v75);
LABEL_13:
    v29 = OUTLINED_FUNCTION_2_4();
    v30(v29);
    OUTLINED_FUNCTION_15_2(v64 + v18, &v71);
    sub_1D818F994();
    swift_endAccess();
    sub_1D803B994(v79);
    OUTLINED_FUNCTION_23_13();
    a3 = v62;
    p_vtable = &OBJC_METACLASS____TtC5TeaUI34BlueprintViewportTransitionManager.vtable;
  }

  else
  {
    OUTLINED_FUNCTION_15_2(v3 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_accessoryStack, &v71);
    sub_1D818F964();
    swift_endAccess();
    sub_1D803B994(v79);
    OUTLINED_FUNCTION_23_13();
  }

  sub_1D803BA14(v79, &v71);
  if (*(&v72 + 1))
  {
    v75 = v71;
    v76 = v72;
    v77 = v73;
    v78 = v74;
    v31 = *(&v72 + 1);
    v32 = v73;
    __swift_project_boxed_opaque_existential_1(&v75, *(&v72 + 1));
    OUTLINED_FUNCTION_15_26();
    v33(v31, v32);
    LOBYTE(v71) = 0;
    ObjectType = 1;
    v62 = sub_1D803ABD8();
    sub_1D818F184();

    v35 = 0;
    v36 = 1 << *(*(&v77 + 1) + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v38 = v37 & *(*(&v77 + 1) + 56);
    do
    {
      if (!v38)
      {
        while (1)
        {
          v39 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v39 >= ((v36 + 63) >> 6))
          {
            v43 = 0;
            v60 = 0;
            v44 = 0;
            v61 = 1;
            goto LABEL_27;
          }

          v38 = *(*(&v77 + 1) + 56 + 8 * v39);
          ++v35;
          if (v38)
          {
            v35 = v39;
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_40;
      }

      v39 = v35;
LABEL_24:
      v40 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      v41 = *(*(&v77 + 1) + 48) + 24 * (v40 | (v39 << 6));
      v42 = *(v41 + 16);
    }

    while ((v42 & 0x80000000) == 0);
    v61 = 0;
    v43 = *v41;
    v60 = *(v41 + 8);
    v44 = v42 & 1;
LABEL_27:
    p_vtable = v64;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    v45 = OUTLINED_FUNCTION_0_41();
    v46(v45);
    v47 = sub_1D818F9A4();
    v48 = OUTLINED_FUNCTION_2_4();
    v49(v48);
    if (v47)
    {
      v11 = *(p_vtable + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_commandCenter + 8);
      ObjectType = swift_getObjectType();
      if (qword_1EDBB3738 == -1)
      {
LABEL_29:
        LOBYTE(v71) = 1;
        CommandCenterType.execute<A>(command:context:)(qword_1EDBB3740, &v71, ObjectType, v11);
        goto LABEL_32;
      }

LABEL_40:
      OUTLINED_FUNCTION_5_48(&qword_1EDBB3738);
      goto LABEL_29;
    }

    *&v71 = v43;
    *(&v71 + 1) = v60;
    LOBYTE(v72) = v44;
    BYTE1(v72) = v61;
    sub_1D80399EC(&v71);
LABEL_32:
    sub_1D8038708();
    if (*(&v72 + 1))
    {
      sub_1D7E0E768(&v71, v68);
      sub_1D7F9E168(&v71);
      __swift_project_boxed_opaque_existential_1(v68, v69);
      v50 = OUTLINED_FUNCTION_8_9();
      v52 = v51(v50);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
    }

    else
    {
      sub_1D803B994(&v71);
      v52 = 0;
    }

    v53 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_expandedViewController;
    OUTLINED_FUNCTION_56(p_vtable + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_expandedViewController, &v70);
    v54 = *(p_vtable + v53);
    *(p_vtable + v53) = v52;

    sub_1D8038708();
    if (*(&v72 + 1))
    {
      sub_1D7E0E768(&v71, v68);
      sub_1D7F9E168(&v71);
      __swift_project_boxed_opaque_existential_1(v68, v69);
      v55 = OUTLINED_FUNCTION_8_9();
      v56(v55);
      OUTLINED_FUNCTION_7();
      swift_beginAccess();

      sub_1D818F154();

      v66 = v67[0];
      sub_1D818F184();

      sub_1D803B994(v79);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
    }

    else
    {
      sub_1D803B994(v79);
      sub_1D803B994(&v71);
    }

    v57 = v76;
    *a3 = v75;
    a3[1] = v57;
    result = *&v77;
    v58 = v78;
    a3[2] = v77;
    a3[3] = v58;
  }

  else
  {
    sub_1D803B994(v79);
    sub_1D803B994(&v71);
    result = 0.0;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1D8039644()
{
  v2 = v0;
  sub_1D7F9E010(0);
  v4 = v3;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_0_140();
  sub_1D803BFD8(0, v6, v7, v8);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v12 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_accessoryStack;
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v13 = *(v10 + 16);
  v14 = OUTLINED_FUNCTION_0_41();
  v13(v14);
  v15 = sub_1D818F9A4();
  v16 = OUTLINED_FUNCTION_2_4();
  v17(v16);
  if ((v15 & 1) == 0)
  {
    v18 = OUTLINED_FUNCTION_0_41();
    v13(v18);
    sub_1D803BA9C(&qword_1EDBB1FC0, MEMORY[0x1E69D6AE0]);
    sub_1D8191134();
    v19 = *(v4 + 36);
    OUTLINED_FUNCTION_7_46(&qword_1EDBB1FB8);
    while (1)
    {
      sub_1D81917B4();
      if (*(v1 + v19) == v32[0])
      {
        break;
      }

      v20 = sub_1D81918F4();
      sub_1D7F9E10C(v21, v33);
      v20(v32, 0);
      sub_1D81917C4();
      v22 = v34;
      v23 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      OUTLINED_FUNCTION_15_26();
      v24(v22, v23);
      LOBYTE(v32[0]) = 0;
      sub_1D818F124();

      sub_1D7F9E168(v33);
    }

    sub_1D803BAF4(v1, sub_1D7F9E010);
    OUTLINED_FUNCTION_15_2(v2 + v12, v33);
    sub_1D818F9C4();
    swift_endAccess();
    v25 = *(v2 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_commandCenter + 8);
    ObjectType = swift_getObjectType();
    if (qword_1EDBB3738 != -1)
    {
      OUTLINED_FUNCTION_5_48(&qword_1EDBB3738);
    }

    LOBYTE(v33[0]) = 1;
    CommandCenterType.execute<A>(command:context:)(qword_1EDBB3740, v33, ObjectType, v25);
    sub_1D8038708();
    if (v34)
    {
      sub_1D7E0E768(v33, v32);
      sub_1D7F9E168(v33);
      __swift_project_boxed_opaque_existential_1(v32, v32[3]);
      v27 = OUTLINED_FUNCTION_8_9();
      v29 = v28(v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
    }

    else
    {
      sub_1D803B994(v33);
      v29 = 0;
    }

    v30 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_expandedViewController;
    OUTLINED_FUNCTION_56(v2 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_expandedViewController, v33);
    v31 = *(v2 + v30);
    *(v2 + v30) = v29;
  }
}

void sub_1D80399EC(double *a1)
{
  v2 = v1;
  v3 = a1[1];
  v58 = *a1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_currentAccessoryContentView;
  v7 = *(v1 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_currentAccessoryContentView);
  v8 = v7;
  sub_1D8038708();
  if (!v63)
  {
    sub_1D803B994(&aBlock);
    if (!v7)
    {
      return;
    }

    goto LABEL_7;
  }

  sub_1D7E0E768(&aBlock, v59);
  sub_1D7F9E168(&aBlock);
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  v9 = OUTLINED_FUNCTION_12_30();
  v11 = v10(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  if (v7)
  {
    if (v11)
    {
      swift_unknownObjectRelease();

      if (v7 == v11)
      {
        return;
      }

      goto LABEL_10;
    }

LABEL_7:

    goto LABEL_10;
  }

  if (!v11)
  {
    return;
  }

  swift_unknownObjectRelease();
LABEL_10:
  OUTLINED_FUNCTION_0_8();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (v5)
  {
    v13 = *(v2 + v6);
    v14 = v13;

    sub_1D803A3BC(v13, v12);

    return;
  }

  if ((v4 & 1) == 0)
  {
    v31 = v3;
    v32 = *(v2 + v6);
    v33 = v32;
    v34 = sub_1D803A090(v2);
    v35 = v34;
    v36 = v33;
    if (v32)
    {
      if (v34)
      {
LABEL_24:
        v37 = v33;
        v38 = v35;
LABEL_32:
        v53 = objc_opt_self();
        OUTLINED_FUNCTION_1_63();
        v54 = swift_allocObject();
        OUTLINED_FUNCTION_1_100(v54);
        OUTLINED_FUNCTION_4_61();
        v61 = 1107296256;
        v62 = sub_1D7EB30D4;
        v63 = &block_descriptor_45;
        v55 = _Block_copy(&aBlock);

        v56 = v33;
        v57 = v35;

        [v53 transitionFromView:v36 toView:v38 duration:v58 options:v55 completion:v31];

        _Block_release(v55);

        return;
      }
    }

    else
    {
      v36 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
      if (v35)
      {
        goto LABEL_24;
      }
    }

    v51 = objc_allocWithZone(MEMORY[0x1E69DD250]);
    v52 = v33;
    v38 = [v51 init];
    goto LABEL_32;
  }

  v15 = *(v2 + v6);
  if (v58 | *&v3)
  {
    v16 = objc_opt_self();
    v17 = v15;
    [v16 begin];
    v18 = sub_1D803A090(v2);
    OUTLINED_FUNCTION_1_63();
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_1_100(v19);
    OUTLINED_FUNCTION_4_61();
    v61 = 1107296256;
    v62 = sub_1D7E64940;
    v63 = &block_descriptor_21_2;
    v20 = _Block_copy(&aBlock);

    v21 = v17;

    [v16 setCompletionBlock_];
    _Block_release(v20);
    [v16 setDisableActions_];
    if (v15)
    {
      v22 = [v21 layer];
      [v22 setOpacity_];

      [v16 setDisableActions_];
      v23 = [v21 layer];
      v24 = sub_1D803A54C(1.0, 0.0);
      OUTLINED_FUNCTION_6_59(v24);

      if (!v18)
      {
LABEL_17:
        if (v15)
        {
          v27 = [v21 layer];
          v28 = sub_1D803A67C(v2);
          OUTLINED_FUNCTION_6_59(v28);
        }

        if (v18)
        {
          v29 = [v18 layer];
          v30 = sub_1D803A8A0(v2);
          [v29 addAnimation:v30 forKey:0];
        }

        [v16 commit];

        return;
      }
    }

    else
    {
      [v16 setDisableActions_];
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v25 = [v18 layer];
    v26 = sub_1D803A54C(0.0, 1.0);
    OUTLINED_FUNCTION_6_59(v26);

    goto LABEL_17;
  }

  if (v15)
  {
    [v15 setAlpha_];
  }

  v39 = sub_1D803A090(v2);
  v40 = v39;
  if (v39)
  {
    [v39 setAlpha_];
  }

  objc_opt_self();
  v41 = swift_allocObject();
  *(v41 + 16) = v15;
  *(v41 + 24) = v40;
  v64 = sub_1D803BF6C;
  v65 = v41;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1D7E64940;
  v63 = &block_descriptor_27_1;
  v42 = _Block_copy(&aBlock);
  v43 = v15;
  v44 = v40;

  OUTLINED_FUNCTION_1_63();
  v45 = swift_allocObject();
  v46 = OUTLINED_FUNCTION_1_100(v45);
  v64 = sub_1D803BF74;
  v65 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1D7EB30D4;
  v63 = &block_descriptor_33_1;
  v47 = _Block_copy(&aBlock);
  v48 = v43;

  v49 = OUTLINED_FUNCTION_0_41();
  [v49 v50];

  _Block_release(v47);
  _Block_release(v42);
}

void *sub_1D803A090(uint64_t a1)
{
  sub_1D8038708();
  if (*(&v23 + 1))
  {
    v26[0] = v22;
    v26[1] = v23;
    v26[2] = v24;
    v26[3] = v25;
    __swift_project_boxed_opaque_existential_1(v26, *(&v23 + 1));
    v2 = (*(v24 + 32))(*(&v23 + 1), v24);
    v3 = *(a1 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_currentAccessoryContentView);
    *(a1 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_currentAccessoryContentView) = v2;
    v4 = v2;

    v5 = *(a1 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_containerView);
    [v5 addSubview_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = objc_opt_self();
    sub_1D803BFD8(0, &qword_1EDBB2BF0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1D81A7860;
    v8 = [v4 leadingAnchor];
    v9 = [v5 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor_];

    *(v7 + 32) = v10;
    v11 = [v4 trailingAnchor];
    v12 = [v5 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor_];

    *(v7 + 40) = v13;
    v14 = [v4 topAnchor];
    v15 = [v5 topAnchor];
    v16 = [v14 constraintEqualToAnchor_];

    *(v7 + 48) = v16;
    v17 = [v4 bottomAnchor];
    v18 = [v5 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor_];

    *(v7 + 56) = v19;
    sub_1D7E0A1A8(0, &qword_1EDBB3160, 0x1E696ACD8);
    v20 = sub_1D8191304();

    [v6 activateConstraints_];

    sub_1D7F9E168(v26);
  }

  else
  {
    sub_1D803B994(&v22);
    return 0;
  }

  return v2;
}

void sub_1D803A3BC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [a1 removeFromSuperview];
    sub_1D8038708();
    if (v7)
    {

      sub_1D803B994(v6);
    }

    else
    {
      sub_1D803B994(v6);
      v5 = *&v4[OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_currentAccessoryContentView];
      *&v4[OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_currentAccessoryContentView] = 0;
    }
  }
}

id sub_1D803A45C(id result, id a2)
{
  if (result)
  {
    result = [result setAlpha_];
  }

  if (a2)
  {

    return [a2 setAlpha_];
  }

  return result;
}

void sub_1D803A4BC(void (*a1)(void *), uint64_t a2, void *a3)
{
  a1(a3);
  if (a3)
  {
    v5 = [a3 layer];
    LODWORD(v4) = 1.0;
    [v5 setOpacity_];
  }
}

id sub_1D803A54C(double a1, double a2)
{
  sub_1D7E0A1A8(0, &unk_1ECA11F80, 0x1E6979318);
  v2 = sub_1D80D7434(0x7974696361706FLL, 0xE700000000000000);
  v3 = sub_1D818ED14();
  [v2 setFromValue_];

  v4 = sub_1D818ED14();
  [v2 setToValue_];

  v5 = *MEMORY[0x1E6979EB8];
  v6 = objc_opt_self();
  v7 = v2;
  v8 = [v6 functionWithName_];
  [v7 setTimingFunction_];

  [v7 setDuration_];
  return v7;
}

id sub_1D803A67C(uint64_t a1)
{
  sub_1D7E0A1A8(0, &unk_1ECA0DCF0, 0x1E69794A8);
  v2 = sub_1D80D7434(0x6E6F697469736F70, 0xEA0000000000792ELL);
  v3 = *(a1 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_containerView);
  v4 = v2;
  [v3 bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectGetMidY(v21);
  v9 = sub_1D818ED14();
  [v4 setFromValue_];

  [v3 bounds];
  v10 = v22.origin.x;
  v11 = v22.origin.y;
  v12 = v22.size.width;
  v13 = v22.size.height;
  CGRectGetMidX(v22);
  v23.origin.x = v10;
  v23.origin.y = v11;
  v23.size.width = v12;
  v23.size.height = v13;
  CGRectGetMidY(v23);
  [v3 bounds];
  CGRectGetHeight(v24);
  v14 = sub_1D818ED14();
  [v4 setToValue_];

  [v4 setMass_];
  [v4 setStiffness_];
  [v4 setDamping_];
  [v4 setInitialVelocity_];
  v15 = *MEMORY[0x1E6979EB8];
  v16 = objc_opt_self();
  v17 = v4;
  v18 = [v16 functionWithName_];
  [v17 setTimingFunction_];

  [v17 settlingDuration];
  [v17 setDuration_];

  return v17;
}

id sub_1D803A8A0(uint64_t a1)
{
  sub_1D7E0A1A8(0, &unk_1ECA0DCF0, 0x1E69794A8);
  v2 = sub_1D80D7434(0x6E6F697469736F70, 0xEA0000000000792ELL);
  v3 = *(a1 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_containerView);
  v4 = v2;
  [v3 bounds];
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  CGRectGetMidX(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  CGRectGetMidY(v21);
  [v3 bounds];
  CGRectGetHeight(v22);
  v9 = sub_1D818ED14();
  [v4 setFromValue_];

  [v3 bounds];
  v10 = v23.origin.x;
  v11 = v23.origin.y;
  v12 = v23.size.width;
  v13 = v23.size.height;
  CGRectGetMidX(v23);
  v24.origin.x = v10;
  v24.origin.y = v11;
  v24.size.width = v12;
  v24.size.height = v13;
  CGRectGetMidY(v24);
  v14 = sub_1D818ED14();
  [v4 setToValue_];

  [v4 setMass_];
  [v4 setStiffness_];
  [v4 setDamping_];
  [v4 setInitialVelocity_];
  v15 = *MEMORY[0x1E6979EB8];
  v16 = objc_opt_self();
  v17 = v4;
  v18 = [v16 functionWithName_];
  [v17 setTimingFunction_];

  [v17 settlingDuration];
  [v17 setDuration_];

  return v17;
}

void sub_1D803AAC4(uint64_t a1, uint64_t a2, double a3)
{
  sub_1D7F7EE18(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_3_14();
  v8 = sub_1D8191564();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v8);
  OUTLINED_FUNCTION_0_8();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a3;
  *(v10 + 40) = v9;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  sub_1D8190DB4();
  sub_1D803B220(0, 0, v3, &unk_1D81B1540, v10);
}

unint64_t sub_1D803ABD8()
{
  result = qword_1EDBB0360[0];
  if (!qword_1EDBB0360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBB0360);
  }

  return result;
}

uint64_t sub_1D803AC2C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 48) = a5;
  *(v7 + 40) = a1;
  sub_1D7F7EE18(0);
  *(v7 + 72) = swift_task_alloc();
  v8 = sub_1D8192314();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D803AD20, 0, 0);
}

uint64_t sub_1D803AD20()
{
  sub_1D81928D4();
  sub_1D8192744();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1D803ADF4;
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_7();

  return sub_1D803C0F0();
}

uint64_t sub_1D803ADF4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);
  if (v0)
  {
    v3 = sub_1D803B0A4;
  }

  else
  {
    v3 = sub_1D803AF5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D803AF5C()
{
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[8];
    v3 = v0[9];
    v5 = v0[7];
    v6 = sub_1D8191564();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v6);
    sub_1D8191534();
    v7 = v2;
    sub_1D8190DB4();
    v8 = sub_1D8191524();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    v9[5] = v5;
    v9[6] = v4;
    sub_1D7F7F67C(0, 0, v3, &unk_1D81B1558, v9);
  }

  OUTLINED_FUNCTION_10_6();

  return v11();
}

uint64_t sub_1D803B0A4()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D803B10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1D8191534();
  v6[6] = sub_1D8191524();
  v8 = sub_1D81914D4();

  return MEMORY[0x1EEE6DFA0](sub_1D803B1A8, v8, v7);
}

uint64_t sub_1D803B1A8()
{

  v0 = OUTLINED_FUNCTION_31();
  sub_1D8038FC4(v0, v1, v2);
  OUTLINED_FUNCTION_10_6();

  return v3();
}

uint64_t sub_1D803B220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D7F7EE18(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7F814D4(a3, v10);
  v11 = sub_1D8191564();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D803BAF4(v10, sub_1D7F7EE18);
  }

  else
  {
    sub_1D8191554();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1D81914D4();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1D8190FB4() + 32;

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

      sub_1D803BAF4(a3, sub_1D7F7EE18);

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

  sub_1D803BAF4(a3, sub_1D7F7EE18);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D803B4A4(char *a1)
{
  if (!*a1)
  {
    sub_1D8039644();
    v5[0] = 0.0;
    v5[1] = 0.0;
    v6 = 256;
    sub_1D80399EC(v5);
  }

  sub_1D8038708();
  if (!v7)
  {
    return sub_1D803B994(v5);
  }

  sub_1D7E0E768(v5, v4);
  sub_1D7F9E168(v5);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_15_26();
  v1 = OUTLINED_FUNCTION_31();
  v2(v1);
  sub_1D803ABD8();
  sub_1D818F184();

  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

id FloatingTabBarAccessoryManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FloatingTabBarAccessoryManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingTabBarAccessoryManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1D803B740(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_delegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return sub_1D803C694;
}

void FloatingTabBarAccessoryManager.expandedViewControllerDidDismiss(_:)(void *a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_15_5();
  v6 = v5(v4);
  sub_1D8038708();
  if (!v15)
  {
    sub_1D803B994(v14);
    v9 = 0;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    if (v9)
    {
LABEL_10:
      swift_unknownObjectRelease();
      return;
    }

LABEL_8:
    v10 = v2 + OBJC_IVAR____TtC5TeaUI30FloatingTabBarAccessoryManager_delegate;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(a1, ObjectType, v11);
    goto LABEL_10;
  }

  sub_1D7E0E768(v14, v13);
  sub_1D7F9E168(v14);
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v7 = OUTLINED_FUNCTION_12_30();
  v9 = v8(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:

  if (v9)
  {
    swift_unknownObjectRelease();
    if (v6 == v9)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1D803B994(uint64_t a1)
{
  sub_1D803BFD8(0, &qword_1EDBB0618, &type metadata for FloatingTabBarAccessory, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D803BA14(uint64_t a1, uint64_t a2)
{
  sub_1D803BFD8(0, &qword_1EDBB0618, &type metadata for FloatingTabBarAccessory, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D803BA9C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_0_140();
    sub_1D803BFD8(255, v4, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D803BAF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1D803BB54(uint64_t a1)
{
  sub_1D803BFD8(319, &qword_1EDBBC418, &type metadata for FloatingTabBarAccessory, MEMORY[0x1E69D6AD8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1D803BF74()
{
  v1 = *(v0 + 32);
  result = (*(v0 + 16))(v1);
  if (v1)
  {

    return [v1 setAlpha_];
  }

  return result;
}

void sub_1D803BFD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D803C028()
{
  v2 = v0[4];
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v7 = OUTLINED_FUNCTION_0_97(v6);

  return sub_1D803AC2C(v2, v7, v8, v9, v3, v4, v5);
}

uint64_t sub_1D803C0F0()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1D8192304();
  *(v1 + 64) = v12;
  *(v1 + 72) = *(v12 - 8);
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D803C1EC, 0, 0);
}

uint64_t sub_1D803C1EC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1D8192314();
  v5 = sub_1D803C63C(&qword_1ECA0FA48, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  OUTLINED_FUNCTION_31();
  sub_1D8192724();
  sub_1D803C63C(&qword_1ECA0FA50, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D8192324();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1D803C378;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1D803C378()
{
  OUTLINED_FUNCTION_23_0();
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v8 = *v1;
  OUTLINED_FUNCTION_3_4();
  *v5 = v8;
  *(v8 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D803C524, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_10_6();

    return v6();
  }
}

uint64_t sub_1D803C524()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_10_6();

  return v0();
}

uint64_t sub_1D803C588()
{
  OUTLINED_FUNCTION_23_0();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_0_97(v5);

  return sub_1D803B10C(v6, v7, v8, v2, v3, v4);
}

uint64_t sub_1D803C63C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DebouncedSet.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DebouncedSet.init(_:)(a1, v3, v4, v5);
  return v2;
}

void DebouncedSet.insert(_:)()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_12_0();
  v8[2] = *(v2 + 80);
  OUTLINED_FUNCTION_12_0();
  v9 = *(v3 + 88);
  v10 = v4;
  v7 = type metadata accessor for DebouncedSet.State(0, v5, v9, v6);
  sub_1D7E4ECC8(sub_1D803D2A8, v8, v1, v7, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1D803C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  sub_1D7E34C50(0, v12, v13, v14);
  sub_1D8190E24();
  if (v18)
  {
    v15 = *(v18 + 40);
    if (v15)
    {
      [v15 invalidate];
    }
  }

  (*(v6 + 16))(v8, a2, a3);
  sub_1D81916C4();
  sub_1D8191684();
  return (*(v6 + 8))(v11, a3);
}

void sub_1D803C92C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v8 = *(*a1 + 80);
  v9 = *(v4 + 88);
  v10 = a2;
  v6 = type metadata accessor for DebouncedSet.State(0, v8, v9, a4);
  sub_1D7E4ECC8(sub_1D803D424, &v7, v5, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1D803C9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8191E84();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  sub_1D81916C4();
  sub_1D8191694();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 16))(v8, a2, a3);
  v17[3] = 0;
  sub_1D7E34C50(255, v13, v14, v15);
  sub_1D8190E14();
  return sub_1D8190E34();
}

void sub_1D803CBA0(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D8191E84();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v12 - v10;
  if (a1)
  {
    (*(*(a4 - 8) + 16))(v11, a3, a4, v9);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, a4);
    a1(v11);
    (*(v8 + 8))(v11, v7);
  }
}

uint64_t DebouncedSet.__deallocating_deinit()
{
  DebouncedSet.deinit();

  return swift_deallocClassInstance();
}

void DebouncedSet.subscript.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_12_0();
  v13 = *(v2 + 80);
  OUTLINED_FUNCTION_12_0();
  v14 = *(v3 + 88);
  v15 = v4;
  v16 = v5;
  v17 = v6 & 1;
  v7 = OUTLINED_FUNCTION_56_0();
  v11 = type metadata accessor for DebouncedSet.State(v7, v8, v10, v9);
  sub_1D7E4ECC8(sub_1D803D2C8, &v12, v1, v11, v13);
}

uint64_t DebouncedSet.index(after:)()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_12_0();
  v12 = *(v2 + 80);
  OUTLINED_FUNCTION_12_0();
  v13 = *(v3 + 88);
  v14 = v4;
  v15 = v5;
  v16 = v6 & 1;
  v8 = type metadata accessor for DebouncedSet.State(0, v12, v13, v7);
  v9 = sub_1D8191654();
  sub_1D7E4ECC8(sub_1D803D304, &v11, v1, v8, v9);
  return v17;
}

uint64_t sub_1D803CE90@<X0>(uint64_t a5@<X8>)
{
  result = sub_1D8191674();
  *a5 = result;
  *(a5 + 8) = v7;
  *(a5 + 16) = v8 & 1;
  return result;
}

void (*sub_1D803CEE0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D803CF4C(v2);
  return sub_1D7E46A38;
}

void (*sub_1D803CF4C(void *a1))(void *a1)
{
  v2 = *(*v1 + 80);
  *a1 = v2;
  v3 = *(v2 - 8);
  a1[1] = v3;
  a1[2] = __swift_coroFrameAllocStub(*(v3 + 64));
  DebouncedSet.subscript.getter();
  return sub_1D7E96864;
}

uint64_t sub_1D803D020@<X0>(uint64_t a1@<X8>)
{
  result = DebouncedSet.index(after:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_1D803D060(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = DebouncedSet.index(after:)();
  v7 = v6;
  v9 = v8;
  result = sub_1D7E452C4(v2, v3, v4);
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  return result;
}

void sub_1D803D0DC(uint64_t a1@<X8>)
{
  *a1 = *v1;

  v3 = DebouncedSet.startIndex.getter();
  v5 = v4;
  v7 = v6;

  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7 & 1;
}

uint64_t sub_1D803D140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1D803D194(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69900](a1, WitnessTable);
}

uint64_t DebouncedSet.description.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_12_0();
  v8[2] = *(v2 + 80);
  OUTLINED_FUNCTION_12_0();
  v9 = *(v3 + 88);
  v6 = type metadata accessor for DebouncedSet.State(0, v4, v9, v5);
  sub_1D7E4ECC8(sub_1D803D328, v8, v1, v6, MEMORY[0x1E69E6158]);
  return v10;
}

uint64_t sub_1D803D328@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1D8191624();
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_1D803D448()
{
  v1 = v0;
  v2 = type metadata accessor for PillViewIconURL(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  type metadata accessor for PillViewImage(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = (v9 - v8);
  sub_1D803D9B4(v1, v9 - v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D803DAC4(v10, v6);
      v12 = *(v6 + *(v2 + 28));
      v13 = v12;
      OUTLINED_FUNCTION_1_101();
      sub_1D803DA6C(v6, v14);
    }

    else
    {
      memcpy(__dst, v10, sizeof(__dst));
      v12 = __dst[15];
      v15 = __dst[15];
      sub_1D803DA18(__dst);
    }
  }

  else
  {
    v12 = v10[2];
  }

  return v12;
}

uint64_t static PillViewImage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PillViewIconURL(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = v7 - v6;
  type metadata accessor for PillViewImage(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v41 - v16);
  sub_1D803D950(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  OUTLINED_FUNCTION_15();
  v21 = v20 - v19;
  v23 = (v20 - v19 + *(v22 + 56));
  sub_1D803D9B4(a1, v20 - v19);
  sub_1D803D9B4(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D803D9B4(v21, v14);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D803DAC4(v23, v8);
        if (sub_1D818E5F4() & 1) != 0 && (sub_1D818E5F4() & 1) != 0 && (sub_1D818E5F4())
        {
          v25 = *(v4 + 28);
          v26 = *&v14[v25];
          v27 = *(v8 + v25);
          if (v26)
          {
            if (v27)
            {
              sub_1D7E9F44C();
              v28 = v27;
              v29 = v26;
              v4 = sub_1D8191CC4();

              if (v4)
              {
                goto LABEL_10;
              }
            }
          }

          else if (!v27)
          {
LABEL_10:
            OUTLINED_FUNCTION_2_94();
            sub_1D803DA6C(v8, v30);
            sub_1D803DA6C(v14, v4);
            v31 = 1;
LABEL_21:
            v35 = type metadata accessor for PillViewImage;
            goto LABEL_22;
          }
        }

        OUTLINED_FUNCTION_2_94();
        sub_1D803DA6C(v8, v39);
        sub_1D803DA6C(v14, v4);
        v31 = 0;
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_1_101();
      sub_1D803DA6C(v14, v34);
    }

    else
    {
      sub_1D803D9B4(v21, v11);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        memcpy(__dst, v23, 0x80uLL);
        v31 = static PillViewAssetHandles.== infix(_:_:)(v11, __dst);
        sub_1D803DA18(__dst);
        sub_1D803DA18(v11);
        goto LABEL_21;
      }

      sub_1D803DA18(v11);
    }
  }

  else
  {
    sub_1D803D9B4(v21, v17);
    v32 = v17[1];
    v33 = v17[2];
    if (!swift_getEnumCaseMultiPayload())
    {
      v36 = *v23;
      v37 = v23[1];
      v38 = v23[2];
      __dst[0] = *v17;
      __dst[1] = v32;
      __dst[2] = v33;
      v41[0] = v36;
      v41[1] = v37;
      v41[2] = v38;
      v31 = static PillViewSystemImage.== infix(_:_:)(__dst, v41);

      goto LABEL_21;
    }
  }

  v31 = 0;
  v35 = sub_1D803D950;
LABEL_22:
  sub_1D803DA6C(v21, v35);
  return v31 & 1;
}

uint64_t type metadata accessor for PillViewImage(uint64_t a1)
{
  result = qword_1EDBB1B40;
  if (!qword_1EDBB1B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D803D950(uint64_t a1)
{
  if (!qword_1ECA0FA58)
  {
    type metadata accessor for PillViewImage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA0FA58);
    }
  }
}

uint64_t sub_1D803D9B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PillViewImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D803DA6C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D803DAC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PillViewIconURL(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D803DB2C(uint64_t a1)
{
  result = type metadata accessor for PillViewIconURL(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t < infix(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a4;
  v9 = *(a4 + 8);
  sub_1D7EB9588();
  if (!v7)
  {
    v13 = v6 < v8;
    if (v8)
    {
      v14 = 1;
    }

    else
    {
      v14 = v6 < a3;
    }

LABEL_27:
    v15 = v14;
    if (v9 == 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 1;
    }

    if (v9)
    {
      return v16;
    }

    else
    {
      return v13;
    }
  }

  if (v7 == 2 && v6 == 0)
  {
    v13 = v8 > a1;
    if (v8)
    {
      v14 = 1;
    }

    else
    {
      v14 = a1 < a3;
    }

    goto LABEL_27;
  }

  if (!v9 || v9 == 2 && !v8)
  {
    return 0;
  }

  if (v7 == 1)
  {
    return 0;
  }

  v11 = v7 == 2 && v6 == 1;
  if (v11 || v9 == 1)
  {
    return 0;
  }

  if (v9 == 2 && v8 == 1)
  {
    return 0;
  }

  result = sub_1D8192624();
  __break(1u);
  return result;
}

BOOL static VisualRank.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return v2 == v3;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 != 1)
    {
      return 0;
    }

    return v2 == v3;
  }

  if (v2)
  {
    if (v4 != 2 || v3 != 1)
    {
      return 0;
    }
  }

  else if (v4 != 2 || v3 != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_1D803DD00(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

void sub_1D803DD28(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v14[2] = MEMORY[0x1E69E7CC0];
  v6 = sub_1D7E36AB8(a3);
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v12 = v4;
  v13 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v6 == v7)
    {

      return;
    }

    if (v8)
    {
      v9 = MEMORY[0x1DA714420](v7, v4);
    }

    else
    {
      if (v7 >= *(v13 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v14[0] = v9;
    v11 = a1(v14);
    if (v3)
    {

      return;
    }

    if (v11)
    {
      sub_1D8192274();
      sub_1D81922B4();
      v4 = v12;
      sub_1D81922C4();
      sub_1D8192284();
    }

    else
    {
    }

    ++v7;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1D803DEA4(uint64_t (*result)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v18 = *(a3 + 16);
  v7 = (a3 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v18 == v6)
    {
      goto LABEL_15;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v9 = *(v7 - 1);
    v10 = *v7;
    v19[0] = v9;
    v19[1] = v10;
    sub_1D8190DB4();
    v11 = v5(v19);
    if (v3)
    {

LABEL_15:

      return;
    }

    if (v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D7F08E34(0, *(v8 + 16) + 1, 1);
        v8 = v20;
      }

      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D7F08E34(v13 > 1, v14 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v9;
      *(v15 + 40) = v10;
      v4 = a3;
      v5 = result;
    }

    else
    {
    }

    v7 += 2;
    ++v6;
  }

  __break(1u);
}

double sub_1D803E03C()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 96);
  OUTLINED_FUNCTION_28();
  swift_beginAccess();
  *(v1 + v3) = v0;

  return result;
}

uint64_t sub_1D803E0A4(uint64_t a1)
{
  sub_1D7E1AE04(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D7E54838(a1, &v5 - v3);
  return sub_1D803E15C();
}

uint64_t sub_1D803E15C()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v0 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_15_2(v0, v1);
  v2 = OUTLINED_FUNCTION_42_9();
  sub_1D7E55614(v2, v3);
  return swift_endAccess();
}

uint64_t (*sub_1D803E1C0())(uint64_t a1)
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  v0 = OUTLINED_FUNCTION_29_12();
  OUTLINED_FUNCTION_15_2(v0, v1);
  return j__swift_endAccess;
}

double sub_1D803E228()
{
  OUTLINED_FUNCTION_3_7();
  *(v0 + *(v1 + 112)) = v2;

  return result;
}

uint64_t sub_1D803E310()
{
  OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_3_7();
  v0 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_8_4(v0, v1);
  v2 = OUTLINED_FUNCTION_29_12();
  return sub_1D7E54838(v2, v3);
}

uint64_t sub_1D803E36C()
{
  OUTLINED_FUNCTION_3_7();
  *(v0 + *(v1 + 160)) = v2;
  return MEMORY[0x1EEE66BB8]();
}

id BlueprintCollectionViewLayout.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

void BlueprintCollectionViewLayout.init(coder:)()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_7();
  v3 = *(v2 + 104);
  sub_1D818E994();
  OUTLINED_FUNCTION_22_1(v1 + v3);
  OUTLINED_FUNCTION_6_60();
  v5 = *(v4 + 112);
  type metadata accessor for BlueprintCollectionViewLayoutCache();
  v6 = swift_allocObject();
  sub_1D7E2D73C();
  *(v1 + v5) = v6;
  OUTLINED_FUNCTION_6_60();
  v8 = v1 + *(v7 + 120);
  *v8 = 0;
  *(v8 + 8) = 1;
  OUTLINED_FUNCTION_6_60();
  OUTLINED_FUNCTION_22_1(v1 + *(v9 + 136));
  OUTLINED_FUNCTION_6_60();
  v11 = *(v10 + 144);
  sub_1D7E2DB90(__src);
  memcpy((v1 + v11), __src, 0x4E8uLL);
  OUTLINED_FUNCTION_6_60();
  *(v1 + *(v12 + 160)) = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D803E5A8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - v9;
  v12 = type metadata accessor for BlueprintCollectionViewLayout(0, v7, *((v6 & v5) + 0x58), v11);
  (*(v8 + 16))(v10, &v3[*((v6 & v5) + 0x80)], v7);
  BlueprintCollectionViewLayout.__allocating_init(blueprintLayoutCollectionProvider:)();
  v14 = v13;
  sub_1D803E748();
  a2[3] = v12;
  *a2 = v14;
}

uint64_t sub_1D803E6E8(void *a1)
{
  v1 = a1;
  sub_1D803E5A8(v1, v4);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2 = sub_1D8192614();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

void sub_1D803E748()
{
  OUTLINED_FUNCTION_0_141();
  sub_1D7E1AE04(0, v0, v1, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D7E547DC();
  sub_1D803E15C();
  sub_1D7E6E120();
  sub_1D803E228();
  sub_1D7E67298();
  sub_1D7E54D6C();
  sub_1D803E310();
  sub_1D7E55454();
  sub_1D7E2E834();
  sub_1D803E03C();
  v3 = sub_1D7E6E97C();
  if ((v4 & 1) == 0)
  {
    sub_1D7E747C8(*&v3);
  }
}

uint64_t sub_1D803E864()
{
  sub_1D803E36C();
  [v0 copy];
  sub_1D8191F34();
  swift_unknownObjectRelease();
  sub_1D8041420();
  swift_dynamicCast();
  return v2;
}

void *sub_1D803E8E0()
{
  sub_1D7E67328(v6);
  v0 = v7;
  if (*(v7 + 16) && (v1 = sub_1D7E7DB08(), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  sub_1D7E598FC(v6);
  return v3;
}

void sub_1D803E968()
{
  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_47_9();
  sub_1D7E67328(v9);
  OUTLINED_FUNCTION_23_14();
  v1 = OUTLINED_FUNCTION_85();
  v4 = sub_1D7E18740(v1, v2, v3);
  if (v4 && (sub_1D7EA83F4(v0, v4), OUTLINED_FUNCTION_16_1(), , v0) && (v5 = BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter()))
  {
    OUTLINED_FUNCTION_26_13(v5, v6);
    sub_1D7EAF9D8(v0 + 608, __dst);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_7_47();
    BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)();

    memcpy(__dst, __src, 0x260uLL);
    sub_1D7EAFC0C(__dst);
    sub_1D7E598FC(v9);
  }

  else
  {
    sub_1D7E598FC(v9);
  }

  OUTLINED_FUNCTION_32_9();
}

void sub_1D803EA6C()
{
  OUTLINED_FUNCTION_70();
  v180 = v2;
  v181 = v3;
  v178 = v4;
  v179 = v5;
  v6 = *v0;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23();
  v157 = v12;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_24_1();
  v159 = v14;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_24_1();
  v162 = v16;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_1();
  v165 = v18;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_24_1();
  *&v174 = v20;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_24_1();
  v170 = v22;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v176 = &v156 - v24;
  v26 = type metadata accessor for BlueprintCollectionViewLayout(0, *((v7 & v6) + 0x50), *((v7 & v6) + 0x58), v25);
  v185 = v0;
  v186 = v26;
  v27 = OUTLINED_FUNCTION_80();
  v166 = objc_msgSendSuper2(v28, v29, v27);
  sub_1D7E6E234(v187);
  sub_1D7E67328(v188);
  v30 = v187[4];
  v31 = v187[5];
  v167 = v0;
  sub_1D803F6E8(v0);
  v32 = v188[0];
  v33 = v188[1];
  memcpy(v184, v189, sizeof(v184));
  sub_1D7EAF9D8(v189, v190);
  OUTLINED_FUNCTION_7_47();
  v34 = OUTLINED_FUNCTION_85();
  BlueprintLayoutCollectionPinAdjuster.shouldInvalidateLayoutAttributes(for:offset:insets:contentSize:hasViewOnScreen:)(v34, v35, v36, v37, v38, v39, v40, v41, v30, v31, v32, v33, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, *(&v174 + 1));
  v43 = v42;
  sub_1D7E598FC(v188);
  memcpy(v190, v184, 0x260uLL);
  sub_1D7EAFC0C(v190);

  v44 = sub_1D7E36AB8(v43);
  if (!v44)
  {
    goto LABEL_89;
  }

  if (v44 < 1)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    sub_1D8192714();
    __break(1u);
    return;
  }

  v45 = 0;
  v177 = 0x80000001D81C5910;
  v168 = 0x80000001D81C5940;
  v179 = v43 & 0xC000000000000001;
  v180 = v10 + 32;
  v156 = (v10 + 40);
  v163 = (v10 + 8);
  v169 = MEMORY[0x1E69E7CC8];
  v46 = MEMORY[0x1E69E7CC0];
  v172 = MEMORY[0x1E69E7CC0];
  v173 = v43;
  v181 = MEMORY[0x1E69E7CC0];
  v160 = v8;
  v158 = v10;
  v178 = v44;
  do
  {
    if (v179)
    {
      v47 = MEMORY[0x1DA714420](v45, v43);
    }

    else
    {
      v47 = *(v43 + 8 * v45 + 32);
    }

    v48 = v47;
    v49 = [v48 representedElementKind];
    if (v49)
    {
      v50 = v49;
      v51 = sub_1D8190F14();
      v53 = v52;

      v54 = v51 == 0xD000000000000024 && v177 == v53;
      if (v54 || (OUTLINED_FUNCTION_38_10(), (sub_1D8192634() & 1) != 0))
      {

        v55 = [v48 indexPath];

        sub_1D818E924();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = OUTLINED_FUNCTION_17_18();
          sub_1D7EAEB70(v102, v103, v104, v46);
          v46 = v105;
        }

        v43 = v173;
        v57 = *(v46 + 16);
        v56 = *(v46 + 24);
        if (v57 >= v56 >> 1)
        {
          v106 = OUTLINED_FUNCTION_12_27(v56);
          sub_1D7EAEB70(v106, v107, v108, v46);
          v46 = v109;
        }

        *(v46 + 16) = v57 + 1;
        OUTLINED_FUNCTION_25_13();
        v58 = *(v10 + 72);
        v59 = *(v10 + 32);
        goto LABEL_18;
      }

      if (v51 == 0xD000000000000024 && v168 == v53)
      {

        v43 = v173;
LABEL_46:
        v93 = [v48 indexPath];

        sub_1D818E924();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = OUTLINED_FUNCTION_17_18();
          sub_1D7EAEB70(v114, v115, v116, v117);
          v172 = v118;
        }

        v95 = *(v172 + 16);
        v94 = *(v172 + 24);
        if (v95 >= v94 >> 1)
        {
          v119 = OUTLINED_FUNCTION_12_27(v94);
          sub_1D7EAEB70(v119, v120, v121, v172);
          v172 = v122;
        }

        *(v172 + 16) = v95 + 1;
        OUTLINED_FUNCTION_25_13();
        v58 = *(v10 + 72);
        v59 = *(v10 + 32);
LABEL_18:
        OUTLINED_FUNCTION_40_8();
        v59();
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_38_10();
      v61 = sub_1D8192634();

      v43 = v173;
      if (v61)
      {
        goto LABEL_46;
      }
    }

    v62 = [v48 indexPath];
    sub_1D818E924();

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v63 = v181;
    }

    else
    {
      v110 = OUTLINED_FUNCTION_17_18();
      sub_1D7EAEB70(v110, v111, v112, v113);
    }

    v65 = *(v63 + 16);
    v64 = *(v63 + 24);
    if (v65 >= v64 >> 1)
    {
      sub_1D7EAEB70(v64 > 1, v65 + 1, 1, v63);
    }

    *(v63 + 16) = v65 + 1;
    OUTLINED_FUNCTION_25_13();
    v181 = v66;
    v175 = *(v10 + 72);
    v59 = *(v10 + 32);
    OUTLINED_FUNCTION_40_8();
    v59();
    v67 = &v48[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
    OUTLINED_FUNCTION_8_4(&v48[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait], v184);
    v68 = v67[8] == 3 && *v67 == 1;
    if (v68 || [v48 representedElementCategory] != 2)
    {
      v83 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
      OUTLINED_FUNCTION_8_4(&v48[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin], &v183);
      if (v48[v83] == 1)
      {
        v84 = [v167 collectionView];
        if (v84)
        {
          v85 = v84;
          v171 = v59;
          v86 = [v48 indexPath];

          v87 = v162;
          sub_1D818E924();

          v88 = sub_1D818E8E4();
          (*v163)(v87, v8);
          v89 = [v85 cellForItemAtIndexPath_];

          if (v89)
          {
            sub_1D80434B4(v89);
            if (v90)
            {
              v91 = v90;
              v92 = [v90 collectionViewLayout];
              [v92 invalidateLayout];
            }
          }

          else
          {
          }

          v43 = v173;
          v58 = v175;
          v59 = v171;
          goto LABEL_61;
        }

        v43 = v173;
      }

      else
      {
LABEL_44:
      }

      v58 = v175;
      goto LABEL_61;
    }

    v69 = [v48 representedElementKind];
    if (!v69)
    {
      goto LABEL_44;
    }

    v70 = v69;
    v161 = v46;
    v171 = v59;
    v71 = sub_1D8190F14();
    v73 = v72;

    v74 = [v48 indexPath];
    sub_1D818E924();

    v75 = v169;
    swift_isUniquelyReferenced_nonNull_native();
    v182 = v75;
    v76 = v71;
    v164 = v73;
    v77 = sub_1D7E11428(v71, v73);
    if (__OFADD__(*(v75 + 16), (v78 & 1) == 0))
    {
      goto LABEL_91;
    }

    v79 = v77;
    v80 = v78;
    sub_1D8041C58(0);
    if (sub_1D8192374())
    {
      v81 = sub_1D7E11428(v76, v164);
      v43 = v173;
      v59 = v171;
      if ((v80 & 1) != (v82 & 1))
      {
        goto LABEL_94;
      }

      v79 = v81;
    }

    else
    {
      v43 = v173;
      v59 = v171;
    }

    v96 = v182;
    v169 = v182;
    if (v80)
    {
      v58 = v175;
      v8 = v160;
      (*v156)(*(v182 + 56) + v79 * v175, v165, v160);

      v10 = v158;
    }

    else
    {
      *(v182 + 8 * (v79 >> 6) + 64) |= 1 << v79;
      v97 = (*(v96 + 48) + 16 * v79);
      v98 = v164;
      *v97 = v76;
      v97[1] = v98;
      v8 = v160;
      OUTLINED_FUNCTION_40_8();
      v59();
      v99 = *(v96 + 16);
      v100 = __OFADD__(v99, 1);
      v101 = v99 + 1;
      if (v100)
      {
        goto LABEL_92;
      }

      *(v96 + 16) = v101;

      v10 = v158;
      v58 = v175;
    }

    v46 = v161;
LABEL_61:
    ++v45;
  }

  while (v178 != v45);
  v175 = v58;

  v123 = *(v181 + 16);
  v171 = v59;
  if (v123)
  {
    v124 = sub_1D8191304();

    [v166 invalidateItemsAtIndexPaths_];
  }

  else
  {
  }

  v125 = v172;
  if (*(v46 + 16))
  {
    v126 = sub_1D8190EE4();
    v127 = sub_1D8191304();

    OUTLINED_FUNCTION_49_6();
  }

  else
  {
  }

  if (*(v125 + 16))
  {
    v128 = sub_1D8190EE4();
    v129 = sub_1D8191304();

    OUTLINED_FUNCTION_49_6();
  }

  else
  {
  }

  if (*(v169 + 16))
  {
    v130 = v169 + 64;
    v131 = 1 << *(v169 + 32);
    v132 = -1;
    if (v131 < 64)
    {
      v132 = ~(-1 << v131);
    }

    v133 = v132 & *(v169 + 64);
    v134 = (v131 + 63) >> 6;
    v177 = v1;
    v178 = (v10 + 16);
    v176 = ((v1 + 32) & ~v1);
    v135 = sub_1D8190DB4();
    v136 = 0;
    v174 = xmmword_1D819FAB0;
    v137 = v135;
    v138 = v178;
    while (v133)
    {
      v139 = v133;
LABEL_84:
      v133 = (v139 - 1) & v139;
      if (*(v137 + 16))
      {
        sub_1D8190DB4();
        v141 = OUTLINED_FUNCTION_4_8();
        v143 = sub_1D7E11428(v141, v142);
        if (v144)
        {
          v145 = *(v137 + 56) + v175 * v143;
          v146 = *v138;
          v181 = v133;
          v147 = v160;
          v146(v157, v145, v160);
          OUTLINED_FUNCTION_40_8();
          v171();
          OUTLINED_FUNCTION_4_8();
          v179 = sub_1D8190EE4();

          OUTLINED_FUNCTION_0_141();
          sub_1D7E1AE04(0, &qword_1EDBB2D08, v148, MEMORY[0x1E69E6F90]);
          v149 = v176;
          v150 = swift_allocObject();
          *(v150 + 16) = v174;
          v151 = v159;
          v146(&v149[v150], v159, v147);
          v152 = sub_1D8191304();

          v153 = v179;
          [v166 invalidateDecorationElementsOfKind:v179 atIndexPaths:v152];

          v154 = v151;
          v137 = v169;
          v155 = v147;
          v133 = v181;
          (*v163)(v154, v155);
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v140 = v136 + 1;
      if (__OFADD__(v136, 1))
      {
        break;
      }

      if (v140 >= v134)
      {

        goto LABEL_89;
      }

      v139 = *(v130 + 8 * v140);
      ++v136;
      if (v139)
      {
        v136 = v140;
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_89:

  OUTLINED_FUNCTION_72();
}

unint64_t (*sub_1D803F6E8(void *a1))(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1D8042064;
}

id sub_1D803F74C(void *a1)
{
  v1 = a1;
  sub_1D803EA6C();
  v3 = v2;

  return v3;
}

void sub_1D803F7C0()
{
  OUTLINED_FUNCTION_31_9();
  v23 = v1;
  v24 = v2;
  v21 = v3;
  v22 = v4;
  sub_1D7E6E234(v26);
  sub_1D7E67328(v27);
  v5 = v26[4];
  v6 = v26[5];
  v7 = sub_1D803F8C8(v0);
  v9 = v8;
  v10 = v27[0];
  v11 = v27[1];
  memcpy(__dst, v28, sizeof(__dst));
  sub_1D7EAF9D8(v28, v29);
  OUTLINED_FUNCTION_7_47();
  BlueprintLayoutCollectionPinAdjuster.shouldInvalidateLayoutAttributes(for:offset:insets:contentSize:hasViewOnScreen:)(v7, v9, v12, v13, v14, v15, v16, v17, v5, v6, v10, v11, v20, v21, v22, v23, v24, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14]);
  v19 = v18;
  memcpy(v29, __dst, sizeof(v29));
  sub_1D7EAFC0C(v29);
  sub_1D7E36AB8(v19);
  sub_1D7E598FC(v27);

  OUTLINED_FUNCTION_32_9();
}

unint64_t (*sub_1D803F8C8(void *a1))(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1D8041FB4;
}

uint64_t sub_1D803F92C(void *a1)
{
  v1 = a1;
  sub_1D803F7C0();
  v3 = v2;

  return v3 & 1;
}

id sub_1D803F990(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_12_31();
  v4 = OUTLINED_FUNCTION_85();
  if ((v5(v4) & 1) == 0)
  {
    v9 = a1;
    v14 = sub_1D818E8E4();
    v28.receiver = v2;
    v28.super_class = OUTLINED_FUNCTION_8_34(v14, v15, v16, v17);
    v18 = objc_msgSendSuper2(&v28, sel_initialLayoutAttributesForAppearingItemAtIndexPath_, a1);
LABEL_11:
    v10 = v18;
    goto LABEL_12;
  }

  sub_1D7E67328(v26);
  v6 = v27;
  if (!*(v27 + 16) || (v7 = sub_1D7E7DB08(), (v8 & 1) == 0))
  {
    sub_1D7E598FC(v26);
LABEL_10:
    v9 = a1;
    v19 = sub_1D818E8E4();
    v25.receiver = v2;
    v25.super_class = OUTLINED_FUNCTION_8_34(v19, v20, v21, v22);
    v18 = objc_msgSendSuper2(&v25, sel_initialLayoutAttributesForAppearingItemAtIndexPath_, a1);
    goto LABEL_11;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  sub_1D7E598FC(v26);
  if ((*(v9 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame + 32) & 1) != 0 || ([v9 copy], sub_1D8191F34(), swift_unknownObjectRelease(), type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_10;
  }

  v10 = v24;
  v11 = OUTLINED_FUNCTION_80();
  [v12 v13];

LABEL_12:
  return v10;
}

id sub_1D803FBA4(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_12_31();
  v4 = OUTLINED_FUNCTION_85();
  if ((v5(v4) & 1) == 0)
  {
    v10 = a1;
    v11 = sub_1D818E8E4();
    v24.receiver = v2;
    v24.super_class = OUTLINED_FUNCTION_8_34(v11, v12, v13, v14);
    v15 = objc_msgSendSuper2(&v24, sel_finalLayoutAttributesForDisappearingItemAtIndexPath_, a1);
LABEL_7:
    v9 = v15;

    return v9;
  }

  sub_1D7E67328(v22);
  v6 = v23;
  if (!*(v23 + 16) || (v7 = sub_1D7E7DB08(), (v8 & 1) == 0))
  {
    sub_1D7E598FC(v22);
    v10 = a1;
    v16 = sub_1D818E8E4();
    v21.receiver = v2;
    v21.super_class = OUTLINED_FUNCTION_8_34(v16, v17, v18, v19);
    v15 = objc_msgSendSuper2(&v21, sel_finalLayoutAttributesForDisappearingItemAtIndexPath_, a1);
    goto LABEL_7;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  sub_1D7E598FC(v22);
  return v9;
}

id sub_1D803FD04(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1D818E994();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  sub_1D818E924();
  v10 = a1;
  v11 = a4(v9);

  v12 = OUTLINED_FUNCTION_4_8();
  v13(v12);

  return v11;
}

id sub_1D803FE1C()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = sub_1D8190F14();
  v17 = v16;
  sub_1D818E924();
  v18 = v7;
  v1(v15, v17, v14, v5, v3);

  (*(v10 + 8))(v14, v8);
  OUTLINED_FUNCTION_100();

  return v19;
}

id sub_1D803FF6C(uint64_t a1, uint64_t a2, void *a3, SEL *a4, SEL *a5)
{
  v8 = v5;
  OUTLINED_FUNCTION_3_7();
  v12 = *((v11 & v10) + 0x58);
  OUTLINED_FUNCTION_12_31();
  v14 = *(v13 + 80);
  v16 = v15(v14, v12);
  v17 = sub_1D8190EE4();
  v29 = a3;
  v19 = sub_1D818E8E4();
  if ((v16 & 1) == 0)
  {
    v32.receiver = v5;
    v32.super_class = type metadata accessor for BlueprintCollectionViewLayout(0, v14, v12, v18);
    v25 = objc_msgSendSuper2(&v32, *a5, v17, v19);
    v20 = v19;
    goto LABEL_10;
  }

  v20 = [v5 *a4];

  if (!v20)
  {
LABEL_9:
    v17 = sub_1D8190EE4();
    v20 = v29;
    sub_1D818E8E4();
    v26 = OUTLINED_FUNCTION_113();
    v31.receiver = v8;
    v31.super_class = type metadata accessor for BlueprintCollectionViewLayout(v26, v14, v12, v27);
    v25 = objc_msgSendSuper2(&v31, *a5, v17, v29);
    goto LABEL_10;
  }

  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
  v21 = swift_dynamicCastClass();
  if (!v21 || (v21[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame + 32] & 1) != 0 || ([v21 copy], sub_1D8191F34(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_9;
  }

  v17 = v30;
  v22 = OUTLINED_FUNCTION_80();
  [v23 v24];
  v25 = v17;
LABEL_10:

  return v25;
}

id sub_1D80401F8(uint64_t a1, uint64_t a2, void *a3, SEL *a4, SEL *a5)
{
  v7 = v5;
  OUTLINED_FUNCTION_3_7();
  v11 = *((v10 & v9) + 0x58);
  OUTLINED_FUNCTION_12_31();
  v13 = *(v12 + 80);
  v15 = v14(v13, v11);
  v16 = sub_1D8190EE4();
  v24 = a3;
  v18 = sub_1D818E8E4();
  if ((v15 & 1) == 0)
  {
    v27.receiver = v7;
    v27.super_class = type metadata accessor for BlueprintCollectionViewLayout(0, v13, v11, v17);
    v22 = objc_msgSendSuper2(&v27, *a5, v16, v18, a3);
    goto LABEL_5;
  }

  v19 = [v7 *a4];

  if (!v19)
  {
    v16 = sub_1D8190EE4();
    v18 = v24;
    sub_1D818E8E4();
    v20 = OUTLINED_FUNCTION_113();
    v26.receiver = v7;
    v26.super_class = type metadata accessor for BlueprintCollectionViewLayout(v20, v13, v11, v21);
    v22 = objc_msgSendSuper2(&v26, *a5, v16, v24, v24);
LABEL_5:
    v19 = v22;
  }

  return v19;
}

void (*sub_1D80403A8(void (*result)(uint64_t a1, uint64_t a2), void *a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v4 = result;
  if (a3 == 2)
  {
    if (result)
    {
      result = [result frame];
      v8 = 0;
      if (v14 <= 0.0 || v13 <= 0.0)
      {
        return v8;
      }

      if (a2)
      {
        [a2 frame];
        if (v16 <= 0.0 || v15 <= 0.0)
        {
          OUTLINED_FUNCTION_0_8();
          *(swift_allocObject() + 16) = v4;
          v12 = sub_1D8041CC0;
          goto LABEL_25;
        }

        return 0;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (a3 != 1)
  {
    return 0;
  }

  if (!result)
  {
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = [result frame];
  if (v6 > 0.0 && v5 > 0.0)
  {
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  [a2 frame];
  if (v18 > 0.0 && v17 > 0.0)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = a2;
    v20 = v4;
    v8 = sub_1D8041CD0;
    v4 = a2;
LABEL_26:
    v21 = v4;
    return v8;
  }

LABEL_6:
  result = [v4 frame];
  v8 = 0;
  if (v9 <= 0.0 || v7 <= 0.0)
  {
    return v8;
  }

  if (a2)
  {
    [a2 frame];
    if (v11 <= 0.0 || v10 <= 0.0)
    {
      OUTLINED_FUNCTION_0_8();
      *(swift_allocObject() + 16) = v4;
      v12 = sub_1D8041CC8;
LABEL_25:
      v8 = v12;
      goto LABEL_26;
    }

    return 0;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_1D8040588(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D8041F50;
  *(v9 + 24) = v8;
  v23 = sub_1D7E74D6C;
  v24 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1D7E74D74;
  v22 = &block_descriptor_38;
  v10 = _Block_copy(&aBlock);
  v11 = a4;

  v12 = a3;

  [v7 performWithoutAnimation_];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    v23 = sub_1D8041F58;
    v24 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1D7E64940;
    v22 = &block_descriptor_44_0;
    v14 = _Block_copy(&aBlock);
    v15 = v12;

    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v23 = sub_1D8041F60;
    v24 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1D7EB30D4;
    v22 = &block_descriptor_50_1;
    v17 = _Block_copy(&aBlock);
    sub_1D7E38808(a1, a2);

    [v7 animateWithDuration:v14 animations:v17 completion:1.0];
    _Block_release(v17);
    _Block_release(v14);
  }
}

id sub_1D804084C(id result, id a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = result;
      [a2 frame];
      [v3 setFrame_];
      [a2 center];
      [v3 setCenter_];
      [v3 setAlpha_];
      CGAffineTransformMakeScale(&v4, 0.1, 0.1);
      return [v3 setTransform_];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1D8040914(id result)
{
  if (result)
  {
    v1 = result;
    [result setAlpha_];
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [v1 setTransform_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D8040978(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8041F94;
  *(v8 + 24) = v7;
  v11[4] = sub_1D7EA8F68;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D7E74D74;
  v11[3] = &block_descriptor_60_0;
  v9 = _Block_copy(v11);
  v10 = a3;
  sub_1D7E38808(a1, a2);

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

void sub_1D8040AFC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D8042068;
  *(v8 + 24) = v7;
  v11[4] = sub_1D7EA8F68;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D7E74D74;
  v11[3] = &block_descriptor_70_0;
  v9 = _Block_copy(v11);
  v10 = a3;
  sub_1D7E38808(a1, a2);

  [v6 performWithoutAnimation_];
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

id sub_1D8040C80(id result, uint64_t (*a2)(uint64_t))
{
  if (result)
  {
    v3 = result;
    [result frame];
    [v3 setFrame_];
    result = [v3 setAlpha_];
    if (a2)
    {
      return a2(1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D8040D00(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a4;
  v11 = sub_1D80403A8(a3, a4, a5);
  v13 = v12;

  if (v11)
  {
    v15[4] = v11;
    v15[5] = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1D8040DF0;
    v15[3] = &block_descriptor_46;
    v11 = _Block_copy(v15);
  }

  return v11;
}

double sub_1D8040DF0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v3 = sub_1D7F52DB4;
  }

  else
  {
    v4 = 0;
  }

  v2(v3, v4);
  sub_1D7E418F4(v3, v4);

  return result;
}

void sub_1D8040E98(uint64_t a1)
{
  sub_1D7E67328(v4);
  if (*(v5[73] + 16) && (sub_1D7E7E198(a1), (v2 & 1) != 0))
  {
    sub_1D7EAF9D8(v5, v3);
    sub_1D7E598FC(v4);
    sub_1D7EAFC0C(v5);
  }

  else
  {
    sub_1D7E598FC(v4);
  }

  OUTLINED_FUNCTION_8_0();
}

id sub_1D8040F48(void *a1)
{
  v2 = v1;
  v4 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v10 = v9 - v8;
  result = [v2 collectionView];
  if (result)
  {
    v12 = result;
    v13 = [a1 representedElementKind];
    v14 = [a1 indexPath];
    sub_1D818E924();

    v15 = sub_1D818E8E4();
    (*(v6 + 8))(v10, v4);
    if (v13)
    {
      v16 = [v12 supplementaryViewForElementKind:v13 atIndexPath:v15];
    }

    else
    {
      v13 = [v12 cellForItemAtIndexPath_];
      v16 = v13;
    }

    return (v16 != 0);
  }

  return result;
}

id BlueprintCollectionViewLayout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintCollectionViewLayout.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for BlueprintCollectionViewLayout(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

void sub_1D80411B4(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];

  OUTLINED_FUNCTION_6_60();
  v5 = MEMORY[0x1E6969C28];
  sub_1D7E54AFC(&a1[*(v4 + 104)], &qword_1EDBBC690, MEMORY[0x1E6969C28]);
  OUTLINED_FUNCTION_6_60();

  OUTLINED_FUNCTION_6_60();
  (*(*(*((v3 & v2) + 0x50) - 8) + 8))(&a1[*(v6 + 128)]);
  OUTLINED_FUNCTION_6_60();
  sub_1D7E54AFC(&a1[*(v7 + 136)], &qword_1EDBBC690, v5);
  OUTLINED_FUNCTION_6_60();
  memcpy(v11, &a1[*(v8 + 144)], sizeof(v11));
  sub_1D7E54E3C(v11);
  OUTLINED_FUNCTION_6_60();
  memcpy(__dst, &a1[*(v9 + 152)], sizeof(__dst));
  sub_1D7E598FC(__dst);
  OUTLINED_FUNCTION_6_60();
}

void (*sub_1D8041354(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_1D803E1C0();
  return sub_1D7F4150C;
}

unint64_t sub_1D8041420()
{
  result = qword_1EDBAEBA8;
  if (!qword_1EDBAEBA8)
  {
    sub_1D7E0A1A8(255, &qword_1EDBB3098, 0x1E69DC850);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBAEBA8);
  }

  return result;
}

uint64_t sub_1D8041494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, __n128 a7)
{
  v83 = a2;
  v10 = sub_1D8190BD4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D8190C34();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v82 = a3;
    v72 = a1;
    v73 = a4;
    v74 = v17;
    v75 = v15;
    v76 = v13;
    v77 = v14;
    v78 = v11;
    v79 = v10;

    v19 = v83 + 64;
    v20 = 1 << *(v83 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v83 + 64);
    v23 = (v20 + 63) >> 6;
    v24 = sub_1D8190DB4();
    v25 = 0;
    v80 = MEMORY[0x1E69E7CC8];
    v81 = v23;
LABEL_5:
    v26 = v25;
    if (!v22)
    {
      goto LABEL_7;
    }

    do
    {
      v25 = v26;
LABEL_10:
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v28 = v27 | (v25 << 6);
      v29 = *(v24 + 56);
      v30 = (*(v24 + 48) + 32 * v28);
      v31 = *v30;
      v84 = v30[1];
      v85 = v31;
      v32 = *(v29 + 8 * v28);
      v33 = v32[3];
      v34 = v32[4];
      v35 = v32[5];
      v36 = v32[6];
      v37 = v32[7];
      v38 = v32[8];
      v39 = v82;
      memcpy(v89, (v82 + 40), 0x236uLL);
      memcpy(v88, (v82 + 40), sizeof(v88));

      sub_1D7E6EB58(v89, v86);
      v40 = *(&v85 + 1);
      v41 = *(&v84 + 1);
      sub_1D7E6ED1C();
      v43 = v42;
      v45 = v44;
      memcpy(v87, v88, 0x236uLL);
      sub_1D7E6F268(v87);
      memcpy(v86, v39, sizeof(v86));
      sub_1D7EAED38(v43, v45, *&v85, v40, *&v84, v41, v33, v34, v35, v36, v37, v38);
      if (v46)
      {
        v47 = v46;

        v48 = v80;
        v71[3] = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v48;
        v49 = sub_1D7EAFE50();
        v50 = *(v48 + 16);
        LODWORD(v80) = v51;
        if (__OFADD__(v50, (v51 & 1) == 0))
        {
          goto LABEL_26;
        }

        v52 = v49;
        sub_1D7EAD894(0, &qword_1EDBB2D70, MEMORY[0x1E69E6DC8]);
        if (sub_1D8192374())
        {
          v53 = sub_1D7EAFE50();
          v55 = v80;
          if ((v80 & 1) != (v54 & 1))
          {
            goto LABEL_28;
          }

          v52 = v53;
          v57 = v84;
          v56 = v85;
        }

        else
        {
          v57 = v84;
          v56 = v85;
          v55 = v80;
        }

        v58 = v86[0];
        v80 = v86[0];
        if (v55)
        {
          *(*(v86[0] + 56) + 8 * v52) = v47;
        }

        else
        {
          *(v86[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
          v59 = (v58[6] + 32 * v52);
          *v59 = v56;
          v59[1] = v57;
          *(v58[7] + 8 * v52) = v47;
          v60 = v58[2];
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_27;
          }

          v58[2] = v62;
        }

        v24 = v83;
        v23 = v81;
        goto LABEL_5;
      }

      v26 = v25;
      v24 = v83;
      v23 = v81;
    }

    while (v22);
LABEL_7:
    while (1)
    {
      v25 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
        v63 = sub_1D8191AB4();
        v64 = swift_allocObject();
        v65 = v73;
        v64[2] = v72;
        v64[3] = v65;
        v64[4] = v80;
        v86[4] = sub_1D7EB2F18;
        v86[5] = v64;
        v86[0] = MEMORY[0x1E69E9820];
        v86[1] = 1107296256;
        v86[2] = sub_1D7E64940;
        v86[3] = &block_descriptor_91;
        v66 = _Block_copy(v86);

        v67 = v74;
        sub_1D8190BF4();
        v86[0] = MEMORY[0x1E69E7CC0];
        sub_1D7E2DB48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        v68 = MEMORY[0x1E69E7F60];
        sub_1D7E1AE04(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        sub_1D7E1CFF4(&qword_1EDBB3340, &qword_1EDBB3348, v68);
        v69 = v76;
        v70 = v79;
        sub_1D8192004();
        MEMORY[0x1DA713CE0](0, v67, v69, v66);
        _Block_release(v66);

        (*(v78 + 8))(v69, v70);
        return (*(v75 + 8))(v67, v77);
      }

      v22 = *(v19 + 8 * v25);
      ++v26;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    type metadata accessor for CGRect();
    result = sub_1D8192714();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8041B4C()
{
  swift_beginAccess();
  sub_1D7EAD894(0, &qword_1EDBB3478, MEMORY[0x1E69E5E18]);
  sub_1D8190DE4();
  return swift_endAccess();
}

uint64_t sub_1D8041BFC()
{

  return v0;
}

uint64_t sub_1D8041C2C()
{
  sub_1D8041BFC();
  OUTLINED_FUNCTION_0_127();

  return swift_deallocClassInstance();
}

void sub_1D8041C58(uint64_t a1)
{
  if (!qword_1ECA0FA60)
  {
    sub_1D818E994();
    v1 = sub_1D8192394();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA0FA60);
    }
  }
}

uint64_t sub_1D8041F60()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

unint64_t sub_1D8041FDC()
{
  result = qword_1EDBB6740;
  if (!qword_1EDBB6740)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBB6740);
  }

  return result;
}

uint64_t sub_1D804206C(_BYTE *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a4 + 16));
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a3, a5);
  *(a4 + 56) = *a1;
  memcpy((a4 + 64), a2, 0x235uLL);
  return a4;
}

void *ContextMenuBarButtonItem.init(image:menuProvider:)(void *a1, uint64_t a2, uint64_t a3)
{
  v19.receiver = v3;
  v19.super_class = type metadata accessor for ContextMenuBarButtonItem();
  v7 = objc_msgSendSuper2(&v19, sel_init);
  v8 = v7;
  if (a1)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = qword_1ECA0C378;
    v12 = v7;
    if (v11 != -1)
    {
      swift_once();
    }

    v9 = qword_1ECA2C558;
    v10 = qword_1ECA2C558;
  }

  v13 = v9;
  v14 = a1;
  [v8 setImage_];

  [v8 setStyle_];
  [v8 setSecondaryActionsArePrimary_];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v18[4] = sub_1D7FF4788;
  v18[5] = v15;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 1107296256;
  v18[2] = sub_1D8042348;
  v18[3] = &block_descriptor_47;
  v16 = _Block_copy(v18);

  [v8 _setSecondaryActionsProvider_];

  _Block_release(v16);

  return v8;
}

id sub_1D8042348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_1D7E1C664(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_1D7F3B154();
    v3 = sub_1D8191314();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1D7E7BAAC(v10);

  return v6;
}

id ContextMenuBarButtonItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ContextMenuBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextMenuBarButtonItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextMenuBarButtonItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UIView.firstParent<A>(viewOfType:where:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v9 = [v4 superview];
  v10 = sub_1D8043B54(a1, v9, a2, a3, a4);

  return v10;
}

Swift::Void __swiftcall UIView.setFrameIfNeeded(_:)(__C::CGRect a1)
{
  OUTLINED_FUNCTION_155();
  [v1 frame];
  v11.origin.x = v5;
  v11.origin.y = v4;
  v11.size.width = v3;
  v11.size.height = v2;
  if (!CGRectEqualToRect(v10, v11))
  {
    v8 = OUTLINED_FUNCTION_80();

    [v6 v7];
  }
}

id UIView.setAlphaIfNeeded(_:)(double a1)
{
  result = [v1 alpha];
  if (v4 != a1)
  {

    return [v1 setAlpha_];
  }

  return result;
}

id sub_1D8042744(char a1, SEL *a2, const char **a3)
{
  v5 = a1 & 1;
  result = [v3 *a2];
  if (result != v5)
  {
    v7 = *a3;

    return [v3 v7];
  }

  return result;
}

Swift::Void __swiftcall UIView.ts_adjustLayoutMargins(to:padding:)(UILayoutGuide to, UIEdgeInsets padding)
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  [(objc_class *)to.super.isa layoutFrame];
  MinX = CGRectGetMinX(v11);
  [v2 layoutMargins];
  v8 = MinX + left;
  if (v9 != v8)
  {
    [v2 setInsetsLayoutMarginsFromSafeArea_];
    [v2 setLayoutMargins_];

    [v2 setNeedsLayout];
  }
}

void sub_1D8042884(char a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(), uint64_t a5, uint64_t a6, void (**a7)(void), double a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a7;
  if (a1)
  {
    _Block_copy(a7);
    if (a2)
    {
      v16 = sub_1D7E38808(a2, a3);
      a2(v16);
      sub_1D7E0E10C(a2, a3);
    }

    v23 = sub_1D7F53120;
    v24 = v15;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1D7E64940;
    v22 = &block_descriptor_13_2;
    v18 = _Block_copy(&v19);

    if (a4)
    {
      v23 = a4;
      v24 = a5;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v21 = sub_1D7EB30D4;
      v22 = &block_descriptor_16;
      a4 = _Block_copy(&v19);
    }

    [swift_getObjCClassFromMetadata() animateWithDuration:v18 animations:a4 completion:a8];
    _Block_release(a4);
    _Block_release(v18);

    _Block_release(a7);
  }

  else
  {
    _Block_copy(a7);
    if (a2)
    {
      v17 = sub_1D7E38808(a2, a3);
      a2(v17);
      sub_1D7E0E10C(a2, a3);
    }

    a7[2](a7);
    if (a4)
    {

      (a4)(1);
      sub_1D7E0E10C(a4, a5);
    }

    _Block_release(a7);
  }
}

void static UIView.ts_execute(animated:duration:setupBlock:animationBlock:completion:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(void), uint64_t a7, __n128 a8)
{
  if (a1)
  {
    v14 = a8.n128_f64[0];
    if (a2)
    {

      a2(v15);
      sub_1D7E0E10C(a2, a3);
    }

    v22 = a4;
    v23 = a5;
    OUTLINED_FUNCTION_1_103();
    v19 = 1107296256;
    v20 = sub_1D7E64940;
    v21 = &block_descriptor_48;
    v16 = _Block_copy(&v18);

    if (a6)
    {
      v22 = a6;
      v23 = a7;
      OUTLINED_FUNCTION_1_103();
      v19 = 1107296256;
      v20 = sub_1D7EB30D4;
      v21 = &block_descriptor_3_0;
      a6 = _Block_copy(&v18);
    }

    [swift_getObjCClassFromMetadata() animateWithDuration:v16 animations:a6 completion:v14];
    _Block_release(a6);
    _Block_release(v16);
  }

  else
  {
    if (a2)
    {

      a2(v17);
      a1 = sub_1D7E0E10C(a2, a3);
    }

    (a4)(a1, a8);
    if (a6)
    {

      a6(1);

      sub_1D7E0E10C(a6, a7);
    }
  }
}

uint64_t sub_1D8042CD8(uint64_t a1, int a2, char a3, void *aBlock, double a5, const void *a6, const void *a7)
{
  v11 = _Block_copy(aBlock);
  v12 = _Block_copy(a6);
  v13 = _Block_copy(a7);
  v14 = v13;
  if (v11)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    v11 = sub_1D7F52DBC;
    if (v14)
    {
LABEL_3:
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      v14 = sub_1D7F52DB4;
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  ObjCClassMetadata = swift_getObjCClassMetadata();
  _Block_copy(v12);
  _Block_copy(v12);
  sub_1D8042884(a3, v11, v15, v14, v16, ObjCClassMetadata, v12, a5);
  sub_1D7E0E10C(v14, v16);
  _Block_release(v12);
  _Block_release(v12);

  return sub_1D7E0E10C(v11, v15);
}

__C::CGRect __swiftcall UIView.adjustedFrameForPopover()()
{
  [v0 bounds];
  v13.origin.x = UIEdgeInsetsInsetRect_0(v1);
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v6 = v13.origin.x + -1.0;
  v7 = v13.origin.y + 2.0;
  v8 = CGRectGetWidth(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetHeight(v14);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  result.size.height = v9;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

double sub_1D8042ED0(void *a1)
{
  v1 = a1;
  v2 = UIView.frameUsingCenterAndBounds.getter();

  return v2;
}

double UIView.frameUsingCenterAndBounds.getter()
{
  v1 = [v0 layer];
  [v1 anchorPoint];
  v3 = v2;
  v5 = v4;

  v6 = [v0 layer];
  [v6 setAnchorPointWithoutChangingPositionWithNewAnchorPoint_];

  OUTLINED_FUNCTION_1_31();
  [v0 center];
  v8 = v7;
  OUTLINED_FUNCTION_1_31();
  v10 = v8 - v9 * 0.5;
  [v0 center];
  OUTLINED_FUNCTION_1_31();
  v11 = [v0 layer];
  [v11 setAnchorPointWithoutChangingPositionWithNewAnchorPoint_];

  return v10;
}

Swift::Void __swiftcall UIView.setFrameUsingCenterAndBounds(frame:)(__C::CGRect frame)
{
  OUTLINED_FUNCTION_155();
  v2 = OUTLINED_FUNCTION_2_96();
  [v2 transform];

  v3 = OUTLINED_FUNCTION_2_96();
  [v3 anchorPoint];
  v17 = v5;
  v18 = v4;

  v6 = OUTLINED_FUNCTION_2_96();
  memcpy(__dst, MEMORY[0x1E69792E8], sizeof(__dst));
  [v6 setTransform_];

  v7 = OUTLINED_FUNCTION_2_96();
  [v7 setAnchorPointWithoutChangingPositionWithNewAnchorPoint_];

  v21.origin.x = OUTLINED_FUNCTION_80();
  MinX = CGRectGetMinX(v21);
  v22.origin.x = OUTLINED_FUNCTION_80();
  v16 = MinX + CGRectGetWidth(v22) * 0.5;
  v23.origin.x = OUTLINED_FUNCTION_80();
  MinY = CGRectGetMinY(v23);
  v24.origin.x = OUTLINED_FUNCTION_80();
  v10 = MinY + CGRectGetHeight(v24) * 0.5;
  OUTLINED_FUNCTION_1_31();
  v11 = CGRectGetMinX(v25);
  OUTLINED_FUNCTION_1_31();
  v12 = CGRectGetMinY(v26);
  v27.origin.x = OUTLINED_FUNCTION_80();
  Width = CGRectGetWidth(v27);
  v28.origin.x = OUTLINED_FUNCTION_80();
  [v1 setBounds_];
  [v1 setCenter_];
  v14 = OUTLINED_FUNCTION_2_96();
  [v14 setAnchorPointWithoutChangingPositionWithNewAnchorPoint_];

  v15 = OUTLINED_FUNCTION_2_96();
  memcpy(__dst, __src, sizeof(__dst));
  [v15 setTransform_];
}

void sub_1D8043274(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  UIView.setFrameUsingCenterAndBounds(frame:)(v11);
}

id UIView.scaleFrameBy(x:y:)(double a1, double a2)
{
  [v2 frame];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v9 = v15.origin.x * a1;
  v10 = v15.origin.y * a2;
  v11 = CGRectGetWidth(v15) * a1;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v12 = CGRectGetHeight(v16) * a2;

  return [v2 setFrame_];
}

void sub_1D8043398(void *a1)
{
  v5 = [a1 subviews];
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v6 = sub_1D8191314();

  sub_1D7E36AB8(v6);
  OUTLINED_FUNCTION_5_49();
  while (v5)
  {
    if (__OFSUB__(v5--, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (v1)
    {
      v8 = MEMORY[0x1DA714420](v5, v6);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }

      if (v5 >= *(v2 + 16))
      {
        goto LABEL_16;
      }

      v8 = *(v3 + 8 * v5);
    }

    v9 = v8;
    sub_1D8043398(v8);
    v11 = v10;

    if (v11)
    {

      return;
    }
  }

  type metadata accessor for BlueprintLiveResizingView();
  if (swift_dynamicCastClass())
  {
    v12 = a1;
  }
}

void sub_1D80434B4(void *a1)
{
  v5 = [a1 subviews];
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v6 = sub_1D8191314();

  sub_1D7E36AB8(v6);
  OUTLINED_FUNCTION_5_49();
  while (v5)
  {
    if (__OFSUB__(v5--, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (v1)
    {
      v8 = MEMORY[0x1DA714420](v5, v6);
    }

    else
    {
      if ((v5 & 0x8000000000000000) != 0)
      {
        goto LABEL_15;
      }

      if (v5 >= *(v2 + 16))
      {
        goto LABEL_16;
      }

      v8 = *(v3 + 8 * v5);
    }

    v9 = v8;
    sub_1D80434B4(v8);
    v11 = v10;

    if (v11)
    {

      return;
    }
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = a1;
  }
}

id sub_1D80435D4(id a1, void *a2)
{
  v3 = a2;
  v4 = [a1 subviews];
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v5 = sub_1D8191314();

  v6 = sub_1D7E36AB8(v5);
  while (v6)
  {
    if (__OFSUB__(v6--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v12 = 0;
      goto LABEL_19;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](v6, v5);
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v5 + 32 + 8 * v6);
    }

    v9 = v8;
    v10 = v3;
    v4 = sub_1D80435D4(v9, v10);

    if (v4)
    {

      return v4;
    }
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    goto LABEL_21;
  }

  a1 = a1;
  if (![v4 scrollsToTop])
  {
    goto LABEL_18;
  }

  v12 = [v4 isUserInteractionEnabled];
  if (![v4 isScrollEnabled])
  {
    goto LABEL_27;
  }

LABEL_19:
  if (v12)
  {
LABEL_21:

LABEL_22:
    return v4;
  }

  v13 = [v4 delegate];
  if (v13)
  {
    v14 = v13;
    if (([v13 respondsToSelector_] & 1) == 0)
    {

      swift_unknownObjectRelease();
      goto LABEL_29;
    }

    v15 = [v14 scrollViewShouldScrollToTop_];
    swift_unknownObjectRelease();

    if (v15)
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_27:
  }

LABEL_29:
  return 0;
}

void sub_1D8043808(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = [a2 subviews];
  sub_1D7E0A1A8(0, &qword_1EDBB2FC0, 0x1E69DD250);
  v10 = sub_1D8191314();

  v11 = sub_1D7E36AB8(v10);
  v12 = v10 & 0xC000000000000001;
  v13 = v10 & 0xFFFFFFFFFFFFFF8;
  v23 = v10;
  v14 = v10 + 32;
  while (v11)
  {
    if (__OFSUB__(v11--, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    if (v12)
    {
      v16 = MEMORY[0x1DA714420](v11, v23);
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v11 >= *(v13 + 16))
      {
        goto LABEL_17;
      }

      v16 = *(v14 + 8 * v11);
    }

    v17 = v16;
    sub_1D8043808(a1, v16, a3, a4, a5);
    v19 = v18;

    if (v19)
    {

      return;
    }
  }

  v20 = swift_dynamicCastUnknownClass();
  if (v20)
  {
    v21 = a2;
    if ((a3(v20) & 1) == 0)
    {
    }
  }
}

uint64_t sub_1D80439E0(void *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  if (!a1)
  {
    return 0;
  }

  a2(0);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    return v6;
  }

  v9 = a1;
  v10 = [v9 superview];
  v11 = a3();

  return v11;
}

uint64_t sub_1D8043ABC(void *a1, void *a2, uint64_t (*a3)(void))
{
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    return v6;
  }

  v9 = a1;
  v10 = [v9 superview];
  v11 = a3();

  return v11;
}

uint64_t sub_1D8043B54(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  v10 = swift_dynamicCastUnknownClass();
  v11 = a2;
  if (!v10 || (a3(v10) & 1) == 0)
  {
    v12 = [v11 superview];
    v13 = sub_1D8043B54(a1, v12, a3, a4, a5);

    return v13;
  }

  return v10;
}

Swift::Void __swiftcall UIView.setCenterIfNeeded(_:)(CGPoint a1)
{
  y = a1.y;
  x = a1.x;
  [v1 center];
  if (v5 != x || v4 != y)
  {

    [v1 setCenter_];
  }
}

UIImage *ComplexImageProcessor.process(_:)(uint64_t a1)
{
  sub_1D7E0E768(a1, v96);
  sub_1D80440B0();
  type metadata accessor for ComplexImageProcessorRequest();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = sub_1D804410C(__dst[0]);
  v2 = v1;
  if (v1)
  {
    v3 = __dst[0][10];
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v1;
      sub_1D8190DB4();
      v6 = v4 - 1;
      v7 = 32;
      v2 = v5;
      while (1)
      {
        memcpy(__dst, (v3 + v7), 0x94uLL);
        memmove(v96, (v3 + v7), 0x94uLL);
        switch(sub_1D7FF8ED0(v96))
        {
          case 1u:
            v26 = sub_1D7EC5564(v96);
            memcpy(v94, v26, 0x94uLL);
            if (sub_1D7FF8EC4(v94) == 1)
            {
              v27 = sub_1D7EC5558(v94);
              v28 = *v27;
              v29 = *(v27 + 8);
              OUTLINED_FUNCTION_1_104(v27, v30, v31, v32, v33, v34, v35, v36, v88, v90[0], v90[1], v90[2], v90[3], v90[4], v90[5], v90[6], v90[7], v90[8], v90[9], v90[10], v90[11], v90[12], v90[13], v90[14], v90[15], v90[16], v90[17], v91[0], v91[1], v91[2], v91[3], v91[4], v91[5], v91[6], v91[7], v91[8], v91[9], v91[10], v91[11], v91[12], v91[13], v91[14], v91[15], v91[16], v91[17], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17]);
              v37 = sub_1D7EC5564(v93);
              sub_1D804425C(v37, __src);
              UIImage.blend(with:blendMode:)(v28, v29, v38, v39, v40, v41, v42, v43, v89, v90[0], v90[1], v90[2], v90[3], v90[4], v90[5], v90[6], v90[7], v90[8], v90[9], v90[10], v90[11], v90[12], v90[13], v90[14], v90[15], v90[16]);
            }

            else
            {
              v53 = sub_1D7EC5558(v94);
              v54 = v53[36];
              memcpy(v91, v53, sizeof(v91));
              if (sub_1D7FF8398(v91) == 1)
              {
                v55 = sub_1D7EC5538(v91);
                v56 = memcpy(v90, v55, sizeof(v90));
                OUTLINED_FUNCTION_1_104(v56, v57, v58, v59, v60, v61, v62, v63, v88, v90[0], v90[1], v90[2], v90[3], v90[4], v90[5], v90[6], v90[7], v90[8], v90[9], v90[10], v90[11], v90[12], v90[13], v90[14], v90[15], v90[16], v90[17], v91[0], v91[1], v91[2], v91[3], v91[4], v91[5], v91[6], v91[7], v91[8], v91[9], v91[10], v91[11], v91[12], v91[13], v91[14], v91[15], v91[16], v91[17], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17]);
                v64 = sub_1D7EC5564(v93);
                sub_1D804425C(v64, __src);
                UIImage.applyingOverlay(gradient:blendMode:)(v90, v54, v65, v66, v67, v68, v69, v70);
              }

              else
              {
                v71 = sub_1D7EC5538(v91);
                v72 = memcpy(v90, v71, 0x49uLL);
                OUTLINED_FUNCTION_1_104(v72, v73, v74, v75, v76, v77, v78, v79, v88, v90[0], v90[1], v90[2], v90[3], v90[4], v90[5], v90[6], v90[7], v90[8], v90[9], v90[10], v90[11], v90[12], v90[13], v90[14], v90[15], v90[16], v90[17], v91[0], v91[1], v91[2], v91[3], v91[4], v91[5], v91[6], v91[7], v91[8], v91[9], v91[10], v91[11], v91[12], v91[13], v91[14], v91[15], v91[16], v91[17], __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17]);
                v80 = sub_1D7EC5564(v93);
                sub_1D804425C(v80, __src);
                UIImage.applyingOverlay(gradient:blendMode:)(v90, v54, v81, v82, v83, v84, v85, v86);
              }
            }

            goto LABEL_17;
          case 2u:
            v22 = sub_1D7EC5564(v96);
            v23 = *(v22 + 16);
            v93[0] = *v22;
            LOBYTE(v93[1]) = v23;
            OUTLINED_FUNCTION_0_143();
            v24 = sub_1D7EC5564(v94);
            sub_1D8044214(*v24, *(v24 + 8), *(v24 + 16));
            v18 = UIImage.applying(descriptor:)();
            goto LABEL_17;
          case 3u:
            v94[0] = *(sub_1D7EC5564(v96) + 16);
            v25 = UIImage.scaled(to:scaling:)();

            goto LABEL_18;
          case 4u:
            v19 = sub_1D7EC5564(v96);
            v20 = *(v19 + 88);
            v93[0] = *(v19 + 72);
            LOBYTE(v93[1]) = v20;
            OUTLINED_FUNCTION_0_143();
            v21 = *(sub_1D7EC5564(v94) + 80);
            v18 = UIImage.croppedImage(of:with:scale:byRoundingCorners:cornerRadius:border:)();
            goto LABEL_17;
          default:
            v8 = sub_1D7EC5564(v96);
            sub_1D7FF8384(v8, __src);
            memcpy(v93, __src, sizeof(v93));
            if (sub_1D7FF8398(v93) == 1)
            {
              v9 = sub_1D7EC5538(v93);
              memcpy(v91, v9, sizeof(v91));
              OUTLINED_FUNCTION_0_143();
              v10 = sub_1D7EC5564(v94);
              sub_1D80442B8(v10, v90);
              v18 = UIImage.applyingAlphaMask(gradient:)(v91, v11, v12, v13, v14, v15, v16, v17);
            }

            else
            {
              v44 = sub_1D7EC5538(v93);
              memcpy(v90, v44, 0x49uLL);
              OUTLINED_FUNCTION_0_143();
              v45 = sub_1D7EC5564(v94);
              sub_1D80442B8(v45, v91);
              v18 = UIImage.applyingAlphaMask(gradient:)(v90, v46, v47, v48, v49, v50, v51, v52);
            }

LABEL_17:
            v25 = v18;

            sub_1D80441C0(__dst);
LABEL_18:
            v2 = v25;
            if (!v6)
            {

              return v2;
            }

            --v6;
            v7 += 152;
            break;
        }
      }
    }
  }

  return v2;
}

unint64_t sub_1D80440B0()
{
  result = qword_1EDBB74A8[0];
  if (!qword_1EDBB74A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBB74A8);
  }

  return result;
}

id sub_1D804410C(void *a1)
{
  v2 = a1[8];
  v3 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v2);
  v4 = (*(v3 + 8))(v2, v3);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    sub_1D7E471D0();
    return sub_1D8148FE0(v6, v7);
  }

  else
  {
    v9 = a1[8];
    v10 = a1[9];
    __swift_project_boxed_opaque_existential_1(a1 + 5, v9);
    return (*(v10 + 24))(v9, v10);
  }
}

id sub_1D8044214(id result, void *a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    v4 = result;

    return a2;
  }

  return result;
}

id ComplexImageProcessor.process(_:imageFromCache:)(uint64_t a1, void *a2)
{
  sub_1D7E0E768(a1, v7);
  sub_1D80440B0();
  type metadata accessor for ComplexImageProcessorRequest();
  if (swift_dynamicCast())
  {
    if (*(v6 + 112))
    {
      v2 = [a2 imageWithRenderingMode_];
    }

    else
    {
      v2 = a2;
    }

    v4 = v2;

    return v4;
  }

  else
  {

    return a2;
  }
}

id SceneDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SceneDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D804456C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D804458C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

void CollapsingButton.isCollapsed.setter(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_isCollapsed;
  OUTLINED_FUNCTION_28();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  sub_1D80449D4(v4);
}

uint64_t CollapsingButton.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_configuration;
  OUTLINED_FUNCTION_28();
  swift_beginAccess();
  sub_1D8044A98(a1, v1 + v3);
  swift_endAccess();
  sub_1D8044D9C();
  return sub_1D7F8CA80(a1);
}

id CollapsingButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CollapsingButton.menu.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC5TeaUI16CollapsingButton_button) setMenu_];
}

uint64_t sub_1D8044740@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D804479C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2 + OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t CollapsingButton.animationDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CollapsingButton.animationDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1D7F18A1C;
}

uint64_t CollapsingButton.isCollapsed.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_isCollapsed;
  OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR____TtC5TeaUI16CollapsingButton_isCollapsed, v3);
  return *(v0 + v1);
}

void sub_1D804497C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_isCollapsed;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_1D80449D4(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC5TeaUI16CollapsingButton_isCollapsed;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    v4 = v1 + OBJC_IVAR____TtC5TeaUI16CollapsingButton_animationDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 56))(v1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D8044B2C();
  }
}
double sub_26D334898@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  if (*(a1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_isInPopoverPresentation))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_hasParentViewController) ^ 1;
  }

  v6 = OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics;
  sub_26D39C058(v5 & 1, *(a1 + OBJC_IVAR____TtC16TextFormattingUI19TextFormattingState_useReducedMetrics), v42, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v31 = sub_26D39C698(*(a1 + v6), v42, v7);
  v32 = sub_26D3A0618();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  KeyPath = swift_getKeyPath();
  *&v38[23] = v43;
  *&v38[39] = v44;
  *&v38[55] = v45;
  *&v38[71] = v46;
  *&v38[7] = v42;
  type metadata accessor for TextFormattingState(0);
  sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
  v29 = sub_26D39FF28();
  v28 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF68();

  v8 = v42;
  v9 = sub_26D3A0898();
  sub_26D39FFD8();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  LOBYTE(v42) = 0;
  v18 = sub_26D3A08A8();
  sub_26D39FFD8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v40[2] = v44;
  v40[3] = v45;
  v41 = v46;
  v40[0] = v42;
  v40[1] = v43;
  sub_26D33F528(v40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  v44 = v35;
  v45 = v36;
  v46 = v37;
  v42 = v33;
  v43 = v34;
  sub_26D33F528(&v42);
  sub_26D3A0EA8();
  sub_26D3A00C8();
  *&v39[7] = v33;
  *&v39[23] = v34;
  *&v39[39] = v35;
  *(a2 + 8) = v31;
  *(a2 + 33) = *&v38[16];
  *(a2 + 49) = *&v38[32];
  *a2 = v32;
  *(a2 + 16) = 0;
  *(a2 + 65) = *&v38[48];
  *(a2 + 80) = *&v38[63];
  *(a2 + 17) = *v38;
  *(a2 + 96) = KeyPath;
  *(a2 + 104) = 0;
  *(a2 + 112) = v29;
  *(a2 + 120) = a1;
  *(a2 + 128) = v28;
  *(a2 + 136) = v8;
  *(a2 + 144) = v9;
  *(a2 + 152) = v11;
  *(a2 + 160) = v13;
  *(a2 + 168) = v15;
  *(a2 + 176) = v17;
  *(a2 + 184) = 0;
  *(a2 + 192) = v18;
  *(a2 + 200) = v20;
  *(a2 + 208) = v22;
  *(a2 + 216) = v24;
  *(a2 + 224) = v26;
  *(a2 + 232) = 0;
  *(a2 + 233) = *v39;
  *(a2 + 249) = *&v39[16];
  result = *&v39[32];
  *(a2 + 265) = *&v39[32];
  *(a2 + 280) = *(&v35 + 1);
  return result;
}

void *sub_26D334D2C@<X0>(_BYTE *a1@<X8>)
{
  sub_26D33F558();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

char *sub_26D334DD0(char a1, double a2)
{
  v5 = [v2 components];
  sub_26D345E5C(0, &qword_2804FADB8, 0x277D75BC0);
  v6 = sub_26D3A1058();

  LOBYTE(v138) = a1;
  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_196:
    v8 = sub_26D3A1488();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = 0;
  v11 = 0x277D75BC0uLL;
  while (v8 != v9)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = sub_26D33E5F4(v9, v6, &qword_2804FADB8, 0x277D75BC0);
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_180;
      }

      v12 = *(v6 + 8 * v9 + 32);
    }

    v13 = v12;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v14 = sub_26D337B90();

    ++v9;
    v15 = __OFADD__(v10, v14);
    v10 += v14;
    if (v15)
    {
      goto LABEL_181;
    }
  }

  v139 = MEMORY[0x277D84F90];
  sub_26D340B78(0, 6, 0);
  v16 = v139;
  v18 = v10 - (v17 & 0xFFFFFFFFFFFFFFFCLL);
  v20 = *(v139 + 2);
  v19 = *(v139 + 3);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    sub_26D340B78((v19 > 1), v20 + 1, 1);
    v16 = v139;
    v19 = *(v139 + 3);
    v21 = v19 >> 1;
  }

  *(v16 + 2) = v22;
  v23 = &v16[24 * v20];
  v23[32] = 0;
  *(v23 + 5) = v10 / 4;
  *(v23 + 6) = v18;
  v24 = v20 + 2;
  if (v21 <= v22)
  {
    sub_26D340B78((v19 > 1), v24, 1);
    v16 = v139;
  }

  *(v16 + 2) = v24;
  v25 = &v16[24 * v22];
  v25[32] = 1;
  *(v25 + 5) = v10 / 5;
  *(v25 + 6) = v10 % 5;
  v27 = *(v16 + 2);
  v26 = *(v16 + 3);
  v28 = v27 + 1;
  if (v27 >= v26 >> 1)
  {
    sub_26D340B78((v26 > 1), v27 + 1, 1);
  }

  v29 = v139;
  *(v139 + 2) = v28;
  v30 = &v29[24 * v27];
  *(v30 + 32) = 2;
  *(v30 + 40) = v10 / 6;
  *(v30 + 48) = v10 % 6;
  v31 = v10 - (v30 & 0xFFFFFFFFFFFFFFF8);
  v32 = *(v29 + 3);
  v33 = v27 + 2;
  if (v28 >= v32 >> 1)
  {
    sub_26D340B78((v32 > 1), v33, 1);
    v29 = v139;
  }

  *(v29 + 2) = v33;
  v34 = &v29[24 * v28];
  v34[32] = 3;
  *(v34 + 5) = v10 / 8;
  *(v34 + 6) = v31;
  v36 = *(v29 + 2);
  v35 = *(v29 + 3);
  v37 = v35 >> 1;
  v38 = v36 + 1;
  if (v35 >> 1 <= v36)
  {
    sub_26D340B78((v35 > 1), v36 + 1, 1);
    v29 = v139;
    v35 = *(v139 + 3);
    v37 = v35 >> 1;
  }

  *(v29 + 2) = v38;
  v39 = &v29[24 * v36];
  v39[32] = 4;
  *(v39 + 5) = v10 / 10;
  *(v39 + 6) = v10 % 10;
  v40 = v10 / 12;
  v41 = v10 % 12;
  v42 = v36 + 2;
  if (v37 <= v38)
  {
    sub_26D340B78((v35 > 1), v36 + 2, 1);
  }

  v43 = v139;
  *(v139 + 2) = v42;
  v44 = &v43[24 * v38];
  v44[32] = 5;
  *(v44 + 5) = v40;
  *(v44 + 6) = v41;
  if (*(v43 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE78, &qword_26D3A2978);
    v45 = sub_26D3A14D8();
  }

  else
  {
    v45 = MEMORY[0x277D84F98];
  }

  v139 = v45;
  v6 = 0;
  sub_26D33EF84(v43, 1, &v139);
  v46 = v139;
  v47 = *(v139 + 2);
  if (v47)
  {
    v48 = sub_26D33EEF4(*(v139 + 2), 0);
    v40 = sub_26D344798(&v139, (v48 + 32), v47, v46);
    v11 = v139;
    LOBYTE(v49) = v140;

    sub_26D345E54(v11);
    if (v40 != v47)
    {
      goto LABEL_223;
    }
  }

  else
  {

    v48 = MEMORY[0x277D84F90];
  }

  v139 = v48;
  sub_26D3408FC(&v139);
  if (*(v139 + 2))
  {
    v49 = v139[32];

    v46 = qword_26D3A3130[v49];
    LOBYTE(v49) = v138;
    if (v138 <= 1u)
    {
      v51 = 8.0;
      if (!v138)
      {
        if (qword_2804FAD40 != -1)
        {
          swift_once();
        }

        v51 = 16.0;
        if ((byte_2804FFF98 & 1) == 0)
        {
          if (qword_2804FAD48 != -1)
          {
            swift_once();
          }

          v51 = 14.0;
          if (byte_2804FFF99 == 1)
          {
            v50 = _UISolariumEnabled() == 0;
            v51 = 8.0;
            v52 = 10.0;
            goto LABEL_37;
          }
        }
      }

      goto LABEL_49;
    }

    if (v138 != 3)
    {
      v51 = 10.0;
      goto LABEL_49;
    }

    if (qword_2804FAD40 != -1)
    {
      goto LABEL_225;
    }

    while (1)
    {
      v50 = byte_2804FFF98 == 0;
      v51 = 10.0;
      v52 = 16.0;
LABEL_37:
      if (!v50)
      {
        v51 = v52;
      }

LABEL_49:
      a2 = v51 + a2;
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
        goto LABEL_204;
      }

      if (a2 <= -9.22337204e18)
      {
        goto LABEL_198;
      }

      if (a2 >= 9.22337204e18)
      {
        goto LABEL_199;
      }

      sub_26D39C90C(v49, 9.22337204e18);
      if (v49 > 1u)
      {
        break;
      }

      v55 = 8.0;
      if (!v49)
      {
        if (qword_2804FAD40 != -1)
        {
          v129 = v53;
          swift_once();
          v53 = v129;
        }

        v55 = 16.0;
        if ((byte_2804FFF98 & 1) == 0)
        {
          if (qword_2804FAD48 != -1)
          {
            v130 = v53;
            swift_once();
            v53 = v130;
          }

          v55 = 14.0;
          if (byte_2804FFF99 == 1)
          {
            v57 = v53;
            v58 = _UISolariumEnabled();
            v53 = v57;
            v54 = v58 == 0;
            v55 = 8.0;
            v56 = 10.0;
LABEL_57:
            if (!v54)
            {
              v55 = v56;
            }
          }
        }
      }

LABEL_69:
      v59 = v53 + v55;
      if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_200;
      }

      if (v59 <= -9.22337204e18)
      {
        goto LABEL_201;
      }

      if (v59 >= 9.22337204e18)
      {
        goto LABEL_202;
      }

      v60 = v59;
      if (!v59)
      {
        goto LABEL_203;
      }

      if (a2 == 0x8000000000000000 && v60 == -1)
      {
        goto LABEL_224;
      }

      v61 = v49;
      if (v49 > 1u)
      {
        if (v49 - 2 >= 2)
        {
          v11 = 8;
        }

        else
        {
          v11 = 4;
        }

        goto LABEL_98;
      }

      v62 = a2 / v60;
      if (v61)
      {
        if (v62 >= 12)
        {
          v11 = 12;
        }

        else
        {
          v11 = a2 / v60;
        }
      }

      else
      {
        v63 = sub_26D344BA8(v46);
        if (v63 <= 2)
        {
          if (v63)
          {
            if (v63 == 1)
            {
              v64 = 5;
            }

            else
            {
              v64 = 6;
            }
          }

          else
          {
            v64 = 4;
          }

          goto LABEL_95;
        }

        if (v63 <= 4)
        {
          if (v63 == 3)
          {
            v64 = 8;
          }

          else
          {
            v64 = 10;
          }

          goto LABEL_95;
        }

        if (v63 == 5)
        {
          v64 = 12;
LABEL_95:
          if (v64 >= v62)
          {
            v11 = v62;
          }

          else
          {
            v11 = v64;
          }

          goto LABEL_98;
        }

        if (v62 >= 6)
        {
          v11 = 6;
        }

        else
        {
          v11 = v62;
        }
      }

LABEL_98:
      v65 = [v132 components];
      v40 = sub_26D3A1058();

      if (!(v40 >> 62))
      {
        v7 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_100;
        }

        goto LABEL_205;
      }

LABEL_204:
      v7 = sub_26D3A1488();
      if (v7)
      {
LABEL_100:
        v66 = 0;
        v137 = v40 & 0xC000000000000001;
        v135 = v40 & 0xFFFFFFFFFFFFFF8;
        v67 = MEMORY[0x277D84F90];
        v133 = v40;
        v131 = v11;
        v136 = v7;
        while (1)
        {
          if (v137)
          {
            v69 = sub_26D33E5F4(v66, v40, &qword_2804FADB8, 0x277D75BC0);
          }

          else
          {
            if (v66 >= *(v135 + 16))
            {
              goto LABEL_184;
            }

            v69 = *(v40 + 8 * v66 + 32);
          }

          v49 = v69;
          v6 = v66 + 1;
          if (__OFADD__(v66, 1))
          {
            goto LABEL_182;
          }

          v71 = v67 + 16;
          v70 = *(v67 + 2);
          v138 = v66 + 1;
          if (!v70)
          {
            break;
          }

          v72 = &v71[2 * v70];
          v6 = *v72;
          v73 = v72[1];

          v74 = sub_26D337B90();
          v75 = sub_26D336CB8(v6, v73);
          if (__OFADD__(v75, v74))
          {
            goto LABEL_183;
          }

          if (v11 < v75 + v74)
          {
            v7 = v75;
            if (v73 >> 62)
            {
              v76 = sub_26D3A1488();
              if (v76)
              {
LABEL_114:
                v77 = v76 - 1;
                if (__OFSUB__(v76, 1))
                {
                  goto LABEL_187;
                }

                if ((v73 & 0xC000000000000001) != 0)
                {

                  v78 = sub_26D33E5F4(v77, v73, &qword_2804FADB8, 0x277D75BC0);
                }

                else
                {
                  if ((v77 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_188;
                  }

                  if (v77 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_190;
                  }

                  v78 = *(v73 + 8 * v77 + 32);
                }

                v134 = v78;
                v79 = sub_26D337B90();
                v6 = v7 - v79;
                if (__OFSUB__(v7, v79))
                {
                  goto LABEL_189;
                }

                if (sub_26D337B90() < v6)
                {
                  v80 = [v49 componentKey];
                  v81 = [v132 components];
                  v82 = sub_26D3A1058();
                  v7 = v82;
                  if (v82 >> 62)
                  {
                    v83 = sub_26D3A1488();
                    if (!v83)
                    {
LABEL_226:

                      __break(1u);
                      goto LABEL_227;
                    }
                  }

                  else
                  {
                    v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (!v83)
                    {
                      goto LABEL_226;
                    }
                  }

                  v84 = v83 - 1;
                  if (__OFSUB__(v83, 1))
                  {
                    goto LABEL_191;
                  }

                  if ((v7 & 0xC000000000000001) != 0)
                  {
                    v85 = sub_26D33E5F4(v84, v7, &qword_2804FADB8, 0x277D75BC0);
                  }

                  else
                  {
                    if ((v84 & 0x8000000000000000) != 0)
                    {
                      goto LABEL_192;
                    }

                    if (v84 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_193;
                    }

                    v85 = *(v7 + 8 * v84 + 32);
                  }

                  v86 = v85;

                  v6 = [v86 componentKey];

                  v87 = sub_26D3A0F98();
                  v7 = v88;
                  if (v87 == sub_26D3A0F98() && v7 == v89)
                  {

LABEL_142:
                    if (!*v71)
                    {
                      goto LABEL_194;
                    }

                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
                      v97 = *(v67 + 2);
                      if (!v97)
                      {
                        goto LABEL_195;
                      }
                    }

                    else
                    {
                      v67 = sub_26D3411F0(v67);
                      v97 = *(v67 + 2);
                      if (!v97)
                      {
                        goto LABEL_195;
                      }
                    }

                    *(v67 + 2) = v97 - 1;

                    v6 = *(v67 + 2);
                    v46 = sub_26D344BCC(1, v73);
                    v99 = v98;
                    v40 = v100;
                    v11 = v101;

                    if ((v11 & 1) == 0)
                    {
LABEL_146:
                      sub_26D34097C(v46, v99, v40, v11, &qword_2804FADB8, 0x277D75BC0);
                      v103 = v102;
                      v7 = v136;
                      goto LABEL_159;
                    }

                    sub_26D3A1528();
                    swift_unknownObjectRetain_n();
                    v108 = swift_dynamicCastClass();
                    if (!v108)
                    {
                      swift_unknownObjectRelease();
                      v108 = MEMORY[0x277D84F90];
                    }

                    v109 = *(v108 + 16);

                    if (__OFSUB__(v11 >> 1, v40))
                    {
                      goto LABEL_222;
                    }

                    if (v109 != (v11 >> 1) - v40)
                    {
                      swift_unknownObjectRelease();
                      goto LABEL_146;
                    }

                    v103 = swift_dynamicCastClass();
                    swift_unknownObjectRelease();
                    v7 = v136;
                    if (!v103)
                    {
                      v103 = MEMORY[0x277D84F90];
LABEL_159:
                      swift_unknownObjectRelease();
                    }

                    v111 = *(v67 + 2);
                    v110 = *(v67 + 3);
                    v112 = v111 + 1;
                    if (v111 >= v110 >> 1)
                    {
                      v67 = sub_26D33EB6C((v110 > 1), v111 + 1, 1, v67);
                    }

                    *(v67 + 2) = v112;
                    v113 = &v67[16 * v111];
                    *(v113 + 4) = v6;
                    *(v113 + 5) = v103;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
                    v114 = swift_allocObject();
                    *(v114 + 16) = xmmword_26D3A2280;
                    *(v114 + 32) = v134;
                    *(v114 + 40) = v49;
                    v115 = *(v67 + 2);
                    v116 = *(v67 + 3);
                    v6 = v134;
                    v117 = v49;
                    if (v115 >= v116 >> 1)
                    {
                      v119 = v117;
                      v67 = sub_26D33EB6C((v116 > 1), v115 + 1, 1, v67);
                      v117 = v119;
                    }

                    v40 = v133;

                    *(v67 + 2) = v115 + 1;
                    v118 = &v67[16 * v115];
                    *(v118 + 4) = v112;
                    *(v118 + 5) = v114;
                    v11 = v131;
                    goto LABEL_103;
                  }

                  v96 = sub_26D3A1518();

                  v11 = v131;
                  if (v96)
                  {
                    goto LABEL_142;
                  }
                }

                v40 = v133;
              }
            }

            else
            {
              v76 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v76)
              {
                goto LABEL_114;
              }
            }

            v104 = *(v67 + 2);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
            v90 = swift_allocObject();
            *(v90 + 16) = xmmword_26D3A2290;
            *(v90 + 32) = v49;
            v105 = v49;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = sub_26D33EB6C(0, *(v67 + 2) + 1, 1, v67);
            }

            v7 = v136;
            v107 = *(v67 + 2);
            v106 = *(v67 + 3);
            v6 = v107 + 1;
            if (v107 >= v106 >> 1)
            {
              v67 = sub_26D33EB6C((v106 > 1), v107 + 1, 1, v67);
            }

            *(v67 + 2) = v6;
            v68 = &v67[16 * v107];
            *(v68 + 4) = v104;
LABEL_102:
            *(v68 + 5) = v90;
            goto LABEL_103;
          }

          v94 = *(v67 + 2);
          v95 = v49;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v7 = v136;
            if (!v94)
            {
              goto LABEL_185;
            }
          }

          else
          {
            v67 = sub_26D3411F0(v67);
            v7 = v136;
            if (!v94)
            {
              goto LABEL_185;
            }
          }

          if (v94 > *(v67 + 2))
          {
            goto LABEL_186;
          }

          v6 = &v67[16 * v94 + 16];
          MEMORY[0x26D6BD840]();
          if (*((*(v6 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_26D3A1068();
          }

          sub_26D3A1088();

LABEL_103:
          ++v66;
          if (v138 == v7)
          {
            goto LABEL_206;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
        v90 = swift_allocObject();
        *(v90 + 16) = xmmword_26D3A2290;
        *(v90 + 32) = v49;
        v91 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_26D33EB6C(0, *(v67 + 2) + 1, 1, v67);
        }

        v93 = *(v67 + 2);
        v92 = *(v67 + 3);
        v6 = v93 + 1;
        if (v93 >= v92 >> 1)
        {
          v67 = sub_26D33EB6C((v92 > 1), v93 + 1, 1, v67);
        }

        *(v67 + 2) = v6;
        v68 = &v67[16 * v93];
        *(v68 + 4) = 0;
        goto LABEL_102;
      }

LABEL_205:
      v67 = MEMORY[0x277D84F90];
LABEL_206:

      v120 = 0;
      v40 = *(v67 + 2);
      v11 = (v67 + 40);
      v49 = MEMORY[0x277D84F90];
LABEL_207:
      v46 = (v11 + 16 * v120);
      while (1)
      {
        if (v40 == v120)
        {

          return v49;
        }

        if (v120 >= *(v67 + 2))
        {
          break;
        }

        v121 = *(v46 - 1);
        v6 = *v46;
        if (*v46 >> 62)
        {
          v122 = sub_26D3A1488();
        }

        else
        {
          v122 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v120;
        v46 += 2;
        if (v122)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v139 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_26D340B58(0, *(v49 + 2) + 1, 1);
            v49 = v139;
          }

          v125 = *(v49 + 2);
          v124 = *(v49 + 3);
          if (v125 >= v124 >> 1)
          {
            sub_26D340B58((v124 > 1), v125 + 1, 1);
            v49 = v139;
          }

          *(v49 + 2) = v125 + 1;
          v126 = &v49[16 * v125];
          *(v126 + 4) = v121;
          *(v126 + 5) = v6;
          goto LABEL_207;
        }
      }

      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      swift_once();
    }

    if (v49 != 3)
    {
      v55 = 10.0;
      goto LABEL_69;
    }

    if (qword_2804FAD40 != -1)
    {
      v128 = v53;
      swift_once();
      v53 = v128;
    }

    v54 = byte_2804FFF98 == 0;
    v55 = 10.0;
    v56 = 16.0;
    goto LABEL_57;
  }

LABEL_227:

  __break(1u);
  swift_unexpectedError();
  __break(1u);

  __break(1u);
  return result;
}

char *sub_26D335F88(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_26:
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v2 = sub_26D3A1488();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v3 = 0;
  v23 = MEMORY[0x277D84F90];
  do
  {
    for (i = v3; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_26D33E5F4(i, a1, &qword_2804FB390, 0x277D75BC8);
      }

      else
      {
        if (i >= *(v25 + 16))
        {
          goto LABEL_25;
        }

        v5 = *(a1 + 8 * i + 32);
      }

      v6 = v5;
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v7 = [v5 components];
      sub_26D345E5C(0, &qword_2804FADB8, 0x277D75BC0);
      v8 = sub_26D3A1058();

      v9 = v8 >> 62 ? sub_26D3A1488() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v9)
      {
        v10 = [v6 identifier];
        v11 = sub_26D3A0F98();
        v13 = v12;

        LOBYTE(v10) = sub_26D34256C(&v24, v11, v13);

        if (v10)
        {
          break;
        }
      }

      if (v3 == v2)
      {
        return v23;
      }
    }

    v14 = [v6 identifier];
    v15 = sub_26D3A0F98();
    v17 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_26D33E814(0, *(v23 + 2) + 1, 1, v23);
    }

    v20 = *(v23 + 2);
    v19 = *(v23 + 3);
    if (v20 >= v19 >> 1)
    {
      v23 = sub_26D33E814((v19 > 1), v20 + 1, 1, v23);
    }

    *(v23 + 2) = v20 + 1;
    v21 = &v23[16 * v20];
    *(v21 + 4) = v15;
    *(v21 + 5) = v17;
  }

  while (v3 != v2);
  return v23;
}

BOOL sub_26D336228(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v4 = *(a2 + 8);
  v5 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  if ((sub_26D33C7D4(*a1, *a2) & 1) == 0 || (sub_26D33CA18(v2, v4) & 1) == 0)
  {
    return 0;
  }

  v6 = sub_26D39FFC8();
  result = 0;
  if ((v6 & 1) != 0 && ((v3 ^ v5) & 1) == 0)
  {
    return v11 == v9 && v10 == v8;
  }

  return result;
}

uint64_t sub_26D33631C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 48);
  if (*(*a2 + 16) && (v7 = sub_26D33F2EC(*a1, a1[1]), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v7);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v10 = sub_26D33CD0C(a2[9], *(a2 + 80));
  v12 = sub_26D39C698(v6 & 1, v10, v11);
  *a3 = sub_26D3A0618();
  *(a3 + 8) = v12;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAFE0, &qword_26D3A2CD8);
  v18 = v9;
  v13 = swift_allocObject();
  v14 = *(a2 + 3);
  *(v13 + 48) = *(a2 + 2);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a2 + 4);
  *(v13 + 96) = *(a2 + 80);
  v15 = *(a2 + 1);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v15;
  sub_26D346860(a2, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAFE8, &qword_26D3A2CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAFF0, &qword_26D3A2CE8);
  sub_26D3484AC(&qword_2804FAFF8, &qword_2804FAFE8, &qword_26D3A2CE0, MEMORY[0x277D83980]);
  sub_26D3468EC();
  sub_26D346A30();
  return sub_26D3A0E68();
}

uint64_t sub_26D3364DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB020, &qword_26D3A2CF8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v74 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB010, &qword_26D3A2CF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v74 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v16 = sub_26D33CD0C(v14, *(a2 + 80));
  if (v16 > 1)
  {
    if (v16 != 3)
    {
      v20 = 10.0;
      goto LABEL_18;
    }

    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v17 = byte_2804FFF98 == 0;
    v18 = 10.0;
    v19 = 16.0;
    goto LABEL_6;
  }

  v20 = 8.0;
  if (!v16)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v20 = 16.0;
    if ((byte_2804FFF98 & 1) == 0)
    {
      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      v20 = 14.0;
      if (byte_2804FFF99 == 1)
      {
        v17 = _UISolariumEnabled() == 0;
        v18 = 8.0;
        v19 = 10.0;
LABEL_6:
        if (v17)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }
      }
    }
  }

LABEL_18:
  v21 = *(a2 + 56);
  v22 = sub_26D336CB8(v12, v13);
  if (__OFSUB__(v22, 1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v77 = v22 - 1;
  v82 = v8;
  v76 = sub_26D336CB8(v12, v13);
  v84 = a3;
  v83 = v11;
  v81 = v9;
  v80 = a2;
  v79 = v14;
  v78 = v15;
  if (v13 >> 62)
  {
LABEL_57:
    v86 = v13 & 0xFFFFFFFFFFFFFF8;
    v24 = sub_26D3A1488();
    v23 = sub_26D3A1488();
    goto LABEL_21;
  }

  v86 = v13 & 0xFFFFFFFFFFFFFF8;
  v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v23;
LABEL_21:
  v25 = 0;
  v75 = v24;
  v85 = v24 == 1;
  v26 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v23 == v25)
    {
      v85 = 0;
      goto LABEL_36;
    }

    if (v26)
    {
      v27 = sub_26D33E5F4(v25, v13, &qword_2804FADB8, 0x277D75BC0);
    }

    else
    {
      if (v25 >= *(v86 + 16))
      {
        goto LABEL_55;
      }

      v27 = *(v13 + 8 * v25 + 32);
    }

    v28 = v27;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v29 = v13;
    v30 = [v27 componentKey];
    v31 = sub_26D3A0F98();
    v33 = v32;
    if (v31 == sub_26D3A0F98() && v33 == v34)
    {
      break;
    }

    v36 = sub_26D3A1518();

    ++v25;
    v13 = v29;
    if (v36)
    {
      goto LABEL_36;
    }
  }

  v13 = v29;
LABEL_36:
  v37 = sub_26D33CD0C(v79, v78);
  v38 = v82;
  v39 = v75;
  if (v37 > 1)
  {
    if (v37 != 3)
    {
      v43 = 10.0;
      goto LABEL_53;
    }

    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v40 = byte_2804FFF98 == 0;
    v41 = 10.0;
    v42 = 16.0;
    goto LABEL_41;
  }

  v43 = 8.0;
  if (!v37)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v43 = 16.0;
    if ((byte_2804FFF98 & 1) == 0)
    {
      if (qword_2804FAD48 != -1)
      {
        swift_once();
      }

      v43 = 14.0;
      if (byte_2804FFF99 == 1)
      {
        v40 = _UISolariumEnabled() == 0;
        v41 = 8.0;
        v42 = 10.0;
LABEL_41:
        if (v40)
        {
          v43 = v41;
        }

        else
        {
          v43 = v42;
        }
      }
    }
  }

LABEL_53:
  v44 = !v85;
  v45 = (v21 - v20 * v77) / v76;
  *v38 = sub_26D3A0548();
  *(v38 + 8) = v43;
  *(v38 + 16) = 0;
  v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB030, &qword_26D3A2D00) + 44);
  v88 = sub_26D3448FC(v13);
  swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  v47 = v80;
  v48 = *(v80 + 48);
  *(v46 + 56) = *(v80 + 32);
  *(v46 + 72) = v48;
  *(v46 + 88) = *(v47 + 64);
  v49 = *(v47 + 16);
  *(v46 + 24) = *v47;
  *(v46 + 104) = *(v47 + 80);
  *(v46 + 40) = v49;
  *(v46 + 105) = v44;
  *(v46 + 106) = v39 == 1;
  sub_26D346860(v47, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB038, &qword_26D3A2D28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB040, &qword_26D3A2D30);
  sub_26D3484AC(&qword_2804FB048, &qword_2804FB038, &qword_26D3A2D28, MEMORY[0x277D83980]);
  sub_26D3470C0(&qword_2804FB050, &qword_2804FB040, &qword_26D3A2D30, sub_26D346AE4);
  sub_26D3A0E58();
  v50 = sub_26D3A08B8();
  sub_26D39FFD8();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v83;
  sub_26D347238(v38, v83, &qword_2804FB020, &qword_26D3A2CF8);
  v60 = v59 + *(v81 + 36);
  *v60 = v50;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  v61 = sub_26D3A08C8();
  sub_26D39FFD8();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v59;
  v71 = v84;
  sub_26D347238(v70, v84, &qword_2804FB010, &qword_26D3A2CF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAFF0, &qword_26D3A2CE8);
  v73 = v71 + *(result + 36);
  *v73 = v61;
  *(v73 + 8) = v63;
  *(v73 + 16) = v65;
  *(v73 + 24) = v67;
  *(v73 + 32) = v69;
  *(v73 + 40) = 0;
  return result;
}

uint64_t sub_26D336CB8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_26D3A1488();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (v4 != v5)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = sub_26D33E5F4(v5, a2, &qword_2804FADB8, 0x277D75BC0);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = sub_26D337B90();

    ++v5;
    v10 = __OFADD__(v6, v9);
    v6 += v9;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  return v6;
}

double sub_26D336DAC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a1 + 8);
  v14 = sub_26D33CD0C(v11, v12);
  v15 = sub_26D337084(v14, a6);
  v17 = v16;
  v18 = 0.0;
  if ((a3 & 1) == 0)
  {
    v18 = *(a2 + 24) + *(a2 + 40);
  }

  if (v17 < 1)
  {

    sub_26D346DF0(&v44);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    v19 = sub_26D3A02D8();
    v31 = v20;
    v32 = v19;
    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v21 = v13;
    sub_26D3A0EA8();
    sub_26D3A00C8();
    v22 = [v21 componentKey];

    *&v33 = v32;
    *(&v33 + 1) = v31;
    *&v34 = KeyPath;
    BYTE8(v34) = 0;
    BYTE9(v34) = 0;
    *&v35 = v29;
    BYTE8(v35) = 0;
    *&v36 = v21;
    *(&v39 + 1) = v22;
    *&v40 = swift_getKeyPath();
    *(&v40 + 1) = v17;
    LOBYTE(v41) = 0;
    *(&v41 + 1) = swift_getKeyPath();
    *&v42 = v15 + v18;
    *(&v42 + 1) = swift_getKeyPath();
    *&v43 = a6;
    *(&v43 + 1) = swift_getKeyPath();
    nullsub_1();
    v52 = v41;
    v53 = v42;
    v54 = v43;
    v55 = a4 & 1;
    v48 = v37;
    v49 = v38;
    v50 = v39;
    v51 = v40;
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
  }

  v23 = v53;
  *(a5 + 128) = v52;
  *(a5 + 144) = v23;
  *(a5 + 160) = v54;
  *(a5 + 176) = v55;
  v24 = v49;
  *(a5 + 64) = v48;
  *(a5 + 80) = v24;
  v25 = v51;
  *(a5 + 96) = v50;
  *(a5 + 112) = v25;
  v26 = v45;
  *a5 = v44;
  *(a5 + 16) = v26;
  result = *&v46;
  v28 = v47;
  *(a5 + 32) = v46;
  *(a5 + 48) = v28;
  return result;
}

double sub_26D337084(uint64_t a1, double a2)
{
  v2 = a1;
  v4 = sub_26D337B90();
  if (v2 <= 1u)
  {
    v8 = 8.0;
    if (!v2)
    {
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      v8 = 16.0;
      if ((byte_2804FFF98 & 1) == 0)
      {
        if (qword_2804FAD48 != -1)
        {
          swift_once();
        }

        v8 = 14.0;
        if (byte_2804FFF99 == 1)
        {
          v5 = _UISolariumEnabled() == 0;
          v6 = 8.0;
          v7 = 10.0;
          goto LABEL_5;
        }
      }
    }

    goto LABEL_17;
  }

  if (v2 != 3)
  {
    v8 = 10.0;
    goto LABEL_17;
  }

  if (qword_2804FAD40 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v5 = byte_2804FFF98 == 0;
    v6 = 10.0;
    v7 = 16.0;
LABEL_5:
    v8 = v5 ? v6 : v7;
LABEL_17:
    v9 = sub_26D337B90();
    if (!__OFSUB__(v9, 1))
    {
      break;
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v10 = v4 * a2 + v8 * (v9 - 1);
  sub_26D345EA4(v2, v10);
  return v10;
}

void *sub_26D337204@<X0>(uint64_t a1@<X8>)
{
  sub_26D346F10();
  result = sub_26D3A0518();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double sub_26D337310@<D0>(uint64_t (*a1)(void)@<X3>, double *a3@<X8>)
{
  a1();
  sub_26D3A0518();
  result = v5;
  *a3 = v5;
  return result;
}

void *sub_26D3373DC@<X0>(_BYTE *a1@<X8>)
{
  sub_26D346E14();
  result = sub_26D3A0518();
  *a1 = v3;
  return result;
}

uint64_t sub_26D33749C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAFB8, &unk_26D3A2CA0);
  MEMORY[0x28223BE20](v3);
  v6 = &KeyPath - v5;
  v7 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v20 = v7;
  v21 = *(v1 + 64);
  v22 = *(v1 + 80);
  v9 = *v1;
  v8 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v8;
  v9.n128_u64[0] = *(&v20 + 1);
  if (*(&v20 + 1) <= 0.0)
  {
    v14 = *(v4 + 56);

    return v14(a1, 1, 1, v3, v9);
  }

  else
  {
    v23 = *(&v19[0] + 1);
    v18 = *(&v19[0] + 1);
    v16 = v4;
    KeyPath = swift_getKeyPath();
    v10 = swift_allocObject();
    v11 = *(v1 + 48);
    *(v10 + 48) = *(v1 + 32);
    *(v10 + 64) = v11;
    *(v10 + 80) = *(v1 + 64);
    *(v10 + 96) = *(v1 + 80);
    v12 = *(v1 + 16);
    *(v10 + 16) = *v1;
    *(v10 + 32) = v12;
    sub_26D34856C(&v23, v17, &qword_2804FAFC0, &qword_26D3A2CC8);
    sub_26D346860(v19, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAFC0, &qword_26D3A2CC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAFC8, &qword_26D3A2CD0);
    sub_26D3484AC(&qword_2804FAFD0, &qword_2804FAFC0, &qword_26D3A2CC8, MEMORY[0x277D83980]);
    sub_26D3484AC(&qword_2804FAFD8, &qword_2804FAFC8, &qword_26D3A2CD0, MEMORY[0x277CE1198]);
    sub_26D3A0E58();
    (*(v16 + 32))(a1, v6, v3);
    return (*(v16 + 56))(a1, 0, 1, v3);
  }
}

double sub_26D337784(unsigned __int8 a1, uint64_t a2, double a3)
{
  if (qword_2804FAD48 != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  if (byte_2804FFF99 == 1)
  {
    v4 = _UISolariumEnabled();
    v5 = 35.0;
    if (!v4)
    {
      v5 = 30.0;
    }

    return v5 * a2;
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      *&v18 = 44.0;
    }

    else
    {
      if (qword_2804FAD40 != -1)
      {
        swift_once();
      }

      if (byte_2804FFF98)
      {
        *&v18 = 50.0;
      }

      else
      {
        if (byte_2804FFF99 == 1)
        {
          v6 = _UISolariumEnabled() == 0;
          v5 = 22.0;
          v7 = 24.0;
LABEL_12:
          if (!v6)
          {
            v5 = v7;
          }

          return v5 * a2;
        }

        *&v18 = 45.0;
      }
    }

    v5 = *&v18;
    return v5 * a2;
  }

  if (a1 == 3)
  {
    if (qword_2804FAD40 != -1)
    {
      swift_once();
    }

    v6 = byte_2804FFF98 == 0;
    v5 = 44.0;
    v7 = 50.0;
    goto LABEL_12;
  }

  v8 = [objc_opt_self() mainScreen];
  [v8 _referenceBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  v17 = CGRectGetHeight(v21) > 667.0;
  v5 = 50.0;
  if (!v17)
  {
    v5 = 45.0;
  }

  return v5 * a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D337A2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D337A4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_26D337AB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_26D337AF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D337B90()
{
  if ([v0 preferredSize])
  {
    v1 = [v0 preferredSize];
  }

  else
  {
    v1 = sub_26D337D34();
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAEB0, &qword_26D3A29B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26D3A22A0;

  *(inited + 32) = 1;
  *(inited + 40) = v2;
  v4 = sub_26D344AFC(inited);
  swift_setDeallocating();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_26D33EE70(*(v4 + 16), 0);
    v7 = sub_26D344698(&v12, v6 + 4, v5, v4);
    v8 = v12;

    sub_26D345E54(v8);
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v12 = v6;
  v5 = 0;
  sub_26D3407C4(&v12);
  v9 = *(v12 + 2);
  if (v9)
  {
    v10 = *&v12[8 * v9 + 24];

    return v10;
  }

LABEL_11:

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_26D337D34()
{
  v1 = [v0 componentKey];
  v2 = sub_26D3A0F98();
  v4 = v3;
  if (v2 == sub_26D3A0F98() && v4 == v5)
  {

    return 5;
  }

  v7 = sub_26D3A1518();

  if (v7)
  {

    return 5;
  }

  v9 = sub_26D3A0F98();
  v11 = v10;
  if (v9 == sub_26D3A0F98() && v11 == v12)
  {

    return 4;
  }

  v14 = sub_26D3A1518();

  if (v14)
  {

    return 4;
  }

  v15 = sub_26D3A0F98();
  v17 = v16;
  if (v15 == sub_26D3A0F98() && v17 == v18)
  {
    goto LABEL_18;
  }

  v19 = sub_26D3A1518();

  if (v19)
  {
    goto LABEL_20;
  }

  v20 = sub_26D3A0F98();
  v22 = v21;
  if (v20 == sub_26D3A0F98() && v22 == v23)
  {
    goto LABEL_23;
  }

  v24 = sub_26D3A1518();

  if (v24)
  {
    goto LABEL_25;
  }

  v25 = sub_26D3A0F98();
  v27 = v26;
  if (v25 == sub_26D3A0F98() && v27 == v28)
  {
    goto LABEL_18;
  }

  v29 = sub_26D3A1518();

  if (v29)
  {
LABEL_20:

    return 3;
  }

  v30 = sub_26D3A0F98();
  v32 = v31;
  if (v30 == sub_26D3A0F98() && v32 == v33)
  {
    goto LABEL_31;
  }

  v34 = sub_26D3A1518();

  if (v34)
  {
    goto LABEL_33;
  }

  v35 = sub_26D3A0F98();
  v37 = v36;
  if (v35 == sub_26D3A0F98() && v37 == v38)
  {
LABEL_31:

    return 1;
  }

  v39 = sub_26D3A1518();

  if (v39)
  {
    goto LABEL_33;
  }

  v40 = sub_26D3A0F98();
  v42 = v41;
  if (v40 == sub_26D3A0F98() && v42 == v43)
  {
    goto LABEL_23;
  }

  v44 = sub_26D3A1518();

  if (v44)
  {
    goto LABEL_25;
  }

  v45 = sub_26D3A0F98();
  v47 = v46;
  if (v45 == sub_26D3A0F98() && v47 == v48)
  {
    goto LABEL_31;
  }

  v49 = sub_26D3A1518();

  if (v49)
  {
    goto LABEL_33;
  }

  v50 = sub_26D3A0F98();
  v52 = v51;
  if (v50 == sub_26D3A0F98() && v52 == v53)
  {
LABEL_18:

    return 3;
  }

  v54 = sub_26D3A1518();

  if (v54)
  {
    goto LABEL_20;
  }

  v55 = sub_26D3A0F98();
  v57 = v56;
  if (v55 == sub_26D3A0F98() && v57 == v58)
  {
    goto LABEL_23;
  }

  v59 = sub_26D3A1518();

  if (v59)
  {
    goto LABEL_25;
  }

  v60 = sub_26D3A0F98();
  v62 = v61;
  if (v60 == sub_26D3A0F98() && v62 == v63)
  {
    goto LABEL_31;
  }

  v64 = sub_26D3A1518();

  if (v64)
  {
    goto LABEL_33;
  }

  v65 = sub_26D3A0F98();
  v67 = v66;
  if (v65 == sub_26D3A0F98() && v67 == v68)
  {
    goto LABEL_23;
  }

  v69 = sub_26D3A1518();

  if (v69)
  {
    goto LABEL_25;
  }

  v70 = sub_26D3A0F98();
  v72 = v71;
  if (v70 == sub_26D3A0F98() && v72 == v73)
  {
    goto LABEL_31;
  }

  v74 = sub_26D3A1518();

  if (v74)
  {
LABEL_33:

    return 1;
  }

  v75 = sub_26D3A0F98();
  v77 = v76;
  if (v75 == sub_26D3A0F98() && v77 == v78)
  {
    goto LABEL_23;
  }

  v79 = sub_26D3A1518();

  if (v79)
  {
LABEL_25:

    return 2;
  }

  v80 = sub_26D3A0F98();
  v82 = v81;
  if (v80 == sub_26D3A0F98() && v82 == v83)
  {
    goto LABEL_31;
  }

  v84 = sub_26D3A1518();

  if (v84)
  {
    goto LABEL_33;
  }

  v85 = sub_26D3A0F98();
  v87 = v86;
  if (v85 == sub_26D3A0F98() && v87 == v88)
  {
LABEL_23:

    return 2;
  }

  v89 = sub_26D3A1518();

  if (v89)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_26D3384E0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB118, &qword_26D3A2F50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - v4;
  sub_26D3386D8((v13 - v4));
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26D39FF68();

    v6 = v13[1];
    v7 = [*(v1 + 48) componentKey];
    v8 = sub_26D33C0B4(v7, v6);

    KeyPath = swift_getKeyPath();
    v10 = swift_allocObject();
    *(v10 + 16) = v8 & 1;
    sub_26D347238(v5, a1, &qword_2804FB118, &qword_26D3A2F50);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB120, &qword_26D3A2FD0);
    v12 = (a1 + *(result + 36));
    *v12 = KeyPath;
    v12[1] = sub_26D347220;
    v12[2] = v10;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    result = sub_26D3A02B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_26D3386D8@<X0>(void *a1@<X8>)
{
  v288 = a1;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB128, &qword_26D3A2FD8);
  MEMORY[0x28223BE20](v268);
  v269 = (&v267 - v2);
  v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB130, &qword_26D3A2FE0);
  MEMORY[0x28223BE20](v276);
  v270 = &v267 - v3;
  v272 = type metadata accessor for TFTextAlignmentControl(0);
  MEMORY[0x28223BE20](v272);
  v271 = &v267 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB138, &qword_26D3A2FE8);
  MEMORY[0x28223BE20](v273);
  v275 = &v267 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB140, &qword_26D3A2FF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v267 - v7);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB148, &qword_26D3A2FF8);
  MEMORY[0x28223BE20](v274);
  v10 = &v267 - v9;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB150, &qword_26D3A3000);
  MEMORY[0x28223BE20](v279);
  v277 = &v267 - v11;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB158, &qword_26D3A3008);
  MEMORY[0x28223BE20](v284);
  v287 = (&v267 - v12);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB160, &qword_26D3A3010);
  MEMORY[0x28223BE20](v281);
  v283 = &v267 - v13;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB168, &qword_26D3A3018);
  MEMORY[0x28223BE20](v278);
  v15 = (&v267 - v14);
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB170, &qword_26D3A3020);
  MEMORY[0x28223BE20](v282);
  v280 = &v267 - v16;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB178, &qword_26D3A3028);
  MEMORY[0x28223BE20](v286);
  v285 = &v267 - v17;
  v18 = *(v1 + 48);
  v19 = [v18 componentKey];
  v20 = sub_26D3A1308();

  if (!v20)
  {
    v20 = [v18 componentKey];
  }

  v21 = sub_26D3A0F98();
  v23 = v22;
  if (v21 != sub_26D3A0F98() || v23 != v24)
  {
    v25 = sub_26D3A1518();

    if (v25)
    {

      goto LABEL_8;
    }

    v37 = sub_26D3A0F98();
    v39 = v38;
    if (v37 == sub_26D3A0F98() && v39 == v40)
    {

LABEL_18:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v42 = sub_26D3A02D8();
      v277 = v42;
      v44 = v43;
      KeyPath = swift_getKeyPath();
      v46 = swift_getKeyPath();
      v47 = swift_getKeyPath();
      v309 = 0;
      v308 = 0;
      v307 = 0;
      LOBYTE(v310[0]) = 1;
      v300.n128_u64[0] = v42;
      v300.n128_u64[1] = v44;
      v301.n128_u64[0] = KeyPath;
      v276 = KeyPath;
      v301.n128_u16[4] = 0;
      v302.n128_u64[0] = v46;
      v302.n128_u8[8] = 0;
      *&v303[0] = v47;
      BYTE8(v303[0]) = 0;
      BYTE8(v304[1]) = 1;
      sub_26D347604();
      sub_26D347658();

      sub_26D3A0718();
      v297[1] = v292[1];
      *v298 = v293[0];
      *&v298[9] = *(v293 + 9);
      v294 = v289;
      v295 = v290;
      v296 = v291;
      v297[0] = v292[0];
      v312.n128_u8[0] = 0;
      v299 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1D8, &qword_26D3A3050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1F8, &qword_26D3A3058);
      sub_26D347578();
      sub_26D3476AC();
      sub_26D3A0718();
      v48 = v304[0];
      v15[4] = v303[1];
      v15[5] = v48;
      *(v15 + 90) = *(v304 + 10);
      v49 = v301;
      *v15 = v300;
      v15[1] = v49;
      v50 = v303[0];
      v15[2] = v302;
      v15[3] = v50;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1C8, &qword_26D3A3048);
      sub_26D3474EC();
      sub_26D3477E0();
      v51 = v280;
      sub_26D3A0718();
      sub_26D34856C(v51, v283, &qword_2804FB170, &qword_26D3A3020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
      sub_26D347460();
      sub_26D347A38();
      v52 = v285;
      sub_26D3A0718();
      sub_26D3481A4(v51, &qword_2804FB170, &qword_26D3A3020);
      sub_26D34856C(v52, v287, &qword_2804FB178, &qword_26D3A3028);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
      sub_26D3473D4();
      sub_26D347FA8();
      sub_26D3A0718();

      v33 = v52;
      v34 = &qword_2804FB178;
      v35 = &qword_26D3A3028;
      return sub_26D3481A4(v33, v34, v35);
    }

    v41 = sub_26D3A1518();

    if (v41)
    {

      goto LABEL_18;
    }

    v53 = sub_26D3A0F98();
    v55 = v54;
    if (v53 == sub_26D3A0F98() && v55 == v56)
    {

LABEL_24:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v58 = sub_26D3A02D8();
      v60 = v59;
      v61 = swift_getKeyPath();
      v62 = swift_getKeyPath();
      LOBYTE(v310[0]) = 0;
      v309 = 0;
      v308 = 0;
      v300.n128_u64[0] = v58;
      v300.n128_u64[1] = v60;
      v277 = v58;
      v301.n128_u64[0] = v61;
      v301.n128_u16[4] = 0;
      v302.n128_u64[0] = v62;
      v302.n128_u8[8] = 0;
      BYTE1(v304[0]) = 0;
      sub_26D347738();
      sub_26D34778C();

      sub_26D3A0718();
      v296 = v291;
      v297[0] = v292[0];
      v297[1] = v292[1];
      *v298 = v293[0];
      v294 = v289;
      v295 = v290;
      v312.n128_u8[0] = 1;
      v299 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1D8, &qword_26D3A3050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1F8, &qword_26D3A3058);
      sub_26D347578();
      sub_26D3476AC();
      sub_26D3A0718();
      v63 = v304[0];
      v15[4] = v303[1];
      v15[5] = v63;
      *(v15 + 90) = *(v304 + 10);
      v64 = v301;
      *v15 = v300;
      v15[1] = v64;
      v65 = v303[0];
      v15[2] = v302;
      v15[3] = v65;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1C8, &qword_26D3A3048);
      sub_26D3474EC();
      sub_26D3477E0();
      v66 = v280;
      sub_26D3A0718();
      sub_26D34856C(v66, v283, &qword_2804FB170, &qword_26D3A3020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
      sub_26D347460();
      sub_26D347A38();
      v67 = v285;
      sub_26D3A0718();
      sub_26D3481A4(v66, &qword_2804FB170, &qword_26D3A3020);
      sub_26D34856C(v67, v287, &qword_2804FB178, &qword_26D3A3028);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
      sub_26D3473D4();
      sub_26D347FA8();
      sub_26D3A0718();

      v33 = v67;
      v34 = &qword_2804FB178;
      v35 = &qword_26D3A3028;
      return sub_26D3481A4(v33, v34, v35);
    }

    v57 = sub_26D3A1518();

    if (v57)
    {

      goto LABEL_24;
    }

    v68 = sub_26D3A0F98();
    v70 = v69;
    if (v68 == sub_26D3A0F98() && v70 == v71)
    {

LABEL_30:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v73 = sub_26D3A02D8();
      v75 = v74;
      v76 = swift_getKeyPath();
      v300.n128_u8[0] = 0;
      v77 = swift_getKeyPath();
      v294.n128_u8[0] = 0;
      v78 = swift_getKeyPath();
      v289.n128_u8[0] = 0;
      v79 = swift_getKeyPath();
      LOBYTE(v310[0]) = 0;
      v312.n128_u8[0] = 0;
      v312.n128_u64[1] = v73;
      v313.n128_u64[0] = v75;
      v313.n128_u64[1] = v76;
      v314.n128_u8[0] = 0;
      v314.n128_u8[1] = v300.n128_u8[0];
      v314.n128_u64[1] = v77;
      v315[0] = v294.n128_u8[0];
      *&v315[8] = v78;
      v315[16] = v289.n128_u8[0];
      *&v315[24] = v79;
      LOBYTE(v316) = 0;
      v302 = v314;
      v303[0] = *v315;
      v303[1] = *&v315[16];
      LOWORD(v304[0]) = 256;
      v300 = v312;
      v301 = v313;
      v309 = 1;
      sub_26D348204(&v312, &v294);
      sub_26D347738();
      sub_26D34778C();
      sub_26D3A0718();
      v296 = v291;
      v297[0] = v292[0];
      v297[1] = v292[1];
      *v298 = v293[0];
      v294 = v289;
      v295 = v290;
      LOBYTE(v310[0]) = 1;
      v299 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1D8, &qword_26D3A3050);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1F8, &qword_26D3A3058);
      sub_26D347578();
      sub_26D3476AC();
      sub_26D3A0718();
      v80 = v304[0];
      v15[4] = v303[1];
      v15[5] = v80;
      *(v15 + 90) = *(v304 + 10);
      v81 = v301;
      *v15 = v300;
      v15[1] = v81;
      v82 = v303[0];
      v15[2] = v302;
      v15[3] = v82;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1C8, &qword_26D3A3048);
      sub_26D3474EC();
      sub_26D3477E0();
      v83 = v280;
      sub_26D3A0718();
      sub_26D34856C(v83, v283, &qword_2804FB170, &qword_26D3A3020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
      sub_26D347460();
      sub_26D347A38();
      v30 = v285;
      sub_26D3A0718();
      sub_26D3481A4(v83, &qword_2804FB170, &qword_26D3A3020);
      v31 = &qword_2804FB178;
      v32 = &qword_26D3A3028;
      sub_26D34856C(v30, v287, &qword_2804FB178, &qword_26D3A3028);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
      sub_26D3473D4();
      sub_26D347FA8();
      sub_26D3A0718();
      v84 = &v312;
LABEL_31:
      sub_26D348260(v84);
      goto LABEL_9;
    }

    v72 = sub_26D3A1518();

    if (v72)
    {

      goto LABEL_30;
    }

    v85 = sub_26D3A0F98();
    v87 = v86;
    if (v85 == sub_26D3A0F98() && v87 == v88)
    {

LABEL_37:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v90 = sub_26D3A02D8();
      v92 = v91;
      v93 = swift_getKeyPath();
      v94 = swift_getKeyPath();
      v95 = swift_getKeyPath();
      v96 = swift_getKeyPath();
      v300.n128_u8[0] = 1;
      v300.n128_u64[1] = v90;
      v301.n128_u64[0] = v92;
      v301.n128_u64[1] = v93;
      v302.n128_u16[0] = 0;
      v302.n128_u64[1] = v94;
      LOBYTE(v303[0]) = 0;
      *(&v303[0] + 1) = v95;
      LOBYTE(v303[1]) = 0;
      *(&v303[1] + 1) = v96;
      LOBYTE(v304[0]) = 0;
      v8[5].n128_u8[0] = 0;
      v97 = v303[0];
      v8[2] = v302;
      v8[3] = v97;
      v8[4] = v303[1];
      v98 = v301;
      *v8 = v300;
      v8[1] = v98;
      swift_storeEnumTagMultiPayload();
      sub_26D348204(&v300, &v294);
      sub_26D34778C();
      sub_26D33E2B0(&qword_2804FB220, type metadata accessor for TFTextAlignmentControl, &unk_26D3A4C5C);
      sub_26D3A0718();
      sub_26D34856C(v10, v275, &qword_2804FB148, &qword_26D3A2FF8);
      swift_storeEnumTagMultiPayload();
      sub_26D34786C();
      sub_26D347928();
      v99 = v277;
      sub_26D3A0718();
      sub_26D3481A4(v10, &qword_2804FB148, &qword_26D3A2FF8);
      sub_26D34856C(v99, v15, &qword_2804FB150, &qword_26D3A3000);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1C8, &qword_26D3A3048);
      sub_26D3474EC();
      sub_26D3477E0();
      v100 = v280;
      sub_26D3A0718();
      sub_26D3481A4(v99, &qword_2804FB150, &qword_26D3A3000);
      sub_26D34856C(v100, v283, &qword_2804FB170, &qword_26D3A3020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
      sub_26D347460();
      sub_26D347A38();
      v30 = v285;
      sub_26D3A0718();
      sub_26D3481A4(v100, &qword_2804FB170, &qword_26D3A3020);
      v31 = &qword_2804FB178;
      v32 = &qword_26D3A3028;
      sub_26D34856C(v30, v287, &qword_2804FB178, &qword_26D3A3028);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
      sub_26D3473D4();
      sub_26D347FA8();
      sub_26D3A0718();
      v84 = &v300;
      goto LABEL_31;
    }

    v89 = sub_26D3A1518();

    if (v89)
    {

      goto LABEL_37;
    }

    v101 = sub_26D3A0F98();
    v103 = v102;
    if (v101 == sub_26D3A0F98() && v103 == v104)
    {

LABEL_43:
      v106 = v271;
      *v271 = 0;
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      *(v106 + 8) = sub_26D3A02D8();
      *(v106 + 16) = v107;
      *(v106 + 24) = swift_getKeyPath();
      *(v106 + 32) = 0;
      v108 = v272;
      v109 = *(v272 + 28);
      *(v106 + v109) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2D8, &qword_26D3A5B20);
      swift_storeEnumTagMultiPayload();
      v110 = v106 + *(v108 + 32);
      *v110 = swift_getKeyPath();
      *(v110 + 8) = 0;
      sub_26D3480E4(v106, v8);
      swift_storeEnumTagMultiPayload();
      sub_26D34778C();
      sub_26D33E2B0(&qword_2804FB220, type metadata accessor for TFTextAlignmentControl, &unk_26D3A4C5C);
      sub_26D3A0718();
      sub_26D34856C(v10, v275, &qword_2804FB148, &qword_26D3A2FF8);
      swift_storeEnumTagMultiPayload();
      sub_26D34786C();
      sub_26D347928();
      v111 = v277;
      sub_26D3A0718();
      sub_26D3481A4(v10, &qword_2804FB148, &qword_26D3A2FF8);
      sub_26D34856C(v111, v15, &qword_2804FB150, &qword_26D3A3000);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1C8, &qword_26D3A3048);
      sub_26D3474EC();
      sub_26D3477E0();
      v112 = v280;
      sub_26D3A0718();
      sub_26D3481A4(v111, &qword_2804FB150, &qword_26D3A3000);
      sub_26D34856C(v112, v283, &qword_2804FB170, &qword_26D3A3020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
      sub_26D347460();
      sub_26D347A38();
      v113 = v285;
      sub_26D3A0718();
      sub_26D3481A4(v112, &qword_2804FB170, &qword_26D3A3020);
      sub_26D34856C(v113, v287, &qword_2804FB178, &qword_26D3A3028);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
      sub_26D3473D4();
      sub_26D347FA8();
      sub_26D3A0718();
      sub_26D3481A4(v113, &qword_2804FB178, &qword_26D3A3028);
      return sub_26D348148(v106);
    }

    v105 = sub_26D3A1518();

    if (v105)
    {

      goto LABEL_43;
    }

    v114 = sub_26D3A0F98();
    v116 = v115;
    if (v114 == sub_26D3A0F98() && v116 == v117)
    {

LABEL_49:
      v119 = v271;
      *v271 = 1;
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      *(v119 + 8) = sub_26D3A02D8();
      *(v119 + 16) = v120;
      *(v119 + 24) = swift_getKeyPath();
      *(v119 + 32) = 0;
      v121 = v272;
      v122 = *(v272 + 28);
      *(v119 + v122) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2D8, &qword_26D3A5B20);
      swift_storeEnumTagMultiPayload();
      v123 = v119 + *(v121 + 32);
      *v123 = swift_getKeyPath();
      *(v123 + 8) = 0;
      sub_26D3480E4(v119, v269);
      swift_storeEnumTagMultiPayload();
      sub_26D33E2B0(&qword_2804FB220, type metadata accessor for TFTextAlignmentControl, &unk_26D3A4C5C);
      sub_26D3479E4();
      v124 = v270;
      sub_26D3A0718();
      sub_26D34856C(v124, v275, &qword_2804FB130, &qword_26D3A2FE0);
      swift_storeEnumTagMultiPayload();
      sub_26D34786C();
      sub_26D347928();
      v125 = v277;
      sub_26D3A0718();
      sub_26D3481A4(v124, &qword_2804FB130, &qword_26D3A2FE0);
      sub_26D34856C(v125, v15, &qword_2804FB150, &qword_26D3A3000);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1C8, &qword_26D3A3048);
      sub_26D3474EC();
      sub_26D3477E0();
      v126 = v280;
      sub_26D3A0718();
      sub_26D3481A4(v125, &qword_2804FB150, &qword_26D3A3000);
      sub_26D34856C(v126, v283, &qword_2804FB170, &qword_26D3A3020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
      sub_26D347460();
      sub_26D347A38();
      v127 = v285;
      sub_26D3A0718();
      sub_26D3481A4(v126, &qword_2804FB170, &qword_26D3A3020);
      sub_26D34856C(v127, v287, &qword_2804FB178, &qword_26D3A3028);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
      sub_26D3473D4();
      sub_26D347FA8();
      sub_26D3A0718();
      sub_26D3481A4(v127, &qword_2804FB178, &qword_26D3A3028);
      return sub_26D348148(v119);
    }

    v118 = sub_26D3A1518();

    if (v118)
    {

      goto LABEL_49;
    }

    v128 = sub_26D3A0F98();
    v130 = v129;
    if (v128 == sub_26D3A0F98() && v130 == v131)
    {

LABEL_55:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v133 = sub_26D3A02D8();
      v135 = v134;
      v136 = swift_getKeyPath();
      v137 = v269;
      *v269 = v133;
      v137[1] = v135;
      v137[2] = v136;
      *(v137 + 12) = 0;
      swift_storeEnumTagMultiPayload();
      sub_26D33E2B0(&qword_2804FB220, type metadata accessor for TFTextAlignmentControl, &unk_26D3A4C5C);
      sub_26D3479E4();

      v138 = v270;
      sub_26D3A0718();
      sub_26D34856C(v138, v275, &qword_2804FB130, &qword_26D3A2FE0);
      swift_storeEnumTagMultiPayload();
      sub_26D34786C();
      sub_26D347928();
      v139 = v277;
      sub_26D3A0718();
      sub_26D3481A4(v138, &qword_2804FB130, &qword_26D3A2FE0);
      sub_26D34856C(v139, v15, &qword_2804FB150, &qword_26D3A3000);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1C8, &qword_26D3A3048);
      sub_26D3474EC();
      sub_26D3477E0();
      v140 = v280;
      sub_26D3A0718();
      sub_26D3481A4(v139, &qword_2804FB150, &qword_26D3A3000);
      sub_26D34856C(v140, v283, &qword_2804FB170, &qword_26D3A3020);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
      sub_26D347460();
      sub_26D347A38();
      v141 = v285;
      sub_26D3A0718();
      sub_26D3481A4(v140, &qword_2804FB170, &qword_26D3A3020);
LABEL_65:
      sub_26D34856C(v141, v287, &qword_2804FB178, &qword_26D3A3028);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
      sub_26D3473D4();
      sub_26D347FA8();
      sub_26D3A0718();

      v33 = v141;
      v34 = &qword_2804FB178;
      v35 = &qword_26D3A3028;
      return sub_26D3481A4(v33, v34, v35);
    }

    v132 = sub_26D3A1518();

    if (v132)
    {

      goto LABEL_55;
    }

    v142 = sub_26D3A0F98();
    v144 = v143;
    if (v142 == sub_26D3A0F98() && v144 == v145)
    {

LABEL_61:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v147 = sub_26D3A02D8();
      v149 = v148;
      v150 = swift_getKeyPath();
      v294.n128_u64[0] = v147;
      v294.n128_u64[1] = v149;
      v295 = v150;
      v296.n128_u16[0] = 0;
      v296.n128_u8[2] = 0;
LABEL_62:
      sub_26D347BDC();
      sub_26D347C30();

      sub_26D3A0718();
      LOBYTE(v310[0]) = v302.n128_u8[2];
      v309 = 0;
      BYTE9(v303[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB260, &qword_26D3A3070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB280, &qword_26D3A3078);
      sub_26D347B50();
      sub_26D347C84();
      sub_26D3A0718();
      v296 = v291;
      v297[0] = v292[0];
      *(v297 + 10) = *(v292 + 10);
      v294 = v289;
      v295 = v290;
      v312.n128_u8[0] = 0;
LABEL_63:
      v298[18] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB250, &qword_26D3A3068);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB298, &qword_26D3A3080);
      sub_26D347AC4();
      sub_26D347D64();
      sub_26D3A0718();
      v151 = v304[0];
      v152 = v283;
      *(v283 + 64) = v303[1];
      *(v152 + 80) = v151;
      v153 = *(v304 + 15);
LABEL_64:
      *(v152 + 95) = v153;
      v154 = v301;
      *v152 = v300;
      *(v152 + 16) = v154;
      v155 = v303[0];
      *(v152 + 32) = v302;
      *(v152 + 48) = v155;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
      sub_26D347460();
      sub_26D347A38();
      v141 = v285;
      sub_26D3A0718();
      goto LABEL_65;
    }

    v146 = sub_26D3A1518();

    if (v146)
    {

      goto LABEL_61;
    }

    v156 = sub_26D3A0F98();
    v158 = v157;
    if (v156 == sub_26D3A0F98() && v158 == v159)
    {

LABEL_71:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v161 = sub_26D3A02D8();
      v163 = v162;
      v164 = swift_getKeyPath();
      v294.n128_u64[0] = 0;
      v294.n128_u64[1] = v161;
      v295.n128_u64[0] = v163;
      v295.n128_u64[1] = v164;
      v296.n128_u16[0] = 0;
      v296.n128_u8[2] = 1;
      goto LABEL_62;
    }

    v160 = sub_26D3A1518();

    if (v160)
    {

      goto LABEL_71;
    }

    v165 = sub_26D3A0F98();
    v167 = v166;
    if (v165 == sub_26D3A0F98() && v167 == v168)
    {

LABEL_77:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v170 = sub_26D3A02D8();
      v172 = v171;
      v173 = swift_getKeyPath();
      v308 = 0;
      v307 = 0;
      v300.n128_u8[0] = 1;
      v300.n128_u64[1] = v170;
      v301.n128_u64[0] = v172;
      v301.n128_u64[1] = v173;
      v302.n128_u16[0] = 0;
      BYTE8(v303[1]) = 0;
      sub_26D347C30();
      sub_26D347D10();

      sub_26D3A0718();
      v302 = v314;
      v303[0] = *v315;
      *(v303 + 9) = *&v315[9];
      v300 = v312;
      v301 = v313;
      v309 = 1;
      BYTE9(v303[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB260, &qword_26D3A3070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB280, &qword_26D3A3078);
      sub_26D347B50();
      sub_26D347C84();
      sub_26D3A0718();
      v296 = v291;
      v297[0] = v292[0];
      *(v297 + 10) = *(v292 + 10);
      v294 = v289;
      v295 = v290;
      LOBYTE(v310[0]) = 0;
      goto LABEL_63;
    }

    v169 = sub_26D3A1518();

    if (v169)
    {

      goto LABEL_77;
    }

    v174 = sub_26D3A0F98();
    v176 = v175;
    if (v174 == sub_26D3A0F98() && v176 == v177)
    {

LABEL_83:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v179 = sub_26D3A02D8();
      v181 = v180;
      v182 = swift_getKeyPath();
      v183 = swift_getKeyPath();
      v184 = swift_getKeyPath();
      v307 = 0;
      v306 = 0;
      v305 = 0;
      v308 = 1;
      v300.n128_u64[0] = v179;
      v300.n128_u64[1] = v181;
      v280 = v179;
      v301.n128_u64[0] = v182;
      v301.n128_u16[4] = 0;
      v302.n128_u64[0] = v183;
      v302.n128_u8[8] = 0;
      *&v303[0] = v184;
      BYTE8(v303[0]) = 0;
      *&v303[1] = 0x403C000000000000;
      BYTE8(v303[1]) = 1;
      sub_26D347C30();
      sub_26D347D10();

      sub_26D3A0718();
      v302 = v314;
      v303[0] = *v315;
      *(v303 + 9) = *&v315[9];
      v300 = v312;
      v301 = v313;
      v309 = 1;
      BYTE9(v303[1]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB260, &qword_26D3A3070);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB280, &qword_26D3A3078);
      sub_26D347B50();
      sub_26D347C84();
      sub_26D3A0718();
      v296 = v291;
      v297[0] = v292[0];
      *(v297 + 10) = *(v292 + 10);
      v294 = v289;
      v295 = v290;
      LOBYTE(v310[0]) = 0;
      v298[18] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB250, &qword_26D3A3068);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB298, &qword_26D3A3080);
      sub_26D347AC4();
      sub_26D347D64();
      sub_26D3A0718();
      v185 = v304[0];
      v186 = v283;
      *(v283 + 64) = v303[1];
      *(v186 + 80) = v185;
      *(v186 + 95) = *(v304 + 15);
      v187 = v301;
      *v186 = v300;
      *(v186 + 16) = v187;
      v188 = v303[0];
      *(v186 + 32) = v302;
      *(v186 + 48) = v188;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
      sub_26D347460();
      sub_26D347A38();
      v189 = v285;
      sub_26D3A0718();
      sub_26D34856C(v189, v287, &qword_2804FB178, &qword_26D3A3028);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
      sub_26D3473D4();
      sub_26D347FA8();
      sub_26D3A0718();

      v33 = v189;
      v34 = &qword_2804FB178;
      v35 = &qword_26D3A3028;
      return sub_26D3481A4(v33, v34, v35);
    }

    v178 = sub_26D3A1518();

    if (v178)
    {

      goto LABEL_83;
    }

    v190 = sub_26D3A0F98();
    v192 = v191;
    if (v190 == sub_26D3A0F98() && v192 == v193)
    {

LABEL_89:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v195 = sub_26D3A02D8();
      v197 = v196;
      v198 = swift_getKeyPath();
      v294.n128_u64[0] = v195;
      v294.n128_u64[1] = v197;
      v295.n128_u64[0] = v198;
      v295.n128_u16[4] = 0;
      v295.n128_u8[10] = 0;
      sub_26D347E7C();
      sub_26D347ED0();

      sub_26D3A0718();
      LOBYTE(v310[0]) = v301.n128_u8[10];
      v309 = 0;
      BYTE1(v304[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2A8, &qword_26D3A3088);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2C8, &qword_26D3A3090);
      sub_26D347DF0();
      sub_26D347F24();
      sub_26D3A0718();
      v297[1] = v292[1];
      *v298 = v293[0];
      *&v298[16] = v293[1];
      v294 = v289;
      v295 = v290;
      v296 = v291;
      v297[0] = v292[0];
      v312.n128_u8[0] = 1;
      v298[18] = 1;
LABEL_90:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB250, &qword_26D3A3068);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB298, &qword_26D3A3080);
      sub_26D347AC4();
      sub_26D347D64();
      sub_26D3A0718();
      v199 = v304[0];
      v152 = v283;
      *(v283 + 64) = v303[1];
      *(v152 + 80) = v199;
      v153 = *(v304 + 15);
      goto LABEL_64;
    }

    v194 = sub_26D3A1518();

    if (v194)
    {

      goto LABEL_89;
    }

    v200 = sub_26D3A0F98();
    v202 = v201;
    if (v200 == sub_26D3A0F98() && v202 == v203)
    {

LABEL_96:
      type metadata accessor for TextFormattingState(0);
      sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
      v205 = sub_26D3A02D8();
      v207 = v206;
      v208 = swift_getKeyPath();
      v294.n128_u64[0] = v205;
      v294.n128_u64[1] = v207;
      v295.n128_u64[0] = v208;
      v295.n128_u16[4] = 0;
      v295.n128_u8[10] = 1;
      sub_26D347E7C();
      sub_26D347ED0();

      sub_26D3A0718();
      LOBYTE(v310[0]) = v301.n128_u8[10];
      v309 = 0;
      BYTE1(v304[1]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2A8, &qword_26D3A3088);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2C8, &qword_26D3A3090);
      sub_26D347DF0();
      sub_26D347F24();
      sub_26D3A0718();
      v297[1] = v292[1];
      *v298 = v293[0];
      *&v298[16] = v293[1];
      v294 = v289;
      v295 = v290;
      v296 = v291;
      v297[0] = v292[0];
      v312.n128_u8[0] = 1;
      v298[18] = 1;
      goto LABEL_90;
    }

    v204 = sub_26D3A1518();

    if (v204)
    {

      goto LABEL_96;
    }

    v209 = sub_26D3A0F98();
    v211 = v210;
    if (v209 == sub_26D3A0F98() && v211 == v212)
    {
    }

    else
    {
      v213 = sub_26D3A1518();

      if ((v213 & 1) == 0)
      {
        v221 = sub_26D3A0F98();
        v223 = v222;
        if (v221 == sub_26D3A0F98() && v223 == v224)
        {
        }

        else
        {
          v225 = sub_26D3A1518();

          if ((v225 & 1) == 0)
          {
            v237 = sub_26D3A0F98();
            v239 = v238;
            if (v237 == sub_26D3A0F98() && v239 == v240)
            {
            }

            else
            {
              v241 = sub_26D3A1518();

              if ((v241 & 1) == 0)
              {
                objc_opt_self();
                v253 = swift_dynamicCastObjCClass();
                if (v253)
                {
                  v254 = v253;
                  type metadata accessor for TextFormattingState(0);
                  sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
                  v255 = sub_26D3A02D8();
                  v257 = v256;
                  v258 = swift_getKeyPath();
                  v259 = swift_getKeyPath();
                  v309 = 0;
                  v308 = 0;
                  v289.n128_u8[0] = 0;
                  v294.n128_u64[0] = v254;
                  v294.n128_u64[1] = v255;
                  v295.n128_u64[0] = v257;
                  v295.n128_u64[1] = v258;
                  v296.n128_u16[0] = 0;
                  v296.n128_u64[1] = v259;
                  LOWORD(v297[0]) = 0;
                }

                else
                {

                  v289.n128_u8[0] = 1;
                  BYTE1(v297[0]) = 1;
                }

                sub_26D3472A0();
                sub_26D3A0718();
                v310[0] = v300;
                v310[1] = v301;
                v310[2] = v302;
                v311 = v303[0];
                v312 = v300;
                v313 = v301;
                v314 = v302;
                *v315 = v303[0];
                v309 = 1;
                LOBYTE(v304[1]) = 1;
                sub_26D34856C(&v312, &v294, &qword_2804FB188, &qword_26D3A3030);
                v31 = &qword_2804FB190;
                v32 = &qword_26D3A3038;
                sub_26D34856C(v310, &v294, &qword_2804FB190, &qword_26D3A3038);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB190, &qword_26D3A3038);
                sub_26D3472F4();
                sub_26D347348();
                sub_26D3A0718();
                v260 = v297[1];
                v261 = *v298;
                v303[1] = v297[1];
                v304[0] = *v298;
                v262 = v298[16];
                LOBYTE(v304[1]) = v298[16];
                v263 = v295;
                v300 = v294;
                v301 = v295;
                v265 = v296;
                v264 = v297[0];
                v302 = v296;
                v303[0] = v297[0];
                v266 = v287;
                *v287 = v294;
                v266[1] = v263;
                v266[4] = v260;
                v266[5] = v261;
                v266[2] = v265;
                v266[3] = v264;
                v266[6].n128_u8[0] = v262;
                swift_storeEnumTagMultiPayload();
                sub_26D34856C(&v300, &v289, &qword_2804FB1A8, &qword_26D3A3040);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
                sub_26D3473D4();
                sub_26D347FA8();
                sub_26D3A0718();
                sub_26D3481A4(&v312, &qword_2804FB188, &qword_26D3A3030);
                sub_26D3481A4(&v300, &qword_2804FB1A8, &qword_26D3A3040);
                v33 = v310;
                goto LABEL_10;
              }
            }

            type metadata accessor for TextFormattingState(0);
            sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
            v242 = sub_26D3A02D8();
            v244 = v243;
            v245 = swift_getKeyPath();
            v246 = swift_getKeyPath();
            v247 = swift_getKeyPath();
            v248 = swift_getKeyPath();
            v289.n128_u16[0] = 1;
            v289.n128_u64[1] = v242;
            v290.n128_u64[0] = v244;
            v290.n128_u64[1] = v245;
            v291.n128_u16[0] = 0;
            v291.n128_u64[1] = v246;
            LOBYTE(v292[0]) = 0;
            *(&v292[0] + 1) = v247;
            LOBYTE(v292[1]) = 0;
            *(&v292[1] + 1) = v248;
            LOBYTE(v293[0]) = 0;
            *(&v293[0] + 1) = 0x4062C00000000000;
            v296 = v291;
            v297[0] = v292[0];
            v297[1] = v292[1];
            *v298 = v293[0];
            v294 = v289;
            v295 = v290;
            v312.n128_u8[0] = 0;
            v298[16] = 0;
            sub_26D348034(&v289, &v300);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB190, &qword_26D3A3038);
            sub_26D3472F4();
            sub_26D347348();
            sub_26D3A0718();
            v249 = v304[0];
            v250 = v287;
            v287[4] = v303[1];
            v250[5] = v249;
            v250[6].n128_u8[0] = v304[1];
            v251 = v301;
            *v250 = v300;
            v250[1] = v251;
            v252 = v303[0];
            v250[2] = v302;
            v250[3] = v252;
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
            sub_26D3473D4();
            sub_26D347FA8();
            sub_26D3A0718();
            return sub_26D348090(&v289);
          }
        }

        type metadata accessor for TextFormattingState(0);
        sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
        v226 = sub_26D3A02D8();
        v228 = v227;
        v229 = swift_getKeyPath();
        v230 = swift_getKeyPath();
        v231 = swift_getKeyPath();
        v232 = swift_getKeyPath();
        v312.n128_u16[0] = 0;
        v312.n128_u64[1] = v226;
        v313.n128_u64[0] = v228;
        v313.n128_u64[1] = v229;
        v314.n128_u16[0] = 0;
        v314.n128_u64[1] = v230;
        v315[0] = 0;
        *&v315[8] = v231;
        v315[16] = 0;
        *&v315[24] = v232;
        LOBYTE(v316) = 0;
        *(&v316 + 1) = 0x4062C00000000000;
        v302 = v314;
        v303[0] = *v315;
        v303[1] = *&v315[16];
        v304[0] = v316;
        v300 = v312;
        v301 = v313;
        v308 = 1;
        LOBYTE(v304[1]) = 1;
        sub_26D348034(&v312, &v294);
        sub_26D3472F4();
        sub_26D3A0718();
        v303[1] = v297[1];
        v304[0] = *v298;
        LOBYTE(v304[1]) = v298[16];
        v300 = v294;
        v301 = v295;
        v302 = v296;
        v303[0] = v297[0];
        goto LABEL_109;
      }
    }

    type metadata accessor for TextFormattingState(0);
    sub_26D33E2B0(&qword_2804FADC0, type metadata accessor for TextFormattingState, &unk_26D3A3700);
    v214 = sub_26D3A02D8();
    v216 = v215;
    v217 = swift_getKeyPath();
    v218 = swift_getKeyPath();
    v219 = swift_getKeyPath();
    v220 = swift_getKeyPath();
    v312.n128_u16[0] = 257;
    v312.n128_u64[1] = v214;
    v313.n128_u64[0] = v216;
    v313.n128_u64[1] = v217;
    v314.n128_u16[0] = 0;
    v314.n128_u64[1] = v218;
    v315[0] = 0;
    *&v315[8] = v219;
    v315[16] = 0;
    *&v315[24] = v220;
    LOBYTE(v316) = 0;
    *(&v316 + 1) = 0x4062C00000000000;
    v302 = v314;
    v303[0] = *v315;
    v303[1] = *&v315[16];
    v304[0] = v316;
    v300 = v312;
    v301 = v313;
    v308 = 0;
    LOBYTE(v304[1]) = 0;
    sub_26D348034(&v312, &v294);
    sub_26D3472F4();
    sub_26D3A0718();
    v303[1] = v297[1];
    v304[0] = *v298;
    LOBYTE(v304[1]) = v298[16];
    v300 = v294;
    v301 = v295;
    v302 = v296;
    v303[0] = v297[0];
LABEL_109:
    v309 = 1;
    BYTE1(v304[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2A8, &qword_26D3A3088);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2C8, &qword_26D3A3090);
    sub_26D347DF0();
    sub_26D347F24();
    sub_26D3A0718();
    v297[1] = v292[1];
    *v298 = v293[0];
    *&v298[16] = v293[1];
    v294 = v289;
    v295 = v290;
    v296 = v291;
    v297[0] = v292[0];
    LOBYTE(v310[0]) = 1;
    v298[18] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB250, &qword_26D3A3068);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB298, &qword_26D3A3080);
    sub_26D347AC4();
    sub_26D347D64();
    sub_26D3A0718();
    v233 = v304[0];
    v234 = v283;
    *(v283 + 64) = v303[1];
    *(v234 + 80) = v233;
    *(v234 + 95) = *(v304 + 15);
    v235 = v301;
    *v234 = v300;
    *(v234 + 16) = v235;
    v236 = v303[0];
    *(v234 + 32) = v302;
    *(v234 + 48) = v236;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
    sub_26D347460();
    sub_26D347A38();
    v30 = v285;
    sub_26D3A0718();
    v31 = &qword_2804FB178;
    v32 = &qword_26D3A3028;
    sub_26D34856C(v30, v287, &qword_2804FB178, &qword_26D3A3028);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
    sub_26D3473D4();
    sub_26D347FA8();
    sub_26D3A0718();
    sub_26D348090(&v312);
    goto LABEL_9;
  }

LABEL_8:
  sub_26D37CDDC(&v312);
  v303[1] = *&v315[16];
  v304[0] = v316;
  *&v304[1] = v317;
  v300 = v312;
  v301 = v313;
  v302 = v314;
  v303[0] = *v315;
  v309 = 0;
  BYTE8(v304[1]) = 0;
  sub_26D3482B4(&v312, &v294);
  sub_26D347604();
  sub_26D347658();
  sub_26D3A0718();
  v297[1] = v292[1];
  *v298 = v293[0];
  *&v298[9] = *(v293 + 9);
  v294 = v289;
  v295 = v290;
  v296 = v291;
  v297[0] = v292[0];
  LOBYTE(v310[0]) = 0;
  v299 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1D8, &qword_26D3A3050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1F8, &qword_26D3A3058);
  sub_26D347578();
  sub_26D3476AC();
  sub_26D3A0718();
  v26 = v304[0];
  v15[4] = v303[1];
  v15[5] = v26;
  *(v15 + 90) = *(v304 + 10);
  v27 = v301;
  *v15 = v300;
  v15[1] = v27;
  v28 = v303[0];
  v15[2] = v302;
  v15[3] = v28;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1C8, &qword_26D3A3048);
  sub_26D3474EC();
  sub_26D3477E0();
  v29 = v280;
  sub_26D3A0718();
  sub_26D34856C(v29, v283, &qword_2804FB170, &qword_26D3A3020);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB240, &qword_26D3A3060);
  sub_26D347460();
  sub_26D347A38();
  v30 = v285;
  sub_26D3A0718();
  sub_26D3481A4(v29, &qword_2804FB170, &qword_26D3A3020);
  v31 = &qword_2804FB178;
  v32 = &qword_26D3A3028;
  sub_26D34856C(v30, v287, &qword_2804FB178, &qword_26D3A3028);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB1A8, &qword_26D3A3040);
  sub_26D3473D4();
  sub_26D347FA8();
  sub_26D3A0718();
  sub_26D348310(&v312);
LABEL_9:
  v33 = v30;
LABEL_10:
  v34 = v31;
  v35 = v32;
  return sub_26D3481A4(v33, v34, v35);
}

uint64_t sub_26D33C0B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_26D3A0F98(), sub_26D3A1568(), sub_26D3A0FD8(), v3 = sub_26D3A1588(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_26D3A0F98();
      v9 = v8;
      if (v7 == sub_26D3A0F98() && v9 == v10)
      {
        break;
      }

      v12 = sub_26D3A1518();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_26D33C270()
{
  v1 = *v0;
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](qword_26D3A3130[v1]);
  return sub_26D3A1588();
}

uint64_t sub_26D33C2F8(uint64_t a1)
{
  v2 = *v1;
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](qword_26D3A3130[v2]);
  return sub_26D3A1588();
}

uint64_t sub_26D33C344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D344BA8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_26D33C3A4(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_26D33CABC(a1[1], a2[1], &qword_2804FADB8, 0x277D75BC0) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26D33C3F4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

__n128 sub_26D33C438@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  result = v7;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_26D33C4DC(__int128 *a1, uint64_t *a2)
{
  v3 = a1[3];
  v14[2] = a1[2];
  v14[3] = v3;
  v15 = *(a1 + 8);
  v4 = a1[1];
  v14[0] = *a1;
  v14[1] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  v13 = *(a1 + 8);
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  sub_26D33F5AC(v14, v8);

  return sub_26D39FF78();
}

uint64_t sub_26D33C594@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26D39FF68();

  *a2 = v4;
  return result;
}

uint64_t sub_26D33C614(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26D39FF78();
  return sub_26D34CEAC();
}

uint64_t sub_26D33C6B0(uint64_t a1)
{
  v2 = sub_26D3A0208();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26D3A0388();
}

uint64_t sub_26D33C778@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D3A04B8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26D33C7D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v31 = v9;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v32 = (v8 - 1) & v8;
LABEL_12:
      v13 = v10 | (v4 << 6);
      v14 = (*(v3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v3 + 56) + 8 * v13);

      v18 = sub_26D33F2EC(v15, v16);
      v20 = v19;

      if ((v20 & 1) == 0 || (v21 = *(*(v2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
      {
LABEL_29:

        return 0;
      }

      if (v22 && v21 != v17)
      {
        break;
      }

LABEL_19:

      v9 = v31;
      v8 = v32;
      if (!v32)
      {
        goto LABEL_7;
      }
    }

    v29 = v3;
    v30 = v2;

    v24 = 0;
    v25 = 0;
    while (v25 < *(v21 + 16))
    {
      if (v25 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      if (*(v21 + v24 + 32) != *(v17 + v24 + 32) || (v26 = *(v21 + v24 + 40), v27 = *(v17 + v24 + 40), , , v28 = sub_26D33CABC(v26, v27, &qword_2804FADB8, 0x277D75BC0), , result = , (v28 & 1) == 0))
      {

        goto LABEL_29;
      }

      ++v25;
      v24 += 16;
      if (v22 == v25)
      {

        v3 = v29;
        v2 = v30;
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_7:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return 1;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v32 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_26D33CA18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_26D3A1518() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_26D33CABC(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    v31 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_26D345E5C(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = sub_26D33E5F4(v14 - 4, v5, a3, a4);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = sub_26D33E5F4(v14 - 4, a2, a3, a4);
LABEL_26:
        v19 = v18;
        v20 = sub_26D3A1358();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v5 = a2 + 32;
    v22 = *(v31 + 16);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v7 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v21++;
      v25 = v26;
      v27 = *v5;
      v5 += 8;
      a2 = v25;
      v28 = v27;
      v20 = sub_26D3A1358();

      v30 = v24-- != 0;
      if (v20)
      {
        --v23;
        --v22;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v7 = sub_26D3A1488();
  }

  result = sub_26D3A1488();
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_26D33CD0C(uint64_t a1, char a2)
{
  v4 = sub_26D3A0508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = sub_26D3A1158();
    v9 = sub_26D3A0858();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_26D34BB44(0x666E6F4349554654, 0xEA00000000006769, &v13);
      _os_log_impl(&dword_26D333000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D6BE4E0](v11, -1, -1);
      MEMORY[0x26D6BE4E0](v10, -1, -1);
    }

    sub_26D3A04F8();
    swift_getAtKeyPath();
    sub_26D34684C(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

void *sub_26D33CED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26D3A0508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x100) == 0)
  {

    v8 = sub_26D3A1158();
    v9 = sub_26D3A0858();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_26D34BB44(0xD000000000000035, 0x800000026D3A7710, &v13);
      _os_log_impl(&dword_26D333000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D6BE4E0](v11, -1, -1);
      MEMORY[0x26D6BE4E0](v10, -1, -1);
    }

    sub_26D3A04F8();
    swift_getAtKeyPath();
    sub_26D3484F4(a1, a2, 0);
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return a1;
}

uint64_t sub_26D33D0B8(uint64_t a1, char a2)
{
  v4 = sub_26D3A0508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = sub_26D3A1158();
    v9 = sub_26D3A0858();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_26D34BB44(1819242306, 0xE400000000000000, &v13);
      _os_log_impl(&dword_26D333000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D6BE4E0](v11, -1, -1);
      MEMORY[0x26D6BE4E0](v10, -1, -1);
    }

    sub_26D3A04F8();
    swift_getAtKeyPath();
    sub_26D34684C(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v14;
  }

  return a1 & 1;
}

double sub_26D33D278(uint64_t a1, char a2)
{
  v4 = sub_26D3A0508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v9 = sub_26D3A1158();
  v10 = sub_26D3A0858();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = *&v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_26D34BB44(0x74616F6C464743, 0xE700000000000000, &v14);
    _os_log_impl(&dword_26D333000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x26D6BE4E0](v12, -1, -1);
    MEMORY[0x26D6BE4E0](v11, -1, -1);
  }

  sub_26D3A04F8();
  swift_getAtKeyPath();
  sub_26D34684C(a1, 0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_26D33D444@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26D3A0508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB2D8, &qword_26D3A5B20);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_26D34856C(v2, &v17 - v9, &qword_2804FB2D8, &qword_26D3A5B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26D3A0208();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_26D3A1158();
    v14 = sub_26D3A0858();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_26D34BB44(0x694474756F79614CLL, 0xEF6E6F6974636572, &v18);
      _os_log_impl(&dword_26D333000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D6BE4E0](v16, -1, -1);
      MEMORY[0x26D6BE4E0](v15, -1, -1);
    }

    sub_26D3A04F8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26D33D6D0(uint64_t a1, char a2)
{
  v4 = sub_26D3A0508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = sub_26D3A1158();
    v9 = sub_26D3A0858();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_26D34BB44(0x6C616E6F6974704FLL, 0xEE003E6C6F6F423CLL, &v13);
      _os_log_impl(&dword_26D333000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D6BE4E0](v11, -1, -1);
      MEMORY[0x26D6BE4E0](v10, -1, -1);
    }

    sub_26D3A04F8();
    swift_getAtKeyPath();
    sub_26D34684C(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_26D33D8A4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26D3A0508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB310, &qword_26D3A3118);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_26D34856C(v2, &v17 - v9, &qword_2804FB310, &qword_26D3A3118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26D3A0018();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_26D3A1158();
    v14 = sub_26D3A0858();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_26D34BB44(0x686353726F6C6F43, 0xEB00000000656D65, &v18);
      _os_log_impl(&dword_26D333000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D6BE4E0](v16, -1, -1);
      MEMORY[0x26D6BE4E0](v15, -1, -1);
    }

    sub_26D3A04F8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26D33DB2C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_26D3A0508();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB318, &unk_26D3A3120);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_26D34856C(v2, &v17 - v9, &qword_2804FB318, &unk_26D3A3120);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26D3A01E8();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_26D3A1158();
    v14 = sub_26D3A0858();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_26D34BB44(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&dword_26D333000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x26D6BE4E0](v16, -1, -1);
      MEMORY[0x26D6BE4E0](v15, -1, -1);
    }

    sub_26D3A04F8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_26D33DDB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D3A0F98();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_26D33DDE4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_26D33DDF4()
{
  v1 = *v0;
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](v1);
  return sub_26D3A1588();
}

uint64_t sub_26D33DE68(uint64_t a1)
{
  v2 = *v1;
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](v2);
  return sub_26D3A1588();
}

uint64_t sub_26D33DEBC(uint64_t a1, id *a2)
{
  result = sub_26D3A0F78();
  *a2 = 0;
  return result;
}

uint64_t sub_26D33DF38(uint64_t a1, id *a2)
{
  v3 = sub_26D3A0F88();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26D33DFBC@<X0>(uint64_t *a2@<X8>)
{
  sub_26D3A0F98();
  v3 = sub_26D3A0F68();

  *a2 = v3;
  return result;
}

uint64_t sub_26D33E004()
{
  v0 = sub_26D3A0F98();
  v1 = MEMORY[0x26D6BD830](v0);

  return v1;
}

uint64_t sub_26D33E044(uint64_t a1)
{
  sub_26D3A0F98();
  sub_26D3A0FD8();
}

uint64_t sub_26D33E09C(uint64_t a1)
{
  sub_26D3A0F98();
  sub_26D3A1568();
  sub_26D3A0FD8();
  v1 = sub_26D3A1588();

  return v1;
}

uint64_t sub_26D33E124(void *a1, uint64_t *a2)
{
  v2 = sub_26D3A0F98();
  v4 = v3;
  if (v2 == sub_26D3A0F98() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26D3A1518();
  }

  return v7 & 1;
}

uint64_t sub_26D33E1AC(uint64_t a1)
{
  v2 = sub_26D33E2B0(&qword_2804FADD0, type metadata accessor for ComponentKey, &unk_26D3A2570);
  v3 = sub_26D33E2B0(&qword_2804FADD8, type metadata accessor for ComponentKey, &unk_26D3A2510);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26D33E2B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26D33E3F0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_26D3A0F68();

  *a2 = v3;
  return result;
}

uint64_t sub_26D33E438(uint64_t a1)
{
  v2 = sub_26D33E2B0(&qword_2804FB510, type metadata accessor for Key, &unk_26D3A27CC);
  v3 = sub_26D33E2B0(&qword_2804FADB0, type metadata accessor for Key, &unk_26D3A276C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26D33E5F4(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  sub_26D345E5C(0, a3, a4);
  if (a2 >> 62)
  {
    v6 = sub_26D3A14A8();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return v6;
    }

LABEL_10:
    sub_26D3A13C8();
    v8 = 0xD000000000000046;
    v7 = 0x800000026D3A7660;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v6;
  }

  sub_26D3A13C8();
  v7 = 0x800000026D3A7610;
  v8 = 0xD000000000000043;
LABEL_11:
  MEMORY[0x26D6BD800](v8, v7);
  v10 = sub_26D3A1598();
  MEMORY[0x26D6BD800](v10);

  MEMORY[0x26D6BD800](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v11 = sub_26D3A1598();
  MEMORY[0x26D6BD800](v11);

  result = sub_26D3A1478();
  __break(1u);
  return result;
}

char *sub_26D33E814(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE50, &qword_26D3A2950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26D33E920(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE68, &qword_26D3A2968);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE70, &qword_26D3A2970);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D33EA68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE90, &qword_26D3A2990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_26D33EB6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE60, &qword_26D3A2960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D33EC78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE48, &qword_26D3A2948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26D33ED7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB300, &qword_26D3A3108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_26D33EE70(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAEB0, &qword_26D3A29B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_26D33EEF4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE98, &qword_26D3A2998);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void sub_26D33EF84(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

  v37 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *a3;
  v9 = sub_26D33F364(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_26D33FFBC(v14, a2 & 1);
    v9 = sub_26D33F364(v7);
    if ((v15 & 1) != (v16 & 1))
    {
LABEL_5:
      sub_26D3A1548();
      __break(1u);
LABEL_6:

      return;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v19 = v9;
  sub_26D33F8D8();
  v9 = v19;
  if (v15)
  {
LABEL_9:
    v17 = swift_allocError();
    swift_willThrow();

    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAEA0, &qword_26D3A29A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_27;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v20[6] + v9) = v7;
  *(v20[7] + 16 * v9) = v37;
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    sub_26D3A13C8();
    MEMORY[0x26D6BD800](0xD00000000000001BLL, 0x800000026D3A76F0);
    sub_26D3A1458();
    MEMORY[0x26D6BD800](39, 0xE100000000000000);
    sub_26D3A1468();
    __break(1u);
    return;
  }

  v20[2] = v22;
  if (v4 != 1)
  {
    v23 = (a1 + 64);
    v24 = 1;
    while (v24 < *(a1 + 16))
    {
      v38 = *v23;
      v25 = *(v23 - 8);
      v26 = *a3;
      v27 = sub_26D33F364(v25);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v13 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v13)
      {
        goto LABEL_24;
      }

      v32 = v28;
      if (v26[3] < v31)
      {
        sub_26D33FFBC(v31, 1);
        v27 = sub_26D33F364(v25);
        if ((v32 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v32)
      {
        goto LABEL_9;
      }

      v34 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v34[6] + v27) = v25;
      *(v34[7] + 16 * v27) = v38;
      v35 = v34[2];
      v13 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v13)
      {
        goto LABEL_25;
      }

      ++v24;
      v34[2] = v36;
      v23 = (v23 + 24);
      if (v4 == v24)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_26;
  }

LABEL_22:
}

unint64_t sub_26D33F2EC(uint64_t a1, uint64_t a2)
{
  sub_26D3A1568();
  sub_26D3A0FD8();
  v4 = sub_26D3A1588();

  return sub_26D33F470(a1, a2, v4);
}

unint64_t sub_26D33F364(uint64_t a1)
{
  v1 = a1;
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](qword_26D3A3130[v1]);
  v2 = sub_26D3A1588();

  return sub_26D33F5E4(v1, v2);
}

unint64_t sub_26D33F3DC(uint64_t a1)
{
  sub_26D3A0F98();
  sub_26D3A1568();
  sub_26D3A0FD8();
  v2 = sub_26D3A1588();

  return sub_26D33F664(a1, v2);
}

unint64_t sub_26D33F470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26D3A1518())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26D33F558()
{
  result = qword_2804FADC8;
  if (!qword_2804FADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804FADC8);
  }

  return result;
}

unint64_t sub_26D33F5E4(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_26D3A3130[*(*(v2 + 48) + result)] == qword_26D3A3130[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_26D33F664(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26D3A0F98();
      v8 = v7;
      if (v6 == sub_26D3A0F98() && v8 == v9)
      {
        break;
      }

      v11 = sub_26D3A1518();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
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

void *sub_26D33F768()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE40, &qword_26D3A2940);
  v2 = *v0;
  v3 = sub_26D3A14B8();
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

void *sub_26D33F8D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE78, &qword_26D3A2978);
  v2 = *v0;
  v3 = sub_26D3A14B8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

id sub_26D33FA28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAF00, &unk_26D3A3870);
  v2 = *v0;
  v3 = sub_26D3A14B8();
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

        result = v20;
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

id sub_26D33FB94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB308, &qword_26D3A3110);
  v2 = *v0;
  v3 = sub_26D3A14B8();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_26D348500(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_26D34855C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

uint64_t sub_26D33FD14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE40, &qword_26D3A2940);
  v34 = v4;
  result = sub_26D3A14C8();
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

      sub_26D3A1568();
      sub_26D3A0FD8();
      result = sub_26D3A1588();
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

uint64_t sub_26D33FFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE78, &qword_26D3A2978);
  result = sub_26D3A14C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      v23 = (v21 + 16 * v20);
      v25 = *v23;
      v24 = v23[1];
      sub_26D3A1568();
      MEMORY[0x26D6BDD90](qword_26D3A3130[v22]);
      result = sub_26D3A1588();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v25;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26D340250(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAF00, &unk_26D3A3870);
  v35 = v4;
  result = sub_26D3A14C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26D3A1568();
      sub_26D3A0FD8();
      result = sub_26D3A1588();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26D3404F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB308, &qword_26D3A3110);
  v35 = v4;
  result = sub_26D3A14C8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_26D34855C(v22, v36);
      }

      else
      {
        sub_26D348500(v22, v36);
        v23 = v21;
      }

      sub_26D3A0F98();
      sub_26D3A1568();
      sub_26D3A0FD8();
      v24 = sub_26D3A1588();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_26D34855C(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_26D3407C4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26D34489C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26D3A1508();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for ComponentSize(0);
      v7 = sub_26D3A1078();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_26D3413B8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_26D3408FC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26D3448B0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26D341204(v5);
  *a1 = v2;
  return result;
}

void sub_26D34097C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_26D345E5C(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE80, &qword_26D3A2980);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_26D340A78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB300, &qword_26D3A3108);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_26D340B38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D340BC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D340B58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D340DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D340B78(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D340EDC(a1, a2, a3, *v3, &qword_2804FAEA8, &qword_26D3A29A8);
  *v3 = result;
  return result;
}

char *sub_26D340BA8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D340FF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26D340BC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE48, &qword_26D3A2948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26D340CCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAEB0, &qword_26D3A29B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26D340DD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE60, &qword_26D3A2960);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D340EDC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 24 * v10);
  }

  return v12;
}

char *sub_26D340FF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE50, &qword_26D3A2950);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26D3410FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FB300, &qword_26D3A3108);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_26D341204(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26D3A1508();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE88, &qword_26D3A2988);
        v5 = sub_26D3A1078();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26D341904(v7, v8, a1, v4);
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
    return sub_26D34130C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26D34130C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 24 * a3 + 16);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 8);
      if (v7 == v10)
      {
        if (*(v9 + 8) >= *(v9 - 16))
        {
          goto LABEL_4;
        }
      }

      else if (v7)
      {
        if (!v10 || v10 >= v7)
        {
LABEL_4:
          ++a3;
          v5 += 24;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v12 = *v9;
      v13 = *(v9 + 8);
      *v9 = *(v9 - 24);
      *(v9 + 16) = *(v9 - 8);
      *(v9 - 16) = v13;
      *(v9 - 8) = v7;
      *(v9 - 24) = v12;
      v9 -= 24;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26D3413B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26D342460(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_26D341F58((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26D33EA68(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_26D33EA68((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_26D341F58((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_26D341904(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v94 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_117:
    v6 = *v94;
    if (!*v94)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_119:
      v89 = *(v8 + 2);
      if (v89 >= 2)
      {
        while (*a3)
        {
          v90 = *&v8[16 * v89];
          v91 = *&v8[16 * v89 + 24];
          sub_26D34214C((*a3 + 24 * v90), (*a3 + 24 * *&v8[16 * v89 + 16]), *a3 + 24 * v91, v6);
          if (v4)
          {
          }

          if (v91 < v90)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_26D342460(v8);
          }

          if (v89 - 2 >= *(v8 + 2))
          {
            goto LABEL_143;
          }

          v92 = &v8[16 * v89];
          *v92 = v90;
          *(v92 + 1) = v91;
          result = sub_26D3423D4(v89 - 1);
          v89 = *(v8 + 2);
          if (v89 <= 1)
          {
          }
        }

        goto LABEL_153;
      }
    }

LABEL_149:
    result = sub_26D342460(v8);
    v8 = result;
    goto LABEL_119;
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *a3 + 24 * v7;
      v11 = *(v10 + 16);
      v12 = *a3 + 24 * v9;
      v13 = *(v12 + 16);
      if (v11 == v13)
      {
        v14 = *(v10 + 8) < *(v12 + 8);
      }

      else
      {
        if (v13)
        {
          v15 = v13 < v11;
        }

        else
        {
          v15 = 0;
        }

        v14 = v15;
        if (!v11)
        {
          v14 = 1;
        }
      }

      v7 = v9 + 2;
      if (v9 + 2 < v5)
      {
        v16 = *a3 + 24 * v9 + 64;
        v17 = v16;
        while (1)
        {
          v18 = v11;
          v19 = *v17;
          v17 += 3;
          v11 = v19;
          if (v19 == v18)
          {
            break;
          }

          if (v11)
          {
            if (v18)
            {
              v20 = v18 < v11;
LABEL_24:
              v21 = v20;
              if (v14 != v21)
              {
                goto LABEL_32;
              }

              goto LABEL_18;
            }

            if (v14)
            {
              goto LABEL_33;
            }
          }

          else if ((v14 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_18:
          ++v7;
          v16 = v17;
          if (v5 == v7)
          {
            v7 = v5;
            goto LABEL_32;
          }
        }

        v20 = *(v16 - 8) < *(v16 - 32);
        goto LABEL_24;
      }

LABEL_32:
      if (v14)
      {
LABEL_33:
        if (v7 < v9)
        {
          goto LABEL_148;
        }

        if (v9 < v7)
        {
          v22 = 0;
          v23 = 24 * v7;
          v24 = 24 * v9;
          v25 = v9;
          do
          {
            if (v25 != v7 + v22 - 1)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_152;
              }

              v27 = (v26 + v24);
              v28 = v26 + v23;
              v29 = *v27;
              v30 = *(v27 + 8);
              v31 = *(v28 - 24);
              *(v27 + 2) = *(v28 - 8);
              *v27 = v31;
              *(v28 - 24) = v29;
              *(v28 - 16) = v30;
            }

            ++v25;
            --v22;
            v23 -= 24;
            v24 += 24;
          }

          while (v25 < v7 + v22);
          v5 = a3[1];
        }
      }
    }

LABEL_41:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_145;
      }

      if (v7 - v9 < v6)
      {
        break;
      }
    }

LABEL_66:
    if (v7 < v9)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26D33EA68(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_26D33EA68((v43 > 1), v44 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *v94;
    if (!*v94)
    {
      goto LABEL_154;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_86:
          if (v52)
          {
            goto LABEL_133;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_136;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_140;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_100:
        if (v70)
        {
          goto LABEL_135;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_138;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_107:
        v6 = v48 - 1;
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
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
          goto LABEL_147;
        }

        if (!*a3)
        {
          goto LABEL_151;
        }

        v86 = *&v8[16 * v6 + 32];
        v87 = *&v8[16 * v48 + 40];
        sub_26D34214C((*a3 + 24 * v86), (*a3 + 24 * *&v8[16 * v48 + 32]), *a3 + 24 * v87, v47);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26D342460(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_130;
        }

        v88 = &v8[16 * v6];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_26D3423D4(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_131;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_132;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_134;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_137;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_141;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_117;
    }
  }

  if (__OFADD__(v9, v6))
  {
    goto LABEL_146;
  }

  if (v9 + v6 < v5)
  {
    v5 = v9 + v6;
  }

  if (v5 < v9)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v7 == v5)
  {
    goto LABEL_66;
  }

  v32 = *a3;
  v33 = *a3 + 24 * v7;
  v34 = v9 - v7;
LABEL_51:
  v35 = *(v32 + 24 * v7 + 16);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *(v37 - 8);
    if (v35 != v38)
    {
      if (!v35)
      {
        goto LABEL_61;
      }

      if (v38 && v38 < v35)
      {
        goto LABEL_61;
      }

LABEL_50:
      ++v7;
      v33 += 24;
      --v34;
      if (v7 == v5)
      {
        v7 = v5;
        goto LABEL_66;
      }

      goto LABEL_51;
    }

    if (*(v37 + 8) >= *(v37 - 16))
    {
      goto LABEL_50;
    }

LABEL_61:
    if (!v32)
    {
      break;
    }

    v40 = *v37;
    v41 = *(v37 + 8);
    *v37 = *(v37 - 24);
    *(v37 + 16) = *(v37 - 8);
    *(v37 - 16) = v41;
    *(v37 - 8) = v35;
    *(v37 - 24) = v40;
    v37 -= 24;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_26D341F58(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_26D34214C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_45;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v6 + 2);
      v17 = *(v4 + 2);
      if (v16 == v17)
      {
        if (*(v6 + 1) >= *(v4 + 1))
        {
          goto LABEL_19;
        }
      }

      else if (v16)
      {
        if (!v17 || v17 >= v16)
        {
LABEL_19:
          v13 = v4;
          v14 = v7 == v4;
          v4 += 24;
          if (v14)
          {
            goto LABEL_9;
          }

LABEL_8:
          v15 = *v13;
          *(v7 + 2) = *(v13 + 2);
          *v7 = v15;
          goto LABEL_9;
        }
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_27:
    v5 -= 24;
    do
    {
      v19 = *(v12 - 1);
      v20 = *(v6 - 1);
      if (v19 == v20)
      {
        if (*(v12 - 2) < *(v6 - 2))
        {
          goto LABEL_39;
        }
      }

      else if (!v19 || (v20 ? (v21 = v20 < v19) : (v21 = 0), v21))
      {
LABEL_39:
        v24 = v6 - 24;
        if ((v5 + 24) != v6)
        {
          v25 = *v24;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v25;
        }

        if (v12 <= v4 || (v6 -= 24, v24 <= v7))
        {
          v6 = v24;
          goto LABEL_45;
        }

        goto LABEL_27;
      }

      v22 = v12 - 24;
      if ((v5 + 24) != v12)
      {
        v23 = *v22;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v23;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v22 > v4);
    v12 = v22;
  }

LABEL_45:
  v26 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v27 = (v26 >> 2) + (v26 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v27])
  {
    memmove(v6, v4, 24 * v27);
  }

  return 1;
}

uint64_t sub_26D3423D4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26D342460(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26D342474(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](a2);
  v6 = sub_26D3A1588();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_26D3432BC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26D34256C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26D3A1568();
  sub_26D3A0FD8();
  v8 = sub_26D3A1588();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_26D3A1518() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_26D343418(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26D3426BC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_26D3A0F98();
  sub_26D3A1568();
  sub_26D3A0FD8();
  v7 = sub_26D3A1588();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_26D3A0F98();
      v13 = v12;
      if (v11 == sub_26D3A0F98() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_26D3A1518();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_26D343598(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_26D342868(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_26D3A1558();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_26D343780(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26D34295C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FAEC0, &qword_26D3A29B8);
  result = sub_26D3A13A8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_26D3A1568();
      MEMORY[0x26D6BDD90](v17);
      result = sub_26D3A1588();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26D342BAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE58, &qword_26D3A2958);
  result = sub_26D3A13A8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_26D3A1568();
      sub_26D3A0FD8();
      result = sub_26D3A1588();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26D342E0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAF08, &qword_26D3A29D0);
  result = sub_26D3A13A8();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_26D3A0F98();
      sub_26D3A1568();
      sub_26D3A0FD8();
      v18 = sub_26D3A1588();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26D343088(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAEF8, &unk_26D3A29C0);
  result = sub_26D3A13A8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_26D3A1558();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_26D3432BC(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26D34295C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_26D3438AC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_26D343DD8(v5 + 1);
  }

  v8 = *v3;
  sub_26D3A1568();
  MEMORY[0x26D6BDD90](result);
  v9 = sub_26D3A1588();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for ComponentSize(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_26D3A1538();
  __break(1u);
}

uint64_t sub_26D343418(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26D342BAC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26D3439EC();
      goto LABEL_16;
    }

    sub_26D343FF8(v8 + 1);
  }

  v10 = *v4;
  sub_26D3A1568();
  sub_26D3A0FD8();
  result = sub_26D3A1588();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26D3A1518();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26D3A1538();
  __break(1u);
  return result;
}

uint64_t sub_26D343598(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_26D342E0C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_26D343B48();
      goto LABEL_16;
    }

    sub_26D344230(v7 + 1);
  }

  v9 = *v3;
  sub_26D3A0F98();
  sub_26D3A1568();
  sub_26D3A0FD8();
  v10 = sub_26D3A1588();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ComponentKey(0);
    do
    {
      v13 = sub_26D3A0F98();
      v15 = v14;
      if (v13 == sub_26D3A0F98() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_26D3A1518();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_26D3A1538();
  __break(1u);
  return result;
}

unint64_t sub_26D343780(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_26D343088(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_26D343C98();
      result = v7;
      goto LABEL_12;
    }

    sub_26D344484(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_26D3A1558();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26D3A1538();
  __break(1u);
  return result;
}

void *sub_26D3438AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804FAEC0, &qword_26D3A29B8);
  v2 = *v0;
  v3 = sub_26D3A1398();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

void *sub_26D3439EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAE58, &qword_26D3A2958);
  v2 = *v0;
  v3 = sub_26D3A1398();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

  return result;
}

id sub_26D343B48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804FAF08, &qword_26D3A29D0);
  v2 = *v0;
  v3 = sub_26D3A1398();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        result = v18;
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

  return result;
}
void sub_1C4C94B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4404078();
  switch(v7)
  {
    case 1:
      v8 = 1;
      goto LABEL_12;
    case 2:
      v8 = 8;
      goto LABEL_12;
    case 3:
      v8 = 9;
      goto LABEL_12;
    case 4:
      MEMORY[0x1C69417F0](10);
      sub_1C4402120();
      sub_1C4F01298();
      sub_1C4F02B38();
      return;
    case 5:
      MEMORY[0x1C69417F0](11);
      sub_1C4402120();
      sub_1C4F01298();
      if ((a4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = 0;
      }

      MEMORY[0x1C6941830](v11);
      return;
    case 6:
      MEMORY[0x1C69417F0](12);
      sub_1C4402120();
      sub_1C4F01298();
      v10 = a4;
      goto LABEL_38;
    case 7:
      MEMORY[0x1C69417F0](13);
      sub_1C4402120();
      sub_1C49EFF50();
      sub_1C4426A5C();
      goto LABEL_13;
    case 8:
      MEMORY[0x1C69417F0](14);
      sub_1C4402120();

      sub_1C49EFD8C();
      return;
    case 9:
      v9 = a4 | a3;
      if (a4 | a3 | v4)
      {
        if (v4 != 1 || v9)
        {
          if (v4 != 2 || v9)
          {
            if (v4 != 3 || v9)
            {
              if (v4 != 4 || v9)
              {
                if (v4 != 5 || v9)
                {
                  v10 = 15;
                }

                else
                {
                  v10 = 7;
                }
              }

              else
              {
                v10 = 6;
              }
            }

            else
            {
              v10 = 5;
            }
          }

          else
          {
            v10 = 4;
          }
        }

        else
        {
          v10 = 3;
        }
      }

      else
      {
        v10 = 2;
      }

LABEL_38:
      MEMORY[0x1C69417F0](v10);
      break;
    default:
      v8 = 0;
LABEL_12:
      MEMORY[0x1C69417F0](v8);
      sub_1C4402120();
LABEL_13:

      sub_1C4F01298();
      break;
  }
}

uint64_t sub_1C4C94CF0(uint64_t a1)
{
  v2 = sub_1C44C12D4(a1);
  v10 = sub_1C44D4018(v2, v3, v4, v5, v6, v7, v8, v9, v14, v15);
  sub_1C4C94B20(v10, v11, v12, v1);
  return sub_1C4F02B68();
}

void sub_1C4C94D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE628();
  a19 = v23;
  a20 = v24;
  v178 = v21;
  v26 = v25;
  v173 = sub_1C456902C(&qword_1EC0C5840, &qword_1C4F63FE8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBC74();
  v171[0] = v28;
  sub_1C456902C(&qword_1EC0C5848, &qword_1C4F63FF0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v171[1] = v30;
  sub_1C456902C(&qword_1EC0C5850, &qword_1C4F63FF8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  v172 = v32;
  v33 = sub_1C456902C(&qword_1EC0C5858, &qword_1C4F64000);
  sub_1C43FFAE0(v33, &a15);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBC74();
  v170 = v35;
  v36 = sub_1C456902C(&qword_1EC0C5860, &qword_1C4F64008);
  sub_1C43FFAE0(v36, &a13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  v169 = v38;
  v39 = sub_1C456902C(&qword_1EC0C5868, &qword_1C4F64010);
  sub_1C43FFAE0(v39, &a11);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  v168 = v41;
  v42 = sub_1C456902C(&qword_1EC0C5870, &qword_1C4F64018);
  sub_1C43FFAE0(v42, &a9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBC74();
  v176 = v44;
  v45 = sub_1C456902C(&qword_1EC0C5878, &qword_1C4F64020);
  sub_1C43FFAE0(v45, &v179);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBC74();
  v175 = v47;
  v48 = sub_1C456902C(&qword_1EC0C5880, &qword_1C4F64028);
  sub_1C43FFAE0(v48, &v178);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBC74();
  v174 = v50;
  v51 = sub_1C456902C(&qword_1EC0C5888, &qword_1C4F64030);
  sub_1C43FFAE0(v51, &v176);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBC74();
  sub_1C44D3E34(v53);
  v54 = sub_1C456902C(&qword_1EC0C5890, &qword_1C4F64038);
  sub_1C43FFAE0(v54, &v174);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBC74();
  v56 = sub_1C456902C(&qword_1EC0C5898, &qword_1C4F64040);
  sub_1C43FFAE0(v56, &v172);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBC74();
  v58 = sub_1C456902C(&qword_1EC0C58A0, &qword_1C4F64048);
  sub_1C43FFAE0(v58, v171);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBC74();
  v60 = sub_1C456902C(&qword_1EC0C58A8, &qword_1C4F64050);
  sub_1C43FFAE0(v60, &v168);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBC74();
  v62 = sub_1C456902C(&qword_1EC0C58B0, &qword_1C4F64058);
  sub_1C43FFAE0(v62, &v169);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C440A474();
  sub_1C456902C(&qword_1EC0C58B8, &qword_1C4F64060);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C4418964();
  v65 = sub_1C456902C(&qword_1EC0C58C0, &qword_1C4F64068);
  sub_1C43FCDF8();
  v67 = v66;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C4401780();
  v177 = v26;
  v69 = sub_1C442A90C();
  sub_1C4417F50(v69, v70);
  sub_1C4CAB278();
  sub_1C4475644();
  v71 = v178;
  sub_1C44D0B90();
  sub_1C4F02BC8();
  if (v71)
  {
    goto LABEL_8;
  }

  v73 = v174;
  v72 = v175;
  v178 = v67;
  sub_1C4F026E8();
  v77 = sub_1C4570934();
  if (v75 == v76 >> 1)
  {
LABEL_7:
    v85 = sub_1C4F022E8();
    sub_1C43FFB2C(v85, MEMORY[0x1E69E6B28]);
    v87 = v86;
    sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90);
    *v87 = &_s8StreamOpON;
    sub_1C4F025F8();
    sub_1C4475C70();
    (*(*(v85 - 8) + 104))(v87, *MEMORY[0x1E69E6AF8], v85);
    swift_willThrow();
    swift_unknownObjectRelease();
    v88 = sub_1C44018C0();
    v89(v88, v65);
LABEL_8:
    v83 = v177;
LABEL_9:
    sub_1C440962C(v83);
    sub_1C44109F8();
    return;
  }

  if (v75 < (v76 >> 1))
  {
    v167 = *(v74 + v75);
    v78 = sub_1C4570928(v75 + 1, v76 >> 1, v77, v74);
    v80 = v79;
    v82 = v81;
    swift_unknownObjectRelease();
    if (v80 == v82 >> 1)
    {
      v83 = v65;
      v84 = v173;
      switch(v167)
      {
        case 1:
          v180[0] = 1;
          sub_1C4CAB764();
          sub_1C440C05C(&_s8StreamOpO22MapToKeypathCodingKeysON, v180);
          sub_1C440CDDC();
          sub_1C44EC86C();
          sub_1C4F02678();
          swift_unknownObjectRelease();
          v139 = sub_1C4416528();
          v140(v139, v72);
          v141 = sub_1C4415078();
          v142(v141);
          break;
        case 2:
          v180[0] = 2;
          sub_1C4CAB710();
          sub_1C440C05C(&_s8StreamOpO13MinCodingKeysON, v180);
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v98 = sub_1C440C7DC();
          v99(v98);
          v100 = sub_1C4415078();
          v101(v100);
          sub_1C4435D10();
          break;
        case 3:
          v180[0] = 3;
          sub_1C4CAB6BC();
          sub_1C440C05C(&_s8StreamOpO13MaxCodingKeysON, v180);
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v103 = sub_1C440C7DC();
          v104(v103);
          v105 = sub_1C4415078();
          v106(v105);
          sub_1C4435D10();
          break;
        case 4:
          v180[0] = 4;
          sub_1C4CAB668();
          sub_1C440C05C(&_s8StreamOpO14LastCodingKeysON, v180);
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v93 = sub_1C440C7DC();
          v94(v93);
          v95 = sub_1C4415078();
          v96(v95);
          sub_1C4435D10();
          break;
        case 5:
          v180[0] = 5;
          sub_1C4CAB614();
          sub_1C440C05C(&_s8StreamOpO15FirstCodingKeysON, v180);
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v111 = sub_1C440C7DC();
          v112(v111);
          v113 = sub_1C4415078();
          v114(v113);
          sub_1C4435D10();
          break;
        case 6:
          v180[0] = 6;
          sub_1C4CAB5C0();
          sub_1C440C05C(&_s8StreamOpO17CollectCodingKeysON, v180);
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v122 = sub_1C440C7DC();
          v123(v122);
          v124 = sub_1C4415078();
          v125(v124);
          sub_1C4435D10();
          break;
        case 7:
          v180[0] = 7;
          sub_1C4CAB56C();
          sub_1C440C05C(&_s8StreamOpO15CountCodingKeysON, v180);
          sub_1C441B59C();
          swift_unknownObjectRelease();
          v107 = sub_1C440C7DC();
          v108(v107);
          v109 = sub_1C4415078();
          v110(v109);
          sub_1C4435D10();
          break;
        case 8:
          v180[0] = 8;
          sub_1C4CAB518();
          sub_1C440C05C(&_s8StreamOpO21FilterEqualCodingKeysON, v180);
          sub_1C440CDDC();
          v176 = v126;
          v174 = v78;
          sub_1C4CB03B0();
          sub_1C4F02678();
          sub_1C4428A24();
          swift_unknownObjectRelease();
          v150 = sub_1C440C7DC();
          v151(v150, v84);
          v152 = sub_1C4424D70();
          v153(v152, v176);
          break;
        case 9:
          v180[0] = 9;
          sub_1C4CAB4C4();
          sub_1C440C05C(&_s8StreamOpO24FilterNotEqualCodingKeysON, v180);
          sub_1C440CDDC();
          v174 = v78;
          sub_1C4CB03B0();
          sub_1C4F02678();
          sub_1C4428A24();
          swift_unknownObjectRelease();
          v135 = sub_1C4416528();
          v136(v135, v84);
          v137 = sub_1C43FD2BC();
          v138(v137);
          break;
        case 10:
          v180[0] = 10;
          sub_1C4CAB470();
          sub_1C440C05C(&_s8StreamOpO19MathFloatCodingKeysON, v180);
          sub_1C440CDDC();
          sub_1C4CB040C();
          sub_1C447E7C4();
          sub_1C4428A24();
          sub_1C443077C(v148, v149);
          sub_1C4F026A8();
          swift_unknownObjectRelease();
          v163 = sub_1C4416528();
          v164(v163, v73);
          v165 = sub_1C43FD2BC();
          v166(v165);
          break;
        case 11:
          v180[0] = 11;
          sub_1C4CAB41C();
          sub_1C440C05C(&_s8StreamOpO20MathDoubleCodingKeysON, v180);
          sub_1C440CDDC();
          sub_1C4CB040C();
          sub_1C447E7C4();
          sub_1C4428A24();
          sub_1C443077C(v131, v132);
          sub_1C4F02698();
          swift_unknownObjectRelease();
          v154 = sub_1C4416528();
          v155(v154, v73);
          v156 = sub_1C43FD2BC();
          v157(v156);
          break;
        case 12:
          v180[0] = 12;
          sub_1C4CAB3C8();
          v97 = v170;
          sub_1C440C05C(&_s8StreamOpO17MathIntCodingKeysON, v180);
          sub_1C440CDDC();
          v174 = v78;
          v180[0] = 0;
          sub_1C4F02678();
          sub_1C4428A24();
          sub_1C443077C(v133, v134);
          sub_1C4F026B8();
          swift_unknownObjectRelease();
          sub_1C43FFB20();
          v158(v97);
          v159 = sub_1C43FD2BC();
          v160(v159);
          break;
        case 13:
          v180[0] = 13;
          sub_1C4CAB374();
          sub_1C440C05C(&_s8StreamOpO22ToMultiarrayCodingKeysON, v180);
          sub_1C440CDDC();
          v116 = v115;
          sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
          HIBYTE(v179) = 0;
          sub_1C4416F78();
          sub_1C448E8F4(v117);
          sub_1C4CB0380();
          sub_1C44247E8();
          sub_1C4F026C8();
          v174 = v78;
          v175 = v22;
          HIBYTE(v179) = 1;
          v146 = sub_1C4F02678();
          v147 = (v178 + 8);
          v176 = v146;
          swift_unknownObjectRelease();
          v161 = sub_1C43FD018();
          v162(v161);
          (*v147)(v175, v116);
          break;
        case 14:
          v180[0] = 14;
          sub_1C4CAB320();
          sub_1C440C05C(&_s8StreamOpO23SubscriptDictCodingKeysON, v180);
          sub_1C440CDDC();
          v91 = v90;
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C4416F78();
          sub_1C443D11C(v92);
          sub_1C4CB0380();
          sub_1C44247E8();
          sub_1C4F026C8();
          swift_unknownObjectRelease();
          sub_1C43FFB20();
          v127 = sub_1C43FD018();
          v128(v127);
          v129 = sub_1C4425544();
          v130(v129, v91);
          break;
        case 15:
          v180[0] = 15;
          sub_1C4CAB2CC();
          sub_1C440C05C(&_s8StreamOpO21AsTimestampCodingKeysON, v180);
          v102 = v83;
          v83 = v177;
          swift_unknownObjectRelease();
          v118 = sub_1C4412B8C();
          v119(v118, v84);
          v120 = sub_1C4425544();
          v121(v120, v102);
          sub_1C4435D10();
          break;
        default:
          v180[0] = 0;
          sub_1C4CAB7B8();
          sub_1C440C05C(&_s8StreamOpO21FilterClassCodingKeysON, v180);
          sub_1C44EC86C();
          sub_1C4F02678();
          sub_1C4428A24();
          swift_unknownObjectRelease();
          sub_1C43FFB20();
          v143(v20, v72);
          v144 = sub_1C4424D70();
          v145(v144, v83);
          v83 = v177;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C4C96270(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      sub_1C47C80C0();
      return;
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    sub_1C4456958();
    return;
  }

  sub_1C47C7F00(a1, a3);
}

uint64_t sub_1C4C96290()
{
  sub_1C4404078();
  if (v0)
  {
    MEMORY[0x1C69417F0](1);
    v1 = sub_1C4402120();

    return sub_1C47C9714(v1, v2);
  }

  else
  {
    MEMORY[0x1C69417F0](0);
    v4 = sub_1C4402120();

    return sub_1C47C99E8(v4, v5);
  }
}

uint64_t sub_1C4C962F8(uint64_t a1, char a2)
{
  sub_1C441EC18(a1);
  if (a2)
  {
    v3 = MEMORY[0x1C69417F0](1);
    v11 = sub_1C44AE0D8(v3, v4, v5, v6, v7, v8, v9, v10, v24, v25);
    sub_1C47C9714(v11, v12);
  }

  else
  {
    v13 = MEMORY[0x1C69417F0](0);
    v21 = sub_1C44AE0D8(v13, v14, v15, v16, v17, v18, v19, v20, v24, v25);
    sub_1C47C99E8(v21, v22);
  }

  return sub_1C4F02B68();
}

uint64_t sub_1C4C96360(uint64_t a1)
{
  v2 = sub_1C4CAB2CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C9639C(uint64_t a1)
{
  v2 = sub_1C4CAB2CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C963F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C93268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4C96420(uint64_t a1)
{
  v2 = sub_1C4CAB278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C9645C(uint64_t a1)
{
  v2 = sub_1C4CAB278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96498(uint64_t a1)
{
  v2 = sub_1C4CAB5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C964D4(uint64_t a1)
{
  v2 = sub_1C4CAB5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96510(uint64_t a1)
{
  v2 = sub_1C4CAB56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C9654C(uint64_t a1)
{
  v2 = sub_1C4CAB56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C9658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C93918(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4C965B8(uint64_t a1)
{
  v2 = sub_1C4CAB7B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C965F4(uint64_t a1)
{
  v2 = sub_1C4CAB7B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96634(uint64_t a1)
{
  v2 = sub_1C4CAB518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96670(uint64_t a1)
{
  v2 = sub_1C4CAB518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C966AC(uint64_t a1)
{
  v2 = sub_1C4CAB4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C966E8(uint64_t a1)
{
  v2 = sub_1C4CAB4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96724(uint64_t a1)
{
  v2 = sub_1C4CAB614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96760(uint64_t a1)
{
  v2 = sub_1C4CAB614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C9679C(uint64_t a1)
{
  v2 = sub_1C4CAB668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C967D8(uint64_t a1)
{
  v2 = sub_1C4CAB668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C93A34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4C96844(uint64_t a1)
{
  v2 = sub_1C4CAB764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96880(uint64_t a1)
{
  v2 = sub_1C4CAB764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C968D4(uint64_t a1)
{
  v2 = sub_1C4CAB41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96910(uint64_t a1)
{
  v2 = sub_1C4CAB41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C9694C(uint64_t a1)
{
  v2 = sub_1C4CAB470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96988(uint64_t a1)
{
  v2 = sub_1C4CAB470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C969C4(uint64_t a1)
{
  v2 = sub_1C4CAB3C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96A00(uint64_t a1)
{
  v2 = sub_1C4CAB3C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96A3C(uint64_t a1)
{
  v2 = sub_1C4CAB6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96A78(uint64_t a1)
{
  v2 = sub_1C4CAB6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96AB4(uint64_t a1)
{
  v2 = sub_1C4CAB710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96AF0(uint64_t a1)
{
  v2 = sub_1C4CAB710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C93B78(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4C96B5C(uint64_t a1)
{
  v2 = sub_1C4CAB320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96B98(uint64_t a1)
{
  v2 = sub_1C4CAB320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C93C08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4C96C04(uint64_t a1)
{
  v2 = sub_1C4CAB374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4C96C40(uint64_t a1)
{
  v2 = sub_1C4CAB374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4C96CF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C4F02AF8();
  sub_1C4C94B20(v5, v1, v2, v3);
  return sub_1C4F02B68();
}

void sub_1C4C96D78(uint64_t a1@<X8>)
{
  sub_1C4C96DAC();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
  }
}

void sub_1C4C96DAC()
{
  sub_1C43FE96C();
  v2 = v1;
  sub_1C456902C(&qword_1EC0C55A0, &qword_1C4F62780);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4410A24();
  sub_1C4417F50(v2, v2[3]);
  sub_1C4CA83B4();
  sub_1C4475644();
  sub_1C445AB20();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0C55A8, &qword_1C4F62788);
    sub_1C4CA8408();
    sub_1C4CB0380();
    sub_1C442AA0C();
    sub_1C4F026C8();
    v5 = sub_1C43FE99C();
    v6(v5);
  }

  sub_1C440962C(v2);
  sub_1C43FBC80();
}

void sub_1C4C97074()
{
  sub_1C43FE96C();
  v1 = v0;
  sub_1C456902C(&qword_1EC0C55C8, &qword_1C4F627A8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4401780();
  v3 = sub_1C442A90C();
  sub_1C4417F50(v3, v4);
  sub_1C4CA83B4();
  sub_1C4475644();
  sub_1C44D0B90();
  sub_1C4F02BF8();
  if (v1)
  {
    sub_1C456902C(&qword_1EC0C55B8, &qword_1C4F62798);
    sub_1C4CA8724();
  }

  else
  {
    sub_1C456902C(&qword_1EC0C55A8, &qword_1C4F62788);
    sub_1C4CA8888();
  }

  sub_1C4414374();
  sub_1C441D304();
  sub_1C4F027E8();
  v5 = sub_1C43FFE3C();
  v6(v5);
  sub_1C43FBC80();
}

uint64_t sub_1C4C971D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a6)
    {
      v12 = a1 == a5 && a2 == a6;
      if (v12 || (sub_1C4F02938() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

LABEL_8:
  if (a3 == a7 && a4 == a8)
  {
    return 1;
  }

  sub_1C4405814();
  sub_1C4461D50();

  return sub_1C4F02938();
}

uint64_t sub_1C4C97274(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C97338(char a1)
{
  if (a1)
  {
    return 0x746567726174;
  }

  else
  {
    return 1701667182;
  }
}

void sub_1C4C97364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FE96C();
  v25 = v24;
  v26 = sub_1C456902C(&qword_1EC0C5838, &qword_1C4F63FE0);
  sub_1C43FCDF8();
  v28 = v27;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C440A474();
  sub_1C4417F50(v25, v25[3]);
  sub_1C4CAB224();
  sub_1C4433620();
  sub_1C4F02BF8();
  sub_1C4F02738();
  if (!v22)
  {
    sub_1C4405BEC();
    sub_1C4F02798();
  }

  (*(v28 + 8))(v23, v26);
  sub_1C43FBC80();
}

uint64_t sub_1C4C974A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    sub_1C4F02B18();
    sub_1C4F01298();
  }

  else
  {
    sub_1C4F02B18();
  }

  return sub_1C4F01298();
}

uint64_t sub_1C4C9752C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C441EC18(a1);
  sub_1C4F02B18();
  if (a2)
  {
    sub_1C4F01298();
  }

  sub_1C4F01298();
  return sub_1C4F02B68();
}

void sub_1C4C975B8()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  sub_1C456902C(&qword_1EC0C5830, &qword_1C4F63FD8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A474();
  sub_1C44009B8();
  v3 = sub_1C4CAB224();
  sub_1C44342BC(&_s16ExtractingValuesV10CodingKeysON, v4, v3);
  if (!v1)
  {
    sub_1C443FEB8();
    sub_1C441C410();
    sub_1C4F02618();
    sub_1C4405BEC();
    sub_1C441C410();
    sub_1C4F02678();
    v5 = sub_1C4402F74();
    v6(v5);
  }

  sub_1C440962C(v0);
  sub_1C43FD018();
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4C97710()
{
  sub_1C43FE96C();
  sub_1C445BC30(v1, v2, v3, v4);
  sub_1C456902C(&qword_1EC0C5618, &qword_1C4F627C8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  v6 = sub_1C442A90C();
  sub_1C4417F50(v6, v7);
  sub_1C4CA89EC();
  sub_1C444FECC();
  sub_1C44D0B90();
  sub_1C4F02BF8();
  sub_1C43FD018();
  sub_1C4402150();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C4405BEC();
    sub_1C456902C(&qword_1EC0C5608, &qword_1C4F627B8);
    sub_1C4CA8BA4();
    sub_1C4482ED8();
    sub_1C43FCB2C();
    sub_1C4F027E8();
  }

  v8 = sub_1C43FD024();
  v9(v8);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4C97848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F01298();
  v3 = sub_1C4402120();

  return sub_1C47C95E4(v3, v4);
}

uint64_t sub_1C4C97884()
{
  sub_1C44238C4();
  sub_1C456902C(&qword_1EC0C5600, &qword_1C4F627B0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A474();
  sub_1C44009B8();
  v3 = sub_1C4CA89EC();
  sub_1C44342BC(&_s18BiomeSignalOptionsV10CodingKeysON, v4, v3);
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C443FEB8();
    sub_1C441C410();
    sub_1C4F02678();
    sub_1C456902C(&qword_1EC0C5608, &qword_1C4F627B8);
    sub_1C4480838();
    sub_1C4CA8A40();
    sub_1C442ACE4();
    sub_1C4433EBC();
    sub_1C4F026C8();
    v6 = sub_1C44069E0();
    v7(v6);
    sub_1C4CB04D0();
  }

  return sub_1C43FD018();
}

uint64_t sub_1C4C979F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x69726575516C7173 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C97A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a1 == a5 && a2 == a6;
  if (v10 || (sub_1C4F02938() & 1) != 0)
  {
    v11 = sub_1C4405814();
    sub_1C47C7AE0(v11, v12);
    if (v13)
    {
      if (a4)
      {
        if (a8)
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4402120();
          sub_1C47E71E0();
          sub_1C4406834();

          if (a4)
          {
            return 1;
          }
        }
      }

      else if (!a8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1C4C97B24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6F6962 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636F725074736F70 && a2 == 0xEE0073704F737365)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C97BF0(char a1)
{
  if (a1)
  {
    return 0x636F725074736F70;
  }

  else
  {
    return 0x656D6F6962;
  }
}

void sub_1C4C97C30()
{
  sub_1C43FE96C();
  v2 = v1;
  sub_1C456902C(&qword_1EC0C5740, &unk_1C4F628A0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4402A68();
  sub_1C4417F50(v2, v2[3]);
  sub_1C4CA99F8();
  sub_1C444FECC();
  sub_1C4F02BF8();
  sub_1C4CA9B78();
  sub_1C44290E4();
  sub_1C4F027E8();
  if (!v0)
  {
    sub_1C4459AE4();
    sub_1C456902C(&qword_1EC0C5738, &qword_1C4F62898);
    sub_1C4CA9BCC();
    sub_1C44290E4();
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v4 = sub_1C43FD024();
  v5(v4);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4C97D98(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C4F01298();
  sub_1C47C95E4(a1, a4);
  if (a5)
  {
    sub_1C4F02B18();
    sub_1C4402120();

    sub_1C49F0938();
  }

  else
  {
    sub_1C4F02B18();
  }
}

uint64_t sub_1C4C97E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C44C12D4(a1, a2, a3);
  sub_1C44D4018(v5, v6, v7, v8, v9, v10, v11, v12, v32, v35);
  v13 = sub_1C4F01298();
  v21 = sub_1C4475868(v13, v14, v15, v16, v17, v18, v19, v20, v33, v36);
  sub_1C47C95E4(v21, v22);
  if (a4)
  {
    v23 = sub_1C4F02B18();
    sub_1C44AE0D8(v23, v24, v25, v26, v27, v28, v29, v30, v34, v37);
    sub_1C49F0938();
  }

  else
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B68();
}

void sub_1C4C97E80()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  sub_1C456902C(&qword_1EC0C5730, &qword_1C4F62890);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440A474();
  sub_1C44009B8();
  v2 = sub_1C4CA99F8();
  sub_1C44342BC(&_s17BiomeStreamConfigV10CodingKeysON, v3, v2);
  sub_1C4CA9A4C();
  sub_1C441C410();
  sub_1C4F026C8();
  sub_1C456902C(&qword_1EC0C5738, &qword_1C4F62898);
  sub_1C4459AE4();
  sub_1C4CA9AA0();
  sub_1C4433EBC();
  sub_1C4F02658();
  v4 = sub_1C4402F74();
  v5(v4);
  sub_1C440962C(v0);
  sub_1C4415864();
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4C9801C(unsigned __int8 a1, uint64_t a2, char a3)
{
  if (a1 == 3)
  {
    if (a3 == 3)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (a3 == 3)
  {
    return 0;
  }

  v5 = 0x796C6B656577;
  v6 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 0x796C68746E6F6DLL;
    }

    else
    {
      v7 = 0x6C61756E6E61;
    }

    if (v6 == 1)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v7 = 0x796C6B656577;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v5 = 0x796C68746E6F6DLL;
    }

    else
    {
      v5 = 0x6C61756E6E61;
    }

    if (a3 == 1)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v7 != v5 || v8 != v9)
  {
    v11 = sub_1C4F02938();

    if (v11)
    {
      goto LABEL_29;
    }

    return 0;
  }

LABEL_29:
  v12 = sub_1C4402120();

  return sub_1C47E7154(v12, v13);
}

uint64_t sub_1C4C98180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E65646163 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9824C(char a1)
{
  if (a1)
  {
    return 0x6E65646E65706564;
  }

  else
  {
    return 0x65636E65646163;
  }
}

void sub_1C4C9828C()
{
  sub_1C43FE96C();
  sub_1C4488B44();
  sub_1C456902C(&qword_1EC0C56C8, &qword_1C4F62840);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  v2 = sub_1C4414A08();
  sub_1C4417F50(v2, v3);
  sub_1C4CA94EC();
  sub_1C444FECC();
  sub_1C445AB20();
  sub_1C4F02BF8();
  sub_1C4CA9594();
  sub_1C4402150();
  sub_1C4F02778();
  if (!v0)
  {
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4402E98();
    sub_1C443D11C(v4);
    sub_1C4482ED8();
    sub_1C43FCB2C();
    sub_1C4F027E8();
  }

  v5 = sub_1C43FD024();
  v6(v5);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4C983EC(uint64_t a1, char a2)
{
  if (a2 == 3)
  {
    sub_1C4F02B18();
  }

  else
  {
    sub_1C4F02B18();
    sub_1C4F01298();
  }

  sub_1C4402120();

  sub_1C49EFD8C();
}

uint64_t sub_1C4C984B0(uint64_t a1)
{
  v1 = a1;
  sub_1C441EC18(a1);
  if (v1 == 3)
  {
    v2 = sub_1C4F02B18();
  }

  else
  {
    sub_1C4F02B18();
    sub_1C4F01298();
  }

  sub_1C44AE0D8(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  sub_1C49EFD8C();
  return sub_1C4F02B68();
}

uint64_t sub_1C4C98580(void *a1)
{
  sub_1C456902C(&qword_1EC0C56C0, &qword_1C4F62838);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4CA94EC();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C4CA9540();
    sub_1C44415FC();
    sub_1C445C248();
    sub_1C4F02658();
    v2 = v9;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4480838();
    sub_1C4416F78();
    sub_1C443D11C(v5);
    sub_1C442ACE4();
    sub_1C445C248();
    sub_1C4F026C8();
    v6 = sub_1C440AFC4();
    v7(v6);
    sub_1C4CB04D0();
  }

  return v2;
}

unint64_t sub_1C4C98718()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C4406834();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C4C9875C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (!v5 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v6 = sub_1C4402120();

  return v7(v6);
}

uint64_t sub_1C4C987DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C988A4(char a1)
{
  if (a1)
  {
    return 0x6E65646E65706564;
  }

  else
  {
    return 0x6C65646F6DLL;
  }
}

void sub_1C4C988E0()
{
  sub_1C43FE96C();
  sub_1C445BC30(v1, v2, v3, v4);
  sub_1C456902C(&qword_1EC0C56B8, &qword_1C4F62830);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  v6 = sub_1C442A90C();
  sub_1C4417F50(v6, v7);
  sub_1C4CA9498();
  sub_1C444FECC();
  sub_1C44D0B90();
  sub_1C4F02BF8();
  sub_1C43FD018();
  sub_1C4402150();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C4405BEC();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4402E98();
    sub_1C443D11C(v8);
    sub_1C4482ED8();
    sub_1C43FCB2C();
    sub_1C4F027E8();
  }

  v9 = sub_1C43FD024();
  v10(v9);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4C98A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F01298();
  sub_1C4402120();

  sub_1C49EFD8C();
}

uint64_t sub_1C4C98A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v5 = sub_1C44C12D4(a1, a2, a3);
  sub_1C44D4018(v5, v6, v7, v8, v9, v10, v11, v12, v23, v25);
  v13 = sub_1C4F01298();
  v21 = sub_1C4475868(v13, v14, v15, v16, v17, v18, v19, v20, v24, v26);
  a4(v21);
  return sub_1C4F02B68();
}

uint64_t sub_1C4C98AB8()
{
  sub_1C44238C4();
  sub_1C456902C(&qword_1EC0C56A8, &qword_1C4F62828);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C440A474();
  sub_1C44009B8();
  v3 = sub_1C4CA9498();
  sub_1C44342BC(&_s15EmbeddingConfigV10CodingKeysON, v4, v3);
  if (v1)
  {
    sub_1C440962C(v0);
  }

  else
  {
    sub_1C443FEB8();
    sub_1C441C410();
    sub_1C4F02678();
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4480838();
    sub_1C4416F78();
    sub_1C443D11C(v6);
    sub_1C442ACE4();
    sub_1C4433EBC();
    sub_1C4F026C8();
    v7 = sub_1C44069E0();
    v8(v7);
    sub_1C4CB04D0();
  }

  return sub_1C43FD018();
}

void sub_1C4C98C58()
{
  sub_1C43FE96C();
  v1 = v0;
  sub_1C456902C(v2, v3);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4401780();
  v5 = sub_1C43FD258();
  sub_1C4409678(v5, v6);
  v1();
  sub_1C44D0B90();
  sub_1C4F02BF8();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4402E98();
  sub_1C443D11C(v7);
  sub_1C4414374();
  sub_1C441D304();
  sub_1C4F027E8();
  v8 = sub_1C43FFE3C();
  v9(v8);
  sub_1C43FBC80();
}

void sub_1C4C98D98()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v8 = sub_1C456902C(v6, v7);
  sub_1C43FCDF8();
  v12 = v9;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C440A474();
  sub_1C4409678(v5, v5[3]);
  v3();
  sub_1C445AB20();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4416F78();
    sub_1C443D11C(v11);
    sub_1C442AA0C();
    sub_1C445C248();
    sub_1C4F026C8();
    (*(v12 + 8))(v1, v8);
  }

  sub_1C440962C(v5);
  sub_1C43FBC80();
}

uint64_t sub_1C4C98F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1C47E7154(a1, a3))
  {
    if (a2)
    {
      if (a4)
      {
        v6 = sub_1C4402120();
        if (sub_1C47E7154(v6, v7))
        {
          return 1;
        }
      }
    }

    else if (!a4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C4C98F5C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F95320 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C4FB96D0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C4C99030(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1C4C99068()
{
  sub_1C43FE96C();
  sub_1C456902C(&qword_1EC0C5670, &qword_1C4F62800);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4401780();
  v2 = sub_1C4414A08();
  sub_1C4417F50(v2, v3);
  sub_1C4CA939C();
  sub_1C4475644();
  sub_1C445AB20();
  sub_1C4F02BF8();
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4402E98();
  sub_1C443D11C(v4);
  sub_1C440F9B8();
  sub_1C4F027E8();
  if (!v0)
  {
    sub_1C440F9B8();
    sub_1C4F02778();
  }

  v5 = sub_1C43FFE3C();
  v6(v5);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4C991DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C49EFD8C();
  if (a3)
  {
    sub_1C4F02B18();
    sub_1C4402120();

    sub_1C49EFD8C();
  }

  else
  {
    sub_1C4F02B18();
  }
}

uint64_t sub_1C4C99238()
{
  sub_1C4404078();
  v2 = sub_1C441EC18(v1);
  sub_1C4475868(v2, v3, v4, v5, v6, v7, v8, v9, v19, v21);
  sub_1C49EFD8C();
  if (v0)
  {
    v10 = sub_1C4F02B18();
    sub_1C44AE0D8(v10, v11, v12, v13, v14, v15, v16, v17, v20, v22);
    sub_1C49EFD8C();
  }

  else
  {
    sub_1C4F02B18();
  }

  return sub_1C4F02B68();
}

void sub_1C4C99298()
{
  sub_1C43FE96C();
  sub_1C44238C4();
  sub_1C456902C(&qword_1EC0C5668, &qword_1C4F627F8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C440A474();
  sub_1C44009B8();
  v2 = sub_1C4CA939C();
  sub_1C44342BC(&_s21EntityRelevanceConfigV10CodingKeysON, v3, v2);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4416F78();
  sub_1C443D11C(v4);
  sub_1C445AB20();
  sub_1C441C410();
  sub_1C4F026C8();
  sub_1C445AB20();
  sub_1C441C410();
  sub_1C4F02658();
  v5 = sub_1C4402F74();
  v6(v5);
  sub_1C440962C(v0);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4C9942C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E65646E65706564 && a2 == 0xEC00000073656963)
  {

    v4 = 0;
  }

  else
  {
    sub_1C444C3E0();
    sub_1C4F02938();
    sub_1C4406834();

    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C994A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1C69417F0](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4426A5C();
      sub_1C4F01298();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1C4C99514(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = v4 | (*(a1 + 9) << 8) | (*(a1 + 10) << 16) | (*(a1 + 14) << 48);
  switch(*(a1 + 32))
  {
    case 1:
      if (*(a2 + 32) == 1)
      {
        v12 = *(a2 + 16);
        v13 = v3 == *a2 && v7 == *(a2 + 8);
        if (v13 || (sub_1C4F02938() & 1) != 0)
        {

          sub_1C47C7AE0(v5, v12);
        }
      }

      return;
    case 2:
      if (*(a2 + 32) == 2 && (sub_1C47E7154(v3, *a2) & 1) != 0)
      {
        v10 = sub_1C4402120();
        goto LABEL_12;
      }

      return;
    case 3:
      if (*(a2 + 32) != 3)
      {
        return;
      }

      if (v4)
      {
        if ((*(a2 + 8) & 1) == 0)
        {
          return;
        }
      }

      else if ((*(a2 + 8) & 1) != 0 || v3 != *a2)
      {
        return;
      }

      v19 = 0xE900000000000079;
      v20 = 0x6144664F656D6974;
      v21 = 0xE900000000000079;
      v22 = 0x6144664F656D6974;
      switch(*(a1 + 9))
      {
        case 1:
          v22 = 0x6144664F74726170;
          break;
        case 2:
          v22 = 0x6954657372616F63;
          v21 = 0xEF796144664F656DLL;
          break;
        case 3:
          v22 = 0x656557664F796164;
          v21 = 0xE90000000000006BLL;
          break;
        case 4:
          v22 = 0x6557664F74726170;
          v21 = 0xEA00000000006B65;
          break;
        case 5:
          v21 = 0xE300000000000000;
          v22 = 6909804;
          break;
        case 6:
          v22 = 0x636F4C6F7263696DLL;
          v23 = 0x6E6F697461;
          goto LABEL_67;
        case 7:
          v22 = 0x6369666963657073;
          v21 = 0xEF687361486F6547;
          break;
        case 8:
          v22 = 0x6547657372616F63;
          v23 = 0x687361486FLL;
LABEL_67:
          v21 = v23 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v22 = 0x6F6547656772616CLL;
          v21 = 0xEC00000068736148;
          break;
        case 0xA:
          v21 = 0xE400000000000000;
          v22 = 1768319351;
          break;
        case 0xB:
          v22 = 0x646F4D7375636F66;
          v21 = 0xE900000000000065;
          break;
        case 0xC:
          v22 = 0x74536E6F69746F6DLL;
          v21 = 0xEB00000000657461;
          break;
        default:
          break;
      }

      switch(*(a2 + 9))
      {
        case 1:
          v20 = 0x6144664F74726170;
          break;
        case 2:
          v20 = 0x6954657372616F63;
          v19 = 0xEF796144664F656DLL;
          break;
        case 3:
          v20 = 0x656557664F796164;
          v19 = 0xE90000000000006BLL;
          break;
        case 4:
          v20 = 0x6557664F74726170;
          v19 = 0xEA00000000006B65;
          break;
        case 5:
          v19 = 0xE300000000000000;
          v20 = 6909804;
          break;
        case 6:
          v20 = 0x636F4C6F7263696DLL;
          v24 = 0x6E6F697461;
          goto LABEL_81;
        case 7:
          v20 = 0x6369666963657073;
          v19 = 0xEF687361486F6547;
          break;
        case 8:
          v20 = 0x6547657372616F63;
          v24 = 0x687361486FLL;
LABEL_81:
          v19 = v24 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v20 = 0x6F6547656772616CLL;
          v19 = 0xEC00000068736148;
          break;
        case 0xA:
          v19 = 0xE400000000000000;
          v20 = 1768319351;
          break;
        case 0xB:
          v20 = 0x646F4D7375636F66;
          v19 = 0xE900000000000065;
          break;
        case 0xC:
          v20 = 0x74536E6F69746F6DLL;
          v19 = 0xEB00000000657461;
          break;
        default:
          break;
      }

      if (v22 == v20 && v21 == v19)
      {
      }

      else
      {
        sub_1C444C3E0();
        sub_1C4F02938();
      }

      return;
    case 4:
      if (*(a2 + 32) == 4)
      {
        v8 = *(a2 + 16);
        v9 = v3 == *a2 && v7 == *(a2 + 8);
        if (v9 || (sub_1C4F02938() & 1) != 0)
        {
          v10 = v5;
          v11 = v8;
LABEL_12:

          sub_1C47E7154(v10, v11);
        }
      }

      return;
    case 5:
      if (*(a2 + 32) == 5)
      {
        goto LABEL_31;
      }

      return;
    case 6:
      if (*(a2 + 32) == 6)
      {
        goto LABEL_39;
      }

      return;
    case 7:
      if (*(a2 + 32) == 7)
      {
LABEL_31:
        if (v3 != *a2 || v7 != *(a2 + 8))
        {
          goto LABEL_49;
        }
      }

      return;
    case 8:
      if (*(a2 + 32) == 8)
      {
LABEL_39:
        v15 = *(a2 + 16);
        v16 = *(a2 + 24);
        v17 = v3 == *a2 && v7 == *(a2 + 8);
        if (v17 || (sub_1C4F02938()) && (v5 != v15 || v6 != v16))
        {
          sub_1C4426A5C();
LABEL_49:

          sub_1C4F02938();
        }
      }

      return;
    case 9:
      sub_1C44238B8();
      return;
    default:
      return;
  }
}

uint64_t sub_1C4C99FD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEE006874676E654CLL;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C4FBEA50 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000019 && 0x80000001C4FBEA70 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

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

uint64_t sub_1C4C9A0FC(char a1)
{
  if (!a1)
  {
    return 0x65636E6575716573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000019;
}

uint64_t sub_1C4C9A164()
{
  sub_1C4404078();
  v2 = v1 == 0x727453656D6F6962 && v0 == 0xEB000000006D6165;
  if (v2 || (sub_1C4461D50(), (sub_1C4F02938() & 1) != 0))
  {

    return 0;
  }

  else if (v1 == 7565423 && v0 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    sub_1C4461D50();
    sub_1C4F02938();
    sub_1C4406834();

    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9A218(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69726575516C7173 && a2 == 0xEA00000000007365;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E65727574616566 && a2 == 0xEC00000073656D61)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9A2EC(char a1)
{
  if (a1)
  {
    return 0x4E65727574616566;
  }

  else
  {
    return 0x69726575516C7173;
  }
}

uint64_t sub_1C4C9A330(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65746E496C6C6163 && a2 == 0xEF6E6F6974636172;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C6C6174736E69 && a2 == 0xEC00000070704164;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000018 && 0x80000001C4FBE850 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000014 && 0x80000001C4FBE870 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65746E4965646F6DLL && a2 == 0xEF6E6F6974636172;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000010 && 0x80000001C4FA90B0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000018 && 0x80000001C4FA9150 == a2;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4C746E6569626D61 && a2 == 0xEC00000074686769;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x80000001C4FA90D0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x636E75614C707061 && a2 == 0xE900000000000068;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001C4FBE890 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x656D6F6962 && a2 == 0xE500000000000000;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C7153656D6F6962 && a2 == 0xE800000000000000;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x79616C50726163 && a2 == 0xE700000000000000;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x80000001C4FBE8B0 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6944656369766564 && a2 == 0xED000079616C7073;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6F50656369766564 && a2 == 0xEB00000000726577;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x6957656369766564 && a2 == 0xEE007373656C6572;
                                    if (v22 || (sub_1C4F02938() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000015 && 0x80000001C4FBE8D0 == a2;
                                      if (v23 || (sub_1C4F02938() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x6465727265666E69 && a2 == 0xEC00000065646F4DLL;
                                        if (v24 || (sub_1C4F02938() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000010 && 0x80000001C4FBE8F0 == a2;
                                          if (v25 || (sub_1C4F02938() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x636F4C6F7263696DLL && a2 == 0xED00006E6F697461;
                                            if (v26 || (sub_1C4F02938() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000017 && 0x80000001C4FA90F0 == a2;
                                              if (v27 || (sub_1C4F02938() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x74536E6F69746F6DLL && a2 == 0xEB00000000657461;
                                                if (v28 || (sub_1C4F02938() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL;
                                                  if (v29 || (sub_1C4F02938() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x6D45656C706F6570 && a2 == 0xEB000000006C6961;
                                                    if (v30 || (sub_1C4F02938() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0x614E656C706F6570 && a2 == 0xEA0000000000656DLL;
                                                      if (v31 || (sub_1C4F02938() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6C61636973796870 && a2 == 0xEE006C6169636F53;
                                                        if (v32 || (sub_1C4F02938() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x6765746143696F70 && a2 == 0xEB0000000079726FLL;
                                                          if (v33 || (sub_1C4F02938() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x6C706D45656D6173 && a2 == 0xEC0000007265796FLL;
                                                            if (v34 || (sub_1C4F02938() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD000000000000010 && 0x80000001C4F9AF40 == a2;
                                                              if (v35 || (sub_1C4F02938() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x616E41646E756F73 && a2 == 0xED0000736973796CLL;
                                                                if (v36 || (sub_1C4F02938() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x44646E41656D6974 && a2 == 0xEB00000000657461;
                                                                  if (v37 || (sub_1C4F02938() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000015 && 0x80000001C4FA9040 == a2;
                                                                    if (v38 || (sub_1C4F02938() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0x74756F6B726F77 && a2 == 0xE700000000000000;
                                                                      if (v39 || (sub_1C4F02938() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0xD00000000000001FLL && 0x80000001C4FBE910 == a2;
                                                                        if (v40 || (sub_1C4F02938() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else
                                                                        {
                                                                          v41 = a1 == 0x54746E6572727563 && a2 == 0xEB00000000656D69;
                                                                          if (v41 || (sub_1C4F02938() & 1) != 0)
                                                                          {

                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            v42 = a1 == 0xD000000000000021 && 0x80000001C4FBE930 == a2;
                                                                            if (v42 || (sub_1C4F02938() & 1) != 0)
                                                                            {

                                                                              return 37;
                                                                            }

                                                                            else
                                                                            {
                                                                              v43 = a1 == 0xD000000000000017 && 0x80000001C4F93080 == a2;
                                                                              if (v43 || (sub_1C4F02938() & 1) != 0)
                                                                              {

                                                                                return 38;
                                                                              }

                                                                              else
                                                                              {
                                                                                v44 = a1 == 0xD000000000000018 && 0x80000001C4FBE960 == a2;
                                                                                if (v44 || (sub_1C4F02938() & 1) != 0)
                                                                                {

                                                                                  return 39;
                                                                                }

                                                                                else
                                                                                {
                                                                                  v45 = a1 == 0xD000000000000013 && 0x80000001C4F85FF0 == a2;
                                                                                  if (v45 || (sub_1C4F02938() & 1) != 0)
                                                                                  {

                                                                                    return 40;
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v46 = a1 == 0xD000000000000018 && 0x80000001C4F86030 == a2;
                                                                                    if (v46 || (sub_1C4F02938() & 1) != 0)
                                                                                    {

                                                                                      return 41;
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v47 = a1 == 0xD000000000000019 && 0x80000001C4F86010 == a2;
                                                                                      if (v47 || (sub_1C4F02938() & 1) != 0)
                                                                                      {

                                                                                        return 42;
                                                                                      }

                                                                                      else if (a1 == 0xD00000000000001DLL && 0x80000001C4FBE980 == a2)
                                                                                      {

                                                                                        return 43;
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v49 = sub_1C4F02938();

                                                                                        if (v49)
                                                                                        {
                                                                                          return 43;
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          return 44;
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
    }
  }
}

unint64_t sub_1C4C9B024(char a1)
{
  result = 0x65746E496C6C6163;
  switch(a1)
  {
    case 1:
      return 0x656C6C6174736E69;
    case 2:
    case 6:
    case 39:
    case 41:
      return 0xD000000000000018;
    case 3:
      return 0xD000000000000014;
    case 4:
      return 0x65746E4965646F6DLL;
    case 5:
      return 0xD000000000000010;
    case 7:
      return 0x4C746E6569626D61;
    case 8:
    case 22:
    case 38:
      return 0xD000000000000017;
    case 9:
      return 0x636E75614C707061;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0x656D6F6962;
    case 12:
      return 0x6C7153656D6F6962;
    case 13:
      return 0x79616C50726163;
    case 14:
    case 40:
      return 0xD000000000000013;
    case 15:
      return 0x6944656369766564;
    case 16:
      return 0x6F50656369766564;
    case 17:
      return 0x6957656369766564;
    case 18:
    case 33:
      v3 = 5;
      goto LABEL_34;
    case 19:
      return 0x6465727265666E69;
    case 20:
      return 0xD000000000000010;
    case 21:
      return 0x636F4C6F7263696DLL;
    case 23:
      return 0x74536E6F69746F6DLL;
    case 24:
      return 0x6979616C50776F6ELL;
    case 25:
      return 0x6D45656C706F6570;
    case 26:
      return 0x614E656C706F6570;
    case 27:
      return 0x6C61636973796870;
    case 28:
      return 0x6765746143696F70;
    case 29:
      return 0x6C706D45656D6173;
    case 30:
      return 0xD000000000000010;
    case 31:
      return 0x616E41646E756F73;
    case 32:
      return 0x44646E41656D6974;
    case 34:
      return 0x74756F6B726F77;
    case 35:
      return 0xD00000000000001FLL;
    case 36:
      return 0x54746E6572727563;
    case 37:
      return 0xD000000000000021;
    case 42:
      v3 = 9;
      goto LABEL_34;
    case 43:
      v3 = 13;
LABEL_34:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4C9B4E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746365707361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001C4FBEA30 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9B5AC(char a1)
{
  if (a1)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x746365707361;
  }
}

uint64_t sub_1C4C9B5E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ELL && 0x80000001C4FBE9F0 == a2;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001C4FBEA10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1C4C9B6B8(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_1C4C9B6F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001C4FBE9F0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C9B78C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001C4FBE9D0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6F43696F6CLL && a2 == 0xEE00776569567478)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9B864(char a1)
{
  if (a1)
  {
    return 0x65746E6F43696F6CLL;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1C4C9B8AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000020 && 0x80000001C4FBE9A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4C9B948(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000020 && 0x80000001C4FBE9A0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746E6F43696F6CLL && a2 == 0xEE00776569567478)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4C9BA20(char a1)
{
  if (a1)
  {
    return 0x65746E6F43696F6CLL;
  }

  else
  {
    return 0xD000000000000020;
  }
}

void sub_1C4C9BA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v24;
  a20 = v25;
  v281 = v21;
  v277 = v20;
  v27 = v26;
  v28 = sub_1C456902C(&qword_1EC0C5B30, &qword_1C4F64260);
  sub_1C43FFAE0(v28, v260);
  v249[0] = v29;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBC74();
  sub_1C43FCE30(v31);
  sub_1C456902C(&qword_1EC0C5B38, &qword_1C4F64268);
  sub_1C43FCDF8();
  v276[1] = v33;
  v276[2] = v32;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBC74();
  v276[0] = v35;
  v275[1] = sub_1C456902C(&qword_1EC0C5B40, &qword_1C4F64270);
  sub_1C43FCDF8();
  v274[2] = v36;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBC74();
  v274[0] = v38;
  v275[2] = sub_1C456902C(&qword_1EC0C5B48, &qword_1C4F64278);
  sub_1C43FCDF8();
  v275[0] = v39;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBC74();
  sub_1C44D3E34(v41);
  v42 = sub_1C456902C(&qword_1EC0C5B50, &qword_1C4F64280);
  sub_1C43FFAE0(v42, v259);
  v248[0] = v43;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBC74();
  sub_1C43FCE30(v45);
  sub_1C456902C(&qword_1EC0C5B58, &qword_1C4F64288);
  sub_1C43FCDF8();
  v272[1] = v47;
  v272[2] = v46;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBC74();
  sub_1C43FCE30(v49);
  sub_1C456902C(&qword_1EC0C5B60, &qword_1C4F64290);
  sub_1C43FCDF8();
  v273[1] = v51;
  v273[2] = v50;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBC74();
  v273[0] = v53;
  v54 = sub_1C456902C(&qword_1EC0C5B68, &qword_1C4F64298);
  sub_1C43FFAE0(v54, &a18);
  v271[2] = v55;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBC74();
  sub_1C43FCE30(v57);
  v58 = sub_1C456902C(&qword_1EC0C5B70, &qword_1C4F642A0);
  sub_1C43FFAE0(v58, v258);
  v247[0] = v59;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBC74();
  sub_1C43FCE30(v61);
  v62 = sub_1C456902C(&qword_1EC0C5B78, &qword_1C4F642A8);
  sub_1C43FFAE0(v62, v257);
  v246[0] = v63;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FBC74();
  sub_1C43FCE30(v65);
  v66 = sub_1C456902C(&qword_1EC0C5B80, &qword_1C4F642B0);
  sub_1C43FFAE0(v66, v256);
  v245[32] = v67;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C43FBC74();
  sub_1C43FCE30(v69);
  v70 = sub_1C456902C(&qword_1EC0C5B88, &qword_1C4F642B8);
  sub_1C43FFAE0(v70, v255);
  v245[29] = v71;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBC74();
  sub_1C43FCE30(v73);
  v74 = sub_1C456902C(&qword_1EC0C5B90, &qword_1C4F642C0);
  sub_1C43FFAE0(v74, v254);
  v245[26] = v75;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FBC74();
  sub_1C43FCE30(v77);
  v78 = sub_1C456902C(&qword_1EC0C5B98, &qword_1C4F642C8);
  sub_1C43FFAE0(v78, v253);
  v245[23] = v79;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v80);
  sub_1C43FBC74();
  sub_1C43FCE30(v81);
  v82 = sub_1C456902C(&qword_1EC0C5BA0, &qword_1C4F642D0);
  sub_1C43FFAE0(v82, v252);
  v245[20] = v83;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FBC74();
  sub_1C43FCE30(v85);
  v86 = sub_1C456902C(&qword_1EC0C5BA8, &qword_1C4F642D8);
  sub_1C43FFAE0(v86, v251);
  v245[17] = v87;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v88);
  sub_1C43FBC74();
  sub_1C43FCE30(v89);
  v90 = sub_1C456902C(&qword_1EC0C5BB0, &qword_1C4F642E0);
  sub_1C43FFAE0(v90, v250);
  v245[14] = v91;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v92);
  sub_1C43FBC74();
  sub_1C43FCE30(v93);
  v94 = sub_1C456902C(&qword_1EC0C5BB8, &qword_1C4F642E8);
  sub_1C43FFAE0(v94, v249);
  v245[11] = v95;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v96);
  sub_1C43FBC74();
  sub_1C43FCE30(v97);
  v98 = sub_1C456902C(&qword_1EC0C5BC0, &qword_1C4F642F0);
  sub_1C43FFAE0(v98, v248);
  v245[8] = v99;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v100);
  sub_1C43FBC74();
  sub_1C43FCE30(v101);
  v102 = sub_1C456902C(&qword_1EC0C5BC8, &qword_1C4F642F8);
  sub_1C43FFAE0(v102, v247);
  v245[5] = v103;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v104);
  sub_1C43FBC74();
  sub_1C43FCE30(v105);
  v106 = sub_1C456902C(&qword_1EC0C5BD0, &qword_1C4F64300);
  sub_1C43FFAE0(v106, v246);
  v245[2] = v107;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v108);
  sub_1C43FBC74();
  sub_1C43FCE30(v109);
  v110 = sub_1C456902C(&qword_1EC0C5BD8, &qword_1C4F64308);
  sub_1C43FFAE0(v110, v261);
  v250[0] = v111;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v112);
  sub_1C43FBC74();
  sub_1C43FCE30(v113);
  v114 = sub_1C456902C(&qword_1EC0C5BE0, &qword_1C4F64310);
  sub_1C43FFAE0(v114, v262);
  v251[0] = v115;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v116);
  sub_1C43FBC74();
  sub_1C43FCE30(v117);
  v118 = sub_1C456902C(&qword_1EC0C5BE8, &qword_1C4F64318);
  sub_1C43FFAE0(v118, v263);
  v252[0] = v119;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v120);
  sub_1C43FBC74();
  sub_1C43FCE30(v121);
  v122 = sub_1C456902C(&qword_1EC0C5BF0, &qword_1C4F64320);
  sub_1C43FFAE0(v122, v264);
  v253[0] = v123;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v124);
  sub_1C43FBC74();
  sub_1C43FCE30(v125);
  v126 = sub_1C456902C(&qword_1EC0C5BF8, &qword_1C4F64328);
  sub_1C43FFAE0(v126, v265);
  v254[0] = v127;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v128);
  sub_1C43FBC74();
  sub_1C43FCE30(v129);
  v130 = sub_1C456902C(&qword_1EC0C5C00, &qword_1C4F64330);
  sub_1C43FFAE0(v130, v266);
  v255[0] = v131;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v132);
  sub_1C43FBC74();
  sub_1C43FCE30(v133);
  v134 = sub_1C456902C(&qword_1EC0C5C08, &qword_1C4F64338);
  sub_1C43FFAE0(v134, v267);
  v256[0] = v135;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v136);
  sub_1C43FBC74();
  sub_1C43FCE30(v137);
  v138 = sub_1C456902C(&qword_1EC0C5C10, &qword_1C4F64340);
  sub_1C43FFAE0(v138, v268);
  v257[0] = v139;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v140);
  sub_1C43FBC74();
  sub_1C43FCE30(v141);
  v142 = sub_1C456902C(&qword_1EC0C5C18, &qword_1C4F64348);
  sub_1C43FFAE0(v142, v269);
  v258[0] = v143;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v144);
  sub_1C43FBC74();
  sub_1C43FCE30(v145);
  v146 = sub_1C456902C(&qword_1EC0C5C20, &qword_1C4F64350);
  sub_1C43FFAE0(v146, v270);
  v259[0] = v147;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v148);
  sub_1C43FBC74();
  sub_1C43FCE30(v149);
  v150 = sub_1C456902C(&qword_1EC0C5C28, &qword_1C4F64358);
  sub_1C43FFAE0(v150, &a14);
  v270[1] = v151;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v152);
  sub_1C43FBC74();
  sub_1C43FCE30(v153);
  v154 = sub_1C456902C(&qword_1EC0C5C30, &qword_1C4F64360);
  sub_1C43FFAE0(v154, &a11);
  v269[1] = v155;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v156);
  sub_1C43FBC74();
  sub_1C43FCE30(v157);
  v158 = sub_1C456902C(&qword_1EC0C5C38, &qword_1C4F64368);
  sub_1C43FFAE0(v158, &v284);
  v268[1] = v159;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v160);
  sub_1C43FBC74();
  sub_1C43FCE30(v161);
  v162 = sub_1C456902C(&qword_1EC0C5C40, &qword_1C4F64370);
  sub_1C43FFAE0(v162, v271);
  v260[0] = v163;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v164);
  sub_1C43FBC74();
  sub_1C43FCE30(v165);
  v166 = sub_1C456902C(&qword_1EC0C5C48, &qword_1C4F64378);
  sub_1C43FFAE0(v166, v272);
  v261[0] = v167;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v168);
  sub_1C43FBC74();
  sub_1C43FCE30(v169);
  v170 = sub_1C456902C(&qword_1EC0C5C50, &qword_1C4F64380);
  sub_1C43FFAE0(v170, v273);
  v262[0] = v171;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v172);
  sub_1C43FBC74();
  sub_1C43FCE30(v173);
  v174 = sub_1C456902C(&qword_1EC0C5C58, &qword_1C4F64388);
  sub_1C43FFAE0(v174, v274);
  v263[0] = v175;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v176);
  sub_1C43FBC74();
  sub_1C43FCE30(v177);
  v178 = sub_1C456902C(&qword_1EC0C5C60, &qword_1C4F64390);
  sub_1C43FFAE0(v178, v275);
  v264[0] = v179;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v180);
  sub_1C43FBC74();
  sub_1C43FCE30(v181);
  v182 = sub_1C456902C(&qword_1EC0C5C68, &qword_1C4F64398);
  sub_1C43FFAE0(v182, v276);
  v265[0] = v183;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v184);
  sub_1C43FBC74();
  sub_1C43FCE30(v185);
  v186 = sub_1C456902C(&qword_1EC0C5C70, &qword_1C4F643A0);
  sub_1C43FFAE0(v186, &v277);
  v266[0] = v187;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v188);
  sub_1C43FBC74();
  sub_1C43FCE30(v189);
  v190 = sub_1C456902C(&qword_1EC0C5C78, &qword_1C4F643A8);
  sub_1C43FFAE0(v190, &v279);
  v266[2] = v191;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v192);
  sub_1C43FBD64();
  v193 = sub_1C456902C(&qword_1EC0C5C80, &qword_1C4F643B0);
  sub_1C43FCDF8();
  v267[1] = v194;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v195);
  sub_1C4440AD4();
  v196 = sub_1C456902C(&qword_1EC0C5C88, &qword_1C4F643B8);
  sub_1C43FCDF8();
  v267[2] = v197;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v198);
  v200 = v245 - v199;
  v280 = sub_1C456902C(&qword_1EC0C5C90, &unk_1C4F643C0);
  sub_1C43FCDF8();
  v278 = v201;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v202);
  sub_1C4418964();
  sub_1C4417F50(v27, v27[3]);
  sub_1C4CAB80C();
  sub_1C44A3AE8();
  sub_1C4F02BF8();
  v203 = *v277;
  v204 = *(v277 + 8);
  v205 = *(v277 + 9);
  v206 = *(v277 + 16);
  v207 = *(v277 + 24);
  v208 = (*(v277 + 10) << 16) | (*(v277 + 14) << 48);
  v209 = v204 | (v205 << 8);
  v210 = v209 | v208;
  switch(*(v277 + 32))
  {
    case 1:
      v228 = *(v277 + 16);
      LOBYTE(v282) = 11;
      sub_1C4CAC388();
      v213 = v279;
      v212 = v280;
      sub_1C44415FC();
      sub_1C4F02718();
      sub_1C4CB03C8();
      v229 = v281;
      sub_1C4F02798();
      if (!v229)
      {
        v282 = v228;
        sub_1C4459AE4();
        sub_1C456902C(&qword_1EC0C5608, &qword_1C4F627B8);
        sub_1C4CA8BA4();
        sub_1C44290E4();
        sub_1C44247E8();
        sub_1C4F027E8();
      }

      goto LABEL_21;
    case 2:
      v220 = v209 | v208;
      LOBYTE(v282) = 12;
      sub_1C4CAC334();
      v221 = v270[0];
      sub_1C4F02718();
      v282 = v203;
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C4402E98();
      sub_1C443D11C(v222);
      sub_1C44290E4();
      v223 = v270[2];
      sub_1C4485BDC();
      v224 = v281;
      sub_1C4F027E8();
      if (!v224)
      {
        v282 = v220;
        sub_1C4459AE4();
        sub_1C44290E4();
        sub_1C4485BDC();
        sub_1C4F027E8();
      }

      sub_1C43FFB20();
      v225(v221, v223);
      v218 = sub_1C43FE990();
      goto LABEL_31;
    case 3:
      LOBYTE(v282) = 36;
      sub_1C4CABAAC();
      v227 = v203;
      v193 = v279;
      v203 = v280;
      sub_1C44099B8();
      sub_1C4F02718();
      v282 = v227;
      v283 = v204 & 1;
      sub_1C4CAC778();
      sub_1C44290E4();
      sub_1C4455994();
      sub_1C4F027E8();
      if (!v21)
      {
        LOBYTE(v282) = v205;
        sub_1C4459AE4();
        sub_1C4CAC7CC();
        sub_1C44290E4();
        sub_1C4F027E8();
      }

      goto LABEL_29;
    case 4:
      v211 = *(v277 + 16);
      LOBYTE(v282) = 37;
      sub_1C4CABA58();
      v213 = v279;
      v212 = v280;
      sub_1C44415FC();
      sub_1C4F02718();
      sub_1C4CB03C8();
      v214 = v281;
      sub_1C4F02798();
      if (!v214)
      {
        v282 = v211;
        sub_1C4459AE4();
        sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
        sub_1C4402E98();
        sub_1C443D11C(v215);
        sub_1C44290E4();
        sub_1C44247E8();
        sub_1C4F027E8();
      }

LABEL_21:
      v230 = sub_1C43FD018();
      v231(v230);
      v219 = *(v278 + 8);
      v218 = v213;
      goto LABEL_22;
    case 5:
      sub_1C4CB03D4(38);
      sub_1C4CABA04();
      sub_1C44025F4(&_s10SignalTypeO33EntityRelevanceFeaturesCodingKeysON, &v282);
      sub_1C43FD2BC();
      sub_1C444ADBC();
      sub_1C4F02798();
      goto LABEL_29;
    case 6:
      sub_1C4CB03D4(40);
      sub_1C4CAB95C();
      sub_1C44025F4(&_s10SignalTypeO29PersonEntityTaggingCodingKeysON, &v282);
      sub_1C4CB03C8();
      sub_1C43FD2BC();
      sub_1C444ADBC();
      v232 = v281;
      sub_1C4F02798();
      if (!v232)
      {
        sub_1C4480434();
        sub_1C43FD258();
        sub_1C444ADBC();
        sub_1C4F02798();
      }

      goto LABEL_29;
    case 7:
      sub_1C4CB03D4(41);
      sub_1C4CAB908();
      sub_1C44025F4(&_s10SignalTypeO34PersonEntityTaggingFactsCodingKeysON, &v282);
      sub_1C43FD2BC();
      sub_1C444ADBC();
      sub_1C4F02798();
      goto LABEL_29;
    case 8:
      sub_1C4CB03D4(42);
      sub_1C4CAB8B4();
      sub_1C44025F4(&_s10SignalTypeO35PhotosPersonEntityTaggingCodingKeysON, &v282);
      sub_1C4CB03C8();
      sub_1C43FD2BC();
      sub_1C444ADBC();
      v233 = v281;
      sub_1C4F02798();
      if (!v233)
      {
        sub_1C4480434();
        sub_1C43FD258();
        sub_1C444ADBC();
        sub_1C4F02798();
      }

      goto LABEL_29;
    case 9:
      if (v207 | v206 | v203 | v210)
      {
        v216 = v207 | v206 | v210;
        if (v203 == 1 && !v216)
        {
          sub_1C4480434();
          sub_1C4CAC6D0();
          v203 = v280;
          sub_1C44099B8();
          sub_1C4F02718();
          sub_1C43FFB20();
          v217(v23, v193);
          v218 = sub_1C44018C0();
LABEL_30:
          v226 = v203;
          goto LABEL_31;
        }

        v212 = v280;
        if (v203 == 2 && !v216)
        {
          sub_1C44A3CF8();
          sub_1C4CAC67C();
          sub_1C44415FC();
          sub_1C4F02718();
          sub_1C43FFB20();
          v242 = v22;
          v243 = &v279;
          goto LABEL_62;
        }

        if (v203 == 3 && !v216)
        {
          LOBYTE(v282) = 3;
          sub_1C4CAC628();
          sub_1C4405498();
          sub_1C4F02718();
          v242 = sub_1C4412B8C();
          v243 = &v277;
          goto LABEL_62;
        }

        if (v203 == 4 && !v216)
        {
          LOBYTE(v282) = 4;
          sub_1C4CAC5D4();
          sub_1C4405498();
          sub_1C4F02718();
          v242 = sub_1C4412B8C();
          v243 = v276;
          goto LABEL_62;
        }

        if (v203 == 5 && !v216)
        {
          LOBYTE(v282) = 5;
          sub_1C4CAC580();
          sub_1C4405498();
          sub_1C4F02718();
          v242 = sub_1C4412B8C();
          v243 = v275;
          goto LABEL_62;
        }

        if (v203 == 6 && !v216)
        {
          LOBYTE(v282) = 6;
          sub_1C4CAC52C();
          sub_1C4405498();
          sub_1C4F02718();
          v242 = sub_1C4412B8C();
          v243 = v274;
          goto LABEL_62;
        }

        if (v203 == 7 && !v216)
        {
          LOBYTE(v282) = 7;
          sub_1C4CAC4D8();
          sub_1C4405498();
          sub_1C4F02718();
          v242 = sub_1C4412B8C();
          v243 = v273;
          goto LABEL_62;
        }

        if (v203 == 8 && !v216)
        {
          LOBYTE(v282) = 8;
          sub_1C4CAC484();
          sub_1C4405498();
          sub_1C4F02718();
          v242 = sub_1C4412B8C();
          v243 = v272;
          goto LABEL_62;
        }

        if (v203 == 9 && !v216)
        {
          LOBYTE(v282) = 9;
          sub_1C4CAC430();
          sub_1C4405498();
          sub_1C4F02718();
          v242 = sub_1C4412B8C();
          v243 = v271;
          goto LABEL_62;
        }

        if (v203 == 10 && !v216)
        {
          LOBYTE(v282) = 13;
          sub_1C4CAC2E0();
          sub_1C4405498();
          sub_1C4F02718();
          v242 = sub_1C4412B8C();
          v243 = v270;
LABEL_62:
          v241(v242, *(v243 - 32));
          v218 = sub_1C44018C0();
LABEL_22:
          v226 = v212;
LABEL_31:
          v219(v218, v226);
          goto LABEL_32;
        }

        if (v203 != 11 || v216)
        {
          if (v203 != 12 || v216)
          {
            if (v203 != 13 || v216)
            {
              if (v203 != 14 || v216)
              {
                if (v203 != 15 || v216)
                {
                  if (v203 != 16 || v216)
                  {
                    if (v203 != 17 || v216)
                    {
                      if (v203 != 18 || v216)
                      {
                        if (v203 != 19 || v216)
                        {
                          if (v203 != 20 || v216)
                          {
                            if (v203 != 21 || v216)
                            {
                              if (v203 != 22 || v216)
                              {
                                if (v203 != 23 || v216)
                                {
                                  if (v203 != 24 || v216)
                                  {
                                    if (v203 != 25 || v216)
                                    {
                                      if (v203 != 26 || v216)
                                      {
                                        if (v203 != 27 || v216)
                                        {
                                          if (v203 != 28 || v216)
                                          {
                                            if (v203 != 29 || v216)
                                            {
                                              if (v203 != 30 || v216)
                                              {
                                                if (v203 != 31 || v216)
                                                {
                                                  if (v203 != 32 || v216)
                                                  {
                                                    if (v203 != 33 || v216)
                                                    {
                                                      LOBYTE(v282) = 43;
                                                      sub_1C4CAB860();
                                                      sub_1C441F074(&_s10SignalTypeO39EntityRelevanceDataCollectionCodingKeysON, &v282);
                                                      v237 = sub_1C441E18C();
                                                      v244 = v260;
                                                    }

                                                    else
                                                    {
                                                      LOBYTE(v282) = 39;
                                                      sub_1C4CAB9B0();
                                                      sub_1C441F074(&_s10SignalTypeO34EntitySimilarityFeaturesCodingKeysON, &v282);
                                                      v237 = sub_1C441E18C();
                                                      v244 = v259;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    LOBYTE(v282) = 35;
                                                    sub_1C4CABBA8();
                                                    sub_1C441F074(&_s10SignalTypeO41VirtualInteractionsDistributionCodingKeysON, &v282);
                                                    v237 = sub_1C441E18C();
                                                    v244 = v258;
                                                  }
                                                }

                                                else
                                                {
                                                  LOBYTE(v282) = 34;
                                                  sub_1C4CABBFC();
                                                  sub_1C441F074(&_s10SignalTypeO17WorkoutCodingKeysON, &v282);
                                                  v237 = sub_1C441E18C();
                                                  v244 = v257;
                                                }
                                              }

                                              else
                                              {
                                                LOBYTE(v282) = 33;
                                                sub_1C4CABC50();
                                                sub_1C441F074(&_s10SignalTypeO31UserFocusComputedModeCodingKeysON, &v282);
                                                v237 = sub_1C441E18C();
                                                v244 = v256;
                                              }
                                            }

                                            else
                                            {
                                              LOBYTE(v282) = 32;
                                              sub_1C4CABCA4();
                                              sub_1C441F074(&_s10SignalTypeO21TimeAndDateCodingKeysON, &v282);
                                              v237 = sub_1C441E18C();
                                              v244 = v255;
                                            }
                                          }

                                          else
                                          {
                                            LOBYTE(v282) = 31;
                                            sub_1C4CABCF8();
                                            sub_1C441F074(&_s10SignalTypeO23SoundAnalysisCodingKeysON, &v282);
                                            v237 = sub_1C441E18C();
                                            v244 = v254;
                                          }
                                        }

                                        else
                                        {
                                          LOBYTE(v282) = 30;
                                          sub_1C4CABD4C();
                                          sub_1C441F074(&_s10SignalTypeO26SemanticLocationCodingKeysON, &v282);
                                          v237 = sub_1C441E18C();
                                          v244 = v253;
                                        }
                                      }

                                      else
                                      {
                                        LOBYTE(v282) = 29;
                                        sub_1C4CABDA0();
                                        sub_1C441F074(&_s10SignalTypeO22SameEmployerCodingKeysON, &v282);
                                        v237 = sub_1C441E18C();
                                        v244 = v252;
                                      }
                                    }

                                    else
                                    {
                                      LOBYTE(v282) = 28;
                                      sub_1C4CABDF4();
                                      sub_1C441F074(&_s10SignalTypeO21PoiCategoryCodingKeysON, &v282);
                                      v237 = sub_1C441E18C();
                                      v244 = v251;
                                    }
                                  }

                                  else
                                  {
                                    LOBYTE(v282) = 27;
                                    sub_1C4CABE48();
                                    sub_1C441F074(&_s10SignalTypeO24PhysicalSocialCodingKeysON, &v282);
                                    v237 = sub_1C441E18C();
                                    v244 = v250;
                                  }
                                }

                                else
                                {
                                  LOBYTE(v282) = 26;
                                  sub_1C4CABE9C();
                                  sub_1C441F074(&_s10SignalTypeO20PeopleNameCodingKeysON, &v282);
                                  v237 = sub_1C441E18C();
                                  v244 = v249;
                                }
                              }

                              else
                              {
                                LOBYTE(v282) = 25;
                                sub_1C4CABEF0();
                                sub_1C441F074(&_s10SignalTypeO21PeopleEmailCodingKeysON, &v282);
                                v237 = sub_1C441E18C();
                                v244 = v248;
                              }
                            }

                            else
                            {
                              LOBYTE(v282) = 24;
                              sub_1C4CABF44();
                              sub_1C441F074(&_s10SignalTypeO20NowPlayingCodingKeysON, &v282);
                              v237 = sub_1C441E18C();
                              v244 = v247;
                            }
                          }

                          else
                          {
                            LOBYTE(v282) = 23;
                            sub_1C4CABF98();
                            sub_1C441F074(&_s10SignalTypeO21MotionStateCodingKeysON, &v282);
                            v237 = sub_1C441E18C();
                            v244 = v246;
                          }
                        }

                        else
                        {
                          LOBYTE(v282) = 22;
                          sub_1C4CABFEC();
                          sub_1C441F074(&_s10SignalTypeO33MotionStateDistributionCodingKeysON, &v282);
                          v237 = sub_1C441E18C();
                          v244 = v261;
                        }
                      }

                      else
                      {
                        LOBYTE(v282) = 21;
                        sub_1C4CAC040();
                        sub_1C441F074(&_s10SignalTypeO23MicroLocationCodingKeysON, &v282);
                        v237 = sub_1C441E18C();
                        v244 = v262;
                      }
                    }

                    else
                    {
                      LOBYTE(v282) = 20;
                      sub_1C4CAC094();
                      sub_1C441F074(&_s10SignalTypeO26LocationMetadataCodingKeysON, &v282);
                      v237 = sub_1C441E18C();
                      v244 = v263;
                    }
                  }

                  else
                  {
                    LOBYTE(v282) = 19;
                    sub_1C4CAC0E8();
                    sub_1C441F074(&_s10SignalTypeO22InferredModeCodingKeysON, &v282);
                    v237 = sub_1C441E18C();
                    v244 = v264;
                  }
                }

                else
                {
                  LOBYTE(v282) = 18;
                  sub_1C4CAC13C();
                  sub_1C441F074(&_s10SignalTypeO31FamilyNameEquivalenceCodingKeysON, &v282);
                  v237 = sub_1C441E18C();
                  v244 = v265;
                }
              }

              else
              {
                LOBYTE(v282) = 17;
                sub_1C4CAC190();
                sub_1C441F074(&_s10SignalTypeO24DeviceWirelessCodingKeysON, &v282);
                v237 = sub_1C441E18C();
                v244 = v266;
              }
            }

            else
            {
              LOBYTE(v282) = 16;
              sub_1C4CAC1E4();
              sub_1C441F074(&_s10SignalTypeO21DevicePowerCodingKeysON, &v282);
              v237 = sub_1C441E18C();
              v244 = v267;
            }
          }

          else
          {
            LOBYTE(v282) = 15;
            sub_1C4CAC238();
            sub_1C441F074(&_s10SignalTypeO23DeviceDisplayCodingKeysON, &v282);
            v237 = sub_1C441E18C();
            v244 = v268;
          }
        }

        else
        {
          LOBYTE(v282) = 14;
          sub_1C4CAC28C();
          sub_1C441F074(&_s10SignalTypeO29ContactRelationshipCodingKeysON, &v282);
          v237 = sub_1C441E18C();
          v244 = v269;
        }

        v238 = *(v244 - 32);
      }

      else
      {
        LOBYTE(v282) = 0;
        sub_1C4CAC724();
        sub_1C44099B8();
        sub_1C4F02718();
        sub_1C43FFB20();
        v237 = v200;
        v238 = v196;
      }

      v236(v237, v238);
      v239 = sub_1C4404888();
      v240(v239);
LABEL_32:
      sub_1C43FBC80();
      return;
    default:
      LOBYTE(v282) = 10;
      sub_1C4CAC3DC();
      sub_1C44025F4(&_s10SignalTypeO26BehaviorSequenceCodingKeysON, &v282);
      LOBYTE(v282) = 0;
      sub_1C4455994();
      sub_1C4F027D8();
      if (!v21)
      {
        sub_1C447F604();
        sub_1C4F027B8();
        sub_1C44A3CF8();
        sub_1C4F027B8();
      }

LABEL_29:
      v234 = sub_1C43FE990();
      v235(v234);
      v219 = *(v278 + 8);
      v218 = v193;
      goto LABEL_30;
  }
}

void sub_1C4C9DE00()
{
  sub_1C43FBD3C();
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10) | (*(v0 + 14) << 32);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v2 | (v3 << 8) | (v4 << 16);
  switch(*(v0 + 32))
  {
    case 1:
      MEMORY[0x1C69417F0](11);
      sub_1C44A18A8();
      sub_1C4F01298();
      sub_1C43FE9F0();

      sub_1C47C95E4(v15, v16);
      return;
    case 2:
      MEMORY[0x1C69417F0](12);
      sub_1C49EFD8C();
      goto LABEL_19;
    case 3:
      MEMORY[0x1C69417F0](36);
      if (v2)
      {
        v1 = 1;
      }

      else
      {
        MEMORY[0x1C69417F0](0);
      }

      MEMORY[0x1C69417F0](v1);
      sub_1C4601534(v3);
      sub_1C4F01298();
      sub_1C43FE9F0();

      return;
    case 4:
      MEMORY[0x1C69417F0](37);
      sub_1C44A18A8();
      sub_1C4F01298();
LABEL_19:
      sub_1C43FE9F0();

      sub_1C49EFD8C();
      return;
    case 5:
      v14 = 38;
      goto LABEL_29;
    case 6:
      v18 = 40;
      goto LABEL_32;
    case 7:
      v14 = 41;
LABEL_29:
      MEMORY[0x1C69417F0](v14);
      sub_1C44A18A8();
      goto LABEL_33;
    case 8:
      v18 = 42;
LABEL_32:
      MEMORY[0x1C69417F0](v18);
      sub_1C44A18A8();
      sub_1C4F01298();
LABEL_33:
      sub_1C43FE9F0();

      sub_1C4F01298();
      return;
    case 9:
      if (v7 | v5 | v1 | v6)
      {
        v10 = v7 | v5 | v6;
        if (v1 == 1 && v10 == 0)
        {
          v12 = 1;
        }

        else if (v1 != 2 || v10)
        {
          if (v1 != 3 || v10)
          {
            if (v1 != 4 || v10)
            {
              if (v1 != 5 || v10)
              {
                if (v1 != 6 || v10)
                {
                  if (v1 != 7 || v10)
                  {
                    if (v1 != 8 || v10)
                    {
                      if (v1 != 9 || v10)
                      {
                        if (v1 != 10 || v10)
                        {
                          if (v1 != 11 || v10)
                          {
                            if (v1 != 12 || v10)
                            {
                              if (v1 != 13 || v10)
                              {
                                if (v1 != 14 || v10)
                                {
                                  if (v1 != 15 || v10)
                                  {
                                    if (v1 != 16 || v10)
                                    {
                                      if (v1 != 17 || v10)
                                      {
                                        if (v1 != 18 || v10)
                                        {
                                          if (v1 != 19 || v10)
                                          {
                                            if (v1 != 20 || v10)
                                            {
                                              if (v1 != 21 || v10)
                                              {
                                                if (v1 != 22 || v10)
                                                {
                                                  if (v1 != 23 || v10)
                                                  {
                                                    if (v1 != 24 || v10)
                                                    {
                                                      if (v1 != 25 || v10)
                                                      {
                                                        if (v1 != 26 || v10)
                                                        {
                                                          if (v1 != 27 || v10)
                                                          {
                                                            if (v1 != 28 || v10)
                                                            {
                                                              if (v1 != 29 || v10)
                                                              {
                                                                if (v1 != 30 || v10)
                                                                {
                                                                  if (v1 != 31 || v10)
                                                                  {
                                                                    if (v1 != 32 || v10)
                                                                    {
                                                                      if (v1 != 33 || v10)
                                                                      {
                                                                        v12 = 43;
                                                                      }

                                                                      else
                                                                      {
                                                                        v12 = 39;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v12 = 35;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v12 = 34;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v12 = 33;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v12 = 32;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v12 = 31;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v12 = 30;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v12 = 29;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v12 = 28;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v12 = 27;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v12 = 26;
                                                  }
                                                }

                                                else
                                                {
                                                  v12 = 25;
                                                }
                                              }

                                              else
                                              {
                                                v12 = 24;
                                              }
                                            }

                                            else
                                            {
                                              v12 = 23;
                                            }
                                          }

                                          else
                                          {
                                            v12 = 22;
                                          }
                                        }

                                        else
                                        {
                                          v12 = 21;
                                        }
                                      }

                                      else
                                      {
                                        v12 = 20;
                                      }
                                    }

                                    else
                                    {
                                      v12 = 19;
                                    }
                                  }

                                  else
                                  {
                                    v12 = 18;
                                  }
                                }

                                else
                                {
                                  v12 = 17;
                                }
                              }

                              else
                              {
                                v12 = 16;
                              }
                            }

                            else
                            {
                              v12 = 15;
                            }
                          }

                          else
                          {
                            v12 = 14;
                          }
                        }

                        else
                        {
                          v12 = 13;
                        }
                      }

                      else
                      {
                        v12 = 9;
                      }
                    }

                    else
                    {
                      v12 = 8;
                    }
                  }

                  else
                  {
                    v12 = 7;
                  }
                }

                else
                {
                  v12 = 6;
                }
              }

              else
              {
                v12 = 5;
              }
            }

            else
            {
              v12 = 4;
            }
          }

          else
          {
            v12 = 3;
          }
        }

        else
        {
          v12 = 2;
        }
      }

      else
      {
        v12 = 0;
      }

      MEMORY[0x1C69417F0](v12);
      goto LABEL_43;
    default:
      MEMORY[0x1C69417F0](10);
      MEMORY[0x1C69417F0](v1);
      if (v4 & 0x7FF000000000 | v7 & 0xFFFFFFFFFFFFFLL)
      {
        v8 = v2 | (v3 << 8) | (v4 << 16);
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x1C6941830](v8);
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x1C6941830](v9);
LABEL_43:
      sub_1C43FE9F0();
      return;
  }
}

uint64_t sub_1C4C9E2F4(uint64_t a1)
{
  sub_1C441EC18(a1);
  sub_1C4C9DE00();
  return sub_1C4F02B68();
}

void sub_1C4C9E32C()
{
  sub_1C43FE628();
  v424 = v0;
  v3 = v2;
  v418 = v4;
  v5 = sub_1C456902C(&qword_1EC0C59B8, &qword_1C4F640F8);
  sub_1C43FFAE0(v5, &v408);
  v392[0] = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v415 = v8;
  v9 = sub_1C456902C(&qword_1EC0C59C0, &qword_1C4F64100);
  sub_1C43FFAE0(v9, &v410);
  v419 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v416 = v12;
  v13 = sub_1C456902C(&qword_1EC0C59C8, &qword_1C4F64108);
  sub_1C43FFAE0(v13, &v407);
  v391 = v14;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBC74();
  sub_1C44D3E34(v16);
  v17 = sub_1C456902C(&qword_1EC0C59D0, &qword_1C4F64110);
  sub_1C43FFAE0(v17, &v409);
  v390 = v18;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  v417 = v20;
  v21 = sub_1C456902C(&qword_1EC0C59D8, &qword_1C4F64118);
  sub_1C43FFAE0(v21, &v403);
  v385[1] = v22;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBC74();
  v411 = v24;
  v25 = sub_1C456902C(&qword_1EC0C59E0, &qword_1C4F64120);
  sub_1C43FFAE0(v25, &v405);
  v386[0] = v26;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBC74();
  v412 = v28;
  v29 = sub_1C456902C(&qword_1EC0C59E8, &qword_1C4F64128);
  sub_1C43FFAE0(v29, &v406);
  v388[1] = v30;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBC74();
  v413 = v32;
  v33 = sub_1C456902C(&qword_1EC0C59F0, &qword_1C4F64130);
  sub_1C43FFAE0(v33, &v404);
  v386[1] = v34;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  v410 = v36;
  v37 = sub_1C456902C(&qword_1EC0C59F8, &qword_1C4F64138);
  sub_1C43FFAE0(v37, &v402);
  v384[1] = v38;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  v409 = v40;
  v41 = sub_1C456902C(&qword_1EC0C5A00, &qword_1C4F64140);
  sub_1C43FFAE0(v41, &v401);
  v383[1] = v42;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBC74();
  v408 = v44;
  v45 = sub_1C456902C(&qword_1EC0C5A08, &qword_1C4F64148);
  sub_1C43FFAE0(v45, &v400);
  v382[1] = v46;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBC74();
  sub_1C43FCE30(v48);
  v49 = sub_1C456902C(&qword_1EC0C5A10, &qword_1C4F64150);
  sub_1C43FFAE0(v49, &v399);
  v381[1] = v50;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBC74();
  sub_1C43FCE30(v52);
  v53 = sub_1C456902C(&qword_1EC0C5A18, &qword_1C4F64158);
  sub_1C43FFAE0(v53, v398);
  v380[1] = v54;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBC74();
  sub_1C43FCE30(v56);
  v57 = sub_1C456902C(&qword_1EC0C5A20, &qword_1C4F64160);
  sub_1C43FFAE0(v57, &v397);
  v379[1] = v58;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBC74();
  sub_1C43FCE30(v60);
  v61 = sub_1C456902C(&qword_1EC0C5A28, &qword_1C4F64168);
  sub_1C43FFAE0(v61, &v396);
  v378[2] = v62;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBC74();
  sub_1C43FCE30(v64);
  v65 = sub_1C456902C(&qword_1EC0C5A30, &qword_1C4F64170);
  sub_1C43FFAE0(v65, &v395);
  v378[0] = v66;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBC74();
  sub_1C43FCE30(v68);
  v69 = sub_1C456902C(&qword_1EC0C5A38, &qword_1C4F64178);
  sub_1C43FFAE0(v69, &v394);
  v377[0] = v70;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FBC74();
  sub_1C43FCE30(v72);
  v73 = sub_1C456902C(&qword_1EC0C5A40, &qword_1C4F64180);
  sub_1C43FFAE0(v73, v393);
  v376[0] = v74;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBC74();
  sub_1C43FCE30(v76);
  v77 = sub_1C456902C(&qword_1EC0C5A48, &qword_1C4F64188);
  sub_1C43FFAE0(v77, v392);
  v375[0] = v78;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBC74();
  sub_1C43FCE30(v80);
  v81 = sub_1C456902C(&qword_1EC0C5A50, &qword_1C4F64190);
  sub_1C43FFAE0(v81, &v391);
  v373[1] = v82;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C43FBC74();
  sub_1C43FCE30(v84);
  v85 = sub_1C456902C(&qword_1EC0C5A58, &qword_1C4F64198);
  sub_1C43FFAE0(v85, &v389);
  v372[1] = v86;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v87);
  sub_1C43FBC74();
  sub_1C43FCE30(v88);
  v89 = sub_1C456902C(&qword_1EC0C5A60, &qword_1C4F641A0);
  sub_1C43FFAE0(v89, v388);
  v371[1] = v90;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v91);
  sub_1C43FBC74();
  sub_1C43FCE30(v92);
  v93 = sub_1C456902C(&qword_1EC0C5A68, &qword_1C4F641A8);
  sub_1C43FFAE0(v93, &v387);
  v370[1] = v94;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v95);
  sub_1C43FBC74();
  sub_1C43FCE30(v96);
  v97 = sub_1C456902C(&qword_1EC0C5A70, &qword_1C4F641B0);
  sub_1C43FFAE0(v97, v386);
  v369[1] = v98;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v99);
  sub_1C43FBC74();
  sub_1C43FCE30(v100);
  v101 = sub_1C456902C(&qword_1EC0C5A78, &qword_1C4F641B8);
  sub_1C43FFAE0(v101, v385);
  v368[1] = v102;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v103);
  sub_1C43FBC74();
  sub_1C43FCE30(v104);
  v105 = sub_1C456902C(&qword_1EC0C5A80, &qword_1C4F641C0);
  sub_1C43FFAE0(v105, v384);
  v367[1] = v106;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v107);
  sub_1C43FBC74();
  sub_1C43FCE30(v108);
  v109 = sub_1C456902C(&qword_1EC0C5A88, &qword_1C4F641C8);
  sub_1C43FFAE0(v109, v383);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v110);
  sub_1C43FBC74();
  sub_1C43FCE30(v111);
  v112 = sub_1C456902C(&qword_1EC0C5A90, &qword_1C4F641D0);
  sub_1C43FFAE0(v112, v382);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v113);
  sub_1C43FBC74();
  sub_1C43FCE30(v114);
  v115 = sub_1C456902C(&qword_1EC0C5A98, &qword_1C4F641D8);
  sub_1C43FFAE0(v115, v380);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v116);
  sub_1C43FBC74();
  sub_1C43FCE30(v117);
  v118 = sub_1C456902C(&qword_1EC0C5AA0, &qword_1C4F641E0);
  sub_1C43FFAE0(v118, v379);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v119);
  sub_1C43FBC74();
  sub_1C43FCE30(v120);
  v121 = sub_1C456902C(&qword_1EC0C5AA8, &qword_1C4F641E8);
  sub_1C43FFAE0(v121, v377);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v122);
  sub_1C43FBC74();
  sub_1C43FCE30(v123);
  v124 = sub_1C456902C(&qword_1EC0C5AB0, &qword_1C4F641F0);
  sub_1C43FFAE0(v124, v381);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v125);
  sub_1C43FBC74();
  sub_1C43FCE30(v126);
  v127 = sub_1C456902C(&qword_1EC0C5AB8, &qword_1C4F641F8);
  sub_1C43FFAE0(v127, v376);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v128);
  sub_1C43FBC74();
  v422 = v129;
  v130 = sub_1C456902C(&qword_1EC0C5AC0, &qword_1C4F64200);
  sub_1C43FFAE0(v130, v378);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v131);
  sub_1C43FBC74();
  v421 = v132;
  v133 = sub_1C456902C(&qword_1EC0C5AC8, &qword_1C4F64208);
  sub_1C43FFAE0(v133, v375);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v134);
  sub_1C43FBC74();
  v420 = v135;
  v136 = sub_1C456902C(&qword_1EC0C5AD0, &qword_1C4F64210);
  sub_1C43FFAE0(v136, &v374);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v137);
  sub_1C43FBC74();
  sub_1C43FCE30(v138);
  v139 = sub_1C456902C(&qword_1EC0C5AD8, &qword_1C4F64218);
  sub_1C43FFAE0(v139, v373);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v140);
  sub_1C43FBC74();
  sub_1C43FCE30(v141);
  v142 = sub_1C456902C(&qword_1EC0C5AE0, &qword_1C4F64220);
  sub_1C43FFAE0(v142, v372);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v143);
  sub_1C43FBC74();
  sub_1C43FCE30(v144);
  v145 = sub_1C456902C(&qword_1EC0C5AE8, &qword_1C4F64228);
  sub_1C43FFAE0(v145, v371);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v146);
  sub_1C43FBC74();
  sub_1C43FCE30(v147);
  v148 = sub_1C456902C(&qword_1EC0C5AF0, &qword_1C4F64230);
  sub_1C43FFAE0(v148, v370);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v149);
  sub_1C43FBC74();
  sub_1C43FCE30(v150);
  v151 = sub_1C456902C(&qword_1EC0C5AF8, &qword_1C4F64238);
  sub_1C43FFAE0(v151, v369);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v152);
  sub_1C43FBC74();
  sub_1C43FCE30(v153);
  v154 = sub_1C456902C(&qword_1EC0C5B00, &qword_1C4F64240);
  sub_1C43FFAE0(v154, v368);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v155);
  sub_1C43FBC74();
  sub_1C43FCE30(v156);
  v157 = sub_1C456902C(&qword_1EC0C5B08, &qword_1C4F64248);
  sub_1C43FFAE0(v157, v367);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v158);
  sub_1C43FBD64();
  v159 = sub_1C456902C(&qword_1EC0C5B10, &qword_1C4F64250);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v160);
  sub_1C440A474();
  v161 = sub_1C456902C(&qword_1EC0C5B18, &qword_1C4F64258);
  sub_1C43FCDF8();
  v163 = v162;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v164);
  sub_1C4401780();
  v166 = v3[3];
  v165 = v3[4];
  v423 = v3;
  sub_1C4417F50(v3, v166);
  sub_1C4CAB80C();
  sub_1C4475644();
  v167 = *&v424;
  sub_1C4F02BC8();
  if (!v167)
  {
    v365 = v159;
    v168 = v420;
    v169 = v421;
    v170 = v422;
    v424 = v163;
    v171 = v1;
    sub_1C4F026E8();
    v175 = sub_1C4570934();
    if (v173 != v174 >> 1)
    {
      if (v173 >= (v174 >> 1))
      {
        __break(1u);
LABEL_57:
        v359 = v176;
        swift_unknownObjectRelease();
        v360 = sub_1C4416528();
        v361(v360, v169);
        v362 = sub_1C43FE5F8();
        v363(v362);
        v183 = 0;
        LOBYTE(v170) = 0;
        v161 = *&v422;
        v171 = v359;
LABEL_55:
        v338 = v418;
        sub_1C440962C(v175);
        *v338 = v165;
        *(v338 + 8) = v161;
        *(v338 + 16) = v171;
        *(v338 + 24) = v183;
        *(v338 + 32) = LOBYTE(v170);
        goto LABEL_9;
      }

      v364 = *(v172 + v173);
      *&v177 = COERCE_DOUBLE(sub_1C4570928(v173 + 1, v174 >> 1, v175, v172));
      v179 = v178;
      v181 = v180;
      swift_unknownObjectRelease();
      v182 = *&v177;
      if (v179 == v181 >> 1)
      {
        v165 = v167;
        v183 = v419;
        switch(v364)
        {
          case 1:
            sub_1C4480434();
            sub_1C4CAC6D0();
            sub_1C442E69C(&_s10SignalTypeO22InstalledAppCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v258 = sub_1C440570C();
            v259(v258);
            v260 = sub_1C4433968();
            v261(v260);
            sub_1C44261A8();
            v165 = 1;
            goto LABEL_54;
          case 2:
            sub_1C44A3CF8();
            sub_1C4CAC67C();
            sub_1C442E69C(&_s10SignalTypeO34MatchingWorkEmailAddressCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v242 = sub_1C440570C();
            v243(v242);
            v244 = sub_1C4433968();
            v245(v244);
            sub_1C44261A8();
            v165 = 2;
            goto LABEL_54;
          case 3:
            LOBYTE(v427) = 3;
            sub_1C4CAC628();
            sub_1C442E69C(&_s10SignalTypeO30MessagingInteractionCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v250 = sub_1C440570C();
            v251(v250);
            v252 = sub_1C4433968();
            v253(v252);
            sub_1C44261A8();
            v165 = 3;
            goto LABEL_54;
          case 4:
            LOBYTE(v427) = 4;
            sub_1C4CAC5D4();
            sub_1C442E69C(&_s10SignalTypeO25ModeInteractionCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v225 = sub_1C440570C();
            v226(v225);
            v227 = sub_1C4433968();
            v228(v227);
            sub_1C44261A8();
            v165 = 4;
            goto LABEL_54;
          case 5:
            LOBYTE(v427) = 5;
            sub_1C4CAC580();
            sub_1C442E69C(&_s10SignalTypeO26ActivityIntervalCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v275 = sub_1C440570C();
            v276(v275);
            v277 = sub_1C4433968();
            v278(v277);
            sub_1C44261A8();
            v165 = 5;
            goto LABEL_54;
          case 6:
            LOBYTE(v427) = 6;
            sub_1C4CAC52C();
            sub_1C442E69C(&_s10SignalTypeO34AmbientLightDistributionCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v287 = sub_1C440570C();
            v288(v287);
            v289 = sub_1C4433968();
            v290(v289);
            sub_1C44261A8();
            v165 = 6;
            goto LABEL_54;
          case 7:
            LOBYTE(v427) = 7;
            sub_1C4CAC4D8();
            sub_1C442E69C(&_s10SignalTypeO22AmbientLightCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v254 = sub_1C440570C();
            v255(v254);
            v256 = sub_1C4433968();
            v257(v256);
            sub_1C44261A8();
            v165 = 7;
            goto LABEL_54;
          case 8:
            LOBYTE(v427) = 8;
            sub_1C4CAC484();
            sub_1C442E69C(&_s10SignalTypeO33AppCategoryDistributionCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v296 = sub_1C440570C();
            v297(v296);
            v298 = sub_1C4433968();
            v299(v298);
            sub_1C44261A8();
            v165 = 8;
            goto LABEL_54;
          case 9:
            LOBYTE(v427) = 9;
            sub_1C4CAC430();
            sub_1C44099B8();
            sub_1C4F025E8();
            swift_unknownObjectRelease();
            sub_1C43FFB20();
            v231(*&v168);
            v232 = sub_1C4433968();
            v233(v232);
            v161 = 0;
            sub_1C445FEF0();
            v165 = 9;
            goto LABEL_24;
          case 10:
            LOBYTE(v427) = 10;
            sub_1C4CAC3DC();
            sub_1C44099B8();
            sub_1C4F025E8();
            LOBYTE(v427) = 0;
            v169 = v366;
            v295 = sub_1C4F026B8();
            v175 = v423;
            v165 = v295;
            sub_1C447F604();
            v422 = sub_1C4F02698();
            sub_1C44A3CF8();
            v176 = sub_1C4F02698();
            goto LABEL_57;
          case 11:
            LOBYTE(v427) = 11;
            sub_1C4CAC388();
            sub_1C44099B8();
            sub_1C4F025E8();
            sub_1C44884BC();
            sub_1C44EC86C();
            sub_1C44A3C18();
            sub_1C4F02678();
            v175 = v423;
            v224 = v424;
            sub_1C442A778();
            sub_1C456902C(&qword_1EC0C5608, &qword_1C4F627B8);
            LOBYTE(v425) = 1;
            sub_1C4CA8A40();
            sub_1C445AB2C();
            sub_1C44A3C18();
            sub_1C4F026C8();
            swift_unknownObjectRelease();
            v355 = sub_1C43FE990();
            v356(v355);
            (*(*&v224 + 8))(COERCE_DOUBLE(*&v420), v421);
            v183 = 0;
            v171 = *&v427;
            LOBYTE(v170) = 1;
            goto LABEL_55;
          case 12:
            LOBYTE(v427) = 12;
            sub_1C4CAC334();
            v229 = *&v398[1];
            sub_1C44099B8();
            sub_1C4F025E8();
            v420 = v171;
            v421 = v161;
            sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
            LOBYTE(v425) = 0;
            sub_1C4416F78();
            v183 = sub_1C443D11C(v230);
            sub_1C445AB2C();
            v171 = v229;
            sub_1C4F026C8();
            v175 = v423;
            v170 = v424;
            v165 = v427;
            v426 = 1;
            sub_1C4F026C8();
            swift_unknownObjectRelease();
            v357 = sub_1C4416528();
            v358(v357);
            (*(*&v170 + 8))(COERCE_DOUBLE(*&v420), v421);
            sub_1C445FEF0();
            v161 = v425;
            LOBYTE(v170) = 2;
            goto LABEL_55;
          case 13:
            LOBYTE(v427) = 13;
            sub_1C4CAC2E0();
            sub_1C442E69C(&_s10SignalTypeO17CarPlayCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v283 = sub_1C440570C();
            v284(v283);
            v285 = sub_1C4433968();
            v286(v285);
            sub_1C44261A8();
            v165 = 10;
            goto LABEL_54;
          case 14:
            LOBYTE(v427) = 14;
            sub_1C4CAC28C();
            sub_1C442E69C(&_s10SignalTypeO29ContactRelationshipCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v216 = sub_1C440570C();
            v217(v216);
            v218 = sub_1C4433968();
            v219(v218);
            sub_1C44261A8();
            v165 = 11;
            goto LABEL_54;
          case 15:
            LOBYTE(v427) = 15;
            sub_1C4CAC238();
            sub_1C442E69C(&_s10SignalTypeO23DeviceDisplayCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v246 = sub_1C440570C();
            v247(v246);
            v248 = sub_1C4433968();
            v249(v248);
            sub_1C44261A8();
            v165 = 12;
            goto LABEL_54;
          case 16:
            LOBYTE(v427) = 16;
            sub_1C4CAC1E4();
            sub_1C442E69C(&_s10SignalTypeO21DevicePowerCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v212 = sub_1C440570C();
            v213(v212);
            v214 = sub_1C4433968();
            v215(v214);
            sub_1C44261A8();
            v165 = 13;
            goto LABEL_54;
          case 17:
            LOBYTE(v427) = 17;
            sub_1C4CAC190();
            sub_1C442E69C(&_s10SignalTypeO24DeviceWirelessCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v266 = sub_1C440570C();
            v267(v266, v367[0]);
            v268 = sub_1C4433968();
            v269(v268);
            sub_1C44261A8();
            v165 = 14;
            goto LABEL_54;
          case 18:
            LOBYTE(v427) = 18;
            sub_1C4CAC13C();
            sub_1C442E69C(&_s10SignalTypeO31FamilyNameEquivalenceCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v291 = sub_1C440570C();
            v292(v291, v368[0]);
            v293 = sub_1C4433968();
            v294(v293);
            sub_1C44261A8();
            v165 = 15;
            goto LABEL_54;
          case 19:
            LOBYTE(v427) = 19;
            sub_1C4CAC0E8();
            sub_1C442E69C(&_s10SignalTypeO22InferredModeCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v316 = sub_1C440570C();
            v317(v316, v369[0]);
            v318 = sub_1C4433968();
            v319(v318);
            sub_1C44261A8();
            v165 = 16;
            goto LABEL_54;
          case 20:
            LOBYTE(v427) = 20;
            sub_1C4CAC094();
            sub_1C442E69C(&_s10SignalTypeO26LocationMetadataCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v271 = sub_1C440570C();
            v272(v271, v370[0]);
            v273 = sub_1C4433968();
            v274(v273);
            sub_1C44261A8();
            v165 = 17;
            goto LABEL_54;
          case 21:
            LOBYTE(v427) = 21;
            sub_1C4CAC040();
            sub_1C442E69C(&_s10SignalTypeO23MicroLocationCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v279 = sub_1C440570C();
            v280(v279, v371[0]);
            v281 = sub_1C4433968();
            v282(v281);
            sub_1C44261A8();
            v165 = 18;
            goto LABEL_54;
          case 22:
            LOBYTE(v427) = 22;
            sub_1C4CABFEC();
            sub_1C442E69C(&_s10SignalTypeO33MotionStateDistributionCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v308 = sub_1C440570C();
            v309(v308, v372[0]);
            v310 = sub_1C4433968();
            v311(v310);
            sub_1C44261A8();
            v165 = 19;
            goto LABEL_54;
          case 23:
            LOBYTE(v427) = 23;
            sub_1C4CABF98();
            sub_1C442E69C(&_s10SignalTypeO21MotionStateCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v321 = sub_1C440570C();
            v322(v321, v373[0]);
            v323 = sub_1C4433968();
            v324(v323);
            sub_1C44261A8();
            v165 = 20;
            goto LABEL_54;
          case 24:
            LOBYTE(v427) = 24;
            sub_1C4CABF44();
            sub_1C442E69C(&_s10SignalTypeO20NowPlayingCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v238 = sub_1C440570C();
            v239(v238, v374);
            v240 = sub_1C4433968();
            v241(v240);
            sub_1C44261A8();
            v165 = 21;
            goto LABEL_54;
          case 25:
            LOBYTE(v427) = 25;
            sub_1C4CABEF0();
            sub_1C442E69C(&_s10SignalTypeO21PeopleEmailCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v234 = sub_1C440570C();
            v235(v234, v375[1]);
            v236 = sub_1C4433968();
            v237(v236);
            sub_1C44261A8();
            v165 = 22;
            goto LABEL_54;
          case 26:
            LOBYTE(v427) = 26;
            sub_1C4CABE9C();
            sub_1C442E69C(&_s10SignalTypeO20PeopleNameCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v334 = sub_1C440570C();
            v335(v334, v376[1]);
            v336 = sub_1C4433968();
            v337(v336);
            sub_1C44261A8();
            v165 = 23;
            goto LABEL_54;
          case 27:
            LOBYTE(v427) = 27;
            sub_1C4CABE48();
            sub_1C442E69C(&_s10SignalTypeO24PhysicalSocialCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v204 = sub_1C440570C();
            v205(v204, v377[1]);
            v206 = sub_1C4433968();
            v207(v206);
            sub_1C44261A8();
            v165 = 24;
            goto LABEL_54;
          case 28:
            LOBYTE(v427) = 28;
            sub_1C4CABDF4();
            sub_1C442E69C(&_s10SignalTypeO21PoiCategoryCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v325 = sub_1C440570C();
            v326(v325, v378[1]);
            v327 = sub_1C4433968();
            v328(v327);
            sub_1C44261A8();
            v165 = 25;
            goto LABEL_54;
          case 29:
            LOBYTE(v427) = 29;
            sub_1C4CABDA0();
            sub_1C442E69C(&_s10SignalTypeO22SameEmployerCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v329 = sub_1C440570C();
            v330(v329, v379[0]);
            v331 = sub_1C4433968();
            v332(v331);
            sub_1C44261A8();
            v165 = 26;
            goto LABEL_54;
          case 30:
            LOBYTE(v427) = 30;
            sub_1C4CABD4C();
            sub_1C442E69C(&_s10SignalTypeO26SemanticLocationCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v300 = sub_1C440570C();
            v301(v300, v380[0]);
            v302 = sub_1C4433968();
            v303(v302);
            sub_1C44261A8();
            v165 = 27;
            goto LABEL_54;
          case 31:
            LOBYTE(v427) = 31;
            sub_1C4CABCF8();
            sub_1C442E69C(&_s10SignalTypeO23SoundAnalysisCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v262 = sub_1C440570C();
            v263(v262, v381[0]);
            v264 = sub_1C4433968();
            v265(v264);
            sub_1C44261A8();
            v165 = 28;
            goto LABEL_54;
          case 32:
            LOBYTE(v427) = 32;
            sub_1C4CABCA4();
            sub_1C442E69C(&_s10SignalTypeO21TimeAndDateCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v304 = sub_1C440570C();
            v305(v304, v382[0]);
            v306 = sub_1C4433968();
            v307(v306);
            sub_1C44261A8();
            v165 = 29;
            goto LABEL_54;
          case 33:
            LOBYTE(v427) = 33;
            sub_1C4CABC50();
            sub_1C442E69C(&_s10SignalTypeO31UserFocusComputedModeCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v220 = sub_1C440570C();
            v221(v220, v383[0]);
            v222 = sub_1C4433968();
            v223(v222);
            sub_1C44261A8();
            v165 = 30;
            goto LABEL_54;
          case 34:
            LOBYTE(v427) = 34;
            sub_1C4CABBFC();
            v183 = v408;
            sub_1C4426F2C(&_s10SignalTypeO17WorkoutCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v208 = sub_1C440570C();
            v209(v208, v384[0]);
            v210 = sub_1C4433968();
            v211(v210);
            sub_1C44261A8();
            v165 = 31;
            goto LABEL_54;
          case 35:
            LOBYTE(v427) = 35;
            sub_1C4CABBA8();
            v183 = v409;
            sub_1C4426F2C(&_s10SignalTypeO41VirtualInteractionsDistributionCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v199 = sub_1C440570C();
            v200(v199, v385[0]);
            v201 = sub_1C4433968();
            v202(v201);
            sub_1C44261A8();
            v165 = 32;
            goto LABEL_54;
          case 36:
            LOBYTE(v427) = 36;
            sub_1C4CABAAC();
            v170 = v410;
            sub_1C44099B8();
            sub_1C4F025E8();
            LOBYTE(v425) = 0;
            sub_1C4CABB00();
            sub_1C445AB2C();
            sub_1C44415FC();
            sub_1C4F026C8();
            v175 = v423;
            v203 = v424;
            v171 = v170;
            v165 = v427;
            *&v422 = v428;
            v426 = 1;
            sub_1C4CABB54();
            sub_1C44099B8();
            sub_1C4F026C8();
            swift_unknownObjectRelease();
            v351 = sub_1C4404888();
            v352(v351);
            v183 = *&v203 + 8;
            v353 = sub_1C43FE990();
            v354(v353);
            sub_1C445FEF0();
            v161 = *&v422 | (v425 << 8);
            LOBYTE(v170) = 3;
            goto LABEL_55;
          case 37:
            LOBYTE(v427) = 37;
            sub_1C4CABA58();
            sub_1C4426F2C(&_s10SignalTypeO43EntityRelevanceContextualFeaturesCodingKeysON, &v427);
            sub_1C44884BC();
            sub_1C44EC86C();
            sub_1C4F02678();
            v175 = v423;
            v198 = v424;
            sub_1C442A778();
            sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
            LOBYTE(v425) = 1;
            sub_1C4416F78();
            sub_1C443D11C(v339);
            sub_1C445AB2C();
            sub_1C4F026C8();
            swift_unknownObjectRelease();
            v349 = sub_1C4416528();
            v350(v349, *&v170);
            (*(*&v198 + 8))(COERCE_DOUBLE(*&v420), v421);
            v183 = 0;
            v171 = *&v427;
            LOBYTE(v170) = 4;
            goto LABEL_55;
          case 38:
            LOBYTE(v427) = 38;
            sub_1C4CABA04();
            v183 = v412;
            v333 = sub_1C4426F2C(&_s10SignalTypeO33EntityRelevanceFeaturesCodingKeysON, &v427);
            v421 = v161;
            sub_1C4CB0440(v333);
            v175 = v423;
            v171 = v424;
            sub_1C442A778();
            swift_unknownObjectRelease();
            v345 = sub_1C440570C();
            v346(v345, v169);
            v347 = sub_1C447F880();
            v348(v347);
            sub_1C445FEF0();
            LOBYTE(v170) = 5;
            goto LABEL_55;
          case 39:
            LOBYTE(v427) = 39;
            sub_1C4CAB9B0();
            v183 = v411;
            sub_1C4426F2C(&_s10SignalTypeO34EntitySimilarityFeaturesCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v312 = sub_1C440570C();
            v313(v312, v387);
            v314 = sub_1C4433968();
            v315(v314);
            sub_1C44261A8();
            v165 = 33;
            goto LABEL_54;
          case 40:
            LOBYTE(v427) = 40;
            sub_1C4CAB95C();
            sub_1C44099B8();
            sub_1C4F025E8();
            sub_1C44884BC();
            v183 = v393[0];
            sub_1C44A3C18();
            sub_1C4F02678();
            v175 = v423;
            v170 = v424;
            sub_1C442A778();
            sub_1C447F604();
            sub_1C44A3C18();
            sub_1C4F02678();
            v340 = (v390 + 8);
            sub_1C44106D4();
            swift_unknownObjectRelease();
            (*v340)(v417, v393[0]);
            (*(*&v170 + 8))(COERCE_DOUBLE(*&v420), v421);
            LOBYTE(v170) = 6;
            goto LABEL_55;
          case 41:
            LOBYTE(v427) = 41;
            sub_1C4CAB908();
            v183 = v414;
            v270 = sub_1C4426F2C(&_s10SignalTypeO34PersonEntityTaggingFactsCodingKeysON, &v427);
            v421 = v161;
            sub_1C4CB0440(v270);
            v175 = v423;
            v171 = v424;
            sub_1C442A778();
            swift_unknownObjectRelease();
            v341 = sub_1C440570C();
            v342(v341, v169);
            v343 = sub_1C447F880();
            v344(v343);
            sub_1C445FEF0();
            LOBYTE(v170) = 7;
            goto LABEL_55;
          case 42:
            LOBYTE(v427) = 42;
            sub_1C4CAB8B4();
            v320 = v416;
            sub_1C44099B8();
            sub_1C4F025E8();
            v421 = v161;
            v422 = v182;
            v420 = v171;
            LOBYTE(v427) = 0;
            sub_1C4CB03B0();
            sub_1C4F02678();
            v175 = v423;
            v170 = v424;
            sub_1C442A778();
            sub_1C447F604();
            v171 = v320;
            sub_1C4F02678();
            sub_1C44106D4();
            swift_unknownObjectRelease();
            (*(v183 + 8))(COERCE_DOUBLE(*&v320), v393[1]);
            (*(*&v170 + 8))(COERCE_DOUBLE(*&v420), v421);
            LOBYTE(v170) = 8;
            goto LABEL_55;
          case 43:
            LOBYTE(v427) = 43;
            sub_1C4CAB860();
            v183 = v415;
            sub_1C4426F2C(&_s10SignalTypeO39EntityRelevanceDataCollectionCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v194 = sub_1C440570C();
            v195(v194, v392[1]);
            v196 = sub_1C4433968();
            v197(v196);
            sub_1C44261A8();
            v165 = 34;
            goto LABEL_54;
          default:
            LOBYTE(v427) = 0;
            sub_1C4CAC724();
            sub_1C442E69C(&_s10SignalTypeO25CallInteractionCodingKeysON, &v427);
            swift_unknownObjectRelease();
            v184 = sub_1C440570C();
            v185(v184, v365);
            v186 = sub_1C4433968();
            v187(v186);
            v165 = 0;
            v161 = 0;
            sub_1C445FEF0();
LABEL_24:
            LOBYTE(v170) = 9;
LABEL_54:
            v175 = v423;
            break;
        }

        goto LABEL_55;
      }
    }

    v188 = v161;
    v189 = sub_1C4F022E8();
    sub_1C43FFB2C(v189, MEMORY[0x1E69E6B28]);
    v191 = v190;
    sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90);
    *v191 = &_s10SignalTypeON;
    sub_1C4F025F8();
    sub_1C4475C70();
    (*(*(v189 - 8) + 104))(v191, *MEMORY[0x1E69E6AF8], v189);
    swift_willThrow();
    swift_unknownObjectRelease();
    v192 = sub_1C44018C0();
    v193(v192, v188);
  }

  sub_1C440962C(v423);
LABEL_9:
  sub_1C44109F8();
}

BOOL sub_1C4CA1298(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (v8 != 255)
  {
    if (v12 != 255)
    {
      v25[0] = *a2;
      v25[1] = v9;
      v25[2] = v11;
      v25[3] = v10;
      v26 = v12;
      v23[0] = v5;
      v23[1] = v4;
      v23[2] = v7;
      v23[3] = v6;
      v24 = v8;
      sub_1C4CA993C(a2, v22);
      sub_1C4CA993C(a1, v22);
      sub_1C4C99514(v23, v25);
      v14 = v13;
      sub_1C4CA9974(a2);
      sub_1C4CA9974(a1);
      return (v14 & 1) != 0;
    }

LABEL_6:
    v21 = a1[3];
    v15 = a1[2];
    sub_1C4CA993C(a2, v25);
    sub_1C4CA993C(a1, v25);
    v16 = sub_1C43FD018();
    sub_1C4C10CE4(v16, v17, v15, v21, v8);
    v18 = sub_1C43FE99C();
    sub_1C4C10CE4(v18, v19, v11, v10, v12);
    return 0;
  }

  if (v12 != 255)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t sub_1C4CA13C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F436C616E676973 && a2 == 0xEC0000006769666ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C4F02938();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C4CA143C(uint64_t a1)
{
  sub_1C441EC18(a1);
  MEMORY[0x1C69417F0](0);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA1498()
{
  sub_1C456902C(&qword_1EC0C5718, &qword_1C4F62878);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C440A474();
  v1 = sub_1C4409A28();
  sub_1C4417F50(v1, v2);
  sub_1C4CA9840();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C4CA98E8();
  sub_1C4F02778();
  v3 = sub_1C440AFC4();
  return v4(v3);
}

void sub_1C4CA15BC()
{
  if (*(v0 + 32) == 255)
  {
    sub_1C4F02B18();
  }

  else
  {
    sub_1C4F02B18();
    sub_1C4C9DE00();
  }
}

uint64_t sub_1C4CA1624()
{
  v1 = *(v0 + 32);
  sub_1C4F02AF8();
  sub_1C4F02B18();
  if (v1 != 255)
  {
    sub_1C4C9DE00();
  }

  return sub_1C4F02B68();
}

void sub_1C4CA16A8()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0C5710, &qword_1C4F62870);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD64();
  sub_1C4417F50(v3, v3[3]);
  sub_1C4CA9840();
  sub_1C445AB20();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v3);
  }

  else
  {
    sub_1C4CA9894();
    sub_1C4F02658();
    (*(v8 + 8))(v1, v6);
    sub_1C440962C(v3);
    *v5 = v10;
    *(v5 + 16) = v11;
    *(v5 + 32) = v12;
  }

  sub_1C440EE0C();
  sub_1C43FBC80();
}

uint64_t sub_1C4CA1804(int a1, uint64_t a2, int a3, uint64_t a4)
{
  if ((a1 ^ a3))
  {
    return sub_1C4456958();
  }

  else
  {
    return sub_1C47E75FC(a2, a4);
  }
}

uint64_t sub_1C4CA181C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x566564756C636E69 && a2 == 0xEF656D614E776569;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4665727574616566 && a2 == 0xEE00737265746C69)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C4CA18F4(char a1)
{
  if (a1)
  {
    return 0x4665727574616566;
  }

  else
  {
    return 0x566564756C636E69;
  }
}

void sub_1C4CA1944()
{
  sub_1C43FE96C();
  sub_1C4488B44();
  sub_1C456902C(&qword_1EC0C56F8, &qword_1C4F62868);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4402A68();
  v2 = sub_1C4414A08();
  sub_1C4417F50(v2, v3);
  sub_1C4CA963C();
  sub_1C444FECC();
  sub_1C445AB20();
  sub_1C4F02BF8();
  sub_1C4402150();
  sub_1C4F027A8();
  if (!v0)
  {
    sub_1C4405BEC();
    sub_1C456902C(&qword_1EC0C56F0, &qword_1C4F62860);
    sub_1C4CA9768();
    sub_1C4482ED8();
    sub_1C43FCB2C();
    sub_1C4F027E8();
  }

  v4 = sub_1C43FD024();
  v5(v4);
  sub_1C440EE0C();
  sub_1C43FBC80();
}

void sub_1C4CA1A78(uint64_t a1, char a2)
{
  sub_1C4F02B18();
  sub_1C4402120();

  sub_1C49EFDF0();
}

uint64_t sub_1C4CA1AB8(uint64_t a1)
{
  sub_1C441EC18(a1);
  v1 = sub_1C4F02B18();
  sub_1C44AE0D8(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  sub_1C49EFDF0();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA1B04(void *a1)
{
  sub_1C456902C(&qword_1EC0C56E8, &qword_1C4F62858);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A474();
  sub_1C44009B8();
  sub_1C4CA963C();
  sub_1C4433620();
  sub_1C440F9B8();
  sub_1C4F02BC8();
  if (v1)
  {
    sub_1C440962C(a1);
  }

  else
  {
    sub_1C443FEB8();
    sub_1C445C248();
    v2 = sub_1C4F02688();
    sub_1C456902C(&qword_1EC0C56F0, &qword_1C4F62860);
    sub_1C4480838();
    sub_1C4CA9690();
    sub_1C442ACE4();
    sub_1C445C248();
    sub_1C4F026C8();
    v5 = sub_1C440AFC4();
    v6(v5);
    sub_1C4CB04D0();
  }

  return v2 & 1;
}

uint64_t sub_1C4CA1C70(char a1)
{
  if (a1)
  {
    return 0x617247746E657665;
  }

  else
  {
    return 0x7247656C62617473;
  }
}

uint64_t sub_1C4CA1CB4()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C4406834();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4CA1CFC(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x7461636964657270;
  }
}

BOOL sub_1C4CA1D3C()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C4406834();

  return v0 != 0;
}

uint64_t sub_1C4CA1D94()
{
  sub_1C4F02AF8();
  sub_1C4C96290();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA1E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C97274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA1E2C(uint64_t a1)
{
  v2 = sub_1C4CAB224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA1E68(uint64_t a1)
{
  v2 = sub_1C4CAB224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA1EA4(void *a1@<X8>)
{
  sub_1C4C975B8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_1C4CA1F3C(uint64_t a1)
{
  v2 = sub_1C4CA89EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA1F78(uint64_t a1)
{
  v2 = sub_1C4CA89EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA2074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C979F4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4CA20A0(uint64_t a1)
{
  v2 = sub_1C4CA99A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA20DC(uint64_t a1)
{
  v2 = sub_1C4CA99A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2118(void *a1@<X8>)
{
  sub_1C4C98D98();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA21C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C97B24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA21E8(uint64_t a1)
{
  v2 = sub_1C4CA99F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2224(uint64_t a1)
{
  v2 = sub_1C4CA99F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2260(void *a1@<X8>)
{
  sub_1C4C97E80();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

uint64_t sub_1C4CA22E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1C4F02AF8();
  sub_1C4426A5C();
  a4();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA238C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C98180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA23B4(uint64_t a1)
{
  v2 = sub_1C4CA94EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA23F0(uint64_t a1)
{
  v2 = sub_1C4CA94EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA242C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4C98580(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1C4CA2494()
{
  v1 = *v0;
  sub_1C4F02AF8();
  sub_1C4F02B18();
  if (v1 != 3)
  {
    sub_1C4F01298();
  }

  sub_1C49EFD8C();
  return sub_1C4F02B68();
}

unint64_t sub_1C4CA2650@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4C98718();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CA2680()
{
  v1 = sub_1C4405D78();
  result = sub_1C4C9076C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C4CA26C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C987DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA26E8(uint64_t a1)
{
  v2 = sub_1C4CA9498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2724(uint64_t a1)
{
  v2 = sub_1C4CA9498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA278C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1C4CA2838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_1C4F02AF8();
  sub_1C4426A5C();
  a4();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA28E8(uint64_t a1)
{
  v2 = sub_1C4CA9444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2924(uint64_t a1)
{
  v2 = sub_1C4CA9444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2960(void *a1@<X8>)
{
  sub_1C4C98D98();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA2A00(uint64_t a1)
{
  v2 = sub_1C4CA95E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2A3C(uint64_t a1)
{
  v2 = sub_1C4CA95E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2A78(void *a1@<X8>)
{
  sub_1C4C98D98();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA2B18(uint64_t a1)
{
  v2 = sub_1C4CA93F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2B54(uint64_t a1)
{
  v2 = sub_1C4CA93F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2B90(void *a1@<X8>)
{
  sub_1C4C98D98();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA2C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C98F5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA2C60(uint64_t a1)
{
  v2 = sub_1C4CA939C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2C9C(uint64_t a1)
{
  v2 = sub_1C4CA939C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2CD8(void *a1@<X8>)
{
  sub_1C4C99298();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_1C4CA2D30()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1C4F02AF8();
  sub_1C4C991DC(v4, v1, v2);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA2D8C(uint64_t a1)
{
  v2 = sub_1C4CA9348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2DC8(uint64_t a1)
{
  v2 = sub_1C4CA9348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA2E04(void *a1@<X8>)
{
  sub_1C4C98D98();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA2EA4(uint64_t a1)
{
  v2 = sub_1C4CAC580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2EE0(uint64_t a1)
{
  v2 = sub_1C4CAC580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA2F1C(uint64_t a1)
{
  v2 = sub_1C4CAC4D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2F58(uint64_t a1)
{
  v2 = sub_1C4CAC4D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA2F94(uint64_t a1)
{
  v2 = sub_1C4CAC52C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA2FD0(uint64_t a1)
{
  v2 = sub_1C4CAC52C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA300C(uint64_t a1)
{
  v2 = sub_1C4CAC484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3048(uint64_t a1)
{
  v2 = sub_1C4CAC484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3084(uint64_t a1)
{
  v2 = sub_1C4CAC430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA30C0(uint64_t a1)
{
  v2 = sub_1C4CAC430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C99FD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA312C(uint64_t a1)
{
  v2 = sub_1C4CAC3DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3168(uint64_t a1)
{
  v2 = sub_1C4CAC3DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA31A4(uint64_t a1)
{
  v2 = sub_1C4CAC388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA31E0(uint64_t a1)
{
  v2 = sub_1C4CAC388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9A218(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA324C(uint64_t a1)
{
  v2 = sub_1C4CAC334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3288(uint64_t a1)
{
  v2 = sub_1C4CAC334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA32C4(uint64_t a1)
{
  v2 = sub_1C4CAC724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3300(uint64_t a1)
{
  v2 = sub_1C4CAC724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA333C(uint64_t a1)
{
  v2 = sub_1C4CAC2E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3378(uint64_t a1)
{
  v2 = sub_1C4CAC2E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA33B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA3408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9A330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA3430@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4C9B01C();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CA3458(uint64_t a1)
{
  v2 = sub_1C4CAB80C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3494(uint64_t a1)
{
  v2 = sub_1C4CAB80C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA34D0(uint64_t a1)
{
  v2 = sub_1C4CAC28C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA350C(uint64_t a1)
{
  v2 = sub_1C4CAC28C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B4E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA3578(uint64_t a1)
{
  v2 = sub_1C4CABAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA35B4(uint64_t a1)
{
  v2 = sub_1C4CABAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA35F0(uint64_t a1)
{
  v2 = sub_1C4CAC238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA362C(uint64_t a1)
{
  v2 = sub_1C4CAC238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3668(uint64_t a1)
{
  v2 = sub_1C4CAC1E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA36A4(uint64_t a1)
{
  v2 = sub_1C4CAC1E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA36E0(uint64_t a1)
{
  v2 = sub_1C4CAC190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA371C(uint64_t a1)
{
  v2 = sub_1C4CAC190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B5E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA3788(uint64_t a1)
{
  v2 = sub_1C4CABA58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA37C4(uint64_t a1)
{
  v2 = sub_1C4CABA58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3800(uint64_t a1)
{
  v2 = sub_1C4CAB860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA383C(uint64_t a1)
{
  v2 = sub_1C4CAB860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA387C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B6F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4CA38A8(uint64_t a1)
{
  v2 = sub_1C4CABA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA38E4(uint64_t a1)
{
  v2 = sub_1C4CABA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3920(uint64_t a1)
{
  v2 = sub_1C4CAB9B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA395C(uint64_t a1)
{
  v2 = sub_1C4CAB9B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3998(uint64_t a1)
{
  v2 = sub_1C4CAC13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA39D4(uint64_t a1)
{
  v2 = sub_1C4CAC13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3A10(uint64_t a1)
{
  v2 = sub_1C4CAC0E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3A4C(uint64_t a1)
{
  v2 = sub_1C4CAC0E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3A88(uint64_t a1)
{
  v2 = sub_1C4CAC6D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3AC4(uint64_t a1)
{
  v2 = sub_1C4CAC6D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3B00(uint64_t a1)
{
  v2 = sub_1C4CAC094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3B3C(uint64_t a1)
{
  v2 = sub_1C4CAC094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3B78(uint64_t a1)
{
  v2 = sub_1C4CAC67C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3BB4(uint64_t a1)
{
  v2 = sub_1C4CAC67C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3BF0(uint64_t a1)
{
  v2 = sub_1C4CAC628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3C2C(uint64_t a1)
{
  v2 = sub_1C4CAC628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3C68(uint64_t a1)
{
  v2 = sub_1C4CAC040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3CA4(uint64_t a1)
{
  v2 = sub_1C4CAC040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3CE0(uint64_t a1)
{
  v2 = sub_1C4CAC5D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3D1C(uint64_t a1)
{
  v2 = sub_1C4CAC5D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3D58(uint64_t a1)
{
  v2 = sub_1C4CABF98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3D94(uint64_t a1)
{
  v2 = sub_1C4CABF98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3DD0(uint64_t a1)
{
  v2 = sub_1C4CABFEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3E0C(uint64_t a1)
{
  v2 = sub_1C4CABFEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3E48(uint64_t a1)
{
  v2 = sub_1C4CABF44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3E84(uint64_t a1)
{
  v2 = sub_1C4CABF44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3EC0(uint64_t a1)
{
  v2 = sub_1C4CABEF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3EFC(uint64_t a1)
{
  v2 = sub_1C4CABEF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3F38(uint64_t a1)
{
  v2 = sub_1C4CABE9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA3F74(uint64_t a1)
{
  v2 = sub_1C4CABE9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA3FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B78C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA3FE0(uint64_t a1)
{
  v2 = sub_1C4CAB95C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA401C(uint64_t a1)
{
  v2 = sub_1C4CAB95C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA405C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B8AC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4CA4088(uint64_t a1)
{
  v2 = sub_1C4CAB908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA40C4(uint64_t a1)
{
  v2 = sub_1C4CAB908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4C9B948(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA4130(uint64_t a1)
{
  v2 = sub_1C4CAB8B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA416C(uint64_t a1)
{
  v2 = sub_1C4CAB8B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA41A8(uint64_t a1)
{
  v2 = sub_1C4CABE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA41E4(uint64_t a1)
{
  v2 = sub_1C4CABE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4220(uint64_t a1)
{
  v2 = sub_1C4CABDF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA425C(uint64_t a1)
{
  v2 = sub_1C4CABDF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4298(uint64_t a1)
{
  v2 = sub_1C4CABDA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA42D4(uint64_t a1)
{
  v2 = sub_1C4CABDA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4310(uint64_t a1)
{
  v2 = sub_1C4CABD4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA434C(uint64_t a1)
{
  v2 = sub_1C4CABD4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4388(uint64_t a1)
{
  v2 = sub_1C4CABCF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA43C4(uint64_t a1)
{
  v2 = sub_1C4CABCF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4400(uint64_t a1)
{
  v2 = sub_1C4CABCA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA443C(uint64_t a1)
{
  v2 = sub_1C4CABCA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4478(uint64_t a1)
{
  v2 = sub_1C4CABC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA44B4(uint64_t a1)
{
  v2 = sub_1C4CABC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA44F0(uint64_t a1)
{
  v2 = sub_1C4CABBA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA452C(uint64_t a1)
{
  v2 = sub_1C4CABBA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4568(uint64_t a1)
{
  v2 = sub_1C4CABBFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA45A4(uint64_t a1)
{
  v2 = sub_1C4CABBFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4CA45E0@<D0>(uint64_t a1@<X8>)
{
  sub_1C4C9E32C();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_1C4CA4648()
{
  sub_1C4F02AF8();
  sub_1C4C9DE00();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA468C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CA13C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C4CA46B8(uint64_t a1)
{
  v2 = sub_1C4CA9840();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA46F4(uint64_t a1)
{
  v2 = sub_1C4CA9840();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1C4CA4730@<D0>(uint64_t a1@<X8>)
{
  sub_1C4CA16A8();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

uint64_t sub_1C4CA4798()
{
  v1 = *(v0 + 32);
  sub_1C4F02AF8();
  sub_1C4F02B18();
  if (v1 != 255)
  {
    sub_1C4C9DE00();
  }

  return sub_1C4F02B68();
}

BOOL sub_1C4CA4818(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1C4CA1298(v5, v7);
}

uint64_t sub_1C4CA4864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA48B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4CA181C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4CA48E0(uint64_t a1)
{
  v2 = sub_1C4CA963C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA491C(uint64_t a1)
{
  v2 = sub_1C4CA963C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4CA4958@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C4CA1B04(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1C4CA49C4()
{
  sub_1C4F02AF8();
  sub_1C4F02B18();
  sub_1C49EFDF0();
  return sub_1C4F02B68();
}

uint64_t sub_1C4CA4A60@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4CA1CB4();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CA4A98()
{
  v1 = sub_1C4405D78();
  result = sub_1C4CA1C70(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C4CA4AE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4CA1CB4();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CA4B1C()
{
  v1 = sub_1C4405D78();
  result = sub_1C4CA1CFC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1C4CA4B50@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C4CA1D3C();
  *a1 = result;
  return result;
}

BOOL sub_1C4CA4BB8@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1C4CA1D3C();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CA4BF0(uint64_t a1)
{
  v2 = sub_1C4CA8048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA4C2C(uint64_t a1)
{
  v2 = sub_1C4CA8048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4CA4C68()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C5560, &qword_1C4F62758);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4440AD4();
  sub_1C4417F50(v3, v3[3]);
  sub_1C4CA8048();
  sub_1C4F02BC8();
  if (v0)
  {
    v8 = 0;
    goto LABEL_4;
  }

  sub_1C456902C(&qword_1EC0C5568, &qword_1C4F62760);
  sub_1C4CA809C();
  sub_1C4CB0380();
  sub_1C4F026C8();
  v59 = v6;
  v60 = v4;
  v8 = 0;
  v9 = 0;
  v10 = v72 + 64;
  v65 = v72;
  v11 = 1 << *(v72 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v72 + 64);
  v14 = MEMORY[0x1E69E7CC8];
  v15 = (v11 + 63) >> 6;
  v61 = v15;
  v62 = v72 + 64;
  v63 = v1;
  v64 = v3;
  if (v13)
  {
    while (1)
    {
      v16 = v9;
LABEL_14:
      v67 = v16;
      v17 = *(*(v65 + 56) + 8 * (__clz(__rbit64(v13)) | (v16 << 6)));
      v18 = v13;
      swift_bridgeObjectRetain_n();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C43FFE3C();
      v74 = sub_1C4CA1CB4();
      if (v74 == 2)
      {
        break;
      }

      v66 = (v18 - 1) & v18;

      v19 = 0;
      v20 = v17 + 64;
      v21 = 1 << *(v17 + 32);
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      else
      {
        v22 = -1;
      }

      v23 = v22 & *(v17 + 64);
      v24 = (v21 + 63) >> 6;
      v68 = v17 + 64;
      v69 = v17;
      v70 = v24;
      if (v23)
      {
        while (1)
        {
LABEL_23:
          v26 = __clz(__rbit64(v23)) | (v19 << 6);
          v27 = (*(v17 + 48) + 16 * v26);
          v29 = *v27;
          v28 = v27[1];
          v30 = *(*(v17 + 56) + 8 * v26);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v31 = sub_1C4F025D8();
          if (v31)
          {
            if (v31 != 1)
            {

              v72 = 0;
              v73 = 0xE000000000000000;
              sub_1C4F02248();

              v72 = 0xD000000000000010;
              v73 = 0x80000001C4FBE830;
              MEMORY[0x1C6940010](v29, v28);

              MEMORY[0x1C6940010](39, 0xE100000000000000);
              v54 = sub_1C4F022E8();
              sub_1C43FFB2C(v54, MEMORY[0x1E69E6B28]);
              sub_1C44587E4(&unk_1EC0C5570, &qword_1EC0C5560, &qword_1C4F62758);
              sub_1C441D304();
              sub_1C4F022C8();

              swift_willThrow();

              v55 = sub_1C43FD024();
              v56(v55);
              v3 = v64;
              goto LABEL_4;
            }

            v75 = 1;
          }

          else
          {
            v75 = 0;
          }

          sub_1C44239FC(v8, 0);
          swift_isUniquelyReferenced_nonNull_native();
          v72 = v14;
          sub_1C457A9B4();
          sub_1C440E4D8();
          if (v34)
          {
            goto LABEL_52;
          }

          v35 = v32;
          v36 = v33;
          sub_1C456902C(&qword_1EC0C5578, &qword_1C4F62768);
          v37 = sub_1C4F02458();
          v38 = v72;
          if (v37)
          {
            v39 = sub_1C457A9B4();
            if ((v36 & 1) != (v40 & 1))
            {
              goto LABEL_56;
            }

            v35 = v39;
          }

          if ((v36 & 1) == 0)
          {
            sub_1C4CA5404(&v72);
            v41 = v72;
            v38[(v35 >> 6) + 8] |= 1 << v35;
            *(v38[6] + v35) = v74;
            *(v38[7] + 8 * v35) = v41;
            v42 = v38[2];
            v34 = __OFADD__(v42, 1);
            v43 = v42 + 1;
            if (v34)
            {
              goto LABEL_54;
            }

            v38[2] = v43;
          }

          v71 = v38;
          v44 = v38[7];
          swift_isUniquelyReferenced_nonNull_native();
          v72 = *(v44 + 8 * v35);
          *(v44 + 8 * v35) = 0x8000000000000000;
          sub_1C457A9F0();
          sub_1C440E4D8();
          if (v34)
          {
            goto LABEL_53;
          }

          v47 = v45;
          v48 = v46;
          sub_1C456902C(&qword_1EC0C5580, &qword_1C4F62770);
          if (sub_1C4F02458())
          {
            v49 = sub_1C457A9F0();
            v24 = v70;
            if ((v48 & 1) != (v50 & 1))
            {
              goto LABEL_56;
            }

            v47 = v49;
          }

          else
          {
            v24 = v70;
          }

          v51 = v72;
          if (v48)
          {
            *(*(v72 + 56) + 8 * v47) = v30;
          }

          else
          {
            *(v72 + 8 * (v47 >> 6) + 64) |= 1 << v47;
            *(v51[6] + v47) = v75;
            *(v51[7] + 8 * v47) = v30;
            v52 = v51[2];
            v34 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v34)
            {
              goto LABEL_55;
            }

            v51[2] = v53;
          }

          v23 &= v23 - 1;
          *(v44 + 8 * v35) = v51;

          v8 = sub_1C4CA5404;
          v20 = v68;
          v17 = v69;
          v14 = v71;
          if (!v23)
          {
            goto LABEL_19;
          }
        }
      }

      while (1)
      {
LABEL_19:
        v25 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
          goto LABEL_51;
        }

        if (v25 >= v24)
        {
          break;
        }

        v23 = *(v20 + 8 * v25);
        ++v19;
        if (v23)
        {
          v19 = v25;
          goto LABEL_23;
        }
      }

      v13 = v66;
      v9 = v67;
      v1 = v63;
      v3 = v64;
      v10 = v62;
      v15 = v61;
      if (!v66)
      {
        goto LABEL_11;
      }
    }

    v72 = 0;
    v73 = 0xE000000000000000;
    sub_1C4F02248();

    v72 = 0x2064696C61766E49;
    v73 = 0xEF2720656C626154;
    v57 = sub_1C43FFE3C();
    MEMORY[0x1C6940010](v57);

    MEMORY[0x1C6940010](39, 0xE100000000000000);
    v58 = sub_1C4F022E8();
    sub_1C43FFB2C(v58, MEMORY[0x1E69E6B28]);
    sub_1C44587E4(&unk_1EC0C5570, &qword_1EC0C5560, &qword_1C4F62758);
    sub_1C441D304();
    sub_1C4F022C8();

    swift_willThrow();

    (*(v59 + 8))(v1, v60);
LABEL_4:
    sub_1C440962C(v3);
    sub_1C44239FC(v8, 0);
LABEL_5:
    sub_1C43FBC80();
  }

  else
  {
LABEL_11:
    while (1)
    {
      v16 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v16 >= v15)
      {
        (*(v59 + 8))(v1, v60);

        sub_1C440962C(v3);
        sub_1C44239FC(v8, 0);
        goto LABEL_5;
      }

      v13 = *(v10 + 8 * v16);
      ++v9;
      if (v13)
      {
        goto LABEL_14;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    sub_1C4F029F8();
    __break(1u);
  }
}

uint64_t sub_1C4CA5404@<X0>(uint64_t *a1@<X8>)
{
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4CA81D4();
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

void sub_1C4CA5460()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  sub_1C456902C(&qword_1EC0C5588, &qword_1C4F62778);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C4440AD4();
  v5 = *(v1 + 16);
  if (v5)
  {
    v34 = v3;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C459EDE0(0, v5, 0);
    v8 = sub_1C4703354();
    v9 = 0;
    v10 = v1 + 64;
    v36 = v6;
    v37 = v5;
    v35 = v1 + 72;
    v11 = v1;
    v38 = v1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v11 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v10 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v11 + 36) != v6)
      {
        goto LABEL_24;
      }

      v40 = v9;
      v41 = v6;
      v39 = v7;
      v13 = *(*(v11 + 48) + v8);
      v14 = *(*(v11 + 56) + 8 * v8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4CA57C4(v13, v14);
      v16 = v15;
      v42 = v17;
      v19 = v18;

      v21 = *(v43 + 16);
      v20 = *(v43 + 24);
      if (v21 >= v20 >> 1)
      {
        v31 = sub_1C43FCFE8(v20);
        sub_1C459EDE0(v31, v21 + 1, 1);
      }

      *(v43 + 16) = v21 + 1;
      v22 = (v43 + 24 * v21);
      v22[4] = v16;
      v22[5] = v42;
      v22[6] = v19;
      v23 = 1 << *(v11 + 32);
      if (v8 >= v23)
      {
        goto LABEL_25;
      }

      v10 = v38;
      v24 = *(v38 + 8 * v12);
      if ((v24 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      if (*(v11 + 36) != v41)
      {
        goto LABEL_27;
      }

      v25 = v24 & (-2 << (v8 & 0x3F));
      if (v25)
      {
        v23 = __clz(__rbit64(v25)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = v12 << 6;
        v27 = v12 + 1;
        v28 = (v35 + 8 * v12);
        while (v27 < (v23 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            sub_1C440951C(v8, v41, v39 & 1);
            v23 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        sub_1C440951C(v8, v41, v39 & 1);
      }

LABEL_19:
      v7 = 0;
      v9 = v40 + 1;
      v8 = v23;
      v6 = v36;
      if (v40 + 1 == v37)
      {
        v3 = v34;
        goto LABEL_21;
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

  else
  {
LABEL_21:
    sub_1C4BA056C();
    sub_1C4417F50(v3, v3[3]);
    sub_1C4CA8048();
    sub_1C4F02BF8();
    sub_1C456902C(&qword_1EC0C5568, &qword_1C4F62760);
    sub_1C4CA8228();
    sub_1C4414374();
    sub_1C4F027E8();
    v32 = sub_1C4415864();
    v33(v32);

    sub_1C43FBC80();
  }
}

void sub_1C4CA57C4(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1C459F168(0, v2, 0);
    v6 = sub_1C4703354();
    v7 = 0;
    v8 = a2 + 64;
    v24 = v4;
    v25 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v8 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a2 + 36) != v4)
      {
        goto LABEL_28;
      }

      v27 = v7;
      v28 = v4;
      v26 = v5;
      v10 = *(*(a2 + 56) + 8 * v6);
      v11 = 0x7461636964657270;
      if (*(*(a2 + 48) + v6))
      {
        v11 = 0xD000000000000015;
      }

      v29 = v11;
      if (*(*(a2 + 48) + v6))
      {
        v12 = 0x80000001C4F86600;
      }

      else
      {
        v12 = 0xE900000000000065;
      }

      v14 = *(v30 + 16);
      v13 = *(v30 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v14 >= v13 >> 1)
      {
        sub_1C459F168(v13 > 1, v14 + 1, 1);
      }

      *(v30 + 16) = v14 + 1;
      v15 = (v30 + 24 * v14);
      v15[4] = v29;
      v15[5] = v12;
      v15[6] = v10;
      v16 = 1 << *(a2 + 32);
      if (v6 >= v16)
      {
        goto LABEL_29;
      }

      v8 = a2 + 64;
      v17 = *(a2 + 64 + 8 * v9);
      if ((v17 & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      if (*(a2 + 36) != v28)
      {
        goto LABEL_31;
      }

      v18 = v17 & (-2 << (v6 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v9 << 6;
        v20 = v9 + 1;
        v21 = (a2 + 72 + 8 * v9);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1C440951C(v6, v28, v26 & 1);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_24;
          }
        }

        sub_1C440951C(v6, v28, v26 & 1);
      }

LABEL_24:
      v5 = 0;
      v7 = v27 + 1;
      v6 = v16;
      v4 = v24;
      if (v27 + 1 == v25)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
LABEL_25:
    sub_1C4BA0614();
  }
}

uint64_t sub_1C4CA5A98()
{
  sub_1C4404078();
  v2 = sub_1C441EC18(v1);
  v10 = sub_1C4475868(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  v0(v10);
  return sub_1C4F02B68();
}

void sub_1C4CA5AD8(void *a1@<X8>)
{
  sub_1C4CA4C68();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C4CA5B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v5 = sub_1C4F02AF8();
  v13 = sub_1C4475868(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  a4(v13);
  return sub_1C4F02B68();
}

void sub_1C4CA5BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v24 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  sub_1C43FBD18(v24);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C440A474();
  v26 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBD08();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  sub_1C44867F4();
  v36 = sub_1C4F01E88();
  v37 = [v36 resourceURL];

  if (v37)
  {
    sub_1C4EF98C8();

    v38 = *(v28 + 32);
    v38(v21, v32, v26);
    sub_1C44B9234();
    sub_1C440BAA8(v39, v40, v41, v42);
    v43 = sub_1C43FE990();
    (v38)(v43);
  }

  else
  {
    sub_1C44B9234();
    sub_1C440BAA8(v44, v45, v46, v47);
    v48 = sub_1C4F01E88();
    v49 = [v48 bundleURL];

    sub_1C4EF98C8();
    if (sub_1C44157D4(v21, 1, v26) != 1)
    {
      sub_1C4420C3C(v21, &unk_1EC0BABB0, &qword_1C4F16ED0);
    }
  }

  sub_1C4EF9888();
  (*(v28 + 8))(v35, v26);
  sub_1C43FBC80();
}

uint64_t sub_1C4CA5DF4()
{
  v0 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  _s15ConfigReferenceOMa(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C44113EC();
  sub_1C4405814();
  sub_1C45097F0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v2 + 32))(v6, v10, v0);
    sub_1C4415D74();
    sub_1C44902F4(v11);
    sub_1C4F02858();
    v12 = sub_1C4402120();
    v13(v12);
  }

  return sub_1C4405814();
}

uint64_t sub_1C4CA5F64@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v61 = a8;
  v51 = a6;
  v52 = a7;
  v53 = a5;
  v58 = a2;
  v59 = a4;
  v57 = a3;
  v9 = sub_1C4EF98F8();
  v55 = *(v9 - 8);
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v50 - v12;
  v13 = sub_1C4EFA728();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v60 = &v50 - v18;
  v19 = *a1;
  v64 = a1[1];
  sub_1C4EFA598();
  v20 = sub_1C4EFA508();
  v21 = 0;
  v22 = *(v20 + 16);
  v62 = v14 + 16;
  v63 = v22;
  while (1)
  {
    if (v63 == v21)
    {

      v27 = sub_1C4CA7FA0(v19, v64, 1852797802, 0xE400000000000000, v57, v59, v58);
      if (v27)
      {
        v28 = v27;
        v29 = v54;
        sub_1C4EF98C8();

LABEL_12:
        v30 = v61;
        (*(v55 + 32))(v61, v29, v56);
        v31 = _s15ConfigReferenceOMa(0);
        swift_storeEnumTagMultiPayload();
        v32 = v30;
        goto LABEL_15;
      }

      if (v53)
      {
        v41 = v53;
        v42 = sub_1C4CA7FA0(v19, v64, 1852797802, 0xE400000000000000, v51, v52, v41);
        if (v42)
        {
          v43 = v42;
          v29 = v50;
          sub_1C4EF98C8();

          goto LABEL_12;
        }
      }

      if (qword_1EDDFECD0 != -1)
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    if (v21 >= *(v20 + 16))
    {
      break;
    }

    (*(v14 + 16))(v16, v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v21, v13);
    if (sub_1C4EFA708() == v19 && v23 == v64)
    {

LABEL_14:

      v33 = v60;
      (*(v14 + 32))(v60, v16, v13);
      v34 = sub_1C4EFA708();
      v36 = v35;
      (*(v14 + 8))(v33, v13);
      v37 = v61;
      *v61 = v34;
      v37[1] = v36;
      v31 = _s15ConfigReferenceOMa(0);
      swift_storeEnumTagMultiPayload();
      v32 = v37;
LABEL_15:
      v38 = 0;
      v39 = v31;
      return sub_1C440BAA8(v32, v38, 1, v39);
    }

    v25 = v19;
    v26 = sub_1C4F02938();

    if (v26)
    {
      goto LABEL_14;
    }

    (*(v14 + 8))(v16, v13);
    ++v21;
    v19 = v25;
  }

  __break(1u);
LABEL_26:
  swift_once();
LABEL_22:
  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDE2DF70);
  v45 = v64;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v46 = sub_1C4F00968();
  v47 = sub_1C4F01CD8();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v65 = v49;
    *v48 = 136315138;
    *(v48 + 4) = sub_1C441D828(v19, v45, &v65);
    _os_log_impl(&dword_1C43F8000, v46, v47, "Failed locating config for view %s", v48, 0xCu);
    sub_1C440962C(v49);
    MEMORY[0x1C6942830](v49, -1, -1);
    MEMORY[0x1C6942830](v48, -1, -1);
  }

  v39 = _s15ConfigReferenceOMa(0);
  v32 = v61;
  v38 = 1;
  return sub_1C440BAA8(v32, v38, 1, v39);
}

void sub_1C4CA6478()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = _s10ViewConfigVMa(0);
  v3 = sub_1C43FBD18(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = (v5 - v4);
  memcpy(v38, (v1 + 232), sizeof(v38));
  sub_1C4CC2410();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 32;
    v10 = qword_1EDE2DF70;
    do
    {
      sub_1C442E860(v9, v35);
      v11 = v36;
      v12 = v37;
      sub_1C4409678(v35, v36);
      v13 = (*(v12 + 48))(v11, v12);
      if (v13 != 2)
      {
        v14 = v13;
        sub_1C4409678(v35, v36);
        v15 = sub_1C4415864();
        v17 = v16(v15);
        v18 = 0xE400000000000000;
        v19 = 1702259052;
        switch(v17)
        {
          case 1:

            goto LABEL_19;
          case 2:
            v18 = 0xE500000000000000;
            v19 = 0x796C696164;
            break;
          case 3:
            v18 = 0x80000001C4F86260;
            goto LABEL_16;
          case 4:
            v18 = 0xE600000000000000;
            v20 = 1801807223;
            goto LABEL_11;
          case 5:
            v18 = 0xEB00000000737275;
            v21 = sub_1C43FE694() & 0xFFFF0000FFFFFFFFLL | 0x347900000000;
            goto LABEL_14;
          case 6:
            v18 = 0xEB00000000737275;
            v21 = sub_1C4428E78();
LABEL_14:
            v19 = v21 & 0xFFFFFFFFFFFFLL | 0x6F48000000000000;
            break;
          case 7:
            v18 = 0xE600000000000000;
            v20 = 1920298856;
LABEL_11:
            v19 = v20 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
            break;
          case 8:
            v18 = 0xEE00736574756E69;
            v19 = sub_1C4428E78() & 0xFFFFFFFFFFFFLL | 0x4D31000000000000;
            break;
          case 9:
            v18 = 0xED0000736574756ELL;
            v19 = sub_1C43FE694() | 0x694D377900000000;
            break;
          case 10:
            v18 = 0x80000001C4F862C0;
LABEL_16:
            v19 = 0xD000000000000013;
            break;
          default:
            break;
        }

        v22 = sub_1C44257B8(v19, v18);

        if (v22)
        {
LABEL_19:
          if (v14)
          {
            if (qword_1EDDFECD0 != -1)
            {
              sub_1C4400FC0();
              swift_once();
            }

            v23 = sub_1C4F00978();
            sub_1C43FCEE8(v23, v10);
            sub_1C440B6DC();
            sub_1C45097F0();
            v24 = sub_1C4F00968();
            v25 = sub_1C4F01CE8();
            if (sub_1C43FEB2C(v25))
            {
              v26 = sub_1C43FD084();
              v27 = sub_1C43FFD34();
              v34 = v27;
              *v26 = 136315138;
              v28 = v10;
              v30 = *v6;
              v29 = v6[1];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C4408084();
              sub_1C443C22C(v6, v31);
              v32 = sub_1C441D828(v30, v29, &v34);

              *(v26 + 4) = v32;
              v10 = v28;
              _os_log_impl(&dword_1C43F8000, v24, v25, "%s: Update listener cannot have both none SLA AND computeIfPastSLA = true (it is implied false)", v26, 0xCu);
              sub_1C440962C(v27);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            else
            {

              sub_1C4408084();
              sub_1C443C22C(v6, v33);
            }
          }
        }
      }

      sub_1C440962C(v35);
      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C4CA6828(void *a1)
{
  sub_1C456902C(&qword_1EC0C5768, &qword_1C4F628B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0F820;
  v3 = a1[20];
  *(inited + 32) = a1[18];
  *(inited + 40) = v3;
  v4 = _s10ViewConfigVMa(0);
  if (*(a1 + v4[25] + 8))
  {
    v5 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v5 = 0;
  }

  *(inited + 48) = v5;
  *(inited + 56) = *(a1 + v4[27]);
  v6 = *(a1 + v4[28]);
  if (v6)
  {
    v6 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  *(inited + 64) = v6;
  *(inited + 72) = *(a1 + v4[29]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == 6)
    {
      swift_setDeallocating();
      sub_1C49E1790();
      v14 = *(v8 + 16);
      if (v14)
      {
        if (v14 != 1)
        {
          if (qword_1EDDFECD0 != -1)
          {
            goto LABEL_40;
          }

          goto LABEL_25;
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v15 = a1[33];
        if (v15)
        {
          v16 = *(v15 + 16);
          if (v16)
          {
            v55 = MEMORY[0x1E69E7CC0];
            sub_1C44CD9C0(0, v16, 0);
            v17 = v55;
            v18 = (v15 + 48);
            do
            {
              v20 = *(v18 - 1);
              v19 = *v18;
              v55 = v17;
              v21 = *(v17 + 16);
              v22 = *(v17 + 24);
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              if (v21 >= v22 >> 1)
              {
                sub_1C44CD9C0(v22 > 1, v21 + 1, 1);
                v17 = v55;
              }

              *(v17 + 16) = v21 + 1;
              v23 = v17 + 16 * v21;
              *(v23 + 32) = v20;
              *(v23 + 40) = v19;
              v18 += 7;
              --v16;
            }

            while (v16);
          }
        }

        v34 = sub_1C4499940();
        v35 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((sub_1C4CA6D64(v35, v34) & 1) == 0)
        {
          if (qword_1EDDFECD0 != -1)
          {
            sub_1C4400FC0();
            swift_once();
          }

          v37 = sub_1C4F00978();
          sub_1C442B738(v37, qword_1EDE2DF70);
          sub_1C4406834();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v38 = sub_1C4F00968();
          v39 = sub_1C4F01CE8();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = sub_1C440F274();
            v55 = swift_slowAlloc();
            *v40 = 136315394;
            v41 = sub_1C4414C9C();
            MEMORY[0x1C6940380](v41);

            v42 = sub_1C43FD258();
            v45 = sub_1C441D828(v42, v43, v44);

            *(v40 + 4) = v45;
            *(v40 + 12) = 2080;
            sub_1C4F01AC8();

            v46 = sub_1C4414C9C();
            v49 = sub_1C441D828(v46, v47, v48);

            *(v40 + 14) = v49;
            sub_1C4404B90();
            _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
            swift_arrayDestroy();
            sub_1C43FBE2C();
            sub_1C43FEA20();
          }

          else
          {
          }

          return 0;
        }
      }

      return 1;
    }

    if (v7 > 5)
    {
      break;
    }

    v9 = *(inited + 8 * v7++ + 32);
    if (v9)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4412380();
        sub_1C458E1C4();
        v8 = v12;
      }

      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C43FCFE8(v10);
        sub_1C4412380();
        sub_1C458E1C4();
        v8 = v13;
      }

      *(v8 + 16) = v11 + 1;
      *(v8 + 8 * v11 + 32) = v9;
    }
  }

  __break(1u);
LABEL_40:
  sub_1C4400FC0();
  swift_once();
LABEL_25:
  v24 = sub_1C4F00978();
  sub_1C43FCEE8(v24, qword_1EDE2DF70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v25 = sub_1C4F00968();
  v26 = sub_1C4F01CE8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = sub_1C43FD084();
    v28 = sub_1C43FFD34();
    v55 = v28;
    *v27 = 136315138;
    v29 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    v30 = MEMORY[0x1C6940380](v8, v29);
    v32 = v31;

    v33 = sub_1C441D828(v30, v32, &v55);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1C43F8000, v25, v26, "Found multiple dependencies lists: %s", v27, 0xCu);
    sub_1C440962C(v28);
    sub_1C43FEA20();
    sub_1C43FBE2C();
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1C4CA6D64(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v16 = result + 32;
  v6 = a2 + 56;
LABEL_2:
  if (v4 == v5)
  {
LABEL_14:

    return v4 == v5;
  }

  if (v4 < *(v3 + 16))
  {
    if (*(a2 + 16))
    {
      v7 = (v16 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v10 = sub_1C4F02B68();
      v11 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(v6 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = (*(a2 + 48) + 16 * v12);
        if (*v13 != v9 || v13[1] != v8)
        {
          v15 = sub_1C4F02938();
          v10 = v12 + 1;
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        ++v4;
        goto LABEL_2;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4CA6EAC()
{
  sub_1C44103E8();
  sub_1C4F025D8();
  sub_1C4406834();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4CA6F1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4CA6EAC();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CA6F4C()
{
  v1 = sub_1C4405D78();
  result = sub_1C4545FF8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1C4CA6F7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4CA6EAC();
  *a1 = result;
  return result;
}

uint64_t sub_1C4CA6FA4(uint64_t a1)
{
  v2 = sub_1C4CA83B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4CA6FE0(uint64_t a1)
{
  v2 = sub_1C4CA83B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RouteData.rawValue.getter()
{
  result = 0x6574756F72;
  switch(*v0)
  {
    case 1:
      result = 0x656D695464616F72;
      break;
    case 2:
      result = 0x6570795464616F72;
      break;
    case 3:
      result = 0x546E696172726574;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = sub_1C4488994();
      break;
    case 6:
      result = sub_1C4482D28();
      break;
    case 7:
      result = 0x5472656874616577;
      break;
    case 8:
      result = sub_1C44F0940();
      break;
    case 9:
      result = 0x65726F6373;
      break;
    case 0xA:
      result = 0x68774B6567617375;
      break;
    case 0xB:
      result = sub_1C4CB038C();
      break;
    default:
      return result;
  }

  return result;
}

IntelligencePlatformCore::RouteData_optional __swiftcall RouteData.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x6574756F72 && rawValue._object == 0xE500000000000000;
  if (v5 || (sub_1C4407B10(0x6574756F72, 0xE500000000000000) & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x656D695464616F72 && object == 0xE900000000000073;
    if (v8 || (sub_1C4407B10(0x656D695464616F72, 0xE900000000000073) & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 0x6570795464616F72 && object == 0xE900000000000073;
      if (v9 || (sub_1C4407B10(0x6570795464616F72, 0xE900000000000073) & 1) != 0)
      {

        v7 = 2;
      }

      else
      {
        v10 = countAndFlagsBits == 0xD000000000000010 && 0x80000001C4F8F740 == object;
        if (v10 || (sub_1C4407B10(0xD000000000000010, 0x80000001C4F8F740) & 1) != 0)
        {

          v7 = 4;
        }

        else
        {
          v11 = sub_1C4488994();
          v13 = countAndFlagsBits == v11 && object == v12;
          if (v13 || (sub_1C4407B10(v11, v12) & 1) != 0)
          {

            v7 = 5;
          }

          else
          {
            v14 = sub_1C4482D28();
            v16 = countAndFlagsBits == v14 && object == v15;
            if (v16 || (sub_1C4407B10(v14, v15) & 1) != 0)
            {

              v7 = 6;
            }

            else
            {
              v17 = countAndFlagsBits == 0x5472656874616577 && object == 0xEC00000073657079;
              if (v17 || (sub_1C4407B10(0x5472656874616577, 0xEC00000073657079) & 1) != 0)
              {

                v7 = 7;
              }

              else
              {
                v18 = countAndFlagsBits == 0x546E696172726574 && object == 0xEC00000073657079;
                if (v18 || (sub_1C4407B10(0x546E696172726574, 0xEC00000073657079) & 1) != 0)
                {

                  v7 = 3;
                }

                else
                {
                  v19 = sub_1C44F0940();
                  v21 = countAndFlagsBits == v19 && object == v20;
                  if (v21 || (sub_1C4407B10(v19, v20) & 1) != 0)
                  {

                    v7 = 8;
                  }

                  else
                  {
                    v22 = countAndFlagsBits == 0x65726F6373 && object == 0xE500000000000000;
                    if (v22 || (sub_1C4407B10(0x65726F6373, 0xE500000000000000) & 1) != 0)
                    {

                      v7 = 9;
                    }

                    else
                    {
                      v23 = countAndFlagsBits == 0x68774B6567617375 && object == 0xE800000000000000;
                      if (v23 || (sub_1C4407B10(0x68774B6567617375, 0xE800000000000000) & 1) != 0)
                      {

                        v7 = 10;
                      }

                      else
                      {
                        v24 = sub_1C4CB038C();
                        if (countAndFlagsBits == v24 && object == v25)
                        {

                          v7 = 11;
                        }

                        else
                        {
                          v27 = sub_1C4407B10(v24, v25);

                          if (v27)
                          {
                            v7 = 11;
                          }

                          else
                          {
                            v7 = 12;
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

  *v4 = v7;
  return result;
}

uint64_t sub_1C4CA7454@<X0>(uint64_t *a1@<X8>)
{
  result = RouteData.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C4CA7530()
{
  result = qword_1EC0C54C8;
  if (!qword_1EC0C54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RouteData(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4CA7744(uint64_t a1)
{
  if ((*(a1 + 32) & 0xFu) <= 8)
  {
    return *(a1 + 32) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

uint64_t sub_1C4CA7760(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 9)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C4CA77A8()
{
  result = qword_1EC0C54D0;
  if (!qword_1EC0C54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54D0);
  }

  return result;
}

unint64_t sub_1C4CA7800()
{
  result = qword_1EC0C54D8;
  if (!qword_1EC0C54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54D8);
  }

  return result;
}

unint64_t sub_1C4CA7858()
{
  result = qword_1EC0C54E0;
  if (!qword_1EC0C54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54E0);
  }

  return result;
}

unint64_t sub_1C4CA78B0()
{
  result = qword_1EC0C54E8;
  if (!qword_1EC0C54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54E8);
  }

  return result;
}

unint64_t sub_1C4CA7908()
{
  result = qword_1EC0C54F0;
  if (!qword_1EC0C54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54F0);
  }

  return result;
}

unint64_t sub_1C4CA7960()
{
  result = qword_1EC0C54F8;
  if (!qword_1EC0C54F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C54F8);
  }

  return result;
}

unint64_t sub_1C4CA79B8()
{
  result = qword_1EC0C5500;
  if (!qword_1EC0C5500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5500);
  }

  return result;
}

unint64_t sub_1C4CA7A10()
{
  result = qword_1EC0C5508;
  if (!qword_1EC0C5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5508);
  }

  return result;
}

unint64_t sub_1C4CA7A68()
{
  result = qword_1EC0C5510;
  if (!qword_1EC0C5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5510);
  }

  return result;
}

unint64_t sub_1C4CA7AC0()
{
  result = qword_1EC0C5518;
  if (!qword_1EC0C5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5518);
  }

  return result;
}

unint64_t sub_1C4CA7B18()
{
  result = qword_1EC0C5520;
  if (!qword_1EC0C5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5520);
  }

  return result;
}

unint64_t sub_1C4CA7B70()
{
  result = qword_1EC0C5528;
  if (!qword_1EC0C5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5528);
  }

  return result;
}

unint64_t sub_1C4CA7BC8()
{
  result = qword_1EC0C5530;
  if (!qword_1EC0C5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5530);
  }

  return result;
}

unint64_t sub_1C4CA7C64()
{
  result = qword_1EC0C5548;
  if (!qword_1EC0C5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5548);
  }

  return result;
}

unint64_t sub_1C4CA7CBC()
{
  result = qword_1EC0C5550;
  if (!qword_1EC0C5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5550);
  }

  return result;
}

unint64_t sub_1C4CA7D10()
{
  result = qword_1EDDEC208;
  if (!qword_1EDDEC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC208);
  }

  return result;
}

unint64_t sub_1C4CA7D64()
{
  result = qword_1EDDEC1E8;
  if (!qword_1EDDEC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEC1E8);
  }

  return result;
}

unint64_t sub_1C4CA7DB8()
{
  result = qword_1EDDF9980;
  if (!qword_1EDDF9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9980);
  }

  return result;
}

unint64_t sub_1C4CA7E0C()
{
  result = qword_1EDDF9EE8;
  if (!qword_1EDDF9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9EE8);
  }

  return result;
}

unint64_t sub_1C4CA7E60()
{
  result = qword_1EDDF9960;
  if (!qword_1EDDF9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9960);
  }

  return result;
}

unint64_t sub_1C4CA7EB4()
{
  result = qword_1EDDECB28;
  if (!qword_1EDDECB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDECB28);
  }

  return result;
}

unint64_t sub_1C4CA7F2C()
{
  result = qword_1EDDF9F08;
  if (!qword_1EDDF9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF9F08);
  }

  return result;
}

id sub_1C4CA7FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = sub_1C4F01108();
  v9 = sub_1C4F01108();

  v10 = sub_1C4F01108();
  v11 = [a7 URLForResource:v8 withExtension:v9 subdirectory:v10];

  return v11;
}

unint64_t sub_1C4CA8048()
{
  result = qword_1EDDF83E0;
  if (!qword_1EDDF83E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83E0);
  }

  return result;
}

unint64_t sub_1C4CA809C()
{
  result = qword_1EDDFA5D8;
  if (!qword_1EDDFA5D8)
  {
    sub_1C4572308(&qword_1EC0C5568, &qword_1C4F62760);
    sub_1C4CA8128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5D8);
  }

  return result;
}

unint64_t sub_1C4CA8128()
{
  result = qword_1EDDFA5D0;
  if (!qword_1EDDFA5D0)
  {
    sub_1C4572308(&qword_1EC0C3CB0, &qword_1C4F54828);
    sub_1C443D11C(&qword_1EDDFEA58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5D0);
  }

  return result;
}

unint64_t sub_1C4CA81D4()
{
  result = qword_1EDDF83C0;
  if (!qword_1EDDF83C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83C0);
  }

  return result;
}

unint64_t sub_1C4CA8228()
{
  result = qword_1EC0C5590;
  if (!qword_1EC0C5590)
  {
    sub_1C4572308(&qword_1EC0C5568, &qword_1C4F62760);
    sub_1C4CA82B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5590);
  }

  return result;
}

unint64_t sub_1C4CA82B4()
{
  result = qword_1EC0C5598;
  if (!qword_1EC0C5598)
  {
    sub_1C4572308(&qword_1EC0C3CB0, &qword_1C4F54828);
    sub_1C443D11C(&qword_1EDDFA578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5598);
  }

  return result;
}

unint64_t sub_1C4CA8360()
{
  result = qword_1EDDEAD10;
  if (!qword_1EDDEAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD10);
  }

  return result;
}

unint64_t sub_1C4CA83B4()
{
  result = qword_1EDDF8470;
  if (!qword_1EDDF8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8470);
  }

  return result;
}

unint64_t sub_1C4CA8408()
{
  result = qword_1EDDF06F0;
  if (!qword_1EDDF06F0)
  {
    sub_1C4572308(&qword_1EC0C55A8, &qword_1C4F62788);
    sub_1C4CA8494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06F0);
  }

  return result;
}

unint64_t sub_1C4CA8494()
{
  result = qword_1EDDF06B0;
  if (!qword_1EDDF06B0)
  {
    sub_1C4572308(&qword_1EC0C55B0, &qword_1C4F62790);
    sub_1C4CA8518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06B0);
  }

  return result;
}

unint64_t sub_1C4CA8518()
{
  result = qword_1EDDF8438;
  if (!qword_1EDDF8438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8438);
  }

  return result;
}

unint64_t sub_1C4CA856C()
{
  result = qword_1EDDDBD88;
  if (!qword_1EDDDBD88)
  {
    sub_1C4572308(&qword_1EC0C55B8, &qword_1C4F62798);
    sub_1C4CA85F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD88);
  }

  return result;
}

unint64_t sub_1C4CA85F8()
{
  result = qword_1EDDDBC28;
  if (!qword_1EDDDBC28)
  {
    sub_1C4572308(&qword_1EC0BA7B8, &qword_1C4F627A0);
    sub_1C4CA867C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBC28);
  }

  return result;
}

unint64_t sub_1C4CA867C()
{
  result = qword_1EDDDBDE0;
  if (!qword_1EDDDBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBDE0);
  }

  return result;
}

unint64_t sub_1C4CA86D0()
{
  result = qword_1EC0C55C0;
  if (!qword_1EC0C55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55C0);
  }

  return result;
}

unint64_t sub_1C4CA8724()
{
  result = qword_1EC0C55D0;
  if (!qword_1EC0C55D0)
  {
    sub_1C4572308(&qword_1EC0C55B8, &qword_1C4F62798);
    sub_1C4CA87B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55D0);
  }

  return result;
}

unint64_t sub_1C4CA87B0()
{
  result = qword_1EC0C55D8;
  if (!qword_1EC0C55D8)
  {
    sub_1C4572308(&qword_1EC0BA7B8, &qword_1C4F627A0);
    sub_1C4CA8834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55D8);
  }

  return result;
}

unint64_t sub_1C4CA8834()
{
  result = qword_1EC0C55E0;
  if (!qword_1EC0C55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55E0);
  }

  return result;
}

unint64_t sub_1C4CA8888()
{
  result = qword_1EC0C55E8;
  if (!qword_1EC0C55E8)
  {
    sub_1C4572308(&qword_1EC0C55A8, &qword_1C4F62788);
    sub_1C4CA8914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55E8);
  }

  return result;
}

unint64_t sub_1C4CA8914()
{
  result = qword_1EC0C55F0;
  if (!qword_1EC0C55F0)
  {
    sub_1C4572308(&qword_1EC0C55B0, &qword_1C4F62790);
    sub_1C4CA8998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55F0);
  }

  return result;
}

unint64_t sub_1C4CA8998()
{
  result = qword_1EC0C55F8;
  if (!qword_1EC0C55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C55F8);
  }

  return result;
}

unint64_t sub_1C4CA89EC()
{
  result = qword_1EDDF8418;
  if (!qword_1EDDF8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8418);
  }

  return result;
}

unint64_t sub_1C4CA8A40()
{
  result = qword_1EDDF06E8;
  if (!qword_1EDDF06E8)
  {
    sub_1C4572308(&qword_1EC0C5608, &qword_1C4F627B8);
    sub_1C4CA8ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06E8);
  }

  return result;
}

unint64_t sub_1C4CA8ACC()
{
  result = qword_1EDDF06A8;
  if (!qword_1EDDF06A8)
  {
    sub_1C4572308(&qword_1EC0C5610, &qword_1C4F627C0);
    sub_1C4CA8B50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06A8);
  }

  return result;
}

unint64_t sub_1C4CA8B50()
{
  result = qword_1EDDF8298;
  if (!qword_1EDDF8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8298);
  }

  return result;
}

unint64_t sub_1C4CA8BA4()
{
  result = qword_1EC0C5620;
  if (!qword_1EC0C5620)
  {
    sub_1C4572308(&qword_1EC0C5608, &qword_1C4F627B8);
    sub_1C4CA8C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5620);
  }

  return result;
}

unint64_t sub_1C4CA8C30()
{
  result = qword_1EC0C5628;
  if (!qword_1EC0C5628)
  {
    sub_1C4572308(&qword_1EC0C5610, &qword_1C4F627C0);
    sub_1C4CA8CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5628);
  }

  return result;
}

unint64_t sub_1C4CA8CB4()
{
  result = qword_1EC0C5630;
  if (!qword_1EC0C5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5630);
  }

  return result;
}

uint64_t sub_1C4CA8D08(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C4CA8D48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C4CA8D98()
{
  result = qword_1EDDEAD38;
  if (!qword_1EDDEAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD38);
  }

  return result;
}

unint64_t sub_1C4CA8DEC()
{
  result = qword_1EDDEAE58;
  if (!qword_1EDDEAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE58);
  }

  return result;
}

unint64_t sub_1C4CA8E40()
{
  result = qword_1EDDEAE60;
  if (!qword_1EDDEAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE60);
  }

  return result;
}

unint64_t sub_1C4CA8E94()
{
  result = qword_1EDDEAD80;
  if (!qword_1EDDEAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD80);
  }

  return result;
}

unint64_t sub_1C4CA8EE8()
{
  result = qword_1EDDEAD40;
  if (!qword_1EDDEAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD40);
  }

  return result;
}

unint64_t sub_1C4CA8F3C()
{
  result = qword_1EDDEAD60;
  if (!qword_1EDDEAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD60);
  }

  return result;
}

unint64_t sub_1C4CA8F90()
{
  result = qword_1EC0C5650;
  if (!qword_1EC0C5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C5650);
  }

  return result;
}

unint64_t sub_1C4CA8FE4()
{
  result = qword_1EDDE82B0;
  if (!qword_1EDDE82B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE82B0);
  }

  return result;
}

unint64_t sub_1C4CA9038()
{
  result = qword_1EDDEBC68[0];
  if (!qword_1EDDEBC68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDEBC68);
  }

  return result;
}

uint64_t sub_1C4CA908C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C5640, &qword_1C4F627D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4CA90FC()
{
  result = qword_1EDDE4000;
  if (!qword_1EDDE4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE4000);
  }

  return result;
}

unint64_t sub_1C4CA9150()
{
  result = qword_1EDDEAD18;
  if (!qword_1EDDEAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD18);
  }

  return result;
}

unint64_t sub_1C4CA91A4()
{
  result = qword_1EDDEADA0[0];
  if (!qword_1EDDEADA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDEADA0);
  }

  return result;
}

unint64_t sub_1C4CA91F8()
{
  result = qword_1EDDEAE50;
  if (!qword_1EDDEAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAE50);
  }

  return result;
}

unint64_t sub_1C4CA924C()
{
  result = qword_1EDDEAD28;
  if (!qword_1EDDEAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD28);
  }

  return result;
}

unint64_t sub_1C4CA92A0()
{
  result = qword_1EDDEAD20;
  if (!qword_1EDDEAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD20);
  }

  return result;
}

unint64_t sub_1C4CA92F4()
{
  result = qword_1EDDEAD30;
  if (!qword_1EDDEAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEAD30);
  }

  return result;
}

unint64_t sub_1C4CA9348()
{
  result = qword_1EDDF83F8;
  if (!qword_1EDDF83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF83F8);
  }

  return result;
}

unint64_t sub_1C4CA939C()
{
  result = qword_1EDDFBE28;
  if (!qword_1EDDFBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFBE28);
  }

  return result;
}
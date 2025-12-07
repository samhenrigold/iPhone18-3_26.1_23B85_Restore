uint64_t sub_252B5F69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252B5F70C()
{
  result = sub_2529FC004(&unk_2864A9910);
  qword_27F575838 = result;
  return result;
}

uint64_t sub_252B5F734()
{
  result = sub_2529FF448(&unk_2864A9958);
  qword_27F575840 = result;
  return result;
}

double sub_252B5F798()
{
  type metadata accessor for PollingHandleDelegate();
  v0 = swift_allocObject();
  *&result = 9000;
  *(v0 + 16) = xmmword_252E4DBF0;
  return result;
}

uint64_t sub_252B5F7C8()
{
  v0 = sub_252E36D54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E36C84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E36D14();
  sub_252E36D34();
  (*(v1 + 8))(v3, v0);
  v8 = sub_252B02B64();
  result = (*(v5 + 8))(v7, v4);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = 9000 - v8;
  if (__OFSUB__(9000, v8))
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void *sub_252B5F9A4(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (a2 == 0xFF || (a2 & 1) != 0)
  {
    sub_252B61F1C(a1, a2);
    return v3;
  }

  sub_2529904E4(a1);
  if ((sub_252C2AC20() & 1) == 0)
  {
    return v3;
  }

  type metadata accessor for MutableControlHomeIntentResponse();
  swift_initStackObject();
  sub_2529904E4(v3);
  v5 = sub_252D6D96C(v3);
  sub_252B61F34(v3, v2);
  v25 = v5;
  v6 = *(v5 + 24);
  v24 = v2;
  v23 = v3;
  if (v6 >> 62)
  {
LABEL_52:
    v7 = sub_252E378C4();
    if (!v7)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_48;
    }
  }

  v30 = v6 & 0xC000000000000001;
  v26 = (v6 + 32);
  v27 = v6 & 0xFFFFFFFFFFFFFF8;

  v8 = 0;
  v9 = 0;
  v28 = v7;
  v29 = v6;
  do
  {
    while (1)
    {
LABEL_10:
      if (v30)
      {
        v10 = MEMORY[0x2530ADF00](v9, v6);
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v9 >= *(v27 + 16))
        {
          goto LABEL_51;
        }

        v10 = v26[v9];

        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }
      }

      swift_beginAccess();
      v12 = *(v10 + 24);
      if (v12 >> 62)
      {
        break;
      }

      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v13)
      {
        goto LABEL_42;
      }

LABEL_18:
      v31 = v9;

      v14 = 0;
      do
      {
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x2530ADF00](v14, v12);
            v11 = __OFADD__(v14++, 1);
            if (v11)
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_50;
            }

            v15 = *(v12 + 32 + 8 * v14);

            v11 = __OFADD__(v14++, 1);
            if (v11)
            {
LABEL_45:
              __break(1u);
LABEL_46:

              goto LABEL_47;
            }
          }

          if (qword_27F53F730 != -1)
          {
            swift_once();
          }

          v16 = qword_27F575C40;
          if (!*(qword_27F575C40 + 16))
          {
            break;
          }

          v17 = *(v15 + 24);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v17);
          v6 = v32;
          v18 = sub_252E37F14();
          v19 = -1 << *(v16 + 32);
          v20 = v18 & ~v19;
          if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            break;
          }

          v21 = ~v19;
          while (*(*(v16 + 48) + 8 * v20) != v17)
          {
            v20 = (v20 + 1) & v21;
            if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          v22 = sub_252E36AD4();
          __swift_project_value_buffer(v22, qword_27F544C70);
          sub_252CC3D90(0xD00000000000004DLL, 0x8000000252E81750, 0xD00000000000007BLL, 0x8000000252E81500);
          *(v15 + 24) = 1;
          v6 = *(v15 + 16);

          v8 = 1;
          if (v6)
          {
            swift_beginAccess();
            *(v6 + 32) = 0;
          }

          if (v14 == v13)
          {

            v8 = 1;
            v7 = v28;
            v6 = v29;
            v9 = v31;
            if (v31 != v28)
            {
              goto LABEL_10;
            }

            goto LABEL_46;
          }
        }

LABEL_19:
      }

      while (v14 != v13);

      v7 = v28;
      v6 = v29;
      v9 = v31;
      if (v31 == v28)
      {
        goto LABEL_43;
      }
    }

    v13 = sub_252E378C4();
    if (v13)
    {
      goto LABEL_18;
    }

LABEL_42:
  }

  while (v9 != v7);
LABEL_43:

  if (v8)
  {
LABEL_47:
    *(v25 + 16) = 4;
  }

LABEL_48:
  v3 = sub_252D6BB10();
  sub_252B61F34(v23, v24);

  return v3;
}

uint64_t sub_252B5FE38(void *a1, void (*a2)(void), uint64_t a3)
{
  v136 = a3;
  v137 = a2;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E36D54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v140 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E36D14();
  v163 = a1;
  v11 = sub_252B4CD30(a1, 7000, 0);
  v139 = v8;
  v138 = v9;
  v135 = v12;
  if (v12)
  {
    v13 = v11;
    if (qword_27F53F498 != -1)
    {
      goto LABEL_163;
    }

    goto LABEL_3;
  }

  v133 = v7;
  v134 = v5;
  v132 = v11;
  v13 = v11;
  if (sub_252C2AC20() & 1) != 0 || ([v13 _requiresAuthentication])
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_27F544C70);
    (*(v134 + 16))(v133, v15, v4);
    v168 = 0;
    v169 = 0xE000000000000000;
    sub_252E379F4();
    v175 = v168;
    v176 = v169;
    MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E815D0);
    v16 = sub_252C285CC();
    v17 = v16;
    if (v16 >> 62)
    {
      v18 = sub_252E378C4();
    }

    else
    {
      v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v131 = v4;
    if (!v18)
    {
      v20 = MEMORY[0x277D84F90];
LABEL_97:

      v55 = MEMORY[0x2530AD730](v20, MEMORY[0x277D837D0]);
      v57 = v56;

      MEMORY[0x2530AD570](v55, v57);

      v58 = v133;
      sub_252CC3D90(v175, v176, 0xD00000000000007BLL, 0x8000000252E81500);

      (*(v134 + 8))(v58, v131);
      (v137)(v13);
      v13 = v132;
      v59 = v132;
      goto LABEL_167;
    }

    v19 = 0;
    v164 = v17 & 0xC000000000000001;
    v163 = (v17 & 0xFFFFFFFFFFFFFF8);
    v162 = v17 + 32;
    v142 = 0x8000000252E68460;
    v158 = 0x8000000252E68440;
    v157 = 0x8000000252E68420;
    v141 = 0x8000000252E683F0;
    v156 = 0x8000000252E683D0;
    v155 = 0x8000000252E81610;
    v154 = 0x8000000252E683B0;
    v153 = 0x8000000252E67470;
    v152 = 0x8000000252E81630;
    v151 = 0x8000000252E81650;
    v150 = 0x8000000252E81670;
    v149 = 0x8000000252E81690;
    v148 = 0x8000000252E816B0;
    v147 = 0x8000000252E816D0;
    v146 = 0x8000000252E816F0;
    v145 = 0x8000000252E81710;
    v144 = 0x8000000252E81730;
    v143 = 0x8000000252E68480;
    v20 = MEMORY[0x277D84F90];
    v161 = v13;
    v160 = v17;
    v159 = v18;
LABEL_14:
    if (v164)
    {
      v21 = MEMORY[0x2530ADF00](v19, v17);
      v13 = 0x6E776F6E6B6E75;
      v22 = __OFADD__(v19, 1);
      v23 = (v19 + 1);
      if (v22)
      {
        goto LABEL_154;
      }
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
      if (v19 >= v163[2])
      {
        goto LABEL_155;
      }

      v21 = *(v162 + 8 * v19);
      v22 = __OFADD__(v19, 1);
      v23 = (v19 + 1);
      if (v22)
      {
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }
    }

    v165 = v23;
    v166 = v21;
    v24 = sub_252DA3B1C();
    v25 = *(v24 + 2);
    v167 = v20;
    if (!v25)
    {

      v29 = MEMORY[0x277D84F90];
      v39 = *(MEMORY[0x277D84F90] + 16);
      if (v39)
      {
        goto LABEL_35;
      }

LABEL_80:
      v4 = v29;
      v41 = MEMORY[0x277D84F90];
      goto LABEL_81;
    }

    if (qword_27F53F730 != -1)
    {
      swift_once();
    }

    v26 = 0;
    v4 = (v24 + 32);
    v27 = qword_27F575C40;
    v28 = qword_27F575C40 + 56;
    v29 = MEMORY[0x277D84F90];
    while (v26 < *(v24 + 2))
    {
      if (*(v27 + 16))
      {
        v33 = *(v4 + 8 * v26);
        sub_252E37EC4();
        MEMORY[0x2530AE390](v33);
        v34 = sub_252E37F14();
        v35 = -1 << *(v27 + 32);
        v36 = v34 & ~v35;
        if ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
        {
          v37 = ~v35;
          while (*(*(v27 + 48) + 8 * v36) != v33)
          {
            v36 = (v36 + 1) & v37;
            if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v174 = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2529AA3E0(0, v29[2] + 1, 1);
            v29 = v174;
          }

          v31 = v29[2];
          v30 = v29[3];
          v32 = v29;
          if (v31 >= v30 >> 1)
          {
            sub_2529AA3E0((v30 > 1), v31 + 1, 1);
            v32 = v174;
          }

          v32[2] = v31 + 1;
          v29 = v32;
          v32[v31 + 4] = v33;
        }
      }

LABEL_24:
      if (++v26 == v25)
      {

        v39 = v29[2];
        if (!v39)
        {
          goto LABEL_80;
        }

LABEL_35:
        v4 = v29;
        v40 = v29 + 4;
        v41 = MEMORY[0x277D84F90];
        do
        {
          v42 = *v40++;
          v43 = 0xE700000000000000;
          v44 = 0x6E776F6E6B6E75;
          switch(v42)
          {
            case 1:
              v44 = 0x73736563637573;
              break;
            case 2:
              v44 = 0xD000000000000014;
              v45 = &v173;
              goto LABEL_72;
            case 3:
              v43 = 0xE800000000000000;
              v44 = 0x796C6E4F64616572;
              break;
            case 4:
              v44 = 0xD000000000000011;
              v45 = &v174;
              goto LABEL_72;
            case 5:
              v44 = 0xD000000000000011;
              v45 = &v175;
              goto LABEL_72;
            case 6:
              v43 = 0xEB00000000656C62;
              v44 = 0x6168636165726E75;
              break;
            case 7:
              v44 = 0x6572756C696166;
              break;
            case 8:
              v44 = 0x78614D6F54746573;
              goto LABEL_57;
            case 9:
              v44 = 0x6E694D6F54746573;
LABEL_57:
              v43 = 0xED000065756C6156;
              break;
            case 10:
              v44 = 0xD000000000000012;
              v45 = &v176;
              goto LABEL_72;
            case 11:
              v44 = 0xD000000000000013;
              v45 = v177;
              goto LABEL_72;
            case 12:
              v43 = 0xEE00737365636341;
              v44 = 0x65746F6D65526F6ELL;
              break;
            case 13:
              v44 = 0xD000000000000013;
              v45 = &v178;
              goto LABEL_72;
            case 14:
              v43 = 0xEE0066664F734968;
              goto LABEL_67;
            case 15:
              v43 = 0xE900000000000066;
              v44 = 0x664F734969666977;
              break;
            case 16:
              v44 = 0xD00000000000001BLL;
              v45 = &v179;
              goto LABEL_72;
            case 17:
              v43 = 0xEA00000000007373;
              v44 = 0x6572676F72506E69;
              break;
            case 18:
              v43 = 0xED00007055746553;
              v44 = 0x746F4E656E656373;
              break;
            case 19:
              v43 = 0xEF6572756C696146;
              v44 = 0x676E697275636573;
              break;
            case 20:
              v43 = 0xEF7055656B615768;
LABEL_67:
              v44 = 0x746F6F7465756C62;
              break;
            case 21:
              v43 = 0xEE00646572697571;
              v44 = 0x65526B636F6C6E75;
              break;
            case 22:
              v44 = 0xD000000000000013;
              v45 = &v180;
              goto LABEL_72;
            case 24:
              v44 = 0xD000000000000013;
              v45 = &v181;
              goto LABEL_72;
            case 25:
              v44 = 0xD000000000000016;
              v45 = &v182;
              goto LABEL_72;
            case 26:
              v44 = 0xD00000000000001DLL;
              v45 = &v183;
              goto LABEL_72;
            case 27:
              v44 = 0xD00000000000001BLL;
              v45 = &v185;
              goto LABEL_72;
            case 28:
              v44 = 0xD000000000000011;
              v45 = &v170;
              goto LABEL_72;
            case 29:
              v43 = 0xEE006C6C75466E69;
              v44 = 0x4274737544637672;
              break;
            case 30:
              v44 = 0xD000000000000013;
              v45 = &v186;
              goto LABEL_72;
            case 31:
              v44 = 0xD000000000000011;
              v45 = &v187;
              goto LABEL_72;
            case 32:
              v44 = 0xD000000000000018;
              v45 = &v172;
              goto LABEL_72;
            case 33:
              v44 = 0xD000000000000012;
              v45 = &v184;
              goto LABEL_72;
            case 34:
              v44 = 0xD000000000000013;
              v45 = &v171;
LABEL_72:
              v43 = *(v45 - 32);
              break;
            default:
              break;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_2529F7A80(0, *(v41 + 2) + 1, 1, v41);
          }

          v47 = *(v41 + 2);
          v46 = *(v41 + 3);
          if (v47 >= v46 >> 1)
          {
            v41 = sub_2529F7A80((v46 > 1), v47 + 1, 1, v41);
          }

          *(v41 + 2) = v47 + 1;
          v48 = &v41[16 * v47];
          *(v48 + 4) = v44;
          *(v48 + 5) = v43;
          --v39;
        }

        while (v39);
LABEL_81:

        v49 = *(v41 + 2);
        v20 = v167;
        v50 = *(v167 + 16);
        v13 = v50 + v49;
        if (!__OFADD__(v50, v49))
        {
          v51 = swift_isUniquelyReferenced_nonNull_native();
          if (!v51 || v13 > *(v20 + 3) >> 1)
          {
            if (v50 <= v13)
            {
              v52 = v50 + v49;
            }

            else
            {
              v52 = v50;
            }

            v20 = sub_2529F7A80(v51, v52, 1, v20);
          }

          v13 = v161;
          if (*(v41 + 2))
          {
            if ((*(v20 + 3) >> 1) - *(v20 + 2) < v49)
            {
              goto LABEL_158;
            }

            swift_arrayInitWithCopy();

            if (!v49)
            {
              goto LABEL_13;
            }

            v53 = *(v20 + 2);
            v22 = __OFADD__(v53, v49);
            v54 = v53 + v49;
            if (!v22)
            {
              *(v20 + 2) = v54;
LABEL_13:
              v19 = v165;
              v17 = v160;
              if (v165 == v159)
              {
                goto LABEL_97;
              }

              goto LABEL_14;
            }

LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            swift_once();
LABEL_3:
            __swift_project_value_buffer(v4, qword_27F544C70);
            v168 = 0;
            v169 = 0xE000000000000000;
            MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
            v175 = v13;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
            sub_252E37AE4();
            sub_252CC4050(v168, v169, 0xD00000000000007BLL, 0x8000000252E81500, 0xD000000000000021, 0x8000000252E68B10, 98);

            v14 = parse(error:with:)(v13, v163);
            v137();

            goto LABEL_168;
          }

          if (!v49)
          {
            goto LABEL_13;
          }

LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

LABEL_156:
        __break(1u);
        goto LABEL_157;
      }
    }

    __break(1u);
  }

  else
  {
    v60 = sub_252B5F7C8();
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27F544C70);
    v168 = 0;
    v169 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E81580);
    ControlHomeIntent.getTargetDeviceTypes()();
    v61 = sub_252DB4F48();
    v63 = v62;

    v175 = v61;
    LOBYTE(v176) = v63 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543730, &qword_252E4DC38);
    v64 = sub_252E36F94();
    MEMORY[0x2530AD570](v64);

    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E815B0);
    v175 = v60;
    v65 = sub_252E37D94();
    MEMORY[0x2530AD570](v65);

    sub_252CC3D90(v168, v169, 0xD00000000000007BLL, 0x8000000252E81500);

    v66 = sub_252C4F73C();
    v67 = sub_252B4CD30(v66, v60, 0);
    v69 = v68;

    sub_2529904E4(v67);
    v13 = sub_252B5F9A4(v67, v69 & 1);
    v71 = v70;
    LODWORD(v155) = v69;
    v156 = v67;
    sub_252927D3C(v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C3C0;
    v73 = v132;
    *(inited + 32) = v132;
    *(inited + 40) = 0;
    *(inited + 48) = v13;
    *(inited + 56) = v71;
    sub_2529904E4(v73);
    v154 = v13;
    LODWORD(v153) = v71;
    sub_252B61F1C(v13, v71);
    v74 = combineResults(results:)(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B0, &qword_252E3C0E0);
    swift_arrayDestroy();
    v157 = v74;
    v75 = [v74 entityResponses];
    if (v75)
    {
      v76 = v75;
      type metadata accessor for HomeEntityResponse();
      v77 = sub_252E37264();

      goto LABEL_105;
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_170;
  }

  while (1)
  {
    __swift_project_value_buffer(v4, qword_27F544D60);
    v168 = 0;
    v169 = 0xE000000000000000;
    sub_252E379F4();

    v168 = 0xD00000000000002FLL;
    v169 = 0x8000000252E69700;
    v78 = v157;
    v79 = [v78 description];
    v13 = sub_252E36F34();
    v81 = v80;

    MEMORY[0x2530AD570](v13, v81);

    sub_252CC3D90(v168, v169, 0xD000000000000098, 0x8000000252E69730);

    v77 = MEMORY[0x277D84F90];
LABEL_105:
    v160 = v77;
    if (v77 >> 62)
    {
      break;
    }

    v82 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v82)
    {
      goto LABEL_166;
    }

LABEL_107:
    v83 = MEMORY[0x277D84F90];
    v168 = MEMORY[0x277D84F90];
    sub_252E37AB4();
    if ((v82 & 0x8000000000000000) == 0)
    {
      v84 = 0;
      v162 = v160 & 0xC000000000000001;
      v159 = (v160 & 0xFFFFFFFFFFFFFF8);
      v158 = v160 + 32;
      v161 = v82;
      while (1)
      {
        if (__OFADD__(v84, 1))
        {
          goto LABEL_160;
        }

        v164 = v84 + 1;
        if (v162)
        {
          v88 = MEMORY[0x2530ADF00]();
        }

        else
        {
          if (v84 >= v159[2])
          {
            goto LABEL_162;
          }

          v88 = *(v158 + 8 * v84);
        }

        v89 = v88;
        v90 = [v163 userTask];
        if (v90)
        {
          v91 = v90;
          v167 = [v90 taskType];
        }

        else
        {
          v167 = 1;
        }

        v92 = [v89 taskResponses];
        v165 = v89;
        if (v92)
        {
          v93 = v92;
          type metadata accessor for HomeUserTaskResponse();
          v13 = sub_252E37264();

          v175 = v83;
          if (v13 >> 62)
          {
            v94 = sub_252E378C4();
            if (v94)
            {
LABEL_121:
              v95 = 0;
              while (1)
              {
                if ((v13 & 0xC000000000000001) != 0)
                {
                  v96 = MEMORY[0x2530ADF00](v95, v13);
                }

                else
                {
                  if (v95 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_153;
                  }

                  v96 = *(v13 + 8 * v95 + 32);
                }

                v4 = v96;
                v97 = v95 + 1;
                if (__OFADD__(v95, 1))
                {
                  break;
                }

                MEMORY[0x2530AD700]();
                if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_252E372A4();
                }

                sub_252E372D4();
                ++v95;
                if (v97 == v94)
                {
                  v98 = v175;
                  goto LABEL_134;
                }
              }

              __break(1u);
LABEL_153:
              __break(1u);
              goto LABEL_154;
            }
          }

          else
          {
            v94 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v94)
            {
              goto LABEL_121;
            }
          }

          v98 = v83;
LABEL_134:
        }

        else
        {
          sub_252DA6A00();
          v98 = v83;
        }

        if (v98 >> 62)
        {
          v99 = sub_252E378C4();
          if (v99)
          {
LABEL_137:
            v175 = MEMORY[0x277D84F90];
            sub_252E37AB4();
            if (v99 < 0)
            {
              goto LABEL_161;
            }

            v4 = 0;
            v166 = (v98 & 0xC000000000000001);
            do
            {
              if (v166)
              {
                v114 = MEMORY[0x2530ADF00](v4, v98);
              }

              else
              {
                v114 = *(v98 + 8 * v4 + 32);
              }

              v115 = v114;
              v116 = type metadata accessor for HomeUserTask();
              v117 = objc_allocWithZone(v116);
              v118 = sub_252E36F04();
              v119 = [v117 initWithIdentifier:0 displayString:v118];

              v120 = v119;
              [v120 setTaskType_];
              [v120 setAttribute_];
              [v120 setValue_];

              v121 = [v115 userTask];
              if (v121)
              {
                v100 = v121;
                v101 = [v121 attribute];
              }

              else
              {
                v101 = 0;
              }

              ++v4;
              v102 = [v115 userTask];
              v103 = [v102 value];

              v104 = objc_allocWithZone(v116);
              v105 = sub_252E36F04();
              v106 = [v104 initWithIdentifier:0 displayString:v105];

              v107 = v106;
              [v107 setTaskType_];
              [v107 setAttribute_];
              [v107 setValue_];

              v108 = [v115 taskOutcome];
              v109 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
              v110 = v107;
              v111 = sub_252E36F04();
              v112 = [v109 initWithIdentifier:0 displayString:v111];

              v113 = v112;
              [v113 setTaskOutcome_];
              [v113 setUserTask_];

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
            }

            while (v99 != v4);

            v122 = v175;
            v83 = MEMORY[0x277D84F90];
            goto LABEL_149;
          }
        }

        else
        {
          v99 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v99)
          {
            goto LABEL_137;
          }
        }

        v83 = MEMORY[0x277D84F90];
        v122 = MEMORY[0x277D84F90];
LABEL_149:
        type metadata accessor for HomeEntityResponse.Builder();
        v13 = swift_allocObject();
        type metadata accessor for HomeEntity.Builder();
        swift_allocObject();
        v123.n128_f64[0] = HomeEntity.Builder.init()();
        v125 = (*(*v124 + 448))(v123);

        *(v13 + 16) = v125;
        *(v13 + 24) = v83;
        v126 = [v165 entity];
        if (v126)
        {
          v127 = *(v13 + 16);
          *(v13 + 16) = v126;
        }

        v85 = sub_252B4EF4C(v122);

        v86 = sub_25297D0C0(v85);

        (*(*v86 + 192))(v87);

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v84 = v164;
        if (v164 == v161)
        {
          goto LABEL_166;
        }
      }
    }

    __break(1u);
LABEL_170:
    swift_once();
  }

  v82 = sub_252E378C4();
  if (v82)
  {
    goto LABEL_107;
  }

LABEL_166:

  type metadata accessor for HomeEntityResponse();
  v128 = sub_252E37254();

  v129 = v157;
  [v157 setEntityResponses_];

  (v137)(v129);
  v13 = v132;
  sub_252927D3C(v132);
  sub_252B61F34(v154, v153);
  v59 = v156;
LABEL_167:
  sub_252927D3C(v59);
LABEL_168:
  sub_252927D3C(v13);
  return (*(v138 + 8))(v140, v139);
}

uint64_t sub_252B61720(void *a1)
{
  v1 = a1;
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v3 = result;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  v5 = [v1 userTask];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  v7 = type metadata accessor for HomeStore(0);
  v8 = static HomeStore.shared.getter(v7);
  v9 = v6;
  v10 = HomeStore.accessories(matching:supporting:)(v4, v6);
  v12 = v11;

  if (v12)
  {
    sub_252929F10(v10, 1);

    return 0;
  }

  v13 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    goto LABEL_80;
  }

  v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
LABEL_81:
    v69 = 0;
    goto LABEL_82;
  }

  while (1)
  {
    v15 = 0;
    v16 = v10 & 0xC000000000000001;
    v77 = v10;
    v78 = v10 + 32;
    v72 = v9;
    v73 = v1;
    v75 = v14;
    v76 = v13;
    v74 = v10 & 0xC000000000000001;
LABEL_10:
    if (v16)
    {
      break;
    }

    if (v15 >= *(v13 + 16))
    {
      goto LABEL_79;
    }

    v17 = *(v78 + 8 * v15);

    v18 = __OFADD__(v15, 1);
    v19 = v15 + 1;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v14 = sub_252E378C4();
    if (!v14)
    {
      goto LABEL_81;
    }
  }

  v17 = MEMORY[0x2530ADF00](v15, v10);
  v18 = __OFADD__(v15, 1);
  v19 = v15 + 1;
  if (v18)
  {
    goto LABEL_78;
  }

LABEL_13:
  v80 = v19;
  if (qword_27F53F378 != -1)
  {
    swift_once();
  }

  v82 = qword_27F575838 + 56;
  v20 = 1 << *(qword_27F575838 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v10 = v21 & *(qword_27F575838 + 56);
  v79 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
  v81 = (v20 + 63) >> 6;
  v84 = qword_27F575838;

  v23 = 0;
  v83 = v17;
  while (1)
  {
LABEL_19:
    if (!v10)
    {
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24 >= v81)
        {

          v69 = 0;
          v10 = v77;
          goto LABEL_82;
        }

        v10 = *(v82 + 8 * v24);
        ++v23;
        if (v10)
        {
          v23 = v24;
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_76;
    }

LABEL_24:
    v25 = *(*(v84 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v10)))));
    v26 = (*v17 + 256);
    v27 = *v26;
    if ((*v26)(v22) == v25)
    {
      goto LABEL_69;
    }

    v28 = (*(*v17 + 272))();
    if (*(v28 + 16))
    {
      v29 = v28;
      sub_252E37EC4();
      MEMORY[0x2530AE390](v25);
      v30 = sub_252E37F14();
      v31 = -1 << *(v29 + 32);
      v32 = v30 & ~v31;
      if ((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        break;
      }
    }

LABEL_30:

    v13 = v17;
    v35 = v27(v34);
    if (v35 == 41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
      v36 = sub_252E379A4();
      v47 = v36 + 56;
      v48 = qword_2864A99E8;
      sub_252E37EC4();
      MEMORY[0x2530AE390](v48);
      v13 = v85;
      result = sub_252E37F14();
      v49 = ~(-1 << *(v36 + 32));
      v50 = result & v49;
      v51 = (result & v49) >> 6;
      v52 = *(v36 + 56 + 8 * v51);
      v53 = 1 << (result & v49);
      v54 = *(v36 + 48);
      if ((v53 & v52) != 0)
      {
        while (*(v54 + 8 * v50) != v48)
        {
          v50 = (v50 + 1) & v49;
          v51 = v50 >> 6;
          v52 = *(v47 + 8 * (v50 >> 6));
          v53 = 1 << v50;
          if (((1 << v50) & v52) == 0)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_43;
      }

LABEL_41:
      *(v47 + 8 * v51) = v53 | v52;
      *(v54 + 8 * v50) = v48;
      v55 = *(v36 + 16);
      v18 = __OFADD__(v55, 1);
      v46 = v55 + 1;
      if (v18)
      {
        __break(1u);
LABEL_87:
        __break(1u);
        return result;
      }
    }

    else
    {
      v36 = MEMORY[0x277D84FA0];
      if (v35 != 38)
      {
        goto LABEL_43;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
      v36 = sub_252E379A4();
      v37 = v36 + 56;
      v38 = qword_2864A99C0;
      sub_252E37EC4();
      MEMORY[0x2530AE390](v38);
      v13 = v85;
      result = sub_252E37F14();
      v39 = ~(-1 << *(v36 + 32));
      v40 = result & v39;
      v41 = (result & v39) >> 6;
      v42 = *(v36 + 56 + 8 * v41);
      v43 = 1 << (result & v39);
      v44 = *(v36 + 48);
      if ((v43 & v42) != 0)
      {
        while (*(v44 + 8 * v40) != v38)
        {
          v40 = (v40 + 1) & v39;
          v41 = v40 >> 6;
          v42 = *(v37 + 8 * (v40 >> 6));
          v43 = 1 << v40;
          if (((1 << v40) & v42) == 0)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_43;
      }

LABEL_35:
      *(v37 + 8 * v41) = v43 | v42;
      *(v44 + 8 * v40) = v38;
      v45 = *(v36 + 16);
      v18 = __OFADD__(v45, 1);
      v46 = v45 + 1;
      if (v18)
      {
        goto LABEL_87;
      }
    }

    *(v36 + 16) = v46;
LABEL_43:
    if (*(v36 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v25);
      v13 = v85;
      v56 = sub_252E37F14();
      v57 = -1 << *(v36 + 32);
      v58 = v56 & ~v57;
      if ((*(v36 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58))
      {
        v59 = ~v57;
        while (*(*(v36 + 48) + 8 * v58) != v25)
        {
          v58 = (v58 + 1) & v59;
          if (((*(v36 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_69;
      }
    }

LABEL_48:
    v10 &= v10 - 1;

    v17 = v83;
    if (v25 == 42)
    {
      v60 = [*(v83 + v79) profiles];
      sub_252931930();
      v13 = sub_252E37264();

      if (!(v13 >> 62))
      {
        v61 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v61)
        {
          goto LABEL_51;
        }

        goto LABEL_65;
      }

      v61 = sub_252E378C4();
      if (!v61)
      {
LABEL_65:

        v9 = v72;
        v1 = v73;
        v17 = v83;
        continue;
      }

LABEL_51:
      v62 = 0;
      v9 = (v13 & 0xC000000000000001);
      while (1)
      {
        if (v9)
        {
          v63 = MEMORY[0x2530ADF00](v62, v13);
        }

        else
        {
          if (v62 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

          v63 = *(v13 + 8 * v62 + 32);
        }

        v64 = v63;
        v1 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          break;
        }

        objc_opt_self();
        v65 = swift_dynamicCastObjCClass();
        if (v65)
        {
          v66 = v65;

          v67 = [v66 userSettings];
          v9 = v72;
          v1 = v73;
          v17 = v83;
          if (!v67)
          {

            goto LABEL_19;
          }

          v13 = v67;
          v68 = [v67 supportedFeatures];

          if ((v68 & 2) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_69;
        }

        ++v62;
        if (v1 == v61)
        {
          goto LABEL_65;
        }
      }

LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  v33 = ~v31;
  while (*(*(v29 + 48) + 8 * v32) != v25)
  {
    v32 = (v32 + 1) & v33;
    if (((*(v29 + 56 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_69:

  v13 = v76;
  v15 = v80;
  v10 = v77;
  v16 = v74;
  if (v80 != v75)
  {
    goto LABEL_10;
  }

  v69 = 1;
LABEL_82:
  sub_252929F10(v10, 0);
  if (qword_27F53F380 != -1)
  {
    swift_once();
  }

  [v9 attribute];
  v70 = sub_252DB4F4C();
  v71 = sub_252C4B5D4();

  return v69 & v71 & v70;
}

id sub_252B61F1C(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_2529904E4(a1);
  }

  return a1;
}

void sub_252B61F34(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_252927D3C(a1);
  }
}

unint64_t sub_252B61F5C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v27 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v25 = v1;
    while (1)
    {
      if (v28)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v24);
        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_41;
        }

        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_40;
        }
      }

      v5 = sub_2529E789C();

      v6 = v5 >> 62;
      v7 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v8)
        {
          v10 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v9 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v8)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v6)
      {
        v14 = v10;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v10 = v14;
        v13 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v12 >> 1) - v11) < v7)
          {
            goto LABEL_43;
          }

          v30 = v3;
          v15 = v10 + 8 * v11 + 32;
          v26 = v10;
          if (v6)
          {
            if (v13 < 1)
            {
              goto LABEL_45;
            }

            sub_252B62E54();
            for (i = 0; i != v13; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541890, &unk_252E4DC80);
              v17 = sub_2529FBE00(v29, i, v5);
              v19 = *v18;

              (v17)(v29, 0);
              *(v15 + 8 * i) = v19;
            }
          }

          else
          {
            type metadata accessor for Scene(0);
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v30;
          if (v7 >= 1)
          {
            v20 = *(v26 + 16);
            v4 = __OFADD__(v20, v7);
            v21 = v20 + v7;
            if (v4)
            {
              goto LABEL_44;
            }

            *(v26 + 16) = v21;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_24;
        }
      }

      if (v7 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v22 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v22;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252B622A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252B625BC(a1);
}

uint64_t sub_252B62348(__int128 *a1)
{
  v1 = a1[5];
  v32 = a1[4];
  v33 = v1;
  v2 = a1[7];
  v34 = a1[6];
  v35 = v2;
  v3 = a1[1];
  v28 = *a1;
  v29 = v3;
  v4 = a1[3];
  v30 = a1[2];
  v31 = v4;
  v5 = *(a1 + 16);
  memcpy(__dst, a1 + 136, sizeof(__dst));
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = type metadata accessor for HomeStore(0);
  v7 = static HomeStore.shared.getter(v6);
  memcpy(v26, __dst, sizeof(v26));
  v8 = sub_252BAC7E4();
  v9 = HomeStore.scenes(matching:)(v8);
  LODWORD(v11) = v10;

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = *(v5 + 16);
    if (v13)
    {
      if (v9 >> 62)
      {
        goto LABEL_34;
      }

      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      v15 = 0;
      v16 = v5 + 32;
      v25 = v11;
      v23 = v13;
      while (2)
      {
        if (v15 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v17 = (v16 + 16 * v15);
        v11 = *v17;
        v18 = v17[1];
        v24 = v15 + 1;

        v13 = 0;
        while (v14 != v13)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x2530ADF00](v13, v9);
            if (__OFADD__(v13, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v19 = *(v9 + 8 * v13 + 32);

            if (__OFADD__(v13, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              v14 = sub_252E378C4();
              goto LABEL_8;
            }
          }

          if (*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v11 && *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v18)
          {

            goto LABEL_28;
          }

          v21 = sub_252E37DB4();

          ++v13;
          if (v21)
          {

LABEL_28:
            v12 = 0;
            LOBYTE(v11) = v25;
            goto LABEL_29;
          }
        }

        v12 = 1;
        v13 = v23;
        v15 = v24;
        LODWORD(v11) = v25;
        v16 = v5 + 32;
        if (v24 != v23)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 1;
    }
  }

LABEL_29:
  sub_252929F10(v9, v11 & 1);
  return v12;
}

uint64_t sub_252B625BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 456) = *a1;
  *(v1 + 472) = v2;
  *(v1 + 488) = *(a1 + 32);
  *(v1 + 528) = *(a1 + 48);
  v3 = *(a1 + 128);
  *(v1 + 448) = *(a1 + 120);
  v4 = *(a1 + 72);
  v5 = *(a1 + 104);
  *(v1 + 416) = *(a1 + 88);
  *(v1 + 432) = v5;
  *(v1 + 384) = *(a1 + 56);
  *(v1 + 400) = v4;
  *(v1 + 536) = v3;
  memcpy((v1 + 16), (a1 + 136), 0x170uLL);

  return MEMORY[0x2822009F8](sub_252B62670, 0, 0);
}

uint64_t sub_252B62670()
{
  v75 = v0;
  v61 = v0 + 504;
  v1 = type metadata accessor for HomeStore(0);
  v2 = static HomeStore.shared.getter(v1);
  v3 = sub_2529D8DC0();

  *&v64 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_16:
    v4 = sub_252E378C4();
    v62 = v0;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = v0;
    if (v4)
    {
LABEL_3:
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v11 = v64;
            goto LABEL_18;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(v3 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_13;
          }
        }

        v8 = *(v0 + 528);
        v9 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        *(v0 + 504) = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *(v0 + 512) = v9;
        v10 = swift_task_alloc();
        *(v10 + 16) = v61;

        LOBYTE(v8) = sub_2529ED970(sub_25296A69C, v10, v8);

        if (v8)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v5;
        v0 = v62;
        if (v7 == v4)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:
  v12 = (v0 + 456);

  v13 = sub_252B61F5C(v11);

  if (v13 >> 62)
  {
    goto LABEL_64;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

    v15 = static HomeStore.shared.getter(v14);
    v13 = sub_2529DA828();
  }

LABEL_21:
  v16 = v12[1];
  v64 = *v12;
  v65 = v16;
  v66 = v12[2];
  v17 = *(v0 + 384);
  v69 = *(v0 + 400);
  v18 = *(v0 + 432);
  v70 = *(v0 + 416);
  v71 = v18;
  v19 = *(v0 + 536);
  v67 = *(v0 + 528);
  v20 = *(v0 + 448);
  v68 = v17;
  v72 = v20;
  v73 = v19;
  memcpy(v74, (v0 + 16), sizeof(v74));
  v21 = sub_252A0EA50();
  v59 = *(v21 + 16);
  if (v59)
  {
    v55 = v12;
    if (v13 >> 62)
    {
      v54 = v21;
      v63 = v13 & 0xFFFFFFFFFFFFFF8;
      v22 = sub_252E378C4();
      v21 = v54;
    }

    else
    {
      v63 = v13 & 0xFFFFFFFFFFFFFF8;
      v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = 0;
    v57 = v21 + 32;
    v24 = v13 & 0xC000000000000001;
    v58 = MEMORY[0x277D84F90];
    v56 = v21;
    do
    {
      if (v23 >= *(v21 + 16))
      {
        goto LABEL_63;
      }

      if (v22)
      {
        v26 = 0;
        v60 = v23;
        v0 = *(v57 + 8 * v23);
        while (1)
        {
          if (v24)
          {
            v27 = v13;
            v28 = MEMORY[0x2530ADF00](v26, v13);
            v13 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v26 >= *(v63 + 16))
            {
              goto LABEL_62;
            }

            v27 = v13;
            v28 = *(v13 + 8 * v26 + 32);

            v13 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              if (!sub_252E378C4())
              {
                goto LABEL_20;
              }

              goto LABEL_21;
            }
          }

          v29 = [*(v28 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actionSetType];
          v30 = sub_252E36F34();
          v12 = v31;

          if (qword_27F53F8B0 != -1)
          {
            swift_once();
          }

          v32 = off_27F546228;
          if (*(off_27F546228 + 2) && (v33 = sub_252A44A10(v30, v12), (v34 & 1) != 0))
          {
            v35 = *(v32[7] + 8 * v33);
          }

          else
          {
            v35 = 0;
          }

          if (v35 == v0)
          {
            v37 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v38 = *(v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

            if (qword_27F53F520 != -1)
            {
              swift_once();
            }

            v39 = v62[67];
            v40 = sub_252E36AD4();
            __swift_project_value_buffer(v40, qword_27F544E08);
            *&v64 = 0;
            *(&v64 + 1) = 0xE000000000000000;
            sub_252E379F4();
            v62[63] = 0;
            v62[64] = 0xE000000000000000;
            MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E817A0);
            MEMORY[0x2530AD570](v37, v38);
            MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E817C0);
            v62[65] = v0;
            sub_252E37AE4();
            MEMORY[0x2530AD570](0x646E6163206E690ALL, 0xEE00206574616469);
            v41 = MEMORY[0x2530AD730](v39, MEMORY[0x277D837D0]);
            MEMORY[0x2530AD570](v41);

            v12 = v62[64];
            sub_252CC3D90(v62[63], v12, 0xD000000000000092, 0x8000000252E817E0);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_2529F7A80(0, *(v58 + 2) + 1, 1, v58);
            }

            v13 = v27;
            v0 = *(v58 + 2);
            v42 = *(v58 + 3);
            if (v0 >= v42 >> 1)
            {
              v58 = sub_2529F7A80((v42 > 1), v0 + 1, 1, v58);
            }

            *(v58 + 2) = v0 + 1;
            v25 = &v58[16 * v0];
            *(v25 + 4) = v37;
            *(v25 + 5) = v38;
LABEL_26:
            v21 = v56;
            v23 = v60;
            break;
          }

          ++v26;
          v36 = v13 == v22;
          v13 = v27;
          if (v36)
          {
            goto LABEL_26;
          }
        }
      }

      ++v23;
    }

    while (v23 != v59);

    v0 = v62;
    v12 = v55;
    v43 = v58;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  if (*(v43 + 2))
  {
    v44 = *(v0 + 536);
    v45 = *(v0 + 528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_252E3C290;
    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    v47 = v12[1];
    v64 = *v12;
    v65 = v47;
    v66 = v12[2];
    v48 = *(v0 + 384);
    v69 = *(v0 + 400);
    v49 = *(v0 + 432);
    v70 = *(v0 + 416);
    v71 = v49;
    v67 = v45;
    v50 = *(v0 + 448);
    v68 = v48;
    v72 = v50;
    v73 = v44;
    memcpy(v74, (v0 + 16), sizeof(v74));
    v51 = sub_252E1EBE8(&v64);

    *(v51 + 144) = v43;

    sub_252E1E4F8(v46 + 32);
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v52 = *(v0 + 8);

  return v52(v46);
}

unint64_t sub_252B62E54()
{
  result = qword_27F541898;
  if (!qword_27F541898)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541890, &unk_252E4DC80);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F541898);
  }

  return result;
}

uint64_t sub_252B62EB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7954797469746E65;
  }

  else
  {
    v3 = 0x6F4D746567726174;
  }

  if (v2)
  {
    v4 = 0xEA00000000006564;
  }

  else
  {
    v4 = 0xEA00000000006570;
  }

  if (*a2)
  {
    v5 = 0x7954797469746E65;
  }

  else
  {
    v5 = 0x6F4D746567726174;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006570;
  }

  else
  {
    v6 = 0xEA00000000006564;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252B62F64()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B62FEC(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252B63060(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B630E4@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_252B63144(uint64_t *a1@<X8>)
{
  v2 = 0x6F4D746567726174;
  if (*v1)
  {
    v2 = 0x7954797469746E65;
  }

  v3 = 0xEA00000000006564;
  if (*v1)
  {
    v3 = 0xEA00000000006570;
  }

  *a1 = v2;
  a1[1] = v3;
}

dispatch_semaphore_t sub_252B63188()
{
  result = dispatch_semaphore_create(1);
  qword_27F575848 = result;
  return result;
}

unint64_t sub_252B631FC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_252E378C4();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_17:

    v4 = MEMORY[0x2530ADF00](v3, v1);

LABEL_8:
    swift_beginAccess();
    v5 = *(v0 + 16);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 504 * v6 - 472);
      memcpy(__dst, v7, sizeof(__dst));
      memmove(__src, v7, 0x1F8uLL);
      GEOLocationCoordinate2DMake();
      sub_2529353AC(__dst, v12);
      memcpy(v12, __src, sizeof(v12));
    }

    else
    {
      sub_25293DEE0(v12);
    }

    memcpy(__src, v12, sizeof(__src));
    v1 = v4;
    v3 = sub_252953488(v4, __src, 0);

    if (qword_27F53F4E8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
LABEL_12:
    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D60);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_252E379F4();

    __src[0] = 0xD00000000000001FLL;
    __src[1] = 0x8000000252E82140;
    __dst[0] = v3;
    type metadata accessor for HomeAutomationIntentContext(0);

    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    sub_252CC3D90(__src[0], __src[1], 0xD00000000000006BLL, 0x8000000252E6C470);

    return v3;
  }

  if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v1 + 8 * v3 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

BOOL sub_252B63488()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 504 * v2 - 80);
  if (v3 >> 62)
  {
    if (sub_252E378C4())
    {
      return 1;
    }

    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    if (*(*(v0 + 16) + 16))
    {
      return !sub_252C5CF44();
    }

    return 0;
  }

  return 1;
}

BOOL sub_252B6355C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2 >= 2)
  {
    v4 = *(v1 + 504 * v2 - 584);
    if (v4 >> 62)
    {
      if (sub_252E378C4())
      {
        return 1;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 1;
    }

    if (*(*(v0 + 16) + 16) >= 2uLL)
    {
      return !sub_252C5CF44();
    }
  }

  return 0;
}

uint64_t sub_252B63638()
{
  swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    v1 = sub_252C5DF3C();
  }

  else
  {
    v1 = 11;
  }

  if (sub_252C5E834(v1) != 0x5465636976726573 || v2 != 0xEB00000000657079)
  {
    v4 = sub_252E37DB4();

    if (v4)
    {
      v3 = 1;
      return v3 & 1;
    }

    if (sub_252C5E834(v1) != 0x726F737365636361 || v5 != 0xED00006570795479)
    {
      v3 = sub_252E37DB4();

      return v3 & 1;
    }
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t sub_252B63794()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = sub_252CC4068(v1);
  *(v0 + 48) = 0;
  *(v0 + 50) = 0;
  *(v0 + 56) = sub_252CC407C(v1);
  *(v0 + 64) = sub_252CC41F0(v1);
  *(v0 + 72) = 0;
  *(v0 + 76) = 0;
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = v1;
  *(v0 + 160) = 0;
  *(v0 + 168) = v1;
  *(v0 + 176) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v0 + 184) = v1;
  *(v0 + 192) = 200;
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v0 + 200) = 0;
  *(v0 + 208) = v2;
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_showIntent;
  v4 = sub_252E365E4();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_preferNotices) = 0;
  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_enforceVoiceOnly) = 0;
  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_supressSnippet) = 0;
  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery) = 0;
  v5 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes) = v1;
  v6 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_appIntentDispatcher);
  *v7 = 0;
  v7[1] = 0;
  return v0;
}

uint64_t sub_252B63924(uint64_t a1)
{
  *(v1 + 168) = a1;

  swift_beginAccess();
  v2 = *(v1 + 208);
  [v2 lock];
  *(v1 + 200) = 0;
  [v2 unlock];
  swift_endAccess();
  result = swift_beginAccess();
  v4 = *(v1 + 184);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_12:
    *(v1 + 184) = MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v5 = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      if (qword_27F53F550 != -1)
      {
        swift_once();
      }

      ++v6;
      v9 = sub_252E36AD4();
      __swift_project_value_buffer(v9, qword_27F544E98);
      sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E82120, 0xD00000000000006BLL, 0x8000000252E6C470);
      sub_252E37614();
    }

    while (v5 != v6);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B63B0C()
{
  v1 = v0;
  v2 = sub_252E36C84();
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = (v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_252E36D54();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  swift_beginAccess();
  v12 = *(v0 + 200);
  v13 = *(v0 + 208);
  [v13 lock];
  [v13 unlock];

  if (v12)
  {
    v24 = v2;
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    v15 = __swift_project_value_buffer(v14, qword_27F544E98);
    v23[0] = "Clearing SessionContext";
    v23[1] = v15;
    sub_252CC3D90(0xD000000000000028, 0x8000000252E82080, 0xD00000000000006BLL, 0x8000000252E6C470);
    v16 = dispatch_semaphore_create(0);
    v17 = *(v1 + 176);
    [v17 lock];
    swift_beginAccess();
    v18 = v16;
    MEMORY[0x2530AD700]();
    if (*((*(v1 + 184) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 184) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    swift_endAccess();
    [v17 unlock];
    sub_252E36D14();
    *v4 = 200;
    v19 = v24;
    v20 = v25;
    (*(v25 + 104))(v4, *MEMORY[0x277D85178], v24);
    MEMORY[0x2530AD270](v9, v4);
    (*(v20 + 8))(v4, v19);
    v21 = *(v6 + 8);
    v21(v9, v5);
    sub_252E375F4();
    v21(v11, v5);
    if (sub_252E36C94())
    {
      sub_252CC4050(0xD000000000000049, 0x8000000252E820B0, 0xD00000000000006BLL, v23[0] | 0x8000000000000000, 0xD00000000000001ALL, 0x8000000252E82100, 242);

      return MEMORY[0x277D84F90];
    }
  }
}

void *sub_252B63EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_252B68C70(a1);
  if (v6 & 1) == 0 && (v7 = v5, swift_beginAccess(), v8 = *(v2 + 56), *(v8 + 16)) && (v9 = sub_252A44B34(v7), (v10))
  {
    memcpy(__dst, (*(v8 + 56) + 504 * v9), sizeof(__dst));
    sub_2529353AC(__dst, __src);
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D60);
    sub_252CC3D90(0xD000000000000024, 0x8000000252E82050, 0xD00000000000006BLL, 0x8000000252E6C470);
    memcpy(__src, __dst, sizeof(__src));
    GEOLocationCoordinate2DMake();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D60);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E82010);
    __dst[0] = sub_252B68C70(a1);
    LOBYTE(__dst[1]) = v13 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
    v14 = sub_252E36F94();
    MEMORY[0x2530AD570](v14);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006BLL, 0x8000000252E6C470);

    sub_25293DEE0(__src);
  }

  return memcpy(a2, __src, 0x1F8uLL);
}

uint64_t sub_252B64134(uint64_t a1, const void *a2)
{
  v4 = sub_252E34284();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_252E341A4();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E34164();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E358D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v41, a2, sizeof(v41));
  memcpy(v42, a2, 0x1F8uLL);
  result = sub_252956B94(v42);
  if (result == 1)
  {
    return result;
  }

  memcpy(v40, v42, sizeof(v40));
  (*(v9 + 16))(v11, a1, v8);
  v17 = (*(v9 + 88))(v11, v8);
  v18 = a1;
  if (v17 == *MEMORY[0x277D5C128])
  {
    (*(v9 + 96))(v11, v8);
    (*(v13 + 32))(v15, v11, v12);
    memcpy(v39, v41, sizeof(v39));
    sub_2529353AC(v39, &v37);
  }

  else
  {
    if (v17 != *MEMORY[0x277D5C158])
    {
      if (v17 != *MEMORY[0x277D5C160])
      {
        return (*(v9 + 8))(v11, v8);
      }

      (*(v9 + 96))(v11, v8);
      v25 = v29;
      v26 = v31;
      (*(v29 + 32))(v7, v11, v31);
      memcpy(v39, v41, sizeof(v39));
      sub_2529353AC(v39, &v37);
      v27 = v30;
      sub_252E34184();
      v19 = sub_252E34274();
      (*(v32 + 8))(v27, v33);
      (*(v25 + 8))(v7, v26);
      goto LABEL_7;
    }

    (*(v9 + 96))(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60);
    memcpy(v39, v41, sizeof(v39));
    sub_2529353AC(v39, &v37);

    (*(v13 + 32))(v15, v11, v12);
  }

  v19 = sub_252E358C4();
  (*(v13 + 8))(v15, v12);
LABEL_7:
  v20 = v34;
  swift_beginAccess();
  memcpy(v39, v41, sizeof(v39));
  sub_2529353AC(v39, &v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v20 + 56);
  *(v20 + 56) = 0x8000000000000000;
  sub_2529FB360(v40, v19, isUniquelyReferenced_nonNull_native);
  *(v20 + 56) = v37;
  swift_endAccess();
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D60);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E81FD0);
  v35 = sub_252B68C70(v18);
  v36 = v23 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v24 = sub_252E36F94();
  MEMORY[0x2530AD570](v24);

  sub_252CC3D90(v37, v38, 0xD00000000000006BLL, 0x8000000252E6C470);
  sub_25293847C(v41, &qword_27F5404C8, &unk_252E3FD60);
}

id sub_252B64768(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_252A44AB4(__dst);
  if ((v4 & 1) == 0)
  {

    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544D60);
  sub_252CC3D90(0xD00000000000003CLL, 0x8000000252E81F90, 0xD00000000000006BLL, 0x8000000252E6C470);
  return v5;
}

uint64_t sub_252B64884()
{
  if (sub_252B64C90())
  {
    return 0;
  }

  if (sub_252B64914())
  {
    return 1;
  }

  if (sub_252B64FF8())
  {
    return 2;
  }

  if (sub_252B653E0() & 1) != 0 && (sub_252B65FC8())
  {
    return 3;
  }

  if (*(v0 + 48))
  {
    return 4;
  }

  if (*(v0 + 49))
  {
    return 5;
  }

  return 6;
}

uint64_t sub_252B64914()
{
  swift_beginAccess();
  v2 = v0[4];
  if (v2 >> 62)
  {
    goto LABEL_46;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
LABEL_49:

      v0 = MEMORY[0x2530ADF00](v4, v2);

      goto LABEL_8;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_49;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v0 = *(v2 + 8 * v4 + 32);
LABEL_8:
    if ((sub_252C2C8E0(7) & 1) == 0)
    {
      v26 = 0;
      goto LABEL_55;
    }

    v5 = sub_252C285F0();
    v1 = v5;
    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_53;
      }

      goto LABEL_11;
    }

LABEL_52:
    v6 = sub_252E378C4();
    if (!v6)
    {
LABEL_53:
      v26 = 0;
      goto LABEL_54;
    }

LABEL_11:
    v28 = v0;
    v29 = v1;
    v7 = 0;
    v2 = v1 & 0xC000000000000001;
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v9 = v1 + 32;
    v32 = v1 & 0xC000000000000001;
    v33 = v6;
    v30 = v1 + 32;
    v31 = v1 & 0xFFFFFFFFFFFFFF8;
LABEL_14:
    if (v2)
    {
      v10 = MEMORY[0x2530ADF00](v7, v29);
    }

    else
    {
      if (v7 >= *(v8 + 16))
      {
        goto LABEL_45;
      }

      v10 = *(v9 + 8 * v7);
    }

    v0 = v10;
    if (!__OFADD__(v7++, 1))
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v3 = sub_252E378C4();
    if (!v3)
    {
      return 0;
    }
  }

  v12 = sub_252DA6828();
  v13 = *(v12 + 2);
  v14 = 32;
  do
  {
    if (!v13)
    {
      v1 = v12;

      goto LABEL_13;
    }

    v15 = *&v12[v14];
    v14 += 8;
    --v13;
  }

  while (v15 != 7);

  v16 = [v0 taskResponses];
  if (v16)
  {
    v17 = v16;
    v34 = v0;
    type metadata accessor for HomeUserTaskResponse();
    v1 = sub_252E37264();

    if (v1 >> 62)
    {
      v18 = sub_252E378C4();
      if (v18)
      {
LABEL_24:
        v19 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x2530ADF00](v19, v1);
          }

          else
          {
            if (v19 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v20 = *(v1 + 8 * v19 + 32);
          }

          v21 = v20;
          v0 = (v19 + 1);
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v22 = [v20 userTask];
          if (v22 && (v2 = v22, v23 = [v22 value], v2, v23))
          {
            [v23 doubleValue];
            v25 = v24;

            if (v25 > 51.0)
            {

              v26 = 1;
              v0 = v34;
              goto LABEL_54;
            }
          }

          else
          {
          }

          ++v19;
          if (v0 == v18)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_24;
      }
    }

LABEL_39:

    v2 = v32;
    v6 = v33;
    v9 = v30;
    v8 = v31;
  }

  else
  {
  }

LABEL_13:
  if (v7 != v6)
  {
    goto LABEL_14;
  }

  v26 = 0;
  v0 = v28;
LABEL_54:

LABEL_55:

  return v26;
}

uint64_t sub_252B64C90()
{
  swift_beginAccess();
  v2 = v0[4];
  if (v2 >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    goto LABEL_51;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_52;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v0 = *(v2 + 8 * v4 + 32);
  while (1)
  {
    if ((sub_252C2C8E0(7) & 1) == 0)
    {
      v26 = 0;
      goto LABEL_58;
    }

    v5 = sub_252C285F0();
    v1 = v5;
    if (v5 >> 62)
    {
      break;
    }

    v4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_56;
    }

LABEL_11:
    v30 = v4;
    v31 = v0;
    v6 = 0;
    v2 = v1 & 0xC000000000000001;
    v7 = v1 & 0xFFFFFFFFFFFFFF8;
    v8 = v1 + 32;
    v32 = v1 + 32;
    v33 = v1;
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    v29 = v1 & 0xC000000000000001;
    while (1)
    {
LABEL_12:
      if (v2)
      {
        v9 = MEMORY[0x2530ADF00](v6, v1);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_50;
        }

        v9 = *(v8 + 8 * v6);
      }

      v0 = v9;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v11 = sub_252DA6828();
      v12 = *(v11 + 2);
      v13 = 32;
      do
      {
        if (!v12)
        {

          if (v6 != v4)
          {
            goto LABEL_12;
          }

LABEL_44:
          v26 = 0;
          v0 = v31;
          goto LABEL_57;
        }

        v14 = *&v11[v13];
        v13 += 8;
        --v12;
      }

      while (v14 != 7);

      v15 = [v0 taskResponses];
      if (v15)
      {
        v16 = v15;
        type metadata accessor for HomeUserTaskResponse();
        v1 = sub_252E37264();

        v2 = v1 & 0xFFFFFFFFFFFFFF8;
        if (v1 >> 62)
        {
          v17 = sub_252E378C4();
        }

        else
        {
          v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v18 = 0;
        while (1)
        {
          if (v17 == v18)
          {

            v1 = v33;
            v2 = v29;
            v4 = v30;
            v7 = v28;
            goto LABEL_37;
          }

          if ((v1 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x2530ADF00](v18, v1);
          }

          else
          {
            if (v18 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v19 = *(v1 + 8 * v18 + 32);
          }

          v20 = v19;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v21 = [v19 userTask];
          if (!v21 || (v22 = v21, v23 = [v21 value], v22, !v23))
          {

LABEL_43:

            v26 = 1;
            goto LABEL_57;
          }

          [v23 doubleValue];
          v25 = v24;

          ++v18;
          if (v25 < 30.0)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v3 = sub_252E378C4();
        if (!v3)
        {
          return 0;
        }

        goto LABEL_3;
      }

LABEL_37:
      v8 = v32;
      if (v6 == v4)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:

    v0 = MEMORY[0x2530ADF00](v4, v2);
  }

LABEL_55:
  v4 = sub_252E378C4();
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_56:
  v26 = 0;
LABEL_57:

LABEL_58:

  return v26;
}

uint64_t sub_252B64FF8()
{
  swift_beginAccess();
  v3 = *(v0 + 32);
  if (v3 >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v3 + 8 * v5 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_54;
  }

  v1 = MEMORY[0x2530ADF00](v5, v3);

LABEL_8:
  if ((sub_252C2C8E0(28) & 1) == 0)
  {
    v30 = 0;
    goto LABEL_57;
  }

  v3 = v1;
  v6 = sub_252C285F0();
  v2 = v6;
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_55;
    }

    goto LABEL_11;
  }

LABEL_54:
  v7 = sub_252E378C4();
  if (v7)
  {
LABEL_11:
    v8 = 0;
    v9 = v2 & 0xC000000000000001;
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    v11 = v2 + 32;
    v38 = v2;
    v39 = v1;
    v35 = v2 & 0xC000000000000001;
    v36 = v7;
    v33 = v2 + 32;
    v34 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_14:
    if (v9)
    {
      v12 = MEMORY[0x2530ADF00](v8, v2);
    }

    else
    {
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_47;
      }

      v12 = *(v11 + 8 * v8);
    }

    v3 = v12;
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_46;
    }

    v14 = sub_252DA6828();
    v15 = *(v14 + 2);
    v16 = 32;
    while (v15)
    {
      v17 = *&v14[v16];
      v16 += 8;
      --v15;
      if (v17 == 28)
      {

        v18 = [v3 taskResponses];
        if (v18)
        {
          v19 = v18;
          v40 = v3;
          type metadata accessor for HomeUserTaskResponse();
          v2 = sub_252E37264();

          v37 = v8;
          v3 = v2 & 0xFFFFFFFFFFFFFF8;
          if (v2 >> 62)
          {
            v20 = sub_252E378C4();
          }

          else
          {
            v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v21 = 0;
          while (1)
          {
            if (v20 == v21)
            {

              v2 = v38;
              v1 = v39;
              v7 = v36;
              v8 = v37;
              v10 = v34;
              v9 = v35;
              v11 = v33;
              goto LABEL_13;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x2530ADF00](v21, v2);
            }

            else
            {
              if (v21 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }

              v24 = *(v2 + 8 * v21 + 32);
            }

            v25 = v24;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              v4 = sub_252E378C4();
              if (!v4)
              {
                return 0;
              }

              goto LABEL_3;
            }

            v26 = [v24 userTask];
            if (v26)
            {
              v27 = v26;
              v22 = [v26 value];

              if (!v22)
              {
                goto LABEL_26;
              }

              v28 = [v22 stringValue];

              if (v28)
              {
                v22 = sub_252E36F34();
                v1 = v29;

                goto LABEL_27;
              }
            }

            v22 = 0;
LABEL_26:
            v1 = 0;
LABEL_27:
            v41[0] = v22;
            v41[1] = v1;
            MEMORY[0x28223BE20](v26);
            v32[2] = v41;
            v23 = sub_2529EDB18(sub_252B68C50, v32, &unk_2864A3470);

            ++v21;
            if (v23)
            {

              v30 = 1;
              v1 = v40;
              goto LABEL_56;
            }
          }
        }

LABEL_13:
        if (v8 == v7)
        {
          goto LABEL_55;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

LABEL_55:
  v30 = 0;
LABEL_56:

LABEL_57:

  return v30;
}

uint64_t sub_252B653E0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  memcpy(__dst, (v1 + 504 * v2 - 472), sizeof(__dst));
  swift_beginAccess();
  v3 = *(v0 + 24);
  if (v3 >> 62)
  {
    result = sub_252E378C4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v3 + 8 * v5 + 32);
      sub_2529353AC(__dst, v19);
      v7 = v6;
      goto LABEL_9;
    }

    __break(1u);
    return result;
  }

  sub_2529353AC(__dst, v19);

  v7 = MEMORY[0x2530ADF00](v5, v3);

LABEL_9:
  v8 = [v7 userTask];
  if (!v8)
  {
    sub_252C515AC();
    goto LABEL_17;
  }

  v9 = v8;
  if ([v8 taskType] == 4)
  {

    goto LABEL_14;
  }

  v10 = [v9 taskType];

  if (v10 != 5)
  {
LABEL_17:

    sub_252935408(__dst);
    return 0;
  }

LABEL_14:
  v11 = [v7 userTask];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v11 attribute];

  v14 = vdupq_n_s64(v13);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A54F0, v14), vceqq_s64(unk_2864A5500, v14)))) & 1) == 0 && qword_2864A5510 != v13)
  {
    goto LABEL_17;
  }

  if (BYTE1(__dst[26]) == 2)
  {
    v15 = (__dst[11] + 32);
    v16 = *(__dst[11] + 16);
    while (2)
    {
      if (v16)
      {
        switch(*v15)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
          case 0x12:
          case 0x13:
          case 0x14:
            v17 = sub_252E37DB4();

            ++v15;
            --v16;
            if ((v17 & 1) == 0)
            {
              continue;
            }

            goto LABEL_25;
          default:

            goto LABEL_26;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_25:

LABEL_26:
  v18 = *(__dst[24] + 16);
  sub_252935408(__dst);
  return v18 != 0;
}

void sub_252B65874(char *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D60);
    sub_252CC4050(0xD00000000000003FLL, 0x8000000252E81F50, 0xD00000000000006BLL, 0x8000000252E6C470, 0x6465746365707865, 0xED00006574617453, 379);
    goto LABEL_60;
  }

  memcpy(__dst, (v4 + 504 * v5 - 472), sizeof(__dst));
  if (!*(__dst[24] + 16))
  {
    sub_2529353AC(__dst, v42);
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D60);
    v17 = 0xD000000000000030;
    v18 = 0x8000000252E81F10;
    v19 = 384;
LABEL_59:
    sub_252CC4050(v17, v18, 0xD00000000000006BLL, 0x8000000252E6C470, 0x6465746365707865, 0xED00006574617453, v19);
    sub_252935408(__dst);
LABEL_60:
    v38 = 77;
LABEL_61:
    *a1 = v38;
    return;
  }

  v6 = *(__dst[24] + 32);
  swift_beginAccess();
  v7 = *(v1 + 24);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_33:
    sub_2529353AC(__dst, v42);
    goto LABEL_34;
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_33;
  }

LABEL_5:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_75;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_75:
    sub_2529353AC(__dst, v42);

    v11 = MEMORY[0x2530ADF00](v9, v7);

    goto LABEL_10;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_77;
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
LABEL_41:
    v26 = qword_27F575A28;
    if (*(qword_27F575A28 + 16))
    {
      v27 = sub_252A4509C(v6);
      if (v28)
      {
        LOBYTE(v6) = *(*(v26 + 56) + v27);
        goto LABEL_44;
      }
    }

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v37 = sub_252E36AD4();
    __swift_project_value_buffer(v37, qword_27F544D60);
    v17 = 0xD000000000000034;
    v18 = 0x8000000252E81ED0;
    v19 = 402;
    goto LABEL_59;
  }

  v10 = *(v7 + 8 * v9 + 32);
  sub_2529353AC(__dst, v42);
  v11 = v10;
LABEL_10:
  v12 = [v11 userTask];

  if (!v12)
  {
    goto LABEL_34;
  }

  v13 = [v12 attribute];

  if (v13 != 8)
  {
    goto LABEL_34;
  }

  v42[0] = v6;
  if (StateSemantic.rawValue.getter() != 1852141679 || v14 != 0xE400000000000000)
  {
    v20 = sub_252E37DB4();

    if (v20)
    {
      goto LABEL_22;
    }

    v42[0] = v6;
    if (StateSemantic.rawValue.getter() != 0x6465736F6C63 || v23 != 0xE600000000000000)
    {
      v24 = sub_252E37DB4();

      if ((v24 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_22;
    }
  }

LABEL_22:
  v42[0] = v6;
  if (StateSemantic.rawValue.getter() == 1852141679 && v21 == 0xE400000000000000)
  {

    v6 = 6;
  }

  else
  {
    v22 = sub_252E37DB4();

    if (v22)
    {
      v6 = 6;
    }

    else
    {
      v6 = 5;
    }
  }

LABEL_34:
  v25 = LOBYTE(__dst[26]);
  memcpy(v42, __dst, sizeof(v42));
  if ((sub_252A10D90() & 1) != 0 && (v25 == 9 || (sub_252A0D524(v25, 0) & 1) == 0) || BYTE1(__dst[26]) == 2 && (v25 == 9 || (sub_252A0D524(v25, 0) & 1) == 0))
  {
    if (qword_27F53F3F0 == -1)
    {
      goto LABEL_41;
    }

    goto LABEL_78;
  }

LABEL_44:
  v29 = *(v2 + 24);
  if (v29 >> 62)
  {
    v30 = sub_252E378C4();
    if (!v30)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v30)
    {
LABEL_63:
      sub_252935408(__dst);
LABEL_64:
      *a1 = v6;
      return;
    }
  }

  v31 = v30 - 1;
  if (__OFSUB__(v30, 1))
  {
    __break(1u);
  }

  else if ((v29 & 0xC000000000000001) == 0)
  {
    if ((v31 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v31 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *(v29 + 8 * v31 + 32);
      goto LABEL_51;
    }

    __break(1u);
    return;
  }

  v32 = MEMORY[0x2530ADF00](v31, v29);

LABEL_51:
  v33 = [v32 userTask];
  if (!v33)
  {

    goto LABEL_63;
  }

  v34 = v33;
  v35 = [v33 attribute];

  if (v35 == 13)
  {
    v42[0] = v6;
    if (StateSemantic.rawValue.getter() == 28271 && v36 == 0xE200000000000000)
    {

LABEL_68:
      sub_252935408(__dst);
      v38 = 46;
      goto LABEL_61;
    }

    v39 = sub_252E37DB4();

    if (v39)
    {

      goto LABEL_68;
    }

    v42[0] = v6;
    if (StateSemantic.rawValue.getter() == 6710895 && v40 == 0xE300000000000000)
    {

      sub_252935408(__dst);

      v38 = 50;
      goto LABEL_61;
    }

    v41 = sub_252E37DB4();

    sub_252935408(__dst);

    if (v41)
    {
      v38 = 50;
      goto LABEL_61;
    }

    goto LABEL_64;
  }

  sub_252935408(__dst);

  *a1 = v6;
}

uint64_t sub_252B65FC8()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    result = sub_252E378C4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
LABEL_46:

    v4 = MEMORY[0x2530ADF00](v4, v2);

    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_48:
    v5 = sub_252E378C4();
    if (!v5)
    {
      goto LABEL_31;
    }

    goto LABEL_10;
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_51;
  }

  v4 = *(v2 + 8 * v4 + 32);
LABEL_8:
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_31:

    return 0;
  }

LABEL_10:
  v2 = v5 - 1;
  if (__OFSUB__(v5, 1))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_52:

    v2 = MEMORY[0x2530ADF00](v2, v1);

    goto LABEL_15;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_56;
  }

  v2 = *(v1 + 8 * v2 + 32);
LABEL_15:
  v6 = sub_252C285F0();
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_17;
  }

LABEL_54:
  v7 = sub_252E378C4();
LABEL_17:

  if (!v7)
  {
LABEL_30:

    goto LABEL_31;
  }

  sub_252B65874(v26);
  v8 = LOBYTE(v26[0]);
  if (LOBYTE(v26[0]) == 77)
  {
    if (qword_27F53F500 == -1)
    {
LABEL_20:
      v9 = sub_252E36AD4();
      __swift_project_value_buffer(v9, qword_27F544DA8);
      sub_252CC4050(0xD000000000000034, 0x8000000252E81E70, 0xD00000000000006BLL, 0x8000000252E6C470, 0xD00000000000001DLL, 0x8000000252E81EB0, 437);
      goto LABEL_30;
    }

LABEL_56:
    swift_once();
    goto LABEL_20;
  }

  v10 = [v4 userTask];
  if (!v10)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544D60);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E81E00, 0xD00000000000006BLL, 0x8000000252E6C470);
    goto LABEL_30;
  }

  v11 = v10;
  v12 = [v10 attribute];

  v13 = sub_2529A78B0(v8, &unk_2864A5550);
  if (v13)
  {
    v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v13);
    sub_252929E74((v14 + 16), v26);

    v15 = v27;
    v16 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    LOBYTE(v15) = sub_2529796B4(v15, v16);
    __swift_destroy_boxed_opaque_existential_1(v26);
    if (v15)
    {
      LOBYTE(v26[0]) = v8;
      if (StateSemantic.rawValue.getter() == 1852141679 && v17 == 0xE400000000000000)
      {
      }

      else
      {
        v19 = sub_252E37DB4();

        if ((v19 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (sub_252C2CB58())
      {
        goto LABEL_30;
      }
    }
  }

  LOBYTE(v26[0]) = v8;
  v20 = sub_252C2CDC4(v26, v12);
  v21 = v20;
  v22 = v20 >> 62;
  if (v20 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_37;
    }

LABEL_58:

    return 1;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_58;
  }

LABEL_37:
  v23 = sub_252C285F0();
  if (v23 >> 62)
  {
    v24 = sub_252E378C4();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    v25 = sub_252E378C4();
  }

  else
  {
    v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v24 != v25;
}

uint64_t sub_252B664A8()
{
  swift_beginAccess();
  v4 = *(v0 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  memcpy(__dst, (v4 + 504 * v5 - 472), sizeof(__dst));
  swift_beginAccess();
  v6 = *(v0 + 24);
  if (v6 >> 62)
  {
    result = sub_252E378C4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_49;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_49:
    sub_2529353AC(__dst, v49);

    v8 = MEMORY[0x2530ADF00](v8, v6);

    goto LABEL_9;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_54;
  }

  v9 = *(v6 + 8 * v8 + 32);
  sub_2529353AC(__dst, v49);
  v8 = v9;
LABEL_9:
  swift_beginAccess();
  v0 = *(v0 + 32);
  if (!(v0 >> 62))
  {
    v10 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_52:

    goto LABEL_59;
  }

LABEL_51:
  v10 = sub_252E378C4();
  if (!v10)
  {
    goto LABEL_52;
  }

LABEL_11:
  v6 = v10 - 1;
  if (__OFSUB__(v10, 1))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_55:

    v6 = MEMORY[0x2530ADF00](v6, v0);

    goto LABEL_16;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_63:
    v26 = sub_252E378C4();
    v46 = v8;
    if (v26)
    {
      goto LABEL_40;
    }

    goto LABEL_64;
  }

  v6 = *(v0 + 8 * v6 + 32);
LABEL_16:
  v11 = sub_252C285F0();
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v12)
    {
      goto LABEL_18;
    }

LABEL_58:

    goto LABEL_59;
  }

LABEL_57:
  v31 = sub_252E378C4();

  if (!v31)
  {
    goto LABEL_58;
  }

LABEL_18:
  if (!*(__dst[24] + 16))
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544D60);
    v19 = "te on previous intent.";
    v20 = 0xD000000000000035;
    goto LABEL_30;
  }

  v3 = 0xD00000000000006BLL;
  v13 = *(__dst[24] + 32);
  v14 = [v8 userTask];
  if (!v14)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D60);
    v19 = "ow up parameters:";
    v20 = 0xD000000000000026;
LABEL_30:
    sub_252CC3D90(v20, v19 | 0x8000000000000000, 0xD00000000000006BLL, 0x8000000252E6C470);

LABEL_59:
    sub_252935408(__dst);
    return 0;
  }

  v15 = v14;
  v16 = [v14 attribute];

  if (v16 != 13)
  {
    goto LABEL_38;
  }

  LOBYTE(v49[0]) = v13;
  if (StateSemantic.rawValue.getter() == 28271 && v17 == 0xE200000000000000)
  {

    v13 = 46;
    goto LABEL_38;
  }

  v22 = sub_252E37DB4();

  if (v22)
  {
    v13 = 46;
    goto LABEL_38;
  }

  LOBYTE(v49[0]) = v13;
  if (StateSemantic.rawValue.getter() == 6710895 && v23 == 0xE300000000000000)
  {
  }

  else
  {
    v24 = sub_252E37DB4();

    if ((v24 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v13 = 50;
LABEL_38:
  LOBYTE(v49[0]) = v13;
  v25 = sub_252C2CDC4(v49, v16);
  v1 = v25;
  v2 = v25 >> 62;
  if (v25 >> 62)
  {
    goto LABEL_63;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v46 = v8;
  if (v26)
  {
LABEL_40:
    v27 = sub_252C285F0();
    if (v27 >> 62)
    {
      v28 = sub_252E378C4();
    }

    else
    {
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v2)
    {
      v29 = sub_252E378C4();
    }

    else
    {
      v29 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v28 == v29;
    v48 = v28 != v29;
    goto LABEL_65;
  }

LABEL_64:

  v48 = 0;
  v30 = 0;
LABEL_65:
  if (LOBYTE(__dst[26]) == 9)
  {
    v32 = 0;
  }

  else
  {
    v32 = sub_252A0D524(__dst[26], 0);
  }

  v47 = v32;
  memcpy(v49, __dst, sizeof(v49));
  v45 = sub_252A10D90();
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v33 = sub_252E36AD4();
  __swift_project_value_buffer(v33, qword_27F544D60);
  sub_252CC3D90(v3 - 74, 0x8000000252E81DD0, 0xD00000000000006BLL, 0x8000000252E6C470);
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x3A686374614D6F6ELL, 0xE900000000000020);
  if (v26)
  {
    v34 = 0x65736C6166;
  }

  else
  {
    v34 = 1702195828;
  }

  if (v26)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v34, v35);

  MEMORY[0x2530AD570](0x6374614D6C6C610ALL, 0xEB00000000203A68);
  v44 = v30;
  if (v30)
  {
    v36 = 1702195828;
  }

  else
  {
    v36 = 0x65736C6166;
  }

  if (v30)
  {
    v37 = 0xE400000000000000;
  }

  else
  {
    v37 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v36, v37);

  MEMORY[0x2530AD570](0x74614D656D6F730ALL, 0xEC000000203A6863);
  if (v48)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v48)
  {
    v39 = 0xE400000000000000;
  }

  else
  {
    v39 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v38, v39);

  MEMORY[0x2530AD570](0x203A74655373690ALL, 0xE800000000000000);
  if (v47)
  {
    v40 = 1702195828;
  }

  else
  {
    v40 = 0x65736C6166;
  }

  if (v47)
  {
    v41 = 0xE400000000000000;
  }

  else
  {
    v41 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v40, v41);

  MEMORY[0x2530AD570](0x6567726F4673690ALL, 0xEB00000000203A74);
  if (v45)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v45)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v42, v43);

  sub_252CC3D90(v49[0], v49[1], 0xD00000000000006BLL, 0x8000000252E6C470);

  sub_252935408(__dst);

  if (!v48)
  {
    return (v44 ^ v45 & v47) & 1;
  }

  if ((v47 | v45))
  {
    return v45 & 1;
  }

  return 2;
}

double sub_252B66C78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  if (a2)
  {
    v8 = sub_252B680FC(a1);
    swift_beginAccess();
    v9 = *(v8 + 40);

    if (*(v9 + 16))
    {
      v10 = sub_252A44A10(a1, a2);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        if (*(v12 + 16))
        {
          v13 = sub_252A44D48(a3 & 1);
          if (v14)
          {
            sub_252974E7C(*(v12 + 56) + 32 * v13, a4);

            return result;
          }
        }
      }
    }
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

uint64_t sub_252B66D6C@<X0>(__int16 *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = (v4 + 504 * v5 - 416);
  v7 = v5 + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 -= 63;
    if (*(v8 + 16))
    {
      v9 = *(v8 + 32);
      goto LABEL_5;
    }
  }

  v9 = 709;
LABEL_5:
  *a1 = v9;
  return result;
}

void sub_252B66DE8(void *a1)
{
  v2 = v1;
  if (sub_252C4D664(5))
  {

    sub_252B67418(a1);
    return;
  }

  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = v5[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v6 != 2 && (v6 & 1) == 0)
  {
    v20 = 12;
    goto LABEL_23;
  }

  v7 = [a1 filters];
  if (!v7)
  {
LABEL_21:
    v20 = 1;
LABEL_23:
    sub_2529318DC();
    v11 = swift_allocError();
    *v21 = v20;

LABEL_24:
    v22 = v11;
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_25;
  }

  v8 = v7;
  type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  v10 = [a1 userTask];
  v11 = HomeStore.accessories(matching:supporting:)(v9, v10);
  v13 = v12;

  if (v13)
  {
    goto LABEL_24;
  }

  v14 = MEMORY[0x277D84F90];
  v46 = v2;
  if (v11 >> 62)
  {
    v44 = sub_252E378C4();
    v45 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities;
    *v45 = v44;
    *(v45 + 8) = 0;
    v47[0] = v14;
    v16 = sub_252E378C4();
  }

  else
  {
    v15 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities;
    *v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v15 + 8) = 0;
    v47[0] = v14;
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_27:
    v25 = sub_252C759A0(v24);

    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = sub_252DFA464(*(v25 + 16), 0);
      v28 = sub_252E1135C();
      sub_25291AE30(v47[0]);
      if (v28 != v26)
      {
        __break(1u);
LABEL_49:
        swift_once();
LABEL_31:
        v29 = off_27F545690;
        v30 = 32;
        v31 = v11;
        do
        {
          if (v29[2] && (v32 = sub_252A488EC(), (v33 & 1) != 0))
          {
            v34 = (v29[7] + 16 * v32);
            v35 = *v34;
            v36 = v34[1];
          }

          else
          {
            v36 = 0xE700000000000000;
            v35 = 0x4E574F4E4B4E55;
          }

          v47[0] = v28;
          v38 = *(v28 + 2);
          v37 = *(v28 + 3);
          if (v38 >= v37 >> 1)
          {
            sub_2529AA3A0((v37 > 1), v38 + 1, 1);
            v28 = v47[0];
          }

          *(v28 + 2) = v38 + 1;
          v39 = &v28[16 * v38];
          *(v39 + 4) = v35;
          *(v39 + 5) = v36;
          v30 += 8;
          --v13;
        }

        while (v13);
        v11 = v31;

        goto LABEL_42;
      }

      v13 = v27[2];
      if (v13)
      {
LABEL_30:
        v47[0] = v17;
        sub_2529AA3A0(0, v13, 0);
        v28 = v17;
        if (qword_27F53F690 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_49;
      }
    }

    else
    {

      v13 = *(MEMORY[0x277D84F90] + 16);
      if (v13)
      {
        goto LABEL_30;
      }
    }

    v28 = MEMORY[0x277D84F90];
LABEL_42:
    v47[0] = sub_252DF88E4(v28);

    sub_252AC841C(v47);

    *(v46 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes) = v47[0];

    sub_252C4D9D8();
    v41 = v40;
    sub_252929F10(v11, 0);
    v42 = *&aMultiple[8 * v41 + 8];
    v43 = (v46 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer);
    *v43 = *&aHome_16[8 * v41];
    v43[1] = v42;

    return;
  }

  v18 = 0;
  while ((v11 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x2530ADF00](v18, v11);
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_16:
    v13 = (*(*v5 + 272))();

    sub_25297AEDC(v13);
    ++v18;
    if (v19 == v16)
    {
      v24 = v47[0];
      goto LABEL_27;
    }
  }

  if (v18 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v11 + 8 * v18 + 32);

    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_25:
  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544D60);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E82160);
  v47[5] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006BLL, 0x8000000252E6C470, 0xD00000000000001CLL, 0x8000000252E821A0, 706);
  sub_252929F10(v11, 1);
}

char *sub_252B67418(void *a1)
{
  v2 = v1;
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v4 = result;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  v6 = type metadata accessor for HomeStore(0);
  v7 = static HomeStore.shared.getter(v6);
  v8 = sub_2529DA828();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_42:

    v20 = 0;
    v37 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities;
    *v37 = 0;
    *(v37 + 8) = 1;
    goto LABEL_43;
  }

LABEL_41:
  v9 = sub_252E378C4();
  if (!v9)
  {
    goto LABEL_42;
  }

LABEL_4:
  v10 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2530ADF00](v10, v8);
      v11 = result;
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_13:
        __break(1u);
        return result;
      }
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_41;
      }

      v11 = *(v8 + 8 * v10 + 32);

      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_13;
      }
    }

    if (sub_252967B6C(v5))
    {
      break;
    }

    ++v10;
    if (v12 == v9)
    {
      goto LABEL_42;
    }
  }

  v13 = sub_252B2F470();

  if (v13 >> 62)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities;
  *v15 = v14;
  *(v15 + 8) = 0;
  if (!v11)
  {
    v20 = 0;
    goto LABEL_43;
  }

  v16 = sub_252B2F470();

  if (v16 >> 62)
  {
    v17 = sub_252E378C4();
    if (v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
LABEL_20:
      v38 = v2;
      v40 = MEMORY[0x277D84F90];
      result = sub_2529AA3A0(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v19 = v16;
      v39 = v16 & 0xC000000000000001;
      v20 = v40;
      v21 = v16;
      v22 = v17;
      do
      {
        if (v39)
        {
          v23 = MEMORY[0x2530ADF00](v18, v19);
        }

        else
        {
          v23 = *(v19 + 8 * v18 + 32);
        }

        v24 = [*(v23 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v25 = sub_252E36F34();
        v27 = v26;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        if (*(off_27F546230 + 2))
        {
          sub_252A44A10(v25, v27);
        }

        if (qword_27F53F690 != -1)
        {
          swift_once();
        }

        v28 = off_27F545690;
        if (*(off_27F545690 + 2) && (v29 = sub_252A488EC(), (v30 & 1) != 0))
        {
          v31 = (v28[7] + 16 * v29);
          v33 = *v31;
          v32 = v31[1];
        }

        else
        {
          v32 = 0xE700000000000000;
          v33 = 0x4E574F4E4B4E55;
        }

        v35 = *(v40 + 16);
        v34 = *(v40 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_2529AA3A0((v34 > 1), v35 + 1, 1);
        }

        ++v18;
        *(v40 + 16) = v35 + 1;
        v36 = v40 + 16 * v35;
        *(v36 + 32) = v33;
        *(v36 + 40) = v32;
        v19 = v21;
      }

      while (v22 != v18);

      v2 = v38;
      goto LABEL_43;
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_43:
  sub_252B678D0(v20);

  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer) = xmmword_252E4DC90;
}

uint64_t sub_252B678D0(uint64_t a1)
{
  if (a1)
  {
    v4 = sub_252DF88E4(a1);

    sub_252AC841C(&v4);

    v2 = v4;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes) = v2;
}

uint64_t sub_252B6796C()
{
  v1 = sub_252E36674();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543778, &qword_252E4DF28);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_252E366A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_appIntentDispatcher);
  if (*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_appIntentDispatcher))
  {
    v11 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_appIntentDispatcher);
  }

  else
  {
    v12 = [objc_opt_self() defaultEnvironment];
    v17[3] = sub_252B6904C();
    v17[4] = MEMORY[0x277CEB188];
    v17[0] = v12;
    sub_252E36664();
    (*(v2 + 104))(v4, *MEMORY[0x277CEB068], v1);
    sub_252E36694();
    v11 = sub_252E36684();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(v17);
    *v10 = v11;
    v10[1] = v14;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v11;
}

id *sub_252B67BFC()
{

  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_showIntent, &qword_27F540F98, &qword_252E3F950);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_252B67CF0()
{
  sub_252B67BFC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionContext(uint64_t a1)
{
  result = qword_27F543748;
  if (!qword_27F543748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252B67D9C(uint64_t a1)
{
  sub_252B67EDC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_252B67EDC(uint64_t a1)
{
  if (!qword_27F543758)
  {
    sub_252E365E4();
    v1 = sub_252E37734();
    if (!v2)
    {
      atomic_store(v1, &qword_27F543758);
    }
  }
}

unint64_t sub_252B67F48()
{
  result = qword_27F543760;
  if (!qword_27F543760)
  {
    result = swift_getWitnessTable(byte_252E4DEDC, &type metadata for ContextClimateKey, v0, v1);
    atomic_store(result, &qword_27F543760);
  }

  return result;
}

BOOL sub_252B67F9C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_252E37DB4() & 1;
    }
  }

  return result;
}

uint64_t sub_252B68010()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544D60);
  sub_252CC3D90(0xD000000000000017, 0x8000000252E6C450, 0xD00000000000006BLL, 0x8000000252E6C470);
  if (qword_27F53F388 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  qword_27F543738 = 0;

  return sub_252E37614();
}

uint64_t sub_252B680FC(uint64_t a1)
{
  sub_252D806C0(a1);
  sub_252D7ED58(0x436E6F6973736553, 0xEE00747865746E6FLL, sub_252B68010, 0, 15);

  if (qword_27F53F388 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v1 = qword_27F543738;
  if (qword_27F543738)
  {
  }

  else
  {
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000017, 0x8000000252E821C0, 0xD00000000000006BLL, 0x8000000252E6C470);
    type metadata accessor for SessionContext(0);
    swift_allocObject();
    v1 = sub_252B63794();
    qword_27F543738 = v1;
  }

  sub_252E37614();
  return v1;
}

uint64_t sub_252B68288()
{
  v0 = sub_252E36AB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F600 != -1)
  {
    swift_once();
  }

  v4 = qword_27F544F88;
  sub_252E36A94();
  sub_252E375D4();
  v5 = sub_252E36A84();
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v6 + 56), v11);

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_252E33EB4();
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v7 = sub_252E33E74();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v8 = sub_252E375C4();
  sub_252E36A74(v8, &dword_252917000, v4, "GetEndpointId", 13, 2, v3, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v1 + 8))(v3, v0);
  return v7;
}

uint64_t sub_252B684A0(uint64_t a1, char a2, uint64_t a3)
{
  v38 = a2 & 1;
  v45[0] = a2 & 1;
  v4 = sub_252974E7C(a3, &v46);
  v5 = sub_252B680FC(v4);
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_24:

    return sub_25293847C(v45, &qword_27F543770, &unk_252E4DF18);
  }

  v7 = "Clearing SessionContext";
  swift_beginAccess();
  v8 = (a1 + 40);
  while (1)
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v11 = qword_27F53F498;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544C70);
    v43 = 0;
    *&v44[0] = 0xE000000000000000;
    sub_252E379F4();

    v43 = 0xD000000000000025;
    *&v44[0] = 0x8000000252E81D50;
    MEMORY[0x2530AD570](v9, v10);
    sub_252CC3D90(v43, *&v44[0], 0xD00000000000006BLL, v7 | 0x8000000000000000);

    if (*(*(v5 + 40) + 16))
    {

      sub_252A44A10(v9, v10);
      v14 = v13;

      if (v14)
      {
        sub_252CC3D90(0xD000000000000024, 0x8000000252E81DA0, 0xD00000000000006BLL, v7 | 0x8000000000000000);
        v15 = sub_252B631AC(v41);
        v16 = sub_252AEE9E4(v40, v9, v10);
        if (*v17)
        {
          sub_252938414(v45, &v43, &qword_27F543770, &unk_252E4DF18);
          sub_252C3DCD4(v44, v38, v42);
          sub_25293847C(v42, &qword_27F541E80, &qword_252E3DFA0);
          (v16)(v40, 0);

          (v15)(v41, 0);
        }

        else
        {
          (v16)(v40, 0);

          (v15)(v41, 0);
          memset(v42, 0, sizeof(v42));
          sub_25293847C(v42, &qword_27F541E80, &qword_252E3DFA0);
        }

        goto LABEL_5;
      }
    }

    v39 = v6;
    v18 = v7;
    sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E81D80, 0xD00000000000006BLL, v7 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543768, &qword_252E4DF10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    sub_252938414(v45, &v43, &qword_27F543770, &unk_252E4DF18);
    *(inited + 32) = v43;
    sub_252938414(v45, v42, &qword_27F543770, &unk_252E4DF18);
    sub_252A00AF4((v42 + 8), (inited + 40));
    __swift_destroy_boxed_opaque_existential_1(v44);
    v20 = sub_252CC5188(inited);
    swift_setDeallocating();
    sub_25293847C(inited + 32, &qword_27F543770, &unk_252E4DF18);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v5;
    *&v42[0] = *(v5 + 40);
    v23 = *&v42[0];
    v25 = sub_252A44A10(v9, v10);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = *&v42[0];
        if ((v24 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_252E03300();
        v32 = *&v42[0];
        if ((v29 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_252DFEE00(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_252A44A10(v9, v10);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v25 = v30;
      v32 = *&v42[0];
      if ((v29 & 1) == 0)
      {
LABEL_19:
        v32[(v25 >> 6) + 8] |= 1 << v25;
        v33 = (v32[6] + 16 * v25);
        *v33 = v9;
        v33[1] = v10;
        *(v32[7] + 8 * v25) = v20;
        v34 = v32[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_26;
        }

        v32[2] = v36;

        goto LABEL_4;
      }
    }

    *(v32[7] + 8 * v25) = v20;
LABEL_4:
    v5 = v22;
    *(v22 + 40) = v32;

    swift_endAccess();

    v7 = v18;
    v6 = v39;
LABEL_5:
    v8 += 2;
    if (!--v6)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252B689F8(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 40;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 16 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      sub_252938414(a2, v18, &qword_27F541E80, &qword_252E3DFA0);
      if (v19)
      {
        v15 = swift_dynamicCast();
        if (v15)
        {
          sub_252B680FC(v15);
          v19 = &type metadata for ClimateModes;
          LOBYTE(v18[0]) = v17;
          sub_252B684A0(v6, 0, v18);

          goto LABEL_19;
        }
      }

      else
      {
        sub_25293847C(v18, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(a2, v18, &qword_27F541E80, &qword_252E3DFA0);
      if (!v19)
      {

        return sub_25293847C(v18, &qword_27F541E80, &qword_252E3DFA0);
      }

      v16 = swift_dynamicCast();
      if ((v16 & 1) == 0)
      {
      }

      sub_252B680FC(v16);
      v19 = &type metadata for HomeDeviceType;
      v18[0] = v17;
      sub_252B684A0(v6, 1, v18);

LABEL_19:

      return __swift_destroy_boxed_opaque_existential_1(v18);
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_23;
    }

    v10 = *v7;
    v7 += 2;
    v9 = v10;
    ++v3;
    if (v10)
    {
      v11 = *(v7 - 3);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2529F7A80(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_2529F7A80((v12 > 1), v13 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v9;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_252B68C70(uint64_t a1)
{
  v2 = sub_252E34284();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E341A4();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E34164();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E358D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 88))(v11, v8);
  if (v16 == *MEMORY[0x277D5C128])
  {
    (*(v9 + 96))(v11, v8);
LABEL_5:
    (*(v13 + 32))(v15, v11, v12);
    v17 = sub_252E358C4();
    (*(v13 + 8))(v15, v12);
    return v17;
  }

  if (v16 == *MEMORY[0x277D5C158])
  {
    (*(v9 + 96))(v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60);

    goto LABEL_5;
  }

  if (v16 == *MEMORY[0x277D5C160])
  {
    (*(v9 + 96))(v11, v8);
    v19 = v21;
    (*(v21 + 32))(v7, v11, v5);
    sub_252E34184();
    v17 = sub_252E34274();
    (*(v22 + 8))(v4, v23);
    (*(v19 + 8))(v7, v5);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  return v17;
}

unint64_t sub_252B6904C()
{
  result = qword_27F543780;
  if (!qword_27F543780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F543780);
  }

  return result;
}

unint64_t sub_252B690AC()
{
  result = qword_27F543788;
  if (!qword_27F543788)
  {
    result = swift_getWitnessTable(aI_6, &type metadata for FollowUpReason, v0, v1);
    atomic_store(result, &qword_27F543788);
  }

  return result;
}

uint64_t sub_252B69100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[354] = v3;
  v4[353] = a3;
  v4[352] = a2;
  v4[351] = a1;
  v4[355] = type metadata accessor for HomeAutomationSetBooleanStateParameters(0);
  v4[356] = swift_task_alloc();
  sub_252E33944();
  v4[357] = swift_task_alloc();
  v5 = sub_252E34014();
  v4[358] = v5;
  v4[359] = *(v5 - 8);
  v4[360] = swift_task_alloc();
  v4[361] = swift_task_alloc();
  v4[362] = swift_task_alloc();
  type metadata accessor for CompletionSnippetModel(0);
  v4[363] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v4[364] = v6;
  v4[365] = *(v6 - 8);
  v4[366] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B692C8, 0, 0);
}

uint64_t sub_252B692C8()
{
  v48 = v0;
  if (qword_27F53F648 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v1 = v0 + 347;
    v2 = v0 + 348;
    v3 = v0[352];
    v4 = qword_27F544FD0;
    v0[367] = qword_27F544FD0;
    v5 = v4;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    type metadata accessor for HomeAutomationEntityResponses();
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D84F90];
    *(v6 + 16) = 0;
    *(v6 + 24) = v7;
    v0[347] = v6;
    v0[348] = 0;
    v8 = [v3 userTask];
    if (!v8)
    {
      v21 = 0;
      goto LABEL_21;
    }

    v9 = v8;
    v10 = MEMORY[0x277D84F90];
    if (!v0[353])
    {
      break;
    }

    v11 = sub_252C2B064(v8);
    v12 = v11;
    __dst[0] = v10;
    v13 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v14 = sub_252E378C4();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0;
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v14 == v15)
      {

        v2 = v0 + 348;
        v1 = v0 + 347;
        v10 = MEMORY[0x277D84F90];
        v20 = v46;
        goto LABEL_20;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2530ADF00](v15, v12);
      }

      else
      {
        if (v15 >= *(v13 + 16))
        {
          goto LABEL_35;
        }

        v16 = *(v12 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = sub_252DA124C(0);

      ++v15;
      if (v19)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v46 = __dst[0];
        v15 = v18;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v20 = MEMORY[0x277D84F90];
LABEL_20:
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = v10;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v22 + 24) = v20;

  *v1 = v22;
  type metadata accessor for HomeAutomationBooleanResponses.Builder();
  *(swift_allocObject() + 16) = v10;
  type metadata accessor for HomeAutomationBooleanResponses();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v21 + 24) = v20;
  *v2 = v21;
  v6 = v22;
LABEL_21:
  v0[369] = v21;
  v0[368] = v6;
  v23 = v0[354];
  v24 = v0[352];
  memcpy(v0 + 65, (v23 + 112), 0x1F8uLL);
  memcpy(__dst, (v23 + 112), 0x1F8uLL);
  sub_2529D291C((v0 + 65), (v0 + 128));
  v25 = v24;
  v26 = sub_252953488(v24, __dst, 0);
  v0[370] = v26;

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v27 = sub_252E36AD4();
  v0[371] = __swift_project_value_buffer(v27, qword_27F544D18);
  __dst[0] = 0x203A746E65746E49;
  __dst[1] = 0xE800000000000000;
  memcpy(v0 + 2, (v23 + 112), 0x1F8uLL);
  memcpy(v0 + 191, (v23 + 112), 0x1F8uLL);
  sub_2529D291C((v0 + 2), (v0 + 254));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  v28 = sub_252E36F94();
  MEMORY[0x2530AD570](v28);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000096, 0x8000000252E82220);

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E77570;
  v0[349] = *(v26 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D8, &qword_252E4E0B0);
  v29 = sub_252E36F94();
  MEMORY[0x2530AD570](v29);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000096, 0x8000000252E82220);

  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v30);
  sub_252929E74((v31 + 288), (v0 + 317));

  v32 = v0[320];
  v33 = v0[321];
  __swift_project_boxed_opaque_existential_1(v0 + 317, v32);
  LOBYTE(v32) = (*(v33 + 120))(v32, v33);
  __swift_destroy_boxed_opaque_existential_1(v0 + 317);
  v34 = v0[354];
  v35 = v0[353];
  if (v32)
  {
    v0[372] = *(v34 + 64);

    if (v35)
    {
      LOBYTE(v35) = sub_252C2AC20();
    }

    v37 = swift_task_alloc();
    v0[373] = v37;
    *v37 = v0;
    v37[1] = sub_252B69AC4;

    return sub_252D29DB4(v21, v35 & 1, v26);
  }

  else
  {
    sub_252929E74(v34 + 24, (v0 + 322));
    __swift_project_boxed_opaque_existential_1(v0 + 322, v0[325]);
    v36 = v2;
    if (v35)
    {
      LOBYTE(v35) = sub_252C2AC20();
    }

    v39 = v0[356];
    v40 = v0[355];
    v41 = sub_252E36324();
    v42 = *(*(v41 - 8) + 56);

    v42(v39, 1, 1, v41);
    v42(v39 + v40[10], 1, 1, v41);
    *(v39 + v40[5]) = 0;
    *(v39 + v40[6]) = v35 & 1;
    *(v39 + v40[7]) = 0;
    *(v39 + v40[8]) = 0;
    *(v39 + v40[9]) = 0;
    sub_252B6C950(v39, v36, v1, v26);
    v43 = sub_252C0961C();
    v0[393] = v43;
    v45 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v44 = swift_task_alloc();
    v0[394] = v44;
    *v44 = v0;
    v44[1] = sub_252B6AF6C;

    return v45(0xD00000000000001ELL, 0x8000000252E66590, v43);
  }
}

uint64_t sub_252B69AC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2992) = a1;
  *(v3 + 3000) = v1;

  if (v1)
  {
    v4 = sub_252B6C308;
  }

  else
  {
    v4 = sub_252B69C3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B69C3C()
{
  v1 = *(v0 + 2960);
  v2 = *(v0 + 2824);
  v3 = *(v0 + 2816);
  v4 = swift_allocObject();
  *(v0 + 3008) = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v2;
  v6 = v3;

  LODWORD(v1) = *(sub_252B680FC(v7) + 129);

  if (v1 == 1)
  {
    sub_252929E74(*(v0 + 2832) + 72, v0 + 2736);
    v8 = *(v0 + 2760);
    *(v0 + 3016) = v8;
    *(v0 + 3024) = *(v0 + 2768);
    *(v0 + 3032) = __swift_project_boxed_opaque_existential_1((v0 + 2736), v8);
    v9 = swift_task_alloc();
    *(v0 + 3040) = v9;
    *v9 = v0;
    v9[1] = sub_252B69FAC;
    v10 = *(v0 + 2960);
    v11 = *(v0 + 2904);
    v12 = *(v0 + 2824);
    v13 = *(v0 + 2816);

    return sub_252A293A0(v11, v13, v12, v10);
  }

  else
  {
    v15 = *(v0 + 2992);
    v16 = *(v0 + 2824);
    v17 = *(v0 + 2816);
    v18 = swift_task_alloc();
    *(v0 + 3072) = v18;
    *(v18 + 16) = &unk_252E4E0D8;
    *(v18 + 24) = v4;
    *(v0 + 3248) = sub_252DC6D48(v17, v16);
    sub_252E33924();
    sub_252E33F54();
    v19 = v15;
    if (v16)
    {
      v20 = v5;
      v21 = swift_task_alloc();
      *(v0 + 3080) = v21;
      *v21 = v0;
      v21[1] = sub_252B6A574;

      return sub_252DC810C(v20);
    }

    else
    {
      v22 = *(v0 + 2992);
      *(v0 + 3104) = v22;
      v23 = *(v0 + 3072);
      __swift_project_boxed_opaque_existential_1((*(v0 + 2832) + 72), *(*(v0 + 2832) + 96));
      v24 = swift_task_alloc();
      *(v0 + 3112) = v24;
      *(v24 + 16) = v22;
      v25 = swift_task_alloc();
      *(v0 + 3120) = v25;
      *(v25 + 16) = &unk_252E4E0E8;
      *(v25 + 24) = v23;
      v26 = v22;
      v27 = swift_task_alloc();
      *(v0 + 3128) = v27;
      *v27 = v0;
      v27[1] = sub_252B6A68C;
      v28 = *(v0 + 2896);

      return sub_252A199A8(v0 + 2696, &unk_252E400A0, v24, &unk_252E3D1A0, v25, v28, 0, 0);
    }
  }
}

uint64_t sub_252B69FAC()
{
  v2 = *v1;
  v2[381] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252B6A270, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[382] = v3;
    *v3 = v2;
    v3[1] = sub_252B6A12C;
    v4 = v2[378];
    v5 = v2[377];
    v6 = v2[363];
    v7 = v2[351];

    return sub_252A1D73C(v7, v6, v5, v4);
  }
}

uint64_t sub_252B6A12C()
{
  v2 = *(*v1 + 2904);
  *(*v1 + 3064) = v0;

  sub_252B6D438(v2, type metadata accessor for CompletionSnippetModel);
  if (v0)
  {
    v3 = sub_252B6C470;
  }

  else
  {
    v3 = sub_252B6A3F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B6A270()
{
  v1 = v0[374];

  __swift_destroy_boxed_opaque_existential_1(v0 + 342);

  v2 = v0[367];
  v3 = v0[366];
  v4 = v0[365];
  v5 = v0[364];
  v6 = sub_252E375C4();
  v9 = 2;
  sub_252E36A74(v6, &dword_252917000, v2, "handleResponse", 14, 2, v3, " enableTelemetry=YES ", 21, v9, MEMORY[0x277D84F90]);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_252B6A3F4()
{
  v1 = v0[374];

  __swift_destroy_boxed_opaque_existential_1(v0 + 342);

  v2 = v0[367];
  v3 = v0[366];
  v4 = v0[365];
  v5 = v0[364];
  v6 = sub_252E375C4();
  v9 = 2;
  sub_252E36A74(v6, &dword_252917000, v2, "handleResponse", 14, 2, v3, " enableTelemetry=YES ", 21, v9, MEMORY[0x277D84F90]);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_252B6A574(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 3088) = a1;
  *(v3 + 3096) = v1;

  if (v1)
  {
    v4 = sub_252B6ADAC;
  }

  else
  {
    v4 = sub_252B6AC18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B6A68C()
{
  v2 = *v1;
  *(*v1 + 3136) = v0;

  if (v0)
  {

    v3 = sub_252B6AA5C;
  }

  else
  {

    v3 = sub_252B6A800;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B6A800()
{
  v1 = v0[354];
  v2 = v0[352];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  v8 = v0[388];
  v19 = v0[374];
  v9 = v0[362];
  v10 = v0[359];
  v11 = v0[358];
  (*(v4 + 112))(v6, v0 + 337, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 337);
  (*(v10 + 8))(v9, v11);

  v12 = v0[367];
  v13 = v0[366];
  v14 = v0[365];
  v15 = v0[364];
  v16 = sub_252E375C4();
  sub_252E36A74(v16, &dword_252917000, v12, "handleResponse", 14, 2, v13, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v14 + 8))(v13, v15);

  v17 = v0[1];

  return v17();
}

uint64_t sub_252B6AA5C()
{
  v1 = v0[388];
  v2 = v0[362];
  v3 = v0[359];
  v4 = v0[358];

  (*(v3 + 8))(v2, v4);
  v5 = v0[374];

  v6 = v0[367];
  v7 = v0[366];
  v8 = v0[365];
  v9 = v0[364];
  v10 = sub_252E375C4();
  v13 = 2;
  sub_252E36A74(v10, &dword_252917000, v6, "handleResponse", 14, 2, v7, " enableTelemetry=YES ", 21, v13, MEMORY[0x277D84F90]);
  (*(v8 + 8))(v7, v9);

  v11 = v0[1];

  return v11();
}

uint64_t sub_252B6AC18()
{
  v1 = *(v0 + 3088);
  v2 = *(v0 + 2992);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 3088));

    v2 = v3;
  }

  *(v0 + 3104) = v2;
  v4 = *(v0 + 3072);
  __swift_project_boxed_opaque_existential_1((*(v0 + 2832) + 72), *(*(v0 + 2832) + 96));
  v5 = swift_task_alloc();
  *(v0 + 3112) = v5;
  *(v5 + 16) = v2;
  v6 = swift_task_alloc();
  *(v0 + 3120) = v6;
  *(v6 + 16) = &unk_252E4E0E8;
  *(v6 + 24) = v4;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 3128) = v8;
  *v8 = v0;
  v8[1] = sub_252B6A68C;
  v9 = *(v0 + 2896);

  return sub_252A199A8(v0 + 2696, &unk_252E400A0, v5, &unk_252E3D1A0, v6, v9, 0, 0);
}

uint64_t sub_252B6ADAC()
{
  v1 = *(v0 + 2896);
  v2 = *(v0 + 2872);
  v3 = *(v0 + 2864);
  v4 = *(v0 + 2824);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 2992);

  v6 = *(v0 + 2936);
  v7 = *(v0 + 2928);
  v8 = *(v0 + 2920);
  v9 = *(v0 + 2912);
  v10 = sub_252E375C4();
  v13 = 2;
  sub_252E36A74(v10, &dword_252917000, v6, "handleResponse", 14, 2, v7, " enableTelemetry=YES ", 21, v13, MEMORY[0x277D84F90]);
  (*(v8 + 8))(v7, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252B6AF6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 3160) = a1;
  *(v3 + 3168) = v1;

  if (v1)
  {
    v4 = sub_252B6B41C;
  }

  else
  {
    v4 = sub_252B6B0A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B6B0A4()
{
  v1 = *(v0 + 3160);
  v2 = *(v0 + 2824);
  v3 = *(v0 + 2816);
  sub_252B6D438(*(v0 + 2848), type metadata accessor for HomeAutomationSetBooleanStateParameters);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2576));
  v4 = swift_allocObject();
  *(v0 + 3176) = v4;
  *(v4 + 16) = v1;
  v5 = v1;
  *(v0 + 3249) = sub_252DC6D48(v3, v2);
  if (v2)
  {
    v6 = *(v0 + 3160);
    v7 = *(v0 + 2824);
    v8 = v6;
    v9 = swift_task_alloc();
    *(v0 + 3184) = v9;
    *v9 = v0;
    v9[1] = sub_252B6B304;

    return sub_252E174F4(v7);
  }

  else
  {
    v11 = *(v0 + 2832);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v12 = *(v11 + 96);
    __swift_project_boxed_opaque_existential_1((v11 + 72), v12);
    sub_252AD7CC4();
    v13 = swift_task_alloc();
    *(v0 + 3208) = v13;
    *v13 = v0;
    v13[1] = sub_252B6B5B0;
    v14 = *(v0 + 2888);

    return sub_252BDB88C(v0 + 2616, &unk_252E4E0C0, v4, v14, 0, 0, 0, v12);
  }
}

uint64_t sub_252B6B304(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 3192) = a1;
  *(v3 + 3200) = v1;

  if (v1)
  {
    v4 = sub_252B6B87C;
  }

  else
  {
    v4 = sub_252B6B720;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B6B41C()
{
  sub_252B6D438(v0[356], type metadata accessor for HomeAutomationSetBooleanStateParameters);

  __swift_destroy_boxed_opaque_existential_1(v0 + 322);

  v1 = v0[367];
  v2 = v0[366];
  v3 = v0[365];
  v4 = v0[364];
  v5 = sub_252E375C4();
  v8 = 2;
  sub_252E36A74(v5, &dword_252917000, v1, "handleResponse", 14, 2, v2, " enableTelemetry=YES ", 21, v8, MEMORY[0x277D84F90]);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252B6B5B0()
{
  v2 = *(*v1 + 2888);
  v3 = *(*v1 + 2872);
  v4 = *(*v1 + 2864);
  *(*v1 + 3216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252B6C188;
  }

  else
  {
    v5 = sub_252B6BF74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B6B720()
{
  v1 = (v0 + 2800);
  v2 = *(v0 + 3192);
  v3 = *(v0 + 3160);
  *(v0 + 2800) = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 2832);
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  *(v0 + 3224) = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  *(v0 + 3232) = v11;
  *v11 = v0;
  v11[1] = sub_252B6BA10;
  v12 = *(v0 + 3249);
  v13 = *(v0 + 2880);

  return sub_252BDB88C(v0 + 2656, &unk_252E3F140, v10, v13, 0, 0, v12, v9);
}

uint64_t sub_252B6B87C()
{
  v1 = *(v0 + 2824);

  v2 = *(v0 + 2936);
  v3 = *(v0 + 2928);
  v4 = *(v0 + 2920);
  v5 = *(v0 + 2912);
  v6 = sub_252E375C4();
  v9 = 2;
  sub_252E36A74(v6, &dword_252917000, v2, "handleResponse", 14, 2, v3, " enableTelemetry=YES ", 21, v9, MEMORY[0x277D84F90]);
  (*(v4 + 8))(v3, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252B6BA10()
{
  v2 = *(*v1 + 2880);
  v3 = *(*v1 + 2872);
  v4 = *(*v1 + 2864);
  *(*v1 + 3240) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252B6BDC4;
  }

  else
  {

    v5 = sub_252B6BB90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B6BB90()
{
  v1 = *(v0 + 2832);
  v2 = *(v0 + 2816);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  v8 = *(v0 + 3192);
  v9 = *(v0 + 3160);
  v10 = *(v0 + 2824);
  (*(v4 + 112))(v6, v0 + 2656, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2656));

  v11 = *(v0 + 2936);
  v12 = *(v0 + 2928);
  v13 = *(v0 + 2920);
  v14 = *(v0 + 2912);
  v15 = sub_252E375C4();
  sub_252E36A74(v15, &dword_252917000, v11, "handleResponse", 14, 2, v12, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v13 + 8))(v12, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252B6BDC4()
{
  v1 = *(v0 + 3192);
  v2 = *(v0 + 2824);

  v3 = *(v0 + 2936);
  v4 = *(v0 + 2928);
  v5 = *(v0 + 2920);
  v6 = *(v0 + 2912);
  v7 = sub_252E375C4();
  v10 = 2;
  sub_252E36A74(v7, &dword_252917000, v3, "handleResponse", 14, 2, v4, " enableTelemetry=YES ", 21, v10, MEMORY[0x277D84F90]);
  (*(v5 + 8))(v4, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_252B6BF74()
{
  v1 = *(v0 + 2832);
  v2 = *(v0 + 2816);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  (*(v4 + 112))(v6, v0 + 2616, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2616));

  v8 = *(v0 + 2936);
  v9 = *(v0 + 2928);
  v10 = *(v0 + 2920);
  v11 = *(v0 + 2912);
  v12 = sub_252E375C4();
  sub_252E36A74(v12, &dword_252917000, v8, "handleResponse", 14, 2, v9, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v10 + 8))(v9, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252B6C188()
{

  v1 = *(v0 + 2936);
  v2 = *(v0 + 2928);
  v3 = *(v0 + 2920);
  v4 = *(v0 + 2912);
  v5 = sub_252E375C4();
  v8 = 2;
  sub_252E36A74(v5, &dword_252917000, v1, "handleResponse", 14, 2, v2, " enableTelemetry=YES ", 21, v8, MEMORY[0x277D84F90]);
  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252B6C308()
{

  v1 = v0[367];
  v2 = v0[366];
  v3 = v0[365];
  v4 = v0[364];
  v5 = sub_252E375C4();
  v8 = 2;
  sub_252E36A74(v5, &dword_252917000, v1, "handleResponse", 14, 2, v2, " enableTelemetry=YES ", 21, v8, MEMORY[0x277D84F90]);
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_252B6C470()
{
  v1 = v0[374];

  __swift_destroy_boxed_opaque_existential_1(v0 + 342);

  v2 = v0[367];
  v3 = v0[366];
  v4 = v0[365];
  v5 = v0[364];
  v6 = sub_252E375C4();
  v9 = 2;
  sub_252E36A74(v6, &dword_252917000, v2, "handleResponse", 14, 2, v3, " enableTelemetry=YES ", 21, v9, MEMORY[0x277D84F90]);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_252B6C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252A293A0(a1, a2, a3, a4);
}

uint64_t sub_252B6C6AC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_252B6C7A8;

  return v6(a1);
}

uint64_t sub_252B6C7A8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252B6C8D8, 0, 0);
  }
}

uint64_t sub_252B6C8D8()
{
  type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B6C950(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v37 - v12;
  v14 = *a2;
  v15 = type metadata accessor for HomeAutomationSetBooleanStateParameters(0);
  v16 = v15[9];

  *(a1 + v16) = v14;
  v17 = *a3;
  v18 = v15[8];

  *(a1 + v18) = v17;
  v19 = v15[7];

  *(a1 + v19) = a4;
  sub_252E37024();
  v20 = sub_252E36324();
  v21 = *(*(v20 - 8) + 56);
  v22 = 1;
  v21(v13, 0, 1, v20);
  sub_252956C98(v13, a1);
  v23 = sub_25294833C(1u, 0, 0);
  if (v23)
  {
    v24 = v23;
    v25 = [v23 dictionary];
    if (v25)
    {
      v26 = v25;
      v27 = objc_opt_self();
      v38[0] = 0;
      v28 = [v27 dataWithPropertyList:v26 format:200 options:0 error:v38];
      v29 = v38[0];
      if (v28)
      {
        v30 = sub_252E32D34();
        v37[0] = v21;
        v32 = v31;

        sub_252E32D24();
        sub_252E362F4();

        v33 = v32;
        v21 = v37[0];
        sub_25296464C(v30, v33);
        v22 = 0;
      }

      else
      {
        v34 = v29;
        v35 = sub_252E32C54();

        swift_willThrow();
        v22 = 1;
      }
    }

    else
    {
    }
  }

  v21(v11, v22, 1, v20);
  return sub_252956C98(v11, a1 + v15[10]);
}

uint64_t sub_252B6CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252B6CC78, 0, 0);
}

uint64_t sub_252B6CC78()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252C2A5D8();
    if (v3 >> 62)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v4 && (sub_252C28D24(v0[3]) & 1) != 0)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v5 = v0[2];
      v6 = sub_252E36AD4();
      __swift_project_value_buffer(v6, qword_27F544D18);
      sub_252CC3D90(0xD000000000000035, 0x8000000252E6B3B0, 0xD000000000000096, 0x8000000252E82220);
      sub_252C24354(v2, v5);

      v7 = v0[1];

      return v7();
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D18);
    sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6B2F0, 0xD000000000000096, 0x8000000252E82220);
    v9 = v2;
    v10 = swift_task_alloc();
    v0[6] = v10;
    *v10 = v0;
    v10[1] = sub_252963D44;
    v11 = v0[4];
    v12 = v0[2];
    v13 = v0[3];
  }

  else
  {
    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v14[1] = sub_252963EC4;
    v12 = v0[2];
    v13 = v0[3];
    v11 = 0;
  }

  return sub_252B69100(v12, v13, v11);
}

uint64_t sub_252B6CF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252B69100(a1, a2, a3);
}

uint64_t sub_252B6D020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_252B6CC54(a1, a2, a3);
}

void *sub_252B6D0D4@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SetBooleanStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B6D138(void *a1, uint64_t a2)
{
  result = [a1 userTask];
  if (result)
  {
    v5 = result;
    if (a2)
    {
      v6 = sub_252C2B064(result);
      if (v6 >> 62)
      {
        v7 = sub_252E378C4();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (sub_252C4B5D4() && v7 > 0)
      {
        v8 = [a1 userTask];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 attribute];

          return v10 != 66;
        }

        else
        {
          sub_252C515AC();

          return 1;
        }
      }
    }

    else
    {
      sub_252C4B5D4();
    }

    return 0;
  }

  return result;
}

uint64_t sub_252B6D244()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252B6D2D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_252B6C5F4(a1, v4, v5, v6);
}

uint64_t sub_252B6D38C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252B6C6AC(a1, v4);
}

uint64_t sub_252B6D438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252B6D498(uint64_t a1)
{

  sub_252E362B4();
}

BOOL sub_252B6D52C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  return *(a2 + v2) == 112;
}

uint64_t sub_252B6D590(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252B6D5B4, 0, 0);
}

uint64_t sub_252B6D5B4()
{
  v1 = *(v0 + 24);
  v2 = v1[12];
  v3 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v2);

  sub_252943BD0(sub_252B6D6EC, v1, 1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

void *sub_252B6D688@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeManagerSyncInProgressResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t AutomateHomeIntent.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t AutomateHomeIntent.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

id sub_252B6D728()
{
  v1 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntent()) init];
  [v1 setTrigger_];
  [v1 setAutomatableTask_];
  return v1;
}

uint64_t sub_252B6D788()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for AutomateHomeIntent.Builder();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  v5 = v2;
  return v3;
}

uint64_t AutomateHomeIntent.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_252B6D930(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 32;
    v4 = *(a1 + 16);
    while (1)
    {
      memcpy(__dst, &v1[v3], sizeof(__dst));
      if (sub_252CDFDD4())
      {
        break;
      }

      v3 += 504;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v5 = v2 + 1;
    v6 = 144;
    while (--v5)
    {
      v7 = *&v1[v6];
      v6 += 504;
      if (*(v7 + 16))
      {
        v8 = qword_27F53F520;

        if (v8 != -1)
        {
          goto LABEL_78;
        }

        while (1)
        {
          v9 = sub_252E36AD4();
          __swift_project_value_buffer(v9, qword_27F544E08);
          __dst[0] = 0;
          __dst[1] = 0xE000000000000000;
          sub_252E379F4();

          __dst[0] = 0xD000000000000023;
          __dst[1] = 0x8000000252E823A0;
          v10 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
          MEMORY[0x2530AD570](v10);

          sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009DLL, 0x8000000252E823D0);

          v12 = 0;
          v13 = 536;
          while (*(*&v1[v13 - 392] + 16) || !*(*&v1[v13 - 400] + 16))
          {
            ++v12;
            v13 += 504;
            if (v2 == v12)
            {
              v14 = *(v1 + 2);
              v12 = v2;
              goto LABEL_56;
            }
          }

          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_88;
          }

          v15 = *(v1 + 2);
          if (v14 == v15)
          {
LABEL_56:
            if (v12 > v14)
            {
              __break(1u);
            }

            else if ((v12 & 0x8000000000000000) == 0)
            {
              v26 = v12;
              if (!__OFADD__(v14, v12 - v14))
              {
                goto LABEL_65;
              }

              __break(1u);
LABEL_61:
              v14 = *(v1 + 2);
              v12 = v2;
LABEL_62:
              if (v12 > v14)
              {
                __break(1u);
              }

              else if ((v12 & 0x8000000000000000) == 0)
              {
                v26 = v12;
                if (!__OFADD__(v14, v12 - v14))
                {
LABEL_65:
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  __dst[0] = v1;
                  if (!isUniquelyReferenced_nonNull_native || v26 > *(v1 + 3) >> 1)
                  {
                    if (v14 <= v26)
                    {
                      v28 = v26;
                    }

                    else
                    {
                      v28 = v14;
                    }

                    v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v28, 1, v1);
                    __dst[0] = v1;
                  }

                  sub_252B7B280(v12, v14, 0);
                  return v1;
                }

LABEL_87:
                __break(1u);
LABEL_88:
                __break(1u);
LABEL_89:
                __break(1u);
                return result;
              }

              __break(1u);
              goto LABEL_87;
            }

            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            swift_once();
LABEL_34:
            v21 = sub_252E36AD4();
            __swift_project_value_buffer(v21, qword_27F544E08);
            __dst[0] = 0;
            __dst[1] = 0xE000000000000000;
            sub_252E379F4();

            __dst[0] = 0xD000000000000023;
            __dst[1] = 0x8000000252E823A0;
            v22 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
            MEMORY[0x2530AD570](v22);

            sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009DLL, 0x8000000252E823D0);

            v12 = 0;
            v23 = 536;
            while (*(*&v1[v23 - 384] + 16) || !*(*&v1[v23 - 280] + 16))
            {
              ++v12;
              v23 += 504;
              if (v2 == v12)
              {
                goto LABEL_61;
              }
            }

            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_89;
            }

            v24 = *(v1 + 2);
            if (v14 == v24)
            {
              goto LABEL_62;
            }

            v2 = 504;
            while (v14 < v24)
            {
              if (*(*&v1[v23 + 120] + 16) || !*(*&v1[v23 + 224] + 16))
              {
                if (v14 != v12)
                {
                  if (v12 >= v24)
                  {
                    goto LABEL_81;
                  }

                  memcpy(__src, &v1[504 * v12 + 32], sizeof(__src));
                  memcpy(__dst, &v1[v23], sizeof(__dst));
                  sub_2529353AC(__src, v30);
                  sub_2529353AC(__dst, v30);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  if (v12 >= *(v1 + 2))
                  {
                    goto LABEL_82;
                  }

                  v25 = &v1[504 * v12];
                  memcpy(v29, v25 + 32, sizeof(v29));
                  memcpy(v25 + 32, __dst, 0x1F8uLL);
                  sub_252935408(v29);
                  if (v14 >= *(v1 + 2))
                  {
                    goto LABEL_83;
                  }

                  memcpy(v30, &v1[v23], sizeof(v30));
                  memcpy(&v1[v23], __src, 0x1F8uLL);
                  result = sub_252935408(v30);
                }

                ++v12;
              }

              ++v14;
              v24 = *(v1 + 2);
              v23 += 504;
              if (v14 == v24)
              {
                goto LABEL_62;
              }
            }
          }

          else
          {
            v2 = 504;
            while (v14 < v15)
            {
              if (*(*&v1[v13 + 112] + 16) || !*(*&v1[v13 + 104] + 16))
              {
                if (v14 != v12)
                {
                  if (v12 >= v15)
                  {
                    goto LABEL_75;
                  }

                  memcpy(__src, &v1[504 * v12 + 32], sizeof(__src));
                  memcpy(__dst, &v1[v13], sizeof(__dst));
                  sub_2529353AC(__src, v30);
                  sub_2529353AC(__dst, v30);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  if (v12 >= *(v1 + 2))
                  {
                    goto LABEL_76;
                  }

                  v16 = &v1[504 * v12];
                  memcpy(v29, v16 + 32, sizeof(v29));
                  memcpy(v16 + 32, __dst, 0x1F8uLL);
                  sub_252935408(v29);
                  if (v14 >= *(v1 + 2))
                  {
                    goto LABEL_77;
                  }

                  memcpy(v30, &v1[v13], sizeof(v30));
                  memcpy(&v1[v13], __src, 0x1F8uLL);
                  result = sub_252935408(v30);
                }

                ++v12;
              }

              ++v14;
              v15 = *(v1 + 2);
              v13 += 504;
              if (v14 == v15)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          swift_once();
        }
      }
    }

    v17 = v2 + 1;
    v18 = 152;
    while (--v17)
    {
      v19 = *&v1[v18];
      v18 += 504;
      if (*(v19 + 16))
      {
        v20 = qword_27F53F520;

        if (v20 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_84;
      }
    }
  }

LABEL_5:

  return v1;
}

uint64_t sub_252B6DFB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModifyTaskTypeForPositionRequestsHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252B6DFE4(void *a1)
{
  v2 = [a1 userTask];
  if (v2 && (v3 = v2, v4 = [v2 taskType], v3, v4 == 2))
  {
    v5 = 1;
  }

  else
  {
    v6 = [a1 userTask];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 taskType];

      v5 = v8 == 3;
    }

    else
    {
      v5 = 0;
    }
  }

  v9 = [a1 userTask];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 value];

  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = [v11 type];

  if (v12 != 2)
  {
    goto LABEL_17;
  }

  v13 = [a1 userTask];
  if (!v13 || (v14 = v13, v15 = [v13 value], v14, !v15) || (objc_msgSend(v15, sel_doubleValue), v17 = v16, v15, v17 != 0.0))
  {
    v19 = [a1 userTask];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 value];

      if (v21)
      {
        [v21 doubleValue];
        v23 = v22;

        v18 = v23 == 100.0;
        goto LABEL_18;
      }
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = 1;
LABEL_18:
  v24 = [a1 userTask];
  if (!v24 || (v25 = v24, v26 = [v24 value], v25, !v26) || (v27 = objc_msgSend(v26, sel_type), v26, v27 != 4))
  {
LABEL_27:
    v36 = 0;
    goto LABEL_28;
  }

  v28 = [a1 userTask];
  if (!v28 || (v29 = v28, v30 = [v28 value], v29, !v30) || (v31 = objc_msgSend(v30, sel_integerValue), v30, v31))
  {
    v32 = [a1 userTask];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 value];

      if (v34)
      {
        v35 = [v34 integerValue];

        v36 = v35 == 100;
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  v36 = 1;
LABEL_28:
  v37 = [a1 userTask];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 attribute];

    if (v39 == 9)
    {
      return v5 & (v18 | v36);
    }
  }

  else
  {
    sub_252C515AC();
  }

  return 0;
}

id sub_252B6E324(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 userTask];
  if (v6)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v6 = sub_252D6CA80(v6);
    v6[2] = 1;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v5, v7, v2);
  v20 = 0;
  v21 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E824C0);
  if (v6)
  {
    v8 = v6[2];
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;
  v19 = v6 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F80, &unk_252E4E1F0);
  v9 = sub_252E36F94();
  MEMORY[0x2530AD570](v9);

  sub_252CC3D90(v20, v21, 0xD0000000000000A1, 0x8000000252E82500);

  (*(v3 + 8))(v5, v2);
  if (v6)
  {

    v10 = sub_252D6CB58();
  }

  else
  {
    v10 = 0;
  }

  v11 = [a1 filters];
  if (v11)
  {
    v12 = v11;
    type metadata accessor for HomeFilter();
    v13 = sub_252E37264();
  }

  else
  {
    v13 = 0;
  }

  v14 = [a1 time];
  v15 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v15 setUserTask_];
  if (v13)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37254();
  }

  else
  {
    v16 = 0;
  }

  [v15 setFilters_];

  [v15 setTime_];

  return v15;
}

uint64_t sub_252B6E68C@<X0>(uint64_t a1@<X8>)
{
  if (!v1[2])
  {
    v3 = v1[4];
    if (!v3)
    {
      goto LABEL_8;
    }

    type metadata accessor for ServiceCollectionDecorator();
    swift_allocObject();
    sub_252B7DA9C(v3);
  }

  if (sub_252B7DC00())
  {
    sub_252B7FE5C(&v14);

    v5 = *(&v14 + 1);
    v18 = v15;
    v19 = v16;
    v20 = v17;
    if (*(&v14 + 1))
    {
      *a1 = v14;
      *(a1 + 8) = v5;
LABEL_27:
      v13 = v19;
      *(a1 + 16) = v18;
      *(a1 + 32) = v13;
      *(a1 + 48) = v20;
      return result;
    }
  }

  else
  {
  }

LABEL_8:
  result = v1[3];
  if (result)
  {
    v6 = v1[3];
  }

  else
  {
    v7 = v1[4];
    if (!v7)
    {
LABEL_28:
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    type metadata accessor for AccessoriesCollectionDecorator();
    swift_allocObject();
    v6 = sub_252C2436C(v7);
  }

  if ((sub_252C244D4() & 1) == 0)
  {

    goto LABEL_28;
  }

  if ((sub_252C244D4() & 1) == 0)
  {
    goto LABEL_25;
  }

  v8 = *(v6 + 16);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_16;
    }

LABEL_25:
    sub_252C246DC(&v14);

    v12 = *(&v14 + 1);
    v18 = v15;
    v19 = v16;
    v20 = v17;
    if (*(&v14 + 1))
    {
      *a1 = v14;
      *(a1 + 8) = v12;
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_16:
  if ((v8 & 0xC000000000000001) != 0)
  {

    v9 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v8 + 32);
  }

  v11 = (*(*v9 + 256))(v10);

  if (v11 != 46)
  {
    goto LABEL_25;
  }

  sub_252C248B0(a1);
}

double sub_252B6E8E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544C58);
  sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E82620, 0xD000000000000073, 0x8000000252E82640);
  sub_252B680FC(v5);
  v6 = sub_252B63638();

  if ((v6 & 1) != 0 && (sub_252CC3D90(0xD000000000000026, 0x8000000252E826C0, 0xD000000000000073, 0x8000000252E82640), v3))
  {
    [v3 deviceType];
  }

  else
  {
    v8 = *(sub_252B680FC(v7) + 77);

    if (v8 != 1)
    {
      v10 = sub_252A8C8BC();
      if (qword_2864AB010 == v10 || qword_2864AB018 == v10 || qword_2864AB020 == v10)
      {
        *a2 = 0xD00000000000001FLL;
        *(a2 + 8) = 0x8000000252E727D0;
        *(a2 + 16) = 0xD00000000000001FLL;
        *(a2 + 24) = 0x8000000252E727D0;
      }

      else
      {
        if (sub_252A8C8BC() != 1)
        {
          goto LABEL_7;
        }

        *a2 = 0x74696B656D6F68;
        *(a2 + 8) = 0xE700000000000000;
        *(a2 + 16) = 0x74696B656D6F68;
        *(a2 + 24) = 0xE700000000000000;
      }

      *(a2 + 32) = 514;
      *&result = 0x65676E61726FLL;
      *(a2 + 40) = xmmword_252E41BB0;
      *(a2 + 56) = 0;
      return result;
    }
  }

LABEL_7:

  sub_252B6E68C(a2);
  return result;
}

uint64_t IconsManager.deinit()
{

  return v0;
}

uint64_t IconsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252B6EBB4(unint64_t a1)
{
  v1 = a1;
  v51 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v45 = v1;
    v46 = v1 & 0xC000000000000001;
    v42 = v1 + 32;
    v43 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v44 = v2;
    while (1)
    {
      if (v46)
      {
        v6 = MEMORY[0x2530ADF00](v4, v1);
      }

      else
      {
        if (v4 >= *(v43 + 16))
        {
          goto LABEL_44;
        }

        v6 = *(v42 + 8 * v4);
      }

      v7 = v6;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v2 = sub_252E378C4();
        goto LABEL_3;
      }

      v9 = [v6 entity];
      v10 = [v7 taskResponses];
      if (v10)
      {
        break;
      }

LABEL_6:
      if (v4 == v2)
      {
        return v5;
      }
    }

    v11 = v10;
    v48 = v9;
    type metadata accessor for HomeUserTaskResponse();
    v12 = sub_252E37264();

    v49 = v3;
    v50 = v3;
    if (v12 >> 62)
    {
      v13 = sub_252E378C4();
      v47 = v7;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = v7;
      if (v13)
      {
LABEL_15:
        if (v13 < 1)
        {
          goto LABEL_43;
        }

        v14 = 0;
        v15 = v3;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x2530ADF00](v14, v12);
          }

          else
          {
            v17 = *(v12 + 8 * v14 + 32);
          }

          v18 = v17;
          v19 = [v17 userTask];
          if (v19 && (v20 = v19, v21 = [v19 taskType], v20, v21 == 1))
          {
            v22 = v18;
            MEMORY[0x2530AD700]();
            if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();

            v15 = v49;
          }

          else
          {
            v16 = v18;
            MEMORY[0x2530AD700]();
            if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();

            v3 = v50;
          }

          ++v14;
        }

        while (v13 != v14);
        goto LABEL_31;
      }
    }

    v15 = v3;
LABEL_31:

    type metadata accessor for HomeEntityResponse.Builder();
    v23 = swift_allocObject();
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v24.n128_f64[0] = HomeEntity.Builder.init()();
    v26 = (*(*v25 + 448))(v24);

    *(v23 + 16) = v26;
    *(v23 + 24) = MEMORY[0x277D84F90];
    if (v48)
    {
      *(v23 + 16) = v48;
      v27 = v48;
    }

    v28 = sub_252B4EF4C(v3);

    v29 = sub_25297D0C0(v28);

    (*(*v29 + 192))(v30);

    MEMORY[0x2530AD700](v31);
    v2 = v44;
    v1 = v45;
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v5 = v52;
    v32 = swift_allocObject();
    swift_allocObject();
    v33.n128_f64[0] = HomeEntity.Builder.init()();
    v35 = (*(*v34 + 448))(v33);

    *(v32 + 16) = v35;
    v3 = MEMORY[0x277D84F90];
    *(v32 + 24) = MEMORY[0x277D84F90];
    if (v48)
    {
      *(v32 + 16) = v48;
      v36 = v48;
    }

    v37 = sub_252B4EF4C(v15);

    v38 = sub_25297D0C0(v37);

    (*(*v38 + 192))(v39);

    MEMORY[0x2530AD700](v40);
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();

    goto LABEL_6;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252B6F178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[74] = v3;
  v4[73] = a3;
  v4[72] = a2;
  v4[71] = a1;
  v5 = sub_252E34014();
  v4[75] = v5;
  v4[76] = *(v5 - 8);
  v4[77] = swift_task_alloc();
  v4[78] = type metadata accessor for HomeAutomationSetTemperatureRangeValueParameters(0);
  v4[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B6F274, 0, 0);
}

uint64_t sub_252B6F274()
{
  v1 = *(v0 + 584);
  if (!v1 || (v2 = [*(v0 + 584) entityResponses]) == 0)
  {
    sub_2529318DC();
    swift_allocError();
    *v14 = 6;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  v5 = v4;
  v56 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_63;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v46 = v1;
    v1 = MEMORY[0x277D84F90];
    v50 = v0;
    if (v6)
    {
      v7 = 0;
      v51 = v5 & 0xFFFFFFFFFFFFFF8;
      v53 = v5 & 0xC000000000000001;
      v45 = v5;
      v47 = v6;
      v48 = v5 + 32;
      while (1)
      {
        if (v53)
        {
          v5 = MEMORY[0x2530ADF00](v7, v45);
        }

        else
        {
          if (v7 >= *(v51 + 16))
          {
            goto LABEL_62;
          }

          v5 = *(v48 + 8 * v7);
        }

        v0 = v5;
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_61;
        }

        v9 = [v5 taskResponses];
        if (v9)
        {
          v1 = v9;
          type metadata accessor for HomeUserTaskResponse();
          v10 = sub_252E37264();

          if (v10 >> 62)
          {
            v5 = sub_252E378C4();
            v11 = v5;
          }

          else
          {
            v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v12 = 0;
          while (1)
          {
            if (v11 == v12)
            {

              v6 = v47;
              goto LABEL_8;
            }

            if ((v10 & 0xC000000000000001) != 0)
            {
              v5 = MEMORY[0x2530ADF00](v12, v10);
            }

            else
            {
              if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_58;
              }

              v5 = *(v10 + 8 * v12 + 32);
            }

            v1 = v5;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            v13 = [v5 taskOutcome];

            ++v12;
            if (v13 == 1)
            {

              sub_252E37A94();
              v1 = *(v56 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              v5 = sub_252E37AA4();
              v6 = v47;
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_8:
        v0 = v50;
        if (v7 == v6)
        {
          v17 = v56;
          v1 = MEMORY[0x277D84F90];
          goto LABEL_33;
        }
      }
    }

    v17 = MEMORY[0x277D84F90];
LABEL_33:

    sub_252B6EBB4(v17);
    v19 = v18;

    v56 = v1;
    v54 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      v5 = sub_252E378C4();
      v20 = v5;
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = *(v0 + 592);
    *(v0 + 640) = v1;
    if (!v20)
    {
      break;
    }

    v21 = v19 & 0xC000000000000001;
    v49 = MEMORY[0x277D84F90];
    v22 = v19;
    v23 = 0;
    while (1)
    {
      if (v21)
      {
        v5 = MEMORY[0x2530ADF00](v23, v19);
      }

      else
      {
        if (v23 >= *(v54 + 16))
        {
          goto LABEL_60;
        }

        v5 = *(v19 + 8 * v23 + 32);
      }

      v24 = v5;
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      sub_252DA49A4();
      v27 = v26;
      memcpy((v0 + 16), (v52 + 112), 0x1F8uLL);
      if (sub_252956B94((v0 + 16)) == 1 || (v28 = *(v0 + 216), !*(v28 + 16)))
      {
        v29 = 4;
      }

      else
      {
        v29 = *(v28 + 32);
      }

      sub_252C3AC5C(v29);
      v1 = v30;

      v31 = sub_252DA124C(0);
      if (v31)
      {
        MEMORY[0x2530AD700]();
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
          v0 = v50;
        }

        v5 = sub_252E372D4();
        v49 = v56;
        *(v0 + 640) = v56;
        v19 = v22;
        if (v25 == v20)
        {
          goto LABEL_54;
        }

        ++v23;
      }

      else
      {
        ++v23;
        v19 = v22;
        if (v25 == v20)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v44 = v5;
    v6 = sub_252E378C4();
    v5 = v44;
  }

  v49 = v1;
LABEL_54:
  v32 = *(v0 + 632);
  v33 = *(v0 + 624);
  v34 = *(v0 + 592);
  v35 = *(v0 + 584);
  v36 = *(v0 + 576);

  *(v0 + 728) = sub_252DC6D48(v36, v35);
  v37 = *(v34 + 48);
  v38 = v46;
  __swift_project_boxed_opaque_existential_1((v34 + 24), v37);
  v39 = sub_252E36324();
  v40 = v0;
  v41 = *(*(v39 - 8) + 56);
  v41(v32, 1, 1, v39);
  v41(v32 + v33[10], 1, 1, v39);
  *(v32 + v33[5]) = 0;
  *(v32 + v33[6]) = 0;
  *(v32 + v33[7]) = 0;
  *(v32 + v33[8]) = 0;
  *(v32 + v33[9]) = 0;
  sub_252B7021C(v32, v49);

  v42 = sub_252C0A68C();
  *(v40 + 648) = v42;
  v55 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v43 = swift_task_alloc();
  *(v40 + 656) = v43;
  *v43 = v40;
  v43[1] = sub_252B6F900;

  return v55(0xD000000000000027, 0x8000000252E82740, v42);
}

uint64_t sub_252B6F900(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 664) = a1;
  *(v3 + 672) = v1;

  if (v1)
  {
    v4 = sub_252B6FBF8;
  }

  else
  {
    v4 = sub_252B6FA40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B6FA40()
{
  v1 = v0[73];
  sub_252B7074C(v0[79]);
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_252B6FAE0;

  return sub_252E174F4(v1);
}

uint64_t sub_252B6FAE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v4 = sub_252B6FDF4;
  }

  else
  {
    v4 = sub_252B6FC98;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B6FBF8()
{
  v1 = v0[73];
  sub_252B7074C(v0[79]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252B6FC98()
{
  v1 = (v0 + 560);
  v2 = *(v0 + 688);
  v3 = *(v0 + 664);
  *(v0 + 560) = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 592);
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  *(v0 + 704) = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  *(v0 + 712) = v11;
  *v11 = v0;
  v11[1] = sub_252B6FE94;
  v12 = *(v0 + 728);
  v13 = *(v0 + 616);

  return sub_252BDB88C(v0 + 520, &unk_252E3F140, v10, v13, 0, 0, v12, v9);
}

uint64_t sub_252B6FDF4()
{
  v1 = *(v0 + 584);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B6FE94()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  (*(v2[76] + 8))(v2[77], v2[75]);
  if (v0)
  {
    v3 = sub_252B70158;
  }

  else
  {

    v3 = sub_252B6FFEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B6FFEC()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 688);
  v9 = *(v0 + 664);
  v10 = *(v0 + 584);
  (*(v4 + 112))(v7, v0 + 520, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 520));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252B70158()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 584);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252B7021C(uint64_t a1, uint64_t a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v27[-v8];
  type metadata accessor for HomeAutomationClimateResponses();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = a2;
  v11 = type metadata accessor for HomeAutomationSetTemperatureRangeValueParameters(0);
  v12 = *(v11 + 36);

  *(a1 + v12) = v10;
  v13 = sub_25294833C(1u, 0, 0);
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = v13;
  v15 = [v13 dictionary];
  if (!v15)
  {

LABEL_7:
    v23 = sub_252E36324();
    (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
    goto LABEL_8;
  }

  v16 = v15;
  v17 = objc_opt_self();
  v28[0] = 0;
  v18 = [v17 dataWithPropertyList:v16 format:200 options:0 error:v28];
  v19 = v28[0];
  if (!v18)
  {
    v24 = v19;
    v25 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v20 = sub_252E32D34();
  v22 = v21;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v20, v22);
  v23 = sub_252E36324();
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
LABEL_8:
  sub_252956C98(v9, a1 + *(v11 + 40));
  sub_252E37024();
  sub_252E36324();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  return sub_252956C98(v7, a1);
}

uint64_t sub_252B70558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B6F178(a1, a2, a3);
}

void *sub_252B7060C@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SetRangeTemperatureValueResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

id sub_252B70670(void *a1)
{
  if (sub_252C4B5D4())
  {
    v2 = [a1 userTask];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 attribute];

      if (v4 == 6 && (sub_252CCFCB8() & 1) != 0)
      {
        result = [a1 userTask];
        if (!result)
        {
          return result;
        }

        v6 = result;
        v7 = [result value];

        if (v7)
        {
          v8 = [v7 type];

          return (v8 == 6);
        }
      }
    }

    else
    {
      sub_252C515AC();
    }
  }

  return 0;
}

uint64_t sub_252B7074C(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationSetTemperatureRangeValueParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double HomeFilter.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 7;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 175) = 0;
  return result;
}

double INHomeFilter.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 7;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 82) = 0u;
  return result;
}

double INHomeFilter.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 7;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 82) = 0u;
  return result;
}

uint64_t sub_252B7086C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 24);
  *(v2 + 24) = v3;
}

uint64_t sub_252B708F8(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  v3 = a1;
}

uint64_t sub_252B70938(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 48);
  *(v2 + 48) = v3;
}

uint64_t sub_252B709C4(void *a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  v3 = a1;
}

uint64_t sub_252B70A10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 64);
  *(v2 + 64) = v3;
}

uint64_t sub_252B70A9C(void *a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  v3 = a1;
}

uint64_t sub_252B70ADC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 72);
  *(v2 + 72) = v3;
}

uint64_t sub_252B70B68(void *a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
  v3 = a1;
}

uint64_t sub_252B70BA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 80);
  *(v2 + 80) = v3;
}

uint64_t sub_252B70C34(void *a1)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;
  v3 = a1;
}

uint64_t sub_252B70C74(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 88);
  *(v2 + 88) = v3;
}

uint64_t sub_252B70D00(void *a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
  v3 = a1;
}

uint64_t sub_252B70D58(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 entityIdentifiers];
    if (v3)
    {
      v4 = v3;
      v5 = sub_252E37264();
    }

    else
    {
      v5 = 0;
    }

    *(v1 + 16) = v5;

    v6 = [v2 entityName];
    v7 = *(v1 + 24);
    *(v1 + 24) = v6;

    *(v1 + 32) = [v2 entityType];
    *(v1 + 40) = [v2 outerDeviceType];
    v8 = [v2 outerDeviceName];
    v9 = *(v1 + 48);
    *(v1 + 48) = v8;

    *(v1 + 56) = [v2 deviceType];
    v10 = [v2 home];
    v11 = *(v1 + 64);
    *(v1 + 64) = v10;

    v12 = [v2 zone];
    v13 = *(v1 + 72);
    *(v1 + 72) = v12;

    v14 = [v2 group];
    v15 = *(v1 + 80);
    *(v1 + 80) = v14;

    v16 = [v2 room];
    v17 = *(v1 + 88);
    *(v1 + 88) = v16;

    *(v1 + 96) = [v2 isExcludeFilter];
    v18 = [v2 hasAllQuantifier];

    *(v1 + 97) = v18;
  }
}

id sub_252B70F24()
{
  v1 = *(v0 + 24);
  v20 = *(v0 + 40);
  v21 = *(v0 + 32);
  v2 = *(v0 + 48);
  v19 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 97);
  if (*(v0 + 16))
  {
    v9 = v5;

    v10 = v1;
    v11 = v2;
    v12 = v3;
    v13 = v4;
    v14 = v6;
    v15 = sub_252E37254();
  }

  else
  {
    v9 = v5;
    v10 = v1;
    v11 = v2;
    v12 = v3;
    v13 = v4;
    v14 = v6;
    v15 = 0;
  }

  BYTE1(v18) = v8;
  LOBYTE(v18) = v7;
  v16 = [objc_allocWithZone(MEMORY[0x277CD3CF8]) initWithEntityIdentifiers:v15 entityName:v10 entityType:v21 outerDeviceType:v20 outerDeviceName:v11 deviceType:v19 home:v12 zone:v13 group:v14 room:v9 isExcludeFilter:v18 hasAllQuantifier:?];

  return v16;
}

uint64_t sub_252B7107C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v24 = *(v0 + 32);
  v25 = *(v0 + 56);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v26 = *(v0 + 96);
  v9 = *(v0 + 97);
  type metadata accessor for INHomeFilter.Builder();
  v10 = swift_allocObject();
  *(v10 + 24) = xmmword_252E4E2C0;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 82) = 0u;
  *(v10 + 16) = v1;
  v11 = v7;

  v12 = v2;
  v13 = v4;
  v14 = v6;
  v15 = v5;
  v16 = v8;

  v17 = *(v10 + 24);
  *(v10 + 24) = v2;

  *(v10 + 32) = v24;
  *(v10 + 40) = v3;
  v18 = *(v10 + 48);
  *(v10 + 48) = v4;

  v19 = *(v10 + 64);
  *(v10 + 56) = v25;
  *(v10 + 64) = v6;

  v20 = *(v10 + 72);
  *(v10 + 72) = v5;

  v21 = *(v10 + 80);
  *(v10 + 80) = v8;

  v22 = *(v10 + 88);
  *(v10 + 88) = v7;

  *(v10 + 96) = v26;
  *(v10 + 97) = v9;

  return v10;
}

id *INHomeFilter.Builder.deinit()
{

  return v0;
}

uint64_t INHomeFilter.Builder.__deallocating_deinit()
{
  INHomeFilter.Builder.deinit();

  return swift_deallocClassInstance();
}

double HomeFilter.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 7;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 175) = 0;
  return result;
}

uint64_t sub_252B71290(uint64_t a1)
{
  *(v1 + 16) = a1;
}

uint64_t sub_252B712D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  if (a2)
  {
    *(v2 + 32) = a2;
  }

  else
  {
    *(v2 + 32) = 0;
  }
}

uint64_t sub_252B7132C(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 24) = v3;
  *(v1 + 32) = v5;
}

uint64_t sub_252B713C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  if (a2)
  {
    *(v2 + 64) = a2;
  }

  else
  {
    *(v2 + 64) = 0;
  }
}

uint64_t sub_252B71418(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 56) = v3;
  *(v1 + 64) = v5;
}

uint64_t sub_252B714A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  if (a2)
  {
    *(v2 + 88) = a2;
  }

  else
  {
    *(v2 + 88) = 0;
  }
}

uint64_t sub_252B714F8(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 80) = v3;
  *(v1 + 88) = v5;
}

uint64_t sub_252B71574(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  if (a2)
  {
    *(v2 + 104) = a2;
  }

  else
  {
    *(v2 + 104) = 0;
  }
}

uint64_t sub_252B715CC(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 96) = v3;
  *(v1 + 104) = v5;
}

uint64_t sub_252B71648(uint64_t a1, uint64_t a2)
{
  *(v2 + 112) = a1;
  if (a2)
  {
    *(v2 + 120) = a2;
  }

  else
  {
    *(v2 + 120) = 0;
  }
}

uint64_t sub_252B716A0(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 112) = v3;
  *(v1 + 120) = v5;
}

uint64_t sub_252B7171C(uint64_t a1, uint64_t a2)
{
  *(v2 + 128) = a1;
  if (a2)
  {
    *(v2 + 136) = a2;
  }

  else
  {
    *(v2 + 136) = 0;
  }
}

uint64_t sub_252B71774(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 128) = v3;
  *(v1 + 136) = v5;
}

uint64_t sub_252B717F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  if (a2)
  {
    *(v2 + 152) = a2;
  }

  else
  {
    *(v2 + 152) = 0;
  }
}

uint64_t sub_252B71848(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 144) = v3;
  *(v1 + 152) = v5;
}

uint64_t sub_252B718C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  if (a2)
  {
    *(v2 + 168) = a2;
  }

  else
  {
    *(v2 + 168) = 0;
  }
}

uint64_t sub_252B7191C(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v1 + 160) = v3;
  *(v1 + 168) = v5;
}

uint64_t sub_252B719BC(void *a1)
{
  sub_252B72040(a1);
}

id sub_252B719E4()
{
  v1 = v0[2];
  v2 = v0[4];
  v29 = v0[5];
  v30 = v0[6];
  v26 = v0[3];
  v3 = v0[8];
  v31 = v0[9];
  v4 = v0[11];
  v5 = v0[13];
  v6 = v0[15];
  v7 = v0[17];
  v8 = v0[19];
  v9 = v0[21];
  v27 = objc_allocWithZone(type metadata accessor for HomeFilter());
  v32 = v9;

  v28 = v2;

  v10 = sub_252E36F04();
  v11 = [v27 initWithIdentifier:0 displayString:v10];

  v12 = v11;
  if (v1)
  {
    v13 = sub_252E37254();
  }

  else
  {
    v13 = 0;
  }

  [v12 setEntityIdentifiers_];

  if (v28)
  {
    v14 = sub_252E36F04();
  }

  else
  {
    v14 = 0;
  }

  [v12 setHomeEntityName_];

  [v12 setEntityType_];
  [v12 setOuterDeviceType_];
  if (v3)
  {
    v15 = sub_252E36F04();
  }

  else
  {
    v15 = 0;
  }

  [v12 setOuterDeviceName_];

  [v12 setDeviceType_];
  if (v4)
  {
    v16 = sub_252E36F04();
  }

  else
  {
    v16 = 0;
  }

  [v12 setHomeName_];

  if (v5)
  {
    v17 = sub_252E36F04();
  }

  else
  {
    v17 = 0;
  }

  [v12 setZoneName_];

  if (v6)
  {
    v18 = sub_252E36F04();
  }

  else
  {
    v18 = 0;
  }

  [v12 setGroupName_];

  if (v7)
  {
    v19 = sub_252E36F04();
  }

  else
  {
    v19 = 0;
  }

  [v12 setRoomName_];

  if (v8)
  {
    v20 = sub_252E36F04();
  }

  else
  {
    v20 = 0;
  }

  [v12 setTargetArea_];

  if (v32)
  {
    v21 = sub_252E36F04();
  }

  else
  {
    v21 = 0;
  }

  [v12 setTargetMap_];

  sub_252956D08();
  v22 = sub_252E37674();
  [v12 setIsExcludeFilter_];

  v23 = sub_252E37674();
  [v12 setHasAllQuantifier_];

  v24 = sub_252E37674();
  [v12 setReferencesFavorites_];

  return v12;
}
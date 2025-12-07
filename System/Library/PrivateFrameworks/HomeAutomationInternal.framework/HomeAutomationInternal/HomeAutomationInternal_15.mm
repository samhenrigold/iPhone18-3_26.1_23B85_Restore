char *sub_252A3C1E0()
{
  v0 = sub_252E36B74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E36AB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F650 != -1)
  {
    swift_once();
  }

  v8 = qword_27F544FD8;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v9 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  sub_252E345A4();
  swift_allocObject();
  sub_252E34594();
  v10 = MEMORY[0x2530AB270]();

  if (v10)
  {
    (*(v1 + 104))(v3, *MEMORY[0x277D5FE70], v0);
    sub_252E36B54();
    swift_allocObject();

    sub_252E36B44();

    MEMORY[0x2530AD700](v11);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();

    v12 = v17;
  }

  else
  {
    v12 = v9;
  }

  v13 = sub_252A3AC34(v12);

  v14 = sub_252E375C4();
  sub_252E36A74(v14, &dword_252917000, v8, "ReferenceResolution.GetSRRCandidates", 36, 2, v7, " enableTelemetry=YES ", 21, 2, v9);
  (*(v5 + 8))(v7, v4);
  return v13;
}

unint64_t sub_252A3C504(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252A3C550(uint64_t a1)
{
  v2 = sub_252E36B04();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = 0;
  v12 = *(a1 + 16);
  v30 = a1;
  v31 = v12;
  v29 = v3 + 16;
  v13 = *MEMORY[0x277D5FE90];
  v28 = *MEMORY[0x277D5FDF0];
  while (v31 != v11)
  {
    (*(v3 + 16))(v10, v30 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11++, v2);
    v14 = sub_252E36BB4();
    (*(*(v14 - 8) + 104))(v8, v13, v14);
    (*(v3 + 104))(v8, v28, v2);
    v15 = sub_252E36AF4();
    v16 = *(v3 + 8);
    v16(v8, v2);
    v16(v10, v2);
    if (v15)
    {
      return 0;
    }
  }

  v18 = 0;
  v19 = *MEMORY[0x277D5FE88];
  v20 = v27;
  while (v31 != v18)
  {
    (*(v3 + 16))(v20, v30 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18++, v2);
    v21 = sub_252E36BB4();
    (*(*(v21 - 8) + 104))(v8, v19, v21);
    (*(v3 + 104))(v8, v28, v2);
    v22 = sub_252E36AF4();
    v23 = *(v3 + 8);
    v23(v8, v2);
    v23(v20, v2);
    if (v22)
    {
      return 1;
    }
  }

  if (qword_27F53F550 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_27F544E98);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();

  v32 = 0xD000000000000015;
  v33 = 0x8000000252E72B80;
  v25 = MEMORY[0x2530AD730](v30, v2);
  MEMORY[0x2530AD570](v25);

  sub_252CC4050(v32, v33, 0xD000000000000075, 0x8000000252E72A80, 0x74656D286D6F7266, 0xEF293A6174616461, 29);

  return 2;
}

char *sub_252A3C960(uint64_t a1)
{
  v2 = sub_252E36C24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36B34();
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = *(v7 + 16);
  v11 = v7 + 16;
  v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v39 = *(v11 + 56);
  v40 = v12;
  v37 = (v11 - 8);
  v38 = (v3 + 8);
  v41 = v11;
  v42 = MEMORY[0x277D84F90];
  v34 = v6;
  v35 = v2;
  v12(v9, v13, v6);
  while (1)
  {
    sub_252E36B24();
    sub_252A36464(v52);
    v14 = v6;
    v15 = *v38;
    (*v38)(v5, v2);
    v69 = v52[6];
    v70 = v52[7];
    v71 = v52[8];
    v72 = v53;
    v65 = v52[2];
    v66 = v52[3];
    v67 = v52[4];
    v68 = v52[5];
    v63 = v52[0];
    v64 = v52[1];
    if (sub_25297DE64(&v63) == 1)
    {
      (*v37)(v9, v14);
      v6 = v14;
    }

    else
    {
      v60 = v69;
      v61 = v70;
      v62 = v71;
      v56 = v65;
      v57 = v66;
      v58 = v67;
      v59 = v68;
      v54 = v63;
      v55 = v64;
      v36 = HIBYTE(v72);
      sub_252E36B14();
      v17 = v16;
      sub_252E36B24();
      v18 = sub_252E36C04();
      v19 = v2;
      v20 = v18;
      v15(v5, v19);
      v21 = sub_252A3C550(v20);

      v49 = v60;
      v50 = v61;
      v51 = v62;
      v45 = v56;
      v46 = v57;
      v47 = v58;
      v48 = v59;
      v43 = v54;
      v44 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_2529F84A8(0, *(v42 + 2) + 1, 1, v42);
      }

      v23 = *(v42 + 2);
      v22 = *(v42 + 3);
      if (v23 >= v22 >> 1)
      {
        v42 = sub_2529F84A8((v22 > 1), v23 + 1, 1, v42);
      }

      v6 = v34;
      (*v37)(v9, v34);
      v24 = v42;
      *(v42 + 2) = v23 + 1;
      v25 = &v24[152 * v23];
      *(v25 + 2) = v43;
      v26 = v44;
      v27 = v45;
      v28 = v47;
      *(v25 + 5) = v46;
      *(v25 + 6) = v28;
      *(v25 + 3) = v26;
      *(v25 + 4) = v27;
      v29 = v48;
      v30 = v49;
      v31 = v50;
      *(v25 + 20) = v51;
      *(v25 + 8) = v30;
      *(v25 + 9) = v31;
      *(v25 + 7) = v29;
      *(v25 + 21) = v17;
      v25[176] = v21;
      v25[177] = v36;
      v2 = v35;
    }

    v13 += v39;
    if (!--v10)
    {
      break;
    }

    v40(v9, v13, v6);
  }

  return v42;
}

uint64_t sub_252A3CD3C(unint64_t a1)
{
  v167 = sub_252E32E84();
  v2 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v166 = &v153 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F550 != -1)
  {
    goto LABEL_223;
  }

  while (1)
  {
    v4 = sub_252E36AD4();
    v5 = __swift_project_value_buffer(v4, qword_27F544E98);
    v168 = "eferences asynchronously...";
    v169 = v5;
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E72B20, 0xD000000000000075, 0x8000000252E72A80);
    v7 = *(a1 + 16);
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v174 = a1 + 32;
    v162 = 0;
    v163 = (v2 + 8);
    v153 = 0x8000000252E72B60;
    v164 = "Hydrating referenced entities";
    v186 = MEMORY[0x277D84F90];
    v165 = v7;
    while (1)
    {
      v9 = v174 + 152 * v8;
      v10 = *(v9 + 112);
      *v225 = *(v9 + 96);
      *&v225[16] = v10;
      v226 = *(v9 + 128);
      v227 = *(v9 + 144);
      v11 = *(v9 + 48);
      v221 = *(v9 + 32);
      v222 = v11;
      v12 = *(v9 + 80);
      v223 = *(v9 + 64);
      v224 = v12;
      v13 = *(v9 + 16);
      v219 = *v9;
      v220 = v13;
      v14 = HIBYTE(v227);
      if (HIBYTE(v227) > 4u)
      {
        sub_25297DE08(&v219, &v210);

LABEL_47:
        v35 = v186;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_2529F84A8(0, *(v35 + 2) + 1, 1, v35);
          v35 = isUniquelyReferenced_nonNull_native;
        }

        v37 = *(v35 + 2);
        v36 = *(v35 + 3);
        if (v37 >= v36 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_2529F84A8((v36 > 1), v37 + 1, 1, v35);
          v35 = isUniquelyReferenced_nonNull_native;
        }

        *(v35 + 2) = v37 + 1;
        v38 = &v35[152 * v37];
        v39 = v220;
        *(v38 + 2) = v219;
        *(v38 + 3) = v39;
        v40 = v221;
        v41 = v222;
        v42 = v224;
        *(v38 + 6) = v223;
        *(v38 + 7) = v42;
        *(v38 + 4) = v40;
        *(v38 + 5) = v41;
        v43 = *v225;
        v44 = *&v225[16];
        v45 = v226;
        *(v38 + 88) = v227;
        *(v38 + 9) = v44;
        *(v38 + 10) = v45;
        *(v38 + 8) = v43;
        goto LABEL_182;
      }

      v15 = sub_252E37DB4();
      sub_25297DE08(&v219, &v210);

      if (v15)
      {
        goto LABEL_47;
      }

      v16 = *(&v219 + 1);
      v187 = v219;
      v182 = *(&v221 + 1);
      v183 = v222;
      v177 = v223;
      v178 = v220;
      v175 = v224;
      v176 = *(&v223 + 1);
      v208 = *&v225[8];
      v209 = v219;
      v184 = *(&v224 + 1);
      v185 = *v225;
      v180 = *&v225[24];
      v181 = *(&v222 + 1);
      v179 = v226;
      v207 = v227;
      v206 = *(&v226 + 1);
      v171 = v8;
      v172 = *(&v220 + 1);
      v173 = v221;
      if (v14 > 1)
      {
        break;
      }

      if (!v14)
      {
        v46 = type metadata accessor for HomeStore(0);
        v47 = sub_25297DE08(&v219, &v210);
        v161 = v46;
        v48 = static HomeStore.shared.getter(v47);
        v49 = sub_2529D9D50();
        v50 = v162;
        v2 = sub_2529D70E4(v49);
        v162 = v50;

        if (v2 >> 62)
        {
          a1 = sub_252E378C4();
          if (a1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          a1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1)
          {
LABEL_54:
            v51 = 0;
            v170 = v2 & 0xC000000000000001;
            do
            {
              if (v170)
              {
                v52 = MEMORY[0x2530ADF00](v51, v2);
                v53 = v51 + 1;
                if (__OFADD__(v51, 1))
                {
                  goto LABEL_210;
                }
              }

              else
              {
                if (v51 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_213;
                }

                v52 = *(v2 + 8 * v51 + 32);

                v53 = v51 + 1;
                if (__OFADD__(v51, 1))
                {
                  goto LABEL_210;
                }
              }

              v54 = sub_252E32E24();
              if (v16)
              {
                if (v54 == v187 && v16 == v55)
                {

                  goto LABEL_94;
                }

                v57 = sub_252E37DB4();

                if (v57)
                {

LABEL_94:
                  sub_2529AEC80(&v219);
                  v69 = *(v52 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                  v173 = *(v52 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  v182 = v69;

                  goto LABEL_97;
                }
              }

              else
              {
              }

              ++v51;
            }

            while (v53 != a1);
          }
        }

        v72 = static HomeStore.shared.getter(v71);
        v73 = sub_2529D9D50();

        if (v73 >> 62)
        {
          v74 = sub_252E378C4();
          if (v74)
          {
            goto LABEL_105;
          }
        }

        else
        {
          v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v74)
          {
LABEL_105:
            v75 = 0;
            a1 = v73 & 0xC000000000000001;
            v76 = v73 & 0xFFFFFFFFFFFFFF8;
            v158 = v73;
            v159 = v73 + 32;
            v155 = v73 & 0xC000000000000001;
            v156 = v74;
            v154 = v73 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (a1)
              {
                v2 = MEMORY[0x2530ADF00](v75, v73);
                v77 = __OFADD__(v75++, 1);
                if (v77)
                {
                  goto LABEL_221;
                }
              }

              else
              {
                if (v75 >= *(v76 + 16))
                {
                  goto LABEL_222;
                }

                v2 = *(v159 + 8 * v75);

                v77 = __OFADD__(v75++, 1);
                if (v77)
                {
                  goto LABEL_221;
                }
              }

              if (v16)
              {
                v157 = v75;

                v78 = sub_252E32E24();
                v80 = v187;
                v81 = v78 == v187 && v16 == v79;
                v160 = v2;
                if (v81)
                {

LABEL_161:

                  v101 = sub_2529AEC80(&v219);
                  goto LABEL_145;
                }

                v82 = sub_252E37DB4();

                if (v82)
                {
                  goto LABEL_161;
                }

                v83 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
                v84 = [*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) deviceIdentifier];
                v85 = sub_252E36F34();
                v87 = v86;

                if (v85 == v80 && v16 == v87)
                {

LABEL_163:

                  v101 = sub_2529AEC80(&v219);
                  goto LABEL_144;
                }

                a1 = sub_252E37DB4();

                if (a1)
                {
                  goto LABEL_163;
                }

                v2 = v160;
                v89 = *(v160 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
                if (v89 && (*(v160 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v187 && v89 == v16 || (sub_252E37DB4() & 1) != 0))
                {
                  goto LABEL_161;
                }

                v90 = [*(v2 + v83) profiles];
                sub_25293F638(0, &qword_27F540170, 0x277CD1760);
                v91 = sub_252E37264();

                v170 = v91 & 0xFFFFFFFFFFFFFF8;
                if (v91 >> 62)
                {
                  v92 = sub_252E378C4();
                }

                else
                {
                  v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v93 = 0;
                v2 = v91 & 0xC000000000000001;
                while (v92 != v93)
                {
                  if (v2)
                  {
                    v94 = MEMORY[0x2530ADF00](v93, v91);
                  }

                  else
                  {
                    if (v93 >= *(v170 + 16))
                    {
                      goto LABEL_218;
                    }

                    v94 = *(v91 + 8 * v93 + 32);
                  }

                  v95 = v94;
                  if (__OFADD__(v93, 1))
                  {
                    goto LABEL_217;
                  }

                  v96 = [v94 uniqueIdentifier];
                  v97 = v166;
                  sub_252E32E64();

                  v98 = sub_252E32E24();
                  v100 = v99;
                  (*v163)(v97, v167);
                  if (v98 == v187 && v16 == v100)
                  {

LABEL_143:
                    sub_2529AEC80(&v219);

LABEL_144:
                    v2 = v160;
LABEL_145:
                    v102 = v2;
                    v103 = (*v2 + 256);
                    v104 = *v103;
                    if ((*v103)(v101) == 24)
                    {
                      goto LABEL_167;
                    }

                    v105 = (*v102 + 272);
                    v106 = *v105;
                    (*v105)();
                    v107 = sub_252DB4F4C();

                    if (v107)
                    {
                      goto LABEL_167;
                    }

                    v109 = (v104)(v108);
                    if (v109 == 38)
                    {
                      v110 = &unk_2864A0E78;
LABEL_151:
                      sub_2529FC004(v110);
                    }

                    else if (v109 == 41)
                    {
                      v110 = &unk_2864A0EA0;
                      goto LABEL_151;
                    }

                    v111 = sub_252DB4F4C();

                    v102 = v160;
                    if (v111)
                    {
                      goto LABEL_167;
                    }

                    if (sub_252D4FE78(24))
                    {
                      goto LABEL_167;
                    }

                    if (v104() == 38)
                    {
                      goto LABEL_167;
                    }

                    v106();
                    v112 = sub_252DB4F4C();

                    if (v112)
                    {
                      goto LABEL_167;
                    }

                    v114 = (v104)(v113);
                    if (v114 == 38)
                    {
                      v115 = &unk_2864A0E78;
LABEL_165:
                      sub_2529FC004(v115);
                    }

                    else if (v114 == 41)
                    {
                      v115 = &unk_2864A0EA0;
                      goto LABEL_165;
                    }

                    v116 = sub_252DB4F4C();

                    v102 = v160;
                    if (v116)
                    {
LABEL_167:

                      v117 = v102;
                    }

                    else
                    {
                      v122 = sub_252D4FE78(38);

                      v117 = v102;
                      if (!v122)
                      {
                        v123 = *(v102 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                        v176 = *(v102 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                        v177 = v123;

                        goto LABEL_176;
                      }
                    }

                    v118 = [*(v117 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
                    v35 = v186;
                    if (v118)
                    {
                      v119 = v118;
                      type metadata accessor for Room(0);
                      swift_allocObject();
                      v120 = sub_2529A1E08(v119);

                      v121 = *(v120 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                      v184 = *(v120 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

                      v185 = v121;
                    }

                    else
                    {

                      v184 = 0;
                      v185 = 0;
                    }

                    goto LABEL_177;
                  }

                  a1 = sub_252E37DB4();

                  ++v93;
                  if (a1)
                  {
                    goto LABEL_143;
                  }
                }

                v2 = v160;

                v75 = v157;
                v73 = v158;
                a1 = v155;
                v74 = v156;
                v76 = v154;
              }
            }

            while (v75 != v74);
          }
        }

        v140 = static HomeStore.shared.getter(v139);
        v2 = sub_2529D9D18();

        if (v2 >> 62)
        {
          v141 = sub_252E378C4();
          if (v141)
          {
            goto LABEL_187;
          }
        }

        else
        {
          v141 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v141)
          {
LABEL_187:
            v142 = 0;
            v170 = v2 & 0xC000000000000001;
            do
            {
              if (v170)
              {
                a1 = MEMORY[0x2530ADF00](v142, v2);
                v143 = v142 + 1;
                if (__OFADD__(v142, 1))
                {
                  goto LABEL_219;
                }
              }

              else
              {
                if (v142 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_220;
                }

                a1 = *(v2 + 8 * v142 + 32);

                v143 = v142 + 1;
                if (__OFADD__(v142, 1))
                {
                  goto LABEL_219;
                }
              }

              swift_retain_n();
              v144 = sub_252E32E24();
              if (v16)
              {
                if (v144 == v187 && v16 == v145)
                {

LABEL_204:

                  sub_2529AEC80(&v219);
                  v148 = (a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  v149 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                  v178 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  v172 = v149;

                  *&v210 = 0;
                  *(&v210 + 1) = 0xE000000000000000;
                  sub_252E379F4();

                  *&v210 = 0xD00000000000001BLL;
                  *(&v210 + 1) = v153;
                  v150 = *v148;
                  v151 = v148[1];

                  MEMORY[0x2530AD570](v150, v151);

                  sub_252CC3D90(v210, *(&v210 + 1), 0xD000000000000075, v168 | 0x8000000000000000);

                  goto LABEL_175;
                }

                v147 = sub_252E37DB4();

                if (v147)
                {
                  goto LABEL_204;
                }
              }

              else
              {
              }

              ++v142;
            }

            while (v143 != v141);
          }
        }

        sub_2529AEC80(&v219);
        goto LABEL_176;
      }

      type metadata accessor for HomeStore(0);
      v17 = sub_25297DE08(&v219, &v210);
      v18 = static HomeStore.shared.getter(v17);
      a1 = sub_2529D8DC0();

      if (a1 >> 62)
      {
        v2 = sub_252E378C4();
        if (!v2)
        {
          goto LABEL_174;
        }
      }

      else
      {
        v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v2)
        {
          goto LABEL_174;
        }
      }

      v19 = 0;
      v170 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v170)
        {
          v20 = MEMORY[0x2530ADF00](v19, a1);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_212;
          }
        }

        else
        {
          if (v19 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_214;
          }

          v20 = *(a1 + 8 * v19 + 32);

          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_212;
          }
        }

        v22 = sub_252E32E24();
        if (!v16)
        {

          goto LABEL_12;
        }

        if (v22 == v187 && v16 == v23)
        {
          break;
        }

        v25 = sub_252E37DB4();

        if (v25)
        {

          goto LABEL_92;
        }

LABEL_12:

        ++v19;
        if (v21 == v2)
        {
          goto LABEL_174;
        }
      }

LABEL_92:
      sub_2529AEC80(&v219);
      v67 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v179 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      v180 = v67;
LABEL_96:

LABEL_97:

LABEL_175:

LABEL_176:
      v35 = v186;
LABEL_177:
      *&v188 = 0;
      *(&v188 + 1) = 0xE000000000000000;
      sub_252E379F4();
      v205 = v188;
      MEMORY[0x2530AD570](0xD00000000000001ALL, v164 | 0x8000000000000000);
      v188 = v209;
      v200 = v208;
      v203 = v206;
      v204 = v207;
      v124 = v177;
      v125 = v172;
      v126 = v173;
      v189 = v178;
      v190 = v172;
      v191 = v173;
      v192 = v182;
      v193 = v183;
      v194 = v181;
      v127 = v175;
      v128 = v176;
      v195 = v177;
      v196 = v176;
      v197 = v175;
      v198 = v184;
      v199 = v185;
      v201 = v180;
      v202 = v179;
      sub_252E37AE4();
      sub_252CC3D90(v205, *(&v205 + 1), 0xD000000000000075, v168 | 0x8000000000000000);

      v210 = v209;
      *&v211 = v178;
      *(&v211 + 1) = v125;
      *&v212 = v126;
      *(&v212 + 1) = v182;
      *&v213 = v183;
      *(&v213 + 1) = v181;
      *&v214 = v124;
      *(&v214 + 1) = v128;
      *&v215 = v127;
      *(&v215 + 1) = v184;
      *(v216 + 8) = v208;
      *&v216[0] = v185;
      *(&v216[1] + 1) = v180;
      *&v217 = v179;
      v218 = v207;
      *(&v217 + 1) = v206;
      sub_25297DE08(&v210, &v188);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_2529F84A8(0, *(v35 + 2) + 1, 1, v35);
      }

      v130 = *(v35 + 2);
      v129 = *(v35 + 3);
      v7 = v165;
      if (v130 >= v129 >> 1)
      {
        v35 = sub_2529F84A8((v129 > 1), v130 + 1, 1, v35);
      }

      *(v35 + 2) = v130 + 1;
      v131 = &v35[152 * v130];
      v132 = v211;
      *(v131 + 2) = v210;
      *(v131 + 3) = v132;
      v133 = v212;
      v134 = v213;
      v135 = v215;
      *(v131 + 6) = v214;
      *(v131 + 7) = v135;
      *(v131 + 4) = v133;
      *(v131 + 5) = v134;
      v136 = v216[0];
      v137 = v216[1];
      v138 = v217;
      *(v131 + 88) = v218;
      *(v131 + 9) = v137;
      *(v131 + 10) = v138;
      *(v131 + 8) = v136;
      v188 = v209;
      v189 = v178;
      v190 = v125;
      v191 = v126;
      v192 = v182;
      v193 = v183;
      v194 = v181;
      v195 = v177;
      v196 = v176;
      v197 = v175;
      v198 = v184;
      v200 = v208;
      v199 = v185;
      v201 = v180;
      v202 = v179;
      v204 = v207;
      v203 = v206;
      isUniquelyReferenced_nonNull_native = sub_2529AEC80(&v188);
      v8 = v171;
LABEL_182:
      if (++v8 == v7)
      {
        goto LABEL_208;
      }

      v186 = v35;
    }

    if (v14 != 2)
    {
      if (v14 != 4)
      {
        goto LABEL_176;
      }

      type metadata accessor for HomeStore(0);
      v26 = sub_25297DE08(&v219, &v210);
      v27 = static HomeStore.shared.getter(v26);
      a1 = sub_2529D9884();

      if (a1 >> 62)
      {
        v2 = sub_252E378C4();
        if (v2)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2)
        {
LABEL_30:
          v28 = 0;
          v170 = a1 & 0xC000000000000001;
          do
          {
            if (v170)
            {
              v29 = MEMORY[0x2530ADF00](v28, a1);
              v30 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
                goto LABEL_209;
              }
            }

            else
            {
              if (v28 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_215;
              }

              v29 = *(a1 + 8 * v28 + 32);

              v30 = v28 + 1;
              if (__OFADD__(v28, 1))
              {
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
                goto LABEL_211;
              }
            }

            v31 = sub_252E32E24();
            if (v16)
            {
              if (v31 == v187 && v16 == v32)
              {

                goto LABEL_93;
              }

              v34 = sub_252E37DB4();

              if (v34)
              {

LABEL_93:
                sub_2529AEC80(&v219);
                v68 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                v184 = *(v29 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

                v185 = v68;
                goto LABEL_176;
              }
            }

            else
            {
            }

            ++v28;
          }

          while (v30 != v2);
        }
      }

LABEL_174:
      sub_2529AEC80(&v219);
      goto LABEL_175;
    }

    type metadata accessor for HomeStore(0);
    v58 = sub_25297DE08(&v219, &v210);
    v59 = static HomeStore.shared.getter(v58);
    a1 = sub_2529DA828();

    if (a1 >> 62)
    {
      v2 = sub_252E378C4();
      if (!v2)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        goto LABEL_174;
      }
    }

    v60 = 0;
    v170 = a1 & 0xC000000000000001;
    while (2)
    {
      if (v170)
      {
        v61 = MEMORY[0x2530ADF00](v60, a1);
        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_211;
        }

LABEL_78:

        v63 = sub_252E32E24();
        if (v16)
        {
          if (v63 == v187 && v16 == v64)
          {

            goto LABEL_95;
          }

          v66 = sub_252E37DB4();

          if (v66)
          {

LABEL_95:
            sub_2529AEC80(&v219);
            v70 = *(v61 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
            v183 = *(v61 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v181 = v70;
            goto LABEL_96;
          }
        }

        else
        {
        }

        ++v60;
        if (v62 == v2)
        {
          goto LABEL_174;
        }

        continue;
      }

      break;
    }

    if (v60 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_216;
    }

    v61 = *(a1 + 8 * v60 + 32);

    v62 = v60 + 1;
    if (!__OFADD__(v60, 1))
    {
      goto LABEL_78;
    }

LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    swift_once();
  }

  v35 = MEMORY[0x277D84F90];
LABEL_208:
  sub_252B680FC(isUniquelyReferenced_nonNull_native);
  sub_252B63924(v35);
}

uint64_t sub_252A3E31C(uint64_t a1)
{
  v1 = sub_252A3C960(a1);
  v2 = sub_252DF91F8(v1);

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = *(v2 + 16);
      v7 = v2 + 32 + 152 * v4;
      v8 = v4;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
          goto LABEL_18;
        }

        v9 = *(v7 + 16);
        v32 = *v7;
        v33 = v9;
        v10 = *(v7 + 32);
        v11 = *(v7 + 48);
        v12 = *(v7 + 80);
        v36 = *(v7 + 64);
        v37 = v12;
        v34 = v10;
        v35 = v11;
        v13 = *(v7 + 96);
        v14 = *(v7 + 112);
        v15 = *(v7 + 128);
        v41 = *(v7 + 144);
        v39 = v14;
        v40 = v15;
        v38 = v13;
        v4 = v8 + 1;
        if (*(&v15 + 1) > 0.01)
        {
          break;
        }

        v7 += 152;
        ++v8;
        if (v3 == v4)
        {
          goto LABEL_15;
        }
      }

      sub_25297DE08(&v32, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA580(0, *(v5 + 16) + 1, 1);
        v5 = v42;
      }

      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2529AA580((v17 > 1), v18 + 1, 1);
        v5 = v42;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 152 * v18;
      v20 = v33;
      *(v19 + 32) = v32;
      *(v19 + 48) = v20;
      v21 = v34;
      v22 = v35;
      v23 = v37;
      *(v19 + 96) = v36;
      *(v19 + 112) = v23;
      *(v19 + 64) = v21;
      *(v19 + 80) = v22;
      v24 = v38;
      v25 = v39;
      v26 = v40;
      *(v19 + 176) = v41;
      *(v19 + 144) = v25;
      *(v19 + 160) = v26;
      *(v19 + 128) = v24;
    }

    while (v3 - 1 != v8);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_15:

  sub_252B680FC(v27);
  sub_252B63924(v5);

  if (qword_27F53F550 != -1)
  {
LABEL_18:
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544E98);
  *&v32 = 0;
  *(&v32 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v32 = 0xD00000000000001CLL;
  *(&v32 + 1) = 0x8000000252E72B00;
  v29 = MEMORY[0x2530AD730](v5, &type metadata for ReferencedEntityValue);
  MEMORY[0x2530AD570](v29);

  sub_252CC3D90(v32, *(&v32 + 1), 0xD000000000000075, 0x8000000252E72A80);

  sub_252A3CD3C(v5);
}

uint64_t sub_252A3E5E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A3E650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A3E6C0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t getEnumTagSinglePayload for ReferencedEntityValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReferencedEntityValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A3E87C()
{
  result = qword_27F541C40;
  if (!qword_27F541C40)
  {
    result = swift_getWitnessTable(byte_252E41EAC, &type metadata for EntityReferenceType, v0, v1);
    atomic_store(result, &qword_27F541C40);
  }

  return result;
}

unint64_t sub_252A3E8D4()
{
  result = qword_27F541C48;
  if (!qword_27F541C48)
  {
    result = swift_getWitnessTable(asc_252E41F4C, &type metadata for HomeAppEntityType, v0, v1);
    atomic_store(result, &qword_27F541C48);
  }

  return result;
}

unint64_t sub_252A3E92C()
{
  result = qword_27F541C50;
  if (!qword_27F541C50)
  {
    result = swift_getWitnessTable(aLP, &type metadata for ReferencedEntityValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541C50);
  }

  return result;
}

unint64_t sub_252A3E984()
{
  result = qword_27F541C58;
  if (!qword_27F541C58)
  {
    result = swift_getWitnessTable(asc_252E41F74, &type metadata for ReferencedEntityValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541C58);
  }

  return result;
}

unint64_t sub_252A3E9DC()
{
  result = qword_27F541C60;
  if (!qword_27F541C60)
  {
    result = swift_getWitnessTable(asc_252E41F9C, &type metadata for ReferencedEntityValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F541C60);
  }

  return result;
}

uint64_t sub_252A3EA30()
{
  v0 = sub_252E36AB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F650 != -1)
  {
LABEL_23:
    swift_once();
  }

  v4 = qword_27F544FD8;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v5 = sub_252A3C1E0();
  v6 = sub_252A3C960(v5);

  if (*(v6 + 2))
  {
    v42 = v4;
    v43 = v3;
    v44 = v1;
    v7 = sub_252DF91F8(v6);

    v8 = *(v7 + 16);
    if (v8)
    {
      v3 = 0;
      v1 = &v46;
      v9 = v8 - 1;
      v10 = MEMORY[0x277D84F90];
      do
      {
        v11 = *(v7 + 16);
        v12 = v7 + 32 + 152 * v3;
        v13 = v3;
        while (1)
        {
          if (v13 >= v11)
          {
            __break(1u);
            goto LABEL_23;
          }

          v14 = *(v12 + 16);
          v46 = *v12;
          v47 = v14;
          v15 = *(v12 + 32);
          v16 = *(v12 + 48);
          v17 = *(v12 + 80);
          v50 = *(v12 + 64);
          v51 = v17;
          v48 = v15;
          v49 = v16;
          v18 = *(v12 + 96);
          v19 = *(v12 + 112);
          v20 = *(v12 + 128);
          v55 = *(v12 + 144);
          v53 = v19;
          v54 = v20;
          v52 = v18;
          v3 = v13 + 1;
          if (*(&v20 + 1) > 0.01)
          {
            break;
          }

          v12 += 152;
          ++v13;
          if (v8 == v3)
          {
            goto LABEL_18;
          }
        }

        sub_25297DE08(&v46, &v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v10;
        v40 = v9;
        v41 = v0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2529AA580(0, *(v10 + 16) + 1, 1);
          v10 = v56;
        }

        v23 = *(v10 + 16);
        v22 = *(v10 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_2529AA580((v22 > 1), v23 + 1, 1);
          v10 = v56;
        }

        *(v10 + 16) = v23 + 1;
        v24 = v10 + 152 * v23;
        v25 = v47;
        *(v24 + 32) = v46;
        *(v24 + 48) = v25;
        v26 = v48;
        v27 = v49;
        v28 = v51;
        *(v24 + 96) = v50;
        *(v24 + 112) = v28;
        *(v24 + 64) = v26;
        *(v24 + 80) = v27;
        v29 = v52;
        v30 = v53;
        v31 = v54;
        *(v24 + 176) = v55;
        *(v24 + 144) = v30;
        *(v24 + 160) = v31;
        *(v24 + 128) = v29;
        v9 = v40;
        v0 = v41;
      }

      while (v40 != v13);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

LABEL_18:

    sub_252B680FC(v32);
    sub_252B63924(v10);

    v3 = v43;
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544E98);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v46 = 0xD000000000000025;
    *(&v46 + 1) = 0x8000000252E730B0;
    v34 = MEMORY[0x2530AD730](v10, &type metadata for ReferencedEntityValue);
    v36 = v35;

    MEMORY[0x2530AD570](v34, v36);

    sub_252CC3D90(v46, *(&v46 + 1), 0xD000000000000075, 0x8000000252E72A80);

    v1 = v44;
    v4 = v42;
  }

  else
  {
  }

  v37 = MEMORY[0x277D84F90];
  v38 = sub_252E375C4();
  sub_252E36A74(v38, &dword_252917000, v4, "ReferenceResolution.GetReferencedEntitiesForNLV3", 48, 2, v3, " enableTelemetry=YES ", 21, 2, v37);
  return v1[1](v3, v0);
}

unint64_t sub_252A3EE9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252A3EEE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E656E656373 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED0000656D614E79 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1836019570 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701736314 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x79636E65696C6173 && a2 == 0xED000065726F6353 || (sub_252E37DB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000252E73050 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_252A3F2D8()
{
  result = qword_27F541C68;
  if (!qword_27F541C68)
  {
    result = swift_getWitnessTable(aM_2, &type metadata for EntityReferenceType, v0, v1);
    atomic_store(result, &qword_27F541C68);
  }

  return result;
}

unint64_t sub_252A3F32C()
{
  result = qword_27F541C70;
  if (!qword_27F541C70)
  {
    result = swift_getWitnessTable(asc_252E41ED4, &type metadata for HomeAppEntityType, v0, v1);
    atomic_store(result, &qword_27F541C70);
  }

  return result;
}

uint64_t sub_252A3F3AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252A40534(a1);
}

uint64_t sub_252A3F458()
{
  type metadata accessor for ShowCameraViaHomeAppHandleDelegate();

  return swift_allocObject();
}

unint64_t sub_252A3F488(unint64_t result, void *a2, void *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        sub_252D41EFC(&v11, a2, a3);

        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_252E378C4();
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_252A3F59C(unint64_t a1, unint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v6, a1);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v9 = v7;
      sub_252A3F488(a2, v9, a3);

      ++v6;
      if (v8 == i)
      {
        return;
      }
    }

    if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(a1 + 8 * v6 + 32);
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_252A3F69C(void *a1)
{
  v1 = [a1 filters];
  if (!v1)
  {
    return v1;
  }

  type metadata accessor for HomeFilter();
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_4;
    }

LABEL_36:

    return 0;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_4:
  v3 = type metadata accessor for HomeStore(0);
  v4 = static HomeStore.shared.getter(v3);
  v5 = HomeStore.accessories(matching:supporting:)(v2, 0);
  v7 = v6;

  if (v7)
  {
    sub_252929F10(v5, 1);
    return 0;
  }

  if (v5 >> 62)
  {
    goto LABEL_40;
  }

  v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_8:
    v9 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](v9, v5);
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          sub_252929F10(v5, 0);

          v1 = 1;
          goto LABEL_42;
        }
      }

      else
      {
        if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_40:
          v8 = sub_252E378C4();
          if (!v8)
          {
            goto LABEL_41;
          }

          goto LABEL_8;
        }

        v10 = *(v5 + 32 + 8 * v9);

        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          goto LABEL_32;
        }
      }

      v12 = (*v10 + 256);
      v13 = *v12;
      if ((*v12)() == 24)
      {
        sub_252929F10(v5, 0);

        v1 = 1;
        goto LABEL_42;
      }

      v14 = (*(*v10 + 272))();
      if (*(v14 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](24);
        v15 = sub_252E37F14();
        v16 = -1 << *(v14 + 32);
        v17 = v15 & ~v16;
        if ((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (*(*(v14 + 48) + 8 * v17) != 24)
          {
            v17 = (v17 + 1) & v18;
            if (((*(v14 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_33;
        }
      }

LABEL_19:

      v20 = (v13)(v19);
      if (v20 == 38)
      {
        break;
      }

      v21 = MEMORY[0x277D84FA0];
      if (v20 == 41)
      {
        v22 = &unk_2864A9568;
LABEL_23:
        v21 = sub_2529FC004(v22);
      }

      if (*(v21 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](24);
        v23 = sub_252E37F14();
        v24 = -1 << *(v21 + 32);
        v25 = v23 & ~v24;
        if ((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (*(*(v21 + 48) + 8 * v25) != 24)
          {
            v25 = (v25 + 1) & v26;
            if (((*(v21 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          goto LABEL_33;
        }
      }

LABEL_9:

      if (v9 == v8)
      {
        goto LABEL_41;
      }
    }

    v22 = &unk_2864A9540;
    goto LABEL_23;
  }

LABEL_41:
  sub_252929F10(v5, 0);
  v1 = 0;
LABEL_42:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544C70);
  v51[0] = 0;
  v51[1] = 0xE000000000000000;
  sub_252E379F4();
  v48 = 0;
  v49 = 0xE000000000000000;
  v29 = MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E73130);
  v30 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v29);
  sub_252929E74((v30 + 16), v51);

  __swift_project_boxed_opaque_existential_1(v51, v52);
  v31 = sub_252E33894();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v32)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v33, v34);

  __swift_destroy_boxed_opaque_existential_1(v51);
  v35 = MEMORY[0x2530AD570](0x6E6F685073690A2CLL, 0xEA00000000003D65);
  v36 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v35);
  sub_252929E74((v36 + 16), v51);

  __swift_project_boxed_opaque_existential_1(v51, v52);
  v37 = sub_252E338B4();
  v38 = (v37 & 1) == 0;
  if (v37)
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (v38)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v39, v40);

  __swift_destroy_boxed_opaque_existential_1(v51);
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E73160);
  if (v1)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v1)
  {
    v42 = 0xE400000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v41, v42);

  sub_252CC3D90(v48, v49, 0xD000000000000085, 0x8000000252E73180);

  v44 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v43);
  sub_252929E74((v44 + 16), v51);

  __swift_project_boxed_opaque_existential_1(v51, v52);
  v45 = sub_252E33894();
  if (v45)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    v46 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v45);
    sub_252929E74((v46 + 16), &v48);

    __swift_project_boxed_opaque_existential_1(&v48, v50);
    v47 = sub_252E338B4();
    __swift_destroy_boxed_opaque_existential_1(&v48);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return v1 & v47;
  }

  return v1;
}

id sub_252A3FCDC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v70 = v61 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v61 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v71 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v61 - v16;
  v18 = sub_252E32E04();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v61 - v23;
  result = [a1 dateTimeRange];
  if (result)
  {

    v26 = [a1 dateTimeRange];
    if (!v26)
    {
LABEL_8:
      (*(v19 + 56))(v17, 1, 1, v18);
LABEL_9:
      v32 = v17;
LABEL_10:
      sub_25293847C(v32, &qword_27F540F38, &unk_252E41490);
      return 0;
    }

    v67 = v22;
    v69 = v18;
    v27 = v26;
    v28 = [v26 startDateComponents];

    v68 = v19;
    if (v28)
    {
      sub_252E32B24();

      v29 = sub_252E32BA4();
      (*(*(v29 - 8) + 56))(v10, 0, 1, v29);
    }

    else
    {
      v29 = sub_252E32BA4();
      (*(*(v29 - 8) + 56))(v10, 1, 1, v29);
    }

    sub_2529BBFC0(v10, v12);
    sub_252E32BA4();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (v31(v12, 1, v29) == 1)
    {
      sub_25293847C(v12, &qword_27F540F00, &unk_252E3FEC0);
      v19 = v68;
      v18 = v69;
      goto LABEL_8;
    }

    v66 = v24;
    sub_252E32B44();
    v64 = *(v30 + 8);
    v65 = v30 + 8;
    v64(v12, v29);
    v34 = v68;
    v33 = v69;
    v62 = *(v68 + 48);
    v63 = v68 + 48;
    if (v62(v17, 1, v69) == 1)
    {
      goto LABEL_9;
    }

    v35 = *(v34 + 32);
    v36 = v17;
    v61[1] = v34 + 32;
    v37 = v35;
    v35(v66, v36, v33);
    v38 = [a1 dateTimeRange];
    if (!v38)
    {
      (*(v34 + 8))(v66, v33);
      v42 = v71;
LABEL_20:
      (*(v34 + 56))(v42, 1, 1, v33);
LABEL_21:
      v32 = v42;
      goto LABEL_10;
    }

    v39 = v38;
    v40 = [v38 endDateComponents];

    if (v40)
    {
      sub_252E32B24();

      v41 = 0;
    }

    else
    {
      v41 = 1;
    }

    v42 = v71;
    (*(v30 + 56))(v5, v41, 1, v29);
    v43 = v70;
    sub_2529BBFC0(v5, v70);
    if (v31(v43, 1, v29) == 1)
    {
      v34 = v68;
      v33 = v69;
      (*(v68 + 8))(v66, v69);
      sub_25293847C(v43, &qword_27F540F00, &unk_252E3FEC0);
      goto LABEL_20;
    }

    sub_252E32B44();
    v64(v43, v29);
    v44 = v69;
    if (v62(v42, 1, v69) == 1)
    {
      (*(v68 + 8))(v66, v44);
      goto LABEL_21;
    }

    v37(v67, v42, v44);
    v45 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v46 = sub_252E36F04();
    [v45 setDateFormat_];

    v47 = sub_252E32D64();
    v48 = [v45 stringFromDate_];

    v49 = sub_252E36F34();
    v51 = v50;

    v52 = sub_252E32D64();
    v53 = [v45 stringFromDate_];

    v54 = sub_252E36F34();
    v56 = v55;

    v72 = 0;
    v73 = 0xE000000000000000;
    sub_252E379F4();

    v72 = 0xD000000000000019;
    v73 = 0x8000000252E73360;
    MEMORY[0x2530AD570](v49, v51);

    MEMORY[0x2530AD570](0x65746144646E6526, 0xE90000000000003DLL);
    MEMORY[0x2530AD570](v54, v56);

    v57 = v72;
    v58 = v73;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v59 = sub_252E36AD4();
    __swift_project_value_buffer(v59, qword_27F544C70);
    v72 = 0;
    v73 = 0xE000000000000000;
    sub_252E379F4();

    v72 = 0xD000000000000010;
    v73 = 0x8000000252E73380;
    MEMORY[0x2530AD570](v57, v58);
    sub_252CC3D90(v72, v73, 0xD000000000000085, 0x8000000252E73180);

    v60 = *(v68 + 8);
    v60(v67, v44);
    v60(v66, v44);
    return v57;
  }

  return result;
}

uint64_t sub_252A40534(uint64_t a1)
{
  v1[25] = a1;
  v2 = sub_252E36AD4();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v3 = sub_252E32E84();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A40668, 0, 0);
}

void sub_252A40668()
{
  v124 = v0;
  v1 = [*(v0 + 200) filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_252A41988(v3, &unk_2864A9590);
  v6 = v5;

  if (v6)
  {
    goto LABEL_93;
  }

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_93:
    sub_252929F10(v4, v6 & 1);
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 208), qword_27F544C70);
    sub_252CC4050(0xD00000000000001BLL, 0x8000000252E73210, 0xD000000000000085, 0x8000000252E73180, 0x6928656C646E6168, 0xEF293A746E65746ELL, 40);
    v15 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v111 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    *&v15[v111] = 100;
    [v15 setUserActivity_];
    goto LABEL_96;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_93;
  }

LABEL_7:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(*(v0 + 208), qword_27F544C70);
  sub_252E379F4();

  v8 = type metadata accessor for HomeFilter();
  v9 = MEMORY[0x2530AD730](v4, v8);
  MEMORY[0x2530AD570](v9);

  sub_252CC3D90(0xD000000000000029, 0x8000000252E73230, 0xD000000000000085, 0x8000000252E73180);

  v10 = type metadata accessor for HomeStore(0);
  v11 = static HomeStore.shared.getter(v10);
  v12 = HomeStore.accessories(matching:supporting:)(v4, 0);
  v14 = v13;
  sub_252929F10(v4, 0);

  if (v14)
  {
    v123[0] = 0;
    v123[1] = 0xE000000000000000;
    sub_252E379F4();
    *(v0 + 136) = 0;
    *(v0 + 144) = v123[1];
    MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E73260);
    *(v0 + 184) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 136), *(v0 + 144), 0xD000000000000085, 0x8000000252E73180, 0x6928656C646E6168, 0xEF293A746E65746ELL, 91);

    v15 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v16 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    *&v15[v16] = 100;
    [v15 setUserActivity_];
    sub_252929F10(v12, 1);
    goto LABEL_96;
  }

  v122 = v7;
  sub_252E379F4();

  v123[0] = 0xD000000000000011;
  v123[1] = 0x8000000252E73280;
  v17 = v12 >> 62;
  v18 = v12;
  if (v12 >> 62)
  {
    v19 = sub_252E378C4();
  }

  else
  {
    v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = ",\ntargetsIPCamera=";
  *(v0 + 192) = v19;
  v21 = sub_252E37D94();
  MEMORY[0x2530AD570](v21);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E732A0);
  sub_252CC3D90(v123[0], v123[1], 0xD000000000000085, 0x8000000252E73180);

  if (v19 != 1)
  {
    if (v19 < 2)
    {
      sub_252929F10(v18, 0);
      sub_2529515FC(1, 7, 0xD000000000000023, 0x8000000252E732C0);
      v46 = sub_252E36AC4();
      v47 = sub_252E374D4();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_252917000, v46, v47, "Camera accessory list not successfully handled", v48, 2u);
        MEMORY[0x2530AED00](v48, -1, -1);
      }

      v15 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
      v49 = OBJC_IVAR___ShowHomeIntentResponse_code;
      swift_beginAccess();
      *&v15[v49] = 5;
      [v15 setUserActivity_];
      goto LABEL_96;
    }

    v15 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v40 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    *&v15[v40] = 4;
    [v15 setUserActivity_];
    v41 = sub_252E36F04();
    v26 = &off_279711000;
    [v15 setPunchOutURL_];

    v118 = v18 & 0xC000000000000001;
    if ((v18 & 0xC000000000000001) == 0)
    {
      if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v42 = *(v18 + 32);

      goto LABEL_28;
    }

    goto LABEL_106;
  }

  v22 = *(v0 + 200);
  v15 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
  v23 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v15[v23] = 4;
  [v15 setUserActivity_];
  v24 = sub_252A3FCDC(v22);
  v26 = v25;
  v27 = (v25 >> 56) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  v28 = v18;
  if (v27)
  {
    v17 = v18 & 0xC000000000000001;
    if ((v18 & 0xC000000000000001) != 0)
    {
      goto LABEL_101;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v29 = v24;
      v30 = ",\ntargetsIPCamera=";

      goto LABEL_20;
    }

    __break(1u);
LABEL_103:
    v50 = MEMORY[0x2530ADF00](0, v28);
    goto LABEL_39;
  }

  v119 = ",\ntargetsIPCamera=";

  v17 = v18 & 0xC000000000000001;
  while (2)
  {
    strcpy(v123, "com.apple.Home");
    HIBYTE(v123[1]) = -18;
    MEMORY[0x2530AD570](0x73656363612F2F3ALL, 0xED00002F79726F73);
    v18 = v123[0];
    v23 = v123[1];
    if (v17)
    {
      goto LABEL_103;
    }

    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v50 = *(v28 + 32);

LABEL_39:
      v51 = *(v0 + 264);
      v52 = *(v0 + 240);
      v53 = *(v0 + 248);
      sub_252929F10(v28, 0);
      (*(v53 + 16))(v51, v50 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v52);

      v54 = sub_252E32E24();
      v56 = v55;
      (*(v53 + 8))(v51, v52);
      v123[0] = v18;
      v123[1] = v23;

      MEMORY[0x2530AD570](v54, v56);

      v57 = sub_252E36F04();

      [v15 setPunchOutURL_];

      v30 = v119;
LABEL_40:
      v58 = v122;
      goto LABEL_71;
    }

    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_106:
      v42 = MEMORY[0x2530ADF00](0, v18);
LABEL_28:
      v43 = [*(v42 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
      if (!v43)
      {

        sub_252929F10(v18, 0);
LABEL_80:
        v98 = [v15 punchOutURL];
        if (v98)
        {
          v99 = v98;
          v100 = sub_252E36F34();
          v102 = v101;

          v123[0] = v100;
          v123[1] = v102;
          MEMORY[0x2530AD570](3092282, 0xE300000000000000);
          if (v102)
          {
            v103 = sub_252E36F04();
          }

          else
          {
            v103 = 0;
          }

          [v15 v26[408]];
        }

        else
        {
          [v15 v26[408]];
        }

        goto LABEL_96;
      }

      v44 = v43;
      type metadata accessor for Room(0);
      swift_allocObject();
      v121 = sub_2529A1E08(v44);

      if (v17)
      {
        v45 = sub_252E378C4();
      }

      else
      {
        v45 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v45)
      {
LABEL_65:
        sub_252929F10(v18, 0);
        v75 = [v15 punchOutURL];
        if (v75)
        {
          v76 = v20;
          v77 = *(v0 + 264);
          v78 = *(v0 + 240);
          v79 = *(v0 + 248);
          v80 = v75;
          sub_252E36F34();
          v82 = v81;

          (*(v79 + 16))(v77, v121 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v78);
          v83 = sub_252E32E24();
          v85 = v84;
          (*(v79 + 8))(v77, v78);
          strcpy(v123, "://room/");
          BYTE1(v123[1]) = 0;
          WORD1(v123[1]) = 0;
          HIDWORD(v123[1]) = -402653184;
          MEMORY[0x2530AD570](v83, v85);

          MEMORY[0x2530AD570](v123[0], v123[1]);

          if (v82)
          {
            v86 = sub_252E36F04();
          }

          else
          {
            v86 = 0;
          }

          v97 = v122;
          [v15 setPunchOutURL_];

          v20 = v76;
        }

        else
        {
          [v15 setPunchOutURL_];
          v97 = v122;
        }

        (*(*(v0 + 216) + 16))(*(v0 + 224), v97, *(v0 + 208));
        sub_252E379F4();

        v123[0] = 0xD000000000000025;
        v123[1] = 0x8000000252E732F0;
        v104 = [v15 punchOutURL];
        v105 = v20;
        if (v104)
        {
          v106 = v104;
          v107 = sub_252E36F34();
          v109 = v108;
        }

        else
        {
          v107 = 0;
          v109 = 0;
        }

        v94 = *(v0 + 216);
        v92 = *(v0 + 224);
        v93 = *(v0 + 208);
        *(v0 + 152) = v107;
        *(v0 + 160) = v109;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v110 = sub_252E36F94();
        MEMORY[0x2530AD570](v110);

        sub_252CC3D90(v123[0], v123[1], 0xD000000000000085, v105 | 0x8000000000000000);

        goto LABEL_75;
      }

      v59 = 0;
      v60 = *(v0 + 248);
      v113 = v18 & 0xFFFFFFFFFFFFFF8;
      v115 = (v60 + 32);
      v116 = (v60 + 8);
      v28 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
      v114 = v45;
      v120 = v20;
      v117 = v18;
      while (v118)
      {
        v24 = MEMORY[0x2530ADF00](v59, v18);
        v26 = v24;
        v61 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_100;
        }

LABEL_53:
        v62 = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);

        v63 = [v62 room];
        if (!v63)
        {
          sub_252929F10(v18, 0);

          goto LABEL_79;
        }

        v64 = v63;
        v17 = swift_allocObject();
        v65 = v64;
        v66 = [v65 uniqueIdentifier];
        sub_252E32E64();

        v67 = [v65 name];
        v68 = sub_252E36F34();
        v26 = v69;

        v70 = [v65 assistantIdentifier];
        if (v70)
        {
          v71 = v70;
          sub_252E36F34();
        }

        else
        {
        }

        (*v115)(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, *(v0 + 256), *(v0 + 240));
        if ((sub_252E32E54() & 1) == 0 || *(v121 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != 3)
        {
          v96 = *(v0 + 240);

          swift_setDeallocating();
          (*v116)(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v96);

          swift_deallocClassInstance();
          sub_252929F10(v117, 0);
          goto LABEL_79;
        }

        v72 = *(v0 + 240);
        if (*(v121 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v68 && *(v121 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v26)
        {

          swift_setDeallocating();
          (*v116)(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v72);

          swift_deallocClassInstance();
        }

        else
        {
          v74 = sub_252E37DB4();

          swift_setDeallocating();
          (*v116)(v17 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v72);

          swift_deallocClassInstance();
          if ((v74 & 1) == 0)
          {
            sub_252929F10(v117, 0);
LABEL_79:

            v26 = &off_279711000;
            goto LABEL_80;
          }
        }

        ++v59;
        v20 = v120;
        v18 = v117;
        if (v61 == v114)
        {
          goto LABEL_65;
        }
      }

      if (v59 >= *(v113 + 16))
      {
        continue;
      }

      break;
    }

    v26 = *(v18 + 8 * v59 + 32);

    v61 = v59 + 1;
    if (!__OFADD__(v59, 1))
    {
      goto LABEL_53;
    }

LABEL_100:
    __break(1u);
LABEL_101:
    v30 = v20;
    v29 = v24;
    MEMORY[0x2530ADF00](0, v28);
LABEL_20:
    v31 = sub_252D4EC64();
    v20 = v32;

    if (!v20)
    {
      v119 = v30;

      continue;
    }

    break;
  }

  sub_252929F10(v28, 0);
  strcpy(v123, "com.apple.Home");
  HIBYTE(v123[1]) = -18;
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E73320);

  MEMORY[0x2530AD570](v31, v20);

  v33 = sub_252E36F04();

  [v15 setPunchOutURL_];

  v34 = [v15 punchOutURL];
  if (!v34)
  {

    [v15 setPunchOutURL_];
    goto LABEL_40;
  }

  v35 = v34;
  v36 = sub_252E36F34();
  v38 = v37;

  v123[0] = v36;
  v123[1] = v38;
  MEMORY[0x2530AD570](v29, v26);

  if (v38)
  {
    v39 = sub_252E36F04();
  }

  else
  {
    v39 = 0;
  }

  [v15 setPunchOutURL_];

  v58 = v122;
LABEL_71:
  (*(*(v0 + 216) + 16))(*(v0 + 232), v58, *(v0 + 208));
  sub_252E379F4();

  v123[0] = 0xD000000000000025;
  v123[1] = 0x8000000252E732F0;
  v87 = [v15 punchOutURL];
  if (v87)
  {
    v88 = v87;
    v89 = sub_252E36F34();
    v91 = v90;
  }

  else
  {
    v89 = 0;
    v91 = 0;
  }

  v92 = *(v0 + 232);
  v93 = *(v0 + 208);
  v94 = *(v0 + 216);
  *(v0 + 168) = v89;
  *(v0 + 176) = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v95 = sub_252E36F94();
  MEMORY[0x2530AD570](v95);

  sub_252CC3D90(v123[0], v123[1], 0xD000000000000085, v30 | 0x8000000000000000);

LABEL_75:
  (*(v94 + 8))(v92, v93);
LABEL_96:

  v112 = *(v0 + 8);

  v112(v15);
}

uint64_t sub_252A41988(unint64_t a1, uint64_t a2)
{
  v4 = sub_252E36AB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HomeStore(0);
  v9 = static HomeStore.shared.getter(v8);
  v10 = v9[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];

  if (v10 != 2 && (v10 & 1) == 0)
  {
LABEL_24:
    sub_2529318DC();
    result = swift_allocError();
    v26 = 11;
LABEL_33:
    *v25 = v26;
    return result;
  }

  if (!a1)
  {
    goto LABEL_32;
  }

  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    sub_2529318DC();
    result = swift_allocError();
    v26 = 8;
    goto LABEL_33;
  }

  while (1)
  {
    if (qword_27F53F5B8 != -1)
    {
      swift_once();
    }

    v11 = qword_27F544F40;
    sub_252E36A94();
    sub_252E375D4();
    v40 = v11;
    v12 = sub_252E36A84();
    v13 = static HomeStore.shared.getter(v12);
    v14 = sub_2529D9D50();

    v41 = MEMORY[0x277D84F90];
    if (v14 >> 62)
    {
      v15 = sub_252E378C4();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v15)
    {
      v27 = MEMORY[0x277D84F90];
      v28 = MEMORY[0x277D84F90];
      goto LABEL_27;
    }

    v35 = a1;
    v36 = v7;
    v37 = v5;
    v38 = v4;
    v7 = 0;
    v16 = v14;
    v17 = v14 & 0xC000000000000001;
    v4 = v16 & 0xFFFFFFFFFFFFFF8;
    v39 = v16;
    a1 = v16 + 32;
    v5 = a2 + 32;
LABEL_13:
    if (v17)
    {
      v18 = MEMORY[0x2530ADF00](v7, v39);
      v19 = __OFADD__(v7++, 1);
      if (!v19)
      {
        goto LABEL_16;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v7 < *(v4 + 16))
    {
      break;
    }

    __break(1u);
LABEL_31:
    if (!sub_252E378C4())
    {
      goto LABEL_32;
    }
  }

  v18 = *(a1 + 8 * v7);

  v19 = __OFADD__(v7++, 1);
  if (v19)
  {
    goto LABEL_23;
  }

LABEL_16:
  v20 = (*(*v18 + 256))();
  v21 = *(a2 + 16);
  v22 = (a2 + 32);
  do
  {
    if (!v21)
    {

      if (v7 != v15)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    v23 = *v22++;
    --v21;
  }

  while (v23 != v20);
  sub_252E37A94();
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
  if (v7 != v15)
  {
    goto LABEL_13;
  }

LABEL_25:
  v27 = v41;
  v5 = v37;
  v4 = v38;
  a1 = v35;
  v7 = v36;
  v28 = MEMORY[0x277D84F90];
LABEL_27:

  v43 = v28;

  sub_252A3F59C(a1, v27, &v43);

  v29 = sub_252E375C4();
  sub_252E36A74(v29, &dword_252917000, v40, "GetAccessoriesForIntent", 23, 2, v7, " enableTelemetry=YES ", 21, 2, v28);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544C70);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252E379F4();

  v41 = 0xD000000000000018;
  v42 = 0x8000000252E733C0;
  v31 = v43;
  v32 = type metadata accessor for HomeFilter();

  v34 = MEMORY[0x2530AD730](v33, v32);
  MEMORY[0x2530AD570](v34);

  sub_252CC3D90(v41, v42, 0xD00000000000007FLL, 0x8000000252E733E0);

  (*(v5 + 8))(v7, v4);

  return v31;
}

uint64_t sub_252A41E68(uint64_t a1, uint64_t a2)
{

  sub_252E337C4();

  sub_252E337B4();

  sub_252E337D4();
  v3 = *(a2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_domainContext);
  sub_252E33794();

  return sub_252E337A4();
}

uint64_t SiriKitEvent.HomeAutomationBuilder.deinit()
{
  v1 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_activityType;
  v2 = sub_252E339A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_252A4200C(v0 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReason);

  return v0;
}

uint64_t sub_252A4200C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C78, &unk_252E42170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriKitEvent.HomeAutomationBuilder.__deallocating_deinit()
{
  SiriKitEvent.HomeAutomationBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriKitEvent.HomeAutomationBuilder(uint64_t a1)
{
  result = qword_27F541C80;
  if (!qword_27F541C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252A42120(uint64_t a1)
{
  sub_252E339A4();
  if (v1 <= 0x3F)
  {
    sub_252A42220(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_252A42220(uint64_t a1)
{
  if (!qword_27F541C90)
  {
    sub_252E33744();
    v1 = sub_252E37734();
    if (!v2)
    {
      atomic_store(v1, &qword_27F541C90);
    }
  }
}

uint64_t sub_252A42278(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C78, &unk_252E42170);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_252E33744();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252A425A0(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_252A4200C(v8);
  }

  else
  {
    v13 = *(v10 + 32);
    v13(v12, v8, v9);
    v13(v6, v12, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v14 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReason;
    swift_beginAccess();
    sub_252A42610(v6, v1 + v14);
    swift_endAccess();
  }

  return v1;
}

uint64_t sub_252A4246C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E38);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC3D90(0x6B73617420746553, 0xEF206F7420444920, 0xD000000000000077, 0x8000000252E73520);

    v6 = (v2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskId);
    *v6 = a1;
    v6[1] = a2;
  }

  return v2;
}

uint64_t sub_252A425A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C78, &unk_252E42170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A42610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C78, &unk_252E42170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id ControlAutomateHomeIntent.__allocating_init(userTask:filters:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask] = a1;
  *&v5[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters] = a2;
  v6 = a1;
  v7 = sub_252E36F04();
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_displayString_pronunciationHint_, 0, v7, 0);

  return v8;
}

id ControlAutomateHomeIntent.init(userTask:filters:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask] = a1;
  *&v2[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters] = a2;
  v3 = a1;
  v4 = sub_252E36F04();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ControlAutomateHomeIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithIdentifier_displayString_pronunciationHint_, 0, v4, 0);

  return v5;
}

uint64_t ControlAutomateHomeIntent.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  ControlAutomateHomeIntent.Builder.init()();
  return v0;
}

uint64_t ControlAutomateHomeIntent.Builder.init()()
{
  v1 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  v4 = v3;
  [v4 setTaskType_];
  [v4 setAttribute_];
  [v4 setValue_];

  v5 = MEMORY[0x277D84F90];
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  return v0;
}

uint64_t sub_252A42920(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 taskType];
    v4 = [v2 attribute];
    v5 = [v2 value];
    v6 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v7 = sub_252E36F04();
    v8 = [v6 initWithIdentifier:0 displayString:v7];

    v9 = v8;
    [v9 setTaskType_];
    [v9 setAttribute_];
    [v9 setValue_];

    v10 = *(v1 + 16);
    *(v1 + 16) = v9;
  }
}

uint64_t sub_252A42A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  v11 = *(v3 + 16);
  *(v3 + 16) = v10;
}

uint64_t sub_252A42B28(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  v4 = result + 32;
  while (1)
  {
    if (v3 == v1)
    {
      swift_beginAccess();
      sub_25297A8D8(v2);
      swift_endAccess();
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8 * v1++);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x2530AD700]();
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v2 = v8;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_252A42C40()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ControlAutomateHomeIntent();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask] = v1;
  *&v4[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters] = v2;
  v5 = v1;

  v6 = sub_252E36F04();
  v9.receiver = v4;
  v9.super_class = v3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithIdentifier_displayString_pronunciationHint_, 0, v6, 0);

  return v7;
}

uint64_t sub_252A42D04()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  type metadata accessor for ControlAutomateHomeIntent.Builder();
  v2 = swift_allocObject();

  ControlAutomateHomeIntent.Builder.init()();

  v3 = sub_25297CCF8(v1);

  swift_beginAccess();
  *(v2 + 24) = v3;

  return v2;
}

uint64_t ControlAutomateHomeIntent.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_252A42E40()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v2 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v3 = v1;

  v4 = [v2 init];
  [v4 setUserTask_];
  type metadata accessor for HomeFilter();
  v5 = sub_252E37254();

  [v4 setFilters_];

  [v4 setTime_];
  return v4;
}

id ControlAutomateHomeIntent.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

uint64_t sub_252A43054()
{
}

id ControlAutomateHomeIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlAutomateHomeIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_252A43278()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 filters];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for HomeFilter();
      v5 = sub_252E37264();

      v6 = type metadata accessor for ControlAutomateHomeIntent();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask] = v2;
      *&v7[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters] = v5;
      v8 = v2;
      v9 = sub_252E36F04();
      v14.receiver = v7;
      v14.super_class = v6;
      v10 = objc_msgSendSuper2(&v14, sel_initWithIdentifier_displayString_pronunciationHint_, 0, v9, 0);

      return v10;
    }

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    sub_252CC3D90(0xD000000000000056, 0x8000000252E73760, 0xD000000000000087, 0x8000000252E736D0);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D60);
    sub_252CC3D90(0xD000000000000057, 0x8000000252E73670, 0xD000000000000087, 0x8000000252E736D0);
  }

  return 0;
}

uint64_t static SemanticMapper.getSemanticKey(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_252A434F0(a2, &qword_27F53F2A0, &off_27F541CD0, AccessoryTypeSemantic.rawValue.getter, a3, a1);
}

{
  return sub_252A434F0(a2, &qword_27F53F2A8, &off_27F541CD8, AttributeSemantic.rawValue.getter, a3, a1);
}

uint64_t sub_252A434F0@<X0>(char a1@<W1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a6@<X8>, uint64_t x0_0@<X0>)
{
  if (a1)
  {
    goto LABEL_7;
  }

  if (*a2 != -1)
  {
    v16 = x0_0;
    v14 = a4;
    v15 = a3;
    swift_once();
    a3 = v15;
    x0_0 = v16;
    a4 = v14;
  }

  if (*(*a3 + 16) && (v8 = a4, sub_252A44B78(x0_0), (v9 & 1) != 0))
  {
    v8();
    sub_252E362F4();
    v10 = 0;
  }

  else
  {
LABEL_7:
    v10 = 1;
  }

  v11 = sub_252E36324();
  v12 = *(*(v11 - 8) + 56);

  return v12(a6, v10, 1, v11);
}

uint64_t sub_252A435F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_252E37EC4();
  sub_252E37EE4();
  if (v2 != 1)
  {
    MEMORY[0x2530AE390](v1);
  }

  sub_252E37EE4();
  return sub_252E37F14();
}

uint64_t sub_252A43674()
{
  if (*(v0 + 8) == 1)
  {
    sub_252E37EE4();
  }

  else
  {
    v1 = *v0;
    sub_252E37EE4();
    MEMORY[0x2530AE390](v1);
  }

  return sub_252E37EE4();
}

uint64_t sub_252A436D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_252E37EC4();
  sub_252E37EE4();
  if (v3 != 1)
  {
    MEMORY[0x2530AE390](v2);
  }

  sub_252E37EE4();
  return sub_252E37F14();
}

uint64_t sub_252A43758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 9) ^ *(a2 + 9) ^ 1u;
}

uint64_t sub_252A437A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_252E37EC4();
  sub_252E37EE4();
  if (v2 != 1)
  {
    MEMORY[0x2530AE390](v1);
  }

  MEMORY[0x2530AE390](v3);
  return sub_252E37F14();
}

uint64_t sub_252A43824()
{
  v1 = v0[2];
  if (*(v0 + 8) == 1)
  {
    sub_252E37EE4();
  }

  else
  {
    v2 = *v0;
    sub_252E37EE4();
    MEMORY[0x2530AE390](v2);
  }

  return MEMORY[0x2530AE390](v1);
}

uint64_t sub_252A43888(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  sub_252E37EC4();
  sub_252E37EE4();
  if (v3 != 1)
  {
    MEMORY[0x2530AE390](v2);
  }

  MEMORY[0x2530AE390](v4);
  return sub_252E37F14();
}

BOOL sub_252A43908(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 16) == *(a2 + 16);
}

uint64_t sub_252A43950()
{
  v1 = *(v0 + 8);
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_252A439D0(uint64_t a1)
{
  v2 = *(v1 + 8);
  StateSemantic.rawValue.getter();
  sub_252E37044();

  return MEMORY[0x2530AE390](v2);
}

uint64_t sub_252A43A40(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  MEMORY[0x2530AE390](v2);
  return sub_252E37F14();
}

void *sub_252A43AC0()
{
  result = sub_252CC55B4(&unk_2864A50C0);
  off_27F541CA8 = result;
  return result;
}

void *sub_252A43AE8()
{
  result = sub_252CC56C8(&unk_2864A5250);
  off_27F541CB0 = result;
  return result;
}

uint64_t sub_252A43B10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D00, &qword_252E42288);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E42250;
  *(v0 + 32) = 2;
  *(v0 + 40) = 66;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(v0 + 48) = v5;
  *(v0 + 56) = 0;
  *(v0 + 64) = 66;
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 &off_279711370 + 6];

  v9 = v8;
  [v9 &selRef_format + 7];
  [v9 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

  *(v0 + 72) = v9;
  *(v0 + 80) = 1;
  *(v0 + 88) = 5;
  *(v0 + 96) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0xD000000000000014, 0x8000000252E73800, 0);
  *(v0 + 104) = 19;
  *(v0 + 112) = 12;
  *(v0 + 120) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x5349574B434F4C43, 0xE900000000000045, 0);
  *(v0 + 128) = 20;
  *(v0 + 136) = 12;
  *(v0 + 144) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0xD000000000000010, 0x8000000252E66F40, 0);
  *(v0 + 152) = 33;
  *(v0 + 160) = 14;
  *(v0 + 168) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1413563720, 0xE400000000000000, 0);
  *(v0 + 176) = 34;
  *(v0 + 184) = 14;
  *(v0 + 192) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1280266051, 0xE400000000000000, 0);
  *(v0 + 200) = 35;
  *(v0 + 208) = 14;
  *(v0 + 216) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 224) = 33;
  *(v0 + 232) = 15;
  *(v0 + 240) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x5455415F54414548, 0xE90000000000004FLL, 0);
  *(v0 + 248) = 34;
  *(v0 + 256) = 15;
  *(v0 + 264) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x5455415F4C4F4F43, 0xE90000000000004FLL, 0);
  *(v0 + 272) = 35;
  *(v0 + 280) = 15;
  *(v0 + 288) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 296) = 36;
  *(v0 + 304) = 47;
  *(v0 + 312) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4C41554E414DLL, 0xE600000000000000, 0);
  *(v0 + 320) = 36;
  *(v0 + 328) = 21;
  *(v0 + 336) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4C41554E414DLL, 0xE600000000000000, 0);
  *(v0 + 344) = 36;
  *(v0 + 352) = 18;
  *(v0 + 360) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4C41554E414DLL, 0xE600000000000000, 0);
  *(v0 + 368) = 36;
  *(v0 + 376) = 15;
  *(v0 + 384) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4E414D5F54414548, 0xEB000000004C4155, 0);
  *(v0 + 392) = 36;
  *(v0 + 400) = 20;
  *(v0 + 408) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4944494D55484544, 0xEF4F5455415F5946, 0);
  *(v0 + 416) = 35;
  *(v0 + 424) = 47;
  *(v0 + 432) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 440) = 35;
  *(v0 + 448) = 21;
  *(v0 + 456) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 464) = 1;
  *(v0 + 472) = 21;
  *(v0 + 480) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4556495443414E49, 0xE800000000000000, 0);
  *(v0 + 488) = 53;
  *(v0 + 496) = 21;
  *(v0 + 504) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4445584946, 0xE500000000000000, 0);
  *(v0 + 512) = 54;
  *(v0 + 520) = 21;
  *(v0 + 528) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4445584946, 0xE500000000000000, 0);
  *(v0 + 536) = 55;
  *(v0 + 544) = 21;
  *(v0 + 552) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4445584946, 0xE500000000000000, 0);
  *(v0 + 560) = 35;
  *(v0 + 568) = 18;
  *(v0 + 576) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 584) = 35;
  *(v0 + 592) = 20;
  *(v0 + 600) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 608) = 46;
  *(v0 + 616) = 13;
  *(v0 + 624) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(v0 + 632) = 49;
  *(v0 + 640) = 13;
  *(v0 + 648) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(v0 + 656) = 47;
  *(v0 + 664) = 13;
  *(v0 + 672) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x52415F544847494ELL, 0xE90000000000004DLL, 0);
  *(v0 + 680) = 48;
  *(v0 + 688) = 13;
  *(v0 + 696) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415453, 0xE800000000000000, 0);
  *(v0 + 704) = 50;
  *(v0 + 712) = 13;
  *(v0 + 720) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D5241534944, 0xE600000000000000, 0);
  *(v0 + 728) = 0;
  *(v0 + 736) = 16;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setBoolValue_];
  [v13 setType_];

  *(v0 + 744) = v13;
  *(v0 + 752) = 1;
  *(v0 + 760) = 16;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  *(v0 + 768) = v17;
  *(v0 + 776) = 0;
  *(v0 + 784) = 8;
  v18 = objc_allocWithZone(v1);
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setBoolValue_];
  [v21 setType_];

  *(v0 + 792) = v21;
  *(v0 + 800) = 1;
  *(v0 + 808) = 8;
  v22 = objc_allocWithZone(v1);
  v23 = sub_252E36F04();
  v24 = [v22 initWithIdentifier:0 displayString:v23];

  v25 = v24;
  [v25 setBoolValue_];
  [v25 setType_];

  *(v0 + 816) = v25;
  *(v0 + 824) = 0;
  *(v0 + 832) = 22;
  v26 = objc_allocWithZone(v1);
  v27 = sub_252E36F04();
  v28 = [v26 initWithIdentifier:0 displayString:v27];

  v29 = v28;
  [v29 setBoolValue_];
  [v29 setType_];

  *(v0 + 840) = v29;
  *(v0 + 848) = 1;
  *(v0 + 856) = 22;
  v30 = objc_allocWithZone(v1);
  v31 = sub_252E36F04();
  v32 = [v30 initWithIdentifier:0 displayString:v31];

  v33 = v32;
  [v33 setBoolValue_];
  [v33 setType_];

  *(v0 + 864) = v33;
  *(v0 + 872) = 9;
  *(v0 + 880) = 9;
  v34 = objc_allocWithZone(v1);
  v35 = sub_252E36F04();
  v36 = [v34 initWithIdentifier:0 displayString:v35];

  v37 = v36;
  [v37 setIntegerValue_];
  [v37 setUnit_];
  [v37 setType_];

  *(v0 + 888) = v37;
  *(v0 + 896) = 10;
  *(v0 + 904) = 9;
  v38 = objc_allocWithZone(v1);
  v39 = sub_252E36F04();
  v40 = [v38 initWithIdentifier:0 displayString:v39];

  v41 = v40;
  [v41 setIntegerValue_];
  [v41 setUnit_];
  [v41 setType_];

  *(v0 + 912) = v41;
  v42 = sub_252CC5F90(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D08, &qword_252E42290);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F541CB8 = v42;
  return result;
}

uint64_t sub_252A444D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE8, &qword_252E419F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  *(inited + 32) = 66;
  v1 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  v4 = v3;
  [v4 setBoolValue_];
  [v4 setType_];

  *(inited + 40) = v4;
  v5 = sub_252CC6090(inited);
  swift_setDeallocating();
  result = sub_25293847C(inited + 32, &qword_27F541AF0, "FH\a");
  off_27F541CC0 = v5;
  return result;
}

uint64_t sub_252A445DC()
{
  v0 = sub_252CC49BC(qword_2864A1810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D18, &unk_252E42298);
  result = swift_arrayDestroy();
  off_27F541CC8 = v0;
  return result;
}

void *sub_252A44638()
{
  result = sub_252CC491C(&unk_2864A0FA8);
  off_27F541CD0 = result;
  return result;
}

void *sub_252A44660()
{
  result = sub_252CC4944(&unk_2864A1248);
  off_27F541CD8 = result;
  return result;
}

void *sub_252A44688()
{
  result = sub_252CC69E0(&unk_2864A3730);
  off_27F541CE0 = result;
  return result;
}

uint64_t sub_252A446B0()
{
  v0 = sub_252CC3C4C(qword_2864A0B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D20, &qword_252E422A8);
  result = swift_arrayDestroy();
  off_27F541CE8 = v0;
  return result;
}

void *sub_252A4470C()
{
  result = sub_252CC5F68(&unk_2864A43E0);
  off_27F541CF0 = result;
  return result;
}

uint64_t sub_252A44734()
{
  v0 = sub_252CC53B0(&unk_2864A4768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D38, &qword_252E422B0);
  result = swift_arrayDestroy();
  off_27F541CF8 = v0;
  return result;
}

uint64_t sub_252A44790@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, __int16 a3@<W1>)
{
  if (qword_27F53F278 != -1)
  {
    v12 = a2;
    v13 = a3;
    swift_once();
    a3 = v13;
    a2 = v12;
  }

  if (*(off_27F541CA8 + 2) && (sub_252A44F0C(a2, a3 & 0x101), (v4 & 1) != 0))
  {
    StateSemantic.rawValue.getter();
    sub_252E37024();

    v5 = sub_252E36324();
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a1;
    v9 = 0;
  }

  else
  {
    v10 = sub_252E36324();
    v6 = *(*(v10 - 8) + 56);
    v7 = v10;
    v8 = a1;
    v9 = 1;
  }

  return v6(v8, v9, 1, v7);
}

uint64_t sub_252A448D0@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, char a3@<W1>, uint64_t a4@<X2>)
{
  if (qword_27F53F280 != -1)
  {
    v13 = a2;
    v14 = a3;
    v15 = a4;
    swift_once();
    a3 = v14;
    a2 = v13;
    a4 = v15;
  }

  if (*(off_27F541CB0 + 2) && (sub_252A44FAC(a2, a3 & 1, a4), (v5 & 1) != 0))
  {
    StateSemantic.rawValue.getter();
    sub_252E37024();

    v6 = sub_252E36324();
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a1;
    v10 = 0;
  }

  else
  {
    v11 = sub_252E36324();
    v7 = *(*(v11 - 8) + 56);
    v8 = v11;
    v9 = a1;
    v10 = 1;
  }

  return v7(v9, v10, 1, v8);
}

unint64_t sub_252A44A10(uint64_t a1, uint64_t a2)
{
  sub_252E37EC4();
  sub_252E37044();
  v4 = sub_252E37F14();

  return sub_252A4598C(a1, a2, v4);
}

unint64_t sub_252A44AB4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v4);
  v2 = sub_252E37F14();

  return sub_252A45A44(__src, v2);
}

unint64_t sub_252A44B34(uint64_t a1)
{
  v2 = sub_252E37EB4();

  return sub_252A45B48(a1, v2);
}

unint64_t sub_252A44B78(uint64_t a1)
{
  sub_252E37EC4();
  MEMORY[0x2530AE390](a1);
  v2 = sub_252E37F14();
  return sub_252A45B48(a1, v2);
}

unint64_t sub_252A44BF0(uint64_t a1, uint64_t a2)
{
  sub_252E37EC4();
  sub_252E37EE4();
  if (a2)
  {
    sub_252E37044();
  }

  v4 = sub_252E37F14();

  return sub_252A45BB4(a1, a2, v4);
}

unint64_t sub_252A44CB4(void *a1, void (*a2)(void))
{
  sub_252E37EC4();
  sub_252E37EE4();
  if (a1)
  {
    v4 = a1;
    sub_252E376A4();
  }

  v5 = sub_252E37F14();
  return sub_252A45C80(a1, v5, a2);
}

unint64_t sub_252A44D48(char a1)
{
  sub_252E37EC4();
  sub_252E37044();

  v2 = sub_252E37F14();

  return sub_252A45D74(a1 & 1, v2);
}

unint64_t sub_252A44DF4(unint64_t a1)
{
  sub_252E37EC4();
  sub_252ABD138(v4, a1);
  v2 = sub_252E37F14();

  return sub_252A45EC4(a1, v2);
}

unint64_t sub_252A44E60(uint64_t a1)
{
  type metadata accessor for DeviceEntity(0);
  sub_252A485D0(&qword_27F541D40, type metadata accessor for DeviceEntity, MEMORY[0x277CEAFB0]);
  v2 = sub_252E36E84();
  return sub_252A45F7C(a1, v2);
}

unint64_t sub_252A44F0C(uint64_t a1, __int16 a2)
{
  sub_252E37EC4();
  sub_252E37EE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2530AE390](a1);
  }

  sub_252E37EE4();
  v4 = sub_252E37F14();

  return sub_252A46078(a1, a2 & 0x101, v4);
}

unint64_t sub_252A44FAC(uint64_t a1, char a2, uint64_t a3)
{
  sub_252E37EC4();
  sub_252E37EE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2530AE390](a1);
  }

  MEMORY[0x2530AE390](a3);
  v6 = sub_252E37F14();

  return sub_252A4611C(a1, a2 & 1, a3, v6);
}

unint64_t sub_252A45058(uint64_t a1)
{
  v2 = sub_252E37944();

  return sub_252A461B8(a1, v2);
}

unint64_t sub_252A450F4(uint64_t a1, uint64_t (*a2)(void *), uint64_t (*a3)(void))
{
  v6 = sub_252E37EC4();
  a2(v6);
  sub_252E37044();

  v7 = sub_252E37F14();
  return sub_252A46280(a1, v7, a3);
}

unint64_t sub_252A451C0(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  sub_252E37EC4();
  a2(a1);
  sub_252E37044();

  v6 = sub_252E37F14();
  return sub_252A472D8(a1, v6, a3);
}

unint64_t sub_252A45288(uint64_t a1)
{
  v1 = a1;
  sub_252E37EC4();
  sub_252E37044();

  v2 = sub_252E37F14();

  return sub_252A463B0(v1, v2);
}

unint64_t sub_252A45390(uint64_t a1, uint64_t a2)
{
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  MEMORY[0x2530AE390](a2);
  v4 = sub_252E37F14();

  return sub_252A46584(a1, a2, v4);
}

unint64_t sub_252A45430(unint64_t a1)
{
  sub_252E37EC4();
  sub_252E37EE4();
  if ((a1 & 0x100000000) == 0)
  {
    sub_252E37EF4();
  }

  v2 = sub_252E37F14();

  return sub_252A466BC(a1 | ((HIDWORD(a1) & 1) << 32), v2);
}

unint64_t sub_252A454C0(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E32E84();
  sub_252A485D0(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

  sub_252E37044();

  v2 = sub_252E37F14();

  return sub_252A46740(a1, v2);
}

unint64_t sub_252A455CC(uint64_t a1)
{
  v1 = a1;
  sub_252E37EC4();
  HomeError.rawValue.getter();
  sub_252E37044();

  v2 = sub_252E37F14();

  return sub_252A4689C(v1, v2);
}

unint64_t sub_252A45658(uint64_t a1)
{
  v1 = a1;
  sub_252E37EC4();
  sub_252AB3C18(v4, v1);
  v2 = sub_252E37F14();

  return sub_252A46FA4(v1, v2);
}

unint64_t sub_252A456F0(uint64_t a1)
{
  v1 = a1;
  sub_252E37EC4();
  sub_252E37EE4();
  v2 = sub_252E37F14();

  return sub_252A473F0(v1, v2);
}

unint64_t sub_252A4575C(uint64_t a1, char a2)
{
  sub_252E37EC4();
  sub_252E37EE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2530AE390](a1);
  }

  v4 = sub_252E37F14();

  return sub_252A47460(a1, a2 & 1, v4);
}

unint64_t sub_252A457EC(uint64_t a1)
{
  v1 = a1;
  sub_252E37EC4();
  sub_252E37EF4();
  v2 = sub_252E37F14();
  return sub_252A474E4(v1, v2);
}

unint64_t sub_252A45854(uint64_t a1, void *a2)
{
  sub_252E37EC4();
  MEMORY[0x2530AE390](a1);
  sub_252E37EE4();
  if (a2)
  {
    v4 = a2;
    sub_252E376A4();
  }

  v5 = sub_252E37F14();

  return sub_252A47550(a1, a2, v5);
}

unint64_t sub_252A458F8(uint64_t a1)
{
  sub_252E35CB4();
  sub_252A485D0(&qword_27F541D28, MEMORY[0x277D563F8], MEMORY[0x277D56400]);
  v2 = sub_252E36E84();
  return sub_252A47650(a1, v2);
}

unint64_t sub_252A4598C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_252E37DB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_252A45A44(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x1F8uLL);
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 504 * v5;
      memcpy(v11, v7, sizeof(v11));
      memcpy(__srca, v7, sizeof(__srca));
      sub_2529353AC(v11, &v9);
      LOBYTE(v7) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(__srca, __dst);
      memcpy(v12, __srca, sizeof(v12));
      sub_252935408(v12);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_252A45B48(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A45BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_252E37DB4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_252A45C80(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a2 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = v3;
    v10 = ~v5;
    do
    {
      v11 = *(*(v8 + 48) + 8 * v6);
      if (v11)
      {
        if (a1)
        {
          a3(0);
          v12 = v11;
          v13 = a1;
          v14 = sub_252E37694();

          if (v14)
          {
            return v6;
          }
        }
      }

      else if (!a1)
      {
        return v6;
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_252A45D74(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7954797469746E65;
    }

    else
    {
      v6 = 0x6F4D746567726174;
    }

    if (a1)
    {
      v7 = 0xEA00000000006570;
    }

    else
    {
      v7 = 0xEA00000000006564;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7954797469746E65 : 0x6F4D746567726174;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000006570 : 0xEA00000000006564;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_252E37DB4();

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

unint64_t sub_252A45EC4(unint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {

      v8 = sub_252AE9CA4(v7, a1);

      if (v8)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_252A45F7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for DeviceEntity(0);
    sub_252A485D0(&qword_27F541D48, type metadata accessor for DeviceEntity, MEMORY[0x277CEAFB8]);
    do
    {
      if (sub_252E36EF4())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_252A46078(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *(v8 + 9);
      if (*(v8 + 8))
      {
        if (((a2 ^ 1 | v9 ^ ((a2 & 0x100) >> 8)) & 1) == 0)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1 && ((v9 ^ ((a2 & 0x100) >> 8)) & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A4611C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *(v9 + 16);
      if (*(v9 + 8))
      {
        if ((a2 & 1) != 0 && v10 == a3)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v9 == a1 && v10 == a3)
      {
        return result;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A461B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_252A47ED4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2530ADE10](v9, a1);
      sub_252A47F30(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_252A46280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a2 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    while (1)
    {
      v9 = a3();
      v11 = v10;
      if (v9 == a3() && v11 == v12)
      {
        break;
      }

      v14 = sub_252E37DB4();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v8;
        if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

unint64_t sub_252A463B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0xD000000000000011 : 0x4773656572676564;
      v7 = v5 == 2 ? 0x8000000252E67E40 : 0xEE00636972656E65;
      v8 = *(*(v22 + 48) + v4) ? 0x4373656572676564 : 0x746E6563726570;
      v9 = *(*(v22 + 48) + v4) ? 0xEE00737569736C65 : 0xE700000000000000;
      v10 = *(*(v22 + 48) + v4) <= 1u ? v8 : v6;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v7;
      v12 = v21 == 2 ? 0xD000000000000011 : 0x4773656572676564;
      v13 = v21 == 2 ? 0x8000000252E67E40 : 0xEE00636972656E65;
      v14 = v21 ? 0x4373656572676564 : 0x746E6563726570;
      v15 = v21 ? 0xEE00737569736C65 : 0xE700000000000000;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_252E37DB4();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
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

unint64_t sub_252A46584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    while (1)
    {
      v8 = *(*(v3 + 48) + 16 * v5 + 8);
      v9 = StateSemantic.rawValue.getter();
      v11 = v10;
      if (v9 == StateSemantic.rawValue.getter() && v11 == v12)
      {
        break;
      }

      v14 = sub_252E37DB4();

      if (v14)
      {
        goto LABEL_4;
      }

LABEL_5:
      v5 = (v5 + 1) & v7;
      if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

LABEL_4:
    if (v8 == a2)
    {
      return v5;
    }

    goto LABEL_5;
  }

  return v5;
}

unint64_t sub_252A466BC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A46740(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    v8 = (a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    do
    {
      v9 = *(*(v2 + 48) + 8 * v4);

      if ((sub_252E32E54() & 1) != 0 && *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(a1 + v7))
      {
        if (*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v8 && *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v8[1])
        {

          return v4;
        }

        v11 = sub_252E37DB4();

        if (v11)
        {
          return v4;
        }
      }

      else
      {
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_252A4689C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEC000000646E756FLL;
      v8 = 0x46746F4E656D6F68;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x46746F4E6D6F6F72;
          v7 = 0xEC000000646E756FLL;
          break;
        case 2:
          v8 = 0xD000000000000011;
          v7 = 0x8000000252E68140;
          break;
        case 3:
          v8 = 0xD000000000000014;
          v7 = 0x8000000252E68160;
          break;
        case 4:
          v8 = 0xD000000000000015;
          v7 = 0x8000000252E68180;
          break;
        case 5:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000252E681A0;
          break;
        case 6:
          v8 = 0xD000000000000015;
          v7 = 0x8000000252E681C0;
          break;
        case 7:
          v8 = 0xD000000000000016;
          v7 = 0x8000000252E681E0;
          break;
        case 8:
          v8 = 0xD000000000000015;
          v7 = 0x8000000252E68200;
          break;
        case 9:
          v8 = 0xD000000000000016;
          v7 = 0x8000000252E68220;
          break;
        case 0xA:
          v8 = 0xD000000000000013;
          v7 = 0x8000000252E68240;
          break;
        case 0xB:
          v8 = 0xD000000000000011;
          v7 = 0x8000000252E68260;
          break;
        case 0xC:
          v8 = 0xD000000000000018;
          v7 = 0x8000000252E68280;
          break;
        case 0xD:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000252E682A0;
          break;
        case 0xE:
          v8 = 0xD000000000000020;
          v7 = 0x8000000252E682C0;
          break;
        case 0xF:
          v8 = 0xD000000000000014;
          v7 = 0x8000000252E682F0;
          break;
        case 0x10:
          v7 = 0xEC00000064656B63;
          v8 = 0x6F4C656369766564;
          break;
        case 0x11:
          v8 = 0x6544737365636361;
          v7 = 0xEC0000006465696ELL;
          break;
        case 0x12:
          v8 = 0xD000000000000010;
          v7 = 0x8000000252E68320;
          break;
        case 0x13:
          v8 = 0xD000000000000012;
          v7 = 0x8000000252E68340;
          break;
        case 0x14:
          v8 = 0xD000000000000016;
          v7 = 0x8000000252E68360;
          break;
        case 0x15:
          v8 = 0xD000000000000013;
          v7 = 0x8000000252E68380;
          break;
        case 0x16:
          v8 = 0x65746F6D65526F6ELL;
          v7 = 0xEE00737365636341;
          break;
        default:
          break;
      }

      v9 = 0x46746F4E656D6F68;
      v10 = 0xEC000000646E756FLL;
      switch(a1)
      {
        case 1:
          v10 = 0xEC000000646E756FLL;
          if (v8 == 0x46746F4E6D6F6F72)
          {
            goto LABEL_69;
          }

          goto LABEL_70;
        case 2:
          v10 = 0x8000000252E68140;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 3:
          v10 = 0x8000000252E68160;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 4:
          v10 = 0x8000000252E68180;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 5:
          v10 = 0x8000000252E681A0;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 6:
          v10 = 0x8000000252E681C0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 7:
          v10 = 0x8000000252E681E0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 8:
          v10 = 0x8000000252E68200;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 9:
          v10 = 0x8000000252E68220;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 10:
          v10 = 0x8000000252E68240;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 11:
          v10 = 0x8000000252E68260;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 12:
          v10 = 0x8000000252E68280;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 13:
          v10 = 0x8000000252E682A0;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 14:
          v10 = 0x8000000252E682C0;
          if (v8 != 0xD000000000000020)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 15:
          v10 = 0x8000000252E682F0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 16:
          v10 = 0xEC00000064656B63;
          if (v8 != 0x6F4C656369766564)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 17:
          v10 = 0xEC0000006465696ELL;
          if (v8 != 0x6544737365636361)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 18:
          v10 = 0x8000000252E68320;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 19:
          v10 = 0x8000000252E68340;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 20:
          v10 = 0x8000000252E68360;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 21:
          v10 = 0x8000000252E68380;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_70;
          }

          goto LABEL_69;
        case 22:
          v9 = 0x65746F6D65526F6ELL;
          v10 = 0xEE00737365636341;
          goto LABEL_68;
        default:
LABEL_68:
          if (v8 != v9)
          {
            goto LABEL_70;
          }

LABEL_69:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_70:
          v11 = sub_252E37DB4();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_252A46FA4(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v22 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v24 + 48) + v4);
      if (v6 > 4)
      {
        if (*(*(v24 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v7 = 0x4274737544637672;
            v8 = 0xEE006C6C75466E69;
          }

          else
          {
            v7 = 0xD000000000000013;
            v8 = 0x8000000252E68420;
          }
        }

        else if (v6 == 7)
        {
          v7 = 0xD000000000000011;
          v8 = 0x8000000252E68440;
        }

        else if (v6 == 8)
        {
          v7 = 0xD000000000000013;
          v8 = 0x8000000252E68460;
        }

        else
        {
          v7 = 0xD000000000000018;
          v8 = 0x8000000252E68480;
        }
      }

      else if (*(*(v24 + 48) + v4) <= 1u)
      {
        if (*(*(v24 + 48) + v4))
        {
          v7 = 0xD00000000000001DLL;
        }

        else
        {
          v7 = 0xD000000000000016;
        }

        if (*(*(v24 + 48) + v4))
        {
          v8 = 0x8000000252E683B0;
        }

        else
        {
          v8 = 0x8000000252E67470;
        }
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x6E776F6E6B6E75;
      }

      else if (v6 == 3)
      {
        v7 = 0xD00000000000001BLL;
        v8 = 0x8000000252E683D0;
      }

      else
      {
        v7 = 0xD000000000000011;
        v8 = 0x8000000252E683F0;
      }

      v9 = 0xD000000000000013;
      v10 = 0xD000000000000018;
      if (v5 == 8)
      {
        v10 = 0xD000000000000013;
      }

      v11 = 0x8000000252E68480;
      if (v5 == 8)
      {
        v11 = 0x8000000252E68460;
      }

      if (v5 == 7)
      {
        v10 = 0xD000000000000011;
        v11 = 0x8000000252E68440;
      }

      if (v5 == 5)
      {
        v9 = 0x4274737544637672;
      }

      v12 = 0xEE006C6C75466E69;
      if (v5 != 5)
      {
        v12 = 0x8000000252E68420;
      }

      if (v5 <= 6)
      {
        v13 = v12;
      }

      else
      {
        v9 = v10;
        v13 = v11;
      }

      v14 = 0xD00000000000001BLL;
      if (v5 == 3)
      {
        v15 = 0x8000000252E683D0;
      }

      else
      {
        v14 = 0xD000000000000011;
        v15 = 0x8000000252E683F0;
      }

      if (v5 == 2)
      {
        v14 = 0x6E776F6E6B6E75;
        v15 = 0xE700000000000000;
      }

      v16 = 0xD000000000000016;
      if (v5)
      {
        v16 = 0xD00000000000001DLL;
        v17 = 0x8000000252E683B0;
      }

      else
      {
        v17 = 0x8000000252E67470;
      }

      if (v5 <= 1)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = v5 <= 4 ? v14 : v9;
      v19 = v5 <= 4 ? v15 : v13;
      if (v7 == v18 && v8 == v19)
      {
        break;
      }

      v20 = sub_252E37DB4();

      if ((v20 & 1) == 0)
      {
        v4 = (v4 + 1) & v22;
        if ((*(v23 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252A472D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    while (1)
    {
      v9 = a3(*(*(v3 + 48) + v5));
      v11 = v10;
      if (v9 == a3(a1) && v11 == v12)
      {
        break;
      }

      v14 = sub_252E37DB4();

      if ((v14 & 1) == 0)
      {
        v5 = (v5 + 1) & v8;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_252A473F0(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A47460(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8))
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A474E4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A47550(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = ~v5;
    do
    {
      v11 = (*(v7 + 48) + 16 * v6);
      if (*v11 == a1)
      {
        v12 = v11[1];
        if (v12)
        {
          if (a2)
          {
            type metadata accessor for HomeAttributeValue();
            v13 = v12;
            v14 = a2;
            v15 = sub_252E37694();

            if (v15)
            {
              return v6;
            }
          }
        }

        else if (!a2)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_252A47650(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_252E35CB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_252A485D0(&qword_27F541D30, MEMORY[0x277D563F8], MEMORY[0x277D56408]);
      v15 = sub_252E36EF4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_252A47810(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  sub_252956C1C(a1, &v25 - v3);
  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    return 0;
  }

  else
  {
    v7 = sub_252E36304();
    v9 = v8;
    (*(v6 + 8))(v4, v5);
    if (qword_27F53F2B8 != -1)
    {
LABEL_25:
      swift_once();
    }

    v10 = 0;
    v11 = off_27F541CE8;
    v12 = 1 << *(off_27F541CE8 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = off_27F541CE8 + 64;
    v15 = v13 & *(off_27F541CE8 + 8);
    v16 = (v12 + 63) >> 6;
    while (1)
    {
      if (!v15)
      {
        while (1)
        {
          v18 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v18 >= v16)
          {

            return 0;
          }

          v17 = *&v14[8 * v18];
          ++v10;
          if (v17)
          {
            v10 = v18;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

      v17 = v15;
LABEL_13:
      v15 = (v17 - 1) & v17;
      if (v11[2])
      {
        v19 = *(v11[6] + ((v10 << 9) | (8 * __clz(__rbit64(v17)))));
        v20 = sub_252A44B78(v19);
        if (v21)
        {
          v22 = (v11[7] + 16 * v20);
          v23 = *v22 == v7 && v22[1] == v9;
          if (v23 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }
        }
      }
    }
  }

  return v19;
}

BOOL sub_252A47A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = StateSemantic.rawValue.getter();
  v6 = v5;
  if (v4 == StateSemantic.rawValue.getter() && v6 == v7)
  {

    return v2 == v3;
  }

  v9 = sub_252E37DB4();

  result = 0;
  if (v9)
  {
    return v2 == v3;
  }

  return result;
}

char *sub_252A47B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    v25 = a1 + 32;
    v26 = *(a1 + 16);
    while (1)
    {
      v5 = *(v3 + v2);
      if (v5 == 30)
      {
        v6 = 29;
      }

      else
      {
        if (v5 != 34)
        {
          if (qword_27F53F2A0 != -1)
          {
            swift_once();
          }

          v9 = off_27F541CD0;
          v10 = off_27F541CD0 + 64;
          v11 = 1 << *(off_27F541CD0 + 32);
          if (v11 < 64)
          {
            v12 = ~(-1 << v11);
          }

          else
          {
            v12 = -1;
          }

          v13 = v12 & *(off_27F541CD0 + 8);
          v14 = (v11 + 63) >> 6;
          result = swift_bridgeObjectRetain_n();
          v16 = 0;
          while (v13)
          {
LABEL_26:
            v18 = __clz(__rbit64(v13));
            v13 &= v13 - 1;
            v6 = *(v9[6] + ((v16 << 9) | (8 * v18)));
            if (v9[2] && (result = sub_252A44B78(v6), (v19 & 1) != 0) && result[v9[7]] != 52)
            {
              if (v5 != 52)
              {
                v22 = AccessoryTypeSemantic.rawValue.getter();
                v24 = v20;
                if (v22 == AccessoryTypeSemantic.rawValue.getter() && v24 == v21)
                {

LABEL_35:

                  v3 = v25;
                  v1 = v26;
                  goto LABEL_9;
                }

                v23 = sub_252E37DB4();

                if (v23)
                {
                  goto LABEL_35;
                }
              }
            }

            else if (v5 == 52)
            {
              goto LABEL_35;
            }
          }

          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v14)
            {

              v3 = v25;
              v1 = v26;
              goto LABEL_4;
            }

            v13 = *&v10[8 * v17];
            ++v16;
            if (v13)
            {
              v16 = v17;
              goto LABEL_26;
            }
          }

          __break(1u);
          return result;
        }

        v6 = 30;
      }

LABEL_9:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F7B8C(0, *(v4 + 2) + 1, 1, v4);
      }

      v8 = *(v4 + 2);
      v7 = *(v4 + 3);
      if (v8 >= v7 >> 1)
      {
        v4 = sub_2529F7B8C((v7 > 1), v8 + 1, 1, v4);
      }

      *(v4 + 2) = v8 + 1;
      *&v4[8 * v8 + 32] = v6;
LABEL_4:
      if (++v2 == v1)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void *sub_252A47DD4(unsigned __int8 *a1, uint64_t a2, char a3)
{
  v3 = *a1;
  if (v3 == 77 || (a3 & 1) != 0)
  {
    return 0;
  }

  if (qword_27F53F288 != -1)
  {
    v11 = v3;
    v10 = a2;
    swift_once();
    v3 = v11;
    a2 = v10;
  }

  v5 = off_27F541CB8;
  if (!*(off_27F541CB8 + 2))
  {
    return 0;
  }

  v6 = sub_252A45390(v3, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(v5[7] + 8 * v6);
  v9 = v8;
  return v8;
}

unint64_t sub_252A47E88()
{
  result = qword_27F541D10;
  if (!qword_27F541D10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F541D10);
  }

  return result;
}

uint64_t sub_252A47F84(unsigned __int8 *a1)
{
  v2 = *a1;
  switch(v2)
  {
    case 52:
      break;
    case 30:
      return 29;
    case 34:
      return 30;
  }

  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  v3 = off_27F541CD0;
  v4 = off_27F541CD0 + 64;
  v5 = 1 << *(off_27F541CD0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(off_27F541CD0 + 8);
  v8 = (v5 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v9 = 0;
  while (v7)
  {
LABEL_16:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v1 = *(v3[6] + ((v9 << 9) | (8 * v11)));
    if (v3[2] && (v12 = sub_252A44B78(v1), (v13 & 1) != 0) && *(v3[7] + v12) != 52)
    {
      if (v2 != 52)
      {
        v14 = AccessoryTypeSemantic.rawValue.getter();
        v16 = v15;
        if (v14 == AccessoryTypeSemantic.rawValue.getter() && v16 == v17)
        {
          goto LABEL_27;
        }

        v18 = sub_252E37DB4();

        if (v18)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v2 == 52)
    {
      goto LABEL_28;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return 0;
    }

    v7 = *&v4[8 * v10];
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_27:

LABEL_28:

  return v1;
}

uint64_t sub_252A481A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30[-v3];
  sub_252956C1C(a1, &v30[-v3]);
  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    return 0;
  }

  v7 = sub_252E36304();
  v9 = v8;
  (*(v6 + 8))(v4, v5);
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  AttributeSemantic.init(rawValue:)(v10);
  v11 = v31;
  if (v31 == 66)
  {
    return 0;
  }

  if (qword_27F53F2A8 != -1)
  {
LABEL_26:
    swift_once();
  }

  v12 = off_27F541CD8;
  v13 = off_27F541CD8 + 64;
  v14 = 1 << *(off_27F541CD8 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(off_27F541CD8 + 8);
  v17 = (v14 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  while (1)
  {
    while (1)
    {
      if (!v16)
      {
        while (1)
        {
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v20 >= v17)
          {

            return 0;
          }

          v19 = *&v13[8 * v20];
          ++v18;
          if (v19)
          {
            v18 = v20;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

      v19 = v16;
LABEL_14:
      v16 = (v19 - 1) & v19;
      if (v12[2])
      {
        v21 = *(v12[6] + ((v18 << 9) | (8 * __clz(__rbit64(v19)))));
        v22 = sub_252A44B78(v21);
        if ((v23 & 1) != 0 && *(v12[7] + v22) != 66)
        {
          break;
        }
      }
    }

    v30[14] = *(v12[7] + v22);
    v30[13] = v11;
    v24 = AttributeSemantic.rawValue.getter();
    v26 = v25;
    if (v24 == AttributeSemantic.rawValue.getter() && v26 == v27)
    {
      break;
    }

    v28 = sub_252E37DB4();

    if (v28)
    {
      goto LABEL_24;
    }
  }

LABEL_24:

  return v21;
}

uint64_t sub_252A48498(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return 1836019570;
      }

      else
      {
        return 0x70756F7267;
      }
    }

    else if (a1 == 1)
    {
      return 1701670760;
    }

    else
    {
      if (a1 != 2)
      {
        return 0x6E776F6E6B6E75;
      }

      return 1701736314;
    }
  }

  else if (a1 <= 6)
  {
    if (a1 == 5)
    {
      return 0x656E656373;
    }

    else
    {
      return 0x72656767697274;
    }
  }

  else
  {
    switch(a1)
    {
      case 12:
        return 0x614D746567726174;
      case 11:
        return 0x7241746567726174;
      case 7:
        return 0x656369766564;
      default:
        return 0x6E776F6E6B6E75;
    }
  }
}

uint64_t sub_252A485D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IntegerAttributeValuePair(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IntegerAttributeValuePair(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for BooleanAttributeValuePair(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BooleanAttributeValuePair(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
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

uint64_t getEnumTagSinglePayload for SemanticStateAttributePair(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB4 && a1[16])
  {
    return (*a1 + 180);
  }

  v3 = *a1;
  v4 = v3 >= 0x4D;
  v5 = v3 - 77;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SemanticStateAttributePair(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB3)
  {
    *result = a2 - 180;
    *(result + 8) = 0;
    if (a3 >= 0xB4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 76;
    }
  }

  return result;
}

unint64_t sub_252A487E8()
{
  result = qword_27F541D50;
  if (!qword_27F541D50)
  {
    result = swift_getWitnessTable(aH, &type metadata for SemanticStateAttributePair, v0, v1);
    atomic_store(result, &qword_27F541D50);
  }

  return result;
}

unint64_t sub_252A48840()
{
  result = qword_27F541D58;
  if (!qword_27F541D58)
  {
    result = swift_getWitnessTable(byte_252E423D4, &type metadata for BooleanAttributeValuePair, v0, v1);
    atomic_store(result, &qword_27F541D58);
  }

  return result;
}

unint64_t sub_252A48898()
{
  result = qword_27F541D60;
  if (!qword_27F541D60)
  {
    result = swift_getWitnessTable(byte_252E4243C, &type metadata for IntegerAttributeValuePair, v0, v1);
    atomic_store(result, &qword_27F541D60);
  }

  return result;
}

uint64_t sub_252A4893C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ExcludeCamerasWhenSetPowerForAllDevices();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252A48970(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_10:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 != 27 || (sub_252C4DD58(0x18) & 1) != 0 || (sub_252C4B680(0x18) & 1) != 0)
  {
    return 0;
  }

  result = [a1 filters];
  if (result)
  {
    v9 = result;
    type metadata accessor for HomeFilter();
    v10 = sub_252E37264();

    v11 = type metadata accessor for HomeStore(0);
    v12 = static HomeStore.shared.getter(v11);
    v13 = HomeStore.accessories(matching:supporting:)(v10, 0);
    v15 = v14;

    if (v15)
    {
      sub_252929F10(v13, 1);
      return 0;
    }

    if (qword_27F53F500 != -1)
    {
LABEL_56:
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544DA8);
    sub_252E379F4();

    v17 = type metadata accessor for Accessory(0);
    v18 = MEMORY[0x2530AD730](v13, v17);
    MEMORY[0x2530AD570](v18);

    sub_252CC3D90(0xD000000000000025, 0x8000000252E73870, 0xD0000000000000A7, 0x8000000252E738A0);

    v19 = v13 & 0xFFFFFFFFFFFFFF8;
    if (v13 >> 62)
    {
      v20 = sub_252E378C4();
      if (v20)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_16:
        v21 = 0;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x2530ADF00](v21, v13);
            v24 = __OFADD__(v21++, 1);
            if (v24)
            {
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }
          }

          else
          {
            if (v21 >= *(v19 + 16))
            {
              __break(1u);
              goto LABEL_56;
            }

            v23 = *(v13 + 32 + 8 * v21);

            v24 = __OFADD__(v21++, 1);
            if (v24)
            {
              goto LABEL_40;
            }
          }

          v25 = (*v23 + 256);
          v26 = *v25;
          if ((*v25)() == 24)
          {
            sub_252929F10(v13, 0);

            goto LABEL_42;
          }

          v27 = v20;
          v28 = (*(*v23 + 272))();
          if (*(v28 + 16))
          {
            sub_252E37EC4();
            MEMORY[0x2530AE390](24);
            v29 = sub_252E37F14();
            v30 = -1 << *(v28 + 32);
            v31 = v29 & ~v30;
            if ((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
            {
              v32 = ~v30;
              while (*(*(v28 + 48) + 8 * v31) != 24)
              {
                v31 = (v31 + 1) & v32;
                if (((*(v28 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
                {
                  goto LABEL_27;
                }
              }

LABEL_41:
              sub_252929F10(v13, 0);

LABEL_42:
              if (sub_252C4DD58(0))
              {
                v41 = sub_252C4B680(0);
              }

              else
              {
                v41 = 0;
              }

              if (sub_252C51814(3u) & 1) != 0 || (sub_252C51814(1u))
              {
                if (v41)
                {
                  return 1;
                }
              }

              else if (v41 & sub_252C51814(2u))
              {
                return 1;
              }

              v42 = sub_252C4DD64();
              v43 = sub_252C4D664(7);
              if (v42 & 1) != 0 && (v43)
              {
                return 1;
              }

              sub_252CC3D90(0xD000000000000018, 0x8000000252E73950, 0xD0000000000000A7, 0x8000000252E738A0);
              return 0;
            }
          }

LABEL_27:

          v34 = (v26)(v33);
          if (v34 == 38)
          {
            break;
          }

          v35 = MEMORY[0x277D84FA0];
          if (v34 == 41)
          {
            v36 = &unk_2864A95E8;
LABEL_31:
            v35 = sub_2529FC004(v36);
          }

          if (*(v35 + 16))
          {
            sub_252E37EC4();
            MEMORY[0x2530AE390](24);
            v37 = sub_252E37F14();
            v38 = -1 << *(v35 + 32);
            v39 = v37 & ~v38;
            if ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
            {
              v40 = ~v38;
              while (*(*(v35 + 48) + 8 * v39) != 24)
              {
                v39 = (v39 + 1) & v40;
                if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
                {
                  goto LABEL_17;
                }
              }

              goto LABEL_41;
            }
          }

LABEL_17:

          v20 = v27;
          v22 = v21 == v27;
          v19 = v13 & 0xFFFFFFFFFFFFFF8;
          if (v22)
          {
            goto LABEL_58;
          }
        }

        v36 = &unk_2864A95C0;
        goto LABEL_31;
      }
    }

LABEL_58:
    sub_252929F10(v13, 0);
    return 0;
  }

  return result;
}

id sub_252A48F1C(void *a1)
{
  v2 = [a1 filters];
  if (v2)
  {
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    v17 = v3;
    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v4.n128_f64[0] = HomeFilter.Builder.init()();
    v6 = (*(*v5 + 728))(1, v4);

    v7 = (*(*v6 + 624))(24);

    v9 = (*(*v7 + 760))(v8);

    v10 = v9;
    MEMORY[0x2530AD700]();
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v11 = [a1 userTask];
    v12 = [a1 time];
    v13 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
    [v13 setUserTask_];
    v14 = sub_252E37254();

    [v13 setFilters_];

    [v13 setTime_];
    return v13;
  }

  else
  {
    sub_2529318DC();
    result = swift_allocError();
    *v16 = 8;
  }

  return result;
}

char *sub_252A491E4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v190 = a4;
  v181 = a3;
  v196 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D70, &unk_252E5B5A0);
  MEMORY[0x28223BE20](v5 - 8);
  v233 = &v172 - v6;
  v186 = sub_252E34834();
  v192 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v185 = &v172 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_252E34B94();
  v272 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v222 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_252E34B44();
  v193 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v189 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_252E34C54();
  v271 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v191 = &v172 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D78, &qword_252E424E8);
  MEMORY[0x28223BE20](v205);
  v204 = &v172 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D80, &qword_252E424F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v172 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D88, &qword_252E424F8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v208 = &v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v210 = &v172 - v20;
  MEMORY[0x28223BE20](v19);
  v209 = &v172 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D90, &qword_252E42500);
  MEMORY[0x28223BE20](v22 - 8);
  v268 = &v172 - v23;
  v248 = sub_252E34B74();
  v270 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v247 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_252E34804();
  v253 = *(v249 - 8);
  v25 = MEMORY[0x28223BE20](v249);
  v232 = &v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v218 = &v172 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v231 = &v172 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v226 = &v172 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v225 = &v172 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v217 = &v172 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v203 = &v172 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v216 = &v172 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v266 = &v172 - v42;
  MEMORY[0x28223BE20](v41);
  v265 = &v172 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  MEMORY[0x28223BE20](v44 - 8);
  v244 = &v172 - v45;
  v46 = sub_252E34694();
  v263 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v48 = &v172 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_252E34724();
  v213 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v258 = &v172 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DA0, &qword_252E42508);
  v50 = *(v230 - 8);
  MEMORY[0x28223BE20](v230);
  v212 = (&v172 - v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DA8, &qword_252E42510);
  v53 = MEMORY[0x28223BE20](v52 - 8);
  v239 = &v172 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v234 = (&v172 - v55);
  v177 = sub_252E36AB4();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v188 = &v172 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4F8 != -1)
  {
    goto LABEL_109;
  }

  while (1)
  {
    v57 = sub_252E36AD4();
    v58 = __swift_project_value_buffer(v57, qword_27F544D90);
    v275 = 0;
    v276 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E73970);
    v59 = a1;
    v60 = *(a1 + 2);
    v274 = v60;
    v61 = sub_252E37D94();
    MEMORY[0x2530AD570](v61);

    v237 = " groups entitySpans: ";
    v238 = v58;
    sub_252CC3D90(v275, v276, 0xD000000000000084, 0x8000000252E739B0);

    if (qword_27F53F5A8 != -1)
    {
      swift_once();
    }

    v62 = qword_27F544F30;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v63 = MEMORY[0x277D84F90];
    v274 = MEMORY[0x277D84F90];
    if (!v60)
    {
      v165 = MEMORY[0x277D84F90];
      goto LABEL_96;
    }

    v64 = v60;
    v172 = v62;
    v65 = 0;
    v66 = v59 + 32;
    v211 = v213 + 16;
    v229 = (v50 + 56);
    v228 = (v50 + 48);
    v227 = (v213 + 32);
    v267 = 0x8000000252E73A60;
    v260 = v263 + 16;
    v243 = (v272 + 6);
    v241 = (v272 + 1);
    v246 = (v270 + 8);
    v252 = (v253 + 16);
    v251 = v253 + 8;
    v256 = (v253 + 32);
    v259 = (v263 + 8);
    v202 = (v271 + 56);
    v201 = *MEMORY[0x277D5E740];
    v200 = (v271 + 104);
    v199 = (v271 + 48);
    v187 = (v271 + 32);
    v194 = (v271 + 8);
    v173 = 0x8000000252E73BB0;
    v180 = "Returning tokenIndexIdentifier ";
    v198 = *MEMORY[0x277D5E6C8];
    v221 = v272 + 13;
    v197 = "Returning itemIdIdentifier ";
    v220 = "significantTokenCount";
    v219 = "MatchedTokenCount not found";
    v215 = *MEMORY[0x277D5E700];
    v214 = "originEntityId not found";
    v207 = "ignments:userEntityName:)";
    v184 = v193 + 16;
    v183 = (v193 + 8);
    v179 = v192 + 16;
    v178 = v192 + 8;
    v224 = (v253 + 48);
    v223 = (v213 + 8);
    v242 = v8;
    v245 = v15;
    v50 = v249;
    v250 = v46;
    a1 = v258;
    v67 = v234;
    v175 = v64;
    v174 = v59 + 32;
LABEL_7:
    v68 = *&v66[8 * v65];
    v257 = v65;
    v182 = v65 + 1;
    v235 = v68;

    v69 = 0;
    v272 = v63;
LABEL_10:
    v70 = *(v235 + 16);
    v71 = v230;
    v72 = v239;
    if (v69 == v70)
    {
      v236 = v69;
      v73 = 1;
    }

    else
    {
      if (v69 >= v70)
      {
        goto LABEL_105;
      }

      v74 = v69 + 1;
      v75 = v213;
      v76 = v235 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v69;
      v77 = *(v230 + 48);
      v78 = v212;
      *v212 = v69;
      (*(v75 + 16))(&v78[v77], v76, v240);
      v79 = v78;
      v67 = v234;
      sub_25293DDF0(v79, v239, &qword_27F541DA0, &qword_252E42508);
      v72 = v239;
      v73 = 0;
      v236 = v74;
    }

    v80 = v72;
    (*v229)(v72, v73, 1, v71);
    sub_25293DDF0(v80, v67, &qword_27F541DA8, &qword_252E42510);
    if ((*v228)(v67, 1, v71) == 1)
    {
      break;
    }

    v63 = *v67;
    (*v227)(a1, v67 + *(v71 + 48), v240);
    v81 = sub_252E346D4();
    v82 = v81;
    v83 = *(v81 + 16);
    v269 = v63;
    v255 = HIDWORD(v63);
    v254 = HIDWORD(v257);
    v264 = v83;
    if (!v83)
    {

      v108 = v233;
LABEL_53:
      sub_252CC4050(0xD00000000000001BLL, v220 | 0x8000000000000000, 0xD000000000000084, v237 | 0x8000000000000000, 0xD000000000000079, v219 | 0x8000000000000000, 149);
      goto LABEL_70;
    }

    LODWORD(v270) = 0;
    v84 = 0;
    v85 = *(v263 + 80);
    v261 = v81;
    v262 = v81 + ((v85 + 32) & ~v85);
    LODWORD(v271) = 1;
    do
    {
      if (v84 >= *(v82 + 16))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      (*(v263 + 16))(v48, v262 + *(v263 + 72) * v84, v46);
      if (sub_252E34674() == 0xD000000000000015 && v267 == v86)
      {
      }

      else
      {
        v63 = v86;
        v87 = sub_252E37DB4();

        if ((v87 & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v88 = sub_252E34684();
      v89 = v270;
      if ((v88 & 0x100000000) == 0)
      {
        v89 = v88;
      }

      LODWORD(v270) = v89;
      LODWORD(v271) = ((v88 & 0x100000000uLL) >> 32) & v271;
LABEL_27:
      v90 = sub_252E34654();
      if (v91)
      {
        v63 = v90;
        v92 = v244;
        sub_252E34664();
        if ((*v243)(v92, 1, v8) == 1)
        {
          sub_25293847C(v92, &qword_27F541D98, &unk_252E5B5B0);
        }

        else
        {
          sub_252E34B84();
          (*v241)(v92, v8);
        }

        v93 = 0;
        while (v93 != 11)
        {
          v94 = sub_252D1569C(byte_2864A25A0[v93 + 32]);
          v96 = v95;
          if (v94 == sub_252E34674() && v96 == v97)
          {

LABEL_40:

            sub_252E34674();
            break;
          }

          ++v93;
          v99 = sub_252E37DB4();

          if (v99)
          {
            goto LABEL_40;
          }
        }

        v100 = v247;
        sub_252E346F4();
        sub_252E34B64();
        (*v246)(v100, v248);
        v101 = sub_252E34764();
        (*(*(v101 - 8) + 56))(v268, 1, 1, v101);
        if ((v269 & 0x8000000000000000) != 0)
        {
          goto LABEL_98;
        }

        if (v255)
        {
          goto LABEL_99;
        }

        if (v254)
        {
          goto LABEL_100;
        }

        LOBYTE(v275) = 0;
        v171 = v269;
        v102 = v265;
        sub_252E347B4();
        v103 = v102;
        v50 = v249;
        (*v252)(v266, v103, v249);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v272 = sub_2529F85CC(0, v272[2] + 1, 1, v272);
        }

        v8 = v242;
        v15 = v245;
        v82 = v261;
        v105 = v272[2];
        v104 = v272[3];
        v63 = v105 + 1;
        if (v105 >= v104 >> 1)
        {
          v272 = sub_2529F85CC((v104 > 1), v105 + 1, 1, v272);
        }

        v106 = v253;
        (*(v253 + 8))(v265, v50);
        v107 = v272;
        v272[2] = v63;
        (*(v106 + 32))(v107 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v105, v266, v50);
        v46 = v250;
      }

      else
      {
        v82 = v261;
      }

      ++v84;
      (*v259)(v48, v46);
    }

    while (v84 != v264);

    v108 = v233;
    if (v271)
    {
      goto LABEL_53;
    }

    sub_252E34704();
    v109 = sub_252E34C74();
    v110 = *(v109 - 8);
    if ((*(v110 + 48))(v15, 1, v109) == 1)
    {
      sub_25293847C(v15, &qword_27F541D80, &qword_252E424F0);
      v111 = v202;
      v112 = v209;
      v113 = v206;
      (*v202)(v209, 1, 1, v206);
      v114 = v210;
    }

    else
    {
      v112 = v209;
      sub_252E34C64();
      (*(v110 + 8))(v15, v109);
      v113 = v206;
      v114 = v210;
      v111 = v202;
    }

    (*v200)(v114, v201, v113);
    (*v111)(v114, 0, 1, v113);
    v115 = *(v205 + 48);
    v116 = v204;
    sub_252A4CFCC(v112, v204);
    sub_252A4CFCC(v114, v116 + v115);
    a1 = v199;
    v117 = *v199;
    v118 = (*v199)(v116, 1, v113);
    v119 = v208;
    if (v118 == 1)
    {
      sub_25293847C(v114, &qword_27F541D88, &qword_252E424F8);
      sub_25293847C(v112, &qword_27F541D88, &qword_252E424F8);
      if (v117(v116 + v115, 1, v113) == 1)
      {
        sub_25293847C(v116, &qword_27F541D88, &qword_252E424F8);
        goto LABEL_87;
      }

LABEL_60:
      sub_25293847C(v116, &qword_27F541D78, &qword_252E424E8);
      goto LABEL_61;
    }

    sub_252A4CFCC(v116, v208);
    if (v117(v116 + v115, 1, v113) == 1)
    {
      sub_25293847C(v210, &qword_27F541D88, &qword_252E424F8);
      sub_25293847C(v209, &qword_27F541D88, &qword_252E424F8);
      (*v194)(v119, v113);
      goto LABEL_60;
    }

    v154 = v191;
    (*v187)(v191, v116 + v115, v113);
    sub_252A4D0C8(&qword_27F541DB0, MEMORY[0x277D5E748], MEMORY[0x277D5E750]);
    v155 = sub_252E36EF4();
    a1 = v194;
    v156 = *v194;
    (*v194)(v154, v113);
    sub_25293847C(v210, &qword_27F541D88, &qword_252E424F8);
    sub_25293847C(v209, &qword_27F541D88, &qword_252E424F8);
    v156(v208, v113);
    sub_25293847C(v116, &qword_27F541D88, &qword_252E424F8);
    if ((v155 & 1) == 0)
    {
LABEL_61:
      v120 = 0;
      v121 = 0;
      goto LABEL_62;
    }

LABEL_87:
    if (*(v196 + 16))
    {
      v157 = v189;
      (*(v193 + 16))(v189, v196 + ((*(v193 + 80) + 32) & ~*(v193 + 80)), v195);
      if (v190)
      {
        v158 = sub_252E34AF4();
        if (v159)
        {
          v120 = v158;
          v121 = v159;
          v275 = 0;
          v276 = 0xE000000000000000;

          sub_252E379F4();

          v275 = 0xD000000000000028;
          v276 = v173;
          MEMORY[0x2530AD570](v120, v121);

          sub_252CC3D90(v275, v276, 0xD000000000000084, v237 | 0x8000000000000000);

          (*v183)(v157, v195);
          goto LABEL_62;
        }
      }

      (*v183)(v157, v195);
    }

    v160 = sub_252E346E4();
    if (!*(v160 + 16))
    {

      goto LABEL_61;
    }

    v161 = v192;
    v162 = v185;
    v163 = v186;
    (*(v192 + 16))(v185, v160 + ((*(v161 + 80) + 32) & ~*(v161 + 80)), v186);

    v120 = sub_252E34824();
    v121 = v164;
    (*(v161 + 8))(v162, v163);
    sub_252CC3D90(0xD000000000000029, v180 | 0x8000000000000000, 0xD000000000000084, v237 | 0x8000000000000000);
LABEL_62:
    LOBYTE(v275) = 0;
    v46 = sub_252A4BFB0(v270, v120, v121);
    v15 = v122;

    v123 = v247;
    sub_252E346F4();
    sub_252E34B64();
    v50 = v124;
    (*v246)(v123, v248);
    v125 = v222;
    (*v221)(v222, v198, v8);
    sub_252E34B84();
    (*v241)(v125, v8);
    v126 = sub_252E34764();
    (*(*(v126 - 8) + 56))(v268, 1, 1, v126);
    if ((v269 & 0x8000000000000000) != 0)
    {
      goto LABEL_106;
    }

    if (v255)
    {
      goto LABEL_107;
    }

    if (v254)
    {
      goto LABEL_108;
    }

    LOBYTE(v275) = 0;
    v171 = v269;
    v127 = v203;
    sub_252E347B4();
    v275 = 0;
    v276 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001FLL, v197 | 0x8000000000000000);
    v50 = v249;
    sub_252E37AE4();
    sub_252CC3D90(v275, v276, 0xD000000000000084, v237 | 0x8000000000000000);

    v128 = *v256;
    v129 = v216;
    (*v256)(v216, v127, v50);
    (*v252)(v217, v129, v50);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v272 = sub_2529F85CC(0, v272[2] + 1, 1, v272);
    }

    v15 = v245;
    v108 = v233;
    v131 = v272[2];
    v130 = v272[3];
    if (v131 >= v130 >> 1)
    {
      v272 = sub_2529F85CC((v130 > 1), v131 + 1, 1, v272);
    }

    v132 = v253;
    (*(v253 + 8))(v216, v50);
    v133 = v272;
    v272[2] = v131 + 1;
    v128(&v133[((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v131], v217, v50);
LABEL_70:
    sub_252A4B694(v258, v269, v257, v108);
    if ((*v224)(v108, 1, v50) == 1)
    {
      sub_25293847C(v108, &qword_27F541D70, &unk_252E5B5A0);
    }

    else
    {
      v134 = *v256;
      v135 = v225;
      (*v256)(v225, v108, v50);
      (*v252)(v226, v135, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v272 = sub_2529F85CC(0, v272[2] + 1, 1, v272);
      }

      v137 = v272[2];
      v136 = v272[3];
      if (v137 >= v136 >> 1)
      {
        v272 = sub_2529F85CC((v136 > 1), v137 + 1, 1, v272);
      }

      v138 = v253;
      (*(v253 + 8))(v225, v50);
      v139 = v272;
      v272[2] = v137 + 1;
      v134(&v139[((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v137], v226, v50);
    }

    a1 = v258;
    sub_252E346C4();
    if (!v140)
    {
      sub_252CC3D90(0xD000000000000018, v207 | 0x8000000000000000, 0xD000000000000084, v237 | 0x8000000000000000);
      (*v223)(a1, v240);
      goto LABEL_9;
    }

    v46 = v140;
    v141 = v247;
    sub_252E346F4();
    v15 = sub_252E34B64();
    v50 = v142;
    (*v246)(v141, v248);
    a1 = v222;
    (*v221)(v222, v215, v8);
    sub_252E34B84();
    (*v241)(a1, v8);
    v143 = sub_252E34764();
    (*(*(v143 - 8) + 56))(v268, 1, 1, v143);
    if ((v269 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    if (v255)
    {
      goto LABEL_103;
    }

    if (!v254)
    {
      LOBYTE(v275) = 0;
      v171 = v269;
      v144 = v218;
      sub_252E347B4();
      v275 = 0;
      v276 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000001BLL, v214 | 0x8000000000000000);
      v50 = v249;
      sub_252E37AE4();
      sub_252CC3D90(v275, v276, 0xD000000000000084, v237 | 0x8000000000000000);

      v145 = *v256;
      v146 = v231;
      (*v256)(v231, v144, v50);
      (*v252)(v232, v146, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v272 = sub_2529F85CC(0, v272[2] + 1, 1, v272);
      }

      v15 = v245;
      v148 = v272[2];
      v147 = v272[3];
      if (v148 >= v147 >> 1)
      {
        v272 = sub_2529F85CC((v147 > 1), v148 + 1, 1, v272);
      }

      v149 = v253;
      (*(v253 + 8))(v231, v50);
      v150 = v258;
      (*v223)(v258, v240);
      v151 = v272;
      v272[2] = v148 + 1;
      v152 = v151 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
      v153 = *(v149 + 72);
      a1 = v150;
      v145(&v152[v153 * v148], v232, v50);
LABEL_9:
      v46 = v250;
      v67 = v234;
      v69 = v236;
      goto LABEL_10;
    }

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
    swift_once();
  }

  sub_25297BA5C(v272);
  v65 = v182;
  v66 = v174;
  v63 = MEMORY[0x277D84F90];
  if (v182 != v175)
  {
    goto LABEL_7;
  }

LABEL_101:
  v165 = v274;
  v62 = v172;
LABEL_96:
  v166 = sub_252E375C4();
  LOBYTE(v171) = 2;
  v167 = v188;
  sub_252E36A74(v166, &dword_252917000, v62, "UsoEntitySpanToUsoIdentifiers", 29, 2, v188, " enableTelemetry=YES ", 21, v171, v63);
  v168 = sub_252DF9850(v165);

  v275 = 0;
  v276 = 0xE000000000000000;
  sub_252E379F4();

  v275 = 0xD000000000000020;
  v276 = 0x8000000252E73BE0;
  v273 = *(v168 + 2);
  v169 = sub_252E37D94();
  MEMORY[0x2530AD570](v169);

  sub_252CC3D90(v275, v276, 0xD000000000000084, v237 | 0x8000000000000000);

  (*(v176 + 8))(v167, v177);
  return v168;
}

uint64_t sub_252A4B694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v52 = a3;
  v59 = a2;
  v60 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D90, &qword_252E42500);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = &v49 - v6;
  v7 = sub_252E34B94();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E34B74();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_252E35994();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DC0, &qword_252E42518);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v49 - v18;
  v20 = sub_252E359D4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  sub_252E34714();
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    (*(v21 + 32))(v23, v19, v20);
    v24 = sub_252E359A4();
    if ((v24 & 0x100000000) != 0)
    {
      (*(v21 + 8))(v23, v20);
      goto LABEL_12;
    }

    v51 = v24;
    sub_252E35974();
    v25 = sub_252E35954();
    v26 = *(v14 + 8);
    v26(v16, v13);
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DC8, &qword_252E42520);
      v27 = sub_252E359C4();
      v28 = *(v27 - 8);
      v50 = *(v28 + 72);
      v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_252E3C3C0;
      v31 = v30 + v29;
      v32 = *(v28 + 104);
      v32(v31, *MEMORY[0x277D5F470], v27);
      v32(v31 + v50, *MEMORY[0x277D5F468], v27);
      v33 = sub_2529FE3BC(v30);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v34 = sub_252E359B4();
      v35 = sub_252A4C5BC(v34, v33);

      if (v35)
      {
        v36 = 0x4D74636566726570;
      }

      else
      {
        v36 = 0x74614D7361696C61;
      }

      v37 = 0xEA00000000006863;
      if (v35)
      {
        v37 = 0xEC00000068637461;
      }
    }

    else
    {
      sub_252E35964();
      v42 = sub_252E35954();
      v26(v16, v13);
      if (v42)
      {
        v49 = 0x8000000252E65390;
        v50 = 0xD000000000000010;
        goto LABEL_22;
      }

      sub_252E35984();
      v43 = sub_252E35954();
      v26(v16, v13);
      if (v43)
      {
        v36 = 0x4D6C616974726170;
      }

      else
      {
        v36 = 0x4D74636566726570;
      }

      v37 = 0xEC00000068637461;
    }

    v49 = v37;
    v50 = v36;
LABEL_22:
    sub_252E346F4();
    sub_252E34B64();
    (*(v53 + 8))(v12, v54);
    v45 = v56;
    v44 = v57;
    (*(v56 + 104))(v9, *MEMORY[0x277D5E6C0], v57);
    sub_252E34B84();
    (*(v45 + 8))(v9, v44);
    v46 = sub_252E34764();
    (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
    if (v59 > 0xFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (((v52 | v59) & 0x8000000000000000) == 0)
    {
      if (v52 <= 0xFFFFFFFFLL)
      {
        LOBYTE(v61) = 0;
        v9 = v60;
        sub_252E347B4();
        if (qword_27F53F4F8 == -1)
        {
LABEL_26:
          v47 = sub_252E36AD4();
          __swift_project_value_buffer(v47, qword_27F544D90);
          v61 = 0;
          v62 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E73C30);
          v48 = sub_252E34804();
          sub_252E37AE4();
          sub_252CC3D90(v61, v62, 0xD000000000000084, 0x8000000252E739B0);

          (*(v21 + 8))(v23, v20);
          return (*(*(v48 - 8) + 56))(v9, 0, 1, v48);
        }

LABEL_30:
        swift_once();
        goto LABEL_26;
      }

LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_25293847C(v19, &qword_27F541DC0, &qword_252E42518);
LABEL_12:
  v38 = v60;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v39 = sub_252E36AD4();
  __swift_project_value_buffer(v39, qword_27F544D90);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E73C10, 0xD000000000000084, 0x8000000252E739B0);
  v40 = sub_252E34804();
  return (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
}

uint64_t sub_252A4BFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_252E36F84();
  MEMORY[0x28223BE20](v3 - 8);
  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  sub_252A4D03C();
  v4 = sub_252E329A4();
  v6 = v5;
  sub_252E36F74();
  v7 = sub_252E36F54();
  if (v8)
  {
    v9 = v7;
    sub_25296464C(v4, v6);

    return v9;
  }

  else
  {
    sub_25296464C(v4, v6);

    return 0;
  }
}

uint64_t sub_252A4C208(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DE8, &qword_252E425B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A4D384();
  sub_252E37F84();
  v13 = 0;
  sub_252E37CE4();
  if (!v4)
  {
    v12 = 1;
    sub_252E37C94();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_252A4C3A4()
{
  if (*v0)
  {
    return 0x756C61566E617073;
  }

  else
  {
    return 0x756F436E656B6F74;
  }
}

uint64_t sub_252A4C3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F436E656B6F74 && a2 == 0xEA0000000000746ELL;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756C61566E617073 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252A4C4D4(uint64_t a1)
{
  v2 = sub_252A4D384();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A4C510(uint64_t a1)
{
  v2 = sub_252A4D384();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_252A4C54C@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_252A4D1D0(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 4) = BYTE4(result) & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_252A4C5BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DD0, &qword_252E42528);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = *(a2 + 16);
  if (v7 == 1)
  {
    sub_252DA0AA4(a2, v6);
    v9 = sub_252E359C4();
    v10 = *(v9 - 8);
    result = (*(v10 + 48))(v6, 1, v9);
    if (result != 1)
    {
      v12 = 0;
      v13 = *(a1 + 16);
      do
      {
        v8 = v13 != v12;
        if (v13 == v12)
        {
          break;
        }

        v14 = v12 + 1;
        sub_252A4D0C8(&qword_27F5417B0, MEMORY[0x277D5F478], MEMORY[0x277D5F488]);
        v15 = sub_252E36EF4();
        v12 = v14;
      }

      while ((v15 & 1) == 0);
      (*(v10 + 8))(v6, v9);
      return v8;
    }

    __break(1u);
  }

  else
  {
    if (!v7)
    {
      return 1;
    }

    return sub_252A4C7C4(a1, a2);
  }

  return result;
}

uint64_t sub_252A4C7C4(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v19 = *MEMORY[0x277D85DE8];
  v15 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17 = &v15;
  v18 = a2;
  v6 = (1 << v4) + 63;
  if (v5 <= 0xD || (v11 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = &v14 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    v9 = sub_252A4C944(v8, v3, a2);
  }

  else
  {
    v12 = swift_slowAlloc();
    bzero(v12, v11);
    sub_252A4D090(v12, &v16);
    v13 = v16;
    MEMORY[0x2530AED00](v12, -1, -1);
    v9 = v13;
  }

  return v9 & 1;
}

uint64_t sub_252A4C944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v6 = sub_252E359C4();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v38 = &v26 - v11;
  v31 = *(a2 + 16);
  if (!v31)
  {
    return 0;
  }

  v26 = v3;
  v27 = 0;
  v12 = 0;
  v36 = *(v10 + 16);
  v37 = v10 + 16;
  v30 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v13 = *(v10 + 72);
  v34 = a3 + 56;
  v35 = v13;
  v14 = (v10 + 8);
  v33 = a3;
  while (1)
  {
    v32 = v12;
    v36(v38, v30 + v35 * v12, v6);
    sub_252A4D0C8(&qword_27F5417A8, MEMORY[0x277D5F478], MEMORY[0x277D5F480]);
    v17 = sub_252E36E84();
    v18 = -1 << *(a3 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v34 + 8 * (v19 >> 6))) == 0)
    {
      v15 = *v14;
LABEL_4:
      v15(v38, v6);
      goto LABEL_5;
    }

    v29 = v14 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22 = ~v18;
    while (1)
    {
      v36(v9, *(v33 + 48) + v19 * v35, v6);
      sub_252A4D0C8(&qword_27F5417B0, MEMORY[0x277D5F478], MEMORY[0x277D5F488]);
      v23 = sub_252E36EF4();
      v15 = *v14;
      (*v14)(v9, v6);
      if (v23)
      {
        break;
      }

      v19 = (v19 + 1) & v22;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v34 + 8 * (v19 >> 6))) == 0)
      {
        a3 = v33;
        goto LABEL_4;
      }
    }

    result = (v15)(v38, v6);
    v25 = *(v28 + 8 * v20);
    *(v28 + 8 * v20) = v25 | v21;
    if ((v25 & v21) != 0)
    {
      a3 = v33;
LABEL_5:
      v16 = v32;
      goto LABEL_6;
    }

    v16 = v32;
    a3 = v33;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v27 + 1 == *(v33 + 16))
    {
      return 1;
    }

    ++v27;
LABEL_6:
    v12 = v16 + 1;
    if (v12 == v31)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A4CC98(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E36F84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E36F74();
  v6 = sub_252E36F44();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    return 0;
  }

  sub_252E32994();
  swift_allocObject();
  sub_252E32984();
  sub_252A4CF78();
  sub_252E32974();

  sub_252982EFC(v6, v8);
  v9 = 0x100000000;
  if (!v12)
  {
    v9 = 0;
  }

  return v9 | v11[2];
}

unint64_t sub_252A4CF78()
{
  result = qword_27F541D68;
  if (!qword_27F541D68)
  {
    result = swift_getWitnessTable(byte_252E42588, &_s15TokenIndexValueVN, v0, v1);
    atomic_store(result, &qword_27F541D68);
  }

  return result;
}

uint64_t sub_252A4CFCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D88, &qword_252E424F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_252A4D03C()
{
  result = qword_27F541DB8;
  if (!qword_27F541DB8)
  {
    result = swift_getWitnessTable(aYx, &_s15TokenIndexValueVN, v0, v1);
    atomic_store(result, &qword_27F541DB8);
  }

  return result;
}

uint64_t sub_252A4D090@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252A4C944(a1, **(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_252A4D0C8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_252A4D110(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_252A4D16C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_252A4D1D0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541DD8, &qword_252E425B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252A4D384();
  sub_252E37F74();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9[15] = 0;
  v7 = sub_252E37BF4();
  v9[14] = 1;
  sub_252E37BA4();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7 | ((HIDWORD(v7) & 1) << 32);
}

unint64_t sub_252A4D384()
{
  result = qword_27F541DE0;
  if (!qword_27F541DE0)
  {
    result = swift_getWitnessTable(byte_252E42684, &_s15TokenIndexValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F541DE0);
  }

  return result;
}

unint64_t sub_252A4D3EC()
{
  result = qword_27F541DF0;
  if (!qword_27F541DF0)
  {
    result = swift_getWitnessTable(aMz, &_s15TokenIndexValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F541DF0);
  }

  return result;
}

unint64_t sub_252A4D444()
{
  result = qword_27F541DF8;
  if (!qword_27F541DF8)
  {
    result = swift_getWitnessTable(aL, &_s15TokenIndexValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F541DF8);
  }

  return result;
}

unint64_t sub_252A4D49C()
{
  result = qword_27F541E00;
  if (!qword_27F541E00)
  {
    result = swift_getWitnessTable(byte_252E425F4, &_s15TokenIndexValueV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F541E00);
  }

  return result;
}

uint64_t sub_252A4D4F0(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v28 = a2;
  while (v6)
  {
LABEL_11:
    v10 = (v8 << 9) | (8 * __clz(__rbit64(v6)));
    v11 = *(*(a1 + 48) + v10);
    v12 = *(*(a1 + 56) + v10);
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a2;
    v30 = *a2;
    v15 = sub_252A454C0(v11);
    v17 = *(v14 + 16);
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_23;
    }

    v21 = v16;
    if (*(v14 + 24) < v20)
    {
      sub_252E00638(v20, isUniquelyReferenced_nonNull_native);
      type metadata accessor for Service(0);
      v15 = sub_252A454C0(v11);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v23 = v30;
      if (v21)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v26 = v15;
    sub_252E03EC4();
    v15 = v26;
    v23 = v30;
    if (v21)
    {
LABEL_4:
      *(v23[7] + 8 * v15) = v12;
      goto LABEL_5;
    }

LABEL_17:
    v23[(v15 >> 6) + 8] |= 1 << v15;
    *(v23[6] + 8 * v15) = v11;
    *(v23[7] + 8 * v15) = v12;
    v24 = v23[2];
    v19 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v19)
    {
      goto LABEL_24;
    }

    v23[2] = v25;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v28;
    *v28 = v23;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252A4D754()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541748, &qword_252E40A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E426E0;
  *(v0 + 32) = type metadata accessor for InvalidInputForCurrentDeviceStateResponseHandler();
  *(v0 + 40) = &off_2864BE718;
  *(v0 + 48) = type metadata accessor for BluetoothWakeUpResponseHandler();
  *(v0 + 56) = &off_2864BDF80;
  *(v0 + 64) = type metadata accessor for CalibrationInProgressResponseHandler();
  *(v0 + 72) = &off_2864BB080;
  *(v0 + 80) = type metadata accessor for RemoteAccessNotSetUpResponseHandler();
  *(v0 + 88) = &off_2864BBBF8;
  *(v0 + 96) = type metadata accessor for SecureAccessDeniedResponseHandler();
  *(v0 + 104) = &off_2864C0078;
  *(v0 + 112) = type metadata accessor for SceneNotSetUpResponseHandler();
  *(v0 + 120) = &off_2864B69A0;
  *(v0 + 128) = type metadata accessor for MediaSceneFailureResponseHandler();
  *(v0 + 136) = &off_2864B59F0;
  *(v0 + 144) = type metadata accessor for SceneInProgressResponseHandler();
  *(v0 + 152) = &off_2864B5950;
  *(v0 + 160) = type metadata accessor for ScenePartialFailureResponseHandler();
  *(v0 + 168) = &off_2864BC3E0;
  *(v0 + 176) = type metadata accessor for HomeManagerSyncInProgressResponseHandler();
  *(v0 + 184) = &off_2864B8230;
  *(v0 + 192) = type metadata accessor for FoundNoMatchingEntitiesResponseHandler();
  *(v0 + 200) = &off_2864B6EE0;
  *(v0 + 208) = type metadata accessor for InProgressResponseHandler();
  *(v0 + 216) = &off_2864B4BE8;
  *(v0 + 224) = type metadata accessor for UnreachableResponseHandler();
  *(v0 + 232) = &off_2864BCFE0;
  *(v0 + 240) = type metadata accessor for RvcFailureResponseHandler();
  *(v0 + 248) = &off_2864BAE60;
  *(v0 + 256) = type metadata accessor for FailureResponseHandler();
  *(v0 + 264) = &off_2864BF6F0;
  result = type metadata accessor for GenericFallbackResponseHandler();
  *(v0 + 272) = result;
  *(v0 + 280) = &off_2864BB830;
  qword_27F575798 = v0;
  return result;
}

uint64_t sub_252A4D8E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541748, &qword_252E40A00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E426F0;
  *(v0 + 32) = type metadata accessor for AsyncEagerResponseHandler();
  *(v0 + 40) = &off_2864B7038;
  *(v0 + 48) = type metadata accessor for WatchPostExecutionResponseHandler();
  *(v0 + 56) = &off_2864B90A0;
  *(v0 + 64) = type metadata accessor for ConvenienceAnswerResponseHandler();
  *(v0 + 72) = &off_2864BACF8;
  *(v0 + 80) = type metadata accessor for WaterSystemResponseHandler();
  *(v0 + 88) = &off_2864B1E38;
  *(v0 + 96) = type metadata accessor for SceneEnabledResponseHandler();
  *(v0 + 104) = &off_2864BAC38;
  *(v0 + 112) = type metadata accessor for BatteryResponseHandler();
  *(v0 + 120) = &off_2864BE918;
  *(v0 + 128) = type metadata accessor for SprinklerResponseHandler();
  *(v0 + 136) = &off_2864B6BD0;
  SecuritySystemStateResponseHandler = type metadata accessor for GetSecuritySystemStateResponseHandler();
  *(v0 + 144) = SecuritySystemStateResponseHandler;
  *(v0 + 152) = &off_2864B1F98;
  *(v0 + 160) = type metadata accessor for PollingResponseHandler();
  *(v0 + 168) = &off_2864B9820;
  *(v0 + 176) = type metadata accessor for SetAirPurifierPowerResponseHandler();
  *(v0 + 184) = &off_2864C0AC8;
  *(v0 + 192) = type metadata accessor for AlreadyOffResponseHandler();
  *(v0 + 200) = &off_2864B8AA8;
  *(v0 + 208) = type metadata accessor for SetColorResponseHandler();
  *(v0 + 216) = &off_2864B0AE8;
  *(v0 + 224) = type metadata accessor for SetSwingModeResponseHandler();
  *(v0 + 232) = &off_2864BA680;
  *(v0 + 240) = type metadata accessor for SetModeResponseHandler();
  *(v0 + 248) = &off_2864BDAC0;
  *(v0 + 256) = type metadata accessor for BackToComfortableTemperatureResponseHandler();
  *(v0 + 264) = &off_2864B18C0;
  *(v0 + 272) = type metadata accessor for AlreadyHeatingCoolingResponseHandler();
  *(v0 + 280) = &off_2864BF320;
  *(v0 + 288) = type metadata accessor for SetSingleTemperatureValueResponseHandler();
  *(v0 + 296) = &off_2864B60D8;
  *(v0 + 304) = type metadata accessor for SetRangeTemperatureValueResponseHandler();
  *(v0 + 312) = &off_2864B8320;
  *(v0 + 320) = type metadata accessor for SetBooleanStateResponseHandler();
  *(v0 + 328) = &off_2864B8140;
  *(v0 + 336) = type metadata accessor for SetNumericValueResponseHandler();
  *(v0 + 344) = &off_2864B2060;
  *(v0 + 352) = type metadata accessor for GetModeResponseHandler();
  *(v0 + 360) = &off_2864C06B0;
  *(v0 + 368) = SecuritySystemStateResponseHandler;
  *(v0 + 376) = &off_2864B1F98;
  *(v0 + 384) = type metadata accessor for GetSmokeSensorStateResponseHandler();
  *(v0 + 392) = &off_2864B1D30;
  *(v0 + 400) = type metadata accessor for GetCarbonOxideSensorStateResponseHandler();
  *(v0 + 408) = &off_2864C10A8;
  *(v0 + 416) = type metadata accessor for GetRotationDirectionResponseHandler();
  *(v0 + 424) = &off_2864BF1A0;
  *(v0 + 432) = type metadata accessor for GetColorResponseHandler();
  *(v0 + 440) = &off_2864B9A20;
  *(v0 + 448) = type metadata accessor for GetFilterStateResponseHandler();
  *(v0 + 456) = &off_2864BEEE8;
  *(v0 + 464) = type metadata accessor for GetBooleanSensorStateResponseHandler();
  *(v0 + 472) = &off_2864B8E48;
  *(v0 + 480) = type metadata accessor for GetThermostatModeResponseHandler();
  *(v0 + 488) = &off_2864B85F8;
  *(v0 + 496) = type metadata accessor for GetSensorMeasurementResponseHandler();
  *(v0 + 504) = &off_2864BEFF0;
  *(v0 + 512) = type metadata accessor for GetBooleanStateResponseHandler();
  *(v0 + 520) = &off_2864B8698;
  *(v0 + 528) = type metadata accessor for GetNumericValueResponseHandler();
  *(v0 + 536) = &off_2864B4918;
  result = type metadata accessor for SuccessFallbackResponseHandler();
  *(v0 + 544) = result;
  *(v0 + 552) = &off_2864BC780;
  qword_27F5757A0 = v0;
  return result;
}

uint64_t sub_252A4DBD8(uint64_t a1, uint64_t a2)
{
  v3[304] = v2;
  v3[303] = a2;
  v3[302] = a1;
  v4 = sub_252E36AB4();
  v3[305] = v4;
  v3[306] = *(v4 - 8);
  v3[307] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A4DCA0, 0, 0);
}

uint64_t sub_252A4DCA0()
{
  v109 = v0;
  if (qword_27F53F2D8 != -1)
  {
    swift_once();
  }

  v1 = qword_27F5757A0;

  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v3 + 288), v0 + 1864);

  v4 = *(v0 + 1888);
  v5 = *(v0 + 1896);
  __swift_project_boxed_opaque_existential_1((v0 + 1864), v4);
  v6 = (*(v5 + 64))(v4, v5);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 1864));
  }

  else
  {
    v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
    sub_252929E74((v7 + 288), v0 + 1904);

    v8 = *(v0 + 1928);
    v9 = *(v0 + 1936);
    __swift_project_boxed_opaque_existential_1((v0 + 1904), v8);
    v10 = (*(v9 + 72))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1904));
    v11 = __swift_destroy_boxed_opaque_existential_1((v0 + 1864));
    if ((v10 & 1) == 0)
    {
      v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
      sub_252929E74((v12 + 288), v0 + 1944);

      v13 = *(v0 + 1968);
      v14 = *(v0 + 1976);
      __swift_project_boxed_opaque_existential_1((v0 + 1944), v13);
      v15 = (*(v14 + 80))(v13, v14);
      __swift_destroy_boxed_opaque_existential_1((v0 + 1944));
      if ((v15 & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  v16 = *(v1 + 2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 2408) = v1;
  if (!isUniquelyReferenced_nonNull_native || v16 >= *(v1 + 3) >> 1)
  {
    v1 = sub_2529F891C(isUniquelyReferenced_nonNull_native, v16 + 1, 1, v1);
    *(v0 + 2408) = v1;
  }

  type metadata accessor for AsyncDefaultEagerResponseHandler();
  sub_252B7DA94();
LABEL_11:
  *(v0 + 2464) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E20, &qword_252E42850);
  v18 = sub_252E33F24();
  *(v0 + 2472) = v18;
  v19 = sub_252E33F04();
  *(v0 + 2480) = v19;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  *(v0 + 2488) = v20;
  *(v0 + 2496) = __swift_project_value_buffer(v20, qword_27F544D30);
  v21 = v18;
  v22 = sub_252E36AC4();
  v23 = sub_252E374C4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v21;
    *v25 = v21;
    v26 = v21;
    _os_log_impl(&dword_252917000, v22, v23, "intent to be donated: %@", v24, 0xCu);
    sub_25293847C(v25, &qword_27F541B78, &qword_252E4A340);
    MEMORY[0x2530AED00](v25, -1, -1);
    MEMORY[0x2530AED00](v24, -1, -1);
  }

  v28 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v27);
  sub_252929E74((v28 + 288), v0 + 1984);

  v29 = *(v0 + 2008);
  v30 = *(v0 + 2016);
  __swift_project_boxed_opaque_existential_1((v0 + 1984), v29);
  v31 = (*(v30 + 40))(v29, v30);
  v32 = __swift_destroy_boxed_opaque_existential_1((v0 + 1984));
  if (v31)
  {
    v33 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v32);
    sub_252929E74((v33 + 288), v0 + 2344);

    v34 = *(v0 + 2368);
    v35 = *(v0 + 2376);
    __swift_project_boxed_opaque_existential_1((v0 + 2344), v34);
    v36 = (*(v35 + 56))(v34, v35);
    v32 = __swift_destroy_boxed_opaque_existential_1((v0 + 2344));
    if (v36)
    {
      v37 = swift_task_alloc();
      *(v0 + 2504) = v37;
      *v37 = v0;
      v37[1] = sub_252A4EBF4;

      return sub_252AE45DC(v21, v19);
    }
  }

  v39 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v32);
  sub_252929E74((v39 + 288), v0 + 2024);

  v40 = *(v0 + 2048);
  v41 = *(v0 + 2056);
  __swift_project_boxed_opaque_existential_1((v0 + 2024), v40);
  v42 = (*(v41 + 8))(v40, v41);
  v43 = __swift_destroy_boxed_opaque_existential_1((v0 + 2024));
  if (v42)
  {
    type metadata accessor for SiriRemembersProvider();
    v44 = swift_allocObject();
    *(v0 + 2544) = v44;
    strcpy((v44 + 16), "HomeAutomation");
    *(v44 + 31) = -18;
    *(v44 + 32) = 0xD00000000000001DLL;
    *(v44 + 40) = 0x8000000252E73EE0;
    *(v44 + 48) = 0xD000000000000011;
    *(v44 + 56) = 0x8000000252E73F00;
    v45 = *(sub_252B680FC(v44) + 75);

    if (v45 == 1)
    {
      v46 = sub_252C4BEB8();
      if ((v46 & 1) == 0)
      {
        sub_252B680FC(v46);
        v47 = sub_252B6355C();

        if (v47)
        {
          v48 = sub_252E36AC4();
          v49 = sub_252E374C4();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            *v50 = 0;
            _os_log_impl(&dword_252917000, v48, v49, "Disambiguation was performed in this interaction, going to donate to SiriRemembers.", v50, 2u);
            MEMORY[0x2530AED00](v50, -1, -1);
          }

          v51 = swift_task_alloc();
          *(v0 + 2552) = v51;
          *v51 = v0;
          v51[1] = sub_252A4FA34;
          v52 = *(v0 + 2472);
          v53 = 1;
LABEL_56:

          return sub_252E1265C(v52, v53);
        }
      }
    }

    v54 = *(sub_252B680FC(v46) + 76);

    if (v54 == 1)
    {
      v55 = sub_252C4BEB8();
      if ((v55 & 1) == 0)
      {
        sub_252B680FC(v55);
        v77 = sub_252B6355C();

        if (v77 || (v79 = *(sub_252B680FC(v78) + 77), , v79 == 1))
        {
          v80 = sub_252E36AC4();
          v81 = sub_252E374C4();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&dword_252917000, v80, v81, "Confirmation was performed in this interaction, going to donate to SiriRemembers.", v82, 2u);
            MEMORY[0x2530AED00](v82, -1, -1);
          }

          v83 = swift_task_alloc();
          *(v0 + 2568) = v83;
          *v83 = v0;
          v83[1] = sub_252A5045C;
          v52 = *(v0 + 2472);
          v53 = 2;
          goto LABEL_56;
        }
      }
    }

    swift_setDeallocating();

    v43 = swift_deallocClassInstance();
  }

  v56 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v43);
  sub_252929E74((v56 + 288), v0 + 2064);

  v57 = *(v0 + 2088);
  v58 = *(v0 + 2096);
  __swift_project_boxed_opaque_existential_1((v0 + 2064), v57);
  v59 = (*(v58 + 160))(v57, v58);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2064));
  if (v59)
  {
    sub_252E35F84();
    if (sub_252E35F54())
    {
      sub_252E35F14();

      sub_252E335F4();

      if (*(v0 + 2288))
      {
        v60 = sub_252927BEC((v0 + 2264), v0 + 2224);
        v61 = sub_252B680FC(v60);
        swift_beginAccess();
        v62 = *(v61 + 16);
        v63 = *(v62 + 16);
        if (v63)
        {
          memcpy((v0 + 16), (v62 + 504 * v63 - 472), 0x1F8uLL);
          sub_2529353AC(v0 + 16, v0 + 520);

          v65 = *(sub_252B680FC(v64) + 152);

          if (v65 >> 62)
          {
            v66 = sub_252E378C4();
          }

          else
          {
            v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v66)
          {
            v67 = sub_252CC6468(MEMORY[0x277D84F90]);
            v107 = v67;
            v68 = *(sub_252B680FC(v67) + 152);

            if (v68 >> 62)
            {
              result = sub_252E378C4();
              v69 = result;
              if (result)
              {
                goto LABEL_39;
              }
            }

            else
            {
              v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v69)
              {
LABEL_39:
                if (v69 < 1)
                {
                  __break(1u);
                  return result;
                }

                v70 = 0;
                do
                {
                  if ((v68 & 0xC000000000000001) != 0)
                  {
                    v71 = MEMORY[0x2530ADF00](v70, v68);
                  }

                  else
                  {
                    v71 = *(v68 + 8 * v70 + 32);
                  }

                  v72 = v71;
                  ++v70;
                  sub_25297D6E8();
                  sub_252A4D4F0(v73, &v107);
                }

                while (v69 != v70);

                v67 = v107;
                goto LABEL_70;
              }
            }

LABEL_70:
            __swift_project_boxed_opaque_existential_1((v0 + 2224), *(v0 + 2248));
            memcpy(__dst, (v0 + 16), 0x1F8uLL);
            v87 = type metadata accessor for ControlHomeCorrectionFlow(0);
            swift_allocObject();
            sub_2529353AC(v0 + 16, v0 + 1024);

            v88 = sub_252BDEA88(__dst, v67);
            *(v0 + 2328) = v87;
            *(v0 + 2336) = sub_252A52CD0(&qword_27F541E38, 255, type metadata accessor for ControlHomeCorrectionFlow, protocol conformance descriptor for ControlHomeCorrectionFlow);
            *(v0 + 2304) = v88;
            sub_252E335E4();
            sub_252935408(v0 + 16);
            __swift_destroy_boxed_opaque_existential_1((v0 + 2304));

LABEL_71:
            __swift_destroy_boxed_opaque_existential_1((v0 + 2224));
            goto LABEL_72;
          }

          sub_252935408(v0 + 16);
        }

        else
        {
        }

        if (qword_27F53F540 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
        v84 = sub_252E36AC4();
        v85 = sub_252E374D4();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_252917000, v84, v85, "Failed to get warmupResponses, won't register corrections client", v86, 2u);
          MEMORY[0x2530AED00](v86, -1, -1);
        }

        goto LABEL_71;
      }
    }

    else
    {
      *(v0 + 2296) = 0;
      *(v0 + 2264) = 0u;
      *(v0 + 2280) = 0u;
    }

    sub_25293847C(v0 + 2264, &qword_27F541E30, &qword_252E42880);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 2488), qword_27F544E68);
    v74 = sub_252E36AC4();
    v75 = sub_252E374D4();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_252917000, v74, v75, "Failed to register correction client", v76, 2u);
      MEMORY[0x2530AED00](v76, -1, -1);
    }
  }

LABEL_72:
  v89 = *(v0 + 2480);
  v90 = *(v0 + 2472);
  v91 = *(v0 + 2464);
  v92 = v89;
  sub_252A51F98(v90, v89, v91, (v0 + 2104));

  sub_252929E74(v0 + 2104, v0 + 2144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E28, &qword_252E42858);
  v93 = sub_252E36F94();
  v95 = v94;
  *(v0 + 2584) = v93;
  *(v0 + 2592) = v94;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v96 = *(v0 + 2480);
  __swift_project_value_buffer(*(v0 + 2488), qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v93, v95);
  MEMORY[0x2530AD570](0x20726F66200A20, 0xE700000000000000);
  v97 = [v96 description];
  v98 = sub_252E36F34();
  v100 = v99;

  MEMORY[0x2530AD570](v98, v100);

  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000091, 0x8000000252E73D10);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v101 = qword_27F544F70;
  *(v0 + 2600) = qword_27F544F70;
  v102 = v101;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v103 = *(v0 + 2128);
  v104 = *(v0 + 2136);
  __swift_project_boxed_opaque_existential_1((v0 + 2104), v103);
  v105 = swift_task_alloc();
  *(v0 + 2608) = v105;
  *v105 = v0;
  v105[1] = sub_252A50D40;
  v106 = *(v0 + 2472);

  return sub_252BA1314(v0 + 2184, v106, v89, v103, v104);
}

uint64_t sub_252A4EBF4(uint64_t a1)
{
  *(*v1 + 2512) = a1;

  return MEMORY[0x2822009F8](sub_252A4ECF4, 0, 0);
}

uint64_t sub_252A4ECF4()
{
  v1 = v0[314];
  if (!v1)
  {
    v1 = sub_252CC6B08(MEMORY[0x277D84F90]);
  }

  v0[315] = v1;
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v2 = sub_252E367F4();
  v4 = v3;

  v0[316] = v4;
  v5 = swift_task_alloc();
  v0[317] = v5;
  *v5 = v0;
  v5[1] = sub_252A4EE18;
  v6 = v0[309];

  return sub_252AE49C4(v6, v1, v2, v4);
}

uint64_t sub_252A4EE18()
{

  return MEMORY[0x2822009F8](sub_252A4EF4C, 0, 0);
}

uint64_t sub_252A4EF4C(uint64_t a1)
{
  v73 = v1;
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 288), v1 + 2024);

  v3 = *(v1 + 2048);
  v4 = *(v1 + 2056);
  __swift_project_boxed_opaque_existential_1((v1 + 2024), v3);
  v5 = (*(v4 + 8))(v3, v4);
  v6 = __swift_destroy_boxed_opaque_existential_1((v1 + 2024));
  if (v5)
  {
    type metadata accessor for SiriRemembersProvider();
    v7 = swift_allocObject();
    *(v1 + 2544) = v7;
    strcpy((v7 + 16), "HomeAutomation");
    *(v7 + 31) = -18;
    *(v7 + 32) = 0xD00000000000001DLL;
    *(v7 + 40) = 0x8000000252E73EE0;
    *(v7 + 48) = 0xD000000000000011;
    *(v7 + 56) = 0x8000000252E73F00;
    v8 = *(sub_252B680FC(v7) + 75);

    if (v8 == 1)
    {
      v9 = sub_252C4BEB8();
      if ((v9 & 1) == 0)
      {
        sub_252B680FC(v9);
        v10 = sub_252B6355C();

        if (v10)
        {
          v11 = sub_252E36AC4();
          v12 = sub_252E374C4();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&dword_252917000, v11, v12, "Disambiguation was performed in this interaction, going to donate to SiriRemembers.", v13, 2u);
            MEMORY[0x2530AED00](v13, -1, -1);
          }

          v14 = swift_task_alloc();
          *(v1 + 2552) = v14;
          *v14 = v1;
          v14[1] = sub_252A4FA34;
          v15 = *(v1 + 2472);
          v16 = 1;
LABEL_37:

          return sub_252E1265C(v15, v16);
        }
      }
    }

    v17 = *(sub_252B680FC(v9) + 76);

    if (v17 == 1)
    {
      v18 = sub_252C4BEB8();
      if ((v18 & 1) == 0)
      {
        sub_252B680FC(v18);
        v41 = sub_252B6355C();

        if (v41 || (v43 = *(sub_252B680FC(v42) + 77), , v43 == 1))
        {
          v44 = sub_252E36AC4();
          v45 = sub_252E374C4();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_252917000, v44, v45, "Confirmation was performed in this interaction, going to donate to SiriRemembers.", v46, 2u);
            MEMORY[0x2530AED00](v46, -1, -1);
          }

          v47 = swift_task_alloc();
          *(v1 + 2568) = v47;
          *v47 = v1;
          v47[1] = sub_252A5045C;
          v15 = *(v1 + 2472);
          v16 = 2;
          goto LABEL_37;
        }
      }
    }

    swift_setDeallocating();

    v6 = swift_deallocClassInstance();
  }

  v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  sub_252929E74((v19 + 288), v1 + 2064);

  v20 = *(v1 + 2088);
  v21 = *(v1 + 2096);
  __swift_project_boxed_opaque_existential_1((v1 + 2064), v20);
  v22 = (*(v21 + 160))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1((v1 + 2064));
  if (v22)
  {
    sub_252E35F84();
    if (sub_252E35F54())
    {
      sub_252E35F14();

      sub_252E335F4();

      if (*(v1 + 2288))
      {
        v23 = sub_252927BEC((v1 + 2264), v1 + 2224);
        v24 = sub_252B680FC(v23);
        swift_beginAccess();
        v25 = *(v24 + 16);
        v26 = *(v25 + 16);
        if (v26)
        {
          memcpy((v1 + 16), (v25 + 504 * v26 - 472), 0x1F8uLL);
          sub_2529353AC(v1 + 16, v1 + 520);

          v28 = *(sub_252B680FC(v27) + 152);

          if (v28 >> 62)
          {
            v29 = sub_252E378C4();
          }

          else
          {
            v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v29)
          {
            v30 = sub_252CC6468(MEMORY[0x277D84F90]);
            v71 = v30;
            v31 = *(sub_252B680FC(v30) + 152);

            if (v31 >> 62)
            {
              result = sub_252E378C4();
              v33 = result;
              if (result)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v33)
              {
LABEL_20:
                if (v33 < 1)
                {
                  __break(1u);
                  return result;
                }

                v34 = 0;
                do
                {
                  if ((v31 & 0xC000000000000001) != 0)
                  {
                    v35 = MEMORY[0x2530ADF00](v34, v31);
                  }

                  else
                  {
                    v35 = *(v31 + 8 * v34 + 32);
                  }

                  v36 = v35;
                  ++v34;
                  sub_25297D6E8();
                  sub_252A4D4F0(v37, &v71);
                }

                while (v33 != v34);

                v30 = v71;
                goto LABEL_51;
              }
            }

LABEL_51:
            __swift_project_boxed_opaque_existential_1((v1 + 2224), *(v1 + 2248));
            memcpy(__dst, (v1 + 16), 0x1F8uLL);
            v51 = type metadata accessor for ControlHomeCorrectionFlow(0);
            swift_allocObject();
            sub_2529353AC(v1 + 16, v1 + 1024);

            v52 = sub_252BDEA88(__dst, v30);
            *(v1 + 2328) = v51;
            *(v1 + 2336) = sub_252A52CD0(&qword_27F541E38, 255, type metadata accessor for ControlHomeCorrectionFlow, protocol conformance descriptor for ControlHomeCorrectionFlow);
            *(v1 + 2304) = v52;
            sub_252E335E4();
            sub_252935408(v1 + 16);
            __swift_destroy_boxed_opaque_existential_1((v1 + 2304));

LABEL_52:
            __swift_destroy_boxed_opaque_existential_1((v1 + 2224));
            goto LABEL_53;
          }

          sub_252935408(v1 + 16);
        }

        else
        {
        }

        if (qword_27F53F540 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v1 + 2488), qword_27F544E68);
        v48 = sub_252E36AC4();
        v49 = sub_252E374D4();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_252917000, v48, v49, "Failed to get warmupResponses, won't register corrections client", v50, 2u);
          MEMORY[0x2530AED00](v50, -1, -1);
        }

        goto LABEL_52;
      }
    }

    else
    {
      *(v1 + 2296) = 0;
      *(v1 + 2264) = 0u;
      *(v1 + 2280) = 0u;
    }

    sub_25293847C(v1 + 2264, &qword_27F541E30, &qword_252E42880);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v1 + 2488), qword_27F544E68);
    v38 = sub_252E36AC4();
    v39 = sub_252E374D4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_252917000, v38, v39, "Failed to register correction client", v40, 2u);
      MEMORY[0x2530AED00](v40, -1, -1);
    }
  }

LABEL_53:
  v53 = *(v1 + 2480);
  v54 = *(v1 + 2472);
  v55 = *(v1 + 2464);
  v56 = v53;
  sub_252A51F98(v54, v53, v55, (v1 + 2104));

  sub_252929E74(v1 + 2104, v1 + 2144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E28, &qword_252E42858);
  v57 = sub_252E36F94();
  v59 = v58;
  *(v1 + 2584) = v57;
  *(v1 + 2592) = v58;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v60 = *(v1 + 2480);
  __swift_project_value_buffer(*(v1 + 2488), qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v57, v59);
  MEMORY[0x2530AD570](0x20726F66200A20, 0xE700000000000000);
  v61 = [v60 description];
  v62 = sub_252E36F34();
  v64 = v63;

  MEMORY[0x2530AD570](v62, v64);

  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000091, 0x8000000252E73D10);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v65 = qword_27F544F70;
  *(v1 + 2600) = qword_27F544F70;
  v66 = v65;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v67 = *(v1 + 2128);
  v68 = *(v1 + 2136);
  __swift_project_boxed_opaque_existential_1((v1 + 2104), v67);
  v69 = swift_task_alloc();
  *(v1 + 2608) = v69;
  *v69 = v1;
  v69[1] = sub_252A50D40;
  v70 = *(v1 + 2472);

  return sub_252BA1314(v1 + 2184, v70, v53, v67, v68);
}

uint64_t sub_252A4FA34()
{
  *(*v1 + 2560) = v0;

  if (v0)
  {

    v2 = sub_252A511F4;
  }

  else
  {
    v2 = sub_252A4FB50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252A4FB50(uint64_t a1)
{
  v60 = v1;
  v2 = *(sub_252B680FC(a1) + 76);

  if (v2 == 1)
  {
    v3 = sub_252C4BEB8();
    if ((v3 & 1) == 0)
    {
      sub_252B680FC(v3);
      v24 = sub_252B6355C();

      if (v24 || (v26 = *(sub_252B680FC(v25) + 77), , v26 == 1))
      {
        v27 = sub_252E36AC4();
        v28 = sub_252E374C4();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_252917000, v27, v28, "Confirmation was performed in this interaction, going to donate to SiriRemembers.", v29, 2u);
          MEMORY[0x2530AED00](v29, -1, -1);
        }

        v30 = swift_task_alloc();
        *(v1 + 2568) = v30;
        *v30 = v1;
        v30[1] = sub_252A5045C;
        v31 = *(v1 + 2472);

        return sub_252E1265C(v31, 2);
      }
    }
  }

  swift_setDeallocating();

  v4 = swift_deallocClassInstance();
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  sub_252929E74((v5 + 288), v1 + 2064);

  v6 = *(v1 + 2088);
  v7 = *(v1 + 2096);
  __swift_project_boxed_opaque_existential_1((v1 + 2064), v6);
  v8 = (*(v7 + 160))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1((v1 + 2064));
  if (v8)
  {
    sub_252E35F84();
    if (sub_252E35F54())
    {
      sub_252E35F14();

      sub_252E335F4();

      if (*(v1 + 2288))
      {
        v9 = sub_252927BEC((v1 + 2264), v1 + 2224);
        v10 = sub_252B680FC(v9);
        swift_beginAccess();
        v11 = *(v10 + 16);
        v12 = *(v11 + 16);
        if (v12)
        {
          memcpy((v1 + 16), (v11 + 504 * v12 - 472), 0x1F8uLL);
          sub_2529353AC(v1 + 16, v1 + 520);

          v14 = *(sub_252B680FC(v13) + 152);

          if (v14 >> 62)
          {
            v15 = sub_252E378C4();
          }

          else
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v15)
          {
            v16 = sub_252CC6468(MEMORY[0x277D84F90]);
            v58 = v16;
            v17 = *(sub_252B680FC(v16) + 152);

            if (v17 >> 62)
            {
              result = sub_252E378C4();
              v19 = result;
              if (result)
              {
                goto LABEL_12;
              }
            }

            else
            {
              v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v19)
              {
LABEL_12:
                if (v19 < 1)
                {
                  __break(1u);
                  return result;
                }

                v20 = 0;
                do
                {
                  if ((v17 & 0xC000000000000001) != 0)
                  {
                    v21 = MEMORY[0x2530ADF00](v20, v17);
                  }

                  else
                  {
                    v21 = *(v17 + 8 * v20 + 32);
                  }

                  v22 = v21;
                  ++v20;
                  sub_25297D6E8();
                  sub_252A4D4F0(v23, &v58);
                }

                while (v19 != v20);

                v16 = v58;
                goto LABEL_42;
              }
            }

LABEL_42:
            __swift_project_boxed_opaque_existential_1((v1 + 2224), *(v1 + 2248));
            memcpy(__dst, (v1 + 16), 0x1F8uLL);
            v38 = type metadata accessor for ControlHomeCorrectionFlow(0);
            swift_allocObject();
            sub_2529353AC(v1 + 16, v1 + 1024);

            v39 = sub_252BDEA88(__dst, v16);
            *(v1 + 2328) = v38;
            *(v1 + 2336) = sub_252A52CD0(&qword_27F541E38, 255, type metadata accessor for ControlHomeCorrectionFlow, protocol conformance descriptor for ControlHomeCorrectionFlow);
            *(v1 + 2304) = v39;
            sub_252E335E4();
            sub_252935408(v1 + 16);
            __swift_destroy_boxed_opaque_existential_1((v1 + 2304));

LABEL_43:
            __swift_destroy_boxed_opaque_existential_1((v1 + 2224));
            goto LABEL_44;
          }

          sub_252935408(v1 + 16);
        }

        else
        {
        }

        if (qword_27F53F540 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v1 + 2488), qword_27F544E68);
        v35 = sub_252E36AC4();
        v36 = sub_252E374D4();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_252917000, v35, v36, "Failed to get warmupResponses, won't register corrections client", v37, 2u);
          MEMORY[0x2530AED00](v37, -1, -1);
        }

        goto LABEL_43;
      }
    }

    else
    {
      *(v1 + 2296) = 0;
      *(v1 + 2264) = 0u;
      *(v1 + 2280) = 0u;
    }

    sub_25293847C(v1 + 2264, &qword_27F541E30, &qword_252E42880);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v1 + 2488), qword_27F544E68);
    v32 = sub_252E36AC4();
    v33 = sub_252E374D4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_252917000, v32, v33, "Failed to register correction client", v34, 2u);
      MEMORY[0x2530AED00](v34, -1, -1);
    }
  }

LABEL_44:
  v40 = *(v1 + 2480);
  v41 = *(v1 + 2472);
  v42 = *(v1 + 2464);
  v43 = v40;
  sub_252A51F98(v41, v40, v42, (v1 + 2104));

  sub_252929E74(v1 + 2104, v1 + 2144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E28, &qword_252E42858);
  v44 = sub_252E36F94();
  v46 = v45;
  *(v1 + 2584) = v44;
  *(v1 + 2592) = v45;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v47 = *(v1 + 2480);
  __swift_project_value_buffer(*(v1 + 2488), qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000011;
  __dst[1] = 0x8000000252E73E80;
  MEMORY[0x2530AD570](v44, v46);
  MEMORY[0x2530AD570](0x20726F66200A20, 0xE700000000000000);
  v48 = [v47 description];
  v49 = sub_252E36F34();
  v51 = v50;

  MEMORY[0x2530AD570](v49, v51);

  sub_252CC4A5C(__dst[0], __dst[1], 1, 0xD000000000000091, 0x8000000252E73D10);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v52 = qword_27F544F70;
  *(v1 + 2600) = qword_27F544F70;
  v53 = v52;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v54 = *(v1 + 2128);
  v55 = *(v1 + 2136);
  __swift_project_boxed_opaque_existential_1((v1 + 2104), v54);
  v56 = swift_task_alloc();
  *(v1 + 2608) = v56;
  *v56 = v1;
  v56[1] = sub_252A50D40;
  v57 = *(v1 + 2472);

  return sub_252BA1314(v1 + 2184, v57, v40, v54, v55);
}
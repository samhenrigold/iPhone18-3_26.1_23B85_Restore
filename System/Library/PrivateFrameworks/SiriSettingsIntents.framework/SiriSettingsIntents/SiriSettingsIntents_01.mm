uint64_t sub_268CE7E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 200) = v3;
  *(v4 + 192) = a3;
  *(v4 + 184) = a2;
  *(v4 + 176) = a1;
  *(v4 + 112) = v4;
  *(v4 + 120) = 0;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 280) = 0;
  *(v4 + 152) = 0;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  *(v4 + 136) = a3;
  *(v4 + 144) = v3;
  return MEMORY[0x2822009F8](sub_268CE7F20, 0);
}

uint64_t sub_268CE7F20()
{
  v1 = *(v0 + 184);
  *(v0 + 112) = v0;
  v23 = [v1 settingMetadata];
  if (v23)
  {
    v17 = [v23 settingId];
    v18 = sub_268F9AE24();
    v19 = v2;
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v17);
    v20 = v18;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  *(v22 + 96) = v20;
  *(v22 + 104) = v21;
  if (*(v22 + 104))
  {
    v25 = *(v22 + 96);
  }

  else
  {
    v25._countAndFlagsBits = sub_268F9AEF4();
    v25._object = v3;
    if (*(v22 + 104))
    {
      sub_268CD9D30(v22 + 96);
    }
  }

  BinarySettingIdentifier.init(rawValue:)(v25);
  if (v24 == 65)
  {
    goto LABEL_19;
  }

  *(v22 + 280) = v24;

  sub_268F7C430();

  if (!*(v22 + 80))
  {
    sub_268D28414((v22 + 56));
LABEL_19:
    v7 = swift_task_alloc();
    *(v22 + 272) = v7;
    *v7 = *(v22 + 112);
    v7[1] = sub_268CE8C1C;
    v8 = *(v22 + 192);
    v9 = *(v22 + 184);
    v10 = *(v22 + 176);

    return sub_268CE955C(v10, v9, v8);
  }

  v16 = *(v22 + 184);
  sub_268CDF978((v22 + 56), (v22 + 16));
  v14 = *(v22 + 40);
  v15 = *(v22 + 48);
  __swift_project_boxed_opaque_existential_1((v22 + 16), v14);
  if (((*(v15 + 16))(v16, v14) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0((v22 + 16));
    goto LABEL_19;
  }

  v11 = *(v22 + 40);
  v12 = *(v22 + 48);
  __swift_project_boxed_opaque_existential_1((v22 + 16), v11);
  v13 = (*(v12 + 32) + **(v12 + 32));
  v4 = swift_task_alloc();
  *(v22 + 208) = v4;
  *v4 = *(v22 + 112);
  v4[1] = sub_268CE8440;
  v5 = *(v22 + 184);

  return v13(v5, v11, v12);
}

uint64_t sub_268CE8440(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 112) = *v1;
  *(v3 + 216) = a1;

  return MEMORY[0x2822009F8](sub_268CE855C, 0);
}

uint64_t sub_268CE855C()
{
  v1 = v0[27];
  v0[14] = v0;
  v0[19] = v1;
  v0[20] = [v1 code];
  v0[21] = 3;
  type metadata accessor for INSetBinarySettingIntentResponseCode(0);
  sub_268CD91DC();
  if (sub_268F9B754())
  {
    v10 = v11[27];
    MEMORY[0x277D82BE0](v10);
    v2 = swift_task_alloc();
    v11[28] = v2;
    *v2 = v11[14];
    v2[1] = sub_268CE8784;
    v3 = v11[23];
    v4 = v11[22];

    return sub_268CE955C(v4, v3, v10);
  }

  else
  {
    v9 = v11[27];
    MEMORY[0x277D82BE0](v9);
    v6 = swift_task_alloc();
    v11[31] = v6;
    *v6 = v11[14];
    v6[1] = sub_268CE89D0;
    v7 = v11[23];
    v8 = v11[22];

    return sub_268CFB5FC(v8, v7, v9);
  }
}

uint64_t sub_268CE8784(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 112) = *v2;
  *(v5 + 232) = a1;
  *(v5 + 240) = v1;

  if (v1)
  {
    v3 = sub_268CE8E14;
  }

  else
  {

    v3 = sub_268CE8908;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CE8908()
{
  v1 = v0[27];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[29];
  v3 = *(v0[14] + 8);

  return v3(v2);
}

uint64_t sub_268CE89D0(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 112) = *v2;
  *(v5 + 256) = a1;
  *(v5 + 264) = v1;

  if (v1)
  {
    v3 = sub_268CE8EF4;
  }

  else
  {

    v3 = sub_268CE8B54;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CE8B54()
{
  v1 = v0[27];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[32];
  v3 = *(v0[14] + 8);

  return v3(v2);
}

uint64_t sub_268CE8C1C(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 112) = *v2;
  v8 = v7 + 112;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_268CE8E14()
{
  v3 = v0[27];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = *(v0[14] + 8);

  return v1();
}

uint64_t sub_268CE8EF4()
{
  v3 = v0[27];
  v0[14] = v0;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = *(v0[14] + 8);

  return v1();
}

void sub_268CE8FD4(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v45 = a1;
  v44 = a2;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v56 = 0;
  v50 = *v3;
  v41 = 0;
  v42 = (*(*(sub_268F9AB24() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0, v4, v5, v6);
  v43 = v18 - v42;
  v46 = sub_268F9A7B4();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x28223BE20](v45, v44, v7, v8);
  v51 = v18 - v49;
  v64 = v10;
  v63 = v11 & 1;
  v62 = v3;
  v61 = *(v50 + qword_2802F0750);
  v60 = *(v50 + qword_2802F0750 + 8);
  v52 = [v10 settingMetadata];
  if (v52)
  {
    v38 = v52;
    v32 = v52;
    v33 = [v52 settingId];
    v34 = sub_268F9AE24();
    v35 = v12;
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    v36 = v34;
    v37 = v35;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v30 = v37;
  v29 = v36;

  v59 = 49;
  v28 = BinarySettingIdentifier.rawValue.getter();
  v31 = v13;

  v57[0] = v29;
  v57[1] = v30;
  *&v58 = v28;
  *(&v58 + 1) = v31;
  if (v30)
  {
    sub_268D28874(v57, &v55);
    if (*(&v58 + 1))
    {
      v25 = &v54;
      v54 = v55;
      v24 = &v53;
      v53 = v58;
      v26 = MEMORY[0x26D62DB50](v55, *(&v55 + 1), v58, *(&v58 + 1));
      sub_268CD9D30(v24);
      sub_268CD9D30(v25);
      sub_268CD9D30(v57);
      v27 = v26;
      goto LABEL_9;
    }

    sub_268CD9D30(&v55);
    goto LABEL_11;
  }

  if (*(&v58 + 1))
  {
LABEL_11:
    sub_268D28550(v57);
    v27 = 0;
    goto LABEL_9;
  }

  sub_268CD9D30(v57);
  v27 = 1;
LABEL_9:
  v23 = v27;

  if ((v23 & 1) != 0 && (v44 & 1) == 0)
  {
    v19 = 0;
    sub_268F9A8C4();
    v18[0] = sub_268F9A884();
    sub_268F9A7A4();
    v18[1] = sub_268F9A8A4();
    (*(v47 + 8))(v51, v46);

    v21 = sub_268F9A8B4();

    v56 = v21;
    v20 = type metadata accessor for SetBinarySettingIntentCATPatternsExecutor(v19);
    sub_268F9AAF4();
    MEMORY[0x277D82BE0](v21);
    v14 = sub_268F9A904();
    v15 = v39;
    v16 = v14;
    v17 = v21;
    v39[3] = v20;
    v15[4] = &off_28798CE80;
    *v15 = v16;
    MEMORY[0x277D82BD8](v17);
  }

  else
  {
    sub_268CDE730(v40 + qword_2802DBFF0, v39);
  }
}

uint64_t sub_268CE955C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1544) = v3;
  *(v4 + 1536) = a3;
  *(v4 + 1528) = a2;
  *(v4 + 1256) = v4;
  *(v4 + 1272) = 0;
  *(v4 + 1280) = 0;
  *(v4 + 1288) = 0;
  *(v4 + 1296) = 0;
  *(v4 + 1880) = 0;
  *(v4 + 1888) = 0;
  *(v4 + 1320) = 0;
  *(v4 + 1250) = 0;
  *(v4 + 1896) = 0;
  *(v4 + 1904) = 0;
  *(v4 + 1328) = 0;
  *(v4 + 1048) = 0;
  *(v4 + 1056) = 0;
  *(v4 + 1912) = 0;
  *(v4 + 1251) = 0;
  *(v4 + 1344) = 0;
  *(v4 + 1352) = 0;
  *(v4 + 1368) = 0;
  *(v4 + 1384) = 0;
  *(v4 + 1400) = 0;
  *(v4 + 1160) = 0;
  *(v4 + 1168) = 0;
  *(v4 + 1920) = 0;
  *(v4 + 1240) = 0;
  *(v4 + 1248) = 0;
  *(v4 + 1416) = 0;
  *(v4 + 1176) = 0;
  *(v4 + 1184) = 0;
  *(v4 + 1424) = 0;
  *(v4 + 1432) = 0;
  *(v4 + 1456) = 0;
  *(v4 + 1464) = 0;
  *(v4 + 1192) = 0;
  *(v4 + 1200) = 0;
  *(v4 + 1488) = 0;
  *(v4 + 1504) = 0;
  v9 = *v3;
  v5 = sub_268F9AB24();
  *(v4 + 1552) = v5;
  *(v4 + 1560) = *(v5 - 8);
  *(v4 + 1568) = swift_task_alloc();
  *(v4 + 1576) = swift_task_alloc();
  *(v4 + 1272) = a1;
  *(v4 + 1280) = a2;
  *(v4 + 1288) = a3;
  *(v4 + 1296) = v3;
  *(v4 + 1584) = *(v9 + qword_2802F0750);
  *(v4 + 1592) = *(v9 + qword_2802F0750 + 8);

  return MEMORY[0x2822009F8](sub_268CE9798, 0);
}

void *sub_268CE9798()
{
  v243 = v0;
  v1 = v0[192];
  v2 = v0[191];
  v0[157] = v0;
  sub_268D23814(v2, v1, v0 + 12);
  memcpy(v0 + 7, v0 + 12, 0x28uLL);
  if (v0[8])
  {
    memcpy((v238 + 16), (v238 + 56), 0x28uLL);
    v237 = sub_268D2403C(*(v238 + 40), 0, 1);
    if (v237 == 2)
    {
      v78 = *(v238 + 1536);
      v72 = sub_268DC7B48();
      v83 = *v72;
      MEMORY[0x277D82BE0](*v72);
      v82 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v81 = v73;
      MEMORY[0x277D82BE0](v78);
      *(v238 + 1304) = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
      v79 = sub_268F9AE64();
      v80 = v74;
      v81[3] = MEMORY[0x277D837D0];
      v81[4] = sub_268CDD224();
      *v81 = v79;
      v81[1] = v80;
      sub_268CD0F7C();
      sub_268F9AC04("SetBinarySettingIntentResponse response has invalid old value %@", 64, 2, &dword_268CBE000, v83, v82);

      MEMORY[0x277D82BD8](v83);
      sub_268D284D4();
      swift_allocError();
      *v75 = 3;
      swift_willThrow();
      sub_268CD9D30(v238 + 16);
    }

    else
    {
      *(v238 + 1880) = v237 & 1;
      v236 = sub_268D2403C(*(v238 + 48), 0, 1);
      if (v236 != 2)
      {
        v234 = *(v238 + 1528);
        *(v238 + 1888) = v236 & 1;
        v3 = sub_268CDFACC();
        v233 = sub_268CDFAE8((v238 + 16), v237 & 1, v3 & 1);
        *(v238 + 1600) = v233;
        *(v238 + 1320) = v233;
        v235 = sub_268D24458(v237 & 1, v236 & 1);
        MEMORY[0x277D82BE0](v234);
        if (!v235)
        {
          v226 = 0;
LABEL_15:
          MEMORY[0x277D82BD8](*(v238 + 1528));
          if (v226)
          {
            v218 = *(v238 + 1576);
            v217 = *(v238 + 1568);
            v219 = *(v238 + 1552);
            v216 = *(v238 + 1544);
            v215 = *(v238 + 1560);
            sub_268D28C4C();
            *(v238 + 1456) = sub_268CF0C44();
            v7 = sub_268DB98D4();
            v222 = *v7;
            v223 = v7[1];
            v224 = *(v7 + 16);
            v8 = sub_268DC7BA8();
            v225 = *v8;
            MEMORY[0x277D82BE0](*v8);
            (*(v215 + 16))(v218, v216 + qword_2802DBFD8, v219);
            sub_268F9AB14();
            v221 = sub_268F9AB04();
            v220 = *(v215 + 8);
            v220(v217, v219);
            v220(v218, v219);
            sub_268DB9934(v222, v223, v224, v225, (v221 ^ 1) & 1);
            MEMORY[0x277D82BD8](v225);
            if (sub_268D244E8(*(v238 + 32)))
            {
              sub_268D28814((v238 + 16), (v238 + 736));
              v212 = *(v238 + 16);
              v213 = *(v238 + 24);
              v242[2] = 45;
              v9 = BinarySettingIdentifier.rawValue.getter();
              v214 = MEMORY[0x26D62DB50](v212, v213, v9);

              if (v214)
              {
                v207 = *(v238 + 1544);
                sub_268CDE730(v207 + qword_2802DBFF0, v238 + 856);
                v209 = *(v238 + 880);
                v210 = *(v238 + 888);
                __swift_project_boxed_opaque_existential_1((v238 + 856), v209);

                sub_268D28814((v238 + 16), (v238 + 896));
                v208 = swift_task_alloc();
                *(v238 + 1608) = v208;
                *(v208 + 16) = v207;
                *(v208 + 24) = v238 + 16;
                *(v208 + 32) = v237 & 1;
                v211 = (*(v210 + 96) + **(v210 + 96));
                v10 = swift_task_alloc();
                v11 = v208;
                v12 = v209;
                v13 = v210;
                v14 = v211;
                v15 = v10;
                v16 = sub_268D28DF0;
                *(v238 + 1616) = v15;
                *v15 = *(v238 + 1256);
                v15[1] = sub_268CED39C;
              }

              else
              {
                v202 = *(v238 + 1544);
                sub_268CDE730(v202 + qword_2802DBFF0, v238 + 776);
                v204 = *(v238 + 800);
                v205 = *(v238 + 808);
                __swift_project_boxed_opaque_existential_1((v238 + 776), v204);

                sub_268D28814((v238 + 16), (v238 + 816));
                v203 = swift_task_alloc();
                *(v238 + 1640) = v203;
                v203[2] = v233;
                v203[3] = v202;
                v203[4] = v238 + 16;
                v206 = (*(v205 + 32) + **(v205 + 32));
                v17 = swift_task_alloc();
                v11 = v203;
                v12 = v204;
                v13 = v205;
                v14 = v206;
                v18 = v17;
                v16 = sub_268D28DE0;
                *(v238 + 1648) = v18;
                *v18 = *(v238 + 1256);
                v18[1] = sub_268CED740;
              }
            }

            else
            {
              sub_268D28814((v238 + 16), (v238 + 536));
              v199 = *(v238 + 16);
              v200 = *(v238 + 24);
              v242[1] = 45;
              v19 = BinarySettingIdentifier.rawValue.getter();
              v201 = MEMORY[0x26D62DB50](v199, v200, v19);

              if (v201)
              {
                v20 = *(v238 + 1528);
                *(v238 + 1480) = 0;
                v198 = [v20 settingMetadata];
                if (v198 && (v197 = [v198 targetApp], *&v21 = MEMORY[0x277D82BD8](v198).n128_u64[0], v197))
                {
                  v22 = [v197 bundleIdentifier];
                  v196 = v22;
                  if (v22)
                  {
                    v192 = sub_268F9AE24();
                    v193 = v23;
                    MEMORY[0x277D82BD8](v196);
                    v194 = v192;
                    v195 = v193;
                  }

                  else
                  {
                    v194 = 0;
                    v195 = 0;
                  }

                  MEMORY[0x277D82BD8](v197);
                  v190 = v194;
                  v191 = v195;
                }

                else
                {
                  v190 = 0;
                  v191 = 0;
                }

                if (v191)
                {
                  *(v238 + 1192) = v190;
                  *(v238 + 1200) = v191;
                  sub_268F9A994();

                  *(v238 + 1480) = sub_268DE1C68(v190, v191);
                }

                v184 = *(v238 + 1544);
                v185 = *(v238 + 1528);
                sub_268CDE730(v184 + qword_2802DBFF0, v238 + 656);
                v187 = *(v238 + 680);
                v188 = *(v238 + 688);
                __swift_project_boxed_opaque_existential_1((v238 + 656), v187);
                sub_268D28814((v238 + 16), (v238 + 696));

                MEMORY[0x277D82BE0](v185);
                v186 = swift_task_alloc();
                *(v238 + 1672) = v186;
                *(v186 + 16) = v238 + 16;
                *(v186 + 24) = v237 & 1;
                *(v186 + 32) = v238 + 1480;
                *(v186 + 40) = v184;
                *(v186 + 48) = v185;
                v189 = (*(v188 + 160) + **(v188 + 160));
                v24 = swift_task_alloc();
                v11 = v186;
                v12 = v187;
                v13 = v188;
                v14 = v189;
                v25 = v24;
                v16 = sub_268D28DC4;
                *(v238 + 1680) = v25;
                *v25 = *(v238 + 1256);
                v25[1] = sub_268CEDAF4;
              }

              else
              {
                v178 = *(v238 + 1544);
                v179 = *(v238 + 1528);
                sub_268CDE730(v178 + qword_2802DBFF0, v238 + 576);
                v181 = *(v238 + 600);
                v182 = *(v238 + 608);
                __swift_project_boxed_opaque_existential_1((v238 + 576), v181);

                sub_268D28814((v238 + 16), (v238 + 616));
                MEMORY[0x277D82BE0](v179);
                v180 = swift_task_alloc();
                *(v238 + 1704) = v180;
                v180[2] = v178;
                v180[3] = v233;
                v180[4] = v238 + 16;
                v180[5] = v179;
                v183 = (*(v182 + 16) + **(v182 + 16));
                v26 = swift_task_alloc();
                v11 = v180;
                v12 = v181;
                v13 = v182;
                v14 = v183;
                v27 = v26;
                v16 = sub_268D28DB0;
                *(v238 + 1712) = v27;
                *v27 = *(v238 + 1256);
                v27[1] = sub_268CEDEB0;
              }
            }

            return v14(v16, v11, v12, v13);
          }

          v29 = *(v238 + 1528);
          *(v238 + 1250) = 0;
          sub_268DAB218(v29);
          *(v238 + 1896) = v239;
          if (v239 == 65)
          {
            v177 = 0;
          }

          else
          {
            *(v238 + 1920) = v239;

            v242[0] = v239;
            v175 = sub_268E12DF8(v242);
            v176 = v30;

            if ((v176 & 0xFF00) == 0x400)
            {
              v177 = 0;
            }

            else
            {
              *(v238 + 1240) = v175;
              *(v238 + 1248) = v176 & 1;
              *(v238 + 1249) = HIBYTE(v176);

              v174 = sub_268F23C10();

              *(v238 + 1416) = v174;
              *(v238 + 1176) = sub_268E127A4(SHIBYTE(v176));
              *(v238 + 1184) = v31;
              MEMORY[0x277D82BE0](v174);
              if (v174)
              {

                v170 = sub_268F9AE14();

                v171 = [v174 integerForKey_];
                MEMORY[0x277D82BD8](v170);
                MEMORY[0x277D82BD8](v174);
                v172 = v171;
                v173 = 0;
              }

              else
              {
                v172 = 0;
                v173 = 1;
              }

              if (v173)
              {
                v169 = 0;
              }

              else
              {
                *(v238 + 1424) = v172;
                if (v176)
                {
                  v169 = 0;
                }

                else
                {
                  *(v238 + 1432) = v175;

                  v168 = sub_268E12F10();

                  sub_268D28814((v238 + 16), (v238 + 456));
                  if (v172 >= v168)
                  {
                    v167 = 0;
                  }

                  else
                  {
                    *(v238 + 1440) = v175;
                    *(v238 + 1264) = *(v238 + 32);
                    *(v238 + 1448) = *(v238 + 1264);
                    type metadata accessor for INBinarySettingValue(0);
                    sub_268CD925C();
                    v167 = sub_268F9B754();
                  }

                  sub_268CD9D30(v238 + 16);
                  if (v167)
                  {
                    MEMORY[0x277D82BE0](v174);
                    if (v174)
                    {
                      result = v174;
                      if (__OFADD__(v172, 1))
                      {
                        __break(1u);
                        return result;
                      }

                      v166 = sub_268F9AE14();

                      [v174 setInteger:v172 + 1 forKey:v166];
                      MEMORY[0x277D82BD8](v166);
                      MEMORY[0x277D82BD8](v174);
                    }

                    v33 = sub_268DC7B48();
                    v164 = *v33;
                    MEMORY[0x277D82BE0](*v33);
                    v163 = sub_268F9B284();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
                    sub_268F9B734();
                    v162 = v34;
                    sub_268D28814((v238 + 16), (v238 + 496));
                    *(v238 + 1032) = *(v238 + 16);
                    *(v162 + 24) = MEMORY[0x277D837D0];
                    *(v162 + 32) = sub_268CDD224();
                    *v162 = *(v238 + 1032);
                    sub_268CD0F7C();
                    sub_268F9AC04("Providing verbose version of changedBinaryValueTo CAT for %@.", 61, 2, &dword_268CBE000, v164, v163);

                    MEMORY[0x277D82BD8](v164);
                    *(v238 + 1250) = 1;
                    v165 = 1;
                  }

                  else
                  {
                    v165 = 0;
                  }

                  v169 = v165;
                }
              }

              MEMORY[0x277D82BD8](v174);
              v177 = v169;
            }
          }

          v240 = v239;
          v161 = sub_268E57758(&v240);

          if (v161)
          {
            v160 = 1;
          }

          else
          {
            v241[0] = v239;
            v160 = sub_268CE2BF4(v241);
          }

          v157 = *(v238 + 1528);

          *(v238 + 1904) = v160 & 1;
          v154 = [v157 temporalEventTrigger];
          *(v238 + 1736) = v154;
          *(v238 + 1328) = v154;
          v155 = sub_268D25234(v154);
          v156 = v35;
          *(v238 + 1744) = v35;
          *(v238 + 1048) = v155;
          *(v238 + 1056) = v35;
          v158 = sub_268D245A8(v154);
          *(v238 + 1912) = v158;
          *(v238 + 1251) = 0;
          *(v238 + 1336) = 0;
          v36 = [v157 settingMetadata];
          v159 = v36;
          if (v36 && (v153 = [v36 targetApp], *&v37 = MEMORY[0x277D82BD8](v159).n128_u64[0], v153))
          {
            v38 = [v153 bundleIdentifier];
            v152 = v38;
            if (v38)
            {
              v148 = sub_268F9AE24();
              v149 = v39;
              MEMORY[0x277D82BD8](v152);
              v150 = v148;
              v151 = v149;
            }

            else
            {
              v150 = 0;
              v151 = 0;
            }

            MEMORY[0x277D82BD8](v153);
            v146 = v150;
            v147 = v151;
          }

          else
          {
            v146 = 0;
            v147 = 0;
          }

          if (v147)
          {
            *(v238 + 1160) = v146;
            *(v238 + 1168) = v147;
            sub_268F9A994();

            *(v238 + 1336) = sub_268DE1C68(v146, v147);

            v144 = sub_268DFFEC0(v146, v147);

            *(v238 + 1251) = v144 & 1;

            v145 = v144;
          }

          else
          {
            v145 = 0;
          }

          v40 = *(v238 + 1576);
          v136 = *(v238 + 1568);
          v137 = *(v238 + 1552);
          v134 = *(v238 + 1544);
          v135 = *(v238 + 1560);
          v41 = sub_268DB98D4();
          v140 = *v41;
          v141 = v41[1];
          v142 = *(v41 + 16);
          v42 = sub_268DC7BA8();
          v143 = *v42;
          MEMORY[0x277D82BE0](*v42);
          (*(v135 + 16))(v40, v134 + qword_2802DBFD8, v137);
          sub_268F9AB14();
          v139 = sub_268F9AB04();
          v138 = *(v135 + 8);
          v138(v136, v137);
          v138(v40, v137);
          sub_268DB9934(v140, v141, v142, v143, (v139 ^ 1) & 1);
          MEMORY[0x277D82BD8](v143);
          sub_268D28C4C();
          *(v238 + 1344) = sub_268CF0C44();
          if (v160)
          {
            v133 = [*(v238 + 1528) settingMetadata];
            if (v133)
            {
              v128 = [v133 settingId];
              v129 = sub_268F9AE24();
              v130 = v43;
              MEMORY[0x277D82BD8](v133);
              MEMORY[0x277D82BD8](v128);
              v131 = v129;
              v132 = v130;
            }

            else
            {
              v131 = 0;
              v132 = 0;
            }

            v241[2] = 45;
            v126 = BinarySettingIdentifier.rawValue.getter();
            v127 = v44;

            *(v238 + 968) = v131;
            *(v238 + 976) = v132;
            *(v238 + 984) = v126;
            *(v238 + 992) = v127;
            if (*(v238 + 976))
            {
              sub_268D28874((v238 + 968), (v238 + 1112));
              if (*(v238 + 992))
              {
                *(v238 + 1128) = *(v238 + 1112);
                *(v238 + 1144) = *(v238 + 984);
                v124 = MEMORY[0x26D62DB50](*(v238 + 1128), *(v238 + 1136), *(v238 + 1144), *(v238 + 1152));
                sub_268CD9D30(v238 + 1144);
                sub_268CD9D30(v238 + 1128);
                sub_268CD9D30(v238 + 968);
                v125 = v124;
LABEL_95:

                if ((v125 & 1) == 0)
                {
                  v112 = *(v238 + 1544);
                  v113 = *(v238 + 1528);
                  sub_268CE8FD4(v113, v236 & 1, (v238 + 296));
                  v115 = *(v238 + 320);
                  v116 = *(v238 + 328);
                  __swift_project_boxed_opaque_existential_1((v238 + 296), v115);

                  sub_268D28814((v238 + 16), (v238 + 336));
                  MEMORY[0x277D82BE0](v113);
                  v114 = swift_task_alloc();
                  *(v238 + 1784) = v114;
                  v114[2] = v238 + 1336;
                  v114[3] = v233;
                  v114[4] = v112;
                  v114[5] = v155;
                  v114[6] = v156;
                  v114[7] = v238 + 16;
                  v114[8] = v113;
                  v117 = (*(v116 + 152) + **(v116 + 152));
                  v55 = swift_task_alloc();
                  v56 = sub_268D28D6C;
                  v57 = v114;
                  v58 = v115;
                  v59 = v116;
                  v60 = v117;
                  *(v238 + 1792) = v55;
                  *v55 = *(v238 + 1256);
                  v55[1] = sub_268CEE6B8;
                  v61 = v158;
                  v62 = v236 & 1;
                  v63 = v177 & 1;

                  return v60(v61, v62, v63, v56, v57, v58, v59);
                }

                v118 = *(v238 + 1544);
                v119 = *(v238 + 1528);
                sub_268CDE730(v118 + qword_2802DBFF0, v238 + 376);
                v121 = *(v238 + 400);
                v122 = *(v238 + 408);
                __swift_project_boxed_opaque_existential_1((v238 + 376), v121);
                sub_268D28814((v238 + 16), (v238 + 416));

                MEMORY[0x277D82BE0](v119);
                v120 = swift_task_alloc();
                *(v238 + 1752) = v120;
                *(v120 + 16) = v238 + 1336;
                *(v120 + 24) = v238 + 16;
                *(v120 + 32) = v237 & 1;
                *(v120 + 40) = v118;
                *(v120 + 48) = v155;
                *(v120 + 56) = v156;
                *(v120 + 64) = v119;
                v123 = (*(v122 + 72) + **(v122 + 72));
                v45 = swift_task_alloc();
                v46 = sub_268D28D8C;
                v47 = v120;
                v48 = v121;
                v49 = v122;
                v50 = v123;
                *(v238 + 1760) = v45;
                *v45 = *(v238 + 1256);
                v45[1] = sub_268CEE274;
                v51 = v145 & 1;
                v52 = v158;
                v53 = v236 & 1;
                v54 = v177 & 1;

                return v50(v51, v52, v53, v54, v46, v47, v48, v49);
              }

              sub_268CD9D30(v238 + 1112);
            }

            else if (!*(v238 + 992))
            {
              sub_268CD9D30(v238 + 968);
              v125 = 1;
              goto LABEL_95;
            }

            sub_268D28550(v238 + 968);
            v125 = 0;
            goto LABEL_95;
          }

          v111 = [*(v238 + 1528) settingMetadata];
          if (v111)
          {
            v106 = [v111 settingId];
            v107 = sub_268F9AE24();
            v108 = v64;
            MEMORY[0x277D82BD8](v111);
            MEMORY[0x277D82BD8](v106);
            v109 = v107;
            v110 = v108;
          }

          else
          {
            v109 = 0;
            v110 = 0;
          }

          v241[1] = 45;
          v104 = BinarySettingIdentifier.rawValue.getter();
          v105 = v65;

          *(v238 + 936) = v109;
          *(v238 + 944) = v110;
          *(v238 + 952) = v104;
          *(v238 + 960) = v105;
          if (*(v238 + 944))
          {
            sub_268D28874((v238 + 936), (v238 + 1064));
            if (*(v238 + 960))
            {
              *(v238 + 1080) = *(v238 + 1064);
              *(v238 + 1096) = *(v238 + 952);
              v102 = MEMORY[0x26D62DB50](*(v238 + 1080), *(v238 + 1088), *(v238 + 1096), *(v238 + 1104));
              sub_268CD9D30(v238 + 1096);
              sub_268CD9D30(v238 + 1080);
              sub_268CD9D30(v238 + 936);
              v103 = v102;
LABEL_114:

              if ((v103 & 1) == 0)
              {
                v90 = *(v238 + 1544);
                v91 = *(v238 + 1528);
                sub_268CE8FD4(v91, v236 & 1, (v238 + 136));
                v93 = *(v238 + 160);
                v94 = *(v238 + 168);
                __swift_project_boxed_opaque_existential_1((v238 + 136), v93);

                sub_268D28814((v238 + 16), (v238 + 176));
                MEMORY[0x277D82BE0](v91);
                v92 = swift_task_alloc();
                *(v238 + 1848) = v92;
                v92[2] = v233;
                v92[3] = v238 + 1336;
                v92[4] = v90;
                v92[5] = v155;
                v92[6] = v156;
                v92[7] = v238 + 16;
                v92[8] = v91;
                v95 = (*(v94 + 8) + **(v94 + 8));
                v67 = swift_task_alloc();
                v56 = sub_268D28CB0;
                v57 = v92;
                v58 = v93;
                v59 = v94;
                v60 = v95;
                *(v238 + 1856) = v67;
                *v67 = *(v238 + 1256);
                v67[1] = sub_268CEEF50;
                v61 = v158;
                v62 = v236 & 1;
                v63 = v177 & 1;

                return v60(v61, v62, v63, v56, v57, v58, v59);
              }

              v96 = *(v238 + 1544);
              v97 = *(v238 + 1528);
              sub_268CDE730(v96 + qword_2802DBFF0, v238 + 216);
              v99 = *(v238 + 240);
              v100 = *(v238 + 248);
              __swift_project_boxed_opaque_existential_1((v238 + 216), v99);

              sub_268D28814((v238 + 16), (v238 + 256));
              MEMORY[0x277D82BE0](v97);
              v98 = swift_task_alloc();
              *(v238 + 1816) = v98;
              *(v98 + 16) = v238 + 1336;
              *(v98 + 24) = v155;
              *(v98 + 32) = v156;
              *(v98 + 40) = v96;
              *(v98 + 48) = v238 + 16;
              *(v98 + 56) = v237 & 1;
              *(v98 + 64) = v97;
              v101 = (*(v100 + 104) + **(v100 + 104));
              v66 = swift_task_alloc();
              v46 = sub_268D28D48;
              v47 = v98;
              v48 = v99;
              v49 = v100;
              v50 = v101;
              *(v238 + 1824) = v66;
              *v66 = *(v238 + 1256);
              v66[1] = sub_268CEEB0C;
              v51 = v145 & 1;
              v52 = v158;
              v53 = v236 & 1;
              v54 = v177 & 1;

              return v50(v51, v52, v53, v54, v46, v47, v48, v49);
            }

            sub_268CD9D30(v238 + 1064);
          }

          else if (!*(v238 + 960))
          {
            sub_268CD9D30(v238 + 936);
            v103 = 1;
            goto LABEL_114;
          }

          sub_268D28550(v238 + 936);
          v103 = 0;
          goto LABEL_114;
        }

        *(v238 + 1520) = *(v238 + 1528);
        v4 = sub_268CD7620();
        v230 = SettingIntent.settingIdentifier.getter(v4, &protocol witness table for INSetBinarySettingIntent);
        v231 = v5;

        v242[3] = 1;
        v229 = BinarySettingIdentifier.rawValue.getter();
        v232 = v6;

        *(v238 + 1000) = v230;
        *(v238 + 1008) = v231;
        *(v238 + 1016) = v229;
        *(v238 + 1024) = v232;
        if (*(v238 + 1008))
        {
          sub_268D28874((v238 + 1000), (v238 + 1208));
          if (*(v238 + 1024))
          {
            *(v238 + 1224) = *(v238 + 1016);
            v227 = MEMORY[0x26D62DB50](*(v238 + 1208), *(v238 + 1216), *(v238 + 1224), *(v238 + 1232));
            sub_268CD9D30(v238 + 1224);
            sub_268CD9D30(v238 + 1208);
            sub_268CD9D30(v238 + 1000);
            v228 = v227;
LABEL_11:

            v226 = v228 ^ 1;
            goto LABEL_15;
          }

          sub_268CD9D30(v238 + 1208);
        }

        else if (!*(v238 + 1024))
        {
          sub_268CD9D30(v238 + 1000);
          v228 = 1;
          goto LABEL_11;
        }

        sub_268D28550(v238 + 1000);
        v228 = 0;
        goto LABEL_11;
      }

      v84 = *(v238 + 1536);
      v68 = sub_268DC7B48();
      v89 = *v68;
      MEMORY[0x277D82BE0](*v68);
      v88 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v87 = v69;
      MEMORY[0x277D82BE0](v84);
      *(v238 + 1312) = v84;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
      v85 = sub_268F9AE64();
      v86 = v70;
      v87[3] = MEMORY[0x277D837D0];
      v87[4] = sub_268CDD224();
      *v87 = v85;
      v87[1] = v86;
      sub_268CD0F7C();
      sub_268F9AC04("SetBinarySettingIntentResponse response has invalid new value %@", 64, 2, &dword_268CBE000, v89, v88);

      MEMORY[0x277D82BD8](v89);
      sub_268D284D4();
      swift_allocError();
      *v71 = 2;
      swift_willThrow();
      sub_268CD9D30(v238 + 16);
    }
  }

  else
  {
    sub_268D284D4();
    swift_allocError();
    *v76 = 4;
    swift_willThrow();
  }

  v77 = *(*(v238 + 1256) + 8);

  return v77();
}

uint64_t sub_268CED39C(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[157] = *v2;
  v6[203] = a1;
  v6[204] = v1;

  if (v1)
  {
    v3 = sub_268CEF3A4;
  }

  else
  {

    sub_268CD9D30(v5);
    v3 = sub_268CED544;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CED544()
{
  v1 = v0[203];
  v7 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[182];
  v0[182] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v12 = v0[203];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));

  v5 = *(v0[157] + 8);

  return v5(v12);
}

uint64_t sub_268CED740(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[157] = *v2;
  v6[207] = a1;
  v6[208] = v1;

  if (v1)
  {
    v3 = sub_268CEF670;
  }

  else
  {

    sub_268CD9D30(v5);
    v3 = sub_268CED8F8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CED8F8()
{
  v1 = v0[207];
  v7 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[182];
  v0[182] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 97);
  v12 = v0[207];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));

  v5 = *(v0[157] + 8);

  return v5(v12);
}

uint64_t sub_268CEDAF4(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[157] = *v2;
  v7[211] = a1;
  v7[212] = v1;

  if (v1)
  {
    v3 = sub_268CEF944;
  }

  else
  {
    v5 = *(v6 + 1512);

    sub_268CD9D30(v6);

    v3 = sub_268CEDCAC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CEDCAC()
{
  v1 = v0[211];
  v7 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[182];
  v0[182] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 82);
  sub_268D287E8(v0 + 185);
  v12 = v0[211];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));

  v5 = *(v0[157] + 8);

  return v5(v12);
}

uint64_t sub_268CEDEB0(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[157] = *v2;
  v7[215] = a1;
  v7[216] = v1;

  if (v1)
  {
    v3 = sub_268CEFC58;
  }

  else
  {
    v5 = *(v6 + 1512);

    sub_268CD9D30(v6);

    v3 = sub_268CEE078;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CEE078()
{
  v1 = v0[215];
  v7 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[182];
  v0[182] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v12 = v0[215];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));

  v5 = *(v0[157] + 8);

  return v5(v12);
}

uint64_t sub_268CEE274(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[157] = *v2;
  v7[221] = a1;
  v7[222] = v1;

  if (v1)
  {
    v3 = sub_268CEFF74;
  }

  else
  {
    v5 = *(v6 + 1512);

    sub_268CD9D30(v6);

    v3 = sub_268CEE43C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CEE43C()
{
  v1 = v0[221];
  v7 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[168];
  v0[168] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v13 = v0[221];
  v12 = v0[217];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v12);

  sub_268CD9D30((v0 + 2));

  v5 = *(v0[157] + 8);

  return v5(v13);
}

uint64_t sub_268CEE6B8(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[157] = *v2;
  v7[225] = a1;
  v7[226] = v1;

  if (v1)
  {
    v3 = sub_268CF02A4;
  }

  else
  {
    v5 = *(v6 + 1512);

    sub_268CD9D30(v6);

    v3 = sub_268CEE890;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CEE890()
{
  v1 = v0[225];
  v7 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[168];
  v0[168] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v13 = v0[225];
  v12 = v0[217];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v12);

  sub_268CD9D30((v0 + 2));

  v5 = *(v0[157] + 8);

  return v5(v13);
}

uint64_t sub_268CEEB0C(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[157] = *v2;
  v7[229] = a1;
  v7[230] = v1;

  if (v1)
  {
    v3 = sub_268CF05DC;
  }

  else
  {
    v5 = *(v6 + 1512);

    sub_268CD9D30(v6);

    v3 = sub_268CEECD4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CEECD4()
{
  v1 = v0[229];
  v7 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[168];
  v0[168] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v13 = v0[229];
  v12 = v0[217];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v12);

  sub_268CD9D30((v0 + 2));

  v5 = *(v0[157] + 8);

  return v5(v13);
}

uint64_t sub_268CEEF50(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[157] = *v2;
  v7[233] = a1;
  v7[234] = v1;

  if (v1)
  {
    v3 = sub_268CF090C;
  }

  else
  {
    v5 = *(v6 + 1512);

    sub_268CD9D30(v6);

    v3 = sub_268CEF128;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CEF128()
{
  v1 = v0[233];
  v7 = v1;
  v0[157] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[168];
  v0[168] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v13 = v0[233];
  v12 = v0[217];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v12);

  sub_268CD9D30((v0 + 2));

  v5 = *(v0[157] + 8);

  return v5(v13);
}

uint64_t sub_268CEF3A4()
{
  v13 = v0[204];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v1 = v13;
  v0[188] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[189] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#UnspecifiedActionForSupportedMultiSetting pattern execution error %@", 91, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[157] + 8);

  return v6();
}

uint64_t sub_268CEF670()
{
  v13 = v0[208];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 97);
  v1 = v13;
  v0[186] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[187] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#UnspecifiedActionForSupportedBinarySetting pattern execution error %@", 92, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[157] + 8);

  return v6();
}

uint64_t sub_268CEF944()
{
  v8 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));

  MEMORY[0x277D82BD8](v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 82);
  sub_268D287E8(v0 + 185);
  v14 = v0[212];
  v1 = v14;
  v0[183] = v14;
  v2 = sub_268DC7B48();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v14;
  v0[184] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#NoNeedToChangeBinaryValueTo pattern execution error %@", 77, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[157] + 8);

  return v6();
}

uint64_t sub_268CEFC58()
{
  v8 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  MEMORY[0x277D82BD8](v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v14 = v0[216];
  v1 = v14;
  v0[183] = v14;
  v2 = sub_268DC7B48();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v14;
  v0[184] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#NoNeedToChangeBinaryValueTo pattern execution error %@", 77, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[182]);

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[157] + 8);

  return v6();
}

uint64_t sub_268CEFF74()
{
  v14 = v0[222];
  v15 = v0[217];
  v8 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));

  MEMORY[0x277D82BD8](v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);
  v1 = v14;
  v0[175] = v14;
  v2 = sub_268DC7B48();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v14;
  v0[176] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#ChangedMultiSettingValueToSpokenOnly pattern execution error %@", 86, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v15);

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[157] + 8);

  return v6();
}

uint64_t sub_268CF02A4()
{
  v14 = v0[226];
  v15 = v0[217];
  v8 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  MEMORY[0x277D82BD8](v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v1 = v14;
  v0[173] = v14;
  v2 = sub_268DC7B48();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v14;
  v0[174] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#ChangedBinaryValueToSpokenOnly pattern execution error %@", 80, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v15);

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[157] + 8);

  return v6();
}

uint64_t sub_268CF05DC()
{
  v14 = v0[230];
  v15 = v0[217];
  v8 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  MEMORY[0x277D82BD8](v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v1 = v14;
  v0[171] = v14;
  v2 = sub_268DC7B48();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v14;
  v0[172] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#ChangedMultiSettingValueTo pattern execution error %@", 76, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v15);

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[157] + 8);

  return v6();
}

uint64_t sub_268CF090C()
{
  v14 = v0[234];
  v15 = v0[217];
  v8 = v0[191];
  v0[157] = v0;

  sub_268CD9D30((v0 + 2));
  MEMORY[0x277D82BD8](v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v14;
  v0[169] = v14;
  v2 = sub_268DC7B48();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v14;
  v0[170] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#ChangedBinaryValueTo pattern execution error %@", 70, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[168]);
  sub_268D287E8(v0 + 167);

  MEMORY[0x277D82BD8](v15);

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[157] + 8);

  return v6();
}

uint64_t sub_268CF0C74(void *a1, void *a2, uint64_t *a3, unsigned int a4)
{
  v29 = a1;
  v17 = a2;
  v22 = a3;
  v25 = a4;
  v39 = 0;
  v38 = 0;
  v35 = 0;
  v34 = 0;
  v20 = *a2;
  v18 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29, v17, v22, v25);
  v32 = &v15 - v18;
  v19 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v27 = &v15 - v19;
  v39 = v9;
  v38 = v10;
  v30 = 0;
  v37 = *(v20 + qword_2802F0750);
  v36 = *(v20 + qword_2802F0750 + 8);
  v35 = v11;
  v31 = 1;
  v34 = v12 & 1;
  v21 = *(v10 + qword_2802DBFE0);

  *v29 = v21;

  type metadata accessor for SettingsMultiSetting(v30);
  v23 = *v22;
  v24 = v22[1];

  v26 = sub_268E067CC(v23, v24, v25 & 1);
  v28 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedMultiSettingParameters(v30);
  *(v29 + v28[6]) = v26;

  v33 = 45;
  sub_268E0697C(&v33, v27);
  sub_268D29FC8(v27, v29 + v28[5]);
  sub_268D2A1F0(v29 + v28[5], v32);
  v13 = sub_268F9A9C4();
  v16 = (*(*(v13 - 8) + 48))(v32, v31) == 1;
  v15 = v16;
  result = sub_268D28588(v32);
  *(v29 + v28[7]) = v15;
  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF0F3C(void *a1, uint64_t a2, void *a3, Swift::String *a4)
{
  v28 = a1;
  v25 = a2;
  v27 = a3;
  v30 = a4;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v36 = 0;
  v34 = 0;
  v22 = *a3;
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  v18 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v4, v27, v30);
  v20 = &v14[-v18];
  v21 = v18;
  MEMORY[0x28223BE20](v5, &v14[-v18], v6, v7);
  v23 = &v14[-v21];
  v41 = v8;
  v40 = v9;
  v39 = v10;
  v24 = 0;
  v38 = *(v22 + qword_2802F0750);
  v37 = *(v22 + qword_2802F0750 + 8);
  v36 = v11;

  v26 = type metadata accessor for SetBinarySettingIntentUnspecifiedActionForSupportedBinarySettingParameters(v24);
  *(v28 + v26[6]) = v25;

  v29 = *(v27 + qword_2802DBFE0);

  *v28 = v29;

  v31 = *v30;

  result.value = BinarySettingIdentifier.init(rawValue:)(v31).value;
  v32 = v35;
  if (v35 != 65)
  {
    v17 = v32;
    v34 = v32;
    v33 = v32;
    sub_268E0697C(&v33, v23);
    sub_268D29FC8(v23, v28 + v26[5]);
    sub_268D2A1F0(v28 + v26[5], v20);
    v13 = sub_268F9A9C4();
    v16 = (*(*(v13 - 8) + 48))(v20, 1) == 1;
    v15 = v16;
    result.value = sub_268D28588(v20);
    *(v28 + v26[7]) = v15;
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier sub_268CF1210(uint64_t *a1, uint64_t *a2, unsigned int a3, uint64_t *a4, void *a5, uint64_t a6)
{
  v46 = a1;
  v47 = a2;
  v36 = a3;
  v39 = a4;
  v41 = a5;
  v43 = a6;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v52 = 0;
  v33 = *a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v25 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v7, v8, v9);
  v26 = v21 - v25;
  v37 = 0;
  v27 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27, v10, v11, v12);
  v31 = v21 - v30;
  v63 = v21 - v30;
  v32 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v37, v47, v36, v39);
  v45 = v21 - v32;
  v62 = v13;
  v61 = v14;
  v60 = *(v33 + qword_2802F0750);
  v59 = *(v33 + qword_2802F0750 + 8);
  v58 = v15 & 1;
  v57 = v16;
  v56 = v17;
  v55 = v18;
  type metadata accessor for SettingsMultiSetting(v19);
  v34 = *v47;
  v35 = v47[1];

  v38 = sub_268E067CC(v34, v35, v36 & 1);
  v44 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeMultiSettingValueToParameters(v37);
  *(v46 + v44[7]) = v38;

  v40 = *v39;

  *v46 = v40;

  v42 = *(v41 + qword_2802DBFE0);

  v46[1] = v42;

  v54 = 45;
  sub_268E0697C(&v54, v45);
  sub_268D29FC8(v45, v46 + v44[6]);
  sub_268E06D9C(v43, v45);
  sub_268D29FC8(v45, v46 + v44[14]);
  sub_268E798B8(v45);
  sub_268D29FC8(v45, v46 + v44[13]);
  v48 = *v47;

  result = BinarySettingIdentifier.init(rawValue:)(v48).value;
  v49 = v53;
  if (v53 != 65)
  {
    v24 = v49;
    v23 = v49;
    v52 = v49;
    v51 = v49;
    sub_268E799BC(v45);
    sub_268D29FC8(v45, v46 + v44[9]);
    v50 = v23;
    sub_268E7A8B4(v26);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      return sub_268D2A318(v26);
    }

    else
    {
      sub_268D2A4A0(v26, v31);
      v22 = sub_268F9A9C4();
      v21[0] = *(v22 - 8);
      v21[1] = v22 - 8;
      (*(v21[0] + 16))(v45, v31);
      (*(v21[0] + 56))(v45, 0, 1, v22);
      sub_268D29FC8(v45, v46 + v44[10]);
      sub_268D2A1F0((v31 + *(v27 + 20)), v45);
      sub_268D29FC8(v45, v46 + v44[12]);
      sub_268D2A1F0((v31 + *(v27 + 24)), v45);
      sub_268D29FC8(v45, v46 + v44[11]);
      return sub_268D2A724(v31);
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF17AC(uint64_t *a1, void *a2, uint64_t a3, Swift::String *a4, uint64_t a5)
{
  v43 = a1;
  v36 = a2;
  v42 = a3;
  v45 = a4;
  v35 = a5;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  v50 = 0;
  v38 = *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v28 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v29 = &v18 - v28;
  v41 = 0;
  v30 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v31 = *(v30 - 8);
  v32 = v30 - 8;
  v33 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v30, v9, v10, v11);
  v34 = &v18 - v33;
  v63 = &v18 - v33;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, v36, v42, v45);
  v39 = &v18 - v37;
  v62 = v12;
  v61 = v13;
  v60 = *(v38 + qword_2802F0750);
  v59 = *(v38 + qword_2802F0750 + 8);
  v58 = v14;
  v57 = v15;
  v56 = v16;
  v40 = *(v13 + qword_2802DBFE0);

  *v43 = v40;

  v44 = type metadata accessor for SetBinarySettingIntentNoNeedToChangeBinaryValueToParameters(v41);
  *(v43 + v44[6]) = v42;

  v46 = *v45;

  result.value = BinarySettingIdentifier.init(rawValue:)(v46).value;
  v47 = v55;
  if (v55 != 65)
  {
    v27 = v47;
    v24 = v47;
    v54 = v47;
    v53 = v47;
    sub_268E0697C(&v53, v39);
    sub_268D29FC8(v39, v43 + v44[5]);
    v52 = v24;
    sub_268E06F58(&v52, v39);
    sub_268D29FC8(v39, v43 + v44[7]);
    sub_268E798B8(v39);
    sub_268D29FC8(v39, v43 + v44[9]);
    v25 = *v45;

    BinarySettingIdentifier.init(rawValue:)(v25);
    v26 = v51;
    if (v51 != 65)
    {
      v23 = v26;
      v22 = v26;
      v50 = v26;
      v49 = v26;
      sub_268E799BC(v39);
      sub_268D29FC8(v39, v43 + v44[8]);
      v48 = v22;
      sub_268E7A8B4(v29);
      if ((*(v31 + 48))(v29, 1, v30) == 1)
      {
        sub_268D2A318(v29);
      }

      else
      {
        sub_268D2A4A0(v29, v34);
        v21 = sub_268F9A9C4();
        v19 = *(v21 - 8);
        v20 = v21 - 8;
        (*(v19 + 16))(v39, v34);
        (*(v19 + 56))(v39, 0, 1, v21);
        sub_268D29FC8(v39, v43 + v44[10]);
        sub_268D2A1F0((v34 + *(v30 + 20)), v39);
        sub_268D29FC8(v39, v43 + v44[12]);
        sub_268D2A1F0((v34 + *(v30 + 24)), v39);
        sub_268D29FC8(v39, v43 + v44[11]);
        sub_268D2A724(v34);
      }
    }

    sub_268E06D9C(v35, v39);
    return sub_268D29FC8(v39, v43 + v44[13]);
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier sub_268CF1D48(uint64_t *a1, uint64_t a2, uint64_t *a3, unsigned int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v78 = a1;
  v61 = a2;
  v70 = a3;
  v73 = a4;
  v77 = a5;
  v80 = a6;
  v81 = a7;
  v60 = a8;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v94 = 0;
  v93 = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v84 = 0;
  v67 = *a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v53 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v54 = &v39 - v53;
  v74 = 0;
  v55 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v56 = *(v55 - 8);
  v57 = v55 - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v55, v12, v13, v14);
  v59 = &v39 - v58;
  v100 = &v39 - v58;
  v62 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v78, v61, v70, v73);
  v63 = &v39 - v62;
  v64 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v17, v18, v19);
  v65 = &v39 - v64;
  v66 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v22, v23, v24);
  v68 = &v39 - v66;
  v99 = v25;
  v98 = v26;
  v97 = v27;
  v96 = *(v67 + qword_2802F0750);
  v95 = *(v67 + qword_2802F0750 + 8);
  v94 = v28 & 1;
  v93 = v29;
  v91 = v30;
  v92 = v31;
  v90 = v32;
  v69 = *v26;

  *v78 = v69;

  type metadata accessor for SettingsMultiSetting(v74);
  v71 = *v70;
  v72 = v70[1];

  v75 = sub_268E067CC(v71, v72, v73 & 1);
  v76 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToSpokenOnlyParameters(v74);
  *(v78 + v76[10]) = v75;

  v79 = *(v77 + qword_2802DBFE0);

  v78[1] = v79;

  if (sub_268F9AF14())
  {
    v33 = sub_268F9A9C4();
    (*(*(v33 - 8) + 56))(v68, 1);
  }

  else
  {

    v52 = 0;
    sub_268F9A9A4();
    v34 = sub_268F9A9C4();
    (*(*(v34 - 8) + 56))(v68, 0, 1);
  }

  sub_268D29FC8(v68, v78 + v76[8]);
  v50 = 45;
  v89 = 45;
  sub_268E0697C(&v89, v65);
  sub_268D29FC8(v65, v78 + v76[9]);
  v88 = v50;
  sub_268E06F58(&v88, v65);
  sub_268D29FC8(v65, v78 + v76[11]);
  v87 = v50;
  v86 = v60;
  v35 = sub_268CD7620();
  v51 = SettingIntent.deviceCategory.getter(v35, &protocol witness table for INSetBinarySettingIntent);
  if (v36)
  {
    v47 = 0;
    v48 = 1;
  }

  else
  {
    v49 = v51;
    sub_268CD4334();
    v47 = v37;
    v48 = 0;
  }

  sub_268E06FB0(&v87, v47, v48 & 1, v63);
  sub_268D29FC8(v63, v78 + v76[12]);
  sub_268E798B8(v65);
  sub_268D29FC8(v65, v78 + v76[14]);
  v45 = *v70;

  result = BinarySettingIdentifier.init(rawValue:)(v45).value;
  v46 = v85;
  if (v85 != 65)
  {
    v44 = v46;
    v43 = v46;
    v84 = v46;
    v83 = v46;
    sub_268E799BC(v65);
    sub_268D29FC8(v65, v78 + v76[13]);
    v82 = v43;
    sub_268E7A8B4(v54);
    if ((*(v56 + 48))(v54, 1, v55) == 1)
    {
      return sub_268D2A318(v54);
    }

    else
    {
      sub_268D2A4A0(v54, v59);
      v42 = sub_268F9A9C4();
      v40 = *(v42 - 8);
      v41 = v42 - 8;
      (*(v40 + 16))(v65, v59);
      (*(v40 + 56))(v65, 0, 1, v42);
      sub_268D29FC8(v65, v78 + v76[15]);
      sub_268D2A1F0((v59 + *(v55 + 20)), v65);
      sub_268D29FC8(v65, v78 + v76[17]);
      sub_268D2A1F0((v59 + *(v55 + 24)), v65);
      sub_268D29FC8(v65, v78 + v76[16]);
      return sub_268D2A724(v59);
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF25D0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, Swift::String *a7, uint64_t a8)
{
  v70 = a1;
  v59 = a2;
  v67 = a3;
  v69 = a4;
  v72 = a5;
  v73 = a6;
  v57 = a7;
  v58 = a8;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  v81 = 0;
  v76 = 0;
  v63 = *a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v45 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v46 = &v34[-v45];
  v66 = 0;
  v47 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v48 = *(v47 - 8);
  v49 = v47 - 8;
  v50 = (*(v48 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66, v12, v13, v14);
  v51 = &v34[-v50];
  v93 = &v34[-v50];
  v52 = sub_268F9A9C4();
  v53 = *(v52 - 8);
  v54 = v52 - 8;
  v55 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v52, v15, v16, v17);
  v56 = &v34[-v55];
  v60 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v70, v59, v67, v69);
  v61 = &v34[-v60];
  v62 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, v20, v21, v22);
  v64 = &v34[-v62];
  v92 = v23;
  v91 = v24;
  v90 = v25;
  v89 = v26;
  v88 = *(v63 + qword_2802F0750);
  v87 = *(v63 + qword_2802F0750 + 8);
  v85 = v27;
  v86 = v28;
  v84 = v29;
  v83 = v30;
  v65 = *v24;

  *v70 = v65;

  v68 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToSpokenOnlyParameters(v66);
  *(v70 + v68[9]) = v67;

  v71 = *(v69 + qword_2802DBFE0);

  v70[1] = v71;

  if (sub_268F9AF14())
  {
    (*(v53 + 56))(v64, 1, 1, v52);
  }

  else
  {

    sub_268F9A9A4();
    (*(v53 + 56))(v64, 0, 1, v52);
  }

  v31 = v56;
  sub_268D29FC8(v64, v70 + v68[7]);

  v41 = *(v53 + 16);
  v42 = v53 + 16;
  v41(v31, v67 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v52);

  v43._countAndFlagsBits = sub_268F9A9B4();
  v43._object = v32;
  (*(v53 + 8))(v56, v52);
  result.value = BinarySettingIdentifier.init(rawValue:)(v43).value;
  v44 = v82;
  if (v82 != 65)
  {
    v40 = v44;
    v37 = v44;
    v81 = v44;
    v80 = v44;
    sub_268E0697C(&v80, v61);
    sub_268D29FC8(v61, v70 + v68[8]);
    v79 = v37;
    sub_268E06F58(&v79, v61);
    sub_268D29FC8(v61, v70 + v68[10]);
    v78 = v37;
    sub_268E06FB0(&v78, 0, 1u, v61);
    sub_268D29FC8(v61, v70 + v68[16]);
    sub_268E798B8(v61);
    sub_268D29FC8(v61, v70 + v68[12]);
    v38 = *v57;

    BinarySettingIdentifier.init(rawValue:)(v38);
    v39 = v77;
    if (v77 != 65)
    {
      v36 = v39;
      v35 = v39;
      v76 = v39;
      v75 = v39;
      sub_268E799BC(v61);
      sub_268D29FC8(v61, v70 + v68[11]);
      v74 = v35;
      sub_268E7A8B4(v46);
      if ((*(v48 + 48))(v46, 1, v47) == 1)
      {
        sub_268D2A318(v46);
      }

      else
      {
        sub_268D2A4A0(v46, v51);
        v41(v61, v51, v52);
        (*(v53 + 56))(v61, 0, 1, v52);
        sub_268D29FC8(v61, v70 + v68[13]);
        sub_268D2A1F0(&v51[*(v47 + 20)], v61);
        sub_268D29FC8(v61, v70 + v68[15]);
        sub_268D2A1F0(&v51[*(v47 + 24)], v61);
        sub_268D29FC8(v61, v70 + v68[14]);
        sub_268D2A724(v51);
      }
    }

    sub_268E06D9C(v58, v61);
    return sub_268D29FC8(v61, v70 + v68[16]);
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier sub_268CF2E88(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, int a7, uint64_t a8)
{
  v76 = a1;
  v68 = a2;
  v78 = a3;
  v79 = a4;
  v64 = a5;
  v65 = a6;
  v66 = a7;
  v67 = a8;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v82 = 0;
  v74 = *a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v57 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v58 = v40 - v57;
  v59 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v59, v12, v13, v14);
  v63 = v40 - v62;
  v98 = v40 - v62;
  v69 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v76, v68, v78, v79);
  v70 = v40 - v69;
  v71 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16, v17, v18, v19);
  v72 = v40 - v71;
  v73 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21, v22, v23, v24);
  v75 = v40 - v73;
  v97 = v25;
  v96 = v26;
  v94 = v27;
  v95 = v28;
  v93 = v29;
  v92 = *(v74 + qword_2802F0750);
  v91 = *(v74 + qword_2802F0750 + 8);
  v90 = v30;
  v89 = v31 & 1;
  v88 = v32;
  v77 = *v26;

  *v76 = v77;

  if (sub_268F9AF14())
  {
    v33 = sub_268F9A9C4();
    (*(*(v33 - 8) + 56))(v75, 1);
  }

  else
  {

    v56 = 0;
    sub_268F9A9A4();
    v34 = sub_268F9A9C4();
    (*(*(v34 - 8) + 56))(v75, 0, 1);
  }

  v54 = 0;
  v52 = type metadata accessor for SetBinarySettingIntentChangedMultiSettingValueToParameters(0);
  sub_268D29FC8(v75, v76 + v52[8]);
  v49 = *(v64 + qword_2802DBFE0);

  v76[1] = v49;

  type metadata accessor for SettingsMultiSetting(v54);
  v50 = *v65;
  v51 = v65[1];

  v35 = sub_268E067CC(v50, v51, v66 & 1);
  *(v76 + v52[10]) = v35;

  v53 = 45;
  v87 = 45;
  sub_268E0697C(&v87, v72);
  sub_268D29FC8(v72, v76 + v52[9]);
  v86 = v53;
  sub_268E06F58(&v86, v72);
  sub_268D29FC8(v72, v76 + v52[11]);
  v85 = v53;
  v84 = v67;
  v36 = sub_268CD7620();
  v55 = SettingIntent.deviceCategory.getter(v36, &protocol witness table for INSetBinarySettingIntent);
  if (v37)
  {
    v46 = 0;
    v47 = 1;
  }

  else
  {
    v48 = v55;
    sub_268CD4334();
    v46 = v38;
    v47 = 0;
  }

  sub_268E06FB0(&v85, v46, v47 & 1, v70);
  sub_268D29FC8(v70, v76 + v52[19]);
  sub_268E798B8(v72);
  sub_268D29FC8(v72, v76 + v52[13]);
  v44 = *v65;

  result = BinarySettingIdentifier.init(rawValue:)(v44).value;
  v45 = v83;
  if (v83 != 65)
  {
    v43 = v45;
    v42 = v45;
    v82 = v45;
    v81 = v45;
    sub_268E799BC(v72);
    sub_268D29FC8(v72, v76 + v52[12]);
    v80 = v42;
    sub_268E7A8B4(v58);
    if ((*(v60 + 48))(v58, 1, v59) == 1)
    {
      return sub_268D2A318(v58);
    }

    else
    {
      sub_268D2A4A0(v58, v63);
      v41 = sub_268F9A9C4();
      v40[0] = *(v41 - 8);
      v40[1] = v41 - 8;
      (*(v40[0] + 16))(v72, v63);
      (*(v40[0] + 56))(v72, 0, 1, v41);
      sub_268D29FC8(v72, v76 + v52[14]);
      sub_268D2A1F0((v63 + *(v59 + 20)), v72);
      sub_268D29FC8(v72, v76 + v52[16]);
      sub_268D2A1F0((v63 + *(v59 + 24)), v72);
      sub_268D29FC8(v72, v76 + v52[15]);
      return sub_268D2A724(v63);
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CF36E8(uint64_t *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, Swift::String *a7, uint64_t a8)
{
  v70 = a1;
  v65 = a2;
  v67 = a3;
  v69 = a4;
  v72 = a5;
  v73 = a6;
  v56 = a7;
  v57 = a8;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v83 = 0;
  v81 = 0;
  v76 = 0;
  v62 = *a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v44 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8, v9, v10, v11);
  v45 = &v33[-v44];
  v64 = 0;
  v46 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v64, v12, v13, v14);
  v50 = &v33[-v49];
  v93 = &v33[-v49];
  v51 = sub_268F9A9C4();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v51, v15, v16, v17);
  v55 = &v33[-v54];
  v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  v58 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v65, v18, v67, v69);
  v60 = &v33[-v58];
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v19, &v33[-v58], v20, v21);
  v63 = &v33[-v61];
  v92 = v22;
  v91 = v23;
  v90 = v24;
  v89 = v25;
  v88 = *(v62 + qword_2802F0750);
  v87 = *(v62 + qword_2802F0750 + 8);
  v85 = v26;
  v86 = v27;
  v84 = v28;
  v83 = v29;

  v66 = type metadata accessor for SetBinarySettingIntentChangedBinaryValueToParameters(v64);
  *(v70 + v66[9]) = v65;

  v68 = *v67;

  *v70 = v68;

  v71 = *(v69 + qword_2802DBFE0);

  v70[1] = v71;

  if (sub_268F9AF14())
  {
    (*(v52 + 56))(v63, 1, 1, v51);
  }

  else
  {

    sub_268F9A9A4();
    (*(v52 + 56))(v63, 0, 1, v51);
  }

  v30 = v55;
  sub_268D29FC8(v63, v70 + v66[7]);

  v40 = *(v52 + 16);
  v41 = v52 + 16;
  v40(v30, v65 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, v51);

  v42._countAndFlagsBits = sub_268F9A9B4();
  v42._object = v31;
  (*(v52 + 8))(v55, v51);
  result.value = BinarySettingIdentifier.init(rawValue:)(v42).value;
  v43 = v82;
  if (v82 != 65)
  {
    v39 = v43;
    v36 = v43;
    v81 = v43;
    v80 = v43;
    sub_268E0697C(&v80, v60);
    sub_268D29FC8(v60, v70 + v66[8]);
    v79 = v36;
    sub_268E06F58(&v79, v60);
    sub_268D29FC8(v60, v70 + v66[10]);
    v78 = v36;
    sub_268E06FB0(&v78, 0, 1u, v60);
    sub_268D29FC8(v60, v70 + v66[16]);
    sub_268E798B8(v60);
    sub_268D29FC8(v60, v70 + v66[12]);
    v37 = *v56;

    BinarySettingIdentifier.init(rawValue:)(v37);
    v38 = v77;
    if (v77 != 65)
    {
      v35 = v38;
      v34 = v38;
      v76 = v38;
      v75 = v38;
      sub_268E799BC(v60);
      sub_268D29FC8(v60, v70 + v66[11]);
      v74 = v34;
      sub_268E7A8B4(v45);
      if ((*(v47 + 48))(v45, 1, v46) == 1)
      {
        sub_268D2A318(v45);
      }

      else
      {
        sub_268D2A4A0(v45, v50);
        v40(v60, v50, v51);
        (*(v52 + 56))(v60, 0, 1, v51);
        sub_268D29FC8(v60, v70 + v66[13]);
        sub_268D2A1F0(&v50[*(v46 + 20)], v60);
        sub_268D29FC8(v60, v70 + v66[15]);
        sub_268D2A1F0(&v50[*(v46 + 24)], v60);
        sub_268D29FC8(v60, v70 + v66[14]);
        sub_268D2A724(v50);
      }
    }

    sub_268E06D9C(v57, v60);
    return sub_268D29FC8(v60, v70 + v66[16]);
  }

  return result;
}

uint64_t sub_268CF3FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 776) = v3;
  *(v4 + 768) = a3;
  *(v4 + 760) = a2;
  *(v4 + 592) = v4;
  *(v4 + 600) = 0;
  *(v4 + 608) = 0;
  *(v4 + 616) = 0;
  *(v4 + 624) = 0;
  *(v4 + 1032) = 0;
  *(v4 + 1040) = 0;
  *(v4 + 1048) = 0;
  *(v4 + 656) = 0;
  *(v4 + 1033) = 0;
  *(v4 + 496) = 0;
  *(v4 + 504) = 0;
  *(v4 + 664) = 0;
  *(v4 + 512) = 0;
  *(v4 + 520) = 0;
  *(v4 + 528) = 0;
  *(v4 + 536) = 0;
  *(v4 + 680) = 0;
  *(v4 + 696) = 0;
  *(v4 + 712) = 0;
  *(v4 + 744) = 0;
  *(v4 + 1056) = 0;
  *(v4 + 576) = 0;
  *(v4 + 584) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 784) = v5;
  *(v4 + 792) = *(v5 - 8);
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 600) = a1;
  *(v4 + 608) = a2;
  *(v4 + 616) = a3;
  *(v4 + 624) = v3;

  return MEMORY[0x2822009F8](sub_268CF4168, 0);
}

uint64_t sub_268CF4168(uint64_t a1)
{
  v142 = v1;
  v136 = v1[96];
  v135 = v1[95];
  v1[74] = v1;
  v2 = sub_268DC7B48();
  v134 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v133 = sub_268F9B284();
  v1[102] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v131 = v3;
  MEMORY[0x277D82BE0](v135);
  v1[79] = v135;
  sub_268CD7620();
  sub_268D28940();
  v129 = sub_268F9AE74();
  v130 = v4;
  v131[3] = MEMORY[0x277D837D0];
  v132 = sub_268CDD224();
  v1[103] = v132;
  v131[4] = v132;
  *v131 = v129;
  v131[1] = v130;
  sub_268CD0F7C();
  sub_268F9AC04("INSetBinarySettingIntent requires confirmation %@", 49, 2, &dword_268CBE000, v134, v133);

  MEMORY[0x277D82BD8](v134);
  sub_268D23814(v135, v136, v1 + 12);
  memcpy(v1 + 7, v1 + 12, 0x28uLL);
  if (!v1[8])
  {
    sub_268D284D4();
    swift_allocError();
    *v49 = 4;
    swift_willThrow();
    goto LABEL_69;
  }

  v127 = *(v128 + 768);
  v125 = *(v128 + 760);
  memcpy((v128 + 16), (v128 + 56), 0x28uLL);
  sub_268DAB218(v125);
  *(v128 + 1032) = v137;
  v126 = *(v128 + 32);
  MEMORY[0x277D82BE0](v127);
  if (v127)
  {
    v123 = *(v128 + 768);
    v124 = [v123 oldValue];
    MEMORY[0x277D82BD8](v123);
    v5 = sub_268D2403C(v126, v124, 0);
  }

  else
  {
    v5 = sub_268D2403C(v126, 0, 1);
  }

  v122 = v5;
  *(v128 + 1034) = v5;
  if (v5 == 2)
  {
    v51 = *(v128 + 768);
    v44 = sub_268DC7B48();
    v54 = *v44;
    MEMORY[0x277D82BE0](*v44);
    v53 = sub_268F9B294();
    sub_268F9B734();
    v52 = v45;
    MEMORY[0x277D82BE0](v51);
    *(v128 + 640) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v46 = sub_268F9AE64();
    v52[3] = MEMORY[0x277D837D0];
    v52[4] = v132;
    *v52 = v46;
    v52[1] = v47;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingIntent has invalid value %@ while making intent confirmation dialog", 83, 2, &dword_268CBE000, v54, v53);

    MEMORY[0x277D82BD8](v54);
    sub_268D284D4();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
    sub_268CD9D30(v128 + 16);
    goto LABEL_69;
  }

  *(v128 + 1040) = v5 & 1;
  v121 = sub_268D2403C(*(v128 + 40), 0, 1);
  if (v121 == 2)
  {
    v55 = *(v128 + 768);
    v39 = sub_268DC7B48();
    v58 = *v39;
    MEMORY[0x277D82BE0](*v39);
    v57 = sub_268F9B294();
    sub_268F9B734();
    v56 = v40;
    MEMORY[0x277D82BE0](v55);
    *(v128 + 648) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v41 = sub_268F9AE64();
    v56[3] = MEMORY[0x277D837D0];
    v56[4] = v132;
    *v56 = v41;
    v56[1] = v42;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingIntentResponse response has invalid old value %@", 64, 2, &dword_268CBE000, v58, v57);

    MEMORY[0x277D82BD8](v58);
    sub_268D284D4();
    swift_allocError();
    *v43 = 3;
    swift_willThrow();
    sub_268CD9D30(v128 + 16);
    goto LABEL_69;
  }

  v113 = *(v128 + 808);
  v112 = *(v128 + 800);
  v114 = *(v128 + 784);
  v110 = *(v128 + 776);
  v111 = *(v128 + 792);
  *(v128 + 1048) = v121 & 1;
  sub_268D28C4C();
  *(v128 + 656) = sub_268CF0C44();
  v6 = sub_268DB9CB4();
  v117 = *v6;
  v118 = v6[1];
  v119 = *(v6 + 16);
  v7 = sub_268DC7BA8();
  v120 = *v7;
  MEMORY[0x277D82BE0](*v7);
  (*(v111 + 16))(v113, v110 + qword_2802DBFD8, v114);
  sub_268F9AB14();
  v116 = sub_268F9AB04();
  v115 = *(v111 + 8);
  v115(v112, v114);
  v115(v113, v114);
  sub_268DB9934(v117, v118, v119, v120, (v116 ^ 1) & 1);
  *&v8 = MEMORY[0x277D82BD8](v120).n128_u64[0];
  switch(v137)
  {
    case 65:
LABEL_64:
      v36 = sub_268DB9CB4();
      v61 = *v36;
      v59 = v36[1];
      v60 = *(v36 + 16);
      v37 = sub_268DC7BA8();
      v62 = *v37;
      MEMORY[0x277D82BE0](*v37);
      sub_268DB9B78(v61, v59, v60, v62);
      MEMORY[0x277D82BD8](v62);
      sub_268D284D4();
      swift_allocError();
      *v38 = 0;
      swift_willThrow();
      MEMORY[0x277D82BD8](*(v128 + 656));
      sub_268CD9D30(v128 + 16);
LABEL_69:

      v50 = *(*(v128 + 592) + 8);

      return v50();
    case 0:
    case 16:
      goto LABEL_43;
    case 26:
      *(v128 + 1033) = 1;

      v138 = 26;
      sub_268E12DF8(&v138);
      v78 = v33;

      if ((v78 & 0xFF00) == 0x400)
      {
        v76 = 0;
        v77 = 0;
      }

      else
      {
        v76 = sub_268E127A4(SHIBYTE(v78));
        v77 = v34;
      }

      *(v128 + 992) = v77;
      *(v128 + 984) = v76;
      *(v128 + 496) = v76;
      *(v128 + 504) = v77;

      if (v77)
      {
        *(v128 + 528) = v76;
        *(v128 + 536) = v77;

        v75 = sub_268F23C10();

        if (v75)
        {

          v70 = sub_268F9AE14();

          v71 = [v75 integerForKey_];
          MEMORY[0x277D82BD8](v70);
          MEMORY[0x277D82BD8](v75);
          v72 = v71;
          v73 = 0;
        }

        else
        {
          v72 = 0;
          v73 = 1;
        }

        v139 = v72;
        v140 = v73 & 1;
        if (v73)
        {
          v69 = 0;
        }

        else
        {
          v69 = v139;
        }

        if (v69 >= 1)
        {
          *(v128 + 1033) = 0;
          v68 = 0;
        }

        else
        {
          v68 = 1;
        }

        v74 = v68;
      }

      else
      {
        v74 = 1;
      }

      v63 = *(v128 + 776);
      sub_268CDE730(v63 + qword_2802DBFF0, v128 + 136);
      v65 = *(v128 + 160);
      v66 = *(v128 + 168);
      __swift_project_boxed_opaque_existential_1((v128 + 136), v65);

      sub_268D28814((v128 + 16), (v128 + 176));
      v64 = swift_task_alloc();
      *(v128 + 1000) = v64;
      *(v64 + 16) = v63;
      *(v64 + 24) = v128 + 16;
      *(v64 + 32) = v121 & 1;
      v67 = (*(v66 + 64) + **(v66 + 64));
      v35 = swift_task_alloc();
      *(v128 + 1008) = v35;
      *v35 = *(v128 + 592);
      v35[1] = sub_268CF7254;

      return v67(v74 & 1, v122 & 1, sub_268D28E04, v64, v65, v66);
    case 29:
      v91 = *(v128 + 776);
      sub_268CDE730(v91 + qword_2802DBFF0, v128 + 336);
      v93 = *(v128 + 360);
      v94 = *(v128 + 368);
      __swift_project_boxed_opaque_existential_1((v128 + 336), v93);

      sub_268D28814((v128 + 16), (v128 + 376));
      v92 = swift_task_alloc();
      *(v128 + 888) = v92;
      *(v92 + 16) = v91;
      *(v92 + 24) = v128 + 16;
      *(v92 + 32) = v121 & 1;
      v95 = (*(v94 + 80) + **(v94 + 80));
      v19 = swift_task_alloc();
      *(v128 + 896) = v19;
      *v19 = *(v128 + 592);
      v19[1] = sub_268CF685C;

      return v95(sub_268D28E24, v92, v93, v94);
    case 35:
    case 36:
      sub_268CDE730(*(v128 + 776) + qword_2802DBFF0, v128 + 296);
      v89 = *(v128 + 320);
      v90 = *(v128 + 328);
      __swift_project_boxed_opaque_existential_1((v128 + 296), v89);
      v141 = v137;
      *(v128 + 560) = BinarySettingIdentifier.rawValue.getter();
      *(v128 + 568) = v20;
      if (*(v128 + 568))
      {
        v21 = *(v128 + 568);
        *(v128 + 544) = *(v128 + 560);
        *(v128 + 552) = v21;
      }

      else
      {
        *(v128 + 544) = sub_268F9AEF4();
        *(v128 + 552) = v22;
        if (*(v128 + 568))
        {
          sub_268CD9D30(v128 + 560);
        }
      }

      v88 = *(v128 + 544);
      v84 = *(v128 + 552);
      *(v128 + 920) = v84;

      v85 = sub_268D36960();

      v86 = sub_268D38D64();

      v87 = (*(v90 + 168) + **(v90 + 168));
      v23 = swift_task_alloc();
      v24 = v84;
      v25 = v89;
      v26 = v90;
      v27 = v87;
      v28 = v23;
      v29 = v88;
      *(v128 + 928) = v28;
      *v28 = *(v128 + 592);
      v28[1] = sub_268CF6BB8;
      v30 = (v85 & 1);
      v31 = v86 & 1;

      return v27(v29, v24, v30, v31, v25, v26);
    case 45:
      v9 = *(v128 + 760);
      *(v128 + 728) = 0;
      v109 = [v9 settingMetadata];
      if (v109 && (v108 = [v109 targetApp], *&v10 = MEMORY[0x277D82BD8](v109).n128_u64[0], v108))
      {
        v11 = [v108 bundleIdentifier];
        v107 = v11;
        if (v11)
        {
          v103 = sub_268F9AE24();
          v104 = v12;
          MEMORY[0x277D82BD8](v107);
          v105 = v103;
          v106 = v104;
        }

        else
        {
          v105 = 0;
          v106 = 0;
        }

        MEMORY[0x277D82BD8](v108);
        v101 = v105;
        v102 = v106;
      }

      else
      {
        v101 = 0;
        v102 = 0;
      }

      if (v102)
      {
        *(v128 + 576) = v101;
        *(v128 + 584) = v102;
        sub_268F9A994();

        *(v128 + 728) = sub_268DE1C68(v101, v102);
      }

      v100 = *(v128 + 776);
      v13 = sub_268DC7B48();
      v99 = *v13;
      MEMORY[0x277D82BE0](*v13);
      v98 = sub_268F9B284();
      sub_268F9B734();
      v97 = v14;
      v96 = *(v128 + 728);

      *(v128 + 736) = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0C0, &qword_268F9D9D0);
      v15 = sub_268F9AE64();
      v97[3] = MEMORY[0x277D837D0];
      v97[4] = v132;
      *v97 = v15;
      v97[1] = v16;
      sub_268CD0F7C();
      sub_268F9AC04("Getting confirmation mode for announce notifications. App id: %@", 64, 2, &dword_268CBE000, v99, v98);

      MEMORY[0x277D82BD8](v99);
      *(v128 + 832) = *(v100 + qword_2802DC040);

      v17 = swift_task_alloc();
      *(v128 + 840) = v17;
      *v17 = *(v128 + 592);
      v17[1] = sub_268CF6120;

      return sub_268E02374();
    case 51:
LABEL_43:
      v79 = *(v128 + 776);
      sub_268CDE730(v79 + qword_2802DBFF0, v128 + 216);
      v81 = *(v128 + 240);
      v82 = *(v128 + 248);
      __swift_project_boxed_opaque_existential_1((v128 + 216), v81);

      sub_268D28814((v128 + 16), (v128 + 256));
      v80 = swift_task_alloc();
      *(v128 + 952) = v80;
      *(v80 + 16) = v79;
      *(v80 + 24) = v128 + 16;
      v83 = (*(v82 + 64) + **(v82 + 64));
      v32 = swift_task_alloc();
      v30 = sub_268D28E18;
      v31 = v80;
      v25 = v81;
      v26 = v82;
      v27 = v83;
      *(v128 + 960) = v32;
      *v32 = *(v128 + 592);
      v32[1] = sub_268CF6EF8;
      v29 = 0;
      v24 = v122 & 1;

      return v27(v29, v24, v30, v31, v25, v26);
    default:
      goto LABEL_64;
  }
}

uint64_t sub_268CF6120(char a1)
{
  v5 = *v2;
  *(v5 + 592) = *v2;
  *(v5 + 1035) = a1;
  *(v5 + 848) = v1;

  if (v1)
  {
    v3 = sub_268CF77D0;
  }

  else
  {

    v3 = sub_268CF62A8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CF62A8()
{
  v1 = *(v0 + 1035);
  v5 = v1;
  v8 = *(v0 + 1034);
  v4 = *(v0 + 776);
  v6 = *(v0 + 760);
  *(v0 + 592) = v0;
  *(v0 + 1056) = v1;
  sub_268CDE730(v4 + qword_2802DBFF0, v0 + 416);
  v10 = *(v0 + 440);
  v11 = *(v0 + 448);
  __swift_project_boxed_opaque_existential_1((v0 + 416), v10);
  sub_268D28814((v0 + 16), (v0 + 456));

  MEMORY[0x277D82BE0](v6);
  v9 = swift_task_alloc();
  *(v0 + 856) = v9;
  *(v9 + 16) = v0 + 16;
  *(v9 + 24) = v4;
  *(v9 + 32) = v5;
  *(v9 + 40) = v0 + 728;
  *(v9 + 48) = v6;
  v12 = (*(v11 + 112) + **(v11 + 112));
  v2 = swift_task_alloc();
  *(v7 + 864) = v2;
  *v2 = *(v7 + 592);
  v2[1] = sub_268CF64E4;

  return v12(v8 & 1, sub_268D28E38, v9, v10, v11);
}

uint64_t sub_268CF64E4(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[74] = *v2;
  v7[109] = a1;
  v7[110] = v1;

  if (v1)
  {
    v3 = sub_268CF7AD8;
  }

  else
  {
    v5 = *(v6 + 744);

    sub_268CD9D30(v6);

    v3 = sub_268CF669C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CF669C()
{
  v1 = v0[109];
  v7 = v1;
  v0[74] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[82];
  v0[82] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  sub_268D287E8(v0 + 91);
  v12 = v0[109];
  v3 = sub_268DB9CB4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[74] + 8);

  return v5(v12);
}

uint64_t sub_268CF685C(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[74] = *v2;
  v6[113] = a1;
  v6[114] = v1;

  if (v1)
  {
    v3 = sub_268CF7E1C;
  }

  else
  {

    sub_268CD9D30(v5);
    v3 = sub_268CF6A04;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CF6A04()
{
  v1 = v0[113];
  v7 = v1;
  v0[74] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[82];
  v0[82] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v12 = v0[113];
  v3 = sub_268DB9CB4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[74] + 8);

  return v5(v12);
}

uint64_t sub_268CF6BB8(uint64_t a1)
{
  v5 = *v2;
  v5[74] = *v2;
  v5[117] = a1;
  v5[118] = v1;

  if (v1)
  {
    v3 = sub_268CF8420;
  }

  else
  {

    v3 = sub_268CF6D44;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CF6D44()
{
  v1 = v0[117];
  v7 = v1;
  v0[74] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[82];
  v0[82] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v12 = v0[117];
  v3 = sub_268DB9CB4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[74] + 8);

  return v5(v12);
}

uint64_t sub_268CF6EF8(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[74] = *v2;
  v6[121] = a1;
  v6[122] = v1;

  if (v1)
  {
    v3 = sub_268CF8700;
  }

  else
  {

    sub_268CD9D30(v5);
    v3 = sub_268CF70A0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CF70A0()
{
  v1 = v0[121];
  v7 = v1;
  v0[74] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[82];
  v0[82] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v12 = v0[121];
  v3 = sub_268DB9CB4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[74] + 8);

  return v5(v12);
}

uint64_t sub_268CF7254(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[74] = *v2;
  v6[127] = a1;
  v6[128] = v1;

  if (v1)
  {
    v3 = sub_268CF8114;
  }

  else
  {

    sub_268CD9D30(v5);
    v3 = sub_268CF73FC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CF73FC()
{
  v1 = v0[127];
  v16 = v1;
  v17 = v0[124];
  v0[74] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[82];
  v0[82] = v16;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  if (v17)
  {
    v13 = v15[124];
    v15[64] = v15[123];
    v15[65] = v13;

    v14 = sub_268F23C10();

    if (v14)
    {

      v12 = sub_268F9AE14();

      [v14 setInteger:1 forKey:v12];
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v14);
    }
  }

  v11 = v15[127];
  v3 = sub_268DB9CB4();
  v9 = *v3;
  v7 = v3[1];
  v8 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v10 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v15[82]);
  sub_268CD9D30((v15 + 2));

  v5 = *(v15[74] + 8);

  return v5(v11);
}

uint64_t sub_268CF77D0()
{
  v0[74] = v0;

  v19 = v0[106];
  v11 = v0[103];
  v1 = v19;
  v0[93] = v19;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[94] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#ConfirmBeforeTurningOffAnnounceNotifications pattern execution error %@", 94, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB9CB4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  sub_268D287E8(v0 + 91);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[74] + 8);

  return v9();
}

uint64_t sub_268CF7AD8()
{
  v11 = v0[95];
  v0[74] = v0;

  sub_268CD9D30((v0 + 2));

  MEMORY[0x277D82BD8](v11);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  v20 = v0[110];
  v12 = v0[103];
  v1 = v20;
  v0[93] = v20;
  v2 = sub_268DC7B48();
  v15 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v14 = sub_268F9B294();
  sub_268F9B734();
  v13 = v3;
  v4 = v20;
  v0[94] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = v12;
  *v13 = v5;
  v13[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#ConfirmBeforeTurningOffAnnounceNotifications pattern execution error %@", 94, 2, &dword_268CBE000, v15, v14);

  MEMORY[0x277D82BD8](v15);
  v7 = sub_268DB9CB4();
  v18 = *v7;
  v16 = v7[1];
  v17 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v19 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v18, v16, v17, v19);
  MEMORY[0x277D82BD8](v19);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  sub_268D287E8(v0 + 91);
  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[74] + 8);

  return v9();
}

uint64_t sub_268CF7E1C()
{
  v19 = v0[114];
  v11 = v0[103];
  v0[74] = v0;

  sub_268CD9D30((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v1 = v19;
  v0[89] = v19;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[90] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#ConfirmBeforeTurningOffLocationServices pattern execution error %@", 89, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB9CB4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[74] + 8);

  return v9();
}

uint64_t sub_268CF8114()
{
  v19 = v0[128];
  v11 = v0[103];
  v0[74] = v0;

  sub_268CD9D30((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v19;
  v0[83] = v19;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[84] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#ConfirmBeforeSeveringConnectionToSiri pattern execution error %@", 87, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB9CB4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[74] + 8);

  return v9();
}

uint64_t sub_268CF8420()
{
  v19 = v0[118];
  v11 = v0[103];
  v0[74] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  v1 = v19;
  v0[87] = v19;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[88] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#HotspotAirplaneModeEnabledOrCellularDisabled pattern execution error %@", 94, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB9CB4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[74] + 8);

  return v9();
}

uint64_t sub_268CF8700()
{
  v19 = v0[122];
  v11 = v0[103];
  v0[74] = v0;

  sub_268CD9D30((v0 + 2));
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  v1 = v19;
  v0[85] = v19;
  v2 = sub_268DC7B48();
  v14 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v13 = sub_268F9B294();
  sub_268F9B734();
  v12 = v3;
  v4 = v19;
  v0[86] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v5 = sub_268F9AE64();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = v11;
  *v12 = v5;
  v12[1] = v6;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#ConfirmBeforeSeveringConnectionToSiri pattern execution error %@", 87, 2, &dword_268CBE000, v14, v13);

  MEMORY[0x277D82BD8](v14);
  v7 = sub_268DB9CB4();
  v17 = *v7;
  v15 = v7[1];
  v16 = *(v7 + 16);
  v8 = sub_268DC7BA8();
  v18 = *v8;
  MEMORY[0x277D82BE0](*v8);
  sub_268DB9B78(v17, v15, v16, v18);
  MEMORY[0x277D82BD8](v18);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[82]);
  sub_268CD9D30((v0 + 2));

  v9 = *(v0[74] + 8);

  return v9();
}

void *sub_268CF89F8(uint64_t *a1, uint64_t *a2, void *a3, unsigned int a4, uint64_t *a5, uint64_t a6)
{
  v60 = a1;
  v42 = a2;
  v46 = a3;
  v48 = a4;
  v56 = a5;
  v36 = a6;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v41 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v33 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v6, v7, v8, v9);
  v64 = &v28 - v33;
  v49 = 0;
  v66 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v62 = *(v66 - 8);
  v63 = v66 - 8;
  v34 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v66, v10, v11, v12);
  v35 = &v28 - v34;
  v79 = &v28 - v34;
  v38 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64);
  v37 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v49, v42, v46, v48);
  v39 = &v28 - v37;
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v13, v14, v15, v16);
  v59 = &v28 - v40;
  v78 = v17;
  v77 = v18;
  v76 = *(v41 + qword_2802F0750);
  v75 = *(v41 + qword_2802F0750 + 8);
  v74 = v19;
  v73 = v20;
  v72 = v21;
  v71 = v22;
  type metadata accessor for SettingsBinarySetting(v23);
  v43 = *v42;
  v44 = v42[1];

  v50 = 0;
  v65 = 1;
  v45 = SettingsBinarySetting.__allocating_init(settingId:value:)(v43, v44, 0);
  v58 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffAnnounceNotificationsParameters(v49);
  *(v60 + v58[9]) = v45;

  v47 = *(v46 + qword_2802DBFE0);

  *(v60 + v58[6]) = v47;

  sub_268DFC86C(v48);
  sub_268F9A9A4();
  v51 = sub_268F9A9C4();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = *(v52 + 56);
  v55 = v52 + 56;
  (v54)(v59, v50, v65);
  sub_268D29FC8(v59, v60 + v58[5]);
  v57 = *v56;

  *v60 = v57;

  v61 = 45;
  v70 = 45;
  sub_268E0697C(&v70, v59);
  sub_268D29FC8(v59, v60 + v58[7]);
  v69 = v61;
  sub_268E06F58(&v69, v59);
  sub_268D29FC8(v59, v60 + v58[10]);
  v68[1] = v61;
  sub_268E7A8B4(v64);
  if ((*(v62 + 48))(v64, v65, v66) == 1)
  {
    sub_268D2A318(v64);
  }

  else
  {
    sub_268D2A4A0(v64, v35);
    (*(v52 + 16))(v59, v35, v51);
    v54(v59, 0, 1, v51);
    sub_268D29FC8(v59, v60 + v58[14]);
    sub_268D2A1F0((v35 + *(v66 + 20)), v59);
    sub_268D29FC8(v59, v60 + v58[16]);
    sub_268D2A1F0((v35 + *(v66 + 24)), v59);
    sub_268D29FC8(v59, v60 + v58[15]);
    sub_268D2A724(v35);
  }

  v68[0] = 45;
  v67 = v36;
  v24 = sub_268CD7620();
  v32 = SettingIntent.deviceCategory.getter(v24, &protocol witness table for INSetBinarySettingIntent);
  if (v25)
  {
    v29 = 0;
    v30 = 1;
  }

  else
  {
    v31 = v32;
    sub_268CD4334();
    v29 = v26;
    v30 = 0;
  }

  sub_268E06FB0(v68, v29, v30 & 1, v39);
  return sub_268D29FC8(v39, v60 + v58[11]);
}

SiriSettingsIntents::BinarySettingIdentifier sub_268CF9090(uint64_t *a1, void *a2, uint64_t *a3, unsigned int a4)
{
  v39 = a1;
  v27 = a2;
  v40 = a3;
  v33 = a4;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v50 = 0;
  v49 = 0;
  v45 = 0;
  v29 = *a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v20 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v21 = v16 - v20;
  v34 = 0;
  v22 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v8, v9, v10);
  v26 = v16 - v25;
  v55 = v16 - v25;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39, v27, v40, v33);
  v38 = v16 - v28;
  v54 = v11;
  v53 = v12;
  v52 = *(v29 + qword_2802F0750);
  v51 = *(v29 + qword_2802F0750 + 8);
  v50 = v13;
  v49 = v14 & 1;
  v30 = *(v12 + qword_2802DBFE0);

  *v39 = v30;

  type metadata accessor for SettingsBinarySetting(v34);
  v31 = *v40;
  v32 = v40[1];

  v35 = SettingsBinarySetting.__allocating_init(settingId:value:)(v31, v32, v33 & 1);
  v37 = type metadata accessor for SetBinarySettingIntentConfirmBeforeTurningOffLocationServicesParameters(v34);
  *(v39 + v37[6]) = v35;

  v36 = 29;
  v48 = 29;
  sub_268E0697C(&v48, v38);
  sub_268D29FC8(v38, v39 + v37[5]);
  v47 = v36;
  sub_268E06F58(&v47, v38);
  sub_268D29FC8(v38, v39 + v37[7]);
  sub_268E798B8(v38);
  sub_268D29FC8(v38, v39 + v37[9]);
  v41 = *v40;

  result = BinarySettingIdentifier.init(rawValue:)(v41).value;
  v42 = v46;
  if (v46 != 65)
  {
    v19 = v42;
    v18 = v42;
    v45 = v42;
    v44 = v42;
    sub_268E799BC(v38);
    sub_268D29FC8(v38, v39 + v37[8]);
    v43 = v18;
    sub_268E7A8B4(v21);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      return sub_268D2A318(v21);
    }

    else
    {
      sub_268D2A4A0(v21, v26);
      v17 = sub_268F9A9C4();
      v16[0] = *(v17 - 8);
      v16[1] = v17 - 8;
      (*(v16[0] + 16))(v38, v26);
      (*(v16[0] + 56))(v38, 0, 1, v17);
      sub_268D29FC8(v38, v39 + v37[10]);
      sub_268D2A1F0((v26 + *(v22 + 20)), v38);
      sub_268D29FC8(v38, v39 + v37[12]);
      sub_268D2A1F0((v26 + *(v22 + 24)), v38);
      sub_268D29FC8(v38, v39 + v37[11]);
      return sub_268D2A724(v26);
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier sub_268CF95CC(uint64_t *a1, void *a2, uint64_t *a3, unsigned int a4)
{
  v39 = a1;
  v27 = a2;
  v40 = a3;
  v33 = a4;
  v55 = 0;
  v54 = 0;
  v53 = 0;
  v50 = 0;
  v49 = 0;
  v45 = 0;
  v29 = *a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v20 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v4, v5, v6, v7);
  v21 = v16 - v20;
  v34 = 0;
  v22 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22, v8, v9, v10);
  v26 = v16 - v25;
  v55 = v16 - v25;
  v28 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39, v27, v40, v33);
  v38 = v16 - v28;
  v54 = v11;
  v53 = v12;
  v52 = *(v29 + qword_2802F0750);
  v51 = *(v29 + qword_2802F0750 + 8);
  v50 = v13;
  v49 = v14 & 1;
  v30 = *(v12 + qword_2802DBFE0);

  *v39 = v30;

  type metadata accessor for SettingsBinarySetting(v34);
  v31 = *v40;
  v32 = v40[1];

  v35 = SettingsBinarySetting.__allocating_init(settingId:value:)(v31, v32, v33 & 1);
  v37 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(v34);
  *(v39 + v37[8]) = v35;

  v36 = 26;
  v48 = 26;
  sub_268E0697C(&v48, v38);
  sub_268D29FC8(v38, v39 + v37[6]);
  v47 = v36;
  sub_268E0697C(&v47, v38);
  sub_268D29FC8(v38, v39 + v37[9]);
  sub_268E798B8(v38);
  sub_268D29FC8(v38, v39 + v37[11]);
  v41 = *v40;

  result = BinarySettingIdentifier.init(rawValue:)(v41).value;
  v42 = v46;
  if (v46 != 65)
  {
    v19 = v42;
    v18 = v42;
    v45 = v42;
    v44 = v42;
    sub_268E799BC(v38);
    sub_268D29FC8(v38, v39 + v37[10]);
    v43 = v18;
    sub_268E7A8B4(v21);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      return sub_268D2A318(v21);
    }

    else
    {
      sub_268D2A4A0(v21, v26);
      v17 = sub_268F9A9C4();
      v16[0] = *(v17 - 8);
      v16[1] = v17 - 8;
      (*(v16[0] + 16))(v38, v26);
      (*(v16[0] + 56))(v38, 0, 1, v17);
      sub_268D29FC8(v38, v39 + v37[12]);
      sub_268D2A1F0((v26 + *(v22 + 20)), v38);
      sub_268D29FC8(v38, v39 + v37[14]);
      sub_268D2A1F0((v26 + *(v22 + 24)), v38);
      sub_268D29FC8(v38, v39 + v37[13]);
      return sub_268D2A724(v26);
    }
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier sub_268CF9B08(uint64_t *a1, void *a2, uint64_t *a3)
{
  v39 = a1;
  v30 = a2;
  v41 = a3;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v52 = 0;
  v50 = 0;
  v46 = 0;
  v32 = *a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v23 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3, v4, v5, v6);
  v24 = v15 - v23;
  v37 = 0;
  v25 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25, v7, v8, v9);
  v29 = v15 - v28;
  v57 = v15 - v28;
  v31 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v39, v30, v41, v10);
  v33 = v15 - v31;
  v56 = v11;
  v55 = v12;
  v54 = *(v32 + qword_2802F0750);
  v53 = *(v32 + qword_2802F0750 + 8);
  v52 = v13;
  v34 = *(v12 + qword_2802DBFE0);

  *v39 = v34;

  type metadata accessor for SettingsBinarySetting(v37);
  v35 = *v41;
  v36 = v41[1];

  v38 = SettingsBinarySetting.__allocating_init(settingId:value:)(v35, v36, 0);
  v40 = type metadata accessor for SetBinarySettingIntentConfirmBeforeSeveringConnectionToSiriParameters(v37);
  *(v39 + v40[8]) = v38;

  v42 = *v41;

  result = BinarySettingIdentifier.init(rawValue:)(v42).value;
  v43 = v51;
  if (v51 != 65)
  {
    v22 = v43;
    v19 = v43;
    v50 = v43;
    v49 = v43;
    sub_268E0697C(&v49, v33);
    sub_268D29FC8(v33, v39 + v40[6]);
    v48 = v19;
    sub_268E06F58(&v48, v33);
    sub_268D29FC8(v33, v39 + v40[9]);
    sub_268E798B8(v33);
    sub_268D29FC8(v33, v39 + v40[11]);
    v20 = *v41;

    result = BinarySettingIdentifier.init(rawValue:)(v20).value;
    v21 = v47;
    if (v47 != 65)
    {
      v18 = v21;
      v17 = v21;
      v46 = v21;
      v45 = v21;
      sub_268E799BC(v33);
      sub_268D29FC8(v33, v39 + v40[10]);
      v44 = v17;
      sub_268E7A8B4(v24);
      if ((*(v26 + 48))(v24, 1, v25) == 1)
      {
        return sub_268D2A318(v24);
      }

      else
      {
        sub_268D2A4A0(v24, v29);
        v16 = sub_268F9A9C4();
        v15[0] = *(v16 - 8);
        v15[1] = v16 - 8;
        (*(v15[0] + 16))(v33, v29);
        (*(v15[0] + 56))(v33, 0, 1, v16);
        sub_268D29FC8(v33, v39 + v40[12]);
        sub_268D2A1F0((v29 + *(v25 + 20)), v33);
        sub_268D29FC8(v33, v39 + v40[14]);
        sub_268D2A1F0((v29 + *(v25 + 24)), v33);
        sub_268D29FC8(v33, v39 + v40[13]);
        return sub_268D2A724(v29);
      }
    }
  }

  return result;
}

uint64_t sub_268CFA090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 312) = v3;
  *(v4 + 304) = a3;
  *(v4 + 296) = a2;
  *(v4 + 216) = v4;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 256) = 0;
  *(v4 + 384) = 0;
  *(v4 + 272) = 0;
  *(v4 + 288) = 0;
  v5 = sub_268F9AB24();
  *(v4 + 320) = v5;
  *(v4 + 328) = *(v5 - 8);
  *(v4 + 336) = swift_task_alloc();
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 224) = a1;
  *(v4 + 232) = a2;
  *(v4 + 240) = a3;
  *(v4 + 248) = v3;

  return MEMORY[0x2822009F8](sub_268CFA20C, 0);
}

uint64_t sub_268CFA20C()
{
  v1 = v0[38];
  v2 = v0[37];
  v0[27] = v0;
  sub_268D23814(v2, v1, v0 + 12);
  memcpy(v0 + 7, v0 + 12, 0x28uLL);
  if (!v0[8])
  {
    goto LABEL_12;
  }

  v40 = *(v41 + 304);
  memcpy((v41 + 16), (v41 + 56), 0x28uLL);
  MEMORY[0x277D82BE0](v40);
  if (v40)
  {
    v36 = *(v41 + 304);
    v37 = [v36 oldValue];
    MEMORY[0x277D82BD8](v36);
    v38 = v37;
    v39 = 0;
  }

  else
  {
    v38 = 0;
    v39 = 1;
  }

  if (v39)
  {
    sub_268CD9D30(v41 + 16);
LABEL_12:
    sub_268D284D4();
    swift_allocError();
    *v12 = 4;
    swift_willThrow();
    goto LABEL_13;
  }

  *(v41 + 256) = v38;
  v35 = sub_268D2403C(v38, 0, 1);
  if (v35 == 2)
  {
    v14 = *(v41 + 304);
    v8 = sub_268DC7B48();
    v19 = *v8;
    MEMORY[0x277D82BE0](*v8);
    v18 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v17 = v9;
    MEMORY[0x277D82BE0](v14);
    *(v41 + 264) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v15 = sub_268F9AE64();
    v16 = v10;
    v17[3] = MEMORY[0x277D837D0];
    v17[4] = sub_268CDD224();
    *v17 = v15;
    v17[1] = v16;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingIntentResponse response has invalid old value %@ while forming confirmation cancelled dialog.", 109, 2, &dword_268CBE000, v19, v18);

    MEMORY[0x277D82BD8](v19);
    sub_268D284D4();
    swift_allocError();
    *v11 = 3;
    swift_willThrow();
    sub_268CD9D30(v41 + 16);
LABEL_13:

    v13 = *(*(v41 + 216) + 8);

    return v13();
  }

  v3 = *(v41 + 344);
  v21 = *(v41 + 336);
  v22 = *(v41 + 320);
  v29 = *(v41 + 312);
  v30 = *(v41 + 296);
  v20 = *(v41 + 328);
  *(v41 + 384) = v35 & 1;
  v4 = sub_268DB98D4();
  v25 = *v4;
  v26 = v4[1];
  v27 = *(v4 + 16);
  v5 = sub_268DC7BA8();
  v28 = *v5;
  MEMORY[0x277D82BE0](*v5);
  (*(v20 + 16))(v3, v29 + qword_2802DBFD8, v22);
  sub_268F9AB14();
  v24 = sub_268F9AB04();
  v23 = *(v20 + 8);
  v23(v21, v22);
  v23(v3, v22);
  sub_268DB9934(v25, v26, v27, v28, (v24 ^ 1) & 1);
  MEMORY[0x277D82BD8](v28);
  sub_268CDE730(v29 + qword_2802DBFF0, v41 + 136);
  v32 = *(v41 + 160);
  v33 = *(v41 + 168);
  __swift_project_boxed_opaque_existential_1((v41 + 136), v32);
  sub_268D28814((v41 + 16), (v41 + 176));

  MEMORY[0x277D82BE0](v30);
  v31 = swift_task_alloc();
  *(v41 + 352) = v31;
  *(v31 + 16) = v41 + 16;
  *(v31 + 24) = v35 & 1;
  *(v31 + 32) = v29;
  *(v31 + 40) = v30;
  v34 = (*(v33 + 48) + **(v33 + 48));
  v6 = swift_task_alloc();
  *(v41 + 360) = v6;
  *v6 = *(v41 + 216);
  v6[1] = sub_268CFAA0C;

  return v34(sub_268D28E50, v31, v32, v33);
}

uint64_t sub_268CFAA0C(uint64_t a1)
{
  v6 = *v2;
  v6[27] = *v2;
  v6[46] = a1;
  v6[47] = v1;

  if (v1)
  {
    v3 = sub_268CFAD0C;
  }

  else
  {
    v5 = v6[37];

    sub_268CD9D30((v6 + 2));

    v3 = sub_268CFABC0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CFABC0()
{
  v1 = v0[46];
  v0[27] = v0;
  v0[36] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  sub_268CD9D30((v0 + 2));

  v4 = *(*(v11 + 216) + 8);
  v5 = *(v11 + 368);

  return v4(v5);
}

uint64_t sub_268CFAD0C()
{
  v14 = v0[47];
  v8 = v0[37];
  v0[27] = v0;

  sub_268CD9D30((v0 + 2));

  MEMORY[0x277D82BD8](v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v14;
  v0[34] = v14;
  v2 = sub_268DC7B48();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v14;
  v0[35] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntent#RetainingCurrentBinaryValue pattern execution error %@", 77, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[27] + 8);

  return v6();
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268CFAFCC(void *a1, Swift::String *a2, unsigned int a3, void *a4, uint64_t a5)
{
  v47 = a1;
  v49 = a2;
  v42 = a3;
  v46 = a4;
  v36 = a5;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v59 = 0;
  v54 = 0;
  v38 = *a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC1F8, &unk_268F9DC00);
  v29 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, v8);
  v30 = v21 - v29;
  v43 = 0;
  v31 = type metadata accessor for SFSymbolStructSpeakableString(0);
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v31, v9, v10, v11);
  v35 = v21 - v34;
  v68 = v21 - v34;
  v37 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v43, v49, v42, v46);
  v39 = v21 - v37;
  v67 = v12;
  v66 = v13;
  v65 = *(v38 + qword_2802F0750);
  v64 = *(v38 + qword_2802F0750 + 8);
  v63 = v14 & 1;
  v62 = v15;
  v61 = v16;
  type metadata accessor for SettingsBinarySetting(v17);
  countAndFlagsBits = v49->_countAndFlagsBits;
  object = v49->_object;

  v44 = SettingsBinarySetting.__allocating_init(settingId:value:)(countAndFlagsBits, object, v42 & 1);
  v45 = type metadata accessor for SetBinarySettingIntentRetainingCurrentBinaryValueParameters(v43);
  *(v47 + v45[6]) = v44;

  v48 = *(v46 + qword_2802DBFE0);

  *v47 = v48;

  v50 = *v49;

  result.value = BinarySettingIdentifier.init(rawValue:)(v50).value;
  v51 = v60;
  if (v60 != 65)
  {
    v28 = v51;
    v25 = v51;
    v59 = v51;
    v58 = v51;
    sub_268E0697C(&v58, v39);
    sub_268D29FC8(v39, v47 + v45[5]);
    v57 = v25;
    sub_268E06F58(&v57, v39);
    sub_268D29FC8(v39, v47 + v45[7]);
    sub_268E798B8(v39);
    sub_268D29FC8(v39, v47 + v45[9]);
    v56 = v25;
    v19 = sub_268E0733C(&v56);
    v20 = v49;
    *(v47 + v45[14]) = v19;
    v26 = *v20;

    BinarySettingIdentifier.init(rawValue:)(v26);
    v27 = v55;
    if (v55 != 65)
    {
      v24 = v27;
      v23 = v27;
      v54 = v27;
      v53 = v27;
      sub_268E799BC(v39);
      sub_268D29FC8(v39, v47 + v45[8]);
      v52 = v23;
      sub_268E7A8B4(v30);
      if ((*(v32 + 48))(v30, 1, v31) == 1)
      {
        sub_268D2A318(v30);
      }

      else
      {
        sub_268D2A4A0(v30, v35);
        v22 = sub_268F9A9C4();
        v21[0] = *(v22 - 8);
        v21[1] = v22 - 8;
        (*(v21[0] + 16))(v39, v35);
        (*(v21[0] + 56))(v39, 0, 1, v22);
        sub_268D29FC8(v39, v47 + v45[10]);
        sub_268D2A1F0((v35 + *(v31 + 20)), v39);
        sub_268D29FC8(v39, v47 + v45[12]);
        sub_268D2A1F0((v35 + *(v31 + 24)), v39);
        sub_268D29FC8(v39, v47 + v45[11]);
        sub_268D2A724(v35);
      }
    }

    sub_268E06D9C(v36, v39);
    return sub_268D29FC8(v39, v47 + v45[13]);
  }

  return result;
}

uint64_t sub_268CFB5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 304) = v3;
  *(v4 + 296) = a3;
  *(v4 + 288) = a2;
  *(v4 + 208) = v4;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 232) = 0;
  *(v4 + 240) = 0;
  *(v4 + 248) = 0;
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 448) = 0;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0;
  *(v4 + 456) = 0;
  *(v4 + 216) = a1;
  *(v4 + 224) = a2;
  *(v4 + 232) = a3;
  *(v4 + 240) = v3;
  return MEMORY[0x2822009F8](sub_268CFB68C, 0);
}

uint64_t sub_268CFB68C()
{
  v1 = *(v0 + 296);
  v68 = v1;
  *(v0 + 208) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v68)
  {
    v63 = *(v67 + 296);
    v64 = [v63 code];
    MEMORY[0x277D82BD8](v63);
    v65 = v64;
    v66 = 0;
  }

  else
  {
    v65 = 0;
    v66 = 1;
  }

  if (v66)
  {
    v31 = sub_268DC7B48();
    v35 = *v31;
    MEMORY[0x277D82BE0](*v31);
    v34 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    sub_268F9AC04("SetBinarySettingIntentResponse does not exist", 45, 2, &dword_268CBE000, v35, v34);

    MEMORY[0x277D82BD8](v35);
    sub_268D284D4();
    swift_allocError();
    *v32 = 4;
    swift_willThrow();
    goto LABEL_39;
  }

  *(v67 + 248) = v65;
  if (v65 == 6)
  {
    *(v67 + 264) = *(v67 + 288);
    v20 = sub_268CD7620();
    v50._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v20, &protocol witness table for INSetBinarySettingIntent);
    v50._object = v21;
    *(v67 + 384) = v21;
    if (v21)
    {
      *(v67 + 176) = v50._countAndFlagsBits;
      *(v67 + 184) = v21;

      BinarySettingIdentifier.init(rawValue:)(v50);
      if (v69 != 65)
      {
        *(v67 + 448) = v69;
        *(v67 + 449) = v69;
        *(v67 + 450) = 16;
        sub_268D28AD4();
        v22 = sub_268F9B754();
        if (v22)
        {
          v45 = *(v67 + 304);
          sub_268CDE730(v45 + qword_2802DC058, v67 + 56);
          v47 = *(v67 + 80);
          v48 = *(v67 + 88);
          __swift_project_boxed_opaque_existential_1((v67 + 56), v47);

          v46 = swift_task_alloc();
          *(v67 + 392) = v46;
          *(v46 + 16) = v50;
          *(v46 + 32) = v45;
          v49 = (*(v48 + 24) + **(v48 + 24));
          v23 = swift_task_alloc();
          v9 = v46;
          v10 = v47;
          v11 = v48;
          v12 = v49;
          v24 = v23;
          v14 = sub_268D28E68;
          *(v67 + 400) = v24;
          *v24 = *(v67 + 208);
          v24[1] = sub_268CFCC28;

          return v12(v14, v9, v10, v11);
        }
      }
    }

    sub_268CDE730(*(v67 + 304) + qword_2802DC058, v67 + 16);
    v44 = *(v67 + 40);
    v42 = *(v67 + 48);
    __swift_project_boxed_opaque_existential_1((v67 + 16), v44);
    v43 = (*(v42 + 40) + **(v42 + 40));
    v25 = swift_task_alloc();
    v16 = v42;
    v17 = v43;
    v26 = v25;
    v19 = v44;
    *(v67 + 424) = v26;
    *v26 = *(v67 + 208);
    v26[1] = sub_268CFCE9C;

    return v17(v19, v16);
  }

  if (v65 == 7)
  {
    *(v67 + 272) = *(v67 + 288);
    v6 = sub_268CD7620();
    v62._countAndFlagsBits = SettingIntent.settingIdentifier.getter(v6, &protocol witness table for INSetBinarySettingIntent);
    v62._object = v7;
    *(v67 + 320) = v7;
    if (v7)
    {
      *(v67 + 192) = v62._countAndFlagsBits;
      *(v67 + 200) = v7;

      BinarySettingIdentifier.init(rawValue:)(v62);
      if (v70 != 65)
      {
        *(v67 + 456) = v70;
        v60 = *sub_268E79858();

        *(v67 + 280) = v60;
        *(v67 + 451) = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC090, &qword_268F9D9A0);
        sub_268D28B4C();
        sub_268D288C8();
        v61 = sub_268F9AFC4();
        sub_268CD7930((v67 + 280));
        if (v61)
        {
          v54 = *(v67 + 304);
          v55 = *(v67 + 288);
          sub_268CDE730(v54 + qword_2802DC058, v67 + 136);
          v57 = *(v67 + 160);
          v58 = *(v67 + 168);
          __swift_project_boxed_opaque_existential_1((v67 + 136), v57);

          MEMORY[0x277D82BE0](v55);
          v56 = swift_task_alloc();
          *(v67 + 328) = v56;
          *(v56 + 16) = v62;
          *(v56 + 32) = v54;
          *(v56 + 40) = v55;
          v59 = (*(v58 + 24) + **(v58 + 24));
          v8 = swift_task_alloc();
          v9 = v56;
          v10 = v57;
          v11 = v58;
          v12 = v59;
          v13 = v8;
          v14 = sub_268D28E78;
          *(v67 + 336) = v13;
          *v13 = *(v67 + 208);
          v13[1] = sub_268CFC77C;

          return v12(v14, v9, v10, v11);
        }
      }
    }

    sub_268CDE730(*(v67 + 304) + qword_2802DC058, v67 + 96);
    v53 = *(v67 + 120);
    v51 = *(v67 + 128);
    __swift_project_boxed_opaque_existential_1((v67 + 96), v53);
    v52 = (*(v51 + 40) + **(v51 + 40));
    v15 = swift_task_alloc();
    v16 = v51;
    v17 = v52;
    v18 = v15;
    v19 = v53;
    *(v67 + 360) = v18;
    *v18 = *(v67 + 208);
    v18[1] = sub_268CFCA00;

    return v17(v19, v16);
  }

  if (v65 == 8)
  {
    v2 = swift_task_alloc();
    *(v67 + 312) = v2;
    *v2 = *(v67 + 208);
    v2[1] = sub_268CFC570;
    v3 = *(v67 + 296);
    v4 = *(v67 + 288);

    return sub_268CFD6F8(v4, v3);
  }

  v36 = *(v67 + 296);
  v27 = sub_268DC7B48();
  v41 = *v27;
  MEMORY[0x277D82BE0](*v27);
  v40 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v39 = v28;
  MEMORY[0x277D82BE0](v36);
  *(v67 + 256) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
  v37 = sub_268F9AE64();
  v38 = v29;
  v39[3] = MEMORY[0x277D837D0];
  v39[4] = sub_268CDD224();
  *v39 = v37;
  v39[1] = v38;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingIntentResponse contains unsupported error code: %@", 66, 2, &dword_268CBE000, v41, v40);

  MEMORY[0x277D82BD8](v41);
  sub_268D284D4();
  swift_allocError();
  *v30 = 7;
  swift_willThrow();
LABEL_39:
  v33 = *(*(v67 + 208) + 8);

  return v33();
}

uint64_t sub_268CFC570(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 208) = *v2;
  v8 = v7 + 208;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_268CFC77C(uint64_t a1)
{
  v6 = *v2;
  v6[26] = *v2;
  v6[43] = a1;
  v6[44] = v1;

  if (v1)
  {
    v3 = sub_268CFD178;
  }

  else
  {
    v5 = v6[36];

    v3 = sub_268CFC930;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CFC930()
{
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  v1 = v0[43];
  v2 = *(v0[26] + 8);

  return v2(v1);
}

uint64_t sub_268CFCA00(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[46] = a1;
  v5[47] = v1;

  if (v1)
  {
    v3 = sub_268CFD0C4;
  }

  else
  {
    v3 = sub_268CFCB70;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CFCB70()
{
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[46];
  v2 = *(v0[26] + 8);

  return v2(v1);
}

uint64_t sub_268CFCC28(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[51] = a1;
  v5[52] = v1;

  if (v1)
  {
    v3 = sub_268CFD330;
  }

  else
  {

    v3 = sub_268CFCDCC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CFCDCC()
{
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[51];
  v2 = *(v0[26] + 8);

  return v2(v1);
}

uint64_t sub_268CFCE9C(uint64_t a1)
{
  v5 = *v2;
  v5[26] = *v2;
  v5[54] = a1;
  v5[55] = v1;

  if (v1)
  {
    v3 = sub_268CFD27C;
  }

  else
  {
    v3 = sub_268CFD00C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268CFD00C()
{
  v0[26] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[54];
  v2 = *(v0[26] + 8);

  return v2(v1);
}

uint64_t sub_268CFD0C4()
{
  *(v0 + 208) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(*(v0 + 208) + 8);

  return v1();
}

uint64_t sub_268CFD178()
{
  v3 = v0[36];
  v0[26] = v0;

  MEMORY[0x277D82BD8](v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);

  v1 = *(v0[26] + 8);

  return v1();
}

uint64_t sub_268CFD27C()
{
  *(v0 + 208) = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(*(v0 + 208) + 8);

  return v1();
}

uint64_t sub_268CFD330()
{
  *(v0 + 208) = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v1 = *(*(v0 + 208) + 8);

  return v1();
}

uint64_t *sub_268CFD41C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for SettingsBinarySetting(0);

  a1[1] = SettingsBinarySetting.__allocating_init(settingId:value:)(a2, a3, 0);

  *(a1 + 16) = sub_268CDD6D4() & 1;
  v10 = *(a4 + qword_2802DBFE0);

  *a1 = v10;

  v12 = sub_268D2403C([a5 binaryValue], 0, 1);
  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  result = a1;
  *(a1 + *(DoesNotSupportBinarySettingParameters + 36)) = v12;
  *(a1 + *(DoesNotSupportBinarySettingParameters + 32)) = 1;
  return result;
}

uint64_t *sub_268CFD5A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SettingsBinarySetting(0);

  a1[1] = SettingsBinarySetting.__allocating_init(settingId:value:)(a2, a3, 0);

  *(a1 + 16) = sub_268CDD6D4() & 1;
  v9 = *(a4 + qword_2802DBFE0);

  *a1 = v9;

  DoesNotSupportBinarySettingParameters = type metadata accessor for SettingIntentDeviceDoesNotSupportBinarySettingParameters(0);
  result = a1;
  *(a1 + *(DoesNotSupportBinarySettingParameters + 32)) = 1;
  return result;
}

uint64_t sub_268CFD6F8(uint64_t a1, uint64_t a2)
{
  *(v3 + 1384) = v2;
  *(v3 + 1376) = a2;
  *(v3 + 1368) = a1;
  *(v3 + 1288) = v3;
  *(v3 + 1296) = 0;
  *(v3 + 1304) = 0;
  *(v3 + 1312) = 0;
  *(v3 + 936) = 0;
  *(v3 + 944) = 0;
  *(v3 + 1328) = 0;
  *(v3 + 1344) = 0;
  *(v3 + 1224) = 0;
  *(v3 + 1232) = 0;
  *(v3 + 2000) = 0;
  *(v3 + 1240) = 0;
  *(v3 + 1248) = 0;
  *(v3 + 2008) = 0;
  *(v3 + 1256) = 0;
  *(v3 + 1264) = 0;
  *(v3 + 1272) = 0;
  *(v3 + 1280) = 0;
  v7 = *v2;
  v4 = sub_268F9AB24();
  *(v3 + 1392) = v4;
  *(v3 + 1400) = *(v4 - 8);
  *(v3 + 1408) = swift_task_alloc();
  *(v3 + 1416) = swift_task_alloc();
  *(v3 + 1296) = a1;
  *(v3 + 1304) = a2;
  *(v3 + 1312) = v2;
  *(v3 + 1424) = *(v7 + qword_2802F0750);
  *(v3 + 1432) = *(v7 + qword_2802F0750 + 8);

  return MEMORY[0x2822009F8](sub_268CFD8D8, 0);
}

uint64_t sub_268CFD8D8()
{
  v316 = v0;
  v1 = *(v0 + 1376);
  v312 = v1;
  *(v0 + 1288) = v0;
  MEMORY[0x277D82BE0](v1);
  if (v312)
  {
    v309 = *(v311 + 1376);
    v310 = [v309 errorDetail];
    if (v310)
    {
      v305 = sub_268F9AE24();
      v306 = v2;
      MEMORY[0x277D82BD8](v310);
      v307 = v305;
      v308 = v306;
    }

    else
    {
      v307 = 0;
      v308 = 0;
    }

    MEMORY[0x277D82BD8](v309);
    v303 = v307;
    v304 = v308;
  }

  else
  {
    v303 = 0;
    v304 = 0;
  }

  *(v311 + 1440) = v304;
  if (!v304)
  {
    v119 = *(v311 + 1376);
    v104 = sub_268DC7B48();
    v124 = *v104;
    MEMORY[0x277D82BE0](*v104);
    v123 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v122 = v105;
    MEMORY[0x277D82BE0](v119);
    *(v311 + 1320) = v119;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v120 = sub_268F9AE64();
    v121 = v106;
    v122[3] = MEMORY[0x277D837D0];
    v122[4] = sub_268CDD224();
    *v122 = v120;
    v122[1] = v121;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingIntentResponse contains error code 'other reason' but no details: %@", 84, 2, &dword_268CBE000, v124, v123);

    MEMORY[0x277D82BD8](v124);
    sub_268D284D4();
    swift_allocError();
    *v107 = 5;
    swift_willThrow();
    goto LABEL_112;
  }

  v3 = *(v311 + 1376);
  v4 = *(v311 + 1368);
  *(v311 + 936) = v303;
  *(v311 + 944) = v304;
  sub_268D23814(v4, v3, (v311 + 96));
  memcpy((v311 + 56), (v311 + 96), 0x28uLL);
  if (!*(v311 + 64))
  {
    sub_268D284D4();
    swift_allocError();
    *v103 = 4;
    swift_willThrow();

LABEL_112:

    v113 = *(*(v311 + 1288) + 8);

    return v113();
  }

  v294 = *(v311 + 1416);
  v293 = *(v311 + 1408);
  v295 = *(v311 + 1392);
  v291 = *(v311 + 1384);
  v292 = *(v311 + 1400);
  memcpy((v311 + 16), (v311 + 56), 0x28uLL);
  sub_268D28C4C();
  *(v311 + 1328) = sub_268CF0C44();
  v5 = sub_268DB98D4();
  v298 = *v5;
  v299 = v5[1];
  v300 = *(v5 + 16);
  v6 = sub_268DC7BA8();
  v301 = *v6;
  MEMORY[0x277D82BE0](*v6);
  (*(v292 + 16))(v294, v291 + qword_2802DBFD8, v295);
  sub_268F9AB14();
  v297 = sub_268F9AB04();
  v296 = *(v292 + 8);
  v296(v293, v295);
  v296(v294, v295);
  sub_268DB9934(v298, v299, v300, v301, (v297 ^ 1) & 1);
  MEMORY[0x277D82BD8](v301);

  *(v311 + 952) = sub_268E948B8(8);
  *(v311 + 960) = v7;
  v302 = MEMORY[0x26D62DB50](*(v311 + 952), *(v311 + 960), v303, v304);
  sub_268CD9D30(v311 + 952);
  if (v302)
  {
    v287 = *(v311 + 1384);

    sub_268CDE730(v287 + qword_2802DC058, v311 + 896);
    v290 = *(v311 + 920);
    v288 = *(v311 + 928);
    __swift_project_boxed_opaque_existential_1((v311 + 896), v290);
    v289 = (*(v288 + 56) + **(v288 + 56));
    v8 = swift_task_alloc();
    v9 = v288;
    v10 = v289;
    v11 = v8;
    v12 = v290;
    *(v311 + 1448) = v11;
    *v11 = *(v311 + 1288);
    v11[1] = sub_268D012F4;

    return v10(v12, v9);
  }

  *(v311 + 968) = sub_268E948B8(5);
  *(v311 + 976) = v13;
  v286 = MEMORY[0x26D62DB50](*(v311 + 968), *(v311 + 976), v303, v304);
  sub_268CD9D30(v311 + 968);
  if (v286)
  {
    v282 = *(v311 + 1384);

    sub_268CDE730(v282 + qword_2802DC058, v311 + 856);
    v285 = *(v311 + 880);
    v283 = *(v311 + 888);
    __swift_project_boxed_opaque_existential_1((v311 + 856), v285);
    v284 = (*(v283 + 80) + **(v283 + 80));
    v14 = swift_task_alloc();
    v9 = v283;
    v10 = v284;
    v15 = v14;
    v12 = v285;
    *(v311 + 1472) = v15;
    *v15 = *(v311 + 1288);
    v15[1] = sub_268D0161C;

    return v10(v12, v9);
  }

  *(v311 + 984) = sub_268E948B8(6);
  *(v311 + 992) = v16;
  v281 = MEMORY[0x26D62DB50](*(v311 + 984), *(v311 + 992), v303, v304);
  sub_268CD9D30(v311 + 984);
  if (v281)
  {
    v277 = *(v311 + 1384);

    sub_268CDE730(v277 + qword_2802DC058, v311 + 816);
    v280 = *(v311 + 840);
    v278 = *(v311 + 848);
    __swift_project_boxed_opaque_existential_1((v311 + 816), v280);
    v279 = (*(v278 + 88) + **(v278 + 88));
    v17 = swift_task_alloc();
    v9 = v278;
    v10 = v279;
    v18 = v17;
    v12 = v280;
    *(v311 + 1496) = v18;
    *v18 = *(v311 + 1288);
    v18[1] = sub_268D01944;

    return v10(v12, v9);
  }

  *(v311 + 1000) = sub_268E948B8(3);
  *(v311 + 1008) = v19;
  v276 = MEMORY[0x26D62DB50](*(v311 + 1000), *(v311 + 1008), v303, v304);
  sub_268CD9D30(v311 + 1000);
  if (v276)
  {
    v274 = *(v311 + 1368);

    v275 = [v274 settingMetadata];
    if (v275)
    {
      v269 = [v275 settingId];
      v270 = sub_268F9AE24();
      v271 = v20;
      MEMORY[0x277D82BD8](v275);
      MEMORY[0x277D82BD8](v269);
      v272 = v270;
      v273 = v271;
    }

    else
    {
      v272 = 0;
      v273 = 0;
    }

    *(v311 + 1520) = v273;
    if (v273)
    {
      v264 = *(v311 + 1384);
      *(v311 + 1272) = v272;
      *(v311 + 1280) = v273;
      sub_268CDE730(v264 + qword_2802DC058, v311 + 776);
      v266 = *(v311 + 800);
      v267 = *(v311 + 808);
      __swift_project_boxed_opaque_existential_1((v311 + 776), v266);

      v265 = swift_task_alloc();
      *(v311 + 1528) = v265;
      v265[2] = v272;
      v265[3] = v273;
      v265[4] = v264;
      v268 = (*(v267 + 24) + **(v267 + 24));
      v21 = swift_task_alloc();
      v22 = v265;
      v23 = v266;
      v24 = v267;
      v25 = v268;
      v26 = v21;
      v27 = sub_268D28EEC;
      *(v311 + 1536) = v26;
      *v26 = *(v311 + 1288);
      v26[1] = sub_268D01C6C;

      return v25(v27, v22, v23, v24);
    }

    v28 = sub_268DB98D4();
    v260 = *v28;
    v258 = v28[1];
    v259 = *(v28 + 16);
    v29 = sub_268DC7BA8();
    v261 = *v29;
    MEMORY[0x277D82BE0](*v29);
    sub_268DB9B78(v260, v258, v259, v261);
    MEMORY[0x277D82BD8](v261);
    sub_268D28BD4();
    v262 = swift_allocError();
    *v30 = 2;
    swift_willThrow();
    v263 = v262;
    goto LABEL_111;
  }

  *(v311 + 1016) = sub_268E948B8(11);
  *(v311 + 1024) = v31;
  v257 = MEMORY[0x26D62DB50](*(v311 + 1016), *(v311 + 1024), v303, v304);
  sub_268CD9D30(v311 + 1016);
  if (v257)
  {
    v251 = *(v311 + 1384);

    sub_268CDE730(v251 + qword_2802DBFF0, v311 + 736);
    v253 = *(v311 + 760);
    v254 = *(v311 + 768);
    __swift_project_boxed_opaque_existential_1((v311 + 736), v253);
    v256 = *(v251 + qword_2802DBFE0);
    *(v311 + 1560) = v256;

    v252 = sub_268CDD6D4();
    v255 = (*(v254 + 120) + **(v254 + 120));
    v32 = swift_task_alloc();
    v23 = v253;
    v24 = v254;
    v25 = v255;
    v33 = v32;
    v27 = v256;
    *(v311 + 1568) = v33;
    *v33 = *(v311 + 1288);
    v33[1] = sub_268D01FDC;
    v22 = v252 & 1;

    return v25(v27, v22, v23, v24);
  }

  *(v311 + 1032) = sub_268E948B8(12);
  *(v311 + 1040) = v34;
  v250 = MEMORY[0x26D62DB50](*(v311 + 1032), *(v311 + 1040), v303, v304);
  sub_268CD9D30(v311 + 1032);
  if (v250)
  {
    v244 = *(v311 + 1384);

    sub_268CDE730(v244 + qword_2802DBFF0, v311 + 696);
    v246 = *(v311 + 720);
    v247 = *(v311 + 728);
    __swift_project_boxed_opaque_existential_1((v311 + 696), v246);
    v249 = sub_268E948B8(12);
    v245 = v35;
    *(v311 + 1592) = v35;
    v248 = (*(v247 + 128) + **(v247 + 128));
    v36 = swift_task_alloc();
    v22 = v245;
    v23 = v246;
    v24 = v247;
    v25 = v248;
    v37 = v36;
    v27 = v249;
    *(v311 + 1600) = v37;
    *v37 = *(v311 + 1288);
    v37[1] = sub_268D02318;

    return v25(v27, v22, v23, v24);
  }

  *(v311 + 1048) = sub_268E948B8(15);
  *(v311 + 1056) = v38;
  v243 = MEMORY[0x26D62DB50](*(v311 + 1048), *(v311 + 1056), v303, v304);
  sub_268CD9D30(v311 + 1048);
  if (v243)
  {
    v237 = *(v311 + 1384);

    sub_268CDE730(v237 + qword_2802DBFF0, v311 + 656);
    v239 = *(v311 + 680);
    v240 = *(v311 + 688);
    __swift_project_boxed_opaque_existential_1((v311 + 656), v239);
    v242 = sub_268E948B8(15);
    v238 = v39;
    *(v311 + 1624) = v39;
    v241 = (*(v240 + 128) + **(v240 + 128));
    v40 = swift_task_alloc();
    v22 = v238;
    v23 = v239;
    v24 = v240;
    v25 = v241;
    v41 = v40;
    v27 = v242;
    *(v311 + 1632) = v41;
    *v41 = *(v311 + 1288);
    v41[1] = sub_268D02654;

    return v25(v27, v22, v23, v24);
  }

  *(v311 + 1064) = sub_268E948B8(13);
  *(v311 + 1072) = v42;
  v236 = MEMORY[0x26D62DB50](*(v311 + 1064), *(v311 + 1072), v303, v304);
  sub_268CD9D30(v311 + 1064);
  if (v236)
  {
    v230 = *(v311 + 1384);

    sub_268CDE730(v230 + qword_2802DBFF0, v311 + 616);
    v232 = *(v311 + 640);
    v233 = *(v311 + 648);
    __swift_project_boxed_opaque_existential_1((v311 + 616), v232);
    v235 = sub_268E948B8(13);
    v231 = v43;
    *(v311 + 1656) = v43;
    v234 = (*(v233 + 128) + **(v233 + 128));
    v44 = swift_task_alloc();
    v22 = v231;
    v23 = v232;
    v24 = v233;
    v25 = v234;
    v45 = v44;
    v27 = v235;
    *(v311 + 1664) = v45;
    *v45 = *(v311 + 1288);
    v45[1] = sub_268D02990;

    return v25(v27, v22, v23, v24);
  }

  *(v311 + 1080) = sub_268E948B8(18);
  *(v311 + 1088) = v46;
  v229 = MEMORY[0x26D62DB50](*(v311 + 1080), *(v311 + 1088), v303, v304);
  sub_268CD9D30(v311 + 1080);
  if (v229)
  {
    v225 = *(v311 + 1384);

    sub_268CDE730(v225 + qword_2802DBFF0, v311 + 576);
    v228 = *(v311 + 600);
    v226 = *(v311 + 608);
    __swift_project_boxed_opaque_existential_1((v311 + 576), v228);
    v227 = (*(v226 + 136) + **(v226 + 136));
    v47 = swift_task_alloc();
    v9 = v226;
    v10 = v227;
    v48 = v47;
    v12 = v228;
    *(v311 + 1688) = v48;
    *v48 = *(v311 + 1288);
    v48[1] = sub_268D02CCC;

    return v10(v12, v9);
  }

  *(v311 + 1096) = sub_268E948B8(17);
  *(v311 + 1104) = v49;
  v224 = MEMORY[0x26D62DB50](*(v311 + 1096), *(v311 + 1104), v303, v304);
  sub_268CD9D30(v311 + 1096);
  if (v224)
  {
    v222 = *(v311 + 1368);

    sub_268DAB218(v222);
    v315[0] = v314[1];
    v221 = sub_268F397B4(v315);

    *(v311 + 2008) = v221;
    v50 = [v222 settingMetadata];
    v223 = v50;
    if (v50)
    {
      v216 = [v50 settingId];
      v217 = sub_268F9AE24();
      v218 = v51;
      MEMORY[0x277D82BD8](v223);
      MEMORY[0x277D82BD8](v216);
      v219 = v217;
      v220 = v218;
    }

    else
    {
      v219 = 0;
      v220 = 0;
    }

    *(v311 + 1712) = v220;
    if (v220)
    {
      *(v311 + 1256) = v219;
      *(v311 + 1264) = v220;
      v315[1] = 45;
      v52 = BinarySettingIdentifier.rawValue.getter();
      v215 = MEMORY[0x26D62DB50](v219, v220, v52);

      if (v215)
      {
        sub_268CDE730(*(v311 + 1384) + qword_2802DC058, v311 + 536);
        v212 = *(v311 + 560);
        v213 = *(v311 + 568);
        __swift_project_boxed_opaque_existential_1((v311 + 536), v212);

        v211 = swift_task_alloc();
        *(v311 + 1720) = v211;
        *(v211 + 16) = v219;
        *(v211 + 24) = v220;
        v214 = (*(v213 + 64) + **(v213 + 64));
        v53 = swift_task_alloc();
        v54 = sub_268D28EE0;
        v55 = v211;
        v56 = v212;
        v57 = v213;
        v58 = v214;
        *(v311 + 1728) = v53;
        *v53 = *(v311 + 1288);
        v53[1] = sub_268D02FF4;
        v59 = v221;
      }

      else
      {
        sub_268CDE730(*(v311 + 1384) + qword_2802DC058, v311 + 496);
        v208 = *(v311 + 520);
        v209 = *(v311 + 528);
        __swift_project_boxed_opaque_existential_1((v311 + 496), v208);

        v207 = swift_task_alloc();
        *(v311 + 1752) = v207;
        *(v207 + 16) = v219;
        *(v207 + 24) = v220;
        v210 = (*(v209 + 8) + **(v209 + 8));
        v61 = swift_task_alloc();
        v54 = sub_268D28ED4;
        v55 = v207;
        v56 = v208;
        v57 = v209;
        v58 = v210;
        *(v311 + 1760) = v61;
        *v61 = *(v311 + 1288);
        v61[1] = sub_268D03374;
        v59 = v221;
      }

      return v58(v59, v54, v55, v56, v57);
    }

    v62 = sub_268DB98D4();
    v204 = *v62;
    v202 = v62[1];
    v203 = *(v62 + 16);
    v63 = sub_268DC7BA8();
    v205 = *v63;
    MEMORY[0x277D82BE0](*v63);
    sub_268DB9B78(v204, v202, v203, v205);
    MEMORY[0x277D82BD8](v205);
    sub_268D28BD4();
    v206 = swift_allocError();
    *v64 = 2;
    swift_willThrow();
    v263 = v206;
LABEL_111:
    v108 = v263;
    *(v311 + 1344) = v263;
    v109 = sub_268DC7B48();
    v118 = *v109;
    MEMORY[0x277D82BE0](*v109);
    v117 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v116 = v110;
    v111 = v263;
    *(v311 + 1352) = v263;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
    v114 = sub_268F9AE64();
    v115 = v112;
    v116[3] = MEMORY[0x277D837D0];
    v116[4] = sub_268CDD224();
    *v116 = v114;
    v116[1] = v115;
    sub_268CD0F7C();
    sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v118, v117);

    MEMORY[0x277D82BD8](v118);
    sub_268D28CD0();
    swift_allocError();
    swift_willThrow();

    MEMORY[0x277D82BD8](*(v311 + 1328));
    sub_268CD9D30(v311 + 16);

    goto LABEL_112;
  }

  *(v311 + 1112) = sub_268E948B8(2);
  *(v311 + 1120) = v65;
  v201 = MEMORY[0x26D62DB50](*(v311 + 1112), *(v311 + 1120), v303, v304);
  sub_268CD9D30(v311 + 1112);
  if (v201)
  {
    v195 = *(v311 + 1432);
    v194 = *(v311 + 1424);
    v193 = *(v311 + 1384);
    v196 = *(v311 + 1368);

    sub_268CDE730(v193 + qword_2802DBFF0, v311 + 416);
    v198 = *(v311 + 440);
    v199 = *(v311 + 448);
    __swift_project_boxed_opaque_existential_1((v311 + 416), v198);
    sub_268D28814((v311 + 16), (v311 + 456));
    MEMORY[0x277D82BE0](v196);
    v197 = swift_task_alloc();
    *(v311 + 1784) = v197;
    v197[2] = v194;
    v197[3] = v195;
    v197[4] = v311 + 16;
    v197[5] = v196;
    v200 = (*(v199 + 144) + **(v199 + 144));
    v66 = swift_task_alloc();
    v22 = v197;
    v23 = v198;
    v24 = v199;
    v25 = v200;
    v67 = v66;
    v27 = sub_268D28EB0;
    *(v311 + 1792) = v67;
    *v67 = *(v311 + 1288);
    v67[1] = sub_268D036F4;

    return v25(v27, v22, v23, v24);
  }

  *(v311 + 1128) = sub_268E948B8(1);
  *(v311 + 1136) = v68;
  v192 = MEMORY[0x26D62DB50](*(v311 + 1128), *(v311 + 1136), v303, v304);
  sub_268CD9D30(v311 + 1128);
  if ((v192 & 1) == 0)
  {

    *(v311 + 1144) = sub_268E948B8(9);
    *(v311 + 1152) = v76;
    v174 = MEMORY[0x26D62DB50](*(v311 + 1144), *(v311 + 1152), v303, v304);
    sub_268CD9D30(v311 + 1144);
    if (v174)
    {
      v170 = *(v311 + 1384);

      sub_268CDE730(v170 + qword_2802DBFF0, v311 + 336);
      v173 = *(v311 + 360);
      v171 = *(v311 + 368);
      __swift_project_boxed_opaque_existential_1((v311 + 336), v173);
      v172 = (*(v171 + 40) + **(v171 + 40));
      v77 = swift_task_alloc();
      v9 = v171;
      v10 = v172;
      v78 = v77;
      v12 = v173;
      *(v311 + 1856) = v78;
      *v78 = *(v311 + 1288);
      v78[1] = sub_268D03DB4;

      return v10(v12, v9);
    }

    *(v311 + 1160) = sub_268E948B8(0);
    *(v311 + 1168) = v79;
    v169 = MEMORY[0x26D62DB50](*(v311 + 1160), *(v311 + 1168), v303, v304);
    sub_268CD9D30(v311 + 1160);
    if (v169)
    {
      v167 = *(v311 + 1368);

      v168 = [v167 settingMetadata];
      if (v168 && (v166 = [v168 targetApp], *&v80 = MEMORY[0x277D82BD8](v168).n128_u64[0], v166))
      {
        v81 = [v166 bundleIdentifier];
        v165 = v81;
        if (v81)
        {
          v161 = sub_268F9AE24();
          v162 = v82;
          MEMORY[0x277D82BD8](v165);
          v163 = v161;
          v164 = v162;
        }

        else
        {
          v163 = 0;
          v164 = 0;
        }

        MEMORY[0x277D82BD8](v166);
        v159 = v163;
        v160 = v164;
      }

      else
      {
        v159 = 0;
        v160 = 0;
      }

      *(v311 + 1880) = v160;
      if (v160)
      {
        v83 = *(v311 + 1384);
        *(v311 + 1224) = v159;
        *(v311 + 1232) = v160;
        sub_268CDE730(v83 + qword_2802DBFF0, v311 + 296);
        v156 = *(v311 + 320);
        v157 = *(v311 + 328);
        __swift_project_boxed_opaque_existential_1((v311 + 296), v156);

        v155 = swift_task_alloc();
        *(v311 + 1888) = v155;
        *(v155 + 16) = v159;
        *(v155 + 24) = v160;
        v158 = (*(v157 + 56) + **(v157 + 56));
        v84 = swift_task_alloc();
        v22 = v155;
        v23 = v156;
        v24 = v157;
        v25 = v158;
        v85 = v84;
        v27 = sub_268D28E98;
        *(v311 + 1896) = v85;
        *v85 = *(v311 + 1288);
        v85[1] = sub_268D040DC;

        return v25(v27, v22, v23, v24);
      }

      v148 = *(v311 + 1368);
      v86 = sub_268DC7B48();
      v153 = *v86;
      MEMORY[0x277D82BE0](*v86);
      v152 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v151 = v87;
      MEMORY[0x277D82BE0](v148);
      *(v311 + 1360) = v148;
      sub_268CD7620();
      sub_268D28940();
      v149 = sub_268F9AE74();
      v150 = v88;
      v151[3] = MEMORY[0x277D837D0];
      v151[4] = sub_268CDD224();
      *v151 = v149;
      v151[1] = v150;
      sub_268CD0F7C();
      sub_268F9AC04("SetBinarySettingIntentResponse 'appNotInstalledForAnnounceNotifications' error is missing app bundle id: %@", 107, 2, &dword_268CBE000, v153, v152);

      MEMORY[0x277D82BD8](v153);
      sub_268D284D4();
      v154 = swift_allocError();
      *v89 = 1;
      swift_willThrow();
      v263 = v154;
    }

    else
    {

      *(v311 + 1176) = sub_268E948B8(20);
      *(v311 + 1184) = v90;
      v147 = MEMORY[0x26D62DB50](*(v311 + 1176), *(v311 + 1184), v303, v304);
      sub_268CD9D30(v311 + 1176);
      if (v147)
      {
        v143 = *(v311 + 1384);

        sub_268CDE730(v143 + qword_2802DBFF0, v311 + 256);
        v146 = *(v311 + 280);
        v144 = *(v311 + 288);
        __swift_project_boxed_opaque_existential_1((v311 + 256), v146);
        v145 = (*(v144 + 88) + **(v144 + 88));
        v91 = swift_task_alloc();
        v9 = v144;
        v10 = v145;
        v92 = v91;
        v12 = v146;
        *(v311 + 1920) = v92;
        *v92 = *(v311 + 1288);
        v92[1] = sub_268D0443C;

        return v10(v12, v9);
      }

      *(v311 + 1192) = sub_268E948B8(7);
      *(v311 + 1200) = v93;
      v142 = MEMORY[0x26D62DB50](*(v311 + 1192), *(v311 + 1200), v303, v304);
      sub_268CD9D30(v311 + 1192);
      if (v142)
      {
        v137 = *(v311 + 1384);

        sub_268CDE730(v137 + qword_2802DC058, v311 + 176);
        v139 = *(v311 + 200);
        v140 = *(v311 + 208);
        __swift_project_boxed_opaque_existential_1((v311 + 176), v139);
        sub_268D28814((v311 + 16), (v311 + 216));

        v138 = swift_task_alloc();
        *(v311 + 1944) = v138;
        *(v138 + 16) = v311 + 16;
        *(v138 + 24) = v137;
        v141 = (*(v140 + 32) + **(v140 + 32));
        v94 = swift_task_alloc();
        v22 = v138;
        v23 = v139;
        v24 = v140;
        v25 = v141;
        v95 = v94;
        v27 = sub_268D28E8C;
        *(v311 + 1952) = v95;
        *v95 = *(v311 + 1288);
        v95[1] = sub_268D04764;

        return v25(v27, v22, v23, v24);
      }

      *(v311 + 1208) = sub_268E948B8(22);
      *(v311 + 1216) = v96;
      v136 = MEMORY[0x26D62DB50](*(v311 + 1208), *(v311 + 1216), v303, v304);
      sub_268CD9D30(v311 + 1208);
      if (v136)
      {
        v132 = *(v311 + 1384);

        sub_268CDE730(v132 + qword_2802DC058, v311 + 136);
        v135 = *(v311 + 160);
        v133 = *(v311 + 168);
        __swift_project_boxed_opaque_existential_1((v311 + 136), v135);
        v134 = (*(v133 + 104) + **(v133 + 104));
        v97 = swift_task_alloc();
        v9 = v133;
        v10 = v134;
        v98 = v97;
        v12 = v135;
        *(v311 + 1976) = v98;
        *v98 = *(v311 + 1288);
        v98[1] = sub_268D04AC0;

        return v10(v12, v9);
      }

      v125 = *(v311 + 1376);

      v99 = sub_268DC7B48();
      v130 = *v99;
      MEMORY[0x277D82BE0](*v99);
      v129 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v128 = v100;
      MEMORY[0x277D82BE0](v125);
      *(v311 + 1336) = v125;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
      v126 = sub_268F9AE64();
      v127 = v101;
      v128[3] = MEMORY[0x277D837D0];
      v128[4] = sub_268CDD224();
      *v128 = v126;
      v128[1] = v127;
      sub_268CD0F7C();
      sub_268F9AC04("SetBinarySettingIntentResponse 'other reason' error code contains unsupported error detail: %@", 94, 2, &dword_268CBE000, v130, v129);

      MEMORY[0x277D82BD8](v130);
      sub_268D284D4();
      v131 = swift_allocError();
      *v102 = 8;
      swift_willThrow();
      v263 = v131;
    }

    goto LABEL_111;
  }

  v190 = *(v311 + 1368);

  sub_268DAB218(v190);
  v314[0] = v313;
  v189 = sub_268F397B4(v314);

  *(v311 + 2000) = v189;
  v69 = [v190 settingMetadata];
  v191 = v69;
  if (v69)
  {
    v184 = [v69 settingId];
    v185 = sub_268F9AE24();
    v186 = v70;
    MEMORY[0x277D82BD8](v191);
    MEMORY[0x277D82BD8](v184);
    v187 = v185;
    v188 = v186;
  }

  else
  {
    v187 = 0;
    v188 = 0;
  }

  *(v311 + 1816) = v188;
  if (!v188)
  {
    v73 = sub_268DB98D4();
    v177 = *v73;
    v175 = v73[1];
    v176 = *(v73 + 16);
    v74 = sub_268DC7BA8();
    v178 = *v74;
    MEMORY[0x277D82BE0](*v74);
    sub_268DB9B78(v177, v175, v176, v178);
    MEMORY[0x277D82BD8](v178);
    sub_268D284D4();
    v179 = swift_allocError();
    *v75 = 4;
    swift_willThrow();
    v263 = v179;
    goto LABEL_111;
  }

  v71 = *(v311 + 1384);
  *(v311 + 1240) = v187;
  *(v311 + 1248) = v188;
  sub_268CDE730(v71 + qword_2802DC058, v311 + 376);
  v181 = *(v311 + 400);
  v182 = *(v311 + 408);
  __swift_project_boxed_opaque_existential_1((v311 + 376), v181);

  v180 = swift_task_alloc();
  *(v311 + 1824) = v180;
  *(v180 + 16) = v187;
  *(v180 + 24) = v188;
  v183 = (*(v182 + 8) + **(v182 + 8));
  v72 = swift_task_alloc();
  *(v311 + 1832) = v72;
  *v72 = *(v311 + 1288);
  v72[1] = sub_268D03A50;

  return v183(v189, sub_268D28EA4, v180, v181, v182);
}

uint64_t sub_268D012F4(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[182] = a1;
  v5[183] = v1;

  if (v1)
  {
    v3 = sub_268D04DE8;
  }

  else
  {
    v3 = sub_268D01474;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D01474()
{
  v1 = v0[182];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);
  v12 = v0[182];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D0161C(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[185] = a1;
  v5[186] = v1;

  if (v1)
  {
    v3 = sub_268D05094;
  }

  else
  {
    v3 = sub_268D0179C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D0179C()
{
  v1 = v0[185];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v12 = v0[185];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D01944(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[188] = a1;
  v5[189] = v1;

  if (v1)
  {
    v3 = sub_268D05340;
  }

  else
  {
    v3 = sub_268D01AC4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D01AC4()
{
  v1 = v0[188];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 102);
  v12 = v0[188];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D01C6C(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[193] = a1;
  v5[194] = v1;

  if (v1)
  {
    v3 = sub_268D055EC;
  }

  else
  {

    v3 = sub_268D01E20;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D01E20()
{
  v1 = v0[193];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 97);

  v12 = v0[193];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D01FDC(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[197] = a1;
  v5[198] = v1;

  if (v1)
  {
    v3 = sub_268D058D4;
  }

  else
  {

    v3 = sub_268D02170;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D02170()
{
  v1 = v0[197];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 92);
  v12 = v0[197];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D02318(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[201] = a1;
  v5[202] = v1;

  if (v1)
  {
    v3 = sub_268D05B88;
  }

  else
  {

    v3 = sub_268D024AC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D024AC()
{
  v1 = v0[201];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  v12 = v0[201];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D02654(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[205] = a1;
  v5[206] = v1;

  if (v1)
  {
    v3 = sub_268D05E3C;
  }

  else
  {

    v3 = sub_268D027E8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D027E8()
{
  v1 = v0[205];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 82);
  v12 = v0[205];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D02990(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[209] = a1;
  v5[210] = v1;

  if (v1)
  {
    v3 = sub_268D060F0;
  }

  else
  {

    v3 = sub_268D02B24;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D02B24()
{
  v1 = v0[209];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 77);
  v12 = v0[209];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D02CCC(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[212] = a1;
  v5[213] = v1;

  if (v1)
  {
    v3 = sub_268D063A4;
  }

  else
  {
    v3 = sub_268D02E4C;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D02E4C()
{
  v1 = v0[212];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v12 = v0[212];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D02FF4(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[217] = a1;
  v5[218] = v1;

  if (v1)
  {
    v3 = sub_268D06650;
  }

  else
  {

    v3 = sub_268D03198;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D03198()
{
  v1 = v0[217];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 67);
  v12 = v0[217];

  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D03374(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[221] = a1;
  v5[222] = v1;

  if (v1)
  {
    v3 = sub_268D0692C;
  }

  else
  {

    v3 = sub_268D03518;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D03518()
{
  v1 = v0[221];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 62);
  v12 = v0[221];

  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D036F4(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[161] = *v2;
  v7[225] = a1;
  v7[226] = v1;

  if (v1)
  {
    v3 = sub_268D06C08;
  }

  else
  {
    v5 = *(v6 + 1352);

    sub_268CD9D30(v6);

    v3 = sub_268D038A8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D038A8()
{
  v1 = v0[225];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  v12 = v0[225];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D03A50(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[230] = a1;
  v5[231] = v1;

  if (v1)
  {
    v3 = sub_268D06EE4;
  }

  else
  {

    v3 = sub_268D03BF4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D03BF4()
{
  v1 = v0[230];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 47);

  v12 = v0[230];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D03DB4(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[233] = a1;
  v5[234] = v1;

  if (v1)
  {
    v3 = sub_268D071C0;
  }

  else
  {
    v3 = sub_268D03F34;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D03F34()
{
  v1 = v0[233];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v12 = v0[233];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D040DC(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[238] = a1;
  v5[239] = v1;

  if (v1)
  {
    v3 = sub_268D0746C;
  }

  else
  {

    v3 = sub_268D04280;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D04280()
{
  v1 = v0[238];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);

  v12 = v0[238];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D0443C(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[241] = a1;
  v5[242] = v1;

  if (v1)
  {
    v3 = sub_268D07744;
  }

  else
  {
    v3 = sub_268D045BC;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D045BC()
{
  v1 = v0[241];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v12 = v0[241];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D04764(uint64_t a1)
{
  v6 = *v2;
  v5 = *v2 + 16;
  v6[161] = *v2;
  v6[245] = a1;
  v6[246] = v1;

  if (v1)
  {
    v3 = sub_268D079F0;
  }

  else
  {

    sub_268CD9D30(v5);

    v3 = sub_268D04918;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D04918()
{
  v1 = v0[245];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v12 = v0[245];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D04AC0(uint64_t a1)
{
  v5 = *v2;
  v5[161] = *v2;
  v5[248] = a1;
  v5[249] = v1;

  if (v1)
  {
    v3 = sub_268D07CC4;
  }

  else
  {
    v3 = sub_268D04C40;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D04C40()
{
  v1 = v0[248];
  v7 = v1;
  v0[161] = v0;
  MEMORY[0x277D82BE0](v1);
  v2 = v0[166];
  v0[166] = v7;
  MEMORY[0x277D82BD8](v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v12 = v0[248];
  v3 = sub_268DB98D4();
  v10 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v4 = sub_268DC7BA8();
  v11 = *v4;
  MEMORY[0x277D82BE0](*v4);
  sub_268DB9B78(v10, v8, v9, v11);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v5 = *(v0[161] + 8);

  return v5(v12);
}

uint64_t sub_268D04DE8()
{
  v0[161] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);
  v13 = v0[183];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D05094()
{
  v0[161] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v13 = v0[186];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D05340()
{
  v0[161] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 102);
  v13 = v0[189];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D055EC()
{
  v0[161] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 97);

  v13 = v0[194];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D058D4()
{
  v0[161] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 92);
  v13 = v0[198];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D05B88()
{
  v0[161] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  v13 = v0[202];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D05E3C()
{
  v0[161] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 82);
  v13 = v0[206];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D060F0()
{
  v0[161] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 77);
  v13 = v0[210];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D063A4()
{
  v0[161] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  v13 = v0[213];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D06650()
{
  v0[161] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 67);

  v13 = v0[218];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D0692C()
{
  v0[161] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 62);

  v13 = v0[222];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D06C08()
{
  v8 = v0[171];
  v0[161] = v0;

  sub_268CD9D30((v0 + 2));
  MEMORY[0x277D82BD8](v8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 52);
  v14 = v0[226];
  v1 = v14;
  v0[168] = v14;
  v2 = sub_268DC7B48();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v14;
  v0[169] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D06EE4()
{
  v0[161] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 47);

  v13 = v0[231];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D071C0()
{
  v0[161] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 42);
  v13 = v0[234];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D0746C()
{
  v0[161] = v0;

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);

  v13 = v0[239];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D07744()
{
  v0[161] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  v13 = v0[242];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D079F0()
{
  v0[161] = v0;

  sub_268CD9D30((v0 + 2));

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  v13 = v0[246];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t sub_268D07CC4()
{
  v0[161] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v13 = v0[249];
  v1 = v13;
  v0[168] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[169] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SettingIntent.patternfamily or SetBinarySettingIntent.patternfamily executor contains error code %@", 99, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D28CD0();
  swift_allocError();
  swift_willThrow();

  MEMORY[0x277D82BD8](v0[166]);
  sub_268CD9D30((v0 + 2));

  v6 = *(v0[161] + 8);

  return v6();
}

uint64_t *sub_268D07F70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SettingsBinarySetting(0);

  a1[1] = SettingsBinarySetting.__allocating_init(settingId:value:)(a2, a3, 0);

  v9 = *(a4 + qword_2802DBFE0);

  *a1 = v9;

  v4 = sub_268CDD6D4();
  result = a1;
  *(a1 + 16) = v4 & 1;
  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268D08094(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a1;
  v24._countAndFlagsBits = a2;
  v24._object = a3;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v24._countAndFlagsBits, v24._object, v3);
  v20 = &v14 - v19;
  v21 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, &v14 - v19);
  v22 = &v14 - v21;
  v31 = v8;
  v29 = v9;
  v30 = v10;
  type metadata accessor for SettingsMultiSetting(0);

  v11 = sub_268E067CC(v24._countAndFlagsBits, v24._object, 0);
  *(v23 + 8) = v11;

  result.value = BinarySettingIdentifier.init(rawValue:)(v24).value;
  v25 = v28;
  if (v28 != 65)
  {
    v18 = v25;
    v27 = v25;
    v26 = v25;
    sub_268E0697C(&v26, v22);
    v17 = 0;
    v16 = type metadata accessor for SettingIntentSiriCannotChangeMultiSettingParameters(0);
    sub_268D29FC8(v22, (v23 + *(v16 + 24)));
    sub_268D2A1F0((v23 + *(v16 + 24)), v20);
    v13 = sub_268F9A9C4();
    v15 = (*(*(v13 - 8) + 48))(v20, 1) == 1;
    v14 = v15;
    result.value = sub_268D28588(v20);
    *(v23 + *(v16 + 28)) = v14;
  }

  return result;
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268D082E0(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = a1;
  v29._countAndFlagsBits = a2;
  v29._object = a3;
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v32 = 0;
  v21 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v28, v29._countAndFlagsBits, v29._object, v3);
  v22 = &v16 - v21;
  v23 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, &v16 - v21);
  v24 = &v16 - v23;
  v37 = v8;
  v35 = v9;
  v36 = v10;
  type metadata accessor for SettingsBinarySetting(0);

  v26 = 1;
  v11 = SettingsBinarySetting.__allocating_init(settingId:value:)(v29._countAndFlagsBits, v29._object, 0);
  *(v28 + 8) = v11;

  v34 = 44;
  v12 = BinarySettingIdentifier.rawValue.getter();
  v25 = v13;
  v27 = MEMORY[0x26D62DB50](v12);

  *(v28 + 1) = v27 & v26;

  result.value = BinarySettingIdentifier.init(rawValue:)(v29).value;
  v30 = v33;
  if (v33 != 65)
  {
    v20 = v30;
    v32 = v30;
    v31 = v30;
    sub_268E0697C(&v31, v24);
    v19 = 0;
    v18 = type metadata accessor for SettingIntentSiriCannotChangeSettingParameters(0);
    sub_268D29FC8(v24, (v28 + *(v18 + 28)));
    sub_268D2A1F0((v28 + *(v18 + 28)), v22);
    v15 = sub_268F9A9C4();
    v17 = (*(*(v15 - 8) + 48))(v22, 1) == 1;
    v16 = v17;
    result.value = sub_268D28588(v22);
    *(v28 + *(v18 + 32)) = v16;
  }

  return result;
}

uint64_t sub_268D08578(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for SettingsMultiSetting(0);
  v10 = *a2;
  v9 = a2[1];

  [a3 binaryValue];
  type metadata accessor for INBinarySettingValue(0);
  sub_268CD925C();
  v5 = sub_268F9B754();
  *a1 = sub_268E067CC(v10, v9, v5 & 1);
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268D08674(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a1;
  v24._countAndFlagsBits = a2;
  v24._object = a3;
  v31 = 0;
  v29 = 0;
  v30 = 0;
  v27 = 0;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v23, v24._countAndFlagsBits, v24._object, v3);
  v20 = &v14 - v19;
  v21 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, &v14 - v19);
  v22 = &v14 - v21;
  v31 = v8;
  v29 = v9;
  v30 = v10;
  type metadata accessor for SettingsBinarySetting(0);

  v11 = SettingsBinarySetting.__allocating_init(settingId:value:)(v24._countAndFlagsBits, v24._object, 0);
  *(v23 + 8) = v11;

  result.value = BinarySettingIdentifier.init(rawValue:)(v24).value;
  v25 = v28;
  if (v28 != 65)
  {
    v18 = v25;
    v27 = v25;
    v26 = v25;
    sub_268E0697C(&v26, v22);
    v17 = 0;
    v16 = type metadata accessor for SettingIntentSiriCannotChangeSettingParameters(0);
    sub_268D29FC8(v22, (v23 + *(v16 + 28)));
    sub_268D2A1F0((v23 + *(v16 + 28)), v20);
    v13 = sub_268F9A9C4();
    v15 = (*(*(v13 - 8) + 48))(v20, 1) == 1;
    v14 = v15;
    result.value = sub_268D28588(v20);
    *(v23 + *(v16 + 32)) = v14;
  }

  return result;
}

uint64_t sub_268D088C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_268F9A994();

  *a1 = sub_268DE1C68(a2, a3);
}

SiriSettingsIntents::BinarySettingIdentifier_optional sub_268D0893C(void *a1, uint64_t *a2, void *a3)
{
  v27 = a1;
  v29 = a2;
  v26 = a3;
  v39 = 0;
  v38 = 0;
  v35 = 0;
  v33 = 0;
  v22 = *a3;
  v19 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v27, v29, v26, v3);
  v20 = &v14 - v19;
  v21 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5, v6, v7, &v14 - v19);
  v23 = &v14 - v21;
  v39 = v8;
  v38 = v9;
  v37 = *(v22 + qword_2802F0750);
  v36 = *(v22 + qword_2802F0750 + 8);
  v35 = v10;
  type metadata accessor for SettingsBinarySetting(0);
  v24 = *v29;
  v25 = v29[1];

  v11 = SettingsBinarySetting.__allocating_init(settingId:value:)(v24, v25, 0);
  v27[1] = v11;

  v28 = *(v26 + qword_2802DBFE0);

  *v27 = v28;

  v30 = *v29;

  result.value = BinarySettingIdentifier.init(rawValue:)(v30).value;
  v31 = v34;
  if (v34 != 65)
  {
    v18 = v31;
    v33 = v31;
    v32 = v31;
    sub_268E0697C(&v32, v23);
    v17 = 0;
    v16 = type metadata accessor for SettingIntentFocusNotConfiguredParameters(0);
    sub_268D29FC8(v23, v27 + *(v16 + 24));
    sub_268D2A1F0(v27 + *(v16 + 24), v20);
    v13 = sub_268F9A9C4();
    v15 = (*(*(v13 - 8) + 48))(v20, 1) == 1;
    v14 = v15;
    result.value = sub_268D28588(v20);
    *(v27 + *(v16 + 28)) = v14;
  }

  return result;
}

uint64_t sub_268D08C24(uint64_t a1, unsigned int a2, void (*a3)(char *), uint64_t a4)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v17 = a4;
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v12 = *v4;
  v11 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802DE3D0, &qword_268F9D990) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17, v14, v15, v5);
  v16 = (&v11 - v11);
  v24 = v6;
  v23 = v7 & 1;
  v21 = v8;
  v22 = v9;
  v20 = v4;
  v19 = *(v12 + qword_2802F0750);
  v18 = *(v12 + qword_2802F0750 + 8);

  sub_268D08D90(v13, v14 & 1);
  v15(v16);
  sub_268D28378(v16);
}

uint64_t sub_268D08D90(uint64_t a1, char a2)
{

  sub_268F59D70(a1, a2 & 1);
}

uint64_t sub_268D08E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 976) = v4;
  *(v5 + 968) = a4;
  *(v5 + 960) = a3;
  *(v5 + 952) = a1;
  *(v5 + 880) = v5;
  *(v5 + 888) = 0;
  *(v5 + 896) = 0;
  *(v5 + 904) = 0;
  *(v5 + 912) = 0;
  *(v5 + 1096) = 0;
  *(v5 + 1104) = 0;
  *(v5 + 936) = 0;
  *(v5 + 832) = 0;
  *(v5 + 840) = 0;
  *(v5 + 848) = 0;
  *(v5 + 856) = 0;
  *(v5 + 1112) = 0;
  v11 = *v4;
  v6 = sub_268F9A9C4();
  *(v5 + 984) = v6;
  *(v5 + 992) = *(v6 - 8);
  *(v5 + 1000) = swift_task_alloc();
  *(v5 + 888) = a2;
  *(v5 + 896) = a3;
  *(v5 + 904) = a4;
  *(v5 + 912) = v4;
  *(v5 + 1008) = *(v11 + qword_2802F0750);
  *(v5 + 1016) = *(v11 + qword_2802F0750 + 8);

  return MEMORY[0x2822009F8](sub_268D0903C, 0);
}

uint64_t sub_268D0903C()
{
  v35 = v0;
  v1 = v0[121];
  v2 = v0[120];
  v0[110] = v0;
  sub_268D23814(v2, v1, v0 + 82);
  memcpy(v0 + 77, v0 + 82, 0x28uLL);
  if (v0[78])
  {
    memcpy((v32 + 576), (v32 + 616), 0x28uLL);
    v31 = sub_268D2403C(*(v32 + 600), 0, 1);
    *(v32 + 1097) = v31;
    if (v31 == 2)
    {
      v16 = *(v32 + 968);
      v22 = *(v32 + 952);
      v10 = sub_268DC7B48();
      v21 = *v10;
      MEMORY[0x277D82BE0](*v10);
      v20 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v19 = v11;
      MEMORY[0x277D82BE0](v16);
      *(v32 + 920) = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
      v17 = sub_268F9AE64();
      v18 = v12;
      v19[3] = MEMORY[0x277D837D0];
      v19[4] = sub_268CDD224();
      *v19 = v17;
      v19[1] = v18;
      sub_268CD0F7C();
      sub_268F9AC04("SetBinarySettingTemplatingService makeIntentHandledDialogSyncRF2 | response has invalid old value %@", 100, 2, &dword_268CBE000, v21, v20);

      MEMORY[0x277D82BD8](v21);
      memset(v33, 0, sizeof(v33));
      memcpy(v22, v33, 0x70uLL);
      sub_268CD9D30(v32 + 576);
    }

    else
    {
      *(v32 + 1096) = v31 & 1;
      v30 = sub_268D2403C(*(v32 + 608), 0, 1);
      *(v32 + 1098) = v30;
      if (v30 != 2)
      {
        *(v32 + 1104) = v30 & 1;
        v3 = sub_268CDFACC();
        v4 = sub_268CDFAE8((v32 + 576), v30 & 1, v3 & 1);
        *(v32 + 1024) = v4;
        *(v32 + 936) = v4;
        v5 = swift_task_alloc();
        *(v32 + 1032) = v5;
        *v5 = *(v32 + 880);
        v5[1] = sub_268D09778;

        return sub_268D25968(v32 + 576, v30 & 1);
      }

      v23 = *(v32 + 968);
      __dst = *(v32 + 952);
      v7 = sub_268DC7B48();
      v28 = *v7;
      MEMORY[0x277D82BE0](*v7);
      v27 = sub_268F9B294();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
      sub_268F9B734();
      v26 = v8;
      MEMORY[0x277D82BE0](v23);
      *(v32 + 928) = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
      v24 = sub_268F9AE64();
      v25 = v9;
      v26[3] = MEMORY[0x277D837D0];
      v26[4] = sub_268CDD224();
      *v26 = v24;
      v26[1] = v25;
      sub_268CD0F7C();
      sub_268F9AC04("SetBinarySettingTemplatingService makeSnippetModel | response has invalid new value %@", 86, 2, &dword_268CBE000, v28, v27);

      MEMORY[0x277D82BD8](v28);
      memset(v34, 0, sizeof(v34));
      memcpy(__dst, v34, 0x70uLL);
      sub_268CD9D30(v32 + 576);
    }

    v15 = *(*(v32 + 880) + 8);

    return v15();
  }

  else
  {
    sub_268D284D4();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();

    v14 = *(*(v32 + 880) + 8);

    return v14();
  }
}

uint64_t sub_268D09778(uint64_t a1, uint64_t a2)
{
  v11 = *v3;
  v7 = *v3 + 16;
  v8 = (*v3 + 880);
  v9 = *v3 + 576;
  v10 = (*v3 + 832);
  v11[110] = *v3;
  v11[130] = v2;
  v11[131] = a1;
  v11[132] = a2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_268D0A5D8, 0);
  }

  else
  {
    v6 = *(v7 + 1082);
    *v10 = a1;
    v10[1] = a2;
    v4 = swift_task_alloc();
    *(v7 + 1048) = v4;
    *v4 = *v8;
    v4[1] = sub_268D099E0;

    return sub_268D26C40(v9, v6 & 1);
  }
}

uint64_t sub_268D099E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[110] = *v3;
  v6[134] = v2;
  v6[135] = a1;
  v6[136] = a2;

  if (v2)
  {
    v4 = sub_268D0A6C0;
  }

  else
  {
    v4 = sub_268D09B64;
  }

  return MEMORY[0x2822009F8](v4, 0);
}

uint64_t sub_268D09B64()
{
  v49 = v0;
  countAndFlagsBits = v0[68]._countAndFlagsBits;
  object = v0[67]._object;
  v0[55]._countAndFlagsBits = v0;
  v0[53]._countAndFlagsBits = object;
  v0[53]._object = countAndFlagsBits;
  sub_268D28814(&v0[36]._countAndFlagsBits, &v0[43]._object);
  BinarySettingIdentifier.init(rawValue:)(v0[36]);
  if (v46 == 65)
  {
    v16 = sub_268DC7B48();
    v26 = *v16;
    MEMORY[0x277D82BE0](*v16);
    v25 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v24 = v17;
    sub_268D28814((v45 + 576), (v45 + 736));
    *(v45 + 816) = *(v45 + 576);
    *(v45 + 864) = *(v45 + 816);
    v21 = MEMORY[0x277D837D0];
    v22 = sub_268F9AE84();
    v23 = v18;
    v24[3] = v21;
    v24[4] = sub_268CDD224();
    *v24 = v22;
    v24[1] = v23;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService makeSnippetModel | invalid setting identifier %@", 82, 2, &dword_268CBE000, v26, v25);

    MEMORY[0x277D82BD8](v26);
    sub_268D284D4();
    swift_allocError();
    *v19 = 1;
    swift_willThrow();

    sub_268CD9D30(v45 + 576);

    v20 = *(*(v45 + 880) + 8);

    return v20();
  }

  else
  {
    v40 = *(v45 + 1024);
    v3 = *(v45 + 1000);
    settingId_8 = *(v45 + 984);
    v39 = *(v45 + 992);
    *(v45 + 1112) = v46;

    (*(v39 + 16))(v3, v40 + OBJC_IVAR____TtC19SiriSettingsIntents15SettingsSetting_identifier, settingId_8);

    settingId = sub_268F9A9B4();
    v43 = v4;
    (*(v39 + 8))(v3, settingId_8);
    graphicIcon._countAndFlagsBits = sub_268E7AE3C();
    graphicIcon._object = v5;

    sub_268D28814((v45 + 576), (v45 + 776));
    BinarySettingIdentifier.init(rawValue:)(*(v45 + 576));
    if (v47 == 65)
    {
      url = 0;
    }

    else
    {
      v48[119] = v47;
      url.value._countAndFlagsBits = sub_268E7B768();
      url.value._object = v6;
    }

    v37 = *(v45 + 960);
    directInvocationId = *sub_268E7EE28();

    *(v45 + 944) = v37;
    v7 = sub_268CD7620();
    SettingIntent.deviceCategory.getter(v7, &protocol witness table for INSetBinarySettingIntent);
    if (v8)
    {
      v34 = 0;
      v35 = 1;
    }

    else
    {
      sub_268CD4334();
      v34 = v9;
      v35 = 0;
    }

    if (v35)
    {
      deviceCategoryInt = 0;
    }

    else
    {
      deviceCategoryInt = v34;
    }

    v10._object = v43;
    v10._countAndFlagsBits = settingId;
    __dst = *(v45 + 952);
    BinarySettingModel.init(settingId:graphicIcon:label:secondLabel:oldValue:updatedValue:url:directInvocationId:deviceCategoryInt:)((v45 + 16), v10, graphicIcon, *(v45 + 1048), *(v45 + 1080), *(v45 + 1097) & 1, *(v45 + 1098) & 1, url, directInvocationId, deviceCategoryInt);
    memcpy((v45 + 128), (v45 + 16), 0x70uLL);
    v11 = sub_268DC7B48();
    v31 = *v11;
    MEMORY[0x277D82BE0](*v11);
    v30 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v29 = v12;
    sub_268D28EFC(v45 + 128, v45 + 240);
    memcpy((v45 + 352), (v45 + 128), 0x70uLL);
    v27 = sub_268F9AE64();
    v28 = v13;
    v29[3] = MEMORY[0x277D837D0];
    v29[4] = sub_268CDD224();
    *v29 = v27;
    v29[1] = v28;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService makeSnippetModel | returning resultModel %@", 77, 2, &dword_268CBE000, v31, v30);

    MEMORY[0x277D82BD8](v31);
    sub_268D28EFC(v45 + 128, v45 + 464);
    memcpy(v48, (v45 + 128), 0x70uLL);
    memcpy(__dst, v48, 0x70uLL);
    sub_268D29010((v45 + 128));

    sub_268CD9D30(v45 + 576);

    v14 = *(*(v45 + 880) + 8);

    return v14();
  }
}

uint64_t sub_268D0A5D8()
{
  *(v0 + 880) = v0;

  sub_268CD9D30(v0 + 576);

  v1 = *(*(v0 + 880) + 8);

  return v1();
}

uint64_t sub_268D0A6C0()
{
  *(v0 + 880) = v0;

  sub_268CD9D30(v0 + 576);

  v1 = *(*(v0 + 880) + 8);

  return v1();
}

uint64_t sub_268D0A7BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = v3;
  v4[12] = a3;
  v4[11] = a2;
  v4[10] = a1;
  v4[2] = v4;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  v4[7] = 0;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = v3;
  return MEMORY[0x2822009F8](sub_268D0A834, 0);
}

uint64_t sub_268D0A834()
{
  v1 = *(v0 + 96);
  v13 = v1;
  *(v0 + 16) = v0;
  MEMORY[0x277D82BE0](v1);
  if (!v13)
  {
LABEL_8:
    v7 = swift_task_alloc();
    v12[17] = v7;
    *v7 = v12[2];
    v7[1] = sub_268D0ACCC;
    v8 = v12[12];
    v9 = v12[11];
    v10 = v12[10];

    return sub_268D0AF80(v10, v9, v8);
  }

  v11 = v12[12];
  v12[7] = v11;
  v12[8] = [v11 code];
  v12[9] = 3;
  type metadata accessor for INSetBinarySettingIntentResponseCode(0);
  sub_268D29078();
  if (sub_268F9AE04())
  {
    MEMORY[0x277D82BD8](v11);
    goto LABEL_8;
  }

  v2 = swift_task_alloc();
  v12[14] = v2;
  *v2 = v12[2];
  v2[1] = sub_268D0AAA0;
  v3 = v12[12];
  v4 = v12[11];
  v5 = v12[10];

  return sub_268D16064(v5, v4, v3);
}

uint64_t sub_268D0AAA0(uint64_t a1)
{
  v5 = *v2;
  v5[2] = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v3 = sub_268D0AEC4;
  }

  else
  {
    v3 = sub_268D0AC10;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D0AC10()
{
  v1 = v0[12];
  v0[2] = v0;
  v2 = MEMORY[0x277D82BD8](v1);
  v3 = v0[15];
  v4 = *(v0[2] + 8);

  return v4(v3, v2);
}

uint64_t sub_268D0ACCC(uint64_t a1)
{
  v7 = *v2;
  *(v7 + 16) = *v2;
  v8 = v7 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    v3 = a1;
    v4 = *(*v8 + 8);
  }

  return v4(v3);
}

uint64_t sub_268D0AEC4()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = v0;
  v2 = MEMORY[0x277D82BD8](v1);
  v3 = *(*(v0 + 16) + 8);

  return v3(v5, v2);
}

uint64_t sub_268D0AF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 904) = v3;
  *(v4 + 896) = a3;
  *(v4 + 888) = a2;
  *(v4 + 656) = v4;
  *(v4 + 672) = 0;
  *(v4 + 680) = 0;
  *(v4 + 688) = 0;
  *(v4 + 696) = 0;
  *(v4 + 1288) = 0;
  *(v4 + 1296) = 0;
  *(v4 + 720) = 0;
  *(v4 + 728) = 0;
  *(v4 + 650) = 0;
  *(v4 + 1304) = 0;
  *(v4 + 736) = 0;
  *(v4 + 496) = 0;
  *(v4 + 504) = 0;
  *(v4 + 1312) = 0;
  *(v4 + 651) = 0;
  *(v4 + 752) = 0;
  *(v4 + 768) = 0;
  *(v4 + 560) = 0;
  *(v4 + 568) = 0;
  *(v4 + 1320) = 0;
  *(v4 + 640) = 0;
  *(v4 + 648) = 0;
  *(v4 + 784) = 0;
  *(v4 + 576) = 0;
  *(v4 + 584) = 0;
  *(v4 + 792) = 0;
  *(v4 + 800) = 0;
  *(v4 + 832) = 0;
  *(v4 + 592) = 0;
  *(v4 + 600) = 0;
  *(v4 + 856) = 0;
  *(v4 + 872) = 0;
  v9 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC070, &unk_268F9EA10);
  *(v4 + 912) = swift_task_alloc();
  *(v4 + 920) = swift_task_alloc();
  v5 = sub_268F9AB24();
  *(v4 + 928) = v5;
  *(v4 + 936) = *(v5 - 8);
  *(v4 + 944) = swift_task_alloc();
  *(v4 + 952) = swift_task_alloc();
  *(v4 + 672) = a1;
  *(v4 + 680) = a2;
  *(v4 + 688) = a3;
  *(v4 + 696) = v3;
  *(v4 + 960) = *(v9 + qword_2802F0750);
  *(v4 + 968) = *(v9 + qword_2802F0750 + 8);

  return MEMORY[0x2822009F8](sub_268D0B200, 0);
}

void *sub_268D0B200()
{
  v179 = v0;
  v1 = v0[112];
  v2 = v0[111];
  v0[82] = v0;
  sub_268D23814(v2, v1, v0 + 12);
  memcpy(v0 + 7, v0 + 12, 0x28uLL);
  if (!v0[8])
  {
    sub_268D284D4();
    swift_allocError();
    *v54 = 4;
    swift_willThrow();
    goto LABEL_110;
  }

  memcpy((v176 + 16), (v176 + 56), 0x28uLL);
  v175 = sub_268D2403C(*(v176 + 40), 0, 1);
  if (v175 == 2)
  {
    v56 = *(v176 + 896);
    v50 = sub_268DC7B48();
    v61 = *v50;
    MEMORY[0x277D82BE0](*v50);
    v60 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v59 = v51;
    MEMORY[0x277D82BE0](v56);
    *(v176 + 704) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v57 = sub_268F9AE64();
    v58 = v52;
    v59[3] = MEMORY[0x277D837D0];
    v59[4] = sub_268CDD224();
    *v59 = v57;
    v59[1] = v58;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService makeIntentHandledDialogSyncRF2 | response has invalid old value %@", 100, 2, &dword_268CBE000, v61, v60);

    MEMORY[0x277D82BD8](v61);
    sub_268D284D4();
    swift_allocError();
    *v53 = 3;
    swift_willThrow();
    sub_268CD9D30(v176 + 16);
    goto LABEL_110;
  }

  *(v176 + 1288) = v175 & 1;
  v174 = sub_268D2403C(*(v176 + 48), 0, 1);
  if (v174 == 2)
  {
    v62 = *(v176 + 896);
    v46 = sub_268DC7B48();
    v67 = *v46;
    MEMORY[0x277D82BE0](*v46);
    v66 = sub_268F9B294();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
    sub_268F9B734();
    v65 = v47;
    MEMORY[0x277D82BE0](v62);
    *(v176 + 712) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC080, &qword_268F9D998);
    v63 = sub_268F9AE64();
    v64 = v48;
    v65[3] = MEMORY[0x277D837D0];
    v65[4] = sub_268CDD224();
    *v65 = v63;
    v65[1] = v64;
    sub_268CD0F7C();
    sub_268F9AC04("SetBinarySettingTemplatingService makeIntentHandledDialogSyncRF2 | response has invalid new value %@", 100, 2, &dword_268CBE000, v67, v66);

    MEMORY[0x277D82BD8](v67);
    sub_268D284D4();
    swift_allocError();
    *v49 = 2;
    swift_willThrow();
    sub_268CD9D30(v176 + 16);
LABEL_110:

    v55 = *(*(v176 + 656) + 8);

    return v55();
  }

  *(v176 + 1296) = v174 & 1;
  v3 = sub_268CDFACC();
  v173 = sub_268CDFAE8((v176 + 16), v175 & 1, v3 & 1);
  *(v176 + 976) = v173;
  *(v176 + 720) = v173;
  if (!sub_268D24458(v175 & 1, v174 & 1))
  {
    goto LABEL_43;
  }

  *(v176 + 824) = *(v176 + 888);
  v4 = sub_268CD7620();
  v170 = SettingIntent.settingIdentifier.getter(v4, &protocol witness table for INSetBinarySettingIntent);
  v171 = v5;

  v178[1] = 1;
  v169 = BinarySettingIdentifier.rawValue.getter();
  v172 = v6;

  *(v176 + 448) = v170;
  *(v176 + 456) = v171;
  *(v176 + 464) = v169;
  *(v176 + 472) = v172;
  if (!*(v176 + 456))
  {
    if (!*(v176 + 472))
    {
      sub_268CD9D30(v176 + 448);
      v168 = 1;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  sub_268D28874((v176 + 448), (v176 + 608));
  if (!*(v176 + 472))
  {
    sub_268CD9D30(v176 + 608);
LABEL_13:
    sub_268D28550(v176 + 448);
    v168 = 0;
    goto LABEL_11;
  }

  *(v176 + 624) = *(v176 + 464);
  v167 = MEMORY[0x26D62DB50](*(v176 + 608), *(v176 + 616), *(v176 + 624), *(v176 + 632));
  sub_268CD9D30(v176 + 624);
  sub_268CD9D30(v176 + 608);
  sub_268CD9D30(v176 + 448);
  v168 = v167;
LABEL_11:

  if (v168)
  {
LABEL_43:
    v21 = *(v176 + 888);
    *(v176 + 650) = 0;
    sub_268DAB218(v21);
    *(v176 + 1304) = v177;
    if (v177 == 65)
    {
      v130 = 0;
    }

    else
    {
      *(v176 + 1320) = v177;

      v178[0] = v177;
      v128 = sub_268E12DF8(v178);
      v129 = v22;

      if ((v129 & 0xFF00) == 0x400)
      {
        v130 = 0;
      }

      else
      {
        *(v176 + 640) = v128;
        *(v176 + 648) = v129 & 1;
        *(v176 + 649) = HIBYTE(v129);

        v127 = sub_268F23C10();

        *(v176 + 784) = v127;
        *(v176 + 576) = sub_268E127A4(SHIBYTE(v129));
        *(v176 + 584) = v23;
        MEMORY[0x277D82BE0](v127);
        if (v127)
        {

          v123 = sub_268F9AE14();

          v124 = [v127 integerForKey_];
          MEMORY[0x277D82BD8](v123);
          MEMORY[0x277D82BD8](v127);
          v125 = v124;
          v126 = 0;
        }

        else
        {
          v125 = 0;
          v126 = 1;
        }

        if (v126)
        {
          v122 = 0;
        }

        else
        {
          *(v176 + 792) = v125;
          if (v129)
          {
            v122 = 0;
          }

          else
          {
            *(v176 + 800) = v128;

            v121 = sub_268E12F10();

            sub_268D28814((v176 + 16), (v176 + 176));
            if (v125 >= v121)
            {
              v120 = 0;
            }

            else
            {
              *(v176 + 808) = v128;
              *(v176 + 664) = *(v176 + 32);
              *(v176 + 816) = *(v176 + 664);
              type metadata accessor for INBinarySettingValue(0);
              sub_268CD925C();
              v120 = sub_268F9B754();
            }

            sub_268CD9D30(v176 + 16);
            if (v120)
            {
              MEMORY[0x277D82BE0](v127);
              if (v127)
              {
                result = v127;
                if (__OFADD__(v125, 1))
                {
                  __break(1u);
                  return result;
                }

                v119 = sub_268F9AE14();

                [v127 setInteger:v125 + 1 forKey:v119];
                MEMORY[0x277D82BD8](v119);
                MEMORY[0x277D82BD8](v127);
              }

              v25 = sub_268DC7B48();
              v117 = *v25;
              MEMORY[0x277D82BE0](*v25);
              v116 = sub_268F9B284();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
              sub_268F9B734();
              v115 = v26;
              sub_268D28814((v176 + 16), (v176 + 216));
              *(v176 + 480) = *(v176 + 16);
              *(v115 + 24) = MEMORY[0x277D837D0];
              *(v115 + 32) = sub_268CDD224();
              *v115 = *(v176 + 480);
              sub_268CD0F7C();
              sub_268F9AC04("SetBinarySettingTemplatingService makeIntentHandledDialogSyncRF2 | Providing verbose version of changedBinaryValueTo CAT for %@", 127, 2, &dword_268CBE000, v117, v116);

              MEMORY[0x277D82BD8](v117);
              *(v176 + 650) = 1;
              v118 = 1;
            }

            else
            {
              v118 = 0;
            }

            v122 = v118;
          }
        }

        MEMORY[0x277D82BD8](v127);
        v130 = v122;
      }
    }

    v112 = *(v176 + 888);
    v110 = [v112 temporalEventTrigger];
    *(v176 + 1168) = v110;
    *(v176 + 736) = v110;
    v111 = sub_268D25234(v110);
    *(v176 + 1176) = v27;
    *(v176 + 496) = v111;
    *(v176 + 504) = v27;
    v113 = sub_268D245A8(v110);
    *(v176 + 1312) = v113;
    *(v176 + 651) = 0;
    *(v176 + 744) = 0;
    v28 = [v112 settingMetadata];
    v114 = v28;
    if (v28 && (v109 = [v28 targetApp], *&v29 = MEMORY[0x277D82BD8](v114).n128_u64[0], v109))
    {
      v30 = [v109 bundleIdentifier];
      v108 = v30;
      if (v30)
      {
        v104 = sub_268F9AE24();
        v105 = v31;
        MEMORY[0x277D82BD8](v108);
        v106 = v104;
        v107 = v105;
      }

      else
      {
        v106 = 0;
        v107 = 0;
      }

      MEMORY[0x277D82BD8](v109);
      v102 = v106;
      v103 = v107;
    }

    else
    {
      v102 = 0;
      v103 = 0;
    }

    if (v103)
    {
      *(v176 + 560) = v102;
      *(v176 + 568) = v103;
      sub_268F9A994();

      *(v176 + 744) = sub_268DE1C68(v102, v103);

      v100 = sub_268DFFEC0(v102, v103);

      *(v176 + 651) = v100 & 1;

      v101 = v100;
    }

    else
    {
      v101 = 0;
    }

    v32 = *(v176 + 952);
    v90 = *(v176 + 944);
    v91 = *(v176 + 928);
    v88 = *(v176 + 904);
    v98 = *(v176 + 888);
    v89 = *(v176 + 936);
    v33 = sub_268DB98D4();
    v94 = *v33;
    v95 = v33[1];
    v96 = *(v33 + 16);
    v34 = sub_268DC7BA8();
    v97 = *v34;
    MEMORY[0x277D82BE0](*v34);
    (*(v89 + 16))(v32, v88 + qword_2802DBFD8, v91);
    sub_268F9AB14();
    v93 = sub_268F9AB04();
    v92 = *(v89 + 8);
    v92(v90, v91);
    v92(v32, v91);
    sub_268DB9934(v94, v95, v96, v97, (v93 ^ 1) & 1);
    v99 = [v98 settingMetadata];
    if (v99)
    {
      v83 = [v99 settingId];
      v84 = sub_268F9AE24();
      v85 = v35;
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v83);
      v86 = v84;
      v87 = v85;
    }

    else
    {
      v86 = 0;
      v87 = 0;
    }

    v81 = BinarySettingIdentifier.rawValue.getter();
    v82 = v36;

    *(v176 + 416) = v86;
    *(v176 + 424) = v87;
    *(v176 + 432) = v81;
    *(v176 + 440) = v82;
    if (*(v176 + 424))
    {
      sub_268D28874((v176 + 416), (v176 + 512));
      if (*(v176 + 440))
      {
        *(v176 + 528) = *(v176 + 512);
        *(v176 + 544) = *(v176 + 432);
        v79 = MEMORY[0x26D62DB50](*(v176 + 528), *(v176 + 536), *(v176 + 544), *(v176 + 552));
        sub_268CD9D30(v176 + 544);
        sub_268CD9D30(v176 + 528);
        sub_268CD9D30(v176 + 416);
        v80 = v79;
        goto LABEL_90;
      }

      sub_268CD9D30(v176 + 512);
    }

    else if (!*(v176 + 440))
    {
      sub_268CD9D30(v176 + 416);
      v80 = 1;
LABEL_90:

      if (v80)
      {
        v76 = *(v176 + 904);
        *(v176 + 1184) = *(v76 + qword_2802DC000);

        type metadata accessor for SettingsMultiSetting(0);
        sub_268D28814((v176 + 16), (v176 + 136));
        v77 = sub_268E067CC(*(v176 + 16), *(v176 + 24), v175 & 1);
        *(v176 + 1192) = v77;
        v78 = *(v76 + qword_2802DBFE0);
        *(v176 + 1200) = v78;

        if (sub_268F9AF14())
        {
          v75 = *(v176 + 920);
          v37 = sub_268F9A9C4();
          (*(*(v37 - 8) + 56))(v75, 1);
        }

        else
        {
          v74 = *(v176 + 920);

          sub_268F9A9A4();
          v38 = sub_268F9A9C4();
          (*(*(v38 - 8) + 56))(v74, 0, 1);
        }

        v73 = *(v176 + 744);
        *(v176 + 1208) = v73;

        v39 = swift_task_alloc();
        *(v176 + 1216) = v39;
        *v39 = *(v176 + 656);
        v39[1] = sub_268D0EE1C;
        v40 = *(v176 + 920);

        return sub_268DEBF00(v77, v174 & 1, v130 & 1, v78, v40, v113, v73, v101 & 1);
      }

      else
      {
        v71 = *(v176 + 904);
        *(v176 + 1240) = *(v71 + qword_2802DC000);

        v72 = *(v71 + qword_2802DBFE0);
        *(v176 + 1248) = v72;

        v41 = sub_268F9AF14();
        if (v41)
        {
          v70 = *(v176 + 912);
          v42 = sub_268F9A9C4();
          (*(*(v42 - 8) + 56))(v70, 1);
        }

        else
        {
          v69 = *(v176 + 912);

          sub_268F9A9A4();
          v43 = sub_268F9A9C4();
          (*(*(v43 - 8) + 56))(v69, 0, 1);
        }

        v68 = *(v176 + 744);
        *(v176 + 1256) = v68;

        v44 = swift_task_alloc();
        *(v176 + 1264) = v44;
        *v44 = *(v176 + 656);
        v44[1] = sub_268D0F228;
        v45 = *(v176 + 912);

        return sub_268DE7C88(v173, v174 & 1, v130 & 1, v72, v45, v113, v68);
      }
    }

    sub_268D28550(v176 + 416);
    v80 = 0;
    goto LABEL_90;
  }

  v7 = *(v176 + 952);
  v159 = *(v176 + 944);
  v160 = *(v176 + 928);
  v158 = *(v176 + 904);
  v157 = *(v176 + 936);
  v8 = sub_268DB98D4();
  v163 = *v8;
  v164 = v8[1];
  v165 = *(v8 + 16);
  v9 = sub_268DC7BA8();
  v166 = *v9;
  MEMORY[0x277D82BE0](*v9);
  (*(v157 + 16))(v7, v158 + qword_2802DBFD8, v160);
  sub_268F9AB14();
  v162 = sub_268F9AB04();
  v161 = *(v157 + 8);
  v161(v159, v160);
  v161(v7, v160);
  sub_268DB9934(v163, v164, v165, v166, (v162 ^ 1) & 1);
  MEMORY[0x277D82BD8](v166);
  if (sub_268D244E8(*(v176 + 32)))
  {
    sub_268D28814((v176 + 16), (v176 + 336));
    v154 = *(v176 + 16);
    v155 = *(v176 + 24);
    v178[3] = 45;
    v10 = BinarySettingIdentifier.rawValue.getter();
    v156 = MEMORY[0x26D62DB50](v154, v155, v10);

    if (v156)
    {
      v151 = *(v176 + 904);
      *(v176 + 984) = *(v151 + qword_2802DC000);

      type metadata accessor for SettingsMultiSetting(0);
      sub_268D28814((v176 + 16), (v176 + 376));
      v153 = sub_268E067CC(*(v176 + 16), *(v176 + 24), v175 & 1);
      *(v176 + 992) = v153;
      v152 = *(v151 + qword_2802DBFE0);
      *(v176 + 1000) = v152;

      v11 = swift_task_alloc();
      *(v176 + 1008) = v11;
      *v11 = *(v176 + 656);
      v11[1] = sub_268D0E040;

      return sub_268DF93EC(v153, v152);
    }

    else
    {
      v149 = *(v176 + 904);
      *(v176 + 1032) = *(v149 + qword_2802DC000);

      v150 = *(v149 + qword_2802DBFE0);
      *(v176 + 1040) = v150;

      v13 = swift_task_alloc();
      *(v176 + 1048) = v13;
      *v13 = *(v176 + 656);
      v13[1] = sub_268D0E320;

      return sub_268DF877C(v173, v150);
    }
  }

  else
  {
    sub_268D28814((v176 + 16), (v176 + 256));
    v146 = *(v176 + 16);
    v147 = *(v176 + 24);
    v178[2] = 45;
    v14 = BinarySettingIdentifier.rawValue.getter();
    v148 = MEMORY[0x26D62DB50](v146, v147, v14);

    if (v148)
    {
      v15 = *(v176 + 888);
      *(v176 + 848) = 0;
      v145 = [v15 settingMetadata];
      if (v145 && (v144 = [v145 targetApp], *&v16 = MEMORY[0x277D82BD8](v145).n128_u64[0], v144))
      {
        v17 = [v144 bundleIdentifier];
        v143 = v17;
        if (v17)
        {
          v139 = sub_268F9AE24();
          v140 = v18;
          MEMORY[0x277D82BD8](v143);
          v141 = v139;
          v142 = v140;
        }

        else
        {
          v141 = 0;
          v142 = 0;
        }

        MEMORY[0x277D82BD8](v144);
        v137 = v141;
        v138 = v142;
      }

      else
      {
        v137 = 0;
        v138 = 0;
      }

      if (v138)
      {
        *(v176 + 592) = v137;
        *(v176 + 600) = v138;
        sub_268F9A994();

        *(v176 + 848) = sub_268DE1C68(v137, v138);
      }

      v133 = *(v176 + 904);
      *(v176 + 1072) = *(v133 + qword_2802DC000);

      type metadata accessor for SettingsMultiSetting(0);
      sub_268D28814((v176 + 16), (v176 + 296));
      v136 = sub_268E067CC(*(v176 + 16), *(v176 + 24), v175 & 1);
      *(v176 + 1080) = v136;
      v134 = *(v133 + qword_2802DBFE0);
      *(v176 + 1088) = v134;

      v135 = *(v176 + 848);
      *(v176 + 1096) = v135;

      v19 = swift_task_alloc();
      *(v176 + 1104) = v19;
      *v19 = *(v176 + 656);
      v19[1] = sub_268D0E6AC;

      return sub_268DF65B4(v136, v134, v135);
    }

    else
    {
      v131 = *(v176 + 904);
      *(v176 + 1128) = *(v131 + qword_2802DC000);

      v132 = *(v131 + qword_2802DBFE0);
      *(v176 + 1136) = v132;

      v20 = swift_task_alloc();
      *(v176 + 1144) = v20;
      *v20 = *(v176 + 656);
      v20[1] = sub_268D0EA70;

      return sub_268DF56C0(v173, v132);
    }
  }
}

uint64_t sub_268D0E040(uint64_t a1)
{
  v5 = *v2;
  v5[82] = *v2;
  v5[127] = a1;
  v5[128] = v1;

  if (v1)
  {
    v3 = sub_268D0F634;
  }

  else
  {

    v3 = sub_268D0E1E8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D0E1E8()
{
  *(v0 + 656) = v0;

  sub_268CD9D30(v0 + 16);
  v3 = *(v0 + 1016);

  v1 = *(*(v0 + 656) + 8);

  return v1(v3);
}

uint64_t sub_268D0E320(uint64_t a1)
{
  v5 = *v2;
  v5[82] = *v2;
  v5[132] = a1;
  v5[133] = v1;

  if (v1)
  {
    v3 = sub_268D0F910;
  }

  else
  {

    v3 = sub_268D0E4C8;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D0E4C8()
{
  v1 = v0[132];
  v6 = v1;
  v0[82] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[91] = v6;
  v11 = v0[132];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[91]);

  sub_268CD9D30((v0 + 2));

  v4 = *(v0[82] + 8);

  return v4(v11);
}

uint64_t sub_268D0E6AC(uint64_t a1)
{
  v5 = *v2;
  v5[82] = *v2;
  v5[139] = a1;
  v5[140] = v1;

  if (v1)
  {
    v3 = sub_268D0FBEC;
  }

  else
  {

    v3 = sub_268D0E864;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D0E864()
{
  v1 = v0[139];
  v6 = v1;
  v0[82] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[91] = v6;
  sub_268D287E8(v0 + 106);
  v11 = v0[139];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[91]);

  sub_268CD9D30((v0 + 2));

  v4 = *(v0[82] + 8);

  return v4(v11);
}

uint64_t sub_268D0EA70(uint64_t a1)
{
  v5 = *v2;
  v5[82] = *v2;
  v5[144] = a1;
  v5[145] = v1;

  if (v1)
  {
    v3 = sub_268D0FF08;
  }

  else
  {

    v3 = sub_268D0EC18;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D0EC18()
{
  v1 = v0[144];
  v6 = v1;
  v0[82] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[91] = v6;
  v11 = v0[144];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v0[91]);

  sub_268CD9D30((v0 + 2));

  v4 = *(v0[82] + 8);

  return v4(v11);
}

uint64_t sub_268D0EE1C(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[82] = *v2;
  v7[153] = a1;
  v7[154] = v1;

  if (v1)
  {
    v3 = sub_268D1020C;
  }

  else
  {
    v5 = *(v6 + 904);

    sub_268D28588(v5);

    v3 = sub_268D0EFE4;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D0EFE4()
{
  v1 = v0[153];
  v6 = v1;
  v0[82] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[91] = v6;
  v12 = v0[153];
  v11 = v0[146];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  sub_268D287E8(v0 + 93);

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[91]);

  sub_268CD9D30((v0 + 2));

  v4 = *(v0[82] + 8);

  return v4(v12);
}

uint64_t sub_268D0F228(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[82] = *v2;
  v7[159] = a1;
  v7[160] = v1;

  if (v1)
  {
    v3 = sub_268D10548;
  }

  else
  {
    v5 = *(v6 + 896);

    sub_268D28588(v5);

    v3 = sub_268D0F3F0;
  }

  return MEMORY[0x2822009F8](v3, 0);
}

uint64_t sub_268D0F3F0()
{
  v1 = v0[159];
  v6 = v1;
  v0[82] = v0;
  MEMORY[0x277D82BE0](v1);
  v0[91] = v6;
  v12 = v0[159];
  v11 = v0[146];
  v2 = sub_268DB98D4();
  v9 = *v2;
  v7 = v2[1];
  v8 = *(v2 + 16);
  v3 = sub_268DC7BA8();
  v10 = *v3;
  MEMORY[0x277D82BE0](*v3);
  sub_268DB9B78(v9, v7, v8, v10);
  MEMORY[0x277D82BD8](v10);
  sub_268D287E8(v0 + 93);

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v0[91]);

  sub_268CD9D30((v0 + 2));

  v4 = *(v0[82] + 8);

  return v4(v12);
}

uint64_t sub_268D0F634()
{
  v13 = v0[128];
  v0[82] = v0;

  v1 = v13;
  v0[109] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[110] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentHandledDialogSyncRF2 | UnspecifiedActionForSupportedMultiSetting execution error %@", 127, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[82] + 8);

  return v6();
}

uint64_t sub_268D0F910()
{
  v13 = v0[133];
  v0[82] = v0;

  v1 = v13;
  v0[107] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[108] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentHandledDialogSyncRF2 | UnspecifiedActionForSupportedBinarySetting execution error %@", 128, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[82] + 8);

  return v6();
}

uint64_t sub_268D0FBEC()
{
  v0[82] = v0;

  sub_268D287E8(v0 + 106);
  v13 = v0[140];
  v1 = v13;
  v0[104] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[105] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentHandledDialogSyncRF2 | NoNeedToChangeBinaryValueTo execution error %@", 113, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[82] + 8);

  return v6();
}

uint64_t sub_268D0FF08()
{
  v0[82] = v0;

  v13 = v0[145];
  v1 = v13;
  v0[104] = v13;
  v2 = sub_268DC7B48();
  v12 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v11 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v10 = v3;
  v4 = v13;
  v0[105] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v8 = sub_268F9AE64();
  v9 = v5;
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = sub_268CDD224();
  *v10 = v8;
  v10[1] = v9;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentHandledDialogSyncRF2 | NoNeedToChangeBinaryValueTo execution error %@", 113, 2, &dword_268CBE000, v12, v11);

  MEMORY[0x277D82BD8](v12);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[82] + 8);

  return v6();
}

uint64_t sub_268D1020C()
{
  v14 = v0[154];
  v15 = v0[146];
  v8 = v0[115];
  v0[82] = v0;

  sub_268D28588(v8);

  v1 = v14;
  v0[96] = v14;
  v2 = sub_268DC7B48();
  v13 = *v2;
  MEMORY[0x277D82BE0](*v2);
  v12 = sub_268F9B294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC950, qword_268F9D6F0);
  sub_268F9B734();
  v11 = v3;
  v4 = v14;
  v0[97] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802DC0B0, &qword_268F9D9C0);
  v9 = sub_268F9AE64();
  v10 = v5;
  v11[3] = MEMORY[0x277D837D0];
  v11[4] = sub_268CDD224();
  *v11 = v9;
  v11[1] = v10;
  sub_268CD0F7C();
  sub_268F9AC04("SetBinarySettingTemplatingService makeIntentHandledDialogSyncRF2 | ChangedMultiSettingValueTo execution error %@", 112, 2, &dword_268CBE000, v13, v12);

  MEMORY[0x277D82BD8](v13);
  sub_268D290F8();
  swift_allocError();
  swift_willThrow();

  sub_268D287E8(v0 + 93);

  MEMORY[0x277D82BD8](v15);

  sub_268CD9D30((v0 + 2));

  v6 = *(v0[82] + 8);

  return v6();
}
void sub_214524474(uint64_t a1, void *a2)
{
  v4 = a2[3];
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_14;
    }

    v5 = a2[2];
    v6 = (a1 + *(type metadata accessor for CSDMConversationActivityContextProto(0) + 20));

    *v6 = v5;
    v6[1] = v4;
  }

  v7 = a2[8];
  if (v7)
  {
    if (v7 == 1)
    {
      goto LABEL_14;
    }

    v8 = a2[7];
    v9 = (a1 + *(type metadata accessor for CSDMConversationActivityContextProto(0) + 24));

    *v9 = v8;
    v9[1] = v7;
  }

  v10 = a2[13];
  if (v10)
  {
    if (v10 == 1)
    {
      goto LABEL_14;
    }

    v11 = a2[12];
    v12 = (a1 + *(type metadata accessor for CSDMConversationActivityContextProto(0) + 28));

    *v12 = v11;
    v12[1] = v10;
  }

  v13 = a2[18];
  if (!v13)
  {
    return;
  }

  if (v13 == 1)
  {
LABEL_14:
    sub_2146DA018();
    __break(1u);
    return;
  }

  v14 = a2[17];
  v15 = (a1 + *(type metadata accessor for CSDMConversationActivityContextProto(0) + 32));

  *v15 = v14;
  v15[1] = v13;
}

void sub_2145245E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v177 = a2;
  v4 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v185 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v187 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D90, &qword_2146E9870);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v182 = (&v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v184 = &v151 - v9;
  v10 = type metadata accessor for CSDMHandleProto(0);
  v192 = *(v10 - 8);
  v193 = v10;
  MEMORY[0x28223BE20](v10);
  v181 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v180 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v191 = &v151 - v15;
  v16 = type metadata accessor for CSDMConversationActivityContextProto(0);
  v17 = *(v16 - 1);
  MEMORY[0x28223BE20](v16);
  v190 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA0, &qword_2146E9880);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v189 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v151 - v22;
  v24 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
  v194 = a1;
  v25 = *(a1 + v24);
  swift_beginAccess();
  v26 = v25[3];
  v183 = v25[2];
  v292 = v26;
  swift_beginAccess();
  v28 = v25[4];
  v27 = v25[5];
  if (v27 >> 60 != 15)
  {
    sub_213FDCA18(v25[4], v25[5]);
  }

  v186 = v4;
  v197 = v28;
  v198 = v27;
  v202 = v2;
  swift_beginAccess();
  v29 = v25[7];
  v179 = v25[6];
  v201 = v29;
  swift_beginAccess();
  v30 = v25[9];
  v178 = v25[8];
  v200 = v30;
  swift_beginAccess();
  v32 = v25[10];
  v31 = v25[11];
  if (v31 >> 60 != 15)
  {
    sub_213FDCA18(v25[10], v25[11]);
  }

  v195 = v32;
  v196 = v31;
  v33 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
  swift_beginAccess();
  sub_213FB2E54(v25 + v33, v23, &qword_27C903DA0, &qword_2146E9880);
  v188 = *(v17 + 48);
  v34 = v188(v23, 1, v16);

  sub_213FB2DF4(v23, &qword_27C903DA0, &qword_2146E9880);
  v199 = v25;
  if (v34 == 1)
  {
    sub_214535078(&v283);
  }

  else
  {
    v35 = v25 + v33;
    v36 = v189;
    sub_213FB2E54(v35, v189, &qword_27C903DA0, &qword_2146E9880);
    v37 = v188;
    if (v188(v36, 1, v16) == 1)
    {
      v38 = v190;
      sub_2146D8DE8();
      v39 = &v38[v16[5]];
      *v39 = 0;
      *(v39 + 1) = 0;
      v40 = &v38[v16[6]];
      *v40 = 0;
      *(v40 + 1) = 0;
      v41 = &v38[v16[7]];
      *v41 = 0;
      *(v41 + 1) = 0;
      v42 = &v38[v16[8]];
      *v42 = 0;
      *(v42 + 1) = 0;
      if (v37(v36, 1, v16) != 1)
      {
        sub_213FB2DF4(v36, &qword_27C903DA0, &qword_2146E9880);
      }
    }

    else
    {
      v38 = v190;
      sub_214534FEC(v36, v190, type metadata accessor for CSDMConversationActivityContextProto);
    }

    v43 = &v38[v16[5]];
    v44 = *v43;
    v45 = v43[1];
    v46 = &v38[v16[6]];
    v47 = *v46;
    v48 = v46[1];
    v49 = v16[8];
    v50 = &v38[v16[7]];
    v51 = *v50;
    v52 = v50[1];
    v53 = v38;
    v55 = *&v38[v49];
    v54 = *&v38[v49 + 8];

    v56 = v44;
    v57 = v202;
    sub_2140E4070(v56, v45, v47, v48, v51, v52, v55, v54, v208);
    if (v57)
    {
      sub_2145351E4(v53, type metadata accessor for CSDMConversationActivityContextProto);
      sub_2145351E4(v194, type metadata accessor for CSDMConversationActivityProto);
      sub_213FDC6BC(v197, v198);
      sub_213FDC6BC(v195, v196);

LABEL_22:

      return;
    }

    v202 = 0;
    sub_2145351E4(v53, type metadata accessor for CSDMConversationActivityContextProto);
    v265 = *&v208[96];
    v266 = *&v208[112];
    v267[0] = *&v208[128];
    *(v267 + 9) = *&v208[137];
    v261 = *&v208[32];
    v262 = *&v208[48];
    v263 = *&v208[64];
    v264 = *&v208[80];
    v259 = *v208;
    v260 = *&v208[16];
    nullsub_1();
    v289 = v265;
    v290 = v266;
    v291[0] = v267[0];
    *(v291 + 9) = *(v267 + 9);
    v285 = v261;
    v286 = v262;
    v287 = v263;
    v288 = v264;
    v283 = v259;
    v284 = v260;
  }

  v58 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  v59 = v199;
  swift_beginAccess();
  v60 = v191;
  sub_213FB2E54(v59 + v58, v191, &unk_27C903788, "Į\r");
  v61 = v193;
  v192 = *(v192 + 48);
  v62 = (v192)(v60, 1, v193);
  sub_213FB2DF4(v60, &unk_27C903788, "Į\r");
  if (v62 == 1)
  {
    sub_214535098(&v271);
    goto LABEL_24;
  }

  v63 = v180;
  sub_213FB2E54(v59 + v58, v180, &unk_27C903788, "Į\r");
  v64 = v192;
  if ((v192)(v63, 1, v61) == 1)
  {
    v65 = v181;
    sub_2146D8DE8();
    *(v65 + v61[5]) = 4;
    v66 = (v65 + v61[6]);
    *v66 = 0;
    v66[1] = 0;
    v67 = (v65 + v61[7]);
    *v67 = 0;
    v67[1] = 0;
    v68 = (v65 + v61[8]);
    *v68 = 0;
    v68[1] = 0;
    if (v64(v63, 1, v61) != 1)
    {
      sub_213FB2DF4(v63, &unk_27C903788, "Į\r");
    }
  }

  else
  {
    v65 = v181;
    sub_214534FEC(v63, v181, type metadata accessor for CSDMHandleProto);
  }

  v69 = v202;
  sub_21451F0C0(v65, v208);
  if (v69)
  {
    sub_2145351E4(v194, type metadata accessor for CSDMConversationActivityProto);
    sub_213FDC6BC(v197, v198);
    sub_213FDC6BC(v195, v196);
    sub_213FB2DF4(&v283, &qword_27C905C08, &unk_2147738C0);

    goto LABEL_22;
  }

  v202 = 0;
  v268 = *&v208[160];
  v269[0] = *&v208[176];
  *(v269 + 9) = *&v208[185];
  v265 = *&v208[96];
  v266 = *&v208[112];
  v267[1] = *&v208[144];
  v267[0] = *&v208[128];
  v261 = *&v208[32];
  v262 = *&v208[48];
  v264 = *&v208[80];
  v263 = *&v208[64];
  v260 = *&v208[16];
  v259 = *v208;
  nullsub_1();
  v281 = v268;
  v282[0] = v269[0];
  *(v282 + 9) = *(v269 + 9);
  v277 = v265;
  v278 = v266;
  v280 = v267[1];
  v279 = v267[0];
  v273 = v261;
  v274 = v262;
  v276 = v264;
  v275 = v263;
  v272 = v260;
  v271 = v259;
LABEL_24:
  v70 = v199;
  v71 = v199 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
  swift_beginAccess();
  v192 = *v71;
  LODWORD(v191) = v71[8];
  v72 = (v70 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
  swift_beginAccess();
  v73 = v72[1];
  v156 = *v72;
  v74 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
  swift_beginAccess();
  v75 = v184;
  sub_213FB2E54(v70 + v74, v184, &qword_27C903D90, &qword_2146E9870);
  v76 = v186;
  v190 = *(v185 + 48);
  v77 = (v190)(v75, 1, v186);
  v193 = v73;

  sub_213FB2DF4(v75, &qword_27C903D90, &qword_2146E9870);
  if (v77 == 1)
  {
    sub_2145350BC(&v259);
  }

  else
  {
    v78 = v182;
    sub_213FB2E54(v70 + v74, v182, &qword_27C903D90, &qword_2146E9870);
    v79 = v190;
    if ((v190)(v78, 1, v76) == 1)
    {
      v80 = v187;
      sub_2146D8DE8();
      v81 = (v80 + v76[5]);
      *v81 = 0;
      v81[1] = 0;
      *(v80 + v76[6]) = 2;
      v82 = (v80 + v76[7]);
      *v82 = 0;
      v82[1] = 0;
      v83 = (v80 + v76[8]);
      *v83 = 0;
      v83[1] = 0;
      *(v80 + v76[9]) = xmmword_2146E68C0;
      v84 = v80 + v76[10];
      *v84 = 0;
      *(v84 + 4) = 1;
      v85 = v76[11];
      v86 = type metadata accessor for CSDMConversationActivitySceneAssociationBehaviorProto(0);
      (*(*(v86 - 8) + 56))(v80 + v85, 1, 1, v86);
      *(v80 + v76[12]) = 2;
      v87 = v80 + v76[13];
      v88 = v182;
      *v87 = 0;
      *(v87 + 4) = 1;
      if ((v79)(v88, 1, v76) != 1)
      {
        sub_213FB2DF4(v88, &qword_27C903D90, &qword_2146E9870);
      }
    }

    else
    {
      sub_214534FEC(v78, v187, type metadata accessor for CSDMConversationActivityMetadataProto);
    }

    v89 = v202;
    sub_21452366C(v187, v208);
    v202 = v89;
    if (v89)
    {
      sub_2145351E4(v194, type metadata accessor for CSDMConversationActivityProto);
      sub_213FDC6BC(v197, v198);
      sub_213FDC6BC(v195, v196);
      sub_213FB2DF4(&v283, &qword_27C905C08, &unk_2147738C0);
      sub_213FB2DF4(&v271, &qword_27C905AD0, &unk_214759900);

      return;
    }

    v204 = *&v208[160];
    v205 = *&v208[176];
    v206 = *&v208[192];
    v207 = v208[208];
    v203[6] = *&v208[96];
    v203[7] = *&v208[112];
    v203[8] = *&v208[128];
    v203[9] = *&v208[144];
    v203[2] = *&v208[32];
    v203[3] = *&v208[48];
    v203[4] = *&v208[64];
    v203[5] = *&v208[80];
    v203[0] = *v208;
    v203[1] = *&v208[16];
    nullsub_1();
    v268 = v204;
    v269[0] = v205;
    v269[1] = v206;
    v270 = v207;
    v265 = v203[6];
    v266 = v203[7];
    v267[0] = v203[8];
    v267[1] = v203[9];
    v261 = v203[2];
    v262 = v203[3];
    v263 = v203[4];
    v264 = v203[5];
    v259 = v203[0];
    v260 = v203[1];
  }

  v90 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
  v91 = v199;
  swift_beginAccess();
  v164 = *(v91 + v90);
  v92 = (v91 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate);
  swift_beginAccess();
  v163 = *v92;
  LOBYTE(v91) = *(v92 + 8);
  sub_213FB2E54(&v283, v208, &qword_27C905C08, &unk_2147738C0);
  sub_213FB2E54(&v271, v208, &qword_27C905AD0, &unk_214759900);
  sub_213FB2E54(&v259, v208, &qword_27C905C20, &qword_2146F4020);
  sub_21465335C(v246);
  v93 = v246[0];
  v94 = v246[1];
  v95 = v246[2];
  v96 = v246[3];
  v97 = v247;
  sub_214653390(v244);
  v199 = v244[0];
  v157 = v244[1];
  v188 = v244[3];
  v189 = v244[2];
  LODWORD(v190) = v245;
  sub_2146533CC(v242);
  v182 = v242[0];
  v185 = v242[2];
  v186 = v242[1];
  v187 = v242[3];
  LODWORD(v184) = v243;
  sub_214653518(v240);
  v172 = v240[0];
  v175 = v240[2];
  v180 = v240[1];
  v181 = v240[3];
  v176 = v241;
  sub_214653664(v238);
  v174 = v238[0];
  v171 = v238[2];
  v169 = v238[1];
  v170 = v238[3];
  v173 = v239;
  sub_2146537D8(v236);
  *(&v203[6] + 7) = v289;
  *(&v203[7] + 7) = v290;
  *(&v203[8] + 7) = v291[0];
  v203[9] = *(v291 + 9);
  *(&v203[2] + 7) = v285;
  *(&v203[3] + 7) = v286;
  *(&v203[4] + 7) = v287;
  *(&v203[5] + 7) = v288;
  *(v203 + 7) = v283;
  *(&v203[1] + 7) = v284;
  *&v208[151] = v280;
  *&v208[167] = v281;
  *&v208[183] = v282[0];
  *&v208[192] = *(v282 + 9);
  *&v208[87] = v276;
  *&v208[103] = v277;
  *&v208[119] = v278;
  *&v208[135] = v279;
  *&v208[23] = v272;
  *&v208[39] = v273;
  *&v208[55] = v274;
  v165 = v236[0];
  v166 = v236[2];
  v167 = v236[3];
  v168 = v236[1];
  v160 = v237;
  *&v208[71] = v275;
  *&v208[7] = v271;
  v250 = v191;
  *&v249[167] = v268;
  *&v249[183] = v269[0];
  *&v249[199] = v269[1];
  v249[215] = v270;
  *&v249[103] = v265;
  *&v249[119] = v266;
  *&v249[135] = v267[0];
  *&v249[151] = v267[1];
  *&v249[39] = v261;
  *&v249[55] = v262;
  *&v249[71] = v263;
  *&v249[87] = v264;
  *&v249[7] = v259;
  *&v249[23] = v260;
  v248 = v91;
  v258[6] = v203[6];
  v258[7] = v203[7];
  v258[8] = v203[8];
  v258[9] = *(v291 + 9);
  v258[2] = v203[2];
  v258[3] = v203[3];
  v258[4] = v203[4];
  v258[5] = v203[5];
  v258[0] = v203[0];
  v258[1] = v203[1];
  v258[20] = *&v208[160];
  v258[21] = *&v208[176];
  v258[22] = *(v282 + 9);
  v258[16] = *&v208[96];
  v258[17] = *&v208[112];
  v258[19] = *&v208[144];
  v258[18] = *&v208[128];
  v258[12] = *&v208[32];
  v258[13] = *&v208[48];
  v258[15] = *&v208[80];
  v258[14] = *&v208[64];
  v258[11] = *&v208[16];
  v258[10] = *v208;
  v158 = v191;
  v159 = v91;
  *&v203[0] = v183;
  *(&v203[0] + 1) = v292;
  v161 = v97;
  LOBYTE(v246[0]) = v97;
  *v208 = 0xD00000000000002DLL;
  *&v208[8] = 0x800000021478D220;
  *&v208[16] = 0xD00000000000001CLL;
  *&v208[24] = 0x800000021478A360;

  sub_213FDC9D0(v95, v96);
  v191 = v94;
  v98 = v202;
  v162 = v93;
  v99 = v93(v203, v246, v208);
  if (v98)
  {
    goto LABEL_37;
  }

  if ((v99 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v102 = 0xD00000000000002DLL;
    v102[1] = 0x800000021478D220;
    v102[2] = 0xD00000000000001CLL;
    v102[3] = 0x800000021478A360;
    swift_willThrow();

LABEL_37:
    sub_213FB2DF4(&v283, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v271, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v259, &qword_27C905C20, &qword_2146F4020);
    v103 = v172;
    v104 = v191;
    sub_213FDC6BC(v195, v196);
    sub_213FDC6BC(v197, v198);

    sub_213FDC6D0(v95, v96);
    v105 = v160;
    v107 = v170;
    v106 = v171;
    v108 = v169;
    v109 = v175;
    v111 = v188;
    v110 = v189;
    v112 = v157;
LABEL_38:
    *v208 = v162;
    *&v208[8] = v104;
    *&v208[16] = v95;
    *&v208[24] = v96;
    v208[32] = v161;
    *&v208[33] = *v257;
    *&v208[36] = *&v257[3];
    *&v208[40] = v199;
    *&v208[48] = v112;
    *&v208[56] = v110;
    *&v208[64] = v111;
    v208[72] = v190;
    *&v208[73] = *v256;
    *&v208[76] = *&v256[3];
    *&v208[80] = v182;
    *&v208[88] = v186;
    *&v208[96] = v185;
    *&v208[104] = v187;
    v208[112] = v184;
    *&v208[116] = *&v255[3];
    *&v208[113] = *v255;
    *&v208[120] = v103;
    *&v208[128] = v180;
    *&v208[136] = v109;
    *&v208[144] = v181;
    v208[152] = v176;
    *&v208[153] = *v254;
    *&v208[156] = *&v254[3];
    *&v208[160] = v174;
    *&v208[168] = v108;
    *&v208[176] = v106;
    *&v208[184] = v107;
    v208[192] = v173;
    memcpy(&v208[193], v258, 0x177uLL);
    v209 = v192;
    v210 = v158;
    *v211 = v253[0];
    *&v211[3] = *(v253 + 3);
    v212 = v165;
    v213 = v168;
    v214 = v166;
    v215 = v167;
    v216 = v105;
    v227 = *&v249[160];
    v228 = *&v249[176];
    v229 = *&v249[192];
    v230 = *&v249[208];
    v223 = *&v249[96];
    v224 = *&v249[112];
    v225 = *&v249[128];
    v226 = *&v249[144];
    v219 = *&v249[32];
    v220 = *&v249[48];
    v221 = *&v249[64];
    v222 = *&v249[80];
    v217 = *v249;
    v218 = *&v249[16];
    v231 = v164;
    v232 = v251;
    v233 = v252;
    v234 = v163;
    v235 = v159;
    sub_2142E6E50(v208);
    sub_2145351E4(v194, type metadata accessor for CSDMConversationActivityProto);
    return;
  }

  sub_213FDC6D0(v95, v96);

  sub_213FDC6D0(v95, v96);
  *v208 = v199;
  *&v208[8] = v157;
  v101 = v188;
  v100 = v189;
  *&v208[16] = v189;
  *&v208[24] = v188;
  v208[32] = v190;

  sub_21404F7E0(v100, v101);
  sub_214032118(v197, v198, 2, 0xD00000000000002BLL, 0x800000021478D250, 0xD00000000000001CLL, 0x800000021478A360);

  v199 = *v208;
  v152 = *&v208[8];
  v153 = *&v208[16];
  v154 = *&v208[24];
  LODWORD(v190) = v208[32];

  sub_214032564(v189, v188);
  *&v203[0] = v179;
  *(&v203[0] + 1) = v201;
  LOBYTE(v246[0]) = v184;
  *v208 = 0xD000000000000029;
  *&v208[8] = 0x800000021478D280;
  *&v208[16] = 0xD00000000000001CLL;
  v155 = 0x800000021478A360;
  *&v208[24] = 0x800000021478A360;

  v113 = v185;
  sub_213FDC9D0(v185, v187);
  v114 = (v182)(v203, v246, v208);
  v95 = v183;
  v105 = v160;
  v104 = v191;
  if ((v114 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v122 = 0xD000000000000029;
    v122[1] = 0x800000021478D280;
    v122[2] = 0xD00000000000001CLL;
    v122[3] = v155;
    swift_willThrow();

    sub_213FB2DF4(&v283, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v271, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v259, &qword_27C905C20, &qword_2146F4020);
    v103 = v172;
    sub_213FDC6BC(v195, v196);

    sub_213FDC6BC(v197, v198);

    sub_213FDC6D0(v113, v187);
    v96 = v292;
    v112 = v152;
    v110 = v153;
    v111 = v154;
    v107 = v170;
    v106 = v171;
    v108 = v169;
    v109 = v175;
    goto LABEL_38;
  }

  v115 = v187;
  sub_213FDC6D0(v113, v187);
  v116 = v155;

  sub_213FDC6D0(v113, v115);
  *&v203[0] = v178;
  *(&v203[0] + 1) = v200;
  LOBYTE(v246[0]) = v176;
  *v208 = 0xD00000000000002BLL;
  *&v208[8] = 0x800000021478D2B0;
  *&v208[16] = 0xD00000000000001CLL;
  *&v208[24] = v116;

  sub_213FDC9D0(v175, v181);
  v103 = v172;
  if ((v172(v203, v246, v208) & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v123 = 0xD00000000000002BLL;
    v123[1] = 0x800000021478D2B0;
    v124 = v155;
    v123[2] = 0xD00000000000001CLL;
    v123[3] = v124;
    swift_willThrow();

    sub_213FB2DF4(&v283, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v271, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v259, &qword_27C905C20, &qword_2146F4020);
    sub_213FDC6BC(v195, v196);

    sub_213FDC6BC(v197, v198);

    v109 = v175;
    sub_213FDC6D0(v175, v181);
    v95 = v183;
    v96 = v292;
    v112 = v152;
    v110 = v153;
    v111 = v154;
    v185 = v179;
    v187 = v201;
    v107 = v170;
    v106 = v171;
    v108 = v169;
    goto LABEL_38;
  }

  v117 = v175;
  v118 = v181;
  sub_213FDC6D0(v175, v181);
  v119 = v155;

  sub_213FDC6D0(v117, v118);
  *v208 = v174;
  v120 = v170;
  *&v208[8] = v169;
  v121 = v171;
  *&v208[16] = v171;
  *&v208[24] = v170;
  v208[32] = v173;

  sub_21404F7E0(v121, v120);
  v189 = "Activity.activityIdentifier";
  sub_214032118(v195, v196, 2, 0xD000000000000021, 0x800000021478D2E0, 0xD00000000000001CLL, v119);
  v202 = 0;
  v125 = v155;

  v174 = *v208;
  v126 = *&v208[8];
  v188 = *&v208[16];
  v189 = *&v208[24];
  v173 = v208[32];

  sub_214032564(v171, v170);
  *&v203[0] = v156;
  *(&v203[0] + 1) = v193;
  LOBYTE(v246[0]) = v105;
  *v208 = 0xD000000000000030;
  *&v208[8] = 0x800000021478D310;
  *&v208[16] = 0xD00000000000001CLL;
  *&v208[24] = v125;

  sub_213FDC9D0(v166, v167);
  v127 = v202;
  v128 = v165(v203, v246, v208);
  if (v127)
  {
    goto LABEL_48;
  }

  if ((v128 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v149 = 0xD000000000000030;
    v149[1] = 0x800000021478D310;
    v150 = v155;
    v149[2] = 0xD00000000000001CLL;
    v149[3] = v150;
    swift_willThrow();

LABEL_48:
    sub_213FB2DF4(&v283, &qword_27C905C08, &unk_2147738C0);
    sub_213FB2DF4(&v271, &qword_27C905AD0, &unk_214759900);
    sub_213FB2DF4(&v259, &qword_27C905C20, &qword_2146F4020);
    v104 = v191;

    sub_213FDC6BC(v195, v196);
    sub_213FDC6BC(v197, v198);

    sub_213FDC6D0(v166, v167);
    v95 = v183;
    v96 = v292;
    v112 = v152;
    v110 = v153;
    v111 = v154;
    v109 = v178;
    v185 = v179;
    v187 = v201;
    v181 = v200;
    v108 = v126;
    v106 = v188;
    v107 = v189;
    v103 = v172;
    goto LABEL_38;
  }

  v130 = v166;
  v129 = v167;
  sub_213FDC6D0(v166, v167);
  v131 = v193;

  sub_213FB2DF4(&v283, &qword_27C905C08, &unk_2147738C0);
  sub_213FB2DF4(&v271, &qword_27C905AD0, &unk_214759900);
  sub_213FB2DF4(&v259, &qword_27C905C20, &qword_2146F4020);

  sub_213FDC6BC(v195, v196);
  sub_213FDC6BC(v197, v198);

  sub_213FDC6D0(v130, v129);
  sub_2145351E4(v194, type metadata accessor for CSDMConversationActivityProto);
  v132 = v177;
  v133 = v191;
  *v177 = v162;
  v132[1] = v133;
  v134 = v292;
  v132[2] = v183;
  v132[3] = v134;
  *(v132 + 32) = v161;
  *(v132 + 33) = *v257;
  *(v132 + 9) = *&v257[3];
  v135 = v152;
  v136 = v153;
  v132[5] = v199;
  v132[6] = v135;
  v137 = v154;
  v132[7] = v136;
  v132[8] = v137;
  *(v132 + 72) = v190;
  *(v132 + 73) = *v256;
  *(v132 + 19) = *&v256[3];
  v138 = v186;
  v132[10] = v182;
  v132[11] = v138;
  v139 = v201;
  v132[12] = v179;
  v132[13] = v139;
  *(v132 + 112) = v184;
  *(v132 + 29) = *&v255[3];
  *(v132 + 113) = *v255;
  v140 = v180;
  v132[15] = v172;
  v132[16] = v140;
  v141 = v200;
  v132[17] = v178;
  v132[18] = v141;
  *(v132 + 152) = v176;
  *(v132 + 153) = *v254;
  *(v132 + 39) = *&v254[3];
  v132[20] = v174;
  v132[21] = v126;
  v142 = v189;
  v132[22] = v188;
  v132[23] = v142;
  *(v132 + 192) = v173;
  memcpy(v132 + 193, v258, 0x177uLL);
  v132[71] = v192;
  *(v132 + 576) = v158;
  *(v132 + 577) = v253[0];
  *(v132 + 145) = *(v253 + 3);
  v132[73] = v165;
  v132[74] = v168;
  v132[75] = v156;
  v132[76] = v131;
  *(v132 + 616) = v105;
  v143 = *&v249[176];
  *(v132 + 777) = *&v249[160];
  *(v132 + 793) = v143;
  *(v132 + 809) = *&v249[192];
  *(v132 + 825) = *&v249[208];
  v144 = *&v249[112];
  *(v132 + 713) = *&v249[96];
  *(v132 + 729) = v144;
  v145 = *&v249[144];
  *(v132 + 745) = *&v249[128];
  *(v132 + 761) = v145;
  v146 = *&v249[48];
  *(v132 + 649) = *&v249[32];
  *(v132 + 665) = v146;
  v147 = *&v249[80];
  *(v132 + 681) = *&v249[64];
  *(v132 + 697) = v147;
  v148 = *&v249[16];
  *(v132 + 617) = *v249;
  *(v132 + 633) = v148;
  *(v132 + 833) = v164;
  *(v132 + 834) = v251;
  *(v132 + 419) = v252;
  v132[105] = v163;
  *(v132 + 848) = v159;
}

uint64_t sub_2145265B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D90, &qword_2146E9870);
  MEMORY[0x28223BE20](v4 - 8);
  v132 = &v127 - v5;
  v138 = type metadata accessor for CSDMConversationActivityMetadataProto(0);
  v131 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v137 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  MEMORY[0x28223BE20](v7 - 8);
  v130 = &v127 - v8;
  v136 = type metadata accessor for CSDMHandleProto(0);
  v129 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903DA0, &qword_2146E9880);
  MEMORY[0x28223BE20](v10 - 8);
  v128 = &v127 - v11;
  v134 = type metadata accessor for CSDMConversationActivityContextProto(0);
  v127 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v133 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 24);
  if (v13)
  {
    if (v13 == 1)
    {
      goto LABEL_60;
    }

    v14 = *(a2 + 16);
    v15 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(a1 + v15);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      swift_allocObject();
      v18 = sub_21402E6F0(v17);

      *(a1 + v15) = v18;
      v17 = v18;
    }

    swift_beginAccess();
    v17[2] = v14;
    v17[3] = v13;
  }

  v19 = *(a2 + 64);
  if (v19 >> 60 == 11)
  {
    goto LABEL_60;
  }

  if (v19 >> 60 != 15)
  {
    v20 = *(a2 + 56);
    v21 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    sub_213FDCA18(v20, v19);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *(a1 + v21);
    if ((v22 & 1) == 0)
    {
      type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      swift_allocObject();
      v24 = sub_21402E6F0(v23);

      *(a1 + v21) = v24;
      v23 = v24;
    }

    swift_beginAccess();
    v25 = v23[4];
    v26 = v23[5];
    v23[4] = v20;
    v23[5] = v19;
    sub_213FDC6BC(v25, v26);
  }

  v27 = *(a2 + 104);
  if (v27)
  {
    if (v27 == 1)
    {
      goto LABEL_60;
    }

    v28 = *(a2 + 96);
    v29 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);

    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(a1 + v29);
    if ((v30 & 1) == 0)
    {
      type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      swift_allocObject();
      v32 = sub_21402E6F0(v31);

      *(a1 + v29) = v32;
      v31 = v32;
    }

    swift_beginAccess();
    v31[6] = v28;
    v31[7] = v27;
  }

  v33 = *(a2 + 144);
  if (v33)
  {
    if (v33 == 1)
    {
      goto LABEL_60;
    }

    v34 = *(a2 + 136);
    v35 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(a1 + v35);
    if ((v36 & 1) == 0)
    {
      type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      swift_allocObject();
      v38 = sub_21402E6F0(v37);

      *(a1 + v35) = v38;
      v37 = v38;
    }

    swift_beginAccess();
    v37[8] = v34;
    v37[9] = v33;
  }

  v39 = *(a2 + 184);
  if (v39 >> 60 == 11)
  {
    goto LABEL_60;
  }

  if (v39 >> 60 != 15)
  {
    v40 = *(a2 + 176);
    v41 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    sub_213FDCA18(v40, v39);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(a1 + v41);
    if ((v42 & 1) == 0)
    {
      type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      swift_allocObject();
      v44 = sub_21402E6F0(v43);

      *(a1 + v41) = v44;
      v43 = v44;
    }

    swift_beginAccess();
    v45 = v43[10];
    v46 = v43[11];
    v43[10] = v40;
    v43[11] = v39;
    sub_213FDC6BC(v45, v46);
  }

  v47 = *(a2 + 312);
  v48 = *(a2 + 280);
  v200 = *(a2 + 296);
  v201 = v47;
  v49 = *(a2 + 312);
  v202[0] = *(a2 + 328);
  *(v202 + 9) = *(a2 + 337);
  v50 = *(a2 + 248);
  v196 = *(a2 + 232);
  v197 = v50;
  v51 = *(a2 + 280);
  v198 = *(a2 + 264);
  v199 = v51;
  v52 = *(a2 + 216);
  v194 = *(a2 + 200);
  v195 = v52;
  v209 = v200;
  v210 = v49;
  v211[0] = *(a2 + 328);
  *(v211 + 9) = *(a2 + 337);
  v53 = *(a2 + 248);
  v205 = *(a2 + 232);
  v206 = v53;
  v207 = v198;
  v208 = v48;
  v54 = *(a2 + 216);
  v203 = *(a2 + 200);
  v204 = v54;
  enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(&v203);
  if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 != 1)
  {
    v235[8] = v209;
    v235[9] = v210;
    v236[0] = v211[0];
    *(v236 + 9) = *(v211 + 9);
    v235[4] = v205;
    v235[5] = v206;
    v235[6] = v207;
    v235[7] = v208;
    v235[2] = v203;
    v235[3] = v204;
    MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0);
    v218 = v200;
    v219 = v201;
    v220[0] = v202[0];
    *(v220 + 9) = *(v202 + 9);
    v214 = v196;
    v215 = v197;
    v216 = v198;
    v217 = v199;
    v212 = v194;
    v213 = v195;
    sub_2142E6DF4(&v212, &v156);
    sub_214534FA4(&qword_27C903B60, type metadata accessor for CSDMConversationActivityContextProto, byte_2146E8998);
    v56 = v237;
    sub_2146D9018();
    v237 = v56;
    v57 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_213FB2DF4(&v194, &qword_27C905C08, &unk_2147738C0);
      v58 = *(a1 + v57);
    }

    else
    {
      type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      swift_allocObject();

      v58 = sub_21402E6F0(v59);

      sub_213FB2DF4(&v194, &qword_27C905C08, &unk_2147738C0);

      *(a1 + v57) = v58;
    }

    v60 = v128;
    sub_214534FEC(v133, v128, type metadata accessor for CSDMConversationActivityContextProto);
    (*(v127 + 56))(v60, 0, 1, v134);
    v61 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityContext;
    swift_beginAccess();
    sub_21402EDB8(v60, v58 + v61, &qword_27C903DA0, &qword_2146E9880);
    swift_endAccess();
  }

  v62 = *(a2 + 504);
  v63 = *(a2 + 536);
  v180 = *(a2 + 520);
  v181[0] = v63;
  *(v181 + 9) = *(a2 + 545);
  v64 = *(a2 + 440);
  v65 = *(a2 + 472);
  v176 = *(a2 + 456);
  v177 = v65;
  v67 = *(a2 + 472);
  v66 = *(a2 + 488);
  v68 = v66;
  v179 = *(a2 + 504);
  v178 = v66;
  v69 = *(a2 + 376);
  v70 = *(a2 + 408);
  v172 = *(a2 + 392);
  v173 = v70;
  v72 = *(a2 + 408);
  v71 = *(a2 + 424);
  v73 = v71;
  v175 = *(a2 + 440);
  v174 = v71;
  v74 = *(a2 + 360);
  v75 = v74;
  v171 = *(a2 + 376);
  v170 = v74;
  v76 = *(a2 + 536);
  v192 = v180;
  v193[0] = v76;
  *(v193 + 9) = *(a2 + 545);
  v188 = v176;
  v189 = v67;
  v191 = v62;
  v190 = v68;
  v184 = v172;
  v185 = v72;
  v187 = v64;
  v186 = v73;
  v183 = v69;
  v182 = v75;
  enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v182);
  if (enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 == 1)
  {
    if (*(a2 + 576))
    {
      goto LABEL_33;
    }

LABEL_39:
    v84 = *(a2 + 568);
    v85 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(a1 + v85);
    if ((v86 & 1) == 0)
    {
      type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      swift_allocObject();
      v88 = sub_21402E6F0(v87);

      *(a1 + v85) = v88;
      v87 = v88;
    }

    v89 = v87 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__updatedDateEpochTime;
    swift_beginAccess();
    *v89 = v84;
    v89[8] = 0;
    v78 = *(a2 + 608);
    if (!v78)
    {
      goto LABEL_46;
    }

LABEL_42:
    if (v78 != 1)
    {
      v90 = *(a2 + 600);
      v91 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);

      v92 = swift_isUniquelyReferenced_nonNull_native();
      v93 = *(a1 + v91);
      if ((v92 & 1) == 0)
      {
        type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
        swift_allocObject();
        v94 = sub_21402E6F0(v93);

        *(a1 + v91) = v94;
        v93 = v94;
      }

      v95 = (v93 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__fallbackApplicationName);
      swift_beginAccess();
      *v95 = v90;
      v95[1] = v78;

      goto LABEL_46;
    }

LABEL_60:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  v234 = v192;
  v235[0] = v193[0];
  *(v235 + 9) = *(v193 + 9);
  v230 = v188;
  v231 = v189;
  v233 = v191;
  v232 = v190;
  v226 = v184;
  v227 = v185;
  v229 = v187;
  v228 = v186;
  v225 = v183;
  v224 = v182;
  MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0);
  v221 = v180;
  v222[0] = v181[0];
  *(v222 + 9) = *(v181 + 9);
  v218 = v176;
  v219 = v177;
  v220[1] = v179;
  v220[0] = v178;
  v214 = v172;
  v215 = v173;
  v217 = v175;
  v216 = v174;
  v213 = v171;
  v212 = v170;
  sub_2142E5FD0(&v212, &v156);
  sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
  sub_2146D9018();
  v79 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    sub_213FB2DF4(&v170, &qword_27C905AD0, &unk_214759900);
    v80 = *(a1 + v79);
  }

  else
  {
    type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
    swift_allocObject();

    v80 = sub_21402E6F0(v81);

    sub_213FB2DF4(&v170, &qword_27C905AD0, &unk_214759900);

    *(a1 + v79) = v80;
  }

  v82 = v130;
  sub_214534FEC(v135, v130, type metadata accessor for CSDMHandleProto);
  (*(v129 + 56))(v82, 0, 1, v136);
  v83 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__originatorHandle;
  swift_beginAccess();
  sub_21402EDB8(v82, v80 + v83, &unk_27C903788, "Į\r");
  swift_endAccess();
  if ((*(a2 + 576) & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v78 = *(a2 + 608);
  if (v78)
  {
    goto LABEL_42;
  }

LABEL_46:
  v96 = *(a2 + 800);
  v97 = *(a2 + 768);
  v152 = *(a2 + 784);
  v153 = v96;
  v98 = *(a2 + 800);
  v154 = *(a2 + 816);
  v99 = *(a2 + 736);
  v100 = *(a2 + 704);
  v148 = *(a2 + 720);
  v149 = v99;
  v101 = *(a2 + 736);
  v102 = *(a2 + 768);
  v150 = *(a2 + 752);
  v151 = v102;
  v103 = *(a2 + 672);
  v104 = *(a2 + 640);
  v144 = *(a2 + 656);
  v145 = v103;
  v105 = *(a2 + 672);
  v106 = *(a2 + 704);
  v146 = *(a2 + 688);
  v147 = v106;
  v107 = *(a2 + 640);
  v142 = *(a2 + 624);
  v143 = v107;
  v166 = v152;
  v167 = v98;
  v168 = *(a2 + 816);
  v161 = v100;
  v162 = v148;
  v163 = v101;
  v164 = v150;
  v165 = v97;
  v158 = v144;
  v159 = v105;
  v160 = v146;
  v155 = *(a2 + 832);
  v169 = *(a2 + 832);
  v156 = v142;
  v157 = v104;
  result = sub_214534F38(&v156);
  if (result != 1)
  {
    v223 = v169;
    v221 = v166;
    v222[0] = v167;
    v222[1] = v168;
    v218 = v162;
    v219 = v163;
    v220[0] = v164;
    v220[1] = v165;
    v214 = v158;
    v215 = v159;
    v216 = v160;
    v217 = v161;
    v212 = v156;
    v213 = v157;
    MEMORY[0x28223BE20](result);
    v140[10] = v152;
    v140[11] = v153;
    v140[12] = v154;
    v141 = v155;
    v140[6] = v148;
    v140[7] = v149;
    v140[8] = v150;
    v140[9] = v151;
    v140[2] = v144;
    v140[3] = v145;
    v140[4] = v146;
    v140[5] = v147;
    v140[0] = v142;
    v140[1] = v143;
    sub_2142E6C18(v140, &v139);
    sub_214534FA4(&qword_27C903B20, type metadata accessor for CSDMConversationActivityMetadataProto, byte_2146E86C8);
    sub_2146D9018();
    v109 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_213FB2DF4(&v142, &qword_27C905C20, &qword_2146F4020);
      v110 = *(a1 + v109);
    }

    else
    {
      type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      swift_allocObject();

      v110 = sub_21402E6F0(v111);

      sub_213FB2DF4(&v142, &qword_27C905C20, &qword_2146F4020);

      *(a1 + v109) = v110;
    }

    v112 = v132;
    sub_214534FEC(v137, v132, type metadata accessor for CSDMConversationActivityMetadataProto);
    (*(v131 + 56))(v112, 0, 1, v138);
    v113 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activityMetadata;
    swift_beginAccess();
    sub_21402EDB8(v112, v110 + v113, &qword_27C903D90, &qword_2146E9870);
    result = swift_endAccess();
  }

  v114 = *(a2 + 833);
  if (v114 != 2)
  {
    v115 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    v116 = swift_isUniquelyReferenced_nonNull_native();
    v117 = *(a1 + v115);
    if ((v116 & 1) == 0)
    {
      type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      swift_allocObject();
      v118 = sub_21402E6F0(v117);

      *(a1 + v115) = v118;
      v117 = v118;
    }

    v119 = v114 & 1;
    v120 = OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSystemActivity;
    result = swift_beginAccess();
    *(v117 + v120) = v119;
  }

  if ((*(a2 + 848) & 1) == 0)
  {
    v121 = *(a2 + 840);
    v122 = *(type metadata accessor for CSDMConversationActivityProto(0) + 20);
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v124 = *(a1 + v122);
    if ((v123 & 1) == 0)
    {
      type metadata accessor for CSDMConversationActivityProto._StorageClass(0);
      swift_allocObject();
      v125 = sub_21402E6F0(v124);

      *(a1 + v122) = v125;
      v124 = v125;
    }

    v126 = v124 + OBJC_IVAR____TtCV9BlastDoor29CSDMConversationActivityProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__timestampAsTimeIntervalSinceReferenceDate;
    result = swift_beginAccess();
    *v126 = v121;
    v126[8] = 0;
  }

  return result;
}

void sub_214527708(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for CSDMConversationActivityProto(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v13 = *(v12 + 24);
  v14 = (a1 + *(v12 + 20));
  v15 = *v14;
  v16 = v14[1];
  v41 = v12;
  v42 = v15;
  sub_213FB2E54(a1 + v13, v11, &unk_27C903858, &unk_2146E6F50);
  v17 = *(v4 + 48);
  v39 = v3;
  LODWORD(v3) = v17(v11, 1, v3);
  v44 = v16;

  sub_213FB2DF4(v11, &unk_27C903858, &unk_2146E6F50);
  if (v3 == 1)
  {
    sub_214535070(v49);
    v18 = a1;
    v19 = v42;
  }

  else
  {
    sub_213FB2E54(a1 + v13, v9, &unk_27C903858, &unk_2146E6F50);
    v20 = v39;
    v18 = a1;
    if (v17(v9, 1, v39) == 1)
    {
      v38 = v17;
      v21 = v40;
      sub_2146D8DE8();
      v22 = *(v20 + 20);
      v19 = v42;
      if (qword_27C902DC8 != -1)
      {
        swift_once();
      }

      *(v21 + v22) = qword_27C902DD0;
      v23 = v38(v9, 1);

      if (v23 != 1)
      {
        sub_213FB2DF4(v9, &unk_27C903858, &unk_2146E6F50);
      }
    }

    else
    {
      v21 = v40;
      sub_214534FEC(v9, v40, type metadata accessor for CSDMConversationActivityProto);
      v19 = v42;
    }

    v24 = v43;
    sub_2145245E4(v21, v46);
    if (v24)
    {
      sub_2145351E4(a1, type metadata accessor for CSDMConversationActivitySessionProto);

      return;
    }

    v43 = 0;
    memcpy(v45, v46, 0x351uLL);
    nullsub_1();
    memcpy(v49, v45, 0x351uLL);
  }

  v25 = v18 + *(v41 + 28);
  v40 = *v25;
  v41 = v18;
  v26 = *(v25 + 8);
  sub_213FB2E54(v49, v46, &qword_27C905C70, &unk_214759910);
  sub_2146540C8(v45);
  v28 = v45[0];
  v27 = v45[1];
  v29 = v45[3];
  memcpy(v46 + 7, v49, 0x351uLL);
  memcpy(v48, v46, 0x358uLL);
  LODWORD(v39) = v26;
  v45[0] = v19;
  v30 = v45[2];
  v45[1] = v44;
  LODWORD(v38) = LOBYTE(v45[4]);
  v50[0] = v45[4];
  v46[0] = 0xD000000000000034;
  v46[1] = 0x800000021478D350;
  v46[2] = 0xD00000000000001CLL;
  v46[3] = 0x800000021478A360;

  sub_213FDC9D0(v30, v29);
  v31 = v43;
  v32 = v28(v45, v50, v46);
  if (v31)
  {
    sub_213FB2DF4(v49, &qword_27C905C70, &unk_214759910);
  }

  else
  {
    if (v32)
    {
      sub_213FDC6D0(v30, v29);
      sub_213FB2DF4(v49, &qword_27C905C70, &unk_214759910);

      sub_213FDC6D0(v30, v29);
      sub_2145351E4(v41, type metadata accessor for CSDMConversationActivitySessionProto);
      v33 = v37;
      *v37 = v28;
      v33[1] = v27;
      v34 = v44;
      v33[2] = v42;
      v33[3] = v34;
      *(v33 + 32) = v38;
      memcpy(v33 + 33, v48, 0x35FuLL);
      v33[112] = v40;
      *(v33 + 904) = v39;
      return;
    }

    sub_214031C4C();
    swift_allocError();
    *v35 = 0xD000000000000034;
    v35[1] = 0x800000021478D350;
    v35[2] = 0xD00000000000001CLL;
    v35[3] = 0x800000021478A360;
    swift_willThrow();

    sub_213FB2DF4(v49, &qword_27C905C70, &unk_214759910);
  }

  sub_213FDC6D0(v30, v29);
  v46[0] = v28;
  v46[1] = v27;
  v46[2] = v30;
  v46[3] = v29;
  LOBYTE(v46[4]) = v38;
  memcpy(&v46[4] + 1, v48, 0x35FuLL);
  v46[112] = v40;
  v47 = v39;
  sub_2142E72B4(v46);
  sub_2145351E4(v41, type metadata accessor for CSDMConversationActivitySessionProto);
}

uint64_t sub_214527D30(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for CSDMConversationActivityProto(0);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v3 + 24);
  if (v8)
  {
    if (v8 == 1)
    {
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v9 = *(v3 + 16);
    v10 = (v4 + *(type metadata accessor for CSDMConversationActivitySessionProto(0) + 20));

    *v10 = v9;
    v10[1] = v8;
  }

  memcpy(v19, (v3 + 40), 0x351uLL);
  memcpy(v20, (v3 + 40), 0x351uLL);
  result = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v20);
  if (result != 1)
  {
    v12 = memcpy(v21, v20, sizeof(v21));
    MEMORY[0x28223BE20](v12);
    memcpy(v18, v19, 0x351uLL);
    sub_2142E70A8(v18, v17);
    sub_214534FA4(&qword_27C903B00, type metadata accessor for CSDMConversationActivityProto, a1u);
    sub_2146D9018();
    sub_213FB2DF4(v19, &qword_27C905C70, &unk_214759910);
    v13 = *(type metadata accessor for CSDMConversationActivitySessionProto(0) + 24);
    sub_213FB2DF4(v4 + v13, &unk_27C903858, &unk_2146E6F50);
    sub_214534FEC(v7, v4 + v13, type metadata accessor for CSDMConversationActivityProto);
    result = (*(v22 + 56))(v4 + v13, 0, 1, v5);
  }

  v14 = *(v3 + 904);
  if ((v14 & 1) == 0)
  {
    v15 = *(v3 + 896);
    result = type metadata accessor for CSDMConversationActivitySessionProto(0);
    v16 = v4 + *(result + 28);
    *v16 = v15;
    *(v16 + 8) = v14;
  }

  return result;
}

void sub_21452802C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v146 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v148 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v151 = &v122 - v8;
  v152 = type metadata accessor for CSDMHandleProto(0);
  v159 = *(v152 - 1);
  v9 = MEMORY[0x28223BE20](v152);
  v149 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v122 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v122 - v14;
  v16 = type metadata accessor for CSDMConversationLinkProto(0);
  v17 = v16[7];
  v18 = (a1 + v16[6]);
  v19 = v18[1];
  v150 = *v18;
  v20 = *(a1 + v17);
  v21 = *(a1 + v17 + 8);
  if (v21 >> 60 != 15)
  {
    sub_213FDCA18(*(a1 + v17), *(a1 + v17 + 8));
  }

  v156 = v20;
  v158 = v16;
  v22 = (a1 + v16[8]);
  v24 = *v22;
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_213FDCA18(v24, v23);
  }

  v153 = v24;
  v154 = v23;
  v25 = *a1;
  v26 = *(*a1 + 16);
  v157 = a1;
  v160 = v19;
  v155 = v21;
  if (v26)
  {
    v163 = v25;
    *&v164 = MEMORY[0x277D84F90];

    v27 = sub_2140A00C0(0, v26, 0);
    if (!*(v163 + 16))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v28 = 0;
    v29 = v164;
    v30 = v163 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
    v161 = *(v159 + 9);
    v162 = v26 - 1;
    while (1)
    {
      v31 = v29;
      sub_21453517C(v30, v15, type metadata accessor for CSDMHandleProto);
      sub_21453517C(v15, v13, type metadata accessor for CSDMHandleProto);
      sub_21451F0C0(v13, v176);
      if (v3)
      {
        sub_213FDC6BC(v156, v155);
        sub_213FDC6BC(v153, v154);

        sub_2145351E4(v15, type metadata accessor for CSDMHandleProto);

        goto LABEL_32;
      }

      v227 = 0;
      v27 = sub_2145351E4(v15, type metadata accessor for CSDMHandleProto);
      v218 = *&v176[48];
      v217 = *&v176[32];
      v216 = *&v176[16];
      v222 = *&v176[112];
      v221 = *&v176[96];
      v219 = *&v176[64];
      v220 = *&v176[80];
      *(v226 + 9) = *&v176[185];
      v226[0] = *&v176[176];
      v225 = *&v176[160];
      v223 = *&v176[128];
      v224 = *&v176[144];
      v29 = v31;
      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      v26 = v33 + 1;
      v215 = *v176;
      *&v164 = v29;
      if (v33 >= v32 >> 1)
      {
        v27 = sub_2140A00C0((v32 > 1), v33 + 1, 1);
        v29 = v164;
      }

      *(v29 + 16) = v26;
      v34 = (v29 + 208 * v33);
      v34[2] = v215;
      v35 = v216;
      v36 = v217;
      v37 = v219;
      v34[5] = v218;
      v34[6] = v37;
      v34[3] = v35;
      v34[4] = v36;
      v38 = v220;
      v39 = v221;
      v40 = v223;
      v34[9] = v222;
      v34[10] = v40;
      v34[7] = v38;
      v34[8] = v39;
      v41 = v224;
      v42 = v225;
      v43 = v226[0];
      *(v34 + 217) = *(v226 + 9);
      v34[12] = v42;
      v34[13] = v43;
      v34[11] = v41;
      if (v162 == v28)
      {
        break;
      }

      v30 += v161;
      ++v28;
      v3 = v227;
      if (v28 >= *(v163 + 16))
      {
        goto LABEL_36;
      }
    }

    v162 = v29;
    a1 = v157;
  }

  else
  {
    v227 = v2;

    v162 = MEMORY[0x277D84F90];
  }

  v44 = v158[10];
  v45 = a1 + v158[9];
  v147 = *v45;
  LODWORD(v161) = v45[8];
  v46 = *(a1 + v44 + 8);
  v124 = *(a1 + v44);
  v47 = v158[11];
  v48 = v151;
  sub_213FB2E54(a1 + v47, v151, &unk_27C903788, "Į\r");
  v49 = v152;
  v159 = *(v159 + 6);
  v50 = (v159)(v48, 1, v152);
  v163 = v46;

  sub_213FB2DF4(v48, &unk_27C903788, "Į\r");
  if (v50 == 1)
  {
    sub_214535098(&v215);
    v51 = v160;
  }

  else
  {
    v52 = a1 + v47;
    v53 = v148;
    sub_213FB2E54(v52, v148, &unk_27C903788, "Į\r");
    v54 = v159;
    if ((v159)(v53, 1, v49) == 1)
    {
      v55 = v149;
      sub_2146D8DE8();
      *(v55 + v49[5]) = 4;
      v56 = (v55 + v49[6]);
      *v56 = 0;
      v56[1] = 0;
      v57 = (v55 + v49[7]);
      *v57 = 0;
      v57[1] = 0;
      v58 = (v55 + v49[8]);
      *v58 = 0;
      v58[1] = 0;
      v59 = (v54)(v53, 1, v49);
      v51 = v160;
      if (v59 != 1)
      {
        sub_213FB2DF4(v53, &unk_27C903788, "Į\r");
      }
    }

    else
    {
      v55 = v149;
      sub_214534FEC(v53, v149, type metadata accessor for CSDMHandleProto);
      v51 = v160;
    }

    v60 = v227;
    sub_21451F0C0(v55, v176);
    if (v60)
    {
      sub_2145351E4(a1, type metadata accessor for CSDMConversationLinkProto);
      sub_213FDC6BC(v156, v155);
      sub_213FDC6BC(v153, v154);

      return;
    }

    v227 = 0;
    v174 = *&v176[160];
    v175[0] = *&v176[176];
    *(v175 + 9) = *&v176[185];
    v170 = *&v176[96];
    v171 = *&v176[112];
    v172 = *&v176[128];
    v173 = *&v176[144];
    v166 = *&v176[32];
    v167 = *&v176[48];
    v168 = *&v176[64];
    v169 = *&v176[80];
    v164 = *v176;
    v165 = *&v176[16];
    nullsub_1();
    v225 = v174;
    v226[0] = v175[0];
    *(v226 + 9) = *(v175 + 9);
    v221 = v170;
    v222 = v171;
    v224 = v173;
    v223 = v172;
    v217 = v166;
    v218 = v167;
    v220 = v169;
    v219 = v168;
    v216 = v165;
    v215 = v164;
  }

  v61 = v158[13];
  v62 = a1 + v158[12];
  v137 = *v62;
  v63 = v62[8];
  v138 = *(a1 + v61);
  v64 = (a1 + v158[14]);
  v66 = *v64;
  v65 = v64[1];
  LODWORD(v64) = *(a1 + v158[15]);
  v67 = v64 == 2;
  v139 = v64 & 1;
  v140 = v66;
  v125 = v65;

  sub_213FB2E54(&v215, v176, &qword_27C905AD0, &unk_214759900);
  sub_21465423C(&v164);
  v68 = v164;
  v69 = *(&v165 + 1);
  v126 = v165;
  v70 = v166;
  sub_214654270(v191);
  v159 = v191[0];
  v128 = v191[1];
  v129 = v191[2];
  v152 = v191[3];
  LODWORD(v158) = v192;
  sub_2146543E4(v189);
  v151 = v189[0];
  v130 = v189[1];
  v131 = v189[2];
  v148 = v189[3];
  LODWORD(v149) = v190;
  sub_214654420(v187);
  *&v176[151] = v224;
  *&v176[167] = v225;
  *&v176[183] = v226[0];
  *&v176[192] = *(v226 + 9);
  *&v176[87] = v220;
  *&v176[103] = v221;
  *&v176[119] = v222;
  *&v176[135] = v223;
  *&v176[23] = v216;
  *&v176[39] = v217;
  *&v176[55] = v218;
  v141 = v187[0];
  v144 = v187[1];
  v145 = v187[2];
  v143 = v187[3];
  v142 = v188;
  v195 = v161;
  *&v176[71] = v219;
  *&v176[7] = v215;
  v194 = v63;
  v193 = v67;
  v132 = v161;
  v212 = *&v176[160];
  v213 = *&v176[176];
  v214[0] = *(v226 + 9);
  v208 = *&v176[96];
  v209 = *&v176[112];
  v211 = *&v176[144];
  v210 = *&v176[128];
  v204 = *&v176[32];
  v205 = *&v176[48];
  v207 = *&v176[80];
  v206 = *&v176[64];
  v203 = *&v176[16];
  v202 = *v176;
  v135 = v63;
  *&v164 = v150;
  *(&v164 + 1) = v51;
  v71 = v126;
  v133 = v70;
  LOBYTE(v191[0]) = v70;
  *v176 = 0xD00000000000001ELL;
  *&v176[8] = 0x800000021478D390;
  *&v176[16] = 0xD00000000000001CLL;
  v161 = 0x800000021478A360;
  *&v176[24] = 0x800000021478A360;

  v127 = v69;
  sub_213FDC9D0(v71, v69);
  v72 = v227;
  v134 = v68;
  v73 = (v68)(&v164, v191, v176);
  v136 = v67;
  if (v72)
  {
LABEL_30:
    sub_213FB2DF4(&v215, &qword_27C905AD0, &unk_214759900);
    sub_213FDC6BC(v153, v154);
    sub_213FDC6BC(v156, v155);
    v80 = v125;
    v15 = *(&v68 + 1);

    v81 = v127;
    sub_213FDC6D0(v71, v127);
    v83 = v130;
    v82 = v131;
    v84 = v148;
    v86 = v128;
    v85 = v129;
    v87 = v152;
    goto LABEL_31;
  }

  if ((v73 & 1) == 0)
  {
    sub_214031C4C();
    swift_allocError();
    *v78 = 0xD00000000000001ELL;
    v78[1] = 0x800000021478D390;
    v79 = v161;
    v78[2] = 0xD00000000000001CLL;
    v78[3] = v79;
    swift_willThrow();

    goto LABEL_30;
  }

  v74 = v127;
  sub_213FDC6D0(v71, v127);
  v75 = v161;

  v123 = *(&v68 + 1);

  sub_213FDC6D0(v71, v74);
  *v176 = v159;
  v76 = v129;
  *&v176[8] = v128;
  *&v176[16] = v129;
  v77 = v152;
  *&v176[24] = v152;
  v176[32] = v158;

  sub_21404F7E0(v76, v77);
  v159 = "CSDMConversationLink.pseudonym";
  sub_214032118(v156, v155, 2, 0xD00000000000001ELL, 0x800000021478D3B0, 0xD00000000000001CLL, v75);
  v227 = 0;
  v88 = v161;

  v159 = *v176;
  v122 = *&v176[8];
  v126 = *&v176[16];
  v127 = *&v176[24];
  LODWORD(v158) = v176[32];

  sub_214032564(v76, v152);
  *v176 = v151;
  v89 = v131;
  *&v176[8] = v130;
  *&v176[16] = v131;
  v90 = v148;
  *&v176[24] = v148;
  v176[32] = v149;

  sub_21404F7E0(v89, v90);
  v92 = v153;
  v91 = v154;
  v93 = v227;
  sub_214032118(v153, v154, 2, 0xD00000000000001FLL, 0x800000021478D3D0, 0xD00000000000001CLL, v88);
  if (v93)
  {
    sub_213FB2DF4(&v215, &qword_27C905AD0, &unk_214759900);
    sub_213FDC6BC(v92, v91);
    sub_213FDC6BC(v156, v155);

    v151 = *v176;
    v94 = *&v176[8];
    v95 = *&v176[16];
    v84 = *&v176[24];
    LODWORD(v149) = v176[32];

    sub_214032564(v89, v148);
    v71 = v150;
    v81 = v160;
    v86 = v122;
    v85 = v126;
    v87 = v127;
    v83 = v94;
    v82 = v95;
    v80 = v125;
    v15 = v123;
    goto LABEL_31;
  }

  v96 = v161;

  v129 = *&v176[8];
  v151 = *v176;
  v152 = *&v176[16];
  v227 = *&v176[24];
  LODWORD(v149) = v176[32];

  sub_214032564(v89, v148);
  *&v164 = v124;
  *(&v164 + 1) = v163;
  v26 = 0x800000021478D3F0;
  LOBYTE(v191[0]) = v142;
  *v176 = 0xD000000000000024;
  *&v176[8] = 0x800000021478D3F0;
  *&v176[16] = 0xD00000000000001CLL;
  *&v176[24] = v96;

  sub_213FDC9D0(v145, v143);
  v27 = v141(&v164, v191, v176);
  v15 = v123;
LABEL_37:
  v97 = v160;
  v71 = v150;
  v98 = v155;
  if (v27)
  {
    v99 = v143;
    sub_213FDC6D0(v145, v143);
    sub_213FB2DF4(&v215, &qword_27C905AD0, &unk_214759900);
    sub_213FDC6BC(v153, v154);
    sub_213FDC6BC(v156, v98);
    v100 = v144;

    sub_213FDC6D0(v145, v99);
    sub_2145351E4(v157, type metadata accessor for CSDMConversationLinkProto);
    v101 = v146;
    *v146 = v134;
    v101[1] = v15;
    v101[2] = v71;
    v101[3] = v97;
    *(v101 + 32) = v133;
    *(v101 + 33) = *v201;
    *(v101 + 9) = *&v201[3];
    v102 = v122;
    v101[5] = v159;
    v101[6] = v102;
    v103 = v127;
    v101[7] = v126;
    v101[8] = v103;
    *(v101 + 72) = v158;
    *(v101 + 73) = *v200;
    *(v101 + 19) = *&v200[3];
    v104 = v129;
    v101[10] = v151;
    v101[11] = v104;
    v105 = v227;
    v101[12] = v152;
    v101[13] = v105;
    *(v101 + 112) = v149;
    *(v101 + 29) = *(v199 + 3);
    *(v101 + 113) = v199[0];
    v106 = v147;
    v101[15] = v162;
    v101[16] = v106;
    *(v101 + 136) = v132;
    *(v101 + 35) = *(v198 + 3);
    *(v101 + 137) = v198[0];
    v101[18] = v141;
    v101[19] = v100;
    v107 = v163;
    v101[20] = v124;
    v101[21] = v107;
    *(v101 + 176) = v142;
    v108 = v202;
    *(v101 + 193) = v203;
    *(v101 + 177) = v108;
    v109 = v204;
    v110 = v205;
    v111 = v207;
    *(v101 + 241) = v206;
    *(v101 + 225) = v110;
    *(v101 + 209) = v109;
    v112 = v208;
    v113 = v210;
    v114 = v211;
    *(v101 + 289) = v209;
    *(v101 + 305) = v113;
    *(v101 + 257) = v111;
    *(v101 + 273) = v112;
    v115 = v212;
    v116 = v213;
    v117 = v214[0];
    v101[48] = *(v214 + 15);
    *(v101 + 353) = v116;
    *(v101 + 369) = v117;
    *(v101 + 321) = v114;
    *(v101 + 337) = v115;
    v101[49] = v137;
    *(v101 + 400) = v135;
    *(v101 + 401) = v138;
    *(v101 + 402) = v196;
    *(v101 + 203) = v197;
    v118 = v125;
    v101[51] = v140;
    v101[52] = v118;
    v101[53] = v139;
    *(v101 + 432) = v136;
    return;
  }

  sub_214031C4C();
  swift_allocError();
  *v119 = 0xD000000000000024;
  v119[1] = v26;
  v120 = v161;
  v119[2] = 0xD00000000000001CLL;
  v119[3] = v120;
  swift_willThrow();

  v121 = v160;

  sub_213FB2DF4(&v215, &qword_27C905AD0, &unk_214759900);

  sub_213FDC6BC(v153, v154);
  sub_213FDC6BC(v156, v98);

  sub_213FDC6D0(v145, v143);
  v81 = v121;
  v86 = v122;
  v85 = v126;
  v87 = v127;
  v83 = v129;
  v82 = v152;
  v84 = v227;
  v80 = v125;
LABEL_31:
  *v176 = v134;
  *&v176[8] = v15;
  *&v176[16] = v71;
  *&v176[24] = v81;
  v176[32] = v133;
  *&v176[33] = *v201;
  *&v176[36] = *&v201[3];
  *&v176[40] = v159;
  *&v176[48] = v86;
  *&v176[56] = v85;
  *&v176[64] = v87;
  v176[72] = v158;
  *&v176[73] = *v200;
  *&v176[76] = *&v200[3];
  *&v176[80] = v151;
  *&v176[88] = v83;
  *&v176[96] = v82;
  *&v176[104] = v84;
  v176[112] = v149;
  *&v176[116] = *(v199 + 3);
  *&v176[113] = v199[0];
  *&v176[120] = v162;
  *&v176[128] = v147;
  v176[136] = v132;
  *&v176[140] = *(v198 + 3);
  *&v176[137] = v198[0];
  *&v176[144] = v141;
  *&v176[152] = v144;
  *&v176[160] = v145;
  *&v176[168] = v143;
  v176[176] = v142;
  *&v176[289] = v209;
  *&v176[305] = v210;
  *&v176[257] = v207;
  *&v176[273] = v208;
  *&v176[353] = v213;
  *v177 = v214[0];
  *&v176[321] = v211;
  *&v176[337] = v212;
  *&v176[193] = v203;
  *&v176[177] = v202;
  *&v176[241] = v206;
  *&v176[225] = v205;
  *&v176[209] = v204;
  *&v177[15] = *(v214 + 15);
  v178 = v137;
  v179 = v135;
  v180 = v138;
  v181 = v196;
  v182 = v197;
  v183 = v140;
  v184 = v80;
  v185 = v139;
  v186 = v136;
  sub_2142E7568(v176);
LABEL_32:
  sub_2145351E4(v157, type metadata accessor for CSDMConversationLinkProto);
}

void sub_2145292E8(void *a1, void *a2)
{
  v107 = type metadata accessor for CSDMHandleProto(0);
  v75 = *(v107 - 8);
  v4 = MEMORY[0x28223BE20](v107);
  v73 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v72 - v6;
  v8 = a2[3];
  if (v8)
  {
    if (v8 == 1)
    {
      goto LABEL_37;
    }

    v9 = a2[2];
    v10 = (a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 24));

    *v10 = v9;
    v10[1] = v8;
  }

  v11 = a2[8];
  if (v11 >> 60 == 11)
  {
    goto LABEL_37;
  }

  v74 = a2;
  if (v11 >> 60 != 15)
  {
    v12 = a2[7];
    v13 = (a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 28));
    v14 = *v13;
    v15 = v13[1];
    sub_213FDCA18(v12, v11);
    v16 = v14;
    a2 = v74;
    sub_213FDC6BC(v16, v15);
    *v13 = v12;
    v13[1] = v11;
  }

  v17 = a2[13];
  if (v17 >> 60 == 11)
  {
    goto LABEL_37;
  }

  if (v17 >> 60 != 15)
  {
    v18 = a2[12];
    v19 = (a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 32));
    v20 = *v19;
    v21 = v19[1];
    sub_213FDCA18(v18, v17);
    v22 = v20;
    a2 = v74;
    sub_213FDC6BC(v22, v21);
    *v19 = v18;
    v19[1] = v17;
  }

  v23 = a2[15];
  v24 = *(v23 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v72 = a1;
    *&v91 = MEMORY[0x277D84F90];
    v26 = sub_2140A00E0(0, v24, 0);
    v25 = v91;
    v27 = (v23 + 32);
    do
    {
      v105[0] = *v27;
      v28 = v27[1];
      v29 = v27[2];
      v30 = v27[3];
      v105[4] = v27[4];
      v105[3] = v30;
      v105[2] = v29;
      v105[1] = v28;
      v31 = v27[5];
      v32 = v27[6];
      v33 = v27[7];
      v105[8] = v27[8];
      v105[7] = v33;
      v105[6] = v32;
      v105[5] = v31;
      v34 = v27[9];
      v35 = v27[10];
      v36 = v27[11];
      *(v106 + 9) = *(v27 + 185);
      v106[0] = v36;
      v105[10] = v35;
      v105[9] = v34;
      MEMORY[0x28223BE20](v26);
      sub_2142E5FD0(v105, v103);
      sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
      sub_2146D9018();
      sub_2142E5ED4(v105);
      *&v91 = v25;
      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2140A00E0((v37 > 1), v38 + 1, 1);
        v25 = v91;
      }

      *(v25 + 16) = v38 + 1;
      v26 = sub_214534FEC(v7, v25 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v38, type metadata accessor for CSDMHandleProto);
      v27 += 13;
      --v24;
    }

    while (v24);
    a1 = v72;
  }

  *a1 = v25;
  v39 = v74;
  v40 = *(v74 + 136);
  if ((v40 & 1) == 0)
  {
    v41 = v74[16];
    v42 = a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 36);
    *v42 = v41;
    v42[8] = v40;
  }

  v43 = v39[21];
  if (v43)
  {
    if (v43 == 1)
    {
      goto LABEL_37;
    }

    v44 = v39[20];
    v45 = (a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 40));

    *v45 = v44;
    v45[1] = v43;
  }

  v46 = *(v39 + 41);
  v47 = *(v39 + 45);
  v89 = *(v39 + 43);
  v90[0] = v47;
  *(v90 + 9) = *(v39 + 369);
  v48 = *(v39 + 33);
  v49 = v48;
  v50 = *(v39 + 37);
  v51 = *(v39 + 39);
  v85 = *(v39 + 35);
  v86 = v50;
  v52 = *(v39 + 37);
  v53 = *(v39 + 41);
  v87 = *(v39 + 39);
  v88 = v53;
  v54 = *(v39 + 25);
  v55 = *(v39 + 29);
  v81 = *(v39 + 27);
  v82 = v55;
  v83 = *(v39 + 31);
  v84 = v48;
  v79 = *(v39 + 23);
  v80 = v54;
  v56 = *(v39 + 45);
  v101 = v89;
  v102[0] = v56;
  *(v102 + 9) = *(v39 + 369);
  v97 = v85;
  v98 = v52;
  v99 = v51;
  v100 = v46;
  v57 = *(v39 + 25);
  v58 = *(v39 + 29);
  v93 = *(v39 + 27);
  v94 = v58;
  v95 = *(v39 + 31);
  v96 = v49;
  v91 = *(v39 + 23);
  v92 = v57;
  enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 = get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v91);
  if (enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0 != 1)
  {
    v104[0] = v102[0];
    *(v104 + 9) = *(v102 + 9);
    v103[6] = v97;
    v103[7] = v98;
    v103[9] = v100;
    v103[10] = v101;
    v103[8] = v99;
    v103[2] = v93;
    v103[3] = v94;
    v103[4] = v95;
    v103[5] = v96;
    v103[0] = v91;
    v103[1] = v92;
    MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0);
    v77[10] = v89;
    v78[0] = v90[0];
    *(v78 + 9) = *(v90 + 9);
    v77[6] = v85;
    v77[7] = v86;
    v77[8] = v87;
    v77[9] = v88;
    v77[2] = v81;
    v77[3] = v82;
    v77[4] = v83;
    v77[5] = v84;
    v77[0] = v79;
    v77[1] = v80;
    sub_2142E5FD0(v77, &v76);
    sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
    v60 = v73;
    v61 = v107;
    sub_2146D9018();
    sub_213FB2DF4(&v79, &qword_27C905AD0, &unk_214759900);
    v62 = *(type metadata accessor for CSDMConversationLinkProto(0) + 44);
    sub_213FB2DF4(a1 + v62, &unk_27C903788, "Į\r");
    sub_214534FEC(v60, a1 + v62, type metadata accessor for CSDMHandleProto);
    (*(v75 + 56))(a1 + v62, 0, 1, v61);
  }

  v63 = *(v39 + 400);
  if ((v63 & 1) == 0)
  {
    v64 = v39[49];
    v65 = a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 48);
    *v65 = v64;
    v65[8] = v63;
  }

  v66 = *(v39 + 401);
  if (v66 != 2)
  {
    *(a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 52)) = v66;
  }

  v67 = v39[52];
  if (v67)
  {
    v68 = v39[51];
    v69 = (a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 56));

    *v69 = v68;
    v69[1] = v67;
  }

  if ((v39[54] & 1) == 0)
  {
    v70 = v39[53];
    if (!v70)
    {
      v71 = 0;
LABEL_34:
      *(a1 + *(type metadata accessor for CSDMConversationLinkProto(0) + 60)) = v71;
      return;
    }

    if (v70 == 1)
    {
      v71 = 1;
      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    sub_2146DA018();
    __break(1u);
  }
}

int *sub_214529A2C(int *result, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
  if ((a2 & 0x100000000) == 0)
  {
    v9 = a2;
    result = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
    v10 = v8 + result[5];
    *v10 = v9;
    v10[4] = 0;
  }

  if ((a4 & 1) == 0)
  {
    if (a3 > 3)
    {
      __break(1u);
      return result;
    }

    result = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
    *(v8 + result[6]) = a3;
  }

  if ((a5 & 1) == 0)
  {
    result = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
    v11 = v8 + result[7];
    *v11 = HIDWORD(a4);
    v11[4] = 0;
  }

  return result;
}

void *sub_214529AD0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v22 = a3;
  v6 = sub_2146D8E18();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = type metadata accessor for CSDMConversationMessageProto(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v8);
  v12 = &v16[-v11 - 8];
  v20 = a1;
  v21 = a2;
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto, aAc_1);
  sub_2146D8FD8();
  if (v3)
  {
    return sub_213FB54FC(a1, a2);
  }

  v14 = v22;
  sub_21453517C(v12, v10, type metadata accessor for CSDMConversationMessageProto);
  sub_214529CFC(v10);
  sub_2145351E4(v12, type metadata accessor for CSDMConversationMessageProto);
  sub_213FB54FC(a1, a2);
  return memcpy(v14, v16, 0x6F3uLL);
}

void sub_214529CFC(uint64_t a1)
{
  v338 = v1;
  v2 = MEMORY[0x28223BE20](a1);
  v295 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v297 = &v277[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v277[-v7];
  v333 = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  v304 = *(v333 - 1);
  v9 = MEMORY[0x28223BE20](v333);
  v332 = &v277[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v331 = &v277[-v11];
  v12 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v310 = *(v12 - 8);
  v311 = v12;
  MEMORY[0x28223BE20](v12);
  v305 = &v277[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CC8, &qword_2146E97F8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  *&v306 = &v277[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v309 = &v277[-v17];
  v318 = type metadata accessor for CSDMConversationReportProto(0);
  v314 = *(v318 - 8);
  MEMORY[0x28223BE20](v318);
  v307 = &v277[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD0, &qword_2146E9800);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v308 = &v277[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v313 = &v277[-v22];
  v23 = type metadata accessor for CSDMConversationLinkProto(0);
  v316 = *(v23 - 1);
  v317 = v23;
  MEMORY[0x28223BE20](v23);
  v312 = &v277[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  MEMORY[0x28223BE20](v25 - 8);
  v315 = &v277[-v26];
  v303 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v319 = *(v303 - 8);
  v27 = MEMORY[0x28223BE20](v303);
  v29 = &v277[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x28223BE20](v27);
  v334 = &v277[-v31];
  MEMORY[0x28223BE20](v30);
  v335 = &v277[-v32];
  v33 = type metadata accessor for CSDMConversationMemberProto(0);
  v322 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v324 = &v277[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = MEMORY[0x28223BE20](v34);
  v326 = &v277[-v37];
  v38 = MEMORY[0x28223BE20](v36);
  v328 = &v277[-v39];
  v40 = MEMORY[0x28223BE20](v38);
  v327 = &v277[-v41];
  v42 = MEMORY[0x28223BE20](v40);
  v337 = &v277[-v43];
  MEMORY[0x28223BE20](v42);
  v336 = &v277[-v44];
  v45 = type metadata accessor for CSDMConversationParticipantProto(0);
  v323 = *(v45 - 8);
  v46 = MEMORY[0x28223BE20](v45 - 8);
  v321 = &v277[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v277[-v49];
  v51 = MEMORY[0x28223BE20](v48);
  v53 = &v277[-v52];
  MEMORY[0x28223BE20](v51);
  v55 = &v277[-v54];
  v56 = *(v2 + *(type metadata accessor for CSDMConversationMessageProto(0) + 20));
  swift_beginAccess();
  v301 = *(v56 + 16);
  v57 = *(v56 + 20);
  swift_beginAccess();
  v58 = *(v56 + 21);
  v329 = v2;
  if (v58 != 34)
  {
    sub_214655BAC(qword_2147599E8[v58], v342);
    LODWORD(v58) = v342[0];
    if (v342[0] == 34)
    {
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      return;
    }
  }

  v300 = v58;
  v325 = v50;
  v296 = v29;
  v298 = v57;
  swift_beginAccess();
  v299 = *(v56 + 22);
  swift_beginAccess();
  v59 = *(v56 + 24);
  v60 = *(v59 + 16);
  v61 = MEMORY[0x277D84F90];
  v330 = v56;
  v302 = v8;
  if (v60)
  {
    v62 = v338;
    *&v341[0] = MEMORY[0x277D84F90];

    sub_2140A0184(0, v60, 0);
    v340 = v59;
    if (*(v59 + 16))
    {
      v63 = 0;
      v382 = *&v341[0];
      v61 = v340 + ((v323[80] + 32) & ~v323[80]);
      v339 = *(v323 + 9);
      while (1)
      {
        sub_21453517C(v61, v55, type metadata accessor for CSDMConversationParticipantProto);
        sub_21453517C(v55, v53, type metadata accessor for CSDMConversationParticipantProto);
        sub_21452135C(v53, v342);
        v64 = v62;
        if (v62)
        {
          break;
        }

        sub_2145351E4(v55, type metadata accessor for CSDMConversationParticipantProto);
        memcpy(v381, v342, 0x16AuLL);
        v65 = v382;
        *&v341[0] = v382;
        v67 = *(v382 + 16);
        v66 = *(v382 + 24);
        if (v67 >= v66 >> 1)
        {
          v338 = 0;
          sub_2140A0184((v66 > 1), v67 + 1, 1);
          v64 = v338;
          v65 = *&v341[0];
        }

        *(v65 + 16) = v67 + 1;
        v382 = v65;
        memcpy((v65 + 368 * v67 + 32), v381, 0x16AuLL);
        if (v60 - 1 == v63)
        {
          v338 = v64;

          v56 = v330;
          v61 = MEMORY[0x277D84F90];
          goto LABEL_15;
        }

        v62 = v64;
        v61 += v339;
        if (++v63 >= *(v340 + 16))
        {
          goto LABEL_120;
        }
      }

      sub_2145351E4(v55, type metadata accessor for CSDMConversationParticipantProto);

LABEL_38:

      goto LABEL_39;
    }

LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v382 = MEMORY[0x277D84F90];
LABEL_15:
  swift_beginAccess();
  v68 = *(v56 + 40);
  v293 = *(v56 + 32);
  swift_beginAccess();
  v62 = *(v56 + 48);
  v69 = *(v62 + 16);
  v70 = v335;
  *&v320 = v68;
  if (v69)
  {
    v71 = v338;
    *&v341[0] = v61;

    sub_2140A0164(0, v69, 0);
    if (!*(v62 + 16))
    {
LABEL_124:
      __break(1u);
LABEL_125:
      v338 = v70;
      memcpy(v341, v342, 0x389uLL);
      nullsub_1();
      memcpy(v381, v341, 0x389uLL);
      goto LABEL_126;
    }

    v72 = 0;
    v61 = v62 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v339 = *(v322 + 72);
    v340 = *&v341[0];
    v73 = v69 - 1;
    while (1)
    {
      v55 = v336;
      sub_21453517C(v61, v336, type metadata accessor for CSDMConversationMemberProto);
      v74 = v337;
      sub_21453517C(v55, v337, type metadata accessor for CSDMConversationMemberProto);
      sub_21451FEE0(v74, v342);
      v75 = v71;
      if (v71)
      {
        sub_2145351E4(v55, type metadata accessor for CSDMConversationMemberProto);

        goto LABEL_38;
      }

      sub_2145351E4(v55, type metadata accessor for CSDMConversationMemberProto);
      memcpy(v381, v342, 0x1F0uLL);
      v76 = v340;
      *&v341[0] = v340;
      v70 = *(v340 + 16);
      v77 = *(v340 + 24);
      if (v70 >= v77 >> 1)
      {
        v338 = 0;
        sub_2140A0164((v77 > 1), v70 + 1, 1);
        v75 = v338;
        v76 = *&v341[0];
      }

      *(v76 + 16) = v70 + 1;
      v340 = v76;
      memcpy((v76 + 496 * v70 + 32), v381, 0x1F0uLL);
      if (v73 == v72)
      {
        break;
      }

      v71 = v75;
      v61 += v339;
      if (++v72 >= *(v62 + 16))
      {
        goto LABEL_124;
      }
    }

    v338 = v75;

    v56 = v330;
    v70 = v335;
  }

  else
  {

    v340 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v78 = *(v56 + 56);
  LODWORD(v290) = *(v56 + 60);
  swift_beginAccess();
  v79 = *(v56 + 64);
  v80 = *(v56 + 72);
  swift_beginAccess();
  v81 = *(v56 + 80);
  v82 = *(v81 + 16);
  v291 = v78;
  v294 = v80;
  v289 = v79;
  if (v82)
  {
    v83 = v338;
    *&v341[0] = MEMORY[0x277D84F90];

    sub_2140A0144(0, v82, 0);
    if (!*(v81 + 16))
    {
LABEL_131:
      __break(1u);
LABEL_132:

      v332 = *v342;
      v289 = *&v342[8];
      v290 = *&v342[16];
      v294 = *&v342[24];
      LODWORD(v236) = v342[32];

      sub_213FDC6D0(v83, v82);
      *v342 = v330;
      v245 = v287;
      *&v342[8] = v286;
      v246 = v288;
      *&v342[16] = v288;
      *&v342[24] = v287;
      v342[32] = v327;

      sub_213FDC9D0(v246, v245);
      v247 = v338;
      sub_214031B48(v312, v292, 2, 0xD000000000000020, 0x800000021478D490, 0xD00000000000001CLL, v81 | 0x8000000000000000);
      v248 = v315;
      v338 = v247;
      if (v247)
      {
        sub_213FB2DF4(v380, &qword_27C905D58, &qword_2146F4098);
        sub_213FB2DF4(&v375, &qword_27C905D70, &qword_2146F40A0);
        sub_2142E8030(v313, v248, v316, v314, sub_213FDC6BC);
        sub_213FB2DF4(v381, &qword_27C905DB8, &unk_2147598E0);

        v330 = *v342;
        v249 = *&v342[8];
        v250 = *&v342[16];
        v251 = *&v342[24];
        LODWORD(v327) = v342[32];

        sub_213FDC6D0(v246, v245);
        v241 = v289;
        v242 = v290;
        v243 = v294;
        v240 = v249;
        v238 = v250;
        v239 = v251;
        v232 = v337;
        v233 = v331;
        v234 = v328;
        v235 = v280;
        v237 = v296;
LABEL_141:
        v228 = v293;
        v231 = v320;
        v229 = v279;
        v230 = v278;
        goto LABEL_142;
      }

      LODWORD(v326) = v236;

      v330 = *v342;
      v285 = *&v342[8];
      v292 = *&v342[16];
      v312 = *&v342[24];
      LODWORD(v327) = v342[32];

      sub_213FDC6D0(v246, v245);
      *v342 = v325;
      v137 = v322;
      *&v342[8] = v321;
      v153 = v323;
      *&v342[16] = v323;
      *&v342[24] = v322;
      v342[32] = v324;

      sub_213FDC9D0(v153, v137);
      v252 = v338;
      sub_214031B48(v309, v317, 2, 0xD00000000000002FLL, 0x800000021478D4C0, 0xD00000000000001CLL, v81 | 0x8000000000000000);
      v338 = v252;
      if (v252)
      {
        sub_213FB2DF4(v380, &qword_27C905D58, &qword_2146F4098);
        sub_213FB2DF4(&v375, &qword_27C905D70, &qword_2146F40A0);
        sub_2142E8030(v313, v315, v316, v314, sub_213FDC6BC);
        sub_213FB2DF4(v381, &qword_27C905DB8, &unk_2147598E0);

        v325 = *v342;
        v253 = *&v342[8];
        v254 = *&v342[16];
        v255 = *&v342[24];
        LODWORD(v324) = v342[32];

        sub_213FDC6D0(v153, v137);
        v241 = v289;
        v242 = v290;
        v243 = v294;
        v240 = v285;
        v238 = v292;
        v239 = v312;
        v321 = v253;
        v322 = v255;
        v323 = v254;
        v232 = v337;
        v233 = v331;
        v234 = v328;
        v235 = v280;
        LOBYTE(v236) = v326;
        v237 = v296;
        goto LABEL_141;
      }

      goto LABEL_139;
    }

    v84 = 0;
    v339 = *&v341[0];
    v85 = v81 + ((*(v319 + 80) + 32) & ~*(v319 + 80));
    v337 = *(v319 + 72);
    --v82;
    while (1)
    {
      v86 = v81;
      sub_21453517C(v85, v70, type metadata accessor for CSDMConversationActivitySessionProto);
      v87 = v70;
      v88 = v70;
      v89 = v334;
      sub_21453517C(v87, v334, type metadata accessor for CSDMConversationActivitySessionProto);
      sub_214527708(v89, v342);
      v90 = v83;
      if (v83)
      {
        sub_2145351E4(v88, type metadata accessor for CSDMConversationActivitySessionProto);

        goto LABEL_38;
      }

      sub_2145351E4(v88, type metadata accessor for CSDMConversationActivitySessionProto);
      memcpy(v381, v342, 0x389uLL);
      v91 = v339;
      *&v341[0] = v339;
      v93 = *(v339 + 16);
      v92 = *(v339 + 24);
      if (v93 >= v92 >> 1)
      {
        v338 = 0;
        sub_2140A0144((v92 > 1), v93 + 1, 1);
        v90 = v338;
        v91 = *&v341[0];
      }

      *(v91 + 16) = v93 + 1;
      v339 = v91;
      memcpy((v91 + 912 * v93 + 32), v381, 0x389uLL);
      v81 = v86;
      if (v82 == v84)
      {
        break;
      }

      v83 = v90;
      v85 += v337;
      ++v84;
      v70 = v335;
      if (v84 >= *(v86 + 16))
      {
        goto LABEL_131;
      }
    }

    v338 = v90;

    v56 = v330;
  }

  else
  {

    v339 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v94 = *(v56 + 88);
  v95 = *(v56 + 96);
  v96 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
  swift_beginAccess();
  v97 = v315;
  sub_213FB2E54(v56 + v96, v315, &qword_27C903CD8, &qword_2146E9808);
  LODWORD(v96) = (*(v316 + 48))(v97, 1, v317);
  v292 = v95;

  sub_213FB2DF4(v97, &qword_27C903CD8, &qword_2146E9808);
  v98 = v96 == 1;
  v99 = v318;
  if (v98)
  {
    v312 = v94;
    sub_214535138(v380);
  }

  else
  {
    v100 = v312;
    v101 = v329;
    sub_21400ABFC(v312);
    v102 = v338;
    sub_21452802C(v100, v342);
    if (v102)
    {
      sub_2145351E4(v101, type metadata accessor for CSDMConversationMessageProto);

      return;
    }

    v312 = v94;
    v338 = 0;
    memcpy(v381, v342, 0x1B1uLL);
    nullsub_1();
    memcpy(v380, v381, 0x1B1uLL);
  }

  v103 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
  v104 = v330;
  swift_beginAccess();
  v105 = v313;
  sub_213FB2E54(v104 + v103, v313, &qword_27C903CD0, &qword_2146E9800);
  v337 = *(v314 + 48);
  v106 = v99;
  v107 = (v337)(v105, 1, v99);
  sub_213FB2DF4(v105, &qword_27C903CD0, &qword_2146E9800);
  if (v107 == 1)
  {
    memset(v379, 0, 25);
    v378 = 0u;
    v377 = 0u;
    v376 = 0u;
    v375 = 0u;
    v108 = v325;
  }

  else
  {
    v109 = v308;
    sub_213FB2E54(v104 + v103, v308, &qword_27C903CD0, &qword_2146E9800);
    v110 = v337;
    if ((v337)(v109, 1, v106) == 1)
    {
      v111 = v307;
      sub_2146D8DE8();
      v112 = &v111[v106[5]];
      *v112 = 0;
      v112[1] = 0;
      v113 = &v111[v106[6]];
      *v113 = 0;
      v113[8] = 1;
      v114 = &v111[v106[7]];
      *v114 = 0;
      v114[1] = 0;
      v115 = v106;
      if (v110(v109, 1, v106) != 1)
      {
        sub_213FB2DF4(v109, &qword_27C903CD0, &qword_2146E9800);
      }
    }

    else
    {
      v115 = v106;
      v111 = v307;
      sub_214534FEC(v109, v307, type metadata accessor for CSDMConversationReportProto);
    }

    v116 = v115;
    v117 = v115[6];
    v118 = &v111[v115[5]];
    v120 = *v118;
    v119 = v118[1];
    v121 = *&v111[v117];
    v122 = v111[v117 + 8];
    v123 = &v111[v116[7]];
    v124 = *v123;
    v125 = *(v123 + 1);

    v126 = v120;
    v127 = v338;
    sub_2140DDB3C(v126, v119, v121, v122, v124, v125, v342);
    v108 = v325;
    if (v127)
    {
      sub_2145351E4(v111, type metadata accessor for CSDMConversationReportProto);
      sub_2145351E4(v329, type metadata accessor for CSDMConversationMessageProto);
      sub_213FB2DF4(v380, &qword_27C905D58, &qword_2146F4098);

      goto LABEL_64;
    }

    v338 = 0;
    sub_2145351E4(v111, type metadata accessor for CSDMConversationReportProto);
    v377 = *&v342[32];
    v378 = *&v342[48];
    v379[0] = *&v342[64];
    *(v379 + 9) = *&v342[73];
    v375 = *v342;
    v376 = *&v342[16];
  }

  v128 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
  v129 = v330;
  swift_beginAccess();
  LODWORD(v308) = *(v129 + v128);
  v130 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
  swift_beginAccess();
  v131 = v309;
  sub_213FB2E54(v129 + v130, v309, &qword_27C903CC8, &qword_2146E97F8);
  v132 = v311;
  v337 = *(v310 + 48);
  v133 = (v337)(v131, 1, v311);
  sub_213FB2DF4(v131, &qword_27C903CC8, &qword_2146E97F8);
  if (v133 != 1)
  {
    v138 = v306;
    sub_213FB2E54(v129 + v130, v306, &qword_27C903CC8, &qword_2146E97F8);
    v139 = v337;
    v140 = (v337)(v138, 1, v132);
    v141 = v338;
    if (v140 == 1)
    {
      v142 = v305;
      sub_2146D8DE8();
      *&v142[*(v132 + 20)] = xmmword_2146E68C0;
      *&v142[*(v132 + 24)] = xmmword_2146E68C0;
      v98 = v139(v138, 1, v132) == 1;
      v143 = v138;
      v144 = v329;
      if (!v98)
      {
        sub_213FB2DF4(v143, &qword_27C903CC8, &qword_2146E97F8);
      }
    }

    else
    {
      v142 = v305;
      sub_214534FEC(v138, v305, type metadata accessor for CSDMEncryptedConversationMessageProto);
      v144 = v329;
    }

    sub_21452CFDC(v142, v342);
    v136 = v326;
    v137 = MEMORY[0x277D84F90];
    if (!v141)
    {
      v338 = 0;
      v134 = *v342;
      v315 = *&v342[8];
      v316 = *&v342[16];
      v135 = *&v342[24];
      goto LABEL_66;
    }

    sub_2145351E4(v144, type metadata accessor for CSDMConversationMessageProto);
    sub_213FB2DF4(v380, &qword_27C905D58, &qword_2146F4098);
    sub_213FB2DF4(&v375, &qword_27C905D70, &qword_2146F40A0);

LABEL_64:

    return;
  }

  v134 = 0;
  v135 = 0;
  v315 = 0xB000000000000000;
  v316 = 0;
  v136 = v326;
  v137 = MEMORY[0x277D84F90];
LABEL_66:
  v145 = v129 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle;
  swift_beginAccess();
  v146 = *(v145 + 8);
  v309 = *v145;
  v317 = v146;
  v147 = v129 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid;
  swift_beginAccess();
  v148 = *(v147 + 8);
  v307 = *v147;
  v318 = v148;
  v149 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
  swift_beginAccess();
  v150 = *(v129 + v149);
  v313 = v134;
  if (v150 != 34)
  {
    sub_214655BAC(qword_2147599E8[v150], v342);
    LODWORD(v150) = v342[0];
    if (v342[0] == 34)
    {
      goto LABEL_147;
    }
  }

  LODWORD(v310) = v150;
  v314 = v135;
  v151 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
  swift_beginAccess();
  v152 = *(v129 + v151);
  v153 = *(v152 + 16);
  if (v153)
  {
    *v342 = v137;

    sub_2140A0124(0, v153, 0);
    v154 = *v342;
    v155 = *(v304 + 80);
    v311 = v152;
    v137 = v152 + ((v155 + 32) & ~v155);
    v334 = *(v304 + 72);
    do
    {
      v156 = v331;
      sub_21453517C(v137, v331, type metadata accessor for CSDMConversationInvitationPreferenceProto);
      v157 = v156;
      v158 = v332;
      sub_214534FEC(v157, v332, type metadata accessor for CSDMConversationInvitationPreferenceProto);
      v159 = v333[6];
      v160 = &v158[v333[5]];
      v161 = *v160;
      LODWORD(v336) = v160[4];
      v162 = v158[v159];
      if (v162 == 4)
      {
        v163 = 0;
      }

      else
      {
        v163 = v158[v159];
      }

      v335 = v163;
      v164 = &v158[v333[7]];
      v165 = *v164;
      LODWORD(v337) = v164[4];
      sub_2145351E4(v158, type metadata accessor for CSDMConversationInvitationPreferenceProto);
      *v342 = v154;
      v167 = *(v154 + 16);
      v166 = *(v154 + 24);
      if (v167 >= v166 >> 1)
      {
        sub_2140A0124((v166 > 1), v167 + 1, 1);
        v154 = *v342;
      }

      *(v154 + 16) = v167 + 1;
      v168 = v154 + 32 * v167;
      *(v168 + 32) = v161;
      *(v168 + 36) = v336;
      *(v168 + 40) = v335;
      *(v168 + 48) = v162 == 4;
      *(v168 + 52) = v165;
      v137 += v334;
      *(v168 + 56) = v337;
      --v153;
    }

    while (v153);
    v335 = v154;

    v129 = v330;
    v108 = v325;
    v136 = v326;
  }

  else
  {

    v335 = MEMORY[0x277D84F90];
  }

  v169 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
  swift_beginAccess();
  v81 = *(v129 + v169);
  v170 = *(v81 + 16);
  if (v170)
  {
    *&v341[0] = MEMORY[0x277D84F90];

    sub_2140A0164(0, v170, 0);
    if (*(v81 + 16))
    {
      v137 = 0;
      v171 = *&v341[0];
      v153 = v81 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
      v336 = *(v322 + 72);
      v337 = v170 - 1;
      while (1)
      {
        v172 = v81;
        v173 = v327;
        sub_21453517C(v153, v327, type metadata accessor for CSDMConversationMemberProto);
        v174 = v328;
        sub_21453517C(v173, v328, type metadata accessor for CSDMConversationMemberProto);
        v175 = v338;
        sub_21451FEE0(v174, v342);
        if (v175)
        {
          break;
        }

        sub_2145351E4(v173, type metadata accessor for CSDMConversationMemberProto);
        memcpy(v381, v342, 0x1F0uLL);
        *&v341[0] = v171;
        v177 = *(v171 + 16);
        v176 = *(v171 + 24);
        v338 = 0;
        if (v177 >= v176 >> 1)
        {
          sub_2140A0164((v176 > 1), v177 + 1, 1);
          v171 = *&v341[0];
        }

        *(v171 + 16) = v177 + 1;
        memcpy((v171 + 496 * v177 + 32), v381, 0x1F0uLL);
        v81 = v172;
        if (v337 == v137)
        {
          v336 = v171;

          v129 = v330;
          v108 = v325;
          v136 = v326;
          goto LABEL_90;
        }

        v153 += v336;
        if (++v137 >= *(v172 + 16))
        {
          goto LABEL_136;
        }
      }

      sub_2145351E4(v173, type metadata accessor for CSDMConversationMemberProto);

LABEL_101:

      sub_2142E8030(v313, v315, v316, v314, sub_213FDC6BC);
      sub_213FB2DF4(&v375, &qword_27C905D70, &qword_2146F40A0);
      sub_213FB2DF4(v380, &qword_27C905D58, &qword_2146F4098);

LABEL_39:
      sub_2145351E4(v329, type metadata accessor for CSDMConversationMessageProto);
      return;
    }

LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  v336 = MEMORY[0x277D84F90];
LABEL_90:
  v178 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  swift_beginAccess();
  v81 = *(v129 + v178);
  v179 = *(v81 + 16);
  if (v179)
  {
    *&v341[0] = MEMORY[0x277D84F90];

    sub_2140A0164(0, v179, 0);
    if (!*(v81 + 16))
    {
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    v137 = 0;
    v180 = *&v341[0];
    v153 = v81 + ((*(v322 + 80) + 32) & ~*(v322 + 80));
    v337 = *(v322 + 72);
    while (1)
    {
      v181 = v81;
      sub_21453517C(v153, v136, type metadata accessor for CSDMConversationMemberProto);
      v182 = v136;
      v183 = v136;
      v184 = v324;
      sub_21453517C(v182, v324, type metadata accessor for CSDMConversationMemberProto);
      v185 = v338;
      sub_21451FEE0(v184, v342);
      if (v185)
      {
        sub_2145351E4(v183, type metadata accessor for CSDMConversationMemberProto);

        goto LABEL_101;
      }

      sub_2145351E4(v183, type metadata accessor for CSDMConversationMemberProto);
      memcpy(v381, v342, 0x1F0uLL);
      *&v341[0] = v180;
      v187 = *(v180 + 16);
      v186 = *(v180 + 24);
      v338 = 0;
      if (v187 >= v186 >> 1)
      {
        sub_2140A0164((v186 > 1), v187 + 1, 1);
        v180 = *&v341[0];
      }

      *(v180 + 16) = v187 + 1;
      memcpy((v180 + 496 * v187 + 32), v381, 0x1F0uLL);
      v81 = v181;
      if (v179 - 1 == v137)
      {
        break;
      }

      v153 += v337;
      ++v137;
      v136 = v326;
      if (v137 >= *(v181 + 16))
      {
        goto LABEL_137;
      }
    }

    v334 = v180;

    v129 = v330;
    v108 = v325;
  }

  else
  {
    v334 = MEMORY[0x277D84F90];
  }

  v188 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
  swift_beginAccess();
  v81 = *(v129 + v188);
  v189 = *(v81 + 16);
  if (!v189)
  {
    v333 = MEMORY[0x277D84F90];
    goto LABEL_115;
  }

  *&v341[0] = MEMORY[0x277D84F90];

  sub_2140A0184(0, v189, 0);
  v337 = v81;
  if (*(v81 + 16))
  {
    v137 = 0;
    v190 = *&v341[0];
    v81 = v337 + ((v323[80] + 32) & ~v323[80]);
    v191 = *(v323 + 9);
    v153 = v189 - 1;
    while (1)
    {
      sub_21453517C(v81, v108, type metadata accessor for CSDMConversationParticipantProto);
      v192 = v321;
      sub_21453517C(v108, v321, type metadata accessor for CSDMConversationParticipantProto);
      v193 = v338;
      sub_21452135C(v192, v342);
      if (v193)
      {
        sub_2145351E4(v108, type metadata accessor for CSDMConversationParticipantProto);

        sub_2142E8030(v313, v315, v316, v314, sub_213FDC6BC);
        sub_213FB2DF4(&v375, &qword_27C905D70, &qword_2146F40A0);
        sub_213FB2DF4(v380, &qword_27C905D58, &qword_2146F4098);

        goto LABEL_39;
      }

      sub_2145351E4(v108, type metadata accessor for CSDMConversationParticipantProto);
      memcpy(v381, v342, 0x16AuLL);
      *&v341[0] = v190;
      v195 = *(v190 + 16);
      v194 = *(v190 + 24);
      v338 = 0;
      if (v195 >= v194 >> 1)
      {
        sub_2140A0184((v194 > 1), v195 + 1, 1);
        v190 = *&v341[0];
      }

      *(v190 + 16) = v195 + 1;
      memcpy((v190 + 368 * v195 + 32), v381, 0x16AuLL);
      if (v153 == v137)
      {
        break;
      }

      v81 += v191;
      ++v137;
      v108 = v325;
      if (v137 >= *(v337 + 16))
      {
        goto LABEL_138;
      }
    }

    v333 = v190;

    v129 = v330;
LABEL_115:
    v196 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
    swift_beginAccess();
    LODWORD(v331) = *(v129 + v196);
    v197 = v129 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier;
    swift_beginAccess();
    v198 = *(v197 + 8);
    v328 = *v197;
    v199 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
    swift_beginAccess();
    v200 = v302;
    sub_213FB2E54(v129 + v199, v302, &qword_27C903CB8, &qword_2146E97F0);
    v201 = v303;
    v332 = *(v319 + 48);
    v202 = (v332)(v200, 1, v303);
    v337 = v198;

    sub_213FB2DF4(v200, &qword_27C903CB8, &qword_2146E97F0);
    if (v202 == 1)
    {
      sub_214534D10(v381);
      v55 = v313;
      v61 = v314;
      v62 = v316;
LABEL_126:
      v215 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
      v216 = v330;
      swift_beginAccess();
      if (*(v216 + v215) > 3u)
      {
        __break(1u);
      }

      else
      {
        LODWORD(v305) = *(v216 + v215);
        v217 = v216 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
        swift_beginAccess();
        LODWORD(v304) = *v217;
        v218 = *(v217 + 4);
        v219 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
        swift_beginAccess();
        LODWORD(v303) = *(v216 + v219);
        if (v303 <= 3)
        {
          v220 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
          swift_beginAccess();
          LODWORD(v302) = *(v216 + v220);
          sub_213FB2E54(v380, v342, &qword_27C905D58, &qword_2146F4098);
          sub_213FB2E54(&v375, v342, &qword_27C905D70, &qword_2146F40A0);
          v221 = v315;
          sub_2142E8030(v55, v315, v62, v61, sub_213FDCA18);
          v316 = v62;
          sub_213FB2E54(v381, v342, &qword_27C905DB8, &unk_2147598E0);
          sub_214654964(v358);
          v222 = v358[0];
          v223 = v358[1];
          v224 = v358[2];
          v225 = v358[3];
          v226 = v359;
          sub_214654998(v356);
          v332 = v356[0];
          v284 = v356[2];
          v285 = v356[1];
          v283 = v356[3];
          LODWORD(v326) = v357;
          sub_2146549CC(v354);
          v330 = v354[0];
          v288 = v354[2];
          v286 = v354[1];
          v287 = v354[3];
          LODWORD(v327) = v355;
          sub_214654B18(v352);
          v325 = v352[0];
          v323 = v352[2];
          v321 = v352[1];
          v322 = v352[3];
          LODWORD(v324) = v353;
          sub_214654C54(&v348);
          v306 = v348;
          v311 = v349;
          v319 = v350;
          LODWORD(v296) = v351;
          v362 = v298;
          v361 = v290;
          memcpy(&v342[7], v380, 0x1B1uLL);
          *(&v341[2] + 7) = v377;
          *(&v341[3] + 7) = v378;
          *(&v341[4] + 7) = v379[0];
          v341[5] = *(v379 + 9);
          *(v341 + 7) = v375;
          *(&v341[1] + 7) = v376;
          memcpy(v363, v381, sizeof(v363));
          v360 = v218;
          v280 = v298;
          LODWORD(v297) = v290;
          memcpy(v374, v342, 0x1B8uLL);
          *&v374[59] = v341[2];
          *&v374[61] = v341[3];
          *&v374[63] = v341[4];
          *&v374[65] = *(v379 + 9);
          *&v374[55] = v341[0];
          *&v374[57] = v341[1];
          v298 = v218;
          *v342 = v222;
          *&v342[8] = v223;
          *&v342[16] = v224;
          *&v342[24] = v225;
          v342[32] = v226;
          v281 = v223;

          v282 = v224;
          v290 = v225;
          sub_213FDC9D0(v224, v225);
          v227 = v338;
          sub_214031B48(v293, v320, 2, 0xD000000000000033, 0x800000021478D420, 0xD00000000000001CLL, 0x800000021478A360);
          if (v227)
          {
            v338 = v227;
            sub_213FB2DF4(v380, &qword_27C905D58, &qword_2146F4098);
            sub_213FB2DF4(&v375, &qword_27C905D70, &qword_2146F40A0);
            v315 = v221;
            sub_2142E8030(v313, v221, v316, v314, sub_213FDC6BC);
            sub_213FB2DF4(v381, &qword_27C905DB8, &unk_2147598E0);

            v320 = *v342;
            v228 = *&v342[16];
            v229 = *&v342[24];
            v230 = v342[32];

            sub_213FDC6D0(v282, v290);
            v231 = v320;
            v232 = v337;
            v233 = v331;
            v234 = v328;
            v235 = v280;
            LOBYTE(v236) = v326;
            v237 = v296;
            v239 = v287;
            v238 = v288;
            v241 = v285;
            v240 = v286;
            v243 = v283;
            v242 = v284;
LABEL_142:
            *v342 = v301;
            v342[4] = v235;
            v342[5] = v300;
            v342[6] = v299;
            *&v342[8] = v382;
            *&v342[16] = v231;
            *&v342[32] = v228;
            *&v342[40] = v229;
            v342[48] = v230;
            *&v342[49] = v373[0];
            *&v342[52] = *(v373 + 3);
            *&v342[56] = v340;
            *&v342[64] = v291;
            v342[68] = v297;
            v342[71] = v372;
            *&v342[69] = v371;
            *&v342[72] = v332;
            *&v342[80] = v241;
            *&v342[88] = v242;
            *&v342[96] = v243;
            v342[104] = v236;
            *&v342[108] = *(v370 + 3);
            *&v342[105] = v370[0];
            *&v342[112] = v339;
            *&v342[120] = v330;
            *&v342[128] = v240;
            *&v342[136] = v238;
            *&v342[144] = v239;
            v342[152] = v327;
            memcpy(&v342[153], v374, 0x218uLL);
            v342[689] = v308;
            *&v342[690] = v368;
            *&v342[694] = v369;
            *&v342[696] = v313;
            *&v342[704] = v315;
            *&v342[712] = v316;
            *&v342[720] = v314;
            *&v342[728] = v325;
            *&v342[736] = v321;
            *&v342[744] = v323;
            *&v342[752] = v322;
            v342[760] = v324;
            *&v342[761] = *v367;
            *&v342[764] = *&v367[3];
            *&v342[768] = v306;
            *&v342[784] = v311;
            *&v342[792] = v319;
            v342[800] = v237;
            v342[801] = v310;
            *&v342[802] = v365;
            *&v342[806] = v366;
            *&v342[808] = v335;
            *&v342[816] = v336;
            *&v342[824] = v334;
            *&v342[832] = v333;
            v342[840] = v233;
            *&v342[841] = v364[0];
            *&v342[844] = *(v364 + 3);
            *&v342[848] = v234;
            *&v342[856] = v232;
            memcpy(&v342[864], v363, 0x389uLL);
            v343 = v305;
            v344 = v304;
            v345 = v298;
            v346 = v303;
            v347 = v302;
            sub_2142E77C8(v342);
            sub_2145351E4(v329, type metadata accessor for CSDMConversationMessageProto);
            return;
          }

          v320 = *v342;
          v293 = *&v342[16];
          v279 = *&v342[24];
          v278 = v342[32];

          sub_213FDC6D0(v282, v290);
          *v342 = v332;
          v83 = v284;
          *&v342[8] = v285;
          *&v342[16] = v284;
          v244 = v283;
          *&v342[24] = v283;
          v342[32] = v326;

          sub_213FDC9D0(v83, v244);
          v81 = "BlastDoor/Untrusted.swift";
          sub_214031B48(v289, v294, 2, 0xD00000000000002FLL, 0x800000021478D460, 0xD00000000000001CLL, 0x800000021478A360);
          v82 = v244;
          v338 = 0;
          goto LABEL_132;
        }
      }

      __break(1u);
      goto LABEL_146;
    }

    v203 = v330 + v199;
    v53 = v297;
    sub_213FB2E54(v203, v297, &qword_27C903CB8, &qword_2146E97F0);
    v204 = v332;
    v205 = (v332)(v53, 1, v201);
    v61 = v314;
    v62 = v316;
    if (v205 == 1)
    {
      v206 = v201;
      v207 = v296;
      sub_2146D8DE8();
      v208 = (v207 + v206[5]);
      *v208 = 0;
      v208[1] = 0;
      v209 = v206[6];
      v210 = type metadata accessor for CSDMConversationActivityProto(0);
      (*(*(v210 - 8) + 56))(v207 + v209, 1, 1, v210);
      v211 = v207 + v206[7];
      *v211 = 0;
      *(v211 + 8) = 1;
      v212 = (v204)(v53, 1, v206);
      v213 = v329;
      v55 = v313;
      if (v212 != 1)
      {
        sub_213FB2DF4(v53, &qword_27C903CB8, &qword_2146E97F0);
      }

LABEL_122:
      v214 = v338;
      sub_214527708(v207, v342);
      v70 = v214;
      if (v214)
      {
        sub_2145351E4(v213, type metadata accessor for CSDMConversationMessageProto);
        sub_213FB2DF4(v380, &qword_27C905D58, &qword_2146F4098);
        sub_213FB2DF4(&v375, &qword_27C905D70, &qword_2146F40A0);
        sub_2142E8030(v55, v315, v62, v61, sub_213FDC6BC);

        return;
      }

      goto LABEL_125;
    }

LABEL_121:
    v207 = v296;
    sub_214534FEC(v53, v296, type metadata accessor for CSDMConversationActivitySessionProto);
    v213 = v329;
    v55 = v313;
    goto LABEL_122;
  }

LABEL_138:
  __break(1u);
LABEL_139:

  v325 = *v342;
  v317 = *&v342[8];
  v309 = *&v342[16];
  v256 = *&v342[24];
  LODWORD(v324) = v342[32];

  sub_213FDC6D0(v153, v137);
  *v342 = v306;
  v257 = v311;
  *&v342[16] = v311;
  v236 = v319;
  *&v342[24] = v319;
  v342[32] = v296;

  sub_213FDC9D0(v257, v236);
  v258 = v338;
  sub_214031B48(v307, v318, 2, 0xD00000000000002DLL, 0x800000021478D4F0, 0xD00000000000001CLL, v81 | 0x8000000000000000);
  v338 = v258;
  if (v258)
  {
    sub_213FB2DF4(v380, &qword_27C905D58, &qword_2146F4098);
    sub_213FB2DF4(&v375, &qword_27C905D70, &qword_2146F40A0);
    sub_2142E8030(v313, v315, v316, v314, sub_213FDC6BC);
    sub_213FB2DF4(v381, &qword_27C905DB8, &unk_2147598E0);

    v306 = *v342;
    v259 = *&v342[16];
    v260 = *&v342[24];
    v237 = v342[32];

    sub_213FDC6D0(v257, v236);
    v241 = v289;
    v242 = v290;
    v243 = v294;
    v240 = v285;
    v238 = v292;
    v239 = v312;
    v321 = v317;
    v322 = v256;
    v323 = v309;
    v311 = v259;
    v319 = v260;
    v232 = v337;
    v233 = v331;
    v234 = v328;
    v235 = v280;
    LOBYTE(v236) = v326;
    goto LABEL_141;
  }

  sub_213FB2DF4(v380, &qword_27C905D58, &qword_2146F4098);
  sub_213FB2DF4(&v375, &qword_27C905D70, &qword_2146F40A0);
  v261 = v313;
  v323 = v256;
  v262 = v316;
  sub_2142E8030(v313, v315, v316, v314, sub_213FDC6BC);
  sub_213FB2DF4(v381, &qword_27C905DB8, &unk_2147598E0);

  v263 = *&v342[16];
  v264 = *&v342[24];
  v265 = v342[32];

  sub_213FDC6D0(v257, v236);
  sub_2145351E4(v329, type metadata accessor for CSDMConversationMessageProto);
  v266 = v295;
  *v295 = v301;
  *(v266 + 4) = v280;
  v267 = v299;
  *(v266 + 5) = v300;
  *(v266 + 6) = v267;
  *(v266 + 1) = v382;
  *(v266 + 1) = v320;
  v268 = v279;
  *(v266 + 4) = v293;
  *(v266 + 5) = v268;
  *(v266 + 48) = v278;
  *(v266 + 49) = v373[0];
  v266[13] = *(v373 + 3);
  *(v266 + 7) = v340;
  v266[16] = v291;
  *(v266 + 68) = v297;
  LOWORD(v268) = v371;
  *(v266 + 71) = v372;
  *(v266 + 69) = v268;
  v269 = v289;
  v270 = v290;
  *(v266 + 9) = v332;
  *(v266 + 10) = v269;
  v271 = v294;
  *(v266 + 11) = v270;
  *(v266 + 12) = v271;
  *(v266 + 104) = v326;
  *(v266 + 105) = v370[0];
  v266[27] = *(v370 + 3);
  v272 = v330;
  *(v266 + 14) = v339;
  *(v266 + 15) = v272;
  v273 = v292;
  *(v266 + 16) = v285;
  *(v266 + 17) = v273;
  *(v266 + 18) = v312;
  *(v266 + 152) = v327;
  memcpy(v266 + 153, v374, 0x218uLL);
  *(v266 + 689) = v308;
  *(v266 + 690) = v368;
  *(v266 + 347) = v369;
  *(v266 + 87) = v261;
  v274 = v314;
  *(v266 + 88) = v315;
  *(v266 + 89) = v262;
  *(v266 + 90) = v274;
  *(v266 + 91) = v325;
  *(v266 + 92) = v317;
  *(v266 + 93) = v309;
  *(v266 + 94) = v323;
  *(v266 + 760) = v324;
  *(v266 + 761) = *v367;
  v266[191] = *&v367[3];
  *(v266 + 48) = *v342;
  *(v266 + 98) = v263;
  *(v266 + 99) = v264;
  *(v266 + 800) = v265;
  *(v266 + 801) = v310;
  *(v266 + 802) = v365;
  *(v266 + 403) = v366;
  v275 = v336;
  *(v266 + 101) = v335;
  *(v266 + 102) = v275;
  v276 = v333;
  *(v266 + 103) = v334;
  *(v266 + 104) = v276;
  *(v266 + 840) = v331;
  v266[211] = *(v364 + 3);
  *(v266 + 841) = v364[0];
  *(v266 + 106) = v328;
  *(v266 + 107) = v337;
  memcpy(v266 + 216, v363, 0x389uLL);
  *(v266 + 1769) = v305;
  v266[443] = v304;
  *(v266 + 1776) = v298;
  *(v266 + 1777) = v303;
  *(v266 + 1778) = v302;
}

uint64_t sub_21452CFDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v5 = (a1 + *(v4 + 20));
  v7 = *v5;
  v6 = v5[1];
  if (v6 >> 60 != 15)
  {
    sub_213FDCA18(v7, v6);
  }

  v8 = (a1 + *(v4 + 24));
  v10 = *v8;
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_213FDCA18(v10, v9);
  }

  result = sub_2145351E4(a1, type metadata accessor for CSDMEncryptedConversationMessageProto);
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v9;
  return result;
}

uint64_t sub_21452D098(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  MEMORY[0x28223BE20](v6 - 8);
  v273 = &v272 - v7;
  v8 = type metadata accessor for CSDMConversationInvitationPreferenceProto(0);
  v296 = *(v8 - 8);
  v297 = v8;
  MEMORY[0x28223BE20](v8);
  v278 = &v272 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CC8, &qword_2146E97F8);
  MEMORY[0x28223BE20](v10 - 8);
  v277 = &v272 - v11;
  v290 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v276 = *(v290 - 8);
  MEMORY[0x28223BE20](v290);
  v289 = &v272 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD0, &qword_2146E9800);
  MEMORY[0x28223BE20](v13 - 8);
  v285 = &v272 - v14;
  v295 = type metadata accessor for CSDMConversationReportProto(0);
  v284 = *(v295 - 8);
  MEMORY[0x28223BE20](v295);
  v291 = (&v272 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CD8, &qword_2146E9808);
  MEMORY[0x28223BE20](v16 - 8);
  v275 = &v272 - v17;
  v288 = type metadata accessor for CSDMConversationLinkProto(0);
  v274 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v287 = &v272 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v298 = *(v19 - 8);
  v299 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v286 = &v272 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v283 = &v272 - v22;
  v326 = type metadata accessor for CSDMConversationMemberProto(0);
  v302 = *(v326 - 8);
  v23 = MEMORY[0x28223BE20](v326);
  v280 = &v272 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v279 = &v272 - v26;
  MEMORY[0x28223BE20](v25);
  v282 = &v272 - v27;
  v28 = type metadata accessor for CSDMConversationParticipantProto(0);
  v300 = *(v28 - 8);
  v301 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v281 = &v272 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v272 - v31;
  v33 = &v272 - v31;
  if ((v4[1] & 1) == 0)
  {
    v34 = *v4;
    v35 = *(type metadata accessor for CSDMConversationMessageProto(0) + 20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *(v5 + v35);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
      swift_allocObject();
      v38 = sub_21402CD8C(v37);

      *(v5 + v35) = v38;
      v37 = v38;
    }

    swift_beginAccess();
    *(v37 + 16) = v34;
    *(v37 + 20) = 0;
    v32 = v33;
  }

  v39 = *(v4 + 5);
  switch(*(v4 + 5))
  {
    case 1:
      v39 = 1;
      goto LABEL_39;
    case 2:
      v39 = 2;
      goto LABEL_39;
    case 3:
      v39 = 3;
      goto LABEL_39;
    case 4:
      v39 = 4;
      goto LABEL_39;
    case 5:
      v39 = 5;
      goto LABEL_39;
    case 6:
      v39 = 6;
      goto LABEL_39;
    case 7:
      v39 = 8;
      goto LABEL_39;
    case 8:
      v39 = 9;
      goto LABEL_39;
    case 9:
      v39 = 10;
      goto LABEL_39;
    case 0xA:
      v39 = 11;
      goto LABEL_39;
    case 0xB:
      v39 = 12;
      goto LABEL_39;
    case 0xC:
      v39 = 13;
      goto LABEL_39;
    case 0xD:
      v39 = 14;
      goto LABEL_39;
    case 0xE:
      v39 = 15;
      goto LABEL_39;
    case 0xF:
      v39 = 16;
      goto LABEL_39;
    case 0x10:
      v39 = 19;
      goto LABEL_39;
    case 0x11:
      v39 = 21;
      goto LABEL_39;
    case 0x12:
      v39 = 22;
      goto LABEL_39;
    case 0x13:
      v39 = 23;
      goto LABEL_39;
    case 0x14:
      v39 = 24;
      goto LABEL_39;
    case 0x15:
      v39 = 25;
      goto LABEL_39;
    case 0x16:
      v39 = 26;
      goto LABEL_39;
    case 0x17:
      v39 = 27;
      goto LABEL_39;
    case 0x18:
      v39 = 28;
      goto LABEL_39;
    case 0x19:
      v39 = 29;
      goto LABEL_39;
    case 0x1A:
      v39 = 30;
      goto LABEL_39;
    case 0x1B:
      v39 = 31;
      goto LABEL_39;
    case 0x1C:
      v39 = 32;
      goto LABEL_39;
    case 0x1D:
      v39 = 33;
      goto LABEL_39;
    case 0x1E:
      v39 = 34;
      goto LABEL_39;
    case 0x1F:
      v39 = 35;
      goto LABEL_39;
    case 0x20:
      v39 = 36;
      goto LABEL_39;
    case 0x21:
      v39 = 37;
      goto LABEL_39;
    case 0x22:
      goto LABEL_43;
    default:
LABEL_39:
      v40 = sub_214028EFC(v39);
      if (v40 == 34)
      {
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
        goto LABEL_229;
      }

      v41 = v40;
      v42 = *(type metadata accessor for CSDMConversationMessageProto(0) + 20);
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v44 = *(v5 + v42);
      if ((v43 & 1) == 0)
      {
        type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        swift_allocObject();
        v45 = sub_21402CD8C(v44);

        *(v5 + v42) = v45;
        v44 = v45;
      }

      swift_beginAccess();
      *(v44 + 21) = v41;
      v32 = v33;
LABEL_43:
      v46 = *(v4 + 6);
      if (v46 != 2)
      {
        v47 = *(type metadata accessor for CSDMConversationMessageProto(0) + 20);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v49 = *(v5 + v47);
        if ((v48 & 1) == 0)
        {
          type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          swift_allocObject();
          v50 = sub_21402CD8C(v49);

          *(v5 + v47) = v50;
          v49 = v50;
        }

        swift_beginAccess();
        *(v49 + 22) = v46 & 1;
        v32 = v33;
      }

      v292 = v4;
      v293 = v5;
      v51 = *(v4 + 1);
      v52 = *(v51 + 16);
      v53 = MEMORY[0x277D84F90];
      if (v52)
      {
        *&v311[0] = MEMORY[0x277D84F90];
        sub_2140A0270(0, v52, 0);
        v53 = *&v311[0];
        v54 = (v51 + 32);
        do
        {
          v55 = memcpy(v325, v54, 0x16AuLL);
          MEMORY[0x28223BE20](v55);
          v270 = v325;
          sub_2142E6788(v325, v323);
          sub_214534FA4(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto, byte_2146E8B00);
          sub_2146D9018();
          sub_2142E6530(v325);
          *&v311[0] = v53;
          v57 = *(v53 + 16);
          v56 = *(v53 + 24);
          if (v57 >= v56 >> 1)
          {
            sub_2140A0270((v56 > 1), v57 + 1, 1);
            v53 = *&v311[0];
          }

          *(v53 + 16) = v57 + 1;
          sub_214534FEC(v32, v53 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v57, type metadata accessor for CSDMConversationParticipantProto);
          v54 += 368;
          --v52;
        }

        while (v52);
      }

      v58 = *(type metadata accessor for CSDMConversationMessageProto(0) + 20);
      v59 = v293;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v61 = *(v59 + v58);
      if (v60)
      {
        v62 = v59;
      }

      else
      {
        type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        swift_allocObject();
        v63 = sub_21402CD8C(v61);

        v62 = v59;
        *(v59 + v58) = v63;
        v61 = v63;
      }

      swift_beginAccess();
      *(v61 + 24) = v53;

      v64 = v292[5];
      v294 = v58;
      if (!v64)
      {
        goto LABEL_60;
      }

      if (v64 == 1)
      {
        goto LABEL_229;
      }

      v65 = v292[4];

      v66 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v58;
      v68 = *(v62 + v58);
      if ((v66 & 1) == 0)
      {
        type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        swift_allocObject();
        v69 = sub_21402CD8C(v68);

        *(v62 + v67) = v69;
        v68 = v69;
      }

      swift_beginAccess();
      *(v68 + 32) = v65;
      *(v68 + 40) = v64;

      v58 = v294;
LABEL_60:
      v70 = v292[7];
      v71 = *(v70 + 16);
      v72 = MEMORY[0x277D84F90];
      if (v71)
      {
        *&v311[0] = MEMORY[0x277D84F90];
        sub_2140A022C(0, v71, 0);
        v72 = *&v311[0];
        v73 = (v70 + 32);
        v74 = v282;
        do
        {
          v75 = memcpy(v324, v73, sizeof(v324));
          MEMORY[0x28223BE20](v75);
          v270 = v324;
          sub_2142E627C(v324, v323);
          sub_214534FA4(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);
          sub_2146D9018();
          sub_2142E6080(v324);
          *&v311[0] = v72;
          v77 = *(v72 + 16);
          v76 = *(v72 + 24);
          if (v77 >= v76 >> 1)
          {
            sub_2140A022C((v76 > 1), v77 + 1, 1);
            v72 = *&v311[0];
          }

          *(v72 + 16) = v77 + 1;
          sub_214534FEC(v74, v72 + ((*(v302 + 80) + 32) & ~*(v302 + 80)) + *(v302 + 72) * v77, type metadata accessor for CSDMConversationMemberProto);
          v73 += 496;
          --v71;
        }

        while (v71);
        v79 = v292;
        v78 = v293;
        v58 = v294;
      }

      else
      {
        v78 = v62;
        v79 = v292;
      }

      v80 = swift_isUniquelyReferenced_nonNull_native();
      v81 = *(v78 + v58);
      if ((v80 & 1) == 0)
      {
        type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        swift_allocObject();
        v82 = sub_21402CD8C(v81);

        *(v78 + v58) = v82;
        v81 = v82;
      }

      swift_beginAccess();
      *(v81 + 48) = v72;

      if ((*(v79 + 68) & 1) == 0)
      {
        v83 = *(v79 + 16);
        v84 = v293;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v86 = *(v84 + v58);
        if ((v85 & 1) == 0)
        {
          type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          swift_allocObject();
          v87 = sub_21402CD8C(v86);

          *(v84 + v58) = v87;
          v86 = v87;
        }

        swift_beginAccess();
        *(v86 + 56) = v83;
        *(v86 + 60) = 0;
      }

      v88 = v79[12];
      if (!v88)
      {
        goto LABEL_78;
      }

      if (v88 == 1)
      {
        goto LABEL_229;
      }

      v89 = v79[11];

      v90 = v293;
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v92 = *(v90 + v58);
      if ((v91 & 1) == 0)
      {
        type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        swift_allocObject();
        v93 = sub_21402CD8C(v92);

        *(v90 + v58) = v93;
        v92 = v93;
      }

      swift_beginAccess();
      *(v92 + 64) = v89;
      *(v92 + 72) = v88;

LABEL_78:
      v94 = v79[14];
      v95 = *(v94 + 16);
      v96 = MEMORY[0x277D84F90];
      if (v95)
      {
        v306[0] = MEMORY[0x277D84F90];
        sub_2140A01E8(0, v95, 0);
        v96 = v306[0];
        v97 = (v94 + 32);
        v98 = v283;
        do
        {
          v99 = memcpy(v323, v97, 0x389uLL);
          MEMORY[0x28223BE20](v99);
          v270 = v323;
          sub_2142E7434(v323, v311);
          sub_214534FA4(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);
          sub_2146D9018();
          sub_2142E72B4(v323);
          v306[0] = v96;
          v101 = *(v96 + 16);
          v100 = *(v96 + 24);
          if (v101 >= v100 >> 1)
          {
            sub_2140A01E8((v100 > 1), v101 + 1, 1);
            v96 = v306[0];
          }

          *(v96 + 16) = v101 + 1;
          sub_214534FEC(v98, v96 + ((*(v298 + 80) + 32) & ~*(v298 + 80)) + *(v298 + 72) * v101, type metadata accessor for CSDMConversationActivitySessionProto);
          v97 += 912;
          --v95;
        }

        while (v95);
        v79 = v292;
        v102 = v293;
        v58 = v294;
      }

      else
      {
        v102 = v293;
      }

      v103 = swift_isUniquelyReferenced_nonNull_native();
      v104 = *(v102 + v58);
      if ((v103 & 1) == 0)
      {
        type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        swift_allocObject();
        v105 = sub_21402CD8C(v104);

        *(v102 + v58) = v105;
        v104 = v105;
      }

      swift_beginAccess();
      *(v104 + 80) = v96;

      v106 = v79[18];
      v107 = v1;
      v108 = v293;
      if (!v106)
      {
        goto LABEL_92;
      }

      if (v106 == 1)
      {
        goto LABEL_229;
      }

      v109 = v79[17];

      v110 = swift_isUniquelyReferenced_nonNull_native();
      v111 = *(v108 + v58);
      if ((v110 & 1) == 0)
      {
        type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        swift_allocObject();
        v112 = sub_21402CD8C(v111);

        *(v108 + v58) = v112;
        v111 = v112;
      }

      swift_beginAccess();
      *(v111 + 88) = v109;
      *(v111 + 96) = v106;

LABEL_92:
      memcpy(v309, v79 + 20, 0x1B1uLL);
      memcpy(v310, v79 + 20, 0x1B1uLL);
      enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v310);
      if (enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 != 1)
      {
        v114 = memcpy(v322, v310, 0x1B1uLL);
        MEMORY[0x28223BE20](v114);
        v270 = v322;
        memcpy(v311, v309, 0x1B1uLL);
        sub_2142E7694(v311, v306);
        sub_214534FA4(&qword_27C903AC0, type metadata accessor for CSDMConversationLinkProto, byte_2146E8290);
        sub_2146D9018();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_213FB2DF4(v309, &qword_27C905D58, &qword_2146F4098);
          v115 = *(v108 + v58);
        }

        else
        {
          type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          swift_allocObject();

          v115 = sub_21402CD8C(v116);

          sub_213FB2DF4(v309, &qword_27C905D58, &qword_2146F4098);

          *(v108 + v58) = v115;
        }

        v117 = v275;
        sub_214534FEC(v287, v275, type metadata accessor for CSDMConversationLinkProto);
        (*(v274 + 56))(v117, 0, 1, v288);
        v118 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__link;
        swift_beginAccess();
        sub_21402EDB8(v117, v115 + v118, &qword_27C903CD8, &qword_2146E9808);
        enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = swift_endAccess();
      }

      v119 = *(v79 + 81);
      v307[2] = *(v79 + 79);
      v307[3] = v119;
      v308[0] = *(v79 + 83);
      *(v308 + 9) = *(v79 + 673);
      v120 = *(v79 + 77);
      v307[0] = *(v79 + 75);
      v307[1] = v120;
      if (*&v307[0])
      {
        v315 = *&v307[0];
        v121 = *(v79 + 41);
        v318 = *(v79 + 40);
        v319 = v121;
        v320 = *(v79 + 42);
        v321 = *(v79 + 688);
        v122 = *(v79 + 39);
        v316 = *(v79 + 38);
        v317 = v122;
        MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0);
        v270 = &v315;
        v124 = v123[3];
        v123[68] = v123[2];
        v123[69] = v124;
        v123[70] = v123[4];
        *(&v311[4] + 9) = *(v123 + 73);
        v125 = v123[1];
        v311[0] = *v123;
        v311[1] = v125;
        sub_2142E64D4(v311, v306);
        sub_214534FA4(&qword_27C903A80, type metadata accessor for CSDMConversationReportProto, asc_2146E7F70);
        sub_2146D9018();
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_213FB2DF4(v307, &qword_27C905D70, &qword_2146F40A0);
          v126 = *(v108 + v58);
        }

        else
        {
          type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          swift_allocObject();

          v126 = sub_21402CD8C(v127);

          sub_213FB2DF4(v307, &qword_27C905D70, &qword_2146F40A0);

          *(v108 + v58) = v126;
        }

        v128 = v285;
        sub_214534FEC(v291, v285, type metadata accessor for CSDMConversationReportProto);
        (*(v284 + 56))(v128, 0, 1, v295);
        v129 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__reportData;
        swift_beginAccess();
        sub_21402EDB8(v128, v126 + v129, &qword_27C903CD0, &qword_2146E9800);
        enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = swift_endAccess();
      }

      v130 = *(v79 + 689);
      if (v130 != 2)
      {
        v131 = swift_isUniquelyReferenced_nonNull_native();
        v132 = *(v108 + v58);
        if ((v131 & 1) == 0)
        {
          type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          swift_allocObject();
          v133 = sub_21402CD8C(v132);

          *(v108 + v58) = v133;
          v132 = v133;
        }

        v134 = v130 & 1;
        v135 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLetMeInApproved;
        enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0 = swift_beginAccess();
        *(v132 + v135) = v134;
      }

      v136 = v79[88];
      if (v136 >> 60 != 11)
      {
        v291 = &v272;
        v137 = v79[87];
        v138 = v108;
        v139 = v79[89];
        v140 = v79[90];
        MEMORY[0x28223BE20](enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0);
        *(&v272 - 4) = v137;
        *(&v272 - 3) = v136;
        v270 = v139;
        v271 = v140;
        sub_213FDCA18(v137, v136);
        sub_213FDCA18(v139, v140);
        sub_214534FA4(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto, byte_2146E96B8);
        v58 = v294;
        sub_2146D9018();
        v295 = v1;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2142E8030(v137, v136, v139, v140, sub_213FDC6BC);
          v141 = *(v138 + v58);
        }

        else
        {
          type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
          swift_allocObject();

          v141 = sub_21402CD8C(v142);

          sub_2142E8030(v137, v136, v139, v140, sub_213FDC6BC);
          v58 = v294;

          *(v138 + v58) = v141;
        }

        v108 = v138;
        v143 = v277;
        sub_214534FEC(v289, v277, type metadata accessor for CSDMEncryptedConversationMessageProto);
        (*(v276 + 56))(v143, 0, 1, v290);
        v144 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__encryptedMessage;
        swift_beginAccess();
        sub_21402EDB8(v143, v141 + v144, &qword_27C903CC8, &qword_2146E97F8);
        swift_endAccess();
        v107 = v295;
      }

      v145 = v79[94];
      if (!v145)
      {
        goto LABEL_116;
      }

      if (v145 == 1)
      {
        goto LABEL_229;
      }

      v146 = v79[93];

      v147 = swift_isUniquelyReferenced_nonNull_native();
      v148 = *(v108 + v58);
      if ((v147 & 1) == 0)
      {
        type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
        swift_allocObject();
        v149 = sub_21402CD8C(v148);

        *(v108 + v58) = v149;
        v148 = v149;
      }

      v150 = (v148 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationHandle);
      swift_beginAccess();
      *v150 = v146;
      v150[1] = v145;

LABEL_116:
      v151 = v79[99];
      if (v151)
      {
        if (v151 != 1)
        {
          v152 = v79[98];

          v153 = swift_isUniquelyReferenced_nonNull_native();
          v154 = *(v108 + v58);
          if ((v153 & 1) == 0)
          {
            type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            swift_allocObject();
            v155 = sub_21402CD8C(v154);

            *(v108 + v58) = v155;
            v154 = v155;
          }

          v156 = (v154 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__letMeInDelegationUuid);
          swift_beginAccess();
          *v156 = v152;
          v156[1] = v151;

          goto LABEL_121;
        }

LABEL_229:
        LODWORD(v271) = 0;
        v270 = 51;
        result = sub_2146DA018();
        __break(1u);
        return result;
      }

LABEL_121:
      v157 = *(v79 + 801);
      switch(*(v79 + 801))
      {
        case 1:
          v157 = 1;
          goto LABEL_155;
        case 2:
          v157 = 2;
          goto LABEL_155;
        case 3:
          v157 = 3;
          goto LABEL_155;
        case 4:
          v157 = 4;
          goto LABEL_155;
        case 5:
          v157 = 5;
          goto LABEL_155;
        case 6:
          v157 = 6;
          goto LABEL_155;
        case 7:
          v157 = 8;
          goto LABEL_155;
        case 8:
          v157 = 9;
          goto LABEL_155;
        case 9:
          v157 = 10;
          goto LABEL_155;
        case 0xA:
          v157 = 11;
          goto LABEL_155;
        case 0xB:
          v157 = 12;
          goto LABEL_155;
        case 0xC:
          v157 = 13;
          goto LABEL_155;
        case 0xD:
          v157 = 14;
          goto LABEL_155;
        case 0xE:
          v157 = 15;
          goto LABEL_155;
        case 0xF:
          v157 = 16;
          goto LABEL_155;
        case 0x10:
          v157 = 19;
          goto LABEL_155;
        case 0x11:
          v157 = 21;
          goto LABEL_155;
        case 0x12:
          v157 = 22;
          goto LABEL_155;
        case 0x13:
          v157 = 23;
          goto LABEL_155;
        case 0x14:
          v157 = 24;
          goto LABEL_155;
        case 0x15:
          v157 = 25;
          goto LABEL_155;
        case 0x16:
          v157 = 26;
          goto LABEL_155;
        case 0x17:
          v157 = 27;
          goto LABEL_155;
        case 0x18:
          v157 = 28;
          goto LABEL_155;
        case 0x19:
          v157 = 29;
          goto LABEL_155;
        case 0x1A:
          v157 = 30;
          goto LABEL_155;
        case 0x1B:
          v157 = 31;
          goto LABEL_155;
        case 0x1C:
          v157 = 32;
          goto LABEL_155;
        case 0x1D:
          v157 = 33;
          goto LABEL_155;
        case 0x1E:
          v157 = 34;
          goto LABEL_155;
        case 0x1F:
          v157 = 35;
          goto LABEL_155;
        case 0x20:
          v157 = 36;
          goto LABEL_155;
        case 0x21:
          v157 = 37;
          goto LABEL_155;
        case 0x22:
          goto LABEL_159;
        default:
LABEL_155:
          v158 = sub_214028EFC(v157);
          if (v158 == 34)
          {
            goto LABEL_228;
          }

          v159 = v158;
          v160 = swift_isUniquelyReferenced_nonNull_native();
          v161 = *(v108 + v58);
          if ((v160 & 1) == 0)
          {
            type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            swift_allocObject();
            v162 = sub_21402CD8C(v161);

            *(v108 + v58) = v162;
            v161 = v162;
          }

          v163 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__enclosedEncryptedType;
          swift_beginAccess();
          *(v161 + v163) = v159;
LABEL_159:
          v164 = v79[101];
          v165 = *(v164 + 16);
          v166 = MEMORY[0x277D84F90];
          if (v165)
          {
            *&v311[0] = MEMORY[0x277D84F90];
            sub_2140A01A4(0, v165, 0);
            v166 = *&v311[0];
            v167 = sub_214534FA4(&qword_27C903AA0, type metadata accessor for CSDMConversationInvitationPreferenceProto, byte_2146E8100);
            v295 = v167;
            v168 = (v164 + 56);
            v169 = v278;
            do
            {
              v170 = *v168;
              MEMORY[0x28223BE20](v167);
              *(&v272 - 8) = v171;
              *(&v272 - 28) = v172;
              *(&v272 - 3) = v173;
              LOBYTE(v270) = v174;
              HIDWORD(v270) = v175;
              LOBYTE(v271) = v170;
              v176 = v107;
              sub_2146D9018();
              *&v311[0] = v166;
              v178 = *(v166 + 16);
              v177 = *(v166 + 24);
              if (v178 >= v177 >> 1)
              {
                sub_2140A01A4((v177 > 1), v178 + 1, 1);
                v166 = *&v311[0];
              }

              *(v166 + 16) = v178 + 1;
              v167 = sub_214534FEC(v169, v166 + ((*(v296 + 80) + 32) & ~*(v296 + 80)) + *(v296 + 72) * v178, type metadata accessor for CSDMConversationInvitationPreferenceProto);
              v168 += 32;
              --v165;
              v107 = v176;
            }

            while (v165);
            v79 = v292;
            v58 = v294;
          }

          v179 = v293;
          v180 = swift_isUniquelyReferenced_nonNull_native();
          v181 = *(v179 + v58);
          v182 = v107;
          if ((v180 & 1) == 0)
          {
            type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            swift_allocObject();
            v183 = sub_21402CD8C(v181);

            *(v179 + v58) = v183;
            v181 = v183;
          }

          v184 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__invitationPreferences;
          swift_beginAccess();
          *(v181 + v184) = v166;

          v185 = v79[102];
          v186 = *(v185 + 16);
          v187 = MEMORY[0x277D84F90];
          if (v186)
          {
            v306[0] = MEMORY[0x277D84F90];
            sub_2140A022C(0, v186, 0);
            v187 = v306[0];
            v188 = (v185 + 32);
            v189 = v279;
            do
            {
              v190 = memcpy(v314, v188, sizeof(v314));
              MEMORY[0x28223BE20](v190);
              v270 = v314;
              sub_2142E627C(v314, v311);
              sub_214534FA4(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);
              sub_2146D9018();
              sub_2142E6080(v314);
              v306[0] = v187;
              v192 = *(v187 + 16);
              v191 = *(v187 + 24);
              if (v192 >= v191 >> 1)
              {
                sub_2140A022C((v191 > 1), v192 + 1, 1);
                v187 = v306[0];
              }

              *(v187 + 16) = v192 + 1;
              sub_214534FEC(v189, v187 + ((*(v302 + 80) + 32) & ~*(v302 + 80)) + *(v302 + 72) * v192, type metadata accessor for CSDMConversationMemberProto);
              v188 += 496;
              --v186;
            }

            while (v186);
            v79 = v292;
            v193 = v293;
          }

          else
          {
            v193 = v293;
          }

          v194 = v294;
          v195 = swift_isUniquelyReferenced_nonNull_native();
          v196 = *(v193 + v194);
          if ((v195 & 1) == 0)
          {
            type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            swift_allocObject();
            v197 = sub_21402CD8C(v196);

            *(v193 + v194) = v197;
            v196 = v197;
          }

          v198 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__removedMembers;
          swift_beginAccess();
          *(v196 + v198) = v187;

          v199 = v79[103];
          v200 = *(v199 + 16);
          v201 = MEMORY[0x277D84F90];
          if (v200)
          {
            v306[0] = MEMORY[0x277D84F90];
            sub_2140A022C(0, v200, 0);
            v201 = v306[0];
            v202 = (v199 + 32);
            v203 = v280;
            do
            {
              v204 = memcpy(v313, v202, sizeof(v313));
              MEMORY[0x28223BE20](v204);
              v270 = v313;
              sub_2142E627C(v313, v311);
              sub_214534FA4(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);
              sub_2146D9018();
              sub_2142E6080(v313);
              v306[0] = v201;
              v206 = *(v201 + 16);
              v205 = *(v201 + 24);
              if (v206 >= v205 >> 1)
              {
                sub_2140A022C((v205 > 1), v206 + 1, 1);
                v201 = v306[0];
              }

              *(v201 + 16) = v206 + 1;
              sub_214534FEC(v203, v201 + ((*(v302 + 80) + 32) & ~*(v302 + 80)) + *(v302 + 72) * v206, type metadata accessor for CSDMConversationMemberProto);
              v202 += 496;
              --v200;
            }

            while (v200);
            v79 = v292;
            v193 = v293;
          }

          v207 = v294;
          v208 = swift_isUniquelyReferenced_nonNull_native();
          v209 = *(v193 + v207);
          if ((v208 & 1) == 0)
          {
            type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            swift_allocObject();
            v210 = sub_21402CD8C(v209);

            *(v193 + v207) = v210;
            v209 = v210;
          }

          v211 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
          swift_beginAccess();
          *(v209 + v211) = v201;

          v212 = v79[104];
          v213 = *(v212 + 16);
          v214 = MEMORY[0x277D84F90];
          if (v213)
          {
            v306[0] = MEMORY[0x277D84F90];
            sub_2140A0270(0, v213, 0);
            v214 = v306[0];
            v215 = (v212 + 32);
            v216 = v281;
            do
            {
              v217 = memcpy(v312, v215, 0x16AuLL);
              MEMORY[0x28223BE20](v217);
              v270 = v312;
              sub_2142E6788(v312, v311);
              sub_214534FA4(&qword_27C903B80, type metadata accessor for CSDMConversationParticipantProto, byte_2146E8B00);
              sub_2146D9018();
              sub_2142E6530(v312);
              v306[0] = v214;
              v219 = *(v214 + 16);
              v218 = *(v214 + 24);
              if (v219 >= v218 >> 1)
              {
                sub_2140A0270((v218 > 1), v219 + 1, 1);
                v214 = v306[0];
              }

              *(v214 + 16) = v219 + 1;
              sub_214534FEC(v216, v214 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v219, type metadata accessor for CSDMConversationParticipantProto);
              v215 += 368;
              --v213;
            }

            while (v213);
            v79 = v292;
            v193 = v293;
          }

          v220 = v294;
          v221 = swift_isUniquelyReferenced_nonNull_native();
          v222 = *(v193 + v220);
          if ((v221 & 1) == 0)
          {
            type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
            swift_allocObject();
            v223 = sub_21402CD8C(v222);

            *(v193 + v220) = v223;
            v222 = v223;
          }

          v224 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activeLightweightParticipants;
          swift_beginAccess();
          *(v222 + v224) = v214;

          v225 = *(v79 + 840);
          v226 = v182;
          if (v225 != 2)
          {
            v227 = v294;
            v228 = swift_isUniquelyReferenced_nonNull_native();
            v229 = *(v193 + v227);
            if ((v228 & 1) == 0)
            {
              type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              swift_allocObject();
              v230 = sub_21402CD8C(v229);

              *(v193 + v227) = v230;
              v229 = v230;
            }

            v231 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__guestModeEnabled;
            swift_beginAccess();
            *(v229 + v231) = v225 & 1;
          }

          v232 = v193;
          v233 = v79[107];
          if (v233)
          {
            v295 = v226;
            v234 = v79[106];

            v235 = v294;
            v236 = swift_isUniquelyReferenced_nonNull_native();
            v237 = *(v232 + v235);
            if ((v236 & 1) == 0)
            {
              type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              swift_allocObject();
              v238 = sub_21402CD8C(v237);

              *(v232 + v235) = v238;
              v237 = v238;
            }

            v239 = (v237 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__highlightIdentifier);
            swift_beginAccess();
            *v239 = v234;
            v239[1] = v233;
          }

          memcpy(v305, v79 + 108, 0x389uLL);
          memcpy(v306, v79 + 108, 0x389uLL);
          result = get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v306);
          v241 = v294;
          if (result == 1)
          {
            v242 = v232;
          }

          else
          {
            v243 = memcpy(v311, v306, 0x389uLL);
            MEMORY[0x28223BE20](v243);
            v270 = v311;
            memcpy(v304, v305, 0x389uLL);
            sub_2142E7434(v304, &v303);
            sub_214534FA4(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);
            v244 = v286;
            sub_2146D9018();
            v242 = v232;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              sub_213FB2DF4(v305, &qword_27C905DB8, &unk_2147598E0);
              v245 = *(v232 + v241);
            }

            else
            {
              type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              swift_allocObject();

              v245 = sub_21402CD8C(v246);

              sub_213FB2DF4(v305, &qword_27C905DB8, &unk_2147598E0);
              v244 = v286;

              *(v232 + v241) = v245;
            }

            v247 = v273;
            sub_214534FEC(v244, v273, type metadata accessor for CSDMConversationActivitySessionProto);
            (*(v298 + 56))(v247, 0, 1, v299);
            v248 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stagedActivitySession;
            swift_beginAccess();
            sub_21402EDB8(v247, v245 + v248, &qword_27C903CB8, &qword_2146E97F0);
            result = swift_endAccess();
          }

          v249 = *(v79 + 1769);
          if (v249 >= 3)
          {
            if (v249 != 3)
            {
              __break(1u);
              goto LABEL_226;
            }
          }

          else
          {
            v250 = swift_isUniquelyReferenced_nonNull_native();
            v251 = *(v242 + v241);
            if ((v250 & 1) == 0)
            {
              type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              swift_allocObject();
              v252 = sub_21402CD8C(v251);

              *(v242 + v241) = v252;
              v251 = v252;
            }

            v253 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__avMode;
            result = swift_beginAccess();
            *(v251 + v253) = v249;
          }

          if ((v79[222] & 1) == 0)
          {
            v254 = *(v79 + 443);
            v255 = swift_isUniquelyReferenced_nonNull_native();
            v256 = *(v242 + v241);
            if ((v255 & 1) == 0)
            {
              type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              swift_allocObject();
              v257 = sub_21402CD8C(v256);

              *(v242 + v241) = v257;
              v256 = v257;
            }

            v258 = v256 + OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__requestBlobRecoveryOptions;
            result = swift_beginAccess();
            *v258 = v254;
            *(v258 + 4) = 0;
          }

          v259 = *(v79 + 1777);
          if (v259 < 3)
          {
            v260 = swift_isUniquelyReferenced_nonNull_native();
            v261 = *(v242 + v241);
            if ((v260 & 1) == 0)
            {
              type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              swift_allocObject();
              v262 = sub_21402CD8C(v261);

              *(v242 + v241) = v262;
              v261 = v262;
            }

            v263 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__presentationMode;
            result = swift_beginAccess();
            *(v261 + v263) = v259;
            goto LABEL_221;
          }

          if (v259 != 3)
          {
LABEL_226:
            __break(1u);
            goto LABEL_227;
          }

LABEL_221:
          v264 = *(v79 + 1778);
          if (v264 != 2)
          {
            v265 = swift_isUniquelyReferenced_nonNull_native();
            v266 = *(v242 + v241);
            if ((v265 & 1) == 0)
            {
              type metadata accessor for CSDMConversationMessageProto._StorageClass(0);
              swift_allocObject();
              v267 = sub_21402CD8C(v266);

              *(v242 + v241) = v267;
              v266 = v267;
            }

            v268 = v264 & 1;
            v269 = OBJC_IVAR____TtCV9BlastDoor28CSDMConversationMessageProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySession;
            result = swift_beginAccess();
            *(v266 + v269) = v268;
          }

          return result;
      }
  }
}

uint64_t sub_21452F860@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_2146D8E18();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for CSDMEncryptedConversationMessageProto(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v27 = a1;
  v28 = a2;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903BC0, type metadata accessor for CSDMEncryptedConversationMessageProto, byte_2146E96B8);
  sub_2146D8FD8();
  if (v3)
  {
    return sub_213FB54FC(a1, a2);
  }

  sub_21453517C(v13, v11, type metadata accessor for CSDMEncryptedConversationMessageProto);
  v15 = &v11[*(v8 + 20)];
  v17 = *v15;
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_213FDCA18(v17, v16);
  }

  v23 = v17;
  v29 = a3;
  v18 = &v11[*(v8 + 24)];
  v20 = *v18;
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_213FDCA18(v20, v19);
  }

  sub_2145351E4(v11, type metadata accessor for CSDMEncryptedConversationMessageProto);
  sub_2145351E4(v13, type metadata accessor for CSDMEncryptedConversationMessageProto);
  result = sub_213FB54FC(a1, a2);
  v21 = v29;
  *v29 = v23;
  v21[1] = v16;
  v21[2] = v20;
  v21[3] = v19;
  return result;
}

uint64_t sub_21452FAC4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = result;
  if (a3 >> 60 != 15)
  {
    v10 = (result + *(type metadata accessor for CSDMEncryptedConversationMessageProto(0) + 20));
    v11 = *v10;
    v12 = v10[1];
    sub_21402D9F8(a2, a3);
    result = sub_213FDC6BC(v11, v12);
    *v10 = a2;
    v10[1] = a3;
  }

  if (a5 >> 60 != 15)
  {
    v13 = (v7 + *(type metadata accessor for CSDMEncryptedConversationMessageProto(0) + 24));
    v14 = *v13;
    v15 = v13[1];
    sub_21402D9F8(a4, a5);
    result = sub_213FDC6BC(v14, v15);
    *v13 = a4;
    v13[1] = a5;
  }

  return result;
}

void *sub_21452FB94(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v326 = v1;
  v4 = v3;
  v5 = v2;
  v216 = v6;
  v7 = type metadata accessor for CSDMHandleProto(0);
  v219 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v231 = &v169 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v232 = &v169 - v10;
  v11 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v222 = *(v11 - 8);
  v223 = v11;
  MEMORY[0x28223BE20](v11);
  v218 = &v169 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v217 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v221 = &v169 - v16;
  v17 = type metadata accessor for CSDMConversationMessageProto(0);
  v226 = *(v17 - 8);
  v227 = v17;
  MEMORY[0x28223BE20](v17);
  v220 = &v169 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CSDMConversationMemberProto(0);
  v228 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v229 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v230 = &v169 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v169 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v169 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CF0, &unk_2146E9810);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v224 = &v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v225 = &v169 - v32;
  v33 = sub_2146D8E18();
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v169 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0);
  MEMORY[0x28223BE20](v36);
  v38 = &v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325[0] = v5;
  v39 = v4;
  v325[1] = v4;
  memset(v237, 0, 40);
  v40 = v5;
  v41 = v39;
  sub_21402D9F8(v5, v39);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto, aQd_0);
  v42 = v326;
  sub_2146D8FD8();
  v43 = v42;
  if (v42)
  {
    v44 = v40;
    v45 = v41;
    return sub_213FB54FC(v44, v45);
  }

  v212 = v40;
  v214 = v41;
  v47 = *&v38[*(v36 + 20)];
  swift_beginAccess();
  v48 = *(v47 + 16);
  v210 = *(v47 + 20);
  swift_beginAccess();
  v213 = v47;
  v49 = *(v47 + 24);
  v50 = *(v49 + 16);
  v215 = v38;
  v211 = v48;
  if (v50)
  {
    v235[0] = MEMORY[0x277D84F90];

    sub_2140A0164(0, v50, 0);
    v326 = v49;
    if (!*(v49 + 16))
    {
LABEL_58:
      __break(1u);
LABEL_59:

      v213 = *v237;
      v169 = *&v237[8];
      v174 = *&v237[16];
      v175 = *&v237[24];
      v209 = v237[32];

      sub_213FDC6D0(v35, v38);
      *v237 = v202;
      *&v237[8] = v203;
      v89 = v180;
      *&v237[16] = v180;
      v88 = v204;
      *&v237[24] = v204;
      v237[32] = v201;

      sub_213FDC9D0(v89, v88);
      sub_214031B48(v173, v178, 2, 0xD000000000000040, 0x800000021478D600, 0xD00000000000001CLL, v43 | 0x8000000000000000);
      v326 = 0;
LABEL_63:
      sub_213FB54FC(v212, v214);
      sub_213FB2DF4(v325, &qword_27C905E98, &qword_2147738D0);
      sub_213FB2DF4(v235, &qword_27C905DB8, &unk_2147598E0);

      v163 = *&v237[16];
      v164 = *&v237[24];
      v165 = v237[32];

      sub_213FDC6D0(v89, v88);
      sub_2145351E4(v215, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
      v166 = v216;
      *v216 = v211;
      *(v166 + 4) = v179;
      *(v166 + 5) = v323;
      *(v166 + 7) = v324;
      *(v166 + 1) = v225;
      memcpy(v166 + 4, v322, 0x6F3uLL);
      *(v166 + 1795) = v320;
      *(v166 + 1799) = v321;
      *(v166 + 225) = v234;
      v167 = v176;
      *(v166 + 226) = v177;
      *(v166 + 227) = v167;
      *(v166 + 228) = v172;
      *(v166 + 1832) = v171;
      *(v166 + 1833) = *v319;
      v166[459] = *&v319[3];
      *(v166 + 230) = v224;
      *(v166 + 231) = v170;
      *(v166 + 232) = v221;
      *(v166 + 233) = v233;
      *(v166 + 1872) = v208;
      *(v166 + 1873) = v226;
      result = memcpy(v166 + 1874, v308, 0x38FuLL);
      *(v166 + 2785) = v223;
      *(v166 + 2786) = v222;
      *(v166 + 349) = v220;
      *(v166 + 350) = v227;
      *(v166 + 351) = v219;
      *(v166 + 2816) = v217;
      *(v166 + 353) = v200;
      *(v166 + 2832) = v198;
      *(v166 + 2833) = v195;
      *(v166 + 2834) = v192;
      *(v166 + 2787) = v317;
      *(v166 + 2817) = v316[0];
      *(v166 + 2791) = v318;
      v166[705] = *(v316 + 3);
      v166[709] = v194;
      *(v166 + 2840) = v232;
      *(v166 + 2841) = v199;
      *(v166 + 2842) = v197;
      *(v166 + 2843) = v314;
      *(v166 + 2847) = v315;
      *(v166 + 356) = v213;
      *(v166 + 357) = v169;
      v168 = v175;
      *(v166 + 358) = v174;
      *(v166 + 359) = v168;
      *(v166 + 2880) = v209;
      *(v166 + 2881) = v196;
      *(v166 + 2882) = v193;
      LOBYTE(v168) = v190;
      *(v166 + 2883) = v191;
      *(v166 + 2884) = v168;
      *(v166 + 2885) = v312;
      *(v166 + 2887) = v313;
      v166[722] = v189;
      *(v166 + 2892) = v231;
      *(v166 + 2895) = v311;
      *(v166 + 2893) = v310;
      v166[724] = v188;
      *(v166 + 2900) = v230;
      LOBYTE(v168) = v186;
      *(v166 + 2901) = v187;
      *(v166 + 2902) = v168;
      *(v166 + 2903) = v185;
      *(v166 + 726) = *v237;
      *(v166 + 365) = v163;
      *(v166 + 366) = v164;
      *(v166 + 2936) = v165;
      LOBYTE(v168) = v183;
      *(v166 + 2937) = v184;
      *(v166 + 2938) = v168;
      LODWORD(v168) = v181;
      *(v166 + 2939) = v182;
      v166[735] = v168;
      *(v166 + 2944) = v210;
      return result;
    }

    v51 = 0;
    v38 = (v326 + ((*(v228 + 80) + 32) & ~*(v228 + 80)));
    v233 = *(v228 + 72);
    v234 = v50 - 1;
    v52 = v235[0];
    while (1)
    {
      sub_21453517C(v38, v28, type metadata accessor for CSDMConversationMemberProto);
      sub_21453517C(v28, v26, type metadata accessor for CSDMConversationMemberProto);
      sub_21451FEE0(v26, v237);
      v35 = 0;
      sub_2145351E4(v28, type metadata accessor for CSDMConversationMemberProto);
      memcpy(v325, v237, 0x1F0uLL);
      v235[0] = v52;
      v54 = *(v52 + 16);
      v53 = *(v52 + 24);
      v55 = v52;
      if (v54 >= v53 >> 1)
      {
        sub_2140A0164((v53 > 1), v54 + 1, 1);
        v55 = v235[0];
      }

      *(v55 + 16) = v54 + 1;
      memcpy((v55 + 496 * v54 + 32), v325, 0x1F0uLL);
      v52 = v55;
      if (v234 == v51)
      {
        break;
      }

      v38 += v233;
      ++v51;
      v43 = 0;
      if (v51 >= *(v326 + 16))
      {
        goto LABEL_58;
      }
    }

    v43 = 0;
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  v56 = v225;
  v57 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
  v58 = v213;
  swift_beginAccess();
  sub_213FB2E54(v58 + v57, v56, &qword_27C903CF0, &unk_2146E9810);
  v59 = v227;
  v326 = *(v226 + 48);
  v60 = (v326)(v56, 1, v227);
  sub_213FB2DF4(v56, &qword_27C903CF0, &unk_2146E9810);
  if (v60 != 1)
  {
    v61 = v224;
    sub_213FB2E54(v58 + v57, v224, &qword_27C903CF0, &unk_2146E9810);
    if ((v326)(v61, 1, v59) == 1)
    {
      v62 = v220;
      sub_2146D8DE8();
      v63 = *(v59 + 20);
      v64 = v215;
      if (qword_27C902D68 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_65;
    }

    v62 = v220;
    sub_214534FEC(v61, v220, type metadata accessor for CSDMConversationMessageProto);
    v67 = v214;
    v64 = v215;
    v58 = v213;
    goto LABEL_21;
  }

  sub_214534D08(v325);
  while (1)
  {
    v68 = v221;
    v69 = (v58 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
    swift_beginAccess();
    v70 = v69[1];
    v224 = *v69;
    v234 = v70;
    v71 = (v58 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
    swift_beginAccess();
    v72 = v71[1];
    v221 = *v71;
    v73 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
    swift_beginAccess();
    LODWORD(v226) = *(v58 + v73);
    v74 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
    swift_beginAccess();
    sub_213FB2E54(v58 + v74, v68, &qword_27C903CB8, &qword_2146E97F0);
    v75 = v223;
    v326 = *(v222 + 48);
    v76 = v68;
    LODWORD(v68) = (v326)(v68, 1, v223);
    v233 = v72;

    sub_213FB2DF4(v76, &qword_27C903CB8, &qword_2146E97F0);
    if (v68 == 1)
    {
      sub_214534D10(v235);
    }

    else
    {
      v77 = v217;
      sub_213FB2E54(v58 + v74, v217, &qword_27C903CB8, &qword_2146E97F0);
      if ((v326)(v77, 1, v75) == 1)
      {
        v78 = v218;
        sub_2146D8DE8();
        v79 = (v78 + v75[5]);
        *v79 = 0;
        v79[1] = 0;
        v80 = v75[6];
        v81 = type metadata accessor for CSDMConversationActivityProto(0);
        (*(*(v81 - 8) + 56))(v78 + v80, 1, 1, v81);
        v82 = v78 + v75[7];
        *v82 = 0;
        *(v82 + 8) = 1;
        if ((v326)(v77, 1, v75) != 1)
        {
          sub_213FB2DF4(v77, &qword_27C903CB8, &qword_2146E97F0);
        }
      }

      else
      {
        v78 = v218;
        sub_214534FEC(v77, v218, type metadata accessor for CSDMConversationActivitySessionProto);
      }

      sub_214527708(v78, v237);
      memcpy(v236, v237, 0x389uLL);
      nullsub_1();
      memcpy(v235, v236, 0x389uLL);
    }

    v83 = v219;
    v84 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
    swift_beginAccess();
    LODWORD(v223) = *(v58 + v84);
    v85 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
    swift_beginAccess();
    LODWORD(v222) = *(v58 + v85);
    v86 = (v58 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
    swift_beginAccess();
    v63 = v86[1];
    v220 = *v86;
    v87 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
    swift_beginAccess();
    v88 = *(v58 + v87);
    v89 = *(v88 + 16);
    v225 = v52;
    v227 = v63;
    if (v89)
    {
      v302[0] = MEMORY[0x277D84F90];

      sub_2140A00C0(0, v89, 0);
      if (!*(v88 + 16))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v90 = 0;
      v91 = v302[0];
      v92 = v83;
      v93 = v88 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v326 = *(v92 + 72);
      v94 = v89 - 1;
      while (1)
      {
        v95 = v91;
        v96 = v232;
        sub_21453517C(v93, v232, type metadata accessor for CSDMHandleProto);
        v97 = v231;
        sub_21453517C(v96, v231, type metadata accessor for CSDMHandleProto);
        sub_21451F0C0(v97, v237);
        sub_2145351E4(v96, type metadata accessor for CSDMHandleProto);
        v236[2] = *&v237[32];
        v236[3] = *&v237[48];
        v236[1] = *&v237[16];
        v236[6] = *&v237[96];
        v236[7] = *&v237[112];
        v236[4] = *&v237[64];
        v236[5] = *&v237[80];
        *(&v236[11] + 9) = *&v237[185];
        v236[10] = *&v237[160];
        v236[11] = *&v237[176];
        v236[8] = *&v237[128];
        v236[9] = *&v237[144];
        v91 = v95;
        v63 = *(v95 + 16);
        v98 = *(v91 + 24);
        v89 = v63 + 1;
        v236[0] = *v237;
        v302[0] = v91;
        if (v63 >= v98 >> 1)
        {
          sub_2140A00C0((v98 > 1), v63 + 1, 1);
          v91 = v302[0];
        }

        *(v91 + 16) = v89;
        v99 = (v91 + 208 * v63);
        v99[2] = v236[0];
        v100 = v236[1];
        v101 = v236[2];
        v102 = v236[4];
        v99[5] = v236[3];
        v99[6] = v102;
        v99[3] = v100;
        v99[4] = v101;
        v103 = v236[5];
        v104 = v236[6];
        v105 = v236[8];
        v99[9] = v236[7];
        v99[10] = v105;
        v99[7] = v103;
        v99[8] = v104;
        v106 = v236[9];
        v107 = v236[10];
        v108 = v236[11];
        *(v99 + 217) = *(&v236[11] + 9);
        v99[12] = v107;
        v99[13] = v108;
        v99[11] = v106;
        if (v94 == v90)
        {
          break;
        }

        v93 += v326;
        if (++v90 >= *(v88 + 16))
        {
          goto LABEL_62;
        }
      }

      v219 = v91;

      v58 = v213;
    }

    else
    {

      v219 = MEMORY[0x277D84F90];
    }

    v326 = 0;
    v109 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
    swift_beginAccess();
    v64 = *(v58 + v109);
    v110 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
    swift_beginAccess();
    v111 = *(v58 + v110);
    v52 = *(v111 + 16);
    v62 = v228;
    LODWORD(v217) = v64;
    if (!v52)
    {
      v200 = MEMORY[0x277D84F90];
      goto LABEL_53;
    }

    v302[0] = MEMORY[0x277D84F90];

    sub_2140A0164(0, v52, 0);
    if (*(v111 + 16))
    {
      break;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
LABEL_18:
    *(v62 + v63) = qword_27C902D70;
    v65 = v224;
    v66 = (v326)(v224, 1);

    v58 = v213;
    v67 = v214;
    if (v66 != 1)
    {
      sub_213FB2DF4(v65, &qword_27C903CF0, &unk_2146E9810);
    }

LABEL_21:
    sub_214529CFC(v62);
    if (v43)
    {
      sub_2145351E4(v64, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);

      v44 = v212;
      v45 = v67;
      return sub_213FB54FC(v44, v45);
    }

    memcpy(v235, v237, 0x6F3uLL);
    nullsub_1();
    memcpy(v325, v235, 0x6F3uLL);
  }

  v63 = 0;
  v112 = v302[0];
  v113 = v62;
  v62 = v111 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v43 = *(v113 + 72);
  v114 = v52 - 1;
  while (1)
  {
    v115 = v112;
    v116 = v230;
    sub_21453517C(v62, v230, type metadata accessor for CSDMConversationMemberProto);
    v117 = v229;
    sub_21453517C(v116, v229, type metadata accessor for CSDMConversationMemberProto);
    v118 = v326;
    sub_21451FEE0(v117, v237);
    v326 = v118;
    if (v118)
    {

      sub_213FB2DF4(v235, &qword_27C905DB8, &unk_2147598E0);
      sub_213FB2DF4(v325, &qword_27C905E98, &qword_2147738D0);
      sub_213FB54FC(v212, v214);
      sub_2145351E4(v116, type metadata accessor for CSDMConversationMemberProto);

      return sub_2145351E4(v215, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
    }

    sub_2145351E4(v116, type metadata accessor for CSDMConversationMemberProto);
    memcpy(v236, v237, 0x1F0uLL);
    v112 = v115;
    v302[0] = v115;
    v64 = *(v115 + 16);
    v119 = *(v112 + 24);
    v52 = v64 + 1;
    if (v64 >= v119 >> 1)
    {
      sub_2140A0164((v119 > 1), v64 + 1, 1);
      v112 = v302[0];
    }

    *(v112 + 16) = v52;
    memcpy((v112 + 496 * v64 + 32), v236, 0x1F0uLL);
    if (v114 == v63)
    {
      break;
    }

    v62 += v43;
    if (++v63 >= *(v111 + 16))
    {
      goto LABEL_64;
    }
  }

  v200 = v112;

  v58 = v213;
LABEL_53:
  v120 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
  swift_beginAccess();
  v198 = *(v58 + v120);
  v121 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
  swift_beginAccess();
  v195 = *(v58 + v121);
  v122 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
  swift_beginAccess();
  v192 = *(v58 + v122);
  v123 = (v58 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion);
  swift_beginAccess();
  v194 = *v123;
  LODWORD(v232) = *(v123 + 4);
  v124 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
  swift_beginAccess();
  v199 = *(v58 + v124);
  v125 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
  swift_beginAccess();
  v197 = *(v58 + v125);
  v126 = (v58 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
  swift_beginAccess();
  v127 = v126[1];
  v174 = *v126;
  v128 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
  swift_beginAccess();
  v196 = *(v58 + v128);
  v129 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
  swift_beginAccess();
  v193 = *(v58 + v129);
  v130 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
  swift_beginAccess();
  v191 = *(v58 + v130);
  v131 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
  swift_beginAccess();
  v190 = *(v58 + v131);
  v132 = (v58 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion);
  swift_beginAccess();
  v189 = *v132;
  LODWORD(v231) = *(v132 + 4);
  v133 = (v58 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion);
  swift_beginAccess();
  v188 = *v133;
  LODWORD(v230) = *(v133 + 4);
  v134 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
  swift_beginAccess();
  v187 = *(v58 + v134);
  v135 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
  swift_beginAccess();
  v186 = *(v58 + v135);
  v136 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
  swift_beginAccess();
  v185 = *(v58 + v136);
  v137 = (v58 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  v138 = v137[1];
  v173 = *v137;
  v139 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
  swift_beginAccess();
  v184 = *(v58 + v139);
  v140 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
  swift_beginAccess();
  v183 = *(v58 + v140);
  v141 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
  swift_beginAccess();
  v182 = *(v58 + v141);
  v142 = (v58 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion);
  swift_beginAccess();
  v181 = *v142;
  v143 = *(v142 + 4);
  v178 = v138;

  v175 = v127;

  sub_213FB2E54(v325, v237, &qword_27C905E98, &qword_2147738D0);
  sub_213FB2E54(v235, v237, &qword_27C905DB8, &unk_2147598E0);
  sub_2146552EC(v237);
  v144 = *v237;
  v145 = *&v237[8];
  v146 = *&v237[16];
  v147 = *&v237[24];
  v148 = v237[32];
  sub_214655320(v236);
  v149 = *&v236[0];
  v228 = *&v236[1];
  v229 = *(&v236[0] + 1);
  v218 = *(&v236[1] + 1);
  v208 = LOBYTE(v236[2]);
  sub_21465546C(v302);
  v213 = v302[0];
  v207 = v302[2];
  v205 = v302[1];
  v206 = v302[3];
  v209 = v303;
  sub_2146554A0(v300);
  v202 = v300[0];
  v203 = v300[1];
  v180 = v300[2];
  v204 = v300[3];
  v201 = v301;
  v309 = v210;
  memcpy(v322, v325, sizeof(v322));
  memcpy(&v308[6], v235, 0x389uLL);
  v307 = v232;
  v306 = v231;
  v305 = v230;
  v210 = v143;
  v304 = v143;
  v179 = v309;
  v43 = "BlastDoor/Untrusted.swift";
  *v237 = v144;
  *&v237[8] = v145;
  *&v237[16] = v146;
  *&v237[24] = v147;
  v237[32] = v148;

  sub_213FDC9D0(v146, v147);
  v150 = v326;
  sub_214031B48(v224, v234, 2, 0xD000000000000041, 0x800000021478D520, 0xD00000000000001CLL, 0x800000021478A360);
  v326 = v150;
  if (v150)
  {
    v224 = v149;
    sub_213FB54FC(v212, v214);
    sub_213FB2DF4(v325, &qword_27C905E98, &qword_2147738D0);
    sub_213FB2DF4(v235, &qword_27C905DB8, &unk_2147598E0);

    v234 = *v237;
    v176 = *&v237[16];
    v177 = *&v237[8];
    v151 = *&v237[24];
    v152 = v237[32];

    sub_213FDC6D0(v146, v147);
    v153 = v180;
    v154 = v208;
    v155 = v217;
  }

  else
  {

    v156 = *v237;
    v176 = *&v237[16];
    v177 = *&v237[8];
    v172 = *&v237[24];
    v171 = v237[32];

    sub_213FDC6D0(v146, v147);
    *v237 = v149;
    v157 = v228;
    *&v237[8] = v229;
    *&v237[16] = v228;
    v158 = v218;
    *&v237[24] = v218;
    v237[32] = v208;

    sub_213FDC9D0(v157, v158);
    v159 = v326;
    sub_214031B48(v221, v233, 2, 0xD00000000000003BLL, 0x800000021478D570, 0xD00000000000001CLL, 0x800000021478A360);
    v234 = v156;
    if (!v159)
    {

      v224 = *v237;
      v170 = *&v237[8];
      v221 = *&v237[16];
      v233 = *&v237[24];
      v208 = v237[32];

      sub_213FDC6D0(v157, v158);
      *v237 = v213;
      v38 = v206;
      *&v237[8] = v205;
      v35 = v207;
      *&v237[16] = v207;
      *&v237[24] = v206;
      v237[32] = v209;

      sub_213FDC9D0(v35, v38);
      sub_214031B48(v174, v175, 2, 0xD000000000000041, 0x800000021478D5B0, 0xD00000000000001CLL, 0x800000021478A360);
      goto LABEL_59;
    }

    v326 = v159;
    sub_213FB54FC(v212, v214);
    sub_213FB2DF4(v325, &qword_27C905E98, &qword_2147738D0);
    sub_213FB2DF4(v235, &qword_27C905DB8, &unk_2147598E0);

    v224 = *v237;
    v160 = *&v237[8];
    v161 = *&v237[16];
    v162 = *&v237[24];
    v154 = v237[32];

    sub_213FDC6D0(v157, v158);
    v228 = v161;
    v229 = v160;
    v218 = v162;
    v155 = v217;
    v153 = v180;
    v151 = v172;
    v152 = v171;
  }

  *v237 = v211;
  v237[4] = v179;
  *&v237[5] = v323;
  v237[7] = v324;
  *&v237[8] = v225;
  memcpy(&v237[16], v322, 0x6F3uLL);
  v238 = v320;
  v239 = v321;
  v240 = v234;
  v241 = v177;
  v242 = v176;
  v243 = v151;
  v244 = v152;
  *v245 = *v319;
  *&v245[3] = *&v319[3];
  v246 = v224;
  v247 = v229;
  v248 = v228;
  v249 = v218;
  v250 = v154;
  v251 = v226;
  memcpy(v252, v308, 0x38FuLL);
  v252[911] = v223;
  v252[912] = v222;
  v255 = v220;
  v256 = v227;
  v257 = v219;
  v258 = v155;
  v260 = v200;
  v261 = v198;
  v262 = v195;
  v263 = v192;
  v264 = v194;
  v265 = v232;
  v253 = v317;
  *v259 = v316[0];
  v254 = v318;
  *&v259[3] = *(v316 + 3);
  v266 = v199;
  v267 = v197;
  v268 = v314;
  v269 = v315;
  v270 = v213;
  v271 = v205;
  v272 = v207;
  v273 = v206;
  v274 = v209;
  v275 = v196;
  v276 = v193;
  v277 = v191;
  v278 = v190;
  v279 = v312;
  v280 = v313;
  v281 = v189;
  v282 = v231;
  v283 = v310;
  v284 = v311;
  v285 = v188;
  v286 = v230;
  v287 = v187;
  v288 = v186;
  v289 = v185;
  v290 = v202;
  v291 = v203;
  v292 = v153;
  v293 = v204;
  v294 = v201;
  v295 = v184;
  v296 = v183;
  v297 = v182;
  v298 = v181;
  v299 = v210;
  sub_2142E890C(v237);
  return sub_2145351E4(v215, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
}

void sub_214531DE0(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v5 = v4;
  v261 = v2;
  v6 = type metadata accessor for CSDMHandleProto(0);
  v263 = *(v6 - 8);
  v264 = v6;
  MEMORY[0x28223BE20](v6);
  v255 = &v250 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CB8, &qword_2146E97F0);
  MEMORY[0x28223BE20](v8 - 8);
  v254 = &v250 - v9;
  v265 = type metadata accessor for CSDMConversationActivitySessionProto(0);
  v253 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v259 = &v250 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903CF0, &unk_2146E9810);
  MEMORY[0x28223BE20](v11 - 8);
  v252 = &v250 - v12;
  v257 = type metadata accessor for CSDMConversationMessageProto(0);
  v251 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v258 = &v250 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = type metadata accessor for CSDMConversationMemberProto(0);
  v266 = *(v279 - 8);
  v14 = MEMORY[0x28223BE20](v279);
  v256 = &v250 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v250 - v16;
  if ((v5[1] & 1) == 0)
  {
    v18 = *v5;
    v19 = *(type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0) + 20);
    v20 = v261;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v20 + v19);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v23 = sub_21402C09C(v22);

      *(v20 + v19) = v23;
      v22 = v23;
    }

    swift_beginAccess();
    *(v22 + 16) = v18;
    *(v22 + 20) = 0;
  }

  v24 = *(v5 + 1);
  v25 = *(v24 + 16);
  v26 = MEMORY[0x277D84F90];
  v260 = v5;
  if (v25)
  {
    v274[0] = MEMORY[0x277D84F90];
    sub_2140A022C(0, v25, 0);
    v26 = v274[0];
    v27 = (v24 + 32);
    do
    {
      v28 = memcpy(v278, v27, 0x1F0uLL);
      MEMORY[0x28223BE20](v28);
      sub_2142E627C(v278, v277);
      sub_214534FA4(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);
      v29 = v3;
      sub_2146D9018();
      sub_2142E6080(v278);
      v274[0] = v26;
      v31 = *(v26 + 16);
      v30 = *(v26 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2140A022C((v30 > 1), v31 + 1, 1);
        v26 = v274[0];
      }

      *(v26 + 16) = v31 + 1;
      sub_214534FEC(v17, v26 + ((*(v266 + 80) + 32) & ~*(v266 + 80)) + *(v266 + 72) * v31, type metadata accessor for CSDMConversationMemberProto);
      v27 += 496;
      --v25;
      v3 = v29;
    }

    while (v25);
    v5 = v260;
  }

  v32 = *(type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0) + 20);
  v33 = v261;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v33 + v32);
  v262 = v32;
  if ((v34 & 1) == 0)
  {
    type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    swift_allocObject();
    v36 = sub_21402C09C(v35);

    *(v33 + v32) = v36;
    v35 = v36;
  }

  swift_beginAccess();
  *(v35 + 24) = v26;

  memcpy(v273, v5 + 4, 0x6F3uLL);
  memcpy(v274, v5 + 4, 0x6F3uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(v274) == 1)
  {
    v37 = v262;
    v38 = *(v5 + 228);
    if (!v38)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = memcpy(v277, v274, 0x6F3uLL);
    MEMORY[0x28223BE20](v40);
    memcpy(v268, v273, 0x6F3uLL);
    sub_2142E809C(v268, v267);
    sub_214534FA4(&qword_27C903BD8, type metadata accessor for CSDMConversationMessageProto, aAc_1);
    v41 = v257;
    sub_2146D9018();
    v37 = v262;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_213FB2DF4(v273, &qword_27C905E98, &qword_2147738D0);
      v42 = *(v33 + v37);
    }

    else
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();

      v42 = sub_21402C09C(v43);

      sub_213FB2DF4(v273, &qword_27C905E98, &qword_2147738D0);
      v41 = v257;

      *(v33 + v37) = v42;
    }

    v44 = v252;
    sub_214534FEC(v258, v252, type metadata accessor for CSDMConversationMessageProto);
    (*(v251 + 56))(v44, 0, 1, v41);
    v45 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__message;
    swift_beginAccess();
    sub_21402EDB8(v44, v42 + v45, &qword_27C903CF0, &unk_2146E9810);
    swift_endAccess();
    v38 = *(v5 + 228);
    if (!v38)
    {
LABEL_15:
      v39 = *(v5 + 233);
      if (!v39)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }
  }

  if (v38 == 1)
  {
    goto LABEL_158;
  }

  v46 = *(v5 + 227);

  v47 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(v33 + v37);
  if ((v47 & 1) == 0)
  {
    type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    swift_allocObject();
    v49 = sub_21402C09C(v48);

    *(v33 + v37) = v49;
    v48 = v49;
  }

  v50 = (v48 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupUuidstring);
  swift_beginAccess();
  *v50 = v46;
  v50[1] = v38;

  v39 = *(v5 + 233);
  if (v39)
  {
LABEL_25:
    if (v39 == 1)
    {
      goto LABEL_158;
    }

    v51 = *(v5 + 232);

    v52 = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(v33 + v37);
    if ((v52 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v54 = sub_21402C09C(v53);

      *(v33 + v37) = v54;
      v53 = v54;
    }

    v55 = (v53 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__messagesGroupName);
    swift_beginAccess();
    *v55 = v51;
    v55[1] = v39;
  }

LABEL_29:
  v56 = *(v5 + 1873);
  if (v56 != 2)
  {
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v33 + v37);
    if ((v57 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v59 = sub_21402C09C(v58);

      *(v33 + v37) = v59;
      v58 = v59;
    }

    v60 = v56 & 1;
    v61 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isMomentsAvailable;
    swift_beginAccess();
    *(v58 + v61) = v60;
  }

  memcpy(v272, v5 + 470, 0x389uLL);
  memcpy(v267, v5 + 470, 0x389uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor12MBDRichCardsVSg_0(v267) != 1)
  {
    v62 = memcpy(v268, v267, 0x389uLL);
    MEMORY[0x28223BE20](v62);
    memcpy(v270, v272, 0x389uLL);
    sub_2142E7434(v270, v269);
    sub_214534FA4(&qword_27C903AE0, type metadata accessor for CSDMConversationActivitySessionProto, byte_2146E83F8);
    sub_2146D9018();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_213FB2DF4(v272, &qword_27C905DB8, &unk_2147598E0);
      v63 = *(v33 + v37);
    }

    else
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();

      v63 = sub_21402C09C(v64);

      sub_213FB2DF4(v272, &qword_27C905DB8, &unk_2147598E0);

      *(v33 + v37) = v63;
    }

    v65 = v254;
    sub_214534FEC(v259, v254, type metadata accessor for CSDMConversationActivitySessionProto);
    (*(v253 + 56))(v65, 0, 1, v265);
    v66 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__activitySession;
    swift_beginAccess();
    sub_21402EDB8(v65, v63 + v66, &qword_27C903CB8, &qword_2146E97F0);
    swift_endAccess();
  }

  v67 = *(v5 + 2785);
  if (v67 != 2)
  {
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v33 + v37);
    if ((v68 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v70 = sub_21402C09C(v69);

      *(v33 + v37) = v70;
      v69 = v70;
    }

    v71 = v67 & 1;
    v72 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__video;
    swift_beginAccess();
    *(v69 + v72) = v71;
  }

  v73 = *(v5 + 2786);
  if (v73 != 2)
  {
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v75 = *(v33 + v37);
    if ((v74 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v76 = sub_21402C09C(v75);

      *(v33 + v37) = v76;
      v75 = v76;
    }

    v77 = v73 & 1;
    v78 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isScreenSharingAvailable;
    swift_beginAccess();
    *(v75 + v78) = v77;
  }

  v79 = *(v5 + 350);
  if (v79)
  {
    v80 = *(v5 + 349);

    v81 = swift_isUniquelyReferenced_nonNull_native();
    v82 = *(v33 + v37);
    if ((v81 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v83 = sub_21402C09C(v82);

      *(v33 + v37) = v83;
      v82 = v83;
    }

    v84 = (v82 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__providerIdentifier);
    swift_beginAccess();
    *v84 = v80;
    v84[1] = v79;
  }

  v85 = *(v5 + 351);
  v86 = *(v85 + 16);
  v87 = MEMORY[0x277D84F90];
  if (v86)
  {
    v269[0] = MEMORY[0x277D84F90];
    v88 = sub_2140A00E0(0, v86, 0);
    v87 = v269[0];
    v89 = (v85 + 32);
    v90 = v255;
    do
    {
      v275[0] = *v89;
      v91 = v89[1];
      v92 = v89[2];
      v93 = v89[4];
      v275[3] = v89[3];
      v275[4] = v93;
      v275[1] = v91;
      v275[2] = v92;
      v94 = v89[5];
      v95 = v89[6];
      v96 = v89[8];
      v275[7] = v89[7];
      v275[8] = v96;
      v275[5] = v94;
      v275[6] = v95;
      v97 = v89[9];
      v98 = v89[10];
      v99 = v89[11];
      *(v276 + 9) = *(v89 + 185);
      v275[10] = v98;
      v276[0] = v99;
      v275[9] = v97;
      MEMORY[0x28223BE20](v88);
      sub_2142E5FD0(v275, v270);
      sub_214534FA4(&qword_27C903C20, type metadata accessor for CSDMHandleProto, byte_2146E9208);
      sub_2146D9018();
      v265 = v3;
      sub_2142E5ED4(v275);
      v269[0] = v87;
      v101 = *(v87 + 16);
      v100 = *(v87 + 24);
      if (v101 >= v100 >> 1)
      {
        sub_2140A00E0((v100 > 1), v101 + 1, 1);
        v87 = v269[0];
      }

      *(v87 + 16) = v101 + 1;
      v88 = sub_214534FEC(v90, v87 + ((*(v263 + 80) + 32) & ~*(v263 + 80)) + *(v263 + 72) * v101, type metadata accessor for CSDMHandleProto);
      v89 += 13;
      --v86;
      v3 = v265;
    }

    while (v86);
    v37 = v262;
  }

  v102 = v261;
  v103 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *(v102 + v37);
  if ((v103 & 1) == 0)
  {
    type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    swift_allocObject();
    v105 = sub_21402C09C(v104);

    *(v102 + v37) = v105;
    v104 = v105;
  }

  v106 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__otherInvitedHandles;
  swift_beginAccess();
  *(v104 + v106) = v87;

  v107 = v260;
  v108 = *(v260 + 2816);
  if (v108 != 2)
  {
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v110 = *(v102 + v37);
    if ((v109 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v111 = sub_21402C09C(v110);

      *(v102 + v37) = v111;
      v110 = v111;
    }

    v112 = v108 & 1;
    v113 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPersonaAvailable;
    swift_beginAccess();
    *(v110 + v113) = v112;
  }

  v114 = *(v107 + 353);
  v115 = *(v114 + 16);
  v116 = MEMORY[0x277D84F90];
  if (v115)
  {
    v271[0] = MEMORY[0x277D84F90];
    sub_2140A022C(0, v115, 0);
    v116 = v271[0];
    v117 = (v114 + 32);
    v118 = v256;
    do
    {
      v119 = memcpy(v270, v117, 0x1F0uLL);
      MEMORY[0x28223BE20](v119);
      sub_2142E627C(v270, v269);
      sub_214534FA4(&qword_27C903BA0, type metadata accessor for CSDMConversationMemberProto, aN_9);
      sub_2146D9018();
      sub_2142E6080(v270);
      v271[0] = v116;
      v121 = *(v116 + 16);
      v120 = *(v116 + 24);
      if (v121 >= v120 >> 1)
      {
        sub_2140A022C((v120 > 1), v121 + 1, 1);
        v116 = v271[0];
      }

      *(v116 + 16) = v121 + 1;
      sub_214534FEC(v118, v116 + ((*(v266 + 80) + 32) & ~*(v266 + 80)) + *(v266 + 72) * v121, type metadata accessor for CSDMConversationMemberProto);
      v117 += 496;
      --v115;
    }

    while (v115);
    v107 = v260;
    v102 = v261;
  }

  v122 = v262;
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *(v102 + v122);
  if ((v123 & 1) == 0)
  {
    type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    swift_allocObject();
    v125 = sub_21402C09C(v124);

    *(v102 + v122) = v125;
    v124 = v125;
  }

  v126 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__lightweightMembers;
  swift_beginAccess();
  *(v124 + v126) = v116;

  v127 = *(v107 + 2832);
  v128 = v262;
  if (v127 != 2)
  {
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v130 = *(v102 + v128);
    if ((v129 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v131 = sub_21402C09C(v130);

      *(v102 + v128) = v131;
      v130 = v131;
    }

    v132 = v127 & 1;
    v133 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isLightweight;
    swift_beginAccess();
    *(v130 + v133) = v132;
  }

  v134 = *(v107 + 2833);
  if (v134 != 2)
  {
    v135 = swift_isUniquelyReferenced_nonNull_native();
    v136 = *(v102 + v128);
    if ((v135 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v137 = sub_21402C09C(v136);

      *(v102 + v128) = v137;
      v136 = v137;
    }

    v138 = v134 & 1;
    v139 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGondolaCallingAvailable;
    swift_beginAccess();
    *(v136 + v139) = v138;
  }

  v140 = *(v107 + 2834);
  if (v140 != 2)
  {
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v142 = *(v102 + v128);
    if ((v141 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v143 = sub_21402C09C(v142);

      *(v102 + v128) = v143;
      v142 = v143;
    }

    v144 = v140 & 1;
    v145 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__videoEnabled;
    swift_beginAccess();
    *(v142 + v145) = v144;
  }

  if ((v107[710] & 1) == 0)
  {
    v146 = v107[709];
    v147 = swift_isUniquelyReferenced_nonNull_native();
    v148 = *(v102 + v128);
    if ((v147 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v149 = sub_21402C09C(v148);

      *(v102 + v128) = v149;
      v148 = v149;
    }

    v150 = v148 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__sharePlayProtocolVersion;
    swift_beginAccess();
    *v150 = v146;
    *(v150 + 4) = 0;
  }

  v151 = *(v107 + 2841);
  if (v151 != 2)
  {
    v152 = swift_isUniquelyReferenced_nonNull_native();
    v153 = *(v102 + v128);
    if ((v152 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v154 = sub_21402C09C(v153);

      *(v102 + v128) = v154;
      v153 = v154;
    }

    v155 = v151 & 1;
    v156 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isGftdowngradeToOneToOneAvailable;
    swift_beginAccess();
    *(v153 + v156) = v155;
  }

  v157 = *(v107 + 2842);
  if (v157 != 2)
  {
    v158 = swift_isUniquelyReferenced_nonNull_native();
    v159 = *(v102 + v128);
    if ((v158 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v160 = sub_21402C09C(v159);

      *(v102 + v128) = v160;
      v159 = v160;
    }

    v161 = v157 & 1;
    v162 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusNdowngradeAvailable;
    swift_beginAccess();
    *(v159 + v162) = v161;
  }

  v163 = *(v107 + 359);
  if (v163)
  {
    if (v163 == 1)
    {
      goto LABEL_158;
    }

    v164 = *(v107 + 358);

    v165 = swift_isUniquelyReferenced_nonNull_native();
    v166 = *(v102 + v128);
    if ((v165 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v167 = sub_21402C09C(v166);

      *(v102 + v128) = v167;
      v166 = v167;
    }

    v168 = (v166 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__collaborationIdentifier);
    swift_beginAccess();
    *v168 = v164;
    v168[1] = v163;
  }

  v169 = *(v107 + 2881);
  if (v169 != 2)
  {
    v170 = swift_isUniquelyReferenced_nonNull_native();
    v171 = *(v102 + v128);
    if ((v170 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v172 = sub_21402C09C(v171);

      *(v102 + v128) = v172;
      v171 = v172;
    }

    v173 = v169 & 1;
    v174 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsLeaveContext;
    swift_beginAccess();
    *(v171 + v174) = v173;
  }

  v175 = *(v107 + 2882);
  if (v175 != 2)
  {
    v176 = swift_isUniquelyReferenced_nonNull_native();
    v177 = *(v102 + v128);
    if ((v176 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v178 = sub_21402C09C(v177);

      *(v102 + v128) = v178;
      v177 = v178;
    }

    v179 = v175 & 1;
    v180 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneScreenSharingAvailable;
    swift_beginAccess();
    *(v177 + v180) = v179;
  }

  v181 = *(v107 + 2883);
  if (v181 != 2)
  {
    v182 = swift_isUniquelyReferenced_nonNull_native();
    v183 = *(v102 + v128);
    if ((v182 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v184 = sub_21402C09C(v183);

      *(v102 + v128) = v184;
      v183 = v184;
    }

    v185 = v181 & 1;
    v186 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isSpatialPersonaEnabled;
    swift_beginAccess();
    *(v183 + v186) = v185;
  }

  v187 = *(v107 + 2884);
  if (v187 == 2)
  {
    if (v107[723])
    {
      goto LABEL_113;
    }
  }

  else
  {
    v188 = swift_isUniquelyReferenced_nonNull_native();
    v189 = *(v102 + v128);
    if ((v188 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v190 = sub_21402C09C(v189);

      *(v102 + v128) = v190;
      v189 = v190;
    }

    v191 = v187 & 1;
    v192 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneAvlessAvailable;
    swift_beginAccess();
    *(v189 + v192) = v191;
    if (v107[723])
    {
LABEL_113:
      if (v107[725])
      {
        goto LABEL_124;
      }

      goto LABEL_121;
    }
  }

  v193 = v107[722];
  v194 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *(v102 + v128);
  if ((v194 & 1) == 0)
  {
    type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    swift_allocObject();
    v196 = sub_21402C09C(v195);

    *(v102 + v128) = v196;
    v195 = v196;
  }

  v197 = v195 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionFeatureVersion;
  swift_beginAccess();
  *v197 = v193;
  *(v197 + 4) = 0;
  if ((v107[725] & 1) == 0)
  {
LABEL_121:
    v198 = v107[724];
    v199 = swift_isUniquelyReferenced_nonNull_native();
    v200 = *(v102 + v128);
    if ((v199 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v201 = sub_21402C09C(v200);

      *(v102 + v128) = v201;
      v200 = v201;
    }

    v202 = v200 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__visionCallEstablishmentVersion;
    swift_beginAccess();
    *v202 = v198;
    *(v202 + 4) = 0;
  }

LABEL_124:
  v203 = *(v107 + 2901);
  if (v203 != 2)
  {
    v204 = swift_isUniquelyReferenced_nonNull_native();
    v205 = *(v102 + v128);
    if ((v204 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v206 = sub_21402C09C(v205);

      *(v102 + v128) = v206;
      v205 = v206;
    }

    v207 = v203 & 1;
    v208 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUplusOneVisionToVisionAvailable;
    swift_beginAccess();
    *(v205 + v208) = v207;
  }

  v209 = *(v107 + 2902);
  if (v209 != 2)
  {
    v210 = swift_isUniquelyReferenced_nonNull_native();
    v211 = *(v102 + v128);
    if ((v210 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v212 = sub_21402C09C(v211);

      *(v102 + v128) = v212;
      v211 = v212;
    }

    v213 = v209 & 1;
    v214 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__supportsRequestToScreenShare;
    swift_beginAccess();
    *(v211 + v214) = v213;
  }

  v215 = *(v107 + 2903);
  if (v215 != 2)
  {
    v216 = swift_isUniquelyReferenced_nonNull_native();
    v217 = *(v102 + v128);
    if ((v216 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v218 = sub_21402C09C(v217);

      *(v102 + v128) = v218;
      v217 = v218;
    }

    v219 = v215 & 1;
    v220 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isPhotosSharePlayAvailable;
    swift_beginAccess();
    *(v217 + v220) = v219;
  }

  v221 = *(v107 + 366);
  if (!v221)
  {
    goto LABEL_141;
  }

  if (v221 == 1)
  {
LABEL_158:
    sub_2146DA018();
    __break(1u);
    return;
  }

  v222 = *(v107 + 365);

  v223 = swift_isUniquelyReferenced_nonNull_native();
  v224 = *(v102 + v128);
  if ((v223 & 1) == 0)
  {
    type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
    swift_allocObject();
    v225 = sub_21402C09C(v224);

    *(v102 + v128) = v225;
    v224 = v225;
  }

  v226 = (v224 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__stableDeviceIdentifier);
  swift_beginAccess();
  *v226 = v222;
  v226[1] = v221;

LABEL_141:
  v227 = *(v107 + 2937);
  if (v227 != 2)
  {
    v228 = swift_isUniquelyReferenced_nonNull_native();
    v229 = *(v102 + v128);
    if ((v228 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v230 = sub_21402C09C(v229);

      *(v102 + v128) = v230;
      v229 = v230;
    }

    v231 = v227 & 1;
    v232 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isTranslationAvailable;
    swift_beginAccess();
    *(v229 + v232) = v231;
  }

  v233 = *(v107 + 2938);
  if (v233 != 2)
  {
    v234 = swift_isUniquelyReferenced_nonNull_native();
    v235 = *(v102 + v128);
    if ((v234 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v236 = sub_21402C09C(v235);

      *(v102 + v128) = v236;
      v235 = v236;
    }

    v237 = v233 & 1;
    v238 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isNearbySharePlay;
    swift_beginAccess();
    *(v235 + v238) = v237;
  }

  v239 = *(v107 + 2939);
  if (v239 != 2)
  {
    v240 = swift_isUniquelyReferenced_nonNull_native();
    v241 = *(v102 + v128);
    if ((v240 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v242 = sub_21402C09C(v241);

      *(v102 + v128) = v242;
      v241 = v242;
    }

    v243 = v239 & 1;
    v244 = OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__isUpgradeToVideo;
    swift_beginAccess();
    *(v241 + v244) = v243;
  }

  if ((v107[736] & 1) == 0)
  {
    v245 = v107[735];
    v246 = swift_isUniquelyReferenced_nonNull_native();
    v247 = *(v102 + v128);
    if ((v246 & 1) == 0)
    {
      type metadata accessor for CSDMConversationParticipantDidJoinContextProto._StorageClass(0);
      swift_allocObject();
      v248 = sub_21402C09C(v247);

      *(v102 + v128) = v248;
      v247 = v248;
    }

    v249 = v247 + OBJC_IVAR____TtCV9BlastDoor46CSDMConversationParticipantDidJoinContextProtoP33_E954D71DD385455E8AA8CD6D2516348713_StorageClass__nearbyFeatureVersion;
    swift_beginAccess();
    *v249 = v245;
    *(v249 + 4) = 0;
  }
}

uint64_t sub_214533A14()
{
  v2 = sub_2146D8E38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v11, v0, 0xB81uLL);
  v10[2] = v11;
  sub_214534FA4(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto, aQd_0);
  sub_2146D9018();
  sub_2146D8E28();
  sub_2146D8FE8();
  (*(v3 + 8))(v5, v2);
  if (v1)
  {
    return sub_2145351E4(v8, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
  }

  sub_2145351E4(v8, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
  return v10[4];
}

uint64_t sub_214533C5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2146D8E18();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903BF0, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto, byte_2146E95C8);
  sub_2146D8FD8();
  result = sub_213FB54FC(a1, a2);
  if (!v3)
  {
    v12 = *(v8 + 24);
    v13 = &v10[*(v8 + 20)];
    v14 = *v13;
    v15 = v13[4];
    v16 = v10[v12];
    result = sub_2145351E4(v10, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
    *a3 = v14;
    if (v16 >= 4)
    {
      v17 = 4;
    }

    else
    {
      v17 = v16;
    }

    *(a3 + 4) = v15;
    *(a3 + 5) = v17;
  }

  return result;
}

uint64_t sub_214533E24(uint64_t result, unint64_t a2)
{
  v3 = result;
  if ((a2 & 0x100000000) == 0)
  {
    result = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
    v4 = v3 + *(result + 20);
    *v4 = a2;
    *(v4 + 4) = 0;
  }

  if ((a2 & 0xFF0000000000) != 0x40000000000)
  {
    if (BYTE5(a2) >= 3u)
    {
      if ((a2 & 0xFF0000000000) != 0x30000000000)
      {
        __break(1u);
        return result;
      }

      LOBYTE(v5) = 3;
    }

    else
    {
      v5 = a2 >> 40;
    }

    result = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
    *(v3 + *(result + 24)) = v5;
  }

  return result;
}

uint64_t sub_214533EBC()
{
  v2 = sub_2146D8E38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v0 + 4);
  v10 = *(v0 + 5);
  v13 = *v0;
  v14 = v9;
  v15 = v10;
  sub_214534FA4(&qword_27C903BF0, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto, byte_2146E95C8);
  sub_2146D9018();
  sub_2146D8E28();
  sub_2146D8FE8();
  (*(v3 + 8))(v5, v2);
  if (v1)
  {
    return sub_2145351E4(v8, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
  }

  sub_2145351E4(v8, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
  return v16;
}

uint64_t sub_2145340F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v79 = a3;
  v6 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9037B8, &unk_2147598F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v59 - v13;
  v15 = sub_2146D8E18();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = type metadata accessor for CSDMCallMessageProto(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  v98 = a2;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903C58, type metadata accessor for CSDMCallMessageProto, aAe);
  sub_2146D8FD8();
  if (v3)
  {
    return sub_213FB54FC(a1, a2);
  }

  v77 = v12;
  v78 = v8;
  v73 = a1;
  v74 = a2;
  v80 = 0;
  v20 = v16[6];
  v21 = v18[v16[5]];
  if (v21 >= 3)
  {
    v21 = 3;
  }

  v71 = v21;
  v70 = *&v18[v20];
  v72 = v18[v20 + 4];
  v22 = v16[8];
  v69 = v18[v16[7]];
  sub_213FB2E54(&v18[v22], v14, &unk_27C9037B8, &unk_2147598F0);
  v23 = *(v81 + 48);
  v24 = v23(v14, 1, v82);
  sub_213FB2DF4(v14, &unk_27C9037B8, &unk_2147598F0);
  if (v24 == 1)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0xB000000000000000;
  }

  else
  {
    v31 = v77;
    sub_213FB2E54(&v18[v22], v77, &unk_27C9037B8, &unk_2147598F0);
    if (v23(v31, 1, v82) == 1)
    {
      v32 = v78;
      sub_2146D8DE8();
      v33 = v82;
      *(v32 + *(v82 + 20)) = xmmword_2146E68C0;
      *(v32 + *(v33 + 24)) = xmmword_2146E68C0;
      *(v32 + *(v33 + 28)) = xmmword_2146E68C0;
      v34 = (v23)(v31, 1);
      v35 = v80;
      if (v34 != 1)
      {
        sub_213FB2DF4(v31, &unk_27C9037B8, &unk_2147598F0);
      }
    }

    else
    {
      v32 = v78;
      sub_214534FEC(v31, v78, type metadata accessor for CSDMAVConferenceInviteDataProto);
      v35 = v80;
    }

    sub_214534A08(v32, &v83);
    v80 = v35;
    v30 = *(&v83 + 1);
    v25 = v83;
    v27 = *(&v84 + 1);
    v26 = v84;
    v28 = v85;
    v29 = v86;
  }

  v64 = v28;
  v63 = v27;
  v81 = v25;
  v82 = v26;
  v36 = v16[10];
  v67 = v18[v16[9]];
  v68 = v18[v36];
  v37 = v16[12];
  v66 = v18[v16[11]];
  v39 = *&v18[v37];
  v38 = *&v18[v37 + 8];

  sub_214534D70(v25, v30, v26, v27, v28, v29, sub_213FDCA18);
  sub_214655A1C(&v83);
  v40 = v83;
  v41 = v84;
  v97 = v39;
  v98 = v38;
  v65 = v85;
  v99 = v85;
  *&v83 = 0xD000000000000027;
  *(&v83 + 1) = 0x800000021478D650;
  v76 = 0x800000021478D650;
  *&v84 = 0xD00000000000001CLL;
  *(&v84 + 1) = 0x800000021478A360;
  v75 = 0x800000021478A360;

  v77 = *(&v41 + 1);
  v78 = v41;
  sub_213FDC9D0(v41, *(&v41 + 1));
  v42 = v80;
  v80 = v40;
  v43 = (v40)(&v97, &v99, &v83);
  if (v42)
  {
    sub_213FB54FC(v73, v74);
    v44 = v63;
    v45 = v64;
    sub_214534D70(v81, v30, v82, v63, v64, v29, sub_213FDC6BC);
  }

  else
  {
    v60 = v39;
    v62 = v38;
    v61 = v29;
    v44 = v63;
    v46 = v81;
    v47 = v82;
    if (v43)
    {
      sub_213FDC6D0(v78, v77);

      sub_213FB54FC(v73, v74);
      v48 = v47;
      v49 = v64;
      v50 = v61;
      sub_214534D70(v46, v30, v48, v44, v64, v61, sub_213FDC6BC);

      v51 = v62;

      sub_213FDC6D0(v78, v77);
      result = sub_2145351E4(v18, type metadata accessor for CSDMCallMessageProto);
      v52 = v79;
      *v79 = v71;
      *(v52 + 1) = v70;
      v52[8] = v72;
      v52[9] = v69;
      *(v52 + 2) = v46;
      *(v52 + 3) = v30;
      *(v52 + 4) = v82;
      *(v52 + 5) = v44;
      *(v52 + 6) = v49;
      *(v52 + 7) = v50;
      v52[64] = v67;
      v52[65] = v68;
      v52[66] = v66;
      *(v52 + 9) = v80;
      *(v52 + 10) = *(&v40 + 1);
      *(v52 + 11) = v60;
      *(v52 + 12) = v51;
      v52[104] = v65;
      return result;
    }

    sub_214031C4C();
    swift_allocError();
    v53 = v76;
    *v54 = 0xD000000000000027;
    v54[1] = v53;
    v55 = v75;
    v54[2] = 0xD00000000000001CLL;
    v54[3] = v55;
    swift_willThrow();

    sub_213FB54FC(v73, v74);
    v56 = v47;
    v45 = v64;
    v29 = v61;
    sub_214534D70(v46, v30, v56, v44, v64, v61, sub_213FDC6BC);
  }

  v57 = v78;
  v58 = v77;
  sub_213FDC6D0(v78, v77);
  LOBYTE(v83) = v71;
  DWORD1(v83) = v70;
  BYTE8(v83) = v72;
  BYTE9(v83) = v69;
  *&v84 = v81;
  *(&v84 + 1) = v30;
  v85 = v82;
  v86 = v44;
  v87 = v45;
  v88 = v29;
  v89 = v67;
  v90 = v68;
  v91 = v66;
  v92 = v80;
  v93 = *(&v40 + 1);
  v94 = v57;
  v95 = v58;
  v96 = v65;
  sub_2142E8DC4(&v83);
  return sub_2145351E4(v18, type metadata accessor for CSDMCallMessageProto);
}

uint64_t sub_214534A08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v5 = (a1 + v4[5]);
  v7 = *v5;
  v6 = v5[1];
  if (v6 >> 60 != 15)
  {
    sub_213FDCA18(v7, v6);
  }

  v8 = (a1 + v4[6]);
  v10 = *v8;
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_213FDCA18(v10, v9);
  }

  v11 = (a1 + v4[7]);
  v13 = *v11;
  v12 = v11[1];
  if (v12 >> 60 != 15)
  {
    sub_213FDCA18(v13, v12);
  }

  result = sub_2145351E4(a1, type metadata accessor for CSDMAVConferenceInviteDataProto);
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v9;
  a2[4] = v13;
  a2[5] = v12;
  return result;
}

uint64_t sub_214534AF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_2146D8E18();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for CSDMAVConferenceInviteDataProto(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  v19 = a1;
  v20 = a2;
  *&v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_21402D9F8(a1, a2);
  sub_2146D8E08();
  sub_214534FA4(&qword_27C903C40, type metadata accessor for CSDMAVConferenceInviteDataProto, byte_2146E94D8);
  sub_2146D8FD8();
  if (v3)
  {
    return sub_213FB54FC(a1, a2);
  }

  sub_21453517C(v13, v11, type metadata accessor for CSDMAVConferenceInviteDataProto);
  sub_214534A08(v11, &v16);
  sub_2145351E4(v13, type metadata accessor for CSDMAVConferenceInviteDataProto);
  result = sub_213FB54FC(a1, a2);
  v15 = v17;
  *a3 = v16;
  a3[1] = v15;
  a3[2] = v18;
  return result;
}

void sub_214534D70(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  if (a2 >> 60 != 11)
  {
    a7(a1);
    (a7)(a3, a4);

    (a7)(a5, a6);
  }
}

uint64_t sub_214534F38(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_214534FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_214534FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_214535078(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_214535098(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 185) = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double sub_2145350BC(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_2145350E4()
{
  result = qword_27C915238;
  if (!qword_27C915238)
  {
    result = swift_getWitnessTable(byte_2147599A0, &type metadata for CSDMessagingProtoError, v0, v1);
    atomic_store(result, &qword_27C915238);
  }

  return result;
}

double sub_214535138(uint64_t a1)
{
  *(a1 + 432) = 0;
  result = 0.0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_21453517C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2145351E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_214535258()
{
  result = qword_27C915240;
  if (!qword_27C915240)
  {
    result = swift_getWitnessTable(aQ_32, &type metadata for CSDMessagingProtoError, v0, v1);
    atomic_store(result, &qword_27C915240);
  }

  return result;
}

uint64_t type metadata accessor for ChatSessionClose(uint64_t a1)
{
  result = qword_280B307A8;
  if (!qword_280B307A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2145353B0(char a1)
{
  result = type metadata accessor for ChatSessionClose(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_21453544C(uint64_t a1)
{
  result = type metadata accessor for ChatSessionClose(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_2145354C4()
{
  v1 = *(v0 + *(type metadata accessor for ChatSessionClose(0) + 28));

  return v1;
}

void sub_214535504(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ChatSessionClose(0) + 28));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_214535594()
{
  v1 = *(v0 + *(type metadata accessor for ChatSessionClose(0) + 32));

  return v1;
}

void sub_2145355D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ChatSessionClose(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_214535664()
{
  v1 = *(v0 + *(type metadata accessor for ChatSessionClose(0) + 36));

  return v1;
}

void sub_2145356A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ChatSessionClose(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_214535758(char a1)
{
  result = type metadata accessor for ChatSessionClose(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_2145357D0(uint64_t a1)
{
  *(a1 + 8) = sub_214535838(&qword_27C915248, byte_2146F7F70);
  result = sub_214535838(&qword_27C915250, aA_108);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214535838(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ChatSessionClose(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_2145358A4(uint64_t a1)
{
  type metadata accessor for Metadata(319);
  if (v1 <= 0x3F)
  {
    sub_2143ACE3C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21453594C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DD8);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2144A041C(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v8 + 16) = sub_2144A066C;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2144A041C(v4, v13 + v9);
  *(v12 + 16) = sub_2144A066C;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF60;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF94;
  *(v17 + 24) = v18;
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

unint64_t sub_214535C88@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for SwiftRegexValidator(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  if (qword_27C903158 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = __swift_project_value_buffer(v5, qword_27CA19DD8);
  v7 = *(*(v5 - 8) + 16);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = swift_allocObject();
  sub_2144A041C(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v8 + 16) = sub_214302808;
  *(v8 + 24) = v10;
  if (qword_27C903298 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_27CA19F60);
  v7(&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  sub_2144A041C(v4, v13 + v9);
  *(v12 + 16) = sub_2144A066C;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_21439DF28;
  *(v15 + 24) = v8;
  *(v14 + 32) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_21439DF60;
  *(v16 + 24) = v12;
  *(v14 + 40) = v16;
  v17 = swift_allocObject();
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  *(v17 + 16) = sub_21439DF54;
  *(v17 + 24) = v18;
  v19 = inited;
  v20 = v24;
  *(inited + 32) = v17;
  return sub_214042B80(v19, v20);
}

uint64_t sub_214535FC4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214536010(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21453606C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2145360B8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214536114@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214536160(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145361BC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214536238()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2145362B4()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_214536330(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_214536394()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_2145363C8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6572756C696166;
  }

  else
  {
    v2 = 0x73736563637573;
  }

  if (*a2)
  {
    v3 = 0x6572756C696166;
  }

  else
  {
    v3 = 0x73736563637573;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_214536450()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_2145364C8(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_214536524(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214536598(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2145365F8(uint64_t *a1@<X8>)
{
  v2 = 0x73736563637573;
  if (*v1)
  {
    v2 = 0x6572756C696166;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

void sub_2145366E0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214536828(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CFE84;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_2145368C4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D01AC;
}

void sub_214536994(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214536ADC(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214536B78(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214412390;
}

void sub_214536C10(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214536D58(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_2144114B0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214536DF4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144117E0;
}

unint64_t sub_214536E90()
{
  result = qword_27C915258;
  if (!qword_27C915258)
  {
    result = swift_getWitnessTable(aA_37, &type metadata for IMRevoke.Result, v0, v1);
    atomic_store(result, &qword_27C915258);
  }

  return result;
}

unint64_t sub_214536EE4(uint64_t a1)
{
  *(a1 + 8) = sub_214536F14();
  result = sub_214536F68();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214536F14()
{
  result = qword_27C915260;
  if (!qword_27C915260)
  {
    result = swift_getWitnessTable(a9sm, &type metadata for IMRevoke, v0, v1);
    atomic_store(result, &qword_27C915260);
  }

  return result;
}

unint64_t sub_214536F68()
{
  result = qword_27C915268;
  if (!qword_27C915268)
  {
    result = swift_getWitnessTable(byte_2146FC9F8, &type metadata for IMRevoke, v0, v1);
    atomic_store(result, &qword_27C915268);
  }

  return result;
}

unint64_t sub_214536FDC()
{
  result = qword_27C915270;
  if (!qword_27C915270)
  {
    result = swift_getWitnessTable(byte_214759BF0, &type metadata for IMRevoke.Result, v0, v1);
    atomic_store(result, &qword_27C915270);
  }

  return result;
}

uint64_t sub_214537030()
{
  type metadata accessor for UnpackerActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_280B30978 = v0;
  return result;
}

uint64_t static UnpackerActor.shared.getter()
{
  if (qword_280B30970 != -1)
  {
    swift_once();
  }
}

uint64_t UnpackerActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_214537134(uint64_t a1, uint64_t a2)
{
  result = qword_27C914D40;
  if (!qword_27C914D40)
  {
    v5 = type metadata accessor for UnpackerActor();
    result = swift_getWitnessTable(protocol conformance descriptor for UnpackerActor, v5, v2, v3);
    atomic_store(result, &qword_27C914D40);
  }

  return result;
}

uint64_t sub_2145371AC()
{
  if (qword_280B30970 != -1)
  {
    swift_once();
  }
}

uint64_t sub_214537208(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnpackerActor();

  return MEMORY[0x2822005F8](v3, a2);
}

unint64_t sub_214537258(uint64_t a1)
{
  *(a1 + 8) = sub_21431EA74();
  result = sub_21431DF08();
  *(a1 + 16) = result;
  return result;
}

double sub_214537298@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void sub_2145372A4(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
}

unint64_t sub_214537344(uint64_t a1)
{
  *(a1 + 8) = sub_214307168();
  result = sub_214307684();
  *(a1 + 16) = result;
  return result;
}

BlastDoor::MBDActionType_optional __swiftcall MBDActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 14;
  if ((rawValue + 1) < 0xE)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2145373AC()
{
  result = qword_27C915278;
  if (!qword_27C915278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDActionType, &type metadata for MBDActionType, v0, v1);
    atomic_store(result, &qword_27C915278);
  }

  return result;
}

unint64_t sub_214537408(uint64_t a1)
{
  *(a1 + 8) = sub_2142EA284();
  result = sub_2142EA3E0();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MBDActionContent(uint64_t a1)
{
  result = qword_27C915280;
  if (!qword_27C915280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214537544(uint64_t a1)
{
  sub_2145377B4(319, &qword_27C915290, &qword_27C915298, &type metadata for MBDActionOpenWeb);
  if (v1 <= 0x3F)
  {
    sub_2145377B4(319, &qword_27C9152A0, &qword_27C9152A8, &type metadata for MBDActionOpenApp);
    if (v2 <= 0x3F)
    {
      sub_2145377B4(319, &qword_27C9152B0, &qword_27C9152B8, &type metadata for MBDActionComposeText);
      if (v3 <= 0x3F)
      {
        sub_2145377B4(319, &qword_27C9152C0, &qword_27C9152C8, &type metadata for MBDActionComposeAudio);
        if (v4 <= 0x3F)
        {
          sub_2145377B4(319, &qword_27C9152D0, &qword_27C9152D8, &type metadata for MBDActionComposeVideo);
          if (v5 <= 0x3F)
          {
            sub_2145377B4(319, &qword_27C9152E0, &qword_27C9152E8, &type metadata for MBDActionShowLocation);
            if (v6 <= 0x3F)
            {
              sub_2145377B4(319, &qword_27C9152F0, &qword_27C9152F8, &type metadata for MBDActionRequestLocation);
              if (v7 <= 0x3F)
              {
                sub_214537804();
                if (v8 <= 0x3F)
                {
                  sub_2145377B4(319, &qword_27C915310, &qword_27C915318, &type metadata for MBDActionDialVideo);
                  if (v9 <= 0x3F)
                  {
                    sub_2145377B4(319, &qword_27C915320, &qword_27C915328, &type metadata for MBDActionDialEnriched);
                    if (v10 <= 0x3F)
                    {
                      sub_2145377B4(319, &qword_27C915330, &qword_27C915338, &type metadata for MBDActionDialPhone);
                      if (v11 <= 0x3F)
                      {
                        sub_2145377B4(319, &qword_27C915340, &qword_27C915348, &type metadata for MBDActionDevice);
                        if (v12 <= 0x3F)
                        {
                          sub_2145377B4(319, &qword_27C915350, &qword_27C915358, &type metadata for MBDActionSettings);
                          if (v13 <= 0x3F)
                          {
                            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_2145377B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_21403BEC8(0, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_214537804()
{
  if (!qword_27C915300)
  {
    sub_21453784C(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27C915300);
    }
  }
}

void sub_21453784C(uint64_t a1)
{
  if (!qword_27C915308)
  {
    type metadata accessor for MBDActionCalendar(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_27C915308);
    }
  }
}

unint64_t sub_2145378A4()
{
  result = qword_27C915360;
  if (!qword_27C915360)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDActionType, &type metadata for MBDActionType, v0, v1);
    atomic_store(result, &qword_27C915360);
  }

  return result;
}

uint64_t sub_214537974(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2146D8D98();
}

uint64_t sub_214537A0C@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v33 = sub_2146D8D48();
  v29 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v26 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v28 = &v26 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v32 = &v26 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v31 = &v26 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  v34 = 37;
  v35 = 0xE100000000000000;
  v19 = sub_2145031D0();
  MEMORY[0x216053AF0](v36, &v34, MEMORY[0x277D837D0], v19);
  if (qword_27C9031E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v3, qword_27CA19E38);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v27 = v18;
  MEMORY[0x216053AF0](v20, v3, v21);
  MEMORY[0x216053AF0](v20, v3, v21);
  v34 = v36[0];
  v35 = v36[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  v22 = v28;
  sub_2146D8CD8();
  v23 = *(v4 + 8);
  v23(v7, v3);
  v23(v10, v3);
  v29 = *(v29 + 8);
  (v29)(v2, v33);
  sub_2146D8C38();
  sub_2146D8D08();
  v24 = v31;
  sub_2146D8D08();
  sub_2146D8CD8();
  v23(v7, v3);
  v23(v10, v3);
  (v29)(v2, v33);
  v23(v22, v3);
  v23(v32, v3);
  v23(v24, v3);
  return (v23)(v27, v3);
}

uint64_t sub_214537EB0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_2146D8C88();
  v7 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  MEMORY[0x216053AF0](v4, v0, v7);
  v8 = *(v1 + 8);
  v8(v4, v0);
  sub_2146D8C08();
  return (v8)(v6, v0);
}

uint64_t sub_214538040@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_2146D8D48();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - v4;
  v5 = sub_2146D8C48();
  v30 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v32 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_27CA19E08);
  v19 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0, MEMORY[0x277D85AC0]);
  v29 = v12;
  MEMORY[0x216053AD0](v18, v12, v19);
  v39 = 2120166957;
  v40 = 0xE400000000000000;
  sub_2146D8D58();
  sub_2146D8D78();
  v20 = sub_2145030B8();
  MEMORY[0x216053AD0](v9, v5, v20);
  v28 = v17;
  v21 = *(v30 + 8);
  v21(v9, v5);
  v22 = v31;
  sub_2146D8BE8();
  v23 = v33;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8, MEMORY[0x277D85410]);
  v24 = MEMORY[0x277D83E40];
  v25 = v35;
  sub_2146D8CF8();
  (*(v36 + 8))(v23, v37);
  MEMORY[0x216053B70](v15, v24);
  (*(v34 + 8))(v22, v25);
  v21(v11, v5);
  return (*(v32 + 8))(v28, v29);
}

unint64_t sub_2145384E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SwiftRegexValidator(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2146EAEB0;
  v8 = sub_214069764(&unk_282653928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v9 + 16) = sub_214059810;
  *(v9 + 24) = v10;
  *(v7 + 32) = v9;
  if (qword_27C903218 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v12 = __swift_project_value_buffer(v11, qword_27CA19E80);
  (*(*(v11 - 8) + 16))(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12, v11);
  v13 = swift_allocObject();
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_2144A041C(v5, v15 + v14);
  *(v13 + 16) = sub_214306D5C;
  *(v13 + 24) = v15;
  *(v7 + 40) = v13;
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  *(v16 + 16) = sub_21439DF54;
  *(v16 + 24) = v17;
  *(inited + 32) = v16;
  return sub_214042B80(inited, a1);
}

uint64_t sub_214538784@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if ((result + 1) < 4)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_2145387AC()
{
  result = qword_27C915368;
  if (!qword_27C915368)
  {
    result = swift_getWitnessTable(byte_21475A030, &type metadata for MBDOpenWebViewMode, v0, v1);
    atomic_store(result, &qword_27C915368);
  }

  return result;
}

uint64_t sub_214538910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21453896C()
{
  result = qword_27C915370;
  if (!qword_27C915370)
  {
    result = swift_getWitnessTable(asc_21475A098, &type metadata for MBDOpenWebViewMode, v0, v1);
    atomic_store(result, &qword_27C915370);
  }

  return result;
}

uint64_t sub_2145389C0(void (*a1)(uint64_t *__return_ptr, _BYTE *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v9 = (a3 + 32);
    for (i = v6 - 1; ; --i)
    {
      memcpy(__dst, v9, 0x121uLL);
      memcpy(__src, v9, 0x121uLL);
      sub_21430B818(__dst, v11);
      a1(&v14, __src, &v12);
      if (v4)
      {
        memcpy(v11, __src, 0x121uLL);
        sub_21430B698(v11);
      }

      v4 = 0;
      memcpy(v11, __src, 0x121uLL);
      sub_21430B698(v11);
      sub_2146D9F98();
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!i)
      {
        break;
      }

      v9 += 296;
    }

    return v16;
  }

  return result;
}

uint64_t sub_214538B10(void (*a1)(uint64_t *__return_ptr, __int128 *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v56 = MEMORY[0x277D84F90];
    sub_2146D9FB8();
    v9 = (a3 + 32);
    for (i = v6 - 1; ; --i)
    {
      v11 = v9[7];
      v12 = v9[9];
      v53 = v9[8];
      v54 = v12;
      v13 = v9[3];
      v14 = v9[5];
      v49 = v9[4];
      v50 = v14;
      v15 = v9[5];
      v16 = v9[7];
      v51 = v9[6];
      v52 = v16;
      v17 = v9[1];
      v46[0] = *v9;
      v46[1] = v17;
      v18 = v9[3];
      v20 = *v9;
      v19 = v9[1];
      v47 = v9[2];
      v48 = v18;
      v21 = v9[9];
      v42 = v53;
      v43 = v21;
      v38 = v49;
      v39 = v15;
      v40 = v51;
      v41 = v11;
      v34 = v20;
      v35 = v19;
      v55 = *(v9 + 20);
      v44 = *(v9 + 20);
      v36 = v47;
      v37 = v13;
      sub_2143DA3B8(v46, &v22);
      a1(&v45, &v34, &v33);
      if (v4)
      {
        v30 = v42;
        v31 = v43;
        v32 = v44;
        v26 = v38;
        v27 = v39;
        v28 = v40;
        v29 = v41;
        v22 = v34;
        v23 = v35;
        v24 = v36;
        v25 = v37;
        sub_2143DA414(&v22);
      }

      v4 = 0;
      v30 = v42;
      v31 = v43;
      v32 = v44;
      v26 = v38;
      v27 = v39;
      v28 = v40;
      v29 = v41;
      v22 = v34;
      v23 = v35;
      v24 = v36;
      v25 = v37;
      sub_2143DA414(&v22);
      sub_2146D9F98();
      sub_2146D9FC8();
      sub_2146D9FD8();
      sub_2146D9FA8();
      if (!i)
      {
        break;
      }

      v9 = (v9 + 168);
    }

    return v56;
  }

  return result;
}

char *sub_214538CE4(void (*a1)(void *__return_ptr, id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2146DA028())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v20 = MEMORY[0x277D84F90];
    result = sub_2140A00A0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v7 = v20;
    v10 = i - 1;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x216054E00](v9, a3);
      }

      else
      {
        if (v9 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(a3 + 8 * v9 + 32);
      }

      v12 = v11;
      v18 = v11;
      a1(__src, &v18, &v17);
      if (v4)
      {

        return v7;
      }

      v4 = 0;

      memcpy(__dst, __src, sizeof(__dst));
      v20 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2140A00A0((v13 > 1), v14 + 1, 1);
        v7 = v20;
      }

      *(v7 + 16) = v14 + 1;
      memcpy((v7 + 296 * v14 + 32), __dst, 0x121uLL);
      if (v10 == v9)
      {
        return v7;
      }

      ++v9;
    }

    while (!__OFADD__(v9, 1));
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

char *sub_214538E9C(void (*a1)(_OWORD *__return_ptr, id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2146DA028())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v32 = MEMORY[0x277D84F90];
    result = sub_2140A0080(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v7 = v32;
    v10 = i - 1;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x216054E00](v9, a3);
      }

      else
      {
        if (v9 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v11 = *(a3 + 8 * v9 + 32);
      }

      v12 = v11;
      v29 = v11;
      a1(v30, &v29, &v28);
      if (v4)
      {

        return v7;
      }

      v4 = 0;

      v21 = v30[4];
      v22 = v30[5];
      v18 = v30[1];
      v19 = v30[2];
      v20 = v30[3];
      v25 = v30[8];
      v26 = v30[9];
      v23 = v30[6];
      v24 = v30[7];
      v27 = v31;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      v17 = v30[0];
      v32 = v7;
      if (v14 >= v13 >> 1)
      {
        sub_2140A0080((v13 > 1), v14 + 1, 1);
        v7 = v32;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 168 * v14;
      *(v15 + 48) = v18;
      *(v15 + 64) = v19;
      *(v15 + 32) = v17;
      *(v15 + 112) = v22;
      *(v15 + 128) = v23;
      *(v15 + 80) = v20;
      *(v15 + 96) = v21;
      *(v15 + 192) = v27;
      *(v15 + 160) = v25;
      *(v15 + 176) = v26;
      *(v15 + 144) = v24;
      if (v10 == v9)
      {
        return v7;
      }

      ++v9;
    }

    while (!__OFADD__(v9, 1));
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

BlastDoor::ASMessageType_optional __swiftcall ASMessageType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2145390DC(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v11 = v10;
  v42 = 1;
  sub_213FCF58C(v46);
  memcpy(&v41[6], v46, 0x201uLL);
  sub_214539BBC(v47);
  memcpy(&v40[7], v47, 0x231uLL);
  sub_213FCF58C(v48);
  memcpy(&v39[7], v48, 0x201uLL);
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
      if (v9 == 2)
      {
        v49 = v8;
        v38[0] = 0;
        v12 = v42;
        LOBYTE(v38[1]) = v42;
        BYTE1(v38[1]) = 2;
        memcpy(&v38[1] + 2, v41, 0x207uLL);
        memcpy(&v38[66] + 1, v40, 0x238uLL);
        memcpy(&v38[137] + 1, v39, 0x208uLL);
        memset(&v38[203], 0, 33);
        memcpy(v37, v38, sizeof(v37));
        sub_21453C308(v38, &v28);
        sub_21453A6D0(v6);
        if (!v1)
        {
          sub_213FB54FC(v6, v4);
          memcpy(__dst, v37, 0x679uLL);
          sub_21431F758(__dst);
          v28 = 0;
          v29 = v12;
          v30 = 2;
          memcpy(v31, v41, sizeof(v31));
          memcpy(v32, v40, sizeof(v32));
          memcpy(v33, v39, sizeof(v33));
          v34 = 0u;
          v35 = 0u;
          v21 = 0u;
          v36 = 0;
          sub_21431F758(&v28);
          memcpy(v22, __src, 0x231uLL);
          nullsub_1();
          memcpy(v43, v48, sizeof(v43));
          v13 = v22;
LABEL_18:
          memcpy(v44, v13, sizeof(v44));
          v18 = v46;
          goto LABEL_19;
        }

LABEL_14:
        sub_213FB54FC(v6, v4);
        memcpy(__dst, v37, 0x679uLL);
        sub_21431F758(__dst);
        v28 = 0;
        v29 = v12;
        v30 = 2;
        memcpy(v31, v41, sizeof(v31));
        memcpy(v32, v40, sizeof(v32));
        memcpy(v33, v39, sizeof(v33));
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v49 = v8;
    v38[0] = 0;
    v14 = v42;
    LOBYTE(v38[1]) = v42;
    BYTE1(v38[1]) = 2;
    memcpy(&v38[1] + 2, v41, 0x207uLL);
    memcpy(&v38[66] + 1, v40, 0x238uLL);
    memcpy(&v38[137] + 1, v39, 0x208uLL);
    memset(&v38[203], 0, 33);
    memcpy(v37, v38, sizeof(v37));
    sub_21453C308(v38, &v28);
    sub_214539BC4(v6);
    if (!v1)
    {
      sub_213FB54FC(v6, v4);
      memcpy(__dst, v37, 0x679uLL);
      sub_21431F758(__dst);
      v28 = 0;
      v29 = v14;
      v30 = 2;
      memcpy(v31, v41, sizeof(v31));
      memcpy(v32, v40, sizeof(v32));
      memcpy(v33, v39, sizeof(v33));
      v34 = 0u;
      v35 = 0u;
      v21 = 0u;
      v36 = 0;
      sub_21431F758(&v28);
      memcpy(v22, __src, 0x201uLL);
      nullsub_1();
      memcpy(v43, v48, sizeof(v43));
      memcpy(v44, v47, sizeof(v44));
      v18 = v22;
LABEL_19:
      memcpy(v45, v18, sizeof(v45));
      v15 = 0;
      v20 = 0u;
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  if (v9 == 3)
  {
    v49 = v8;
    v38[0] = 0;
    v12 = v42;
    LOBYTE(v38[1]) = v42;
    BYTE1(v38[1]) = 2;
    memcpy(&v38[1] + 2, v41, 0x207uLL);
    memcpy(&v38[66] + 1, v40, 0x238uLL);
    memcpy(&v38[137] + 1, v39, 0x208uLL);
    memset(&v38[203], 0, 33);
    memcpy(v37, v38, sizeof(v37));
    sub_21453C308(v38, &v28);
    sub_21453B4C0(v6);
    if (!v1)
    {
      sub_213FB54FC(v6, v4);
      memcpy(__dst, v37, 0x679uLL);
      sub_21431F758(__dst);
      v28 = 0;
      v29 = v12;
      v30 = 2;
      memcpy(v31, v41, sizeof(v31));
      memcpy(v32, v40, sizeof(v32));
      memcpy(v33, v39, sizeof(v33));
      v34 = 0u;
      v35 = 0u;
      v21 = 0u;
      v36 = 0;
      sub_21431F758(&v28);
      memcpy(v22, __src, 0x201uLL);
      nullsub_1();
      memcpy(v43, v22, sizeof(v43));
      v13 = v47;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v9 != 4)
  {
LABEL_10:
    sub_21404A6EC();
    swift_allocError();
    *v16 = 0xD000000000000036;
    v16[1] = 0x800000021478B020;
    v16[2] = 0x4964696C61766E69;
    v16[3] = 0xEB000000006D6574;
    v16[4] = 0xD00000000000001CLL;
    v16[5] = 0x800000021478B060;
    swift_willThrow();
    sub_213FB54FC(v6, v4);
    v38[0] = 0;
    LOBYTE(v38[1]) = v42;
    BYTE1(v38[1]) = 2;
    memcpy(&v38[1] + 2, v41, 0x207uLL);
    memcpy(&v38[66] + 1, v40, 0x238uLL);
    memcpy(&v38[137] + 1, v39, 0x208uLL);
    memset(&v38[203], 0, 33);
    return sub_21431F758(v38);
  }

  v49 = v8;
  v38[0] = 0;
  v14 = v42;
  LOBYTE(v38[1]) = v42;
  BYTE1(v38[1]) = 2;
  memcpy(&v38[1] + 2, v41, 0x207uLL);
  memcpy(&v38[66] + 1, v40, 0x238uLL);
  memcpy(&v38[137] + 1, v39, 0x208uLL);
  memset(&v38[203], 0, 33);
  memcpy(v37, v38, sizeof(v37));
  sub_21453C308(v38, &v28);
  sub_21453C154(v6, v4, __src);
  if (v1)
  {
LABEL_12:
    sub_213FB54FC(v6, v4);
    memcpy(__dst, v37, 0x679uLL);
    sub_21431F758(__dst);
    v28 = 0;
    v29 = v14;
    v30 = 2;
    memcpy(v31, v41, sizeof(v31));
    memcpy(v32, v40, sizeof(v32));
    memcpy(v33, v39, sizeof(v33));
LABEL_15:
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    return sub_21431F758(&v28);
  }

  sub_213FB54FC(v6, v4);
  memcpy(__dst, v37, 0x679uLL);
  sub_21431F758(__dst);
  v28 = 0;
  v29 = v14;
  v30 = 2;
  memcpy(v31, v41, sizeof(v31));
  memcpy(v32, v40, sizeof(v32));
  memcpy(v33, v39, sizeof(v33));
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  sub_21431F758(&v28);
  v20 = *&__src[16];
  v21 = *__src;
  v15 = __src[32];
  memcpy(v43, v48, sizeof(v43));
  memcpy(v44, v47, sizeof(v44));
  memcpy(v45, v46, sizeof(v45));
LABEL_20:
  v19 = v49 & 1;
  memcpy(&v26[6], v45, 0x201uLL);
  memcpy(&v25[7], v44, 0x231uLL);
  memcpy(&v24[7], v43, 0x201uLL);
  *v11 = v9;
  *(v11 + 8) = 0;
  *(v11 + 9) = v19;
  memcpy((v11 + 10), v26, 0x207uLL);
  memcpy((v11 + 529), v25, 0x238uLL);
  result = memcpy((v11 + 1097), v24, 0x208uLL);
  *(v11 + 1624) = v21;
  *(v11 + 1640) = v20;
  *(v11 + 1656) = v15;
  return result;
}

void sub_214539BC4(uint64_t a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v93 = v2;
  v4 = v1;
  v6 = v5;
  v7 = v3;
  v89 = v8;
  v9 = type metadata accessor for ActivityDataPreviewProtobuf(0);
  v10 = *(v9 - 8);
  v91 = v9;
  v92 = v10;
  MEMORY[0x28223BE20](v9);
  v90 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v74 - v16;
  v18 = sub_2146D8E18();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = type metadata accessor for InviteRequestProtobuf(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v101, v4, sizeof(v101));
  *&v100[0] = v7;
  *(&v100[0] + 1) = v6;
  memset(v94, 0, 40);
  sub_21402D9F8(v7, v6);
  sub_2146D8E08();
  sub_214543528(&qword_27C913740, type metadata accessor for InviteRequestProtobuf, byte_214740CE8);
  v22 = v93;
  sub_2146D8FD8();
  if (!v22)
  {
    v79 = v15;
    v93 = 0;
    v23 = v19[6];
    v24 = &v21[v19[5]];
    v25 = *(v24 + 1);
    v84 = *v24;
    v26 = *&v21[v23];
    v27 = *&v21[v23 + 8];
    v28 = v19[8];
    v29 = &v21[v19[7]];
    v30 = *(v29 + 1);
    v81 = *v29;
    v82 = v26;
    v31 = *&v21[v28 + 8];
    v74 = *&v21[v28];
    v32 = v19[9];
    v33 = v19[10];
    v34 = &v21[v32];
    v83 = *v34;
    v80 = v34[4];
    sub_213FB2E54(&v21[v33], v17, &qword_27C9135E8, &unk_21473F440);
    v35 = *(v92 + 48);
    v92 += 48;
    v78 = v35;
    v36 = v35(v17, 1, v91);
    v85 = v31;

    v88 = v25;

    v87 = v27;

    v86 = v30;

    sub_213FB2DF4(v17, &qword_27C9135E8, &unk_21473F440);
    if (v36 == 1)
    {
      v77 = v21;
      sub_2144D6714(v100);
      v37 = v88;
    }

    else
    {
      memcpy(v94, v101, 0x679uLL);
      v44 = v79;
      sub_213FB2E54(&v21[v33], v79, &qword_27C9135E8, &unk_21473F440);
      v45 = v91;
      v46 = v78;
      if (v78(v44, 1, v91) == 1)
      {
        v47 = MEMORY[0x277D84F90];
        v48 = v90;
        *v90 = MEMORY[0x277D84F90];
        *(v48 + 1) = v47;
        sub_2146D8DE8();
        v49 = *(v45 + 28);
        v50 = type metadata accessor for ActivitySnapshotProtobuf(0);
        (*(*(v50 - 8) + 56))(&v48[v49], 1, 1, v50);
        v51 = &v48[*(v45 + 32)];
        *v51 = 0;
        v51[8] = 1;
        v52 = v46(v44, 1, v45);
        v53 = v88;
        if (v52 != 1)
        {
          sub_213FB2DF4(v44, &qword_27C9135E8, &unk_21473F440);
        }
      }

      else
      {
        v48 = v90;
        sub_214543570(v44, v90, type metadata accessor for ActivityDataPreviewProtobuf);
        v53 = v88;
      }

      sub_214543528(&qword_27C913758, type metadata accessor for ActivityDataPreviewProtobuf, byte_21473FBB8);
      v54 = v93;
      v55 = sub_2146D8FC8();
      if (v54)
      {
        sub_2145435D8(v48, type metadata accessor for ActivityDataPreviewProtobuf);

        sub_2145435D8(v21, type metadata accessor for InviteRequestProtobuf);
        return;
      }

      v60 = v55;
      v61 = v56;
      sub_2145435D8(v48, type metadata accessor for ActivityDataPreviewProtobuf);
      sub_21453C364(v60);
      v93 = 0;
      v77 = v21;
      sub_213FB54FC(v60, v61);
      memcpy(v100, v95, 0x189uLL);
      v37 = v53;
    }

    sub_213FB2E54(v100, v94, &qword_27C909E50, &unk_2146F5B30);
    sub_2145B2A64(v94);
    v38 = v94[0];
    v39 = *(&v94[1] + 1);
    v40 = *&v94[1];
    v41 = LOBYTE(v94[2]);
    sub_2145B2A98(v95);
    v91 = v95[2];
    v92 = v95[1];
    v78 = v95[3];
    v79 = v95[0];
    LODWORD(v90) = LOBYTE(v95[4]);
    memcpy(&v96[7], v100, 0x189uLL);
    v80 = v80;
    v95[0] = v84;
    v95[1] = v37;
    v75 = v41;
    v97[0] = v41;
    *&v94[0] = 0xD000000000000032;
    *(&v94[0] + 1) = 0x80000002147918C0;
    *&v94[1] = 0xD00000000000001CLL;
    *(&v94[1] + 1) = 0x800000021478A360;

    sub_213FDC9D0(v40, v39);
    v42 = v93;
    v76 = v38;
    v43 = (v38)(v95, v97, v94);
    if (!v42)
    {
      if (v43)
      {
        sub_213FDC6D0(v40, v39);

        sub_213FDC6D0(v40, v39);
        v95[0] = v74;
        v57 = v85;
        v95[1] = v85;
        v97[0] = v90;
        *&v94[0] = 0xD000000000000036;
        *(&v94[0] + 1) = 0x8000000214791900;
        *&v94[1] = 0xD00000000000001CLL;
        *(&v94[1] + 1) = 0x800000021478A360;

        v58 = v78;
        sub_213FDC9D0(v91, v78);
        v59 = v79(v95, v97, v94);
        v63 = v77;
        v66 = v84;
        if (v59)
        {
          v67 = v91;
          v93 = 0;
          sub_213FDC6D0(v91, v38);
          sub_213FB2DF4(v100, &qword_27C909E50, &unk_2146F5B30);
          v68 = v92;

          sub_213FDC6D0(v67, v78);
          v69 = v89;
          *v89 = v76;
          v69[1] = *(&v38 + 1);
          v70 = v88;
          v69[2] = v66;
          v69[3] = v70;
          *(v69 + 32) = v75;
          *&v72 = v81;
          *&v71 = v82;
          *(&v71 + 1) = v87;
          *(&v72 + 1) = v86;
          *(v69 + 7) = v72;
          *(v69 + 5) = v71;
          v69[9] = v79;
          v69[10] = v68;
          v69[11] = v74;
          v69[12] = v57;
          *(v69 + 104) = v90;
          *(v69 + 27) = v83;
          *(v69 + 112) = v80;
          memcpy(v69 + 113, v96, 0x190uLL);
          sub_2145435D8(v63, type metadata accessor for InviteRequestProtobuf);
          return;
        }

        sub_214031C4C();
        swift_allocError();
        *v73 = 0xD000000000000036;
        v73[1] = 0x8000000214791900;
        v73[2] = 0xD00000000000001CLL;
        v73[3] = 0x800000021478A360;
        swift_willThrow();

        sub_213FB2DF4(v100, &qword_27C909E50, &unk_2146F5B30);

        sub_213FDC6D0(v91, v58);
        v40 = v66;
        v39 = v88;
        goto LABEL_17;
      }

      sub_214031C4C();
      swift_allocError();
      *v62 = 0xD000000000000032;
      v62[1] = 0x80000002147918C0;
      v62[2] = 0xD00000000000001CLL;
      v62[3] = 0x800000021478A360;
      swift_willThrow();
    }

    sub_213FB2DF4(v100, &qword_27C909E50, &unk_2146F5B30);

    sub_213FDC6D0(v40, v39);
    v63 = v77;
LABEL_17:
    *&v94[0] = v76;
    *(&v94[0] + 1) = *(&v38 + 1);
    *&v94[1] = v40;
    *(&v94[1] + 1) = v39;
    LOBYTE(v94[2]) = v75;
    *(&v94[2] + 1) = v102[0];
    *&v65 = v81;
    *&v64 = v82;
    *(&v64 + 1) = v87;
    DWORD1(v94[2]) = *(v102 + 3);
    *(&v65 + 1) = v86;
    *(&v94[3] + 8) = v65;
    *(&v94[2] + 8) = v64;
    *(&v94[4] + 1) = v79;
    *&v94[5] = v92;
    *(&v94[5] + 1) = v91;
    *&v94[6] = v38;
    BYTE8(v94[6]) = v90;
    *(&v94[6] + 9) = v98;
    BYTE11(v94[6]) = v99;
    HIDWORD(v94[6]) = v83;
    LOBYTE(v94[7]) = v80;
    memcpy(&v94[7] + 1, v96, 0x190uLL);
    sub_21430C2BC(v94);
    sub_2145435D8(v63, type metadata accessor for InviteRequestProtobuf);
  }
}
uint64_t sub_254F5F3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F5F10C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F5F3E4(uint64_t a1)
{
  v2 = sub_254F5F69C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F5F420(uint64_t a1)
{
  v2 = sub_254F5F69C();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.SiriRequestContext.MeCard.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v4 = sub_254F52F94(&qword_27F760EF8, &qword_254F9DA98);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F4E558();
  sub_254F4EFBC(v3, v3[3]);
  sub_254F5F69C();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F9BD40();
  if (!v0)
  {
    sub_254F509D0();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F64404();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F643F0();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F4E2F0();
    sub_254F9BD40();
    sub_254F52F94(&qword_27F760F08, &qword_254F9DAA0);
    sub_254F5FB38(&qword_27F760F10, sub_254F5F6F0, MEMORY[0x277D83948]);
    sub_254F4E2F0();
    sub_254F9BE00();
  }

  (*(v6 + 8))(v1, v4);
  sub_254F4FC6C();
  sub_254F4F348();
}

unint64_t sub_254F5F69C()
{
  result = qword_27F760F00;
  if (!qword_27F760F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F00);
  }

  return result;
}

unint64_t sub_254F5F6F0()
{
  result = qword_27F760F18;
  if (!qword_27F760F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F18);
  }

  return result;
}

void StructuredContext.SiriRequestContext.MeCard.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_254F4E9D0();
  sub_254F4F268();
  v13 = v12;
  sub_254F52F94(&qword_27F760F20, &qword_254F9DAA8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v14);
  sub_254F4EFBC(v10, v10[3]);
  sub_254F5F69C();
  sub_254F4E9E8();
  sub_254F9BF10();
  if (v11)
  {
    sub_254F6436C();
    sub_254F4DA5C(v10);
  }

  else
  {
    LOBYTE(v38[0]) = 0;
    sub_254F64260();
    v15 = sub_254F9BC50();
    v36 = v16;
    sub_254F6432C(1);
    sub_254F64260();
    v34 = sub_254F9BC50();
    v35 = v17;
    sub_254F6432C(2);
    sub_254F64260();
    v18 = sub_254F9BC50();
    v20 = v19;
    v33 = v18;
    v32 = v13;
    sub_254F6432C(3);
    sub_254F64260();
    v21 = sub_254F9BC50();
    v23 = v22;
    v31 = v21;
    v30 = v15;
    sub_254F6432C(4);
    sub_254F64260();
    v24 = sub_254F9BC50();
    v26 = v25;
    v29 = v24;
    sub_254F52F94(&qword_27F760F08, &qword_254F9DAA0);
    v39[0] = 5;
    sub_254F5FB38(&qword_27F760F28, sub_254F5FBB0, MEMORY[0x277D83978]);
    sub_254F9BD10();
    v27 = sub_254F4E318();
    v28(v27);
    v37[0] = v30;
    v37[1] = v36;
    v37[2] = v34;
    v37[3] = v35;
    v37[4] = v33;
    v37[5] = v20;
    v37[6] = v31;
    v37[7] = v23;
    v37[8] = v29;
    v37[9] = v26;
    v37[10] = a10;
    memcpy(v32, v37, 0x58uLL);
    sub_254F5FC04(v37, v38);
    sub_254F4DA5C(v10);
    v38[0] = v30;
    v38[1] = v36;
    v38[2] = v34;
    v38[3] = v35;
    v38[4] = v33;
    v38[5] = v20;
    v38[6] = v31;
    v38[7] = v23;
    v38[8] = v29;
    v38[9] = v26;
    v38[10] = a10;
    sub_254F5FC3C(v38);
  }

  sub_254F643E4();
  sub_254F4F348();
}

uint64_t sub_254F5FB38(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_254F55B94(&qword_27F760F08, &qword_254F9DAA0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_254F5FBB0()
{
  result = qword_27F760F30;
  if (!qword_27F760F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F30);
  }

  return result;
}

unint64_t StructuredContext.SiriRequestContext.DeviceIdiom.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 11;
  if (result < 0xB)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void *StructuredContext.SiriRequestContext.init(sessionID:requestID:inputOrigin:responseMode:isEyesFree:isMultiUser:isVoiceTriggerEnabled:isTextToSpeechEnabled:isTriggerlessFollowup:deviceRestrictions:bargeInModes:identifiedUser:encodedLocation:countryCode:siriLocale:contentRestrictions:uiScale:temperatureUnit:allowUserGeneratedContent:censorSpeech:meCard:deviceIdiom:didPSCFire:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, __int16 a23, const void *a24, char *a25, char a26)
{
  *(a9 + 88) = xmmword_254F9DA30;
  *(a9 + 112) = xmmword_254F9DA40;
  *(a9 + 328) = 11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  v28 = *a13;
  v27 = a13[1];
  v29 = *(a13 + 8);
  *(a9 + 64) = a10;
  v30 = *(a18 + 32);
  *(a9 + 65) = *(&a10 + 1);
  v31 = *(a18 + 36);
  v35 = *a25;
  *(a9 + 104) = 0;
  *(a9 + 160) = 0;
  *(a9 + 168) = 0;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 192) = 0;
  v32 = (a9 + 192);
  *(a9 + 176) = xmmword_254F9DA50;
  *(a9 + 196) = 0;
  *(a9 + 256) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 320) = 0;
  *(a9 + 240) = 0u;
  sub_254F5C28C(0, 1);
  *(a9 + 88) = v28;
  *(a9 + 96) = v27;
  *(a9 + 104) = v29;
  sub_254F5C38C(*(a9 + 112), *(a9 + 120));
  *(a9 + 112) = a14;
  *(a9 + 128) = a15;
  *(a9 + 144) = a16;
  *(a9 + 152) = a17;
  sub_254F5C5AC(*(a9 + 160), *(a9 + 168), *(a9 + 176));
  v33 = *(a18 + 16);
  *(a9 + 160) = *a18;
  *(a9 + 176) = v33;
  *(a9 + 196) = v31;
  *v32 = v30;
  *(a9 + 200) = a19;
  *(a9 + 208) = a20 & 1;
  *(a9 + 216) = a21;
  *(a9 + 224) = a22;
  *(a9 + 232) = a23;
  memcpy(__dst, (a9 + 240), 0x58uLL);
  sub_254F60B2C(__dst, &qword_27F760E98, &qword_254F9DA60);
  result = memcpy((a9 + 240), a24, 0x58uLL);
  *(a9 + 328) = v35;
  *(a9 + 329) = a26;
  return result;
}

BOOL static StructuredContext.SiriRequestContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 24);
  v200 = *(a1 + 32);
  v205 = *(a1 + 16);
  v206 = *(a1 + 40);
  v196 = *(a1 + 48);
  v207 = *(a1 + 56);
  v199 = *(a1 + 64);
  v194 = *(a1 + 65);
  v193 = *(a1 + 66);
  v192 = *(a1 + 67);
  v191 = *(a1 + 68);
  v188 = *(a1 + 96);
  v189 = *(a1 + 88);
  v190 = *(a1 + 104);
  v180 = *(a1 + 112);
  v184 = *(a1 + 120);
  v172 = *(a1 + 128);
  v176 = *(a1 + 136);
  v154 = *(a1 + 144);
  v174 = *(a1 + 152);
  v167 = *(a1 + 160);
  v168 = *(a1 + 168);
  v169 = *(a1 + 184);
  v170 = *(a1 + 176);
  v148 = *(a1 + 196);
  v7 = *(a1 + 200);
  v145 = *(a1 + 192);
  HIDWORD(v136) = *(a1 + 208);
  v124 = *(a1 + 216);
  v133 = *(a1 + 224);
  HIDWORD(v127) = *(a1 + 232);
  HIDWORD(v115) = *(a1 + 233);
  memcpy(__dst, (a1 + 240), sizeof(__dst));
  LODWORD(v112) = *(a1 + 328);
  HIDWORD(v112) = *(a1 + 329);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v195 = *(a2 + 48);
  v201 = *(a2 + 56);
  v197 = *(a2 + 64);
  v198 = *(a2 + 65);
  v202 = *(a2 + 66);
  v203 = *(a2 + 67);
  v204 = *(a2 + 68);
  v185 = *(a2 + 88);
  v187 = *(a2 + 96);
  v186 = *(a2 + 104);
  v177 = *(a2 + 112);
  v181 = *(a2 + 120);
  v171 = *(a2 + 128);
  v175 = *(a2 + 136);
  v151 = *(a2 + 144);
  v173 = *(a2 + 152);
  v163 = *(a2 + 160);
  v166 = *(a2 + 176);
  v157 = *(a2 + 168);
  v160 = *(a2 + 184);
  v142 = *(a2 + 196);
  v14 = *(a2 + 200);
  v139 = *(a2 + 192);
  LODWORD(v136) = *(a2 + 208);
  v118 = *(a2 + 216);
  v130 = *(a2 + 224);
  HIDWORD(v121) = *(a2 + 232);
  LODWORD(v115) = *(a2 + 233);
  memcpy(__src, (a2 + 240), 0x58uLL);
  v15 = *(a2 + 328);
  v16 = *(a2 + 329);
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    if (v4 != v8 || v5 != v9)
    {
      v18 = sub_254F4FFF8(v4, v5, v8, v9);
      v15 = v8;
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11)
    {
      return 0;
    }

    if (v205 != v10 || v6 != v11)
    {
      v20 = sub_254F4FFF8(v205, v6, v10, v11);
      v15 = v8;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v206)
  {
    v21 = v207;
    if (!v12)
    {
      return 0;
    }

    if (v200 != v13 || v206 != v12)
    {
      v23 = sub_254F4FFF8(v200, v206, v13, v12);
      v15 = v8;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v21 = v207;
    if (v12)
    {
      return 0;
    }
  }

  if (v21)
  {
    v24 = v204;
    v25 = v203;
    v26 = v202;
    if (!v201)
    {
      return 0;
    }

    if (v196 != v195 || v21 != v201)
    {
      v28 = sub_254F4FFF8(v196, v21, v195, v201);
      v15 = v8;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v24 = v204;
    v25 = v203;
    v26 = v202;
    if (v201)
    {
      return 0;
    }
  }

  if (v199 == 2)
  {
    v29 = v198;
    if (v197 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v29 = v198;
    if (v197 == 2 || ((v197 ^ v199) & 1) != 0)
    {
      return result;
    }
  }

  if (v194 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v29 == 2 || ((v29 ^ v194) & 1) != 0)
    {
      return result;
    }
  }

  if (v193 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v26 == 2 || ((v26 ^ v193) & 1) != 0)
    {
      return result;
    }
  }

  if (v192 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v25 == 2 || ((v25 ^ v192) & 1) != 0)
    {
      return result;
    }
  }

  if (v191 == 2)
  {
    if (v24 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v24 == 2 || ((v24 ^ v191) & 1) != 0)
    {
      return result;
    }
  }

  v31 = v15;
  sub_254F551E4();
  if ((v32 & 1) == 0)
  {
    return 0;
  }

  sub_254F551E4();
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  if (v188 == 1)
  {
    sub_254F5C238(v189, 1);
    v34 = v187;
    if (v187 == 1)
    {
      sub_254F5C238(v185, 1);
      v35 = sub_254F5C28C(v189, 1);
      goto LABEL_72;
    }

    v43 = v185;
    sub_254F5C238(v185, v187);
    v44 = v189;
LABEL_70:
    sub_254F5C28C(v44, v188);
    sub_254F5C28C(v43, v34);
    return 0;
  }

  v213[0] = v189;
  v213[1] = v188;
  LOWORD(v213[2]) = v190;
  if (v187 == 1)
  {
    sub_254F5C238(v189, v188);
    v43 = v185;
    sub_254F5C238(v185, 1);
    sub_254F5C238(v189, v188);

    v44 = v189;
    v34 = 1;
    goto LABEL_70;
  }

  v212[0] = v185;
  v212[1] = v187;
  LOWORD(v212[2]) = v186;
  v45 = static StructuredContext.SiriRequestContext.User.== infix(_:_:)(v213, v212);
  v46 = sub_254F6437C();
  sub_254F5C238(v46, v47);
  sub_254F5C238(v185, v187);
  v48 = sub_254F6437C();
  sub_254F5C238(v48, v49);

  v50 = sub_254F6437C();
  v35 = sub_254F5C28C(v50, v51);
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  if (v184 >> 60 == 15)
  {
    if (v181 >> 60 == 15)
    {
      sub_254F64438(v35, v36, v37, v38, v39, v40, v41, v42, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v180, v181, v184);
      sub_254F5C2EC(v178, v182);
      v52 = sub_254F4F220();
      v54 = sub_254F5C38C(v52, v53);
      goto LABEL_80;
    }

LABEL_76:
    sub_254F64438(v35, v36, v37, v38, v39, v40, v41, v42, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v180, v181, v184);
    sub_254F5C2EC(v179, v183);
    v62 = sub_254F4F220();
    sub_254F5C38C(v62, v63);
    sub_254F5C38C(v179, v183);
    return 0;
  }

  if (v181 >> 60 == 15)
  {
    goto LABEL_76;
  }

  sub_254F5C2EC(v180, v184);
  sub_254F5C2EC(v177, v181);
  v64 = MEMORY[0x259C2F750](v180, v184, v177, v181);
  sub_254F5C38C(v177, v181);
  v54 = sub_254F5C38C(v180, v184);
  if ((v64 & 1) == 0)
  {
    return 0;
  }

LABEL_80:
  if (v176)
  {
    if (!v175)
    {
      return 0;
    }

    if (v172 != v171 || v176 != v175)
    {
      v54 = sub_254F9BE30();
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v175)
  {
    return 0;
  }

  if (v174)
  {
    if (!v173)
    {
      return 0;
    }

    if (v154 != v151 || v174 != v173)
    {
      v54 = sub_254F9BE30();
      if ((v54 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v173)
  {
    return 0;
  }

  if (v170 != 1)
  {
    v213[0] = v167;
    v213[1] = v168;
    v213[2] = v170;
    v213[3] = v169;
    LODWORD(v213[4]) = v145;
    BYTE4(v213[4]) = (v145 | (v148 << 32)) >> 32;
    if (v166 != 1)
    {
      *v210 = v163;
      *&v210[8] = v157;
      *&v210[16] = v166;
      *&v210[24] = v160;
      v210[36] = (v139 | (v142 << 32)) >> 32;
      *&v210[32] = v139;
      v208 = static StructuredContext.SiriRequestContext.ContentRestriction.== infix(_:_:)(v213, v210);
      v211[0] = *v210;
      v211[1] = *&v210[16];
      *(&v211[1] + 13) = *&v210[29];
      sub_254F643C4();
      sub_254F6435C();
      sub_254F5C540(v97, v98, v99);
      sub_254F5C540(v163, v157, v166);
      sub_254F643C4();
      sub_254F6435C();
      sub_254F5C540(v100, v101, v102);
      sub_254F5D2A8(v211);
      sub_254F6438C();
      sub_254F5D2A8(v212);
      sub_254F643C4();
      sub_254F6435C();
      sub_254F5C5AC(v103, v104, v105);
      if ((v208 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_106;
    }

    sub_254F6438C();
    v89 = sub_254F5C540(v167, v168, v170);
    sub_254F64418(v89, v90, v91, v92, v93, v94, v95, v96, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163);
    sub_254F5C540(v167, v168, v170);
    sub_254F5D2A8(v212);
LABEL_104:
    sub_254F5C5AC(v167, v168, v170);
    sub_254F5C5AC(v164, v158, v166);
    return 0;
  }

  v67 = sub_254F643D0(v54, v55, v56, v57, v58, v59, v60, v61, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160, v163, v166, v167);
  v70 = sub_254F5C540(v67, v68, v69);
  if (v166 != 1)
  {
    sub_254F5C540(v164, v158, v166);
    goto LABEL_104;
  }

  v78 = sub_254F64418(v70, v71, v72, v73, v74, v75, v76, v77, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v164);
  v86 = sub_254F643D0(v78, v79, v80, v81, v82, v83, v84, v85, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v165, 1, v167);
  sub_254F5C5AC(v86, v87, v88);
LABEL_106:
  if ((v136 & 0x100000000) != 0)
  {
    if (!v136)
    {
      return 0;
    }
  }

  else
  {
    v106 = v136;
    if (v7 != v14)
    {
      v106 = 1;
    }

    if (v106)
    {
      return 0;
    }
  }

  if (v133)
  {
    if (!v130)
    {
      return 0;
    }

    v107 = v124 == v118 && v133 == v130;
    if (!v107 && (sub_254F9BE30() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v130)
  {
    return 0;
  }

  if (HIDWORD(v127) == 2)
  {
    if (HIDWORD(v121) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (HIDWORD(v121) == 2 || ((HIDWORD(v121) ^ HIDWORD(v127)) & 1) != 0)
    {
      return result;
    }
  }

  if (HIDWORD(v115) == 2)
  {
    if (v115 != 2)
    {
      return 0;
    }

LABEL_131:
    memcpy(v217, __dst, sizeof(v217));
    v108 = __dst[10];
    memcpy(v216, __src, sizeof(v216));
    v109 = __src[10];
    if (__dst[10])
    {
      memcpy(v213, __dst, 0x50uLL);
      v213[10] = __dst[10];
      memcpy(v212, v213, 0x58uLL);
      if (__src[10])
      {
        memcpy(v211, __src, 0x50uLL);
        *&v211[5] = __src[10];
        sub_254F5C750(__dst, v210);
        sub_254F5C750(__src, v210);
        sub_254F5C750(v213, v210);
        v110 = static StructuredContext.SiriRequestContext.MeCard.== infix(_:_:)(v212, v211);
        memcpy(v209, v211, sizeof(v209));
        sub_254F5FC3C(v209);
        memcpy(v210, v212, sizeof(v210));
        sub_254F5FC3C(v210);
        memcpy(v211, v217, 0x50uLL);
        *&v211[5] = v108;
        sub_254F60B2C(v211, &qword_27F760E98, &qword_254F9DA60);
        if ((v110 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_140;
      }

      memcpy(v211, v213, 0x58uLL);
      sub_254F5C750(__dst, v210);
      sub_254F5C750(__src, v210);
      sub_254F5C750(v213, v210);
      sub_254F5FC3C(v211);
    }

    else
    {
      if (!__src[10])
      {
        memcpy(v213, __dst, 0x50uLL);
        v213[10] = 0;
        sub_254F5C750(__dst, v212);
        sub_254F5C750(__src, v212);
        sub_254F60B2C(v213, &qword_27F760E98, &qword_254F9DA60);
LABEL_140:
        if (v112 == 11)
        {
          if (v31 != 11)
          {
            return 0;
          }
        }

        else if (v31 == 11 || v112 != v31)
        {
          return 0;
        }

        if (HIDWORD(v112) != 2)
        {
          return v16 != 2 && ((v16 ^ HIDWORD(v112)) & 1) == 0;
        }

        return v16 == 2;
      }

      sub_254F5C750(__dst, v213);
      sub_254F5C750(__src, v213);
    }

    memcpy(v213, v217, 0x50uLL);
    v213[10] = v108;
    memcpy(v214, v216, sizeof(v214));
    v215 = v109;
    sub_254F60B2C(v213, &qword_27F760F38, &qword_254F9DAB0);
    return 0;
  }

  result = 0;
  if (v115 != 2 && ((v115 ^ HIDWORD(v115)) & 1) == 0)
  {
    goto LABEL_131;
  }

  return result;
}

uint64_t sub_254F60B2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_254F52F94(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_254F60B8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x69724F7475706E69 && a2 == 0xEB000000006E6967;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7246736579457369 && a2 == 0xEA00000000006565;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x5569746C754D7369 && a2 == 0xEB00000000726573;
            if (v10 || (sub_254F9BE30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x8000000254FA6510 == a2;
              if (v11 || (sub_254F9BE30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x8000000254FA6530 == a2;
                if (v12 || (sub_254F9BE30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000015 && 0x8000000254FA6550 == a2;
                  if (v13 || (sub_254F9BE30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x8000000254FA6570 == a2;
                    if (v14 || (sub_254F9BE30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4D6E496567726162 && a2 == 0xEC0000007365646FLL;
                      if (v15 || (sub_254F9BE30() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x696669746E656469 && a2 == 0xEE00726573556465;
                        if (v16 || (sub_254F9BE30() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4C6465646F636E65 && a2 == 0xEF6E6F697461636FLL;
                          if (v17 || (sub_254F9BE30() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
                            if (v18 || (sub_254F9BE30() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x61636F4C69726973 && a2 == 0xEA0000000000656CLL;
                              if (v19 || (sub_254F9BE30() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000013 && 0x8000000254FA6590 == a2;
                                if (v20 || (sub_254F9BE30() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x656C6163536975 && a2 == 0xE700000000000000;
                                  if (v21 || (sub_254F9BE30() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x74617265706D6574 && a2 == 0xEF74696E55657275;
                                    if (v22 || (sub_254F9BE30() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000019 && 0x8000000254FA65B0 == a2;
                                      if (v23 || (sub_254F9BE30() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x7053726F736E6563 && a2 == 0xEC00000068636565;
                                        if (v24 || (sub_254F9BE30() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x64726143656DLL && a2 == 0xE600000000000000;
                                          if (v25 || (sub_254F9BE30() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6449656369766564 && a2 == 0xEB000000006D6F69;
                                            if (v26 || (sub_254F9BE30() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else if (a1 == 0x6946435350646964 && a2 == 0xEA00000000006572)
                                            {

                                              return 22;
                                            }

                                            else
                                            {
                                              v28 = sub_254F9BE30();

                                              if (v28)
                                              {
                                                return 22;
                                              }

                                              else
                                              {
                                                return 23;
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

unint64_t sub_254F612A8(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x4974736575716572;
      break;
    case 2:
      result = 0x69724F7475706E69;
      break;
    case 3:
      result = 0x65736E6F70736572;
      break;
    case 4:
      result = 0x7246736579457369;
      break;
    case 5:
      result = 0x5569746C754D7369;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x4D6E496567726162;
      break;
    case 11:
      result = 0x696669746E656469;
      break;
    case 12:
      result = 0x4C6465646F636E65;
      break;
    case 13:
      result = 0x437972746E756F63;
      break;
    case 14:
      result = 0x61636F4C69726973;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x656C6163536975;
      break;
    case 17:
      result = 0x74617265706D6574;
      break;
    case 18:
      result = 0xD000000000000019;
      break;
    case 19:
      result = 0x7053726F736E6563;
      break;
    case 20:
      result = 0x64726143656DLL;
      break;
    case 21:
      result = 0x6449656369766564;
      break;
    case 22:
      result = 0x6946435350646964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F6157C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F60B8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F615A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F612A0();
  *a1 = result;
  return result;
}

uint64_t sub_254F615CC(uint64_t a1)
{
  v2 = sub_254F62BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F61608(uint64_t a1)
{
  v2 = sub_254F62BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.SiriRequestContext.encode(to:)()
{
  sub_254F4E9D0();
  v4 = v3;
  v5 = sub_254F52F94(&qword_27F760F40, &qword_254F9DAB8);
  sub_254F4DF18();
  v7 = v6;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v8);
  sub_254F4E558();
  v17 = v0[11];
  v18 = v0[12];
  v15 = v0[14];
  v16 = v0[15];
  v13 = v0[22];
  v14 = v0[21];
  v12 = v0[20];
  memcpy(v21, v0 + 30, 0x58uLL);
  sub_254F4EFBC(v4, v4[3]);
  sub_254F62BE4();
  sub_254F4F360();
  sub_254F9BF20();
  v20[0] = 0;
  sub_254F9BD40();
  if (v1)
  {
    (*(v7 + 8))(v2, v5);
  }

  else
  {
    sub_254F64338(1);
    sub_254F642FC();
    sub_254F9BD40();
    sub_254F64338(2);
    sub_254F642FC();
    sub_254F9BD40();
    sub_254F64338(3);
    sub_254F642FC();
    sub_254F9BD40();
    sub_254F64344(4);
    sub_254F642FC();
    sub_254F9BD50();
    sub_254F64344(5);
    sub_254F642FC();
    sub_254F9BD50();
    sub_254F64344(6);
    sub_254F642FC();
    sub_254F9BD50();
    sub_254F64344(7);
    sub_254F642FC();
    sub_254F9BD50();
    sub_254F64344(8);
    sub_254F642FC();
    sub_254F9BD50();
    sub_254F52F94(&qword_27F760DD0, &qword_254F9DAC0);
    sub_254F50650(&qword_280C460D8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_254F643A4();
    sub_254F642FC();
    sub_254F9BE00();
    sub_254F643A4();
    sub_254F642FC();
    sub_254F9BE00();
    sub_254F5C238(v17, v18);
    sub_254F62C38();
    sub_254F643A4();
    sub_254F4F39C();
    sub_254F9BD80();
    sub_254F5C28C(v17, v18);
    sub_254F5C2EC(v15, v16);
    sub_254F62C8C();
    sub_254F643A4();
    sub_254F4F39C();
    sub_254F9BD80();
    sub_254F5C38C(v15, v16);
    sub_254F64338(13);
    sub_254F642C4();
    sub_254F9BD40();
    sub_254F64338(14);
    sub_254F642C4();
    sub_254F9BD40();
    v19[0] = 15;
    sub_254F5C540(v12, v14, v13);
    sub_254F62CE0();
    sub_254F643A4();
    sub_254F4F39C();
    sub_254F9BD80();
    sub_254F4F18C();
    sub_254F64338(16);
    sub_254F642C4();
    sub_254F9BD60();
    sub_254F64338(17);
    sub_254F642C4();
    sub_254F9BD40();
    sub_254F64344(18);
    sub_254F4F39C();
    sub_254F9BD50();
    sub_254F64344(19);
    sub_254F4F39C();
    sub_254F9BD50();
    memcpy(v20, v21, sizeof(v20));
    v19[95] = 20;
    sub_254F5C750(v21, v19);
    sub_254F62D34();
    sub_254F4F39C();
    sub_254F9BD80();
    memcpy(v19, v20, 0x58uLL);
    sub_254F60B2C(v19, &qword_27F760E98, &qword_254F9DA60);
    sub_254F62D88();
    sub_254F4F39C();
    sub_254F9BD80();
    sub_254F4F39C();
    sub_254F9BD50();
    v11 = sub_254F643C4();
    v10(v11, v9);
  }

  sub_254F4FC6C();
  sub_254F4F348();
}

void StructuredContext.SiriRequestContext.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_254F4E9D0();
  v12 = v11;
  v14 = v13;
  sub_254F52F94(&qword_27F760F78, &qword_254F9DAC8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  v18 = v12[3];
  v76 = v12;
  sub_254F4EFBC(v12, v18);
  sub_254F62BE4();
  sub_254F4E9E8();
  sub_254F9BF10();
  if (v10)
  {
    sub_254F642D0();
    v96 = 0;
    v97 = 0;
    v98 = 0;
    sub_254F4DF64();
    sub_254F4E47C();
    sub_254F64350();
    sub_254F4E568();
    sub_254F4DA5C(v76);

    if (v12)
    {
    }

    if (v17)
    {
    }

    sub_254F5C28C(v97, v80);
    sub_254F5C38C(v96, v88);

    sub_254F5C5AC(v95, v94, v78);

    v101 = v91;
    v102 = v90;
    v103 = v89;
    v104 = v87;
    v105 = v86;
    v106 = v85;
    v107 = v84;
    v108 = v82;
    v109 = v81;
    v110 = v79;
    v111 = v77;
    sub_254F60B2C(&v101, &qword_27F760E98, &qword_254F9DA60);
  }

  else
  {
    v19 = v14;
    LOBYTE(v101) = 0;
    sub_254F642AC();
    v20 = sub_254F9BC50();
    v73 = v21;
    sub_254F4E024(1);
    v22 = sub_254F9BC50();
    v72 = v23;
    sub_254F4E024(2);
    v70 = sub_254F9BC50();
    v71 = v24;
    sub_254F4E024(3);
    v68 = sub_254F9BC50();
    v69 = v25;
    sub_254F4E024(4);
    v67 = sub_254F9BC60();
    sub_254F4E024(5);
    v66 = sub_254F9BC60();
    sub_254F4E024(6);
    v65 = sub_254F9BC60();
    sub_254F4E024(7);
    v64 = sub_254F9BC60();
    sub_254F4E024(8);
    v63 = sub_254F9BC60();
    v62 = v20;
    sub_254F52F94(&qword_27F760DD0, &qword_254F9DAC0);
    LOBYTE(v100[0]) = 9;
    sub_254F50650(&qword_280C459D8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_254F642AC();
    sub_254F9BD10();
    v75 = v101;
    LOBYTE(v100[0]) = 10;
    sub_254F642AC();
    sub_254F9BD10();
    v74 = v101;
    LOBYTE(v100[0]) = 11;
    v26 = sub_254F62DDC();
    sub_254F64270(&type metadata for StructuredContext.SiriRequestContext.User, v27, v28, v29, v26);
    v97 = v101;
    v80 = v102;
    v98 = v103;
    sub_254F5C28C(0, 1);
    LOBYTE(v100[0]) = 12;
    v30 = sub_254F62E30();
    sub_254F64270(MEMORY[0x277CC9318], v31, v32, v33, v30);
    v96 = v101;
    v88 = v102;
    sub_254F5C38C(0, 0xF000000000000000);
    sub_254F4E024(13);
    v61 = sub_254F9BC50();
    v178 = v34;
    sub_254F4E024(14);
    v60 = sub_254F9BC50();
    v99 = v35;
    LOBYTE(v100[0]) = 15;
    v36 = sub_254F62E84();
    sub_254F64270(&type metadata for StructuredContext.SiriRequestContext.ContentRestriction, v37, v38, v39, v36);
    v94 = v102;
    v95 = v101;
    v78 = v103;
    v92 = v105 | (BYTE4(v105) << 32);
    v93 = v104;
    sub_254F5C5AC(0, 0, 1);
    sub_254F4E024(16);
    v59 = sub_254F9BC70();
    v171 = v40 & 1;
    sub_254F4E024(17);
    v58 = sub_254F9BC50();
    v83 = v41;
    sub_254F4E024(18);
    v57 = sub_254F9BC60();
    sub_254F4E024(19);
    v56 = sub_254F9BC60();
    v156 = 20;
    sub_254F62ED8();
    sub_254F642AC();
    sub_254F9BC90();
    v90 = v158;
    v91 = v157;
    v89 = v159;
    v86 = v161;
    v87 = v160;
    v84 = v163;
    v85 = v162;
    v81 = v165;
    v82 = v164;
    v79 = v166;
    v77 = v167;
    memset(v154, 0, sizeof(v154));
    v155 = 0;
    sub_254F60B2C(v154, &qword_27F760E98, &qword_254F9DA60);
    LOBYTE(v100[0]) = 21;
    v42 = sub_254F62F2C();
    sub_254F64270(&type metadata for StructuredContext.SiriRequestContext.DeviceIdiom, v43, v44, v45, v42);
    v55 = v101;
    v153 = 22;
    sub_254F642AC();
    v54 = sub_254F9BC60();
    v46 = sub_254F4F2F4();
    v47(v46);
    v100[0] = v62;
    v100[1] = v73;
    v53 = v22;
    v100[2] = v22;
    v100[3] = v72;
    v100[4] = v70;
    v100[5] = v71;
    v100[6] = v68;
    v100[7] = v69;
    LOBYTE(v100[8]) = v67;
    BYTE1(v100[8]) = v66;
    BYTE2(v100[8]) = v65;
    BYTE3(v100[8]) = v64;
    BYTE4(v100[8]) = v63;
    *(&v100[8] + 5) = v176;
    HIBYTE(v100[8]) = v177;
    v100[9] = v75;
    v100[10] = v74;
    v100[11] = v97;
    v100[12] = v80;
    LOWORD(v100[13]) = v98;
    *(&v100[13] + 2) = v174;
    HIWORD(v100[13]) = v175;
    v100[14] = v96;
    v100[15] = v88;
    v100[16] = v61;
    v100[17] = v178;
    v100[18] = v60;
    v100[19] = v99;
    v100[20] = v95;
    v100[21] = v94;
    v100[22] = v78;
    LODWORD(v20) = v92;
    v100[23] = v93;
    *(&v100[24] + 5) = v172;
    HIDWORD(v100[26]) = *&v170[3];
    *(&v100[26] + 1) = *v170;
    *(&v100[29] + 2) = v168;
    v48 = HIDWORD(v92);
    BYTE4(v100[24]) = BYTE4(v92);
    LODWORD(v100[24]) = v92;
    HIBYTE(v100[24]) = v173;
    v49 = v59;
    v100[25] = v59;
    HIWORD(v100[29]) = v169;
    v50 = v171;
    LOBYTE(v100[26]) = v171;
    v100[27] = v58;
    v51 = v83;
    v100[28] = v83;
    LOBYTE(v100[29]) = v57;
    BYTE1(v100[29]) = v56;
    v100[30] = v91;
    v100[31] = v90;
    v100[32] = v89;
    v100[33] = v87;
    v100[34] = v86;
    v100[35] = v85;
    v100[36] = v84;
    v100[37] = v82;
    v100[38] = v81;
    v100[39] = v79;
    v100[40] = v77;
    LOBYTE(v100[41]) = v55;
    BYTE1(v100[41]) = v54;
    memcpy(v19, v100, 0x14AuLL);
    sub_254F62F80(v100, &v101);
    sub_254F4DA5C(v76);
    v101 = v62;
    v102 = v73;
    v103 = v53;
    v104 = v72;
    v105 = v70;
    v106 = v71;
    v107 = v68;
    v108 = v69;
    LOBYTE(v109) = v67;
    BYTE1(v109) = v66;
    BYTE2(v109) = v65;
    BYTE3(v109) = v64;
    BYTE4(v109) = v63;
    v110 = v75;
    v111 = v74;
    v112 = v97;
    v113 = v80;
    v114 = v98;
    v117 = v96;
    v118 = v88;
    *(&v109 + 5) = v176;
    HIBYTE(v109) = v177;
    v115 = v174;
    v116 = v175;
    v119 = v61;
    v120 = v178;
    v121 = v60;
    v122 = v99;
    v123 = v95;
    v124 = v94;
    v125 = v78;
    v126 = v93;
    v128 = v48;
    v127 = v20;
    v130 = v173;
    v129 = v172;
    v131 = v49;
    v132 = v50;
    *&v133[3] = *&v170[3];
    *v133 = *v170;
    v134 = v58;
    v135 = v51;
    v136 = v57;
    v137 = v56;
    v139 = v169;
    v138 = v168;
    v140 = v91;
    v141 = v90;
    v142 = v89;
    v143 = v87;
    v144 = v86;
    v145 = v85;
    v146 = v84;
    v147 = v82;
    v148 = v81;
    v149 = v79;
    v150 = v77;
    v151 = v55;
    v152 = v54;
    sub_254F62FB8(&v101);
  }

  sub_254F643E4();
  sub_254F4F348();
}

uint64_t static StructuredContext.SiriRequestContext.carPlayDeviceRestrictionIdentifier.getter()
{
  swift_beginAccess();

  return sub_254F4F220();
}

uint64_t static StructuredContext.SiriRequestContext.carPlayDeviceRestrictionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aStark = a1;
  qword_27F760E90 = a2;
}

uint64_t (*static StructuredContext.SiriRequestContext.carPlayDeviceRestrictionIdentifier.modify())()
{
  sub_254F4F220();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t StructuredContext.SiriRequestContext.isCarPlayEnvironment.getter()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  v4[0] = *aStark;
  v4[1] = qword_27F760E90;
  v3[2] = v4;

  LOBYTE(v1) = sub_254F62B34(sub_254F63058, v3, v1);

  return v1 & 1;
}

CLLocation_optional __swiftcall StructuredContext.SiriRequestContext.location()()
{
  v1 = 0;
  v2 = *(v0 + 120);
  if (v2 >> 60 != 15)
  {
    v3 = *(v0 + 112);
    sub_254F63078(0, &qword_27F760FA8, 0x277CCAAC8);
    sub_254F63078(0, &qword_27F760FB0, 0x277CE41F8);
    sub_254F5C300(v3, v2);
    v1 = sub_254F9BB40();
    sub_254F5C38C(v3, v2);
  }

  v6 = v1;
  result.value._internal = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

BOOL sub_254F62B34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

unint64_t sub_254F62BE4()
{
  result = qword_27F760F48;
  if (!qword_27F760F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F48);
  }

  return result;
}

unint64_t sub_254F62C38()
{
  result = qword_27F760F50;
  if (!qword_27F760F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F50);
  }

  return result;
}

unint64_t sub_254F62C8C()
{
  result = qword_27F760F58;
  if (!qword_27F760F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F58);
  }

  return result;
}

unint64_t sub_254F62CE0()
{
  result = qword_27F760F60;
  if (!qword_27F760F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F60);
  }

  return result;
}

unint64_t sub_254F62D34()
{
  result = qword_27F760F68;
  if (!qword_27F760F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F68);
  }

  return result;
}

unint64_t sub_254F62D88()
{
  result = qword_27F760F70;
  if (!qword_27F760F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F70);
  }

  return result;
}

unint64_t sub_254F62DDC()
{
  result = qword_27F760F80;
  if (!qword_27F760F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F80);
  }

  return result;
}

unint64_t sub_254F62E30()
{
  result = qword_27F760F88;
  if (!qword_27F760F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F88);
  }

  return result;
}

unint64_t sub_254F62E84()
{
  result = qword_27F760F90;
  if (!qword_27F760F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F90);
  }

  return result;
}

unint64_t sub_254F62ED8()
{
  result = qword_27F760F98;
  if (!qword_27F760F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760F98);
  }

  return result;
}

unint64_t sub_254F62F2C()
{
  result = qword_27F760FA0;
  if (!qword_27F760FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FA0);
  }

  return result;
}

uint64_t sub_254F62FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_254F9BE30() & 1;
  }
}

uint64_t sub_254F63078(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_254F630BC()
{
  result = qword_27F760FB8;
  if (!qword_27F760FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FB8);
  }

  return result;
}

unint64_t sub_254F63114()
{
  result = qword_27F760FC0;
  if (!qword_27F760FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FC0);
  }

  return result;
}

uint64_t sub_254F63168(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F6318C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_254F631A8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254F631D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F631F4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_254F63214(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 330))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_254F63254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 330) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 330) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_254F632FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_254F63310(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 37))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F63364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 37) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_254F633D0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_254F633E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 18))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F63438(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *_s18SiriRequestContextV4UserV14ClassificationOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_254F63580(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_254F635C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_254F6362C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254F63680(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s18SiriRequestContextV11DeviceIdiomOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18SiriRequestContextV11DeviceIdiomOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t _s18SiriRequestContextV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEA)
  {
    if (a2 + 22 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 22) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 23;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v5 = v6 - 23;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s18SiriRequestContextV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE9)
  {
    v6 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
          *result = a2 + 22;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_254F639D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s18SiriRequestContextV4UserV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s18SiriRequestContextV18ContentRestrictionV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_254F63C6C()
{
  result = qword_27F760FC8;
  if (!qword_27F760FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FC8);
  }

  return result;
}

unint64_t sub_254F63CC4()
{
  result = qword_27F760FD0;
  if (!qword_27F760FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FD0);
  }

  return result;
}

unint64_t sub_254F63D1C()
{
  result = qword_27F760FD8;
  if (!qword_27F760FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FD8);
  }

  return result;
}

unint64_t sub_254F63D74()
{
  result = qword_27F760FE0;
  if (!qword_27F760FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FE0);
  }

  return result;
}

unint64_t sub_254F63DCC()
{
  result = qword_27F760FE8;
  if (!qword_27F760FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FE8);
  }

  return result;
}

unint64_t sub_254F63E24()
{
  result = qword_27F760FF0;
  if (!qword_27F760FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FF0);
  }

  return result;
}

unint64_t sub_254F63E7C()
{
  result = qword_27F760FF8;
  if (!qword_27F760FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F760FF8);
  }

  return result;
}

unint64_t sub_254F63ED4()
{
  result = qword_27F761000;
  if (!qword_27F761000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761000);
  }

  return result;
}

unint64_t sub_254F63F2C()
{
  result = qword_27F761008;
  if (!qword_27F761008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761008);
  }

  return result;
}

unint64_t sub_254F63F84()
{
  result = qword_27F761010;
  if (!qword_27F761010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761010);
  }

  return result;
}

unint64_t sub_254F63FDC()
{
  result = qword_27F761018;
  if (!qword_27F761018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761018);
  }

  return result;
}

unint64_t sub_254F64034()
{
  result = qword_27F761020;
  if (!qword_27F761020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761020);
  }

  return result;
}

unint64_t sub_254F6408C()
{
  result = qword_27F761028;
  if (!qword_27F761028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761028);
  }

  return result;
}

unint64_t sub_254F640E4()
{
  result = qword_27F761030;
  if (!qword_27F761030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761030);
  }

  return result;
}

unint64_t sub_254F6413C()
{
  result = qword_27F761038;
  if (!qword_27F761038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761038);
  }

  return result;
}

unint64_t sub_254F64190()
{
  result = qword_27F761040;
  if (!qword_27F761040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761040);
  }

  return result;
}

unint64_t sub_254F641E4()
{
  result = qword_27F761048;
  if (!qword_27F761048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761048);
  }

  return result;
}

void *sub_254F64270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_254F9BC90();
}

void sub_254F642D0()
{
  v0[38] = 0;
  v0[39] = 0;
  v0[36] = 0;
  v0[37] = 0;
}

uint64_t sub_254F642DC@<X0>(char a1@<W8>)
{
  *(v1 - 184) = a1;

  return sub_254F9BC50();
}

__n128 sub_254F6438C()
{
  result = *&STACK[0x330];
  v1 = *&STACK[0x340];
  *&STACK[0x2D0] = *&STACK[0x330];
  *&STACK[0x2E0] = v1;
  STACK[0x2ED] = STACK[0x34D];
  return result;
}

uint64_t sub_254F64418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  return sub_254F5C540(a26, a24, 1);
}

void sub_254F64438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unint64_t a41)
{

  sub_254F5C2EC(a39, a41);
}

uint64_t sub_254F64458()
{
}

uint64_t StructuredContext.value.getter()
{
  sub_254F4E418();
  memcpy(v0, v1, v2);
  sub_254F4E418();
  v6 = memcpy(v3, v4, v5);
  v14 = sub_254F68770(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  return sub_254F644B8(v14, v15);
}

uint64_t sub_254F644B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F52F94(&qword_27F761050, &qword_254F9E810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *StructuredContext.value.setter()
{
  sub_254F4E418();
  memcpy(v1, v2, v3);
  sub_254F6456C(v5);
  return sub_254F686D0(v0);
}

BOOL static StructuredContext.Value.== infix(_:_:)(const void *a1)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F686D0(__src);
  sub_254F4E418();
  memcpy(v5, v6, v7);
  sub_254F686D0(&v128);
  sub_254F4E418();
  memcpy(v8, v9, v10);
  switch(sub_254F64950(v129))
  {
    case 1u:
      sub_254F5103C(v129);
      sub_254F68684();
      if (sub_254F64950(v124) != 1)
      {
        goto LABEL_16;
      }

      sub_254F5103C(v124);
      sub_254F686F4();
      memcpy(v56, v57, 0x49uLL);
      v58 = memcpy(__dst, a1, 0x49uLL);
      v66 = sub_254F4EEF8(v58, v59, v60, v61, v62, v63, v64, v65, v87, v90, v91, v94, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      v43 = static StructuredContext.IntelligenceCommandContext.== infix(_:_:)(v66, v67);
      goto LABEL_15;
    case 2u:
      v28 = sub_254F5103C(v129);
      v29 = *v28;
      v30 = *(v28 + 8);
      v88 = *(v28 + 32);
      v92 = *(v28 + 16);
      memcpy(v124, __src, 0x14AuLL);
      if (sub_254F64950(v124) != 2)
      {
        goto LABEL_16;
      }

      v31 = sub_254F5103C(v124);
      v32 = *v31;
      v33 = v31[1];
      v119 = v30;
      v120 = v92;
      v121 = v88;
      v41 = sub_254F4EEF8(v31, v34, v35, v36, v37, v38, v39, v40, v88, *(&v88 + 1), v92, *(&v92 + 1), v32, v33, v31[2], v31[3], v31[4], v31[5], *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v29);
      v43 = static StructuredContext.AppInFocusContext.== infix(_:_:)(v41, v42);
      goto LABEL_15;
    case 3u:
      sub_254F5103C(v129);
      sub_254F68684();
      if (sub_254F64950(v124) != 3)
      {
        goto LABEL_16;
      }

      sub_254F5103C(v124);
      sub_254F686F4();
      memcpy(v44, v45, 0xA0uLL);
      v46 = memcpy(__dst, a1, sizeof(__dst));
      v54 = sub_254F4EEF8(v46, v47, v48, v49, v50, v51, v52, v53, v87, v90, v91, v94, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      v43 = static StructuredContext.NowPlayingMediaItemContext.== infix(_:_:)(v54, v55);
      goto LABEL_15;
    case 4u:
      sub_254F5103C(v129);
      sub_254F68684();
      if (sub_254F64950(v124) != 4)
      {
        goto LABEL_16;
      }

      sub_254F5103C(v124);
      sub_254F686F4();
      memcpy(v15, v16, 0x98uLL);
      memcpy(__dst, a1, 0x98uLL);
      sub_254F6495C(__src, v123);
      sub_254F6495C(v125, v123);
      sub_254F6495C(v125, v123);
      v17 = sub_254F6495C(__src, v123);
      v25 = sub_254F4EEF8(v17, v18, v19, v20, v21, v22, v23, v24, v87, v90, v91, v94, *&__dst[0], *(&__dst[0] + 1), *&__dst[1], *(&__dst[1] + 1), *&__dst[2], *(&__dst[2] + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
      v14 = static StructuredContext.OnScreenUIText.== infix(_:_:)(v25, v26);
      goto LABEL_6;
    case 5u:
      v68 = sub_254F5103C(v129);
      v69 = *v68;
      v70 = *(v68 + 8);
      v89 = *(v68 + 32);
      v93 = *(v68 + 16);
      v71 = *(v68 + 48);
      memcpy(v124, __src, 0x14AuLL);
      if (sub_254F64950(v124) != 5)
      {
        goto LABEL_16;
      }

      v72 = sub_254F5103C(v124);
      v73 = *v72;
      v74 = *(v72 + 8);
      v75 = *(v72 + 48);
      v118 = v69;
      v119 = v70;
      v120 = v93;
      v121 = v89;
      v122 = v71;
      *&__dst[0] = v73;
      *(&__dst[0] + 1) = v74;
      v76 = *(v72 + 32);
      __dst[1] = *(v72 + 16);
      LOBYTE(__dst[3]) = v75;
      v84 = sub_254F4EEF8(v72, v77, v78, v79, v80, v81, v82, v83, v89, *(&v89 + 1), v93, *(&v93 + 1), v73, v74, *&__dst[1], *(&__dst[1] + 1), v76, *(&v76 + 1), *&__dst[3], *(&__dst[3] + 1), *&__dst[4], *(&__dst[4] + 1), *&__dst[5], *(&__dst[5] + 1), *&__dst[6], *(&__dst[6] + 1), *&__dst[7], *(&__dst[7] + 1), *&__dst[8], *(&__dst[8] + 1), *&__dst[9], *(&__dst[9] + 1), v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v69);
      v43 = static StructuredContext.AppContext.== infix(_:_:)(v84, v85);
LABEL_15:
      v27 = v43;
      sub_254F6495C(v125, v123);
      sub_254F6495C(__src, v123);
      sub_254F60B2C(v127, &qword_27F761058, &qword_254F9E818);
      break;
    default:
      sub_254F5103C(v129);
      sub_254F68684();
      if (sub_254F64950(v124))
      {
LABEL_16:
        sub_254F6495C(v125, v124);
        sub_254F6495C(__src, v124);
        sub_254F60B2C(v127, &qword_27F761058, &qword_254F9E818);
        v27 = 0;
      }

      else
      {
        sub_254F5103C(v124);
        sub_254F686D0(v123);
        sub_254F4E418();
        memcpy(v11, v12, v13);
        sub_254F6495C(__src, __dst);
        sub_254F6495C(v125, __dst);
        sub_254F6495C(v125, __dst);
        sub_254F6495C(__src, __dst);
        v14 = static StructuredContext.SiriRequestContext.== infix(_:_:)(v123, &v118);
LABEL_6:
        v27 = v14;
        sub_254F60B2C(v127, &qword_27F761058, &qword_254F9E818);
        sub_254F64994(__src);
        sub_254F64994(v125);
      }

      break;
  }

  return v27;
}

uint64_t sub_254F649D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000254FA5F00 == a2;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000254FA5F20 == a2;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000254FA6600 == a2;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD00000000000001ALL && 0x8000000254FA6620 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65657263536E6FLL && a2 == 0xEE00747865544955;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65746E6F43707061 && a2 == 0xEA00000000007478)
          {

            return 5;
          }

          else
          {
            v11 = sub_254F9BE30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_254F64BCC(char a1)
{
  result = 0x6E65657263536E6FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      return result;
    case 5:
      result = 0x65746E6F43707061;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_254F64CAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254F9BE30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254F64D20(uint64_t a1)
{
  v2 = sub_254F65810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64D5C(uint64_t a1)
{
  v2 = sub_254F65810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F64D98(uint64_t a1)
{
  v2 = sub_254F65A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64DD4(uint64_t a1)
{
  v2 = sub_254F65A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F64E18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F649D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F64E40(uint64_t a1)
{
  v2 = sub_254F657BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64E7C(uint64_t a1)
{
  v2 = sub_254F657BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F64EB8(uint64_t a1)
{
  v2 = sub_254F65AB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64EF4(uint64_t a1)
{
  v2 = sub_254F65AB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F64F30(uint64_t a1)
{
  v2 = sub_254F65960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64F6C(uint64_t a1)
{
  v2 = sub_254F65960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F64FA8(uint64_t a1)
{
  v2 = sub_254F658B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F64FE4(uint64_t a1)
{
  v2 = sub_254F658B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254F65020(uint64_t a1)
{
  v2 = sub_254F65B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F6505C(uint64_t a1)
{
  v2 = sub_254F65B58();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.Value.encode(to:)()
{
  sub_254F4E9D0();
  *&v84 = v0;
  v2 = v1;
  sub_254F52F94(&qword_27F761060, &qword_254F9E820);
  sub_254F4DF18();
  v79 = v4;
  *&v80 = v3;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  sub_254F686A4();
  v78 = v6;
  sub_254F52F94(&qword_27F761068, &qword_254F9E828);
  sub_254F4DF18();
  v76 = v8;
  *&v77 = v7;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v9);
  sub_254F686A4();
  v75 = v10;
  sub_254F52F94(&qword_27F761070, &qword_254F9E830);
  sub_254F4DF18();
  v73 = v12;
  v74 = v11;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F686A4();
  v72 = v14;
  sub_254F52F94(&qword_27F761078, &qword_254F9E838);
  sub_254F4DF18();
  v70 = v16;
  v71 = v15;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  sub_254F52F94(&qword_27F761080, &qword_254F9E840);
  sub_254F4DF18();
  v68 = v21;
  v69 = v20;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  v25 = sub_254F52F94(&qword_27F761088, &qword_254F9E848);
  sub_254F4DF18();
  v67 = v26;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v27);
  v29 = &v67 - v28;
  sub_254F52F94(&qword_27F761090, &qword_254F9E850);
  sub_254F4DF18();
  v82 = v30;
  v83 = v31;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v32);
  v34 = &v67 - v33;
  sub_254F4EF24(v2, v2[3]);
  sub_254F657BC();
  v81 = v34;
  sub_254F9BF20();
  memcpy(v90, v84, 0x14AuLL);
  LODWORD(v2) = sub_254F64950(v90);
  v35 = sub_254F5103C(v90);
  v36 = v35;
  switch(v2)
  {
    case 1:
      LOBYTE(v85) = 1;
      sub_254F65AB0();
      v55 = v81;
      v47 = v82;
      sub_254F4E380();
      sub_254F9BD30();
      v56 = sub_254F68764();
      memcpy(v56, v57, 0x49uLL);
      sub_254F65B04();
      v58 = v69;
      sub_254F9BE00();
      (*(v68 + 8))(v24, v58);
      sub_254F68744();
      v51 = v55;
      goto LABEL_9;
    case 2:
      v44 = *v35;
      v45 = *(v35 + 8);
      LOBYTE(v85) = 2;
      sub_254F65A08();
      v46 = *(v36 + 32);
      v84 = *(v36 + 16);
      v80 = v46;
      v48 = v81;
      v47 = v82;
      sub_254F4E380();
      sub_254F9BD30();
      v85 = v44;
      v86 = v45;
      v88 = v80;
      v87 = v84;
      sub_254F65A5C();
      v49 = v71;
      sub_254F9BE00();
      (*(v70 + 8))(v19, v49);
      sub_254F68744();
      v51 = v48;
LABEL_9:
      v54 = v47;
      goto LABEL_11;
    case 3:
      LOBYTE(v85) = 3;
      sub_254F65960();
      v39 = v72;
      sub_254F686B0(&type metadata for StructuredContext.Value.NowPlayingMediaItemContextCodingKeys, &v85);
      v52 = sub_254F68764();
      memcpy(v52, v53, 0xA0uLL);
      sub_254F659B4();
      v42 = v74;
      sub_254F9BE00();
      v43 = v73;
      goto LABEL_6;
    case 4:
      LOBYTE(v85) = 4;
      sub_254F658B8();
      v39 = v75;
      sub_254F686B0(&type metadata for StructuredContext.Value.OnScreenUITextCodingKeys, &v85);
      v40 = sub_254F68764();
      memcpy(v40, v41, 0x98uLL);
      sub_254F6590C();
      v42 = v77;
      sub_254F9BE00();
      v43 = v76;
LABEL_6:
      (*(v43 + 8))(v39, v42);
      goto LABEL_7;
    case 5:
      v59 = *v35;
      v60 = *(v35 + 8);
      v61 = *(v35 + 48);
      LOBYTE(v85) = 5;
      sub_254F65810();
      v62 = *(v36 + 32);
      v84 = *(v36 + 16);
      v77 = v62;
      v63 = v78;
      v65 = v81;
      v64 = v82;
      sub_254F9BD30();
      v85 = v59;
      v86 = v60;
      v88 = v77;
      v87 = v84;
      v89 = v61;
      sub_254F65864();
      v66 = v80;
      sub_254F9BE00();
      (*(v79 + 8))(v63, v66);
      sub_254F68744();
      v51 = v65;
      v54 = v64;
      goto LABEL_11;
    default:
      LOBYTE(v85) = 0;
      sub_254F65B58();
      sub_254F686B0(&type metadata for StructuredContext.Value.SiriRequestContextCodingKeys, &v85);
      v37 = sub_254F68764();
      memcpy(v37, v38, 0x14AuLL);
      sub_254F65BAC();
      sub_254F9BE00();
      (*(v67 + 8))(v29, v25);
LABEL_7:
      sub_254F68744();
      v51 = v34;
      v54 = v24;
LABEL_11:
      v50(v51, v54);
      sub_254F4F348();
      return;
  }
}

unint64_t sub_254F657BC()
{
  result = qword_280C46178;
  if (!qword_280C46178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46178);
  }

  return result;
}

unint64_t sub_254F65810()
{
  result = qword_27F761098;
  if (!qword_27F761098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761098);
  }

  return result;
}

unint64_t sub_254F65864()
{
  result = qword_27F7610A0;
  if (!qword_27F7610A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7610A0);
  }

  return result;
}

unint64_t sub_254F658B8()
{
  result = qword_280C46160;
  if (!qword_280C46160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46160);
  }

  return result;
}

unint64_t sub_254F6590C()
{
  result = qword_280C461D8;
  if (!qword_280C461D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461D8);
  }

  return result;
}

unint64_t sub_254F65960()
{
  result = qword_280C45C60;
  if (!qword_280C45C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C60);
  }

  return result;
}

unint64_t sub_254F659B4()
{
  result = qword_280C45630;
  if (!qword_280C45630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45630);
  }

  return result;
}

unint64_t sub_254F65A08()
{
  result = qword_280C461D0;
  if (!qword_280C461D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461D0);
  }

  return result;
}

unint64_t sub_254F65A5C()
{
  result = qword_280C45CB8[0];
  if (!qword_280C45CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C45CB8);
  }

  return result;
}

unint64_t sub_254F65AB0()
{
  result = qword_27F7610A8;
  if (!qword_27F7610A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7610A8);
  }

  return result;
}

unint64_t sub_254F65B04()
{
  result = qword_27F7610B0;
  if (!qword_27F7610B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7610B0);
  }

  return result;
}

unint64_t sub_254F65B58()
{
  result = qword_27F7610B8;
  if (!qword_27F7610B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7610B8);
  }

  return result;
}

unint64_t sub_254F65BAC()
{
  result = qword_27F7610C0;
  if (!qword_27F7610C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7610C0);
  }

  return result;
}

void StructuredContext.Value.init(from:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v102 = v3;
  v101 = sub_254F52F94(&qword_27F7610C8, &qword_254F9E858);
  sub_254F4DF18();
  v99 = v4;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  sub_254F686A4();
  v107 = v6;
  v100 = sub_254F52F94(&qword_27F7610D0, &qword_254F9E860);
  sub_254F4DF18();
  v97 = v7;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v8);
  sub_254F686A4();
  v105 = v9;
  v98 = sub_254F52F94(&qword_27F7610D8, &qword_254F9E868);
  sub_254F4DF18();
  v95 = v10;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v11);
  sub_254F686A4();
  v104 = v12;
  v96 = sub_254F52F94(&qword_27F7610E0, &qword_254F9E870);
  sub_254F4DF18();
  v93 = v13;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v14);
  sub_254F686A4();
  v103 = v15;
  v94 = sub_254F52F94(&qword_27F7610E8, &qword_254F9E878);
  sub_254F4DF18();
  v92 = v16;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v17);
  v19 = &v86 - v18;
  v20 = sub_254F52F94(&qword_27F7610F0, &qword_254F9E880);
  sub_254F4DF18();
  v91 = v21;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v22);
  v24 = &v86 - v23;
  v25 = sub_254F52F94(&qword_27F7610F8, &qword_254F9E888);
  sub_254F4DF18();
  v106 = v26;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v27);
  v29 = &v86 - v28;
  v30 = v2[3];
  v108 = v2;
  sub_254F4EF24(v2, v30);
  sub_254F657BC();
  sub_254F9BF10();
  if (v0)
  {
    goto LABEL_10;
  }

  v87 = v20;
  v88 = v24;
  v89 = v19;
  v31 = v107;
  v32 = sub_254F9BD20();
  sub_254F673E4(v32, 0);
  v37 = v25;
  if (v35 == v36 >> 1)
  {
LABEL_9:
    v46 = sub_254F9BBB0();
    swift_allocError();
    v48 = v47;
    sub_254F52F94(&qword_27F761100, &qword_254F9E890);
    *v48 = &type metadata for StructuredContext.Value;
    sub_254F9BC40();
    sub_254F9BBA0();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v106 + 8))(v29, v37);
LABEL_10:
    v31 = v108;
LABEL_11:
    sub_254F4DA5C(v31);
    sub_254F4F348();
    return;
  }

  v90 = v25;
  v86 = 0;
  if (v35 < (v36 >> 1))
  {
    v38 = *(v34 + v35);
    sub_254F685D8(v35 + 1, v36 >> 1, v33, v34, v35, v36);
    v40 = v39;
    v42 = v41;
    swift_unknownObjectRelease();
    if (v40 == v42 >> 1)
    {
      v43 = v86;
      switch(v38)
      {
        case 1:
          v110[0] = 1;
          sub_254F65AB0();
          sub_254F4E03C(&type metadata for StructuredContext.Value.IntelligenceCommandCodingKeys, v110);
          sub_254F68704();
          sub_254F67610();
          sub_254F4E380();
          sub_254F6877C(v73, v74, v75, v76);
          sub_254F68674();
          swift_unknownObjectRelease();
          v81 = sub_254F4E494();
          v82(v81);
          v83 = sub_254F4F304();
          v84(v83);
          memcpy(v110, v109, 0x49uLL);
          sub_254F67664(v110);
          goto LABEL_21;
        case 2:
          v110[0] = 2;
          sub_254F65A08();
          sub_254F4E03C(&type metadata for StructuredContext.Value.AppInFocusContextCodingKeys, v110);
          sub_254F68704();
          sub_254F67594();
          sub_254F4E380();
          sub_254F6877C(v57, v58, v59, v60);
          sub_254F68674();
          swift_unknownObjectRelease();
          v61 = sub_254F4E494();
          v62(v61);
          v63 = sub_254F4F304();
          v64(v63);
          sub_254F4E328(v109[0]);
          sub_254F675E8(v110);
          goto LABEL_21;
        case 3:
          v110[0] = 3;
          sub_254F65960();
          sub_254F4E03C(&type metadata for StructuredContext.Value.NowPlayingMediaItemContextCodingKeys, v110);
          sub_254F68704();
          sub_254F67518();
          sub_254F4E380();
          sub_254F6877C(v65, v66, v67, v68);
          sub_254F68674();
          swift_unknownObjectRelease();
          v69 = sub_254F4E494();
          v70(v69);
          v71 = sub_254F4F304();
          v72(v71);
          memcpy(v110, v109, 0xA0uLL);
          sub_254F6756C(v110);
          goto LABEL_21;
        case 4:
          v110[0] = 4;
          sub_254F658B8();
          sub_254F4E03C(&type metadata for StructuredContext.Value.OnScreenUITextCodingKeys, v110);
          sub_254F68704();
          sub_254F6749C();
          sub_254F4E380();
          sub_254F6877C(v49, v50, v51, v52);
          sub_254F68674();
          swift_unknownObjectRelease();
          v53 = sub_254F4E494();
          v54(v53);
          v55 = sub_254F4F304();
          v56(v55);
          memcpy(v110, v109, 0x98uLL);
          sub_254F674F0(v110);
          goto LABEL_21;
        case 5:
          v110[0] = 5;
          sub_254F65810();
          sub_254F4E03C(&type metadata for StructuredContext.Value.AppContextCodingKeys, v110);
          sub_254F68704();
          sub_254F6741C();
          v78 = v101;
          sub_254F4E380();
          sub_254F9BD10();
          v79 = (v99 + 8);
          v80 = (v106 + 8);
          if (v40)
          {
            swift_unknownObjectRelease();
            (*v79)(v31, v78);
            (*v80)(v24, v90);
            goto LABEL_11;
          }

          swift_unknownObjectRelease();
          (*v79)(v31, v78);
          (*v80)(v24, v90);
          sub_254F4E328(v109[0]);
          v110[48] = v85;
          sub_254F67470(v110);
LABEL_21:
          memcpy(v111, v110, sizeof(v111));
          goto LABEL_22;
        default:
          v110[0] = 0;
          sub_254F65B58();
          v44 = v88;
          v45 = v90;
          sub_254F4E380();
          sub_254F9BC30();
          if (v43)
          {
            (*(v106 + 8))(v29, v45);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          sub_254F6768C();
          v77 = v87;
          sub_254F9BD10();
          sub_254F68674();
          swift_unknownObjectRelease();
          MEMORY[0](v44, v77);
          (*v44)(v29, v90);
          memcpy(v109, v110, 0x14AuLL);
          sub_254F676E0(v109);
          memcpy(v111, v109, sizeof(v111));
          v31 = v108;
LABEL_22:
          memcpy(v102, v111, 0x14AuLL);
          break;
      }

      goto LABEL_11;
    }

    v37 = v90;
    goto LABEL_9;
  }

  __break(1u);
}

BOOL static StructuredContext.== infix(_:_:)(const void *a1)
{
  sub_254F686D0(v26);
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F686D0(__src);
  sub_254F4E418();
  memcpy(v5, v6, v7);
  sub_254F686D0(v28);
  sub_254F68710(v28);
  if (!v15)
  {
    sub_254F686D0(v24);
    sub_254F4E418();
    memcpy(v12, v13, v14);
    sub_254F68710(__dst);
    if (!v15)
    {
      sub_254F644B8(v26, v22);
      sub_254F644B8(v27, v22);
      sub_254F644B8(v24, v22);
      v11 = static StructuredContext.Value.== infix(_:_:)(a1);
      sub_254F4E418();
      memcpy(v16, v17, v18);
      sub_254F64994(&v20);
      sub_254F686D0(v21);
      sub_254F64994(v21);
      sub_254F686D0(v22);
      sub_254F60B2C(v22, &qword_27F761050, &qword_254F9E810);
      return v11;
    }

    sub_254F686D0(v22);
    sub_254F644B8(v26, v21);
    sub_254F644B8(v27, v21);
    sub_254F644B8(v24, v21);
    sub_254F64994(v22);
LABEL_9:
    memcpy(__dst, __src, 0x29AuLL);
    sub_254F60B2C(__dst, &qword_27F761120, &qword_254F9E898);
    return 0;
  }

  sub_254F4E418();
  memcpy(v8, v9, v10);
  sub_254F68710(__dst);
  if (!v15)
  {
    sub_254F644B8(v26, v24);
    sub_254F644B8(v27, v24);
    goto LABEL_9;
  }

  sub_254F686D0(v24);
  sub_254F644B8(v26, v22);
  sub_254F644B8(v27, v22);
  sub_254F60B2C(v24, &qword_27F761050, &qword_254F9E810);
  return 1;
}

uint64_t StructuredContext.description.getter()
{
  sub_254F4E418();
  memcpy(v0, v1, v2);
  sub_254F4E418();
  memcpy(v3, v4, v5);
  sub_254F644B8(v8, &v7);
  sub_254F52F94(&qword_27F761050, &qword_254F9E810);
  return sub_254F9B9A0();
}

uint64_t sub_254F66910(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_254F9BE30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_254F6699C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F66910(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_254F669C8(uint64_t a1)
{
  v2 = sub_254F67728();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F66A04(uint64_t a1)
{
  v2 = sub_254F67728();

  return MEMORY[0x2821FE720](a1, v2);
}

void StructuredContext.encode(to:)()
{
  sub_254F4E9D0();
  v1 = v0;
  v2 = sub_254F52F94(&qword_27F761128, &qword_254F9E8A0);
  sub_254F4DF18();
  v4 = v3;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v5);
  v7 = &v12[-v6 - 8];
  sub_254F4E418();
  memcpy(v8, v9, v10);
  sub_254F4EF24(v1, v1[3]);
  sub_254F644B8(v14, v13);
  sub_254F67728();
  sub_254F9BF20();
  memcpy(v13, v14, 0x14AuLL);
  sub_254F6777C();
  sub_254F9BD80();
  memcpy(v12, v13, 0x14AuLL);
  sub_254F60B2C(v12, &qword_27F761050, &qword_254F9E810);
  (*(v4 + 8))(v7, v2);
  sub_254F4F348();
}

void StructuredContext.init(from:)()
{
  sub_254F4E9D0();
  v2 = v1;
  v12 = v3;
  v4 = sub_254F52F94(&qword_27F761130, &qword_254F9E8A8);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  v9 = &v11[-v8 - 8];
  sub_254F4EF24(v2, v2[3]);
  sub_254F67728();
  sub_254F9BF10();
  if (!v0)
  {
    sub_254F677D0();
    sub_254F4E380();
    sub_254F9BC90();
    (*(v6 + 8))(v9, v4);
    memcpy(v12, v11, 0x14AuLL);
  }

  sub_254F4DA5C(v2);
  sub_254F4F348();
}

void *StructuredContext.init(_:)()
{
  sub_254F686E8();
  v0 = sub_254F67824(v10);
  sub_254F4E864(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], v10[19], v10[20], v10[21], v10[22], v10[23], v10[24], v10[25], v10[26], v10[27], v10[28], v10[29], v10[30], v10[31], v10[32], v10[33], v10[34], v10[35], v10[36], v10[37], v10[38], v10[39], v10[40], v10[41], v0);
  sub_254F6456C(v11);
  sub_254F686D0(v12);
  sub_254F676E0(v12);
  sub_254F4F3AC();
  nullsub_1();
  return sub_254F4E518();
}

{
  sub_254F686E8();
  v1 = sub_254F67824(v11);
  sub_254F4E864(v2, v3, v4, v5, v6, v7, v8, v9, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v11[21], v11[22], v11[23], v11[24], v11[25], v11[26], v11[27], v11[28], v11[29], v11[30], v11[31], v11[32], v11[33], v11[34], v11[35], v11[36], v11[37], v11[38], v11[39], v11[40], v11[41], v1);
  sub_254F6456C(v12);
  memcpy(__dst, v0, 0x49uLL);
  sub_254F67664(__dst);
  sub_254F4F3AC();
  nullsub_1();
  return sub_254F4E518();
}

{
  sub_254F686E8();
  v0 = sub_254F67824(v10);
  sub_254F4E864(v1, v2, v3, v4, v5, v6, v7, v8, v10[0], v10[1], v10[2], v10[3], v10[4], v10[5], v10[6], v10[7], v10[8], v10[9], v10[10], v10[11], v10[12], v10[13], v10[14], v10[15], v10[16], v10[17], v10[18], v10[19], v10[20], v10[21], v10[22], v10[23], v10[24], v10[25], v10[26], v10[27], v10[28], v10[29], v10[30], v10[31], v10[32], v10[33], v10[34], v10[35], v10[36], v10[37], v10[38], v10[39], v10[40], v10[41], v0);
  sub_254F6456C(v11);
  sub_254F68750();
  sub_254F675E8(v12);
  sub_254F4F3AC();
  nullsub_1();
  return sub_254F4E518();
}

{
  sub_254F686E8();
  v1 = sub_254F67824(v11);
  sub_254F4E864(v2, v3, v4, v5, v6, v7, v8, v9, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v11[21], v11[22], v11[23], v11[24], v11[25], v11[26], v11[27], v11[28], v11[29], v11[30], v11[31], v11[32], v11[33], v11[34], v11[35], v11[36], v11[37], v11[38], v11[39], v11[40], v11[41], v1);
  sub_254F6456C(v12);
  memcpy(__dst, v0, 0xA0uLL);
  sub_254F6756C(__dst);
  sub_254F4F3AC();
  nullsub_1();
  return sub_254F4E518();
}

{
  sub_254F686E8();
  v1 = sub_254F67824(v11);
  sub_254F4E864(v2, v3, v4, v5, v6, v7, v8, v9, v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7], v11[8], v11[9], v11[10], v11[11], v11[12], v11[13], v11[14], v11[15], v11[16], v11[17], v11[18], v11[19], v11[20], v11[21], v11[22], v11[23], v11[24], v11[25], v11[26], v11[27], v11[28], v11[29], v11[30], v11[31], v11[32], v11[33], v11[34], v11[35], v11[36], v11[37], v11[38], v11[39], v11[40], v11[41], v1);
  sub_254F6456C(v12);
  memcpy(__dst, v0, 0x98uLL);
  sub_254F674F0(__dst);
  sub_254F4F3AC();
  nullsub_1();
  return sub_254F4E518();
}

{
  sub_254F686E8();
  v1 = *(v0 + 48);
  v2 = sub_254F67824(v12);
  sub_254F4E864(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15], v12[16], v12[17], v12[18], v12[19], v12[20], v12[21], v12[22], v12[23], v12[24], v12[25], v12[26], v12[27], v12[28], v12[29], v12[30], v12[31], v12[32], v12[33], v12[34], v12[35], v12[36], v12[37], v12[38], v12[39], v12[40], v12[41], v2);
  sub_254F6456C(v13);
  sub_254F68750();
  LOBYTE(v15) = v1;
  sub_254F67470(v14);
  sub_254F4F3AC();
  nullsub_1();
  return sub_254F4E518();
}

void *StructuredContext.siriRequestContext.getter@<X0>(void *a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(__src);
  if (v5 || (memcpy(__dst, __src, 0x14AuLL), sub_254F64950(__dst)))
  {
    sub_254F67878(__dst);
    return memcpy(a1, __dst, 0x14AuLL);
  }

  else
  {
    v7 = sub_254F5103C(__dst);
    memcpy(v12, v7, sizeof(v12));
    nullsub_1();
    memcpy(a1, v12, 0x14AuLL);
    sub_254F4E418();
    memcpy(v8, v9, v10);
    return sub_254F6495C(v13, v11);
  }
}

double StructuredContext.intelligenceCommand.getter@<D0>(_OWORD *a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(v66);
  if (v5 || (sub_254F68728(), sub_254F64950(v65) != 1))
  {
    result = 0.0;
    *(a1 + 57) = 0u;
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }

  else
  {
    v6 = sub_254F5103C(v65);
    memcpy(a1, v6, 0x49uLL);
    sub_254F4E418();
    v10 = memcpy(v7, v8, v9);
    v18 = sub_254F68770(v10, v11, v12, v13, v14, v15, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
    sub_254F6495C(v18, v19);
  }

  return result;
}

void *StructuredContext.nowPlayingMediaItemContext.getter@<X0>(void *a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(__src);
  if (v5 || (memcpy(__dst, __src, 0x14AuLL), sub_254F64950(__dst) != 3))
  {
    sub_254F67880(__dst);
    return memcpy(a1, __dst, 0xA0uLL);
  }

  else
  {
    v6 = sub_254F5103C(__dst);
    memcpy(v12, v6, sizeof(v12));
    nullsub_1();
    memcpy(a1, v12, 0xA0uLL);
    sub_254F4E418();
    memcpy(v7, v8, v9);
    return sub_254F6495C(v13, v11);
  }
}

double StructuredContext.appInFocusContext.getter@<D0>(uint64_t a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(v68);
  if (v5 || (sub_254F68728(), sub_254F64950(v67) != 2))
  {
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v6 = sub_254F5103C(v67);
    v7 = *(v6 + 8);
    *a1 = *v6;
    *(a1 + 8) = v7;
    v8 = *(v6 + 32);
    *(a1 + 16) = *(v6 + 16);
    *(a1 + 32) = v8;
    sub_254F4E418();
    v12 = memcpy(v9, v10, v11);
    v20 = sub_254F68770(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
    sub_254F6495C(v20, v21);
  }

  return result;
}

void *StructuredContext.onScreenUIText.getter@<X0>(void *a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(__src);
  if (v5 || (memcpy(__dst, __src, 0x14AuLL), sub_254F64950(__dst) != 4))
  {
    sub_254F67888(__dst);
    return memcpy(a1, __dst, 0x98uLL);
  }

  else
  {
    v6 = sub_254F5103C(__dst);
    memcpy(v12, v6, sizeof(v12));
    nullsub_1();
    memcpy(a1, v12, 0x98uLL);
    sub_254F4E418();
    memcpy(v7, v8, v9);
    return sub_254F6495C(v13, &v11);
  }
}

double StructuredContext.appContext.getter@<D0>(uint64_t a1@<X8>)
{
  sub_254F4E418();
  memcpy(v2, v3, v4);
  sub_254F68710(v69);
  if (v5 || (sub_254F68728(), sub_254F64950(v68) != 5))
  {
    *(a1 + 48) = 0;
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    v6 = sub_254F5103C(v68);
    v7 = *(v6 + 8);
    v8 = *(v6 + 48);
    *a1 = *v6;
    *(a1 + 8) = v7;
    v9 = *(v6 + 32);
    *(a1 + 16) = *(v6 + 16);
    *(a1 + 32) = v9;
    *(a1 + 48) = v8;
    sub_254F4E418();
    v13 = memcpy(v10, v11, v12);
    v21 = sub_254F68770(v13, v14, v15, v16, v17, v18, v19, v20, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67);
    sub_254F6495C(v21, v22);
  }

  return result;
}

void sub_254F673E4(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_254F4E604();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_254F6741C()
{
  result = qword_27F761108;
  if (!qword_27F761108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761108);
  }

  return result;
}

uint64_t sub_254F67470(uint64_t result)
{
  v1 = *(result + 208) & 1;
  v2 = *(result + 232) | 0xA000000000000000;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v1;
  *(result + 232) = v2;
  return result;
}

unint64_t sub_254F6749C()
{
  result = qword_280C45C68;
  if (!qword_280C45C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C68);
  }

  return result;
}

uint64_t sub_254F674F0(uint64_t result)
{
  v1 = *(result + 208) & 1;
  v2 = *(result + 232) | 0x8000000000000000;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v1;
  *(result + 232) = v2;
  return result;
}

unint64_t sub_254F67518()
{
  result = qword_280C45628;
  if (!qword_280C45628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45628);
  }

  return result;
}

uint64_t sub_254F6756C(uint64_t result)
{
  v1 = *(result + 208) & 1;
  v2 = *(result + 232) | 0x6000000000000000;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v1;
  *(result + 232) = v2;
  return result;
}

unint64_t sub_254F67594()
{
  result = qword_280C45CB0;
  if (!qword_280C45CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45CB0);
  }

  return result;
}

uint64_t sub_254F675E8(uint64_t result)
{
  v1 = *(result + 208) & 1;
  v2 = *(result + 232) | 0x4000000000000000;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v1;
  *(result + 232) = v2;
  return result;
}

unint64_t sub_254F67610()
{
  result = qword_27F761110;
  if (!qword_27F761110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761110);
  }

  return result;
}

uint64_t sub_254F67664(uint64_t result)
{
  v1 = *(result + 208) & 1;
  v2 = *(result + 232) | 0x2000000000000000;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v1;
  *(result + 232) = v2;
  return result;
}

unint64_t sub_254F6768C()
{
  result = qword_27F761118;
  if (!qword_27F761118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761118);
  }

  return result;
}

uint64_t sub_254F676E0(uint64_t result)
{
  v1 = *(result + 232);
  v2 = *(result + 208) & 1;
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v2;
  *(result + 232) = v1;
  return result;
}

uint64_t sub_254F67704(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 40) & 0xFFFFFF | ((*(a1 + 208) >> 1) << 24);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_254F67728()
{
  result = qword_280C46248;
  if (!qword_280C46248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46248);
  }

  return result;
}

unint64_t sub_254F6777C()
{
  result = qword_280C46148;
  if (!qword_280C46148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46148);
  }

  return result;
}

unint64_t sub_254F677D0()
{
  result = qword_280C45C58;
  if (!qword_280C45C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45C58);
  }

  return result;
}

double sub_254F67824(void *a1)
{
  v1 = a1;
  bzero(a1, 0xC0uLL);
  result = NAN;
  *(v1 + 27) = 0u;
  v1 += 27;
  *(v1 - 3) = xmmword_254F9E800;
  *(v1 - 1) = 510;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 56) = 0;
  return result;
}

uint64_t sub_254F6789C(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 40) & 0xFFFFFF | ((*(a1 + 208) >> 1) << 24);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254F678C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 330))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = (*(a1 + 192) >> 40) & 0xFFFFFF | ((*(a1 + 208) >> 1) << 24);
      v4 = -2 - v3;
      if ((-2 - v3) < 0)
      {
        v4 = -1;
      }

      if (v3 <= 0x80000000)
      {
        v2 = -1;
      }

      else
      {
        v2 = v4;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

void sub_254F67928(char *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 164) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      a1[330] = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      a1[330] = 0;
    }

    if (a2)
    {
      v4 = ~a2;
      v5 = v4 << 40;
      v6 = (v4 >> 23) & 0x1FE;
      bzero(a1, 0xC0uLL);
      *(a1 + 216) = 0u;
      v7 = a1 + 216;
      *(v7 - 3) = v5;
      *(v7 - 2) = 0;
      *(v7 - 1) = v6;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *(v7 + 3) = 0u;
      *(v7 + 4) = 0u;
      *(v7 + 5) = 0u;
      *(v7 + 6) = 0u;
      *(v7 + 56) = 0;
    }
  }
}

uint64_t sub_254F67A3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 330))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*(a1 + 192) >> 40) & 0xFFFFFF | ((*(a1 + 208) >> 1) << 24);
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_254F67A90(char *a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 164) = 0;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      a1[330] = 1;
    }
  }

  else
  {
    if (a3 < 0)
    {
      a1[330] = 0;
    }

    if (a2)
    {
      v4 = -a2;
      v5 = v4 << 40;
      v6 = (v4 >> 23) & 0x1FE;
      bzero(a1, 0xC0uLL);
      *(a1 + 216) = 0u;
      v7 = a1 + 216;
      *(v7 - 3) = v5;
      *(v7 - 2) = 0;
      *(v7 - 1) = v6;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *(v7 + 3) = 0u;
      *(v7 + 4) = 0u;
      *(v7 + 5) = 0u;
      *(v7 + 6) = 0u;
      *(v7 + 56) = 0;
    }
  }
}

uint64_t sub_254F67B78(uint64_t result, uint64_t a2)
{
  v2 = *(result + 208) & 1;
  v3 = *(result + 232) | (a2 << 61);
  *(result + 192) &= 0xFFFFFFFFFFuLL;
  *(result + 208) = v2;
  *(result + 232) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for StructuredContext.Value.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_254F67CEC(_BYTE *result, int a2, int a3)
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

unint64_t sub_254F67D9C()
{
  result = qword_27F761138;
  if (!qword_27F761138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761138);
  }

  return result;
}

unint64_t sub_254F67DF4()
{
  result = qword_27F761140;
  if (!qword_27F761140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761140);
  }

  return result;
}

unint64_t sub_254F67E4C()
{
  result = qword_27F761148;
  if (!qword_27F761148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761148);
  }

  return result;
}

unint64_t sub_254F67EA4()
{
  result = qword_27F761150;
  if (!qword_27F761150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761150);
  }

  return result;
}

unint64_t sub_254F67EFC()
{
  result = qword_27F761158;
  if (!qword_27F761158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761158);
  }

  return result;
}

unint64_t sub_254F67F54()
{
  result = qword_27F761160;
  if (!qword_27F761160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761160);
  }

  return result;
}

unint64_t sub_254F67FAC()
{
  result = qword_27F761168;
  if (!qword_27F761168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761168);
  }

  return result;
}

unint64_t sub_254F68004()
{
  result = qword_27F761170;
  if (!qword_27F761170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F761170);
  }

  return result;
}

unint64_t sub_254F6805C()
{
  result = qword_280C46238;
  if (!qword_280C46238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46238);
  }

  return result;
}

unint64_t sub_254F680B4()
{
  result = qword_280C46240;
  if (!qword_280C46240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46240);
  }

  return result;
}

unint64_t sub_254F6810C()
{
  result = qword_280C461B0;
  if (!qword_280C461B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461B0);
  }

  return result;
}

unint64_t sub_254F68164()
{
  result = qword_280C461B8;
  if (!qword_280C461B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461B8);
  }

  return result;
}

unint64_t sub_254F681BC()
{
  result = qword_280C46180;
  if (!qword_280C46180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46180);
  }

  return result;
}

unint64_t sub_254F68214()
{
  result = qword_280C46188;
  if (!qword_280C46188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46188);
  }

  return result;
}

unint64_t sub_254F6826C()
{
  result = qword_280C461C0;
  if (!qword_280C461C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461C0);
  }

  return result;
}

unint64_t sub_254F682C4()
{
  result = qword_280C461C8;
  if (!qword_280C461C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461C8);
  }

  return result;
}

unint64_t sub_254F6831C()
{
  result = qword_280C461A0;
  if (!qword_280C461A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461A0);
  }

  return result;
}

unint64_t sub_254F68374()
{
  result = qword_280C461A8;
  if (!qword_280C461A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C461A8);
  }

  return result;
}

unint64_t sub_254F683CC()
{
  result = qword_280C46150;
  if (!qword_280C46150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46150);
  }

  return result;
}

unint64_t sub_254F68424()
{
  result = qword_280C46158;
  if (!qword_280C46158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46158);
  }

  return result;
}

unint64_t sub_254F6847C()
{
  result = qword_280C46190;
  if (!qword_280C46190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46190);
  }

  return result;
}

unint64_t sub_254F684D4()
{
  result = qword_280C46198;
  if (!qword_280C46198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46198);
  }

  return result;
}

unint64_t sub_254F6852C()
{
  result = qword_280C46168;
  if (!qword_280C46168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46168);
  }

  return result;
}

unint64_t sub_254F68584()
{
  result = qword_280C46170;
  if (!qword_280C46170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46170);
  }

  return result;
}

uint64_t sub_254F685D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_254F68684()
{

  return memcpy(&STACK[0x410], &STACK[0x6B0], 0x14AuLL);
}

uint64_t sub_254F686B0(uint64_t a1, uint64_t a2)
{

  return sub_254F9BD30();
}

void *sub_254F686D0(void *a1)
{

  return memcpy(a1, v1, 0x14AuLL);
}

void *sub_254F68728()
{

  return memcpy(&STACK[0x2A8], &STACK[0x3F8], 0x14AuLL);
}

__n128 sub_254F68750()
{
  STACK[0x2A0] = v1;
  STACK[0x2A8] = v2;
  result = *(v0 + 16);
  v4 = *(v0 + 32);
  *&STACK[0x2B0] = result;
  *&STACK[0x2C0] = v4;
  return result;
}

uint64_t sub_254F6877C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_254F9BD10();
}

id static ContextXPCService.interface.getter()
{
  if (qword_280C46350 != -1)
  {
    swift_once();
  }

  v1 = qword_280C46358;

  return v1;
}

uint64_t static ContextXPCService.selectorClasses.getter()
{
  if (qword_280C46388 != -1)
  {
    swift_once();
  }
}

uint64_t sub_254F68890()
{
  v0 = sub_254F9B7F0();
  sub_254F68ABC(v0, qword_280C46368);
  v1 = sub_254F4DED0(v0, qword_280C46368);
  if (qword_280C46328 != -1)
  {
    swift_once();
  }

  v2 = sub_254F4DED0(v0, qword_280C46330);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static ContextXPCService.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C46360 != -1)
  {
    swift_once();
  }

  v2 = sub_254F9B7F0();
  v3 = sub_254F4DED0(v2, qword_280C46368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

_BYTE *storeEnumTagSinglePayload for ContextXPCService(_BYTE *result, int a2, int a3)
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

uint64_t *sub_254F68ABC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t RetrievedContext.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RetrievedContext.value.getter()
{
  v2 = sub_254F77918();
  v3 = *(type metadata accessor for RetrievedContext(v2) + 20);
  sub_254F9B890();
  sub_254F4E534();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t RetrievedContext.value.setter()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  sub_254F9B890();
  sub_254F4E534();
  v1 = sub_254F77B40();

  return v2(v1);
}

uint64_t RetrievedContext.value.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedContext.typedValue.getter()
{
  v2 = sub_254F77918();
  v3 = type metadata accessor for RetrievedContext(v2);
  return sub_254F69104(v1 + *(v3 + 24), v0, &qword_27F761178, &qword_254F9F9B0);
}

uint64_t RetrievedContext.typedValue.setter()
{
  v2 = sub_254F778A0();
  v3 = v1 + *(type metadata accessor for RetrievedContext(v2) + 24);

  return sub_254F68D6C(v0, v3);
}

uint64_t sub_254F68D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F52F94(&qword_27F761178, &qword_254F9F9B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RetrievedContext.typedValue.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedContext.structuredContext.getter()
{
  v1 = sub_254F77918();
  v2 = type metadata accessor for RetrievedContext(v1);
  memcpy(__dst, (v0 + *(v2 + 28)), 0x14AuLL);
  v3 = sub_254F77C80();
  memcpy(v3, v4, 0x14AuLL);
  return sub_254F69104(__dst, &v6, &qword_27F761180, &qword_254F9F9B8);
}

void *RetrievedContext.structuredContext.setter()
{
  v0 = sub_254F778A0();
  v1 = type metadata accessor for RetrievedContext(v0);
  v9 = sub_254F77C68(v1, v2, v3, v4, v5, v6, v7, v8, v14[0]);
  memcpy(v9, v10, 0x14AuLL);
  sub_254F6C10C(v14, &qword_27F761180, &qword_254F9F9B8);
  v11 = sub_254F77B40();
  return memcpy(v11, v12, 0x14AuLL);
}

uint64_t RetrievedContext.structuredContext.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedContext.relevance.getter()
{
  v2 = sub_254F77918();
  result = type metadata accessor for RetrievedContext(v2);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  *(v0 + 4) = *(v4 + 4);
  *v0 = v5;
  return result;
}

uint64_t RetrievedContext.relevance.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = type metadata accessor for RetrievedContext(0);
  v5 = v1 + *(result + 32);
  *(v5 + 4) = v3;
  *v5 = v2;
  return result;
}

uint64_t RetrievedContext.relevance.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedContext.type.getter()
{
  v2 = sub_254F77918();
  result = type metadata accessor for RetrievedContext(v2);
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t RetrievedContext.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for RetrievedContext(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t RetrievedContext.type.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

uint64_t RetrievedContext.metadata.getter()
{
  v1 = sub_254F77918();
  v2 = type metadata accessor for RetrievedContext(v1);
  memcpy(__dst, (v0 + *(v2 + 40)), sizeof(__dst));
  v3 = sub_254F77C80();
  memcpy(v3, v4, 0x140uLL);
  return sub_254F69104(__dst, &v6, &qword_27F761188, &qword_254F9F9C0);
}

uint64_t sub_254F69104(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_254F52F94(a3, a4);
  sub_254F4E534();
  v5 = sub_254F4E364();
  v6(v5);
  return a2;
}

void *RetrievedContext.metadata.setter()
{
  v0 = sub_254F778A0();
  v1 = type metadata accessor for RetrievedContext(v0);
  v9 = sub_254F77C68(v1, v2, v3, v4, v5, v6, v7, v8, v14[0]);
  memcpy(v9, v10, 0x140uLL);
  sub_254F6C10C(v14, &qword_27F761188, &qword_254F9F9C0);
  v11 = sub_254F77B40();
  return memcpy(v11, v12, 0x140uLL);
}

uint64_t RetrievedContext.metadata.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for RetrievedContext(v0);
  return sub_254F4F68C();
}

void RetrievedContext.init(identifier:structuredContext:typedValue:relevance:type:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_254F77B94();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v61 = v14;
  v16 = v15;
  v57 = v17;
  v58 = v18;
  v20 = v19;
  v21 = sub_254F52F94(&qword_27F761178, &qword_254F9F9B0);
  sub_254F77A18(v21);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v22);
  sub_254F4FC44();
  v23 = sub_254F9B890();
  sub_254F4DF18();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_254F4F314();
  v65 = (v28 - v27);
  sub_254F9B760();
  sub_254F4DF18();
  v55 = v30;
  v56 = v29;
  MEMORY[0x28223BE20](v29);
  sub_254F4F314();
  v33 = v32 - v31;
  memcpy(v68, v16, sizeof(v68));
  v63 = *v13 | (*(v13 + 4) << 32);
  v64 = *v11;
  memcpy(v69, v9, sizeof(v69));
  v34 = type metadata accessor for RetrievedContext(0);
  v35 = v34[6];
  sub_254F77A50();
  sub_254F4E598(v36, v37, v38, v23);
  v39 = v34[7];
  sub_254F695EC(v70);
  v59 = v39;
  memcpy(v20 + v39, v70, 0x14AuLL);
  v60 = v34[8];
  sub_254F77AB8(v20 + v60);
  v40 = v34[10];
  sub_254F69640(v71);
  v62 = v40;
  v41 = v20 + v40;
  v42 = v58;
  memcpy(v41, v71, 0x140uLL);
  if (v58)
  {
    v43 = v57;
  }

  else
  {
    sub_254F9B750();
    v43 = sub_254F9B740();
    v42 = v44;
    (*(v55 + 8))(v33, v56);
  }

  *v20 = v43;
  v20[1] = v42;
  sub_254F69648(v61, v20 + v35);
  v45 = sub_254F77A24();
  sub_254F696B8(v45, v46);
  sub_254F77A30(v7);
  if (v47)
  {
    sub_254F9B870();
    v48 = swift_allocBox();
    *v49 = 0;
    sub_254F778AC();
    (*(v50 + 104))();
    v51 = v65;
    *v65 = v48;
    (*(v25 + 104))(v65, *MEMORY[0x277D72A58], v23);
    sub_254F77A30(v7);
    if (!v47)
    {
      sub_254F6C10C(v7, &qword_27F761178, &qword_254F9F9B0);
    }
  }

  else
  {
    v51 = v65;
    v52 = sub_254F77A24();
    v53(v52);
  }

  (*(v25 + 32))(v20 + v34[5], v51, v23);
  memcpy(v66, v20 + v59, 0x14AuLL);
  sub_254F6C10C(v66, &qword_27F761180, &qword_254F9F9B8);
  memcpy(v20 + v59, v68, 0x14AuLL);
  v54 = v20 + v60;
  v54[4] = BYTE4(v63);
  *v54 = v63;
  *(v20 + v34[9]) = v64;
  memcpy(v67, v20 + v62, sizeof(v67));
  sub_254F6C10C(v67, &qword_27F761188, &qword_254F9F9C0);
  memcpy(v20 + v62, v69, 0x140uLL);
  sub_254F77BAC();
}

double sub_254F695EC(void *a1)
{
  v1 = a1;
  bzero(a1, 0xC0uLL);
  result = NAN;
  *(v1 + 27) = 0u;
  v1 += 27;
  *(v1 - 3) = xmmword_254F9F980;
  *(v1 - 1) = 510;
  *(v1 + 1) = 0u;
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 6) = 0u;
  *(v1 + 56) = 0;
  return result;
}

uint64_t sub_254F69648(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F52F94(&qword_27F761178, &qword_254F9F9B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_254F696B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_254F52F94(&qword_27F761178, &qword_254F9F9B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void RetrievedContext.init(structuredContext:typedValue:relevance:type:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_254F77B94();
  v61 = v9;
  v62 = v8;
  v11 = v10;
  v13 = v12;
  v57 = v12;
  v63 = v14;
  v16 = v15;
  v17 = sub_254F9B890();
  v56 = v17;
  v65 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  sub_254F4F314();
  v64 = (v19 - v18);
  v58 = sub_254F9B760();
  sub_254F4DF18();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_254F4F314();
  v25 = v24 - v23;
  v26 = sub_254F52F94(&qword_27F761178, &qword_254F9F9B0);
  v27 = sub_254F77A18(v26);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v55 - v31;
  memcpy(v68, v63, sizeof(v68));
  v63 = (*v11 | (*(v11 + 4) << 32));
  LODWORD(v62) = *v62;
  memcpy(v69, v61, sizeof(v69));
  sub_254F69104(v13, v32, &qword_27F761178, &qword_254F9F9B0);
  v33 = type metadata accessor for RetrievedContext(0);
  v34 = v33[6];
  sub_254F77A50();
  sub_254F4E598(v35, v36, v37, v17);
  v38 = v33[7];
  sub_254F695EC(v70);
  v60 = v38;
  memcpy(&v16[v38], v70, 0x14AuLL);
  v59 = v33[8];
  sub_254F77AB8(&v16[v59]);
  v39 = v33[10];
  sub_254F69640(v71);
  v61 = v39;
  memcpy(&v39[v16], v71, 0x140uLL);
  sub_254F9B750();
  v40 = sub_254F9B740();
  v42 = v41;
  sub_254F6C10C(v57, &qword_27F761178, &qword_254F9F9B0);
  (*(v21 + 8))(v25, v58);
  *v16 = v40;
  *(v16 + 1) = v42;
  v43 = &v16[v34];
  v44 = v56;
  sub_254F69648(v32, v43);
  sub_254F696B8(v32, v30);
  sub_254F77A30(v30);
  if (v45)
  {
    sub_254F9B870();
    v46 = swift_allocBox();
    *v47 = 0;
    sub_254F778AC();
    (*(v48 + 104))();
    v50 = v64;
    v49 = v65;
    *v64 = v46;
    (*(v49 + 104))(v50, *MEMORY[0x277D72A58], v44);
    sub_254F77A30(v30);
    if (!v45)
    {
      sub_254F6C10C(v30, &qword_27F761178, &qword_254F9F9B0);
    }
  }

  else
  {
    v50 = v64;
    v49 = v65;
    (*(v65 + 32))(v64, v30, v44);
  }

  (*(v49 + 32))(&v16[v33[5]], v50, v44);
  v51 = v60;
  memcpy(v66, &v16[v60], 0x14AuLL);
  sub_254F6C10C(v66, &qword_27F761180, &qword_254F9F9B8);
  memcpy(&v16[v51], v68, 0x14AuLL);
  v52 = &v16[v59];
  v53 = v63;
  v52[4] = BYTE4(v63);
  *v52 = v53;
  v16[v33[9]] = v62;
  v54 = v61;
  memcpy(v67, &v61[v16], sizeof(v67));
  sub_254F6C10C(v67, &qword_27F761188, &qword_254F9F9C0);
  memcpy(&v54[v16], v69, 0x140uLL);
  sub_254F77BAC();
}

void static RetrievedContext.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_254F77B94();
  v10 = v9;
  v12 = v11;
  v13 = sub_254F9B890();
  sub_254F4DF18();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_254F4F314();
  v19 = v18 - v17;
  v20 = sub_254F52F94(&qword_27F761178, &qword_254F9F9B0);
  sub_254F77A18(v20);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v21);
  sub_254F778C8();
  v22 = sub_254F52F94(&qword_27F761190, &qword_254F9F9C8);
  sub_254F4E534();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v23);
  sub_254F4E38C();
  v24 = type metadata accessor for RetrievedContext(0);
  if ((sub_254F568F8(*(v12 + v24[9]), *(v10 + v24[9])) & 1) == 0)
  {
    goto LABEL_20;
  }

  v50 = v15;
  v25 = v12;
  v26 = v24[6];
  v27 = *(v22 + 48);
  v49 = v25;
  sub_254F50B7C(v25);
  sub_254F69104(v10 + v26, v8 + v27, &qword_27F761178, &qword_254F9F9B0);
  sub_254F77880(v8);
  if (v32)
  {
    sub_254F77880(v8 + v27);
    if (v32)
    {
      sub_254F6C10C(v8, &qword_27F761178, &qword_254F9F9B0);
LABEL_12:
      v42 = v24[7];
      memcpy(v58, (v49 + v42), 0x14AuLL);
      sub_254F77CE8(v59);
      memcpy(v57, (v49 + v42), 0x14AuLL);
      sub_254F77CE8(&v57[336]);
      memcpy(v60, (v49 + v42), 0x14AuLL);
      if (sub_254F6A030(v60) == 1)
      {
        sub_254F77B64(v55);
        if (sub_254F6A030(v55) == 1)
        {
          sub_254F77BF4(v56);
          sub_254F77A00(v58, v54);
          sub_254F77A00(v59, v54);
          sub_254F77A9C();
          sub_254F6C10C(v43, v44, v45);
          goto LABEL_20;
        }

        sub_254F77A00(v58, v56);
        sub_254F77A00(v59, v56);
      }

      else
      {
        sub_254F77BF4(v56);
        sub_254F77BF4(v54);
        sub_254F77B64(v55);
        if (sub_254F6A030(v55) != 1)
        {
          sub_254F77B64(v53);
          sub_254F77950(v58);
          sub_254F77950(v59);
          sub_254F77950(v56);
          static StructuredContext.== infix(_:_:)(v54);
          memcpy(v51, v53, 0x14AuLL);
          sub_254F6456C(v51);
          memcpy(v52, v54, 0x14AuLL);
          sub_254F6456C(v52);
          sub_254F77BF4(v53);
          sub_254F77A9C();
          sub_254F6C10C(v46, v47, v48);
          goto LABEL_20;
        }

        sub_254F77BF4(v53);
        sub_254F77950(v58);
        sub_254F77950(v59);
        sub_254F77950(v56);
        sub_254F6456C(v53);
      }

      memcpy(v55, v57, 0x29AuLL);
      v35 = &unk_27F761198;
      v36 = &unk_254F9F9D0;
      v37 = v55;
LABEL_19:
      sub_254F6C10C(v37, v35, v36);
      goto LABEL_20;
    }

LABEL_10:
    v35 = &qword_27F761190;
    v36 = &qword_254F9F9C8;
    v37 = v8;
    goto LABEL_19;
  }

  v28 = sub_254F77B1C();
  sub_254F69104(v28, v29, v30, v31);
  sub_254F77880(v8 + v27);
  if (v32)
  {
    v33 = sub_254F77C74();
    v34(v33);
    goto LABEL_10;
  }

  (*(v50 + 32))(v19, v8 + v27, v13);
  sub_254F4DF84();
  sub_254F6A874(v38);
  sub_254F5043C();
  v39 = sub_254F9B950();
  v40 = *(v50 + 8);
  v40(v19, v13);
  v41 = sub_254F77C74();
  (v40)(v41);
  sub_254F6C10C(v8, &qword_27F761178, &qword_254F9F9B0);
  if (v39)
  {
    goto LABEL_12;
  }

LABEL_20:
  sub_254F77BAC();
}

uint64_t sub_254F6A030(uint64_t a1)
{
  v1 = (*(a1 + 192) >> 40) & 0xFFFFFF | ((*(a1 + 208) >> 1) << 24);
  v2 = -2 - v1;
  if ((-2 - v1) < 0)
  {
    v2 = -1;
  }

  if (v1 > 0x80000000)
  {
    return (v2 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254F6A064(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000254FA6670 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x636E6176656C6572 && a2 == 0xE900000000000065;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701869940 && a2 == 0xE400000000000000;
            if (v10 || (sub_254F9BE30() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_254F9BE30();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_254F6A2B4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 0x6C61566465707974;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x636E6176656C6572;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F6A390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F6A064(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F6A3B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F6A2AC();
  *a1 = result;
  return result;
}

uint64_t sub_254F6A3E0(uint64_t a1)
{
  v2 = sub_254F6A820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F6A41C(uint64_t a1)
{
  v2 = sub_254F6A820();

  return MEMORY[0x2821FE720](a1, v2);
}

void RetrievedContext.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_254F4E9D0();
  v28 = v26;
  v30 = v29;
  sub_254F52F94(&qword_27F7611A8, &qword_254F9F9D8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v31);
  sub_254F4FC44();
  sub_254F4EFBC(v30, v30[3]);
  sub_254F6A820();
  sub_254F779D0();
  sub_254F9BF20();
  v47[0] = 0;
  sub_254F9BDB0();
  if (v27)
  {
    v32 = sub_254F77C24();
    v33(v32);
  }

  else
  {
    v41 = type metadata accessor for RetrievedContext(0);
    v47[0] = 1;
    sub_254F9B890();
    sub_254F4DF84();
    sub_254F6A874(v34);
    sub_254F77AA8();
    sub_254F9BE00();
    sub_254F77AA8();
    sub_254F9BD80();
    v35 = v41[7];
    memcpy(v47, (v28 + v35), 0x14AuLL);
    memcpy(v46, (v28 + v35), sizeof(v46));
    sub_254F69104(v47, v45, &qword_27F761180, &qword_254F9F9B8);
    sub_254F6A8B8();
    sub_254F77924();
    sub_254F9BD80();
    memcpy(v45, v46, 0x14AuLL);
    sub_254F6C10C(v45, &qword_27F761180, &qword_254F9F9B8);
    v36 = (v28 + v41[8]);
    v37 = *v36;
    LOBYTE(v44[1]) = *(v36 + 4);
    v44[0] = v37;
    v43[0] = 4;
    sub_254F6A90C();
    sub_254F77924();
    sub_254F9BD80();
    sub_254F6A960();
    sub_254F77924();
    sub_254F9BE00();
    v38 = v41[10];
    memcpy(v44, (v28 + v38), sizeof(v44));
    memcpy(v43, (v28 + v38), sizeof(v43));
    sub_254F69104(v44, v42, &qword_27F761188, &qword_254F9F9C0);
    sub_254F6A9B4();
    sub_254F77924();
    sub_254F9BD80();
    memcpy(v42, v43, sizeof(v42));
    sub_254F6C10C(v42, &qword_27F761188, &qword_254F9F9C0);
    v39 = sub_254F77C24();
    v40(v39);
  }

  sub_254F77C44();
  sub_254F4F348();
}

unint64_t sub_254F6A820()
{
  result = qword_280C46300;
  if (!qword_280C46300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46300);
  }

  return result;
}

unint64_t sub_254F6A874(uint64_t a1)
{
  result = sub_254F77A6C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_254F6A8B8()
{
  result = qword_280C46140;
  if (!qword_280C46140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46140);
  }

  return result;
}

unint64_t sub_254F6A90C()
{
  result = qword_280C462E8;
  if (!qword_280C462E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462E8);
  }

  return result;
}

unint64_t sub_254F6A960()
{
  result = qword_280C462C0;
  if (!qword_280C462C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462C0);
  }

  return result;
}

unint64_t sub_254F6A9B4()
{
  result = qword_280C46278;
  if (!qword_280C46278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46278);
  }

  return result;
}

void RetrievedContext.init(from:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v32 = v4;
  v5 = sub_254F52F94(&qword_27F761178, &qword_254F9F9B0);
  sub_254F77A18(v5);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v6);
  sub_254F4E38C();
  v7 = sub_254F9B890();
  sub_254F4DF18();
  v33 = v8;
  MEMORY[0x28223BE20](v9);
  sub_254F4F314();
  v12 = v11 - v10;
  sub_254F52F94(&qword_27F7611B0, &qword_254F9F9E0);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v13);
  sub_254F778D8();
  v14 = type metadata accessor for RetrievedContext(0);
  sub_254F4E534();
  MEMORY[0x28223BE20](v15);
  sub_254F4F314();
  v18 = (v17 - v16);
  v34 = v7;
  v35 = *(v19 + 24);
  sub_254F77A50();
  sub_254F4E598(v20, v21, v22, v7);
  v23 = v14[7];
  sub_254F695EC(v43);
  v36 = v23;
  memcpy(v18 + v23, v43, 0x14AuLL);
  v24 = v14[8];
  sub_254F77AB8(v18 + v24);
  v25 = v14[10];
  sub_254F69640(v44);
  memcpy(v18 + v25, v44, 0x140uLL);
  sub_254F4EFBC(v3, v3[3]);
  sub_254F6A820();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F4DA5C(v3);
    sub_254F6C10C(v18 + v35, &qword_27F761178, &qword_254F9F9B0);
    memcpy(v42, v18 + v36, 0x14AuLL);
    sub_254F6C10C(v42, &qword_27F761180, &qword_254F9F9B8);
    memcpy(v41, v18 + v25, 0x140uLL);
    sub_254F6C10C(v41, &qword_27F761188, &qword_254F9F9C0);
  }

  else
  {
    *v18 = sub_254F9BCC0();
    v18[1] = v26;
    v42[0] = 1;
    sub_254F4DF84();
    sub_254F6A874(v27);
    sub_254F77C5C();
    sub_254F9BD10();
    (*(v33 + 32))(v18 + v14[5], v12, v34);
    v42[0] = 2;
    sub_254F77C5C();
    sub_254F9BC90();
    sub_254F68D6C(v1, v18 + v35);
    sub_254F6B058();
    sub_254F509E0();
    sub_254F9BC90();
    memcpy(v40, v42, sizeof(v40));
    memcpy(v41, v18 + v36, 0x14AuLL);
    sub_254F6C10C(v41, &qword_27F761180, &qword_254F9F9B8);
    memcpy(v18 + v36, v40, 0x14AuLL);
    sub_254F6B0AC();
    sub_254F509E0();
    sub_254F9BC90();
    v28 = v39[0];
    v29 = v18 + v24;
    v29[4] = v39[1];
    *v29 = v28;
    v38[0] = 5;
    sub_254F6B100();
    sub_254F509E0();
    sub_254F9BD10();
    *(v18 + MEMORY[0x24]) = v39[0];
    sub_254F6B154();
    sub_254F509E0();
    sub_254F9BC90();
    v30 = sub_254F77AC8();
    v31(v30);
    memcpy(v37, v39, sizeof(v37));
    memcpy(v38, v18 + v25, sizeof(v38));
    sub_254F6C10C(v38, &qword_27F761188, &qword_254F9F9C0);
    memcpy(v18 + v25, v37, 0x140uLL);
    sub_254F6E1A0(v18, v32);
    sub_254F4DA5C(v3);
    sub_254F6E1F8();
  }

  sub_254F77C44();
  sub_254F4F348();
}

unint64_t sub_254F6B058()
{
  result = qword_280C46138;
  if (!qword_280C46138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46138);
  }

  return result;
}

unint64_t sub_254F6B0AC()
{
  result = qword_280C462E0;
  if (!qword_280C462E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462E0);
  }

  return result;
}

unint64_t sub_254F6B100()
{
  result = qword_280C462B8;
  if (!qword_280C462B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C462B8);
  }

  return result;
}

unint64_t sub_254F6B154()
{
  result = qword_280C46270;
  if (!qword_280C46270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C46270);
  }

  return result;
}

uint64_t ContextValue.value.getter()
{
  sub_254F77918();
  sub_254F9B890();
  sub_254F4E534();
  v0 = sub_254F4E364();

  return v1(v0);
}

uint64_t ContextValue.value.setter()
{
  sub_254F778A0();
  sub_254F9B890();
  sub_254F4E534();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t ContextValue.typedValue.getter()
{
  v2 = sub_254F77918();
  v3 = type metadata accessor for ContextValue(v2);
  return sub_254F69104(v1 + *(v3 + 20), v0, &qword_27F761178, &qword_254F9F9B0);
}

uint64_t ContextValue.typedValue.setter()
{
  v2 = sub_254F778A0();
  v3 = v1 + *(type metadata accessor for ContextValue(v2) + 20);

  return sub_254F68D6C(v0, v3);
}

uint64_t ContextValue.typedValue.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for ContextValue(v0);
  return sub_254F4F68C();
}

uint64_t ContextValue.structuredContext.getter()
{
  v1 = sub_254F77918();
  v2 = type metadata accessor for ContextValue(v1);
  memcpy(__dst, (v0 + *(v2 + 24)), 0x14AuLL);
  v3 = sub_254F77C80();
  memcpy(v3, v4, 0x14AuLL);
  return sub_254F69104(__dst, &v6, &qword_27F761180, &qword_254F9F9B8);
}

void *ContextValue.structuredContext.setter()
{
  v0 = sub_254F778A0();
  v1 = type metadata accessor for ContextValue(v0);
  v9 = sub_254F77C68(v1, v2, v3, v4, v5, v6, v7, v8, v14[0]);
  memcpy(v9, v10, 0x14AuLL);
  sub_254F6C10C(v14, &qword_27F761180, &qword_254F9F9B8);
  v11 = sub_254F77B40();
  return memcpy(v11, v12, 0x14AuLL);
}

uint64_t ContextValue.structuredContext.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for ContextValue(v0);
  return sub_254F4F68C();
}

uint64_t ContextValue.metadata.getter()
{
  v1 = sub_254F77918();
  v2 = type metadata accessor for ContextValue(v1);
  memcpy(__dst, (v0 + *(v2 + 28)), sizeof(__dst));
  v3 = sub_254F77C80();
  memcpy(v3, v4, 0x140uLL);
  return sub_254F69104(__dst, &v6, &qword_27F761188, &qword_254F9F9C0);
}

void *ContextValue.metadata.setter()
{
  v0 = sub_254F778A0();
  v1 = type metadata accessor for ContextValue(v0);
  v9 = sub_254F77C68(v1, v2, v3, v4, v5, v6, v7, v8, v14[0]);
  memcpy(v9, v10, 0x140uLL);
  sub_254F6C10C(v14, &qword_27F761188, &qword_254F9F9C0);
  v11 = sub_254F77B40();
  return memcpy(v11, v12, 0x140uLL);
}

uint64_t ContextValue.metadata.modify()
{
  v0 = sub_254F778A0();
  type metadata accessor for ContextValue(v0);
  return sub_254F4F68C();
}

void *ContextValue.init(value:metadata:)@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  memcpy(v15, a1, sizeof(v15));
  v3 = type metadata accessor for ContextValue(0);
  v4 = v3[5];
  v5 = sub_254F9B890();
  sub_254F77A50();
  sub_254F4E598(v6, v7, v8, v5);
  v9 = v3[6];
  sub_254F695EC(__src);
  memcpy((a2 + v9), __src, 0x14AuLL);
  v10 = v3[7];
  sub_254F69640(v17);
  memcpy((a2 + v10), v17, 0x140uLL);
  v11 = sub_254F4E364();
  v12(v11);
  sub_254F6C10C(a2 + v4, &qword_27F761178, &qword_254F9F9B0);
  sub_254F77A9C();
  v13();
  sub_254F4E598(a2 + v4, 0, 1, v5);
  memcpy(__dst, (a2 + v10), sizeof(__dst));
  sub_254F6C10C(__dst, &qword_27F761188, &qword_254F9F9C0);
  return memcpy((a2 + v10), v15, 0x140uLL);
}

void ContextValue.init(structuredContext:typedValue:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_254F77B94();
  v10 = v9;
  v12 = v11;
  v39 = v13;
  v15 = v14;
  v16 = sub_254F52F94(&qword_27F761178, &qword_254F9F9B0);
  sub_254F77A18(v16);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v17);
  sub_254F4E558();
  v18 = sub_254F9B890();
  sub_254F4DF18();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_254F4F314();
  v24 = (v23 - v22);
  memcpy(v41, v10, sizeof(v41));
  v25 = type metadata accessor for ContextValue(0);
  v26 = v25[5];
  sub_254F77A50();
  sub_254F4E598(v27, v28, v29, v18);
  v30 = v25[6];
  sub_254F695EC(v42);
  memcpy((v15 + v30), v42, 0x14AuLL);
  v31 = v25[7];
  sub_254F69640(v43);
  memcpy((v15 + v31), v43, 0x140uLL);
  memcpy(v44, (v15 + v30), 0x14AuLL);
  sub_254F6C10C(v44, &qword_27F761180, &qword_254F9F9B8);
  memcpy((v15 + v30), v39, 0x14AuLL);
  sub_254F69648(v12, v15 + v26);
  sub_254F696B8(v12, v8);
  if (sub_254F4E5C0(v8, 1, v18) == 1)
  {
    sub_254F9B870();
    v32 = swift_allocBox();
    *v33 = 0;
    sub_254F778AC();
    (*(v34 + 104))();
    *v24 = v32;
    (*(v20 + 104))(v24, *MEMORY[0x277D72A58], v18);
    if (sub_254F4E5C0(v8, 1, v18) != 1)
    {
      sub_254F6C10C(v8, &qword_27F761178, &qword_254F9F9B0);
    }
  }

  else
  {
    v35 = sub_254F77C24();
    v36(v35);
  }

  v37 = sub_254F77A24();
  v38(v37);
  memcpy(v40, (v15 + v31), sizeof(v40));
  sub_254F6C10C(v40, &qword_27F761188, &qword_254F9F9C0);
  memcpy((v15 + v31), v41, 0x140uLL);
  sub_254F77BAC();
}

void static ContextValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_254F77B94();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v11;
  v13 = v10;
  v14 = sub_254F9B890();
  sub_254F4DF18();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  sub_254F4F314();
  v20 = v19 - v18;
  v21 = sub_254F52F94(&qword_27F761178, &qword_254F9F9B0);
  sub_254F77A18(v21);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v22);
  sub_254F778C8();
  v23 = sub_254F52F94(&qword_27F761190, &qword_254F9F9C8);
  sub_254F4E534();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v24);
  sub_254F4E38C();
  if ((sub_254F9B880() & 1) == 0)
  {
    goto LABEL_29;
  }

  v25 = type metadata accessor for ContextValue(0);
  v78 = v12;
  v26 = *(v25 + 20);
  v27 = *(v23 + 48);
  v77 = v25;
  sub_254F50B7C(v13);
  sub_254F69104(v78 + v26, v8 + v27, &qword_27F761178, &qword_254F9F9B0);
  sub_254F77880(v8);
  if (!v32)
  {
    v28 = sub_254F77B1C();
    sub_254F69104(v28, v29, v30, v31);
    sub_254F77880(v8 + v27);
    if (!v32)
    {
      (*(v16 + 32))(v20, v8 + v27, v14);
      sub_254F4DF84();
      sub_254F6A874(v38);
      sub_254F5043C();
      v39 = sub_254F9B950();
      v40 = *(v16 + 8);
      v40(v20, v14);
      v41 = sub_254F77C74();
      (v40)(v41);
      sub_254F6C10C(v8, &qword_27F761178, &qword_254F9F9B0);
      if ((v39 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_12;
    }

    v33 = sub_254F77C74();
    v34(v33);
LABEL_10:
    v35 = &qword_27F761190;
    v36 = &qword_254F9F9C8;
    v37 = v8;
LABEL_28:
    sub_254F6C10C(v37, v35, v36);
    goto LABEL_29;
  }

  sub_254F77880(v8 + v27);
  if (!v32)
  {
    goto LABEL_10;
  }

  sub_254F6C10C(v8, &qword_27F761178, &qword_254F9F9B0);
LABEL_12:
  v42 = *(v77 + 24);
  memcpy(v88, (v13 + v42), 0x14AuLL);
  sub_254F77CE8(v89);
  memcpy(v87, (v13 + v42), 0x14AuLL);
  sub_254F77CE8(&v87[336]);
  memcpy(v90, (v13 + v42), 0x14AuLL);
  if (sub_254F6A030(v90) == 1)
  {
    sub_254F77B64(v85);
    if (sub_254F6A030(v85) == 1)
    {
      sub_254F77BDC(v86);
      sub_254F69104(v88, v84, &qword_27F761180, &qword_254F9F9B8);
      sub_254F69104(v89, v84, &qword_27F761180, &qword_254F9F9B8);
      sub_254F6C10C(v86, &qword_27F761180, &qword_254F9F9B8);
LABEL_20:
      v62 = *(v77 + 28);
      memcpy(v81, (v13 + v62), 0x140uLL);
      v63 = *(v77 + 28);
      memcpy(v84, (v78 + v63), 0x140uLL);
      memcpy(v87, (v13 + v62), 0x140uLL);
      memcpy(&v87[320], (v78 + v63), 0x140uLL);
      memcpy(v86, (v13 + v62), 0x140uLL);
      if (sub_254F6C0F4(v86) == 1)
      {
        memcpy(v85, &v87[320], 0x140uLL);
        if (sub_254F6C0F4(v85) == 1)
        {
          sub_254F77BC4(v80);
          sub_254F779DC(v81);
          sub_254F779DC(v84);
          sub_254F77A9C();
          sub_254F6C10C(v64, v65, v66);
          goto LABEL_29;
        }

        sub_254F4EFD4();
        sub_254F69104(v67, v68, v69, &qword_254F9F9C0);
        sub_254F4EFD4();
        sub_254F69104(v70, v71, v72, &qword_254F9F9C0);
      }

      else
      {
        sub_254F77BC4(v80);
        memcpy(v85, &v87[320], 0x140uLL);
        if (sub_254F6C0F4(v85) != 1)
        {
          sub_254F779DC(v81);
          sub_254F779DC(v84);
          sub_254F779DC(v80);
          static ContextMetadata.== infix(_:_:)(v87, &v87[320], v73);
          memcpy(v82, &v87[320], sizeof(v82));
          sub_254F6C164(v82);
          sub_254F77BC4(v83);
          sub_254F6C164(v83);
          sub_254F77BC4(v79);
          sub_254F77A9C();
          sub_254F6C10C(v74, v75, v76);
          goto LABEL_29;
        }

        sub_254F77BC4(v79);
        sub_254F77A00(v81, v83);
        sub_254F77A00(v84, v83);
        sub_254F77A00(v80, v83);
        sub_254F6C164(v79);
      }

      memcpy(v85, v87, 0x280uLL);
      v35 = &unk_27F7611B8;
      v36 = &unk_254F9F9E8;
      goto LABEL_27;
    }

    sub_254F77A00(v88, v86);
    sub_254F77A00(v89, v86);
LABEL_18:
    memcpy(v85, v87, 0x29AuLL);
    v35 = &unk_27F761198;
    v36 = &unk_254F9F9D0;
LABEL_27:
    v37 = v85;
    goto LABEL_28;
  }

  sub_254F77BDC(v86);
  sub_254F77BDC(v84);
  sub_254F77B64(v85);
  if (sub_254F6A030(v85) == 1)
  {
    sub_254F77BDC(v81);
    sub_254F4EFD4();
    sub_254F69104(v43, v44, v45, &qword_254F9F9B8);
    sub_254F4EFD4();
    sub_254F69104(v46, v47, v48, &qword_254F9F9B8);
    sub_254F4EFD4();
    sub_254F69104(v49, v50, v51, &qword_254F9F9B8);
    sub_254F6456C(v81);
    goto LABEL_18;
  }

  sub_254F77B64(v81);
  sub_254F4EFD4();
  sub_254F69104(v52, v53, v54, &qword_254F9F9B8);
  sub_254F4EFD4();
  sub_254F69104(v55, v56, v57, &qword_254F9F9B8);
  sub_254F4EFD4();
  sub_254F69104(v58, v59, v60, &qword_254F9F9B8);
  v61 = static StructuredContext.== infix(_:_:)(v84);
  memcpy(v79, v81, 0x14AuLL);
  sub_254F6456C(v79);
  memcpy(v80, v84, 0x14AuLL);
  sub_254F6456C(v80);
  sub_254F77BDC(v81);
  sub_254F6C10C(v81, &qword_27F761180, &qword_254F9F9B8);
  if (v61)
  {
    goto LABEL_20;
  }

LABEL_29:
  sub_254F77BAC();
}

uint64_t sub_254F6C0F4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_254F6C10C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_254F52F94(a2, a3);
  sub_254F4E534();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_254F6C194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000254FA6670 == a2;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_254F9BE30();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_254F6C2F8(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x6C61566465707974;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x617461646174656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F6C388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F6C194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F6C3B0(uint64_t a1)
{
  v2 = sub_254F6E14C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F6C3EC(uint64_t a1)
{
  v2 = sub_254F6E14C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextValue.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v0;
  v5 = v4;
  v6 = sub_254F52F94(&qword_27F7611C0, &qword_254F9F9F0);
  sub_254F4DF18();
  v8 = v7;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v9);
  sub_254F50064();
  sub_254F4EFBC(v5, v5[3]);
  sub_254F6E14C();
  sub_254F779D0();
  sub_254F9BF20();
  v22[0] = 0;
  sub_254F9B890();
  sub_254F4DF84();
  sub_254F6A874(v10);
  v11 = v3;
  v16 = v6;
  sub_254F77AA8();
  sub_254F9BE00();
  if (v1)
  {
    (*(v8 + 8))(v2, v6);
  }

  else
  {
    v12 = type metadata accessor for ContextValue(0);
    sub_254F9BD80();
    v13 = *(v12 + 24);
    memcpy(v22, (v11 + v13), 0x14AuLL);
    memcpy(v21, (v11 + v13), sizeof(v21));
    sub_254F69104(v22, v20, &qword_27F761180, &qword_254F9F9B8);
    sub_254F6A8B8();
    sub_254F9BD80();
    v14 = v8;
    memcpy(v20, v21, 0x14AuLL);
    sub_254F6C10C(v20, &qword_27F761180, &qword_254F9F9B8);
    v15 = *(v12 + 28);
    memcpy(v19, (v11 + v15), sizeof(v19));
    memcpy(v18, (v11 + v15), sizeof(v18));
    sub_254F69104(v19, v17, &qword_27F761188, &qword_254F9F9C0);
    sub_254F6A9B4();
    sub_254F9BD80();
    memcpy(v17, v18, sizeof(v17));
    sub_254F6C10C(v17, &qword_27F761188, &qword_254F9F9C0);
    (*(v14 + 8))(0, v16);
  }

  sub_254F77C44();
  sub_254F4F348();
}

void ContextValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_254F4E9D0();
  v26 = v25;
  v49 = v27;
  v28 = sub_254F52F94(&qword_27F761178, &qword_254F9F9B0);
  sub_254F77A18(v28);
  sub_254F4E30C();
  MEMORY[0x28223BE20](v29);
  sub_254F50064();
  v30 = sub_254F9B890();
  sub_254F4DF18();
  v50 = v31;
  MEMORY[0x28223BE20](v32);
  sub_254F4F314();
  v51 = v34 - v33;
  sub_254F52F94(&qword_27F7611C8, &qword_254F9F9F8);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v35);
  sub_254F778C8();
  v36 = type metadata accessor for ContextValue(0);
  v37 = (v36 - 8);
  MEMORY[0x28223BE20](v36);
  sub_254F4F314();
  v40 = v39 - v38;
  v52 = v37[7];
  sub_254F77A50();
  sub_254F4E598(v41, v42, v43, v30);
  v44 = v37[8];
  sub_254F695EC(v59);
  memcpy((v40 + v44), v59, 0x14AuLL);
  v45 = v37[9];
  sub_254F69640(v60);
  memcpy((v40 + v45), v60, 0x140uLL);
  sub_254F4EFBC(v26, v26[3]);
  sub_254F6E14C();
  sub_254F9BF10();
  if (v23)
  {
    sub_254F4DA5C(v26);
    sub_254F6C10C(v40 + v52, &qword_27F761178, &qword_254F9F9B0);
    memcpy(v58, (v40 + v44), 0x14AuLL);
    sub_254F6C10C(v58, &qword_27F761180, &qword_254F9F9B8);
    memcpy(v57, (v40 + v45), 0x140uLL);
    sub_254F6C10C(v57, &qword_27F761188, &qword_254F9F9C0);
  }

  else
  {
    v58[0] = 0;
    sub_254F4DF84();
    sub_254F6A874(v46);
    sub_254F9BD10();
    (*(v50 + 32))(v40, v51, v30);
    v58[0] = 1;
    sub_254F9BC90();
    sub_254F68D6C(v24, v40 + v52);
    sub_254F6B058();
    sub_254F9BC90();
    memcpy(v56, v58, sizeof(v56));
    memcpy(v57, (v40 + v44), 0x14AuLL);
    sub_254F6C10C(v57, &qword_27F761180, &qword_254F9F9B8);
    memcpy((v40 + v44), v56, 0x14AuLL);
    sub_254F6B154();
    sub_254F9BC90();
    v47 = sub_254F7796C();
    v48(v47);
    memcpy(v53, v55, sizeof(v53));
    memcpy(v54, (v40 + v45), sizeof(v54));
    sub_254F6C10C(v54, &qword_27F761188, &qword_254F9F9C0);
    memcpy((v40 + v45), v53, 0x140uLL);
    sub_254F6E1A0(v40, v49);
    sub_254F4DA5C(v26);
    sub_254F6E1F8();
  }

  sub_254F4F348();
}

uint64_t ContextMetadata.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ContextMetadata.processInstanceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

__n128 ContextMetadata.screenSize.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 72) = *(a1 + 32);
  return result;
}

uint64_t ContextMetadata.frames.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t ContextMetadata.elementVisibility.setter(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

__n128 ContextMetadata.frame.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v3;
  *(v1 + 136) = *(a1 + 32);
  return result;
}

void ContextMetadata.saliency.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 232);
  *(a1 + 4) = *(v1 + 236);
  *a1 = v2;
}

void ContextMetadata.displayRepresentation.getter(uint64_t *a1@<X8>)
{
  v2 = v1[35];
  v3 = v1[36];
  v4 = v1[37];
  v5 = v1[38];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_254F6E24C(v2, v3, v4, v5);
}

uint64_t ContextMetadata.init(entityId:appBundleId:saliency:screenDimensions:onScreenSurroundingText:onScreenBoundingBox:seq:groupId:dataSource:displayRepresentation:isSelected:isPrimary:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned int *a5@<X4>, float32x2_t *a6@<X5>, uint64_t a7@<X6>, int64x2_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, __int128 *a15, char a16, char a17)
{
  v20 = a17;
  v21 = a16;
  v23 = a12;
  v22 = a13;
  v24 = a10;
  v25 = *a5 | (*(a5 + 4) << 32);
  v27 = *a6;
  v26 = a6[1];
  v28 = a6[2];
  v29 = *a8;
  v30 = a8[1].i64[0];
  v31 = *a14;
  v32 = *a15;
  v33 = a15[1];
  v60 = 1;
  v34 = 0uLL;
  v59 = 1;
  v35 = 0uLL;
  v36 = 0uLL;
  v58 = a6[3].i8[0];
  if ((v58 & 1) == 0)
  {
    v35 = vcvtq_f64_f32(v27);
    v36 = vcvtq_f64_f32(__PAIR64__(v28.u32[0], v26.u32[1]));
    v60 = 0;
  }

  v57 = a8[1].i8[8];
  if (v57)
  {
    v37 = MEMORY[0x277D84F90];
    v38 = 0uLL;
  }

  else
  {
    v45 = v36;
    v39.i32[0] = vmovn_s64(v29).u32[0];
    v39.i32[1] = a8[1].i64[0];
    v43 = vcvtq_f64_f32(v39);
    v44 = vcvtq_f64_f32(vshrn_n_s64(v29, 0x20uLL));
    v59 = 0;
    v53 = a3;
    v54 = a2;
    v50 = a6[2];
    v51 = *a6;
    v48 = a7;
    v47 = a6[1];
    v49 = a8[1].i64[0];
    v40 = a4;
    v41 = v25;
    v56 = *a15;
    v55 = a15[1];
    v52 = *a8;
    v46 = v35;
    sub_254F52F94(&qword_27F7611D0, &qword_254F9FA00);
    v37 = swift_allocObject();
    v38 = v43;
    v34 = v44;
    v35 = v46;
    v21 = a16;
    v20 = a17;
    v29 = v52;
    v33 = v55;
    v32 = v56;
    v25 = v41;
    a4 = v40;
    v26 = v47;
    v23 = a12;
    v24 = a10;
    a7 = v48;
    v30 = v49;
    a3 = v53;
    a2 = v54;
    v22 = a13;
    v28 = v50;
    v27 = v51;
    *(v37 + 16) = xmmword_254F9F990;
    v36 = v45;
    *(v37 + 32) = v43.f64[0];
    *(v37 + 40) = v44;
    *(v37 + 56) = v43.f64[1];
  }

  *a9 = v21 & 1;
  *(a9 + 1) = v20 & 1;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 40) = v35;
  *(a9 + 56) = v36;
  *(a9 + 72) = v60;
  *(a9 + 80) = v37;
  *(a9 + 88) = 0;
  *(a9 + 96) = 1;
  *(a9 + 104) = v38.f64[0];
  *(a9 + 112) = v34;
  *(a9 + 128) = v38.f64[1];
  *(a9 + 136) = v59;
  *(a9 + 144) = a3;
  *(a9 + 152) = a4;
  *(a9 + 160) = v27;
  *(a9 + 168) = v26;
  *(a9 + 176) = v28;
  *(a9 + 184) = v58;
  *(a9 + 188) = v29;
  *(a9 + 204) = v30;
  *(a9 + 212) = v57;
  *(a9 + 216) = a1;
  *(a9 + 224) = a2;
  *(a9 + 232) = v25;
  *(a9 + 236) = BYTE4(v25);
  *(a9 + 240) = v24;
  *(a9 + 248) = a11 & 1;
  *(a9 + 256) = v23;
  *(a9 + 264) = v22;
  *(a9 + 272) = v31;
  *(a9 + 280) = v32;
  *(a9 + 296) = v33;
  *(a9 + 312) = a7;
}

void ContextMetadata.init(appBundleIdentifier:screenSize:frame:isSelected:)(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  swift_bridgeObjectRelease_n();
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 32);
  v15 = *a4;
  v16 = a4[1];
  v17 = *(a4 + 32);
  v18 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  if ((v17 & 1) == 0)
  {
    v25 = a4[1];
    v26 = *a4;
    v23 = v13;
    v24 = v12;
    sub_254F52F94(&qword_27F7611D0, &qword_254F9FA00);
    v19 = swift_allocObject();
    v20 = *a4;
    v21 = a4[1];
    v19[1] = xmmword_254F9F990;
    v19[2] = v20;
    v19[3] = v21;

    v13 = v23;
    v12 = v24;
    v16 = v25;
    v15 = v26;
  }

  *a6 = a5 & 1;
  *(a6 + 1) = 0;
  *(a6 + 8) = a1;
  *(a6 + 16) = a2;
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  *(a6 + 40) = v12;
  *(a6 + 56) = v13;
  *(a6 + 72) = v14;
  *(a6 + 80) = v19;
  *(a6 + 88) = 0;
  *(a6 + 96) = 1;
  *(a6 + 104) = v15;
  *(a6 + 120) = v16;
  *(a6 + 136) = v17;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0;
  *(a6 + 184) = 1;
  *(a6 + 204) = 0;
  *(a6 + 188) = 0;
  *(a6 + 196) = 0;
  *(a6 + 212) = 1;
  sub_254F77B4C();
  *(a6 + 248) = 1;
  sub_254F77B28(v22);
  *(a6 + 312) = v18;
}

void ContextMetadata.init(appBundleIdentifier:processInstanceIdentifier:screenSize:frame:isSelected:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  swift_bridgeObjectRelease_n();
  v15 = *a5;
  v16 = a5[1];
  v17 = *(a5 + 32);
  v18 = *a6;
  v19 = a6[1];
  v20 = *(a6 + 32);
  v21 = MEMORY[0x277D84F90];
  if ((v20 & 1) == 0)
  {
    v28 = a6[1];
    v29 = *a6;
    v26 = v16;
    v27 = v15;
    sub_254F52F94(&qword_27F7611D0, &qword_254F9FA00);
    v21 = swift_allocObject();
    v22 = *a6;
    v23 = a6[1];
    v21[1] = xmmword_254F9F990;
    v21[2] = v22;
    v21[3] = v23;

    v16 = v26;
    v15 = v27;
    v19 = v28;
    v18 = v29;
  }

  *a8 = a7 & 1;
  *(a8 + 1) = 0;
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = v15;
  *(a8 + 56) = v16;
  *(a8 + 72) = v17;
  *(a8 + 80) = v21;
  *(a8 + 88) = 0;
  *(a8 + 96) = 1;
  *(a8 + 104) = v18;
  *(a8 + 120) = v19;
  *(a8 + 136) = v20;
  *(a8 + 144) = 0u;
  *(a8 + 160) = 0u;
  *(a8 + 176) = 0;
  *(a8 + 184) = 1;
  *(a8 + 204) = 0;
  *(a8 + 188) = 0;
  *(a8 + 196) = 0;
  *(a8 + 212) = 1;
  sub_254F77B4C();
  *(a8 + 248) = 1;
  sub_254F77B28(v24);
  *(a8 + 312) = v25;
}

double ContextMetadata.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 72) = 1;
  *(a1 + 80) = v2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 204) = 0;
  *(a1 + 188) = 0;
  *(a1 + 196) = 0;
  *(a1 + 212) = 1;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 236) = 3;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 6;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = v2;
  return result;
}

void static ContextMetadata.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2 || ((a1[1] ^ a2[1]) & 1) != 0)
  {
    goto LABEL_124;
  }

  v3 = *(a1 + 2);
  v335 = *(a1 + 3);
  v336 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 7);
  v7 = *(a1 + 8);
  v332 = a1[72];
  v8 = *(a1 + 10);
  v9 = *(a1 + 11);
  v330 = a1[96];
  v11 = *(a1 + 13);
  v10 = *(a1 + 14);
  v12 = *(a1 + 15);
  v328 = a1[136];
  v324 = *(a1 + 18);
  v325 = *(a1 + 19);
  v321 = *(a1 + 21);
  v322 = *(a1 + 20);
  v320 = *(a1 + 22);
  v319 = a1[184];
  v315 = *(a1 + 196);
  v316 = *(a1 + 188);
  v314 = *(a1 + 204);
  v313 = a1[212];
  v13 = a1[236];
  v14 = *(a1 + 58);
  v15 = *(a1 + 30);
  LODWORD(v16) = a1[248];
  v18 = *(a1 + 32);
  v17 = *(a1 + 33);
  v19 = a1[272];
  v21 = *(a1 + 35);
  v20 = *(a1 + 36);
  v23 = *(a1 + 37);
  v22 = *(a1 + 38);
  v24 = *(a1 + 39);
  v25 = *(a2 + 5);
  v26 = *(a2 + 6);
  v27 = *(a2 + 7);
  v28 = *(a2 + 8);
  v29 = *(a2 + 11);
  v31 = *(a2 + 13);
  v30 = *(a2 + 14);
  v32 = *(a2 + 16);
  v33 = *(a2 + 58);
  v34 = *(a2 + 30);
  v35 = *(a2 + 2);
  v333 = *(a2 + 3);
  v36 = *(a2 + 4);
  v331 = a2[72];
  v329 = a2[96];
  v327 = a2[136];
  v323 = *(a2 + 18);
  v326 = *(a2 + 19);
  v317 = *(a2 + 22);
  v318 = a2[184];
  v311 = *(a2 + 204);
  v312 = a2[212];
  v309 = *(a2 + 27);
  v310 = *(a2 + 28);
  v37 = a2[248];
  v38 = *(a2 + 32);
  v39 = *(a2 + 33);
  v40 = a2[272];
  v41 = *(a2 + 35);
  v308 = *(a2 + 36);
  v42 = *(a2 + 37);
  v43 = *(a2 + 38);
  if (v3)
  {
    if (!v35)
    {
      goto LABEL_124;
    }

    if (*(a1 + 1) != *(a2 + 1) || v3 != v35)
    {
      v296 = a2[272];
      v282 = a1[236];
      v284 = *(a1 + 37);
      v276 = *(a1 + 39);
      v280 = *(a1 + 10);
      v248 = *(a1 + 27);
      v250 = *(a1 + 36);
      v288 = *(a1 + 35);
      v300 = *(a1 + 38);
      v45 = *(a2 + 35);
      v46 = a1[272];
      HIDWORD(v286) = a1[248];
      v259 = *(a1 + 32);
      v47 = *(a1 + 33);
      v304 = *(a1 + 30);
      v48 = *(a1 + 58);
      v49 = *(a2 + 32);
      v264 = a2[248];
      v293 = *(a1 + 11);
      v270 = *(a1 + 14);
      v272 = *(a1 + 15);
      v274 = *(a2 + 11);
      v257 = *(a1 + 13);
      v50 = *(a1 + 8);
      v240 = *(a1 + 7);
      v242 = *(a1 + 5);
      v51 = *(a2 + 13);
      v244 = *(a2 + 14);
      v246 = *(a2 + 16);
      v52 = *(a1 + 6);
      v53 = *(a2 + 8);
      v266 = *(a2 + 5);
      v268 = *(a2 + 6);
      v54 = *(a2 + 7);
      v55 = sub_254F9BE30();
      v25 = v266;
      v26 = v268;
      v27 = v54;
      v28 = v53;
      v4 = v242;
      v30 = v244;
      v5 = v52;
      v32 = v246;
      v31 = v51;
      v6 = v240;
      v7 = v50;
      v11 = v257;
      v12 = v272;
      v29 = *&v274;
      v10 = v270;
      v9 = v293;
      v37 = v264;
      v20 = v250;
      v38 = v49;
      v14 = v48;
      v40 = v296;
      v15 = v304;
      v17 = v47;
      v18 = v259;
      LODWORD(v16) = HIDWORD(v286);
      v19 = v46;
      v41 = v45;
      v8 = v280;
      v13 = v282;
      v22 = v300;
      v23 = v284;
      v21 = v288;
      v24 = v276;
      if ((v55 & 1) == 0)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v35)
  {
    goto LABEL_124;
  }

  if (v336)
  {
    if (!v36)
    {
      goto LABEL_124;
    }

    if (v335 != v333 || v336 != v36)
    {
      v297 = v40;
      v282 = v13;
      v284 = v23;
      v301 = v22;
      v233 = v38;
      v236 = v42;
      v289 = v21;
      HIDWORD(v286) = v16;
      v16 = v17;
      v305 = v15;
      v57 = v20;
      v277 = v24;
      v280 = v8;
      v58 = v14;
      v254 = v33;
      v59 = v37;
      v272 = v12;
      *&v274 = v29;
      v60 = v11;
      v294 = v9;
      v268 = v26;
      v270 = v10;
      v61 = v7;
      v62 = v6;
      v63 = v31;
      v64 = v30;
      v65 = v32;
      v257 = v5;
      v66 = v4;
      v248 = v27;
      v250 = v28;
      v266 = v25;
      v67 = sub_254F9BE30();
      v25 = v266;
      v26 = v268;
      v27 = v248;
      v28 = v250;
      v4 = v66;
      v5 = v257;
      v32 = v65;
      v30 = v64;
      v31 = v63;
      v6 = v62;
      v7 = v61;
      v9 = v294;
      v11 = v60;
      v29 = *&v274;
      v37 = v59;
      v33 = v254;
      v13 = v282;
      v14 = v58;
      v24 = v277;
      v40 = v297;
      v20 = v57;
      v15 = v305;
      v17 = v16;
      LODWORD(v16) = HIDWORD(v286);
      v21 = v289;
      v38 = v233;
      v42 = v236;
      v22 = v301;
      v23 = v284;
      if ((v67 & 1) == 0)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v36)
  {
    goto LABEL_124;
  }

  if (v332)
  {
    if ((v331 & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  else
  {
    if (v331)
    {
      goto LABEL_124;
    }

    v306 = v15;
    v230 = v34;
    v257 = v11;
    v334 = v31;
    v282 = v13;
    v284 = v23;
    v302 = v22;
    v280 = v8;
    v237 = v42;
    v68 = v43;
    v290 = v21;
    HIDWORD(v286) = v16;
    v16 = v17;
    v69 = v20;
    v298 = v40;
    v70 = v24;
    v71 = v14;
    v72 = v38;
    v265 = v37;
    v73 = v30;
    v74 = v32;
    v75 = CGRectEqualToRect(*&v4, *&v25);
    v32 = v74;
    v30 = v73;
    v31 = v334;
    v37 = v265;
    v34 = v230;
    v38 = v72;
    v14 = v71;
    v24 = v70;
    v40 = v298;
    v20 = v69;
    v15 = v306;
    v17 = v16;
    LOBYTE(v16) = BYTE4(v286);
    v21 = v290;
    v43 = v68;
    v42 = v237;
    v13 = v282;
    v22 = v302;
    v23 = v284;
    if (!v75)
    {
      goto LABEL_124;
    }
  }

  HIDWORD(v252) = v33;
  v307 = v15;
  v231 = v34;
  v255 = v39;
  HIDWORD(v262) = v37;
  v234 = v38;
  v238 = v42;
  v260 = v18;
  v228 = v17;
  HIDWORD(v226) = v19;
  v299 = v40;
  v221 = v43;
  v223 = v41;
  v303 = v22;
  v76 = v20;
  v77 = v24;
  v78 = v13;
  v79 = v14;
  v295 = v9;
  v80 = v31;
  v81 = v30;
  v82 = v32;
  sub_254F55378();
  if ((v83 & 1) == 0)
  {
LABEL_124:
    sub_254F77C8C();
    return;
  }

  sub_254F4E424();
  if (v330)
  {
    if (!v329)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v105 = v329;
    if (v295 != v29)
    {
      v105 = 1;
    }

    if (v105)
    {
      goto LABEL_124;
    }
  }

  if (v328)
  {
    if ((v327 & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  else
  {
    if (v327)
    {
      goto LABEL_124;
    }

    v106 = v80;
    v107 = v81;
    v108 = v82;
    CGRectEqualToRect(*&v97, *(&v101 - 2));
    sub_254F5062C();
    sub_254F4E424();
    if (!v109)
    {
      goto LABEL_124;
    }
  }

  if (v325)
  {
    if (!v326)
    {
      goto LABEL_124;
    }

    if (v324 != v323 || v325 != v326)
    {
      sub_254F9BE30();
      sub_254F5062C();
      sub_254F4E424();
      if ((v111 & 1) == 0)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v326)
  {
    goto LABEL_124;
  }

  v341 = v322;
  v342 = v321;
  v343 = v320;
  v344 = v319;
  v345 = v102;
  v346 = v317;
  v112 = v318;
  v347 = v318;
  if ((v319 & 1) == 0)
  {
    v338.i64[0] = v322;
    v338.i64[1] = v321;
    v339 = v320;
    v340 = 0;
    if (v318)
    {
      goto LABEL_124;
    }

    static BoundingBox.== infix(_:_:)(&v338, &v345);
    sub_254F5062C();
    sub_254F4E424();
  }

  if ((v112 & 1) == 0)
  {
    goto LABEL_124;
  }

  v341 = v316;
  v342 = v315;
  v343 = v314;
  v344 = v313;
  v345 = v103;
  v346 = v311;
  v113 = v312;
  v347 = v312;
  if ((v313 & 1) == 0)
  {
    v338.i64[0] = v316;
    v338.i64[1] = v315;
    v339 = v314;
    v340 = 0;
    if (v312)
    {
      goto LABEL_124;
    }

    static BoundingBox.== infix(_:_:)(&v338, &v345);
    sub_254F5062C();
    sub_254F4E424();
  }

  if ((v113 & 1) == 0)
  {
    goto LABEL_124;
  }

  if (v84)
  {
    if (!v310)
    {
      goto LABEL_124;
    }

    if (v95 != v309 || v84 != v310)
    {
      sub_254F9BE30();
      sub_254F5062C();
      v94 = v79;
      v91 = v78;
      v93 = v77;
      v92 = v76;
      if ((v113 & 1) == 0)
      {
        goto LABEL_124;
      }
    }
  }

  else if (v310)
  {
    goto LABEL_124;
  }

  v115 = v94 | (v91 << 32);
  if (BYTE4(v115) == 3)
  {
    if (v96 != 3)
    {
      goto LABEL_124;
    }
  }

  else if (v96 == 3 || v104 != *&v115 || BYTE4(v115) != v96)
  {
    goto LABEL_124;
  }

  v278 = v93;
  v118 = v16;
  v119 = v92;
  v291 = v21;
  if (v118)
  {
    v120 = v228;
    if (!HIDWORD(v262))
    {
      goto LABEL_124;
    }
  }

  else
  {
    v121 = BYTE4(v262);
    if (v307 != *&v34)
    {
      v121 = 1;
    }

    v120 = v228;
    if (v121)
    {
      goto LABEL_124;
    }
  }

  if (!v120)
  {
    v122 = v19;
    if (!v39)
    {
      goto LABEL_90;
    }

    goto LABEL_124;
  }

  v122 = v19;
  v113 = v18;
  v84 = v228;
  v86 = v39;
  v85 = v234;
  if (!v39)
  {
    goto LABEL_124;
  }

  if (v18 != v234 || v228 != v39)
  {
    v113 = sub_254F9BE30();
    v122 = v19;
    if ((v113 & 1) == 0)
    {
      goto LABEL_124;
    }
  }

LABEL_90:
  if (v122 == 6)
  {
    v124 = v299 == 6;
  }

  else
  {
    v124 = v299 != 6 && v19 == v299;
  }

  if (!v124)
  {
    goto LABEL_124;
  }

  if (v119)
  {
    if (v308)
    {
      v125 = v21 == v223 && v119 == v308;
      if (v125 || (v113 = sub_254F9BE30(), (v113 & 1) != 0))
      {
        if (!v303)
        {
          v163 = sub_254F4F3C8(v113, v84, v85, v86, v87, v88, v89, v90, v219, v221, v223, v226, v228, v34, v234, v42, v240, v242, v244, v246, v248, v250, v252, v39, v257, v18, v262, v266, v268, v270, v272, v274, v278, v280, v282, v284, v286, v21);
          sub_254F6E24C(v163, v164, v165, 0);
          v166 = 0;
          if (!v222)
          {
            v167 = sub_254F4F1B0();
            sub_254F6E24C(v167, v168, v239, 0);
            v177 = sub_254F4F3C8(v169, v170, v171, v172, v173, v174, v175, v176, v220, 0, v225, v227, v229, v232, v235, v239, v241, v243, v245, v247, v249, v251, v253, v256, v258, v261, v263, v267, v269, v271, v273, v275, v279, v281, v283, v285, v287, v292);
            sub_254F6E24C(v177, v178, v179, 0);
            v180 = sub_254F4F1B0();
            goto LABEL_126;
          }

LABEL_121:
          v185 = sub_254F4F1B0();
          sub_254F6E24C(v185, v186, v239, v222);
          v195 = sub_254F4F3C8(v187, v188, v189, v190, v191, v192, v193, v194, v220, v222, v225, v227, v229, v232, v235, v239, v241, v243, v245, v247, v249, v251, v253, v256, v258, v261, v263, v267, v269, v271, v273, v275, v279, v281, v283, v285, v287, v292);
          sub_254F6E24C(v195, v196, v197, v166);
          v198 = sub_254F4F1B0();
          sub_254F72780(v198, v199);
LABEL_122:

          v153 = sub_254F4F3C8(v200, v201, v202, v203, v204, v205, v206, v207, v219, v221, v223, v226, v228, v231, v234, v238, v240, v242, v244, v246, v248, v250, v252, v255, v257, v260, v262, v266, v268, v270, v272, v274, v278, v280, v282, v284, v286, v291);
          goto LABEL_123;
        }

        if (v221)
        {
          if (v23 != v42 || v303 != v221)
          {
            v337 = sub_254F9BE30();
            sub_254F778E8();
            sub_254F6E24C(v127, v128, v129, v303);
            v130 = sub_254F4F1B0();
            sub_254F6E24C(v130, v131, v42, v221);
            sub_254F778E8();
            sub_254F6E24C(v132, v133, v134, v303);
            v135 = sub_254F4F1B0();
            sub_254F72780(v135, v136);
            if (v337)
            {
              goto LABEL_127;
            }

            goto LABEL_122;
          }

          sub_254F778E8();
          sub_254F6E24C(v208, v209, v210, v303);
          v211 = sub_254F4F1B0();
          sub_254F6E24C(v211, v212, v23, v303);
          sub_254F778E8();
          sub_254F6E24C(v213, v214, v215, v303);
          v180 = sub_254F4F1B0();
LABEL_126:
          sub_254F72780(v180, v181);
LABEL_127:

          goto LABEL_128;
        }

        v221 = 0;
      }

      v182 = sub_254F4F3C8(v113, v84, v85, v86, v87, v88, v89, v90, v219, v221, v223, v226, v228, v34, v234, v42, v240, v242, v244, v246, v248, v250, v252, v39, v257, v18, v262, v266, v268, v270, v272, v274, v278, v280, v282, v284, v286, v21);
      v166 = v303;
      sub_254F6E24C(v182, v183, v184, v303);
      goto LABEL_121;
    }

    sub_254F778E8();
    sub_254F6E24C(v145, v146, v147, v303);
    sub_254F6E24C(v223, 0, v42, v221);
    sub_254F778E8();
    sub_254F6E24C(v148, v149, v150, v303);

LABEL_115:
    v151 = sub_254F4F3C8(v137, v138, v139, v140, v141, v142, v143, v144, v219, v221, v223, v226, v228, v34, v234, v42, v240, v242, v244, v246, v248, v250, v252, v39, v257, v18, v262, v266, v268, v270, v272, v274, v278, v280, v282, v284, v286, v21);
    sub_254F72780(v151, v152);
    v153 = v224;
    v154 = v308;
LABEL_123:
    sub_254F72780(v153, v154);
    goto LABEL_124;
  }

  sub_254F6E24C(v21, 0, v23, v303);
  if (v308)
  {
    sub_254F6E24C(v223, v308, v42, v221);
    goto LABEL_115;
  }

  sub_254F6E24C(v223, 0, v42, v221);
LABEL_128:
  v216 = sub_254F4F3C8(v155, v156, v157, v158, v159, v160, v161, v162, v219, v221, v223, v226, v228, v231, v234, v238, v240, v242, v244, v246, v248, v250, v252, v255, v257, v260, v262, v266, v268, v270, v272, v274, v278, v280, v282, v284, v286, v291);
  sub_254F72780(v216, v217);
  sub_254F77C8C();

  sub_254F553FC();
}

unint64_t sub_254F6E14C()
{
  result = qword_280C45790;
  if (!qword_280C45790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C45790);
  }

  return result;
}

uint64_t sub_254F6E1A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_254F77C50();
  v4(v3);
  sub_254F4E534();
  v5 = sub_254F4E364();
  v6(v5);
  return a2;
}

uint64_t sub_254F6E1F8()
{
  v1 = sub_254F778A0();
  v2(v1);
  sub_254F4E534();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_254F6E24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_254F6E290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72616D6972507369 && a2 == 0xE900000000000079;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000254FA6690 == a2;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x8000000254FA66B0 == a2;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69536E6565726373 && a2 == 0xEA0000000000657ALL;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x73656D617266 && a2 == 0xE600000000000000;
            if (v10 || (sub_254F9BE30() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x8000000254FA66D0 == a2;
              if (v11 || (sub_254F9BE30() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x656D617266 && a2 == 0xE500000000000000;
                if (v12 || (sub_254F9BE30() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
                  if (v13 || (sub_254F9BE30() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x8000000254FA66F0 == a2;
                    if (v14 || (sub_254F9BE30() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000013 && 0x8000000254FA6710 == a2;
                      if (v15 || (sub_254F9BE30() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6449797469746E65 && a2 == 0xE800000000000000;
                        if (v16 || (sub_254F9BE30() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x79636E65696C6173 && a2 == 0xE800000000000000;
                          if (v17 || (sub_254F9BE30() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 7431539 && a2 == 0xE300000000000000;
                            if (v18 || (sub_254F9BE30() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x644970756F7267 && a2 == 0xE700000000000000;
                              if (v19 || (sub_254F9BE30() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x72756F5361746164 && a2 == 0xEA00000000006563;
                                if (v20 || (sub_254F9BE30() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000015 && 0x8000000254FA6730 == a2;
                                  if (v21 || (sub_254F9BE30() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0xD000000000000017 && 0x8000000254FA6750 == a2)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_254F9BE30();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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

unint64_t sub_254F6E7E8(char a1)
{
  result = 0x7463656C65537369;
  switch(a1)
  {
    case 1:
      result = 0x72616D6972507369;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x69536E6565726373;
      break;
    case 5:
      result = 0x73656D617266;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x656D617266;
      break;
    case 8:
      result = 0x6C646E7542707061;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x6449797469746E65;
      break;
    case 12:
      result = 0x79636E65696C6173;
      break;
    case 13:
      result = 7431539;
      break;
    case 14:
      result = 0x644970756F7267;
      break;
    case 15:
      result = 0x72756F5361746164;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F6E9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F6E290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F6EA14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F6E7E0();
  *a1 = result;
  return result;
}

uint64_t sub_254F6EA3C(uint64_t a1)
{
  v2 = sub_254F727C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F6EA78(uint64_t a1)
{
  v2 = sub_254F727C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextMetadata.encode(to:)()
{
  sub_254F4E9D0();
  v3 = v2;
  sub_254F52F94(&qword_27F7611D8, &qword_254F9FA08);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v4);
  sub_254F778D8();
  v8 = v0[35];
  v11 = v0[36];
  v10 = v0[37];
  v9 = v0[38];
  sub_254F4EFBC(v3, v3[3]);
  sub_254F727C4();
  sub_254F9BF20();
  sub_254F9BDC0();
  if (v1)
  {
    v5 = sub_254F778F4();
  }

  else
  {
    sub_254F505C8();
    sub_254F9BDC0();
    sub_254F4F22C(2);
    sub_254F77B1C();
    sub_254F505C8();
    sub_254F9BD40();
    sub_254F4F22C(3);
    sub_254F505C8();
    sub_254F9BD40();
    type metadata accessor for CGRect(0);
    sub_254F4E4A4();
    sub_254F6A874(v7);
    sub_254F7797C();
    sub_254F505C8();
    sub_254F9BD80();
    sub_254F52F94(&qword_27F7611E0, &qword_254F9FA10);
    sub_254F72968(&unk_280C459D0);
    sub_254F7797C();
    sub_254F505C8();
    sub_254F9BE00();
    sub_254F4F22C(6);
    sub_254F505C8();
    sub_254F9BD60();
    sub_254F7797C();
    sub_254F505C8();
    sub_254F9BD80();
    sub_254F4F22C(8);
    sub_254F505C8();
    sub_254F9BD40();
    sub_254F72818();
    sub_254F7797C();
    sub_254F505C8();
    sub_254F9BD80();
    sub_254F7797C();
    sub_254F505C8();
    sub_254F9BD80();
    sub_254F4F22C(11);
    sub_254F4F274();
    sub_254F9BD40();
    sub_254F6A90C();
    sub_254F7797C();
    sub_254F4F274();
    sub_254F9BD80();
    sub_254F4F22C(13);
    sub_254F4F274();
    sub_254F9BD60();
    sub_254F4F22C(14);
    sub_254F4F274();
    sub_254F9BD40();
    sub_254F7286C();
    sub_254F7797C();
    sub_254F4F274();
    sub_254F9BD80();
    sub_254F6E24C(v8, v11, v10, v9);
    sub_254F728C0();
    sub_254F7797C();
    sub_254F4F274();
    sub_254F9BD80();
    sub_254F72780(v8, v11);
    sub_254F52F94(&qword_27F7611E8, &qword_254F9FA18);
    sub_254F72AE4(&unk_280C45A10);
    sub_254F7797C();
    sub_254F4F274();
    sub_254F9BE00();
    v5 = sub_254F5043C();
  }

  v6(v5);
  sub_254F4F348();
}

void ContextMetadata.init(from:)()
{
  sub_254F4E9D0();
  v3 = v2;
  v5 = v4;
  v6 = sub_254F52F94(&qword_27F7611F0, &qword_254F9FA20);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F778D8();
  v75 = v3;
  sub_254F4EFBC(v3, v3[3]);
  sub_254F727C4();
  sub_254F9BF10();
  if (v0)
  {
    sub_254F7786C();
    sub_254F4DA5C(v3);

    if (v5)
    {
    }

    if (v1)
    {

      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else if (!v6)
    {
LABEL_7:
      if (!v3)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (!v3)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_254F72780(v70, v68);
    goto LABEL_12;
  }

  LOBYTE(v77[0]) = 0;
  v8 = sub_254F9BCD0();
  sub_254F4E584(1);
  v66 = sub_254F9BCD0();
  sub_254F4E584(2);
  v9 = sub_254F9BC50();
  v63 = v8;
  v65 = v10;
  sub_254F4E584(3);
  v60 = sub_254F9BC50();
  v61 = v9;
  v62 = v11;
  type metadata accessor for CGRect(0);
  sub_254F4E4A4();
  sub_254F6A874(v12);
  sub_254F77B04();
  sub_254F9BC90();
  sub_254F4F160();
  v58 = v13;
  v59 = v14;
  v56 = v79;
  v57 = v78;
  v147 = v80;
  sub_254F52F94(&qword_27F7611E0, &qword_254F9FA10);
  sub_254F72968(&unk_280C459C8);
  sub_254F9BD10();
  v15 = v77[0];
  sub_254F4E584(6);
  v55 = sub_254F9BC70();
  v145 = v16 & 1;
  sub_254F77B04();
  sub_254F9BC90();
  sub_254F4F160();
  v50 = v17;
  v51 = v18;
  v53 = v79;
  v54 = v78;
  v143 = v80;
  sub_254F4E584(8);
  v52 = sub_254F9BC50();
  v74 = v19;
  sub_254F729E8();
  sub_254F77834();
  sub_254F7790C();
  sub_254F9BC90();
  sub_254F4F160();
  v48 = v20;
  v49 = v21;
  v47 = v78;
  v141 = v79;
  sub_254F77834();
  sub_254F7790C();
  sub_254F9BC90();
  sub_254F4F160();
  v45 = v22;
  v46 = v23;
  v44 = v78;
  v138 = v79;
  sub_254F4E584(11);
  v43 = sub_254F9BC50();
  v73 = v24;
  sub_254F6B0AC();
  sub_254F77834();
  sub_254F7790C();
  sub_254F9BC90();
  sub_254F4E584(13);
  v42 = sub_254F9BC70();
  v133 = v25 & 1;
  sub_254F4E584(14);
  v39 = sub_254F9BC50();
  v72 = v26;
  sub_254F72A3C();
  sub_254F77834();
  sub_254F7790C();
  sub_254F9BC90();
  LOBYTE(v76[0]) = 16;
  sub_254F72A90();
  sub_254F77834();
  sub_254F7790C();
  sub_254F9BC90();
  sub_254F4F160();
  v69 = v27;
  v71 = v28;
  v67 = v78;
  v29 = v79;
  sub_254F52F94(&qword_27F7611E8, &qword_254F9FA18);
  v129 = 17;
  sub_254F72AE4(&unk_280C45A08);
  sub_254F7790C();
  sub_254F9BD10();
  v30 = v63 & 1;
  v37 = v63 & 1;
  v66 &= 1u;
  v64 = LODWORD(v77[0]) | (BYTE4(v77[0]) << 32);
  v31 = sub_254F778F4();
  v32(v31);
  v35 = v130;
  LOBYTE(v76[0]) = v30;
  BYTE1(v76[0]) = v66;
  *(v76 + 2) = v148;
  HIWORD(v76[0]) = v149;
  v76[1] = v61;
  v76[2] = v65;
  v76[3] = v60;
  v76[4] = v62;
  v76[5] = v59;
  v76[6] = v58;
  v76[7] = v57;
  v76[8] = v56;
  v36 = v147;
  LOBYTE(v76[9]) = v147;
  HIDWORD(v76[9]) = *&v146[3];
  *(&v76[9] + 1) = *v146;
  v76[10] = v15;
  v76[11] = v55;
  v34 = v145;
  LOBYTE(v76[12]) = v145;
  *(&v76[12] + 1) = *v144;
  HIDWORD(v76[12]) = *&v144[3];
  v76[13] = v51;
  v76[14] = v50;
  v76[15] = v54;
  v76[16] = v53;
  v41 = v143;
  LOBYTE(v76[17]) = v143;
  HIDWORD(v76[17]) = *&v142[3];
  *(&v76[17] + 1) = *v142;
  v76[18] = v52;
  v76[19] = v74;
  v76[20] = v49;
  v76[21] = v48;
  v76[22] = v47;
  v40 = v141;
  LOBYTE(v76[23]) = v141;
  BYTE3(v76[23]) = v140;
  *(&v76[23] + 1) = v139;
  *(&v76[23] + 4) = v46;
  *(&v76[24] + 4) = v45;
  *(&v76[25] + 4) = v44;
  v38 = v138;
  BYTE4(v76[26]) = v138;
  HIBYTE(v76[26]) = v137;
  *(&v76[26] + 5) = v136;
  v76[27] = v43;
  v76[28] = v73;
  *(&v76[29] + 5) = v134;
  HIDWORD(v76[31]) = *&v132[3];
  *(&v76[31] + 1) = *v132;
  *(&v76[34] + 1) = *v131;
  BYTE4(v76[29]) = BYTE4(v64);
  LODWORD(v76[29]) = v64;
  HIBYTE(v76[29]) = v135;
  v76[30] = v42;
  HIDWORD(v76[34]) = *&v131[3];
  v33 = v133;
  LOBYTE(v76[31]) = v133;
  v76[32] = v39;
  v76[33] = v72;
  LOBYTE(v76[34]) = 0;
  v76[35] = v71;
  v76[36] = v69;
  v76[37] = v67;
  v76[38] = v29;
  v76[39] = v130;
  memcpy(v5, v76, 0x140uLL);
  sub_254F72BA4(v76, v77);
  sub_254F4DA5C(v75);
  LOBYTE(v77[0]) = v37;
  BYTE1(v77[0]) = v66;
  v77[1] = v61;
  v78 = v65;
  v79 = v60;
  v80 = v62;
  v81 = v59;
  v82 = v58;
  v83 = v57;
  v84 = v56;
  v85 = v36;
  v87 = v15;
  v88 = v55;
  v89 = v34;
  v91 = v51;
  v92 = v50;
  *(v77 + 2) = v148;
  HIWORD(v77[0]) = v149;
  *v86 = *v146;
  *&v86[3] = *&v146[3];
  *v90 = *v144;
  *&v90[3] = *&v144[3];
  v93 = v54;
  v94 = v53;
  v95 = v41;
  *v96 = *v142;
  *&v96[3] = *&v142[3];
  v97 = v52;
  v98 = v74;
  v99 = v49;
  v100 = v48;
  v101 = v47;
  v102 = v40;
  v104 = v140;
  v103 = v139;
  v105 = v46;
  v106 = v45;
  v107 = v44;
  v108 = v38;
  v110 = v137;
  v109 = v136;
  v111 = v43;
  v112 = v73;
  v113 = v64;
  v114 = BYTE4(v64);
  v116 = v135;
  v115 = v134;
  v117 = v42;
  v118 = v33;
  *&v119[3] = *&v132[3];
  *v119 = *v132;
  v120 = v39;
  v121 = v72;
  v122 = 0;
  *v123 = *v131;
  *&v123[3] = *&v131[3];
  v124 = v71;
  v125 = v69;
  v126 = v67;
  v127 = v29;
  v128 = v35;
  sub_254F6C164(v77);
LABEL_12:
  sub_254F4F348();
}

IntelligenceFlowShared::ContextualEntityDisplayRepresentation __swiftcall ContextualEntityDisplayRepresentation.init(title:subtitle:)(Swift::String title, Swift::String_optional subtitle)
{
  v2->value = title;
  v2[1] = subtitle;
  result.subtitle = subtitle;
  result.title = title;
  return result;
}

uint64_t static ContextualEntityDisplayRepresentation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_254F9BE30(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_254F9BE30() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_254F6FE24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F9BE30();

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

uint64_t sub_254F6FEF0(char a1)
{
  if (a1)
  {
    return 0x656C746974627573;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_254F6FF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F6FE24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F6FF54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254F6FEE8();
  *a1 = result;
  return result;
}

uint64_t sub_254F6FF7C(uint64_t a1)
{
  v2 = sub_254F72BDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F6FFB8(uint64_t a1)
{
  v2 = sub_254F72BDC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextualEntityDisplayRepresentation.encode(to:)()
{
  sub_254F4E9D0();
  sub_254F52F94(&qword_27F7611F8, &qword_254F9FA28);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v1);
  sub_254F4E558();
  v2 = sub_254F5043C();
  sub_254F4EFBC(v2, v3);
  sub_254F72BDC();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F4E2F0();
  sub_254F9BDB0();
  if (!v0)
  {
    sub_254F77AF8();
    sub_254F4E2F0();
    sub_254F9BD40();
  }

  v4 = sub_254F77A78();
  v5(v4);
  sub_254F4F348();
}

uint64_t ContextualEntityDisplayRepresentation.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_254F9B9C0();
  if (!v2)
  {
    return sub_254F9BED0();
  }

  sub_254F9BED0();
  sub_254F77A78();

  return sub_254F9B9C0();
}

uint64_t ContextualEntityDisplayRepresentation.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_254F77C0C(a1);
  sub_254F9B9C0();
  sub_254F9BED0();
  if (v2)
  {
    sub_254F9B9C0();
  }

  return sub_254F9BF00();
}

void ContextualEntityDisplayRepresentation.init(from:)()
{
  sub_254F4E9D0();
  sub_254F77AD8();
  v4 = sub_254F52F94(&qword_27F761208, &qword_254F9FA30);
  sub_254F4DF18();
  v6 = v5;
  sub_254F4E30C();
  MEMORY[0x28223BE20](v7);
  sub_254F4E38C();
  sub_254F77848();
  v8 = sub_254F72BDC();
  sub_254F77988(&type metadata for ContextualEntityDisplayRepresentation.CodingKeys, v9, v8);
  if (v1)
  {
    sub_254F4DA5C(v0);
  }

  else
  {
    sub_254F5002C();
    v10 = sub_254F9BCC0();
    v12 = v11;
    sub_254F77AF8();
    sub_254F5002C();
    v13 = sub_254F9BC50();
    v15 = v14;
    v16 = v13;
    (*(v6 + 8))(v3, v4);
    *v2 = v10;
    v2[1] = v12;
    v2[2] = v16;
    v2[3] = v15;

    sub_254F4DA5C(v0);
  }

  sub_254F4F348();
}

uint64_t sub_254F703F4()
{
  v1 = *(v0 + 24);
  sub_254F9BEB0();
  sub_254F9B9C0();
  sub_254F9BED0();
  if (v1)
  {
    sub_254F9B9C0();
  }

  return sub_254F9BF00();
}

void __swiftcall BoundingBox.init(xCoordinate:yCoordinate:zCoordinate:width:height:depth:)(IntelligenceFlowShared::BoundingBox *__return_ptr retstr, Swift::Float xCoordinate, Swift::Float yCoordinate, Swift::Float zCoordinate, Swift::Float width, Swift::Float height, Swift::Float depth)
{
  retstr->xCoordinate = xCoordinate;
  retstr->yCoordinate = yCoordinate;
  retstr->zCoordinate = zCoordinate;
  retstr->width = width;
  retstr->height = height;
  retstr->depth = depth;
}

BOOL static BoundingBox.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) != 0 && a1[1].f32[0] == a2[1].f32[0])
  {
    return a1[1].f32[1] == a2[1].f32[1];
  }

  return result;
}

uint64_t sub_254F70504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6964726F6F4378 && a2 == 0xEB00000000657461;
  if (v3 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6964726F6F4379 && a2 == 0xEB00000000657461;
    if (v6 || (sub_254F9BE30() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6964726F6F437ALL && a2 == 0xEB00000000657461;
      if (v7 || (sub_254F9BE30() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
        if (v8 || (sub_254F9BE30() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
          if (v9 || (sub_254F9BE30() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6874706564 && a2 == 0xE500000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_254F9BE30();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_254F706D4(char a1)
{
  result = 0x6E6964726F6F4378;
  switch(a1)
  {
    case 1:
      result = 0x6E6964726F6F4379;
      break;
    case 2:
      result = 0x6E6964726F6F437ALL;
      break;
    case 3:
      result = 0x6874646977;
      break;
    case 4:
      result = 0x746867696568;
      break;
    case 5:
      result = 0x6874706564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_254F7076C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F70504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F70794(uint64_t a1)
{
  v2 = sub_254F72C30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F707D0(uint64_t a1)
{
  v2 = sub_254F72C30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BoundingBox.encode(to:)(void *a1)
{
  sub_254F52F94(&qword_27F761210, &qword_254F9FA38);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v3);
  sub_254F4E558();
  sub_254F4EFBC(a1, a1[3]);
  sub_254F72C30();
  sub_254F4F360();
  sub_254F77C5C();
  sub_254F9BF20();
  sub_254F4E2F0();
  sub_254F9BDE0();
  if (!v1)
  {
    sub_254F4E2F0();
    sub_254F9BDE0();
    sub_254F4E2F0();
    sub_254F9BDE0();
    sub_254F4E2F0();
    sub_254F9BDE0();
    sub_254F4E2F0();
    sub_254F9BDE0();
    sub_254F4E2F0();
    sub_254F9BDE0();
  }

  v4 = sub_254F77A78();
  return v5(v4);
}

void BoundingBox.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17, char a18, char a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_254F77D18();
  a31 = v33;
  a32 = v34;
  v36 = v35;
  v38 = v37;
  v39 = sub_254F52F94(&qword_27F761218, &qword_254F9FA40);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v40);
  sub_254F4E38C();
  sub_254F77848();
  sub_254F72C30();
  sub_254F779D0();
  sub_254F9BF10();
  if (!v32)
  {
    a22 = 0;
    sub_254F77934(&a22);
    v42 = v41;
    sub_254F77AF8();
    sub_254F77934(&a21);
    v44 = v43;
    a20 = 2;
    sub_254F77934(&a20);
    v46 = v45;
    a19 = 3;
    sub_254F77934(&a19);
    v48 = v47;
    a18 = 4;
    sub_254F77934(&a18);
    v50 = v49;
    a17 = 5;
    sub_254F77934(&a17);
    v52 = v51;
    v53 = sub_254F77900();
    v54(v53, v39);
    *v38 = v42;
    v38[1] = v44;
    v38[2] = v46;
    v38[3] = v48;
    v38[4] = v50;
    v38[5] = v52;
  }

  sub_254F4DA5C(v36);
  sub_254F77D3C();
}

double SurroundingText.onScreenBoundingBox.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 16);
  result = *(v1 + 32);
  *(a1 + 16) = result;
  return result;
}

BOOL static SurroundingText.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[1];
  v3 = a1[2].i64[0];
  v4 = a2[1];
  v5 = a2[2].i64[0];
  v6 = a1->i64[0] == a2->i64[0] && a1->i64[1] == a2->i64[1];
  if (v6 || (v11 = a2[1], v12 = a1[1], v7 = sub_254F9BE30(), v4 = v11, v2 = v12, v8 = v7, v9 = 0, (v8 & 1) != 0))
  {
    v15 = v2;
    v16 = v3;
    v13 = v4;
    v14 = v5;
    return static BoundingBox.== infix(_:_:)(&v15, &v13);
  }

  return v9;
}

uint64_t sub_254F70CC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_254F9BE30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000254FA6710 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_254F9BE30();

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

uint64_t sub_254F70D94(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_254F70DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254F70CC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254F70DF8(uint64_t a1)
{
  v2 = sub_254F72C84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254F70E34(uint64_t a1)
{
  v2 = sub_254F72C84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SurroundingText.encode(to:)(void *a1)
{
  sub_254F52F94(&qword_27F761220, &qword_254F9FA48);
  sub_254F4DF18();
  sub_254F4E30C();
  MEMORY[0x28223BE20](v3);
  sub_254F4E558();
  sub_254F4EFBC(a1, a1[3]);
  sub_254F72C84();
  sub_254F4F360();
  sub_254F9BF20();
  sub_254F77B1C();
  sub_254F4E2F0();
  sub_254F9BDB0();
  if (!v1)
  {
    sub_254F72818();
    sub_254F4E2F0();
    sub_254F9BE00();
  }

  v4 = sub_254F77A78();
  return v5(v4);
}
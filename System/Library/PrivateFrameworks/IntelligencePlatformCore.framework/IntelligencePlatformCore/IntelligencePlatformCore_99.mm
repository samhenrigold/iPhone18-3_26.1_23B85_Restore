void sub_1C4D2D48C()
{
  sub_1C43FEC28();
  v103 = v2;
  v105 = v3;
  v5 = v4;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FCBE0(v8, v100[0]);
  v9 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v9);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v100 - v11;
  v13 = type metadata accessor for VirtualInteractionContact(0);
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBD08();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C4425958();
  v21 = type metadata accessor for VirtualInteraction(0);
  v22 = v21;
  v23 = *(v5 + v21[8]);
  if (v23 != 1)
  {
    if (v23)
    {
LABEL_46:
      sub_1C44086C4();
      return;
    }

    sub_1C445FFF0(v5 + v21[9], v12, &qword_1EC0BDBF8, &unk_1C4F6DE80);
    if (sub_1C44157D4(v12, 1, v13) == 1)
    {
      sub_1C4420C3C(v12, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      goto LABEL_46;
    }

    sub_1C4417B58();
    sub_1C4D2F76C(v12, v1, v38);
    v39 = *(v1 + 16);
    v40 = *(v1 + 24);
    v41 = sub_1C4EF9CD8();
    sub_1C43FBCE0();
    v43 = v104;
    (*(v42 + 16))(v104, v103, v41);
    sub_1C43FBD94();
    sub_1C440BAA8(v44, v45, v46, v41);
    v47 = sub_1C4886564(v39, v40, v43);
    v49 = v48;
    sub_1C4420C3C(v43, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (v49)
    {
      v50 = v47;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0xE000000000000000;
    }

    sub_1C4EF9B78();
    v52 = v105;
    swift_isUniquelyReferenced_nonNull_native();
    v106 = *v52;
    sub_1C445FAA8(v50, v51);
    sub_1C43FC438();
    if (!__OFADD__(v55, v56))
    {
      v57 = v53;
      v58 = v54;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C441CFF4();
      v59 = sub_1C4F02458();
      v60 = v106;
      if ((v59 & 1) == 0)
      {
LABEL_23:
        *v105 = v60;
        if (v58)
        {
        }

        else
        {
          sub_1C457DBD8(v57, v50, v51, v60);
        }

        v96 = sub_1C440DB90();
        *(v97 + 8 * v57) = v96 + *(v97 + 8 * v57);
        sub_1C441AA90();
        sub_1C4D2F7CC(v1, v98);
        goto LABEL_46;
      }

      v61 = sub_1C445FAA8(v50, v51);
      if ((v58 & 1) == (v62 & 1))
      {
        v57 = v61;
        goto LABEL_23;
      }

      goto LABEL_54;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  v24 = *(v5 + v21[10]);
  v25 = *(v24 + 16);
  if (v25)
  {
    v101 = v5;
    v26 = v24 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v27 = *(v15 + 72);
    v28 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C4403B40();
      sub_1C4D2F70C(v26, v19, v29);
      v30 = *(v19 + 16);
      v31 = *(v19 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441AA90();
      sub_1C4D2F7CC(v19, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C443D664();
        v28 = v36;
      }

      v33 = *(v28 + 16);
      v34 = v33 + 1;
      if (v33 >= *(v28 + 24) >> 1)
      {
        v102 = v33 + 1;
        sub_1C443D664();
        v34 = v102;
        v28 = v37;
      }

      *(v28 + 16) = v34;
      v35 = v28 + 16 * v33;
      *(v35 + 32) = v30;
      *(v35 + 40) = v31;
      v26 += v27;
      --v25;
    }

    while (v25);
LABEL_26:
    v63 = 0;
    v64 = 0;
    v65 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_hashGenerator);
    v66 = (v28 + 40);
    v100[1] = v22[5];
    v101 = v65;
    v100[0] = v28;
    v102 = v34;
    while (v64 < *(v28 + 16))
    {
      v68 = *(v66 - 1);
      v67 = *v66;
      v69 = sub_1C4EF9CD8();
      sub_1C43FBCE0();
      v71 = v104;
      (*(v70 + 16))(v104, v103, v69);
      sub_1C43FBD94();
      sub_1C440BAA8(v72, v73, v74, v69);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v75 = sub_1C4886564(v68, v67, v71);
      v77 = v76;

      sub_1C4420C3C(v71, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v77)
      {
        v78 = v75;
      }

      else
      {
        v78 = 0;
      }

      if (v77)
      {
        v79 = v77;
      }

      else
      {
        v79 = 0xE000000000000000;
      }

      sub_1C4EF9B78();
      sub_1C44239FC(v63, 0);
      v80 = v105;
      swift_isUniquelyReferenced_nonNull_native();
      v106 = *v80;
      sub_1C445FAA8(v78, v79);
      sub_1C43FC438();
      if (__OFADD__(v83, v84))
      {
        goto LABEL_51;
      }

      v85 = v81;
      v86 = v82;
      sub_1C456902C(&qword_1EC0B8570, &qword_1C4F0E320);
      sub_1C441CFF4();
      v87 = sub_1C4F02458();
      v88 = v106;
      if (v87)
      {
        v89 = sub_1C445FAA8(v78, v79);
        if ((v86 & 1) != (v90 & 1))
        {
          goto LABEL_54;
        }

        v85 = v89;
      }

      v28 = v100[0];
      *v105 = v88;
      if (v86)
      {
      }

      else
      {
        sub_1C440EA74();
        *v91 = v78;
        v91[1] = v79;
        sub_1C4430440();
        if (v93)
        {
          goto LABEL_52;
        }

        *(v88 + 16) = v92;
      }

      ++v64;
      v94 = sub_1C440DB90();
      *(v95 + 8 * v85) = v94 + *(v95 + 8 * v85);
      v66 += 2;
      v63 = sub_1C457EB40;
      if (v102 == v64)
      {

        goto LABEL_46;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v34 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v34)
  {
    goto LABEL_26;
  }

  sub_1C44086C4();
}

uint64_t sub_1C4D2DAFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v5 = type metadata accessor for Configuration(0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  v20 = sub_1C43FBD18(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4425958();
  v31 = objc_autoreleasePoolPush();
  v25 = sub_1C4EFCE48();
  sub_1C440BAA8(v3, 1, 1, v25);
  type metadata accessor for VirtualInteractionEnumerator(0);
  v26 = *(v11 + 16);
  v26(v18, a1, v9);
  v26(v15, v32, v9);
  sub_1C445FFF0(v3, v23, &qword_1EC0BA0C8, &unk_1C4F6E090);
  sub_1C4D2F70C(v33, v8, type metadata accessor for Configuration);
  v27 = sub_1C4D28B94(v18, v15, 1, 0, v23, 0, 0, v8);
  v28 = objc_autoreleasePoolPush();
  v34 = v27;
  v35 = sub_1C4D339F4;
  v36 = 0;
  sub_1C456902C(&unk_1EC0BA0D0, qword_1C4F13420);
  sub_1C4630B7C();
  v29 = sub_1C4F014B8();
  objc_autoreleasePoolPop(v28);

  sub_1C4420C3C(v3, &qword_1EC0BA0C8, &unk_1C4F6E090);
  objc_autoreleasePoolPop(v31);
  return v29;
}

void sub_1C4D2DDB4()
{
  sub_1C43FEC28();
  v281 = v0;
  v2 = v1;
  v251 = v1;
  v4 = v3;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v253 = v6;
  v254 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v252 = &v211 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = sub_1C4D2DAFC(v4, v2, v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_config);
  v9 = sub_1C44013C0();
  v282 = v9;
  *(v9 + 16) = sub_1C4408218();
  v280 = (v9 + 16);
  v10 = sub_1C44013C0();
  v286 = v10;
  *(v10 + 16) = sub_1C4408218();
  v279 = (v10 + 16);
  v11 = sub_1C44013C0();
  v285 = v11;
  *(v11 + 16) = sub_1C4408218();
  v278 = (v11 + 16);
  v12 = sub_1C44013C0();
  v284 = v12;
  *(v12 + 16) = sub_1C4408218();
  v277 = (v12 + 16);
  v13 = sub_1C44013C0();
  v316 = v13;
  *(v13 + 16) = sub_1C4408218();
  v276 = (v13 + 16);
  v14 = sub_1C44013C0();
  v315 = v14;
  *(v14 + 16) = sub_1C4408218();
  v275 = (v14 + 16);
  v15 = sub_1C44013C0();
  v314 = v15;
  *(v15 + 16) = sub_1C4408218();
  v274 = (v15 + 16);
  v16 = sub_1C44013C0();
  v313 = v16;
  *(v16 + 16) = sub_1C4408218();
  v273 = (v16 + 16);
  v17 = sub_1C44013C0();
  v312 = v17;
  *(v17 + 16) = sub_1C4408218();
  v272 = (v17 + 16);
  v18 = sub_1C44013C0();
  v311 = v18;
  *(v18 + 16) = sub_1C4408218();
  v271 = (v18 + 16);
  v19 = sub_1C44013C0();
  v310 = v19;
  *(v19 + 16) = sub_1C4408218();
  v270 = (v19 + 16);
  v20 = sub_1C44013C0();
  v309 = v20;
  *(v20 + 16) = sub_1C4408218();
  v269 = (v20 + 16);
  v21 = sub_1C44013C0();
  v289 = v21;
  *(v21 + 16) = sub_1C4408218();
  v268 = (v21 + 16);
  v22 = sub_1C44013C0();
  v283 = v22;
  *(v22 + 16) = sub_1C4408218();
  v255 = (v22 + 16);
  v23 = sub_1C44013C0();
  v290 = v23;
  *(v23 + 16) = sub_1C4408218();
  v256 = (v23 + 16);
  v24 = sub_1C44013C0();
  v287 = v24;
  *(v24 + 16) = sub_1C4408218();
  v257 = (v24 + 16);
  v25 = sub_1C44013C0();
  v308 = v25;
  *(v25 + 16) = sub_1C4408218();
  v258 = (v25 + 16);
  v26 = sub_1C44013C0();
  v307 = v26;
  *(v26 + 16) = sub_1C4408218();
  v259 = (v26 + 16);
  v27 = sub_1C44013C0();
  v306 = v27;
  *(v27 + 16) = sub_1C4408218();
  v260 = (v27 + 16);
  v28 = sub_1C44013C0();
  v305 = v28;
  *(v28 + 16) = sub_1C4408218();
  v261 = (v28 + 16);
  v29 = sub_1C44013C0();
  v304 = v29;
  *(v29 + 16) = sub_1C4408218();
  v262 = (v29 + 16);
  v30 = sub_1C44013C0();
  v303 = v30;
  *(v30 + 16) = sub_1C4408218();
  v263 = (v30 + 16);
  v31 = sub_1C44013C0();
  v302 = v31;
  *(v31 + 16) = sub_1C4408218();
  v264 = (v31 + 16);
  v32 = sub_1C44013C0();
  v301 = v32;
  *(v32 + 16) = sub_1C4408218();
  v265 = (v32 + 16);
  v33 = sub_1C44013C0();
  v300 = v33;
  *(v33 + 16) = sub_1C4408218();
  v266 = (v33 + 16);
  v34 = sub_1C44013C0();
  v299 = v34;
  *(v34 + 16) = sub_1C4408218();
  v267 = (v34 + 16);
  v35 = sub_1C44013C0();
  v291 = v35;
  *(v35 + 16) = sub_1C4408218();
  v243 = v35 + 16;
  v36 = sub_1C44013C0();
  v298 = v36;
  *(v36 + 16) = sub_1C4408218();
  v245 = (v36 + 16);
  v37 = sub_1C44013C0();
  v297 = v37;
  *(v37 + 16) = sub_1C4408218();
  v247 = v37 + 16;
  v38 = sub_1C44013C0();
  v296 = v38;
  *(v38 + 16) = sub_1C4408218();
  v244 = (v38 + 16);
  v39 = sub_1C44013C0();
  v295 = v39;
  *(v39 + 16) = sub_1C4408218();
  v246 = (v39 + 16);
  v40 = sub_1C44013C0();
  v294 = v40;
  *(v40 + 16) = sub_1C4408218();
  v248 = (v40 + 16);
  v41 = sub_1C44013C0();
  v293 = v41;
  *(v41 + 16) = sub_1C4408218();
  v249 = (v41 + 16);
  v42 = sub_1C44013C0();
  v292 = v42;
  *(v42 + 16) = sub_1C4408218();
  v250 = (v42 + 16);
  v242 = objc_autoreleasePoolPush();
  v352 = nullsub_1;
  v353 = 0;
  v348 = MEMORY[0x1E69E9820];
  v349 = 1107296256;
  v240 = &v350;
  v350 = sub_1C44405F8;
  v351 = &unk_1F440C840;
  v241 = _Block_copy(&v348);
  v44 = v252;
  v43 = v253;
  v45 = v254;
  (*(v253 + 16))(v252, v251, v254);
  v237 = (*(v43 + 80) + 40) & ~*(v43 + 80);
  v251 = (v8 + v237 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1C44129B0();
  v239 = v46;
  sub_1C44129B0();
  v236 = v47;
  sub_1C44129B0();
  v238 = v48;
  sub_1C44129B0();
  v235 = v49;
  sub_1C44129B0();
  v234 = v50;
  sub_1C44129B0();
  v233 = v51;
  sub_1C44129B0();
  v232 = v52;
  sub_1C44129B0();
  v231 = v53;
  sub_1C44129B0();
  v230 = v54;
  sub_1C44129B0();
  v229 = v55;
  sub_1C44129B0();
  v228 = v56;
  sub_1C44129B0();
  v227 = v57;
  sub_1C44129B0();
  v226 = v58;
  sub_1C44129B0();
  v225 = v59;
  sub_1C44129B0();
  v224 = v60;
  sub_1C44129B0();
  v223 = v61;
  sub_1C44129B0();
  v222 = v62;
  sub_1C44129B0();
  v221 = v63;
  sub_1C44129B0();
  v220 = v64;
  sub_1C44129B0();
  v219 = v65;
  sub_1C44129B0();
  v218 = v66;
  sub_1C44129B0();
  v217 = v67;
  sub_1C44129B0();
  v216 = v68;
  sub_1C44129B0();
  v215 = v69;
  sub_1C44129B0();
  v214 = v70;
  sub_1C44129B0();
  v213 = v71;
  sub_1C44129B0();
  v212 = v72;
  v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v73 + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v77 = v286;
  *(v76 + 2) = v281;
  *(v76 + 3) = v77;
  *(v76 + 4) = v290;
  (*(v43 + 32))(&v76[v237], v44, v45);
  *&v76[v251] = v291;
  *&v76[v239] = v285;
  v78 = v235;
  *&v76[v236] = v287;
  *&v76[v238] = v284;
  *&v76[v78] = v308;
  v79 = v233;
  *&v76[v234] = v298;
  *&v76[v79] = v316;
  v80 = v231;
  *&v76[v232] = v307;
  *&v76[v80] = v297;
  v81 = v229;
  *&v76[v230] = v315;
  *&v76[v81] = v306;
  v82 = v227;
  *&v76[v228] = v314;
  *&v76[v82] = v305;
  v83 = v225;
  *&v76[v226] = v313;
  *&v76[v83] = v304;
  v84 = v223;
  *&v76[v224] = v296;
  *&v76[v84] = v312;
  v85 = v221;
  *&v76[v222] = v303;
  *&v76[v85] = v295;
  v86 = v219;
  *&v76[v220] = v311;
  *&v76[v86] = v302;
  v87 = v217;
  *&v76[v218] = v294;
  *&v76[v87] = v310;
  v88 = v215;
  *&v76[v216] = v301;
  *&v76[v88] = v293;
  v89 = v213;
  *&v76[v214] = v309;
  *&v76[v89] = v300;
  *&v76[v212] = v292;
  *&v76[v73] = v289;
  *&v76[v74] = v299;
  *&v76[v75] = v282;
  *&v76[(v75 + 15) & 0xFFFFFFFFFFFFFFF8] = v283;
  v352 = sub_1C4D2F460;
  v353 = v76;
  v348 = MEMORY[0x1E69E9820];
  v349 = 1107296256;
  v350 = sub_1C4440590;
  v351 = &unk_1F440C890;
  v90 = _Block_copy(&v348);

  v91 = v241;
  v92 = [v288 sinkWithCompletion:v241 receiveInput:v90];
  _Block_release(v90);
  _Block_release(v91);

  objc_autoreleasePoolPop(v242);
  sub_1C456902C(&qword_1EC0B8D58, &unk_1C4F0E210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F6DF30;
  strcpy((inited + 32), "phone_duration");
  *(inited + 47) = -18;
  v94 = v243;
  sub_1C43FD630(inited, &v348);
  v281 = *v94;
  sub_1C43FBDF0();
  *(inited + 48) = v95;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = v96;
  v97 = v245;
  sub_1C43FD630(v98, &v347);
  v254 = *v97;
  sub_1C43FBDF0();
  *(inited + 72) = v99;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = v100;
  v101 = v247;
  v103 = sub_1C43FD630(v102, &v346);
  v253 = *v101;
  *(inited + 96) = v253;
  strcpy((inited + 104), "voip_duration");
  *(inited + 118) = -4864;
  v104 = v244;
  sub_1C43FD630(v103, &v345);
  v252 = *v104;
  sub_1C43FBDF0();
  *(inited + 120) = v105;
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = v106;
  v107 = v246;
  sub_1C43FD630(v108, &v344);
  v251 = *v107;
  sub_1C43FBDF0();
  *(inited + 144) = v109;
  *(inited + 152) = 0xD000000000000017;
  *(inited + 160) = v110;
  v111 = v248;
  sub_1C43FD630(v112, &v343);
  v113 = *v111;
  v247 = 0xD000000000000017;
  v248 = v113;
  sub_1C43FBDF0();
  *(inited + 168) = v114;
  *(inited + 176) = 0xD000000000000017;
  *(inited + 184) = v115;
  v116 = v249;
  sub_1C43FD630(v117, &v342);
  v249 = *v116;
  sub_1C43FBDF0();
  *(inited + 192) = v118;
  *(inited + 200) = 0xD000000000000013;
  v243 = 0xD000000000000013;
  *(inited + 208) = v119;
  v120 = v250;
  sub_1C43FD630(v121, &v341);
  v250 = *v120;
  sub_1C43FBDF0();
  *(inited + 216) = v122;
  *(inited + 224) = 0xD000000000000014;
  *(inited + 232) = v123;
  v124 = v255;
  sub_1C43FD630(v125, &v340);
  v255 = *v124;
  sub_1C43FBDF0();
  *(inited + 240) = v126;
  *(inited + 248) = 0xD000000000000014;
  *(inited + 256) = v127;
  v128 = v256;
  sub_1C43FD630(v129, &v339);
  v256 = *v128;
  sub_1C43FBDF0();
  *(inited + 264) = v130;
  *(inited + 272) = 0xD00000000000001ELL;
  *(inited + 280) = v131;
  v132 = v257;
  sub_1C43FD630(v133, &v338);
  v257 = *v132;
  sub_1C43FBDF0();
  *(inited + 288) = v134;
  *(inited + 296) = 0xD000000000000019;
  *(inited + 304) = v135;
  v136 = v258;
  sub_1C4432EAC(v137, &v337);
  v258 = *v136;
  sub_1C43FBDF0();
  *(inited + 312) = v138;
  *(inited + 320) = 0xD000000000000016;
  *(inited + 328) = v139;
  v140 = v259;
  sub_1C4432EAC(v141, &v336);
  v259 = *v140;
  sub_1C43FBDF0();
  *(inited + 336) = v142;
  *(inited + 344) = 0xD000000000000012;
  *(inited + 352) = v143;
  v144 = v260;
  sub_1C4432EAC(v145, &v335);
  v260 = *v144;
  sub_1C43FBDF0();
  *(inited + 360) = v146;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = v147;
  v148 = v261;
  sub_1C4432EAC(v149, &v334);
  v261 = *v148;
  sub_1C43FBDF0();
  *(inited + 384) = v150;
  *(inited + 392) = 0xD000000000000013;
  *(inited + 400) = v151;
  v152 = v262;
  sub_1C4432EAC(v153, &v333);
  v262 = *v152;
  sub_1C43FBDF0();
  *(inited + 408) = v154;
  *(inited + 416) = 0xD000000000000017;
  *(inited + 424) = v155;
  v156 = v263;
  sub_1C4432EAC(v157, &v332);
  v263 = *v156;
  sub_1C43FBDF0();
  *(inited + 432) = v158;
  *(inited + 440) = 0xD00000000000001DLL;
  *(inited + 448) = v159;
  v160 = v264;
  sub_1C4432EAC(v161, &v331);
  v264 = *v160;
  sub_1C43FBDF0();
  *(inited + 456) = v162;
  *(inited + 464) = 0xD00000000000001DLL;
  *(inited + 472) = v163;
  v164 = v265;
  sub_1C4432EAC(v165, &v330);
  v265 = *v164;
  sub_1C43FBDF0();
  *(inited + 480) = v166;
  *(inited + 488) = 0xD000000000000019;
  *(inited + 496) = v167;
  v168 = v266;
  sub_1C4432EAC(v169, &v329);
  v266 = *v168;
  sub_1C43FBDF0();
  *(inited + 504) = v170;
  *(inited + 512) = 0xD000000000000018;
  *(inited + 520) = v171;
  v172 = v267;
  sub_1C4432EAC(v173, &v328);
  v267 = *v172;
  *(inited + 528) = v267;
  sub_1C43FBDF0();
  *(inited + 536) = 0xD000000000000014;
  *(inited + 544) = v174;
  v175 = v280;
  sub_1C4432EAC(v176, &v327);
  v280 = *v175;
  *(inited + 552) = v280;
  sub_1C43FBDF0();
  *(inited + 560) = 0xD000000000000014;
  *(inited + 568) = v177;
  v178 = v279;
  sub_1C4432EAC(v179, &v326);
  v279 = *v178;
  *(inited + 576) = v279;
  sub_1C43FBDF0();
  *(inited + 584) = 0xD00000000000001ELL;
  *(inited + 592) = v180;
  v181 = v278;
  sub_1C43FF8E4(v182, &v325);
  v278 = *v181;
  *(inited + 600) = v278;
  sub_1C43FBDF0();
  *(inited + 608) = 0xD000000000000019;
  *(inited + 616) = v183;
  v184 = v277;
  sub_1C43FF8E4(v185, &v324);
  v277 = *v184;
  *(inited + 624) = v277;
  sub_1C43FBDF0();
  *(inited + 632) = 0xD000000000000016;
  *(inited + 640) = v186;
  v187 = v276;
  sub_1C43FF8E4(v188, &v323);
  v276 = *v187;
  *(inited + 648) = v276;
  sub_1C43FBDF0();
  *(inited + 656) = 0xD000000000000012;
  *(inited + 664) = v189;
  v190 = v275;
  sub_1C43FF8E4(v191, &v322);
  v275 = *v190;
  *(inited + 672) = v275;
  sub_1C43FBDF0();
  *(inited + 680) = 0xD000000000000012;
  *(inited + 688) = v192;
  v193 = v274;
  sub_1C43FF8E4(v194, &v321);
  *(inited + 696) = *v193;
  sub_1C43FBDF0();
  *(inited + 704) = v243;
  *(inited + 712) = v195;
  v196 = v273;
  sub_1C43FF8E4(v197, &v320);
  *(inited + 720) = *v196;
  sub_1C43FBDF0();
  *(inited + 728) = v247;
  *(inited + 736) = v198;
  v199 = v272;
  swift_beginAccess();
  *(inited + 744) = *v199;
  sub_1C43FBDF0();
  *(inited + 752) = 0xD00000000000001DLL;
  *(inited + 760) = v200;
  v201 = v271;
  sub_1C4432EAC(v202, &v319);
  *(inited + 768) = *v201;
  sub_1C43FBDF0();
  *(inited + 776) = 0xD00000000000001DLL;
  *(inited + 784) = v203;
  v204 = v270;
  swift_beginAccess();
  *(inited + 792) = *v204;
  sub_1C43FBDF0();
  *(inited + 800) = 0xD000000000000019;
  *(inited + 808) = v205;
  v206 = v269;
  sub_1C43FD630(v207, &v318);
  *(inited + 816) = *v206;
  sub_1C43FBDF0();
  *(inited + 824) = 0xD000000000000018;
  *(inited + 832) = v208;
  v209 = v268;
  sub_1C43FD630(v210, &v317);
  *(inited + 840) = *v209;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C4F00F28();

  sub_1C44086C4();
}

void sub_1C4D2EF60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v38 = type metadata accessor for VirtualInteraction(0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v47 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = objc_autoreleasePoolPush();
  v41 = [a1 eventBody];
  if (v41)
  {
    v42 = v41;
    sub_1C4D2F70C(v41 + OBJC_IVAR____TtC24IntelligencePlatformCore23VirtualInteractionEvent_virtualInteraction, v40, type metadata accessor for VirtualInteraction);
    switch(*&v40[*(v38 + 24)])
    {
      case 0:
      case 5:
      case 8:
      case 0xALL:
      case 0xBLL:
      case 0xCLL:
      case 0x10:
      case 0x11:
        swift_beginAccess();
        swift_beginAccess();
        sub_1C4D2CE60();
        swift_endAccess();
        swift_endAccess();
        swift_beginAccess();
        sub_1C4D2D48C();
        goto LABEL_11;
      case 1:
      case 2:
      case 3:
      case 4:
      case 0x13:
        swift_beginAccess();
        swift_beginAccess();
        sub_1C4D2CE60();
        swift_endAccess();
LABEL_11:
        swift_endAccess();

        sub_1C4D2F7CC(v40, type metadata accessor for VirtualInteraction);
        break;
      default:
        sub_1C4D2F7CC(v40, type metadata accessor for VirtualInteraction);

        break;
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v43 = sub_1C4F00978();
    sub_1C442B738(v43, qword_1EDDFECB8);
    v44 = sub_1C4F00968();
    v45 = sub_1C4F01CF8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1C43F8000, v44, v45, "Unable to parse virtual interaction event in the virtual interaction distribution provider", v46, 2u);
      MEMORY[0x1C6942830](v46, -1, -1);
    }
  }

  objc_autoreleasePoolPop(v47);
}

uint64_t sub_1C4D2F360()
{
  sub_1C4D2F7CC(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore38VirtualInteractionDistributionProvider_config, type metadata accessor for Configuration);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VirtualInteractionDistributionProvider(uint64_t a1)
{
  result = qword_1EC0C6530;
  if (!qword_1EC0C6530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4D2F460(void *a1)
{
  v2 = *(sub_1C4EF9CD8() - 8);
  v40 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = *(v1 + v3);
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = *(v1 + v5);
  v38 = *(v1 + v4);
  v36 = *(v1 + v7);
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = *(v1 + v11);
  v31 = *(v1 + v12);
  v32 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = *(v1 + v14);
  v34 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1C4D2EF60(a1, v1[2], v1[3], v1[4], v1 + v40, v39, v38, v37, *(v1 + v6), v36, *(v1 + v8), *(v1 + v9), *(v1 + v10), v30, v31, *(v1 + v13), v33, *(v1 + v15), *(v1 + v16), *(v1 + v17), *(v1 + v18), *(v1 + v19), *(v1 + v20), *(v1 + v21), *(v1 + v22), *(v1 + v23), *(v1 + v24), *(v1 + v25), *(v1 + v26), *(v1 + v27), *(v1 + v28), *(v1 + v29), *(v1 + v32), *(v1 + v34), *(v1 + v35), *(v1 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v35 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1C4D2F70C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4D2F76C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C4D2F7CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4D2F82C(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C44098F0(a1, v4);
  v5 = type metadata accessor for VirtualInteractionDistributionProvider(0);
  swift_allocObject();
  v6 = sub_1C4D2CDE0(v4);

  sub_1C445458C(a1, type metadata accessor for Configuration);
  type metadata accessor for MotionStateDistributionProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = 0x404E000000000000;
  type metadata accessor for MotionStateActivityIntervalProvider();
  swift_allocObject();
  v8 = MotionStateActivityIntervalProvider.init(motionStateDistributionProvider:)(v7);
  type metadata accessor for VirtualInteractionsDistributionSignal();
  v9 = swift_allocObject();
  v13 = v5;
  v14 = &off_1F440C808;
  *&v12 = v6;
  *(v9 + 64) = xmmword_1C4F0D360;
  sub_1C441D670(&v12, v9 + 24);

  *(v9 + 16) = v8;
  return v9;
}

uint64_t sub_1C4D2F98C(char a1)
{
  result = 0x75645F656E6F6870;
  switch(a1)
  {
    case 2:
    case 15:
      sub_1C4408FD0();
      result = v3 | 0xC;
      break;
    case 3:
    case 11:
    case 16:
    case 24:
      sub_1C4408FD0();
      result = v5 + 7;
      break;
    case 4:
    case 17:
      sub_1C4408FD0();
      result = v6 | 4;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
    case 20:
    case 27:
    case 33:
      sub_1C4408FD0();
      result = v7 | 1;
      break;
    case 8:
    case 21:
    case 31:
    case 32:
      result = 0xD000000000000017;
      break;
    case 9:
    case 10:
    case 22:
    case 23:
      sub_1C4408FD0();
      result = v9 + 11;
      break;
    case 12:
    case 25:
      sub_1C4408FD0();
      result = v11 + 6;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
      result = 0xD000000000000012;
      break;
    case 26:
      return result;
    case 28:
      sub_1C4408FD0();
      result = v10 - 2;
      break;
    case 29:
      result = 0x7275645F70696F76;
      break;
    case 30:
      sub_1C4408FD0();
      result = v8 - 1;
      break;
    default:
      sub_1C4408FD0();
      result = v4 + 2;
      break;
  }

  return result;
}

uint64_t sub_1C4D2FCFC()
{
  sub_1C4420984();
  v0 = 0;
  v1 = &unk_1F43D2150;
  do
  {
    v18 = sub_1C4D2F98C(*(&unk_1F43D2150 + v0 + 32));
    v21 = v2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0x766572705F6E695FLL, 0xEF736E696D5F355FLL);

    v4 = *(v24 + 16);
    v3 = *(v24 + 24);
    if (v4 >= v3 >> 1)
    {
      sub_1C44CD9C0(v3 > 1, v4 + 1, 1);
    }

    ++v0;
    *(v24 + 16) = v4 + 1;
    v5 = v24 + 16 * v4;
    *(v5 + 32) = v18;
    *(v5 + 40) = v21;
  }

  while (v0 != 34);
  sub_1C4420984();
  v6 = 0;
  do
  {
    v19 = sub_1C4D2F98C(*(&unk_1F43D2150 + v6 + 32));
    v22 = v7;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FC72C0);

    v9 = *(v24 + 16);
    v8 = *(v24 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_1C44CD9C0(v8 > 1, v9 + 1, 1);
    }

    ++v6;
    *(v24 + 16) = v9 + 1;
    v10 = v24 + 16 * v9;
    *(v10 + 32) = v19;
    *(v10 + 40) = v22;
  }

  while (v6 != 34);
  sub_1C4420984();
  v11 = 0;
  do
  {
    v12 = v1;
    v20 = sub_1C4D2F98C(v1[v11 + 32]);
    v23 = v13;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FC72E0);

    v15 = *(v24 + 16);
    v14 = *(v24 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1C44CD9C0(v14 > 1, v15 + 1, 1);
    }

    ++v11;
    *(v24 + 16) = v15 + 1;
    v16 = v24 + 16 * v15;
    *(v16 + 32) = v20;
    *(v16 + 40) = v23;
    v1 = v12;
  }

  while (v11 != 34);
  sub_1C449ADBC(v24);
  sub_1C449ADBC(v24);

  return sub_1C4499940();
}

uint64_t sub_1C4D2FFA0()
{
  sub_1C43FBCD4();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_1C4EF9CD8();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for ActivityInterval(0);
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4D3008C, 0, 0);
}

uint64_t sub_1C4D3008C()
{
  sub_1C43FBCD4();
  v0[24] = *(v0[18] + 16);

  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_1C4D30138;

  return sub_1C4A3E4A8();
}

uint64_t sub_1C4D30138()
{
  sub_1C43FBCD4();

  return MEMORY[0x1EEE6DFA0](sub_1C4D3024C, 0, 0);
}

void sub_1C4D3024C()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  sub_1C442E860(v6 + 24, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  sub_1C4409678(v0 + 2, v7);
  (*(v8 + 8))(v1, v1 + *(v2 + 20), v7, v8);
  sub_1C440962C(v0 + 2);
  sub_1C442E860(v6 + 24, (v0 + 7));
  sub_1C4409678(v0 + 7, v0[10]);
  sub_1C4EF9BE8();
  v9 = sub_1C44013DC();
  v10(v9);
  v11 = *(v4 + 8);
  v11(v3, v5);
  sub_1C440962C(v0 + 7);
  sub_1C442E860(v6 + 24, (v0 + 12));
  sub_1C4409678(v0 + 12, v0[15]);
  sub_1C4EF9BE8();
  v12 = sub_1C44013DC();
  v13(v12);
  v11(v3, v5);
  v88 = v0;
  sub_1C440962C(v0 + 12);
  v90 = sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v91 = sub_1C4F00F28();
  v14 = 0;
  do
  {
    v89 = v14;
    v92 = sub_1C4D2F98C(*(&unk_1F43D2150 + v14 + 32));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0x766572705F6E695FLL, 0xEF736E696D5F355FLL);

    v15 = sub_1C4663244();

    if (v15)
    {
      sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
      v16 = sub_1C4F02538();
      v17 = 0;
      sub_1C441AAA8();
      v19 = v18 >> 6;
      v21 = v20 + 64;
      if (!v11)
      {
LABEL_5:
        v23 = v17;
        while (1)
        {
          v17 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v17 >= v19)
          {

            sub_1C465CD38();
            v35 = v34;

            goto LABEL_15;
          }

          ++v23;
          if (*(v15 + 64 + 8 * v17))
          {
            sub_1C4408238();
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_63;
      }

      while (1)
      {
        sub_1C43FFB74();
LABEL_10:
        v24 = v22 | (v17 << 6);
        v25 = (*(v15 + 48) + 16 * v24);
        v27 = *v25;
        v26 = v25[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F019C8();
        sub_1C4417B70();
        *(v21 + v28) |= v29;
        v30 = (*(v16 + 48) + 16 * v24);
        *v30 = v27;
        v30[1] = v26;
        sub_1C4403B58(v31);
        if (v33)
        {
          goto LABEL_65;
        }

        *(v16 + 16) = v32;
        if (!v11)
        {
          goto LABEL_5;
        }
      }
    }

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v35 = sub_1C4F00F28();
LABEL_15:
    v36 = sub_1C457F798(v35);
    v37 = v91;
    if (v36)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4413D1C();
      sub_1C4660314();

      v37 = v92;
    }

    else
    {
      sub_1C43FE208();
      if (v38)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44129BC();
        v39 = sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C440B840(v39);
        sub_1C43FF900();
        sub_1C440EA9C();
        sub_1C4F02478();
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0xD000000000000010, 0x80000001C4FC72C0);

    sub_1C4404C28();
    v40 = sub_1C4663244();

    if (v40)
    {
      sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
      v41 = sub_1C4F02538();
      v42 = 0;
      sub_1C441AAA8();
      v44 = v43 >> 6;
      v46 = v45 + 64;
      if (v11)
      {
        while (1)
        {
          sub_1C43FFB74();
LABEL_29:
          v49 = v47 | (v42 << 6);
          v50 = (*(v40 + 48) + 16 * v49);
          v52 = *v50;
          v51 = v50[1];
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F019C8();
          sub_1C4417B70();
          *(v46 + v53) |= v54;
          v55 = (*(v41 + 48) + 16 * v49);
          *v55 = v52;
          v55[1] = v51;
          sub_1C4403B58(v56);
          if (v33)
          {
            break;
          }

          *(v41 + 16) = v57;
          if (!v11)
          {
            goto LABEL_24;
          }
        }

LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

LABEL_24:
      v48 = v42;
      while (1)
      {
        v42 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v42 >= v44)
        {

          sub_1C465CD38();
          v59 = v58;

          goto LABEL_38;
        }

        ++v48;
        if (*(v40 + 64 + 8 * v42))
        {
          sub_1C4408238();
          goto LABEL_29;
        }
      }

LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v59 = sub_1C4F00F28();
LABEL_38:
    if (sub_1C457F798(v59))
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4413D1C();
      sub_1C4660314();

      v37 = v92;
    }

    else
    {
      sub_1C43FE208();
      if (v60)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44129BC();
        v61 = sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C440B840(v61);
        sub_1C43FF900();
        sub_1C440EA9C();
        sub_1C4F02478();
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4FC72E0);

    sub_1C4404C28();
    v62 = sub_1C4663244();

    if (v62)
    {
      sub_1C456902C(&qword_1EC0B85D0, &unk_1C4F6E060);
      v63 = sub_1C4F02538();
      v64 = 0;
      sub_1C441AAA8();
      v66 = v65 >> 6;
      for (i = v67 + 64; v11; v63[2] = v78)
      {
        sub_1C43FFB74();
LABEL_48:
        v71 = v69 | (v64 << 6);
        v72 = (*(v62 + 48) + 16 * v71);
        v74 = *v72;
        v73 = v72[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v75 = sub_1C4F019C8();
        *(i + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
        v76 = (v63[6] + 16 * v71);
        *v76 = v74;
        v76[1] = v73;
        *(v63[7] + 8 * v71) = v75;
        v77 = v63[2];
        v33 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v33)
        {
          goto LABEL_67;
        }
      }

      v70 = v64;
      while (1)
      {
        v64 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_64;
        }

        if (v64 >= v66)
        {

          sub_1C465CD38();
          v80 = v79;

          goto LABEL_56;
        }

        ++v70;
        if (*(v62 + 64 + 8 * v64))
        {
          sub_1C4408238();
          goto LABEL_48;
        }
      }
    }

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v80 = sub_1C4F00F28();
LABEL_56:
    if (sub_1C457F798(v80))
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4413D1C();
      sub_1C4660314();

      v37 = v92;
    }

    else
    {
      v81 = sub_1C43FE208();
      if (v82)
      {
        v83 = v81;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C44129BC();
        v84 = sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C440B840(v84);
        v37 = v92;

        v85 = *(*(v92 + 56) + 8 * v83);
        sub_1C4F02478();
      }
    }

    v91 = v37;
    v14 = v89 + 1;
  }

  while (v89 != 33);
  v86 = v88[23];

  sub_1C445458C(v86, type metadata accessor for ActivityInterval);

  v87 = v88[1];

  v87(v37);
}

uint64_t sub_1C4D30BE4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_1C4D31124(&qword_1EC0C6548, &unk_1C4F6E038);
  *a2 = a1;
  a2[1] = v2;
  a2[2] = v5;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4D30C50()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C457386C;

  return sub_1C4D2FFA0();
}

id sub_1C4D30CE0()
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  sub_1C4F00F28();
  v0 = sub_1C4404C28();
  v1 = sub_1C44F9274(v0);

  if (!v1)
  {
    v2 = sub_1C4D2FCFC();
    v3 = sub_1C4404C28();
    v5 = sub_1C4499AD0(v3, v4, v2);

    if (v5)
    {
      sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
      v6 = sub_1C4F00F28();
      return sub_1C457F798(v6);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t sub_1C4D30F4C()
{

  sub_1C440962C((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1C4D30FB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4573EBC;

  return sub_1C4D30C50();
}

uint64_t sub_1C4D3109C(uint64_t a1)
{
  result = sub_1C4D31124(&qword_1EC0C6540, &unk_1C4F6DFE8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D310E0(uint64_t a1)
{
  result = sub_1C4D31124(&qword_1EC0BAFD8, &unk_1C4F6E014);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4D31124(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VirtualInteractionsDistributionSignal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C4D31180(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v48 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v39 - v5;
  sub_1C456902C(&qword_1EC0C0080, &qword_1C4F3E138);
  sub_1C43FCDF8();
  v46 = v7;
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v39 - v8;
  v9 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v39 - v25;
  v27 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_publisher);
  if (v27)
  {
    v28 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_publisher);
  }

  else
  {
    v42 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
    v29 = sub_1C4EFCE48();
    sub_1C440BAA8(v26, 1, 1, v29);
    v41 = OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_config;
    v43 = type metadata accessor for VirtualInteractionEnumerator(0);
    v39 = v11;
    v40 = v2;
    v30 = *(v14 + 16);
    v31 = v44;
    v30(v20, v44, v12);
    v30(v17, v31 + v42, v12);
    sub_1C4D3196C(v26, v23);
    v32 = v39;
    sub_1C443131C(v40 + v41, v39, type metadata accessor for Configuration);
    v33 = sub_1C4D28B94(v20, v17, 1, 0, v23, 1, 1, v32);
    v34 = objc_autoreleasePoolPush();
    v50 = v33;
    v51 = sub_1C4D339F4;
    v52 = 0;
    sub_1C456902C(&unk_1EC0BA0D0, qword_1C4F13420);
    sub_1C4401CBC(&qword_1EDDF0348, &unk_1EC0BA0D0, qword_1C4F13420, MEMORY[0x1E69E6CC8]);
    v28 = sub_1C4F014B8();
    objc_autoreleasePoolPop(v34);

    sub_1C4D319DC(v26);
    v27 = 0;
  }

  v35 = v27;
  v36 = v28;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v37 = v49;
  sub_1C4EFFC38();
  if (v37)
  {
  }

  else
  {
    sub_1C456902C(&qword_1EC0C0070, &unk_1C4F3E120);
    sub_1C4401CBC(&qword_1EDDEFF40, &qword_1EC0B8600, &unk_1C4F0D4E0, MEMORY[0x1E69A9B60]);
    v38 = v45;
    sub_1C4F02848();

    (*(v46 + 32))(a2, v38, v47);
  }
}

uint64_t sub_1C4D31670(uint64_t a1, uint64_t *a2)
{
  v2[2] = a1;
  v2[3] = type metadata accessor for VirtualInteraction(0);
  v4 = swift_task_alloc();
  v5 = *a2;
  v2[4] = v4;
  v2[5] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1C4D3170C, 0, 0);
}

uint64_t sub_1C4D3170C()
{
  v1 = [*(v0 + 40) eventBody];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = *(v0 + 16);
    sub_1C443131C(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore23VirtualInteractionEvent_virtualInteraction, v3, type metadata accessor for VirtualInteraction);

    v6 = sub_1C4EF9CD8();
    sub_1C43FBCE0();
    v8 = *(v7 + 16);
    v8(v5, v3, v6);
    v9 = *(v4 + 20);
    v10 = sub_1C456902C(&qword_1EC0C0070, &unk_1C4F3E120);
    v8(v5 + *(v10 + 28), v3 + v9, v6);
    sub_1C4D31A44(v3, v5 + *(v10 + 32));
    v11 = 0;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Unable to parse eventBody from read event in virtual interactions featurizer", v15, 2u);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    v10 = sub_1C456902C(&qword_1EC0C0070, &unk_1C4F3E120);
    v11 = 1;
  }

  sub_1C440BAA8(*(v0 + 16), v11, 1, v10);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1C4D3196C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D319DC(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4D31A44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VirtualInteraction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4D31AA8(uint64_t a1, uint64_t a2)
{
  sub_1C4D33188(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_config, type metadata accessor for Configuration);
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_publisher) = a2;
  return v2;
}

uint64_t sub_1C4D31B68()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 2, 0);
  v0 = 0;
  v1 = 0;
  v2 = v12;
  v3 = *(v12 + 16);
  v4 = 16 * v3;
  do
  {
    v5 = v0;
    if (*(&unk_1F43D2B00 + v1 + 32))
    {
      v6 = 0x6F69746365726964;
    }

    else
    {
      v6 = 0x73696E616863656DLL;
    }

    if (*(&unk_1F43D2B00 + v1 + 32))
    {
      v7 = 0xE90000000000006ELL;
    }

    else
    {
      v7 = 0xE90000000000006DLL;
    }

    v13 = v2;
    v8 = *(v2 + 24);
    v9 = v3 + 1;
    if (v3 >= v8 >> 1)
    {
      sub_1C44CD9C0(v8 > 1, v3 + 1, 1);
      v2 = v13;
    }

    *(v2 + 16) = v9;
    v10 = v2 + v4;
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;
    v4 += 16;
    v0 = 1;
    v3 = v9;
    v1 = 1u;
  }

  while ((v5 & 1) == 0);

  return sub_1C4499940();
}

uint64_t sub_1C4D31C90(char *a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4D31CE8(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4D31CE8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v45 = a3;
  v41 = a2;
  v4 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v38 - v10;
  v43 = sub_1C4EF9CD8();
  v12 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v44 = v21 + 16;
  v40 = a1;
  v22 = *(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_publisher);
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    sub_1C4EF9AC8();
    v24 = sub_1C4EFCE48();
    sub_1C440BAA8(v11, 1, 1, v24);
    v38[0] = OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_config;
    v38[1] = type metadata accessor for VirtualInteractionEnumerator(0);
    v39 = v12;
    v25 = *(v12 + 16);
    v26 = v43;
    v25(v17, v20, v43);
    v25(v14, v41, v26);
    v27 = v11;
    sub_1C4D3196C(v11, v8);
    v28 = v42;
    sub_1C44098F0(v40 + v38[0], v42);
    v29 = sub_1C4D28B94(v17, v14, 0, 0, v8, 1, 1, v28);
    v30 = objc_autoreleasePoolPush();
    aBlock = v29;
    v47 = sub_1C4D339F4;
    v48 = 0;
    sub_1C456902C(&unk_1EC0BA0D0, qword_1C4F13420);
    sub_1C4401CBC(&qword_1EDDF0348, &unk_1EC0BA0D0, qword_1C4F13420, MEMORY[0x1E69E6CC8]);
    v23 = sub_1C4F014B8();
    objc_autoreleasePoolPop(v30);

    sub_1C4D319DC(v27);
    (*(v39 + 8))(v20, v26);
    v22 = 0;
  }

  v50 = sub_1C4D321B0;
  v51 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1C44405F8;
  v49 = &unk_1F440C978;
  v31 = _Block_copy(&aBlock);
  v50 = sub_1C4D32FBC;
  v51 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1C45AF9C8;
  v49 = &unk_1F440C9A0;
  v32 = _Block_copy(&aBlock);
  v33 = v22;

  v34 = [v23 sinkWithCompletion:v31 shouldContinue:v32];

  _Block_release(v32);
  _Block_release(v31);

  swift_beginAccess();
  v35 = *(v21 + 16);
  *v45 = v35;
  v36 = v35;
}

void sub_1C4D321B0(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDDFECB8);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = v4;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v9 = sub_1C4F01198();
      v11 = sub_1C441D828(v9, v10, &v13);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "Unable to fetch events from stream: virtual interactions stream with error: %s", v6, 0xCu);
      sub_1C440962C(v7);
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }
}

BOOL sub_1C4D32370(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    swift_beginAccess();
    v4 = *(a2 + 16);
    *(a2 + 16) = v3;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "Unable to parse eventBody from read event in virtual interactions featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }

  return v3 == 0;
}

uint64_t sub_1C4D3249C(uint64_t a1)
{
  sub_1C4577DBC();
  v2 = sub_1C4F00F28();
  v3 = a1 + OBJC_IVAR____TtC24IntelligencePlatformCore23VirtualInteractionEvent_virtualInteraction;
  v4 = type metadata accessor for VirtualInteraction(0);
  v5 = *(v3 + *(v4 + 24));
  v6 = *(v3 + *(v4 + 32));
  v7 = objc_opt_self();
  if ([v7 featureValueWithInt64_])
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
  }

  else
  {
    v8 = sub_1C445FAA8(0x73696E616863656DLL, 0xE90000000000006DLL);
    if (v9)
    {
      v10 = v8;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();

      v11 = *(*(v2 + 56) + 8 * v10);
      sub_1C4F02478();
    }
  }

  if ([v7 featureValueWithInt64_])
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
  }

  else
  {
    v12 = sub_1C445FAA8(0x6F69746365726964, 0xE90000000000006ELL);
    if (v13)
    {
      v14 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();

      v15 = *(*(v2 + 56) + 8 * v14);
      sub_1C4F02478();
    }
  }

  return v2;
}

uint64_t sub_1C4D32738(char *a1)
{
  v1 = sub_1C4D31C90(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C4D3249C(v1);

    return v3;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "VirtualInteractionsEvent is nil", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

void sub_1C4D32870(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = (v11 - v10);
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C4D32738(v12);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v4;
      sub_1C4D32FC4(v24, a1);

      sub_1C465CF34();
      v27 = v26;
      v20 = v36;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4D33188(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28, type metadata accessor for FeatureProviderSnapshot);
      v23 += v30;
      --v18;
      v4 = v25;
    }

    while (v18);
    a3 = v29;
  }

  *a3 = v19;
}

uint64_t sub_1C4D32B38()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = (v5 - v4);
  sub_1C4EF9C88();
  v7 = sub_1C4D32738(v6);
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1C4D32BF4(uint64_t a1)
{
  v2 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = (v7 - v6);
  sub_1C4EF9C88();
  sub_1C4D32738(v8);
  (*(v4 + 8))(v8, v2);
  v9 = sub_1C44F9274(a1);

  return v9;
}

uint64_t sub_1C4D32D50()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore25VirtualInteractionsSignal_config);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VirtualInteractionsSignal(uint64_t a1)
{
  result = qword_1EDDE1200;
  if (!qword_1EDDE1200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D32E18(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C4D32F3C(uint64_t a1)
{
  result = sub_1C4D32F64();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4D32F64()
{
  result = qword_1EC0C6550;
  if (!qword_1EC0C6550)
  {
    type metadata accessor for VirtualInteractionsSignal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6550);
  }

  return result;
}

_BYTE *sub_1C4D32FC4(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C4D33188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C4D331F8()
{
  v2 = v0;
  v3 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v92 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBD08();
  v90 = v4 - v5;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v86 - v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v86 - v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v86 - v11;
  v13 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C4402A68();
  v15 = type metadata accessor for VirtualInteractionContact(0);
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v88 = v19 - v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v86 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v86 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v86 - v28;
  v30 = type metadata accessor for VirtualInteraction(0);
  sub_1C4460108(v2 + v30[9], v1, &qword_1EC0BDBF8, &unk_1C4F6DE80);
  if (sub_1C44157D4(v1, 1, v15) == 1)
  {
    result = sub_1C4420C3C(v1, &qword_1EC0BDBF8, &unk_1C4F6DE80);
    v33 = v15;
  }

  else
  {
    sub_1C481B660(v1, v29, v31);
    v34 = v29[*(v15 + 32)];
    v33 = v15;
    if (v34 != 2 && (v34 & 1) == 0)
    {
      sub_1C456902C(&qword_1EC0B8E98, &unk_1C4F0E8F0);
      v67 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v23 = swift_allocObject();
      *(v23 + 1) = xmmword_1C4F0D130;
      sub_1C4460108(&v29[*(v33 + 28)], &v23[v67], &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C44209A8();
      sub_1C4D36B98(v29, v68);
      goto LABEL_32;
    }

    sub_1C44209A8();
    result = sub_1C4D36B98(v29, v35);
  }

  v36 = *(v2 + v30[8]);
  v37 = *(v2 + v30[10]);
  v91 = v33;
  if (v36 == 1)
  {
    v38 = *(v37 + 16);
    v23 = MEMORY[0x1E69E7CC0];
    if (v38)
    {
      v93 = MEMORY[0x1E69E7CC0];
      sub_1C459D660();
      sub_1C440A2FC();
      v40 = v37 + v39;
      v88 = *(v17 + 72);
      do
      {
        sub_1C4D36B3C(v40, v26, type metadata accessor for VirtualInteractionContact);
        sub_1C4460108(&v26[*(v91 + 28)], v12, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4D36B98(v26, type metadata accessor for VirtualInteractionContact);
        v93 = v23;
        v42 = *(v23 + 2);
        v41 = *(v23 + 3);
        if (v42 >= v41 >> 1)
        {
          sub_1C442C138(v41);
          sub_1C459D660();
          v23 = v93;
        }

        *(v23 + 2) = v42 + 1;
        sub_1C4433A0C();
        sub_1C44CDA30(v12, &v23[v43 + *(v44 + 72) * v42], &unk_1EC0BA0E0, &qword_1C4F105A0);
        v40 += v88;
        --v38;
      }

      while (v38);
    }
  }

  else
  {
    v45 = 0;
    v46 = *(v37 + 16);
    v47 = MEMORY[0x1E69E7CC0];
    while (v46 != v45)
    {
      if (v45 >= *(v37 + 16))
      {
        __break(1u);
        return result;
      }

      v48 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v49 = *(v17 + 72);
      sub_1C4D36B3C(v37 + v48 + v49 * v45, v23, type metadata accessor for VirtualInteractionContact);
      v51 = v23[*(v33 + 32)];
      if (v51 == 2 || (v51 & 1) == 0)
      {
        sub_1C481B660(v23, v88, v50);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C459D608();
          v47 = v93;
        }

        v56 = *(v47 + 2);
        v55 = *(v47 + 3);
        v57 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          sub_1C442C138(v55);
          v86 = v58;
          sub_1C459D608();
          v57 = v86;
          v47 = v93;
        }

        ++v45;
        *(v47 + 2) = v57;
        result = sub_1C481B660(v88, &v47[v48 + v56 * v49], v54);
        v33 = v91;
      }

      else
      {
        sub_1C44209A8();
        result = sub_1C4D36B98(v23, v52);
        ++v45;
      }
    }

    v59 = *(v47 + 2);
    if (v59)
    {
      v93 = MEMORY[0x1E69E7CC0];
      sub_1C459D660();
      sub_1C440A2FC();
      v86 = v47;
      v61 = &v47[v60];
      v88 = *(v17 + 72);
      v62 = v87;
      do
      {
        sub_1C4D36B3C(v61, v26, type metadata accessor for VirtualInteractionContact);
        sub_1C4460108(&v26[*(v91 + 28)], v62, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4D36B98(v26, type metadata accessor for VirtualInteractionContact);
        v93 = v23;
        v64 = *(v23 + 2);
        v63 = *(v23 + 3);
        if (v64 >= v63 >> 1)
        {
          sub_1C442C138(v63);
          sub_1C459D660();
          v23 = v93;
        }

        *(v23 + 2) = v64 + 1;
        sub_1C4433A0C();
        sub_1C44CDA30(v62, &v23[v65 + *(v66 + 72) * v64], &unk_1EC0BA0E0, &qword_1C4F105A0);
        v61 += v88;
        --v59;
      }

      while (v59);
    }

    else
    {

      v23 = MEMORY[0x1E69E7CC0];
    }
  }

LABEL_32:
  v69 = *(v23 + 2);
  v71 = v89;
  v70 = v90;
  if (v69)
  {
    sub_1C4433A0C();
    v73 = &v23[v72];
    v75 = *(v74 + 72);
    v76 = MEMORY[0x1E69E7CC0];
    v92 = v75;
    do
    {
      sub_1C4460108(v73, v71, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C4460108(v71, v70, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v77 = sub_1C4EFF0C8();
      if (sub_1C44157D4(v70, 1, v77) == 1)
      {
        sub_1C4420C3C(v71, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4420C3C(v70, &unk_1EC0BA0E0, &qword_1C4F105A0);
      }

      else
      {
        v78 = sub_1C4EFF048();
        v79 = v71;
        v81 = v80;
        sub_1C4420C3C(v79, &unk_1EC0BA0E0, &qword_1C4F105A0);
        (*(*(v77 - 8) + 8))(v70, v77);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C443D664();
          v76 = v84;
        }

        v82 = *(v76 + 16);
        if (v82 >= *(v76 + 24) >> 1)
        {
          sub_1C443D664();
          v76 = v85;
        }

        *(v76 + 16) = v82 + 1;
        v83 = v76 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v81;
        v71 = v89;
        v70 = v90;
        v75 = v92;
      }

      v73 += v75;
      --v69;
    }

    while (v69);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v76;
}

id sub_1C4D339F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_1C4EF9AD8();
  result = [objc_allocWithZone(MEMORY[0x1E698F138]) initWithEventBody:v3 timestamp:v4];
  *a2 = result;
  return result;
}

uint64_t sub_1C4D33A60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x54746361746E6F63 && a2 == 0xEB00000000657079;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65727275437369 && a2 == 0xED00007265735574;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000011 && 0x80000001C4FC7440 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C4F02938();

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

unint64_t sub_1C4D33C68(char a1)
{
  result = 0x4E79616C70736964;
  switch(a1)
  {
    case 1:
      result = 0x656C646E6168;
      break;
    case 2:
      result = 0x54746361746E6F63;
      break;
    case 3:
      result = 0x49746361746E6F63;
      break;
    case 4:
      result = 0x6E65727275437369;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D33D34(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C65F0, &qword_1C4F6E438);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  sub_1C4409678(a1, a1[3]);
  v8 = sub_1C4D36C7C();
  sub_1C440F61C(&type metadata for VirtualInteractionContact.CodingKeys, v9, v8);
  sub_1C43FBF44();
  sub_1C4F02738();
  if (!v1)
  {
    sub_1C43FBF44();
    sub_1C4F02798();
    type metadata accessor for GDContactType(0);
    sub_1C440EAB0();
    sub_1C4D36AF4(v10, v11, &protocol conformance descriptor for GDContactType);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v12 = type metadata accessor for VirtualInteractionContact(0);
    sub_1C44255D4();
    sub_1C4EFF0C8();
    sub_1C440DBAC();
    sub_1C4D36AF4(v13, v14, MEMORY[0x1E69A9818]);
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C43FBF44();
    sub_1C4F02748();
    sub_1C442E728(*(v12 + 36));
    type metadata accessor for GDMeetingParticipantStatus(0);
    sub_1C441AACC();
    sub_1C4D36AF4(v15, v16, &protocol conformance descriptor for GDMeetingParticipantStatus);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1C4D33FA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C456902C(&qword_1EC0C65D0, &qword_1C4F6E430);
  sub_1C43FCDF8();
  v48 = v7;
  v49 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v46 - v9;
  v11 = type metadata accessor for VirtualInteractionContact(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v15 + 28);
  v17 = sub_1C4EFF0C8();
  v52 = v14;
  sub_1C440BAA8(v14 + v16, 1, 1, v17);
  v18 = a1[3];
  v53 = a1;
  sub_1C4409678(a1, v18);
  sub_1C4D36C7C();
  v50 = v10;
  v19 = v51;
  sub_1C4F02BC8();
  if (v19)
  {
    v21 = v52;
    sub_1C440962C(v53);

    return sub_1C4420C3C(v21 + v16, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    v46[1] = v17;
    v51 = v2;
    LOBYTE(v55) = 0;
    sub_1C4426280();
    v20 = sub_1C4F02618();
    v22 = v52;
    *v52 = v20;
    v22[1] = v23;
    LOBYTE(v55) = 1;
    sub_1C4426280();
    v22[2] = sub_1C4F02678();
    v22[3] = v24;
    type metadata accessor for GDContactType(0);
    v54 = 2;
    sub_1C440EAB0();
    sub_1C4D36AF4(v25, v26, &protocol conformance descriptor for GDContactType);
    sub_1C4413D2C();
    sub_1C440493C(v27, v28, v29, v30, v31);
    v22[4] = v55;
    sub_1C44255D4();
    sub_1C440DBAC();
    sub_1C4D36AF4(v32, v33, MEMORY[0x1E69A9838]);
    v34 = v51;
    sub_1C4F02658();
    sub_1C4D36CD0(v34, v22 + v16);
    LOBYTE(v55) = 4;
    sub_1C4426280();
    *(v22 + *(v11 + 32)) = sub_1C4F02628();
    type metadata accessor for GDMeetingParticipantStatus(0);
    v54 = 5;
    sub_1C441AACC();
    sub_1C4D36AF4(v35, v36, &protocol conformance descriptor for GDMeetingParticipantStatus);
    sub_1C4413D2C();
    sub_1C440493C(v37, v38, v39, v40, v41);
    v42 = *(v11 + 36);
    v43 = sub_1C4435648();
    v44(v43);
    *(v22 + v42) = v55;
    sub_1C4D36B3C(v22, v47, type metadata accessor for VirtualInteractionContact);
    sub_1C440962C(v53);
    return sub_1C4D36B98(v22, type metadata accessor for VirtualInteractionContact);
  }
}

uint64_t sub_1C4D343C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D33A60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D343EC(uint64_t a1)
{
  v2 = sub_1C4D36C7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D34428(uint64_t a1)
{
  v2 = sub_1C4D36C7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D34494()
{
  v2 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v2);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C4402A68();
  v4 = type metadata accessor for VirtualInteraction(0);
  v5 = *(*(v0 + *(v4 + 40)) + 16);
  sub_1C4460108(v0 + *(v4 + 36), v1, &qword_1EC0BDBF8, &unk_1C4F6DE80);
  v6 = type metadata accessor for VirtualInteractionContact(0);
  v7 = sub_1C44157D4(v1, 1, v6) != 1;
  sub_1C4420C3C(v1, &qword_1EC0BDBF8, &unk_1C4F6DE80);
  result = v5 + v7;
  if (__OFADD__(v5, v7))
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C4D3456C()
{
  result = sub_1C4D34494();
  if (result)
  {
    v1 = result;
    if (result >= 5)
    {
      if (result - 5 >= 5)
      {
        if (result - 10 >= 0xA)
        {
          if (result - 20 >= 0x1E)
          {
            if (result - 50 >= 0x32)
            {
              if (result <= 99)
              {
                if (qword_1EDDFECB0 != -1)
                {
                  sub_1C43FFB88(&qword_1EDDFECB0);
                }

                v2 = sub_1C4F00978();
                sub_1C442B738(v2, qword_1EDDFECB8);
                v3 = sub_1C4F00968();
                v4 = sub_1C4F01CF8();
                if (os_log_type_enabled(v3, v4))
                {
                  v5 = swift_slowAlloc();
                  *v5 = 134217984;
                  *(v5 + 4) = v1;
                  _os_log_impl(&dword_1C43F8000, v3, v4, "Number of participants does not fall into any of the buckets - %f", v5, 0xCu);
                  sub_1C43FBE2C();
                }

                return -1;
              }

              else
              {
                return 100;
              }
            }

            else
            {
              return 50;
            }
          }

          else
          {
            return 20;
          }
        }

        else
        {
          return 10;
        }
      }

      else
      {
        return 5;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1C4D346C0()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000001C4F9B160;
  v2 = sub_1C4D3456C();
  v3 = objc_opt_self();
  *(inited + 48) = [v3 featureValueWithInt64_];
  sub_1C4577DBC();
  v4 = sub_1C4F00F28();
  v5 = *(v0 + *(type metadata accessor for VirtualInteraction(0) + 24));
  if (sub_1C465BFB0(v5, &unk_1F43D8CB0))
  {
    if ([v3 featureValueWithInt64_])
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v6 = sub_1C445FAA8(0xD000000000000016, 0x80000001C4F9B070);
      if (v7)
      {
        v8 = v6;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();

        v9 = *(*(v4 + 56) + 8 * v8);
        sub_1C4F02478();
      }
    }
  }

  return v4;
}

void sub_1C4D348BC()
{
  v0 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v40 = &v36 - v2;
  v38 = sub_1C4D346C0();
  v3 = sub_1C4D331F8();
  v4 = 0;
  v41 = *(v3 + 16);
  v42 = v3;
  v5 = v3 + 40;
  v39 = MEMORY[0x1E69E7CC0];
  v37 = v3 + 40;
LABEL_2:
  v6 = (v5 + 16 * v4);
  for (i = v4; v41 != i; ++i)
  {
    if (i >= *(v42 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v6 - 1);
    v9 = *v6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C45FB538();
    v44 = v8;
    v45 = v9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = sub_1C4F01438();
    v13 = v12;
    if (v10)
    {
      v14 = v11;
      v15 = sub_1C4EF9CD8();
      v43 = i;
      v16 = v40;
      sub_1C440BAA8(v40, 1, 1, v15);
      v17 = sub_1C4886564(v14, v13, v16);
      v19 = v18;

      sub_1C45942C8(v10);

      v20 = v16;
      i = v43;
      sub_1C4420C3C(v20, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v19)
      {
        v21 = v17;
        v22 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C443D664();
          v22 = v25;
        }

        v5 = v37;
        v23 = *(v22 + 16);
        if (v23 >= *(v22 + 24) >> 1)
        {
          sub_1C443D664();
          v22 = v26;
        }

        v4 = v43 + 1;
        *(v22 + 16) = v23 + 1;
        v39 = v22;
        v24 = v22 + 16 * v23;
        *(v24 + 32) = v21;
        *(v24 + 40) = v19;
        goto LABEL_2;
      }
    }

    else
    {
    }

    v6 += 2;
  }

  sub_1C4577DBC();
  v44 = v39;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443D694();
  sub_1C4F01048();

  v27 = sub_1C43FBC98();
  if (sub_1C4594E18(v27, v28))
  {
    v29 = v38;
    swift_isUniquelyReferenced_nonNull_native();
    v44 = v29;
    sub_1C4660314();
  }

  else
  {
    v30 = v38;
    v31 = sub_1C445FAA8(0xD00000000000001BLL, 0x80000001C4F9B140);
    if (v32)
    {
      v33 = v31;
      swift_isUniquelyReferenced_nonNull_native();
      v44 = v30;
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();
      v34 = v44;

      v35 = *(*(v34 + 56) + 8 * v33);
      sub_1C4F02478();
    }
  }
}

uint64_t sub_1C4D34C6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73696E616863656DLL && a2 == 0xE90000000000006DLL;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7265646E6573 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000017 && 0x80000001C4FC7420 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D34EF8(char a1)
{
  result = 0x7461447472617473;
  switch(a1)
  {
    case 1:
      result = 0x65746144646E65;
      break;
    case 2:
      result = 0x73696E616863656DLL;
      break;
    case 3:
      result = 0x6449656C646E7562;
      break;
    case 4:
      result = 0x6F69746365726964;
      break;
    case 5:
      result = 0x7265646E6573;
      break;
    case 6:
      result = 0x6E65697069636572;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D34FE4(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C6598, &qword_1C4F6E428);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  sub_1C4409678(a1, a1[3]);
  v8 = sub_1C4D36AA0();
  sub_1C440F61C(&type metadata for VirtualInteraction.CodingKeys, v9, v8);
  sub_1C4EF9CD8();
  sub_1C44114EC();
  sub_1C4D36AF4(v10, v11, MEMORY[0x1E6969538]);
  sub_1C43FBF44();
  sub_1C4F027E8();
  if (!v1)
  {
    v12 = type metadata accessor for VirtualInteraction(0);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C442E728(v12[6]);
    type metadata accessor for GDInteractionMechanism(0);
    sub_1C4409390();
    sub_1C4D36AF4(v13, v14, &protocol conformance descriptor for GDInteractionMechanism);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C44255D4();
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C442E728(v12[8]);
    type metadata accessor for GDInteractionDirection(0);
    sub_1C440FF3C();
    sub_1C4D36AF4(v15, v16, &protocol conformance descriptor for GDInteractionDirection);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
    type metadata accessor for VirtualInteractionContact(0);
    sub_1C442D97C();
    sub_1C4D36AF4(v17, v18, &unk_1C4F6E34C);
    sub_1C43FEF68();
    sub_1C4F02778();
    sub_1C442E728(v12[10]);
    sub_1C456902C(&qword_1EC0C6580, &qword_1C4F6E420);
    sub_1C4D36BF0(&qword_1EC0C65B0, &qword_1EC0C65A8, &unk_1C4F6E34C, MEMORY[0x1E69E6300]);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C442E728(v12[11]);
    type metadata accessor for GDMeetingParticipantStatus(0);
    sub_1C441AACC();
    sub_1C4D36AF4(v19, v20, &protocol conformance descriptor for GDMeetingParticipantStatus);
    sub_1C4414374();
    sub_1C43FEF68();
    sub_1C4F027E8();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1C4D35378@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - v5;
  v7 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v50 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  sub_1C456902C(&qword_1EC0C6560, &qword_1C4F6E418);
  sub_1C43FCDF8();
  v46 = v13;
  v47 = v14;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  v49 = type metadata accessor for VirtualInteraction(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1[3];
  v53 = a1;
  sub_1C4409678(a1, v21);
  sub_1C4D36AA0();
  v48 = v17;
  v22 = v52;
  sub_1C4F02BC8();
  v51 = v7;
  if (v22)
  {
    return sub_1C440962C(v53);
  }

  v52 = v6;
  LOBYTE(v55) = 0;
  sub_1C44114EC();
  sub_1C4D36AF4(v23, v24, MEMORY[0x1E6969558]);
  sub_1C4F026C8();
  v44 = *(v50 + 32);
  v44(v20, v12, v7);
  LOBYTE(v55) = 1;
  sub_1C4F026C8();
  v25 = v20;
  v26 = sub_1C441E8D8();
  (v44)(v26);
  type metadata accessor for GDInteractionMechanism(0);
  v54 = 2;
  sub_1C4409390();
  sub_1C4D36AF4(v27, v28, &protocol conformance descriptor for GDInteractionMechanism);
  sub_1C4413D2C();
  sub_1C4F026C8();
  *(v20 + v20[6]) = v55;
  sub_1C44255D4();
  v29 = sub_1C4F02678();
  v30 = (v20 + v20[7]);
  *v30 = v29;
  v30[1] = v31;
  type metadata accessor for GDInteractionDirection(0);
  v54 = 4;
  sub_1C440FF3C();
  sub_1C4D36AF4(v32, v33, &protocol conformance descriptor for GDInteractionDirection);
  sub_1C4413D2C();
  sub_1C4432EC8();
  sub_1C4F026C8();
  *(v20 + v20[8]) = v55;
  type metadata accessor for VirtualInteractionContact(0);
  LOBYTE(v55) = 5;
  sub_1C442D97C();
  sub_1C4D36AF4(v34, v35, &unk_1C4F6E374);
  v36 = v52;
  sub_1C4432EC8();
  sub_1C4F02658();
  sub_1C44CDA30(v36, v20 + v20[9], &qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C456902C(&qword_1EC0C6580, &qword_1C4F6E420);
  v54 = 6;
  sub_1C4D36BF0(&qword_1EC0C6588, &qword_1EC0C6578, &unk_1C4F6E374, MEMORY[0x1E69E6330]);
  sub_1C4413D2C();
  sub_1C4432EC8();
  sub_1C4F026C8();
  *(v20 + v20[10]) = v55;
  type metadata accessor for GDMeetingParticipantStatus(0);
  v54 = 7;
  sub_1C441AACC();
  sub_1C4D36AF4(v37, v38, &protocol conformance descriptor for GDMeetingParticipantStatus);
  sub_1C4413D2C();
  sub_1C4432EC8();
  sub_1C4F026C8();
  v39 = v20[11];
  v40 = sub_1C43FE224();
  v41(v40);
  *(v25 + v39) = v55;
  sub_1C4D36B3C(v25, v45, type metadata accessor for VirtualInteraction);
  sub_1C440962C(v53);
  return sub_1C4D36B98(v25, type metadata accessor for VirtualInteraction);
}

uint64_t sub_1C4D35A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4D35AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D34C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D35B10(uint64_t a1)
{
  v2 = sub_1C4D36AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D35B4C(uint64_t a1)
{
  v2 = sub_1C4D36AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C4D36008(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  type metadata accessor for VirtualInteraction(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  v13 = 0;
  if (a3 == 1)
  {
    sub_1C4EF96B8();
    swift_allocObject();
    sub_1C4EF96A8();
    sub_1C43FF920();
    sub_1C4D36AF4(v14, v15, &unk_1C4F6E3E4);
    sub_1C4EF9698();
    sub_1C4D36B3C(v12, v9, type metadata accessor for VirtualInteraction);
    v16 = objc_allocWithZone(v4);
    sub_1C4D36B3C(v9, v16 + OBJC_IVAR____TtC24IntelligencePlatformCore23VirtualInteractionEvent_virtualInteraction, type metadata accessor for VirtualInteraction);
    v18.receiver = v16;
    v18.super_class = v4;
    v13 = objc_msgSendSuper2(&v18, sel_init);
    sub_1C4D36B98(v9, type metadata accessor for VirtualInteraction);

    sub_1C4D36B98(v12, type metadata accessor for VirtualInteraction);
  }

  return v13;
}

uint64_t sub_1C4D36370()
{
  sub_1C4EF96F8();
  swift_allocObject();
  sub_1C4EF96E8();
  sub_1C4EF96C8();
  type metadata accessor for VirtualInteraction(0);
  sub_1C43FF920();
  sub_1C4D36AF4(v0, v1, &unk_1C4F6E3BC);
  v2 = sub_1C4EF96D8();

  return v2;
}

uint64_t sub_1C4D366A0(uint64_t a1)
{
  result = type metadata accessor for VirtualInteraction(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1C4D36788(uint64_t a1)
{
  sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GDInteractionMechanism(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for GDInteractionDirection(319);
      if (v3 <= 0x3F)
      {
        sub_1C4D368F4(319, qword_1EDDFAC78, type metadata accessor for VirtualInteractionContact, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C4D368F4(319, &qword_1EDDFA590, type metadata accessor for VirtualInteractionContact, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for GDMeetingParticipantStatus(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C4D368F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C4D36980(uint64_t a1)
{
  sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GDContactType(319);
    if (v2 <= 0x3F)
    {
      sub_1C4D368F4(319, &qword_1EDDFCC90, MEMORY[0x1E69A9810], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C44FCC6C(319, &qword_1EDDFEA48, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for GDMeetingParticipantStatus(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D36AA0()
{
  result = qword_1EC0C6568;
  if (!qword_1EC0C6568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6568);
  }

  return result;
}

uint64_t sub_1C4D36AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4D36B3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C4D36B98(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C4D36BF0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C6580, &qword_1C4F6E420);
    sub_1C442D97C();
    sub_1C4D36AF4(a2, v8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4D36C7C()
{
  result = qword_1EC0C65D8;
  if (!qword_1EC0C65D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C65D8);
  }

  return result;
}

uint64_t sub_1C4D36CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for VirtualInteractionContact.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VirtualInteraction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4D36EFC()
{
  result = qword_1EC0C6638;
  if (!qword_1EC0C6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6638);
  }

  return result;
}

unint64_t sub_1C4D36F54()
{
  result = qword_1EC0C6640;
  if (!qword_1EC0C6640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6640);
  }

  return result;
}

unint64_t sub_1C4D36FAC()
{
  result = qword_1EC0C6648;
  if (!qword_1EC0C6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6648);
  }

  return result;
}

unint64_t sub_1C4D37004()
{
  result = qword_1EC0C6650;
  if (!qword_1EC0C6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6650);
  }

  return result;
}

unint64_t sub_1C4D3705C()
{
  result = qword_1EC0C6658;
  if (!qword_1EC0C6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6658);
  }

  return result;
}

unint64_t sub_1C4D370B4()
{
  result = qword_1EC0C6660;
  if (!qword_1EC0C6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6660);
  }

  return result;
}

void sub_1C4D37108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v1, 0);
    v5 = sub_1C486C288();
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v1;
    v25 = v2 + 56;
    v26 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v27 = v3;
        v9 = sub_1C4F00FF8();
        v11 = v10;
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1C44CD9C0(v12 > 1, v13 + 1, 1);
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v25;
        v2 = v26;
        v15 = 1 << *(v26 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v25 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v26 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C45E8E98(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C45E8E98(v5, v27, 0);
        }

LABEL_19:
        if (++v6 == v24)
        {
          return;
        }

        v4 = 0;
        v3 = *(v26 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void (*sub_1C4D37344(void (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      swift_unknownObjectRetain();
      v4(&v7);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      ++v6;
      if (!--v5)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C4D37408()
{
  sub_1C43FE96C();
  v2 = v1;
  v23 = v3;
  v25 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + 56;
  sub_1C43FD030();
  v12 = v11 & v10;
  v14 = (v13 + 63) >> 6;
  v22 = v5 + 16;
  v24 = v5 + 8;
  v26 = v2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
      v17 = v25;
LABEL_7:
      (*(v5 + 16))(v8, *(v26 + 48) + *(v5 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v17);
      v23(v8);
      if (v0)
      {
        break;
      }

      v12 &= v12 - 1;
      v18 = sub_1C441E8EC();
      v19(v18);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_3;
      }
    }

    v20 = sub_1C441E8EC();
    v21(v20);
LABEL_11:

    sub_1C43FBC80();
  }

  else
  {
LABEL_3:
    v17 = v25;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        goto LABEL_11;
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t (*sub_1C4D375BC(uint64_t (*result)(char *, uint64_t), uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    v8 = v7;
    result = v4(&v8, a2);
    --v5;
  }

  while (!v3);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VisionKeyValueStore.store(entityIdentifier:name:relationship:visualIdentifier:association:confidence:)(Swift::String_optional entityIdentifier, Swift::String_optional name, Swift::String_optional relationship, Swift::String visualIdentifier, IntelligencePlatformCore::AssociationType association, Swift::Float confidence)
{
  v8 = v6;
  object = relationship.value._object;
  countAndFlagsBits = relationship.value._countAndFlagsBits;
  v11 = name.value._object;
  v12 = name.value._countAndFlagsBits;
  v13 = *association;
  if (entityIdentifier.value._object)
  {
    v14 = entityIdentifier.value._countAndFlagsBits;
  }

  else
  {
    v14 = 0;
  }

  if (entityIdentifier.value._object)
  {
    v15 = entityIdentifier.value._object;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v55 = v14;
  v56 = v15;
  if (name.value._object)
  {
    v16 = name.value._countAndFlagsBits;
  }

  else
  {
    v16 = 0;
  }

  if (name.value._object)
  {
    v17 = name.value._object;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  v57 = v16;
  v58 = v17;
  if (relationship.value._object)
  {
    v18 = relationship.value._countAndFlagsBits;
  }

  else
  {
    v18 = 0;
  }

  if (relationship.value._object)
  {
    v19 = relationship.value._object;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  *&v59 = v18;
  *(&v59 + 1) = v19;
  v60 = v13;
  v61 = confidence;
  v62 = visualIdentifier;
  *&v63 = 0;
  *(&v63 + 1) = 0xE000000000000000;
  *&v64 = 0;
  *(&v64 + 1) = 0xE000000000000000;
  LOBYTE(v65) = v13;
  *(&v65 + 1) = confidence;
  if (!entityIdentifier.value._object)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    goto LABEL_25;
  }

  v20 = entityIdentifier.value._object;
  sub_1C44062DC();
  if (!v21)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_25:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = sub_1C4851A34(&v62);
    if (!v11)
    {
      goto LABEL_30;
    }

    goto LABEL_26;
  }

  v66 = countAndFlagsBits;
  v50 = v62;
  v51 = v63;
  v52 = v64;
  v53 = v65;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4D3AFBC(v7, v20, &v50._countAndFlagsBits, 1);
  if (!v8)
  {
    v39 = sub_1C4851A34(&v62);
    sub_1C4413D3C(v39, v40, v41, v42, v43, v44, v45, v46, v50._countAndFlagsBits, v50._object, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, v59);
    v47 = sub_1C442C148();
    v23 = sub_1C4D3AFBC(v47, v48, v49, 1);
    countAndFlagsBits = v66;
    if (!v11)
    {
LABEL_30:
      if (object)
      {
        v35 = HIBYTE(object) & 0xF;
        if ((object & 0x2000000000000000) == 0)
        {
          v35 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v35)
        {
          sub_1C4413D3C(v23, v24, v25, v26, v27, v28, v29, v30, v50._countAndFlagsBits, v50._object, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, v59);
          v36 = sub_1C442C148();
          sub_1C4D3AFBC(v36, v37, v38, 2);
        }
      }

LABEL_36:
      v22 = &v55;
      goto LABEL_37;
    }

LABEL_26:
    v31 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v31 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      sub_1C4413D3C(v23, v24, v25, v26, v27, v28, v29, v30, v50._countAndFlagsBits, v50._object, v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54, v55, v56, v57, v58, v59);
      v32 = sub_1C442C148();
      v23 = sub_1C4D3AFBC(v32, v33, v34, 0);
      if (v8)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_30;
  }

  sub_1C4851A34(&v55);
  v22 = &v62;
LABEL_37:
  sub_1C4851A34(v22);
}

void sub_1C4D37878(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_1C4EFF0C8();
  sub_1C440EAC8();
  sub_1C4C5192C(v6, v7, MEMORY[0x1E69A9830]);
  sub_1C4404C28();
  if (sub_1C4F010B8())
  {
    v8 = a3(0);
    sub_1C4EFEEF8();
    sub_1C4417B84();
    sub_1C4C5192C(v9, v10, MEMORY[0x1E69A9768]);
    sub_1C4404960();
    if ((sub_1C4F010B8() & 1) == 0)
    {
LABEL_19:
      sub_1C4404960();
      sub_1C440A528();

      sub_1C4EFE9A8();
      return;
    }

    v11 = v8[8];
    v12 = *(a1 + v11);
    v13 = *(a1 + v11 + 8);
    v14 = (a2 + v11);
    v15 = v12 == *v14 && v13 == v14[1];
    if (v15 || (sub_1C441BEC4(), (sub_1C4F02938() & 1) != 0))
    {
      sub_1C4EFF8A8();
      sub_1C4403B6C();
      sub_1C4C5192C(v16, v17, MEMORY[0x1E69A9A08]);
      sub_1C4404960();
      if (sub_1C4F010B8())
      {
        sub_1C4404960();
        v18 = sub_1C4F010B8();
        if (v18)
        {
          v19 = *(a1 + v8[9]);
          sub_1C441EC18(v18);
          MEMORY[0x1C6941830](v19);
          v20 = sub_1C4F02B68();
          v21 = *(a2 + v8[9]);
          sub_1C441EC18(v20);
          MEMORY[0x1C6941830](v21);
          v22 = sub_1C4F02B68();
          if (v20 == v22)
          {
            sub_1C441EC18(v22);
            sub_1C4F01298();
            v23 = sub_1C4F02B68();
            sub_1C441EC18(v23);
            sub_1C4F01298();
            if (v23 == sub_1C4F02B68())
            {
              sub_1C4435658(v8[12]);
              if (v15)
              {
                sub_1C4435658(v8[10]);
              }
            }
          }

          sub_1C440A528();
          return;
        }

        goto LABEL_19;
      }

      sub_1C4404960();
      sub_1C440A528();

      sub_1C4EFF868();
    }

    else
    {
      sub_1C441BEC4();
      sub_1C440A528();

      sub_1C4F02938();
    }
  }

  else
  {
    sub_1C4404C28();
    sub_1C440A528();

    sub_1C4EFF078();
  }
}

uint64_t sub_1C4D37BF0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37C24(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37C58(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37F74(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37C8C()
{
  sub_1C4440160();
  v1 = 0xE700000000000000;
  v3 = v2;
  v4 = v0;
  switch(v5)
  {
    case 1:
      v1 = 0xE400000000000000;
      v4 = 1819047270;
      break;
    case 2:
      v4 = sub_1C44076F0();
      break;
    case 3:
      v4 = sub_1C43FC708();
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v3)
  {
    case 1:
      v6 = 0xE400000000000000;
      v0 = 1819047270;
      break;
    case 2:
      sub_1C4417600();
      break;
    case 3:
      sub_1C440AFE0();
      break;
    default:
      break;
  }

  if (v4 == v0 && v1 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1C4F02938();
  }

  return v8 & 1;
}

uint64_t sub_1C4D37DA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37DD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37E18(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37F74(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37E4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37E80(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37EB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37EE8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C44209C0(a1, a2);
  sub_1C4D37878(v2, v3, v4);
  return v5 & 1;
}

uint64_t sub_1C4D37F1C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 0;
  }

  else
  {
    return sub_1C4F02938();
  }
}

void sub_1C4D37F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v56 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v56 - v16);
  sub_1C4EFF0C8();
  sub_1C440EAC8();
  sub_1C4C5192C(v18, v19, MEMORY[0x1E69A9830]);
  sub_1C4404C28();
  if (sub_1C4F010B8())
  {
    v59 = v11;
    v20 = a3(0);
    sub_1C4EFEEF8();
    sub_1C4417B84();
    sub_1C4C5192C(v21, v22, MEMORY[0x1E69A9768]);
    sub_1C442E734();
    if ((sub_1C4F010B8() & 1) == 0)
    {
LABEL_23:
      sub_1C442E734();
      sub_1C43FE9F0();

      sub_1C4EFE9A8();
      return;
    }

    v57 = v8;
    v58 = v20;
    v23 = *(v20 + 32);
    v24 = *(a1 + v23);
    v25 = *(a1 + v23 + 8);
    v26 = (a2 + v23);
    v27 = v24 == *v26 && v25 == v26[1];
    if (v27 || (sub_1C43FF938(), (sub_1C4F02938() & 1) != 0))
    {
      v28 = v58;
      sub_1C4EFF8A8();
      sub_1C4403B6C();
      sub_1C4C5192C(v29, v30, MEMORY[0x1E69A9A08]);
      sub_1C442E734();
      if (sub_1C4F010B8())
      {
        sub_1C442E734();
        if (sub_1C4F010B8())
        {
          v31 = *(v28 + 36);
          sub_1C44310D4(a1 + v31, v17, type metadata accessor for Source);
          v32 = *(v28 + 36);
          sub_1C44310D4(a2 + v32, v14, type metadata accessor for Source);
          if (*v17 == *v14 && v17[1] == v14[1])
          {
            sub_1C44541BC(v14, type metadata accessor for Source);
            sub_1C44541BC(v17, type metadata accessor for Source);
          }

          else
          {
            v34 = sub_1C4F02938();
            sub_1C44541BC(v14, type metadata accessor for Source);
            sub_1C44541BC(v17, type metadata accessor for Source);
            if ((v34 & 1) == 0)
            {
              v35 = a1 + v31;
              v36 = v59;
              sub_1C44310D4(v35, v59, type metadata accessor for Source);
              v37 = v57;
              sub_1C44310D4(a2 + v32, v57, type metadata accessor for Source);
              if (*v36 != *v37 || v36[1] != v37[1])
              {
                sub_1C4F02938();
              }

              sub_1C44541BC(v37, type metadata accessor for Source);
              sub_1C44541BC(v36, type metadata accessor for Source);
LABEL_57:
              sub_1C43FE9F0();
              return;
            }
          }

          v43 = v58;
          v44 = *(v58 + 40);
          v45 = *(a1 + v44);
          v46 = *(a1 + v44 + 8);
          v47 = (a2 + v44);
          v48 = v45 == *v47 && v46 == v47[1];
          if (v48 || (sub_1C43FF938(), (sub_1C4F02938() & 1) != 0))
          {
            v49 = *(v43 + 48);
            if (sub_1C4684BDC())
            {
              sub_1C4435658(*(v43 + 44));
            }

            else
            {
              sub_1C4440160();
              v51 = *(a2 + v49);
              v52 = 0xE700000000000000;
              v53 = v50;
              switch(*(a1 + v49))
              {
                case 1:
                  v52 = 0xE400000000000000;
                  v53 = 1819047270;
                  break;
                case 2:
                  v53 = sub_1C44076F0();
                  break;
                case 3:
                  v53 = sub_1C43FC708();
                  break;
                default:
                  break;
              }

              v54 = 0xE700000000000000;
              switch(v51)
              {
                case 1:
                  v54 = 0xE400000000000000;
                  v50 = 1819047270;
                  break;
                case 2:
                  sub_1C4417600();
                  break;
                case 3:
                  sub_1C440AFE0();
                  break;
                default:
                  break;
              }

              if (v53 != v50 || v52 != v54)
              {
                sub_1C4F02938();
              }
            }
          }

          else
          {
            sub_1C43FF938();
            sub_1C4F02938();
          }

          goto LABEL_57;
        }

        goto LABEL_23;
      }

      sub_1C442E734();
      sub_1C43FE9F0();

      sub_1C4EFF868();
    }

    else
    {
      sub_1C43FF938();
      sub_1C43FE9F0();

      sub_1C4F02938();
    }
  }

  else
  {
    sub_1C4404C28();
    sub_1C43FE9F0();

    sub_1C4EFF078();
  }
}

uint64_t sub_1C4D38500()
{

  sub_1C47D32A0();
  v1 = v0;

  return v1;
}

void sub_1C4D38590(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 40;
  v18 = a2 + 40;
  v19 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v5 + 16 * v3); ; i += 2)
  {
    if (v4 == v3)
    {
      sub_1C4BA06BC();
      return;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_17;
    }

    v9 = *(i - 1);
    v8 = *i;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v10 = sub_1C459ACF4(a1, v9, v8);
    if (v2)
    {

      return;
    }

    v11 = v10;
    if (v10)
    {
      v12 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458F6A8();
        v12 = v16;
      }

      v13 = *(v12 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v12 + 24) >> 1)
      {
        sub_1C458F6A8();
        v14 = v13 + 1;
        v12 = v17;
      }

      *(v12 + 16) = v14;
      v19 = v12;
      v15 = (v12 + 24 * v13);
      v15[4] = v9;
      v15[5] = v8;
      v15[6] = v11;
      v3 = v7;
      v5 = v18;
      goto LABEL_2;
    }

    ++v3;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t VisionKeyValueStore.fetchNameEntities(for:)()
{
  result = sub_1C44D01BC();
  if (!result)
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

Swift::Bool __swiftcall VisualEntity.greaterThan(_:)(IntelligencePlatformCore::VisualEntity *a1)
{
  association = a1->association;
  v3 = *(v1 + 48);
  if (association < v3)
  {
    return 1;
  }

  return a1->confidence < *(v1 + 52) && v3 == association;
}

uint64_t VisionKeyValueStore.fetchRelationshipEntities(for:)()
{
  result = sub_1C44D01BC();
  if (!result)
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t VisionKeyValueStore.fetchEntityIdentifiers(for:)()
{
  result = sub_1C44D01BC();
  if (!result)
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t VisionKeyValueStore.needToInsertVisualIdentifierTriple(for:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  VisionKeyValueStore.autonamingFeedbackDecision(identifier:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(a1, a2, a3, a4, a5);
  if (v6)
  {
    result = VisionKeyValueStore.fetchEntityIdentifiers(for:)();
    v8 = result;
    v9 = 0;
    v29 = 0;
    v10 = 0;
    v11 = result + 56;
    v12 = 1 << *(result + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(result + 56);
    v15 = (v12 + 63) >> 6;
LABEL_6:
    while (v14)
    {
LABEL_11:
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v18 = *(v8 + 48) + 56 * (v17 | (v10 << 6));
      v19 = *(v18 + 8);
      v20 = *(v18 + 48);
      v21 = *(a3 + 16);
      if (v20 == 6)
      {
        if (v21)
        {
          sub_1C4F02AF8();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F01298();
          sub_1C4F02B68();
          while (1)
          {
            sub_1C4426294();
            if ((v25 & 1) == 0)
            {
              break;
            }

            sub_1C4415178();
            if (!v24 || v26 != v19)
            {
              sub_1C44129CC();
              if ((sub_1C4F02938() & 1) == 0)
              {
                continue;
              }
            }

            v29 = 1;
            goto LABEL_6;
          }
        }

        goto LABEL_34;
      }

      if (v21)
      {
        sub_1C4F02AF8();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F01298();
        sub_1C4F02B68();
        while (1)
        {
          sub_1C4426294();
          if ((v22 & 1) == 0)
          {
            break;
          }

          sub_1C4415178();
          v24 = v24 && v23 == v19;
          if (!v24)
          {
            sub_1C44129CC();
            if ((sub_1C4F02938() & 1) == 0)
            {
              continue;
            }
          }

          v9 = 1;
          break;
        }
      }
    }

    while (1)
    {
      v16 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v16 >= v15)
      {

        v28 = v29 | v9;
        return v28 & 1;
      }

      v14 = *(v11 + 8 * v16);
      ++v10;
      if (v14)
      {
        v10 = v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    v28 = 0;
    return v28 & 1;
  }

  return result;
}

void sub_1C4D38AF8()
{
  *&xmmword_1EC0C6670 = 0;
  *(&xmmword_1EC0C6670 + 1) = 0xE000000000000000;
  qword_1EC0C6680 = 0;
  unk_1EC0C6688 = 0xE000000000000000;
  *&xmmword_1EC0C6690 = 0;
  *(&xmmword_1EC0C6690 + 1) = 0xE000000000000000;
  LOBYTE(qword_1EC0C66A0) = 0;
  HIDWORD(qword_1EC0C66A0) = 0;
}

uint64_t static VisualEntity.AbsoluteMin.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7190 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1EC0C6680;
  v7[0] = xmmword_1EC0C6670;
  v7[1] = *&qword_1EC0C6680;
  v3 = xmmword_1EC0C6690;
  v7[2] = xmmword_1EC0C6690;
  v4 = qword_1EC0C66A0;
  v8 = qword_1EC0C66A0;
  *a1 = xmmword_1EC0C6670;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1C461B90C(v7, v6);
}

BOOL static VisualEntity.== infix(_:_:)(float *a1, uint64_t a2)
{
  v2 = *(a1 + 2);
  v4 = *(a1 + 3);
  v3 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *(a1 + 48);
  v7 = a1[13];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  v14 = *(a2 + 52);
  if (!v13 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v15 = v2 == v8 && v4 == v9;
  if (!v15 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v10 && v5 == v11)
  {
    if (v6 == v12)
    {
      return v7 == v14;
    }

    return 0;
  }

  v17 = sub_1C4F02938();
  result = 0;
  if ((v17 & 1) != 0 && v6 == v12)
  {
    return v7 == v14;
  }

  return result;
}

uint64_t sub_1C4D38CB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746169636F737361 && a2 == 0xEB000000006E6F69;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1C4D38E6C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6E6F6974616C6572;
      break;
    case 3:
      result = 0x746169636F737361;
      break;
    case 4:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D38F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D38CB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D38F64(uint64_t a1)
{
  v2 = sub_1C4D3C11C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D38FA0(uint64_t a1)
{
  v2 = sub_1C4D3C11C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisualEntity.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C66A8, &qword_1C4F6E660);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v9;
  v10 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v10;
  v15 = *(v1 + 48);
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3C11C();
  sub_1C4F02BF8();
  v26 = 0;
  v11 = v20;
  sub_1C4F02798();
  if (!v11)
  {
    v12 = v15;
    v25 = 1;
    sub_1C43FBF44();
    sub_1C4F02798();
    v24 = 2;
    sub_1C43FBF44();
    sub_1C4F02798();
    v23 = v12;
    v22 = 3;
    sub_1C4D3C170();
    sub_1C43FBF44();
    sub_1C4F027E8();
    v21 = 4;
    sub_1C43FBF44();
    sub_1C4F027C8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t VisualEntity.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_1C4F01298();
  sub_1C4F01298();
  sub_1C4F01298();
  MEMORY[0x1C69417F0](v2);
  return sub_1C4F02B38();
}

uint64_t VisualEntity.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 48);
  sub_1C441EC18(a1);
  sub_1C4F01298();
  sub_1C4F01298();
  sub_1C4F01298();
  MEMORY[0x1C69417F0](v2);
  sub_1C4F02B38();
  return sub_1C4F02B68();
}

uint64_t VisualEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C66B0, &qword_1C4F6E668);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3C11C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  sub_1C43FF6BC();
  v6 = sub_1C4F02678();
  v21 = v7;
  sub_1C43FF6BC();
  v8 = sub_1C4F02678();
  v20 = v9;
  v18 = v8;
  LOBYTE(v26[0]) = 2;
  v17 = sub_1C4F02678();
  v19 = v10;
  LOBYTE(v22) = 3;
  sub_1C4D3C1C4();
  sub_1C4F026C8();
  v29 = 4;
  sub_1C43FF6BC();
  sub_1C4F026A8();
  v12 = v11;
  v13 = sub_1C43FD158();
  v14(v13);
  *&v22 = v6;
  *(&v22 + 1) = v21;
  *&v23 = v18;
  *(&v23 + 1) = v20;
  *&v24 = v17;
  *(&v24 + 1) = v19;
  LOBYTE(v25) = 2;
  HIDWORD(v25) = v12;
  v15 = v23;
  *a2 = v22;
  *(a2 + 16) = v15;
  *(a2 + 32) = v24;
  *(a2 + 48) = v25;
  sub_1C461B90C(&v22, v26);
  sub_1C440962C(a1);
  v26[0] = v6;
  v26[1] = v21;
  v26[2] = v18;
  v26[3] = v20;
  v26[4] = v17;
  v26[5] = v19;
  v27 = 2;
  v28 = v12;
  return sub_1C4851A34(v26);
}

uint64_t sub_1C4D39664()
{
  sub_1C4F02AF8();
  VisualEntity.hash(into:)(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4D396B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001C4FC7570 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEF686374614D7265;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4FC7590 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001C4FC75B0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001C4FC75D0 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F486C61756E616DLL && a2 == 0xED000074694B656DLL;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x68506C61756E616DLL && a2 == 0xEC000000736F746FLL)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

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

unint64_t sub_1C4D39908(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6F486C61756E616DLL;
      break;
    case 6:
      result = 0x68506C61756E616DLL;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1C4D399F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4D39A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D396B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D39A74(uint64_t a1)
{
  v2 = sub_1C4D3C218();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39AB0(uint64_t a1)
{
  v2 = sub_1C4D3C218();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39AEC(uint64_t a1)
{
  v2 = sub_1C4D3C314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39B28(uint64_t a1)
{
  v2 = sub_1C4D3C314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39B64(uint64_t a1)
{
  v2 = sub_1C4D3C368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39BA0(uint64_t a1)
{
  v2 = sub_1C4D3C368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39BDC(uint64_t a1)
{
  v2 = sub_1C4D3C3BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39C18(uint64_t a1)
{
  v2 = sub_1C4D3C3BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39C54(uint64_t a1)
{
  v2 = sub_1C4D3C410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39C90(uint64_t a1)
{
  v2 = sub_1C4D3C410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39CCC(uint64_t a1)
{
  v2 = sub_1C4D3C464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39D08(uint64_t a1)
{
  v2 = sub_1C4D3C464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39D44(uint64_t a1)
{
  v2 = sub_1C4D3C2C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39D80(uint64_t a1)
{
  v2 = sub_1C4D3C2C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D39DBC(uint64_t a1)
{
  v2 = sub_1C4D3C26C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D39DF8(uint64_t a1)
{
  v2 = sub_1C4D3C26C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void AssociationType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1C43FE96C();
  a26 = v28;
  a27 = v29;
  v30 = v27;
  v32 = v31;
  sub_1C456902C(&qword_1EC0C66B8, &qword_1C4F6E670);
  sub_1C43FCDF8();
  v90 = v34;
  v91 = v33;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  v89 = v36;
  sub_1C456902C(&qword_1EC0C66C0, &qword_1C4F6E678);
  sub_1C43FCDF8();
  v87 = v38;
  v88 = v37;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  v86 = v40;
  sub_1C456902C(&qword_1EC0C66C8, &qword_1C4F6E680);
  sub_1C43FCDF8();
  v84 = v42;
  v85 = v41;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBC74();
  v83 = v44;
  sub_1C456902C(&qword_1EC0C66D0, &qword_1C4F6E688);
  sub_1C43FCDF8();
  v81 = v46;
  v82 = v45;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBC74();
  v80 = v48;
  sub_1C456902C(&qword_1EC0C66D8, &qword_1C4F6E690);
  sub_1C43FCDF8();
  v78 = v50;
  v79 = v49;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBC74();
  v77 = v52;
  sub_1C456902C(&qword_1EC0C66E0, &qword_1C4F6E698);
  sub_1C43FCDF8();
  v75 = v54;
  v76 = v53;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v73 - v56;
  v58 = sub_1C456902C(&qword_1EC0C66E8, &qword_1C4F6E6A0);
  sub_1C43FCDF8();
  v74 = v59;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v73 - v61;
  v92 = sub_1C456902C(&qword_1EC0C66F0, &qword_1C4F6E6A8);
  sub_1C43FCDF8();
  v64 = v63;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v73 - v66;
  v68 = *v30;
  sub_1C4409678(v32, v32[3]);
  sub_1C4D3C218();
  sub_1C4F02BF8();
  v69 = (v64 + 8);
  switch(v68)
  {
    case 1:
      a12 = 1;
      sub_1C4D3C410();
      sub_1C440B860(&type metadata for AssociationType.IdentifierMatchCodingKeys, &a12);
      v72 = v75;
      v71 = v76;
      goto LABEL_9;
    case 2:
      a13 = 2;
      sub_1C4D3C3BC();
      v57 = v77;
      sub_1C440B860(&type metadata for AssociationType.ExtractedMessagesCodingKeys, &a13);
      v72 = v78;
      v71 = v79;
      goto LABEL_9;
    case 3:
      a14 = 3;
      sub_1C4D3C368();
      v57 = v80;
      sub_1C440B860(&type metadata for AssociationType.ContactsInferredCodingKeys, &a14);
      v72 = v81;
      v71 = v82;
      goto LABEL_9;
    case 4:
      a15 = 4;
      sub_1C4D3C314();
      v57 = v83;
      sub_1C440B860(&type metadata for AssociationType.ContactsConfirmedCodingKeys, &a15);
      v72 = v84;
      v71 = v85;
      goto LABEL_9;
    case 5:
      a16 = 5;
      sub_1C4D3C2C0();
      v57 = v86;
      sub_1C440B860(&type metadata for AssociationType.ManualHomeKitCodingKeys, &a16);
      v72 = v87;
      v71 = v88;
      goto LABEL_9;
    case 6:
      a17 = 6;
      sub_1C4D3C26C();
      v57 = v89;
      sub_1C440B860(&type metadata for AssociationType.ManualPhotosCodingKeys, &a17);
      v72 = v90;
      v71 = v91;
LABEL_9:
      (*(v72 + 8))(v57, v71);
      (*v69)(v67, v58);
      break;
    default:
      sub_1C4D3C464();
      v70 = v92;
      sub_1C4F02718();
      (*(v74 + 8))(v62, v58);
      (*v69)(v67, v70);
      break;
  }

  sub_1C43FBC80();
}

uint64_t AssociationType.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  sub_1C441EC18(a1);
  MEMORY[0x1C69417F0](v2);
  return sub_1C4F02B68();
}

void AssociationType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1C43FE96C();
  a26 = v28;
  a27 = v29;
  v119 = v27;
  v31 = v30;
  v114 = v32;
  sub_1C456902C(&qword_1EC0C6728, &qword_1C4F6E6B0);
  sub_1C43FCDF8();
  v110 = v33;
  v111 = v34;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  v117 = v36;
  sub_1C456902C(&qword_1EC0C6730, &qword_1C4F6E6B8);
  sub_1C43FCDF8();
  v108 = v37;
  v109 = v38;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  v116 = v40;
  v102 = sub_1C456902C(&qword_1EC0C6738, &qword_1C4F6E6C0);
  sub_1C43FCDF8();
  v107 = v41;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBC74();
  v113 = v43;
  sub_1C456902C(&qword_1EC0C6740, &qword_1C4F6E6C8);
  sub_1C43FCDF8();
  v105 = v45;
  v106 = v44;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBC74();
  v112 = v47;
  sub_1C456902C(&qword_1EC0C6748, &qword_1C4F6E6D0);
  sub_1C43FCDF8();
  v103 = v49;
  v104 = v48;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBC74();
  v115 = v51;
  sub_1C456902C(&qword_1EC0C6750, &qword_1C4F6E6D8);
  sub_1C43FCDF8();
  v100 = v53;
  v101 = v52;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  v56 = v94 - v55;
  v57 = sub_1C456902C(&qword_1EC0C6758, &qword_1C4F6E6E0);
  sub_1C43FCDF8();
  v99 = v58;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v59);
  v61 = v94 - v60;
  v62 = sub_1C456902C(&qword_1EC0C6760, &unk_1C4F6E6E8);
  sub_1C43FCDF8();
  v64 = v63;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v65);
  v67 = v94 - v66;
  v68 = v31[3];
  v118 = v31;
  sub_1C4409678(v31, v68);
  sub_1C4D3C218();
  v69 = v119;
  sub_1C4F02BC8();
  if (v69)
  {
    goto LABEL_8;
  }

  v97 = v61;
  v96 = v57;
  v98 = v56;
  v71 = v115;
  v70 = v116;
  v72 = v117;
  v119 = v62;
  sub_1C4F026E8();
  v76 = sub_1C4570934();
  if (v74 == v75 >> 1)
  {
LABEL_7:
    v85 = v67;
    v86 = sub_1C4F022E8();
    swift_allocError();
    v88 = v87;
    sub_1C456902C(&qword_1EC0B7410, &qword_1C4F06F90);
    *v88 = &type metadata for AssociationType;
    v89 = v119;
    sub_1C4F025F8();
    sub_1C4F022D8();
    (*(*(v86 - 8) + 104))(v88, *MEMORY[0x1E69E6AF8], v86);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v64 + 8))(v85, v89);
LABEL_8:
    sub_1C440962C(v118);
LABEL_9:
    sub_1C43FBC80();
    return;
  }

  v94[1] = 0;
  if (v74 < (v75 >> 1))
  {
    v95 = *(v73 + v74);
    sub_1C4570928(v74 + 1, v75 >> 1, v76, v73);
    v78 = v77;
    v80 = v79;
    swift_unknownObjectRelease();
    if (v78 == v80 >> 1)
    {
      v81 = v64;
      v82 = v114;
      v83 = v119;
      switch(v95)
      {
        case 1:
          a12 = 1;
          sub_1C4D3C410();
          v72 = v98;
          sub_1C44013FC(&type metadata for AssociationType.IdentifierMatchCodingKeys, &a12);
          swift_unknownObjectRelease();
          v92 = v100;
          v91 = v101;
          goto LABEL_16;
        case 2:
          a13 = 2;
          sub_1C4D3C3BC();
          sub_1C44013FC(&type metadata for AssociationType.ExtractedMessagesCodingKeys, &a13);
          swift_unknownObjectRelease();
          (*(v103 + 8))(v71, v104);
          break;
        case 3:
          a14 = 3;
          sub_1C4D3C368();
          v72 = v112;
          sub_1C44013FC(&type metadata for AssociationType.ContactsInferredCodingKeys, &a14);
          swift_unknownObjectRelease();
          v92 = v105;
          v91 = v106;
          goto LABEL_16;
        case 4:
          a15 = 4;
          sub_1C4D3C314();
          v90 = v113;
          sub_1C44013FC(&type metadata for AssociationType.ContactsConfirmedCodingKeys, &a15);
          swift_unknownObjectRelease();
          (*(v107 + 8))(v90, v102);
          break;
        case 5:
          a16 = 5;
          sub_1C4D3C2C0();
          sub_1C44013FC(&type metadata for AssociationType.ManualHomeKitCodingKeys, &a16);
          swift_unknownObjectRelease();
          (*(v109 + 8))(v70, v108);
          break;
        case 6:
          a17 = 6;
          sub_1C4D3C26C();
          sub_1C44013FC(&type metadata for AssociationType.ManualPhotosCodingKeys, &a17);
          swift_unknownObjectRelease();
          v91 = v110;
          v92 = v111;
LABEL_16:
          (*(v92 + 8))(v72, v91);
          break;
        default:
          a11 = 0;
          sub_1C4D3C464();
          v84 = v97;
          sub_1C44013FC(&type metadata for AssociationType.IdentifierNoMatchCodingKeys, &a11);
          swift_unknownObjectRelease();
          (*(v99 + 8))(v84, v96);
          break;
      }

      (*(v81 + 8))(v67, v83);
      v93 = v118;
      *v82 = v95;
      sub_1C440962C(v93);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

void VisionKeyValueStore.init(config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  a10 = *v20;
  v27 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &a9 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  v39 = sub_1C440824C();
  sub_1C44310D4(v39, v38, v40);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v41 = KeyValueStore.init(config:domain:)(v38, 0xD00000000000001BLL, 0x80000001C4FC7460);
  if (v21)
  {
    sub_1C44093A8();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24[2] = v41;
    v42 = sub_1C440824C();
    sub_1C44310D4(v42, v35, v43);
    sub_1C4433A20();
    v24[3] = KeyValueStore.init(config:domain:)(v35, 0xD00000000000001BLL, 0x80000001C4FC7460);
    v44 = sub_1C440824C();
    sub_1C44310D4(v44, v32, v45);
    sub_1C4433A20();
    v24[4] = KeyValueStore.init(config:domain:)(v32, 0xD000000000000019, 0x80000001C4FC7460);
    sub_1C44310D4(v26, v29, type metadata accessor for Configuration);
    sub_1C4433A20();
    v46 = KeyValueStore.init(config:domain:)(v29, 0xD000000000000021, 0x80000001C4FC7460);
    sub_1C44541BC(v26, type metadata accessor for Configuration);
    v24[5] = v46;
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D3AFBC(uint64_t a1, uint64_t a2, __int128 *a3, int a4)
{
  v6 = a3[1];
  v54 = *a3;
  v55 = v6;
  v56 = a3[2];
  v57 = *(a3 + 6);
  v46 = MEMORY[0x1E69E7CD0];
  sub_1C461B90C(&v54, &v42);
  result = sub_1C44D01BC();
  if (v4)
  {
    return sub_1C4851A34(&v54);
  }

  v8 = result;
  if (!result)
  {
    goto LABEL_39;
  }

  if (!*(result + 16))
  {

LABEL_39:
    v13 = *(&v57 + 1);
    v27 = v57;
    v29 = *(&v56 + 1);
    v28 = v56;
    v31 = *(&v55 + 1);
    v30 = v55;
    v33 = *(&v54 + 1);
    v32 = v54;
LABEL_40:
    v47[0] = v32;
    v47[1] = v33;
    v47[2] = v30;
    v47[3] = v31;
    v47[4] = v28;
    v47[5] = v29;
    v48 = v27;
    v49 = v13;
    sub_1C483B90C(&v42, v47);
    sub_1C4851A34(&v42);
    sub_1C495C180();
  }

  v58 = a4;
  v9 = 0;
  v10 = 1 << *(result + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(result + 56);
  v13 = *(&v57 + 1);
  v14 = v57;
  v38 = *(&v56 + 1);
  v39 = v56;
  v36 = *(&v55 + 1);
  v37 = v55;
  v34 = *(&v54 + 1);
  v35 = v54;
  v15 = (v10 + 63) >> 6;
LABEL_8:
  v59 = v14;
  while (v12)
  {
LABEL_14:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(v8 + 48) + 56 * (v17 | (v9 << 6));
    v19 = *(v18 + 48);
    v20 = *(v18 + 32);
    v21 = *v18;
    v51 = *(v18 + 16);
    v52 = v20;
    v50 = v21;
    v53 = v19;
    if (v58)
    {
      if (v58 == 1)
      {
        if (v35 == v50 && v34 == *(&v50 + 1))
        {
          goto LABEL_31;
        }
      }

      else if (v39 == v52 && v38 == *(&v52 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (v37 == v51 && v36 == *(&v51 + 1))
    {
      goto LABEL_31;
    }

    result = sub_1C4F02938();
    v14 = v59;
    if (result)
    {
LABEL_31:
      v25 = v53;
      v26 = *(&v53 + 1);
      if (v14 < v53)
      {
        goto LABEL_36;
      }

      if (v53 == v14 && v13 < *(&v53 + 1))
      {
        v25 = v14;
LABEL_36:
        *&v42 = v35;
        *(&v42 + 1) = v34;
        *&v43 = v37;
        *(&v43 + 1) = v36;
        *&v44 = v39;
        *(&v44 + 1) = v38;
        LOBYTE(v45) = v14;
        *(&v45 + 1) = v13;
        sub_1C461B90C(&v50, v40);
        result = sub_1C4851A34(&v42);
        v38 = *(&v52 + 1);
        v39 = v52;
        v36 = *(&v51 + 1);
        v37 = v51;
        v14 = v25;
        v13 = v26;
        v34 = *(&v50 + 1);
        v35 = v50;
        goto LABEL_8;
      }
    }

    else
    {
      sub_1C461B90C(&v50, &v42);
      sub_1C483B90C(v40, &v50);
      v42 = v40[0];
      v43 = v40[1];
      v44 = v40[2];
      v45 = v41;
      result = sub_1C4851A34(&v42);
      v14 = v59;
    }
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      v27 = v59;
      v29 = v38;
      v28 = v39;
      v31 = v36;
      v30 = v37;
      v33 = v34;
      v32 = v35;
      goto LABEL_40;
    }

    v12 = *(v8 + 56 + 8 * v16);
    ++v9;
    if (v12)
    {
      v9 = v16;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VisionKeyValueStore.fetchAll(domain:)(Swift::String domain)
{
  object = domain._object;
  countAndFlagsBits = domain._countAndFlagsBits;
  v3 = domain._countAndFlagsBits == 0xD000000000000019 && 0x80000001C4FC74A0 == domain._object;
  if (v3 || (sub_1C44129CC(), (sub_1C4F02938() & 1) != 0) || (countAndFlagsBits == 0xD00000000000001BLL ? (v7 = 0x80000001C4FC7480 == object) : (v7 = 0), v7 || (sub_1C44129CC(), (sub_1C4F02938() & 1) != 0) || (countAndFlagsBits == 0xD00000000000001BLL ? (v8 = 0x80000001C4FC7460 == object) : (v8 = 0), v8 || (sub_1C44129CC(), (sub_1C4F02938() & 1) != 0) || (countAndFlagsBits == 0xD000000000000021 ? (v9 = 0x80000001C4FC74C0 == object) : (v9 = 0), v9 || (sub_1C44129CC(), (sub_1C4F02938() & 1) != 0)))))
  {
    KeyValueStore.keys()();
    v4 = sub_1C4D38500();
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  result.value._rawValue = v6;
  result.is_nil = v5;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VisionKeyValueStore.delete(entityIdentifier:name:relationship:visualIdentifier:)(Swift::String_optional entityIdentifier, Swift::String_optional name, Swift::String_optional relationship, Swift::String visualIdentifier)
{
  object = visualIdentifier._object;
  countAndFlagsBits = visualIdentifier._countAndFlagsBits;
  v9 = relationship.value._object;
  v10 = relationship.value._countAndFlagsBits;
  v11 = name.value._object;
  v12 = name.value._countAndFlagsBits;
  if (entityIdentifier.value._object)
  {
    v13 = entityIdentifier.value._object;
    sub_1C44062DC();
    if (v14)
    {
      sub_1C4D3B568(v6, v13, countAndFlagsBits, object, 1, v4[2]);
      if (v5)
      {
        return;
      }

      sub_1C4D3B568(countAndFlagsBits, object, v6, v13, 1, v4[3]);
    }
  }

  if (!v11)
  {
    goto LABEL_10;
  }

  v15 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (sub_1C4D3B568(countAndFlagsBits, object, v12, v11, 0, v4[4]), !v5))
  {
LABEL_10:
    if (v9)
    {
      v16 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v16 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        sub_1C4D3B568(countAndFlagsBits, object, v10, v9, 2, v4[5]);
      }
    }
  }
}

uint64_t sub_1C4D3B568(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, int a5, uint64_t a6)
{
  LODWORD(v8) = a5;
  v45 = *MEMORY[0x1E69E9840];
  result = sub_1C44D01BC();
  if (!v6)
  {
    v14 = result;
    if (result)
    {
      v15 = a4;
      v40[1] = a6;
      v40[2] = v40;
      MEMORY[0x1EEE9AC00](result);
      v17 = v37;
      v37[16] = v8;
      v38 = a3;
      v39 = a4;
      v18 = *(v14 + 32);
      v19 = ((1 << v18) + 63) >> 6;
      v20 = 8 * v19;
      v40[3] = a1;
      v40[4] = a2;
      if ((v18 & 0x3Fu) > 0xD)
      {
        goto LABEL_31;
      }

      while (1)
      {
        LODWORD(v44) = v8;
        v40[0] = v37;
        MEMORY[0x1EEE9AC00](v16);
        v43 = v21;
        v41 = &v37[-((v20 + 15) & 0x3FFFFFFFFFFFFFF0)];
        sub_1C4501018(0, v21, v41);
        v42 = 0;
        v20 = 0;
        v22 = 1 << *(v14 + 32);
        v23 = -1;
        if (v22 < 64)
        {
          v23 = ~(-1 << v22);
        }

        v8 = v23 & *(v14 + 56);
        v24 = (v22 + 63) >> 6;
        v17 = v15;
        while (v8)
        {
          v25 = __clz(__rbit64(v8));
          v8 &= v8 - 1;
LABEL_14:
          v28 = v25 | (v20 << 6);
          v29 = (*(v14 + 48) + 56 * v28);
          if (v44)
          {
            if (v44 == 1)
            {
              v30 = *v29;
              v31 = v29[1];
            }

            else
            {
              v30 = v29[4];
              v31 = v29[5];
            }
          }

          else
          {
            v30 = v29[2];
            v31 = v29[3];
          }

          if (v30 != a3 || v31 != v17)
          {
            v33 = sub_1C4F02938();
            v17 = v15;
            if ((v33 & 1) == 0)
            {
              *&v41[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
              if (__OFADD__(v42++, 1))
              {
                __break(1u);
LABEL_27:
                sub_1C4A8E4C4(v41, v19, v42, v14);
                goto LABEL_28;
              }
            }
          }
        }

        v26 = v20;
        v19 = v43;
        while (1)
        {
          v20 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v20 >= v24)
          {
            goto LABEL_27;
          }

          v27 = *(v14 + 56 + 8 * v20);
          ++v26;
          if (v27)
          {
            v25 = __clz(__rbit64(v27));
            v8 = (v27 - 1) & v27;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_31:
        v44 = v17;
        v35 = v19;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (!swift_stdlib_isStackAllocationSafe())
        {
          break;
        }
      }

      v36 = swift_slowAlloc();
      sub_1C4D3C524(v36, v35, v14, sub_1C4D3D094);

      MEMORY[0x1C6942830](v36, -1, -1);
LABEL_28:
      sub_1C495C180();
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VisionKeyValueStore.clearAll()()
{
  KeyValueStore.clear()();
  if (!v0)
  {
    KeyValueStore.clear()();
    if (!v1)
    {
      KeyValueStore.clear()();
      if (!v2)
      {
        KeyValueStore.clear()();
      }
    }
  }
}

uint64_t sub_1C4D3B904(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = *a1;
      v4 = a1[1];
    }

    else
    {
      v5 = a1[4];
      v4 = a1[5];
    }
  }

  else
  {
    v5 = a1[2];
    v4 = a1[3];
  }

  if (v5 == a3 && v4 == a4)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1C4F02938() ^ 1;
  }

  return v7 & 1;
}

void VisionKeyValueStore.deleteAssociations(for:associatedIdentifiers:associatedNames:)(int a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  oslog = a2;
  v5 = a3 + 56;
  sub_1C43FD030();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_6:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v15 = *v13;
      v14 = v13[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C445013C(v15, v14, 0, 0, v16, v17, v18, v19, v39, v40, oslog);
      v8 &= v8 - 1;

      v11 = v12;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v10)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  v20 = v40;
  v21 = v40 + 56;
  sub_1C43FD030();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = 0;
  if (!v24)
  {
    goto LABEL_10;
  }

  do
  {
    v28 = v27;
LABEL_13:
    v29 = (*(v20 + 48) + ((v28 << 10) | (16 * __clz(__rbit64(v24)))));
    v30 = *v29;
    v31 = v29[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C445013C(0, 0, v30, v31, v32, v33, v34, v35, v39, v40, oslog);
    v24 &= v24 - 1;

    v27 = v28;
  }

  while (v24);
LABEL_10:
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {

      return;
    }

    v24 = *(v21 + 8 * v28);
    ++v27;
    if (v24)
    {
      goto LABEL_13;
    }
  }

LABEL_24:
  __break(1u);
  swift_once();
  v36 = sub_1C4F00978();
  sub_1C442B738(v36, qword_1EDE2DE10);
  osloga = sub_1C4F00968();
  v37 = sub_1C4F01CD8();
  if (os_log_type_enabled(osloga, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1C43F8000, osloga, v37, "Error in VisionKeyValueStore: couldn't delete entries.", v38, 2u);
    MEMORY[0x1C6942830](v38, -1, -1);
  }
}

void VisionKeyValueStore.autonamingFeedbackDecision(identifier:associatedIdentifiers:associatedNames:autonamingRejectionPersons:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C4D37108(a4);
  v10 = sub_1C4499940();
  v57 = sub_1C4428DA0(a5);
  if (!v57)
  {
LABEL_52:

    return;
  }

  v51 = a4;
  v11 = 0;
  v58 = a5 & 0xC000000000000001;
  v52 = a5 + 32;
  v53 = a5 & 0xFFFFFFFFFFFFFF8;
  v56 = a3 + 56;
  v59 = a3;
  v12 = a5;
  v54 = a1;
  v55 = a2;
  v50 = a5;
  while (1)
  {
    if (v58)
    {
      v13 = MEMORY[0x1C6940F90](v11, v12);
    }

    else
    {
      if (v11 >= *(v53 + 16))
      {
        goto LABEL_56;
      }

      v13 = *(v52 + 8 * v11);
    }

    if (__OFADD__(v11++, 1))
    {
      goto LABEL_55;
    }

    v60 = v13;
    v15 = [v13 localIdentifier];
    v16 = sub_1C4F01138();
    v18 = v17;

    if (v16 == a1 && v18 == a2)
    {
      break;
    }

    v20 = sub_1C4F02938();

    if (v20)
    {
      goto LABEL_15;
    }

LABEL_13:

LABEL_51:
    if (v11 == v57)
    {
      goto LABEL_52;
    }
  }

LABEL_15:
  v21 = [v60 userFeedbackProperties];
  v22 = [v21 autonamingUserFeedbacks];

  if (!v22)
  {
    goto LABEL_13;
  }

  v23 = [v22 array];

  v24 = sub_1C4F01678();
  v25 = *(v24 + 16);
  if (!v25)
  {

    a1 = v54;
    a2 = v55;
    goto LABEL_51;
  }

  v26 = 0;
  v27 = v24 + 32;
  v28 = &selRef_localizedName;
  while (2)
  {
    if (v26 < *(v24 + 16))
    {
      sub_1C442B870(v27 + 32 * v26, v61);
      sub_1C4D3C618();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_45;
      }

      v29 = v62;
      v30 = sub_1C4D3C5B4(v62);
      if (v31)
      {
        v32 = v30;
        v33 = v31;
        if ([v29 v28[202]] == 1)
        {
          v34 = sub_1C4F00FF8();
          v36 = v35;

          if (*(v10 + 16))
          {
            sub_1C4F02AF8();
            sub_1C4F01298();
            v37 = sub_1C4F02B68();
            v38 = ~(-1 << *(v10 + 32));
            while (1)
            {
              v39 = v37 & v38;
              if (((*(v10 + 56 + (((v37 & v38) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v37 & v38)) & 1) == 0)
              {
                goto LABEL_48;
              }

              v40 = (*(v10 + 48) + 16 * v39);
              if (*v40 != v34 || v40[1] != v36)
              {
                v42 = sub_1C4F02938();
                v37 = v39 + 1;
                if ((v42 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_53;
            }
          }

          a3 = v59;
LABEL_44:
          v27 = v24 + 32;
LABEL_45:
          if (++v26 == v25)
          {

            a1 = v54;
            a2 = v55;
            v12 = v50;
            goto LABEL_51;
          }

          continue;
        }

        v43 = [v29 v28[202]];
        if ((v43 & 0x8000000000000000) == 0 && v43 == 2 && *(a3 + 16))
        {
          sub_1C4F02AF8();
          sub_1C4F01298();
          v44 = sub_1C4F02B68();
          v45 = ~(-1 << *(a3 + 32));
          while (1)
          {
            v46 = v44 & v45;
            if (((*(v56 + (((v44 & v45) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v44 & v45)) & 1) == 0)
            {
              break;
            }

            v47 = (*(v59 + 48) + 16 * v46);
            if (*v47 != v32 || v33 != v47[1])
            {
              v49 = sub_1C4F02938();
              v44 = v46 + 1;
              if ((v49 & 1) == 0)
              {
                continue;
              }
            }

LABEL_53:

            VisionKeyValueStore.deleteAssociations(for:associatedIdentifiers:associatedNames:)(v54, v55, v59, v51);
            return;
          }

LABEL_48:

          a3 = v59;
          v28 = &selRef_localizedName;
          goto LABEL_44;
        }
      }

      goto LABEL_44;
    }

    break;
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

unint64_t sub_1C4D3C11C()
{
  result = qword_1EDDF8290;
  if (!qword_1EDDF8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8290);
  }

  return result;
}

unint64_t sub_1C4D3C170()
{
  result = qword_1EDDE81F0;
  if (!qword_1EDDE81F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE81F0);
  }

  return result;
}

unint64_t sub_1C4D3C1C4()
{
  result = qword_1EDDF68D8;
  if (!qword_1EDDF68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF68D8);
  }

  return result;
}

unint64_t sub_1C4D3C218()
{
  result = qword_1EDDF6968;
  if (!qword_1EDDF6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6968);
  }

  return result;
}

unint64_t sub_1C4D3C26C()
{
  result = qword_1EC0C66F8;
  if (!qword_1EC0C66F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C66F8);
  }

  return result;
}

unint64_t sub_1C4D3C2C0()
{
  result = qword_1EC0C6700;
  if (!qword_1EC0C6700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6700);
  }

  return result;
}

unint64_t sub_1C4D3C314()
{
  result = qword_1EC0C6708;
  if (!qword_1EC0C6708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6708);
  }

  return result;
}

unint64_t sub_1C4D3C368()
{
  result = qword_1EC0C6710;
  if (!qword_1EC0C6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6710);
  }

  return result;
}

unint64_t sub_1C4D3C3BC()
{
  result = qword_1EC0C6718;
  if (!qword_1EC0C6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6718);
  }

  return result;
}

unint64_t sub_1C4D3C410()
{
  result = qword_1EC0C6720;
  if (!qword_1EC0C6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6720);
  }

  return result;
}

unint64_t sub_1C4D3C464()
{
  result = qword_1EDDF68F0;
  if (!qword_1EDDF68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF68F0);
  }

  return result;
}

uint64_t VisionKeyValueStore.deinit()
{

  return v0;
}

uint64_t VisionKeyValueStore.__deallocating_deinit()
{
  VisionKeyValueStore.deinit();

  return swift_deallocClassInstance();
}

void *sub_1C4D3C524(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C4A8D4E8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C4D3C5B4(void *a1)
{
  v1 = [a1 context];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

unint64_t sub_1C4D3C618()
{
  result = qword_1EC0C5028;
  if (!qword_1EC0C5028)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0C5028);
  }

  return result;
}

unint64_t sub_1C4D3C660()
{
  result = qword_1EDDF8278;
  if (!qword_1EDDF8278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8278);
  }

  return result;
}

unint64_t sub_1C4D3C6B4()
{
  result = qword_1EC0C6768;
  if (!qword_1EC0C6768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6768);
  }

  return result;
}

_BYTE *sub_1C4D3C78C(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for VisualEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4D3C9B8()
{
  result = qword_1EC0C6770;
  if (!qword_1EC0C6770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6770);
  }

  return result;
}

unint64_t sub_1C4D3CA10()
{
  result = qword_1EC0C6778;
  if (!qword_1EC0C6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6778);
  }

  return result;
}

unint64_t sub_1C4D3CA68()
{
  result = qword_1EDDF68E0;
  if (!qword_1EDDF68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF68E0);
  }

  return result;
}

unint64_t sub_1C4D3CAC0()
{
  result = qword_1EDDF68E8;
  if (!qword_1EDDF68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF68E8);
  }

  return result;
}

unint64_t sub_1C4D3CB18()
{
  result = qword_1EDDF6928;
  if (!qword_1EDDF6928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6928);
  }

  return result;
}

unint64_t sub_1C4D3CB70()
{
  result = qword_1EDDF6930;
  if (!qword_1EDDF6930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6930);
  }

  return result;
}

unint64_t sub_1C4D3CBC8()
{
  result = qword_1EDDF68F8;
  if (!qword_1EDDF68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF68F8);
  }

  return result;
}

unint64_t sub_1C4D3CC20()
{
  result = qword_1EDDF6900;
  if (!qword_1EDDF6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6900);
  }

  return result;
}

unint64_t sub_1C4D3CC78()
{
  result = qword_1EDDF6918;
  if (!qword_1EDDF6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6918);
  }

  return result;
}

unint64_t sub_1C4D3CCD0()
{
  result = qword_1EDDF6920;
  if (!qword_1EDDF6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6920);
  }

  return result;
}

unint64_t sub_1C4D3CD28()
{
  result = qword_1EDDF6908;
  if (!qword_1EDDF6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6908);
  }

  return result;
}

unint64_t sub_1C4D3CD80()
{
  result = qword_1EDDF6910;
  if (!qword_1EDDF6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6910);
  }

  return result;
}

unint64_t sub_1C4D3CDD8()
{
  result = qword_1EDDF6938;
  if (!qword_1EDDF6938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6938);
  }

  return result;
}

unint64_t sub_1C4D3CE30()
{
  result = qword_1EDDF6940;
  if (!qword_1EDDF6940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6940);
  }

  return result;
}

unint64_t sub_1C4D3CE88()
{
  result = qword_1EDDF6948;
  if (!qword_1EDDF6948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6948);
  }

  return result;
}

unint64_t sub_1C4D3CEE0()
{
  result = qword_1EDDF6950;
  if (!qword_1EDDF6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6950);
  }

  return result;
}

unint64_t sub_1C4D3CF38()
{
  result = qword_1EDDF6958;
  if (!qword_1EDDF6958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6958);
  }

  return result;
}

unint64_t sub_1C4D3CF90()
{
  result = qword_1EDDF6960;
  if (!qword_1EDDF6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF6960);
  }

  return result;
}

unint64_t sub_1C4D3CFE8()
{
  result = qword_1EDDF8280;
  if (!qword_1EDDF8280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8280);
  }

  return result;
}

unint64_t sub_1C4D3D040()
{
  result = qword_1EDDF8288;
  if (!qword_1EDDF8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8288);
  }

  return result;
}

void sub_1C4D3D0B8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C4D38590(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

uint64_t VisionSignal.visualId.getter()
{
  v1 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t VisionSignal.__allocating_init(visualId:confidence:)(uint64_t a1, uint64_t a2, float a3)
{
  sub_1C4401420();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t VisionSignal.init(visualId:confidence:)(uint64_t a1, uint64_t a2, float a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t static VisionSignal.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1C4F02938();
  }
}

uint64_t sub_1C4D3D29C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496C6175736976 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
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

uint64_t sub_1C4D3D36C(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x64496C6175736976;
  }
}

uint64_t sub_1C4D3D3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D3D29C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D3D3D8(uint64_t a1)
{
  v2 = sub_1C4D3D60C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D3D414(uint64_t a1)
{
  v2 = sub_1C4D3D60C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisionSignal.__deallocating_deinit()
{

  sub_1C4401420();

  return swift_deallocClassInstance();
}

uint64_t VisionSignal.encode(to:)(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0C6780, &qword_1C4F6F0F0);
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3D60C();
  sub_1C4F02BF8();
  v10[8] = 0;
  sub_1C4F02798();
  if (!v1)
  {
    swift_beginAccess();
    v10[7] = 1;
    sub_1C4F027C8();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1C4D3D60C()
{
  result = qword_1EC0C6788;
  if (!qword_1EC0C6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6788);
  }

  return result;
}

uint64_t VisionSignal.__allocating_init(from:)(void *a1)
{
  sub_1C4401420();
  v2 = swift_allocObject();
  VisionSignal.init(from:)(a1);
  return v2;
}

uint64_t *VisionSignal.init(from:)(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C6790, &unk_1C4F6F0F8);
  sub_1C43FCDF8();
  v14 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3D60C();
  sub_1C4F02BC8();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v14;
    v16 = 0;
    *(v1 + 16) = sub_1C4F02678();
    *(v1 + 24) = v10;
    v15 = 1;
    sub_1C4F026A8();
    v12 = v11;
    (*(v9 + 8))(v8, v4);
    *(v1 + 32) = v12;
  }

  sub_1C440962C(a1);
  return v1;
}

uint64_t sub_1C4D3D898@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = VisionSignal.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Source.visionSignals(from:)(id *a1, void *a2)
{
  v3 = v2;
  v100 = a2;
  v103[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C4EF9D38();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v96 - v14;
  sub_1C4F00558();
  sub_1C43FCDF8();
  v98 = v17;
  v99 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v101 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = MEMORY[0x1E69E7CC0];
  sub_1C449ED64(v2, v15);
  if (qword_1EDDFED28 != -1)
  {
LABEL_83:
    swift_once();
  }

  v19 = sub_1C442B738(v10, &unk_1EDDFD088);
  v20 = sub_1C44209D0(v19);
  v22 = *v15;
  v23 = *(v15 + 8);
  v24 = v20 == *v15 && v21 == v23;
  if (v24 || (sub_1C440B884(v20, v21) & 1) != 0)
  {
    sub_1C448D818(v15);
    sub_1C4F00548();
  }

  else
  {
    if (qword_1EDDFD0D0 != -1)
    {
      swift_once();
    }

    v25 = sub_1C442B738(v10, qword_1EDDFD0D8);
    v26 = sub_1C44209D0(v25);
    v28 = v26 == v22 && v27 == v23;
    if (v28 || (sub_1C440B884(v26, v27) & 1) != 0)
    {
      goto LABEL_26;
    }

    if (qword_1EDDFD130 != -1)
    {
      swift_once();
    }

    v29 = sub_1C442B738(v10, qword_1EDDFD138);
    v30 = sub_1C44209D0(v29);
    if (v30 == v22 && v31 == v23)
    {
LABEL_26:
      sub_1C448D818(v15);
    }

    else
    {
      v33 = sub_1C440B884(v30, v31);
      sub_1C448D818(v15);
      if ((v33 & 1) == 0)
      {
        if (qword_1EDDFD028 != -1)
        {
          sub_1C43FE9B4(&qword_1EDDFD028);
        }

        v34 = sub_1C4F00978();
        sub_1C442B738(v34, qword_1EDE2DE10);
        sub_1C449ED64(v3, v12);
        v35 = sub_1C4F00968();
        v36 = sub_1C4F01CF8();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v103[0] = v38;
          *v37 = 136315138;
          v39 = *v12;
          v40 = *(v12 + 8);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C448D818(v12);
          v41 = sub_1C441D828(v39, v40, v103);

          *(v37 + 4) = v41;
          _os_log_impl(&dword_1C43F8000, v35, v36, "Invalid source type for vision signal extraction: %s", v37, 0xCu);
          sub_1C440962C(v38);
          MEMORY[0x1C6942830](v38, -1, -1);
          MEMORY[0x1C6942830](v37, -1, -1);
        }

        else
        {

          sub_1C448D818(v12);
        }

        return MEMORY[0x1E69E7CC0];
      }
    }

    sub_1C4F00538();
  }

  v42 = [objc_allocWithZone(MEMORY[0x1E69AE370]) init];
  ObjCClassFromObject = swift_getObjCClassFromObject();

  v44 = [objc_allocWithZone(ObjCClassFromObject) init];
  v45 = [objc_opt_self() service];
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C4F0FCC0;
  *(v46 + 32) = v44;
  sub_1C4461BB8(0, &qword_1EDDDBB48, 0x1E69AE3B8);
  v3 = v44;
  v47 = sub_1C4F01658();

  v48 = sub_1C4EF9A38();
  v49 = sub_1C4F00528();
  sub_1C4EF9058();
  sub_1C4EF9CF8();
  v15 = v50;
  (*(v6 + 8))(v9, v4);
  v51 = sub_1C4F01108();

  v103[0] = 0;
  v100 = v45;
  v52 = [v45 performRequests:v47 onImageData:v48 withUniformTypeIdentifier:v49 andIdentifier:v51 error:v103];

  if (v52)
  {
    v53 = v103[0];
    v9 = 0;
    v54 = v101;
  }

  else
  {
    v55 = v103[0];
    v56 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v57 = sub_1C4F00978();
    sub_1C442B738(v57, qword_1EDE2DE10);
    v58 = sub_1C4F00968();
    v59 = sub_1C4F01CD8();
    v60 = os_log_type_enabled(v58, v59);
    v54 = v101;
    if (v60)
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1C43F8000, v58, v59, "Error getting visual identifier from image", v61, 2u);
      MEMORY[0x1C6942830](v61, -1, -1);
    }

    v9 = 0;
  }

  v62 = sub_1C4D3E3F0(v3);
  if (!v62)
  {
    sub_1C442D994();
    v76(v54);
LABEL_54:

    return MEMORY[0x1E69E7CC0];
  }

  v63 = v62;
  if (!sub_1C4428DA0(v62))
  {
    sub_1C442D994();
    v77(v54);

    goto LABEL_54;
  }

  sub_1C4431590(0, (v63 & 0xC000000000000001) == 0, v63);
  if ((v63 & 0xC000000000000001) != 0)
  {
    v64 = MEMORY[0x1C6940F90](0, v63);
  }

  else
  {
    v64 = *(v63 + 32);
  }

  v65 = v64;

  objc_opt_self();
  v66 = swift_dynamicCastObjCClass();
  if (!v66)
  {

    sub_1C442D994();
    v82(v54);
    return MEMORY[0x1E69E7CC0];
  }

  v67 = v66;
  v97 = v65;
  v68 = [v66 resultItems];
  sub_1C4461BB8(0, &unk_1EC0B9960, 0x1E69AE380);
  v69 = sub_1C4F01678();

  v70 = sub_1C4428DA0(v69);

  if (!v70)
  {
    sub_1C442D994();
    v83(v101);
LABEL_63:

    return MEMORY[0x1E69E7CC0];
  }

  v71 = [v67 resultItems];
  v12 = sub_1C4F01678();

  v103[0] = MEMORY[0x1E69E7CC0];
  v72 = sub_1C4428DA0(v12);
  v73 = 0;
  v4 = (v12 & 0xC000000000000001);
  v6 = v12 & 0xFFFFFFFFFFFFFF8;
  v10 = &off_1E81F1000;
  while (v72 != v73)
  {
    if (v4)
    {
      v74 = MEMORY[0x1C6940F90](v73, v12);
    }

    else
    {
      if (v73 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      v74 = *(v12 + 8 * v73 + 32);
    }

    v9 = v74;
    if (__OFADD__(v73, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    [v74 confidence];
    if (v75 >= 0.5)
    {
      sub_1C4F02318();
      v15 = *(v103[0] + 2);
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
    }

    else
    {
    }

    ++v73;
  }

  v12 = v103[0];
  if (!sub_1C4428DA0(v103[0]))
  {
    sub_1C442D994();
    v84(v101);

    goto LABEL_63;
  }

  v80 = sub_1C4428DA0(v12);
  if (v80 < 2)
  {
    v6 = v12 & 0xC000000000000001;
    sub_1C4431590(0, (v12 & 0xC000000000000001) == 0, v12);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v85 = MEMORY[0x1C6940F90](0, v12);
    }

    else
    {
      v85 = *(v12 + 32);
    }

    v86 = v85;
    [v85 confidence];
    v81 = v87;
  }

  else
  {
    v81 = 1.0 / v80;
    v6 = v12 & 0xC000000000000001;
  }

  v9 = sub_1C4428DA0(v12);
  v15 = 0;
  v78 = MEMORY[0x1E69E7CC0];
  v4 = &off_1E81F1000;
  while (v9 != v15)
  {
    if (v6)
    {
      v88 = MEMORY[0x1C6940F90](v15, v12);
    }

    else
    {
      if (v15 >= *(v12 + 16))
      {
        goto LABEL_82;
      }

      v88 = *(v12 + 8 * v15 + 32);
    }

    v89 = v88;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_81;
    }

    v90 = [v88 personIdentifier];
    v91 = sub_1C4F01138();
    v93 = v92;

    type metadata accessor for VisionSignal();
    v94 = swift_allocObject();
    *(v94 + 16) = v91;
    *(v94 + 24) = v93;
    *(v94 + 32) = v81;
    MEMORY[0x1C6940330]();
    v10 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v78 = v102;

    ++v15;
  }

  sub_1C442D994();
  v95(v101);
  return v78;
}

uint64_t sub_1C4D3E3F0(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_1C4461BB8(0, &unk_1EDDDB840, 0x1E69AE3C0);
  v3 = sub_1C4F01678();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for VisionSignal.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4D3E5C0()
{
  result = qword_1EC0C6798;
  if (!qword_1EC0C6798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6798);
  }

  return result;
}

unint64_t sub_1C4D3E618()
{
  result = qword_1EC0C67A0;
  if (!qword_1EC0C67A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67A0);
  }

  return result;
}

unint64_t sub_1C4D3E670()
{
  result = qword_1EC0C67A8;
  if (!qword_1EC0C67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67A8);
  }

  return result;
}

uint64_t sub_1C4D3E6C4()
{
  if (qword_1EC0B7120 != -1)
  {
    swift_once();
  }

  qword_1EC0C67B0 = qword_1EC0C3888;
  unk_1EC0C67B8 = *&qword_1EC0C3890;
  qword_1EC0C67C8 = qword_1EC0C38A0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static VisitedLocation.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7198 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0C67C8;
  *a1 = qword_1EC0C67B0;
  *(a1 + 8) = unk_1EC0C67B8;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t VisitedLocation.mapLocation.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t VisitedLocation.identifier.getter()
{
  v1 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

void __swiftcall VisitedLocation.init(mapLocation:identifier:latitude:longitude:horizontalUncertainty:addressProperties:preferredName:mapItemName:semanticLocation:poiCategory:)(IntelligencePlatformCore::VisitedLocation *__return_ptr retstr, Swift::String mapLocation, Swift::String_optional identifier, Swift::Double latitude, Swift::Double longitude, Swift::Double_optional horizontalUncertainty, Swift::OpaquePointer_optional addressProperties, Swift::String_optional preferredName, Swift::String_optional mapItemName, Swift::String_optional semanticLocation, Swift::String_optional poiCategory)
{
  countAndFlagsBits = preferredName.value._countAndFlagsBits;
  v12 = *&addressProperties.is_nil;
  rawValue = addressProperties.value._rawValue;
  object = identifier.value._object;
  v48 = identifier.value._countAndFlagsBits;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0CE60;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4F019E8();
  *(v16 + 32) = 0x656475746974616CLL;
  *(v16 + 40) = 0xE800000000000000;
  *(v16 + 48) = v17;
  *(v16 + 56) = v18;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 64) = 0;
  v19 = 1;
  *(v16 + 88) = 1;
  v20 = sub_1C4F019E8();
  *(v16 + 96) = 0x64757469676E6F6CLL;
  *(v16 + 104) = 0xE900000000000065;
  *(v16 + 112) = v20;
  *(v16 + 120) = v21;
  *(v16 + 136) = 0;
  *(v16 + 144) = 0;
  *(v16 + 128) = 0;
  *(v16 + 152) = 1;
  if (v12)
  {
    v22 = v12;
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  sub_1C49D4CB0(v22);
  v23 = v16;
  if (object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4408268();
      v23 = v35;
    }

    v24 = v23[2];
    if (v24 >= v23[3] >> 1)
    {
      sub_1C44129DC();
      v23 = v36;
    }

    v23[2] = v24 + 1;
    v25 = &v23[8 * v24];
    v25[4] = 0x696669746E656469;
    v25[5] = 0xEA00000000007265;
    v25[6] = v48;
    v25[7] = object;
    sub_1C4404B30(v25);
  }

  if ((rawValue & 1) == 0)
  {
    v26 = sub_1C4F019E8();
    v28 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4408268();
      v23 = v45;
    }

    v19 = v23[2];
    if (v19 >= v23[3] >> 1)
    {
      sub_1C44129DC();
      v23 = v46;
    }

    v23[2] = v19 + 1;
    v29 = &v23[8 * v19];
    v29[4] = 0xD000000000000015;
    v29[5] = 0x80000001C4FC7630;
    v29[6] = v26;
    v29[7] = v28;
    sub_1C4404B30(v29);
  }

  if (preferredName.value._object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4408268();
      v23 = v37;
    }

    v19 = v23[2];
    if (v19 >= v23[3] >> 1)
    {
      sub_1C458A900();
      v23 = v38;
    }

    v23[2] = v19 + 1;
    v30 = &v23[8 * v19];
    strcpy((v30 + 32), "preferredName");
    *(v30 + 46) = -4864;
    *(v30 + 48) = countAndFlagsBits;
    *(v30 + 56) = preferredName.value._object;
    sub_1C4404B30(v30);
  }

  if (mapItemName.value._object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4408268();
      v23 = v39;
    }

    sub_1C4401430();
    if (v31)
    {
      sub_1C442D9A0();
      v23 = v40;
    }

    v23[2] = countAndFlagsBits;
    v32 = &v23[8 * v19];
    v32[2].value._countAndFlagsBits = 0x4E6D65744970616DLL;
    v32[2].value._object = 0xEB00000000656D61;
    v32[3] = mapItemName;
    sub_1C4404B30(v32);
  }

  if (semanticLocation.value._object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4408268();
      v23 = v41;
    }

    sub_1C4401430();
    if (v31)
    {
      sub_1C442D9A0();
      v23 = v42;
    }

    v23[2] = countAndFlagsBits;
    v33 = &v23[8 * v19];
    v33[2].value._countAndFlagsBits = 0xD000000000000010;
    v33[2].value._object = 0x80000001C4F9AF40;
    v33[3] = semanticLocation;
    sub_1C4404B30(v33);
  }

  if (poiCategory.value._object)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C4408268();
      v23 = v43;
    }

    sub_1C4401430();
    if (v31)
    {
      sub_1C442D9A0();
      v23 = v44;
    }

    v23[2] = countAndFlagsBits;
    v34 = &v23[8 * v19];
    v34[2].value._countAndFlagsBits = 0x6765746143696F70;
    v34[2].value._object = 0xEB0000000079726FLL;
    v34[3] = poiCategory;
    sub_1C4404B30(v34);
  }

  retstr->mapLocation = mapLocation;
  retstr->basicProperties._rawValue = v23;
  retstr->identifier.value._countAndFlagsBits = v48;
  retstr->identifier.value._object = object;
}

uint64_t sub_1C4D3EC6C(uint64_t a1)
{
  v2 = sub_1C4D3F1F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D3ECA8(uint64_t a1)
{
  v2 = sub_1C4D3F1F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VisitedLocation.encode(to:)(void *a1)
{
  sub_1C456902C(&qword_1EC0C67D0, &unk_1C4F6F2E8);
  sub_1C43FFC58();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = v1[2];
  v12[2] = v1[3];
  v13 = v9;
  v12[1] = v1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3F1F0();
  sub_1C4F02BF8();
  v18 = 0;
  v10 = v14;
  sub_1C4F02798();
  if (!v10)
  {
    v15 = v13;
    v17 = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
    v16 = 2;
    sub_1C4F02738();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t VisitedLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C67E0, &qword_1C4F6F2F8);
  sub_1C43FFC58();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4D3F1F0();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v25 = 0;
  v11 = sub_1C4F02678();
  v21 = v12;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  v24 = 1;
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v20 = v22;
  v23 = 2;
  v13 = sub_1C4F02618();
  v15 = v14;
  v16 = v13;
  (*(v7 + 8))(v10, v3);
  v17 = v21;
  *a2 = v11;
  a2[1] = v17;
  a2[2] = v20;
  a2[3] = v16;
  a2[4] = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

unint64_t sub_1C4D3F1F0()
{
  result = qword_1EC0C67D8;
  if (!qword_1EC0C67D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67D8);
  }

  return result;
}

unint64_t sub_1C4D3F244(uint64_t a1)
{
  *(a1 + 8) = sub_1C4D3F274();
  result = sub_1C4D3F2C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4D3F274()
{
  result = qword_1EC0C67E8;
  if (!qword_1EC0C67E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67E8);
  }

  return result;
}

unint64_t sub_1C4D3F2C8()
{
  result = qword_1EC0C67F0;
  if (!qword_1EC0C67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VisitedLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C4D3F40C()
{
  result = qword_1EC0C67F8;
  if (!qword_1EC0C67F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C67F8);
  }

  return result;
}

unint64_t sub_1C4D3F464()
{
  result = qword_1EC0C6800;
  if (!qword_1EC0C6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6800);
  }

  return result;
}

unint64_t sub_1C4D3F4BC()
{
  result = qword_1EC0C6808;
  if (!qword_1EC0C6808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6808);
  }

  return result;
}

void sub_1C4D3F510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v1, 0);
    v5 = sub_1C486C288();
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 56 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v13 >= v12 >> 1)
        {
          sub_1C44CD9C0(v12 > 1, v13 + 1, 1);
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1C440951C(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1C440951C(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t VisualIdentifierBlockingFunction.init(_:predicates:relationshipPredicates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a2;
  a4[1] = a3;
  a4[2] = result;
  return result;
}

uint64_t sub_1C4D3F768(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 112) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 120) = swift_task_alloc();
  v7 = type metadata accessor for Source(0);
  *(v3 + 128) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v8 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v8);
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 185) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4D3F894, 0, 0);
}

uint64_t sub_1C4D3F894()
{
  switch(*(v0 + 185))
  {
    case 2:

      goto LABEL_4;
    default:
      v1 = sub_1C4F02938();

      if (v1)
      {
LABEL_4:
        v2 = *(v0 + 96);
        v3 = type metadata accessor for WalletClassicOrderDeltaSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D3FC58(&qword_1EDDDC7A8, type metadata accessor for WalletClassicOrderDeltaSourceIngestor, &unk_1C4F6F748);
        v4 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v2, v5 + v6, v7);
        v8 = qword_1EDDFD1F0;
        v9 = 2;
        v10 = v4;
      }

      else
      {
        v11 = *(v0 + 96);
        v3 = type metadata accessor for WalletClassicOrderSourceIngestor(0);
        *(v0 + 40) = v3;
        *(v0 + 48) = sub_1C4D3FC58(&qword_1EDDDDBF0, type metadata accessor for WalletClassicOrderSourceIngestor, &unk_1C4F6F770);
        v10 = sub_1C4422F90((v0 + 16));
        sub_1C4419288();
        sub_1C4471750(v11, v10, v12);
        v4 = (v10 + *(v3 + 20));
        v8 = qword_1EDDFD1F0;
        v9 = 1;
      }

      if (v8 != -1)
      {
        sub_1C440EAE0(&qword_1EDDFD1F0);
      }

      v13 = *(v0 + 160);
      v14 = *(v0 + 96);
      sub_1C442B738(*(v0 + 128), &qword_1EDDFD1F8);
      sub_1C44068F0();
      sub_1C4471750(v15, v4, v16);
      *(v10 + *(v3 + 24)) = v9;
      sub_1C4EFCEF8();
      sub_1C4419288();
      sub_1C4471750(v14, v13, v17);
      if (qword_1EDDFD1F0 != -1)
      {
        sub_1C440EAE0(&qword_1EDDFD1F0);
      }

      v18 = *(v0 + 185);
      v19 = *(v0 + 144);
      v20 = *(v0 + 152);
      v21 = *(v0 + 136);
      v22 = *(v0 + 96);
      v23 = sub_1C442B738(*(v0 + 128), &qword_1EDDFD1F8);
      *(v0 + 168) = v23;
      sub_1C4471750(v23, v19, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4471750(v23, v21, type metadata accessor for Source);
      sub_1C4419288();
      sub_1C4471750(v22, v20, v24);
      *(v0 + 184) = v18;
      v25 = swift_task_alloc();
      *(v0 + 176) = v25;
      *v25 = v0;
      v25[1] = sub_1C4657140;

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t type metadata accessor for WalletClassicOrderEventPhase(uint64_t a1)
{
  result = qword_1EDDDFAF8;
  if (!qword_1EDDDFAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4D3FC58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4D3FCA0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v35 - v3;
  v40 = sub_1C4EFA018();
  sub_1C43FCDF8();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v36 = v7;
  sub_1C43FBE44();
  v39 = sub_1C4EF9BC8();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v14 = sub_1C4EF9BA8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = v19 - v18;
  v21 = sub_1C4EF9B88();
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  v27 = v26 - v25;
  sub_1C4EF9B98();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  (*(v31 + 104))(v30 - v29, *MEMORY[0x1E6969360]);
  v32 = v21;
  v33 = v40;
  (*(v23 + 104))(v27, *MEMORY[0x1E6969358], v32);
  (*(v16 + 104))(v20, *MEMORY[0x1E6969370], v14);
  (*(v9 + 104))(v13, *MEMORY[0x1E6969380], v39);
  sub_1C4EF9FE8();
  result = sub_1C44157D4(v4, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v37 + 32))(v36, v4, v33);
    return sub_1C4EF9BB8();
  }

  return result;
}

void sub_1C4D4024C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  sub_1C43FD030();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_7:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1C483A4A0(v11, *(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1C4D403C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      sub_1C483D91C(v5, v3);
      --v1;
    }

    while (v1);
  }
}

uint64_t (*BMWalletPaymentsCommerceClassicOrder.ingestEvent(startTime:endTime:pipelineType:stores:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5))(uint64_t a1)
{
  v433 = a5;
  v6 = sub_1C456902C(&qword_1EC0C6810, &qword_1C4F6F5B0);
  sub_1C43FBD18(v6);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBC74();
  v9 = sub_1C43FD2C8(v8);
  v459 = type metadata accessor for WalletClassicOrderStructs.OrderTransactionRelationshipType(v9);
  sub_1C43FCDF8();
  v458 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v14 = sub_1C43FD2C8(v13);
  v15 = type metadata accessor for WalletClassicOrderStructs.Transaction(v14);
  v16 = sub_1C440DBC4(v15, &v494);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  sub_1C43FCE30(v17);
  v18 = sub_1C456902C(&qword_1EC0C6818, &qword_1C4F6F5B8);
  sub_1C43FBD18(v18);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBC74();
  sub_1C43FCE30(v20);
  v21 = sub_1C456902C(&qword_1EC0C6820, &qword_1C4F6F5C0);
  sub_1C43FBD18(v21);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBC74();
  v24 = sub_1C43FD2C8(v23);
  v25 = type metadata accessor for WalletClassicOrderStructs.OrderPaymentRelationshipType(v24);
  v26 = sub_1C440DBC4(v25, v460);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD2D8();
  sub_1C43FCE30(v27);
  v28 = sub_1C456902C(&qword_1EC0C6828, &qword_1C4F7D270);
  sub_1C43FBD18(v28);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBC74();
  v31 = sub_1C43FD2C8(v30);
  v32 = type metadata accessor for WalletClassicOrderStructs.QuantityRelationshipType(v31);
  v33 = sub_1C440DBC4(v32, &v492);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD230();
  v36 = sub_1C43FD2C8(v35);
  v37 = type metadata accessor for WalletClassicOrderStructs.Payment(v36);
  v38 = sub_1C440DBC4(v37, &v458);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FD2D8();
  sub_1C43FCE30(v39);
  v40 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v40);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBC74();
  v470 = v42;
  v43 = sub_1C456902C(&qword_1EC0C6830, &qword_1C4F6F5C8);
  sub_1C43FBD18(v43);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBC74();
  v485 = v45;
  v46 = sub_1C43FBE44();
  type metadata accessor for WalletClassicOrderStructs.OrderShipmentFullFillmentRelationshipType(v46);
  sub_1C43FCDF8();
  v478 = v48;
  i = v47;
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  v486 = v49;
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FD230();
  v487 = v51;
  v52 = sub_1C43FBE44();
  v482 = type metadata accessor for WalletClassicOrderStructs.ShipmentFullFillmentInfo(v52);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FD2D8();
  v483 = v54;
  v55 = sub_1C456902C(&qword_1EC0C6838, &qword_1C4F6F5D0);
  sub_1C43FBD18(v55);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBC74();
  sub_1C43FCE30(v57);
  v58 = sub_1C456902C(&qword_1EC0C6840, &qword_1C4F6F5D8);
  sub_1C43FBD18(v58);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBC74();
  v61 = sub_1C43FD2C8(v60);
  v62 = type metadata accessor for WalletClassicOrderStructs.EntityOrganizationRelationshipType(v61);
  v63 = sub_1C440DBC4(v62, &v469);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FD2D8();
  v65 = sub_1C43FD2C8(v64);
  v66 = type metadata accessor for WalletClassicOrderStructs.Organization(v65);
  v67 = sub_1C440DBC4(v66, &v466);
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FD2D8();
  sub_1C43FCE30(v68);
  v69 = sub_1C456902C(&qword_1EC0C6848, &unk_1C4F6F5E0);
  sub_1C43FBD18(v69);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBC74();
  v472 = v71;
  sub_1C43FBE44();
  v471 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v456 = v72;
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v74);
  v455 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v453 = v75;
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v77);
  v448 = sub_1C4EF9BD8();
  sub_1C43FCDF8();
  v447 = v78;
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FD2D8();
  v81 = sub_1C43FD2C8(v80);
  v82 = type metadata accessor for WalletClassicOrderStructs.DateRelationshipType(v81);
  v83 = sub_1C440DBC4(v82, &v482);
  MEMORY[0x1EEE9AC00](v83);
  sub_1C43FBCC4();
  v86 = v85 - v84;
  v474 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v450 = v87;
  MEMORY[0x1EEE9AC00](v88);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v89);
  sub_1C43FD230();
  v91 = sub_1C43FD2C8(v90);
  v463 = type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType(v91);
  sub_1C43FCDF8();
  v473 = v92;
  MEMORY[0x1EEE9AC00](v93);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v94);
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v95);
  sub_1C43FD230();
  v97 = sub_1C43FD2C8(v96);
  v476 = type metadata accessor for WalletClassicOrderStructs.WalletOrder(v97);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v98);
  sub_1C43FBCC4();
  v101 = v100 - v99;
  HIDWORD(v423) = *a4;
  v490 = MEMORY[0x1E69E7CD0];
  sub_1C4F019E8();
  if (qword_1EDDE92B0 != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v102, &qword_1EDE2CFD8);
  String.base64EncodedSHA(withPrefix:)();
  v104 = v103;
  v106 = v105;

  sub_1C4F019E8();
  v108 = v107;
  String.base64EncodedSHA(withPrefix:)();
  v110 = v109;
  v112 = v111;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v113 = v481;
  sub_1C4E7D15C(v110, v112, v114, v115, v116, v117, v118, v119, v399, v402, v404, v407, v410, v413, v416, v418, v420, v423, v425, v427);
  v475 = v113;
  if (!v113)
  {
    v477 = v101;
    v444 = v110;
    v457 = v112;
    v419 = v102;
    v417 = v104;
    v442 = v106;
    v120 = sub_1C465B638(v484, &selRef_orderNumber);
    if (v121)
    {
      v122 = sub_1C4D42C34(v120, v121);
      v124 = v123;

      v125 = (v477 + v476[9]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      *v125 = v122;
      v125[1] = v124;
      sub_1C44869B4(&v488, v122, v124, v126, v127, v128, v129, v130, v400, v403, v405, v408, v411, v414, v417, v102, v421, v424, v426, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438);
    }

    sub_1C4EFEEF8();
    v131 = v464;
    sub_1C43FCF64();
    v480 = v132;
    sub_1C440BAA8(v133, v134, v135, v132);
    v136 = v463;
    sub_1C4EFD258();
    v137 = v136[6];
    v138 = v485;
    v139 = v482;
    if (qword_1EDDFD1F0 != -1)
    {
LABEL_82:
      sub_1C440EAE0(&qword_1EDDFD1F0);
    }

    v140 = type metadata accessor for Source(0);
    sub_1C442B738(v140, &qword_1EDDFD1F8);
    sub_1C441AAE4();
    v481 = v141;
    sub_1C448D140(v141, v131 + v137);
    sub_1C4EFE558();
    v142 = (v131 + v136[8]);
    sub_1C4EFE658();
    v143 = v136[10];
    sub_1C4EFEBF8();
    v144 = (v131 + v136[12]);
    *(v131 + v143) = xmmword_1C4F6F590;
    v145 = v484;
    *v142 = sub_1C465B638(v484, &selRef_orderIdentifier);
    v142[1] = v146;
    *v144 = sub_1C465B638(v145, &selRef_orderTypeIdentifier);
    v144[1] = v147;
    v148 = sub_1C456902C(&qword_1EC0C0358, &qword_1C4F3E6F0);
    v149 = (*(v473 + 80) + 32) & ~*(v473 + 80);
    v412 = *(v473 + 72);
    v406 = *(v473 + 80);
    v409 = v148;
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_1C4F0D130;
    sub_1C4403B84();
    v415 = v149;
    sub_1C448D140(v131, v151 + v149);
    v152 = v476[14];
    v422 = v152;
    v153 = v477;

    *(v153 + v152) = v150;
    sub_1C4E8FEF0();
    v154 = [v145 orderDate];
    if (v154)
    {
      v155 = v154;
      sub_1C4EF9C78();

      (*(v450 + 32))(v449, v445, v474);
      sub_1C43FCF64();
      sub_1C440BAA8(v156, v157, v158, v480);
      sub_1C4EFD168();
      sub_1C441AAE4();
      sub_1C448D140(v481, v86 + v159);
      sub_1C4EFE658();
      v160 = v451[8];
      sub_1C4EFEEE8();
      v473 = v86 + v451[10];
      sub_1C4EFE7B8();
      sub_1C44036C8(v451[12]);
      sub_1C4EFECE8();
      sub_1C44036C8(v451[14]);
      sub_1C4EFE668();
      sub_1C44036C8(v451[16]);
      sub_1C4EFE698();
      sub_1C44036C8(v451[18]);
      sub_1C4EFEA38();
      v161 = (v86 + v451[20]);
      *(v86 + v160) = xmmword_1C4F6F5A0;
      sub_1C4D3FCA0(v446);
      sub_1C4EF9B48();
      sub_1C440D158();
      (*(v447 + 8))(v446, v448);
      v488 = v160;
      v489 = v449;
      *v161 = sub_1C4F01438();
      v161[1] = v162;
      v145 = v452;
      sub_1C4EF9F58();
      if (qword_1EDDE6518 != -1)
      {
        swift_once();
      }

      sub_1C4EF9EA8();
      sub_1C44CDAD4();
      sub_1C440D158();
      (*(v456 + 8))(v454, v471);
      (*(v453 + 8))(v452, v455);
      v163 = v473;
      *v473 = v160;
      *(v163 + 8) = v454;
      v164 = v472;
      sub_1C448D140(v86, v472);
      v165 = sub_1C43FC024();
      sub_1C440BAA8(v165, v166, v167, v451);
      sub_1C4E7DA64(v164);
      (*(v450 + 8))(v449, v474);
      sub_1C4D42998(v86, type metadata accessor for WalletClassicOrderStructs.DateRelationshipType);
      v139 = v482;
    }

    v168 = [v484 merchant];
    if (v168)
    {
      v169 = sub_1C4D42928(v168);
      v86 = v475;
      if (v170)
      {
        v171 = v169;
        v108 = v170;
        String.base64EncodedSHA(withPrefix:)();
        sub_1C4E7DB54(v172, v173);
        if (v86)
        {

          sub_1C445015C();
          goto LABEL_21;
        }

        v145 = v435;
        v175 = (v443 + *(v435 + 36));

        *v175 = v171;
        v175[1] = v108;
        sub_1C43FCF64();
        sub_1C440BAA8(v176, v177, v178, v480);
        sub_1C4EFD348();
        sub_1C441AAE4();
        sub_1C448D140(v481, v437 + v179);
        sub_1C43FCF64();
        sub_1C440BAA8(v180, v181, v182, v435);
        sub_1C448D140(v443, v436);
        sub_1C43FBD94();
        sub_1C440BAA8(v183, v184, v185, v435);
        sub_1C4E7DBD0(v436);
        sub_1C448D140(v437, v434);
        sub_1C43FBD94();
        sub_1C440BAA8(v186, v187, v188, v438);
        sub_1C4E7DCE0(v434);
        sub_1C4D42998(v437, type metadata accessor for WalletClassicOrderStructs.EntityOrganizationRelationshipType);
        sub_1C4D42998(v443, type metadata accessor for WalletClassicOrderStructs.Organization);
      }

      v174 = v483;
    }

    else
    {
      v86 = v475;
      v174 = v483;
    }

    String.base64EncodedSHA(withPrefix:)();
    v488 = v444;
    v489 = v457;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C440A310();

    sub_1C4E7DDD0(v488, v489);
    if (v86)
    {
      v108 = v490;

      sub_1C445015C();
LABEL_21:

LABEL_22:
      sub_1C441D000();
      sub_1C44209E0();
      v190 = v477;
      goto LABEL_23;
    }

    v192 = [v484 shippingFulfillments];
    sub_1C4461BB8(0, &qword_1EC0C6850, 0x1E698F028);
    v193 = sub_1C4F01678();

    v474 = v193;
    v194 = sub_1C4428DA0(v193);
    v475 = 0;
    if (v194)
    {
      if (v194 < 1)
      {
        __break(1u);
        goto LABEL_84;
      }

      v195 = 0;
      v472 = (v174 + *(v139 + 52));
      v471 = v474 & 0xC000000000000001;
      v196 = MEMORY[0x1E69E7CC0];
      v473 = v194;
      do
      {
        if (v471)
        {
          v197 = MEMORY[0x1C6940F90](v195, v474);
        }

        else
        {
          v197 = *(v474 + 8 * v195 + 32);
        }

        v198 = v197;
        v199 = sub_1C465B638(v197, &selRef_carrierName);
        v201 = v200;
        v202 = v472;

        *v202 = v199;
        v202[1] = v201;
        sub_1C465B638(v198, &selRef_trackingNumber);
        v203 = v482;
        if (v204)
        {
          v205 = sub_1C4D42DD8();
          v207 = v206;

          v208 = (v483 + *(v203 + 44));
          swift_bridgeObjectRetain_n();

          *v208 = v205;
          v208[1] = v207;
          v209 = (v477 + v476[11]);

          *v209 = v205;
          v209[1] = v207;
          v210 = v205;
          v174 = v483;
          v211 = v207;
          v138 = v485;
          sub_1C44869B4(&v488, v210, v211, v212, v213, v214, v215, v216, v401, *(&v401 + 1), v406, v409, v412, v415, v417, v419, v422, v424, v426, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438);
        }

        v217 = v138;
        v218 = v174;
        v219 = v487;
        sub_1C43FCF64();
        v220 = v480;
        sub_1C440BAA8(v221, v222, v223, v480);
        v224 = i;
        sub_1C4EFD398();
        sub_1C441AAE4();
        sub_1C448D140(v481, v219 + v225);
        v226 = v219 + *(v224 + 28);
        v174 = v218;
        sub_1C43FCF64();
        sub_1C440BAA8(v227, v228, v229, v203);
        sub_1C448D140(v218, v217);
        sub_1C43FBD94();
        sub_1C440BAA8(v230, v231, v232, v203);
        sub_1C4D427F4(v217, v226);
        if (sub_1C44157D4(v226, 1, v203))
        {
          sub_1C4D42864(v217);
          v138 = v217;
        }

        else
        {
          v233 = v470;
          sub_1C4EFEB78();
          sub_1C4D42864(v485);
          sub_1C43FBD94();
          sub_1C440BAA8(v234, v235, v236, v220);
          v237 = v233;
          v174 = v218;
          v138 = v485;
          sub_1C449A970(v237, v226 + *(v203 + 20));
        }

        sub_1C448D140(v487, v486);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v240 = sub_1C43FCEC0();
          sub_1C458C5D4(v240, v241, v242, v196);
          v196 = v243;
        }

        v239 = *(v196 + 16);
        v238 = *(v196 + 24);
        if (v239 >= v238 >> 1)
        {
          v244 = sub_1C43FFD98(v238);
          sub_1C458C5D4(v244, v245, v246, v196);
          v196 = v247;
        }

        ++v195;

        *(v196 + 16) = v239 + 1;
        sub_1C4D428CC(v486, v196 + ((*(v478 + 80) + 32) & ~*(v478 + 80)) + v478[9] * v239);
        sub_1C4D42998(v487, type metadata accessor for WalletClassicOrderStructs.OrderShipmentFullFillmentRelationshipType);
      }

      while (v473 != v195);
    }

    else
    {
      v196 = MEMORY[0x1E69E7CC0];
    }

    v248 = v174;
    if (*(v196 + 16))
    {
      v249 = v477;
      v250 = v476[15];

      *(v249 + v250) = v196;
      sub_1C4E900EC();
    }

    else
    {

      v249 = v477;
    }

    v145 = v441;
    v251 = [v484 payment];
    v86 = v475;
    if (v251)
    {
      v252 = v251;
      String.base64EncodedSHA(withPrefix:)();
      v488 = v444;
      v489 = v457;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440A310();

      sub_1C4E7E6A4(v488, v489, v253, v254, v255, v256, v257, v258, v401, *(&v401 + 1), v406, v409, v412, v415, v417, v419, v422, v424, v426, v428);
      if (v86)
      {
        v108 = v490;

        sub_1C445015C();

        sub_1C442D9C4();
        sub_1C4D42998(v248, v259);
        sub_1C441D000();
        sub_1C44209E0();
        v190 = v249;
LABEL_23:
        sub_1C4D42998(v190, v189);
        return v108;
      }

      sub_1C43FCF64();
      v260 = v480;
      sub_1C440BAA8(v261, v262, v263, v480);
      v264 = v461;
      sub_1C4EFD208();
      sub_1C441AAE4();
      v487 = v265;
      sub_1C448D140(v481, v432 + v266);
      sub_1C4EFEE08();
      v267 = (v432 + *(v264 + 32));
      sub_1C4EFEC18();
      v268 = (v432 + *(v264 + 40));
      *v267 = sub_1C465B638(v252, &selRef_totalAmount);
      v267[1] = v269;
      *v268 = sub_1C465B638(v252, &selRef_totalCurrencyCode);
      v268[1] = v270;
      sub_1C4430454();
      v271 = v462;
      sub_1C448D140(v432, v462);
      sub_1C43FBD94();
      sub_1C440BAA8(v272, v273, v274, v264);
      sub_1C4E7EF38(v271);
      v275 = [v252 paymentMethods];
      v276 = sub_1C4F01678();

      v488 = v276;
      sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
      sub_1C443D694();
      sub_1C4415DCC();
      v277 = sub_1C4F01048();
      v279 = v278;

      v280 = (v441 + *(v426 + 44));

      *v280 = v277;
      v280[1] = v279;
      v136 = v260;
      sub_1C43FCF64();
      sub_1C440BAA8(v281, v282, v283, v260);
      sub_1C4EFD2A8();
      sub_1C448D140(v481, v431 + v429[6]);
      sub_1C4EFE558();
      sub_1C4410754(v429[8]);
      sub_1C4EFE658();
      sub_1C4410754(v429[10]);
      sub_1C43FCF64();
      sub_1C440BAA8(v284, v285, v286, v426);
      sub_1C441C62C(v441, &v459);
      v287 = sub_1C43FC024();
      sub_1C440BAA8(v287, v288, v289, v426);
      sub_1C4E7F028(v260);
      sub_1C441C62C(v431, &v461);
      v290 = sub_1C43FC024();
      sub_1C440BAA8(v290, v291, v292, v429);
      sub_1C4E7F138(v260);
      v478 = v252;
      v293 = [v252 transactions];
      sub_1C4461BB8(0, &qword_1EC0C6858, 0x1E698F030);
      v294 = sub_1C4F01678();

      v485 = sub_1C4428DA0(v294);
      v145 = 0;
      v482 = v294 & 0xC000000000000001;
      v174 = MEMORY[0x1E69E7CC0];
      v138 = v469;
      v139 = v442;
      for (i = v294; ; v294 = i)
      {
        v131 = v457;
        if (v485 == v145)
        {
          break;
        }

        v137 = v482;
        sub_1C4431590(v145, v482 == 0, v294);
        if (v137)
        {
          v295 = MEMORY[0x1C6940F90](v145, v294);
        }

        else
        {
          v295 = *(v294 + 8 * v145 + 32);
        }

        v296 = v295;
        if (__OFADD__(v145, 1))
        {
          __break(1u);
          goto LABEL_82;
        }

        v487 = v145;
        sub_1C465B638(v295, &selRef_applePayTransactionIdentifier);

        String.base64EncodedSHA(withPrefix:)();
        v488 = v444;
        v489 = v457;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C440A310();

        sub_1C4E7F228(v488, v489, v297, v298, v299, v300, v301, v302, v401, *(&v401 + 1), v406, v409, v412, v415, v417, v419, v422, v424, v426, v428);
        if (v86)
        {

          sub_1C4417B9C();
          v108 = v490;

          sub_1C43FE234();
          sub_1C4D42998(v432, v358);
          sub_1C4435668();
          sub_1C4D42998(v441, v359);
          sub_1C442D9C4();
          sub_1C4D42998(v483, v360);
          goto LABEL_22;
        }

        v486 = v174;
        v475 = 0;
        v303 = v465;
        sub_1C43FCF64();
        sub_1C440BAA8(v304, v305, v306, v307);
        v308 = v461;
        sub_1C4EFD208();
        sub_1C441AAE4();
        sub_1C448D140(v481, v303 + v309);
        sub_1C4EFEE08();
        v310 = (v303 + *(v308 + 32));
        sub_1C4EFEC18();
        v311 = (v303 + *(v308 + 40));
        *v310 = sub_1C465B638(v296, &selRef_amount);
        v310[1] = v312;
        *v311 = sub_1C465B638(v296, &selRef_currencyCode);
        v311[1] = v313;
        v314 = sub_1C465B638(v296, &selRef_amount);
        v316 = v315;
        v317 = sub_1C465B638(v296, &selRef_currencyCode);
        v319 = sub_1C4D42F2C(v314, v316, v317, v318);

        sub_1C4D400DC(v319);
        sub_1C4430454();
        sub_1C441C62C(v303, &v493);
        v320 = sub_1C43FC024();
        sub_1C440BAA8(v320, v321, v322, v308);
        sub_1C4E7FB98(v319);
        sub_1C465B638(v296, &selRef_applePayTransactionIdentifier);
        sub_1C440D158();
        v323 = (v138 + *(v466 + 36));

        *v323 = v319;
        v323[1] = v138;
        v324 = [v296 paymentMethod];
        if (v324)
        {
          v325 = sub_1C4D42928(v324);
          v327 = v326;
        }

        else
        {
          v325 = 0;
          v327 = 0;
        }

        v328 = v487;
        v329 = v466;
        v330 = v469;
        v331 = (v469 + *(v466 + 52));

        *v331 = v325;
        v331[1] = v327;
        v332 = v467;
        sub_1C43FCF64();
        v136 = v480;
        sub_1C440BAA8(v333, v334, v335, v480);
        v336 = v459;
        sub_1C4EFD328();
        sub_1C441AAE4();
        sub_1C448D140(v481, v332 + v337);
        sub_1C4EFE558();
        sub_1C4410754(*(v336 + 32));
        sub_1C4EFE658();
        sub_1C4410754(*(v336 + 40));
        sub_1C43FCF64();
        sub_1C440BAA8(v338, v339, v340, v329);
        sub_1C441C62C(v330, &v491);
        v341 = sub_1C43FC024();
        sub_1C440BAA8(v341, v342, v343, v329);
        sub_1C4E7FC88(v336);
        sub_1C448D140(v332, v468);
        v174 = v486;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v475;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v348 = sub_1C43FCEC0();
          sub_1C458C614(v348, v349, v350, v174);
          v174 = v351;
        }

        v139 = v442;
        v346 = *(v174 + 16);
        v345 = *(v174 + 24);
        v138 = v469;
        if (v346 >= v345 >> 1)
        {
          v352 = sub_1C43FFD98(v345);
          sub_1C458C614(v352, v353, v354, v174);
          v174 = v355;
        }

        sub_1C4D42998(v467, type metadata accessor for WalletClassicOrderStructs.OrderTransactionRelationshipType);
        *(v174 + 16) = v346 + 1;
        sub_1C4D428CC(v468, v174 + ((*(v458 + 80) + 32) & ~*(v458 + 80)) + *(v458 + 72) * v346);
        sub_1C43FE234();
        sub_1C4D42998(v465, v347);
        sub_1C4D42998(v138, type metadata accessor for WalletClassicOrderStructs.Transaction);
        v145 = v328 + 1;
      }

      if (*(v174 + 16))
      {
        v356 = v477;
        v357 = v476[16];

        *(v356 + v357) = v174;
        sub_1C4E902E8();

        sub_1C4417B9C();
      }

      else
      {
        sub_1C4417B9C();
      }

      sub_1C441E900();
      sub_1C43FE234();
      sub_1C4D42998(v432, v361);
      sub_1C4435668();
      sub_1C4D42998(v441, v362);
    }

    else
    {

      sub_1C441E900();
      v136 = v480;
    }

    sub_1C43FCF64();
    sub_1C440BAA8(v363, v364, v365, v136);
    v366 = v463;
    sub_1C4EFD258();
    sub_1C441AAE4();
    sub_1C448D140(v481, v174 + v367);
    sub_1C4EFE558();
    v138 = (v174 + v366[8]);
    sub_1C4EFE658();
    v368 = (v174 + v366[10]);
    sub_1C4EFEBF8();
    v369 = (v174 + v366[12]);
    *v369 = 0;
    v369[1] = 0;
    *v368 = 0xD000000000000014;
    v368[1] = 0x80000001C4F860D0;
    sub_1C44EC90C(v490, v370, v371, v372, v373, v374, v375, v376, v401, *(&v401 + 1), v406, v409, v412, v415, v417, v419, v422, v424, v426, v428, v429, v430, v431, v432, v433, v434);
    v488 = v377;
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C443D694();
    sub_1C4415DCC();
    sub_1C4F01048();

    if (qword_1EDDE92E8 == -1)
    {
LABEL_71:
      sub_1C442B738(v145, qword_1EDE2D008);
      String.base64EncodedSHA(withPrefix:)();
      v379 = v378;
      v381 = v380;

      *v138 = v379;
      v138[1] = v381;
      v382 = v477;
      v383 = *(v477 + v422);
      if (v383)
      {
        sub_1C4403B84();
        sub_1C448D140(v174, v439);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v384 = v383;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v394 = sub_1C43FCEC0();
          sub_1C458C594(v394, v395, v396, v383);
          v384 = v397;
        }

        v386 = *(v384 + 16);
        v385 = *(v384 + 24);
        if (v386 >= v385 >> 1)
        {
          sub_1C458C594(v385 > 1, v386 + 1, 1, v384);
          v384 = v398;
        }

        *(v384 + 16) = v386 + 1;
        sub_1C4D428CC(v439, v384 + v415 + v386 * v412);

        v382 = v477;
        *(v477 + v422) = v384;
        v387 = v483;
        v174 = v440;
      }

      else
      {
        v388 = swift_allocObject();
        *(v388 + 16) = v401;
        sub_1C4403B84();
        sub_1C448D140(v174, v389 + v415);
        *(v382 + v422) = v388;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v387 = v483;
      }

      sub_1C4E8FEF0();
      type metadata accessor for PhaseStores(0);

      sub_1C448E5DC();
      if (!v86)
      {

        LOBYTE(v488) = BYTE4(v424);
        sub_1C4E7FD98();
        v108 = v391;

        sub_1C4D42998(v174, type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType);
        sub_1C442D9C4();
        sub_1C4D42998(v387, v392);
        sub_1C4D42998(v464, type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType);
        sub_1C44209E0();
        sub_1C4D42998(v382, v393);
        return v108;
      }

      sub_1C445015C();

      v108 = type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType;
      sub_1C4D42998(v174, type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType);
      sub_1C442D9C4();
      sub_1C4D42998(v387, v390);
      sub_1C4D42998(v464, type metadata accessor for WalletClassicOrderStructs.IdentifierRelationshipType);
      sub_1C44209E0();
      v190 = v382;
      goto LABEL_23;
    }

LABEL_84:
    swift_once();
    goto LABEL_71;
  }

  return v108;
}
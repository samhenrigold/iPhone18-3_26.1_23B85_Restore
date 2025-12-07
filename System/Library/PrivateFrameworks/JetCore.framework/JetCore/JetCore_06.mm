uint64_t static JSNetworkPerformanceMetrics.metrics(fromJson:)()
{
  JSONObject.subscript.getter(0xD000000000000013, 0x80000001DB52B700, v2);
  v0 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  return sub_1DB320C88(v2, v0);
}

uint64_t sub_1DB372B74@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, _BYTE *a10, _BYTE *a11)
{
  v155 = a8;
  v151 = a5;
  v152 = a7;
  v153 = a3;
  v154 = a6;
  v150 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v146 = &v132[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v145 = &v132[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v142 = &v132[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v141 = &v132[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v132[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v137 = &v132[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v132[-v27];
  MEMORY[0x1EEE9AC00](v29);
  v140 = &v132[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v132[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v132[-v35];
  v37 = a1[3];
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v37);
  v39 = (*(v38 + 8))(v37, v38);
  v149 = a4;
  v136 = v28;
  if (!v40)
  {
    v41 = a4[3];
    v42 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v41);
    v39 = (*(v42 + 8))(v41, v42);
  }

  v147 = v40;
  v148 = v39;
  v43 = a1[3];
  v44 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v43);
  (*(v44 + 16))(v43, v44);
  v45 = sub_1DB509DD0();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  v48 = v47(v36, 1, v45);
  v156 = v46;
  v157 = v47;
  if (v48 == 1)
  {
    sub_1DB30623C(v36, &qword_1ECC43838, &unk_1DB513310);
    v49 = a1[3];
    v50 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v49);
    (*(v50 + 24))(v49, v50);
    if (v47(v33, 1, v45) == 1)
    {
      sub_1DB30623C(v33, &qword_1ECC43838, &unk_1DB513310);
      v143 = 1;
      v144 = 0;
      goto LABEL_9;
    }

    sub_1DB509D90();
    v144 = v52;
    (*(v156 + 8))(v33, v45);
  }

  else
  {
    sub_1DB509D90();
    v144 = v51;
    (*(v46 + 8))(v36, v45);
  }

  v143 = 0;
LABEL_9:
  v53 = v140;
  v54 = a1[3];
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v54);
  (*(v55 + 32))(v54, v55);
  v56 = v157;
  LODWORD(v140) = v157(v53, 1, v45);
  if (v140 == 1)
  {
    sub_1DB30623C(v53, &qword_1ECC43838, &unk_1DB513310);
    v57 = 0;
  }

  else
  {
    sub_1DB509D90();
    v57 = v58;
    (*(v156 + 8))(v53, v45);
  }

  v59 = v145;
  v60 = a1[3];
  v61 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v60);
  v62 = v60;
  v63 = v136;
  (*(v61 + 40))(v62, v61);
  v138 = v56(v63, 1, v45);
  if (v138 == 1)
  {
    sub_1DB30623C(v63, &qword_1ECC43838, &unk_1DB513310);
    v64 = 0;
    v65 = v156;
  }

  else
  {
    sub_1DB509D90();
    v64 = v66;
    v65 = v156;
    (*(v156 + 8))(v63, v45);
  }

  v67 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v67);
  LODWORD(v145) = (*(v68 + 88))(v67, v68);
  v69 = a1[3];
  v70 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v69);
  v71 = v69;
  v72 = v137;
  (*(v70 + 48))(v71, v70);
  LODWORD(v136) = v157(v72, 1, v45);
  if (v136 == 1)
  {
    sub_1DB30623C(v72, &qword_1ECC43838, &unk_1DB513310);
    v73 = 0;
  }

  else
  {
    sub_1DB509D90();
    v73 = v74;
    (*(v65 + 8))(v72, v45);
  }

  v75 = a1[3];
  v76 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v75);
  v77 = v75;
  v78 = v139;
  (*(v76 + 56))(v77, v76);
  LODWORD(v137) = v157(v78, 1, v45);
  if (v137 == 1)
  {
    sub_1DB30623C(v78, &qword_1ECC43838, &unk_1DB513310);
    v79 = 0;
  }

  else
  {
    sub_1DB509D90();
    v79 = v80;
    (*(v65 + 8))(v78, v45);
  }

  v81 = a1[3];
  v82 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v81);
  v83 = v81;
  v84 = v141;
  (*(v82 + 64))(v83, v82);
  LODWORD(v139) = v157(v84, 1, v45);
  if (v139 == 1)
  {
    sub_1DB30623C(v84, &qword_1ECC43838, &unk_1DB513310);
    v85 = 0;
  }

  else
  {
    sub_1DB509D90();
    v85 = v86;
    (*(v65 + 8))(v84, v45);
  }

  v87 = a1[3];
  v88 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v87);
  v89 = v87;
  v90 = v142;
  (*(v88 + 72))(v89, v88);
  v91 = v157(v90, 1, v45);
  if (v91 == 1)
  {
    sub_1DB30623C(v90, &qword_1ECC43838, &unk_1DB513310);
    v92 = 0;
  }

  else
  {
    sub_1DB509D90();
    v92 = v93;
    (*(v156 + 8))(v90, v45);
  }

  v94 = a1[3];
  v95 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v94);
  (*(v95 + 24))(v94, v95);
  v96 = v157(v59, 1, v45);
  if (v96 == 1)
  {
    sub_1DB30623C(v59, &qword_1ECC43838, &unk_1DB513310);
    v97 = 0;
  }

  else
  {
    sub_1DB509D90();
    v97 = v98;
    (*(v156 + 8))(v59, v45);
  }

  v142 = a11;
  v141 = a10;
  v99 = a1[3];
  v100 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v99);
  v101 = *(v100 + 80);
  v102 = v100;
  v103 = v146;
  v101(v99, v102);
  v104 = v157(v103, 1, v45);
  if (v104 == 1)
  {
    sub_1DB30623C(v103, &qword_1ECC43838, &unk_1DB513310);
    v105 = 0;
  }

  else
  {
    sub_1DB509D90();
    v105 = v106;
    (*(v156 + 8))(v103, v45);
  }

  LODWORD(v157) = v104 == 1;
  LODWORD(v156) = v96 == 1;
  LODWORD(v146) = v91 == 1;
  LODWORD(v139) = v139 == 1;
  LODWORD(v137) = v137 == 1;
  LODWORD(v136) = v136 == 1;
  v138 = v138 == 1;
  v135 = v140 == 1;
  v107 = a1[3];
  v108 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v107);
  LODWORD(v140) = (*(v108 + 96))(v107, v108);
  v109 = a1[3];
  v110 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v109);
  v134 = (*(v110 + 112))(v109, v110);
  v133 = v111;
  v112 = a1[3];
  v113 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v112);
  v114 = (*(v113 + 120))(v112, v113);
  v116 = v115;
  v117 = v149[3];
  v118 = v149[4];
  __swift_project_boxed_opaque_existential_1(v149, v117);
  v158 = (*(v118 + 32))(v117, v118);
  v119 = sub_1DB50B8F0();
  v121 = v120;
  v122 = a1[3];
  v123 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v122);
  v124 = (*(v123 + 104))(v122, v123);
  v125 = v153;
  *a9 = v150;
  *(a9 + 8) = v125;
  v126 = v147;
  *(a9 + 16) = v148;
  *(a9 + 24) = v126;
  *(a9 + 32) = v144;
  *(a9 + 40) = v143;
  *(a9 + 48) = v57;
  *(a9 + 56) = v135;
  *(a9 + 64) = v64;
  *(a9 + 72) = v138;
  *(a9 + 73) = v145;
  *(a9 + 80) = 0;
  *(a9 + 88) = 1;
  *(a9 + 96) = 0;
  *(a9 + 104) = 1;
  *(a9 + 112) = 0;
  *(a9 + 120) = 1;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 144) = v73;
  *(a9 + 152) = v136;
  *(a9 + 160) = v79;
  *(a9 + 168) = v137;
  *(a9 + 176) = v85;
  *(a9 + 184) = v139;
  *(a9 + 192) = v92;
  *(a9 + 200) = v146;
  *(a9 + 208) = v97;
  *(a9 + 216) = v156;
  *(a9 + 224) = v105;
  *(a9 + 232) = v157;
  *(a9 + 233) = v140;
  *(a9 + 240) = v134;
  *(a9 + 248) = v133 & 1;
  *(a9 + 256) = v114;
  *(a9 + 264) = v116 & 1;
  *(a9 + 272) = v119;
  *(a9 + 280) = v121;
  v127 = v152;
  v128 = v154;
  v129 = v155;
  *(a9 + 288) = v151;
  *(a9 + 296) = v128;
  *(a9 + 304) = v127;
  *(a9 + 312) = v129;
  *(a9 + 320) = v124;
  v130 = v142;
  *(a9 + 328) = v141;
  *(a9 + 336) = v130;
}

uint64_t JSNetworkPerformanceMetrics.clientCorrelationKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.clientCorrelationKey.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.pageURL.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.pageURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.requestStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.parseStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.parseEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.modelConstructionStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.modelConstructionEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 128) = result;
  *(v2 + 136) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.connectionStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.connectionEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.domainLookupStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.domainLookupEndTime.setter(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.fetchStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.secureConnectionStartTime.setter(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.requestMessageSize.setter(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.responseMessageSize.setter(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.statusCode.getter()
{
  v1 = *(v0 + 272);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.statusCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.edgeNodeCacheStatus.getter()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.edgeNodeCacheStatus.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.environmentDataCenter.getter()
{
  v1 = *(v0 + 304);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.environmentDataCenter.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 304) = a1;
  *(v2 + 312) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.appleTimingApp.getter()
{
  v1 = *(v0 + 328);

  return v1;
}

uint64_t JSNetworkPerformanceMetrics.appleTimingApp.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 328) = a1;
  *(v2 + 336) = a2;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.instrumentModelParsing<A>(_:)(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1DB509DD0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  sub_1DB509D90();
  v8 = v7;
  v9 = *(v4 + 8);
  v10 = v9(v6, v3);
  *(v1 + 80) = v8;
  *(v1 + 88) = 0;
  v11 = v15[1];
  result = a1(v10);
  if (!v11)
  {
    _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
    sub_1DB509D90();
    v14 = v13;
    result = v9(v6, v3);
    *(v1 + 96) = v14;
    *(v1 + 104) = 0;
  }

  return result;
}

void *JSNetworkPerformanceMetrics.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1DB3171C0(a1, v5);
  sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
  JSNetworkPerformanceMetrics.init(deserializing:using:)(v5, __src);
  sub_1DB3151CC(a1);
  return memcpy(a2, __src, 0x158uLL);
}

double JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  v30[0] = a6 & 1;
  v29[0] = a8 & 1;
  v28[0] = a11 & 1;
  v27[0] = a14 & 1;
  v26[0] = a16 & 1;
  v25[0] = 1;
  v24[0] = 1;
  v23[0] = 1;
  v22[0] = 1;
  v19[0] = 1;
  v18[0] = 1;
  v17[0] = 1;
  LOBYTE(v31) = 1;
  LOBYTE(v20) = 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v31;
  *(a9 + 78) = v32;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v30[3];
  *(a9 + 89) = *v30;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v29[3];
  *(a9 + 105) = *v29;
  *(a9 + 112) = 0;
  *(a9 + 120) = 1;
  *(a9 + 124) = *&v28[3];
  *(a9 + 121) = *v28;
  *(a9 + 128) = 0;
  *(a9 + 136) = 1;
  *(a9 + 140) = *&v27[3];
  *(a9 + 137) = *v27;
  *(a9 + 144) = 0;
  *(a9 + 152) = 1;
  *(a9 + 156) = *&v26[3];
  *(a9 + 153) = *v26;
  *(a9 + 160) = 0;
  *(a9 + 168) = 1;
  *(a9 + 172) = *&v25[3];
  *(a9 + 169) = *v25;
  *(a9 + 176) = 0;
  *(a9 + 184) = 1;
  *(a9 + 188) = *&v24[3];
  *(a9 + 185) = *v24;
  *(a9 + 192) = 0;
  *(a9 + 200) = 1;
  *(a9 + 204) = *&v23[3];
  *(a9 + 201) = *v23;
  *(a9 + 208) = 0;
  *(a9 + 216) = 1;
  *(a9 + 220) = *&v22[3];
  *(a9 + 217) = *v22;
  *(a9 + 224) = 0;
  *(a9 + 232) = 1;
  *(a9 + 233) = 2;
  *(a9 + 238) = v21;
  *(a9 + 234) = v20;
  *(a9 + 240) = 0;
  *(a9 + 248) = 1;
  *(a9 + 252) = *&v19[3];
  *(a9 + 249) = *v19;
  *(a9 + 256) = 0;
  *(a9 + 264) = 1;
  *(a9 + 268) = *&v18[3];
  *(a9 + 265) = *v18;
  result = 0.0;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 320) = 2;
  *(a9 + 324) = *&v17[3];
  *(a9 + 321) = *v17;
  *(a9 + 328) = 0;
  *(a9 + 336) = 0;
  return result;
}

double JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  v34[0] = a6 & 1;
  v33[0] = a8 & 1;
  v32[0] = a11 & 1;
  v31[0] = a14 & 1;
  v30[0] = a16 & 1;
  v29[0] = a18 & 1;
  v28[0] = a20 & 1;
  v27[0] = 1;
  v26[0] = 1;
  v23[0] = 1;
  v22[0] = 1;
  v21[0] = 1;
  LOBYTE(v35) = 1;
  LOBYTE(v24) = 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v35;
  *(a9 + 78) = v36;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v34[3];
  *(a9 + 89) = *v34;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v33[3];
  *(a9 + 105) = *v33;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 124) = *&v32[3];
  *(a9 + 121) = *v32;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 140) = *&v31[3];
  *(a9 + 137) = *v31;
  *(a9 + 144) = 0;
  *(a9 + 152) = 1;
  *(a9 + 156) = *&v30[3];
  *(a9 + 153) = *v30;
  *(a9 + 160) = 0;
  *(a9 + 168) = 1;
  *(a9 + 172) = *&v29[3];
  *(a9 + 169) = *v29;
  *(a9 + 176) = 0;
  *(a9 + 184) = 1;
  *(a9 + 188) = *&v28[3];
  *(a9 + 185) = *v28;
  *(a9 + 192) = 0;
  *(a9 + 200) = 1;
  *(a9 + 204) = *&v27[3];
  *(a9 + 201) = *v27;
  *(a9 + 208) = 0;
  *(a9 + 216) = 1;
  *(a9 + 220) = *&v26[3];
  *(a9 + 217) = *v26;
  *(a9 + 224) = 0;
  *(a9 + 232) = 1;
  *(a9 + 233) = 2;
  *(a9 + 238) = v25;
  *(a9 + 234) = v24;
  *(a9 + 240) = 0;
  *(a9 + 248) = 1;
  *(a9 + 252) = *&v23[3];
  *(a9 + 249) = *v23;
  *(a9 + 256) = 0;
  *(a9 + 264) = 1;
  *(a9 + 268) = *&v22[3];
  *(a9 + 265) = *v22;
  result = 0.0;
  *(a9 + 288) = 0u;
  *(a9 + 304) = 0u;
  *(a9 + 272) = 0u;
  *(a9 + 320) = 2;
  *(a9 + 324) = *&v21[3];
  *(a9 + 321) = *v21;
  *(a9 + 328) = 0;
  *(a9 + 336) = 0;
  return result;
}

__n128 JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:primaryDataConnectionStartTime:primaryDataConnectionEndTime:primaryDataDomainLookupStartTime:primaryDataDomainLookupEndTime:primaryDataFetchStartTime:primaryDataSecureConnectionStartTime:primaryDataConnectionReused:primaryDataRequestMessageSize:primaryDataResponseMessageSize:primaryDataStatusCode:primaryDataEdgeNodeCacheStatus:primaryDataEnvironmentDataCenter:isLowDataMode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, __int128 a38, __n128 a39, uint64_t a40, uint64_t a41, char a42)
{
  v55[0] = a8 & 1;
  v54[0] = a11 & 1;
  v53[0] = a14 & 1;
  v52[0] = a16 & 1;
  v51[0] = a18 & 1;
  v50[0] = a20 & 1;
  v49[0] = a22 & 1;
  v48[0] = a24 & 1;
  v45[0] = a26 & 1;
  v44[0] = a28 & 1;
  v43[0] = a30 & 1;
  LOBYTE(v57) = a32 & 1;
  LOBYTE(v46) = a35 & 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v56[0] = a6 & 1;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v57;
  *(a9 + 78) = v58;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v56[3];
  *(a9 + 89) = *v56;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v55[3];
  *(a9 + 105) = *v55;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 124) = *&v54[3];
  *(a9 + 121) = *v54;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 140) = *&v53[3];
  *(a9 + 137) = *v53;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22 & 1;
  *(a9 + 156) = *&v52[3];
  *(a9 + 153) = *v52;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24 & 1;
  *(a9 + 172) = *&v51[3];
  *(a9 + 169) = *v51;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 188) = *&v50[3];
  *(a9 + 185) = *v50;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 204) = *&v49[3];
  *(a9 + 201) = *v49;
  *(a9 + 208) = a29;
  *(a9 + 216) = a30 & 1;
  *(a9 + 220) = *&v48[3];
  *(a9 + 217) = *v48;
  *(a9 + 224) = a31;
  *(a9 + 232) = a32 & 1;
  *(a9 + 233) = a33;
  *(a9 + 238) = v47;
  *(a9 + 234) = v46;
  *(a9 + 240) = a34;
  *(a9 + 248) = a35 & 1;
  *(a9 + 252) = *&v45[3];
  *(a9 + 249) = *v45;
  *(a9 + 256) = a36;
  *(a9 + 264) = a37 & 1;
  *(a9 + 268) = *&v44[3];
  *(a9 + 265) = *v44;
  *(a9 + 324) = *&v43[3];
  *(a9 + 321) = *v43;
  *(a9 + 304) = a40;
  *(a9 + 312) = a41;
  *(a9 + 320) = a42;
  result = a39;
  *(a9 + 272) = a38;
  *(a9 + 288) = a39;
  *(a9 + 328) = 0;
  *(a9 + 336) = 0;
  return result;
}

__n128 JSNetworkPerformanceMetrics.init(clientCorrelationKey:pageURL:requestStartTime:responseStartTime:responseEndTime:responseWasCached:parseStartTime:parseEndTime:modelConstructionStartTime:modelConstructionEndTime:primaryDataConnectionStartTime:primaryDataConnectionEndTime:primaryDataDomainLookupStartTime:primaryDataDomainLookupEndTime:primaryDataFetchStartTime:primaryDataSecureConnectionStartTime:primaryDataConnectionReused:primaryDataRequestMessageSize:primaryDataResponseMessageSize:primaryDataStatusCode:primaryDataEdgeNodeCacheStatus:primaryDataEnvironmentDataCenter:isLowDataMode:primaryDataAppleTimingApp:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32, char a33, uint64_t a34, char a35, uint64_t a36, char a37, __int128 a38, __n128 a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44)
{
  v57[0] = a8 & 1;
  v56[0] = a11 & 1;
  v55[0] = a14 & 1;
  v54[0] = a16 & 1;
  v53[0] = a18 & 1;
  v52[0] = a20 & 1;
  v51[0] = a22 & 1;
  v50[0] = a24 & 1;
  v47[0] = a26 & 1;
  v46[0] = a28 & 1;
  v45[0] = a30 & 1;
  LOBYTE(v59) = a32 & 1;
  LOBYTE(v48) = a35 & 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  v58[0] = a6 & 1;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11 & 1;
  *(a9 + 73) = a12;
  *(a9 + 74) = v59;
  *(a9 + 78) = v60;
  *(a9 + 80) = a13;
  *(a9 + 88) = a14 & 1;
  *(a9 + 92) = *&v58[3];
  *(a9 + 89) = *v58;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16 & 1;
  *(a9 + 108) = *&v57[3];
  *(a9 + 105) = *v57;
  *(a9 + 112) = a17;
  *(a9 + 120) = a18 & 1;
  *(a9 + 124) = *&v56[3];
  *(a9 + 121) = *v56;
  *(a9 + 128) = a19;
  *(a9 + 136) = a20 & 1;
  *(a9 + 140) = *&v55[3];
  *(a9 + 137) = *v55;
  *(a9 + 144) = a21;
  *(a9 + 152) = a22 & 1;
  *(a9 + 156) = *&v54[3];
  *(a9 + 153) = *v54;
  *(a9 + 160) = a23;
  *(a9 + 168) = a24 & 1;
  *(a9 + 172) = *&v53[3];
  *(a9 + 169) = *v53;
  *(a9 + 176) = a25;
  *(a9 + 184) = a26 & 1;
  *(a9 + 188) = *&v52[3];
  *(a9 + 185) = *v52;
  *(a9 + 192) = a27;
  *(a9 + 200) = a28 & 1;
  *(a9 + 204) = *&v51[3];
  *(a9 + 201) = *v51;
  *(a9 + 208) = a29;
  *(a9 + 216) = a30 & 1;
  *(a9 + 220) = *&v50[3];
  *(a9 + 217) = *v50;
  *(a9 + 224) = a31;
  *(a9 + 232) = a32 & 1;
  *(a9 + 233) = a33;
  *(a9 + 238) = v49;
  *(a9 + 234) = v48;
  *(a9 + 240) = a34;
  *(a9 + 248) = a35 & 1;
  *(a9 + 252) = *&v47[3];
  *(a9 + 249) = *v47;
  *(a9 + 256) = a36;
  *(a9 + 264) = a37 & 1;
  *(a9 + 268) = *&v46[3];
  *(a9 + 265) = *v46;
  *(a9 + 304) = a40;
  *(a9 + 312) = a41;
  *(a9 + 320) = a42;
  *(a9 + 324) = *&v45[3];
  *(a9 + 321) = *v45;
  *(a9 + 328) = a43;
  *(a9 + 336) = a44;
  result = a39;
  *(a9 + 272) = a38;
  *(a9 + 288) = a39;
  return result;
}

uint64_t NSURLSessionTaskTransactionMetrics.urlString.getter()
{
  v1 = sub_1DB509860();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  *&v6 = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = &v14 - v7;
  v9 = [v0 request];
  sub_1DB509810();

  sub_1DB509830();
  (*(v2 + 8))(v4, v1);
  v10 = sub_1DB509CA0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1DB30623C(v8, &unk_1ECC42B20, &unk_1DB50F6A0);
    return 0;
  }

  else
  {
    v13 = sub_1DB509B80();
    (*(v11 + 8))(v8, v10);
    return v13;
  }
}

char *sub_1DB374EEC(SEL *a1, SEL *a2)
{
  v4 = [v2 *a1];
  v5 = [v2 *a2];
  v6 = __OFADD__(v4, v5);
  result = &v5[v4];
  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB374FD0@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [*v2 *a1];
  if (v4)
  {
    v5 = v4;
    sub_1DB509DB0();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1DB509DD0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

char *sub_1DB37510C(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = *v4;
  v7 = [v6 *a3];
  v8 = [v6 *a4];
  v9 = __OFADD__(v7, v8);
  result = &v8[v7];
  if (v9)
  {
    __break(1u);
  }

  return result;
}

uint64_t AMSURLResult.clientCorrelationKey.getter()
{
  v1 = [v0 responseCorrelationId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB50A650();

  return v3;
}

void *AMSURLResult.transactionMetrics.getter()
{
  v1 = [v0 taskMetrics];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 transactionMetrics];

    sub_1DB336FD4(0, &qword_1ECC43C90, 0x1E696AFA0);
    v4 = sub_1DB50A9A0();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1DB375274(v4);

  return v5;
}

void *sub_1DB375274(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DB50B5E0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1DB34134C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1E1286880](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1DB34134C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1DB336FD4(0, &qword_1ECC43C90, 0x1E696AFA0);
        v16 = &protocol witness table for NSURLSessionTaskTransactionMetrics;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1DB2FEA0C(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_1DB34134C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1DB336FD4(0, &qword_1ECC43C90, 0x1E696AFA0);
        v16 = &protocol witness table for NSURLSessionTaskTransactionMetrics;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_1DB2FEA0C(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB375454(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1DB3413AC(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v16 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);

      if (v9 >= v10 >> 1)
      {
        sub_1DB3413AC((v10 > 1), v9 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for MetricsEventLinterDeResolutionRule;
      v15 = &off_1F56FE3C0;
      v11 = swift_allocObject();
      *&v13 = v11;
      v11[2] = v6;
      v11[3] = v5;
      v11[4] = v7;
      v11[5] = v8;
      *(v2 + 16) = v9 + 1;
      sub_1DB2FEA0C(&v13, v2 + 40 * v9 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1DB375580()
{
  v1 = [*v0 responseCorrelationId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB50A650();

  return v3;
}

uint64_t sub_1DB3755E8()
{
  v1 = [*v0 responseHeaders];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DB50A4B0();

  return v3;
}

void *sub_1DB375668()
{
  v1 = [*v0 taskMetrics];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 transactionMetrics];

    sub_1DB336FD4(0, &qword_1ECC43C90, 0x1E696AFA0);
    v4 = sub_1DB50A9A0();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1DB375274(v4);

  return v5;
}

uint64_t _s7JetCore27JSNetworkPerformanceMetricsV7metrics10fromResultSayACGSo12AMSURLResultC_tFZ_0(void *a1)
{
  v2 = sub_1DB509E00();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1DB336FD4(0, &qword_1ECC43C98, 0x1E698CB98);
  v61 = &protocol witness table for AMSURLResult;
  v59[0] = a1;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v6 = a1;
  v7 = sub_1DB375580();
  if (v8)
  {
    v9 = v8;
    v53 = v7;
    goto LABEL_14;
  }

  v10 = v60;
  v11 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v12 = (v11[3])(v10, v11);
  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = v12;
  v54 = 0xD00000000000001ELL;
  v55 = 0x80000001DB52B760;
  sub_1DB50B2B0();
  if (!*(v13 + 16) || (v14 = sub_1DB30EDA8(v56), (v15 & 1) == 0))
  {

    sub_1DB314BE8(v56);
LABEL_10:
    v57 = 0u;
    v58 = 0u;
    goto LABEL_11;
  }

  sub_1DB300B14(*(v13 + 56) + 32 * v14, &v57);
  sub_1DB314BE8(v56);

  if (*(&v58 + 1))
  {
    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  sub_1DB30623C(&v57, &qword_1ECC426B0, &qword_1DB50EEB0);
LABEL_12:
  strcpy(v56, "no-load-url::");
  HIWORD(v56[1]) = -4864;
  sub_1DB509DF0();
  v16 = sub_1DB509DE0();
  v18 = v17;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x1E1285C70](v16, v18);

LABEL_13:
  v9 = v56[1];
  v53 = v56[0];
LABEL_14:
  v19 = v60;
  v20 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v21 = (v20[3])(v19, v20);
  if (!v21)
  {
LABEL_24:
    v57 = 0u;
    v58 = 0u;
    goto LABEL_25;
  }

  v22 = v21;
  *&v57 = 0x65686361632D78;
  *(&v57 + 1) = 0xE700000000000000;
  sub_1DB50B2B0();
  if (!*(v22 + 16) || (v23 = sub_1DB30EDA8(v56), (v24 & 1) == 0))
  {

    sub_1DB314BE8(v56);
    goto LABEL_24;
  }

  sub_1DB300B14(*(v22 + 56) + 32 * v23, &v57);
  sub_1DB314BE8(v56);

  if (!*(&v58 + 1))
  {
LABEL_25:
    sub_1DB30623C(&v57, &qword_1ECC426B0, &qword_1DB50EEB0);
    v52 = 0;
    v27 = 0;
    goto LABEL_26;
  }

  v25 = swift_dynamicCast();
  v26 = v56[0];
  if (!v25)
  {
    v26 = 0;
  }

  v52 = v26;
  if (v25)
  {
    v27 = v56[1];
  }

  else
  {
    v27 = 0;
  }

LABEL_26:
  v28 = v60;
  v29 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v30 = (v29[3])(v28, v29);
  if (!v30)
  {
LABEL_37:
    v57 = 0u;
    v58 = 0u;
    goto LABEL_38;
  }

  v31 = v30;
  *&v57 = 0xD000000000000018;
  *(&v57 + 1) = 0x80000001DB52B740;
  sub_1DB50B2B0();
  if (!*(v31 + 16) || (v32 = sub_1DB30EDA8(v56), (v33 & 1) == 0))
  {

    sub_1DB314BE8(v56);
    goto LABEL_37;
  }

  sub_1DB300B14(*(v31 + 56) + 32 * v32, &v57);
  sub_1DB314BE8(v56);

  if (!*(&v58 + 1))
  {
LABEL_38:
    sub_1DB30623C(&v57, &qword_1ECC426B0, &qword_1DB50EEB0);
    v35 = 0;
    v36 = 0;
    goto LABEL_39;
  }

  v34 = swift_dynamicCast();
  if (v34)
  {
    v35 = v56[0];
  }

  else
  {
    v35 = 0;
  }

  if (v34)
  {
    v36 = v56[1];
  }

  else
  {
    v36 = 0;
  }

LABEL_39:
  v37 = v60;
  v38 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v39 = (v38[3])(v37, v38);
  if (!v39)
  {
LABEL_50:
    v57 = 0u;
    v58 = 0u;
    goto LABEL_51;
  }

  v40 = v39;
  *&v57 = 0xD000000000000010;
  *(&v57 + 1) = 0x80000001DB52B720;
  sub_1DB50B2B0();
  if (!*(v40 + 16) || (v41 = sub_1DB30EDA8(v56), (v42 & 1) == 0))
  {

    sub_1DB314BE8(v56);
    goto LABEL_50;
  }

  sub_1DB300B14(*(v40 + 56) + 32 * v41, &v57);
  sub_1DB314BE8(v56);

  if (!*(&v58 + 1))
  {
LABEL_51:
    sub_1DB30623C(&v57, &qword_1ECC426B0, &qword_1DB50EEB0);
    v44 = 0;
    v45 = 0;
    goto LABEL_52;
  }

  v43 = swift_dynamicCast();
  if (v43)
  {
    v44 = v56[0];
  }

  else
  {
    v44 = 0;
  }

  if (v43)
  {
    v45 = v56[1];
  }

  else
  {
    v45 = 0;
  }

LABEL_52:
  v46 = v60;
  v47 = v61;
  __swift_project_boxed_opaque_existential_1(v59, v60);
  v48 = (v47[5])(v46, v47);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v52;
  *(&v52 - 10) = v53;
  *(&v52 - 9) = v9;
  *(&v52 - 8) = v59;
  *(&v52 - 7) = v49;
  *(&v52 - 6) = v27;
  *(&v52 - 5) = v35;
  *(&v52 - 4) = v36;
  *(&v52 - 3) = v44;
  *(&v52 - 2) = v45;
  v50 = sub_1DB3708CC(sub_1DB3760B4, (&v52 - 12), v48);

  __swift_destroy_boxed_opaque_existential_0(v59);
  return v50;
}

uint64_t sub_1DB375DCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 344))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DB375E28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 344) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 344) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DB376108()
{
  result = qword_1ECC43CA0;
  if (!qword_1ECC43CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43CA0);
  }

  return result;
}

uint64_t sub_1DB37617C()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3761C4(uint64_t a1)
{
  v2 = *v1;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v2);
  return sub_1DB50BD30();
}

unint64_t sub_1DB37620C()
{
  result = qword_1ECC43CA8;
  if (!qword_1ECC43CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC43CA8);
  }

  return result;
}

uint64_t sub_1DB376278(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43CC0, &qword_1DB513518);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1DB30C200(&v46, v51);
    __swift_destroy_boxed_opaque_existential_0(&v48);
    sub_1DB300B14(v51, &v48);
    v8 = MEMORY[0x1E69E6370];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v51);
      return v46;
    }

    if (qword_1ECC42278 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECC46730;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50F8D0;
    v45 = sub_1DB301BC0(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;

    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DB301BC0(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1DB301DBC(&v46);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;

    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1DB301DBC(&v46);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001DB52B780;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43CC8, &unk_1DB513520);
    *&v46 = v8;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;
    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1DB301DBC(&v46);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1DB50AF40();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v37 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1DB314CB0;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v40 = sub_1DB50A5E0();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1DB50EE90;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1DB31494C();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v11, v36, v43);
    }

    v10 = v51;
  }

  else
  {
    sub_1DB301DBC(&v46);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_0(v10);
  return 2;
}

uint64_t sub_1DB3768AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43CB0, &qword_1DB513500);
  *(&v49 + 1) = v7;
  v50 = &protocol witness table for PreferenceKey<A>;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  LocalPreferences.subscript.getter(&v48, &v46);
  if (v47)
  {
    sub_1DB30C200(&v46, v51);
    __swift_destroy_boxed_opaque_existential_0(&v48);
    sub_1DB300B14(v51, &v48);
    v8 = MEMORY[0x1E69E63B0];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(v51);
      return v46;
    }

    if (qword_1ECC42278 != -1)
    {
      swift_once();
    }

    v11 = qword_1ECC46730;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1DB50F8D0;
    v45 = sub_1DB301BC0(0, 16, 0, MEMORY[0x1E69E7CC0]);
    v13._countAndFlagsBits = 0x6F662065756C6156;
    v13._object = 0xEA00000000002072;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v47 = v7;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;

    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v14 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1DB301BC0(0, *(v14 + 2) + 1, 1, v14);
      v45 = v14;
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1DB301BC0((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[40 * v16];
    v18 = v48;
    v19 = v49;
    v17[64] = v50;
    *(v17 + 2) = v18;
    *(v17 + 3) = v19;
    v45 = v14;
    sub_1DB301DBC(&v46);
    v20._countAndFlagsBits = 544106784;
    v20._object = 0xE400000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v20);
    v47 = v6;
    *&v46 = v3;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;

    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v21 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1DB301BC0(0, *(v21 + 2) + 1, 1, v21);
      v45 = v21;
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_1DB301BC0((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[40 * v23];
    v25 = v48;
    v26 = v49;
    v24[64] = v50;
    *(v24 + 2) = v25;
    *(v24 + 3) = v26;
    v45 = v21;
    sub_1DB301DBC(&v46);
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v27);
    *(v12 + 32) = v45;
    v45 = sub_1DB301BC0(0, 22, 0, MEMORY[0x1E69E7CC0]);
    v28._object = 0x80000001DB52B780;
    v28._countAndFlagsBits = 0xD000000000000015;
    LogMessage.StringInterpolation.appendLiteral(_:)(v28);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43CB8, &unk_1DB513508);
    *&v46 = v8;
    sub_1DB301CDC(&v46, v44);
    v48 = 0u;
    v49 = 0u;
    sub_1DB301D4C(v44, &v48);
    LOBYTE(v50) = 0;
    v29 = v45;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_1DB301BC0(0, *(v29 + 2) + 1, 1, v29);
    }

    v31 = *(v29 + 2);
    v30 = *(v29 + 3);
    if (v31 >= v30 >> 1)
    {
      v29 = sub_1DB301BC0((v30 > 1), v31 + 1, 1, v29);
    }

    *(v29 + 2) = v31 + 1;
    v32 = &v29[40 * v31];
    v33 = v48;
    v34 = v49;
    v32[64] = v50;
    *(v32 + 2) = v33;
    *(v32 + 3) = v34;
    v45 = v29;
    sub_1DB301DBC(&v46);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v35);
    *(v12 + 40) = v45;
    v36 = sub_1DB50AF40();
    if (os_log_type_enabled(v11, v36))
    {
      if (qword_1EE30EDD8 != -1)
      {
        swift_once();
      }

      v37 = off_1EE30EDE0;
      os_unfair_lock_lock(off_1EE30EDE0 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v37[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v37 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v39 = swift_allocObject();
      *(v39 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v48 = v12;
      *(&v48 + 1) = sub_1DB31485C;
      *&v49 = v39;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D00, &unk_1DB511AC0);
      sub_1DB314864();
      v40 = sub_1DB50A5E0();
      v42 = v41;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42D08, &qword_1DB511AD0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1DB50EE90;
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = sub_1DB31494C();
      *(v43 + 32) = v40;
      *(v43 + 40) = v42;
      sub_1DB50A1E0("%{public}@", 10, 2, &dword_1DB2F5000, v11, v36, v43);
    }

    v10 = v51;
  }

  else
  {
    sub_1DB301DBC(&v46);
    v10 = &v48;
  }

  __swift_destroy_boxed_opaque_existential_0(v10);
  return 0;
}

uint64_t sub_1DB376EE8()
{
  if (qword_1EE30D148 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30D150;
  v0 = unk_1EE30D158;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50F8D0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  *(v2 + 48) = 0xD00000000000001ALL;
  *(v2 + 56) = 0x80000001DB52B7A0;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v3 = sub_1DB50A5E0();
  v5 = v4;

  qword_1EE30CA90 = v3;
  *algn_1EE30CA98 = v5;
}

uint64_t sub_1DB37701C()
{
  if (qword_1EE30CA88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE30CA90;
  v0 = *algn_1EE30CA98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42748, &qword_1DB50F1C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DB50F8D0;
  *(v2 + 32) = v1;
  *(v2 + 40) = v0;
  strcpy((v2 + 48), "isAllowedStub");
  *(v2 + 62) = -4864;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43168, &qword_1DB513530);
  sub_1DB33701C();
  v3 = sub_1DB50A5E0();
  v5 = v4;

  qword_1EE30CA78 = v3;
  unk_1EE30CA80 = v5;
  return result;
}

uint64_t static MetricsDiagnosticsAndUsage.diagnosticsSubmissionAllowed.getter()
{
  if (qword_1EE30EDD8 != -1)
  {
    swift_once();
  }

  v0 = off_1EE30EDE0;
  os_unfair_lock_lock(off_1EE30EDE0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v0[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v0 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_12:
    v2 = [objc_opt_self() diagnosticsSubmissionAllowed];
    return v2 & 1;
  }

  if (qword_1EE30E8D0 != -1)
  {
    swift_once();
  }

  if (qword_1EE30CA70 != -1)
  {
    swift_once();
  }

  v2 = sub_1DB376278(qword_1EE30CA78, unk_1EE30CA80);
  if (v2 == 2)
  {
    goto LABEL_12;
  }

  return v2 & 1;
}

uint64_t getEnumTagSinglePayload for MetricsDiagnosticsAndUsage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t JetPackDataStreamSource.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for JetPackDataStreamSource(0) + 24);
  v7 = sub_1DB509CA0();
  result = (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *a3 = a1;
  *(a3 + 1) = a2;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  return result;
}

uint64_t type metadata accessor for JetPackDataStreamSource(uint64_t a1)
{
  result = qword_1EE30DF10;
  if (!qword_1EE30DF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JetPackDataStreamSource.init(data:dataSourceURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for JetPackDataStreamSource(0);
  a4[2] = 0;
  a4[3] = 0;
  v7 = a4 + *(v6 + 24);

  return sub_1DB34BBCC(a3, v7);
}

uint64_t JetPackDataStreamSource.makeStream()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB838]);
  v1 = sub_1DB509CD0();
  v2 = [v0 initWithData_];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43CD0, &unk_1DB51FDD0);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v2;
  *(v3 + 32) = 1;
  return v3;
}

uint64_t sub_1DB377500()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB838]);
  v1 = sub_1DB509CD0();
  v2 = [v0 initWithData_];

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43CD0, &unk_1DB51FDD0);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v2;
  *(v3 + 32) = 1;
  return v3;
}

uint64_t sub_1DB3775BC(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1EE30E1A8 != -1)
    {
      result = swift_once();
    }

    v6 = v3;
    v7 = v2;
    v4 = *(qword_1EE312DD8 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1DB37795C(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

uint64_t sub_1DB37768C(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1EE30E1A8 != -1)
    {
      result = swift_once();
    }

    v5[2] = v3;
    v5[3] = v2;
    v4 = *(qword_1EE312DD8 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1DB377940(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

void sub_1DB377794(uint64_t a1)
{
  sub_1DB377828();
  if (v1 <= 0x3F)
  {
    sub_1DB377878(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DB377828()
{
  if (!qword_1EE30C860)
  {
    v0 = sub_1DB50B120();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE30C860);
    }
  }
}

void sub_1DB377878(uint64_t a1)
{
  if (!qword_1EE30E280)
  {
    sub_1DB509CA0();
    v1 = sub_1DB50B120();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE30E280);
    }
  }
}

uint64_t sub_1DB3778D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OpenIntentModel.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  *a3 = MEMORY[0x1E69E7CC8];
  v8 = type metadata accessor for OpenIntentModel(0, a2, a4, a5);
  v9 = *(*(a2 - 8) + 32);
  v10 = a3 + *(v8 + 36);

  return v9(v10, a1, a2);
}

uint64_t OpenIntentModel.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v2 + *(v8 + 36), v3, v5);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v7, v3);
}

uint64_t OpenIntentModel<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v17 = *(a2 - 8);
  v18 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v13;
  v12 = v21;

  sub_1DB30F708(0xD000000000000027, 0x80000001DB529830, v19);
  sub_1DB301DBC(v19);
  sub_1DB3171C0(a1, v19);
  ScalarDictionary.init(tryDeserializing:using:)(v19, &v21, &v20);
  *a5 = v20;
  sub_1DB3171C0(a1, v19);
  v20 = v12;
  (*(a3 + 8))(v19, &v20, a2, a3);
  sub_1DB3151CC(a1);
  if (v5)
  {
  }

  v16 = type metadata accessor for OpenIntentModel(0, a2, v18, v14);
  return (*(v17 + 32))(&a5[*(v16 + 36)], v11, a2);
}

uint64_t OpenIntentModel<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v27 = a3;
  v25 = a4;
  v24 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OpenIntentModel(0, v8, v9, v10);
  v23 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1DB50BDE0();
  JSONContext.init(userInfo:)(v14);
  sub_1DB30F708(0xD000000000000027, 0x80000001DB529830, v30);
  sub_1DB301DBC(v30);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v31);
  Decoder.withUserInfo(_:)(v17, v15, v16, v30);

  sub_1DB30BE90(v30, v29);
  sub_1DB30BE90(v29, v28);
  v18 = sub_1DB3407C4(v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  *v13 = v18;
  sub_1DB30BE90(v30, v29);
  v19 = v26;
  sub_1DB50ADB0();
  __swift_destroy_boxed_opaque_existential_0(v30);
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    (*(v24 + 32))(&v13[*(v11 + 36)], v7, a2);
    v21 = v23;
    (*(v23 + 16))(v25, v13, v11);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return (*(v21 + 8))(v13, v11);
  }
}

uint64_t OpenIntentModel<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1DB50A5B0();
  if (!v5)
  {
    v8 = *v4;

    sub_1DB340EF4(a1, v8);
  }

  return result;
}

uint64_t _OpaqueIntentModelBody.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  sub_1DB3171C0(a1, v20);
  ScalarDictionary.init(deserializing:using:)(v20, &v21);
  if (!v5)
  {
    v10 = v21;
    if (*(v21 + 16))
    {
      v11 = sub_1DB306160(0x646E696B24, 0xE500000000000000);
      if (v12)
      {
        v13 = *(v10 + 56) + 24 * v11;
        if (*(v13 + 16) == 3)
        {
          v15 = *v13;
          v14 = *(v13 + 8);

          sub_1DB3151CC(a1);

          *a5 = v15;
          a5[1] = v14;
          return result;
        }
      }
    }

    v18 = type metadata accessor for _OpaqueIntentModelBody(0, a3, a4, v17) | 0x2000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v19 = xmmword_1DB50F500;
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    swift_willThrow();
  }

  return sub_1DB3151CC(a1);
}

uint64_t _OpaqueIntentModelBody.kind.getter()
{
  v0 = sub_1DB35F5B4();

  return v0;
}

uint64_t sub_1DB378234(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DB50BA30();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DB3782AC()
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](0);
  return sub_1DB50BD30();
}

uint64_t sub_1DB3782F0(uint64_t a1)
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](0);
  return sub_1DB50BD30();
}

uint64_t sub_1DB378340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB378234(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1DB378374@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DB34AABC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DB3783A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1DB3783F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t _OpaqueIntentModelBody<>.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1DB50BDE0();
  JSONContext.init(userInfo:)(v4);
  sub_1DB30F708(0xD000000000000027, 0x80000001DB529830, &v20);
  sub_1DB301DBC(&v20);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = _sSD7JetCores17CodingUserInfoKeyVRszypRs_rlE11jsonContextSDyACypGAA11JSONContextV_tcfC_0(&v22);
  Decoder.withUserInfo(_:)(v7, v5, v6, &v20);

  sub_1DB30BE90(&v20, v19);
  sub_1DB30BE90(v19, v18);
  v8 = sub_1DB3407C4(v18);
  __swift_destroy_boxed_opaque_existential_0(v19);
  if (v8[2] && (v9 = sub_1DB306160(0x646E696B24, 0xE500000000000000), (v10 & 1) != 0) && (v11 = v8[7] + 24 * v9, *(v11 + 16) == 3))
  {
    v13 = *v11;
    v12 = *(v11 + 8);

    __swift_destroy_boxed_opaque_existential_0(&v20);
    *a2 = v13;
    a2[1] = v12;
  }

  else
  {

    v14 = sub_1DB50B3E0();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC434F0, &qword_1DB515DD0);
    *(v16 + 24) = &type metadata for OpenCodingKey;
    *(v16 + 32) = sub_1DB3053A8();
    *v16 = xmmword_1DB50F500;
    *(v16 + 16) = 1;
    __swift_project_boxed_opaque_existential_1(&v20, v21);
    sub_1DB50BDB0();
    sub_1DB50B3C0();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF0], v14);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(&v20);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t _OpaqueIntentModelBody<>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _OpaqueIntentModelBody.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = sub_1DB50B8C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  v11[1] = *v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50BE40();
  sub_1DB50B860();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DB378898(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DB378918(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1DB378A9C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1DB378CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DB378D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DB378DAC, 0, 0);
}

uint64_t sub_1DB378DAC()
{
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1DB378FD0();
  MetricsFieldsBuilder.subscript.getter(0x707954746E657665, 0xE900000000000065, v2, &type metadata for MetricsEventType, v3, (v0 + 2));
  if (v0[3])
  {
    if (*(v0[7] + 16))
    {
      v4 = sub_1DB314CBC();
      v6 = v5;

      if (v6)
      {
        v7 = v0[6];
        v8 = *(*(v0[7] + 56) + 8 * v4);
        v0[5] = MEMORY[0x1E69E6530];
        v0[2] = v8;
        v10 = v1[3];
        v9 = v1[4];
        __swift_mutable_project_boxed_opaque_existential_1(v7, v10);
        (*(v9 + 16))(v0 + 2, 0x726556746E657665, 0xEC0000006E6F6973, v10, v9);
        __swift_destroy_boxed_opaque_existential_0(v0 + 2);
      }
    }

    else
    {
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DB378F34(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return sub_1DB378D8C(a1, v6, v4);
}

unint64_t sub_1DB378FD0()
{
  result = qword_1ECC43E58[0];
  if (!qword_1ECC43E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECC43E58);
  }

  return result;
}

unint64_t CompoundActionImplementation.PerformError.localizedDescription.getter(uint64_t a1)
{
  (*(*(a1 - 8) + 16))(&v5, v1, a1);
  if (!v6)
  {
    return 0xD00000000000003ALL;
  }

  sub_1DB2FEA0C(&v5, v4);
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B7C0);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0xD000000000000019, 0x80000001DB52B7E0);
  v2 = 0;
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2;
}

void sub_1DB379150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  os_unfair_lock_lock((a1 + 32));
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  v18 = *(v16 + 16);
  if (v17 == v18)
  {
    v26[0] = 0;
    v24 = 0u;
    v25 = 0u;
  }

  else
  {
    if (v17 >= v18)
    {
      __break(1u);
      return;
    }

    sub_1DB30BE90(v16 + 40 * v17 + 32, &v24);
    *(a1 + 24) = v17 + 1;
  }

  os_unfair_lock_unlock((a1 + 32));
  if (*(&v25 + 1))
  {
    sub_1DB2FEA0C(&v24, v29);
    *&v24 = a3;
    *(&v24 + 1) = a4;
    *&v25 = a5;
    *&v28[0] = 0;
    v21 = type metadata accessor for ActionDispatcher(0, a8, v19, v20);
    ActionDispatcher.perform(_:withMetrics:asPartOf:)(v29, v28, a6, v21);
    sub_1DB30BE90(a7, &v24);
    sub_1DB30BE90(v29, v28);
    v22 = swift_allocObject();
    v22[2] = a8;
    v22[3] = a1;
    v22[4] = a2;
    v22[5] = a3;
    v22[6] = a4;
    v22[7] = a5;
    v22[8] = a6;
    sub_1DB2FEA0C(&v24, (v22 + 9));
    sub_1DB2FEA0C(v28, (v22 + 14));
    *&v24 = sub_1DB37993C;
    *(&v24 + 1) = v22;
    *&v25 = sub_1DB379978;
    *(&v25 + 1) = a2;
    sub_1DB30BE90(a7, v26);
    v27 = 0;
    v23 = a5;

    swift_retain_n();

    sub_1DB308EE8(&v24);

    sub_1DB30623C(&v24, &unk_1ECC44FD0, &qword_1DB50F1D0);
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    sub_1DB30623C(&v24, &qword_1ECC42F50, &unk_1DB513AE0);
    sub_1DB3F8B6C(0);
  }
}

void sub_1DB379384(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*a1)
  {
    type metadata accessor for CompoundActionImplementation.PerformError(0, a10, a3, a4);
    swift_getWitnessTable();
    v10 = swift_allocError();
    sub_1DB30BE90(a9, v11);
    sub_1DB3DD13C(v10);
  }

  else
  {

    sub_1DB379150(a2, a3, a4, a5, a6, a7, a8, a10);
  }
}

uint64_t sub_1DB37946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for ActionDispatcher(0, a3, a3, a4);
  BaseObjectGraph._injectIfAvailable<A>(_:)(v7, v7);
  v10 = v31[0];
  if (v31[0])
  {
    v12 = v31[1];
    v11 = v32;
    if (v32)
    {
      v29 = sub_1DB357BD4();
      v30 = &protocol witness table for OS_dispatch_queue;
      *&v28 = v32;
      sub_1DB2FEA0C(&v28, v31);
      v13 = v33;
      v14 = v34;
      v27 = v11;
    }

    else
    {
      v27 = 0;
      v13 = &type metadata for SyncTaskScheduler;
      v14 = &protocol witness table for SyncTaskScheduler;
      v33 = &type metadata for SyncTaskScheduler;
      v34 = &protocol witness table for SyncTaskScheduler;
    }

    v26 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
    v17 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = MEMORY[0x1E69E7CC0];
    *(v17 + 16) = v19;
    *(v17 + 24) = v20;
    *(v17 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC43F68, &qword_1DB513AD8);
    v21 = swift_allocObject();
    *(v21 + 32) = 0;
    *(v21 + 16) = v6;
    *(v21 + 24) = 0;
    __swift_project_boxed_opaque_existential_1(v31, v13);
    sub_1DB30BE90(v31, &v28);
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = v21;
    v22[4] = v17;
    v22[5] = v10;
    v22[6] = v12;
    v22[7] = v11;
    v22[8] = a2;
    sub_1DB2FEA0C(&v28, (v22 + 9));
    v25 = v14[1];
    v23 = v27;

    sub_1DB30C9C0(v10, v12, v11);

    v25(sub_1DB3798D0, v22, v26, v14);

    sub_1DB3798E8(v10, v12, v11);

    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    type metadata accessor for CompoundActionImplementation.PerformError(0, a3, v8, v9);
    swift_getWitnessTable();
    v15 = swift_allocError();
    *v16 = 0u;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43F60, &unk_1DB514C40);
    v17 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v17 + 16) = v18;
    *(v17 + 24) = v15;
    *(v17 + 32) = 2;
  }

  return v17;
}

uint64_t sub_1DB37978C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7JetCore28CompoundActionImplementationV12PerformErrorOyx_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB3797E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB379830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1DB37988C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1DB3798E8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

void sub_1DB37997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  MEMORY[0x1E1285C70](a5, a6);
  MEMORY[0x1E1285C70](a3, a4);
}

uint64_t LowMemoryMetricsEventLinter.Error.hashValue.getter()
{
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](0);
  return sub_1DB50BD30();
}

uint64_t sub_1DB379A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1DB379B0C(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_1DB379B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v8 = *a4;
  v5[2] = a1;
  v5[3] = a2;
  v5[5] = v8;
  sub_1DB30C4B8(a5, v14, &qword_1ECC44088, &qword_1DB513CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44090, &qword_1DB513CB0);
  v9 = swift_allocObject();
  *(v9 + 56) = 0;
  sub_1DB30C4B8(v14, v12, &qword_1ECC44088, &qword_1DB513CA8);
  sub_1DB30623C(a5, &qword_1ECC44088, &qword_1DB513CA8);
  sub_1DB30623C(v14, &qword_1ECC44088, &qword_1DB513CA8);
  v10 = v12[1];
  *(v9 + 16) = v12[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v13;
  v5[4] = v9;
  v5[6] = a3;
  return v5;
}

uint64_t LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:configuration:rules:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = 0;
  sub_1DB30BE90(a3, v10);
  v8 = swift_allocObject();
  sub_1DB379B0C(a1, a2, a4, &v11, v10);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return v8;
}

uint64_t LowMemoryMetricsEventLinter.__allocating_init(defaultTopic:bag:rules:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *a3;
  v11 = 0;
  v12 = v7;
  memset(v10, 0, sizeof(v10));
  v8 = swift_allocObject();
  sub_1DB379B0C(a1, a2, a4, &v12, v10);
  return v8;
}

char *sub_1DB379CF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44070, qword_1DB51D040);
  inited = swift_initStackObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(inited + 16) = v3;
  *(inited + 24) = 0;
  *(inited + 32) = 1;
  if (qword_1ECC42078 != -1)
  {
    swift_once();
  }

  v4 = qword_1ECC67930;
  v10[3] = sub_1DB357BD4();
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = v4;
  v5 = v4;

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44078, &qword_1DB513CA0);
  v7 = sub_1DB3370CC(&qword_1ECC44080, &qword_1ECC44078, &qword_1DB513CA0, &protocol conformance descriptor for Promise<A>);
  v8 = Promise.flatMap<A>(on:_:)(v10, sub_1DB37B3B4, v1, v6, v7);
  swift_setDeallocating();

  sub_1DB30C3C4(*(inited + 24), *(inited + 32));

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

char *sub_1DB379E7C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[4];

  os_unfair_lock_lock(v3 + 14);
  sub_1DB30C4B8(&v3[4], &v13, &qword_1ECC44088, &qword_1DB513CA8);
  os_unfair_lock_unlock(v3 + 14);

  if (*&v14[8])
  {
    sub_1DB30C7A8(&v13, v16);
    sub_1DB30BE90(v16, v15);
    sub_1DB30BE90(v15, &v13);
    v14[24] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44078, &qword_1DB513CA0);
    v4 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
    v5 = swift_allocObject();
    *(v5 + 16) = 0;
    *(v4 + 16) = v5;
    v6 = *v14;
    *(v4 + 24) = v13;
    *(v4 + 40) = v6;
    *(v4 + 49) = *&v14[9];
    __swift_destroy_boxed_opaque_existential_0(v15);
    __swift_destroy_boxed_opaque_existential_0(v16);
    return v4;
  }

  else
  {
    sub_1DB30623C(&v13, &qword_1ECC44088, &qword_1DB513CA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44078, &qword_1DB513CA0);
    type metadata accessor for LowMemoryMetricsEventLinter.Error(0, *(v2 + 80), *(v2 + 88), v8);
    swift_getWitnessTable();
    v9 = swift_allocError();
    return Promise.__allocating_init(error:)(v9, v10, v11, v12);
  }
}

uint64_t LowMemoryMetricsEventLinter.processEvent(_:)(uint64_t a1)
{
  sub_1DB379CF4();
  if (qword_1ECC42078 != -1)
  {
    swift_once();
  }

  v3 = qword_1ECC67930;
  v16[3] = sub_1DB357BD4();
  v16[4] = &protocol witness table for OS_dispatch_queue;
  v16[0] = v3;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v4;
  v7[4] = v5;
  v7[5] = v1;
  v7[6] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43120, &qword_1DB513AF0);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42B10, &qword_1DB50F660);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v11 = swift_allocObject();
  v11[2] = sub_1DB37AAB0;
  v11[3] = v7;
  v11[4] = v8;
  v14[0] = sub_1DB37AB80;
  v14[1] = v11;
  v14[2] = sub_1DB3371F8;
  v14[3] = v8;
  sub_1DB30BE90(v16, v15);
  v15[40] = 0;
  swift_retain_n();
  v12 = v3;

  sub_1DB308644(v14);

  sub_1DB30623C(v14, &qword_1ECC42950, &unk_1DB50F730);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v8;
}

uint64_t sub_1DB37A24C@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v10 = *(*a5 + 88);
  v11 = *(v10 + 8);
  v61 = *(*a5 + 80);
  v9 = v61;
  v62 = v10;
  __swift_allocate_boxed_opaque_existential_0(v60);

  v11(v12, v9, v10);
  v13 = v61;
  v14 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v15 = MetricsFieldsBuilder.subscript.getter(0x6369706F74, 0xE500000000000000, v13, v14);
  if (v16)
  {
    a3 = v15;
    v54 = v16;
  }

  else
  {
    v54 = a4;
  }

  v53 = a3;
  v17 = v61;
  v18 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  sub_1DB378FD0();
  MetricsFieldsBuilder.subscript.getter(0x707954746E657665, 0xE900000000000065, v17, &type metadata for MetricsEventType, v18, &v55);
  v20 = *(&v55 + 1);
  v19 = v55;
  if (qword_1ECC42228 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v21 = qword_1ECC466F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1DB50EE90;
    v63 = sub_1DB301BC0(0, 27, 0, MEMORY[0x1E69E7CC0]);
    v23._object = 0x80000001DB52B8B0;
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v23);
    if (v20)
    {
      v24 = &type metadata for MetricsEventType;
      v25 = v20;
      v26 = v19;
    }

    else
    {
      v25 = 0;
      v26 = 0;
      v24 = 0;
      v59[2] = 0;
    }

    v59[0] = v26;
    v59[1] = v25;
    v59[3] = v24;
    sub_1DB30C4B8(v59, v58, &qword_1ECC426B0, &qword_1DB50EEB0);
    v55 = 0u;
    v56 = 0u;

    sub_1DB301D4C(v58, &v55);
    LOBYTE(v57) = 0;
    v27 = v63;
    v50 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1DB301BC0(0, *(v27 + 2) + 1, 1, v27);
    }

    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_1DB301BC0((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[40 * v29];
    v31 = v55;
    v32 = v56;
    v30[64] = v57;
    *(v30 + 2) = v31;
    *(v30 + 3) = v32;
    v63 = v27;
    sub_1DB30623C(v59, &qword_1ECC426B0, &qword_1DB50EEB0);
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v33);
    *(v22 + 32) = v63;
    *&v55 = v21;
    LOBYTE(v59[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v22, v59);

    sub_1DB37AC74(v60, v53, v54, a1);
    v19 = v51;
    if (v51)
    {

      return __swift_destroy_boxed_opaque_existential_0(v60);
    }

    if (v20)
    {
      if (v50 == 0x616964656DLL && v20 == 0xE500000000000000 || (sub_1DB50BA30() & 1) != 0)
      {
        sub_1DB37B27C(v60);
      }
    }

    v35 = *(a6 + 16);
    if (v35)
    {
      v36 = a6 + 32;
      do
      {
        sub_1DB30BE90(v36, &v55);
        v37 = *(&v56 + 1);
        v38 = v57;
        __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
        (*(v38 + 8))(v60, v37, v38);
        __swift_destroy_boxed_opaque_existential_0(&v55);
        v36 += 40;
        --v35;
      }

      while (v35);
    }

    v39 = a1[3];
    v40 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v39);
    v20 = (*(v40 + 32))(v53, v54, v39, v40);

    v41 = *(v20 + 16);
    if (!v41)
    {
      break;
    }

    v42 = 0;
    v43 = v20 + 32;
    while (v42 < *(v20 + 16))
    {
      sub_1DB30BE90(v43, &v55);
      v44 = *(&v56 + 1);
      v45 = v57;
      __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      (*(v45 + 8))(v60, v44, v45);
      ++v42;
      __swift_destroy_boxed_opaque_existential_0(&v55);
      v43 += 40;
      if (v41 == v42)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

LABEL_28:

  v46 = v61;
  v47 = v62;
  __swift_project_boxed_opaque_existential_1(v60, v61);
  *a7 = (*(v47 + 24))(v46, v47);
  a7[1] = MEMORY[0x1E69E7CC0];
  return __swift_destroy_boxed_opaque_existential_0(v60);
}

void *LowMemoryMetricsEventLinter.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t LowMemoryMetricsEventLinter.__deallocating_deinit()
{
  LowMemoryMetricsEventLinter.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1DB37A87C()
{
  v0 = sub_1DB50AF80();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1DB50A440();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1DB50AFA0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB357BD4();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1DB37B35C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC44F80, &qword_1DB512400);
  sub_1DB3370CC(&qword_1EE30C838, &unk_1ECC44F80, &qword_1DB512400, MEMORY[0x1E69E6328]);
  sub_1DB50B240();
  result = sub_1DB50AFD0();
  qword_1ECC67930 = result;
  return result;
}

uint64_t sub_1DB37AAD4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  a2(v3, a1);
  sub_1DB3F85C8(v3[0], v3[1]);
}

uint64_t sub_1DB37AC74(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v9 = a4[3];
  v10 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v9);
  v11 = (*(v10 + 8))(a2, a3, v9, v10);
  v90 = a1;
  v79 = a2;
  if (v11)
  {
    v76 = a3;
    v80 = v11;
    v12 = 0;
    a3 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    if (!v15)
    {
      goto LABEL_7;
    }

    do
    {
      while (1)
      {
        v20 = v12;
LABEL_17:
        v21 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v22 = v21 | (v20 << 6);
        v23 = (*(v80 + 48) + 16 * v22);
        v25 = *v23;
        v24 = v23[1];
        sub_1DB300B14(*(v80 + 56) + 32 * v22, v83);
        *&v84 = v25;
        *(&v84 + 1) = v24;
        sub_1DB30C200(v83, &v85);

        v19 = v20;
LABEL_18:
        v87 = v84;
        v88 = v85;
        v89 = v86;
        v26 = *(&v84 + 1);
        if (!*(&v84 + 1))
        {

          v5 = v4;
          a1 = v90;
          a3 = v76;
          goto LABEL_25;
        }

        v27 = v87;
        sub_1DB30C200(&v88, &v84);
        v28 = v90[3];
        v29 = v90[4];
        __swift_project_boxed_opaque_existential_1(v90, v28);
        v30 = (*(v29 + 24))(v28, v29);
        if (!*(v30 + 16))
        {
          break;
        }

        v31 = sub_1DB306160(v27, v26);
        if ((v32 & 1) == 0)
        {
          break;
        }

        v17 = v31;

        sub_1DB300B14(*(v30 + 56) + 32 * v17, v83);

        __swift_destroy_boxed_opaque_existential_0(&v84);
        sub_1DB30623C(v83, &qword_1ECC426B0, &qword_1DB50EEB0);
        v12 = v19;
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      memset(v83, 0, sizeof(v83));
      sub_1DB30623C(v83, &qword_1ECC426B0, &qword_1DB50EEB0);
      v33 = v90[3];
      v34 = v90[4];
      __swift_mutable_project_boxed_opaque_existential_1(v90, v33);
      (*(v34 + 16))(&v84, v27, v26, v33, v34);
      __swift_destroy_boxed_opaque_existential_0(&v84);

      if (v4)
      {
      }

      v12 = v19;
    }

    while (v15);
LABEL_7:
    if (v16 <= v12 + 1)
    {
      v18 = v12 + 1;
    }

    else
    {
      v18 = v16;
    }

    v19 = v18 - 1;
    while (1)
    {
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        v15 = 0;
        v85 = 0u;
        v86 = 0u;
        v84 = 0u;
        goto LABEL_18;
      }

      v15 = *(a3 + 8 * v20);
      ++v12;
      if (v15)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_25:
  v35 = MEMORY[0x1E69E6158];
  *(&v88 + 1) = MEMORY[0x1E69E6158];
  *&v87 = 7628138;
  *(&v87 + 1) = 0xE300000000000000;
  v36 = a1[3];
  v37 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v36);
  v38 = v5;
  (*(v37 + 16))(&v87, 0x654D646E65537078, 0xEC000000646F6874, v36, v37);
  v39 = a1;
  v16 = v38;
  result = __swift_destroy_boxed_opaque_existential_0(&v87);
  if (v38)
  {
    return result;
  }

  v41 = a1[3];
  v42 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v41);
  MetricsFieldsBuilder.subscript.getter(1701273968, 0xE400000000000000, v41, v42);
  if (v43)
  {
    goto LABEL_27;
  }

  v46 = a1[3];
  v47 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v46);
  v48 = MetricsFieldsBuilder.subscript.getter(0x6570795465676170, 0xE800000000000000, v46, v47);
  if (v49)
  {
    v82 = v48;
    v50 = v49;
    v51 = a1[3];
    v52 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v51);
    v53 = MetricsFieldsBuilder.subscript.getter(0x644965676170, 0xE600000000000000, v51, v52);
    if (!v54)
    {
LABEL_27:
      v45 = a4;
      v44 = v79;

      goto LABEL_39;
    }

    v55 = v54;
    v81 = v53;
    v56 = a4[3];
    v57 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v56);
    v77 = a3;
    v58 = (*(v57 + 16))(v79, a3, v56, v57);
    if (v59)
    {
      v60 = v58;
    }

    else
    {
      v60 = 95;
    }

    if (v59)
    {
      v61 = v59;
    }

    else
    {
      v61 = 0xE100000000000000;
    }

    sub_1DB37997C(v82, v50, v81, v55, v60, v61);
    v63 = v62;
    v65 = v64;

    *(&v88 + 1) = v35;
    *&v87 = v63;
    *(&v87 + 1) = v65;
    v66 = v39[3];
    v67 = v39[4];
    __swift_mutable_project_boxed_opaque_existential_1(v39, v66);
    (*(v67 + 16))(&v87, 1701273968, 0xE400000000000000, v66, v67);
    __swift_destroy_boxed_opaque_existential_0(&v87);
    a3 = v77;
  }

  v45 = a4;
  v44 = v79;
LABEL_39:
  v68 = v45[3];
  v69 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v68);
  result = (*(v69 + 24))(v44, a3, v68, v69);
  v70 = result;
  v71 = *(result + 16);
  if (!v71)
  {
  }

  v72 = 0;
  v73 = result + 32;
  while (v72 < *(v70 + 16))
  {
    sub_1DB30BE90(v73, &v87);
    v74 = *(&v88 + 1);
    v75 = v89;
    __swift_project_boxed_opaque_existential_1(&v87, *(&v88 + 1));
    (*(v75 + 8))(v90, v74, v75);
    if (v16)
    {
      __swift_destroy_boxed_opaque_existential_0(&v87);
    }

    ++v72;
    result = __swift_destroy_boxed_opaque_existential_0(&v87);
    v73 += 40;
    if (v71 == v72)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB37B27C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  result = MetricsFieldsBuilder.subscript.getter(0x6E6F697469736F70, 0xE800000000000000, v2, v3);
  if ((v5 & 1) == 0)
  {
    v8[3] = MEMORY[0x1E69E63B0];
    v8[0] = round(*&result);
    v6 = a1[3];
    v7 = a1[4];
    __swift_mutable_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 16))(v8, 0x6E6F697469736F70, 0xE800000000000000, v6, v7);
    return __swift_destroy_boxed_opaque_existential_0(v8);
  }

  return result;
}

unint64_t sub_1DB37B35C()
{
  result = qword_1EE30C810;
  if (!qword_1EE30C810)
  {
    sub_1DB50AF80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30C810);
  }

  return result;
}

uint64_t Models.ExternalURLAction.init(actionMetrics:url:isSensitive:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for Models.ExternalURLAction(0);
  v8 = *(v7 + 20);
  v9 = sub_1DB509CA0();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t type metadata accessor for Models.ExternalURLAction(uint64_t a1)
{
  result = qword_1ECC440C8;
  if (!qword_1ECC440C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Models.ExternalURLAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v25 - v7;
  v9 = sub_1DB509CA0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v25 - v14;
  v16 = *a2;
  JSONObject.subscript.getter(7107189, 0xE300000000000000, v29);
  JSONObject.url.getter(v8);
  sub_1DB3151CC(v29);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_1DB37B80C(v8);
    v17 = type metadata accessor for Models.ExternalURLAction(0) | 0x2000000000000000;
    sub_1DB315178();
    swift_allocError();
    *v18 = xmmword_1DB511610;
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  else
  {
    v25[1] = v3;
    v25[0] = *(v10 + 32);
    (v25[0])(v15, v8, v9);
    JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, v29);
    JSONObject.subscript.getter(1635017060, 0xE400000000000000, v28);

    v20 = sub_1DB320870(v28, v16);
    JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v28);
    v27 = v16;
    ScalarDictionary.init(tryDeserializing:using:)(v28, &v27, &v30);
    sub_1DB3151CC(v29);
    v21 = v30;
    (*(v10 + 16))(v12, v15, v9);
    JSONObject.subscript.getter(0x7469736E65537369, 0xEB00000000657669, v29);
    v22 = JSONObject.BOOL.getter();
    sub_1DB3151CC(a1);
    sub_1DB3151CC(v29);
    (*(v10 + 8))(v15, v9);
    v23 = v26;
    *v26 = v20;
    v23[1] = v21;
    v24 = type metadata accessor for Models.ExternalURLAction(0);
    result = (v25[0])(v23 + *(v24 + 20), v12, v9);
    *(v23 + *(v24 + 24)) = v22 & 1;
  }

  return result;
}

uint64_t sub_1DB37B80C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC42B20, &unk_1DB50F6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Models.ExternalURLAction.actionMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Models.ExternalURLAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Models.ExternalURLAction(0) + 20);
  v4 = sub_1DB509CA0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DB37B950()
{
  v1 = 7107189;
  if (*v0 != 1)
  {
    v1 = 0x7469736E65537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654D6E6F69746361;
  }
}

uint64_t sub_1DB37B9B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DB37C46C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DB37B9EC(uint64_t a1)
{
  v2 = sub_1DB37BC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB37BA28(uint64_t a1)
{
  v2 = sub_1DB37BC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.ExternalURLAction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44098, &qword_1DB513CB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB37BC74();
  sub_1DB50BE40();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1DB37BCC8();

  sub_1DB50B8A0();

  if (!v2)
  {
    type metadata accessor for Models.ExternalURLAction(0);
    LOBYTE(v12) = 1;
    sub_1DB509CA0();
    sub_1DB37C120(&qword_1ECC440B0, MEMORY[0x1E6968FB8]);
    sub_1DB50B8A0();
    LOBYTE(v12) = 2;
    sub_1DB50B870();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DB37BC74()
{
  result = qword_1ECC440A0;
  if (!qword_1ECC440A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440A0);
  }

  return result;
}

unint64_t sub_1DB37BCC8()
{
  result = qword_1ECC440A8;
  if (!qword_1ECC440A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440A8);
  }

  return result;
}

uint64_t Models.ExternalURLAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1DB509CA0();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC440B8, &qword_1DB513CC0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Models.ExternalURLAction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DB37BC74();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  v23 = 0;
  sub_1DB37C0CC();
  sub_1DB50B780();
  *v12 = v22;
  LOBYTE(v22) = 1;
  sub_1DB37C120(&qword_1EE30E290, MEMORY[0x1E6968FD0]);
  sub_1DB50B780();
  (*(v18 + 32))(&v12[*(v10 + 20)], v6, v4);
  LOBYTE(v22) = 2;
  v14 = sub_1DB50B750();
  (*(v19 + 8))(v9, v20);
  v12[*(v10 + 24)] = v14 & 1;
  sub_1DB37C164(v12, v17);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return sub_1DB37C1C8(v12);
}

unint64_t sub_1DB37C0CC()
{
  result = qword_1ECC440C0;
  if (!qword_1ECC440C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440C0);
  }

  return result;
}

uint64_t sub_1DB37C120(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DB509CA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB37C164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Models.ExternalURLAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB37C1C8(uint64_t a1)
{
  v2 = type metadata accessor for Models.ExternalURLAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB37C224@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1DB37C2D0(uint64_t a1)
{
  result = sub_1DB509CA0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DB37C368()
{
  result = qword_1ECC440D8;
  if (!qword_1ECC440D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440D8);
  }

  return result;
}

unint64_t sub_1DB37C3C0()
{
  result = qword_1ECC440E0;
  if (!qword_1ECC440E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440E0);
  }

  return result;
}

unint64_t sub_1DB37C418()
{
  result = qword_1ECC440E8;
  if (!qword_1ECC440E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440E8);
  }

  return result;
}

uint64_t sub_1DB37C46C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469736E65537369 && a2 == 0xEB00000000657669)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t JetPackError.errorDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000020;
  }
}

unint64_t JetPackError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB50EE90;
  *(inited + 32) = sub_1DB50A650();
  *(inited + 40) = v3;
  v4 = "oryMetricsEventLinter";
  v5 = 0xD00000000000001DLL;
  if (v1 == 1)
  {
    v5 = 0xD000000000000020;
    v4 = "JetPackError.daemonKillSwitch";
  }

  if (v1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000020;
  }

  if (!v1)
  {
    v4 = "hedAssetNotFound";
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v4 | 0x8000000000000000;
  v7 = sub_1DB3135C0(inited);
  swift_setDeallocating();
  sub_1DB351638(inited + 32);
  return v7;
}

uint64_t JetPackError.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

unint64_t sub_1DB37C788()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000020;
  }
}

uint64_t sub_1DB37C7FC(uint64_t a1)
{
  v2 = sub_1DB37C930();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB37C838(uint64_t a1)
{
  v2 = sub_1DB37C930();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1DB37C878()
{
  result = qword_1ECC440F0;
  if (!qword_1ECC440F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440F0);
  }

  return result;
}

unint64_t sub_1DB37C8CC()
{
  result = qword_1ECC440F8;
  if (!qword_1ECC440F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC440F8);
  }

  return result;
}

unint64_t sub_1DB37C930()
{
  result = qword_1ECC44100;
  if (!qword_1ECC44100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44100);
  }

  return result;
}

uint64_t sub_1DB37C990(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(&v5, AssociatedTypeWitness, AssociatedConformanceWitness);
  return v5;
}

uint64_t dispatch thunk of IntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1DB306AF4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t DependencyDictionary.MergeStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_1DB50BCF0();
  MEMORY[0x1E12871F0](v1);
  return sub_1DB50BD30();
}

JetCore::DependencyDictionary __swiftcall DependencyDictionary.init(_:)(Swift::OpaquePointer a1)
{
  v3 = v1;
  v4 = *(a1._rawValue + 2);
  v5 = sub_1DB30BC94();
  *v3 = MEMORY[0x1E12859D0](v4, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v5);
  sub_1DB307C9C(a1._rawValue);
}

uint64_t DependencyDictionary.add<A>(distinctDependenciesFrom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v32 - v12;
  (*(v7 + 16))(v9, a1, a2, v11);
  sub_1DB50A880();
  swift_getAssociatedConformanceWitness();
  sub_1DB50B170();
  if (!v39)
  {
    return (*(v32 + 8))(v13, AssociatedTypeWitness);
  }

  while (1)
  {
    v37[0] = v39;
    v37[1] = v40;
    v38 = v41;
    v14 = v39;
    sub_1DB300B14(v37 + 8, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v4;
    v16 = v33;
    *v4 = 0x8000000000000000;
    v17 = sub_1DB30EE50(v14);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v16[3] < v22)
    {
      sub_1DB31A6AC(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1DB30EE50(v14);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v25 = v33;
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v28 = v17;
    sub_1DB311D10();
    v17 = v28;
    v25 = v33;
    if ((v23 & 1) == 0)
    {
LABEL_14:
      v25[(v17 >> 6) + 8] |= 1 << v17;
      *(v25[6] + 8 * v17) = v14;
      sub_1DB30C200(v34, (v25[7] + 32 * v17));
      v29 = v25[2];
      v21 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v21)
      {
        goto LABEL_18;
      }

      v25[2] = v30;
      v35 = 0u;
      v36 = 0u;
      *v4 = v25;
      goto LABEL_3;
    }

LABEL_11:
    v26 = 32 * v17;
    sub_1DB30C200((v25[7] + 32 * v17), &v35);
    sub_1DB30C200(v34, (v25[7] + v26));
    v27 = *(&v36 + 1);
    *v4 = v25;
    if (v27)
    {
      sub_1DB301DBC(&v35);
      sub_1DB3CBD24("JetCore/DependencyDictionary.swift", 34, 2, 340, v14);
      sub_1DB30BF1C(v37);
      goto LABEL_4;
    }

LABEL_3:
    sub_1DB30BF1C(v37);
    sub_1DB301DBC(&v35);
LABEL_4:
    sub_1DB50B170();
    if (!v39)
    {
      return (*(v32 + 8))(v13, AssociatedTypeWitness);
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

void *DependencyDictionary.types.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1DB324338(v2, 0);
  v4 = sub_1DB324740(&v7, v3 + 4, v2, v1);
  v5 = v7;

  sub_1DB2FEA60(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DB37D0E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*(v5 + 16) && (v6 = sub_1DB30EE50(a1), (v7 & 1) != 0))
  {
    sub_1DB300B14(*(v5 + 56) + 32 * v6, v11);
    sub_1DB301DBC(v11);
    LOBYTE(v8) = 1;
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    sub_1DB301DBC(v11);
    v8 = sub_1DB35EB4C(a1, a2);
    if (v8)
    {
      LOBYTE(v8) = sub_1DB37D184(v8, v5, a2, v8, v9);
    }
  }

  return v8 & 1;
}

uint64_t sub_1DB37D184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a2 + 16) && (AssociatedTypeWitness = swift_getAssociatedTypeWitness(), v7 = sub_1DB30EE50(AssociatedTypeWitness), (v8 & 1) != 0))
  {
    sub_1DB300B14(*(a2 + 56) + 32 * v7, v11);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    memset(v11, 0, sizeof(v11));
  }

  sub_1DB301DBC(v11);
  return v9;
}

uint64_t sub_1DB37D214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (!*(v10 + 16) || (v11 = sub_1DB30EE50(v7), (v12 & 1) == 0))
  {
    memset(v21, 0, sizeof(v21));
    goto LABEL_9;
  }

  sub_1DB300B14(*(v10 + 56) + 32 * v11, v21);
  sub_1DB301CDC(v21, v20);
  type metadata accessor for DependencyCell(0, a2, v13, v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for ThrowingDependencyCell(0, a2, v15, v16);
    if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
      if (swift_dynamicCast())
      {
        swift_unknownObjectRelease();
        v17 = 2;
        goto LABEL_6;
      }

      if (swift_dynamicCast())
      {
        *a3 = 0;
        (*(v6 + 8))(v9, a2);
        goto LABEL_7;
      }

      __swift_destroy_boxed_opaque_existential_0(v20);
LABEL_9:
      *a3 = 3;
      return sub_1DB301DBC(v21);
    }
  }

  v17 = 1;
LABEL_6:
  *a3 = v17;
LABEL_7:
  __swift_destroy_boxed_opaque_existential_0(v20);
  return sub_1DB301DBC(v21);
}

char *DependencyDictionary.types<A>(compatibleWith:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v10 = *(*v2 + 64);
  v9 = *v2 + 64;
  v8 = v10;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v40 = (v4 + 8);

  v16 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    if (!v13)
    {
      break;
    }

    v19 = v16;
LABEL_15:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = v21 | (v19 << 6);
    v23 = *(*(v7 + 48) + 8 * v22);
    sub_1DB300B14(*(v7 + 56) + 32 * v22, v42);
    *&v43 = v23;
    sub_1DB30C200(v42, (&v43 + 8));
    v16 = v19;
LABEL_16:
    v46[0] = v43;
    v46[1] = v44;
    v47 = v45;
    v24 = v43;
    if (!v43)
    {

      return v41;
    }

    sub_1DB30C200((v46 + 8), &v43);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1DB303148(0, *(v41 + 2) + 1, 1, v41);
      }

      v34 = *(v41 + 2);
      v33 = *(v41 + 3);
      v35 = v34 + 1;
      if (v34 >= v33 >> 1)
      {
        v39 = v34 + 1;
        v37 = sub_1DB303148((v33 > 1), v34 + 1, 1, v41);
        v35 = v39;
        v41 = v37;
      }

      v36 = v41;
      *(v41 + 2) = v35;
      *&v36[8 * v34 + 32] = v24;
      (*v40)(v6, a2);
    }

    else
    {
      type metadata accessor for DependencyCell(0, a2, v25, v26);
      if (swift_dynamicCast() || (type metadata accessor for ThrowingDependencyCell(0, a2, v27, v28), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1DB303148(0, *(v41 + 2) + 1, 1, v41);
        }

        v30 = *(v41 + 2);
        v29 = *(v41 + 3);
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v39 = v30 + 1;
          v32 = sub_1DB303148((v29 > 1), v30 + 1, 1, v41);
          v31 = v39;
          v41 = v32;
        }

        v17 = v41;
        *(v41 + 2) = v31;
        *&v17[8 * v30 + 32] = v24;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v43);
  }

  if (v14 <= v16 + 1)
  {
    v20 = v16 + 1;
  }

  else
  {
    v20 = v14;
  }

  v16 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v14)
    {
      v13 = 0;
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      goto LABEL_16;
    }

    v13 = *(v9 + 8 * v19);
    ++v18;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

{
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v10 = *(*v2 + 64);
  v9 = *v2 + 64;
  v8 = v10;
  v11 = 1 << *(v7 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v42 = (v4 + 8);

  v16 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v16;
    if (!v13)
    {
      break;
    }

    v19 = v16;
LABEL_15:
    v21 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v22 = v21 | (v19 << 6);
    v23 = *(*(v7 + 48) + 8 * v22);
    sub_1DB300B14(*(v7 + 56) + 32 * v22, v44);
    *&v45 = v23;
    sub_1DB30C200(v44, (&v45 + 8));
    v16 = v19;
LABEL_16:
    v48[0] = v45;
    v48[1] = v46;
    v49 = v47;
    v24 = v45;
    if (!v45)
    {

      return v43;
    }

    sub_1DB30C200((v48 + 8), &v45);
    if (swift_dynamicCast())
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_1DB303148(0, *(v43 + 2) + 1, 1, v43);
      }

      v36 = *(v43 + 2);
      v35 = *(v43 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v41 = v36 + 1;
        v39 = sub_1DB303148((v35 > 1), v36 + 1, 1, v43);
        v37 = v41;
        v43 = v39;
      }

      v38 = v43;
      *(v43 + 2) = v37;
      *&v38[8 * v36 + 32] = v24;
      (*v42)(v6, a2);
    }

    else
    {
      type metadata accessor for DependencyCell(0, a2, v25, v26);
      if (swift_dynamicCast() || (type metadata accessor for ThrowingDependencyCell(0, a2, v27, v28), swift_dynamicCast()) || (type metadata accessor for DependencyPromise(0, a2, v29, v30), swift_dynamicCast()))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1DB303148(0, *(v43 + 2) + 1, 1, v43);
        }

        v32 = *(v43 + 2);
        v31 = *(v43 + 3);
        v33 = v32 + 1;
        if (v32 >= v31 >> 1)
        {
          v41 = v32 + 1;
          v34 = sub_1DB303148((v31 > 1), v32 + 1, 1, v43);
          v33 = v41;
          v43 = v34;
        }

        v17 = v43;
        *(v43 + 2) = v33;
        *&v17[8 * v32 + 32] = v24;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v45);
  }

  if (v14 <= v16 + 1)
  {
    v20 = v16 + 1;
  }

  else
  {
    v20 = v14;
  }

  v16 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v14)
    {
      v13 = 0;
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      goto LABEL_16;
    }

    v13 = *(v9 + 8 * v19);
    ++v18;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB37DAF8(uint64_t a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44128, &unk_1DB514160);
  sub_1DB382984();
  v2 = sub_1DB50A890();

  return v2;
}

uint64_t sub_1DB37DB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DB300B14(a1, &v7);
  v5 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v5 ^ 1u, 1, a2);
}

uint64_t DependencyDictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_1DB30EE50(a1), (v11 & 1) != 0))
  {
    sub_1DB300B14(*(v9 + 56) + 32 * v10, v29);
    sub_1DB30C200(v29, &v30);
    sub_1DB300B14(&v30, v29);
    if (swift_dynamicCast())
    {
      (*(v27 + 32))(a3, v8, a2);
LABEL_14:
      (*(v27 + 56))(a3, 0, 1, a2);
LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(v29);
      return __swift_destroy_boxed_opaque_existential_0(&v30);
    }

    type metadata accessor for DependencyCell(0, a2, v12, v13);
    if (swift_dynamicCast())
    {
      sub_1DB35CB48();

      goto LABEL_14;
    }

    type metadata accessor for ThrowingDependencyCell(0, a2, v18, v19);
    v20 = swift_dynamicCast();
    if (v20)
    {
      v21 = v28;
      MEMORY[0x1EEE9AC00](v20);
      v24 = v21;
      v25 = a1;
      requirementFailure(_:file:line:)(sub_1DB3821B0, (&v26 - 2), "JetCore/DependencyDictionary.swift", 34, 2, 231);
      sub_1DB3C20C0();
      (*(v27 + 56))(a3, 0, 1, a2);

      goto LABEL_19;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    v22 = swift_dynamicCast();
    if (v22)
    {
      v26 = v28;
      MEMORY[0x1EEE9AC00](v22);
      *(&v26 - 4) = a2;
      *(&v26 - 24) = v26;
      v25 = a1;
      requirementFailure(_:file:line:)(sub_1DB382A98, (&v26 - 3), "JetCore/DependencyDictionary.swift", 34, 2, 239);
      swift_unknownObjectRelease();
      (*(v27 + 56))(a3, 1, 1, a2);
      goto LABEL_19;
    }

    *&v28 = 0;
    *(&v28 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    v23 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v23);

    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    result = sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v14 = sub_1DB35EB4C(a1, a2);
    if (v14)
    {

      return sub_1DB37E0DC(v9, v14, v15, a3);
    }

    else
    {
      v17 = *(v27 + 56);

      return v17(a3, 1, 1, a2);
    }
  }

  return result;
}

uint64_t sub_1DB37E0DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1DB50B120();
  v21 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v22 = a1;
  if (sub_1DB37D0E0(AssociatedTypeWitness, AssociatedTypeWitness))
  {
    v22 = a1;
    DependencyDictionary.subscript.getter(AssociatedTypeWitness, AssociatedTypeWitness, v11);
    if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v21 + 8))(v11, v9);
      v16 = swift_getAssociatedTypeWitness();
      return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    }

    else
    {
      (*(v12 + 32))(v15, v11, AssociatedTypeWitness);
      (*(a3 + 24))(v15, a2, a3);
      (*(v12 + 8))(v15, AssociatedTypeWitness);
      v20 = swift_getAssociatedTypeWitness();
      return (*(*(v20 - 8) + 56))(a4, 0, 1, v20);
    }
  }

  else
  {
    v18 = swift_getAssociatedTypeWitness();
    v19 = *(*(v18 - 8) + 56);

    return v19(a4, 1, 1, v18);
  }
}

uint64_t sub_1DB37E42C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  type metadata accessor for ThrowingDependencyCell(0, *(v2 + 80), v3, v4);
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F6620, 0xE600000000000000);
  v5 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v5);

  MEMORY[0x1E1285C70](0xD00000000000002ALL, 0x80000001DB52BA30);
  return 0;
}

uint64_t sub_1DB37E528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(v11 + 16) && (v12 = sub_1DB30EE50(a1), (v13 & 1) != 0))
  {
    sub_1DB300B14(*(v11 + 56) + 32 * v12, v26);
    sub_1DB30C200(v26, &v27);
    sub_1DB300B14(&v27, v26);
    if (swift_dynamicCast())
    {
      (*(v8 + 32))(a3, v10, a2);
LABEL_10:
      (*(v8 + 56))(a3, 0, 1, a2);
LABEL_11:
      __swift_destroy_boxed_opaque_existential_0(v26);
      return __swift_destroy_boxed_opaque_existential_0(&v27);
    }

    type metadata accessor for DependencyCell(0, a2, v14, v15);
    if (swift_dynamicCast())
    {
      sub_1DB35CB48();

      goto LABEL_10;
    }

    type metadata accessor for ThrowingDependencyCell(0, a2, v19, v20);
    if (swift_dynamicCast())
    {
      sub_1DB3C20C0();
      if (!v4)
      {
        (*(v8 + 56))(a3, 0, 1, a2);
      }

      goto LABEL_11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44108, &qword_1DB521B50);
    v21 = swift_dynamicCast();
    if (v21)
    {
      v24 = v25;
      MEMORY[0x1EEE9AC00](v21);
      *(&v24 - 4) = a2;
      *(&v24 - 24) = v24;
      v23 = a1;
      requirementFailure(_:file:line:)(sub_1DB382804, (&v24 - 3), "JetCore/DependencyDictionary.swift", 34, 2, 280);
      swift_unknownObjectRelease();
      (*(v8 + 56))(a3, 1, 1, a2);
      goto LABEL_11;
    }

    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1(&v27, v28);
    sub_1DB50BA00();
    MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
    v22 = sub_1DB50BEE0();
    MEMORY[0x1E1285C70](v22);

    MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
    result = sub_1DB50B580();
    __break(1u);
  }

  else
  {
    v16 = sub_1DB35EB4C(a1, a2);
    if (v16)
    {
      return sub_1DB37E92C(v11, v16, v17, a3);
    }

    else
    {
      return (*(v8 + 56))(a3, 1, 1, a2);
    }
  }

  return result;
}

uint64_t sub_1DB37E92C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v21 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_1DB50B120();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  v22 = a1;
  if ((sub_1DB37D0E0(AssociatedTypeWitness, AssociatedTypeWitness) & 1) == 0)
  {
    goto LABEL_4;
  }

  v22 = a1;
  DependencyDictionary.subscript.getter(AssociatedTypeWitness, AssociatedTypeWitness, v10);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v20 + 8))(v10, v8);
LABEL_4:
    v15 = swift_getAssociatedTypeWitness();
    return (*(*(v15 - 8) + 56))(v21, 1, 1, v15);
  }

  (*(v11 + 32))(v14, v10, AssociatedTypeWitness);
  v17 = v21;
  (*(a3 + 24))(v14, a2, a3);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  v18 = swift_getAssociatedTypeWitness();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_1DB37EC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
  swift_getObjectType();
  sub_1DB50BA00();
  MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
  v3 = sub_1DB50BEE0();
  MEMORY[0x1E1285C70](v3);

  MEMORY[0x1E1285C70](0xD000000000000032, 0x80000001DB52B9F0);
  return 0;
}

uint64_t sub_1DB37ECE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a2;
  v4[19] = a3;
  v4[17] = a1;
  v4[20] = *(a3 - 8);
  v5 = swift_task_alloc();
  v6 = *v3;
  v4[21] = v5;
  v4[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DB37EDA4, 0, 0);
}

uint64_t sub_1DB37EDA4()
{
  if (*(*(v0 + 176) + 16) && (v1 = sub_1DB30EE50(*(v0 + 144)), (v2 & 1) != 0))
  {
    sub_1DB300B14(*(*(v0 + 176) + 56) + 32 * v1, v0 + 48);
    sub_1DB30C200((v0 + 48), (v0 + 16));
    sub_1DB300B14(v0 + 16, v0 + 80);
    if (swift_dynamicCast())
    {
      v5 = *(v0 + 160);
      v6 = *(v0 + 152);
      v7 = *(v0 + 136);
      (*(v5 + 32))(v7, *(v0 + 168), v6);
      (*(v5 + 56))(v7, 0, 1, v6);
LABEL_12:
      __swift_destroy_boxed_opaque_existential_0((v0 + 80));
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
      goto LABEL_13;
    }

    type metadata accessor for DependencyCell(0, *(v0 + 152), v3, v4);
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 152);
      v20 = *(v0 + 160);
      v21 = *(v0 + 136);
      sub_1DB35CB48();

      (*(v20 + 56))(v21, 0, 1, v19);
      goto LABEL_12;
    }

    type metadata accessor for ThrowingDependencyCell(0, *(v0 + 152), v17, v18);
    if (swift_dynamicCast())
    {
      sub_1DB3C20C0();
      (*(*(v0 + 160) + 56))(*(v0 + 136), 0, 1, *(v0 + 152));

      goto LABEL_12;
    }

    v25 = type metadata accessor for DependencyPromise(0, *(v0 + 152), v23, v24);
    if (swift_dynamicCast())
    {
      *(v0 + 184) = *(v0 + 128);
      v26 = swift_task_alloc();
      *(v0 + 192) = v26;
      WitnessTable = swift_getWitnessTable();
      *v26 = v0;
      v26[1] = sub_1DB37F26C;
      v28 = *(v0 + 136);

      return Future.result.getter(v28, v25, WitnessTable);
    }

    else
    {
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0x60207463656A624FLL, 0xE800000000000000);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_1DB50BA00();
      MEMORY[0x1E1285C70](0x3C20726F662060, 0xE700000000000000);
      v29 = sub_1DB50BEE0();
      MEMORY[0x1E1285C70](v29);

      MEMORY[0x1E1285C70](0xD000000000000016, 0x80000001DB52B9A0);
      return sub_1DB50B580();
    }
  }

  else
  {
    v8 = sub_1DB35EB4C(*(v0 + 144), *(v0 + 152));
    if (!v8)
    {
      (*(*(v0 + 160) + 56))(*(v0 + 136), 1, 1, *(v0 + 152));
LABEL_13:

      v22 = *(v0 + 8);

      return v22();
    }

    v10 = v8;
    v11 = v9;
    v12 = swift_task_alloc();
    *(v0 + 208) = v12;
    *v12 = v0;
    v12[1] = sub_1DB37F42C;
    v13 = *(v0 + 176);
    v14 = *(v0 + 152);
    v15 = *(v0 + 136);

    return sub_1DB37F5C0(v15, v10, v13, v14, v10, v11);
  }
}

uint64_t sub_1DB37F26C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1DB37F544;
  }

  else
  {
    v2 = sub_1DB37F380;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB37F380()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];

  (*(v2 + 56))(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB37F42C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB37F544()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1DB37F5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[7] = AssociatedTypeWitness;
  v8 = sub_1DB50B120();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB37F704, 0, 0);
}

uint64_t sub_1DB37F704()
{
  if (sub_1DB37D0E0(v0[7], v0[7]))
  {
    v0[2] = v0[4];
    v1 = swift_task_alloc();
    v0[13] = v1;
    *v1 = v0;
    v1[1] = sub_1DB37F868;
    v2 = v0[10];
    v3 = v0[7];

    return sub_1DB37ECE8(v2, v3, v3);
  }

  else
  {
    v5 = v0[3];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v5, 1, 1, AssociatedTypeWitness);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1DB37F868()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1DB37FB64;
  }

  else
  {
    v2 = sub_1DB37F97C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB37F97C()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[3];
    (*(v0[9] + 8))(v1, v0[8]);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v4, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v6 = v0[12];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    (*(v2 + 32))(v6, v1, v3);
    (*(v7 + 24))(v6, v8, v7);
    (*(v2 + 8))(v6, v3);
    v10 = swift_getAssociatedTypeWitness();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DB37FB64()
{

  v1 = *(v0 + 8);

  return v1();
}

void DependencyDictionary.add(distinctDependency:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1DB300B14((a1 + 1), v3);
  sub_1DB381A90(v3, v1, &v4);
  v2 = v5;
  sub_1DB301DBC(&v4);
  if (v2)
  {
    sub_1DB3CBD24("JetCore/DependencyDictionary.swift", 34, 2, 340, v1);
  }
}

BOOL DependencyDictionary.replace(dependency:)(uint64_t *a1)
{
  v1 = *a1;
  sub_1DB300B14((a1 + 1), v4);
  sub_1DB381A90(v4, v1, &v5);
  v2 = v6 != 0;
  sub_1DB301DBC(&v5);
  return v2;
}

uint64_t DependencyDictionary.replace<A>(dependencies:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v31 - v12;
  (*(v7 + 16))(v9, a1, a2, v11);
  sub_1DB50A880();
  swift_getAssociatedConformanceWitness();
  sub_1DB50B170();
  if (!v37)
  {
    return (*(v31 + 8))(v13, AssociatedTypeWitness);
  }

  while (1)
  {
    v35[0] = v37;
    v35[1] = v38;
    v36 = v39;
    v15 = v37;
    sub_1DB300B14(v35 + 8, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *v4;
    v17 = v32;
    *v4 = 0x8000000000000000;
    v18 = sub_1DB30EE50(v15);
    v20 = v17[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v17[3] < v23)
    {
      sub_1DB31A6AC(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1DB30EE50(v15);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v26 = v32;
      if (v24)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v29 = v18;
    sub_1DB311D10();
    v18 = v29;
    v26 = v32;
    if (v24)
    {
LABEL_3:
      v14 = 32 * v18;
      sub_1DB30C200((v26[7] + 32 * v18), v34);
      sub_1DB30C200(v33, (v26[7] + v14));
      goto LABEL_4;
    }

LABEL_11:
    v26[(v18 >> 6) + 8] |= 1 << v18;
    *(v26[6] + 8 * v18) = v15;
    sub_1DB30C200(v33, (v26[7] + 32 * v18));
    v27 = v26[2];
    v22 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v26[2] = v28;
    memset(v34, 0, sizeof(v34));
LABEL_4:
    *v4 = v26;
    sub_1DB30BF1C(v35);
    sub_1DB301DBC(v34);
    sub_1DB50B170();
    if (!v37)
    {
      return (*(v31 + 8))(v13, AssociatedTypeWitness);
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1DB50BC20();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DependencyDictionary.merge(with:preferring:)(JetCore::DependencyDictionary with, JetCore::DependencyDictionary::MergeStrategy preferring)
{
  v3 = *with.contents._rawValue;
  v4 = *preferring;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  *v2 = 0x8000000000000000;
  if (v4)
  {
    sub_1DB3821B8(v3, sub_1DB381A80, 0, isUniquelyReferenced_nonNull_native, &v7);
  }

  else
  {
    sub_1DB382488(v3, sub_1DB381A80, 0, isUniquelyReferenced_nonNull_native, &v7);
  }

  v6 = v7;

  *v2 = v6;
}

uint64_t DependencyDictionary.remove(dependencyFor:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1DB30EE50(a1);
  if (v4)
  {
    v5 = v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v1;
    v9 = *v2;
    *v2 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DB311D10();
      v7 = v9;
    }

    sub_1DB30C200((*(v7 + 56) + 32 * v5), v10);
    sub_1DB310538(v5, v7);

    *v2 = v7;
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return sub_1DB301DBC(v10);
}

uint64_t DependencyDictionary.remove<A>(dependenciesFor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v22 - v13;
  (*(v7 + 16))(v9, a1, a2, v12);
  sub_1DB50A880();
  swift_getAssociatedConformanceWitness();
  sub_1DB50B170();
  for (i = *&v24[0]; *&v24[0]; i = *&v24[0])
  {
    v16 = sub_1DB30EE50(i);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v23 = *v4;
      *v4 = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1DB311D10();
        v20 = v23;
      }

      sub_1DB30C200((*(v20 + 56) + 32 * v18), v24);
      sub_1DB310538(v18, v20);

      *v4 = v20;
    }

    else
    {
      memset(v24, 0, sizeof(v24));
    }

    sub_1DB301DBC(v24);
    sub_1DB50B170();
  }

  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t DependencyDictionary.remove<A>(allDependenciesExcept:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DB50B340();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = sub_1DB50B510();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v41 = v3;
  MEMORY[0x1E1285DC0](a2, a3, v11);
  swift_getWitnessTable();
  sub_1DB50B650();
  (*(v7 + 8))(v9, v6);
  sub_1DB30BC94();
  swift_getWitnessTable();
  v12 = sub_1DB50AE00();
  v13 = v12;
  v14 = *v3;
  v15 = *v3 + 64;
  v16 = 1 << *(*v3 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(*v3 + 64);
  v19 = (v16 + 63) >> 6;
  v20 = v12 + 56;

  v22 = 0;
  v40 = v14;
  while (1)
  {
    v23 = v22;
    if (!v18)
    {
      break;
    }

    v24 = v22;
LABEL_17:
    v26 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v27 = v26 | (v24 << 6);
    v28 = *(*(v14 + 48) + 8 * v27);
    sub_1DB300B14(*(v14 + 56) + 32 * v27, v45);
    *&v42 = v28;
    sub_1DB30C200(v45, (&v42 + 8));
    v22 = v24;
LABEL_18:
    v46[0] = v42;
    v46[1] = v43;
    v47 = v44;
    v29 = v42;
    if (!v42)
    {
    }

    if (*(v13 + 16) && (sub_1DB50BCF0(), MEMORY[0x1E12871F0](v29), v30 = sub_1DB50BD30(), v31 = -1 << *(v13 + 32), v32 = v30 & ~v31, ((*(v20 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (*(*(v13 + 48) + 8 * v32) != v29)
      {
        v32 = (v32 + 1) & v33;
        if (((*(v20 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
LABEL_24:
      v34 = sub_1DB30EE50(v29);
      if (v35)
      {
        v36 = v34;
        v37 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *v37;
        *&v45[0] = *v37;
        *v37 = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1DB311D10();
          v39 = *&v45[0];
        }

        sub_1DB30C200((*(v39 + 56) + 32 * v36), &v42);
        sub_1DB310538(v36, v39);

        *v37 = v39;
        v14 = v40;
      }

      else
      {
        v42 = 0u;
        v43 = 0u;
      }

      sub_1DB301DBC(&v42);
    }

    result = __swift_destroy_boxed_opaque_existential_0(v46 + 1);
  }

  if (v19 <= v22 + 1)
  {
    v25 = v22 + 1;
  }

  else
  {
    v25 = v19;
  }

  v22 = v25 - 1;
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v18 = 0;
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      goto LABEL_18;
    }

    v18 = *(v15 + 8 * v24);
    ++v23;
    if (v18)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB3807EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44118, &qword_1DB514140);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB380890, 0, 0);
}

uint64_t sub_1DB380890()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[7];
  sub_1DB30BE90(v0[9], (v0 + 2));
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1DB381678(sub_1DB382824, v1);

  *v4 = v3;
  sub_1DB30C200(v1, (v4 + 8));
  v5 = *(v2 + 28);
  v6 = *(type metadata accessor for _ResolvedDependency(0) + 24);
  v7 = sub_1DB509930();
  (*(*(v7 - 8) + 32))(v4 + v6, &v1[v5], v7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  swift_storeEnumTagMultiPayload();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1DB3809E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  v5[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44118, &qword_1DB514140);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for _ResolvedDependency(0);
  v5[13] = swift_task_alloc();
  v5[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v5[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB380AF8, 0, 0);
}

uint64_t sub_1DB380AF8()
{
  v1 = v0[11];
  sub_1DB30BE90(v0[9], (v0 + 2));
  *(swift_task_alloc() + 16) = v0 + 2;
  sub_1DB381678(sub_1DB3828E8, v1);
  v2 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[8];
  v13 = v0[7];

  *v3 = v7;
  sub_1DB30C200(v5, (v3 + 8));
  v8 = *(v6 + 28);
  v9 = *(v4 + 24);
  v10 = sub_1DB509930();
  (*(*(v10 - 8) + 32))(v3 + v9, &v5[v8], v10);
  sub_1DB382904(v3, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_storeEnumTagMultiPayload();
  sub_1DB30C06C(v2, v13, &qword_1ECC44120, &qword_1DB514148);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1DB380CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a1;
  v6[7] = a4;
  v7 = sub_1DB509DD0();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = type metadata accessor for MonotonicTimeReference(0);
  v6[17] = swift_task_alloc();
  v6[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44118, &qword_1DB514140);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = type metadata accessor for _ResolvedDependency(0);
  v6[22] = swift_task_alloc();
  v6[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44120, &qword_1DB514148);
  v6[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB380E8C, 0, 0);
}

uint64_t sub_1DB380E8C(__n128 a1)
{
  v18 = v1;
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v4 = *(v1 + 120);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 72);
  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v17);
  v8 = *(v3 + 20);
  *(v1 + 232) = v8;
  *(v2 + v8) = v17;
  v9 = *(v6 + 16);
  *(v1 + 200) = v9;
  *(v1 + 208) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v4, v2, v5);
  ObjectType = swift_getObjectType();
  v11 = *(v7 + 24);
  *(v1 + 40) = swift_getAssociatedTypeWitness();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v1 + 16));
  v16 = (v11 + *v11);
  v13 = swift_task_alloc();
  *(v1 + 216) = v13;
  *v13 = v1;
  v13[1] = sub_1DB38104C;
  v14 = *(v1 + 72);

  return v16(boxed_opaque_existential_0, ObjectType, v14);
}

uint64_t sub_1DB38104C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1DB381444;
  }

  else
  {
    v2 = sub_1DB381160;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB381160()
{
  v27 = v0;
  v1 = (*(v0 + 136) + *(v0 + 232));
  sub_1DB30C200((v0 + 16), *(v0 + 152));
  static MonotonicTime.now.getter(&v26);
  v18 = v1[1];
  v25[0] = *v1;
  v25[1] = v18;
  sub_1DB49B574(v25, &v26.tv_sec);
  if (qword_1EE30ED48 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v24 = *(v0 + 192);
  v21 = *(v0 + 176);
  v22 = *(v0 + 168);
  v3 = *(v0 + 144);
  v16 = *(v0 + 136);
  v17 = *(v0 + 152);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v19 = *(v0 + 56);
  v20 = *(v0 + 160);
  v23 = *(v0 + 48);
  sub_1DB509D60();
  v2(v6, v4, v8);
  v2(v7, v5, v8);
  sub_1DB509910();
  v10 = *(v9 + 8);
  v10(v5, v8);
  v10(v4, v8);
  sub_1DB38288C(v16);
  sub_1DB30C06C(v17, v20, &qword_1ECC44118, &qword_1DB514140);
  *v21 = v19;
  sub_1DB30C200(v20, (v21 + 8));
  v11 = *(v3 + 28);
  v12 = *(v22 + 24);
  v13 = sub_1DB509930();
  (*(*(v13 - 8) + 32))(v21 + v12, &v20[v11], v13);
  sub_1DB382904(v21, v24);
  swift_storeEnumTagMultiPayload();
  sub_1DB30C06C(v24, v23, &qword_1ECC44120, &qword_1DB514148);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1DB381444()
{
  v1 = v0[28];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[6];
  __swift_deallocate_boxed_opaque_existential_0((v0 + 2));
  (*(v5 + 8))(v3, v4);
  sub_1DB38288C(v2);
  *v6 = v1;
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1DB3815D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 16);
  a2[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a2);
  return v5(v3, v4);
}

uint64_t sub_1DB381678@<X0>(void (*a1)(timespec *__return_ptr, uint64_t)@<X0>, _OWORD *a2@<X8>)
{
  v36 = a2;
  v37 = a1;
  v2 = sub_1DB509DD0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for MonotonicTimeReference(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7JetCore18SystemDateProviderV3now10Foundation0D0Vvg_0();
  static MonotonicTime.now.getter(&v39);
  v17 = &v16[*(v14 + 28)];
  *v17 = v39;
  v18 = *(v3 + 16);
  v19 = v18(v12, v16, v2);
  v20 = v40;
  v37(&v39, v19);
  if (v20)
  {
    (*(v3 + 8))(v12, v2);
    return sub_1DB38288C(v16);
  }

  else
  {
    v32 = v3;
    v33 = v18;
    v37 = 0;
    v40 = v12;
    v22 = v2;
    v23 = v34;
    sub_1DB30C200(&v39, v36);
    static MonotonicTime.now.getter(&v39);
    tv_sec = v39.tv_sec;
    tv_nsec = v39.tv_nsec;
    v27 = v17->tv_sec;
    v26 = v17->tv_nsec;
    v39.tv_sec = v27;
    v39.tv_nsec = v26;
    v38[0] = tv_sec;
    v38[1] = tv_nsec;
    sub_1DB49B574(&v39.tv_sec, v38);
    if (qword_1EE30ED48 != -1)
    {
      swift_once();
    }

    v28 = v9;
    sub_1DB509D60();
    v29 = v40;
    v30 = v33;
    v33(v23, v40, v22);
    v30(v35, v28, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44118, &qword_1DB514140);
    sub_1DB509910();
    v31 = *(v32 + 8);
    v31(v28, v22);
    v31(v29, v22);
    return sub_1DB38288C(v16);
  }
}

uint64_t sub_1DB3819D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(v5 + 16);
  a2[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0(a2);
  result = v6(v4, v5);
  if (v2)
  {
    return __swift_deallocate_boxed_opaque_existential_0(a2);
  }

  return result;
}

_OWORD *sub_1DB381A90@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_1DB30EE50(a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_1DB31A6AC(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_1DB30EE50(a2);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_1DB50BC20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_1DB311D10();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    result = sub_1DB31E8A8(v11, a2, a1, v10);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = 32 * v11;
  sub_1DB30C200((v10[7] + 32 * v11), a3);
  result = sub_1DB30C200(a1, (v10[7] + v18));
LABEL_11:
  *v5 = v10;
  return result;
}

uint64_t sub_1DB381BC4@<X0>(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  v10 = sub_1DB314CBC();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v11;
  if (v9[3] < v15)
  {
    sub_1DB31AC7C(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_1DB314CBC();
    if ((v4 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v10 = sub_1DB50BC20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = v10;
    sub_1DB3120BC();
    v10 = v19;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1DB31EBC4();
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = 40 * v10;
  sub_1DB30C7A8((v9[7] + 40 * v10), a3);
  result = sub_1DB30C7A8(a1, v9[7] + v17);
LABEL_11:
  *v5 = v9;
  return result;
}

uint64_t sub_1DB381D18@<X0>(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  v10 = sub_1DB314CBC();
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v11;
  if (v9[3] < v15)
  {
    sub_1DB31AC90(v15, isUniquelyReferenced_nonNull_native);
    v10 = sub_1DB314CBC();
    if ((v4 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v10 = sub_1DB50BC20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = v10;
    sub_1DB3120D0();
    v10 = v19;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1DB31EBC4();
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = 40 * v10;
  sub_1DB30C7A8((v9[7] + 40 * v10), a3);
  result = sub_1DB30C7A8(a1, v9[7] + v17);
LABEL_11:
  *v5 = v9;
  return result;
}

unint64_t sub_1DB381E6C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  result = sub_1DB314CBC();
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_1DB31C274(v18, isUniquelyReferenced_nonNull_native);
    result = sub_1DB314CBC();
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    result = sub_1DB50BC20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v27 = result;
    sub_1DB312CF4();
    result = v27;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1DB31EA18(result, a2, a3, a1, v12);

    v21 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0uLL;
    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = v12[7] + 48 * result;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 24);
  v24 = *(v20 + 32);
  v25 = *(v20 + 40);
  v26 = a1[1];
  *v20 = *a1;
  *(v20 + 16) = v26;
  *(v20 + 25) = *(a1 + 25);
LABEL_11:
  *v6 = v12;
  *a4 = v21;
  *(a4 + 8) = v22;
  *(a4 + 24) = v23;
  *(a4 + 32) = v24;
  *(a4 + 40) = v25;
  return result;
}

_OWORD *sub_1DB381FDC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  v9 = sub_1DB50B560();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  v28 = v14;
  v15 = sub_1DB30EDEC(a2);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v16;
  if (v14[3] < v20)
  {
    sub_1DB319D74(v20, isUniquelyReferenced_nonNull_native);
    v15 = sub_1DB30EDEC(a2);
    if ((v4 & 1) == (v21 & 1))
    {
      goto LABEL_6;
    }

    v15 = sub_1DB50BC20();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v25 = v15;
    sub_1DB311750();
    v15 = v25;
    v22 = v28;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v26 = v15;
    (*(v10 + 16))(v12, a2, v9);
    result = sub_1DB31E76C(v26, v12, a1, v22);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  v22 = v28;
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v23 = 32 * v15;
  sub_1DB30C200((v22[7] + 32 * v15), a3);
  result = sub_1DB30C200(a1, (v22[7] + v23));
LABEL_11:
  *v5 = v22;
  return result;
}

unint64_t sub_1DB3821B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v40 = a1;
  v41 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v42 = v8;
  v43 = 0;
  v44 = v11 & v9;
  v45 = a2;
  v46 = a3;

  sub_1DB3AF7C4(&v38);
  v12 = v38;
  if (!v38)
  {
    goto LABEL_25;
  }

  sub_1DB30C200(v39, v37);
  v13 = *a5;
  result = sub_1DB30EE50(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1DB31A6AC(v19, a4 & 1);
    result = sub_1DB30EE50(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1DB50BC20();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_1DB311D10();
    result = v24;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = (v22[7] + 32 * result);
    __swift_destroy_boxed_opaque_existential_0(v23);
    sub_1DB30C200(v37, v23);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_1DB30C200(v37, (v22[7] + 32 * result));
  v25 = v22[2];
  v18 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v18)
  {
    v22[2] = v26;
LABEL_15:
    sub_1DB3AF7C4(&v38);
    v12 = v38;
    if (v38)
    {
      v20 = 1;
      do
      {
        sub_1DB30C200(v39, v37);
        v28 = *a5;
        result = sub_1DB30EE50(v12);
        v30 = v28[2];
        v31 = (v29 & 1) == 0;
        v18 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v29;
        if (v28[3] < v32)
        {
          sub_1DB31A6AC(v32, 1);
          result = sub_1DB30EE50(v12);
          if ((a4 & 1) != (v33 & 1))
          {
            goto LABEL_8;
          }
        }

        v34 = *a5;
        if (a4)
        {
          v27 = (v34[7] + 32 * result);
          __swift_destroy_boxed_opaque_existential_0(v27);
          sub_1DB30C200(v37, v27);
        }

        else
        {
          v34[(result >> 6) + 8] |= 1 << result;
          *(v34[6] + 8 * result) = v12;
          result = sub_1DB30C200(v37, (v34[7] + 32 * result));
          v35 = v34[2];
          v18 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v34[2] = v36;
        }

        sub_1DB3AF7C4(&v38);
        v12 = v38;
      }

      while (v38);
    }

LABEL_25:
    sub_1DB2FEA60(v40);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1DB382488(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1DB3AF7C4(&v43);
  v12 = v43;
  if (!v43)
  {
    goto LABEL_25;
  }

  sub_1DB30C200(v44, v42);
  v13 = *a5;
  result = sub_1DB30EE50(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_1DB31A6AC(v19, a4 & 1);
    result = sub_1DB30EE50(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1DB50BC20();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1DB311D10();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 32 * result;
    sub_1DB300B14(*(*a5 + 56) + 32 * result, v41);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_0((v24 + v23));
    sub_1DB30C200(v41, (v24 + v23));
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + 8 * result) = v12;
  result = sub_1DB30C200(v42, (v26[7] + 32 * result));
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_1DB3AF7C4(&v43);
    v12 = v43;
    if (v43)
    {
      v20 = 1;
      do
      {
        sub_1DB30C200(v44, v42);
        v32 = *a5;
        result = sub_1DB30EE50(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_1DB31A6AC(v36, 1);
          result = sub_1DB30EE50(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 32 * result;
          sub_1DB300B14(*(*a5 + 56) + 32 * result, v41);
          __swift_destroy_boxed_opaque_existential_0(v42);
          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_0((v31 + v30));
          sub_1DB30C200(v41, (v31 + v30));
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_1DB30C200(v42, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_1DB3AF7C4(&v43);
        v12 = v43;
      }

      while (v43);
    }

LABEL_25:
    sub_1DB2FEA60(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1DB382790()
{
  result = qword_1ECC44110;
  if (!qword_1ECC44110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44110);
  }

  return result;
}

uint64_t type metadata accessor for _ResolvedDependency(uint64_t a1)
{
  result = qword_1ECC44138;
  if (!qword_1ECC44138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB38288C(uint64_t a1)
{
  v2 = type metadata accessor for MonotonicTimeReference(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DB382904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ResolvedDependency(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB382984()
{
  result = qword_1ECC44130;
  if (!qword_1ECC44130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC44128, &unk_1DB514160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44130);
  }

  return result;
}

uint64_t sub_1DB382A10(uint64_t a1)
{
  result = sub_1DB509930();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id ACAccountStore.activeAccount.getter@<X0>(void *a1@<X8>)
{
  result = [v1 ams_activeiTunesAccount];
  *a1 = result;
  return result;
}

JetCore::Account_optional __swiftcall ACAccountStore.account(forUserID:)(Swift::String forUserID)
{
  object = forUserID._object;
  v4 = v1;
  v5 = (HIBYTE(forUserID._object) & 0xF);
  forUserID._object = (forUserID._countAndFlagsBits & 0xFFFFFFFFFFFFLL);
  if ((object & 0x2000000000000000) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = forUserID._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((object & 0x1000000000000000) != 0)
  {
    countAndFlagsBits = forUserID._countAndFlagsBits;

    v8 = sub_1DB38450C(countAndFlagsBits, object, 10);
    v29 = v28;

    if (v29)
    {
      goto LABEL_63;
    }

LABEL_65:
    v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    v26 = [v2 ams:v30 iTunesAccountWithDSID:?];

    goto LABEL_66;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    v31[0] = forUserID._countAndFlagsBits;
    v31[1] = object & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(forUserID._countAndFlagsBits) == 43)
    {
      if (v5)
      {
        if (--v5)
        {
          v8 = 0;
          v18 = v31 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_71:
      __break(1u);
      return *&forUserID._countAndFlagsBits;
    }

    if (LOBYTE(forUserID._countAndFlagsBits) != 45)
    {
      if (v5)
      {
        v8 = 0;
        v23 = v31;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v8 = 0;
        v12 = v31 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if ((forUserID._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    forUserID._countAndFlagsBits = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    forUserID._countAndFlagsBits = sub_1DB50B440();
  }

  v7 = *forUserID._countAndFlagsBits;
  if (v7 == 43)
  {
    if (forUserID._object >= 1)
    {
      v5 = forUserID._object - 1;
      if (forUserID._object != 1)
      {
        v8 = 0;
        if (forUserID._countAndFlagsBits)
        {
          v15 = (forUserID._countAndFlagsBits + 1);
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              goto LABEL_61;
            }

            v17 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v17 + v16;
            if (__OFADD__(v17, v16))
            {
              goto LABEL_61;
            }

            ++v15;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v7 == 45)
  {
    if (forUserID._object >= 1)
    {
      v5 = forUserID._object - 1;
      if (forUserID._object != 1)
      {
        v8 = 0;
        if (forUserID._countAndFlagsBits)
        {
          v9 = (forUserID._countAndFlagsBits + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (forUserID._object)
  {
    v8 = 0;
    if (forUserID._countAndFlagsBits)
    {
      while (1)
      {
        v21 = *forUserID._countAndFlagsBits - 48;
        if (v21 > 9)
        {
          goto LABEL_61;
        }

        v22 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          goto LABEL_61;
        }

        v8 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_61;
        }

        ++forUserID._countAndFlagsBits;
        if (!--forUserID._object)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v8 = 0;
  LOBYTE(v5) = 1;
LABEL_62:
  v32 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_63:
  v26 = 0;
LABEL_66:
  *v4 = v26;
  return *&forUserID._countAndFlagsBits;
}

uint64_t ACAccountStore.onActiveAccountChange.getter()
{
  v0 = *(sub_1DB382F04() + 16);

  sub_1DB3370CC(&qword_1ECC44178, &qword_1ECC44180, &qword_1DB5141C0, &protocol conformance descriptor for AsyncEvent<A>);
  return v0;
}

uint64_t sub_1DB382F04()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &off_1ECC44148);
  swift_endAccess();
  if (v1)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for _ACAccountStoreObserver();
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_1DB301DBC(v6);
  }

  objc_sync_enter(v0);
  sub_1DB382FF4(v0, v6);
  objc_sync_exit(v0);
  return *&v6[0];
}

uint64_t sub_1DB382FF4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = objc_getAssociatedObject(a1, &off_1ECC44148);
  swift_endAccess();
  if (v4)
  {
    sub_1DB50B200();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_1DB301DBC(v12);
    goto LABEL_8;
  }

  type metadata accessor for _ACAccountStoreObserver();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44180, &qword_1DB5141C0);
    swift_allocObject();
    v7 = sub_1DB3ADCE4();
    v8 = sub_1DB383190();
    type metadata accessor for _ACAccountStoreObserver();
    swift_allocObject();
    v6 = sub_1DB384B90(v7, v8);

    swift_beginAccess();

    objc_setAssociatedObject(a1, &off_1ECC44148, v6, 0x301);
    swift_endAccess();

    goto LABEL_9;
  }

  v6 = v9;
LABEL_9:
  *a2 = v6;
  return result;
}

id sub_1DB383190()
{
  if (qword_1EE30E190 != -1)
  {
    swift_once();
  }

  if (byte_1EE30E198 == 1)
  {
    if (qword_1ECC42090 != -1)
    {
      swift_once();
    }

    v0 = off_1ECC44170;
    os_unfair_lock_lock(off_1ECC44170 + 6);
    v1 = *(v0 + 2);
    v2 = v1;
    os_unfair_lock_unlock(v0 + 6);
    if (v1)
    {
      return v2;
    }
  }

  v4 = [objc_opt_self() defaultCenter];

  return v4;
}

id sub_1DB38328C@<X0>(void *a1@<X8>)
{
  result = [*v1 ams_activeiTunesAccount];
  *a1 = result;
  return result;
}

uint64_t sub_1DB3832EC()
{
  v0 = *(sub_1DB382F04() + 16);

  sub_1DB3370CC(&qword_1ECC44178, &qword_1ECC44180, &qword_1DB5141C0, &protocol conformance descriptor for AsyncEvent<A>);
  return v0;
}

id static AccountProvider<>.appleServices.getter()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];

  return v0;
}

id static AccountProvider<>.appleServices(forMediaType:)(uint64_t a1)
{
  v1 = [objc_opt_self() ams:a1 sharedAccountStoreForMediaType:?];

  return v1;
}

uint64_t sub_1DB383420()
{
  [*(v0 + 24) removeObserver_];

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DB383474(char a1)
{
  v3 = sub_1DB50A400();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DB50A440();
  v7 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *(v1 + 16);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1 & 1;
  aBlock[4] = sub_1DB384ABC;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DB357C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0, MEMORY[0x1E69E6328]);
  sub_1DB50B240();
  MEMORY[0x1E12864B0](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_1DB38371C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DB50A400();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DB50A440();
  v8 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1DB384B10;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DB3330B0;
  aBlock[3] = &block_descriptor_13;
  v12 = _Block_copy(aBlock);

  _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DB357C48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
  sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0, MEMORY[0x1E69E6328]);
  sub_1DB50B240();
  MEMORY[0x1E12864B0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_1DB3839D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1DB509960();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB509940();

  sub_1DB383474(a4);
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DB383ACC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44188, &qword_1DB514230);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1ECC44170 = result;
  return result;
}

uint64_t sub_1DB383B10(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result + 32;
    result = swift_beginAccess();
    for (i = 0; i != v3; ++i)
    {
      v8 = *(a2 + 24);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = 0;
        while (*(v8 + 8 * v10 + 32) != *(v6 + 8 * i))
        {
          if (v9 == ++v10)
          {
            goto LABEL_3;
          }
        }

        swift_beginAccess();

        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 24) = v8;
        if ((result & 1) == 0)
        {
          result = a3(v8);
          v8 = result;
          *(a2 + 24) = result;
        }

        v11 = *(v8 + 16);
        if (v11 <= v10)
        {
          __break(1u);
          return result;
        }

        v12 = v11 - 1;
        memmove((v8 + 8 * v10 + 32), (v8 + 8 * v10 + 40), 8 * (v11 - v10) - 8);
        *(v8 + 16) = v12;
        *(a2 + 24) = v8;
        swift_endAccess();
      }

LABEL_3:
      ;
    }
  }

  return result;
}

uint64_t sub_1DB383C58(uint64_t a1, char a2)
{
  v4 = sub_1DB50A440();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1DB50A400();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v26 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = a2 & 1;

    v11 = MEMORY[0x1E69E7CC0];
    v12 = 32;
    do
    {
      v13 = *(v8 + v12);
      v14 = *(*v13 + 88);

      if (v14(v15) & 1) != 0 && (LOBYTE(aBlock[0]) = v10, v16 = (*(*v13 + 104))(aBlock), (v14(v16)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1DB30336C(0, v11[2] + 1, 1, v11);
        }

        v18 = v11[2];
        v17 = v11[3];
        if (v18 >= v17 >> 1)
        {
          v11 = sub_1DB30336C((v17 > 1), v18 + 1, 1, v11);
        }

        v11[2] = v18 + 1;
        v11[v18 + 4] = v13;
      }

      v12 += 8;
      --v9;
    }

    while (v9);

    if (v11[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1DB50EE90;
      sub_1DB50A3F0();
      aBlock[0] = v19;
      sub_1DB357C48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
      sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0, MEMORY[0x1E69E6328]);
      v20 = v26;
      v21 = v28;
      sub_1DB50B240();
      v22 = swift_allocObject();
      *(v22 + 16) = v11;
      *(v22 + 24) = a1;
      aBlock[4] = sub_1DB384AE0;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DB3330B0;
      aBlock[3] = &block_descriptor_7;
      v23 = _Block_copy(aBlock);

      v24 = v27;
      _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1E12864B0](0, v24, v20, v23);
      _Block_release(v23);
      (*(v29 + 8))(v24, v30);
      (*(v6 + 8))(v20, v21);
    }
  }
}

uint64_t sub_1DB3840B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DB50A440();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DB50A400();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(a1 + 24);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = MEMORY[0x1E69E7CC0];
    v11 = 32;
    do
    {
      v12 = *(v8 + v11);
      v13 = *(*v12 + 88);

      if (v13(v14) & 1) != 0 && (aBlock[0] = a2, v15 = (*(*v12 + 104))(aBlock), (v13(v15)))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1DB3036DC(0, v10[2] + 1, 1, v10);
        }

        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          v10 = sub_1DB3036DC((v16 > 1), v17 + 1, 1, v10);
        }

        v10[2] = v17 + 1;
        v10[v17 + 4] = v12;
      }

      v11 += 8;
      --v9;
    }

    while (v9);

    if (v10[2])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC435F0, &unk_1DB514220);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      sub_1DB50A3F0();
      aBlock[0] = v18;
      sub_1DB357C48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC45390, &qword_1DB511EF0);
      sub_1DB3370CC(&qword_1EE30E350, &unk_1ECC45390, &qword_1DB511EF0, MEMORY[0x1E69E6328]);
      v19 = v25;
      v20 = v27;
      sub_1DB50B240();
      v21 = swift_allocObject();
      *(v21 + 16) = v10;
      *(v21 + 24) = a1;
      aBlock[4] = sub_1DB384B60;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DB3330B0;
      aBlock[3] = &block_descriptor_19;
      v22 = _Block_copy(aBlock);

      v23 = v26;
      _s7JetCore22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0();
      MEMORY[0x1E12864B0](0, v23, v19, v22);
      _Block_release(v22);
      (*(v28 + 8))(v23, v29);
      (*(v6 + 8))(v19, v20);
    }
  }
}

unsigned __int8 *sub_1DB38450C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1DB50A860();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DB412E70(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1DB50B440();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_3Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1DB384B90(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v4 = qword_1ECC42080;

  v5 = a2;

  if (v4 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v2 selector:sel_accountStoreDidChange_ name:qword_1ECC44160 object:0];

  v6 = qword_1ECC42088;

  if (v6 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v2 selector:sel_accountCookiesDidChange_ name:qword_1ECC44168 object:0];

  return v2;
}

uint64_t sub_1DB384CD0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[40] = a1;
  v3[41] = v4;
  v5 = v2[1];
  v3[42] = *v2;
  v3[43] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1DB384CFC, 0, 0);
}

uint64_t sub_1DB384CFC()
{
  v1 = v0[42];
  v2 = v0[40];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  LOBYTE(v1) = sub_1DB3C7148(v5, v1);

  if (v1)
  {
    v6 = v0[43];
    v7 = sub_1DB50A620();
    v8 = [v6 dictionaryForKey_];

    v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC46780, &qword_1DB5142C0);
    v9 = swift_allocObject();
    v0[45] = v9;
    v9[2] = v8;
    v9[3] = sub_1DB3C8F68;
    v9[4] = 0;
    v10 = swift_task_alloc();
    v0[46] = v10;
    *v10 = v0;
    v10[1] = sub_1DB384EC4;

    return sub_1DB3C7238(v9);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1DB384EC4(uint64_t a1)
{
  *(*v1 + 376) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB384FE4, 0, 0);
}

uint64_t sub_1DB384FE4()
{
  result = sub_1DB4F0D44(0xD000000000000019, 0x80000001DB5297E0, *(v0 + 328));
  if (v2)
  {
    v3 = result;
    v4 = v2;
    v5 = *(v0 + 344);
    sub_1DB50B320();

    MEMORY[0x1E1285C70](v3, v4);

    MEMORY[0x1E1285C70](0x7363697274656D2FLL, 0xEC00000065736142);
    v6 = sub_1DB50A620();

    v7 = [v5 dictionaryForKey_];

    v8 = swift_allocObject();
    *(v0 + 384) = v8;
    v8[2] = v7;
    v8[3] = sub_1DB3C8F68;
    v8[4] = 0;
    v9 = swift_task_alloc();
    *(v0 + 392) = v9;
    *v9 = v0;
    v9[1] = sub_1DB385424;

    return sub_1DB38582C(v8);
  }

  else
  {
    v10 = 0;
    v11 = *(v0 + 376);
    v14 = *(v11 + 64);
    v13 = v11 + 64;
    v12 = v14;
    v37 = *(v0 + 376);
    v15 = -1;
    v16 = -1 << *(v37 + 32);
    if (-v16 < 64)
    {
      v15 = ~(-1 << -v16);
    }

    v17 = v15 & v12;
    v18 = (63 - v16) >> 6;
    v19 = MEMORY[0x1E69E69B8];
    v36 = v13;
    if ((v15 & v12) == 0)
    {
      goto LABEL_11;
    }

    do
    {
      while (1)
      {
        v20 = v10;
LABEL_18:
        v23 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v24 = v23 | (v20 << 6);
        sub_1DB314C3C(*(v37 + 48) + 40 * v24, v0 + 160);
        sub_1DB300B14(*(v37 + 56) + 32 * v24, v0 + 240);
        v25 = *(v0 + 176);
        *(v0 + 88) = *(v0 + 160);
        *(v0 + 104) = v25;
        *(v0 + 120) = *(v0 + 192);
        sub_1DB30C200((v0 + 240), (v0 + 128));
        v22 = v20;
LABEL_19:
        *(v0 + 80) = *(v0 + 152);
        v26 = *(v0 + 136);
        *(v0 + 48) = *(v0 + 120);
        *(v0 + 64) = v26;
        v27 = *(v0 + 104);
        *(v0 + 16) = *(v0 + 88);
        *(v0 + 32) = v27;
        if (!*(v0 + 40))
        {

          v35 = *(v0 + 8);

          return v35();
        }

        sub_1DB30C200((v0 + 56), (v0 + 272));
        v28 = *(v0 + 32);
        *(v0 + 200) = *(v0 + 16);
        *(v0 + 216) = v28;
        *(v0 + 232) = *(v0 + 48);
        if (swift_dynamicCast())
        {
          break;
        }

        result = __swift_destroy_boxed_opaque_existential_0((v0 + 272));
        v10 = v22;
        if (!v17)
        {
          goto LABEL_11;
        }
      }

      v29 = v19;
      v31 = *(v0 + 312);
      v30 = *(v0 + 320);
      v32 = *(v0 + 304);
      v33 = *(v30 + 24);
      v34 = *(v30 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v30, v33);
      (*(v34 + 16))(v0 + 272, v32, v31, v33, v34);
      __swift_destroy_boxed_opaque_existential_0((v0 + 272));

      v10 = v22;
      v19 = v29;
      v13 = v36;
    }

    while (v17);
LABEL_11:
    if (v18 <= v10 + 1)
    {
      v21 = v10 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v17 = 0;
        *(v0 + 152) = 0;
        *(v0 + 136) = 0u;
        *(v0 + 120) = 0u;
        *(v0 + 104) = 0u;
        *(v0 + 88) = 0u;
        goto LABEL_19;
      }

      v17 = *(v13 + 8 * v20);
      ++v10;
      if (v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DB385424(uint64_t a1)
{
  *(*v1 + 400) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB385544, 0, 0);
}

void sub_1DB385544()
{
  v30 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v2;
    sub_1DB385E7C(v1, sub_1DB385E38, 0, isUniquelyReferenced_nonNull_native, &v29);

    v2 = v29;
  }

  v4 = 0;
  v5 = v2 + 64;
  v6 = -1;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v2 + 64);
  v9 = (63 - v7) >> 6;
  v10 = MEMORY[0x1E69E69B8];
  v27 = v2 + 64;
  v28 = v2;
  if (!v8)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v11 = v4;
LABEL_16:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = v14 | (v11 << 6);
      sub_1DB314C3C(*(v2 + 48) + 40 * v15, v0 + 160);
      sub_1DB300B14(*(v2 + 56) + 32 * v15, v0 + 240);
      v16 = *(v0 + 176);
      *(v0 + 88) = *(v0 + 160);
      *(v0 + 104) = v16;
      *(v0 + 120) = *(v0 + 192);
      sub_1DB30C200((v0 + 240), (v0 + 128));
      v13 = v11;
LABEL_17:
      *(v0 + 80) = *(v0 + 152);
      v17 = *(v0 + 136);
      *(v0 + 48) = *(v0 + 120);
      *(v0 + 64) = v17;
      v18 = *(v0 + 104);
      *(v0 + 16) = *(v0 + 88);
      *(v0 + 32) = v18;
      if (!*(v0 + 40))
      {

        v26 = *(v0 + 8);

        v26();
        return;
      }

      sub_1DB30C200((v0 + 56), (v0 + 272));
      v19 = *(v0 + 32);
      *(v0 + 200) = *(v0 + 16);
      *(v0 + 216) = v19;
      *(v0 + 232) = *(v0 + 48);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 272));
      v4 = v13;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v20 = v10;
    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    v23 = *(v0 + 304);
    v24 = *(v21 + 24);
    v25 = *(v21 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v21, v24);
    (*(v25 + 16))(v0 + 272, v23, v22, v24, v25);
    __swift_destroy_boxed_opaque_existential_0((v0 + 272));

    v4 = v13;
    v10 = v20;
    v5 = v27;
    v2 = v28;
  }

  while (v8);
LABEL_9:
  if (v9 <= v4 + 1)
  {
    v12 = v4 + 1;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      v8 = 0;
      *(v0 + 152) = 0;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      goto LABEL_17;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1DB38584C()
{
  *(v0 + 296) = (*(**(v0 + 288) + 88))();

  return MEMORY[0x1EEE6DFA0](sub_1DB3858D8, 0, 0);
}

uint64_t sub_1DB3858D8()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1DB3859A4;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1DB308440(v2);
  sub_1DB30623C(v2, &qword_1ECC42840, &qword_1DB5142D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1DB3859A4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 304) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1DB385AF4, 0, 0);
  }

  else
  {

    v5 = *(v2 + 160);
    v6 = *(v3 + 8);

    return v6(v5);
  }
}

uint64_t sub_1DB385AF4()
{
  v19 = v0;

  swift_getErrorValue();
  if (sub_1DB3C8450(*(v0 + 232), *(v0 + 240)))
  {
    v1 = *(v0 + 304);
  }

  else
  {
    if (qword_1ECC422A8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1DB50EE90;
    v17 = sub_1DB301BC0(0, 34, 0, MEMORY[0x1E69E7CC0]);
    v3._object = 0x80000001DB52BB40;
    v3._countAndFlagsBits = 0xD000000000000021;
    LogMessage.StringInterpolation.appendLiteral(_:)(v3);
    swift_getErrorValue();
    v4 = *(v0 + 248);
    v5 = *(v0 + 256);
    *(v0 + 184) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 160));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v4, v5);
    sub_1DB301CDC(v0 + 160, v0 + 192);
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    sub_1DB301D4C(v0 + 192, v0 + 80);
    *(v0 + 112) = 0;
    v7 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1DB301BC0(0, *(v17 + 2) + 1, 1, v17);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1DB301BC0((v8 > 1), v9 + 1, 1, v7);
    }

    v10 = *(v0 + 304);
    *(v7 + 2) = v9 + 1;
    v11 = &v7[40 * v9];
    v12 = *(v0 + 80);
    v13 = *(v0 + 96);
    v11[64] = *(v0 + 112);
    *(v11 + 2) = v12;
    *(v11 + 3) = v13;
    sub_1DB30623C(v0 + 160, &qword_1ECC426B0, &qword_1DB50EEB0);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    *(v2 + 32) = v7;
    v18 = 0;
    OSLogger.log(contentsOf:withLevel:)(v2, &v18);

    v1 = v10;
  }

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_1DB385D94(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DB306AF4;

  return sub_1DB384CD0(a1, a2);
}

uint64_t sub_1DB385E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DB314C3C(a1, a2);

  return sub_1DB300B14(a1 + 40, a2 + 40);
}

unint64_t sub_1DB385E7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v52 = a1;
  v53 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v54 = v8;
  v55 = 0;
  v56 = v11 & v9;
  v57 = a2;
  v58 = a3;

  sub_1DB3AF910(&v48);
  if (!*(&v49 + 1))
  {
    goto LABEL_25;
  }

  v45 = v48;
  v46 = v49;
  v47 = v50;
  sub_1DB30C200(v51, v44);
  v12 = *a5;
  result = sub_1DB30EDA8(&v45);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    sub_1DB31A3F4(v18, a4 & 1);
    result = sub_1DB30EDA8(&v45);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1DB50BC20();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_1DB311B6C();
    result = v24;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = result;
    sub_1DB314BE8(&v45);
    v23 = (v21[7] + 32 * v22);
    __swift_destroy_boxed_opaque_existential_0(v23);
    sub_1DB30C200(v44, v23);
    goto LABEL_15;
  }

LABEL_13:
  v21[(result >> 6) + 8] |= 1 << result;
  v25 = v21[6] + 40 * result;
  v26 = v45;
  v27 = v46;
  *(v25 + 32) = v47;
  *v25 = v26;
  *(v25 + 16) = v27;
  result = sub_1DB30C200(v44, (v21[7] + 32 * result));
  v28 = v21[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v21[2] = v29;
LABEL_15:
    sub_1DB3AF910(&v48);
    if (*(&v49 + 1))
    {
      v19 = 1;
      do
      {
        v45 = v48;
        v46 = v49;
        v47 = v50;
        sub_1DB30C200(v51, v44);
        v32 = *a5;
        result = sub_1DB30EDA8(&v45);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v17 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1DB31A3F4(v36, 1);
          result = sub_1DB30EDA8(&v45);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;
          sub_1DB314BE8(&v45);
          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_1DB30C200(v44, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = v38[6] + 40 * result;
          v40 = v45;
          v41 = v46;
          *(v39 + 32) = v47;
          *v39 = v40;
          *(v39 + 16) = v41;
          result = sub_1DB30C200(v44, (v38[7] + 32 * result));
          v42 = v38[2];
          v17 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v38[2] = v43;
        }

        sub_1DB3AF910(&v48);
      }

      while (*(&v49 + 1));
    }

LABEL_25:
    sub_1DB2FEA60(v52);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t SyncEvent.__allocating_init()()
{
  v0 = swift_allocObject();
  SyncEvent.init()();
  return v0;
}

id SyncEvent.post(_:)(uint64_t a1)
{
  v3 = v1[2];
  [v3 lock];
  sub_1DB3866CC(v1, a1);

  return [v3 unlock];
}

uint64_t *SyncEvent.init()()
{
  v1 = *v0;
  v0[2] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  type metadata accessor for EventSubscription(0, *(v1 + 80), v2, v3);
  v0[3] = sub_1DB50A9D0();
  return v0;
}

id SyncEvent.addObserver<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, v7);
  EventSubscription.init<A>(_:)(v9, a2, &v15);
  v11 = v15;
  v12 = v4[2];
  [v12 lock];
  sub_1DB38645C(v4, v11);
  result = [v12 unlock];
  *a4 = v11;
  return result;
}

uint64_t sub_1DB38645C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  type metadata accessor for EventSubscription(255, *(v2 + 80), v3, v4);
  sub_1DB50AA60();

  sub_1DB50AA10();
  return swift_endAccess();
}

id SyncEvent.removeObserver(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = v1[2];
  [v3 lock];
  sub_1DB386598(v1, v2);

  return [v3 unlock];
}

void *sub_1DB386598(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  type metadata accessor for EventSubscription(255, *(v2 + 80), v3, v4);
  sub_1DB50AA60();
  swift_getWitnessTable();
  swift_getWitnessTable();
  result = sub_1DB50AE80();
  if (v6 != 1)
  {
    swift_beginAccess();
    sub_1DB50AA20();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1DB3866CC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  v18 = a1[3];
  type metadata accessor for EventSubscription(255, *(v3 + 80), v4, v5);
  v6 = sub_1DB50AA60();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1E1285D90](&v16, v6, WitnessTable);
  v19 = v16;
  sub_1DB50B5C0();
  sub_1DB50B590();
  sub_1DB50B5B0();
  sub_1DB50B5A0();
  v8 = v17;
  if (v17)
  {
    v9 = v16;
    v10 = MEMORY[0x1E69E7CC0];
    do
    {
      v16 = v8;
      if (EventSubscription.isValid.getter() & 1) != 0 && (v16 = v8, EventSubscription.notify(_:)(), v16 = v8, (EventSubscription.isValid.getter()))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1DB302EC8(0, *(v10 + 2) + 1, 1, v10);
        }

        v12 = *(v10 + 2);
        v11 = *(v10 + 3);
        if (v12 >= v11 >> 1)
        {
          v10 = sub_1DB302EC8((v11 > 1), v12 + 1, 1, v10);
        }

        *(v10 + 2) = v12 + 1;
        *&v10[8 * v12 + 32] = v9;
      }

      sub_1DB50B5A0();
      v9 = v16;
      v8 = v17;
    }

    while (v17);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v10 + 2);
  if (!v14)
  {
  }

  while (v14 <= *(v10 + 2))
  {
    v15 = v14 - 1;
    swift_beginAccess();
    sub_1DB50AA20();
    swift_endAccess();

    v14 = v15;
    if (!v15)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t SyncEvent.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

__n128 CompoundAction.init(actionMetrics:subactions:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = a2;
  return result;
}

uint64_t sub_1DB386A80()
{
  if (*v0)
  {
    return 0x6F69746361627573;
  }

  else
  {
    return 0x654D6E6F69746361;
  }
}

uint64_t sub_1DB386ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746361627573 && a2 == 0xEA0000000000736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

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

uint64_t sub_1DB386BB8(uint64_t a1)
{
  v2 = sub_1DB386EBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB386BF4(uint64_t a1)
{
  v2 = sub_1DB386EBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompoundAction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC44190, &qword_1DB514340);
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1DB386EBC();
  sub_1DB50BDF0();
  if (!v2)
  {
    v23 = v5;
    v26 = 0;
    sub_1DB37C0CC();
    v9 = v24;
    sub_1DB50B710();
    v10 = v25[0];
    if (!v25[0])
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v22 = v10;
    v11 = MEMORY[0x1E69E7CC8];
    if (v25[0])
    {
      v11 = v25[1];
    }

    v21 = v11;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v12 = sub_1DB50BDE0();
    v13 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v12);
    v15 = v14;

    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = &type metadata for EmptyActionKindTable;
    }

    if (v13)
    {
      v17 = v15;
    }

    else
    {
      v17 = &off_1F56F1850;
    }

    LOBYTE(v25[0]) = 1;
    v18 = sub_1DB386F10(v16, v7, v25, v16, &type metadata for CompoundAction.CodingKeys, v17, v8);
    (*(v23 + 8))(v7, v9);
    v19 = v21;
    *a2 = v22;
    a2[1] = v19;
    a2[2] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB386EBC()
{
  result = qword_1ECC44198;
  if (!qword_1ECC44198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC44198);
  }

  return result;
}

void *sub_1DB386F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for _CodeByKind_Many(0, a4, *(a6 + 8), a4);
  sub_1DB50B7C0();
  swift_getWitnessTable();
  result = sub_1DB50B780();
  if (!v7)
  {
    return v9;
  }

  return result;
}

uint64_t CompoundAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A0, &qword_1DB514348);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = v1[1];
  v20 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1DB386EBC();

  v19 = v9;
  sub_1DB50BE40();
  v22[0] = v7;
  v22[1] = v8;
  v23 = 0;
  sub_1DB37BCC8();
  v10 = v21;
  sub_1DB50B8A0();

  if (!v10)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v11 = sub_1DB50BE30();
    v12 = sub_1DB31F3BC(0xD000000000000023, 0x80000001DB5298A0, v11);
    v14 = v13;

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = &type metadata for EmptyActionKindTable;
    }

    if (v12)
    {
      v16 = v14;
    }

    else
    {
      v16 = &off_1F56F1850;
    }

    LOBYTE(v22[0]) = 1;
    sub_1DB3871F8(v20, v15, v6, v22, v15, &type metadata for CompoundAction.CodingKeys, v16, v19);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DB3871F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a7 + 8);
  _CodeByKind_Many.init(wrappedValue:)();
  sub_1DB50B8C0();
  type metadata accessor for _CodeByKind_Many(0, a5, v9, v10);

  swift_getWitnessTable();
  sub_1DB50B8A0();
}

uint64_t CompoundAction.actionMetrics.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 CompoundAction.actionMetrics.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t CompoundAction.subactions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CompoundAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, &v28);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v27);

  v7 = sub_1DB320870(v27, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v27);
  v31 = v6;
  ScalarDictionary.init(tryDeserializing:using:)(v27, &v31, &v24);
  sub_1DB3151CC(&v28);
  v8 = v24;
  JSONObject.subscript.getter(0x6F69746361627573, 0xEA0000000000736ELL, v27);
  JSONObject.array.getter(&v24);
  v9 = sub_1DB3151CC(v27);
  if (*(&v25 + 1))
  {
    v22 = v8;
    v23 = v7;
    v21[0] = a3;
    v21[1] = v21;
    v28 = v24;
    v29 = v25;
    v30 = v26;
    MEMORY[0x1EEE9AC00](v9);
    v20[2] = v6;
    v11 = *(&v29 + 1);
    v10 = v30;
    __swift_project_boxed_opaque_existential_1(&v28, *(&v29 + 1));
    v12 = *(v10 + 48);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC441A8, &qword_1DB514350);
    v14 = v12(sub_1DB387744, v20, v13, v11, v10);

    if (v3)
    {

      sub_1DB3151CC(a1);
      return sub_1DB314F08(&v28);
    }

    else
    {
      sub_1DB3151CC(a1);
      result = sub_1DB314F08(&v28);
      v18 = v21[0];
      v19 = v22;
      *v21[0] = v23;
      *(v18 + 8) = v19;
      *(v18 + 16) = v14;
    }
  }

  else
  {

    sub_1DB3876DC(&v24);
    sub_1DB315178();
    swift_allocError();
    *v16 = xmmword_1DB514330;
    v17 = MEMORY[0x1E69E7CC0];
    *(v16 + 16) = 0x40000001F56F5018uLL;
    *(v16 + 24) = v17;
    swift_willThrow();
    return sub_1DB3151CC(a1);
  }

  return result;
}

uint64_t sub_1DB3876DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42E28, &qword_1DB50FB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB387784()
{
  result = qword_1ECC441B0;
  if (!qword_1ECC441B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC441B0);
  }

  return result;
}

unint64_t sub_1DB3877DC()
{
  result = qword_1ECC441B8;
  if (!qword_1ECC441B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC441B8);
  }

  return result;
}

unint64_t sub_1DB387834()
{
  result = qword_1ECC441C0;
  if (!qword_1ECC441C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC441C0);
  }

  return result;
}

void *sub_1DB387888()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000014, 0x80000001DB52BBF0, v0, v18, v15);
  if (!v1)
  {
    v3 = v18[0];
    if (v18[0])
    {
      v4 = sqlite3_step(v18[0]);
      if (qword_1EE30C820 != -1)
      {
        swift_once();
      }

      if (sub_1DB331244(v4, qword_1EE312D90) && (v5 = sub_1DB3AD5F0(&unk_1F56F0548), v6 = sub_1DB331244(v4, v5), , v6))
      {
        if (sqlite3_column_type(v3, 0) != 5)
        {
          v13 = sqlite3_column_int(v3, 0);
          sqlite3_finalize(v3);
          return v13;
        }

        if (qword_1EE30C928 != -1)
        {
          swift_once();
        }

        sub_1DB50BEB0();
        v7 = v16;
        v8 = v17;
        __swift_project_boxed_opaque_existential_1(v15, v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1DB50EE90;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1DB50EE90;
        v14[3] = MEMORY[0x1E69E6158];
        v14[0] = 0xD00000000000002ALL;
        v14[1] = 0x80000001DB52BC10;
        *(v10 + 48) = 0u;
        *(v10 + 32) = 0u;
        sub_1DB301D4C(v14, v10 + 32);
        *(v10 + 64) = 0;
        *(v9 + 32) = v10;
        Logger.error(_:)(v9, v7, v8);

        __swift_destroy_boxed_opaque_existential_0(v15);
        sub_1DB388320();
        swift_allocError();
        *v11 = 0xD00000000000002ALL;
        *(v11 + 8) = 0x80000001DB52BC10;
        *(v11 + 16) = 1;
      }

      else
      {
        sub_1DB388320();
        swift_allocError();
        *v12 = v4;
        *(v12 + 8) = 0;
        *(v12 + 16) = 0;
      }

      swift_willThrow();
      return sqlite3_finalize(v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_1DB387B90(int a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  sub_1DB50B320();

  v12[1] = 0x80000001DB52BBD0;
  v11 = a1;
  v4 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v4);

  MEMORY[0x1E1285C70](59, 0xE100000000000000);
  v12[0] = 0;

  result = sub_1DB4ABE94(0xD000000000000016, 0x80000001DB52BBD0, v1, v12, &v11);
  if (v2)
  {
  }

  v6 = v12[0];
  if (v12[0])
  {

    v7 = sqlite3_step(v6);
    if (qword_1EE30C820 != -1)
    {
      swift_once();
    }

    if (!sub_1DB331244(v7, qword_1EE312D90) || (v8 = sub_1DB3AD5F0(&unk_1F56F0598), v9 = sub_1DB331244(v7, v8), , !v9))
    {
      sub_1DB388320();
      swift_allocError();
      *v10 = v7;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      swift_willThrow();
    }

    return sqlite3_finalize(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}
uint64_t sub_1C49B6EEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

uint64_t sub_1C49B6F34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

uint64_t sub_1C49B6F7C(uint64_t a1, uint64_t a2)
{
  sub_1C456902C(&qword_1EC0C0BA8, &qword_1C4F40140);
  sub_1C456902C(&qword_1EC0C0BB0, &qword_1C4F40148);
  sub_1C4434188();
  sub_1C4462014();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0D130;
  v6 = v5 + v3;
  v7 = *(v2 + 56);
  v8 = sub_1C4EF9DD8();
  sub_1C43FBCE0();
  (*(v9 + 16))(v6, a1, v8);
  *(v6 + v7) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C4419C04();
  sub_1C49B7E34(v10, v11, MEMORY[0x1E6969690]);
  sub_1C4451358();

  return sub_1C4F00F28();
}

uint64_t sub_1C49B70E4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  sub_1C456902C(&qword_1EC0C0BA8, &qword_1C4F40140);
  sub_1C456902C(&qword_1EC0C0BB0, &qword_1C4F40148);
  sub_1C4434188();
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0D130;
  v12 = v11 + v10;
  v13 = *(v4 + 56);
  v14 = sub_1C4EF9DD8();
  sub_1C43FBCE0();
  (*(v15 + 16))(v12, a1, v14);
  sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a4;
  *(v12 + v13) = sub_1C4F00F28();
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C4419C04();
  sub_1C49B7E34(v17, v18, MEMORY[0x1E6969690]);
  sub_1C4451358();
  return sub_1C4F00F28();
}

uint64_t sub_1C49B729C(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C456902C(&qword_1EC0C0BA8, &qword_1C4F40140);
  sub_1C456902C(&qword_1EC0C0BB0, &qword_1C4F40148);
  sub_1C4434188();
  sub_1C4462014();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  v9 = v8 + v4;
  v10 = *(v3 + 56);
  sub_1C4418958();
  sub_1C4EF9DC8();
  sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(v9 + v10) = sub_1C4F00F28();
  sub_1C4EF9DD8();
  sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
  sub_1C4419C04();
  sub_1C49B7E34(v12, v13, MEMORY[0x1E6969690]);
  return sub_1C4F00F28();
}

uint64_t sub_1C49B7424(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C456902C(&qword_1EC0B8850, &unk_1C4F0DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  return sub_1C4F00F28();
}

uint64_t sub_1C49B74D4(uint64_t result, void (*a2)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      a2(0);
      result = sub_1C4F01728();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1C49B7560(uint64_t result, unint64_t *a2, void *a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      sub_1C4461BB8(0, a2, a3);
      result = sub_1C4F01728();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v3;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void *sub_1C49B75BC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C49B7798(v5, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_1C49B7634(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1C49B75BC(v8, v4, v2);
      MEMORY[0x1C6942830](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  sub_1C49B7798(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

void sub_1C49B7798(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = sub_1C4F01138();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      *(result + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_17:
        sub_1C4586FE4(result, a2, v4, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_17;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1C49B7918@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1C49B7950(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C49B79C4()
{
  sub_1C4EF9DD8();
  sub_1C43FBCE0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C49B7CD0()
{
  sub_1C4EF9DD8();
  sub_1C43FBCE0();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1C49B7D74(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1C4EF9DD8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1C49B70E4(v2 + v6, a1, a2, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1C49B7E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C49B7E94()
{
  v2 = *(v0 - 1016);
  v3 = *(v0 - 1024);

  return sub_1C44239FC(v2, v3);
}

void sub_1C49B7EB4(uint64_t *a1)
{
  v2 = *(sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B030();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C49BAAA0(v6);
  *a1 = v3;
}

uint64_t sub_1C49B7F68()
{
  result = sub_1C4F00F28();
  qword_1EC1525E0 = result;
  return result;
}

uint64_t sub_1C49B7FA8(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v201 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v201 - v11;
  v13 = sub_1C4EF9DD8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v233 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v231 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD230();
  v232 = v21;
  v238 = sub_1C456902C(&qword_1EC0C0BB8, &qword_1C4F40150);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBFDC();
  v236 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  v235 = v25;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v237 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD230();
  v234 = v29;
  type metadata accessor for NLLanguage(0);
  sub_1C456902C(&qword_1EC0B84C0, &qword_1C4F0DD00);
  sub_1C49B7E34(&qword_1EDDDBB40, type metadata accessor for NLLanguage, &unk_1C4F0C800);
  result = sub_1C4F00F28();
  if (!*(a1 + 16))
  {
    return result;
  }

  v240 = result;
  v228 = v15;
  v229 = v13;
  v219 = v12;
  v220 = v9;
  v31 = a1 + 64;
  v32 = 1 << *(a1 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(a1 + 64);
  v35 = (v32 + 63) >> 6;
  v36 = (v15 + 32);
  v226 = v15 + 16;
  v227 = (v15 + 8);
  v223 = 0x80000001C4FABB40;
  v224 = 0x80000001C4FABB20;
  v222 = 0x80000001C4FABB60;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v37 = 0;
  v230 = 0;
  v221 = xmmword_1C4F0F830;
  v225 = xmmword_1C4F0D130;
  while (1)
  {
    do
    {
LABEL_6:
      if (!v34)
      {
        while (1)
        {
          v39 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            break;
          }

          if (v39 >= v35)
          {

            return v240;
          }

          v38 = *(v31 + 8 * v39);
          ++v37;
          if (v38)
          {
            v37 = v39;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v38 = v34;
LABEL_12:
      v34 = (v38 - 1) & v38;
    }

    while (!*(a1 + 16));
    v241 = (v38 - 1) & v38;
    v242 = *(*(a1 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v38)))));
    v40 = sub_1C457EB50();
    if ((v41 & 1) == 0)
    {
      v34 = v241;
      goto LABEL_19;
    }

    v42 = 0;
    v43 = *(*(a1 + 56) + 8 * v40);
    v44 = (v43 + 64);
    v45 = 1 << *(v43 + 32);
    v46 = (v45 + 63) >> 6;
    v34 = v241;
    if (v46)
    {
      while (!*v44)
      {
        ++v44;
        v42 -= 64;
        if (!--v46)
        {
          goto LABEL_19;
        }
      }

      v47 = __clz(__rbit64(*v44));
      if (v47 - v45 != v42)
      {
        if (-v42 < 0)
        {
          goto LABEL_91;
        }

        v48 = v47 - v42;
        if (v48 >= v45)
        {
          goto LABEL_91;
        }

        if (((*v44 >> v47) & 1) == 0)
        {
          goto LABEL_92;
        }

        if (*(*(*(v43 + 56) + 8 * v48) + 16))
        {
          break;
        }
      }
    }

LABEL_19:
  }

  if (!sub_1C44104A8())
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4419C04();
    v50 = sub_1C49B7E34(&qword_1EC0B8590, v49, MEMORY[0x1E6969690]);
    sub_1C441D2D8(MEMORY[0x1E69E7CC0], v51, v52, v50);
  }

  sub_1C49B9148();
  sub_1C4426C64();
  v53 = sub_1C44104A8();
  if (!v53)
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4419C04();
    v62 = sub_1C49B7E34(&qword_1EC0B8590, v61, MEMORY[0x1E6969690]);
    v53 = sub_1C441D2D8(MEMORY[0x1E69E7CC0], v63, v64, v62);
  }

  sub_1C49B9614(v53, v54, v55, v56, v57, v58, v59, v60, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
  sub_1C4426C64();
  v65 = sub_1C44104A8();
  if (!v65)
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4419C04();
    v74 = sub_1C49B7E34(&qword_1EC0B8590, v73, MEMORY[0x1E6969690]);
    v65 = sub_1C441D2D8(MEMORY[0x1E69E7CC0], v75, v76, v74);
  }

  sub_1C49B99C8(v65, v66, v67, v68, v69, v70, v71, v72, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
  sub_1C4426C64();
  v77 = sub_1C44104A8();
  if (v77)
  {
    v85 = v77;
  }

  else
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    sub_1C4419C04();
    v87 = sub_1C49B7E34(&qword_1EC0B8590, v86, MEMORY[0x1E6969690]);
    v85 = sub_1C441D2D8(MEMORY[0x1E69E7CC0], v88, v89, v87);
  }

  sub_1C49B9DE4(v85, v78, v79, v80, v81, v82, v83, v84, v201, v202, v203, v204, v205, v206, v207, v208, v209, v210, v211, v212, v213, v214);
  sub_1C4426C64();
  sub_1C4419C04();
  v91 = sub_1C49B7E34(&qword_1EC0B8590, v90, MEMORY[0x1E6969690]);
  v202 = sub_1C4F00F28();
  v92 = sub_1C44104A8();
  v218 = v36;
  v208 = v91;
  if (!v92)
  {
    sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
    v92 = sub_1C4F00F28();
  }

  v93 = v230;
  v210 = v6;
  v211 = v92;
  sub_1C43FEC90();
  v98 = v97 & v96;
  v100 = (v99 + 63) >> 6;
  v239 = v101;
  v204 = v100;
  v205 = v94;
  v206 = a1;
  v207 = v4;
  if (v98)
  {
    do
    {
      v230 = v93;
LABEL_42:
      v212 = (v98 - 1) & v98;
      v213 = v95;
      v103 = __clz(__rbit64(v98)) | (v95 << 6);
      v104 = v211;
      v105 = *(v211 + 48);
      v106 = v229;
      v203 = v228[9];
      v107 = v228;
      v108 = v234;
      v209 = v228[2];
      v209(v234, v105 + v203 * v103, v229);
      v109 = *(*(v104 + 56) + 8 * v103);
      v110 = *(v238 + 48);
      v111 = v107[4];
      v216 = v109;
      v217 = v111;
      v112 = v237;
      v111(v237, v108, v106);
      *(v112 + v110) = v109;
      sub_1C456902C(&qword_1EC0C0BA8, &qword_1C4F40140);
      v113 = sub_1C456902C(&qword_1EC0C0BB0, &qword_1C4F40148) - 8;
      sub_1C4425268();
      v114 = swift_allocObject();
      *(v114 + 16) = v225;
      v115 = v114 + v108;
      v214 = *(v113 + 56);
      v215 = v114;
      v116 = v235;
      sub_1C445FFF0(v112, v235, &qword_1EC0C0BB8, &qword_1C4F40150);
      v117 = v238;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v118 = sub_1C4441118();
      (v217)(v118);
      v119 = v236;
      sub_1C445FFF0(v112, v236, &qword_1EC0C0BB8, &qword_1C4F40150);
      *(v115 + v214) = *(v119 + *(v117 + 48));
      v120 = v228[1];
      v120(v119, v116);
      sub_1C456902C(&qword_1EC0C6370, &qword_1C4F0E1A0);
      v121 = sub_1C4F00F28();
      sub_1C49BA174(v121);
      v123 = v122;
      v125 = v124;

      v126 = 0;
      v127 = 1 << *(v125 + 32);
      v128 = (v127 + 63) >> 6;
      v129 = 64;
      v216 = v123;
      if (!v128)
      {
        goto LABEL_47;
      }

      while (1)
      {
        v130 = *(v125 + v129);
        if (v130)
        {
          break;
        }

        v126 -= 64;
        --v128;
        v129 += 8;
        if (!v128)
        {
          goto LABEL_47;
        }
      }

      if (__clz(__rbit64(v130)) - v127 != v126)
      {
        v132 = v231;
        sub_1C486BF74();
        v133 = v232;
        v134 = sub_1C4441118();
        (v217)(v134);
        v209(v233, v133, v132);
        v135 = sub_1C4F020D8();
        if (v135 == 1 << *(v125 + 32))
        {

          v136 = v202;
          sub_1C457B1F0();
          if (v138)
          {
            v217 = v137;
            swift_isUniquelyReferenced_nonNull_native();
            v243[0] = v136;
            sub_1C456902C(&qword_1EC0C0BC0, &qword_1C4F40158);
            sub_1C4F02458();
            v139 = v243[0];
            v140 = v229;
            v120(*(v243[0] + 48) + v217 * v203, v229);
            v202 = v139;
            sub_1C4F02478();
          }

          else
          {
            v140 = v229;
          }

          v150 = v233;
        }

        else
        {
          v215 = v120;
          sub_1C4BDF5BC(v135);
          sub_1C4426C64();
          v141 = v202;
          LODWORD(v217) = swift_isUniquelyReferenced_nonNull_native();
          v243[0] = v141;
          sub_1C457B1F0();
          if (__OFADD__(*(v141 + 16), (v143 & 1) == 0))
          {
            goto LABEL_94;
          }

          v144 = v142;
          v145 = v143;
          sub_1C456902C(&qword_1EC0C0BC0, &qword_1C4F40158);
          if (sub_1C4F02458())
          {
            sub_1C457B1F0();
            if ((v145 & 1) != (v147 & 1))
            {
              goto LABEL_100;
            }

            v144 = v146;
          }

          v148 = v243[0];
          v202 = v243[0];
          if (v145)
          {
            *(*(v243[0] + 56) + 8 * v144) = v1;
            v149 = v233;
          }

          else
          {
            *(v243[0] + 8 * (v144 >> 6) + 64) |= 1 << v144;
            v151 = v148;
            v149 = v233;
            v209(*(v148 + 48) + v144 * v203, v233, v229);
            *(*(v151 + 56) + 8 * v144) = v1;
            v152 = *(v151 + 16);
            v153 = __OFADD__(v152, 1);
            v154 = v152 + 1;
            if (v153)
            {
              goto LABEL_97;
            }

            *(v151 + 16) = v154;
          }

          v120 = v215;
          v150 = v149;
          v140 = v229;
        }

        v120(v150, v140);
        isUniquelyReferenced_nonNull_native = (v120)(v232, v140);
        v123 = v216;
      }

      else
      {
LABEL_47:
      }

      v155 = *(v123 + 16);
      v93 = v230;
      if (v155)
      {
        v156 = (v123 + 40);
        do
        {
          v157 = *v156;
          v230 = *(v156 - 1);
          v243[0] = v230;
          v243[1] = v157;
          MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
          *(&v201 - 2) = v243;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v158 = v239;
          if (sub_1C44CE068())
          {
          }

          else
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v159 = v93;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1C443D664();
              v158 = isUniquelyReferenced_nonNull_native;
            }

            v161 = v158[2];
            v160 = v158[3];
            v239 = v158;
            if (v161 >= v160 >> 1)
            {
              sub_1C443D664();
              v239 = isUniquelyReferenced_nonNull_native;
            }

            v162 = v239;
            v239[2] = v161 + 1;
            v163 = &v162[2 * v161];
            v163[4] = v230;
            v163[5] = v157;
            v93 = v159;
          }

          v156 += 2;
          --v155;
        }

        while (v155);
      }

      sub_1C4420C3C(v237, &qword_1EC0C0BB8, &qword_1C4F40150);
      a1 = v206;
      v4 = v207;
      v6 = v210;
      v100 = v204;
      v94 = v205;
      v98 = v212;
      v95 = v213;
    }

    while (v212);
  }

  while (1)
  {
    v102 = v95 + 1;
    if (__OFADD__(v95, 1))
    {
      break;
    }

    if (v102 >= v100)
    {

      v243[0] = sub_1C4618808(v202);
      sub_1C49B7EB4(v243);
      v230 = v93;
      if (v93)
      {
        goto LABEL_99;
      }

      v164 = v243[0];
      v165 = *(v243[0] + 16);
      if (v165 <= 1)
      {
        sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
        inited = swift_initStackObject();
        sub_1C44007C0(inited);
        sub_1C441FDE4(v181);
        v182 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
        sub_1C4432598(v182);
        if (v165 != 1)
        {
          goto LABEL_95;
        }

        v183 = sub_1C440BE2C();
        v184 = v220;
        sub_1C445FFF0(v183, v220, &qword_1EC0B8FA8, &qword_1C4F0EA80);

        v185 = v229;
        qword_1C4F0EBB8 = v229;
        v186 = sub_1C4422F90(qword_1C4F0EBA0);
        v187 = v185;
        v36 = v218;
        (*v218)(v186, v184, v187);
        sub_1C43FDA94();
        qword_1C4F0EBE8 = MEMORY[0x1E69E6158];
        qword_1C4F0EBD0 = 0;
        qword_1C4F0EBD8 = 0xE000000000000000;
      }

      else
      {
        v217 = sub_1C440BE2C();
        v166 = v219;
        sub_1C445FFF0(v217, v219, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        v167 = sub_1C4EF9D68();
        v169 = v168;
        v170 = v166;
        v171 = v229;
        (*v227)(v170, v229);

        if ((v169 & 0x2000000000000000) != 0)
        {
          v172 = (HIBYTE(v169) & 0xF);
        }

        else
        {
          v172 = (v167 & 0xFFFFFFFFFFFFLL);
        }

        sub_1C456902C(&qword_1EC0B9270, &unk_1C4F32030);
        if (v172)
        {
          v173 = swift_initStackObject();
          sub_1C44007C0(v173);
          sub_1C441FDE4(v174);
          v175 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C4432598(v175);
          v176 = v220;
          sub_1C445FFF0(v217, v220, &qword_1EC0B8FA8, &qword_1C4F0EA80);
          v172[39] = v171;
          v177 = sub_1C4422F90(v172 + 36);
          v239 = *v218;
          (v239)(v177, v176, v171);
          sub_1C43FDA94();
          v6 = v210;
          if (*(v164 + 16) < 2uLL)
          {
            goto LABEL_96;
          }

          sub_1C445FFF0(v217 + *(v4 + 72), v210, &qword_1EC0B8FA8, &qword_1C4F0EA80);

          v178 = v229;
          v172[45] = v229;
          v179 = sub_1C4422F90(v172 + 42);
          v36 = v218;
          (v239)(v179, v6, v178);
        }

        else
        {
          v188 = v217;
          v189 = swift_allocObject();
          sub_1C44007C0(v189);
          sub_1C441FDE4(v190);
          v191 = sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          sub_1C4432598(v191);
          v192 = *(v164 + 16);
          v6 = v210;
          v239 = v164;
          if (v192 < 2)
          {
            goto LABEL_98;
          }

          v216 = *(v4 + 72);
          v193 = v220;
          sub_1C445FFF0(v188 + v216, v220, &qword_1EC0B8FA8, &qword_1C4F0EA80);
          v194 = v229;
          MEMORY[0x138] = v229;
          v195 = sub_1C4422F90(0x120);
          v196 = *v218;
          v197 = v193;
          v36 = v218;
          (*v218)(v195, v197, v194);
          sub_1C43FDA94();
          sub_1C445FFF0(v217 + v216, v6, &qword_1EC0B8FA8, &qword_1C4F0EA80);

          MEMORY[0x168] = v194;
          v198 = sub_1C4422F90(0x150);
          v196(v198, v6, v194);
          v4 = v207;
        }
      }

      sub_1C4F00F28();
      v199 = v240;
      swift_isUniquelyReferenced_nonNull_native();
      v243[0] = v199;
      v200 = v242;
      sub_1C46613F0();

      v240 = v243[0];
      v34 = v241;
      goto LABEL_6;
    }

    v98 = *(v94 + 8 * v102);
    ++v95;
    if (v98)
    {
      v230 = v93;
      v95 = v102;
      goto LABEL_42;
    }
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:

  __break(1u);
LABEL_100:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C49B9148()
{
  sub_1C43FEC28();
  v3 = sub_1C443FDE0();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD230();
  sub_1C440D5C0(v7);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F140B0;
  *(inited + 32) = 0x6E6F697461636F4CLL;
  *(inited + 40) = 0xE900000000000073;
  sub_1C4410F34();
  v9[6] = v10;
  v9[7] = 0xE800000000000000;
  v9[8] = 0x697261666153;
  v9[9] = 0xE600000000000000;
  sub_1C44365C8();
  *(v11 + 80) = v12;
  *(v11 + 88) = v13;
  sub_1C4433D6C();
  v14[12] = v15;
  v14[13] = 0xEC00000073656C74;
  v14[14] = 0x736B6F6F42;
  v14[15] = 0xE500000000000000;
  v14[16] = 0x636973754DLL;
  v14[17] = 0xE500000000000000;
  sub_1C44023F0();
  *(v16 + 144) = v17;
  *(v16 + 152) = 0xEA0000000000736BLL;
  sub_1C4418B20();
  *(v18 + 160) = v19;
  *(v18 + 168) = v20;
  sub_1C445E8B8();
  *(v21 + 176) = v22;
  *(v21 + 184) = v23;
  v24 = v0 + 64;
  sub_1C43FEC90();
  v27 = v26 & v25;
  sub_1C442E110();
  swift_bridgeObjectRetain_n();
  v28 = 0;
  v29 = 0;
  v66 = v3;
  v60 = v0 + 64;
  v59 = v1;
  if (v27)
  {
LABEL_2:
    v30 = v28;
LABEL_6:
    sub_1C441C35C();
    sub_1C4417478();
    v31 = sub_1C4425D90(&v68);
    v63 = v32;
    (v32)(v31);
    v33 = sub_1C4433594();
    v34(v33);
    v35 = sub_1C4402120();
    if (!sub_1C465C470(v35, v36))
    {
      sub_1C4F00F28();
    }

    sub_1C444FE1C();
    v61 = v27;
    sub_1C442CD98();
    v40 = v39 & v38;
    v42 = (v41 + 63) >> 6;
    if ((v39 & v38) != 0)
    {
      do
      {
        v43 = v37;
LABEL_13:
        sub_1C4413438();
        v40 &= v40 - 1;
        v67[0] = v0;
        v67[1] = v29;
        MEMORY[0x1EEE9AC00](v44);
        sub_1C43FC638();
        sub_1C442EC10(v45);
        sub_1C443598C();
        if (sub_1C44CE068())
        {

          v37 = v43;
          v3 = v66;
        }

        else
        {
          v3 = v62;
          v63(v62, v65, v66);
          v46 = sub_1C440CCC4(v67);
          v47 = sub_1C447F194(v46, &v69);
          if (v55)
          {
            sub_1C441ED8C(v47, v48, v49, v50, v51, v52, v53, v54, v59, v60);
          }

          v64(v67, 0);
          v56 = sub_1C440E4E8();
          v57(v56);
          sub_1C443F258();
        }
      }

      while (v40);
    }

    while (1)
    {
      v43 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v43 >= v42)
      {
        v29 = v24;

        sub_1C4402C08();
        v58(v65, v3);
        v28 = v30;
        v24 = v60;
        v27 = v61;
        goto LABEL_2;
      }

      v40 = *(v2 + 8 * v43);
      ++v37;
      if (v40)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v1)
      {
        swift_setDeallocating();
        sub_1C44DEE40();

        sub_1C44223DC();
        sub_1C442F2A0();
        sub_1C440C378();
        sub_1C44086C4();
        return;
      }

      v27 = *(v24 + 8 * v30);
      ++v28;
      if (v27)
      {
        goto LABEL_6;
      }
    }
  }

  __break(1u);
}

void sub_1C49B9614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FEC28();
  a21 = v27;
  a22 = v28;
  v29 = sub_1C443FDE0();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  sub_1C440D5C0(v33);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F13950;
  *(inited + 32) = 0x736B6F6F42;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = 0x697261666153;
  *(inited + 56) = 0xE600000000000000;
  sub_1C4410F34();
  *(v35 + 64) = v36;
  *(v35 + 72) = 0xE800000000000000;
  sub_1C4433D6C();
  v37[10] = v38;
  v37[11] = 0xEC00000073656C74;
  v37[12] = 0x4C20656369766544;
  v37[13] = 0xEF65676175676E61;
  v39 = v22 + 64;
  sub_1C43FEC90();
  sub_1C440F878();
  sub_1C441CB80();
  if (v24)
  {
LABEL_5:
    sub_1C441C35C();
    sub_1C4417478();
    sub_1C4425D90(&v72);
    sub_1C4415AFC();
    v42();
    v43 = sub_1C4433594();
    v44(v43);
    v45 = sub_1C4402120();
    if (!sub_1C465C470(v45, v46))
    {
      sub_1C4F00F28();
    }

    v39 = v25;
    sub_1C442CD98();
    sub_1C4416220(v47);
    if (((v24 - 1) & v24) != 0)
    {
      while (1)
      {
        v23 = v48;
LABEL_12:
        sub_1C4413438();
        sub_1C44050F8();
        MEMORY[0x1EEE9AC00](v49);
        sub_1C43FC638();
        sub_1C442EC10(v50);
        sub_1C443598C();
        if (sub_1C44CE068())
        {

          v48 = v23;
        }

        else
        {
          v51 = sub_1C4408C9C();
          v52(v51);
          v53 = sub_1C440CCC4(&v71);
          v54 = sub_1C447F194(v53, &a14);
          if (v62)
          {
            sub_1C441ED8C(v54, v55, v56, v57, v58, v59, v60, v61, v68, v69);
          }

          v63 = sub_1C441BAFC();
          v64(v63);
          v65 = sub_1C440E4E8();
          v66(v65);
          sub_1C443F258();
        }
      }
    }

    while (1)
    {
      v23 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v23 >= v25)
      {

        sub_1C4402C08();
        v67(v70, v29);
        sub_1C4405E2C();
        goto LABEL_2;
      }

      ++v48;
      if (*(v26 + 8 * v23))
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_2:
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v23)
      {
        swift_setDeallocating();
        sub_1C44DEE40();

        sub_1C44223DC();
        sub_1C442F2A0();
        sub_1C440C378();
        sub_1C44086C4();
        return;
      }

      v24 = *(v39 + 8 * v41);
      ++v40;
      if (v24)
      {
        goto LABEL_5;
      }
    }
  }

  __break(1u);
}

void sub_1C49B99C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FEC28();
  a21 = v25;
  a22 = v26;
  v27 = sub_1C443FDE0();
  sub_1C43FCDF8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  v78 = v32;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  sub_1C440D5C0(v34);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0x6472616F6279654BLL;
  *(inited + 40) = 0xE900000000000073;
  sub_1C4410F34();
  *(v36 + 48) = v37;
  *(v36 + 56) = 0xE800000000000000;
  v38 = v22 + 64;
  sub_1C43FEC90();
  v41 = v40 & v39;
  sub_1C442E110();
  swift_bridgeObjectRetain_n();
  v42 = 0;
  v43 = 0;
  v79 = v27;
  v73 = v22 + 64;
  v72 = v23;
  if (v41)
  {
LABEL_2:
    v44 = v42;
LABEL_6:
    sub_1C441C35C();
    sub_1C4417478();
    v45 = sub_1C4425D90(&a12);
    v76 = v46;
    (v46)(v45);
    v47 = *(v29 + 32);
    v29 = v78;
    v47(v78, v38, v27);
    v48 = sub_1C4402120();
    if (!sub_1C465C470(v48, v49))
    {
      sub_1C4F00F28();
    }

    sub_1C444FE1C();
    v74 = v41;
    sub_1C442CD98();
    v53 = v52 & v51;
    v55 = (v54 + 63) >> 6;
    while (v53)
    {
      v56 = v50;
LABEL_14:
      sub_1C4413438();
      v53 &= v53 - 1;
      v80[0] = v22;
      v80[1] = v43;
      MEMORY[0x1EEE9AC00](v57);
      sub_1C43FC638();
      sub_1C442EC10(v58);
      sub_1C443598C();
      if (sub_1C44CE068())
      {

        v50 = v56;
        v27 = v79;
      }

      else
      {
        v27 = v75;
        v76(v75, v78, v79);
        v59 = sub_1C440CCC4(v80);
        v60 = sub_1C447F194(v59, &a20);
        if (v68)
        {
          sub_1C441ED8C(v60, v61, v62, v63, v64, v65, v66, v67, v72, v73);
        }

        v77(v80, 0);
        v69 = sub_1C440E4E8();
        v70(v69);
        sub_1C443F258();
      }
    }

    while (1)
    {
      v56 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      if (v56 >= v55)
      {
        v43 = v38;

        sub_1C4402C08();
        v71(v78, v27);
        v42 = v44;
        v38 = v73;
        v41 = v74;
        goto LABEL_2;
      }

      v53 = *(v24 + 8 * v56);
      ++v50;
      if (v53)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v44 >= v23)
      {
        swift_setDeallocating();
        sub_1C44DEE40();

        sub_1C44223DC();
        sub_1C442F2A0();
        sub_1C440C378();
        sub_1C44086C4();
        return;
      }

      v41 = *(v38 + 8 * v44);
      ++v42;
      if (v41)
      {
        goto LABEL_6;
      }
    }
  }

  __break(1u);
}

void sub_1C49B9DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C43FEC28();
  a21 = v27;
  a22 = v28;
  v29 = sub_1C443FDE0();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FD230();
  sub_1C440D5C0(v33);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F13950;
  *(inited + 32) = 0x636973754DLL;
  *(inited + 40) = 0xE500000000000000;
  sub_1C44023F0();
  *(v35 + 48) = v36;
  *(v35 + 56) = 0xEA0000000000736BLL;
  sub_1C44365C8();
  *(v37 + 64) = v38;
  *(v37 + 72) = 0xE800000000000000;
  sub_1C4418B20();
  *(v39 + 80) = v40;
  *(v39 + 88) = v41;
  sub_1C445E8B8();
  *(v42 + 96) = v43;
  *(v42 + 104) = 0xE90000000000006CLL;
  v44 = v22 + 64;
  sub_1C43FEC90();
  sub_1C440F878();
  sub_1C441CB80();
  if (v24)
  {
LABEL_5:
    sub_1C441C35C();
    sub_1C4417478();
    sub_1C4425D90(&v77);
    sub_1C4415AFC();
    v47();
    v48 = sub_1C4433594();
    v49(v48);
    v50 = sub_1C4402120();
    if (!sub_1C465C470(v50, v51))
    {
      sub_1C4F00F28();
    }

    v44 = v25;
    sub_1C442CD98();
    sub_1C4416220(v52);
    if (((v24 - 1) & v24) != 0)
    {
      while (1)
      {
        v23 = v53;
LABEL_12:
        sub_1C4413438();
        sub_1C44050F8();
        MEMORY[0x1EEE9AC00](v54);
        sub_1C43FC638();
        sub_1C442EC10(v55);
        sub_1C443598C();
        if (sub_1C44CE068())
        {

          v53 = v23;
        }

        else
        {
          v56 = sub_1C4408C9C();
          v57(v56);
          v58 = sub_1C440CCC4(&v76);
          v59 = sub_1C447F194(v58, &a14);
          if (v67)
          {
            sub_1C441ED8C(v59, v60, v61, v62, v63, v64, v65, v66, v73, v74);
          }

          v68 = sub_1C441BAFC();
          v69(v68);
          v70 = sub_1C440E4E8();
          v71(v70);
          sub_1C443F258();
        }
      }
    }

    while (1)
    {
      v23 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v23 >= v25)
      {

        sub_1C4402C08();
        v72(v75, v29);
        sub_1C4405E2C();
        goto LABEL_2;
      }

      ++v53;
      if (*(v26 + 8 * v23))
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_2:
    while (1)
    {
      v46 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      if (v46 >= v23)
      {
        swift_setDeallocating();
        sub_1C44DEE40();

        sub_1C44223DC();
        sub_1C442F2A0();
        sub_1C440C378();
        sub_1C44086C4();
        return;
      }

      v24 = *(v44 + 8 * v46);
      ++v45;
      if (v24)
      {
        goto LABEL_5;
      }
    }
  }

  __break(1u);
}

void sub_1C49BA174(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v43 - v4;
  if (!*(a1 + 16))
  {
    sub_1C4EF9DD8();
    sub_1C4419C04();
    sub_1C49B7E34(v33, v34, MEMORY[0x1E6969690]);
    sub_1C4402120();
LABEL_31:
    sub_1C4F00F28();
    return;
  }

  sub_1C48683A8();
  if (!v6)
  {
LABEL_26:
    sub_1C456902C(&qword_1EC0C0BC8, &qword_1C4F40160);
    v35 = sub_1C456902C(&qword_1EC0C0BD0, &qword_1C4F40168);
    sub_1C4425268();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1C4F0D130;
    v37 = v36 + v1;
    sub_1C48683F8();
    v38 = sub_1C4EF9DD8();
    if (sub_1C44157D4(v5, 1, v38) == 1)
    {
      sub_1C4EF9DC8();
      if (sub_1C44157D4(v5, 1, v38) != 1)
      {
        sub_1C4420C3C(v5, &qword_1EC0C0B88, &qword_1C4F40128);
      }
    }

    else
    {
      (*(*(v38 - 8) + 32))(v37, v5, v38);
    }

    v39 = *(v35 + 48);
    sub_1C49BA618();
    *(v37 + v39) = v40;
    sub_1C4419C04();
    sub_1C49B7E34(v41, v42, MEMORY[0x1E6969690]);
    goto LABEL_31;
  }

  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {

    goto LABEL_26;
  }

  v43[0] = v5;
  v43[1] = a1;
  v51 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, v8, 0);
  v9 = v51;
  v12 = sub_1C4703354();
  v13 = 0;
  v14 = v7 + 64;
  v44 = v7 + 72;
  v45 = v8;
  v46 = v7 + 64;
  if ((v12 & 0x8000000000000000) == 0)
  {
    while (v12 < 1 << *(v7 + 32))
    {
      v15 = v12 >> 6;
      if ((*(v14 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_33;
      }

      if (*(v7 + 36) != v10)
      {
        goto LABEL_34;
      }

      v47 = v11;
      v16 = (*(v7 + 48) + 16 * v12);
      v18 = *v16;
      v17 = v16[1];
      v48 = v10;
      v49 = v18;
      v50 = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = sub_1C4F01438();
      v21 = v20;
      v51 = v9;
      v23 = *(v9 + 16);
      v22 = *(v9 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C44CD9C0(v22 > 1, v23 + 1, 1);
        v9 = v51;
      }

      *(v9 + 16) = v23 + 1;
      v24 = v9 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v1 = 1 << *(v7 + 32);
      if (v12 >= v1)
      {
        goto LABEL_35;
      }

      v14 = v46;
      v25 = *(v46 + 8 * v15);
      if ((v25 & (1 << v12)) == 0)
      {
        goto LABEL_36;
      }

      if (*(v7 + 36) != v48)
      {
        goto LABEL_37;
      }

      v26 = v25 & (-2 << (v12 & 0x3F));
      if (v26)
      {
        v1 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v27 = v45;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v27 = v45;
        v30 = (v44 + 8 * v15);
        while (v29 < (v1 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            sub_1C440951C(v12, v48, v47 & 1);
            v1 = __clz(__rbit64(v31)) + v28;
            goto LABEL_20;
          }
        }

        sub_1C440951C(v12, v48, v47 & 1);
      }

LABEL_20:
      if (++v13 == v27)
      {

        v5 = v43[0];
        goto LABEL_26;
      }

      v11 = 0;
      v10 = *(v7 + 36);
      v12 = v1;
      if (v1 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1C49BA618()
{
  v59 = sub_1C443FDE0();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1C456902C(&qword_1EC0C0BB8, &qword_1C4F40150);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  v9 = v0 + 64;
  sub_1C43FEC90();
  v12 = v11 & v10;
  sub_1C442E110();
  v60 = v3;
  v61 = v0;
  v58 = v3 + 16;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v14 = 0.0;
  v57 = v0 + 64;
  v53 = v1;
  v54 = v8;
  if (v12)
  {
    while (1)
    {
      v15 = v13;
LABEL_6:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v17 = v16 | (v15 << 6);
      v18 = v61;
      (*(v60 + 16))(v8, *(v61 + 48) + *(v60 + 72) * v17, v59);
      v19 = *(*(v18 + 56) + 8 * v17);
      *&v8[*(v56 + 48)] = v19;
      v20 = v19 + 64;
      sub_1C43FEC90();
      v23 = v22 & v21;
      sub_1C442E110();
      v62 = v24;
      swift_bridgeObjectRetain_n();
      v25 = 0;
      for (i = 0.0; v23; i = i + v32 * v35)
      {
LABEL_11:
        v28 = __clz(__rbit64(v23)) | (v25 << 6);
        v29 = (*(v62 + 48) + 16 * v28);
        v31 = *v29;
        v30 = v29[1];
        v32 = *(*(v62 + 56) + 8 * v28);
        v33 = qword_1EC0B6DB8;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (v33 != -1)
        {
          swift_once();
        }

        v34 = qword_1EC1525E0;
        v35 = 1.0;
        if (*(qword_1EC1525E0 + 16))
        {
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v36 = sub_1C445FAA8(v31, v30);
          v38 = v37;

          if (v38)
          {
            v35 = *(*(v34 + 56) + 8 * v36);
          }
        }

        v23 &= v23 - 1;
      }

      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        if (v27 >= v1)
        {
          break;
        }

        v23 = *(v20 + 8 * v27);
        ++v25;
        if (v23)
        {
          v25 = v27;
          goto LABEL_11;
        }
      }

      v14 = v14 + i;
      v8 = v54;
      sub_1C4420C3C(v54, &qword_1EC0C0BB8, &qword_1C4F40150);
      v13 = v15;
      v9 = v57;
      v1 = v53;
      if (!v12)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_33;
    }

    if (v15 >= v1)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v13;
    if (v12)
    {
      goto LABEL_6;
    }
  }

  v39 = v61;

  v63 = MEMORY[0x1E69E7CD0];
  v40 = 1 << *(v39 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v39 + 64);
  v43 = (v40 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v44 = 0;
  v45 = v55;
  if (v42)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v46 >= v43)
    {

      v51 = *(v63 + 16);

      log(v51 + 1.0);
      return;
    }

    v42 = *(v9 + 8 * v46);
    ++v44;
    if (v42)
    {
      v44 = v46;
      do
      {
LABEL_27:
        v48 = v60;
        v47 = v61;
        v49 = v59;
        (*(v60 + 16))(v45, *(v61 + 48) + *(v60 + 72) * (__clz(__rbit64(v42)) | (v44 << 6)), v59);
        v50 = sub_1C465C470(v45, v47);
        (*(v48 + 8))(v45, v49);
        if (!v50)
        {
          v50 = sub_1C4F00F28();
        }

        v42 &= v42 - 1;
        sub_1C4D40014(v50);
        v9 = v57;
      }

      while (v42);
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1C49BAAA0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C4F02828();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C49BAE38(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C49BABE8(0, v2, 1, a1);
  }
}

void sub_1C49BABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v30 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v13 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v35 = -v17;
    v36 = v16;
    v19 = a1 - a3;
    v29 = v17;
    v20 = v16 + v17 * a3;
    while (2)
    {
      v33 = v18;
      v34 = a3;
      v31 = v20;
      v32 = v19;
      v21 = v19;
      v22 = v38;
      do
      {
        sub_1C445FFF0(v20, v15, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        sub_1C445FFF0(v18, v11, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        v23 = *(v22 + 48);
        v24 = *&v15[v23];
        v25 = *&v11[v23];
        sub_1C4420C3C(v11, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        sub_1C4420C3C(v15, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        if (v25 >= v24)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        v26 = v37;
        sub_1C49BBBE8(v20, v37);
        v22 = v38;
        swift_arrayInitWithTakeFrontToBack();
        sub_1C49BBBE8(v26, v18);
        v18 += v35;
        v20 += v35;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v34 + 1;
      v18 = v33 + v29;
      v19 = v32 - 1;
      v20 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C49BAE38(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v120 = a1;
  v8 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  v128 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v132 = &v116 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v134 = &v116 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v133 = &v116 - v15;
  v129 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_98:
    v135 = *v120;
    if (!v135)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v108 = v18 + 16;
      v109 = *(v18 + 2);
      while (v109 >= 2)
      {
        if (!*v129)
        {
          goto LABEL_136;
        }

        v110 = v5;
        v111 = v18;
        v5 = &v18[16 * v109];
        v112 = *v5;
        v113 = &v108[2 * v109];
        v114 = *(v113 + 1);
        sub_1C49BB748(*v129 + *(v128 + 72) * *v5, *v129 + *(v128 + 72) * *v113, *v129 + *(v128 + 72) * v114, v135);
        if (v110)
        {
          break;
        }

        if (v114 < v112)
        {
          goto LABEL_124;
        }

        if (v109 - 2 >= *v108)
        {
          goto LABEL_125;
        }

        *v5 = v112;
        *(v5 + 1) = v114;
        v115 = *v108 - v109;
        if (*v108 < v109)
        {
          goto LABEL_126;
        }

        v109 = *v108 - 1;
        sub_1C461950C(v113 + 16, v115, v113);
        *v108 = v109;
        v18 = v111;
        v5 = 0;
      }

LABEL_108:

      return;
    }

LABEL_133:
    v18 = sub_1C46194F4();
    goto LABEL_100;
  }

  v118 = a4;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v135 = v8;
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v121 = v17;
    if (v17 + 1 < v16)
    {
      v119 = v5;
      v21 = *v129;
      v126 = v21;
      v127 = v16;
      v22 = *(v128 + 72);
      v130 = v17 + 1;
      v23 = v21 + v22 * v20;
      v24 = v133;
      sub_1C445FFF0(v23, v133, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v25 = v21 + v22 * v19;
      v26 = v134;
      sub_1C445FFF0(v25, v134, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v27 = *(v8 + 48);
      v28 = *(v24 + v27);
      v29 = *(v26 + v27);
      sub_1C4420C3C(v26, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      sub_1C4420C3C(v24, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v30 = v127;
      v31 = v19 + 2;
      v131 = v22;
      v32 = v126 + v22 * (v19 + 2);
      while (1)
      {
        v33 = v31;
        if (++v130 >= v30)
        {
          break;
        }

        v34 = v133;
        sub_1C445FFF0(v32, v133, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        v35 = v134;
        sub_1C445FFF0(v23, v134, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        v36 = *(v135 + 48);
        v37 = *(v34 + v36);
        v38 = *(v35 + v36);
        sub_1C4420C3C(v35, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        sub_1C4420C3C(v34, &qword_1EC0B8FA8, &qword_1C4F0EA80);
        v30 = v127;
        v32 += v131;
        v23 += v131;
        v31 = v33 + 1;
        if (v29 < v28 == v38 >= v37)
        {
          goto LABEL_9;
        }
      }

      v130 = v30;
LABEL_9:
      v5 = v119;
      if (v29 >= v28)
      {
        v20 = v130;
        v19 = v121;
        v8 = v135;
      }

      else
      {
        v20 = v130;
        v19 = v121;
        if (v130 < v121)
        {
          goto LABEL_130;
        }

        v8 = v135;
        if (v121 < v130)
        {
          v117 = v18;
          if (v30 >= v33)
          {
            v39 = v33;
          }

          else
          {
            v39 = v30;
          }

          v40 = v131 * (v39 - 1);
          v41 = v130;
          v42 = v131 * v39;
          v43 = v121 * v131;
          do
          {
            if (v19 != --v41)
            {
              v44 = *v129;
              if (!*v129)
              {
                goto LABEL_137;
              }

              sub_1C49BBBE8(v44 + v43, v124);
              v45 = v43 < v40 || v44 + v43 >= v44 + v42;
              if (v45)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C49BBBE8(v124, v44 + v40);
            }

            ++v19;
            v40 -= v131;
            v42 -= v131;
            v43 += v131;
          }

          while (v19 < v41);
          v5 = v119;
          v18 = v117;
          v8 = v135;
          v20 = v130;
          v19 = v121;
        }
      }
    }

    v46 = v129[1];
    if (v20 < v46)
    {
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_129;
      }

      if (v20 - v19 < v118)
      {
        break;
      }
    }

LABEL_46:
    if (v20 < v19)
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v130 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C458A358();
      v18 = v106;
    }

    v62 = *(v18 + 2);
    v63 = v62 + 1;
    if (v62 >= *(v18 + 3) >> 1)
    {
      sub_1C458A358();
      v18 = v107;
    }

    *(v18 + 2) = v63;
    v64 = v18 + 32;
    v65 = &v18[16 * v62 + 32];
    v66 = v130;
    *v65 = v121;
    *(v65 + 1) = v66;
    v131 = *v120;
    if (!v131)
    {
      goto LABEL_138;
    }

    if (v62)
    {
      while (1)
      {
        v67 = v63 - 1;
        v68 = &v64[16 * v63 - 16];
        v69 = &v18[16 * v63];
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v70 = *(v18 + 4);
          v71 = *(v18 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_66:
          if (v73)
          {
            goto LABEL_115;
          }

          v85 = *v69;
          v84 = *(v69 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_118;
          }

          v89 = *(v68 + 1);
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_123;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              v67 = v63 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v63 < 2)
        {
          goto LABEL_117;
        }

        v92 = *v69;
        v91 = *(v69 + 1);
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_81:
        if (v88)
        {
          goto LABEL_120;
        }

        v94 = *v68;
        v93 = *(v68 + 1);
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_122;
        }

        if (v95 < v87)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v67 - 1 >= v63)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v129)
        {
          goto LABEL_135;
        }

        v99 = &v64[16 * v67 - 16];
        v100 = *v99;
        v101 = &v64[16 * v67];
        v102 = *(v101 + 1);
        sub_1C49BB748(*v129 + *(v128 + 72) * *v99, *v129 + *(v128 + 72) * *v101, *v129 + *(v128 + 72) * v102, v131);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v102 < v100)
        {
          goto LABEL_110;
        }

        v103 = v18;
        v104 = *(v18 + 2);
        if (v67 > v104)
        {
          goto LABEL_111;
        }

        *v99 = v100;
        *(v99 + 1) = v102;
        if (v67 >= v104)
        {
          goto LABEL_112;
        }

        v63 = v104 - 1;
        sub_1C461950C(v101 + 16, v104 - 1 - v67, &v64[16 * v67]);
        *(v103 + 2) = v104 - 1;
        v105 = v104 > 2;
        v18 = v103;
        v8 = v135;
        if (!v105)
        {
          goto LABEL_95;
        }
      }

      v74 = &v64[16 * v63];
      v75 = *(v74 - 8);
      v76 = *(v74 - 7);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_113;
      }

      v79 = *(v74 - 6);
      v78 = *(v74 - 5);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_114;
      }

      v81 = *(v69 + 1);
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_116;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_119;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = *(v68 + 1);
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_127;
        }

        if (v72 < v98)
        {
          v67 = v63 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v17 = v130;
    v16 = v129[1];
    if (v130 >= v16)
    {
      goto LABEL_98;
    }
  }

  v47 = v19 + v118;
  if (__OFADD__(v19, v118))
  {
    goto LABEL_131;
  }

  if (v47 >= v46)
  {
    v47 = v129[1];
  }

  if (v47 < v19)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v20 == v47)
  {
    goto LABEL_46;
  }

  v117 = v18;
  v119 = v5;
  v48 = *(v128 + 72);
  v49 = *v129 + v48 * (v20 - 1);
  v50 = -v48;
  v51 = v19 - v20;
  v131 = *v129;
  v122 = v48;
  v123 = v47;
  v52 = v131 + v20 * v48;
LABEL_39:
  v130 = v20;
  v125 = v52;
  v126 = v51;
  v53 = v52;
  v127 = v49;
  v54 = v135;
  while (1)
  {
    v55 = v133;
    sub_1C445FFF0(v53, v133, &qword_1EC0B8FA8, &qword_1C4F0EA80);
    v56 = v134;
    sub_1C445FFF0(v49, v134, &qword_1EC0B8FA8, &qword_1C4F0EA80);
    v57 = *(v54 + 48);
    v58 = *(v55 + v57);
    v59 = *(v56 + v57);
    sub_1C4420C3C(v56, &qword_1EC0B8FA8, &qword_1C4F0EA80);
    sub_1C4420C3C(v55, &qword_1EC0B8FA8, &qword_1C4F0EA80);
    if (v59 >= v58)
    {
LABEL_44:
      v20 = v130 + 1;
      v49 = v127 + v122;
      v51 = v126 - 1;
      v52 = v125 + v122;
      if (v130 + 1 == v123)
      {
        v20 = v123;
        v5 = v119;
        v18 = v117;
        v8 = v135;
        v19 = v121;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v131)
    {
      break;
    }

    v60 = v132;
    sub_1C49BBBE8(v53, v132);
    v54 = v135;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C49BBBE8(v60, v49);
    v49 += v50;
    v53 += v50;
    v45 = __CFADD__(v51++, 1);
    if (v45)
    {
      goto LABEL_44;
    }
  }

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
}

void sub_1C49BB748(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = a3;
  v53 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v13 = a2 - a1;
  v14 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v14)
  {
    goto LABEL_61;
  }

  v15 = v51 - a2;
  if (v51 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v17 = v13 / v12;
  v56 = a1;
  v55 = a4;
  v18 = v15 / v12;
  if (v13 / v12 >= v15 / v12)
  {
    sub_1C459C5F4(a2, v15 / v12, a4);
    v26 = a4 + v18 * v12;
    v27 = -v12;
    v28 = v26;
    v29 = v51;
    v50 = v27;
    v48 = a1;
LABEL_37:
    v51 = a2 + v27;
    v30 = v29;
    v46 = v28;
    v49 = a2;
    while (1)
    {
      if (v26 <= a4)
      {
        v56 = a2;
        v54 = v28;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v47 = v28;
      v31 = a4;
      v32 = v30 + v50;
      v33 = v26 + v50;
      sub_1C445FFF0(v26 + v50, v10, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v34 = v10;
      v35 = v52;
      sub_1C445FFF0(v51, v52, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v36 = *(v53 + 48);
      v37 = *(v34 + v36);
      v38 = *(v35 + v36);
      v39 = v35;
      v10 = v34;
      sub_1C4420C3C(v39, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      sub_1C4420C3C(v34, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      if (v38 < v37)
      {
        v41 = v30 < v49 || v32 >= v49;
        v29 = v32;
        a4 = v31;
        if (v41)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v29 = v32;
          v27 = v50;
          v28 = v47;
          a1 = v48;
        }

        else
        {
          v28 = v47;
          v14 = v30 == v49;
          v27 = v50;
          v42 = v51;
          a2 = v51;
          a1 = v48;
          if (!v14)
          {
            v43 = v29;
            v44 = v47;
            swift_arrayInitWithTakeBackToFront();
            v29 = v43;
            a2 = v42;
            v28 = v44;
          }
        }

        goto LABEL_37;
      }

      v40 = v30 < v26 || v32 >= v26;
      a4 = v31;
      if (v40)
      {
        v30 = v32;
        swift_arrayInitWithTakeFrontToBack();
        v26 = v33;
        v28 = v33;
        a1 = v48;
        a2 = v49;
      }

      else
      {
        v28 = v33;
        v14 = v26 == v30;
        v30 = v32;
        v26 = v33;
        a1 = v48;
        a2 = v49;
        if (!v14)
        {
          v30 = v32;
          swift_arrayInitWithTakeBackToFront();
          v26 = v33;
          v28 = v33;
        }
      }
    }

    v56 = a2;
    v54 = v46;
  }

  else
  {
    sub_1C459C5F4(a1, v13 / v12, a4);
    v50 = a4 + v17 * v12;
    v54 = v50;
    while (a4 < v50 && a2 < v51)
    {
      sub_1C445FFF0(a2, v10, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v20 = v52;
      sub_1C445FFF0(a4, v52, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      v21 = *(v53 + 48);
      v22 = *&v10[v21];
      v23 = *(v20 + v21);
      sub_1C4420C3C(v20, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      sub_1C4420C3C(v10, &qword_1EC0B8FA8, &qword_1C4F0EA80);
      if (v23 >= v22)
      {
        if (a1 < a4 || a1 >= a4 + v12)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v55 = a4 + v12;
        a4 += v12;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v12)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v12;
      }

      a1 += v12;
      v56 = a1;
    }
  }

LABEL_59:
  sub_1C4BEB400(&v56, &v55, &v54);
}

uint64_t sub_1C49BBBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8FA8, &qword_1C4F0EA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49BBC58()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v1 = [objc_allocWithZone(MEMORY[0x1E69BDCC8]) init];
  v2 = [objc_allocWithZone(MEMORY[0x1E69BDCC0]) init];
  sub_1C448DE08();
  sub_1C49BF650(v3, v2);
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  *(inited + 32) = sub_1C4F01EC8();
  if (sub_1C4428DA0(inited))
  {
    sub_1C4D52140(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1C49E1628();
    v5 = MEMORY[0x1E69E7CD0];
  }

  sub_1C49BF6C4(v5, v2);
  aBlock[4] = sub_1C49BF878;
  v23 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C49BF8F0;
  aBlock[3] = &unk_1F43F3800;
  v6 = _Block_copy(aBlock);
  v7 = v23;

  aBlock[0] = 0;
  [v1 iterTopicRecordsWithQuery:v2 error:aBlock block:v6];
  v8 = sub_1C44251FC();
  _Block_release(v8);
  if (v7)
  {
    v9 = aBlock[0];
  }

  else
  {
    v10 = aBlock[0];
    v11 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDE2DE10);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();
    if (sub_1C43FD0E8(v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      sub_1C43FD0B4();
      _os_log_impl(v16, v17, v18, v19, v15, 2u);
      sub_1C43FBE2C();
    }

    v2 = v13;
  }

  swift_beginAccess();
  v20 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v20;
}

void sub_1C49BBF58()
{
  sub_1C43FBD3C();
  v0 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v77 - v2;
  v4 = sub_1C4EF9DD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v93 = sub_1C4EF9E28();
  sub_1C43FCDF8();
  v88 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v92 = v14 - v13;
  v15 = sub_1C456902C(&qword_1EC0BC018, &unk_1C4F23180);
  sub_1C43FBD18(v15);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v77 - v17;
  v91 = sub_1C4EF9E48();
  sub_1C43FCDF8();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v94 = v23 - v22;
  v24 = [objc_opt_self() supportedLanguages];
  v25 = sub_1C4F01AB8();

  v26 = sub_1C456902C(&qword_1EC0C0BD8, &qword_1C4F40170);
  sub_1C49BC7C4();
  v83 = sub_1C4F00F28();
  v27 = [objc_opt_self() sharedInputModeController];
  if (v27)
  {
    v84 = v10;
    v28 = sub_1C49BF75C(v27);
    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v30 = sub_1C49BE3C8(v28);

      if (v30)
      {
        v29 = v30;
      }
    }

    v90 = *(v29 + 16);
    if (!v90)
    {
LABEL_39:

      sub_1C43FE9F0();
      return;
    }

    v77[0] = v26;
    v31 = 0;
    v77[1] = v29;
    ++v88;
    v89 = v29 + 32;
    v82 = (v6 + 32);
    v81 = (v6 + 16);
    v85 = v20 + 8;
    v86 = (v6 + 8);
    v80 = xmmword_1C4F0D130;
    v32 = v84;
    v87 = v18;
    v79 = v3;
    v78 = v4;
    while (1)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9D48();
      v33 = v92;
      sub_1C4EF9E38();
      sub_1C4EF9E18();
      (*v88)(v33, v93);
      v34 = sub_1C4EF9D78();
      v35 = sub_1C440D3D8();
      sub_1C440175C(v35, v36, v34);
      if (v46)
      {
        sub_1C4607CD4(v18, &qword_1EC0BC018, &unk_1C4F23180);
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      else
      {
        v37 = sub_1C4EF9D68();
        v39 = v38;
        sub_1C440A6B8();
        (*(v40 + 8))(v41, v34);
      }

      sub_1C4EF9DF8();
      sub_1C440175C(v3, 1, v4);
      if (v46)
      {
        sub_1C4418958();
        sub_1C4EF9DC8();
        sub_1C440175C(v3, 1, v4);
        if (!v46)
        {
          sub_1C4607CD4(v3, &qword_1EC0C0B88, &qword_1C4F40128);
        }
      }

      else
      {
        (*v82)(v32, v3, v4);
      }

      if (*(v25 + 16))
      {
        break;
      }

LABEL_29:

      (*v86)(v32, v4);
LABEL_31:
      v69 = sub_1C4414D50();
      v70(v69);
LABEL_38:
      v18 = v87;
      if (++v31 == v90)
      {
        goto LABEL_39;
      }
    }

    sub_1C4F02AF8();
    sub_1C4F01298();
    v42 = sub_1C4F02B68();
    v43 = ~(-1 << *(v25 + 32));
    do
    {
      v44 = v42 & v43;
      if (((*(v25 + 56 + (((v42 & v43) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & v43)) & 1) == 0)
      {
        goto LABEL_29;
      }

      v45 = (*(v25 + 48) + 16 * v44);
      v46 = *v45 == v37 && v45[1] == v39;
      if (v46)
      {
        break;
      }

      v47 = sub_1C4F02938();
      v42 = v44 + 1;
    }

    while ((v47 & 1) == 0);
    v48 = sub_1C4F01108();

    v49 = sub_1C4F01138();
    v51 = v50;

    v52 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v52 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (!v52)
    {

      v32 = v84;
      (*v86)(v84, v4);
      goto LABEL_31;
    }

    sub_1C456902C(&qword_1EC0C0BE8, &qword_1C4F40178);
    v53 = (sub_1C456902C(&qword_1EC0C0BF0, &qword_1C4F40180) - 8);
    v54 = (*(*v53 + 80) + 32) & ~*(*v53 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = v80;
    v56 = v53[14];
    *(v55 + v54) = v48;
    (*v81)(v55 + v54 + v56, v84, v4);
    type metadata accessor for NLLanguage(0);
    sub_1C4419C1C();
    sub_1C49BF7C4(&qword_1EDDDBB40, v57, &unk_1C4F0C800);
    v58 = v48;
    v59 = sub_1C4F00F28();
    v60 = v83;
    swift_isUniquelyReferenced_nonNull_native();
    v95 = v60;
    sub_1C457B120(v59);
    sub_1C43FC438();
    if (__OFADD__(v63, v64))
    {
      __break(1u);
    }

    else
    {
      v65 = v61;
      v66 = v62;
      sub_1C456902C(&qword_1EC0C0BF8, &qword_1C4F40188);
      if (sub_1C4F02458())
      {
        sub_1C457B120(v59);
        v32 = v84;
        if ((v66 & 1) != (v68 & 1))
        {
          goto LABEL_43;
        }

        v65 = v67;
      }

      else
      {
        v32 = v84;
      }

      v71 = v95;
      v83 = v95;
      if (v66)
      {
        *(v95[7] + 8 * v65) = 0x3FF0000000000000;

LABEL_37:
        v4 = v78;
        (*v86)(v32, v78);
        v75 = sub_1C4414D50();
        v76(v75);
        v3 = v79;
        goto LABEL_38;
      }

      v95[(v65 >> 6) + 8] |= 1 << v65;
      *(v71[6] + 8 * v65) = v59;
      *(v71[7] + 8 * v65) = 0x3FF0000000000000;
      v72 = v71[2];
      v73 = __OFADD__(v72, 1);
      v74 = v72 + 1;
      if (!v73)
      {
        v71[2] = v74;

        goto LABEL_37;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  sub_1C4F029F8();
  __break(1u);
}

unint64_t sub_1C49BC7C4()
{
  result = qword_1EC0C0BE0;
  if (!qword_1EC0C0BE0)
  {
    sub_1C4572308(&qword_1EC0C0BD8, &qword_1C4F40170);
    sub_1C49BF7C4(&qword_1EC0B8590, MEMORY[0x1E6969680], MEMORY[0x1E6969690]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0BE0);
  }

  return result;
}

void sub_1C49BC878()
{
  sub_1C43FBD3C();
  v0 = sub_1C4EF9E48();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v6 = (v4 - v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v13 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  v14 = sub_1C43FBD18(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v48 - v19;
  sub_1C4EF9E08();
  sub_1C4EF9DF8();
  v21 = *(v2 + 8);
  v49 = v0;
  v21(v12, v0);
  v22 = sub_1C4EF9DD8();
  sub_1C440175C(v20, 1, v22);
  if (v23)
  {
    sub_1C4607CD4(v20, &qword_1EC0C0B88, &qword_1C4F40128);
  }

  else
  {
    sub_1C4EF9D68();
    sub_1C440A6B8();
    (*(v24 + 8))(v20, v22);
  }

  sub_1C4EF9E08();
  v25 = sub_1C4EF9D98();
  v21(v9, v49);
  v26 = *MEMORY[0x1E695D978];
  v27 = sub_1C4F01108();

  v28 = [v25 displayNameForKey:v26 value:v27];

  if (v28)
  {
    v29 = sub_1C4F01138();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  sub_1C456902C(&qword_1EC0C0BE8, &qword_1C4F40178);
  v32 = (sub_1C456902C(&qword_1EC0C0BF0, &qword_1C4F40180) - 8);
  v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1C4F0D130;
  v35 = (v34 + v33);
  if (v31)
  {
    v36 = v29;
  }

  else
  {
    v36 = 0;
  }

  if (v31)
  {
    v37 = v31;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v38 = v32[14];
  sub_1C49BE160(v36, v37);
  v40 = v39;

  *v35 = v40;
  sub_1C4EF9E08();
  sub_1C4EF9DF8();
  v21(v6, v49);
  v41 = sub_1C440D3D8();
  sub_1C440175C(v41, v42, v22);
  if (v23)
  {
    sub_1C4418958();
    sub_1C4EF9DC8();
    v43 = sub_1C440D3D8();
    sub_1C440175C(v43, v44, v22);
    if (!v23)
    {
      sub_1C4607CD4(v17, &qword_1EC0C0B88, &qword_1C4F40128);
    }
  }

  else
  {
    sub_1C440A6B8();
    (*(v45 + 32))(&v35[v38], v17, v22);
  }

  type metadata accessor for NLLanguage(0);
  sub_1C4419C1C();
  sub_1C49BF7C4(v46, v47, &unk_1C4F0C800);
  sub_1C4F00F28();
  sub_1C43FE9F0();
}

void sub_1C49BCCB8()
{
  sub_1C43FBD3C();
  v0 = sub_1C456902C(&qword_1EC0C0B88, &qword_1C4F40128);
  sub_1C43FBD18(v0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v48 = &v47 - v2;
  v3 = sub_1C4EF9DD8();
  sub_1C43FCDF8();
  v50 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v49 = v7 - v6;
  v8 = sub_1C4EF9E28();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = sub_1C4EF9E48();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  v25 = sub_1C456902C(&qword_1EC0BC018, &unk_1C4F23180);
  sub_1C43FBD18(v25);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v47 - v27;
  sub_1C4EF9E08();
  sub_1C4EF9E38();
  v29 = *(v17 + 8);
  v29(v24, v15);
  sub_1C4EF9E18();
  (*(v10 + 8))(v14, v8);
  v30 = sub_1C4EF9D78();
  sub_1C440175C(v28, 1, v30);
  if (v31)
  {
    sub_1C4607CD4(v28, &qword_1EC0BC018, &unk_1C4F23180);
  }

  else
  {
    sub_1C4EF9D68();
    sub_1C440A6B8();
    (*(v32 + 8))(v28, v30);
  }

  v33 = sub_1C4F01108();

  sub_1C4EF9E08();
  v34 = v48;
  sub_1C4EF9DF8();
  v29(v21, v15);
  v35 = sub_1C440D3D8();
  sub_1C440175C(v35, v36, v3);
  if (v31)
  {
    v40 = v49;
    sub_1C4418958();
    sub_1C4EF9DC8();
    v37 = sub_1C440D3D8();
    sub_1C440175C(v37, v38, v3);
    v39 = v50;
    if (!v31)
    {
      sub_1C4607CD4(v34, &qword_1EC0C0B88, &qword_1C4F40128);
    }
  }

  else
  {
    v40 = v49;
    v39 = v50;
    (*(v50 + 32))(v49, v34, v3);
  }

  sub_1C456902C(&qword_1EC0C0BE8, &qword_1C4F40178);
  v41 = (sub_1C456902C(&qword_1EC0C0BF0, &qword_1C4F40180) - 8);
  v42 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1C4F0D130;
  v44 = v41[14];
  *(v43 + v42) = v33;
  (*(v39 + 16))(v43 + v42 + v44, v40, v3);
  type metadata accessor for NLLanguage(0);
  sub_1C4419C1C();
  sub_1C49BF7C4(v45, v46, &unk_1C4F0C800);
  sub_1C4F00F28();
  (*(v39 + 8))(v40, v3);
  sub_1C43FE9F0();
}

uint64_t sub_1C49BD178()
{
  v63 = *MEMORY[0x1E69E9840];
  v0 = swift_allocObject();
  sub_1C456902C(&qword_1EC0C0BD8, &qword_1C4F40170);
  sub_1C49BC7C4();
  *(v0 + 16) = sub_1C4F00F28();
  v1 = (v0 + 16);
  v2 = [objc_opt_self() supportedLanguages];
  v3 = sub_1C4F01AB8();

  v4 = [objc_allocWithZone(MEMORY[0x1E69BDCA0]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69BDC98]) init];
  [v5 setLimit_];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v0;
  aBlock[4] = sub_1C49BF80C;
  v62 = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C49BF8F0;
  aBlock[3] = &unk_1F43F37B0;
  v7 = _Block_copy(aBlock);
  LODWORD(v3) = v62;

  aBlock[0] = 0;
  v59 = v4;
  [v4 iterRankedLocationsWithQuery:v5 error:aBlock block:v7];
  v8 = sub_1C44251FC();
  _Block_release(v8);
  if (v3)
  {
    v9 = aBlock[0];
  }

  else
  {
    v10 = aBlock[0];
    v11 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFD028 != -1)
    {
LABEL_30:
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDE2DE10);
    v13 = v11;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v57 = v5;
      v16 = v1;
      v17 = sub_1C43FD084();
      v18 = sub_1C43FFD34();
      aBlock[0] = v18;
      *v17 = 136315138;
      v19 = v11;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v20 = sub_1C4F01198();
      v22 = sub_1C441D828(v20, v21, aBlock);

      *(v17 + 4) = v22;
      sub_1C43FD0B4();
      _os_log_impl(v23, v24, v25, v26, v17, 0xCu);
      sub_1C440962C(v18);
      sub_1C43FBE2C();
      v1 = v16;
      v5 = v57;
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  swift_beginAccess();
  v11 = *v1;
  if (!*(*v1 + 16))
  {
LABEL_27:

    v52 = *(v0 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return v52;
  }

  v58 = v5;
  v54 = v0;
  v27 = v11 + 8;
  sub_1C43FD030();
  v30 = v29 & v28;
  v5 = ((v31 + 63) >> 6);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v0 = 0;
  v55 = v11;
  v56 = v1;
  while (1)
  {
    while (1)
    {
      if (!v30)
      {
        while (1)
        {
          v32 = v0 + 1;
          if (__OFADD__(v0, 1))
          {
            break;
          }

          if (v32 >= v5)
          {

            v0 = v54;
            v5 = v58;
            goto LABEL_27;
          }

          v30 = v27[v32];
          ++v0;
          if (v30)
          {
            v0 = v32;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_14:
      v33 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v34 = *(v11[6] + ((v0 << 9) | (8 * v33)));
      swift_beginAccess();
      v35 = *v1;
      v36 = *(*v1 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v36)
      {
        sub_1C457B120(v34);
        if (v38)
        {
          break;
        }
      }

      swift_endAccess();
    }

    v39 = *(*(v35 + 56) + 8 * v37);
    swift_endAccess();
    swift_beginAccess();
    swift_isUniquelyReferenced_nonNull_native();
    v60 = *v1;
    *v1 = 0x8000000000000000;
    sub_1C457B120(v34);
    sub_1C43FC438();
    v1 = (v42 + v43);
    if (__OFADD__(v42, v43))
    {
      goto LABEL_29;
    }

    v44 = v40;
    v45 = v41;
    sub_1C456902C(&qword_1EC0C0BF8, &qword_1C4F40188);
    if (sub_1C4F02458())
    {
      break;
    }

LABEL_20:
    if (v45)
    {

      v48 = v60;
      *(v60[7] + 8 * v44) = v39;
    }

    else
    {
      v48 = v60;
      v60[(v44 >> 6) + 8] |= 1 << v44;
      *(v60[6] + 8 * v44) = v34;
      *(v60[7] + 8 * v44) = v39;
      v49 = v60[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        __break(1u);
      }

      v60[2] = v51;
    }

    v1 = v56;
    *v56 = v48;
    swift_endAccess();
    v11 = v55;
  }

  sub_1C457B120(v34);
  if ((v45 & 1) == (v47 & 1))
  {
    v44 = v46;
    goto LABEL_20;
  }

  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C49BD738(uint64_t a1)
{
  type metadata accessor for NLLanguage(0);
  v8 = v7;
  sub_1C4419C1C();
  sub_1C49BF7C4(v9, v10, &unk_1C4F0C800);
  v59 = v8;
  v11 = sub_1C4F00F28();
  v68 = MEMORY[0x1E69E7CD0];
  v12 = [objc_opt_self() supportedLanguages];
  sub_1C4F01AB8();

  if (sub_1C4428DA0(a1))
  {
    sub_1C4426C7C();
    sub_1C43FDAB8();
    while (1)
    {
      if (v65)
      {
        v13 = sub_1C43FD258();
        v14 = MEMORY[0x1C6940F90](v13);
      }

      else
      {
        if (v3 >= *(v61 + 16))
        {
          goto LABEL_53;
        }

        v14 = *(a1 + 8 * v3 + 32);
      }

      v12 = v14;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_52;
      }

      v66 = v3 + 1;
      v15 = sub_1C4405E4C();
      v16 = [v15 bundleId];

      v17 = sub_1C4F01138();
      v19 = v18;

      v20 = v17 == 0xD000000000000013 && v4 == v19;
      if (v20)
      {
        break;
      }

      sub_1C4F02938();
      sub_1C44251FC();

      if (v17)
      {
        goto LABEL_15;
      }

LABEL_27:
      ++v3;
      if (v66 == v2)
      {
        v44 = v1;

        goto LABEL_30;
      }
    }

LABEL_15:
    v21 = sub_1C4405E4C();
    v22 = [v21 documentId];

    v23 = sub_1C4F01138();
    v25 = v24;

    if (sub_1C4499AD0(v23, v25, v68))
    {
    }

    else
    {
      v63 = v23;
      v26 = sub_1C4405E4C();
      sub_1C49BF814(v26, &selRef_language);
      v27 = sub_1C4F01108();

      sub_1C4F01138();
      sub_1C44249A8();

      v28 = sub_1C4410428();
      v30 = sub_1C4499AD0(v28, v29, v62);

      if (v30)
      {
        sub_1C44239FC(v1, 0);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4416238();
        sub_1C457EB50();
        sub_1C43FC438();
        if (__OFADD__(v32, v33))
        {
          goto LABEL_54;
        }

        v34 = v31;
        sub_1C456902C(&qword_1EC0C0C00, &qword_1C4F40198);
        sub_1C4411FE4();
        v35 = sub_1C4F02458();
        v11 = v67;
        if (v35)
        {
          v35 = sub_1C457EB50();
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_57;
          }
        }

        if ((v34 & 1) == 0)
        {
          sub_1C441C368(v43);
          v35 = v27;
        }

        sub_1C4403438(v35, v36, v37, v38, v39, v40, v41, v42, v58, v59, v60, v61, v62, v63, v64, v65, v66);

        v1 = sub_1C457EB40;
      }

      else
      {
      }

      v2 = v60;
    }

    v4 = v64;
    goto LABEL_27;
  }

  v44 = 0;
LABEL_30:

  sub_1C43FD030();
  sub_1C444FE30();
  v45 = 0;
  v46 = v11;
  while (v4)
  {
    v47 = v4;
LABEL_37:
    v4 = (v47 - 1) & v47;
    if (*(v46 + 16))
    {
      v49 = sub_1C4408CD8(v47);
      sub_1C457EB50();
      if (v50)
      {
        sub_1C445E8CC();
        sub_1C4416238();
        sub_1C457EB50();
        sub_1C4425DA0();
        if (v52)
        {
          goto LABEL_55;
        }

        v53 = v51;
        sub_1C456902C(&qword_1EC0C0C00, &qword_1C4F40198);
        sub_1C4411FE4();
        if (sub_1C4F02458())
        {
          sub_1C457EB50();
          sub_1C441E548();
          if (!v20)
          {
            goto LABEL_57;
          }

          v53 = v54;
        }

        else
        {
          v55 = v66;
        }

        v46 = v67;
        if (v55)
        {
          *(*(v67 + 56) + 8 * v53) = v5;
        }

        else
        {
          sub_1C440AE30();
          if (v52)
          {
            goto LABEL_56;
          }

          *(v67 + 16) = v56;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v48 >= v12)
    {

      sub_1C44239FC(v44, 0);
      return v46;
    }

    v47 = *(v11 + 64 + 8 * v48);
    ++v45;
    if (v47)
    {
      v45 = v48;
      goto LABEL_37;
    }
  }

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
  __break(1u);
LABEL_57:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C49BDC4C(uint64_t a1)
{
  type metadata accessor for NLLanguage(0);
  v8 = v7;
  sub_1C4419C1C();
  sub_1C49BF7C4(v9, v10, &unk_1C4F0C800);
  v59 = v8;
  v11 = sub_1C4F00F28();
  v68 = MEMORY[0x1E69E7CD0];
  v12 = [objc_opt_self() supportedLanguages];
  sub_1C4F01AB8();

  if (sub_1C4428DA0(a1))
  {
    sub_1C4426C7C();
    sub_1C43FDAB8();
    while (1)
    {
      if (v65)
      {
        v13 = sub_1C43FD258();
        v14 = MEMORY[0x1C6940F90](v13);
      }

      else
      {
        if (v3 >= *(v61 + 16))
        {
          goto LABEL_53;
        }

        v14 = *(a1 + 8 * v3 + 32);
      }

      v12 = v14;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_52;
      }

      v66 = v3 + 1;
      v15 = sub_1C4405E4C();
      v16 = [v15 bundleId];

      v17 = sub_1C4F01138();
      v19 = v18;

      v20 = v17 == 0xD000000000000016 && v4 == v19;
      if (v20)
      {
        break;
      }

      sub_1C4F02938();
      sub_1C44251FC();

      if (v17)
      {
        goto LABEL_15;
      }

LABEL_27:
      ++v3;
      if (v66 == v2)
      {
        v44 = v1;

        goto LABEL_30;
      }
    }

LABEL_15:
    v21 = sub_1C4405E4C();
    v22 = [v21 documentId];

    v23 = sub_1C4F01138();
    v25 = v24;

    if (sub_1C4499AD0(v23, v25, v68))
    {
    }

    else
    {
      v63 = v23;
      v26 = sub_1C4405E4C();
      sub_1C49BF814(v26, &selRef_language);
      v27 = sub_1C4F01108();

      sub_1C4F01138();
      sub_1C44249A8();

      v28 = sub_1C4410428();
      v30 = sub_1C4499AD0(v28, v29, v62);

      if (v30)
      {
        sub_1C44239FC(v1, 0);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C4416238();
        sub_1C457EB50();
        sub_1C43FC438();
        if (__OFADD__(v32, v33))
        {
          goto LABEL_54;
        }

        v34 = v31;
        sub_1C456902C(&qword_1EC0C0C00, &qword_1C4F40198);
        sub_1C4411FE4();
        v35 = sub_1C4F02458();
        v11 = v67;
        if (v35)
        {
          v35 = sub_1C457EB50();
          if ((v34 & 1) != (v36 & 1))
          {
            goto LABEL_57;
          }
        }

        if ((v34 & 1) == 0)
        {
          sub_1C441C368(v43);
          v35 = v27;
        }

        sub_1C4403438(v35, v36, v37, v38, v39, v40, v41, v42, v58, v59, v60, v61, v62, v63, v64, v65, v66);

        v1 = sub_1C457EB40;
      }

      else
      {
      }

      v2 = v60;
    }

    v4 = v64;
    goto LABEL_27;
  }

  v44 = 0;
LABEL_30:

  sub_1C43FD030();
  sub_1C444FE30();
  v45 = 0;
  v46 = v11;
  while (v4)
  {
    v47 = v4;
LABEL_37:
    v4 = (v47 - 1) & v47;
    if (*(v46 + 16))
    {
      v49 = sub_1C4408CD8(v47);
      sub_1C457EB50();
      if (v50)
      {
        sub_1C445E8CC();
        sub_1C4416238();
        sub_1C457EB50();
        sub_1C4425DA0();
        if (v52)
        {
          goto LABEL_55;
        }

        v53 = v51;
        sub_1C456902C(&qword_1EC0C0C00, &qword_1C4F40198);
        sub_1C4411FE4();
        if (sub_1C4F02458())
        {
          sub_1C457EB50();
          sub_1C441E548();
          if (!v20)
          {
            goto LABEL_57;
          }

          v53 = v54;
        }

        else
        {
          v55 = v66;
        }

        v46 = v67;
        if (v55)
        {
          *(*(v67 + 56) + 8 * v53) = v5;
        }

        else
        {
          sub_1C440AE30();
          if (v52)
          {
            goto LABEL_56;
          }

          *(v67 + 16) = v56;
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v48 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v48 >= v12)
    {

      sub_1C44239FC(v44, 0);
      return v46;
    }

    v47 = *(v11 + 64 + 8 * v48);
    ++v45;
    if (v47)
    {
      v45 = v48;
      goto LABEL_37;
    }
  }

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
  __break(1u);
LABEL_57:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void sub_1C49BE160(uint64_t a1, uint64_t a2)
{
  sub_1C49BED94();
  if (v4)
  {
    v5 = sub_1C4A6D598(v4);

    if (v5)
    {
      sub_1C43FD030();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = 0;
      while (v8)
      {
LABEL_9:
        v13 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v14 = (*(v5 + 48) + ((v11 << 10) | (16 * v13)));
        if (*v14 != a1 || v14[1] != a2)
        {
          sub_1C43FE990();
          if ((sub_1C4F02938() & 1) == 0)
          {
            continue;
          }
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        if (*(v5 + 16))
        {
          v16 = sub_1C43FE990();
          v34 = sub_1C445FAA8(v16, v17);
          v19 = v18;

          if (v19)
          {
            sub_1C43FF328(v20, v21, v22, v23, v24, v25, v26, v27, v34);
          }
        }

        else
        {
        }
      }

      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {

          sub_1C4EF9DA8();

          sub_1C4F01108();

          sub_1C4410198();
          return;
        }

        v8 = *(v5 + 64 + 8 * v12);
        ++v11;
        if (v8)
        {
          v11 = v12;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  if (qword_1EDDFECA0 != -1)
  {
LABEL_26:
    sub_1C441748C(&qword_1EDDFECA0);
  }

  v28 = sub_1C4F00978();
  sub_1C43FCEE8(v28, qword_1EDE2DF58);
  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CD8();
  if (os_log_type_enabled(v29, v30))
  {
    *swift_slowAlloc() = 0;
    sub_1C440BAE8(&dword_1C43F8000, v31, v32, "Mapping file countries_languages could not be extracted for Languages");
    sub_1C43FBE2C();
  }

  sub_1C4418958();
  sub_1C4410198();

  sub_1C4F01108();
}

uint64_t sub_1C49BE3C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_1C442B870(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C44CD9C0(v5 > 1, v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1C49BE4DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v57 = a3;
  v5 = sub_1C4EF9E48();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  v12 = sub_1C4EF9DD8();
  v58 = *(v12 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 location];
  v16 = [v15 placemark];

  v17 = sub_1C49BF814(v16, &selRef_ISOcountryCode);
  if (v18)
  {
    v19 = v17;
    v20 = v18;

    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v55 = v12;
      v22 = [a1 location];
      v23 = [v22 placemark];

      sub_1C49BF814(v23, &selRef_ISOcountryCode);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9DE8();
      v24 = [a1 location];
      v25 = [v24 placemark];

      sub_1C49BF814(v25, &selRef_administrativeArea);
      sub_1C4EF9D48();
      v26 = sub_1C4EF9D88();
      v28 = v27;

      v29 = *(v6 + 8);
      v29(v11, v5);
      sub_1C4EF9D48();
      v30 = sub_1C4EF9D88();
      v32 = v31;

      v29(v8, v5);
      v33 = sub_1C49BEAC4(v30, v32, v26, v28);

      v34 = sub_1C4F01138();
      LOBYTE(v25) = sub_1C4499AD0(v34, v35, v57);

      if ((v25 & 1) == 0)
      {
        (*(v58 + 8))(v59, v55);

        return;
      }

      sub_1C456902C(&qword_1EC0C0BE8, &qword_1C4F40178);
      v36 = (sub_1C456902C(&qword_1EC0C0BF0, &qword_1C4F40180) - 8);
      v37 = (*(*v36 + 80) + 32) & ~*(*v36 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1C4F0D130;
      v39 = v36[14];
      *(v38 + v37) = v33;
      (*(v58 + 16))(v38 + v37 + v39, v59, v55);
      type metadata accessor for NLLanguage(0);
      sub_1C49BF7C4(&qword_1EDDDBB40, type metadata accessor for NLLanguage, &unk_1C4F0C800);
      v40 = v33;
      v41 = sub_1C4F00F28();
      v42 = v56;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v60 = *(v42 + 16);
      v43 = v60;
      *(v42 + 16) = 0x8000000000000000;
      sub_1C457B120(v41);
      if (__OFADD__(*(v43 + 16), (v45 & 1) == 0))
      {
        __break(1u);
      }

      else
      {
        v46 = v44;
        v47 = v45;
        sub_1C456902C(&qword_1EC0C0BF8, &qword_1C4F40188);
        v48 = sub_1C4F02458();
        v51 = v59;
        v50 = v60;
        if ((v48 & 1) == 0)
        {
LABEL_10:
          *(v42 + 16) = v50;
          if ((v47 & 1) == 0)
          {
            v49.n128_u64[0] = 0;
            sub_1C457EB34(v46, v41, v50, v49);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          *(*(v50 + 56) + 8 * v46) = *(*(v50 + 56) + 8 * v46) + 1.0;
          swift_endAccess();

          (*(v58 + 8))(v51, v55);
          return;
        }

        sub_1C457B120(v41);
        if ((v47 & 1) == (v53 & 1))
        {
          v46 = v52;
          goto LABEL_10;
        }
      }

      sub_1C456902C(&qword_1EC0C0BD8, &qword_1C4F40170);
      sub_1C4F029F8();
      __break(1u);
    }
  }
}

void *sub_1C49BEAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49BF34C(v6, v7);
  v9 = v8;

  v10 = sub_1C4F01138();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    return v9;
  }

  if (a4)
  {
    v15 = a4;
  }

  else
  {
    a3 = 0;
    v15 = 0xE000000000000000;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49BE160(a3, v15);
  v17 = v16;

  return v17;
}

uint64_t sub_1C49BEB90()
{
  v0 = sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);
  v1 = sub_1C4F01E88();
  v2 = sub_1C440E4FC(v1);
  v4 = v3;

  if (v4)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v5 = sub_1C4F00978();
    sub_1C43FCEE8(v5, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_1C43FD084();
      v24 = sub_1C43FFD34();
      *v8 = 136315138;
      sub_1C4415B10();
      *(v8 + 4) = sub_1C441D828(0xD000000000000018, v9, v10);
      sub_1C44003E4(&dword_1C43F8000, v11, v12, "Loading %s from Core framework.");
      sub_1C440962C(v24);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v13 = sub_1C4F00978();
    sub_1C43FCEE8(v13, qword_1EDE2DE10);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CE8();
    if (sub_1C43FD0E8(v15))
    {
      v16 = sub_1C43FD084();
      v25 = sub_1C43FFD34();
      *v16 = 136315138;
      sub_1C4415B10();
      *(v16 + 4) = sub_1C441D828(0xD000000000000018, v17, v18);
      sub_1C43FD0B4();
      _os_log_impl(v19, v20, v21, v22, v16, 0xCu);
      sub_1C440962C(v25);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    return 0;
  }

  return v2;
}

void sub_1C49BED94()
{
  sub_1C43FBD3C();
  v1 = v0;
  v34 = *MEMORY[0x1E69E9840];
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v3 = v1();
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    v7 = objc_autoreleasePoolPush();
    sub_1C4EF9838();
    sub_1C4EF9938();
    v22 = objc_opt_self();
    v23 = sub_1C43FE990();
    v24(v23);
    sub_1C43FD258();
    v25 = sub_1C4EF9A38();
    v26 = sub_1C43FD258();
    sub_1C4434000(v26, v27);
    v32[0] = 0;
    v28 = [v22 JSONObjectWithData:v25 options:0 error:v32];

    if (v28)
    {
      v29 = v32[0];
      sub_1C4F02078();
      swift_unknownObjectRelease();
      sub_1C456902C(&qword_1EC0C34B0, &qword_1C4F40190);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v33 = 0;
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v30 = v32[0];
      v31 = sub_1C4EF97A8();

      swift_willThrow();
      objc_autoreleasePoolPop(v7);
      if (qword_1EDDFD028 != -1)
      {
        sub_1C43FE9B4(&qword_1EDDFD028);
      }

      v8 = sub_1C4F00978();
      sub_1C43FCEE8(v8, qword_1EDE2DE10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v9 = v31;
      v10 = sub_1C4F00968();
      v11 = sub_1C4F01CE8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v12 = 136315394;
        v13 = sub_1C441D828(v5, v6, v32);

        *(v12 + 4) = v13;
        *(v12 + 12) = 2080;
        v33 = v31;
        v14 = v31;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v15 = sub_1C4F01198();
        v17 = sub_1C441D828(v15, v16, v32);

        *(v12 + 14) = v17;
        sub_1C43FD0B4();
        _os_log_impl(v18, v19, v20, v21, v12, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FBE2C();
      }

      else
      {
      }
    }
  }

  sub_1C43FE9F0();
}

uint64_t sub_1C49BF148()
{
  v0 = sub_1C4461BB8(0, &qword_1EDDFE8E8, 0x1E696AAE8);
  v1 = sub_1C4F01E88();
  v2 = sub_1C440E4FC(v1);
  v4 = v3;

  if (v4)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v5 = sub_1C4F00978();
    sub_1C43FCEE8(v5, qword_1EDE2DE10);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CC8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = sub_1C43FD084();
      v24 = sub_1C43FFD34();
      *v8 = 136315138;
      sub_1C4415B10();
      *(v8 + 4) = sub_1C441D828(0xD000000000000016, v9, v10);
      sub_1C44003E4(&dword_1C43F8000, v11, v12, "Loading %s from Core framework.");
      sub_1C440962C(v24);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v13 = sub_1C4F00978();
    sub_1C43FCEE8(v13, qword_1EDE2DE10);
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CE8();
    if (sub_1C43FD0E8(v15))
    {
      v16 = sub_1C43FD084();
      v25 = sub_1C43FFD34();
      *v16 = 136315138;
      sub_1C4415B10();
      *(v16 + 4) = sub_1C441D828(0xD000000000000016, v17, v18);
      sub_1C43FD0B4();
      _os_log_impl(v19, v20, v21, v22, v16, 0xCu);
      sub_1C440962C(v25);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    return 0;
  }

  return v2;
}

void sub_1C49BF34C(uint64_t a1, uint64_t a2)
{
  sub_1C49BED94();
  if (!v4 || (v5 = sub_1C4A6D598(v4), , !v5))
  {
    if (qword_1EDDFECA0 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_21;
  }

  sub_1C43FD030();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (*(v5 + 48) + ((v11 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    if (*v14 == a1 && v15 == a2)
    {
      v16 = a1;
LABEL_16:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (*(v5 + 16))
      {
        v34 = sub_1C445FAA8(v16, v15);
        v19 = v18;

        if (v19)
        {
          sub_1C43FF328(v20, v21, v22, v23, v24, v25, v26, v27, v34);
        }
      }

      else
      {
      }
    }

    else if (sub_1C4F02938())
    {
      goto LABEL_16;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      sub_1C4EF9DA8();
      sub_1C44249A8();

      sub_1C4410428();
      sub_1C4F01108();

      sub_1C4410198();
      return;
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  sub_1C441748C(&qword_1EDDFECA0);
LABEL_21:
  v28 = sub_1C4F00978();
  sub_1C43FCEE8(v28, qword_1EDE2DF58);
  v29 = sub_1C4F00968();
  v30 = sub_1C4F01CD8();
  if (os_log_type_enabled(v29, v30))
  {
    *swift_slowAlloc() = 0;
    sub_1C440BAE8(&dword_1C43F8000, v31, v32, "Mapping file regions_languages could not be extracted for Languages");
    sub_1C43FBE2C();
  }

  sub_1C4418958();
  sub_1C4410198();

  sub_1C4F01108();
}

uint64_t sub_1C49BF5C8(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x1C6940330]();
  sub_1C4427EF0();
  sub_1C4F01748();
  return swift_endAccess();
}

void sub_1C49BF650(uint64_t a1, void *a2)
{
  v3 = sub_1C4F01AA8();

  [a2 setMatchingSourceBundleIds_];
}

void sub_1C49BF6C4(uint64_t a1, void *a2)
{
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  sub_1C49BF880();
  v3 = sub_1C4F01AA8();

  [a2 setMatchingAlgorithms_];
}

uint64_t sub_1C49BF75C(void *a1)
{
  v2 = [a1 enabledInputModeIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01678();

  return v3;
}

uint64_t sub_1C49BF7C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C49BF814(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    sub_1C4F01138();
    sub_1C44249A8();
  }

  return sub_1C4410428();
}

unint64_t sub_1C49BF880()
{
  result = qword_1EDDF0370;
  if (!qword_1EDDF0370)
  {
    sub_1C4461BB8(255, &qword_1EDDFE8E0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0370);
  }

  return result;
}

uint64_t sub_1C49BF8F4()
{
  sub_1C442BCF0();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = v2 + 32;
  if (v3)
  {
    while (1)
    {
      v1(&v10, v5);
      if (v0)
      {
        break;
      }

      if (v11)
      {
        sub_1C443FA18(&v10, v12);
        sub_1C443FA18(v12, &v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458A528();
          v4 = v7;
        }

        v6 = *(v4 + 16);
        if (v6 >= *(v4 + 24) >> 1)
        {
          sub_1C4401750();
          sub_1C458A528();
          v4 = v8;
        }

        *(v4 + 16) = v6 + 1;
        sub_1C443FA18(&v10, v4 + 40 * v6 + 32);
      }

      else
      {
        sub_1C4420C3C(&v10, &qword_1EC0C0C48, &qword_1C4F402B8);
      }

      v5 += 40;
      if (!--v3)
      {
        return sub_1C4408D00();
      }
    }
  }

  return sub_1C4408D00();
}

uint64_t sub_1C49BFA2C(void (*a1)(_OWORD *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    while (1)
    {
      v7 = *v5;
      v27[0] = *(v5 - 1);
      v27[1] = v7;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v28(v24, v27);
      if (v3)
      {
        break;
      }

      v8 = v26;
      if (v26 != 255)
      {
        v22 = v24[1];
        v23 = v24[0];
        v9 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1C43FCEC0();
          sub_1C458AFD0(v12, v13, v14, v6);
          v6 = v15;
        }

        v10 = *(v6 + 16);
        if (v10 >= *(v6 + 24) >> 1)
        {
          sub_1C4401750();
          sub_1C458AFD0(v16, v17, v18, v19);
          v6 = v20;
        }

        *(v6 + 16) = v10 + 1;
        v11 = v6 + 48 * v10;
        *(v11 + 32) = v23;
        *(v11 + 48) = v22;
        *(v11 + 64) = v9;
        *(v11 + 72) = v8;
      }

      v5 += 2;
      if (!--v4)
      {
        return sub_1C4408D00();
      }
    }
  }

  return sub_1C4408D00();
}

uint64_t sub_1C49BFB70()
{
  sub_1C442BCF0();
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    while (1)
    {
      v13 = *v4;
      v1(&v12, &v13);
      if (v0)
      {
        break;
      }

      if (v12)
      {
        v11 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C43FCEC0();
          sub_1C458B1B8();
          v5 = v8;
        }

        v6 = *(v5 + 16);
        v7 = v11;
        if (v6 >= *(v5 + 24) >> 1)
        {
          sub_1C4401750();
          sub_1C458B1B8();
          v7 = v11;
          v5 = v9;
        }

        *(v5 + 16) = v6 + 1;
        *(v5 + 16 * v6 + 32) = v7;
      }

      ++v4;
      if (!--v3)
      {
        return sub_1C4408D00();
      }
    }
  }

  return sub_1C4408D00();
}

void sub_1C49BFC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v61 = v27;
  v29 = v28;
  v30 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v30);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v31);
  v33 = v55 - v32;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  v60 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  v55[0] = v38;
  v55[1] = v39;
  v59 = (v39 + 32);
  v40 = MEMORY[0x1E69E7CC0];
  v41 = v26;
  v57 = v29;
  v58 = v26;
  v56 = v42;
  while (1)
  {
    if (v24 == v41)
    {
      goto LABEL_15;
    }

    if (v24 < v26)
    {
      break;
    }

    if (v41 >= v24)
    {
      goto LABEL_17;
    }

    a10 = v41;
    v29(&a10);
    if (v20)
    {

LABEL_15:
      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    if (sub_1C44157D4(v33, 1, v34) == 1)
    {
      sub_1C4420C3C(v33, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      v43 = *v59;
      v44 = v55[0];
      (*v59)(v55[0], v33, v34);
      v43(v60, v44, v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_1C43FCEC0();
        sub_1C458B150(v50, v51, v52, v40);
        v40 = v53;
      }

      v46 = *(v40 + 16);
      v45 = *(v40 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1C458B150(v45 > 1, v46 + 1, 1, v40);
        v40 = v54;
      }

      *(v40 + 16) = v46 + 1;
      sub_1C43FBF6C();
      v49 = v40 + v47 + *(v48 + 72) * v46;
      v34 = v56;
      v43(v49, v60, v56);
      v29 = v57;
      v26 = v58;
    }

    ++v41;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1C49BFEF8()
{
  sub_1C442BCF0();
  v2 = 0;
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = v5 + 40 * v2;
  while (1)
  {
    if (v4 == v2)
    {
      goto LABEL_14;
    }

    if (v2 >= v4)
    {
      break;
    }

    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_16;
    }

    v1(&v15, v7);
    if (v0)
    {

LABEL_14:
      sub_1C4408D00();
      return;
    }

    ++v2;
    v7 += 40;
    if (v15)
    {
      v14 = v15;
      v17 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458BC20();
        v6 = v12;
      }

      v9 = *(v6 + 16);
      v10 = v14;
      if (v9 >= *(v6 + 24) >> 1)
      {
        sub_1C4401750();
        sub_1C458BC20();
        v10 = v14;
        v6 = v13;
      }

      *(v6 + 16) = v9 + 1;
      v11 = v6 + 24 * v9;
      *(v11 + 32) = v10;
      *(v11 + 48) = v17;
      v2 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1C49C003C()
{
  sub_1C43FE96C();
  sub_1C4405E64();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C0C10, &qword_1C4F40270);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE94C();
  v7 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v28 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v27 = v11;
  v12 = 0;
  v13 = *(v1 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  while (v13 != v12)
  {
    v14 = *(sub_1C456902C(&qword_1EC0C0C18, &unk_1C4F40490) - 8);
    v4(v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12);
    if (v0)
    {

      break;
    }

    v15 = sub_1C441B908();
    if (sub_1C44157D4(v15, v16, v7) == 1)
    {
      sub_1C4420C3C(v2, &qword_1EC0C0C10, &qword_1C4F40270);
      ++v12;
    }

    else
    {
      sub_1C4571F0C(v2, v27);
      sub_1C4571F0C(v27, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458C320();
        v29 = v24;
      }

      v17 = *(v29 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v29 + 24) >> 1)
      {
        v26 = v17 + 1;
        sub_1C458C320();
        v18 = v26;
        v29 = v25;
      }

      ++v12;
      *(v29 + 16) = v18;
      sub_1C43FBF6C();
      sub_1C4571F0C(v23, v20 + v19 + *(v21 + 72) * v22);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C49C0318(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(BOOL, unint64_t, uint64_t, uint64_t, __n128), uint64_t (*a5)(void, unint64_t))
{
  v7 = result;
  v8 = 0;
  v9 = *(a3 + 16);
  v10 = a3 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  v21 = a3 + 32;
LABEL_2:
  for (i = v10 + 40 * v8; ; i += 40)
  {
    if (v9 == v8)
    {
      return v11;
    }

    if (v8 >= v9)
    {
      break;
    }

    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_17;
    }

    v7(&v20, i, a2);
    if (v5)
    {

      return v11;
    }

    if (v20.n128_u64[0])
    {
      v18 = v20;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v17 = sub_1C43FCEC0();
        result = (a4)(v17);
        v11 = result;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = v18;
      if (v15 >= v14 >> 1)
      {
        result = a4(v14 > 1, v15 + 1, 1, v11, v18);
        v16 = v18;
        v11 = result;
      }

      *(v11 + 16) = v15 + 1;
      *(v11 + 16 * v15 + 32) = v16;
      v8 = v13;
      v10 = v21;
      goto LABEL_2;
    }

    result = a5(0, v20.n128_u64[1]);
    ++v8;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_1C49C048C(void (*result)(__int128 *__return_ptr, unint64_t), __n128 a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(a4 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  while (v8 != v7)
  {
    if (v7 >= v8)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v9 = *(type metadata accessor for VirtualInteractionContact(0) - 8);
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_16;
    }

    result(&v28, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7);
    if (v4)
    {

      return;
    }

    if (*(&v28 + 1) == 1)
    {
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      sub_1C4420C3C(&v24, &qword_1EC0C0C30, &qword_1C4F402A0);
      ++v7;
    }

    else
    {
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v27 = v31;
      v11 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458E7F0(0, *(v11 + 16) + 1, 1, v11);
        v11 = v19;
      }

      v12 = v11;
      v13 = *(v11 + 16);
      v32 = v12;
      v14 = *(v12 + 24);
      v15 = v13 + 1;
      if (v13 >= v14 >> 1)
      {
        sub_1C458E7F0(v14 > 1, v13 + 1, 1, v32);
        v15 = v13 + 1;
        v32 = v20;
      }

      v22 = v26;
      v23 = v27;
      v16 = v24;
      v21 = v25;
      v17 = v32;
      *(v32 + 16) = v15;
      v18 = (v17 + (v13 << 6));
      v18[4] = v22;
      v18[5] = v23;
      v18[2] = v16;
      v18[3] = v21;
      v7 = v10;
    }
  }
}

void sub_1C49C0698()
{
  sub_1C43FE96C();
  sub_1C4405E64();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C0C40, &qword_1C4F402B0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FE94C();
  v7 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v32 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v31 = v11;
  v12 = 0;
  v13 = *(v1 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  while (v13 != v12)
  {
    v14 = *(sub_1C4EFA0F8() - 8);
    v4(v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12);
    if (v0)
    {

      break;
    }

    v15 = sub_1C441B908();
    if (sub_1C44157D4(v15, v16, v7) == 1)
    {
      sub_1C4420C3C(v2, &qword_1EC0C0C40, &qword_1C4F402B0);
      ++v12;
    }

    else
    {
      sub_1C44D0C04(v2, v31, type metadata accessor for LiveGlobalKnowledgeTriple);
      sub_1C44D0C04(v31, v32, type metadata accessor for LiveGlobalKnowledgeTriple);
      v17 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1C43FCEC0();
        sub_1C458BB48(v26, v27, v28, v33);
        v17 = v29;
      }

      v18 = v17;
      v19 = *(v17 + 16);
      v33 = v18;
      v20 = *(v18 + 24);
      v21 = v19 + 1;
      if (v19 >= v20 >> 1)
      {
        sub_1C458BB48(v20 > 1, v19 + 1, 1, v33);
        v21 = v19 + 1;
        v33 = v30;
      }

      ++v12;
      *(v33 + 16) = v21;
      sub_1C43FBF6C();
      sub_1C44D0C04(v25, v23 + v22 + *(v24 + 72) * v19, type metadata accessor for LiveGlobalKnowledgeTriple);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C49C0954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a22 = v25;
  a23 = v26;
  sub_1C4405E64();
  v59 = v27;
  v60 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  v34 = v24 + 56;
  v35 = 1 << *(v24 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v24 + 56);
  v38 = (v35 + 63) >> 6;
  v61 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v39 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  while (v37)
  {
    v40 = v60;
LABEL_11:
    (*(v29 + 16))(v33, *(v61 + 48) + *(v29 + 72) * (__clz(__rbit64(v37)) | (v39 << 6)), v40);
    v59(&a13, v33);
    if (v23)
    {
      v54 = sub_1C4409EF0();
      v55(v54);

LABEL_19:

      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    v37 &= v37 - 1;
    v42 = sub_1C4409EF0();
    v43(v42);
    v44 = a13;
    if (a13 != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_1C43FCEC0();
        sub_1C458A8D8(v48, v49, v50, v51);
        v58 = v52;
      }

      v46 = *(v58 + 16);
      v45 = *(v58 + 24);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v56 = *(v58 + 16);
        v57 = v46 + 1;
        sub_1C458A8D8(v45 > 1, v46 + 1, 1, v58);
        v46 = v56;
        v47 = v57;
        v58 = v53;
      }

      *(v58 + 16) = v47;
      *(v58 + v46 + 32) = v44 & 1;
    }
  }

  v40 = v60;
  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v38)
    {
      goto LABEL_19;
    }

    v37 = *(v34 + 8 * v41);
    ++v39;
    if (v37)
    {
      v39 = v41;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C49C0B9C()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v6 = *(v1 + 16);
  while (1)
  {
    if (v6 == v5)
    {
      goto LABEL_15;
    }

    if (v5 >= v6)
    {
      break;
    }

    v7 = *(sub_1C4EFDB98() - 8);
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_17;
    }

    v4(__src, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v0)
    {

LABEL_15:
      sub_1C43FBC80();
      return;
    }

    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1C49C2D34(__dst) == 1)
    {
      memcpy(v15, __src, sizeof(v15));
      sub_1C4420C3C(v15, &qword_1EC0C0C38, &qword_1C4F402A8);
      ++v5;
    }

    else
    {
      memcpy(v15, __src, sizeof(v15));
      v9 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C43FCEC0();
        sub_1C458ED30();
        v9 = v12;
      }

      v10 = v9;
      v11 = *(v9 + 16);
      v18 = v10;
      if (v11 >= *(v10 + 24) >> 1)
      {
        sub_1C458ED30();
        v18 = v13;
      }

      memcpy(v14, v15, sizeof(v14));
      *(v18 + 16) = v11 + 1;
      memcpy((v18 + 176 * v11 + 32), v14, 0xB0uLL);
      v5 = v8;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t LifeEventActivityProvider.__allocating_init(config:activitySignals:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LifeEventActivityProvider.init(config:activitySignals:)(a1, a2);
  return v4;
}

uint64_t LifeEventActivityProvider.init(config:activitySignals:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration(0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  swift_beginAccess();
  v13 = MEMORY[0x1E69E7CC0];
  if (qword_1EDDFF3C8)
  {
    (*(off_1EDDFF3D0 + 7))();
    v15 = (*(v14 + 8))();
    if (a2)
    {
LABEL_5:
      sub_1C4454058(a1, type metadata accessor for Configuration);

      *(v3 + 16) = a2;
      return v3;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (a2)
    {
      goto LABEL_5;
    }
  }

  v35 = v15;
  sub_1C456902C(&qword_1EC0B8AF8, &unk_1C4F401A0);
  v16 = swift_allocObject();
  v34 = xmmword_1C4F0C890;
  *(v16 + 16) = xmmword_1C4F0C890;
  *(v16 + 32) = 772;
  *(v16 + 34) = 1;
  *(v3 + 16) = v13;
  v17 = Configuration.isLifeEventAllDataSourcesEnabled.getter();
  v36 = v3;
  v33[1] = v3 + 16;
  if (v17)
  {
    sub_1C458C244(1, 4, 1, v16);
    v16 = v18;
    *(v18 + 16) = 4;
    *(v18 + 35) = 2;
    sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D480;
    v20 = type metadata accessor for InferredModeSignal();
    swift_allocObject();
    v21 = sub_1C493B648(1, 0);
    *(inited + 56) = v20;
    *(inited + 64) = sub_1C49C2BCC(&qword_1EDDE5BC0, 255, type metadata accessor for InferredModeSignal, &unk_1C4F3B6A0);
    *(inited + 32) = v21;
    v22 = type metadata accessor for MotionStateSignal();
    swift_allocObject();
    v23 = sub_1C4A450C4(1, 600.0);
    *(inited + 96) = v22;
    *(inited + 104) = sub_1C49C2BCC(qword_1EDDE63A0, 255, type metadata accessor for MotionStateSignal, &protocol conformance descriptor for MotionStateSignal);
    *(inited + 72) = v23;
    sub_1C4430EE8(a1, v12, type metadata accessor for Configuration);
    v24 = type metadata accessor for VirtualInteractionsSignal(0);
    swift_allocObject();
    v25 = sub_1C4D31AA8(v12, 0);
    *(inited + 136) = v24;
    *(inited + 144) = sub_1C49C2BCC(&qword_1EDDE1210, 255, type metadata accessor for VirtualInteractionsSignal, &unk_1C4F6E070);
    *(inited + 112) = v25;
    *(inited + 176) = &unk_1F43F02B0;
    *(inited + 184) = sub_1C49C2A58();
    *(inited + 152) = &unk_1F43D6D38;
    swift_beginAccess();
    sub_1C49D3D60(inited);
    swift_endAccess();
  }

  sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
  v26 = swift_initStackObject();
  *(v26 + 16) = v34;
  sub_1C4430EE8(a1, v12, type metadata accessor for Configuration);
  sub_1C4430EE8(v12, v9, type metadata accessor for Configuration);
  type metadata accessor for ConfidenceService(0);
  swift_allocObject();
  v27 = sub_1C4689020(v9, 10);
  sub_1C4454058(v12, type metadata accessor for Configuration);
  *(v26 + 56) = &unk_1F43F03B0;
  *(v26 + 64) = sub_1C49C13B4();
  *(v26 + 32) = v16;
  *(v26 + 40) = v27;
  sub_1C4430EE8(a1, v12, type metadata accessor for Configuration);
  sub_1C4430EE8(v12, v9, type metadata accessor for Configuration);
  swift_allocObject();
  v28 = sub_1C4689020(v9, 10);
  sub_1C4454058(v12, type metadata accessor for Configuration);
  *(v26 + 96) = &unk_1F43F0330;
  *(v26 + 104) = sub_1C49C1408();
  *(v26 + 72) = &unk_1F43D6D10;
  *(v26 + 80) = v28;
  v29 = type metadata accessor for StoredLocationVisitSignal();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v26 + 136) = v29;
  *(v26 + 144) = sub_1C49C2BCC(qword_1EDDF2F08, 255, type metadata accessor for StoredLocationVisitSignal, &unk_1C4F55B8C);
  *(v26 + 112) = v30;
  v37 = v26;
  sub_1C49D3D60(v35);
  v31 = v37;
  swift_beginAccess();
  sub_1C49D3D60(v31);
  swift_endAccess();
  sub_1C4454058(a1, type metadata accessor for Configuration);
  return v36;
}

unint64_t sub_1C49C13B4()
{
  result = qword_1EDDF1558;
  if (!qword_1EDDF1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1558);
  }

  return result;
}

unint64_t sub_1C49C1408()
{
  result = qword_1EDDF0FF0;
  if (!qword_1EDDF0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0FF0);
  }

  return result;
}

uint64_t sub_1C49C145C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v8[2] = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C49C0318(sub_1C49C2AAC, v8, v3, sub_1C458C26C, sub_1C45B4C6C);

  v8[4] = v4;
  v8[5] = sub_1C49C1748;
  v8[6] = 0;

  v5 = sub_1C43FD2BC();
  sub_1C456902C(v5, v6);
  sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  sub_1C4401CBC(qword_1EDDF3168, &qword_1EC0BDB40, &unk_1C4F30E20, &protocol conformance descriptor for OrderedMergeAsyncSequence<A>);
  return sub_1C4F02848();
}

void sub_1C49C15CC(void *a1@<X0>, void *a3@<X8>)
{
  sub_1C4409678(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  sub_1C4AFD318();
  if (v3)
  {

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    AsyncSequence.toAnySessionAsyncSequence()(AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), &v10);
    *a3 = v10;
    (*(v6 + 8))(v8, AssociatedTypeWitness);
  }
}

uint64_t sub_1C49C1748(void *a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  v11 = a1[3];
  v12 = a1[4];
  sub_1C4409678(a1, v11);
  (*(v12 + 16))(v11, v12);
  v13 = a2[3];
  v14 = a2[4];
  sub_1C4409678(a2, v13);
  (*(v14 + 16))(v13, v14);
  LOBYTE(a1) = sub_1C4EF9C18();
  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  return a1 & 1;
}

uint64_t sub_1C49C18C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C49C18EC, 0, 0);
}

uint64_t sub_1C49C18EC()
{
  sub_1C49C194C(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C49C194C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v108 = type metadata accessor for ActivityEventContent(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v109 = v5 - v4;
  v6 = sub_1C456902C(&qword_1EC0BF8E0, &qword_1C4F3E000);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v103 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v102 - v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v104 = v12;
  v107 = type metadata accessor for InferredActivitySegment(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  v17 = sub_1C456902C(&qword_1EC0C0C20, &unk_1C4F40278);
  v18 = sub_1C43FBD18(v17);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v105 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v106 = v24;
  type metadata accessor for VirtualInteraction(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  v120 = 0u;
  v121 = 0u;
  v30 = a1[3];
  v29 = a1[4];
  v110 = a1;
  sub_1C4409678(a1, v30);
  v31 = *(v29 + 32);
  v119[3] = swift_getAssociatedTypeWitness();
  sub_1C4422F90(v119);
  v31(v30, v29);
  sub_1C43FC648();
  sub_1C4411FF4();
  if (swift_dynamicCast())
  {
    sub_1C43FC648();
    sub_1C4411FF4();
    if (swift_dynamicCast())
    {
      sub_1C49C2464(v113);
      v32 = 0;
      LOBYTE(v22) = v113[0];
LABEL_7:
      v33 = MEMORY[0x1E69E7CC0];
      v34 = 1;
      goto LABEL_41;
    }

    goto LABEL_54;
  }

  sub_1C43FC648();
  sub_1C4411FF4();
  if (swift_dynamicCast())
  {
    sub_1C43FC648();
    sub_1C4411FF4();
    if (swift_dynamicCast())
    {
      sub_1C49C2490(v112);
      v32 = 0;
      LOBYTE(v22) = v112[0];
      goto LABEL_7;
    }

LABEL_54:
    sub_1C4420C3C(&v120, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_55;
  }

  sub_1C43FC648();
  sub_1C43FDADC();
  if (sub_1C443FDF8(v28, v35, v36))
  {
    sub_1C441FE3C();
    sub_1C4454058(v28, v37);
    sub_1C43FC648();
    sub_1C43FDADC();
    v38 = v106;
    sub_1C443FDF8(v106, v39, v40);
    sub_1C4401750();
    sub_1C440BAA8(v41, v42, v43, v44);
    sub_1C445FFF0(v38, v22, &qword_1EC0C0C20, &unk_1C4F40278);
    sub_1C43FC0FC(v22);
    if (v72)
    {
      sub_1C4420C3C(v22, &qword_1EC0C0C20, &unk_1C4F40278);
      LOBYTE(v22) = -32;
    }

    else
    {
      sub_1C441FE3C();
      sub_1C4454058(v22, v56);
      sub_1C49C24EC(&v114);
      LOBYTE(v22) = v114;
    }

    v57 = v105;
    sub_1C445FFF0(v38, v105, &qword_1EC0C0C20, &unk_1C4F40278);
    sub_1C43FC0FC(v57);
    if (v72)
    {
      sub_1C4420C3C(v57, &qword_1EC0C0C20, &unk_1C4F40278);
      v33 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v33 = sub_1C49C250C();
      sub_1C441FE3C();
      sub_1C4454058(v57, v68);
    }

    sub_1C4420C3C(v38, &qword_1EC0C0C20, &unk_1C4F40278);
    v32 = 0;
LABEL_26:
    v34 = 1;
    goto LABEL_40;
  }

  sub_1C43FC648();
  sub_1C43FDADC();
  v45 = v107;
  if (!sub_1C443FDF8(v16, v46, v47))
  {
    v58 = sub_1C442B870(v119, v113);
    if (sub_1C4416244(v58, v59, v60, &type metadata for StoredLocationVisitWithTransition))
    {
      sub_1C49C2CB8(&v114);
      v61 = sub_1C442B870(v119, v113);
      if ((sub_1C4416244(v61, v62, v63, &type metadata for StoredLocationVisitWithTransition) & 1) == 0)
      {
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v114 = 0u;
      }

      sub_1C445FFF0(&v114, v112, &qword_1EC0C0C28, &qword_1C4F40288);
      if (!v112[3])
      {
        sub_1C4420C3C(&v120, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v65 = &qword_1EC0C0C28;
        v66 = &qword_1C4F40288;
        v67 = v112;
        goto LABEL_59;
      }

      memcpy(v113, v112, sizeof(v113));
      sub_1C445FFF0(&v113[5], v112, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      sub_1C49C2CB8(v113);
      v64 = v112[3];
      sub_1C4420C3C(v112, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      if (v64)
      {
        v65 = &qword_1EC0BCD10;
        v66 = &qword_1C4F0C8C0;
        v67 = &v120;
LABEL_59:
        sub_1C4420C3C(v67, v65, v66);
        sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
        v98 = sub_1C4405114();
        sub_1C440BAA8(v98, v99, v100, v101);
        sub_1C4420C3C(&v114, &qword_1EC0C0C28, &qword_1C4F40288);
        return sub_1C440962C(v119);
      }

      sub_1C4420C3C(&v114, &qword_1EC0C0C28, &qword_1C4F40288);
      v32 = 0;
      v33 = MEMORY[0x1E69E7CC0];
      v34 = 1;
      LOBYTE(v22) = -99;
    }

    else
    {
      sub_1C43FC648();
      sub_1C4411FF4();
      if (!swift_dynamicCast())
      {
        if (qword_1EDDFDCF8 != -1)
        {
          sub_1C43FF284(&qword_1EDDFDCF8);
        }

        swift_beginAccess();
        if (!qword_1EDDFF3C8)
        {
          goto LABEL_54;
        }

        v93 = (*(off_1EDDFF3D0 + 7))();
        v95 = v94;
        v96 = v110;
        (*(v94 + 16))(&v114, v110, v93, v94);
        if (v114 >= 0xE0u)
        {
          LOBYTE(v22) = -32;
        }

        else
        {
          LOBYTE(v22) = v114;
        }

        (*(v95 + 24))(&v114, v96, v93, v95);
        if (*(&v115 + 1))
        {
          sub_1C4420C3C(&v120, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          sub_1C44482AC(&v114, &v120);
        }

        else
        {
          sub_1C4420C3C(&v114, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        }

        v32 = 0;
        v33 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }

      sub_1C43FC648();
      sub_1C4411FF4();
      v73 = swift_dynamicCast();
      v74 = v113[1];
      if (v113[1])
      {
        v75 = v73;
      }

      else
      {
        v75 = 0;
      }

      if (v75 == 1)
      {
        v76 = v113[0];
        v32 = v113[2];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4420C3C(&v120, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        *&v120 = v76;
        *(&v120 + 1) = v74;
        *&v121 = v32;
        *(&v121 + 1) = &type metadata for GamingActivityContent;
      }

      else
      {
        sub_1C4420C3C(&v120, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v32 = 0;
        v120 = 0u;
        v121 = 0u;
      }

      v34 = v75 ^ 1;
      v33 = MEMORY[0x1E69E7CC0];
      LOBYTE(v22) = -117;
    }

LABEL_41:
    LOBYTE(v114) = v22;
    LOBYTE(v112[0]) = 0x80;
    if (!static ActivityType.== infix(_:_:)(&v114, v112))
    {
      if (qword_1EDDF7950 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for SourceIdPrefix(0);
      v79 = sub_1C442B738(v78, qword_1EDE2D6C8);
      v80 = v109;
      sub_1C4430EE8(v79, v109 + *(v108 + 32), type metadata accessor for SourceIdPrefix);
      sub_1C445FFF0(&v120, &v114, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      *(v80 + 40) = 0u;
      *(v80 + 24) = 0u;
      *v80 = v22;
      *(v80 + 8) = v32;
      *(v80 + 16) = v34;
      sub_1C4815D50(&v114, v80 + 24);
      *(v80 + 56) = v33;
      v81 = v110;
      sub_1C4409678(v110, v110[3]);
      v82 = v111;
      v83 = sub_1C43FD2BC();
      v84(v83);
      v85 = v81[4];
      sub_1C4409678(v81, v81[3]);
      v86 = *(v85 + 24);
      v87 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
      v88 = sub_1C43FD2BC();
      v86(v88);
      sub_1C4420C3C(&v120, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      sub_1C44D0C04(v80, v82 + *(v87 + 32), type metadata accessor for ActivityEventContent);
      v89 = v82;
      v90 = 0;
      v91 = 1;
      v92 = v87;
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  sub_1C442CDC0();
  sub_1C4454058(v16, v48);
  sub_1C43FC648();
  sub_1C43FDADC();
  v49 = v104;
  sub_1C443FDF8(v104, v50, v51);
  sub_1C4401750();
  sub_1C440BAA8(v52, v53, v54, v55);
  v22 = v102;
  sub_1C445FFF0(v49, v102, &qword_1EC0BF8E0, &qword_1C4F3E000);
  sub_1C43FC0FC(v22);
  if (v72)
  {
    sub_1C4420C3C(v22, &qword_1EC0BF8E0, &qword_1C4F3E000);
    LOBYTE(v22) = -32;
  }

  else
  {
    v69 = v22[*(v45 + 24)];
    sub_1C442CDC0();
    sub_1C4454058(v22, v70);
    v22 = (0x9A989C9B858BuLL >> (8 * v69));
  }

  v71 = v103;
  sub_1C445FFF0(v49, v103, &qword_1EC0BF8E0, &qword_1C4F3E000);
  sub_1C43FC0FC(v71);
  if (v72)
  {
    v34 = 1;
  }

  else
  {
    v34 = 0;
  }

  if (v72)
  {
    sub_1C4420C3C(v71, &qword_1EC0BF8E0, &qword_1C4F3E000);
    v32 = 0;
  }

  else
  {
    v32 = *(v71 + *(v45 + 28));
    sub_1C442CDC0();
    sub_1C4454058(v71, v77);
  }

  sub_1C4420C3C(v49, &qword_1EC0BF8E0, &qword_1C4F3E000);
  v33 = MEMORY[0x1E69E7CC0];
LABEL_40:
  if (v22 < 0xE0u)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_1C4420C3C(&v120, &qword_1EC0BCD10, &qword_1C4F0C8C0);

LABEL_55:
  sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  v89 = sub_1C4405114();
LABEL_56:
  sub_1C440BAA8(v89, v90, v91, v92);
  return sub_1C440962C(v119);
}

uint64_t sub_1C49C250C()
{
  v1 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v20 - v3;
  type metadata accessor for VirtualInteractionContact(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = type metadata accessor for VirtualInteraction(0);
  v10 = *(v0 + *(v9 + 32));
  if (v10 == 1)
  {
    v12 = MEMORY[0x1EEE9AC00](v9);
    *(&v20 - 2) = v0;
    sub_1C49C048C(sub_1C49C2D0C, v12, (&v20 - 4), v13);
    return v14;
  }

  else
  {
    if (!v10)
    {
      sub_1C445FFF0(v0 + *(v9 + 36), v4, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      sub_1C43FC0FC(v4);
      if (v11)
      {
        sub_1C4420C3C(v4, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      }

      else
      {
        sub_1C44D0C04(v4, v8, type metadata accessor for VirtualInteractionContact);
        sub_1C49C2794(v8, &v20);
        v16 = v20;
        v17 = v21;
        v25 = v22;
        v26 = v23;
        v27 = v24;
        if (v21 != 1)
        {
          sub_1C456902C(&qword_1EC0B89A8, &unk_1C4F40290);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1C4F0D130;
          *(v15 + 32) = v16;
          *(v15 + 40) = v17;
          v19 = v26;
          *(v15 + 48) = v25;
          *(v15 + 64) = v19;
          *(v15 + 80) = v27;
          sub_1C440F8D0();
          return v15;
        }

        sub_1C440F8D0();
      }
    }

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t LifeEventActivityProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1C49C2794(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v4);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  if (*(a1 + 8) && (v8 = String.normalizedContactHandle()(), v8.value._object))
  {
    countAndFlagsBits = v8.value._countAndFlagsBits;
    object = v8.value._object;
    v11 = String.normalizedContactHandle()();
    if (v11.value._object)
    {
      v12 = v11.value._countAndFlagsBits;
    }

    else
    {
      v12 = 0;
    }

    if (v11.value._object)
    {
      v13 = v11.value._object;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v36 = v8;
    v34 = 43;
    v35 = 0xE100000000000000;
    sub_1C4415EA8();
    v14 = sub_1C4F02048();
    if (v14)
    {
      v15 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
    }

    else
    {
      v36 = v8;
      v34 = 64;
      v35 = 0xE100000000000000;
      v14 = sub_1C4425DB8(v14, MEMORY[0x1E69E6158]);
      if (v14)
      {
        v15 = v8.value._countAndFlagsBits;
      }

      else
      {
        v15 = 0;
      }

      if (v14)
      {
        v16 = v8.value._object;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v17 = 0;
      }

      else
      {
        v17 = v8.value._countAndFlagsBits;
      }

      v31 = v17;
      v32 = v16;
      if (v14)
      {
        v18 = 0;
      }

      else
      {
        v18 = v8.value._object;
      }

      v33 = v18;
      countAndFlagsBits = 0;
      object = 0;
    }

    v36.value._countAndFlagsBits = v12;
    v36.value._object = v13;
    v34 = 43;
    v35 = 0xE100000000000000;
    v19 = sub_1C4425DB8(v14, MEMORY[0x1E69E6158]);
    if (v19)
    {

      countAndFlagsBits = v12;
      object = v13;
      v21 = v31;
      v20 = v32;
    }

    else
    {
      v36.value._countAndFlagsBits = v12;
      v36.value._object = v13;
      v34 = 64;
      v35 = 0xE100000000000000;
      if (sub_1C4425DB8(v19, MEMORY[0x1E69E6158]))
      {

        v15 = v12;
        v20 = v13;
        v21 = v31;
      }

      else
      {
        v21 = v31;
        if (v33)
        {
        }

        else
        {
          v21 = v12;
          v33 = v13;
        }

        v20 = v32;
      }
    }

    v22 = type metadata accessor for VirtualInteractionContact(0);
    sub_1C445FFF0(a1 + *(v22 + 28), v7, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v23 = sub_1C4EFF0C8();
    if (sub_1C44157D4(v7, 1, v23) == 1)
    {
      sub_1C4420C3C(v7, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v24 = sub_1C4EFF018();
      v25 = v26;
      v27 = sub_1C43FD2BC();
      v28(v27);
    }

    *a2 = v24;
    a2[1] = v25;
    v29 = v33;
    a2[2] = v21;
    a2[3] = v29;
    a2[4] = v15;
    a2[5] = v20;
    a2[6] = countAndFlagsBits;
    a2[7] = object;
  }

  else
  {
    *a2 = xmmword_1C4F0D7C0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
  }
}

unint64_t sub_1C49C2A58()
{
  result = qword_1EDDE2AD8[0];
  if (!qword_1EDDE2AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE2AD8);
  }

  return result;
}

uint64_t sub_1C49C2AC8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C44A7DA0;

  return sub_1C49C18C8(a1, a2, v2);
}

uint64_t sub_1C49C2B74(uint64_t a1, uint64_t a2)
{
  result = sub_1C49C2BCC(&unk_1EDDF34E0, a2, type metadata accessor for LifeEventActivityProvider, &protocol conformance descriptor for LifeEventActivityProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49C2BCC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C49C2D34(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C49C2D8C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C49C2E0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v36 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v17 = (v15 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  result = sub_1C49C31BC(a1, &v34 - v19);
  if (!v2)
  {
    v35 = a2;
    sub_1C4EF9CC8();
    sub_1C4419C34();
    sub_1C4498EB8(v22, v23, MEMORY[0x1E6969548]);
    if (sub_1C4F01068())
    {
      type metadata accessor for DateRangeError(0);
      sub_1C4498EB8(qword_1EDDEA868, type metadata accessor for DateRangeError, &unk_1C4F40388);
      swift_allocError();
      v24 = v36;
      v26 = v25;
      v27 = sub_1C456902C(&qword_1EC0C0C58, &unk_1C4F40340);
      v35 = *(v27 + 48);
      v28 = *(v24 + 16);
      v28(v26, v20, v12);
      v28(&v35[v26], v17, v12);
      sub_1C440BAA8(v26, 0, 1, v27);
      swift_willThrow();
      v29 = *(v24 + 8);
      v29(v17, v12);
      return (v29)(v20, v12);
    }

    else
    {
      result = sub_1C4F01088();
      if (result)
      {
        v30 = *(v36 + 32);
        v30(v11, v20, v12);
        v30(&v11[*(v5 + 48)], v17, v12);
        sub_1C49C35F4(v11, v8);
        v34 = *(v5 + 48);
        v30(v35, v8, v12);
        v31 = *(v36 + 8);
        v31(v8 + v34, v12);
        sub_1C4575F28(v11, v8);
        v32 = *(v5 + 48);
        v33 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
        v30(&v35[*(v33 + 36)], (v8 + v32), v12);
        return (v31)(v8, v12);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1C49C31BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Pipeline.StatusStore(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  sub_1C4430F48(a1, v11, type metadata accessor for Configuration);
  v15 = *(v9 + 28);
  v11[v15] = 1;
  if (qword_1EDDF7B90 != -1)
  {
    swift_once();
  }

  sub_1C4430F48(v11, v7, type metadata accessor for Configuration);
  v16 = v11[v15];
  v27 = 0xD000000000000010;
  v28 = 0x80000001C4FAAFC0;
  v17 = 0xE700000000000000;
  v18 = 0x6E776F6E6B6E75;
  switch(v16)
  {
    case 1:
      v17 = 0xE400000000000000;
      v18 = 1819047270;
      break;
    case 2:
      v17 = 0xE500000000000000;
      v18 = 0x61746C6564;
      break;
    case 3:
      v17 = 0xEA0000000000676ELL;
      v18 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v18, v17);

  MEMORY[0x1C6940010](0x756F69766572702ELL, 0xE900000000000073);
  v19 = v27;
  v20 = v28;
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  KeyValueStore.init(config:domain:)(v7, v19, v20);
  if (v2)
  {

    sub_1C47CE078(v11);
    v21 = sub_1C4EF9CD8();
    sub_1C440BAA8(v14, 1, 1, v21);
LABEL_10:
    sub_1C44686E4(v14);
    type metadata accessor for DateRangeError(0);
    sub_1C4498EB8(qword_1EDDEA868, type metadata accessor for DateRangeError, &unk_1C4F40388);
    swift_allocError();
    v24 = v23;
    v25 = sub_1C456902C(&qword_1EC0C0C58, &unk_1C4F40340);
    sub_1C440BAA8(v24, 1, 1, v25);
    return swift_willThrow();
  }

  sub_1C446FB00();

  sub_1C47CE078(v11);
  v22 = sub_1C4EF9CD8();
  if (sub_1C44157D4(v14, 1, v22) == 1)
  {
    goto LABEL_10;
  }

  return (*(*(v22 - 8) + 32))(a2, v14, v22);
}

uint64_t sub_1C49C35F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DateRangeError(uint64_t a1)
{
  result = qword_1EDDEA838;
  if (!qword_1EDDEA838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C49C36B0()
{
  v1 = v0;
  v2 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = type metadata accessor for DateRangeError(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4430F48(v1, v14, type metadata accessor for DateRangeError);
  v15 = sub_1C456902C(&qword_1EC0C0C58, &unk_1C4F40340);
  if (sub_1C44157D4(v14, 1, v15) == 1)
  {
    return 0xD00000000000004BLL;
  }

  v17 = *(v15 + 48);
  v18 = *(v4 + 32);
  v18(v11, v14, v2);
  v18(v8, &v14[v17], v2);
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FABD50);
  sub_1C4419C34();
  sub_1C4498EB8(v19, v20, MEMORY[0x1E6969570]);
  v21 = sub_1C4F02858();
  MEMORY[0x1C6940010](v21);

  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4FABD70);
  v22 = sub_1C4F02858();
  MEMORY[0x1C6940010](v22);

  v16 = v25[0];
  v23 = *(v4 + 8);
  v23(v8, v2);
  v23(v11, v2);
  return v16;
}

void sub_1C49C3968()
{
  sub_1C4412004();
  if (!v4)
  {
    sub_1C440AE64();
    sub_1C4598F7C();
    if (!v1)
    {
      return;
    }

    goto LABEL_6;
  }

  v13 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C441CBA4();
  v5 = MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C442CDD8(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  sub_1C4598F7C();
  if (v1)
  {

LABEL_6:
    *v0 = 4;
    return;
  }
}

uint64_t sub_1C49C3A3C(uint64_t a1)
{
  sub_1C49C3A94(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1C49C3A94(uint64_t a1)
{
  if (!qword_1EDDF01E8)
  {
    sub_1C4EF9CD8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDF01E8);
    }
  }
}

uint64_t sub_1C49C3B28@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  result = (*(*(v1 + 16) + 16))(v5);
  if (!v2)
  {
    sub_1C49CA8D0(v7, a1);
    return sub_1C49C3CB4(v7);
  }

  return result;
}

unint64_t sub_1C49C3C60()
{
  result = qword_1EC0C0C60;
  if (!qword_1EC0C0C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0C60);
  }

  return result;
}

uint64_t sub_1C49C3CB4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C49C3D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  sub_1C4F00978();
  sub_1C43FCDF8();
  v55 = v3;
  v56 = v2;
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v58 = (v5 - v4);
  v6 = sub_1C4EF9308();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v19 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  v25 = v24 - v23;
  sub_1C44867F4();
  v26 = sub_1C4F01E98();
  if (!v26)
  {
    sub_1C440BAA8(v18, 1, 1, v19);
LABEL_7:
    sub_1C4423A0C(v18, &unk_1EC0BABB0, &qword_1C4F16ED0);
    sub_1C49C455C();
    swift_allocError();
    *v32 = 0;
    return swift_willThrow();
  }

  v27 = v26;
  v59 = v21;
  v28 = sub_1C4486838(0xD00000000000001ELL, 0x80000001C4FABE30, 1852797802, 0xE400000000000000, v26);

  if (v28)
  {
    sub_1C4EF98C8();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  sub_1C440BAA8(v15, v29, 1, v19);
  sub_1C49C45B0(v15, v18);
  v30 = sub_1C44157D4(v18, 1, v19);
  v31 = v59;
  if (v30 == 1)
  {
    goto LABEL_7;
  }

  (*(v59 + 32))(v25, v18, v19);
  sub_1C4EF9348();
  swift_allocObject();
  sub_1C4EF9338();
  (*(v8 + 104))(v12, *MEMORY[0x1E6967F30], v6);
  sub_1C4EF9318();
  v34 = v57;
  v35 = sub_1C4EF9938();
  if (v34)
  {
    v37 = v58;
    sub_1C4F00198();
    v41 = v34;
    v42 = sub_1C4F00968();
    v43 = sub_1C4F01CD8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      v46 = v34;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v47;
      *v45 = v47;
      _os_log_impl(&dword_1C43F8000, v42, v43, "Error decoding demo data: %@", v44, 0xCu);
      sub_1C4423A0C(v45, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v45, -1, -1);
      v48 = v44;
      v31 = v59;
      MEMORY[0x1C6942830](v48, -1, -1);
    }

    (*(v55 + 8))(v37, v56);
    sub_1C49C455C();
    swift_allocError();
    *v49 = 1;
    swift_willThrow();

    return (*(v31 + 8))(v25, v19);
  }

  else
  {
    v38 = v35;
    v39 = v36;
    sub_1C456902C(&qword_1EC0C0C78, &qword_1C4F40488);
    sub_1C49C4620();
    v40 = sub_1C4EF9328();
    v58 = &v52;
    MEMORY[0x1EEE9AC00](v40);
    *(&v52 - 2) = v53;
    sub_1C49C003C();
    v51 = v50;
    sub_1C4434000(v38, v39);

    result = (*(v31 + 8))(v25, v19);
    *v54 = v51;
  }

  return result;
}

uint64_t sub_1C49C42F8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1C4EF9CD8();
  sub_1C49C46EC(&qword_1EDDFCD70, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  if (sub_1C4F01078() & 1) != 0 && (sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0), (sub_1C4F01088()))
  {
    v6 = *(*(v5 - 8) + 16);
    v6(a3, a1, v5);
    v7 = sub_1C456902C(&qword_1EC0C0C18, &unk_1C4F40490);
    v8 = *(v7 + 44);
    v9 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    v6(a3 + *(v9 + 28), a1 + v8, v5);
    sub_1C4983ED0(a1 + *(v7 + 48), a3 + *(v9 + 32));
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    v10 = a3;
    v11 = 1;
  }

  return sub_1C440BAA8(v10, v11, 1, v12);
}

uint64_t sub_1C49C4504(uint64_t a1, uint64_t a2)
{
  result = sub_1C49C46EC(&qword_1EC0C0C68, a2, type metadata accessor for LifeEventActivityProviderDemo, &unk_1C4F40450);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C49C455C()
{
  result = qword_1EC0C0C70;
  if (!qword_1EC0C0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0C70);
  }

  return result;
}

uint64_t sub_1C49C45B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C49C4620()
{
  result = qword_1EC0C0C80;
  if (!qword_1EC0C0C80)
  {
    sub_1C4572308(&qword_1EC0C0C78, &qword_1C4F40488);
    sub_1C4401CBC(&qword_1EC0C0C88, &qword_1EC0C0C18, &unk_1C4F40490, &unk_1C4F51014);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0C80);
  }

  return result;
}

uint64_t sub_1C49C46EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LifeEventActivityProviderDemo.LifeEventActivityProviderDemoDataError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C49C4814()
{
  result = qword_1EC0C0CA0;
  if (!qword_1EC0C0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0CA0);
  }

  return result;
}

uint64_t sub_1C49C4868(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v6 = *(a2 + 32) & 0x3F;
  sub_1C43FF350();
  v9 = sub_1C443F6AC(v7, v8);
  if (v6 > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    sub_1C4433D80(v9, v10, v11, v12, v13, v14, v15, v16, v49);
    MEMORY[0x1EEE9AC00](v17);
    sub_1C4410F48(v18, v19, v20, v21, v22, v23, v24, v25, v50);
    v26 = 0;
    sub_1C43FD030();
    v29 = (v28 & v27);
    sub_1C444112C();
    sub_1C43FBDF0();
    while (v29)
    {
      sub_1C43FE644();
LABEL_10:
      sub_1C441CBC0();
      switch(v33)
      {
        case 1:

          goto LABEL_16;
        case 2:
          sub_1C4408D0C();
          break;
        case 3:
        case 6:
          sub_1C4405CE0();
          break;
        case 4:
          sub_1C440AC5C();
          break;
        case 5:
          sub_1C44070E4();
          break;
        default:
          break;
      }

      sub_1C440E528();
      sub_1C44602F8(v34, v35, v36);
      sub_1C441AFAC();

      if (v3)
      {
LABEL_16:
        sub_1C44325BC();
        if (v37)
        {
          __break(1u);
        }
      }
    }

    v30 = v26;
    while (1)
    {
      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v26 >= v4)
      {
        sub_1C4434640();
        sub_1C4416264();
        goto LABEL_21;
      }

      ++v30;
      if (*(a2 + 56 + 8 * v26))
      {
        sub_1C43FCF1C();
        v29 = (v32 & v31);
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_28:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();
  sub_1C4414C5C();

  v46 = sub_1C442E134();
  if (v2)
  {

    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v48 = sub_1C4408D20();
    result = MEMORY[0x1C6942830](v48);
    __break(1u);
  }

  else
  {
    v29 = v46;
    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v47 = sub_1C4408D20();
    MEMORY[0x1C6942830](v47);
LABEL_21:
    v38 = v29[2];

    if (v38 <= 1 && (sub_1C4D51718(), sub_1C4435998(v39), v41 = v40, , (v41 & 1) != 0))
    {
      sub_1C4924BF4(a2);
      v43 = sub_1C4597BBC(v42);
      if (qword_1EC0B6DC0 != -1)
      {
        swift_once();
      }

      v44 = *(sub_1C4A7C718(qword_1EC0C0CA8, v43) + 16);

      return v44 == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C49C4B70(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v6 = *(a2 + 32) & 0x3F;
  sub_1C43FF350();
  v9 = sub_1C443F6AC(v7, v8);
  if (v6 > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    sub_1C4433D80(v9, v10, v11, v12, v13, v14, v15, v16, v49);
    MEMORY[0x1EEE9AC00](v17);
    sub_1C4410F48(v18, v19, v20, v21, v22, v23, v24, v25, v50);
    v26 = 0;
    sub_1C43FD030();
    v29 = (v28 & v27);
    sub_1C444112C();
    sub_1C43FBDF0();
    while (v29)
    {
      sub_1C43FE644();
LABEL_10:
      sub_1C441CBC0();
      switch(v33)
      {
        case 1:

          goto LABEL_16;
        case 2:
          sub_1C4408D0C();
          break;
        case 3:
        case 6:
          sub_1C4405CE0();
          break;
        case 4:
          sub_1C440AC5C();
          break;
        case 5:
          sub_1C44070E4();
          break;
        default:
          break;
      }

      sub_1C440E528();
      sub_1C44602F8(v34, v35, v36);
      sub_1C441AFAC();

      if (v3)
      {
LABEL_16:
        sub_1C44325BC();
        if (v37)
        {
          __break(1u);
        }
      }
    }

    v30 = v26;
    while (1)
    {
      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v26 >= v4)
      {
        sub_1C4434640();
        sub_1C4416264();
        goto LABEL_21;
      }

      ++v30;
      if (*(a2 + 56 + 8 * v26))
      {
        sub_1C43FCF1C();
        v29 = (v32 & v31);
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_28:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();
  sub_1C4414C5C();

  v46 = sub_1C442E134();
  if (v2)
  {

    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v48 = sub_1C4408D20();
    result = MEMORY[0x1C6942830](v48);
    __break(1u);
  }

  else
  {
    v29 = v46;
    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v47 = sub_1C4408D20();
    MEMORY[0x1C6942830](v47);
LABEL_21:
    v38 = v29[2];

    if (v38 <= 1 && (sub_1C4D51718(), sub_1C4435998(v39), v41 = v40, , (v41 & 1) != 0))
    {
      sub_1C4924BF4(a2);
      v43 = sub_1C4597BBC(v42);
      if (qword_1EC0B6DC8 != -1)
      {
        swift_once();
      }

      v44 = *(sub_1C4A7C718(qword_1EC0C0CB0, v43) + 16);

      return v44 == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C49C4E78(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v6 = *(a2 + 32) & 0x3F;
  sub_1C43FF350();
  v9 = sub_1C443F6AC(v7, v8);
  if (v6 > 0xD)
  {
    goto LABEL_28;
  }

  while (1)
  {
    sub_1C4433D80(v9, v10, v11, v12, v13, v14, v15, v16, v49);
    MEMORY[0x1EEE9AC00](v17);
    sub_1C4410F48(v18, v19, v20, v21, v22, v23, v24, v25, v50);
    v26 = 0;
    sub_1C43FD030();
    v29 = (v28 & v27);
    sub_1C444112C();
    sub_1C43FBDF0();
    while (v29)
    {
      sub_1C43FE644();
LABEL_10:
      sub_1C441CBC0();
      switch(v33)
      {
        case 1:

          goto LABEL_16;
        case 2:
          sub_1C4408D0C();
          break;
        case 3:
        case 6:
          sub_1C4405CE0();
          break;
        case 4:
          sub_1C440AC5C();
          break;
        case 5:
          sub_1C44070E4();
          break;
        default:
          break;
      }

      sub_1C440E528();
      sub_1C44602F8(v34, v35, v36);
      sub_1C441AFAC();

      if (v3)
      {
LABEL_16:
        sub_1C44325BC();
        if (v37)
        {
          __break(1u);
        }
      }
    }

    v30 = v26;
    while (1)
    {
      v26 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v26 >= v4)
      {
        sub_1C4434640();
        sub_1C4416264();
        goto LABEL_21;
      }

      ++v30;
      if (*(a2 + 56 + 8 * v26))
      {
        sub_1C43FCF1C();
        v29 = (v32 & v31);
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_28:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();
  sub_1C4414C5C();

  v46 = sub_1C442E134();
  if (v2)
  {

    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v48 = sub_1C4408D20();
    result = MEMORY[0x1C6942830](v48);
    __break(1u);
  }

  else
  {
    v29 = v46;
    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v47 = sub_1C4408D20();
    MEMORY[0x1C6942830](v47);
LABEL_21:
    v38 = v29[2];

    if (v38 <= 1 && (sub_1C4D51718(), sub_1C4435998(v39), v41 = v40, , (v41 & 1) != 0))
    {
      sub_1C4924BF4(a2);
      v43 = sub_1C4597BBC(v42);
      if (qword_1EC0B6DD0 != -1)
      {
        swift_once();
      }

      v44 = *(sub_1C4A7C718(qword_1EC0C0CB8, v43) + 16);

      return v44 == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1C49C5180()
{
  sub_1C43FE96C();
  sub_1C4572308(&qword_1EC0C0CE0, &unk_1C4F40610);
  sub_1C49C9248();
  swift_getOpaqueTypeMetadata2();
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C4EFF748();
  if (!v0)
  {
    sub_1C4572308(&qword_1EC0B9500, &qword_1C4F0E8B0);
    sub_1C4F02B88();
    swift_getOpaqueTypeConformance2();
    sub_1C4F021B8();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C49C531C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v128 = a1;
  v129 = a2;
  sub_1C4423C44(*MEMORY[0x1E69E9840]);
  sub_1C4EFF1F8();
  sub_1C43FCDF8();
  v126 = v12;
  v127 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v122 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBFDC();
  v123 = v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  v120 = v19;
  v130 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v121 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  v116 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v115 = v24;
  v119 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBCE0();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v105 - v27;
  v29 = *(a5 + 32);
  v30 = v29[1];
  v124 = *(a5 + 16);
  v118 = v29;
  if (v30(a3, a4, v26))
  {
    v113 = v6;
    v106 = a3;
    v105 = a6;
    v31 = a4[4] & 0x3F;
    sub_1C43FF350();
    v33 = v32 >> 6;
    v34 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v131 = a4;
    v117 = v28;
    v112 = v15;
    v111 = a5;
    if (v31 > 0xD)
    {
LABEL_34:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!swift_stdlib_isStackAllocationSafe())
      {
        goto LABEL_37;
      }
    }

    v110 = &v105;
    MEMORY[0x1EEE9AC00](v34);
    v35 = sub_1C441D2F0();
    v109 = v33;
    v37 = v36;
    sub_1C4501018(v35, v33, v36);
    v114 = 0;
    v38 = 0;
    v39 = a4 + 7;
    sub_1C43FD030();
    v42 = v41 & v40;
    v44 = (v43 + 63) >> 6;
    v108 = 0x80000001C4F86760;
    sub_1C43FBDF0();
    v107 = v45;
    while (2)
    {
      if (v42)
      {
        sub_1C4401DF0();
LABEL_11:
        v50 = v46 | (v38 << 6);
        switch(*(a4[6] + 24 * v50 + 16))
        {
          case 1:

            a4 = v131;
            goto LABEL_17;
          case 2:
            sub_1C4408D0C();
            goto LABEL_16;
          case 3:
          case 6:
            sub_1C4405CE0();
            goto LABEL_16;
          case 4:
            sub_1C440AC5C();
            goto LABEL_16;
          case 5:
            sub_1C44070E4();
            goto LABEL_16;
          default:
LABEL_16:
            sub_1C440E528();
            v33 = sub_1C4F02938();

            a4 = v131;
            if ((v33 & 1) == 0)
            {
              continue;
            }

LABEL_17:
            sub_1C4404D48();
            *(v37 + v52) |= v51 << v50;
            if (!__OFADD__(v114++, 1))
            {
              continue;
            }

            goto LABEL_40;
        }
      }

      break;
    }

    v47 = v38;
    while (1)
    {
      v38 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v38 >= v44)
      {
        break;
      }

      ++v47;
      if (v39[v38])
      {
        sub_1C43FCF1C();
        v42 = v49 & v48;
        goto LABEL_11;
      }
    }

    sub_1C4A8DF38(v37, v109, v114, a4);
    v57 = v56;
    while (1)
    {
      v59 = v128;
      v58 = v129;
      sub_1C4868140(v57);
      v61 = v60;
      a4 = v62;
      v64 = v63;

      if (v64 == 1)
      {
        break;
      }

      if (v64 != 255)
      {
        sub_1C49C9234(v61, a4, v64);
      }

      sub_1C4575ED0();
      v65 = v130;
      if (sub_1C4F01088())
      {
        v67 = v120;
        v66 = v121;
        v68 = *(v121 + 16);
        v68(v120, v59, v65);
        v69 = v122;
        v68(v67 + *(v122 + 48), v58, v65);
        v70 = v123;
        sub_1C4460050(v67, v123, &qword_1EC0B84B0, qword_1C4F0CDE0);
        v129 = *(v69 + 48);
        v71 = *(v66 + 32);
        v72 = v117;
        v73 = sub_1C43FD024();
        v71(v73);
        v74 = *(v66 + 8);
        v74(v70 + v129, v65);
        v75 = v67;
        v76 = v72;
        sub_1C44CD9E0(v75, v70, &qword_1EC0B84B0, qword_1C4F0CDE0);
        (v71)(v72 + *(v119 + 36), v70 + *(v69 + 48), v65);
        v74(v70, v65);
        goto LABEL_30;
      }

      __break(1u);
LABEL_37:
      v102 = swift_slowAlloc();

      sub_1C446BF80(v102, v33, a4, sub_1C49C9334);
      sub_1C441DD84();
      if (v31)
      {

        swift_bridgeObjectRelease_n();
        sub_1C43FBCFC();
        result = MEMORY[0x1C6942830]();
        __break(1u);
        return result;
      }

      v57 = v103;
      swift_bridgeObjectRelease_n();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v77 = v115;
    sub_1C4EF9BE8();
    v78 = v116;
    sub_1C4EF9BE8();
    sub_1C4575ED0();
    v79 = v130;
    if ((sub_1C4F01088() & 1) == 0)
    {
      __break(1u);
LABEL_40:
      __break(1u);
    }

    v80 = v120;
    v81 = v121;
    v82 = *(v121 + 32);
    v82(v120, v77, v79);
    v83 = v122;
    v82(v80 + *(v122 + 48), v78, v79);
    v84 = v123;
    sub_1C4460050(v80, v123, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v129 = *(v83 + 48);
    v76 = v117;
    v82(v117, v84, v79);
    v85 = *(v81 + 8);
    v85(v84 + v129, v79);
    sub_1C44CD9E0(v80, v84, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v82(v76 + *(v119 + 36), v84 + *(v83 + 48), v79);
    v85(v84, v79);
LABEL_30:
    v86 = v125[3];
    v87 = v125[4];
    sub_1C4409678(v125, v86);
    v89 = v126;
    v88 = v127;
    v90 = v112;
    (*(v126 + 104))(v112, *MEMORY[0x1E69A9880], v127);
    v91 = *(v111 + 24);
    v92 = v124;
    v93 = v113;
    v94 = (*(v87 + 8))(v124, v90, v76, v124, v91, v86, v87);
    if (v93)
    {
      (*(v89 + 8))(v90, v88);
      return sub_1C4420C3C(v76, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    }

    else
    {
      v95 = v94;
      (*(v89 + 8))(v90, v88);
      v133[1] = v95;
      sub_1C4572308(&qword_1EC0B9500, &qword_1C4F0E8B0);
      sub_1C4F02B88();
      v96 = sub_1C4F021A8();
      WitnessTable = swift_getWitnessTable();
      MEMORY[0x1C6940210](v133, v96, WitnessTable);

      v130 = &v105;
      v132 = v133[0];
      MEMORY[0x1EEE9AC00](v98);
      *(&v105 - 6) = v92;
      *(&v105 - 5) = v91;
      v99 = v106;
      *(&v105 - 4) = v118;
      *(&v105 - 3) = v99;
      *(&v105 - 2) = v131;
      sub_1C4F02268();
      type metadata accessor for InteractionEvent(0);
      swift_getWitnessTable();
      v100 = sub_1C4F014E8();

      sub_1C4420C3C(v117, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      result = swift_allocObject();
      *(result + 16) = v100;
      v101 = v105;
      *v105 = sub_1C49C932C;
      v101[1] = result;
    }
  }

  else
  {
    sub_1C463DFA8();
    swift_allocError();
    *v54 = a3;
    *(v54 + 8) = a4;
    *(v54 + 16) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C49C5E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v28 = a2;
  v29 = a3;
  v27 = a6;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - v11;
  sub_1C4572308(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v13 = sub_1C4F02B88();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v16 = *(a4 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v15, a1, v13, v18);
  result = sub_1C49C608C(v13, &v30, v20);
  if (!v6)
  {
    v23 = v27;
    v24 = sub_1C4EF9CD8();
    sub_1C440BAA8(v12, 1, 1, v24);
    v25 = (*(a5 + 16))(v28, v29, v12, a4, a5);
    sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
    result = (*(v16 + 8))(v20, a4);
    *v23 = v25;
  }

  return result;
}

uint64_t sub_1C49C608C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

void sub_1C49C619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v248 = v21;
  v258 = v20;
  v25 = v24;
  sub_1C4423C44(*MEMORY[0x1E69E9840]);
  v242 = sub_1C4EFFE78();
  sub_1C43FCDF8();
  v241 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD230();
  sub_1C43FCE30(v29);
  v254 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v239 = v30;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v255 = (v33 - v32);
  v34 = sub_1C456902C(&qword_1EC0C0CD0, &qword_1C4F40600);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  sub_1C43FCE30(v38);
  v39 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v247 = v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v233 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v233 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v233 - v48;
  v50 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v51 = sub_1C43FBD18(v50);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FD230();
  sub_1C43FCE30(v55);
  v56 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v57 = sub_1C43FBD18(v56);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBFDC();
  v250 = v58;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FD230();
  v253 = v63;
  v64 = *(v25 + 32) & 0x3F;
  sub_1C43FF350();
  v66 = (v65 >> 6);
  sub_1C440CCDC();
  v67 = swift_bridgeObjectRetain_n();
  v75 = v43;
  v76 = v39;
  v77 = v34;
  v78 = "communicationDirection";
  v79 = "communicationMechanism";
  v80 = "lookaheadDuration";
  v257 = v76;
  v246 = v49;
  v235 = v75;
  v234 = v46;
  v237 = v77;
  if (v64 > 0xD)
  {
    goto LABEL_88;
  }

LABEL_2:
  sub_1C4441510(v67, v68, v69, v70, v71, v72, v73, v74, v233);
  MEMORY[0x1EEE9AC00](v81);
  v82 = sub_1C441D2F0();
  v256 = v66;
  v251 = v83;
  sub_1C4501018(v82, v66, v83);
  v252 = 0;
  v84 = 0;
  v85 = v25 + 56;
  sub_1C43FD030();
  v88 = v87 & v86;
  v90 = (v89 + 63) >> 6;
  sub_1C442BD00((v78 - 32));
  sub_1C4425294(v79 - 32);
  v245 = (v80 - 32) | 0x8000000000000000;
  v78 = v250;
  do
  {
LABEL_3:
    if (v88)
    {
      v91 = __clz(__rbit64(v88));
      v88 &= v88 - 1;
      goto LABEL_10;
    }

    v92 = v84;
    do
    {
      v84 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_88:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (swift_stdlib_isStackAllocationSafe())
          {

            goto LABEL_2;
          }

          v227 = swift_slowAlloc();

          v229 = sub_1C44691B8(v227, v66, v228, sub_1C49C9350);
          v248 = v21;
          if (v21)
          {

            sub_1C440CCDC();
            swift_bridgeObjectRelease_n();
            while (1)
            {
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              __break(1u);
LABEL_98:

              sub_1C44174AC();
              swift_bridgeObjectRelease_n();
            }
          }

          v103 = v229;
          sub_1C440CCDC();
          swift_bridgeObjectRelease_n();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          v105 = v254;
          v104 = v255;
          v78 = v250;
LABEL_23:
          v106 = v103[2];
          v107 = v257;
          if (v106 == 1)
          {
            sub_1C4F02AF8();
            MEMORY[0x1C69417F0](2);
            sub_1C4F01298();
            sub_1C4F02B68();
            sub_1C441C388();
            if ((v108 & 1) == 0)
            {
LABEL_29:

              sub_1C441BB28();
              sub_1C4EFFE68();
              sub_1C4EFFC68();
              sub_1C440582C((v103 + 7));
              if (!v152)
              {
                sub_1C4EFFC48();
                sub_1C4402A78();
                v123 = sub_1C43FD024();
                v124(v123);
                v125 = v253;
                v105 = v254;
                v104 = v255;
                v107 = v257;
                goto LABEL_46;
              }

              sub_1C4420C3C((v103 + 7), &qword_1EC0C0CC8, &unk_1C4F405F0);
              sub_1C43FCF64();
              v107 = v257;
              sub_1C440BAA8(v112, v113, v114, v257);
              v125 = v253;
              v105 = v254;
              goto LABEL_39;
            }

            while (1)
            {
              v109 = v103[6] + 24 * v107;
              if (*(v109 + 16) == 2)
              {
                if ((*v109 & 1) == 0)
                {

                  goto LABEL_42;
                }

                sub_1C4402404();
                v110 = sub_1C4F02938();

                if (v110)
                {
                  break;
                }
              }

              sub_1C447F1A0();
              if ((v111 & 1) == 0)
              {
                goto LABEL_29;
              }
            }

LABEL_42:
            v129 = v236;
            sub_1C4EFFE68();
            v130 = sub_1C4EFFC68();
            sub_1C440582C(v129);
            v125 = v253;
            v104 = v255;
            v107 = v257;
            if (v152)
            {
              sub_1C4420C3C(v129, &qword_1EC0C0CC8, &unk_1C4F405F0);
              sub_1C43FCF64();
              sub_1C440BAA8(v131, v132, v133, v107);
            }

            else
            {
              sub_1C4EFFC58();
              sub_1C4402A78();
              (*(v134 + 8))(v129, v130);
            }

            v105 = v254;
          }

          else
          {

            if (v106)
            {
              sub_1C441615C();
              sub_1C4EFFE68();
              sub_1C4EFFC68();
              v115 = sub_1C4414C5C();
              v116 = sub_1C44157D4(v115, 1, v104);
              v125 = v253;
              if (v116 == 1)
              {
                sub_1C4420C3C(v106, &qword_1EC0C0CC8, &unk_1C4F405F0);
                sub_1C43FCF64();
                sub_1C440BAA8(v117, v118, v119, v107);
              }

              else
              {
                sub_1C4EFFC58();
                sub_1C440A6B8();
                (*(v126 + 8))(v106, v104);
              }

LABEL_39:
              v104 = v255;
              goto LABEL_46;
            }

            sub_1C441615C();
            sub_1C4EFFE68();
            sub_1C4EFFC68();
            sub_1C440582C(0);
            v125 = v253;
            if (v152)
            {
              sub_1C4420C3C(0, &qword_1EC0C0CC8, &unk_1C4F405F0);
              sub_1C43FCF64();
              sub_1C440BAA8(v120, v121, v122, v107);
            }

            else
            {
              sub_1C4EFFC58();
              sub_1C4402A78();
              v127 = sub_1C4402120();
              v128(v127);
            }
          }

LABEL_46:
          sub_1C441D304();
          sub_1C44CD9E0(v135, v136, v137, v138);
          sub_1C441D304();
          sub_1C4460050(v139, v140, v141, v142);
          sub_1C4414160(v78);
          if (v152)
          {

            sub_1C440BADC();
            sub_1C4420C3C(v143, v144, v145);
            sub_1C440BADC();
            goto LABEL_58;
          }

          (*(v247 + 32))(v246, v78, v107);
          v149 = v243;
          v150 = v258;
          sub_1C4EFFE58();
          v151 = sub_1C456902C(&qword_1EC0C0CD8, &qword_1C4F40608);
          sub_1C4414160(v149);
          if (v152)
          {
            goto LABEL_53;
          }

          sub_1C4EFF678();
          sub_1C440A6B8();
          isa = v153[1].isa;
          v255 = v153 + 1;
          v256 = isa;
          (isa)(v149, v151);
          v252 = sub_1C4EFF048();
          v155 = v105;
          v157 = v156;
          v158 = *(v239 + 8);
          v158(v104, v155);
          v149 = v238;
          sub_1C4EFFE48();
          sub_1C4414160(v149);
          if (v152)
          {

            v125 = v253;
            v150 = v258;
LABEL_53:

            sub_1C4420C3C(v149, &qword_1EC0C0CD0, &qword_1C4F40600);
            if (qword_1EDDFA668 != -1)
            {
              swift_once();
            }

            v159 = sub_1C4F00978();
            sub_1C442B738(v159, qword_1EDE2DDE0);
            v160 = v241;
            v161 = *(v241 + 16);
            v162 = v240;
            v163 = v150;
            v164 = v150;
            v165 = v242;
            v161(v240, v163, v242);
            v166 = v244;
            v161(v244, v164, v165);
            v167 = sub_1C4F00968();
            v168 = sub_1C4F01CE8();
            if (os_log_type_enabled(v167, v168))
            {
              v169 = swift_slowAlloc();
              v170 = swift_slowAlloc();
              LODWORD(v256) = v168;
              v255 = v167;
              v171 = v165;
              v258 = v170;
              v259[0] = v170;
              *v169 = 136315394;
              sub_1C4EFFE58();
              v172 = sub_1C4F01198();
              v174 = v173;
              v175 = *(v160 + 8);
              v176 = sub_1C4402120();
              v175(v176);
              v177 = sub_1C441D828(v172, v174, v259);

              *(v169 + 4) = v177;
              *(v169 + 12) = 2080;
              v178 = v244;
              sub_1C4EFFE48();
              v179 = sub_1C4F01198();
              v181 = v180;
              (v175)(v178, v171);
              v182 = sub_1C441D828(v179, v181, v259);

              *(v169 + 14) = v182;
              v183 = v255;
              _os_log_impl(&dword_1C43F8000, v255, v256, "GraphCommuteActivityEvent: Unable to resolve start or end location of commute - %s or %s", v169, 0x16u);
              swift_arrayDestroy();
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              v184 = sub_1C4408D20();
              MEMORY[0x1C6942830](v184);

              v185 = sub_1C443F264();
              v186(v185);
              v147 = &unk_1EC0B84E0;
              v148 = qword_1C4F0D2D0;
              v146 = v253;
            }

            else
            {

              v187 = *(v160 + 8);
              v187(v166, v165);
              v187(v162, v165);
              v188 = sub_1C443F264();
              v189(v188);
              v147 = &unk_1EC0B84E0;
              v148 = qword_1C4F0D2D0;
              v146 = v125;
            }

LABEL_58:
            sub_1C4420C3C(v146, v147, v148);
            goto LABEL_59;
          }

          v251 = v157;
          sub_1C4EFF678();
          (v256)(v149, v151);
          v80 = v104;
          v249 = sub_1C4EFF048();
          v250 = v190;
          v158(v104, v254);
          sub_1C441BB14();
          v258 = v192 >> 6;
          v79 = 8 * (v192 >> 6);
          if (v193 > 0xD)
          {
            goto LABEL_92;
          }

LABEL_61:
          v254 = &v233;
          MEMORY[0x1EEE9AC00](v191);
          v194 = sub_1C441D2F0();
          v255 = v195;
          sub_1C4501018(v194, v258, v195);
          v256 = 0;
          v196 = 0;
          sub_1C43FD030();
          v78 = (v198 & v197);
          v200 = (v199 + 63) >> 6;
          sub_1C442BD00("lookaheadDuration");
          sub_1C4425294("entityIdentifier");
          v66 = "pearance";
          while (v78)
          {
            sub_1C4401DF0();
LABEL_69:
            v80 = (v201 | (v196 << 6));
            v79 = v25;
            sub_1C443419C();
            switch(v205)
            {
              case 1:

                goto LABEL_75;
              case 2:
                sub_1C4408D0C();
                break;
              case 3:
              case 6:
                sub_1C4405CE0();
                break;
              case 4:
                sub_1C440AC5C();
                break;
              case 5:
                sub_1C44070E4();
                break;
              default:
                break;
            }

            sub_1C440E528();
            v206 = sub_1C4F02938();

            if (v206)
            {
LABEL_75:
              sub_1C4404D48();
              sub_1C43FC660(v207);
              v101 = __OFADD__(v256++, 1);
              if (v101)
              {
                __break(1u);
              }
            }
          }

          v202 = v196;
          while (1)
          {
            v196 = v202 + 1;
            if (__OFADD__(v202, 1))
            {
              break;
            }

            if (v196 >= v200)
            {
              sub_1C4A8DF38(v255, v258, v256, v25);
              v209 = v208;
              goto LABEL_80;
            }

            ++v202;
            if (*(v25 + 56 + 8 * v196))
            {
              sub_1C43FCF1C();
              v78 = (v204 & v203);
              goto LABEL_69;
            }
          }
        }
      }

      if (v84 >= v90)
      {
        sub_1C4A8DF38(v251, v256, v252, v25);
        v103 = v102;
        v105 = v254;
        v104 = v255;
        goto LABEL_23;
      }

      ++v92;
    }

    while (!*(v85 + 8 * v84));
    sub_1C43FCF1C();
    v88 = v94 & v93;
LABEL_10:
    v80 = (v91 | (v84 << 6));
    v66 = v25;
    sub_1C443419C();
    v95 = 0xE800000000000000;
    v96 = 0x4449656C646E7562;
    switch(v97)
    {
      case 1:
        sub_1C44044FC();
        v96 = v98 - 5;
        v95 = v245;
        break;
      case 2:
        sub_1C441846C();
        v25 = v66;
        goto LABEL_18;
      case 3:
        v99 = &a15;
        goto LABEL_15;
      case 4:
        v95 = 0xEF657079546E6F69;
        v96 = sub_1C440AC5C();
        break;
      case 5:
        v95 = 0xEB00000000656741;
        v96 = sub_1C44070E4();
        break;
      case 6:
        v99 = &a16;
LABEL_15:
        v95 = *(v99 - 32);
        v96 = sub_1C4405CE0();
        break;
      default:
        break;
    }

    v79 = sub_1C4411DF4(v96, v95);

    v25 = v66;
  }

  while ((v79 & 1) == 0);
LABEL_18:
  sub_1C4404D48();
  sub_1C43FC660(v100);
  v101 = __OFADD__(v252++, 1);
  if (!v101)
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_92:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_61;
  }

  v230 = swift_slowAlloc();

  v66 = v25;
  v232 = sub_1C44691B8(v230, v258, v231, sub_1C49C9334);
  v248 = v21;
  if (v21)
  {
    goto LABEL_98;
  }

  v209 = v232;
  sub_1C44174AC();
  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_80:
  sub_1C4868140(v209);
  v211 = v210;
  v213 = v212;
  v215 = v214;

  v216 = v251;
  if (v215 == 1)
  {
    v218 = v234;
    v219 = v246;
    sub_1C4EF9BE8();
    v217 = v247;
    v66 = *(v247 + 16);
    v220 = v257;
  }

  else
  {
    if (v215 != 255)
    {
      sub_1C49C9234(v211, v213, v215);
    }

    v217 = v247;
    sub_1C444B1EC();
    v218 = v234;
    v219 = v246;
    v220 = v257;
    (v66)(v234, v246, v257);
  }

  (v66)(v235, v218, v220);
  v259[0] = v252;
  v259[1] = v216;
  MEMORY[0x1C6940010](44, 0xE100000000000000);
  MEMORY[0x1C6940010](v249, v250);

  v221 = *(v217 + 8);
  v221(v218, v220);
  v221(v219, v220);
  sub_1C4420C3C(v253, &unk_1EC0B84E0, qword_1C4F0D2D0);
  type metadata accessor for InteractionEvent(0);
  swift_allocObject();
  sub_1C441D304();
  sub_1C4950CDC(v222, v223, v224, v225, v226);
LABEL_59:
  sub_1C43FBC80();
}

void sub_1C49C7488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  sub_1C441DD84();
  v158 = v20;
  v25 = v24;
  sub_1C4423C44(*MEMORY[0x1E69E9840]);
  v26 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v151 - v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v159 = v34;
  v35 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v36 = sub_1C43FBD18(v35);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  v161 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  sub_1C43FCE30(v41);
  v42 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v43 = sub_1C43FBD18(v42);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBFDC();
  v154 = v44;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v157 = v49;
  v50 = *(v25 + 32) & 0x3F;
  sub_1C43FF350();
  v52 = v51 >> 6;
  v53 = (8 * (v51 >> 6));
  sub_1C440C5E4();
  v54 = swift_bridgeObjectRetain_n();
  v55 = v28;
  v56 = "communicationDirection";
  v57 = "communicationMechanism";
  v58 = "lookaheadDuration";
  v163 = v32;
  v164 = v25;
  v156 = v26;
  v162 = v55;
  if (v50 > 0xD)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v153 = v151;
    MEMORY[0x1EEE9AC00](v54);
    v53 = v151 - ((v53 + 15) & 0x3FFFFFFFFFFFFFF0);
    v160 = v52;
    sub_1C4501018(0, v52, v53);
    v155 = 0;
    v52 = 0;
    v59 = v25 + 56;
    sub_1C43FD030();
    v26 = (v61 & v60);
    v63 = (v62 + 63) >> 6;
    sub_1C442BD00(v56 - 32);
    sub_1C4425294(v57 - 32);
    v152 = (v58 - 32) | 0x8000000000000000;
    v56 = 24;
    while (v26)
    {
      sub_1C442377C();
LABEL_10:
      v58 = v64 | (v52 << 6);
      v67 = *(v25 + 48) + 24 * v58;
      v68 = 0xE800000000000000;
      v69 = 0x4449656C646E7562;
      switch(*(v67 + 16))
      {
        case 1:
          sub_1C44044FC();
          v69 = v70 - 5;
          v68 = v152;
          break;
        case 2:
          sub_1C441846C();
          v25 = v164;
          goto LABEL_18;
        case 3:
          v71 = &a15;
          goto LABEL_15;
        case 4:
          v68 = 0xEF657079546E6F69;
          v69 = sub_1C440AC5C();
          break;
        case 5:
          v68 = 0xEB00000000656741;
          v69 = sub_1C44070E4();
          break;
        case 6:
          v71 = &a16;
LABEL_15:
          v68 = *(v71 - 32);
          v69 = sub_1C4405CE0();
          break;
        default:
          break;
      }

      v72 = sub_1C4411DF4(v69, v68);

      v25 = v164;
      if (v72)
      {
LABEL_18:
        sub_1C4404D48();
        *&v53[v74] |= v73 << v58;
        v75 = __OFADD__(v155++, 1);
        if (v75)
        {
          __break(1u);
LABEL_88:
          __break(1u);
        }
      }
    }

    v55 = v52;
    v57 = v161;
    while (1)
    {
      v52 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v52 >= v63)
      {
        sub_1C4A8DF38(v53, v160, v155, v25);
        v77 = v76;
        v78 = v156;
        v79 = v162;
        goto LABEL_23;
      }

      ++v55;
      if (*(v59 + 8 * v52))
      {
        sub_1C43FCF1C();
        v26 = (v66 & v65);
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v78 = v26;
    v146 = v55;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v147 = swift_slowAlloc();

  sub_1C446BF80(v147, v52, v25, sub_1C49C9350);
  sub_1C441DD84();
  if (v21)
  {
    goto LABEL_89;
  }

  v77 = v148;
  sub_1C440C5E4();
  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
  v79 = v146;
  v57 = v161;
LABEL_23:
  v80 = v163;
  v81 = *(v77 + 16);
  if (v81 == 1)
  {
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](2);
    sub_1C4F01298();
    v82 = sub_1C4F02B68();
    v83 = -1 << *(v77 + 32);
    v84 = v82 & ~v83;
    if ((*(v77 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84))
    {
      v85 = ~v83;
      while (1)
      {
        v86 = *(v77 + 48) + 24 * v84;
        if (*(v86 + 16) == 2)
        {
          if ((*v86 & 1) == 0)
          {

            goto LABEL_45;
          }

          sub_1C4402404();
          v87 = sub_1C4F02938();

          if (v87)
          {
            break;
          }
        }

        v84 = (v84 + 1) & v85;
        if (((*(v77 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

LABEL_45:
      sub_1C441BB28();
      sub_1C4EFFF18();
      v100 = sub_1C4EFFC68();
      sub_1C4414160(v84);
      v79 = v162;
      v80 = v163;
      v53 = v159;
      v97 = v157;
      if (v89)
      {
        sub_1C4420C3C(v84, &qword_1EC0C0CC8, &unk_1C4F405F0);
        sub_1C43FCF64();
        sub_1C440BAA8(v101, v102, v103, v78);
      }

      else
      {
        sub_1C4EFFC58();
        sub_1C440A6B8();
        (*(v104 + 8))(v84, v100);
      }

      v25 = v164;
    }

    else
    {
LABEL_30:

      sub_1C441615C();
      sub_1C4EFFF18();
      v88 = sub_1C4EFFC68();
      sub_1C4414160(v77 + 56);
      if (v89)
      {
        sub_1C4420C3C(v77 + 56, &qword_1EC0C0CC8, &unk_1C4F405F0);
        sub_1C43FCF64();
        sub_1C440BAA8(v90, v91, v92, v78);
      }

      else
      {
        sub_1C4EFFC48();
        sub_1C440A6B8();
        (*(v96 + 8))(v77 + 56, v88);
      }

      v80 = v163;
      v25 = v164;
      v53 = v159;
      v97 = v157;
      v79 = v162;
    }

    goto LABEL_49;
  }

  if (v81)
  {
    sub_1C441BB28();
    sub_1C4EFFF18();
    sub_1C4EFFC68();
    sub_1C440582C(v57);
    v53 = v159;
    if (!v89)
    {
LABEL_41:
      sub_1C4EFFC58();
      sub_1C4402A78();
      v98 = sub_1C43FD024();
      v99(v98);
      goto LABEL_42;
    }
  }

  else
  {
    sub_1C4EFFF18();
    sub_1C4EFFC68();
    sub_1C440582C(v57);
    v53 = v159;
    if (!v89)
    {
      goto LABEL_41;
    }
  }

  sub_1C4420C3C(v57, &qword_1EC0C0CC8, &unk_1C4F405F0);
  sub_1C43FCF64();
  sub_1C440BAA8(v93, v94, v95, v78);
LABEL_42:
  v97 = v157;
LABEL_49:
  sub_1C440BADC();
  sub_1C44CD9E0(v105, v106, v107, qword_1C4F0D2D0);
  v108 = v154;
  sub_1C4460050(v97, v154, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v108, 1, v78) == 1)
  {

    sub_1C440BADC();
    sub_1C4420C3C(v109, v110, v111);
    sub_1C440BADC();
    sub_1C4420C3C(v112, v113, v114);
LABEL_77:
    sub_1C43FBC80();
    return;
  }

  (*(v79 + 32))(v53, v108, v78);
  sub_1C441BB14();
  v57 = v123 >> 6;
  v124 = 8 * (v123 >> 6);
  v52 = "communicationDirection";
  if (v125 <= 0xD)
  {
    goto LABEL_52;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_52:
    sub_1C4441510(v115, v116, v117, v118, v119, v120, v121, v122, v151[0]);
    MEMORY[0x1EEE9AC00](v126);
    v26 = v151 - ((v124 + 15) & 0x3FFFFFFFFFFFFFF0);
    v160 = v57;
    sub_1C4501018(0, v57, v26);
    v161 = 0;
    v127 = 0;
    v58 = v25 + 56;
    sub_1C43FD030();
    v57 = v129 & v128;
    v56 = (v130 + 63) >> 6;
    v154 = 0x80000001C4F86760;
    sub_1C43FBDF0();
    v153 = v131;
    while (2)
    {
      if (v57)
      {
        v132 = __clz(__rbit64(v57));
        v57 &= v57 - 1;
LABEL_60:
        v52 = v132 | (v127 << 6);
        switch(*(*(v25 + 48) + 24 * v52 + 16))
        {
          case 1:

            v25 = v164;
            goto LABEL_66;
          case 2:
            sub_1C4408D0C();
            goto LABEL_65;
          case 3:
          case 6:
            sub_1C4405CE0();
            goto LABEL_65;
          case 4:
            sub_1C440AC5C();
            goto LABEL_65;
          case 5:
            sub_1C44070E4();
            goto LABEL_65;
          default:
LABEL_65:
            sub_1C440E528();
            v135 = sub_1C4F02938();

            v25 = v164;
            if ((v135 & 1) == 0)
            {
              continue;
            }

LABEL_66:
            sub_1C4404D48();
            *&v26[v137] |= v136 << v52;
            v75 = __OFADD__(v161++, 1);
            if (!v75)
            {
              continue;
            }

            goto LABEL_88;
        }
      }

      break;
    }

    v55 = v127;
    v53 = v159;
    while (1)
    {
      v127 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_79;
      }

      if (v127 >= v56)
      {
        break;
      }

      ++v55;
      if (*(v58 + 8 * v127))
      {
        sub_1C43FCF1C();
        v57 = v134 & v133;
        goto LABEL_60;
      }
    }

    sub_1C4A8DF38(v26, v160, v161, v25);
    v139 = v138;
    v78 = v156;
    v79 = v162;
    v80 = v163;
    goto LABEL_71;
  }

  v26 = swift_slowAlloc();

  sub_1C446BF80(v26, v57, v25, sub_1C49C9334);
  sub_1C441DD84();
  if (!v21)
  {
    v139 = v150;
    sub_1C440C5E4();
    swift_bridgeObjectRelease_n();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
LABEL_71:
    sub_1C4868140(v139);
    sub_1C4414638();
    if (v25 == 1)
    {
      sub_1C4EF9BE8();
      v139 = *(v79 + 16);
    }

    else
    {
      if (v25 != 255)
      {
        sub_1C49C9234(v26, v57, v25);
      }

      sub_1C444B1EC();
      v139(v80, v53, v78);
    }

    v139(v151[5], v80, v78);
    sub_1C4EFFF08();
    v140 = *(v79 + 8);
    v140(v80, v78);
    v140(v53, v78);
    sub_1C4420C3C(v157, &unk_1EC0B84E0, qword_1C4F0D2D0);
    type metadata accessor for InteractionEvent(0);
    swift_allocObject();
    sub_1C441D304();
    sub_1C4950CDC(v141, v142, v143, v144, v145);
    goto LABEL_77;
  }

LABEL_89:

  sub_1C440C5E4();
  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
  __break(1u);
}

void sub_1C49C81D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v170 = v21;
  v177 = v20;
  v25 = v24;
  sub_1C4423C44(*MEMORY[0x1E69E9840]);
  v165 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v164 = v26;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  sub_1C43FCE30(v29 - v28);
  v30 = sub_1C456902C(&qword_1EC0C0CC0, &qword_1C4F405E8);
  v31 = sub_1C43FBD18(v30);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FCE30(v163 - v32);
  v33 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v174 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v163 - v37;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  v173 = v40;
  v41 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v42 = sub_1C43FBD18(v41);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  sub_1C43FCE30(v46);
  v47 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v48 = sub_1C43FBD18(v47);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  v171 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v163 - v54;
  v56 = *(v25 + 32) & 0x3F;
  sub_1C43FF350();
  v58 = v57 >> 6;
  v59 = 8 * (v57 >> 6);
  v60 = swift_bridgeObjectRetain_n();
  v68 = "communicationDirection";
  v69 = "lookaheadDuration";
  v70 = v56 > 0xD;
  v71 = v25;
  v175 = v38;
  v176 = v33;
  v179 = v55;
  if (v70)
  {
    goto LABEL_81;
  }

  while (1)
  {
    sub_1C4441510(v60, v61, v62, v63, v64, v65, v66, v67, v163[0]);
    MEMORY[0x1EEE9AC00](v72);
    v73 = (v59 + 15) & 0x3FFFFFFFFFFFFFF0;
    v59 = v69;
    v55 = v74;
    v75 = v163 - v73;
    v178 = v58;
    sub_1C4501018(0, v58, v163 - v73);
    v172 = 0;
    v33 = 0;
    v69 = v71;
    v68 = v71 + 56;
    sub_1C43FD030();
    v58 = v77 & v76;
    v71 = (v78 + 63) >> 6;
    v168 = (v79 - 32) | 0x8000000000000000;
    sub_1C442BD00(v55 - 32);
    sub_1C4425294(v59 - 32);
    while (v58)
    {
      sub_1C442377C();
LABEL_10:
      v59 = v80 | (v33 << 6);
      v38 = 0xE800000000000000;
      v84 = 0x4449656C646E7562;
      switch(*(*(v69 + 48) + 24 * v59 + 16))
      {
        case 1:
          sub_1C44044FC();
          v84 = v85 - 5;
          v38 = v167;
          break;
        case 2:
          sub_1C441846C();
          goto LABEL_18;
        case 3:
          v86 = &a16;
          goto LABEL_15;
        case 4:
          v38 = 0xEF657079546E6F69;
          v84 = sub_1C440AC5C();
          break;
        case 5:
          v38 = 0xEB00000000656741;
          v84 = sub_1C44070E4();
          break;
        case 6:
          v86 = &a17;
LABEL_15:
          v38 = *(v86 - 32);
          v84 = sub_1C4405CE0();
          break;
        default:
          break;
      }

      v55 = sub_1C4411DF4(v84, v38);

      if (v55)
      {
LABEL_18:
        sub_1C4404D48();
        *&v75[v88] |= v87 << v59;
        v89 = __OFADD__(v172++, 1);
        if (v89)
        {
          __break(1u);
LABEL_89:
          __break(1u);
        }
      }
    }

    v81 = v33;
    while (1)
    {
      v33 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      if (v33 >= v71)
      {
        v68 = v69;
        sub_1C4A8DF38(v75, v178, v172, v69);
        sub_1C442EC28();
        v90 = "communicationDirection";
        goto LABEL_23;
      }

      ++v81;
      if (*(v68 + 8 * v33))
      {
        sub_1C43FCF1C();
        v58 = v83 & v82;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v154 = swift_slowAlloc();

  v156 = sub_1C44691B8(v154, v58, v155, sub_1C49C9350);
  v170 = v21;
  if (v21)
  {

    sub_1C440CCDC();
    swift_bridgeObjectRelease_n();
    goto LABEL_92;
  }

  v59 = v156;
  sub_1C440CCDC();
  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
  v157 = v71;
  v71 = v38;
  v38 = v33;
  v90 = v68;
  v68 = v157;
LABEL_23:
  v91 = *(v59 + 16);
  if (v91 == 1)
  {
    v178 = v68;
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](2);
    sub_1C4F01298();
    sub_1C4F02B68();
    sub_1C441C388();
    if (v92)
    {
      while (1)
      {
        v93 = *(v59 + 48) + 24 * v68;
        if (*(v93 + 16) == 2)
        {
          if ((*v93 & 1) == 0)
          {

            goto LABEL_76;
          }

          sub_1C4402404();
          v94 = sub_1C4F02938();

          if (v94)
          {
            break;
          }
        }

        sub_1C447F1A0();
        if ((v95 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_76:
      sub_1C441615C();
      sub_1C4F00068();
      sub_1C4EFFC68();
      sub_1C440582C(v59);
      v68 = v178;
      v55 = v179;
      v69 = "lookaheadDuration";
      v90 = "communicationDirection";
      if (v98)
      {
        sub_1C4420C3C(v59, &qword_1EC0C0CC8, &unk_1C4F405F0);
        sub_1C43FCF64();
        sub_1C440BAA8(v149, v150, v151, v38);
      }

      else
      {
        sub_1C441BB28();
        sub_1C4EFFC58();
        sub_1C4402A78();
        v152 = sub_1C4402120();
        v153(v152);
      }
    }

    else
    {
LABEL_29:

      v96 = v166;
      sub_1C4F00068();
      v97 = sub_1C4EFFC68();
      sub_1C440582C(v96);
      if (v98)
      {
        sub_1C4420C3C(v96, &qword_1EC0C0CC8, &unk_1C4F405F0);
        sub_1C43FCF64();
        sub_1C440BAA8(v99, v100, v101, v38);
      }

      else
      {
        sub_1C441BB28();
        sub_1C4EFFC48();
        sub_1C4402A78();
        (*(v105 + 8))(v96, v97);
      }

      v68 = v178;
      v55 = v179;
      v69 = "lookaheadDuration";
      v90 = "communicationDirection";
    }

    goto LABEL_42;
  }

  if (v91)
  {
    sub_1C441BB28();
    sub_1C4F00068();
    sub_1C4EFFC68();
    sub_1C440582C(v69);
    if (!v98)
    {
LABEL_40:
      sub_1C4EFFC58();
      sub_1C4402A78();
      v106 = sub_1C43FD024();
      v107(v106);
      goto LABEL_41;
    }
  }

  else
  {
    sub_1C441BB28();
    sub_1C4F00068();
    sub_1C4EFFC68();
    sub_1C440582C(v69);
    if (!v98)
    {
      goto LABEL_40;
    }
  }

  sub_1C4420C3C(v69, &qword_1EC0C0CC8, &unk_1C4F405F0);
  sub_1C43FCF64();
  sub_1C440BAA8(v102, v103, v104, v38);
LABEL_41:
  v69 = "lookaheadDuration";
LABEL_42:
  sub_1C441D304();
  sub_1C44CD9E0(v108, v109, v110, v111);
  v112 = v171;
  sub_1C4460050(v55, v171, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v112, 1, v38) == 1)
  {

    sub_1C440BADC();
    sub_1C4420C3C(v113, v114, v115);
    sub_1C440BADC();
    sub_1C4420C3C(v116, v117, v118);
LABEL_73:
    sub_1C43FBC80();
    return;
  }

  (*(v174 + 32))(v173, v112, v38);
  sub_1C441BB14();
  v128 = v127 >> 6;
  if (v129 <= 0xD)
  {
    goto LABEL_45;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_45:
    sub_1C4441510(v119, v120, v121, v122, v123, v124, v125, v126, v163[0]);
    MEMORY[0x1EEE9AC00](v130);
    v131 = sub_1C441D2F0();
    v178 = v128;
    v171 = v132;
    sub_1C4501018(v131, v128, v132);
    v172 = 0;
    v71 = 0;
    v58 = v68;
    v38 = (v68 + 56);
    sub_1C43FD030();
    v59 = v134 & v133;
    v136 = v135 + 63;
    v137 = v90;
    v33 = v136 >> 6;
    v168 = (v137 - 32) | 0x8000000000000000;
    sub_1C442BD00("entityIdentifier");
    v68 = "pearance";
    while (2)
    {
      if (v59)
      {
        v138 = __clz(__rbit64(v59));
        v59 &= v59 - 1;
LABEL_53:
        v69 = v138 | (v71 << 6);
        switch(*(*(v58 + 48) + 24 * v69 + 16))
        {
          case 1:

            goto LABEL_59;
          case 2:
            sub_1C4408D0C();
            goto LABEL_58;
          case 3:
          case 6:
            sub_1C4405CE0();
            goto LABEL_58;
          case 4:
            sub_1C440AC5C();
            goto LABEL_58;
          case 5:
            sub_1C44070E4();
            goto LABEL_58;
          default:
LABEL_58:
            sub_1C440E528();
            sub_1C4F02938();
            sub_1C441AFAC();

            if ((v55 & 1) == 0)
            {
              continue;
            }

LABEL_59:
            sub_1C4404D48();
            sub_1C43FC660(v142);
            v89 = __OFADD__(v172++, 1);
            if (!v89)
            {
              continue;
            }

            goto LABEL_89;
        }
      }

      break;
    }

    v139 = v71;
    while (1)
    {
      v71 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        goto LABEL_80;
      }

      if (v71 >= v33)
      {
        break;
      }

      ++v139;
      if (*&v38[8 * v71])
      {
        sub_1C43FCF1C();
        v59 = v141 & v140;
        goto LABEL_53;
      }
    }

    sub_1C4A8DF38(v171, v178, v172, v58);
    sub_1C442EC28();
    goto LABEL_64;
  }

  v58 = swift_slowAlloc();

  v158 = sub_1C4402120();
  v159 = v170;
  v162 = sub_1C4D2C7B8(v158, v160, v68, v161);
  v170 = v159;
  if (!v159)
  {
    v59 = v162;
    sub_1C440C5E4();
    swift_bridgeObjectRelease_n();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
LABEL_64:
    sub_1C4868140(v59);
    sub_1C4414638();
    if (v68 == 1)
    {
      sub_1C4EF9BE8();
      v59 = *(v174 + 16);
    }

    else
    {
      if (v68 != 255)
      {
        sub_1C49C9234(v58, v69, v68);
      }

      sub_1C444B1EC();
      (v59)(v71);
    }

    (v59)(v169, v71, v38);
    sub_1C441615C();
    sub_1C4F00058();
    sub_1C4EFFEF8();
    sub_1C440582C(v59);
    if (v98)
    {
      sub_1C4420C3C(v59, &qword_1EC0C0CC0, &qword_1C4F405E8);
      v147 = 0xE700000000000000;
      v145 = 0x6E776F6E6B6E75;
    }

    else
    {
      sub_1C441BB28();
      sub_1C4EFFEE8();
      sub_1C4402A78();
      v143 = sub_1C4402120();
      v144(v143);
      v145 = sub_1C4EFD3D8();
      v147 = v146;
      (*(v164 + 8))(v69, v165);
    }

    v148 = *(v174 + 8);
    v148(v71, v38);
    v148(v173, v38);
    sub_1C4420C3C(v55, &unk_1EC0B84E0, qword_1C4F0D2D0);
    type metadata accessor for InteractionEvent(0);
    swift_allocObject();
    sub_1C4950CDC(v169, 6, v145, v147, MEMORY[0x1E69E7CC0]);
    goto LABEL_73;
  }

  sub_1C440C5E4();
  swift_bridgeObjectRelease_n();
LABEL_92:
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
  __break(1u);
}
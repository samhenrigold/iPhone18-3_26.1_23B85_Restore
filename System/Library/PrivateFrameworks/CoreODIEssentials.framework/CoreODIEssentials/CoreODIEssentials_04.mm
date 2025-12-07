uint64_t sub_1DAF7A16C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));

  sub_1DAF8C598(*(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336));
  sub_1DAF40AEC(v0 + 344, &qword_1ECC0E7A0, &unk_1DB0A5140);

  sub_1DAF8B934(v0 + 400);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DAF7A218()
{
  sub_1DAF7A16C();

  return swift_defaultActor_deallocate();
}

unint64_t sub_1DAF7A268(uint64_t a1)
{
  result = sub_1DAF7A290();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DAF7A290()
{
  result = qword_1EE301108[0];
  if (!qword_1EE301108[0])
  {
    type metadata accessor for ODNAssessmentsManager();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE301108);
  }

  return result;
}

uint64_t sub_1DAF7A2E4(uint64_t a1, uint64_t a2)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E790, &qword_1DB0A5100);
  *(v3 + 136) = swift_task_alloc();
  v5 = type metadata accessor for ODNAssessmentResult(0);
  *(v3 + 144) = v5;
  *(v3 + 152) = *(v5 - 8);
  v6 = swift_task_alloc();
  *(v3 + 50) = *a2;
  v7 = *(a2 + 8);
  *(v3 + 160) = v6;
  *(v3 + 168) = v7;
  *(v3 + 176) = *(a2 + 16);
  *(v3 + 51) = *(a2 + 32);
  *(v3 + 52) = *(a2 + 33);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7A404, v2, 0);
}

uint64_t sub_1DAF7A404()
{
  v1 = *(v0 + 52);
  v2 = *(v0 + 51);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = *(v0 + 168);
  v6 = *(v0 + 50);
  v7 = *(v0 + 128);
  swift_beginAccess();
  v12 = *(v7 + 968);
  v8 = *(v7 + 976);
  *(v7 + 952) = v6;
  *(v7 + 960) = v5;
  *(v7 + 968) = v3;
  *(v7 + 976) = v4;
  *(v7 + 984) = v2;
  *(v7 + 985) = v1;

  sub_1DAF4ED88(v3, v4);

  sub_1DAF4AC40(v12, v8);
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v3;
  *(v0 + 40) = v4;
  *(v0 + 48) = v2;
  *(v0 + 49) = v1;
  v9 = swift_task_alloc();
  *(v0 + 192) = v9;
  *v9 = v0;
  v9[1] = sub_1DAF7A550;
  v10 = *(v0 + 136);

  return sub_1DAF7AB74(v10, v0 + 16);
}

uint64_t sub_1DAF7A550()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7A660, v1, 0);
}

uint64_t sub_1DAF7A660()
{
  v1 = *(v0 + 136);
  if ((*(*(v0 + 152) + 48))(v1, 1, *(v0 + 144)) == 1)
  {
    v2 = *(v0 + 52);
    v3 = *(v0 + 51);
    v4 = *(v0 + 184);
    v12 = *(v0 + 168);
    v5 = *(v0 + 50);
    sub_1DAF40AEC(v1, &qword_1ECC0E790, &qword_1DB0A5100);
    *(v0 + 56) = v5;
    *(v0 + 64) = v12;
    *(v0 + 80) = v4;
    *(v0 + 88) = v3;
    *(v0 + 89) = v2;
    v6 = swift_task_alloc();
    *(v0 + 200) = v6;
    *v6 = v0;
    v6[1] = sub_1DAF7A810;
    v7 = *(v0 + 120);

    return sub_1DAF7E478(v7, v0 + 56);
  }

  else
  {
    v9 = *(v0 + 160);
    v10 = *(v0 + 120);
    sub_1DAF8C2B8(v1, v9, type metadata accessor for ODNAssessmentResult);
    sub_1DAF8C2B8(v9, v10, type metadata accessor for ODNAssessmentResult);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1DAF7A810()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    v3 = v2[16];

    return MEMORY[0x1EEE6DFA0](sub_1DAF7A958, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1DAF7A958()
{
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_1DAF7A9F0;
  v2 = v0[26];
  v3 = v0[15];

  return sub_1DAF85904(v3, v2);
}

uint64_t sub_1DAF7A9F0()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7AB00, v1, 0);
}

uint64_t sub_1DAF7AB00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF7AB74(uint64_t a1, uint64_t a2)
{
  *(v3 + 6384) = v2;
  *(v3 + 6376) = a1;
  type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0);
  *(v3 + 6392) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7D0, &qword_1DB0A51D0);
  *(v3 + 6400) = swift_task_alloc();
  v5 = type metadata accessor for PregeneratedAssessment(0);
  *(v3 + 6408) = v5;
  *(v3 + 6416) = *(v5 - 8);
  *(v3 + 6424) = swift_task_alloc();
  *(v3 + 6432) = swift_task_alloc();
  *(v3 + 6440) = swift_task_alloc();
  *(v3 + 6448) = *(a2 + 8);
  *(v3 + 602) = *(a2 + 33);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7ACD0, v2, 0);
}

uint64_t sub_1DAF7ACD0()
{
  v1 = v0[798];
  swift_beginAccess();
  v0[807] = v1[50];
  v0[808] = v1[51];
  v0[809] = v1[52];
  v0[810] = v1[53];
  v2 = (v1[31] + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v0[811] = *v2;
  v0[812] = v2[1];
  v3 = qword_1EE304008;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v0[813] = v4;
  *v4 = v0;
  v4[1] = sub_1DAF7AE18;

  return sub_1DAFEFC24((v0 + 378));
}

uint64_t sub_1DAF7AE18()
{
  v1 = *(*v0 + 6384);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7AF28, v1, 0);
}

uint64_t sub_1DAF7AF28()
{
  v20 = v0;
  *(v0 + 2960) = *(v0 + 3184);
  *(v0 + 2976) = *(v0 + 3200);
  *(v0 + 2992) = *(v0 + 3216);
  *(v0 + 3008) = *(v0 + 3232);
  *(v0 + 2896) = *(v0 + 3120);
  *(v0 + 2912) = *(v0 + 3136);
  *(v0 + 2928) = *(v0 + 3152);
  *(v0 + 2944) = *(v0 + 3168);
  *(v0 + 2832) = *(v0 + 3056);
  *(v0 + 2848) = *(v0 + 3072);
  *(v0 + 2864) = *(v0 + 3088);
  *(v0 + 2880) = *(v0 + 3104);
  *(v0 + 2800) = *(v0 + 3024);
  *(v0 + 2816) = *(v0 + 3040);
  v1 = *(v0 + 3016);
  if (v1)
  {
  }

  else
  {
    v1 = sub_1DAF3EE1C(MEMORY[0x1E69E7CC0]);
  }

  v2 = *(v0 + 6480);
  v3 = *(v0 + 6472);
  sub_1DAF791EC(v0 + 2800);
  LOBYTE(v17) = 0;

  LOBYTE(v3) = sub_1DAFFF15C(&v17, v3, v2, v1);

  if (v3)
  {
    v4 = *(v0 + 6448);
    v5 = *(v0 + 6384);
    v6 = *(v5 + 176);
    v17 = *(v5 + 168);
    v18 = v6;
    v19 = 8;

    CoreODILogger.debug(_:category:)(0xD000000000000022, 0x80000001DB0C3A80, &v19);

    *(v5 + 952) = 0;
    *(v0 + 5656) = &type metadata for AssessmentPregenerator;
    *(v0 + 5664) = &off_1F56C5468;
    __swift_project_boxed_opaque_existential_1((v0 + 5632), &type metadata for AssessmentPregenerator);
    *(v0 + 6328) = v4;

    v7 = swift_task_alloc();
    *(v0 + 6512) = v7;
    *v7 = v0;
    v7[1] = sub_1DAF7B260;
    v8 = *(v0 + 6480);
    v9 = *(v0 + 6472);
    v10 = *(v0 + 6400);

    return sub_1DAFF5D44(v10, (v0 + 6328), v9, v8);
  }

  else
  {
    v12 = *(v0 + 6384);
    v13 = *(v0 + 6376);

    v14 = *(v12 + 176);
    v17 = *(v12 + 168);
    v18 = v14;
    v19 = 14;

    CoreODILogger.debug(_:category:)(0xD000000000000011, 0x80000001DB0C3A60, &v19);

    v15 = type metadata accessor for ODNAssessmentResult(0);
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1DAF7B260()
{
  v2 = *v1;
  *(*v1 + 6520) = v0;

  if (v0)
  {
    v3 = *(v2 + 6384);

    v4 = sub_1DAF7CCBC;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 6384);

    v4 = sub_1DAF7B3D0;
    v5 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DAF7B3D0()
{
  v1 = v0[805];
  v2 = v0[800];
  (*(v0[802] + 56))(v2, 0, 1, v0[801]);
  sub_1DAF8C2B8(v2, v1, type metadata accessor for PregeneratedAssessment);
  v3 = swift_task_alloc();
  v0[816] = v3;
  *v3 = v0;
  v3[1] = sub_1DAF7B4C0;

  return sub_1DAF79240((v0 + 689));
}

uint64_t sub_1DAF7B4C0()
{
  v1 = *(*v0 + 6384);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7B5D0, v1, 0);
}

uint64_t sub_1DAF7B5D0()
{
  v130 = v0;
  if (*(v0 + 5536))
  {
    v1 = *(v0 + 6520);
    v2 = *(v0 + 6440);

    sub_1DAF332B8((v0 + 5512), v0 + 5592);
    __swift_project_boxed_opaque_existential_1((v0 + 5592), *(v0 + 5616));
    sub_1DAFDBC18(v2, v0 + 2528);
    if (v1)
    {
      v3 = *(v0 + 6440);
      v4 = *(v0 + 6384);
      v5 = *(v0 + 6376);

      v6 = *(v4 + 176);
      v128 = *(v4 + 168);
      v129 = v6;
      LOBYTE(v126) = 14;

      CoreODILogger.debug(_:category:)(0xD000000000000015, 0x80000001DB0C3B20, &v126);

      v7 = v3;
LABEL_21:
      sub_1DAF8C320(v7, type metadata accessor for PregeneratedAssessment);
      v34 = type metadata accessor for ODNAssessmentResult(0);
      (*(*(v34 - 8) + 56))(v5, 1, 1, v34);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5592));
      v35 = (v0 + 5632);
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm(v35);

      v36 = *(v0 + 8);

      return v36();
    }

    v24 = *(v0 + 6440);
    v25 = *(v0 + 6408);
    memcpy((v0 + 2256), (v0 + 2528), 0x110uLL);
    v26 = (v24 + *(v25 + 32));
    v27 = *v26;
    v28 = v26[1];
    v29 = sub_1DAFDD59C(*v26, v28);
    *(v0 + 6536) = v29;
    *(v0 + 6544) = v30;
    if (v30 >> 60 == 15)
    {

      sub_1DAF8C380(v0 + 2256);
LABEL_20:
      v31 = *(v0 + 6440);
      v32 = *(v0 + 6384);
      v5 = *(v0 + 6376);
      v33 = *(v32 + 176);
      v126 = *(v32 + 168);
      v127 = v33;

      sub_1DB09DE44();

      v128 = 0xD00000000000000ELL;
      v129 = 0x80000001DB0C3B40;
      MEMORY[0x1E127FE90](v27, v28);
      CoreODILogger.debug(_:category:)(0xD000000000000021, 0x80000001DB0C3B40, &v128);

      v7 = v31;
      goto LABEL_21;
    }

    v123 = v29;
    v125 = v30;
    v37 = sub_1DB09CFA4();
    if (v38 >> 60 == 15)
    {

      sub_1DAF8C380(v0 + 2256);
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v39 = MEMORY[0x1E69E7CC0];
      v40 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v40 + 16))
      {
        v41 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v42)
        {
          sub_1DAF409DC(*(v40 + 56) + 32 * v41, v0 + 6168);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v39 = *(v0 + 6360);
          }

          else
          {
            v39 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1DAF72EC0(0, *(v39 + 2) + 1, 1, v39);
      }

      v54 = *(v39 + 2);
      v53 = *(v39 + 3);
      if (v54 >= v53 >> 1)
      {
        v39 = sub_1DAF72EC0((v53 > 1), v54 + 1, 1, v39);
      }

      *(v39 + 2) = v54 + 1;
      v55 = &v39[56 * v54];
      *(v55 + 4) = 0xD000000000000022;
      *(v55 + 5) = 0x80000001DB0C3B70;
      *(v55 + 6) = 0xD000000000000030;
      *(v55 + 7) = 0x80000001DB0C3BA0;
      *(v55 + 8) = 0x6F72662864656573;
      *(v55 + 9) = 0xEB00000000293A6DLL;
      *(v55 + 10) = 77;
      *(v0 + 5808) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 5784) = v39;
      sub_1DAF40D20((v0 + 5784), (v0 + 5848));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v128 = v40;
      sub_1DAF3B11C((v0 + 5848), 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v57 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v58 = sub_1DB09D6B4();
      v59 = sub_1DB09D604();
      v60 = [v57 initWithDomain:v58 code:-2127 userInfo:v59];

      swift_willThrow();
      sub_1DAF4AC40(v123, v125);

      goto LABEL_20;
    }

    v120 = v37;
    v43 = v38;
    sub_1DB09CC24();
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DAF8C3D4();
    sub_1DB09CC04();
    v44 = *(v0 + 6440);
    v45 = *(v0 + 6408);

    sub_1DAF4AC40(v120, v43);
    v46 = *(v0 + 5272);
    *(v0 + 5448) = *(v0 + 5256);
    *(v0 + 5464) = v46;
    v47 = *(v0 + 5304);
    *(v0 + 5480) = *(v0 + 5288);
    *(v0 + 5496) = v47;
    v48 = (v44 + *(v45 + 40));
    v49 = *v48;
    v50 = v48[1];
    v51 = sub_1DAFDD59C(*v48, v50);
    *(v0 + 6552) = v51;
    *(v0 + 6560) = v52;
    if (v52 >> 60 == 15)
    {

      sub_1DAF41478(v0 + 5448);
      sub_1DAF8C380(v0 + 2256);
LABEL_41:
      v61 = *(v0 + 6440);
      v62 = *(v0 + 6384);
      v63 = *(v0 + 6376);
      v64 = *(v62 + 176);
      v126 = *(v62 + 168);
      v127 = v64;

      sub_1DB09DE44();

      v128 = 0xD00000000000000ELL;
      v129 = 0x80000001DB0C3BE0;
      MEMORY[0x1E127FE90](v49, v50);
      CoreODILogger.debug(_:category:)(0xD00000000000001FLL, 0x80000001DB0C3BE0, &v128);

      sub_1DAF4AC40(v123, v125);

      sub_1DAF8C320(v61, type metadata accessor for PregeneratedAssessment);
      v65 = type metadata accessor for ODNAssessmentResult(0);
      (*(*(v65 - 8) + 56))(v63, 1, 1, v65);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5592));
      v35 = (v0 + 5632);
      goto LABEL_22;
    }

    v118 = v51;
    v121 = v52;
    v66 = sub_1DB09CFA4();
    v116 = v49;
    if (v67 >> 60 == 15)
    {

      sub_1DAF41478(v0 + 5448);
      sub_1DAF8C380(v0 + 2256);
      if (qword_1EE301E08 != -1)
      {
        swift_once();
      }

      v68 = MEMORY[0x1E69E7CC0];
      v69 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v69 + 16))
      {
        v70 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
        if (v71)
        {
          sub_1DAF409DC(*(v69 + 56) + 32 * v70, v0 + 5944);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          if (swift_dynamicCast())
          {
            v68 = *(v0 + 6352);
          }

          else
          {
            v68 = MEMORY[0x1E69E7CC0];
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_1DAF72EC0(0, *(v68 + 2) + 1, 1, v68);
      }

      v106 = *(v68 + 2);
      v105 = *(v68 + 3);
      if (v106 >= v105 >> 1)
      {
        v68 = sub_1DAF72EC0((v105 > 1), v106 + 1, 1, v68);
      }

      *(v68 + 2) = v106 + 1;
      v107 = &v68[56 * v106];
      *(v107 + 4) = 0xD000000000000022;
      *(v107 + 5) = 0x80000001DB0C3B70;
      *(v107 + 6) = 0xD000000000000030;
      *(v107 + 7) = 0x80000001DB0C3BA0;
      *(v107 + 8) = 0x6F72662864656573;
      *(v107 + 9) = 0xEB00000000293A6DLL;
      *(v107 + 10) = 77;
      *(v0 + 6000) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      *(v0 + 5976) = v68;
      sub_1DAF40D20((v0 + 5976), (v0 + 6008));
      v108 = swift_isUniquelyReferenced_nonNull_native();
      v128 = v69;
      sub_1DAF3B11C((v0 + 6008), 0x636F766E4949444FLL, 0xEE00736E6F697461, v108);
      v109 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v110 = sub_1DB09D6B4();
      v111 = sub_1DB09D604();
      v112 = [v109 initWithDomain:v110 code:-2127 userInfo:v111];

      swift_willThrow();
      sub_1DAF4AC40(v118, v121);

      v49 = v116;
      goto LABEL_41;
    }

    v72 = v66;
    v73 = v67;
    swift_allocObject();
    sub_1DB09CC14();
    v114 = v73;
    sub_1DB09CC04();
    v115 = *(v0 + 6408);
    v117 = *(v0 + 6440);
    v74 = *(v0 + 6384);

    sub_1DAF4AC40(v72, v114);
    v75 = *(v0 + 5400);
    *(v0 + 5320) = *(v0 + 5384);
    *(v0 + 5336) = v75;
    v76 = *(v0 + 5432);
    *(v0 + 5352) = *(v0 + 5416);
    *(v0 + 5368) = v76;
    v77 = *(v0 + 2368);
    *(v0 + 5080) = *(v0 + 2352);
    *(v0 + 5096) = v77;
    *(v0 + 5112) = *(v0 + 2384);
    v78 = *(v0 + 2304);
    *(v0 + 5016) = *(v0 + 2288);
    *(v0 + 5032) = v78;
    v79 = *(v0 + 2336);
    *(v0 + 5048) = *(v0 + 2320);
    *(v0 + 5064) = v79;
    v80 = *(v0 + 2272);
    *(v0 + 4984) = *(v0 + 2256);
    *(v0 + 5000) = v80;
    nullsub_3();
    v81 = *(v0 + 2456);
    *(v0 + 5200) = *(v0 + 2472);
    v82 = *(v0 + 2504);
    *(v0 + 5216) = *(v0 + 2488);
    *(v0 + 5232) = v82;
    v83 = *(v0 + 2392);
    *(v0 + 5136) = *(v0 + 2408);
    v84 = *(v0 + 2440);
    *(v0 + 5152) = *(v0 + 2424);
    *(v0 + 5168) = v84;
    *(v0 + 5184) = v81;
    *(v0 + 5248) = *(v0 + 2520);
    *(v0 + 5120) = v83;
    nullsub_3();
    sub_1DAF49ECC(v0 + 2256, v0 + 4576);
    sub_1DAF4ED88(v123, v125);
    sub_1DAF49ECC(v0 + 2392, v0 + 4440);
    sub_1DAF4ED88(v118, v121);
    memcpy((v0 + 1792), (v74 + 488), 0x1D0uLL);
    *(v74 + 488) = *(v0 + 4984);
    v85 = *(v0 + 5000);
    v86 = *(v0 + 5016);
    v87 = *(v0 + 5048);
    *(v74 + 536) = *(v0 + 5032);
    *(v74 + 552) = v87;
    *(v74 + 504) = v85;
    *(v74 + 520) = v86;
    v88 = *(v0 + 5064);
    v89 = *(v0 + 5080);
    v90 = *(v0 + 5096);
    *(v74 + 616) = *(v0 + 5112);
    *(v74 + 584) = v89;
    *(v74 + 600) = v90;
    *(v74 + 568) = v88;
    *(v74 + 624) = 0u;
    v91 = *(v0 + 5448);
    v92 = *(v0 + 5464);
    v93 = *(v0 + 5496);
    *(v74 + 672) = *(v0 + 5480);
    *(v74 + 688) = v93;
    *(v74 + 640) = v91;
    *(v74 + 656) = v92;
    *(v74 + 704) = v123;
    *(v74 + 712) = v125;
    v94 = *(v0 + 5248);
    v95 = *(v0 + 5232);
    v96 = *(v0 + 5216);
    *(v74 + 800) = *(v0 + 5200);
    *(v74 + 816) = v96;
    *(v74 + 832) = v95;
    *(v74 + 848) = v94;
    v97 = *(v0 + 5184);
    v98 = *(v0 + 5168);
    v99 = *(v0 + 5152);
    *(v74 + 736) = *(v0 + 5136);
    *(v74 + 752) = v99;
    *(v74 + 768) = v98;
    *(v74 + 784) = v97;
    *(v74 + 720) = *(v0 + 5120);
    *(v74 + 856) = 0u;
    v100 = *(v0 + 5368);
    v102 = *(v0 + 5320);
    v101 = *(v0 + 5336);
    *(v74 + 904) = *(v0 + 5352);
    *(v74 + 920) = v100;
    *(v74 + 872) = v102;
    *(v74 + 888) = v101;
    *(v74 + 936) = v118;
    *(v74 + 944) = v121;
    sub_1DAF8BF7C(v0 + 1792);
    v103 = __swift_project_boxed_opaque_existential_1((v74 + 208), *(v74 + 232));
    *(v0 + 603) = *(v117 + *(v115 + 68));
    v104 = (v117 + *(v115 + 72));
    *(v0 + 6568) = *v104;
    *(v0 + 6576) = v104[1];
    v23 = *v103;
    *(v0 + 6584) = *v103;
    v22 = sub_1DAF7CE30;
  }

  else
  {

    sub_1DAF40AEC(v0 + 5512, &qword_1ECC0E7A0, &unk_1DB0A5140);
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v8 = MEMORY[0x1E69E7CC0];
    v9 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v9 + 16))
    {
      v10 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
      if (v11)
      {
        sub_1DAF409DC(*(v9 + 56) + 32 * v10, v0 + 5880);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        if (swift_dynamicCast())
        {
          v8 = *(v0 + 6320);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1DAF72EC0(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1DAF72EC0((v12 > 1), v13 + 1, 1, v8);
    }

    v14 = *(v0 + 6480);
    v15 = *(v0 + 6472);
    v122 = *(v0 + 6440);
    v119 = *(v0 + 6408);
    v124 = *(v0 + 6384);
    *(v8 + 2) = v13 + 1;
    v16 = &v8[56 * v13];
    *(v16 + 4) = 0xD000000000000018;
    *(v16 + 5) = 0x80000001DB0C3AD0;
    *(v16 + 6) = 0xD00000000000002DLL;
    *(v16 + 7) = 0x80000001DB0C3590;
    *(v16 + 8) = 0xD000000000000022;
    *(v16 + 9) = 0x80000001DB0C3AF0;
    *(v16 + 10) = 177;
    *(v0 + 5936) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
    *(v0 + 5912) = v8;
    sub_1DAF40D20((v0 + 5912), (v0 + 6040));
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v9;
    sub_1DAF3B11C((v0 + 6040), 0x636F766E4949444FLL, 0xEE00736E6F697461, v17);
    v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v19 = sub_1DB09D6B4();
    v20 = sub_1DB09D604();
    v21 = [v18 initWithDomain:v19 code:-3167 userInfo:v20];

    sub_1DB041E04(v21, v15, v14, v0 + 5672);
    *(v0 + 6712) = *(v0 + 5672);
    *(v0 + 6720) = *(v0 + 5680);
    *(v0 + 604) = *(v0 + 5688);
    *(v0 + 6728) = *(v0 + 5696);
    *(v0 + 6296) = *(v0 + 5696);
    sub_1DAF40A84(v0 + 6296, v0 + 6280, &unk_1ECC0EAE0, &unk_1DB0A4650);

    *(v0 + 605) = sub_1DAF8B2AC(*(v122 + *(v119 + 28)), *(v122 + *(v119 + 28) + 8)) & 1;

    sub_1DAF8B8D8(v124 + 400, v0 + 16);
    v22 = sub_1DAF7DDAC;
    v23 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v22, v23, 0);
}

uint64_t sub_1DAF7CCBC()
{
  v7 = v0;
  v1 = v0[800];
  v2 = v0[797];
  (*(v0[802] + 56))(v1, 1, 1, v0[801]);
  sub_1DAF40AEC(v1, &qword_1ECC0E7D0, &qword_1DB0A51D0);
  v6 = 14;

  CoreODILogger.debug(_:category:)(0xD000000000000010, 0x80000001DB0C3AB0, &v6);

  v3 = type metadata accessor for ODNAssessmentResult(0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 704);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DAF7CE30()
{
  v1 = *(v0 + 6584);
  v2 = *(v0 + 6576);
  v3 = *(v0 + 603);
  swift_beginAccess();
  *(v1 + 112) = v3;
  if (v2)
  {
    v4 = *(v0 + 6584);
    v5 = *(v0 + 6576);
    *(v4 + 120) = *(v0 + 6568);
    *(v4 + 128) = v5;
  }

  v6 = *(v0 + 6384);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7CEE4, v6, 0);
}

uint64_t sub_1DAF7CEE4()
{
  v1 = *(v0 + 6464);
  v2 = *(v0 + 6456);
  v3 = *(v0 + 6432);
  v4 = *(v0 + 6392);
  v5 = *(v0 + 6384);
  sub_1DAF8C428(*(v0 + 6440), v3);
  *(v0 + 5712) = 0u;
  *(v0 + 5728) = 0u;
  *(v0 + 5744) = 1;
  sub_1DAFF856C(v2, v1, v3, (v0 + 5712), v4);
  __swift_project_boxed_opaque_existential_1((v5 + 208), *(v5 + 232));
  v6 = swift_task_alloc();
  *(v0 + 6592) = v6;
  *v6 = v0;
  v6[1] = sub_1DAF7CFEC;
  v7 = *(v0 + 602);
  v8 = *(v0 + 6392);

  return sub_1DAFF9558(v8, v7);
}

uint64_t sub_1DAF7CFEC()
{
  v2 = *v1;
  *(*v1 + 6600) = v0;

  v3 = *(v2 + 6384);
  if (v0)
  {
    v4 = sub_1DAF7D218;
  }

  else
  {
    v4 = sub_1DAF7D118;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAF7D118()
{
  *(v0 + 6608) = *(v0 + 2256) + 49;
  v1 = *(v0 + 6440);
  v2 = *(v0 + 6424);
  *(v0 + 6616) = *(v0 + 2328);
  *(v0 + 6624) = *(v0 + 2336);
  *(v0 + 6632) = *(v0 + 2344);
  *(v0 + 6640) = *(v0 + 2352);
  *(v0 + 6648) = *(v0 + 2360);
  *(v0 + 6656) = *(v0 + 2368);
  sub_1DAF8C428(v1, v2);
  v3 = qword_1EE301710;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE30A060;
  *(v0 + 6664) = qword_1EE30A060;

  return MEMORY[0x1EEE6DFA0](sub_1DAF7D544, v4, 0);
}

uint64_t sub_1DAF7D218()
{
  v20 = v0;
  v1 = *(v0 + 6600);
  *(v0 + 6336) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 6344);
    sub_1DAF877B0(v3);
    sub_1DAF8C080(v3);

    *(v0 + 6608) = *(v0 + 2256) + 49;
    v4 = *(v0 + 6440);
    v5 = *(v0 + 6424);
    *(v0 + 6616) = *(v0 + 2328);
    *(v0 + 6624) = *(v0 + 2336);
    *(v0 + 6632) = *(v0 + 2344);
    *(v0 + 6640) = *(v0 + 2352);
    *(v0 + 6648) = *(v0 + 2360);
    *(v0 + 6656) = *(v0 + 2368);
    sub_1DAF8C428(v4, v5);
    v6 = qword_1EE301710;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_1EE30A060;
    *(v0 + 6664) = qword_1EE30A060;

    return MEMORY[0x1EEE6DFA0](sub_1DAF7D544, v7, 0);
  }

  else
  {
    v8 = *(v0 + 6600);
    v9 = *(v0 + 6560);
    v10 = *(v0 + 6552);
    v11 = *(v0 + 6544);
    v12 = *(v0 + 6536);
    v13 = *(v0 + 6440);
    v14 = *(v0 + 6392);
    v15 = *(v0 + 6376);

    sub_1DAF8C380(v0 + 2256);

    v19 = 14;

    CoreODILogger.debug(_:category:)(0xD000000000000019, 0x80000001DB0C3C00, &v19);

    sub_1DAF4AC40(v10, v9);
    sub_1DAF4AC40(v12, v11);

    sub_1DAF8C320(v14, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
    sub_1DAF8C320(v13, type metadata accessor for PregeneratedAssessment);
    v16 = type metadata accessor for ODNAssessmentResult(0);
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5592));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5632));

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1DAF7D544()
{
  v1 = v0[833];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v0[838] = v2;
    v0[837] = v3;
    v4 = v0[798];

    return MEMORY[0x1EEE6DFA0](sub_1DAF7D7D8, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[834] = v5;
    *v5 = v0;
    v5[1] = sub_1DAF7D62C;

    return sub_1DAFB1344();
  }
}

uint64_t sub_1DAF7D62C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 6664);
  *(v3 + 6680) = a1;
  *(v3 + 6688) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF7D748, v4, 0);
}

uint64_t sub_1DAF7D748()
{
  v1 = v0[836];
  v2 = v0[833];
  *(v2 + 112) = v0[835];
  *(v2 + 120) = v1;

  v3 = v0[835];
  v0[838] = v0[836];
  v0[837] = v3;
  v4 = v0[798];

  return MEMORY[0x1EEE6DFA0](sub_1DAF7D7D8, v4, 0);
}

uint64_t sub_1DAF7D7D8()
{
  v82 = v0;
  v1 = *(v0 + 6424);
  v2 = *(v0 + 6408);
  v3 = sub_1DAFDD930(*(v1 + v2[15]), *(v1 + v2[15] + 8), *(v1 + v2[16]), *(v1 + v2[16] + 8));
  v78 = v4;
  v77 = sub_1DAF8B2AC(*(v1 + v2[7]), *(v1 + v2[7] + 8));

  v5 = v1[1];
  v76 = *v1;
  v6 = (v1 + v2[19]);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 24);
  v75 = v5;

  v10 = v9(v7, v8);
  v12 = v11;
  v13 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v13);
  (*(v14 + 64))(v80, v13, v14);
  if (v3)
  {
  }

  v15 = *(*(v0 + 6424) + *(*(v0 + 6408) + 52));
  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    v81 = 0;
    if (qword_1EE301DD0 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v17 = v78;
  v18 = qword_1EE309EE8;
  v79 = qword_1EE309EE0;

  sub_1DB09D0F4();
  v20 = v19;
  v21 = v19;
  result = sub_1DAF8C48C(v3, v17);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v62 = *(v0 + 6696);
  v73 = *(v0 + 6648);
  v74 = *(v0 + 6656);
  v71 = *(v0 + 6616);
  v72 = *(v0 + 6632);
  v69 = *(v0 + 6608);
  v70 = v2;
  v63 = *(v0 + 6552);
  v64 = *(v0 + 6560);
  v23 = *(v0 + 6488);
  v24 = v16;
  v25 = *(v0 + 6440);
  v61 = *(v0 + 6432);
  v67 = *(v0 + 6544);
  v68 = *(v0 + 6408);
  v65 = *(v0 + 6536);
  v66 = *(v0 + 6392);
  v26 = v10;
  v27 = *(v0 + 6376);
  v60 = *(v0 + 6496);
  sub_1DAF8C320(*(v0 + 6424), type metadata accessor for PregeneratedAssessment);
  *(v0 + 3464) = v76;
  *(v0 + 3472) = v75;
  *(v0 + 3480) = v26;
  *(v0 + 3488) = v12;
  v28 = v80[3];
  *(v0 + 3528) = v80[2];
  *(v0 + 3544) = v28;
  *(v0 + 3560) = v80[4];
  v29 = v80[1];
  *(v0 + 3496) = v80[0];
  *(v0 + 3512) = v29;
  *(v0 + 3576) = v62;
  *(v0 + 3592) = v23;
  *(v0 + 3600) = v60;
  *(v0 + 3608) = v3;
  *(v0 + 3616) = v24;
  *(v0 + 3624) = v81;
  *(v0 + 3632) = 0;
  *(v0 + 3640) = v79;
  *(v0 + 3648) = v18;
  *(v0 + 3656) = -45;
  *(v0 + 3664) = v20;
  *(v0 + 3672) = v77 & 1;
  sub_1DAF8C428(v25, v61);
  v30 = type metadata accessor for ODNAssessmentResult(0);
  sub_1DAF49ECC(v0 + 2256, v0 + 4304);
  sub_1DAF49ECC(v0 + 2392, v0 + 3896);
  sub_1DAF8BDD0(v0 + 3464, v0 + 3248);
  sub_1DB09DF34();
  sub_1DAF8C380(v0 + 2256);
  sub_1DAF8BE80(v0 + 3464);
  sub_1DAF4AC40(v63, v64);
  sub_1DAF4AC40(v65, v67);
  sub_1DAF8C320(v66, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  *v27 = *(v0 + 4984);
  v31 = *(v0 + 5048);
  v33 = *(v0 + 5000);
  v32 = *(v0 + 5016);
  *(v27 + 48) = *(v0 + 5032);
  *(v27 + 64) = v31;
  *(v27 + 16) = v33;
  *(v27 + 32) = v32;
  v35 = *(v0 + 5080);
  v34 = *(v0 + 5096);
  v36 = *(v0 + 5064);
  *(v27 + 128) = *(v0 + 5112);
  *(v27 + 96) = v35;
  *(v27 + 112) = v34;
  *(v27 + 80) = v36;
  v37 = *(v0 + 5200);
  v38 = *(v0 + 5216);
  v39 = *(v0 + 5232);
  *(v27 + 264) = *(v0 + 5248);
  *(v27 + 248) = v39;
  *(v27 + 232) = v38;
  *(v27 + 216) = v37;
  v40 = *(v0 + 5136);
  v41 = *(v0 + 5152);
  v42 = *(v0 + 5168);
  *(v27 + 200) = *(v0 + 5184);
  *(v27 + 184) = v42;
  *(v27 + 168) = v41;
  *(v27 + 152) = v40;
  *(v27 + 136) = *(v0 + 5120);
  v43 = (v61 + *(v68 + 48));
  v44 = v43[1];
  *(v27 + 272) = *v43;
  *(v27 + 280) = v44;
  v45 = (v61 + *(v68 + 24));
  v46 = v45[1];
  *(v27 + 288) = *v45;
  *(v27 + 296) = v46;
  *(v27 + 304) = 0;
  *(v27 + 312) = 0;
  v47 = *(v0 + 5744);
  v48 = *(v0 + 5728);
  *(v27 + 320) = *(v0 + 5712);
  *(v27 + 336) = v48;
  *(v27 + 352) = v47;
  *(v27 + 360) = v69;
  *(v27 + 368) = 0xE100000000000000;
  *(v27 + 376) = v71;
  *(v27 + 392) = v72;
  *(v27 + 408) = v73;
  *(v27 + 416) = v74;
  sub_1DAF3523C(v61 + v70[19], v27 + 424);

  sub_1DAF8C320(v61, type metadata accessor for PregeneratedAssessment);
  v49 = *(v0 + 3480);
  *(v27 + 464) = *(v0 + 3464);
  *(v27 + 480) = v49;
  v50 = *(v0 + 3544);
  v52 = *(v0 + 3496);
  v51 = *(v0 + 3512);
  *(v27 + 528) = *(v0 + 3528);
  *(v27 + 544) = v50;
  *(v27 + 496) = v52;
  *(v27 + 512) = v51;
  v53 = *(v0 + 3608);
  v55 = *(v0 + 3560);
  v54 = *(v0 + 3576);
  *(v27 + 592) = *(v0 + 3592);
  *(v27 + 608) = v53;
  *(v27 + 560) = v55;
  *(v27 + 576) = v54;
  v57 = *(v0 + 3640);
  v56 = *(v0 + 3656);
  v58 = *(v0 + 3624);
  *(v27 + 672) = *(v0 + 3672);
  *(v27 + 640) = v57;
  *(v27 + 656) = v56;
  *(v27 + 624) = v58;
  sub_1DAF8C320(v25, type metadata accessor for PregeneratedAssessment);
  (*(*(v30 - 8) + 56))(v27, 0, 1, v30);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5592));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5632));

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_1DAF7DDAC()
{
  v1 = *(v0 + 6384);
  sub_1DAF3523C(v0 + 64, v0 + 5552);
  sub_1DAF8B934(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7DE28, v1, 0);
}

uint64_t sub_1DAF7DE28()
{
  sub_1DAF8B8D8(*(v0 + 6384) + 400, v0 + 1200);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7DE98, 0, 0);
}

uint64_t sub_1DAF7DE98()
{
  v1 = *(v0 + 6384);
  *(v0 + 4296) = *(v0 + 1416);
  v2 = *(v0 + 1400);
  *(v0 + 4264) = *(v0 + 1384);
  *(v0 + 4280) = v2;
  v3 = *(v0 + 1336);
  *(v0 + 4200) = *(v0 + 1320);
  *(v0 + 4216) = v3;
  v4 = *(v0 + 1368);
  *(v0 + 4232) = *(v0 + 1352);
  *(v0 + 4248) = v4;
  v5 = *(v0 + 1304);
  *(v0 + 4168) = *(v0 + 1288);
  *(v0 + 4184) = v5;
  sub_1DAF40A84(v0 + 4168, v0 + 4712, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 1200);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7DF54, v1, 0);
}

uint64_t sub_1DAF7DF54()
{
  sub_1DAF8B8D8(*(v0 + 6384) + 400, v0 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7DFC4, 0, 0);
}

uint64_t sub_1DAF7DFC4()
{
  v1 = *(v0 + 992);
  *(v0 + 4112) = *(v0 + 1008);
  *(v0 + 4128) = *(v0 + 1024);
  *(v0 + 4144) = *(v0 + 1040);
  v2 = *(v0 + 928);
  *(v0 + 4048) = *(v0 + 944);
  v3 = *(v0 + 976);
  *(v0 + 4064) = *(v0 + 960);
  *(v0 + 4080) = v3;
  *(v0 + 4096) = v1;
  v4 = *(v0 + 6376);
  *(v0 + 4160) = *(v0 + 1056);
  *(v0 + 4032) = v2;
  sub_1DAF40A84(v0 + 4032, v0 + 4848, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 608);
  sub_1DAF3523C(v0 + 5552, v4 + 424);
  v5 = swift_task_alloc();
  *(v0 + 6744) = v5;
  *v5 = v0;
  v5[1] = sub_1DAF7E0DC;
  v6 = *(v0 + 605);

  return sub_1DAF8AD6C(v0 + 3680, 0, v6);
}

uint64_t sub_1DAF7E0DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF7E1D8, 0, 0);
}

uint64_t sub_1DAF7E1D8()
{
  v1 = *(v0 + 6736);
  v2 = *(v0 + 6728);
  v3 = *(v0 + 604);
  v4 = *(v0 + 6384);
  v5 = *(v0 + 6712);
  v6 = *(v0 + 6376);
  v7 = *(v0 + 4232);
  v9 = *(v0 + 4184);
  v8 = *(v0 + 4200);
  *(v6 + 48) = *(v0 + 4216);
  *(v6 + 64) = v7;
  *(v6 + 16) = v9;
  *(v6 + 32) = v8;
  v11 = *(v0 + 4264);
  v10 = *(v0 + 4280);
  v12 = *(v0 + 4248);
  *(v6 + 128) = *(v0 + 4296);
  *(v6 + 96) = v11;
  *(v6 + 112) = v10;
  *(v6 + 80) = v12;
  *v6 = *(v0 + 4168);
  *(v6 + 136) = *(v0 + 4032);
  v13 = *(v0 + 4048);
  v14 = *(v0 + 4064);
  v15 = *(v0 + 4080);
  *(v6 + 200) = *(v0 + 4096);
  *(v6 + 184) = v15;
  *(v6 + 168) = v14;
  *(v6 + 152) = v13;
  v16 = *(v0 + 4112);
  v17 = *(v0 + 4128);
  v18 = *(v0 + 4144);
  *(v6 + 264) = *(v0 + 4160);
  *(v6 + 248) = v18;
  *(v6 + 232) = v17;
  *(v6 + 216) = v16;
  *(v6 + 272) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = v5;
  *(v6 + 336) = v3;
  *(v6 + 344) = v2;
  *(v6 + 352) = v1;
  *(v6 + 392) = 0u;
  *(v6 + 408) = 0u;
  *(v6 + 360) = 0u;
  *(v6 + 376) = 0u;
  v19 = *(v0 + 3696);
  *(v6 + 464) = *(v0 + 3680);
  *(v6 + 480) = v19;
  v20 = *(v0 + 3712);
  v21 = *(v0 + 3728);
  v22 = *(v0 + 3760);
  *(v6 + 528) = *(v0 + 3744);
  *(v6 + 544) = v22;
  *(v6 + 496) = v20;
  *(v6 + 512) = v21;
  v23 = *(v0 + 3776);
  v24 = *(v0 + 3792);
  v25 = *(v0 + 3824);
  *(v6 + 592) = *(v0 + 3808);
  *(v6 + 608) = v25;
  *(v6 + 560) = v23;
  *(v6 + 576) = v24;
  v26 = *(v0 + 3840);
  v27 = *(v0 + 3856);
  v28 = *(v0 + 3872);
  *(v6 + 672) = *(v0 + 3888);
  *(v6 + 640) = v27;
  *(v6 + 656) = v28;
  *(v6 + 624) = v26;
  *(v0 + 6752) = type metadata accessor for ODNAssessmentResult(0);
  sub_1DB09DF34();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5552));

  return MEMORY[0x1EEE6DFA0](sub_1DAF7E378, v4, 0);
}

uint64_t sub_1DAF7E378()
{
  v1 = v0[844];
  v2 = v0[797];
  sub_1DAF8C320(v0[805], type metadata accessor for PregeneratedAssessment);
  (*(*(v1 - 8) + 56))(v2, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 704);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1DAF7E478(uint64_t a1, uint64_t a2)
{
  *(v3 + 5040) = v2;
  *(v3 + 5032) = a1;
  v5 = sub_1DB09D154();
  *(v3 + 5048) = v5;
  *(v3 + 5056) = *(v5 - 8);
  *(v3 + 5064) = swift_task_alloc();
  sub_1DB09D344();
  *(v3 + 5072) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  *(v3 + 5080) = swift_task_alloc();
  *(v3 + 5088) = type metadata accessor for ODISignpost(0);
  *(v3 + 5096) = swift_task_alloc();
  *(v3 + 5104) = swift_task_alloc();
  v6 = sub_1DB09D734();
  *(v3 + 5112) = v6;
  *(v3 + 5120) = *(v6 - 8);
  *(v3 + 5128) = swift_task_alloc();
  v7 = sub_1DB09D1D4();
  *(v3 + 5136) = v7;
  *(v3 + 5144) = *(v7 - 8);
  *(v3 + 5152) = swift_task_alloc();
  v8 = *(a2 + 16);
  *(v3 + 4696) = *a2;
  *(v3 + 4712) = v8;
  *(v3 + 4728) = *(a2 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7E6B8, v2, 0);
}

uint64_t sub_1DAF7E6B8()
{
  v5 = v0;
  v1 = *(v0 + 5040);
  v4 = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000018, 0x80000001DB0C35E0, &v4);

  *(v0 + 1668) = MKBGetDeviceLockState();
  swift_beginAccess();
  *(v1 + 952) = 1;
  *(v0 + 5160) = *(v1 + 432);
  *(v0 + 5168) = *(v1 + 440);
  *(v0 + 5176) = *(v1 + 192);

  v2 = swift_task_alloc();
  *(v0 + 5184) = v2;
  *v2 = v0;
  v2[1] = sub_1DAF7E7F0;

  return sub_1DAFA41D8(v0 + 4656);
}

uint64_t sub_1DAF7E7F0()
{
  v2 = *v1;
  *(*v1 + 5192) = v0;

  if (v0)
  {
    v3 = *(v2 + 5040);

    v4 = sub_1DAF7EB80;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 5040);
    v4 = sub_1DAF7E918;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DAF7E918()
{
  *(v0 + 1667) = *(v0 + 4696);
  v1 = *(v0 + 4680);
  v2 = *(v0 + 4688);
  __swift_project_boxed_opaque_existential_1((v0 + 4656), v1);
  v5 = (*(v2 + 56) + **(v2 + 56));
  v3 = swift_task_alloc();
  *(v0 + 5200) = v3;
  *v3 = v0;
  v3[1] = sub_1DAF7EA58;

  return v5(v0 + 3032, v1, v2);
}

uint64_t sub_1DAF7EA58()
{
  v2 = *v1;
  *(*v1 + 5208) = v0;

  if (v0)
  {
    v3 = *(v2 + 5040);

    v4 = sub_1DAF85834;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 5040);
    v4 = sub_1DAF7EC44;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1DAF7EB80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF7EC44()
{
  v1 = *(v0 + 3096);
  *(v0 + 3248) = *(v0 + 3112);
  v2 = *(v0 + 3112);
  *(v0 + 3264) = *(v0 + 3128);
  v3 = *(v0 + 3128);
  *(v0 + 3280) = *(v0 + 3144);
  v4 = *(v0 + 3032);
  *(v0 + 3184) = *(v0 + 3048);
  v5 = *(v0 + 3048);
  *(v0 + 3200) = *(v0 + 3064);
  v6 = *(v0 + 3064);
  *(v0 + 3216) = *(v0 + 3080);
  v7 = *(v0 + 3080);
  *(v0 + 3232) = *(v0 + 3096);
  *(v0 + 3168) = *(v0 + 3032);
  v8 = *(v0 + 3144);
  *(v0 + 3400) = v3;
  *(v0 + 3416) = v8;
  *(v0 + 3336) = v6;
  *(v0 + 3352) = v7;
  *(v0 + 3368) = v1;
  *(v0 + 3384) = v2;
  v9 = *(v0 + 1667);
  *(v0 + 3296) = *(v0 + 3160);
  *(v0 + 1665) = ((v9 != 2) ^ v9) & 1;
  *(v0 + 3432) = *(v0 + 3160);
  *(v0 + 3304) = v4;
  *(v0 + 3320) = v5;
  v10 = swift_task_alloc();
  *(v0 + 5216) = v10;
  *v10 = v0;
  v10[1] = sub_1DAF7ED74;

  return sub_1DAF883EC(v0 + 4656, (v0 + 1665), v0 + 3304);
}

uint64_t sub_1DAF7ED74()
{
  v1 = *(*v0 + 5040);

  return MEMORY[0x1EEE6DFA0](sub_1DAF7EE84, v1, 0);
}

uint64_t sub_1DAF7EE84()
{
  v233 = v0;
  v1 = *(v0 + 3248);
  v2 = ((*(v0 + 1667) != 2) ^ *(v0 + 1667)) & 1;
  v3 = *(v0 + 3280);
  v229[6] = *(v0 + 3264);
  v229[7] = v3;
  v230 = *(v0 + 3296);
  v4 = *(v0 + 3184);
  v5 = *(v0 + 3216);
  v229[2] = *(v0 + 3200);
  v229[3] = v5;
  v229[4] = *(v0 + 3232);
  v229[5] = v1;
  v229[0] = *(v0 + 3168);
  v229[1] = v4;
  sub_1DAF88798(v0 + 4656, v229);
  v6 = *(v0 + 4680);
  v7 = *(v0 + 4688);
  __swift_project_boxed_opaque_existential_1((v0 + 4656), v6);
  LOBYTE(v231) = v2;
  (*(v7 + 40))(v229, &v231, v6, v7);
  if ((*(&v229[0] + 1) & 0x2000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v8 = *(&v229[0] + 1) >> 62;
  if ((*(&v229[0] + 1) >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v9 = *(*&v229[0] + 16);
    v10 = *(*&v229[0] + 24);
LABEL_9:
    if (v9 != v10)
    {
      goto LABEL_11;
    }

LABEL_10:
    v11 = v229[0];
    sub_1DAF8BA14(v0 + 3168);

    sub_1DAF8BF28();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    sub_1DAF60AF4(v11, *(&v11 + 1));
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));

    v47 = *(v0 + 8);

    return v47();
  }

  if (v8)
  {
    v9 = SLODWORD(v229[0]);
    v10 = *&v229[0] >> 32;
    goto LABEL_9;
  }

  if ((*(&v229[0] + 1) & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1DAF60AF4(*&v229[0], *(&v229[0] + 1));
  v13 = *(v0 + 4680);
  v14 = *(v0 + 4688);
  __swift_project_boxed_opaque_existential_1((v0 + 4656), v13);
  v15 = (*(v14 + 24))(v13, v14);
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(v15 + 16);
      v20 = *(v15 + 24);
      sub_1DAF40780(v15, v16);
      if (v19 == v20)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    sub_1DAF40780(v15, v16);
LABEL_24:
    sub_1DAF8BA14(v0 + 3168);

    sub_1DAF8BF28();
    swift_allocError();
    *v46 = 1;
    swift_willThrow();
    goto LABEL_25;
  }

  if (v17)
  {
    v21 = v15;
    sub_1DAF40780(v15, v16);
    if (v21 != v21 >> 32)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  v18 = v16;
  sub_1DAF40780(v15, v16);
  if ((v18 & 0xFF000000000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  v22 = *(v0 + 5040);
  v23 = ((*(v0 + 1667) != 2) ^ *(v0 + 1667)) & 1;
  v24 = *(v0 + 4680);
  v25 = *(v0 + 4688);
  __swift_project_boxed_opaque_existential_1((v0 + 4656), v24);
  LOBYTE(v229[0]) = v23;
  (*(v25 + 48))(v229, v24, v25);
  *(v0 + 2080) = *(v22 + 488);
  v26 = *(v22 + 504);
  v27 = *(v22 + 520);
  v28 = *(v22 + 552);
  *(v0 + 2128) = *(v22 + 536);
  *(v0 + 2144) = v28;
  *(v0 + 2096) = v26;
  *(v0 + 2112) = v27;
  v29 = *(v22 + 568);
  v30 = *(v22 + 584);
  v31 = *(v22 + 600);
  *(v0 + 2208) = *(v22 + 616);
  *(v0 + 2176) = v30;
  *(v0 + 2192) = v31;
  *(v0 + 2160) = v29;
  v32 = *(v22 + 632);
  v33 = *(v22 + 648);
  v34 = *(v22 + 712);
  v35 = *(v22 + 784);
  v37 = *(v22 + 736);
  v36 = *(v22 + 752);
  *(v0 + 2264) = *(v22 + 768);
  *(v0 + 2280) = v35;
  *(v0 + 2232) = v37;
  *(v0 + 2248) = v36;
  v39 = *(v22 + 816);
  v38 = *(v22 + 832);
  v40 = *(v22 + 800);
  *(v0 + 2344) = *(v22 + 848);
  *(v0 + 2312) = v39;
  *(v0 + 2328) = v38;
  *(v0 + 2296) = v40;
  *(v0 + 2216) = *(v22 + 720);
  v41 = *(v22 + 864);
  v42 = *(v22 + 880);
  v43 = *(v22 + 944);
  if (sub_1DAF8B9A8(v0 + 2080) != 1)
  {
    v48 = *(v0 + 2328);
    *(v0 + 2448) = *(v0 + 2312);
    *(v0 + 2464) = v48;
    *(v0 + 2480) = *(v0 + 2344);
    v49 = *(v0 + 2264);
    *(v0 + 2384) = *(v0 + 2248);
    *(v0 + 2400) = v49;
    v50 = *(v0 + 2296);
    *(v0 + 2416) = *(v0 + 2280);
    *(v0 + 2432) = v50;
    v51 = *(v0 + 2232);
    *(v0 + 2352) = *(v0 + 2216);
    *(v0 + 2368) = v51;
    if (sub_1DAF8B9A8(v0 + 2352) != 1 && v33 && v42 && v32 && v41 && v34 >> 60 != 15 && v43 >> 60 != 15)
    {
      v52 = (v0 + 3656);
      v53 = (v0 + 4104);
      v214 = *(v0 + 5208);
      v54 = *(v0 + 5040);
      *(v0 + 2896) = *(v54 + 488);
      v55 = *(v54 + 552);
      v57 = *(v54 + 504);
      v56 = *(v54 + 520);
      *(v0 + 2944) = *(v54 + 536);
      *(v0 + 2960) = v55;
      *(v0 + 2912) = v57;
      *(v0 + 2928) = v56;
      v59 = *(v54 + 584);
      v58 = *(v54 + 600);
      v60 = *(v54 + 568);
      *(v0 + 3024) = *(v54 + 616);
      *(v0 + 2992) = v59;
      *(v0 + 3008) = v58;
      *(v0 + 2976) = v60;
      v61 = *(v54 + 704);
      *(v0 + 5264) = v61;
      v62 = *(v54 + 712);
      *(v0 + 5272) = v62;
      v208 = *(v54 + 624);
      v63 = *(v54 + 632);
      v64 = *(v54 + 688);
      v66 = *(v54 + 640);
      v65 = *(v54 + 656);
      *(v0 + 3752) = *(v54 + 672);
      *(v0 + 3768) = v64;
      *(v0 + 3720) = v66;
      *(v0 + 3736) = v65;
      v222 = v61;
      v225 = v0 + 2896;
      v226 = v63;
      if (*(v0 + 3728))
      {
        v67 = *(v54 + 640);
        v68 = *(v54 + 656);
        v69 = *(v54 + 688);
        *(v0 + 4136) = *(v54 + 672);
        *(v0 + 4152) = v69;
        *v53 = v67;
        *(v0 + 4120) = v68;
      }

      else
      {
        *(v0 + 1672) = *(v54 + 488);
        v70 = *(v54 + 504);
        v71 = *(v54 + 520);
        v72 = *(v54 + 552);
        *(v0 + 1720) = *(v54 + 536);
        *(v0 + 1736) = v72;
        *(v0 + 1688) = v70;
        *(v0 + 1704) = v71;
        v73 = *(v54 + 568);
        v74 = *(v54 + 584);
        v75 = *(v54 + 600);
        *(v0 + 1800) = *(v54 + 616);
        *(v0 + 1768) = v74;
        *(v0 + 1784) = v75;
        *(v0 + 1752) = v73;
        if (sub_1DAF8B9A8(v0 + 1672) == 1)
        {
          *(v0 + 4136) = 0u;
          *(v0 + 4152) = 0u;
          *v53 = 0u;
          *(v0 + 4120) = 0u;
        }

        else
        {
          v76 = *(v0 + 1744);
          v77 = *(v0 + 1752);
          v78 = *(v0 + 1760);
          v79 = *(v0 + 1768);
          v80 = *(v0 + 1776);
          v81 = *(v0 + 1784);
          *(v0 + 4104) = *(v0 + 1672) + 49;
          *(v0 + 4112) = 0xE100000000000000;
          *(v0 + 4120) = v76;
          *(v0 + 4128) = v77;
          *(v0 + 4136) = v78;
          *(v0 + 4144) = v79;
          *(v0 + 4152) = v80;
          *(v0 + 4160) = v81;
        }

        v52 = (v0 + 3656);
      }

      v82 = (v0 + 3784);
      v83 = *(v0 + 5040);
      v84 = *(v0 + 4120);
      *(v0 + 3976) = *v53;
      *(v0 + 3992) = v84;
      v85 = *(v0 + 4152);
      *(v0 + 4008) = *(v0 + 4136);
      *(v0 + 4024) = v85;
      *(v0 + 2760) = *(v83 + 720);
      v86 = *(v83 + 784);
      v88 = *(v83 + 736);
      v87 = *(v83 + 752);
      *(v0 + 2808) = *(v83 + 768);
      *(v0 + 2824) = v86;
      *(v0 + 2776) = v88;
      *(v0 + 2792) = v87;
      v90 = *(v83 + 816);
      v89 = *(v83 + 832);
      v91 = *(v83 + 800);
      *(v0 + 2888) = *(v83 + 848);
      *(v0 + 2856) = v90;
      *(v0 + 2872) = v89;
      *(v0 + 2840) = v91;
      v92 = *(v83 + 872);
      v93 = *(v83 + 888);
      v94 = *(v83 + 920);
      v52[2] = *(v83 + 904);
      v52[3] = v94;
      *v52 = v92;
      v52[1] = v93;
      v217 = (v0 + 4232);
      v218 = v0 + 2760;
      if (*(v0 + 3664))
      {
        v95 = *(v83 + 872);
        v96 = *(v83 + 888);
        v97 = *(v83 + 920);
        *(v0 + 3816) = *(v83 + 904);
        *(v0 + 3832) = v97;
        *(v0 + 3800) = v96;
      }

      else
      {
        *(v0 + 2624) = *(v83 + 720);
        v98 = *(v83 + 736);
        v99 = *(v83 + 752);
        v100 = *(v83 + 784);
        *(v0 + 2672) = *(v83 + 768);
        *(v0 + 2688) = v100;
        *(v0 + 2640) = v98;
        *(v0 + 2656) = v99;
        v101 = *(v83 + 800);
        v102 = *(v83 + 816);
        v103 = *(v83 + 832);
        *(v0 + 2752) = *(v83 + 848);
        *(v0 + 2720) = v102;
        *(v0 + 2736) = v103;
        *(v0 + 2704) = v101;
        if (sub_1DAF8B9A8(v0 + 2624) != 1)
        {
          v136 = *(v0 + 2696);
          v137 = *(v0 + 2704);
          v138 = *(v0 + 2712);
          v139 = *(v0 + 2720);
          v140 = *(v0 + 2728);
          v141 = *(v0 + 2736);
          *(v0 + 3784) = *(v0 + 2624) + 49;
          *(v0 + 3792) = 0xE100000000000000;
          *(v0 + 3800) = v136;
          *(v0 + 3808) = v137;
          *(v0 + 3816) = v138;
          *(v0 + 3824) = v139;
          *(v0 + 3832) = v140;
          *(v0 + 3840) = v141;

          v82 = (v0 + 3784);

LABEL_46:
          v209 = v82;
          v104 = *(v0 + 5040);
          v105 = v82[1];
          *(v0 + 3912) = *v82;
          *(v0 + 3928) = v105;
          v106 = v82[3];
          *(v0 + 3944) = v82[2];
          *(v0 + 3960) = v106;
          v210 = v104[107];
          v107 = v104[108];
          v108 = v104[31];
          v109 = *(v108 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession);
          sub_1DAF3523C(v108 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger, v0 + 4416);
          v110 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());
          v111 = &v110[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT];
          *v111 = 0x726F5F646E65732FLL;
          *(v111 + 1) = 0xE900000000000064;
          v112 = &v110[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT];
          *v112 = 0x746F5F646E65732FLL;
          *(v112 + 1) = 0xE900000000000064;
          sub_1DAF3523C(v0 + 4416, v0 + 4456);
          sub_1DAF40A84(v225, v0 + 2488, &qword_1ECC0E798, &qword_1DB0A5120);
          sub_1DAF4ED88(v222, v62);

          v216 = v62;
          sub_1DAF40A84(v0 + 3720, v0 + 3592, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
          v113 = v109;
          sub_1DAF40A84(v0 + 3656, v0 + 3848, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

          sub_1DAF40A84(v218, v0 + 1944, &qword_1ECC0E798, &qword_1DB0A5120);
          v114 = sub_1DB016E04(v113, (v0 + 4456));

          __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4416));
          v115 = v104[31];
          v104[31] = v114;

          sub_1DB09D1C4();
          v116 = sub_1DB09D174();
          v118 = v117;
          v119 = sub_1DB09D174();
          *(v0 + 4232) = v116;
          *(v0 + 4240) = v118;
          *(v0 + 4248) = v119;
          *(v0 + 4256) = v120;
          *(v0 + 4264) = v210;
          *(v0 + 4272) = v107;
          v121 = v104[22];
          v231 = v104[21];
          v232 = v121;
          *&v229[0] = 0;
          *(&v229[0] + 1) = 0xE000000000000000;

          sub_1DB09DE44();

          *&v229[0] = 0x737420676E697375;
          *(&v229[0] + 1) = 0xEB00000000206469;
          v122 = sub_1DB09D174();
          MEMORY[0x1E127FE90](v122);

          MEMORY[0x1E127FE90](0x20646975677420, 0xE700000000000000);
          if (v107)
          {
            v123 = v210;
          }

          else
          {
            v123 = 0x3E6C696E3CLL;
          }

          if (v107)
          {
            v124 = v107;
          }

          else
          {
            v124 = 0xE500000000000000;
          }

          MEMORY[0x1E127FE90](v123, v124);

          v125 = *&v229[0];
          LOBYTE(v229[0]) = 8;
          CoreODILogger.debug(_:category:)(v125, *(&v229[0] + 1), v229);

          sub_1DB09CC54();
          swift_allocObject();
          sub_1DB09CC44();
          v126 = (v0 + 4232);
          v127 = *(v0 + 4248);
          *(v0 + 4280) = *v217;
          *(v0 + 4296) = v127;
          *(v0 + 4312) = *(v0 + 4264);
          sub_1DAF8B9C0();
          v128 = sub_1DB09CC34();
          *(v0 + 5280) = v128;
          *(v0 + 5288) = v129;
          if (v214)
          {
            (*(*(v0 + 5144) + 8))(*(v0 + 5152), *(v0 + 5136));

            sub_1DAF4AC40(v222, v62);
            sub_1DAF40AEC(v225, &qword_1ECC0E798, &qword_1DB0A5120);

            sub_1DAF40AEC(v0 + 4104, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
            sub_1DAF40AEC(v218, &qword_1ECC0E798, &qword_1DB0A5120);
            sub_1DAF40AEC(v209, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

            sub_1DAF8BA14(v0 + 3168);
            sub_1DAF8BA68(v217);
            __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4536));
            goto LABEL_25;
          }

          v130 = v128;
          v131 = v129;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E750, &qword_1DB0A5150);
          v132 = swift_allocObject();
          v133 = v131;
          *(v132 + 16) = xmmword_1DB0A04E0;
          *(v132 + 32) = v130;
          *(v132 + 40) = v131;
          v220 = v132;
          v215 = v131;
          if (*(v0 + 3176))
          {
            v134 = *(v0 + 3224);
            v135 = *(v0 + 3216);
            sub_1DAF40674(v130, v133);
            sub_1DAF40A84(v0 + 3168, v0 + 4040, &qword_1ECC0E7C0, &qword_1DB0A51B0);
            sub_1DAF8BA14(v0 + 3168);

            sub_1DAF40AEC(v0 + 3168, &qword_1ECC0E7C0, &qword_1DB0A51B0);
          }

          else
          {
            sub_1DAF40674(v130, v131);
            sub_1DAF8BA14(v0 + 3168);
            v135 = 0;
            v134 = 0;
          }

          if (v226)
          {
            v142 = v208;
          }

          else
          {
            v142 = 0;
          }

          if (v226)
          {
            v143 = v226;
          }

          else
          {
            v143 = 0xE000000000000000;
          }

          v144 = *(v0 + 4232);
          *(v0 + 5296) = v144;
          v145 = *(v0 + 4240);
          *(v0 + 5304) = v145;
          sub_1DAFDE06C(v135, v134, v144, v145, v142, v143);
          *(v0 + 5312) = v146;
          *(v0 + 5320) = v147;
          v227 = v147;
          v148 = v146;

          v213 = v148;
          v223 = (v0 + 4696);
          if (v148 && *(v148 + 24))
          {
            v149 = *(v0 + 5128);
            v150 = *(v0 + 5120);
            v151 = *(v0 + 5112);

            sub_1DB09D714();
            v219 = sub_1DB09D6D4();
            v153 = v152;

            v154 = *(v150 + 8);
            v154(v149, v151);
            if (v153 >> 60 == 15)
            {
              v126 = (v0 + 4232);
            }

            else
            {
              v126 = (v0 + 4232);
              if (v227 && *(v227 + 24))
              {
                v155 = *(v0 + 5128);
                v211 = *(v0 + 5112);

                sub_1DB09D714();
                v212 = sub_1DB09D6D4();
                v157 = v156;

                v154(v155, v211);
                if (v157 >> 60 != 15)
                {
                  v193 = v157;
                  sub_1DAF40674(v130, v215);
                  v194 = v220;
                  v196 = *(v220 + 16);
                  v195 = *(v220 + 24);
                  v197 = v196 + 1;
                  v159 = (v0 + 3912);
                  v158 = (v0 + 3976);
                  if (v196 >= v195 >> 1)
                  {
                    v194 = sub_1DAF735C8((v195 > 1), v196 + 1, 1, v220);
                  }

                  *(v194 + 2) = v197;
                  v198 = &v194[16 * v196];
                  *(v198 + 4) = v130;
                  *(v198 + 5) = v215;
                  v199 = v194;
                  sub_1DAF40674(v212, v193);
                  v200 = v199;
                  v201 = *(v199 + 3);
                  if ((v196 + 2) > (v201 >> 1))
                  {
                    v200 = sub_1DAF735C8((v201 > 1), v196 + 2, 1, v199);
                  }

                  v202 = *(v0 + 5040);
                  *(v200 + 2) = v196 + 2;
                  v220 = v200;
                  v203 = &v200[16 * v197];
                  *(v203 + 4) = v212;
                  *(v203 + 5) = v193;
                  v204 = *(v202 + 176);
                  v231 = *(v202 + 168);
                  v232 = v204;
                  *&v229[0] = 0;
                  *(&v229[0] + 1) = 0xE000000000000000;

                  sub_1DB09DE44();

                  *&v229[0] = 0x6469737420726F66;
                  *(&v229[0] + 1) = 0xE900000000000020;
                  v205 = sub_1DB09D174();
                  MEMORY[0x1E127FE90](v205);

                  MEMORY[0x1E127FE90](0x44495354636E6520, 0xEE00203A61746144);
                  v206 = sub_1DB09D014();
                  MEMORY[0x1E127FE90](v206);

                  v207 = *&v229[0];
                  LOBYTE(v229[0]) = 8;
                  CoreODILogger.debug(_:category:)(v207, *(&v229[0] + 1), v229);
                  sub_1DAF4AC40(v219, v153);

                  sub_1DAF4AC40(v212, v193);

                  v126 = (v0 + 4232);
                  goto LABEL_74;
                }

                sub_1DAF4AC40(v219, v153);
                v126 = (v0 + 4232);
              }

              else
              {
                sub_1DAF4AC40(v219, v153);
              }
            }
          }

          v159 = (v0 + 3912);
          v158 = (v0 + 3976);
LABEL_74:
          *(v0 + 5328) = v220;
          v160 = *(v0 + 5040);
          v161 = (*(v0 + 1668) - 1) < 2;
          sub_1DAF3523C(v0 + 4536, v0 + 4576);
          v162 = swift_allocObject();
          *(v0 + 5336) = v162;
          *(v162 + 16) = v160;
          sub_1DAF332B8((v0 + 4576), v162 + 24);
          *(v162 + 64) = v161;
          v163 = v158[1];
          *(v162 + 72) = *v158;
          *(v162 + 88) = v163;
          v164 = v158[3];
          *(v162 + 104) = v158[2];
          *(v162 + 120) = v164;
          v165 = v159[1];
          *(v162 + 136) = *v159;
          *(v162 + 152) = v165;
          v166 = v159[3];
          *(v162 + 168) = v159[2];
          *(v162 + 184) = v166;
          v167 = *v126;
          v168 = v126[1];
          *(v162 + 232) = v126[2];
          *(v162 + 216) = v168;
          *(v162 + 200) = v167;
          *(v162 + 248) = v213;
          *(v162 + 256) = v227;
          v169 = *(v0 + 4712);
          *(v162 + 264) = *v223;
          *(v162 + 280) = v169;
          *(v162 + 296) = *(v0 + 4728);
          v170 = *(v0 + 5040);
          if (v216 >> 60 == 15)
          {

            sub_1DAF8BBB4(v223, v0 + 4736);

            v171 = *(v170 + 176);
            *&v229[0] = *(v170 + 168);
            *(&v229[0] + 1) = v171;
            LOBYTE(v231) = 8;

            CoreODILogger.error(_:category:)(0xD00000000000002FLL, 0x80000001DB0C3600, &v231);

            if (qword_1EE300B90 != -1)
            {
              swift_once();
            }

            v172 = MEMORY[0x1E69E7CC0];
            v173 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
            if (*(v173 + 16))
            {
              v174 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
              if (v175)
              {
                sub_1DAF409DC(*(v173 + 56) + 32 * v174, v0 + 4880);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
                if (swift_dynamicCast())
                {
                  v172 = *(v0 + 5008);
                }
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v172 = sub_1DAF72FF4(0, *(v172 + 2) + 1, 1, v172);
            }

            v177 = *(v172 + 2);
            v176 = *(v172 + 3);
            if (v177 >= v176 >> 1)
            {
              v172 = sub_1DAF72FF4((v176 > 1), v177 + 1, 1, v172);
            }

            v178 = *(v0 + 5168);
            v228 = *(v0 + 1668);
            v221 = *(v0 + 5160);
            v224 = *(v0 + 5032);
            *(v172 + 2) = v177 + 1;
            v179 = &v172[56 * v177];
            *(v179 + 4) = 0;
            *(v179 + 5) = 0xE000000000000000;
            *(v179 + 6) = 0xD00000000000002DLL;
            *(v179 + 7) = 0x80000001DB0C3590;
            *(v179 + 8) = 0xD00000000000001CLL;
            *(v179 + 9) = 0x80000001DB0C3630;
            *(v179 + 10) = 502;
            *(v0 + 4840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
            *(v0 + 4816) = v172;
            sub_1DAF40D20((v0 + 4816), (v0 + 4848));
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v229[0] = v173;
            sub_1DAF3B11C((v0 + 4848), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
            v181 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
            v182 = sub_1DB09D6B4();
            v183 = sub_1DB09D604();
            v184 = [v181 initWithDomain:v182 code:-3300 userInfo:v183];
            *(v0 + 5568) = v184;

            sub_1DB041E04(v184, v221, v178, v0 + 4616);
            *(v0 + 5576) = *(v0 + 4616);
            *(v0 + 5584) = *(v0 + 4624);
            *(v0 + 3161) = *(v0 + 4632);
            *(v0 + 5592) = *(v0 + 4640);
            *(v0 + 4992) = *(v0 + 4640);
            sub_1DAF40A84(v0 + 4992, v0 + 4976, &unk_1ECC0EAE0, &unk_1DB0A4650);

            sub_1DAF3523C(v0 + 4536, v224 + 424);
            v185 = swift_task_alloc();
            *(v0 + 5608) = v185;
            *v185 = v0;
            v185[1] = sub_1DAF854B4;

            return sub_1DAF8AD6C(v0 + 1456, 0, (v228 - 1) < 2);
          }

          else
          {

            sub_1DAF8BC10(v126, v0 + 4328);

            sub_1DAF8BBB4(v223, v0 + 4776);
            if (qword_1EE301828 != -1)
            {
              swift_once();
            }

            v186 = ((*(v0 + 1667) != 2) ^ *(v0 + 1667)) & 1;
            v187 = qword_1EE301830;
            *(v0 + 5344) = qword_1EE301830;
            v188 = *(v0 + 4680);
            v189 = *(v0 + 4688);
            __swift_project_boxed_opaque_existential_1((v0 + 4656), v188);
            LOBYTE(v229[0]) = v186;
            (*(v189 + 40))(v229, v188, v189);
            *(v0 + 5352) = *(v0 + 4960);
            v190 = *(v0 + 4680);
            v191 = *(v0 + 4688);
            __swift_project_boxed_opaque_existential_1((v0 + 4656), v190);
            *(v0 + 5368) = (*(v191 + 24))(v190, v191);
            *(v0 + 5376) = v192;
            *(v0 + 5024) = *(v0 + 4704);
            *(v0 + 5384) = *(v0 + 4712);
            *(v0 + 5392) = *(v0 + 4720);
            *(v0 + 1666) = *(v0 + 4728);
            sub_1DAF8BC6C(v0 + 5024, v0 + 5016);

            return MEMORY[0x1EEE6DFA0](sub_1DAF83098, v187, 0);
          }
        }

        v95 = 0uLL;
        *(v0 + 3816) = 0u;
        *(v0 + 3832) = 0u;
        *(v0 + 3800) = 0u;
      }

      *v82 = v95;
      goto LABEL_46;
    }
  }

  v44 = swift_task_alloc();
  *(v0 + 5224) = v44;
  *v44 = v0;
  v44[1] = sub_1DAF80530;

  return sub_1DAF79240(v0 + 4376);
}

uint64_t sub_1DAF80530()
{
  v1 = *(*v0 + 5040);

  return MEMORY[0x1EEE6DFA0](sub_1DAF80640, v1, 0);
}

uint64_t sub_1DAF80640()
{
  v183 = v0;
  if (*(v0 + 4400))
  {
    v1 = *(v0 + 5176);
    sub_1DAF332B8((v0 + 4376), v0 + 4496);
    v2 = sub_1DAF81934;
    v3 = v1;
LABEL_3:

    return MEMORY[0x1EEE6DFA0](v2, v3, 0);
  }

  v171 = (v0 + 3656);
  v4 = (v0 + 4104);
  sub_1DAF40AEC(v0 + 4376, &qword_1ECC0E7A0, &unk_1DB0A5140);
  v163 = *(v0 + 5208);
  v5 = *(v0 + 5040);
  *(v0 + 2896) = *(v5 + 488);
  v6 = *(v5 + 552);
  v8 = *(v5 + 504);
  v7 = *(v5 + 520);
  *(v0 + 2944) = *(v5 + 536);
  *(v0 + 2960) = v6;
  *(v0 + 2912) = v8;
  *(v0 + 2928) = v7;
  v10 = *(v5 + 584);
  v9 = *(v5 + 600);
  v11 = *(v5 + 568);
  *(v0 + 3024) = *(v5 + 616);
  *(v0 + 2992) = v10;
  *(v0 + 3008) = v9;
  *(v0 + 2976) = v11;
  v12 = *(v5 + 704);
  *(v0 + 5264) = v12;
  v177 = *(v5 + 712);
  *(v0 + 5272) = v177;
  v160 = *(v5 + 624);
  v13 = *(v5 + 632);
  v14 = *(v5 + 640);
  v15 = *(v5 + 656);
  v16 = *(v5 + 688);
  *(v0 + 3752) = *(v5 + 672);
  *(v0 + 3768) = v16;
  *(v0 + 3720) = v14;
  *(v0 + 3736) = v15;
  v169 = v12;
  v170 = v0 + 2896;
  v174 = v13;
  if (*(v0 + 3728))
  {
    v17 = *(v5 + 640);
    v18 = *(v5 + 656);
    v19 = *(v5 + 688);
    *(v0 + 4136) = *(v5 + 672);
    *(v0 + 4152) = v19;
    *(v0 + 4120) = v18;
LABEL_10:
    *v4 = v17;
    goto LABEL_11;
  }

  *(v0 + 1672) = *(v5 + 488);
  v20 = *(v5 + 504);
  v21 = *(v5 + 520);
  v22 = *(v5 + 552);
  *(v0 + 1720) = *(v5 + 536);
  *(v0 + 1736) = v22;
  *(v0 + 1688) = v20;
  *(v0 + 1704) = v21;
  v23 = *(v5 + 568);
  v24 = *(v5 + 584);
  v25 = *(v5 + 600);
  *(v0 + 1800) = *(v5 + 616);
  *(v0 + 1768) = v24;
  *(v0 + 1784) = v25;
  *(v0 + 1752) = v23;
  if (sub_1DAF8B9A8(v0 + 1672) == 1)
  {
    v17 = 0uLL;
    *(v0 + 4136) = 0u;
    *(v0 + 4152) = 0u;
    *(v0 + 4120) = 0u;
    goto LABEL_10;
  }

  v80 = *(v0 + 1744);
  v81 = *(v0 + 1752);
  v82 = *(v0 + 1760);
  v83 = *(v0 + 1768);
  v84 = *(v0 + 1776);
  v85 = *(v0 + 1784);
  *(v0 + 4104) = *(v0 + 1672) + 49;
  *(v0 + 4112) = 0xE100000000000000;
  *(v0 + 4120) = v80;
  *(v0 + 4128) = v81;
  *(v0 + 4136) = v82;
  *(v0 + 4144) = v83;
  *(v0 + 4152) = v84;
  *(v0 + 4160) = v85;

LABEL_11:
  v26 = (v0 + 3784);
  v27 = *(v0 + 5040);
  v28 = *(v0 + 4120);
  *(v0 + 3976) = *v4;
  *(v0 + 3992) = v28;
  v29 = *(v0 + 4152);
  *(v0 + 4008) = *(v0 + 4136);
  *(v0 + 4024) = v29;
  *(v0 + 2760) = *(v27 + 720);
  v30 = *(v27 + 784);
  v32 = *(v27 + 736);
  v31 = *(v27 + 752);
  *(v0 + 2808) = *(v27 + 768);
  *(v0 + 2824) = v30;
  *(v0 + 2776) = v32;
  *(v0 + 2792) = v31;
  v34 = *(v27 + 816);
  v33 = *(v27 + 832);
  v35 = *(v27 + 800);
  *(v0 + 2888) = *(v27 + 848);
  *(v0 + 2856) = v34;
  *(v0 + 2872) = v33;
  *(v0 + 2840) = v35;
  v36 = *(v27 + 872);
  v37 = *(v27 + 888);
  v38 = *(v27 + 920);
  *(v0 + 3688) = *(v27 + 904);
  *(v0 + 3704) = v38;
  *v171 = v36;
  *(v0 + 3672) = v37;
  v166 = (v0 + 4232);
  v167 = v0 + 2760;
  if (*(v0 + 3664))
  {
    v39 = *(v27 + 872);
    v40 = *(v27 + 888);
    v41 = *(v27 + 920);
    *(v0 + 3816) = *(v27 + 904);
    *(v0 + 3832) = v41;
    *(v0 + 3800) = v40;
LABEL_15:
    *v26 = v39;
    goto LABEL_16;
  }

  *(v0 + 2624) = *(v27 + 720);
  v42 = *(v27 + 736);
  v43 = *(v27 + 752);
  v44 = *(v27 + 784);
  *(v0 + 2672) = *(v27 + 768);
  *(v0 + 2688) = v44;
  *(v0 + 2640) = v42;
  *(v0 + 2656) = v43;
  v45 = *(v27 + 800);
  v46 = *(v27 + 816);
  v47 = *(v27 + 832);
  *(v0 + 2752) = *(v27 + 848);
  *(v0 + 2720) = v46;
  *(v0 + 2736) = v47;
  *(v0 + 2704) = v45;
  if (sub_1DAF8B9A8(v0 + 2624) == 1)
  {
    v39 = 0uLL;
    *(v0 + 3816) = 0u;
    *(v0 + 3832) = 0u;
    *(v0 + 3800) = 0u;
    goto LABEL_15;
  }

  v86 = *(v0 + 2696);
  v87 = *(v0 + 2704);
  v88 = *(v0 + 2712);
  v89 = *(v0 + 2720);
  v90 = *(v0 + 2728);
  v91 = *(v0 + 2736);
  *(v0 + 3784) = *(v0 + 2624) + 49;
  *(v0 + 3792) = 0xE100000000000000;
  *(v0 + 3800) = v86;
  *(v0 + 3808) = v87;
  *(v0 + 3816) = v88;
  *(v0 + 3824) = v89;
  *(v0 + 3832) = v90;
  *(v0 + 3840) = v91;

LABEL_16:
  v48 = *(v0 + 5040);
  v49 = *(v0 + 3800);
  *(v0 + 3912) = *v26;
  *(v0 + 3928) = v49;
  v50 = *(v0 + 3832);
  *(v0 + 3944) = *(v0 + 3816);
  *(v0 + 3960) = v50;
  v161 = v48[107];
  v51 = v48[108];
  v52 = v48[31];
  v53 = *(v52 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession);
  sub_1DAF3523C(v52 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger, v0 + 4416);
  v54 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());
  v55 = &v54[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT];
  *v55 = 0x726F5F646E65732FLL;
  *(v55 + 1) = 0xE900000000000064;
  v56 = &v54[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT];
  *v56 = 0x746F5F646E65732FLL;
  *(v56 + 1) = 0xE900000000000064;
  sub_1DAF3523C(v0 + 4416, v0 + 4456);
  sub_1DAF40A84(v170, v0 + 2488, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF4ED88(v169, v177);

  sub_1DAF40A84(v0 + 3720, v0 + 3592, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  v57 = v53;
  sub_1DAF40A84(v171, v0 + 3848, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

  sub_1DAF40A84(v167, v0 + 1944, &qword_1ECC0E798, &qword_1DB0A5120);
  v58 = sub_1DB016E04(v57, (v0 + 4456));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4416));
  v59 = v48[31];
  v48[31] = v58;

  sub_1DB09D1C4();
  v60 = sub_1DB09D174();
  v62 = v61;
  v63 = sub_1DB09D174();
  *(v0 + 4232) = v60;
  *(v0 + 4240) = v62;
  *(v0 + 4248) = v63;
  *(v0 + 4256) = v64;
  *(v0 + 4264) = v161;
  *(v0 + 4272) = v51;
  v65 = v48[22];
  v179 = v48[21];
  v180 = v65;

  sub_1DB09DE44();

  v181 = 0x737420676E697375;
  v182 = 0xEB00000000206469;
  v66 = sub_1DB09D174();
  MEMORY[0x1E127FE90](v66);

  MEMORY[0x1E127FE90](0x20646975677420, 0xE700000000000000);
  if (v51)
  {
    v67 = v161;
  }

  else
  {
    v67 = 0x3E6C696E3CLL;
  }

  if (v51)
  {
    v68 = v51;
  }

  else
  {
    v68 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v67, v68);

  v69 = v181;
  LOBYTE(v181) = 8;
  CoreODILogger.debug(_:category:)(v69, v182, &v181);

  sub_1DB09CC54();
  swift_allocObject();
  sub_1DB09CC44();
  v70 = (v0 + 4232);
  v71 = *(v0 + 4248);
  *(v0 + 4280) = *v166;
  *(v0 + 4296) = v71;
  *(v0 + 4312) = *(v0 + 4264);
  sub_1DAF8B9C0();
  v72 = sub_1DB09CC34();
  *(v0 + 5280) = v72;
  *(v0 + 5288) = v73;
  if (v163)
  {
    (*(*(v0 + 5144) + 8))(*(v0 + 5152), *(v0 + 5136));

    sub_1DAF4AC40(v169, v177);
    sub_1DAF40AEC(v170, &qword_1ECC0E798, &qword_1DB0A5120);

    sub_1DAF40AEC(v0 + 4104, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    sub_1DAF40AEC(v167, &qword_1ECC0E798, &qword_1DB0A5120);
    sub_1DAF40AEC(v0 + 3784, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

    sub_1DAF8BA14(v0 + 3168);
    sub_1DAF8BA68(v166);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));

    v98 = *(v0 + 8);

    return v98();
  }

  v74 = v72;
  v75 = v73;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E750, &qword_1DB0A5150);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1DB0A04E0;
  *(v76 + 32) = v74;
  *(v76 + 40) = v75;
  v172 = v76;
  if (*(v0 + 3176))
  {
    v77 = *(v0 + 3224);
    v78 = *(v0 + 3216);
    sub_1DAF40674(v74, v75);
    sub_1DAF40A84(v0 + 3168, v0 + 4040, &qword_1ECC0E7C0, &qword_1DB0A51B0);
    sub_1DAF8BA14(v0 + 3168);

    sub_1DAF40AEC(v0 + 3168, &qword_1ECC0E7C0, &qword_1DB0A51B0);
    v79 = v78;
  }

  else
  {
    sub_1DAF40674(v74, v75);
    sub_1DAF8BA14(v0 + 3168);
    v79 = 0;
    v77 = 0;
  }

  if (v174)
  {
    v92 = v160;
  }

  else
  {
    v92 = 0;
  }

  if (v174)
  {
    v93 = v174;
  }

  else
  {
    v93 = 0xE000000000000000;
  }

  v94 = *(v0 + 4232);
  *(v0 + 5296) = v94;
  v95 = *(v0 + 4240);
  *(v0 + 5304) = v95;
  sub_1DAFDE06C(v79, v77, v94, v95, v92, v93);
  *(v0 + 5312) = v96;
  *(v0 + 5320) = v97;
  v99 = v96;
  v175 = v97;
  v100 = v0 + 4696;

  v165 = v99;
  if (!v99 || !*(v99 + 24))
  {
    goto LABEL_48;
  }

  v101 = *(v0 + 5128);
  v102 = *(v0 + 5120);
  v103 = *(v0 + 5112);

  sub_1DB09D714();
  v168 = sub_1DB09D6D4();
  v105 = v104;

  v106 = *(v102 + 8);
  v106(v101, v103);
  if (v105 >> 60 != 15)
  {
    v100 = v0 + 4696;
    if (v175 && *(v175 + 24))
    {
      v110 = *(v0 + 5128);
      v111 = *(v0 + 5112);

      sub_1DB09D714();
      v164 = sub_1DB09D6D4();
      v113 = v112;

      v106(v110, v111);
      if (v113 >> 60 != 15)
      {
        v147 = v113;
        v162 = v105;
        sub_1DAF40674(v74, v75);
        v109 = v172;
        v149 = *(v172 + 16);
        v148 = *(v172 + 24);
        v150 = v149 + 1;
        v107 = v177;
        v108 = (v0 + 3976);
        v100 = v0 + 4696;
        if (v149 >= v148 >> 1)
        {
          v109 = sub_1DAF735C8((v148 > 1), v149 + 1, 1, v172);
        }

        *(v109 + 2) = v150;
        v151 = &v109[16 * v149];
        *(v151 + 4) = v74;
        *(v151 + 5) = v75;
        sub_1DAF40674(v164, v147);
        v152 = *(v109 + 3);
        if ((v149 + 2) > (v152 >> 1))
        {
          v109 = sub_1DAF735C8((v152 > 1), v149 + 2, 1, v109);
        }

        v153 = *(v0 + 5040);
        *(v109 + 2) = v149 + 2;
        v154 = &v109[16 * v150];
        *(v154 + 4) = v164;
        *(v154 + 5) = v147;
        v155 = *(v153 + 176);
        v179 = *(v153 + 168);
        v180 = v155;
        v181 = 0;
        v182 = 0xE000000000000000;

        sub_1DB09DE44();

        v181 = 0x6469737420726F66;
        v182 = 0xE900000000000020;
        v156 = sub_1DB09D174();
        MEMORY[0x1E127FE90](v156);

        MEMORY[0x1E127FE90](0x44495354636E6520, 0xEE00203A61746144);
        v157 = sub_1DB09D014();
        MEMORY[0x1E127FE90](v157);

        v158 = v181;
        LOBYTE(v181) = 8;
        CoreODILogger.debug(_:category:)(v158, v182, &v181);
        sub_1DAF4AC40(v168, v162);

        sub_1DAF4AC40(v164, v147);

        v70 = (v0 + 4232);
        goto LABEL_49;
      }

      sub_1DAF4AC40(v168, v105);
      v70 = (v0 + 4232);
      goto LABEL_42;
    }

    sub_1DAF4AC40(v168, v105);
LABEL_48:
    v107 = v177;
    v108 = (v0 + 3976);
    v109 = v172;
    goto LABEL_49;
  }

LABEL_42:
  v107 = v177;
  v108 = (v0 + 3976);
  v109 = v172;
  v100 = v0 + 4696;
LABEL_49:
  *(v0 + 5328) = v109;
  v114 = *(v0 + 5040);
  v115 = (*(v0 + 1668) - 1) < 2;
  sub_1DAF3523C(v0 + 4536, v0 + 4576);
  v116 = swift_allocObject();
  *(v0 + 5336) = v116;
  *(v116 + 16) = v114;
  sub_1DAF332B8((v0 + 4576), v116 + 24);
  *(v116 + 64) = v115;
  v117 = v108[1];
  *(v116 + 72) = *v108;
  *(v116 + 88) = v117;
  v118 = v108[3];
  *(v116 + 104) = v108[2];
  *(v116 + 120) = v118;
  v119 = *(v0 + 3928);
  *(v116 + 136) = *(v0 + 3912);
  *(v116 + 152) = v119;
  v120 = *(v0 + 3960);
  *(v116 + 168) = *(v0 + 3944);
  *(v116 + 184) = v120;
  v121 = *v70;
  v122 = v70[1];
  *(v116 + 232) = v70[2];
  *(v116 + 216) = v122;
  *(v116 + 200) = v121;
  *(v116 + 248) = v165;
  *(v116 + 256) = v175;
  v123 = *(v100 + 16);
  *(v116 + 264) = *v100;
  *(v116 + 280) = v123;
  *(v116 + 296) = *(v100 + 32);
  v124 = *(v0 + 5040);
  if (v107 >> 60 != 15)
  {

    sub_1DAF8BC10(v70, v0 + 4328);

    sub_1DAF8BBB4(v100, v0 + 4776);
    if (qword_1EE301828 != -1)
    {
      swift_once();
    }

    v140 = ((*(v0 + 1667) != 2) ^ *(v0 + 1667)) & 1;
    v141 = qword_1EE301830;
    *(v0 + 5344) = qword_1EE301830;
    v142 = *(v0 + 4680);
    v143 = *(v0 + 4688);
    __swift_project_boxed_opaque_existential_1((v0 + 4656), v142);
    LOBYTE(v181) = v140;
    (*(v143 + 40))(&v181, v142, v143);
    *(v0 + 5352) = *(v0 + 4960);
    v144 = *(v0 + 4680);
    v145 = *(v0 + 4688);
    __swift_project_boxed_opaque_existential_1((v0 + 4656), v144);
    *(v0 + 5368) = (*(v145 + 24))(v144, v145);
    *(v0 + 5376) = v146;
    *(v0 + 5024) = *(v0 + 4704);
    *(v0 + 5384) = *(v0 + 4712);
    *(v0 + 5392) = *(v0 + 4720);
    *(v0 + 1666) = *(v0 + 4728);
    sub_1DAF8BC6C(v0 + 5024, v0 + 5016);

    v2 = sub_1DAF83098;
    v3 = v141;
    goto LABEL_3;
  }

  sub_1DAF8BBB4(v100, v0 + 4736);

  v125 = *(v124 + 176);
  v181 = *(v124 + 168);
  v182 = v125;
  LOBYTE(v179) = 8;

  CoreODILogger.error(_:category:)(0xD00000000000002FLL, 0x80000001DB0C3600, &v179);

  if (qword_1EE300B90 != -1)
  {
    swift_once();
  }

  v126 = MEMORY[0x1E69E7CC0];
  v127 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v127 + 16))
  {
    v128 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
    if (v129)
    {
      sub_1DAF409DC(*(v127 + 56) + 32 * v128, v0 + 4880);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      if (swift_dynamicCast())
      {
        v126 = *(v0 + 5008);
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v126 = sub_1DAF72FF4(0, *(v126 + 2) + 1, 1, v126);
  }

  v131 = *(v126 + 2);
  v130 = *(v126 + 3);
  if (v131 >= v130 >> 1)
  {
    v126 = sub_1DAF72FF4((v130 > 1), v131 + 1, 1, v126);
  }

  v132 = *(v0 + 5168);
  v178 = *(v0 + 1668);
  v173 = *(v0 + 5160);
  v176 = *(v0 + 5032);
  *(v126 + 2) = v131 + 1;
  v133 = &v126[56 * v131];
  *(v133 + 4) = 0;
  *(v133 + 5) = 0xE000000000000000;
  *(v133 + 6) = 0xD00000000000002DLL;
  *(v133 + 7) = 0x80000001DB0C3590;
  *(v133 + 8) = 0xD00000000000001CLL;
  *(v133 + 9) = 0x80000001DB0C3630;
  *(v133 + 10) = 502;
  *(v0 + 4840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
  *(v0 + 4816) = v126;
  sub_1DAF40D20((v0 + 4816), (v0 + 4848));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v181 = v127;
  sub_1DAF3B11C((v0 + 4848), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
  v135 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v136 = sub_1DB09D6B4();
  v137 = sub_1DB09D604();
  v138 = [v135 initWithDomain:v136 code:-3300 userInfo:v137];
  *(v0 + 5568) = v138;

  sub_1DB041E04(v138, v173, v132, v0 + 4616);
  *(v0 + 5576) = *(v0 + 4616);
  *(v0 + 5584) = *(v0 + 4624);
  *(v0 + 3161) = *(v0 + 4632);
  *(v0 + 5592) = *(v0 + 4640);
  *(v0 + 4992) = *(v0 + 4640);
  sub_1DAF40A84(v0 + 4992, v0 + 4976, &unk_1ECC0EAE0, &unk_1DB0A4650);

  sub_1DAF3523C(v0 + 4536, v176 + 424);
  v139 = swift_task_alloc();
  *(v0 + 5608) = v139;
  *v139 = v0;
  v139[1] = sub_1DAF854B4;

  return sub_1DAF8AD6C(v0 + 1456, 0, (v178 - 1) < 2);
}

uint64_t sub_1DAF81934()
{
  v1 = swift_task_alloc();
  *(v0 + 5232) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF819C8;

  return sub_1DAFA5D90();
}

uint64_t sub_1DAF819C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[617] = v2;
  v4[618] = a1;
  v4[619] = a2;
  v5 = v3[630];
  v4[655] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF81AE8, v5, 0);
}

uint64_t sub_1DAF81AE8()
{
  v1 = v0[655];
  v2 = v0[651];
  if (v1)
  {
    v3 = v0[618];
  }

  else
  {
    v3 = 0;
  }

  if (v1)
  {
    v4 = v0[655];
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 562, v0[565]);
  sub_1DAFDC9D4(v3, v4, (v0 + 86));
  v0[656] = v2;
  if (v2)
  {

    sub_1DAF8BA14((v0 + 396));
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 562);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 567);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 582);

    v5 = v0[1];

    return v5();
  }

  else
  {

    memcpy(v0 + 44, v0 + 86, 0x150uLL);
    memcpy(v0 + 2, v0 + 86, 0x150uLL);
    v7 = swift_task_alloc();
    v0[657] = v7;
    *v7 = v0;
    v7[1] = sub_1DAF81CD4;

    return sub_1DAF88D7C((v0 + 2));
  }
}

uint64_t sub_1DAF81CD4()
{
  v1 = *(*v0 + 5040);

  return MEMORY[0x1EEE6DFA0](sub_1DAF81DE4, v1, 0);
}

uint64_t sub_1DAF81DE4()
{
  v176 = v0;
  v1 = (v0 + 3656);
  v2 = (v0 + 4104);
  sub_1DAF8BED4(v0 + 352);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4496));
  v161 = *(v0 + 5248);
  v3 = *(v0 + 5040);
  *(v0 + 2896) = *(v3 + 488);
  v4 = *(v3 + 536);
  v5 = *(v3 + 552);
  v6 = *(v3 + 520);
  *(v0 + 2912) = *(v3 + 504);
  *(v0 + 2960) = v5;
  *(v0 + 2944) = v4;
  *(v0 + 2928) = v6;
  v8 = *(v3 + 584);
  v7 = *(v3 + 600);
  v9 = *(v3 + 616);
  *(v0 + 2976) = *(v3 + 568);
  *(v0 + 3024) = v9;
  *(v0 + 3008) = v7;
  *(v0 + 2992) = v8;
  v10 = *(v3 + 704);
  *(v0 + 5264) = v10;
  v170 = *(v3 + 712);
  *(v0 + 5272) = v170;
  v155 = *(v3 + 624);
  v11 = *(v3 + 632);
  v12 = *(v3 + 688);
  v14 = *(v3 + 640);
  v13 = *(v3 + 656);
  *(v0 + 3752) = *(v3 + 672);
  *(v0 + 3768) = v12;
  *(v0 + 3720) = v14;
  *(v0 + 3736) = v13;
  if (*(v0 + 3728))
  {
    v15 = *(v3 + 640);
    v16 = *(v3 + 656);
    v17 = *(v3 + 688);
    *(v0 + 4136) = *(v3 + 672);
    *(v0 + 4152) = v17;
    *(v0 + 4120) = v16;
LABEL_5:
    *v2 = v15;
    goto LABEL_6;
  }

  *(v0 + 1672) = *(v3 + 488);
  v18 = *(v3 + 504);
  v19 = *(v3 + 520);
  v20 = *(v3 + 552);
  *(v0 + 1720) = *(v3 + 536);
  *(v0 + 1736) = v20;
  *(v0 + 1688) = v18;
  *(v0 + 1704) = v19;
  v21 = *(v3 + 568);
  v22 = *(v3 + 584);
  v23 = *(v3 + 600);
  *(v0 + 1800) = *(v3 + 616);
  *(v0 + 1768) = v22;
  *(v0 + 1784) = v23;
  *(v0 + 1752) = v21;
  if (sub_1DAF8B9A8(v0 + 1672) == 1)
  {
    v15 = 0uLL;
    *(v0 + 4136) = 0u;
    *(v0 + 4152) = 0u;
    *(v0 + 4120) = 0u;
    goto LABEL_5;
  }

  v77 = *(v0 + 1744);
  v78 = *(v0 + 1752);
  v79 = *(v0 + 1760);
  v80 = *(v0 + 1768);
  v81 = *(v0 + 1776);
  v82 = *(v0 + 1784);
  *(v0 + 4104) = *(v0 + 1672) + 49;
  *(v0 + 4112) = 0xE100000000000000;
  *(v0 + 4120) = v77;
  *(v0 + 4128) = v78;
  *(v0 + 4136) = v79;
  *(v0 + 4144) = v80;
  *(v0 + 4152) = v81;
  *(v0 + 4160) = v82;

  v1 = (v0 + 3656);

LABEL_6:
  v24 = (v0 + 3784);
  v25 = *(v0 + 5040);
  v26 = *(v0 + 4120);
  *(v0 + 3976) = *v2;
  *(v0 + 3992) = v26;
  v27 = *(v0 + 4152);
  *(v0 + 4008) = *(v0 + 4136);
  *(v0 + 4024) = v27;
  *(v0 + 2760) = *(v25 + 720);
  v28 = *(v25 + 784);
  v30 = *(v25 + 736);
  v29 = *(v25 + 752);
  *(v0 + 2808) = *(v25 + 768);
  *(v0 + 2824) = v28;
  *(v0 + 2776) = v30;
  *(v0 + 2792) = v29;
  v32 = *(v25 + 816);
  v31 = *(v25 + 832);
  v33 = *(v25 + 800);
  *(v0 + 2888) = *(v25 + 848);
  *(v0 + 2856) = v32;
  *(v0 + 2872) = v31;
  *(v0 + 2840) = v33;
  v34 = *(v25 + 872);
  v35 = *(v25 + 888);
  v36 = *(v25 + 920);
  v1[2] = *(v25 + 904);
  v1[3] = v36;
  *v1 = v34;
  v1[1] = v35;
  v164 = (v0 + 4232);
  v166 = v0 + 2760;
  v167 = v11;
  if (*(v0 + 3664))
  {
    v37 = v10;
    v38 = *(v25 + 872);
    v39 = *(v25 + 888);
    v40 = *(v25 + 920);
    *(v0 + 3816) = *(v25 + 904);
    *(v0 + 3832) = v40;
    *(v0 + 3800) = v39;
LABEL_10:
    *v24 = v38;
    goto LABEL_11;
  }

  *(v0 + 2624) = *(v25 + 720);
  v41 = *(v25 + 736);
  v42 = *(v25 + 752);
  v43 = *(v25 + 784);
  *(v0 + 2672) = *(v25 + 768);
  *(v0 + 2688) = v43;
  *(v0 + 2640) = v41;
  *(v0 + 2656) = v42;
  v44 = *(v25 + 800);
  v45 = *(v25 + 816);
  v46 = *(v25 + 832);
  *(v0 + 2752) = *(v25 + 848);
  *(v0 + 2720) = v45;
  *(v0 + 2736) = v46;
  *(v0 + 2704) = v44;
  v37 = v10;
  if (sub_1DAF8B9A8(v0 + 2624) == 1)
  {
    v38 = 0uLL;
    *(v0 + 3816) = 0u;
    *(v0 + 3832) = 0u;
    *(v0 + 3800) = 0u;
    goto LABEL_10;
  }

  v83 = *(v0 + 2696);
  v84 = *(v0 + 2704);
  v85 = *(v0 + 2712);
  v86 = *(v0 + 2720);
  v87 = *(v0 + 2728);
  v88 = *(v0 + 2736);
  *(v0 + 3784) = *(v0 + 2624) + 49;
  *(v0 + 3792) = 0xE100000000000000;
  *(v0 + 3800) = v83;
  *(v0 + 3808) = v84;
  *(v0 + 3816) = v85;
  *(v0 + 3824) = v86;
  *(v0 + 3832) = v87;
  *(v0 + 3840) = v88;

  v24 = (v0 + 3784);

LABEL_11:
  v156 = v24;
  v47 = *(v0 + 5040);
  v48 = v24[1];
  *(v0 + 3912) = *v24;
  *(v0 + 3928) = v48;
  v49 = v24[3];
  *(v0 + 3944) = v24[2];
  *(v0 + 3960) = v49;
  v158 = v47[107];
  v50 = v47[108];
  v51 = v47[31];
  v52 = *(v51 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_httpSession);
  sub_1DAF3523C(v51 + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_logger, v0 + 4416);
  v53 = objc_allocWithZone(type metadata accessor for DIPAssessmentWebService());
  v54 = &v53[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_ORD_ENDPOINT];
  *v54 = 0x726F5F646E65732FLL;
  *(v54 + 1) = 0xE900000000000064;
  v55 = &v53[OBJC_IVAR____TtC17CoreODIEssentials23DIPAssessmentWebService_DUA_TRAIN_ENDPOINT];
  *v55 = 0x746F5F646E65732FLL;
  *(v55 + 1) = 0xE900000000000064;
  sub_1DAF3523C(v0 + 4416, v0 + 4456);
  sub_1DAF40A84(v0 + 2896, v0 + 2488, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF4ED88(v37, v170);

  sub_1DAF40A84(v0 + 3720, v0 + 3592, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  v56 = v52;
  sub_1DAF40A84(v0 + 3656, v0 + 3848, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

  sub_1DAF40A84(v166, v0 + 1944, &qword_1ECC0E798, &qword_1DB0A5120);
  v57 = sub_1DB016E04(v56, (v0 + 4456));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4416));
  v58 = v47[31];
  v47[31] = v57;

  sub_1DB09D1C4();
  v59 = sub_1DB09D174();
  v61 = v60;
  v62 = sub_1DB09D174();
  *(v0 + 4232) = v59;
  *(v0 + 4240) = v61;
  *(v0 + 4248) = v62;
  *(v0 + 4256) = v63;
  *(v0 + 4264) = v158;
  *(v0 + 4272) = v50;
  v64 = v47[22];
  v172 = v47[21];
  v173 = v64;

  sub_1DB09DE44();

  v174 = 0x737420676E697375;
  v175 = 0xEB00000000206469;
  v65 = sub_1DB09D174();
  MEMORY[0x1E127FE90](v65);

  MEMORY[0x1E127FE90](0x20646975677420, 0xE700000000000000);
  if (v50)
  {
    v66 = v158;
  }

  else
  {
    v66 = 0x3E6C696E3CLL;
  }

  if (!v50)
  {
    v50 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v66, v50);

  v67 = v174;
  LOBYTE(v174) = 8;
  CoreODILogger.debug(_:category:)(v67, v175, &v174);

  sub_1DB09CC54();
  swift_allocObject();
  sub_1DB09CC44();
  v68 = (v0 + 4232);
  v69 = *(v0 + 4248);
  *(v0 + 4280) = *v164;
  *(v0 + 4296) = v69;
  *(v0 + 4312) = *(v0 + 4264);
  sub_1DAF8B9C0();
  v70 = sub_1DB09CC34();
  *(v0 + 5280) = v70;
  *(v0 + 5288) = v71;
  if (v161)
  {
    (*(*(v0 + 5144) + 8))(*(v0 + 5152), *(v0 + 5136));

    sub_1DAF4AC40(v37, v170);
    sub_1DAF40AEC(v0 + 2896, &qword_1ECC0E798, &qword_1DB0A5120);

    sub_1DAF40AEC(v0 + 4104, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
    sub_1DAF40AEC(v166, &qword_1ECC0E798, &qword_1DB0A5120);
    sub_1DAF40AEC(v156, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

    sub_1DAF8BA14(v0 + 3168);
    sub_1DAF8BA68(v164);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4536));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));

    v95 = *(v0 + 8);

    return v95();
  }

  v72 = v70;
  v73 = v71;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E750, &qword_1DB0A5150);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1DB0A04E0;
  *(v74 + 32) = v72;
  *(v74 + 40) = v73;
  if (*(v0 + 3176))
  {
    v75 = *(v0 + 3224);
    v76 = *(v0 + 3216);
    sub_1DAF40674(v72, v73);
    sub_1DAF40A84(v0 + 3168, v0 + 4040, &qword_1ECC0E7C0, &qword_1DB0A51B0);
    sub_1DAF8BA14(v0 + 3168);

    sub_1DAF40AEC(v0 + 3168, &qword_1ECC0E7C0, &qword_1DB0A51B0);
  }

  else
  {
    sub_1DAF40674(v72, v73);
    sub_1DAF8BA14(v0 + 3168);
    v76 = 0;
    v75 = 0;
  }

  v89 = v167;
  if (v167)
  {
    v90 = v155;
  }

  else
  {
    v90 = 0;
  }

  if (!v167)
  {
    v89 = 0xE000000000000000;
  }

  v91 = *(v0 + 4232);
  *(v0 + 5296) = v91;
  v92 = *(v0 + 4240);
  *(v0 + 5304) = v92;
  sub_1DAFDE06C(v76, v75, v91, v92, v90, v89);
  *(v0 + 5312) = v93;
  *(v0 + 5320) = v94;
  v97 = v93;
  v168 = v94;
  v98 = v0 + 4696;

  if (v97 && *(v97 + 24))
  {
    v163 = v74;
    v99 = *(v0 + 5128);
    v100 = *(v0 + 5120);
    v101 = *(v0 + 5112);

    sub_1DB09D714();
    v162 = sub_1DB09D6D4();
    v103 = v102;

    v104 = *(v100 + 8);
    v104(v99, v101);
    if (v103 >> 60 == 15)
    {
      v74 = v163;
      v68 = (v0 + 4232);
      v105 = v170;
      v98 = v0 + 4696;
      goto LABEL_43;
    }

    v106 = v103;
    v98 = v0 + 4696;
    if (v168 && *(v168 + 24))
    {
      v107 = *(v0 + 5128);
      v159 = *(v0 + 5112);
      v160 = v106;

      sub_1DB09D714();
      v157 = sub_1DB09D6D4();
      v109 = v108;

      v104(v107, v159);
      if (v109 >> 60 != 15)
      {
        sub_1DAF40674(v72, v73);
        v74 = v163;
        v145 = *(v163 + 16);
        v144 = *(v163 + 24);
        v146 = v145 + 1;
        v105 = v170;
        if (v145 >= v144 >> 1)
        {
          v74 = sub_1DAF735C8((v144 > 1), v145 + 1, 1, v163);
        }

        *(v74 + 16) = v146;
        v147 = v74 + 16 * v145;
        *(v147 + 32) = v72;
        *(v147 + 40) = v73;
        sub_1DAF40674(v157, v109);
        v148 = *(v74 + 24);
        if ((v145 + 2) > (v148 >> 1))
        {
          v74 = sub_1DAF735C8((v148 > 1), v145 + 2, 1, v74);
        }

        v149 = *(v0 + 5040);
        *(v74 + 16) = v145 + 2;
        v150 = v74 + 16 * v146;
        *(v150 + 32) = v157;
        *(v150 + 40) = v109;
        v151 = *(v149 + 176);
        v172 = *(v149 + 168);
        v173 = v151;
        v174 = 0;
        v175 = 0xE000000000000000;

        sub_1DB09DE44();

        v174 = 0x6469737420726F66;
        v175 = 0xE900000000000020;
        v152 = sub_1DB09D174();
        MEMORY[0x1E127FE90](v152);

        MEMORY[0x1E127FE90](0x44495354636E6520, 0xEE00203A61746144);
        v153 = sub_1DB09D014();
        MEMORY[0x1E127FE90](v153);

        v154 = v174;
        LOBYTE(v174) = 8;
        CoreODILogger.debug(_:category:)(v154, v175, &v174);
        sub_1DAF4AC40(v162, v160);

        sub_1DAF4AC40(v157, v109);

        v68 = (v0 + 4232);
        v98 = v0 + 4696;
        goto LABEL_43;
      }

      v106 = v160;
      v110 = v162;
    }

    else
    {
      v110 = v162;
    }

    sub_1DAF4AC40(v110, v106);
    v74 = v163;
    v68 = (v0 + 4232);
  }

  v105 = v170;
LABEL_43:
  *(v0 + 5328) = v74;
  v111 = *(v0 + 5040);
  v112 = (*(v0 + 1668) - 1) < 2;
  sub_1DAF3523C(v0 + 4536, v0 + 4576);
  v113 = swift_allocObject();
  *(v0 + 5336) = v113;
  *(v113 + 16) = v111;
  sub_1DAF332B8((v0 + 4576), v113 + 24);
  *(v113 + 64) = v112;
  v114 = *(v0 + 3992);
  *(v113 + 72) = *(v0 + 3976);
  *(v113 + 88) = v114;
  v115 = *(v0 + 4024);
  *(v113 + 104) = *(v0 + 4008);
  *(v113 + 120) = v115;
  v116 = *(v0 + 3928);
  *(v113 + 136) = *(v0 + 3912);
  *(v113 + 152) = v116;
  v117 = *(v0 + 3960);
  *(v113 + 168) = *(v0 + 3944);
  *(v113 + 184) = v117;
  v118 = *v68;
  v119 = v68[1];
  *(v113 + 232) = v68[2];
  *(v113 + 216) = v119;
  *(v113 + 200) = v118;
  *(v113 + 248) = v97;
  *(v113 + 256) = v168;
  v120 = *(v98 + 16);
  *(v113 + 264) = *v98;
  *(v113 + 280) = v120;
  *(v113 + 296) = *(v98 + 32);
  v121 = *(v0 + 5040);
  if (v105 >> 60 == 15)
  {

    sub_1DAF8BBB4(v98, v0 + 4736);

    v122 = *(v121 + 176);
    v174 = *(v121 + 168);
    v175 = v122;
    LOBYTE(v172) = 8;

    CoreODILogger.error(_:category:)(0xD00000000000002FLL, 0x80000001DB0C3600, &v172);

    if (qword_1EE300B90 != -1)
    {
      swift_once();
    }

    v123 = MEMORY[0x1E69E7CC0];
    v124 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    if (*(v124 + 16))
    {
      v125 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461);
      if (v126)
      {
        sub_1DAF409DC(*(v124 + 56) + 32 * v125, v0 + 4880);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        if (swift_dynamicCast())
        {
          v123 = *(v0 + 5008);
        }
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v123 = sub_1DAF72FF4(0, *(v123 + 2) + 1, 1, v123);
    }

    v128 = *(v123 + 2);
    v127 = *(v123 + 3);
    if (v128 >= v127 >> 1)
    {
      v123 = sub_1DAF72FF4((v127 > 1), v128 + 1, 1, v123);
    }

    v129 = *(v0 + 5168);
    v165 = *(v0 + 5160);
    v171 = *(v0 + 1668);
    v169 = *(v0 + 5032);
    *(v123 + 2) = v128 + 1;
    v130 = &v123[56 * v128];
    *(v130 + 4) = 0;
    *(v130 + 5) = 0xE000000000000000;
    *(v130 + 6) = 0xD00000000000002DLL;
    *(v130 + 7) = 0x80000001DB0C3590;
    *(v130 + 8) = 0xD00000000000001CLL;
    *(v130 + 9) = 0x80000001DB0C3630;
    *(v130 + 10) = 502;
    *(v0 + 4840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
    *(v0 + 4816) = v123;
    sub_1DAF40D20((v0 + 4816), (v0 + 4848));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v174 = v124;
    sub_1DAF3B11C((v0 + 4848), 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
    v132 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v133 = sub_1DB09D6B4();
    v134 = sub_1DB09D604();
    v135 = [v132 initWithDomain:v133 code:-3300 userInfo:v134];
    *(v0 + 5568) = v135;

    sub_1DB041E04(v135, v165, v129, v0 + 4616);
    *(v0 + 5576) = *(v0 + 4616);
    *(v0 + 5584) = *(v0 + 4624);
    *(v0 + 3161) = *(v0 + 4632);
    *(v0 + 5592) = *(v0 + 4640);
    *(v0 + 4992) = *(v0 + 4640);
    sub_1DAF40A84(v0 + 4992, v0 + 4976, &unk_1ECC0EAE0, &unk_1DB0A4650);

    sub_1DAF3523C(v0 + 4536, v169 + 424);
    v136 = swift_task_alloc();
    *(v0 + 5608) = v136;
    *v136 = v0;
    v136[1] = sub_1DAF854B4;

    return sub_1DAF8AD6C(v0 + 1456, 0, (v171 - 1) < 2);
  }

  else
  {

    sub_1DAF8BC10(v68, v0 + 4328);

    sub_1DAF8BBB4(v98, v0 + 4776);
    if (qword_1EE301828 != -1)
    {
      swift_once();
    }

    v137 = ((*(v0 + 1667) != 2) ^ *(v0 + 1667)) & 1;
    v138 = qword_1EE301830;
    *(v0 + 5344) = qword_1EE301830;
    v139 = *(v0 + 4680);
    v140 = *(v0 + 4688);
    __swift_project_boxed_opaque_existential_1((v0 + 4656), v139);
    LOBYTE(v174) = v137;
    (*(v140 + 40))(&v174, v139, v140);
    *(v0 + 5352) = *(v0 + 4960);
    v141 = *(v0 + 4680);
    v142 = *(v0 + 4688);
    __swift_project_boxed_opaque_existential_1((v0 + 4656), v141);
    *(v0 + 5368) = (*(v142 + 24))(v141, v142);
    *(v0 + 5376) = v143;
    *(v0 + 5024) = *(v0 + 4704);
    *(v0 + 5384) = *(v0 + 4712);
    *(v0 + 5392) = *(v0 + 4720);
    *(v0 + 1666) = *(v0 + 4728);
    sub_1DAF8BC6C(v0 + 5024, v0 + 5016);

    return MEMORY[0x1EEE6DFA0](sub_1DAF83098, v138, 0);
  }
}

uint64_t sub_1DAF830C0()
{
  v1 = swift_task_alloc();
  *(v0 + 5408) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF8319C;
  v2 = *(v0 + 5400);
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v1, 0, 0, 0x6B726F57656B6174, 0xEF29286E656B6F54, sub_1DAF5F5FC, v2, v3);
}

uint64_t sub_1DAF8319C()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF83298, 0, 0);
}

uint64_t sub_1DAF832B4()
{
  v101 = v0;
  if (qword_1EE301458 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 5096);
  v2 = *(v0 + 5088);
  v4 = qword_1EE309F98;
  v3 = unk_1EE309FA0;
  v5 = byte_1EE309FA8;
  v6 = qword_1EE309FB0;
  v7 = byte_1EE309FB8;
  *(v1 + 32) = "enableTelemetry=YES";
  *(v1 + 40) = 19;
  *(v1 + 48) = 2;
  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v8 = *(v2 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v1 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = *(v0 + 5272);
  v12 = *(v0 + 5168);
  v13 = *(v0 + 5160);
  sub_1DAF8C2B8(*(v0 + 5096), *(v0 + 5104), type metadata accessor for ODISignpost);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4D0, &unk_1DB0A5170);
  v14 = swift_allocObject();
  *(v14 + 32) = 0;
  v15 = (v14 + 32);
  *(v14 + 16) = xmmword_1DB0A04E0;
  *(v14 + 64) = MEMORY[0x1E69E6158];
  *(v14 + 40) = v13;
  *(v14 + 48) = v12;

  v16 = sub_1DAF3E510(v14);
  *(v0 + 5416) = v16;
  swift_setDeallocating();
  sub_1DAF40AEC(v14 + 32, &qword_1ECC0E358, &qword_1DB0A02E0);
  swift_deallocClassInstance();
  v17 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_22;
    }

    v18 = *(*(v0 + 5264) + 16);
    v19 = *(*(v0 + 5264) + 24);
    v20 = __OFSUB__(v19, v18);
    v21 = v19 - v18;
    if (!v20)
    {
      if (v21 == 16)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    swift_once();
    goto LABEL_38;
  }

  if (v17)
  {
    v46 = *(v0 + 5264);
    v47 = *(v0 + 5268);
    v20 = __OFSUB__(v47, v46);
    v48 = v47 - v46;
    if (!v20)
    {
      if (v48 == 16)
      {
        goto LABEL_13;
      }

LABEL_22:
      sub_1DAF8BCC8(v0 + 5024);

      sub_1DAF8BA68(v0 + 4232);
      sub_1DAF40AEC(v0 + 2896, &qword_1ECC0E798, &qword_1DB0A5120);
      sub_1DAF40AEC(v0 + 2760, &qword_1ECC0E798, &qword_1DB0A5120);
      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 5344);
      v50 = qword_1EE30A148;
      v51 = sub_1DB09DB64();
      sub_1DB09D444("invalid nonce size", 18, 2, &dword_1DAF16000, v50, v51, MEMORY[0x1E69E7CC0]);
      LOBYTE(v99) = 99;
      v52 = sub_1DAF55460(v16);

      v53 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, 0, &v99, 0, v52, 0xD000000000000024, 0x80000001DB0C27D0, 0xD00000000000008ELL, 0x80000001DB0C2800, 339);

      swift_willThrow();
      v54 = v49[15];
      v55 = v49[16];
      v56 = v49[17];
      v57 = v49[18];
      v58 = v49[19];
      v59 = v49[20];
      *(v49 + 15) = 0u;
      *(v49 + 17) = 0u;
      *(v49 + 19) = 0u;
      goto LABEL_25;
    }

    goto LABEL_43;
  }

  if (*(v0 + 5278) != 16)
  {
    goto LABEL_22;
  }

LABEL_13:
  v96 = v16;
  v22 = *(v0 + 5344);
  v90 = *(v0 + 1666);
  v23 = v22[22];
  v98[0] = v22[21];
  v98[1] = v23;
  v99 = 0x636E6F6E206E640ELL;
  v100 = 0xEA00000000002065;

  v24 = sub_1DB09D014();
  MEMORY[0x1E127FE90](v24);

  CoreODILogger.debug(_:category:)(0x636E6F6E206E646FLL, 0xEA00000000002065, &v99);

  v25 = v22[15];
  v27 = v22[16];
  v26 = v22[17];
  v29 = v22[18];
  v28 = v22[19];
  v30 = v22[20];
  v31 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v97 = v25;
  v95 = v30;
  sub_1DAF608C4(v25, v27, v26, v29, v28, v30);
  v32 = sub_1DB09D6B4();
  v33 = [v31 initWithSuiteName_];

  v93 = v29;
  v94 = v28;
  v92 = v27;
  if (v33)
  {
    v34 = sub_1DB09D6B4();
    v35 = [v33 BOOLForKey_];

    v36 = 1;
    if (v35)
    {
      v36 = 2;
    }

    if ((v90 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v36 = 1;
    if (!v90)
    {
LABEL_17:
      v36 |= 4uLL;
    }
  }

  v91 = v36;
  v37 = *(v0 + 5360);
  v38 = *(v0 + 5352);
  if ((v37 & 0x2000000000000000) != 0)
  {
    sub_1DAF55920(*(v0 + 5024));
    v89 = objc_allocWithZone(HEk7C2N6EkssFH3z);
    v40 = sub_1DB09D914();
    v41 = sub_1DB09D004();
    v42 = sub_1DB09D604();

    v43 = sub_1DB09D914();

    v44 = sub_1DB09D004();
    v45 = [v89 initWithY2vJelgtPFLly7lh:v40 Zwvxi3fDtAHqlF0d:v41 KufCqgU8RstLzBzT:v91 BGiN5h2SLMRO6B9R:v42 Jf7L4ypvXegQqMcE:v43 zeXRCfLmM5cdkEtz:v44];
  }

  else
  {
    v39 = *(v0 + 5024);
    sub_1DAF40674(v38, v37);
    sub_1DAF55920(v39);
    v88 = objc_allocWithZone(HEk7C2N6EkssFH3z);
    v40 = sub_1DB09D004();
    sub_1DAF60AF4(v38, v37);
    v41 = sub_1DB09D004();
    v42 = sub_1DB09D604();

    v43 = sub_1DB09D914();

    v44 = sub_1DB09D004();
    v45 = [v88 initWithQAy7FB3BSYJUwsIc:v40 Zwvxi3fDtAHqlF0d:v41 KufCqgU8RstLzBzT:v91 BGiN5h2SLMRO6B9R:v42 Jf7L4ypvXegQqMcE:v43 zeXRCfLmM5cdkEtz:v44];
  }

  v15 = v45;
  *(v0 + 5432) = v45;

  if (!v15)
  {
    v67 = *(v0 + 5168);
    v68 = *(v0 + 5160);
    sub_1DAF8BCC8(v0 + 5024);
    sub_1DAF8BA68(v0 + 4232);
    sub_1DAF40AEC(v0 + 2896, &qword_1ECC0E798, &qword_1DB0A5120);
    sub_1DAF40AEC(v0 + 2760, &qword_1ECC0E798, &qword_1DB0A5120);

    LOBYTE(v99) = 127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1DB0A04E0;
    *(v69 + 32) = 0;
    *(v69 + 64) = MEMORY[0x1E69E6158];
    *(v69 + 40) = v68;
    *(v69 + 48) = v67;

    v70 = sub_1DAF3E280(v69);
    swift_setDeallocating();
    sub_1DAF40AEC(v69 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
    swift_deallocClassInstance();
    v53 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0xD00000000000001ALL, 0x80000001DB0C28B0, 0, &v99, 0, v70, 0xD000000000000022, 0x80000001DB0C28D0, 0xD000000000000074, 0x80000001DB0C2900, 60);

    swift_willThrow();
    sub_1DAF6080C(v97, v92, v26, v93, v94, v95);

    v54 = v22[15];
    v55 = v22[16];
    v56 = v22[17];
    v57 = v22[18];
    v58 = v22[19];
    v59 = v22[20];
    *(v22 + 15) = 0u;
    *(v22 + 17) = 0u;
    *(v22 + 19) = 0u;
LABEL_25:
    sub_1DAF6080C(v54, v55, v56, v57, v58, v59);
    *(v0 + 5424) = v53;
    v60 = *(v0 + 5104);
    sub_1DAF4FA0C();
    sub_1DAF8C320(v60, type metadata accessor for ODISignpost);
    v61 = sub_1DAF83F48;
    goto LABEL_39;
  }

  v99 = 45;
  v100 = 0xE100000000000000;
  LOBYTE(v98[0]) = 14;
  if (v95)
  {
    v62 = v94;
    sub_1DAF608C4(v97, v92, v26, v93, v94, v95);
    v63 = v15;

    CoreODILogger.debug(_:category:)(0xD000000000000017, 0x80000001DB0C2A00, v98);

    v64 = sub_1DB09D004();
    [v63 setHostChallenge_];

    v65 = sub_1DB09D004();
    [v63 setChallengeResponse_];

    v66 = sub_1DB09D6B4();
    [v63 setSeid_];

    sub_1DAF6080C(v97, v92, v26, v93, v94, v95);
  }

  else
  {
    v71 = v15;

    CoreODILogger.debug(_:category:)(0xD000000000000016, 0x80000001DB0C2980, v98);

    v62 = v94;
  }

  v72 = *(v0 + 5392);
  if (v72 >> 60 == 15)
  {
    v73 = sub_1DAF484E4(32123, 0xE200000000000000);
    v75 = v74;
    v72 = *(v0 + 5392);
    v76 = *(v0 + 5384);
  }

  else
  {
    v76 = *(v0 + 5384);
    v73 = v76;
    v75 = *(v0 + 5392);
  }

  sub_1DAF4ED88(v76, v72);
  v77 = sub_1DB09D004();
  sub_1DAF40780(v73, v75);
  [v15 setYNHDWo3TCV_];

  sub_1DAF6080C(v97, v92, v26, v93, v62, v95);
  if (qword_1EE301DE8 != -1)
  {
    goto LABEL_44;
  }

LABEL_38:
  v78 = *(v0 + 5344);
  v79 = *(v0 + 5336);
  v80 = *(v0 + 5168);
  v81 = *(v0 + 5160);
  v82 = qword_1EE30A148;
  v83 = sub_1DB09DB54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1DB0A04E0;
  *(v84 + 56) = MEMORY[0x1E69E6158];
  *(v84 + 64) = sub_1DAF4DC24();
  *(v84 + 32) = 48;
  *(v84 + 40) = 0xE100000000000000;
  sub_1DB09D444("Calling with option = %@", 24, 2, &dword_1DAF16000, v82, v83, v84);

  v85 = swift_allocObject();
  *(v0 + 5440) = v85;
  *(v85 + 16) = v78;
  *(v85 + 24) = v15;
  *(v85 + 32) = 45;
  *(v85 + 40) = 0xE100000000000000;
  *(v85 + 48) = v81;
  *(v85 + 56) = v80;
  *(v85 + 64) = 0;
  *(v85 + 72) = v96;
  *(v85 + 80) = &unk_1DB0A5160;
  *(v85 + 88) = v79;

  v86 = v15;

  v61 = sub_1DAF84374;
LABEL_39:

  return MEMORY[0x1EEE6DFA0](v61, 0, 0);
}

uint64_t sub_1DAF83F48()
{
  v1 = v0[675];
  v2 = v0[668];
  v3 = v0[635];
  v4 = sub_1DB09DA24();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_1DAF4F0EC(0, 0, v3, &unk_1DB0A5180, v5);

  return MEMORY[0x1EEE6DFA0](sub_1DAF84050, v2, 0);
}

uint64_t sub_1DAF84050()
{
  v1 = v0[634];
  v2 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for DeepLink();
  v3 = swift_allocObject();
  v4 = v2;

  sub_1DB09D334();
  v5 = sub_1DAF601B4(v4, v3, 45, 0xE100000000000000, v1);

  if (v5)
  {
    v6 = v0[678];
    v7 = v0[646];
    v8 = v0[645];
    v9 = v0[633];
    sub_1DB09D144();
    sub_1DAFBB880(v6, v8, v7, 0xD000000000000024, 0x80000001DB0C27D0, 409, v9);

    (*(v0[632] + 8))(v0[633], v0[631]);
  }

  else
  {
  }

  v10 = v0[672];
  v11 = v0[671];
  v12 = v0[670];
  v13 = v0[669];
  v14 = v0[630];
  swift_willThrow();

  sub_1DAF40780(v11, v10);
  sub_1DAF60AF4(v13, v12);

  return MEMORY[0x1EEE6DFA0](sub_1DAF84228, v14, 0);
}

uint64_t sub_1DAF84228()
{
  v1 = v0[661];
  v2 = v0[660];
  v3 = v0[644];
  v4 = v0[643];
  v5 = v0[642];
  sub_1DAF4AC40(v0[658], v0[659]);

  sub_1DAF40780(v2, v1);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 567);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 582);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DAF84374()
{
  v1 = v0[680];

  v2 = swift_task_alloc();
  v0[681] = v2;
  v2[2] = 60000000000;
  v2[3] = &unk_1DB0A21F0;
  v2[4] = v1;
  v2[5] = &unk_1DB0A21F8;
  v2[6] = 0;
  v3 = swift_task_alloc();
  v0[682] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4D8, &qword_1DB0A2210);
  *v3 = v0;
  v3[1] = sub_1DAF844B8;

  return MEMORY[0x1EEE6DE38](v0 + 440, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DAF60AE4, v2, v4);
}

uint64_t sub_1DAF844B8()
{
  v2 = *v1;
  *(*v1 + 5464) = v0;

  if (v0)
  {
    sub_1DAF8BCC8(v2 + 5024);
    sub_1DAF8BA68(v2 + 4232);
    sub_1DAF40AEC(v2 + 2896, &qword_1ECC0E798, &qword_1DB0A5120);
    sub_1DAF40AEC(v2 + 2760, &qword_1ECC0E798, &qword_1DB0A5120);

    v3 = sub_1DAF84754;
    v4 = 0;
  }

  else
  {
    v5 = *(v2 + 5344);

    v3 = sub_1DAF84648;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DAF84648()
{
  v1 = *(v0 + 5344);

  v2 = *(v0 + 3568);
  *(v0 + 4200) = *(v0 + 3552);
  *(v0 + 4216) = v2;
  v3 = *(v0 + 3536);
  *(v0 + 4168) = *(v0 + 3520);
  *(v0 + 4184) = v3;
  v4 = *(v0 + 3584);
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1[17];
  v8 = v1[18];
  v9 = v1[19];
  v10 = v1[20];
  *(v1 + 17) = 0u;
  *(v1 + 15) = 0u;
  *(v1 + 19) = 0u;
  sub_1DAF6080C(v5, v6, v7, v8, v9, v10);
  sub_1DAF4FA0C();
  if (v4 == 1)
  {
    sub_1DB09DC04();
    sub_1DB09D464();
  }

  sub_1DAF8C320(*(v0 + 5104), type metadata accessor for ODISignpost);

  return MEMORY[0x1EEE6DFA0](sub_1DAF84884, 0, 0);
}

uint64_t sub_1DAF84754()
{
  v1 = *(v0 + 5344);

  return MEMORY[0x1EEE6DFA0](sub_1DAF847C0, v1, 0);
}

uint64_t sub_1DAF847C0()
{
  v1 = *(v0 + 5344);

  v2 = v1[15];
  v3 = v1[16];
  v4 = v1[17];
  v5 = v1[18];
  v6 = v1[19];
  v7 = v1[20];
  *(v1 + 15) = 0u;
  *(v1 + 17) = 0u;
  *(v1 + 19) = 0u;
  sub_1DAF6080C(v2, v3, v4, v5, v6, v7);
  *(v0 + 5424) = *(v0 + 5464);
  v8 = *(v0 + 5104);
  sub_1DAF4FA0C();
  sub_1DAF8C320(v8, type metadata accessor for ODISignpost);

  return MEMORY[0x1EEE6DFA0](sub_1DAF83F48, 0, 0);
}

uint64_t sub_1DAF84884()
{
  v1 = v0[675];
  v2 = v0[668];
  v3 = v0[635];
  v4 = sub_1DB09DA24();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;

  sub_1DAF4F0EC(0, 0, v3, &unk_1DB0A5188, v5);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8498C, v2, 0);
}

uint64_t sub_1DAF8498C()
{
  v1 = v0[672];
  v2 = v0[671];
  v3 = v0[630];
  sub_1DAF60AF4(v0[669], v0[670]);

  sub_1DAF40780(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1DAF84A24, v3, 0);
}

uint64_t sub_1DAF84A24()
{
  v1 = 0;
  v2 = 0;
  *(v0 + 5472) = sub_1DB09D014();
  *(v0 + 5480) = v3;
  v4 = *(v0 + 4208);
  if (v4 >> 60 != 15)
  {
    v5 = *(v0 + 4200);
    sub_1DAF40674(v5, *(v0 + 4208));
    v1 = sub_1DB09D014();
    v2 = v6;
    sub_1DAF4AC40(v5, v4);
  }

  *(v0 + 5496) = v2;
  *(v0 + 5488) = v1;
  v7 = *(v0 + 4216);
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 3164) = v9;
    v10 = *(v0 + 4560);
    v11 = *(v0 + 4568);
    __swift_project_boxed_opaque_existential_1((v0 + 4536), v10);
    *(v0 + 5504) = (*(v11 + 24))(v10, v11);
    *(v0 + 5512) = v12;
    v13 = *(v0 + 4560);
    v14 = *(v0 + 4568);
    __swift_project_boxed_opaque_existential_1((v0 + 4536), v13);
    (*(v14 + 64))(v13, v14);
    if (qword_1EE301710 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v15 = qword_1EE30A060;
  *(v0 + 5520) = qword_1EE30A060;

  return MEMORY[0x1EEE6DFA0](sub_1DAF84BBC, v15, 0);
}

uint64_t sub_1DAF84BBC()
{
  v1 = v0[690];
  v2 = *(v1 + 120);
  if (v2)
  {
    v3 = *(v1 + 112);
    v0[695] = v2;
    v0[694] = v3;
    v4 = v0[630];

    return MEMORY[0x1EEE6DFA0](sub_1DAF84E50, v4, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[691] = v5;
    *v5 = v0;
    v5[1] = sub_1DAF84CA4;

    return sub_1DAFB1344();
  }
}

uint64_t sub_1DAF84CA4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 5520);
  *(v3 + 5536) = a1;
  *(v3 + 5544) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF84DC0, v4, 0);
}

uint64_t sub_1DAF84DC0()
{
  v1 = v0[693];
  v2 = v0[690];
  *(v2 + 112) = v0[692];
  *(v2 + 120) = v1;

  v3 = v0[692];
  v0[695] = v0[693];
  v0[694] = v3;
  v4 = v0[630];

  return MEMORY[0x1EEE6DFA0](sub_1DAF84E50, v4, 0);
}

uint64_t sub_1DAF84E50()
{
  v85 = v0;
  v1 = (v0 + 2896);
  v2 = *(v0 + 5312);
  v3 = (*(*(v0 + 5040) + 248) + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v4 = v3[1];
  v82 = *v3;
  v5 = qword_1EE301DD0;

  if (v5 != -1)
  {
    swift_once();
    v2 = *(v0 + 5312);
  }

  v6 = *(v0 + 5560);
  v7 = *(v0 + 5552);
  v8 = *(v0 + 3164);
  v79 = *(v0 + 5304);
  v77 = *(v0 + 5296);
  v9 = *(v0 + 5168);
  v10 = *(v0 + 5160);
  v11 = (*(v0 + 1668) - 1) < 2;
  v13 = qword_1EE309EE0;
  v12 = qword_1EE309EE8;
  *(v0 + 5616) = 0;
  *(v0 + 1240) = v10;
  *(v0 + 1248) = v9;
  *(v0 + 1256) = *(v0 + 5504);
  v14 = *(v0 + 3440);
  v15 = *(v0 + 3456);
  v16 = *(v0 + 3504);
  *(v0 + 1320) = *(v0 + 3488);
  *(v0 + 1336) = v16;
  v17 = *(v0 + 3472);
  *(v0 + 1288) = v15;
  *(v0 + 1304) = v17;
  *(v0 + 1272) = v14;
  *(v0 + 1352) = v7;
  *(v0 + 1360) = v6;
  *(v0 + 1368) = v82;
  *(v0 + 1376) = v4;
  *(v0 + 1384) = v2;
  *(v0 + 1392) = v8;
  *(v0 + 1400) = *(v0 + 5616);
  *(v0 + 1401) = *(v0 + 1449);
  *(v0 + 1404) = *(v0 + 1452);
  *(v0 + 1408) = 0;
  *(v0 + 1416) = v13;
  *(v0 + 1424) = v12;
  *(v0 + 1432) = -45;
  *(v0 + 1433) = *(v0 + 1233);
  *(v0 + 1436) = *(v0 + 1236);
  *(v0 + 1440) = 0;
  *(v0 + 1448) = v11;
  v84 = 14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7B0, &qword_1DB0A5190);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DB0A5000;
  *(v18 + 32) = 0x73676E69646E6962;
  *(v18 + 40) = 0xE800000000000000;
  v19 = *(v0 + 5024);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7B8, &qword_1DB0A5198);
  *(v18 + 48) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = 1684632436;
  v21 = MEMORY[0x1E69E6158];
  *(v18 + 88) = 0xE400000000000000;
  *(v18 + 96) = v77;
  *(v18 + 104) = v79;
  *(v18 + 120) = v21;
  *(v18 + 128) = 0xD000000000000011;
  *(v18 + 168) = v21;
  *(v18 + 136) = 0x80000001DB0C14B0;
  *(v18 + 144) = v82;
  *(v18 + 152) = v4;

  v22 = sub_1DAF3E128(v18);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E390, &unk_1DB0A51A0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v23._countAndFlagsBits = 0xD000000000000014;
  v23._object = 0x80000001DB0C3650;
  CoreODILogger.milestone(tag:description:dictionary:isSensitive:)(&v84, v23, v22, 1);

  v24 = *(v0 + 3008);
  *(v0 + 1904) = *(v0 + 2992);
  *(v0 + 1920) = v24;
  *(v0 + 1936) = *(v0 + 3024);
  v25 = *(v0 + 2944);
  *(v0 + 1840) = *(v0 + 2928);
  *(v0 + 1856) = v25;
  v26 = *(v0 + 2976);
  *(v0 + 1872) = *(v0 + 2960);
  *(v0 + 1888) = v26;
  v27 = *(v0 + 2912);
  *(v0 + 1808) = *v1;
  *(v0 + 1824) = v27;
  v28 = sub_1DAF8B9A8(v0 + 1808);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (v28 != 1)
  {
    v29 = *(v0 + 1808) + 49;
    v31 = *(v0 + 1880);
    v32 = *(v0 + 1888);
    v33 = *(v0 + 1896);
    v34 = *(v0 + 1904);
    v35 = *(v0 + 1912);
    v36 = *(v0 + 1920);

    v30 = 0xE100000000000000;
  }

  v68 = v36;
  v69 = v31;
  v72 = v34;
  v73 = v30;
  v74 = v35;
  v70 = v32;
  v71 = *(v0 + 5496);
  v37 = *(v0 + 5488);
  v67 = *(v0 + 5472);
  v38 = *(v0 + 5304);
  v39 = *(v0 + 5296);
  v80 = *(v0 + 5288);
  v78 = *(v0 + 5280);
  v75 = *(v0 + 5264);
  v76 = *(v0 + 5272);
  v40 = *(v0 + 5144);
  v81 = *(v0 + 5136);
  v83 = *(v0 + 5152);
  v41 = v33;
  v42 = *(v0 + 5032);
  sub_1DAF3523C(v0 + 4536, v42 + 424);
  *v42 = *v1;
  v43 = *(v0 + 2960);
  v45 = *(v0 + 2912);
  v44 = *(v0 + 2928);
  *(v42 + 48) = *(v0 + 2944);
  *(v42 + 64) = v43;
  *(v42 + 16) = v45;
  *(v42 + 32) = v44;
  v47 = *(v0 + 2992);
  v46 = *(v0 + 3008);
  v48 = *(v0 + 2976);
  *(v42 + 128) = *(v0 + 3024);
  *(v42 + 96) = v47;
  *(v42 + 112) = v46;
  *(v42 + 80) = v48;
  v49 = *(v0 + 2888);
  v51 = *(v0 + 2856);
  v50 = *(v0 + 2872);
  *(v42 + 216) = *(v0 + 2840);
  *(v42 + 232) = v51;
  *(v42 + 248) = v50;
  *(v42 + 264) = v49;
  v53 = *(v0 + 2808);
  v52 = *(v0 + 2824);
  v54 = *(v0 + 2792);
  *(v42 + 152) = *(v0 + 2776);
  *(v42 + 168) = v54;
  *(v42 + 184) = v53;
  *(v42 + 200) = v52;
  *(v42 + 136) = *(v0 + 2760);
  *(v42 + 272) = v39;
  *(v42 + 280) = v38;
  *(v42 + 288) = v67;
  *(v42 + 304) = v37;
  *(v42 + 312) = v71;
  *(v42 + 320) = 0u;
  *(v42 + 336) = 0u;
  *(v42 + 352) = 1;
  *(v42 + 360) = v29;
  *(v42 + 368) = v73;
  *(v42 + 376) = v69;
  *(v42 + 384) = v70;
  *(v42 + 392) = v41;
  *(v42 + 400) = v72;
  *(v42 + 408) = v74;
  *(v42 + 416) = v68;
  v55 = *(v0 + 1256);
  *(v42 + 464) = *(v0 + 1240);
  *(v42 + 480) = v55;
  v56 = *(v0 + 1272);
  v57 = *(v0 + 1288);
  v58 = *(v0 + 1320);
  *(v42 + 528) = *(v0 + 1304);
  *(v42 + 544) = v58;
  *(v42 + 496) = v56;
  *(v42 + 512) = v57;
  v59 = *(v0 + 1336);
  v60 = *(v0 + 1352);
  v61 = *(v0 + 1384);
  *(v42 + 592) = *(v0 + 1368);
  *(v42 + 608) = v61;
  *(v42 + 560) = v59;
  *(v42 + 576) = v60;
  v62 = *(v0 + 1400);
  v63 = *(v0 + 1416);
  v64 = *(v0 + 1432);
  *(v42 + 672) = *(v0 + 1448);
  *(v42 + 640) = v63;
  *(v42 + 656) = v64;
  *(v42 + 624) = v62;
  type metadata accessor for ODNAssessmentResult(0);

  sub_1DAF8BDD0(v0 + 1240, v0 + 1024);
  sub_1DB09DF34();
  sub_1DAF8BA68(v0 + 4232);
  sub_1DAF8BE2C(v0 + 4168);
  sub_1DAF4AC40(v75, v76);

  sub_1DAF8BE80(v0 + 1240);
  sub_1DAF40780(v78, v80);
  (*(v40 + 8))(v83, v81);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4536));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1DAF854B4()
{
  v1 = *(*v0 + 5040);

  return MEMORY[0x1EEE6DFA0](sub_1DAF855C4, v1, 0);
}

uint64_t sub_1DAF855C4()
{
  v1 = *(v0 + 5600);
  v2 = *(v0 + 5592);
  v3 = *(v0 + 3161);
  v4 = *(v0 + 5568);
  v5 = *(v0 + 5288);
  v6 = *(v0 + 5280);
  v35 = *(v0 + 5152);
  v7 = *(v0 + 5144);
  v8 = *(v0 + 5136);
  v9 = *(v0 + 5576);
  v10 = *(v0 + 5032);
  v11 = *(v0 + 2928);
  v12 = *(v0 + 2960);
  v13 = *(v0 + 2912);
  *(v10 + 48) = *(v0 + 2944);
  *(v10 + 64) = v12;
  *(v10 + 16) = v13;
  *(v10 + 32) = v11;
  v14 = *(v0 + 2992);
  v15 = *(v0 + 3008);
  v16 = *(v0 + 2976);
  *(v10 + 128) = *(v0 + 3024);
  *(v10 + 96) = v14;
  *(v10 + 112) = v15;
  *(v10 + 80) = v16;
  *v10 = *(v0 + 2896);
  *(v10 + 136) = *(v0 + 2760);
  v17 = *(v0 + 2776);
  v18 = *(v0 + 2792);
  v19 = *(v0 + 2808);
  *(v10 + 200) = *(v0 + 2824);
  *(v10 + 184) = v19;
  *(v10 + 168) = v18;
  *(v10 + 152) = v17;
  v20 = *(v0 + 2840);
  v21 = *(v0 + 2856);
  v22 = *(v0 + 2872);
  *(v10 + 264) = *(v0 + 2888);
  *(v10 + 248) = v22;
  *(v10 + 232) = v21;
  *(v10 + 216) = v20;
  *(v10 + 272) = 0u;
  *(v10 + 288) = 0u;
  *(v10 + 304) = 0u;
  *(v10 + 320) = v9;
  *(v10 + 336) = v3;
  *(v10 + 344) = v2;
  *(v10 + 352) = v1;
  *(v10 + 392) = 0u;
  *(v10 + 408) = 0u;
  *(v10 + 360) = 0u;
  *(v10 + 376) = 0u;
  v23 = *(v0 + 1472);
  *(v10 + 464) = *(v0 + 1456);
  *(v10 + 480) = v23;
  v24 = *(v0 + 1488);
  v25 = *(v0 + 1504);
  v26 = *(v0 + 1536);
  *(v10 + 528) = *(v0 + 1520);
  *(v10 + 544) = v26;
  *(v10 + 496) = v24;
  *(v10 + 512) = v25;
  v27 = *(v0 + 1552);
  v28 = *(v0 + 1568);
  v29 = *(v0 + 1600);
  *(v10 + 592) = *(v0 + 1584);
  *(v10 + 608) = v29;
  *(v10 + 560) = v27;
  *(v10 + 576) = v28;
  v30 = *(v0 + 1616);
  v31 = *(v0 + 1632);
  v32 = *(v0 + 1648);
  *(v10 + 672) = *(v0 + 1664);
  *(v10 + 640) = v31;
  *(v10 + 656) = v32;
  *(v10 + 624) = v30;
  type metadata accessor for ODNAssessmentResult(0);
  sub_1DB09DF34();

  sub_1DAF40780(v6, v5);
  (*(v7 + 8))(v35, v8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4536));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1DAF85834()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 4656));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF85904(uint64_t a1, uint64_t a2)
{
  v3[1342] = v2;
  v3[1341] = a2;
  v3[1340] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8592C, v2, 0);
}

uint64_t sub_1DAF8592C()
{
  v29 = v0;
  v1 = *(v0 + 10728);
  *(v0 + 10704) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 10712);
    *(v0 + 10744) = v3;
    v4 = *(v0 + 10736);
    if (v3)
    {
      if (v3 == 1)
      {
        v27 = 106;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_1DB0A04E0;
        *(v5 + 32) = 0;
        swift_beginAccess();
        v7 = *(v4 + 416);
        v6 = *(v4 + 424);
        *(v5 + 64) = MEMORY[0x1E69E6158];
        *(v5 + 40) = v7;
        *(v5 + 48) = v6;

        v8 = sub_1DAF3E280(v5);
        swift_setDeallocating();
        sub_1DAF40AEC(v5 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
        swift_deallocClassInstance();
        v9 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, 0, &v27, 0, v8, 0xD00000000000002DLL, 0x80000001DB0C3590, 0xD000000000000019, 0x80000001DB0C35C0, 529);
        *(v0 + 10840) = v9;

        v10 = *(v4 + 416);
        v11 = *(v4 + 424);

        sub_1DB041E04(v9, v10, v11, v0 + 10360);
        *(v0 + 10848) = *(v0 + 10360);
        *(v0 + 1194) = *(v0 + 10376);
        *(v0 + 10864) = *(v0 + 10384);
        *(v0 + 10656) = *(v0 + 10384);
        sub_1DAF40A84(v0 + 10656, v0 + 10640, &unk_1ECC0EAE0, &unk_1DB0A4650);

        *(v0 + 1788) = MKBGetDeviceLockState();
        sub_1DAF8B8D8(v4 + 400, v0 + 5344);
        v12 = sub_1DAF86B7C;
      }

      else
      {
        swift_beginAccess();
        v24 = *(v4 + 416);
        v25 = *(v4 + 424);
        sub_1DAF8B988(v3);

        sub_1DB041E04(v3, v24, v25, v0 + 10160);
        *(v0 + 10752) = *(v0 + 10160);
        *(v0 + 602) = *(v0 + 10176);
        *(v0 + 10768) = *(v0 + 10184);
        *(v0 + 10608) = *(v0 + 10184);
        sub_1DAF40A84(v0 + 10608, v0 + 10592, &unk_1ECC0EAE0, &unk_1DB0A4650);

        *(v0 + 604) = MKBGetDeviceLockState();
        sub_1DAF8B8D8(v4 + 400, v0 + 1792);
        v12 = sub_1DAF85ED4;
      }
    }

    else
    {
      v28 = 103;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DB0A04E0;
      *(v17 + 32) = 0;
      swift_beginAccess();
      v19 = *(v4 + 416);
      v18 = *(v4 + 424);
      *(v17 + 64) = MEMORY[0x1E69E6158];
      *(v17 + 40) = v19;
      *(v17 + 48) = v18;

      v20 = sub_1DAF3E280(v17);
      swift_setDeallocating();
      sub_1DAF40AEC(v17 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
      swift_deallocClassInstance();
      v21 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0, 0xE000000000000000, 0, &v28, 0, v20, 0xD00000000000002DLL, 0x80000001DB0C3590, 0xD000000000000019, 0x80000001DB0C35C0, 525);
      *(v0 + 10792) = v21;

      v22 = *(v4 + 416);
      v23 = *(v4 + 424);

      sub_1DB041E04(v21, v22, v23, v0 + 10320);
      *(v0 + 10800) = *(v0 + 10320);
      *(v0 + 603) = *(v0 + 10336);
      *(v0 + 10816) = *(v0 + 10344);
      *(v0 + 10624) = *(v0 + 10344);
      sub_1DAF40A84(v0 + 10624, v0 + 10576, &unk_1ECC0EAE0, &unk_1DB0A4650);

      *(v0 + 1196) = MKBGetDeviceLockState();
      sub_1DAF8B8D8(v4 + 400, v0 + 3568);
      v12 = sub_1DAF86528;
    }
  }

  else
  {
    v13 = *(v0 + 10736);
    v14 = *(v0 + 10728);
    swift_beginAccess();
    v15 = *(v13 + 416);
    v16 = *(v13 + 424);

    sub_1DB041E04(v14, v15, v16, v0 + 10400);
    *(v0 + 10888) = *(v0 + 10400);
    *(v0 + 1195) = *(v0 + 10416);
    *(v0 + 10904) = *(v0 + 10424);
    *(v0 + 10912) = *(v0 + 10432);
    *(v0 + 10688) = *(v0 + 10424);
    sub_1DAF40A84(v0 + 10688, v0 + 10672, &unk_1ECC0EAE0, &unk_1DB0A4650);

    *(v0 + 2380) = MKBGetDeviceLockState();
    sub_1DAF8B8D8(v13 + 400, v0 + 16);
    v12 = sub_1DAF871DC;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1DAF85ED4()
{
  v1 = *(v0 + 10736);
  sub_1DAF3523C(v0 + 1840, v0 + 10200);
  sub_1DAF8B934(v0 + 1792);

  return MEMORY[0x1EEE6DFA0](sub_1DAF85F50, v1, 0);
}

uint64_t sub_1DAF85F50()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 1200);

  return MEMORY[0x1EEE6DFA0](sub_1DAF85FC0, 0, 0);
}

uint64_t sub_1DAF85FC0()
{
  v1 = *(v0 + 10736);
  *(v0 + 9608) = *(v0 + 1416);
  v2 = *(v0 + 1400);
  *(v0 + 9576) = *(v0 + 1384);
  *(v0 + 9592) = v2;
  v3 = *(v0 + 1336);
  *(v0 + 9512) = *(v0 + 1320);
  *(v0 + 9528) = v3;
  v4 = *(v0 + 1368);
  *(v0 + 9544) = *(v0 + 1352);
  *(v0 + 9560) = v4;
  v5 = *(v0 + 1304);
  *(v0 + 9480) = *(v0 + 1288);
  *(v0 + 9496) = v5;
  sub_1DAF40A84(v0 + 9480, v0 + 8800, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 1200);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8607C, v1, 0);
}

uint64_t sub_1DAF8607C()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1DAF860EC, 0, 0);
}

uint64_t sub_1DAF860EC()
{
  v1 = *(v0 + 992);
  *(v0 + 8064) = *(v0 + 1008);
  *(v0 + 8080) = *(v0 + 1024);
  *(v0 + 8096) = *(v0 + 1040);
  v2 = *(v0 + 928);
  *(v0 + 8000) = *(v0 + 944);
  v3 = *(v0 + 976);
  *(v0 + 8016) = *(v0 + 960);
  *(v0 + 8032) = v3;
  *(v0 + 8048) = v1;
  v4 = *(v0 + 604);
  v5 = *(v0 + 10720);
  *(v0 + 8112) = *(v0 + 1056);
  *(v0 + 7984) = v2;
  sub_1DAF40A84(v0 + 7984, v0 + 8528, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 608);
  sub_1DAF3523C(v0 + 10200, v5 + 424);
  v6 = swift_task_alloc();
  *(v0 + 10784) = v6;
  *v6 = v0;
  v6[1] = sub_1DAF86220;

  return sub_1DAF8AD6C(v0 + 7120, 0, (v4 - 1) < 2);
}

uint64_t sub_1DAF86220()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF8631C, 0, 0);
}

uint64_t sub_1DAF8631C()
{
  v1 = *(v0 + 602);
  v2 = *(v0 + 10736);
  v3 = *(v0 + 10720);
  v4 = *(v0 + 10752);
  v5 = *(v0 + 10768);
  v6 = *(v0 + 9544);
  v8 = *(v0 + 9496);
  v7 = *(v0 + 9512);
  *(v3 + 48) = *(v0 + 9528);
  *(v3 + 64) = v6;
  *(v3 + 16) = v8;
  *(v3 + 32) = v7;
  v10 = *(v0 + 9576);
  v9 = *(v0 + 9592);
  v11 = *(v0 + 9560);
  *(v3 + 128) = *(v0 + 9608);
  *(v3 + 96) = v10;
  *(v3 + 112) = v9;
  *(v3 + 80) = v11;
  *v3 = *(v0 + 9480);
  *(v3 + 136) = *(v0 + 7984);
  v12 = *(v0 + 8000);
  v13 = *(v0 + 8016);
  v14 = *(v0 + 8032);
  *(v3 + 200) = *(v0 + 8048);
  *(v3 + 184) = v14;
  *(v3 + 168) = v13;
  *(v3 + 152) = v12;
  v15 = *(v0 + 8064);
  v16 = *(v0 + 8080);
  v17 = *(v0 + 8096);
  *(v3 + 264) = *(v0 + 8112);
  *(v3 + 248) = v17;
  *(v3 + 232) = v16;
  *(v3 + 216) = v15;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = v4;
  *(v3 + 336) = v1;
  *(v3 + 344) = v5;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  v18 = *(v0 + 7136);
  *(v3 + 464) = *(v0 + 7120);
  *(v3 + 480) = v18;
  v19 = *(v0 + 7152);
  v20 = *(v0 + 7168);
  v21 = *(v0 + 7200);
  *(v3 + 528) = *(v0 + 7184);
  *(v3 + 544) = v21;
  *(v3 + 496) = v19;
  *(v3 + 512) = v20;
  v22 = *(v0 + 7216);
  v23 = *(v0 + 7232);
  v24 = *(v0 + 7264);
  *(v3 + 592) = *(v0 + 7248);
  *(v3 + 608) = v24;
  *(v3 + 560) = v22;
  *(v3 + 576) = v23;
  v25 = *(v0 + 7280);
  v26 = *(v0 + 7296);
  v27 = *(v0 + 7312);
  *(v3 + 672) = *(v0 + 7328);
  *(v3 + 640) = v26;
  *(v3 + 656) = v27;
  *(v3 + 624) = v25;
  type metadata accessor for ODNAssessmentResult(0);
  sub_1DB09DF34();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 10200));

  return MEMORY[0x1EEE6DFA0](sub_1DAF864BC, v2, 0);
}

uint64_t sub_1DAF864BC()
{
  v1 = *(v0 + 10744);
  sub_1DAF8B998(v1);
  sub_1DAF8B998(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAF86528()
{
  v1 = *(v0 + 10736);
  sub_1DAF3523C(v0 + 3616, v0 + 10280);
  sub_1DAF8B934(v0 + 3568);

  return MEMORY[0x1EEE6DFA0](sub_1DAF865A4, v1, 0);
}

uint64_t sub_1DAF865A4()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 2976);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86614, 0, 0);
}

uint64_t sub_1DAF86614()
{
  v1 = *(v0 + 10736);
  *(v0 + 9336) = *(v0 + 3192);
  v2 = *(v0 + 3176);
  *(v0 + 9304) = *(v0 + 3160);
  *(v0 + 9320) = v2;
  v3 = *(v0 + 3112);
  *(v0 + 9240) = *(v0 + 3096);
  *(v0 + 9256) = v3;
  v4 = *(v0 + 3144);
  *(v0 + 9272) = *(v0 + 3128);
  *(v0 + 9288) = v4;
  v5 = *(v0 + 3080);
  *(v0 + 9208) = *(v0 + 3064);
  *(v0 + 9224) = v5;
  sub_1DAF40A84(v0 + 9208, v0 + 8664, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 2976);

  return MEMORY[0x1EEE6DFA0](sub_1DAF866D0, v1, 0);
}

uint64_t sub_1DAF866D0()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 2384);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86740, 0, 0);
}

uint64_t sub_1DAF86740()
{
  v1 = *(v0 + 1196);
  v2 = *(v0 + 10720);
  *(v0 + 9424) = *(v0 + 2784);
  *(v0 + 9440) = *(v0 + 2800);
  *(v0 + 9456) = *(v0 + 2816);
  *(v0 + 9472) = *(v0 + 2832);
  *(v0 + 9360) = *(v0 + 2720);
  *(v0 + 9376) = *(v0 + 2736);
  *(v0 + 9392) = *(v0 + 2752);
  *(v0 + 9408) = *(v0 + 2768);
  *(v0 + 9344) = *(v0 + 2704);
  sub_1DAF40A84(v0 + 9344, v0 + 8256, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 2384);
  sub_1DAF3523C(v0 + 10280, v2 + 424);
  v3 = swift_task_alloc();
  *(v0 + 10832) = v3;
  *v3 = v0;
  v3[1] = sub_1DAF86880;

  return sub_1DAF8AD6C(v0 + 7552, 0, (v1 - 1) < 2);
}

uint64_t sub_1DAF86880()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF8697C, 0, 0);
}

uint64_t sub_1DAF8697C()
{
  v1 = *(v0 + 603);
  v2 = *(v0 + 10736);
  v3 = *(v0 + 10720);
  v4 = *(v0 + 10800);
  v5 = *(v0 + 10816);
  v6 = *(v0 + 9272);
  v8 = *(v0 + 9224);
  v7 = *(v0 + 9240);
  *(v3 + 48) = *(v0 + 9256);
  *(v3 + 64) = v6;
  *(v3 + 16) = v8;
  *(v3 + 32) = v7;
  v10 = *(v0 + 9304);
  v9 = *(v0 + 9320);
  v11 = *(v0 + 9288);
  *(v3 + 128) = *(v0 + 9336);
  *(v3 + 96) = v10;
  *(v3 + 112) = v9;
  *(v3 + 80) = v11;
  *v3 = *(v0 + 9208);
  *(v3 + 136) = *(v0 + 9344);
  v12 = *(v0 + 9360);
  v13 = *(v0 + 9376);
  v14 = *(v0 + 9392);
  *(v3 + 200) = *(v0 + 9408);
  *(v3 + 184) = v14;
  *(v3 + 168) = v13;
  *(v3 + 152) = v12;
  v15 = *(v0 + 9424);
  v16 = *(v0 + 9440);
  v17 = *(v0 + 9456);
  *(v3 + 264) = *(v0 + 9472);
  *(v3 + 248) = v17;
  *(v3 + 232) = v16;
  *(v3 + 216) = v15;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = v4;
  *(v3 + 336) = v1;
  *(v3 + 344) = v5;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  v18 = *(v0 + 7568);
  *(v3 + 464) = *(v0 + 7552);
  *(v3 + 480) = v18;
  v19 = *(v0 + 7584);
  v20 = *(v0 + 7600);
  v21 = *(v0 + 7632);
  *(v3 + 528) = *(v0 + 7616);
  *(v3 + 544) = v21;
  *(v3 + 496) = v19;
  *(v3 + 512) = v20;
  v22 = *(v0 + 7648);
  v23 = *(v0 + 7664);
  v24 = *(v0 + 7696);
  *(v3 + 592) = *(v0 + 7680);
  *(v3 + 608) = v24;
  *(v3 + 560) = v22;
  *(v3 + 576) = v23;
  v25 = *(v0 + 7712);
  v26 = *(v0 + 7728);
  v27 = *(v0 + 7744);
  *(v3 + 672) = *(v0 + 7760);
  *(v3 + 640) = v26;
  *(v3 + 656) = v27;
  *(v3 + 624) = v25;
  type metadata accessor for ODNAssessmentResult(0);
  sub_1DB09DF34();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 10280));

  return MEMORY[0x1EEE6DFA0](sub_1DAF86B1C, v2, 0);
}

uint64_t sub_1DAF86B1C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF86B7C()
{
  v1 = *(v0 + 10736);
  sub_1DAF3523C(v0 + 5392, v0 + 10240);
  sub_1DAF8B934(v0 + 5344);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86C00, v1, 0);
}

uint64_t sub_1DAF86C00()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 4752);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86C74, 0, 0);
}

uint64_t sub_1DAF86C74()
{
  v1 = *(v0 + 4904);
  *(v0 + 9152) = *(v0 + 4920);
  v2 = *(v0 + 4952);
  *(v0 + 9168) = *(v0 + 4936);
  *(v0 + 9184) = v2;
  v3 = *(v0 + 4840);
  *(v0 + 9088) = *(v0 + 4856);
  v4 = *(v0 + 4888);
  *(v0 + 9104) = *(v0 + 4872);
  *(v0 + 9120) = v4;
  *(v0 + 9136) = v1;
  v5 = *(v0 + 10736);
  *(v0 + 9200) = *(v0 + 4968);
  *(v0 + 9072) = v3;
  sub_1DAF40A84(v0 + 9072, v0 + 9616, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 4752);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86D48, v5, 0);
}

uint64_t sub_1DAF86D48()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 4160);

  return MEMORY[0x1EEE6DFA0](sub_1DAF86DBC, 0, 0);
}

uint64_t sub_1DAF86DBC()
{
  v1 = *(v0 + 1788);
  v2 = *(v0 + 10720);
  *(v0 + 9064) = *(v0 + 4608);
  v3 = *(v0 + 4560);
  v4 = *(v0 + 4592);
  *(v0 + 9032) = *(v0 + 4576);
  *(v0 + 9048) = v4;
  v5 = *(v0 + 4496);
  v6 = *(v0 + 4528);
  *(v0 + 8968) = *(v0 + 4512);
  *(v0 + 8984) = v6;
  *(v0 + 9000) = *(v0 + 4544);
  *(v0 + 9016) = v3;
  *(v0 + 8936) = *(v0 + 4480);
  *(v0 + 8952) = v5;
  sub_1DAF40A84(v0 + 8936, v0 + 9888, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 4160);
  sub_1DAF3523C(v0 + 10240, v2 + 424);
  v7 = swift_task_alloc();
  *(v0 + 10880) = v7;
  *v7 = v0;
  v7[1] = sub_1DAF86EF8;

  return sub_1DAF8AD6C(v0 + 7768, 0, (v1 - 1) < 2);
}

uint64_t sub_1DAF86EF8()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF86FF4, 0, 0);
}

uint64_t sub_1DAF86FF4()
{
  v1 = *(v0 + 1194);
  v2 = *(v0 + 10736);
  v3 = *(v0 + 10720);
  v4 = *(v0 + 10848);
  v5 = *(v0 + 10864);
  v6 = *(v0 + 9104);
  v7 = *(v0 + 9136);
  v8 = *(v0 + 9088);
  *(v3 + 48) = *(v0 + 9120);
  *(v3 + 64) = v7;
  *(v3 + 16) = v8;
  *(v3 + 32) = v6;
  v9 = *(v0 + 9168);
  v10 = *(v0 + 9184);
  v11 = *(v0 + 9152);
  *(v3 + 128) = *(v0 + 9200);
  *(v3 + 96) = v9;
  *(v3 + 112) = v10;
  *(v3 + 80) = v11;
  *v3 = *(v0 + 9072);
  *(v3 + 136) = *(v0 + 8936);
  v12 = *(v0 + 8952);
  v13 = *(v0 + 8968);
  v14 = *(v0 + 8984);
  *(v3 + 200) = *(v0 + 9000);
  *(v3 + 184) = v14;
  *(v3 + 168) = v13;
  *(v3 + 152) = v12;
  v15 = *(v0 + 9016);
  v16 = *(v0 + 9032);
  v17 = *(v0 + 9048);
  *(v3 + 264) = *(v0 + 9064);
  *(v3 + 248) = v17;
  *(v3 + 232) = v16;
  *(v3 + 216) = v15;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = v4;
  *(v3 + 336) = v1;
  *(v3 + 344) = v5;
  *(v3 + 392) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  v18 = *(v0 + 7784);
  *(v3 + 464) = *(v0 + 7768);
  *(v3 + 480) = v18;
  v19 = *(v0 + 7800);
  v20 = *(v0 + 7816);
  v21 = *(v0 + 7848);
  *(v3 + 528) = *(v0 + 7832);
  *(v3 + 544) = v21;
  *(v3 + 496) = v19;
  *(v3 + 512) = v20;
  v22 = *(v0 + 7864);
  v23 = *(v0 + 7880);
  v24 = *(v0 + 7912);
  *(v3 + 592) = *(v0 + 7896);
  *(v3 + 608) = v24;
  *(v3 + 560) = v22;
  *(v3 + 576) = v23;
  v25 = *(v0 + 7928);
  v26 = *(v0 + 7944);
  v27 = *(v0 + 7960);
  *(v3 + 672) = *(v0 + 7976);
  *(v3 + 640) = v26;
  *(v3 + 656) = v27;
  *(v3 + 624) = v25;
  type metadata accessor for ODNAssessmentResult(0);
  sub_1DB09DF34();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 10240));

  return MEMORY[0x1EEE6DFA0](sub_1DAF8717C, v2, 0);
}

uint64_t sub_1DAF8717C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF871DC()
{
  v1 = *(v0 + 10736);
  sub_1DAF3523C(v0 + 64, v0 + 10440);
  sub_1DAF8B934(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAF87258, v1, 0);
}

uint64_t sub_1DAF87258()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 6528);

  return MEMORY[0x1EEE6DFA0](sub_1DAF872CC, 0, 0);
}

uint64_t sub_1DAF872CC()
{
  v1 = *(v0 + 10736);
  *(v0 + 9880) = *(v0 + 6744);
  v2 = *(v0 + 6728);
  *(v0 + 9848) = *(v0 + 6712);
  *(v0 + 9864) = v2;
  v3 = *(v0 + 6664);
  *(v0 + 9784) = *(v0 + 6648);
  *(v0 + 9800) = v3;
  v4 = *(v0 + 6696);
  *(v0 + 9816) = *(v0 + 6680);
  *(v0 + 9832) = v4;
  v5 = *(v0 + 6632);
  *(v0 + 9752) = *(v0 + 6616);
  *(v0 + 9768) = v5;
  sub_1DAF40A84(v0 + 9752, v0 + 10024, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 6528);

  return MEMORY[0x1EEE6DFA0](sub_1DAF87390, v1, 0);
}

uint64_t sub_1DAF87390()
{
  sub_1DAF8B8D8(*(v0 + 10736) + 400, v0 + 5936);

  return MEMORY[0x1EEE6DFA0](sub_1DAF87404, 0, 0);
}

uint64_t sub_1DAF87404()
{
  v1 = *(v0 + 2380);
  v2 = *(v0 + 10720);
  *(v0 + 8248) = *(v0 + 6384);
  v3 = *(v0 + 6336);
  v4 = *(v0 + 6368);
  *(v0 + 8216) = *(v0 + 6352);
  *(v0 + 8232) = v4;
  v5 = *(v0 + 6272);
  v6 = *(v0 + 6304);
  *(v0 + 8152) = *(v0 + 6288);
  *(v0 + 8168) = v6;
  *(v0 + 8184) = *(v0 + 6320);
  *(v0 + 8200) = v3;
  *(v0 + 8120) = *(v0 + 6256);
  *(v0 + 8136) = v5;
  sub_1DAF40A84(v0 + 8120, v0 + 8392, &qword_1ECC0E798, &qword_1DB0A5120);
  sub_1DAF8B934(v0 + 5936);
  sub_1DAF3523C(v0 + 10440, v2 + 424);
  v7 = swift_task_alloc();
  *(v0 + 10920) = v7;
  *v7 = v0;
  v7[1] = sub_1DAF87540;

  return sub_1DAF8AD6C(v0 + 7336, 0, (v1 - 1) < 2);
}

uint64_t sub_1DAF87540()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF8763C, 0, 0);
}

uint64_t sub_1DAF8763C()
{
  v1 = *(v0 + 10912);
  v2 = *(v0 + 10904);
  v3 = *(v0 + 1195);
  v4 = *(v0 + 10888);
  v5 = *(v0 + 10720);
  v6 = *(v0 + 9816);
  v8 = *(v0 + 9768);
  v7 = *(v0 + 9784);
  *(v5 + 48) = *(v0 + 9800);
  *(v5 + 64) = v6;
  *(v5 + 16) = v8;
  *(v5 + 32) = v7;
  v10 = *(v0 + 9848);
  v9 = *(v0 + 9864);
  v11 = *(v0 + 9832);
  *(v5 + 128) = *(v0 + 9880);
  *(v5 + 96) = v10;
  *(v5 + 112) = v9;
  *(v5 + 80) = v11;
  *v5 = *(v0 + 9752);
  *(v5 + 136) = *(v0 + 8120);
  v12 = *(v0 + 8136);
  v13 = *(v0 + 8152);
  v14 = *(v0 + 8168);
  *(v5 + 200) = *(v0 + 8184);
  *(v5 + 184) = v14;
  *(v5 + 168) = v13;
  *(v5 + 152) = v12;
  v15 = *(v0 + 8200);
  v16 = *(v0 + 8216);
  v17 = *(v0 + 8232);
  *(v5 + 264) = *(v0 + 8248);
  *(v5 + 248) = v17;
  *(v5 + 232) = v16;
  *(v5 + 216) = v15;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0u;
  *(v5 + 320) = v4;
  *(v5 + 336) = v3;
  *(v5 + 344) = v2;
  *(v5 + 352) = v1;
  *(v5 + 392) = 0u;
  *(v5 + 408) = 0u;
  *(v5 + 360) = 0u;
  *(v5 + 376) = 0u;
  v18 = *(v0 + 7352);
  *(v5 + 464) = *(v0 + 7336);
  *(v5 + 480) = v18;
  v19 = *(v0 + 7368);
  v20 = *(v0 + 7384);
  v21 = *(v0 + 7416);
  *(v5 + 528) = *(v0 + 7400);
  *(v5 + 544) = v21;
  *(v5 + 496) = v19;
  *(v5 + 512) = v20;
  v22 = *(v0 + 7432);
  v23 = *(v0 + 7448);
  v24 = *(v0 + 7480);
  *(v5 + 592) = *(v0 + 7464);
  *(v5 + 608) = v24;
  *(v5 + 560) = v22;
  *(v5 + 576) = v23;
  v25 = *(v0 + 7496);
  v26 = *(v0 + 7512);
  v27 = *(v0 + 7528);
  *(v5 + 672) = *(v0 + 7544);
  *(v5 + 640) = v26;
  *(v5 + 656) = v27;
  *(v5 + 624) = v25;
  type metadata accessor for ODNAssessmentResult(0);
  sub_1DB09DF34();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 10440));
  v28 = *(v0 + 8);

  return v28();
}

void sub_1DAF877B0(unint64_t a1)
{
  v2 = v1;
  if (!(a1 >> 62))
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v11 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v12 = a1;
    v13 = sub_1DB09CE64();
    v14 = [v13 domain];
    v15 = sub_1DB09D6C4();
    v17 = v16;

    if (v15 == 0x726F72724549444FLL && v17 == 0xE800000000000000)
    {
    }

    else
    {
      v19 = sub_1DB09E254();

      if ((v19 & 1) == 0)
      {
        v20 = sub_1DB09D6C4();
        v22 = v21;
        v86 = sub_1DAF4D7A4();
        *&v85 = v13;
        sub_1DAF40D20(&v85, v84);
        v23 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v84, v20, v22, isUniquelyReferenced_nonNull_native);
        sub_1DAF8C080(a1);

        v25 = v11;
        v26 = 128;
LABEL_27:
        v82 = v26;
        if (*(v25 + 16) && (v36 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v37 & 1) != 0) && (sub_1DAF409DC(*(v25 + 56) + 32 * v36, &v85), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
        {
          v38 = *&v84[0];
        }

        else
        {
          v38 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1DAF72EC0(0, *(v38 + 2) + 1, 1, v38);
        }

        v42 = *(v38 + 2);
        v41 = *(v38 + 3);
        if (v42 >= v41 >> 1)
        {
          v38 = sub_1DAF72EC0((v41 > 1), v42 + 1, 1, v38);
        }

        *(v38 + 2) = v42 + 1;
        v43 = &v38[56 * v42];
        *(v43 + 4) = 0xD000000000000019;
        *(v43 + 5) = 0x80000001DB0C3870;
        *(v43 + 6) = 0xD00000000000002DLL;
        *(v43 + 7) = 0x80000001DB0C3590;
        *(v43 + 8) = 0xD00000000000001DLL;
        *(v43 + 9) = 0x80000001DB0C3810;
        *(v43 + 10) = 694;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        *&v85 = v38;
        sub_1DAF40D20(&v85, v84);
        v44 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v84, 0x636F766E4949444FLL, 0xEE00736E6F697461, v44);
        v45 = qword_1DB0A5290[v82];
        v46 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v47 = sub_1DB09D6B4();
        v48 = sub_1DB09D604();
        v49 = [v46 initWithDomain:v47 code:v45 userInfo:v48];

        v50 = v2[22];
        *&v85 = v2[21];
        *(&v85 + 1) = v50;
        *&v84[0] = 0;
        *(&v84[0] + 1) = 0xE000000000000000;

        sub_1DB09DE44();
        MEMORY[0x1E127FE90](0xD000000000000033, 0x80000001DB0C3890);
        swift_getErrorValue();
        v51 = sub_1DB09E324();
        MEMORY[0x1E127FE90](v51);

        v53 = *(&v84[0] + 1);
        v52 = *&v84[0];
        v54 = 8;
        goto LABEL_50;
      }
    }

    ODIErrorCode.init(rawValue:)([v13 code]);
    v35 = [v13 userInfo];
    v25 = sub_1DB09D624();
    sub_1DAF8C080(a1);

    if (v85 == 211)
    {
      v26 = 128;
    }

    else
    {
      v26 = v85 ^ 0x80u;
    }

    goto LABEL_27;
  }

  if (a1 >> 62 == 1)
  {
    if (qword_1EE301E08 != -1)
    {
      swift_once();
    }

    v4 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
    v5 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
    v6 = sub_1DB09CE64();
    v7 = [v6 domain];
    v8 = sub_1DB09D6C4();
    v10 = v9;

    if (v8 == 0x726F72724549444FLL && v10 == 0xE800000000000000)
    {
    }

    else
    {
      v31 = sub_1DB09E254();

      if ((v31 & 1) == 0)
      {
        v55 = sub_1DB09D6C4();
        v57 = v56;
        v86 = sub_1DAF4D7A4();
        *&v85 = v6;
        sub_1DAF40D20(&v85, v84);
        v58 = v6;
        v59 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v84, v55, v57, v59);
        sub_1DAF8C080(a1);

        v33 = v4;
        v34 = 128;
LABEL_40:
        v83 = v34;
        if (*(v33 + 16) && (v60 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461), (v61 & 1) != 0) && (sub_1DAF409DC(*(v33 + 56) + 32 * v60, &v85), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60), swift_dynamicCast()))
        {
          v62 = *&v84[0];
        }

        else
        {
          v62 = MEMORY[0x1E69E7CC0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1DAF72EC0(0, *(v62 + 2) + 1, 1, v62);
        }

        v64 = *(v62 + 2);
        v63 = *(v62 + 3);
        if (v64 >= v63 >> 1)
        {
          v62 = sub_1DAF72EC0((v63 > 1), v64 + 1, 1, v62);
        }

        *(v62 + 2) = v64 + 1;
        v65 = &v62[56 * v64];
        *(v65 + 4) = 0xD000000000000019;
        *(v65 + 5) = 0x80000001DB0C37F0;
        *(v65 + 6) = 0xD00000000000002DLL;
        *(v65 + 7) = 0x80000001DB0C3590;
        *(v65 + 8) = 0xD00000000000001DLL;
        *(v65 + 9) = 0x80000001DB0C3810;
        *(v65 + 10) = 698;
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
        *&v85 = v62;
        sub_1DAF40D20(&v85, v84);
        v66 = swift_isUniquelyReferenced_nonNull_native();
        sub_1DAF3B11C(v84, 0x636F766E4949444FLL, 0xEE00736E6F697461, v66);
        v67 = qword_1DB0A5290[v83];
        v68 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v69 = sub_1DB09D6B4();
        v70 = sub_1DB09D604();
        v49 = [v68 initWithDomain:v69 code:v67 userInfo:v70];

        v71 = v2[22];
        *&v85 = v2[21];
        *(&v85 + 1) = v71;
        *&v84[0] = 0;
        *(&v84[0] + 1) = 0xE000000000000000;

        sub_1DB09DE44();
        MEMORY[0x1E127FE90](0xD000000000000032, 0x80000001DB0C3830);
        swift_getErrorValue();
        v72 = sub_1DB09E324();
        MEMORY[0x1E127FE90](v72);

        v53 = *(&v84[0] + 1);
        v52 = *&v84[0];
        v54 = 12;
LABEL_50:
        LOBYTE(v84[0]) = v54;
        CoreODILogger.error(_:category:)(v52, v53, v84);

LABEL_59:

        return;
      }
    }

    ODIErrorCode.init(rawValue:)([v6 code]);
    v32 = [v6 userInfo];
    v33 = sub_1DB09D624();
    sub_1DAF8C080(a1);

    if (v85 == 211)
    {
      v34 = 128;
    }

    else
    {
      v34 = v85 ^ 0x80u;
    }

    goto LABEL_40;
  }

  v27 = __ROR8__(a1 ^ 0x8000000000000000, 3);
  if (v27 > 1)
  {
    v39 = v1[22];
    *&v85 = v1[21];
    *(&v85 + 1) = v39;
    if (v27 == 2)
    {
      v40 = "ORD is configured to send, but ordRequest is invalid.";
    }

    else
    {
      v40 = "OTD is configured to send, but otdRequest is invalid.";
    }

    v29 = (v40 - 32);
    LOBYTE(v84[0]) = 14;

    v30 = 0xD000000000000035;
    goto LABEL_58;
  }

  if (!v27)
  {
    v28 = v1[22];
    *&v85 = v1[21];
    *(&v85 + 1) = v28;
    v29 = "as configured not to send for ";
    LOBYTE(v84[0]) = 12;

    v30 = 0xD00000000000002ALL;
LABEL_58:
    CoreODILogger.info(_:category:)(v30, v29 | 0x8000000000000000, v84);
    goto LABEL_59;
  }

  v74 = v1[21];
  v73 = v1[22];
  *&v85 = 0;
  *(&v85 + 1) = 0xE000000000000000;

  sub_1DB09DE44();

  *&v84[0] = 0xD00000000000002ELL;
  *(&v84[0] + 1) = 0x80000001DB0C3790;
  swift_beginAccess();
  v76 = v1[50];
  v75 = v1[51];

  MEMORY[0x1E127FE90](v76, v75);

  if (qword_1EE3019A0 != -1)
  {
    swift_once();
  }

  v77 = sub_1DB09D4B4();
  __swift_project_value_buffer(v77, qword_1EE30A068);

  v78 = sub_1DB09D494();
  v79 = sub_1DB09DB54();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v84[0] = v81;
    *v80 = 136315650;
    *(v80 + 4) = sub_1DB015E84(v74, v73, v84);
    *(v80 + 12) = 2080;
    *(v80 + 14) = sub_1DB015E84(0x3638646539396335, 0xE800000000000000, v84);
    *(v80 + 22) = 2080;
    *(v80 + 24) = sub_1DB015E84(0xD00000000000002ELL, 0x80000001DB0C3790, v84);
    _os_log_impl(&dword_1DAF16000, v78, v79, "[%s] (%s) %s", v80, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1281810](v81, -1, -1);
    MEMORY[0x1E1281810](v80, -1, -1);
  }
}

uint64_t sub_1DAF883EC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 80) = a1;
  *(v4 + 88) = v3;
  *(v4 + 160) = *a2;
  *(v4 + 96) = *a3;
  v5 = *(a3 + 24);
  *(v4 + 112) = *(a3 + 16);
  *(v4 + 120) = v5;
  *(v4 + 161) = *(a3 + 96);
  *(v4 + 162) = *(a3 + 97);
  return MEMORY[0x1EEE6DFA0](sub_1DAF88434, v3, 0);
}

uint64_t sub_1DAF88434()
{
  v20 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 160);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  LOBYTE(v18) = v2;
  (*(v6 + 48))(&v18, v5, v6);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v4 + 448), (v0 + 16));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v1)
  {
    v7 = *(v0 + 96);
  }

  else
  {
    v7 = 0;
  }

  *(v0 + 128) = v7;
  v8 = [objc_opt_self() standardUserDefaults];
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 == 1 && (v9 = sub_1DB09D6B4(), v10 = [v8 stringForKey_], v9, v10))
  {
    v11 = sub_1DB09D6C4();
    v13 = v12;

    v18 = 0;
    v19 = 0xE000000000000000;

    sub_1DB09DE44();

    v18 = 0xD000000000000020;
    v19 = 0x80000001DB0C3A30;
    MEMORY[0x1E127FE90](v11, v13);

    v14 = v18;
    LOBYTE(v18) = 14;
    CoreODILogger.info(_:category:)(v14, v19, &v18);
  }

  else
  {

    if (v1)
    {
      v11 = *(v0 + 112);
      v13 = *(v0 + 120);
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }
  }

  *(v0 + 136) = v11;
  *(v0 + 144) = v13;
  v15 = __swift_project_boxed_opaque_existential_1((*(v0 + 88) + 208), *(*(v0 + 88) + 232));
  v16 = *v15;
  *(v0 + 152) = *v15;

  return MEMORY[0x1EEE6DFA0](sub_1DAF886D4, v16, 0);
}

uint64_t sub_1DAF886D4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 162);
  v3 = *(v0 + 161);
  v4 = *(v0 + 104);
  swift_beginAccess();
  *(v1 + 113) = v3;
  *(v1 + 112) = v2;
  if (v4)
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 104);
    *(v5 + 136) = *(v0 + 128);
    *(v5 + 144) = v6;
  }

  v7 = *(v0 + 144);
  if (v7)
  {
    v8 = *(v0 + 152);
    *(v8 + 120) = *(v0 + 136);
    *(v8 + 128) = v7;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DAF88798(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = *(a2 + 24);
  v43 = *(a2 + 16);
  v44 = *(a2 + 48);
  v42 = *(a2 + 56);
  v47 = *(a2 + 72);
  v6 = *(a2 + 96);
  v45 = *(a2 + 97);
  v7 = *(v2 + 176);
  v59 = *(v2 + 168);
  v60 = v7;
  LOBYTE(v58[0]) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000027, 0x80000001DB0C3960, v58);

  v8 = *(v2 + 176);
  v59 = *(v2 + 168);
  v60 = v8;
  v58[0] = 0;
  v58[1] = 0xE000000000000000;

  sub_1DB09DE44();

  strcpy(v58, "  ord enabled ");
  HIBYTE(v58[1]) = -18;
  if (v6)
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v6)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v9, v10);

  LOBYTE(v56) = 8;
  CoreODILogger.debug(_:category:)(v58[0], v58[1], &v56);

  v11 = *(v2 + 176);
  v46 = v2;
  v56 = *(v2 + 168);
  v57 = v11;

  sub_1DB09DE44();

  v55[0] = 0xD000000000000012;
  v55[1] = 0x80000001DB0C3990;
  if (v3)
  {

    v12 = v3;
  }

  else
  {
    v12 = 0xE300000000000000;
    v4 = 4271950;
  }

  MEMORY[0x1E127FE90](v4, v12);

  v13 = v55[0];
  LOBYTE(v55[0]) = 8;
  CoreODILogger.debug(_:category:)(v13, v55[1], v55);

  v14 = *(v2 + 176);
  v56 = *(v2 + 168);
  v57 = v14;
  v55[0] = 0;
  v55[1] = 0xE000000000000000;

  sub_1DB09DE44();

  strcpy(v55, "  otd enabled ");
  HIBYTE(v55[1]) = -18;
  if (v45)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v45)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v15, v16);

  LOBYTE(v54[0]) = 8;
  CoreODILogger.debug(_:category:)(v55[0], v55[1], v54);

  v17 = *(v2 + 176);
  v54[0] = *(v2 + 168);
  v54[1] = v17;

  sub_1DB09DE44();

  v52 = 0xD000000000000012;
  v53 = 0x80000001DB0C39B0;
  if (v3)
  {

    v18 = v43;
  }

  else
  {
    v5 = 0xE300000000000000;
    v18 = 4271950;
  }

  MEMORY[0x1E127FE90](v18, v5);

  LOBYTE(v50) = 8;
  CoreODILogger.debug(_:category:)(v52, v53, &v50);

  v19 = *(v2 + 176);
  v50 = *(v2 + 168);
  v51 = v19;

  sub_1DB09DE44();

  v48 = 0xD000000000000012;
  v49 = 0x80000001DB0C39D0;
  if (v3)
  {
    v20 = v42;

    v21 = v44;
  }

  else
  {
    v20 = 0xE300000000000000;
    v21 = 4271950;
  }

  MEMORY[0x1E127FE90](v21, v20);

  v22 = v48;
  LOBYTE(v48) = 8;
  CoreODILogger.debug(_:category:)(v22, v49, &v48);

  v23 = 1 << *(v47 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v47 + 64);
  v26 = (v23 + 63) >> 6;

  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  if (v25)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      return result;
    }

    if (v30 >= v26)
    {
      break;
    }

    v25 = *(v47 + 64 + 8 * v30);
    ++v28;
    if (v25)
    {
      v28 = v30;
      do
      {
LABEL_29:
        v31 = (*(v47 + 48) + 16 * (__clz(__rbit64(v25)) | (v28 << 6)));
        v33 = *v31;
        v32 = v31[1];
        swift_bridgeObjectRetain_n();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1DAF72DB4(0, *(v29 + 2) + 1, 1, v29);
        }

        v35 = *(v29 + 2);
        v34 = *(v29 + 3);
        if (v35 >= v34 >> 1)
        {
          v29 = sub_1DAF72DB4((v34 > 1), v35 + 1, 1, v29);
        }

        v25 &= v25 - 1;

        *(v29 + 2) = v35 + 1;
        v36 = &v29[16 * v35];
        *(v36 + 4) = v33;
        *(v36 + 5) = v32;
      }

      while (v25);
    }
  }

  v37 = *(v46 + 176);
  v50 = *(v46 + 168);
  v51 = v37;
  v48 = 0;
  v49 = 0xE000000000000000;

  sub_1DB09DE44();

  v48 = 0xD000000000000012;
  v49 = 0x80000001DB0C39F0;
  v38 = MEMORY[0x1E1280010](v29, MEMORY[0x1E69E6158]);
  v40 = v39;

  MEMORY[0x1E127FE90](v38, v40);

  v41 = v48;
  LOBYTE(v48) = 8;
  CoreODILogger.debug(_:category:)(v41, v49, &v48);
}

uint64_t sub_1DAF88D7C(uint64_t a1)
{
  *(v2 + 1160) = v1;
  v3 = *(a1 + 112);
  *(v2 + 984) = *(a1 + 96);
  *(v2 + 1000) = v3;
  v4 = *(a1 + 136);
  *(v2 + 1016) = *(a1 + 128);
  v5 = *(a1 + 48);
  *(v2 + 920) = *(a1 + 32);
  *(v2 + 936) = v5;
  v6 = *(a1 + 80);
  *(v2 + 952) = *(a1 + 64);
  *(v2 + 968) = v6;
  v7 = *(a1 + 16);
  *(v2 + 888) = *a1;
  *(v2 + 904) = v7;
  *(v2 + 1168) = v4;
  v8 = *(a1 + 152);
  *(v2 + 1176) = *(a1 + 144);
  *(v2 + 1184) = v8;
  v9 = *(a1 + 160);
  *(v2 + 1192) = v9;
  v10 = *(a1 + 248);
  v11 = *(a1 + 280);
  *(v2 + 848) = *(a1 + 264);
  *(v2 + 864) = v11;
  v12 = *(a1 + 304);
  *(v2 + 880) = *(a1 + 296);
  v13 = *(a1 + 184);
  v14 = *(a1 + 216);
  *(v2 + 784) = *(a1 + 200);
  *(v2 + 800) = v14;
  *(v2 + 816) = *(a1 + 232);
  *(v2 + 832) = v10;
  *(v2 + 752) = *(a1 + 168);
  *(v2 + 768) = v13;
  *(v2 + 1200) = v12;
  v15 = *(a1 + 320);
  *(v2 + 1208) = *(a1 + 312);
  *(v2 + 1216) = v15;
  v16 = *(a1 + 328);
  *(v2 + 1224) = v16;
  sub_1DAF40A84(v2 + 888, v2 + 1024, &qword_1ECC0E798, &qword_1DB0A5120);

  sub_1DAF4ED88(v8, v9);
  sub_1DAF40A84(v2 + 752, v2 + 1024, &qword_1ECC0E798, &qword_1DB0A5120);

  sub_1DAF4ED88(v15, v16);

  return MEMORY[0x1EEE6DFA0](sub_1DAF88EF4, v1, 0);
}

uint64_t sub_1DAF88EF4()
{
  v30 = *(v0 + 1216);
  v31 = *(v0 + 1224);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);
  v3 = *(v0 + 1192);
  v4 = *(v0 + 1184);
  v5 = *(v0 + 1176);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 1160);
  *(v0 + 608) = *(v0 + 1016);
  v8 = *(v0 + 1000);
  *(v0 + 576) = *(v0 + 984);
  *(v0 + 592) = v8;
  v9 = *(v0 + 936);
  *(v0 + 512) = *(v0 + 920);
  *(v0 + 528) = v9;
  v10 = *(v0 + 968);
  *(v0 + 544) = *(v0 + 952);
  *(v0 + 560) = v10;
  v11 = *(v0 + 904);
  *(v0 + 480) = *(v0 + 888);
  *(v0 + 496) = v11;
  v12 = *(v0 + 864);
  *(v0 + 712) = *(v0 + 848);
  *(v0 + 728) = v12;
  *(v0 + 744) = *(v0 + 880);
  v13 = *(v0 + 800);
  *(v0 + 648) = *(v0 + 784);
  *(v0 + 664) = v13;
  v14 = *(v0 + 832);
  *(v0 + 680) = *(v0 + 816);
  *(v0 + 696) = v14;
  v15 = *(v0 + 768);
  *(v0 + 616) = *(v0 + 752);
  *(v0 + 632) = v15;
  swift_beginAccess();
  memcpy((v0 + 16), (v7 + 488), 0x1D0uLL);
  *(v7 + 488) = *(v0 + 480);
  v16 = *(v0 + 496);
  v17 = *(v0 + 512);
  v18 = *(v0 + 544);
  *(v7 + 536) = *(v0 + 528);
  *(v7 + 552) = v18;
  *(v7 + 504) = v16;
  *(v7 + 520) = v17;
  v19 = *(v0 + 560);
  v20 = *(v0 + 576);
  v21 = *(v0 + 592);
  *(v7 + 616) = *(v0 + 608);
  *(v7 + 584) = v20;
  *(v7 + 600) = v21;
  *(v7 + 568) = v19;
  *(v7 + 624) = v6;
  *(v7 + 632) = v5;
  *(v7 + 672) = 0u;
  *(v7 + 688) = 0u;
  *(v7 + 640) = 0u;
  *(v7 + 656) = 0u;
  *(v7 + 704) = v4;
  *(v7 + 712) = v3;
  *(v7 + 720) = *(v0 + 616);
  v22 = *(v0 + 632);
  v23 = *(v0 + 648);
  v24 = *(v0 + 680);
  *(v7 + 768) = *(v0 + 664);
  *(v7 + 784) = v24;
  *(v7 + 736) = v22;
  *(v7 + 752) = v23;
  v25 = *(v0 + 696);
  v26 = *(v0 + 712);
  v27 = *(v0 + 728);
  *(v7 + 848) = *(v0 + 744);
  *(v7 + 816) = v26;
  *(v7 + 832) = v27;
  *(v7 + 800) = v25;
  *(v7 + 856) = v2;
  *(v7 + 864) = v1;
  *(v7 + 904) = 0u;
  *(v7 + 920) = 0u;
  *(v7 + 872) = 0u;
  *(v7 + 888) = 0u;
  *(v7 + 936) = v30;
  *(v7 + 944) = v31;
  sub_1DAF8BF7C(v0 + 16);
  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1DAF890B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 4528) = v15;
  *(v8 + 4512) = v14;
  *(v8 + 4504) = v13;
  *(v8 + 4496) = a8;
  *(v8 + 4488) = a7;
  *(v8 + 603) = a6;
  *(v8 + 4480) = a5;
  *(v8 + 4472) = a4;
  *(v8 + 4464) = a3;
  *(v8 + 602) = a2;
  *(v8 + 4536) = *v13;
  *(v8 + 4544) = *(v13 + 8);
  *(v8 + 4560) = *(v13 + 24);
  *(v8 + 4568) = *(v13 + 32);
  *(v8 + 4584) = type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0);
  *(v8 + 4592) = swift_task_alloc();
  v10 = *(a1 + 16);
  *(v8 + 4600) = *a1;
  *(v8 + 4616) = v10;
  *(v8 + 604) = *(a1 + 48);
  *(v8 + 4632) = *(a1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1DAF891CC, 0, 0);
}

uint64_t sub_1DAF891CC()
{
  v13 = v0;
  v1 = *(v0 + 602);

  sub_1DB09DE44();

  v11 = 0xD000000000000014;
  v12 = 0x80000001DB0C3670;
  if (v1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (v1)
  {
    v3 = "Error sendingODNResults: ";
  }

  else
  {
    v3 = "ODN Callback called ";
  }

  MEMORY[0x1E127FE90](v2, v3 | 0x8000000000000000);

  v4 = v11;
  LOBYTE(v11) = 14;
  CoreODILogger.info(_:category:)(v4, v12, &v11);

  v5 = swift_task_alloc();
  *(v0 + 4640) = v5;
  *v5 = v0;
  v5[1] = sub_1DAF89330;
  v6 = *(v0 + 603);
  v7 = *(v0 + 4480);
  v8 = *(v0 + 4464);
  v9 = *(v0 + 602);

  return sub_1DAF8A5D8(v8, v7, v9, v6);
}

uint64_t sub_1DAF89330()
{

  return MEMORY[0x1EEE6DFA0](sub_1DAF8942C, 0, 0);
}

uint64_t sub_1DAF8942C()
{
  v22 = v0;
  v1 = *(v0 + 4472);
  v2 = *(v0 + 602);
  v3 = *(v1 + 176);
  v20[0] = *(v1 + 168);
  v20[1] = v3;
  v21 = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000015, 0x80000001DB0C36B0, &v21);

  if (v2)
  {
    *(v0 + 4680) = 1;
    *(v0 + 4648) = 0u;
    *(v0 + 4664) = 0u;
    v4 = *(v0 + 4624) >> 60;
    if (v4 == 15)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0xF000000000000000;
    }

    else
    {
      v9 = *(v0 + 604);
      v13 = *(v0 + 4608);
      v14 = *(v0 + 4600);
      v7 = sub_1DB09D014();
      v8 = v15;
      sub_1DAF4ED88(v14, v13);
      v5 = *(v0 + 4632);
      v10 = *(v0 + 4608);
      v6 = *(v0 + 4600);
    }

    *(v0 + 4704) = v9;
    *(v0 + 4696) = v8;
    *(v0 + 4688) = v7;
    v16 = *(v0 + 603);
    v17 = *(v0 + 4472);
    LOBYTE(v20[0]) = 1;
    *(v0 + 4712) = sub_1DAF616DC(v6, v10, v5, v4 > 0xE, v20, v16);
    *(v0 + 4720) = v18;
    sub_1DAF4AC40(v6, v10);
    v12 = sub_1DAF89924;
    v11 = v17;
  }

  else
  {
    v11 = *(v0 + 4472);
    v12 = sub_1DAF895C8;
  }

  return MEMORY[0x1EEE6DFA0](v12, v11, 0);
}

uint64_t sub_1DAF895C8()
{
  v1 = *(v0 + 4472);
  swift_beginAccess();
  sub_1DAF8B8D8(v1 + 400, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89650, 0, 0);
}

uint64_t sub_1DAF89650()
{
  v27 = v0;
  sub_1DAF8BFD0(v0 + 48, v0 + 4192);
  sub_1DAF8B934(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E438, &unk_1DB0A0570);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DB0A04E0;
  *(v1 + 32) = 0;
  v2 = *(v0 + 4192);
  v3 = *(v0 + 4200);
  *(v1 + 64) = MEMORY[0x1E69E6158];
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;

  v4 = sub_1DAF3E280(v1);
  swift_setDeallocating();
  sub_1DAF40AEC(v1 + 32, &qword_1ECC0E380, &qword_1DB0A0308);
  swift_deallocClassInstance();
  v25 = 126;
  v5 = ODIError(_:fromError:code:forceCode:properties:file:function:line:)(0x656D6974204E444FLL, 0xEB0000000074756FLL, 0, &v25, 0, v4, 0xD00000000000002DLL, 0x80000001DB0C3590, 0xD00000000000001CLL, 0x80000001DB0C3630, 399);

  sub_1DB041E04(v5, v2, v3, v0 + 4296);
  v6 = *(v0 + 4296);
  v7 = *(v0 + 4312);
  v8 = *(v0 + 4304);
  v9 = *(v0 + 4320);
  v10 = *(v0 + 4328);
  *(v0 + 4424) = *(v0 + 4320);
  sub_1DAF40A84(v0 + 4424, v0 + 4408, &unk_1ECC0EAE0, &unk_1DB0A4650);

  sub_1DAF8C02C(v0 + 4192);
  *(v0 + 4680) = v10;
  *(v0 + 4672) = v9;
  *(v0 + 4664) = v7;
  *(v0 + 4656) = v8;
  *(v0 + 4648) = v6;
  v11 = *(v0 + 4624) >> 60;
  if (v11 == 15)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0xF000000000000000;
  }

  else
  {
    v16 = *(v0 + 604);
    v18 = *(v0 + 4608);
    v19 = *(v0 + 4600);
    v14 = sub_1DB09D014();
    v15 = v20;
    sub_1DAF4ED88(v19, v18);
    v12 = *(v0 + 4632);
    v17 = *(v0 + 4608);
    v13 = *(v0 + 4600);
  }

  *(v0 + 4704) = v16;
  *(v0 + 4696) = v15;
  *(v0 + 4688) = v14;
  v21 = *(v0 + 603);
  v22 = *(v0 + 4472);
  v26 = 1;
  *(v0 + 4712) = sub_1DAF616DC(v13, v17, v12, v11 > 0xE, &v26, v21);
  *(v0 + 4720) = v23;
  sub_1DAF4AC40(v13, v17);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89924, v22, 0);
}

uint64_t sub_1DAF89924()
{
  v1 = *(v0 + 4472);
  swift_beginAccess();
  sub_1DAF8B8D8(v1 + 400, v0 + 608);

  return MEMORY[0x1EEE6DFA0](sub_1DAF899AC, 0, 0);
}

uint64_t sub_1DAF899AC()
{
  v1 = v0[559];
  v0[591] = v0[78];
  v0[592] = v0[79];

  sub_1DAF8B934((v0 + 76));

  return MEMORY[0x1EEE6DFA0](sub_1DAF89A2C, v1, 0);
}

uint64_t sub_1DAF89A2C()
{
  sub_1DAF8B8D8(*(v0 + 4472) + 400, v0 + 1200);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89A9C, 0, 0);
}

uint64_t sub_1DAF89A9C()
{
  v1 = v0[559];
  v0[593] = v0[150];
  v0[594] = v0[151];

  sub_1DAF8B934((v0 + 150));

  return MEMORY[0x1EEE6DFA0](sub_1DAF89B1C, v1, 0);
}

uint64_t sub_1DAF89B1C()
{
  sub_1DAF8B8D8(*(v0 + 4472) + 400, v0 + 1792);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89B8C, 0, 0);
}

uint64_t sub_1DAF89B8C()
{
  v1 = (v0 + 1880);
  *(v0 + 3240) = *(v0 + 2008);
  v2 = *(v0 + 1992);
  *(v0 + 3208) = *(v0 + 1976);
  *(v0 + 3224) = v2;
  v3 = *(v0 + 1928);
  *(v0 + 3144) = *(v0 + 1912);
  *(v0 + 3160) = v3;
  v4 = *(v0 + 1960);
  *(v0 + 3176) = *(v0 + 1944);
  *(v0 + 3192) = v4;
  v5 = *(v0 + 1896);
  *(v0 + 3112) = *(v0 + 1880);
  *(v0 + 3128) = v5;
  if (sub_1DAF8B9A8(v0 + 3112) == 1)
  {
    sub_1DAF8B934(v0 + 1792);
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 1944);
    *(v0 + 3600) = *(v0 + 1960);
    v9 = *(v0 + 1960);
    *(v0 + 3616) = *(v0 + 1976);
    v10 = *(v0 + 1976);
    *(v0 + 3632) = *(v0 + 1992);
    v11 = *v1;
    *(v0 + 3536) = *(v0 + 1896);
    v12 = *(v0 + 1896);
    *(v0 + 3552) = *(v0 + 1912);
    v13 = *(v0 + 1912);
    *(v0 + 3568) = *(v0 + 1928);
    v14 = *(v0 + 1928);
    *(v0 + 3584) = *(v0 + 1944);
    *(v0 + 3520) = *v1;
    v15 = *(v0 + 1992);
    *(v0 + 3480) = v10;
    *(v0 + 3496) = v15;
    *(v0 + 3416) = v13;
    *(v0 + 3432) = v14;
    *(v0 + 3448) = v8;
    *(v0 + 3464) = v9;
    v16 = *(v0 + 2008);
    *(v0 + 3648) = v16;
    v6 = *(v0 + 3640);
    v7 = v16;
    *(v0 + 3512) = *(v0 + 2008);
    *(v0 + 3384) = v11;
    *(v0 + 3400) = v12;
    sub_1DAF49ECC(v0 + 3384, v0 + 3656);
    sub_1DAF8B934(v0 + 1792);

    sub_1DAF40AEC(v0 + 3520, &qword_1ECC0E798, &qword_1DB0A5120);
  }

  *(v0 + 4768) = v7;
  *(v0 + 4760) = v6;
  v17 = *(v0 + 4472);
  sub_1DAF40A84(*(v0 + 4488), v0 + 4128, &qword_1ECC0E7A8, &unk_1DB0ABEB0);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89D10, v17, 0);
}

uint64_t sub_1DAF89D10()
{
  sub_1DAF8B8D8(*(v0 + 4472) + 400, v0 + 2384);

  return MEMORY[0x1EEE6DFA0](sub_1DAF89D80, 0, 0);
}

uint64_t sub_1DAF89D80()
{
  *(v0 + 3872) = *(v0 + 2784);
  *(v0 + 3888) = *(v0 + 2800);
  *(v0 + 3904) = *(v0 + 2816);
  *(v0 + 3920) = *(v0 + 2832);
  *(v0 + 3808) = *(v0 + 2720);
  *(v0 + 3824) = *(v0 + 2736);
  *(v0 + 3840) = *(v0 + 2752);
  *(v0 + 3856) = *(v0 + 2768);
  *(v0 + 3792) = *(v0 + 2704);
  if (sub_1DAF8B9A8(v0 + 3792) == 1)
  {
    sub_1DAF8B934(v0 + 2384);
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v1 = *(v0 + 2768);
    *(v0 + 3056) = *(v0 + 2784);
    v2 = *(v0 + 2784);
    *(v0 + 3072) = *(v0 + 2800);
    v3 = *(v0 + 2800);
    *(v0 + 3088) = *(v0 + 2816);
    v4 = *(v0 + 2704);
    *(v0 + 2992) = *(v0 + 2720);
    v5 = *(v0 + 2720);
    *(v0 + 3008) = *(v0 + 2736);
    v6 = *(v0 + 2736);
    *(v0 + 3024) = *(v0 + 2752);
    v7 = *(v0 + 2752);
    *(v0 + 3040) = *(v0 + 2768);
    *(v0 + 2976) = *(v0 + 2704);
    v8 = *(v0 + 2816);
    *(v0 + 4024) = v3;
    *(v0 + 4040) = v8;
    *(v0 + 3960) = v6;
    *(v0 + 3976) = v7;
    *(v0 + 3992) = v1;
    *(v0 + 4008) = v2;
    *(v0 + 3104) = *(v0 + 2832);
    v47 = *(v0 + 3096);
    v9 = *(v0 + 3104);
    *(v0 + 4056) = *(v0 + 2832);
    *(v0 + 3928) = v4;
    *(v0 + 3944) = v5;
    sub_1DAF49ECC(v0 + 3928, v0 + 3248);
    sub_1DAF8B934(v0 + 2384);
    v46 = v9;

    sub_1DAF40AEC(v0 + 2976, &qword_1ECC0E798, &qword_1DB0A5120);
  }

  v37 = *(v0 + 4760);
  v38 = *(v0 + 4768);
  v35 = *(v0 + 4744);
  v33 = *(v0 + 4728);
  v10 = *(v0 + 4704);
  v41 = *(v0 + 4688);
  v42 = *(v0 + 4664);
  v43 = *(v0 + 4680);
  v40 = *(v0 + 4648);
  v11 = *(v0 + 4592);
  v12 = *(v0 + 4584);
  v36 = *(v0 + 4560);
  v32 = *(v0 + 4536);
  v13 = *(v0 + 4552);
  v44 = *(v0 + 4528);
  v39 = *(v0 + 4520);
  v14 = *(v0 + 4512);
  v45 = *(v0 + 4504);
  v15 = *(v0 + 4496);
  v16 = *(v0 + 4488);
  v34 = *(v0 + 603);
  v17 = *(v0 + 4472);
  v31 = *(v0 + 4568);
  v30 = *(v0 + 4712);
  sub_1DAF3523C(*(v0 + 4480), v11 + 376);
  v18 = *(v12 + 88);
  v19 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
  (*(*(v19 - 8) + 56))(v11 + v18, 1, 1, v19);
  *v11 = v33;
  *(v11 + 16) = v35;
  *(v11 + 32) = v37;
  *(v11 + 40) = v38;
  v20 = *v16;
  v21 = v16[1];
  v22 = v16[3];
  *(v11 + 80) = v16[2];
  *(v11 + 96) = v22;
  *(v11 + 48) = v20;
  *(v11 + 64) = v21;
  *(v11 + 112) = v47;
  *(v11 + 120) = v46;
  v23 = *v15;
  v24 = v15[1];
  v25 = v15[3];
  *(v11 + 160) = v15[2];
  *(v11 + 176) = v25;
  *(v11 + 128) = v23;
  *(v11 + 144) = v24;
  *(v11 + 192) = v41;
  *(v11 + 208) = v32;
  *(v11 + 224) = v13;
  *(v11 + 232) = v36;
  *(v11 + 240) = v31;
  *(v11 + 256) = v30;
  *(v11 + 272) = v10;
  *(v11 + 280) = v40;
  *(v11 + 296) = v42;
  *(v11 + 312) = v43;
  *(v11 + 320) = v34;
  *(v11 + 328) = v14;
  *(v11 + 336) = v10 + 1;
  *(v11 + 344) = 0;
  *(v11 + 352) = v39;
  *(v11 + 360) = v10 + 2;
  *(v11 + 368) = 0;
  *(v11 + 416) = 0;
  *(v11 + 424) = 0;
  __swift_project_boxed_opaque_existential_1((v17 + 208), *(v17 + 232));
  v26 = *(v44 + 33);
  sub_1DAF40A84(v15, v0 + 4064, &qword_1ECC0E7A8, &unk_1DB0ABEB0);
  sub_1DAF8BC10(v45, v0 + 4248);

  v27 = swift_task_alloc();
  *(v0 + 4776) = v27;
  *v27 = v0;
  v27[1] = sub_1DAF8A16C;
  v28 = *(v0 + 4592);

  return sub_1DAFF9558(v28, v26);
}

uint64_t sub_1DAF8A16C()
{
  *(*v1 + 4784) = v0;

  if (v0)
  {
    v2 = sub_1DAF8A2FC;
  }

  else
  {
    v2 = sub_1DAF8A280;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DAF8A280()
{
  sub_1DAF8C320(*(v0 + 4592), type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DAF8A2FC()
{
  v9 = v0;
  v1 = *(v0 + 4784);
  *(v0 + 4440) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 4472);

    *(v0 + 4792) = *(v0 + 4448);

    return MEMORY[0x1EEE6DFA0](sub_1DAF8A4DC, v3, 0);
  }

  else
  {
    v4 = *(v0 + 4784);
    v5 = *(v0 + 4592);

    v8[0] = 14;
    v8[1] = 0xE000000000000000;

    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000019, 0x80000001DB0C36D0);
    swift_getErrorValue();
    sub_1DB09E234();
    CoreODILogger.info(_:category:)(0, 0xE000000000000000, v8);

    sub_1DAF8C320(v5, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1DAF8A4DC()
{
  sub_1DAF877B0(*(v0 + 4792));

  return MEMORY[0x1EEE6DFA0](sub_1DAF8A548, 0, 0);
}

uint64_t sub_1DAF8A548()
{
  v1 = *(v0 + 4592);
  sub_1DAF8C080(*(v0 + 4792));
  sub_1DAF8C320(v1, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAF8A5D8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 200) = a2;
  *(v5 + 208) = v4;
  *(v5 + 249) = a4;
  *(v5 + 248) = a3;
  *(v5 + 192) = a1;
  *(v5 + 216) = type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload(0);
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DAF8A678, v4, 0);
}

uint64_t sub_1DAF8A678()
{
  v32 = v0;
  v1 = *(v0 + 192);
  if (v1)
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 248);
    swift_beginAccess();
    v4 = v2[54];
    v5 = v2[55];
    v6 = v1;

    sub_1DB041E04(v1, v4, v5, v0 + 16);
    v26 = *(v0 + 24);
    v27 = *(v0 + 16);
    v28 = *(v0 + 32);
    v24 = *(v0 + 48);
    v25 = *(v0 + 40);
    *(v0 + 128) = *(v0 + 40);
    sub_1DAF40A84(v0 + 128, v0 + 144, &unk_1ECC0EAE0, &unk_1DB0A4650);

    v7 = v2[22];
    if (v3)
    {
      v30 = v2[21];
      v31 = v7;
      LOBYTE(v29[0]) = 8;

      CoreODILogger.debug(_:category:)(0xD000000000000056, 0x80000001DB0C3900, v29);
    }

    else
    {
      v29[0] = v2[21];
      v29[1] = v7;

      sub_1DB09DE44();

      v30 = 0xD000000000000008;
      v31 = 0x80000001DB0C38D0;
      swift_getErrorValue();
      v10 = sub_1DB09E324();
      MEMORY[0x1E127FE90](v10);

      CoreODILogger.error(_:category:)(0xD000000000000026, 0x80000001DB0C38D0, &v30);
    }

    v12 = *(v0 + 216);
    v11 = *(v0 + 224);
    v13 = *(v0 + 249);
    v14 = *(v0 + 208);
    v16 = *(v14 + 416);
    v15 = *(v14 + 424);
    v17 = v2[50];
    v18 = *(v14 + 408);
    sub_1DAF3523C(*(v0 + 200), v11 + 376);
    v19 = *(v12 + 88);
    v20 = type metadata accessor for ODNAssessmentsFeedbackManager.ORDResultsPayload(0);
    (*(*(v20 - 8) + 56))(v11 + v19, 1, 1, v20);
    *v11 = v16;
    *(v11 + 8) = v15;
    *(v11 + 16) = v17;
    *(v11 + 24) = v18;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
    *(v11 + 80) = 0u;
    *(v11 + 96) = 0u;
    *(v11 + 112) = 0u;
    *(v11 + 128) = 0u;
    *(v11 + 144) = 0u;
    *(v11 + 160) = 0u;
    *(v11 + 176) = 0u;
    *(v11 + 192) = 0u;
    *(v11 + 208) = 0u;
    *(v11 + 224) = 0u;
    *(v11 + 240) = 0u;
    *(v11 + 256) = 0u;
    *(v11 + 272) = -1;
    *(v11 + 280) = v27;
    *(v11 + 288) = v26;
    *(v11 + 296) = v28;
    *(v11 + 304) = v25;
    *(v11 + 312) = v24;
    *(v11 + 320) = v13;
    *(v11 + 328) = 0;
    *(v11 + 336) = 0;
    *(v11 + 344) = 1;
    *(v11 + 352) = 0;
    *(v11 + 360) = 0;
    *(v11 + 368) = 1;
    *(v11 + 416) = 0;
    *(v11 + 424) = 1;
    __swift_project_boxed_opaque_existential_1((v14 + 208), *(v14 + 232));
    v21 = *(v14 + 985);

    v22 = swift_task_alloc();
    *(v0 + 232) = v22;
    *v22 = v0;
    v22[1] = sub_1DAF8A9D8;
    v23 = *(v0 + 224);

    return sub_1DAFF9558(v23, v21);
  }

  else
  {

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1DAF8A9D8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = sub_1DAF8AB8C;
  }

  else
  {
    v4 = sub_1DAF8AB04;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1DAF8AB04()
{
  v1 = *(v0 + 224);

  sub_1DAF8C320(v1, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DAF8AB8C()
{
  v12 = v0;
  v1 = *(v0 + 240);
  *(v0 + 168) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 192);

    v5 = *(v0 + 176);
    sub_1DAF877B0(v5);
    sub_1DAF8C080(v5);

    sub_1DAF8C320(v3, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  }

  else
  {
    v6 = *(v0 + 240);
    v7 = *(v0 + 224);
    v8 = *(v0 + 192);

    v11[0] = 14;
    v11[1] = 0xE000000000000000;

    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD000000000000019, 0x80000001DB0C36D0);
    swift_getErrorValue();
    sub_1DB09E234();
    CoreODILogger.info(_:category:)(0, 0xE000000000000000, v11);

    sub_1DAF8C320(v7, type metadata accessor for ODNAssessmentsFeedbackManager.ODNResultsPayload);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DAF8AD6C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 224) = a2;
  *(v4 + 232) = v3;
  *(v4 + 304) = a3;
  *(v4 + 216) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8AD94, v3, 0);
}

uint64_t sub_1DAF8AD94()
{
  v1 = v0[29];
  swift_beginAccess();
  v0[30] = *(v1 + 432);
  v0[31] = *(v1 + 440);
  sub_1DAF3523C(v1 + 448, (v0 + 12));
  v2 = v0[15];
  v3 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v4 = *(v3 + 24);

  v0[25] = v4(v2, v3);
  v0[26] = v5;
  sub_1DAF3523C(v1 + 448, (v0 + 17));
  v6 = v0[20];
  v7 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v6);
  (*(v7 + 64))(v6, v7);
  if (qword_1EE301710 != -1)
  {
    swift_once();
  }

  v8 = qword_1EE30A060;
  v0[32] = qword_1EE30A060;

  return MEMORY[0x1EEE6DFA0](sub_1DAF8AEF8, v8, 0);
}

uint64_t sub_1DAF8AEF8()
{
  v1 = v0[32];
  v2 = *(v1 + 120);
  if (v2)
  {
    v0[36] = *(v1 + 112);
    v0[37] = v2;
    v3 = v0[29];

    return MEMORY[0x1EEE6DFA0](sub_1DAF8B178, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[33] = v4;
    *v4 = v0;
    v4[1] = sub_1DAF8AFDC;

    return sub_1DAFB1344();
  }
}

uint64_t sub_1DAF8AFDC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DAF8B0F4, v4, 0);
}

uint64_t sub_1DAF8B0F4()
{
  v1 = v0[35];
  v2 = v0[32];
  *(v2 + 112) = v0[34];
  *(v2 + 120) = v1;

  v3 = v0[35];
  v0[36] = v0[34];
  v0[37] = v3;
  v4 = v0[29];

  return MEMORY[0x1EEE6DFA0](sub_1DAF8B178, v4, 0);
}

uint64_t sub_1DAF8B178()
{
  v1 = (*(*(v0 + 232) + 248) + OBJC_IVAR____TtC17CoreODIEssentials13DIPWebService_conversationID);
  v2 = *v1;
  v3 = v1[1];
  v4 = qword_1EE301DD0;

  if (v4 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  v7 = *(v0 + 248);
  v8 = *(v0 + 304);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v12 = qword_1EE309EE0;
  v11 = qword_1EE309EE8;
  v13 = *(v0 + 200);
  *v10 = *(v0 + 240);
  *(v10 + 8) = v7;
  *(v10 + 16) = v13;
  *(v10 + 32) = *(v0 + 16);
  v14 = *(v0 + 32);
  v15 = *(v0 + 48);
  v16 = *(v0 + 80);
  *(v10 + 80) = *(v0 + 64);
  *(v10 + 96) = v16;
  *(v10 + 48) = v14;
  *(v10 + 64) = v15;
  *(v10 + 112) = v6;
  *(v10 + 120) = v5;
  *(v10 + 128) = v2;
  *(v10 + 136) = v3;
  *(v10 + 144) = 0;
  *(v10 + 152) = 0;
  *(v10 + 160) = 1;
  *(v10 + 168) = 0;
  *(v10 + 176) = v12;
  *(v10 + 184) = v11;
  *(v10 + 192) = -45;
  *(v10 + 200) = v9;
  *(v10 + 208) = v8;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1DAF8B2AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DB09D734();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (sub_1DB09D714(), v7 = sub_1DB09D6D4(), v9 = v8, (*(v4 + 8))(v6, v3), v9 >> 60 != 15))
  {
    sub_1DB09CC24();
    swift_allocObject();
    sub_1DB09CC14();
    sub_1DAF8C4CC();
    sub_1DB09CC04();
    v38 = 0;

    v11 = v41;
    v12 = v42;
    v13 = v43;
    v10 = BYTE1(v43);
    sub_1DB09CC54();
    swift_allocObject();
    sub_1DB09CC44();
    v41 = v11;
    v42 = v12;
    LOBYTE(v43) = v13;
    BYTE1(v43) = 2;
    sub_1DAF63360();
    v14 = v38;
    v15 = sub_1DB09CC34();
    if (v14)
    {
      v38 = v14;

      sub_1DAF4AC40(v7, v9);
      v37 = v10;
      *&v41 = 0x657261685369646FLL;
      *(&v41 + 1) = 0xEF726567676F4C64;
      LOBYTE(v40[0]) = 1;
      CoreODILogger.info(_:category:)(0xD000000000000029, 0x80000001DB0C3C40, v40);

      if (qword_1EE300B90 != -1)
      {
        swift_once();
      }

      v17 = MEMORY[0x1E69E7CC0];
      v18 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
      if (*(v18 + 16) && (v19 = sub_1DAF35210(0x636F766E49504944, 0xEE00736E6F697461), (v20 & 1) != 0))
      {
        sub_1DAF409DC(*(v18 + 56) + 32 * v19, &v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
        v21 = swift_dynamicCast();
        LOBYTE(v10) = v37;
        if (v21)
        {
          v17 = *&v40[0];
        }
      }

      else
      {
        LOBYTE(v10) = v37;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1DAF72FF4(0, *(v17 + 2) + 1, 1, v17);
      }

      v23 = *(v17 + 2);
      v22 = *(v17 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v36 = v23 + 1;
        v34 = sub_1DAF72FF4((v22 > 1), v23 + 1, 1, v17);
        v24 = v36;
        v17 = v34;
      }

      *(v17 + 2) = v24;
      v25 = &v17[56 * v23];
      *(v25 + 4) = 0xD000000000000013;
      *(v25 + 5) = 0x80000001DB0C3C70;
      *(v25 + 6) = 0xD00000000000002DLL;
      *(v25 + 7) = 0x80000001DB0C3590;
      *(v25 + 8) = 0xD000000000000025;
      *(v25 + 9) = 0x80000001DB0C3C90;
      *(v25 + 10) = 296;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E478, &qword_1DB0A09A0);
      *&v41 = v17;
      sub_1DAF40D20(&v41, v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v18;
      sub_1DAF3B11C(v40, 0x636F766E49504944, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
      v27 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v28 = sub_1DB09D6B4();
      v29 = sub_1DB09D604();
      v30 = [v27 initWithDomain:v28 code:-1315 userInfo:v29];

      if (qword_1EE301DE8 != -1)
      {
        swift_once();
      }

      sub_1DAF4B4C0(v30, 0, 0xE000000000000000, qword_1EE30A148);
    }

    else
    {
      v32 = v15;
      v33 = v16;

      *&v41 = v32;
      *(&v41 + 1) = v33;
      sub_1DB09D714();
      sub_1DAF633B4();
      sub_1DB09D6F4();
      sub_1DAF4AC40(v7, v9);
      sub_1DAF40780(v32, v33);
    }
  }

  else
  {
    *&v41 = 0x657261685369646FLL;
    *(&v41 + 1) = 0xEF726567676F4C64;
    LOBYTE(v40[0]) = 1;
    CoreODILogger.debug(_:category:)(0xD00000000000001DLL, 0x80000001DB0C3C20, v40);

    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

id sub_1DAF8B988(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

void sub_1DAF8B998(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_1DAF8B9A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1DAF8B9C0()
{
  result = qword_1EE300AB8[0];
  if (!qword_1EE300AB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE300AB8);
  }

  return result;
}

uint64_t sub_1DAF8BABC(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 64);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DAF63DEC;

  return sub_1DAF890B8(a1, a2, a3, v7, v3 + 24, v8, v3 + 72, v3 + 136);
}

uint64_t sub_1DAF8BD1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DAF62CC4;

  return sub_1DAFF5A84(a1, v4, v5, v6);
}

unint64_t sub_1DAF8BF28()
{
  result = qword_1ECC0E7C8;
  if (!qword_1ECC0E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E7C8);
  }

  return result;
}

void sub_1DAF8C080(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_1DAF8C2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAF8C320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DAF8C3D4()
{
  result = qword_1ECC0E7D8;
  if (!qword_1ECC0E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E7D8);
  }

  return result;
}

uint64_t sub_1DAF8C428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PregeneratedAssessment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAF8C48C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1DAF8C4CC()
{
  result = qword_1ECC0E7E0;
  if (!qword_1ECC0E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0E7E0);
  }

  return result;
}

uint64_t sub_1DAF8C520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E7A0, &unk_1DB0A5140);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1DAF8C598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_17CoreODIEssentials21ODNAssessmentsManagerC0cD5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAF8C620(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF8C674(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1DAF8C6D0(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t HTTPStatusCode.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    result = 0x2073736563637553;
    switch(*v0)
    {
      case 1:
        result = 0xD000000000000019;
        break;
      case 2:
      case 9:
        result = 0xD000000000000017;
        break;
      case 3:
      case 5:
        result = 0xD000000000000012;
        break;
      case 4:
      case 0xELL:
        result = 0xD000000000000011;
        break;
      case 6:
        result = 0x6564646962726F46;
        break;
      case 7:
        result = 0x6E756F6620746F4ELL;
        break;
      case 8:
      case 0xCLL:
        result = 0xD00000000000001BLL;
        break;
      case 0xALL:
        result = 0xD000000000000019;
        break;
      case 0xBLL:
        result = 0xD000000000000014;
        break;
      case 0xDLL:
      case 0x10:
        result = 0xD000000000000015;
        break;
      case 0xFLL:
        result = 0xD000000000000019;
        break;
      default:
        return result;
    }
  }

  else
  {
    v2 = sub_1DB09E1D4();
    MEMORY[0x1E127FE90](v2);

    return 0x206E776F6E6B6E55;
  }

  return result;
}

uint64_t sub_1DAF8C94C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result <= 399)
  {
    switch(result)
    {
      case 200:
        result = 0;
        v2 = 1;
        break;
      case 301:
        v2 = 1;
        result = 2;
        break;
      case 304:
        v2 = 1;
        result = 3;
        break;
      default:
LABEL_22:
        v2 = 0;
        break;
    }
  }

  else
  {
    switch(result)
    {
      case 400:
        v2 = 1;
        result = 4;
        break;
      case 401:
        v2 = 1;
        result = 5;
        break;
      case 403:
        v2 = 1;
        result = 6;
        break;
      case 404:
        v2 = 1;
        result = 7;
        break;
      case 428:
        v2 = 1;
        result = 8;
        break;
      case 429:
        v2 = 1;
        result = 9;
        break;
      case 433:
        v2 = 1;
        result = 10;
        break;
      case 434:
        v2 = 1;
        result = 11;
        break;
      case 500:
        v2 = 1;
        result = 12;
        break;
      case 501:
        v2 = 1;
        result = 13;
        break;
      case 502:
        v2 = 1;
        result = 14;
        break;
      case 503:
        v2 = 1;
        result = 15;
        break;
      case 504:
        v2 = 1;
        result = 16;
        break;
      default:
        goto LABEL_22;
    }
  }

  *a2 = result;
  *(a2 + 8) = v2;
  return result;
}

BOOL _s17CoreODIEssentials14HTTPStatusCodeO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    switch(v2)
    {
      case 1:
        if (v3 != 1)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (v3 != 2)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (v3 != 3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (v3 != 4)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (v3 != 5)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (v3 != 6)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (v3 != 7)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (v3 != 8)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (v3 != 9)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 10:
        if (v3 != 10)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 11:
        if (v3 != 11)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 12:
        if (v3 != 12)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 13:
        if (v3 != 13)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 14:
        if (v3 != 14)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 15:
        if (v3 != 15)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 16:
        if (v3 <= 0xF)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (v3)
        {
          v4 = 0;
        }

        if ((v4 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 8) & 1) == 0 && v2 == v3;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HTTPStatusCode(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HTTPStatusCode(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1DAF8CC7C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF8CC98(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

CoreODIEssentials::ODIBindingsState __swiftcall ODIBindingsState.init(bindingsDict:missingBindings:bindingsSource:)(CoreODIEssentials::ODIBindingsDict bindingsDict, Swift::OpaquePointer missingBindings, CoreODIEssentials::ODIFieldsSource bindingsSource)
{
  v4 = *bindingsSource;
  *v3 = *bindingsDict.contents._rawValue;
  *(v3 + 8) = missingBindings;
  *(v3 + 16) = v4;
  result.missingBindings = missingBindings;
  result.bindingsDict = bindingsDict;
  result.bindingsSource = bindingsSource;
  return result;
}

Swift::tuple_CoreODIEssentials_ODIBindingsDict_OpaquePointer __swiftcall ODIBindingsState.bindingsAndMissing()()
{
  *v0 = *v1;

  result._1._rawValue = v3;
  result._0.contents._rawValue = v2;
  return result;
}

uint64_t static ODIFieldsSource.isFresherOrSame(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 2;
  if (v2 != 1)
  {
    v4 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (v2 == v3)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t ODIFieldsSource.hashValue.getter()
{
  v1 = *v0;
  sub_1DB09E3A4();
  MEMORY[0x1E1280A80](v1);
  return sub_1DB09E3E4();
}

Swift::Bool __swiftcall ODIBindingsDict.isEquivalent(to:)(CoreODIEssentials::ODIBindingsDict to)
{
  v2 = *to.contents._rawValue;
  v3 = *v1;
  if (sub_1DAF8CE60(v3, *to.contents._rawValue))
  {
    v6[0] = v2;
    v6[1] = v3;
    return ODIBindingsDict.isSubset(of:)(v6);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAF8CE60(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v6)
    {
      break;
    }

LABEL_10:
    if (*(a2 + 16))
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a1 + 48) + ((v9 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      sub_1DAF35210(v14, v13);
      LOBYTE(v14) = v15;

      if (v14)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return 1;
    }

    v6 = *(a1 + 64 + 8 * v9);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall ODIBindingsDict.isSubset(of:)(CoreODIEssentials::ODIBindingsDict of)
{
  v2 = v1;
  v3 = *of.contents._rawValue;
  v4 = *v2;
  v5 = (*v2 + 64);
  v6 = 1 << *(*v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *v5;
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_12:
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v16 = v15 | (v12 << 6);
      v17 = (*(v4 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1DAF3523C(*(v4 + 56) + 40 * v16, v27);
      *&v28 = v19;
      *(&v28 + 1) = v18;
      sub_1DAF332B8(v27, &v29);

      v14 = v12;
LABEL_13:
      v32 = v28;
      v33[0] = v29;
      v33[1] = v30;
      v34 = v31;
      v20 = *(&v28 + 1);
      if (!*(&v28 + 1))
      {
        break;
      }

      v21 = v32;
      sub_1DAF332B8(v33, &v28);
      if (!*(v3 + 16))
      {

LABEL_21:
        __swift_destroy_boxed_opaque_existential_1Tm(&v28);
        break;
      }

      v22 = sub_1DAF35210(v21, v20);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        goto LABEL_21;
      }

      sub_1DAF3523C(*(v3 + 56) + 40 * v22, v26);
      sub_1DAF332B8(v26, v27);
      v25 = _s17CoreODIEssentials12ODNAtorProxyC15isEqualBindings3lhs3rhsSbSH_s8Sendablep_SH_sAGptFZ_0(&v28, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v28);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v11 = v14;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    return v20 == 0;
  }

  else
  {
LABEL_5:
    if (v9 <= v11 + 1)
    {
      v13 = v11 + 1;
    }

    else
    {
      v13 = v9;
    }

    v14 = v13 - 1;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v8 = 0;
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        goto LABEL_13;
      }

      v8 = v5[v12];
      ++v11;
      if (v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void *ODNAtorParameters.init(bindings:missingBindings:structuredDeviceData:deviceDataFields:computationContext:contextualErrorInfo:bindingsOrigin:deviceDataOrigin:)@<X0>(void *__src@<X2>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v11 = *a5;
  v12 = *a6;
  v13 = *a7;
  v14 = *a8;
  *a9 = *a2;
  *(a9 + 8) = a3;
  result = memcpy((a9 + 16), __src, 0x40AuLL);
  *(a9 + 1056) = a4;
  *(a9 + 1064) = v11;
  *(a9 + 1065) = v12;
  *(a9 + 1066) = v13;
  *(a9 + 1067) = v14;
  return result;
}

uint64_t sub_1DAF8D1F0(uint64_t a1)
{
  v44 = MEMORY[0x1EEE9AC00](a1);
  v2 = *v1;
  memcpy(v57, v1 + 1, sizeof(v57));
  v42[3] = *(v1 + 1042);
  v43 = *(v1 + 1043);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;
  v45 = v2;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC8];
  v46 = v7;
  v47 = v2 + 64;
  while (1)
  {
    if (!v6)
    {
      if (v7 <= v8 + 1)
      {
        v12 = v8 + 1;
      }

      else
      {
        v12 = v7;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v11 >= v7)
        {
          v6 = 0;
          memset(v52, 0, 56);
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * v11);
        ++v8;
        if (v6)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      result = sub_1DB09E2E4();
      __break(1u);
      return result;
    }

    v11 = v8;
LABEL_15:
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v45 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    sub_1DAF3523C(*(v45 + 56) + 40 * v15, v51);
    *&v52[0] = v18;
    *(&v52[0] + 1) = v17;
    sub_1DAF332B8(v51, &v52[1]);

    v13 = v11;
LABEL_16:
    v53 = v52[0];
    v54 = v52[1];
    v55 = v52[2];
    v56 = *&v52[3];
    v19 = *(&v52[0] + 1);
    if (!*(&v52[0] + 1))
    {
      break;
    }

    v48 = v13;
    v20 = v53;
    v21 = __swift_project_boxed_opaque_existential_1(&v54, *(&v55 + 1));
    MEMORY[0x1EEE9AC00](v21);
    (*(v23 + 16))(v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    __swift_destroy_boxed_opaque_existential_1Tm(&v54);
    sub_1DB09DDB4();
    v51[0] = v52[0];
    v51[1] = v52[1];
    *&v51[2] = *&v52[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v9;
    v25 = sub_1DAF35210(v20, v19);
    v27 = v9[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_33;
    }

    v31 = v26;
    if (v9[3] < v30)
    {
      sub_1DAF378F4(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1DAF35210(v20, v19);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_35;
      }

LABEL_22:
      if (v31)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v39 = v25;
    sub_1DAF3C5A4();
    v25 = v39;
    if (v31)
    {
LABEL_4:
      v10 = v25;

      v9 = v50[0];
      sub_1DAF96AF4(v51, *(v50[0] + 56) + 40 * v10);
      goto LABEL_5;
    }

LABEL_23:
    v9 = v50[0];
    *(v50[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v33 = (v9[6] + 16 * v25);
    *v33 = v20;
    v33[1] = v19;
    v34 = v9[7] + 40 * v25;
    v35 = *&v51[2];
    v36 = v51[1];
    *v34 = v51[0];
    *(v34 + 16) = v36;
    *(v34 + 32) = v35;
    v37 = v9[2];
    v29 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v29)
    {
      goto LABEL_34;
    }

    v9[2] = v38;
LABEL_5:
    v3 = v47;
    v8 = v48;
    v7 = v46;
  }

  v40 = v44;
  sub_1DB08463C(v44, v9);

  memcpy(v52, v57, 0x40AuLL);
  if (sub_1DAF40964(v52) == 1)
  {
    sub_1DB09E3C4();
  }

  else
  {
    memcpy(v49, v57, sizeof(v49));
    sub_1DB09E3C4();
    memcpy(v50, v57, 0x40AuLL);
    sub_1DAF96A98(v50, v51);
    ArmandDeviceData.hash(into:)(v40);
    memcpy(v51, v49, 0x40AuLL);
    sub_1DAF40988(v51);
  }

  sub_1DB09E3C4();
  return MEMORY[0x1E1280A80](v43);
}

uint64_t sub_1DAF8D690()
{
  v1 = *v0;
  memcpy(__dst, (v0 + 8), 0x40AuLL);
  v2 = *(v0 + 1042);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1DB09D6B4();
  v5 = [v3 BOOLForKey_];

  if (v5)
  {
    sub_1DB09DE44();
    v15 = 0;
    v16 = 0xE000000000000000;
    MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0C46A0);
    memcpy(__src, __dst, 0x40AuLL);
    sub_1DAF40A84(__dst, v14, &qword_1ECC0E318, &qword_1DB0A02A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E318, &qword_1DB0A02A0);
    v6 = sub_1DB09D744();
    MEMORY[0x1E127FE90](v6);

    MEMORY[0x1E127FE90](0xD000000000000024, 0x80000001DB0C46D0);
    __src[0] = v1;
    sub_1DB09DF94();
  }

  else
  {
    sub_1DB09DE44();
    v15 = 0;
    v16 = 0xE000000000000000;
    MEMORY[0x1E127FE90](0xD000000000000025, 0x80000001DB0C46A0);
    memcpy(__src, __dst, 0x40AuLL);
    if (sub_1DAF40964(__src) == 1)
    {
      v7 = 0xE300000000000000;
      v8 = 7104878;
    }

    else
    {
      memcpy(v14, __src, 0x40AuLL);
      v8 = ArmandDeviceData.description.getter();
      v7 = v9;
    }

    MEMORY[0x1E127FE90](v8, v7);

    MEMORY[0x1E127FE90](0xD000000000000024, 0x80000001DB0C46D0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
    v10 = sub_1DB09D654();
    MEMORY[0x1E127FE90](v10);
  }

  MEMORY[0x1E127FE90](0xD00000000000002DLL, 0x80000001DB0C4700);
  if (v2)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v2)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v11, v12);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  return v15;
}

uint64_t sub_1DAF8D9CC()
{
  sub_1DB09E3A4();
  sub_1DAF8D1F0(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF8DA10()
{
  sub_1DB09E3A4();
  sub_1DAF8D1F0(v1);
  return sub_1DB09E3E4();
}

uint64_t sub_1DAF8DA54(uint64_t a1)
{
  v3 = v1;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v92 = v5;
  v6 = type metadata accessor for ODNAssessmentResult(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v90 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E790, &qword_1DB0A5100);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v91 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v81 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v105 = &v81 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v81 - v20;
  v22 = *v4;
  v89 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 16);
  sub_1DAF94918(v120);
  memcpy(&v121[1], v120, 0x40AuLL);
  v121[0] = v22;
  BYTE2(v121[130]) = 1;
  BYTE3(v121[130]) = v4;
  v122 = v7;
  v23 = *(v7 + 56);
  v94 = v21;
  v103 = v6;
  v83 = v23;
  v84 = v7 + 56;
  v23(v21, 1, 1, v6);
  v24 = v3[15];
  v25 = v3[16];
  v119[0] = 0;
  v119[1] = 0xE000000000000000;

  sub_1DB09DE44();

  v118[0] = 0xD00000000000002ALL;
  v118[1] = 0x80000001DB0C3F80;
  memcpy(v119, v121, 0x414uLL);
  v26 = sub_1DAF8D690();
  MEMORY[0x1E127FE90](v26);

  v27 = v118[0];
  v28 = v118[1];
  if (qword_1EE300A68 != -1)
  {
    swift_once();
  }

  v93 = v2;
  v29 = sub_1DB09D4B4();
  v30 = __swift_project_value_buffer(v29, qword_1EE309E50);

  sub_1DB0163B8(v30, v24, v25, v27, v28);

  swift_bridgeObjectRelease_n();
  swift_beginAccess();
  v104 = v3;
  v31 = v3[26];
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v107 = BYTE3(v121[130]);
  v36 = BYTE2(v121[130]);
  v37 = v121[0];

  sub_1DAF40898(v121, v119);
  memcpy(v117, &v121[1], sizeof(v117));
  v38 = 0;
  v39 = (v33 + 63) >> 6;
  v101 = v31;
  v102 = (v122 + 48);
  v96 = "No best assessment found";
  v82 = "table substitute";
  v85 = v37;
  v86 = 0x7FFFFFFFFFFFFFFFLL;
  v40 = v37;
  v41 = v95;
  while (2)
  {
    LODWORD(v87) = v36;
    LODWORD(v122) = v36 & 1;
    v42 = v107;
    v43 = v104;
    for (i = v40; ; v40 = i)
    {
      v116[0] = v40;
      memcpy(&v116[1], v117, 0x40AuLL);
      BYTE2(v116[130]) = v122;
      BYTE3(v116[130]) = v42;
      memcpy(v119, v116, 0x414uLL);
      if (!v35)
      {
        while (1)
        {
          v44 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v44 >= v39)
          {
            sub_1DAF407D4(v116);
            sub_1DAF407D4(v121);

            v67 = v92;
            v68 = v94;
            v69 = v91;
            goto LABEL_36;
          }

          v35 = *(v32 + 8 * v44);
          ++v38;
          if (v35)
          {
            v38 = v44;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_14:
      v45 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      memcpy(v118, (*(v31 + 48) + 1048 * (v45 | (v38 << 6))), 0x414uLL);
      v46 = v43[26];
      if (*(v46 + 16))
      {
        break;
      }

LABEL_8:
      v42 = v107;
    }

    sub_1DAF40898(v118, v113);

    v47 = sub_1DAF355A0(v118);
    if ((v48 & 1) == 0)
    {
      sub_1DAF407D4(v118);

      goto LABEL_8;
    }

    v49 = v98;
    sub_1DAF40A84(*(v46 + 56) + *(v99 + 72) * v47, v98, &qword_1ECC0E2F8, &qword_1DB0A0280);

    v50 = v105;
    sub_1DAF624E8(v49 + *(v100 + 48), v105, &qword_1ECC0E790, &qword_1DB0A5100);
    v51 = v50;
    v52 = v97;
    sub_1DAF40A84(v51, v97, &qword_1ECC0E790, &qword_1DB0A5100);
    v88 = *v102;
    if (v88(v52, 1, v103) == 1)
    {
      sub_1DAF407D4(v118);
      sub_1DAF40AEC(v52, &qword_1ECC0E790, &qword_1DB0A5100);
      memcpy(v112, v117, 0x40AuLL);
      v31 = v101;
LABEL_34:
      sub_1DAF40AEC(v105, &qword_1ECC0E790, &qword_1DB0A5100);
      memcpy(v117, v112, sizeof(v117));
      v36 = v87;
      v40 = i;
      continue;
    }

    break;
  }

  sub_1DAF94928(v52, v41, type metadata accessor for ODNAssessmentResult);
  v43 = v104;
  v53 = v41;
  sub_1DAF40898(v116, v113);
  v54 = sub_1DAF93398(v118);
  sub_1DAF407D4(v116);
  if (!v54)
  {
    sub_1DAF407D4(v118);
    v55 = v43[16];
    *v113 = v43[15];
    *&v113[8] = v55;
    v110 = 0;
    v111 = 0xE000000000000000;

    sub_1DB09DE44();
    if (*(v41 + 280))
    {
      v56 = *(v41 + 272);
      v57 = *(v41 + 280);
    }

    else
    {
      v57 = 0xE300000000000000;
      v56 = 7104878;
    }

    MEMORY[0x1E127FE90](v56, v57);

    MEMORY[0x1E127FE90](0xD000000000000020, v96 | 0x8000000000000000);
    LOBYTE(v108) = 13;
    CoreODILogger.debug(_:category:)(v110, v111, &v108);

    sub_1DAF94990(v53, type metadata accessor for ODNAssessmentResult);
    sub_1DAF40AEC(v105, &qword_1ECC0E790, &qword_1DB0A5100);
    v41 = v53;
    v31 = v101;
    goto LABEL_8;
  }

  if (*(v85 + 16) - *(v118[0] + 16) >= v86)
  {
    v41 = v95;
    sub_1DAF94990(v95, type metadata accessor for ODNAssessmentResult);
    sub_1DAF407D4(v118);
    memcpy(v113, v117, 0x40AuLL);
    v31 = v101;
    v61 = i;
  }

  else
  {
    v87 = *(v85 + 16) - *(v118[0] + 16);
    i = v118[0];
    sub_1DAF407D4(v116);
    v58 = v104[16];
    v110 = v104[15];
    v111 = v58;
    *v113 = 0;
    *&v113[8] = 0xE000000000000000;

    sub_1DB09DE44();

    v108 = 0x20746C75736552;
    v109 = 0xE700000000000000;
    v31 = v101;
    if (*(v95 + 280))
    {
      v59 = *(v95 + 272);
      v60 = *(v95 + 280);
    }

    else
    {
      v60 = 0xE300000000000000;
      v59 = 7104878;
    }

    MEMORY[0x1E127FE90](v59, v60);

    MEMORY[0x1E127FE90](0xD000000000000018, v82 | 0x8000000000000000);
    v62 = v94;
    if (v88(v94, 1, v103) || (v63 = *(v62 + 280)) == 0)
    {

      v63 = 0xE300000000000000;
      v64 = 7104878;
    }

    else
    {
      v65 = *(v62 + 272);

      v64 = v65;
    }

    MEMORY[0x1E127FE90](v64, v63);

    v113[0] = 13;
    CoreODILogger.debug(_:category:)(v108, v109, v113);

    v66 = v94;
    sub_1DAF40AEC(v94, &qword_1ECC0E790, &qword_1DB0A5100);
    v41 = v95;
    sub_1DAF94928(v95, v66, type metadata accessor for ODNAssessmentResult);
    v83(v66, 0, 1, v103);
    v107 = BYTE3(v118[130]);
    LODWORD(v122) = BYTE2(v118[130]);
    memcpy(v113, &v118[1], 0x40AuLL);
    v86 = v87;
    v61 = i;
    LODWORD(v87) = BYTE2(v118[130]);
  }

  memcpy(v112, v113, 0x40AuLL);
  i = v61;
  *v113 = v61;
  memcpy(&v113[8], v112, 0x40AuLL);
  v114 = v122;
  v115 = v107;
  if (v86)
  {
    goto LABEL_34;
  }

LABEL_41:
  sub_1DAF407D4(v113);
  sub_1DAF407D4(v121);
  v77 = v104[16];
  v110 = v104[15];
  v111 = v77;
  v108 = 0;
  v109 = 0xE000000000000000;

  sub_1DB09DE44();

  v108 = 0xD000000000000026;
  v109 = 0x80000001DB0C3FB0;
  v68 = v94;
  if (v88(v94, 1, v103) || (v79 = *(v68 + 280)) == 0)
  {
    v78 = 7104878;

    v79 = 0xE300000000000000;
  }

  else
  {
    v78 = *(v68 + 272);
  }

  v67 = v92;
  v69 = v91;
  MEMORY[0x1E127FE90](v78, v79);

  v80 = v108;
  LOBYTE(v108) = 13;
  CoreODILogger.debug(_:category:)(v80, v109, &v108);

  sub_1DAF40AEC(v105, &qword_1ECC0E790, &qword_1DB0A5100);
  v43 = v104;
LABEL_36:
  sub_1DAF40A84(v68, v69, &qword_1ECC0E790, &qword_1DB0A5100);
  if ((*v102)(v69, 1, v103) == 1)
  {
    sub_1DAF40AEC(v69, &qword_1ECC0E790, &qword_1DB0A5100);
    v70 = v43[16];
    *v113 = v43[15];
    *&v113[8] = v70;
    v112[0] = 13;

    CoreODILogger.debug(_:category:)(0xD000000000000018, 0x80000001DB0C3FE0, v112);

    v113[0] = -104;
    ODIAssessmentAdapter.adapt(withError:)(v113, v67);
  }

  else
  {
    v71 = v69;
    v72 = v90;
    sub_1DAF94928(v71, v90, type metadata accessor for ODNAssessmentResult);
    v73 = v43[16];
    *v113 = v43[15];
    *&v113[8] = v73;

    v74 = sub_1DAF63E04();
    v112[0] = 13;
    CoreODILogger.debug(_:category:)(v74, v75, v112);

    sub_1DAFB7FF4(v72, v89, v67);
    sub_1DAF94990(v72, type metadata accessor for ODNAssessmentResult);
  }

  return sub_1DAF40AEC(v68, &qword_1ECC0E790, &qword_1DB0A5100);
}

uint64_t ODNAtorProxy.__allocating_init(providerID:serverRepo:useDSID:sessionIdentifier:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  ODNAtorProxy.init(providerID:serverRepo:useDSID:sessionIdentifier:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *ODNAtorProxy.init(providerID:serverRepo:useDSID:sessionIdentifier:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v46 = a5;
  v47 = a6;
  v50 = a1;
  v11 = type metadata accessor for ODISignpost(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v46 - v15;
  v16 = *a3;
  v48 = *a4;
  v49 = v16;
  swift_defaultActor_initialize();
  v7[26] = sub_1DAF3F070(MEMORY[0x1E69E7CC0]);
  if (qword_1EE301460 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE309FC0;
  v17 = *algn_1EE309FC8;
  v19 = byte_1EE309FD0;
  v20 = qword_1EE309FD8;
  v21 = byte_1EE309FE0;
  *(v14 + 4) = "enableTelemetry=YES";
  *(v14 + 5) = 19;
  v14[48] = 2;
  *v14 = v18;
  *(v14 + 1) = v17;
  v14[16] = v19;
  *(v14 + 3) = v20;
  v51 = v11;
  v22 = *(v11 + 28);
  v23 = v20;
  sub_1DB09D474();
  v24 = sub_1DB09DC14();
  if (v21 == 1)
  {
    sub_1DB09D454(v24, &dword_1DAF16000, v23, v18, v17, v19, &v14[v22], "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v25 = v50;
  v26 = v52;
  sub_1DAF94928(v14, v52, type metadata accessor for ODISignpost);
  v7[17] = v25;
  v7[18] = a2;
  v28 = v46;
  v27 = v47;
  v7[15] = v46;
  v7[16] = v27;
  swift_bridgeObjectRetain_n();

  if (sub_1DAF92FC8(0x6C7070612E6D6F63, 0xED0000706D612E65, v25, a2))
  {
    v55 = v25;
    v56 = a2;
    MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
    v29 = v55;
    v30 = v56;
    v31 = &off_1F56CFE08;
    v32 = &type metadata for AMPAssessmentPayloadAdapter;
  }

  else
  {
    v55 = v25;
    v56 = a2;
    MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
    v29 = v55;
    v30 = v56;
    v31 = &off_1F56CCDB0;
    v32 = &type metadata for Base64AssessmentPayloadAdapter;
  }

  v7[19] = v29;
  v7[20] = v30;
  v7[21] = 45;
  v7[22] = 0xE100000000000000;
  v7[24] = v32;
  v7[25] = v31;
  v33 = v7[16];
  v55 = v7[15];
  v56 = v33;
  LOBYTE(v53) = 8;

  CoreODILogger.debug(_:category:)(0xD00000000000001ALL, 0x80000001DB0C4050, &v53);

  v34 = v7[16];
  v55 = v7[15];
  v56 = v34;
  LOBYTE(v53) = 14;

  CoreODILogger.debug(_:category:)(0xD00000000000001ELL, 0x80000001DB0C4070, &v53);

  type metadata accessor for ODNAtorQueueManager();
  v35 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v35 + 112) = MEMORY[0x1E69E7CC0];
  *(v35 + 136) = 0;
  *(v35 + 144) = 0;
  *(v35 + 152) = v28;
  *(v35 + 160) = v27;
  v55 = v28;
  v56 = v27;
  v53 = 0;
  v54 = 0xE000000000000000;

  sub_1DB09DE44();

  v53 = 0xD00000000000002BLL;
  v54 = 0x80000001DB0C4090;
  MEMORY[0x1E127FE90](v25, a2);
  v36 = v53;
  LOBYTE(v53) = 8;
  CoreODILogger.debug(_:category:)(v36, v54, &v53);

  v55 = v25;
  v56 = a2;

  MEMORY[0x1E127FE90](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  v37 = v55;
  v38 = v56;
  type metadata accessor for ODNAssessmentsFactory();
  v39 = swift_allocObject();
  v40 = *(v35 + 152);

  v42 = sub_1DAF93990(v25, a2, v37, v38, v48, v39, v49, v40, v41);
  v43 = sub_1DAF96CC8(&qword_1EE301100, 255, type metadata accessor for ODNAssessmentsManager, &unk_1DB0A50D8);
  *(v35 + 120) = v42;
  *(v35 + 128) = v43;
  v7[14] = v35;
  v44 = v7[16];
  v55 = v7[15];
  v56 = v44;
  LOBYTE(v53) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000019, 0x80000001DB0C40C0, &v53);

  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DAF94990(v26, type metadata accessor for ODISignpost);
  return v7;
}

uint64_t sub_1DAF8EDB0(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8EDD0, v1, 0);
}

uint64_t sub_1DAF8EDD0()
{
  if (qword_1EE304008 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF8EE9C;

  return sub_1DAFEFC24(v0 + 240);
}

uint64_t sub_1DAF8EE9C()
{
  v1 = *v0;
  v2 = *(*v0 + 472);

  v3 = v1[26];
  v1[11] = v1[25];
  v1[12] = v3;
  v4 = v1[28];
  v1[13] = v1[27];
  v1[14] = v4;
  v5 = v1[22];
  v1[7] = v1[21];
  v1[8] = v5;
  v6 = v1[24];
  v1[9] = v1[23];
  v1[10] = v6;
  v7 = v1[18];
  v1[3] = v1[17];
  v1[4] = v7;
  v8 = v1[20];
  v1[5] = v1[19];
  v1[6] = v8;
  v9 = v1[16];
  v1[1] = v1[15];
  v1[2] = v9;
  sub_1DAF791EC((v1 + 1));

  return MEMORY[0x1EEE6DFA0](sub_1DAF8EFEC, v2, 0);
}

uint64_t sub_1DAF8EFEC()
{
  v1 = *(*(v0 + 472) + 112);
  *(v0 + 488) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8F010, v1, 0);
}

uint64_t sub_1DAF8F010()
{
  v1 = *(*(v0 + 488) + 120);
  *(v0 + 496) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8F034, v1, 0);
}

uint64_t sub_1DAF8F034()
{
  v1 = swift_task_alloc();
  *(v0 + 504) = v1;
  *v1 = v0;
  v1[1] = sub_1DAF8F0D0;
  v2 = *(v0 + 464);

  return sub_1DAFA41D8(v2);
}

uint64_t sub_1DAF8F0D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DAF8F1E4()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8F208, v1, 0);
}

uint64_t sub_1DAF8F208()
{
  v1 = *(*(v0 + 24) + 120);
  *(v0 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAF8F22C, v1, 0);
}

uint64_t sub_1DAF8F22C()
{
  v1 = *(v0 + 32);
  v3 = *(v1 + 112);
  v2 = *(v1 + 120);
  v5 = *(v0 + 8);

  return v5(v3, v2);
}

uint64_t sub_1DAF8F2AC(uint64_t a1, uint64_t a2)
{
  *(v3 + 10432) = v2;
  *(v3 + 10424) = a1;
  *(v3 + 10440) = type metadata accessor for ODNAssessmentResult(0);
  *(v3 + 10448) = swift_task_alloc();
  *(v3 + 10456) = *a2;
  memcpy((v3 + 1056), (a2 + 16), 0x40AuLL);
  *(v3 + 10464) = *(a2 + 1056);
  *(v3 + 1051) = *(a2 + 1064);
  sub_1DAF40A84(v3 + 1056, v3 + 2096, &qword_1ECC0E318, &qword_1DB0A02A0);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8F38C, v2, 0);
}

uint64_t sub_1DAF8F38C()
{
  v16 = v0;
  v1 = v0[132];
  memcpy(v0 + 1172, v0 + 133, 0x402uLL);
  memcpy(v0 + 3, v0 + 133, 0x402uLL);
  v0[2] = v1;
  if (sub_1DAF40964(v0 + 2) != 1)
  {
    v2 = v0[1308];

    v1 = v2;
  }

  v0[1309] = v1;
  v0[392] = v1;
  memcpy(v0 + 393, v0 + 1172, 0x402uLL);
  if (sub_1DAF40964(v0 + 392) == 1)
  {
    v10 = sub_1DAF484E4(32123, 0xE200000000000000);
    v9 = v3;
    v11 = 0;
    v12 = 0xF000000000000000;
  }

  else
  {
    memcpy(v0 + 523, v0 + 1172, 0x402uLL);
    memcpy(&__src[8], v0 + 1172, 0x402uLL);
    *__src = v1;
    v0[522] = v1;
    sub_1DAF96A98((v0 + 522), (v0 + 652));
    v7 = sub_1DB054C84();
    v9 = v8;
    memcpy(v0 + 1042, __src, 0x40AuLL);
    sub_1DAF40988((v0 + 1042));
    sub_1DAF40674(v7, v9);
    v10 = v7;
    v11 = v7;
    v12 = v9;
  }

  v0[1313] = v12;
  v0[1312] = v11;
  v0[1311] = v9;
  v0[1310] = v10;
  v4 = v0[1304];
  v5 = v4[16];
  *__src = v4[15];
  *&__src[8] = v5;
  v15[0] = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000053, 0x80000001DB0C41E0, v15);

  v6 = v4[14];
  v0[1314] = v6;
  sub_1DAF40674(v10, v9);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8F5C4, v6, 0);
}

uint64_t sub_1DAF8F5C4()
{
  v22 = v0;
  v1 = *(v0 + 10512);
  v17 = *(v0 + 10480);
  v2 = *(v0 + 1051);
  v3 = *(v0 + 10456);
  v4 = *(v1 + 160);
  v20 = *(v1 + 152);
  v21 = v4;
  LOBYTE(v18) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000027, 0x80000001DB0C4240, &v18);

  *(v0 + 1050) = v2 ^ 1;
  v5 = *(v1 + 160);
  v18 = *(v1 + 152);
  v19 = v5;
  v20 = 0;
  v21 = 0xE000000000000000;

  sub_1DB09DE44();

  v20 = 0xD00000000000002CLL;
  v21 = 0x80000001DB0C4270;
  *(v0 + 10408) = v2 ^ 1u;
  v6 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v6);

  v7 = v20;
  LOBYTE(v20) = 8;
  CoreODILogger.debug(_:category:)(v7, v21, &v20);

  v8 = *(v1 + 160);
  v18 = *(v1 + 152);
  v19 = v8;
  v20 = 0;
  v21 = 0xE000000000000000;

  sub_1DB09DE44();

  v20 = 0xD00000000000002FLL;
  v21 = 0x80000001DB0C42A0;
  *(v0 + 10416) = 0;
  v9 = sub_1DB09E1D4();
  MEMORY[0x1E127FE90](v9);

  v10 = v20;
  LOBYTE(v20) = 8;
  CoreODILogger.debug(_:category:)(v10, v21, &v20);

  v11 = sub_1DAF96CC8(&qword_1EE3011E8, 255, type metadata accessor for ODNAtorQueueManager, &unk_1DB0ABE44);
  v12 = swift_task_alloc();
  *(v0 + 10520) = v12;
  *(v12 + 16) = v0 + 1050;
  *(v12 + 24) = 0;
  *(v12 + 32) = v17;
  *(v12 + 48) = v3;
  *(v12 + 56) = v2;
  *(v12 + 64) = v1;
  v13 = swift_task_alloc();
  *(v0 + 10528) = v13;
  *v13 = v0;
  v13[1] = sub_1DAF8F8C8;
  v14 = *(v0 + 10448);
  v15 = *(v0 + 10440);

  return MEMORY[0x1EEE6DDE0](v14, v1, v11, 0xD00000000000004BLL, 0x80000001DB0C42D0, sub_1DAF96B50, v12, v15);
}

uint64_t sub_1DAF8F8C8()
{
  v1 = *(*v0 + 10512);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8F9F4, v1, 0);
}

uint64_t sub_1DAF8F9F4()
{
  v1 = v0[1304];
  sub_1DAF40780(v0[1310], v0[1311]);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8FA64, v1, 0);
}

uint64_t sub_1DAF8FA64()
{
  v19 = v0;
  v1 = v0[1306];
  v2 = v0[1304];
  v3 = *(v2 + 128);
  v17 = *(v2 + 120);
  v18 = v3;
  LOBYTE(v16[0]) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000024, 0x80000001DB0C4320, v16);

  v4 = *(v1 + 296);
  v5 = v0[1313];
  v6 = v0[1312];
  v7 = v0[1311];
  v8 = v0[1310];
  if (v4)
  {
    v9 = v0[1304];
    v10 = *(v0[1306] + 288);
    v11 = *(v9 + 128);
    v16[0] = *(v9 + 120);
    v16[1] = v11;
    v17 = 0;
    v18 = 0xE000000000000000;

    sub_1DB09DE44();

    v17 = 0xD000000000000014;
    v18 = 0x80000001DB0C4350;
    MEMORY[0x1E127FE90](v10, v4);
    v12 = v17;
    LOBYTE(v17) = 8;
    CoreODILogger.debug(_:category:)(v12, v18, &v17);

    sub_1DAF40780(v8, v7);
    sub_1DAF4AC40(v6, v5);
  }

  else
  {
    sub_1DAF4AC40(v0[1312], v0[1313]);
    sub_1DAF40780(v8, v7);
  }

  v13 = v0[1309];
  sub_1DAF94928(v0[1306], v0[1303], type metadata accessor for ODNAssessmentResult);
  v0[912] = v13;
  memcpy(v0 + 913, v0 + 1172, 0x402uLL);
  sub_1DAF40AEC((v0 + 912), &qword_1ECC0E318, &qword_1DB0A02A0);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1DAF8FCB8(uint64_t a1, uint64_t a2)
{
  *(v3 + 2144) = v2;
  *(v3 + 2136) = a1;
  type metadata accessor for ODNAssessmentResult(0);
  *(v3 + 2152) = swift_task_alloc();
  *(v3 + 2160) = *a2;
  memcpy((v3 + 1088), (a2 + 16), 0x418uLL);
  v5 = *(a2 + 1064);
  *(v3 + 1084) = v5;
  *(v3 + 2192) = v5;
  *(v3 + 2184) = *(a2 + 1065);
  *(v3 + 2186) = *(a2 + 1067);

  return MEMORY[0x1EEE6DFA0](sub_1DAF8FD88, v2, 0);
}

uint64_t sub_1DAF8FD88()
{
  v14 = v0;
  v1 = *(v0 + 1084);
  v12 = 0;
  v13 = 0xE000000000000000;

  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  v11 = *(v0 + 2160);
  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD000000000000033, 0x80000001DB0C40E0);
  MEMORY[0x1E127FE90](v2, v3);

  MEMORY[0x1E127FE90](0xD000000000000010, 0x80000001DB0C4120);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5A8, &qword_1DB0AEA60);
  v4 = sub_1DB09D654();
  v6 = v5;

  MEMORY[0x1E127FE90](v4, v6);

  v7 = v12;
  LOBYTE(v12) = 8;
  CoreODILogger.debug(_:category:)(v7, v13, &v12);

  *(v0 + 16) = v11;
  memcpy((v0 + 32), (v0 + 1088), 0x418uLL);
  *(v0 + 1080) = *(v0 + 2192);
  *(v0 + 1081) = *(v0 + 2184);
  *(v0 + 1083) = *(v0 + 2186);
  v8 = swift_task_alloc();
  *(v0 + 2176) = v8;
  *v8 = v0;
  v8[1] = sub_1DAF8FFC0;
  v9 = *(v0 + 2152);

  return sub_1DAF901C8(v9, (v0 + 16));
}

uint64_t sub_1DAF8FFC0()
{
  v1 = *(*v0 + 2144);

  return MEMORY[0x1EEE6DFA0](sub_1DAF900D0, v1, 0);
}

uint64_t sub_1DAF900D0()
{
  v9 = v0;
  v1 = v0[271];
  v2 = v0[269];
  v3 = v0[267];

  v4 = sub_1DAF63E04();
  v8 = 14;
  CoreODILogger.debug(_:category:)(v4, v5, &v8);

  sub_1DAFB7FF4(v2, v1, v3);
  sub_1DAF94990(v2, type metadata accessor for ODNAssessmentResult);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DAF901C8(uint64_t a1, const void *a2)
{
  v3[805] = v2;
  v3[804] = a2;
  v3[803] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v3[806] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F8, &qword_1DB0A0280);
  v3[807] = v5;
  v3[808] = *(v5 - 8);
  v3[809] = swift_task_alloc();
  v3[810] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E2F0, &qword_1DB0A0278);
  v3[811] = swift_task_alloc();
  v3[812] = swift_task_alloc();
  v3[813] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x42CuLL);

  return MEMORY[0x1EEE6DFA0](sub_1DAF9034C, v2, 0);
}

uint64_t sub_1DAF9034C()
{
  v62 = v0;
  v1 = v0[2];
  v2 = v0[805];
  v3 = v0[804];
  v0[801] = v1;
  memcpy(v0 + 532, (v3 + 16), 0x40AuLL);
  v4 = *(v0 + 1080);
  v5 = *(v0 + 1082);
  memcpy(v0 + 271, (v3 + 16), 0x40AuLL);
  v0[270] = v1;
  *(v0 + 3202) = v4;
  *(v0 + 3203) = v5;
  v6 = v2[16];
  v59 = v2[15];
  v60 = v6;
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1DAF8BC6C((v0 + 801), (v0 + 802));
  sub_1DAF40A84((v0 + 532), (v0 + 662), &qword_1ECC0E318, &qword_1DB0A02A0);

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000003ALL, 0x80000001DB0C4370);
  if (v4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1E127FE90](v7, v8);

  MEMORY[0x1E127FE90](41, 0xE100000000000000);
  v9 = __dst[0];
  LOBYTE(__dst[0]) = 8;
  CoreODILogger.debug(_:category:)(v9, __dst[1], __dst);

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;

  sub_1DB09DE44();

  v59 = 0xD000000000000019;
  v60 = 0x80000001DB0C43B0;
  memcpy(__dst, v0 + 270, 0x414uLL);
  v10 = sub_1DAF8D690();
  MEMORY[0x1E127FE90](v10);

  LOBYTE(__dst[0]) = 8;
  CoreODILogger.debug(_:category:)(0xD000000000000019, 0x80000001DB0C43B0, __dst);

  swift_beginAccess();
  v11 = v2[26];
  if (*(v11 + 16))
  {

    v12 = sub_1DAF355A0(v0 + 270);
    if (v13)
    {
      sub_1DAF40A84(*(v11 + 56) + *(v0[808] + 72) * v12, v0[813], &qword_1ECC0E2F8, &qword_1DB0A0280);
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 1;
  }

  v15 = v0[813];
  v16 = v0[812];
  v17 = v0[808];
  v18 = v0[807];
  v19 = *(v17 + 56);
  v0[814] = v19;
  v19(v15, v14, 1, v18);
  sub_1DAF40A84(v15, v16, &qword_1ECC0E2F0, &qword_1DB0A0278);
  v20 = (*(v17 + 48))(v16, 1, v18);
  v21 = v0[812];
  if (v20 == 1)
  {
    v22 = &qword_1ECC0E2F0;
    v23 = &qword_1DB0A0278;
    goto LABEL_15;
  }

  v41 = v0[810];
  v42 = v0[809];
  v43 = v0[807];
  sub_1DAF624E8(v21, v41, &qword_1ECC0E2F8, &qword_1DB0A0280);
  v44 = v2[16];
  __dst[0] = v2[15];
  __dst[1] = v44;
  LOBYTE(v59) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000036, 0x80000001DB0C43D0, &v59);

  v45 = *v41;
  v0[815] = *v41;
  v46 = *(v43 + 48);
  sub_1DAF40A84(v41 + v46, v42 + v46, &qword_1ECC0E790, &qword_1DB0A5100);
  v47 = type metadata accessor for ODNAssessmentResult(0);
  if ((*(*(v47 - 8) + 48))(v42 + v46, 1, v47) == 1)
  {
    if (v45)
    {

      sub_1DAF407D4((v0 + 270));
      v48 = v2[16];
      __dst[0] = v2[15];
      __dst[1] = v48;
      LOBYTE(v59) = 8;

      CoreODILogger.debug(_:category:)(0xD00000000000004BLL, 0x80000001DB0C4460, &v59);

      v49 = swift_task_alloc();
      v0[816] = v49;
      *v49 = v0;
      v49[1] = sub_1DAF90BE0;
      v38 = v0[803];
      v39 = v45;
      v40 = v47;
      goto LABEL_19;
    }

    v55 = v0[810];
    v56 = v2[16];
    __dst[0] = v2[15];
    __dst[1] = v56;
    LOBYTE(v59) = 8;

    CoreODILogger.fault(_:category:)(0xD000000000000044, 0x80000001DB0C4410, &v59);

    v22 = &qword_1ECC0E2F8;
    v23 = &qword_1DB0A0280;
    v21 = v55;
LABEL_15:
    sub_1DAF40AEC(v21, v22, v23);
    v24 = v0[811];
    v58 = v0[808];
    v25 = v0[807];
    v26 = v0[806];
    v27 = v0[805];
    v28 = sub_1DB09DA24();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    v30 = sub_1DAF96CC8(&qword_1EE301810, v29, type metadata accessor for ODNAtorProxy, &protocol conformance descriptor for ODNAtorProxy);
    v31 = swift_allocObject();
    v31[2] = v27;
    v31[3] = v30;
    v31[4] = v27;
    memcpy(v31 + 5, v0 + 2, 0x42CuLL);
    swift_retain_n();
    sub_1DAF96C2C((v0 + 2), (v0 + 136));
    v32 = sub_1DAF4F3EC(0, 0, v26, &unk_1DB0A6188, v31);
    v0[817] = v32;
    v33 = *(v25 + 48);
    *v24 = v32;
    v34 = type metadata accessor for ODNAssessmentResult(0);
    v0[818] = v34;
    v35 = *(v34 - 8);
    v36 = *(v35 + 56);
    v0[819] = v36;
    v0[820] = (v35 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v36(v24 + v33, 1, 1, v34);
    v0[821] = (v58 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v19(v24, 0, 1, v25);
    swift_beginAccess();
    sub_1DAF40898((v0 + 270), (v0 + 401));

    sub_1DAF34254(v24, v0 + 270);
    swift_endAccess();
    v37 = swift_task_alloc();
    v0[822] = v37;
    *v37 = v0;
    v37[1] = sub_1DAF90DDC;
    v38 = v0[803];
    v39 = v32;
    v40 = v34;
LABEL_19:

    return MEMORY[0x1EEE6DA40](v38, v39, v40);
  }

  v50 = v0[813];
  v51 = v0[810];
  v52 = v0[803];
  sub_1DAF407D4((v0 + 270));
  sub_1DAF94928(v42 + v46, v52, type metadata accessor for ODNAssessmentResult);
  v53 = v2[16];
  __dst[0] = v2[15];
  __dst[1] = v53;
  LOBYTE(v59) = 8;

  CoreODILogger.debug(_:category:)(0xD000000000000033, 0x80000001DB0C44B0, &v59);

  sub_1DAF40AEC(v51, &qword_1ECC0E2F8, &qword_1DB0A0280);
  sub_1DAF40AEC(v50, &qword_1ECC0E2F0, &qword_1DB0A0278);

  v54 = v0[1];

  return v54();
}
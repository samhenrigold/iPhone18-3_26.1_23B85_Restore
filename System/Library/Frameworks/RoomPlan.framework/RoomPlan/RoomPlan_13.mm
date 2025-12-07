uint64_t sub_23A99B538()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A99B59C(char **a1, float32x2_t *a2)
{
  v4 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_23A975C20(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_23A994C74(v7, a2);

  *a1 = v4;
}

uint64_t sub_23A99B644(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_23AA0D1E4();
  return sub_23AA0D244();
}

uint64_t sub_23A99B6C4(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_23AA0D1E4();

  return MEMORY[0x2821FBE70](a1);
}

void sub_23A99B72C()
{
  v0 = sub_23AA0D104();
  v2 = sub_23A99B784(v0, v1);
  v4 = v3;

  qword_27DFB06E0 = v2;
  qword_27DFB06E8 = v4;
}

CFTypeRef sub_23A99B784(const __CFString *a1, double a2)
{
  v3 = sub_23AA0D184();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = *MEMORY[0x277CD2898];
  v5 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v4, v5);
  result = IORegistryEntryCreateCFProperty(MatchingService, a1, *MEMORY[0x277CBECE8], 0);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = swift_unknownObjectRetain_n();
  v10 = CFGetTypeID(v9);
  if (v10 != CFStringGetTypeID())
  {
    v11 = CFGetTypeID(v8);
    swift_unknownObjectRelease();
    if (v11 != CFDataGetTypeID() || (swift_unknownObjectRetain(), !swift_dynamicCast()))
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v12 = v21;
    sub_23AA0D174();
    v13 = sub_23AA0D154();
    v22 = v13;
    if (!v14)
    {
      v19 = v13;
      swift_unknownObjectRelease();
      sub_23A8EFA00(v12, v23);
      return v19;
    }

    v15 = v13;
    v16 = sub_23A99B644(v13, v14);
    if (v17)
    {
      if (!v16 && v17 == 0xE100000000000000)
      {

LABEL_18:
        sub_23A99B6C4(v18);
        swift_unknownObjectRelease();
        sub_23A8EFA00(v12, v23);

        return v22;
      }

      v20 = sub_23AA0DBD4();

      if (v20)
      {
        goto LABEL_18;
      }
    }

    swift_unknownObjectRelease();
    sub_23A8EFA00(v12, v23);
    return v15;
  }

  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v21;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A99B9F8()
{

  return swift_deallocClassInstance();
}

void sub_23A99BA54(char *a2@<X8>)
{
  v3 = sub_23AA0D134();
  v5 = v4;
  if (v3 == sub_23AA0D134() && v5 == v6)
  {
    goto LABEL_16;
  }

  v8 = sub_23AA0DBD4();

  if (v8)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_18;
  }

  v10 = sub_23AA0D134();
  v12 = v11;
  if (v10 == sub_23AA0D134() && v12 == v13)
  {
    v9 = 1;
LABEL_17:

    goto LABEL_18;
  }

  v15 = sub_23AA0DBD4();

  if (v15)
  {
    v9 = 1;
    goto LABEL_18;
  }

  v16 = sub_23AA0D134();
  v18 = v17;
  if (v16 == sub_23AA0D134() && v18 == v19)
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v20 = sub_23AA0DBD4();

  if (v20)
  {
    goto LABEL_6;
  }

  v21 = sub_23AA0D134();
  v23 = v22;
  if (v21 == sub_23AA0D134() && v23 == v24)
  {
    v9 = 2;
    goto LABEL_17;
  }

  v25 = sub_23AA0DBD4();

  if (v25)
  {
    v9 = 2;
    goto LABEL_18;
  }

  v26 = sub_23AA0D134();
  v28 = v27;
  if (v26 == sub_23AA0D134() && v28 == v29)
  {
    v9 = 3;
    goto LABEL_17;
  }

  v30 = sub_23AA0DBD4();

  if (v30)
  {
    v9 = 3;
    goto LABEL_18;
  }

  v31 = sub_23AA0D134();
  v33 = v32;
  if (v31 == sub_23AA0D134() && v33 == v34)
  {
    v9 = 4;
    goto LABEL_17;
  }

  v35 = sub_23AA0DBD4();

  if (v35)
  {
    v9 = 4;
    goto LABEL_18;
  }

  v36 = sub_23AA0D134();
  v38 = v37;
  if (v36 == sub_23AA0D134() && v38 == v39)
  {
    v9 = 5;
    goto LABEL_17;
  }

  v40 = sub_23AA0DBD4();

  if (v40)
  {
    v9 = 5;
    goto LABEL_18;
  }

  v41 = sub_23AA0D134();
  v43 = v42;
  if (v41 == sub_23AA0D134() && v43 == v44)
  {
    v9 = 6;
    goto LABEL_17;
  }

  v45 = sub_23AA0DBD4();

  if (v45)
  {
    v9 = 6;
    goto LABEL_18;
  }

  v46 = sub_23AA0D134();
  v48 = v47;
  if (v46 == sub_23AA0D134() && v48 == v49)
  {
    v9 = 7;
    goto LABEL_17;
  }

  v50 = sub_23AA0DBD4();

  if (v50)
  {
    v9 = 7;
    goto LABEL_18;
  }

  v51 = sub_23AA0D134();
  v53 = v52;
  if (v51 == sub_23AA0D134() && v53 == v54)
  {
    v9 = 8;
    goto LABEL_17;
  }

  v55 = sub_23AA0DBD4();

  if (v55)
  {
    v9 = 8;
    goto LABEL_18;
  }

  v56 = sub_23AA0D134();
  v58 = v57;
  if (v56 == sub_23AA0D134() && v58 == v59)
  {
    v9 = 9;
    goto LABEL_17;
  }

  v60 = sub_23AA0DBD4();

  if (v60)
  {
    v9 = 9;
    goto LABEL_18;
  }

  v61 = sub_23AA0D134();
  v63 = v62;
  if (v61 == sub_23AA0D134() && v63 == v64)
  {
    v9 = 10;
    goto LABEL_17;
  }

  v65 = sub_23AA0DBD4();

  if (v65)
  {
    v9 = 10;
    goto LABEL_18;
  }

  v66 = sub_23AA0D134();
  v68 = v67;
  if (v66 == sub_23AA0D134() && v68 == v69)
  {
    v9 = 11;
    goto LABEL_17;
  }

  v70 = sub_23AA0DBD4();

  if (v70)
  {
    v9 = 11;
    goto LABEL_18;
  }

  v71 = sub_23AA0D134();
  v73 = v72;
  if (v71 == sub_23AA0D134() && v73 == v74)
  {
    v9 = 12;
    goto LABEL_17;
  }

  v75 = sub_23AA0DBD4();

  if (v75)
  {
    v9 = 12;
    goto LABEL_18;
  }

  v76 = sub_23AA0D134();
  v78 = v77;
  if (v76 == sub_23AA0D134() && v78 == v79)
  {
    v9 = 13;
    goto LABEL_17;
  }

  v80 = sub_23AA0DBD4();

  if (v80)
  {
    v9 = 13;
    goto LABEL_18;
  }

  v81 = sub_23AA0D134();
  v83 = v82;
  if (v81 == sub_23AA0D134() && v83 == v84)
  {
    v9 = 14;
    goto LABEL_17;
  }

  v85 = sub_23AA0DBD4();

  if (v85)
  {
    v9 = 14;
    goto LABEL_18;
  }

  v86 = sub_23AA0D134();
  v88 = v87;
  if (v86 == sub_23AA0D134() && v88 == v89)
  {
    v9 = 15;
    goto LABEL_17;
  }

  v90 = sub_23AA0DBD4();

  if (v90)
  {
    v9 = 15;
  }

  else
  {
    v9 = 0;
  }

LABEL_18:
  *a2 = v9;
}

void sub_23A99C238(uint64_t *a1@<X8>)
{
  [*(v1 + OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_coreKeyframe) copy];
  sub_23AA0D704();
  swift_unknownObjectRelease();
  sub_23A8D6C58(0, &unk_27DFB1420, 0x277CE5380);
  if (swift_dynamicCast())
  {
    v3 = type metadata accessor for RoomScanKeyframe(0);
    v4 = objc_allocWithZone(v3);
    v5 = v7;
    v6 = sub_23A9A6F68(v5);

    a1[3] = v3;
    *a1 = v6;
  }

  else
  {
    sub_23AA0D9E4();
    __break(1u);
  }
}

void sub_23A99C5B8(uint64_t a1)
{
  if (!qword_27DFAEC00)
  {
    sub_23AA0C0E4();
    v1 = sub_23AA0D664();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFAEC00);
    }
  }
}

void sub_23A99C610(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB08D0, &qword_23AA19B70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  *(v1 + 24) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A62B8();
  sub_23AA0DD74();
  if (v2)
  {

    type metadata accessor for RoomScanKeyframeWrapper();
    swift_deallocPartialClassInstance();
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  sub_23A9347CC();
  sub_23AA0DAF4();
  v9 = v18[0];
  v10 = v18[1];
  sub_23A8D6C58(0, &qword_27DFAF298, 0x277CCAAC8);
  sub_23AA0D4F4();
  v14 = v9;
  sub_23A8D5194(v18, &v15, &unk_27DFB08E0, &qword_23AA13038);
  if (v16)
  {
    sub_23A8EF9F0(&v15, &v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF2B0, &unk_23AA13040);
    swift_dynamicCast();
    v11 = sub_23AA0D024();

    v12 = RSKeyframeFromDictionary();

    if (v12)
    {
      sub_23A8EFA00(v14, v10);
      sub_23A8D50D0(v18, &unk_27DFB08E0, &qword_23AA13038);
      (*(v6 + 8))(v8, v5);
      *(v3 + 16) = v12;
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23A99C900(void *a1)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A50, &unk_23AA19C00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-1] - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A62B8();
  sub_23AA0DD84();
  v6 = RSKeyframeToDictionary();
  if (v6)
  {
    v7 = v6;
    v8 = sub_23AA0D034();
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_self();
  v18[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF308, &qword_23AA13088);
  v10 = sub_23AA0D654();

  v18[0] = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v18];
  swift_unknownObjectRelease();
  v12 = v18[0];
  if (v11)
  {
    v13 = sub_23AA0BFE4();
    v15 = v14;

    v18[0] = v13;
    v18[1] = v15;
    sub_23A9348E4();
    sub_23AA0DB74();
    (*(v3 + 8))(v5, v2);
    sub_23A8EFA00(v13, v15);
  }

  else
  {
    v16 = v12;
    sub_23AA0BE74();

    swift_willThrow();
    (*(v3 + 8))(v5, v2);
  }
}

void sub_23A99CC14(BOOL *a3@<X8>)
{
  v4 = sub_23AA0DA64();

  *a3 = v4 != 0;
}

uint64_t sub_23A99CC6C(uint64_t a1)
{
  v2 = sub_23A9A62B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A99CCA8(uint64_t a1)
{
  v2 = sub_23A9A62B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A99CCE4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_23A99CE38(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  sub_23A8D5194(a1 + v8, v7, &unk_27DFB0970, &qword_23AA14E00);
  v9 = sub_23AA0C0E4();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_23AA0C084();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

void sub_23A99CF98(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    sub_23AA0C0A4();
    v10 = sub_23AA0C0E4();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_23AA0C0E4();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();
  v13 = a1;
  sub_23A8D5068(v9, &a1[v12], &unk_27DFB0970, &qword_23AA14E00);
  swift_endAccess();
}

id sub_23A99D240(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_23A99D310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23A99C5B8(319);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23A99D3D8(void *a1)
{
  v2 = v1;
  v4 = sub_23AA0D604();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 transform];
  v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v8.f32[0]), xmmword_23AA12250, *v8.f32, 1), xmmword_23AA12210, v8, 2), xmmword_23AA11AE0, v8, 3);
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v10.f32[0]), xmmword_23AA12250, *v10.f32, 1), xmmword_23AA12210, v10, 2), xmmword_23AA11AE0, v10, 3);
  v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v12.f32[0]), xmmword_23AA12250, *v12.f32, 1), xmmword_23AA12210, v12, 2), xmmword_23AA11AE0, v12, 3);
  v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v14.f32[0]), xmmword_23AA12250, *v14.f32, 1), xmmword_23AA12210, v14, 2), xmmword_23AA11AE0, v14, 3);
  v16 = vmulq_f32(v9, 0);
  __asm { FMOV            V6.4S, #-1.0 }

  v22 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v16, _Q6, v11), 0, v13), 0, v15);
  v23 = vmlaq_f32(v16, 0, v11);
  *(v2 + 80) = vmlaq_f32(vmlaq_f32(vmlaq_f32(v9, 0, v11), 0, v13), 0, v15);
  *(v2 + 96) = v22;
  *(v2 + 112) = vmlaq_f32(vmlaq_f32(v23, _Q6, v13), 0, v15);
  *(v2 + 128) = vaddq_f32(v15, vmlaq_f32(v23, 0, v13));
  [a1 intrinsics];
  *(v2 + 144) = v24;
  *(v2 + 160) = v25;
  *(v2 + 176) = v26;
  [a1 imageResolution];
  *(v2 + 192) = v27;
  *(v2 + 200) = v28;
  [a1 transform];
  *(v2 + 16) = v29;
  *(v2 + 32) = v30;
  *(v2 + 48) = v31;
  *(v2 + 64) = v32;
  sub_23AA0D614();

  v33 = sub_23AA0D5F4();
  v34 = (*(*(v33 - 8) + 48))(v7, 2, v33);
  if (v34)
  {
    if (v34 == 1)
    {
      *(v2 + 208) = 0;
    }

    else
    {
      *(v2 + 208) = 2;
    }
  }

  else
  {
    *(v2 + 208) = 1;
    sub_23A9A7D00(v7, MEMORY[0x277D82DB0]);
  }

  return v2;
}

_OWORD *sub_23A99D5D4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB08F0, &unk_23AA19B78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A630C();
  sub_23AA0DD74();
  if (v2)
  {
    type metadata accessor for RSCamera();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    v33 = 0;
    sub_23A9A6360();
    sub_23AA0DAF4();
    v26 = v6;
    sub_23A969E20(v31);
    v29 = v10;
    v30 = v9;
    v27 = v12;
    v28 = v11;

    v13 = v26;
    v14 = v29;
    v1[1] = v30;
    v1[2] = v14;
    v15 = v27;
    v1[3] = v28;
    v1[4] = v15;
    v33 = 1;
    sub_23AA0DAF4();
    sub_23A969E20(v31);
    v29 = v17;
    v30 = v16;
    v27 = v19;
    v28 = v18;

    v20 = v29;
    v1[5] = v30;
    v1[6] = v20;
    v21 = v27;
    v1[7] = v28;
    v1[8] = v21;
    v33 = 2;
    sub_23AA0DAF4();
    sub_23A975910(v31, v32);

    v22 = v32[1];
    v1[9] = v32[0];
    v1[10] = v22;
    v1[11] = v32[2];
    type metadata accessor for CGSize(0);
    v33 = 3;
    sub_23A9A64D8(&qword_27DFB0910, 255, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    sub_23AA0DAF4();
    v1[12] = v31;
    LOBYTE(v31) = 4;
    v23 = sub_23AA0DAE4();
    (*(v13 + 8))(v8, v5);
    *(v3 + 26) = v23;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_23A99D9D8()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A99DAD4(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A99DBBC()
{
  sub_23AA0DD14();
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

unint64_t sub_23A99DCB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A9A6F1C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23A99DCE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006DLL;
  v4 = 0x726F66736E617274;
  v5 = 0xEA00000000007363;
  v6 = 0x69736E6972746E69;
  v7 = 0xEF6E6F6974756C6FLL;
  v8 = 0x7365526567616D69;
  if (v2 != 3)
  {
    v8 = 0x676E696B63617274;
    v7 = 0xED00006574617453;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1702063984;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_23A99DD9C()
{
  v1 = *v0;
  v2 = 0x726F66736E617274;
  v3 = 0x69736E6972746E69;
  v4 = 0x7365526567616D69;
  if (v1 != 3)
  {
    v4 = 0x676E696B63617274;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1702063984;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23A99DE50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A9A6F1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A99DE78(uint64_t a1)
{
  v2 = sub_23A9A630C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A99DEB4(uint64_t a1)
{
  v2 = sub_23A9A630C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_23A99E018(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0918, &qword_23AA19B88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v1[3] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A63DC();
  sub_23AA0DD74();
  if (v2)
  {
    type metadata accessor for RSRawPointCloud();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDE0, &qword_23AA15D10);
    sub_23A9A7B58(&unk_27DFB0930, &qword_27DFAFD70, MEMORY[0x277D84AF8], MEMORY[0x277D83978]);
    sub_23AA0DAF4();
    v10 = v13;
    v3[4] = v13;
    v3[2] = *(v10 + 16);
    v11 = *(v6 + 8);

    v11(v8, v5);
    v3[3] = v10 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_23A99E22C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A38, &qword_23AA19BF8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A63DC();
  sub_23AA0DD84();
  v9[1] = *(v2 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFDE0, &qword_23AA15D10);
  sub_23A9A7B58(&unk_27DFB0A40, &qword_27DFAFD88, MEMORY[0x277D84AF0], MEMORY[0x277D83948]);
  sub_23AA0DB74();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_23A99E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23AA0DD14();
  sub_23AA0D1D4();
  return sub_23AA0DD54();
}

uint64_t sub_23A99E480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23AA0DD14();
  sub_23AA0D1D4();
  return sub_23AA0DD54();
}

void sub_23A99E4D8(BOOL *a3@<X8>)
{
  v4 = sub_23AA0DA64();

  *a3 = v4 != 0;
}

void sub_23A99E574(BOOL *a3@<X8>)
{
  v4 = sub_23AA0DA64();

  *a3 = v4 != 0;
}

uint64_t sub_23A99E5CC(uint64_t a1)
{
  v2 = sub_23A9A63DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A99E608(uint64_t a1)
{
  v2 = sub_23A9A63DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23A99E644()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A99E960(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0948, &qword_23AA19B90);
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v39 = v3;
  v40 = a1;
  *(v3 + 16) = 0;
  v8 = v3 + 16;
  *(v8 + 24) = 0u;
  *(v8 + 144) = 0;
  *(v8 + 8) = 0;
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0;
  *(v8 + 152) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A9A6430();
  sub_23AA0DD74();
  if (v2)
  {
    v10 = v39;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    type metadata accessor for RSFrame();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = (v8 + 24);
    *&v37 = v8;
    LOBYTE(v42) = 0;
    sub_23AA0DAC4();
    v10 = v39;
    *(v39 + 32) = v11;
    type metadata accessor for RSCamera();
    v12 = v7;
    v41 = 1;
    v14 = sub_23A9A64D8(&qword_27DFB0958, v13, type metadata accessor for RSCamera, &unk_23AA19AF8);
    sub_23AA0DAF4();
    v35 = v14;
    *(v10 + 24) = v42;
    swift_unknownObjectRelease();
    v41 = 2;
    v15 = sub_23A9A6484();
    v16 = v12;
    sub_23AA0DAF4();
    v17 = *v36;
    *v36 = v42;

    v41 = 3;
    sub_23AA0DAF4();
    v18 = *(v10 + 48);
    *(v10 + 48) = v42;

    v41 = 4;
    sub_23AA0DAF4();
    v19 = *(v10 + 56);
    *(v10 + 56) = v42;

    v41 = 5;
    sub_23AA0DAF4();
    v20 = *(v10 + 64);
    *(v10 + 64) = v42;

    v41 = 6;
    sub_23AA0DAF4();
    v21 = *(v10 + 72);
    *(v10 + 72) = v42;

    v36 = v15;
    LOBYTE(v42) = 7;
    *(v10 + 80) = sub_23AA0DAE4();
    type metadata accessor for RSRawPointCloud();
    v41 = 8;
    sub_23A9A64D8(&qword_27DFB0968, v22, type metadata accessor for RSRawPointCloud, &unk_23AA19AD0);
    sub_23AA0DAF4();
    *v37 = v42;
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    v41 = 9;
    sub_23A9A6360();
    sub_23AA0DAF4();
    sub_23A969E20(v42);
    v37 = v23;
    v33 = v25;
    v34 = v24;
    v32 = v26;

    v28 = v33;
    v27 = v34;
    *(v10 + 96) = v37;
    *(v10 + 112) = v27;
    v29 = v32;
    *(v10 + 128) = v28;
    *(v10 + 144) = v29;
    v41 = 10;
    sub_23AA0DAF4();
    *(v8 + 144) = v42;
    swift_unknownObjectRelease();
    v41 = 11;
    sub_23AA0DAF4();
    v30 = *(v10 + 168);
    *(v10 + 168) = v42;

    LOBYTE(v42) = 12;
    v31 = sub_23AA0DAE4();
    (*(v38 + 8))(v16, v5);
    *(v10 + 176) = v31;
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v10;
}

uint64_t sub_23A99F10C(char a1)
{
  result = 0x6D617473656D6974;
  switch(a1)
  {
    case 1:
      result = 0x6172656D6163;
      break;
    case 2:
      v3 = 0x42726F6C6F63;
      goto LABEL_8;
    case 3:
      v3 = 0x426874706564;
LABEL_8:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6675000000000000;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 9:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x6D6143656E656373;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23A99F2B8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23A99F10C(*a1);
  v5 = v4;
  if (v3 == sub_23A99F10C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23AA0DBD4();
  }

  return v8 & 1;
}

uint64_t sub_23A99F340()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23A99F10C(v1);
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

double sub_23A99F3A4(uint64_t a1)
{
  sub_23A99F10C(*v1);
  sub_23AA0D1D4();

  return result;
}

uint64_t sub_23A99F3F8()
{
  v1 = *v0;
  sub_23AA0DD14();
  sub_23A99F10C(v1);
  sub_23AA0D1D4();

  return sub_23AA0DD54();
}

unint64_t sub_23A99F458@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A9A6ED0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23A99F488@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23A99F10C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23A99F4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A9A6ED0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A99F504(uint64_t a1)
{
  v2 = sub_23A9A6430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A99F540(uint64_t a1)
{
  v2 = sub_23A9A6430();

  return MEMORY[0x2821FE720](a1, v2);
}

id *sub_23A99F57C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_23A99F5DC()
{
  sub_23A99F57C();

  return swift_deallocClassInstance();
}

uint64_t sub_23A99F67C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  a2();
  v10 = swift_allocObject();
  result = a5(a1);
  if (!v6)
  {
    *a6 = v10;
  }

  return result;
}

uint64_t sub_23A99F720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_23A99F790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

void sub_23A99F9B8(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  [a1 timestamp];
  *(v1 + 32) = v4;
  *(v1 + 160) = [a1 deviceOrientation];
  [a1 referenceOriginTransform];
  *(v1 + 48) = v5;
  *(v1 + 64) = v6;
  *(v1 + 80) = v7;
  *(v1 + 96) = v8;
  v9 = [a1 camera];
  type metadata accessor for OUCamera();
  swift_allocObject();
  v10 = sub_23A9A74C8(v9);

  v2[2] = v10;
  swift_unknownObjectRelease();
  v11 = [a1 rawSceneUnderstandingData];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [a1 rawSceneUnderstandingData];
  if (!v12)
  {
    __break(1u);
    goto LABEL_28;
  }

  v13 = v12;
  v14 = [v12 wideCamera];

  if (!v14)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v15 = [a1 rawSceneUnderstandingData];
  if (!v15)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = v15;
  v17 = [v15 wideCamera];

  if (!v17)
  {
LABEL_29:
    __break(1u);
    return;
  }

  swift_allocObject();
  v18 = sub_23A9A74C8(v17);

LABEL_8:
  v2[3] = v18;
  swift_unknownObjectRelease();
  v19 = [a1 capturedImage];
  v20 = v2[14];
  v2[14] = v19;

  v21 = [a1 rawSceneUnderstandingData];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 capturedImage];
  }

  else
  {
    v23 = 0;
  }

  v24 = v2[15];
  v2[15] = v23;

  v25 = [a1 rawSceneUnderstandingData];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 depthBuffer];
  }

  else
  {
    v27 = 0;
  }

  v28 = v2[16];
  v2[16] = v27;

  v29 = [a1 rawSceneUnderstandingData];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 depthConfidenceBuffer];
  }

  else
  {
    v31 = 0;
  }

  v32 = v2[17];
  v2[17] = v31;

  v33 = [a1 rawSceneUnderstandingData];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 semanticSegmentationBufferSampledForDepth];
  }

  else
  {
    v35 = 0;
  }

  v36 = v2[18];
  v2[18] = v35;

  v37 = [a1 rawSceneUnderstandingData];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 semanticSegmentationConfidenceBufferSampledForDepth];
  }

  else
  {
    v39 = 0;
  }

  v40 = v2[19];
  v2[19] = v39;

  v41 = [a1 worldTrackingState];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 vioTrackingState];
  }

  else
  {
    v43 = 0;
  }

  v2[21] = v43;
}

id *sub_23A99FD50()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_23A99FDA8()
{
  sub_23A99FD50();

  return swift_deallocClassInstance();
}

uint64_t sub_23A99FE00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB09B8, &qword_23AA19BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23AA12950;
  *(inited + 32) = 0x79745F7269616863;
  *(inited + 40) = 0xEA00000000006570;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB09C0, &qword_23AA19BC8);
  v1 = swift_initStackObject();
  *(v1 + 32) = 0x676E696E6964;
  *(v1 + 16) = xmmword_23AA11C20;
  *(v1 + 40) = 0xE600000000000000;
  *(v1 + 72) = &type metadata for ChairType;
  v2 = sub_23A9668A0();
  *(v1 + 48) = 0;
  *(v1 + 80) = v2;
  *(v1 + 88) = 0x6C6F6F7473;
  *(v1 + 96) = 0xE500000000000000;
  *(v1 + 128) = &type metadata for ChairType;
  *(v1 + 136) = v2;
  *(v1 + 104) = 1;
  *(v1 + 144) = 0x6C6576697773;
  *(v1 + 152) = 0xE600000000000000;
  *(v1 + 184) = &type metadata for ChairType;
  *(v1 + 192) = v2;
  *(v1 + 160) = 2;
  *(v1 + 200) = 0x726568746FLL;
  *(v1 + 208) = 0xE500000000000000;
  *(v1 + 240) = &type metadata for ChairType;
  *(v1 + 248) = v2;
  *(v1 + 216) = 3;
  v3 = sub_23A9DCEC8(v1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB09D0, &qword_23AA19BD0);
  swift_arrayDestroy();
  *(inited + 48) = v3;
  strcpy((inited + 56), "chair_leg_type");
  *(inited + 71) = -18;
  v4 = swift_initStackObject();
  *(v4 + 32) = 1920298854;
  *(v4 + 16) = xmmword_23AA15450;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 72) = &type metadata for ChairLegType;
  v5 = sub_23A966948();
  *(v4 + 48) = 0;
  *(v4 + 80) = v5;
  *(v4 + 88) = 1918989427;
  *(v4 + 96) = 0xE400000000000000;
  *(v4 + 128) = &type metadata for ChairLegType;
  *(v4 + 136) = v5;
  *(v4 + 104) = 1;
  *(v4 + 144) = 0x726568746FLL;
  *(v4 + 152) = 0xE500000000000000;
  *(v4 + 184) = &type metadata for ChairLegType;
  *(v4 + 192) = v5;
  *(v4 + 160) = 2;
  v6 = sub_23A9DCEC8(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 72) = v6;
  strcpy((inited + 80), "chair_arm_type");
  *(inited + 95) = -18;
  v7 = swift_initStackObject();
  *(v7 + 32) = 0x676E697373696DLL;
  *(v7 + 16) = xmmword_23AA11C10;
  *(v7 + 40) = 0xE700000000000000;
  *(v7 + 72) = &type metadata for ChairArmType;
  v8 = sub_23A96699C();
  *(v7 + 48) = 1;
  *(v7 + 80) = v8;
  *(v7 + 88) = 0x676E697473697865;
  *(v7 + 96) = 0xE800000000000000;
  *(v7 + 128) = &type metadata for ChairArmType;
  *(v7 + 136) = v8;
  *(v7 + 104) = 0;
  v9 = sub_23A9DCEC8(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 96) = v9;
  *(inited + 104) = 0x61625F7269616863;
  *(inited + 112) = 0xEF657079745F6B63;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_23AA11C10;
  *(v10 + 32) = 0x676E697373696DLL;
  *(v10 + 40) = 0xE700000000000000;
  *(v10 + 72) = &type metadata for ChairBackType;
  v11 = sub_23A9668F4();
  *(v10 + 48) = 1;
  *(v10 + 80) = v11;
  *(v10 + 88) = 0x676E697473697865;
  *(v10 + 96) = 0xE800000000000000;
  *(v10 + 128) = &type metadata for ChairBackType;
  *(v10 + 136) = v11;
  *(v10 + 104) = 0;
  v12 = sub_23A9DCEC8(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 120) = v12;
  *(inited + 128) = 0x7079745F61666F73;
  *(inited + 136) = 0xE900000000000065;
  v13 = swift_allocObject();
  *(v13 + 32) = 0x75676E6174636572;
  *(v13 + 16) = xmmword_23AA19830;
  *(v13 + 40) = 0xEB0000000072616CLL;
  *(v13 + 72) = &type metadata for SofaType;
  v14 = sub_23A96684C();
  *(v13 + 48) = 0;
  *(v13 + 80) = v14;
  *(v13 + 88) = 0x6465706168536CLL;
  *(v13 + 96) = 0xE700000000000000;
  *(v13 + 128) = &type metadata for SofaType;
  *(v13 + 136) = v14;
  *(v13 + 104) = 1;
  *(v13 + 144) = 0xD000000000000010;
  *(v13 + 152) = 0x800000023AA1CFD0;
  *(v13 + 184) = &type metadata for SofaType;
  *(v13 + 192) = v14;
  *(v13 + 160) = 2;
  *(v13 + 200) = 0x6553656C676E6973;
  *(v13 + 208) = 0xEA00000000007461;
  *(v13 + 240) = &type metadata for SofaType;
  *(v13 + 248) = v14;
  *(v13 + 216) = 3;
  *(v13 + 256) = 0x726568746FLL;
  *(v13 + 264) = 0xE500000000000000;
  *(v13 + 296) = &type metadata for SofaType;
  *(v13 + 304) = v14;
  *(v13 + 272) = 4;
  v15 = sub_23A9DCEC8(v13);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 144) = v15;
  *(inited + 152) = 0x79745F656C626174;
  *(inited + 160) = 0xEA00000000006570;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23AA15450;
  *(v16 + 32) = 0x656566666F63;
  *(v16 + 40) = 0xE600000000000000;
  *(v16 + 72) = &type metadata for TableType;
  v17 = sub_23A9667A4();
  *(v16 + 48) = 0;
  *(v16 + 80) = v17;
  *(v16 + 88) = 0x676E696E6964;
  *(v16 + 96) = 0xE600000000000000;
  *(v16 + 128) = &type metadata for TableType;
  *(v16 + 136) = v17;
  *(v16 + 104) = 1;
  *(v16 + 144) = 0x726568746FLL;
  *(v16 + 152) = 0xE500000000000000;
  *(v16 + 184) = &type metadata for TableType;
  *(v16 + 192) = v17;
  *(v16 + 160) = 2;
  v18 = sub_23A9DCEC8(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 168) = v18;
  *(inited + 176) = 0x68735F656C626174;
  *(inited + 184) = 0xEB00000000657061;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23AA11C20;
  *(v19 + 32) = 0x75676E6174636572;
  *(v19 + 40) = 0xEB0000000072616CLL;
  *(v19 + 72) = &type metadata for TableShapeType;
  v20 = sub_23A9667F8();
  *(v19 + 48) = 0;
  *(v19 + 80) = v20;
  *(v19 + 88) = 0x6465706168536CLL;
  *(v19 + 96) = 0xE700000000000000;
  *(v19 + 128) = &type metadata for TableShapeType;
  *(v19 + 136) = v20;
  *(v19 + 104) = 2;
  *(v19 + 144) = 0xD000000000000010;
  *(v19 + 152) = 0x800000023AA1CE10;
  *(v19 + 184) = &type metadata for TableShapeType;
  *(v19 + 192) = v20;
  *(v19 + 160) = 1;
  *(v19 + 200) = 0x726568746FLL;
  *(v19 + 208) = 0xE500000000000000;
  *(v19 + 240) = &type metadata for TableShapeType;
  *(v19 + 248) = v20;
  *(v19 + 216) = 3;
  v21 = sub_23A9DCEC8(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 192) = v21;
  strcpy((inited + 200), "storage_type");
  *(inited + 213) = 0;
  *(inited + 214) = -5120;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_23AA11C10;
  *(v22 + 32) = 0x74656E69626163;
  *(v22 + 40) = 0xE700000000000000;
  *(v22 + 72) = &type metadata for StorageType;
  v23 = sub_23A966750();
  *(v22 + 48) = 0;
  *(v22 + 80) = v23;
  *(v22 + 88) = 0x666C656873;
  *(v22 + 96) = 0xE500000000000000;
  *(v22 + 128) = &type metadata for StorageType;
  *(v22 + 136) = v23;
  *(v22 + 104) = 1;
  v24 = sub_23A9DCEC8(v22);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 216) = v24;
  v25 = sub_23A9DCFFC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A10, &qword_23AA19BD8);
  result = swift_arrayDestroy();
  off_27DFB06F0 = v25;
  return result;
}

uint64_t sub_23A9A05DC()
{
  v0 = sub_23AA0CE84();
  __swift_allocate_value_buffer(v0, qword_27DFB06F8);
  __swift_project_value_buffer(v0, qword_27DFB06F8);
  if (qword_27DFAE3A0 != -1)
  {
    swift_once();
  }

  return sub_23AA0CE64();
}

uint64_t sub_23A9A0698@<X0>(void *a1@<X0>, float32x4_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v4 - 8);
  v120 = &v113 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v113 - v7;
  v9 = sub_23AA0C0E4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 type];
  DirectionalAxis = RS3DSurfaceTypeGetDirectionalAxis();
  [a1 dimensions];
  v150 = v15;
  [a1 transform];
  if (DirectionalAxis == 1)
  {
    v20 = xmmword_23AA11AE0;
    v21 = xmmword_23AA12220;
    v22 = xmmword_23AA12240;
    v23 = xmmword_23AA12200;
    v24 = v150.i32[2];
  }

  else
  {
    v24 = v150.i32[1];
    v23 = *MEMORY[0x277D860B8];
    v22 = *(MEMORY[0x277D860B8] + 16);
    v21 = *(MEMORY[0x277D860B8] + 32);
    v20 = *(MEMORY[0x277D860B8] + 48);
  }

  v119 = v8;
  v25 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*MEMORY[0x277D46D70])), v17, *MEMORY[0x277D46D70], 1), v18, *MEMORY[0x277D46D70], 2), v19, *MEMORY[0x277D46D70], 3);
  v26 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 16))), v17, *(MEMORY[0x277D46D70] + 16), 1), v18, *(MEMORY[0x277D46D70] + 16), 2), v19, *(MEMORY[0x277D46D70] + 16), 3);
  v27 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 32))), v17, *(MEMORY[0x277D46D70] + 32), 1), v18, *(MEMORY[0x277D46D70] + 32), 2), v19, *(MEMORY[0x277D46D70] + 32), 3);
  v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 48))), v17, *(MEMORY[0x277D46D70] + 48), 1), v18, *(MEMORY[0x277D46D70] + 48), 2), v19, *(MEMORY[0x277D46D70] + 48), 3);
  v29 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v23.f32[0]), v26, *v23.f32, 1), v27, v23, 2);
  v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v22.f32[0]), v26, *v22.f32, 1), v27, v22, 2);
  v31 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v21.f32[0]), v26, *v21.f32, 1), v27, v21, 2);
  v32 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v20.f32[0]), v26, *v20.f32, 1), v27, v20, 2);
  if (qword_27DFAE4C0 != -1)
  {
    v148 = v30;
    v149 = v29;
    v146 = v31;
    v147 = v32;
    v150 = v20;
    v144 = v22;
    v145 = v21;
    v143 = v23;
    v142 = v28;
    swift_once();
    v28 = v142;
    v23 = v143;
    v22 = v144;
    v21 = v145;
    v31 = v146;
    v29 = v149;
    v20 = v150;
    v32 = v147;
    v30 = v148;
  }

  v33 = vmlaq_laneq_f32(v29, v28, v23, 3);
  v34 = vmlaq_laneq_f32(v30, v28, v22, 3);
  v35 = vmlaq_laneq_f32(v31, v28, v21, 3);
  v36 = vmlaq_laneq_f32(v32, v28, v20, 3);
  v38 = xmmword_27DFC0830;
  v37 = unk_27DFC0840;
  v40 = xmmword_27DFC0850;
  v39 = unk_27DFC0860;
  v148 = v34;
  v149 = v33;
  v146 = v35;
  v147 = v36;
  v140 = unk_27DFC0860;
  v139 = xmmword_27DFC0850;
  if (qword_27DFAE4B8 != -1)
  {
    v150 = unk_27DFC0840;
    v145 = xmmword_27DFC0830;
    swift_once();
    v38 = v145;
    v35.i32[0] = v146.i32[0];
    v33.i32[0] = v149.i32[0];
    v37 = v150;
    v40 = v139;
    v39 = v140;
    v36.i32[0] = v147;
    v34.i32[0] = v148.i32[0];
  }

  v142 = xmmword_27DFC07F0;
  v41 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, *&xmmword_27DFC07F0), v37, *&xmmword_27DFC07F0, 1), v40, xmmword_27DFC07F0, 2), v39, xmmword_27DFC07F0, 3);
  v141 = qword_27DFC0800;
  v138 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, *qword_27DFC0800.i32), v37, *qword_27DFC0800.i8, 1), v40, qword_27DFC0800, 2), v39, qword_27DFC0800, 3);
  v143 = xmmword_27DFC0810;
  v144 = qword_27DFC0820;
  v145 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, *&xmmword_27DFC0810), v37, *&xmmword_27DFC0810, 1), v40, xmmword_27DFC0810, 2);
  v150 = vmlaq_lane_f32(vmulq_n_f32(v38, qword_27DFC0820.f32[0]), v37, *qword_27DFC0820.f32, 1);
  v123 = vmulq_n_f32(v41, v33.f32[0]);
  v122 = vmulq_n_f32(v41, v34.f32[0]);
  v124 = vmulq_n_f32(v41, v35.f32[0]);
  v121 = vmulq_n_f32(v41, v36.f32[0]);
  v152 = MEMORY[0x277D84FA0];
  if (![a1 edgeStates])
  {
    sub_23A9EFAF4(&v151, 0);
  }

  v145 = vmlaq_laneq_f32(v145, v140, v143, 3);
  v150 = vmlaq_laneq_f32(v150, v139, v144, 2);
  v124 = vmlaq_lane_f32(v124, v138, *v146.f32, 1);
  v123 = vmlaq_lane_f32(v123, v138, *v149.f32, 1);
  v122 = vmlaq_lane_f32(v122, v138, *v148.f32, 1);
  v121 = vmlaq_lane_f32(v121, v138, *&v147, 1);
  if (([a1 edgeStates] & 0xFF00) == 0)
  {
    sub_23A9EFAF4(&v151, 1);
  }

  v150 = vmlaq_laneq_f32(v150, v140, v144, 3);
  v124 = vmlaq_laneq_f32(v124, v145, v146, 2);
  v123 = vmlaq_laneq_f32(v123, v145, v149, 2);
  v122 = vmlaq_laneq_f32(v122, v145, v148, 2);
  v121 = vmlaq_laneq_f32(v121, v145, v147, 2);
  if (([a1 edgeStates] & 0xFF0000) == 0)
  {
    sub_23A9EFAF4(&v151, 2);
  }

  v124 = vmlaq_laneq_f32(v124, v150, v146, 3);
  v123 = vmlaq_laneq_f32(v123, v150, v149, 3);
  v122 = vmlaq_laneq_f32(v122, v150, v148, 3);
  v121 = vmlaq_laneq_f32(v121, v150, v147, 3);
  if (!([a1 edgeStates] >> 24))
  {
    sub_23A9EFAF4(&v151, 3);
  }

  v153.columns[0] = v123;
  v153.columns[1] = v122;
  v153.columns[2] = v124;
  v153.columns[3] = v121;
  v154 = __invert_f4(v153);
  v140 = v154.columns[0];
  v139 = v154.columns[1];
  v138 = v154.columns[2];
  v137 = v154.columns[3];
  v42 = [a1 polygonSize];
  v117 = v9;
  v116 = v10;
  v118 = v13;
  v114 = a2;
  v115 = DirectionalAxis;
  if (v42 < 1)
  {
    v47 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
  }

  else
  {
    result = [a1 polygonSize];
    if (result < 0)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v44 = result;
    if (result)
    {
      v45 = 0;
      v136 = vdupq_lane_s32(*v142.i8, 1);
      v135 = vdupq_laneq_s32(v142, 2);
      v134 = vdupq_laneq_s32(v142, 3);
      v133 = vdupq_lane_s32(*v141.i8, 1);
      v132 = vdupq_laneq_s32(v141, 2);
      v131 = vdupq_laneq_s32(v141, 3);
      v130 = vdupq_lane_s32(*&v143, 1);
      v129 = vdupq_laneq_s32(v143, 2);
      v128 = vdupq_laneq_s32(v143, 3);
      v127 = vdupq_lane_s32(*v144.f32, 1);
      v126 = vdupq_laneq_s32(v144, 2);
      v46 = MEMORY[0x277D84F90];
      v47 = MEMORY[0x277D84F90];
      v125 = vdupq_laneq_s32(v144, 3);
      while (1)
      {
        result = [a1 polygon];
        if (!result)
        {
          goto LABEL_59;
        }

        v48 = *(result + 16 * v45);
        v145 = xmmword_27DFC0830;
        v146 = unk_27DFC0840;
        v147 = xmmword_27DFC0850;
        v148 = unk_27DFC0860;
        v149 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_23A9388A8(0, *(v47 + 2) + 1, 1, v47);
        }

        v50 = *(v47 + 2);
        v49 = *(v47 + 3);
        v51 = v150.i32[3];
        if (v50 >= v49 >> 1)
        {
          v60 = sub_23A9388A8((v49 > 1), v50 + 1, 1, v47);
          v51 = v150.i32[3];
          v47 = v60;
        }

        v52 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, v145.f32[0]), v139, *v145.f32, 1), v138, v145, 2), v137, v145, 3);
        v53 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, v146.f32[0]), v139, *v146.f32, 1), v138, v146, 2), v137, v146, 3);
        v54 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, *&v147), v139, *&v147, 1), v138, v147, 2), v137, v147, 3);
        v55 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, v148.f32[0]), v139, *v148.f32, 1), v138, v148, 2), v137, v148, 3);
        v56 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v52, v144.f32[0]), v127, v53), v126, v54), v125, v55), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v52, *v142.i32), v136, v53), v135, v54), v134, v55), v149.f32[0]), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v52, *v141.i32), v133, v53), v132, v54), v131, v55), *v149.f32, 1), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v52, *&v143), v130, v53), v129, v54), v128, v55), v149, 2));
        v56.i32[3] = v51;
        *(v47 + 2) = v50 + 1;
        v150 = v56;
        *&v47[16 * v50 + 32] = v56;
        result = [a1 polygonEdgeSides];
        if (!result)
        {
          goto LABEL_60;
        }

        if (*(result + v45) >= 4u)
        {
          v57 = 0;
        }

        else
        {
          v57 = *(result + v45);
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_23A93A078(0, *(v46 + 2) + 1, 1, v46);
        }

        v59 = *(v46 + 2);
        v58 = *(v46 + 3);
        if (v59 >= v58 >> 1)
        {
          v46 = sub_23A93A078((v58 > 1), v59 + 1, 1, v46);
        }

        ++v45;
        *(v46 + 2) = v59 + 1;
        v46[v59 + 32] = v57;
        if (v44 == v45)
        {
          goto LABEL_37;
        }
      }
    }

    v47 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
  }

LABEL_37:
  [a1 dimensions];
  v149 = v61;
  if (v115 != 1)
  {
    [a1 dimensions];
    v150 = v62;
    [a1 dimensions];
    v63 = v149;
    v63.i32[1] = v150.i32[2];
    v63.i32[2] = v64;
    v149 = v63;
  }

  [a1 confidence];
  v65 = v120;
  if (v66 <= 0.9)
  {
    [a1 confidence];
    if (v68 > 0.5)
    {
      v67 = 1;
    }

    else
    {
      v67 = 2;
    }
  }

  else
  {
    v67 = 0;
  }

  v69 = [a1 type];
  if (v69 >= 6)
  {
    v70 = 2;
  }

  else
  {
    v70 = 0x50103000402uLL >> (8 * v69);
  }

  v71 = v152;

  [a1 color];
  v148 = v72;
  result = [a1 identifier];
  if (!result)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v73 = result;
  v74.i64[1] = v124.i64[1];
  *v74.f32 = vneg_f32(*v124.f32);
  v150 = v74;
  v145.i64[0] = v71;

  sub_23AA0C0A4();

  v75 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v76 = *(v75 - 8);
  v77 = 1;
  *&v143 = *(v76 + 56);
  v142.i64[0] = v76 + 56;
  (v143)(v119, 1, 1, v75);
  v78 = [a1 parentIdentifier];
  v146.i32[0] = v67;
  v144.i32[0] = v70;
  if (v78)
  {
    v79 = v78;
    sub_23AA0C0A4();

    v77 = 0;
  }

  v80 = v116;
  v81 = *(v116 + 56);
  v82 = v117;
  v81(v65, v77, 1, v117);
  v83 = vnegq_f32(v124);
  v84.i64[0] = v150.i64[0];
  v84.i64[1] = vextq_s8(v83, v83, 8uLL).u64[0];
  v150 = v84;
  *&v147 = [a1 storyLevel];
  v85 = type metadata accessor for CapturedRoom.Surface(0);
  v86 = v85[13];
  v87 = v114;
  (v143)(v114 + v86, 1, 1, v75);
  v88 = v85[14];
  v81(v87 + v88, 1, 1, v82);
  v87->i8[0] = v144.i8[0];
  v87->i8[1] = v146.i8[0];
  v87->i64[1] = v145.i64[0];
  v89 = v123;
  v87[1] = v149;
  v87[2] = v89;
  v90 = v124;
  v87[3] = v122;
  v87[4] = v90;
  v91 = v150;
  v87[5] = v121;
  v87[6] = v91;
  v87[7] = v148;
  v92 = v118;
  v93 = v82;
  v94 = v85;
  (*(v80 + 16))(v87 + v85[11], v118, v93);
  v95 = v119;
  sub_23A8DE238(v119, v87 + v86, &qword_27DFAEB38, &unk_23AA11B60);
  v96 = v87 + v88;
  v97 = v120;
  sub_23A8DE238(v120, v96, &unk_27DFB0970, &qword_23AA14E00);
  *(v87->i64 + v85[15]) = v47;
  v98 = *(v47 + 2);
  if (v98)
  {
    v99 = MEMORY[0x277D84F90];
    v151 = MEMORY[0x277D84F90];

    sub_23A975DC0(0, v98, 0);
    v101 = v151;
    v102 = *(v151 + 16);
    v103 = 32;
    v104 = v123;
    v105 = v122;
    v106 = v124;
    v107 = v121;
    do
    {
      v108 = *&v47[v103];
      v151 = v101;
      v109 = *(v101 + 24);
      if (v102 >= v109 >> 1)
      {
        v149 = v108;
        v150 = v100;
        sub_23A975DC0((v109 > 1), v102 + 1, 1);
        v108 = v149;
        v100.i32[3] = v150.i32[3];
        v107 = v121;
        v106 = v124;
        v105 = v122;
        v104 = v123;
        v101 = v151;
      }

      v110 = vaddq_f32(v107, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v104, v108.f32[0]), v105, *v108.f32, 1), v106, v108, 2));
      v110.i32[3] = v100.i32[3];
      *(v101 + 16) = v102 + 1;
      *(v101 + 16 * v102 + 32) = v110;
      v103 += 16;
      ++v102;
      v100 = v110;
      --v98;
    }

    while (v98);

    sub_23A8D50D0(v120, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v119, &qword_27DFAEB38, &unk_23AA11B60);
    result = (*(v116 + 8))(v118, v117);
  }

  else
  {
    sub_23A8D50D0(v97, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v95, &qword_27DFAEB38, &unk_23AA11B60);
    result = (*(v116 + 8))(v92, v117);
    v101 = MEMORY[0x277D84F90];
    v99 = MEMORY[0x277D84F90];
  }

  v111 = v94[12];
  v112 = v94[18];
  *(v87->i64 + v94[16]) = v101;
  *(v87->i64 + v94[17]) = v46;
  *(v87->i32 + v112) = v24;
  *(v87->i64 + v111) = v147;
  *(v87->i64 + v94[19]) = v99;
  return result;
}

uint64_t sub_23A9A15CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v98 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v5 - 8);
  v119 = &v98 - v6;
  v7 = sub_23AA0C0E4();
  v118 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v120 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v109 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v114 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v115 = *(v11 - 8);
  v116 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v98 - v15;
  v117 = type metadata accessor for CapturedRoom.Surface(0);
  MEMORY[0x28223BE20](v117);
  v18 = (&v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23A9A0698(a1, v18);
  [a1 startOrientation];
  [a1 endOrientation];
  [a1 transform];
  v20 = v19;
  [a1 transform];
  atan2(v20, v21);
  v22 = v18[2];
  v23 = v18[3];
  v24 = v18[4];
  v25 = v18[5];
  v111 = v18;
  v112 = v25;
  v123 = vmlaq_f32(vmlaq_f32(vnegq_f32(v22), 0, v23), 0, v24);
  v26 = vmulq_f32(v22, 0);
  v122 = vmlaq_f32(vaddq_f32(v23, v26), 0, v24);
  v27 = vmlaq_f32(v26, 0, v23);
  __asm { FMOV            V4.4S, #-1.0 }

  v121 = vmlaq_f32(v27, _Q4, v24);
  v108 = vmlaq_f32(v27, 0, v24);
  v33 = objc_opt_self();
  v34 = [v33 degrees];
  sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
  sub_23AA0BC64();
  v35 = [v33 degrees];
  sub_23AA0BC64();
  [a1 circleCenter];
  v107 = v36;
  [a1 circleCenter];
  v38.i64[0] = v37;
  if (qword_27DFAE4C0 != -1)
  {
    v106 = v38;
    swift_once();
    v38 = v106;
  }

  v43.columns[0] = vmlaq_f32(v123, 0, v112);
  v43.columns[1] = vmlaq_f32(v122, 0, v112);
  v43.columns[3] = vaddq_f32(v112, v108);
  v40 = xmmword_27DFC0830;
  v39 = unk_27DFC0840;
  v42 = xmmword_27DFC0850;
  v41 = unk_27DFC0860;
  v43.columns[2] = vmlaq_f32(v121, 0, v112);
  v122 = v43.columns[1];
  v123 = v43.columns[0];
  v121 = v43.columns[2];
  v112 = v43.columns[3];
  if (qword_27DFAE4B8 != -1)
  {
    v106 = v38;
    v108 = unk_27DFC0860;
    v105 = xmmword_27DFC0850;
    v104 = unk_27DFC0840;
    v103 = xmmword_27DFC0830;
    swift_once();
    v40 = v103;
    v39 = v104;
    v42 = v105;
    v41 = v108;
    v38.i64[0] = v106.i64[0];
    v43.columns[3] = v112;
    v43.columns[2] = v121;
    v43.columns[1] = v122;
    v43.columns[0] = v123;
  }

  v108 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, qword_27DFC0820.f32[0]), v39, *qword_27DFC0820.f32, 1), v42, qword_27DFC0820, 2), v41, qword_27DFC0820, 3), vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, *&xmmword_27DFC07F0), v39, *&xmmword_27DFC07F0, 1), v42, xmmword_27DFC07F0, 2), v41, xmmword_27DFC07F0, 3), *&v107), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, *qword_27DFC0800.i32), v39, *qword_27DFC0800.i8, 1), v42, qword_27DFC0800, 2), v41, qword_27DFC0800, 3), *v38.f32, 1), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, *&xmmword_27DFC0810), v39, *&xmmword_27DFC0810, 1), v42, xmmword_27DFC0810, 2), v41, xmmword_27DFC0810, 3)));
  v125 = __invert_f4(v43);
  v125.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v125.columns[0], v108.f32[0]), v125.columns[1], *v108.f32, 1), v125.columns[2], v108, 2), v125.columns[3], v108, 3);
  v44 = vzip1_s32(*v125.columns[0].f32, *&vextq_s8(v125.columns[0], v125.columns[0], 8uLL));
  [a1 radius];
  v46 = v45;
  v47 = v114;
  v48 = *(v115 + 16);
  v49 = v114 + *(v9 + 24);
  v108.i64[0] = v16;
  v50 = v16;
  v51 = v116;
  v48(v49, v50, v116);
  v48(v47 + *(v9 + 28), v13, v51);
  *v47 = v44;
  *(v47 + 8) = v46;
  v52 = v111;
  LODWORD(v105) = v111->u16[0];
  *&v103 = v111->i64[1];
  v104 = v111[1];
  v106 = v111[6];

  [a1 color];
  v102 = v53;
  v54 = v117;
  v55 = v117[11];
  v101 = *(v118 + 16);
  v99 = v7;
  v101(v120, v52 + v55, v7);
  v56 = v119;
  sub_23A9A7C30(v47, v119, type metadata accessor for CapturedRoom.Surface.Curve);
  v57 = *(v109 + 56);
  v57(v56, 0, 1, v9);
  v58 = v110;
  sub_23A8D5194(v52 + v54[14], v110, &unk_27DFB0970, &qword_23AA14E00);
  v100 = *(v52->i64 + v54[15]);
  v59 = *(v52->i64 + v54[17]);
  *&v107 = v13;
  v60 = v54[13];
  v61 = v113;
  v62 = v9;
  v63 = v99;
  v57(v113 + v60, 1, 1, v62);
  v64 = v54[14];
  (*(v118 + 56))(v61 + v64, 1, 1, v63);
  *v61 = v105;
  *(v61 + 8) = v103;
  v66 = v122;
  v65 = v123;
  *(v61 + 16) = v104;
  *(v61 + 32) = v65;
  v67 = v121;
  *(v61 + 48) = v66;
  *(v61 + 64) = v67;
  v68 = v106;
  *(v61 + 80) = v112;
  *(v61 + 96) = v68;
  *(v61 + 112) = v102;
  v101((v61 + v54[11]), v120, v63);
  v109 = v59;

  sub_23A8DE238(v119, v61 + v60, &qword_27DFAEB38, &unk_23AA11B60);
  v69 = v58;
  v70 = v58;
  v71 = v100;
  sub_23A8DE238(v70, v61 + v64, &unk_27DFB0970, &qword_23AA14E00);
  *(v61 + v54[15]) = v71;
  v72 = v71[1].i64[0];
  v73 = MEMORY[0x277D84F90];
  if (v72)
  {
    v74 = v118;
    v124 = MEMORY[0x277D84F90];

    sub_23A975DC0(0, v72, 0);
    v76 = v124;
    v77 = v71 + 2;
    v78 = *(v124 + 16);
    v79 = v63;
    v80 = v119;
    v81 = v108.i64[0];
    v83 = v122;
    v82 = v123;
    v84 = v121;
    v85 = v112;
    do
    {
      v86 = *v77;
      v124 = v76;
      v87 = *(v76 + 24);
      if (v78 >= v87 >> 1)
      {
        v106 = v75;
        v105 = v86;
        sub_23A975DC0((v87 > 1), v78 + 1, 1);
        v86 = v105;
        v75.i32[3] = v106.i32[3];
        v85 = v112;
        v84 = v121;
        v83 = v122;
        v82 = v123;
        v69 = v110;
        v76 = v124;
      }

      v88 = vaddq_f32(v85, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, v86.f32[0]), v83, *v86.f32, 1), v84, v86, 2));
      v88.i32[3] = v75.i32[3];
      *(v76 + 16) = v78 + 1;
      *(v76 + 16 * v78 + 32) = v88;
      ++v77;
      ++v78;
      v75 = v88;
      --v72;
    }

    while (v72);
    sub_23A8D50D0(v69, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v80, &qword_27DFAEB38, &unk_23AA11B60);
    (*(v74 + 8))(v120, v79);
    sub_23A9A7D00(v114, type metadata accessor for CapturedRoom.Surface.Curve);
    v89 = v116;
    v90 = *(v115 + 8);
    v90(v107, v116);
    v90(v81, v89);
    result = sub_23A9A7D00(v111, type metadata accessor for CapturedRoom.Surface);
    v73 = MEMORY[0x277D84F90];
  }

  else
  {

    sub_23A8D50D0(v69, &unk_27DFB0970, &qword_23AA14E00);
    sub_23A8D50D0(v119, &qword_27DFAEB38, &unk_23AA11B60);
    (*(v118 + 8))(v120, v63);
    sub_23A9A7D00(v114, type metadata accessor for CapturedRoom.Surface.Curve);
    v92 = v116;
    v93 = *(v115 + 8);
    v93(v107, v116);
    v93(v108.i64[0], v92);
    result = sub_23A9A7D00(v52, type metadata accessor for CapturedRoom.Surface);
    v76 = MEMORY[0x277D84F90];
  }

  v94 = v117;
  v95 = v117[12];
  v96 = v117[18];
  v97 = v113;
  *(v113 + v117[16]) = v76;
  *(v97 + v94[17]) = v109;
  *(v97 + v96) = 0;
  *(v97 + v95) = 0;
  *(v97 + v94[19]) = v73;
  return result;
}

uint64_t sub_23A9A21A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v79 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v79 - v6;
  v8 = sub_23AA0C0E4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 quad];
  v95 = v13;
  v94 = v14;
  v93 = v15;
  v96 = v16;
  if (qword_27DFAE4C0 != -1)
  {
    swift_once();
  }

  v17 = MEMORY[0x277D860B8];
  v18 = MEMORY[0x277D46D70];
  v20 = xmmword_27DFC0830;
  v19 = unk_27DFC0840;
  v22 = xmmword_27DFC0850;
  v21 = unk_27DFC0860;
  v92 = unk_27DFC0860;
  v91 = xmmword_27DFC0850;
  v90 = unk_27DFC0840;
  v89 = xmmword_27DFC0830;
  if (qword_27DFAE4B8 != -1)
  {
    swift_once();
    v20 = xmmword_27DFC0830;
    v19 = unk_27DFC0840;
    v22 = xmmword_27DFC0850;
    v21 = unk_27DFC0860;
  }

  v82 = v20;
  v83 = v19;
  v84 = v22;
  v86 = v21;
  v23 = *v17;
  v98 = v17[1];
  v99 = v23;
  v97 = v17[2];
  v24 = v18[1];
  v100 = *v18;
  v101 = v24;
  v25 = v18[3];
  v102 = v18[2];
  v103 = v25;
  v81 = xmmword_27DFC07F0;
  v85 = qword_27DFC0800;
  v87 = xmmword_27DFC0810;
  v88 = qword_27DFC0820;
  v105 = sub_23A9A79F8(&unk_284D81650);
  [a1 score];
  if (v28 <= 0.9)
  {
    [a1 score];
    if (v29 > 0.5)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    v104 = v30;
  }

  else
  {
    v104 = 0;
  }

  *v26.f32 = vsub_f32(*&v94, *&v95);
  v26.f32[2] = *(&v94 + 2) - *(&v95 + 2);
  v31 = vmulq_f32(v26, v26);
  *v27.f32 = vsub_f32(*&v94, *&v93);
  v27.f32[2] = *(&v94 + 2) - *(&v93 + 2);
  v32 = vmulq_f32(v27, v27);
  v33 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, v81.f32[0]), v90, *v81.f32, 1), v91, v81, 2), v92, v81, 3);
  v34 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, v85.f32[0]), v90, *v85.f32, 1), v91, v85, 2), v92, v85, 3);
  v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, v87.f32[0]), v90, *v87.f32, 1), v91, v87, 2), v92, v87, 3);
  v36 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, v88.f32[0]), v90, *v88.f32, 1), v91, v88, 2), v92, v88, 3);
  __asm { FMOV            V19.2S, #0.25 }

  *v42.f32 = vmul_f32(vadd_f32(*v96.f32, vadd_f32(*&v93, vadd_f32(*&v94, vadd_f32(*&v95, 0)))), _D19);
  v42.i64[1] = __PAIR64__(1.0, (v96.f32[2] + (*(&v93 + 2) + (*(&v94 + 2) + (*(&v95 + 2) + 0.0)))) * 0.25);
  v43 = vmlaq_f32(vmlaq_f32(vmulq_f32(v99, 0), 0, v98), 0, v97);
  *v32.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v31, v31, 8uLL), *&vextq_s8(v32, v32, 8uLL)), vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8)));
  v44 = v32.u32[1];
  v45 = vaddq_f32(v42, v43);
  *v43.f32 = vsqrt_f32(*v32.i8);
  v96 = v43;
  *v43.f32 = vrsqrte_f32(v32.u32[0]);
  *v43.f32 = vmul_f32(*v43.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v43.f32, *v43.f32)));
  v46 = vmulq_n_f32(v26, vmul_f32(*v43.f32, vrsqrts_f32(v32.u32[0], vmul_f32(*v43.f32, *v43.f32))).f32[0]);
  *v32.i8 = vrsqrte_f32(v32.u32[1]);
  *v32.i8 = vmul_f32(*v32.i8, vrsqrts_f32(v44, vmul_f32(*v32.i8, *v32.i8)));
  v47 = vmulq_n_f32(v27, vmul_f32(*v32.i8, vrsqrts_f32(v44, vmul_f32(*v32.i8, *v32.i8))).f32[0]);
  v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL), vnegq_f32(v46)), v47, vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL));
  v49 = vmulq_f32(v48, v48);
  *&v50 = v49.f32[1] + (v49.f32[2] + v49.f32[0]);
  v51 = vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL);
  *v48.i8 = vrsqrte_f32(v50);
  *v48.i8 = vmul_f32(*v48.i8, vrsqrts_f32(v50, vmul_f32(*v48.i8, *v48.i8)));
  v52 = vmulq_n_f32(v51, vmul_f32(*v48.i8, vrsqrts_f32(v50, vmul_f32(*v48.i8, *v48.i8))).f32[0]);
  v52.f32[0] = 0.0 - v52.f32[0];
  v53 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v99, *v46.i32), v98, *v46.i8, 1), v97, v46, 2), 0, v42);
  v54 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v99, v52.f32[0]), v98, 0.0 - v52.f32[1]), v97, 0.0 - v52.f32[2]), 0, v42);
  v55 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v99, *v47.i32), v98, *v47.i8, 1), v97, v47, 2), 0, v42);
  v56 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v100.f32[0]), v54, *v100.f32, 1), v55, v100, 2), v45, v100, 3);
  v57 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v101.f32[0]), v54, *v101.f32, 1), v55, v101, 2), v45, v101, 3);
  v58 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v102.f32[0]), v54, *v102.f32, 1), v55, v102, 2), v45, v102, 3);
  v59 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, v103.f32[0]), v54, *v103.f32, 1), v55, v103, 2), v45, v103, 3);
  v103 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, v56.f32[0]), v34, *v56.f32, 1), v35, v56, 2), v36, v56, 3);
  v102 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, v57.f32[0]), v34, *v57.f32, 1), v35, v57, 2), v36, v57, 3);
  v100 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, v59.f32[0]), v34, *v59.f32, 1), v35, v59, 2), v36, v59, 3);
  v101 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, v58.f32[0]), v34, *v58.f32, 1), v35, v58, 2), v36, v58, 3);
  __asm { FMOV            V0.4S, #-1.0 }

  v98 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, v81.f32[0]), v83, *v81.f32, 1), v84, v81, 2), v86, v81, 3), 0.0 - v52.f32[0]), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, v85.f32[0]), v83, *v85.f32, 1), v84, v85, 2), v86, v85, 3), 0.0 - (0.0 - v52.f32[1])), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, v87.f32[0]), v83, *v87.f32, 1), v84, v87, 2), v86, v87, 3), 0.0 - (0.0 - v52.f32[2])), _Q0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v82, v88.f32[0]), v83, *v88.f32, 1), v84, v88, 2), v86, v88, 3));
  sub_23AA0C0D4();
  v61 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v97.i64[0] = v12;
  v62 = v61;
  *&v95 = *(*(v61 - 8) + 56);
  v79 = v7;
  (v95)(v7, 1, 1, v61);
  v63 = v80;
  sub_23AA0C0C4();
  v64 = *(v9 + 56);
  v64(v63, 0, 1, v8);
  v65 = type metadata accessor for CapturedRoom.Surface(0);
  v66 = v65[13];
  v99.i64[0] = v65[12];
  v67 = v106;
  (v95)(v106 + v66, 1, 1, v62);
  v68 = v65[14];
  v64(v67 + v68, 1, 1, v8);
  *&v95 = v65[18];
  *v67 = 2;
  *(v67 + 1) = v104;
  *(v67 + 8) = v105;
  v70 = v102;
  v69 = v103;
  *(v67 + 16) = v96;
  *(v67 + 32) = v69;
  v72 = v100;
  v71 = v101;
  *(v67 + 48) = v70;
  *(v67 + 64) = v71;
  v73 = v98;
  *(v67 + 80) = v72;
  *(v67 + 96) = v73;
  *(v67 + 112) = 0u;
  v74 = v97.i64[0];
  (*(v9 + 16))(v67 + v65[11], v97.i64[0], v8);
  v75 = v67 + v66;
  v76 = v79;
  sub_23A8DE238(v79, v75, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8DE238(v63, v67 + v68, &unk_27DFB0970, &qword_23AA14E00);
  v77 = MEMORY[0x277D84F90];
  *(v67 + v65[15]) = MEMORY[0x277D84F90];
  sub_23A8D50D0(v63, &unk_27DFB0970, &qword_23AA14E00);
  sub_23A8D50D0(v76, &qword_27DFAEB38, &unk_23AA11B60);
  result = (*(v9 + 8))(v74, v8);
  *(v67 + v65[16]) = v77;
  *(v67 + v65[17]) = v77;
  *(v67 + v95) = 0;
  *(v67 + v99.i64[0]) = 0;
  *(v67 + v65[19]) = v77;
  return result;
}

id sub_23A9A2A3C@<X0>(void *a1@<X0>, int64_t a2@<X8>)
{
  v128[5] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v91 - v5;
  v7 = sub_23AA0C0E4();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23AA0CE84();
  v115.i64[0] = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(MEMORY[0x277D860B8] + 16);
  v15 = *(MEMORY[0x277D860B8] + 32);
  v16 = *(MEMORY[0x277D860B8] + 48);
  v121 = *MEMORY[0x277D860B8];
  v122 = v14;
  v123 = v15;
  v124 = v16;
  v125 = xmmword_23AA19840;
  if (qword_27DFAE4E0 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v17 = [a1 getDimension:qword_27DFC0890 dim:&v125];
    v18 = [a1 getTransform:qword_27DFC0890 transform:&v121];
    if (!v17 || (v18 & 1) == 0)
    {
      v27 = type metadata accessor for CapturedRoom.Object(0);
      return (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
    }

    v100 = v121;
    v102 = v122;
    v104 = v123;
    v107 = v124;
    if (qword_27DFAE4C0 != -1)
    {
      swift_once();
    }

    v119 = v10;
    v105 = xmmword_27DFC0830;
    v106 = unk_27DFC0840;
    v108 = xmmword_27DFC0850;
    v110 = unk_27DFC0860;
    if (qword_27DFAE4B8 != -1)
    {
      swift_once();
    }

    v98 = xmmword_27DFC07F0;
    v99 = qword_27DFC0800;
    v101 = xmmword_27DFC0810;
    v103 = qword_27DFC0820;
    v109 = v125;
    v10 = &selRef_initWithDevice_;
    v19 = [a1 corners_status];
    v116.i64[0] = v11;
    v96 = v13;
    v113 = a2;
    v114 = v6;
    v112 = v7;
    v111 = v8;
    if (!v19)
    {
      break;
    }

    result = [a1 corners_status];
    if (!result)
    {
      goto LABEL_88;
    }

    v21 = result;
    v11 = sub_23A8D6C58(0, &qword_27DFAFB60, 0x277CCABB0);
    v22 = sub_23AA0D2F4();

    if (v22 >> 62)
    {
      v13 = sub_23AA0D7F4();

      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_85:
        __break(1u);
      }
    }

    else
    {
      v13 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v13)
    {
      break;
    }

    a2 = 0;
    v120 = 0;
    v8 = 1;
    while (a2 < v13)
    {
      v6 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        goto LABEL_79;
      }

      v23 = [a1 corners_status];
      if (!v23)
      {
        goto LABEL_85;
      }

      v7 = v23;
      v24 = sub_23AA0D2F4();

      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x23EE90360](a2, v24);
      }

      else
      {
        if (a2 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }

        v25 = *(v24 + 8 * a2 + 32);
      }

      v7 = v25;

      v26 = [v7 BOOLValue];

      if (a2 <= 31 && (v26 & 1) != 0 && ((1 << a2) & v120) == 0)
      {
        v120 |= 1 << a2++;
      }

      else
      {
        ++a2;
      }

      if (v6 == v13)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    swift_once();
  }

  v120 = 0;
LABEL_30:
  [a1 confidence];
  if (v28 <= 0.9)
  {
    [a1 confidence];
    if (v29 > 0.5)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    v97 = v30;
  }

  else
  {
    v97 = 0;
  }

  v31 = qword_27DFAE4D0;
  v32 = qword_27DFC0890;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_23AA0D134();
  v35 = v34;
  v36 = sub_23AA0D134();
  v11 = v37;
  v38 = v114;
  if (v33 == v36 && v35 == v37)
  {

LABEL_42:
    v40 = [a1 beautified_parts];
    goto LABEL_44;
  }

  v39 = sub_23AA0DBD4();

  if (v39)
  {
    goto LABEL_42;
  }

  v40 = [a1 parts];
LABEL_44:
  v41 = v40;
  v13 = v116.i64[0];
  if (v41)
  {
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB09A0, &qword_23AA19BB8);
    v43 = sub_23AA0D034();

    v44 = MEMORY[0x277D84F90];
    if ((byte_27DFC0888 & 1) == 0)
    {
      if (v43)
      {

        sub_23A9A38A4(v45);
        v6 = v46;

        if (v6)
        {
          v91[1] = v43;
          v48 = 0;
          v7 = v6 + 64;
          v49 = 1 << v6[32];
          v50 = -1;
          if (v49 < 64)
          {
            v50 = ~(-1 << v49);
          }

          v10 = v50 & *(v6 + 8);
          a2 = (v49 + 63) >> 6;
          v117 = MEMORY[0x277D84F90];
          v115.i64[0] += 8;
          *&v47 = 136315138;
          v92 = v47;
          v93 = v6;
          v95 = v6 + 64;
          v94 = a2;
LABEL_51:
          v51 = v48;
          while (v10)
          {
            v48 = v51;
LABEL_59:
            v52 = __clz(__rbit64(v10));
            v10 &= v10 - 1;
            v53 = (*(v6 + 6) + ((v48 << 10) | (16 * v52)));
            v11 = *v53;
            v54 = v53[1];

            sub_23A9A3AF0(v11, v54, &v126);
            if (v127)
            {

              sub_23A8CAA3C(&v126, v128);
              sub_23A8CA9D8(v128, &v126);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v117 = sub_23A939BE4(0, v117[2] + 1, 1, v117);
              }

              v62 = v117[2];
              v61 = v117[3];
              v8 = v62 + 1;
              if (v62 >= v61 >> 1)
              {
                v117 = sub_23A939BE4((v61 > 1), v62 + 1, 1, v117);
              }

              __swift_destroy_boxed_opaque_existential_1(v128);
              v63 = v117;
              v117[2] = v8;
              sub_23A8CAA3C(&v126, &v63[5 * v62 + 4]);
              goto LABEL_51;
            }

            sub_23A8D50D0(&v126, &qword_27DFB0998, &qword_23AA19BB0);
            v55 = v96;
            sub_23AA0CE74();

            v8 = sub_23AA0CE54();
            v56 = sub_23AA0D494();

            if (os_log_type_enabled(v8, v56))
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v128[0] = v58;
              *v57 = v92;
              v11 = sub_23A9A65A4(v11, v54, v128);

              *(v57 + 4) = v11;
              _os_log_impl(&dword_23A8B4000, v8, v56, "Error: Unable to convert object attribute: %s", v57, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v58);
              v59 = v58;
              v13 = v116.i64[0];
              MEMORY[0x23EE91710](v59, -1, -1);
              v60 = v57;
              v6 = v93;
              MEMORY[0x23EE91710](v60, -1, -1);
            }

            else
            {
            }

            (*v115.i64[0])(v55, v13);
            v51 = v48;
            v7 = v95;
            a2 = v94;
          }

          while (1)
          {
            v48 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_81;
            }

            if (v48 >= a2)
            {
              break;
            }

            v10 = v7[v48];
            ++v51;
            if (v10)
            {
              goto LABEL_59;
            }
          }

          v38 = v114;
          v44 = v117;
        }
      }
    }
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  result = [a1 type];
  if (!result)
  {
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    return result;
  }

  v64 = result;
  sub_23A99BA54(v128);

  v65 = LOBYTE(v128[0]);
  if (v44[2] && !CapturedRoom.Object.Category.supportsCombination(_:)(v44))
  {

    v44 = MEMORY[0x277D84F90];
  }

  result = [a1 identifier];
  if (!result)
  {
    goto LABEL_87;
  }

  v66 = result;
  v67 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*MEMORY[0x277D46D70])), v102, *MEMORY[0x277D46D70], 1), v104, *MEMORY[0x277D46D70], 2), v107, *MEMORY[0x277D46D70], 3);
  v68 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 16))), v102, *(MEMORY[0x277D46D70] + 16), 1), v104, *(MEMORY[0x277D46D70] + 16), 2), v107, *(MEMORY[0x277D46D70] + 16), 3);
  v69 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 32))), v102, *(MEMORY[0x277D46D70] + 32), 1), v104, *(MEMORY[0x277D46D70] + 32), 2), v107, *(MEMORY[0x277D46D70] + 32), 3);
  v70 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*(MEMORY[0x277D46D70] + 48))), v102, *(MEMORY[0x277D46D70] + 48), 1), v104, *(MEMORY[0x277D46D70] + 48), 2), v107, *(MEMORY[0x277D46D70] + 48), 3);
  v71 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v98.f32[0]), v106, *v98.f32, 1), v108, v98, 2), v110, v98, 3);
  v72 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v99.f32[0]), v106, *v99.f32, 1), v108, v99, 2), v110, v99, 3);
  v73 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v101.f32[0]), v106, *v101.f32, 1), v108, v101, 2), v110, v101, 3);
  v74 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v105, v103.f32[0]), v106, *v103.f32, 1), v108, v103, 2), v110, v103, 3);
  v116 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v67.f32[0]), v72, *v67.f32, 1), v73, v67, 2), v74, v67, 3);
  v115 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v68.f32[0]), v72, *v68.f32, 1), v73, v68, 2), v74, v68, 3);
  v110 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v69.f32[0]), v72, *v69.f32, 1), v73, v69, 2), v74, v69, 3);
  v108 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, v70.f32[0]), v72, *v70.f32, 1), v73, v70, 2), v74, v70, 3);
  v109 = vuzp1q_s32(v109, vrev64q_s32(v109));

  sub_23AA0C0A4();

  v75 = [a1 parent_id];
  v117 = v44;
  v118 = v65;
  if (v75)
  {
    v76 = v75;
    sub_23AA0C0A4();

    v77 = 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = v111;
  v79 = *(v111 + 56);
  v80 = v38;
  v81 = v38;
  v82 = v112;
  v79(v80, v77, 1, v112);
  [a1 color];
  v107 = v83;
  v84 = [a1 storyLevel];
  v85 = type metadata accessor for CapturedRoom.Object(0);
  v86 = v85[10];
  v87 = v85[11];
  v88 = v113;
  v79(v113 + v87, 1, 1, v82);
  *v88 = v118;
  *(v88 + 1) = v97;
  v89 = v116;
  *(v88 + 16) = v109;
  *(v88 + 32) = v89;
  v90 = v110;
  *(v88 + 48) = v115;
  *(v88 + 64) = v90;
  *(v88 + 80) = v108;
  (*(v78 + 32))(v88 + v85[8], v119, v82);
  sub_23A8D5068(v81, v88 + v87, &unk_27DFB0970, &qword_23AA14E00);
  *(v88 + v85[12]) = v120;
  *(v88 + v85[13]) = v107;
  *(v88 + v85[9]) = v117;
  *(v88 + v86) = v84;
  return (*(*(v85 - 1) + 56))(v88, 0, 1, v85);
}

void sub_23A9A38A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A18, &unk_23AA19BE0);
    v2 = sub_23AA0DA44();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v10 << 6)));
    v13 = *v11;
    v12 = v11[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB09A0, &qword_23AA19BB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0900, &qword_23AA15C70);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v14 = sub_23A9EDDFC(v13, v12);
    if (v15)
    {
      v8 = (v2[6] + 16 * v14);
      *v8 = v13;
      v8[1] = v12;
      v9 = v14;

      *(v2[7] + 8 * v9) = v20;

      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
      v16 = (v2[6] + 16 * v14);
      *v16 = v13;
      v16[1] = v12;
      *(v2[7] + 8 * v14) = v20;
      v17 = v2[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v2[2] = v19;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }
}

double sub_23A9A3AF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v32[0] = a1;
  *(&v32[0] + 1) = a2;
  sub_23A92F104();
  v8 = sub_23AA0D6F4();
  if (v8[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8;
  v3 = v8[8];
  v10 = v8[9];
  v11 = v8[10];
  v6 = v8[11];

  v5 = MEMORY[0x23EE8FC60](v3, v10, v11, v6);
  v4 = v12;

  if (v9[2] < 3uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = v9[12];
  v14 = v9[13];
  v15 = v9[14];
  v16 = v9[15];

  v6 = MEMORY[0x23EE8FC60](v13, v14, v15, v16);
  v3 = v17;

  if (qword_27DFAE4A8 != -1)
  {
LABEL_20:
    swift_once();
  }

  v18 = off_27DFB06F0;
  if (!*(off_27DFB06F0 + 2) || (v19 = sub_23A9EDDFC(v5, v4), (v20 & 1) == 0) || (v21 = *(v18[7] + 8 * v19), !*(v21 + 16)))
  {
LABEL_11:
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    if (!v18[2])
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v22 = sub_23A9EDDFC(v6, v3);
  if ((v23 & 1) == 0)
  {

    goto LABEL_11;
  }

  sub_23A8CA9D8(*(v21 + 56) + 40 * v22, v32);

  if (!v18[2])
  {
LABEL_9:

    goto LABEL_16;
  }

LABEL_12:
  v24 = sub_23A9EDDFC(v5, v4);
  v26 = v25;

  if (v26)
  {
    v27 = *(v18[7] + 8 * v24);
    if (*(v27 + 16))
    {

      v28 = sub_23A9EDDFC(v6, v3);
      v30 = v29;

      if (v30)
      {
        sub_23A8CA9D8(*(v27 + 56) + 40 * v28, a3);
        sub_23A8D50D0(v32, &qword_27DFB0998, &qword_23AA19BB0);

        return result;
      }
    }
  }

LABEL_16:

  sub_23A8D50D0(v32, &qword_27DFB0998, &qword_23AA19BB0);
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

void sub_23A9A3D80(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = [a1 polygon];
  v8 = [v7 count];

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_58:
    v136 = v15;
    v140 = v14;
    v130 = v17;
    v133 = v16;
    v124 = v10;
    v127 = v9;
    v118 = v12;
    v121 = v11;
    v116 = v13;
    swift_once();
    v13 = v116;
    v12 = v118;
    v11 = v121;
    v10 = v124;
    v9 = v127;
    v17 = v130;
    v16 = v133;
    v15 = v136;
    v14 = v140;
    goto LABEL_43;
  }

  v2 = &selRef_initWithDevice_;
  if (v8)
  {
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    do
    {
      v20 = [a1 polygon];
      v21 = [v20 points];

      v22 = v21[v18];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_23A938A28(0, *(v19 + 2) + 1, 1, v19);
      }

      v24 = *(v19 + 2);
      v23 = *(v19 + 3);
      if (v24 >= v23 >> 1)
      {
        v19 = sub_23A938A28((v23 > 1), v24 + 1, 1, v19);
      }

      v18 = v18 + 1;
      *(v19 + 2) = v24 + 1;
      *&v19[8 * v24 + 32] = v22;
    }

    while (v8 != v18);
  }

  v25 = [a1 label];
  v26 = sub_23AA0D134();
  v28 = v27;
  if (v26 == sub_23AA0D134() && v28 == v29)
  {

    v98 = 0;
  }

  else
  {
    v31 = sub_23AA0DBD4();

    if (v31)
    {

      v98 = 0;
    }

    else
    {
      v32 = sub_23AA0D134();
      v34 = v33;
      if (v32 == sub_23AA0D134() && v34 == v35)
      {

        v36 = 1;
      }

      else
      {
        v37 = sub_23AA0DBD4();

        if (v37)
        {

          v36 = 1;
        }

        else
        {
          v38 = sub_23AA0D134();
          v40 = v39;
          if (v38 == sub_23AA0D134() && v40 == v41)
          {

            v36 = 2;
          }

          else
          {
            v42 = sub_23AA0DBD4();

            if (v42)
            {

              v36 = 2;
            }

            else
            {
              v43 = sub_23AA0D134();
              v45 = v44;
              if (v43 == sub_23AA0D134() && v45 == v46)
              {

                v36 = 3;
              }

              else
              {
                v47 = sub_23AA0DBD4();

                if (v47)
                {

                  v36 = 3;
                }

                else
                {
                  v48 = sub_23AA0D134();
                  v50 = v49;
                  if (v48 == sub_23AA0D134() && v50 == v51)
                  {

                    v36 = 4;
                  }

                  else
                  {
                    v52 = sub_23AA0DBD4();

                    if (v52)
                    {

                      v36 = 4;
                    }

                    else
                    {
                      v53 = sub_23AA0D134();
                      v55 = v54;
                      if (v53 != sub_23AA0D134() || v55 != v56)
                      {
                        sub_23AA0DBD4();
                      }

                      v36 = 5;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v98 = v36;
    }
  }

  [a1 dimensions];
  v97 = v57;
  [a1 ceilingHeight];
  v3 = v58;
  [a1 floorHeight];
  v4 = v59;
  [a1 dimensions];
  v96 = v60;
  [a1 transform];
  v13 = *MEMORY[0x277D46D70];
  v12 = *(MEMORY[0x277D46D70] + 16);
  v11 = *(MEMORY[0x277D46D70] + 32);
  v10 = *(MEMORY[0x277D46D70] + 48);
  v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, COERCE_FLOAT(*MEMORY[0x277D46D70])), v62, *MEMORY[0x277D46D70], 1), v63, *MEMORY[0x277D46D70], 2);
  v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, v12.f32[0]), v62, *v12.f32, 1), v63, v12, 2);
  v15 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, v11.f32[0]), v62, *v11.f32, 1), v63, v11, 2);
  v14 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v61, v10.f32[0]), v62, *v10.f32, 1), v63, v10, 2);
  if (qword_27DFAE4C0 != -1)
  {
    goto LABEL_58;
  }

LABEL_43:
  v64 = vmlaq_laneq_f32(v17, v9, v13, 3);
  v65 = vmlaq_laneq_f32(v16, v9, v12, 3);
  v66 = vmlaq_laneq_f32(v15, v9, v11, 3);
  v67 = vmlaq_laneq_f32(v14, v9, v10, 3);
  v68 = xmmword_27DFC0830;
  v69 = unk_27DFC0840;
  v71 = xmmword_27DFC0850;
  v70 = unk_27DFC0860;
  if (qword_27DFAE4B8 != -1)
  {
    v137 = v66;
    v141 = v67;
    v131 = v64;
    v134 = v65;
    v125 = xmmword_27DFC0850;
    v128 = unk_27DFC0860;
    v119 = xmmword_27DFC0830;
    v122 = unk_27DFC0840;
    swift_once();
    v68 = v119;
    v69 = v122;
    v71 = v125;
    v70 = v128;
    v64 = v131;
    v65 = v134;
    v66 = v137;
    v67 = v141;
  }

  v120 = qword_27DFC0800;
  v123 = xmmword_27DFC07F0;
  v72 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, *&xmmword_27DFC07F0), v69, *&xmmword_27DFC07F0, 1), v71, xmmword_27DFC07F0, 2), v70, xmmword_27DFC07F0, 3);
  v73 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, *qword_27DFC0800.i32), v69, *qword_27DFC0800.i8, 1), v71, qword_27DFC0800, 2), v70, qword_27DFC0800, 3);
  v115 = qword_27DFC0820;
  v117 = xmmword_27DFC0810;
  v74 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, *&xmmword_27DFC0810), v69, *&xmmword_27DFC0810, 1), v71, xmmword_27DFC0810, 2), v70, xmmword_27DFC0810, 3);
  v75 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, qword_27DFC0820.f32[0]), v69, *qword_27DFC0820.f32, 1), v71, qword_27DFC0820, 2), v70, qword_27DFC0820, 3);
  v145.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, v64.f32[0]), v73, *v64.f32, 1), v74, v64, 2), v75, v64, 3);
  v145.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, v65.f32[0]), v73, *v65.f32, 1), v74, v65, 2), v75, v65, 3);
  v145.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, v66.f32[0]), v73, *v66.f32, 1), v74, v66, 2), v75, v66, 3);
  v145.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, v67.f32[0]), v73, *v67.f32, 1), v74, v67, 2), v75, v67, 3);
  v92 = v145.columns[1];
  v94 = v145.columns[0];
  v88 = v145.columns[3];
  v90 = v145.columns[2];
  v146 = __invert_f4(v145);
  v113 = v146.columns[1];
  v114 = v146.columns[0];
  v111 = v146.columns[3];
  v112 = v146.columns[2];
  v76 = [a1 polygon];
  v77 = [v76 count];

  if (v77 < 1)
  {
    goto LABEL_55;
  }

  v78 = [a1 polygon];
  v79 = [v78 count];

  if ((v79 & 0x8000000000000000) == 0)
  {
    if (v79)
    {
      v80 = 0;
      v109 = vdupq_laneq_s32(v123, 2);
      v110 = vdupq_lane_s32(*v123.i8, 1);
      v107 = vdupq_lane_s32(*v120.i8, 1);
      v108 = vdupq_laneq_s32(v123, 3);
      v105 = vdupq_laneq_s32(v120, 3);
      v106 = vdupq_laneq_s32(v120, 2);
      v103 = vdupq_laneq_s32(v117, 2);
      v104 = vdupq_lane_s32(*v117.i8, 1);
      v101 = vdupq_lane_s32(*v115.i8, 1);
      v102 = vdupq_laneq_s32(v117, 3);
      v99 = vdupq_laneq_s32(v115, 3);
      v100 = vdupq_laneq_s32(v115, 2);
      v81 = MEMORY[0x277D84F90];
      do
      {
        v82 = [a1 polygon];
        v83 = [v82 v2[133]];

        v138 = *&v83[8 * v80];
        v126 = xmmword_27DFC0830;
        v129 = unk_27DFC0840;
        v132 = xmmword_27DFC0850;
        v135 = unk_27DFC0860;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_23A938A28(0, *(v81 + 2) + 1, 1, v81);
        }

        v85 = *(v81 + 2);
        v84 = *(v81 + 3);
        if (v85 >= v84 >> 1)
        {
          v81 = sub_23A938A28((v84 > 1), v85 + 1, 1, v81);
        }

        v80 = v80 + 1;
        v86 = vaddq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v126, *v115.i32), v101, v129), v100, v132), v99, v135), vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v126, *v123.i32), v110, v129), v109, v132), v108, v135), v138.f32[0]), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v126, *v120.i32), v107, v129), v106, v132), v105, v135), v138, 1), 0, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v126, *v117.i32), v104, v129), v103, v132), v102, v135)));
        *(v81 + 2) = v85 + 1;
        *&v81[8 * v85 + 32] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v114, v86.f32[0]), v113, *v86.f32, 1), v112, v86, 2), v111, v86, 3).u64[0];
      }

      while (v79 != v80);
      goto LABEL_56;
    }

LABEL_55:
    v81 = MEMORY[0x277D84F90];
LABEL_56:
    LODWORD(v87) = v97;
    *(&v87 + 1) = v3 - v4;
    *(&v87 + 1) = v96;
    v139 = v87;
    LOBYTE(v142) = v98;
    *&v143 = [a1 storyLevel];
    LOBYTE(v144) = 0;
    *(&v144 + 1) = v81;
    nullsub_1();
    *(a2 + 96) = v89;
    *(a2 + 112) = v144;
    *(a2 + 128) = v139;
    *(a2 + 144) = 0;
    *(a2 + 32) = v143;
    *(a2 + 48) = v95;
    *(a2 + 64) = v93;
    *(a2 + 80) = v91;
    *a2 = v142;
    *(a2 + 16) = v89;
    return;
  }

  __break(1u);
}

uint64_t sub_23A9A46EC(uint64_t a1, unint64_t a2)
{
  v3 = type metadata accessor for CapturedRoom.Surface(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v11 = (&v30 - v10);
  if (v8 >> 62)
  {
    v22 = v8;
    result = sub_23AA0D7F4();
    v8 = v22;
    v30 = v6;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v14 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v6;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    goto LABEL_32;
  }

  v13 = 0;
  v31 = v8 & 0xC000000000000001;
  v14 = MEMORY[0x277D84F90];
  v15 = a2;
  v16 = v8;
  do
  {
    v17 = result;
    if (v31)
    {
      v18 = MEMORY[0x23EE90360](v13, v9);
    }

    else
    {
      v18 = *(v8 + 8 * v13 + 32);
    }

    v19 = v18;
    sub_23A9A0698(v18, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_23A938A00(0, v14[2] + 1, 1, v14);
    }

    v21 = v14[2];
    v20 = v14[3];
    if (v21 >= v20 >> 1)
    {
      v14 = sub_23A938A00((v20 > 1), v21 + 1, 1, v14);
    }

    ++v13;

    v14[2] = v21 + 1;
    sub_23A9A7C98(v11, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, type metadata accessor for CapturedRoom.Surface);
    result = v17;
    a2 = v15;
    v8 = v16;
  }

  while (v17 != v13);
LABEL_16:
  if (!(a2 >> 62))
  {
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v30;
    if (v23)
    {
      goto LABEL_18;
    }

    return v14;
  }

  result = sub_23AA0D7F4();
  v23 = result;
  v24 = v30;
  if (!result)
  {
    return v14;
  }

LABEL_18:
  if (v23 >= 1)
  {
    v25 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x23EE90360](v25, a2);
      }

      else
      {
        v26 = *(a2 + 8 * v25 + 32);
      }

      v27 = v26;
      sub_23A9A15CC(v26, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_23A938A00(0, v14[2] + 1, 1, v14);
      }

      v29 = v14[2];
      v28 = v14[3];
      if (v29 >= v28 >> 1)
      {
        v14 = sub_23A938A00((v28 > 1), v29 + 1, 1, v14);
      }

      ++v25;

      v14[2] = v29 + 1;
      sub_23A9A7C98(v24, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v29, type metadata accessor for CapturedRoom.Surface);
    }

    while (v23 != v25);
    return v14;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_23A9A4A38(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0990, &qword_23AA12EE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for CapturedRoom.Object(0);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v24 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  if (a1 >> 62)
  {
    v11 = sub_23AA0D7F4();
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    v23 = a1 & 0xC000000000000001;
    v13 = (v22 + 48);
    v14 = MEMORY[0x277D84F90];
    v20 = v5;
    v21 = a1;
    do
    {
      if (v23)
      {
        v15 = MEMORY[0x23EE90360](v12, a1, v8);
      }

      else
      {
        v15 = *(a1 + 8 * v12 + 32);
      }

      v16 = v15;
      sub_23A9A2A3C(v15, v4);
      if ((*v13)(v4, 1, v5) == 1)
      {

        sub_23A8D50D0(v4, &qword_27DFB0990, &qword_23AA12EE0);
      }

      else
      {
        sub_23A9A7C98(v4, v10, type metadata accessor for CapturedRoom.Object);
        sub_23A9A7C30(v10, v24, type metadata accessor for CapturedRoom.Object);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_23A93A178(0, v14[2] + 1, 1, v14);
        }

        v18 = v14[2];
        v17 = v14[3];
        if (v18 >= v17 >> 1)
        {
          v14 = sub_23A93A178((v17 > 1), v18 + 1, 1, v14);
        }

        sub_23A9A7D00(v10, type metadata accessor for CapturedRoom.Object);
        v14[2] = v18 + 1;
        sub_23A9A7C98(v24, v14 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, type metadata accessor for CapturedRoom.Object);
        v5 = v20;
        a1 = v21;
      }

      ++v12;
    }

    while (v11 != v12);
  }
}

unint64_t sub_23A9A4D4C(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_23AA0D7F4();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EE90360](v3, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      sub_23A9A3D80(v5, v17);
      v25 = v17[6];
      v26 = v17[7];
      v27 = v17[8];
      v28 = v18;
      v21 = v17[2];
      v22 = v17[3];
      v23 = v17[4];
      v24 = v17[5];
      v19 = v17[0];
      v20 = v17[1];
      if (sub_23A9A7B34(&v19) == 1)
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_23A9399B8(0, *(v4 + 2) + 1, 1, v4);
        }

        v8 = *(v4 + 2);
        v7 = *(v4 + 3);
        if (v8 >= v7 >> 1)
        {
          v4 = sub_23A9399B8((v7 > 1), v8 + 1, 1, v4);
        }

        *(v4 + 2) = v8 + 1;
        v9 = &v4[160 * v8];
        v10 = v20;
        *(v9 + 2) = v19;
        *(v9 + 3) = v10;
        v11 = v21;
        v12 = v22;
        v13 = v24;
        *(v9 + 6) = v23;
        *(v9 + 7) = v13;
        *(v9 + 4) = v11;
        *(v9 + 5) = v12;
        v14 = v25;
        v15 = v26;
        v16 = v27;
        v9[176] = v28;
        *(v9 + 9) = v15;
        *(v9 + 10) = v16;
        *(v9 + 8) = v14;
      }

      ++v3;
    }

    while (v2 != v3);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_23A9A4F08@<X0>(void *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>, __int128 a4@<Q0>, __n128 a5@<Q1>, __int128 a6@<Q2>, __n128 a7@<Q3>)
{
  v111 = a2;
  v119 = a6;
  v120 = a7;
  v117 = a4;
  v118 = a5;
  v102 = a1;
  v110 = type metadata accessor for CapturedRoom(0);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v14 = (&v102 - v13);
  if (v11 >> 62)
  {
    v101 = v11;
    result = sub_23AA0D7F4();
    v11 = v101;
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  v103 = a3;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    v105 = v11 & 0xC000000000000001;
    v104 = MEMORY[0x277D84F90] >> 62;
    v18 = MEMORY[0x277D84F90];
    v108 = v11;
    v107 = v9;
    v106 = result;
    do
    {
      if (v105)
      {
        v19 = MEMORY[0x23EE90360](v17, v12);
      }

      else
      {
        v19 = *(v11 + 8 * v17 + 32);
      }

      v20 = v19;
      if (qword_27DFAE4C0 != -1)
      {
        swift_once();
      }

      xmmword_27DFC0830 = v117;
      unk_27DFC0840 = v118;
      xmmword_27DFC0850 = v119;
      unk_27DFC0860 = v120;
      byte_27DFC0888 = 0;
      if (qword_27DFAE4E0 != -1)
      {
        swift_once();
      }

      v115 = v17;
      v116 = v18;
      v21 = qword_27DFC0890;
      qword_27DFC0890 = v111;
      v22 = v111;

      if (!v104 || (v23 = v16, sub_23AA0D7F4() <= 0))
      {
        v24 = [v20 objects];
        sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
        v23 = sub_23AA0D2F4();
      }

      v25 = [v20 doors];
      sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
      v26 = sub_23AA0D2F4();

      v122 = v26;
      v27 = [v20 opendoors];
      v28 = sub_23AA0D2F4();

      sub_23A912898(v28);
      v29 = [v20 walls];
      v30 = sub_23AA0D2F4();

      v31 = [v20 curvedWalls];
      sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
      v32 = sub_23AA0D2F4();

      v114 = sub_23A9A46EC(v30, v32);

      v33 = v122;
      v34 = [v20 curvedDoors];
      v35 = sub_23AA0D2F4();

      v113 = sub_23A9A46EC(v33, v35);

      v36 = [v20 windows];
      v37 = sub_23AA0D2F4();

      v38 = [v20 curvedWindows];
      v39 = sub_23AA0D2F4();

      v112 = sub_23A9A46EC(v37, v39);

      v40 = [v20 openings];
      v41 = sub_23AA0D2F4();

      v42 = sub_23A9A46EC(v41, v16);

      v43 = [v20 floors];
      v44 = sub_23AA0D2F4();

      v45 = sub_23A9A46EC(v44, v16);

      sub_23A9A4A38(v23);
      v47 = v46;

      v48 = [v20 roomTypes];
      sub_23A8D6C58(0, &qword_27DFB0A78, 0x277D46CA0);
      v49 = sub_23AA0D2F4();

      v50 = sub_23A9A4D4C(v49);

      v51 = [v20 storyLevel];
      v52 = v110;
      v53 = v16;
      v54 = *(v110 + 48);
      *(v14 + *(v110 + 52)) = 2;
      v55 = (v14 + v52[15]);
      *v55 = 0u;
      v55[1] = 0u;
      v56 = v113;
      *v14 = v114;
      v14[1] = v56;
      v14[2] = v112;
      v14[3] = v42;
      v14[4] = v45;
      v14[5] = v47;
      v57 = v53;
      *(v14 + v52[14]) = v53;
      sub_23AA0C0D4();
      *(v14 + v52[11]) = v50;
      *(v14 + v54) = v51;
      v58 = (v14 + v52[16]);
      v59 = v118;
      *v58 = v117;
      v58[1] = v59;
      v60 = v120;
      v58[2] = v119;
      v58[3] = v60;
      v121[3] = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
      v121[0] = v20;
      v61 = v20;
      sub_23A8D5068(v121, v55, &unk_27DFB1140, &qword_23AA19C10);
      v62 = v107;
      sub_23A9A7C30(v14, v107, type metadata accessor for CapturedRoom);
      v18 = v116;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_23A93A1A0(0, v18[2] + 1, 1, v18);
      }

      v63 = v115;
      v65 = v18[2];
      v64 = v18[3];
      v16 = v57;
      if (v65 >= v64 >> 1)
      {
        v18 = sub_23A93A1A0((v64 > 1), v65 + 1, 1, v18);
      }

      v17 = v63 + 1;

      v18[2] = v65 + 1;
      sub_23A9A7C98(v62, v18 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v65, type metadata accessor for CapturedRoom);
      sub_23A9A7D00(v14, type metadata accessor for CapturedRoom);
      v11 = v108;
    }

    while (v106 != v17);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v116 = v18;
  if (qword_27DFAE4C0 != -1)
  {
    swift_once();
  }

  xmmword_27DFC0830 = v117;
  unk_27DFC0840 = v118;
  xmmword_27DFC0850 = v119;
  unk_27DFC0860 = v120;
  v66 = v102;
  v67 = [v102 walls];
  sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
  v68 = sub_23AA0D2F4();

  v69 = [v66 curvedWalls];
  sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
  v70 = sub_23AA0D2F4();

  v71 = sub_23A9A46EC(v68, v70);

  v72 = [v66 doors];
  v73 = sub_23AA0D2F4();

  v74 = [v66 opendoors];
  v75 = sub_23AA0D2F4();

  v121[0] = v73;
  sub_23A912898(v75);
  v76 = v121[0];
  v77 = [v66 curvedDoors];
  v78 = sub_23AA0D2F4();

  v79 = sub_23A9A46EC(v76, v78);

  v80 = [v66 windows];
  v81 = sub_23AA0D2F4();

  v82 = [v66 curvedWindows];
  v83 = sub_23AA0D2F4();

  v84 = sub_23A9A46EC(v81, v83);

  v85 = [v66 openings];
  v86 = sub_23AA0D2F4();

  v87 = MEMORY[0x277D84F90];
  v88 = sub_23A9A46EC(v86, MEMORY[0x277D84F90]);

  v89 = [v66 objects];
  sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
  v90 = sub_23AA0D2F4();

  sub_23A9A4A38(v90);
  v92 = v91;

  v93 = [v66 floors];
  v94 = sub_23AA0D2F4();

  v95 = sub_23A9A46EC(v94, v87);

  v96 = [v66 roomTypes];
  sub_23A8D6C58(0, &qword_27DFB0A78, 0x277D46CA0);
  v97 = sub_23AA0D2F4();

  v98 = sub_23A9A4D4C(v97);

  v99 = type metadata accessor for CapturedStructure(0);
  v100 = v103;
  *(v103 + *(v99 + 52)) = 2;
  *v100 = v116;
  v100[1] = v71;
  v100[2] = v79;
  v100[3] = v84;
  v100[4] = v88;
  v100[5] = v92;
  result = sub_23AA0C0D4();
  v100[6] = v95;
  v100[7] = v98;
  return result;
}

void sub_23A9A5A40()
{
  ARVisionToRenderingCoordinateTransform();
  xmmword_27DFC07F0 = v0;
  qword_27DFC0800 = v1;
  xmmword_27DFC0810 = v2;
  qword_27DFC0820 = v3;
}

__n128 sub_23A9A5A68()
{
  result = *MEMORY[0x277D860B8];
  v1 = *(MEMORY[0x277D860B8] + 16);
  v2 = *(MEMORY[0x277D860B8] + 32);
  v3 = *(MEMORY[0x277D860B8] + 48);
  xmmword_27DFC0830 = *MEMORY[0x277D860B8];
  unk_27DFC0840 = v1;
  xmmword_27DFC0850 = v2;
  unk_27DFC0860 = v3;
  return result;
}

id sub_23A9A5AD4()
{
  if (qword_27DFAE4C8 != -1)
  {
    swift_once();
  }

  v1 = qword_27DFC0870;
  qword_27DFC0890 = qword_27DFC0870;

  return v1;
}

void sub_23A9A5B38(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (a1 <= -1003)
  {
    if (a1 > -2004)
    {
      switch(a1)
      {
        case -2003:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v13 = sub_23AA0CE84();
          __swift_project_value_buffer(v13, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal command buffer";
          break;
        case -2002:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v16 = sub_23AA0CE84();
          __swift_project_value_buffer(v16, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal command queue";
          break;
        case -2001:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v9 = sub_23AA0CE84();
          __swift_project_value_buffer(v9, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal device";
          break;
        default:
          goto LABEL_59;
      }
    }

    else
    {
      switch(a1)
      {
        case -2006:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v11 = sub_23AA0CE84();
          __swift_project_value_buffer(v11, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal texture";
          break;
        case -2005:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v14 = sub_23AA0CE84();
          __swift_project_value_buffer(v14, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal texture descriptor";
          break;
        case -2004:
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v3 = sub_23AA0CE84();
          __swift_project_value_buffer(v3, qword_27DFB06F8);
          v4 = sub_23AA0CE54();
          v5 = sub_23AA0D494();
          if (!os_log_type_enabled(v4, v5))
          {
            goto LABEL_56;
          }

          v6 = swift_slowAlloc();
          *v6 = 0;
          v7 = "Unable to create a Metal function";
          break;
        default:
LABEL_59:
          v23[0] = 0;
          v23[1] = 0xE000000000000000;
          type metadata accessor for RSError(0);
          sub_23AA0D994();
          if (qword_27DFAE4B0 != -1)
          {
            swift_once();
          }

          v18 = sub_23AA0CE84();
          __swift_project_value_buffer(v18, qword_27DFB06F8);

          v4 = sub_23AA0CE54();
          v19 = sub_23AA0D494();

          if (!os_log_type_enabled(v4, v19))
          {

            goto LABEL_56;
          }

          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v23[0] = v21;
          *v20 = 136315138;
          v22 = sub_23A9A65A4(0, 0xE000000000000000, v23);

          *(v20 + 4) = v22;
          _os_log_impl(&dword_23A8B4000, v4, v19, "Unknown error %s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x23EE91710](v21, -1, -1);
          v17 = v20;
LABEL_55:
          MEMORY[0x23EE91710](v17, -1, -1);
LABEL_56:

          v10 = 5;
          goto LABEL_57;
      }
    }

LABEL_54:
    _os_log_impl(&dword_23A8B4000, v4, v5, v7, v6, 2u);
    v17 = v6;
    goto LABEL_55;
  }

  if (a1 <= -4)
  {
    switch(a1)
    {
      case -1002:
        if (qword_27DFAE4B0 != -1)
        {
          swift_once();
        }

        v12 = sub_23AA0CE84();
        __swift_project_value_buffer(v12, qword_27DFB06F8);
        v4 = sub_23AA0CE54();
        v5 = sub_23AA0D494();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_56;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "Insufficient input for multi room";
        break;
      case -1001:
        if (qword_27DFAE4B0 != -1)
        {
          swift_once();
        }

        v15 = sub_23AA0CE84();
        __swift_project_value_buffer(v15, qword_27DFB06F8);
        v4 = sub_23AA0CE54();
        v5 = sub_23AA0D494();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_56;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "Invalid room location for multiroom relocalization";
        break;
      case -4:
        if (qword_27DFAE4B0 != -1)
        {
          swift_once();
        }

        v8 = sub_23AA0CE84();
        __swift_project_value_buffer(v8, qword_27DFB06F8);
        v4 = sub_23AA0CE54();
        v5 = sub_23AA0D494();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_56;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "Invalid argument";
        break;
      default:
        goto LABEL_59;
    }

    goto LABEL_54;
  }

  switch(a1)
  {
    case -3:
      v10 = 3;
      break;
    case -1:
      v10 = 0;
      break;
    case -2:
      v10 = 1;
      break;
    default:
      goto LABEL_59;
  }

LABEL_57:
  *a2 = v10;
}

unint64_t sub_23A9A62B8()
{
  result = qword_27DFB08D8;
  if (!qword_27DFB08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB08D8);
  }

  return result;
}

unint64_t sub_23A9A630C()
{
  result = qword_27DFB08F8;
  if (!qword_27DFB08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB08F8);
  }

  return result;
}

unint64_t sub_23A9A6360()
{
  result = qword_27DFAFCA0;
  if (!qword_27DFAFCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DFB0900, &qword_23AA15C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAFCA0);
  }

  return result;
}

unint64_t sub_23A9A63DC()
{
  result = qword_27DFB0920;
  if (!qword_27DFB0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0920);
  }

  return result;
}

unint64_t sub_23A9A6430()
{
  result = qword_27DFB0950;
  if (!qword_27DFB0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0950);
  }

  return result;
}

unint64_t sub_23A9A6484()
{
  result = qword_27DFB0960;
  if (!qword_27DFB0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0960);
  }

  return result;
}

uint64_t sub_23A9A64D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_23A9A6548(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_23A9A65A4(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t sub_23A9A65A4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_23A9A6670(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23A9100C4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void sub_23A9A6670(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_23A9A677C(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = sub_23AA0D934();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

void *sub_23A9A677C(uint64_t a1, unint64_t a2)
{
  v3 = sub_23A9A67C8(a1, a2);
  sub_23A9A68F8(&unk_284D7F9A0);
  return v3;
}

void *sub_23A9A67C8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23A9A69E4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23AA0D934();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23AA0D224();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23A9A69E4(v10, 0);
        result = sub_23AA0D894();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void sub_23A9A68F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23A9A6A58(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_23A9A69E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF340, &unk_23AA19BA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23A9A6A58(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF340, &unk_23AA19BA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_23A9A6B4C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_23AA0D7F4())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A30, &qword_23AA19BF0);
      v3 = sub_23AA0D884();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return;
    }

    goto LABEL_9;
  }

LABEL_8:
  v5 = sub_23AA0D7F4();
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  v7 = 0;
  if ((v1 & 0xC000000000000001) == 0)
  {
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      if (v7 == v37)
      {
        goto LABEL_39;
      }

      v25 = *(v1 + 32 + 8 * v7);
      sub_23AA0DD14();

      sub_23AA0C0B4();
      v26 = sub_23AA0DD54();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) == 0)
      {
LABEL_25:
        *(v6 + 8 * v29) = v30 | v31;
        *(*(v3 + 48) + 8 * v28) = v25;
        v23 = *(v3 + 16);
        v9 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (!v9)
        {
          *(v3 + 16) = v24;
          goto LABEL_27;
        }

        goto LABEL_40;
      }

      v32 = ~v27;
      v33 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      while (1)
      {
        v34 = *(*(v3 + 48) + 8 * v28);

        if (sub_23AA0C094())
        {
          break;
        }

LABEL_32:
        v28 = (v28 + 1) & v32;
        v29 = v28 >> 6;
        v30 = *(v6 + 8 * (v28 >> 6));
        v31 = 1 << v28;
        if ((v30 & (1 << v28)) == 0)
        {
          v5 = v38;
          goto LABEL_25;
        }
      }

      v35 = *(v34 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

      if (v35 != *(v25 + v33))
      {
        goto LABEL_32;
      }

      v5 = v38;
LABEL_27:
      if (++v7 == v5)
      {
        return;
      }
    }
  }

  v36 = v1;
  while (1)
  {
    v8 = MEMORY[0x23EE90360](v7, v1);
    v9 = __OFADD__(v7++, 1);
    if (v9)
    {
      break;
    }

    v10 = v8;
    sub_23AA0DD14();
    sub_23AA0C0B4();
    v11 = sub_23AA0DD54();
    v12 = -1 << *(v3 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = *(v6 + 8 * (v13 >> 6));
    v16 = 1 << v13;
    if (((1 << v13) & v15) != 0)
    {
      v17 = ~v12;
      v18 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      do
      {
        v19 = *(*(v3 + 48) + 8 * v13);

        if (sub_23AA0C094())
        {
          v20 = *(v19 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

          if (v20 == *(v10 + v18))
          {
            swift_unknownObjectRelease();
            v1 = v36;
            v5 = v38;
            goto LABEL_11;
          }
        }

        else
        {
        }

        v13 = (v13 + 1) & v17;
        v14 = v13 >> 6;
        v15 = *(v6 + 8 * (v13 >> 6));
        v16 = 1 << v13;
      }

      while ((v15 & (1 << v13)) != 0);
      v1 = v36;
      v5 = v38;
    }

    *(v6 + 8 * v14) = v15 | v16;
    *(*(v3 + 48) + 8 * v13) = v10;
    v21 = *(v3 + 16);
    v9 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v9)
    {
      goto LABEL_38;
    }

    *(v3 + 16) = v22;
LABEL_11:
    if (v7 == v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

unint64_t sub_23A9A6ED0(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A9A6F1C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

id sub_23A9A6F68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_identifier;
  v7 = sub_23AA0C0E4();
  v8 = *(*(v7 - 8) + 56);
  v8(&v1[v6], 1, 1, v7);
  v9 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_points;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_points] = 0;
  v10 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_pointsToWorld;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_pointsToWorld] = 0;
  v25 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_semanticLabels;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_semanticLabels] = 0;
  v26 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_semanticVotes;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_semanticVotes] = 0;
  v27 = OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_colors;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_colors] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_coreKeyframe] = a1;
  v11 = a1;
  v12 = [v11 identifier];
  sub_23AA0C0A4();

  v8(v5, 0, 1, v7);
  swift_beginAccess();
  sub_23A8D5068(v5, &v1[v6], &unk_27DFB0970, &qword_23AA14E00);
  swift_endAccess();
  [v11 cameraPose];
  v13 = &v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_cameraPose];
  *v13 = v14;
  *(v13 + 1) = v15;
  *(v13 + 2) = v16;
  *(v13 + 3) = v17;
  v18 = [v11 count];
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_count] = v18;
  *&v1[v9] = [v11 points];
  *&v1[v10] = [v11 pointsToWorld];
  v19 = [v11 semanticLabels];
  *&v1[v25] = v19;
  v20 = [v11 semanticVotes];
  *&v1[v26] = v20;
  v21 = [v11 colors];
  *&v1[v27] = v21;
  [v11 timestamp];
  *&v1[OBJC_IVAR____TtC8RoomPlan16RoomScanKeyframe_timestamp] = v22;
  v23 = type metadata accessor for RoomScanKeyframe(0);
  v28.receiver = v1;
  v28.super_class = v23;
  return objc_msgSendSuper2(&v28, sel_init);
}

id sub_23A9A7204(void *a1, void *a2)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_identifier;
  v8 = sub_23AA0C0E4();
  v9 = *(*(v8 - 8) + 56);
  v10 = 1;
  v9(&v2[v7], 1, 1, v8);
  v11 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_points;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_points] = 0;
  v31 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_pointsToWorld;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_pointsToWorld] = 0;
  v32 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_semanticLabels;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_semanticLabels] = 0;
  v33 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_semanticVotes;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_semanticVotes] = 0;
  v34 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_colors;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_colors] = 0;
  v12 = OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_coreKeyframe;
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_coreKeyframe] = 0;
  v13 = [a1 identifier];
  if (v13)
  {
    v14 = v13;
    sub_23AA0C0A4();

    v10 = 0;
  }

  v9(v6, v10, 1, v8);
  swift_beginAccess();
  sub_23A8D5068(v6, &v2[v7], &unk_27DFB0970, &qword_23AA14E00);
  swift_endAccess();
  [a1 cameraPose];
  v15 = &v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_cameraPose];
  *v15 = v16;
  *(v15 + 1) = v17;
  *(v15 + 2) = v18;
  *(v15 + 3) = v19;
  v20 = [a1 count];
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_count] = v20;
  *&v2[v11] = [a1 points];
  v21 = [a1 pointsToWorld];
  *&v2[v31] = v21;
  v22 = [a1 semanticLabels];
  *&v2[v32] = v22;
  v23 = [a1 semanticVotes];
  *&v2[v33] = v23;
  v24 = [a1 colors];
  *&v2[v34] = v24;
  [a1 timestamp];
  *&v2[OBJC_IVAR____TtC8RoomPlan17ObjectKitKeyframe_timestamp] = v25;
  v26 = *&v2[v12];
  v27 = v35;
  *&v2[v12] = v35;
  v28 = v27;

  v29 = type metadata accessor for ObjectKitKeyframe(0);
  v36.receiver = v2;
  v36.super_class = v29;
  return objc_msgSendSuper2(&v36, sel_init);
}

uint64_t sub_23A9A74C8(void *a1)
{
  [a1 transform];
  v4 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v3.f32[0]), xmmword_23AA12250, *v3.f32, 1), xmmword_23AA12210, v3, 2), xmmword_23AA11AE0, v3, 3);
  v6 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v5.f32[0]), xmmword_23AA12250, *v5.f32, 1), xmmword_23AA12210, v5, 2), xmmword_23AA11AE0, v5, 3);
  v8 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v7.f32[0]), xmmword_23AA12250, *v7.f32, 1), xmmword_23AA12210, v7, 2), xmmword_23AA11AE0, v7, 3);
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_23AA12200, v9.f32[0]), xmmword_23AA12250, *v9.f32, 1), xmmword_23AA12210, v9, 2), xmmword_23AA11AE0, v9, 3);
  v11 = vmulq_f32(v4, 0);
  __asm { FMOV            V6.4S, #-1.0 }

  v17 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v11, _Q6, v6), 0, v8), 0, v10);
  v18 = vmlaq_f32(v11, 0, v6);
  *(v1 + 80) = vmlaq_f32(vmlaq_f32(vmlaq_f32(v4, 0, v6), 0, v8), 0, v10);
  *(v1 + 96) = v17;
  *(v1 + 112) = vmlaq_f32(vmlaq_f32(v18, _Q6, v8), 0, v10);
  *(v1 + 128) = vaddq_f32(v10, vmlaq_f32(v18, 0, v8));
  [a1 intrinsics];
  *(v1 + 144) = v19;
  *(v1 + 160) = v20;
  *(v1 + 176) = v21;
  [a1 imageResolution];
  *(v1 + 192) = v22;
  *(v1 + 200) = v23;
  [a1 transform];
  *(v1 + 16) = v24;
  *(v1 + 32) = v25;
  *(v1 + 48) = v26;
  *(v1 + 64) = v27;
  return v1;
}

void sub_23A9A75E8(void *a1)
{
  v2 = v1;
  *(v1 + 160) = 0;
  v4 = (v1 + 160);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 168) = 0;
  v5 = [a1 rawFeaturePoints];
  type metadata accessor for RSRawPointCloud();
  v6 = swift_allocObject();
  v6[3] = 0;
  if (v5)
  {
    v7 = sub_23AA0D454();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v6[4] = v7;
  v6[2] = *(v7 + 16);
  v6[3] = v7 + 32;
  *(v2 + 16) = v6;
  swift_unknownObjectRelease();
  [a1 timestamp];
  *(v2 + 32) = v8;
  v9 = [a1 camera];
  type metadata accessor for RSCamera();
  v10 = swift_allocObject();
  sub_23A99D3D8(v9);
  *(v2 + 24) = v10;
  swift_unknownObjectRelease();
  v11 = [a1 capturedImage];
  v12 = *(v2 + 40);
  *(v2 + 40) = v11;

  v13 = [a1 rawSceneUnderstandingData];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 depthBuffer];
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v2 + 48);
  *(v2 + 48) = v15;

  v17 = [a1 rawSceneUnderstandingData];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 depthConfidenceBuffer];
  }

  else
  {
    v19 = 0;
  }

  v20 = *(v2 + 56);
  *(v2 + 56) = v19;

  v21 = [a1 rawSceneUnderstandingData];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 semanticSegmentationBufferSampledForDepth];
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v2 + 64);
  *(v2 + 64) = v23;

  v25 = [a1 rawSceneUnderstandingData];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 semanticSegmentationConfidenceBufferSampledForDepth];
  }

  else
  {
    v27 = 0;
  }

  v28 = *(v2 + 72);
  *(v2 + 72) = v27;

  v29 = [a1 worldTrackingState];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 vioTrackingState];
  }

  else
  {
    v31 = 0;
  }

  *(v2 + 80) = v31;
  [a1 referenceOriginTransform];
  *(v2 + 96) = v32;
  *(v2 + 112) = v33;
  *(v2 + 128) = v34;
  *(v2 + 144) = v35;
  v36 = [a1 rawSceneUnderstandingData];
  if (!v36)
  {
    goto LABEL_25;
  }

  v37 = [a1 rawSceneUnderstandingData];
  if (!v37)
  {
    __break(1u);
    goto LABEL_31;
  }

  v38 = v37;
  v39 = [v37 wideCamera];

  if (!v39)
  {
LABEL_25:
    v43 = 0;
    goto LABEL_26;
  }

  v40 = [a1 rawSceneUnderstandingData];
  if (!v40)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v41 = v40;
  v42 = [v40 wideCamera];

  if (!v42)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v43 = swift_allocObject();
  sub_23A99D3D8(v42);
LABEL_26:
  *v4 = v43;
  swift_unknownObjectRelease();
  v44 = [a1 rawSceneUnderstandingData];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 capturedImage];
  }

  else
  {
    v46 = 0;
  }

  v47 = *(v2 + 168);
  *(v2 + 168) = v46;

  *(v2 + 176) = [a1 deviceOrientation];
}

uint64_t sub_23A9A79F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0980, &qword_23AA19B98);
    v3 = sub_23AA0D884();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_23AA0DD14();
      MEMORY[0x23EE907C0](v10);
      result = sub_23AA0DD54();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_23A9A7B34(uint64_t a1)
{
  v1 = *(a1 + 120);
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

uint64_t sub_23A9A7B58(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFAFDE0, &qword_23AA15D10);
    sub_23A9A7BE0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A9A7BE0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFB0940, &qword_23AA15CF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A9A7C30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9A7C98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9A7D00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for RSFrame.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RSFrame.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23A9A7EE4()
{
  result = qword_27DFB0A90;
  if (!qword_27DFB0A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0A90);
  }

  return result;
}

unint64_t sub_23A9A7F3C()
{
  result = qword_27DFB0A98;
  if (!qword_27DFB0A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0A98);
  }

  return result;
}

unint64_t sub_23A9A7F94()
{
  result = qword_27DFB0AA0;
  if (!qword_27DFB0AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AA0);
  }

  return result;
}

unint64_t sub_23A9A7FEC()
{
  result = qword_27DFB0AA8;
  if (!qword_27DFB0AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AA8);
  }

  return result;
}

unint64_t sub_23A9A8044()
{
  result = qword_27DFB0AB0;
  if (!qword_27DFB0AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AB0);
  }

  return result;
}

unint64_t sub_23A9A809C()
{
  result = qword_27DFB0AB8;
  if (!qword_27DFB0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AB8);
  }

  return result;
}

unint64_t sub_23A9A80F4()
{
  result = qword_27DFB0AC0;
  if (!qword_27DFB0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AC0);
  }

  return result;
}

unint64_t sub_23A9A814C()
{
  result = qword_27DFB0AC8;
  if (!qword_27DFB0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AC8);
  }

  return result;
}

unint64_t sub_23A9A81A4()
{
  result = qword_27DFB0AD0;
  if (!qword_27DFB0AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AD0);
  }

  return result;
}

unint64_t sub_23A9A81FC()
{
  result = qword_27DFB0AD8;
  if (!qword_27DFB0AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AD8);
  }

  return result;
}

unint64_t sub_23A9A8254()
{
  result = qword_27DFB0AE0;
  if (!qword_27DFB0AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AE0);
  }

  return result;
}

unint64_t sub_23A9A82AC()
{
  result = qword_27DFB0AE8;
  if (!qword_27DFB0AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AE8);
  }

  return result;
}

uint64_t StructureBuilder.__allocating_init(options:)(void *a1)
{
  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = 1;
  return result;
}

uint64_t StructureBuilder.init(options:)(void *a1)
{
  *(v1 + 16) = *a1;
  *(v1 + 24) = 1;
  return v1;
}

uint64_t sub_23A9A83C4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = type metadata accessor for CapturedRoom(0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A9A8488, 0, 0);
}

uint64_t sub_23A9A8488()
{
  v1 = sub_23A9A950C();
  if (v1)
  {

    if (qword_27DFAE470 != -1)
    {
      swift_once();
    }

    v2 = v0[8];
    sub_23A95ACDC();
    v3 = swift_allocObject();
    v0[13] = v3;
    v34 = v3;
    *(v3 + 16) = MEMORY[0x277D84F90];
    v4 = (v3 + 16);
    v5 = swift_allocObject();
    v0[14] = v5;
    v6 = *(MEMORY[0x277D860B8] + 16);
    v7 = *(MEMORY[0x277D860B8] + 32);
    v8 = *(MEMORY[0x277D860B8] + 48);
    v5[1] = *MEMORY[0x277D860B8];
    v5[2] = v6;
    v5[3] = v7;
    v5[4] = v8;
    v9 = *(v2 + 16);
    if (v9)
    {
      v11 = v0[10];
      v10 = v0[11];
      v12 = v0[8] + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v13 = *(v10 + 72);
      while (1)
      {
        v14 = v0[12];
        sub_23A9ACF14(v12, v14, type metadata accessor for CapturedRoom);
        v15 = (v14 + *(v11 + 64));
        v16 = v15[1];
        v17 = v15[2];
        v18 = v15[3];
        v5[1] = *v15;
        v5[2] = v16;
        v5[3] = v17;
        v5[4] = v18;
        sub_23A9A96B8(v14 + *(v11 + 60), (v0 + 2));
        if (!v0[5])
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0B00, &unk_23AA15C90);
        sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
        v19 = swift_dynamicCast();
        if ((v19 & 1) == 0)
        {
          goto LABEL_18;
        }

        MEMORY[0x23EE8FD70]();
        if (*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23AA0D314();
        }

        v27 = v0[12];
        sub_23AA0D334();
        sub_23A9ACF7C(v27, type metadata accessor for CapturedRoom);
        v12 += v13;
        if (!--v9)
        {
          goto LABEL_11;
        }
      }

      v19 = sub_23A8D50D0((v0 + 2), &unk_27DFB1140, &qword_23AA19C10);
      __break(1u);
LABEL_18:
      __break(1u);
    }

    else
    {
LABEL_11:
      v28 = v0[9];
      v29 = swift_task_alloc();
      v0[15] = v29;
      v29[2] = v28;
      v29[3] = v34;
      v29[4] = v5;
      v30 = swift_task_alloc();
      v0[16] = v30;
      v26 = type metadata accessor for CapturedStructure(0);
      *v30 = v0;
      v30[1] = sub_23A9A8820;
      v19 = v0[7];
      v24 = sub_23A9A9728;
      v23 = 0x800000023AA21BB0;
      v20 = 0;
      v21 = 0;
      v22 = 0xD000000000000018;
      v25 = v29;
    }

    return MEMORY[0x2822008A0](v19, v20, v21, v22, v23, v24, v25, v26);
  }

  else
  {
    sub_23A9A961C();
    swift_allocError();
    *v31 = 5;
    swift_willThrow();

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_23A9A8820()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_23A9A89B4;
  }

  else
  {

    v2 = sub_23A9A893C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23A9A893C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A9A89B4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A9A8A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v19 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C48, &unk_23AA1A650);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v21 = a2;
  v20 = sub_23A9A950C();
  if (v20)
  {
    swift_beginAccess();
    sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);

    v18 = sub_23AA0D2E4();

    sub_23A9DD100(MEMORY[0x277D84F90]);
    sub_23AA0C0E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
    sub_23A9AC9B4(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v11 = sub_23AA0D024();

    (*(v7 + 16))(v10, v19, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = v21;
    (*(v7 + 32))(v14 + v12, v10, v6);
    *(v14 + v13) = a3;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
    aBlock[4] = sub_23A9ACE4C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9A93A8;
    aBlock[3] = &block_descriptor_65;
    v15 = _Block_copy(aBlock);

    v16 = v20;
    v17 = v18;
    [v20 processMultiLevelWithMultiFloorPlan:v18 withKeyframes:v11 completionHandlerWithError:v15];
    _Block_release(v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_23A9A8D40(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a3;
  v10 = sub_23AA0CE84();
  *&v48 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CapturedStructure(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v45.n128_u64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = (&v45 - v17);
  if (a2 && (v52 = a2, v19 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C50, &unk_23AA1C9F0), sub_23A8D6C58(0, &qword_27DFB0C58, 0x277CCA9B8), (swift_dynamicCast() & 1) != 0))
  {
    v20 = v51;
    v50 = 5;
    if ([v51 code] == -1001)
    {
      v50 = 2;
    }

    else if ([v20 code] == -1002)
    {
      v50 = 0;
    }

    v47.n128_u64[0] = a4;
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v28 = v50;
    v29 = sub_23AA0CE54();
    v30 = sub_23AA0D494();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *&v46 = v20;
      v32 = v31;
      v33 = swift_slowAlloc();
      v52 = v33;
      *v32 = 136315138;
      LOBYTE(v51) = v28;
      sub_23A9A961C();
      v34 = sub_23AA0DC34();
      v36 = sub_23A9A65A4(v34, v35, &v52);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_23A8B4000, v29, v30, "Cannot process multiFloorPlan: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x23EE91710](v33, -1, -1);
      v37 = v32;
      v20 = v46;
      MEMORY[0x23EE91710](v37, -1, -1);
    }

    (*(v48 + 8))(v12, v10);
    v38 = v49;
    if (qword_27DFAE470 != -1)
    {
      swift_once();
    }

    *(v15 + *(v13 + 52)) = 2;
    v39 = MEMORY[0x277D84F90];
    *v15 = MEMORY[0x277D84F90];
    v15[1] = v39;
    v15[2] = v39;
    v15[3] = v39;
    v15[4] = v39;
    v15[5] = v39;
    sub_23AA0C0D4();
    v15[6] = v39;
    v15[7] = v39;
    swift_beginAccess();
    LOBYTE(v51) = v50;
    v40 = sub_23AA0D1A4();
    sub_23A95AE00(v15, v40, v41, *(v38 + 16) & 1);

    sub_23A9ACF7C(v15, type metadata accessor for CapturedStructure);
    sub_23A95D31C();
    v42 = v50;
    sub_23A9A961C();
    v43 = swift_allocError();
    *v44 = v42;
    v51 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C48, &unk_23AA1A650);
    sub_23AA0D364();
  }

  else
  {
    swift_beginAccess();
    swift_beginAccess();
    v21 = *(a6 + 16);
    v47 = *(a6 + 32);
    v48 = v21;
    v22 = *(a6 + 48);
    v45 = *(a6 + 64);
    v46 = v22;
    v23 = v49;
    if (*(v49 + 16))
    {
      v26 = qword_27DFAE4D0;

      if (v26 != -1)
      {
        swift_once();
      }

      v25 = &qword_27DFC0878;
    }

    else
    {
      v24 = qword_27DFAE4D8;

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = &qword_27DFC0880;
    }

    v27 = *v25;
    type metadata accessor for RSCoreAdaptor();
    sub_23A9A4F08(a1, v27, v18, v48, v47, v46, v45);

    if (qword_27DFAE470 != -1)
    {
      swift_once();
    }

    sub_23A95AE00(v18, 0x73736563637573, 0xE700000000000000, *(v23 + 16) & 1);
    sub_23A95D31C();
    sub_23A9ACF14(v18, v15, type metadata accessor for CapturedStructure);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C48, &unk_23AA1A650);
    sub_23AA0D374();
    sub_23A9ACF7C(v18, type metadata accessor for CapturedStructure);
  }
}

void sub_23A9A93A8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

unint64_t StructureBuilder.BuildError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0x6C616E7265746E49;
  if (v1 == 4)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 3)
  {
    v2 = 0xD00000000000001ELL;
  }

  v3 = 0xD000000000000025;
  v4 = 0xD000000000000012;
  if (v1 != 1)
  {
    v4 = 0xD000000000000022;
  }

  if (*v0)
  {
    v3 = v4;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

id sub_23A9A950C()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D46C90]) init];
    [v3 setObjectBeautificationEnabled_];
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v4 = off_27DFB17B0;
    swift_beginAccess();
    [v3 setCurveEnabled_];
    v2 = [objc_allocWithZone(MEMORY[0x277D46C98]) initWithConfiguration_];

    v5 = *(v0 + 24);
    *(v0 + 24) = v2;
    v6 = v2;
    sub_23A9A9754(v5);
  }

  sub_23A9ACD40(v1);
  return v2;
}

unint64_t sub_23A9A961C()
{
  result = qword_27DFB0AF0;
  if (!qword_27DFB0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0AF0);
  }

  return result;
}

uint64_t sub_23A9A9670()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23A9A96B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1140, &qword_23AA19C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23A9A9754(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t StructureBuilder.__deallocating_deinit()
{
  sub_23A9A9754(*(v0 + 24));

  return swift_deallocClassInstance();
}

int64x2_t *RoomBuilder.__allocating_init(options:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = *a1;
  v2[1].i8[8] = 0;
  v2[2] = vdupq_n_s64(1uLL);
  v4 = OBJC_IVAR____TtC8RoomPlan11RoomBuilder_floorPlanModelContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0B10, &qword_23AA1A760);
  (*(*(v5 - 8) + 56))(&v2->i8[v4], 1, 1, v5);
  v2[1].i64[0] = v3;
  return v2;
}

int64x2_t *RoomBuilder.init(options:)(uint64_t *a1)
{
  v2 = *a1;
  v1[1].i8[8] = 0;
  v1[2] = vdupq_n_s64(1uLL);
  v3 = OBJC_IVAR____TtC8RoomPlan11RoomBuilder_floorPlanModelContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0B10, &qword_23AA1A760);
  (*(*(v4 - 8) + 56))(&v1->i8[v3], 1, 1, v4);
  v1[1].i64[0] = v2;
  return v1;
}

uint64_t sub_23A9A98DC(uint64_t a1, _OWORD *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v4;
  *(v3 + 80) = a2[4];
  v5 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x2822009F8](sub_23A9A9914, 0, 0);
}

uint64_t sub_23A9A9914()
{
  v1 = sub_23A9AB9BC();
  if (v1 && (v1, (v2 = sub_23A9ABB20()) != 0))
  {

    if (qword_27DFAE468 != -1)
    {
      swift_once();
    }

    v3 = v0[13];
    sub_23A957E58();
    v4 = swift_task_alloc();
    v0[14] = v4;
    *(v4 + 16) = v0 + 2;
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    v0[15] = v5;
    v6 = type metadata accessor for CapturedRoom(0);
    *v5 = v0;
    v5[1] = sub_23A9A9AE0;
    v7 = v0[12];

    return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000013, 0x800000023AA21C70, sub_23A9ABB94, v4, v6);
  }

  else
  {
    sub_23A9ABACC();
    swift_allocError();
    *v8 = 4;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23A9A9AE0()
{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A9A9C1C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23A9A9C1C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23A9A9C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620);
  v6 = *(v5 - 8);
  v64[2] = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v64 - v7;
  v9 = sub_23AA0C0E4();
  v10 = *(v9 - 8);
  v77 = v9;
  v78 = v10;
  MEMORY[0x28223BE20](v9);
  v75 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE4E8 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v12 = *(a2 + 32);
    xmmword_27DFC0940 = *(a2 + 16);
    *algn_27DFC0950 = v12;
    v13 = *(a2 + 64);
    xmmword_27DFC0960 = *(a2 + 48);
    unk_27DFC0970 = v13;
    v14 = [*(a2 + 8) floorPlan];
    v15 = [v14 objects];

    sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
    v16 = sub_23AA0D2F4();

    if (v16 >> 62)
    {
      v17 = sub_23AA0D7F4();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v69 = a3;
    v70 = a2;
    v68 = v5;
    v67 = v6;
    v66 = v8;
    if (!v17)
    {

      a2 = MEMORY[0x277D84F90];
      v24 = *(MEMORY[0x277D84F90] + 16);
      if (v24)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }

    v80[0] = MEMORY[0x277D84F90];
    sub_23A976130(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      break;
    }

    v5 = 0;
    a2 = v80[0];
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x23EE90360](v5, v16);
      }

      else
      {
        v18 = *(v16 + 8 * v5 + 32);
      }

      v19 = v18;
      v20 = [v18 dictionaryRepresentation];
      if (v20)
      {
        v21 = v20;
        v6 = sub_23AA0D034();
      }

      else
      {

        v6 = 0;
      }

      v80[0] = a2;
      v23 = *(a2 + 16);
      v22 = *(a2 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_23A976130((v22 > 1), v23 + 1, 1);
        a2 = v80[0];
      }

      ++v5;
      *(a2 + 16) = v23 + 1;
      *(a2 + 8 * v23 + 32) = v6;
    }

    while (v17 != v5);

    v24 = *(a2 + 16);
    if (v24)
    {
LABEL_17:
      v80[0] = MEMORY[0x277D84F90];
      sub_23AA0D964();
      v6 = 0;
      v8 = 0x277D36000;
      a3 = MEMORY[0x277D84030];
      while (v6 < *(a2 + 16))
      {
        if (*(a2 + 8 * v6 + 32))
        {

          v25 = sub_23AA0D024();
        }

        else
        {
          v25 = 0;
        }

        v26 = [objc_allocWithZone(MEMORY[0x277D36CE0]) initWithDictionaryRepresentation_];

        if (!v26)
        {
          goto LABEL_51;
        }

        ++v6;
        sub_23AA0D944();
        v5 = *(v80[0] + 16);
        sub_23AA0D974();
        sub_23AA0D984();
        sub_23AA0D954();
        if (v24 == v6)
        {

          v27 = v80[0];
          goto LABEL_27;
        }
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_26:

    v27 = MEMORY[0x277D84F90];
LABEL_27:
    v64[1] = v27;
    v28 = *v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0BB8, &qword_23AA1A630);
    v29 = sub_23AA0DA14();
    v76 = v29;
    v5 = 0;
    a3 = v28 + 64;
    v30 = *(v28 + 64);
    v74 = v28;
    v31 = 1 << *(v28 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v30;
    v8 = ((v31 + 63) >> 6);
    v73 = v78 + 16;
    v72 = v29 + 64;
    v71 = v78 + 32;
    v34 = v75;
    if (!v33)
    {
LABEL_31:
      v36 = v5;
      while (1)
      {
        v5 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
          goto LABEL_46;
        }

        if (v5 >= v8)
        {
          break;
        }

        v37 = *(a3 + 8 * v5);
        ++v36;
        if (v37)
        {
          v35 = __clz(__rbit64(v37));
          v79 = (v37 - 1) & v37;
          goto LABEL_36;
        }
      }

      v47 = v69;
      v48 = sub_23A9AB9BC();
      if (!v48)
      {
        goto LABEL_52;
      }

      v49 = v48;
      v50 = v68;
      v51 = v67;
      if (qword_27DFC0988)
      {

        v52 = sub_23AA0D104();
      }

      else
      {
        v52 = 0;
      }

      [v49 setupOfflineDumpWithLogDir_];

      v53 = sub_23A9ABB20();
      if (v53)
      {
        v54 = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BC0, qword_23AA1A638);
        sub_23A9AC9B4(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v55 = sub_23AA0D024();

        sub_23A8D6C58(0, &unk_27DFB0BD0, 0x277D36CE0);
        v56 = sub_23AA0D2E4();

        v57 = v66;
        (*(v51 + 16))(v66, v65, v50);
        v58 = (*(v51 + 80) + 104) & ~*(v51 + 80);
        v59 = swift_allocObject();
        v60 = v70;
        v61 = *(v70 + 48);
        *(v59 + 48) = *(v70 + 32);
        *(v59 + 64) = v61;
        *(v59 + 80) = v60[4];
        v62 = v60[1];
        *(v59 + 16) = *v60;
        *(v59 + 32) = v62;
        *(v59 + 96) = v47;
        (*(v51 + 32))(v59 + v58, v57, v50);
        aBlock[4] = sub_23A9ACA00;
        aBlock[5] = v59;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23A9AB76C;
        aBlock[3] = &block_descriptor_5;
        v63 = _Block_copy(aBlock);
        sub_23A9ACA9C(v60, v80);

        [v54 generateOfflineObjects:v55 onlineObjects:v56 block:v63];
        _Block_release(v63);

        return;
      }

      goto LABEL_53;
    }

    while (1)
    {
      v35 = __clz(__rbit64(v33));
      v79 = (v33 - 1) & v33;
LABEL_36:
      v6 = v35 | (v5 << 6);
      v38 = v77;
      a2 = v78;
      v39 = *(v78 + 72) * v6;
      (*(v78 + 16))(v34, *(v74 + 48) + v39, v77);
      v40 = objc_allocWithZone(type metadata accessor for ObjectKitKeyframe(0));
      v41 = swift_unknownObjectRetain();
      v42 = sub_23A9A7204(v41, 0);
      swift_unknownObjectRelease();
      *(v72 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v6;
      v43 = v76;
      (*(a2 + 32))(*(v76 + 48) + v39, v34, v38);
      *(*(v43 + 56) + 8 * v6) = v42;
      v44 = *(v43 + 16);
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        break;
      }

      *(v43 + 16) = v46;
      v33 = v79;
      if (!v79)
      {
        goto LABEL_31;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

void sub_23A9AA55C(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v44 = a2;
  v45 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v39 - v9;
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23AA0D7F4())
  {
    v12 = MEMORY[0x277D84F90];
    v42 = v7;
    v43 = v6;
    v41 = v10;
    v40 = a4;
    v39[1] = v8;
    if (!i)
    {
      break;
    }

    v46[0] = MEMORY[0x277D84F90];
    sub_23A976130(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v13 = 0;
    v14 = v46[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x23EE90360](v13, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 dictionaryRepresentation];
      if (v17)
      {
        v18 = v17;
        v19 = sub_23AA0D034();
      }

      else
      {

        v19 = 0;
      }

      v46[0] = v14;
      a4 = *(v14 + 16);
      v20 = *(v14 + 24);
      v8 = (a4 + 1);
      if (a4 >= v20 >> 1)
      {
        sub_23A976130((v20 > 1), a4 + 1, 1);
        v14 = v46[0];
      }

      ++v13;
      *(v14 + 16) = v8;
      *(v14 + 8 * a4 + 32) = v19;
    }

    while (i != v13);
    v12 = MEMORY[0x277D84F90];
LABEL_18:
    v46[0] = v12;
    sub_23AA0D964();
    v7 = 0;
    a1 = 0x277D46000uLL;
    v6 = MEMORY[0x277D84030];
    v10 = MEMORY[0x277D84038];
    while (v7 < *(v14 + 16))
    {
      if (*(v14 + 8 * v7 + 32))
      {

        v21 = sub_23AA0D024();
      }

      else
      {
        v21 = 0;
      }

      a4 = [objc_allocWithZone(MEMORY[0x277D46C60]) initWithDictionaryRepresentation_];

      if (!a4)
      {
        goto LABEL_31;
      }

      ++v7;
      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      if (v8 == v7)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    ;
  }

  v8 = *(MEMORY[0x277D84F90] + 16);
  if (v8)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

LABEL_25:

  v22 = v44;
  [v44[1] copy];
  sub_23AA0D704();
  swift_unknownObjectRelease();
  sub_23A8D6C58(0, &unk_27DFAF2A0, 0x277D46C70);
  swift_dynamicCast();
  v23 = aBlock[0];
  v24 = [aBlock[0] floorPlan];
  sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
  v25 = sub_23AA0D2E4();
  [v24 updateObjects_];

  v26 = v45;
  v27 = sub_23A9AB9BC();
  if (v27)
  {
    v28 = v27;

    sub_23AA0C0E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C40, &unk_23AA13050);
    sub_23A9AC9B4(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v29 = sub_23AA0D024();
    v31 = v42;
    v30 = v43;
    v32 = v41;
    (*(v42 + 16))(v41, v40, v43);
    v33 = (*(v31 + 80) + 104) & ~*(v31 + 80);
    v34 = swift_allocObject();
    v35 = *(v22 + 3);
    *(v34 + 48) = *(v22 + 2);
    *(v34 + 64) = v35;
    *(v34 + 80) = *(v22 + 4);
    v36 = *(v22 + 1);
    *(v34 + 16) = *v22;
    *(v34 + 32) = v36;
    *(v34 + 96) = v26;
    (*(v31 + 32))(v34 + v33, v32, v30);
    aBlock[4] = sub_23A9ACBD8;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23A9A93A8;
    aBlock[3] = &block_descriptor_59;
    v37 = _Block_copy(aBlock);
    v38 = v23;
    sub_23A9ACA9C(v22, v46);

    [v28 processWithKeyframes:v29 initialAsset:v38 completionHandlerWithError:v37];
    _Block_release(v37);

    return;
  }

LABEL_32:
  __break(1u);
}

void sub_23A9AAB28(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v105 = sub_23AA0CE84();
  *&v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v11 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CapturedRoom(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v93 - v16);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v22 = (&v93 - v21);
  if (a2)
  {
    *&v102 = a3;
    v100 = v20;
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    v23 = a2;
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v24 = a2;
    v25 = sub_23AA0CE54();
    v26 = sub_23AA0D494();

    v27 = os_log_type_enabled(v25, v26);
    *&v101 = a2;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v103 = a4;
      v29 = v28;
      v30 = swift_slowAlloc();
      v106[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_23AA0DC34();
      v33 = sub_23A9A65A4(v31, v32, v106);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_23A8B4000, v25, v26, "Cannot generate offline floorplan: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x23EE91710](v30, -1, -1);
      v34 = v29;
      a4 = v103;
      MEMORY[0x23EE91710](v34, -1, -1);
    }

    (*(v104 + 8))(v11, v105);
    if (qword_27DFAE468 != -1)
    {
      swift_once();
    }

    *(v17 + v12[12]) = 0;
    *(v17 + v12[13]) = 2;
    v35 = (v17 + v12[15]);
    *v35 = 0u;
    v35[1] = 0u;
    v36 = MEMORY[0x277D84F90];
    *v17 = MEMORY[0x277D84F90];
    v17[1] = v36;
    v17[2] = v36;
    v17[3] = v36;
    v17[4] = v36;
    v17[5] = v36;
    *(v17 + v12[14]) = v36;
    sub_23AA0C0D4();
    *(v17 + v12[11]) = v36;
    v37 = (v17 + v12[16]);
    v38 = v102;
    v39 = *(v102 + 32);
    *v37 = *(v102 + 16);
    v37[1] = v39;
    v40 = *(v38 + 64);
    v37[2] = *(v38 + 48);
    v37[3] = v40;
    v41 = sub_23AA0D104();
    v42 = MGCopyAnswer();

    if (v42)
    {
      swift_unknownObjectRetain();
      v106[0] = v42;
      v43 = swift_dynamicCast();
      v44 = v101;
      if (v43 && (v108 & 1) != 0)
      {
        v45 = [objc_allocWithZone(MEMORY[0x277D46C88]) init];
        v46 = v45;
        if (v45)
        {
          v45 = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
        }

        else
        {
          v106[1] = 0;
          v106[2] = 0;
        }

        v106[0] = v46;
        v107 = v45;
        sub_23A9ACC6C(v106, v35);
      }

      v90 = v100;
      sub_23A9ACCDC(v17, v100);
      LOBYTE(v106[0]) = 4;
      v91 = sub_23AA0D1A4();
      sub_23A957E88(v90, v91, v92, *(a4 + 16) & 1);

      sub_23A9ACF7C(v90, type metadata accessor for CapturedRoom);
      sub_23A95A284(*(a4 + 24));
      v106[0] = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620);
      sub_23AA0D364();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_27DFAE4E8 != -1)
    {
      swift_once();
    }

    v104 = *algn_27DFC0950;
    v105 = xmmword_27DFC0940;
    v101 = unk_27DFC0970;
    v102 = xmmword_27DFC0960;
    v47 = *(a4 + 16);
    v103 = a4;
    v97 = v12;
    if (v47)
    {
      if (qword_27DFAE4D0 != -1)
      {
        swift_once();
      }

      v48 = &qword_27DFC0878;
    }

    else
    {
      if (qword_27DFAE4D8 != -1)
      {
        swift_once();
      }

      v48 = &qword_27DFC0880;
    }

    v49 = *v48;
    type metadata accessor for RSCoreAdaptor();
    if (qword_27DFAE4C0 != -1)
    {
      swift_once();
    }

    v99 = v14;
    xmmword_27DFC0830 = v105;
    unk_27DFC0840 = v104;
    xmmword_27DFC0850 = v102;
    unk_27DFC0860 = v101;
    byte_27DFC0888 = 0;
    if (qword_27DFAE4E0 != -1)
    {
      swift_once();
    }

    v100 = a5;
    v50 = qword_27DFC0890;
    qword_27DFC0890 = v49;
    v98 = v49;

    if (!(MEMORY[0x277D84F90] >> 62) || (v52 = MEMORY[0x277D84F90], sub_23AA0D7F4() <= 0))
    {
      v51 = [a1 objects];
      sub_23A8D6C58(0, &unk_27DFB0A60, 0x277D46C60);
      v52 = sub_23AA0D2F4();
    }

    v53 = [a1 doors];
    sub_23A8D6C58(0, &qword_27DFB13E0, 0x277D46C68);
    v54 = sub_23AA0D2F4();

    v108 = v54;
    v55 = [a1 opendoors];
    v56 = sub_23AA0D2F4();

    sub_23A912898(v56);
    v57 = [a1 walls];
    v58 = sub_23AA0D2F4();

    v59 = [a1 curvedWalls];
    sub_23A8D6C58(0, &qword_27DFB0A70, 0x277D46C50);
    v60 = sub_23AA0D2F4();

    v96 = sub_23A9A46EC(v58, v60);

    v61 = v108;
    v62 = [a1 curvedDoors];
    v63 = sub_23AA0D2F4();

    v95 = sub_23A9A46EC(v61, v63);

    v64 = [a1 windows];
    v65 = sub_23AA0D2F4();

    v66 = [a1 curvedWindows];
    v67 = sub_23AA0D2F4();

    v94 = sub_23A9A46EC(v65, v67);

    v68 = [a1 openings];
    v69 = sub_23AA0D2F4();

    v70 = MEMORY[0x277D84F90];
    v71 = sub_23A9A46EC(v69, MEMORY[0x277D84F90]);

    v72 = [a1 floors];
    v73 = sub_23AA0D2F4();

    v74 = sub_23A9A46EC(v73, v70);

    sub_23A9A4A38(v52);
    v76 = v75;

    v77 = [a1 roomTypes];
    sub_23A8D6C58(0, &qword_27DFB0A78, 0x277D46CA0);
    v78 = sub_23AA0D2F4();

    v79 = sub_23A9A4D4C(v78);

    v80 = [a1 storyLevel];
    v81 = v97;
    v82 = v97[12];
    *(v22 + v97[13]) = 2;
    v83 = (v22 + v81[15]);
    *v83 = 0u;
    v83[1] = 0u;
    v84 = v95;
    *v22 = v96;
    v22[1] = v84;
    v22[2] = v94;
    v22[3] = v71;
    v22[4] = v74;
    v22[5] = v76;
    *(v22 + v81[14]) = MEMORY[0x277D84F90];
    sub_23AA0C0D4();
    *(v22 + v81[11]) = v79;
    *(v22 + v82) = v80;
    v85 = (v22 + v81[16]);
    v86 = v104;
    *v85 = v105;
    v85[1] = v86;
    v87 = v101;
    v85[2] = v102;
    v85[3] = v87;
    v107 = sub_23A8D6C58(0, &unk_27DFB0A80, 0x277D46C88);
    v88 = a1;

    v106[0] = v88;
    sub_23A9ACC6C(v106, v83);
    if (qword_27DFAE530 != -1)
    {
      swift_once();
    }

    v89 = v103;
    if (*(qword_27DFC0BB0 + 16) == 1)
    {
      sub_23AA0A9C0(v22);
    }

    if (qword_27DFAE468 != -1)
    {
      swift_once();
    }

    sub_23A957E88(v22, 0x73736563637573, 0xE700000000000000, *(v89 + 16) & 1);
    sub_23A95A284(*(v89 + 24));
    sub_23A9ACF14(v22, v99, type metadata accessor for CapturedRoom);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620);
    sub_23AA0D374();
    sub_23A9ACF7C(v22, type metadata accessor for CapturedRoom);
  }
}

double sub_23A9AB76C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_23A8D6C58(0, &unk_27DFB0BD0, 0x277D36CE0);
  v3 = sub_23AA0D2F4();

  v2(v3);

  return result;
}

unint64_t RoomBuilder.BuildError.errorDescription.getter()
{
  v1 = *v0;
  v2 = 0x6C616E7265746E49;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ELL;
  }

  v3 = 0xD000000000000025;
  if (*v0)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23A9AB908()
{
  v1 = *v0;
  v2 = 0x6C616E7265746E49;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ELL;
  }

  v3 = 0xD000000000000025;
  if (*v0)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

id sub_23A9AB9BC()
{
  v1 = *(v0 + 32);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D46C90]) init];
    [v3 setObjectBeautificationEnabled_];
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v4 = off_27DFB17B0;
    swift_beginAccess();
    [v3 setCurveEnabled_];
    v2 = [objc_allocWithZone(MEMORY[0x277D46C98]) initWithConfiguration_];

    v5 = *(v0 + 32);
    *(v0 + 32) = v2;
    v6 = v2;
    sub_23A9A9754(v5);
  }

  sub_23A9ACD40(v1);
  return v2;
}

unint64_t sub_23A9ABACC()
{
  result = qword_27DFB0B18;
  if (!qword_27DFB0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B18);
  }

  return result;
}

id sub_23A9ABB20()
{
  v1 = *(v0 + 40);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D36D00]) init_];
    v3 = *(v0 + 40);
    *(v0 + 40) = v2;
    v4 = v2;
    sub_23A9A9754(v3);
  }

  sub_23A9ACD40(v1);
  return v2;
}

double sub_23A9ABB9C()
{
  xmmword_27DFC0940 = xmmword_23AA12250;
  *algn_27DFC0950 = xmmword_23AA12220;
  *&result = 3212836864;
  xmmword_27DFC0960 = xmmword_23AA12230;
  unk_27DFC0970 = xmmword_23AA11AE0;
  return result;
}

uint64_t RoomBuilder.deinit()
{
  sub_23A9A9754(*(v0 + 32));
  sub_23A9A9754(*(v0 + 40));
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan11RoomBuilder_floorPlanModelContinuation, &qword_27DFB0B20, &qword_23AA1A148);
  return v0;
}

uint64_t RoomBuilder.__deallocating_deinit()
{
  sub_23A9A9754(*(v0 + 32));
  sub_23A9A9754(*(v0 + 40));
  sub_23A8D50D0(v0 + OBJC_IVAR____TtC8RoomPlan11RoomBuilder_floorPlanModelContinuation, &qword_27DFB0B20, &qword_23AA1A148);

  return swift_deallocClassInstance();
}

unint64_t sub_23A9ABCA0()
{
  result = qword_27DFB0B28;
  if (!qword_27DFB0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B28);
  }

  return result;
}

unint64_t sub_23A9ABCFC()
{
  result = qword_27DFB0B30;
  if (!qword_27DFB0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B30);
  }

  return result;
}

unint64_t sub_23A9ABD54()
{
  result = qword_27DFB0B38;
  if (!qword_27DFB0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B38);
  }

  return result;
}

unint64_t sub_23A9ABDAC()
{
  result = qword_27DFB0B40;
  if (!qword_27DFB0B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B40);
  }

  return result;
}

unint64_t sub_23A9ABE04()
{
  result = qword_27DFB0B48;
  if (!qword_27DFB0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B48);
  }

  return result;
}

unint64_t sub_23A9ABE5C()
{
  result = qword_27DFB0B50;
  if (!qword_27DFB0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B50);
  }

  return result;
}

uint64_t dispatch thunk of StructureBuilder.capturedStructure(from:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23A9ACFF4;

  return v8(a1, a2);
}

uint64_t type metadata accessor for RoomBuilder(uint64_t a1)
{
  result = qword_27DFB0B60;
  if (!qword_27DFB0B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A9AC094(uint64_t a1)
{
  sub_23A9AC394(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of RoomBuilder.capturedRoom(from:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23A9AC2A0;

  return v8(a1, a2);
}

uint64_t sub_23A9AC2A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_23A9AC394(uint64_t a1)
{
  if (!qword_27DFB0B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFB0B10, &qword_23AA1A760);
    v1 = sub_23AA0D664();
    if (!v2)
    {
      atomic_store(v1, &qword_27DFB0B70);
    }
  }
}

uint64_t getEnumTagSinglePayload for RoomBuilder.ConfigurationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RoomBuilder.ConfigurationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

double sub_23A9AC460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v28 = a1;
  v3 = sub_23AA0CE84();
  v26 = *(v3 - 8);
  v27 = v3;
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23AA0BFB4();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23AA0BBF4();
  MEMORY[0x28223BE20](v8);
  sub_23AA0BC34();
  swift_allocObject();
  v9 = sub_23AA0BC24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0B80, &qword_23AA1A610);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23AA11C10;
  sub_23AA0BBE4();
  sub_23AA0BBD4();
  v33 = v10;
  sub_23A9AC9B4(&qword_27DFB0B88, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0B90, &qword_23AA1A618);
  sub_23A9AC950();
  sub_23AA0D764();
  sub_23AA0BC04();
  type metadata accessor for CapturedRoom(0);
  sub_23A9AC9B4(&qword_27DFB0BA0, type metadata accessor for CapturedRoom, &protocol conformance descriptor for CapturedRoom);
  v11 = v29;
  v12 = sub_23AA0BC14();
  if (v11)
  {
    v15 = v30;
    v14 = v31;
    v19 = v32;
    sub_23AA0CE74();

    v20 = sub_23AA0CE54();
    v21 = sub_23AA0D494();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_23A9A65A4(v14, v15, &v33);
      _os_log_impl(&dword_23A8B4000, v20, v21, "Unable to dump capturedRoom to %s!", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x23EE91710](v23, -1, -1);
      MEMORY[0x23EE91710](v22, -1, -1);

      (*(v26 + 8))(v32, v27);
    }

    else
    {

      (*(v26 + 8))(v19, v27);
    }
  }

  else
  {
    v16 = v12;
    v17 = v13;
    v28 = v9;
    v29 = v5;
    v18 = v25;
    sub_23AA0BEE4();
    sub_23AA0BFF4();
    (*(v18 + 8))(v7, v29);
    sub_23A8EFA00(v16, v17);
  }

  return result;
}

unint64_t sub_23A9AC950()
{
  result = qword_27DFB0B98;
  if (!qword_27DFB0B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DFB0B90, &qword_23AA1A618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0B98);
  }

  return result;
}

uint64_t sub_23A9AC9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23A9ACA00(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620) - 8);
  v4 = *(v1 + 96);
  v5 = v1 + ((*(v3 + 80) + 104) & ~*(v3 + 80));

  sub_23A9AA55C(a1, (v1 + 16), v4, v5);
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_52Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 0xF);
}

void sub_23A9ACBD8(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0BA8, &unk_23AA1A620) - 8);
  v6 = *(v2 + 96);
  v7 = v2 + ((*(v5 + 80) + 104) & ~*(v5 + 80));

  sub_23A9AAB28(a1, a2, v2 + 16, v6, v7);
}

uint64_t sub_23A9ACC6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1140, &qword_23AA19C10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A9ACCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedRoom(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_23A9ACD40(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23A9ACD50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C48, &unk_23AA1A650);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_23A9ACE4C(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0C48, &unk_23AA1A650) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_23A9A8D40(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_23A9ACF14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A9ACF7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for OpeningEntity(uint64_t a1)
{
  result = qword_27DFB0C60;
  if (!qword_27DFB0C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_23A9AD0B8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t sub_23A9AD0FC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_23AA0D7F4();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x23EE90360](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_23A9AD220@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_23AA0C514();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6, v8);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

BOOL sub_23A9AD3F4(float32x2_t *a1, float32x2_t a2)
{
  v2 = a1[2];
  v3 = a1 + 4;
  do
  {
    v4 = v2;
    if ((*&v2)-- == 0)
    {
      break;
    }

    v6 = *v3++;
    v7 = vceq_f32(v6, a2);
  }

  while ((v7.i32[0] & v7.i32[1] & 1) == 0);
  return *&v4 != 0;
}

BOOL sub_23A9AD42C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_23A9AD45C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_23AA0C0E4();
    ++v2;
    sub_23A9BACF4(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  }

  while ((sub_23AA0D084() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_23A9AD568(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_23AA0C0E4() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

double sub_23A9AD660(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_23A9AD6C8()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_23A9AD760(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_23A9AD7CC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_23A9AD86C;
}

void sub_23A9AD86C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_23A9AD8F4()
{
  v1 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_23A9AD938(char a1)
{
  v3 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (v4)
  {
    *(v4 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = a1 & 1;
    v5 = *(v4 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
    if (v5)
    {
      [v5 setHidden_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t (*sub_23A9AD9D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_23A9ADA60;
}

void sub_23A9ADA60(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = v6;
      v7 = *(v5 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
      if (!v7)
      {
        __break(1u);
        return;
      }

      [v7 setHidden_];
    }
  }

  free(v3);
}

char *sub_23A9ADC0C()
{
  v1 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager;
  if (*(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager);
  }

  else
  {
    if (qword_27DFAE518 != -1)
    {
      swift_once();
    }

    v2 = off_27DFB17B0;
    *(off_27DFB17B0 + 3) = &off_284D87AA0;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    swift_retain_n();
  }

  return v2;
}

uint64_t sub_23A9ADCC0()
{
  v1 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___frameProcessor;
  v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___frameProcessor);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_23A9ADD2C();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_23A9BAD94(v4);
  }

  sub_23A9BADA4(v2);
  return v3;
}

uint64_t sub_23A9ADD2C()
{
  v0 = sub_23AA0CE84();
  MEMORY[0x28223BE20](v0);
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  v1 = sub_23A93BFA4();
  sub_23A93C058();
  type metadata accessor for FrameProcessor();
  swift_allocObject();
  v2 = sub_23A9463FC(v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_23A9AE07C()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding];
  v3 = type metadata accessor for RoomCaptureView();
  if (v2 == 1)
  {
    v28.receiver = v1;
    v28.super_class = v3;
    v4 = objc_msgSendSuper2(&v28, sel_subviews);
    sub_23A8D6C58(0, &qword_27DFB0C98, 0x277D75D18);
    v5 = sub_23AA0D2F4();

    v27 = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
    {
      v7 = 0;
      v24 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView;
      v25 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView;
      v26 = v5 & 0xC000000000000001;
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v26)
        {
          v9 = MEMORY[0x23EE90360](v7, v5);
        }

        else
        {
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_24;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = *&v1[v25];
        if (v12)
        {
          v13 = v9;
          v14 = v5;
          v15 = v12;
          v16 = sub_23AA0D634();

          v5 = v14;
          if (v16)
          {

            goto LABEL_6;
          }
        }

        else
        {
          v17 = v9;
        }

        v18 = *&v1[v24];
        if (!v18)
        {

LABEL_19:
          sub_23AA0D944();
          sub_23AA0D974();
          sub_23AA0D984();
          sub_23AA0D954();
          goto LABEL_6;
        }

        v19 = v18;
        v20 = sub_23AA0D634();

        if ((v20 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_6:
        ++v7;
        if (v11 == i)
        {
          v22 = v27;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_27:
  }

  else
  {
    v29.receiver = v1;
    v29.super_class = v3;
    v21 = objc_msgSendSuper2(&v29, sel_subviews);
    sub_23A8D6C58(0, &qword_27DFB0C98, 0x277D75D18);
    v22 = sub_23AA0D2F4();
  }

  return v22;
}

id RoomCaptureView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id RoomCaptureView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v47 = sub_23AA0D524();
  v9 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23AA0D504();
  MEMORY[0x28223BE20](v12);
  v13 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v13 - 8);
  v44 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled] = 1;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureSessionObserver] = 0;
  v15 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_deltaTimeArray] = MEMORY[0x277D84F90];
  v16 = v15;
  v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] = 0;
  v17 = &v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_logPerimeterDirectoryPath];
  *v17 = 0;
  v17[1] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_completeTransitionTime] = 0x3FF4000000000000;
  v18 = &v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize] = _Q0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation] = 1;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame] = 0;
  v24 = &v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters];
  v25 = *MEMORY[0x277D860B8];
  v26 = *(MEMORY[0x277D860B8] + 16);
  v27 = *(MEMORY[0x277D860B8] + 32);
  v28 = *(MEMORY[0x277D860B8] + 48);
  *v24 = *MEMORY[0x277D860B8];
  *(v24 + 1) = v26;
  *(v24 + 2) = v27;
  *(v24 + 3) = v28;
  *(v24 + 4) = v25;
  *(v24 + 5) = v26;
  *(v24 + 6) = v27;
  *(v24 + 7) = v28;
  *(v24 + 8) = xmmword_23AA10F30;
  *(v24 + 18) = 0;
  *(v24 + 19) = 0;
  *(v24 + 20) = 0x3FF0000000000000;
  *(v24 + 21) = 0;
  *(v24 + 22) = 0;
  *(v24 + 184) = xmmword_23AA1A690;
  v46 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraQueue;
  v39 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v45 = "_TtC8RoomPlan13OpeningEntity";
  sub_23AA0CEF4();
  v49 = v16;
  v42 = sub_23A9BACF4(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  v43 = sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  v29 = *MEMORY[0x277D85260];
  v30 = v9 + 104;
  v31 = *(v9 + 104);
  v40 = v30;
  v38 = v11;
  v32 = v47;
  v31(v11, v29, v47);
  *&v4[v46] = sub_23AA0D554();
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer] = 0;
  v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager] = 0;
  v33 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverQueue;
  sub_23AA0CEE4();
  v49 = MEMORY[0x277D84F90];
  sub_23AA0D764();
  v31(v38, v29, v32);
  *&v4[v33] = sub_23AA0D554();
  *&v4[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___frameProcessor] = 1;
  v34 = type metadata accessor for RoomCaptureView();
  v48.receiver = v4;
  v48.super_class = v34;
  v35 = objc_msgSendSuper2(&v48, sel_initWithFrame_, a1, a2, a3, a4);
  sub_23A9AEEA4(0);

  return v35;
}

id RoomCaptureView.init(frame:arSession:)(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v44 = a1;
  v43 = sub_23AA0D524();
  v11 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23AA0D504();
  MEMORY[0x28223BE20](v14);
  v15 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v15 - 8);
  v41[6] = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled] = 1;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView] = 0;
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureSessionObserver] = 0;
  v17 = MEMORY[0x277D84F90];
  *&v5[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_deltaTimeArray] = MEMORY[0x277D84F90];
  v18 = v17;
  v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] = 0;
  v19 = &v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_logPerimeterDirectoryPath];
  *v19 = 0;
  v19[1] = 0;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_completeTransitionTime] = 0x3FF4000000000000;
  v20 = &v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize] = _Q0;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation] = 1;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame] = 0;
  v26 = &v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters];
  v27 = *MEMORY[0x277D860B8];
  v28 = *(MEMORY[0x277D860B8] + 16);
  v29 = *(MEMORY[0x277D860B8] + 32);
  v30 = *(MEMORY[0x277D860B8] + 48);
  *v26 = *MEMORY[0x277D860B8];
  *(v26 + 1) = v28;
  *(v26 + 2) = v29;
  *(v26 + 3) = v30;
  *(v26 + 4) = v27;
  *(v26 + 5) = v28;
  *(v26 + 6) = v29;
  *(v26 + 7) = v30;
  *(v26 + 8) = xmmword_23AA10F30;
  *(v26 + 18) = 0;
  *(v26 + 19) = 0;
  *(v26 + 20) = 0x3FF0000000000000;
  *(v26 + 21) = 0;
  *(v26 + 22) = 0;
  *(v26 + 184) = xmmword_23AA1A690;
  v42 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraQueue;
  v41[1] = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v41[7] = "_TtC8RoomPlan13OpeningEntity";
  sub_23AA0CEF4();
  v46 = v18;
  v41[4] = sub_23A9BACF4(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  v41[5] = sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  v31 = *MEMORY[0x277D85260];
  v32 = v11 + 104;
  v33 = *(v11 + 104);
  v41[2] = v32;
  v41[0] = v13;
  v34 = v43;
  v33(v13, v31, v43);
  *&v6[v42] = sub_23AA0D554();
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder] = 0;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer] = 0;
  v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding] = 0;
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager] = 0;
  v35 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverQueue;
  sub_23AA0CEE4();
  v46 = MEMORY[0x277D84F90];
  sub_23AA0D764();
  v33(v41[0], v31, v34);
  *&v6[v35] = sub_23AA0D554();
  *&v6[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___frameProcessor] = 1;
  v36 = type metadata accessor for RoomCaptureView();
  v45.receiver = v6;
  v45.super_class = v36;
  v37 = objc_msgSendSuper2(&v45, sel_initWithFrame_, a2, a3, a4, a5);
  v38 = v44;
  v39 = v44;
  sub_23A9AEEA4(v38);

  return v37;
}

void sub_23A9AEEA4(void *a1)
{
  v2 = v1;
  v4 = sub_23AA0D104();
  v5 = MGCopyAnswer();

  if (v5)
  {
    swift_unknownObjectRetain();
    if (swift_dynamicCast() & 1) != 0 && (v9)
    {
      sub_23A9B1528(a1);
      sub_23A9B07A0();
      sub_23A9B0E90();
      sub_23A9B0FE4();
      sub_23A9B1108();
      sub_23A9B1654();
      sub_23A9B0084();
    }

    else
    {
      type metadata accessor for RoomCaptureSession(0);
      swift_allocObject();
      v6 = a1;
      v7 = sub_23A9DD848(a1);

      *(v7 + 16) = 1;
      v8 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
      swift_beginAccess();
      *(v2 + v8) = v7;
    }
  }

  else
  {
    __break(1u);
  }
}

id RoomCaptureView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id RoomCaptureView.init(coder:)(void *a1)
{
  v2 = v1;
  v54 = a1;
  v53 = sub_23AA0D524();
  v3 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23AA0D504();
  MEMORY[0x28223BE20](v6);
  v7 = sub_23AA0CF24();
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled] = 1;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___settingsManager] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView] = 0;
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureSessionObserver] = 0;
  v9 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_deltaTimeArray] = MEMORY[0x277D84F90];
  v10 = v9;
  v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEndingCaptureSession] = 0;
  v11 = &v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_logPerimeterDirectoryPath];
  *v11 = 0;
  v11[1] = 0;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_completeTransitionTime] = 0x3FF4000000000000;
  v12 = &v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize] = _Q0;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation] = 1;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_currentARFrame] = 0;
  v18 = &v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters];
  v19 = *MEMORY[0x277D860B8];
  v20 = *(MEMORY[0x277D860B8] + 16);
  v21 = *(MEMORY[0x277D860B8] + 32);
  v22 = *(MEMORY[0x277D860B8] + 48);
  *v18 = *MEMORY[0x277D860B8];
  *(v18 + 1) = v20;
  *(v18 + 2) = v21;
  *(v18 + 3) = v22;
  *(v18 + 4) = v19;
  *(v18 + 5) = v20;
  *(v18 + 6) = v21;
  *(v18 + 7) = v22;
  *(v18 + 8) = xmmword_23AA10F30;
  *(v18 + 18) = 0;
  *(v18 + 19) = 0;
  *(v18 + 20) = 0x3FF0000000000000;
  *(v18 + 21) = 0;
  *(v18 + 22) = 0;
  *(v18 + 184) = xmmword_23AA1A690;
  v52 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraQueue;
  v45 = sub_23A8D6C58(0, &qword_27DFAF820, 0x277D85C78);
  v51 = "_TtC8RoomPlan13OpeningEntity";
  sub_23AA0CEF4();
  *&v59 = v10;
  v48 = sub_23A9BACF4(&qword_27DFB1150, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF830, &qword_23AA14A40);
  v49 = sub_23A95F074(&qword_27DFB1160, &unk_27DFAF830, &qword_23AA14A40);
  sub_23AA0D764();
  v23 = *MEMORY[0x277D85260];
  v24 = v3 + 104;
  v25 = *(v3 + 104);
  v46 = v24;
  v44 = v5;
  v26 = v53;
  v25(v5, v23, v53);
  *&v2[v52] = sub_23AA0D554();
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomBuilder] = 0;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer] = 0;
  v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding] = 0;
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager] = 0;
  v52 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverQueue;
  sub_23AA0CEE4();
  *&v59 = MEMORY[0x277D84F90];
  v27 = v54;
  sub_23AA0D764();
  v25(v44, v23, v26);
  *&v2[v52] = sub_23AA0D554();
  *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView____lazy_storage___frameProcessor] = 1;
  v28 = type metadata accessor for RoomCaptureView();
  v61.receiver = v2;
  v61.super_class = v28;
  v29 = v27;
  v30 = objc_msgSendSuper2(&v61, sel_initWithCoder_, v27);
  v31 = v30;
  if (v30)
  {
    v32 = v30;
    v33 = sub_23AA0D104();
    v34 = [v27 decodeBoolForKey_];

    v35 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
    swift_beginAccess();
    v32[v35] = v34;
    v36 = sub_23AA0D104();
    v37 = [v27 decodeObjectForKey_];

    if (v37)
    {
      sub_23AA0D704();
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    v59 = v57;
    v60 = v58;
    if (*(&v58 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0D48, &qword_23AA1A6A0);
      if (swift_dynamicCast())
      {
        v38 = v55;
        v39 = &v32[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_delegate];
        swift_beginAccess();
        *(v39 + 1) = v38;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_23A8D50D0(&v59, &unk_27DFB08E0, &qword_23AA13038);
    }

    v40 = sub_23AA0D104();
    v41 = [v29 decodeObjectForKey_];

    if (v41)
    {
      sub_23AA0D704();
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    v59 = v57;
    v60 = v58;
    if (*(&v58 + 1))
    {
      if (swift_dynamicCast())
      {
        v32[v35] = v56;
      }
    }

    else
    {
      sub_23A8D50D0(&v59, &unk_27DFB08E0, &qword_23AA13038);
    }

    sub_23A9AEEA4(0);
  }

  return v31;
}

void sub_23A9AF7D4(void *a1)
{
  v3 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding;
  v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isEncoding] = 1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for RoomCaptureView();
  objc_msgSendSuper2(&v10, sel_encodeWithCoder_, a1);
  v4 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
  swift_beginAccess();
  v5 = v1[v4];
  v6 = sub_23AA0D104();
  [a1 encodeBool:v5 forKey:v6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_unknownObjectRetain();
    v9 = sub_23AA0D104();
    [a1 encodeObject:v8 forKey:v9];
    swift_unknownObjectRelease_n();
  }

  v1[v3] = 0;
}

void sub_23A9AF980()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
  if (v2)
  {
    v3 = v2;
    sub_23A9C41FC(v4);
  }

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v16 = sub_23A9BAD68;
  v17 = v6;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_23A9AD0B8;
  v15 = &block_descriptor_240;
  v7 = _Block_copy(&v12);
  v8 = v1;

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v16 = sub_23A9BAD8C;
  v17 = v9;
  v12 = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_23A8CBE48;
  v15 = &block_descriptor_246;
  v10 = _Block_copy(&v12);
  v11 = v8;

  [v5 animateWithDuration:v7 animations:v10 completion:1.25];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_23A9AFB28(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView;
  v4 = *(a2 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v4)
  {
    v5 = v4;
    v6 = sub_23AA0C8A4();
    sub_23AA0C884();
    v7 = v6(&v9, 0);
    sub_23A9B2950(v7);

    v8 = *(a2 + v3);
    if (v8)
    {
      [v8 removeFromSuperview];
      v4 = *(a2 + v3);
    }

    else
    {
      v4 = 0;
    }
  }

  *(a2 + v3) = 0;
}

void sub_23A9AFBE8()
{
  v1 = v0;
  sub_23A9AFE24();
  v2 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView;
  v3 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
  if (v3)
  {
    v4 = v3;
    sub_23A9C4518(v5);

    v6 = *&v1[v2];
    if (v6)
    {
      v7 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_isModelEnabled;
      swift_beginAccess();
      v8 = v1[v7];
      *(v6 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_isModelEnabled) = v8;
      v9 = *(v6 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
      if (!v9)
      {
        __break(1u);
        return;
      }

      [v9 setHidden_];
    }
  }

  if (qword_27DFAE498 != -1)
  {
    swift_once();
  }

  v10 = qword_27DFC07E8;
  *(qword_27DFC07E8 + 48) = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  v10[6] = 0u;
  v10[7] = 0u;
  v10[8] = 0u;
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  aBlock[4] = sub_23A9BAD44;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_234;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  [v11 animateWithDuration:v13 animations:1.25];
  _Block_release(v13);
}

id sub_23A9AFDA0(uint64_t a1, double a2, float a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v5)
  {
    [v5 setAlpha_];
  }

  result = *(a1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer);
  if (result)
  {
    *&a2 = a3;

    return [result setOpacity_];
  }

  return result;
}

void sub_23A9AFE24()
{
  v1 = v0;
  if (qword_27DFAE368 != -1)
  {
    swift_once();
  }

  v2 = qword_27DFC04B0;
  swift_beginAccess();
  v3 = MEMORY[0x277D84F98];
  *(v2 + 24) = MEMORY[0x277D84F98];

  swift_beginAccess();
  *(v2 + 32) = v3;

  v4 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
  if (v4)
  {
    if (!*&v4[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse])
    {
      __break(1u);
      return;
    }

    v5 = v4;

    sub_23A8C63CC();
    sub_23A8E8478();

    sub_23A9C7480();
  }

  v6 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager);
  if (v6)
  {
    v7 = v6;
    sub_23A8E8478();
  }

  if (qword_27DFAE488 != -1)
  {
    swift_once();
  }

  sub_23A9637AC();
  if (qword_27DFAE458 != -1)
  {
    swift_once();
  }

  v8 = qword_27DFC0700;
  if (qword_27DFC0700)
  {
    swift_beginAccess();
    *(v8 + 16) = v3;
  }

  if (qword_27DFAE520 != -1)
  {
    swift_once();
  }

  sub_23AA08EAC();
  if (qword_27DFAE490 != -1)
  {
    swift_once();
  }

  sub_23A99601C();
}

void sub_23A9B0084()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  [v0 bounds];
  [v1 setFrame_];
  [v1 setOpacity_];
  v2 = [v0 layer];
  [v2 insertSublayer:v1 atIndex:0];

  v3 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer];
  *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer] = v1;
  v4 = v1;

  sub_23A9B0474();
}

int64x2_t *sub_23A9B0168()
{
  v1 = sub_23AA0C124();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView);
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView);
      if (v8)
      {
        v9 = v3;
        v10 = v6;
        v11 = v8;
        sub_23AA0C984();
        sub_23AA0C6D4();

        sub_23AA0C114();
        (*(v2 + 8))(v5, v9);
        RECustomMatrixCameraComponentGetComponentType();
        result = RESceneGetComponentsOfClass();
        if (v13 < 0)
        {
          __break(1u);
          return result;
        }

        if (v13)
        {
          Entity = REComponentGetEntity();
          sub_23AA0C734();
          sub_23AA0C564();

          __swift_project_boxed_opaque_existential_1(v18, v18[3]);
          v15 = sub_23AA0C4F4();
          __swift_destroy_boxed_opaque_existential_1(v18);
          type metadata accessor for VoiceOverManager();
          swift_allocObject();
          v16 = sub_23A9BD410(Entity, v15);

          return v16;
        }
      }
    }
  }

  return 0;
}

void sub_23A9B0360(uint64_t a1)
{
  v3 = [v1 traitCollection];
  LODWORD(a1) = [v3 hasDifferentColorAppearanceComparedToTraitCollection_];

  if (a1)
  {

    sub_23A9B0474();
  }
}

void sub_23A9B0474()
{
  v1 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = objc_opt_self();
    if (v4 == 1)
    {
      v6 = [v5 whiteColor];
      v7 = objc_allocWithZone(MEMORY[0x277D75348]);
      v8 = v6;
      v9 = [v7 initWithRed:0.85 green:0.85 blue:0.85 alpha:1.0];
    }

    else
    {
      v10 = [v5 blackColor];
      v11 = objc_allocWithZone(MEMORY[0x277D75348]);
      v8 = v10;
      v9 = [v11 initWithRed:0.15 green:0.15 blue:0.15 alpha:1.0];
    }

    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB1760, &unk_23AA1A7C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_23AA11C10;
    v19 = v12;
    v14 = [v8 CGColor];

    type metadata accessor for CGColor(0);
    v16 = v15;
    *(v13 + 56) = v15;
    *(v13 + 32) = v14;
    v17 = [v19 CGColor];

    *(v13 + 88) = v16;
    *(v13 + 64) = v17;
    v18 = sub_23AA0D2E4();

    [v2 setColors_];
  }
}

void sub_23A9B069C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RoomCaptureView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_gradientLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
  }
}

void sub_23A9B07A0()
{
  v1 = v0;
  v2 = sub_23AA0C864();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v47[-v7];
  v9 = sub_23AA0C724();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v47[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v1 bounds];
  (*(v10 + 104))(v13, *MEMORY[0x277CDB598], v9);
  v14 = objc_allocWithZone(sub_23AA0C994());
  v15 = sub_23AA0C974();
  [v1 insertSubview:v15 atIndex:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = sub_23AA07DB0();
  sub_23AA08688(v1, v16, v17, v18, v19);
  v20 = sub_23AA0C7A4();
  v21 = sub_23AA0C794();
  sub_23AA0C774();
  v21(v47, 0);
  v20(v48, 0);
  v22 = sub_23AA0C7A4();
  v23 = sub_23AA0C794();
  sub_23AA0C784();
  v23(v47, 0);
  v22(v48, 0);
  sub_23AA0C7F4();
  v24 = sub_23AA0C874();
  sub_23A9C3EF8(v8, v5);
  v25 = *(v3 + 8);
  v25(v5, v2);
  v25(v8, v2);
  v24(v48, 0);
  sub_23AA0C804();
  v26 = sub_23AA0C874();
  sub_23A9C3EF8(v8, v5);
  v25(v5, v2);
  v25(v8, v2);
  v26(v48, 0);
  sub_23AA0C824();
  v27 = sub_23AA0C874();
  sub_23A9C3EF8(v8, v5);
  v25(v5, v2);
  v25(v8, v2);
  v27(v48, 0);
  sub_23AA0C834();
  v28 = sub_23AA0C874();
  sub_23A9C3EF8(v8, v5);
  v25(v5, v2);
  v25(v8, v2);
  v28(v48, 0);
  sub_23AA0C854();
  v29 = sub_23AA0C874();
  sub_23A9C3EF8(v8, v5);
  v25(v5, v2);
  v25(v8, v2);
  v29(v48, 0);
  sub_23AA0C7E4();
  v30 = sub_23AA0C874();
  sub_23A9C3EF8(v8, v5);
  v25(v5, v2);
  v25(v8, v2);
  v30(v48, 0);
  sub_23AA0C844();
  v31 = sub_23AA0C874();
  sub_23A9C3EF8(v8, v5);
  v25(v5, v2);
  v25(v8, v2);
  v31(v48, 0);
  v32 = sub_23A9ADC0C();
  sub_23A9F5EC8(v15, v32);

  v33 = *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView];
  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView] = v15;
  v34 = v15;

  sub_23AA0C984();
  v35 = sub_23AA0C6E4();

  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera] = v35;

  v36 = [v34 window];
  if (v36 && (v37 = v36, v38 = [v36 windowScene], v37, v38))
  {
    v39 = [v38 interfaceOrientation];
  }

  else
  {
    v39 = 1;
  }

  *&v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation] = v39;
  [v34 bounds];
  v41 = v40;
  v43 = v42;
  [v34 contentScaleFactor];
  v45 = &v1[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize];
  *v45 = v41 * v44;
  v45[1] = v43 * v44;
  if (qword_27DFAE478 != -1)
  {
    swift_once();
  }

  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  sub_23A95DA18(IsVoiceOverRunning);
}

void sub_23A9B0E90()
{
  v1 = *&v0[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 contentScaleFactor];
    v12 = v11;
    v13 = objc_allocWithZone(type metadata accessor for RoomCaptureCoachingOverlayView());
    v14 = v0;
    v15 = sub_23A9C5170(v4, v6, v8, v10, v12);
    [v14 addSubview_];
    sub_23AA08688(v14, *MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24));
    v16 = *&v14[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
    *&v14[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView] = v15;
    v17 = v15;

    v18 = sub_23A9ADC0C();
    sub_23A9F643C(v18);
  }
}

void sub_23A9B0FE4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v2)
  {
    v3 = type metadata accessor for WorldSpaceManager();
    v4 = objc_allocWithZone(v3);
    v4[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_roomCaptureSessionIsRunning] = 0;
    *&v4[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_arView] = v2;
    v5 = v2;
    v6 = sub_23AA0C984();
    [v5 contentScaleFactor];
    v8 = v7;
    type metadata accessor for WorldViewManager();
    swift_allocObject();
    *&v4[OBJC_IVAR____TtC8RoomPlan17WorldSpaceManager_worldViewManager] = sub_23A9BCCA4(v6, v8);
    v12.receiver = v4;
    v12.super_class = v3;
    v9 = objc_msgSendSuper2(&v12, sel_init);
    v10 = *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager);
    *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager) = v9;

    v11 = sub_23A9ADC0C();
    sub_23A9F6DAC(v11);
  }
}

void sub_23A9B1108()
{
  v1 = v0;
  v2 = sub_23AA0CE84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  if (sub_23A9ADCC0())
  {
    type metadata accessor for SceneShaderRenderer();
    swift_allocObject();

    v11 = sub_23A952224(v7);

    *(v1 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneShaderRenderer) = v11;
  }

  else
  {
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v8 = sub_23AA0CE54();
    v9 = sub_23AA0D494();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_23A8B4000, v8, v9, "Cannot configure scene renderer because frameProcessor is nil", v10, 2u);
      MEMORY[0x23EE91710](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_23A9B1528(void *a1)
{
  v2 = v1;
  type metadata accessor for RoomCaptureSession(0);
  swift_allocObject();
  v4 = a1;
  v5 = sub_23A9DD848(a1);

  *(v5 + 16) = 1;
  v6 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
  swift_beginAccess();
  *&v2[v6] = v5;

  v7 = *&v2[v6];
  if (v7)
  {
    swift_beginAccess();
    *(v7 + 65) = 0;
    type metadata accessor for RoomCaptureSessionInternalObserver();
    v8 = swift_allocObject();
    v9 = v2;
    sub_23A9B7100(v9);
    *&v9[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureSessionObserver] = v8;

    v10 = *&v2[v6];
    if (v10)
    {
      *(v10 + 48) = &off_284D85F98;
      swift_unknownObjectWeakAssign();
      v11 = sub_23A9ADC0C();
      sub_23A9F6ECC(v11);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_23A9B1654()
{
  v1 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_roomCaptureARViewCamera);
    if (v2)
    {
      v3 = v1;

      sub_23A9B17AC(v3, v2);
      sub_23A9ADC0C();
      v4 = sub_23A9FF620();

      v5 = *(v4 + 2);

      if (v5)
      {
        swift_allocObject();
        swift_unknownObjectWeakInit();

        v6 = sub_23AA0C8A4();
        sub_23AA0C884();
        v6(&v8, 0);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_23A9B17AC(void *a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v3 = sub_23AA0CEC4();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23AA0CF24();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A9B2CA0();
  v9 = *&v2[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  aBlock[4] = sub_23A9BA9F0;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23A9AD0B8;
  aBlock[3] = &block_descriptor_184;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v21 = v2;
  sub_23AA0CEE4();
  *&v26[0] = MEMORY[0x277D84F90];
  sub_23A9BACF4(&qword_27DFB1170, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAFB58, &unk_23AA15810);
  sub_23A95F074(&qword_27DFB1180, &qword_27DFAFB58, &unk_23AA15810);
  sub_23AA0D764();
  MEMORY[0x23EE8FFE0](0, v8, v5, v11);
  _Block_release(v11);

  (*(v23 + 8))(v5, v3);
  (*(v6 + 8))(v8, v22);

  v13 = v24;
  sub_23AA0C984();
  sub_23AA0C5B4();
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v14 = swift_allocObject();
  v15 = v21;
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v13;
  v16[4] = v25;
  v17 = v13;

  sub_23AA0C714();

  sub_23A8D50D0(v26, &qword_27DFB0DC0, &unk_23AA1A7B0);
  v18 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_sceneObserver;
  swift_beginAccess();
  sub_23A999018(aBlock, &v15[v18]);
  return swift_endAccess();
}

void sub_23A9B1B90(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [a3 bounds];
    v9 = v8;
    v11 = v10;
    [a3 contentScaleFactor];
    v13 = &v7[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewportSize];
    v13->f64[0] = v9 * v12;
    v13->f64[1] = v11 * v12;
    v81 = a3;
    v14 = [a3 window];
    if (v14 && (v15 = v14, v16 = [v14 windowScene], v15, v16))
    {
      v17 = [v16 interfaceOrientation];
    }

    else
    {
      v17 = 1;
    }

    *&v7[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_viewOrientation] = v17;
    v18 = *&v7[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraQueue];
    v19 = swift_allocObject();
    *(v19 + 16) = v7;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_23A9BAA5C;
    *(v20 + 24) = v19;
    *&v94 = sub_23A916670;
    *(&v94 + 1) = v20;
    aBlock.n128_u64[0] = MEMORY[0x277D85DD0];
    aBlock.n128_u64[1] = 1107296256;
    *&v93 = sub_23AA08C40;
    *(&v93 + 1) = &block_descriptor_197;
    v21 = _Block_copy(&aBlock);
    v22 = v7;

    dispatch_sync(v18, v21);
    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      isEscapingClosureAtFileLocation = &v22[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_arCameraParameters];
      swift_beginAccess();
      v101 = *(isEscapingClosureAtFileLocation + 144);
      v102 = *(isEscapingClosureAtFileLocation + 160);
      v103 = *(isEscapingClosureAtFileLocation + 176);
      v104 = *(isEscapingClosureAtFileLocation + 192);
      v97 = *(isEscapingClosureAtFileLocation + 80);
      v98 = *(isEscapingClosureAtFileLocation + 96);
      v99 = *(isEscapingClosureAtFileLocation + 112);
      v100 = *(isEscapingClosureAtFileLocation + 128);
      v93 = *(isEscapingClosureAtFileLocation + 16);
      v94 = *(isEscapingClosureAtFileLocation + 32);
      v95 = *(isEscapingClosureAtFileLocation + 48);
      v96 = *(isEscapingClosureAtFileLocation + 64);
      aBlock = *isEscapingClosureAtFileLocation;
      sub_23A9B9164(a4, &aBlock);
      sub_23AA0C5A4();
      LODWORD(v9) = v24;
      if (qword_27DFAE498 == -1)
      {
LABEL_8:
        v25 = qword_27DFC07E8;
        if (*(qword_27DFC07E8 + 32) == 1 && (v26 = *(isEscapingClosureAtFileLocation + 128), v27 = *(qword_27DFC07E8 + 40), v28 = swift_allocObject(), *(v28 + 16) = v25, *(v28 + 24) = v26, v29 = swift_allocObject(), *(v29 + 16) = sub_23A9BAB74, *(v29 + 24) = v28, v89 = sub_23A9166DC, v90 = v29, v85 = MEMORY[0x277D85DD0], v86 = 1107296256, v87 = sub_23AA08C40, v88 = &block_descriptor_227, v30 = _Block_copy(&v85), , , , dispatch_sync(v27, v30), _Block_release(v30), LOBYTE(v27) = swift_isEscapingClosureAtFileLocation(), , , (v27 & 1) != 0))
        {
          __break(1u);
        }

        else
        {
          if (qword_27DFAE410 != -1)
          {
            swift_once();
          }

          v31 = qword_27DFC0670;
          if (*(qword_27DFC0670 + 32) != 1 || (v32 = *(qword_27DFC0670 + 40), v33 = swift_allocObject(), *(v33 + 16) = v31, *(v33 + 24) = LODWORD(v9), v34 = swift_allocObject(), *(v34 + 16) = sub_23A9BAB30, *(v34 + 24) = v33, v89 = sub_23A9166DC, v90 = v34, v85 = MEMORY[0x277D85DD0], v86 = 1107296256, v87 = sub_23AA08C40, v88 = &block_descriptor_217, v35 = _Block_copy(&v85), , , , dispatch_sync(v32, v35), _Block_release(v35), LOBYTE(v32) = swift_isEscapingClosureAtFileLocation(), , , (v32 & 1) == 0))
          {
            v36 = sub_23A9ADC0C();
            swift_beginAccess();
            v37 = v36[159];

            if (v37 != 1)
            {
              goto LABEL_19;
            }

            if (qword_27DFAE520 == -1)
            {
LABEL_16:
              sub_23AA08CA4();
              if ((v38 & 0x100000000) == 0)
              {
                v39 = *&v38;
                sub_23A9F745C(*&v38);
                sub_23A9F7570(v39);
                v40 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
                swift_beginAccess();
                if (!*&v22[v40])
                {
                  goto LABEL_68;
                }

                sub_23A984AC0(v39);
              }

LABEL_19:
              if (qword_27DFAE478 != -1)
              {
                swift_once();
              }

              v41 = *&v9;
              sub_23A95DA48(v41);
              if (qword_27DFAE368 != -1)
              {
                swift_once();
              }

              sub_23A8D4778(*isEscapingClosureAtFileLocation, *(isEscapingClosureAtFileLocation + 16), *(isEscapingClosureAtFileLocation + 32), *(isEscapingClosureAtFileLocation + 48));
              v42 = *&v22[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_worldSpaceManager];
              if (v42)
              {
                v43 = vcvt_f32_f64(*v13);
                v44 = v42;
                sub_23A8E086C(v43, 0, v41);
              }

              v45 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView;
              v46 = *&v22[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_coachingOverlayView];
              if (v46)
              {
                v47 = *isEscapingClosureAtFileLocation;
                v48 = *(isEscapingClosureAtFileLocation + 16);
                v49 = *(isEscapingClosureAtFileLocation + 32);
                v50 = *(isEscapingClosureAtFileLocation + 48);
                LOBYTE(v85) = 0;
                v51 = v46 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_cameraTransform;
                *v51 = v47;
                *(v51 + 16) = v48;
                *(v51 + 32) = v49;
                *(v51 + 48) = v50;
                *(v51 + 64) = 0;
              }

              if (!UIAccessibilityIsVoiceOverRunning())
              {
                if (qword_27DFAE518 != -1)
                {
                  swift_once();
                }

                v52 = off_27DFB17B0;
                swift_beginAccess();
                if (v52[144] != 1)
                {
                  goto LABEL_40;
                }
              }

              v53 = *&v22[v45];
              if (!v53)
              {
                goto LABEL_40;
              }

              if (*(v53 + OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouse))
              {

                sub_23A8C63CC();

                v54 = *&v22[v45];
                if (v54)
                {
                  v91 = 0;
                  v55 = *&v22[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverQueue];
                  v56 = swift_allocObject();
                  *(v56 + 16) = &v91;
                  *(v56 + 24) = v22;
                  v57 = swift_allocObject();
                  *(v57 + 16) = sub_23A9BAAAC;
                  *(v57 + 24) = v56;
                  v89 = sub_23A9166DC;
                  v90 = v57;
                  v85 = MEMORY[0x277D85DD0];
                  v86 = 1107296256;
                  v87 = sub_23AA08C40;
                  v88 = &block_descriptor_207;
                  v58 = _Block_copy(&v85);
                  v59 = v22;
                  v60 = v55;

                  v61 = v54;

                  dispatch_sync(v60, v58);

                  _Block_release(v58);
                  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

                  if (v58)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v62 = v91;
                    if (!v91)
                    {
                      v65 = sub_23A9B0168();

                      *&v59[OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_voiceOverManager] = v65;

LABEL_57:

                      return;
                    }

                    v63 = *&v61[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_arcBallCamera];
                    if (v63)
                    {
                      v64 = *(v63 + qword_27DFC09E0) ^ 1;
                    }

                    else
                    {
                      v64 = 0;
                    }

                    [v81 frame];
                    Width = CGRectGetWidth(v105);
                    [v81 frame];
                    Height = CGRectGetHeight(v106);
                    v60 = &qword_27DFB0000;
                    if ((v64 & 1) == 0)
                    {
                      v68 = Height;
                      v69 = OBJC_IVAR____TtC8RoomPlan15RoomCaptureView_captureSession;
                      swift_beginAccess();
                      v70 = *&v59[v69];
                      if (!v70)
                      {
LABEL_70:
                        __break(1u);
                        goto LABEL_71;
                      }

                      sub_23AA0C894();
                      v82 = v71;
                      v72 = *&v61[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_dollHouseARView];
                      if (!v72)
                      {
LABEL_71:
                        __break(1u);
                        return;
                      }

                      v73 = v72;
                      v74 = sub_23AA0C984();

                      v75 = *(v62 + 40);
                      if (v75 <= 29)
                      {

                        *(v62 + 40) = v75 + 1;
                        goto LABEL_55;
                      }

                      v76 = Width / v68;
                      *(v62 + 40) = 0;
                      v83[0] = MEMORY[0x277D84F90];
                      v84 = MEMORY[0x277D84F90];
                      v77 = sub_23A9FCB14();

                      sub_23A9B81E4(v77, v62, v74, v70, v83, &v84, v76, v82);

                      sub_23A9C18EC(v83[0], v84);

                      v60 = &qword_27DFB0000;
LABEL_51:

                      if (*&v61[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_onboardingText + 8] || *&v61[OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText + 8])
                      {

                        v78 = sub_23AA0D104();
                      }

                      else
                      {
                        v78 = sub_23AA0D104();
                      }

                      [v61 setAccessibilityLabel_];

LABEL_55:
                      isa = v60[398].isa;
                      swift_beginAccess();
                      v80 = *(isa + v59);
                      if (v80)
                      {

                        sub_23A9BD4B4(v80);

                        goto LABEL_57;
                      }

                      goto LABEL_69;
                    }

                    if (qword_27DFAE360 == -1)
                    {
LABEL_45:

                      goto LABEL_51;
                    }
                  }

                  swift_once();
                  goto LABEL_45;
                }

LABEL_40:

                return;
              }

              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

LABEL_64:
            swift_once();
            goto LABEL_16;
          }
        }

        __break(1u);
        goto LABEL_64;
      }
    }

    swift_once();
    goto LABEL_8;
  }
}